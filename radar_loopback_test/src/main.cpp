#include "xaxidma.h"
#include "xparameters.h"
#include "xil_cache.h"
#include "xil_printf.h"
#include "xil_io.h"
#include "xil_types.h"
#include "xstatus.h"
#include "sleep.h"
#include "lfm_chirp_lut.h"

// ========================================================
// 4-TX TDM Real Complex LFM Generator Test
// TX0 -> TX1 -> TX2 -> TX3
// ========================================================

#define DMA_BASEADDR XPAR_AXI_DMA_0_BASEADDR
#define DMA_ADDR_WIDTH_IS_32 1

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
    #define LFM_TDM_GEN_BASEADDR 0xA0020000U
    #define LFM_TDM_GEN_BASEADDR_IS_FALLBACK 1
#endif

#define CHIRP_LEN       1024
#define NUM_TX          4
#define FRAME_CHIRPS    4
#define FRAME_SAMPLES   (CHIRP_LEN * FRAME_CHIRPS)
#define RX_BUFFER_SIZE  (FRAME_SAMPLES * 4)
#define CACHE_PADDING   128

#define S2MM_DMASR_OFFSET   0x34
#define S2MM_LENGTH_OFFSET  0x58

#define DMA_HALTED_MASK     0x00000001
#define DMA_IDLE_MASK       0x00000002
#define DMA_ERR_MASK        0x00000070
#define DMA_IOC_IRQ_MASK    0x00001000
#define DMA_TIMEOUT_COUNT   1000000

#define IQ_GET_I(word) ((s16)((word) & 0xFFFF))
#define IQ_GET_Q(word) ((s16)(((word) >> 16) & 0xFFFF))

static u8 RxBuffer[RX_BUFFER_SIZE + CACHE_PADDING]
    __attribute__((aligned(64)));

static XAxiDma AxiDma;

static void print_s2mm_status(const char *tag)
{
    u32 sr  = Xil_In32(DMA_BASEADDR + S2MM_DMASR_OFFSET);
    u32 len = Xil_In32(DMA_BASEADDR + S2MM_LENGTH_OFFSET);

    xil_printf("\r\n[%s]\r\n", tag);
    xil_printf("S2MM_DMASR  = 0x%08X", (unsigned int)sr);

    if (sr & DMA_HALTED_MASK)  xil_printf(" HALTED");
    if (sr & DMA_IDLE_MASK)    xil_printf(" IDLE");
    if (sr & DMA_IOC_IRQ_MASK) xil_printf(" IOC_Irq");
    if (sr & DMA_ERR_MASK)     xil_printf(" ERROR");

    xil_printf("\r\n");
    xil_printf("S2MM_LENGTH = 0x%08X expected 0x%08X\r\n",
               (unsigned int)len,
               (unsigned int)RX_BUFFER_SIZE);
}

static void dump_hls_ctrl(const char *tag)
{
    u32 ctrl = Xil_In32(LFM_TDM_GEN_BASEADDR + 0x00);

    xil_printf("\r\n[%s]\r\n", tag);
    xil_printf("LFM_TDM_GEN_BASEADDR = 0x%08X\r\n",
               (unsigned int)LFM_TDM_GEN_BASEADDR);

    xil_printf("CTRL = 0x%08X | start=%d done=%d idle=%d ready=%d\r\n",
               (unsigned int)ctrl,
               (int)((ctrl >> 0) & 1),
               (int)((ctrl >> 1) & 1),
               (int)((ctrl >> 2) & 1),
               (int)((ctrl >> 3) & 1));
}

static int wait_s2mm_done(void)
{
    int timeout = DMA_TIMEOUT_COUNT;

    while (timeout-- > 0) {
        u32 sr = Xil_In32(DMA_BASEADDR + S2MM_DMASR_OFFSET);

        if (sr & DMA_ERR_MASK) {
            xil_printf("ERROR: S2MM DMA error.\r\n");
            print_s2mm_status("S2MM ERROR");
            dump_hls_ctrl("HLS AT DMA ERROR");
            return XST_FAILURE;
        }

        if (!XAxiDma_Busy(&AxiDma, XAXIDMA_DEVICE_TO_DMA)) {
            print_s2mm_status("S2MM DONE");
            return XST_SUCCESS;
        }

        usleep(1);
    }

    xil_printf("ERROR: S2MM timeout.\r\n");
    print_s2mm_status("S2MM TIMEOUT");
    dump_hls_ctrl("HLS AT TIMEOUT");
    return XST_FAILURE;
}

