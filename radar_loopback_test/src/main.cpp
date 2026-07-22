#ifdef __FILENAME__
#undef __FILENAME__
#endif
#define __FILENAME__ __FILE__

#include "xaxidma.h"
#include "xparameters.h"
#include "xrfclk.h"
#include "xrfdc.h"
#include "xrfdc_hw.h"
#include "xil_cache.h"
#include "xil_printf.h"
#include "xil_io.h"
#include "xil_types.h"
#include "xstatus.h"
#include "sleep.h"

#include <stdio.h>

// ============================================================================
// ZCU208 / XM655 single-channel RFDC DAC -> ADC real-LFM loopback test
//
// Current hardware path:
//
// lfm_tdm_gen_0
//   -> iq_to_real_0
//   -> axis_clock_converter_1
//   -> RFDC DAC Tile 228 / logical DAC Tile0 / Block0
//   -> XM655 external analog loopback cable
//   -> RFDC ADC Tile 226 / ADC2
//   -> axis_clock_converter_0
//   -> adc_packetizer_0
//   -> axis_data_fifo_1
//   -> AXI DMA S2MM
//   -> DDR
//
// IMPORTANT:
// 1. This version matches the CURRENT adc_packetizer hardware:
//      one signed 16-bit ADC sample -> one 32-bit AXI word
//      TDATA[15:0]  = ADC sample
//      TDATA[31:16] = 0
//      TLAST every 4096 output words
//
// 2. This version programs CLK104 before RFDC initialization.
//    LMK config ID 1 provides:
//      ADC reference = 250 MHz
//      DAC reference = 250 MHz
//      PL reference  = 125 MHz
//      SYSREF        = 10 MHz
//    It then verifies the RFDC ADC/DAC tile PLL lock status.
//
// 3. Analog loopback data must NOT be compared bit-for-bit with the LUT.
//    Gain, delay, phase, DC offset, quantization and analog bandwidth all alter
//    the ADC samples.
// ============================================================================

// ------------------------------ Base addresses -------------------------------

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

#if defined(XPAR_USP_RF_DATA_CONVERTER_0_BASEADDR)
    #define RFDC_BASEADDR XPAR_USP_RF_DATA_CONVERTER_0_BASEADDR
#elif defined(XPAR_XRFDC_0_BASEADDR)
    #define RFDC_BASEADDR XPAR_XRFDC_0_BASEADDR
#elif defined(XPAR_RFDC_0_BASEADDR)
    #define RFDC_BASEADDR XPAR_RFDC_0_BASEADDR
#else
    // Address Editor assignment from the current Vivado design.
    #define RFDC_BASEADDR 0xA0040000U
    #define RFDC_BASEADDR_IS_FALLBACK 1
#endif

#if defined(SDT)
    // New SDT flow: lookup functions use the peripheral base address.
    #define RFDC_LOOKUP_ARGUMENT RFDC_BASEADDR
#elif defined(XPAR_XRFDC_0_DEVICE_ID)
    #define RFDC_LOOKUP_ARGUMENT XPAR_XRFDC_0_DEVICE_ID
#elif defined(XPAR_USP_RF_DATA_CONVERTER_0_DEVICE_ID)
    #define RFDC_LOOKUP_ARGUMENT XPAR_USP_RF_DATA_CONVERTER_0_DEVICE_ID
#elif defined(XPAR_RFDC_0_DEVICE_ID)
    #define RFDC_LOOKUP_ARGUMENT XPAR_RFDC_0_DEVICE_ID
#else
    // Useful for newer generated BSPs that omit DEVICE_ID.
    #define RFDC_LOOKUP_ARGUMENT RFDC_BASEADDR
    #define RFDC_LOOKUP_ARGUMENT_IS_FALLBACK 1
#endif

// ------------------------------ CLK104 setup ---------------------------------

/*
 * Use the instance-specific macro first. After adding a second AXI GPIO,
 * canonical XGPIO numbering is not guaranteed to preserve the old order.
 */
#if defined(XPAR_AXI_GPIO_0_BASEADDR)
    #define RFCLK_GPIO_BASEADDR XPAR_AXI_GPIO_0_BASEADDR
#elif defined(XPAR_XGPIO_0_BASEADDR)
    #define RFCLK_GPIO_BASEADDR XPAR_XGPIO_0_BASEADDR
#else
    #error "AXI GPIO base address for CLK104 RFCLK support was not found."
#endif

// -------------------------- RFDC reset GPIO setup ----------------------------

#if defined(XPAR_AXI_GPIO_RFDC_RESET_BASEADDR)
    #define RFDC_RESET_GPIO_BASEADDR XPAR_AXI_GPIO_RFDC_RESET_BASEADDR
#elif defined(XPAR_AXI_GPIO_RFDC_RESET_0_BASEADDR)
    #define RFDC_RESET_GPIO_BASEADDR XPAR_AXI_GPIO_RFDC_RESET_0_BASEADDR
#else
    // Address Editor assignment in the current Vivado design.
    #define RFDC_RESET_GPIO_BASEADDR 0xA0010000U
    #define RFDC_RESET_GPIO_BASEADDR_IS_FALLBACK 1
#endif

#define AXI_GPIO_DATA_OFFSET          0x00000000U
#define RFDC_RESET_ASSERT_VALUE       0x00000000U
#define RFDC_RESET_RELEASE_VALUE      0x00000001U
#define RFDC_RELEASE_SETTLE_US        1000000U

// xrfclk_LMK_conf.h:
// Config ID 1 = ADC/DAC/LMX ref 250 MHz, PL ref 125 MHz, SYSREF 10 MHz.
#define CLK104_LMK_CONFIG_ID 1U
#define CLK104_SETTLE_US     1000000U

// ------------------------------ RFDC mapping ---------------------------------

// Physical ADC Tile 226 maps to RFDC logical ADC tile index 2.
// Physical DAC Tile 228 maps to RFDC logical DAC tile index 0.
#define RFDC_ADC_TILE_ID        2U
#define RFDC_ADC_BLOCK_ID       0U
#define RFDC_ADC_PHYSICAL_TILE  226U

#define RFDC_DAC_TILE_ID        0U
#define RFDC_DAC_BLOCK_ID       0U
#define RFDC_DAC_PHYSICAL_TILE  228U

/*
 * XRFdc_GetPLLLockStatus() returns XRFDC_SUCCESS/XRFDC_FAILURE.
 * The returned LockStatusPtr value must be compared with the driver's
 * XRFDC_PLL_LOCKED macro.  It is not guaranteed to be the Boolean value 1.
 *
 * XRFdc_GetIPStatus(), by contrast, reports TileStatus.PLLState as a
 * normalized 0/1 status field.
 */
#define RFDC_API_PLL_LOCKED_VALUE     XRFDC_PLL_LOCKED
#define RFDC_TILE_STATUS_PLL_LOCKED   1U

#define RFDC_PLL_WAIT_ATTEMPTS 50
#define RFDC_PLL_WAIT_US       100000U
#define RFDC_RESET_SETTLE_US   100000U

/*
 * ZCU208 uses a Gen-3 RFSoC device. PG269 defines the actual local
 * tile clock-detector status at control/status offset 0x084, bit 0.
 * The driver macro XRFDC_CLOCK_DETECT_OFFSET (0x080) is retained below
 * as the clock-distribution detector configuration register.
 */
#define RFDC_GEN3_CLOCK_DETECT_STATUS_OFFSET 0x084U
#define RFDC_GEN3_CLOCK_DETECT_VALID_MASK    0x0001U

// ---------------------------- Capture parameters -----------------------------

#define CHIRP_LEN             1024U
#define NUM_TX                4U
#define FRAME_CHIRPS          4U
#define FRAME_SAMPLES         (CHIRP_LEN * FRAME_CHIRPS)

// Current adc_packetizer: 1 ADC sample per 32-bit DMA word.
#define DMA_WORDS_PER_FRAME   FRAME_SAMPLES
#define RX_BUFFER_SIZE        (DMA_WORDS_PER_FRAME * sizeof(u32))
#define CACHE_PADDING         128U
#define RX_SENTINEL           0xDEADBEEFU

#define CSV_BUFFER_SIZE       (256U * 1024U)

// ----------------------------- DMA registers ---------------------------------

#define S2MM_DMASR_OFFSET     0x34U
#define S2MM_LENGTH_OFFSET    0x58U

#define DMA_HALTED_MASK       0x00000001U
#define DMA_IDLE_MASK         0x00000002U
#define DMA_ERR_MASK          0x00000070U
#define DMA_IOC_IRQ_MASK      0x00001000U
#define DMA_TIMEOUT_COUNT     5000000

// HLS ap_ctrl_hs control register.
#define HLS_CTRL_OFFSET       0x00U
#define HLS_AP_START_MASK     0x00000001U
#define HLS_AUTO_RESTART_MASK 0x00000080U

#define ADC_SAMPLE_FROM_WORD(word) ((s16)((word) & 0xFFFFU))

// ------------------------------- Buffers -------------------------------------

static u8 DiscardBuffer[RX_BUFFER_SIZE + CACHE_PADDING]
    __attribute__((aligned(64)));

static u8 RxBuffer[RX_BUFFER_SIZE + CACHE_PADDING]
    __attribute__((aligned(64)));

static char CsvBuffer[CSV_BUFFER_SIZE]
    __attribute__((aligned(64)));

static volatile u32 CsvDataLength = 0U;
static volatile u32 CsvReady = 0U;

static XAxiDma AxiDma;
static XRFdc RFdc;

// ============================================================================
// Utility functions
// ============================================================================

static void print_s2mm_status(const char *tag)
{
    u32 sr  = Xil_In32(DMA_BASEADDR + S2MM_DMASR_OFFSET);
    u32 len = Xil_In32(DMA_BASEADDR + S2MM_LENGTH_OFFSET);

    xil_printf("\r\n[%s]\r\n", tag);
    xil_printf("S2MM_DMASR  = 0x%08X", (unsigned int)sr);

    if ((sr & DMA_HALTED_MASK) != 0U)  xil_printf(" HALTED");
    if ((sr & DMA_IDLE_MASK) != 0U)    xil_printf(" IDLE");
    if ((sr & DMA_IOC_IRQ_MASK) != 0U) xil_printf(" IOC_Irq");
    if ((sr & DMA_ERR_MASK) != 0U)     xil_printf(" ERROR");

    xil_printf("\r\n");
    xil_printf("S2MM_LENGTH = 0x%08X\r\n", (unsigned int)len);
}

