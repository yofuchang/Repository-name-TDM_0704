-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Fri Jul 17 20:10:55 2026
-- Host        : JohnsonKu running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/TDM_0704/TDM_0704/TDM_0704.gen/sources_1/bd/design_1/ip/design_1_adc_packetizer_0_0/design_1_adc_packetizer_0_0_sim_netlist.vhdl
-- Design      : design_1_adc_packetizer_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu48dr-fsvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_adc_packetizer_0_0_adc_packetizer_regslice_both is
  port (
    ack_in_t_reg_0 : out STD_LOGIC;
    \state_reg[0]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \data_p1_reg[15]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    m_axis_dma_TREADY_int_regslice : in STD_LOGIC;
    ap_enable_reg_pp0_iter1 : in STD_LOGIC;
    ap_block_pp0_stage0_11001 : in STD_LOGIC;
    s_axis_adc_TVALID : in STD_LOGIC;
    s_axis_adc_TDATA : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_adc_packetizer_0_0_adc_packetizer_regslice_both : entity is "adc_packetizer_regslice_both";
end design_1_adc_packetizer_0_0_adc_packetizer_regslice_both;

architecture STRUCTURE of design_1_adc_packetizer_0_0_adc_packetizer_regslice_both is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ack_in_t_i_2_n_0 : STD_LOGIC;
  signal \^ack_in_t_reg_0\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[0]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[10]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[11]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[12]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[13]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[14]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[15]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[1]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[2]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[3]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[4]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[5]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[6]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[7]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[8]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[9]\ : STD_LOGIC;
  signal load_p1 : STD_LOGIC;
  signal load_p2 : STD_LOGIC;
  signal \next__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1\ : label is "soft_lutpair3";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute SOFT_HLUTNM of ack_in_t_i_2 : label is "soft_lutpair3";
begin
  Q(0) <= \^q\(0);
  ack_in_t_reg_0 <= \^ack_in_t_reg_0\;
\FSM_sequential_state[0]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"73FF"
    )
        port map (
      I0 => s_axis_adc_TVALID,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => ap_block_pp0_stage0_11001,
      O => \next__0\(0)
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8AAA8AA"
    )
        port map (
      I0 => \state__0\(1),
      I1 => ap_block_pp0_stage0_11001,
      I2 => s_axis_adc_TVALID,
      I3 => \state__0\(0),
      I4 => \^ack_in_t_reg_0\,
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
ack_in_t_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AFFBBAA"
    )
        port map (
      I0 => \^ack_in_t_reg_0\,
      I1 => ap_block_pp0_stage0_11001,
      I2 => s_axis_adc_TVALID,
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      O => ack_in_t_i_2_n_0
    );
ack_in_t_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ack_in_t_i_2_n_0,
      Q => \^ack_in_t_reg_0\,
      R => ap_rst_n_inv
    );
ap_enable_reg_pp0_iter1_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \^q\(0),
      I1 => m_axis_dma_TREADY_int_regslice,
      I2 => ap_enable_reg_pp0_iter1,
      O => \state_reg[0]_0\
    );
\data_p1[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[0]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => s_axis_adc_TDATA(0),
      O => p_0_in(0)
    );
\data_p1[10]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[10]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => s_axis_adc_TDATA(10),
      O => p_0_in(10)
    );
\data_p1[11]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[11]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => s_axis_adc_TDATA(11),
      O => p_0_in(11)
    );
\data_p1[12]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[12]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => s_axis_adc_TDATA(12),
      O => p_0_in(12)
    );
\data_p1[13]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[13]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => s_axis_adc_TDATA(13),
      O => p_0_in(13)
    );
\data_p1[14]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[14]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => s_axis_adc_TDATA(14),
      O => p_0_in(14)
    );
\data_p1[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7404"
    )
        port map (
      I0 => ap_block_pp0_stage0_11001,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => s_axis_adc_TVALID,
      O => load_p1
    );
\data_p1[15]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[15]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => s_axis_adc_TDATA(15),
      O => p_0_in(15)
    );
\data_p1[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[1]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => s_axis_adc_TDATA(1),
      O => p_0_in(1)
    );
\data_p1[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[2]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => s_axis_adc_TDATA(2),
      O => p_0_in(2)
    );
\data_p1[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[3]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => s_axis_adc_TDATA(3),
      O => p_0_in(3)
    );
\data_p1[4]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[4]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => s_axis_adc_TDATA(4),
      O => p_0_in(4)
    );
\data_p1[5]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[5]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => s_axis_adc_TDATA(5),
      O => p_0_in(5)
    );
\data_p1[6]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[6]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => s_axis_adc_TDATA(6),
      O => p_0_in(6)
    );
\data_p1[7]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[7]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => s_axis_adc_TDATA(7),
      O => p_0_in(7)
    );
\data_p1[8]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[8]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => s_axis_adc_TDATA(8),
      O => p_0_in(8)
    );
\data_p1[9]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[9]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => s_axis_adc_TDATA(9),
      O => p_0_in(9)
    );
\data_p1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(0),
      Q => \data_p1_reg[15]_0\(0),
      R => '0'
    );
\data_p1_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(10),
      Q => \data_p1_reg[15]_0\(10),
      R => '0'
    );
\data_p1_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(11),
      Q => \data_p1_reg[15]_0\(11),
      R => '0'
    );
\data_p1_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(12),
      Q => \data_p1_reg[15]_0\(12),
      R => '0'
    );
\data_p1_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(13),
      Q => \data_p1_reg[15]_0\(13),
      R => '0'
    );
\data_p1_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(14),
      Q => \data_p1_reg[15]_0\(14),
      R => '0'
    );
\data_p1_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(15),
      Q => \data_p1_reg[15]_0\(15),
      R => '0'
    );
\data_p1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(1),
      Q => \data_p1_reg[15]_0\(1),
      R => '0'
    );
