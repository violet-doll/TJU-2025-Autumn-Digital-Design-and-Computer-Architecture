// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed Jan 28 21:19:21 2026
// Host        : violet running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_top_0_0_stub.v
// Design      : design_1_top_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "top,Vivado 2018.3" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, locked, rxd, txd, sw_1, sw_2, led, seg_cs, seg_data, 
  btn)
/* synthesis syn_black_box black_box_pad_pin="clk,locked,rxd,txd,sw_1[31:0],sw_2[31:0],led[31:0],seg_cs[3:0],seg_data[7:0],btn[7:0]" */;
  input clk;
  input locked;
  input rxd;
  output txd;
  input [31:0]sw_1;
  input [31:0]sw_2;
  output [31:0]led;
  output [3:0]seg_cs;
  output [7:0]seg_data;
  input [7:0]btn;
endmodule
