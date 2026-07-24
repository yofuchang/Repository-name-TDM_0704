-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Wed Jul 22 14:55:24 2026
-- Host        : JohnsonKu running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/TDM_0704/TDM_0704/TDM_0704.gen/sources_1/bd/design_1/ip/design_1_axis_capture_gate_0_0/design_1_axis_capture_gate_0_0_sim_netlist.vhdl
-- Design      : design_1_axis_capture_gate_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu48dr-fsvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axis_capture_gate_0_0_axis_capture_gate is
  port (
    m_axis_tvalid : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    capture_arm : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    dbg_chirp_start_ap_vld : in STD_LOGIC;
    dbg_tx_sel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dbg_chirp_start : in STD_LOGIC;
    dbg_tx_sel_ap_vld : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axis_capture_gate_0_0_axis_capture_gate : entity is "axis_capture_gate";
end design_1_axis_capture_gate_0_0_axis_capture_gate;

architecture STRUCTURE of design_1_axis_capture_gate_0_0_axis_capture_gate is
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m_axis_tlast_INST_0_i_1_n_0 : STD_LOGIC;
  signal m_axis_tlast_INST_0_i_2_n_0 : STD_LOGIC;
  signal sample_count : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \sample_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \sample_count[10]_i_1_n_0\ : STD_LOGIC;
  signal \sample_count[10]_i_2_n_0\ : STD_LOGIC;
  signal \sample_count[11]_i_2_n_0\ : STD_LOGIC;
  signal \sample_count[11]_i_3_n_0\ : STD_LOGIC;
  signal \sample_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \sample_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \sample_count[3]_i_1_n_0\ : STD_LOGIC;
  signal \sample_count[4]_i_1_n_0\ : STD_LOGIC;
  signal \sample_count[5]_i_1_n_0\ : STD_LOGIC;
  signal \sample_count[5]_i_2_n_0\ : STD_LOGIC;
  signal \sample_count[6]_i_1_n_0\ : STD_LOGIC;
  signal \sample_count[7]_i_1_n_0\ : STD_LOGIC;
  signal \sample_count[8]_i_1_n_0\ : STD_LOGIC;
  signal \sample_count[9]_i_1_n_0\ : STD_LOGIC;
  signal sample_count_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_4\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_5\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_1\ : label is "soft_lutpair3";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "ST_WAIT_TRIGGER:0010,ST_DELAY:010,ST_CAPTURE:0100,ST_DONE:1000,ST_DISARMED:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "ST_WAIT_TRIGGER:0010,ST_DELAY:010,ST_CAPTURE:0100,ST_DONE:1000,ST_DISARMED:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "ST_WAIT_TRIGGER:0010,ST_DELAY:010,ST_CAPTURE:0100,ST_DONE:1000,ST_DISARMED:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "ST_WAIT_TRIGGER:0010,ST_DELAY:010,ST_CAPTURE:0100,ST_DONE:1000,ST_DISARMED:0001";
  attribute SOFT_HLUTNM of m_axis_tlast_INST_0 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of m_axis_tvalid_INST_0 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \sample_count[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \sample_count[10]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \sample_count[11]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \sample_count[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \sample_count[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \sample_count[5]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \sample_count[6]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \sample_count[7]_i_1\ : label is "soft_lutpair1";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF54"
    )
        port map (
      I0 => capture_arm,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBAFFBAFFFFFFBA"
    )
        port map (
      I0 => \FSM_onehot_state[2]_i_4_n_0\,
      I1 => m_axis_tlast_INST_0_i_1_n_0,
      I2 => \FSM_onehot_state[2]_i_5_n_0\,
      I3 => \FSM_onehot_state[2]_i_6_n_0\,
      I4 => \^q\(1),
      I5 => capture_arm,
      O => \FSM_onehot_state[2]_i_2_n_0\
    );
\FSM_onehot_state[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => capture_arm,
      O => \FSM_onehot_state[2]_i_3_n_0\
    );
\FSM_onehot_state[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BBB8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => capture_arm,
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => \^q\(0),
      O => \FSM_onehot_state[2]_i_4_n_0\
    );
\FSM_onehot_state[2]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => sample_count(11),
      I2 => m_axis_tready,
      I3 => \^q\(0),
      O => \FSM_onehot_state[2]_i_5_n_0\
    );
\FSM_onehot_state[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000200000000000"
    )
        port map (
      I0 => dbg_chirp_start_ap_vld,
      I1 => dbg_tx_sel(0),
      I2 => dbg_chirp_start,
      I3 => dbg_tx_sel_ap_vld,
      I4 => dbg_tx_sel(1),
      I5 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \FSM_onehot_state[2]_i_6_n_0\
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => capture_arm,
      I1 => \^q\(0),
      O => \FSM_onehot_state[3]_i_1_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => \FSM_onehot_state[2]_i_2_n_0\,
      D => \FSM_onehot_state[0]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      S => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \FSM_onehot_state[2]_i_2_n_0\,
      D => \FSM_onehot_state_reg_n_0_[0]\,
      Q => \FSM_onehot_state_reg_n_0_[1]\,
      R => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \FSM_onehot_state[2]_i_2_n_0\,
      D => \FSM_onehot_state[2]_i_3_n_0\,
      Q => \^q\(0),
      R => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \FSM_onehot_state[2]_i_2_n_0\,
      D => \FSM_onehot_state[3]_i_1_n_0\,
      Q => \^q\(1),
      R => \FSM_onehot_state[2]_i_1_n_0\
    );
m_axis_tlast_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^q\(0),
      I1 => sample_count(11),
      I2 => m_axis_tlast_INST_0_i_1_n_0,
      O => m_axis_tlast
    );
m_axis_tlast_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFFFFFFFFFF"
    )
        port map (
      I0 => sample_count(9),
      I1 => sample_count(7),
      I2 => m_axis_tlast_INST_0_i_2_n_0,
      I3 => sample_count(6),
      I4 => sample_count(8),
      I5 => sample_count(10),
      O => m_axis_tlast_INST_0_i_1_n_0
    );
