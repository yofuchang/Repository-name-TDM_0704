-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Wed Jul  8 20:32:13 2026
-- Host        : JohnsonKu running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_lfm_tdm_gen_0_0_sim_netlist.vhdl
-- Design      : design_1_lfm_tdm_gen_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu48dr-fsvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen_CTRL_s_axi is
  port (
    ap_rst_n_inv : out STD_LOGIC;
    interrupt : out STD_LOGIC;
    \FSM_onehot_rstate_reg[1]_0\ : out STD_LOGIC;
    s_axi_CTRL_RVALID : out STD_LOGIC;
    \FSM_onehot_wstate_reg[2]_0\ : out STD_LOGIC;
    s_axi_CTRL_BVALID : out STD_LOGIC;
    ap_start : out STD_LOGIC;
    ap_rst_n_0 : out STD_LOGIC;
    ap_condition_exit_pp0_iter0_stage0 : out STD_LOGIC;
    icmp_ln53_fu_330_p2 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \sample4_fu_124_reg[2]\ : out STD_LOGIC;
    select_ln53_fu_262_p3 : out STD_LOGIC_VECTOR ( 6 downto 0 );
    int_ap_start_reg_0 : out STD_LOGIC;
    tx_word_last_fu_300_p2 : out STD_LOGIC;
    \chirp_18_fu_128_reg[1]\ : out STD_LOGIC;
    \chirp_18_fu_128_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_wstate_reg[1]_0\ : out STD_LOGIC;
    s_axi_CTRL_RDATA : out STD_LOGIC_VECTOR ( 5 downto 0 );
    ap_clk : in STD_LOGIC;
    s_axi_CTRL_ARVALID : in STD_LOGIC;
    s_axi_CTRL_ARADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_CTRL_RREADY : in STD_LOGIC;
    s_axi_CTRL_WSTRB : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_CTRL_WVALID : in STD_LOGIC;
    s_axi_CTRL_WDATA : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_CTRL_BREADY : in STD_LOGIC;
    ap_enable_reg_pp0_iter2 : in STD_LOGIC;
    ap_enable_reg_pp0_iter5 : in STD_LOGIC;
    ap_enable_reg_pp0_iter3 : in STD_LOGIC;
    ap_enable_reg_pp0_iter9 : in STD_LOGIC;
    ap_enable_reg_pp0_iter8 : in STD_LOGIC;
    ap_enable_reg_pp0_iter10 : in STD_LOGIC;
    ap_enable_reg_pp0_iter7 : in STD_LOGIC;
    ap_enable_reg_pp0_iter4 : in STD_LOGIC;
    ap_enable_reg_pp0_iter6 : in STD_LOGIC;
    ap_enable_reg_pp0_iter1 : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_loop_init : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    int_ap_start_reg_1 : in STD_LOGIC;
    int_ap_start_reg_2 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \sample4_fu_124_reg[10]\ : in STD_LOGIC;
    \sample4_fu_124_reg[9]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \sample4_fu_124_reg[10]_0\ : in STD_LOGIC;
    icmp_ln53_reg_450 : in STD_LOGIC;
    icmp_ln57_reg_445 : in STD_LOGIC;
    \tx_word_last_reg_440_pp0_iter8_reg_reg[0]\ : in STD_LOGIC;
    \tx_word_last_reg_440_pp0_iter8_reg_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \sample4_fu_124_reg[8]\ : in STD_LOGIC;
    \chirp_18_fu_128_reg[1]_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \chirp_18_fu_128_reg[1]_2\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_AWVALID : in STD_LOGIC;
    int_task_ap_done_reg_0 : in STD_LOGIC;
    s_axi_CTRL_AWADDR : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_loop_exit_ready_pp0_iter10_reg : in STD_LOGIC;
    \int_isr_reg[0]_0\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen_CTRL_s_axi;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen_CTRL_s_axi is
  signal \^d\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \FSM_onehot_rstate[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rstate[2]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_rstate_reg[1]_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[3]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_wstate_reg[1]_0\ : STD_LOGIC;
  signal \^fsm_onehot_wstate_reg[2]_0\ : STD_LOGIC;
  signal \^ap_condition_exit_pp0_iter0_stage0\ : STD_LOGIC;
  signal ap_idle : STD_LOGIC;
  signal ap_loop_exit_ready_pp0_iter8_reg_reg_srl8_i_2_n_0 : STD_LOGIC;
  signal \^ap_rst_n_inv\ : STD_LOGIC;
  signal \^ap_start\ : STD_LOGIC;
  signal ar_hs : STD_LOGIC;
  signal auto_restart_status_i_1_n_0 : STD_LOGIC;
  signal auto_restart_status_reg_n_0 : STD_LOGIC;
  signal \^chirp_18_fu_128_reg[1]\ : STD_LOGIC;
  signal \icmp_ln53_reg_450[0]_i_2_n_0\ : STD_LOGIC;
  signal \icmp_ln53_reg_450[0]_i_3_n_0\ : STD_LOGIC;
  signal \icmp_ln57_reg_445[0]_i_5_n_0\ : STD_LOGIC;
  signal \icmp_ln57_reg_445[0]_i_6_n_0\ : STD_LOGIC;
  signal int_ap_idle_i_2_n_0 : STD_LOGIC;
  signal int_ap_idle_i_3_n_0 : STD_LOGIC;
  signal int_ap_ready : STD_LOGIC;
  signal int_ap_ready_i_1_n_0 : STD_LOGIC;
  signal int_ap_start5_out : STD_LOGIC;
  signal int_ap_start_i_1_n_0 : STD_LOGIC;
  signal \^int_ap_start_reg_0\ : STD_LOGIC;
  signal int_auto_restart_i_1_n_0 : STD_LOGIC;
  signal int_auto_restart_i_2_n_0 : STD_LOGIC;
  signal int_gie_i_1_n_0 : STD_LOGIC;
  signal int_gie_reg_n_0 : STD_LOGIC;
  signal int_ier10_out : STD_LOGIC;
  signal \int_ier_reg_n_0_[0]\ : STD_LOGIC;
  signal int_interrupt0 : STD_LOGIC;
  signal int_isr7_out : STD_LOGIC;
  signal \int_isr[0]_i_1_n_0\ : STD_LOGIC;
  signal \int_isr[1]_i_1_n_0\ : STD_LOGIC;
  signal \int_isr_reg_n_0_[0]\ : STD_LOGIC;
  signal \int_isr_reg_n_0_[1]\ : STD_LOGIC;
  signal int_task_ap_done : STD_LOGIC;
  signal int_task_ap_done_i_1_n_0 : STD_LOGIC;
  signal int_task_ap_done_i_2_n_0 : STD_LOGIC;
  signal \^interrupt\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \p_0_in__0\ : STD_LOGIC;
  signal rdata : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[9]_i_1_n_0\ : STD_LOGIC;
  signal \^s_axi_ctrl_bvalid\ : STD_LOGIC;
  signal \^s_axi_ctrl_rvalid\ : STD_LOGIC;
  signal \^sample4_fu_124_reg[2]\ : STD_LOGIC;
  signal \^select_ln53_fu_262_p3\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal waddr : STD_LOGIC;
  signal \waddr_reg_n_0_[2]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[3]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_rstate[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_onehot_rstate[2]_i_1\ : label is "soft_lutpair2";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_rstate_reg[1]\ : label is "RDIDLE:010,RDDATA:100,iSTATE:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rstate_reg[2]\ : label is "RDIDLE:010,RDDATA:100,iSTATE:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[1]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[2]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[3]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute SOFT_HLUTNM of ap_loop_init_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of int_auto_restart_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \int_isr[0]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \rdata[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \rdata[1]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \sample4_fu_124[10]_i_2\ : label is "soft_lutpair1";
begin
  D(4 downto 0) <= \^d\(4 downto 0);
  \FSM_onehot_rstate_reg[1]_0\ <= \^fsm_onehot_rstate_reg[1]_0\;
  \FSM_onehot_wstate_reg[1]_0\ <= \^fsm_onehot_wstate_reg[1]_0\;
  \FSM_onehot_wstate_reg[2]_0\ <= \^fsm_onehot_wstate_reg[2]_0\;
  ap_condition_exit_pp0_iter0_stage0 <= \^ap_condition_exit_pp0_iter0_stage0\;
  ap_rst_n_inv <= \^ap_rst_n_inv\;
  ap_start <= \^ap_start\;
  \chirp_18_fu_128_reg[1]\ <= \^chirp_18_fu_128_reg[1]\;
  int_ap_start_reg_0 <= \^int_ap_start_reg_0\;
  interrupt <= \^interrupt\;
  s_axi_CTRL_BVALID <= \^s_axi_ctrl_bvalid\;
  s_axi_CTRL_RVALID <= \^s_axi_ctrl_rvalid\;
  \sample4_fu_124_reg[2]\ <= \^sample4_fu_124_reg[2]\;
  select_ln53_fu_262_p3(6 downto 0) <= \^select_ln53_fu_262_p3\(6 downto 0);
\FSM_onehot_rstate[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BFB"
    )
        port map (
      I0 => s_axi_CTRL_RREADY,
      I1 => \^s_axi_ctrl_rvalid\,
      I2 => \^fsm_onehot_rstate_reg[1]_0\,
      I3 => s_axi_CTRL_ARVALID,
      O => \FSM_onehot_rstate[1]_i_1_n_0\
    );
\FSM_onehot_rstate[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => s_axi_CTRL_ARVALID,
      I1 => \^fsm_onehot_rstate_reg[1]_0\,
      I2 => s_axi_CTRL_RREADY,
      I3 => \^s_axi_ctrl_rvalid\,
      O => \FSM_onehot_rstate[2]_i_1_n_0\
    );
\FSM_onehot_rstate_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_rstate[1]_i_1_n_0\,
      Q => \^fsm_onehot_rstate_reg[1]_0\,
      R => \^ap_rst_n_inv\
    );
\FSM_onehot_rstate_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_rstate[2]_i_1_n_0\,
      Q => \^s_axi_ctrl_rvalid\,
      R => \^ap_rst_n_inv\
    );
\FSM_onehot_wstate[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BA30BA3F"
    )
        port map (
      I0 => s_axi_CTRL_BREADY,
      I1 => s_axi_CTRL_AWVALID,
      I2 => \^fsm_onehot_wstate_reg[1]_0\,
      I3 => \^s_axi_ctrl_bvalid\,
      I4 => \^fsm_onehot_wstate_reg[2]_0\,
      O => \FSM_onehot_wstate[1]_i_1_n_0\
    );
\FSM_onehot_wstate[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \^fsm_onehot_wstate_reg[1]_0\,
      I1 => s_axi_CTRL_AWVALID,
      I2 => s_axi_CTRL_WVALID,
      I3 => \^fsm_onehot_wstate_reg[2]_0\,
      O => \FSM_onehot_wstate[2]_i_1_n_0\
    );
\FSM_onehot_wstate[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => s_axi_CTRL_BREADY,
      I1 => \^s_axi_ctrl_bvalid\,
      I2 => s_axi_CTRL_WVALID,
      I3 => \^fsm_onehot_wstate_reg[2]_0\,
      O => \FSM_onehot_wstate[3]_i_1_n_0\
    );
\FSM_onehot_wstate_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_wstate[1]_i_1_n_0\,
      Q => \^fsm_onehot_wstate_reg[1]_0\,
      R => \^ap_rst_n_inv\
    );
\FSM_onehot_wstate_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_wstate[2]_i_1_n_0\,
      Q => \^fsm_onehot_wstate_reg[2]_0\,
      R => \^ap_rst_n_inv\
    );
\FSM_onehot_wstate_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_wstate[3]_i_1_n_0\,
      Q => \^s_axi_ctrl_bvalid\,
      R => \^ap_rst_n_inv\
    );
ap_loop_exit_ready_pp0_iter8_reg_reg_srl8_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000400000000"
    )
        port map (
      I0 => \icmp_ln53_reg_450[0]_i_3_n_0\,
      I1 => ap_loop_exit_ready_pp0_iter8_reg_reg_srl8_i_2_n_0,
      I2 => \icmp_ln53_reg_450[0]_i_2_n_0\,
      I3 => int_ap_start_reg_1,
      I4 => int_ap_start_reg_2,
      I5 => \^ap_start\,
      O => \^ap_condition_exit_pp0_iter0_stage0\
    );
ap_loop_exit_ready_pp0_iter8_reg_reg_srl8_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => Q(5),
      I1 => Q(10),
      I2 => Q(0),
      I3 => Q(8),
      O => ap_loop_exit_ready_pp0_iter8_reg_reg_srl8_i_2_n_0
    );
ap_loop_init_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BBFB"
    )
        port map (
      I0 => \^ap_condition_exit_pp0_iter0_stage0\,
      I1 => ap_rst_n,
      I2 => ap_loop_init,
      I3 => E(0),
      O => ap_rst_n_0
    );
auto_restart_status_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => p_0_in(7),
      I1 => ap_idle,
      I2 => auto_restart_status_reg_n_0,
      O => auto_restart_status_i_1_n_0
    );
auto_restart_status_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => auto_restart_status_i_1_n_0,
      Q => auto_restart_status_reg_n_0,
      R => \^ap_rst_n_inv\
    );
\chirp_18_fu_128[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0303F5FA0C0CF5FA"
    )
        port map (
      I0 => \chirp_18_fu_128_reg[1]_1\(1),
      I1 => \chirp_18_fu_128_reg[1]_2\(1),
      I2 => \^int_ap_start_reg_0\,
      I3 => \chirp_18_fu_128_reg[1]_1\(0),
      I4 => \sample4_fu_124_reg[8]\,
      I5 => \chirp_18_fu_128_reg[1]_2\(0),
      O => \chirp_18_fu_128_reg[1]_0\(0)
    );
\chirp_18_fu_128[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3F3F5FFFFFFF5FF"
    )
        port map (
      I0 => \chirp_18_fu_128_reg[1]_1\(1),
      I1 => \chirp_18_fu_128_reg[1]_2\(1),
      I2 => \^int_ap_start_reg_0\,
      I3 => \chirp_18_fu_128_reg[1]_1\(0),
      I4 => \sample4_fu_124_reg[8]\,
      I5 => \chirp_18_fu_128_reg[1]_2\(0),
      O => \^chirp_18_fu_128_reg[1]\
    );
\icmp_ln53_reg_450[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => \icmp_ln53_reg_450[0]_i_2_n_0\,
      I1 => Q(5),
      I2 => Q(10),
      I3 => Q(0),
      I4 => Q(8),
      I5 => \icmp_ln53_reg_450[0]_i_3_n_0\,
      O => icmp_ln53_fu_330_p2
    );
\icmp_ln53_reg_450[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => Q(1),
      I1 => Q(6),
      I2 => Q(2),
      I3 => Q(9),
      O => \icmp_ln53_reg_450[0]_i_2_n_0\
    );
\icmp_ln53_reg_450[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^ap_start\,
      I1 => ap_loop_init,
      I2 => Q(3),
      I3 => Q(11),
      I4 => Q(4),
      I5 => Q(7),
      O => \icmp_ln53_reg_450[0]_i_3_n_0\
    );
\icmp_ln57_reg_445[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002000000"
    )
        port map (
      I0 => \sample4_fu_124_reg[9]\(2),
      I1 => \icmp_ln57_reg_445[0]_i_5_n_0\,
      I2 => \^d\(0),
      I3 => \^select_ln53_fu_262_p3\(1),
      I4 => \^select_ln53_fu_262_p3\(2),
      I5 => \icmp_ln57_reg_445[0]_i_6_n_0\,
      O => \^sample4_fu_124_reg[2]\
    );
\icmp_ln57_reg_445[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFDDFFFFDDDD5555"
    )
        port map (
      I0 => \sample4_fu_124_reg[9]\(1),
      I1 => \^ap_start\,
      I2 => icmp_ln53_reg_450,
      I3 => ap_enable_reg_pp0_iter1,
      I4 => ap_loop_init,
      I5 => icmp_ln57_reg_445,
      O => \icmp_ln57_reg_445[0]_i_5_n_0\
    );
\icmp_ln57_reg_445[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFDDFFFFDDDD5555"
    )
        port map (
      I0 => \sample4_fu_124_reg[9]\(4),
      I1 => \^ap_start\,
      I2 => icmp_ln53_reg_450,
      I3 => ap_enable_reg_pp0_iter1,
      I4 => ap_loop_init,
      I5 => icmp_ln57_reg_445,
      O => \icmp_ln57_reg_445[0]_i_6_n_0\
    );
int_ap_idle_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter2,
      I1 => \^ap_start\,
      I2 => ap_enable_reg_pp0_iter5,
      I3 => int_ap_idle_i_2_n_0,
      I4 => int_ap_idle_i_3_n_0,
      O => ap_idle
    );
int_ap_idle_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter3,
      I1 => ap_enable_reg_pp0_iter9,
      I2 => ap_enable_reg_pp0_iter8,
      I3 => ap_enable_reg_pp0_iter10,
      O => int_ap_idle_i_2_n_0
    );
int_ap_idle_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter7,
      I1 => ap_enable_reg_pp0_iter4,
      I2 => ap_enable_reg_pp0_iter6,
      I3 => ap_enable_reg_pp0_iter1,
      O => int_ap_idle_i_3_n_0
    );
int_ap_idle_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_idle,
      Q => p_0_in(2),
      R => \^ap_rst_n_inv\
    );
int_ap_ready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7530"
    )
        port map (
      I0 => int_task_ap_done_i_2_n_0,
      I1 => p_0_in(7),
      I2 => \^ap_condition_exit_pp0_iter0_stage0\,
      I3 => int_ap_ready,
      O => int_ap_ready_i_1_n_0
    );
int_ap_ready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_ap_ready_i_1_n_0,
      Q => int_ap_ready,
      R => \^ap_rst_n_inv\
    );
int_ap_start_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBF8"
    )
        port map (
      I0 => p_0_in(7),
      I1 => \^ap_condition_exit_pp0_iter0_stage0\,
      I2 => int_ap_start5_out,
      I3 => \^ap_start\,
      O => int_ap_start_i_1_n_0
    );
int_ap_start_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000000000000"
    )
        port map (
      I0 => s_axi_CTRL_WDATA(0),
      I1 => s_axi_CTRL_WSTRB(0),
      I2 => \waddr_reg_n_0_[2]\,
      I3 => \waddr_reg_n_0_[3]\,
      I4 => s_axi_CTRL_WVALID,
      I5 => \^fsm_onehot_wstate_reg[2]_0\,
      O => int_ap_start5_out
    );
int_ap_start_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_ap_start_i_1_n_0,
      Q => \^ap_start\,
      R => \^ap_rst_n_inv\
    );
int_auto_restart_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00020000"
    )
        port map (
      I0 => s_axi_CTRL_WDATA(2),
      I1 => int_auto_restart_i_2_n_0,
      I2 => \waddr_reg_n_0_[3]\,
      I3 => \waddr_reg_n_0_[2]\,
      I4 => s_axi_CTRL_WSTRB(0),
      I5 => p_0_in(7),
      O => int_auto_restart_i_1_n_0
    );
int_auto_restart_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^fsm_onehot_wstate_reg[2]_0\,
      I1 => s_axi_CTRL_WVALID,
      O => int_auto_restart_i_2_n_0
    );
int_auto_restart_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_auto_restart_i_1_n_0,
      Q => p_0_in(7),
      R => \^ap_rst_n_inv\
    );
int_gie_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF02000000"
    )
        port map (
      I0 => s_axi_CTRL_WDATA(0),
      I1 => int_auto_restart_i_2_n_0,
      I2 => \waddr_reg_n_0_[3]\,
      I3 => \waddr_reg_n_0_[2]\,
      I4 => s_axi_CTRL_WSTRB(0),
      I5 => int_gie_reg_n_0,
      O => int_gie_i_1_n_0
    );
int_gie_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_gie_i_1_n_0,
      Q => int_gie_reg_n_0,
      R => \^ap_rst_n_inv\
    );
\int_ier[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => \waddr_reg_n_0_[2]\,
      I1 => s_axi_CTRL_WSTRB(0),
      I2 => \^fsm_onehot_wstate_reg[2]_0\,
      I3 => s_axi_CTRL_WVALID,
      I4 => \waddr_reg_n_0_[3]\,
      O => int_ier10_out
    );
