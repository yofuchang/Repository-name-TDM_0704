#include <hls_stream.h>
#include <ap_int.h>
#include <ap_axi_sdata.h>

#define CHIRP_LEN     1024
#define NUM_TX        3
#define FRAME_CHIRPS  4
#define FRAME_SAMPLES (CHIRP_LEN * FRAME_CHIRPS)

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

    ap_int<16>  &dbg_lfm_i,
    ap_int<16>  &dbg_lfm_q,
    ap_uint<2>  &dbg_tx_sel,
    ap_uint<16> &dbg_chirp_count,
    ap_uint<16> &dbg_sample_count,
    ap_uint<1>  &dbg_chirp_start,
    ap_uint<1>  &dbg_chirp_end,
    ap_uint<1>  &dbg_enable,
    ap_uint<3>  &dbg_state
)
{
#pragma HLS INTERFACE axis port=m_axis_tx

#pragma HLS INTERFACE ap_none port=dbg_lfm_i
#pragma HLS INTERFACE ap_none port=dbg_lfm_q
#pragma HLS INTERFACE ap_none port=dbg_tx_sel
#pragma HLS INTERFACE ap_none port=dbg_chirp_count
#pragma HLS INTERFACE ap_none port=dbg_sample_count
#pragma HLS INTERFACE ap_none port=dbg_chirp_start
#pragma HLS INTERFACE ap_none port=dbg_chirp_end
#pragma HLS INTERFACE ap_none port=dbg_enable
#pragma HLS INTERFACE ap_none port=dbg_state

#pragma HLS INTERFACE s_axilite port=return bundle=CTRL

    dbg_enable = 1;
    dbg_state  = 1;

    for (int chirp = 0; chirp < FRAME_CHIRPS; chirp++) {

        ap_uint<2> tx_sel = chirp % NUM_TX;

        for (int sample = 0; sample < CHIRP_LEN; sample++) {
#pragma HLS PIPELINE II=1

            ap_int<32> base = sample + tx_sel * 1000;

            ap_int<16> i_val = (ap_int<16>)base;
            ap_int<16> q_val = (ap_int<16>)(-base);

            axis_tx_t tx_word;
            tx_word.data = pack_iq(i_val, q_val);
            tx_word.keep = 0xF;
            tx_word.strb = 0xF;

            /*
             * 重要：
             * 這一版 TLAST 先放在整個 frame 最後一筆，
             * 不放在每個 chirp 最後。
             *
             * 原因：
             * AXI DMA simple mode S2MM 比較適合一個 DMA transfer 對應一個 TLAST。
             * 每個 chirp 的結束，我們另外用 dbg_chirp_end 觀察。
             */
            if ((chirp == FRAME_CHIRPS - 1) && (sample == CHIRP_LEN - 1))
                tx_word.last = 1;
            else
                tx_word.last = 0;

            dbg_lfm_i        = i_val;
            dbg_lfm_q        = q_val;
            dbg_tx_sel       = tx_sel;
            dbg_chirp_count  = chirp;
            dbg_sample_count = sample;
            dbg_chirp_start  = (sample == 0);
            dbg_chirp_end    = (sample == CHIRP_LEN - 1);

            m_axis_tx.write(tx_word);
        }
    }

    dbg_enable = 0;
    dbg_state  = 0;
}