m_axis_tlast_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => sample_count(4),
      I1 => sample_count(2),
      I2 => sample_count(0),
      I3 => sample_count(1),
      I4 => sample_count(3),
      I5 => sample_count(5),
      O => m_axis_tlast_INST_0_i_2_n_0
    );
m_axis_tvalid_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => \^q\(0),
      O => m_axis_tvalid
    );
s_axis_tready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => m_axis_tready,
      I1 => \^q\(0),
      O => s_axis_tready
    );
\sample_count[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^q\(0),
      I1 => capture_arm,
      I2 => sample_count(0),
      O => \sample_count[0]_i_1_n_0\
    );
\sample_count[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8040"
    )
        port map (
      I0 => \sample_count[10]_i_2_n_0\,
      I1 => \^q\(0),
      I2 => capture_arm,
      I3 => sample_count(10),
      O => \sample_count[10]_i_1_n_0\
    );
\sample_count[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FFFFFF"
    )
        port map (
      I0 => sample_count(8),
      I1 => sample_count(6),
      I2 => m_axis_tlast_INST_0_i_2_n_0,
      I3 => sample_count(7),
      I4 => sample_count(9),
      O => \sample_count[10]_i_2_n_0\
    );
\sample_count[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \sample_count[11]_i_3_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      O => sample_count_0
    );
\sample_count[11]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8040"
    )
        port map (
      I0 => m_axis_tlast_INST_0_i_1_n_0,
      I1 => \^q\(0),
      I2 => capture_arm,
      I3 => sample_count(11),
      O => \sample_count[11]_i_2_n_0\
    );
\sample_count[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF80F0"
    )
        port map (
      I0 => m_axis_tready,
      I1 => s_axis_tvalid,
      I2 => \^q\(0),
      I3 => capture_arm,
      I4 => \^q\(1),
      I5 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \sample_count[11]_i_3_n_0\
    );