\data_p1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(2),
      Q => \data_p1_reg[15]_0\(2),
      R => '0'
    );
\data_p1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(3),
      Q => \data_p1_reg[15]_0\(3),
      R => '0'
    );
\data_p1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(4),
      Q => \data_p1_reg[15]_0\(4),
      R => '0'
    );
\data_p1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(5),
      Q => \data_p1_reg[15]_0\(5),
      R => '0'
    );
\data_p1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(6),
      Q => \data_p1_reg[15]_0\(6),
      R => '0'
    );
\data_p1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(7),
      Q => \data_p1_reg[15]_0\(7),
      R => '0'
    );
\data_p1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(8),
      Q => \data_p1_reg[15]_0\(8),
      R => '0'
    );
\data_p1_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(9),
      Q => \data_p1_reg[15]_0\(9),
      R => '0'
    );
\data_p2[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axis_adc_TVALID,
      I1 => \^ack_in_t_reg_0\,
      O => load_p2
    );
\data_p2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => s_axis_adc_TDATA(0),
      Q => \data_p2_reg_n_0_[0]\,
      R => '0'
    );
\data_p2_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => s_axis_adc_TDATA(10),
      Q => \data_p2_reg_n_0_[10]\,
      R => '0'
    );
\data_p2_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => s_axis_adc_TDATA(11),
      Q => \data_p2_reg_n_0_[11]\,
      R => '0'
    );
\data_p2_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => s_axis_adc_TDATA(12),
      Q => \data_p2_reg_n_0_[12]\,
      R => '0'
    );
\data_p2_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => s_axis_adc_TDATA(13),
      Q => \data_p2_reg_n_0_[13]\,
      R => '0'
    );
\data_p2_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => s_axis_adc_TDATA(14),
      Q => \data_p2_reg_n_0_[14]\,
      R => '0'
    );
\data_p2_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => s_axis_adc_TDATA(15),
      Q => \data_p2_reg_n_0_[15]\,
      R => '0'
    );
\data_p2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => s_axis_adc_TDATA(1),
      Q => \data_p2_reg_n_0_[1]\,
      R => '0'
    );
\data_p2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => s_axis_adc_TDATA(2),
      Q => \data_p2_reg_n_0_[2]\,
      R => '0'
    );
\data_p2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => s_axis_adc_TDATA(3),
      Q => \data_p2_reg_n_0_[3]\,
      R => '0'
    );
\data_p2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => s_axis_adc_TDATA(4),
      Q => \data_p2_reg_n_0_[4]\,
      R => '0'
    );
\data_p2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => s_axis_adc_TDATA(5),
      Q => \data_p2_reg_n_0_[5]\,
      R => '0'
    );
\data_p2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => s_axis_adc_TDATA(6),
      Q => \data_p2_reg_n_0_[6]\,
      R => '0'
    );
\data_p2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => s_axis_adc_TDATA(7),
      Q => \data_p2_reg_n_0_[7]\,
      R => '0'
    );
\data_p2_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => s_axis_adc_TDATA(8),
      Q => \data_p2_reg_n_0_[8]\,
      R => '0'
    );
\data_p2_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => s_axis_adc_TDATA(9),
      Q => \data_p2_reg_n_0_[9]\,
      R => '0'
    );
\state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF58080"
    )
        port map (
      I0 => state(1),
      I1 => \^ack_in_t_reg_0\,
      I2 => s_axis_adc_TVALID,
      I3 => ap_block_pp0_stage0_11001,
      I4 => \^q\(0),
      O => \state[0]_i_1_n_0\
    );
\state[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5FDF"
    )
        port map (
      I0 => \^q\(0),
      I1 => state(1),
      I2 => ap_block_pp0_stage0_11001,
      I3 => s_axis_adc_TVALID,
      O => \state[1]_i_1__0_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \state[0]_i_1_n_0\,
      Q => \^q\(0),
      R => ap_rst_n_inv
    );
\state_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \state[1]_i_1__0_n_0\,
      Q => state(1),
      S => ap_rst_n_inv
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_adc_packetizer_0_0_adc_packetizer_regslice_both__parameterized0\ is
  port (
    m_axis_dma_TREADY_int_regslice : out STD_LOGIC;
    ap_rst_n_inv : out STD_LOGIC;
    m_axis_dma_TVALID : out STD_LOGIC;
    ap_block_pp0_stage0_11001 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_dma_TDATA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_clk : in STD_LOGIC;
    m_axis_dma_TREADY : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_enable_reg_pp0_iter1 : in STD_LOGIC;
    \data_p2_reg[15]_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_rst_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_adc_packetizer_0_0_adc_packetizer_regslice_both__parameterized0\ : entity is "adc_packetizer_regslice_both";
end \design_1_adc_packetizer_0_0_adc_packetizer_regslice_both__parameterized0\;

architecture STRUCTURE of \design_1_adc_packetizer_0_0_adc_packetizer_regslice_both__parameterized0\ is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \ack_in_t_i_1__0_n_0\ : STD_LOGIC;
  signal \^ap_block_pp0_stage0_11001\ : STD_LOGIC;
  signal \^ap_rst_n_inv\ : STD_LOGIC;
  signal \data_p1[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[10]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[11]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[12]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[13]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[14]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[15]_i_2_n_0\ : STD_LOGIC;
  signal \data_p1[1]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[2]_i_1_n_0\ : STD_LOGIC;
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
  signal \data_p2_reg_n_0_[14]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[15]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[1]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[2]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[3]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[4]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[5]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[6]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[7]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[8]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[9]\ : STD_LOGIC;
  signal load_p1 : STD_LOGIC;
  signal \^m_axis_dma_tready_int_regslice\ : STD_LOGIC;
  signal \^m_axis_dma_tvalid\ : STD_LOGIC;
  signal \next__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \state[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
begin
  E(0) <= \^e\(0);
  ap_block_pp0_stage0_11001 <= \^ap_block_pp0_stage0_11001\;
  ap_rst_n_inv <= \^ap_rst_n_inv\;
  m_axis_dma_TREADY_int_regslice <= \^m_axis_dma_tready_int_regslice\;
  m_axis_dma_TVALID <= \^m_axis_dma_tvalid\;
\FSM_sequential_state[0]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF7FFFFFF00FF"
    )
        port map (
      I0 => Q(0),
      I1 => \^m_axis_dma_tready_int_regslice\,
      I2 => ap_enable_reg_pp0_iter1,
      I3 => \state__0\(1),
      I4 => m_axis_dma_TREADY,
      I5 => \state__0\(0),
      O => \next__0\(0)
    );
\FSM_sequential_state[1]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E222EAAA"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(0),
      I2 => Q(0),
      I3 => \^m_axis_dma_tready_int_regslice\,
      I4 => m_axis_dma_TREADY,
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
      S => \^ap_rst_n_inv\
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
      R => \^ap_rst_n_inv\
    );
ack_in_t_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ap_rst_n,
      O => \^ap_rst_n_inv\
    );