\int_ier_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_ier10_out,
      D => s_axi_CTRL_WDATA(0),
      Q => \int_ier_reg_n_0_[0]\,
      R => \^ap_rst_n_inv\
    );
\int_ier_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_ier10_out,
      D => s_axi_CTRL_WDATA(1),
      Q => \p_0_in__0\,
      R => \^ap_rst_n_inv\
    );
int_interrupt_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => int_gie_reg_n_0,
      I1 => \int_isr_reg_n_0_[1]\,
      I2 => \int_isr_reg_n_0_[0]\,
      O => int_interrupt0
    );
int_interrupt_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_interrupt0,
      Q => \^interrupt\,
      R => \^ap_rst_n_inv\
    );
\int_isr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77F7777788F88888"
    )
        port map (
      I0 => s_axi_CTRL_WDATA(0),
      I1 => int_isr7_out,
      I2 => ap_loop_exit_ready_pp0_iter10_reg,
      I3 => \int_isr_reg[0]_0\,
      I4 => \int_ier_reg_n_0_[0]\,
      I5 => \int_isr_reg_n_0_[0]\,
      O => \int_isr[0]_i_1_n_0\
    );
\int_isr[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \^fsm_onehot_wstate_reg[2]_0\,
      I1 => s_axi_CTRL_WVALID,
      I2 => \waddr_reg_n_0_[3]\,
      I3 => \waddr_reg_n_0_[2]\,
      I4 => s_axi_CTRL_WSTRB(0),
      O => int_isr7_out
    );
\int_isr[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F777F888"
    )
        port map (
      I0 => s_axi_CTRL_WDATA(1),
      I1 => int_isr7_out,
      I2 => \^ap_condition_exit_pp0_iter0_stage0\,
      I3 => \p_0_in__0\,
      I4 => \int_isr_reg_n_0_[1]\,
      O => \int_isr[1]_i_1_n_0\
    );
\int_isr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \int_isr[0]_i_1_n_0\,
      Q => \int_isr_reg_n_0_[0]\,
      R => \^ap_rst_n_inv\
    );
\int_isr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \int_isr[1]_i_1_n_0\,
      Q => \int_isr_reg_n_0_[1]\,
      R => \^ap_rst_n_inv\
    );
int_task_ap_done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5DFD5D5D0CFC0C0C"
    )
        port map (
      I0 => int_task_ap_done_i_2_n_0,
      I1 => int_task_ap_done_reg_0,
      I2 => auto_restart_status_reg_n_0,
      I3 => p_0_in(2),
      I4 => ap_idle,
      I5 => int_task_ap_done,
      O => int_task_ap_done_i_1_n_0
    );
int_task_ap_done_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => s_axi_CTRL_ARVALID,
      I1 => \^fsm_onehot_rstate_reg[1]_0\,
      I2 => s_axi_CTRL_ARADDR(2),
      I3 => s_axi_CTRL_ARADDR(1),
      I4 => s_axi_CTRL_ARADDR(0),
      I5 => s_axi_CTRL_ARADDR(3),
      O => int_task_ap_done_i_2_n_0
    );
int_task_ap_done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_task_ap_done_i_1_n_0,
      Q => int_task_ap_done,
      R => \^ap_rst_n_inv\
    );
\rdata[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \rdata[0]_i_2_n_0\,
      I1 => s_axi_CTRL_ARADDR(1),
      I2 => s_axi_CTRL_ARADDR(0),
      O => rdata(0)
    );
\rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \int_isr_reg_n_0_[0]\,
      I1 => int_gie_reg_n_0,
      I2 => s_axi_CTRL_ARADDR(2),
      I3 => \int_ier_reg_n_0_[0]\,
      I4 => s_axi_CTRL_ARADDR(3),
      I5 => \^ap_start\,
      O => \rdata[0]_i_2_n_0\
    );
\rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CCE200E2"
    )
        port map (
      I0 => int_task_ap_done,
      I1 => s_axi_CTRL_ARADDR(3),
      I2 => \p_0_in__0\,
      I3 => s_axi_CTRL_ARADDR(2),
      I4 => \int_isr_reg_n_0_[1]\,
      I5 => \rdata[1]_i_2_n_0\,
      O => rdata(1)
    );
\rdata[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_axi_CTRL_ARADDR(0),
      I1 => s_axi_CTRL_ARADDR(1),
      O => \rdata[1]_i_2_n_0\
    );
\rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFE000000000000"
    )
        port map (
      I0 => s_axi_CTRL_ARADDR(2),
      I1 => s_axi_CTRL_ARADDR(1),
      I2 => s_axi_CTRL_ARADDR(0),
      I3 => s_axi_CTRL_ARADDR(3),
      I4 => s_axi_CTRL_ARVALID,
      I5 => \^fsm_onehot_rstate_reg[1]_0\,
      O => \rdata[9]_i_1_n_0\
    );
\rdata[9]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fsm_onehot_rstate_reg[1]_0\,
      I1 => s_axi_CTRL_ARVALID,
      O => ar_hs
    );
\rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(0),
      Q => s_axi_CTRL_RDATA(0),
      R => '0'
    );
\rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(1),
      Q => s_axi_CTRL_RDATA(1),
      R => '0'
    );
\rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => p_0_in(2),
      Q => s_axi_CTRL_RDATA(2),
      R => \rdata[9]_i_1_n_0\
    );
\rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => int_ap_ready,
      Q => s_axi_CTRL_RDATA(3),
      R => \rdata[9]_i_1_n_0\
    );
\rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => p_0_in(7),
      Q => s_axi_CTRL_RDATA(4),
      R => \rdata[9]_i_1_n_0\
    );
\rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \^interrupt\,
      Q => s_axi_CTRL_RDATA(5),
      R => \rdata[9]_i_1_n_0\
    );
\sample4_fu_124[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFDDFFFFDDDD5555"
    )
        port map (
      I0 => \sample4_fu_124_reg[9]\(0),
      I1 => \^ap_start\,
      I2 => icmp_ln53_reg_450,
      I3 => ap_enable_reg_pp0_iter1,
      I4 => ap_loop_init,
      I5 => icmp_ln57_reg_445,
      O => \^d\(0)
    );
\sample4_fu_124[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000800000007FFF"
    )
        port map (
      I0 => \sample4_fu_124_reg[10]\,
      I1 => \sample4_fu_124_reg[9]\(6),
      I2 => \^sample4_fu_124_reg[2]\,
      I3 => \^select_ln53_fu_262_p3\(4),
      I4 => \^int_ap_start_reg_0\,
      I5 => \sample4_fu_124_reg[10]_0\,
      O => \^d\(4)
    );
\sample4_fu_124[10]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^ap_start\,
      I1 => ap_loop_init,
      O => \^int_ap_start_reg_0\
    );
\sample4_fu_124[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"007F008000000000"
    )
        port map (
      I0 => \sample4_fu_124_reg[9]\(0),
      I1 => \sample4_fu_124_reg[9]\(1),
      I2 => \sample4_fu_124_reg[9]\(2),
      I3 => \^int_ap_start_reg_0\,
      I4 => \sample4_fu_124_reg[9]\(3),
      I5 => \sample4_fu_124_reg[8]\,
      O => \^d\(1)
    );
\sample4_fu_124[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006A00AA00"
    )
        port map (
      I0 => \sample4_fu_124_reg[9]\(8),
      I1 => \sample4_fu_124_reg[9]\(6),
      I2 => \^sample4_fu_124_reg[2]\,
      I3 => \sample4_fu_124_reg[8]\,
      I4 => \sample4_fu_124_reg[9]\(7),
      I5 => \^int_ap_start_reg_0\,
      O => \^d\(2)
    );
\sample4_fu_124[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \^select_ln53_fu_262_p3\(6),
      I1 => \^select_ln53_fu_262_p3\(4),
      I2 => \^sample4_fu_124_reg[2]\,
      I3 => \sample4_fu_124_reg[9]\(6),
      I4 => \^select_ln53_fu_262_p3\(5),
      O => \^d\(3)
    );
\state[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ap_rst_n,
      O => \^ap_rst_n_inv\
    );
\trunc_ln60_reg_435_pp0_iter5_reg_reg[2]_srl6_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000BF000F000F00"
    )
        port map (
      I0 => icmp_ln53_reg_450,
      I1 => ap_enable_reg_pp0_iter1,
      I2 => icmp_ln57_reg_445,
      I3 => \sample4_fu_124_reg[9]\(2),
      I4 => \^ap_start\,
      I5 => ap_loop_init,
      O => \^select_ln53_fu_262_p3\(0)
    );
\trunc_ln60_reg_435_pp0_iter5_reg_reg[3]_srl6_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000BF000F000F00"
    )
        port map (
      I0 => icmp_ln53_reg_450,
      I1 => ap_enable_reg_pp0_iter1,
      I2 => icmp_ln57_reg_445,
      I3 => \sample4_fu_124_reg[9]\(3),
      I4 => \^ap_start\,
      I5 => ap_loop_init,
      O => \^select_ln53_fu_262_p3\(1)
    );
\trunc_ln60_reg_435_pp0_iter5_reg_reg[5]_srl6_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000BF000F000F00"
    )
        port map (
      I0 => icmp_ln53_reg_450,
      I1 => ap_enable_reg_pp0_iter1,
      I2 => icmp_ln57_reg_445,
      I3 => \sample4_fu_124_reg[9]\(5),
      I4 => \^ap_start\,
      I5 => ap_loop_init,
      O => \^select_ln53_fu_262_p3\(2)
    );
\trunc_ln60_reg_435_pp0_iter5_reg_reg[6]_srl6_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5353135300000000"
    )
        port map (
      I0 => \^ap_start\,
      I1 => icmp_ln57_reg_445,
      I2 => ap_loop_init,
      I3 => ap_enable_reg_pp0_iter1,
      I4 => icmp_ln53_reg_450,
      I5 => \sample4_fu_124_reg[9]\(6),
      O => \^select_ln53_fu_262_p3\(3)
    );
\trunc_ln60_reg_435_pp0_iter5_reg_reg[7]_srl6_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000BF000F000F00"
    )
        port map (
      I0 => icmp_ln53_reg_450,
      I1 => ap_enable_reg_pp0_iter1,
      I2 => icmp_ln57_reg_445,
      I3 => \sample4_fu_124_reg[9]\(7),
      I4 => \^ap_start\,
      I5 => ap_loop_init,
      O => \^select_ln53_fu_262_p3\(4)
    );
\trunc_ln60_reg_435_pp0_iter5_reg_reg[8]_srl6_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000BF000F000F00"
    )
        port map (
      I0 => icmp_ln53_reg_450,
      I1 => ap_enable_reg_pp0_iter1,
      I2 => icmp_ln57_reg_445,
      I3 => \sample4_fu_124_reg[9]\(8),
      I4 => \^ap_start\,
      I5 => ap_loop_init,
      O => \^select_ln53_fu_262_p3\(5)
    );
\trunc_ln60_reg_435_pp0_iter5_reg_reg[9]_srl6_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000BF000F000F00"
    )
        port map (
      I0 => icmp_ln53_reg_450,
      I1 => ap_enable_reg_pp0_iter1,
      I2 => icmp_ln57_reg_445,
      I3 => \sample4_fu_124_reg[9]\(9),
      I4 => \^ap_start\,
      I5 => ap_loop_init,
      O => \^select_ln53_fu_262_p3\(6)
    );
\tx_word_last_reg_440_pp0_iter7_reg_reg[0]_srl8_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \^sample4_fu_124_reg[2]\,
      I1 => \^select_ln53_fu_262_p3\(6),
      I2 => \sample4_fu_124_reg[9]\(8),
      I3 => \tx_word_last_reg_440_pp0_iter8_reg_reg[0]\,
      I4 => \^chirp_18_fu_128_reg[1]\,
      I5 => \tx_word_last_reg_440_pp0_iter8_reg_reg[0]_0\(0),
      O => tx_word_last_fu_300_p2
    );
\waddr[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_CTRL_AWVALID,
      I1 => \^fsm_onehot_wstate_reg[1]_0\,
      O => waddr
    );
\waddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_CTRL_AWADDR(0),
      Q => \waddr_reg_n_0_[2]\,
      R => '0'
    );
\waddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_CTRL_AWADDR(1),
      Q => \waddr_reg_n_0_[3]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen_flow_control_loop_pipe is
  port (
    ap_loop_init : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 11 downto 0 );
    icmp_ln57_fu_318_p2 : out STD_LOGIC;
    \icmp_ln57_reg_445_reg[0]\ : out STD_LOGIC;
    \sample4_fu_124_reg[8]\ : out STD_LOGIC;
    ap_loop_init_reg_0 : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \icmp_ln57_reg_445_reg[0]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \chirp3_fu_120_reg[2]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ap_loop_init_reg_1 : out STD_LOGIC;
    \sample4_fu_124_reg[10]\ : out STD_LOGIC;
    \chirp3_fu_120_reg[2]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_loop_init_reg_2 : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 11 downto 0 );
    ap_start : in STD_LOGIC;
    \icmp_ln57_reg_445_reg[0]_1\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    select_ln53_fu_262_p3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \icmp_ln57_reg_445_reg[0]_2\ : in STD_LOGIC;
    \sample4_fu_124_reg[5]\ : in STD_LOGIC;
    icmp_ln57_reg_445 : in STD_LOGIC;
    ap_enable_reg_pp0_iter1 : in STD_LOGIC;
    icmp_ln53_reg_450 : in STD_LOGIC;
    \chirp3_fu_120_reg[2]_1\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \chirp3_fu_120_reg[2]_2\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \chirp_18_fu_128_reg[2]\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen_flow_control_loop_pipe;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen_flow_control_loop_pipe is
  signal \^ap_loop_init\ : STD_LOGIC;
  signal ap_sig_allocacmp_indvar_flatten2_load : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \^icmp_ln57_reg_445_reg[0]\ : STD_LOGIC;
  signal \indvar_flatten2_fu_116_reg[11]_i_2_n_6\ : STD_LOGIC;
  signal \indvar_flatten2_fu_116_reg[11]_i_2_n_7\ : STD_LOGIC;
  signal \indvar_flatten2_fu_116_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \indvar_flatten2_fu_116_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \indvar_flatten2_fu_116_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \indvar_flatten2_fu_116_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \indvar_flatten2_fu_116_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \indvar_flatten2_fu_116_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \indvar_flatten2_fu_116_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \indvar_flatten2_fu_116_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \sample4_fu_124[5]_i_2_n_0\ : STD_LOGIC;
  signal \^sample4_fu_124_reg[8]\ : STD_LOGIC;
  signal \NLW_indvar_flatten2_fu_116_reg[11]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \NLW_indvar_flatten2_fu_116_reg[11]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \chirp3_fu_120[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \chirp_18_fu_128[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \icmp_ln57_reg_445[0]_i_2\ : label is "soft_lutpair7";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \indvar_flatten2_fu_116_reg[11]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \indvar_flatten2_fu_116_reg[8]_i_1\ : label is 35;
  attribute SOFT_HLUTNM of \sample4_fu_124[10]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \sample4_fu_124[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \sample4_fu_124[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \sample4_fu_124[6]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \sample4_fu_124[7]_i_1\ : label is "soft_lutpair4";
begin
  ap_loop_init <= \^ap_loop_init\;
  \icmp_ln57_reg_445_reg[0]\ <= \^icmp_ln57_reg_445_reg[0]\;
  \sample4_fu_124_reg[8]\ <= \^sample4_fu_124_reg[8]\;
ap_loop_init_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_loop_init_reg_2,
      Q => \^ap_loop_init\,
      R => '0'
    );
\chirp3_fu_120[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77F800F8"
    )
        port map (
      I0 => ap_start,
      I1 => \^ap_loop_init\,
      I2 => \chirp3_fu_120_reg[2]_1\(0),
      I3 => \^icmp_ln57_reg_445_reg[0]\,
      I4 => \chirp3_fu_120_reg[2]_2\(0),
      O => \chirp3_fu_120_reg[2]\(0)
    );
\chirp3_fu_120[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77700070"
    )
        port map (
      I0 => ap_start,
      I1 => \^ap_loop_init\,
      I2 => \chirp3_fu_120_reg[2]_1\(1),
      I3 => \^icmp_ln57_reg_445_reg[0]\,
      I4 => \chirp3_fu_120_reg[2]_2\(1),
      O => \chirp3_fu_120_reg[2]\(1)
    );
\chirp3_fu_120[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00B8B8B8"
    )
        port map (
      I0 => \chirp3_fu_120_reg[2]_2\(2),
      I1 => \^icmp_ln57_reg_445_reg[0]\,
      I2 => \chirp3_fu_120_reg[2]_1\(2),
      I3 => \^ap_loop_init\,
      I4 => ap_start,
      O => \chirp3_fu_120_reg[2]\(2)
    );
\chirp_18_fu_128[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CC47"
    )
        port map (
      I0 => \chirp3_fu_120_reg[2]_2\(0),
      I1 => \^icmp_ln57_reg_445_reg[0]\,
      I2 => \chirp3_fu_120_reg[2]_1\(0),
      I3 => \^ap_loop_init\,
      O => \chirp3_fu_120_reg[2]_0\(0)
    );
\chirp_18_fu_128[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00B8FF47"
    )
        port map (
      I0 => \chirp3_fu_120_reg[2]_2\(2),
      I1 => \^icmp_ln57_reg_445_reg[0]\,
      I2 => \chirp3_fu_120_reg[2]_1\(2),
      I3 => \^ap_loop_init\,
      I4 => \chirp_18_fu_128_reg[2]\,
      O => \chirp3_fu_120_reg[2]_0\(1)
    );
\icmp_ln57_reg_445[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7000000000000000"
    )
        port map (
      I0 => \^icmp_ln57_reg_445_reg[0]\,
      I1 => \icmp_ln57_reg_445_reg[0]_1\(10),
      I2 => select_ln53_fu_262_p3(0),
      I3 => \icmp_ln57_reg_445_reg[0]_2\,
      I4 => \icmp_ln57_reg_445_reg[0]_1\(6),
      I5 => \^sample4_fu_124_reg[8]\,
      O => icmp_ln57_fu_318_p2
    );
\icmp_ln57_reg_445[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DD5D"
    )
        port map (
      I0 => icmp_ln57_reg_445,
      I1 => \^ap_loop_init\,
      I2 => ap_enable_reg_pp0_iter1,
      I3 => icmp_ln53_reg_450,
      O => \^icmp_ln57_reg_445_reg[0]\
    );
\icmp_ln57_reg_445[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2A000000"
    )
        port map (
      I0 => \icmp_ln57_reg_445_reg[0]_1\(8),
      I1 => \^ap_loop_init\,
      I2 => ap_start,
      I3 => \icmp_ln57_reg_445_reg[0]_1\(9),
      I4 => \^icmp_ln57_reg_445_reg[0]\,
      O => \^sample4_fu_124_reg[8]\
    );
\indvar_flatten2_fu_116[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^ap_loop_init\,
      I1 => Q(0),
      O => D(0)
    );
\indvar_flatten2_fu_116[11]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => Q(11),
      I1 => \^ap_loop_init\,
      I2 => ap_start,
      O => ap_sig_allocacmp_indvar_flatten2_load(11)
    );
\indvar_flatten2_fu_116[11]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => Q(10),
      I1 => \^ap_loop_init\,
      I2 => ap_start,
      O => ap_sig_allocacmp_indvar_flatten2_load(10)
    );
\indvar_flatten2_fu_116[11]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => Q(9),
      I1 => \^ap_loop_init\,
      I2 => ap_start,
      O => ap_sig_allocacmp_indvar_flatten2_load(9)
    );
\indvar_flatten2_fu_116[8]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => Q(1),
      I1 => \^ap_loop_init\,
      I2 => ap_start,
      O => ap_sig_allocacmp_indvar_flatten2_load(1)
    );
\indvar_flatten2_fu_116[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => Q(0),
      I1 => \^ap_loop_init\,
      I2 => ap_start,
      O => ap_sig_allocacmp_indvar_flatten2_load(0)
    );
