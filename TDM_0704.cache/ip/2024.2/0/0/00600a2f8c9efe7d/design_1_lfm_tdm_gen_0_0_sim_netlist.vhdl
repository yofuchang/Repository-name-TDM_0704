-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Tue Jul 14 20:20:41 2026
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
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    icmp_ln80_fu_354_p2 : out STD_LOGIC;
    \indvar_flatten2_fu_122_reg[11]\ : out STD_LOGIC;
    \indvar_flatten2_fu_122_reg[3]\ : out STD_LOGIC;
    \indvar_flatten2_fu_122_reg[0]\ : out STD_LOGIC;
    \indvar_flatten2_fu_122_reg[2]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \sample4_fu_130_reg[9]\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \sample4_fu_130_reg[7]\ : out STD_LOGIC;
    icmp_ln89_fu_342_p2 : out STD_LOGIC;
    \FSM_onehot_wstate_reg[1]_0\ : out STD_LOGIC;
    s_axi_CTRL_RDATA : out STD_LOGIC_VECTOR ( 5 downto 0 );
    ap_clk : in STD_LOGIC;
    s_axi_CTRL_ARVALID : in STD_LOGIC;
    s_axi_CTRL_ARADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_CTRL_RREADY : in STD_LOGIC;
    s_axi_CTRL_WVALID : in STD_LOGIC;
    s_axi_CTRL_BREADY : in STD_LOGIC;
    s_axi_CTRL_WSTRB : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_CTRL_WDATA : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tx_TREADY_int_regslice : in STD_LOGIC;
    int_task_ap_done_reg_0 : in STD_LOGIC;
    ap_enable_reg_pp0_iter2 : in STD_LOGIC;
    ap_enable_reg_pp0_iter1 : in STD_LOGIC;
    ap_loop_init : in STD_LOGIC;
    int_ap_start_reg_0 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    ap_rst_n : in STD_LOGIC;
    \chirp_16_fu_134_reg[2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \chirp_16_fu_134_reg[2]_0\ : in STD_LOGIC;
    \sample4_fu_130_reg[10]\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \chirp_16_fu_134_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    icmp_ln89_reg_423 : in STD_LOGIC;
    icmp_ln80_reg_428 : in STD_LOGIC;
    s_axi_CTRL_AWVALID : in STD_LOGIC;
    ap_condition_121 : in STD_LOGIC;
    int_ap_start_reg_1 : in STD_LOGIC;
    s_axi_CTRL_AWADDR : in STD_LOGIC_VECTOR ( 1 downto 0 );
    int_isr8_out : in STD_LOGIC;
    \int_isr_reg[1]_0\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen_CTRL_s_axi;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen_CTRL_s_axi is
  signal \FSM_onehot_rstate[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rstate[2]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_rstate_reg[1]_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[3]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_wstate_reg[1]_0\ : STD_LOGIC;
  signal \^fsm_onehot_wstate_reg[2]_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ap_idle : STD_LOGIC;
  signal \^ap_rst_n_inv\ : STD_LOGIC;
  signal \^ap_start\ : STD_LOGIC;
  signal ar_hs : STD_LOGIC;
  signal auto_restart_status_i_1_n_0 : STD_LOGIC;
  signal auto_restart_status_reg_n_0 : STD_LOGIC;
  signal \chirp_16_fu_134[1]_i_2_n_0\ : STD_LOGIC;
  signal \chirp_16_fu_134[1]_i_3_n_0\ : STD_LOGIC;
  signal \icmp_ln89_reg_423[0]_i_2_n_0\ : STD_LOGIC;
  signal \^indvar_flatten2_fu_122_reg[0]\ : STD_LOGIC;
  signal \^indvar_flatten2_fu_122_reg[11]\ : STD_LOGIC;
  signal \^indvar_flatten2_fu_122_reg[3]\ : STD_LOGIC;
  signal int_ap_ready : STD_LOGIC;
  signal int_ap_ready_i_1_n_0 : STD_LOGIC;
  signal int_ap_ready_i_2_n_0 : STD_LOGIC;
  signal int_ap_start5_out : STD_LOGIC;
  signal int_ap_start_i_1_n_0 : STD_LOGIC;
  signal int_auto_restart_i_1_n_0 : STD_LOGIC;
  signal int_auto_restart_i_2_n_0 : STD_LOGIC;
  signal int_gie_i_1_n_0 : STD_LOGIC;
  signal int_gie_i_2_n_0 : STD_LOGIC;
  signal int_gie_reg_n_0 : STD_LOGIC;
  signal int_ier10_out : STD_LOGIC;
  signal int_interrupt0 : STD_LOGIC;
  signal int_isr7_out : STD_LOGIC;
  signal \int_isr[0]_i_1_n_0\ : STD_LOGIC;
  signal \int_isr[1]_i_1_n_0\ : STD_LOGIC;
  signal \int_isr_reg_n_0_[0]\ : STD_LOGIC;
  signal \int_isr_reg_n_0_[1]\ : STD_LOGIC;
  signal int_task_ap_done : STD_LOGIC;
  signal int_task_ap_done_i_1_n_0 : STD_LOGIC;
  signal int_task_ap_done_i_2_n_0 : STD_LOGIC;
  signal int_task_ap_done_i_5_n_0 : STD_LOGIC;
  signal \^interrupt\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \p_0_in__0\ : STD_LOGIC;
  signal rdata : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[0]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[9]_i_1_n_0\ : STD_LOGIC;
  signal \^s_axi_ctrl_bvalid\ : STD_LOGIC;
  signal \^s_axi_ctrl_rvalid\ : STD_LOGIC;
  signal \sample4_fu_130[8]_i_2_n_0\ : STD_LOGIC;
  signal \^sample4_fu_130_reg[7]\ : STD_LOGIC;
  signal task_ap_done : STD_LOGIC;
  signal waddr : STD_LOGIC;
  signal \waddr_reg_n_0_[2]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[3]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_rstate[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \FSM_onehot_rstate[2]_i_1\ : label is "soft_lutpair7";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_rstate_reg[1]\ : label is "RDIDLE:010,RDDATA:100,iSTATE:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rstate_reg[2]\ : label is "RDIDLE:010,RDDATA:100,iSTATE:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[1]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[2]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[3]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute SOFT_HLUTNM of auto_restart_status_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \chirp_16_fu_134[1]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \icmp_ln89_reg_423[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \icmp_ln89_reg_423[0]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of int_ap_idle_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of int_ap_start_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of int_auto_restart_i_2 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \int_isr[0]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \int_isr[1]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of int_task_ap_done_i_2 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \rdata[0]_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \sample4_fu_130[10]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \sample4_fu_130[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \sample4_fu_130[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \sample4_fu_130[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \sample4_fu_130[6]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \sample4_fu_130[7]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \sample4_fu_130[9]_i_1\ : label is "soft_lutpair9";
begin
  \FSM_onehot_rstate_reg[1]_0\ <= \^fsm_onehot_rstate_reg[1]_0\;
  \FSM_onehot_wstate_reg[1]_0\ <= \^fsm_onehot_wstate_reg[1]_0\;
  \FSM_onehot_wstate_reg[2]_0\ <= \^fsm_onehot_wstate_reg[2]_0\;
  Q(0) <= \^q\(0);
  ap_rst_n_inv <= \^ap_rst_n_inv\;
  ap_start <= \^ap_start\;
  \indvar_flatten2_fu_122_reg[0]\ <= \^indvar_flatten2_fu_122_reg[0]\;
  \indvar_flatten2_fu_122_reg[11]\ <= \^indvar_flatten2_fu_122_reg[11]\;
  \indvar_flatten2_fu_122_reg[3]\ <= \^indvar_flatten2_fu_122_reg[3]\;
  interrupt <= \^interrupt\;
  s_axi_CTRL_BVALID <= \^s_axi_ctrl_bvalid\;
  s_axi_CTRL_RVALID <= \^s_axi_ctrl_rvalid\;
  \sample4_fu_130_reg[7]\ <= \^sample4_fu_130_reg[7]\;
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
      INIT => X"FF474447"
    )
        port map (
      I0 => s_axi_CTRL_AWVALID,
      I1 => \^fsm_onehot_wstate_reg[1]_0\,
      I2 => \^fsm_onehot_wstate_reg[2]_0\,
      I3 => \^s_axi_ctrl_bvalid\,
      I4 => s_axi_CTRL_BREADY,
      O => \FSM_onehot_wstate[1]_i_1_n_0\
    );
\FSM_onehot_wstate[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => s_axi_CTRL_WVALID,
      I1 => \^fsm_onehot_wstate_reg[2]_0\,
      I2 => s_axi_CTRL_AWVALID,
      I3 => \^fsm_onehot_wstate_reg[1]_0\,
      O => \FSM_onehot_wstate[2]_i_1_n_0\
    );
\FSM_onehot_wstate[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => s_axi_CTRL_WVALID,
      I1 => \^fsm_onehot_wstate_reg[2]_0\,
      I2 => s_axi_CTRL_BREADY,
      I3 => \^s_axi_ctrl_bvalid\,
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
auto_restart_status_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEAAAA"
    )
        port map (
      I0 => p_0_in(7),
      I1 => \^ap_start\,
      I2 => ap_enable_reg_pp0_iter1,
      I3 => ap_enable_reg_pp0_iter2,
      I4 => auto_restart_status_reg_n_0,
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
\chirp_16_fu_134[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF06"
    )
        port map (
      I0 => \chirp_16_fu_134_reg[2]\(1),
      I1 => \chirp_16_fu_134_reg[2]\(0),
      I2 => \icmp_ln89_reg_423[0]_i_2_n_0\,
      I3 => \chirp_16_fu_134[1]_i_2_n_0\,
      O => D(0)
    );
\chirp_16_fu_134[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BE0000003C003C00"
    )
        port map (
      I0 => \^ap_start\,
      I1 => \chirp_16_fu_134_reg[1]\(0),
      I2 => \chirp_16_fu_134_reg[1]\(1),
      I3 => icmp_ln89_reg_423,
      I4 => \chirp_16_fu_134[1]_i_3_n_0\,
      I5 => ap_loop_init,
      O => \chirp_16_fu_134[1]_i_2_n_0\
    );
\chirp_16_fu_134[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1,
      I1 => icmp_ln80_reg_428,
      O => \chirp_16_fu_134[1]_i_3_n_0\
    );
\chirp_16_fu_134[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF1444"
    )
        port map (
      I0 => \icmp_ln89_reg_423[0]_i_2_n_0\,
      I1 => \chirp_16_fu_134_reg[2]\(2),
      I2 => \chirp_16_fu_134_reg[2]\(0),
      I3 => \chirp_16_fu_134_reg[2]\(1),
      I4 => \chirp_16_fu_134_reg[2]_0\,
      O => D(1)
    );
\icmp_ln80_reg_428[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0070"
    )
        port map (
      I0 => \^ap_start\,
      I1 => ap_loop_init,
      I2 => int_ap_start_reg_0(5),
      I3 => \^indvar_flatten2_fu_122_reg[11]\,
      O => icmp_ln80_fu_354_p2
    );
\icmp_ln89_reg_423[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \sample4_fu_130_reg[10]\(10),
      I1 => \sample4_fu_130_reg[10]\(9),
      I2 => \icmp_ln89_reg_423[0]_i_2_n_0\,
      I3 => \^sample4_fu_130_reg[7]\,
      O => icmp_ln89_fu_342_p2
    );
\icmp_ln89_reg_423[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBB8888"
    )
        port map (
      I0 => \^ap_start\,
      I1 => ap_loop_init,
      I2 => icmp_ln80_reg_428,
      I3 => ap_enable_reg_pp0_iter1,
      I4 => icmp_ln89_reg_423,
      O => \icmp_ln89_reg_423[0]_i_2_n_0\
    );
int_ap_idle_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter2,
      I1 => ap_enable_reg_pp0_iter1,
      I2 => \^ap_start\,
      O => ap_idle
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
int_ap_ready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555557500000030"
    )
        port map (
      I0 => int_ap_ready_i_2_n_0,
      I1 => p_0_in(7),
      I2 => ap_condition_121,
      I3 => int_ap_start_reg_1,
      I4 => \^indvar_flatten2_fu_122_reg[11]\,
      I5 => int_ap_ready,
      O => int_ap_ready_i_1_n_0
    );
int_ap_ready_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => s_axi_CTRL_ARVALID,
      I1 => \^fsm_onehot_rstate_reg[1]_0\,
      I2 => s_axi_CTRL_ARADDR(2),
      I3 => s_axi_CTRL_ARADDR(0),
      I4 => s_axi_CTRL_ARADDR(1),
      I5 => s_axi_CTRL_ARADDR(3),
      O => int_ap_ready_i_2_n_0
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
int_ap_start_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFFFFFF0200"
    )
        port map (
      I0 => p_0_in(7),
      I1 => \^indvar_flatten2_fu_122_reg[11]\,
      I2 => int_ap_start_reg_1,
      I3 => ap_condition_121,
      I4 => int_ap_start5_out,
      I5 => \^ap_start\,
      O => int_ap_start_i_1_n_0
    );
int_ap_start_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF7F"
    )
        port map (
      I0 => int_ap_start_reg_0(11),
      I1 => int_ap_start_reg_0(8),
      I2 => int_ap_start_reg_0(2),
      I3 => \^indvar_flatten2_fu_122_reg[3]\,
      I4 => \^indvar_flatten2_fu_122_reg[0]\,
      O => \^indvar_flatten2_fu_122_reg[11]\
    );
int_ap_start_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000020000000"
    )
        port map (
      I0 => s_axi_CTRL_WDATA(0),
      I1 => \waddr_reg_n_0_[2]\,
      I2 => \^fsm_onehot_wstate_reg[2]_0\,
      I3 => s_axi_CTRL_WVALID,
      I4 => s_axi_CTRL_WSTRB(0),
      I5 => \waddr_reg_n_0_[3]\,
      O => int_ap_start5_out
    );
int_ap_start_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => int_ap_start_reg_0(3),
      I1 => int_ap_start_reg_0(4),
      I2 => int_ap_start_reg_0(10),
      I3 => int_ap_start_reg_0(9),
      O => \^indvar_flatten2_fu_122_reg[3]\
    );
int_ap_start_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => int_ap_start_reg_0(0),
      I1 => int_ap_start_reg_0(1),
      I2 => int_ap_start_reg_0(6),
      I3 => int_ap_start_reg_0(7),
      O => \^indvar_flatten2_fu_122_reg[0]\
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
int_auto_restart_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_CTRL_WDATA(2),
      I1 => int_auto_restart_i_2_n_0,
      I2 => p_0_in(7),
      O => int_auto_restart_i_1_n_0
    );
int_auto_restart_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \waddr_reg_n_0_[3]\,
      I1 => s_axi_CTRL_WSTRB(0),
      I2 => s_axi_CTRL_WVALID,
      I3 => \^fsm_onehot_wstate_reg[2]_0\,
      I4 => \waddr_reg_n_0_[2]\,
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
int_gie_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => s_axi_CTRL_WDATA(0),
      I1 => \waddr_reg_n_0_[3]\,
      I2 => int_gie_i_2_n_0,
      I3 => int_gie_reg_n_0,
      O => int_gie_i_1_n_0
    );
