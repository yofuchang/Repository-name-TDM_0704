// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Wed Jul  8 20:32:15 2026
// Host        : JohnsonKu running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/TDM_0704/TDM_0704/TDM_0704.gen/sources_1/bd/design_1/ip/design_1_lfm_tdm_gen_0_0/design_1_lfm_tdm_gen_0_0_sim_netlist.v
// Design      : design_1_lfm_tdm_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu48dr-fsvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_lfm_tdm_gen_0_0,lfm_tdm_gen,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "lfm_tdm_gen,Vivado 2024.2" *) (* hls_module = "yes" *) 
(* NotValidForBitStream *)
module design_1_lfm_tdm_gen_0_0
   (s_axi_CTRL_ARADDR,
    s_axi_CTRL_ARREADY,
    s_axi_CTRL_ARVALID,
    s_axi_CTRL_AWADDR,
    s_axi_CTRL_AWREADY,
    s_axi_CTRL_AWVALID,
    s_axi_CTRL_BREADY,
    s_axi_CTRL_BRESP,
    s_axi_CTRL_BVALID,
    s_axi_CTRL_RDATA,
    s_axi_CTRL_RREADY,
    s_axi_CTRL_RRESP,
    s_axi_CTRL_RVALID,
    s_axi_CTRL_WDATA,
    s_axi_CTRL_WREADY,
    s_axi_CTRL_WSTRB,
    s_axi_CTRL_WVALID,
    ap_clk,
    ap_rst_n,
    interrupt,
    m_axis_tx_TDATA,
    m_axis_tx_TKEEP,
    m_axis_tx_TLAST,
    m_axis_tx_TREADY,
    m_axis_tx_TSTRB,
    m_axis_tx_TVALID,
    dbg_lfm_i,
    dbg_lfm_q,
    dbg_tx_sel,
    dbg_chirp_count,
    dbg_sample_count,
    dbg_chirp_start,
    dbg_chirp_end,
    dbg_enable,
    dbg_state);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL ARADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_CTRL, ADDR_WIDTH 4, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 99999001, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [3:0]s_axi_CTRL_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL ARREADY" *) output s_axi_CTRL_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL ARVALID" *) input s_axi_CTRL_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL AWADDR" *) input [3:0]s_axi_CTRL_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL AWREADY" *) output s_axi_CTRL_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL AWVALID" *) input s_axi_CTRL_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL BREADY" *) input s_axi_CTRL_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL BRESP" *) output [1:0]s_axi_CTRL_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL BVALID" *) output s_axi_CTRL_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL RDATA" *) output [31:0]s_axi_CTRL_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL RREADY" *) input s_axi_CTRL_RREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL RRESP" *) output [1:0]s_axi_CTRL_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL RVALID" *) output s_axi_CTRL_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL WDATA" *) input [31:0]s_axi_CTRL_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL WREADY" *) output s_axi_CTRL_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL WSTRB" *) input [3:0]s_axi_CTRL_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL WVALID" *) input s_axi_CTRL_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_CTRL:m_axis_tx, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output interrupt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_tx TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_tx, TUSER_WIDTH 0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 99999001, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [31:0]m_axis_tx_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_tx TKEEP" *) output [3:0]m_axis_tx_TKEEP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_tx TLAST" *) output [0:0]m_axis_tx_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_tx TREADY" *) input m_axis_tx_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_tx TSTRB" *) output [3:0]m_axis_tx_TSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_tx TVALID" *) output m_axis_tx_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 dbg_lfm_i DATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dbg_lfm_i, LAYERED_METADATA undef" *) output [15:0]dbg_lfm_i;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 dbg_lfm_q DATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dbg_lfm_q, LAYERED_METADATA undef" *) output [15:0]dbg_lfm_q;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 dbg_tx_sel DATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dbg_tx_sel, LAYERED_METADATA undef" *) output [1:0]dbg_tx_sel;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 dbg_chirp_count DATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dbg_chirp_count, LAYERED_METADATA undef" *) output [15:0]dbg_chirp_count;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 dbg_sample_count DATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dbg_sample_count, LAYERED_METADATA undef" *) output [15:0]dbg_sample_count;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 dbg_chirp_start DATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dbg_chirp_start, LAYERED_METADATA undef" *) output [0:0]dbg_chirp_start;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 dbg_chirp_end DATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dbg_chirp_end, LAYERED_METADATA undef" *) output [0:0]dbg_chirp_end;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 dbg_enable DATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dbg_enable, LAYERED_METADATA undef" *) output [0:0]dbg_enable;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 dbg_state DATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dbg_state, LAYERED_METADATA undef" *) output [2:0]dbg_state;

  wire \<const0> ;
  wire \<const1> ;
  wire ap_clk;
  wire ap_rst_n;
  wire [11:0]\^dbg_lfm_i ;
  wire [15:0]dbg_lfm_q;
  wire interrupt;
  wire [31:0]\^m_axis_tx_TDATA ;
  wire [3:0]m_axis_tx_TKEEP;
  wire [0:0]m_axis_tx_TLAST;
  wire m_axis_tx_TREADY;
  wire [3:0]m_axis_tx_TSTRB;
  wire m_axis_tx_TVALID;
  wire [3:0]s_axi_CTRL_ARADDR;
  wire s_axi_CTRL_ARREADY;
  wire s_axi_CTRL_ARVALID;
  wire [3:0]s_axi_CTRL_AWADDR;
  wire s_axi_CTRL_AWREADY;
  wire s_axi_CTRL_AWVALID;
  wire s_axi_CTRL_BREADY;
  wire s_axi_CTRL_BVALID;
  wire [9:0]\^s_axi_CTRL_RDATA ;
  wire s_axi_CTRL_RREADY;
  wire s_axi_CTRL_RVALID;
  wire [31:0]s_axi_CTRL_WDATA;
  wire s_axi_CTRL_WREADY;
  wire [3:0]s_axi_CTRL_WSTRB;
  wire s_axi_CTRL_WVALID;
  wire [15:0]NLW_inst_dbg_chirp_count_UNCONNECTED;
  wire [0:0]NLW_inst_dbg_chirp_end_UNCONNECTED;
  wire [0:0]NLW_inst_dbg_chirp_start_UNCONNECTED;
  wire [0:0]NLW_inst_dbg_enable_UNCONNECTED;
  wire [15:12]NLW_inst_dbg_lfm_i_UNCONNECTED;
  wire [15:0]NLW_inst_dbg_sample_count_UNCONNECTED;
  wire [2:0]NLW_inst_dbg_state_UNCONNECTED;
  wire [1:0]NLW_inst_dbg_tx_sel_UNCONNECTED;
  wire [15:12]NLW_inst_m_axis_tx_TDATA_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_CTRL_BRESP_UNCONNECTED;
  wire [31:4]NLW_inst_s_axi_CTRL_RDATA_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_CTRL_RRESP_UNCONNECTED;

  assign dbg_chirp_count[15] = \<const0> ;
  assign dbg_chirp_count[14] = \<const0> ;
  assign dbg_chirp_count[13] = \<const0> ;
  assign dbg_chirp_count[12] = \<const0> ;
  assign dbg_chirp_count[11] = \<const0> ;
  assign dbg_chirp_count[10] = \<const0> ;
  assign dbg_chirp_count[9] = \<const0> ;
  assign dbg_chirp_count[8] = \<const0> ;
  assign dbg_chirp_count[7] = \<const0> ;
  assign dbg_chirp_count[6] = \<const0> ;
  assign dbg_chirp_count[5] = \<const0> ;
  assign dbg_chirp_count[4] = \<const0> ;
  assign dbg_chirp_count[3] = \<const0> ;
  assign dbg_chirp_count[2] = \<const0> ;
  assign dbg_chirp_count[1] = \<const1> ;
  assign dbg_chirp_count[0] = \<const1> ;
  assign dbg_chirp_end[0] = \<const1> ;
  assign dbg_chirp_start[0] = \<const0> ;
  assign dbg_enable[0] = \<const0> ;
  assign dbg_lfm_i[15] = \<const0> ;
  assign dbg_lfm_i[14] = \<const0> ;
  assign dbg_lfm_i[13] = \<const0> ;
  assign dbg_lfm_i[12] = \<const0> ;
  assign dbg_lfm_i[11:0] = \^dbg_lfm_i [11:0];
  assign dbg_sample_count[15] = \<const0> ;
  assign dbg_sample_count[14] = \<const0> ;
  assign dbg_sample_count[13] = \<const0> ;
  assign dbg_sample_count[12] = \<const0> ;
  assign dbg_sample_count[11] = \<const0> ;
  assign dbg_sample_count[10] = \<const0> ;
  assign dbg_sample_count[9] = \<const1> ;
  assign dbg_sample_count[8] = \<const1> ;
  assign dbg_sample_count[7] = \<const1> ;
  assign dbg_sample_count[6] = \<const1> ;
  assign dbg_sample_count[5] = \<const1> ;
  assign dbg_sample_count[4] = \<const1> ;
  assign dbg_sample_count[3] = \<const1> ;
  assign dbg_sample_count[2] = \<const1> ;
  assign dbg_sample_count[1] = \<const1> ;
  assign dbg_sample_count[0] = \<const1> ;
  assign dbg_state[2] = \<const0> ;
  assign dbg_state[1] = \<const0> ;
  assign dbg_state[0] = \<const0> ;
  assign dbg_tx_sel[1] = \<const0> ;
  assign dbg_tx_sel[0] = \<const0> ;
  assign m_axis_tx_TDATA[31:16] = \^m_axis_tx_TDATA [31:16];
  assign m_axis_tx_TDATA[15] = \<const0> ;
  assign m_axis_tx_TDATA[14] = \<const0> ;
  assign m_axis_tx_TDATA[13] = \<const0> ;
  assign m_axis_tx_TDATA[12] = \<const0> ;
  assign m_axis_tx_TDATA[11:0] = \^m_axis_tx_TDATA [11:0];
  assign s_axi_CTRL_BRESP[1] = \<const0> ;
  assign s_axi_CTRL_BRESP[0] = \<const0> ;
  assign s_axi_CTRL_RDATA[31] = \<const0> ;
  assign s_axi_CTRL_RDATA[30] = \<const0> ;
  assign s_axi_CTRL_RDATA[29] = \<const0> ;
  assign s_axi_CTRL_RDATA[28] = \<const0> ;
  assign s_axi_CTRL_RDATA[27] = \<const0> ;
  assign s_axi_CTRL_RDATA[26] = \<const0> ;
  assign s_axi_CTRL_RDATA[25] = \<const0> ;
  assign s_axi_CTRL_RDATA[24] = \<const0> ;
  assign s_axi_CTRL_RDATA[23] = \<const0> ;
  assign s_axi_CTRL_RDATA[22] = \<const0> ;
  assign s_axi_CTRL_RDATA[21] = \<const0> ;
  assign s_axi_CTRL_RDATA[20] = \<const0> ;
  assign s_axi_CTRL_RDATA[19] = \<const0> ;
  assign s_axi_CTRL_RDATA[18] = \<const0> ;
  assign s_axi_CTRL_RDATA[17] = \<const0> ;
  assign s_axi_CTRL_RDATA[16] = \<const0> ;
  assign s_axi_CTRL_RDATA[15] = \<const0> ;
  assign s_axi_CTRL_RDATA[14] = \<const0> ;
  assign s_axi_CTRL_RDATA[13] = \<const0> ;
  assign s_axi_CTRL_RDATA[12] = \<const0> ;
  assign s_axi_CTRL_RDATA[11] = \<const0> ;
  assign s_axi_CTRL_RDATA[10] = \<const0> ;
  assign s_axi_CTRL_RDATA[9] = \^s_axi_CTRL_RDATA [9];
  assign s_axi_CTRL_RDATA[8] = \<const0> ;
  assign s_axi_CTRL_RDATA[7] = \^s_axi_CTRL_RDATA [7];
  assign s_axi_CTRL_RDATA[6] = \<const0> ;
  assign s_axi_CTRL_RDATA[5] = \<const0> ;
  assign s_axi_CTRL_RDATA[4] = \<const0> ;
  assign s_axi_CTRL_RDATA[3:0] = \^s_axi_CTRL_RDATA [3:0];
  assign s_axi_CTRL_RRESP[1] = \<const0> ;
  assign s_axi_CTRL_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* C_S_AXI_CTRL_ADDR_WIDTH = "4" *) 
  (* C_S_AXI_CTRL_DATA_WIDTH = "32" *) 
  (* C_S_AXI_CTRL_WSTRB_WIDTH = "4" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_S_AXI_WSTRB_WIDTH = "4" *) 
  (* SDX_KERNEL = "true" *) 
  (* SDX_KERNEL_SYNTH_INST = "inst" *) 
  (* SDX_KERNEL_TYPE = "hls" *) 
  (* ap_ST_fsm_pp0_stage0 = "1'b1" *) 
  design_1_lfm_tdm_gen_0_0_lfm_tdm_gen inst
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .dbg_chirp_count(NLW_inst_dbg_chirp_count_UNCONNECTED[15:0]),
        .dbg_chirp_end(NLW_inst_dbg_chirp_end_UNCONNECTED[0]),
        .dbg_chirp_start(NLW_inst_dbg_chirp_start_UNCONNECTED[0]),
        .dbg_enable(NLW_inst_dbg_enable_UNCONNECTED[0]),
        .dbg_lfm_i({NLW_inst_dbg_lfm_i_UNCONNECTED[15:12],\^dbg_lfm_i }),
        .dbg_lfm_q(dbg_lfm_q),
        .dbg_sample_count(NLW_inst_dbg_sample_count_UNCONNECTED[15:0]),
        .dbg_state(NLW_inst_dbg_state_UNCONNECTED[2:0]),
        .dbg_tx_sel(NLW_inst_dbg_tx_sel_UNCONNECTED[1:0]),
        .interrupt(interrupt),
        .m_axis_tx_TDATA(\^m_axis_tx_TDATA ),
        .m_axis_tx_TKEEP(m_axis_tx_TKEEP),
        .m_axis_tx_TLAST(m_axis_tx_TLAST),
        .m_axis_tx_TREADY(m_axis_tx_TREADY),
        .m_axis_tx_TSTRB(m_axis_tx_TSTRB),
        .m_axis_tx_TVALID(m_axis_tx_TVALID),
        .s_axi_CTRL_ARADDR(s_axi_CTRL_ARADDR),
        .s_axi_CTRL_ARREADY(s_axi_CTRL_ARREADY),
        .s_axi_CTRL_ARVALID(s_axi_CTRL_ARVALID),
        .s_axi_CTRL_AWADDR({s_axi_CTRL_AWADDR[3:2],1'b0,1'b0}),
        .s_axi_CTRL_AWREADY(s_axi_CTRL_AWREADY),
        .s_axi_CTRL_AWVALID(s_axi_CTRL_AWVALID),
        .s_axi_CTRL_BREADY(s_axi_CTRL_BREADY),
        .s_axi_CTRL_BRESP(NLW_inst_s_axi_CTRL_BRESP_UNCONNECTED[1:0]),
        .s_axi_CTRL_BVALID(s_axi_CTRL_BVALID),
        .s_axi_CTRL_RDATA({NLW_inst_s_axi_CTRL_RDATA_UNCONNECTED[31:10],\^s_axi_CTRL_RDATA }),
        .s_axi_CTRL_RREADY(s_axi_CTRL_RREADY),
        .s_axi_CTRL_RRESP(NLW_inst_s_axi_CTRL_RRESP_UNCONNECTED[1:0]),
        .s_axi_CTRL_RVALID(s_axi_CTRL_RVALID),
        .s_axi_CTRL_WDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_CTRL_WDATA[7],1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_CTRL_WDATA[1:0]}),
        .s_axi_CTRL_WREADY(s_axi_CTRL_WREADY),
        .s_axi_CTRL_WSTRB({1'b0,1'b0,1'b0,s_axi_CTRL_WSTRB[0]}),
        .s_axi_CTRL_WVALID(s_axi_CTRL_WVALID));
endmodule

(* C_S_AXI_CTRL_ADDR_WIDTH = "4" *) (* C_S_AXI_CTRL_DATA_WIDTH = "32" *) (* C_S_AXI_CTRL_WSTRB_WIDTH = "4" *) 
(* C_S_AXI_DATA_WIDTH = "32" *) (* C_S_AXI_WSTRB_WIDTH = "4" *) (* ORIG_REF_NAME = "lfm_tdm_gen" *) 
(* ap_ST_fsm_pp0_stage0 = "1'b1" *) (* hls_module = "yes" *) 
module design_1_lfm_tdm_gen_0_0_lfm_tdm_gen
   (ap_clk,
    ap_rst_n,
    m_axis_tx_TREADY,
    m_axis_tx_TDATA,
    m_axis_tx_TVALID,
    m_axis_tx_TKEEP,
    m_axis_tx_TSTRB,
    m_axis_tx_TLAST,
    dbg_lfm_i,
    dbg_lfm_q,
    dbg_tx_sel,
    dbg_chirp_count,
    dbg_sample_count,
    dbg_chirp_start,
    dbg_chirp_end,
    dbg_enable,
    dbg_state,
    s_axi_CTRL_AWVALID,
    s_axi_CTRL_AWREADY,
    s_axi_CTRL_AWADDR,
    s_axi_CTRL_WVALID,
    s_axi_CTRL_WREADY,
    s_axi_CTRL_WDATA,
    s_axi_CTRL_WSTRB,
    s_axi_CTRL_ARVALID,
    s_axi_CTRL_ARREADY,
    s_axi_CTRL_ARADDR,
    s_axi_CTRL_RVALID,
    s_axi_CTRL_RREADY,
    s_axi_CTRL_RDATA,
    s_axi_CTRL_RRESP,
    s_axi_CTRL_BVALID,
    s_axi_CTRL_BREADY,
    s_axi_CTRL_BRESP,
    interrupt);
  input ap_clk;
  input ap_rst_n;
  input m_axis_tx_TREADY;
  output [31:0]m_axis_tx_TDATA;
  output m_axis_tx_TVALID;
  output [3:0]m_axis_tx_TKEEP;
  output [3:0]m_axis_tx_TSTRB;
  output [0:0]m_axis_tx_TLAST;
  output [15:0]dbg_lfm_i;
  output [15:0]dbg_lfm_q;
  output [1:0]dbg_tx_sel;
  output [15:0]dbg_chirp_count;
  output [15:0]dbg_sample_count;
  output [0:0]dbg_chirp_start;
  output [0:0]dbg_chirp_end;
  output [0:0]dbg_enable;
  output [2:0]dbg_state;
  input s_axi_CTRL_AWVALID;
  output s_axi_CTRL_AWREADY;
  input [3:0]s_axi_CTRL_AWADDR;
  input s_axi_CTRL_WVALID;
  output s_axi_CTRL_WREADY;
  input [31:0]s_axi_CTRL_WDATA;
  input [3:0]s_axi_CTRL_WSTRB;
  input s_axi_CTRL_ARVALID;
  output s_axi_CTRL_ARREADY;
  input [3:0]s_axi_CTRL_ARADDR;
  output s_axi_CTRL_RVALID;
  input s_axi_CTRL_RREADY;
  output [31:0]s_axi_CTRL_RDATA;
  output [1:0]s_axi_CTRL_RRESP;
  output s_axi_CTRL_BVALID;
  input s_axi_CTRL_BREADY;
  output [1:0]s_axi_CTRL_BRESP;
  output interrupt;

  wire \<const0> ;
  wire CTRL_s_axi_U_n_12;
  wire CTRL_s_axi_U_n_15;
  wire CTRL_s_axi_U_n_23;
  wire CTRL_s_axi_U_n_25;
  wire CTRL_s_axi_U_n_7;
  wire [11:0]add_ln53_fu_312_p2;
  wire ap_block_pp0_stage0_subdone;
  wire ap_clk;
  wire ap_condition_150;
  wire ap_condition_exit_pp0_iter0_stage0;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter10;
  wire ap_enable_reg_pp0_iter2;
  wire ap_enable_reg_pp0_iter3;
  wire ap_enable_reg_pp0_iter4;
  wire ap_enable_reg_pp0_iter5;
  wire ap_enable_reg_pp0_iter6;
  wire ap_enable_reg_pp0_iter7;
  wire ap_enable_reg_pp0_iter8;
  wire ap_enable_reg_pp0_iter9;
  wire ap_loop_exit_ready_pp0_iter10_reg;
  wire ap_loop_exit_ready_pp0_iter8_reg_reg_srl8_n_0;
  wire ap_loop_exit_ready_pp0_iter9_reg;
  wire ap_loop_init;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire ap_start;
  wire [2:0]chirp3_fu_120;
  wire [2:0]chirp_18_fu_128;
  wire [2:0]chirp_2_fu_270_p3;
  wire [2:0]chirp_fu_324_p2;
  wire [11:0]\^dbg_lfm_i ;
  wire [15:0]\^dbg_lfm_q ;
  wire flow_control_loop_pipe_U_n_14;
  wire flow_control_loop_pipe_U_n_15;
  wire flow_control_loop_pipe_U_n_28;
  wire flow_control_loop_pipe_U_n_29;
  wire icmp_ln53_fu_330_p2;
  wire icmp_ln53_reg_450;
  wire icmp_ln57_fu_318_p2;
  wire icmp_ln57_reg_445;
  wire [11:0]indvar_flatten2_fu_116;
  wire interrupt;
  wire [2:0]\loop[2].remd_tmp_reg[3] ;
  wire [30:0]\^m_axis_tx_TDATA ;
  wire [0:0]m_axis_tx_TLAST;
  wire m_axis_tx_TREADY;
  wire [2:2]\^m_axis_tx_TSTRB ;
  wire m_axis_tx_TVALID;
  wire m_axis_tx_TVALID_int_regslice;
  wire mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_0;
  wire mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_1;
  wire mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_10;
  wire mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_11;
  wire mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_12;
  wire mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_13;
  wire mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_14;
  wire mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_15;
  wire mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_16;
  wire mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_17;
  wire mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_18;
  wire mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_19;
  wire mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_2;
  wire mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_20;
  wire mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_21;
  wire mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_22;
  wire mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_23;
  wire mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_24;
  wire mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_25;
  wire mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_26;
  wire mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_3;
  wire mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_4;
  wire mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_5;
  wire mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_6;
  wire mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_7;
  wire mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_8;
  wire mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_9;
  wire regslice_both_m_axis_tx_V_data_V_U_n_0;
  wire regslice_both_m_axis_tx_V_data_V_U_n_1;
  wire regslice_both_m_axis_tx_V_data_V_U_n_10;
  wire regslice_both_m_axis_tx_V_data_V_U_n_5;
  wire regslice_both_m_axis_tx_V_data_V_U_n_7;
  wire regslice_both_m_axis_tx_V_data_V_U_n_8;
  wire regslice_both_m_axis_tx_V_data_V_U_n_9;
  wire [3:0]s_axi_CTRL_ARADDR;
  wire s_axi_CTRL_ARREADY;
  wire s_axi_CTRL_ARVALID;
  wire [3:0]s_axi_CTRL_AWADDR;
  wire s_axi_CTRL_AWREADY;
  wire s_axi_CTRL_AWVALID;
  wire s_axi_CTRL_BREADY;
  wire s_axi_CTRL_BVALID;
  wire [9:0]\^s_axi_CTRL_RDATA ;
  wire s_axi_CTRL_RREADY;
  wire s_axi_CTRL_RVALID;
  wire [31:0]s_axi_CTRL_WDATA;
  wire s_axi_CTRL_WREADY;
  wire [3:0]s_axi_CTRL_WSTRB;
  wire s_axi_CTRL_WVALID;
  wire [10:0]sample4_fu_124;
  wire [10:0]sample_fu_306_p2;
  wire [9:0]select_ln53_fu_262_p3;
  wire \trunc_ln60_reg_435_pp0_iter5_reg_reg[0]_srl6_n_0 ;
  wire \trunc_ln60_reg_435_pp0_iter5_reg_reg[1]_srl6_n_0 ;
  wire \trunc_ln60_reg_435_pp0_iter5_reg_reg[2]_srl6_n_0 ;
  wire \trunc_ln60_reg_435_pp0_iter5_reg_reg[3]_srl6_n_0 ;
  wire \trunc_ln60_reg_435_pp0_iter5_reg_reg[4]_srl6_n_0 ;
  wire \trunc_ln60_reg_435_pp0_iter5_reg_reg[5]_srl6_n_0 ;
  wire \trunc_ln60_reg_435_pp0_iter5_reg_reg[6]_srl6_n_0 ;
  wire \trunc_ln60_reg_435_pp0_iter5_reg_reg[7]_srl6_n_0 ;
  wire \trunc_ln60_reg_435_pp0_iter5_reg_reg[8]_srl6_n_0 ;
  wire \trunc_ln60_reg_435_pp0_iter5_reg_reg[9]_srl6_n_0 ;
  wire [9:0]trunc_ln60_reg_435_pp0_iter6_reg;
  wire tx_word_last_fu_300_p2;
  wire \tx_word_last_reg_440_pp0_iter7_reg_reg[0]_srl8_n_0 ;
  wire tx_word_last_reg_440_pp0_iter8_reg;

  assign dbg_chirp_count[15] = \<const0> ;
  assign dbg_chirp_count[14] = \<const0> ;
  assign dbg_chirp_count[13] = \<const0> ;
  assign dbg_chirp_count[12] = \<const0> ;
  assign dbg_chirp_count[11] = \<const0> ;
  assign dbg_chirp_count[10] = \<const0> ;
  assign dbg_chirp_count[9] = \<const0> ;
  assign dbg_chirp_count[8] = \<const0> ;
  assign dbg_chirp_count[7] = \<const0> ;
  assign dbg_chirp_count[6] = \<const0> ;
  assign dbg_chirp_count[5] = \<const0> ;
  assign dbg_chirp_count[4] = \<const0> ;
  assign dbg_chirp_count[3] = \<const0> ;
  assign dbg_chirp_count[2] = \<const0> ;
  assign dbg_chirp_count[1] = \<const0> ;
  assign dbg_chirp_count[0] = \<const0> ;
  assign dbg_chirp_end[0] = \<const0> ;
  assign dbg_chirp_start[0] = \<const0> ;
  assign dbg_enable[0] = \<const0> ;
  assign dbg_lfm_i[15] = \<const0> ;
  assign dbg_lfm_i[14] = \<const0> ;
  assign dbg_lfm_i[13] = \<const0> ;
  assign dbg_lfm_i[12] = \<const0> ;
  assign dbg_lfm_i[11:0] = \^dbg_lfm_i [11:0];
  assign dbg_lfm_q[15] = \^dbg_lfm_q [15];
  assign dbg_lfm_q[14] = \^dbg_lfm_q [15];
  assign dbg_lfm_q[13] = \^dbg_lfm_q [15];
  assign dbg_lfm_q[12] = \^dbg_lfm_q [15];
  assign dbg_lfm_q[11:0] = \^dbg_lfm_q [11:0];
  assign dbg_sample_count[15] = \<const0> ;
  assign dbg_sample_count[14] = \<const0> ;
  assign dbg_sample_count[13] = \<const0> ;
  assign dbg_sample_count[12] = \<const0> ;
  assign dbg_sample_count[11] = \<const0> ;
  assign dbg_sample_count[10] = \<const0> ;
  assign dbg_sample_count[9] = \<const0> ;
  assign dbg_sample_count[8] = \<const0> ;
  assign dbg_sample_count[7] = \<const0> ;
  assign dbg_sample_count[6] = \<const0> ;
  assign dbg_sample_count[5] = \<const0> ;
  assign dbg_sample_count[4] = \<const0> ;
  assign dbg_sample_count[3] = \<const0> ;
  assign dbg_sample_count[2] = \<const0> ;
  assign dbg_sample_count[1] = \<const0> ;
  assign dbg_sample_count[0] = \<const0> ;
  assign dbg_state[2] = \<const0> ;
  assign dbg_state[1] = \<const0> ;
  assign dbg_state[0] = \<const0> ;
  assign dbg_tx_sel[1] = \<const0> ;
  assign dbg_tx_sel[0] = \<const0> ;
  assign m_axis_tx_TDATA[31] = \^m_axis_tx_TDATA [30];
  assign m_axis_tx_TDATA[30] = \^m_axis_tx_TDATA [30];
  assign m_axis_tx_TDATA[29] = \^m_axis_tx_TDATA [30];
  assign m_axis_tx_TDATA[28] = \^m_axis_tx_TDATA [30];
  assign m_axis_tx_TDATA[27:17] = \^m_axis_tx_TDATA [27:17];
  assign m_axis_tx_TDATA[16] = \^m_axis_tx_TDATA [0];
  assign m_axis_tx_TDATA[15] = \<const0> ;
  assign m_axis_tx_TDATA[14] = \<const0> ;
  assign m_axis_tx_TDATA[13] = \<const0> ;
  assign m_axis_tx_TDATA[12] = \<const0> ;
  assign m_axis_tx_TDATA[11:0] = \^m_axis_tx_TDATA [11:0];
  assign m_axis_tx_TKEEP[3] = \^m_axis_tx_TSTRB [2];
  assign m_axis_tx_TKEEP[2] = \^m_axis_tx_TSTRB [2];
  assign m_axis_tx_TKEEP[1] = \^m_axis_tx_TSTRB [2];
  assign m_axis_tx_TKEEP[0] = \^m_axis_tx_TSTRB [2];
  assign m_axis_tx_TSTRB[3] = \^m_axis_tx_TSTRB [2];
  assign m_axis_tx_TSTRB[2] = \^m_axis_tx_TSTRB [2];
  assign m_axis_tx_TSTRB[1] = \^m_axis_tx_TSTRB [2];
  assign m_axis_tx_TSTRB[0] = \^m_axis_tx_TSTRB [2];
  assign s_axi_CTRL_BRESP[1] = \<const0> ;
  assign s_axi_CTRL_BRESP[0] = \<const0> ;
  assign s_axi_CTRL_RDATA[31] = \<const0> ;
  assign s_axi_CTRL_RDATA[30] = \<const0> ;
  assign s_axi_CTRL_RDATA[29] = \<const0> ;
  assign s_axi_CTRL_RDATA[28] = \<const0> ;
  assign s_axi_CTRL_RDATA[27] = \<const0> ;
  assign s_axi_CTRL_RDATA[26] = \<const0> ;
  assign s_axi_CTRL_RDATA[25] = \<const0> ;
  assign s_axi_CTRL_RDATA[24] = \<const0> ;
  assign s_axi_CTRL_RDATA[23] = \<const0> ;
  assign s_axi_CTRL_RDATA[22] = \<const0> ;
  assign s_axi_CTRL_RDATA[21] = \<const0> ;
  assign s_axi_CTRL_RDATA[20] = \<const0> ;
  assign s_axi_CTRL_RDATA[19] = \<const0> ;
  assign s_axi_CTRL_RDATA[18] = \<const0> ;
  assign s_axi_CTRL_RDATA[17] = \<const0> ;
  assign s_axi_CTRL_RDATA[16] = \<const0> ;
  assign s_axi_CTRL_RDATA[15] = \<const0> ;
  assign s_axi_CTRL_RDATA[14] = \<const0> ;
  assign s_axi_CTRL_RDATA[13] = \<const0> ;
  assign s_axi_CTRL_RDATA[12] = \<const0> ;
  assign s_axi_CTRL_RDATA[11] = \<const0> ;
  assign s_axi_CTRL_RDATA[10] = \<const0> ;
  assign s_axi_CTRL_RDATA[9] = \^s_axi_CTRL_RDATA [9];
  assign s_axi_CTRL_RDATA[8] = \<const0> ;
  assign s_axi_CTRL_RDATA[7] = \^s_axi_CTRL_RDATA [7];
  assign s_axi_CTRL_RDATA[6] = \<const0> ;
  assign s_axi_CTRL_RDATA[5] = \<const0> ;
  assign s_axi_CTRL_RDATA[4] = \<const0> ;
  assign s_axi_CTRL_RDATA[3:0] = \^s_axi_CTRL_RDATA [3:0];
  assign s_axi_CTRL_RRESP[1] = \<const0> ;
  assign s_axi_CTRL_RRESP[0] = \<const0> ;
  design_1_lfm_tdm_gen_0_0_lfm_tdm_gen_CTRL_s_axi CTRL_s_axi_U
       (.D({sample_fu_306_p2[10:9],CTRL_s_axi_U_n_12,sample_fu_306_p2[3],sample_fu_306_p2[0]}),
        .E(ap_condition_150),
        .\FSM_onehot_rstate_reg[1]_0 (s_axi_CTRL_ARREADY),
        .\FSM_onehot_wstate_reg[1]_0 (s_axi_CTRL_AWREADY),
        .\FSM_onehot_wstate_reg[2]_0 (s_axi_CTRL_WREADY),
        .Q(indvar_flatten2_fu_116),
        .ap_clk(ap_clk),
        .ap_condition_exit_pp0_iter0_stage0(ap_condition_exit_pp0_iter0_stage0),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .ap_enable_reg_pp0_iter10(ap_enable_reg_pp0_iter10),
        .ap_enable_reg_pp0_iter2(ap_enable_reg_pp0_iter2),
        .ap_enable_reg_pp0_iter3(ap_enable_reg_pp0_iter3),
        .ap_enable_reg_pp0_iter4(ap_enable_reg_pp0_iter4),
        .ap_enable_reg_pp0_iter5(ap_enable_reg_pp0_iter5),
        .ap_enable_reg_pp0_iter6(ap_enable_reg_pp0_iter6),
        .ap_enable_reg_pp0_iter7(ap_enable_reg_pp0_iter7),
        .ap_enable_reg_pp0_iter8(ap_enable_reg_pp0_iter8),
        .ap_enable_reg_pp0_iter9(ap_enable_reg_pp0_iter9),
        .ap_loop_exit_ready_pp0_iter10_reg(ap_loop_exit_ready_pp0_iter10_reg),
        .ap_loop_init(ap_loop_init),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_0(CTRL_s_axi_U_n_7),
        .ap_rst_n_inv(ap_rst_n_inv),
        .ap_start(ap_start),
        .\chirp_18_fu_128_reg[1] (CTRL_s_axi_U_n_25),
        .\chirp_18_fu_128_reg[1]_0 (chirp_fu_324_p2[1]),
        .\chirp_18_fu_128_reg[1]_1 (chirp_18_fu_128[1:0]),
        .\chirp_18_fu_128_reg[1]_2 (chirp3_fu_120[1:0]),
        .icmp_ln53_fu_330_p2(icmp_ln53_fu_330_p2),
        .icmp_ln53_reg_450(icmp_ln53_reg_450),
        .icmp_ln57_reg_445(icmp_ln57_reg_445),
        .int_ap_start_reg_0(CTRL_s_axi_U_n_23),
        .int_ap_start_reg_1(regslice_both_m_axis_tx_V_data_V_U_n_9),
        .int_ap_start_reg_2(regslice_both_m_axis_tx_V_data_V_U_n_7),
        .\int_isr_reg[0]_0 (regslice_both_m_axis_tx_V_data_V_U_n_1),
        .int_task_ap_done_reg_0(regslice_both_m_axis_tx_V_data_V_U_n_8),
        .interrupt(interrupt),
        .s_axi_CTRL_ARADDR(s_axi_CTRL_ARADDR),
        .s_axi_CTRL_ARVALID(s_axi_CTRL_ARVALID),
        .s_axi_CTRL_AWADDR(s_axi_CTRL_AWADDR[3:2]),
        .s_axi_CTRL_AWVALID(s_axi_CTRL_AWVALID),
        .s_axi_CTRL_BREADY(s_axi_CTRL_BREADY),
        .s_axi_CTRL_BVALID(s_axi_CTRL_BVALID),
        .s_axi_CTRL_RDATA({\^s_axi_CTRL_RDATA [9],\^s_axi_CTRL_RDATA [7],\^s_axi_CTRL_RDATA [3:0]}),
        .s_axi_CTRL_RREADY(s_axi_CTRL_RREADY),
        .s_axi_CTRL_RVALID(s_axi_CTRL_RVALID),
        .s_axi_CTRL_WDATA({s_axi_CTRL_WDATA[7],s_axi_CTRL_WDATA[1:0]}),
        .s_axi_CTRL_WSTRB(s_axi_CTRL_WSTRB[0]),
        .s_axi_CTRL_WVALID(s_axi_CTRL_WVALID),
        .\sample4_fu_124_reg[10] (flow_control_loop_pipe_U_n_15),
        .\sample4_fu_124_reg[10]_0 (flow_control_loop_pipe_U_n_29),
        .\sample4_fu_124_reg[2] (CTRL_s_axi_U_n_15),
        .\sample4_fu_124_reg[8] (flow_control_loop_pipe_U_n_14),
        .\sample4_fu_124_reg[9] (sample4_fu_124[9:0]),
        .select_ln53_fu_262_p3({select_ln53_fu_262_p3[9:5],select_ln53_fu_262_p3[3:2]}),
        .tx_word_last_fu_300_p2(tx_word_last_fu_300_p2),
        .\tx_word_last_reg_440_pp0_iter8_reg_reg[0] (flow_control_loop_pipe_U_n_28),
        .\tx_word_last_reg_440_pp0_iter8_reg_reg[0]_0 (chirp_2_fu_270_p3[2]));
  GND GND
       (.G(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter10_reg
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(ap_enable_reg_pp0_iter9),
        .Q(ap_enable_reg_pp0_iter10),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(ap_start),
        .Q(ap_enable_reg_pp0_iter1),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter2_reg
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(ap_enable_reg_pp0_iter1),
        .Q(ap_enable_reg_pp0_iter2),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter3_reg
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(ap_enable_reg_pp0_iter2),
        .Q(ap_enable_reg_pp0_iter3),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter4_reg
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(ap_enable_reg_pp0_iter3),
        .Q(ap_enable_reg_pp0_iter4),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter5_reg
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(ap_enable_reg_pp0_iter4),
        .Q(ap_enable_reg_pp0_iter5),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter6_reg
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(ap_enable_reg_pp0_iter5),
        .Q(ap_enable_reg_pp0_iter6),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter7_reg
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(ap_enable_reg_pp0_iter6),
        .Q(ap_enable_reg_pp0_iter7),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter8_reg
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(ap_enable_reg_pp0_iter7),
        .Q(ap_enable_reg_pp0_iter8),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter9_reg
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(ap_enable_reg_pp0_iter8),
        .Q(ap_enable_reg_pp0_iter9),
        .R(ap_rst_n_inv));
  FDRE ap_loop_exit_ready_pp0_iter10_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(regslice_both_m_axis_tx_V_data_V_U_n_0),
        .Q(ap_loop_exit_ready_pp0_iter10_reg),
        .R(1'b0));
  (* srl_name = "inst/ap_loop_exit_ready_pp0_iter8_reg_reg_srl8" *) 
  SRL16E ap_loop_exit_ready_pp0_iter8_reg_reg_srl8
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(ap_condition_exit_pp0_iter0_stage0),
        .Q(ap_loop_exit_ready_pp0_iter8_reg_reg_srl8_n_0));
  FDRE ap_loop_exit_ready_pp0_iter9_reg_reg
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(ap_loop_exit_ready_pp0_iter8_reg_reg_srl8_n_0),
        .Q(ap_loop_exit_ready_pp0_iter9_reg),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \chirp3_fu_120_reg[0] 
       (.C(ap_clk),
        .CE(ap_condition_150),
        .D(chirp_2_fu_270_p3[0]),
        .Q(chirp3_fu_120[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \chirp3_fu_120_reg[1] 
       (.C(ap_clk),
        .CE(ap_condition_150),
        .D(chirp_2_fu_270_p3[1]),
        .Q(chirp3_fu_120[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \chirp3_fu_120_reg[2] 
       (.C(ap_clk),
        .CE(ap_condition_150),
        .D(chirp_2_fu_270_p3[2]),
        .Q(chirp3_fu_120[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \chirp_18_fu_128_reg[0] 
       (.C(ap_clk),
        .CE(ap_condition_150),
        .D(chirp_fu_324_p2[0]),
        .Q(chirp_18_fu_128[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \chirp_18_fu_128_reg[1] 
       (.C(ap_clk),
        .CE(ap_condition_150),
        .D(chirp_fu_324_p2[1]),
        .Q(chirp_18_fu_128[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \chirp_18_fu_128_reg[2] 
       (.C(ap_clk),
        .CE(ap_condition_150),
        .D(chirp_fu_324_p2[2]),
        .Q(chirp_18_fu_128[2]),
        .R(1'b0));
  design_1_lfm_tdm_gen_0_0_lfm_tdm_gen_flow_control_loop_pipe flow_control_loop_pipe_U
       (.D(add_ln53_fu_312_p2),
        .Q(indvar_flatten2_fu_116),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .ap_loop_init(ap_loop_init),
        .ap_loop_init_reg_0({sample_fu_306_p2[7:4],sample_fu_306_p2[2:1]}),
        .ap_loop_init_reg_1(flow_control_loop_pipe_U_n_28),
        .ap_loop_init_reg_2(CTRL_s_axi_U_n_7),
        .ap_start(ap_start),
        .\chirp3_fu_120_reg[2] (chirp_2_fu_270_p3),
        .\chirp3_fu_120_reg[2]_0 ({chirp_fu_324_p2[2],chirp_fu_324_p2[0]}),
        .\chirp3_fu_120_reg[2]_1 (chirp_18_fu_128),
        .\chirp3_fu_120_reg[2]_2 (chirp3_fu_120),
        .\chirp_18_fu_128_reg[2] (CTRL_s_axi_U_n_25),
        .icmp_ln53_reg_450(icmp_ln53_reg_450),
        .icmp_ln57_fu_318_p2(icmp_ln57_fu_318_p2),
        .icmp_ln57_reg_445(icmp_ln57_reg_445),
        .\icmp_ln57_reg_445_reg[0] (flow_control_loop_pipe_U_n_14),
        .\icmp_ln57_reg_445_reg[0]_0 ({select_ln53_fu_262_p3[4],select_ln53_fu_262_p3[1:0]}),
        .\icmp_ln57_reg_445_reg[0]_1 (sample4_fu_124),
        .\icmp_ln57_reg_445_reg[0]_2 (CTRL_s_axi_U_n_15),
        .\sample4_fu_124_reg[10] (flow_control_loop_pipe_U_n_29),
        .\sample4_fu_124_reg[5] (CTRL_s_axi_U_n_23),
        .\sample4_fu_124_reg[8] (flow_control_loop_pipe_U_n_15),
        .select_ln53_fu_262_p3(select_ln53_fu_262_p3[7]));
  FDRE \icmp_ln53_reg_450_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(icmp_ln53_fu_330_p2),
        .Q(icmp_ln53_reg_450),
        .R(1'b0));
  FDRE \icmp_ln57_reg_445_reg[0] 
       (.C(ap_clk),
        .CE(ap_condition_150),
        .D(icmp_ln57_fu_318_p2),
        .Q(icmp_ln57_reg_445),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten2_fu_116_reg[0] 
       (.C(ap_clk),
        .CE(ap_condition_150),
        .D(add_ln53_fu_312_p2[0]),
        .Q(indvar_flatten2_fu_116[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten2_fu_116_reg[10] 
       (.C(ap_clk),
        .CE(ap_condition_150),
        .D(add_ln53_fu_312_p2[10]),
        .Q(indvar_flatten2_fu_116[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten2_fu_116_reg[11] 
       (.C(ap_clk),
        .CE(ap_condition_150),
        .D(add_ln53_fu_312_p2[11]),
        .Q(indvar_flatten2_fu_116[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten2_fu_116_reg[1] 
       (.C(ap_clk),
        .CE(ap_condition_150),
        .D(add_ln53_fu_312_p2[1]),
        .Q(indvar_flatten2_fu_116[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten2_fu_116_reg[2] 
       (.C(ap_clk),
        .CE(ap_condition_150),
        .D(add_ln53_fu_312_p2[2]),
        .Q(indvar_flatten2_fu_116[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten2_fu_116_reg[3] 
       (.C(ap_clk),
        .CE(ap_condition_150),
        .D(add_ln53_fu_312_p2[3]),
        .Q(indvar_flatten2_fu_116[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten2_fu_116_reg[4] 
       (.C(ap_clk),
        .CE(ap_condition_150),
        .D(add_ln53_fu_312_p2[4]),
        .Q(indvar_flatten2_fu_116[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten2_fu_116_reg[5] 
       (.C(ap_clk),
        .CE(ap_condition_150),
        .D(add_ln53_fu_312_p2[5]),
        .Q(indvar_flatten2_fu_116[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten2_fu_116_reg[6] 
       (.C(ap_clk),
        .CE(ap_condition_150),
        .D(add_ln53_fu_312_p2[6]),
        .Q(indvar_flatten2_fu_116[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten2_fu_116_reg[7] 
       (.C(ap_clk),
        .CE(ap_condition_150),
        .D(add_ln53_fu_312_p2[7]),
        .Q(indvar_flatten2_fu_116[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten2_fu_116_reg[8] 
       (.C(ap_clk),
        .CE(ap_condition_150),
        .D(add_ln53_fu_312_p2[8]),
        .Q(indvar_flatten2_fu_116[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten2_fu_116_reg[9] 
       (.C(ap_clk),
        .CE(ap_condition_150),
        .D(add_ln53_fu_312_p2[9]),
        .Q(indvar_flatten2_fu_116[9]),
        .R(1'b0));
  design_1_lfm_tdm_gen_0_0_lfm_tdm_gen_mac_muladd_10ns_3ns_10ns_12_4_1 mac_muladd_10ns_3ns_10ns_12_4_1_U2
       (.C(trunc_ln60_reg_435_pp0_iter6_reg),
        .D(mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_12),
        .P({mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_0,mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_1,mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_2,mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_3,mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_4,mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_5,mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_6,mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_7,mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_8,mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_9,mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_10,mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_11}),
        .Q(\loop[2].remd_tmp_reg[3] ),
        .ap_block_pp0_stage0_subdone(ap_block_pp0_stage0_subdone),
        .ap_clk(ap_clk),
        .ap_clk_0({mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_13,mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_14,mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_15,mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_16,mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_17,mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_18,mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_19,mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_20,mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_21,mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_22,mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_23,mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_24}),
        .ap_clk_1(mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_25),
        .ap_clk_2(mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_26),
        .\data_p1_reg[19] (regslice_both_m_axis_tx_V_data_V_U_n_10),
        .\data_p1_reg[19]_0 (regslice_both_m_axis_tx_V_data_V_U_n_5));
  FDRE \q_val_reg_469_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_11),
        .Q(\^dbg_lfm_q [0]),
        .R(1'b0));
  FDRE \q_val_reg_469_reg[10] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_15),
        .Q(\^dbg_lfm_q [10]),
        .R(1'b0));
  FDRE \q_val_reg_469_reg[11] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_14),
        .Q(\^dbg_lfm_q [11]),
        .R(1'b0));
  FDRE \q_val_reg_469_reg[12] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_13),
        .Q(\^dbg_lfm_q [15]),
        .R(1'b0));
  FDRE \q_val_reg_469_reg[1] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_24),
        .Q(\^dbg_lfm_q [1]),
        .R(1'b0));
  FDRE \q_val_reg_469_reg[2] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_23),
        .Q(\^dbg_lfm_q [2]),
        .R(1'b0));
  FDRE \q_val_reg_469_reg[3] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_22),
        .Q(\^dbg_lfm_q [3]),
        .R(1'b0));
  FDRE \q_val_reg_469_reg[4] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_21),
        .Q(\^dbg_lfm_q [4]),
        .R(1'b0));
  FDRE \q_val_reg_469_reg[5] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_20),
        .Q(\^dbg_lfm_q [5]),
        .R(1'b0));
  FDRE \q_val_reg_469_reg[6] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_19),
        .Q(\^dbg_lfm_q [6]),
        .R(1'b0));
  FDRE \q_val_reg_469_reg[7] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_18),
        .Q(\^dbg_lfm_q [7]),
        .R(1'b0));
  FDRE \q_val_reg_469_reg[8] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_17),
        .Q(\^dbg_lfm_q [8]),
        .R(1'b0));
  FDRE \q_val_reg_469_reg[9] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_16),
        .Q(\^dbg_lfm_q [9]),
        .R(1'b0));
  design_1_lfm_tdm_gen_0_0_lfm_tdm_gen_regslice_both regslice_both_m_axis_tx_V_data_V_U
       (.D({mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_13,mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_14,mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_15,mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_16,mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_17,mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_18,mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_19,mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_20,mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_21,mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_22,mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_23,mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_24}),
        .E(ap_condition_150),
        .\FSM_sequential_state_reg[1]_0 (regslice_both_m_axis_tx_V_data_V_U_n_5),
        .\FSM_sequential_state_reg[1]_1 (regslice_both_m_axis_tx_V_data_V_U_n_7),
        .P({mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_0,mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_1,mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_2,mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_3,mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_4,mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_5,mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_6,mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_7,mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_8,mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_9,mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_10,mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_11}),
        .Q(regslice_both_m_axis_tx_V_data_V_U_n_10),
        .ack_in_t_reg_0(regslice_both_m_axis_tx_V_data_V_U_n_9),
        .ap_block_pp0_stage0_subdone(ap_block_pp0_stage0_subdone),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter10(ap_enable_reg_pp0_iter10),
        .ap_enable_reg_pp0_iter10_reg(regslice_both_m_axis_tx_V_data_V_U_n_8),
        .ap_enable_reg_pp0_iter9(ap_enable_reg_pp0_iter9),
        .ap_enable_reg_pp0_iter9_reg(regslice_both_m_axis_tx_V_data_V_U_n_1),
        .ap_loop_exit_ready_pp0_iter10_reg(ap_loop_exit_ready_pp0_iter10_reg),
        .ap_loop_exit_ready_pp0_iter10_reg_reg(regslice_both_m_axis_tx_V_data_V_U_n_0),
        .ap_loop_exit_ready_pp0_iter9_reg(ap_loop_exit_ready_pp0_iter9_reg),
        .ap_rst_n_inv(ap_rst_n_inv),
        .ap_start(ap_start),
        .\data_p1_reg[19]_0 (mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_12),
        .\data_p1_reg[22]_0 (mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_25),
        .\data_p1_reg[27]_0 (mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_26),
        .m_axis_tx_TDATA({\^m_axis_tx_TDATA [30],\^m_axis_tx_TDATA [27:17],\^m_axis_tx_TDATA [0],\^m_axis_tx_TDATA [11:1]}),
        .m_axis_tx_TREADY(m_axis_tx_TREADY),
        .m_axis_tx_TVALID(m_axis_tx_TVALID),
        .m_axis_tx_TVALID_int_regslice(m_axis_tx_TVALID_int_regslice));
  design_1_lfm_tdm_gen_0_0_lfm_tdm_gen_regslice_both__parameterized0 regslice_both_m_axis_tx_V_keep_V_U
       (.ap_clk(ap_clk),
        .ap_rst_n_inv(ap_rst_n_inv),
        .m_axis_tx_TREADY(m_axis_tx_TREADY),
        .m_axis_tx_TSTRB(\^m_axis_tx_TSTRB ),
        .m_axis_tx_TVALID_int_regslice(m_axis_tx_TVALID_int_regslice));
  design_1_lfm_tdm_gen_0_0_lfm_tdm_gen_regslice_both__parameterized1 regslice_both_m_axis_tx_V_last_V_U
       (.ap_clk(ap_clk),
        .ap_rst_n_inv(ap_rst_n_inv),
        .m_axis_tx_TLAST(m_axis_tx_TLAST),
        .m_axis_tx_TREADY(m_axis_tx_TREADY),
        .m_axis_tx_TVALID_int_regslice(m_axis_tx_TVALID_int_regslice),
        .tx_word_last_reg_440_pp0_iter8_reg(tx_word_last_reg_440_pp0_iter8_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sample4_fu_124_reg[0] 
       (.C(ap_clk),
        .CE(ap_condition_150),
        .D(sample_fu_306_p2[0]),
        .Q(sample4_fu_124[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample4_fu_124_reg[10] 
       (.C(ap_clk),
        .CE(ap_condition_150),
        .D(sample_fu_306_p2[10]),
        .Q(sample4_fu_124[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample4_fu_124_reg[1] 
       (.C(ap_clk),
        .CE(ap_condition_150),
        .D(sample_fu_306_p2[1]),
        .Q(sample4_fu_124[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample4_fu_124_reg[2] 
       (.C(ap_clk),
        .CE(ap_condition_150),
        .D(sample_fu_306_p2[2]),
        .Q(sample4_fu_124[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample4_fu_124_reg[3] 
       (.C(ap_clk),
        .CE(ap_condition_150),
        .D(sample_fu_306_p2[3]),
        .Q(sample4_fu_124[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample4_fu_124_reg[4] 
       (.C(ap_clk),
        .CE(ap_condition_150),
        .D(sample_fu_306_p2[4]),
        .Q(sample4_fu_124[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample4_fu_124_reg[5] 
       (.C(ap_clk),
        .CE(ap_condition_150),
        .D(sample_fu_306_p2[5]),
        .Q(sample4_fu_124[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample4_fu_124_reg[6] 
       (.C(ap_clk),
        .CE(ap_condition_150),
        .D(sample_fu_306_p2[6]),
        .Q(sample4_fu_124[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample4_fu_124_reg[7] 
       (.C(ap_clk),
        .CE(ap_condition_150),
        .D(sample_fu_306_p2[7]),
        .Q(sample4_fu_124[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample4_fu_124_reg[8] 
       (.C(ap_clk),
        .CE(ap_condition_150),
        .D(CTRL_s_axi_U_n_12),
        .Q(sample4_fu_124[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample4_fu_124_reg[9] 
       (.C(ap_clk),
        .CE(ap_condition_150),
        .D(sample_fu_306_p2[9]),
        .Q(sample4_fu_124[9]),
        .R(1'b0));
  (* srl_bus_name = "inst/\\trunc_ln60_reg_435_pp0_iter5_reg_reg " *) 
  (* srl_name = "inst/\\trunc_ln60_reg_435_pp0_iter5_reg_reg[0]_srl6 " *) 
  SRL16E \trunc_ln60_reg_435_pp0_iter5_reg_reg[0]_srl6 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(select_ln53_fu_262_p3[0]),
        .Q(\trunc_ln60_reg_435_pp0_iter5_reg_reg[0]_srl6_n_0 ));
  (* srl_bus_name = "inst/\\trunc_ln60_reg_435_pp0_iter5_reg_reg " *) 
  (* srl_name = "inst/\\trunc_ln60_reg_435_pp0_iter5_reg_reg[1]_srl6 " *) 
  SRL16E \trunc_ln60_reg_435_pp0_iter5_reg_reg[1]_srl6 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(select_ln53_fu_262_p3[1]),
        .Q(\trunc_ln60_reg_435_pp0_iter5_reg_reg[1]_srl6_n_0 ));
  (* srl_bus_name = "inst/\\trunc_ln60_reg_435_pp0_iter5_reg_reg " *) 
  (* srl_name = "inst/\\trunc_ln60_reg_435_pp0_iter5_reg_reg[2]_srl6 " *) 
  SRL16E \trunc_ln60_reg_435_pp0_iter5_reg_reg[2]_srl6 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(select_ln53_fu_262_p3[2]),
        .Q(\trunc_ln60_reg_435_pp0_iter5_reg_reg[2]_srl6_n_0 ));
  (* srl_bus_name = "inst/\\trunc_ln60_reg_435_pp0_iter5_reg_reg " *) 
  (* srl_name = "inst/\\trunc_ln60_reg_435_pp0_iter5_reg_reg[3]_srl6 " *) 
  SRL16E \trunc_ln60_reg_435_pp0_iter5_reg_reg[3]_srl6 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(select_ln53_fu_262_p3[3]),
        .Q(\trunc_ln60_reg_435_pp0_iter5_reg_reg[3]_srl6_n_0 ));
  (* srl_bus_name = "inst/\\trunc_ln60_reg_435_pp0_iter5_reg_reg " *) 
  (* srl_name = "inst/\\trunc_ln60_reg_435_pp0_iter5_reg_reg[4]_srl6 " *) 
  SRL16E \trunc_ln60_reg_435_pp0_iter5_reg_reg[4]_srl6 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(select_ln53_fu_262_p3[4]),
        .Q(\trunc_ln60_reg_435_pp0_iter5_reg_reg[4]_srl6_n_0 ));
  (* srl_bus_name = "inst/\\trunc_ln60_reg_435_pp0_iter5_reg_reg " *) 
  (* srl_name = "inst/\\trunc_ln60_reg_435_pp0_iter5_reg_reg[5]_srl6 " *) 
  SRL16E \trunc_ln60_reg_435_pp0_iter5_reg_reg[5]_srl6 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(select_ln53_fu_262_p3[5]),
        .Q(\trunc_ln60_reg_435_pp0_iter5_reg_reg[5]_srl6_n_0 ));
  (* srl_bus_name = "inst/\\trunc_ln60_reg_435_pp0_iter5_reg_reg " *) 
  (* srl_name = "inst/\\trunc_ln60_reg_435_pp0_iter5_reg_reg[6]_srl6 " *) 
  SRL16E \trunc_ln60_reg_435_pp0_iter5_reg_reg[6]_srl6 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(select_ln53_fu_262_p3[6]),
        .Q(\trunc_ln60_reg_435_pp0_iter5_reg_reg[6]_srl6_n_0 ));
  (* srl_bus_name = "inst/\\trunc_ln60_reg_435_pp0_iter5_reg_reg " *) 
  (* srl_name = "inst/\\trunc_ln60_reg_435_pp0_iter5_reg_reg[7]_srl6 " *) 
  SRL16E \trunc_ln60_reg_435_pp0_iter5_reg_reg[7]_srl6 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(select_ln53_fu_262_p3[7]),
        .Q(\trunc_ln60_reg_435_pp0_iter5_reg_reg[7]_srl6_n_0 ));
  (* srl_bus_name = "inst/\\trunc_ln60_reg_435_pp0_iter5_reg_reg " *) 
  (* srl_name = "inst/\\trunc_ln60_reg_435_pp0_iter5_reg_reg[8]_srl6 " *) 
  SRL16E \trunc_ln60_reg_435_pp0_iter5_reg_reg[8]_srl6 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(select_ln53_fu_262_p3[8]),
        .Q(\trunc_ln60_reg_435_pp0_iter5_reg_reg[8]_srl6_n_0 ));
  (* srl_bus_name = "inst/\\trunc_ln60_reg_435_pp0_iter5_reg_reg " *) 
  (* srl_name = "inst/\\trunc_ln60_reg_435_pp0_iter5_reg_reg[9]_srl6 " *) 
  SRL16E \trunc_ln60_reg_435_pp0_iter5_reg_reg[9]_srl6 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(select_ln53_fu_262_p3[9]),
        .Q(\trunc_ln60_reg_435_pp0_iter5_reg_reg[9]_srl6_n_0 ));
  FDRE \trunc_ln60_reg_435_pp0_iter6_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\trunc_ln60_reg_435_pp0_iter5_reg_reg[0]_srl6_n_0 ),
        .Q(trunc_ln60_reg_435_pp0_iter6_reg[0]),
        .R(1'b0));
  FDRE \trunc_ln60_reg_435_pp0_iter6_reg_reg[1] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\trunc_ln60_reg_435_pp0_iter5_reg_reg[1]_srl6_n_0 ),
        .Q(trunc_ln60_reg_435_pp0_iter6_reg[1]),
        .R(1'b0));
  FDRE \trunc_ln60_reg_435_pp0_iter6_reg_reg[2] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\trunc_ln60_reg_435_pp0_iter5_reg_reg[2]_srl6_n_0 ),
        .Q(trunc_ln60_reg_435_pp0_iter6_reg[2]),
        .R(1'b0));
  FDRE \trunc_ln60_reg_435_pp0_iter6_reg_reg[3] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\trunc_ln60_reg_435_pp0_iter5_reg_reg[3]_srl6_n_0 ),
        .Q(trunc_ln60_reg_435_pp0_iter6_reg[3]),
        .R(1'b0));
  FDRE \trunc_ln60_reg_435_pp0_iter6_reg_reg[4] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\trunc_ln60_reg_435_pp0_iter5_reg_reg[4]_srl6_n_0 ),
        .Q(trunc_ln60_reg_435_pp0_iter6_reg[4]),
        .R(1'b0));
  FDRE \trunc_ln60_reg_435_pp0_iter6_reg_reg[5] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\trunc_ln60_reg_435_pp0_iter5_reg_reg[5]_srl6_n_0 ),
        .Q(trunc_ln60_reg_435_pp0_iter6_reg[5]),
        .R(1'b0));
  FDRE \trunc_ln60_reg_435_pp0_iter6_reg_reg[6] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\trunc_ln60_reg_435_pp0_iter5_reg_reg[6]_srl6_n_0 ),
        .Q(trunc_ln60_reg_435_pp0_iter6_reg[6]),
        .R(1'b0));
  FDRE \trunc_ln60_reg_435_pp0_iter6_reg_reg[7] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\trunc_ln60_reg_435_pp0_iter5_reg_reg[7]_srl6_n_0 ),
        .Q(trunc_ln60_reg_435_pp0_iter6_reg[7]),
        .R(1'b0));
  FDRE \trunc_ln60_reg_435_pp0_iter6_reg_reg[8] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\trunc_ln60_reg_435_pp0_iter5_reg_reg[8]_srl6_n_0 ),
        .Q(trunc_ln60_reg_435_pp0_iter6_reg[8]),
        .R(1'b0));
  FDRE \trunc_ln60_reg_435_pp0_iter6_reg_reg[9] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\trunc_ln60_reg_435_pp0_iter5_reg_reg[9]_srl6_n_0 ),
        .Q(trunc_ln60_reg_435_pp0_iter6_reg[9]),
        .R(1'b0));
  (* srl_bus_name = "inst/\\tx_word_last_reg_440_pp0_iter7_reg_reg " *) 
  (* srl_name = "inst/\\tx_word_last_reg_440_pp0_iter7_reg_reg[0]_srl8 " *) 
  SRL16E \tx_word_last_reg_440_pp0_iter7_reg_reg[0]_srl8 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(tx_word_last_fu_300_p2),
        .Q(\tx_word_last_reg_440_pp0_iter7_reg_reg[0]_srl8_n_0 ));
  FDRE \tx_word_last_reg_440_pp0_iter8_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\tx_word_last_reg_440_pp0_iter7_reg_reg[0]_srl8_n_0 ),
        .Q(tx_word_last_reg_440_pp0_iter8_reg),
        .R(1'b0));
  design_1_lfm_tdm_gen_0_0_lfm_tdm_gen_urem_3ns_3ns_3_7_1 urem_3ns_3ns_3_7_1_U1
       (.D(chirp_2_fu_270_p3),
        .Q(\loop[2].remd_tmp_reg[3] ),
        .ap_block_pp0_stage0_subdone(ap_block_pp0_stage0_subdone),
        .ap_clk(ap_clk));
  FDRE \zext_ln62_reg_464_reg[0] 
       (.C(ap_clk),
        .CE(m_axis_tx_TVALID_int_regslice),
        .D(mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_11),
        .Q(\^dbg_lfm_i [0]),
        .R(1'b0));
  FDRE \zext_ln62_reg_464_reg[10] 
       (.C(ap_clk),
        .CE(m_axis_tx_TVALID_int_regslice),
        .D(mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_1),
        .Q(\^dbg_lfm_i [10]),
        .R(1'b0));
  FDRE \zext_ln62_reg_464_reg[11] 
       (.C(ap_clk),
        .CE(m_axis_tx_TVALID_int_regslice),
        .D(mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_0),
        .Q(\^dbg_lfm_i [11]),
        .R(1'b0));
  FDRE \zext_ln62_reg_464_reg[1] 
       (.C(ap_clk),
        .CE(m_axis_tx_TVALID_int_regslice),
        .D(mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_10),
        .Q(\^dbg_lfm_i [1]),
        .R(1'b0));
  FDRE \zext_ln62_reg_464_reg[2] 
       (.C(ap_clk),
        .CE(m_axis_tx_TVALID_int_regslice),
        .D(mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_9),
        .Q(\^dbg_lfm_i [2]),
        .R(1'b0));
  FDRE \zext_ln62_reg_464_reg[3] 
       (.C(ap_clk),
        .CE(m_axis_tx_TVALID_int_regslice),
        .D(mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_8),
        .Q(\^dbg_lfm_i [3]),
        .R(1'b0));
  FDRE \zext_ln62_reg_464_reg[4] 
       (.C(ap_clk),
        .CE(m_axis_tx_TVALID_int_regslice),
        .D(mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_7),
        .Q(\^dbg_lfm_i [4]),
        .R(1'b0));
  FDRE \zext_ln62_reg_464_reg[5] 
       (.C(ap_clk),
        .CE(m_axis_tx_TVALID_int_regslice),
        .D(mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_6),
        .Q(\^dbg_lfm_i [5]),
        .R(1'b0));
  FDRE \zext_ln62_reg_464_reg[6] 
       (.C(ap_clk),
        .CE(m_axis_tx_TVALID_int_regslice),
        .D(mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_5),
        .Q(\^dbg_lfm_i [6]),
        .R(1'b0));
  FDRE \zext_ln62_reg_464_reg[7] 
       (.C(ap_clk),
        .CE(m_axis_tx_TVALID_int_regslice),
        .D(mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_4),
        .Q(\^dbg_lfm_i [7]),
        .R(1'b0));
  FDRE \zext_ln62_reg_464_reg[8] 
       (.C(ap_clk),
        .CE(m_axis_tx_TVALID_int_regslice),
        .D(mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_3),
        .Q(\^dbg_lfm_i [8]),
        .R(1'b0));
  FDRE \zext_ln62_reg_464_reg[9] 
       (.C(ap_clk),
        .CE(m_axis_tx_TVALID_int_regslice),
        .D(mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_2),
        .Q(\^dbg_lfm_i [9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "lfm_tdm_gen_CTRL_s_axi" *) 
module design_1_lfm_tdm_gen_0_0_lfm_tdm_gen_CTRL_s_axi
   (ap_rst_n_inv,
    interrupt,
    \FSM_onehot_rstate_reg[1]_0 ,
    s_axi_CTRL_RVALID,
    \FSM_onehot_wstate_reg[2]_0 ,
    s_axi_CTRL_BVALID,
    ap_start,
    ap_rst_n_0,
    ap_condition_exit_pp0_iter0_stage0,
    icmp_ln53_fu_330_p2,
    D,
    \sample4_fu_124_reg[2] ,
    select_ln53_fu_262_p3,
    int_ap_start_reg_0,
    tx_word_last_fu_300_p2,
    \chirp_18_fu_128_reg[1] ,
    \chirp_18_fu_128_reg[1]_0 ,
    \FSM_onehot_wstate_reg[1]_0 ,
    s_axi_CTRL_RDATA,
    ap_clk,
    s_axi_CTRL_ARVALID,
    s_axi_CTRL_ARADDR,
    s_axi_CTRL_RREADY,
    s_axi_CTRL_WSTRB,
    s_axi_CTRL_WVALID,
    s_axi_CTRL_WDATA,
    s_axi_CTRL_BREADY,
    ap_enable_reg_pp0_iter2,
    ap_enable_reg_pp0_iter5,
    ap_enable_reg_pp0_iter3,
    ap_enable_reg_pp0_iter9,
    ap_enable_reg_pp0_iter8,
    ap_enable_reg_pp0_iter10,
    ap_enable_reg_pp0_iter7,
    ap_enable_reg_pp0_iter4,
    ap_enable_reg_pp0_iter6,
    ap_enable_reg_pp0_iter1,
    ap_rst_n,
    ap_loop_init,
    E,
    int_ap_start_reg_1,
    int_ap_start_reg_2,
    Q,
    \sample4_fu_124_reg[10] ,
    \sample4_fu_124_reg[9] ,
    \sample4_fu_124_reg[10]_0 ,
    icmp_ln53_reg_450,
    icmp_ln57_reg_445,
    \tx_word_last_reg_440_pp0_iter8_reg_reg[0] ,
    \tx_word_last_reg_440_pp0_iter8_reg_reg[0]_0 ,
    \sample4_fu_124_reg[8] ,
    \chirp_18_fu_128_reg[1]_1 ,
    \chirp_18_fu_128_reg[1]_2 ,
    s_axi_CTRL_AWVALID,
    int_task_ap_done_reg_0,
    s_axi_CTRL_AWADDR,
    ap_loop_exit_ready_pp0_iter10_reg,
    \int_isr_reg[0]_0 );
  output ap_rst_n_inv;
  output interrupt;
  output \FSM_onehot_rstate_reg[1]_0 ;
  output s_axi_CTRL_RVALID;
  output \FSM_onehot_wstate_reg[2]_0 ;
  output s_axi_CTRL_BVALID;
  output ap_start;
  output ap_rst_n_0;
  output ap_condition_exit_pp0_iter0_stage0;
  output icmp_ln53_fu_330_p2;
  output [4:0]D;
  output \sample4_fu_124_reg[2] ;
  output [6:0]select_ln53_fu_262_p3;
  output int_ap_start_reg_0;
  output tx_word_last_fu_300_p2;
  output \chirp_18_fu_128_reg[1] ;
  output [0:0]\chirp_18_fu_128_reg[1]_0 ;
  output \FSM_onehot_wstate_reg[1]_0 ;
  output [5:0]s_axi_CTRL_RDATA;
  input ap_clk;
  input s_axi_CTRL_ARVALID;
  input [3:0]s_axi_CTRL_ARADDR;
  input s_axi_CTRL_RREADY;
  input [0:0]s_axi_CTRL_WSTRB;
  input s_axi_CTRL_WVALID;
  input [2:0]s_axi_CTRL_WDATA;
  input s_axi_CTRL_BREADY;
  input ap_enable_reg_pp0_iter2;
  input ap_enable_reg_pp0_iter5;
  input ap_enable_reg_pp0_iter3;
  input ap_enable_reg_pp0_iter9;
  input ap_enable_reg_pp0_iter8;
  input ap_enable_reg_pp0_iter10;
  input ap_enable_reg_pp0_iter7;
  input ap_enable_reg_pp0_iter4;
  input ap_enable_reg_pp0_iter6;
  input ap_enable_reg_pp0_iter1;
  input ap_rst_n;
  input ap_loop_init;
  input [0:0]E;
  input int_ap_start_reg_1;
  input int_ap_start_reg_2;
  input [11:0]Q;
  input \sample4_fu_124_reg[10] ;
  input [9:0]\sample4_fu_124_reg[9] ;
  input \sample4_fu_124_reg[10]_0 ;
  input icmp_ln53_reg_450;
  input icmp_ln57_reg_445;
  input \tx_word_last_reg_440_pp0_iter8_reg_reg[0] ;
  input [0:0]\tx_word_last_reg_440_pp0_iter8_reg_reg[0]_0 ;
  input \sample4_fu_124_reg[8] ;
  input [1:0]\chirp_18_fu_128_reg[1]_1 ;
  input [1:0]\chirp_18_fu_128_reg[1]_2 ;
  input s_axi_CTRL_AWVALID;
  input int_task_ap_done_reg_0;
  input [1:0]s_axi_CTRL_AWADDR;
  input ap_loop_exit_ready_pp0_iter10_reg;
  input \int_isr_reg[0]_0 ;

  wire [4:0]D;
  wire [0:0]E;
  wire \FSM_onehot_rstate[1]_i_1_n_0 ;
  wire \FSM_onehot_rstate[2]_i_1_n_0 ;
  wire \FSM_onehot_rstate_reg[1]_0 ;
  wire \FSM_onehot_wstate[1]_i_1_n_0 ;
  wire \FSM_onehot_wstate[2]_i_1_n_0 ;
  wire \FSM_onehot_wstate[3]_i_1_n_0 ;
  wire \FSM_onehot_wstate_reg[1]_0 ;
  wire \FSM_onehot_wstate_reg[2]_0 ;
  wire [11:0]Q;
  wire ap_clk;
  wire ap_condition_exit_pp0_iter0_stage0;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter10;
  wire ap_enable_reg_pp0_iter2;
  wire ap_enable_reg_pp0_iter3;
  wire ap_enable_reg_pp0_iter4;
  wire ap_enable_reg_pp0_iter5;
  wire ap_enable_reg_pp0_iter6;
  wire ap_enable_reg_pp0_iter7;
  wire ap_enable_reg_pp0_iter8;
  wire ap_enable_reg_pp0_iter9;
  wire ap_idle;
  wire ap_loop_exit_ready_pp0_iter10_reg;
  wire ap_loop_exit_ready_pp0_iter8_reg_reg_srl8_i_2_n_0;
  wire ap_loop_init;
  wire ap_rst_n;
  wire ap_rst_n_0;
  wire ap_rst_n_inv;
  wire ap_start;
  wire ar_hs;
  wire auto_restart_status_i_1_n_0;
  wire auto_restart_status_reg_n_0;
  wire \chirp_18_fu_128_reg[1] ;
  wire [0:0]\chirp_18_fu_128_reg[1]_0 ;
  wire [1:0]\chirp_18_fu_128_reg[1]_1 ;
  wire [1:0]\chirp_18_fu_128_reg[1]_2 ;
  wire icmp_ln53_fu_330_p2;
  wire icmp_ln53_reg_450;
  wire \icmp_ln53_reg_450[0]_i_2_n_0 ;
  wire \icmp_ln53_reg_450[0]_i_3_n_0 ;
  wire icmp_ln57_reg_445;
  wire \icmp_ln57_reg_445[0]_i_5_n_0 ;
  wire \icmp_ln57_reg_445[0]_i_6_n_0 ;
  wire int_ap_idle_i_2_n_0;
  wire int_ap_idle_i_3_n_0;
  wire int_ap_ready;
  wire int_ap_ready_i_1_n_0;
  wire int_ap_start5_out;
  wire int_ap_start_i_1_n_0;
  wire int_ap_start_reg_0;
  wire int_ap_start_reg_1;
  wire int_ap_start_reg_2;
  wire int_auto_restart_i_1_n_0;
  wire int_auto_restart_i_2_n_0;
  wire int_gie_i_1_n_0;
  wire int_gie_reg_n_0;
  wire int_ier10_out;
  wire \int_ier_reg_n_0_[0] ;
  wire int_interrupt0;
  wire int_isr7_out;
  wire \int_isr[0]_i_1_n_0 ;
  wire \int_isr[1]_i_1_n_0 ;
  wire \int_isr_reg[0]_0 ;
  wire \int_isr_reg_n_0_[0] ;
  wire \int_isr_reg_n_0_[1] ;
  wire int_task_ap_done;
  wire int_task_ap_done_i_1_n_0;
  wire int_task_ap_done_i_2_n_0;
  wire int_task_ap_done_reg_0;
  wire interrupt;
  wire [7:2]p_0_in;
  wire p_0_in__0;
  wire [1:0]rdata;
  wire \rdata[0]_i_2_n_0 ;
  wire \rdata[1]_i_2_n_0 ;
  wire \rdata[9]_i_1_n_0 ;
  wire [3:0]s_axi_CTRL_ARADDR;
  wire s_axi_CTRL_ARVALID;
  wire [1:0]s_axi_CTRL_AWADDR;
  wire s_axi_CTRL_AWVALID;
  wire s_axi_CTRL_BREADY;
  wire s_axi_CTRL_BVALID;
  wire [5:0]s_axi_CTRL_RDATA;
  wire s_axi_CTRL_RREADY;
  wire s_axi_CTRL_RVALID;
  wire [2:0]s_axi_CTRL_WDATA;
  wire [0:0]s_axi_CTRL_WSTRB;
  wire s_axi_CTRL_WVALID;
  wire \sample4_fu_124_reg[10] ;
  wire \sample4_fu_124_reg[10]_0 ;
  wire \sample4_fu_124_reg[2] ;
  wire \sample4_fu_124_reg[8] ;
  wire [9:0]\sample4_fu_124_reg[9] ;
  wire [6:0]select_ln53_fu_262_p3;
  wire tx_word_last_fu_300_p2;
  wire \tx_word_last_reg_440_pp0_iter8_reg_reg[0] ;
  wire [0:0]\tx_word_last_reg_440_pp0_iter8_reg_reg[0]_0 ;
  wire waddr;
  wire \waddr_reg_n_0_[2] ;
  wire \waddr_reg_n_0_[3] ;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8BFB)) 
    \FSM_onehot_rstate[1]_i_1 
       (.I0(s_axi_CTRL_RREADY),
        .I1(s_axi_CTRL_RVALID),
        .I2(\FSM_onehot_rstate_reg[1]_0 ),
        .I3(s_axi_CTRL_ARVALID),
        .O(\FSM_onehot_rstate[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_rstate[2]_i_1 
       (.I0(s_axi_CTRL_ARVALID),
        .I1(\FSM_onehot_rstate_reg[1]_0 ),
        .I2(s_axi_CTRL_RREADY),
        .I3(s_axi_CTRL_RVALID),
        .O(\FSM_onehot_rstate[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "RDIDLE:010,RDDATA:100,iSTATE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_rstate[1]_i_1_n_0 ),
        .Q(\FSM_onehot_rstate_reg[1]_0 ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "RDIDLE:010,RDDATA:100,iSTATE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rstate_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_rstate[2]_i_1_n_0 ),
        .Q(s_axi_CTRL_RVALID),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hBA30BA3F)) 
    \FSM_onehot_wstate[1]_i_1 
       (.I0(s_axi_CTRL_BREADY),
        .I1(s_axi_CTRL_AWVALID),
        .I2(\FSM_onehot_wstate_reg[1]_0 ),
        .I3(s_axi_CTRL_BVALID),
        .I4(\FSM_onehot_wstate_reg[2]_0 ),
        .O(\FSM_onehot_wstate[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_wstate[2]_i_1 
       (.I0(\FSM_onehot_wstate_reg[1]_0 ),
        .I1(s_axi_CTRL_AWVALID),
        .I2(s_axi_CTRL_WVALID),
        .I3(\FSM_onehot_wstate_reg[2]_0 ),
        .O(\FSM_onehot_wstate[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF444)) 
    \FSM_onehot_wstate[3]_i_1 
       (.I0(s_axi_CTRL_BREADY),
        .I1(s_axi_CTRL_BVALID),
        .I2(s_axi_CTRL_WVALID),
        .I3(\FSM_onehot_wstate_reg[2]_0 ),
        .O(\FSM_onehot_wstate[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[1]_i_1_n_0 ),
        .Q(\FSM_onehot_wstate_reg[1]_0 ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[2]_i_1_n_0 ),
        .Q(\FSM_onehot_wstate_reg[2]_0 ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[3]_i_1_n_0 ),
        .Q(s_axi_CTRL_BVALID),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    ap_loop_exit_ready_pp0_iter8_reg_reg_srl8_i_1
       (.I0(\icmp_ln53_reg_450[0]_i_3_n_0 ),
        .I1(ap_loop_exit_ready_pp0_iter8_reg_reg_srl8_i_2_n_0),
        .I2(\icmp_ln53_reg_450[0]_i_2_n_0 ),
        .I3(int_ap_start_reg_1),
        .I4(int_ap_start_reg_2),
        .I5(ap_start),
        .O(ap_condition_exit_pp0_iter0_stage0));
  LUT4 #(
    .INIT(16'h8000)) 
    ap_loop_exit_ready_pp0_iter8_reg_reg_srl8_i_2
       (.I0(Q[5]),
        .I1(Q[10]),
        .I2(Q[0]),
        .I3(Q[8]),
        .O(ap_loop_exit_ready_pp0_iter8_reg_reg_srl8_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hBBFB)) 
    ap_loop_init_i_1
       (.I0(ap_condition_exit_pp0_iter0_stage0),
        .I1(ap_rst_n),
        .I2(ap_loop_init),
        .I3(E),
        .O(ap_rst_n_0));
  LUT3 #(
    .INIT(8'hBA)) 
    auto_restart_status_i_1
       (.I0(p_0_in[7]),
        .I1(ap_idle),
        .I2(auto_restart_status_reg_n_0),
        .O(auto_restart_status_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    auto_restart_status_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(auto_restart_status_i_1_n_0),
        .Q(auto_restart_status_reg_n_0),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h0303F5FA0C0CF5FA)) 
    \chirp_18_fu_128[1]_i_1 
       (.I0(\chirp_18_fu_128_reg[1]_1 [1]),
        .I1(\chirp_18_fu_128_reg[1]_2 [1]),
        .I2(int_ap_start_reg_0),
        .I3(\chirp_18_fu_128_reg[1]_1 [0]),
        .I4(\sample4_fu_124_reg[8] ),
        .I5(\chirp_18_fu_128_reg[1]_2 [0]),
        .O(\chirp_18_fu_128_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hF3F3F5FFFFFFF5FF)) 
    \chirp_18_fu_128[2]_i_2 
       (.I0(\chirp_18_fu_128_reg[1]_1 [1]),
        .I1(\chirp_18_fu_128_reg[1]_2 [1]),
        .I2(int_ap_start_reg_0),
        .I3(\chirp_18_fu_128_reg[1]_1 [0]),
        .I4(\sample4_fu_124_reg[8] ),
        .I5(\chirp_18_fu_128_reg[1]_2 [0]),
        .O(\chirp_18_fu_128_reg[1] ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \icmp_ln53_reg_450[0]_i_1 
       (.I0(\icmp_ln53_reg_450[0]_i_2_n_0 ),
        .I1(Q[5]),
        .I2(Q[10]),
        .I3(Q[0]),
        .I4(Q[8]),
        .I5(\icmp_ln53_reg_450[0]_i_3_n_0 ),
        .O(icmp_ln53_fu_330_p2));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \icmp_ln53_reg_450[0]_i_2 
       (.I0(Q[1]),
        .I1(Q[6]),
        .I2(Q[2]),
        .I3(Q[9]),
        .O(\icmp_ln53_reg_450[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8FFFFFFFFFFFFFFF)) 
    \icmp_ln53_reg_450[0]_i_3 
       (.I0(ap_start),
        .I1(ap_loop_init),
        .I2(Q[3]),
        .I3(Q[11]),
        .I4(Q[4]),
        .I5(Q[7]),
        .O(\icmp_ln53_reg_450[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \icmp_ln57_reg_445[0]_i_3 
       (.I0(\sample4_fu_124_reg[9] [2]),
        .I1(\icmp_ln57_reg_445[0]_i_5_n_0 ),
        .I2(D[0]),
        .I3(select_ln53_fu_262_p3[1]),
        .I4(select_ln53_fu_262_p3[2]),
        .I5(\icmp_ln57_reg_445[0]_i_6_n_0 ),
        .O(\sample4_fu_124_reg[2] ));
  LUT6 #(
    .INIT(64'hDFDDFFFFDDDD5555)) 
    \icmp_ln57_reg_445[0]_i_5 
       (.I0(\sample4_fu_124_reg[9] [1]),
        .I1(ap_start),
        .I2(icmp_ln53_reg_450),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(ap_loop_init),
        .I5(icmp_ln57_reg_445),
        .O(\icmp_ln57_reg_445[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hDFDDFFFFDDDD5555)) 
    \icmp_ln57_reg_445[0]_i_6 
       (.I0(\sample4_fu_124_reg[9] [4]),
        .I1(ap_start),
        .I2(icmp_ln53_reg_450),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(ap_loop_init),
        .I5(icmp_ln57_reg_445),
        .O(\icmp_ln57_reg_445[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    int_ap_idle_i_1
       (.I0(ap_enable_reg_pp0_iter2),
        .I1(ap_start),
        .I2(ap_enable_reg_pp0_iter5),
        .I3(int_ap_idle_i_2_n_0),
        .I4(int_ap_idle_i_3_n_0),
        .O(ap_idle));
  LUT4 #(
    .INIT(16'hFFFE)) 
    int_ap_idle_i_2
       (.I0(ap_enable_reg_pp0_iter3),
        .I1(ap_enable_reg_pp0_iter9),
        .I2(ap_enable_reg_pp0_iter8),
        .I3(ap_enable_reg_pp0_iter10),
        .O(int_ap_idle_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    int_ap_idle_i_3
       (.I0(ap_enable_reg_pp0_iter7),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(ap_enable_reg_pp0_iter6),
        .I3(ap_enable_reg_pp0_iter1),
        .O(int_ap_idle_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_idle_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_idle),
        .Q(p_0_in[2]),
        .R(ap_rst_n_inv));
  LUT4 #(
    .INIT(16'h7530)) 
    int_ap_ready_i_1
       (.I0(int_task_ap_done_i_2_n_0),
        .I1(p_0_in[7]),
        .I2(ap_condition_exit_pp0_iter0_stage0),
        .I3(int_ap_ready),
        .O(int_ap_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_ready_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_ready_i_1_n_0),
        .Q(int_ap_ready),
        .R(ap_rst_n_inv));
  LUT4 #(
    .INIT(16'hFBF8)) 
    int_ap_start_i_1
       (.I0(p_0_in[7]),
        .I1(ap_condition_exit_pp0_iter0_stage0),
        .I2(int_ap_start5_out),
        .I3(ap_start),
        .O(int_ap_start_i_1_n_0));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    int_ap_start_i_2
       (.I0(s_axi_CTRL_WDATA[0]),
        .I1(s_axi_CTRL_WSTRB),
        .I2(\waddr_reg_n_0_[2] ),
        .I3(\waddr_reg_n_0_[3] ),
        .I4(s_axi_CTRL_WVALID),
        .I5(\FSM_onehot_wstate_reg[2]_0 ),
        .O(int_ap_start5_out));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_start_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_start_i_1_n_0),
        .Q(ap_start),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFFEFFFF00020000)) 
    int_auto_restart_i_1
       (.I0(s_axi_CTRL_WDATA[2]),
        .I1(int_auto_restart_i_2_n_0),
        .I2(\waddr_reg_n_0_[3] ),
        .I3(\waddr_reg_n_0_[2] ),
        .I4(s_axi_CTRL_WSTRB),
        .I5(p_0_in[7]),
        .O(int_auto_restart_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h7)) 
    int_auto_restart_i_2
       (.I0(\FSM_onehot_wstate_reg[2]_0 ),
        .I1(s_axi_CTRL_WVALID),
        .O(int_auto_restart_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_auto_restart_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_auto_restart_i_1_n_0),
        .Q(p_0_in[7]),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFEFFFFFF02000000)) 
    int_gie_i_1
       (.I0(s_axi_CTRL_WDATA[0]),
        .I1(int_auto_restart_i_2_n_0),
        .I2(\waddr_reg_n_0_[3] ),
        .I3(\waddr_reg_n_0_[2] ),
        .I4(s_axi_CTRL_WSTRB),
        .I5(int_gie_reg_n_0),
        .O(int_gie_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_gie_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_gie_i_1_n_0),
        .Q(int_gie_reg_n_0),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'h40000000)) 
    \int_ier[1]_i_1 
       (.I0(\waddr_reg_n_0_[2] ),
        .I1(s_axi_CTRL_WSTRB),
        .I2(\FSM_onehot_wstate_reg[2]_0 ),
        .I3(s_axi_CTRL_WVALID),
        .I4(\waddr_reg_n_0_[3] ),
        .O(int_ier10_out));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[0] 
       (.C(ap_clk),
        .CE(int_ier10_out),
        .D(s_axi_CTRL_WDATA[0]),
        .Q(\int_ier_reg_n_0_[0] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[1] 
       (.C(ap_clk),
        .CE(int_ier10_out),
        .D(s_axi_CTRL_WDATA[1]),
        .Q(p_0_in__0),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'hA8)) 
    int_interrupt_i_1
       (.I0(int_gie_reg_n_0),
        .I1(\int_isr_reg_n_0_[1] ),
        .I2(\int_isr_reg_n_0_[0] ),
        .O(int_interrupt0));
  FDRE #(
    .INIT(1'b0)) 
    int_interrupt_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_interrupt0),
        .Q(interrupt),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h77F7777788F88888)) 
    \int_isr[0]_i_1 
       (.I0(s_axi_CTRL_WDATA[0]),
        .I1(int_isr7_out),
        .I2(ap_loop_exit_ready_pp0_iter10_reg),
        .I3(\int_isr_reg[0]_0 ),
        .I4(\int_ier_reg_n_0_[0] ),
        .I5(\int_isr_reg_n_0_[0] ),
        .O(\int_isr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \int_isr[0]_i_2 
       (.I0(\FSM_onehot_wstate_reg[2]_0 ),
        .I1(s_axi_CTRL_WVALID),
        .I2(\waddr_reg_n_0_[3] ),
        .I3(\waddr_reg_n_0_[2] ),
        .I4(s_axi_CTRL_WSTRB),
        .O(int_isr7_out));
  LUT5 #(
    .INIT(32'hF777F888)) 
    \int_isr[1]_i_1 
       (.I0(s_axi_CTRL_WDATA[1]),
        .I1(int_isr7_out),
        .I2(ap_condition_exit_pp0_iter0_stage0),
        .I3(p_0_in__0),
        .I4(\int_isr_reg_n_0_[1] ),
        .O(\int_isr[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_isr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_isr[0]_i_1_n_0 ),
        .Q(\int_isr_reg_n_0_[0] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_isr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_isr[1]_i_1_n_0 ),
        .Q(\int_isr_reg_n_0_[1] ),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h5DFD5D5D0CFC0C0C)) 
    int_task_ap_done_i_1
       (.I0(int_task_ap_done_i_2_n_0),
        .I1(int_task_ap_done_reg_0),
        .I2(auto_restart_status_reg_n_0),
        .I3(p_0_in[2]),
        .I4(ap_idle),
        .I5(int_task_ap_done),
        .O(int_task_ap_done_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    int_task_ap_done_i_2
       (.I0(s_axi_CTRL_ARVALID),
        .I1(\FSM_onehot_rstate_reg[1]_0 ),
        .I2(s_axi_CTRL_ARADDR[2]),
        .I3(s_axi_CTRL_ARADDR[1]),
        .I4(s_axi_CTRL_ARADDR[0]),
        .I5(s_axi_CTRL_ARADDR[3]),
        .O(int_task_ap_done_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_task_ap_done_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_task_ap_done_i_1_n_0),
        .Q(int_task_ap_done),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \rdata[0]_i_1 
       (.I0(\rdata[0]_i_2_n_0 ),
        .I1(s_axi_CTRL_ARADDR[1]),
        .I2(s_axi_CTRL_ARADDR[0]),
        .O(rdata[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata[0]_i_2 
       (.I0(\int_isr_reg_n_0_[0] ),
        .I1(int_gie_reg_n_0),
        .I2(s_axi_CTRL_ARADDR[2]),
        .I3(\int_ier_reg_n_0_[0] ),
        .I4(s_axi_CTRL_ARADDR[3]),
        .I5(ap_start),
        .O(\rdata[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000CCE200E2)) 
    \rdata[1]_i_1 
       (.I0(int_task_ap_done),
        .I1(s_axi_CTRL_ARADDR[3]),
        .I2(p_0_in__0),
        .I3(s_axi_CTRL_ARADDR[2]),
        .I4(\int_isr_reg_n_0_[1] ),
        .I5(\rdata[1]_i_2_n_0 ),
        .O(rdata[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \rdata[1]_i_2 
       (.I0(s_axi_CTRL_ARADDR[0]),
        .I1(s_axi_CTRL_ARADDR[1]),
        .O(\rdata[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \rdata[9]_i_1 
       (.I0(s_axi_CTRL_ARADDR[2]),
        .I1(s_axi_CTRL_ARADDR[1]),
        .I2(s_axi_CTRL_ARADDR[0]),
        .I3(s_axi_CTRL_ARADDR[3]),
        .I4(s_axi_CTRL_ARVALID),
        .I5(\FSM_onehot_rstate_reg[1]_0 ),
        .O(\rdata[9]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rdata[9]_i_2 
       (.I0(\FSM_onehot_rstate_reg[1]_0 ),
        .I1(s_axi_CTRL_ARVALID),
        .O(ar_hs));
  FDRE \rdata_reg[0] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[0]),
        .Q(s_axi_CTRL_RDATA[0]),
        .R(1'b0));
  FDRE \rdata_reg[1] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[1]),
        .Q(s_axi_CTRL_RDATA[1]),
        .R(1'b0));
  FDRE \rdata_reg[2] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(p_0_in[2]),
        .Q(s_axi_CTRL_RDATA[2]),
        .R(\rdata[9]_i_1_n_0 ));
  FDRE \rdata_reg[3] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(int_ap_ready),
        .Q(s_axi_CTRL_RDATA[3]),
        .R(\rdata[9]_i_1_n_0 ));
  FDRE \rdata_reg[7] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(p_0_in[7]),
        .Q(s_axi_CTRL_RDATA[4]),
        .R(\rdata[9]_i_1_n_0 ));
  FDRE \rdata_reg[9] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(interrupt),
        .Q(s_axi_CTRL_RDATA[5]),
        .R(\rdata[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDFDDFFFFDDDD5555)) 
    \sample4_fu_124[0]_i_1 
       (.I0(\sample4_fu_124_reg[9] [0]),
        .I1(ap_start),
        .I2(icmp_ln53_reg_450),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(ap_loop_init),
        .I5(icmp_ln57_reg_445),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h8000800000007FFF)) 
    \sample4_fu_124[10]_i_1 
       (.I0(\sample4_fu_124_reg[10] ),
        .I1(\sample4_fu_124_reg[9] [6]),
        .I2(\sample4_fu_124_reg[2] ),
        .I3(select_ln53_fu_262_p3[4]),
        .I4(int_ap_start_reg_0),
        .I5(\sample4_fu_124_reg[10]_0 ),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sample4_fu_124[10]_i_2 
       (.I0(ap_start),
        .I1(ap_loop_init),
        .O(int_ap_start_reg_0));
  LUT6 #(
    .INIT(64'h007F008000000000)) 
    \sample4_fu_124[3]_i_1 
       (.I0(\sample4_fu_124_reg[9] [0]),
        .I1(\sample4_fu_124_reg[9] [1]),
        .I2(\sample4_fu_124_reg[9] [2]),
        .I3(int_ap_start_reg_0),
        .I4(\sample4_fu_124_reg[9] [3]),
        .I5(\sample4_fu_124_reg[8] ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h000000006A00AA00)) 
    \sample4_fu_124[8]_i_1 
       (.I0(\sample4_fu_124_reg[9] [8]),
        .I1(\sample4_fu_124_reg[9] [6]),
        .I2(\sample4_fu_124_reg[2] ),
        .I3(\sample4_fu_124_reg[8] ),
        .I4(\sample4_fu_124_reg[9] [7]),
        .I5(int_ap_start_reg_0),
        .O(D[2]));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \sample4_fu_124[9]_i_1 
       (.I0(select_ln53_fu_262_p3[6]),
        .I1(select_ln53_fu_262_p3[4]),
        .I2(\sample4_fu_124_reg[2] ),
        .I3(\sample4_fu_124_reg[9] [6]),
        .I4(select_ln53_fu_262_p3[5]),
        .O(D[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \state[0]_i_1 
       (.I0(ap_rst_n),
        .O(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h0000BF000F000F00)) 
    \trunc_ln60_reg_435_pp0_iter5_reg_reg[2]_srl6_i_1 
       (.I0(icmp_ln53_reg_450),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(icmp_ln57_reg_445),
        .I3(\sample4_fu_124_reg[9] [2]),
        .I4(ap_start),
        .I5(ap_loop_init),
        .O(select_ln53_fu_262_p3[0]));
  LUT6 #(
    .INIT(64'h0000BF000F000F00)) 
    \trunc_ln60_reg_435_pp0_iter5_reg_reg[3]_srl6_i_1 
       (.I0(icmp_ln53_reg_450),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(icmp_ln57_reg_445),
        .I3(\sample4_fu_124_reg[9] [3]),
        .I4(ap_start),
        .I5(ap_loop_init),
        .O(select_ln53_fu_262_p3[1]));
  LUT6 #(
    .INIT(64'h0000BF000F000F00)) 
    \trunc_ln60_reg_435_pp0_iter5_reg_reg[5]_srl6_i_1 
       (.I0(icmp_ln53_reg_450),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(icmp_ln57_reg_445),
        .I3(\sample4_fu_124_reg[9] [5]),
        .I4(ap_start),
        .I5(ap_loop_init),
        .O(select_ln53_fu_262_p3[2]));
  LUT6 #(
    .INIT(64'h5353135300000000)) 
    \trunc_ln60_reg_435_pp0_iter5_reg_reg[6]_srl6_i_1 
       (.I0(ap_start),
        .I1(icmp_ln57_reg_445),
        .I2(ap_loop_init),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(icmp_ln53_reg_450),
        .I5(\sample4_fu_124_reg[9] [6]),
        .O(select_ln53_fu_262_p3[3]));
  LUT6 #(
    .INIT(64'h0000BF000F000F00)) 
    \trunc_ln60_reg_435_pp0_iter5_reg_reg[7]_srl6_i_1 
       (.I0(icmp_ln53_reg_450),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(icmp_ln57_reg_445),
        .I3(\sample4_fu_124_reg[9] [7]),
        .I4(ap_start),
        .I5(ap_loop_init),
        .O(select_ln53_fu_262_p3[4]));
  LUT6 #(
    .INIT(64'h0000BF000F000F00)) 
    \trunc_ln60_reg_435_pp0_iter5_reg_reg[8]_srl6_i_1 
       (.I0(icmp_ln53_reg_450),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(icmp_ln57_reg_445),
        .I3(\sample4_fu_124_reg[9] [8]),
        .I4(ap_start),
        .I5(ap_loop_init),
        .O(select_ln53_fu_262_p3[5]));
  LUT6 #(
    .INIT(64'h0000BF000F000F00)) 
    \trunc_ln60_reg_435_pp0_iter5_reg_reg[9]_srl6_i_1 
       (.I0(icmp_ln53_reg_450),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(icmp_ln57_reg_445),
        .I3(\sample4_fu_124_reg[9] [9]),
        .I4(ap_start),
        .I5(ap_loop_init),
        .O(select_ln53_fu_262_p3[6]));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \tx_word_last_reg_440_pp0_iter7_reg_reg[0]_srl8_i_1 
       (.I0(\sample4_fu_124_reg[2] ),
        .I1(select_ln53_fu_262_p3[6]),
        .I2(\sample4_fu_124_reg[9] [8]),
        .I3(\tx_word_last_reg_440_pp0_iter8_reg_reg[0] ),
        .I4(\chirp_18_fu_128_reg[1] ),
        .I5(\tx_word_last_reg_440_pp0_iter8_reg_reg[0]_0 ),
        .O(tx_word_last_fu_300_p2));
  LUT2 #(
    .INIT(4'h8)) 
    \waddr[3]_i_1 
       (.I0(s_axi_CTRL_AWVALID),
        .I1(\FSM_onehot_wstate_reg[1]_0 ),
        .O(waddr));
  FDRE \waddr_reg[2] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_CTRL_AWADDR[0]),
        .Q(\waddr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \waddr_reg[3] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_CTRL_AWADDR[1]),
        .Q(\waddr_reg_n_0_[3] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "lfm_tdm_gen_flow_control_loop_pipe" *) 
module design_1_lfm_tdm_gen_0_0_lfm_tdm_gen_flow_control_loop_pipe
   (ap_loop_init,
    D,
    icmp_ln57_fu_318_p2,
    \icmp_ln57_reg_445_reg[0] ,
    \sample4_fu_124_reg[8] ,
    ap_loop_init_reg_0,
    \icmp_ln57_reg_445_reg[0]_0 ,
    \chirp3_fu_120_reg[2] ,
    ap_loop_init_reg_1,
    \sample4_fu_124_reg[10] ,
    \chirp3_fu_120_reg[2]_0 ,
    ap_loop_init_reg_2,
    ap_clk,
    Q,
    ap_start,
    \icmp_ln57_reg_445_reg[0]_1 ,
    select_ln53_fu_262_p3,
    \icmp_ln57_reg_445_reg[0]_2 ,
    \sample4_fu_124_reg[5] ,
    icmp_ln57_reg_445,
    ap_enable_reg_pp0_iter1,
    icmp_ln53_reg_450,
    \chirp3_fu_120_reg[2]_1 ,
    \chirp3_fu_120_reg[2]_2 ,
    \chirp_18_fu_128_reg[2] );
  output ap_loop_init;
  output [11:0]D;
  output icmp_ln57_fu_318_p2;
  output \icmp_ln57_reg_445_reg[0] ;
  output \sample4_fu_124_reg[8] ;
  output [5:0]ap_loop_init_reg_0;
  output [2:0]\icmp_ln57_reg_445_reg[0]_0 ;
  output [2:0]\chirp3_fu_120_reg[2] ;
  output ap_loop_init_reg_1;
  output \sample4_fu_124_reg[10] ;
  output [1:0]\chirp3_fu_120_reg[2]_0 ;
  input ap_loop_init_reg_2;
  input ap_clk;
  input [11:0]Q;
  input ap_start;
  input [10:0]\icmp_ln57_reg_445_reg[0]_1 ;
  input [0:0]select_ln53_fu_262_p3;
  input \icmp_ln57_reg_445_reg[0]_2 ;
  input \sample4_fu_124_reg[5] ;
  input icmp_ln57_reg_445;
  input ap_enable_reg_pp0_iter1;
  input icmp_ln53_reg_450;
  input [2:0]\chirp3_fu_120_reg[2]_1 ;
  input [2:0]\chirp3_fu_120_reg[2]_2 ;
  input \chirp_18_fu_128_reg[2] ;

  wire [11:0]D;
  wire [11:0]Q;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1;
  wire ap_loop_init;
  wire [5:0]ap_loop_init_reg_0;
  wire ap_loop_init_reg_1;
  wire ap_loop_init_reg_2;
  wire [11:0]ap_sig_allocacmp_indvar_flatten2_load;
  wire ap_start;
  wire [2:0]\chirp3_fu_120_reg[2] ;
  wire [1:0]\chirp3_fu_120_reg[2]_0 ;
  wire [2:0]\chirp3_fu_120_reg[2]_1 ;
  wire [2:0]\chirp3_fu_120_reg[2]_2 ;
  wire \chirp_18_fu_128_reg[2] ;
  wire icmp_ln53_reg_450;
  wire icmp_ln57_fu_318_p2;
  wire icmp_ln57_reg_445;
  wire \icmp_ln57_reg_445_reg[0] ;
  wire [2:0]\icmp_ln57_reg_445_reg[0]_0 ;
  wire [10:0]\icmp_ln57_reg_445_reg[0]_1 ;
  wire \icmp_ln57_reg_445_reg[0]_2 ;
  wire \indvar_flatten2_fu_116_reg[11]_i_2_n_6 ;
  wire \indvar_flatten2_fu_116_reg[11]_i_2_n_7 ;
  wire \indvar_flatten2_fu_116_reg[8]_i_1_n_0 ;
  wire \indvar_flatten2_fu_116_reg[8]_i_1_n_1 ;
  wire \indvar_flatten2_fu_116_reg[8]_i_1_n_2 ;
  wire \indvar_flatten2_fu_116_reg[8]_i_1_n_3 ;
  wire \indvar_flatten2_fu_116_reg[8]_i_1_n_4 ;
  wire \indvar_flatten2_fu_116_reg[8]_i_1_n_5 ;
  wire \indvar_flatten2_fu_116_reg[8]_i_1_n_6 ;
  wire \indvar_flatten2_fu_116_reg[8]_i_1_n_7 ;
  wire \sample4_fu_124[5]_i_2_n_0 ;
  wire \sample4_fu_124_reg[10] ;
  wire \sample4_fu_124_reg[5] ;
  wire \sample4_fu_124_reg[8] ;
  wire [0:0]select_ln53_fu_262_p3;
  wire [7:2]\NLW_indvar_flatten2_fu_116_reg[11]_i_2_CO_UNCONNECTED ;
  wire [7:3]\NLW_indvar_flatten2_fu_116_reg[11]_i_2_O_UNCONNECTED ;

  FDRE #(
    .INIT(1'b1)) 
    ap_loop_init_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_init_reg_2),
        .Q(ap_loop_init),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h77F800F8)) 
    \chirp3_fu_120[0]_i_1 
       (.I0(ap_start),
        .I1(ap_loop_init),
        .I2(\chirp3_fu_120_reg[2]_1 [0]),
        .I3(\icmp_ln57_reg_445_reg[0] ),
        .I4(\chirp3_fu_120_reg[2]_2 [0]),
        .O(\chirp3_fu_120_reg[2] [0]));
  LUT5 #(
    .INIT(32'h77700070)) 
    \chirp3_fu_120[1]_i_1 
       (.I0(ap_start),
        .I1(ap_loop_init),
        .I2(\chirp3_fu_120_reg[2]_1 [1]),
        .I3(\icmp_ln57_reg_445_reg[0] ),
        .I4(\chirp3_fu_120_reg[2]_2 [1]),
        .O(\chirp3_fu_120_reg[2] [1]));
  LUT5 #(
    .INIT(32'h00B8B8B8)) 
    \chirp3_fu_120[2]_i_1 
       (.I0(\chirp3_fu_120_reg[2]_2 [2]),
        .I1(\icmp_ln57_reg_445_reg[0] ),
        .I2(\chirp3_fu_120_reg[2]_1 [2]),
        .I3(ap_loop_init),
        .I4(ap_start),
        .O(\chirp3_fu_120_reg[2] [2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hCC47)) 
    \chirp_18_fu_128[0]_i_1 
       (.I0(\chirp3_fu_120_reg[2]_2 [0]),
        .I1(\icmp_ln57_reg_445_reg[0] ),
        .I2(\chirp3_fu_120_reg[2]_1 [0]),
        .I3(ap_loop_init),
        .O(\chirp3_fu_120_reg[2]_0 [0]));
  LUT5 #(
    .INIT(32'h00B8FF47)) 
    \chirp_18_fu_128[2]_i_1 
       (.I0(\chirp3_fu_120_reg[2]_2 [2]),
        .I1(\icmp_ln57_reg_445_reg[0] ),
        .I2(\chirp3_fu_120_reg[2]_1 [2]),
        .I3(ap_loop_init),
        .I4(\chirp_18_fu_128_reg[2] ),
        .O(\chirp3_fu_120_reg[2]_0 [1]));
  LUT6 #(
    .INIT(64'h7000000000000000)) 
    \icmp_ln57_reg_445[0]_i_1 
       (.I0(\icmp_ln57_reg_445_reg[0] ),
        .I1(\icmp_ln57_reg_445_reg[0]_1 [10]),
        .I2(select_ln53_fu_262_p3),
        .I3(\icmp_ln57_reg_445_reg[0]_2 ),
        .I4(\icmp_ln57_reg_445_reg[0]_1 [6]),
        .I5(\sample4_fu_124_reg[8] ),
        .O(icmp_ln57_fu_318_p2));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hDD5D)) 
    \icmp_ln57_reg_445[0]_i_2 
       (.I0(icmp_ln57_reg_445),
        .I1(ap_loop_init),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(icmp_ln53_reg_450),
        .O(\icmp_ln57_reg_445_reg[0] ));
  LUT5 #(
    .INIT(32'h2A000000)) 
    \icmp_ln57_reg_445[0]_i_4 
       (.I0(\icmp_ln57_reg_445_reg[0]_1 [8]),
        .I1(ap_loop_init),
        .I2(ap_start),
        .I3(\icmp_ln57_reg_445_reg[0]_1 [9]),
        .I4(\icmp_ln57_reg_445_reg[0] ),
        .O(\sample4_fu_124_reg[8] ));
  LUT2 #(
    .INIT(4'hB)) 
    \indvar_flatten2_fu_116[0]_i_1 
       (.I0(ap_loop_init),
        .I1(Q[0]),
        .O(D[0]));
  LUT3 #(
    .INIT(8'h2A)) 
    \indvar_flatten2_fu_116[11]_i_4 
       (.I0(Q[11]),
        .I1(ap_loop_init),
        .I2(ap_start),
        .O(ap_sig_allocacmp_indvar_flatten2_load[11]));
  LUT3 #(
    .INIT(8'h2A)) 
    \indvar_flatten2_fu_116[11]_i_5 
       (.I0(Q[10]),
        .I1(ap_loop_init),
        .I2(ap_start),
        .O(ap_sig_allocacmp_indvar_flatten2_load[10]));
  LUT3 #(
    .INIT(8'h2A)) 
    \indvar_flatten2_fu_116[11]_i_6 
       (.I0(Q[9]),
        .I1(ap_loop_init),
        .I2(ap_start),
        .O(ap_sig_allocacmp_indvar_flatten2_load[9]));
  LUT3 #(
    .INIT(8'h2A)) 
    \indvar_flatten2_fu_116[8]_i_10 
       (.I0(Q[1]),
        .I1(ap_loop_init),
        .I2(ap_start),
        .O(ap_sig_allocacmp_indvar_flatten2_load[1]));
  LUT3 #(
    .INIT(8'h2A)) 
    \indvar_flatten2_fu_116[8]_i_2 
       (.I0(Q[0]),
        .I1(ap_loop_init),
        .I2(ap_start),
        .O(ap_sig_allocacmp_indvar_flatten2_load[0]));
  LUT3 #(
    .INIT(8'h2A)) 
    \indvar_flatten2_fu_116[8]_i_3 
       (.I0(Q[8]),
        .I1(ap_loop_init),
        .I2(ap_start),
        .O(ap_sig_allocacmp_indvar_flatten2_load[8]));
  LUT3 #(
    .INIT(8'h2A)) 
    \indvar_flatten2_fu_116[8]_i_4 
       (.I0(Q[7]),
        .I1(ap_loop_init),
        .I2(ap_start),
        .O(ap_sig_allocacmp_indvar_flatten2_load[7]));
  LUT3 #(
    .INIT(8'h2A)) 
    \indvar_flatten2_fu_116[8]_i_5 
       (.I0(Q[6]),
        .I1(ap_loop_init),
        .I2(ap_start),
        .O(ap_sig_allocacmp_indvar_flatten2_load[6]));
  LUT3 #(
    .INIT(8'h2A)) 
    \indvar_flatten2_fu_116[8]_i_6 
       (.I0(Q[5]),
        .I1(ap_loop_init),
        .I2(ap_start),
        .O(ap_sig_allocacmp_indvar_flatten2_load[5]));
  LUT3 #(
    .INIT(8'h2A)) 
    \indvar_flatten2_fu_116[8]_i_7 
       (.I0(Q[4]),
        .I1(ap_loop_init),
        .I2(ap_start),
        .O(ap_sig_allocacmp_indvar_flatten2_load[4]));
  LUT3 #(
    .INIT(8'h2A)) 
    \indvar_flatten2_fu_116[8]_i_8 
       (.I0(Q[3]),
        .I1(ap_loop_init),
        .I2(ap_start),
        .O(ap_sig_allocacmp_indvar_flatten2_load[3]));
  LUT3 #(
    .INIT(8'h2A)) 
    \indvar_flatten2_fu_116[8]_i_9 
       (.I0(Q[2]),
        .I1(ap_loop_init),
        .I2(ap_start),
        .O(ap_sig_allocacmp_indvar_flatten2_load[2]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \indvar_flatten2_fu_116_reg[11]_i_2 
       (.CI(\indvar_flatten2_fu_116_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_indvar_flatten2_fu_116_reg[11]_i_2_CO_UNCONNECTED [7:2],\indvar_flatten2_fu_116_reg[11]_i_2_n_6 ,\indvar_flatten2_fu_116_reg[11]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_indvar_flatten2_fu_116_reg[11]_i_2_O_UNCONNECTED [7:3],D[11:9]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,ap_sig_allocacmp_indvar_flatten2_load[11:9]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \indvar_flatten2_fu_116_reg[8]_i_1 
       (.CI(ap_sig_allocacmp_indvar_flatten2_load[0]),
        .CI_TOP(1'b0),
        .CO({\indvar_flatten2_fu_116_reg[8]_i_1_n_0 ,\indvar_flatten2_fu_116_reg[8]_i_1_n_1 ,\indvar_flatten2_fu_116_reg[8]_i_1_n_2 ,\indvar_flatten2_fu_116_reg[8]_i_1_n_3 ,\indvar_flatten2_fu_116_reg[8]_i_1_n_4 ,\indvar_flatten2_fu_116_reg[8]_i_1_n_5 ,\indvar_flatten2_fu_116_reg[8]_i_1_n_6 ,\indvar_flatten2_fu_116_reg[8]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(D[8:1]),
        .S(ap_sig_allocacmp_indvar_flatten2_load[8:1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h75FF5555)) 
    \sample4_fu_124[10]_i_3 
       (.I0(\icmp_ln57_reg_445_reg[0]_1 [10]),
        .I1(icmp_ln53_reg_450),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(ap_loop_init),
        .I4(icmp_ln57_reg_445),
        .O(\sample4_fu_124_reg[10] ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0408)) 
    \sample4_fu_124[1]_i_1 
       (.I0(\icmp_ln57_reg_445_reg[0]_1 [0]),
        .I1(\icmp_ln57_reg_445_reg[0] ),
        .I2(ap_loop_init),
        .I3(\icmp_ln57_reg_445_reg[0]_1 [1]),
        .O(ap_loop_init_reg_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h040C0800)) 
    \sample4_fu_124[2]_i_1 
       (.I0(\icmp_ln57_reg_445_reg[0]_1 [0]),
        .I1(\icmp_ln57_reg_445_reg[0] ),
        .I2(ap_loop_init),
        .I3(\icmp_ln57_reg_445_reg[0]_1 [1]),
        .I4(\icmp_ln57_reg_445_reg[0]_1 [2]),
        .O(ap_loop_init_reg_0[1]));
  LUT5 #(
    .INIT(32'h00700080)) 
    \sample4_fu_124[4]_i_1 
       (.I0(\icmp_ln57_reg_445_reg[0]_1 [3]),
        .I1(\sample4_fu_124[5]_i_2_n_0 ),
        .I2(\icmp_ln57_reg_445_reg[0] ),
        .I3(ap_loop_init),
        .I4(\icmp_ln57_reg_445_reg[0]_1 [4]),
        .O(ap_loop_init_reg_0[2]));
  LUT6 #(
    .INIT(64'h060A00000A0A0000)) 
    \sample4_fu_124[5]_i_1 
       (.I0(\icmp_ln57_reg_445_reg[0]_1 [5]),
        .I1(\sample4_fu_124[5]_i_2_n_0 ),
        .I2(\sample4_fu_124_reg[5] ),
        .I3(\icmp_ln57_reg_445_reg[0]_1 [3]),
        .I4(\icmp_ln57_reg_445_reg[0] ),
        .I5(\icmp_ln57_reg_445_reg[0]_1 [4]),
        .O(ap_loop_init_reg_0[3]));
  LUT6 #(
    .INIT(64'h0888000000000000)) 
    \sample4_fu_124[5]_i_2 
       (.I0(\icmp_ln57_reg_445_reg[0]_1 [2]),
        .I1(\icmp_ln57_reg_445_reg[0]_1 [1]),
        .I2(ap_start),
        .I3(ap_loop_init),
        .I4(\icmp_ln57_reg_445_reg[0] ),
        .I5(\icmp_ln57_reg_445_reg[0]_1 [0]),
        .O(\sample4_fu_124[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hAA6A)) 
    \sample4_fu_124[6]_i_1 
       (.I0(\icmp_ln57_reg_445_reg[0]_2 ),
        .I1(\icmp_ln57_reg_445_reg[0]_1 [6]),
        .I2(\icmp_ln57_reg_445_reg[0] ),
        .I3(ap_loop_init),
        .O(ap_loop_init_reg_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hBF404040)) 
    \sample4_fu_124[7]_i_1 
       (.I0(ap_loop_init),
        .I1(\icmp_ln57_reg_445_reg[0]_1 [7]),
        .I2(\icmp_ln57_reg_445_reg[0] ),
        .I3(\icmp_ln57_reg_445_reg[0]_2 ),
        .I4(\icmp_ln57_reg_445_reg[0]_1 [6]),
        .O(ap_loop_init_reg_0[5]));
  LUT6 #(
    .INIT(64'h1111DD5D00000000)) 
    \trunc_ln60_reg_435_pp0_iter5_reg_reg[0]_srl6_i_1 
       (.I0(icmp_ln57_reg_445),
        .I1(ap_loop_init),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(icmp_ln53_reg_450),
        .I4(ap_start),
        .I5(\icmp_ln57_reg_445_reg[0]_1 [0]),
        .O(\icmp_ln57_reg_445_reg[0]_0 [0]));
  LUT6 #(
    .INIT(64'h1111DD5D00000000)) 
    \trunc_ln60_reg_435_pp0_iter5_reg_reg[1]_srl6_i_1 
       (.I0(icmp_ln57_reg_445),
        .I1(ap_loop_init),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(icmp_ln53_reg_450),
        .I4(ap_start),
        .I5(\icmp_ln57_reg_445_reg[0]_1 [1]),
        .O(\icmp_ln57_reg_445_reg[0]_0 [1]));
  LUT6 #(
    .INIT(64'h1111DD5D00000000)) 
    \trunc_ln60_reg_435_pp0_iter5_reg_reg[4]_srl6_i_1 
       (.I0(icmp_ln57_reg_445),
        .I1(ap_loop_init),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(icmp_ln53_reg_450),
        .I4(ap_start),
        .I5(\icmp_ln57_reg_445_reg[0]_1 [4]),
        .O(\icmp_ln57_reg_445_reg[0]_0 [2]));
  LUT6 #(
    .INIT(64'h0000000070000000)) 
    \tx_word_last_reg_440_pp0_iter7_reg_reg[0]_srl8_i_2 
       (.I0(ap_loop_init),
        .I1(ap_start),
        .I2(\icmp_ln57_reg_445_reg[0]_1 [7]),
        .I3(\icmp_ln57_reg_445_reg[0]_1 [6]),
        .I4(\icmp_ln57_reg_445_reg[0] ),
        .I5(\icmp_ln57_reg_445_reg[0]_1 [10]),
        .O(ap_loop_init_reg_1));
endmodule

(* ORIG_REF_NAME = "lfm_tdm_gen_mac_muladd_10ns_3ns_10ns_12_4_1" *) 
module design_1_lfm_tdm_gen_0_0_lfm_tdm_gen_mac_muladd_10ns_3ns_10ns_12_4_1
   (P,
    D,
    ap_clk_0,
    ap_clk_1,
    ap_clk_2,
    ap_block_pp0_stage0_subdone,
    ap_clk,
    Q,
    C,
    \data_p1_reg[19] ,
    \data_p1_reg[19]_0 );
  output [11:0]P;
  output [0:0]D;
  output [11:0]ap_clk_0;
  output ap_clk_1;
  output ap_clk_2;
  input ap_block_pp0_stage0_subdone;
  input ap_clk;
  input [2:0]Q;
  input [9:0]C;
  input [0:0]\data_p1_reg[19] ;
  input \data_p1_reg[19]_0 ;

  wire [9:0]C;
  wire [0:0]D;
  wire [11:0]P;
  wire [2:0]Q;
  wire ap_block_pp0_stage0_subdone;
  wire ap_clk;
  wire [11:0]ap_clk_0;
  wire ap_clk_1;
  wire ap_clk_2;
  wire [0:0]\data_p1_reg[19] ;
  wire \data_p1_reg[19]_0 ;

  design_1_lfm_tdm_gen_0_0_lfm_tdm_gen_mac_muladd_10ns_3ns_10ns_12_4_1_DSP48_0 lfm_tdm_gen_mac_muladd_10ns_3ns_10ns_12_4_1_DSP48_0_U
       (.C(C),
        .D(D),
        .P(P),
        .Q(Q),
        .ap_block_pp0_stage0_subdone(ap_block_pp0_stage0_subdone),
        .ap_clk(ap_clk),
        .ap_clk_0(ap_clk_0),
        .ap_clk_1(ap_clk_1),
        .ap_clk_2(ap_clk_2),
        .\data_p1_reg[19] (\data_p1_reg[19] ),
        .\data_p1_reg[19]_0 (\data_p1_reg[19]_0 ));
endmodule

(* ORIG_REF_NAME = "lfm_tdm_gen_mac_muladd_10ns_3ns_10ns_12_4_1_DSP48_0" *) 
module design_1_lfm_tdm_gen_0_0_lfm_tdm_gen_mac_muladd_10ns_3ns_10ns_12_4_1_DSP48_0
   (P,
    D,
    ap_clk_0,
    ap_clk_1,
    ap_clk_2,
    ap_block_pp0_stage0_subdone,
    ap_clk,
    Q,
    C,
    \data_p1_reg[19] ,
    \data_p1_reg[19]_0 );
  output [11:0]P;
  output [0:0]D;
  output [11:0]ap_clk_0;
  output ap_clk_1;
  output ap_clk_2;
  input ap_block_pp0_stage0_subdone;
  input ap_clk;
  input [2:0]Q;
  input [9:0]C;
  input [0:0]\data_p1_reg[19] ;
  input \data_p1_reg[19]_0 ;

  wire [9:0]C;
  wire [0:0]D;
  wire [11:0]P;
  wire [2:0]Q;
  wire ap_block_pp0_stage0_subdone;
  wire ap_clk;
  wire [11:0]ap_clk_0;
  wire ap_clk_1;
  wire ap_clk_2;
  wire [0:0]\data_p1_reg[19] ;
  wire \data_p1_reg[19]_0 ;
  wire NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_reg_reg_OVERFLOW_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_reg_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_reg_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_reg_reg_CARRYOUT_UNCONNECTED;
  wire [47:12]NLW_p_reg_reg_P_UNCONNECTED;
  wire [47:0]NLW_p_reg_reg_PCOUT_UNCONNECTED;
  wire [7:0]NLW_p_reg_reg_XOROUT_UNCONNECTED;

  LUT6 #(
    .INIT(64'h8B8B8B8B8B8B8BB8)) 
    \data_p1[19]_i_1 
       (.I0(\data_p1_reg[19] ),
        .I1(\data_p1_reg[19]_0 ),
        .I2(P[3]),
        .I3(P[0]),
        .I4(P[1]),
        .I5(P[2]),
        .O(D));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \data_p1[23]_i_2 
       (.I0(P[5]),
        .I1(P[3]),
        .I2(P[0]),
        .I3(P[1]),
        .I4(P[2]),
        .I5(P[4]),
        .O(ap_clk_1));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \data_p1[31]_i_3 
       (.I0(P[10]),
        .I1(P[8]),
        .I2(P[6]),
        .I3(ap_clk_1),
        .I4(P[7]),
        .I5(P[9]),
        .O(ap_clk_2));
  (* KEEP_HIERARCHY = "yes" *) 
  DSP48E2 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BMULTSEL("B"),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    p_reg_reg
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_reg_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0,1'b1,1'b0,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_reg_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,C}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_reg_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(ap_block_pp0_stage0_subdone),
        .CEA2(ap_block_pp0_stage0_subdone),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(ap_block_pp0_stage0_subdone),
        .CEC(ap_block_pp0_stage0_subdone),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(ap_block_pp0_stage0_subdone),
        .CEP(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_reg_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_p_reg_reg_P_UNCONNECTED[47:12],P}),
        .PATTERNBDETECT(NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_p_reg_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_reg_reg_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_p_reg_reg_XOROUT_UNCONNECTED[7:0]));
  LUT6 #(
    .INIT(64'h5555555555555556)) 
    \q_val_reg_469[10]_i_1 
       (.I0(P[10]),
        .I1(P[8]),
        .I2(P[6]),
        .I3(ap_clk_1),
        .I4(P[7]),
        .I5(P[9]),
        .O(ap_clk_0[9]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \q_val_reg_469[11]_i_1 
       (.I0(P[11]),
        .I1(ap_clk_2),
        .O(ap_clk_0[10]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \q_val_reg_469[12]_i_2 
       (.I0(P[11]),
        .I1(ap_clk_2),
        .O(ap_clk_0[11]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \q_val_reg_469[1]_i_1 
       (.I0(P[0]),
        .I1(P[1]),
        .O(ap_clk_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h56)) 
    \q_val_reg_469[2]_i_1 
       (.I0(P[2]),
        .I1(P[1]),
        .I2(P[0]),
        .O(ap_clk_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h5556)) 
    \q_val_reg_469[3]_i_1 
       (.I0(P[3]),
        .I1(P[0]),
        .I2(P[1]),
        .I3(P[2]),
        .O(ap_clk_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h55555556)) 
    \q_val_reg_469[4]_i_1 
       (.I0(P[4]),
        .I1(P[2]),
        .I2(P[1]),
        .I3(P[0]),
        .I4(P[3]),
        .O(ap_clk_0[3]));
  LUT6 #(
    .INIT(64'h5555555555555556)) 
    \q_val_reg_469[5]_i_1 
       (.I0(P[5]),
        .I1(P[3]),
        .I2(P[0]),
        .I3(P[1]),
        .I4(P[2]),
        .I5(P[4]),
        .O(ap_clk_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \q_val_reg_469[6]_i_1 
       (.I0(P[6]),
        .I1(ap_clk_1),
        .O(ap_clk_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h56)) 
    \q_val_reg_469[7]_i_1 
       (.I0(P[7]),
        .I1(ap_clk_1),
        .I2(P[6]),
        .O(ap_clk_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h5556)) 
    \q_val_reg_469[8]_i_1 
       (.I0(P[8]),
        .I1(P[6]),
        .I2(ap_clk_1),
        .I3(P[7]),
        .O(ap_clk_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h55555556)) 
    \q_val_reg_469[9]_i_1 
       (.I0(P[9]),
        .I1(P[7]),
        .I2(ap_clk_1),
        .I3(P[6]),
        .I4(P[8]),
        .O(ap_clk_0[8]));
endmodule

(* ORIG_REF_NAME = "lfm_tdm_gen_regslice_both" *) 
module design_1_lfm_tdm_gen_0_0_lfm_tdm_gen_regslice_both
   (ap_loop_exit_ready_pp0_iter10_reg_reg,
    ap_enable_reg_pp0_iter9_reg,
    ap_block_pp0_stage0_subdone,
    m_axis_tx_TVALID_int_regslice,
    m_axis_tx_TVALID,
    \FSM_sequential_state_reg[1]_0 ,
    E,
    \FSM_sequential_state_reg[1]_1 ,
    ap_enable_reg_pp0_iter10_reg,
    ack_in_t_reg_0,
    Q,
    m_axis_tx_TDATA,
    ap_rst_n_inv,
    ap_clk,
    ap_loop_exit_ready_pp0_iter10_reg,
    ap_loop_exit_ready_pp0_iter9_reg,
    m_axis_tx_TREADY,
    ap_enable_reg_pp0_iter10,
    ap_enable_reg_pp0_iter9,
    ap_start,
    P,
    D,
    \data_p1_reg[22]_0 ,
    \data_p1_reg[27]_0 ,
    \data_p1_reg[19]_0 );
  output ap_loop_exit_ready_pp0_iter10_reg_reg;
  output ap_enable_reg_pp0_iter9_reg;
  output ap_block_pp0_stage0_subdone;
  output m_axis_tx_TVALID_int_regslice;
  output m_axis_tx_TVALID;
  output \FSM_sequential_state_reg[1]_0 ;
  output [0:0]E;
  output \FSM_sequential_state_reg[1]_1 ;
  output ap_enable_reg_pp0_iter10_reg;
  output ack_in_t_reg_0;
  output [0:0]Q;
  output [23:0]m_axis_tx_TDATA;
  input ap_rst_n_inv;
  input ap_clk;
  input ap_loop_exit_ready_pp0_iter10_reg;
  input ap_loop_exit_ready_pp0_iter9_reg;
  input m_axis_tx_TREADY;
  input ap_enable_reg_pp0_iter10;
  input ap_enable_reg_pp0_iter9;
  input ap_start;
  input [11:0]P;
  input [11:0]D;
  input \data_p1_reg[22]_0 ;
  input \data_p1_reg[27]_0 ;
  input [0:0]\data_p1_reg[19]_0 ;

  wire [11:0]D;
  wire [0:0]E;
  wire \FSM_sequential_state_reg[1]_0 ;
  wire \FSM_sequential_state_reg[1]_1 ;
  wire [11:0]P;
  wire [0:0]Q;
  wire ack_in_t_i_1_n_0;
  wire ack_in_t_reg_0;
  wire ap_block_pp0_stage0_subdone;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter10;
  wire ap_enable_reg_pp0_iter10_reg;
  wire ap_enable_reg_pp0_iter9;
  wire ap_enable_reg_pp0_iter9_reg;
  wire ap_loop_exit_ready_pp0_iter10_reg;
  wire ap_loop_exit_ready_pp0_iter10_reg_reg;
  wire ap_loop_exit_ready_pp0_iter9_reg;
  wire ap_rst_n_inv;
  wire ap_start;
  wire \data_p1[10]_i_1_n_0 ;
  wire \data_p1[11]_i_1_n_0 ;
  wire \data_p1[16]_i_1_n_0 ;
  wire \data_p1[17]_i_1_n_0 ;
  wire \data_p1[18]_i_1_n_0 ;
  wire \data_p1[1]_i_1_n_0 ;
  wire \data_p1[20]_i_1_n_0 ;
  wire \data_p1[21]_i_1_n_0 ;
  wire \data_p1[22]_i_1_n_0 ;
  wire \data_p1[23]_i_1_n_0 ;
  wire \data_p1[24]_i_1_n_0 ;
  wire \data_p1[25]_i_1_n_0 ;
  wire \data_p1[26]_i_1_n_0 ;
  wire \data_p1[27]_i_1_n_0 ;
  wire \data_p1[2]_i_1_n_0 ;
  wire \data_p1[31]_i_2_n_0 ;
  wire \data_p1[3]_i_1_n_0 ;
  wire \data_p1[4]_i_1_n_0 ;
  wire \data_p1[5]_i_1_n_0 ;
  wire \data_p1[6]_i_1_n_0 ;
  wire \data_p1[7]_i_1_n_0 ;
  wire \data_p1[8]_i_1_n_0 ;
  wire \data_p1[9]_i_1_n_0 ;
  wire [0:0]\data_p1_reg[19]_0 ;
  wire \data_p1_reg[22]_0 ;
  wire \data_p1_reg[27]_0 ;
  wire \data_p2_reg_n_0_[10] ;
  wire \data_p2_reg_n_0_[11] ;
  wire \data_p2_reg_n_0_[16] ;
  wire \data_p2_reg_n_0_[17] ;
  wire \data_p2_reg_n_0_[18] ;
  wire \data_p2_reg_n_0_[1] ;
  wire \data_p2_reg_n_0_[20] ;
  wire \data_p2_reg_n_0_[21] ;
  wire \data_p2_reg_n_0_[22] ;
  wire \data_p2_reg_n_0_[23] ;
  wire \data_p2_reg_n_0_[24] ;
  wire \data_p2_reg_n_0_[25] ;
  wire \data_p2_reg_n_0_[26] ;
  wire \data_p2_reg_n_0_[27] ;
  wire \data_p2_reg_n_0_[2] ;
  wire \data_p2_reg_n_0_[31] ;
  wire \data_p2_reg_n_0_[3] ;
  wire \data_p2_reg_n_0_[4] ;
  wire \data_p2_reg_n_0_[5] ;
  wire \data_p2_reg_n_0_[6] ;
  wire \data_p2_reg_n_0_[7] ;
  wire \data_p2_reg_n_0_[8] ;
  wire \data_p2_reg_n_0_[9] ;
  wire load_p1;
  wire [23:0]m_axis_tx_TDATA;
  wire m_axis_tx_TREADY;
  wire m_axis_tx_TREADY_int_regslice;
  wire m_axis_tx_TVALID;
  wire m_axis_tx_TVALID_int_regslice;
  wire [1:0]next__0;
  wire [1:1]state;
  wire \state[0]_i_2_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire [1:0]state__0;
  wire \zext_ln62_reg_464[11]_i_2_n_0 ;

  LUT4 #(
    .INIT(16'hF4FF)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(m_axis_tx_TVALID_int_regslice),
        .I1(state__0[0]),
        .I2(m_axis_tx_TREADY),
        .I3(state__0[1]),
        .O(next__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hD8F8)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state__0[0]),
        .I1(m_axis_tx_TVALID_int_regslice),
        .I2(state__0[1]),
        .I3(m_axis_tx_TREADY),
        .O(next__0[1]));
  (* FSM_ENCODED_STATES = "ZERO:01,TWO:10,ONE:11,iSTATE:00" *) 
  FDSE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(next__0[0]),
        .Q(state__0[0]),
        .S(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "ZERO:01,TWO:10,ONE:11,iSTATE:00" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(next__0[1]),
        .Q(state__0[1]),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hFF7F3C0C)) 
    ack_in_t_i_1
       (.I0(m_axis_tx_TVALID_int_regslice),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(m_axis_tx_TREADY),
        .I4(m_axis_tx_TREADY_int_regslice),
        .O(ack_in_t_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ack_in_t_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ack_in_t_i_1_n_0),
        .Q(m_axis_tx_TREADY_int_regslice),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    ap_loop_exit_ready_pp0_iter10_reg_i_1
       (.I0(ap_loop_exit_ready_pp0_iter10_reg),
        .I1(ap_enable_reg_pp0_iter9_reg),
        .I2(ap_loop_exit_ready_pp0_iter9_reg),
        .O(ap_loop_exit_ready_pp0_iter10_reg_reg));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h54)) 
    ap_loop_exit_ready_pp0_iter8_reg_reg_srl8_i_3
       (.I0(m_axis_tx_TREADY_int_regslice),
        .I1(ap_enable_reg_pp0_iter10),
        .I2(ap_enable_reg_pp0_iter9),
        .O(ack_in_t_reg_0));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[10]_i_1 
       (.I0(\data_p2_reg_n_0_[10] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(P[10]),
        .O(\data_p1[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[11]_i_1 
       (.I0(\data_p2_reg_n_0_[11] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(P[11]),
        .O(\data_p1[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[16]_i_1 
       (.I0(\data_p2_reg_n_0_[16] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(P[0]),
        .O(\data_p1[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08FBFB08)) 
    \data_p1[17]_i_1 
       (.I0(\data_p2_reg_n_0_[17] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(P[0]),
        .I4(P[1]),
        .O(\data_p1[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08FB08FB08FBFB08)) 
    \data_p1[18]_i_1 
       (.I0(\data_p2_reg_n_0_[18] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(P[2]),
        .I4(P[1]),
        .I5(P[0]),
        .O(\data_p1[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_p1[19]_i_2 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .O(\FSM_sequential_state_reg[1]_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[1]_i_1 
       (.I0(\data_p2_reg_n_0_[1] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(P[1]),
        .O(\data_p1[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[20]_i_1 
       (.I0(\data_p2_reg_n_0_[20] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[3]),
        .O(\data_p1[20]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[21]_i_1 
       (.I0(\data_p2_reg_n_0_[21] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[4]),
        .O(\data_p1[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08FBFB08)) 
    \data_p1[22]_i_1 
       (.I0(\data_p2_reg_n_0_[22] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(P[6]),
        .I4(\data_p1_reg[22]_0 ),
        .O(\data_p1[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08FB08FB08FBFB08)) 
    \data_p1[23]_i_1 
       (.I0(\data_p2_reg_n_0_[23] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(P[7]),
        .I4(\data_p1_reg[22]_0 ),
        .I5(P[6]),
        .O(\data_p1[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[24]_i_1 
       (.I0(\data_p2_reg_n_0_[24] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[7]),
        .O(\data_p1[24]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[25]_i_1 
       (.I0(\data_p2_reg_n_0_[25] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[8]),
        .O(\data_p1[25]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[26]_i_1 
       (.I0(\data_p2_reg_n_0_[26] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[9]),
        .O(\data_p1[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hFB0808FB)) 
    \data_p1[27]_i_1 
       (.I0(\data_p2_reg_n_0_[27] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(P[11]),
        .I4(\data_p1_reg[27]_0 ),
        .O(\data_p1[27]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[2]_i_1 
       (.I0(\data_p2_reg_n_0_[2] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(P[2]),
        .O(\data_p1[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hD088)) 
    \data_p1[31]_i_1 
       (.I0(state__0[1]),
        .I1(m_axis_tx_TREADY),
        .I2(m_axis_tx_TVALID_int_regslice),
        .I3(state__0[0]),
        .O(load_p1));
  LUT5 #(
    .INIT(32'hFB08FBFB)) 
    \data_p1[31]_i_2 
       (.I0(\data_p2_reg_n_0_[31] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(P[11]),
        .I4(\data_p1_reg[27]_0 ),
        .O(\data_p1[31]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[3]_i_1 
       (.I0(\data_p2_reg_n_0_[3] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(P[3]),
        .O(\data_p1[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[4]_i_1 
       (.I0(\data_p2_reg_n_0_[4] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(P[4]),
        .O(\data_p1[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[5]_i_1 
       (.I0(\data_p2_reg_n_0_[5] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(P[5]),
        .O(\data_p1[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[6]_i_1 
       (.I0(\data_p2_reg_n_0_[6] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(P[6]),
        .O(\data_p1[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[7]_i_1 
       (.I0(\data_p2_reg_n_0_[7] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(P[7]),
        .O(\data_p1[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[8]_i_1 
       (.I0(\data_p2_reg_n_0_[8] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(P[8]),
        .O(\data_p1[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[9]_i_1 
       (.I0(\data_p2_reg_n_0_[9] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(P[9]),
        .O(\data_p1[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[10] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[10]_i_1_n_0 ),
        .Q(m_axis_tx_TDATA[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[11] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[11]_i_1_n_0 ),
        .Q(m_axis_tx_TDATA[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[16] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[16]_i_1_n_0 ),
        .Q(m_axis_tx_TDATA[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[17] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[17]_i_1_n_0 ),
        .Q(m_axis_tx_TDATA[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[18] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[18]_i_1_n_0 ),
        .Q(m_axis_tx_TDATA[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[19] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1_reg[19]_0 ),
        .Q(m_axis_tx_TDATA[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[1] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[1]_i_1_n_0 ),
        .Q(m_axis_tx_TDATA[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[20] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[20]_i_1_n_0 ),
        .Q(m_axis_tx_TDATA[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[21] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[21]_i_1_n_0 ),
        .Q(m_axis_tx_TDATA[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[22] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[22]_i_1_n_0 ),
        .Q(m_axis_tx_TDATA[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[23] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[23]_i_1_n_0 ),
        .Q(m_axis_tx_TDATA[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[24] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[24]_i_1_n_0 ),
        .Q(m_axis_tx_TDATA[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[25] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[25]_i_1_n_0 ),
        .Q(m_axis_tx_TDATA[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[26] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[26]_i_1_n_0 ),
        .Q(m_axis_tx_TDATA[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[27] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[27]_i_1_n_0 ),
        .Q(m_axis_tx_TDATA[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[2] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[2]_i_1_n_0 ),
        .Q(m_axis_tx_TDATA[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[31] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[31]_i_2_n_0 ),
        .Q(m_axis_tx_TDATA[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[3] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[3]_i_1_n_0 ),
        .Q(m_axis_tx_TDATA[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[4] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[4]_i_1_n_0 ),
        .Q(m_axis_tx_TDATA[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[5] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[5]_i_1_n_0 ),
        .Q(m_axis_tx_TDATA[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[6] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[6]_i_1_n_0 ),
        .Q(m_axis_tx_TDATA[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[7] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[7]_i_1_n_0 ),
        .Q(m_axis_tx_TDATA[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[8] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[8]_i_1_n_0 ),
        .Q(m_axis_tx_TDATA[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[9] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[9]_i_1_n_0 ),
        .Q(m_axis_tx_TDATA[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[10] 
       (.C(ap_clk),
        .CE(m_axis_tx_TVALID_int_regslice),
        .D(P[10]),
        .Q(\data_p2_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[11] 
       (.C(ap_clk),
        .CE(m_axis_tx_TVALID_int_regslice),
        .D(P[11]),
        .Q(\data_p2_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[16] 
       (.C(ap_clk),
        .CE(m_axis_tx_TVALID_int_regslice),
        .D(P[0]),
        .Q(\data_p2_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[17] 
       (.C(ap_clk),
        .CE(m_axis_tx_TVALID_int_regslice),
        .D(D[0]),
        .Q(\data_p2_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[18] 
       (.C(ap_clk),
        .CE(m_axis_tx_TVALID_int_regslice),
        .D(D[1]),
        .Q(\data_p2_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[19] 
       (.C(ap_clk),
        .CE(m_axis_tx_TVALID_int_regslice),
        .D(D[2]),
        .Q(Q),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[1] 
       (.C(ap_clk),
        .CE(m_axis_tx_TVALID_int_regslice),
        .D(P[1]),
        .Q(\data_p2_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[20] 
       (.C(ap_clk),
        .CE(m_axis_tx_TVALID_int_regslice),
        .D(D[3]),
        .Q(\data_p2_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[21] 
       (.C(ap_clk),
        .CE(m_axis_tx_TVALID_int_regslice),
        .D(D[4]),
        .Q(\data_p2_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[22] 
       (.C(ap_clk),
        .CE(m_axis_tx_TVALID_int_regslice),
        .D(D[5]),
        .Q(\data_p2_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[23] 
       (.C(ap_clk),
        .CE(m_axis_tx_TVALID_int_regslice),
        .D(D[6]),
        .Q(\data_p2_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[24] 
       (.C(ap_clk),
        .CE(m_axis_tx_TVALID_int_regslice),
        .D(D[7]),
        .Q(\data_p2_reg_n_0_[24] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[25] 
       (.C(ap_clk),
        .CE(m_axis_tx_TVALID_int_regslice),
        .D(D[8]),
        .Q(\data_p2_reg_n_0_[25] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[26] 
       (.C(ap_clk),
        .CE(m_axis_tx_TVALID_int_regslice),
        .D(D[9]),
        .Q(\data_p2_reg_n_0_[26] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[27] 
       (.C(ap_clk),
        .CE(m_axis_tx_TVALID_int_regslice),
        .D(D[10]),
        .Q(\data_p2_reg_n_0_[27] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[2] 
       (.C(ap_clk),
        .CE(m_axis_tx_TVALID_int_regslice),
        .D(P[2]),
        .Q(\data_p2_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[31] 
       (.C(ap_clk),
        .CE(m_axis_tx_TVALID_int_regslice),
        .D(D[11]),
        .Q(\data_p2_reg_n_0_[31] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[3] 
       (.C(ap_clk),
        .CE(m_axis_tx_TVALID_int_regslice),
        .D(P[3]),
        .Q(\data_p2_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[4] 
       (.C(ap_clk),
        .CE(m_axis_tx_TVALID_int_regslice),
        .D(P[4]),
        .Q(\data_p2_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[5] 
       (.C(ap_clk),
        .CE(m_axis_tx_TVALID_int_regslice),
        .D(P[5]),
        .Q(\data_p2_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[6] 
       (.C(ap_clk),
        .CE(m_axis_tx_TVALID_int_regslice),
        .D(P[6]),
        .Q(\data_p2_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[7] 
       (.C(ap_clk),
        .CE(m_axis_tx_TVALID_int_regslice),
        .D(P[7]),
        .Q(\data_p2_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[8] 
       (.C(ap_clk),
        .CE(m_axis_tx_TVALID_int_regslice),
        .D(P[8]),
        .Q(\data_p2_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[9] 
       (.C(ap_clk),
        .CE(m_axis_tx_TVALID_int_regslice),
        .D(P[9]),
        .Q(\data_p2_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h20202022)) 
    \indvar_flatten2_fu_116[11]_i_1 
       (.I0(ap_start),
        .I1(\FSM_sequential_state_reg[1]_1 ),
        .I2(m_axis_tx_TREADY_int_regslice),
        .I3(ap_enable_reg_pp0_iter10),
        .I4(ap_enable_reg_pp0_iter9),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h2A2A2A00)) 
    \indvar_flatten2_fu_116[11]_i_3 
       (.I0(state__0[1]),
        .I1(m_axis_tx_TREADY),
        .I2(state__0[0]),
        .I3(ap_enable_reg_pp0_iter10),
        .I4(ap_loop_exit_ready_pp0_iter10_reg),
        .O(\FSM_sequential_state_reg[1]_1 ));
  LUT6 #(
    .INIT(64'h1100000011000100)) 
    int_task_ap_done_i_3
       (.I0(\zext_ln62_reg_464[11]_i_2_n_0 ),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(ap_enable_reg_pp0_iter10),
        .I3(ap_loop_exit_ready_pp0_iter10_reg),
        .I4(m_axis_tx_TREADY_int_regslice),
        .I5(ap_enable_reg_pp0_iter9),
        .O(ap_enable_reg_pp0_iter10_reg));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \q_val_reg_469[12]_i_1 
       (.I0(ap_enable_reg_pp0_iter9_reg),
        .O(ap_block_pp0_stage0_subdone));
  LUT6 #(
    .INIT(64'hFFF2FFF2FFF23322)) 
    \q_val_reg_469[12]_i_3 
       (.I0(ap_enable_reg_pp0_iter9),
        .I1(m_axis_tx_TREADY_int_regslice),
        .I2(ap_loop_exit_ready_pp0_iter10_reg),
        .I3(ap_enable_reg_pp0_iter10),
        .I4(\FSM_sequential_state_reg[1]_0 ),
        .I5(\zext_ln62_reg_464[11]_i_2_n_0 ),
        .O(ap_enable_reg_pp0_iter9_reg));
  LUT4 #(
    .INIT(16'hFC4C)) 
    \state[0]_i_2 
       (.I0(m_axis_tx_TREADY),
        .I1(m_axis_tx_TVALID),
        .I2(state),
        .I3(m_axis_tx_TVALID_int_regslice),
        .O(\state[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFF4F)) 
    \state[1]_i_1 
       (.I0(m_axis_tx_TVALID_int_regslice),
        .I1(state),
        .I2(m_axis_tx_TVALID),
        .I3(m_axis_tx_TREADY),
        .O(\state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\state[0]_i_2_n_0 ),
        .Q(m_axis_tx_TVALID),
        .R(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(state),
        .S(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h111F000000000000)) 
    \zext_ln62_reg_464[11]_i_1 
       (.I0(\zext_ln62_reg_464[11]_i_2_n_0 ),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(ap_enable_reg_pp0_iter10),
        .I3(ap_loop_exit_ready_pp0_iter10_reg),
        .I4(m_axis_tx_TREADY_int_regslice),
        .I5(ap_enable_reg_pp0_iter9),
        .O(m_axis_tx_TVALID_int_regslice));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \zext_ln62_reg_464[11]_i_2 
       (.I0(state__0[1]),
        .I1(m_axis_tx_TREADY),
        .O(\zext_ln62_reg_464[11]_i_2_n_0 ));
endmodule

(* ORIG_REF_NAME = "lfm_tdm_gen_regslice_both" *) 
module design_1_lfm_tdm_gen_0_0_lfm_tdm_gen_regslice_both__parameterized0
   (m_axis_tx_TSTRB,
    ap_rst_n_inv,
    ap_clk,
    m_axis_tx_TREADY,
    m_axis_tx_TVALID_int_regslice);
  output [0:0]m_axis_tx_TSTRB;
  input ap_rst_n_inv;
  input ap_clk;
  input m_axis_tx_TREADY;
  input m_axis_tx_TVALID_int_regslice;

  wire ack_in_t_i_1__0_n_0;
  wire ack_in_t_reg_n_0;
  wire ap_clk;
  wire ap_rst_n_inv;
  wire \data_p1[3]_i_1_n_0 ;
  wire [3:3]data_p2;
  wire \data_p2[3]_i_1_n_0 ;
  wire m_axis_tx_TREADY;
  wire [0:0]m_axis_tx_TSTRB;
  wire m_axis_tx_TVALID_int_regslice;
  wire [1:0]next__0;
  wire [1:0]state__0;

  LUT4 #(
    .INIT(16'hF4FF)) 
    \FSM_sequential_state[0]_i_1__0 
       (.I0(m_axis_tx_TVALID_int_regslice),
        .I1(state__0[0]),
        .I2(m_axis_tx_TREADY),
        .I3(state__0[1]),
        .O(next__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hF7C0F700)) 
    \FSM_sequential_state[1]_i_1__0 
       (.I0(m_axis_tx_TREADY),
        .I1(state__0[0]),
        .I2(m_axis_tx_TVALID_int_regslice),
        .I3(state__0[1]),
        .I4(ack_in_t_reg_n_0),
        .O(next__0[1]));
  (* FSM_ENCODED_STATES = "ZERO:01,TWO:10,ONE:11,iSTATE:00" *) 
  FDSE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(next__0[0]),
        .Q(state__0[0]),
        .S(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "ZERO:01,TWO:10,ONE:11,iSTATE:00" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(next__0[1]),
        .Q(state__0[1]),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hFF7F3C0C)) 
    ack_in_t_i_1__0
       (.I0(m_axis_tx_TVALID_int_regslice),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(m_axis_tx_TREADY),
        .I4(ack_in_t_reg_n_0),
        .O(ack_in_t_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ack_in_t_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ack_in_t_i_1__0_n_0),
        .Q(ack_in_t_reg_n_0),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFFFBFBFF3008080)) 
    \data_p1[3]_i_1 
       (.I0(data_p2),
        .I1(state__0[1]),
        .I2(m_axis_tx_TREADY),
        .I3(m_axis_tx_TVALID_int_regslice),
        .I4(state__0[0]),
        .I5(m_axis_tx_TSTRB),
        .O(\data_p1[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\data_p1[3]_i_1_n_0 ),
        .Q(m_axis_tx_TSTRB),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hF8)) 
    \data_p2[3]_i_1 
       (.I0(m_axis_tx_TVALID_int_regslice),
        .I1(ack_in_t_reg_n_0),
        .I2(data_p2),
        .O(\data_p2[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\data_p2[3]_i_1_n_0 ),
        .Q(data_p2),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "lfm_tdm_gen_regslice_both" *) 
module design_1_lfm_tdm_gen_0_0_lfm_tdm_gen_regslice_both__parameterized1
   (m_axis_tx_TLAST,
    ap_rst_n_inv,
    ap_clk,
    m_axis_tx_TREADY,
    m_axis_tx_TVALID_int_regslice,
    tx_word_last_reg_440_pp0_iter8_reg);
  output [0:0]m_axis_tx_TLAST;
  input ap_rst_n_inv;
  input ap_clk;
  input m_axis_tx_TREADY;
  input m_axis_tx_TVALID_int_regslice;
  input tx_word_last_reg_440_pp0_iter8_reg;

  wire ack_in_t_i_1__1_n_0;
  wire ack_in_t_reg_n_0;
  wire ap_clk;
  wire ap_rst_n_inv;
  wire \data_p1[0]_i_1_n_0 ;
  wire \data_p1[0]_i_2_n_0 ;
  wire data_p2;
  wire \data_p2[0]_i_1_n_0 ;
  wire [0:0]m_axis_tx_TLAST;
  wire m_axis_tx_TREADY;
  wire m_axis_tx_TVALID_int_regslice;
  wire [1:0]next__0;
  wire [1:0]state__0;
  wire tx_word_last_reg_440_pp0_iter8_reg;

  LUT4 #(
    .INIT(16'hF4FF)) 
    \FSM_sequential_state[0]_i_1__1 
       (.I0(m_axis_tx_TVALID_int_regslice),
        .I1(state__0[0]),
        .I2(m_axis_tx_TREADY),
        .I3(state__0[1]),
        .O(next__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hEECC0CCC)) 
    \FSM_sequential_state[1]_i_1__1 
       (.I0(ack_in_t_reg_n_0),
        .I1(state__0[1]),
        .I2(m_axis_tx_TREADY),
        .I3(state__0[0]),
        .I4(m_axis_tx_TVALID_int_regslice),
        .O(next__0[1]));
  (* FSM_ENCODED_STATES = "ZERO:01,TWO:10,ONE:11,iSTATE:00" *) 
  FDSE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(next__0[0]),
        .Q(state__0[0]),
        .S(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "ZERO:01,TWO:10,ONE:11,iSTATE:00" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(next__0[1]),
        .Q(state__0[1]),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hFF7F3C0C)) 
    ack_in_t_i_1__1
       (.I0(m_axis_tx_TVALID_int_regslice),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(m_axis_tx_TREADY),
        .I4(ack_in_t_reg_n_0),
        .O(ack_in_t_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ack_in_t_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ack_in_t_i_1__1_n_0),
        .Q(ack_in_t_reg_n_0),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hAEFFBFBFA2008080)) 
    \data_p1[0]_i_1 
       (.I0(\data_p1[0]_i_2_n_0 ),
        .I1(state__0[1]),
        .I2(m_axis_tx_TREADY),
        .I3(m_axis_tx_TVALID_int_regslice),
        .I4(state__0[0]),
        .I5(m_axis_tx_TLAST),
        .O(\data_p1[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[0]_i_2 
       (.I0(tx_word_last_reg_440_pp0_iter8_reg),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(data_p2),
        .O(\data_p1[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\data_p1[0]_i_1_n_0 ),
        .Q(m_axis_tx_TLAST),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hBF80)) 
    \data_p2[0]_i_1 
       (.I0(tx_word_last_reg_440_pp0_iter8_reg),
        .I1(ack_in_t_reg_n_0),
        .I2(m_axis_tx_TVALID_int_regslice),
        .I3(data_p2),
        .O(\data_p2[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\data_p2[0]_i_1_n_0 ),
        .Q(data_p2),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "lfm_tdm_gen_urem_3ns_3ns_3_7_1" *) 
module design_1_lfm_tdm_gen_0_0_lfm_tdm_gen_urem_3ns_3ns_3_7_1
   (Q,
    ap_block_pp0_stage0_subdone,
    D,
    ap_clk);
  output [2:0]Q;
  input ap_block_pp0_stage0_subdone;
  input [2:0]D;
  input ap_clk;

  wire [2:0]D;
  wire [2:0]Q;
  wire ap_block_pp0_stage0_subdone;
  wire ap_clk;

  design_1_lfm_tdm_gen_0_0_lfm_tdm_gen_urem_3ns_3ns_3_7_1_divider lfm_tdm_gen_urem_3ns_3ns_3_7_1_divider_u
       (.D(D),
        .Q(Q),
        .ap_block_pp0_stage0_subdone(ap_block_pp0_stage0_subdone),
        .ap_clk(ap_clk));
endmodule

(* ORIG_REF_NAME = "lfm_tdm_gen_urem_3ns_3ns_3_7_1_divider" *) 
module design_1_lfm_tdm_gen_0_0_lfm_tdm_gen_urem_3ns_3ns_3_7_1_divider
   (Q,
    ap_block_pp0_stage0_subdone,
    D,
    ap_clk);
  output [2:0]Q;
  input ap_block_pp0_stage0_subdone;
  input [2:0]D;
  input ap_clk;

  wire [2:0]D;
  wire [2:0]Q;
  wire ap_block_pp0_stage0_subdone;
  wire ap_clk;
  wire \dividend_tmp_reg[0][1]_srl2_n_0 ;
  wire \dividend_tmp_reg[0][2]_srl2_n_0 ;
  wire \loop[0].dividend_tmp_reg[1][1]_srl3_n_0 ;
  wire \loop[0].dividend_tmp_reg_n_0_[1][2] ;
  wire [0:0]\loop[0].remd_tmp_reg[1] ;
  wire \loop[1].remd_tmp[2][0]_i_1_n_0 ;
  wire \loop[1].remd_tmp[2][1]_i_1_n_0 ;
  wire \loop[2].remd_tmp[3][0]_i_1_n_0 ;
  wire \loop[2].remd_tmp[3][1]_i_1_n_0 ;
  wire \loop[2].remd_tmp[3][2]_i_1_n_0 ;
  wire [2:0]p_1_in;

  (* srl_bus_name = "inst/\\urem_3ns_3ns_3_7_1_U1/lfm_tdm_gen_urem_3ns_3ns_3_7_1_divider_u/dividend_tmp_reg[0] " *) 
  (* srl_name = "inst/\\urem_3ns_3ns_3_7_1_U1/lfm_tdm_gen_urem_3ns_3ns_3_7_1_divider_u/dividend_tmp_reg[0][1]_srl2 " *) 
  SRL16E \dividend_tmp_reg[0][1]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(D[1]),
        .Q(\dividend_tmp_reg[0][1]_srl2_n_0 ));
  (* srl_bus_name = "inst/\\urem_3ns_3ns_3_7_1_U1/lfm_tdm_gen_urem_3ns_3ns_3_7_1_divider_u/dividend_tmp_reg[0] " *) 
  (* srl_name = "inst/\\urem_3ns_3ns_3_7_1_U1/lfm_tdm_gen_urem_3ns_3ns_3_7_1_divider_u/dividend_tmp_reg[0][2]_srl2 " *) 
  SRL16E \dividend_tmp_reg[0][2]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(D[2]),
        .Q(\dividend_tmp_reg[0][2]_srl2_n_0 ));
  (* srl_bus_name = "inst/\\urem_3ns_3ns_3_7_1_U1/lfm_tdm_gen_urem_3ns_3ns_3_7_1_divider_u/loop[0].dividend_tmp_reg[1] " *) 
  (* srl_name = "inst/\\urem_3ns_3ns_3_7_1_U1/lfm_tdm_gen_urem_3ns_3ns_3_7_1_divider_u/loop[0].dividend_tmp_reg[1][1]_srl3 " *) 
  SRL16E \loop[0].dividend_tmp_reg[1][1]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(D[0]),
        .Q(\loop[0].dividend_tmp_reg[1][1]_srl3_n_0 ));
  FDRE \loop[0].dividend_tmp_reg[1][2] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\dividend_tmp_reg[0][1]_srl2_n_0 ),
        .Q(\loop[0].dividend_tmp_reg_n_0_[1][2] ),
        .R(1'b0));
  FDRE \loop[0].remd_tmp_reg[1][0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\dividend_tmp_reg[0][2]_srl2_n_0 ),
        .Q(\loop[0].remd_tmp_reg[1] ),
        .R(1'b0));
  FDRE \loop[1].dividend_tmp_reg[2][2] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\loop[0].dividend_tmp_reg[1][1]_srl3_n_0 ),
        .Q(p_1_in[0]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \loop[1].remd_tmp[2][0]_i_1 
       (.I0(\loop[0].remd_tmp_reg[1] ),
        .I1(\loop[0].dividend_tmp_reg_n_0_[1][2] ),
        .O(\loop[1].remd_tmp[2][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \loop[1].remd_tmp[2][1]_i_1 
       (.I0(\loop[0].remd_tmp_reg[1] ),
        .I1(\loop[0].dividend_tmp_reg_n_0_[1][2] ),
        .O(\loop[1].remd_tmp[2][1]_i_1_n_0 ));
  FDRE \loop[1].remd_tmp_reg[2][0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\loop[1].remd_tmp[2][0]_i_1_n_0 ),
        .Q(p_1_in[1]),
        .R(1'b0));
  FDRE \loop[1].remd_tmp_reg[2][1] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\loop[1].remd_tmp[2][1]_i_1_n_0 ),
        .Q(p_1_in[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h1C)) 
    \loop[2].remd_tmp[3][0]_i_1 
       (.I0(p_1_in[1]),
        .I1(p_1_in[2]),
        .I2(p_1_in[0]),
        .O(\loop[2].remd_tmp[3][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h2C)) 
    \loop[2].remd_tmp[3][1]_i_1 
       (.I0(p_1_in[2]),
        .I1(p_1_in[1]),
        .I2(p_1_in[0]),
        .O(\loop[2].remd_tmp[3][1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \loop[2].remd_tmp[3][2]_i_1 
       (.I0(p_1_in[2]),
        .I1(p_1_in[1]),
        .I2(p_1_in[0]),
        .O(\loop[2].remd_tmp[3][2]_i_1_n_0 ));
  FDRE \loop[2].remd_tmp_reg[3][0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\loop[2].remd_tmp[3][0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \loop[2].remd_tmp_reg[3][1] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\loop[2].remd_tmp[3][1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \loop[2].remd_tmp_reg[3][2] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\loop[2].remd_tmp[3][2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
