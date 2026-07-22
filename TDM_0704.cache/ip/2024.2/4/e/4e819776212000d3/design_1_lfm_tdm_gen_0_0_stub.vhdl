-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Tue Jul 21 20:47:48 2026
-- Host        : JohnsonKu running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_lfm_tdm_gen_0_0_stub.vhdl
-- Design      : design_1_lfm_tdm_gen_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu48dr-fsvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
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

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_lfm_tdm_gen_0_0,lfm_tdm_gen,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_lfm_tdm_gen_0_0,lfm_tdm_gen,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=lfm_tdm_gen,x_ipVersion=1.0,x_ipCoreRevision=2114706876,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_S_AXI_CTRL_ADDR_WIDTH=4,C_S_AXI_CTRL_DATA_WIDTH=32}";
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
  attribute black_box_pad_pin of stub : architecture is "dbg_lfm_i_ap_vld,dbg_lfm_q_ap_vld,dbg_tx_sel_ap_vld,dbg_tx_active_ap_vld,dbg_chirp_count_ap_vld,dbg_sample_count_ap_vld,dbg_chirp_start_ap_vld,dbg_chirp_end_ap_vld,dbg_enable_ap_vld,dbg_state_ap_vld,s_axi_CTRL_ARADDR[3:0],s_axi_CTRL_ARREADY,s_axi_CTRL_ARVALID,s_axi_CTRL_AWADDR[3:0],s_axi_CTRL_AWREADY,s_axi_CTRL_AWVALID,s_axi_CTRL_BREADY,s_axi_CTRL_BRESP[1:0],s_axi_CTRL_BVALID,s_axi_CTRL_RDATA[31:0],s_axi_CTRL_RREADY,s_axi_CTRL_RRESP[1:0],s_axi_CTRL_RVALID,s_axi_CTRL_WDATA[31:0],s_axi_CTRL_WREADY,s_axi_CTRL_WSTRB[3:0],s_axi_CTRL_WVALID,ap_clk,ap_rst_n,interrupt,m_axis_tx_TDATA[31:0],m_axis_tx_TKEEP[3:0],m_axis_tx_TLAST[0:0],m_axis_tx_TREADY,m_axis_tx_TSTRB[3:0],m_axis_tx_TVALID,dbg_lfm_i[15:0],dbg_lfm_q[15:0],dbg_tx_sel[1:0],dbg_tx_active[3:0],dbg_chirp_count[15:0],dbg_sample_count[15:0],dbg_chirp_start[0:0],dbg_chirp_end[0:0],dbg_enable[0:0],dbg_state[2:0]";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of s_axi_CTRL_ARADDR : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL ARADDR";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of s_axi_CTRL_ARADDR : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of s_axi_CTRL_ARADDR : signal is "XIL_INTERFACENAME s_axi_CTRL, ADDR_WIDTH 4, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 99999001, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_CTRL_ARREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL ARREADY";
  attribute X_INTERFACE_INFO of s_axi_CTRL_ARVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL ARVALID";
  attribute X_INTERFACE_INFO of s_axi_CTRL_AWADDR : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL AWADDR";
  attribute X_INTERFACE_INFO of s_axi_CTRL_AWREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL AWREADY";
  attribute X_INTERFACE_INFO of s_axi_CTRL_AWVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL AWVALID";
  attribute X_INTERFACE_INFO of s_axi_CTRL_BREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL BREADY";
  attribute X_INTERFACE_INFO of s_axi_CTRL_BRESP : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL BRESP";
  attribute X_INTERFACE_INFO of s_axi_CTRL_BVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL BVALID";
  attribute X_INTERFACE_INFO of s_axi_CTRL_RDATA : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL RDATA";
  attribute X_INTERFACE_INFO of s_axi_CTRL_RREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL RREADY";
  attribute X_INTERFACE_INFO of s_axi_CTRL_RRESP : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL RRESP";
  attribute X_INTERFACE_INFO of s_axi_CTRL_RVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL RVALID";
  attribute X_INTERFACE_INFO of s_axi_CTRL_WDATA : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL WDATA";
  attribute X_INTERFACE_INFO of s_axi_CTRL_WREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL WREADY";
  attribute X_INTERFACE_INFO of s_axi_CTRL_WSTRB : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL WSTRB";
  attribute X_INTERFACE_INFO of s_axi_CTRL_WVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL WVALID";
  attribute X_INTERFACE_INFO of ap_clk : signal is "xilinx.com:signal:clock:1.0 ap_clk CLK";
  attribute X_INTERFACE_MODE of ap_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_CTRL:m_axis_tx, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_rst_n : signal is "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  attribute X_INTERFACE_MODE of ap_rst_n : signal is "slave";
  attribute X_INTERFACE_PARAMETER of ap_rst_n : signal is "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of interrupt : signal is "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT";
  attribute X_INTERFACE_MODE of interrupt : signal is "master";
  attribute X_INTERFACE_PARAMETER of interrupt : signal is "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute X_INTERFACE_INFO of m_axis_tx_TDATA : signal is "xilinx.com:interface:axis:1.0 m_axis_tx TDATA";
  attribute X_INTERFACE_MODE of m_axis_tx_TDATA : signal is "master";
  attribute X_INTERFACE_PARAMETER of m_axis_tx_TDATA : signal is "XIL_INTERFACENAME m_axis_tx, TUSER_WIDTH 0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 99999001, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tx_TKEEP : signal is "xilinx.com:interface:axis:1.0 m_axis_tx TKEEP";
  attribute X_INTERFACE_INFO of m_axis_tx_TLAST : signal is "xilinx.com:interface:axis:1.0 m_axis_tx TLAST";
  attribute X_INTERFACE_INFO of m_axis_tx_TREADY : signal is "xilinx.com:interface:axis:1.0 m_axis_tx TREADY";
  attribute X_INTERFACE_INFO of m_axis_tx_TSTRB : signal is "xilinx.com:interface:axis:1.0 m_axis_tx TSTRB";
  attribute X_INTERFACE_INFO of m_axis_tx_TVALID : signal is "xilinx.com:interface:axis:1.0 m_axis_tx TVALID";
  attribute X_INTERFACE_INFO of dbg_lfm_i : signal is "xilinx.com:signal:data:1.0 dbg_lfm_i DATA";
  attribute X_INTERFACE_MODE of dbg_lfm_i : signal is "master";
  attribute X_INTERFACE_PARAMETER of dbg_lfm_i : signal is "XIL_INTERFACENAME dbg_lfm_i, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of dbg_lfm_q : signal is "xilinx.com:signal:data:1.0 dbg_lfm_q DATA";
  attribute X_INTERFACE_MODE of dbg_lfm_q : signal is "master";
  attribute X_INTERFACE_PARAMETER of dbg_lfm_q : signal is "XIL_INTERFACENAME dbg_lfm_q, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of dbg_tx_sel : signal is "xilinx.com:signal:data:1.0 dbg_tx_sel DATA";
  attribute X_INTERFACE_MODE of dbg_tx_sel : signal is "master";
  attribute X_INTERFACE_PARAMETER of dbg_tx_sel : signal is "XIL_INTERFACENAME dbg_tx_sel, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of dbg_tx_active : signal is "xilinx.com:signal:data:1.0 dbg_tx_active DATA";
  attribute X_INTERFACE_MODE of dbg_tx_active : signal is "master";
  attribute X_INTERFACE_PARAMETER of dbg_tx_active : signal is "XIL_INTERFACENAME dbg_tx_active, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of dbg_chirp_count : signal is "xilinx.com:signal:data:1.0 dbg_chirp_count DATA";
  attribute X_INTERFACE_MODE of dbg_chirp_count : signal is "master";
  attribute X_INTERFACE_PARAMETER of dbg_chirp_count : signal is "XIL_INTERFACENAME dbg_chirp_count, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of dbg_sample_count : signal is "xilinx.com:signal:data:1.0 dbg_sample_count DATA";
  attribute X_INTERFACE_MODE of dbg_sample_count : signal is "master";
  attribute X_INTERFACE_PARAMETER of dbg_sample_count : signal is "XIL_INTERFACENAME dbg_sample_count, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of dbg_chirp_start : signal is "xilinx.com:signal:data:1.0 dbg_chirp_start DATA";
  attribute X_INTERFACE_MODE of dbg_chirp_start : signal is "master";
  attribute X_INTERFACE_PARAMETER of dbg_chirp_start : signal is "XIL_INTERFACENAME dbg_chirp_start, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of dbg_chirp_end : signal is "xilinx.com:signal:data:1.0 dbg_chirp_end DATA";
  attribute X_INTERFACE_MODE of dbg_chirp_end : signal is "master";
  attribute X_INTERFACE_PARAMETER of dbg_chirp_end : signal is "XIL_INTERFACENAME dbg_chirp_end, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of dbg_enable : signal is "xilinx.com:signal:data:1.0 dbg_enable DATA";
  attribute X_INTERFACE_MODE of dbg_enable : signal is "master";
  attribute X_INTERFACE_PARAMETER of dbg_enable : signal is "XIL_INTERFACENAME dbg_enable, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of dbg_state : signal is "xilinx.com:signal:data:1.0 dbg_state DATA";
  attribute X_INTERFACE_MODE of dbg_state : signal is "master";
  attribute X_INTERFACE_PARAMETER of dbg_state : signal is "XIL_INTERFACENAME dbg_state, LAYERED_METADATA undef";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "lfm_tdm_gen,Vivado 2024.2";
begin
end;
