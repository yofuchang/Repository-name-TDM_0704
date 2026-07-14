#include <hls_stream.h>
#include <ap_int.h>
#include <ap_axi_sdata.h>
#include "hls_directio.h"
#include "lfm_chirp_lut.h"

// ========================================================
// 4-TX TDM Real Complex LFM Generator
//
// Chirp 0 -> TX0
// Chirp 1 -> TX1
// Chirp 2 -> TX2
// Chirp 3 -> TX3
//
// AXI4-Stream output:
// bit[15:0]  = I, signed 16-bit
// bit[31:16] = Q, signed 16-bit
//
// Debug outputs:
// Use HLS Direct I/O ap_vld objects.
// Each .write() creates a valid debug output transaction.
// ========================================================

#define CHIRP_LEN     1024
#define NUM_TX        4
#define FRAME_CHIRPS  4

typedef ap_axiu<32, 0, 0, 0> axis_tx_t;

static ap_uint<32> pack_iq(ap_int<16> i, ap_int<16> q)
{
#pragma HLS INLINE

    ap_uint<32> word = 0;
    word.range(15, 0)  = (ap_uint<16>)i;
    word.range(31, 16) = (ap_uint<16>)q;

    return word;
}

void lfm_tdm_gen(
    hls::stream<axis_tx_t> &m_axis_tx,

    hls::ap_vld<ap_int<16> >  &dbg_lfm_i,
    hls::ap_vld<ap_int<16> >  &dbg_lfm_q,
    hls::ap_vld<ap_uint<2> >  &dbg_tx_sel,
    hls::ap_vld<ap_uint<4> >  &dbg_tx_active,
    hls::ap_vld<ap_uint<16> > &dbg_chirp_count,
    hls::ap_vld<ap_uint<16> > &dbg_sample_count,
    hls::ap_vld<ap_uint<1> >  &dbg_chirp_start,
    hls::ap_vld<ap_uint<1> >  &dbg_chirp_end,
    hls::ap_vld<ap_uint<1> >  &dbg_enable,
    hls::ap_vld<ap_uint<3> >  &dbg_state
)
{
#pragma HLS INTERFACE axis port=m_axis_tx
#pragma HLS INTERFACE s_axilite port=return bundle=CTRL

    // Do not use the old "#pragma HLS INTERFACE ap_vld" directives
    // on the debug arguments. The hls::ap_vld<T> type itself defines
    // the Direct I/O valid protocol.

    for (int chirp = 0; chirp < FRAME_CHIRPS; chirp++) {

        ap_uint<2> tx_sel = (ap_uint<2>)(chirp % NUM_TX);

        // One-hot TX output:
        // TX0 = 0001
        // TX1 = 0010
        // TX2 = 0100
        // TX3 = 1000
        ap_uint<4> tx_active = 0;
        tx_active[tx_sel] = 1;

        for (int sample = 0; sample < CHIRP_LEN; sample++) {
#pragma HLS PIPELINE II=1

            ap_uint<32> lut_word = LFM_IQ_LUT[sample];

            ap_int<16> i_val =
                (ap_int<16>)lut_word.range(15, 0);

            ap_int<16> q_val =
                (ap_int<16>)lut_word.range(31, 16);

            axis_tx_t tx_word;

            tx_word.data = pack_iq(i_val, q_val);
            tx_word.keep = 0xF;
            tx_word.strb = 0xF;

            // The complete 4-chirp frame is one DMA S2MM transfer.
            tx_word.last =
                ((chirp == FRAME_CHIRPS - 1) &&
                 (sample == CHIRP_LEN - 1))
                    ? 1
                    : 0;

            // ----------------------------------------------------
            // Direct I/O debug writes
            //
            // These writes occur once for every generated sample.
            // Their associated *_ap_vld signals identify valid
            // per-sample debug values for the ILA.
            // ----------------------------------------------------
            dbg_lfm_i.write(i_val);
            dbg_lfm_q.write(q_val);
            dbg_tx_sel.write(tx_sel);
            dbg_tx_active.write(tx_active);
            dbg_chirp_count.write((ap_uint<16>)chirp);
            dbg_sample_count.write((ap_uint<16>)sample);
            dbg_chirp_start.write(
                (sample == 0) ? (ap_uint<1>)1 : (ap_uint<1>)0
            );
            dbg_chirp_end.write(
                (sample == CHIRP_LEN - 1)
                    ? (ap_uint<1>)1
                    : (ap_uint<1>)0
            );
            dbg_enable.write((ap_uint<1>)1);
            dbg_state.write((ap_uint<3>)1);

            // AXI4-Stream output for the same LFM sample.
            m_axis_tx.write(tx_word);
        }
    }

    // One final idle-state update.
    // sample_count_ap_vld is intentionally not written here, so it
    // produces exactly 4096 valid sample events.
    dbg_tx_active.write((ap_uint<4>)0);
    dbg_chirp_start.write((ap_uint<1>)0);
    dbg_chirp_end.write((ap_uint<1>)0);
    dbg_enable.write((ap_uint<1>)0);
    dbg_state.write((ap_uint<3>)0);
}