\ack_in_t_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0F0FFFFFAFAF0F0"
    )
        port map (
      I0 => m_axis_dma_TREADY,
      I1 => ap_enable_reg_pp0_iter1,
      I2 => \^m_axis_dma_tready_int_regslice\,
      I3 => Q(0),
      I4 => \state__0\(1),
      I5 => \state__0\(0),
      O => \ack_in_t_i_1__0_n_0\
    );
ack_in_t_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF777777777777"
    )
        port map (
      I0 => Q(0),
      I1 => \^m_axis_dma_tready_int_regslice\,
      I2 => m_axis_dma_TREADY,
      I3 => \state__0\(0),
      I4 => \state__0\(1),
      I5 => ap_enable_reg_pp0_iter1,
      O => \^ap_block_pp0_stage0_11001\
    );
ack_in_t_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ack_in_t_i_1__0_n_0\,
      Q => \^m_axis_dma_tready_int_regslice\,
      R => \^ap_rst_n_inv\
    );
\data_p1[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[0]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \data_p2_reg[15]_0\(0),
      O => \data_p1[0]_i_1_n_0\
    );
\data_p1[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[10]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \data_p2_reg[15]_0\(10),
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
      I3 => \data_p2_reg[15]_0\(11),
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
      I3 => \data_p2_reg[15]_0\(12),
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
      I3 => \data_p2_reg[15]_0\(13),
      O => \data_p1[13]_i_1_n_0\
    );
\data_p1[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[14]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \data_p2_reg[15]_0\(14),
      O => \data_p1[14]_i_1_n_0\
    );
\data_p1[15]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E4202020"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(0),
      I2 => m_axis_dma_TREADY,
      I3 => \^m_axis_dma_tready_int_regslice\,
      I4 => Q(0),
      O => load_p1
    );
\data_p1[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[15]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \data_p2_reg[15]_0\(15),
      O => \data_p1[15]_i_2_n_0\
    );
\data_p1[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[1]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \data_p2_reg[15]_0\(1),
      O => \data_p1[1]_i_1_n_0\
    );
\data_p1[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[2]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \data_p2_reg[15]_0\(2),
      O => \data_p1[2]_i_1_n_0\
    );
\data_p1[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[3]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \data_p2_reg[15]_0\(3),
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
      I3 => \data_p2_reg[15]_0\(4),
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
      I3 => \data_p2_reg[15]_0\(5),
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
      I3 => \data_p2_reg[15]_0\(6),
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
      I3 => \data_p2_reg[15]_0\(7),
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
      I3 => \data_p2_reg[15]_0\(8),
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
      I3 => \data_p2_reg[15]_0\(9),
      O => \data_p1[9]_i_1_n_0\
    );
\data_p1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[0]_i_1_n_0\,
      Q => m_axis_dma_TDATA(0),
      R => '0'
    );
\data_p1_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[10]_i_1_n_0\,
      Q => m_axis_dma_TDATA(10),
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
      Q => m_axis_dma_TDATA(11),
      R => '0'
    );
\data_p1_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[12]_i_1_n_0\,
      Q => m_axis_dma_TDATA(12),
      R => '0'
    );
\data_p1_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[13]_i_1_n_0\,
      Q => m_axis_dma_TDATA(13),
      R => '0'
    );
\data_p1_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[14]_i_1_n_0\,
      Q => m_axis_dma_TDATA(14),
      R => '0'
    );
\data_p1_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[15]_i_2_n_0\,
      Q => m_axis_dma_TDATA(15),
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
      Q => m_axis_dma_TDATA(1),
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
      Q => m_axis_dma_TDATA(2),
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
      Q => m_axis_dma_TDATA(3),
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
      Q => m_axis_dma_TDATA(4),
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
      Q => m_axis_dma_TDATA(5),
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
      Q => m_axis_dma_TDATA(6),
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
      Q => m_axis_dma_TDATA(7),
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
      Q => m_axis_dma_TDATA(8),
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
      Q => m_axis_dma_TDATA(9),
      R => '0'
    );
\data_p2[15]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F777000000000000"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => m_axis_dma_TREADY,
      I4 => \^m_axis_dma_tready_int_regslice\,
      I5 => Q(0),
      O => \^e\(0)
    );
\data_p2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \data_p2_reg[15]_0\(0),
      Q => \data_p2_reg_n_0_[0]\,
      R => '0'
    );
\data_p2_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \data_p2_reg[15]_0\(10),
      Q => \data_p2_reg_n_0_[10]\,
      R => '0'
    );
\data_p2_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \data_p2_reg[15]_0\(11),
      Q => \data_p2_reg_n_0_[11]\,
      R => '0'
    );