static void dump_hls_ctrl(const char *tag)
{
    u32 ctrl = Xil_In32(LFM_TDM_GEN_BASEADDR + HLS_CTRL_OFFSET);

    xil_printf("\r\n[%s]\r\n", tag);
    xil_printf("LFM_TDM_GEN_BASEADDR = 0x%08X\r\n",
               (unsigned int)LFM_TDM_GEN_BASEADDR);

    xil_printf(
        "CTRL = 0x%08X | start=%d done=%d idle=%d ready=%d auto_restart=%d\r\n",
        (unsigned int)ctrl,
        (int)((ctrl >> 0) & 1U),
        (int)((ctrl >> 1) & 1U),
        (int)((ctrl >> 2) & 1U),
        (int)((ctrl >> 3) & 1U),
        (int)((ctrl >> 7) & 1U)
    );
}

static void start_lfm_auto_restart(void)
{
    Xil_Out32(
        LFM_TDM_GEN_BASEADDR + HLS_CTRL_OFFSET,
        HLS_AP_START_MASK | HLS_AUTO_RESTART_MASK
    );
}

static void stop_lfm_auto_restart(void)
{
    // Clear auto-restart. The current transaction may finish before becoming idle.
    Xil_Out32(LFM_TDM_GEN_BASEADDR + HLS_CTRL_OFFSET, 0x00000000U);
}

static int wait_s2mm_done(const char *tag, int print_status)
{
    int timeout = DMA_TIMEOUT_COUNT;

    while (timeout-- > 0) {
        u32 sr = Xil_In32(DMA_BASEADDR + S2MM_DMASR_OFFSET);

        if ((sr & DMA_ERR_MASK) != 0U) {
            xil_printf("ERROR: S2MM DMA error during %s.\r\n", tag);
            print_s2mm_status("S2MM ERROR");
            dump_hls_ctrl("HLS AT DMA ERROR");
            return XST_FAILURE;
        }

        if (!XAxiDma_Busy(&AxiDma, XAXIDMA_DEVICE_TO_DMA)) {
            if (print_status != 0) {
                print_s2mm_status(tag);
            }
            return XST_SUCCESS;
        }

        usleep(1);
    }

    xil_printf("ERROR: S2MM timeout during %s.\r\n", tag);
    print_s2mm_status("S2MM TIMEOUT");
    dump_hls_ctrl("HLS AT TIMEOUT");
    return XST_FAILURE;
}

static int start_s2mm_transfer(u8 *buffer, u32 size_bytes)
{
#if DMA_ADDR_WIDTH_IS_32
    if ((((u64)(UINTPTR)buffer) >> 32) != 0U) {
        xil_printf(
            "ERROR: DMA buffer 0x%08X%08X is above 4GB, "
            "but DMA uses 32-bit addresses.\r\n",
            (unsigned int)(((u64)(UINTPTR)buffer) >> 32),
            (unsigned int)((u64)(UINTPTR)buffer)
        );
        return XST_FAILURE;
    }
#endif

    Xil_DCacheFlushRange((UINTPTR)buffer, size_bytes);
    Xil_DCacheInvalidateRange((UINTPTR)buffer, size_bytes);

    return XAxiDma_SimpleTransfer(
        &AxiDma,
        (UINTPTR)buffer,
        size_bytes,
        XAXIDMA_DEVICE_TO_DMA
    );
}

// ============================================================================
// CLK104, RFDC initialization and clock checks
// ============================================================================

static void hold_rfdc_in_reset(void)
{
    /*
     * axi_gpio_rfdc_reset is generated with C_ALL_OUTPUTS=1.
     * Therefore gpio_io_o[0] is a hardware-fixed output and the TRI register
     * is not used for direction control in this design.
     */
    Xil_Out32(
        RFDC_RESET_GPIO_BASEADDR + AXI_GPIO_DATA_OFFSET,
        RFDC_RESET_ASSERT_VALUE
    );

    /*
     * Read the DATA register once to complete the AXI transaction before
     * continuing. The readback is diagnostic only.
     */
    u32 data = Xil_In32(
        RFDC_RESET_GPIO_BASEADDR + AXI_GPIO_DATA_OFFSET
    );

    xil_printf("\r\n--- RFDC hardware reset control ---\r\n");
    xil_printf(
        "RFDC reset GPIO base = 0x%08X\r\n",
        (unsigned int)RFDC_RESET_GPIO_BASEADDR
    );
    xil_printf(
        "RFDC reset asserted  : DATA=0x%08X "
        "(gpio_io_o[0] forced low)\r\n",
        (unsigned int)data
    );
}

static int release_rfdc_from_reset(void)
{
    xil_printf("\r\nReleasing RFDC s_axi_aresetn after CLK104 setup...\r\n");

    /*
     * C_ALL_OUTPUTS=1 fixes gpio_io_o[0] as an output in hardware. Only the
     * DATA register needs to be written; do not use TRI readback as a test.
     */
    Xil_Out32(
        RFDC_RESET_GPIO_BASEADDR + AXI_GPIO_DATA_OFFSET,
        RFDC_RESET_RELEASE_VALUE
    );

    u32 data = Xil_In32(
        RFDC_RESET_GPIO_BASEADDR + AXI_GPIO_DATA_OFFSET
    );

    xil_printf(
        "RFDC reset released  : DATA=0x%08X "
        "(gpio_io_o[0] driven high)\r\n",
        (unsigned int)data
    );

    /*
     * The AXI GPIO output is only one bit wide. The observed DATA readback is
     * retained for diagnostics, but the output direction is fixed by Vivado.
     */
    if ((data & 0x1U) == 0U) {
        xil_printf(
            "WARNING: DATA bit0 readback is zero after release write; "
            "continuing because GPIO is hardware-configured as All Outputs.\r\n"
        );
    }

    /*
     * Allow the RFDC power-on state machine to begin after stable reference
     * clocks are present.
     */
    usleep(RFDC_RELEASE_SETTLE_US);

    xil_printf("RFDC reset release settling time completed.\r\n");
    return XST_SUCCESS;
}


typedef struct {
    u16 Address;
    u8 Expected;
    const char *Name;
} LmkRegisterExpectation;


static int read_lmk_register8(u16 Address, u8 *ValuePtr)
{
    if (ValuePtr == NULL) {
        xil_printf("ERROR: LMK read destination is NULL.\r\n");
        return XST_FAILURE;
    }

    /*
     * XRFClk_ReadReg() expects the 13-bit LMK address in bits [20:8].
     * The returned register byte is placed in bits [7:0].
     */
    u32 transaction = ((u32)Address << 8);

    u32 Status = XRFClk_ReadReg(
        RFCLK_LMK,
        &transaction
    );

    if (Status != XST_SUCCESS) {
        xil_printf(
            "ERROR: LMK read failed at address 0x%03X, status=%u.\r\n",
            (unsigned int)Address,
            (unsigned int)Status
        );
        return XST_FAILURE;
    }

    *ValuePtr = (u8)(transaction & 0xFFU);
    return XST_SUCCESS;
}

static const char *lmk_dclk_format_name(u32 Format)
{
    switch (Format) {
    case 0U: return "Powerdown";
    case 1U: return "LVDS";
    case 2U: return "HSDS 6 mA";
    case 3U: return "HSDS 8 mA";
    case 4U: return "HSDS 10 mA";
    case 5U: return "LVPECL 1600 mV";
    case 6U: return "LVPECL 2000 mV";
    case 7U: return "LCPECL";
    default: return "Unknown";
    }
}

static const char *lmk_dclk_mux_name(u32 Mux)
{
    switch (Mux) {
    case 0U: return "Divider only";
    case 1U: return "Divider + duty-cycle correction / half-step";
    case 2U: return "Bypass";
    case 3U: return "Analog delay + divider";
    default: return "Unknown";
    }
}


