// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Jan 13 00:17:22 2026
// Host        : violet running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_cg_fpga_0_0_stub.v
// Design      : design_1_cg_fpga_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "cg_fpga_full,Vivado 2018.3" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(DDR_addr, DDR_ba, DDR_cas_n, DDR_ck_n, DDR_ck_p, 
  DDR_cke, DDR_cs_n, DDR_dm, DDR_dq, DDR_dqs_n, DDR_dqs_p, DDR_odt, DDR_ras_n, DDR_reset_n, DDR_we_n, 
  FIXED_IO_ddr_vrn, FIXED_IO_ddr_vrp, FIXED_IO_mio, FIXED_IO_ps_clk, FIXED_IO_ps_porb, 
  FIXED_IO_ps_srstb, audio, btn, btn_clk, btn_rst, clk_100M, gpio_led, gpio_sw_1, gpio_sw_2, ledm_cs, 
  ledm_data, rx_0, seg_cs, seg_data, tx_0, vid_active, vid_data, vid_hblank, vid_hsync, 
  vid_io_in_clk, vid_vblank, vid_vsync)
/* synthesis syn_black_box black_box_pad_pin="DDR_addr[14:0],DDR_ba[2:0],DDR_cas_n,DDR_ck_n,DDR_ck_p,DDR_cke,DDR_cs_n,DDR_dm[3:0],DDR_dq[31:0],DDR_dqs_n[3:0],DDR_dqs_p[3:0],DDR_odt,DDR_ras_n,DDR_reset_n,DDR_we_n,FIXED_IO_ddr_vrn,FIXED_IO_ddr_vrp,FIXED_IO_mio[53:0],FIXED_IO_ps_clk,FIXED_IO_ps_porb,FIXED_IO_ps_srstb,audio[6:0],btn[7:0],btn_clk[0:0],btn_rst[0:0],clk_100M,gpio_led[31:0],gpio_sw_1[31:0],gpio_sw_2[31:0],ledm_cs[5:0],ledm_data[15:0],rx_0,seg_cs[3:0],seg_data[7:0],tx_0,vid_active,vid_data[23:0],vid_hblank,vid_hsync,vid_io_in_clk,vid_vblank,vid_vsync" */;
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  input [6:0]audio;
  output [7:0]btn;
  output [0:0]btn_clk;
  output [0:0]btn_rst;
  output clk_100M;
  input [31:0]gpio_led;
  output [31:0]gpio_sw_1;
  output [31:0]gpio_sw_2;
  input [5:0]ledm_cs;
  input [15:0]ledm_data;
  input rx_0;
  input [3:0]seg_cs;
  input [7:0]seg_data;
  output tx_0;
  input vid_active;
  input [23:0]vid_data;
  input vid_hblank;
  input vid_hsync;
  input vid_io_in_clk;
  input vid_vblank;
  input vid_vsync;
endmodule
