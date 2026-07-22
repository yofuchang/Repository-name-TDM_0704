#include <hls_stream.h>
#include <ap_int.h>
#include <ap_axi_sdata.h>

static const unsigned FRAME_SAMPLES = 4096;

// ADC clock converter output:
// one signed 16-bit real sample per AXI4-Stream transfer.
typedef ap_int<16> adc_sample_t;

// DMA/FIFO input:
// 32-bit word, TLAST asserted once every 4096 samples.
typedef ap_axiu<32, 0, 0, 0> axis_dma_t;

void adc_packetizer(
    hls::stream<adc_sample_t> &s_axis_adc,
    hls::stream<axis_dma_t>   &m_axis_dma
)
{
#pragma HLS INTERFACE axis port=s_axis_adc
#pragma HLS INTERFACE axis port=m_axis_dma
#pragma HLS INTERFACE ap_ctrl_none port=return
#pragma HLS PIPELINE II=1

    static ap_uint<12> sample_count = 0;

    adc_sample_t sample = s_axis_adc.read();

    axis_dma_t out_word;
    out_word.data = 0;
    out_word.data.range(15, 0) = (ap_uint<16>)sample;
    out_word.keep = 0xF;
    out_word.strb = 0xF;
    out_word.last = (sample_count == FRAME_SAMPLES - 1);

    m_axis_dma.write(out_word);

    if (sample_count == FRAME_SAMPLES - 1) {
        sample_count = 0;
    } else {
        sample_count++;
    }
}
