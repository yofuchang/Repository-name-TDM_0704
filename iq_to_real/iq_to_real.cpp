#include <hls_stream.h>
#include <ap_int.h>
#include <ap_axi_sdata.h>

// Existing lfm_tdm_gen AXI4-Stream format:
// TDATA[15:0]  = signed 16-bit I
// TDATA[31:16] = signed 16-bit Q
typedef ap_axiu<32, 0, 0, 0> axis_iq_t;

// RFDC DAC is configured as:
// Real data, 1 sample per AXI4-Stream cycle.
// A scalar hls::stream<ap_int<16>> AXIS port therefore carries
// one signed 16-bit real DAC sample per transfer.
void iq_to_real(
    hls::stream<axis_iq_t> &s_axis_iq,
    hls::stream<ap_int<16> > &m_axis_real
)
{
#pragma HLS INTERFACE axis port=s_axis_iq
#pragma HLS INTERFACE axis port=m_axis_real
#pragma HLS INTERFACE ap_ctrl_none port=return
#pragma HLS PIPELINE II=1

    axis_iq_t input_word = s_axis_iq.read();

    ap_int<16> i_sample =
        (ap_int<16>)input_word.data.range(15, 0);

    m_axis_real.write(i_sample);
}