static int dump_clk104_sync_and_dclkout12_status(void)
{
    u8 reg139 = 0U;
    u8 reg140 = 0U;
    u8 reg143 = 0U;
    u8 reg144 = 0U;
    u8 reg145 = 0U;

    u8 reg130 = 0U;
    u8 reg133 = 0U;
    u8 reg136 = 0U;
    u8 reg137 = 0U;

    struct RegisterRead {
        u16 Address;
        u8 *ValuePtr;
        const char *Name;
    };

    RegisterRead Registers[] = {
        {0x0139U, &reg139, "SYSREF source/mux"},
        {0x0140U, &reg140, "SYSREF power controls"},
        {0x0143U, &reg143, "SYNC control"},
        {0x0144U, &reg144, "SYNC disable mask"},
        {0x0145U, &reg145, "Fixed register"},

        {0x0130U, &reg130, "DCLKout12 divider / drive"},
        {0x0133U, &reg133, "DCLKout12 mux / analog delay"},
        {0x0136U, &reg136, "CLKout12_13 power control"},
        {0x0137U, &reg137, "DCLKout12 / SDCLKout13 format"}
    };

    xil_printf("\r\n");
    xil_printf("====================================================\r\n");
    xil_printf("CLK104 LMK SYNC + DCLKout12 DIAGNOSTIC\r\n");
    xil_printf("====================================================\r\n");

    for (u32 i = 0U;
         i < (u32)(sizeof(Registers) / sizeof(Registers[0]));
         ++i) {
        if (read_lmk_register8(
                Registers[i].Address,
                Registers[i].ValuePtr
            ) != XST_SUCCESS) {
            return XST_FAILURE;
        }

        xil_printf(
            "LMK[0x%03X] = 0x%02X : %s\r\n",
            (unsigned int)Registers[i].Address,
            (unsigned int)(*Registers[i].ValuePtr),
            Registers[i].Name
        );
    }

    const u32 sysref_mux = (u32)reg139 & 0x3U;
    const u32 sync_mode = (u32)reg143 & 0x3U;
    const u32 sync_pll1_dld = ((u32)reg143 >> 2U) & 0x1U;
    const u32 sync_pll2_dld = ((u32)reg143 >> 3U) & 0x1U;
    const u32 sync_enable = ((u32)reg143 >> 4U) & 0x1U;
    const u32 sync_polarity = ((u32)reg143 >> 5U) & 0x1U;
    const u32 sync_one_shot = ((u32)reg143 >> 6U) & 0x1U;
    const u32 sysref_delay_clear = ((u32)reg143 >> 7U) & 0x1U;

    const u32 sync_disable_dclk6 = ((u32)reg144 >> 3U) & 0x1U;
    const u32 sync_disable_dclk12 = ((u32)reg144 >> 6U) & 0x1U;

    u32 dclk12_divider = (u32)reg130 & 0x1FU;
    if (dclk12_divider == 0U) {
        dclk12_divider = 32U;
    }

    const u32 dclk12_mux = (u32)reg133 & 0x3U;
    const u32 clkout12_13_pd = ((u32)reg136 >> 3U) & 0x1U;
    const u32 dclk12_format = (u32)reg137 & 0x7U;
    const u32 dclk12_polarity = ((u32)reg137 >> 3U) & 0x1U;

    const u32 dclk12_register_enabled =
        ((clkout12_13_pd == 0U) &&
         (dclk12_format != 0U)) ? 1U : 0U;

    xil_printf("\r\n--- Decoded global SYNC state ---\r\n");
    xil_printf(
        "SYSREF mux                  = %u\r\n",
        (unsigned int)sysref_mux
    );
    xil_printf(
        "SYNC mode / enable          = %u / %u\r\n",
        (unsigned int)sync_mode,
        (unsigned int)sync_enable
    );
    xil_printf(
        "SYNC polarity / one-shot    = %u / %u\r\n",
        (unsigned int)sync_polarity,
        (unsigned int)sync_one_shot
    );
    xil_printf(
        "SYNC from PLL1/PLL2 DLD     = %u / %u\r\n",
        (unsigned int)sync_pll1_dld,
        (unsigned int)sync_pll2_dld
    );
    xil_printf(
        "SYSREF delay clear          = %u\r\n",
        (unsigned int)sysref_delay_clear
    );
    xil_printf(
        "SYNC_DIS6 / SYNC_DIS12      = %u / %u\r\n",
        (unsigned int)sync_disable_dclk6,
        (unsigned int)sync_disable_dclk12
    );
    xil_printf(
        "Fixed register 0x145        = 0x%02X (%s)\r\n",
        (unsigned int)reg145,
        (reg145 == 0x7FU) ? "expected" : "unexpected"
    );

    xil_printf("\r\n--- Decoded ADC DCLKout12 state ---\r\n");
    xil_printf(
        "DCLKout12 divider           = %u\r\n",
        (unsigned int)dclk12_divider
    );
    xil_printf(
        "DCLKout12 mux               = %u (%s)\r\n",
        (unsigned int)dclk12_mux,
        lmk_dclk_mux_name(dclk12_mux)
    );
    xil_printf(
        "CLKout12_13 group PD        = %u (%s)\r\n",
        (unsigned int)clkout12_13_pd,
        (clkout12_13_pd == 0U) ? "group enabled" : "group POWERED DOWN"
    );
    xil_printf(
        "DCLKout12 format            = %u (%s)\r\n",
        (unsigned int)dclk12_format,
        lmk_dclk_format_name(dclk12_format)
    );
    xil_printf(
        "DCLKout12 polarity          = %u (%s)\r\n",
        (unsigned int)dclk12_polarity,
        (dclk12_polarity == 0U) ? "normal" : "inverted"
    );
    xil_printf(
        "DCLKout12 REGISTER ENABLED  = %s\r\n",
        (dclk12_register_enabled != 0U) ? "YES" : "NO"
    );

    if ((sync_enable != 0U) &&
        (sync_disable_dclk6 == 0U)) {
        xil_printf(
            "WARNING: DCLKout6 participates in global SYNC. If SYNC is held "
            "active, its divider can remain reset/muted.\r\n"
        );
    } else {
        xil_printf(
            "RESULT: DCLKout6 is excluded from an ongoing global SYNC reset "
            "or global SYNC is disabled.\r\n"
        );
    }

    if (dclk12_register_enabled == 0U) {
        xil_printf(
            "WARNING: ADC DCLKout12 is disabled by its register settings.\r\n"
        );
    }

    xil_printf("====================================================\r\n");
    return XST_SUCCESS;
}

static int dump_clk104_dclkout6_full_status(void)
{
    /*
     * LMK04828 DCLKout6 / SDCLKout7 control group:
     *
     *   0x118 : output/input drive level and DCLKout6 divider
     *   0x119 : DCLKout6 digital delay counters
     *   0x11A : raw byte retained for complete contiguous readback
     *   0x11B : DCLKout6 analog-delay selection and DCLK mux
     *   0x11C : DCLKout6 half-step and SDCLKout7 mux/delay
     *   0x11D : SDCLKout7 analog delay
     *   0x11E : DCLKout6_7 power controls
     *   0x11F : DCLKout6 / SDCLKout7 output formats and polarity
     *
     * Also read:
     *   0x002 : LMK global POWERDOWN
     *   0x182 : PLL1 lock-detect readback
     *   0x183 : PLL2 lock-detect readback
     *
     * This function is read-only. It does not rewrite any LMK register.
     */
    u8 reg002 = 0U;
    u8 reg118 = 0U;
    u8 reg119 = 0U;
    u8 reg11a = 0U;
    u8 reg11b = 0U;
    u8 reg11c = 0U;
    u8 reg11d = 0U;
    u8 reg11e = 0U;
    u8 reg11f = 0U;
    u8 reg182 = 0U;
    u8 reg183 = 0U;

    struct RegisterRead {
        u16 Address;
        u8 *ValuePtr;
        const char *Name;
    };

    RegisterRead Registers[] = {
        {0x0002U, &reg002, "GLOBAL POWERDOWN"},
        {0x0118U, &reg118, "DCLKout6 divider / drive"},
        {0x0119U, &reg119, "DCLKout6 digital delay"},
        {0x011AU, &reg11a, "Raw byte 0x11A"},
        {0x011BU, &reg11b, "DCLKout6 mux / analog delay"},
        {0x011CU, &reg11c, "DCLKout6 half-step / SDCLKout7 mux"},
        {0x011DU, &reg11d, "SDCLKout7 analog delay"},
        {0x011EU, &reg11e, "CLKout6_7 power control"},
        {0x011FU, &reg11f, "DCLKout6 / SDCLKout7 format"},
        {0x0182U, &reg182, "PLL1 lock readback"},
        {0x0183U, &reg183, "PLL2 lock readback"}
    };

    xil_printf("\r\n");
    xil_printf("====================================================\r\n");
    xil_printf("CLK104 LMK DCLKout6 FULL CONTROL DIAGNOSTIC\r\n");
    xil_printf("====================================================\r\n");

    for (u32 i = 0U;
         i < (u32)(sizeof(Registers) / sizeof(Registers[0]));
         ++i) {
        if (read_lmk_register8(
                Registers[i].Address,
                Registers[i].ValuePtr
            ) != XST_SUCCESS) {
            return XST_FAILURE;
        }

        xil_printf(
            "LMK[0x%03X] = 0x%02X : %s\r\n",
            (unsigned int)Registers[i].Address,
            (unsigned int)(*Registers[i].ValuePtr),
            Registers[i].Name
        );
    }

    const u32 global_powerdown = (u32)reg002 & 0x1U;

    const u32 output_drive_high = ((u32)reg118 >> 6U) & 0x1U;
    const u32 input_drive_high  = ((u32)reg118 >> 5U) & 0x1U;
    u32 divider = (u32)reg118 & 0x1FU;
    if (divider == 0U) {
        divider = 32U;
    }

    const u32 dclk_mux = (u32)reg11b & 0x3U;

    const u32 dclk_ddly_pd = ((u32)reg11e >> 7U) & 0x1U;
    const u32 dclk_hsg_pd  = ((u32)reg11e >> 6U) & 0x1U;
    const u32 dclk_adlyg_pd = ((u32)reg11e >> 5U) & 0x1U;
    const u32 dclk_adly_pd = ((u32)reg11e >> 4U) & 0x1U;
    const u32 clkout6_7_pd = ((u32)reg11e >> 3U) & 0x1U;
    const u32 sdclk7_disable_mode = ((u32)reg11e >> 1U) & 0x3U;
    const u32 sdclk7_pd = (u32)reg11e & 0x1U;

    const u32 sdclk7_polarity = ((u32)reg11f >> 7U) & 0x1U;
    const u32 sdclk7_format = ((u32)reg11f >> 4U) & 0x7U;
    const u32 dclk6_polarity = ((u32)reg11f >> 3U) & 0x1U;
    const u32 dclk6_format = (u32)reg11f & 0x7U;

    const u32 pll1_lock = ((u32)reg182 >> 1U) & 0x1U;
    const u32 pll1_lock_lost = ((u32)reg182 >> 2U) & 0x1U;
    const u32 pll2_lock = ((u32)reg183 >> 1U) & 0x1U;
    const u32 pll2_lock_lost = ((u32)reg183 >> 2U) & 0x1U;

    const u32 dclk6_register_enabled =
        ((global_powerdown == 0U) &&
         (clkout6_7_pd == 0U) &&
         (dclk6_format != 0U)) ? 1U : 0U;

    xil_printf("\r\n--- Decoded DCLKout6 state ---\r\n");
    xil_printf(
        "LMK global POWERDOWN       = %u (%s)\r\n",
        (unsigned int)global_powerdown,
        (global_powerdown == 0U) ? "normal operation" : "POWERED DOWN"
    );

    xil_printf(
        "DCLKout6 divider           = %u\r\n",
        (unsigned int)divider
    );

    xil_printf(
        "DCLKout6 mux               = %u (%s)\r\n",
        (unsigned int)dclk_mux,
        lmk_dclk_mux_name(dclk_mux)
    );

    xil_printf(
        "CLKout6_7 group PD         = %u (%s)\r\n",
        (unsigned int)clkout6_7_pd,
        (clkout6_7_pd == 0U) ? "group enabled" : "group POWERED DOWN"
    );

    xil_printf(
        "DCLKout6 format            = %u (%s)\r\n",
        (unsigned int)dclk6_format,
        lmk_dclk_format_name(dclk6_format)
    );

    xil_printf(
        "DCLKout6 polarity          = %u (%s)\r\n",
        (unsigned int)dclk6_polarity,
        (dclk6_polarity == 0U) ? "normal" : "inverted"
    );

    xil_printf(
        "Output/Input drive boost   = %u / %u\r\n",
        (unsigned int)output_drive_high,
        (unsigned int)input_drive_high
    );

    xil_printf(
        "Delay block PD bits        = DDLY:%u HSg:%u ADLYg:%u ADLY:%u\r\n",
        (unsigned int)dclk_ddly_pd,
        (unsigned int)dclk_hsg_pd,
        (unsigned int)dclk_adlyg_pd,
        (unsigned int)dclk_adly_pd
    );

    xil_printf(
        "SDCLKout7 format/polarity  = %u (%s) / %u\r\n",
        (unsigned int)sdclk7_format,
        lmk_dclk_format_name(sdclk7_format),
        (unsigned int)sdclk7_polarity
    );

    xil_printf(
        "SDCLKout7 PD/disable mode  = %u / %u\r\n",
        (unsigned int)sdclk7_pd,
        (unsigned int)sdclk7_disable_mode
    );

    xil_printf(
        "PLL1 lock/lost readback    = %u / %u\r\n",
        (unsigned int)pll1_lock,
        (unsigned int)pll1_lock_lost
    );

    xil_printf(
        "PLL2 lock/lost readback    = %u / %u\r\n",
        (unsigned int)pll2_lock,
        (unsigned int)pll2_lock_lost
    );

    xil_printf(
        "DCLKout6 REGISTER ENABLED  = %s\r\n",
        (dclk6_register_enabled != 0U) ? "YES" : "NO"
    );

    if (dclk6_register_enabled == 0U) {
        xil_printf(
            "RESULT: LMK register settings disable DCLKout6. "
            "Check 0x002, 0x11E and 0x11F.\r\n"
        );
        xil_printf("====================================================\r\n");
        return XST_FAILURE;
    }

    if ((divider != 12U) ||
        (dclk_mux != 1U) ||
        (dclk6_format != 3U)) {
        xil_printf(
            "WARNING: DCLKout6 is enabled, but divider/mux/format does not "
            "match config ID 1 expectation (12 / 1 / HSDS 8 mA).\r\n"
        );
    } else {
        xil_printf(
            "RESULT: DCLKout6 is register-enabled and matches config ID 1: "
            "divide-by-12, DCC/half-step path, HSDS 8 mA.\r\n"
        );
    }

    xil_printf(
        "IMPORTANT: Register readback proves configuration and enable state, "
        "not that a physical 250 MHz waveform reaches the RFSoC pin.\r\n"
    );

    xil_printf("====================================================\r\n");
    return XST_SUCCESS;
}