\data_p2_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \data_p2_reg[15]_0\(12),
      Q => \data_p2_reg_n_0_[12]\,
      R => '0'
    );
\data_p2_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \data_p2_reg[15]_0\(13),
      Q => \data_p2_reg_n_0_[13]\,
      R => '0'
    );
\data_p2_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \data_p2_reg[15]_0\(14),
      Q => \data_p2_reg_n_0_[14]\,
      R => '0'
    );
\data_p2_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \data_p2_reg[15]_0\(15),
      Q => \data_p2_reg_n_0_[15]\,
      R => '0'
    );
\data_p2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \data_p2_reg[15]_0\(1),
      Q => \data_p2_reg_n_0_[1]\,
      R => '0'
    );
\data_p2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \data_p2_reg[15]_0\(2),
      Q => \data_p2_reg_n_0_[2]\,
      R => '0'
    );
\data_p2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \data_p2_reg[15]_0\(3),
      Q => \data_p2_reg_n_0_[3]\,
      R => '0'
    );
\data_p2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \data_p2_reg[15]_0\(4),
      Q => \data_p2_reg_n_0_[4]\,
      R => '0'
    );
\data_p2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \data_p2_reg[15]_0\(5),
      Q => \data_p2_reg_n_0_[5]\,
      R => '0'
    );
\data_p2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \data_p2_reg[15]_0\(6),
      Q => \data_p2_reg_n_0_[6]\,
      R => '0'
    );
\data_p2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \data_p2_reg[15]_0\(7),
      Q => \data_p2_reg_n_0_[7]\,
      R => '0'
    );
\data_p2_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \data_p2_reg[15]_0\(8),
      Q => \data_p2_reg_n_0_[8]\,
      R => '0'
    );
\data_p2_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \data_p2_reg[15]_0\(9),
      Q => \data_p2_reg_n_0_[9]\,
      R => '0'
    );