int_gie_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^fsm_onehot_wstate_reg[2]_0\,
      I1 => s_axi_CTRL_WVALID,
      I2 => s_axi_CTRL_WSTRB(0),
      I3 => \waddr_reg_n_0_[2]\,
      O => int_gie_i_2_n_0
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
      INIT => X"00008000"
    )
        port map (
      I0 => \waddr_reg_n_0_[3]\,
      I1 => s_axi_CTRL_WSTRB(0),
      I2 => s_axi_CTRL_WVALID,
      I3 => \^fsm_onehot_wstate_reg[2]_0\,
      I4 => \waddr_reg_n_0_[2]\,
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
      Q => \^q\(0),
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
\int_isr[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F7F8"
    )
        port map (
      I0 => s_axi_CTRL_WDATA(0),
      I1 => int_isr7_out,
      I2 => int_isr8_out,
      I3 => \int_isr_reg_n_0_[0]\,
      O => \int_isr[0]_i_1_n_0\
    );
\int_isr[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \waddr_reg_n_0_[3]\,
      I1 => \waddr_reg_n_0_[2]\,
      I2 => s_axi_CTRL_WSTRB(0),
      I3 => s_axi_CTRL_WVALID,
      I4 => \^fsm_onehot_wstate_reg[2]_0\,
      O => int_isr7_out
    );
\int_isr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77F7777788F88888"
    )
        port map (
      I0 => s_axi_CTRL_WDATA(1),
      I1 => int_isr7_out,
      I2 => ap_condition_121,
      I3 => \int_isr_reg[1]_0\,
      I4 => \p_0_in__0\,
      I5 => \int_isr_reg_n_0_[1]\,
      O => \int_isr[1]_i_1_n_0\
    );
\int_isr[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => int_ap_start_reg_0(2),
      I1 => int_ap_start_reg_0(8),
      I2 => int_ap_start_reg_0(11),
      O => \indvar_flatten2_fu_122_reg[2]\
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
int_task_ap_done_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBFFF00"
    )
        port map (
      I0 => int_task_ap_done_i_2_n_0,
      I1 => \^fsm_onehot_rstate_reg[1]_0\,
      I2 => s_axi_CTRL_ARVALID,
      I3 => task_ap_done,
      I4 => int_task_ap_done,
      O => int_task_ap_done_i_1_n_0
    );
int_task_ap_done_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => s_axi_CTRL_ARADDR(3),
      I1 => s_axi_CTRL_ARADDR(1),
      I2 => s_axi_CTRL_ARADDR(0),
      I3 => s_axi_CTRL_ARADDR(2),
      O => int_task_ap_done_i_2_n_0
    );
int_task_ap_done_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00CC00880FCC0088"
    )
        port map (
      I0 => m_axis_tx_TREADY_int_regslice,
      I1 => int_task_ap_done_reg_0,
      I2 => p_0_in(2),
      I3 => auto_restart_status_reg_n_0,
      I4 => int_task_ap_done_i_5_n_0,
      I5 => \^ap_start\,
      O => task_ap_done
    );
int_task_ap_done_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1,
      I1 => ap_enable_reg_pp0_iter2,
      O => int_task_ap_done_i_5_n_0
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
\rdata[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCCFCEE"
    )
        port map (
      I0 => \^ap_start\,
      I1 => \rdata[0]_i_2_n_0\,
      I2 => \^q\(0),
      I3 => s_axi_CTRL_ARADDR(3),
      I4 => \rdata[0]_i_3_n_0\,
      O => rdata(0)
    );
\rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1010100000001000"
    )
        port map (
      I0 => s_axi_CTRL_ARADDR(1),
      I1 => s_axi_CTRL_ARADDR(0),
      I2 => s_axi_CTRL_ARADDR(2),
      I3 => int_gie_reg_n_0,
      I4 => s_axi_CTRL_ARADDR(3),
      I5 => \int_isr_reg_n_0_[0]\,
      O => \rdata[0]_i_2_n_0\
    );
\rdata[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => s_axi_CTRL_ARADDR(2),
      I1 => s_axi_CTRL_ARADDR(0),
      I2 => s_axi_CTRL_ARADDR(1),
      O => \rdata[0]_i_3_n_0\
    );
\rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3303020230000202"
    )
        port map (
      I0 => int_task_ap_done,
      I1 => \rdata[1]_i_2_n_0\,
      I2 => s_axi_CTRL_ARADDR(2),
      I3 => \int_isr_reg_n_0_[1]\,
      I4 => s_axi_CTRL_ARADDR(3),
      I5 => \p_0_in__0\,
      O => rdata(1)
    );
\rdata[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_axi_CTRL_ARADDR(1),
      I1 => s_axi_CTRL_ARADDR(0),
      O => \rdata[1]_i_2_n_0\
    );
\rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFE000000000000"
    )
        port map (
      I0 => s_axi_CTRL_ARADDR(2),
      I1 => s_axi_CTRL_ARADDR(0),
      I2 => s_axi_CTRL_ARADDR(1),
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
\sample4_fu_130[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B4"
    )
        port map (
      I0 => \^sample4_fu_130_reg[7]\,
      I1 => \sample4_fu_130_reg[10]\(9),
      I2 => \sample4_fu_130_reg[10]\(10),
      I3 => \icmp_ln89_reg_423[0]_i_2_n_0\,
      O => \sample4_fu_130_reg[9]\(9)
    );
\sample4_fu_130[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \sample4_fu_130_reg[10]\(0),
      I1 => \icmp_ln89_reg_423[0]_i_2_n_0\,
      I2 => \sample4_fu_130_reg[10]\(1),
      O => \sample4_fu_130_reg[9]\(0)
    );
\sample4_fu_130[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0078"
    )
        port map (
      I0 => \sample4_fu_130_reg[10]\(1),
      I1 => \sample4_fu_130_reg[10]\(0),
      I2 => \sample4_fu_130_reg[10]\(2),
      I3 => \icmp_ln89_reg_423[0]_i_2_n_0\,
      O => \sample4_fu_130_reg[9]\(1)
    );
\sample4_fu_130[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007F80"
    )
        port map (
      I0 => \sample4_fu_130_reg[10]\(0),
      I1 => \sample4_fu_130_reg[10]\(1),
      I2 => \sample4_fu_130_reg[10]\(2),
      I3 => \sample4_fu_130_reg[10]\(3),
      I4 => \icmp_ln89_reg_423[0]_i_2_n_0\,
      O => \sample4_fu_130_reg[9]\(2)
    );
\sample4_fu_130[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007FFF8000"
    )
        port map (
      I0 => \sample4_fu_130_reg[10]\(3),
      I1 => \sample4_fu_130_reg[10]\(0),
      I2 => \sample4_fu_130_reg[10]\(1),
      I3 => \sample4_fu_130_reg[10]\(2),
      I4 => \sample4_fu_130_reg[10]\(4),
      I5 => \icmp_ln89_reg_423[0]_i_2_n_0\,
      O => \sample4_fu_130_reg[9]\(3)
    );
\sample4_fu_130[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \sample4_fu_130[8]_i_2_n_0\,
      I1 => \sample4_fu_130_reg[10]\(5),
      I2 => \icmp_ln89_reg_423[0]_i_2_n_0\,
      O => \sample4_fu_130_reg[9]\(4)
    );
\sample4_fu_130[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B4"
    )
        port map (
      I0 => \sample4_fu_130[8]_i_2_n_0\,
      I1 => \sample4_fu_130_reg[10]\(5),
      I2 => \sample4_fu_130_reg[10]\(6),
      I3 => \icmp_ln89_reg_423[0]_i_2_n_0\,
      O => \sample4_fu_130_reg[9]\(5)
    );
\sample4_fu_130[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000DF20"
    )
        port map (
      I0 => \sample4_fu_130_reg[10]\(5),
      I1 => \sample4_fu_130[8]_i_2_n_0\,
      I2 => \sample4_fu_130_reg[10]\(6),
      I3 => \sample4_fu_130_reg[10]\(7),
      I4 => \icmp_ln89_reg_423[0]_i_2_n_0\,
      O => \sample4_fu_130_reg[9]\(6)
    );
\sample4_fu_130[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000DFFF2000"
    )
        port map (
      I0 => \sample4_fu_130_reg[10]\(6),
      I1 => \sample4_fu_130[8]_i_2_n_0\,
      I2 => \sample4_fu_130_reg[10]\(5),
      I3 => \sample4_fu_130_reg[10]\(7),
      I4 => \sample4_fu_130_reg[10]\(8),
      I5 => \icmp_ln89_reg_423[0]_i_2_n_0\,
      O => \sample4_fu_130_reg[9]\(7)
    );
\sample4_fu_130[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \sample4_fu_130_reg[10]\(3),
      I1 => \sample4_fu_130_reg[10]\(0),
      I2 => \sample4_fu_130_reg[10]\(1),
      I3 => \sample4_fu_130_reg[10]\(2),
      I4 => \sample4_fu_130_reg[10]\(4),
      O => \sample4_fu_130[8]_i_2_n_0\
    );
\sample4_fu_130[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \^sample4_fu_130_reg[7]\,
      I1 => \sample4_fu_130_reg[10]\(9),
      I2 => \icmp_ln89_reg_423[0]_i_2_n_0\,
      O => \sample4_fu_130_reg[9]\(8)
    );
\state[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ap_rst_n,
      O => \^ap_rst_n_inv\
    );
\tx_word_last_reg_418[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FFFFFF"
    )
        port map (
      I0 => \sample4_fu_130_reg[10]\(7),
      I1 => \sample4_fu_130_reg[10]\(5),
      I2 => \sample4_fu_130[8]_i_2_n_0\,
      I3 => \sample4_fu_130_reg[10]\(6),
      I4 => \sample4_fu_130_reg[10]\(8),
      O => \^sample4_fu_130_reg[7]\
    );
\waddr[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fsm_onehot_wstate_reg[1]_0\,
      I1 => s_axi_CTRL_AWVALID,
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen_LFM_IQ_LUT_ROM_AUTO_1R is
  port (
    D : out STD_LOGIC_VECTOR ( 29 downto 0 );
    ap_clk : in STD_LOGIC;
    ap_condition_121 : in STD_LOGIC;
    ADDRARDADDR : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen_LFM_IQ_LUT_ROM_AUTO_1R;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen_LFM_IQ_LUT_ROM_AUTO_1R is
  signal NLW_q0_reg_CASOUTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_q0_reg_CASOUTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_q0_reg_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_q0_reg_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_q0_reg_CASDOUTA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_q0_reg_CASDOUTB_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_q0_reg_CASDOUTPA_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_q0_reg_CASDOUTPB_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_q0_reg_DOUTADOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 30 );
  signal NLW_q0_reg_DOUTBDOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_q0_reg_DOUTPADOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_q0_reg_DOUTPBDOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_q0_reg_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_q0_reg_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of q0_reg : label is "p0_d30";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of q0_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RDADDR_COLLISION_HWCONFIG : string;
  attribute RDADDR_COLLISION_HWCONFIG of q0_reg : label is "PERFORMANCE";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of q0_reg : label is 30720;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of q0_reg : label is "lfm_tdm_gen/LFM_IQ_LUT_U/q0_reg";
  attribute RTL_RAM_STYLE : string;
  attribute RTL_RAM_STYLE of q0_reg : label is "NONE";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of q0_reg : label is "RAM_SP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of q0_reg : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of q0_reg : label is 1023;
  attribute ram_offset : integer;
  attribute ram_offset of q0_reg : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of q0_reg : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of q0_reg : label is 29;
begin
q0_reg: unisim.vcomponents.RAMB36E2
    generic map(
      CASCADE_ORDER_A => "NONE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "INDEPENDENT",
      DOA_REG => 0,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      EN_ECC_PIPE => "FALSE",
      EN_ECC_READ => "FALSE",
      EN_ECC_WRITE => "FALSE",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"12751CE41061A1860E09A58A0B7928E008BCAB7F05E12D6002F3AE8100002EE0",
      INIT_01 => X"1538EC191669F24A172778B5176F7F37174385B016A80C0015A2120A143897B4",
      INIT_02 => X"3F09D12A028FD168060052B00948D4F50C5758260F1C5C2A118A60E81396E642",
      INIT_03 => X"298372CB2AD8EBD32CB365682F055FB131BCDACE34C756D9381053E53B82D1FE",
      INIT_04 => X"33EBA82B30BA238E2DFB9DFB2BC1179D2A1710A529068946289401B628BF7A27",
      INIT_05 => X"11841F250E8024D40B0DA9560749AC8D0353AE663F4AAEDB3B4DADED377A2BAA",
      INIT_06 => X"1178E0C1140EE7C015F1EF89171477D417700058170588CD15DB90EB13FF9871",
      INIT_07 => X"3127DBBB34F1D6AB3921532F3D8B51620206514D0667D2E90A88561F0E42DACD",
      INIT_08 => X"2E461EAA2B8A16DD29A88E2A28B184F128AB7B912991F26C2B57E9DC2DE8E233",
      INIT_09 => X"10FDA04A0D34A6BA08D92B6804202E253F3EAEDA3A6C2D8735DDAA4431C2A53B",
      INIT_0A => X"0D10D9151104DFC41420E7FB1641F14D1751FB461747856C16290F431406985B",
      INIT_0B => X"29FFEFD72C6C663B2FDC5E03341DD79938F6D34A3E2551460365519F0873D447",
      INIT_0C => X"3F052ED639812D0A3461A8B62FEEA2202C6419AD29F20FDC28B5853928BBFA5B",
      INIT_0D => X"161AF06917577BBB172787431593924D12B89C350EC5246609F8AA6C049E2DF5",
      INIT_0E => X"2F575F07341257A7398F52EE3F70D1230554D25A0ADBD6750FADDD281380E600",
      INIT_0F => X"3A06AD543449A89A2F63A1122BA8974829560BF128907FD6295F73CB2BB0689D",
      INIT_10 => X"1622709317657D2516E989E014BD95D4111020230C28A8130666AD1800352EE0",
      INIT_11 => X"2C49E6A5309DDCA33625D5783C6E51AC02F7D181094054EE0ECCDBA71333651E",
      INIT_12 => X"03CE2E413CFCAE7C36722ACD30BA238E2C4C196329818D2A28907FEA298672B8",
      INIT_13 => X"0D47D960126862FB15DF6F251761FCC416D40A9E1448177E0FFC22480A53AA15",
      INIT_14 => X"296F8CAD28947E5129F0F02B2D5F638E3287D9A438EB53513FEFD12006EF5339",
      INIT_15 => X"1604101412641D0F0CEFA7170636AD333EE62ED337B82BDA315EA49E2C7499DF",
      INIT_16 => X"317DDB30382ED3D03FAD5121072ED3610DE9DA47132E650F16757294176D016D",
      INIT_17 => X"0450AE133C792E57350C29712EDC1FF82A93930228A604032943F4A12C546685",
      INIT_18 => X"054352520CADD8931295E370164DF199176D816215D990F511C71E8C0BB2A89F",
      INIT_19 => X"3367A7882D559C5A29960DB428997D6B2A776D802EEFDFDE357256253D335176",
      INIT_1A => X"1169E0A015D96F0717707F961600902611C19E990B43291C035CAE643B102DD3",
      INIT_1B => X"2BD397DC28DF07932911F64F2C5DE667324AD9FB3A07D2AC028A51670AB05648",
      INIT_1C => X"1589ED84176E7ED615FB1046116C1F5B0A6C29FC01FC2EB5394B2CEA318E24EA",
      INIT_1D => X"29F68FF728957E0A2AB2EC752FF6DDD137945442006851220926D4D9108C5ECD",
      INIT_1E => X"15EEEF78176B81C5154193BF0FCDA29E07EE2C1C3EDCAED235FDAA622EA91F89",
      INIT_1F => X"2AD61423289401BC2A23EF192F3C5F3F370454B50037D121095BD50610FEDFB8",
      INIT_20 => X"135D6597170CF77D16CF0AC912B79C360B7DA8DB025D2EA338DDACA630922349",
      INIT_21 => X"3012A2632A67123528927ED82ADE6BBB30DCDC37397B52FA033551910C5BD82B",
      INIT_22 => X"0A38D5D11222E24F16B0743E1711884A133C9AC70BEC285C0278AE9D38992C7A",
      INIT_23 => X"3E052EB53436A8842CB09A9128DF07932974F3312E4CE1473676552F0063D122",
      INIT_24 => X"37E6D403024DD15A0C38D80113B1669417417A24163C8ED010DF208A083BABE3",
      INIT_25 => X"11C71E8C0925AB283EA42ECC347028C62CA19A6528CD06A729B2719B2F1A5F84",
      INIT_26 => X"28C3F9E32CA7658B34B2D6F03F25512809C0D560124462A116E7F60F16B78B88",
      INIT_27 => X"145AE8C1176B7E13153F93C70E5D250B0450AE1339572CF12FD8A1F629E60F99",
      INIT_28 => X"385FAC532EE5200B29650C60291D75E62E1561C83721D49C022DD1540CB5589D",
      INIT_29 => X"359A55FE00D6D1280BDA578F1403679A17677D69153F93C90E17A57503A5AE4E",
      INIT_2A => X"16B70B8F11182012073E2C953B9F2E0D3119A42F2A40917928B97A892CD9E4F9",
      INIT_2B => X"2DD41D9B28E707F329EAF04C3093DCB43B26D22406EF533910F1DF9C16AC741E",
      INIT_2C => X"3D485171094054EE12BDE3DA1741FA2F15A392020E59A5100353AE6637762BA7",
      INIT_2D => X"15C391660E5D250B03092E7B36E6AB332D439C2A28BA05862A7AED6F32045A62",
      INIT_2E => X"2F16A07429270A7529B4F18A308D5CC03BBA51E90814D3FF1227E25B172B78EB",
      INIT_2F => X"36AAD501033F51940EDADBBD161CF07416F009A411211FFE0666AD1839DAAD3C",
      INIT_30 => X"17417A24154893A10CE4A72500A3AEDC3437A8852B55161B289B7D272CCFE516",
      INIT_31 => X"3DEF2EB131BBA53029FE10202917F6192F44DF2D3A9552650789D39E122B6263",
      INIT_32 => X"292FF5442FC65E2D3B8ED1FA08BDD482131E64E21769FDD5144D176D0ACDA999",
      INIT_33 => X"06FF5343122B62631751FB4614C815AD0B6EA8EC3E5C2EC331D8A55D29F20FDC",
      INIT_34 => X"165C0E0D0E9F24A301EBAEB83496A8F12B22155928B87A992E1DE1B4397B52FA",
      INIT_35 => X"3A8BAD962E9A1F6928C586402B0EEAF4349F5705021D51510EDADBBD1676F29F",
      INIT_36 => X"28AB7B912E27619E3A0F52A80814D3FF1330651517707FBB135A9A70086DABBE",
      INIT_37 => X"3D4851710B4CD6EE151C6BA1171C07D0109B21150405AE2E35FDAA622B9F972A",
      INIT_38 => X"159B6DD516D20AB10F57A370020DAEB2340228462A8112AF2917761C30415D47",
      INIT_39 => X"0FFC224802A7AE93344EA8A02A8A12D82920F5C53093DCB43DF8514D0C1F57E2",
      INIT_3A => X"36EFAB3A2BC1179D28B97A892F055FB13C15D1C90AB056481508EB51170C887F",
      INIT_3B => X"28AC04892C1DE73137C1541F06C5531F12FCE484176E811D12541D3705CBAD6B",
      INIT_3C => X"3199DB04000B51200E735B1716BCF49E157312E60B2BA9363C3D2E442EE5200B",
      INIT_3D => X"0655D2DE1302E4951769822D11AC9ECA0450AE13351EA9852A9C932A2942F4A7",
      INIT_3E => X"15476C5916B78B880E09A58A3F232ED830A3A36728F0085C2B6469AD36E0D4D3",
      INIT_3F => X"15ED10900BA328B03C0D2E342E481EAF289201432D77E34F3AB6D2550A51D5E9",
      INIT_40 => X"0AF6296F3B102DD32D7F1CC428947E512E8F60B03C9E519E0C38D801162C70CF",
      INIT_41 => X"3C22AE3C2E091E1B2890FF912E4CE1473C75D1AA0C48D8141645716415BA9192",
      INIT_42 => X"3012A26328B285022CC4E5353A3F528F0A84561B15A5EE0816440EA40C1D2821",
      INIT_43 => X"29B38E6D2A87ED353625D57806AFD31313DDE7201722078B0EE8242C3F4F2EDB",
      INIT_44 => X"28C0FA0E30BC5C6F008ED1231013DDE4175B7C1112B79C3604922DFA341FA869",
      INIT_45 => X"2B6469AD3860D3AD095BD5061568ECEC163E8EC60B7928E03ABF2DAF2CC41AC9",
      INIT_46 => X"2F965E8B3F70D1230F93DCF91755FB9812981C8903F02E353333A74529478B80",
      INIT_47 => X"33C9D7FE04F2522E135D6597172307790E3EA53A3D962EA02E431EA328957E0A",
      INIT_48 => X"3710D4AA08A95471155D6CB916110FCB0A6C29FC38F9ACB82B751691295B73EB",
      INIT_49 => X"38F6D34A0AB05648163FF143150A14A907CCAC343620AA832A1710A52A7EED5D",
      INIT_4A => X"394FD3130B31D6D1167B72BE1496166806AAACF134E0294229920D9A2B47EA18",
      INIT_4B => X"3814D3E20A39D5D21637F11014E69537071CACAA351B298129960DB42B5A69D2",
      INIT_4C => X"355ED63907B0D3B815476C5915D990F5091AAB3236D62B252A2510EF2AAF6C83",
      INIT_4D => X"317DDB30036AD1A01330651516F8894F0C7527B53A38AD6E2B9597052991F26C",
      INIT_4E => X"2D24642B3D5F516C0F43DC6D176B7E1310B0A0E93F652EDC2E801F2F28A7FBDE",
      INIT_4F => X"2997F24435FAD5A008E1D49F15FEEFCD14D695740636AD333398A7C528FA08C4",
      INIT_50 => X"28B585392E8460C93FEFD1201161E08E175104C20DDE25CA3B4DADED2BD717E9",
      INIT_51 => X"2C8B9A232956740D357E561A08BDD4821613703F148B968F053AADB2326DA637",
      INIT_52 => X"3641AAA229800D222C4EE6963CAFD1990F545C8A17707FCD0F7FA32A3CFCAE7C",
      INIT_53 => X"047C2E02315DA49D2893016F30415D4702F7D1811396E64216860CF509C7AA99",
      INIT_54 => X"12221DB300352EE02E261E6028E578223428578D07DA53D515F1EF89147416E4",
      INIT_55 => X"175EFC69103221E33D2DAE892C3D193429B4F18A375FD46B0B47D6E91703771D",
      INIT_56 => X"0E61DAFC176F7F370F03A3FF3B6F2DFA2B4315D62A746D8E398F52EE0D65D989",
      INIT_57 => X"3A5852830E585AED176FFF7B0EC524663AF32DC62AF414A12ACEEBFD3A90D267",
      INIT_58 => X"29FFEFD738E6D3540D47D9601765FD360F7FA32A3BB4AE152B3895AF2AA2ECBB",
      INIT_59 => X"2DFB9DFB2928F57E3651D5500B1256AF1721F86F111820123DBAAEA72C2598EA",
      INIT_5A => X"0590AD893119242E2896FDD732CDD9430789D39E1641F14D13491AA301092ED4",
      INIT_5B => X"173206B70B04A95F35DDAA4428FA08C42ECAE02D028B51671439684E1593924D",
      INIT_5C => X"0A54D5EC171BF82B10B3A0E33C792E572B2C95802B0EEAF43C2BD1C11069DE89",
      INIT_5D => X"2E0CE1DD01F15149142E68281567931804A32DF32FFEA23E28C3F9E334F1D6AB",
      INIT_5E => X"2E181E3E295E73D13814D3E20D9159C6177000580D4E269737DA2BF329570BF7",
      INIT_5F => X"0D4026AA377A2BAA29298A882EC2E03F0358519B15036B3C147896D3023E2EA9",
      INIT_60 => X"13B7E6A8157D12B7042E2E202F2E20A52911F64F3732548F0D10D91517707FCD",
      INIT_61 => X"3287D9A408A9547116F576901090A1293B49ADEB2A4091792CB365680063D122",
      INIT_62 => X"2E719F0E297273403925532D0F1C5C2A174085E40A2FAA3833DC281928938190",
      INIT_63 => X"12751CE43D9F2EA22B0494E22BF3E7B83F8151231380E600157312E60398AE52",
      INIT_64 => X"095BD506173379540F0DA3EE38AE2C88293B0B1B2F3C5F3F04FE5233160DF020",
      INIT_65 => X"28A6FBF235A2D5F50C96D876176F00F10BCEA87E34E42946289982A4329E5984",
      INIT_66 => X"071CACAA306DA30828FBF7283800D3F00ECCDBA7173286B00916AB353230A5DF",
      INIT_67 => X"10C35F3D16968C8005FBAD522F75A136294FF442399052ED10265E0616D70A86",
      INIT_68 => X"295AF3ED3A07D2AC10B75F2416910CAB05C02D712F2E20A52974F3313A3F528F",
      INIT_69 => X"07F62C1630A2A366290D767B38EB53510FFF5DBE16C78B07066AAD162F8EA167",
      INIT_6A => X"0C2DD7F3176982260A50AA183286A65B28B3FAEA36F554C10E87DB381722078B",
      INIT_6B => X"290A896B3102DBF708C9548B174C7ADF0D52A6913561A9CA2892014334405771",
      INIT_6C => X"13FE18773E72AEC62A9393022D9B62F4043FD1E7165B71ED10B3A0E339572CF1",
      INIT_6D => X"382953D31013DDE416850CFE048CADFC2DAA9D342A99ECE43E9B5135141A67E6",
      INIT_6E => X"39C6AD312903092431965B0A0A01D59D176E7EB90B2BA93632B3269928C479D8",
      INIT_6F => X"10F1DF9C160090260278AE9D2C31990F2BFC679C0207514D15CEEED3116C1F5B",
      INIT_70 => X"29920D9A302A5D7108B4D47A1761FCC40BA428AF32C826B528D0792B38E6D354",
      INIT_71 => X"175004D407B6AC442F41A0CC2A06EFB43DF8514D1439E85013621A5A3C74AE56",
      INIT_72 => X"2AB2EC7500025120154CEC7111CC1E8039A02D1C28DB876832E2D9270C1057CF",
      INIT_73 => X"12221DB339DAAD3C28D987503329D8C80C96D8761734069F06952CFD2E429EA2",
      INIT_74 => X"30EA5C200A6555FD1769822D086DABBE2F63A1122A296EFE3EEAD12D14F36AFC",
      INIT_75 => X"0CEFA7173319272228EFF7AB3ABC525312E56444143897B43D292E8829878D55",
      INIT_76 => X"33EF57D00DEADA4816C38B2803A5AE4E2C1118A82CE6E4D50513D23D170CF77D",
      INIT_77 => X"0C9A2786326DA637292FF5443C5851B31409E7AF12DC9BD33A53AD7B28D106E5",
      INIT_78 => X"31885B200BD35787172B870E054AADAA2CC21AC42C6C663B04A7D20F170BF774",
      INIT_79 => X"115B1F81378AABB728907FFC3788D44A114C605E150614B93E052EB5298A8D66",
      INIT_7A => X"2B68E99D033F519416DE75B80CE3A727324325FA295E73D13DA0515E14EDEAE4",
      INIT_7B => X"170688C203C8AE432B9597052E27619E081353FF17707FDF0838ABE62E4E1EBC",
      INIT_7C => X"28FF08FB341257A70F005BFB1602101E3FD9AEE029E60F993127DBBB0BFD57B9",
      INIT_7D => X"12BDE3DA136B9A3E39F5AD4A28A0837636AAD5011134E02C14B815EA3C8F2E5E",
      INIT_7E => X"36C72B1828A3FC363A58528313BD66B9124E9D45380B2C1728917F3038C9D367",
      INIT_7F => X"3B9BD1F514886965111F20033620AA8328B97A893B4AD215144FE89B11839F27",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 36,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(14 downto 5) => ADDRARDADDR(9 downto 0),
      ADDRARDADDR(4 downto 0) => B"00000",
      ADDRBWRADDR(14 downto 0) => B"111111111111111",
      ADDRENA => '1',
      ADDRENB => '1',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(31 downto 0) => B"00000000000000000000000000000000",
      CASDINB(31 downto 0) => B"00000000000000000000000000000000",
      CASDINPA(3 downto 0) => B"0000",
      CASDINPB(3 downto 0) => B"0000",
      CASDOMUXA => '0',
      CASDOMUXB => '0',
      CASDOMUXEN_A => '1',
      CASDOMUXEN_B => '1',
      CASDOUTA(31 downto 0) => NLW_q0_reg_CASDOUTA_UNCONNECTED(31 downto 0),
      CASDOUTB(31 downto 0) => NLW_q0_reg_CASDOUTB_UNCONNECTED(31 downto 0),
      CASDOUTPA(3 downto 0) => NLW_q0_reg_CASDOUTPA_UNCONNECTED(3 downto 0),
      CASDOUTPB(3 downto 0) => NLW_q0_reg_CASDOUTPB_UNCONNECTED(3 downto 0),
      CASINDBITERR => '0',
      CASINSBITERR => '0',
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '1',
      CASOREGIMUXEN_B => '1',
      CASOUTDBITERR => NLW_q0_reg_CASOUTDBITERR_UNCONNECTED,
      CASOUTSBITERR => NLW_q0_reg_CASOUTSBITERR_UNCONNECTED,
      CLKARDCLK => ap_clk,
      CLKBWRCLK => '0',
      DBITERR => NLW_q0_reg_DBITERR_UNCONNECTED,
      DINADIN(31 downto 0) => B"00111111111111111111111111111111",
      DINBDIN(31 downto 0) => B"11111111111111111111111111111111",
      DINPADINP(3 downto 0) => B"0000",
      DINPBDINP(3 downto 0) => B"1111",
      DOUTADOUT(31 downto 30) => NLW_q0_reg_DOUTADOUT_UNCONNECTED(31 downto 30),
      DOUTADOUT(29 downto 0) => D(29 downto 0),
      DOUTBDOUT(31 downto 0) => NLW_q0_reg_DOUTBDOUT_UNCONNECTED(31 downto 0),
      DOUTPADOUTP(3 downto 0) => NLW_q0_reg_DOUTPADOUTP_UNCONNECTED(3 downto 0),
      DOUTPBDOUTP(3 downto 0) => NLW_q0_reg_DOUTPBDOUTP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_q0_reg_ECCPARITY_UNCONNECTED(7 downto 0),
      ECCPIPECE => '1',
      ENARDEN => ap_condition_121,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => NLW_q0_reg_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_q0_reg_SBITERR_UNCONNECTED,
      SLEEP => '0',
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
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
    \indvar_flatten2_fu_122_reg[5]\ : out STD_LOGIC;
    ap_loop_init_reg_0 : out STD_LOGIC;
    tx_word_last_fu_324_p2 : out STD_LOGIC;
    ADDRARDADDR : out STD_LOGIC_VECTOR ( 9 downto 0 );
    int_ap_start_reg : out STD_LOGIC;
    ap_loop_init_reg_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \chirp3_fu_126_reg[2]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \chirp3_fu_126_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    ap_loop_init_reg_2 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 11 downto 0 );
    ap_rst_n : in STD_LOGIC;
    ap_condition_121 : in STD_LOGIC;
    \int_isr_reg[1]\ : in STD_LOGIC;
    \int_isr_reg[1]_0\ : in STD_LOGIC;
    \int_isr_reg[1]_1\ : in STD_LOGIC;
    \tx_word_last_reg_418_reg[0]\ : in STD_LOGIC;
    \tx_word_last_reg_418_reg[0]_0\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \tx_word_last_reg_418_reg[0]_1\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ap_start : in STD_LOGIC;
    \chirp3_fu_126_reg[2]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    icmp_ln89_reg_423 : in STD_LOGIC;
    ap_enable_reg_pp0_iter1 : in STD_LOGIC;
    icmp_ln80_reg_428 : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen_flow_control_loop_pipe;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen_flow_control_loop_pipe is
  signal \^addrardaddr\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \^ap_loop_init\ : STD_LOGIC;
  signal ap_loop_init_i_1_n_0 : STD_LOGIC;
  signal ap_sig_allocacmp_indvar_flatten2_load : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \chirp3_fu_126[2]_i_2_n_0\ : STD_LOGIC;
  signal \indvar_flatten2_fu_122_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \indvar_flatten2_fu_122_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \indvar_flatten2_fu_122_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \indvar_flatten2_fu_122_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \indvar_flatten2_fu_122_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \indvar_flatten2_fu_122_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \indvar_flatten2_fu_122_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \indvar_flatten2_fu_122_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \indvar_flatten2_fu_122_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \indvar_flatten2_fu_122_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_indvar_flatten2_fu_122_reg[11]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \NLW_indvar_flatten2_fu_122_reg[11]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of ap_loop_init_i_1 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \chirp3_fu_126[0]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \chirp3_fu_126[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \chirp3_fu_126[2]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \chirp_16_fu_134[0]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \indvar_flatten2_fu_122[0]_i_1\ : label is "soft_lutpair13";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \indvar_flatten2_fu_122_reg[11]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \indvar_flatten2_fu_122_reg[8]_i_1\ : label is 35;
  attribute SOFT_HLUTNM of int_ap_start_i_3 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \sample4_fu_130[0]_i_1\ : label is "soft_lutpair11";
begin
  ADDRARDADDR(9 downto 0) <= \^addrardaddr\(9 downto 0);
  ap_loop_init <= \^ap_loop_init\;
ap_loop_init_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F4FFF0F"
    )
        port map (
      I0 => ap_loop_init_reg_2,
      I1 => Q(5),
      I2 => ap_rst_n,
      I3 => \^ap_loop_init\,
      I4 => ap_condition_121,
      O => ap_loop_init_i_1_n_0
    );
ap_loop_init_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_loop_init_i_1_n_0,
      Q => \^ap_loop_init\,
      R => '0'
    );
\chirp3_fu_126[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B9A8"
    )
        port map (
      I0 => \chirp3_fu_126[2]_i_2_n_0\,
      I1 => \^ap_loop_init\,
      I2 => \chirp3_fu_126_reg[2]_0\(0),
      I3 => \tx_word_last_reg_418_reg[0]_1\(0),
      O => \chirp3_fu_126_reg[2]\(0)
    );
\chirp3_fu_126[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0E02"
    )
        port map (
      I0 => \tx_word_last_reg_418_reg[0]_1\(1),
      I1 => \chirp3_fu_126[2]_i_2_n_0\,
      I2 => \^ap_loop_init\,
      I3 => \chirp3_fu_126_reg[2]_0\(1),
      O => \chirp3_fu_126_reg[2]\(1)
    );
\chirp3_fu_126[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CA"
    )
        port map (
      I0 => \tx_word_last_reg_418_reg[0]_1\(2),
      I1 => \chirp3_fu_126_reg[2]_0\(2),
      I2 => \chirp3_fu_126[2]_i_2_n_0\,
      I3 => \^ap_loop_init\,
      O => \chirp3_fu_126_reg[2]\(2)
    );
\chirp3_fu_126[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08AA"
    )
        port map (
      I0 => icmp_ln89_reg_423,
      I1 => ap_enable_reg_pp0_iter1,
      I2 => icmp_ln80_reg_428,
      I3 => \^ap_loop_init\,
      O => \chirp3_fu_126[2]_i_2_n_0\
    );
\chirp_16_fu_134[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"03F5"
    )
        port map (
      I0 => \tx_word_last_reg_418_reg[0]_1\(0),
      I1 => \chirp3_fu_126_reg[2]_0\(0),
      I2 => \^ap_loop_init\,
      I3 => \chirp3_fu_126[2]_i_2_n_0\,
      O => \chirp3_fu_126_reg[0]\(0)
    );
\chirp_16_fu_134[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0070707070000000"
    )
        port map (
      I0 => ap_start,
      I1 => \^ap_loop_init\,
      I2 => \chirp3_fu_126[2]_i_2_n_0\,
      I3 => \chirp3_fu_126_reg[2]_0\(0),
      I4 => \chirp3_fu_126_reg[2]_0\(1),
      I5 => \chirp3_fu_126_reg[2]_0\(2),
      O => int_ap_start_reg
    );
\indvar_flatten2_fu_122[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^ap_loop_init\,
      I1 => Q(0),
      O => D(0)
    );
\indvar_flatten2_fu_122[11]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => Q(11),
      I1 => \^ap_loop_init\,
      I2 => ap_start,
      O => ap_sig_allocacmp_indvar_flatten2_load(11)
    );