\sample_count[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0880"
    )
        port map (
      I0 => capture_arm,
      I1 => \^q\(0),
      I2 => sample_count(0),
      I3 => sample_count(1),
      O => \sample_count[1]_i_1_n_0\
    );
\sample_count[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08888000"
    )
        port map (
      I0 => capture_arm,
      I1 => \^q\(0),
      I2 => sample_count(1),
      I3 => sample_count(0),
      I4 => sample_count(2),
      O => \sample_count[2]_i_1_n_0\
    );
\sample_count[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F00000080000000"
    )
        port map (
      I0 => sample_count(1),
      I1 => sample_count(0),
      I2 => sample_count(2),
      I3 => \^q\(0),
      I4 => capture_arm,
      I5 => sample_count(3),
      O => \sample_count[3]_i_1_n_0\
    );
\sample_count[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF000080000000"
    )
        port map (
      I0 => sample_count(2),
      I1 => sample_count(0),
      I2 => sample_count(1),
      I3 => sample_count(3),
      I4 => \FSM_onehot_state[3]_i_1_n_0\,
      I5 => sample_count(4),
      O => \sample_count[4]_i_1_n_0\
    );
\sample_count[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8040"
    )
        port map (
      I0 => \sample_count[5]_i_2_n_0\,
      I1 => \^q\(0),
      I2 => capture_arm,
      I3 => sample_count(5),
      O => \sample_count[5]_i_1_n_0\
    );
\sample_count[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => sample_count(3),
      I1 => sample_count(1),
      I2 => sample_count(0),
      I3 => sample_count(2),
      I4 => sample_count(4),
      O => \sample_count[5]_i_2_n_0\
    );
\sample_count[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8040"
    )
        port map (
      I0 => m_axis_tlast_INST_0_i_2_n_0,
      I1 => \^q\(0),
      I2 => capture_arm,
      I3 => sample_count(6),
      O => \sample_count[6]_i_1_n_0\
    );
\sample_count[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B0004000"
    )
        port map (
      I0 => m_axis_tlast_INST_0_i_2_n_0,
      I1 => sample_count(6),
      I2 => \^q\(0),
      I3 => capture_arm,
      I4 => sample_count(7),
      O => \sample_count[7]_i_1_n_0\
    );
\sample_count[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DF00000020000000"
    )
        port map (
      I0 => sample_count(6),
      I1 => m_axis_tlast_INST_0_i_2_n_0,
      I2 => sample_count(7),
      I3 => \^q\(0),
      I4 => capture_arm,
      I5 => sample_count(8),
      O => \sample_count[8]_i_1_n_0\
    );
\sample_count[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFF000020000000"
    )
        port map (
      I0 => sample_count(7),
      I1 => m_axis_tlast_INST_0_i_2_n_0,
      I2 => sample_count(6),
      I3 => sample_count(8),
      I4 => \FSM_onehot_state[3]_i_1_n_0\,
      I5 => sample_count(9),
      O => \sample_count[9]_i_1_n_0\
    );
\sample_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sample_count_0,
      D => \sample_count[0]_i_1_n_0\,
      Q => sample_count(0),
      R => \FSM_onehot_state[2]_i_1_n_0\
    );
\sample_count_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sample_count_0,
      D => \sample_count[10]_i_1_n_0\,
      Q => sample_count(10),
      R => \FSM_onehot_state[2]_i_1_n_0\
    );
\sample_count_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sample_count_0,
      D => \sample_count[11]_i_2_n_0\,
      Q => sample_count(11),
      R => \FSM_onehot_state[2]_i_1_n_0\
    );
\sample_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sample_count_0,
      D => \sample_count[1]_i_1_n_0\,
      Q => sample_count(1),
      R => \FSM_onehot_state[2]_i_1_n_0\
    );
\sample_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sample_count_0,
      D => \sample_count[2]_i_1_n_0\,
      Q => sample_count(2),
      R => \FSM_onehot_state[2]_i_1_n_0\
    );
