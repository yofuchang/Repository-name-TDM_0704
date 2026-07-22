-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Fri Jul 17 20:10:53 2026
-- Host        : JohnsonKu running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_adc_packetizer_0_0_stub.vhdl
-- Design      : design_1_adc_packetizer_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu48dr-fsvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
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

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_adc_packetizer_0_0,adc_packetizer,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_adc_packetizer_0_0,adc_packetizer,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=adc_packetizer,x_ipVersion=1.0,x_ipCoreRevision=2114701045,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "HLS";
  attribute hls_module : string;
  attribute hls_module of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "ap_clk,ap_rst_n,s_axis_adc_TDATA[15:0],s_axis_adc_TREADY,s_axis_adc_TVALID,m_axis_dma_TDATA[31:0],m_axis_dma_TKEEP[3:0],m_axis_dma_TLAST[0:0],m_axis_dma_TREADY,m_axis_dma_TSTRB[3:0],m_axis_dma_TVALID";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ap_clk : signal is "xilinx.com:signal:clock:1.0 ap_clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of ap_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axis_adc:m_axis_dma, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_rst_n : signal is "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  attribute X_INTERFACE_MODE of ap_rst_n : signal is "slave";
  attribute X_INTERFACE_PARAMETER of ap_rst_n : signal is "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_adc_TDATA : signal is "xilinx.com:interface:axis:1.0 s_axis_adc TDATA";
  attribute X_INTERFACE_MODE of s_axis_adc_TDATA : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s_axis_adc_TDATA : signal is "XIL_INTERFACENAME s_axis_adc, TUSER_WIDTH 0, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 99999001, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_adc_TREADY : signal is "xilinx.com:interface:axis:1.0 s_axis_adc TREADY";
  attribute X_INTERFACE_INFO of s_axis_adc_TVALID : signal is "xilinx.com:interface:axis:1.0 s_axis_adc TVALID";
  attribute X_INTERFACE_INFO of m_axis_dma_TDATA : signal is "xilinx.com:interface:axis:1.0 m_axis_dma TDATA";
  attribute X_INTERFACE_MODE of m_axis_dma_TDATA : signal is "master";
  attribute X_INTERFACE_PARAMETER of m_axis_dma_TDATA : signal is "XIL_INTERFACENAME m_axis_dma, TUSER_WIDTH 0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 99999001, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_dma_TKEEP : signal is "xilinx.com:interface:axis:1.0 m_axis_dma TKEEP";
  attribute X_INTERFACE_INFO of m_axis_dma_TLAST : signal is "xilinx.com:interface:axis:1.0 m_axis_dma TLAST";
  attribute X_INTERFACE_INFO of m_axis_dma_TREADY : signal is "xilinx.com:interface:axis:1.0 m_axis_dma TREADY";
  attribute X_INTERFACE_INFO of m_axis_dma_TSTRB : signal is "xilinx.com:interface:axis:1.0 m_axis_dma TSTRB";
  attribute X_INTERFACE_INFO of m_axis_dma_TVALID : signal is "xilinx.com:interface:axis:1.0 m_axis_dma TVALID";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "adc_packetizer,Vivado 2024.2";
begin
end;
