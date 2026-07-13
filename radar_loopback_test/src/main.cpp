#include "xaxidma.h"
#include "xparameters.h"
#include "xil_cache.h"
#include "xil_printf.h"
#include "xil_io.h"
#include "xil_types.h"
#include "xstatus.h"
#include "sleep.h"

// ========================================================
// FMCW Radar Phase 4:
// lfm_tdm_gen -> AXI4-Stream FIFO -> AXI DMA S2MM -> DDR
//
// 這版 main.cpp 的重點：
// 1. 不啟動 MM2S
// 2. 不啟動 radar_beamformer
// 3. 只啟動 DMA S2MM 接收
// 4. 再啟動 lfm_tdm_gen HLS IP
// 5. 在 ILA 上觀察 m_axis_tx + dbg_*
// ========================================================


// ========================================================
// 基本參數
// ========================================================

#define DMA_BASEADDR            XPAR_AXI_DMA_0_BASEADDR

// 你的 AXI DMA GUI 目前 Address Width 是 32-bit
// 如果之後 AXI DMA Address Width 改成 64-bit，這裡改成 0
#define DMA_ADDR_WIDTH_IS_32    1

// --------------------------------------------------------
// lfm_tdm_gen HLS IP Base Address
// --------------------------------------------------------
// 不同 Vitis/Vivado 版本產生的 xparameters.h 巨集名稱可能略有不同，
// 所以下面多列幾種常見名稱。
#if defined(XPAR_LFM_TDM_GEN_0_S_AXI_CTRL_BASEADDR)
    #define LFM_TDM_GEN_BASEADDR XPAR_LFM_TDM_GEN_0_S_AXI_CTRL_BASEADDR
#elif defined(XPAR_XLFM_TDM_GEN_0_S_AXI_CTRL_BASEADDR)
    #define LFM_TDM_GEN_BASEADDR XPAR_XLFM_TDM_GEN_0_S_AXI_CTRL_BASEADDR
#elif defined(XPAR_LFM_TDM_GEN_0_S_AXI_CONTROL_BASEADDR)
    #define LFM_TDM_GEN_BASEADDR XPAR_LFM_TDM_GEN_0_S_AXI_CONTROL_BASEADDR
#elif defined(XPAR_XLFM_TDM_GEN_0_S_AXI_CONTROL_BASEADDR)
    #define LFM_TDM_GEN_BASEADDR XPAR_XLFM_TDM_GEN_0_S_AXI_CONTROL_BASEADDR
#elif defined(XPAR_LFM_TDM_GEN_0_BASEADDR)
    #define LFM_TDM_GEN_BASEADDR XPAR_LFM_TDM_GEN_0_BASEADDR
#elif defined(XPAR_XLFM_TDM_GEN_0_BASEADDR)
    #define LFM_TDM_GEN_BASEADDR XPAR_XLFM_TDM_GEN_0_BASEADDR
#else
    // 如果 build 後發現這個位址不對，請到 xparameters.h 搜尋 LFM_TDM_GEN，
    // 或到 Vivado Address Editor 看 lfm_tdm_gen_0/s_axi_CTRL 的 base address。
    #define LFM_TDM_GEN_BASEADDR 0xA0020000U
    #define LFM_TDM_GEN_BASEADDR_IS_FALLBACK 1
#endif

// --------------------------------------------------------
// lfm_tdm_gen HLS 參數，必須跟 HLS code 一致
// --------------------------------------------------------
#define CHIRP_LEN               1024
#define NUM_TX                  3
#define FRAME_CHIRPS            4
#define FRAME_SAMPLES           (CHIRP_LEN * FRAME_CHIRPS)

// lfm_tdm_gen output = 32-bit I/Q = 4 bytes
#define RX_BUFFER_SIZE          (FRAME_SAMPLES * 4)

// Cache padding
#define CACHE_PADDING           128

// ========================================================
// AXI DMA register offsets
// ========================================================
#define MM2S_DMACR_OFFSET       0x00
#define MM2S_DMASR_OFFSET       0x04
#define MM2S_SA_OFFSET          0x18
#define MM2S_SA_MSB_OFFSET      0x1C
#define MM2S_LENGTH_OFFSET      0x28