\state[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5FFF0088"
    )
        port map (
      I0 => state(1),
      I1 => \^m_axis_dma_tready_int_regslice\,
      I2 => m_axis_dma_TREADY,
      I3 => \^ap_block_pp0_stage0_11001\,
      I4 => \^m_axis_dma_tvalid\,
      O => \state[0]_i_1__0_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFD5"
    )
        port map (
      I0 => \^m_axis_dma_tvalid\,
      I1 => state(1),
      I2 => \^ap_block_pp0_stage0_11001\,
      I3 => m_axis_dma_TREADY,
      O => \state[1]_i_1_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \state[0]_i_1__0_n_0\,
      Q => \^m_axis_dma_tvalid\,
      R => \^ap_rst_n_inv\
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
      S => \^ap_rst_n_inv\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_adc_packetizer_0_0_adc_packetizer_regslice_both__parameterized1\ is
  port (
    m_axis_dma_TSTRB : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    m_axis_dma_TREADY : in STD_LOGIC;
    ap_block_pp0_stage0_11001 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_adc_packetizer_0_0_adc_packetizer_regslice_both__parameterized1\ : entity is "adc_packetizer_regslice_both";
end \design_1_adc_packetizer_0_0_adc_packetizer_regslice_both__parameterized1\;

architecture STRUCTURE of \design_1_adc_packetizer_0_0_adc_packetizer_regslice_both__parameterized1\ is
  signal \ack_in_t_i_1__1_n_0\ : STD_LOGIC;
  signal ack_in_t_reg_n_0 : STD_LOGIC;
  signal \data_p1[3]_i_1_n_0\ : STD_LOGIC;
  signal data_p2 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \data_p2[3]_i_1_n_0\ : STD_LOGIC;
  signal \^m_axis_dma_tstrb\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \next__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1__1\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute SOFT_HLUTNM of \ack_in_t_i_1__1\ : label is "soft_lutpair0";
begin
  m_axis_dma_TSTRB(0) <= \^m_axis_dma_tstrb\(0);
\FSM_sequential_state[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBF3"
    )
        port map (
      I0 => ap_block_pp0_stage0_11001,
      I1 => \state__0\(1),
      I2 => m_axis_dma_TREADY,
      I3 => \state__0\(0),
      O => \next__0\(0)
    );
\FSM_sequential_state[1]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44CCFCCC"
    )
        port map (
      I0 => m_axis_dma_TREADY,
      I1 => \state__0\(1),
      I2 => ack_in_t_reg_n_0,
      I3 => \state__0\(0),
      I4 => ap_block_pp0_stage0_11001,
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
      INIT => X"A8FFEEAA"
    )
        port map (
      I0 => ack_in_t_reg_n_0,
      I1 => m_axis_dma_TREADY,
      I2 => ap_block_pp0_stage0_11001,
      I3 => \state__0\(1),
      I4 => \state__0\(0),
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
\data_p1[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBBFFFF0C880F00"
    )
        port map (
      I0 => data_p2(3),
      I1 => m_axis_dma_TREADY,
      I2 => ap_block_pp0_stage0_11001,
      I3 => \state__0\(0),
      I4 => \state__0\(1),
      I5 => \^m_axis_dma_tstrb\(0),
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
      Q => \^m_axis_dma_tstrb\(0),
      R => '0'
    );
\data_p2[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => ap_block_pp0_stage0_11001,
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
entity \design_1_adc_packetizer_0_0_adc_packetizer_regslice_both__parameterized2\ is
  port (
    m_axis_dma_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    m_axis_dma_TREADY : in STD_LOGIC;
    ap_block_pp0_stage0_11001 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_adc_packetizer_0_0_adc_packetizer_regslice_both__parameterized2\ : entity is "adc_packetizer_regslice_both";
end \design_1_adc_packetizer_0_0_adc_packetizer_regslice_both__parameterized2\;

architecture STRUCTURE of \design_1_adc_packetizer_0_0_adc_packetizer_regslice_both__parameterized2\ is
  signal \ack_in_t_i_1__2_n_0\ : STD_LOGIC;
  signal ack_in_t_reg_n_0 : STD_LOGIC;
  signal \data_p1[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \data_p1[0]_i_4_n_0\ : STD_LOGIC;
  signal \data_p1[0]_i_5_n_0\ : STD_LOGIC;
  signal \data_p1[0]_i_6_n_0\ : STD_LOGIC;
  signal data_p2 : STD_LOGIC;
  signal \data_p2[0]_i_1_n_0\ : STD_LOGIC;
  signal load_p1 : STD_LOGIC;
  signal \^m_axis_dma_tlast\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m_axis_dma_TLAST_int_regslice : STD_LOGIC;
  signal \next__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1__0\ : label is "soft_lutpair1";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute SOFT_HLUTNM of \ack_in_t_i_1__2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \data_p1[0]_i_3\ : label is "soft_lutpair2";
begin
  m_axis_dma_TLAST(0) <= \^m_axis_dma_tlast\(0);
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBF3"
    )
        port map (
      I0 => ap_block_pp0_stage0_11001,
      I1 => \state__0\(1),
      I2 => m_axis_dma_TREADY,
      I3 => \state__0\(0),
      O => \next__0\(0)
    );
\FSM_sequential_state[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44CCFCCC"
    )
        port map (
      I0 => m_axis_dma_TREADY,
      I1 => \state__0\(1),
      I2 => ack_in_t_reg_n_0,
      I3 => \state__0\(0),
      I4 => ap_block_pp0_stage0_11001,
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
\ack_in_t_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8FFEEAA"
    )
        port map (
      I0 => ack_in_t_reg_n_0,
      I1 => m_axis_dma_TREADY,
      I2 => ap_block_pp0_stage0_11001,
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      O => \ack_in_t_i_1__2_n_0\
    );
ack_in_t_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ack_in_t_i_1__2_n_0\,
      Q => ack_in_t_reg_n_0,
      R => ap_rst_n_inv
    );
\data_p1[0]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FFFFFB080000"
    )
        port map (
      I0 => data_p2,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => m_axis_dma_TLAST_int_regslice,
      I4 => load_p1,
      I5 => \^m_axis_dma_tlast\(0),
      O => \data_p1[0]_i_1__1_n_0\
    );
\data_p1[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \data_p1[0]_i_4_n_0\,
      I1 => \data_p1[0]_i_5_n_0\,
      I2 => \data_p1[0]_i_6_n_0\,
      O => m_axis_dma_TLAST_int_regslice
    );
\data_p1[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A30"
    )
        port map (
      I0 => m_axis_dma_TREADY,
      I1 => ap_block_pp0_stage0_11001,
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      O => load_p1
    );
\data_p1[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D500000000000000"
    )
        port map (
      I0 => Q(5),
      I1 => Q(3),
      I2 => Q(4),
      I3 => Q(0),
      I4 => Q(1),
      I5 => Q(2),
      O => \data_p1[0]_i_4_n_0\
    );
\data_p1[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D5D500D500D500D5"
    )
        port map (
      I0 => Q(11),
      I1 => Q(9),
      I2 => Q(10),
      I3 => Q(8),
      I4 => Q(6),
      I5 => Q(7),
      O => \data_p1[0]_i_5_n_0\
    );
\data_p1[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => Q(4),
      I1 => Q(5),
      I2 => Q(7),
      I3 => Q(8),
      I4 => Q(11),
      I5 => Q(10),
      O => \data_p1[0]_i_6_n_0\
    );
\data_p1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \data_p1[0]_i_1__1_n_0\,
      Q => \^m_axis_dma_tlast\(0),
      R => '0'
    );
\data_p2[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => m_axis_dma_TLAST_int_regslice,
      I1 => ack_in_t_reg_n_0,
      I2 => ap_block_pp0_stage0_11001,
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
entity design_1_adc_packetizer_0_0_adc_packetizer is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    s_axis_adc_TDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_adc_TVALID : in STD_LOGIC;
    s_axis_adc_TREADY : out STD_LOGIC;
    m_axis_dma_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_dma_TVALID : out STD_LOGIC;
    m_axis_dma_TREADY : in STD_LOGIC;
    m_axis_dma_TKEEP : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_dma_TSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_dma_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_adc_packetizer_0_0_adc_packetizer : entity is "adc_packetizer";
  attribute ap_ST_fsm_pp0_stage0 : string;
  attribute ap_ST_fsm_pp0_stage0 of design_1_adc_packetizer_0_0_adc_packetizer : entity is "1'b1";
  attribute hls_module : string;
  attribute hls_module of design_1_adc_packetizer_0_0_adc_packetizer : entity is "yes";
end design_1_adc_packetizer_0_0_adc_packetizer;

architecture STRUCTURE of design_1_adc_packetizer_0_0_adc_packetizer is
  signal \<const0>\ : STD_LOGIC;
  signal add_ln41_fu_92_p2 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ap_block_pp0_stage0_11001 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1 : STD_LOGIC;
  signal ap_rst_n_inv : STD_LOGIC;
  signal load_p2 : STD_LOGIC;
  signal \^m_axis_dma_tdata\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal m_axis_dma_TREADY_int_regslice : STD_LOGIC;
  signal \^m_axis_dma_tstrb\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal regslice_both_s_axis_adc_U_n_1 : STD_LOGIC;
  signal regslice_both_s_axis_adc_U_n_10 : STD_LOGIC;
  signal regslice_both_s_axis_adc_U_n_11 : STD_LOGIC;
  signal regslice_both_s_axis_adc_U_n_12 : STD_LOGIC;
  signal regslice_both_s_axis_adc_U_n_13 : STD_LOGIC;
  signal regslice_both_s_axis_adc_U_n_14 : STD_LOGIC;
  signal regslice_both_s_axis_adc_U_n_15 : STD_LOGIC;
  signal regslice_both_s_axis_adc_U_n_16 : STD_LOGIC;
  signal regslice_both_s_axis_adc_U_n_17 : STD_LOGIC;
  signal regslice_both_s_axis_adc_U_n_18 : STD_LOGIC;
  signal regslice_both_s_axis_adc_U_n_3 : STD_LOGIC;
  signal regslice_both_s_axis_adc_U_n_4 : STD_LOGIC;
  signal regslice_both_s_axis_adc_U_n_5 : STD_LOGIC;
  signal regslice_both_s_axis_adc_U_n_6 : STD_LOGIC;
  signal regslice_both_s_axis_adc_U_n_7 : STD_LOGIC;
  signal regslice_both_s_axis_adc_U_n_8 : STD_LOGIC;
  signal regslice_both_s_axis_adc_U_n_9 : STD_LOGIC;
  signal s_axis_adc_TVALID_int_regslice : STD_LOGIC;
  signal sample_count_reg : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \sample_count_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \sample_count_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \sample_count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \sample_count_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \sample_count_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \sample_count_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \sample_count_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \sample_count_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \sample_count_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \sample_count_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_sample_count_reg[11]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \NLW_sample_count_reg[11]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \sample_count_reg[11]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \sample_count_reg[8]_i_1\ : label is 35;
begin
  m_axis_dma_TDATA(31) <= \<const0>\;
  m_axis_dma_TDATA(30) <= \<const0>\;
  m_axis_dma_TDATA(29) <= \<const0>\;
  m_axis_dma_TDATA(28) <= \<const0>\;
  m_axis_dma_TDATA(27) <= \<const0>\;
  m_axis_dma_TDATA(26) <= \<const0>\;
  m_axis_dma_TDATA(25) <= \<const0>\;
  m_axis_dma_TDATA(24) <= \<const0>\;
  m_axis_dma_TDATA(23) <= \<const0>\;
  m_axis_dma_TDATA(22) <= \<const0>\;
  m_axis_dma_TDATA(21) <= \<const0>\;
  m_axis_dma_TDATA(20) <= \<const0>\;
  m_axis_dma_TDATA(19) <= \<const0>\;
  m_axis_dma_TDATA(18) <= \<const0>\;
  m_axis_dma_TDATA(17) <= \<const0>\;
  m_axis_dma_TDATA(16) <= \<const0>\;
  m_axis_dma_TDATA(15 downto 0) <= \^m_axis_dma_tdata\(15 downto 0);
  m_axis_dma_TKEEP(3) <= \^m_axis_dma_tstrb\(2);
  m_axis_dma_TKEEP(2) <= \^m_axis_dma_tstrb\(2);
  m_axis_dma_TKEEP(1) <= \^m_axis_dma_tstrb\(2);
  m_axis_dma_TKEEP(0) <= \^m_axis_dma_tstrb\(2);
  m_axis_dma_TSTRB(3) <= \^m_axis_dma_tstrb\(2);
  m_axis_dma_TSTRB(2) <= \^m_axis_dma_tstrb\(2);
  m_axis_dma_TSTRB(1) <= \^m_axis_dma_tstrb\(2);
  m_axis_dma_TSTRB(0) <= \^m_axis_dma_tstrb\(2);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
ap_enable_reg_pp0_iter1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => regslice_both_s_axis_adc_U_n_1,
      Q => ap_enable_reg_pp0_iter1,
      R => ap_rst_n_inv
    );
regslice_both_m_axis_dma_V_data_V_U: entity work.\design_1_adc_packetizer_0_0_adc_packetizer_regslice_both__parameterized0\
     port map (
      E(0) => load_p2,
      Q(0) => s_axis_adc_TVALID_int_regslice,
      ap_block_pp0_stage0_11001 => ap_block_pp0_stage0_11001,
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter1 => ap_enable_reg_pp0_iter1,
      ap_rst_n => ap_rst_n,
      ap_rst_n_inv => ap_rst_n_inv,
      \data_p2_reg[15]_0\(15) => regslice_both_s_axis_adc_U_n_3,
      \data_p2_reg[15]_0\(14) => regslice_both_s_axis_adc_U_n_4,
      \data_p2_reg[15]_0\(13) => regslice_both_s_axis_adc_U_n_5,
      \data_p2_reg[15]_0\(12) => regslice_both_s_axis_adc_U_n_6,
      \data_p2_reg[15]_0\(11) => regslice_both_s_axis_adc_U_n_7,
      \data_p2_reg[15]_0\(10) => regslice_both_s_axis_adc_U_n_8,
      \data_p2_reg[15]_0\(9) => regslice_both_s_axis_adc_U_n_9,
      \data_p2_reg[15]_0\(8) => regslice_both_s_axis_adc_U_n_10,
      \data_p2_reg[15]_0\(7) => regslice_both_s_axis_adc_U_n_11,
      \data_p2_reg[15]_0\(6) => regslice_both_s_axis_adc_U_n_12,
      \data_p2_reg[15]_0\(5) => regslice_both_s_axis_adc_U_n_13,
      \data_p2_reg[15]_0\(4) => regslice_both_s_axis_adc_U_n_14,
      \data_p2_reg[15]_0\(3) => regslice_both_s_axis_adc_U_n_15,
      \data_p2_reg[15]_0\(2) => regslice_both_s_axis_adc_U_n_16,
      \data_p2_reg[15]_0\(1) => regslice_both_s_axis_adc_U_n_17,
      \data_p2_reg[15]_0\(0) => regslice_both_s_axis_adc_U_n_18,
      m_axis_dma_TDATA(15 downto 0) => \^m_axis_dma_tdata\(15 downto 0),
      m_axis_dma_TREADY => m_axis_dma_TREADY,
      m_axis_dma_TREADY_int_regslice => m_axis_dma_TREADY_int_regslice,
      m_axis_dma_TVALID => m_axis_dma_TVALID
    );
regslice_both_m_axis_dma_V_keep_V_U: entity work.\design_1_adc_packetizer_0_0_adc_packetizer_regslice_both__parameterized1\
     port map (
      ap_block_pp0_stage0_11001 => ap_block_pp0_stage0_11001,
      ap_clk => ap_clk,
      ap_rst_n_inv => ap_rst_n_inv,
      m_axis_dma_TREADY => m_axis_dma_TREADY,
      m_axis_dma_TSTRB(0) => \^m_axis_dma_tstrb\(2)
    );
regslice_both_m_axis_dma_V_last_V_U: entity work.\design_1_adc_packetizer_0_0_adc_packetizer_regslice_both__parameterized2\
     port map (
      Q(11 downto 0) => sample_count_reg(11 downto 0),
      ap_block_pp0_stage0_11001 => ap_block_pp0_stage0_11001,
      ap_clk => ap_clk,
      ap_rst_n_inv => ap_rst_n_inv,
      m_axis_dma_TLAST(0) => m_axis_dma_TLAST(0),
      m_axis_dma_TREADY => m_axis_dma_TREADY
    );
regslice_both_s_axis_adc_U: entity work.design_1_adc_packetizer_0_0_adc_packetizer_regslice_both
     port map (
      Q(0) => s_axis_adc_TVALID_int_regslice,
      ack_in_t_reg_0 => s_axis_adc_TREADY,
      ap_block_pp0_stage0_11001 => ap_block_pp0_stage0_11001,
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter1 => ap_enable_reg_pp0_iter1,
      ap_rst_n_inv => ap_rst_n_inv,
      \data_p1_reg[15]_0\(15) => regslice_both_s_axis_adc_U_n_3,
      \data_p1_reg[15]_0\(14) => regslice_both_s_axis_adc_U_n_4,
      \data_p1_reg[15]_0\(13) => regslice_both_s_axis_adc_U_n_5,
      \data_p1_reg[15]_0\(12) => regslice_both_s_axis_adc_U_n_6,
      \data_p1_reg[15]_0\(11) => regslice_both_s_axis_adc_U_n_7,
      \data_p1_reg[15]_0\(10) => regslice_both_s_axis_adc_U_n_8,
      \data_p1_reg[15]_0\(9) => regslice_both_s_axis_adc_U_n_9,
      \data_p1_reg[15]_0\(8) => regslice_both_s_axis_adc_U_n_10,
      \data_p1_reg[15]_0\(7) => regslice_both_s_axis_adc_U_n_11,
      \data_p1_reg[15]_0\(6) => regslice_both_s_axis_adc_U_n_12,
      \data_p1_reg[15]_0\(5) => regslice_both_s_axis_adc_U_n_13,
      \data_p1_reg[15]_0\(4) => regslice_both_s_axis_adc_U_n_14,
      \data_p1_reg[15]_0\(3) => regslice_both_s_axis_adc_U_n_15,
      \data_p1_reg[15]_0\(2) => regslice_both_s_axis_adc_U_n_16,
      \data_p1_reg[15]_0\(1) => regslice_both_s_axis_adc_U_n_17,
      \data_p1_reg[15]_0\(0) => regslice_both_s_axis_adc_U_n_18,
      m_axis_dma_TREADY_int_regslice => m_axis_dma_TREADY_int_regslice,
      s_axis_adc_TDATA(15 downto 0) => s_axis_adc_TDATA(15 downto 0),
      s_axis_adc_TVALID => s_axis_adc_TVALID,
      \state_reg[0]_0\ => regslice_both_s_axis_adc_U_n_1
    );
\sample_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sample_count_reg(0),
      O => add_ln41_fu_92_p2(0)
    );