static int verify_clk104_lmk_reference_outputs(void)
{
    /*
     * CLK104 LMK04828 routing:
     *   DCLKout6  -> DAC_REFCLK_P/N
     *   DCLKout12 -> ADC_REFCLK_P/N
     *
     * Expected values below are from the Vitis 2024.2
     * 250M_PL_125M_SYSREF_10M configuration (LMK config ID 1).
     */
    static const LmkRegisterExpectation ExpectedRegisters[] = {
        {0x0118U, 0x6CU, "DAC DCLKout6 divider"},
        {0x0119U, 0x55U, "DAC DCLKout6 digital delay"},
        {0x011AU, 0x55U, "DAC DCLKout6 analog delay"},
        {0x011BU, 0x01U, "DAC DCLKout6 mux"},
        {0x011CU, 0x22U, "DAC SDCLKout7 mux"},
        {0x011DU, 0x00U, "DAC SDCLKout7 delay"},
        {0x011EU, 0x72U, "DAC output power control"},
        {0x011FU, 0x03U, "DAC output format"},

        {0x0130U, 0x6CU, "ADC DCLKout12 divider"},
        {0x0131U, 0x55U, "ADC DCLKout12 digital delay"},
        {0x0132U, 0x55U, "ADC DCLKout12 analog delay"},
        {0x0133U, 0x01U, "ADC DCLKout12 mux"},
        {0x0134U, 0x22U, "ADC SDCLKout13 mux"},
        {0x0135U, 0x00U, "ADC SDCLKout13 delay"},
        {0x0136U, 0x73U, "ADC output power control"},
        {0x0137U, 0x03U, "ADC output format"}
    };

    u32 mismatch_count = 0U;

    xil_printf("\r\n--- CLK104 LMK output-register readback ---\r\n");

    for (u32 i = 0U;
         i < (u32)(sizeof(ExpectedRegisters) /
                   sizeof(ExpectedRegisters[0]));
         ++i) {
        /*
         * XRFClk_ReadReg() expects the LMK 13-bit register address in
         * bits [20:8]. The function replaces the low byte with read data.
         */
        u32 transaction =
            ((u32)ExpectedRegisters[i].Address << 8);

        u32 Status = XRFClk_ReadReg(
            RFCLK_LMK,
            &transaction
        );

        if (Status != XST_SUCCESS) {
            xil_printf(
                "ERROR: LMK read failed at address 0x%03X, status=%u.\r\n",
                (unsigned int)ExpectedRegisters[i].Address,
                (unsigned int)Status
            );
            return XST_FAILURE;
        }

        u8 actual = (u8)(transaction & 0xFFU);

        xil_printf(
            "LMK[0x%03X] = 0x%02X, expected 0x%02X : %s%s\r\n",
            (unsigned int)ExpectedRegisters[i].Address,
            (unsigned int)actual,
            (unsigned int)ExpectedRegisters[i].Expected,
            ExpectedRegisters[i].Name,
            (actual == ExpectedRegisters[i].Expected)
                ? " [OK]"
                : " [MISMATCH]"
        );

        if (actual != ExpectedRegisters[i].Expected) {
            ++mismatch_count;
        }
    }

    if (mismatch_count != 0U) {
        xil_printf(
            "ERROR: CLK104 LMK reference-output configuration has "
            "%u mismatched register(s).\r\n",
            (unsigned int)mismatch_count
        );
        return XST_FAILURE;
    }

    xil_printf(
        "CLK104 LMK DAC_REFCLK and ADC_REFCLK register readback matches "
        "config ID 1.\r\n"
    );

    return XST_SUCCESS;
}

static int init_clk104(void)
{
    u32 Status;

    xil_printf("\r\n--- CLK104 initialization ---\r\n");
    xil_printf("RFCLK GPIO base      = 0x%08X\r\n",
               (unsigned int)RFCLK_GPIO_BASEADDR);
    xil_printf("LMK config ID        = %u\r\n",
               (unsigned int)CLK104_LMK_CONFIG_ID);
    xil_printf("Expected references  = ADC 250 MHz, DAC 250 MHz\r\n");
    xil_printf("Expected PL/SYSREF   = 125 MHz / 10 MHz\r\n");

    Status = XRFClk_Init(RFCLK_GPIO_BASEADDR);
    if (Status != XST_SUCCESS) {
        xil_printf("ERROR: XRFClk_Init failed, status=%u.\r\n",
                   (unsigned int)Status);
        return XST_FAILURE;
    }

    Status = XRFClk_ResetChip(RFCLK_LMK);
    if (Status != XST_SUCCESS) {
        xil_printf("ERROR: CLK104 LMK reset failed, status=%u.\r\n",
                   (unsigned int)Status);
        return XST_FAILURE;
    }

    Status = XRFClk_SetConfigOnOneChipFromConfigId(
        RFCLK_LMK,
        CLK104_LMK_CONFIG_ID
    );

    if (Status != XST_SUCCESS) {
        xil_printf("ERROR: CLK104 LMK configuration failed, status=%u.\r\n",
                   (unsigned int)Status);
        return XST_FAILURE;
    }

    // Give the LMK outputs time to stabilize before register verification.
    usleep(CLK104_SETTLE_US);

    Status = verify_clk104_lmk_reference_outputs();
    if (Status != XST_SUCCESS) {
        xil_printf(
            "ERROR: CLK104 LMK output-register verification failed.\r\n"
        );
        return XST_FAILURE;
    }

    Status = dump_clk104_dclkout6_full_status();
    if (Status != XST_SUCCESS) {
        xil_printf(
            "ERROR: CLK104 DCLKout6 full-control diagnostic failed.\r\n"
        );
        return XST_FAILURE;
    }

    Status = dump_clk104_sync_and_dclkout12_status();
    if (Status != XST_SUCCESS) {
        xil_printf(
            "ERROR: CLK104 SYNC/DCLKout12 diagnostic failed.\r\n"
        );
        return XST_FAILURE;
    }

    xil_printf("CLK104 LMK configuration completed.\r\n");
    return XST_SUCCESS;
}

static int wait_for_rfdc_clock_ready(void)
{
    struct TileClockInfo {
        u32 Type;
        u32 TileId;
        const char *Name;
    } tiles[] = {
        {XRFDC_ADC_TILE, RFDC_ADC_TILE_ID, "ADC"},
        {XRFDC_DAC_TILE, RFDC_DAC_TILE_ID, "DAC"}
    };

    for (unsigned int i = 0U; i < (sizeof(tiles) / sizeof(tiles[0])); ++i) {
        u32 clock_source = 0U;
        u32 lock_status = 0U;

        u32 Status = XRFdc_GetClockSource(
            &RFdc,
            tiles[i].Type,
            tiles[i].TileId,
            &clock_source
        );

        if (Status != XRFDC_SUCCESS) {
            xil_printf(
                "ERROR: XRFdc_GetClockSource failed for %s Tile%u, status=%u.\r\n",
                tiles[i].Name,
                (unsigned int)tiles[i].TileId,
                (unsigned int)Status
            );
            return XST_FAILURE;
        }

        xil_printf(
            "%s Tile%u clock source = %u (%s)\r\n",
            tiles[i].Name,
            (unsigned int)tiles[i].TileId,
            (unsigned int)clock_source,
            (clock_source == XRFDC_EXTERNAL_CLK)
                ? "external/direct clock"
                : "internal PLL"
        );

        if (clock_source == XRFDC_EXTERNAL_CLK) {
            xil_printf(
                "%s Tile%u uses an external/direct clock; "
                "PLLState=0 can be normal and PLL lock polling is skipped.\r\n",
                tiles[i].Name,
                (unsigned int)tiles[i].TileId
            );
            continue;
        }

        for (int attempt = 0; attempt < RFDC_PLL_WAIT_ATTEMPTS; ++attempt) {
            Status = XRFdc_GetPLLLockStatus(
                &RFdc,
                tiles[i].Type,
                tiles[i].TileId,
                &lock_status
            );

            if (Status != XRFDC_SUCCESS) {
                xil_printf(
                    "ERROR: XRFdc_GetPLLLockStatus failed for %s Tile%u, status=%u.\r\n",
                    tiles[i].Name,
                    (unsigned int)tiles[i].TileId,
                    (unsigned int)Status
                );
                return XST_FAILURE;
            }

            if (lock_status == RFDC_API_PLL_LOCKED_VALUE) {
                xil_printf(
                    "%s Tile%u internal PLL is LOCKED.\r\n",
                    tiles[i].Name,
                    (unsigned int)tiles[i].TileId
                );
                break;
            }

            if (attempt == (RFDC_PLL_WAIT_ATTEMPTS - 1)) {
                xil_printf(
                    "ERROR: %s Tile%u internal PLL lock timeout "
                    "(last API lock value=%u, expected=%u).\r\n",
                    tiles[i].Name,
                    (unsigned int)tiles[i].TileId,
                    (unsigned int)lock_status,
                    (unsigned int)RFDC_API_PLL_LOCKED_VALUE
                );
                return XST_FAILURE;
            }

            usleep(RFDC_PLL_WAIT_US);
        }
    }

    return XST_SUCCESS;
}