#define S2MM_DMACR_OFFSET       0x30
#define S2MM_DMASR_OFFSET       0x34
#define S2MM_DA_OFFSET          0x48
#define S2MM_DA_MSB_OFFSET      0x4C
#define S2MM_LENGTH_OFFSET      0x58

// DMA status bits
#define DMA_HALTED_MASK         0x00000001
#define DMA_IDLE_MASK           0x00000002
#define DMA_SG_INCLD_MASK       0x00000008
#define DMA_ERR_MASK            0x00000070
#define DMA_INT_ERR_MASK        0x00000010
#define DMA_SLV_ERR_MASK        0x00000020
#define DMA_DEC_ERR_MASK        0x00000040
#define DMA_IOC_IRQ_MASK        0x00001000
#define DMA_DLY_IRQ_MASK        0x00002000
#define DMA_ERR_IRQ_MASK        0x00004000

#define DMA_TIMEOUT_COUNT       1000000

#define MY_LOWER_32_BITS(x)     ((u32)((u64)(x) & 0xFFFFFFFFULL))
#define MY_UPPER_32_BITS(x)     ((u32)(((u64)(x) >> 32) & 0xFFFFFFFFULL))

// ========================================================
// I/Q packing format
// bit[15:0]  = I, signed 16-bit
// bit[31:16] = Q, signed 16-bit
// ========================================================
#define IQ_GET_I(word)          ((s16)((word) & 0xFFFF))
#define IQ_GET_Q(word)          ((s16)(((word) >> 16) & 0xFFFF))

// ========================================================
// Buffer
// ========================================================
static u8 RxBuffer[RX_BUFFER_SIZE + CACHE_PADDING] __attribute__((aligned(64)));

static XAxiDma AxiDma;


// ========================================================
// Helpers
// ========================================================
static void print_addr64(const char *name, UINTPTR addr)
{
    xil_printf("%s = 0x%08X%08X\r\n",
               name,
               (unsigned int)MY_UPPER_32_BITS(addr),
               (unsigned int)MY_LOWER_32_BITS(addr));
}


static void decode_dma_status(const char *name, u32 sr)
{
    xil_printf("%s = 0x%08X", name, (unsigned int)sr);

    if (sr & DMA_HALTED_MASK)  xil_printf(" HALTED");
    if (sr & DMA_IDLE_MASK)    xil_printf(" IDLE");
    if (sr & DMA_SG_INCLD_MASK)xil_printf(" SGIncld");

    if (sr & DMA_INT_ERR_MASK) xil_printf(" DMAIntErr");
    if (sr & DMA_SLV_ERR_MASK) xil_printf(" DMASlvErr");
    if (sr & DMA_DEC_ERR_MASK) xil_printf(" DMADecErr");

    if (sr & DMA_IOC_IRQ_MASK) xil_printf(" IOC_Irq");
    if (sr & DMA_DLY_IRQ_MASK) xil_printf(" Dly_Irq");
    if (sr & DMA_ERR_IRQ_MASK) xil_printf(" Err_Irq");

    xil_printf("\r\n");
}