\sample_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => add_ln41_fu_92_p2(0),
      Q => sample_count_reg(0),
      R => '0'
    );
\sample_count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => add_ln41_fu_92_p2(10),
      Q => sample_count_reg(10),
      R => '0'
    );
\sample_count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => add_ln41_fu_92_p2(11),
      Q => sample_count_reg(11),
      R => '0'
    );
\sample_count_reg[11]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \sample_count_reg[8]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 2) => \NLW_sample_count_reg[11]_i_1_CO_UNCONNECTED\(7 downto 2),
      CO(1) => \sample_count_reg[11]_i_1_n_6\,
      CO(0) => \sample_count_reg[11]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 3) => \NLW_sample_count_reg[11]_i_1_O_UNCONNECTED\(7 downto 3),
      O(2 downto 0) => add_ln41_fu_92_p2(11 downto 9),
      S(7 downto 3) => B"00000",
      S(2 downto 0) => sample_count_reg(11 downto 9)
    );
\sample_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => add_ln41_fu_92_p2(1),
      Q => sample_count_reg(1),
      R => '0'
    );
\sample_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => add_ln41_fu_92_p2(2),
      Q => sample_count_reg(2),
      R => '0'
    );
\sample_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => add_ln41_fu_92_p2(3),
      Q => sample_count_reg(3),
      R => '0'
    );
