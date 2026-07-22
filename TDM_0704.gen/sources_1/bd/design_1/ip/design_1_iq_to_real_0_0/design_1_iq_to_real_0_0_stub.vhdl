-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Fri Jul 17 20:10:53 2026
-- Host        : JohnsonKu running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/TDM_0704/TDM_0704/TDM_0704.gen/sources_1/bd/design_1/ip/design_1_iq_to_real_0_0/design_1_iq_to_real_0_0_stub.vhdl
-- Design      : design_1_iq_to_real_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu48dr-fsvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_iq_to_real_0_0 is
  Port ( 
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    s_axis_iq_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_iq_TKEEP : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_iq_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_iq_TREADY : out STD_LOGIC;
    s_axis_iq_TSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_iq_TVALID : in STD_LOGIC;
    m_axis_real_TDATA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_real_TREADY : in STD_LOGIC;
    m_axis_real_TVALID : out STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_iq_to_real_0_0 : entity is "design_1_iq_to_real_0_0,iq_to_real,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1_iq_to_real_0_0 : entity is "design_1_iq_to_real_0_0,iq_to_real,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=iq_to_real,x_ipVersion=1.0,x_ipCoreRevision=2114700999,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_iq_to_real_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_iq_to_real_0_0 : entity is "HLS";
  attribute hls_module : string;
  attribute hls_module of design_1_iq_to_real_0_0 : entity is "yes";
end design_1_iq_to_real_0_0;

architecture stub of design_1_iq_to_real_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "ap_clk,ap_rst_n,s_axis_iq_TDATA[31:0],s_axis_iq_TKEEP[3:0],s_axis_iq_TLAST[0:0],s_axis_iq_TREADY,s_axis_iq_TSTRB[3:0],s_axis_iq_TVALID,m_axis_real_TDATA[15:0],m_axis_real_TREADY,m_axis_real_TVALID";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ap_clk : signal is "xilinx.com:signal:clock:1.0 ap_clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of ap_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axis_iq:m_axis_real, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_rst_n : signal is "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  attribute X_INTERFACE_MODE of ap_rst_n : signal is "slave";
  attribute X_INTERFACE_PARAMETER of ap_rst_n : signal is "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_iq_TDATA : signal is "xilinx.com:interface:axis:1.0 s_axis_iq TDATA";
  attribute X_INTERFACE_MODE of s_axis_iq_TDATA : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s_axis_iq_TDATA : signal is "XIL_INTERFACENAME s_axis_iq, TUSER_WIDTH 0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 99999001, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_iq_TKEEP : signal is "xilinx.com:interface:axis:1.0 s_axis_iq TKEEP";
  attribute X_INTERFACE_INFO of s_axis_iq_TLAST : signal is "xilinx.com:interface:axis:1.0 s_axis_iq TLAST";
  attribute X_INTERFACE_INFO of s_axis_iq_TREADY : signal is "xilinx.com:interface:axis:1.0 s_axis_iq TREADY";
  attribute X_INTERFACE_INFO of s_axis_iq_TSTRB : signal is "xilinx.com:interface:axis:1.0 s_axis_iq TSTRB";
  attribute X_INTERFACE_INFO of s_axis_iq_TVALID : signal is "xilinx.com:interface:axis:1.0 s_axis_iq TVALID";
  attribute X_INTERFACE_INFO of m_axis_real_TDATA : signal is "xilinx.com:interface:axis:1.0 m_axis_real TDATA";
  attribute X_INTERFACE_MODE of m_axis_real_TDATA : signal is "master";
  attribute X_INTERFACE_PARAMETER of m_axis_real_TDATA : signal is "XIL_INTERFACENAME m_axis_real, TUSER_WIDTH 0, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 99999001, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_real_TREADY : signal is "xilinx.com:interface:axis:1.0 m_axis_real TREADY";
  attribute X_INTERFACE_INFO of m_axis_real_TVALID : signal is "xilinx.com:interface:axis:1.0 m_axis_real TVALID";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "iq_to_real,Vivado 2024.2";
begin
end;