static void dump_dma_full(const char *tag)
{
    u32 mm2s_dmacr  = Xil_In32(DMA_BASEADDR + MM2S_DMACR_OFFSET);
    u32 mm2s_dmasr  = Xil_In32(DMA_BASEADDR + MM2S_DMASR_OFFSET);
    u32 mm2s_sa     = Xil_In32(DMA_BASEADDR + MM2S_SA_OFFSET);
    u32 mm2s_sa_msb = Xil_In32(DMA_BASEADDR + MM2S_SA_MSB_OFFSET);
    u32 mm2s_len    = Xil_In32(DMA_BASEADDR + MM2S_LENGTH_OFFSET);

    u32 s2mm_dmacr  = Xil_In32(DMA_BASEADDR + S2MM_DMACR_OFFSET);
    u32 s2mm_dmasr  = Xil_In32(DMA_BASEADDR + S2MM_DMASR_OFFSET);
    u32 s2mm_da     = Xil_In32(DMA_BASEADDR + S2MM_DA_OFFSET);
    u32 s2mm_da_msb = Xil_In32(DMA_BASEADDR + S2MM_DA_MSB_OFFSET);
    u32 s2mm_len    = Xil_In32(DMA_BASEADDR + S2MM_LENGTH_OFFSET);

    xil_printf("\r\n================ DMA FULL DUMP: %s ================\r\n", tag);

    xil_printf("MM2S_DMACR     = 0x%08X\r\n", (unsigned int)mm2s_dmacr);
    decode_dma_status("MM2S_DMASR    ", mm2s_dmasr);
    xil_printf("MM2S_SA_MSB    = 0x%08X\r\n", (unsigned int)mm2s_sa_msb);
    xil_printf("MM2S_SA        = 0x%08X\r\n", (unsigned int)mm2s_sa);
    xil_printf("MM2S_LENGTH    = 0x%08X  not used in this test\r\n",
               (unsigned int)mm2s_len);

    xil_printf("S2MM_DMACR     = 0x%08X\r\n", (unsigned int)s2mm_dmacr);
    decode_dma_status("S2MM_DMASR    ", s2mm_dmasr);
    xil_printf("S2MM_DA_MSB    = 0x%08X\r\n", (unsigned int)s2mm_da_msb);
    xil_printf("S2MM_DA        = 0x%08X\r\n", (unsigned int)s2mm_da);
    xil_printf("S2MM_LENGTH    = 0x%08X  expected 0x%08X\r\n",
               (unsigned int)s2mm_len,
               (unsigned int)RX_BUFFER_SIZE);

    xil_printf("====================================================\r\n");
}


static void dump_lfm_hls_ctrl(const char *tag)
{
    xil_printf("\r\n[%s]\r\n", tag);
    xil_printf("LFM_TDM_GEN_BASEADDR = 0x%08X\r\n",
               (unsigned int)LFM_TDM_GEN_BASEADDR);

#ifdef LFM_TDM_GEN_BASEADDR_IS_FALLBACK
    xil_printf("WARNING: Using fallback LFM_TDM_GEN_BASEADDR.\r\n");
    xil_printf("If program hangs here, check xparameters.h or Vivado Address Editor.\r\n");
#endif

    // 注意：ap_done 是 clear-on-read，讀 control register 可能會清掉 ap_done
    u32 ctrl = Xil_In32(LFM_TDM_GEN_BASEADDR + 0x00);

    xil_printf("HLS CTRL 0x00 = 0x%08X\r\n", (unsigned int)ctrl);
    xil_printf("  bit0 ap_start = %d\r\n", (int)((ctrl >> 0) & 0x1));
    xil_printf("  bit1 ap_done  = %d\r\n", (int)((ctrl >> 1) & 0x1));
    xil_printf("  bit2 ap_idle  = %d\r\n", (int)((ctrl >> 2) & 0x1));
    xil_printf("  bit3 ap_ready = %d\r\n", (int)((ctrl >> 3) & 0x1));
}


static void dump_lfm_hls_regs(const char *tag)
{
    xil_printf("\r\n================ LFM HLS REG DUMP: %s ================\r\n", tag);
    xil_printf("BASE + 0x00 CTRL  = 0x%08X\r\n",
               (unsigned int)Xil_In32(LFM_TDM_GEN_BASEADDR + 0x00));
    xil_printf("BASE + 0x04 GIER  = 0x%08X\r\n",
               (unsigned int)Xil_In32(LFM_TDM_GEN_BASEADDR + 0x04));
    xil_printf("BASE + 0x08 IP_IER= 0x%08X\r\n",
               (unsigned int)Xil_In32(LFM_TDM_GEN_BASEADDR + 0x08));
    xil_printf("BASE + 0x0C IP_ISR= 0x%08X\r\n",
               (unsigned int)Xil_In32(LFM_TDM_GEN_BASEADDR + 0x0C));
    xil_printf("=======================================================\r\n");
}