static const char *rfdc_type_name(u32 Type)
{
    return (Type == XRFDC_DAC_TILE) ? "DAC" : "ADC";
}


/*
 * Read the Gen-3 local reference-clock detector for every physical DAC tile.
 *
 * This is a read-only diagnostic. It does not change RFDC_DAC_TILE_ID and does
 * not start/reset any tile. The physical-to-logical mapping on ZU48DR is:
 *   DAC Tile0 -> Physical Tile228
 *   DAC Tile1 -> Physical Tile229
 *   DAC Tile2 -> Physical Tile230
 *   DAC Tile3 -> Physical Tile231
 */
static void dump_all_dac_tile_clock_status(void)
{
    XRFdc *InstancePtr = &RFdc;

    static const u32 PhysicalTile[4] = {
        228U,
        229U,
        230U,
        231U
    };

    u32 valid_clock_mask = 0U;

    xil_printf("\r\n");
    xil_printf("====================================================\r\n");
    xil_printf("ALL DAC TILE LOCAL-CLOCK STATUS (READ ONLY)\r\n");
    xil_printf("====================================================\r\n");

    for (u32 TileId = 0U; TileId < 4U; ++TileId) {
        const u32 control_base =
            XRFDC_CTRL_STS_BASE(XRFDC_DAC_TILE, TileId);

        const u16 current_state_reg = XRFdc_ReadReg16(
            InstancePtr,
            control_base,
            XRFDC_CURRENT_STATE_OFFSET
        );

        const u16 clock_detect_status_reg = XRFdc_ReadReg16(
            InstancePtr,
            control_base,
            RFDC_GEN3_CLOCK_DETECT_STATUS_OFFSET
        );

        const u16 common_status_reg = XRFdc_ReadReg16(
            InstancePtr,
            control_base,
            XRFDC_STATUS_OFFSET
        );

        const u32 current_state =
            (u32)current_state_reg & (u32)XRFDC_CURRENT_STATE_MASK;

        const u32 valid_clock =
            ((u32)clock_detect_status_reg &
             RFDC_GEN3_CLOCK_DETECT_VALID_MASK) ? 1U : 0U;

        const u32 power_up_state =
            ((u32)common_status_reg & (u32)XRFDC_PWR_UP_STAT_MASK) >>
            XRFDC_PWR_UP_STAT_SHIFT;

        const u32 pll_state =
            ((u32)common_status_reg & (u32)XRFDC_PLL_LOCKED_MASK) >>
            XRFDC_PLL_LOCKED_SHIFT;

        const u32 block0_enabled = (u32)XRFdc_IsDACBlockEnabled(
            InstancePtr,
            TileId,
            0U
        );

        if (valid_clock != 0U) {
            valid_clock_mask |= (1U << TileId);
        }

        xil_printf(
            "DAC Tile%u / Physical Tile%u\r\n",
            (unsigned int)TileId,
            (unsigned int)PhysicalTile[TileId]
        );

        xil_printf(
            "  Config Block0 enabled = %u\r\n",
            (unsigned int)block0_enabled
        );

        xil_printf(
            "  CTRL/STATUS offset    = 0x%08X\r\n",
            (unsigned int)control_base
        );

        xil_printf(
            "  CURRENT_STATE         = 0x%04X | State=%u\r\n",
            (unsigned int)current_state_reg,
            (unsigned int)current_state
        );

        xil_printf(
            "  CLOCK_DETECT_STATUS   = 0x%04X | ValidClock=%u\r\n",
            (unsigned int)clock_detect_status_reg,
            (unsigned int)valid_clock
        );

        xil_printf(
            "  COMMON_STATUS         = 0x%04X | PowerUp=%u PLL=%u\r\n",
            (unsigned int)common_status_reg,
            (unsigned int)power_up_state,
            (unsigned int)pll_state
        );

        xil_printf("----------------------------------------------------\r\n");
    }

    xil_printf(
        "Valid-clock tile mask = 0x%X "
        "(bit0=228, bit1=229, bit2=230, bit3=231)\r\n",
        (unsigned int)valid_clock_mask
    );

    if (valid_clock_mask == 0U) {
        xil_printf(
            "RESULT: No DAC tile reports a valid local reference clock.\r\n"
        );
        xil_printf(
            "ERROR: The active DAC Tile%u / Physical Tile%u has no valid "
            "reference clock.\r\n",
            (unsigned int)RFDC_DAC_TILE_ID,
            (unsigned int)PhysicalTile[RFDC_DAC_TILE_ID]
        );
    } else if ((valid_clock_mask &
                (1U << RFDC_DAC_TILE_ID)) != 0U) {
        xil_printf(
            "RESULT: Active DAC Tile%u / Physical Tile%u reports a valid "
            "local reference clock.\r\n",
            (unsigned int)RFDC_DAC_TILE_ID,
            (unsigned int)PhysicalTile[RFDC_DAC_TILE_ID]
        );
    } else {
        xil_printf(
            "ERROR: Active DAC Tile%u / Physical Tile%u has no valid clock, "
            "but another DAC tile does. Check RFDC clock routing.\r\n",
            (unsigned int)RFDC_DAC_TILE_ID,
            (unsigned int)PhysicalTile[RFDC_DAC_TILE_ID]
        );
    }

    xil_printf("====================================================\r\n");
}

/*
 * Read the RFDC tile control/status registers that are directly involved in
 * XRFdc_CustomStartUp() and XRFdc_StartUp().  XRFDC_CTRL_STS_BASE() returns
 * an offset inside the RFDC IP; XRFdc_ReadReg16() accesses that offset through
 * the driver's libmetal I/O region.
 */

static void dump_active_adc_tile_clock_status(void)
{
    XRFdc *InstancePtr = &RFdc;
    const u32 control_base =
        XRFDC_CTRL_STS_BASE(XRFDC_ADC_TILE, RFDC_ADC_TILE_ID);

    const u16 current_state_reg = XRFdc_ReadReg16(
        InstancePtr,
        control_base,
        XRFDC_CURRENT_STATE_OFFSET
    );

    const u16 clock_detect_status_reg = XRFdc_ReadReg16(
        InstancePtr,
        control_base,
        RFDC_GEN3_CLOCK_DETECT_STATUS_OFFSET
    );

    const u16 common_status_reg = XRFdc_ReadReg16(
        InstancePtr,
        control_base,
        XRFDC_STATUS_OFFSET
    );

    const u32 current_state =
        (u32)current_state_reg & (u32)XRFDC_CURRENT_STATE_MASK;

    const u32 valid_clock =
        ((u32)clock_detect_status_reg &
         RFDC_GEN3_CLOCK_DETECT_VALID_MASK) ? 1U : 0U;

    const u32 clock_present = (u32)common_status_reg & 0x1U;

    const u32 power_up_state =
        ((u32)common_status_reg & (u32)XRFDC_PWR_UP_STAT_MASK) >>
        XRFDC_PWR_UP_STAT_SHIFT;

    const u32 pll_state =
        ((u32)common_status_reg & (u32)XRFDC_PLL_LOCKED_MASK) >>
        XRFDC_PLL_LOCKED_SHIFT;

    xil_printf("\r\n");
    xil_printf("====================================================\r\n");
    xil_printf("ACTIVE ADC TILE LOCAL-CLOCK STATUS (READ ONLY)\r\n");
    xil_printf("====================================================\r\n");
    xil_printf(
        "ADC Tile%u / Physical Tile%u\r\n",
        (unsigned int)RFDC_ADC_TILE_ID,
        (unsigned int)RFDC_ADC_PHYSICAL_TILE
    );
    xil_printf(
        "  CTRL/STATUS offset    = 0x%08X\r\n",
        (unsigned int)control_base
    );
    xil_printf(
        "  CURRENT_STATE         = 0x%04X | State=%u\r\n",
        (unsigned int)current_state_reg,
        (unsigned int)current_state
    );
    xil_printf(
        "  CLOCK_DETECT_STATUS   = 0x%04X | ValidClock=%u\r\n",
        (unsigned int)clock_detect_status_reg,
        (unsigned int)valid_clock
    );
    xil_printf(
        "  COMMON_STATUS         = 0x%04X | ClockPresent=%u "
        "PowerUp=%u PLL=%u\r\n",
        (unsigned int)common_status_reg,
        (unsigned int)clock_present,
        (unsigned int)power_up_state,
        (unsigned int)pll_state
    );

    if ((valid_clock != 0U) || (clock_present != 0U)) {
        xil_printf(
            "RESULT: ADC226 sees its LMK DCLKout12 reference clock.\r\n"
        );
        xil_printf(
            "If DAC228 still reports no clock, the fault is isolated to the "
            "DAC DCLKout6 / DAC_REFCLK path.\r\n"
        );
    } else {
        xil_printf(
            "RESULT: ADC226 also reports no local reference clock.\r\n"
        );
        xil_printf(
            "Check LMK global SYNC/mute state and the common CLK104-to-RFSoC "
            "reference-clock path before blaming only DCLKout6.\r\n"
        );
    }

    xil_printf("====================================================\r\n");
}

