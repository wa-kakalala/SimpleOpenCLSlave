//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Wed May  1 17:46:06 2024
//Host        : DESKTOP-7S7UGPP running 64-bit major release  (build 9200)
//Command     : generate_target system_wrapper.bd
//Design      : system_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module system_wrapper
   (clk_in1_0,
    interrupt_flag_0,
    reset_0);
  input clk_in1_0;
  output interrupt_flag_0;
  input reset_0;

  wire clk_in1_0;
  wire interrupt_flag_0;
  wire reset_0;

  system system_i
       (.clk_in1_0(clk_in1_0),
        .interrupt_flag_0(interrupt_flag_0),
        .reset_0(reset_0));
endmodule