\indvar_flatten2_fu_116[8]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => Q(8),
      I1 => \^ap_loop_init\,
      I2 => ap_start,
      O => ap_sig_allocacmp_indvar_flatten2_load(8)
    );
\indvar_flatten2_fu_116[8]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => Q(7),
      I1 => \^ap_loop_init\,
      I2 => ap_start,
      O => ap_sig_allocacmp_indvar_flatten2_load(7)
    );
\indvar_flatten2_fu_116[8]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => Q(6),
      I1 => \^ap_loop_init\,
      I2 => ap_start,
      O => ap_sig_allocacmp_indvar_flatten2_load(6)
    );
\indvar_flatten2_fu_116[8]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => Q(5),
      I1 => \^ap_loop_init\,
      I2 => ap_start,
      O => ap_sig_allocacmp_indvar_flatten2_load(5)
    );
\indvar_flatten2_fu_116[8]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => Q(4),
      I1 => \^ap_loop_init\,
      I2 => ap_start,
      O => ap_sig_allocacmp_indvar_flatten2_load(4)
    );
\indvar_flatten2_fu_116[8]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => Q(3),
      I1 => \^ap_loop_init\,
      I2 => ap_start,
      O => ap_sig_allocacmp_indvar_flatten2_load(3)
    );
\indvar_flatten2_fu_116[8]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => Q(2),
      I1 => \^ap_loop_init\,
      I2 => ap_start,
      O => ap_sig_allocacmp_indvar_flatten2_load(2)
    );
\indvar_flatten2_fu_116_reg[11]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \indvar_flatten2_fu_116_reg[8]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 2) => \NLW_indvar_flatten2_fu_116_reg[11]_i_2_CO_UNCONNECTED\(7 downto 2),
      CO(1) => \indvar_flatten2_fu_116_reg[11]_i_2_n_6\,
      CO(0) => \indvar_flatten2_fu_116_reg[11]_i_2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 3) => \NLW_indvar_flatten2_fu_116_reg[11]_i_2_O_UNCONNECTED\(7 downto 3),
      O(2 downto 0) => D(11 downto 9),
      S(7 downto 3) => B"00000",
      S(2 downto 0) => ap_sig_allocacmp_indvar_flatten2_load(11 downto 9)
    );
\indvar_flatten2_fu_116_reg[8]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => ap_sig_allocacmp_indvar_flatten2_load(0),
      CI_TOP => '0',
      CO(7) => \indvar_flatten2_fu_116_reg[8]_i_1_n_0\,
      CO(6) => \indvar_flatten2_fu_116_reg[8]_i_1_n_1\,
      CO(5) => \indvar_flatten2_fu_116_reg[8]_i_1_n_2\,
      CO(4) => \indvar_flatten2_fu_116_reg[8]_i_1_n_3\,
      CO(3) => \indvar_flatten2_fu_116_reg[8]_i_1_n_4\,
      CO(2) => \indvar_flatten2_fu_116_reg[8]_i_1_n_5\,
      CO(1) => \indvar_flatten2_fu_116_reg[8]_i_1_n_6\,
      CO(0) => \indvar_flatten2_fu_116_reg[8]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => D(8 downto 1),
      S(7 downto 0) => ap_sig_allocacmp_indvar_flatten2_load(8 downto 1)
    );
\sample4_fu_124[10]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"75FF5555"
    )
        port map (
      I0 => \icmp_ln57_reg_445_reg[0]_1\(10),
      I1 => icmp_ln53_reg_450,
      I2 => ap_enable_reg_pp0_iter1,
      I3 => \^ap_loop_init\,
      I4 => icmp_ln57_reg_445,
      O => \sample4_fu_124_reg[10]\
    );
\sample4_fu_124[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0408"
    )
        port map (
      I0 => \icmp_ln57_reg_445_reg[0]_1\(0),
      I1 => \^icmp_ln57_reg_445_reg[0]\,
      I2 => \^ap_loop_init\,
      I3 => \icmp_ln57_reg_445_reg[0]_1\(1),
      O => ap_loop_init_reg_0(0)
    );
\sample4_fu_124[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"040C0800"
    )
        port map (
      I0 => \icmp_ln57_reg_445_reg[0]_1\(0),
      I1 => \^icmp_ln57_reg_445_reg[0]\,
      I2 => \^ap_loop_init\,
      I3 => \icmp_ln57_reg_445_reg[0]_1\(1),
      I4 => \icmp_ln57_reg_445_reg[0]_1\(2),
      O => ap_loop_init_reg_0(1)
    );
\sample4_fu_124[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00700080"
    )
        port map (
      I0 => \icmp_ln57_reg_445_reg[0]_1\(3),
      I1 => \sample4_fu_124[5]_i_2_n_0\,
      I2 => \^icmp_ln57_reg_445_reg[0]\,
      I3 => \^ap_loop_init\,
      I4 => \icmp_ln57_reg_445_reg[0]_1\(4),
      O => ap_loop_init_reg_0(2)
    );
\sample4_fu_124[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"060A00000A0A0000"
    )
        port map (
      I0 => \icmp_ln57_reg_445_reg[0]_1\(5),
      I1 => \sample4_fu_124[5]_i_2_n_0\,
      I2 => \sample4_fu_124_reg[5]\,
      I3 => \icmp_ln57_reg_445_reg[0]_1\(3),
      I4 => \^icmp_ln57_reg_445_reg[0]\,
      I5 => \icmp_ln57_reg_445_reg[0]_1\(4),
      O => ap_loop_init_reg_0(3)
    );
\sample4_fu_124[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0888000000000000"
    )
        port map (
      I0 => \icmp_ln57_reg_445_reg[0]_1\(2),
      I1 => \icmp_ln57_reg_445_reg[0]_1\(1),
      I2 => ap_start,
      I3 => \^ap_loop_init\,
      I4 => \^icmp_ln57_reg_445_reg[0]\,
      I5 => \icmp_ln57_reg_445_reg[0]_1\(0),
      O => \sample4_fu_124[5]_i_2_n_0\
    );
\sample4_fu_124[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA6A"
    )
        port map (
      I0 => \icmp_ln57_reg_445_reg[0]_2\,
      I1 => \icmp_ln57_reg_445_reg[0]_1\(6),
      I2 => \^icmp_ln57_reg_445_reg[0]\,
      I3 => \^ap_loop_init\,
      O => ap_loop_init_reg_0(4)
    );
\sample4_fu_124[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BF404040"
    )
        port map (
      I0 => \^ap_loop_init\,
      I1 => \icmp_ln57_reg_445_reg[0]_1\(7),
      I2 => \^icmp_ln57_reg_445_reg[0]\,
      I3 => \icmp_ln57_reg_445_reg[0]_2\,
      I4 => \icmp_ln57_reg_445_reg[0]_1\(6),
      O => ap_loop_init_reg_0(5)
    );
\trunc_ln60_reg_435_pp0_iter5_reg_reg[0]_srl6_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111DD5D00000000"
    )
        port map (
      I0 => icmp_ln57_reg_445,
      I1 => \^ap_loop_init\,
      I2 => ap_enable_reg_pp0_iter1,
      I3 => icmp_ln53_reg_450,
      I4 => ap_start,
      I5 => \icmp_ln57_reg_445_reg[0]_1\(0),
      O => \icmp_ln57_reg_445_reg[0]_0\(0)
    );
\trunc_ln60_reg_435_pp0_iter5_reg_reg[1]_srl6_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111DD5D00000000"
    )
        port map (
      I0 => icmp_ln57_reg_445,
      I1 => \^ap_loop_init\,
      I2 => ap_enable_reg_pp0_iter1,
      I3 => icmp_ln53_reg_450,
      I4 => ap_start,
      I5 => \icmp_ln57_reg_445_reg[0]_1\(1),
      O => \icmp_ln57_reg_445_reg[0]_0\(1)
    );
\trunc_ln60_reg_435_pp0_iter5_reg_reg[4]_srl6_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111DD5D00000000"
    )
        port map (
      I0 => icmp_ln57_reg_445,
      I1 => \^ap_loop_init\,
      I2 => ap_enable_reg_pp0_iter1,
      I3 => icmp_ln53_reg_450,
      I4 => ap_start,
      I5 => \icmp_ln57_reg_445_reg[0]_1\(4),
      O => \icmp_ln57_reg_445_reg[0]_0\(2)
    );
\tx_word_last_reg_440_pp0_iter7_reg_reg[0]_srl8_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000070000000"
    )
        port map (
      I0 => \^ap_loop_init\,
      I1 => ap_start,
      I2 => \icmp_ln57_reg_445_reg[0]_1\(7),
      I3 => \icmp_ln57_reg_445_reg[0]_1\(6),
      I4 => \^icmp_ln57_reg_445_reg[0]\,
      I5 => \icmp_ln57_reg_445_reg[0]_1\(10),
      O => ap_loop_init_reg_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen_mac_muladd_10ns_3ns_10ns_12_4_1_DSP48_0 is
  port (
    P : out STD_LOGIC_VECTOR ( 11 downto 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk_0 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    ap_clk_1 : out STD_LOGIC;
    ap_clk_2 : out STD_LOGIC;
    ap_block_pp0_stage0_subdone : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    C : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \data_p1_reg[19]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \data_p1_reg[19]_0\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen_mac_muladd_10ns_3ns_10ns_12_4_1_DSP48_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen_mac_muladd_10ns_3ns_10ns_12_4_1_DSP48_0 is
  signal \^p\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \^ap_clk_1\ : STD_LOGIC;
  signal \^ap_clk_2\ : STD_LOGIC;
  signal NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_p_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_p_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_p_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 12 );
  signal NLW_p_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_p_reg_reg_XOROUT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of p_reg_reg : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \q_val_reg_469[11]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \q_val_reg_469[12]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \q_val_reg_469[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \q_val_reg_469[2]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \q_val_reg_469[3]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \q_val_reg_469[4]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \q_val_reg_469[6]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \q_val_reg_469[7]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \q_val_reg_469[8]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \q_val_reg_469[9]_i_1\ : label is "soft_lutpair8";
begin
  P(11 downto 0) <= \^p\(11 downto 0);
  ap_clk_1 <= \^ap_clk_1\;
  ap_clk_2 <= \^ap_clk_2\;
\data_p1[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B8B8B8B8B8B8BB8"
    )
        port map (
      I0 => \data_p1_reg[19]\(0),
      I1 => \data_p1_reg[19]_0\,
      I2 => \^p\(3),
      I3 => \^p\(0),
      I4 => \^p\(1),
      I5 => \^p\(2),
      O => D(0)
    );
\data_p1[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \^p\(5),
      I1 => \^p\(3),
      I2 => \^p\(0),
      I3 => \^p\(1),
      I4 => \^p\(2),
      I5 => \^p\(4),
      O => \^ap_clk_1\
    );
\data_p1[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^p\(10),
      I1 => \^p\(8),
      I2 => \^p\(6),
      I3 => \^ap_clk_1\,
      I4 => \^p\(7),
      I5 => \^p\(9),
      O => \^ap_clk_2\
    );
p_reg_reg: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 2,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 2,
      AUTORESET_PATDET => "NO_RESET",
      AUTORESET_PRIORITY => "RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BMULTSEL => "B",
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREADDINSEL => "A",
      PREG => 1,
      RND => X"000000000000",
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48",
      USE_WIDEXOR => "FALSE",
      XORSIMD => "XOR24_48_96"
    )
        port map (
      A(29 downto 3) => B"000000000000000000000000000",
      A(2 downto 0) => Q(2 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_p_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"000000001111101000",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_p_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 10) => B"00000000000000000000000000000000000000",
      C(9 downto 0) => C(9 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_p_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => ap_block_pp0_stage0_subdone,
      CEA2 => ap_block_pp0_stage0_subdone,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => ap_block_pp0_stage0_subdone,
      CEC => ap_block_pp0_stage0_subdone,
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => ap_block_pp0_stage0_subdone,
      CEP => ap_block_pp0_stage0_subdone,
      CLK => ap_clk,
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(8 downto 0) => B"000110101",
      OVERFLOW => NLW_p_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 12) => NLW_p_reg_reg_P_UNCONNECTED(47 downto 12),
      P(11 downto 0) => \^p\(11 downto 0),
      PATTERNBDETECT => NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_p_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_p_reg_reg_UNDERFLOW_UNCONNECTED,
      XOROUT(7 downto 0) => NLW_p_reg_reg_XOROUT_UNCONNECTED(7 downto 0)
    );
\q_val_reg_469[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555555556"
    )
        port map (
      I0 => \^p\(10),
      I1 => \^p\(8),
      I2 => \^p\(6),
      I3 => \^ap_clk_1\,
      I4 => \^p\(7),
      I5 => \^p\(9),
      O => ap_clk_0(9)
    );
\q_val_reg_469[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^p\(11),
      I1 => \^ap_clk_2\,
      O => ap_clk_0(10)
    );
\q_val_reg_469[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^p\(11),
      I1 => \^ap_clk_2\,
      O => ap_clk_0(11)
    );
\q_val_reg_469[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^p\(0),
      I1 => \^p\(1),
      O => ap_clk_0(0)
    );
\q_val_reg_469[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"56"
    )
        port map (
      I0 => \^p\(2),
      I1 => \^p\(1),
      I2 => \^p\(0),
      O => ap_clk_0(1)
    );
\q_val_reg_469[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5556"
    )
        port map (
      I0 => \^p\(3),
      I1 => \^p\(0),
      I2 => \^p\(1),
      I3 => \^p\(2),
      O => ap_clk_0(2)
    );
\q_val_reg_469[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555556"
    )
        port map (
      I0 => \^p\(4),
      I1 => \^p\(2),
      I2 => \^p\(1),
      I3 => \^p\(0),
      I4 => \^p\(3),
      O => ap_clk_0(3)
    );
\q_val_reg_469[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555555556"
    )
        port map (
      I0 => \^p\(5),
      I1 => \^p\(3),
      I2 => \^p\(0),
      I3 => \^p\(1),
      I4 => \^p\(2),
      I5 => \^p\(4),
      O => ap_clk_0(4)
    );
\q_val_reg_469[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^p\(6),
      I1 => \^ap_clk_1\,
      O => ap_clk_0(5)
    );
\q_val_reg_469[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"56"
    )
        port map (
      I0 => \^p\(7),
      I1 => \^ap_clk_1\,
      I2 => \^p\(6),
      O => ap_clk_0(6)
    );
\q_val_reg_469[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5556"
    )
        port map (
      I0 => \^p\(8),
      I1 => \^p\(6),
      I2 => \^ap_clk_1\,
      I3 => \^p\(7),
      O => ap_clk_0(7)
    );
\q_val_reg_469[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555556"
    )
        port map (
      I0 => \^p\(9),
      I1 => \^p\(7),
      I2 => \^ap_clk_1\,
      I3 => \^p\(6),
      I4 => \^p\(8),
      O => ap_clk_0(8)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen_regslice_both is
  port (
    ap_loop_exit_ready_pp0_iter10_reg_reg : out STD_LOGIC;
    ap_enable_reg_pp0_iter9_reg : out STD_LOGIC;
    ap_block_pp0_stage0_subdone : out STD_LOGIC;
    m_axis_tx_TVALID_int_regslice : out STD_LOGIC;
    m_axis_tx_TVALID : out STD_LOGIC;
    \FSM_sequential_state_reg[1]_0\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_state_reg[1]_1\ : out STD_LOGIC;
    ap_enable_reg_pp0_iter10_reg : out STD_LOGIC;
    ack_in_t_reg_0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tx_TDATA : out STD_LOGIC_VECTOR ( 23 downto 0 );
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_loop_exit_ready_pp0_iter10_reg : in STD_LOGIC;
    ap_loop_exit_ready_pp0_iter9_reg : in STD_LOGIC;
    m_axis_tx_TREADY : in STD_LOGIC;
    ap_enable_reg_pp0_iter10 : in STD_LOGIC;
    ap_enable_reg_pp0_iter9 : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    P : in STD_LOGIC_VECTOR ( 11 downto 0 );
    D : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \data_p1_reg[22]_0\ : in STD_LOGIC;
    \data_p1_reg[27]_0\ : in STD_LOGIC;
    \data_p1_reg[19]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen_regslice_both;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen_regslice_both is
  signal \^fsm_sequential_state_reg[1]_0\ : STD_LOGIC;
  signal \^fsm_sequential_state_reg[1]_1\ : STD_LOGIC;
  signal ack_in_t_i_1_n_0 : STD_LOGIC;
  signal \^ap_enable_reg_pp0_iter9_reg\ : STD_LOGIC;
  signal \data_p1[10]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[11]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[16]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[17]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[18]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[1]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[20]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[21]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[22]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[23]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[24]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[25]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[26]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[27]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[2]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[31]_i_2_n_0\ : STD_LOGIC;
  signal \data_p1[3]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[4]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[5]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[6]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[7]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[8]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[9]_i_1_n_0\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[10]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[11]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[16]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[17]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[18]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[1]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[20]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[21]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[22]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[23]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[24]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[25]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[26]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[27]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[2]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[31]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[3]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[4]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[5]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[6]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[7]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[8]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[9]\ : STD_LOGIC;
  signal load_p1 : STD_LOGIC;
  signal m_axis_tx_TREADY_int_regslice : STD_LOGIC;
  signal \^m_axis_tx_tvalid\ : STD_LOGIC;
  signal \^m_axis_tx_tvalid_int_regslice\ : STD_LOGIC;
  signal \next__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \state[0]_i_2_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \zext_ln62_reg_464[11]_i_2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1\ : label is "soft_lutpair16";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute SOFT_HLUTNM of ack_in_t_i_1 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of ap_loop_exit_ready_pp0_iter10_reg_i_1 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of ap_loop_exit_ready_pp0_iter8_reg_reg_srl8_i_3 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \data_p1[19]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \data_p1[27]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \indvar_flatten2_fu_116[11]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \indvar_flatten2_fu_116[11]_i_3\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \q_val_reg_469[12]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \zext_ln62_reg_464[11]_i_2\ : label is "soft_lutpair15";
begin
  \FSM_sequential_state_reg[1]_0\ <= \^fsm_sequential_state_reg[1]_0\;
  \FSM_sequential_state_reg[1]_1\ <= \^fsm_sequential_state_reg[1]_1\;
  ap_enable_reg_pp0_iter9_reg <= \^ap_enable_reg_pp0_iter9_reg\;
  m_axis_tx_TVALID <= \^m_axis_tx_tvalid\;
  m_axis_tx_TVALID_int_regslice <= \^m_axis_tx_tvalid_int_regslice\;
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F4FF"
    )
        port map (
      I0 => \^m_axis_tx_tvalid_int_regslice\,
      I1 => \state__0\(0),
      I2 => m_axis_tx_TREADY,
      I3 => \state__0\(1),
      O => \next__0\(0)
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D8F8"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \^m_axis_tx_tvalid_int_regslice\,
      I2 => \state__0\(1),
      I3 => m_axis_tx_TREADY,
      O => \next__0\(1)
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \next__0\(0),
      Q => \state__0\(0),
      S => ap_rst_n_inv
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \next__0\(1),
      Q => \state__0\(1),
      R => ap_rst_n_inv
    );
ack_in_t_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7F3C0C"
    )
        port map (
      I0 => \^m_axis_tx_tvalid_int_regslice\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => m_axis_tx_TREADY,
      I4 => m_axis_tx_TREADY_int_regslice,
      O => ack_in_t_i_1_n_0
    );
ack_in_t_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ack_in_t_i_1_n_0,
      Q => m_axis_tx_TREADY_int_regslice,
      R => ap_rst_n_inv
    );
ap_loop_exit_ready_pp0_iter10_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ap_loop_exit_ready_pp0_iter10_reg,
      I1 => \^ap_enable_reg_pp0_iter9_reg\,
      I2 => ap_loop_exit_ready_pp0_iter9_reg,
      O => ap_loop_exit_ready_pp0_iter10_reg_reg
    );
ap_loop_exit_ready_pp0_iter8_reg_reg_srl8_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => m_axis_tx_TREADY_int_regslice,
      I1 => ap_enable_reg_pp0_iter10,
      I2 => ap_enable_reg_pp0_iter9,
      O => ack_in_t_reg_0
    );