static int expected_tx_sel(int index)
{
    int chirp = index / CHIRP_LEN;
    return chirp % NUM_TX;
}

static u32 expected_word(int index)
{
    int sample = index % CHIRP_LEN;
    return (u32)LFM_IQ_LUT[sample];
}

static void print_one_sample(int index, u32 rx_word)
{
    int chirp  = index / CHIRP_LEN;
    int sample = index % CHIRP_LEN;
    int tx_sel = expected_tx_sel(index);
    u32 expected = expected_word(index);

    xil_printf(
        "Index %d | chirp=%d tx_sel=%d sample=%d | "
        "Rx I=%d Q=%d | Expected I=%d Q=%d\r\n",
        index,
        chirp,
        tx_sel,
        sample,
        (int)IQ_GET_I(rx_word),
        (int)IQ_GET_Q(rx_word),
        (int)IQ_GET_I(expected),
        (int)IQ_GET_Q(expected)
    );
}

static void print_boundary_samples(u32 *RxData)
{
    xil_printf("\r\n--- First and last sample of each TX chirp ---\r\n");

    for (int chirp = 0; chirp < FRAME_CHIRPS; chirp++) {
        int first = chirp * CHIRP_LEN;
        int last  = first + CHIRP_LEN - 1;

        xil_printf("\r\nTX%d / Chirp %d:\r\n",
                   chirp % NUM_TX,
                   chirp);

        print_one_sample(first, RxData[first]);
        print_one_sample(last, RxData[last]);
    }
}

static int verify_rx_data(u32 *RxData)
{
    int errors = 0;

    for (int i = 0; i < FRAME_SAMPLES; i++) {
        u32 expected = expected_word(i);

        if (RxData[i] != expected) {
            if (errors < 10) {
                xil_printf(
                    "Mismatch index %d: Rx=0x%08X Expected=0x%08X\r\n",
                    i,
                    (unsigned int)RxData[i],
                    (unsigned int)expected
                );
            }
            errors++;
        }
    }

    return errors;
}