\sample_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sample_count_0,
      D => \sample_count[3]_i_1_n_0\,
      Q => sample_count(3),
      R => \FSM_onehot_state[2]_i_1_n_0\
    );
\sample_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sample_count_0,
      D => \sample_count[4]_i_1_n_0\,
      Q => sample_count(4),
      R => \FSM_onehot_state[2]_i_1_n_0\
    );
\sample_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sample_count_0,
      D => \sample_count[5]_i_1_n_0\,
      Q => sample_count(5),
      R => \FSM_onehot_state[2]_i_1_n_0\
    );
\sample_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sample_count_0,
      D => \sample_count[6]_i_1_n_0\,
      Q => sample_count(6),
      R => \FSM_onehot_state[2]_i_1_n_0\
    );
\sample_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sample_count_0,
      D => \sample_count[7]_i_1_n_0\,
      Q => sample_count(7),
      R => \FSM_onehot_state[2]_i_1_n_0\
    );
\sample_count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sample_count_0,
      D => \sample_count[8]_i_1_n_0\,
      Q => sample_count(8),
      R => \FSM_onehot_state[2]_i_1_n_0\
    );
\sample_count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sample_count_0,
      D => \sample_count[9]_i_1_n_0\,
      Q => sample_count(9),
      R => \FSM_onehot_state[2]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axis_capture_gate_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    capture_arm : in STD_LOGIC;
    dbg_chirp_start : in STD_LOGIC;
    dbg_chirp_start_ap_vld : in STD_LOGIC;
    dbg_tx_sel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dbg_tx_sel_ap_vld : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    frame_start_event : out STD_LOGIC;
    capture_active : out STD_LOGIC;
    capture_done : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_axis_capture_gate_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_axis_capture_gate_0_0 : entity is "design_1_axis_capture_gate_0_0,axis_capture_gate,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_axis_capture_gate_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_axis_capture_gate_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_axis_capture_gate_0_0 : entity is "axis_capture_gate,Vivado 2024.2";
end design_1_axis_capture_gate_0_0;

architecture STRUCTURE of design_1_axis_capture_gate_0_0 is
  signal \^s_axis_tdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of aclk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute X_INTERFACE_MODE of aresetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis TLAST";
  attribute X_INTERFACE_INFO of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_axis TREADY";
  attribute X_INTERFACE_INFO of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute X_INTERFACE_INFO of s_axis_tlast : signal is "xilinx.com:interface:axis:1.0 s_axis TLAST";
  attribute X_INTERFACE_INFO of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 s_axis TREADY";
  attribute X_INTERFACE_INFO of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute X_INTERFACE_INFO of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
  attribute X_INTERFACE_MODE of m_axis_tdata : signal is "master";
  attribute X_INTERFACE_PARAMETER of m_axis_tdata : signal is "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 99999001, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
  attribute X_INTERFACE_MODE of s_axis_tdata : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s_axis_tdata : signal is "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 99999001, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0";
begin
  \^s_axis_tdata\(31 downto 0) <= s_axis_tdata(31 downto 0);
  m_axis_tdata(31 downto 0) <= \^s_axis_tdata\(31 downto 0);
frame_start_event_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => dbg_chirp_start,
      I1 => dbg_tx_sel_ap_vld,
      I2 => dbg_chirp_start_ap_vld,
      I3 => dbg_tx_sel(1),
      I4 => dbg_tx_sel(0),
      O => frame_start_event
    );
inst: entity work.design_1_axis_capture_gate_0_0_axis_capture_gate
     port map (
      Q(1) => capture_done,
      Q(0) => capture_active,
      aclk => aclk,
      aresetn => aresetn,
      capture_arm => capture_arm,
      dbg_chirp_start => dbg_chirp_start,
      dbg_chirp_start_ap_vld => dbg_chirp_start_ap_vld,
      dbg_tx_sel(1 downto 0) => dbg_tx_sel(1 downto 0),
      dbg_tx_sel_ap_vld => dbg_tx_sel_ap_vld,
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
      s_axis_tready => s_axis_tready,
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
