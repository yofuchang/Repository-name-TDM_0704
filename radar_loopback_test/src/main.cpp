#include "xaxidma.h"
#include "xparameters.h"
#include "xil_cache.h"
#include "xil_printf.h"
#include "xil_io.h"
#include "xil_types.h"
#include "xstatus.h"
#include "sleep.h"

// ========================================================
// 基本參數
// ========================================================

// Vitis 2024.2 SDT flow 通常使用 BASEADDR，不使用 DEVICE_ID
#define DMA_BASEADDR        XPAR_AXI_DMA_0_BASEADDR

// 你的 AXI DMA GUI 目前 Address Width 是 32-bit
// 如果之後你把 AXI DMA Address Width 改成 64-bit，這裡改成 0
#define DMA_ADDR_WIDTH_IS_32    1

// --------------------------------------------------------
// HLS IP Base Address
// --------------------------------------------------------
#if defined(XPAR_RADAR_BEAMFORMER_0_S_AXI_CONTROL_BASEADDR)
    #define RADAR_IP_BASE_ADDR XPAR_RADAR_BEAMFORMER_0_S_AXI_CONTROL_BASEADDR
#elif defined(XPAR_XRADAR_BEAMFORMER_0_S_AXI_CONTROL_BASEADDR)
    #define RADAR_IP_BASE_ADDR XPAR_XRADAR_BEAMFORMER_0_S_AXI_CONTROL_BASEADDR
#elif defined(XPAR_RADAR_BEAMFORMER_0_BASEADDR)
    #define RADAR_IP_BASE_ADDR XPAR_RADAR_BEAMFORMER_0_BASEADDR
#else
    #define RADAR_IP_BASE_ADDR 0xA0010000
#endif

// 如果 HLS IP 有 chirp_len / length / num_samples 這類 AXI-Lite 參數，改成 1
// 並把 HLS_CHIRP_LEN_OFFSET 改成 xradar_beamformer_hw.h 裡面真正的 offset。
#define HLS_HAS_CHIRP_LEN_REG   0
#define HLS_CHIRP_LEN_OFFSET    0x10

// Radar 規格
#define CHIRP_LEN           1024

// Tx: 128-bit = 16 bytes, 1024 samples
#define TX_BUFFER_SIZE      (CHIRP_LEN * 16)

// Rx: 32-bit = 4 bytes, 1024 samples
#define RX_BUFFER_SIZE      (CHIRP_LEN * 4)

// Cache padding
#define CACHE_PADDING       128

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

// Timeout count
#define DMA_TIMEOUT_COUNT       1000000

#define MY_LOWER_32_BITS(x)     ((u32)((u64)(x) & 0xFFFFFFFFULL))
#define MY_UPPER_32_BITS(x)     ((u32)(((u64)(x) >> 32) & 0xFFFFFFFFULL))

// ========================================================
// I/Q packing format for 32-bit channel word
// bit[15:0]  = I, bit[31:16] = Q
// ========================================================
#define PACK_IQ(i, q)           ((((u32)((u16)(q))) << 16) | ((u32)((u16)(i))))
#define IQ_GET_I(word)          ((s16)((word) & 0xFFFF))
#define IQ_GET_Q(word)          ((s16)(((word) >> 16) & 0xFFFF))

// Current HLS broadside test pattern:
// ch0 = i,      -i
// ch1 = i + 10, -(i + 10)
// ch2 = i + 20, -(i + 20)
// ch3 = i + 30, -(i + 30)
// HLS output = average of 4 channels, so expected = i + 15, -(i + 15)
#define EXPECTED_I(i)           ((s16)((i) + 15))
#define EXPECTED_Q(i)           ((s16)(-((i) + 15)))

// ========================================================
// Buffer 宣告
// ========================================================
static u8 TxBuffer[TX_BUFFER_SIZE + CACHE_PADDING] __attribute__((aligned(64)));
static u8 RxBuffer[RX_BUFFER_SIZE + CACHE_PADDING] __attribute__((aligned(64)));

static XAxiDma AxiDma;


