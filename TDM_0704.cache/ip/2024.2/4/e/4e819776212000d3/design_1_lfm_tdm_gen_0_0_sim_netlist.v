// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Tue Jul 21 20:47:48 2026
// Host        : JohnsonKu running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_lfm_tdm_gen_0_0_sim_netlist.v
// Design      : design_1_lfm_tdm_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu48dr-fsvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_lfm_tdm_gen_0_0,lfm_tdm_gen,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "lfm_tdm_gen,Vivado 2024.2" *) (* hls_module = "yes" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (dbg_lfm_i_ap_vld,
    dbg_lfm_q_ap_vld,
    dbg_tx_sel_ap_vld,
    dbg_tx_active_ap_vld,
    dbg_chirp_count_ap_vld,
    dbg_sample_count_ap_vld,
    dbg_chirp_start_ap_vld,
    dbg_chirp_end_ap_vld,
    dbg_enable_ap_vld,
    dbg_state_ap_vld,
    s_axi_CTRL_ARADDR,
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
    dbg_tx_active,
    dbg_chirp_count,
    dbg_sample_count,
    dbg_chirp_start,
    dbg_chirp_end,
    dbg_enable,
    dbg_state);
  output dbg_lfm_i_ap_vld;
  output dbg_lfm_q_ap_vld;
  output dbg_tx_sel_ap_vld;
  output dbg_tx_active_ap_vld;
  output dbg_chirp_count_ap_vld;
  output dbg_sample_count_ap_vld;
  output dbg_chirp_start_ap_vld;
  output dbg_chirp_end_ap_vld;
  output dbg_enable_ap_vld;
  output dbg_state_ap_vld;
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 dbg_tx_active DATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dbg_tx_active, LAYERED_METADATA undef" *) output [3:0]dbg_tx_active;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 dbg_chirp_count DATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dbg_chirp_count, LAYERED_METADATA undef" *) output [15:0]dbg_chirp_count;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 dbg_sample_count DATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dbg_sample_count, LAYERED_METADATA undef" *) output [15:0]dbg_sample_count;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 dbg_chirp_start DATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dbg_chirp_start, LAYERED_METADATA undef" *) output [0:0]dbg_chirp_start;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 dbg_chirp_end DATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dbg_chirp_end, LAYERED_METADATA undef" *) output [0:0]dbg_chirp_end;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 dbg_enable DATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dbg_enable, LAYERED_METADATA undef" *) output [0:0]dbg_enable;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 dbg_state DATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dbg_state, LAYERED_METADATA undef" *) output [2:0]dbg_state;

  wire \<const0> ;
  wire ap_clk;
  wire ap_rst_n;
  wire [1:0]\^dbg_chirp_count ;
  wire dbg_chirp_count_ap_vld;
  wire [0:0]dbg_chirp_end;
  wire dbg_chirp_end_ap_vld;
  wire [0:0]dbg_chirp_start;
  wire dbg_chirp_start_ap_vld;
  wire [0:0]dbg_enable;
  wire dbg_enable_ap_vld;
  wire [15:0]dbg_lfm_i;
  wire dbg_lfm_i_ap_vld;
  wire [15:0]dbg_lfm_q;
  wire dbg_lfm_q_ap_vld;
  wire [9:0]\^dbg_sample_count ;
  wire dbg_sample_count_ap_vld;
  wire [0:0]\^dbg_state ;
  wire dbg_state_ap_vld;
  wire [3:0]dbg_tx_active;
  wire dbg_tx_active_ap_vld;
  wire [1:0]dbg_tx_sel;
  wire dbg_tx_sel_ap_vld;
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
  wire [15:2]NLW_inst_dbg_chirp_count_UNCONNECTED;
  wire [15:10]NLW_inst_dbg_sample_count_UNCONNECTED;
  wire [2:1]NLW_inst_dbg_state_UNCONNECTED;
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
  assign dbg_chirp_count[1:0] = \^dbg_chirp_count [1:0];
  assign dbg_sample_count[15] = \<const0> ;
  assign dbg_sample_count[14] = \<const0> ;
  assign dbg_sample_count[13] = \<const0> ;
  assign dbg_sample_count[12] = \<const0> ;
  assign dbg_sample_count[11] = \<const0> ;
  assign dbg_sample_count[10] = \<const0> ;
  assign dbg_sample_count[9:0] = \^dbg_sample_count [9:0];
  assign dbg_state[2] = \<const0> ;
  assign dbg_state[1] = \<const0> ;
  assign dbg_state[0] = \^dbg_state [0];
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
  (* C_S_AXI_CTRL_ADDR_WIDTH = "4" *) 
  (* C_S_AXI_CTRL_DATA_WIDTH = "32" *) 
  (* C_S_AXI_CTRL_WSTRB_WIDTH = "4" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_S_AXI_WSTRB_WIDTH = "4" *) 
  (* SDX_KERNEL = "true" *) 
  (* SDX_KERNEL_SYNTH_INST = "inst" *) 
  (* SDX_KERNEL_TYPE = "hls" *) 
  (* ap_ST_fsm_pp0_stage0 = "3'b010" *) 
  (* ap_ST_fsm_state1 = "3'b001" *) 
  (* ap_ST_fsm_state5 = "3'b100" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen inst
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .dbg_chirp_count({NLW_inst_dbg_chirp_count_UNCONNECTED[15:2],\^dbg_chirp_count }),
        .dbg_chirp_count_ap_vld(dbg_chirp_count_ap_vld),
        .dbg_chirp_end(dbg_chirp_end),
        .dbg_chirp_end_ap_vld(dbg_chirp_end_ap_vld),
        .dbg_chirp_start(dbg_chirp_start),
        .dbg_chirp_start_ap_vld(dbg_chirp_start_ap_vld),
        .dbg_enable(dbg_enable),
        .dbg_enable_ap_vld(dbg_enable_ap_vld),
        .dbg_lfm_i(dbg_lfm_i),
        .dbg_lfm_i_ap_vld(dbg_lfm_i_ap_vld),
        .dbg_lfm_q(dbg_lfm_q),
        .dbg_lfm_q_ap_vld(dbg_lfm_q_ap_vld),
        .dbg_sample_count({NLW_inst_dbg_sample_count_UNCONNECTED[15:10],\^dbg_sample_count }),
        .dbg_sample_count_ap_vld(dbg_sample_count_ap_vld),
        .dbg_state({NLW_inst_dbg_state_UNCONNECTED[2:1],\^dbg_state }),
        .dbg_state_ap_vld(dbg_state_ap_vld),
        .dbg_tx_active(dbg_tx_active),
        .dbg_tx_active_ap_vld(dbg_tx_active_ap_vld),
        .dbg_tx_sel(dbg_tx_sel),
        .dbg_tx_sel_ap_vld(dbg_tx_sel_ap_vld),
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
(* C_S_AXI_DATA_WIDTH = "32" *) (* C_S_AXI_WSTRB_WIDTH = "4" *) (* ap_ST_fsm_pp0_stage0 = "3'b010" *) 
(* ap_ST_fsm_state1 = "3'b001" *) (* ap_ST_fsm_state5 = "3'b100" *) (* hls_module = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen
   (ap_clk,
    ap_rst_n,
    m_axis_tx_TDATA,
    m_axis_tx_TVALID,
    m_axis_tx_TREADY,
    m_axis_tx_TKEEP,
    m_axis_tx_TSTRB,
    m_axis_tx_TLAST,
    dbg_lfm_i,
    dbg_lfm_i_ap_vld,
    dbg_lfm_q,
    dbg_lfm_q_ap_vld,
    dbg_tx_sel,
    dbg_tx_sel_ap_vld,
    dbg_tx_active,
    dbg_tx_active_ap_vld,
    dbg_chirp_count,
    dbg_chirp_count_ap_vld,
    dbg_sample_count,
    dbg_sample_count_ap_vld,
    dbg_chirp_start,
    dbg_chirp_start_ap_vld,
    dbg_chirp_end,
    dbg_chirp_end_ap_vld,
    dbg_enable,
    dbg_enable_ap_vld,
    dbg_state,
    dbg_state_ap_vld,
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
  output [31:0]m_axis_tx_TDATA;
  output m_axis_tx_TVALID;
  input m_axis_tx_TREADY;
  output [3:0]m_axis_tx_TKEEP;
  output [3:0]m_axis_tx_TSTRB;
  output [0:0]m_axis_tx_TLAST;
  output [15:0]dbg_lfm_i;
  output dbg_lfm_i_ap_vld;
  output [15:0]dbg_lfm_q;
  output dbg_lfm_q_ap_vld;
  output [1:0]dbg_tx_sel;
  output dbg_tx_sel_ap_vld;
  output [3:0]dbg_tx_active;
  output dbg_tx_active_ap_vld;
  output [15:0]dbg_chirp_count;
  output dbg_chirp_count_ap_vld;
  output [15:0]dbg_sample_count;
  output dbg_sample_count_ap_vld;
  output [0:0]dbg_chirp_start;
  output dbg_chirp_start_ap_vld;
  output [0:0]dbg_chirp_end;
  output dbg_chirp_end_ap_vld;
  output [0:0]dbg_enable;
  output dbg_enable_ap_vld;
  output [2:0]dbg_state;
  output dbg_state_ap_vld;
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
  wire CTRL_s_axi_U_n_7;
  wire CTRL_s_axi_U_n_8;
  wire CTRL_s_axi_U_n_9;
  wire LFM_IQ_LUT_ce0_local;
  wire [11:0]add_ln63_fu_321_p2;
  wire ap_CS_fsm_pp0_stage0;
  wire \ap_CS_fsm_reg_n_0_[0] ;
  wire ap_CS_fsm_state5;
  wire [2:0]ap_NS_fsm;
  wire ap_NS_fsm111_out;
  wire ap_block_pp0_stage0_11001;
  wire ap_block_pp0_stage0_subdone_grp5_done_reg_reg_n_0;
  wire ap_clk;
  wire ap_done;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter2_reg_n_0;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire ap_start;
  wire [2:0]chirp3_fu_128;
  wire [2:0]chirp_16_fu_136;
  wire \chirp_16_fu_136[2]_i_2_n_0 ;
  wire [2:2]chirp_2_fu_355_p3;
  wire [2:0]chirp_fu_429_p2;
  wire [0:0]dbg_chirp_end;
  wire [0:0]dbg_chirp_start;
  wire [0:0]dbg_enable;
  wire dbg_enable_ap_vld;
  wire [14:0]\^dbg_lfm_i ;
  wire dbg_lfm_i_ap_vld;
  wire [14:0]\^dbg_lfm_q ;
  wire [9:0]\^dbg_sample_count ;
  wire [0:0]\^dbg_state ;
  wire [3:0]dbg_tx_active;
  wire dbg_tx_active_ap_vld;
  wire [1:0]dbg_tx_sel;
  wire first_iter_0_reg_473;
  wire icmp_ln63_reg_499;
  wire \icmp_ln755_reg_248_reg_n_0_[0] ;
  wire icmp_ln75_reg_494;
  wire icmp_ln95_reg_483;
  wire [11:0]indvar_flatten2_fu_124_reg;
  wire \indvar_flatten2_fu_124_reg[11]_i_1_n_6 ;
  wire \indvar_flatten2_fu_124_reg[11]_i_1_n_7 ;
  wire \indvar_flatten2_fu_124_reg[8]_i_1_n_0 ;
  wire \indvar_flatten2_fu_124_reg[8]_i_1_n_1 ;
  wire \indvar_flatten2_fu_124_reg[8]_i_1_n_2 ;
  wire \indvar_flatten2_fu_124_reg[8]_i_1_n_3 ;
  wire \indvar_flatten2_fu_124_reg[8]_i_1_n_4 ;
  wire \indvar_flatten2_fu_124_reg[8]_i_1_n_5 ;
  wire \indvar_flatten2_fu_124_reg[8]_i_1_n_6 ;
  wire \indvar_flatten2_fu_124_reg[8]_i_1_n_7 ;
  wire interrupt;
  wire [30:0]\^m_axis_tx_TDATA ;
  wire [0:0]m_axis_tx_TLAST;
  wire m_axis_tx_TREADY;
  wire m_axis_tx_TREADY_int_regslice;
  wire [2:2]\^m_axis_tx_TSTRB ;
  wire m_axis_tx_TVALID;
  wire p_13_in;
  wire regslice_both_m_axis_tx_V_data_V_U_n_1;
  wire regslice_both_m_axis_tx_V_data_V_U_n_10;
  wire regslice_both_m_axis_tx_V_data_V_U_n_12;
  wire regslice_both_m_axis_tx_V_data_V_U_n_2;
  wire regslice_both_m_axis_tx_V_data_V_U_n_20;
  wire regslice_both_m_axis_tx_V_data_V_U_n_22;
  wire regslice_both_m_axis_tx_V_data_V_U_n_26;
  wire regslice_both_m_axis_tx_V_data_V_U_n_27;
  wire regslice_both_m_axis_tx_V_data_V_U_n_28;
  wire regslice_both_m_axis_tx_V_data_V_U_n_29;
  wire regslice_both_m_axis_tx_V_data_V_U_n_30;
  wire regslice_both_m_axis_tx_V_data_V_U_n_4;
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
  wire [10:0]sample4_fu_132;
  wire \sample4_fu_132[10]_i_2_n_0 ;
  wire \sample4_fu_132[5]_i_2_n_0 ;
  wire [10:0]sample_fu_315_p2;
  wire [7:2]\NLW_indvar_flatten2_fu_124_reg[11]_i_1_CO_UNCONNECTED ;
  wire [7:3]\NLW_indvar_flatten2_fu_124_reg[11]_i_1_O_UNCONNECTED ;

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
  assign dbg_chirp_count[1:0] = dbg_tx_sel;
  assign dbg_chirp_count_ap_vld = dbg_lfm_i_ap_vld;
  assign dbg_chirp_end_ap_vld = dbg_tx_active_ap_vld;
  assign dbg_chirp_start_ap_vld = dbg_tx_active_ap_vld;
  assign dbg_lfm_i[15] = \^dbg_lfm_i [14];
  assign dbg_lfm_i[14:0] = \^dbg_lfm_i [14:0];
  assign dbg_lfm_q[15] = \^dbg_lfm_q [14];
  assign dbg_lfm_q[14:0] = \^dbg_lfm_q [14:0];
  assign dbg_lfm_q_ap_vld = dbg_lfm_i_ap_vld;
  assign dbg_sample_count[15] = \<const0> ;
  assign dbg_sample_count[14] = \<const0> ;
  assign dbg_sample_count[13] = \<const0> ;
  assign dbg_sample_count[12] = \<const0> ;
  assign dbg_sample_count[11] = \<const0> ;
  assign dbg_sample_count[10] = \<const0> ;
  assign dbg_sample_count[9:0] = \^dbg_sample_count [9:0];
  assign dbg_sample_count_ap_vld = dbg_lfm_i_ap_vld;
  assign dbg_state[2] = \<const0> ;
  assign dbg_state[1] = \<const0> ;
  assign dbg_state[0] = \^dbg_state [0];
  assign dbg_state_ap_vld = dbg_enable_ap_vld;
  assign dbg_tx_sel_ap_vld = dbg_lfm_i_ap_vld;
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen_CTRL_s_axi CTRL_s_axi_U
       (.D(ap_NS_fsm[1]),
        .\FSM_onehot_rstate_reg[1]_0 (s_axi_CTRL_ARREADY),
        .\FSM_onehot_wstate_reg[1]_0 (s_axi_CTRL_AWREADY),
        .\FSM_onehot_wstate_reg[2]_0 (s_axi_CTRL_WREADY),
        .Q({ap_CS_fsm_pp0_stage0,\ap_CS_fsm_reg_n_0_[0] }),
        .SR(ap_rst_n_inv),
        .\ap_CS_fsm_reg[0] (CTRL_s_axi_U_n_8),
        .\ap_CS_fsm_reg[1] (ap_enable_reg_pp0_iter2_reg_n_0),
        .ap_block_pp0_stage0_11001(ap_block_pp0_stage0_11001),
        .ap_clk(ap_clk),
        .ap_done(ap_done),
        .ap_enable_reg_pp0_iter0(ap_enable_reg_pp0_iter0),
        .ap_enable_reg_pp0_iter0_reg(indvar_flatten2_fu_124_reg),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_0(CTRL_s_axi_U_n_7),
        .ap_start(ap_start),
        .\indvar_flatten2_fu_124_reg[11] (CTRL_s_axi_U_n_9),
        .int_ap_start_reg_0(ap_NS_fsm111_out),
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
        .s_axi_CTRL_WVALID(s_axi_CTRL_WVALID));
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen_LFM_IQ_LUT_ROM_AUTO_1R LFM_IQ_LUT_U
       (.DOUTADOUT({\^dbg_lfm_q ,\^dbg_lfm_i }),
        .E(LFM_IQ_LUT_ce0_local),
        .Q(ap_CS_fsm_pp0_stage0),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .icmp_ln63_reg_499(icmp_ln63_reg_499),
        .icmp_ln75_reg_494(icmp_ln75_reg_494),
        .q0_reg_0(\icmp_ln755_reg_248_reg_n_0_[0] ),
        .q0_reg_1(sample4_fu_132[9:0]));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(\ap_CS_fsm_reg_n_0_[0] ),
        .S(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_pp0_stage0),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(ap_CS_fsm_state5),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    ap_block_pp0_stage0_subdone_grp5_done_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(regslice_both_m_axis_tx_V_data_V_U_n_20),
        .Q(ap_block_pp0_stage0_subdone_grp5_done_reg_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter0_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(CTRL_s_axi_U_n_7),
        .Q(ap_enable_reg_pp0_iter0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(regslice_both_m_axis_tx_V_data_V_U_n_30),
        .Q(ap_enable_reg_pp0_iter1),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter2_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(regslice_both_m_axis_tx_V_data_V_U_n_2),
        .Q(ap_enable_reg_pp0_iter2_reg_n_0),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    \chirp3_fu_128[2]_i_2 
       (.I0(chirp_16_fu_136[2]),
        .I1(\icmp_ln755_reg_248_reg_n_0_[0] ),
        .I2(chirp3_fu_128[2]),
        .O(chirp_2_fu_355_p3));
  FDRE #(
    .INIT(1'b0)) 
    \chirp3_fu_128_reg[0] 
       (.C(ap_clk),
        .CE(dbg_lfm_i_ap_vld),
        .D(dbg_tx_sel[0]),
        .Q(chirp3_fu_128[0]),
        .R(ap_NS_fsm111_out));
  FDRE #(
    .INIT(1'b0)) 
    \chirp3_fu_128_reg[1] 
       (.C(ap_clk),
        .CE(dbg_lfm_i_ap_vld),
        .D(dbg_tx_sel[1]),
        .Q(chirp3_fu_128[1]),
        .R(ap_NS_fsm111_out));
  FDRE #(
    .INIT(1'b0)) 
    \chirp3_fu_128_reg[2] 
       (.C(ap_clk),
        .CE(dbg_lfm_i_ap_vld),
        .D(chirp_2_fu_355_p3),
        .Q(chirp3_fu_128[2]),
        .R(ap_NS_fsm111_out));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h1D)) 
    \chirp_16_fu_136[0]_i_1 
       (.I0(chirp3_fu_128[0]),
        .I1(\icmp_ln755_reg_248_reg_n_0_[0] ),
        .I2(chirp_16_fu_136[0]),
        .O(chirp_fu_429_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h606F6F60)) 
    \chirp_16_fu_136[1]_i_1 
       (.I0(chirp_16_fu_136[0]),
        .I1(chirp_16_fu_136[1]),
        .I2(\icmp_ln755_reg_248_reg_n_0_[0] ),
        .I3(chirp3_fu_128[0]),
        .I4(chirp3_fu_128[1]),
        .O(chirp_fu_429_p2[1]));
  LUT6 #(
    .INIT(64'hFF00787800FF7878)) 
    \chirp_16_fu_136[2]_i_1 
       (.I0(chirp3_fu_128[1]),
        .I1(chirp3_fu_128[0]),
        .I2(chirp3_fu_128[2]),
        .I3(\chirp_16_fu_136[2]_i_2_n_0 ),
        .I4(\icmp_ln755_reg_248_reg_n_0_[0] ),
        .I5(chirp_16_fu_136[2]),
        .O(chirp_fu_429_p2[2]));
  LUT2 #(
    .INIT(4'h7)) 
    \chirp_16_fu_136[2]_i_2 
       (.I0(chirp_16_fu_136[1]),
        .I1(chirp_16_fu_136[0]),
        .O(\chirp_16_fu_136[2]_i_2_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \chirp_16_fu_136_reg[0] 
       (.C(ap_clk),
        .CE(dbg_lfm_i_ap_vld),
        .D(chirp_fu_429_p2[0]),
        .Q(chirp_16_fu_136[0]),
        .S(ap_NS_fsm111_out));
  FDRE #(
    .INIT(1'b0)) 
    \chirp_16_fu_136_reg[1] 
       (.C(ap_clk),
        .CE(dbg_lfm_i_ap_vld),
        .D(chirp_fu_429_p2[1]),
        .Q(chirp_16_fu_136[1]),
        .R(ap_NS_fsm111_out));
  FDRE #(
    .INIT(1'b0)) 
    \chirp_16_fu_136_reg[2] 
       (.C(ap_clk),
        .CE(dbg_lfm_i_ap_vld),
        .D(chirp_fu_429_p2[2]),
        .Q(chirp_16_fu_136[2]),
        .R(ap_NS_fsm111_out));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dbg_chirp_count[0]_INST_0 
       (.I0(chirp_16_fu_136[0]),
        .I1(\icmp_ln755_reg_248_reg_n_0_[0] ),
        .I2(chirp3_fu_128[0]),
        .O(dbg_tx_sel[0]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dbg_chirp_count[1]_INST_0 
       (.I0(chirp_16_fu_136[1]),
        .I1(\icmp_ln755_reg_248_reg_n_0_[0] ),
        .I2(chirp3_fu_128[1]),
        .O(dbg_tx_sel[1]));
  FDRE \first_iter_0_reg_473_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(regslice_both_m_axis_tx_V_data_V_U_n_12),
        .Q(first_iter_0_reg_473),
        .R(1'b0));
  FDRE \icmp_ln63_reg_499_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(regslice_both_m_axis_tx_V_data_V_U_n_27),
        .Q(icmp_ln63_reg_499),
        .R(1'b0));
  FDRE \icmp_ln755_reg_248_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(regslice_both_m_axis_tx_V_data_V_U_n_1),
        .Q(\icmp_ln755_reg_248_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \icmp_ln75_reg_494_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(regslice_both_m_axis_tx_V_data_V_U_n_29),
        .Q(icmp_ln75_reg_494),
        .R(1'b0));
  FDRE \icmp_ln95_reg_483_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(regslice_both_m_axis_tx_V_data_V_U_n_10),
        .Q(icmp_ln95_reg_483),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \indvar_flatten2_fu_124[0]_i_1 
       (.I0(indvar_flatten2_fu_124_reg[0]),
        .O(add_ln63_fu_321_p2[0]));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten2_fu_124_reg[0] 
       (.C(ap_clk),
        .CE(LFM_IQ_LUT_ce0_local),
        .D(add_ln63_fu_321_p2[0]),
        .Q(indvar_flatten2_fu_124_reg[0]),
        .R(ap_NS_fsm111_out));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten2_fu_124_reg[10] 
       (.C(ap_clk),
        .CE(LFM_IQ_LUT_ce0_local),
        .D(add_ln63_fu_321_p2[10]),
        .Q(indvar_flatten2_fu_124_reg[10]),
        .R(ap_NS_fsm111_out));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten2_fu_124_reg[11] 
       (.C(ap_clk),
        .CE(LFM_IQ_LUT_ce0_local),
        .D(add_ln63_fu_321_p2[11]),
        .Q(indvar_flatten2_fu_124_reg[11]),
        .R(ap_NS_fsm111_out));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \indvar_flatten2_fu_124_reg[11]_i_1 
       (.CI(\indvar_flatten2_fu_124_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_indvar_flatten2_fu_124_reg[11]_i_1_CO_UNCONNECTED [7:2],\indvar_flatten2_fu_124_reg[11]_i_1_n_6 ,\indvar_flatten2_fu_124_reg[11]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_indvar_flatten2_fu_124_reg[11]_i_1_O_UNCONNECTED [7:3],add_ln63_fu_321_p2[11:9]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,indvar_flatten2_fu_124_reg[11:9]}));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten2_fu_124_reg[1] 
       (.C(ap_clk),
        .CE(LFM_IQ_LUT_ce0_local),
        .D(add_ln63_fu_321_p2[1]),
        .Q(indvar_flatten2_fu_124_reg[1]),
        .R(ap_NS_fsm111_out));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten2_fu_124_reg[2] 
       (.C(ap_clk),
        .CE(LFM_IQ_LUT_ce0_local),
        .D(add_ln63_fu_321_p2[2]),
        .Q(indvar_flatten2_fu_124_reg[2]),
        .R(ap_NS_fsm111_out));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten2_fu_124_reg[3] 
       (.C(ap_clk),
        .CE(LFM_IQ_LUT_ce0_local),
        .D(add_ln63_fu_321_p2[3]),
        .Q(indvar_flatten2_fu_124_reg[3]),
        .R(ap_NS_fsm111_out));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten2_fu_124_reg[4] 
       (.C(ap_clk),
        .CE(LFM_IQ_LUT_ce0_local),
        .D(add_ln63_fu_321_p2[4]),
        .Q(indvar_flatten2_fu_124_reg[4]),
        .R(ap_NS_fsm111_out));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten2_fu_124_reg[5] 
       (.C(ap_clk),
        .CE(LFM_IQ_LUT_ce0_local),
        .D(add_ln63_fu_321_p2[5]),
        .Q(indvar_flatten2_fu_124_reg[5]),
        .R(ap_NS_fsm111_out));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten2_fu_124_reg[6] 
       (.C(ap_clk),
        .CE(LFM_IQ_LUT_ce0_local),
        .D(add_ln63_fu_321_p2[6]),
        .Q(indvar_flatten2_fu_124_reg[6]),
        .R(ap_NS_fsm111_out));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten2_fu_124_reg[7] 
       (.C(ap_clk),
        .CE(LFM_IQ_LUT_ce0_local),
        .D(add_ln63_fu_321_p2[7]),
        .Q(indvar_flatten2_fu_124_reg[7]),
        .R(ap_NS_fsm111_out));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten2_fu_124_reg[8] 
       (.C(ap_clk),
        .CE(LFM_IQ_LUT_ce0_local),
        .D(add_ln63_fu_321_p2[8]),
        .Q(indvar_flatten2_fu_124_reg[8]),
        .R(ap_NS_fsm111_out));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \indvar_flatten2_fu_124_reg[8]_i_1 
       (.CI(indvar_flatten2_fu_124_reg[0]),
        .CI_TOP(1'b0),
        .CO({\indvar_flatten2_fu_124_reg[8]_i_1_n_0 ,\indvar_flatten2_fu_124_reg[8]_i_1_n_1 ,\indvar_flatten2_fu_124_reg[8]_i_1_n_2 ,\indvar_flatten2_fu_124_reg[8]_i_1_n_3 ,\indvar_flatten2_fu_124_reg[8]_i_1_n_4 ,\indvar_flatten2_fu_124_reg[8]_i_1_n_5 ,\indvar_flatten2_fu_124_reg[8]_i_1_n_6 ,\indvar_flatten2_fu_124_reg[8]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(add_ln63_fu_321_p2[8:1]),
        .S(indvar_flatten2_fu_124_reg[8:1]));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten2_fu_124_reg[9] 
       (.C(ap_clk),
        .CE(LFM_IQ_LUT_ce0_local),
        .D(add_ln63_fu_321_p2[9]),
        .Q(indvar_flatten2_fu_124_reg[9]),
        .R(ap_NS_fsm111_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen_regslice_both regslice_both_m_axis_tx_V_data_V_U
       (.D({ap_NS_fsm[2],ap_NS_fsm[0]}),
        .E(LFM_IQ_LUT_ce0_local),
        .\FSM_sequential_state_reg[0]_0 (\^dbg_state ),
        .Q({ap_CS_fsm_state5,ap_CS_fsm_pp0_stage0,\ap_CS_fsm_reg_n_0_[0] }),
        .SR(ap_rst_n_inv),
        .ack_in_t_reg_0(regslice_both_m_axis_tx_V_data_V_U_n_4),
        .\ap_CS_fsm_reg[1] (regslice_both_m_axis_tx_V_data_V_U_n_28),
        .ap_block_pp0_stage0_11001(ap_block_pp0_stage0_11001),
        .ap_clk(ap_clk),
        .ap_done(ap_done),
        .ap_enable_reg_pp0_iter0(ap_enable_reg_pp0_iter0),
        .ap_enable_reg_pp0_iter0_reg(regslice_both_m_axis_tx_V_data_V_U_n_30),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .ap_enable_reg_pp0_iter1_reg(dbg_lfm_i_ap_vld),
        .ap_enable_reg_pp0_iter2_reg(regslice_both_m_axis_tx_V_data_V_U_n_27),
        .ap_enable_reg_pp0_iter2_reg_0(ap_enable_reg_pp0_iter2_reg_n_0),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_0(regslice_both_m_axis_tx_V_data_V_U_n_2),
        .ap_rst_n_1(regslice_both_m_axis_tx_V_data_V_U_n_20),
        .ap_start(ap_start),
        .\data_p2_reg[31]_0 ({\^dbg_lfm_q ,\^dbg_lfm_i }),
        .dbg_chirp_end(dbg_chirp_end),
        .dbg_chirp_start(dbg_chirp_start),
        .dbg_enable(dbg_enable),
        .dbg_enable_ap_vld(dbg_enable_ap_vld),
        .dbg_enable_ap_vld_0(ap_block_pp0_stage0_subdone_grp5_done_reg_reg_n_0),
        .dbg_tx_active(dbg_tx_active),
        .\dbg_tx_active[3] (chirp_16_fu_136[1:0]),
        .\dbg_tx_active[3]_0 (chirp3_fu_128[1:0]),
        .dbg_tx_active_ap_vld(dbg_tx_active_ap_vld),
        .first_iter_0_reg_473(first_iter_0_reg_473),
        .\first_iter_0_reg_473_reg[0] (sample4_fu_132),
        .icmp_ln63_reg_499(icmp_ln63_reg_499),
        .\icmp_ln63_reg_499_reg[0] (CTRL_s_axi_U_n_9),
        .\icmp_ln755_reg_248_reg[0] (regslice_both_m_axis_tx_V_data_V_U_n_22),
        .\icmp_ln755_reg_248_reg[0]_0 (\icmp_ln755_reg_248_reg_n_0_[0] ),
        .\icmp_ln755_reg_248_reg[0]_1 (CTRL_s_axi_U_n_8),
        .icmp_ln75_reg_494(icmp_ln75_reg_494),
        .\icmp_ln75_reg_494_reg[0] (regslice_both_m_axis_tx_V_data_V_U_n_1),
        .\icmp_ln75_reg_494_reg[0]_0 (regslice_both_m_axis_tx_V_data_V_U_n_29),
        .icmp_ln95_reg_483(icmp_ln95_reg_483),
        .\icmp_ln95_reg_483_reg[0] (regslice_both_m_axis_tx_V_data_V_U_n_10),
        .m_axis_tx_TDATA({\^m_axis_tx_TDATA [30:16],\^m_axis_tx_TDATA [14:0]}),
        .m_axis_tx_TREADY(m_axis_tx_TREADY),
        .m_axis_tx_TREADY_int_regslice(m_axis_tx_TREADY_int_regslice),
        .m_axis_tx_TVALID(m_axis_tx_TVALID),
        .p_13_in(p_13_in),
        .\sample4_fu_132_reg[0] (regslice_both_m_axis_tx_V_data_V_U_n_12),
        .\sample4_fu_132_reg[4] (regslice_both_m_axis_tx_V_data_V_U_n_26));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen_regslice_both__parameterized0 regslice_both_m_axis_tx_V_keep_V_U
       (.Q(ap_CS_fsm_pp0_stage0),
        .SR(ap_rst_n_inv),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .\data_p1_reg[3]_0 (regslice_both_m_axis_tx_V_data_V_U_n_4),
        .m_axis_tx_TREADY(m_axis_tx_TREADY),
        .m_axis_tx_TREADY_int_regslice(m_axis_tx_TREADY_int_regslice),
        .m_axis_tx_TSTRB(\^m_axis_tx_TSTRB ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen_regslice_both__parameterized1 regslice_both_m_axis_tx_V_last_V_U
       (.Q(ap_CS_fsm_pp0_stage0),
        .SR(ap_rst_n_inv),
        .ack_in_t_reg_0(regslice_both_m_axis_tx_V_data_V_U_n_4),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .\data_p1_reg[0]_0 (chirp_16_fu_136),
        .\data_p1_reg[0]_1 (\icmp_ln755_reg_248_reg_n_0_[0] ),
        .\data_p1_reg[0]_2 (chirp3_fu_128),
        .icmp_ln95_reg_483(icmp_ln95_reg_483),
        .m_axis_tx_TLAST(m_axis_tx_TLAST),
        .m_axis_tx_TREADY(m_axis_tx_TREADY),
        .m_axis_tx_TREADY_int_regslice(m_axis_tx_TREADY_int_regslice));
  LUT5 #(
    .INIT(32'hDDFDDD5D)) 
    \sample4_fu_132[0]_i_1 
       (.I0(sample4_fu_132[0]),
        .I1(\icmp_ln755_reg_248_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(icmp_ln63_reg_499),
        .I4(icmp_ln75_reg_494),
        .O(sample_fu_315_p2[0]));
  LUT4 #(
    .INIT(16'hA208)) 
    \sample4_fu_132[10]_i_1 
       (.I0(regslice_both_m_axis_tx_V_data_V_U_n_22),
        .I1(sample4_fu_132[9]),
        .I2(\sample4_fu_132[10]_i_2_n_0 ),
        .I3(sample4_fu_132[10]),
        .O(sample_fu_315_p2[10]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \sample4_fu_132[10]_i_2 
       (.I0(sample4_fu_132[7]),
        .I1(regslice_both_m_axis_tx_V_data_V_U_n_26),
        .I2(sample4_fu_132[6]),
        .I3(sample4_fu_132[8]),
        .O(\sample4_fu_132[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \sample4_fu_132[1]_i_1 
       (.I0(regslice_both_m_axis_tx_V_data_V_U_n_22),
        .I1(sample4_fu_132[0]),
        .I2(sample4_fu_132[1]),
        .O(sample_fu_315_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \sample4_fu_132[2]_i_1 
       (.I0(regslice_both_m_axis_tx_V_data_V_U_n_22),
        .I1(sample4_fu_132[1]),
        .I2(sample4_fu_132[0]),
        .I3(sample4_fu_132[2]),
        .O(sample_fu_315_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \sample4_fu_132[3]_i_1 
       (.I0(regslice_both_m_axis_tx_V_data_V_U_n_22),
        .I1(sample4_fu_132[2]),
        .I2(sample4_fu_132[0]),
        .I3(sample4_fu_132[1]),
        .I4(sample4_fu_132[3]),
        .O(sample_fu_315_p2[3]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \sample4_fu_132[4]_i_1 
       (.I0(regslice_both_m_axis_tx_V_data_V_U_n_22),
        .I1(sample4_fu_132[3]),
        .I2(sample4_fu_132[1]),
        .I3(sample4_fu_132[0]),
        .I4(sample4_fu_132[2]),
        .I5(sample4_fu_132[4]),
        .O(sample_fu_315_p2[4]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \sample4_fu_132[5]_i_1 
       (.I0(regslice_both_m_axis_tx_V_data_V_U_n_22),
        .I1(\sample4_fu_132[5]_i_2_n_0 ),
        .I2(sample4_fu_132[5]),
        .O(sample_fu_315_p2[5]));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \sample4_fu_132[5]_i_2 
       (.I0(sample4_fu_132[3]),
        .I1(sample4_fu_132[1]),
        .I2(sample4_fu_132[0]),
        .I3(sample4_fu_132[2]),
        .I4(sample4_fu_132[4]),
        .O(\sample4_fu_132[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h84)) 
    \sample4_fu_132[6]_i_1 
       (.I0(regslice_both_m_axis_tx_V_data_V_U_n_26),
        .I1(regslice_both_m_axis_tx_V_data_V_U_n_22),
        .I2(sample4_fu_132[6]),
        .O(sample_fu_315_p2[6]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hB040)) 
    \sample4_fu_132[7]_i_1 
       (.I0(regslice_both_m_axis_tx_V_data_V_U_n_26),
        .I1(sample4_fu_132[6]),
        .I2(regslice_both_m_axis_tx_V_data_V_U_n_22),
        .I3(sample4_fu_132[7]),
        .O(sample_fu_315_p2[7]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hDF002000)) 
    \sample4_fu_132[8]_i_1 
       (.I0(sample4_fu_132[6]),
        .I1(regslice_both_m_axis_tx_V_data_V_U_n_26),
        .I2(sample4_fu_132[7]),
        .I3(regslice_both_m_axis_tx_V_data_V_U_n_22),
        .I4(sample4_fu_132[8]),
        .O(sample_fu_315_p2[8]));
  LUT6 #(
    .INIT(64'hDFFF000020000000)) 
    \sample4_fu_132[9]_i_1 
       (.I0(sample4_fu_132[7]),
        .I1(regslice_both_m_axis_tx_V_data_V_U_n_26),
        .I2(sample4_fu_132[6]),
        .I3(sample4_fu_132[8]),
        .I4(regslice_both_m_axis_tx_V_data_V_U_n_22),
        .I5(sample4_fu_132[9]),
        .O(sample_fu_315_p2[9]));
  FDRE #(
    .INIT(1'b0)) 
    \sample4_fu_132_reg[0] 
       (.C(ap_clk),
        .CE(LFM_IQ_LUT_ce0_local),
        .D(sample_fu_315_p2[0]),
        .Q(sample4_fu_132[0]),
        .R(ap_NS_fsm111_out));
  FDRE #(
    .INIT(1'b0)) 
    \sample4_fu_132_reg[10] 
       (.C(ap_clk),
        .CE(LFM_IQ_LUT_ce0_local),
        .D(sample_fu_315_p2[10]),
        .Q(sample4_fu_132[10]),
        .R(ap_NS_fsm111_out));
  FDRE #(
    .INIT(1'b0)) 
    \sample4_fu_132_reg[1] 
       (.C(ap_clk),
        .CE(LFM_IQ_LUT_ce0_local),
        .D(sample_fu_315_p2[1]),
        .Q(sample4_fu_132[1]),
        .R(ap_NS_fsm111_out));
  FDRE #(
    .INIT(1'b0)) 
    \sample4_fu_132_reg[2] 
       (.C(ap_clk),
        .CE(LFM_IQ_LUT_ce0_local),
        .D(sample_fu_315_p2[2]),
        .Q(sample4_fu_132[2]),
        .R(ap_NS_fsm111_out));
  FDRE #(
    .INIT(1'b0)) 
    \sample4_fu_132_reg[3] 
       (.C(ap_clk),
        .CE(LFM_IQ_LUT_ce0_local),
        .D(sample_fu_315_p2[3]),
        .Q(sample4_fu_132[3]),
        .R(ap_NS_fsm111_out));
  FDRE #(
    .INIT(1'b0)) 
    \sample4_fu_132_reg[4] 
       (.C(ap_clk),
        .CE(LFM_IQ_LUT_ce0_local),
        .D(sample_fu_315_p2[4]),
        .Q(sample4_fu_132[4]),
        .R(ap_NS_fsm111_out));
  FDRE #(
    .INIT(1'b0)) 
    \sample4_fu_132_reg[5] 
       (.C(ap_clk),
        .CE(LFM_IQ_LUT_ce0_local),
        .D(sample_fu_315_p2[5]),
        .Q(sample4_fu_132[5]),
        .R(ap_NS_fsm111_out));
  FDRE #(
    .INIT(1'b0)) 
    \sample4_fu_132_reg[6] 
       (.C(ap_clk),
        .CE(LFM_IQ_LUT_ce0_local),
        .D(sample_fu_315_p2[6]),
        .Q(sample4_fu_132[6]),
        .R(ap_NS_fsm111_out));
  FDRE #(
    .INIT(1'b0)) 
    \sample4_fu_132_reg[7] 
       (.C(ap_clk),
        .CE(LFM_IQ_LUT_ce0_local),
        .D(sample_fu_315_p2[7]),
        .Q(sample4_fu_132[7]),
        .R(ap_NS_fsm111_out));
  FDRE #(
    .INIT(1'b0)) 
    \sample4_fu_132_reg[8] 
       (.C(ap_clk),
        .CE(LFM_IQ_LUT_ce0_local),
        .D(sample_fu_315_p2[8]),
        .Q(sample4_fu_132[8]),
        .R(ap_NS_fsm111_out));
  FDRE #(
    .INIT(1'b0)) 
    \sample4_fu_132_reg[9] 
       (.C(ap_clk),
        .CE(LFM_IQ_LUT_ce0_local),
        .D(sample_fu_315_p2[9]),
        .Q(sample4_fu_132[9]),
        .R(ap_NS_fsm111_out));
  FDRE \trunc_ln111_reg_489_reg[0] 
       (.C(ap_clk),
        .CE(p_13_in),
        .D(sample4_fu_132[0]),
        .Q(\^dbg_sample_count [0]),
        .R(regslice_both_m_axis_tx_V_data_V_U_n_28));
  FDRE \trunc_ln111_reg_489_reg[1] 
       (.C(ap_clk),
        .CE(p_13_in),
        .D(sample4_fu_132[1]),
        .Q(\^dbg_sample_count [1]),
        .R(regslice_both_m_axis_tx_V_data_V_U_n_28));
  FDRE \trunc_ln111_reg_489_reg[2] 
       (.C(ap_clk),
        .CE(p_13_in),
        .D(sample4_fu_132[2]),
        .Q(\^dbg_sample_count [2]),
        .R(regslice_both_m_axis_tx_V_data_V_U_n_28));
  FDRE \trunc_ln111_reg_489_reg[3] 
       (.C(ap_clk),
        .CE(p_13_in),
        .D(sample4_fu_132[3]),
        .Q(\^dbg_sample_count [3]),
        .R(regslice_both_m_axis_tx_V_data_V_U_n_28));
  FDRE \trunc_ln111_reg_489_reg[4] 
       (.C(ap_clk),
        .CE(p_13_in),
        .D(sample4_fu_132[4]),
        .Q(\^dbg_sample_count [4]),
        .R(regslice_both_m_axis_tx_V_data_V_U_n_28));
  FDRE \trunc_ln111_reg_489_reg[5] 
       (.C(ap_clk),
        .CE(p_13_in),
        .D(sample4_fu_132[5]),
        .Q(\^dbg_sample_count [5]),
        .R(regslice_both_m_axis_tx_V_data_V_U_n_28));
  FDRE \trunc_ln111_reg_489_reg[6] 
       (.C(ap_clk),
        .CE(p_13_in),
        .D(sample4_fu_132[6]),
        .Q(\^dbg_sample_count [6]),
        .R(regslice_both_m_axis_tx_V_data_V_U_n_28));
  FDRE \trunc_ln111_reg_489_reg[7] 
       (.C(ap_clk),
        .CE(p_13_in),
        .D(sample4_fu_132[7]),
        .Q(\^dbg_sample_count [7]),
        .R(regslice_both_m_axis_tx_V_data_V_U_n_28));
  FDRE \trunc_ln111_reg_489_reg[8] 
       (.C(ap_clk),
        .CE(p_13_in),
        .D(sample4_fu_132[8]),
        .Q(\^dbg_sample_count [8]),
        .R(regslice_both_m_axis_tx_V_data_V_U_n_28));
  FDRE \trunc_ln111_reg_489_reg[9] 
       (.C(ap_clk),
        .CE(p_13_in),
        .D(sample4_fu_132[9]),
        .Q(\^dbg_sample_count [9]),
        .R(regslice_both_m_axis_tx_V_data_V_U_n_28));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen_CTRL_s_axi
   (SR,
    interrupt,
    s_axi_CTRL_RVALID,
    \FSM_onehot_rstate_reg[1]_0 ,
    s_axi_CTRL_BVALID,
    \FSM_onehot_wstate_reg[2]_0 ,
    ap_start,
    ap_rst_n_0,
    \ap_CS_fsm_reg[0] ,
    \indvar_flatten2_fu_124_reg[11] ,
    D,
    int_ap_start_reg_0,
    \FSM_onehot_wstate_reg[1]_0 ,
    s_axi_CTRL_RDATA,
    ap_clk,
    s_axi_CTRL_RREADY,
    s_axi_CTRL_ARVALID,
    s_axi_CTRL_BREADY,
    s_axi_CTRL_WVALID,
    s_axi_CTRL_WSTRB,
    s_axi_CTRL_WDATA,
    Q,
    ap_done,
    s_axi_CTRL_ARADDR,
    ap_rst_n,
    ap_enable_reg_pp0_iter0,
    ap_block_pp0_stage0_11001,
    m_axis_tx_TREADY_int_regslice,
    ap_enable_reg_pp0_iter1,
    \ap_CS_fsm_reg[1] ,
    ap_enable_reg_pp0_iter0_reg,
    s_axi_CTRL_AWVALID,
    s_axi_CTRL_AWADDR);
  output [0:0]SR;
  output interrupt;
  output s_axi_CTRL_RVALID;
  output \FSM_onehot_rstate_reg[1]_0 ;
  output s_axi_CTRL_BVALID;
  output \FSM_onehot_wstate_reg[2]_0 ;
  output ap_start;
  output ap_rst_n_0;
  output \ap_CS_fsm_reg[0] ;
  output \indvar_flatten2_fu_124_reg[11] ;
  output [0:0]D;
  output [0:0]int_ap_start_reg_0;
  output \FSM_onehot_wstate_reg[1]_0 ;
  output [5:0]s_axi_CTRL_RDATA;
  input ap_clk;
  input s_axi_CTRL_RREADY;
  input s_axi_CTRL_ARVALID;
  input s_axi_CTRL_BREADY;
  input s_axi_CTRL_WVALID;
  input [0:0]s_axi_CTRL_WSTRB;
  input [2:0]s_axi_CTRL_WDATA;
  input [1:0]Q;
  input ap_done;
  input [3:0]s_axi_CTRL_ARADDR;
  input ap_rst_n;
  input ap_enable_reg_pp0_iter0;
  input ap_block_pp0_stage0_11001;
  input m_axis_tx_TREADY_int_regslice;
  input ap_enable_reg_pp0_iter1;
  input \ap_CS_fsm_reg[1] ;
  input [11:0]ap_enable_reg_pp0_iter0_reg;
  input s_axi_CTRL_AWVALID;
  input [1:0]s_axi_CTRL_AWADDR;

  wire [0:0]D;
  wire \FSM_onehot_rstate[1]_i_1_n_0 ;
  wire \FSM_onehot_rstate[2]_i_1_n_0 ;
  wire \FSM_onehot_rstate_reg[1]_0 ;
  wire \FSM_onehot_wstate[1]_i_1_n_0 ;
  wire \FSM_onehot_wstate[2]_i_1_n_0 ;
  wire \FSM_onehot_wstate[3]_i_1_n_0 ;
  wire \FSM_onehot_wstate_reg[1]_0 ;
  wire \FSM_onehot_wstate_reg[2]_0 ;
  wire [1:0]Q;
  wire [0:0]SR;
  wire \ap_CS_fsm_reg[0] ;
  wire \ap_CS_fsm_reg[1] ;
  wire ap_block_pp0_stage0_11001;
  wire ap_clk;
  wire ap_done;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter0_i_4_n_0;
  wire ap_enable_reg_pp0_iter0_i_5_n_0;
  wire [11:0]ap_enable_reg_pp0_iter0_reg;
  wire ap_enable_reg_pp0_iter1;
  wire ap_idle;
  wire ap_rst_n;
  wire ap_rst_n_0;
  wire ap_start;
  wire ar_hs;
  wire auto_restart_status_i_1_n_0;
  wire auto_restart_status_reg_n_0;
  wire \indvar_flatten2_fu_124_reg[11] ;
  wire int_ap_ready;
  wire int_ap_ready_i_1_n_0;
  wire int_ap_start5_out;
  wire int_ap_start_i_1_n_0;
  wire [0:0]int_ap_start_reg_0;
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
  wire \int_isr_reg_n_0_[0] ;
  wire \int_isr_reg_n_0_[1] ;
  wire int_task_ap_done;
  wire int_task_ap_done_i_1_n_0;
  wire int_task_ap_done_i_2_n_0;
  wire interrupt;
  wire m_axis_tx_TREADY_int_regslice;
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
  wire task_ap_done;
  wire waddr;
  wire \waddr_reg_n_0_[2] ;
  wire \waddr_reg_n_0_[3] ;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h8FDD)) 
    \FSM_onehot_rstate[1]_i_1 
       (.I0(s_axi_CTRL_RVALID),
        .I1(s_axi_CTRL_RREADY),
        .I2(s_axi_CTRL_ARVALID),
        .I3(\FSM_onehot_rstate_reg[1]_0 ),
        .O(\FSM_onehot_rstate[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hF444)) 
    \FSM_onehot_rstate[2]_i_1 
       (.I0(s_axi_CTRL_RREADY),
        .I1(s_axi_CTRL_RVALID),
        .I2(\FSM_onehot_rstate_reg[1]_0 ),
        .I3(s_axi_CTRL_ARVALID),
        .O(\FSM_onehot_rstate[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "RDIDLE:010,RDDATA:100,iSTATE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_rstate[1]_i_1_n_0 ),
        .Q(\FSM_onehot_rstate_reg[1]_0 ),
        .R(SR));
  (* FSM_ENCODED_STATES = "RDIDLE:010,RDDATA:100,iSTATE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rstate_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_rstate[2]_i_1_n_0 ),
        .Q(s_axi_CTRL_RVALID),
        .R(SR));
  LUT5 #(
    .INIT(32'hFF1D0C1D)) 
    \FSM_onehot_wstate[1]_i_1 
       (.I0(\FSM_onehot_wstate_reg[2]_0 ),
        .I1(\FSM_onehot_wstate_reg[1]_0 ),
        .I2(s_axi_CTRL_AWVALID),
        .I3(s_axi_CTRL_BVALID),
        .I4(s_axi_CTRL_BREADY),
        .O(\FSM_onehot_wstate[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF444)) 
    \FSM_onehot_wstate[2]_i_1 
       (.I0(s_axi_CTRL_WVALID),
        .I1(\FSM_onehot_wstate_reg[2]_0 ),
        .I2(\FSM_onehot_wstate_reg[1]_0 ),
        .I3(s_axi_CTRL_AWVALID),
        .O(\FSM_onehot_wstate[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF444)) 
    \FSM_onehot_wstate[3]_i_1 
       (.I0(s_axi_CTRL_BREADY),
        .I1(s_axi_CTRL_BVALID),
        .I2(\FSM_onehot_wstate_reg[2]_0 ),
        .I3(s_axi_CTRL_WVALID),
        .O(\FSM_onehot_wstate[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[1]_i_1_n_0 ),
        .Q(\FSM_onehot_wstate_reg[1]_0 ),
        .R(SR));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[2]_i_1_n_0 ),
        .Q(\FSM_onehot_wstate_reg[2]_0 ),
        .R(SR));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[3]_i_1_n_0 ),
        .Q(s_axi_CTRL_BVALID),
        .R(SR));
  LUT6 #(
    .INIT(64'hFAF0FA30FAF0FAF0)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(ap_start),
        .I1(m_axis_tx_TREADY_int_regslice),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(ap_enable_reg_pp0_iter1),
        .I5(\ap_CS_fsm_reg[1] ),
        .O(D));
  LUT6 #(
    .INIT(64'h8A008A8A8A8A8A8A)) 
    ap_enable_reg_pp0_iter0_i_1
       (.I0(ap_rst_n),
        .I1(ap_enable_reg_pp0_iter0),
        .I2(\ap_CS_fsm_reg[0] ),
        .I3(\indvar_flatten2_fu_124_reg[11] ),
        .I4(ap_block_pp0_stage0_11001),
        .I5(Q[1]),
        .O(ap_rst_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFBFFFFFFF)) 
    ap_enable_reg_pp0_iter0_i_2
       (.I0(ap_enable_reg_pp0_iter0_i_4_n_0),
        .I1(ap_enable_reg_pp0_iter0_reg[11]),
        .I2(ap_enable_reg_pp0_iter0_reg[10]),
        .I3(ap_enable_reg_pp0_iter0_reg[9]),
        .I4(ap_enable_reg_pp0_iter0_reg[8]),
        .I5(ap_enable_reg_pp0_iter0_i_5_n_0),
        .O(\indvar_flatten2_fu_124_reg[11] ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    ap_enable_reg_pp0_iter0_i_4
       (.I0(ap_enable_reg_pp0_iter0_reg[7]),
        .I1(ap_enable_reg_pp0_iter0_reg[6]),
        .I2(ap_enable_reg_pp0_iter0_reg[5]),
        .I3(ap_enable_reg_pp0_iter0_reg[4]),
        .O(ap_enable_reg_pp0_iter0_i_4_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    ap_enable_reg_pp0_iter0_i_5
       (.I0(ap_enable_reg_pp0_iter0_reg[3]),
        .I1(ap_enable_reg_pp0_iter0_reg[2]),
        .I2(ap_enable_reg_pp0_iter0_reg[1]),
        .I3(ap_enable_reg_pp0_iter0_reg[0]),
        .O(ap_enable_reg_pp0_iter0_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFBF0)) 
    auto_restart_status_i_1
       (.I0(ap_start),
        .I1(Q[0]),
        .I2(p_0_in[7]),
        .I3(auto_restart_status_reg_n_0),
        .O(auto_restart_status_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    auto_restart_status_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(auto_restart_status_i_1_n_0),
        .Q(auto_restart_status_reg_n_0),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \chirp3_fu_128[2]_i_1 
       (.I0(ap_start),
        .I1(Q[0]),
        .O(int_ap_start_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \icmp_ln755_reg_248[0]_i_3 
       (.I0(Q[0]),
        .I1(ap_start),
        .O(\ap_CS_fsm_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    int_ap_idle_i_1
       (.I0(Q[0]),
        .I1(ap_start),
        .O(ap_idle));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_idle_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_idle),
        .Q(p_0_in[2]),
        .R(SR));
  LUT6 #(
    .INIT(64'h7FFF7F7F00FF0000)) 
    int_ap_ready_i_1
       (.I0(int_task_ap_done_i_2_n_0),
        .I1(s_axi_CTRL_ARVALID),
        .I2(\FSM_onehot_rstate_reg[1]_0 ),
        .I3(p_0_in[7]),
        .I4(ap_done),
        .I5(int_ap_ready),
        .O(int_ap_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_ready_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_ready_i_1_n_0),
        .Q(int_ap_ready),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFBF8)) 
    int_ap_start_i_1
       (.I0(p_0_in[7]),
        .I1(ap_done),
        .I2(int_ap_start5_out),
        .I3(ap_start),
        .O(int_ap_start_i_1_n_0));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    int_ap_start_i_2
       (.I0(s_axi_CTRL_WDATA[0]),
        .I1(\waddr_reg_n_0_[2] ),
        .I2(\waddr_reg_n_0_[3] ),
        .I3(s_axi_CTRL_WSTRB),
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
        .R(SR));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    int_auto_restart_i_1
       (.I0(s_axi_CTRL_WDATA[2]),
        .I1(\waddr_reg_n_0_[3] ),
        .I2(\waddr_reg_n_0_[2] ),
        .I3(int_auto_restart_i_2_n_0),
        .I4(p_0_in[7]),
        .O(int_auto_restart_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h80)) 
    int_auto_restart_i_2
       (.I0(\FSM_onehot_wstate_reg[2]_0 ),
        .I1(s_axi_CTRL_WVALID),
        .I2(s_axi_CTRL_WSTRB),
        .O(int_auto_restart_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_auto_restart_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_auto_restart_i_1_n_0),
        .Q(p_0_in[7]),
        .R(SR));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    int_gie_i_1
       (.I0(s_axi_CTRL_WDATA[0]),
        .I1(\waddr_reg_n_0_[3] ),
        .I2(\waddr_reg_n_0_[2] ),
        .I3(int_auto_restart_i_2_n_0),
        .I4(int_gie_reg_n_0),
        .O(int_gie_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_gie_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_gie_i_1_n_0),
        .Q(int_gie_reg_n_0),
        .R(SR));
  LUT5 #(
    .INIT(32'h40000000)) 
    \int_ier[1]_i_1 
       (.I0(\waddr_reg_n_0_[2] ),
        .I1(\waddr_reg_n_0_[3] ),
        .I2(s_axi_CTRL_WSTRB),
        .I3(s_axi_CTRL_WVALID),
        .I4(\FSM_onehot_wstate_reg[2]_0 ),
        .O(int_ier10_out));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[0] 
       (.C(ap_clk),
        .CE(int_ier10_out),
        .D(s_axi_CTRL_WDATA[0]),
        .Q(\int_ier_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[1] 
       (.C(ap_clk),
        .CE(int_ier10_out),
        .D(s_axi_CTRL_WDATA[1]),
        .Q(p_0_in__0),
        .R(SR));
  LUT3 #(
    .INIT(8'hE0)) 
    int_interrupt_i_1
       (.I0(\int_isr_reg_n_0_[1] ),
        .I1(\int_isr_reg_n_0_[0] ),
        .I2(int_gie_reg_n_0),
        .O(int_interrupt0));
  FDRE #(
    .INIT(1'b0)) 
    int_interrupt_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_interrupt0),
        .Q(interrupt),
        .R(SR));
  LUT5 #(
    .INIT(32'hF777F888)) 
    \int_isr[0]_i_1 
       (.I0(s_axi_CTRL_WDATA[0]),
        .I1(int_isr7_out),
        .I2(\int_ier_reg_n_0_[0] ),
        .I3(ap_done),
        .I4(\int_isr_reg_n_0_[0] ),
        .O(\int_isr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \int_isr[0]_i_2 
       (.I0(\waddr_reg_n_0_[3] ),
        .I1(\waddr_reg_n_0_[2] ),
        .I2(s_axi_CTRL_WSTRB),
        .I3(s_axi_CTRL_WVALID),
        .I4(\FSM_onehot_wstate_reg[2]_0 ),
        .O(int_isr7_out));
  LUT5 #(
    .INIT(32'hF777F888)) 
    \int_isr[1]_i_1 
       (.I0(s_axi_CTRL_WDATA[1]),
        .I1(int_isr7_out),
        .I2(p_0_in__0),
        .I3(ap_done),
        .I4(\int_isr_reg_n_0_[1] ),
        .O(\int_isr[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_isr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_isr[0]_i_1_n_0 ),
        .Q(\int_isr_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_isr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_isr[1]_i_1_n_0 ),
        .Q(\int_isr_reg_n_0_[1] ),
        .R(SR));
  LUT5 #(
    .INIT(32'hFF7FFF00)) 
    int_task_ap_done_i_1
       (.I0(int_task_ap_done_i_2_n_0),
        .I1(s_axi_CTRL_ARVALID),
        .I2(\FSM_onehot_rstate_reg[1]_0 ),
        .I3(task_ap_done),
        .I4(int_task_ap_done),
        .O(int_task_ap_done_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    int_task_ap_done_i_2
       (.I0(s_axi_CTRL_ARADDR[3]),
        .I1(s_axi_CTRL_ARADDR[2]),
        .I2(s_axi_CTRL_ARADDR[1]),
        .I3(s_axi_CTRL_ARADDR[0]),
        .O(int_task_ap_done_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h10FF1000)) 
    int_task_ap_done_i_3
       (.I0(ap_start),
        .I1(p_0_in[2]),
        .I2(Q[0]),
        .I3(auto_restart_status_reg_n_0),
        .I4(ap_done),
        .O(task_ap_done));
  FDRE #(
    .INIT(1'b0)) 
    int_task_ap_done_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_task_ap_done_i_1_n_0),
        .Q(int_task_ap_done),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFFFFFFA8000800)) 
    \rdata[0]_i_1 
       (.I0(s_axi_CTRL_ARADDR[2]),
        .I1(int_gie_reg_n_0),
        .I2(s_axi_CTRL_ARADDR[3]),
        .I3(\rdata[1]_i_2_n_0 ),
        .I4(\int_isr_reg_n_0_[0] ),
        .I5(\rdata[0]_i_2_n_0 ),
        .O(rdata[0]));
  LUT6 #(
    .INIT(64'h00000000000000AC)) 
    \rdata[0]_i_2 
       (.I0(\int_ier_reg_n_0_[0] ),
        .I1(ap_start),
        .I2(s_axi_CTRL_ARADDR[3]),
        .I3(s_axi_CTRL_ARADDR[2]),
        .I4(s_axi_CTRL_ARADDR[1]),
        .I5(s_axi_CTRL_ARADDR[0]),
        .O(\rdata[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF000C0A00000C0A0)) 
    \rdata[1]_i_1 
       (.I0(int_task_ap_done),
        .I1(p_0_in__0),
        .I2(\rdata[1]_i_2_n_0 ),
        .I3(s_axi_CTRL_ARADDR[3]),
        .I4(s_axi_CTRL_ARADDR[2]),
        .I5(\int_isr_reg_n_0_[1] ),
        .O(rdata[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \rdata[1]_i_2 
       (.I0(s_axi_CTRL_ARADDR[0]),
        .I1(s_axi_CTRL_ARADDR[1]),
        .O(\rdata[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8888888888888880)) 
    \rdata[9]_i_1 
       (.I0(\FSM_onehot_rstate_reg[1]_0 ),
        .I1(s_axi_CTRL_ARVALID),
        .I2(s_axi_CTRL_ARADDR[0]),
        .I3(s_axi_CTRL_ARADDR[1]),
        .I4(s_axi_CTRL_ARADDR[2]),
        .I5(s_axi_CTRL_ARADDR[3]),
        .O(\rdata[9]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rdata[9]_i_2 
       (.I0(s_axi_CTRL_ARVALID),
        .I1(\FSM_onehot_rstate_reg[1]_0 ),
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
  LUT1 #(
    .INIT(2'h1)) 
    \state[0]_i_1 
       (.I0(ap_rst_n),
        .O(SR));
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen_LFM_IQ_LUT_ROM_AUTO_1R
   (DOUTADOUT,
    ap_clk,
    E,
    icmp_ln75_reg_494,
    Q,
    icmp_ln63_reg_499,
    ap_enable_reg_pp0_iter1,
    q0_reg_0,
    q0_reg_1);
  output [29:0]DOUTADOUT;
  input ap_clk;
  input [0:0]E;
  input icmp_ln75_reg_494;
  input [0:0]Q;
  input icmp_ln63_reg_499;
  input ap_enable_reg_pp0_iter1;
  input q0_reg_0;
  input [9:0]q0_reg_1;

  wire [29:0]DOUTADOUT;
  wire [0:0]E;
  wire [0:0]Q;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1;
  wire icmp_ln63_reg_499;
  wire icmp_ln75_reg_494;
  wire q0_reg_0;
  wire [9:0]q0_reg_1;
  wire [9:0]select_ln63_fu_286_p3;
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
       (.ADDRARDADDR({select_ln63_fu_286_p3,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
        .DOUTADOUT({NLW_q0_reg_DOUTADOUT_UNCONNECTED[31:30],DOUTADOUT}),
        .DOUTBDOUT(NLW_q0_reg_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_q0_reg_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_q0_reg_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_q0_reg_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(E),
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
  LUT6 #(
    .INIT(64'h0400F7FF00000000)) 
    q0_reg_i_10
       (.I0(icmp_ln75_reg_494),
        .I1(Q),
        .I2(icmp_ln63_reg_499),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(q0_reg_0),
        .I5(q0_reg_1[1]),
        .O(select_ln63_fu_286_p3[1]));
  LUT6 #(
    .INIT(64'h0400F7FF00000000)) 
    q0_reg_i_11
       (.I0(icmp_ln75_reg_494),
        .I1(Q),
        .I2(icmp_ln63_reg_499),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(q0_reg_0),
        .I5(q0_reg_1[0]),
        .O(select_ln63_fu_286_p3[0]));
  LUT6 #(
    .INIT(64'h0400F7FF00000000)) 
    q0_reg_i_2
       (.I0(icmp_ln75_reg_494),
        .I1(Q),
        .I2(icmp_ln63_reg_499),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(q0_reg_0),
        .I5(q0_reg_1[9]),
        .O(select_ln63_fu_286_p3[9]));
  LUT6 #(
    .INIT(64'h0400F7FF00000000)) 
    q0_reg_i_3
       (.I0(icmp_ln75_reg_494),
        .I1(Q),
        .I2(icmp_ln63_reg_499),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(q0_reg_0),
        .I5(q0_reg_1[8]),
        .O(select_ln63_fu_286_p3[8]));
  LUT6 #(
    .INIT(64'h0400F7FF00000000)) 
    q0_reg_i_4
       (.I0(icmp_ln75_reg_494),
        .I1(Q),
        .I2(icmp_ln63_reg_499),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(q0_reg_0),
        .I5(q0_reg_1[7]),
        .O(select_ln63_fu_286_p3[7]));
  LUT6 #(
    .INIT(64'h0400F7FF00000000)) 
    q0_reg_i_5
       (.I0(icmp_ln75_reg_494),
        .I1(Q),
        .I2(icmp_ln63_reg_499),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(q0_reg_0),
        .I5(q0_reg_1[6]),
        .O(select_ln63_fu_286_p3[6]));
  LUT6 #(
    .INIT(64'h0400F7FF00000000)) 
    q0_reg_i_6
       (.I0(icmp_ln75_reg_494),
        .I1(Q),
        .I2(icmp_ln63_reg_499),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(q0_reg_0),
        .I5(q0_reg_1[5]),
        .O(select_ln63_fu_286_p3[5]));
  LUT6 #(
    .INIT(64'h0400F7FF00000000)) 
    q0_reg_i_7
       (.I0(icmp_ln75_reg_494),
        .I1(Q),
        .I2(icmp_ln63_reg_499),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(q0_reg_0),
        .I5(q0_reg_1[4]),
        .O(select_ln63_fu_286_p3[4]));
  LUT6 #(
    .INIT(64'h0400F7FF00000000)) 
    q0_reg_i_8
       (.I0(icmp_ln75_reg_494),
        .I1(Q),
        .I2(icmp_ln63_reg_499),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(q0_reg_0),
        .I5(q0_reg_1[3]),
        .O(select_ln63_fu_286_p3[3]));
  LUT6 #(
    .INIT(64'h0400F7FF00000000)) 
    q0_reg_i_9
       (.I0(icmp_ln75_reg_494),
        .I1(Q),
        .I2(icmp_ln63_reg_499),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(q0_reg_0),
        .I5(q0_reg_1[2]),
        .O(select_ln63_fu_286_p3[2]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen_regslice_both
   (m_axis_tx_TREADY_int_regslice,
    \icmp_ln75_reg_494_reg[0] ,
    ap_rst_n_0,
    dbg_tx_active_ap_vld,
    ack_in_t_reg_0,
    dbg_enable_ap_vld,
    ap_done,
    D,
    \FSM_sequential_state_reg[0]_0 ,
    \icmp_ln95_reg_483_reg[0] ,
    p_13_in,
    \sample4_fu_132_reg[0] ,
    E,
    m_axis_tx_TVALID,
    ap_enable_reg_pp0_iter1_reg,
    dbg_tx_active,
    ap_rst_n_1,
    ap_block_pp0_stage0_11001,
    \icmp_ln755_reg_248_reg[0] ,
    dbg_chirp_start,
    dbg_chirp_end,
    dbg_enable,
    \sample4_fu_132_reg[4] ,
    ap_enable_reg_pp0_iter2_reg,
    \ap_CS_fsm_reg[1] ,
    \icmp_ln75_reg_494_reg[0]_0 ,
    ap_enable_reg_pp0_iter0_reg,
    m_axis_tx_TDATA,
    SR,
    ap_clk,
    icmp_ln75_reg_494,
    ap_enable_reg_pp0_iter1,
    icmp_ln63_reg_499,
    \icmp_ln755_reg_248_reg[0]_0 ,
    \icmp_ln755_reg_248_reg[0]_1 ,
    ap_rst_n,
    ap_enable_reg_pp0_iter2_reg_0,
    Q,
    ap_start,
    m_axis_tx_TREADY,
    dbg_enable_ap_vld_0,
    icmp_ln95_reg_483,
    \first_iter_0_reg_473_reg[0] ,
    first_iter_0_reg_473,
    ap_enable_reg_pp0_iter0,
    \dbg_tx_active[3] ,
    \dbg_tx_active[3]_0 ,
    \data_p2_reg[31]_0 ,
    \icmp_ln63_reg_499_reg[0] );
  output m_axis_tx_TREADY_int_regslice;
  output \icmp_ln75_reg_494_reg[0] ;
  output ap_rst_n_0;
  output dbg_tx_active_ap_vld;
  output ack_in_t_reg_0;
  output dbg_enable_ap_vld;
  output ap_done;
  output [1:0]D;
  output \FSM_sequential_state_reg[0]_0 ;
  output \icmp_ln95_reg_483_reg[0] ;
  output p_13_in;
  output \sample4_fu_132_reg[0] ;
  output [0:0]E;
  output m_axis_tx_TVALID;
  output [0:0]ap_enable_reg_pp0_iter1_reg;
  output [3:0]dbg_tx_active;
  output ap_rst_n_1;
  output ap_block_pp0_stage0_11001;
  output \icmp_ln755_reg_248_reg[0] ;
  output [0:0]dbg_chirp_start;
  output [0:0]dbg_chirp_end;
  output [0:0]dbg_enable;
  output \sample4_fu_132_reg[4] ;
  output ap_enable_reg_pp0_iter2_reg;
  output \ap_CS_fsm_reg[1] ;
  output \icmp_ln75_reg_494_reg[0]_0 ;
  output ap_enable_reg_pp0_iter0_reg;
  output [29:0]m_axis_tx_TDATA;
  input [0:0]SR;
  input ap_clk;
  input icmp_ln75_reg_494;
  input ap_enable_reg_pp0_iter1;
  input icmp_ln63_reg_499;
  input \icmp_ln755_reg_248_reg[0]_0 ;
  input \icmp_ln755_reg_248_reg[0]_1 ;
  input ap_rst_n;
  input ap_enable_reg_pp0_iter2_reg_0;
  input [2:0]Q;
  input ap_start;
  input m_axis_tx_TREADY;
  input dbg_enable_ap_vld_0;
  input icmp_ln95_reg_483;
  input [10:0]\first_iter_0_reg_473_reg[0] ;
  input first_iter_0_reg_473;
  input ap_enable_reg_pp0_iter0;
  input [1:0]\dbg_tx_active[3] ;
  input [1:0]\dbg_tx_active[3]_0 ;
  input [29:0]\data_p2_reg[31]_0 ;
  input \icmp_ln63_reg_499_reg[0] ;

  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_sequential_state_reg[0]_0 ;
  wire [2:0]Q;
  wire [0:0]SR;
  wire ack_in_t_i_1_n_0;
  wire ack_in_t_reg_0;
  wire \ap_CS_fsm_reg[1] ;
  wire ap_block_pp0_stage0_11001;
  wire ap_clk;
  wire ap_done;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter0_reg;
  wire ap_enable_reg_pp0_iter1;
  wire [0:0]ap_enable_reg_pp0_iter1_reg;
  wire ap_enable_reg_pp0_iter2_reg;
  wire ap_enable_reg_pp0_iter2_reg_0;
  wire ap_rst_n;
  wire ap_rst_n_0;
  wire ap_rst_n_1;
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
  wire \data_p1[31]_i_2_n_0 ;
  wire \data_p1[3]_i_1_n_0 ;
  wire \data_p1[4]_i_1_n_0 ;
  wire \data_p1[5]_i_1_n_0 ;
  wire \data_p1[6]_i_1_n_0 ;
  wire \data_p1[7]_i_1_n_0 ;
  wire \data_p1[8]_i_1_n_0 ;
  wire \data_p1[9]_i_1_n_0 ;
  wire [29:0]\data_p2_reg[31]_0 ;
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
  wire [0:0]dbg_chirp_end;
  wire [0:0]dbg_chirp_start;
  wire [0:0]dbg_enable;
  wire dbg_enable_ap_vld;
  wire dbg_enable_ap_vld_0;
  wire [3:0]dbg_tx_active;
  wire [1:0]\dbg_tx_active[3] ;
  wire [1:0]\dbg_tx_active[3]_0 ;
  wire dbg_tx_active_ap_vld;
  wire first_iter_0_reg_473;
  wire \first_iter_0_reg_473[0]_i_2_n_0 ;
  wire \first_iter_0_reg_473[0]_i_3_n_0 ;
  wire \first_iter_0_reg_473[0]_i_4_n_0 ;
  wire \first_iter_0_reg_473[0]_i_5_n_0 ;
  wire [10:0]\first_iter_0_reg_473_reg[0] ;
  wire icmp_ln63_reg_499;
  wire \icmp_ln63_reg_499_reg[0] ;
  wire \icmp_ln755_reg_248[0]_i_2_n_0 ;
  wire \icmp_ln755_reg_248_reg[0] ;
  wire \icmp_ln755_reg_248_reg[0]_0 ;
  wire \icmp_ln755_reg_248_reg[0]_1 ;
  wire icmp_ln75_reg_494;
  wire \icmp_ln75_reg_494[0]_i_2_n_0 ;
  wire \icmp_ln75_reg_494_reg[0] ;
  wire \icmp_ln75_reg_494_reg[0]_0 ;
  wire icmp_ln95_reg_483;
  wire \icmp_ln95_reg_483[0]_i_2_n_0 ;
  wire \icmp_ln95_reg_483[0]_i_3_n_0 ;
  wire \icmp_ln95_reg_483_reg[0] ;
  wire load_p1;
  wire [29:0]m_axis_tx_TDATA;
  wire m_axis_tx_TREADY;
  wire m_axis_tx_TREADY_int_regslice;
  wire m_axis_tx_TVALID;
  wire [1:0]next__0;
  wire p_13_in;
  wire \sample4_fu_132_reg[0] ;
  wire \sample4_fu_132_reg[4] ;
  wire [1:1]state;
  wire \state[0]_i_2_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire [1:0]state__0;

  LUT6 #(
    .INIT(64'hFFFFFFFF2AAAFFFF)) 
    \FSM_sequential_state[0]_i_1__1 
       (.I0(state__0[0]),
        .I1(m_axis_tx_TREADY_int_regslice),
        .I2(Q[1]),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(state__0[1]),
        .I5(m_axis_tx_TREADY),
        .O(next__0[0]));
  LUT6 #(
    .INIT(64'hF2222222AAAAAAAA)) 
    \FSM_sequential_state[1]_i_1__1 
       (.I0(state__0[1]),
        .I1(m_axis_tx_TREADY),
        .I2(m_axis_tx_TREADY_int_regslice),
        .I3(Q[1]),
        .I4(ap_enable_reg_pp0_iter1),
        .I5(state__0[0]),
        .O(next__0[1]));
  (* FSM_ENCODED_STATES = "ZERO:01,TWO:10,ONE:11,iSTATE:00" *) 
  FDSE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(next__0[0]),
        .Q(state__0[0]),
        .S(SR));
  (* FSM_ENCODED_STATES = "ZERO:01,TWO:10,ONE:11,iSTATE:00" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(next__0[1]),
        .Q(state__0[1]),
        .R(SR));
  LUT6 #(
    .INIT(64'hAA2AFFFFFFAAAAAA)) 
    ack_in_t_i_1
       (.I0(m_axis_tx_TREADY_int_regslice),
        .I1(Q[1]),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(m_axis_tx_TREADY),
        .I4(state__0[1]),
        .I5(state__0[0]),
        .O(ack_in_t_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ack_in_t_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ack_in_t_i_1_n_0),
        .Q(m_axis_tx_TREADY_int_regslice),
        .R(SR));
  LUT6 #(
    .INIT(64'hF4F444F444F444F4)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(ap_start),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(state__0[1]),
        .I4(m_axis_tx_TREADY),
        .I5(state__0[0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h000020200000FF00)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(m_axis_tx_TREADY_int_regslice),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(ap_enable_reg_pp0_iter2_reg_0),
        .I3(\FSM_sequential_state_reg[0]_0 ),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h2220)) 
    ap_block_pp0_stage0_subdone_grp5_done_reg_i_1
       (.I0(ap_rst_n),
        .I1(m_axis_tx_TREADY_int_regslice),
        .I2(ap_enable_reg_pp0_iter2_reg_0),
        .I3(ap_enable_reg_pp0_iter1),
        .O(ap_rst_n_1));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hF1)) 
    ap_enable_reg_pp0_iter0_i_3
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(ap_enable_reg_pp0_iter2_reg_0),
        .I2(m_axis_tx_TREADY_int_regslice),
        .O(ap_block_pp0_stage0_11001));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hAACE)) 
    ap_enable_reg_pp0_iter1_i_1
       (.I0(ap_enable_reg_pp0_iter0),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(ap_enable_reg_pp0_iter2_reg_0),
        .I3(m_axis_tx_TREADY_int_regslice),
        .O(ap_enable_reg_pp0_iter0_reg));
  LUT6 #(
    .INIT(64'h880088A088A088A0)) 
    ap_enable_reg_pp0_iter2_i_1
       (.I0(ap_rst_n),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(ap_enable_reg_pp0_iter2_reg_0),
        .I3(m_axis_tx_TREADY_int_regslice),
        .I4(Q[0]),
        .I5(ap_start),
        .O(ap_rst_n_0));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[0]_i_1 
       (.I0(\data_p2_reg[31]_0 [0]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2_reg_n_0_[0] ),
        .O(\data_p1[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[10]_i_1 
       (.I0(\data_p2_reg[31]_0 [10]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2_reg_n_0_[10] ),
        .O(\data_p1[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[11]_i_1 
       (.I0(\data_p2_reg[31]_0 [11]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2_reg_n_0_[11] ),
        .O(\data_p1[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[12]_i_1 
       (.I0(\data_p2_reg[31]_0 [12]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2_reg_n_0_[12] ),
        .O(\data_p1[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[13]_i_1 
       (.I0(\data_p2_reg[31]_0 [13]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2_reg_n_0_[13] ),
        .O(\data_p1[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[15]_i_1 
       (.I0(\data_p2_reg[31]_0 [14]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2_reg_n_0_[15] ),
        .O(\data_p1[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[16]_i_1 
       (.I0(\data_p2_reg[31]_0 [15]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2_reg_n_0_[16] ),
        .O(\data_p1[16]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[17]_i_1 
       (.I0(\data_p2_reg[31]_0 [16]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2_reg_n_0_[17] ),
        .O(\data_p1[17]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[18]_i_1 
       (.I0(\data_p2_reg[31]_0 [17]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2_reg_n_0_[18] ),
        .O(\data_p1[18]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[19]_i_1 
       (.I0(\data_p2_reg[31]_0 [18]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2_reg_n_0_[19] ),
        .O(\data_p1[19]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[1]_i_1 
       (.I0(\data_p2_reg[31]_0 [1]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2_reg_n_0_[1] ),
        .O(\data_p1[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[20]_i_1 
       (.I0(\data_p2_reg[31]_0 [19]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2_reg_n_0_[20] ),
        .O(\data_p1[20]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[21]_i_1 
       (.I0(\data_p2_reg[31]_0 [20]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2_reg_n_0_[21] ),
        .O(\data_p1[21]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[22]_i_1 
       (.I0(\data_p2_reg[31]_0 [21]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2_reg_n_0_[22] ),
        .O(\data_p1[22]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[23]_i_1 
       (.I0(\data_p2_reg[31]_0 [22]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2_reg_n_0_[23] ),
        .O(\data_p1[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[24]_i_1 
       (.I0(\data_p2_reg[31]_0 [23]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2_reg_n_0_[24] ),
        .O(\data_p1[24]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[25]_i_1 
       (.I0(\data_p2_reg[31]_0 [24]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2_reg_n_0_[25] ),
        .O(\data_p1[25]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[26]_i_1 
       (.I0(\data_p2_reg[31]_0 [25]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2_reg_n_0_[26] ),
        .O(\data_p1[26]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[27]_i_1 
       (.I0(\data_p2_reg[31]_0 [26]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2_reg_n_0_[27] ),
        .O(\data_p1[27]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[28]_i_1 
       (.I0(\data_p2_reg[31]_0 [27]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2_reg_n_0_[28] ),
        .O(\data_p1[28]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[29]_i_1 
       (.I0(\data_p2_reg[31]_0 [28]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2_reg_n_0_[29] ),
        .O(\data_p1[29]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[2]_i_1 
       (.I0(\data_p2_reg[31]_0 [2]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2_reg_n_0_[2] ),
        .O(\data_p1[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h80FF800000008000)) 
    \data_p1[31]_i_1 
       (.I0(m_axis_tx_TREADY_int_regslice),
        .I1(Q[1]),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(state__0[0]),
        .I4(state__0[1]),
        .I5(m_axis_tx_TREADY),
        .O(load_p1));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[31]_i_2 
       (.I0(\data_p2_reg[31]_0 [29]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2_reg_n_0_[31] ),
        .O(\data_p1[31]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[3]_i_1 
       (.I0(\data_p2_reg[31]_0 [3]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2_reg_n_0_[3] ),
        .O(\data_p1[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[4]_i_1 
       (.I0(\data_p2_reg[31]_0 [4]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2_reg_n_0_[4] ),
        .O(\data_p1[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[5]_i_1 
       (.I0(\data_p2_reg[31]_0 [5]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2_reg_n_0_[5] ),
        .O(\data_p1[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[6]_i_1 
       (.I0(\data_p2_reg[31]_0 [6]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2_reg_n_0_[6] ),
        .O(\data_p1[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[7]_i_1 
       (.I0(\data_p2_reg[31]_0 [7]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2_reg_n_0_[7] ),
        .O(\data_p1[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[8]_i_1 
       (.I0(\data_p2_reg[31]_0 [8]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2_reg_n_0_[8] ),
        .O(\data_p1[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[9]_i_1 
       (.I0(\data_p2_reg[31]_0 [9]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2_reg_n_0_[9] ),
        .O(\data_p1[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[0] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[0]_i_1_n_0 ),
        .Q(m_axis_tx_TDATA[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[10] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[10]_i_1_n_0 ),
        .Q(m_axis_tx_TDATA[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[11] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[11]_i_1_n_0 ),
        .Q(m_axis_tx_TDATA[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[12] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[12]_i_1_n_0 ),
        .Q(m_axis_tx_TDATA[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[13] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[13]_i_1_n_0 ),
        .Q(m_axis_tx_TDATA[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[15] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[15]_i_1_n_0 ),
        .Q(m_axis_tx_TDATA[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[16] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[16]_i_1_n_0 ),
        .Q(m_axis_tx_TDATA[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[17] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[17]_i_1_n_0 ),
        .Q(m_axis_tx_TDATA[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[18] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[18]_i_1_n_0 ),
        .Q(m_axis_tx_TDATA[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[19] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[19]_i_1_n_0 ),
        .Q(m_axis_tx_TDATA[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[1] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[1]_i_1_n_0 ),
        .Q(m_axis_tx_TDATA[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[20] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[20]_i_1_n_0 ),
        .Q(m_axis_tx_TDATA[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[21] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[21]_i_1_n_0 ),
        .Q(m_axis_tx_TDATA[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[22] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[22]_i_1_n_0 ),
        .Q(m_axis_tx_TDATA[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[23] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[23]_i_1_n_0 ),
        .Q(m_axis_tx_TDATA[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[24] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[24]_i_1_n_0 ),
        .Q(m_axis_tx_TDATA[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[25] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[25]_i_1_n_0 ),
        .Q(m_axis_tx_TDATA[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[26] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[26]_i_1_n_0 ),
        .Q(m_axis_tx_TDATA[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[27] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[27]_i_1_n_0 ),
        .Q(m_axis_tx_TDATA[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[28] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[28]_i_1_n_0 ),
        .Q(m_axis_tx_TDATA[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[29] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[29]_i_1_n_0 ),
        .Q(m_axis_tx_TDATA[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[2] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[2]_i_1_n_0 ),
        .Q(m_axis_tx_TDATA[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[31] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[31]_i_2_n_0 ),
        .Q(m_axis_tx_TDATA[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[3] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[3]_i_1_n_0 ),
        .Q(m_axis_tx_TDATA[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[4] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[4]_i_1_n_0 ),
        .Q(m_axis_tx_TDATA[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[5] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[5]_i_1_n_0 ),
        .Q(m_axis_tx_TDATA[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[6] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[6]_i_1_n_0 ),
        .Q(m_axis_tx_TDATA[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[7] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[7]_i_1_n_0 ),
        .Q(m_axis_tx_TDATA[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[8] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[8]_i_1_n_0 ),
        .Q(m_axis_tx_TDATA[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[9] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[9]_i_1_n_0 ),
        .Q(m_axis_tx_TDATA[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[0] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter1_reg),
        .D(\data_p2_reg[31]_0 [0]),
        .Q(\data_p2_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[10] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter1_reg),
        .D(\data_p2_reg[31]_0 [10]),
        .Q(\data_p2_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[11] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter1_reg),
        .D(\data_p2_reg[31]_0 [11]),
        .Q(\data_p2_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[12] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter1_reg),
        .D(\data_p2_reg[31]_0 [12]),
        .Q(\data_p2_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[13] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter1_reg),
        .D(\data_p2_reg[31]_0 [13]),
        .Q(\data_p2_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[15] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter1_reg),
        .D(\data_p2_reg[31]_0 [14]),
        .Q(\data_p2_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[16] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter1_reg),
        .D(\data_p2_reg[31]_0 [15]),
        .Q(\data_p2_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[17] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter1_reg),
        .D(\data_p2_reg[31]_0 [16]),
        .Q(\data_p2_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[18] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter1_reg),
        .D(\data_p2_reg[31]_0 [17]),
        .Q(\data_p2_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[19] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter1_reg),
        .D(\data_p2_reg[31]_0 [18]),
        .Q(\data_p2_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[1] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter1_reg),
        .D(\data_p2_reg[31]_0 [1]),
        .Q(\data_p2_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[20] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter1_reg),
        .D(\data_p2_reg[31]_0 [19]),
        .Q(\data_p2_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[21] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter1_reg),
        .D(\data_p2_reg[31]_0 [20]),
        .Q(\data_p2_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[22] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter1_reg),
        .D(\data_p2_reg[31]_0 [21]),
        .Q(\data_p2_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[23] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter1_reg),
        .D(\data_p2_reg[31]_0 [22]),
        .Q(\data_p2_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[24] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter1_reg),
        .D(\data_p2_reg[31]_0 [23]),
        .Q(\data_p2_reg_n_0_[24] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[25] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter1_reg),
        .D(\data_p2_reg[31]_0 [24]),
        .Q(\data_p2_reg_n_0_[25] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[26] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter1_reg),
        .D(\data_p2_reg[31]_0 [25]),
        .Q(\data_p2_reg_n_0_[26] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[27] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter1_reg),
        .D(\data_p2_reg[31]_0 [26]),
        .Q(\data_p2_reg_n_0_[27] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[28] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter1_reg),
        .D(\data_p2_reg[31]_0 [27]),
        .Q(\data_p2_reg_n_0_[28] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[29] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter1_reg),
        .D(\data_p2_reg[31]_0 [28]),
        .Q(\data_p2_reg_n_0_[29] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[2] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter1_reg),
        .D(\data_p2_reg[31]_0 [2]),
        .Q(\data_p2_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[31] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter1_reg),
        .D(\data_p2_reg[31]_0 [29]),
        .Q(\data_p2_reg_n_0_[31] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[3] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter1_reg),
        .D(\data_p2_reg[31]_0 [3]),
        .Q(\data_p2_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[4] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter1_reg),
        .D(\data_p2_reg[31]_0 [4]),
        .Q(\data_p2_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[5] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter1_reg),
        .D(\data_p2_reg[31]_0 [5]),
        .Q(\data_p2_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[6] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter1_reg),
        .D(\data_p2_reg[31]_0 [6]),
        .Q(\data_p2_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[7] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter1_reg),
        .D(\data_p2_reg[31]_0 [7]),
        .Q(\data_p2_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[8] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter1_reg),
        .D(\data_p2_reg[31]_0 [8]),
        .Q(\data_p2_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[9] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter1_reg),
        .D(\data_p2_reg[31]_0 [9]),
        .Q(\data_p2_reg_n_0_[9] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h4FCF0000)) 
    \dbg_chirp_end[0]_INST_0 
       (.I0(m_axis_tx_TREADY),
        .I1(state__0[1]),
        .I2(Q[2]),
        .I3(state__0[0]),
        .I4(icmp_ln95_reg_483),
        .O(dbg_chirp_end));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hA222FFFF)) 
    dbg_chirp_end_ap_vld_INST_0
       (.I0(Q[2]),
        .I1(state__0[1]),
        .I2(m_axis_tx_TREADY),
        .I3(state__0[0]),
        .I4(ack_in_t_reg_0),
        .O(dbg_tx_active_ap_vld));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    dbg_chirp_end_ap_vld_INST_0_i_1
       (.I0(m_axis_tx_TREADY_int_regslice),
        .I1(Q[1]),
        .I2(ap_enable_reg_pp0_iter1),
        .O(ack_in_t_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h4FCF0000)) 
    \dbg_chirp_start[0]_INST_0 
       (.I0(m_axis_tx_TREADY),
        .I1(state__0[1]),
        .I2(Q[2]),
        .I3(state__0[0]),
        .I4(first_iter_0_reg_473),
        .O(dbg_chirp_start));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \dbg_enable[0]_INST_0 
       (.I0(dbg_enable_ap_vld_0),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(Q[1]),
        .I3(\FSM_sequential_state_reg[0]_0 ),
        .O(dbg_enable));
  LUT3 #(
    .INIT(8'h80)) 
    dbg_sample_count_ap_vld_INST_0
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(Q[1]),
        .I2(m_axis_tx_TREADY_int_regslice),
        .O(ap_enable_reg_pp0_iter1_reg));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h73F3)) 
    \dbg_state[0]_INST_0 
       (.I0(state__0[0]),
        .I1(Q[2]),
        .I2(state__0[1]),
        .I3(m_axis_tx_TREADY),
        .O(\FSM_sequential_state_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFF40)) 
    dbg_state_ap_vld_INST_0
       (.I0(dbg_enable_ap_vld_0),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(Q[1]),
        .I3(ap_done),
        .O(dbg_enable_ap_vld));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h8F00)) 
    dbg_state_ap_vld_INST_0_i_1
       (.I0(state__0[0]),
        .I1(m_axis_tx_TREADY),
        .I2(state__0[1]),
        .I3(Q[2]),
        .O(ap_done));
  LUT6 #(
    .INIT(64'h10101010000000F0)) 
    \dbg_tx_active[0]_INST_0 
       (.I0(\dbg_tx_active[3] [1]),
        .I1(\dbg_tx_active[3] [0]),
        .I2(\FSM_sequential_state_reg[0]_0 ),
        .I3(\dbg_tx_active[3]_0 [1]),
        .I4(\dbg_tx_active[3]_0 [0]),
        .I5(\icmp_ln755_reg_248_reg[0]_0 ),
        .O(dbg_tx_active[0]));
  LUT6 #(
    .INIT(64'h404F404000000000)) 
    \dbg_tx_active[1]_INST_0 
       (.I0(\dbg_tx_active[3] [1]),
        .I1(\dbg_tx_active[3] [0]),
        .I2(\icmp_ln755_reg_248_reg[0]_0 ),
        .I3(\dbg_tx_active[3]_0 [1]),
        .I4(\dbg_tx_active[3]_0 [0]),
        .I5(\FSM_sequential_state_reg[0]_0 ),
        .O(dbg_tx_active[1]));
  LUT6 #(
    .INIT(64'h404F404000000000)) 
    \dbg_tx_active[2]_INST_0 
       (.I0(\dbg_tx_active[3] [0]),
        .I1(\dbg_tx_active[3] [1]),
        .I2(\icmp_ln755_reg_248_reg[0]_0 ),
        .I3(\dbg_tx_active[3]_0 [0]),
        .I4(\dbg_tx_active[3]_0 [1]),
        .I5(\FSM_sequential_state_reg[0]_0 ),
        .O(dbg_tx_active[2]));
  LUT6 #(
    .INIT(64'h80808080F0000000)) 
    \dbg_tx_active[3]_INST_0 
       (.I0(\dbg_tx_active[3] [0]),
        .I1(\dbg_tx_active[3] [1]),
        .I2(\FSM_sequential_state_reg[0]_0 ),
        .I3(\dbg_tx_active[3]_0 [0]),
        .I4(\dbg_tx_active[3]_0 [1]),
        .I5(\icmp_ln755_reg_248_reg[0]_0 ),
        .O(dbg_tx_active[3]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAEA)) 
    \first_iter_0_reg_473[0]_i_1 
       (.I0(\first_iter_0_reg_473[0]_i_2_n_0 ),
        .I1(p_13_in),
        .I2(\first_iter_0_reg_473[0]_i_3_n_0 ),
        .I3(\first_iter_0_reg_473_reg[0] [0]),
        .I4(\first_iter_0_reg_473_reg[0] [1]),
        .I5(\first_iter_0_reg_473_reg[0] [2]),
        .O(\sample4_fu_132_reg[0] ));
  LUT6 #(
    .INIT(64'hFFAAE2AAC0AAE2AA)) 
    \first_iter_0_reg_473[0]_i_2 
       (.I0(first_iter_0_reg_473),
        .I1(\first_iter_0_reg_473[0]_i_4_n_0 ),
        .I2(\icmp_ln755_reg_248_reg[0]_0 ),
        .I3(Q[1]),
        .I4(m_axis_tx_TREADY_int_regslice),
        .I5(\icmp_ln95_reg_483[0]_i_2_n_0 ),
        .O(\first_iter_0_reg_473[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \first_iter_0_reg_473[0]_i_3 
       (.I0(\first_iter_0_reg_473_reg[0] [7]),
        .I1(\first_iter_0_reg_473_reg[0] [8]),
        .I2(\first_iter_0_reg_473_reg[0] [9]),
        .I3(\first_iter_0_reg_473_reg[0] [10]),
        .I4(\first_iter_0_reg_473[0]_i_5_n_0 ),
        .O(\first_iter_0_reg_473[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \first_iter_0_reg_473[0]_i_4 
       (.I0(ap_enable_reg_pp0_iter2_reg_0),
        .I1(ap_enable_reg_pp0_iter1),
        .O(\first_iter_0_reg_473[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \first_iter_0_reg_473[0]_i_5 
       (.I0(\first_iter_0_reg_473_reg[0] [6]),
        .I1(\first_iter_0_reg_473_reg[0] [5]),
        .I2(\first_iter_0_reg_473_reg[0] [4]),
        .I3(\first_iter_0_reg_473_reg[0] [3]),
        .O(\first_iter_0_reg_473[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h55FDFFFF55010000)) 
    \icmp_ln63_reg_499[0]_i_1 
       (.I0(\icmp_ln63_reg_499_reg[0] ),
        .I1(ap_enable_reg_pp0_iter2_reg_0),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(m_axis_tx_TREADY_int_regslice),
        .I4(Q[1]),
        .I5(icmp_ln63_reg_499),
        .O(ap_enable_reg_pp0_iter2_reg));
  LUT6 #(
    .INIT(64'hFFFB000800080008)) 
    \icmp_ln755_reg_248[0]_i_1 
       (.I0(icmp_ln75_reg_494),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(icmp_ln63_reg_499),
        .I3(\icmp_ln755_reg_248[0]_i_2_n_0 ),
        .I4(\icmp_ln755_reg_248_reg[0]_0 ),
        .I5(\icmp_ln755_reg_248_reg[0]_1 ),
        .O(\icmp_ln75_reg_494_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \icmp_ln755_reg_248[0]_i_2 
       (.I0(Q[1]),
        .I1(m_axis_tx_TREADY_int_regslice),
        .O(\icmp_ln755_reg_248[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \icmp_ln75_reg_494[0]_i_1 
       (.I0(\icmp_ln75_reg_494[0]_i_2_n_0 ),
        .I1(\icmp_ln755_reg_248_reg[0] ),
        .I2(E),
        .I3(icmp_ln75_reg_494),
        .O(\icmp_ln75_reg_494_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \icmp_ln75_reg_494[0]_i_2 
       (.I0(\first_iter_0_reg_473_reg[0] [9]),
        .I1(\first_iter_0_reg_473_reg[0] [7]),
        .I2(\sample4_fu_132_reg[4] ),
        .I3(\first_iter_0_reg_473_reg[0] [6]),
        .I4(\first_iter_0_reg_473_reg[0] [8]),
        .I5(\first_iter_0_reg_473_reg[0] [10]),
        .O(\icmp_ln75_reg_494[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF2222222F2222)) 
    \icmp_ln95_reg_483[0]_i_1 
       (.I0(icmp_ln95_reg_483),
        .I1(p_13_in),
        .I2(\icmp_ln755_reg_248[0]_i_2_n_0 ),
        .I3(\icmp_ln95_reg_483[0]_i_2_n_0 ),
        .I4(\icmp_ln75_reg_494[0]_i_2_n_0 ),
        .I5(\icmp_ln95_reg_483[0]_i_3_n_0 ),
        .O(\icmp_ln95_reg_483_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \icmp_ln95_reg_483[0]_i_2 
       (.I0(\icmp_ln755_reg_248_reg[0]_0 ),
        .I1(icmp_ln63_reg_499),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(icmp_ln75_reg_494),
        .O(\icmp_ln95_reg_483[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \icmp_ln95_reg_483[0]_i_3 
       (.I0(\icmp_ln755_reg_248_reg[0]_0 ),
        .I1(Q[1]),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(ap_enable_reg_pp0_iter2_reg_0),
        .O(\icmp_ln95_reg_483[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h888A0000)) 
    q0_reg_i_1
       (.I0(Q[1]),
        .I1(m_axis_tx_TREADY_int_regslice),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(ap_enable_reg_pp0_iter2_reg_0),
        .I4(ap_enable_reg_pp0_iter0),
        .O(E));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \sample4_fu_132[9]_i_2 
       (.I0(\first_iter_0_reg_473_reg[0] [4]),
        .I1(\first_iter_0_reg_473_reg[0] [2]),
        .I2(\first_iter_0_reg_473_reg[0] [0]),
        .I3(\first_iter_0_reg_473_reg[0] [1]),
        .I4(\first_iter_0_reg_473_reg[0] [3]),
        .I5(\first_iter_0_reg_473_reg[0] [5]),
        .O(\sample4_fu_132_reg[4] ));
  LUT6 #(
    .INIT(64'hF2222222AAAAAAAA)) 
    \state[0]_i_2 
       (.I0(m_axis_tx_TVALID),
        .I1(m_axis_tx_TREADY),
        .I2(m_axis_tx_TREADY_int_regslice),
        .I3(Q[1]),
        .I4(ap_enable_reg_pp0_iter1),
        .I5(state),
        .O(\state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF2AAAFFFFFFFF)) 
    \state[1]_i_1 
       (.I0(state),
        .I1(m_axis_tx_TREADY_int_regslice),
        .I2(Q[1]),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(m_axis_tx_TREADY),
        .I5(m_axis_tx_TVALID),
        .O(\state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\state[0]_i_2_n_0 ),
        .Q(m_axis_tx_TVALID),
        .R(SR));
  FDSE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(state),
        .S(SR));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h0000888A)) 
    \trunc_ln111_reg_489[9]_i_1 
       (.I0(Q[1]),
        .I1(m_axis_tx_TREADY_int_regslice),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(ap_enable_reg_pp0_iter2_reg_0),
        .I4(\icmp_ln755_reg_248_reg[0] ),
        .O(\ap_CS_fsm_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hF100)) 
    \trunc_ln111_reg_489[9]_i_2 
       (.I0(ap_enable_reg_pp0_iter2_reg_0),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(m_axis_tx_TREADY_int_regslice),
        .I3(Q[1]),
        .O(p_13_in));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h51555D55)) 
    \trunc_ln111_reg_489[9]_i_3 
       (.I0(\icmp_ln755_reg_248_reg[0]_0 ),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(icmp_ln63_reg_499),
        .I3(Q[1]),
        .I4(icmp_ln75_reg_494),
        .O(\icmp_ln755_reg_248_reg[0] ));
endmodule

(* ORIG_REF_NAME = "lfm_tdm_gen_regslice_both" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen_regslice_both__parameterized0
   (m_axis_tx_TSTRB,
    SR,
    ap_clk,
    m_axis_tx_TREADY_int_regslice,
    Q,
    ap_enable_reg_pp0_iter1,
    m_axis_tx_TREADY,
    \data_p1_reg[3]_0 );
  output [0:0]m_axis_tx_TSTRB;
  input [0:0]SR;
  input ap_clk;
  input m_axis_tx_TREADY_int_regslice;
  input [0:0]Q;
  input ap_enable_reg_pp0_iter1;
  input m_axis_tx_TREADY;
  input \data_p1_reg[3]_0 ;

  wire [0:0]Q;
  wire [0:0]SR;
  wire ack_in_t_i_1__0_n_0;
  wire ack_in_t_reg_n_0;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1;
  wire \data_p1[3]_i_1_n_0 ;
  wire \data_p1_reg[3]_0 ;
  wire [3:3]data_p2;
  wire \data_p2[3]_i_1_n_0 ;
  wire m_axis_tx_TREADY;
  wire m_axis_tx_TREADY_int_regslice;
  wire [0:0]m_axis_tx_TSTRB;
  wire [1:0]next__0;
  wire [1:0]state__0;

  LUT6 #(
    .INIT(64'hFFFFFFFF7F00FFFF)) 
    \FSM_sequential_state[0]_i_1__0 
       (.I0(m_axis_tx_TREADY_int_regslice),
        .I1(Q),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(state__0[0]),
        .I4(state__0[1]),
        .I5(m_axis_tx_TREADY),
        .O(next__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h5F40FF40)) 
    \FSM_sequential_state[1]_i_1__0 
       (.I0(\data_p1_reg[3]_0 ),
        .I1(ack_in_t_reg_n_0),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(m_axis_tx_TREADY),
        .O(next__0[1]));
  (* FSM_ENCODED_STATES = "ZERO:01,TWO:10,ONE:11,iSTATE:00" *) 
  FDSE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(next__0[0]),
        .Q(state__0[0]),
        .S(SR));
  (* FSM_ENCODED_STATES = "ZERO:01,TWO:10,ONE:11,iSTATE:00" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(next__0[1]),
        .Q(state__0[1]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hEFFF0FC0)) 
    ack_in_t_i_1__0
       (.I0(\data_p1_reg[3]_0 ),
        .I1(m_axis_tx_TREADY),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .I4(ack_in_t_reg_n_0),
        .O(ack_in_t_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ack_in_t_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ack_in_t_i_1__0_n_0),
        .Q(ack_in_t_reg_n_0),
        .R(SR));
  LUT6 #(
    .INIT(64'hFAFFFFFF3A300030)) 
    \data_p1[3]_i_1 
       (.I0(data_p2),
        .I1(\data_p1_reg[3]_0 ),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(m_axis_tx_TREADY),
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
  LUT5 #(
    .INIT(32'hFFFF8000)) 
    \data_p2[3]_i_1 
       (.I0(m_axis_tx_TREADY_int_regslice),
        .I1(Q),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(ack_in_t_reg_n_0),
        .I4(data_p2),
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen_regslice_both__parameterized1
   (m_axis_tx_TLAST,
    SR,
    ap_clk,
    m_axis_tx_TREADY_int_regslice,
    Q,
    ap_enable_reg_pp0_iter1,
    m_axis_tx_TREADY,
    ack_in_t_reg_0,
    \data_p1_reg[0]_0 ,
    \data_p1_reg[0]_1 ,
    \data_p1_reg[0]_2 ,
    icmp_ln95_reg_483);
  output [0:0]m_axis_tx_TLAST;
  input [0:0]SR;
  input ap_clk;
  input m_axis_tx_TREADY_int_regslice;
  input [0:0]Q;
  input ap_enable_reg_pp0_iter1;
  input m_axis_tx_TREADY;
  input ack_in_t_reg_0;
  input [2:0]\data_p1_reg[0]_0 ;
  input \data_p1_reg[0]_1 ;
  input [2:0]\data_p1_reg[0]_2 ;
  input icmp_ln95_reg_483;

  wire [0:0]Q;
  wire [0:0]SR;
  wire ack_in_t_i_1__1_n_0;
  wire ack_in_t_reg_0;
  wire ack_in_t_reg_n_0;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1;
  wire \data_p1[0]_i_1__0_n_0 ;
  wire \data_p1[0]_i_2_n_0 ;
  wire \data_p1[0]_i_3_n_0 ;
  wire \data_p1[0]_i_5_n_0 ;
  wire [2:0]\data_p1_reg[0]_0 ;
  wire \data_p1_reg[0]_1 ;
  wire [2:0]\data_p1_reg[0]_2 ;
  wire data_p2;
  wire \data_p2[0]_i_1_n_0 ;
  wire icmp_ln95_reg_483;
  wire load_p1;
  wire [0:0]m_axis_tx_TLAST;
  wire m_axis_tx_TREADY;
  wire m_axis_tx_TREADY_int_regslice;
  wire [1:0]next__0;
  wire [1:0]state__0;

  LUT6 #(
    .INIT(64'hFFFFFFFF7F00FFFF)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(m_axis_tx_TREADY_int_regslice),
        .I1(Q),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(state__0[0]),
        .I4(state__0[1]),
        .I5(m_axis_tx_TREADY),
        .O(next__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h5F40FF40)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(ack_in_t_reg_0),
        .I1(ack_in_t_reg_n_0),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(m_axis_tx_TREADY),
        .O(next__0[1]));
  (* FSM_ENCODED_STATES = "ZERO:01,TWO:10,ONE:11,iSTATE:00" *) 
  FDSE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(next__0[0]),
        .Q(state__0[0]),
        .S(SR));
  (* FSM_ENCODED_STATES = "ZERO:01,TWO:10,ONE:11,iSTATE:00" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(next__0[1]),
        .Q(state__0[1]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hEFFF0FC0)) 
    ack_in_t_i_1__1
       (.I0(ack_in_t_reg_0),
        .I1(m_axis_tx_TREADY),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .I4(ack_in_t_reg_n_0),
        .O(ack_in_t_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ack_in_t_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ack_in_t_i_1__1_n_0),
        .Q(ack_in_t_reg_n_0),
        .R(SR));
  LUT6 #(
    .INIT(64'hCA0AFFFFCA0A0000)) 
    \data_p1[0]_i_1__0 
       (.I0(data_p2),
        .I1(\data_p1[0]_i_2_n_0 ),
        .I2(\data_p1[0]_i_3_n_0 ),
        .I3(icmp_ln95_reg_483),
        .I4(load_p1),
        .I5(m_axis_tx_TLAST),
        .O(\data_p1[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h08080000080800FF)) 
    \data_p1[0]_i_2 
       (.I0(\data_p1_reg[0]_0 [1]),
        .I1(\data_p1_reg[0]_0 [0]),
        .I2(\data_p1_reg[0]_0 [2]),
        .I3(\data_p1[0]_i_5_n_0 ),
        .I4(\data_p1_reg[0]_1 ),
        .I5(\data_p1_reg[0]_2 [2]),
        .O(\data_p1[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \data_p1[0]_i_3 
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .O(\data_p1[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h80FF800000008000)) 
    \data_p1[0]_i_4 
       (.I0(m_axis_tx_TREADY_int_regslice),
        .I1(Q),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(state__0[0]),
        .I4(state__0[1]),
        .I5(m_axis_tx_TREADY),
        .O(load_p1));
  LUT2 #(
    .INIT(4'h7)) 
    \data_p1[0]_i_5 
       (.I0(\data_p1_reg[0]_2 [1]),
        .I1(\data_p1_reg[0]_2 [0]),
        .O(\data_p1[0]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\data_p1[0]_i_1__0_n_0 ),
        .Q(m_axis_tx_TLAST),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFF8F0080)) 
    \data_p2[0]_i_1 
       (.I0(\data_p1[0]_i_2_n_0 ),
        .I1(icmp_ln95_reg_483),
        .I2(ack_in_t_reg_n_0),
        .I3(ack_in_t_reg_0),
        .I4(data_p2),
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