\data_p1[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[10]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => P(10),
      O => \data_p1[10]_i_1_n_0\
    );
\data_p1[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[11]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => P(11),
      O => \data_p1[11]_i_1_n_0\
    );
\data_p1[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[16]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => P(0),
      O => \data_p1[16]_i_1_n_0\
    );
\data_p1[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08FBFB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[17]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => P(0),
      I4 => P(1),
      O => \data_p1[17]_i_1_n_0\
    );
\data_p1[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08FB08FB08FBFB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[18]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => P(2),
      I4 => P(1),
      I5 => P(0),
      O => \data_p1[18]_i_1_n_0\
    );
\data_p1[19]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(0),
      O => \^fsm_sequential_state_reg[1]_0\
    );
\data_p1[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[1]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => P(1),
      O => \data_p1[1]_i_1_n_0\
    );
\data_p1[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[20]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(3),
      O => \data_p1[20]_i_1_n_0\
    );
\data_p1[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[21]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(4),
      O => \data_p1[21]_i_1_n_0\
    );
\data_p1[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08FBFB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[22]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => P(6),
      I4 => \data_p1_reg[22]_0\,
      O => \data_p1[22]_i_1_n_0\
    );
\data_p1[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08FB08FB08FBFB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[23]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => P(7),
      I4 => \data_p1_reg[22]_0\,
      I5 => P(6),
      O => \data_p1[23]_i_1_n_0\
    );
\data_p1[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[24]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(7),
      O => \data_p1[24]_i_1_n_0\
    );
\data_p1[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[25]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(8),
      O => \data_p1[25]_i_1_n_0\
    );
\data_p1[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[26]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(9),
      O => \data_p1[26]_i_1_n_0\
    );
\data_p1[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB0808FB"
    )
        port map (
      I0 => \data_p2_reg_n_0_[27]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => P(11),
      I4 => \data_p1_reg[27]_0\,
      O => \data_p1[27]_i_1_n_0\
    );
\data_p1[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[2]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => P(2),
      O => \data_p1[2]_i_1_n_0\
    );
\data_p1[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D088"
    )
        port map (
      I0 => \state__0\(1),
      I1 => m_axis_tx_TREADY,
      I2 => \^m_axis_tx_tvalid_int_regslice\,
      I3 => \state__0\(0),
      O => load_p1
    );
\data_p1[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB08FBFB"
    )
        port map (
      I0 => \data_p2_reg_n_0_[31]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => P(11),
      I4 => \data_p1_reg[27]_0\,
      O => \data_p1[31]_i_2_n_0\
    );
\data_p1[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[3]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => P(3),
      O => \data_p1[3]_i_1_n_0\
    );
\data_p1[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[4]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => P(4),
      O => \data_p1[4]_i_1_n_0\
    );
\data_p1[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[5]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => P(5),
      O => \data_p1[5]_i_1_n_0\
    );
\data_p1[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[6]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => P(6),
      O => \data_p1[6]_i_1_n_0\
    );
\data_p1[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[7]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => P(7),
      O => \data_p1[7]_i_1_n_0\
    );
\data_p1[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[8]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => P(8),
      O => \data_p1[8]_i_1_n_0\
    );
\data_p1[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[9]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => P(9),
      O => \data_p1[9]_i_1_n_0\
    );
\data_p1_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[10]_i_1_n_0\,
      Q => m_axis_tx_TDATA(9),
      R => '0'
    );
\data_p1_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[11]_i_1_n_0\,
      Q => m_axis_tx_TDATA(10),
      R => '0'
    );
\data_p1_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[16]_i_1_n_0\,
      Q => m_axis_tx_TDATA(11),
      R => '0'
    );
\data_p1_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[17]_i_1_n_0\,
      Q => m_axis_tx_TDATA(12),
      R => '0'
    );
\data_p1_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[18]_i_1_n_0\,
      Q => m_axis_tx_TDATA(13),
      R => '0'
    );
\data_p1_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1_reg[19]_0\(0),
      Q => m_axis_tx_TDATA(14),
      R => '0'
    );
\data_p1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[1]_i_1_n_0\,
      Q => m_axis_tx_TDATA(0),
      R => '0'
    );
\data_p1_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[20]_i_1_n_0\,
      Q => m_axis_tx_TDATA(15),
      R => '0'
    );
\data_p1_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[21]_i_1_n_0\,
      Q => m_axis_tx_TDATA(16),
      R => '0'
    );
\data_p1_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[22]_i_1_n_0\,
      Q => m_axis_tx_TDATA(17),
      R => '0'
    );
\data_p1_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[23]_i_1_n_0\,
      Q => m_axis_tx_TDATA(18),
      R => '0'
    );
\data_p1_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[24]_i_1_n_0\,
      Q => m_axis_tx_TDATA(19),
      R => '0'
    );
\data_p1_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[25]_i_1_n_0\,
      Q => m_axis_tx_TDATA(20),
      R => '0'
    );
\data_p1_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[26]_i_1_n_0\,
      Q => m_axis_tx_TDATA(21),
      R => '0'
    );
\data_p1_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[27]_i_1_n_0\,
      Q => m_axis_tx_TDATA(22),
      R => '0'
    );
\data_p1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[2]_i_1_n_0\,
      Q => m_axis_tx_TDATA(1),
      R => '0'
    );
\data_p1_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[31]_i_2_n_0\,
      Q => m_axis_tx_TDATA(23),
      R => '0'
    );
\data_p1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[3]_i_1_n_0\,
      Q => m_axis_tx_TDATA(2),
      R => '0'
    );
\data_p1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[4]_i_1_n_0\,
      Q => m_axis_tx_TDATA(3),
      R => '0'
    );
\data_p1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[5]_i_1_n_0\,
      Q => m_axis_tx_TDATA(4),
      R => '0'
    );
\data_p1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[6]_i_1_n_0\,
      Q => m_axis_tx_TDATA(5),
      R => '0'
    );
\data_p1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[7]_i_1_n_0\,
      Q => m_axis_tx_TDATA(6),
      R => '0'
    );
\data_p1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[8]_i_1_n_0\,
      Q => m_axis_tx_TDATA(7),
      R => '0'
    );
\data_p1_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[9]_i_1_n_0\,
      Q => m_axis_tx_TDATA(8),
      R => '0'
    );
\data_p2_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^m_axis_tx_tvalid_int_regslice\,
      D => P(10),
      Q => \data_p2_reg_n_0_[10]\,
      R => '0'
    );
\data_p2_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^m_axis_tx_tvalid_int_regslice\,
      D => P(11),
      Q => \data_p2_reg_n_0_[11]\,
      R => '0'
    );
\data_p2_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^m_axis_tx_tvalid_int_regslice\,
      D => P(0),
      Q => \data_p2_reg_n_0_[16]\,
      R => '0'
    );
\data_p2_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^m_axis_tx_tvalid_int_regslice\,
      D => D(0),
      Q => \data_p2_reg_n_0_[17]\,
      R => '0'
    );
\data_p2_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^m_axis_tx_tvalid_int_regslice\,
      D => D(1),
      Q => \data_p2_reg_n_0_[18]\,
      R => '0'
    );
\data_p2_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^m_axis_tx_tvalid_int_regslice\,
      D => D(2),
      Q => Q(0),
      R => '0'
    );
\data_p2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^m_axis_tx_tvalid_int_regslice\,
      D => P(1),
      Q => \data_p2_reg_n_0_[1]\,
      R => '0'
    );
\data_p2_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^m_axis_tx_tvalid_int_regslice\,
      D => D(3),
      Q => \data_p2_reg_n_0_[20]\,
      R => '0'
    );
\data_p2_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^m_axis_tx_tvalid_int_regslice\,
      D => D(4),
      Q => \data_p2_reg_n_0_[21]\,
      R => '0'
    );
\data_p2_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^m_axis_tx_tvalid_int_regslice\,
      D => D(5),
      Q => \data_p2_reg_n_0_[22]\,
      R => '0'
    );
\data_p2_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^m_axis_tx_tvalid_int_regslice\,
      D => D(6),
      Q => \data_p2_reg_n_0_[23]\,
      R => '0'
    );
\data_p2_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^m_axis_tx_tvalid_int_regslice\,
      D => D(7),
      Q => \data_p2_reg_n_0_[24]\,
      R => '0'
    );
\data_p2_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^m_axis_tx_tvalid_int_regslice\,
      D => D(8),
      Q => \data_p2_reg_n_0_[25]\,
      R => '0'
    );
\data_p2_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^m_axis_tx_tvalid_int_regslice\,
      D => D(9),
      Q => \data_p2_reg_n_0_[26]\,
      R => '0'
    );
\data_p2_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^m_axis_tx_tvalid_int_regslice\,
      D => D(10),
      Q => \data_p2_reg_n_0_[27]\,
      R => '0'
    );
\data_p2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^m_axis_tx_tvalid_int_regslice\,
      D => P(2),
      Q => \data_p2_reg_n_0_[2]\,
      R => '0'
    );
\data_p2_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^m_axis_tx_tvalid_int_regslice\,
      D => D(11),
      Q => \data_p2_reg_n_0_[31]\,
      R => '0'
    );
\data_p2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^m_axis_tx_tvalid_int_regslice\,
      D => P(3),
      Q => \data_p2_reg_n_0_[3]\,
      R => '0'
    );
\data_p2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^m_axis_tx_tvalid_int_regslice\,
      D => P(4),
      Q => \data_p2_reg_n_0_[4]\,
      R => '0'
    );
\data_p2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^m_axis_tx_tvalid_int_regslice\,
      D => P(5),
      Q => \data_p2_reg_n_0_[5]\,
      R => '0'
    );
\data_p2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^m_axis_tx_tvalid_int_regslice\,
      D => P(6),
      Q => \data_p2_reg_n_0_[6]\,
      R => '0'
    );
\data_p2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^m_axis_tx_tvalid_int_regslice\,
      D => P(7),
      Q => \data_p2_reg_n_0_[7]\,
      R => '0'
    );
\data_p2_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^m_axis_tx_tvalid_int_regslice\,
      D => P(8),
      Q => \data_p2_reg_n_0_[8]\,
      R => '0'
    );
\data_p2_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^m_axis_tx_tvalid_int_regslice\,
      D => P(9),
      Q => \data_p2_reg_n_0_[9]\,
      R => '0'
    );
\indvar_flatten2_fu_116[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20202022"
    )
        port map (
      I0 => ap_start,
      I1 => \^fsm_sequential_state_reg[1]_1\,
      I2 => m_axis_tx_TREADY_int_regslice,
      I3 => ap_enable_reg_pp0_iter10,
      I4 => ap_enable_reg_pp0_iter9,
      O => E(0)
    );
\indvar_flatten2_fu_116[11]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2A2A2A00"
    )
        port map (
      I0 => \state__0\(1),
      I1 => m_axis_tx_TREADY,
      I2 => \state__0\(0),
      I3 => ap_enable_reg_pp0_iter10,
      I4 => ap_loop_exit_ready_pp0_iter10_reg,
      O => \^fsm_sequential_state_reg[1]_1\
    );
int_task_ap_done_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1100000011000100"
    )
        port map (
      I0 => \zext_ln62_reg_464[11]_i_2_n_0\,
      I1 => \^fsm_sequential_state_reg[1]_0\,
      I2 => ap_enable_reg_pp0_iter10,
      I3 => ap_loop_exit_ready_pp0_iter10_reg,
      I4 => m_axis_tx_TREADY_int_regslice,
      I5 => ap_enable_reg_pp0_iter9,
      O => ap_enable_reg_pp0_iter10_reg
    );
\q_val_reg_469[12]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^ap_enable_reg_pp0_iter9_reg\,
      O => ap_block_pp0_stage0_subdone
    );
\q_val_reg_469[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF2FFF2FFF23322"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter9,
      I1 => m_axis_tx_TREADY_int_regslice,
      I2 => ap_loop_exit_ready_pp0_iter10_reg,
      I3 => ap_enable_reg_pp0_iter10,
      I4 => \^fsm_sequential_state_reg[1]_0\,
      I5 => \zext_ln62_reg_464[11]_i_2_n_0\,
      O => \^ap_enable_reg_pp0_iter9_reg\
    );
\state[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FC4C"
    )
        port map (
      I0 => m_axis_tx_TREADY,
      I1 => \^m_axis_tx_tvalid\,
      I2 => state(1),
      I3 => \^m_axis_tx_tvalid_int_regslice\,
      O => \state[0]_i_2_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF4F"
    )
        port map (
      I0 => \^m_axis_tx_tvalid_int_regslice\,
      I1 => state(1),
      I2 => \^m_axis_tx_tvalid\,
      I3 => m_axis_tx_TREADY,
      O => \state[1]_i_1_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \state[0]_i_2_n_0\,
      Q => \^m_axis_tx_tvalid\,
      R => ap_rst_n_inv
    );
\state_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \state[1]_i_1_n_0\,
      Q => state(1),
      S => ap_rst_n_inv
    );
\zext_ln62_reg_464[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"111F000000000000"
    )
        port map (
      I0 => \zext_ln62_reg_464[11]_i_2_n_0\,
      I1 => \^fsm_sequential_state_reg[1]_0\,
      I2 => ap_enable_reg_pp0_iter10,
      I3 => ap_loop_exit_ready_pp0_iter10_reg,
      I4 => m_axis_tx_TREADY_int_regslice,
      I5 => ap_enable_reg_pp0_iter9,
      O => \^m_axis_tx_tvalid_int_regslice\
    );
\zext_ln62_reg_464[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \state__0\(1),
      I1 => m_axis_tx_TREADY,
      O => \zext_ln62_reg_464[11]_i_2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen_regslice_both__parameterized0\ is
  port (
    m_axis_tx_TSTRB : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    m_axis_tx_TREADY : in STD_LOGIC;
    m_axis_tx_TVALID_int_regslice : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen_regslice_both__parameterized0\ : entity is "lfm_tdm_gen_regslice_both";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen_regslice_both__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen_regslice_both__parameterized0\ is
  signal \ack_in_t_i_1__0_n_0\ : STD_LOGIC;
  signal ack_in_t_reg_n_0 : STD_LOGIC;
  signal \data_p1[3]_i_1_n_0\ : STD_LOGIC;
  signal data_p2 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \data_p2[3]_i_1_n_0\ : STD_LOGIC;
  signal \^m_axis_tx_tstrb\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \next__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1__0\ : label is "soft_lutpair18";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute SOFT_HLUTNM of \ack_in_t_i_1__0\ : label is "soft_lutpair18";
begin
  m_axis_tx_TSTRB(0) <= \^m_axis_tx_tstrb\(0);
\FSM_sequential_state[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F4FF"
    )
        port map (
      I0 => m_axis_tx_TVALID_int_regslice,
      I1 => \state__0\(0),
      I2 => m_axis_tx_TREADY,
      I3 => \state__0\(1),
      O => \next__0\(0)
    );
\FSM_sequential_state[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7C0F700"
    )
        port map (
      I0 => m_axis_tx_TREADY,
      I1 => \state__0\(0),
      I2 => m_axis_tx_TVALID_int_regslice,
      I3 => \state__0\(1),
      I4 => ack_in_t_reg_n_0,
      O => \next__0\(1)
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \next__0\(0),
      Q => \state__0\(0),
      S => ap_rst_n_inv
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \next__0\(1),
      Q => \state__0\(1),
      R => ap_rst_n_inv
    );
\ack_in_t_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7F3C0C"
    )
        port map (
      I0 => m_axis_tx_TVALID_int_regslice,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => m_axis_tx_TREADY,
      I4 => ack_in_t_reg_n_0,
      O => \ack_in_t_i_1__0_n_0\
    );
ack_in_t_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ack_in_t_i_1__0_n_0\,
      Q => ack_in_t_reg_n_0,
      R => ap_rst_n_inv
    );
\data_p1[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFBFF3008080"
    )
        port map (
      I0 => data_p2(3),
      I1 => \state__0\(1),
      I2 => m_axis_tx_TREADY,
      I3 => m_axis_tx_TVALID_int_regslice,
      I4 => \state__0\(0),
      I5 => \^m_axis_tx_tstrb\(0),
      O => \data_p1[3]_i_1_n_0\
    );
\data_p1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \data_p1[3]_i_1_n_0\,
      Q => \^m_axis_tx_tstrb\(0),
      R => '0'
    );
\data_p2[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => m_axis_tx_TVALID_int_regslice,
      I1 => ack_in_t_reg_n_0,
      I2 => data_p2(3),
      O => \data_p2[3]_i_1_n_0\
    );
\data_p2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \data_p2[3]_i_1_n_0\,
      Q => data_p2(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen_regslice_both__parameterized1\ is
  port (
    m_axis_tx_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    m_axis_tx_TREADY : in STD_LOGIC;
    m_axis_tx_TVALID_int_regslice : in STD_LOGIC;
    tx_word_last_reg_440_pp0_iter8_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen_regslice_both__parameterized1\ : entity is "lfm_tdm_gen_regslice_both";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen_regslice_both__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen_regslice_both__parameterized1\ is
  signal \ack_in_t_i_1__1_n_0\ : STD_LOGIC;
  signal ack_in_t_reg_n_0 : STD_LOGIC;
  signal \data_p1[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[0]_i_2_n_0\ : STD_LOGIC;
  signal data_p2 : STD_LOGIC;
  signal \data_p2[0]_i_1_n_0\ : STD_LOGIC;
  signal \^m_axis_tx_tlast\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \next__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1__1\ : label is "soft_lutpair19";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute SOFT_HLUTNM of \ack_in_t_i_1__1\ : label is "soft_lutpair19";
begin
  m_axis_tx_TLAST(0) <= \^m_axis_tx_tlast\(0);
\FSM_sequential_state[0]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F4FF"
    )
        port map (
      I0 => m_axis_tx_TVALID_int_regslice,
      I1 => \state__0\(0),
      I2 => m_axis_tx_TREADY,
      I3 => \state__0\(1),
      O => \next__0\(0)
    );
\FSM_sequential_state[1]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EECC0CCC"
    )
        port map (
      I0 => ack_in_t_reg_n_0,
      I1 => \state__0\(1),
      I2 => m_axis_tx_TREADY,
      I3 => \state__0\(0),
      I4 => m_axis_tx_TVALID_int_regslice,
      O => \next__0\(1)
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \next__0\(0),
      Q => \state__0\(0),
      S => ap_rst_n_inv
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \next__0\(1),
      Q => \state__0\(1),
      R => ap_rst_n_inv
    );
\ack_in_t_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7F3C0C"
    )
        port map (
      I0 => m_axis_tx_TVALID_int_regslice,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => m_axis_tx_TREADY,
      I4 => ack_in_t_reg_n_0,
      O => \ack_in_t_i_1__1_n_0\
    );
ack_in_t_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ack_in_t_i_1__1_n_0\,
      Q => ack_in_t_reg_n_0,
      R => ap_rst_n_inv
    );
\data_p1[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEFFBFBFA2008080"
    )
        port map (
      I0 => \data_p1[0]_i_2_n_0\,
      I1 => \state__0\(1),
      I2 => m_axis_tx_TREADY,
      I3 => m_axis_tx_TVALID_int_regslice,
      I4 => \state__0\(0),
      I5 => \^m_axis_tx_tlast\(0),
      O => \data_p1[0]_i_1_n_0\
    );
\data_p1[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => tx_word_last_reg_440_pp0_iter8_reg,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => data_p2,
      O => \data_p1[0]_i_2_n_0\
    );
\data_p1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \data_p1[0]_i_1_n_0\,
      Q => \^m_axis_tx_tlast\(0),
      R => '0'
    );
\data_p2[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => tx_word_last_reg_440_pp0_iter8_reg,
      I1 => ack_in_t_reg_n_0,
      I2 => m_axis_tx_TVALID_int_regslice,
      I3 => data_p2,
      O => \data_p2[0]_i_1_n_0\
    );