// ========================================================
// Small helpers
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

    if (sr & DMA_HALTED_MASK) {
        xil_printf(" HALTED");
    }

    if (sr & DMA_IDLE_MASK) {
        xil_printf(" IDLE");
    }

    if (sr & DMA_SG_INCLD_MASK) {
        xil_printf(" SGIncld");
    }

    if (sr & DMA_INT_ERR_MASK) {
        xil_printf(" DMAIntErr");
    }

    if (sr & DMA_SLV_ERR_MASK) {
        xil_printf(" DMASlvErr");
    }

    if (sr & DMA_DEC_ERR_MASK) {
        xil_printf(" DMADecErr");
    }

    if (sr & DMA_IOC_IRQ_MASK) {
        xil_printf(" IOC_Irq");
    }

    if (sr & DMA_DLY_IRQ_MASK) {
        xil_printf(" Dly_Irq");
    }

    if (sr & DMA_ERR_IRQ_MASK) {
        xil_printf(" Err_Irq");
    }

    xil_printf("\r\n");
}


// ========================================================
// DMA register dump: full version
// ========================================================
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
    xil_printf("MM2S_LENGTH    = 0x%08X  expected 0x%08X\r\n",
               (unsigned int)mm2s_len,
               (unsigned int)TX_BUFFER_SIZE);

    xil_printf("S2MM_DMACR     = 0x%08X\r\n", (unsigned int)s2mm_dmacr);
    decode_dma_status("S2MM_DMASR    ", s2mm_dmasr);
    xil_printf("S2MM_DA_MSB    = 0x%08X\r\n", (unsigned int)s2mm_da_msb);
    xil_printf("S2MM_DA        = 0x%08X\r\n", (unsigned int)s2mm_da);
    xil_printf("S2MM_LENGTH    = 0x%08X  expected 0x%08X\r\n",
               (unsigned int)s2mm_len,
               (unsigned int)RX_BUFFER_SIZE);

    xil_printf("====================================================\r\n");
}


// ========================================================
// HLS control register dump
// ========================================================
static void dump_hls_ctrl(const char *tag)
{
    xil_printf("\r\n[%s]\r\n", tag);
    xil_printf("RADAR_IP_BASE_ADDR = 0x%08X\r\n", (unsigned int)RADAR_IP_BASE_ADDR);

    // 注意：ap_done 是 clear-on-read，讀 control register 可能會清掉 ap_done
    u32 ctrl = Xil_In32(RADAR_IP_BASE_ADDR + 0x00);

    xil_printf("HLS CTRL 0x00 = 0x%08X\r\n", (unsigned int)ctrl);
    xil_printf("  bit0 ap_start = %d\r\n", (int)((ctrl >> 0) & 0x1));
    xil_printf("  bit1 ap_done  = %d\r\n", (int)((ctrl >> 1) & 0x1));
    xil_printf("  bit2 ap_idle  = %d\r\n", (int)((ctrl >> 2) & 0x1));
    xil_printf("  bit3 ap_ready = %d\r\n", (int)((ctrl >> 3) & 0x1));
}


// ========================================================
// HLS AXI-Lite register dump
// ========================================================
static void dump_hls_regs(const char *tag)
{
    xil_printf("\r\n================ HLS REG DUMP: %s ================\r\n", tag);
    xil_printf("BASE + 0x00 CTRL  = 0x%08X\r\n", (unsigned int)Xil_In32(RADAR_IP_BASE_ADDR + 0x00));
    xil_printf("BASE + 0x04 GIER  = 0x%08X\r\n", (unsigned int)Xil_In32(RADAR_IP_BASE_ADDR + 0x04));
    xil_printf("BASE + 0x08 IP_IER= 0x%08X\r\n", (unsigned int)Xil_In32(RADAR_IP_BASE_ADDR + 0x08));
    xil_printf("BASE + 0x0C IP_ISR= 0x%08X\r\n", (unsigned int)Xil_In32(RADAR_IP_BASE_ADDR + 0x0C));
    xil_printf("BASE + 0x10 ARG0  = 0x%08X\r\n", (unsigned int)Xil_In32(RADAR_IP_BASE_ADDR + 0x10));
    xil_printf("BASE + 0x14 ARG0H = 0x%08X\r\n", (unsigned int)Xil_In32(RADAR_IP_BASE_ADDR + 0x14));
    xil_printf("BASE + 0x18 ARG1  = 0x%08X\r\n", (unsigned int)Xil_In32(RADAR_IP_BASE_ADDR + 0x18));
    xil_printf("BASE + 0x1C ARG1H = 0x%08X\r\n", (unsigned int)Xil_In32(RADAR_IP_BASE_ADDR + 0x1C));
    xil_printf("===================================================\r\n");
}


