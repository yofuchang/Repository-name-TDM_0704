// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Fri Jul 17 20:10:53 2026
// Host        : JohnsonKu running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_adc_packetizer_0_0_sim_netlist.v
// Design      : design_1_adc_packetizer_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu48dr-fsvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ap_ST_fsm_pp0_stage0 = "1'b1" *) (* hls_module = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adc_packetizer
   (ap_clk,
    ap_rst_n,
    s_axis_adc_TDATA,
    s_axis_adc_TVALID,
    s_axis_adc_TREADY,
    m_axis_dma_TDATA,
    m_axis_dma_TVALID,
    m_axis_dma_TREADY,
    m_axis_dma_TKEEP,
    m_axis_dma_TSTRB,
    m_axis_dma_TLAST);
  input ap_clk;
  input ap_rst_n;
  input [15:0]s_axis_adc_TDATA;
  input s_axis_adc_TVALID;
  output s_axis_adc_TREADY;
  output [31:0]m_axis_dma_TDATA;
  output m_axis_dma_TVALID;
  input m_axis_dma_TREADY;
  output [3:0]m_axis_dma_TKEEP;
  output [3:0]m_axis_dma_TSTRB;
  output [0:0]m_axis_dma_TLAST;

  wire \<const0> ;
  wire [11:0]add_ln41_fu_92_p2;
  wire ap_block_pp0_stage0_11001;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire load_p2;
  wire [15:0]\^m_axis_dma_TDATA ;
  wire [0:0]m_axis_dma_TLAST;
  wire m_axis_dma_TREADY;
  wire m_axis_dma_TREADY_int_regslice;
  wire [2:2]\^m_axis_dma_TSTRB ;
  wire m_axis_dma_TVALID;
  wire regslice_both_s_axis_adc_U_n_1;
  wire regslice_both_s_axis_adc_U_n_10;
  wire regslice_both_s_axis_adc_U_n_11;
  wire regslice_both_s_axis_adc_U_n_12;
  wire regslice_both_s_axis_adc_U_n_13;
  wire regslice_both_s_axis_adc_U_n_14;
  wire regslice_both_s_axis_adc_U_n_15;
  wire regslice_both_s_axis_adc_U_n_16;
  wire regslice_both_s_axis_adc_U_n_17;
  wire regslice_both_s_axis_adc_U_n_18;
  wire regslice_both_s_axis_adc_U_n_3;
  wire regslice_both_s_axis_adc_U_n_4;
  wire regslice_both_s_axis_adc_U_n_5;
  wire regslice_both_s_axis_adc_U_n_6;
  wire regslice_both_s_axis_adc_U_n_7;
  wire regslice_both_s_axis_adc_U_n_8;
  wire regslice_both_s_axis_adc_U_n_9;
  wire [15:0]s_axis_adc_TDATA;
  wire s_axis_adc_TREADY;
  wire s_axis_adc_TVALID;
  wire s_axis_adc_TVALID_int_regslice;
  wire [11:0]sample_count_reg;
  wire \sample_count_reg[11]_i_1_n_6 ;
  wire \sample_count_reg[11]_i_1_n_7 ;
  wire \sample_count_reg[8]_i_1_n_0 ;
  wire \sample_count_reg[8]_i_1_n_1 ;
  wire \sample_count_reg[8]_i_1_n_2 ;
  wire \sample_count_reg[8]_i_1_n_3 ;
  wire \sample_count_reg[8]_i_1_n_4 ;
  wire \sample_count_reg[8]_i_1_n_5 ;
  wire \sample_count_reg[8]_i_1_n_6 ;
  wire \sample_count_reg[8]_i_1_n_7 ;
  wire [7:2]\NLW_sample_count_reg[11]_i_1_CO_UNCONNECTED ;
  wire [7:3]\NLW_sample_count_reg[11]_i_1_O_UNCONNECTED ;

  assign m_axis_dma_TDATA[31] = \<const0> ;
  assign m_axis_dma_TDATA[30] = \<const0> ;
  assign m_axis_dma_TDATA[29] = \<const0> ;
  assign m_axis_dma_TDATA[28] = \<const0> ;
  assign m_axis_dma_TDATA[27] = \<const0> ;
  assign m_axis_dma_TDATA[26] = \<const0> ;
  assign m_axis_dma_TDATA[25] = \<const0> ;
  assign m_axis_dma_TDATA[24] = \<const0> ;
  assign m_axis_dma_TDATA[23] = \<const0> ;
  assign m_axis_dma_TDATA[22] = \<const0> ;
  assign m_axis_dma_TDATA[21] = \<const0> ;
  assign m_axis_dma_TDATA[20] = \<const0> ;
  assign m_axis_dma_TDATA[19] = \<const0> ;
  assign m_axis_dma_TDATA[18] = \<const0> ;
  assign m_axis_dma_TDATA[17] = \<const0> ;
  assign m_axis_dma_TDATA[16] = \<const0> ;
  assign m_axis_dma_TDATA[15:0] = \^m_axis_dma_TDATA [15:0];
  assign m_axis_dma_TKEEP[3] = \^m_axis_dma_TSTRB [2];
  assign m_axis_dma_TKEEP[2] = \^m_axis_dma_TSTRB [2];
  assign m_axis_dma_TKEEP[1] = \^m_axis_dma_TSTRB [2];
  assign m_axis_dma_TKEEP[0] = \^m_axis_dma_TSTRB [2];
  assign m_axis_dma_TSTRB[3] = \^m_axis_dma_TSTRB [2];
  assign m_axis_dma_TSTRB[2] = \^m_axis_dma_TSTRB [2];
  assign m_axis_dma_TSTRB[1] = \^m_axis_dma_TSTRB [2];
  assign m_axis_dma_TSTRB[0] = \^m_axis_dma_TSTRB [2];
  GND GND
       (.G(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(regslice_both_s_axis_adc_U_n_1),
        .Q(ap_enable_reg_pp0_iter1),
        .R(ap_rst_n_inv));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adc_packetizer_regslice_both__parameterized0 regslice_both_m_axis_dma_V_data_V_U
       (.E(load_p2),
        .Q(s_axis_adc_TVALID_int_regslice),
        .ap_block_pp0_stage0_11001(ap_block_pp0_stage0_11001),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .\data_p2_reg[15]_0 ({regslice_both_s_axis_adc_U_n_3,regslice_both_s_axis_adc_U_n_4,regslice_both_s_axis_adc_U_n_5,regslice_both_s_axis_adc_U_n_6,regslice_both_s_axis_adc_U_n_7,regslice_both_s_axis_adc_U_n_8,regslice_both_s_axis_adc_U_n_9,regslice_both_s_axis_adc_U_n_10,regslice_both_s_axis_adc_U_n_11,regslice_both_s_axis_adc_U_n_12,regslice_both_s_axis_adc_U_n_13,regslice_both_s_axis_adc_U_n_14,regslice_both_s_axis_adc_U_n_15,regslice_both_s_axis_adc_U_n_16,regslice_both_s_axis_adc_U_n_17,regslice_both_s_axis_adc_U_n_18}),
        .m_axis_dma_TDATA(\^m_axis_dma_TDATA ),
        .m_axis_dma_TREADY(m_axis_dma_TREADY),
        .m_axis_dma_TREADY_int_regslice(m_axis_dma_TREADY_int_regslice),
        .m_axis_dma_TVALID(m_axis_dma_TVALID));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adc_packetizer_regslice_both__parameterized1 regslice_both_m_axis_dma_V_keep_V_U
       (.ap_block_pp0_stage0_11001(ap_block_pp0_stage0_11001),
        .ap_clk(ap_clk),
        .ap_rst_n_inv(ap_rst_n_inv),
        .m_axis_dma_TREADY(m_axis_dma_TREADY),
        .m_axis_dma_TSTRB(\^m_axis_dma_TSTRB ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adc_packetizer_regslice_both__parameterized2 regslice_both_m_axis_dma_V_last_V_U
       (.Q(sample_count_reg),
        .ap_block_pp0_stage0_11001(ap_block_pp0_stage0_11001),
        .ap_clk(ap_clk),
        .ap_rst_n_inv(ap_rst_n_inv),
        .m_axis_dma_TLAST(m_axis_dma_TLAST),
        .m_axis_dma_TREADY(m_axis_dma_TREADY));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adc_packetizer_regslice_both regslice_both_s_axis_adc_U
       (.Q(s_axis_adc_TVALID_int_regslice),
        .ack_in_t_reg_0(s_axis_adc_TREADY),
        .ap_block_pp0_stage0_11001(ap_block_pp0_stage0_11001),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .ap_rst_n_inv(ap_rst_n_inv),
        .\data_p1_reg[15]_0 ({regslice_both_s_axis_adc_U_n_3,regslice_both_s_axis_adc_U_n_4,regslice_both_s_axis_adc_U_n_5,regslice_both_s_axis_adc_U_n_6,regslice_both_s_axis_adc_U_n_7,regslice_both_s_axis_adc_U_n_8,regslice_both_s_axis_adc_U_n_9,regslice_both_s_axis_adc_U_n_10,regslice_both_s_axis_adc_U_n_11,regslice_both_s_axis_adc_U_n_12,regslice_both_s_axis_adc_U_n_13,regslice_both_s_axis_adc_U_n_14,regslice_both_s_axis_adc_U_n_15,regslice_both_s_axis_adc_U_n_16,regslice_both_s_axis_adc_U_n_17,regslice_both_s_axis_adc_U_n_18}),
        .m_axis_dma_TREADY_int_regslice(m_axis_dma_TREADY_int_regslice),
        .s_axis_adc_TDATA(s_axis_adc_TDATA),
        .s_axis_adc_TVALID(s_axis_adc_TVALID),
        .\state_reg[0]_0 (regslice_both_s_axis_adc_U_n_1));
  LUT1 #(
    .INIT(2'h1)) 
    \sample_count[0]_i_1 
       (.I0(sample_count_reg[0]),
        .O(add_ln41_fu_92_p2[0]));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[0] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(add_ln41_fu_92_p2[0]),
        .Q(sample_count_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[10] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(add_ln41_fu_92_p2[10]),
        .Q(sample_count_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[11] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(add_ln41_fu_92_p2[11]),
        .Q(sample_count_reg[11]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \sample_count_reg[11]_i_1 
       (.CI(\sample_count_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_sample_count_reg[11]_i_1_CO_UNCONNECTED [7:2],\sample_count_reg[11]_i_1_n_6 ,\sample_count_reg[11]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_sample_count_reg[11]_i_1_O_UNCONNECTED [7:3],add_ln41_fu_92_p2[11:9]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,sample_count_reg[11:9]}));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[1] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(add_ln41_fu_92_p2[1]),
        .Q(sample_count_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[2] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(add_ln41_fu_92_p2[2]),
        .Q(sample_count_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[3] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(add_ln41_fu_92_p2[3]),
        .Q(sample_count_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[4] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(add_ln41_fu_92_p2[4]),
        .Q(sample_count_reg[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[5] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(add_ln41_fu_92_p2[5]),
        .Q(sample_count_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[6] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(add_ln41_fu_92_p2[6]),
        .Q(sample_count_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[7] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(add_ln41_fu_92_p2[7]),
        .Q(sample_count_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[8] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(add_ln41_fu_92_p2[8]),
        .Q(sample_count_reg[8]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \sample_count_reg[8]_i_1 
       (.CI(sample_count_reg[0]),
        .CI_TOP(1'b0),
        .CO({\sample_count_reg[8]_i_1_n_0 ,\sample_count_reg[8]_i_1_n_1 ,\sample_count_reg[8]_i_1_n_2 ,\sample_count_reg[8]_i_1_n_3 ,\sample_count_reg[8]_i_1_n_4 ,\sample_count_reg[8]_i_1_n_5 ,\sample_count_reg[8]_i_1_n_6 ,\sample_count_reg[8]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(add_ln41_fu_92_p2[8:1]),
        .S(sample_count_reg[8:1]));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[9] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(add_ln41_fu_92_p2[9]),
        .Q(sample_count_reg[9]),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adc_packetizer_regslice_both
   (ack_in_t_reg_0,
    \state_reg[0]_0 ,
    Q,
    \data_p1_reg[15]_0 ,
    ap_rst_n_inv,
    ap_clk,
    m_axis_dma_TREADY_int_regslice,
    ap_enable_reg_pp0_iter1,
    ap_block_pp0_stage0_11001,
    s_axis_adc_TVALID,
    s_axis_adc_TDATA);
  output ack_in_t_reg_0;
  output \state_reg[0]_0 ;
  output [0:0]Q;
  output [15:0]\data_p1_reg[15]_0 ;
  input ap_rst_n_inv;
  input ap_clk;
  input m_axis_dma_TREADY_int_regslice;
  input ap_enable_reg_pp0_iter1;
  input ap_block_pp0_stage0_11001;
  input s_axis_adc_TVALID;
  input [15:0]s_axis_adc_TDATA;

  wire [0:0]Q;
  wire ack_in_t_i_2_n_0;
  wire ack_in_t_reg_0;
  wire ap_block_pp0_stage0_11001;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1;
  wire ap_rst_n_inv;
  wire [15:0]\data_p1_reg[15]_0 ;
  wire \data_p2_reg_n_0_[0] ;
  wire \data_p2_reg_n_0_[10] ;
  wire \data_p2_reg_n_0_[11] ;
  wire \data_p2_reg_n_0_[12] ;
  wire \data_p2_reg_n_0_[13] ;
  wire \data_p2_reg_n_0_[14] ;
  wire \data_p2_reg_n_0_[15] ;
  wire \data_p2_reg_n_0_[1] ;
  wire \data_p2_reg_n_0_[2] ;
  wire \data_p2_reg_n_0_[3] ;
  wire \data_p2_reg_n_0_[4] ;
  wire \data_p2_reg_n_0_[5] ;
  wire \data_p2_reg_n_0_[6] ;
  wire \data_p2_reg_n_0_[7] ;
  wire \data_p2_reg_n_0_[8] ;
  wire \data_p2_reg_n_0_[9] ;
  wire load_p1;
  wire load_p2;
  wire m_axis_dma_TREADY_int_regslice;
  wire [1:0]next__0;
  wire [15:0]p_0_in;
  wire [15:0]s_axis_adc_TDATA;
  wire s_axis_adc_TVALID;
  wire [1:1]state;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1__0_n_0 ;
  wire [1:0]state__0;
  wire \state_reg[0]_0 ;

  LUT4 #(
    .INIT(16'h73FF)) 
    \FSM_sequential_state[0]_i_1__2 
       (.I0(s_axis_adc_TVALID),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(ap_block_pp0_stage0_11001),
        .O(next__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hF8AAA8AA)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state__0[1]),
        .I1(ap_block_pp0_stage0_11001),
        .I2(s_axis_adc_TVALID),
        .I3(state__0[0]),
        .I4(ack_in_t_reg_0),
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
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h2AFFBBAA)) 
    ack_in_t_i_2
       (.I0(ack_in_t_reg_0),
        .I1(ap_block_pp0_stage0_11001),
        .I2(s_axis_adc_TVALID),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .O(ack_in_t_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ack_in_t_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ack_in_t_i_2_n_0),
        .Q(ack_in_t_reg_0),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'hF8)) 
    ap_enable_reg_pp0_iter1_i_1
       (.I0(Q),
        .I1(m_axis_dma_TREADY_int_regslice),
        .I2(ap_enable_reg_pp0_iter1),
        .O(\state_reg[0]_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[0]_i_1__0 
       (.I0(\data_p2_reg_n_0_[0] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(s_axis_adc_TDATA[0]),
        .O(p_0_in[0]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[10]_i_1__0 
       (.I0(\data_p2_reg_n_0_[10] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(s_axis_adc_TDATA[10]),
        .O(p_0_in[10]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[11]_i_1__0 
       (.I0(\data_p2_reg_n_0_[11] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(s_axis_adc_TDATA[11]),
        .O(p_0_in[11]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[12]_i_1__0 
       (.I0(\data_p2_reg_n_0_[12] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(s_axis_adc_TDATA[12]),
        .O(p_0_in[12]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[13]_i_1__0 
       (.I0(\data_p2_reg_n_0_[13] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(s_axis_adc_TDATA[13]),
        .O(p_0_in[13]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[14]_i_1__0 
       (.I0(\data_p2_reg_n_0_[14] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(s_axis_adc_TDATA[14]),
        .O(p_0_in[14]));
  LUT4 #(
    .INIT(16'h7404)) 
    \data_p1[15]_i_1 
       (.I0(ap_block_pp0_stage0_11001),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(s_axis_adc_TVALID),
        .O(load_p1));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[15]_i_2__0 
       (.I0(\data_p2_reg_n_0_[15] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(s_axis_adc_TDATA[15]),
        .O(p_0_in[15]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[1]_i_1__0 
       (.I0(\data_p2_reg_n_0_[1] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(s_axis_adc_TDATA[1]),
        .O(p_0_in[1]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[2]_i_1__0 
       (.I0(\data_p2_reg_n_0_[2] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(s_axis_adc_TDATA[2]),
        .O(p_0_in[2]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[3]_i_1__0 
       (.I0(\data_p2_reg_n_0_[3] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(s_axis_adc_TDATA[3]),
        .O(p_0_in[3]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[4]_i_1__0 
       (.I0(\data_p2_reg_n_0_[4] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(s_axis_adc_TDATA[4]),
        .O(p_0_in[4]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[5]_i_1__0 
       (.I0(\data_p2_reg_n_0_[5] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(s_axis_adc_TDATA[5]),
        .O(p_0_in[5]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[6]_i_1__0 
       (.I0(\data_p2_reg_n_0_[6] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(s_axis_adc_TDATA[6]),
        .O(p_0_in[6]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[7]_i_1__0 
       (.I0(\data_p2_reg_n_0_[7] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(s_axis_adc_TDATA[7]),
        .O(p_0_in[7]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[8]_i_1__0 
       (.I0(\data_p2_reg_n_0_[8] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(s_axis_adc_TDATA[8]),
        .O(p_0_in[8]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[9]_i_1__0 
       (.I0(\data_p2_reg_n_0_[9] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(s_axis_adc_TDATA[9]),
        .O(p_0_in[9]));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[0] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[0]),
        .Q(\data_p1_reg[15]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[10] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[10]),
        .Q(\data_p1_reg[15]_0 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[11] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[11]),
        .Q(\data_p1_reg[15]_0 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[12] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[12]),
        .Q(\data_p1_reg[15]_0 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[13] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[13]),
        .Q(\data_p1_reg[15]_0 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[14] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[14]),
        .Q(\data_p1_reg[15]_0 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[15] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[15]),
        .Q(\data_p1_reg[15]_0 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[1] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[1]),
        .Q(\data_p1_reg[15]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[2] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[2]),
        .Q(\data_p1_reg[15]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[3] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[3]),
        .Q(\data_p1_reg[15]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[4] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[4]),
        .Q(\data_p1_reg[15]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[5] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[5]),
        .Q(\data_p1_reg[15]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[6] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[6]),
        .Q(\data_p1_reg[15]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[7] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[7]),
        .Q(\data_p1_reg[15]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[8] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[8]),
        .Q(\data_p1_reg[15]_0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[9] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[9]),
        .Q(\data_p1_reg[15]_0 [9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \data_p2[15]_i_1 
       (.I0(s_axis_adc_TVALID),
        .I1(ack_in_t_reg_0),
        .O(load_p2));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[0] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(s_axis_adc_TDATA[0]),
        .Q(\data_p2_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[10] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(s_axis_adc_TDATA[10]),
        .Q(\data_p2_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[11] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(s_axis_adc_TDATA[11]),
        .Q(\data_p2_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[12] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(s_axis_adc_TDATA[12]),
        .Q(\data_p2_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[13] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(s_axis_adc_TDATA[13]),
        .Q(\data_p2_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[14] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(s_axis_adc_TDATA[14]),
        .Q(\data_p2_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[15] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(s_axis_adc_TDATA[15]),
        .Q(\data_p2_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[1] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(s_axis_adc_TDATA[1]),
        .Q(\data_p2_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[2] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(s_axis_adc_TDATA[2]),
        .Q(\data_p2_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[3] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(s_axis_adc_TDATA[3]),
        .Q(\data_p2_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[4] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(s_axis_adc_TDATA[4]),
        .Q(\data_p2_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[5] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(s_axis_adc_TDATA[5]),
        .Q(\data_p2_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[6] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(s_axis_adc_TDATA[6]),
        .Q(\data_p2_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[7] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(s_axis_adc_TDATA[7]),
        .Q(\data_p2_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[8] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(s_axis_adc_TDATA[8]),
        .Q(\data_p2_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[9] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(s_axis_adc_TDATA[9]),
        .Q(\data_p2_reg_n_0_[9] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFF58080)) 
    \state[0]_i_1 
       (.I0(state),
        .I1(ack_in_t_reg_0),
        .I2(s_axis_adc_TVALID),
        .I3(ap_block_pp0_stage0_11001),
        .I4(Q),
        .O(\state[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h5FDF)) 
    \state[1]_i_1__0 
       (.I0(Q),
        .I1(state),
        .I2(ap_block_pp0_stage0_11001),
        .I3(s_axis_adc_TVALID),
        .O(\state[1]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(Q),
        .R(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\state[1]_i_1__0_n_0 ),
        .Q(state),
        .S(ap_rst_n_inv));
endmodule

(* ORIG_REF_NAME = "adc_packetizer_regslice_both" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adc_packetizer_regslice_both__parameterized0
   (m_axis_dma_TREADY_int_regslice,
    ap_rst_n_inv,
    m_axis_dma_TVALID,
    ap_block_pp0_stage0_11001,
    E,
    m_axis_dma_TDATA,
    ap_clk,
    m_axis_dma_TREADY,
    Q,
    ap_enable_reg_pp0_iter1,
    \data_p2_reg[15]_0 ,
    ap_rst_n);
  output m_axis_dma_TREADY_int_regslice;
  output ap_rst_n_inv;
  output m_axis_dma_TVALID;
  output ap_block_pp0_stage0_11001;
  output [0:0]E;
  output [15:0]m_axis_dma_TDATA;
  input ap_clk;
  input m_axis_dma_TREADY;
  input [0:0]Q;
  input ap_enable_reg_pp0_iter1;
  input [15:0]\data_p2_reg[15]_0 ;
  input ap_rst_n;

  wire [0:0]E;
  wire [0:0]Q;
  wire ack_in_t_i_1__0_n_0;
  wire ap_block_pp0_stage0_11001;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire \data_p1[0]_i_1_n_0 ;
  wire \data_p1[10]_i_1_n_0 ;
  wire \data_p1[11]_i_1_n_0 ;
  wire \data_p1[12]_i_1_n_0 ;
  wire \data_p1[13]_i_1_n_0 ;
  wire \data_p1[14]_i_1_n_0 ;
  wire \data_p1[15]_i_2_n_0 ;
  wire \data_p1[1]_i_1_n_0 ;
  wire \data_p1[2]_i_1_n_0 ;
  wire \data_p1[3]_i_1_n_0 ;
  wire \data_p1[4]_i_1_n_0 ;
  wire \data_p1[5]_i_1_n_0 ;
  wire \data_p1[6]_i_1_n_0 ;
  wire \data_p1[7]_i_1_n_0 ;
  wire \data_p1[8]_i_1_n_0 ;
  wire \data_p1[9]_i_1_n_0 ;
  wire [15:0]\data_p2_reg[15]_0 ;
  wire \data_p2_reg_n_0_[0] ;
  wire \data_p2_reg_n_0_[10] ;
  wire \data_p2_reg_n_0_[11] ;
  wire \data_p2_reg_n_0_[12] ;
  wire \data_p2_reg_n_0_[13] ;
  wire \data_p2_reg_n_0_[14] ;
  wire \data_p2_reg_n_0_[15] ;
  wire \data_p2_reg_n_0_[1] ;
  wire \data_p2_reg_n_0_[2] ;
  wire \data_p2_reg_n_0_[3] ;
  wire \data_p2_reg_n_0_[4] ;
  wire \data_p2_reg_n_0_[5] ;
  wire \data_p2_reg_n_0_[6] ;
  wire \data_p2_reg_n_0_[7] ;
  wire \data_p2_reg_n_0_[8] ;
  wire \data_p2_reg_n_0_[9] ;
  wire load_p1;
  wire [15:0]m_axis_dma_TDATA;
  wire m_axis_dma_TREADY;
  wire m_axis_dma_TREADY_int_regslice;
  wire m_axis_dma_TVALID;
  wire [1:0]next__0;
  wire [1:1]state;
  wire \state[0]_i_1__0_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire [1:0]state__0;

  LUT6 #(
    .INIT(64'hFFFFF7FFFFFF00FF)) 
    \FSM_sequential_state[0]_i_1__1 
       (.I0(Q),
        .I1(m_axis_dma_TREADY_int_regslice),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(state__0[1]),
        .I4(m_axis_dma_TREADY),
        .I5(state__0[0]),
        .O(next__0[0]));
  LUT5 #(
    .INIT(32'hE222EAAA)) 
    \FSM_sequential_state[1]_i_1__2 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(Q),
        .I3(m_axis_dma_TREADY_int_regslice),
        .I4(m_axis_dma_TREADY),
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
  LUT1 #(
    .INIT(2'h1)) 
    ack_in_t_i_1
       (.I0(ap_rst_n),
        .O(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hE0F0FFFFFAFAF0F0)) 
    ack_in_t_i_1__0
       (.I0(m_axis_dma_TREADY),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(m_axis_dma_TREADY_int_regslice),
        .I3(Q),
        .I4(state__0[1]),
        .I5(state__0[0]),
        .O(ack_in_t_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h7FFF777777777777)) 
    ack_in_t_i_3
       (.I0(Q),
        .I1(m_axis_dma_TREADY_int_regslice),
        .I2(m_axis_dma_TREADY),
        .I3(state__0[0]),
        .I4(state__0[1]),
        .I5(ap_enable_reg_pp0_iter1),
        .O(ap_block_pp0_stage0_11001));
  FDRE #(
    .INIT(1'b0)) 
    ack_in_t_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ack_in_t_i_1__0_n_0),
        .Q(m_axis_dma_TREADY_int_regslice),
        .R(ap_rst_n_inv));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[0]_i_1 
       (.I0(\data_p2_reg_n_0_[0] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\data_p2_reg[15]_0 [0]),
        .O(\data_p1[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[10]_i_1 
       (.I0(\data_p2_reg_n_0_[10] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\data_p2_reg[15]_0 [10]),
        .O(\data_p1[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[11]_i_1 
       (.I0(\data_p2_reg_n_0_[11] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\data_p2_reg[15]_0 [11]),
        .O(\data_p1[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[12]_i_1 
       (.I0(\data_p2_reg_n_0_[12] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\data_p2_reg[15]_0 [12]),
        .O(\data_p1[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[13]_i_1 
       (.I0(\data_p2_reg_n_0_[13] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\data_p2_reg[15]_0 [13]),
        .O(\data_p1[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[14]_i_1 
       (.I0(\data_p2_reg_n_0_[14] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\data_p2_reg[15]_0 [14]),
        .O(\data_p1[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hE4202020)) 
    \data_p1[15]_i_1__0 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(m_axis_dma_TREADY),
        .I3(m_axis_dma_TREADY_int_regslice),
        .I4(Q),
        .O(load_p1));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[15]_i_2 
       (.I0(\data_p2_reg_n_0_[15] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\data_p2_reg[15]_0 [15]),
        .O(\data_p1[15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[1]_i_1 
       (.I0(\data_p2_reg_n_0_[1] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\data_p2_reg[15]_0 [1]),
        .O(\data_p1[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[2]_i_1 
       (.I0(\data_p2_reg_n_0_[2] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\data_p2_reg[15]_0 [2]),
        .O(\data_p1[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[3]_i_1 
       (.I0(\data_p2_reg_n_0_[3] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\data_p2_reg[15]_0 [3]),
        .O(\data_p1[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[4]_i_1 
       (.I0(\data_p2_reg_n_0_[4] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\data_p2_reg[15]_0 [4]),
        .O(\data_p1[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[5]_i_1 
       (.I0(\data_p2_reg_n_0_[5] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\data_p2_reg[15]_0 [5]),
        .O(\data_p1[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[6]_i_1 
       (.I0(\data_p2_reg_n_0_[6] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\data_p2_reg[15]_0 [6]),
        .O(\data_p1[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[7]_i_1 
       (.I0(\data_p2_reg_n_0_[7] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\data_p2_reg[15]_0 [7]),
        .O(\data_p1[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[8]_i_1 
       (.I0(\data_p2_reg_n_0_[8] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\data_p2_reg[15]_0 [8]),
        .O(\data_p1[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[9]_i_1 
       (.I0(\data_p2_reg_n_0_[9] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\data_p2_reg[15]_0 [9]),
        .O(\data_p1[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[0] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[0]_i_1_n_0 ),
        .Q(m_axis_dma_TDATA[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[10] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[10]_i_1_n_0 ),
        .Q(m_axis_dma_TDATA[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[11] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[11]_i_1_n_0 ),
        .Q(m_axis_dma_TDATA[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[12] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[12]_i_1_n_0 ),
        .Q(m_axis_dma_TDATA[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[13] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[13]_i_1_n_0 ),
        .Q(m_axis_dma_TDATA[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[14] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[14]_i_1_n_0 ),
        .Q(m_axis_dma_TDATA[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[15] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[15]_i_2_n_0 ),
        .Q(m_axis_dma_TDATA[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[1] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[1]_i_1_n_0 ),
        .Q(m_axis_dma_TDATA[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[2] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[2]_i_1_n_0 ),
        .Q(m_axis_dma_TDATA[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[3] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[3]_i_1_n_0 ),
        .Q(m_axis_dma_TDATA[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[4] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[4]_i_1_n_0 ),
        .Q(m_axis_dma_TDATA[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[5] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[5]_i_1_n_0 ),
        .Q(m_axis_dma_TDATA[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[6] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[6]_i_1_n_0 ),
        .Q(m_axis_dma_TDATA[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[7] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[7]_i_1_n_0 ),
        .Q(m_axis_dma_TDATA[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[8] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[8]_i_1_n_0 ),
        .Q(m_axis_dma_TDATA[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[9] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[9]_i_1_n_0 ),
        .Q(m_axis_dma_TDATA[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF777000000000000)) 
    \data_p2[15]_i_1__0 
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(m_axis_dma_TREADY),
        .I4(m_axis_dma_TREADY_int_regslice),
        .I5(Q),
        .O(E));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(\data_p2_reg[15]_0 [0]),
        .Q(\data_p2_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[10] 
       (.C(ap_clk),
        .CE(E),
        .D(\data_p2_reg[15]_0 [10]),
        .Q(\data_p2_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[11] 
       (.C(ap_clk),
        .CE(E),
        .D(\data_p2_reg[15]_0 [11]),
        .Q(\data_p2_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[12] 
       (.C(ap_clk),
        .CE(E),
        .D(\data_p2_reg[15]_0 [12]),
        .Q(\data_p2_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[13] 
       (.C(ap_clk),
        .CE(E),
        .D(\data_p2_reg[15]_0 [13]),
        .Q(\data_p2_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[14] 
       (.C(ap_clk),
        .CE(E),
        .D(\data_p2_reg[15]_0 [14]),
        .Q(\data_p2_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[15] 
       (.C(ap_clk),
        .CE(E),
        .D(\data_p2_reg[15]_0 [15]),
        .Q(\data_p2_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(\data_p2_reg[15]_0 [1]),
        .Q(\data_p2_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[2] 
       (.C(ap_clk),
        .CE(E),
        .D(\data_p2_reg[15]_0 [2]),
        .Q(\data_p2_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[3] 
       (.C(ap_clk),
        .CE(E),
        .D(\data_p2_reg[15]_0 [3]),
        .Q(\data_p2_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[4] 
       (.C(ap_clk),
        .CE(E),
        .D(\data_p2_reg[15]_0 [4]),
        .Q(\data_p2_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[5] 
       (.C(ap_clk),
        .CE(E),
        .D(\data_p2_reg[15]_0 [5]),
        .Q(\data_p2_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[6] 
       (.C(ap_clk),
        .CE(E),
        .D(\data_p2_reg[15]_0 [6]),
        .Q(\data_p2_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[7] 
       (.C(ap_clk),
        .CE(E),
        .D(\data_p2_reg[15]_0 [7]),
        .Q(\data_p2_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[8] 
       (.C(ap_clk),
        .CE(E),
        .D(\data_p2_reg[15]_0 [8]),
        .Q(\data_p2_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[9] 
       (.C(ap_clk),
        .CE(E),
        .D(\data_p2_reg[15]_0 [9]),
        .Q(\data_p2_reg_n_0_[9] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h5FFF0088)) 
    \state[0]_i_1__0 
       (.I0(state),
        .I1(m_axis_dma_TREADY_int_regslice),
        .I2(m_axis_dma_TREADY),
        .I3(ap_block_pp0_stage0_11001),
        .I4(m_axis_dma_TVALID),
        .O(\state[0]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFD5)) 
    \state[1]_i_1 
       (.I0(m_axis_dma_TVALID),
        .I1(state),
        .I2(ap_block_pp0_stage0_11001),
        .I3(m_axis_dma_TREADY),
        .O(\state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\state[0]_i_1__0_n_0 ),
        .Q(m_axis_dma_TVALID),
        .R(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(state),
        .S(ap_rst_n_inv));
endmodule

(* ORIG_REF_NAME = "adc_packetizer_regslice_both" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adc_packetizer_regslice_both__parameterized1
   (m_axis_dma_TSTRB,
    ap_rst_n_inv,
    ap_clk,
    m_axis_dma_TREADY,
    ap_block_pp0_stage0_11001);
  output [0:0]m_axis_dma_TSTRB;
  input ap_rst_n_inv;
  input ap_clk;
  input m_axis_dma_TREADY;
  input ap_block_pp0_stage0_11001;

  wire ack_in_t_i_1__1_n_0;
  wire ack_in_t_reg_n_0;
  wire ap_block_pp0_stage0_11001;
  wire ap_clk;
  wire ap_rst_n_inv;
  wire \data_p1[3]_i_1_n_0 ;
  wire [3:3]data_p2;
  wire \data_p2[3]_i_1_n_0 ;
  wire m_axis_dma_TREADY;
  wire [0:0]m_axis_dma_TSTRB;
  wire [1:0]next__0;
  wire [1:0]state__0;

  LUT4 #(
    .INIT(16'hFBF3)) 
    \FSM_sequential_state[0]_i_1__0 
       (.I0(ap_block_pp0_stage0_11001),
        .I1(state__0[1]),
        .I2(m_axis_dma_TREADY),
        .I3(state__0[0]),
        .O(next__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h44CCFCCC)) 
    \FSM_sequential_state[1]_i_1__1 
       (.I0(m_axis_dma_TREADY),
        .I1(state__0[1]),
        .I2(ack_in_t_reg_n_0),
        .I3(state__0[0]),
        .I4(ap_block_pp0_stage0_11001),
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
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hA8FFEEAA)) 
    ack_in_t_i_1__1
       (.I0(ack_in_t_reg_n_0),
        .I1(m_axis_dma_TREADY),
        .I2(ap_block_pp0_stage0_11001),
        .I3(state__0[1]),
        .I4(state__0[0]),
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
    .INIT(64'hFFBBFFFF0C880F00)) 
    \data_p1[3]_i_1 
       (.I0(data_p2),
        .I1(m_axis_dma_TREADY),
        .I2(ap_block_pp0_stage0_11001),
        .I3(state__0[0]),
        .I4(state__0[1]),
        .I5(m_axis_dma_TSTRB),
        .O(\data_p1[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\data_p1[3]_i_1_n_0 ),
        .Q(m_axis_dma_TSTRB),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hF4)) 
    \data_p2[3]_i_1 
       (.I0(ap_block_pp0_stage0_11001),
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

(* ORIG_REF_NAME = "adc_packetizer_regslice_both" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adc_packetizer_regslice_both__parameterized2
   (m_axis_dma_TLAST,
    ap_rst_n_inv,
    ap_clk,
    m_axis_dma_TREADY,
    ap_block_pp0_stage0_11001,
    Q);
  output [0:0]m_axis_dma_TLAST;
  input ap_rst_n_inv;
  input ap_clk;
  input m_axis_dma_TREADY;
  input ap_block_pp0_stage0_11001;
  input [11:0]Q;

  wire [11:0]Q;
  wire ack_in_t_i_1__2_n_0;
  wire ack_in_t_reg_n_0;
  wire ap_block_pp0_stage0_11001;
  wire ap_clk;
  wire ap_rst_n_inv;
  wire \data_p1[0]_i_1__1_n_0 ;
  wire \data_p1[0]_i_4_n_0 ;
  wire \data_p1[0]_i_5_n_0 ;
  wire \data_p1[0]_i_6_n_0 ;
  wire data_p2;
  wire \data_p2[0]_i_1_n_0 ;
  wire load_p1;
  wire [0:0]m_axis_dma_TLAST;
  wire m_axis_dma_TLAST_int_regslice;
  wire m_axis_dma_TREADY;
  wire [1:0]next__0;
  wire [1:0]state__0;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFBF3)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(ap_block_pp0_stage0_11001),
        .I1(state__0[1]),
        .I2(m_axis_dma_TREADY),
        .I3(state__0[0]),
        .O(next__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h44CCFCCC)) 
    \FSM_sequential_state[1]_i_1__0 
       (.I0(m_axis_dma_TREADY),
        .I1(state__0[1]),
        .I2(ack_in_t_reg_n_0),
        .I3(state__0[0]),
        .I4(ap_block_pp0_stage0_11001),
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
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hA8FFEEAA)) 
    ack_in_t_i_1__2
       (.I0(ack_in_t_reg_n_0),
        .I1(m_axis_dma_TREADY),
        .I2(ap_block_pp0_stage0_11001),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .O(ack_in_t_i_1__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ack_in_t_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ack_in_t_i_1__2_n_0),
        .Q(ack_in_t_reg_n_0),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFB08FFFFFB080000)) 
    \data_p1[0]_i_1__1 
       (.I0(data_p2),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(m_axis_dma_TLAST_int_regslice),
        .I4(load_p1),
        .I5(m_axis_dma_TLAST),
        .O(\data_p1[0]_i_1__1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \data_p1[0]_i_2 
       (.I0(\data_p1[0]_i_4_n_0 ),
        .I1(\data_p1[0]_i_5_n_0 ),
        .I2(\data_p1[0]_i_6_n_0 ),
        .O(m_axis_dma_TLAST_int_regslice));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h2A30)) 
    \data_p1[0]_i_3 
       (.I0(m_axis_dma_TREADY),
        .I1(ap_block_pp0_stage0_11001),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .O(load_p1));
  LUT6 #(
    .INIT(64'hD500000000000000)) 
    \data_p1[0]_i_4 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\data_p1[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hD5D500D500D500D5)) 
    \data_p1[0]_i_5 
       (.I0(Q[11]),
        .I1(Q[9]),
        .I2(Q[10]),
        .I3(Q[8]),
        .I4(Q[6]),
        .I5(Q[7]),
        .O(\data_p1[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \data_p1[0]_i_6 
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[7]),
        .I3(Q[8]),
        .I4(Q[11]),
        .I5(Q[10]),
        .O(\data_p1[0]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\data_p1[0]_i_1__1_n_0 ),
        .Q(m_axis_dma_TLAST),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p2[0]_i_1 
       (.I0(m_axis_dma_TLAST_int_regslice),
        .I1(ack_in_t_reg_n_0),
        .I2(ap_block_pp0_stage0_11001),
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

(* CHECK_LICENSE_TYPE = "design_1_adc_packetizer_0_0,adc_packetizer,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "adc_packetizer,Vivado 2024.2" *) (* hls_module = "yes" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (ap_clk,
    ap_rst_n,
    s_axis_adc_TDATA,
    s_axis_adc_TREADY,
    s_axis_adc_TVALID,
    m_axis_dma_TDATA,
    m_axis_dma_TKEEP,
    m_axis_dma_TLAST,
    m_axis_dma_TREADY,
    m_axis_dma_TSTRB,
    m_axis_dma_TVALID);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axis_adc:m_axis_dma, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_adc TDATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_adc, TUSER_WIDTH 0, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 99999001, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0" *) input [15:0]s_axis_adc_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_adc TREADY" *) output s_axis_adc_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_adc TVALID" *) input s_axis_adc_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_dma TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_dma, TUSER_WIDTH 0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 99999001, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [31:0]m_axis_dma_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_dma TKEEP" *) output [3:0]m_axis_dma_TKEEP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_dma TLAST" *) output [0:0]m_axis_dma_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_dma TREADY" *) input m_axis_dma_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_dma TSTRB" *) output [3:0]m_axis_dma_TSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_dma TVALID" *) output m_axis_dma_TVALID;

  wire \<const0> ;
  wire ap_clk;
  wire ap_rst_n;
  wire [15:0]\^m_axis_dma_TDATA ;
  wire [3:0]m_axis_dma_TKEEP;
  wire [0:0]m_axis_dma_TLAST;
  wire m_axis_dma_TREADY;
  wire [3:0]m_axis_dma_TSTRB;
  wire m_axis_dma_TVALID;
  wire [15:0]s_axis_adc_TDATA;
  wire s_axis_adc_TREADY;
  wire s_axis_adc_TVALID;
  wire [31:16]NLW_inst_m_axis_dma_TDATA_UNCONNECTED;

  assign m_axis_dma_TDATA[31] = \<const0> ;
  assign m_axis_dma_TDATA[30] = \<const0> ;
  assign m_axis_dma_TDATA[29] = \<const0> ;
  assign m_axis_dma_TDATA[28] = \<const0> ;
  assign m_axis_dma_TDATA[27] = \<const0> ;
  assign m_axis_dma_TDATA[26] = \<const0> ;
  assign m_axis_dma_TDATA[25] = \<const0> ;
  assign m_axis_dma_TDATA[24] = \<const0> ;
  assign m_axis_dma_TDATA[23] = \<const0> ;
  assign m_axis_dma_TDATA[22] = \<const0> ;
  assign m_axis_dma_TDATA[21] = \<const0> ;
  assign m_axis_dma_TDATA[20] = \<const0> ;
  assign m_axis_dma_TDATA[19] = \<const0> ;
  assign m_axis_dma_TDATA[18] = \<const0> ;
  assign m_axis_dma_TDATA[17] = \<const0> ;
  assign m_axis_dma_TDATA[16] = \<const0> ;
  assign m_axis_dma_TDATA[15:0] = \^m_axis_dma_TDATA [15:0];
  GND GND
       (.G(\<const0> ));
  (* SDX_KERNEL = "true" *) 
  (* SDX_KERNEL_SYNTH_INST = "inst" *) 
  (* SDX_KERNEL_TYPE = "hls" *) 
  (* ap_ST_fsm_pp0_stage0 = "1'b1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adc_packetizer inst
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .m_axis_dma_TDATA({NLW_inst_m_axis_dma_TDATA_UNCONNECTED[31:16],\^m_axis_dma_TDATA }),
        .m_axis_dma_TKEEP(m_axis_dma_TKEEP),
        .m_axis_dma_TLAST(m_axis_dma_TLAST),
        .m_axis_dma_TREADY(m_axis_dma_TREADY),
        .m_axis_dma_TSTRB(m_axis_dma_TSTRB),
        .m_axis_dma_TVALID(m_axis_dma_TVALID),
        .s_axis_adc_TDATA(s_axis_adc_TDATA),
        .s_axis_adc_TREADY(s_axis_adc_TREADY),
        .s_axis_adc_TVALID(s_axis_adc_TVALID));
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
