// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sun Dec  7 12:48:33 2025
// Host        : LAPTOP-476JT8H0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/project/cslab/lab/Scpu/MiniMIPS32_Lite_FullSyS.srcs/sources_1/ip/clkdiv/clkdiv_stub.v
// Design      : clkdiv
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module clkdiv(clk_out, resetn, locked, clk_in)
/* synthesis syn_black_box black_box_pad_pin="clk_out,resetn,locked,clk_in" */;
  output clk_out;
  input resetn;
  output locked;
  input clk_in;
endmodule