\indvar_flatten2_fu_122[11]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => Q(10),
      I1 => \^ap_loop_init\,
      I2 => ap_start,
      O => ap_sig_allocacmp_indvar_flatten2_load(10)
    );
\indvar_flatten2_fu_122[11]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => Q(9),
      I1 => \^ap_loop_init\,
      I2 => ap_start,
      O => ap_sig_allocacmp_indvar_flatten2_load(9)
    );
\indvar_flatten2_fu_122[8]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => Q(1),
      I1 => \^ap_loop_init\,
      I2 => ap_start,
      O => ap_sig_allocacmp_indvar_flatten2_load(1)
    );
\indvar_flatten2_fu_122[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => Q(0),
      I1 => \^ap_loop_init\,
      I2 => ap_start,
      O => ap_sig_allocacmp_indvar_flatten2_load(0)
    );
\indvar_flatten2_fu_122[8]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => Q(8),
      I1 => \^ap_loop_init\,
      I2 => ap_start,
      O => ap_sig_allocacmp_indvar_flatten2_load(8)
    );
\indvar_flatten2_fu_122[8]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => Q(7),
      I1 => \^ap_loop_init\,
      I2 => ap_start,
      O => ap_sig_allocacmp_indvar_flatten2_load(7)
    );
\indvar_flatten2_fu_122[8]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => Q(6),
      I1 => \^ap_loop_init\,
      I2 => ap_start,
      O => ap_sig_allocacmp_indvar_flatten2_load(6)
    );
\indvar_flatten2_fu_122[8]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => Q(5),
      I1 => \^ap_loop_init\,
      I2 => ap_start,
      O => ap_sig_allocacmp_indvar_flatten2_load(5)
    );
\indvar_flatten2_fu_122[8]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => Q(4),
      I1 => \^ap_loop_init\,
      I2 => ap_start,
      O => ap_sig_allocacmp_indvar_flatten2_load(4)
    );
\indvar_flatten2_fu_122[8]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => Q(3),
      I1 => \^ap_loop_init\,
      I2 => ap_start,
      O => ap_sig_allocacmp_indvar_flatten2_load(3)
    );
\indvar_flatten2_fu_122[8]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => Q(2),
      I1 => \^ap_loop_init\,
      I2 => ap_start,
      O => ap_sig_allocacmp_indvar_flatten2_load(2)
    );
\indvar_flatten2_fu_122_reg[11]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \indvar_flatten2_fu_122_reg[8]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 2) => \NLW_indvar_flatten2_fu_122_reg[11]_i_1_CO_UNCONNECTED\(7 downto 2),
      CO(1) => \indvar_flatten2_fu_122_reg[11]_i_1_n_6\,
      CO(0) => \indvar_flatten2_fu_122_reg[11]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 3) => \NLW_indvar_flatten2_fu_122_reg[11]_i_1_O_UNCONNECTED\(7 downto 3),
      O(2 downto 0) => D(11 downto 9),
      S(7 downto 3) => B"00000",
      S(2 downto 0) => ap_sig_allocacmp_indvar_flatten2_load(11 downto 9)
    );
\indvar_flatten2_fu_122_reg[8]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => ap_sig_allocacmp_indvar_flatten2_load(0),
      CI_TOP => '0',
      CO(7) => \indvar_flatten2_fu_122_reg[8]_i_1_n_0\,
      CO(6) => \indvar_flatten2_fu_122_reg[8]_i_1_n_1\,
      CO(5) => \indvar_flatten2_fu_122_reg[8]_i_1_n_2\,
      CO(4) => \indvar_flatten2_fu_122_reg[8]_i_1_n_3\,
      CO(3) => \indvar_flatten2_fu_122_reg[8]_i_1_n_4\,
      CO(2) => \indvar_flatten2_fu_122_reg[8]_i_1_n_5\,
      CO(1) => \indvar_flatten2_fu_122_reg[8]_i_1_n_6\,
      CO(0) => \indvar_flatten2_fu_122_reg[8]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => D(8 downto 1),
      S(7 downto 0) => ap_sig_allocacmp_indvar_flatten2_load(8 downto 1)
    );
int_ap_start_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^ap_loop_init\,
      I1 => Q(5),
      O => ap_loop_init_reg_0
    );
\int_isr[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => \int_isr_reg[1]\,
      I1 => \int_isr_reg[1]_0\,
      I2 => \int_isr_reg[1]_1\,
      I3 => Q(5),
      I4 => \^ap_loop_init\,
      O => \indvar_flatten2_fu_122_reg[5]\
    );
q0_reg_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00002222AA2A2222"
    )
        port map (
      I0 => \tx_word_last_reg_418_reg[0]_0\(1),
      I1 => icmp_ln89_reg_423,
      I2 => ap_enable_reg_pp0_iter1,
      I3 => icmp_ln80_reg_428,
      I4 => \^ap_loop_init\,
      I5 => ap_start,
      O => \^addrardaddr\(1)
    );
q0_reg_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00002222AA2A2222"
    )
        port map (
      I0 => \tx_word_last_reg_418_reg[0]_0\(0),
      I1 => icmp_ln89_reg_423,
      I2 => ap_enable_reg_pp0_iter1,
      I3 => icmp_ln80_reg_428,
      I4 => \^ap_loop_init\,
      I5 => ap_start,
      O => \^addrardaddr\(0)
    );
q0_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00002222AA2A2222"
    )
        port map (
      I0 => \tx_word_last_reg_418_reg[0]_0\(9),
      I1 => icmp_ln89_reg_423,
      I2 => ap_enable_reg_pp0_iter1,
      I3 => icmp_ln80_reg_428,
      I4 => \^ap_loop_init\,
      I5 => ap_start,
      O => \^addrardaddr\(9)
    );
q0_reg_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00002222AA2A2222"
    )
        port map (
      I0 => \tx_word_last_reg_418_reg[0]_0\(8),
      I1 => icmp_ln89_reg_423,
      I2 => ap_enable_reg_pp0_iter1,
      I3 => icmp_ln80_reg_428,
      I4 => \^ap_loop_init\,
      I5 => ap_start,
      O => \^addrardaddr\(8)
    );
q0_reg_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00002222AA2A2222"
    )
        port map (
      I0 => \tx_word_last_reg_418_reg[0]_0\(7),
      I1 => icmp_ln89_reg_423,
      I2 => ap_enable_reg_pp0_iter1,
      I3 => icmp_ln80_reg_428,
      I4 => \^ap_loop_init\,
      I5 => ap_start,
      O => \^addrardaddr\(7)
    );
q0_reg_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00002222AA2A2222"
    )
        port map (
      I0 => \tx_word_last_reg_418_reg[0]_0\(6),
      I1 => icmp_ln89_reg_423,
      I2 => ap_enable_reg_pp0_iter1,
      I3 => icmp_ln80_reg_428,
      I4 => \^ap_loop_init\,
      I5 => ap_start,
      O => \^addrardaddr\(6)
    );
q0_reg_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00002222AA2A2222"
    )
        port map (
      I0 => \tx_word_last_reg_418_reg[0]_0\(5),
      I1 => icmp_ln89_reg_423,
      I2 => ap_enable_reg_pp0_iter1,
      I3 => icmp_ln80_reg_428,
      I4 => \^ap_loop_init\,
      I5 => ap_start,
      O => \^addrardaddr\(5)
    );
q0_reg_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00002222AA2A2222"
    )
        port map (
      I0 => \tx_word_last_reg_418_reg[0]_0\(4),
      I1 => icmp_ln89_reg_423,
      I2 => ap_enable_reg_pp0_iter1,
      I3 => icmp_ln80_reg_428,
      I4 => \^ap_loop_init\,
      I5 => ap_start,
      O => \^addrardaddr\(4)
    );
q0_reg_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00002222AA2A2222"
    )
        port map (
      I0 => \tx_word_last_reg_418_reg[0]_0\(3),
      I1 => icmp_ln89_reg_423,
      I2 => ap_enable_reg_pp0_iter1,
      I3 => icmp_ln80_reg_428,
      I4 => \^ap_loop_init\,
      I5 => ap_start,
      O => \^addrardaddr\(3)
    );
q0_reg_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00002222AA2A2222"
    )
        port map (
      I0 => \tx_word_last_reg_418_reg[0]_0\(2),
      I1 => icmp_ln89_reg_423,
      I2 => ap_enable_reg_pp0_iter1,
      I3 => icmp_ln80_reg_428,
      I4 => \^ap_loop_init\,
      I5 => ap_start,
      O => \^addrardaddr\(2)
    );
\sample4_fu_130[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \^ap_loop_init\,
      I1 => icmp_ln89_reg_423,
      I2 => \tx_word_last_reg_418_reg[0]_0\(0),
      O => ap_loop_init_reg_1(0)
    );