static void dump_rfdc_tile_startup_registers(
    const char *tag,
    u32 Type,
    u32 TileId
)
{
    /*
     * XRFdc_ReadReg16 is a macro that expands InstancePtr->io without
     * parenthesizing InstancePtr. Passing &RFdc directly therefore expands
     * incorrectly in C++. Use a real pointer variable instead.
     */
    XRFdc *InstancePtr = &RFdc;

    const u32 control_base = XRFDC_CTRL_STS_BASE(Type, TileId);
    const u32 absolute_base = (u32)InstancePtr->BaseAddr + control_base;

    const u16 reset_reg = XRFdc_ReadReg16(
        InstancePtr,
        control_base,
        XRFDC_RESET_OFFSET
    );

    const u16 restart_reg = XRFdc_ReadReg16(
        InstancePtr,
        control_base,
        XRFDC_RESTART_OFFSET
    );

    const u16 restart_state_reg = XRFdc_ReadReg16(
        InstancePtr,
        control_base,
        XRFDC_RESTART_STATE_OFFSET
    );

    const u16 current_state_reg = XRFdc_ReadReg16(
        InstancePtr,
        control_base,
        XRFDC_CURRENT_STATE_OFFSET
    );

    /*
     * 0x080 is used by the 2024.2 driver for clock-distribution detector
     * configuration. Do not interpret it as a simple clock-present flag.
     */
    const u16 clock_detect_cfg_reg = XRFdc_ReadReg16(
        InstancePtr,
        control_base,
        XRFDC_CLOCK_DETECT_OFFSET
    );

    /*
     * Gen-3 actual local clock detector status: offset 0x084, bit 0.
     * 1 = valid local tile input clock detected, 0 = not detected.
     */
    const u16 clock_detect_status_reg = XRFdc_ReadReg16(
        InstancePtr,
        control_base,
        RFDC_GEN3_CLOCK_DETECT_STATUS_OFFSET
    );

    const u32 clock_detect_valid =
        ((u32)clock_detect_status_reg &
         RFDC_GEN3_CLOCK_DETECT_VALID_MASK);

    const u16 common_status_reg = XRFdc_ReadReg16(
        InstancePtr,
        control_base,
        XRFDC_STATUS_OFFSET
    );

    const u32 requested_start =
        ((u32)restart_state_reg >> XRFDC_RSR_START_SHIFT) & 0xFFU;
    const u32 requested_end = (u32)restart_state_reg & 0xFFU;
    const u32 current_state =
        (u32)current_state_reg & (u32)XRFDC_CURRENT_STATE_MASK;
    const u32 power_up_state =
        ((u32)common_status_reg & (u32)XRFDC_PWR_UP_STAT_MASK) >>
        XRFDC_PWR_UP_STAT_SHIFT;
    const u32 pll_state =
        ((u32)common_status_reg & (u32)XRFDC_PLL_LOCKED_MASK) >>
        XRFDC_PLL_LOCKED_SHIFT;

    xil_printf("\r\n");
    xil_printf("====================================================\r\n");
    xil_printf("RFDC STARTUP REGISTER DUMP: %s\r\n", tag);
    xil_printf(
        "Type / Tile          = %s / %u\r\n",
        rfdc_type_name(Type),
        (unsigned int)TileId
    );
    xil_printf(
        "CTRL/STATUS offset   = 0x%08X\r\n",
        (unsigned int)control_base
    );
    xil_printf(
        "CTRL/STATUS absolute = 0x%08X\r\n",
        (unsigned int)absolute_base
    );
    xil_printf(
        "RESET          [0x%03X] = 0x%04X\r\n",
        (unsigned int)XRFDC_RESET_OFFSET,
        (unsigned int)reset_reg
    );
    xil_printf(
        "RESTART        [0x%03X] = 0x%04X\r\n",
        (unsigned int)XRFDC_RESTART_OFFSET,
        (unsigned int)restart_reg
    );
    xil_printf(
        "RESTART_STATE  [0x%03X] = 0x%04X | Start=%u End=%u\r\n",
        (unsigned int)XRFDC_RESTART_STATE_OFFSET,
        (unsigned int)restart_state_reg,
        (unsigned int)requested_start,
        (unsigned int)requested_end
    );
    xil_printf(
        "CURRENT_STATE  [0x%03X] = 0x%04X | State=%u\r\n",
        (unsigned int)XRFDC_CURRENT_STATE_OFFSET,
        (unsigned int)current_state_reg,
        (unsigned int)current_state
    );
    xil_printf(
        "CLOCK_DETECT_CFG    [0x%03X] = 0x%04X "
        "(configuration, not clock-present status)\r\n",
        (unsigned int)XRFDC_CLOCK_DETECT_OFFSET,
        (unsigned int)clock_detect_cfg_reg
    );
    xil_printf(
        "CLOCK_DETECT_STATUS [0x%03X] = 0x%04X | ValidClock=%u\r\n",
        (unsigned int)RFDC_GEN3_CLOCK_DETECT_STATUS_OFFSET,
        (unsigned int)clock_detect_status_reg,
        (unsigned int)clock_detect_valid
    );
    xil_printf(
        "COMMON_STATUS  [0x%03X] = 0x%04X | PowerUp=%u PLL=%u\r\n",
        (unsigned int)XRFDC_STATUS_OFFSET,
        (unsigned int)common_status_reg,
        (unsigned int)power_up_state,
        (unsigned int)pll_state
    );

    if ((restart_reg != 0U) &&
        (current_state == XRFDC_STATE_CLK_DET)) {
        xil_printf(
            "DIAGNOSIS: restart is still asserted and IPSM is still at "
            "CLK_DET (state 6).\r\n"
        );
        xil_printf(
            "This matches an XRFdc_CustomStartUp restart-clear timeout.\r\n"
        );
        if (clock_detect_valid == 0U) {
            xil_printf(
                "ROOT-CAUSE CLUE: Gen-3 local tile clock detector reports "
                "NO VALID CLOCK.\r\n"
            );
        } else {
            xil_printf(
                "ROOT-CAUSE CLUE: Gen-3 local tile clock detector reports "
                "a VALID CLOCK; check the next IPSM dependency.\r\n"
            );
        }
    } else if ((restart_reg == 0U) &&
               (current_state == XRFDC_STATE_FULL)) {
        xil_printf(
            "DIAGNOSIS: restart cleared and IPSM reached FULL state 15.\r\n"
        );
    } else {
        xil_printf(
            "DIAGNOSIS: use RESTART, CURRENT_STATE, CLOCK_DETECT_STATUS and "
            "COMMON_STATUS together for the next check.\r\n"
        );
    }

    xil_printf("====================================================\r\n");
}

static int get_and_print_rfdc_tile_status(
    const char *tag,
    u32 Type,
    u32 TileId,
    XRFdc_TileStatus *TileStatusPtr
)
{
    if (TileStatusPtr == NULL) {
        xil_printf("ERROR: TileStatusPtr is NULL.\r\n");
        return XST_FAILURE;
    }

    XRFdc_IPStatus IpStatus = {};
    u32 Status = XRFdc_GetIPStatus(&RFdc, &IpStatus);

    if (Status != XRFDC_SUCCESS) {
        xil_printf(
            "ERROR: XRFdc_GetIPStatus failed during %s, status=%u.\r\n",
            tag,
            (unsigned int)Status
        );
        return XST_FAILURE;
    }

    if (Type == XRFDC_DAC_TILE) {
        *TileStatusPtr = IpStatus.DACTileStatus[TileId];
    } else {
        *TileStatusPtr = IpStatus.ADCTileStatus[TileId];
    }

    xil_printf("\r\n");
    xil_printf("----------------------------------------------------\r\n");
    xil_printf("RFDC OFFICIAL IP STATUS: %s\r\n", tag);
    xil_printf(
        "Type / Tile          = %s / %u\r\n",
        rfdc_type_name(Type),
        (unsigned int)TileId
    );
    xil_printf(
        "IsEnabled            = %u\r\n",
        (unsigned int)TileStatusPtr->IsEnabled
    );
    xil_printf(
        "TileState            = %u (full state=%u)\r\n",
        (unsigned int)TileStatusPtr->TileState,
        (unsigned int)XRFDC_STATE_FULL
    );
    xil_printf(
        "BlockStatusMask      = 0x%02X\r\n",
        (unsigned int)TileStatusPtr->BlockStatusMask
    );
    xil_printf(
        "PowerUpState         = %u\r\n",
        (unsigned int)TileStatusPtr->PowerUpState
    );
    xil_printf(
        "PLLState             = %u\r\n",
        (unsigned int)TileStatusPtr->PLLState
    );
    xil_printf("----------------------------------------------------\r\n");

    return XST_SUCCESS;
}

static int wait_for_one_rfdc_pll_lock(
    u32 Type,
    u32 TileId
)
{
    const char *type_name = rfdc_type_name(Type);

    for (int attempt = 0; attempt < RFDC_PLL_WAIT_ATTEMPTS; ++attempt) {
        u32 lock_status = 0U;

        u32 Status = XRFdc_GetPLLLockStatus(
            &RFdc,
            Type,
            TileId,
            &lock_status
        );

        if (Status != XRFDC_SUCCESS) {
            xil_printf(
                "ERROR: %s Tile%u PLL query failed, status=%u.\r\n",
                type_name,
                (unsigned int)TileId,
                (unsigned int)Status
            );
            return XST_FAILURE;
        }

        if (lock_status == RFDC_API_PLL_LOCKED_VALUE) {
            xil_printf(
                "%s Tile%u PLL is LOCKED.\r\n",
                type_name,
                (unsigned int)TileId
            );
            return XST_SUCCESS;
        }

        if ((attempt == 0) || ((attempt % 10) == 0)) {
            xil_printf(
                "Waiting for %s Tile%u PLL lock: lock=%u\r\n",
                type_name,
                (unsigned int)TileId,
                (unsigned int)lock_status
            );
        }

        usleep(RFDC_PLL_WAIT_US);
    }

    xil_printf(
        "ERROR: %s Tile%u PLL lock timeout after reset.\r\n",
        type_name,
        (unsigned int)TileId
    );

    return XST_FAILURE;
}