\data_p2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \data_p2[0]_i_1_n_0\,
      Q => data_p2,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen_urem_3ns_3ns_3_7_1_divider is
  port (
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ap_block_pp0_stage0_subdone : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ap_clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen_urem_3ns_3ns_3_7_1_divider;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen_urem_3ns_3ns_3_7_1_divider is
  signal \dividend_tmp_reg[0][1]_srl2_n_0\ : STD_LOGIC;
  signal \dividend_tmp_reg[0][2]_srl2_n_0\ : STD_LOGIC;
  signal \loop[0].dividend_tmp_reg[1][1]_srl3_n_0\ : STD_LOGIC;
  signal \loop[0].dividend_tmp_reg_n_0_[1][2]\ : STD_LOGIC;
  signal \loop[0].remd_tmp_reg[1]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \loop[1].remd_tmp[2][0]_i_1_n_0\ : STD_LOGIC;
  signal \loop[1].remd_tmp[2][1]_i_1_n_0\ : STD_LOGIC;
  signal \loop[2].remd_tmp[3][0]_i_1_n_0\ : STD_LOGIC;
  signal \loop[2].remd_tmp[3][1]_i_1_n_0\ : STD_LOGIC;
  signal \loop[2].remd_tmp[3][2]_i_1_n_0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute srl_bus_name : string;
  attribute srl_bus_name of \dividend_tmp_reg[0][1]_srl2\ : label is "inst/\urem_3ns_3ns_3_7_1_U1/lfm_tdm_gen_urem_3ns_3ns_3_7_1_divider_u/dividend_tmp_reg[0] ";
  attribute srl_name : string;
  attribute srl_name of \dividend_tmp_reg[0][1]_srl2\ : label is "inst/\urem_3ns_3ns_3_7_1_U1/lfm_tdm_gen_urem_3ns_3ns_3_7_1_divider_u/dividend_tmp_reg[0][1]_srl2 ";
  attribute srl_bus_name of \dividend_tmp_reg[0][2]_srl2\ : label is "inst/\urem_3ns_3ns_3_7_1_U1/lfm_tdm_gen_urem_3ns_3ns_3_7_1_divider_u/dividend_tmp_reg[0] ";
  attribute srl_name of \dividend_tmp_reg[0][2]_srl2\ : label is "inst/\urem_3ns_3ns_3_7_1_U1/lfm_tdm_gen_urem_3ns_3ns_3_7_1_divider_u/dividend_tmp_reg[0][2]_srl2 ";
  attribute srl_bus_name of \loop[0].dividend_tmp_reg[1][1]_srl3\ : label is "inst/\urem_3ns_3ns_3_7_1_U1/lfm_tdm_gen_urem_3ns_3ns_3_7_1_divider_u/loop[0].dividend_tmp_reg[1] ";
  attribute srl_name of \loop[0].dividend_tmp_reg[1][1]_srl3\ : label is "inst/\urem_3ns_3ns_3_7_1_U1/lfm_tdm_gen_urem_3ns_3ns_3_7_1_divider_u/loop[0].dividend_tmp_reg[1][1]_srl3 ";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \loop[1].remd_tmp[2][0]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \loop[1].remd_tmp[2][1]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \loop[2].remd_tmp[3][0]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \loop[2].remd_tmp[3][1]_i_1\ : label is "soft_lutpair20";
begin
\dividend_tmp_reg[0][1]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => ap_block_pp0_stage0_subdone,
      CLK => ap_clk,
      D => D(1),
      Q => \dividend_tmp_reg[0][1]_srl2_n_0\
    );
\dividend_tmp_reg[0][2]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => ap_block_pp0_stage0_subdone,
      CLK => ap_clk,
      D => D(2),
      Q => \dividend_tmp_reg[0][2]_srl2_n_0\
    );
\loop[0].dividend_tmp_reg[1][1]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => ap_block_pp0_stage0_subdone,
      CLK => ap_clk,
      D => D(0),
      Q => \loop[0].dividend_tmp_reg[1][1]_srl3_n_0\
    );
\loop[0].dividend_tmp_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => \dividend_tmp_reg[0][1]_srl2_n_0\,
      Q => \loop[0].dividend_tmp_reg_n_0_[1][2]\,
      R => '0'
    );
\loop[0].remd_tmp_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => \dividend_tmp_reg[0][2]_srl2_n_0\,
      Q => \loop[0].remd_tmp_reg[1]\(0),
      R => '0'
    );
\loop[1].dividend_tmp_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => \loop[0].dividend_tmp_reg[1][1]_srl3_n_0\,
      Q => p_1_in(0),
      R => '0'
    );
\loop[1].remd_tmp[2][0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \loop[0].remd_tmp_reg[1]\(0),
      I1 => \loop[0].dividend_tmp_reg_n_0_[1][2]\,
      O => \loop[1].remd_tmp[2][0]_i_1_n_0\
    );
\loop[1].remd_tmp[2][1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \loop[0].remd_tmp_reg[1]\(0),
      I1 => \loop[0].dividend_tmp_reg_n_0_[1][2]\,
      O => \loop[1].remd_tmp[2][1]_i_1_n_0\
    );
\loop[1].remd_tmp_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => \loop[1].remd_tmp[2][0]_i_1_n_0\,
      Q => p_1_in(1),
      R => '0'
    );
\loop[1].remd_tmp_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => \loop[1].remd_tmp[2][1]_i_1_n_0\,
      Q => p_1_in(2),
      R => '0'
    );
\loop[2].remd_tmp[3][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1C"
    )
        port map (
      I0 => p_1_in(1),
      I1 => p_1_in(2),
      I2 => p_1_in(0),
      O => \loop[2].remd_tmp[3][0]_i_1_n_0\
    );
\loop[2].remd_tmp[3][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2C"
    )
        port map (
      I0 => p_1_in(2),
      I1 => p_1_in(1),
      I2 => p_1_in(0),
      O => \loop[2].remd_tmp[3][1]_i_1_n_0\
    );
\loop[2].remd_tmp[3][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => p_1_in(2),
      I1 => p_1_in(1),
      I2 => p_1_in(0),
      O => \loop[2].remd_tmp[3][2]_i_1_n_0\
    );
\loop[2].remd_tmp_reg[3][0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => \loop[2].remd_tmp[3][0]_i_1_n_0\,
      Q => Q(0),
      R => '0'
    );
\loop[2].remd_tmp_reg[3][1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => \loop[2].remd_tmp[3][1]_i_1_n_0\,
      Q => Q(1),
      R => '0'
    );
