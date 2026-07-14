// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Tue Jul 14 14:24:36 2026
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
  wire interrupt;
  wire [31:0]m_axis_tx_TDATA;
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
  wire [15:0]NLW_inst_dbg_lfm_i_UNCONNECTED;
  wire [15:0]NLW_inst_dbg_lfm_q_UNCONNECTED;
  wire [15:0]NLW_inst_dbg_sample_count_UNCONNECTED;
  wire [2:0]NLW_inst_dbg_state_UNCONNECTED;
  wire [1:0]NLW_inst_dbg_tx_sel_UNCONNECTED;
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
  assign dbg_lfm_i[15] = \<const1> ;
  assign dbg_lfm_i[14] = \<const1> ;
  assign dbg_lfm_i[13] = \<const0> ;
  assign dbg_lfm_i[12] = \<const1> ;
  assign dbg_lfm_i[11] = \<const0> ;
  assign dbg_lfm_i[10] = \<const0> ;
  assign dbg_lfm_i[9] = \<const0> ;
  assign dbg_lfm_i[8] = \<const1> ;
  assign dbg_lfm_i[7] = \<const1> ;
  assign dbg_lfm_i[6] = \<const1> ;
  assign dbg_lfm_i[5] = \<const1> ;
  assign dbg_lfm_i[4] = \<const1> ;
  assign dbg_lfm_i[3] = \<const0> ;
  assign dbg_lfm_i[2] = \<const1> ;
  assign dbg_lfm_i[1] = \<const0> ;
  assign dbg_lfm_i[0] = \<const1> ;
  assign dbg_lfm_q[15] = \<const1> ;
  assign dbg_lfm_q[14] = \<const1> ;
  assign dbg_lfm_q[13] = \<const1> ;
  assign dbg_lfm_q[12] = \<const1> ;
  assign dbg_lfm_q[11] = \<const0> ;
  assign dbg_lfm_q[10] = \<const1> ;
  assign dbg_lfm_q[9] = \<const1> ;
  assign dbg_lfm_q[8] = \<const1> ;
  assign dbg_lfm_q[7] = \<const0> ;
  assign dbg_lfm_q[6] = \<const0> ;
  assign dbg_lfm_q[5] = \<const1> ;
  assign dbg_lfm_q[4] = \<const1> ;
  assign dbg_lfm_q[3] = \<const0> ;
  assign dbg_lfm_q[2] = \<const1> ;
  assign dbg_lfm_q[1] = \<const1> ;
  assign dbg_lfm_q[0] = \<const1> ;
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
        .dbg_lfm_i(NLW_inst_dbg_lfm_i_UNCONNECTED[15:0]),
        .dbg_lfm_q(NLW_inst_dbg_lfm_q_UNCONNECTED[15:0]),
        .dbg_sample_count(NLW_inst_dbg_sample_count_UNCONNECTED[15:0]),
        .dbg_state(NLW_inst_dbg_state_UNCONNECTED[2:0]),
        .dbg_tx_sel(NLW_inst_dbg_tx_sel_UNCONNECTED[1:0]),
        .interrupt(interrupt),
        .m_axis_tx_TDATA(m_axis_tx_TDATA),
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
  wire CTRL_s_axi_U_n_10;
  wire CTRL_s_axi_U_n_11;
  wire CTRL_s_axi_U_n_12;
  wire CTRL_s_axi_U_n_25;
  wire CTRL_s_axi_U_n_7;
  wire CTRL_s_axi_U_n_9;
  wire LFM_IQ_LUT_U_n_1;
  wire LFM_IQ_LUT_U_n_10;
  wire LFM_IQ_LUT_U_n_11;
  wire LFM_IQ_LUT_U_n_12;
  wire LFM_IQ_LUT_U_n_13;
  wire LFM_IQ_LUT_U_n_14;
  wire LFM_IQ_LUT_U_n_15;
  wire LFM_IQ_LUT_U_n_16;
  wire LFM_IQ_LUT_U_n_17;
  wire LFM_IQ_LUT_U_n_18;
  wire LFM_IQ_LUT_U_n_19;
  wire LFM_IQ_LUT_U_n_2;
  wire LFM_IQ_LUT_U_n_20;
  wire LFM_IQ_LUT_U_n_21;
  wire LFM_IQ_LUT_U_n_22;
  wire LFM_IQ_LUT_U_n_23;
  wire LFM_IQ_LUT_U_n_24;
  wire LFM_IQ_LUT_U_n_25;
  wire LFM_IQ_LUT_U_n_26;
  wire LFM_IQ_LUT_U_n_27;
  wire LFM_IQ_LUT_U_n_28;
  wire LFM_IQ_LUT_U_n_29;
  wire LFM_IQ_LUT_U_n_3;
  wire LFM_IQ_LUT_U_n_4;
  wire LFM_IQ_LUT_U_n_5;
  wire LFM_IQ_LUT_U_n_6;
  wire LFM_IQ_LUT_U_n_7;
  wire LFM_IQ_LUT_U_n_8;
  wire LFM_IQ_LUT_U_n_9;
  wire [11:0]add_ln53_fu_324_p2;
  wire ap_block_pp0_stage0_subdone;
  wire ap_clk;
  wire ap_condition_110;
  wire ap_condition_exit_pp0_iter0_stage0;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter2;
  wire ap_loop_exit_ready_pp0_iter1_reg;
  wire ap_loop_exit_ready_pp0_iter2_reg;
  wire ap_loop_init;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire ap_start;
  wire [2:0]chirp3_fu_122;
  wire [2:0]chirp_16_fu_130;
  wire [2:0]chirp_2_fu_287_p3;
  wire [2:0]chirp_fu_336_p2;
  wire data_in0;
  wire flow_control_loop_pipe_U_n_13;
  wire flow_control_loop_pipe_U_n_14;
  wire flow_control_loop_pipe_U_n_26;
  wire icmp_ln53_fu_342_p2;
  wire icmp_ln53_reg_416;
  wire icmp_ln56_fu_330_p2;
  wire icmp_ln56_reg_411;
  wire [11:0]indvar_flatten2_fu_118;
  wire int_isr8_out;
  wire interrupt;
  wire load_p1;
  wire load_p1_0;
  wire load_p2;
  wire [30:0]\^m_axis_tx_TDATA ;
  wire [0:0]m_axis_tx_TLAST;
  wire m_axis_tx_TREADY;
  wire m_axis_tx_TREADY_int_regslice;
  wire [2:2]\^m_axis_tx_TSTRB ;
  wire m_axis_tx_TVALID;
  wire regslice_both_m_axis_tx_V_data_V_U_n_1;
  wire regslice_both_m_axis_tx_V_data_V_U_n_10;
  wire regslice_both_m_axis_tx_V_data_V_U_n_11;
  wire regslice_both_m_axis_tx_V_data_V_U_n_8;
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
  wire [10:0]sample4_fu_126;
  wire [10:0]sample_fu_318_p2;
  wire [9:0]select_ln53_fu_279_p3;
  wire [1:0]state__0;
  wire [1:0]state__0_1;
  wire tx_word_last_fu_312_p2;
  wire tx_word_last_reg_406;

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
  assign dbg_lfm_i[11] = \<const0> ;
  assign dbg_lfm_i[10] = \<const0> ;
  assign dbg_lfm_i[9] = \<const0> ;
  assign dbg_lfm_i[8] = \<const0> ;
  assign dbg_lfm_i[7] = \<const0> ;
  assign dbg_lfm_i[6] = \<const0> ;
  assign dbg_lfm_i[5] = \<const0> ;
  assign dbg_lfm_i[4] = \<const0> ;
  assign dbg_lfm_i[3] = \<const0> ;
  assign dbg_lfm_i[2] = \<const0> ;
  assign dbg_lfm_i[1] = \<const0> ;
  assign dbg_lfm_i[0] = \<const0> ;
  assign dbg_lfm_q[15] = \<const0> ;
  assign dbg_lfm_q[14] = \<const0> ;
  assign dbg_lfm_q[13] = \<const0> ;
  assign dbg_lfm_q[12] = \<const0> ;
  assign dbg_lfm_q[11] = \<const0> ;
  assign dbg_lfm_q[10] = \<const0> ;
  assign dbg_lfm_q[9] = \<const0> ;
  assign dbg_lfm_q[8] = \<const0> ;
  assign dbg_lfm_q[7] = \<const0> ;
  assign dbg_lfm_q[6] = \<const0> ;
  assign dbg_lfm_q[5] = \<const0> ;
  assign dbg_lfm_q[4] = \<const0> ;
  assign dbg_lfm_q[3] = \<const0> ;
  assign dbg_lfm_q[2] = \<const0> ;
  assign dbg_lfm_q[1] = \<const0> ;
  assign dbg_lfm_q[0] = \<const0> ;
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
  assign m_axis_tx_TDATA[30:16] = \^m_axis_tx_TDATA [30:16];
  assign m_axis_tx_TDATA[15] = \^m_axis_tx_TDATA [14];
  assign m_axis_tx_TDATA[14:0] = \^m_axis_tx_TDATA [14:0];
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
       (.D(chirp_fu_336_p2[2:1]),
        .\FSM_onehot_rstate_reg[1]_0 (s_axi_CTRL_ARREADY),
        .\FSM_onehot_wstate_reg[1]_0 (s_axi_CTRL_AWREADY),
        .\FSM_onehot_wstate_reg[2]_0 (s_axi_CTRL_WREADY),
        .Q(CTRL_s_axi_U_n_7),
        .ap_clk(ap_clk),
        .ap_condition_110(ap_condition_110),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .ap_enable_reg_pp0_iter2(ap_enable_reg_pp0_iter2),
        .ap_loop_init(ap_loop_init),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .ap_start(ap_start),
        .\chirp_16_fu_130_reg[1] (chirp_16_fu_130[1:0]),
        .\chirp_16_fu_130_reg[2] (chirp3_fu_122),
        .\chirp_16_fu_130_reg[2]_0 (flow_control_loop_pipe_U_n_26),
        .icmp_ln53_fu_342_p2(icmp_ln53_fu_342_p2),
        .icmp_ln53_reg_416(icmp_ln53_reg_416),
        .icmp_ln56_fu_330_p2(icmp_ln56_fu_330_p2),
        .icmp_ln56_reg_411(icmp_ln56_reg_411),
        .\indvar_flatten2_fu_118_reg[0] (CTRL_s_axi_U_n_11),
        .\indvar_flatten2_fu_118_reg[11] (CTRL_s_axi_U_n_9),
        .\indvar_flatten2_fu_118_reg[2] (CTRL_s_axi_U_n_12),
        .\indvar_flatten2_fu_118_reg[3] (CTRL_s_axi_U_n_10),
        .int_ap_start_reg_0(indvar_flatten2_fu_118),
        .int_ap_start_reg_1(flow_control_loop_pipe_U_n_14),
        .int_isr8_out(int_isr8_out),
        .\int_isr_reg[1]_0 (flow_control_loop_pipe_U_n_13),
        .int_task_ap_done_reg_0(regslice_both_m_axis_tx_V_data_V_U_n_8),
        .interrupt(interrupt),
        .m_axis_tx_TREADY_int_regslice(m_axis_tx_TREADY_int_regslice),
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
        .\sample4_fu_126_reg[10] (sample4_fu_126),
        .\sample4_fu_126_reg[7] (CTRL_s_axi_U_n_25),
        .\sample4_fu_126_reg[9] (sample_fu_318_p2[10:1]));
  GND GND
       (.G(\<const0> ));
  design_1_lfm_tdm_gen_0_0_lfm_tdm_gen_LFM_IQ_LUT_ROM_AUTO_1R LFM_IQ_LUT_U
       (.ADDRARDADDR(select_ln53_fu_279_p3),
        .D({data_in0,LFM_IQ_LUT_U_n_1,LFM_IQ_LUT_U_n_2,LFM_IQ_LUT_U_n_3,LFM_IQ_LUT_U_n_4,LFM_IQ_LUT_U_n_5,LFM_IQ_LUT_U_n_6,LFM_IQ_LUT_U_n_7,LFM_IQ_LUT_U_n_8,LFM_IQ_LUT_U_n_9,LFM_IQ_LUT_U_n_10,LFM_IQ_LUT_U_n_11,LFM_IQ_LUT_U_n_12,LFM_IQ_LUT_U_n_13,LFM_IQ_LUT_U_n_14,LFM_IQ_LUT_U_n_15,LFM_IQ_LUT_U_n_16,LFM_IQ_LUT_U_n_17,LFM_IQ_LUT_U_n_18,LFM_IQ_LUT_U_n_19,LFM_IQ_LUT_U_n_20,LFM_IQ_LUT_U_n_21,LFM_IQ_LUT_U_n_22,LFM_IQ_LUT_U_n_23,LFM_IQ_LUT_U_n_24,LFM_IQ_LUT_U_n_25,LFM_IQ_LUT_U_n_26,LFM_IQ_LUT_U_n_27,LFM_IQ_LUT_U_n_28,LFM_IQ_LUT_U_n_29}),
        .ap_clk(ap_clk),
        .ap_condition_110(ap_condition_110));
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
  FDRE ap_loop_exit_ready_pp0_iter1_reg_reg
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(ap_condition_exit_pp0_iter0_stage0),
        .Q(ap_loop_exit_ready_pp0_iter1_reg),
        .R(1'b0));
  FDRE ap_loop_exit_ready_pp0_iter2_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(regslice_both_m_axis_tx_V_data_V_U_n_1),
        .Q(ap_loop_exit_ready_pp0_iter2_reg),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \chirp3_fu_122_reg[0] 
       (.C(ap_clk),
        .CE(ap_condition_110),
        .D(chirp_2_fu_287_p3[0]),
        .Q(chirp3_fu_122[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \chirp3_fu_122_reg[1] 
       (.C(ap_clk),
        .CE(ap_condition_110),
        .D(chirp_2_fu_287_p3[1]),
        .Q(chirp3_fu_122[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \chirp3_fu_122_reg[2] 
       (.C(ap_clk),
        .CE(ap_condition_110),
        .D(chirp_2_fu_287_p3[2]),
        .Q(chirp3_fu_122[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \chirp_16_fu_130_reg[0] 
       (.C(ap_clk),
        .CE(ap_condition_110),
        .D(chirp_fu_336_p2[0]),
        .Q(chirp_16_fu_130[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \chirp_16_fu_130_reg[1] 
       (.C(ap_clk),
        .CE(ap_condition_110),
        .D(chirp_fu_336_p2[1]),
        .Q(chirp_16_fu_130[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \chirp_16_fu_130_reg[2] 
       (.C(ap_clk),
        .CE(ap_condition_110),
        .D(chirp_fu_336_p2[2]),
        .Q(chirp_16_fu_130[2]),
        .R(1'b0));
  design_1_lfm_tdm_gen_0_0_lfm_tdm_gen_flow_control_loop_pipe flow_control_loop_pipe_U
       (.ADDRARDADDR(select_ln53_fu_279_p3),
        .D(add_ln53_fu_324_p2),
        .Q(indvar_flatten2_fu_118),
        .ap_clk(ap_clk),
        .ap_condition_110(ap_condition_110),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .ap_loop_init(ap_loop_init),
        .ap_loop_init_reg_0(flow_control_loop_pipe_U_n_14),
        .ap_loop_init_reg_1(sample_fu_318_p2[0]),
        .ap_loop_init_reg_2(CTRL_s_axi_U_n_9),
        .ap_rst_n(ap_rst_n),
        .ap_start(ap_start),
        .\chirp3_fu_122_reg[0] (chirp_fu_336_p2[0]),
        .\chirp3_fu_122_reg[2] (chirp_2_fu_287_p3),
        .\chirp3_fu_122_reg[2]_0 (chirp_16_fu_130),
        .icmp_ln53_reg_416(icmp_ln53_reg_416),
        .icmp_ln56_reg_411(icmp_ln56_reg_411),
        .\indvar_flatten2_fu_118_reg[5] (flow_control_loop_pipe_U_n_13),
        .int_ap_start_reg(flow_control_loop_pipe_U_n_26),
        .\int_isr_reg[1] (CTRL_s_axi_U_n_11),
        .\int_isr_reg[1]_0 (CTRL_s_axi_U_n_10),
        .\int_isr_reg[1]_1 (CTRL_s_axi_U_n_12),
        .tx_word_last_fu_312_p2(tx_word_last_fu_312_p2),
        .\tx_word_last_reg_406_reg[0] (CTRL_s_axi_U_n_25),
        .\tx_word_last_reg_406_reg[0]_0 (sample4_fu_126),
        .\tx_word_last_reg_406_reg[0]_1 (chirp3_fu_122));
  FDRE \icmp_ln53_reg_416_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(icmp_ln53_fu_342_p2),
        .Q(icmp_ln53_reg_416),
        .R(1'b0));
  FDRE \icmp_ln56_reg_411_reg[0] 
       (.C(ap_clk),
        .CE(ap_condition_110),
        .D(icmp_ln56_fu_330_p2),
        .Q(icmp_ln56_reg_411),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten2_fu_118_reg[0] 
       (.C(ap_clk),
        .CE(ap_condition_110),
        .D(add_ln53_fu_324_p2[0]),
        .Q(indvar_flatten2_fu_118[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten2_fu_118_reg[10] 
       (.C(ap_clk),
        .CE(ap_condition_110),
        .D(add_ln53_fu_324_p2[10]),
        .Q(indvar_flatten2_fu_118[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten2_fu_118_reg[11] 
       (.C(ap_clk),
        .CE(ap_condition_110),
        .D(add_ln53_fu_324_p2[11]),
        .Q(indvar_flatten2_fu_118[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten2_fu_118_reg[1] 
       (.C(ap_clk),
        .CE(ap_condition_110),
        .D(add_ln53_fu_324_p2[1]),
        .Q(indvar_flatten2_fu_118[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten2_fu_118_reg[2] 
       (.C(ap_clk),
        .CE(ap_condition_110),
        .D(add_ln53_fu_324_p2[2]),
        .Q(indvar_flatten2_fu_118[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten2_fu_118_reg[3] 
       (.C(ap_clk),
        .CE(ap_condition_110),
        .D(add_ln53_fu_324_p2[3]),
        .Q(indvar_flatten2_fu_118[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten2_fu_118_reg[4] 
       (.C(ap_clk),
        .CE(ap_condition_110),
        .D(add_ln53_fu_324_p2[4]),
        .Q(indvar_flatten2_fu_118[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten2_fu_118_reg[5] 
       (.C(ap_clk),
        .CE(ap_condition_110),
        .D(add_ln53_fu_324_p2[5]),
        .Q(indvar_flatten2_fu_118[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten2_fu_118_reg[6] 
       (.C(ap_clk),
        .CE(ap_condition_110),
        .D(add_ln53_fu_324_p2[6]),
        .Q(indvar_flatten2_fu_118[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten2_fu_118_reg[7] 
       (.C(ap_clk),
        .CE(ap_condition_110),
        .D(add_ln53_fu_324_p2[7]),
        .Q(indvar_flatten2_fu_118[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten2_fu_118_reg[8] 
       (.C(ap_clk),
        .CE(ap_condition_110),
        .D(add_ln53_fu_324_p2[8]),
        .Q(indvar_flatten2_fu_118[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten2_fu_118_reg[9] 
       (.C(ap_clk),
        .CE(ap_condition_110),
        .D(add_ln53_fu_324_p2[9]),
        .Q(indvar_flatten2_fu_118[9]),
        .R(1'b0));
  design_1_lfm_tdm_gen_0_0_lfm_tdm_gen_regslice_both regslice_both_m_axis_tx_V_data_V_U
       (.D({data_in0,LFM_IQ_LUT_U_n_1,LFM_IQ_LUT_U_n_2,LFM_IQ_LUT_U_n_3,LFM_IQ_LUT_U_n_4,LFM_IQ_LUT_U_n_5,LFM_IQ_LUT_U_n_6,LFM_IQ_LUT_U_n_7,LFM_IQ_LUT_U_n_8,LFM_IQ_LUT_U_n_9,LFM_IQ_LUT_U_n_10,LFM_IQ_LUT_U_n_11,LFM_IQ_LUT_U_n_12,LFM_IQ_LUT_U_n_13,LFM_IQ_LUT_U_n_14,LFM_IQ_LUT_U_n_15,LFM_IQ_LUT_U_n_16,LFM_IQ_LUT_U_n_17,LFM_IQ_LUT_U_n_18,LFM_IQ_LUT_U_n_19,LFM_IQ_LUT_U_n_20,LFM_IQ_LUT_U_n_21,LFM_IQ_LUT_U_n_22,LFM_IQ_LUT_U_n_23,LFM_IQ_LUT_U_n_24,LFM_IQ_LUT_U_n_25,LFM_IQ_LUT_U_n_26,LFM_IQ_LUT_U_n_27,LFM_IQ_LUT_U_n_28,LFM_IQ_LUT_U_n_29}),
        .\FSM_sequential_state_reg[0]_0 (regslice_both_m_axis_tx_V_data_V_U_n_10),
        .\FSM_sequential_state_reg[1]_0 (regslice_both_m_axis_tx_V_data_V_U_n_11),
        .Q(CTRL_s_axi_U_n_7),
        .ap_block_pp0_stage0_subdone(ap_block_pp0_stage0_subdone),
        .ap_clk(ap_clk),
        .ap_condition_110(ap_condition_110),
        .ap_condition_exit_pp0_iter0_stage0(ap_condition_exit_pp0_iter0_stage0),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .ap_enable_reg_pp0_iter2(ap_enable_reg_pp0_iter2),
        .ap_enable_reg_pp0_iter2_reg(regslice_both_m_axis_tx_V_data_V_U_n_1),
        .ap_loop_exit_ready_pp0_iter1_reg(ap_loop_exit_ready_pp0_iter1_reg),
        .ap_loop_exit_ready_pp0_iter1_reg_reg(indvar_flatten2_fu_118[5]),
        .ap_loop_exit_ready_pp0_iter1_reg_reg_0(CTRL_s_axi_U_n_9),
        .ap_loop_exit_ready_pp0_iter2_reg(ap_loop_exit_ready_pp0_iter2_reg),
        .ap_loop_exit_ready_pp0_iter2_reg_reg(regslice_both_m_axis_tx_V_data_V_U_n_8),
        .ap_loop_init(ap_loop_init),
        .ap_rst_n_inv(ap_rst_n_inv),
        .ap_start(ap_start),
        .\data_p1_reg[0]_0 (state__0_1),
        .\data_p1_reg[3]_0 (state__0),
        .int_isr8_out(int_isr8_out),
        .load_p1(load_p1_0),
        .load_p1_0(load_p1),
        .load_p2(load_p2),
        .m_axis_tx_TDATA({\^m_axis_tx_TDATA [30:16],\^m_axis_tx_TDATA [14:0]}),
        .m_axis_tx_TREADY(m_axis_tx_TREADY),
        .m_axis_tx_TREADY_int_regslice(m_axis_tx_TREADY_int_regslice),
        .m_axis_tx_TVALID(m_axis_tx_TVALID));
  design_1_lfm_tdm_gen_0_0_lfm_tdm_gen_regslice_both__parameterized0 regslice_both_m_axis_tx_V_keep_V_U
       (.\FSM_sequential_state_reg[1]_0 (regslice_both_m_axis_tx_V_data_V_U_n_10),
        .Q(state__0),
        .ack_in_t_reg_0(regslice_both_m_axis_tx_V_data_V_U_n_11),
        .ap_clk(ap_clk),
        .ap_rst_n_inv(ap_rst_n_inv),
        .load_p1(load_p1),
        .load_p2(load_p2),
        .m_axis_tx_TREADY(m_axis_tx_TREADY),
        .m_axis_tx_TSTRB(\^m_axis_tx_TSTRB ));
  design_1_lfm_tdm_gen_0_0_lfm_tdm_gen_regslice_both__parameterized1 regslice_both_m_axis_tx_V_last_V_U
       (.\FSM_sequential_state_reg[1]_0 (regslice_both_m_axis_tx_V_data_V_U_n_10),
        .Q(state__0_1),
        .ack_in_t_reg_0(regslice_both_m_axis_tx_V_data_V_U_n_11),
        .ap_clk(ap_clk),
        .ap_rst_n_inv(ap_rst_n_inv),
        .load_p1(load_p1_0),
        .load_p2(load_p2),
        .m_axis_tx_TLAST(m_axis_tx_TLAST),
        .m_axis_tx_TREADY(m_axis_tx_TREADY),
        .tx_word_last_reg_406(tx_word_last_reg_406));
  FDRE #(
    .INIT(1'b0)) 
    \sample4_fu_126_reg[0] 
       (.C(ap_clk),
        .CE(ap_condition_110),
        .D(sample_fu_318_p2[0]),
        .Q(sample4_fu_126[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample4_fu_126_reg[10] 
       (.C(ap_clk),
        .CE(ap_condition_110),
        .D(sample_fu_318_p2[10]),
        .Q(sample4_fu_126[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample4_fu_126_reg[1] 
       (.C(ap_clk),
        .CE(ap_condition_110),
        .D(sample_fu_318_p2[1]),
        .Q(sample4_fu_126[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample4_fu_126_reg[2] 
       (.C(ap_clk),
        .CE(ap_condition_110),
        .D(sample_fu_318_p2[2]),
        .Q(sample4_fu_126[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample4_fu_126_reg[3] 
       (.C(ap_clk),
        .CE(ap_condition_110),
        .D(sample_fu_318_p2[3]),
        .Q(sample4_fu_126[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample4_fu_126_reg[4] 
       (.C(ap_clk),
        .CE(ap_condition_110),
        .D(sample_fu_318_p2[4]),
        .Q(sample4_fu_126[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample4_fu_126_reg[5] 
       (.C(ap_clk),
        .CE(ap_condition_110),
        .D(sample_fu_318_p2[5]),
        .Q(sample4_fu_126[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample4_fu_126_reg[6] 
       (.C(ap_clk),
        .CE(ap_condition_110),
        .D(sample_fu_318_p2[6]),
        .Q(sample4_fu_126[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample4_fu_126_reg[7] 
       (.C(ap_clk),
        .CE(ap_condition_110),
        .D(sample_fu_318_p2[7]),
        .Q(sample4_fu_126[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample4_fu_126_reg[8] 
       (.C(ap_clk),
        .CE(ap_condition_110),
        .D(sample_fu_318_p2[8]),
        .Q(sample4_fu_126[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample4_fu_126_reg[9] 
       (.C(ap_clk),
        .CE(ap_condition_110),
        .D(sample_fu_318_p2[9]),
        .Q(sample4_fu_126[9]),
        .R(1'b0));
  FDRE \tx_word_last_reg_406_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(tx_word_last_fu_312_p2),
        .Q(tx_word_last_reg_406),
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
    Q,
    icmp_ln53_fu_342_p2,
    \indvar_flatten2_fu_118_reg[11] ,
    \indvar_flatten2_fu_118_reg[3] ,
    \indvar_flatten2_fu_118_reg[0] ,
    \indvar_flatten2_fu_118_reg[2] ,
    D,
    \sample4_fu_126_reg[9] ,
    \sample4_fu_126_reg[7] ,
    icmp_ln56_fu_330_p2,
    \FSM_onehot_wstate_reg[1]_0 ,
    s_axi_CTRL_RDATA,
    ap_clk,
    s_axi_CTRL_ARVALID,
    s_axi_CTRL_ARADDR,
    s_axi_CTRL_RREADY,
    s_axi_CTRL_WVALID,
    s_axi_CTRL_BREADY,
    s_axi_CTRL_WSTRB,
    s_axi_CTRL_WDATA,
    m_axis_tx_TREADY_int_regslice,
    int_task_ap_done_reg_0,
    ap_enable_reg_pp0_iter2,
    ap_enable_reg_pp0_iter1,
    ap_loop_init,
    int_ap_start_reg_0,
    ap_rst_n,
    \chirp_16_fu_130_reg[2] ,
    \chirp_16_fu_130_reg[2]_0 ,
    \sample4_fu_126_reg[10] ,
    \chirp_16_fu_130_reg[1] ,
    icmp_ln56_reg_411,
    icmp_ln53_reg_416,
    s_axi_CTRL_AWVALID,
    ap_condition_110,
    int_ap_start_reg_1,
    s_axi_CTRL_AWADDR,
    int_isr8_out,
    \int_isr_reg[1]_0 );
  output ap_rst_n_inv;
  output interrupt;
  output \FSM_onehot_rstate_reg[1]_0 ;
  output s_axi_CTRL_RVALID;
  output \FSM_onehot_wstate_reg[2]_0 ;
  output s_axi_CTRL_BVALID;
  output ap_start;
  output [0:0]Q;
  output icmp_ln53_fu_342_p2;
  output \indvar_flatten2_fu_118_reg[11] ;
  output \indvar_flatten2_fu_118_reg[3] ;
  output \indvar_flatten2_fu_118_reg[0] ;
  output \indvar_flatten2_fu_118_reg[2] ;
  output [1:0]D;
  output [9:0]\sample4_fu_126_reg[9] ;
  output \sample4_fu_126_reg[7] ;
  output icmp_ln56_fu_330_p2;
  output \FSM_onehot_wstate_reg[1]_0 ;
  output [5:0]s_axi_CTRL_RDATA;
  input ap_clk;
  input s_axi_CTRL_ARVALID;
  input [3:0]s_axi_CTRL_ARADDR;
  input s_axi_CTRL_RREADY;
  input s_axi_CTRL_WVALID;
  input s_axi_CTRL_BREADY;
  input [0:0]s_axi_CTRL_WSTRB;
  input [2:0]s_axi_CTRL_WDATA;
  input m_axis_tx_TREADY_int_regslice;
  input int_task_ap_done_reg_0;
  input ap_enable_reg_pp0_iter2;
  input ap_enable_reg_pp0_iter1;
  input ap_loop_init;
  input [11:0]int_ap_start_reg_0;
  input ap_rst_n;
  input [2:0]\chirp_16_fu_130_reg[2] ;
  input \chirp_16_fu_130_reg[2]_0 ;
  input [10:0]\sample4_fu_126_reg[10] ;
  input [1:0]\chirp_16_fu_130_reg[1] ;
  input icmp_ln56_reg_411;
  input icmp_ln53_reg_416;
  input s_axi_CTRL_AWVALID;
  input ap_condition_110;
  input int_ap_start_reg_1;
  input [1:0]s_axi_CTRL_AWADDR;
  input int_isr8_out;
  input \int_isr_reg[1]_0 ;

  wire [1:0]D;
  wire \FSM_onehot_rstate[1]_i_1_n_0 ;
  wire \FSM_onehot_rstate[2]_i_1_n_0 ;
  wire \FSM_onehot_rstate_reg[1]_0 ;
  wire \FSM_onehot_wstate[1]_i_1_n_0 ;
  wire \FSM_onehot_wstate[2]_i_1_n_0 ;
  wire \FSM_onehot_wstate[3]_i_1_n_0 ;
  wire \FSM_onehot_wstate_reg[1]_0 ;
  wire \FSM_onehot_wstate_reg[2]_0 ;
  wire [0:0]Q;
  wire ap_clk;
  wire ap_condition_110;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter2;
  wire ap_idle;
  wire ap_loop_init;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire ap_start;
  wire ar_hs;
  wire auto_restart_status_i_1_n_0;
  wire auto_restart_status_reg_n_0;
  wire \chirp_16_fu_130[1]_i_2_n_0 ;
  wire \chirp_16_fu_130[1]_i_3_n_0 ;
  wire [1:0]\chirp_16_fu_130_reg[1] ;
  wire [2:0]\chirp_16_fu_130_reg[2] ;
  wire \chirp_16_fu_130_reg[2]_0 ;
  wire icmp_ln53_fu_342_p2;
  wire icmp_ln53_reg_416;
  wire icmp_ln56_fu_330_p2;
  wire icmp_ln56_reg_411;
  wire \icmp_ln56_reg_411[0]_i_2_n_0 ;
  wire \indvar_flatten2_fu_118_reg[0] ;
  wire \indvar_flatten2_fu_118_reg[11] ;
  wire \indvar_flatten2_fu_118_reg[2] ;
  wire \indvar_flatten2_fu_118_reg[3] ;
  wire int_ap_ready;
  wire int_ap_ready_i_1_n_0;
  wire int_ap_ready_i_2_n_0;
  wire int_ap_start5_out;
  wire int_ap_start_i_1_n_0;
  wire [11:0]int_ap_start_reg_0;
  wire int_ap_start_reg_1;
  wire int_auto_restart_i_1_n_0;
  wire int_auto_restart_i_2_n_0;
  wire int_gie_i_1_n_0;
  wire int_gie_i_2_n_0;
  wire int_gie_reg_n_0;
  wire int_ier10_out;
  wire int_interrupt0;
  wire int_isr7_out;
  wire int_isr8_out;
  wire \int_isr[0]_i_1_n_0 ;
  wire \int_isr[1]_i_1_n_0 ;
  wire \int_isr_reg[1]_0 ;
  wire \int_isr_reg_n_0_[0] ;
  wire \int_isr_reg_n_0_[1] ;
  wire int_task_ap_done;
  wire int_task_ap_done_i_1_n_0;
  wire int_task_ap_done_i_2_n_0;
  wire int_task_ap_done_i_5_n_0;
  wire int_task_ap_done_reg_0;
  wire interrupt;
  wire m_axis_tx_TREADY_int_regslice;
  wire [7:2]p_0_in;
  wire p_0_in__0;
  wire [1:0]rdata;
  wire \rdata[0]_i_2_n_0 ;
  wire \rdata[0]_i_3_n_0 ;
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
  wire \sample4_fu_126[8]_i_2_n_0 ;
  wire [10:0]\sample4_fu_126_reg[10] ;
  wire \sample4_fu_126_reg[7] ;
  wire [9:0]\sample4_fu_126_reg[9] ;
  wire task_ap_done;
  wire waddr;
  wire \waddr_reg_n_0_[2] ;
  wire \waddr_reg_n_0_[3] ;

  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h8BFB)) 
    \FSM_onehot_rstate[1]_i_1 
       (.I0(s_axi_CTRL_RREADY),
        .I1(s_axi_CTRL_RVALID),
        .I2(\FSM_onehot_rstate_reg[1]_0 ),
        .I3(s_axi_CTRL_ARVALID),
        .O(\FSM_onehot_rstate[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
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
    .INIT(32'hFF474447)) 
    \FSM_onehot_wstate[1]_i_1 
       (.I0(s_axi_CTRL_AWVALID),
        .I1(\FSM_onehot_wstate_reg[1]_0 ),
        .I2(\FSM_onehot_wstate_reg[2]_0 ),
        .I3(s_axi_CTRL_BVALID),
        .I4(s_axi_CTRL_BREADY),
        .O(\FSM_onehot_wstate[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF444)) 
    \FSM_onehot_wstate[2]_i_1 
       (.I0(s_axi_CTRL_WVALID),
        .I1(\FSM_onehot_wstate_reg[2]_0 ),
        .I2(s_axi_CTRL_AWVALID),
        .I3(\FSM_onehot_wstate_reg[1]_0 ),
        .O(\FSM_onehot_wstate[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_wstate[3]_i_1 
       (.I0(s_axi_CTRL_WVALID),
        .I1(\FSM_onehot_wstate_reg[2]_0 ),
        .I2(s_axi_CTRL_BREADY),
        .I3(s_axi_CTRL_BVALID),
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
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFFEAAAA)) 
    auto_restart_status_i_1
       (.I0(p_0_in[7]),
        .I1(ap_start),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(ap_enable_reg_pp0_iter2),
        .I4(auto_restart_status_reg_n_0),
        .O(auto_restart_status_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    auto_restart_status_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(auto_restart_status_i_1_n_0),
        .Q(auto_restart_status_reg_n_0),
        .R(ap_rst_n_inv));
  LUT4 #(
    .INIT(16'hFF06)) 
    \chirp_16_fu_130[1]_i_1 
       (.I0(\chirp_16_fu_130_reg[2] [1]),
        .I1(\chirp_16_fu_130_reg[2] [0]),
        .I2(\icmp_ln56_reg_411[0]_i_2_n_0 ),
        .I3(\chirp_16_fu_130[1]_i_2_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hBE0000003C003C00)) 
    \chirp_16_fu_130[1]_i_2 
       (.I0(ap_start),
        .I1(\chirp_16_fu_130_reg[1] [0]),
        .I2(\chirp_16_fu_130_reg[1] [1]),
        .I3(icmp_ln56_reg_411),
        .I4(\chirp_16_fu_130[1]_i_3_n_0 ),
        .I5(ap_loop_init),
        .O(\chirp_16_fu_130[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \chirp_16_fu_130[1]_i_3 
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(icmp_ln53_reg_416),
        .O(\chirp_16_fu_130[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF1444)) 
    \chirp_16_fu_130[2]_i_1 
       (.I0(\icmp_ln56_reg_411[0]_i_2_n_0 ),
        .I1(\chirp_16_fu_130_reg[2] [2]),
        .I2(\chirp_16_fu_130_reg[2] [0]),
        .I3(\chirp_16_fu_130_reg[2] [1]),
        .I4(\chirp_16_fu_130_reg[2]_0 ),
        .O(D[1]));
  LUT4 #(
    .INIT(16'h0070)) 
    \icmp_ln53_reg_416[0]_i_1 
       (.I0(ap_start),
        .I1(ap_loop_init),
        .I2(int_ap_start_reg_0[5]),
        .I3(\indvar_flatten2_fu_118_reg[11] ),
        .O(icmp_ln53_fu_342_p2));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \icmp_ln56_reg_411[0]_i_1 
       (.I0(\sample4_fu_126_reg[10] [10]),
        .I1(\sample4_fu_126_reg[10] [9]),
        .I2(\icmp_ln56_reg_411[0]_i_2_n_0 ),
        .I3(\sample4_fu_126_reg[7] ),
        .O(icmp_ln56_fu_330_p2));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hBFBB8888)) 
    \icmp_ln56_reg_411[0]_i_2 
       (.I0(ap_start),
        .I1(ap_loop_init),
        .I2(icmp_ln53_reg_416),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(icmp_ln56_reg_411),
        .O(\icmp_ln56_reg_411[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h01)) 
    int_ap_idle_i_1
       (.I0(ap_enable_reg_pp0_iter2),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(ap_start),
        .O(ap_idle));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_idle_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_idle),
        .Q(p_0_in[2]),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h5555557500000030)) 
    int_ap_ready_i_1
       (.I0(int_ap_ready_i_2_n_0),
        .I1(p_0_in[7]),
        .I2(ap_condition_110),
        .I3(int_ap_start_reg_1),
        .I4(\indvar_flatten2_fu_118_reg[11] ),
        .I5(int_ap_ready),
        .O(int_ap_ready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    int_ap_ready_i_2
       (.I0(s_axi_CTRL_ARVALID),
        .I1(\FSM_onehot_rstate_reg[1]_0 ),
        .I2(s_axi_CTRL_ARADDR[2]),
        .I3(s_axi_CTRL_ARADDR[0]),
        .I4(s_axi_CTRL_ARADDR[1]),
        .I5(s_axi_CTRL_ARADDR[3]),
        .O(int_ap_ready_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_ready_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_ready_i_1_n_0),
        .Q(int_ap_ready),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFFFFEFFFFFF0200)) 
    int_ap_start_i_1
       (.I0(p_0_in[7]),
        .I1(\indvar_flatten2_fu_118_reg[11] ),
        .I2(int_ap_start_reg_1),
        .I3(ap_condition_110),
        .I4(int_ap_start5_out),
        .I5(ap_start),
        .O(int_ap_start_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFF7F)) 
    int_ap_start_i_2
       (.I0(int_ap_start_reg_0[11]),
        .I1(int_ap_start_reg_0[8]),
        .I2(int_ap_start_reg_0[2]),
        .I3(\indvar_flatten2_fu_118_reg[3] ),
        .I4(\indvar_flatten2_fu_118_reg[0] ),
        .O(\indvar_flatten2_fu_118_reg[11] ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    int_ap_start_i_4
       (.I0(s_axi_CTRL_WDATA[0]),
        .I1(\waddr_reg_n_0_[2] ),
        .I2(\FSM_onehot_wstate_reg[2]_0 ),
        .I3(s_axi_CTRL_WVALID),
        .I4(s_axi_CTRL_WSTRB),
        .I5(\waddr_reg_n_0_[3] ),
        .O(int_ap_start5_out));
  LUT4 #(
    .INIT(16'h7FFF)) 
    int_ap_start_i_5
       (.I0(int_ap_start_reg_0[3]),
        .I1(int_ap_start_reg_0[4]),
        .I2(int_ap_start_reg_0[10]),
        .I3(int_ap_start_reg_0[9]),
        .O(\indvar_flatten2_fu_118_reg[3] ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    int_ap_start_i_6
       (.I0(int_ap_start_reg_0[0]),
        .I1(int_ap_start_reg_0[1]),
        .I2(int_ap_start_reg_0[6]),
        .I3(int_ap_start_reg_0[7]),
        .O(\indvar_flatten2_fu_118_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_start_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_start_i_1_n_0),
        .Q(ap_start),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'hB8)) 
    int_auto_restart_i_1
       (.I0(s_axi_CTRL_WDATA[2]),
        .I1(int_auto_restart_i_2_n_0),
        .I2(p_0_in[7]),
        .O(int_auto_restart_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    int_auto_restart_i_2
       (.I0(\waddr_reg_n_0_[3] ),
        .I1(s_axi_CTRL_WSTRB),
        .I2(s_axi_CTRL_WVALID),
        .I3(\FSM_onehot_wstate_reg[2]_0 ),
        .I4(\waddr_reg_n_0_[2] ),
        .O(int_auto_restart_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_auto_restart_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_auto_restart_i_1_n_0),
        .Q(p_0_in[7]),
        .R(ap_rst_n_inv));
  LUT4 #(
    .INIT(16'hFE02)) 
    int_gie_i_1
       (.I0(s_axi_CTRL_WDATA[0]),
        .I1(\waddr_reg_n_0_[3] ),
        .I2(int_gie_i_2_n_0),
        .I3(int_gie_reg_n_0),
        .O(int_gie_i_1_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    int_gie_i_2
       (.I0(\FSM_onehot_wstate_reg[2]_0 ),
        .I1(s_axi_CTRL_WVALID),
        .I2(s_axi_CTRL_WSTRB),
        .I3(\waddr_reg_n_0_[2] ),
        .O(int_gie_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_gie_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_gie_i_1_n_0),
        .Q(int_gie_reg_n_0),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'h00008000)) 
    \int_ier[1]_i_1 
       (.I0(\waddr_reg_n_0_[3] ),
        .I1(s_axi_CTRL_WSTRB),
        .I2(s_axi_CTRL_WVALID),
        .I3(\FSM_onehot_wstate_reg[2]_0 ),
        .I4(\waddr_reg_n_0_[2] ),
        .O(int_ier10_out));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[0] 
       (.C(ap_clk),
        .CE(int_ier10_out),
        .D(s_axi_CTRL_WDATA[0]),
        .Q(Q),
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
  LUT4 #(
    .INIT(16'hF7F8)) 
    \int_isr[0]_i_1 
       (.I0(s_axi_CTRL_WDATA[0]),
        .I1(int_isr7_out),
        .I2(int_isr8_out),
        .I3(\int_isr_reg_n_0_[0] ),
        .O(\int_isr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \int_isr[0]_i_2 
       (.I0(\waddr_reg_n_0_[3] ),
        .I1(\waddr_reg_n_0_[2] ),
        .I2(s_axi_CTRL_WSTRB),
        .I3(s_axi_CTRL_WVALID),
        .I4(\FSM_onehot_wstate_reg[2]_0 ),
        .O(int_isr7_out));
  LUT6 #(
    .INIT(64'h77F7777788F88888)) 
    \int_isr[1]_i_1 
       (.I0(s_axi_CTRL_WDATA[1]),
        .I1(int_isr7_out),
        .I2(ap_condition_110),
        .I3(\int_isr_reg[1]_0 ),
        .I4(p_0_in__0),
        .I5(\int_isr_reg_n_0_[1] ),
        .O(\int_isr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \int_isr[1]_i_3 
       (.I0(int_ap_start_reg_0[2]),
        .I1(int_ap_start_reg_0[8]),
        .I2(int_ap_start_reg_0[11]),
        .O(\indvar_flatten2_fu_118_reg[2] ));
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
  LUT5 #(
    .INIT(32'hFFBFFF00)) 
    int_task_ap_done_i_1
       (.I0(int_task_ap_done_i_2_n_0),
        .I1(\FSM_onehot_rstate_reg[1]_0 ),
        .I2(s_axi_CTRL_ARVALID),
        .I3(task_ap_done),
        .I4(int_task_ap_done),
        .O(int_task_ap_done_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    int_task_ap_done_i_2
       (.I0(s_axi_CTRL_ARADDR[3]),
        .I1(s_axi_CTRL_ARADDR[1]),
        .I2(s_axi_CTRL_ARADDR[0]),
        .I3(s_axi_CTRL_ARADDR[2]),
        .O(int_task_ap_done_i_2_n_0));
  LUT6 #(
    .INIT(64'h00CC00880FCC0088)) 
    int_task_ap_done_i_3
       (.I0(m_axis_tx_TREADY_int_regslice),
        .I1(int_task_ap_done_reg_0),
        .I2(p_0_in[2]),
        .I3(auto_restart_status_reg_n_0),
        .I4(int_task_ap_done_i_5_n_0),
        .I5(ap_start),
        .O(task_ap_done));
  LUT2 #(
    .INIT(4'h1)) 
    int_task_ap_done_i_5
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(ap_enable_reg_pp0_iter2),
        .O(int_task_ap_done_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_task_ap_done_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_task_ap_done_i_1_n_0),
        .Q(int_task_ap_done),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hCCCCFCEE)) 
    \rdata[0]_i_1 
       (.I0(ap_start),
        .I1(\rdata[0]_i_2_n_0 ),
        .I2(Q),
        .I3(s_axi_CTRL_ARADDR[3]),
        .I4(\rdata[0]_i_3_n_0 ),
        .O(rdata[0]));
  LUT6 #(
    .INIT(64'h1010100000001000)) 
    \rdata[0]_i_2 
       (.I0(s_axi_CTRL_ARADDR[1]),
        .I1(s_axi_CTRL_ARADDR[0]),
        .I2(s_axi_CTRL_ARADDR[2]),
        .I3(int_gie_reg_n_0),
        .I4(s_axi_CTRL_ARADDR[3]),
        .I5(\int_isr_reg_n_0_[0] ),
        .O(\rdata[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \rdata[0]_i_3 
       (.I0(s_axi_CTRL_ARADDR[2]),
        .I1(s_axi_CTRL_ARADDR[0]),
        .I2(s_axi_CTRL_ARADDR[1]),
        .O(\rdata[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h3303020230000202)) 
    \rdata[1]_i_1 
       (.I0(int_task_ap_done),
        .I1(\rdata[1]_i_2_n_0 ),
        .I2(s_axi_CTRL_ARADDR[2]),
        .I3(\int_isr_reg_n_0_[1] ),
        .I4(s_axi_CTRL_ARADDR[3]),
        .I5(p_0_in__0),
        .O(rdata[1]));
  LUT2 #(
    .INIT(4'hE)) 
    \rdata[1]_i_2 
       (.I0(s_axi_CTRL_ARADDR[1]),
        .I1(s_axi_CTRL_ARADDR[0]),
        .O(\rdata[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \rdata[9]_i_1 
       (.I0(s_axi_CTRL_ARADDR[2]),
        .I1(s_axi_CTRL_ARADDR[0]),
        .I2(s_axi_CTRL_ARADDR[1]),
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
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h00B4)) 
    \sample4_fu_126[10]_i_1 
       (.I0(\sample4_fu_126_reg[7] ),
        .I1(\sample4_fu_126_reg[10] [9]),
        .I2(\sample4_fu_126_reg[10] [10]),
        .I3(\icmp_ln56_reg_411[0]_i_2_n_0 ),
        .O(\sample4_fu_126_reg[9] [9]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h12)) 
    \sample4_fu_126[1]_i_1 
       (.I0(\sample4_fu_126_reg[10] [0]),
        .I1(\icmp_ln56_reg_411[0]_i_2_n_0 ),
        .I2(\sample4_fu_126_reg[10] [1]),
        .O(\sample4_fu_126_reg[9] [0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0078)) 
    \sample4_fu_126[2]_i_1 
       (.I0(\sample4_fu_126_reg[10] [1]),
        .I1(\sample4_fu_126_reg[10] [0]),
        .I2(\sample4_fu_126_reg[10] [2]),
        .I3(\icmp_ln56_reg_411[0]_i_2_n_0 ),
        .O(\sample4_fu_126_reg[9] [1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00007F80)) 
    \sample4_fu_126[3]_i_1 
       (.I0(\sample4_fu_126_reg[10] [0]),
        .I1(\sample4_fu_126_reg[10] [1]),
        .I2(\sample4_fu_126_reg[10] [2]),
        .I3(\sample4_fu_126_reg[10] [3]),
        .I4(\icmp_ln56_reg_411[0]_i_2_n_0 ),
        .O(\sample4_fu_126_reg[9] [2]));
  LUT6 #(
    .INIT(64'h000000007FFF8000)) 
    \sample4_fu_126[4]_i_1 
       (.I0(\sample4_fu_126_reg[10] [3]),
        .I1(\sample4_fu_126_reg[10] [0]),
        .I2(\sample4_fu_126_reg[10] [1]),
        .I3(\sample4_fu_126_reg[10] [2]),
        .I4(\sample4_fu_126_reg[10] [4]),
        .I5(\icmp_ln56_reg_411[0]_i_2_n_0 ),
        .O(\sample4_fu_126_reg[9] [3]));
  LUT3 #(
    .INIT(8'h09)) 
    \sample4_fu_126[5]_i_1 
       (.I0(\sample4_fu_126[8]_i_2_n_0 ),
        .I1(\sample4_fu_126_reg[10] [5]),
        .I2(\icmp_ln56_reg_411[0]_i_2_n_0 ),
        .O(\sample4_fu_126_reg[9] [4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h00B4)) 
    \sample4_fu_126[6]_i_1 
       (.I0(\sample4_fu_126[8]_i_2_n_0 ),
        .I1(\sample4_fu_126_reg[10] [5]),
        .I2(\sample4_fu_126_reg[10] [6]),
        .I3(\icmp_ln56_reg_411[0]_i_2_n_0 ),
        .O(\sample4_fu_126_reg[9] [5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h0000DF20)) 
    \sample4_fu_126[7]_i_1 
       (.I0(\sample4_fu_126_reg[10] [5]),
        .I1(\sample4_fu_126[8]_i_2_n_0 ),
        .I2(\sample4_fu_126_reg[10] [6]),
        .I3(\sample4_fu_126_reg[10] [7]),
        .I4(\icmp_ln56_reg_411[0]_i_2_n_0 ),
        .O(\sample4_fu_126_reg[9] [6]));
  LUT6 #(
    .INIT(64'h00000000DFFF2000)) 
    \sample4_fu_126[8]_i_1 
       (.I0(\sample4_fu_126_reg[10] [6]),
        .I1(\sample4_fu_126[8]_i_2_n_0 ),
        .I2(\sample4_fu_126_reg[10] [5]),
        .I3(\sample4_fu_126_reg[10] [7]),
        .I4(\sample4_fu_126_reg[10] [8]),
        .I5(\icmp_ln56_reg_411[0]_i_2_n_0 ),
        .O(\sample4_fu_126_reg[9] [7]));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \sample4_fu_126[8]_i_2 
       (.I0(\sample4_fu_126_reg[10] [3]),
        .I1(\sample4_fu_126_reg[10] [0]),
        .I2(\sample4_fu_126_reg[10] [1]),
        .I3(\sample4_fu_126_reg[10] [2]),
        .I4(\sample4_fu_126_reg[10] [4]),
        .O(\sample4_fu_126[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h09)) 
    \sample4_fu_126[9]_i_1 
       (.I0(\sample4_fu_126_reg[7] ),
        .I1(\sample4_fu_126_reg[10] [9]),
        .I2(\icmp_ln56_reg_411[0]_i_2_n_0 ),
        .O(\sample4_fu_126_reg[9] [8]));
  LUT1 #(
    .INIT(2'h1)) 
    \state[0]_i_1 
       (.I0(ap_rst_n),
        .O(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hF7FFFFFF)) 
    \tx_word_last_reg_406[0]_i_3 
       (.I0(\sample4_fu_126_reg[10] [7]),
        .I1(\sample4_fu_126_reg[10] [5]),
        .I2(\sample4_fu_126[8]_i_2_n_0 ),
        .I3(\sample4_fu_126_reg[10] [6]),
        .I4(\sample4_fu_126_reg[10] [8]),
        .O(\sample4_fu_126_reg[7] ));
  LUT2 #(
    .INIT(4'h8)) 
    \waddr[3]_i_1 
       (.I0(\FSM_onehot_wstate_reg[1]_0 ),
        .I1(s_axi_CTRL_AWVALID),
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

(* ORIG_REF_NAME = "lfm_tdm_gen_LFM_IQ_LUT_ROM_AUTO_1R" *) 
module design_1_lfm_tdm_gen_0_0_lfm_tdm_gen_LFM_IQ_LUT_ROM_AUTO_1R
   (D,
    ap_clk,
    ap_condition_110,
    ADDRARDADDR);
  output [29:0]D;
  input ap_clk;
  input ap_condition_110;
  input [9:0]ADDRARDADDR;

  wire [9:0]ADDRARDADDR;
  wire [29:0]D;
  wire ap_clk;
  wire ap_condition_110;
  wire NLW_q0_reg_CASOUTDBITERR_UNCONNECTED;
  wire NLW_q0_reg_CASOUTSBITERR_UNCONNECTED;
  wire NLW_q0_reg_DBITERR_UNCONNECTED;
  wire NLW_q0_reg_SBITERR_UNCONNECTED;
  wire [31:0]NLW_q0_reg_CASDOUTA_UNCONNECTED;
  wire [31:0]NLW_q0_reg_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_q0_reg_CASDOUTPA_UNCONNECTED;
  wire [3:0]NLW_q0_reg_CASDOUTPB_UNCONNECTED;
  wire [31:30]NLW_q0_reg_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_q0_reg_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_q0_reg_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_q0_reg_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_q0_reg_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_q0_reg_RDADDRECC_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d30" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RDADDR_COLLISION_HWCONFIG = "PERFORMANCE" *) 
  (* RTL_RAM_BITS = "30720" *) 
  (* RTL_RAM_NAME = "lfm_tdm_gen/LFM_IQ_LUT_U/q0_reg" *) 
  (* RTL_RAM_STYLE = "NONE" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "29" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("INDEPENDENT"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h12751CE41061A1860E09A58A0B7928E008BCAB7F05E12D6002F3AE8100002EE0),
    .INIT_01(256'h1538EC191669F24A172778B5176F7F37174385B016A80C0015A2120A143897B4),
    .INIT_02(256'h3F09D12A028FD168060052B00948D4F50C5758260F1C5C2A118A60E81396E642),
    .INIT_03(256'h298372CB2AD8EBD32CB365682F055FB131BCDACE34C756D9381053E53B82D1FE),
    .INIT_04(256'h33EBA82B30BA238E2DFB9DFB2BC1179D2A1710A529068946289401B628BF7A27),
    .INIT_05(256'h11841F250E8024D40B0DA9560749AC8D0353AE663F4AAEDB3B4DADED377A2BAA),
    .INIT_06(256'h1178E0C1140EE7C015F1EF89171477D417700058170588CD15DB90EB13FF9871),
    .INIT_07(256'h3127DBBB34F1D6AB3921532F3D8B51620206514D0667D2E90A88561F0E42DACD),
    .INIT_08(256'h2E461EAA2B8A16DD29A88E2A28B184F128AB7B912991F26C2B57E9DC2DE8E233),
    .INIT_09(256'h10FDA04A0D34A6BA08D92B6804202E253F3EAEDA3A6C2D8735DDAA4431C2A53B),
    .INIT_0A(256'h0D10D9151104DFC41420E7FB1641F14D1751FB461747856C16290F431406985B),
    .INIT_0B(256'h29FFEFD72C6C663B2FDC5E03341DD79938F6D34A3E2551460365519F0873D447),
    .INIT_0C(256'h3F052ED639812D0A3461A8B62FEEA2202C6419AD29F20FDC28B5853928BBFA5B),
    .INIT_0D(256'h161AF06917577BBB172787431593924D12B89C350EC5246609F8AA6C049E2DF5),
    .INIT_0E(256'h2F575F07341257A7398F52EE3F70D1230554D25A0ADBD6750FADDD281380E600),
    .INIT_0F(256'h3A06AD543449A89A2F63A1122BA8974829560BF128907FD6295F73CB2BB0689D),
    .INIT_10(256'h1622709317657D2516E989E014BD95D4111020230C28A8130666AD1800352EE0),
    .INIT_11(256'h2C49E6A5309DDCA33625D5783C6E51AC02F7D181094054EE0ECCDBA71333651E),
    .INIT_12(256'h03CE2E413CFCAE7C36722ACD30BA238E2C4C196329818D2A28907FEA298672B8),
    .INIT_13(256'h0D47D960126862FB15DF6F251761FCC416D40A9E1448177E0FFC22480A53AA15),
    .INIT_14(256'h296F8CAD28947E5129F0F02B2D5F638E3287D9A438EB53513FEFD12006EF5339),
    .INIT_15(256'h1604101412641D0F0CEFA7170636AD333EE62ED337B82BDA315EA49E2C7499DF),
    .INIT_16(256'h317DDB30382ED3D03FAD5121072ED3610DE9DA47132E650F16757294176D016D),
    .INIT_17(256'h0450AE133C792E57350C29712EDC1FF82A93930228A604032943F4A12C546685),
    .INIT_18(256'h054352520CADD8931295E370164DF199176D816215D990F511C71E8C0BB2A89F),
    .INIT_19(256'h3367A7882D559C5A29960DB428997D6B2A776D802EEFDFDE357256253D335176),
    .INIT_1A(256'h1169E0A015D96F0717707F961600902611C19E990B43291C035CAE643B102DD3),
    .INIT_1B(256'h2BD397DC28DF07932911F64F2C5DE667324AD9FB3A07D2AC028A51670AB05648),
    .INIT_1C(256'h1589ED84176E7ED615FB1046116C1F5B0A6C29FC01FC2EB5394B2CEA318E24EA),
    .INIT_1D(256'h29F68FF728957E0A2AB2EC752FF6DDD137945442006851220926D4D9108C5ECD),
    .INIT_1E(256'h15EEEF78176B81C5154193BF0FCDA29E07EE2C1C3EDCAED235FDAA622EA91F89),
    .INIT_1F(256'h2AD61423289401BC2A23EF192F3C5F3F370454B50037D121095BD50610FEDFB8),
    .INIT_20(256'h135D6597170CF77D16CF0AC912B79C360B7DA8DB025D2EA338DDACA630922349),
    .INIT_21(256'h3012A2632A67123528927ED82ADE6BBB30DCDC37397B52FA033551910C5BD82B),
    .INIT_22(256'h0A38D5D11222E24F16B0743E1711884A133C9AC70BEC285C0278AE9D38992C7A),
    .INIT_23(256'h3E052EB53436A8842CB09A9128DF07932974F3312E4CE1473676552F0063D122),
    .INIT_24(256'h37E6D403024DD15A0C38D80113B1669417417A24163C8ED010DF208A083BABE3),
    .INIT_25(256'h11C71E8C0925AB283EA42ECC347028C62CA19A6528CD06A729B2719B2F1A5F84),
    .INIT_26(256'h28C3F9E32CA7658B34B2D6F03F25512809C0D560124462A116E7F60F16B78B88),
    .INIT_27(256'h145AE8C1176B7E13153F93C70E5D250B0450AE1339572CF12FD8A1F629E60F99),
    .INIT_28(256'h385FAC532EE5200B29650C60291D75E62E1561C83721D49C022DD1540CB5589D),
    .INIT_29(256'h359A55FE00D6D1280BDA578F1403679A17677D69153F93C90E17A57503A5AE4E),
    .INIT_2A(256'h16B70B8F11182012073E2C953B9F2E0D3119A42F2A40917928B97A892CD9E4F9),
    .INIT_2B(256'h2DD41D9B28E707F329EAF04C3093DCB43B26D22406EF533910F1DF9C16AC741E),
    .INIT_2C(256'h3D485171094054EE12BDE3DA1741FA2F15A392020E59A5100353AE6637762BA7),
    .INIT_2D(256'h15C391660E5D250B03092E7B36E6AB332D439C2A28BA05862A7AED6F32045A62),
    .INIT_2E(256'h2F16A07429270A7529B4F18A308D5CC03BBA51E90814D3FF1227E25B172B78EB),
    .INIT_2F(256'h36AAD501033F51940EDADBBD161CF07416F009A411211FFE0666AD1839DAAD3C),
    .INIT_30(256'h17417A24154893A10CE4A72500A3AEDC3437A8852B55161B289B7D272CCFE516),
    .INIT_31(256'h3DEF2EB131BBA53029FE10202917F6192F44DF2D3A9552650789D39E122B6263),
    .INIT_32(256'h292FF5442FC65E2D3B8ED1FA08BDD482131E64E21769FDD5144D176D0ACDA999),
    .INIT_33(256'h06FF5343122B62631751FB4614C815AD0B6EA8EC3E5C2EC331D8A55D29F20FDC),
    .INIT_34(256'h165C0E0D0E9F24A301EBAEB83496A8F12B22155928B87A992E1DE1B4397B52FA),
    .INIT_35(256'h3A8BAD962E9A1F6928C586402B0EEAF4349F5705021D51510EDADBBD1676F29F),
    .INIT_36(256'h28AB7B912E27619E3A0F52A80814D3FF1330651517707FBB135A9A70086DABBE),
    .INIT_37(256'h3D4851710B4CD6EE151C6BA1171C07D0109B21150405AE2E35FDAA622B9F972A),
    .INIT_38(256'h159B6DD516D20AB10F57A370020DAEB2340228462A8112AF2917761C30415D47),
    .INIT_39(256'h0FFC224802A7AE93344EA8A02A8A12D82920F5C53093DCB43DF8514D0C1F57E2),
    .INIT_3A(256'h36EFAB3A2BC1179D28B97A892F055FB13C15D1C90AB056481508EB51170C887F),
    .INIT_3B(256'h28AC04892C1DE73137C1541F06C5531F12FCE484176E811D12541D3705CBAD6B),
    .INIT_3C(256'h3199DB04000B51200E735B1716BCF49E157312E60B2BA9363C3D2E442EE5200B),
    .INIT_3D(256'h0655D2DE1302E4951769822D11AC9ECA0450AE13351EA9852A9C932A2942F4A7),
    .INIT_3E(256'h15476C5916B78B880E09A58A3F232ED830A3A36728F0085C2B6469AD36E0D4D3),
    .INIT_3F(256'h15ED10900BA328B03C0D2E342E481EAF289201432D77E34F3AB6D2550A51D5E9),
    .INIT_40(256'h0AF6296F3B102DD32D7F1CC428947E512E8F60B03C9E519E0C38D801162C70CF),
    .INIT_41(256'h3C22AE3C2E091E1B2890FF912E4CE1473C75D1AA0C48D8141645716415BA9192),
    .INIT_42(256'h3012A26328B285022CC4E5353A3F528F0A84561B15A5EE0816440EA40C1D2821),
    .INIT_43(256'h29B38E6D2A87ED353625D57806AFD31313DDE7201722078B0EE8242C3F4F2EDB),
    .INIT_44(256'h28C0FA0E30BC5C6F008ED1231013DDE4175B7C1112B79C3604922DFA341FA869),
    .INIT_45(256'h2B6469AD3860D3AD095BD5061568ECEC163E8EC60B7928E03ABF2DAF2CC41AC9),
    .INIT_46(256'h2F965E8B3F70D1230F93DCF91755FB9812981C8903F02E353333A74529478B80),
    .INIT_47(256'h33C9D7FE04F2522E135D6597172307790E3EA53A3D962EA02E431EA328957E0A),
    .INIT_48(256'h3710D4AA08A95471155D6CB916110FCB0A6C29FC38F9ACB82B751691295B73EB),
    .INIT_49(256'h38F6D34A0AB05648163FF143150A14A907CCAC343620AA832A1710A52A7EED5D),
    .INIT_4A(256'h394FD3130B31D6D1167B72BE1496166806AAACF134E0294229920D9A2B47EA18),
    .INIT_4B(256'h3814D3E20A39D5D21637F11014E69537071CACAA351B298129960DB42B5A69D2),
    .INIT_4C(256'h355ED63907B0D3B815476C5915D990F5091AAB3236D62B252A2510EF2AAF6C83),
    .INIT_4D(256'h317DDB30036AD1A01330651516F8894F0C7527B53A38AD6E2B9597052991F26C),
    .INIT_4E(256'h2D24642B3D5F516C0F43DC6D176B7E1310B0A0E93F652EDC2E801F2F28A7FBDE),
    .INIT_4F(256'h2997F24435FAD5A008E1D49F15FEEFCD14D695740636AD333398A7C528FA08C4),
    .INIT_50(256'h28B585392E8460C93FEFD1201161E08E175104C20DDE25CA3B4DADED2BD717E9),
    .INIT_51(256'h2C8B9A232956740D357E561A08BDD4821613703F148B968F053AADB2326DA637),
    .INIT_52(256'h3641AAA229800D222C4EE6963CAFD1990F545C8A17707FCD0F7FA32A3CFCAE7C),
    .INIT_53(256'h047C2E02315DA49D2893016F30415D4702F7D1811396E64216860CF509C7AA99),
    .INIT_54(256'h12221DB300352EE02E261E6028E578223428578D07DA53D515F1EF89147416E4),
    .INIT_55(256'h175EFC69103221E33D2DAE892C3D193429B4F18A375FD46B0B47D6E91703771D),
    .INIT_56(256'h0E61DAFC176F7F370F03A3FF3B6F2DFA2B4315D62A746D8E398F52EE0D65D989),
    .INIT_57(256'h3A5852830E585AED176FFF7B0EC524663AF32DC62AF414A12ACEEBFD3A90D267),
    .INIT_58(256'h29FFEFD738E6D3540D47D9601765FD360F7FA32A3BB4AE152B3895AF2AA2ECBB),
    .INIT_59(256'h2DFB9DFB2928F57E3651D5500B1256AF1721F86F111820123DBAAEA72C2598EA),
    .INIT_5A(256'h0590AD893119242E2896FDD732CDD9430789D39E1641F14D13491AA301092ED4),
    .INIT_5B(256'h173206B70B04A95F35DDAA4428FA08C42ECAE02D028B51671439684E1593924D),
    .INIT_5C(256'h0A54D5EC171BF82B10B3A0E33C792E572B2C95802B0EEAF43C2BD1C11069DE89),
    .INIT_5D(256'h2E0CE1DD01F15149142E68281567931804A32DF32FFEA23E28C3F9E334F1D6AB),
    .INIT_5E(256'h2E181E3E295E73D13814D3E20D9159C6177000580D4E269737DA2BF329570BF7),
    .INIT_5F(256'h0D4026AA377A2BAA29298A882EC2E03F0358519B15036B3C147896D3023E2EA9),
    .INIT_60(256'h13B7E6A8157D12B7042E2E202F2E20A52911F64F3732548F0D10D91517707FCD),
    .INIT_61(256'h3287D9A408A9547116F576901090A1293B49ADEB2A4091792CB365680063D122),
    .INIT_62(256'h2E719F0E297273403925532D0F1C5C2A174085E40A2FAA3833DC281928938190),
    .INIT_63(256'h12751CE43D9F2EA22B0494E22BF3E7B83F8151231380E600157312E60398AE52),
    .INIT_64(256'h095BD506173379540F0DA3EE38AE2C88293B0B1B2F3C5F3F04FE5233160DF020),
    .INIT_65(256'h28A6FBF235A2D5F50C96D876176F00F10BCEA87E34E42946289982A4329E5984),
    .INIT_66(256'h071CACAA306DA30828FBF7283800D3F00ECCDBA7173286B00916AB353230A5DF),
    .INIT_67(256'h10C35F3D16968C8005FBAD522F75A136294FF442399052ED10265E0616D70A86),
    .INIT_68(256'h295AF3ED3A07D2AC10B75F2416910CAB05C02D712F2E20A52974F3313A3F528F),
    .INIT_69(256'h07F62C1630A2A366290D767B38EB53510FFF5DBE16C78B07066AAD162F8EA167),
    .INIT_6A(256'h0C2DD7F3176982260A50AA183286A65B28B3FAEA36F554C10E87DB381722078B),
    .INIT_6B(256'h290A896B3102DBF708C9548B174C7ADF0D52A6913561A9CA2892014334405771),
    .INIT_6C(256'h13FE18773E72AEC62A9393022D9B62F4043FD1E7165B71ED10B3A0E339572CF1),
    .INIT_6D(256'h382953D31013DDE416850CFE048CADFC2DAA9D342A99ECE43E9B5135141A67E6),
    .INIT_6E(256'h39C6AD312903092431965B0A0A01D59D176E7EB90B2BA93632B3269928C479D8),
    .INIT_6F(256'h10F1DF9C160090260278AE9D2C31990F2BFC679C0207514D15CEEED3116C1F5B),
    .INIT_70(256'h29920D9A302A5D7108B4D47A1761FCC40BA428AF32C826B528D0792B38E6D354),
    .INIT_71(256'h175004D407B6AC442F41A0CC2A06EFB43DF8514D1439E85013621A5A3C74AE56),
    .INIT_72(256'h2AB2EC7500025120154CEC7111CC1E8039A02D1C28DB876832E2D9270C1057CF),
    .INIT_73(256'h12221DB339DAAD3C28D987503329D8C80C96D8761734069F06952CFD2E429EA2),
    .INIT_74(256'h30EA5C200A6555FD1769822D086DABBE2F63A1122A296EFE3EEAD12D14F36AFC),
    .INIT_75(256'h0CEFA7173319272228EFF7AB3ABC525312E56444143897B43D292E8829878D55),
    .INIT_76(256'h33EF57D00DEADA4816C38B2803A5AE4E2C1118A82CE6E4D50513D23D170CF77D),
    .INIT_77(256'h0C9A2786326DA637292FF5443C5851B31409E7AF12DC9BD33A53AD7B28D106E5),
    .INIT_78(256'h31885B200BD35787172B870E054AADAA2CC21AC42C6C663B04A7D20F170BF774),
    .INIT_79(256'h115B1F81378AABB728907FFC3788D44A114C605E150614B93E052EB5298A8D66),
    .INIT_7A(256'h2B68E99D033F519416DE75B80CE3A727324325FA295E73D13DA0515E14EDEAE4),
    .INIT_7B(256'h170688C203C8AE432B9597052E27619E081353FF17707FDF0838ABE62E4E1EBC),
    .INIT_7C(256'h28FF08FB341257A70F005BFB1602101E3FD9AEE029E60F993127DBBB0BFD57B9),
    .INIT_7D(256'h12BDE3DA136B9A3E39F5AD4A28A0837636AAD5011134E02C14B815EA3C8F2E5E),
    .INIT_7E(256'h36C72B1828A3FC363A58528313BD66B9124E9D45380B2C1728917F3038C9D367),
    .INIT_7F(256'h3B9BD1F514886965111F20033620AA8328B97A893B4AD215144FE89B11839F27),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(0)) 
    q0_reg
       (.ADDRARDADDR({ADDRARDADDR,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b1),
        .ADDRENB(1'b1),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA(NLW_q0_reg_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB(NLW_q0_reg_CASDOUTB_UNCONNECTED[31:0]),
        .CASDOUTPA(NLW_q0_reg_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB(NLW_q0_reg_CASDOUTPB_UNCONNECTED[3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(NLW_q0_reg_CASOUTDBITERR_UNCONNECTED),
        .CASOUTSBITERR(NLW_q0_reg_CASOUTSBITERR_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_q0_reg_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINBDIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b1,1'b1,1'b1,1'b1}),
        .DOUTADOUT({NLW_q0_reg_DOUTADOUT_UNCONNECTED[31:30],D}),
        .DOUTBDOUT(NLW_q0_reg_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_q0_reg_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_q0_reg_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_q0_reg_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(ap_condition_110),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_q0_reg_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_q0_reg_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "lfm_tdm_gen_flow_control_loop_pipe" *) 
module design_1_lfm_tdm_gen_0_0_lfm_tdm_gen_flow_control_loop_pipe
   (ap_loop_init,
    D,
    \indvar_flatten2_fu_118_reg[5] ,
    ap_loop_init_reg_0,
    tx_word_last_fu_312_p2,
    ADDRARDADDR,
    int_ap_start_reg,
    ap_loop_init_reg_1,
    \chirp3_fu_122_reg[2] ,
    \chirp3_fu_122_reg[0] ,
    ap_clk,
    ap_loop_init_reg_2,
    Q,
    ap_rst_n,
    ap_condition_110,
    \int_isr_reg[1] ,
    \int_isr_reg[1]_0 ,
    \int_isr_reg[1]_1 ,
    \tx_word_last_reg_406_reg[0] ,
    \tx_word_last_reg_406_reg[0]_0 ,
    \tx_word_last_reg_406_reg[0]_1 ,
    ap_start,
    \chirp3_fu_122_reg[2]_0 ,
    icmp_ln56_reg_411,
    ap_enable_reg_pp0_iter1,
    icmp_ln53_reg_416);
  output ap_loop_init;
  output [11:0]D;
  output \indvar_flatten2_fu_118_reg[5] ;
  output ap_loop_init_reg_0;
  output tx_word_last_fu_312_p2;
  output [9:0]ADDRARDADDR;
  output int_ap_start_reg;
  output [0:0]ap_loop_init_reg_1;
  output [2:0]\chirp3_fu_122_reg[2] ;
  output [0:0]\chirp3_fu_122_reg[0] ;
  input ap_clk;
  input ap_loop_init_reg_2;
  input [11:0]Q;
  input ap_rst_n;
  input ap_condition_110;
  input \int_isr_reg[1] ;
  input \int_isr_reg[1]_0 ;
  input \int_isr_reg[1]_1 ;
  input \tx_word_last_reg_406_reg[0] ;
  input [10:0]\tx_word_last_reg_406_reg[0]_0 ;
  input [2:0]\tx_word_last_reg_406_reg[0]_1 ;
  input ap_start;
  input [2:0]\chirp3_fu_122_reg[2]_0 ;
  input icmp_ln56_reg_411;
  input ap_enable_reg_pp0_iter1;
  input icmp_ln53_reg_416;

  wire [9:0]ADDRARDADDR;
  wire [11:0]D;
  wire [11:0]Q;
  wire ap_clk;
  wire ap_condition_110;
  wire ap_enable_reg_pp0_iter1;
  wire ap_loop_init;
  wire ap_loop_init_i_1_n_0;
  wire ap_loop_init_reg_0;
  wire [0:0]ap_loop_init_reg_1;
  wire ap_loop_init_reg_2;
  wire ap_rst_n;
  wire [11:0]ap_sig_allocacmp_indvar_flatten2_load;
  wire ap_start;
  wire \chirp3_fu_122[2]_i_2_n_0 ;
  wire [0:0]\chirp3_fu_122_reg[0] ;
  wire [2:0]\chirp3_fu_122_reg[2] ;
  wire [2:0]\chirp3_fu_122_reg[2]_0 ;
  wire icmp_ln53_reg_416;
  wire icmp_ln56_reg_411;
  wire \indvar_flatten2_fu_118_reg[11]_i_1_n_6 ;
  wire \indvar_flatten2_fu_118_reg[11]_i_1_n_7 ;
  wire \indvar_flatten2_fu_118_reg[5] ;
  wire \indvar_flatten2_fu_118_reg[8]_i_1_n_0 ;
  wire \indvar_flatten2_fu_118_reg[8]_i_1_n_1 ;
  wire \indvar_flatten2_fu_118_reg[8]_i_1_n_2 ;
  wire \indvar_flatten2_fu_118_reg[8]_i_1_n_3 ;
  wire \indvar_flatten2_fu_118_reg[8]_i_1_n_4 ;
  wire \indvar_flatten2_fu_118_reg[8]_i_1_n_5 ;
  wire \indvar_flatten2_fu_118_reg[8]_i_1_n_6 ;
  wire \indvar_flatten2_fu_118_reg[8]_i_1_n_7 ;
  wire int_ap_start_reg;
  wire \int_isr_reg[1] ;
  wire \int_isr_reg[1]_0 ;
  wire \int_isr_reg[1]_1 ;
  wire tx_word_last_fu_312_p2;
  wire \tx_word_last_reg_406_reg[0] ;
  wire [10:0]\tx_word_last_reg_406_reg[0]_0 ;
  wire [2:0]\tx_word_last_reg_406_reg[0]_1 ;
  wire [7:2]\NLW_indvar_flatten2_fu_118_reg[11]_i_1_CO_UNCONNECTED ;
  wire [7:3]\NLW_indvar_flatten2_fu_118_reg[11]_i_1_O_UNCONNECTED ;

  LUT5 #(
    .INIT(32'h0F4FFF0F)) 
    ap_loop_init_i_1
       (.I0(ap_loop_init_reg_2),
        .I1(Q[5]),
        .I2(ap_rst_n),
        .I3(ap_loop_init),
        .I4(ap_condition_110),
        .O(ap_loop_init_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    ap_loop_init_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_init_i_1_n_0),
        .Q(ap_loop_init),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hB9A8)) 
    \chirp3_fu_122[0]_i_1 
       (.I0(\chirp3_fu_122[2]_i_2_n_0 ),
        .I1(ap_loop_init),
        .I2(\chirp3_fu_122_reg[2]_0 [0]),
        .I3(\tx_word_last_reg_406_reg[0]_1 [0]),
        .O(\chirp3_fu_122_reg[2] [0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0E02)) 
    \chirp3_fu_122[1]_i_1 
       (.I0(\tx_word_last_reg_406_reg[0]_1 [1]),
        .I1(\chirp3_fu_122[2]_i_2_n_0 ),
        .I2(ap_loop_init),
        .I3(\chirp3_fu_122_reg[2]_0 [1]),
        .O(\chirp3_fu_122_reg[2] [1]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \chirp3_fu_122[2]_i_1 
       (.I0(\tx_word_last_reg_406_reg[0]_1 [2]),
        .I1(\chirp3_fu_122_reg[2]_0 [2]),
        .I2(\chirp3_fu_122[2]_i_2_n_0 ),
        .I3(ap_loop_init),
        .O(\chirp3_fu_122_reg[2] [2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h08AA)) 
    \chirp3_fu_122[2]_i_2 
       (.I0(icmp_ln56_reg_411),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(icmp_ln53_reg_416),
        .I3(ap_loop_init),
        .O(\chirp3_fu_122[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h03F5)) 
    \chirp_16_fu_130[0]_i_1 
       (.I0(\tx_word_last_reg_406_reg[0]_1 [0]),
        .I1(\chirp3_fu_122_reg[2]_0 [0]),
        .I2(ap_loop_init),
        .I3(\chirp3_fu_122[2]_i_2_n_0 ),
        .O(\chirp3_fu_122_reg[0] ));
  LUT6 #(
    .INIT(64'h0070707070000000)) 
    \chirp_16_fu_130[2]_i_2 
       (.I0(ap_start),
        .I1(ap_loop_init),
        .I2(\chirp3_fu_122[2]_i_2_n_0 ),
        .I3(\chirp3_fu_122_reg[2]_0 [0]),
        .I4(\chirp3_fu_122_reg[2]_0 [1]),
        .I5(\chirp3_fu_122_reg[2]_0 [2]),
        .O(int_ap_start_reg));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \indvar_flatten2_fu_118[0]_i_1 
       (.I0(ap_loop_init),
        .I1(Q[0]),
        .O(D[0]));
  LUT3 #(
    .INIT(8'h2A)) 
    \indvar_flatten2_fu_118[11]_i_2 
       (.I0(Q[11]),
        .I1(ap_loop_init),
        .I2(ap_start),
        .O(ap_sig_allocacmp_indvar_flatten2_load[11]));
  LUT3 #(
    .INIT(8'h2A)) 
    \indvar_flatten2_fu_118[11]_i_3 
       (.I0(Q[10]),
        .I1(ap_loop_init),
        .I2(ap_start),
        .O(ap_sig_allocacmp_indvar_flatten2_load[10]));
  LUT3 #(
    .INIT(8'h2A)) 
    \indvar_flatten2_fu_118[11]_i_4 
       (.I0(Q[9]),
        .I1(ap_loop_init),
        .I2(ap_start),
        .O(ap_sig_allocacmp_indvar_flatten2_load[9]));
  LUT3 #(
    .INIT(8'h2A)) 
    \indvar_flatten2_fu_118[8]_i_10 
       (.I0(Q[1]),
        .I1(ap_loop_init),
        .I2(ap_start),
        .O(ap_sig_allocacmp_indvar_flatten2_load[1]));
  LUT3 #(
    .INIT(8'h2A)) 
    \indvar_flatten2_fu_118[8]_i_2 
       (.I0(Q[0]),
        .I1(ap_loop_init),
        .I2(ap_start),
        .O(ap_sig_allocacmp_indvar_flatten2_load[0]));
  LUT3 #(
    .INIT(8'h2A)) 
    \indvar_flatten2_fu_118[8]_i_3 
       (.I0(Q[8]),
        .I1(ap_loop_init),
        .I2(ap_start),
        .O(ap_sig_allocacmp_indvar_flatten2_load[8]));
  LUT3 #(
    .INIT(8'h2A)) 
    \indvar_flatten2_fu_118[8]_i_4 
       (.I0(Q[7]),
        .I1(ap_loop_init),
        .I2(ap_start),
        .O(ap_sig_allocacmp_indvar_flatten2_load[7]));
  LUT3 #(
    .INIT(8'h2A)) 
    \indvar_flatten2_fu_118[8]_i_5 
       (.I0(Q[6]),
        .I1(ap_loop_init),
        .I2(ap_start),
        .O(ap_sig_allocacmp_indvar_flatten2_load[6]));
  LUT3 #(
    .INIT(8'h2A)) 
    \indvar_flatten2_fu_118[8]_i_6 
       (.I0(Q[5]),
        .I1(ap_loop_init),
        .I2(ap_start),
        .O(ap_sig_allocacmp_indvar_flatten2_load[5]));
  LUT3 #(
    .INIT(8'h2A)) 
    \indvar_flatten2_fu_118[8]_i_7 
       (.I0(Q[4]),
        .I1(ap_loop_init),
        .I2(ap_start),
        .O(ap_sig_allocacmp_indvar_flatten2_load[4]));
  LUT3 #(
    .INIT(8'h2A)) 
    \indvar_flatten2_fu_118[8]_i_8 
       (.I0(Q[3]),
        .I1(ap_loop_init),
        .I2(ap_start),
        .O(ap_sig_allocacmp_indvar_flatten2_load[3]));
  LUT3 #(
    .INIT(8'h2A)) 
    \indvar_flatten2_fu_118[8]_i_9 
       (.I0(Q[2]),
        .I1(ap_loop_init),
        .I2(ap_start),
        .O(ap_sig_allocacmp_indvar_flatten2_load[2]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \indvar_flatten2_fu_118_reg[11]_i_1 
       (.CI(\indvar_flatten2_fu_118_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_indvar_flatten2_fu_118_reg[11]_i_1_CO_UNCONNECTED [7:2],\indvar_flatten2_fu_118_reg[11]_i_1_n_6 ,\indvar_flatten2_fu_118_reg[11]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_indvar_flatten2_fu_118_reg[11]_i_1_O_UNCONNECTED [7:3],D[11:9]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,ap_sig_allocacmp_indvar_flatten2_load[11:9]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \indvar_flatten2_fu_118_reg[8]_i_1 
       (.CI(ap_sig_allocacmp_indvar_flatten2_load[0]),
        .CI_TOP(1'b0),
        .CO({\indvar_flatten2_fu_118_reg[8]_i_1_n_0 ,\indvar_flatten2_fu_118_reg[8]_i_1_n_1 ,\indvar_flatten2_fu_118_reg[8]_i_1_n_2 ,\indvar_flatten2_fu_118_reg[8]_i_1_n_3 ,\indvar_flatten2_fu_118_reg[8]_i_1_n_4 ,\indvar_flatten2_fu_118_reg[8]_i_1_n_5 ,\indvar_flatten2_fu_118_reg[8]_i_1_n_6 ,\indvar_flatten2_fu_118_reg[8]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(D[8:1]),
        .S(ap_sig_allocacmp_indvar_flatten2_load[8:1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hB)) 
    int_ap_start_i_3
       (.I0(ap_loop_init),
        .I1(Q[5]),
        .O(ap_loop_init_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \int_isr[1]_i_2 
       (.I0(\int_isr_reg[1] ),
        .I1(\int_isr_reg[1]_0 ),
        .I2(\int_isr_reg[1]_1 ),
        .I3(Q[5]),
        .I4(ap_loop_init),
        .O(\indvar_flatten2_fu_118_reg[5] ));
  LUT6 #(
    .INIT(64'h00002222AA2A2222)) 
    q0_reg_i_10
       (.I0(\tx_word_last_reg_406_reg[0]_0 [1]),
        .I1(icmp_ln56_reg_411),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(icmp_ln53_reg_416),
        .I4(ap_loop_init),
        .I5(ap_start),
        .O(ADDRARDADDR[1]));
  LUT6 #(
    .INIT(64'h00002222AA2A2222)) 
    q0_reg_i_11
       (.I0(\tx_word_last_reg_406_reg[0]_0 [0]),
        .I1(icmp_ln56_reg_411),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(icmp_ln53_reg_416),
        .I4(ap_loop_init),
        .I5(ap_start),
        .O(ADDRARDADDR[0]));
  LUT6 #(
    .INIT(64'h00002222AA2A2222)) 
    q0_reg_i_2
       (.I0(\tx_word_last_reg_406_reg[0]_0 [9]),
        .I1(icmp_ln56_reg_411),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(icmp_ln53_reg_416),
        .I4(ap_loop_init),
        .I5(ap_start),
        .O(ADDRARDADDR[9]));
  LUT6 #(
    .INIT(64'h00002222AA2A2222)) 
    q0_reg_i_3
       (.I0(\tx_word_last_reg_406_reg[0]_0 [8]),
        .I1(icmp_ln56_reg_411),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(icmp_ln53_reg_416),
        .I4(ap_loop_init),
        .I5(ap_start),
        .O(ADDRARDADDR[8]));
  LUT6 #(
    .INIT(64'h00002222AA2A2222)) 
    q0_reg_i_4
       (.I0(\tx_word_last_reg_406_reg[0]_0 [7]),
        .I1(icmp_ln56_reg_411),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(icmp_ln53_reg_416),
        .I4(ap_loop_init),
        .I5(ap_start),
        .O(ADDRARDADDR[7]));
  LUT6 #(
    .INIT(64'h00002222AA2A2222)) 
    q0_reg_i_5
       (.I0(\tx_word_last_reg_406_reg[0]_0 [6]),
        .I1(icmp_ln56_reg_411),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(icmp_ln53_reg_416),
        .I4(ap_loop_init),
        .I5(ap_start),
        .O(ADDRARDADDR[6]));
  LUT6 #(
    .INIT(64'h00002222AA2A2222)) 
    q0_reg_i_6
       (.I0(\tx_word_last_reg_406_reg[0]_0 [5]),
        .I1(icmp_ln56_reg_411),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(icmp_ln53_reg_416),
        .I4(ap_loop_init),
        .I5(ap_start),
        .O(ADDRARDADDR[5]));
  LUT6 #(
    .INIT(64'h00002222AA2A2222)) 
    q0_reg_i_7
       (.I0(\tx_word_last_reg_406_reg[0]_0 [4]),
        .I1(icmp_ln56_reg_411),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(icmp_ln53_reg_416),
        .I4(ap_loop_init),
        .I5(ap_start),
        .O(ADDRARDADDR[4]));
  LUT6 #(
    .INIT(64'h00002222AA2A2222)) 
    q0_reg_i_8
       (.I0(\tx_word_last_reg_406_reg[0]_0 [3]),
        .I1(icmp_ln56_reg_411),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(icmp_ln53_reg_416),
        .I4(ap_loop_init),
        .I5(ap_start),
        .O(ADDRARDADDR[3]));
  LUT6 #(
    .INIT(64'h00002222AA2A2222)) 
    q0_reg_i_9
       (.I0(\tx_word_last_reg_406_reg[0]_0 [2]),
        .I1(icmp_ln56_reg_411),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(icmp_ln53_reg_416),
        .I4(ap_loop_init),
        .I5(ap_start),
        .O(ADDRARDADDR[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \sample4_fu_126[0]_i_1 
       (.I0(ap_loop_init),
        .I1(icmp_ln56_reg_411),
        .I2(\tx_word_last_reg_406_reg[0]_0 [0]),
        .O(ap_loop_init_reg_1));
  LUT6 #(
    .INIT(64'h0000000004000000)) 
    \tx_word_last_reg_406[0]_i_2 
       (.I0(\tx_word_last_reg_406_reg[0] ),
        .I1(ADDRARDADDR[9]),
        .I2(\tx_word_last_reg_406_reg[0]_0 [10]),
        .I3(\tx_word_last_reg_406_reg[0]_1 [1]),
        .I4(\tx_word_last_reg_406_reg[0]_1 [0]),
        .I5(\tx_word_last_reg_406_reg[0]_1 [2]),
        .O(tx_word_last_fu_312_p2));
endmodule

(* ORIG_REF_NAME = "lfm_tdm_gen_regslice_both" *) 
module design_1_lfm_tdm_gen_0_0_lfm_tdm_gen_regslice_both
   (m_axis_tx_TREADY_int_regslice,
    ap_enable_reg_pp0_iter2_reg,
    int_isr8_out,
    ap_block_pp0_stage0_subdone,
    ap_condition_exit_pp0_iter0_stage0,
    ap_condition_110,
    load_p2,
    m_axis_tx_TVALID,
    ap_loop_exit_ready_pp0_iter2_reg_reg,
    load_p1,
    \FSM_sequential_state_reg[0]_0 ,
    \FSM_sequential_state_reg[1]_0 ,
    load_p1_0,
    m_axis_tx_TDATA,
    ap_rst_n_inv,
    ap_clk,
    ap_enable_reg_pp0_iter2,
    ap_loop_exit_ready_pp0_iter2_reg,
    ap_loop_exit_ready_pp0_iter1_reg,
    ap_enable_reg_pp0_iter1,
    Q,
    ap_loop_init,
    ap_loop_exit_ready_pp0_iter1_reg_reg,
    ap_loop_exit_ready_pp0_iter1_reg_reg_0,
    ap_start,
    m_axis_tx_TREADY,
    D,
    \data_p1_reg[0]_0 ,
    \data_p1_reg[3]_0 );
  output m_axis_tx_TREADY_int_regslice;
  output ap_enable_reg_pp0_iter2_reg;
  output int_isr8_out;
  output ap_block_pp0_stage0_subdone;
  output ap_condition_exit_pp0_iter0_stage0;
  output ap_condition_110;
  output load_p2;
  output m_axis_tx_TVALID;
  output ap_loop_exit_ready_pp0_iter2_reg_reg;
  output load_p1;
  output \FSM_sequential_state_reg[0]_0 ;
  output \FSM_sequential_state_reg[1]_0 ;
  output load_p1_0;
  output [29:0]m_axis_tx_TDATA;
  input ap_rst_n_inv;
  input ap_clk;
  input ap_enable_reg_pp0_iter2;
  input ap_loop_exit_ready_pp0_iter2_reg;
  input ap_loop_exit_ready_pp0_iter1_reg;
  input ap_enable_reg_pp0_iter1;
  input [0:0]Q;
  input ap_loop_init;
  input [0:0]ap_loop_exit_ready_pp0_iter1_reg_reg;
  input ap_loop_exit_ready_pp0_iter1_reg_reg_0;
  input ap_start;
  input m_axis_tx_TREADY;
  input [29:0]D;
  input [1:0]\data_p1_reg[0]_0 ;
  input [1:0]\data_p1_reg[3]_0 ;

  wire [29:0]D;
  wire \FSM_sequential_state[0]_i_1__1_n_0 ;
  wire \FSM_sequential_state[0]_i_2__0_n_0 ;
  wire \FSM_sequential_state_reg[0]_0 ;
  wire \FSM_sequential_state_reg[1]_0 ;
  wire [0:0]Q;
  wire ack_in_t_i_1_n_0;
  wire ack_in_t_i_2_n_0;
  wire ap_block_pp0_stage0_subdone;
  wire ap_clk;
  wire ap_condition_110;
  wire ap_condition_exit_pp0_iter0_stage0;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter2;
  wire ap_enable_reg_pp0_iter2_reg;
  wire ap_loop_exit_ready_pp0_iter1_reg;
  wire [0:0]ap_loop_exit_ready_pp0_iter1_reg_reg;
  wire ap_loop_exit_ready_pp0_iter1_reg_reg_0;
  wire ap_loop_exit_ready_pp0_iter2_reg;
  wire ap_loop_exit_ready_pp0_iter2_reg_reg;
  wire ap_loop_init;
  wire ap_rst_n_inv;
  wire ap_start;
  wire \data_p1[0]_i_1_n_0 ;
  wire \data_p1[10]_i_1_n_0 ;
  wire \data_p1[11]_i_1_n_0 ;
  wire \data_p1[12]_i_1_n_0 ;
  wire \data_p1[13]_i_1_n_0 ;
  wire \data_p1[15]_i_1_n_0 ;
  wire \data_p1[16]_i_1_n_0 ;
  wire \data_p1[17]_i_1_n_0 ;
  wire \data_p1[18]_i_1_n_0 ;
  wire \data_p1[19]_i_1_n_0 ;
  wire \data_p1[1]_i_1_n_0 ;
  wire \data_p1[20]_i_1_n_0 ;
  wire \data_p1[21]_i_1_n_0 ;
  wire \data_p1[22]_i_1_n_0 ;
  wire \data_p1[23]_i_1_n_0 ;
  wire \data_p1[24]_i_1_n_0 ;
  wire \data_p1[25]_i_1_n_0 ;
  wire \data_p1[26]_i_1_n_0 ;
  wire \data_p1[27]_i_1_n_0 ;
  wire \data_p1[28]_i_1_n_0 ;
  wire \data_p1[29]_i_1_n_0 ;
  wire \data_p1[2]_i_1_n_0 ;
  wire \data_p1[31]_i_1_n_0 ;
  wire \data_p1[31]_i_2_n_0 ;
  wire \data_p1[3]_i_1_n_0 ;
  wire \data_p1[4]_i_1_n_0 ;
  wire \data_p1[5]_i_1_n_0 ;
  wire \data_p1[6]_i_1_n_0 ;
  wire \data_p1[7]_i_1_n_0 ;
  wire \data_p1[8]_i_1_n_0 ;
  wire \data_p1[9]_i_1_n_0 ;
  wire [1:0]\data_p1_reg[0]_0 ;
  wire [1:0]\data_p1_reg[3]_0 ;
  wire \data_p2_reg_n_0_[0] ;
  wire \data_p2_reg_n_0_[10] ;
  wire \data_p2_reg_n_0_[11] ;
  wire \data_p2_reg_n_0_[12] ;
  wire \data_p2_reg_n_0_[13] ;
  wire \data_p2_reg_n_0_[15] ;
  wire \data_p2_reg_n_0_[16] ;
  wire \data_p2_reg_n_0_[17] ;
  wire \data_p2_reg_n_0_[18] ;
  wire \data_p2_reg_n_0_[19] ;
  wire \data_p2_reg_n_0_[1] ;
  wire \data_p2_reg_n_0_[20] ;
  wire \data_p2_reg_n_0_[21] ;
  wire \data_p2_reg_n_0_[22] ;
  wire \data_p2_reg_n_0_[23] ;
  wire \data_p2_reg_n_0_[24] ;
  wire \data_p2_reg_n_0_[25] ;
  wire \data_p2_reg_n_0_[26] ;
  wire \data_p2_reg_n_0_[27] ;
  wire \data_p2_reg_n_0_[28] ;
  wire \data_p2_reg_n_0_[29] ;
  wire \data_p2_reg_n_0_[2] ;
  wire \data_p2_reg_n_0_[31] ;
  wire \data_p2_reg_n_0_[3] ;
  wire \data_p2_reg_n_0_[4] ;
  wire \data_p2_reg_n_0_[5] ;
  wire \data_p2_reg_n_0_[6] ;
  wire \data_p2_reg_n_0_[7] ;
  wire \data_p2_reg_n_0_[8] ;
  wire \data_p2_reg_n_0_[9] ;
  wire int_isr8_out;
  wire load_p1;
  wire load_p1_0;
  wire load_p2;
  wire [29:0]m_axis_tx_TDATA;
  wire m_axis_tx_TREADY;
  wire m_axis_tx_TREADY_int_regslice;
  wire m_axis_tx_TVALID;
  wire [1:1]next__0;
  wire q0_reg_i_12_n_0;
  wire [1:1]state;
  wire \state[0]_i_2_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire [1:0]state__0;

  LUT6 #(
    .INIT(64'hFFFFFE00FFFFFFFF)) 
    \FSM_sequential_state[0]_i_1__1 
       (.I0(ap_enable_reg_pp0_iter2),
        .I1(ap_loop_exit_ready_pp0_iter2_reg),
        .I2(\FSM_sequential_state[0]_i_2__0_n_0 ),
        .I3(state__0[0]),
        .I4(m_axis_tx_TREADY),
        .I5(state__0[1]),
        .O(\FSM_sequential_state[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h57000000)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(state__0[1]),
        .I1(ap_loop_exit_ready_pp0_iter2_reg),
        .I2(ap_enable_reg_pp0_iter2),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(m_axis_tx_TREADY_int_regslice),
        .O(\FSM_sequential_state_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_sequential_state[0]_i_2__0 
       (.I0(m_axis_tx_TREADY_int_regslice),
        .I1(ap_enable_reg_pp0_iter1),
        .O(\FSM_sequential_state[0]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hF222AAAA)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state__0[1]),
        .I1(m_axis_tx_TREADY),
        .I2(m_axis_tx_TREADY_int_regslice),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(state__0[0]),
        .O(next__0));
  LUT6 #(
    .INIT(64'h7F7F7F3F3F3F3F3F)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(state__0[0]),
        .I1(m_axis_tx_TREADY_int_regslice),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(ap_enable_reg_pp0_iter2),
        .I4(ap_loop_exit_ready_pp0_iter2_reg),
        .I5(state__0[1]),
        .O(\FSM_sequential_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "ZERO:01,TWO:10,ONE:11,iSTATE:00" *) 
  FDSE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1__1_n_0 ),
        .Q(state__0[0]),
        .S(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "ZERO:01,TWO:10,ONE:11,iSTATE:00" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(next__0),
        .Q(state__0[1]),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hDFFFFFFF58585858)) 
    ack_in_t_i_1
       (.I0(state__0[1]),
        .I1(m_axis_tx_TREADY),
        .I2(state__0[0]),
        .I3(ack_in_t_i_2_n_0),
        .I4(ap_enable_reg_pp0_iter1),
        .I5(m_axis_tx_TREADY_int_regslice),
        .O(ack_in_t_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h1)) 
    ack_in_t_i_2
       (.I0(ap_loop_exit_ready_pp0_iter2_reg),
        .I1(ap_enable_reg_pp0_iter2),
        .O(ack_in_t_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ack_in_t_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ack_in_t_i_1_n_0),
        .Q(m_axis_tx_TREADY_int_regslice),
        .R(ap_rst_n_inv));
  LUT4 #(
    .INIT(16'h0020)) 
    ap_loop_exit_ready_pp0_iter1_reg_i_1
       (.I0(ap_condition_110),
        .I1(ap_loop_init),
        .I2(ap_loop_exit_ready_pp0_iter1_reg_reg),
        .I3(ap_loop_exit_ready_pp0_iter1_reg_reg_0),
        .O(ap_condition_exit_pp0_iter0_stage0));
  LUT6 #(
    .INIT(64'hF7A0F7A0F0F0F3E0)) 
    ap_loop_exit_ready_pp0_iter2_reg_i_1
       (.I0(q0_reg_i_12_n_0),
        .I1(ap_enable_reg_pp0_iter2),
        .I2(ap_loop_exit_ready_pp0_iter2_reg),
        .I3(ap_loop_exit_ready_pp0_iter1_reg),
        .I4(ap_enable_reg_pp0_iter1),
        .I5(m_axis_tx_TREADY_int_regslice),
        .O(ap_enable_reg_pp0_iter2_reg));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[0]_i_1 
       (.I0(\data_p2_reg_n_0_[0] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[0]),
        .O(\data_p1[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h5DF00C00)) 
    \data_p1[0]_i_2 
       (.I0(\FSM_sequential_state_reg[0]_0 ),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(\data_p1_reg[0]_0 [1]),
        .I3(\data_p1_reg[0]_0 [0]),
        .I4(m_axis_tx_TREADY),
        .O(load_p1));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[10]_i_1 
       (.I0(\data_p2_reg_n_0_[10] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[10]),
        .O(\data_p1[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[11]_i_1 
       (.I0(\data_p2_reg_n_0_[11] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[11]),
        .O(\data_p1[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[12]_i_1 
       (.I0(\data_p2_reg_n_0_[12] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[12]),
        .O(\data_p1[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[13]_i_1 
       (.I0(\data_p2_reg_n_0_[13] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[13]),
        .O(\data_p1[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[15]_i_1 
       (.I0(\data_p2_reg_n_0_[15] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[14]),
        .O(\data_p1[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[16]_i_1 
       (.I0(\data_p2_reg_n_0_[16] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[15]),
        .O(\data_p1[16]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[17]_i_1 
       (.I0(\data_p2_reg_n_0_[17] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[16]),
        .O(\data_p1[17]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[18]_i_1 
       (.I0(\data_p2_reg_n_0_[18] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[17]),
        .O(\data_p1[18]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[19]_i_1 
       (.I0(\data_p2_reg_n_0_[19] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[18]),
        .O(\data_p1[19]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[1]_i_1 
       (.I0(\data_p2_reg_n_0_[1] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[1]),
        .O(\data_p1[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[20]_i_1 
       (.I0(\data_p2_reg_n_0_[20] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[19]),
        .O(\data_p1[20]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[21]_i_1 
       (.I0(\data_p2_reg_n_0_[21] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[20]),
        .O(\data_p1[21]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[22]_i_1 
       (.I0(\data_p2_reg_n_0_[22] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[21]),
        .O(\data_p1[22]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[23]_i_1 
       (.I0(\data_p2_reg_n_0_[23] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[22]),
        .O(\data_p1[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[24]_i_1 
       (.I0(\data_p2_reg_n_0_[24] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[23]),
        .O(\data_p1[24]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[25]_i_1 
       (.I0(\data_p2_reg_n_0_[25] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[24]),
        .O(\data_p1[25]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[26]_i_1 
       (.I0(\data_p2_reg_n_0_[26] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[25]),
        .O(\data_p1[26]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[27]_i_1 
       (.I0(\data_p2_reg_n_0_[27] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[26]),
        .O(\data_p1[27]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[28]_i_1 
       (.I0(\data_p2_reg_n_0_[28] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[27]),
        .O(\data_p1[28]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[29]_i_1 
       (.I0(\data_p2_reg_n_0_[29] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[28]),
        .O(\data_p1[29]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[2]_i_1 
       (.I0(\data_p2_reg_n_0_[2] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[2]),
        .O(\data_p1[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA222C000)) 
    \data_p1[31]_i_1 
       (.I0(m_axis_tx_TREADY),
        .I1(state__0[0]),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(m_axis_tx_TREADY_int_regslice),
        .I4(state__0[1]),
        .O(\data_p1[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[31]_i_2 
       (.I0(\data_p2_reg_n_0_[31] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[29]),
        .O(\data_p1[31]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[3]_i_1 
       (.I0(\data_p2_reg_n_0_[3] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[3]),
        .O(\data_p1[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h5DF00C00)) 
    \data_p1[3]_i_2 
       (.I0(\FSM_sequential_state_reg[0]_0 ),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(\data_p1_reg[3]_0 [1]),
        .I3(\data_p1_reg[3]_0 [0]),
        .I4(m_axis_tx_TREADY),
        .O(load_p1_0));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[4]_i_1 
       (.I0(\data_p2_reg_n_0_[4] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[4]),
        .O(\data_p1[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[5]_i_1 
       (.I0(\data_p2_reg_n_0_[5] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[5]),
        .O(\data_p1[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[6]_i_1 
       (.I0(\data_p2_reg_n_0_[6] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[6]),
        .O(\data_p1[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[7]_i_1 
       (.I0(\data_p2_reg_n_0_[7] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[7]),
        .O(\data_p1[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[8]_i_1 
       (.I0(\data_p2_reg_n_0_[8] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[8]),
        .O(\data_p1[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[9]_i_1 
       (.I0(\data_p2_reg_n_0_[9] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[9]),
        .O(\data_p1[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[0] 
       (.C(ap_clk),
        .CE(\data_p1[31]_i_1_n_0 ),
        .D(\data_p1[0]_i_1_n_0 ),
        .Q(m_axis_tx_TDATA[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[10] 
       (.C(ap_clk),
        .CE(\data_p1[31]_i_1_n_0 ),
        .D(\data_p1[10]_i_1_n_0 ),
        .Q(m_axis_tx_TDATA[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[11] 
       (.C(ap_clk),
        .CE(\data_p1[31]_i_1_n_0 ),
        .D(\data_p1[11]_i_1_n_0 ),
        .Q(m_axis_tx_TDATA[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[12] 
       (.C(ap_clk),
        .CE(\data_p1[31]_i_1_n_0 ),
        .D(\data_p1[12]_i_1_n_0 ),
        .Q(m_axis_tx_TDATA[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[13] 
       (.C(ap_clk),
        .CE(\data_p1[31]_i_1_n_0 ),
        .D(\data_p1[13]_i_1_n_0 ),
        .Q(m_axis_tx_TDATA[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[15] 
       (.C(ap_clk),
        .CE(\data_p1[31]_i_1_n_0 ),
        .D(\data_p1[15]_i_1_n_0 ),
        .Q(m_axis_tx_TDATA[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[16] 
       (.C(ap_clk),
        .CE(\data_p1[31]_i_1_n_0 ),
        .D(\data_p1[16]_i_1_n_0 ),
        .Q(m_axis_tx_TDATA[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[17] 
       (.C(ap_clk),
        .CE(\data_p1[31]_i_1_n_0 ),
        .D(\data_p1[17]_i_1_n_0 ),
        .Q(m_axis_tx_TDATA[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[18] 
       (.C(ap_clk),
        .CE(\data_p1[31]_i_1_n_0 ),
        .D(\data_p1[18]_i_1_n_0 ),
        .Q(m_axis_tx_TDATA[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[19] 
       (.C(ap_clk),
        .CE(\data_p1[31]_i_1_n_0 ),
        .D(\data_p1[19]_i_1_n_0 ),
        .Q(m_axis_tx_TDATA[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[1] 
       (.C(ap_clk),
        .CE(\data_p1[31]_i_1_n_0 ),
        .D(\data_p1[1]_i_1_n_0 ),
        .Q(m_axis_tx_TDATA[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[20] 
       (.C(ap_clk),
        .CE(\data_p1[31]_i_1_n_0 ),
        .D(\data_p1[20]_i_1_n_0 ),
        .Q(m_axis_tx_TDATA[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[21] 
       (.C(ap_clk),
        .CE(\data_p1[31]_i_1_n_0 ),
        .D(\data_p1[21]_i_1_n_0 ),
        .Q(m_axis_tx_TDATA[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[22] 
       (.C(ap_clk),
        .CE(\data_p1[31]_i_1_n_0 ),
        .D(\data_p1[22]_i_1_n_0 ),
        .Q(m_axis_tx_TDATA[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[23] 
       (.C(ap_clk),
        .CE(\data_p1[31]_i_1_n_0 ),
        .D(\data_p1[23]_i_1_n_0 ),
        .Q(m_axis_tx_TDATA[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[24] 
       (.C(ap_clk),
        .CE(\data_p1[31]_i_1_n_0 ),
        .D(\data_p1[24]_i_1_n_0 ),
        .Q(m_axis_tx_TDATA[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[25] 
       (.C(ap_clk),
        .CE(\data_p1[31]_i_1_n_0 ),
        .D(\data_p1[25]_i_1_n_0 ),
        .Q(m_axis_tx_TDATA[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[26] 
       (.C(ap_clk),
        .CE(\data_p1[31]_i_1_n_0 ),
        .D(\data_p1[26]_i_1_n_0 ),
        .Q(m_axis_tx_TDATA[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[27] 
       (.C(ap_clk),
        .CE(\data_p1[31]_i_1_n_0 ),
        .D(\data_p1[27]_i_1_n_0 ),
        .Q(m_axis_tx_TDATA[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[28] 
       (.C(ap_clk),
        .CE(\data_p1[31]_i_1_n_0 ),
        .D(\data_p1[28]_i_1_n_0 ),
        .Q(m_axis_tx_TDATA[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[29] 
       (.C(ap_clk),
        .CE(\data_p1[31]_i_1_n_0 ),
        .D(\data_p1[29]_i_1_n_0 ),
        .Q(m_axis_tx_TDATA[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[2] 
       (.C(ap_clk),
        .CE(\data_p1[31]_i_1_n_0 ),
        .D(\data_p1[2]_i_1_n_0 ),
        .Q(m_axis_tx_TDATA[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[31] 
       (.C(ap_clk),
        .CE(\data_p1[31]_i_1_n_0 ),
        .D(\data_p1[31]_i_2_n_0 ),
        .Q(m_axis_tx_TDATA[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[3] 
       (.C(ap_clk),
        .CE(\data_p1[31]_i_1_n_0 ),
        .D(\data_p1[3]_i_1_n_0 ),
        .Q(m_axis_tx_TDATA[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[4] 
       (.C(ap_clk),
        .CE(\data_p1[31]_i_1_n_0 ),
        .D(\data_p1[4]_i_1_n_0 ),
        .Q(m_axis_tx_TDATA[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[5] 
       (.C(ap_clk),
        .CE(\data_p1[31]_i_1_n_0 ),
        .D(\data_p1[5]_i_1_n_0 ),
        .Q(m_axis_tx_TDATA[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[6] 
       (.C(ap_clk),
        .CE(\data_p1[31]_i_1_n_0 ),
        .D(\data_p1[6]_i_1_n_0 ),
        .Q(m_axis_tx_TDATA[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[7] 
       (.C(ap_clk),
        .CE(\data_p1[31]_i_1_n_0 ),
        .D(\data_p1[7]_i_1_n_0 ),
        .Q(m_axis_tx_TDATA[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[8] 
       (.C(ap_clk),
        .CE(\data_p1[31]_i_1_n_0 ),
        .D(\data_p1[8]_i_1_n_0 ),
        .Q(m_axis_tx_TDATA[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[9] 
       (.C(ap_clk),
        .CE(\data_p1[31]_i_1_n_0 ),
        .D(\data_p1[9]_i_1_n_0 ),
        .Q(m_axis_tx_TDATA[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h1F000000)) 
    \data_p2[31]_i_1 
       (.I0(ap_loop_exit_ready_pp0_iter2_reg),
        .I1(ap_enable_reg_pp0_iter2),
        .I2(q0_reg_i_12_n_0),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(m_axis_tx_TREADY_int_regslice),
        .O(load_p2));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[0] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[0]),
        .Q(\data_p2_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[10] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[10]),
        .Q(\data_p2_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[11] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[11]),
        .Q(\data_p2_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[12] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[12]),
        .Q(\data_p2_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[13] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[13]),
        .Q(\data_p2_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[15] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[14]),
        .Q(\data_p2_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[16] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[15]),
        .Q(\data_p2_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[17] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[16]),
        .Q(\data_p2_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[18] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[17]),
        .Q(\data_p2_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[19] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[18]),
        .Q(\data_p2_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[1] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[1]),
        .Q(\data_p2_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[20] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[19]),
        .Q(\data_p2_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[21] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[20]),
        .Q(\data_p2_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[22] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[21]),
        .Q(\data_p2_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[23] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[22]),
        .Q(\data_p2_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[24] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[23]),
        .Q(\data_p2_reg_n_0_[24] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[25] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[24]),
        .Q(\data_p2_reg_n_0_[25] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[26] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[25]),
        .Q(\data_p2_reg_n_0_[26] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[27] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[26]),
        .Q(\data_p2_reg_n_0_[27] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[28] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[27]),
        .Q(\data_p2_reg_n_0_[28] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[29] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[28]),
        .Q(\data_p2_reg_n_0_[29] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[2] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[2]),
        .Q(\data_p2_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[31] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[29]),
        .Q(\data_p2_reg_n_0_[31] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[3] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[3]),
        .Q(\data_p2_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[4] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[4]),
        .Q(\data_p2_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[5] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[5]),
        .Q(\data_p2_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[6] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[6]),
        .Q(\data_p2_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[7] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[7]),
        .Q(\data_p2_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[8] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[8]),
        .Q(\data_p2_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[9] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[9]),
        .Q(\data_p2_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h4000400040004040)) 
    \int_isr[0]_i_3 
       (.I0(q0_reg_i_12_n_0),
        .I1(ap_loop_exit_ready_pp0_iter2_reg),
        .I2(Q),
        .I3(m_axis_tx_TREADY_int_regslice),
        .I4(ap_enable_reg_pp0_iter2),
        .I5(ap_enable_reg_pp0_iter1),
        .O(int_isr8_out));
  LUT4 #(
    .INIT(16'hA222)) 
    int_task_ap_done_i_4
       (.I0(ap_loop_exit_ready_pp0_iter2_reg),
        .I1(state__0[1]),
        .I2(m_axis_tx_TREADY),
        .I3(state__0[0]),
        .O(ap_loop_exit_ready_pp0_iter2_reg_reg));
  LUT6 #(
    .INIT(64'h00AA22AA00020202)) 
    q0_reg_i_1
       (.I0(ap_start),
        .I1(ap_enable_reg_pp0_iter2),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(q0_reg_i_12_n_0),
        .I4(ap_loop_exit_ready_pp0_iter2_reg),
        .I5(m_axis_tx_TREADY_int_regslice),
        .O(ap_condition_110));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h70)) 
    q0_reg_i_12
       (.I0(state__0[0]),
        .I1(m_axis_tx_TREADY),
        .I2(state__0[1]),
        .O(q0_reg_i_12_n_0));
  LUT4 #(
    .INIT(16'hACEC)) 
    \state[0]_i_2 
       (.I0(load_p2),
        .I1(m_axis_tx_TVALID),
        .I2(state),
        .I3(m_axis_tx_TREADY),
        .O(\state[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF2FF)) 
    \state[1]_i_1 
       (.I0(state),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(m_axis_tx_TREADY),
        .I3(m_axis_tx_TVALID),
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
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h0F5F0111)) 
    \tx_word_last_reg_406[0]_i_1 
       (.I0(ap_enable_reg_pp0_iter2),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(q0_reg_i_12_n_0),
        .I3(ap_loop_exit_ready_pp0_iter2_reg),
        .I4(m_axis_tx_TREADY_int_regslice),
        .O(ap_block_pp0_stage0_subdone));
endmodule

(* ORIG_REF_NAME = "lfm_tdm_gen_regslice_both" *) 
module design_1_lfm_tdm_gen_0_0_lfm_tdm_gen_regslice_both__parameterized0
   (Q,
    m_axis_tx_TSTRB,
    ap_rst_n_inv,
    ap_clk,
    load_p2,
    \FSM_sequential_state_reg[1]_0 ,
    m_axis_tx_TREADY,
    ack_in_t_reg_0,
    load_p1);
  output [1:0]Q;
  output [0:0]m_axis_tx_TSTRB;
  input ap_rst_n_inv;
  input ap_clk;
  input load_p2;
  input \FSM_sequential_state_reg[1]_0 ;
  input m_axis_tx_TREADY;
  input ack_in_t_reg_0;
  input load_p1;

  wire \FSM_sequential_state_reg[1]_0 ;
  wire [1:0]Q;
  wire ack_in_t_i_1__0_n_0;
  wire ack_in_t_reg_0;
  wire ack_in_t_reg_n_0;
  wire ap_clk;
  wire ap_rst_n_inv;
  wire \data_p1[3]_i_1_n_0 ;
  wire [3:3]data_p2;
  wire \data_p2[3]_i_1_n_0 ;
  wire load_p1;
  wire load_p2;
  wire m_axis_tx_TREADY;
  wire [0:0]m_axis_tx_TSTRB;
  wire [1:0]next__0;

  LUT4 #(
    .INIT(16'hFF4F)) 
    \FSM_sequential_state[0]_i_1__0 
       (.I0(ack_in_t_reg_0),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(m_axis_tx_TREADY),
        .O(next__0[0]));
  LUT6 #(
    .INIT(64'h8FFFFFFF88008800)) 
    \FSM_sequential_state[1]_i_1__0 
       (.I0(ack_in_t_reg_n_0),
        .I1(load_p2),
        .I2(\FSM_sequential_state_reg[1]_0 ),
        .I3(Q[0]),
        .I4(m_axis_tx_TREADY),
        .I5(Q[1]),
        .O(next__0[1]));
  (* FSM_ENCODED_STATES = "ZERO:01,TWO:10,ONE:11,iSTATE:00" *) 
  FDSE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(next__0[0]),
        .Q(Q[0]),
        .S(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "ZERO:01,TWO:10,ONE:11,iSTATE:00" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(next__0[1]),
        .Q(Q[1]),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hDFFF5858)) 
    ack_in_t_i_1__0
       (.I0(Q[1]),
        .I1(m_axis_tx_TREADY),
        .I2(Q[0]),
        .I3(ack_in_t_reg_0),
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
  LUT5 #(
    .INIT(32'hFBFFFB00)) 
    \data_p1[3]_i_1 
       (.I0(data_p2),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(load_p1),
        .I4(m_axis_tx_TSTRB),
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
       (.I0(load_p2),
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
    Q,
    ap_rst_n_inv,
    ap_clk,
    load_p2,
    \FSM_sequential_state_reg[1]_0 ,
    m_axis_tx_TREADY,
    ack_in_t_reg_0,
    tx_word_last_reg_406,
    load_p1);
  output [0:0]m_axis_tx_TLAST;
  output [1:0]Q;
  input ap_rst_n_inv;
  input ap_clk;
  input load_p2;
  input \FSM_sequential_state_reg[1]_0 ;
  input m_axis_tx_TREADY;
  input ack_in_t_reg_0;
  input tx_word_last_reg_406;
  input load_p1;

  wire \FSM_sequential_state_reg[1]_0 ;
  wire [1:0]Q;
  wire ack_in_t_i_1__1_n_0;
  wire ack_in_t_reg_0;
  wire ack_in_t_reg_n_0;
  wire ap_clk;
  wire ap_rst_n_inv;
  wire \data_p1[0]_i_1__0_n_0 ;
  wire data_p2;
  wire \data_p2[0]_i_1_n_0 ;
  wire load_p1;
  wire load_p2;
  wire [0:0]m_axis_tx_TLAST;
  wire m_axis_tx_TREADY;
  wire [1:0]next__0;
  wire tx_word_last_reg_406;

  LUT4 #(
    .INIT(16'hFF4F)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(ack_in_t_reg_0),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(m_axis_tx_TREADY),
        .O(next__0[0]));
  LUT6 #(
    .INIT(64'h8FFFFFFF88008800)) 
    \FSM_sequential_state[1]_i_1__1 
       (.I0(ack_in_t_reg_n_0),
        .I1(load_p2),
        .I2(\FSM_sequential_state_reg[1]_0 ),
        .I3(Q[0]),
        .I4(m_axis_tx_TREADY),
        .I5(Q[1]),
        .O(next__0[1]));
  (* FSM_ENCODED_STATES = "ZERO:01,TWO:10,ONE:11,iSTATE:00" *) 
  FDSE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(next__0[0]),
        .Q(Q[0]),
        .S(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "ZERO:01,TWO:10,ONE:11,iSTATE:00" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(next__0[1]),
        .Q(Q[1]),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hDFFF5858)) 
    ack_in_t_i_1__1
       (.I0(Q[1]),
        .I1(m_axis_tx_TREADY),
        .I2(Q[0]),
        .I3(ack_in_t_reg_0),
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
    .INIT(64'hFB08FFFFFB080000)) 
    \data_p1[0]_i_1__0 
       (.I0(data_p2),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(tx_word_last_reg_406),
        .I4(load_p1),
        .I5(m_axis_tx_TLAST),
        .O(\data_p1[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\data_p1[0]_i_1__0_n_0 ),
        .Q(m_axis_tx_TLAST),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hBF80)) 
    \data_p2[0]_i_1 
       (.I0(tx_word_last_reg_406),
        .I1(ack_in_t_reg_n_0),
        .I2(load_p2),
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
