// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Jan 12 01:00:38 2026
// Host        : violet running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/vivado_project/TJU-2025/CPU/Mcpu/Loongarch32_Lite.srcs/sources_1/bd/design_1/ip/design_1_top_0_1/design_1_top_0_1_stub.v
// Design      : design_1_top_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "top,Vivado 2018.3" *)
module design_1_top_0_1(clk, locked, rxd, txd, led, seg_cs, seg_data, sw_1, sw_2, 
  btn)
/* synthesis syn_black_box black_box_pad_pin="clk,locked,rxd,txd,led[31:0],seg_cs[7:0],seg_data[7:0],sw_1[31:0],sw_2[31:0],btn[4:0]" */;
  input clk;
  input locked;
  input rxd;
  output txd;
  output [31:0]led;
  output [7:0]seg_cs;
  output [7:0]seg_data;
  input [31:0]sw_1;
  input [31:0]sw_2;
  input [4:0]btn;
endmodule