\loop[2].remd_tmp_reg[3][2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => \loop[2].remd_tmp[3][2]_i_1_n_0\,
      Q => Q(2),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen_mac_muladd_10ns_3ns_10ns_12_4_1 is
  port (
    P : out STD_LOGIC_VECTOR ( 11 downto 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk_0 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    ap_clk_1 : out STD_LOGIC;
    ap_clk_2 : out STD_LOGIC;
    ap_block_pp0_stage0_subdone : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    C : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \data_p1_reg[19]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \data_p1_reg[19]_0\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen_mac_muladd_10ns_3ns_10ns_12_4_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen_mac_muladd_10ns_3ns_10ns_12_4_1 is
begin
lfm_tdm_gen_mac_muladd_10ns_3ns_10ns_12_4_1_DSP48_0_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen_mac_muladd_10ns_3ns_10ns_12_4_1_DSP48_0
     port map (
      C(9 downto 0) => C(9 downto 0),
      D(0) => D(0),
      P(11 downto 0) => P(11 downto 0),
      Q(2 downto 0) => Q(2 downto 0),
      ap_block_pp0_stage0_subdone => ap_block_pp0_stage0_subdone,
      ap_clk => ap_clk,
      ap_clk_0(11 downto 0) => ap_clk_0(11 downto 0),
      ap_clk_1 => ap_clk_1,
      ap_clk_2 => ap_clk_2,
      \data_p1_reg[19]\(0) => \data_p1_reg[19]\(0),
      \data_p1_reg[19]_0\ => \data_p1_reg[19]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen_urem_3ns_3ns_3_7_1 is
  port (
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ap_block_pp0_stage0_subdone : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ap_clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen_urem_3ns_3ns_3_7_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen_urem_3ns_3ns_3_7_1 is
begin
lfm_tdm_gen_urem_3ns_3ns_3_7_1_divider_u: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen_urem_3ns_3ns_3_7_1_divider
     port map (
      D(2 downto 0) => D(2 downto 0),
      Q(2 downto 0) => Q(2 downto 0),
      ap_block_pp0_stage0_subdone => ap_block_pp0_stage0_subdone,
      ap_clk => ap_clk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    m_axis_tx_TREADY : in STD_LOGIC;
    m_axis_tx_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tx_TVALID : out STD_LOGIC;
    m_axis_tx_TKEEP : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tx_TSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tx_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    dbg_lfm_i : out STD_LOGIC_VECTOR ( 15 downto 0 );
    dbg_lfm_q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    dbg_tx_sel : out STD_LOGIC_VECTOR ( 1 downto 0 );
    dbg_chirp_count : out STD_LOGIC_VECTOR ( 15 downto 0 );
    dbg_sample_count : out STD_LOGIC_VECTOR ( 15 downto 0 );
    dbg_chirp_start : out STD_LOGIC_VECTOR ( 0 to 0 );
    dbg_chirp_end : out STD_LOGIC_VECTOR ( 0 to 0 );
    dbg_enable : out STD_LOGIC_VECTOR ( 0 to 0 );
    dbg_state : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_CTRL_AWVALID : in STD_LOGIC;
    s_axi_CTRL_AWREADY : out STD_LOGIC;
    s_axi_CTRL_AWADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_CTRL_WVALID : in STD_LOGIC;
    s_axi_CTRL_WREADY : out STD_LOGIC;
    s_axi_CTRL_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_CTRL_ARVALID : in STD_LOGIC;
    s_axi_CTRL_ARREADY : out STD_LOGIC;
    s_axi_CTRL_ARADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_CTRL_RVALID : out STD_LOGIC;
    s_axi_CTRL_RREADY : in STD_LOGIC;
    s_axi_CTRL_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_BVALID : out STD_LOGIC;
    s_axi_CTRL_BREADY : in STD_LOGIC;
    s_axi_CTRL_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    interrupt : out STD_LOGIC
  );
  attribute C_S_AXI_CTRL_ADDR_WIDTH : integer;
  attribute C_S_AXI_CTRL_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen : entity is 4;
  attribute C_S_AXI_CTRL_DATA_WIDTH : integer;
  attribute C_S_AXI_CTRL_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen : entity is 32;
  attribute C_S_AXI_CTRL_WSTRB_WIDTH : integer;
  attribute C_S_AXI_CTRL_WSTRB_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen : entity is 4;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen : entity is 32;
  attribute C_S_AXI_WSTRB_WIDTH : integer;
  attribute C_S_AXI_WSTRB_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen : entity is 4;
  attribute ap_ST_fsm_pp0_stage0 : string;
  attribute ap_ST_fsm_pp0_stage0 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen : entity is "1'b1";
  attribute hls_module : string;
  attribute hls_module of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen is
  signal \<const0>\ : STD_LOGIC;
  signal CTRL_s_axi_U_n_12 : STD_LOGIC;
  signal CTRL_s_axi_U_n_15 : STD_LOGIC;
  signal CTRL_s_axi_U_n_23 : STD_LOGIC;
  signal CTRL_s_axi_U_n_25 : STD_LOGIC;
  signal CTRL_s_axi_U_n_7 : STD_LOGIC;
  signal add_ln53_fu_312_p2 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ap_block_pp0_stage0_subdone : STD_LOGIC;
  signal ap_condition_150 : STD_LOGIC;
  signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter10 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter2 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter3 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter4 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter5 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter6 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter7 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter8 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter9 : STD_LOGIC;
  signal ap_loop_exit_ready_pp0_iter10_reg : STD_LOGIC;
  signal ap_loop_exit_ready_pp0_iter8_reg_reg_srl8_n_0 : STD_LOGIC;
  signal ap_loop_exit_ready_pp0_iter9_reg : STD_LOGIC;
  signal ap_loop_init : STD_LOGIC;
  signal ap_rst_n_inv : STD_LOGIC;
  signal ap_start : STD_LOGIC;
  signal chirp3_fu_120 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal chirp_18_fu_128 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal chirp_2_fu_270_p3 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal chirp_fu_324_p2 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^dbg_lfm_i\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \^dbg_lfm_q\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal flow_control_loop_pipe_U_n_14 : STD_LOGIC;
  signal flow_control_loop_pipe_U_n_15 : STD_LOGIC;
  signal flow_control_loop_pipe_U_n_28 : STD_LOGIC;
  signal flow_control_loop_pipe_U_n_29 : STD_LOGIC;
  signal icmp_ln53_fu_330_p2 : STD_LOGIC;
  signal icmp_ln53_reg_450 : STD_LOGIC;
  signal icmp_ln57_fu_318_p2 : STD_LOGIC;
  signal icmp_ln57_reg_445 : STD_LOGIC;
  signal indvar_flatten2_fu_116 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \loop[2].remd_tmp_reg[3]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^m_axis_tx_tdata\ : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal \^m_axis_tx_tstrb\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal m_axis_tx_TVALID_int_regslice : STD_LOGIC;
  signal mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_0 : STD_LOGIC;
  signal mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_1 : STD_LOGIC;
  signal mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_10 : STD_LOGIC;
  signal mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_11 : STD_LOGIC;
  signal mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_12 : STD_LOGIC;
  signal mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_13 : STD_LOGIC;
  signal mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_14 : STD_LOGIC;
  signal mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_15 : STD_LOGIC;
  signal mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_16 : STD_LOGIC;
  signal mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_17 : STD_LOGIC;
  signal mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_18 : STD_LOGIC;
  signal mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_19 : STD_LOGIC;
  signal mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_2 : STD_LOGIC;
  signal mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_20 : STD_LOGIC;
  signal mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_21 : STD_LOGIC;
  signal mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_22 : STD_LOGIC;
  signal mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_23 : STD_LOGIC;
  signal mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_24 : STD_LOGIC;
  signal mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_25 : STD_LOGIC;
  signal mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_26 : STD_LOGIC;
  signal mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_3 : STD_LOGIC;
  signal mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_4 : STD_LOGIC;
  signal mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_5 : STD_LOGIC;
  signal mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_6 : STD_LOGIC;
  signal mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_7 : STD_LOGIC;
  signal mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_8 : STD_LOGIC;
  signal mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_9 : STD_LOGIC;
  signal regslice_both_m_axis_tx_V_data_V_U_n_0 : STD_LOGIC;
  signal regslice_both_m_axis_tx_V_data_V_U_n_1 : STD_LOGIC;
  signal regslice_both_m_axis_tx_V_data_V_U_n_10 : STD_LOGIC;
  signal regslice_both_m_axis_tx_V_data_V_U_n_5 : STD_LOGIC;
  signal regslice_both_m_axis_tx_V_data_V_U_n_7 : STD_LOGIC;
  signal regslice_both_m_axis_tx_V_data_V_U_n_8 : STD_LOGIC;
  signal regslice_both_m_axis_tx_V_data_V_U_n_9 : STD_LOGIC;
  signal \^s_axi_ctrl_rdata\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal sample4_fu_124 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal sample_fu_306_p2 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal select_ln53_fu_262_p3 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \trunc_ln60_reg_435_pp0_iter5_reg_reg[0]_srl6_n_0\ : STD_LOGIC;
  signal \trunc_ln60_reg_435_pp0_iter5_reg_reg[1]_srl6_n_0\ : STD_LOGIC;
  signal \trunc_ln60_reg_435_pp0_iter5_reg_reg[2]_srl6_n_0\ : STD_LOGIC;
  signal \trunc_ln60_reg_435_pp0_iter5_reg_reg[3]_srl6_n_0\ : STD_LOGIC;
  signal \trunc_ln60_reg_435_pp0_iter5_reg_reg[4]_srl6_n_0\ : STD_LOGIC;
  signal \trunc_ln60_reg_435_pp0_iter5_reg_reg[5]_srl6_n_0\ : STD_LOGIC;
  signal \trunc_ln60_reg_435_pp0_iter5_reg_reg[6]_srl6_n_0\ : STD_LOGIC;
  signal \trunc_ln60_reg_435_pp0_iter5_reg_reg[7]_srl6_n_0\ : STD_LOGIC;
  signal \trunc_ln60_reg_435_pp0_iter5_reg_reg[8]_srl6_n_0\ : STD_LOGIC;
  signal \trunc_ln60_reg_435_pp0_iter5_reg_reg[9]_srl6_n_0\ : STD_LOGIC;
  signal trunc_ln60_reg_435_pp0_iter6_reg : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal tx_word_last_fu_300_p2 : STD_LOGIC;
  signal \tx_word_last_reg_440_pp0_iter7_reg_reg[0]_srl8_n_0\ : STD_LOGIC;
  signal tx_word_last_reg_440_pp0_iter8_reg : STD_LOGIC;
  attribute srl_name : string;
  attribute srl_name of ap_loop_exit_ready_pp0_iter8_reg_reg_srl8 : label is "inst/ap_loop_exit_ready_pp0_iter8_reg_reg_srl8";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \trunc_ln60_reg_435_pp0_iter5_reg_reg[0]_srl6\ : label is "inst/\trunc_ln60_reg_435_pp0_iter5_reg_reg ";
  attribute srl_name of \trunc_ln60_reg_435_pp0_iter5_reg_reg[0]_srl6\ : label is "inst/\trunc_ln60_reg_435_pp0_iter5_reg_reg[0]_srl6 ";
  attribute srl_bus_name of \trunc_ln60_reg_435_pp0_iter5_reg_reg[1]_srl6\ : label is "inst/\trunc_ln60_reg_435_pp0_iter5_reg_reg ";
  attribute srl_name of \trunc_ln60_reg_435_pp0_iter5_reg_reg[1]_srl6\ : label is "inst/\trunc_ln60_reg_435_pp0_iter5_reg_reg[1]_srl6 ";
  attribute srl_bus_name of \trunc_ln60_reg_435_pp0_iter5_reg_reg[2]_srl6\ : label is "inst/\trunc_ln60_reg_435_pp0_iter5_reg_reg ";
  attribute srl_name of \trunc_ln60_reg_435_pp0_iter5_reg_reg[2]_srl6\ : label is "inst/\trunc_ln60_reg_435_pp0_iter5_reg_reg[2]_srl6 ";
  attribute srl_bus_name of \trunc_ln60_reg_435_pp0_iter5_reg_reg[3]_srl6\ : label is "inst/\trunc_ln60_reg_435_pp0_iter5_reg_reg ";
  attribute srl_name of \trunc_ln60_reg_435_pp0_iter5_reg_reg[3]_srl6\ : label is "inst/\trunc_ln60_reg_435_pp0_iter5_reg_reg[3]_srl6 ";
  attribute srl_bus_name of \trunc_ln60_reg_435_pp0_iter5_reg_reg[4]_srl6\ : label is "inst/\trunc_ln60_reg_435_pp0_iter5_reg_reg ";
  attribute srl_name of \trunc_ln60_reg_435_pp0_iter5_reg_reg[4]_srl6\ : label is "inst/\trunc_ln60_reg_435_pp0_iter5_reg_reg[4]_srl6 ";
  attribute srl_bus_name of \trunc_ln60_reg_435_pp0_iter5_reg_reg[5]_srl6\ : label is "inst/\trunc_ln60_reg_435_pp0_iter5_reg_reg ";
  attribute srl_name of \trunc_ln60_reg_435_pp0_iter5_reg_reg[5]_srl6\ : label is "inst/\trunc_ln60_reg_435_pp0_iter5_reg_reg[5]_srl6 ";
  attribute srl_bus_name of \trunc_ln60_reg_435_pp0_iter5_reg_reg[6]_srl6\ : label is "inst/\trunc_ln60_reg_435_pp0_iter5_reg_reg ";
  attribute srl_name of \trunc_ln60_reg_435_pp0_iter5_reg_reg[6]_srl6\ : label is "inst/\trunc_ln60_reg_435_pp0_iter5_reg_reg[6]_srl6 ";
  attribute srl_bus_name of \trunc_ln60_reg_435_pp0_iter5_reg_reg[7]_srl6\ : label is "inst/\trunc_ln60_reg_435_pp0_iter5_reg_reg ";
  attribute srl_name of \trunc_ln60_reg_435_pp0_iter5_reg_reg[7]_srl6\ : label is "inst/\trunc_ln60_reg_435_pp0_iter5_reg_reg[7]_srl6 ";
  attribute srl_bus_name of \trunc_ln60_reg_435_pp0_iter5_reg_reg[8]_srl6\ : label is "inst/\trunc_ln60_reg_435_pp0_iter5_reg_reg ";
  attribute srl_name of \trunc_ln60_reg_435_pp0_iter5_reg_reg[8]_srl6\ : label is "inst/\trunc_ln60_reg_435_pp0_iter5_reg_reg[8]_srl6 ";
  attribute srl_bus_name of \trunc_ln60_reg_435_pp0_iter5_reg_reg[9]_srl6\ : label is "inst/\trunc_ln60_reg_435_pp0_iter5_reg_reg ";
  attribute srl_name of \trunc_ln60_reg_435_pp0_iter5_reg_reg[9]_srl6\ : label is "inst/\trunc_ln60_reg_435_pp0_iter5_reg_reg[9]_srl6 ";
  attribute srl_bus_name of \tx_word_last_reg_440_pp0_iter7_reg_reg[0]_srl8\ : label is "inst/\tx_word_last_reg_440_pp0_iter7_reg_reg ";
  attribute srl_name of \tx_word_last_reg_440_pp0_iter7_reg_reg[0]_srl8\ : label is "inst/\tx_word_last_reg_440_pp0_iter7_reg_reg[0]_srl8 ";
begin
  dbg_chirp_count(15) <= \<const0>\;
  dbg_chirp_count(14) <= \<const0>\;
  dbg_chirp_count(13) <= \<const0>\;
  dbg_chirp_count(12) <= \<const0>\;
  dbg_chirp_count(11) <= \<const0>\;
  dbg_chirp_count(10) <= \<const0>\;
  dbg_chirp_count(9) <= \<const0>\;
  dbg_chirp_count(8) <= \<const0>\;
  dbg_chirp_count(7) <= \<const0>\;
  dbg_chirp_count(6) <= \<const0>\;
  dbg_chirp_count(5) <= \<const0>\;
  dbg_chirp_count(4) <= \<const0>\;
  dbg_chirp_count(3) <= \<const0>\;
  dbg_chirp_count(2) <= \<const0>\;
  dbg_chirp_count(1) <= \<const0>\;
  dbg_chirp_count(0) <= \<const0>\;
  dbg_chirp_end(0) <= \<const0>\;
  dbg_chirp_start(0) <= \<const0>\;
  dbg_enable(0) <= \<const0>\;
  dbg_lfm_i(15) <= \<const0>\;
  dbg_lfm_i(14) <= \<const0>\;
  dbg_lfm_i(13) <= \<const0>\;
  dbg_lfm_i(12) <= \<const0>\;
  dbg_lfm_i(11 downto 0) <= \^dbg_lfm_i\(11 downto 0);
  dbg_lfm_q(15) <= \^dbg_lfm_q\(15);
  dbg_lfm_q(14) <= \^dbg_lfm_q\(15);
  dbg_lfm_q(13) <= \^dbg_lfm_q\(15);
  dbg_lfm_q(12) <= \^dbg_lfm_q\(15);
  dbg_lfm_q(11 downto 0) <= \^dbg_lfm_q\(11 downto 0);
  dbg_sample_count(15) <= \<const0>\;
  dbg_sample_count(14) <= \<const0>\;
  dbg_sample_count(13) <= \<const0>\;
  dbg_sample_count(12) <= \<const0>\;
  dbg_sample_count(11) <= \<const0>\;
  dbg_sample_count(10) <= \<const0>\;
  dbg_sample_count(9) <= \<const0>\;
  dbg_sample_count(8) <= \<const0>\;
  dbg_sample_count(7) <= \<const0>\;
  dbg_sample_count(6) <= \<const0>\;
  dbg_sample_count(5) <= \<const0>\;
  dbg_sample_count(4) <= \<const0>\;
  dbg_sample_count(3) <= \<const0>\;
  dbg_sample_count(2) <= \<const0>\;
  dbg_sample_count(1) <= \<const0>\;
  dbg_sample_count(0) <= \<const0>\;
  dbg_state(2) <= \<const0>\;
  dbg_state(1) <= \<const0>\;
  dbg_state(0) <= \<const0>\;
  dbg_tx_sel(1) <= \<const0>\;
  dbg_tx_sel(0) <= \<const0>\;
  m_axis_tx_TDATA(31) <= \^m_axis_tx_tdata\(30);
  m_axis_tx_TDATA(30) <= \^m_axis_tx_tdata\(30);
  m_axis_tx_TDATA(29) <= \^m_axis_tx_tdata\(30);
  m_axis_tx_TDATA(28) <= \^m_axis_tx_tdata\(30);
  m_axis_tx_TDATA(27 downto 17) <= \^m_axis_tx_tdata\(27 downto 17);
  m_axis_tx_TDATA(16) <= \^m_axis_tx_tdata\(0);
  m_axis_tx_TDATA(15) <= \<const0>\;
  m_axis_tx_TDATA(14) <= \<const0>\;
  m_axis_tx_TDATA(13) <= \<const0>\;
  m_axis_tx_TDATA(12) <= \<const0>\;
  m_axis_tx_TDATA(11 downto 0) <= \^m_axis_tx_tdata\(11 downto 0);
  m_axis_tx_TKEEP(3) <= \^m_axis_tx_tstrb\(2);
  m_axis_tx_TKEEP(2) <= \^m_axis_tx_tstrb\(2);
  m_axis_tx_TKEEP(1) <= \^m_axis_tx_tstrb\(2);
  m_axis_tx_TKEEP(0) <= \^m_axis_tx_tstrb\(2);
  m_axis_tx_TSTRB(3) <= \^m_axis_tx_tstrb\(2);
  m_axis_tx_TSTRB(2) <= \^m_axis_tx_tstrb\(2);
  m_axis_tx_TSTRB(1) <= \^m_axis_tx_tstrb\(2);
  m_axis_tx_TSTRB(0) <= \^m_axis_tx_tstrb\(2);
  s_axi_CTRL_BRESP(1) <= \<const0>\;
  s_axi_CTRL_BRESP(0) <= \<const0>\;
  s_axi_CTRL_RDATA(31) <= \<const0>\;
  s_axi_CTRL_RDATA(30) <= \<const0>\;
  s_axi_CTRL_RDATA(29) <= \<const0>\;
  s_axi_CTRL_RDATA(28) <= \<const0>\;
  s_axi_CTRL_RDATA(27) <= \<const0>\;
  s_axi_CTRL_RDATA(26) <= \<const0>\;
  s_axi_CTRL_RDATA(25) <= \<const0>\;
  s_axi_CTRL_RDATA(24) <= \<const0>\;
  s_axi_CTRL_RDATA(23) <= \<const0>\;
  s_axi_CTRL_RDATA(22) <= \<const0>\;
  s_axi_CTRL_RDATA(21) <= \<const0>\;
  s_axi_CTRL_RDATA(20) <= \<const0>\;
  s_axi_CTRL_RDATA(19) <= \<const0>\;
  s_axi_CTRL_RDATA(18) <= \<const0>\;
  s_axi_CTRL_RDATA(17) <= \<const0>\;
  s_axi_CTRL_RDATA(16) <= \<const0>\;
  s_axi_CTRL_RDATA(15) <= \<const0>\;
  s_axi_CTRL_RDATA(14) <= \<const0>\;
  s_axi_CTRL_RDATA(13) <= \<const0>\;
  s_axi_CTRL_RDATA(12) <= \<const0>\;
  s_axi_CTRL_RDATA(11) <= \<const0>\;
  s_axi_CTRL_RDATA(10) <= \<const0>\;
  s_axi_CTRL_RDATA(9) <= \^s_axi_ctrl_rdata\(9);
  s_axi_CTRL_RDATA(8) <= \<const0>\;
  s_axi_CTRL_RDATA(7) <= \^s_axi_ctrl_rdata\(7);
  s_axi_CTRL_RDATA(6) <= \<const0>\;
  s_axi_CTRL_RDATA(5) <= \<const0>\;
  s_axi_CTRL_RDATA(4) <= \<const0>\;
  s_axi_CTRL_RDATA(3 downto 0) <= \^s_axi_ctrl_rdata\(3 downto 0);
  s_axi_CTRL_RRESP(1) <= \<const0>\;
  s_axi_CTRL_RRESP(0) <= \<const0>\;
CTRL_s_axi_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen_CTRL_s_axi
     port map (
      D(4 downto 3) => sample_fu_306_p2(10 downto 9),
      D(2) => CTRL_s_axi_U_n_12,
      D(1) => sample_fu_306_p2(3),
      D(0) => sample_fu_306_p2(0),
      E(0) => ap_condition_150,
      \FSM_onehot_rstate_reg[1]_0\ => s_axi_CTRL_ARREADY,
      \FSM_onehot_wstate_reg[1]_0\ => s_axi_CTRL_AWREADY,
      \FSM_onehot_wstate_reg[2]_0\ => s_axi_CTRL_WREADY,
      Q(11 downto 0) => indvar_flatten2_fu_116(11 downto 0),
      ap_clk => ap_clk,
      ap_condition_exit_pp0_iter0_stage0 => ap_condition_exit_pp0_iter0_stage0,
      ap_enable_reg_pp0_iter1 => ap_enable_reg_pp0_iter1,
      ap_enable_reg_pp0_iter10 => ap_enable_reg_pp0_iter10,
      ap_enable_reg_pp0_iter2 => ap_enable_reg_pp0_iter2,
      ap_enable_reg_pp0_iter3 => ap_enable_reg_pp0_iter3,
      ap_enable_reg_pp0_iter4 => ap_enable_reg_pp0_iter4,
      ap_enable_reg_pp0_iter5 => ap_enable_reg_pp0_iter5,
      ap_enable_reg_pp0_iter6 => ap_enable_reg_pp0_iter6,
      ap_enable_reg_pp0_iter7 => ap_enable_reg_pp0_iter7,
      ap_enable_reg_pp0_iter8 => ap_enable_reg_pp0_iter8,
      ap_enable_reg_pp0_iter9 => ap_enable_reg_pp0_iter9,
      ap_loop_exit_ready_pp0_iter10_reg => ap_loop_exit_ready_pp0_iter10_reg,
      ap_loop_init => ap_loop_init,
      ap_rst_n => ap_rst_n,
      ap_rst_n_0 => CTRL_s_axi_U_n_7,
      ap_rst_n_inv => ap_rst_n_inv,
      ap_start => ap_start,
      \chirp_18_fu_128_reg[1]\ => CTRL_s_axi_U_n_25,
      \chirp_18_fu_128_reg[1]_0\(0) => chirp_fu_324_p2(1),
      \chirp_18_fu_128_reg[1]_1\(1 downto 0) => chirp_18_fu_128(1 downto 0),
      \chirp_18_fu_128_reg[1]_2\(1 downto 0) => chirp3_fu_120(1 downto 0),
      icmp_ln53_fu_330_p2 => icmp_ln53_fu_330_p2,
      icmp_ln53_reg_450 => icmp_ln53_reg_450,
      icmp_ln57_reg_445 => icmp_ln57_reg_445,
      int_ap_start_reg_0 => CTRL_s_axi_U_n_23,
      int_ap_start_reg_1 => regslice_both_m_axis_tx_V_data_V_U_n_9,
      int_ap_start_reg_2 => regslice_both_m_axis_tx_V_data_V_U_n_7,
      \int_isr_reg[0]_0\ => regslice_both_m_axis_tx_V_data_V_U_n_1,
      int_task_ap_done_reg_0 => regslice_both_m_axis_tx_V_data_V_U_n_8,
      interrupt => interrupt,
      s_axi_CTRL_ARADDR(3 downto 0) => s_axi_CTRL_ARADDR(3 downto 0),
      s_axi_CTRL_ARVALID => s_axi_CTRL_ARVALID,
      s_axi_CTRL_AWADDR(1 downto 0) => s_axi_CTRL_AWADDR(3 downto 2),
      s_axi_CTRL_AWVALID => s_axi_CTRL_AWVALID,
      s_axi_CTRL_BREADY => s_axi_CTRL_BREADY,
      s_axi_CTRL_BVALID => s_axi_CTRL_BVALID,
      s_axi_CTRL_RDATA(5) => \^s_axi_ctrl_rdata\(9),
      s_axi_CTRL_RDATA(4) => \^s_axi_ctrl_rdata\(7),
      s_axi_CTRL_RDATA(3 downto 0) => \^s_axi_ctrl_rdata\(3 downto 0),
      s_axi_CTRL_RREADY => s_axi_CTRL_RREADY,
      s_axi_CTRL_RVALID => s_axi_CTRL_RVALID,
      s_axi_CTRL_WDATA(2) => s_axi_CTRL_WDATA(7),
      s_axi_CTRL_WDATA(1 downto 0) => s_axi_CTRL_WDATA(1 downto 0),
      s_axi_CTRL_WSTRB(0) => s_axi_CTRL_WSTRB(0),
      s_axi_CTRL_WVALID => s_axi_CTRL_WVALID,
      \sample4_fu_124_reg[10]\ => flow_control_loop_pipe_U_n_15,
      \sample4_fu_124_reg[10]_0\ => flow_control_loop_pipe_U_n_29,
      \sample4_fu_124_reg[2]\ => CTRL_s_axi_U_n_15,
      \sample4_fu_124_reg[8]\ => flow_control_loop_pipe_U_n_14,
      \sample4_fu_124_reg[9]\(9 downto 0) => sample4_fu_124(9 downto 0),
      select_ln53_fu_262_p3(6 downto 2) => select_ln53_fu_262_p3(9 downto 5),
      select_ln53_fu_262_p3(1 downto 0) => select_ln53_fu_262_p3(3 downto 2),
      tx_word_last_fu_300_p2 => tx_word_last_fu_300_p2,
      \tx_word_last_reg_440_pp0_iter8_reg_reg[0]\ => flow_control_loop_pipe_U_n_28,
      \tx_word_last_reg_440_pp0_iter8_reg_reg[0]_0\(0) => chirp_2_fu_270_p3(2)
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
ap_enable_reg_pp0_iter10_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => ap_enable_reg_pp0_iter9,
      Q => ap_enable_reg_pp0_iter10,
      R => ap_rst_n_inv
    );
ap_enable_reg_pp0_iter1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => ap_start,
      Q => ap_enable_reg_pp0_iter1,
      R => ap_rst_n_inv
    );
ap_enable_reg_pp0_iter2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => ap_enable_reg_pp0_iter1,
      Q => ap_enable_reg_pp0_iter2,
      R => ap_rst_n_inv
    );
ap_enable_reg_pp0_iter3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => ap_enable_reg_pp0_iter2,
      Q => ap_enable_reg_pp0_iter3,
      R => ap_rst_n_inv
    );
ap_enable_reg_pp0_iter4_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => ap_enable_reg_pp0_iter3,
      Q => ap_enable_reg_pp0_iter4,
      R => ap_rst_n_inv
    );
ap_enable_reg_pp0_iter5_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => ap_enable_reg_pp0_iter4,
      Q => ap_enable_reg_pp0_iter5,
      R => ap_rst_n_inv
    );
ap_enable_reg_pp0_iter6_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => ap_enable_reg_pp0_iter5,
      Q => ap_enable_reg_pp0_iter6,
      R => ap_rst_n_inv
    );
ap_enable_reg_pp0_iter7_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => ap_enable_reg_pp0_iter6,
      Q => ap_enable_reg_pp0_iter7,
      R => ap_rst_n_inv
    );
ap_enable_reg_pp0_iter8_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => ap_enable_reg_pp0_iter7,
      Q => ap_enable_reg_pp0_iter8,
      R => ap_rst_n_inv
    );
ap_enable_reg_pp0_iter9_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => ap_enable_reg_pp0_iter8,
      Q => ap_enable_reg_pp0_iter9,
      R => ap_rst_n_inv
    );
ap_loop_exit_ready_pp0_iter10_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => regslice_both_m_axis_tx_V_data_V_U_n_0,
      Q => ap_loop_exit_ready_pp0_iter10_reg,
      R => '0'
    );
ap_loop_exit_ready_pp0_iter8_reg_reg_srl8: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '1',
      A3 => '0',
      CE => ap_block_pp0_stage0_subdone,
      CLK => ap_clk,
      D => ap_condition_exit_pp0_iter0_stage0,
      Q => ap_loop_exit_ready_pp0_iter8_reg_reg_srl8_n_0
    );
ap_loop_exit_ready_pp0_iter9_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => ap_loop_exit_ready_pp0_iter8_reg_reg_srl8_n_0,
      Q => ap_loop_exit_ready_pp0_iter9_reg,
      R => '0'
    );
\chirp3_fu_120_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_150,
      D => chirp_2_fu_270_p3(0),
      Q => chirp3_fu_120(0),
      R => '0'
    );
\chirp3_fu_120_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_150,
      D => chirp_2_fu_270_p3(1),
      Q => chirp3_fu_120(1),
      R => '0'
    );
\chirp3_fu_120_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_150,
      D => chirp_2_fu_270_p3(2),
      Q => chirp3_fu_120(2),
      R => '0'
    );
\chirp_18_fu_128_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_150,
      D => chirp_fu_324_p2(0),
      Q => chirp_18_fu_128(0),
      R => '0'
    );
\chirp_18_fu_128_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_150,
      D => chirp_fu_324_p2(1),
      Q => chirp_18_fu_128(1),
      R => '0'
    );
\chirp_18_fu_128_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_150,
      D => chirp_fu_324_p2(2),
      Q => chirp_18_fu_128(2),
      R => '0'
    );
flow_control_loop_pipe_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen_flow_control_loop_pipe
     port map (
      D(11 downto 0) => add_ln53_fu_312_p2(11 downto 0),
      Q(11 downto 0) => indvar_flatten2_fu_116(11 downto 0),
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter1 => ap_enable_reg_pp0_iter1,
      ap_loop_init => ap_loop_init,
      ap_loop_init_reg_0(5 downto 2) => sample_fu_306_p2(7 downto 4),
      ap_loop_init_reg_0(1 downto 0) => sample_fu_306_p2(2 downto 1),
      ap_loop_init_reg_1 => flow_control_loop_pipe_U_n_28,
      ap_loop_init_reg_2 => CTRL_s_axi_U_n_7,
      ap_start => ap_start,
      \chirp3_fu_120_reg[2]\(2 downto 0) => chirp_2_fu_270_p3(2 downto 0),
      \chirp3_fu_120_reg[2]_0\(1) => chirp_fu_324_p2(2),
      \chirp3_fu_120_reg[2]_0\(0) => chirp_fu_324_p2(0),
      \chirp3_fu_120_reg[2]_1\(2 downto 0) => chirp_18_fu_128(2 downto 0),
      \chirp3_fu_120_reg[2]_2\(2 downto 0) => chirp3_fu_120(2 downto 0),
      \chirp_18_fu_128_reg[2]\ => CTRL_s_axi_U_n_25,
      icmp_ln53_reg_450 => icmp_ln53_reg_450,
      icmp_ln57_fu_318_p2 => icmp_ln57_fu_318_p2,
      icmp_ln57_reg_445 => icmp_ln57_reg_445,
      \icmp_ln57_reg_445_reg[0]\ => flow_control_loop_pipe_U_n_14,
      \icmp_ln57_reg_445_reg[0]_0\(2) => select_ln53_fu_262_p3(4),
      \icmp_ln57_reg_445_reg[0]_0\(1 downto 0) => select_ln53_fu_262_p3(1 downto 0),
      \icmp_ln57_reg_445_reg[0]_1\(10 downto 0) => sample4_fu_124(10 downto 0),
      \icmp_ln57_reg_445_reg[0]_2\ => CTRL_s_axi_U_n_15,
      \sample4_fu_124_reg[10]\ => flow_control_loop_pipe_U_n_29,
      \sample4_fu_124_reg[5]\ => CTRL_s_axi_U_n_23,
      \sample4_fu_124_reg[8]\ => flow_control_loop_pipe_U_n_15,
      select_ln53_fu_262_p3(0) => select_ln53_fu_262_p3(7)
    );
\icmp_ln53_reg_450_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => icmp_ln53_fu_330_p2,
      Q => icmp_ln53_reg_450,
      R => '0'
    );