\tx_word_last_reg_418[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004000000"
    )
        port map (
      I0 => \tx_word_last_reg_418_reg[0]\,
      I1 => \^addrardaddr\(9),
      I2 => \tx_word_last_reg_418_reg[0]_0\(10),
      I3 => \tx_word_last_reg_418_reg[0]_1\(1),
      I4 => \tx_word_last_reg_418_reg[0]_1\(0),
      I5 => \tx_word_last_reg_418_reg[0]_1\(2),
      O => tx_word_last_fu_324_p2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen_regslice_both is
  port (
    m_axis_tx_TREADY_int_regslice : out STD_LOGIC;
    ap_enable_reg_pp0_iter1_reg : out STD_LOGIC;
    int_isr8_out : out STD_LOGIC;
    ap_loop_exit_ready_pp0_iter2_reg_reg : out STD_LOGIC;
    ap_block_pp0_stage0_subdone : out STD_LOGIC;
    ap_condition_exit_pp0_iter0_stage0 : out STD_LOGIC;
    ap_condition_121 : out STD_LOGIC;
    load_p2 : out STD_LOGIC;
    m_axis_tx_TVALID : out STD_LOGIC;
    dbg_lfm_i_ap_vld : out STD_LOGIC;
    ap_loop_exit_ready_pp0_iter2_reg_reg_0 : out STD_LOGIC;
    load_p1 : out STD_LOGIC;
    \FSM_sequential_state_reg[0]_0\ : out STD_LOGIC;
    \FSM_sequential_state_reg[1]_0\ : out STD_LOGIC;
    load_p1_0 : out STD_LOGIC;
    m_axis_tx_TDATA : out STD_LOGIC_VECTOR ( 29 downto 0 );
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_enable_reg_pp0_iter1 : in STD_LOGIC;
    ap_loop_exit_ready_pp0_iter2_reg : in STD_LOGIC;
    ap_enable_reg_pp0_iter2 : in STD_LOGIC;
    ap_loop_exit_ready_pp0_iter1_reg : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_block_pp0_stage0_subdone_grp0_done_reg_reg : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_loop_init : in STD_LOGIC;
    ap_loop_exit_ready_pp0_iter1_reg_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_loop_exit_ready_pp0_iter1_reg_reg_0 : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    m_axis_tx_TREADY : in STD_LOGIC;
    icmp_ln80_reg_428_pp0_iter1_reg : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 29 downto 0 );
    \data_p1_reg[0]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \data_p1_reg[3]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen_regslice_both;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen_regslice_both is
  signal \FSM_sequential_state[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \^fsm_sequential_state_reg[0]_0\ : STD_LOGIC;
  signal \^fsm_sequential_state_reg[1]_0\ : STD_LOGIC;
  signal ack_in_t_i_1_n_0 : STD_LOGIC;
  signal ack_in_t_i_2_n_0 : STD_LOGIC;
  signal ap_block_pp0_stage0_subdone_grp0_done_reg_i_2_n_0 : STD_LOGIC;
  signal \^ap_condition_121\ : STD_LOGIC;
  signal \data_p1[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[10]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[11]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[12]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[13]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[15]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[16]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[17]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[18]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[19]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[1]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[20]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[21]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[22]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[23]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[24]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[25]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[26]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[27]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[28]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[29]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[2]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[31]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[31]_i_2_n_0\ : STD_LOGIC;
  signal \data_p1[3]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[4]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[5]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[6]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[7]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[8]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[9]_i_1_n_0\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[0]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[10]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[11]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[12]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[13]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[15]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[16]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[17]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[18]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[19]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[1]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[20]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[21]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[22]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[23]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[24]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[25]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[26]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[27]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[28]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[29]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[2]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[31]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[3]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[4]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[5]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[6]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[7]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[8]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[9]\ : STD_LOGIC;
  signal \^load_p2\ : STD_LOGIC;
  signal \^m_axis_tx_tready_int_regslice\ : STD_LOGIC;
  signal \^m_axis_tx_tvalid\ : STD_LOGIC;
  signal \next__0\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal q0_reg_i_12_n_0 : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \state[0]_i_2_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1\ : label is "soft_lutpair16";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute SOFT_HLUTNM of ack_in_t_i_2 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of ap_block_pp0_stage0_subdone_grp0_done_reg_i_2 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of q0_reg_i_12 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \tx_word_last_reg_418[0]_i_1\ : label is "soft_lutpair14";
begin
  \FSM_sequential_state_reg[0]_0\ <= \^fsm_sequential_state_reg[0]_0\;
  \FSM_sequential_state_reg[1]_0\ <= \^fsm_sequential_state_reg[1]_0\;
  ap_condition_121 <= \^ap_condition_121\;
  load_p2 <= \^load_p2\;
  m_axis_tx_TREADY_int_regslice <= \^m_axis_tx_tready_int_regslice\;
  m_axis_tx_TVALID <= \^m_axis_tx_tvalid\;
\FSM_sequential_state[0]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFE00FFFFFFFF"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter2,
      I1 => ap_loop_exit_ready_pp0_iter2_reg,
      I2 => \FSM_sequential_state[0]_i_2__0_n_0\,
      I3 => \state__0\(0),
      I4 => m_axis_tx_TREADY,
      I5 => \state__0\(1),
      O => \FSM_sequential_state[0]_i_1__1_n_0\
    );
\FSM_sequential_state[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"57000000"
    )
        port map (
      I0 => \state__0\(1),
      I1 => ap_loop_exit_ready_pp0_iter2_reg,
      I2 => ap_enable_reg_pp0_iter2,
      I3 => ap_enable_reg_pp0_iter1,
      I4 => \^m_axis_tx_tready_int_regslice\,
      O => \^fsm_sequential_state_reg[1]_0\
    );
\FSM_sequential_state[0]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^m_axis_tx_tready_int_regslice\,
      I1 => ap_enable_reg_pp0_iter1,
      O => \FSM_sequential_state[0]_i_2__0_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F222AAAA"
    )
        port map (
      I0 => \state__0\(1),
      I1 => m_axis_tx_TREADY,
      I2 => \^m_axis_tx_tready_int_regslice\,
      I3 => ap_enable_reg_pp0_iter1,
      I4 => \state__0\(0),
      O => \next__0\(1)
    );
\FSM_sequential_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F7F7F3F3F3F3F3F"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \^m_axis_tx_tready_int_regslice\,
      I2 => ap_enable_reg_pp0_iter1,
      I3 => ap_enable_reg_pp0_iter2,
      I4 => ap_loop_exit_ready_pp0_iter2_reg,
      I5 => \state__0\(1),
      O => \^fsm_sequential_state_reg[0]_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_sequential_state[0]_i_1__1_n_0\,
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
ack_in_t_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFFFFFF58585858"
    )
        port map (
      I0 => \state__0\(1),
      I1 => m_axis_tx_TREADY,
      I2 => \state__0\(0),
      I3 => ack_in_t_i_2_n_0,
      I4 => ap_enable_reg_pp0_iter1,
      I5 => \^m_axis_tx_tready_int_regslice\,
      O => ack_in_t_i_1_n_0
    );
ack_in_t_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ap_loop_exit_ready_pp0_iter2_reg,
      I1 => ap_enable_reg_pp0_iter2,
      O => ack_in_t_i_2_n_0
    );
ack_in_t_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ack_in_t_i_1_n_0,
      Q => \^m_axis_tx_tready_int_regslice\,
      R => ap_rst_n_inv
    );
ap_block_pp0_stage0_subdone_grp0_done_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA2A0000"
    )
        port map (
      I0 => ap_block_pp0_stage0_subdone_grp0_done_reg_i_2_n_0,
      I1 => q0_reg_i_12_n_0,
      I2 => ap_loop_exit_ready_pp0_iter2_reg,
      I3 => ap_block_pp0_stage0_subdone_grp0_done_reg_reg,
      I4 => ap_rst_n,
      O => ap_loop_exit_ready_pp0_iter2_reg_reg
    );
ap_block_pp0_stage0_subdone_grp0_done_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF23322"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1,
      I1 => \^m_axis_tx_tready_int_regslice\,
      I2 => ap_loop_exit_ready_pp0_iter2_reg,
      I3 => ap_enable_reg_pp0_iter2,
      I4 => q0_reg_i_12_n_0,
      O => ap_block_pp0_stage0_subdone_grp0_done_reg_i_2_n_0
    );
ap_loop_exit_ready_pp0_iter1_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => \^ap_condition_121\,
      I1 => ap_loop_init,
      I2 => ap_loop_exit_ready_pp0_iter1_reg_reg(0),
      I3 => ap_loop_exit_ready_pp0_iter1_reg_reg_0,
      O => ap_condition_exit_pp0_iter0_stage0
    );
ap_loop_exit_ready_pp0_iter2_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FDFCFDF0F03020"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1,
      I1 => \^m_axis_tx_tready_int_regslice\,
      I2 => ap_loop_exit_ready_pp0_iter2_reg,
      I3 => ap_enable_reg_pp0_iter2,
      I4 => q0_reg_i_12_n_0,
      I5 => ap_loop_exit_ready_pp0_iter1_reg,
      O => ap_enable_reg_pp0_iter1_reg
    );
\data_p1[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[0]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(0),
      O => \data_p1[0]_i_1_n_0\
    );
\data_p1[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5DF00C00"
    )
        port map (
      I0 => \^fsm_sequential_state_reg[0]_0\,
      I1 => \^fsm_sequential_state_reg[1]_0\,
      I2 => \data_p1_reg[0]_0\(1),
      I3 => \data_p1_reg[0]_0\(0),
      I4 => m_axis_tx_TREADY,
      O => load_p1
    );
\data_p1[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[10]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(10),
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
      I3 => D(11),
      O => \data_p1[11]_i_1_n_0\
    );
\data_p1[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[12]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(12),
      O => \data_p1[12]_i_1_n_0\
    );
\data_p1[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[13]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(13),
      O => \data_p1[13]_i_1_n_0\
    );
\data_p1[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[15]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(14),
      O => \data_p1[15]_i_1_n_0\
    );
\data_p1[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[16]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(15),
      O => \data_p1[16]_i_1_n_0\
    );
\data_p1[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[17]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(16),
      O => \data_p1[17]_i_1_n_0\
    );
\data_p1[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[18]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(17),
      O => \data_p1[18]_i_1_n_0\
    );
\data_p1[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[19]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(18),
      O => \data_p1[19]_i_1_n_0\
    );
\data_p1[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[1]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(1),
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
      I3 => D(19),
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
      I3 => D(20),
      O => \data_p1[21]_i_1_n_0\
    );
\data_p1[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[22]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(21),
      O => \data_p1[22]_i_1_n_0\
    );
\data_p1[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[23]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(22),
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
      I3 => D(23),
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
      I3 => D(24),
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
      I3 => D(25),
      O => \data_p1[26]_i_1_n_0\
    );
\data_p1[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[27]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(26),
      O => \data_p1[27]_i_1_n_0\
    );
\data_p1[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[28]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(27),
      O => \data_p1[28]_i_1_n_0\
    );
\data_p1[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[29]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(28),
      O => \data_p1[29]_i_1_n_0\
    );
\data_p1[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[2]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(2),
      O => \data_p1[2]_i_1_n_0\
    );
\data_p1[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A222C000"
    )
        port map (
      I0 => m_axis_tx_TREADY,
      I1 => \state__0\(0),
      I2 => ap_enable_reg_pp0_iter1,
      I3 => \^m_axis_tx_tready_int_regslice\,
      I4 => \state__0\(1),
      O => \data_p1[31]_i_1_n_0\
    );
\data_p1[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[31]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(29),
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
      I3 => D(3),
      O => \data_p1[3]_i_1_n_0\
    );
\data_p1[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5FD000C0"
    )
        port map (
      I0 => \^fsm_sequential_state_reg[0]_0\,
      I1 => \^fsm_sequential_state_reg[1]_0\,
      I2 => \data_p1_reg[3]_0\(0),
      I3 => \data_p1_reg[3]_0\(1),
      I4 => m_axis_tx_TREADY,
      O => load_p1_0
    );
\data_p1[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[4]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(4),
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
      I3 => D(5),
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
      I3 => D(6),
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
      I3 => D(7),
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
      I3 => D(8),
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
      I3 => D(9),
      O => \data_p1[9]_i_1_n_0\
    );
\data_p1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \data_p1[31]_i_1_n_0\,
      D => \data_p1[0]_i_1_n_0\,
      Q => m_axis_tx_TDATA(0),
      R => '0'
    );
\data_p1_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \data_p1[31]_i_1_n_0\,
      D => \data_p1[10]_i_1_n_0\,
      Q => m_axis_tx_TDATA(10),
      R => '0'
    );
\data_p1_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \data_p1[31]_i_1_n_0\,
      D => \data_p1[11]_i_1_n_0\,
      Q => m_axis_tx_TDATA(11),
      R => '0'
    );
\data_p1_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \data_p1[31]_i_1_n_0\,
      D => \data_p1[12]_i_1_n_0\,
      Q => m_axis_tx_TDATA(12),
      R => '0'
    );
\data_p1_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \data_p1[31]_i_1_n_0\,
      D => \data_p1[13]_i_1_n_0\,
      Q => m_axis_tx_TDATA(13),
      R => '0'
    );
\data_p1_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \data_p1[31]_i_1_n_0\,
      D => \data_p1[15]_i_1_n_0\,
      Q => m_axis_tx_TDATA(14),
      R => '0'
    );
\data_p1_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \data_p1[31]_i_1_n_0\,
      D => \data_p1[16]_i_1_n_0\,
      Q => m_axis_tx_TDATA(15),
      R => '0'
    );
\data_p1_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \data_p1[31]_i_1_n_0\,
      D => \data_p1[17]_i_1_n_0\,
      Q => m_axis_tx_TDATA(16),
      R => '0'
    );
\data_p1_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \data_p1[31]_i_1_n_0\,
      D => \data_p1[18]_i_1_n_0\,
      Q => m_axis_tx_TDATA(17),
      R => '0'
    );
\data_p1_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \data_p1[31]_i_1_n_0\,
      D => \data_p1[19]_i_1_n_0\,
      Q => m_axis_tx_TDATA(18),
      R => '0'
    );
\data_p1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \data_p1[31]_i_1_n_0\,
      D => \data_p1[1]_i_1_n_0\,
      Q => m_axis_tx_TDATA(1),
      R => '0'
    );
\data_p1_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \data_p1[31]_i_1_n_0\,
      D => \data_p1[20]_i_1_n_0\,
      Q => m_axis_tx_TDATA(19),
      R => '0'
    );
\data_p1_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \data_p1[31]_i_1_n_0\,
      D => \data_p1[21]_i_1_n_0\,
      Q => m_axis_tx_TDATA(20),
      R => '0'
    );
\data_p1_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \data_p1[31]_i_1_n_0\,
      D => \data_p1[22]_i_1_n_0\,
      Q => m_axis_tx_TDATA(21),
      R => '0'
    );
\data_p1_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \data_p1[31]_i_1_n_0\,
      D => \data_p1[23]_i_1_n_0\,
      Q => m_axis_tx_TDATA(22),
      R => '0'
    );
\data_p1_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \data_p1[31]_i_1_n_0\,
      D => \data_p1[24]_i_1_n_0\,
      Q => m_axis_tx_TDATA(23),
      R => '0'
    );
\data_p1_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \data_p1[31]_i_1_n_0\,
      D => \data_p1[25]_i_1_n_0\,
      Q => m_axis_tx_TDATA(24),
      R => '0'
    );
\data_p1_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \data_p1[31]_i_1_n_0\,
      D => \data_p1[26]_i_1_n_0\,
      Q => m_axis_tx_TDATA(25),
      R => '0'
    );
\data_p1_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \data_p1[31]_i_1_n_0\,
      D => \data_p1[27]_i_1_n_0\,
      Q => m_axis_tx_TDATA(26),
      R => '0'
    );
\data_p1_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \data_p1[31]_i_1_n_0\,
      D => \data_p1[28]_i_1_n_0\,
      Q => m_axis_tx_TDATA(27),
      R => '0'
    );
\data_p1_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \data_p1[31]_i_1_n_0\,
      D => \data_p1[29]_i_1_n_0\,
      Q => m_axis_tx_TDATA(28),
      R => '0'
    );
\data_p1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \data_p1[31]_i_1_n_0\,
      D => \data_p1[2]_i_1_n_0\,
      Q => m_axis_tx_TDATA(2),
      R => '0'
    );
\data_p1_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \data_p1[31]_i_1_n_0\,
      D => \data_p1[31]_i_2_n_0\,
      Q => m_axis_tx_TDATA(29),
      R => '0'
    );
\data_p1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \data_p1[31]_i_1_n_0\,
      D => \data_p1[3]_i_1_n_0\,
      Q => m_axis_tx_TDATA(3),
      R => '0'
    );
\data_p1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \data_p1[31]_i_1_n_0\,
      D => \data_p1[4]_i_1_n_0\,
      Q => m_axis_tx_TDATA(4),
      R => '0'
    );
\data_p1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \data_p1[31]_i_1_n_0\,
      D => \data_p1[5]_i_1_n_0\,
      Q => m_axis_tx_TDATA(5),
      R => '0'
    );
\data_p1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \data_p1[31]_i_1_n_0\,
      D => \data_p1[6]_i_1_n_0\,
      Q => m_axis_tx_TDATA(6),
      R => '0'
    );
\data_p1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \data_p1[31]_i_1_n_0\,
      D => \data_p1[7]_i_1_n_0\,
      Q => m_axis_tx_TDATA(7),
      R => '0'
    );
\data_p1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \data_p1[31]_i_1_n_0\,
      D => \data_p1[8]_i_1_n_0\,
      Q => m_axis_tx_TDATA(8),
      R => '0'
    );