static int check_buffer_addresses(void)
{
    UINTPTR rx_addr = (UINTPTR)RxBuffer;

    xil_printf("\r\n--- Buffer Address Check ---\r\n");
    print_addr64("RxBuffer addr", rx_addr);

#if DMA_ADDR_WIDTH_IS_32
    if (MY_UPPER_32_BITS(rx_addr) != 0) {
        xil_printf("ERROR: RxBuffer address is above 4GB, but AXI DMA Address Width is 32-bit.\r\n");
        xil_printf("Fix option 1: Change AXI DMA Address Width to 64-bit in Vivado.\r\n");
        xil_printf("Fix option 2: Move RxBuffer to low DDR via linker script.\r\n");
        return XST_FAILURE;
    } else {
        xil_printf("OK: RxBuffer address is below 4GB for 32-bit DMA addressing.\r\n");
    }
#else
    xil_printf("DMA_ADDR_WIDTH_IS_32 = 0, skip 4GB address check.\r\n");
#endif

    xil_printf("----------------------------\r\n");
    return XST_SUCCESS;
}


static void reset_dma_safely(void)
{
    xil_printf("\r\nReset DMA safely...\r\n");

    XAxiDma_Reset(&AxiDma);

    int reset_timeout = 100000;
    while (!XAxiDma_ResetIsDone(&AxiDma)) {
        reset_timeout--;

        if (reset_timeout <= 0) {
            xil_printf("ERROR: DMA reset timeout during safe reset.\r\n");
            return;
        }
    }

    xil_printf("DMA safe reset done.\r\n");
    dump_dma_full("After Safe DMA Reset");
}


static int expected_iq_for_index(int index, s16 *expected_i, s16 *expected_q)
{
    int chirp  = index / CHIRP_LEN;
    int sample = index % CHIRP_LEN;
    int tx_sel = chirp % NUM_TX;

    int base = sample + tx_sel * 1000;

    *expected_i = (s16)base;
    *expected_q = (s16)(-base);

    return tx_sel;
}


static void print_one_sample(int index, u32 rx_word)
{
    int chirp  = index / CHIRP_LEN;
    int sample = index % CHIRP_LEN;

    s16 rx_i = IQ_GET_I(rx_word);
    s16 rx_q = IQ_GET_Q(rx_word);

    s16 exp_i;
    s16 exp_q;
    int tx_sel = expected_iq_for_index(index, &exp_i, &exp_q);

    xil_printf("Index %d | chirp=%d tx_sel=%d sample=%d | "
               "Rx Raw=0x%08X | Rx I=%d Q=%d | Expected I=%d Q=%d\r\n",
               index,
               chirp,
               tx_sel,
               sample,
               (unsigned int)rx_word,
               (int)rx_i,
               (int)rx_q,
               (int)exp_i,
               (int)exp_q);
}


static void print_samples_summary(u32 *RxData)
{
    xil_printf("\r\n--- First 8 samples of frame ---\r\n");
    for (int i = 0; i < 8; i++) {
        print_one_sample(i, RxData[i]);
    }

    xil_printf("\r\n--- First 4 samples of each chirp ---\r\n");
    for (int chirp = 0; chirp < FRAME_CHIRPS; chirp++) {
        xil_printf("\r\nChirp %d:\r\n", chirp);

        for (int sample = 0; sample < 4; sample++) {
            int index = chirp * CHIRP_LEN + sample;
            print_one_sample(index, RxData[index]);
        }
    }

    xil_printf("\r\n--- Boundary samples ---\r\n");
    for (int chirp = 0; chirp < FRAME_CHIRPS; chirp++) {
        int first = chirp * CHIRP_LEN;
        int last  = chirp * CHIRP_LEN + CHIRP_LEN - 1;

        print_one_sample(first, RxData[first]);
        print_one_sample(last,  RxData[last]);
    }
}