// ========================================================
// Optional: configure HLS parameters
// ========================================================
static void configure_hls_ip(void)
{
#if HLS_HAS_CHIRP_LEN_REG
    xil_printf("Writing CHIRP_LEN = %d to HLS offset 0x%08X\r\n",
               CHIRP_LEN,
               HLS_CHIRP_LEN_OFFSET);

    Xil_Out32(RADAR_IP_BASE_ADDR + HLS_CHIRP_LEN_OFFSET, CHIRP_LEN);
#else
    xil_printf("No extra HLS AXI-Lite parameter configured.\r\n");
#endif
}


// ========================================================
// Buffer address check
// ========================================================
static int check_buffer_addresses(void)
{
    UINTPTR tx_addr = (UINTPTR)TxBuffer;
    UINTPTR rx_addr = (UINTPTR)RxBuffer;

    xil_printf("\r\n--- Buffer Address Check ---\r\n");
    print_addr64("TxBuffer addr", tx_addr);
    print_addr64("RxBuffer addr", rx_addr);

#if DMA_ADDR_WIDTH_IS_32
    if (MY_UPPER_32_BITS(tx_addr) != 0 || MY_UPPER_32_BITS(rx_addr) != 0) {
        xil_printf("ERROR: Buffer address is above 4GB, but AXI DMA Address Width is 32-bit.\r\n");
        xil_printf("Fix option 1: Change AXI DMA Address Width to 64-bit in Vivado.\r\n");
        xil_printf("Fix option 2: Move TxBuffer/RxBuffer to low DDR via linker script.\r\n");
        return XST_FAILURE;
    } else {
        xil_printf("OK: Buffer addresses are below 4GB for 32-bit DMA addressing.\r\n");
    }
#else
    xil_printf("DMA_ADDR_WIDTH_IS_32 = 0, skip 4GB address check.\r\n");
#endif

    xil_printf("----------------------------\r\n");
    return XST_SUCCESS;
}


// ========================================================
// Print first samples
// ========================================================
static void print_first_samples(const char *tag, u32 *TxData, u32 *RxData)
{
    xil_printf("\r\n--- %s: First 8 I/Q Samples ---\r\n", tag);

    for (int i = 0; i < 8; i++) {
        u32 ch0 = TxData[i * 4 + 0];
        u32 ch1 = TxData[i * 4 + 1];
        u32 ch2 = TxData[i * 4 + 2];
        u32 ch3 = TxData[i * 4 + 3];
        u32 rx  = RxData[i];

        s16 rx_i = IQ_GET_I(rx);
        s16 rx_q = IQ_GET_Q(rx);

        s16 exp_i = EXPECTED_I(i);
        s16 exp_q = EXPECTED_Q(i);

        xil_printf("Sample %d\r\n", i);
        xil_printf("  Tx Ch0 I=%d Q=%d | Ch1 I=%d Q=%d | Ch2 I=%d Q=%d | Ch3 I=%d Q=%d\r\n",
                   (int)IQ_GET_I(ch0), (int)IQ_GET_Q(ch0),
                   (int)IQ_GET_I(ch1), (int)IQ_GET_Q(ch1),
                   (int)IQ_GET_I(ch2), (int)IQ_GET_Q(ch2),
                   (int)IQ_GET_I(ch3), (int)IQ_GET_Q(ch3));
        xil_printf("  Rx Raw=0x%08X | Rx I=%d Q=%d | Expected I=%d Q=%d\r\n",
                   (unsigned int)rx,
                   (int)rx_i,
                   (int)rx_q,
                   (int)exp_i,
                   (int)exp_q);
    }
}


// ========================================================
// Reset DMA safely
// ========================================================
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