\icmp_ln57_reg_445_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_condition_150,
      D => icmp_ln57_fu_318_p2,
      Q => icmp_ln57_reg_445,
      R => '0'
    );
\indvar_flatten2_fu_116_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_150,
      D => add_ln53_fu_312_p2(0),
      Q => indvar_flatten2_fu_116(0),
      R => '0'
    );
\indvar_flatten2_fu_116_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_150,
      D => add_ln53_fu_312_p2(10),
      Q => indvar_flatten2_fu_116(10),
      R => '0'
    );
\indvar_flatten2_fu_116_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_150,
      D => add_ln53_fu_312_p2(11),
      Q => indvar_flatten2_fu_116(11),
      R => '0'
    );
\indvar_flatten2_fu_116_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_150,
      D => add_ln53_fu_312_p2(1),
      Q => indvar_flatten2_fu_116(1),
      R => '0'
    );
\indvar_flatten2_fu_116_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_150,
      D => add_ln53_fu_312_p2(2),
      Q => indvar_flatten2_fu_116(2),
      R => '0'
    );
\indvar_flatten2_fu_116_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_150,
      D => add_ln53_fu_312_p2(3),
      Q => indvar_flatten2_fu_116(3),
      R => '0'
    );
\indvar_flatten2_fu_116_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_150,
      D => add_ln53_fu_312_p2(4),
      Q => indvar_flatten2_fu_116(4),
      R => '0'
    );
\indvar_flatten2_fu_116_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_150,
      D => add_ln53_fu_312_p2(5),
      Q => indvar_flatten2_fu_116(5),
      R => '0'
    );
\indvar_flatten2_fu_116_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_150,
      D => add_ln53_fu_312_p2(6),
      Q => indvar_flatten2_fu_116(6),
      R => '0'
    );
\indvar_flatten2_fu_116_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_150,
      D => add_ln53_fu_312_p2(7),
      Q => indvar_flatten2_fu_116(7),
      R => '0'
    );
\indvar_flatten2_fu_116_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_150,
      D => add_ln53_fu_312_p2(8),
      Q => indvar_flatten2_fu_116(8),
      R => '0'
    );
\indvar_flatten2_fu_116_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_150,
      D => add_ln53_fu_312_p2(9),
      Q => indvar_flatten2_fu_116(9),
      R => '0'
    );
mac_muladd_10ns_3ns_10ns_12_4_1_U2: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen_mac_muladd_10ns_3ns_10ns_12_4_1
     port map (
      C(9 downto 0) => trunc_ln60_reg_435_pp0_iter6_reg(9 downto 0),
      D(0) => mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_12,
      P(11) => mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_0,
      P(10) => mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_1,
      P(9) => mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_2,
      P(8) => mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_3,
      P(7) => mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_4,
      P(6) => mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_5,
      P(5) => mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_6,
      P(4) => mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_7,
      P(3) => mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_8,
      P(2) => mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_9,
      P(1) => mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_10,
      P(0) => mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_11,
      Q(2 downto 0) => \loop[2].remd_tmp_reg[3]\(2 downto 0),
      ap_block_pp0_stage0_subdone => ap_block_pp0_stage0_subdone,
      ap_clk => ap_clk,
      ap_clk_0(11) => mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_13,
      ap_clk_0(10) => mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_14,
      ap_clk_0(9) => mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_15,
      ap_clk_0(8) => mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_16,
      ap_clk_0(7) => mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_17,
      ap_clk_0(6) => mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_18,
      ap_clk_0(5) => mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_19,
      ap_clk_0(4) => mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_20,
      ap_clk_0(3) => mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_21,
      ap_clk_0(2) => mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_22,
      ap_clk_0(1) => mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_23,
      ap_clk_0(0) => mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_24,
      ap_clk_1 => mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_25,
      ap_clk_2 => mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_26,
      \data_p1_reg[19]\(0) => regslice_both_m_axis_tx_V_data_V_U_n_10,
      \data_p1_reg[19]_0\ => regslice_both_m_axis_tx_V_data_V_U_n_5
    );
\q_val_reg_469_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_11,
      Q => \^dbg_lfm_q\(0),
      R => '0'
    );
\q_val_reg_469_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_15,
      Q => \^dbg_lfm_q\(10),
      R => '0'
    );
\q_val_reg_469_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_14,
      Q => \^dbg_lfm_q\(11),
      R => '0'
    );
\q_val_reg_469_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_13,
      Q => \^dbg_lfm_q\(15),
      R => '0'
    );
\q_val_reg_469_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_24,
      Q => \^dbg_lfm_q\(1),
      R => '0'
    );
\q_val_reg_469_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_23,
      Q => \^dbg_lfm_q\(2),
      R => '0'
    );
\q_val_reg_469_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_22,
      Q => \^dbg_lfm_q\(3),
      R => '0'
    );
\q_val_reg_469_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_21,
      Q => \^dbg_lfm_q\(4),
      R => '0'
    );
\q_val_reg_469_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_20,
      Q => \^dbg_lfm_q\(5),
      R => '0'
    );
\q_val_reg_469_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_19,
      Q => \^dbg_lfm_q\(6),
      R => '0'
    );
\q_val_reg_469_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_18,
      Q => \^dbg_lfm_q\(7),
      R => '0'
    );
\q_val_reg_469_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_17,
      Q => \^dbg_lfm_q\(8),
      R => '0'
    );
\q_val_reg_469_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_16,
      Q => \^dbg_lfm_q\(9),
      R => '0'
    );
regslice_both_m_axis_tx_V_data_V_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen_regslice_both
     port map (
      D(11) => mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_13,
      D(10) => mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_14,
      D(9) => mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_15,
      D(8) => mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_16,
      D(7) => mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_17,
      D(6) => mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_18,
      D(5) => mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_19,
      D(4) => mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_20,
      D(3) => mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_21,
      D(2) => mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_22,
      D(1) => mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_23,
      D(0) => mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_24,
      E(0) => ap_condition_150,
      \FSM_sequential_state_reg[1]_0\ => regslice_both_m_axis_tx_V_data_V_U_n_5,
      \FSM_sequential_state_reg[1]_1\ => regslice_both_m_axis_tx_V_data_V_U_n_7,
      P(11) => mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_0,
      P(10) => mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_1,
      P(9) => mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_2,
      P(8) => mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_3,
      P(7) => mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_4,
      P(6) => mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_5,
      P(5) => mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_6,
      P(4) => mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_7,
      P(3) => mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_8,
      P(2) => mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_9,
      P(1) => mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_10,
      P(0) => mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_11,
      Q(0) => regslice_both_m_axis_tx_V_data_V_U_n_10,
      ack_in_t_reg_0 => regslice_both_m_axis_tx_V_data_V_U_n_9,
      ap_block_pp0_stage0_subdone => ap_block_pp0_stage0_subdone,
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter10 => ap_enable_reg_pp0_iter10,
      ap_enable_reg_pp0_iter10_reg => regslice_both_m_axis_tx_V_data_V_U_n_8,
      ap_enable_reg_pp0_iter9 => ap_enable_reg_pp0_iter9,
      ap_enable_reg_pp0_iter9_reg => regslice_both_m_axis_tx_V_data_V_U_n_1,
      ap_loop_exit_ready_pp0_iter10_reg => ap_loop_exit_ready_pp0_iter10_reg,
      ap_loop_exit_ready_pp0_iter10_reg_reg => regslice_both_m_axis_tx_V_data_V_U_n_0,
      ap_loop_exit_ready_pp0_iter9_reg => ap_loop_exit_ready_pp0_iter9_reg,
      ap_rst_n_inv => ap_rst_n_inv,
      ap_start => ap_start,
      \data_p1_reg[19]_0\(0) => mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_12,
      \data_p1_reg[22]_0\ => mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_25,
      \data_p1_reg[27]_0\ => mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_26,
      m_axis_tx_TDATA(23) => \^m_axis_tx_tdata\(30),
      m_axis_tx_TDATA(22 downto 12) => \^m_axis_tx_tdata\(27 downto 17),
      m_axis_tx_TDATA(11) => \^m_axis_tx_tdata\(0),
      m_axis_tx_TDATA(10 downto 0) => \^m_axis_tx_tdata\(11 downto 1),
      m_axis_tx_TREADY => m_axis_tx_TREADY,
      m_axis_tx_TVALID => m_axis_tx_TVALID,
      m_axis_tx_TVALID_int_regslice => m_axis_tx_TVALID_int_regslice
    );
regslice_both_m_axis_tx_V_keep_V_U: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen_regslice_both__parameterized0\
     port map (
      ap_clk => ap_clk,
      ap_rst_n_inv => ap_rst_n_inv,
      m_axis_tx_TREADY => m_axis_tx_TREADY,
      m_axis_tx_TSTRB(0) => \^m_axis_tx_tstrb\(2),
      m_axis_tx_TVALID_int_regslice => m_axis_tx_TVALID_int_regslice
    );
regslice_both_m_axis_tx_V_last_V_U: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen_regslice_both__parameterized1\
     port map (
      ap_clk => ap_clk,
      ap_rst_n_inv => ap_rst_n_inv,
      m_axis_tx_TLAST(0) => m_axis_tx_TLAST(0),
      m_axis_tx_TREADY => m_axis_tx_TREADY,
      m_axis_tx_TVALID_int_regslice => m_axis_tx_TVALID_int_regslice,
      tx_word_last_reg_440_pp0_iter8_reg => tx_word_last_reg_440_pp0_iter8_reg
    );
\sample4_fu_124_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_150,
      D => sample_fu_306_p2(0),
      Q => sample4_fu_124(0),
      R => '0'
    );
\sample4_fu_124_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_150,
      D => sample_fu_306_p2(10),
      Q => sample4_fu_124(10),
      R => '0'
    );
\sample4_fu_124_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_150,
      D => sample_fu_306_p2(1),
      Q => sample4_fu_124(1),
      R => '0'
    );
\sample4_fu_124_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_150,
      D => sample_fu_306_p2(2),
      Q => sample4_fu_124(2),
      R => '0'
    );
\sample4_fu_124_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_150,
      D => sample_fu_306_p2(3),
      Q => sample4_fu_124(3),
      R => '0'
    );
\sample4_fu_124_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_150,
      D => sample_fu_306_p2(4),
      Q => sample4_fu_124(4),
      R => '0'
    );
\sample4_fu_124_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_150,
      D => sample_fu_306_p2(5),
      Q => sample4_fu_124(5),
      R => '0'
    );
\sample4_fu_124_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_150,
      D => sample_fu_306_p2(6),
      Q => sample4_fu_124(6),
      R => '0'
    );
\sample4_fu_124_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_150,
      D => sample_fu_306_p2(7),
      Q => sample4_fu_124(7),
      R => '0'
    );
\sample4_fu_124_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_150,
      D => CTRL_s_axi_U_n_12,
      Q => sample4_fu_124(8),
      R => '0'
    );
\sample4_fu_124_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_150,
      D => sample_fu_306_p2(9),
      Q => sample4_fu_124(9),
      R => '0'
    );
\trunc_ln60_reg_435_pp0_iter5_reg_reg[0]_srl6\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '1',
      A3 => '0',
      CE => ap_block_pp0_stage0_subdone,
      CLK => ap_clk,
      D => select_ln53_fu_262_p3(0),
      Q => \trunc_ln60_reg_435_pp0_iter5_reg_reg[0]_srl6_n_0\
    );
\trunc_ln60_reg_435_pp0_iter5_reg_reg[1]_srl6\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '1',
      A3 => '0',
      CE => ap_block_pp0_stage0_subdone,
      CLK => ap_clk,
      D => select_ln53_fu_262_p3(1),
      Q => \trunc_ln60_reg_435_pp0_iter5_reg_reg[1]_srl6_n_0\
    );
\trunc_ln60_reg_435_pp0_iter5_reg_reg[2]_srl6\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '1',
      A3 => '0',
      CE => ap_block_pp0_stage0_subdone,
      CLK => ap_clk,
      D => select_ln53_fu_262_p3(2),
      Q => \trunc_ln60_reg_435_pp0_iter5_reg_reg[2]_srl6_n_0\
    );
\trunc_ln60_reg_435_pp0_iter5_reg_reg[3]_srl6\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '1',
      A3 => '0',
      CE => ap_block_pp0_stage0_subdone,
      CLK => ap_clk,
      D => select_ln53_fu_262_p3(3),
      Q => \trunc_ln60_reg_435_pp0_iter5_reg_reg[3]_srl6_n_0\
    );
\trunc_ln60_reg_435_pp0_iter5_reg_reg[4]_srl6\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '1',
      A3 => '0',
      CE => ap_block_pp0_stage0_subdone,
      CLK => ap_clk,
      D => select_ln53_fu_262_p3(4),
      Q => \trunc_ln60_reg_435_pp0_iter5_reg_reg[4]_srl6_n_0\
    );
\trunc_ln60_reg_435_pp0_iter5_reg_reg[5]_srl6\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '1',
      A3 => '0',
      CE => ap_block_pp0_stage0_subdone,
      CLK => ap_clk,
      D => select_ln53_fu_262_p3(5),
      Q => \trunc_ln60_reg_435_pp0_iter5_reg_reg[5]_srl6_n_0\
    );
\trunc_ln60_reg_435_pp0_iter5_reg_reg[6]_srl6\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '1',
      A3 => '0',
      CE => ap_block_pp0_stage0_subdone,
      CLK => ap_clk,
      D => select_ln53_fu_262_p3(6),
      Q => \trunc_ln60_reg_435_pp0_iter5_reg_reg[6]_srl6_n_0\
    );
\trunc_ln60_reg_435_pp0_iter5_reg_reg[7]_srl6\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '1',
      A3 => '0',
      CE => ap_block_pp0_stage0_subdone,
      CLK => ap_clk,
      D => select_ln53_fu_262_p3(7),
      Q => \trunc_ln60_reg_435_pp0_iter5_reg_reg[7]_srl6_n_0\
    );
\trunc_ln60_reg_435_pp0_iter5_reg_reg[8]_srl6\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '1',
      A3 => '0',
      CE => ap_block_pp0_stage0_subdone,
      CLK => ap_clk,
      D => select_ln53_fu_262_p3(8),
      Q => \trunc_ln60_reg_435_pp0_iter5_reg_reg[8]_srl6_n_0\
    );
\trunc_ln60_reg_435_pp0_iter5_reg_reg[9]_srl6\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '1',
      A3 => '0',
      CE => ap_block_pp0_stage0_subdone,
      CLK => ap_clk,
      D => select_ln53_fu_262_p3(9),
      Q => \trunc_ln60_reg_435_pp0_iter5_reg_reg[9]_srl6_n_0\
    );
\trunc_ln60_reg_435_pp0_iter6_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => \trunc_ln60_reg_435_pp0_iter5_reg_reg[0]_srl6_n_0\,
      Q => trunc_ln60_reg_435_pp0_iter6_reg(0),
      R => '0'
    );
\trunc_ln60_reg_435_pp0_iter6_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => \trunc_ln60_reg_435_pp0_iter5_reg_reg[1]_srl6_n_0\,
      Q => trunc_ln60_reg_435_pp0_iter6_reg(1),
      R => '0'
    );
\trunc_ln60_reg_435_pp0_iter6_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => \trunc_ln60_reg_435_pp0_iter5_reg_reg[2]_srl6_n_0\,
      Q => trunc_ln60_reg_435_pp0_iter6_reg(2),
      R => '0'
    );
\trunc_ln60_reg_435_pp0_iter6_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => \trunc_ln60_reg_435_pp0_iter5_reg_reg[3]_srl6_n_0\,
      Q => trunc_ln60_reg_435_pp0_iter6_reg(3),
      R => '0'
    );
\trunc_ln60_reg_435_pp0_iter6_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => \trunc_ln60_reg_435_pp0_iter5_reg_reg[4]_srl6_n_0\,
      Q => trunc_ln60_reg_435_pp0_iter6_reg(4),
      R => '0'
    );
\trunc_ln60_reg_435_pp0_iter6_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => \trunc_ln60_reg_435_pp0_iter5_reg_reg[5]_srl6_n_0\,
      Q => trunc_ln60_reg_435_pp0_iter6_reg(5),
      R => '0'
    );
\trunc_ln60_reg_435_pp0_iter6_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => \trunc_ln60_reg_435_pp0_iter5_reg_reg[6]_srl6_n_0\,
      Q => trunc_ln60_reg_435_pp0_iter6_reg(6),
      R => '0'
    );
\trunc_ln60_reg_435_pp0_iter6_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => \trunc_ln60_reg_435_pp0_iter5_reg_reg[7]_srl6_n_0\,
      Q => trunc_ln60_reg_435_pp0_iter6_reg(7),
      R => '0'
    );
\trunc_ln60_reg_435_pp0_iter6_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => \trunc_ln60_reg_435_pp0_iter5_reg_reg[8]_srl6_n_0\,
      Q => trunc_ln60_reg_435_pp0_iter6_reg(8),
      R => '0'
    );
\trunc_ln60_reg_435_pp0_iter6_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => \trunc_ln60_reg_435_pp0_iter5_reg_reg[9]_srl6_n_0\,
      Q => trunc_ln60_reg_435_pp0_iter6_reg(9),
      R => '0'
    );
\tx_word_last_reg_440_pp0_iter7_reg_reg[0]_srl8\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '1',
      A3 => '0',
      CE => ap_block_pp0_stage0_subdone,
      CLK => ap_clk,
      D => tx_word_last_fu_300_p2,
      Q => \tx_word_last_reg_440_pp0_iter7_reg_reg[0]_srl8_n_0\
    );
\tx_word_last_reg_440_pp0_iter8_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => \tx_word_last_reg_440_pp0_iter7_reg_reg[0]_srl8_n_0\,
      Q => tx_word_last_reg_440_pp0_iter8_reg,
      R => '0'
    );
urem_3ns_3ns_3_7_1_U1: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen_urem_3ns_3ns_3_7_1
     port map (
      D(2 downto 0) => chirp_2_fu_270_p3(2 downto 0),
      Q(2 downto 0) => \loop[2].remd_tmp_reg[3]\(2 downto 0),
      ap_block_pp0_stage0_subdone => ap_block_pp0_stage0_subdone,
      ap_clk => ap_clk
    );
\zext_ln62_reg_464_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => m_axis_tx_TVALID_int_regslice,
      D => mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_11,
      Q => \^dbg_lfm_i\(0),
      R => '0'
    );
\zext_ln62_reg_464_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => m_axis_tx_TVALID_int_regslice,
      D => mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_1,
      Q => \^dbg_lfm_i\(10),
      R => '0'
    );
\zext_ln62_reg_464_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => m_axis_tx_TVALID_int_regslice,
      D => mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_0,
      Q => \^dbg_lfm_i\(11),
      R => '0'
    );
\zext_ln62_reg_464_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => m_axis_tx_TVALID_int_regslice,
      D => mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_10,
      Q => \^dbg_lfm_i\(1),
      R => '0'
    );
\zext_ln62_reg_464_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => m_axis_tx_TVALID_int_regslice,
      D => mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_9,
      Q => \^dbg_lfm_i\(2),
      R => '0'
    );
\zext_ln62_reg_464_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => m_axis_tx_TVALID_int_regslice,
      D => mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_8,
      Q => \^dbg_lfm_i\(3),
      R => '0'
    );
\zext_ln62_reg_464_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => m_axis_tx_TVALID_int_regslice,
      D => mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_7,
      Q => \^dbg_lfm_i\(4),
      R => '0'
    );
\zext_ln62_reg_464_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => m_axis_tx_TVALID_int_regslice,
      D => mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_6,
      Q => \^dbg_lfm_i\(5),
      R => '0'
    );
\zext_ln62_reg_464_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => m_axis_tx_TVALID_int_regslice,
      D => mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_5,
      Q => \^dbg_lfm_i\(6),
      R => '0'
    );
\zext_ln62_reg_464_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => m_axis_tx_TVALID_int_regslice,
      D => mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_4,
      Q => \^dbg_lfm_i\(7),
      R => '0'
    );