\data_p1_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \data_p1[31]_i_1_n_0\,
      D => \data_p1[9]_i_1_n_0\,
      Q => m_axis_tx_TDATA(9),
      R => '0'
    );
\data_p2[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1F000000"
    )
        port map (
      I0 => ap_loop_exit_ready_pp0_iter2_reg,
      I1 => ap_enable_reg_pp0_iter2,
      I2 => q0_reg_i_12_n_0,
      I3 => ap_enable_reg_pp0_iter1,
      I4 => \^m_axis_tx_tready_int_regslice\,
      O => \^load_p2\
    );
\data_p2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^load_p2\,
      D => D(0),
      Q => \data_p2_reg_n_0_[0]\,
      R => '0'
    );
\data_p2_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^load_p2\,
      D => D(10),
      Q => \data_p2_reg_n_0_[10]\,
      R => '0'
    );
\data_p2_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^load_p2\,
      D => D(11),
      Q => \data_p2_reg_n_0_[11]\,
      R => '0'
    );
\data_p2_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^load_p2\,
      D => D(12),
      Q => \data_p2_reg_n_0_[12]\,
      R => '0'
    );
\data_p2_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^load_p2\,
      D => D(13),
      Q => \data_p2_reg_n_0_[13]\,
      R => '0'
    );
\data_p2_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^load_p2\,
      D => D(14),
      Q => \data_p2_reg_n_0_[15]\,
      R => '0'
    );
\data_p2_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^load_p2\,
      D => D(15),
      Q => \data_p2_reg_n_0_[16]\,
      R => '0'
    );
\data_p2_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^load_p2\,
      D => D(16),
      Q => \data_p2_reg_n_0_[17]\,
      R => '0'
    );
\data_p2_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^load_p2\,
      D => D(17),
      Q => \data_p2_reg_n_0_[18]\,
      R => '0'
    );
\data_p2_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^load_p2\,
      D => D(18),
      Q => \data_p2_reg_n_0_[19]\,
      R => '0'
    );
\data_p2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^load_p2\,
      D => D(1),
      Q => \data_p2_reg_n_0_[1]\,
      R => '0'
    );
\data_p2_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^load_p2\,
      D => D(19),
      Q => \data_p2_reg_n_0_[20]\,
      R => '0'
    );
\data_p2_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^load_p2\,
      D => D(20),
      Q => \data_p2_reg_n_0_[21]\,
      R => '0'
    );
\data_p2_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^load_p2\,
      D => D(21),
      Q => \data_p2_reg_n_0_[22]\,
      R => '0'
    );
\data_p2_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^load_p2\,
      D => D(22),
      Q => \data_p2_reg_n_0_[23]\,
      R => '0'
    );
\data_p2_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^load_p2\,
      D => D(23),
      Q => \data_p2_reg_n_0_[24]\,
      R => '0'
    );
\data_p2_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^load_p2\,
      D => D(24),
      Q => \data_p2_reg_n_0_[25]\,
      R => '0'
    );
\data_p2_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^load_p2\,
      D => D(25),
      Q => \data_p2_reg_n_0_[26]\,
      R => '0'
    );
\data_p2_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^load_p2\,
      D => D(26),
      Q => \data_p2_reg_n_0_[27]\,
      R => '0'
    );
\data_p2_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^load_p2\,
      D => D(27),
      Q => \data_p2_reg_n_0_[28]\,
      R => '0'
    );
\data_p2_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^load_p2\,
      D => D(28),
      Q => \data_p2_reg_n_0_[29]\,
      R => '0'
    );
\data_p2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^load_p2\,
      D => D(2),
      Q => \data_p2_reg_n_0_[2]\,
      R => '0'
    );
\data_p2_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^load_p2\,
      D => D(29),
      Q => \data_p2_reg_n_0_[31]\,
      R => '0'
    );
\data_p2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^load_p2\,
      D => D(3),
      Q => \data_p2_reg_n_0_[3]\,
      R => '0'
    );
\data_p2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^load_p2\,
      D => D(4),
      Q => \data_p2_reg_n_0_[4]\,
      R => '0'
    );
\data_p2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^load_p2\,
      D => D(5),
      Q => \data_p2_reg_n_0_[5]\,
      R => '0'
    );
\data_p2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^load_p2\,
      D => D(6),
      Q => \data_p2_reg_n_0_[6]\,
      R => '0'
    );
\data_p2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^load_p2\,
      D => D(7),
      Q => \data_p2_reg_n_0_[7]\,
      R => '0'
    );
\data_p2_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^load_p2\,
      D => D(8),
      Q => \data_p2_reg_n_0_[8]\,
      R => '0'
    );
\data_p2_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^load_p2\,
      D => D(9),
      Q => \data_p2_reg_n_0_[9]\,
      R => '0'
    );
dbg_state_ap_vld_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000008F000000"
    )
        port map (
      I0 => \state__0\(0),
      I1 => m_axis_tx_TREADY,
      I2 => \state__0\(1),
      I3 => ap_loop_exit_ready_pp0_iter2_reg,
      I4 => icmp_ln80_reg_428_pp0_iter1_reg,
      I5 => ap_block_pp0_stage0_subdone_grp0_done_reg_reg,
      O => dbg_lfm_i_ap_vld
    );
\int_isr[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000400040004040"
    )
        port map (
      I0 => q0_reg_i_12_n_0,
      I1 => ap_loop_exit_ready_pp0_iter2_reg,
      I2 => Q(0),
      I3 => \^m_axis_tx_tready_int_regslice\,
      I4 => ap_enable_reg_pp0_iter2,
      I5 => ap_enable_reg_pp0_iter1,
      O => int_isr8_out
    );
int_task_ap_done_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A222"
    )
        port map (
      I0 => ap_loop_exit_ready_pp0_iter2_reg,
      I1 => \state__0\(1),
      I2 => m_axis_tx_TREADY,
      I3 => \state__0\(0),
      O => ap_loop_exit_ready_pp0_iter2_reg_reg_0
    );
q0_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222A0000222A020A"
    )
        port map (
      I0 => ap_start,
      I1 => q0_reg_i_12_n_0,
      I2 => ap_enable_reg_pp0_iter2,
      I3 => ap_loop_exit_ready_pp0_iter2_reg,
      I4 => \^m_axis_tx_tready_int_regslice\,
      I5 => ap_enable_reg_pp0_iter1,
      O => \^ap_condition_121\
    );
q0_reg_i_12: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \state__0\(0),
      I1 => m_axis_tx_TREADY,
      I2 => \state__0\(1),
      O => q0_reg_i_12_n_0
    );