static int wait_s2mm_done(void)
{
    int timeout = DMA_TIMEOUT_COUNT;

    while (timeout > 0) {
        int s2mm_busy = XAxiDma_Busy(&AxiDma, XAXIDMA_DEVICE_TO_DMA);

        u32 s2mm_sr = Xil_In32(DMA_BASEADDR + S2MM_DMASR_OFFSET);

        if (s2mm_sr & DMA_ERR_MASK) {
            xil_printf("\r\nERROR: S2MM DMA error while waiting.\r\n");
            dump_dma_full("S2MM DMA ERROR");
            dump_lfm_hls_ctrl("LFM HLS STATUS WHEN DMA ERROR");
            dump_lfm_hls_regs("LFM HLS REGS WHEN DMA ERROR");
            return XST_FAILURE;
        }

        if (!s2mm_busy) {
            xil_printf("\r\nS2MM DMA transfer completed.\r\n");
            dump_dma_full("S2MM DMA DONE");
            dump_lfm_hls_ctrl("LFM HLS STATUS AFTER DMA DONE");
            return XST_SUCCESS;
        }

        if ((timeout % 100000) == 0) {
            xil_printf("\r\nWaiting S2MM DMA... timeout left = %d\r\n", timeout);
            dump_dma_full("S2MM DMA WAITING");
            dump_lfm_hls_ctrl("LFM HLS STATUS WHILE WAITING");
        }

        timeout--;
        usleep(1);
    }

    xil_printf("\r\nERROR: S2MM DMA timeout. Transfer did not finish.\r\n");
    dump_dma_full("S2MM DMA TIMEOUT");
    dump_lfm_hls_ctrl("LFM HLS STATUS AFTER DMA TIMEOUT");
    dump_lfm_hls_regs("LFM HLS REGS AFTER DMA TIMEOUT");

    return XST_FAILURE;
}


static int verify_rx_data(u32 *RxData)
{
    int ErrorCount = 0;

    for (int i = 0; i < FRAME_SAMPLES; i++) {
        u32 rx_word = RxData[i];

        s16 rx_i = IQ_GET_I(rx_word);
        s16 rx_q = IQ_GET_Q(rx_word);

        s16 expected_i;
        s16 expected_q;
        expected_iq_for_index(i, &expected_i, &expected_q);

        if (rx_i != expected_i || rx_q != expected_q) {
            if (ErrorCount < 20) {
                xil_printf("Mismatch at index %d: Rx Raw=0x%08X, "
                           "Rx I=%d Q=%d, Expected I=%d Q=%d\r\n",
                           i,
                           (unsigned int)rx_word,
                           (int)rx_i,
                           (int)rx_q,
                           (int)expected_i,
                           (int)expected_q);
            }

            ErrorCount++;
        }
    }

    return ErrorCount;
}


