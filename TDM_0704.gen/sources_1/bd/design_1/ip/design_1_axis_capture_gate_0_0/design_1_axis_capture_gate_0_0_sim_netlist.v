// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Wed Jul 22 14:55:24 2026
// Host        : JohnsonKu running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/TDM_0704/TDM_0704/TDM_0704.gen/sources_1/bd/design_1/ip/design_1_axis_capture_gate_0_0/design_1_axis_capture_gate_0_0_sim_netlist.v
// Design      : design_1_axis_capture_gate_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu48dr-fsvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_axis_capture_gate_0_0,axis_capture_gate,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "axis_capture_gate,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module design_1_axis_capture_gate_0_0
   (aclk,
    aresetn,
    capture_arm,
    dbg_chirp_start,
    dbg_chirp_start_ap_vld,
    dbg_tx_sel,
    dbg_tx_sel_ap_vld,
    s_axis_tdata,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tlast,
    m_axis_tdata,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tlast,
    frame_start_event,
    capture_active,
    capture_done);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  input capture_arm;
  input dbg_chirp_start;
  input dbg_chirp_start_ap_vld;
  input [1:0]dbg_tx_sel;
  input dbg_tx_sel_ap_vld;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 99999001, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0" *) input [31:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) output s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TLAST" *) input s_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 99999001, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [31:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) output m_axis_tlast;
  output frame_start_event;
  output capture_active;
  output capture_done;

  wire aclk;
  wire aresetn;
  wire capture_active;
  wire capture_arm;
  wire capture_done;
  wire dbg_chirp_start;
  wire dbg_chirp_start_ap_vld;
  wire [1:0]dbg_tx_sel;
  wire dbg_tx_sel_ap_vld;
  wire frame_start_event;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [31:0]s_axis_tdata;
  wire s_axis_tready;
  wire s_axis_tvalid;

  assign m_axis_tdata[31:0] = s_axis_tdata;
  LUT5 #(
    .INIT(32'h00000080)) 
    frame_start_event_INST_0
       (.I0(dbg_chirp_start),
        .I1(dbg_tx_sel_ap_vld),
        .I2(dbg_chirp_start_ap_vld),
        .I3(dbg_tx_sel[1]),
        .I4(dbg_tx_sel[0]),
        .O(frame_start_event));
  design_1_axis_capture_gate_0_0_axis_capture_gate inst
       (.Q({capture_done,capture_active}),
        .aclk(aclk),
        .aresetn(aresetn),
        .capture_arm(capture_arm),
        .dbg_chirp_start(dbg_chirp_start),
        .dbg_chirp_start_ap_vld(dbg_chirp_start_ap_vld),
        .dbg_tx_sel(dbg_tx_sel),
        .dbg_tx_sel_ap_vld(dbg_tx_sel_ap_vld),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "axis_capture_gate" *) 
module design_1_axis_capture_gate_0_0_axis_capture_gate
   (m_axis_tvalid,
    Q,
    m_axis_tlast,
    s_axis_tready,
    s_axis_tvalid,
    capture_arm,
    m_axis_tready,
    dbg_chirp_start_ap_vld,
    dbg_tx_sel,
    dbg_chirp_start,
    dbg_tx_sel_ap_vld,
    aresetn,
    aclk);
  output m_axis_tvalid;
  output [1:0]Q;
  output m_axis_tlast;
  output s_axis_tready;
  input s_axis_tvalid;
  input capture_arm;
  input m_axis_tready;
  input dbg_chirp_start_ap_vld;
  input [1:0]dbg_tx_sel;
  input dbg_chirp_start;
  input dbg_tx_sel_ap_vld;
  input aresetn;
  input aclk;

  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_2_n_0 ;
  wire \FSM_onehot_state[2]_i_3_n_0 ;
  wire \FSM_onehot_state[2]_i_4_n_0 ;
  wire \FSM_onehot_state[2]_i_5_n_0 ;
  wire \FSM_onehot_state[2]_i_6_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire [1:0]Q;
  wire aclk;
  wire aresetn;
  wire capture_arm;
  wire dbg_chirp_start;
  wire dbg_chirp_start_ap_vld;
  wire [1:0]dbg_tx_sel;
  wire dbg_tx_sel_ap_vld;
  wire m_axis_tlast;
  wire m_axis_tlast_INST_0_i_1_n_0;
  wire m_axis_tlast_INST_0_i_2_n_0;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire [11:0]sample_count;
  wire \sample_count[0]_i_1_n_0 ;
  wire \sample_count[10]_i_1_n_0 ;
  wire \sample_count[10]_i_2_n_0 ;
  wire \sample_count[11]_i_2_n_0 ;
  wire \sample_count[11]_i_3_n_0 ;
  wire \sample_count[1]_i_1_n_0 ;
  wire \sample_count[2]_i_1_n_0 ;
  wire \sample_count[3]_i_1_n_0 ;
  wire \sample_count[4]_i_1_n_0 ;
  wire \sample_count[5]_i_1_n_0 ;
  wire \sample_count[5]_i_2_n_0 ;
  wire \sample_count[6]_i_1_n_0 ;
  wire \sample_count[7]_i_1_n_0 ;
  wire \sample_count[8]_i_1_n_0 ;
  wire \sample_count[9]_i_1_n_0 ;
  wire sample_count_0;

  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFF54)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(capture_arm),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(aresetn),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBAFFBAFFFFFFBA)) 
    \FSM_onehot_state[2]_i_2 
       (.I0(\FSM_onehot_state[2]_i_4_n_0 ),
        .I1(m_axis_tlast_INST_0_i_1_n_0),
        .I2(\FSM_onehot_state[2]_i_5_n_0 ),
        .I3(\FSM_onehot_state[2]_i_6_n_0 ),
        .I4(Q[1]),
        .I5(capture_arm),
        .O(\FSM_onehot_state[2]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[2]_i_3 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(capture_arm),
        .O(\FSM_onehot_state[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hBBB8)) 
    \FSM_onehot_state[2]_i_4 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(capture_arm),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(Q[0]),
        .O(\FSM_onehot_state[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \FSM_onehot_state[2]_i_5 
       (.I0(s_axis_tvalid),
        .I1(sample_count[11]),
        .I2(m_axis_tready),
        .I3(Q[0]),
        .O(\FSM_onehot_state[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    \FSM_onehot_state[2]_i_6 
       (.I0(dbg_chirp_start_ap_vld),
        .I1(dbg_tx_sel[0]),
        .I2(dbg_chirp_start),
        .I3(dbg_tx_sel_ap_vld),
        .I4(dbg_tx_sel[1]),
        .I5(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(capture_arm),
        .I1(Q[0]),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "ST_WAIT_TRIGGER:0010,ST_DELAY:010,ST_CAPTURE:0100,ST_DONE:1000,ST_DISARMED:0001" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(aclk),
        .CE(\FSM_onehot_state[2]_i_2_n_0 ),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(\FSM_onehot_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "ST_WAIT_TRIGGER:0010,ST_DELAY:010,ST_CAPTURE:0100,ST_DONE:1000,ST_DISARMED:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(aclk),
        .CE(\FSM_onehot_state[2]_i_2_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[0] ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .R(\FSM_onehot_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "ST_WAIT_TRIGGER:0010,ST_DELAY:010,ST_CAPTURE:0100,ST_DONE:1000,ST_DISARMED:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(aclk),
        .CE(\FSM_onehot_state[2]_i_2_n_0 ),
        .D(\FSM_onehot_state[2]_i_3_n_0 ),
        .Q(Q[0]),
        .R(\FSM_onehot_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "ST_WAIT_TRIGGER:0010,ST_DELAY:010,ST_CAPTURE:0100,ST_DONE:1000,ST_DISARMED:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(aclk),
        .CE(\FSM_onehot_state[2]_i_2_n_0 ),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(Q[1]),
        .R(\FSM_onehot_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h08)) 
    m_axis_tlast_INST_0
       (.I0(Q[0]),
        .I1(sample_count[11]),
        .I2(m_axis_tlast_INST_0_i_1_n_0),
        .O(m_axis_tlast));
  LUT6 #(
    .INIT(64'hF7FFFFFFFFFFFFFF)) 
    m_axis_tlast_INST_0_i_1
       (.I0(sample_count[9]),
        .I1(sample_count[7]),
        .I2(m_axis_tlast_INST_0_i_2_n_0),
        .I3(sample_count[6]),
        .I4(sample_count[8]),
        .I5(sample_count[10]),
        .O(m_axis_tlast_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    m_axis_tlast_INST_0_i_2
       (.I0(sample_count[4]),
        .I1(sample_count[2]),
        .I2(sample_count[0]),
        .I3(sample_count[1]),
        .I4(sample_count[3]),
        .I5(sample_count[5]),
        .O(m_axis_tlast_INST_0_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    m_axis_tvalid_INST_0
       (.I0(s_axis_tvalid),
        .I1(Q[0]),
        .O(m_axis_tvalid));
  LUT2 #(
    .INIT(4'hB)) 
    s_axis_tready_INST_0
       (.I0(m_axis_tready),
        .I1(Q[0]),
        .O(s_axis_tready));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \sample_count[0]_i_1 
       (.I0(Q[0]),
        .I1(capture_arm),
        .I2(sample_count[0]),
        .O(\sample_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8040)) 
    \sample_count[10]_i_1 
       (.I0(\sample_count[10]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(capture_arm),
        .I3(sample_count[10]),
        .O(\sample_count[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF7FFFFFF)) 
    \sample_count[10]_i_2 
       (.I0(sample_count[8]),
        .I1(sample_count[6]),
        .I2(m_axis_tlast_INST_0_i_2_n_0),
        .I3(sample_count[7]),
        .I4(sample_count[9]),
        .O(\sample_count[10]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \sample_count[11]_i_1 
       (.I0(\sample_count[11]_i_3_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .O(sample_count_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h8040)) 
    \sample_count[11]_i_2 
       (.I0(m_axis_tlast_INST_0_i_1_n_0),
        .I1(Q[0]),
        .I2(capture_arm),
        .I3(sample_count[11]),
        .O(\sample_count[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF80F0)) 
    \sample_count[11]_i_3 
       (.I0(m_axis_tready),
        .I1(s_axis_tvalid),
        .I2(Q[0]),
        .I3(capture_arm),
        .I4(Q[1]),
        .I5(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\sample_count[11]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0880)) 
    \sample_count[1]_i_1 
       (.I0(capture_arm),
        .I1(Q[0]),
        .I2(sample_count[0]),
        .I3(sample_count[1]),
        .O(\sample_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h08888000)) 
    \sample_count[2]_i_1 
       (.I0(capture_arm),
        .I1(Q[0]),
        .I2(sample_count[1]),
        .I3(sample_count[0]),
        .I4(sample_count[2]),
        .O(\sample_count[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7F00000080000000)) 
    \sample_count[3]_i_1 
       (.I0(sample_count[1]),
        .I1(sample_count[0]),
        .I2(sample_count[2]),
        .I3(Q[0]),
        .I4(capture_arm),
        .I5(sample_count[3]),
        .O(\sample_count[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \sample_count[4]_i_1 
       (.I0(sample_count[2]),
        .I1(sample_count[0]),
        .I2(sample_count[1]),
        .I3(sample_count[3]),
        .I4(\FSM_onehot_state[3]_i_1_n_0 ),
        .I5(sample_count[4]),
        .O(\sample_count[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8040)) 
    \sample_count[5]_i_1 
       (.I0(\sample_count[5]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(capture_arm),
        .I3(sample_count[5]),
        .O(\sample_count[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \sample_count[5]_i_2 
       (.I0(sample_count[3]),
        .I1(sample_count[1]),
        .I2(sample_count[0]),
        .I3(sample_count[2]),
        .I4(sample_count[4]),
        .O(\sample_count[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h8040)) 
    \sample_count[6]_i_1 
       (.I0(m_axis_tlast_INST_0_i_2_n_0),
        .I1(Q[0]),
        .I2(capture_arm),
        .I3(sample_count[6]),
        .O(\sample_count[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hB0004000)) 
    \sample_count[7]_i_1 
       (.I0(m_axis_tlast_INST_0_i_2_n_0),
        .I1(sample_count[6]),
        .I2(Q[0]),
        .I3(capture_arm),
        .I4(sample_count[7]),
        .O(\sample_count[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDF00000020000000)) 
    \sample_count[8]_i_1 
       (.I0(sample_count[6]),
        .I1(m_axis_tlast_INST_0_i_2_n_0),
        .I2(sample_count[7]),
        .I3(Q[0]),
        .I4(capture_arm),
        .I5(sample_count[8]),
        .O(\sample_count[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDFFF000020000000)) 
    \sample_count[9]_i_1 
       (.I0(sample_count[7]),
        .I1(m_axis_tlast_INST_0_i_2_n_0),
        .I2(sample_count[6]),
        .I3(sample_count[8]),
        .I4(\FSM_onehot_state[3]_i_1_n_0 ),
        .I5(sample_count[9]),
        .O(\sample_count[9]_i_1_n_0 ));
  FDRE \sample_count_reg[0] 
       (.C(aclk),
        .CE(sample_count_0),
        .D(\sample_count[0]_i_1_n_0 ),
        .Q(sample_count[0]),
        .R(\FSM_onehot_state[2]_i_1_n_0 ));
  FDRE \sample_count_reg[10] 
       (.C(aclk),
        .CE(sample_count_0),
        .D(\sample_count[10]_i_1_n_0 ),
        .Q(sample_count[10]),
        .R(\FSM_onehot_state[2]_i_1_n_0 ));
  FDRE \sample_count_reg[11] 
       (.C(aclk),
        .CE(sample_count_0),
        .D(\sample_count[11]_i_2_n_0 ),
        .Q(sample_count[11]),
        .R(\FSM_onehot_state[2]_i_1_n_0 ));
  FDRE \sample_count_reg[1] 
       (.C(aclk),
        .CE(sample_count_0),
        .D(\sample_count[1]_i_1_n_0 ),
        .Q(sample_count[1]),
        .R(\FSM_onehot_state[2]_i_1_n_0 ));
  FDRE \sample_count_reg[2] 
       (.C(aclk),
        .CE(sample_count_0),
        .D(\sample_count[2]_i_1_n_0 ),
        .Q(sample_count[2]),
        .R(\FSM_onehot_state[2]_i_1_n_0 ));
  FDRE \sample_count_reg[3] 
       (.C(aclk),
        .CE(sample_count_0),
        .D(\sample_count[3]_i_1_n_0 ),
        .Q(sample_count[3]),
        .R(\FSM_onehot_state[2]_i_1_n_0 ));
  FDRE \sample_count_reg[4] 
       (.C(aclk),
        .CE(sample_count_0),
        .D(\sample_count[4]_i_1_n_0 ),
        .Q(sample_count[4]),
        .R(\FSM_onehot_state[2]_i_1_n_0 ));
  FDRE \sample_count_reg[5] 
       (.C(aclk),
        .CE(sample_count_0),
        .D(\sample_count[5]_i_1_n_0 ),
        .Q(sample_count[5]),
        .R(\FSM_onehot_state[2]_i_1_n_0 ));
  FDRE \sample_count_reg[6] 
       (.C(aclk),
        .CE(sample_count_0),
        .D(\sample_count[6]_i_1_n_0 ),
        .Q(sample_count[6]),
        .R(\FSM_onehot_state[2]_i_1_n_0 ));
  FDRE \sample_count_reg[7] 
       (.C(aclk),
        .CE(sample_count_0),
        .D(\sample_count[7]_i_1_n_0 ),
        .Q(sample_count[7]),
        .R(\FSM_onehot_state[2]_i_1_n_0 ));
  FDRE \sample_count_reg[8] 
       (.C(aclk),
        .CE(sample_count_0),
        .D(\sample_count[8]_i_1_n_0 ),
        .Q(sample_count[8]),
        .R(\FSM_onehot_state[2]_i_1_n_0 ));
  FDRE \sample_count_reg[9] 
       (.C(aclk),
        .CE(sample_count_0),
        .D(\sample_count[9]_i_1_n_0 ),
        .Q(sample_count[9]),
        .R(\FSM_onehot_state[2]_i_1_n_0 ));
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