\state[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACEC"
    )
        port map (
      I0 => \^load_p2\,
      I1 => \^m_axis_tx_tvalid\,
      I2 => state(1),
      I3 => m_axis_tx_TREADY,
      O => \state[0]_i_2_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F2FF"
    )
        port map (
      I0 => state(1),
      I1 => \^fsm_sequential_state_reg[1]_0\,
      I2 => m_axis_tx_TREADY,
      I3 => \^m_axis_tx_tvalid\,
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
\tx_word_last_reg_418[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"57005713"
    )
        port map (
      I0 => q0_reg_i_12_n_0,
      I1 => ap_enable_reg_pp0_iter2,
      I2 => ap_loop_exit_ready_pp0_iter2_reg,
      I3 => \^m_axis_tx_tready_int_regslice\,
      I4 => ap_enable_reg_pp0_iter1,
      O => ap_block_pp0_stage0_subdone
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen_regslice_both__parameterized0\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_tx_TSTRB : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    load_p2 : in STD_LOGIC;
    \FSM_sequential_state_reg[1]_0\ : in STD_LOGIC;
    m_axis_tx_TREADY : in STD_LOGIC;
    ack_in_t_reg_0 : in STD_LOGIC;
    load_p1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen_regslice_both__parameterized0\ : entity is "lfm_tdm_gen_regslice_both";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen_regslice_both__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen_regslice_both__parameterized0\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \ack_in_t_i_1__0_n_0\ : STD_LOGIC;
  signal ack_in_t_reg_n_0 : STD_LOGIC;
  signal \data_p1[3]_i_1_n_0\ : STD_LOGIC;
  signal data_p2 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \data_p2[3]_i_1_n_0\ : STD_LOGIC;
  signal \^m_axis_tx_tstrb\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \next__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
  m_axis_tx_TSTRB(0) <= \^m_axis_tx_tstrb\(0);
\FSM_sequential_state[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF4F"
    )
        port map (
      I0 => ack_in_t_reg_0,
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => m_axis_tx_TREADY,
      O => \next__0\(0)
    );
\FSM_sequential_state[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8FFFFFFF88008800"
    )
        port map (
      I0 => ack_in_t_reg_n_0,
      I1 => load_p2,
      I2 => \FSM_sequential_state_reg[1]_0\,
      I3 => \^q\(0),
      I4 => m_axis_tx_TREADY,
      I5 => \^q\(1),
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
      Q => \^q\(0),
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
      Q => \^q\(1),
      R => ap_rst_n_inv
    );
\ack_in_t_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFFF5858"
    )
        port map (
      I0 => \^q\(1),
      I1 => m_axis_tx_TREADY,
      I2 => \^q\(0),
      I3 => ack_in_t_reg_0,
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
\data_p1[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBFFFB00"
    )
        port map (
      I0 => data_p2(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => load_p1,
      I4 => \^m_axis_tx_tstrb\(0),
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
      I0 => load_p2,
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
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    load_p2 : in STD_LOGIC;
    \FSM_sequential_state_reg[1]_0\ : in STD_LOGIC;
    m_axis_tx_TREADY : in STD_LOGIC;
    ack_in_t_reg_0 : in STD_LOGIC;
    tx_word_last_reg_418 : in STD_LOGIC;
    load_p1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen_regslice_both__parameterized1\ : entity is "lfm_tdm_gen_regslice_both";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen_regslice_both__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen_regslice_both__parameterized1\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \ack_in_t_i_1__1_n_0\ : STD_LOGIC;
  signal ack_in_t_reg_n_0 : STD_LOGIC;
  signal \data_p1[0]_i_1__0_n_0\ : STD_LOGIC;
  signal data_p2 : STD_LOGIC;
  signal \data_p2[0]_i_1_n_0\ : STD_LOGIC;
  signal \^m_axis_tx_tlast\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \next__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
  m_axis_tx_TLAST(0) <= \^m_axis_tx_tlast\(0);
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF4F"
    )
        port map (
      I0 => ack_in_t_reg_0,
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => m_axis_tx_TREADY,
      O => \next__0\(0)
    );
\FSM_sequential_state[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8FFFFFFF88008800"
    )
        port map (
      I0 => ack_in_t_reg_n_0,
      I1 => load_p2,
      I2 => \FSM_sequential_state_reg[1]_0\,
      I3 => \^q\(0),
      I4 => m_axis_tx_TREADY,
      I5 => \^q\(1),
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
      Q => \^q\(0),
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
      Q => \^q\(1),
      R => ap_rst_n_inv
    );
\ack_in_t_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFFF5858"
    )
        port map (
      I0 => \^q\(1),
      I1 => m_axis_tx_TREADY,
      I2 => \^q\(0),
      I3 => ack_in_t_reg_0,
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
\data_p1[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FFFFFB080000"
    )
        port map (
      I0 => data_p2,
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => tx_word_last_reg_418,
      I4 => load_p1,
      I5 => \^m_axis_tx_tlast\(0),
      O => \data_p1[0]_i_1__0_n_0\
    );
\data_p1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \data_p1[0]_i_1__0_n_0\,
      Q => \^m_axis_tx_tlast\(0),
      R => '0'
    );
\data_p2[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => tx_word_last_reg_418,
      I1 => ack_in_t_reg_n_0,
      I2 => load_p2,
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
    dbg_lfm_i_ap_vld : out STD_LOGIC;
    dbg_lfm_q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    dbg_lfm_q_ap_vld : out STD_LOGIC;
    dbg_tx_sel : out STD_LOGIC_VECTOR ( 1 downto 0 );
    dbg_tx_sel_ap_vld : out STD_LOGIC;
    dbg_tx_active : out STD_LOGIC_VECTOR ( 3 downto 0 );
    dbg_tx_active_ap_vld : out STD_LOGIC;
    dbg_chirp_count : out STD_LOGIC_VECTOR ( 15 downto 0 );
    dbg_chirp_count_ap_vld : out STD_LOGIC;
    dbg_sample_count : out STD_LOGIC_VECTOR ( 15 downto 0 );
    dbg_sample_count_ap_vld : out STD_LOGIC;
    dbg_chirp_start : out STD_LOGIC_VECTOR ( 0 to 0 );
    dbg_chirp_start_ap_vld : out STD_LOGIC;
    dbg_chirp_end : out STD_LOGIC_VECTOR ( 0 to 0 );
    dbg_chirp_end_ap_vld : out STD_LOGIC;
    dbg_enable : out STD_LOGIC_VECTOR ( 0 to 0 );
    dbg_enable_ap_vld : out STD_LOGIC;
    dbg_state : out STD_LOGIC_VECTOR ( 2 downto 0 );
    dbg_state_ap_vld : out STD_LOGIC;
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
  signal CTRL_s_axi_U_n_10 : STD_LOGIC;
  signal CTRL_s_axi_U_n_11 : STD_LOGIC;
  signal CTRL_s_axi_U_n_12 : STD_LOGIC;
  signal CTRL_s_axi_U_n_25 : STD_LOGIC;
  signal CTRL_s_axi_U_n_7 : STD_LOGIC;
  signal CTRL_s_axi_U_n_9 : STD_LOGIC;
  signal LFM_IQ_LUT_U_n_1 : STD_LOGIC;
  signal LFM_IQ_LUT_U_n_10 : STD_LOGIC;
  signal LFM_IQ_LUT_U_n_11 : STD_LOGIC;
  signal LFM_IQ_LUT_U_n_12 : STD_LOGIC;
  signal LFM_IQ_LUT_U_n_13 : STD_LOGIC;
  signal LFM_IQ_LUT_U_n_14 : STD_LOGIC;
  signal LFM_IQ_LUT_U_n_15 : STD_LOGIC;
  signal LFM_IQ_LUT_U_n_16 : STD_LOGIC;
  signal LFM_IQ_LUT_U_n_17 : STD_LOGIC;
  signal LFM_IQ_LUT_U_n_18 : STD_LOGIC;
  signal LFM_IQ_LUT_U_n_19 : STD_LOGIC;
  signal LFM_IQ_LUT_U_n_2 : STD_LOGIC;
  signal LFM_IQ_LUT_U_n_20 : STD_LOGIC;
  signal LFM_IQ_LUT_U_n_21 : STD_LOGIC;
  signal LFM_IQ_LUT_U_n_22 : STD_LOGIC;
  signal LFM_IQ_LUT_U_n_23 : STD_LOGIC;
  signal LFM_IQ_LUT_U_n_24 : STD_LOGIC;
  signal LFM_IQ_LUT_U_n_25 : STD_LOGIC;
  signal LFM_IQ_LUT_U_n_26 : STD_LOGIC;
  signal LFM_IQ_LUT_U_n_27 : STD_LOGIC;
  signal LFM_IQ_LUT_U_n_28 : STD_LOGIC;
  signal LFM_IQ_LUT_U_n_29 : STD_LOGIC;
  signal LFM_IQ_LUT_U_n_3 : STD_LOGIC;
  signal LFM_IQ_LUT_U_n_4 : STD_LOGIC;
  signal LFM_IQ_LUT_U_n_5 : STD_LOGIC;
  signal LFM_IQ_LUT_U_n_6 : STD_LOGIC;
  signal LFM_IQ_LUT_U_n_7 : STD_LOGIC;
  signal LFM_IQ_LUT_U_n_8 : STD_LOGIC;
  signal LFM_IQ_LUT_U_n_9 : STD_LOGIC;
  signal add_ln80_fu_336_p2 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ap_block_pp0_stage0_subdone : STD_LOGIC;
  signal ap_block_pp0_stage0_subdone_grp0_done_reg_reg_n_0 : STD_LOGIC;
  signal ap_condition_121 : STD_LOGIC;
  signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter2 : STD_LOGIC;
  signal ap_loop_exit_ready_pp0_iter1_reg : STD_LOGIC;
  signal ap_loop_exit_ready_pp0_iter2_reg : STD_LOGIC;
  signal ap_loop_init : STD_LOGIC;
  signal ap_rst_n_inv : STD_LOGIC;
  signal ap_start : STD_LOGIC;
  signal chirp3_fu_126 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal chirp_16_fu_134 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal chirp_2_fu_299_p3 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal chirp_fu_348_p2 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal data_in0 : STD_LOGIC;
  signal \^dbg_lfm_i_ap_vld\ : STD_LOGIC;
  signal flow_control_loop_pipe_U_n_13 : STD_LOGIC;
  signal flow_control_loop_pipe_U_n_14 : STD_LOGIC;
  signal flow_control_loop_pipe_U_n_26 : STD_LOGIC;
  signal icmp_ln80_fu_354_p2 : STD_LOGIC;
  signal icmp_ln80_reg_428 : STD_LOGIC;
  signal icmp_ln80_reg_428_pp0_iter1_reg : STD_LOGIC;
  signal icmp_ln89_fu_342_p2 : STD_LOGIC;
  signal icmp_ln89_reg_423 : STD_LOGIC;
  signal indvar_flatten2_fu_122 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal int_isr8_out : STD_LOGIC;
  signal load_p1 : STD_LOGIC;
  signal load_p1_0 : STD_LOGIC;
  signal load_p2 : STD_LOGIC;
  signal \^m_axis_tx_tdata\ : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal m_axis_tx_TREADY_int_regslice : STD_LOGIC;
  signal \^m_axis_tx_tstrb\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal regslice_both_m_axis_tx_V_data_V_U_n_1 : STD_LOGIC;
  signal regslice_both_m_axis_tx_V_data_V_U_n_10 : STD_LOGIC;
  signal regslice_both_m_axis_tx_V_data_V_U_n_12 : STD_LOGIC;
  signal regslice_both_m_axis_tx_V_data_V_U_n_13 : STD_LOGIC;
  signal regslice_both_m_axis_tx_V_data_V_U_n_3 : STD_LOGIC;
  signal \^s_axi_ctrl_rdata\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal sample4_fu_130 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal sample_fu_330_p2 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal select_ln80_fu_291_p3 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state__0_1\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tx_word_last_fu_324_p2 : STD_LOGIC;
  signal tx_word_last_reg_418 : STD_LOGIC;
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
  dbg_chirp_count_ap_vld <= \^dbg_lfm_i_ap_vld\;
  dbg_chirp_end(0) <= \<const0>\;
  dbg_chirp_end_ap_vld <= \^dbg_lfm_i_ap_vld\;
  dbg_chirp_start(0) <= \<const0>\;
  dbg_chirp_start_ap_vld <= \^dbg_lfm_i_ap_vld\;
  dbg_enable(0) <= \<const0>\;
  dbg_enable_ap_vld <= \^dbg_lfm_i_ap_vld\;
  dbg_lfm_i(15) <= \<const0>\;
  dbg_lfm_i(14) <= \<const0>\;
  dbg_lfm_i(13) <= \<const0>\;
  dbg_lfm_i(12) <= \<const0>\;
  dbg_lfm_i(11) <= \<const0>\;
  dbg_lfm_i(10) <= \<const0>\;
  dbg_lfm_i(9) <= \<const0>\;
  dbg_lfm_i(8) <= \<const0>\;
  dbg_lfm_i(7) <= \<const0>\;
  dbg_lfm_i(6) <= \<const0>\;
  dbg_lfm_i(5) <= \<const0>\;
  dbg_lfm_i(4) <= \<const0>\;
  dbg_lfm_i(3) <= \<const0>\;
  dbg_lfm_i(2) <= \<const0>\;
  dbg_lfm_i(1) <= \<const0>\;
  dbg_lfm_i(0) <= \<const0>\;
  dbg_lfm_i_ap_vld <= \^dbg_lfm_i_ap_vld\;
  dbg_lfm_q(15) <= \<const0>\;
  dbg_lfm_q(14) <= \<const0>\;
  dbg_lfm_q(13) <= \<const0>\;
  dbg_lfm_q(12) <= \<const0>\;
  dbg_lfm_q(11) <= \<const0>\;
  dbg_lfm_q(10) <= \<const0>\;
  dbg_lfm_q(9) <= \<const0>\;
  dbg_lfm_q(8) <= \<const0>\;
  dbg_lfm_q(7) <= \<const0>\;
  dbg_lfm_q(6) <= \<const0>\;
  dbg_lfm_q(5) <= \<const0>\;
  dbg_lfm_q(4) <= \<const0>\;
  dbg_lfm_q(3) <= \<const0>\;
  dbg_lfm_q(2) <= \<const0>\;
  dbg_lfm_q(1) <= \<const0>\;
  dbg_lfm_q(0) <= \<const0>\;
  dbg_lfm_q_ap_vld <= \^dbg_lfm_i_ap_vld\;
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
  dbg_sample_count_ap_vld <= \^dbg_lfm_i_ap_vld\;
  dbg_state(2) <= \<const0>\;
  dbg_state(1) <= \<const0>\;
  dbg_state(0) <= \<const0>\;
  dbg_state_ap_vld <= \^dbg_lfm_i_ap_vld\;
  dbg_tx_active(3) <= \<const0>\;
  dbg_tx_active(2) <= \<const0>\;
  dbg_tx_active(1) <= \<const0>\;
  dbg_tx_active(0) <= \<const0>\;
  dbg_tx_active_ap_vld <= \^dbg_lfm_i_ap_vld\;
  dbg_tx_sel(1) <= \<const0>\;
  dbg_tx_sel(0) <= \<const0>\;
  dbg_tx_sel_ap_vld <= \^dbg_lfm_i_ap_vld\;
  m_axis_tx_TDATA(31) <= \^m_axis_tx_tdata\(30);
  m_axis_tx_TDATA(30 downto 16) <= \^m_axis_tx_tdata\(30 downto 16);
  m_axis_tx_TDATA(15) <= \^m_axis_tx_tdata\(14);
  m_axis_tx_TDATA(14 downto 0) <= \^m_axis_tx_tdata\(14 downto 0);
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
      D(1 downto 0) => chirp_fu_348_p2(2 downto 1),
      \FSM_onehot_rstate_reg[1]_0\ => s_axi_CTRL_ARREADY,
      \FSM_onehot_wstate_reg[1]_0\ => s_axi_CTRL_AWREADY,
      \FSM_onehot_wstate_reg[2]_0\ => s_axi_CTRL_WREADY,
      Q(0) => CTRL_s_axi_U_n_7,
      ap_clk => ap_clk,
      ap_condition_121 => ap_condition_121,
      ap_enable_reg_pp0_iter1 => ap_enable_reg_pp0_iter1,
      ap_enable_reg_pp0_iter2 => ap_enable_reg_pp0_iter2,
      ap_loop_init => ap_loop_init,
      ap_rst_n => ap_rst_n,
      ap_rst_n_inv => ap_rst_n_inv,
      ap_start => ap_start,
      \chirp_16_fu_134_reg[1]\(1 downto 0) => chirp_16_fu_134(1 downto 0),
      \chirp_16_fu_134_reg[2]\(2 downto 0) => chirp3_fu_126(2 downto 0),
      \chirp_16_fu_134_reg[2]_0\ => flow_control_loop_pipe_U_n_26,
      icmp_ln80_fu_354_p2 => icmp_ln80_fu_354_p2,
      icmp_ln80_reg_428 => icmp_ln80_reg_428,
      icmp_ln89_fu_342_p2 => icmp_ln89_fu_342_p2,
      icmp_ln89_reg_423 => icmp_ln89_reg_423,
      \indvar_flatten2_fu_122_reg[0]\ => CTRL_s_axi_U_n_11,
      \indvar_flatten2_fu_122_reg[11]\ => CTRL_s_axi_U_n_9,
      \indvar_flatten2_fu_122_reg[2]\ => CTRL_s_axi_U_n_12,
      \indvar_flatten2_fu_122_reg[3]\ => CTRL_s_axi_U_n_10,
      int_ap_start_reg_0(11 downto 0) => indvar_flatten2_fu_122(11 downto 0),
      int_ap_start_reg_1 => flow_control_loop_pipe_U_n_14,
      int_isr8_out => int_isr8_out,
      \int_isr_reg[1]_0\ => flow_control_loop_pipe_U_n_13,
      int_task_ap_done_reg_0 => regslice_both_m_axis_tx_V_data_V_U_n_10,
      interrupt => interrupt,
      m_axis_tx_TREADY_int_regslice => m_axis_tx_TREADY_int_regslice,
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
      \sample4_fu_130_reg[10]\(10 downto 0) => sample4_fu_130(10 downto 0),
      \sample4_fu_130_reg[7]\ => CTRL_s_axi_U_n_25,
      \sample4_fu_130_reg[9]\(9 downto 0) => sample_fu_330_p2(10 downto 1)
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
LFM_IQ_LUT_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen_LFM_IQ_LUT_ROM_AUTO_1R
     port map (
      ADDRARDADDR(9 downto 0) => select_ln80_fu_291_p3(9 downto 0),
      D(29) => data_in0,
      D(28) => LFM_IQ_LUT_U_n_1,
      D(27) => LFM_IQ_LUT_U_n_2,
      D(26) => LFM_IQ_LUT_U_n_3,
      D(25) => LFM_IQ_LUT_U_n_4,
      D(24) => LFM_IQ_LUT_U_n_5,
      D(23) => LFM_IQ_LUT_U_n_6,
      D(22) => LFM_IQ_LUT_U_n_7,
      D(21) => LFM_IQ_LUT_U_n_8,
      D(20) => LFM_IQ_LUT_U_n_9,
      D(19) => LFM_IQ_LUT_U_n_10,
      D(18) => LFM_IQ_LUT_U_n_11,
      D(17) => LFM_IQ_LUT_U_n_12,
      D(16) => LFM_IQ_LUT_U_n_13,
      D(15) => LFM_IQ_LUT_U_n_14,
      D(14) => LFM_IQ_LUT_U_n_15,
      D(13) => LFM_IQ_LUT_U_n_16,
      D(12) => LFM_IQ_LUT_U_n_17,
      D(11) => LFM_IQ_LUT_U_n_18,
      D(10) => LFM_IQ_LUT_U_n_19,
      D(9) => LFM_IQ_LUT_U_n_20,
      D(8) => LFM_IQ_LUT_U_n_21,
      D(7) => LFM_IQ_LUT_U_n_22,
      D(6) => LFM_IQ_LUT_U_n_23,
      D(5) => LFM_IQ_LUT_U_n_24,
      D(4) => LFM_IQ_LUT_U_n_25,
      D(3) => LFM_IQ_LUT_U_n_26,
      D(2) => LFM_IQ_LUT_U_n_27,
      D(1) => LFM_IQ_LUT_U_n_28,
      D(0) => LFM_IQ_LUT_U_n_29,
      ap_clk => ap_clk,
      ap_condition_121 => ap_condition_121
    );
ap_block_pp0_stage0_subdone_grp0_done_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => regslice_both_m_axis_tx_V_data_V_U_n_3,
      Q => ap_block_pp0_stage0_subdone_grp0_done_reg_reg_n_0,
      R => '0'
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
ap_loop_exit_ready_pp0_iter1_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => ap_condition_exit_pp0_iter0_stage0,
      Q => ap_loop_exit_ready_pp0_iter1_reg,
      R => '0'
    );
ap_loop_exit_ready_pp0_iter2_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => regslice_both_m_axis_tx_V_data_V_U_n_1,
      Q => ap_loop_exit_ready_pp0_iter2_reg,
      R => '0'
    );
\chirp3_fu_126_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_121,
      D => chirp_2_fu_299_p3(0),
      Q => chirp3_fu_126(0),
      R => '0'
    );
\chirp3_fu_126_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_121,
      D => chirp_2_fu_299_p3(1),
      Q => chirp3_fu_126(1),
      R => '0'
    );
\chirp3_fu_126_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_121,
      D => chirp_2_fu_299_p3(2),
      Q => chirp3_fu_126(2),
      R => '0'
    );
\chirp_16_fu_134_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_121,
      D => chirp_fu_348_p2(0),
      Q => chirp_16_fu_134(0),
      R => '0'
    );
\chirp_16_fu_134_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_121,
      D => chirp_fu_348_p2(1),
      Q => chirp_16_fu_134(1),
      R => '0'
    );
\chirp_16_fu_134_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_121,
      D => chirp_fu_348_p2(2),
      Q => chirp_16_fu_134(2),
      R => '0'
    );
flow_control_loop_pipe_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen_flow_control_loop_pipe
     port map (
      ADDRARDADDR(9 downto 0) => select_ln80_fu_291_p3(9 downto 0),
      D(11 downto 0) => add_ln80_fu_336_p2(11 downto 0),
      Q(11 downto 0) => indvar_flatten2_fu_122(11 downto 0),
      ap_clk => ap_clk,
      ap_condition_121 => ap_condition_121,
      ap_enable_reg_pp0_iter1 => ap_enable_reg_pp0_iter1,
      ap_loop_init => ap_loop_init,
      ap_loop_init_reg_0 => flow_control_loop_pipe_U_n_14,
      ap_loop_init_reg_1(0) => sample_fu_330_p2(0),
      ap_loop_init_reg_2 => CTRL_s_axi_U_n_9,
      ap_rst_n => ap_rst_n,
      ap_start => ap_start,
      \chirp3_fu_126_reg[0]\(0) => chirp_fu_348_p2(0),
      \chirp3_fu_126_reg[2]\(2 downto 0) => chirp_2_fu_299_p3(2 downto 0),
      \chirp3_fu_126_reg[2]_0\(2 downto 0) => chirp_16_fu_134(2 downto 0),
      icmp_ln80_reg_428 => icmp_ln80_reg_428,
      icmp_ln89_reg_423 => icmp_ln89_reg_423,
      \indvar_flatten2_fu_122_reg[5]\ => flow_control_loop_pipe_U_n_13,
      int_ap_start_reg => flow_control_loop_pipe_U_n_26,
      \int_isr_reg[1]\ => CTRL_s_axi_U_n_11,
      \int_isr_reg[1]_0\ => CTRL_s_axi_U_n_10,
      \int_isr_reg[1]_1\ => CTRL_s_axi_U_n_12,
      tx_word_last_fu_324_p2 => tx_word_last_fu_324_p2,
      \tx_word_last_reg_418_reg[0]\ => CTRL_s_axi_U_n_25,
      \tx_word_last_reg_418_reg[0]_0\(10 downto 0) => sample4_fu_130(10 downto 0),
      \tx_word_last_reg_418_reg[0]_1\(2 downto 0) => chirp3_fu_126(2 downto 0)
    );
\icmp_ln80_reg_428_pp0_iter1_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => icmp_ln80_reg_428,
      Q => icmp_ln80_reg_428_pp0_iter1_reg,
      R => '0'
    );
\icmp_ln80_reg_428_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => icmp_ln80_fu_354_p2,
      Q => icmp_ln80_reg_428,
      R => '0'
    );
\icmp_ln89_reg_423_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_condition_121,
      D => icmp_ln89_fu_342_p2,
      Q => icmp_ln89_reg_423,
      R => '0'
    );
\indvar_flatten2_fu_122_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_121,
      D => add_ln80_fu_336_p2(0),
      Q => indvar_flatten2_fu_122(0),
      R => '0'
    );
