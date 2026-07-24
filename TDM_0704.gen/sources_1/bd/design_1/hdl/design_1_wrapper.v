//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
//Date        : Wed Jul 22 14:49:05 2026
//Host        : JohnsonKu running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (GPIO_0_tri_o,
    adc2_clk_0_clk_n,
    adc2_clk_0_clk_p,
    dac0_clk_0_clk_n,
    dac0_clk_0_clk_p,
    vin2_01_0_v_n,
    vin2_01_0_v_p,
    vout00_1_v_n,
    vout00_1_v_p);
  output [1:0]GPIO_0_tri_o;
  input adc2_clk_0_clk_n;
  input adc2_clk_0_clk_p;
  input dac0_clk_0_clk_n;
  input dac0_clk_0_clk_p;
  input vin2_01_0_v_n;
  input vin2_01_0_v_p;
  output vout00_1_v_n;
  output vout00_1_v_p;

  wire [1:0]GPIO_0_tri_o;
  wire adc2_clk_0_clk_n;
  wire adc2_clk_0_clk_p;
  wire dac0_clk_0_clk_n;
  wire dac0_clk_0_clk_p;
  wire vin2_01_0_v_n;
  wire vin2_01_0_v_p;
  wire vout00_1_v_n;
  wire vout00_1_v_p;

  design_1 design_1_i
       (.GPIO_0_tri_o(GPIO_0_tri_o),
        .adc2_clk_0_clk_n(adc2_clk_0_clk_n),
        .adc2_clk_0_clk_p(adc2_clk_0_clk_p),
        .dac0_clk_0_clk_n(dac0_clk_0_clk_n),
        .dac0_clk_0_clk_p(dac0_clk_0_clk_p),
        .vin2_01_0_v_n(vin2_01_0_v_n),
        .vin2_01_0_v_p(vin2_01_0_v_p),
        .vout00_1_v_n(vout00_1_v_n),
        .vout00_1_v_p(vout00_1_v_p));
endmodule