static int ensure_rfdc_tile_started(
    u32 Type,
    u32 TileId
)
{
    const char *type_name = rfdc_type_name(Type);
    XRFdc_TileStatus TileStatus = {};
    u32 clock_source = 0U;

    if (get_and_print_rfdc_tile_status(
            (Type == XRFDC_DAC_TILE)
                ? "DAC BEFORE STARTUP"
                : "ADC BEFORE STARTUP",
            Type,
            TileId,
            &TileStatus
        ) != XST_SUCCESS) {
        return XST_FAILURE;
    }

    if (TileStatus.IsEnabled == 0U) {
        xil_printf(
            "ERROR: %s Tile%u is not enabled in the RFDC configuration.\r\n",
            type_name,
            (unsigned int)TileId
        );
        return XST_FAILURE;
    }

    u32 Status = XRFdc_GetClockSource(
        &RFdc,
        Type,
        TileId,
        &clock_source
    );

    if (Status != XRFDC_SUCCESS) {
        xil_printf(
            "ERROR: XRFdc_GetClockSource failed for %s Tile%u, status=%u.\r\n",
            type_name,
            (unsigned int)TileId,
            (unsigned int)Status
        );
        return XST_FAILURE;
    }

    const int pll_required = (clock_source != XRFDC_EXTERNAL_CLK);

    xil_printf(
        "%s Tile%u clock source = %u (%s)\r\n",
        type_name,
        (unsigned int)TileId,
        (unsigned int)clock_source,
        pll_required ? "internal PLL" : "external/direct clock"
    );

    if ((TileStatus.TileState == XRFDC_STATE_FULL) &&
        ((!pll_required) ||
         (TileStatus.PLLState == RFDC_TILE_STATUS_PLL_LOCKED))) {
        xil_printf(
            "%s Tile%u is already in FULL state; startup is not required.\r\n",
            type_name,
            (unsigned int)TileId
        );
        return XST_SUCCESS;
    }

    /*
     * Capture the exact tile registers before the driver writes restart state
     * and triggers the IPSM restart.
     */
    dump_rfdc_tile_startup_registers(
        (Type == XRFDC_DAC_TILE)
            ? "DAC BEFORE STARTUP API"
            : "ADC BEFORE STARTUP API",
        Type,
        TileId
    );

    /*
     * On Gen-3 devices, state 6 is XRFDC_STATE_CLK_DET.  Resume the IPSM
     * from that state instead of resetting the tile back to state 0.  This
     * avoids removing the RFDC-derived fabric clock while that same clock is
     * feeding the Clocking Wizard and AXI4-Stream clock domain.
     */
    if (TileStatus.TileState == XRFDC_STATE_CLK_DET) {
        xil_printf(
            "\r\n%s Tile%u is at CLK_DET state; calling "
            "XRFdc_CustomStartUp(CLK_DET -> FULL)...\r\n",
            type_name,
            (unsigned int)TileId
        );

        Status = XRFdc_CustomStartUp(
            &RFdc,
            Type,
            (int)TileId,
            XRFDC_STATE_CLK_DET,
            XRFDC_STATE_FULL
        );
    } else {
        xil_printf(
            "\r\n%s Tile%u is at state %u; calling XRFdc_StartUp...\r\n",
            type_name,
            (unsigned int)TileId,
            (unsigned int)TileStatus.TileState
        );

        Status = XRFdc_StartUp(
            &RFdc,
            Type,
            (int)TileId
        );
    }

    xil_printf(
        "RFDC startup API returned status=%u for %s Tile%u.\r\n",
        (unsigned int)Status,
        type_name,
        (unsigned int)TileId
    );

    /*
     * This dump is intentionally placed before the failure return.  If the
     * driver timed out waiting for RESTART to clear, the remaining RESTART bit
     * and the state where the IPSM stopped are preserved in this output.
     */
    dump_rfdc_tile_startup_registers(
        (Type == XRFDC_DAC_TILE)
            ? "DAC AFTER STARTUP API"
            : "ADC AFTER STARTUP API",
        Type,
        TileId
    );

    if (Status != XRFDC_SUCCESS) {
        (void)get_and_print_rfdc_tile_status(
            (Type == XRFDC_DAC_TILE)
                ? "DAC AFTER FAILED STARTUP"
                : "ADC AFTER FAILED STARTUP",
            Type,
            TileId,
            &TileStatus
        );
        return XST_FAILURE;
    }

    for (int attempt = 0; attempt < RFDC_PLL_WAIT_ATTEMPTS; ++attempt) {
        if (get_and_print_rfdc_tile_status(
                (Type == XRFDC_DAC_TILE)
                    ? "DAC AFTER STARTUP"
                    : "ADC AFTER STARTUP",
                Type,
                TileId,
                &TileStatus
            ) != XST_SUCCESS) {
            return XST_FAILURE;
        }

        if ((TileStatus.TileState == XRFDC_STATE_FULL) &&
            ((!pll_required) ||
             (TileStatus.PLLState == RFDC_TILE_STATUS_PLL_LOCKED))) {
            xil_printf(
                "%s Tile%u reached FULL state successfully.\r\n",
                type_name,
                (unsigned int)TileId
            );
            return XST_SUCCESS;
        }

        usleep(RFDC_PLL_WAIT_US);
    }

    xil_printf(
        "ERROR: %s Tile%u did not reach FULL state.\r\n",
        type_name,
        (unsigned int)TileId
    );

    return XST_FAILURE;
}


static int init_rfdc(void)
{
    XRFdc_Config *CfgPtr;
    u32 Status;

    xil_printf("\r\n--- RFDC initialization ---\r\n");
    xil_printf("RFDC_BASEADDR       = 0x%08X\r\n",
               (unsigned int)RFDC_BASEADDR);
    xil_printf("RFDC_LOOKUP_ARGUMENT= 0x%08X\r\n",
               (unsigned int)RFDC_LOOKUP_ARGUMENT);

#ifdef RFDC_BASEADDR_IS_FALLBACK
    xil_printf("WARNING: Using fallback RFDC base address 0xA0040000.\r\n");
#endif

#ifdef RFDC_LOOKUP_ARGUMENT_IS_FALLBACK
    xil_printf("WARNING: RFDC lookup is using the base-address fallback.\r\n");
#endif

    CfgPtr = XRFdc_LookupConfig(RFDC_LOOKUP_ARGUMENT);
    if (CfgPtr == NULL) {
        xil_printf("ERROR: RFDC configuration was not found.\r\n");
        return XST_FAILURE;
    }

    Status = XRFdc_CfgInitialize(&RFdc, CfgPtr);
    if (Status != XRFDC_SUCCESS) {
        xil_printf(
            "ERROR: XRFdc_CfgInitialize failed, status=%u.\r\n",
            (unsigned int)Status
        );
        return XST_FAILURE;
    }

    /*
     * Before attempting startup on the currently configured DAC Tile0, scan the
     * local reference-clock detector of all four physical DAC tiles. This test
     * is read-only and is intended to verify whether CLK104 is reaching DAC228.
     */
    usleep(RFDC_RESET_SETTLE_US);
    dump_all_dac_tile_clock_status();
    dump_active_adc_tile_clock_status();

    xil_printf(
        "ADC Tile%u Block%u enabled = %u\r\n",
        (unsigned int)RFDC_ADC_TILE_ID,
        (unsigned int)RFDC_ADC_BLOCK_ID,
        (unsigned int)XRFdc_IsADCBlockEnabled(
            &RFdc,
            RFDC_ADC_TILE_ID,
            RFDC_ADC_BLOCK_ID
        )
    );

    xil_printf(
        "DAC Tile%u Block%u enabled = %u\r\n",
        (unsigned int)RFDC_DAC_TILE_ID,
        (unsigned int)RFDC_DAC_BLOCK_ID,
        (unsigned int)XRFdc_IsDACBlockEnabled(
            &RFdc,
            RFDC_DAC_TILE_ID,
            RFDC_DAC_BLOCK_ID
        )
    );

    if (wait_for_rfdc_clock_ready() != XST_SUCCESS) {
        return XST_FAILURE;
    }

    /*
     * Use the official XRFdc_GetIPStatus structure first. A tile already in
     * FULL state is left running; otherwise perform Reset -> PLL wait -> StartUp.
     */
    Status = ensure_rfdc_tile_started(
        XRFDC_DAC_TILE,
        RFDC_DAC_TILE_ID
    );

    if (Status != XST_SUCCESS) {
        return XST_FAILURE;
    }

    Status = ensure_rfdc_tile_started(
        XRFDC_ADC_TILE,
        RFDC_ADC_TILE_ID
    );

    if (Status != XST_SUCCESS) {
        return XST_FAILURE;
    }

    xil_printf(
        "RFDC ADC Tile%u / DAC Tile%u startup completed.\r\n",
        (unsigned int)RFDC_ADC_TILE_ID,
        (unsigned int)RFDC_DAC_TILE_ID
    );
    return XST_SUCCESS;
}

// ============================================================================
// DMA initialization
// ============================================================================