// ========================================================
// Main
// ========================================================
int main()
{
    int Status;
    XAxiDma_Config *CfgPtr = NULL;

    xil_printf("\r\n");
    xil_printf("====================================================\r\n");
    xil_printf("--- FMCW Radar Phase 4: LFM TDM Generator ILA Test ---\r\n");
    xil_printf("====================================================\r\n");

    xil_printf("DMA_BASEADDR          = 0x%08X\r\n", (unsigned int)DMA_BASEADDR);
    xil_printf("LFM_TDM_GEN_BASEADDR  = 0x%08X\r\n", (unsigned int)LFM_TDM_GEN_BASEADDR);
    xil_printf("CHIRP_LEN             = %d samples\r\n", CHIRP_LEN);
    xil_printf("NUM_TX                = %d\r\n", NUM_TX);
    xil_printf("FRAME_CHIRPS          = %d\r\n", FRAME_CHIRPS);
    xil_printf("FRAME_SAMPLES         = %d samples\r\n", FRAME_SAMPLES);
    xil_printf("RX_BUFFER_SIZE        = %d bytes, expected S2MM_LENGTH = 0x%08X\r\n",
               RX_BUFFER_SIZE, (unsigned int)RX_BUFFER_SIZE);

#ifdef LFM_TDM_GEN_BASEADDR_IS_FALLBACK
    xil_printf("\r\nWARNING: LFM_TDM_GEN_BASEADDR is using fallback 0xA0020000.\r\n");
    xil_printf("Please verify the real address in xparameters.h or Vivado Address Editor.\r\n");
#endif

    // ========================================================
    // Step 1: DMA LookupConfig
    // ========================================================
    xil_printf("\r\nStep 1: DMA LookupConfig by BASEADDR...\r\n");

    CfgPtr = XAxiDma_LookupConfig(DMA_BASEADDR);

    if (!CfgPtr) {
        xil_printf("ERROR: No DMA config found by BASEADDR = 0x%08X\r\n",
                   (unsigned int)DMA_BASEADDR);
        xil_printf("Please check xparameters.h for XPAR_AXI_DMA_0_BASEADDR.\r\n");
        return XST_FAILURE;
    }

    xil_printf("DMA config found.\r\n");

    // ========================================================
    // Step 2: DMA Initialize
    // ========================================================
    xil_printf("\r\nStep 2: DMA Initialize...\r\n");

    Status = XAxiDma_CfgInitialize(&AxiDma, CfgPtr);
    if (Status != XST_SUCCESS) {
        xil_printf("ERROR: DMA Initialization failed. Status = %d\r\n", Status);
        return XST_FAILURE;
    }

    xil_printf("DMA initialization success.\r\n");

    if (XAxiDma_HasSg(&AxiDma)) {
        xil_printf("ERROR: DMA is configured as Scatter-Gather mode.\r\n");
        xil_printf("Please disable Scatter Gather Engine in Vivado AXI DMA IP.\r\n");
        return XST_FAILURE;
    }

    xil_printf("DMA is Simple Mode.\r\n");

    reset_dma_safely();

    // 關閉中斷，使用 polling mode
    XAxiDma_IntrDisable(&AxiDma, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA);
    XAxiDma_IntrDisable(&AxiDma, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DMA_TO_DEVICE);

    dump_dma_full("After DMA Init");

    // ========================================================
    // Step 3: Prepare Rx buffer
    // ========================================================
    xil_printf("\r\nStep 3: Prepare Rx buffer...\r\n");

    u32 *RxData = (u32 *)RxBuffer;

    for (int i = 0; i < FRAME_SAMPLES; i++) {
        RxData[i] = 0xDEADBEEF;
    }

    xil_printf("RxBuffer initialized with 0xDEADBEEF.\r\n");

    Status = check_buffer_addresses();
    if (Status != XST_SUCCESS) {
        return XST_FAILURE;
    }

    // ========================================================
    // Step 4: Cache maintenance
    // ========================================================
    xil_printf("\r\nStep 4: Cache maintenance...\r\n");

    Xil_DCacheFlushRange((UINTPTR)RxBuffer, RX_BUFFER_SIZE);
    Xil_DCacheInvalidateRange((UINTPTR)RxBuffer, RX_BUFFER_SIZE);

    xil_printf("Rx cache flush/invalidate done.\r\n");

    // ========================================================
    // Step 5: Check lfm_tdm_gen HLS IP AXI-Lite
    // ========================================================
    xil_printf("\r\nStep 5: Check lfm_tdm_gen HLS IP control register...\r\n");
    xil_printf("If program stops here, LFM_TDM_GEN_BASEADDR or AXI-Lite connection may be wrong.\r\n");

    dump_lfm_hls_ctrl("Before DMA Start");
    dump_lfm_hls_regs("Before DMA Start");

    // ========================================================
    // ILA arm delay
    // ========================================================
    xil_printf("\r\n====================================================\r\n");
    xil_printf("ARM ILA NOW!\r\n");
    xil_printf("Trigger suggestion:\r\n");
    xil_printf("  Native ILA: dbg_chirp_start == 1 and dbg_tx_sel == 0\r\n");
    xil_printf("  System ILA: TVALID == 1\r\n");
    xil_printf("DMA S2MM will start in 120 seconds...\r\n");
    xil_printf("====================================================\r\n");
    sleep(10);

    // ========================================================
    // Step 6: Start S2MM DMA first
    // ========================================================
    xil_printf("\r\nStep 6: Start S2MM DMA transfer first...\r\n");

    Status = XAxiDma_SimpleTransfer(
        &AxiDma,
        (UINTPTR)RxBuffer,
        RX_BUFFER_SIZE,
        XAXIDMA_DEVICE_TO_DMA
    );

    if (Status != XST_SUCCESS) {
        xil_printf("ERROR: S2MM transfer start failed. Status = %d\r\n", Status);
        dump_dma_full("S2MM START FAILED");
        return XST_FAILURE;
    }

    xil_printf("S2MM started.\r\n");
    dump_dma_full("After S2MM Start");

    // 給 DMA/FIFO 幾個 us 準備好 TREADY
    usleep(10);

    // ========================================================
    // Step 7: Start lfm_tdm_gen HLS IP
    // ========================================================
    xil_printf("\r\nStep 7: Start lfm_tdm_gen HLS IP...\r\n");
    xil_printf("Writing ap_start = 1 to HLS control register...\r\n");

    Xil_Out32(LFM_TDM_GEN_BASEADDR + 0x00, 0x01);

    xil_printf("lfm_tdm_gen start command sent.\r\n");

    usleep(10);

    dump_lfm_hls_ctrl("After HLS Start");
    dump_lfm_hls_regs("After HLS Start");

    // ========================================================
    // Step 8: Wait S2MM done
    // ========================================================
    xil_printf("\r\nStep 8: Wait S2MM DMA done...\r\n");

    Status = wait_s2mm_done();
    if (Status != XST_SUCCESS) {
        xil_printf("\r\nTest stopped because S2MM DMA did not finish correctly.\r\n");

        reset_dma_safely();

        Xil_DCacheInvalidateRange((UINTPTR)RxBuffer, RX_BUFFER_SIZE);
        print_samples_summary(RxData);

        xil_printf("\r\nDiagnostic hints:\r\n");
        xil_printf("1. Check whether S2MM_LENGTH is 0x00004000.\r\n");
        xil_printf("2. Check lfm_tdm_gen_0/m_axis_tx -> axis_data_fifo_1/S_AXIS.\r\n");
        xil_printf("3. Check axis_data_fifo_1/M_AXIS -> axi_dma_0/S_AXIS_S2MM.\r\n");
        xil_printf("4. Check lfm_tdm_gen_0/s_axi_CTRL base address.\r\n");
        xil_printf("5. ILA should show TVALID/TREADY/TLAST and dbg_sample_count.\r\n");
        xil_printf("6. TLAST should appear only at final index 4095.\r\n");

        return XST_FAILURE;
    }

    // ========================================================
    // Step 9: Read Rx data
    // ========================================================
    xil_printf("\r\nStep 9: Invalidate Rx cache and print data...\r\n");

    Xil_DCacheInvalidateRange((UINTPTR)RxBuffer, RX_BUFFER_SIZE);

    print_samples_summary(RxData);

    // ========================================================
    // Step 10: Verify data
    // ========================================================
    xil_printf("\r\nStep 10: Verify lfm_tdm_gen output data...\r\n");

    int ErrorCount = verify_rx_data(RxData);

    xil_printf("\r\n====================================================\r\n");

    if (ErrorCount == 0) {
        xil_printf("LFM TDM Generator Test Passed!\r\n");
        xil_printf("Expected pattern:\r\n");
        xil_printf("  I = sample_count + tx_sel * 1000\r\n");
        xil_printf("  Q = -(sample_count + tx_sel * 1000)\r\n");
        xil_printf("  tx_sel sequence = 0 -> 1 -> 2 -> 0\r\n");
    } else {
        xil_printf("LFM TDM Generator Test Failed: %d errors found.\r\n", ErrorCount);
    }

    xil_printf("====================================================\r\n");

    return (ErrorCount == 0) ? XST_SUCCESS : XST_FAILURE;
}