\sample_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => add_ln41_fu_92_p2(4),
      Q => sample_count_reg(4),
      R => '0'
    );
\sample_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => add_ln41_fu_92_p2(5),
      Q => sample_count_reg(5),
      R => '0'
    );
\sample_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => add_ln41_fu_92_p2(6),
      Q => sample_count_reg(6),
      R => '0'
    );
\sample_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => add_ln41_fu_92_p2(7),
      Q => sample_count_reg(7),
      R => '0'
    );
\sample_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => add_ln41_fu_92_p2(8),
      Q => sample_count_reg(8),
      R => '0'
    );
\sample_count_reg[8]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => sample_count_reg(0),
      CI_TOP => '0',
      CO(7) => \sample_count_reg[8]_i_1_n_0\,
      CO(6) => \sample_count_reg[8]_i_1_n_1\,
      CO(5) => \sample_count_reg[8]_i_1_n_2\,
      CO(4) => \sample_count_reg[8]_i_1_n_3\,
      CO(3) => \sample_count_reg[8]_i_1_n_4\,
      CO(2) => \sample_count_reg[8]_i_1_n_5\,
      CO(1) => \sample_count_reg[8]_i_1_n_6\,
      CO(0) => \sample_count_reg[8]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => add_ln41_fu_92_p2(8 downto 1),
      S(7 downto 0) => sample_count_reg(8 downto 1)
    );
