`timescale 1ns / 1ps
`default_nettype none

module axis_capture_gate #(
    parameter integer DATA_WIDTH       = 32,
    parameter integer FRAME_SAMPLES    = 4096,
    parameter integer RX_DELAY_SAMPLES = 0
)(
    input  wire                  aclk,
    input  wire                  aresetn,

    // 之後由 PS 控制，1 = 等待下一個 TX0 frame_start
    input  wire                  capture_arm,

    // 來自 lfm_tdm_gen_0
    input  wire                  dbg_chirp_start,
    input  wire                  dbg_chirp_start_ap_vld,
    input  wire [1:0]            dbg_tx_sel,
    input  wire                  dbg_tx_sel_ap_vld,

    // 來自 adc_packetizer_0
    input  wire [DATA_WIDTH-1:0] s_axis_tdata,
    input  wire                  s_axis_tvalid,
    output reg                   s_axis_tready,
    input  wire                  s_axis_tlast,

    // 輸出到 axis_data_fifo_1
    output reg  [DATA_WIDTH-1:0] m_axis_tdata,
    output reg                   m_axis_tvalid,
    input  wire                  m_axis_tready,
    output reg                   m_axis_tlast,

    // 可接到 ILA
    output wire                  frame_start_event,
    output wire                  capture_active,
    output wire                  capture_done
);

    localparam integer FRAME_COUNT_WIDTH =
        (FRAME_SAMPLES <= 2) ? 1 : $clog2(FRAME_SAMPLES);

    localparam integer DELAY_COUNT_WIDTH =
        (RX_DELAY_SAMPLES <= 1) ? 1 :
        $clog2(RX_DELAY_SAMPLES + 1);

    localparam [2:0] ST_DISARMED     = 3'd0;
    localparam [2:0] ST_WAIT_TRIGGER = 3'd1;
    localparam [2:0] ST_DELAY        = 3'd2;
    localparam [2:0] ST_CAPTURE      = 3'd3;
    localparam [2:0] ST_DONE         = 3'd4;

    reg [2:0] state;

    reg [FRAME_COUNT_WIDTH-1:0] sample_count;
    reg [DELAY_COUNT_WIDTH-1:0] delay_count;

    wire input_transfer;
    wire output_transfer;

    /*
     * 只有 TX0 的 chirp_start 才被視為完整 4096-sample
     * TX0→TX1→TX2→TX3 frame 的起點。
     */
    assign frame_start_event =
        dbg_chirp_start &&
        dbg_chirp_start_ap_vld &&
        dbg_tx_sel_ap_vld &&
        (dbg_tx_sel == 2'd0);

    assign capture_active = (state == ST_CAPTURE);
    assign capture_done   = (state == ST_DONE);

    assign input_transfer =
        s_axis_tvalid && s_axis_tready;

    assign output_transfer =
        m_axis_tvalid && m_axis_tready;

    /*
     * 等待 trigger 時：
     *   TREADY = 1，持續接收並丟棄 ADC 資料，
     *   避免阻塞 RFDC。
     *
     * 正式擷取時：
     *   將 AXI Stream 傳到 FIFO/DMA。
     */
    always @(*) begin
        s_axis_tready = 1'b1;

        m_axis_tdata  = s_axis_tdata;
        m_axis_tvalid = 1'b0;
        m_axis_tlast  = 1'b0;

        if (state == ST_CAPTURE) begin
            s_axis_tready = m_axis_tready;
            m_axis_tvalid = s_axis_tvalid;

            if (sample_count == FRAME_SAMPLES - 1)
                m_axis_tlast = 1'b1;
        end
    end

    always @(posedge aclk) begin
        if (!aresetn) begin
            state        <= ST_DISARMED;
            sample_count <= 0;
            delay_count  <= 0;
        end
        else begin
            case (state)

                ST_DISARMED: begin
                    sample_count <= 0;
                    delay_count  <= 0;

                    if (capture_arm)
                        state <= ST_WAIT_TRIGGER;
                end

                ST_WAIT_TRIGGER: begin
                    sample_count <= 0;
                    delay_count  <= 0;

                    if (!capture_arm) begin
                        state <= ST_DISARMED;
                    end
                    else if (frame_start_event) begin
                        if (RX_DELAY_SAMPLES == 0)
                            state <= ST_CAPTURE;
                        else
                            state <= ST_DELAY;
                    end
                end

                ST_DELAY: begin
                    if (!capture_arm) begin
                        state       <= ST_DISARMED;
                        delay_count <= 0;
                    end
                    else if (input_transfer) begin
                        if ((delay_count + 1) >=
                            RX_DELAY_SAMPLES) begin

                            delay_count  <= 0;
                            sample_count <= 0;
                            state        <= ST_CAPTURE;
                        end
                        else begin
                            delay_count <= delay_count + 1'b1;
                        end
                    end
                end

                ST_CAPTURE: begin
                    if (!capture_arm) begin
                        state        <= ST_DISARMED;
                        sample_count <= 0;
                    end
                    else if (output_transfer) begin
                        if (sample_count ==
                            FRAME_SAMPLES - 1) begin

                            sample_count <= 0;
                            state        <= ST_DONE;
                        end
                        else begin
                            sample_count <=
                                sample_count + 1'b1;
                        end
                    end
                end

                ST_DONE: begin
                    /*
                     * 擷取完成後繼續丟棄 ADC 資料，
                     * 等 capture_arm 回到 0 才能再次 arm。
                     */
                    sample_count <= 0;

                    if (!capture_arm)
                        state <= ST_DISARMED;
                end

                default: begin
                    state        <= ST_DISARMED;
                    sample_count <= 0;
                    delay_count  <= 0;
                end

            endcase
        end
    end

    /*
     * adc_packetizer 原本的 TLAST 不使用。
     * 新 TLAST 由 trigger-aligned 的 4096-sample counter 產生。
     */
    wire unused_s_axis_tlast = s_axis_tlast;

endmodule

`default_nettype wire