\zext_ln62_reg_464_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => m_axis_tx_TVALID_int_regslice,
      D => mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_3,
      Q => \^dbg_lfm_i\(8),
      R => '0'
    );
\zext_ln62_reg_464_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => m_axis_tx_TVALID_int_regslice,
      D => mac_muladd_10ns_3ns_10ns_12_4_1_U2_n_2,
      Q => \^dbg_lfm_i\(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    s_axi_CTRL_ARADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_CTRL_ARREADY : out STD_LOGIC;
    s_axi_CTRL_ARVALID : in STD_LOGIC;
    s_axi_CTRL_AWADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_CTRL_AWREADY : out STD_LOGIC;
    s_axi_CTRL_AWVALID : in STD_LOGIC;
    s_axi_CTRL_BREADY : in STD_LOGIC;
    s_axi_CTRL_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_BVALID : out STD_LOGIC;
    s_axi_CTRL_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_RREADY : in STD_LOGIC;
    s_axi_CTRL_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_RVALID : out STD_LOGIC;
    s_axi_CTRL_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_WREADY : out STD_LOGIC;
    s_axi_CTRL_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_CTRL_WVALID : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    m_axis_tx_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tx_TKEEP : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tx_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tx_TREADY : in STD_LOGIC;
    m_axis_tx_TSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tx_TVALID : out STD_LOGIC;
    dbg_lfm_i : out STD_LOGIC_VECTOR ( 15 downto 0 );
    dbg_lfm_q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    dbg_tx_sel : out STD_LOGIC_VECTOR ( 1 downto 0 );
    dbg_chirp_count : out STD_LOGIC_VECTOR ( 15 downto 0 );
    dbg_sample_count : out STD_LOGIC_VECTOR ( 15 downto 0 );
    dbg_chirp_start : out STD_LOGIC_VECTOR ( 0 to 0 );
    dbg_chirp_end : out STD_LOGIC_VECTOR ( 0 to 0 );
    dbg_enable : out STD_LOGIC_VECTOR ( 0 to 0 );
    dbg_state : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_lfm_tdm_gen_0_0,lfm_tdm_gen,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "HLS";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "lfm_tdm_gen,Vivado 2024.2";
  attribute hls_module : string;
  attribute hls_module of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^dbg_lfm_i\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \^m_axis_tx_tdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_axi_ctrl_rdata\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_inst_dbg_chirp_count_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_inst_dbg_chirp_end_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_dbg_chirp_start_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_dbg_enable_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_dbg_lfm_i_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal NLW_inst_dbg_sample_count_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_inst_dbg_state_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_dbg_tx_sel_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_m_axis_tx_TDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal NLW_inst_s_axi_CTRL_BRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_s_axi_CTRL_RDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 4 );
  signal NLW_inst_s_axi_CTRL_RRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_S_AXI_CTRL_ADDR_WIDTH : integer;
  attribute C_S_AXI_CTRL_ADDR_WIDTH of inst : label is 4;
  attribute C_S_AXI_CTRL_DATA_WIDTH : integer;
  attribute C_S_AXI_CTRL_DATA_WIDTH of inst : label is 32;
  attribute C_S_AXI_CTRL_WSTRB_WIDTH : integer;
  attribute C_S_AXI_CTRL_WSTRB_WIDTH of inst : label is 4;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of inst : label is 32;
  attribute C_S_AXI_WSTRB_WIDTH : integer;
  attribute C_S_AXI_WSTRB_WIDTH of inst : label is 4;
  attribute SDX_KERNEL : string;
  attribute SDX_KERNEL of inst : label is "true";
  attribute SDX_KERNEL_SYNTH_INST : string;
  attribute SDX_KERNEL_SYNTH_INST of inst : label is "inst";
  attribute SDX_KERNEL_TYPE : string;
  attribute SDX_KERNEL_TYPE of inst : label is "hls";
  attribute ap_ST_fsm_pp0_stage0 : string;
  attribute ap_ST_fsm_pp0_stage0 of inst : label is "1'b1";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ap_clk : signal is "xilinx.com:signal:clock:1.0 ap_clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of ap_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_CTRL:m_axis_tx, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_rst_n : signal is "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  attribute X_INTERFACE_MODE of ap_rst_n : signal is "slave";
  attribute X_INTERFACE_PARAMETER of ap_rst_n : signal is "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of interrupt : signal is "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT";
  attribute X_INTERFACE_MODE of interrupt : signal is "master";
  attribute X_INTERFACE_PARAMETER of interrupt : signal is "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute X_INTERFACE_INFO of m_axis_tx_TREADY : signal is "xilinx.com:interface:axis:1.0 m_axis_tx TREADY";
  attribute X_INTERFACE_INFO of m_axis_tx_TVALID : signal is "xilinx.com:interface:axis:1.0 m_axis_tx TVALID";
  attribute X_INTERFACE_INFO of s_axi_CTRL_ARREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL ARREADY";
  attribute X_INTERFACE_INFO of s_axi_CTRL_ARVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL ARVALID";
  attribute X_INTERFACE_INFO of s_axi_CTRL_AWREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL AWREADY";
  attribute X_INTERFACE_INFO of s_axi_CTRL_AWVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL AWVALID";
  attribute X_INTERFACE_INFO of s_axi_CTRL_BREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL BREADY";
  attribute X_INTERFACE_INFO of s_axi_CTRL_BVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL BVALID";
  attribute X_INTERFACE_INFO of s_axi_CTRL_RREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL RREADY";
  attribute X_INTERFACE_INFO of s_axi_CTRL_RVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL RVALID";
  attribute X_INTERFACE_INFO of s_axi_CTRL_WREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL WREADY";
  attribute X_INTERFACE_INFO of s_axi_CTRL_WVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL WVALID";
  attribute X_INTERFACE_INFO of dbg_chirp_count : signal is "xilinx.com:signal:data:1.0 dbg_chirp_count DATA";
  attribute X_INTERFACE_MODE of dbg_chirp_count : signal is "master";
  attribute X_INTERFACE_PARAMETER of dbg_chirp_count : signal is "XIL_INTERFACENAME dbg_chirp_count, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of dbg_chirp_end : signal is "xilinx.com:signal:data:1.0 dbg_chirp_end DATA";
  attribute X_INTERFACE_MODE of dbg_chirp_end : signal is "master";
  attribute X_INTERFACE_PARAMETER of dbg_chirp_end : signal is "XIL_INTERFACENAME dbg_chirp_end, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of dbg_chirp_start : signal is "xilinx.com:signal:data:1.0 dbg_chirp_start DATA";
  attribute X_INTERFACE_MODE of dbg_chirp_start : signal is "master";
  attribute X_INTERFACE_PARAMETER of dbg_chirp_start : signal is "XIL_INTERFACENAME dbg_chirp_start, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of dbg_enable : signal is "xilinx.com:signal:data:1.0 dbg_enable DATA";
  attribute X_INTERFACE_MODE of dbg_enable : signal is "master";
  attribute X_INTERFACE_PARAMETER of dbg_enable : signal is "XIL_INTERFACENAME dbg_enable, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of dbg_lfm_i : signal is "xilinx.com:signal:data:1.0 dbg_lfm_i DATA";
  attribute X_INTERFACE_MODE of dbg_lfm_i : signal is "master";
  attribute X_INTERFACE_PARAMETER of dbg_lfm_i : signal is "XIL_INTERFACENAME dbg_lfm_i, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of dbg_lfm_q : signal is "xilinx.com:signal:data:1.0 dbg_lfm_q DATA";
  attribute X_INTERFACE_MODE of dbg_lfm_q : signal is "master";
  attribute X_INTERFACE_PARAMETER of dbg_lfm_q : signal is "XIL_INTERFACENAME dbg_lfm_q, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of dbg_sample_count : signal is "xilinx.com:signal:data:1.0 dbg_sample_count DATA";
  attribute X_INTERFACE_MODE of dbg_sample_count : signal is "master";
  attribute X_INTERFACE_PARAMETER of dbg_sample_count : signal is "XIL_INTERFACENAME dbg_sample_count, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of dbg_state : signal is "xilinx.com:signal:data:1.0 dbg_state DATA";
  attribute X_INTERFACE_MODE of dbg_state : signal is "master";
  attribute X_INTERFACE_PARAMETER of dbg_state : signal is "XIL_INTERFACENAME dbg_state, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of dbg_tx_sel : signal is "xilinx.com:signal:data:1.0 dbg_tx_sel DATA";
  attribute X_INTERFACE_MODE of dbg_tx_sel : signal is "master";
  attribute X_INTERFACE_PARAMETER of dbg_tx_sel : signal is "XIL_INTERFACENAME dbg_tx_sel, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of m_axis_tx_TDATA : signal is "xilinx.com:interface:axis:1.0 m_axis_tx TDATA";
  attribute X_INTERFACE_MODE of m_axis_tx_TDATA : signal is "master";
  attribute X_INTERFACE_PARAMETER of m_axis_tx_TDATA : signal is "XIL_INTERFACENAME m_axis_tx, TUSER_WIDTH 0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 99999001, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tx_TKEEP : signal is "xilinx.com:interface:axis:1.0 m_axis_tx TKEEP";
  attribute X_INTERFACE_INFO of m_axis_tx_TLAST : signal is "xilinx.com:interface:axis:1.0 m_axis_tx TLAST";
  attribute X_INTERFACE_INFO of m_axis_tx_TSTRB : signal is "xilinx.com:interface:axis:1.0 m_axis_tx TSTRB";
  attribute X_INTERFACE_INFO of s_axi_CTRL_ARADDR : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL ARADDR";
  attribute X_INTERFACE_MODE of s_axi_CTRL_ARADDR : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s_axi_CTRL_ARADDR : signal is "XIL_INTERFACENAME s_axi_CTRL, ADDR_WIDTH 4, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 99999001, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_CTRL_AWADDR : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL AWADDR";
  attribute X_INTERFACE_INFO of s_axi_CTRL_BRESP : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL BRESP";
  attribute X_INTERFACE_INFO of s_axi_CTRL_RDATA : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL RDATA";
  attribute X_INTERFACE_INFO of s_axi_CTRL_RRESP : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL RRESP";
  attribute X_INTERFACE_INFO of s_axi_CTRL_WDATA : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL WDATA";
  attribute X_INTERFACE_INFO of s_axi_CTRL_WSTRB : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL WSTRB";
begin
  dbg_chirp_count(15) <= \<const0>\;
  dbg_chirp_count(14) <= \<const0>\;
  dbg_chirp_count(13) <= \<const0>\;
  dbg_chirp_count(12) <= \<const0>\;
  dbg_chirp_count(11) <= \<const0>\;
  dbg_chirp_count(10) <= \<const0>\;
  dbg_chirp_count(9) <= \<const0>\;
  dbg_chirp_count(8) <= \<const0>\;
  dbg_chirp_count(7) <= \<const0>\;
  dbg_chirp_count(6) <= \<const0>\;
  dbg_chirp_count(5) <= \<const0>\;
  dbg_chirp_count(4) <= \<const0>\;
  dbg_chirp_count(3) <= \<const0>\;
  dbg_chirp_count(2) <= \<const0>\;
  dbg_chirp_count(1) <= \<const1>\;
  dbg_chirp_count(0) <= \<const1>\;
  dbg_chirp_end(0) <= \<const1>\;
  dbg_chirp_start(0) <= \<const0>\;
  dbg_enable(0) <= \<const0>\;
  dbg_lfm_i(15) <= \<const0>\;
  dbg_lfm_i(14) <= \<const0>\;
  dbg_lfm_i(13) <= \<const0>\;
  dbg_lfm_i(12) <= \<const0>\;
  dbg_lfm_i(11 downto 0) <= \^dbg_lfm_i\(11 downto 0);
  dbg_sample_count(15) <= \<const0>\;
  dbg_sample_count(14) <= \<const0>\;
  dbg_sample_count(13) <= \<const0>\;
  dbg_sample_count(12) <= \<const0>\;
  dbg_sample_count(11) <= \<const0>\;
  dbg_sample_count(10) <= \<const0>\;
  dbg_sample_count(9) <= \<const1>\;
  dbg_sample_count(8) <= \<const1>\;
  dbg_sample_count(7) <= \<const1>\;
  dbg_sample_count(6) <= \<const1>\;
  dbg_sample_count(5) <= \<const1>\;
  dbg_sample_count(4) <= \<const1>\;
  dbg_sample_count(3) <= \<const1>\;
  dbg_sample_count(2) <= \<const1>\;
  dbg_sample_count(1) <= \<const1>\;
  dbg_sample_count(0) <= \<const1>\;
  dbg_state(2) <= \<const0>\;
  dbg_state(1) <= \<const0>\;
  dbg_state(0) <= \<const0>\;
  dbg_tx_sel(1) <= \<const0>\;
  dbg_tx_sel(0) <= \<const0>\;
  m_axis_tx_TDATA(31 downto 16) <= \^m_axis_tx_tdata\(31 downto 16);
  m_axis_tx_TDATA(15) <= \<const0>\;
  m_axis_tx_TDATA(14) <= \<const0>\;
  m_axis_tx_TDATA(13) <= \<const0>\;
  m_axis_tx_TDATA(12) <= \<const0>\;
  m_axis_tx_TDATA(11 downto 0) <= \^m_axis_tx_tdata\(11 downto 0);
  s_axi_CTRL_BRESP(1) <= \<const0>\;
  s_axi_CTRL_BRESP(0) <= \<const0>\;
  s_axi_CTRL_RDATA(31) <= \<const0>\;
  s_axi_CTRL_RDATA(30) <= \<const0>\;
  s_axi_CTRL_RDATA(29) <= \<const0>\;
  s_axi_CTRL_RDATA(28) <= \<const0>\;
  s_axi_CTRL_RDATA(27) <= \<const0>\;
  s_axi_CTRL_RDATA(26) <= \<const0>\;
  s_axi_CTRL_RDATA(25) <= \<const0>\;
  s_axi_CTRL_RDATA(24) <= \<const0>\;
  s_axi_CTRL_RDATA(23) <= \<const0>\;
  s_axi_CTRL_RDATA(22) <= \<const0>\;
  s_axi_CTRL_RDATA(21) <= \<const0>\;
  s_axi_CTRL_RDATA(20) <= \<const0>\;
  s_axi_CTRL_RDATA(19) <= \<const0>\;
  s_axi_CTRL_RDATA(18) <= \<const0>\;
  s_axi_CTRL_RDATA(17) <= \<const0>\;
  s_axi_CTRL_RDATA(16) <= \<const0>\;
  s_axi_CTRL_RDATA(15) <= \<const0>\;
  s_axi_CTRL_RDATA(14) <= \<const0>\;
  s_axi_CTRL_RDATA(13) <= \<const0>\;
  s_axi_CTRL_RDATA(12) <= \<const0>\;
  s_axi_CTRL_RDATA(11) <= \<const0>\;
  s_axi_CTRL_RDATA(10) <= \<const0>\;
  s_axi_CTRL_RDATA(9) <= \^s_axi_ctrl_rdata\(9);
  s_axi_CTRL_RDATA(8) <= \<const0>\;
  s_axi_CTRL_RDATA(7) <= \^s_axi_ctrl_rdata\(7);
  s_axi_CTRL_RDATA(6) <= \<const0>\;
  s_axi_CTRL_RDATA(5) <= \<const0>\;
  s_axi_CTRL_RDATA(4) <= \<const0>\;
  s_axi_CTRL_RDATA(3 downto 0) <= \^s_axi_ctrl_rdata\(3 downto 0);
  s_axi_CTRL_RRESP(1) <= \<const0>\;
  s_axi_CTRL_RRESP(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen
     port map (
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      dbg_chirp_count(15 downto 0) => NLW_inst_dbg_chirp_count_UNCONNECTED(15 downto 0),
      dbg_chirp_end(0) => NLW_inst_dbg_chirp_end_UNCONNECTED(0),
      dbg_chirp_start(0) => NLW_inst_dbg_chirp_start_UNCONNECTED(0),
      dbg_enable(0) => NLW_inst_dbg_enable_UNCONNECTED(0),
      dbg_lfm_i(15 downto 12) => NLW_inst_dbg_lfm_i_UNCONNECTED(15 downto 12),
      dbg_lfm_i(11 downto 0) => \^dbg_lfm_i\(11 downto 0),
      dbg_lfm_q(15 downto 0) => dbg_lfm_q(15 downto 0),
      dbg_sample_count(15 downto 0) => NLW_inst_dbg_sample_count_UNCONNECTED(15 downto 0),
      dbg_state(2 downto 0) => NLW_inst_dbg_state_UNCONNECTED(2 downto 0),
      dbg_tx_sel(1 downto 0) => NLW_inst_dbg_tx_sel_UNCONNECTED(1 downto 0),
      interrupt => interrupt,
      m_axis_tx_TDATA(31 downto 16) => \^m_axis_tx_tdata\(31 downto 16),
      m_axis_tx_TDATA(15 downto 12) => NLW_inst_m_axis_tx_TDATA_UNCONNECTED(15 downto 12),
      m_axis_tx_TDATA(11 downto 0) => \^m_axis_tx_tdata\(11 downto 0),
      m_axis_tx_TKEEP(3 downto 0) => m_axis_tx_TKEEP(3 downto 0),
      m_axis_tx_TLAST(0) => m_axis_tx_TLAST(0),
      m_axis_tx_TREADY => m_axis_tx_TREADY,
      m_axis_tx_TSTRB(3 downto 0) => m_axis_tx_TSTRB(3 downto 0),
      m_axis_tx_TVALID => m_axis_tx_TVALID,
      s_axi_CTRL_ARADDR(3 downto 0) => s_axi_CTRL_ARADDR(3 downto 0),
      s_axi_CTRL_ARREADY => s_axi_CTRL_ARREADY,
      s_axi_CTRL_ARVALID => s_axi_CTRL_ARVALID,
      s_axi_CTRL_AWADDR(3 downto 2) => s_axi_CTRL_AWADDR(3 downto 2),
      s_axi_CTRL_AWADDR(1 downto 0) => B"00",
      s_axi_CTRL_AWREADY => s_axi_CTRL_AWREADY,
      s_axi_CTRL_AWVALID => s_axi_CTRL_AWVALID,
      s_axi_CTRL_BREADY => s_axi_CTRL_BREADY,
      s_axi_CTRL_BRESP(1 downto 0) => NLW_inst_s_axi_CTRL_BRESP_UNCONNECTED(1 downto 0),
      s_axi_CTRL_BVALID => s_axi_CTRL_BVALID,
      s_axi_CTRL_RDATA(31 downto 10) => NLW_inst_s_axi_CTRL_RDATA_UNCONNECTED(31 downto 10),
      s_axi_CTRL_RDATA(9) => \^s_axi_ctrl_rdata\(9),
      s_axi_CTRL_RDATA(8) => NLW_inst_s_axi_CTRL_RDATA_UNCONNECTED(8),
      s_axi_CTRL_RDATA(7) => \^s_axi_ctrl_rdata\(7),
      s_axi_CTRL_RDATA(6 downto 4) => NLW_inst_s_axi_CTRL_RDATA_UNCONNECTED(6 downto 4),
      s_axi_CTRL_RDATA(3 downto 0) => \^s_axi_ctrl_rdata\(3 downto 0),
      s_axi_CTRL_RREADY => s_axi_CTRL_RREADY,
      s_axi_CTRL_RRESP(1 downto 0) => NLW_inst_s_axi_CTRL_RRESP_UNCONNECTED(1 downto 0),
      s_axi_CTRL_RVALID => s_axi_CTRL_RVALID,
      s_axi_CTRL_WDATA(31 downto 8) => B"000000000000000000000000",
      s_axi_CTRL_WDATA(7) => s_axi_CTRL_WDATA(7),
      s_axi_CTRL_WDATA(6 downto 2) => B"00000",
      s_axi_CTRL_WDATA(1 downto 0) => s_axi_CTRL_WDATA(1 downto 0),
      s_axi_CTRL_WREADY => s_axi_CTRL_WREADY,
      s_axi_CTRL_WSTRB(3 downto 1) => B"000",
      s_axi_CTRL_WSTRB(0) => s_axi_CTRL_WSTRB(0),
      s_axi_CTRL_WVALID => s_axi_CTRL_WVALID
    );
end STRUCTURE;