\sample_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => add_ln41_fu_92_p2(9),
      Q => sample_count_reg(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_adc_packetizer_0_0 is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    s_axis_adc_TDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_adc_TREADY : out STD_LOGIC;
    s_axis_adc_TVALID : in STD_LOGIC;
    m_axis_dma_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_dma_TKEEP : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_dma_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_dma_TREADY : in STD_LOGIC;
    m_axis_dma_TSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_dma_TVALID : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_adc_packetizer_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_adc_packetizer_0_0 : entity is "design_1_adc_packetizer_0_0,adc_packetizer,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_adc_packetizer_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_adc_packetizer_0_0 : entity is "HLS";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_adc_packetizer_0_0 : entity is "adc_packetizer,Vivado 2024.2";
  attribute hls_module : string;
  attribute hls_module of design_1_adc_packetizer_0_0 : entity is "yes";
end design_1_adc_packetizer_0_0;

architecture STRUCTURE of design_1_adc_packetizer_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^m_axis_dma_tdata\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_inst_m_axis_dma_TDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 16 );
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
  attribute X_INTERFACE_PARAMETER of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axis_adc:m_axis_dma, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_rst_n : signal is "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  attribute X_INTERFACE_MODE of ap_rst_n : signal is "slave";
  attribute X_INTERFACE_PARAMETER of ap_rst_n : signal is "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_dma_TREADY : signal is "xilinx.com:interface:axis:1.0 m_axis_dma TREADY";
  attribute X_INTERFACE_INFO of m_axis_dma_TVALID : signal is "xilinx.com:interface:axis:1.0 m_axis_dma TVALID";
  attribute X_INTERFACE_INFO of s_axis_adc_TREADY : signal is "xilinx.com:interface:axis:1.0 s_axis_adc TREADY";
  attribute X_INTERFACE_INFO of s_axis_adc_TVALID : signal is "xilinx.com:interface:axis:1.0 s_axis_adc TVALID";
  attribute X_INTERFACE_INFO of m_axis_dma_TDATA : signal is "xilinx.com:interface:axis:1.0 m_axis_dma TDATA";
  attribute X_INTERFACE_MODE of m_axis_dma_TDATA : signal is "master";
  attribute X_INTERFACE_PARAMETER of m_axis_dma_TDATA : signal is "XIL_INTERFACENAME m_axis_dma, TUSER_WIDTH 0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 99999001, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_dma_TKEEP : signal is "xilinx.com:interface:axis:1.0 m_axis_dma TKEEP";
  attribute X_INTERFACE_INFO of m_axis_dma_TLAST : signal is "xilinx.com:interface:axis:1.0 m_axis_dma TLAST";
  attribute X_INTERFACE_INFO of m_axis_dma_TSTRB : signal is "xilinx.com:interface:axis:1.0 m_axis_dma TSTRB";
  attribute X_INTERFACE_INFO of s_axis_adc_TDATA : signal is "xilinx.com:interface:axis:1.0 s_axis_adc TDATA";
  attribute X_INTERFACE_MODE of s_axis_adc_TDATA : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s_axis_adc_TDATA : signal is "XIL_INTERFACENAME s_axis_adc, TUSER_WIDTH 0, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 99999001, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0";
begin
  m_axis_dma_TDATA(31) <= \<const0>\;
  m_axis_dma_TDATA(30) <= \<const0>\;
  m_axis_dma_TDATA(29) <= \<const0>\;
  m_axis_dma_TDATA(28) <= \<const0>\;
  m_axis_dma_TDATA(27) <= \<const0>\;
  m_axis_dma_TDATA(26) <= \<const0>\;
  m_axis_dma_TDATA(25) <= \<const0>\;
  m_axis_dma_TDATA(24) <= \<const0>\;
  m_axis_dma_TDATA(23) <= \<const0>\;
  m_axis_dma_TDATA(22) <= \<const0>\;
  m_axis_dma_TDATA(21) <= \<const0>\;
  m_axis_dma_TDATA(20) <= \<const0>\;
  m_axis_dma_TDATA(19) <= \<const0>\;
  m_axis_dma_TDATA(18) <= \<const0>\;
  m_axis_dma_TDATA(17) <= \<const0>\;
  m_axis_dma_TDATA(16) <= \<const0>\;
  m_axis_dma_TDATA(15 downto 0) <= \^m_axis_dma_tdata\(15 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_1_adc_packetizer_0_0_adc_packetizer
     port map (
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      m_axis_dma_TDATA(31 downto 16) => NLW_inst_m_axis_dma_TDATA_UNCONNECTED(31 downto 16),
      m_axis_dma_TDATA(15 downto 0) => \^m_axis_dma_tdata\(15 downto 0),
      m_axis_dma_TKEEP(3 downto 0) => m_axis_dma_TKEEP(3 downto 0),
      m_axis_dma_TLAST(0) => m_axis_dma_TLAST(0),
      m_axis_dma_TREADY => m_axis_dma_TREADY,
      m_axis_dma_TSTRB(3 downto 0) => m_axis_dma_TSTRB(3 downto 0),
      m_axis_dma_TVALID => m_axis_dma_TVALID,
      s_axis_adc_TDATA(15 downto 0) => s_axis_adc_TDATA(15 downto 0),
      s_axis_adc_TREADY => s_axis_adc_TREADY,
      s_axis_adc_TVALID => s_axis_adc_TVALID
    );
end STRUCTURE;