\indvar_flatten2_fu_122_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_121,
      D => add_ln80_fu_336_p2(10),
      Q => indvar_flatten2_fu_122(10),
      R => '0'
    );
\indvar_flatten2_fu_122_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_121,
      D => add_ln80_fu_336_p2(11),
      Q => indvar_flatten2_fu_122(11),
      R => '0'
    );
\indvar_flatten2_fu_122_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_121,
      D => add_ln80_fu_336_p2(1),
      Q => indvar_flatten2_fu_122(1),
      R => '0'
    );
\indvar_flatten2_fu_122_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_121,
      D => add_ln80_fu_336_p2(2),
      Q => indvar_flatten2_fu_122(2),
      R => '0'
    );
\indvar_flatten2_fu_122_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_121,
      D => add_ln80_fu_336_p2(3),
      Q => indvar_flatten2_fu_122(3),
      R => '0'
    );
\indvar_flatten2_fu_122_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_121,
      D => add_ln80_fu_336_p2(4),
      Q => indvar_flatten2_fu_122(4),
      R => '0'
    );
\indvar_flatten2_fu_122_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_121,
      D => add_ln80_fu_336_p2(5),
      Q => indvar_flatten2_fu_122(5),
      R => '0'
    );
\indvar_flatten2_fu_122_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_121,
      D => add_ln80_fu_336_p2(6),
      Q => indvar_flatten2_fu_122(6),
      R => '0'
    );
\indvar_flatten2_fu_122_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_121,
      D => add_ln80_fu_336_p2(7),
      Q => indvar_flatten2_fu_122(7),
      R => '0'
    );
\indvar_flatten2_fu_122_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_121,
      D => add_ln80_fu_336_p2(8),
      Q => indvar_flatten2_fu_122(8),
      R => '0'
    );
\indvar_flatten2_fu_122_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_121,
      D => add_ln80_fu_336_p2(9),
      Q => indvar_flatten2_fu_122(9),
      R => '0'
    );
regslice_both_m_axis_tx_V_data_V_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen_regslice_both
     port map (
      D(29) => data_in0,
      D(28) => LFM_IQ_LUT_U_n_1,
      D(27) => LFM_IQ_LUT_U_n_2,
      D(26) => LFM_IQ_LUT_U_n_3,
      D(25) => LFM_IQ_LUT_U_n_4,
      D(24) => LFM_IQ_LUT_U_n_5,
      D(23) => LFM_IQ_LUT_U_n_6,
      D(22) => LFM_IQ_LUT_U_n_7,
      D(21) => LFM_IQ_LUT_U_n_8,
      D(20) => LFM_IQ_LUT_U_n_9,
      D(19) => LFM_IQ_LUT_U_n_10,
      D(18) => LFM_IQ_LUT_U_n_11,
      D(17) => LFM_IQ_LUT_U_n_12,
      D(16) => LFM_IQ_LUT_U_n_13,
      D(15) => LFM_IQ_LUT_U_n_14,
      D(14) => LFM_IQ_LUT_U_n_15,
      D(13) => LFM_IQ_LUT_U_n_16,
      D(12) => LFM_IQ_LUT_U_n_17,
      D(11) => LFM_IQ_LUT_U_n_18,
      D(10) => LFM_IQ_LUT_U_n_19,
      D(9) => LFM_IQ_LUT_U_n_20,
      D(8) => LFM_IQ_LUT_U_n_21,
      D(7) => LFM_IQ_LUT_U_n_22,
      D(6) => LFM_IQ_LUT_U_n_23,
      D(5) => LFM_IQ_LUT_U_n_24,
      D(4) => LFM_IQ_LUT_U_n_25,
      D(3) => LFM_IQ_LUT_U_n_26,
      D(2) => LFM_IQ_LUT_U_n_27,
      D(1) => LFM_IQ_LUT_U_n_28,
      D(0) => LFM_IQ_LUT_U_n_29,
      \FSM_sequential_state_reg[0]_0\ => regslice_both_m_axis_tx_V_data_V_U_n_12,
      \FSM_sequential_state_reg[1]_0\ => regslice_both_m_axis_tx_V_data_V_U_n_13,
      Q(0) => CTRL_s_axi_U_n_7,
      ap_block_pp0_stage0_subdone => ap_block_pp0_stage0_subdone,
      ap_block_pp0_stage0_subdone_grp0_done_reg_reg => ap_block_pp0_stage0_subdone_grp0_done_reg_reg_n_0,
      ap_clk => ap_clk,
      ap_condition_121 => ap_condition_121,
      ap_condition_exit_pp0_iter0_stage0 => ap_condition_exit_pp0_iter0_stage0,
      ap_enable_reg_pp0_iter1 => ap_enable_reg_pp0_iter1,
      ap_enable_reg_pp0_iter1_reg => regslice_both_m_axis_tx_V_data_V_U_n_1,
      ap_enable_reg_pp0_iter2 => ap_enable_reg_pp0_iter2,
      ap_loop_exit_ready_pp0_iter1_reg => ap_loop_exit_ready_pp0_iter1_reg,
      ap_loop_exit_ready_pp0_iter1_reg_reg(0) => indvar_flatten2_fu_122(5),
      ap_loop_exit_ready_pp0_iter1_reg_reg_0 => CTRL_s_axi_U_n_9,
      ap_loop_exit_ready_pp0_iter2_reg => ap_loop_exit_ready_pp0_iter2_reg,
      ap_loop_exit_ready_pp0_iter2_reg_reg => regslice_both_m_axis_tx_V_data_V_U_n_3,
      ap_loop_exit_ready_pp0_iter2_reg_reg_0 => regslice_both_m_axis_tx_V_data_V_U_n_10,
      ap_loop_init => ap_loop_init,
      ap_rst_n => ap_rst_n,
      ap_rst_n_inv => ap_rst_n_inv,
      ap_start => ap_start,
      \data_p1_reg[0]_0\(1 downto 0) => \state__0_1\(1 downto 0),
      \data_p1_reg[3]_0\(1 downto 0) => \state__0\(1 downto 0),
      dbg_lfm_i_ap_vld => \^dbg_lfm_i_ap_vld\,
      icmp_ln80_reg_428_pp0_iter1_reg => icmp_ln80_reg_428_pp0_iter1_reg,
      int_isr8_out => int_isr8_out,
      load_p1 => load_p1_0,
      load_p1_0 => load_p1,
      load_p2 => load_p2,
      m_axis_tx_TDATA(29 downto 15) => \^m_axis_tx_tdata\(30 downto 16),
      m_axis_tx_TDATA(14 downto 0) => \^m_axis_tx_tdata\(14 downto 0),
      m_axis_tx_TREADY => m_axis_tx_TREADY,
      m_axis_tx_TREADY_int_regslice => m_axis_tx_TREADY_int_regslice,
      m_axis_tx_TVALID => m_axis_tx_TVALID
    );
regslice_both_m_axis_tx_V_keep_V_U: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen_regslice_both__parameterized0\
     port map (
      \FSM_sequential_state_reg[1]_0\ => regslice_both_m_axis_tx_V_data_V_U_n_12,
      Q(1 downto 0) => \state__0\(1 downto 0),
      ack_in_t_reg_0 => regslice_both_m_axis_tx_V_data_V_U_n_13,
      ap_clk => ap_clk,
      ap_rst_n_inv => ap_rst_n_inv,
      load_p1 => load_p1,
      load_p2 => load_p2,
      m_axis_tx_TREADY => m_axis_tx_TREADY,
      m_axis_tx_TSTRB(0) => \^m_axis_tx_tstrb\(2)
    );
regslice_both_m_axis_tx_V_last_V_U: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfm_tdm_gen_regslice_both__parameterized1\
     port map (
      \FSM_sequential_state_reg[1]_0\ => regslice_both_m_axis_tx_V_data_V_U_n_12,
      Q(1 downto 0) => \state__0_1\(1 downto 0),
      ack_in_t_reg_0 => regslice_both_m_axis_tx_V_data_V_U_n_13,
      ap_clk => ap_clk,
      ap_rst_n_inv => ap_rst_n_inv,
      load_p1 => load_p1_0,
      load_p2 => load_p2,
      m_axis_tx_TLAST(0) => m_axis_tx_TLAST(0),
      m_axis_tx_TREADY => m_axis_tx_TREADY,
      tx_word_last_reg_418 => tx_word_last_reg_418
    );
\sample4_fu_130_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_121,
      D => sample_fu_330_p2(0),
      Q => sample4_fu_130(0),
      R => '0'
    );
\sample4_fu_130_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_121,
      D => sample_fu_330_p2(10),
      Q => sample4_fu_130(10),
      R => '0'
    );
\sample4_fu_130_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_121,
      D => sample_fu_330_p2(1),
      Q => sample4_fu_130(1),
      R => '0'
    );
\sample4_fu_130_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_121,
      D => sample_fu_330_p2(2),
      Q => sample4_fu_130(2),
      R => '0'
    );
\sample4_fu_130_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_121,
      D => sample_fu_330_p2(3),
      Q => sample4_fu_130(3),
      R => '0'
    );
\sample4_fu_130_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_121,
      D => sample_fu_330_p2(4),
      Q => sample4_fu_130(4),
      R => '0'
    );
\sample4_fu_130_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_121,
      D => sample_fu_330_p2(5),
      Q => sample4_fu_130(5),
      R => '0'
    );
\sample4_fu_130_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_121,
      D => sample_fu_330_p2(6),
      Q => sample4_fu_130(6),
      R => '0'
    );
\sample4_fu_130_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_121,
      D => sample_fu_330_p2(7),
      Q => sample4_fu_130(7),
      R => '0'
    );
\sample4_fu_130_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_121,
      D => sample_fu_330_p2(8),
      Q => sample4_fu_130(8),
      R => '0'
    );
\sample4_fu_130_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_121,
      D => sample_fu_330_p2(9),
      Q => sample4_fu_130(9),
      R => '0'
    );
\tx_word_last_reg_418_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => tx_word_last_fu_324_p2,
      Q => tx_word_last_reg_418,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    dbg_lfm_i_ap_vld : out STD_LOGIC;
    dbg_lfm_q_ap_vld : out STD_LOGIC;
    dbg_tx_sel_ap_vld : out STD_LOGIC;
    dbg_tx_active_ap_vld : out STD_LOGIC;
    dbg_chirp_count_ap_vld : out STD_LOGIC;
    dbg_sample_count_ap_vld : out STD_LOGIC;
    dbg_chirp_start_ap_vld : out STD_LOGIC;
    dbg_chirp_end_ap_vld : out STD_LOGIC;
    dbg_enable_ap_vld : out STD_LOGIC;
    dbg_state_ap_vld : out STD_LOGIC;
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
    dbg_tx_active : out STD_LOGIC_VECTOR ( 3 downto 0 );
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
  signal \^s_axi_ctrl_rdata\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_inst_dbg_chirp_count_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_inst_dbg_chirp_end_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_dbg_chirp_start_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_dbg_enable_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_dbg_lfm_i_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_inst_dbg_lfm_q_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_inst_dbg_sample_count_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_inst_dbg_state_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_dbg_tx_active_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_dbg_tx_sel_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
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
  attribute X_INTERFACE_INFO of dbg_tx_active : signal is "xilinx.com:signal:data:1.0 dbg_tx_active DATA";
  attribute X_INTERFACE_MODE of dbg_tx_active : signal is "master";
  attribute X_INTERFACE_PARAMETER of dbg_tx_active : signal is "XIL_INTERFACENAME dbg_tx_active, LAYERED_METADATA undef";
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
  dbg_chirp_end(0) <= \<const0>\;
  dbg_chirp_start(0) <= \<const0>\;
  dbg_enable(0) <= \<const0>\;
  dbg_lfm_i(15) <= \<const1>\;
  dbg_lfm_i(14) <= \<const1>\;
  dbg_lfm_i(13) <= \<const0>\;
  dbg_lfm_i(12) <= \<const1>\;
  dbg_lfm_i(11) <= \<const0>\;
  dbg_lfm_i(10) <= \<const0>\;
  dbg_lfm_i(9) <= \<const0>\;
  dbg_lfm_i(8) <= \<const1>\;
  dbg_lfm_i(7) <= \<const1>\;
  dbg_lfm_i(6) <= \<const1>\;
  dbg_lfm_i(5) <= \<const1>\;
  dbg_lfm_i(4) <= \<const1>\;
  dbg_lfm_i(3) <= \<const0>\;
  dbg_lfm_i(2) <= \<const1>\;
  dbg_lfm_i(1) <= \<const0>\;
  dbg_lfm_i(0) <= \<const1>\;
  dbg_lfm_q(15) <= \<const1>\;
  dbg_lfm_q(14) <= \<const1>\;
  dbg_lfm_q(13) <= \<const1>\;
  dbg_lfm_q(12) <= \<const1>\;
  dbg_lfm_q(11) <= \<const0>\;
  dbg_lfm_q(10) <= \<const1>\;
  dbg_lfm_q(9) <= \<const1>\;
  dbg_lfm_q(8) <= \<const1>\;
  dbg_lfm_q(7) <= \<const0>\;
  dbg_lfm_q(6) <= \<const0>\;
  dbg_lfm_q(5) <= \<const1>\;
  dbg_lfm_q(4) <= \<const1>\;
  dbg_lfm_q(3) <= \<const0>\;
  dbg_lfm_q(2) <= \<const1>\;
  dbg_lfm_q(1) <= \<const1>\;
  dbg_lfm_q(0) <= \<const1>\;
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
  dbg_tx_active(3) <= \<const0>\;
  dbg_tx_active(2) <= \<const0>\;
  dbg_tx_active(1) <= \<const0>\;
  dbg_tx_active(0) <= \<const0>\;
  dbg_tx_sel(1) <= \<const1>\;
  dbg_tx_sel(0) <= \<const1>\;
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
      dbg_chirp_count_ap_vld => dbg_chirp_count_ap_vld,
      dbg_chirp_end(0) => NLW_inst_dbg_chirp_end_UNCONNECTED(0),
      dbg_chirp_end_ap_vld => dbg_chirp_end_ap_vld,
      dbg_chirp_start(0) => NLW_inst_dbg_chirp_start_UNCONNECTED(0),
      dbg_chirp_start_ap_vld => dbg_chirp_start_ap_vld,
      dbg_enable(0) => NLW_inst_dbg_enable_UNCONNECTED(0),
      dbg_enable_ap_vld => dbg_enable_ap_vld,
      dbg_lfm_i(15 downto 0) => NLW_inst_dbg_lfm_i_UNCONNECTED(15 downto 0),
      dbg_lfm_i_ap_vld => dbg_lfm_i_ap_vld,
      dbg_lfm_q(15 downto 0) => NLW_inst_dbg_lfm_q_UNCONNECTED(15 downto 0),
      dbg_lfm_q_ap_vld => dbg_lfm_q_ap_vld,
      dbg_sample_count(15 downto 0) => NLW_inst_dbg_sample_count_UNCONNECTED(15 downto 0),
      dbg_sample_count_ap_vld => dbg_sample_count_ap_vld,
      dbg_state(2 downto 0) => NLW_inst_dbg_state_UNCONNECTED(2 downto 0),
      dbg_state_ap_vld => dbg_state_ap_vld,
      dbg_tx_active(3 downto 0) => NLW_inst_dbg_tx_active_UNCONNECTED(3 downto 0),
      dbg_tx_active_ap_vld => dbg_tx_active_ap_vld,
      dbg_tx_sel(1 downto 0) => NLW_inst_dbg_tx_sel_UNCONNECTED(1 downto 0),
      dbg_tx_sel_ap_vld => dbg_tx_sel_ap_vld,
      interrupt => interrupt,
      m_axis_tx_TDATA(31 downto 0) => m_axis_tx_TDATA(31 downto 0),
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