// ========================================================
// Wait DMA done with timeout
// ========================================================
static int wait_dma_done(XAxiDma *Dma)
{
    int timeout = DMA_TIMEOUT_COUNT;

    while (timeout > 0) {
        int mm2s_busy = XAxiDma_Busy(Dma, XAXIDMA_DMA_TO_DEVICE);
        int s2mm_busy = XAxiDma_Busy(Dma, XAXIDMA_DEVICE_TO_DMA);

        u32 mm2s_sr = Xil_In32(DMA_BASEADDR + MM2S_DMASR_OFFSET);
        u32 s2mm_sr = Xil_In32(DMA_BASEADDR + S2MM_DMASR_OFFSET);

        if ((mm2s_sr & DMA_ERR_MASK) || (s2mm_sr & DMA_ERR_MASK)) {
            xil_printf("\r\nERROR: DMA error while waiting.\r\n");
            dump_dma_full("DMA ERROR");
            dump_hls_ctrl("HLS STATUS WHEN DMA ERROR");
            dump_hls_regs("HLS REGS WHEN DMA ERROR");
            return XST_FAILURE;
        }

        if (!mm2s_busy && !s2mm_busy) {
            xil_printf("\r\nDMA transfer completed.\r\n");
            dump_dma_full("DMA DONE");
            dump_hls_ctrl("HLS STATUS AFTER DMA DONE");
            return XST_SUCCESS;
        }

        if ((timeout % 100000) == 0) {
            xil_printf("\r\nWaiting DMA... timeout left = %d\r\n", timeout);
            dump_dma_full("DMA WAITING");
            dump_hls_ctrl("HLS STATUS WHILE WAITING");
        }

        timeout--;
        usleep(1);
    }

    xil_printf("\r\nERROR: DMA timeout. Transfer did not finish.\r\n");
    dump_dma_full("DMA TIMEOUT");
    dump_hls_ctrl("HLS STATUS AFTER DMA TIMEOUT");
    dump_hls_regs("HLS REGS AFTER DMA TIMEOUT");

    return XST_FAILURE;
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
    xil_printf("--- FMCW Radar Phase 3: Broadside I/Q Beamformer Test Starting ---\r\n");
    xil_printf("====================================================\r\n");

    xil_printf("DMA_BASEADDR        = 0x%08X\r\n", (unsigned int)DMA_BASEADDR);
    xil_printf("RADAR_IP_BASE_ADDR  = 0x%08X\r\n", (unsigned int)RADAR_IP_BASE_ADDR);
    xil_printf("TX_BUFFER_SIZE      = %d bytes, expected MM2S_LENGTH = 0x%08X\r\n",
               TX_BUFFER_SIZE, (unsigned int)TX_BUFFER_SIZE);
    xil_printf("RX_BUFFER_SIZE      = %d bytes, expected S2MM_LENGTH = 0x%08X\r\n",
               RX_BUFFER_SIZE, (unsigned int)RX_BUFFER_SIZE);

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
    // Step 3: Prepare test data
    // ========================================================
    xil_printf("\r\nStep 3: Prepare Tx/Rx buffer...\r\n");

    u32 *TxData = (u32 *)TxBuffer;
    u32 *RxData = (u32 *)RxBuffer;

    for (int i = 0; i < CHIRP_LEN; i++) {
        // 4-channel complex I/Q test pattern
        // Channel word format: bit[15:0] = I, bit[31:16] = Q
        s16 ch0_i = (s16)i;
        s16 ch0_q = (s16)(-i);

        s16 ch1_i = (s16)(i + 10);
        s16 ch1_q = (s16)(-(i + 10));

        s16 ch2_i = (s16)(i + 20);
        s16 ch2_q = (s16)(-(i + 20));

        s16 ch3_i = (s16)(i + 30);
        s16 ch3_q = (s16)(-(i + 30));

        TxData[i * 4 + 0] = PACK_IQ(ch0_i, ch0_q);  // Ch0
        TxData[i * 4 + 1] = PACK_IQ(ch1_i, ch1_q);  // Ch1
        TxData[i * 4 + 2] = PACK_IQ(ch2_i, ch2_q);  // Ch2
        TxData[i * 4 + 3] = PACK_IQ(ch3_i, ch3_q);  // Ch3

        RxData[i] = 0xDEADBEEF;
    }

    xil_printf("Buffer initialized.\r\n");

    print_first_samples("Before DMA", TxData, RxData);

    Status = check_buffer_addresses();
    if (Status != XST_SUCCESS) {
        return XST_FAILURE;
    }

    // ========================================================
    // Step 4: Cache maintenance
    // ========================================================
    xil_printf("\r\nStep 4: Cache maintenance...\r\n");

    Xil_DCacheFlushRange((UINTPTR)TxBuffer, TX_BUFFER_SIZE);
    Xil_DCacheFlushRange((UINTPTR)RxBuffer, RX_BUFFER_SIZE);
    Xil_DCacheInvalidateRange((UINTPTR)RxBuffer, RX_BUFFER_SIZE);

    xil_printf("Cache flush/invalidate done.\r\n");

    // ========================================================
    // Step 5: Check HLS IP AXI-Lite
    // ========================================================
    xil_printf("\r\nStep 5: Check HLS IP control register...\r\n");
    xil_printf("If program stops here, RADAR_IP_BASE_ADDR or AXI-Lite connection may be wrong.\r\n");

    dump_hls_ctrl("Before HLS Configure");
    dump_hls_regs("Before HLS Configure");

    configure_hls_ip();

    dump_hls_ctrl("Before DMA Start");

    xil_printf("\r\n====================================================\r\n");
    xil_printf("ARM ILA NOW! DMA transfer will start in 10 seconds...\r\n");
    xil_printf("====================================================\r\n");
    sleep(10);
    // ========================================================
    // Step 6: Start S2MM first
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

    // ========================================================
    // Step 7: Start MM2S second
    // ========================================================
    xil_printf("\r\nStep 7: Start MM2S DMA transfer second...\r\n");
    xil_printf("MM2S may wait until HLS IP asserts TREADY. This is normal.\r\n");

    Status = XAxiDma_SimpleTransfer(
        &AxiDma,
        (UINTPTR)TxBuffer,
        TX_BUFFER_SIZE,
        XAXIDMA_DMA_TO_DEVICE
    );

    if (Status != XST_SUCCESS) {
        xil_printf("ERROR: MM2S transfer start failed. Status = %d\r\n", Status);
        dump_dma_full("MM2S START FAILED");
        return XST_FAILURE;
    }

    xil_printf("MM2S started.\r\n");
    dump_dma_full("After MM2S Start");

    // ========================================================
    // Step 8: Start HLS IP last
    // ========================================================
    xil_printf("\r\nStep 8: Start HLS IP last...\r\n");
    xil_printf("Writing ap_start = 1 to HLS control register...\r\n");

    Xil_Out32(RADAR_IP_BASE_ADDR + 0x00, 0x01);

    xil_printf("HLS start command sent.\r\n");

    // 給 HLS 幾個 clock / us 反應，再讀狀態
    usleep(10);

    dump_hls_ctrl("After HLS Start");
    dump_hls_regs("After HLS Start");

    // ========================================================
    // Step 9: Wait DMA done
    // ========================================================
    xil_printf("\r\nStep 9: Wait DMA done...\r\n");

    Status = wait_dma_done(&AxiDma);
    if (Status != XST_SUCCESS) {
        xil_printf("\r\nTest stopped because DMA did not finish correctly.\r\n");

        // DMA 還在 running，先 reset，避免邊讀 Rx 邊被 DMA 寫
        reset_dma_safely();

        Xil_DCacheInvalidateRange((UINTPTR)RxBuffer, RX_BUFFER_SIZE);
        print_first_samples("After Timeout", TxData, RxData);

        xil_printf("\r\nDiagnostic hints:\r\n");
        xil_printf("1. Check whether MM2S_LENGTH is 0x00004000.\r\n");
        xil_printf("2. Check whether S2MM_LENGTH is 0x00001000.\r\n");
        xil_printf("3. If LENGTH registers are correct but DMA never goes IDLE, use ILA.\r\n");
        xil_printf("4. ILA probe: MM2S_TVALID/TREADY/TLAST and HLS out_data_TVALID/TREADY/TLAST.\r\n");
        xil_printf("5. If TxBuffer/RxBuffer address is above 4GB, change DMA Address Width to 64-bit.\r\n");

        return XST_FAILURE;
    }

    // ========================================================
    // Step 10: Read Rx data
    // ========================================================
    xil_printf("\r\nStep 10: Invalidate Rx cache and check data...\r\n");

    Xil_DCacheInvalidateRange((UINTPTR)RxBuffer, RX_BUFFER_SIZE);

    print_first_samples("After DMA Done", TxData, RxData);

    // ========================================================
    // Step 11: Verify data
    // ========================================================
    int ErrorCount = 0;

    for (int i = 0; i < CHIRP_LEN; i++) {
        u32 rx_word = RxData[i];

        s16 rx_i = IQ_GET_I(rx_word);
        s16 rx_q = IQ_GET_Q(rx_word);

        s16 expected_i = EXPECTED_I(i);
        s16 expected_q = EXPECTED_Q(i);

        if (rx_i != expected_i || rx_q != expected_q) {
            if (ErrorCount < 10) {
                xil_printf("Mismatch at index %d: Rx Raw=0x%08X, Rx I=%d Q=%d, Expected I=%d Q=%d\r\n",
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

    xil_printf("\r\n====================================================\r\n");

    if (ErrorCount == 0) {
        xil_printf("Broadside I/Q Beamformer Test Passed!\r\n");
    } else {
        xil_printf("Broadside I/Q Beamformer Test Failed: %d errors found.\r\n", ErrorCount);
    }

    xil_printf("====================================================\r\n");

    return (ErrorCount == 0) ? XST_SUCCESS : XST_FAILURE;
}