static int init_dma(void)
{
    XAxiDma_Config *CfgPtr;
    int Status;

    CfgPtr = XAxiDma_LookupConfig(DMA_BASEADDR);
    if (CfgPtr == NULL) {
        xil_printf("ERROR: DMA configuration was not found.\r\n");
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
    while (!XAxiDma_ResetIsDone(&AxiDma) && (--reset_timeout > 0)) {
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

    xil_printf("AXI DMA S2MM initialized in simple mode.\r\n");
    return XST_SUCCESS;
}

// ============================================================================
// Capture analysis
// ============================================================================

static u32 count_captured_words(const u32 *data)
{
    u32 count = 0U;

    while ((count < DMA_WORDS_PER_FRAME) &&
           (data[count] != RX_SENTINEL)) {
        ++count;
    }

    return count;
}

static void print_capture_summary(const u32 *data, u32 word_count)
{
    if (word_count == 0U) {
        xil_printf("ERROR: No ADC words were written into RxBuffer.\r\n");
        return;
    }

    s16 min_value = ADC_SAMPLE_FROM_WORD(data[0]);
    s16 max_value = min_value;
    s64 sum = 0;
    u32 nonzero_count = 0U;
    u32 upper_half_nonzero = 0U;

    for (u32 i = 0U; i < word_count; ++i) {
        s16 sample = ADC_SAMPLE_FROM_WORD(data[i]);

        if (sample < min_value) min_value = sample;
        if (sample > max_value) max_value = sample;
        if (sample != 0) ++nonzero_count;
        if ((data[i] & 0xFFFF0000U) != 0U) ++upper_half_nonzero;

        sum += (s64)sample;
    }

    s32 mean_integer = (s32)(sum / (s64)word_count);

    xil_printf("\r\n");
    xil_printf("====================================================\r\n");
    xil_printf("ADC CAPTURE SUMMARY\r\n");
    xil_printf("Captured words       = %u / %u\r\n",
               (unsigned int)word_count,
               (unsigned int)DMA_WORDS_PER_FRAME);
    xil_printf("Captured ADC samples = %u\r\n",
               (unsigned int)word_count);
    xil_printf("Minimum sample       = %d\r\n", (int)min_value);
    xil_printf("Maximum sample       = %d\r\n", (int)max_value);
    xil_printf("Integer mean         = %d\r\n", (int)mean_integer);
    xil_printf("Nonzero samples      = %u\r\n",
               (unsigned int)nonzero_count);
    xil_printf("Upper-half nonzero   = %u\r\n",
               (unsigned int)upper_half_nonzero);
    xil_printf("====================================================\r\n");

    if (word_count != DMA_WORDS_PER_FRAME) {
        xil_printf(
            "WARNING: Capture ended before 4096 words.\r\n"
            "The first alignment transfer may not have fully synchronized,\r\n"
            "or a FIFO/DMA backpressure problem may have occurred.\r\n"
        );
    }

    if (upper_half_nonzero != 0U) {
        xil_printf(
            "WARNING: adc_packetizer TDATA[31:16] was expected to be zero.\r\n"
        );
    }

    xil_printf("\r\n--- First captured ADC samples ---\r\n");

    u32 print_count = (word_count < 16U) ? word_count : 16U;

    for (u32 i = 0U; i < print_count; ++i) {
        xil_printf(
            "[%4u] word=0x%08X adc=%d\r\n",
            (unsigned int)i,
            (unsigned int)data[i],
            (int)ADC_SAMPLE_FROM_WORD(data[i])
        );
    }

    if (word_count > 16U) {
        xil_printf("\r\n--- Last captured ADC samples ---\r\n");

        u32 start = word_count - 16U;

        for (u32 i = start; i < word_count; ++i) {
            xil_printf(
                "[%4u] word=0x%08X adc=%d\r\n",
                (unsigned int)i,
                (unsigned int)data[i],
                (int)ADC_SAMPLE_FROM_WORD(data[i])
            );
        }
    }
}

// ============================================================================
// CSV creation in DDR
// ============================================================================

static int build_csv_in_ddr(const u32 *data, u32 word_count)
{
    u32 offset = 0U;

    CsvReady = 0U;
    CsvDataLength = 0U;

    int written = snprintf(
        &CsvBuffer[offset],
        CSV_BUFFER_SIZE - offset,
        "index,adc_raw,adc_u16,dma_word_hex\r\n"
    );

    if ((written < 0) ||
        ((u32)written >= (CSV_BUFFER_SIZE - offset))) {
        xil_printf("ERROR: CSV header does not fit in DDR buffer.\r\n");
        return XST_FAILURE;
    }

    offset += (u32)written;

    for (u32 index = 0U; index < word_count; ++index) {
        s16 adc_raw = ADC_SAMPLE_FROM_WORD(data[index]);
        u16 adc_u16 = (u16)(data[index] & 0xFFFFU);

        written = snprintf(
            &CsvBuffer[offset],
            CSV_BUFFER_SIZE - offset,
            "%u,%d,%u,0x%08X\r\n",
            (unsigned int)index,
            (int)adc_raw,
            (unsigned int)adc_u16,
            (unsigned int)data[index]
        );

        if ((written < 0) ||
            ((u32)written >= (CSV_BUFFER_SIZE - offset))) {
            xil_printf(
                "ERROR: CSV DDR buffer overflow at index %u.\r\n",
                (unsigned int)index
            );
            return XST_FAILURE;
        }

        offset += (u32)written;
    }

    CsvDataLength = offset;

    Xil_DCacheFlushRange(
        (UINTPTR)CsvBuffer,
        (u32)CsvDataLength
    );

    Xil_DCacheFlushRange(
        (UINTPTR)&CsvDataLength,
        sizeof(CsvDataLength)
    );

    CsvReady = 1U;

    Xil_DCacheFlushRange(
        (UINTPTR)&CsvReady,
        sizeof(CsvReady)
    );

    return XST_SUCCESS;
}

static void print_csv_ddr_export_information(void)
{
    u64 address = (u64)(UINTPTR)CsvBuffer;
    u32 address_high = (u32)(address >> 32);
    u32 address_low = (u32)(address & 0xFFFFFFFFU);

    xil_printf("\r\n");
    xil_printf("====================================================\r\n");
    xil_printf("ADC LOOPBACK CSV IS READY IN TARGET DDR\r\n");
    xil_printf("CSV_READY        = %u\r\n", (unsigned int)CsvReady);
    xil_printf(
        "CSV_DDR_ADDRESS  = 0x%08X%08X\r\n",
        (unsigned int)address_high,
        (unsigned int)address_low
    );
    xil_printf(
        "CSV_LENGTH_BYTES = %u\r\n",
        (unsigned int)CsvDataLength
    );
    xil_printf(
        "CSV_BUFFER_SIZE  = %u\r\n",
        (unsigned int)CSV_BUFFER_SIZE
    );

    xil_printf("\r\nUse this XSDB command:\r\n");
    xil_printf(
        "mrd -size b -bin "
        "-file C:/TDM_0704/ADC_LFM_LOOPBACK.csv "
        "0x%08X%08X %u\r\n",
        (unsigned int)address_high,
        (unsigned int)address_low,
        (unsigned int)CsvDataLength
    );

    xil_printf("====================================================\r\n");
    xil_printf(
        "The program will remain running to preserve DDR data.\r\n"
    );
}

// ============================================================================
// main
// ============================================================================

int main()
{
    int Status;

    u32 *DiscardData = (u32 *)DiscardBuffer;
    u32 *RxData = (u32 *)RxBuffer;

    xil_printf("\r\n");
    xil_printf("====================================================\r\n");
    xil_printf("ZCU208 RFDC DAC -> ADC REAL-LFM LOOPBACK TEST\r\n");
    xil_printf(
        "Active RFDC path: DAC Tile%u (Physical %u) Block%u "
        "-> ADC Tile%u (Physical %u) Block%u\r\n",
        (unsigned int)RFDC_DAC_TILE_ID,
        (unsigned int)RFDC_DAC_PHYSICAL_TILE,
        (unsigned int)RFDC_DAC_BLOCK_ID,
        (unsigned int)RFDC_ADC_TILE_ID,
        (unsigned int)RFDC_ADC_PHYSICAL_TILE,
        (unsigned int)RFDC_ADC_BLOCK_ID
    );
    xil_printf("====================================================\r\n");

    xil_printf("DMA_BASEADDR         = 0x%08X\r\n",
               (unsigned int)DMA_BASEADDR);
    xil_printf("LFM_TDM_GEN_BASEADDR = 0x%08X\r\n",
               (unsigned int)LFM_TDM_GEN_BASEADDR);
    xil_printf("RFDC_BASEADDR        = 0x%08X\r\n",
               (unsigned int)RFDC_BASEADDR);
    xil_printf("RFDC_RESET_GPIO_BASE = 0x%08X\r\n",
               (unsigned int)RFDC_RESET_GPIO_BASEADDR);
    xil_printf("FRAME_SAMPLES        = %u\r\n",
               (unsigned int)FRAME_SAMPLES);
    xil_printf("RX_BUFFER_SIZE       = %u bytes (0x%08X)\r\n",
               (unsigned int)RX_BUFFER_SIZE,
               (unsigned int)RX_BUFFER_SIZE);

#ifdef LFM_TDM_GEN_BASEADDR_IS_FALLBACK
    xil_printf(
        "WARNING: Using fallback LFM address 0xA0020000.\r\n"
    );
#endif

#ifdef RFDC_RESET_GPIO_BASEADDR_IS_FALLBACK
    xil_printf(
        "WARNING: Using fallback RFDC reset GPIO address 0xA0010000.\r\n"
    );
#endif

    xil_printf("\r\n");
    xil_printf("CLK104 configuration:\r\n");
    xil_printf(
        "The program will configure LMK ID 1 before RFDC startup.\r\n"
    );
    xil_printf(
        "Expected ADC/DAC references: 250 MHz / 250 MHz.\r\n"
    );

    /*
     * Correct clock/reset sequence:
     *   1. Keep RFDC AXI reset asserted.
     *   2. Program CLK104 and wait for stable references.
     *   3. Release RFDC reset.
     *   4. Initialize and inspect RFDC.
     */
    hold_rfdc_in_reset();

    Status = init_clk104();
    if (Status != XST_SUCCESS) {
        return XST_FAILURE;
    }

    Status = release_rfdc_from_reset();
    if (Status != XST_SUCCESS) {
        return XST_FAILURE;
    }

    Status = init_rfdc();
    if (Status != XST_SUCCESS) {
        return XST_FAILURE;
    }

    Status = init_dma();
    if (Status != XST_SUCCESS) {
        return XST_FAILURE;
    }

    for (u32 i = 0U; i < DMA_WORDS_PER_FRAME; ++i) {
        DiscardData[i] = RX_SENTINEL;
        RxData[i] = RX_SENTINEL;
    }

    Xil_DCacheFlushRange(
        (UINTPTR)DiscardBuffer,
        RX_BUFFER_SIZE
    );

    Xil_DCacheFlushRange(
        (UINTPTR)RxBuffer,
        RX_BUFFER_SIZE
    );

    dump_hls_ctrl("BEFORE LOOPBACK START");

    xil_printf("\r\n");
    xil_printf("====================================================\r\n");
    xil_printf("PAUSED BEFORE DMA AND LFM START\r\n");
    xil_printf("1. Connect the XM655 DAC output to the selected ADC input.\r\n");
    xil_printf("2. Use a suitable 50-ohm cable and safe attenuation.\r\n");
    xil_printf("3. Open Vivado Hardware Manager.\r\n");
    xil_printf("4. Arm system_ila_1 for the LFM generator AXIS.\r\n");
    xil_printf("5. Arm system_ila_2 for RFDC/m20_axis.\r\n");
    xil_printf("6. Return to this UART window and press any key.\r\n");
    xil_printf("====================================================\r\n");

    (void)inbyte();

    xil_printf("\r\nStarting alignment DMA transfer...\r\n");

    /*
     * Alignment transfer:
     * adc_packetizer is free-running and may already be in the middle of its
     * 4096-word frame. This first DMA transaction drains data until the next
     * TLAST. The second transaction is then much more likely to begin on a
     * packet boundary.
     */
    Status = start_s2mm_transfer(
        DiscardBuffer,
        RX_BUFFER_SIZE
    );

    if (Status != XST_SUCCESS) {
        xil_printf("ERROR: Cannot start alignment S2MM transfer.\r\n");
        return XST_FAILURE;
    }

    // Start continuous repeated LFM immediately after the alignment DMA is armed.
    start_lfm_auto_restart();

    Status = wait_s2mm_done("ALIGNMENT TRANSFER DONE", 0);
    if (Status != XST_SUCCESS) {
        stop_lfm_auto_restart();
        return XST_FAILURE;
    }

    /*
     * Start the actual capture immediately. Avoid UART prints between the two
     * transfers so the receive FIFO has the best chance of absorbing the short
     * DMA re-arm gap.
     */
    Status = start_s2mm_transfer(
        RxBuffer,
        RX_BUFFER_SIZE
    );

    if (Status != XST_SUCCESS) {
        stop_lfm_auto_restart();
        xil_printf("ERROR: Cannot start ADC capture S2MM transfer.\r\n");
        return XST_FAILURE;
    }

    Status = wait_s2mm_done("ADC CAPTURE DONE", 1);

    stop_lfm_auto_restart();

    if (Status != XST_SUCCESS) {
        return XST_FAILURE;
    }

    Xil_DCacheInvalidateRange(
        (UINTPTR)RxBuffer,
        RX_BUFFER_SIZE
    );

    u32 captured_words = count_captured_words(RxData);

    print_capture_summary(
        RxData,
        captured_words
    );

    if (captured_words == 0U) {
        xil_printf("ERROR: ADC capture buffer is empty.\r\n");
        return XST_FAILURE;
    }

    Status = build_csv_in_ddr(
        RxData,
        captured_words
    );

    if (Status != XST_SUCCESS) {
        xil_printf("ERROR: Failed to build ADC CSV in DDR.\r\n");
        return XST_FAILURE;
    }

    print_csv_ddr_export_information();

    while (1) {
        sleep(1);
    }

    return XST_SUCCESS;
}