int main()
{
    int Status;
    XAxiDma_Config *CfgPtr;

    xil_printf("\r\n");
    xil_printf("====================================================\r\n");
    xil_printf("--- FMCW Radar: 4-TX Real LFM TDM Test ---\r\n");
    xil_printf("====================================================\r\n");

    xil_printf("DMA_BASEADDR         = 0x%08X\r\n",
               (unsigned int)DMA_BASEADDR);
    xil_printf("LFM_TDM_GEN_BASEADDR = 0x%08X\r\n",
               (unsigned int)LFM_TDM_GEN_BASEADDR);
    xil_printf("CHIRP_LEN            = %d\r\n", CHIRP_LEN);
    xil_printf("NUM_TX               = %d\r\n", NUM_TX);
    xil_printf("FRAME_CHIRPS         = %d\r\n", FRAME_CHIRPS);
    xil_printf("FRAME_SAMPLES        = %d\r\n", FRAME_SAMPLES);
    xil_printf("RX_BUFFER_SIZE       = %d bytes (0x%08X)\r\n",
               RX_BUFFER_SIZE,
               (unsigned int)RX_BUFFER_SIZE);

#ifdef LFM_TDM_GEN_BASEADDR_IS_FALLBACK
    xil_printf("WARNING: Using fallback LFM_TDM_GEN address 0xA0020000.\r\n");
#endif

    CfgPtr = XAxiDma_LookupConfig(DMA_BASEADDR);
    if (!CfgPtr) {
        xil_printf("ERROR: DMA config not found.\r\n");
        return XST_FAILURE;
    }

    Status = XAxiDma_CfgInitialize(&AxiDma, CfgPtr);
    if (Status != XST_SUCCESS) {
        xil_printf("ERROR: DMA initialization failed.\r\n");
        return XST_FAILURE;
    }

    if (XAxiDma_HasSg(&AxiDma)) {
        xil_printf("ERROR: DMA Scatter-Gather mode is enabled.\r\n");
        return XST_FAILURE;
    }

    XAxiDma_Reset(&AxiDma);

    int reset_timeout = 100000;
    while (!XAxiDma_ResetIsDone(&AxiDma) && --reset_timeout > 0) {
    }

    if (reset_timeout <= 0) {
        xil_printf("ERROR: DMA reset timeout.\r\n");
        return XST_FAILURE;
    }

    XAxiDma_IntrDisable(
        &AxiDma,
        XAXIDMA_IRQ_ALL_MASK,
        XAXIDMA_DEVICE_TO_DMA
    );

    XAxiDma_IntrDisable(
        &AxiDma,
        XAXIDMA_IRQ_ALL_MASK,
        XAXIDMA_DMA_TO_DEVICE
    );

    u32 *RxData = (u32 *)RxBuffer;

    for (int i = 0; i < FRAME_SAMPLES; i++) {
        RxData[i] = 0xDEADBEEF;
    }

#if DMA_ADDR_WIDTH_IS_32
    if ((((u64)(UINTPTR)RxBuffer) >> 32) != 0) {
        xil_printf("ERROR: RxBuffer is above 4GB while DMA uses 32-bit addresses.\r\n");
        return XST_FAILURE;
    }
#endif

    Xil_DCacheFlushRange((UINTPTR)RxBuffer, RX_BUFFER_SIZE);
    Xil_DCacheInvalidateRange((UINTPTR)RxBuffer, RX_BUFFER_SIZE);

    dump_hls_ctrl("BEFORE START");

    xil_printf("\r\n");
    xil_printf("====================================================\r\n");
    xil_printf("PAUSED BEFORE DMA AND HLS START\r\n");
    xil_printf("1. Open Vivado Hardware Manager.\r\n");
    xil_printf("2. Select hw_ila_1.\r\n");
    xil_printf("3. Press Run Trigger.\r\n");
    xil_printf("4. Confirm: ILA Status = Waiting For Trigger.\r\n");
    xil_printf("5. Return to this COM6 window.\r\n");
    xil_printf("6. Press any key to start DMA and lfm_tdm_gen.\r\n");
    xil_printf("Expected TX sequence: TX0 -> TX1 -> TX2 -> TX3\r\n");
    xil_printf("====================================================\r\n");

    /*
     * Wait until one character is received from UART.
     * DMA and HLS have not started yet.
     */
    (void)inbyte();

    xil_printf("\r\n");
    xil_printf("Key received. Starting DMA S2MM and lfm_tdm_gen now...\r\n");

    Status = XAxiDma_SimpleTransfer(
        &AxiDma,
        (UINTPTR)RxBuffer,
        RX_BUFFER_SIZE,
        XAXIDMA_DEVICE_TO_DMA
    );

    if (Status != XST_SUCCESS) {
        xil_printf("ERROR: Cannot start S2MM transfer.\r\n");
        return XST_FAILURE;
    }

    usleep(10);

    Xil_Out32(LFM_TDM_GEN_BASEADDR + 0x00, 0x01);

    Status = wait_s2mm_done();
    if (Status != XST_SUCCESS) {
        return XST_FAILURE;
    }

    Xil_DCacheInvalidateRange((UINTPTR)RxBuffer, RX_BUFFER_SIZE);

    print_boundary_samples(RxData);

    int errors = verify_rx_data(RxData);

    xil_printf("\r\n");
    xil_printf("====================================================\r\n");

    if (errors == 0) {
        xil_printf("4-TX Real LFM TDM Generator Test Passed!\r\n");
        xil_printf("The same 1024-sample complex LFM chirp is sent by:\r\n");
        xil_printf("TX0 -> TX1 -> TX2 -> TX3\r\n");
    } else {
        xil_printf(
            "4-TX Real LFM TDM Generator Test Failed: %d errors.\r\n",
            errors
        );
    }

    xil_printf("====================================================\r\n");

    return (errors == 0) ? XST_SUCCESS : XST_FAILURE;
}
