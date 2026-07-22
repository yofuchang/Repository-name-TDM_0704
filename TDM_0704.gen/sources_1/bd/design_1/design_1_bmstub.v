// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module design_1 (
  GPIO_0_tri_o,
  adc2_clk_0_clk_n,
  adc2_clk_0_clk_p,
  vin2_01_0_v_n,
  vin2_01_0_v_p,
  dac0_clk_0_clk_n,
  dac0_clk_0_clk_p,
  vout00_1_v_n,
  vout00_1_v_p
);

  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_0 TRI_O" *)
  (* X_INTERFACE_MODE = "master GPIO_0" *)
  output [1:0]GPIO_0_tri_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 adc2_clk_0 CLK_N" *)
  (* X_INTERFACE_MODE = "slave adc2_clk_0" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME adc2_clk_0, CAN_DEBUG false, FREQ_HZ 100000000" *)
  input adc2_clk_0_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 adc2_clk_0 CLK_P" *)
  input adc2_clk_0_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vin2_01_0 V_N" *)
  (* X_INTERFACE_MODE = "slave vin2_01_0" *)
  input vin2_01_0_v_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vin2_01_0 V_P" *)
  input vin2_01_0_v_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 dac0_clk_0 CLK_N" *)
  (* X_INTERFACE_MODE = "slave dac0_clk_0" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dac0_clk_0, CAN_DEBUG false, FREQ_HZ 100000000" *)
  input dac0_clk_0_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 dac0_clk_0 CLK_P" *)
  input dac0_clk_0_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vout00_1 V_N" *)
  (* X_INTERFACE_MODE = "master vout00_1" *)
  output vout00_1_v_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vout00_1 V_P" *)
  output vout00_1_v_p;

  // stub module has no contents

endmodule
