// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Jan  5 22:07:41 2026
// Host        : violet running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/vivado_project/TJU-2025-Autumn-Digital-Design-and-Computer-Architecture/CPU/Mcpu/Loongarch32_Lite.srcs/sources_1/ip/inst_rom/inst_rom_sim_netlist.v
// Design      : inst_rom
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "inst_rom,dist_mem_gen_v8_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_12,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module inst_rom
   (a,
    spo);
  input [13:0]a;
  output [31:0]spo;

  wire [13:0]a;
  wire [31:0]spo;
  wire [31:0]NLW_U0_dpo_UNCONNECTED;
  wire [31:0]NLW_U0_qdpo_UNCONNECTED;
  wire [31:0]NLW_U0_qspo_UNCONNECTED;

  (* C_FAMILY = "zynq" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_I_CE = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_PIPELINE_STAGES = "0" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_QUALIFY_WE = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* c_addr_width = "14" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "16384" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_clk = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "inst_rom.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "32" *) 
  inst_rom_dist_mem_gen_v8_0_12 U0
       (.a(a),
        .clk(1'b0),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_U0_dpo_UNCONNECTED[31:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[31:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[31:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(spo),
        .we(1'b0));
endmodule

(* C_ADDR_WIDTH = "14" *) (* C_DEFAULT_DATA = "0" *) (* C_DEPTH = "16384" *) 
(* C_ELABORATION_DIR = "./" *) (* C_FAMILY = "zynq" *) (* C_HAS_CLK = "0" *) 
(* C_HAS_D = "0" *) (* C_HAS_DPO = "0" *) (* C_HAS_DPRA = "0" *) 
(* C_HAS_I_CE = "0" *) (* C_HAS_QDPO = "0" *) (* C_HAS_QDPO_CE = "0" *) 
(* C_HAS_QDPO_CLK = "0" *) (* C_HAS_QDPO_RST = "0" *) (* C_HAS_QDPO_SRST = "0" *) 
(* C_HAS_QSPO = "0" *) (* C_HAS_QSPO_CE = "0" *) (* C_HAS_QSPO_RST = "0" *) 
(* C_HAS_QSPO_SRST = "0" *) (* C_HAS_SPO = "1" *) (* C_HAS_WE = "0" *) 
(* C_MEM_INIT_FILE = "inst_rom.mif" *) (* C_MEM_TYPE = "0" *) (* C_PARSER_TYPE = "1" *) 
(* C_PIPELINE_STAGES = "0" *) (* C_QCE_JOINED = "0" *) (* C_QUALIFY_WE = "0" *) 
(* C_READ_MIF = "1" *) (* C_REG_A_D_INPUTS = "0" *) (* C_REG_DPRA_INPUT = "0" *) 
(* C_SYNC_ENABLE = "1" *) (* C_WIDTH = "32" *) (* ORIG_REF_NAME = "dist_mem_gen_v8_0_12" *) 
module inst_rom_dist_mem_gen_v8_0_12
   (a,
    d,
    dpra,
    clk,
    we,
    i_ce,
    qspo_ce,
    qdpo_ce,
    qdpo_clk,
    qspo_rst,
    qdpo_rst,
    qspo_srst,
    qdpo_srst,
    spo,
    dpo,
    qspo,
    qdpo);
  input [13:0]a;
  input [31:0]d;
  input [13:0]dpra;
  input clk;
  input we;
  input i_ce;
  input qspo_ce;
  input qdpo_ce;
  input qdpo_clk;
  input qspo_rst;
  input qdpo_rst;
  input qspo_srst;
  input qdpo_srst;
  output [31:0]spo;
  output [31:0]dpo;
  output [31:0]qspo;
  output [31:0]qdpo;

  wire \<const0> ;
  wire [13:0]a;
  wire [31:0]spo;

  assign dpo[31] = \<const0> ;
  assign dpo[30] = \<const0> ;
  assign dpo[29] = \<const0> ;
  assign dpo[28] = \<const0> ;
  assign dpo[27] = \<const0> ;
  assign dpo[26] = \<const0> ;
  assign dpo[25] = \<const0> ;
  assign dpo[24] = \<const0> ;
  assign dpo[23] = \<const0> ;
  assign dpo[22] = \<const0> ;
  assign dpo[21] = \<const0> ;
  assign dpo[20] = \<const0> ;
  assign dpo[19] = \<const0> ;
  assign dpo[18] = \<const0> ;
  assign dpo[17] = \<const0> ;
  assign dpo[16] = \<const0> ;
  assign dpo[15] = \<const0> ;
  assign dpo[14] = \<const0> ;
  assign dpo[13] = \<const0> ;
  assign dpo[12] = \<const0> ;
  assign dpo[11] = \<const0> ;
  assign dpo[10] = \<const0> ;
  assign dpo[9] = \<const0> ;
  assign dpo[8] = \<const0> ;
  assign dpo[7] = \<const0> ;
  assign dpo[6] = \<const0> ;
  assign dpo[5] = \<const0> ;
  assign dpo[4] = \<const0> ;
  assign dpo[3] = \<const0> ;
  assign dpo[2] = \<const0> ;
  assign dpo[1] = \<const0> ;
  assign dpo[0] = \<const0> ;
  assign qdpo[31] = \<const0> ;
  assign qdpo[30] = \<const0> ;
  assign qdpo[29] = \<const0> ;
  assign qdpo[28] = \<const0> ;
  assign qdpo[27] = \<const0> ;
  assign qdpo[26] = \<const0> ;
  assign qdpo[25] = \<const0> ;
  assign qdpo[24] = \<const0> ;
  assign qdpo[23] = \<const0> ;
  assign qdpo[22] = \<const0> ;
  assign qdpo[21] = \<const0> ;
  assign qdpo[20] = \<const0> ;
  assign qdpo[19] = \<const0> ;
  assign qdpo[18] = \<const0> ;
  assign qdpo[17] = \<const0> ;
  assign qdpo[16] = \<const0> ;
  assign qdpo[15] = \<const0> ;
  assign qdpo[14] = \<const0> ;
  assign qdpo[13] = \<const0> ;
  assign qdpo[12] = \<const0> ;
  assign qdpo[11] = \<const0> ;
  assign qdpo[10] = \<const0> ;
  assign qdpo[9] = \<const0> ;
  assign qdpo[8] = \<const0> ;
  assign qdpo[7] = \<const0> ;
  assign qdpo[6] = \<const0> ;
  assign qdpo[5] = \<const0> ;
  assign qdpo[4] = \<const0> ;
  assign qdpo[3] = \<const0> ;
  assign qdpo[2] = \<const0> ;
  assign qdpo[1] = \<const0> ;
  assign qdpo[0] = \<const0> ;
  assign qspo[31] = \<const0> ;
  assign qspo[30] = \<const0> ;
  assign qspo[29] = \<const0> ;
  assign qspo[28] = \<const0> ;
  assign qspo[27] = \<const0> ;
  assign qspo[26] = \<const0> ;
  assign qspo[25] = \<const0> ;
  assign qspo[24] = \<const0> ;
  assign qspo[23] = \<const0> ;
  assign qspo[22] = \<const0> ;
  assign qspo[21] = \<const0> ;
  assign qspo[20] = \<const0> ;
  assign qspo[19] = \<const0> ;
  assign qspo[18] = \<const0> ;
  assign qspo[17] = \<const0> ;
  assign qspo[16] = \<const0> ;
  assign qspo[15] = \<const0> ;
  assign qspo[14] = \<const0> ;
  assign qspo[13] = \<const0> ;
  assign qspo[12] = \<const0> ;
  assign qspo[11] = \<const0> ;
  assign qspo[10] = \<const0> ;
  assign qspo[9] = \<const0> ;
  assign qspo[8] = \<const0> ;
  assign qspo[7] = \<const0> ;
  assign qspo[6] = \<const0> ;
  assign qspo[5] = \<const0> ;
  assign qspo[4] = \<const0> ;
  assign qspo[3] = \<const0> ;
  assign qspo[2] = \<const0> ;
  assign qspo[1] = \<const0> ;
  assign qspo[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  inst_rom_dist_mem_gen_v8_0_12_synth \synth_options.dist_mem_inst 
       (.a(a),
        .spo(spo));
endmodule

(* ORIG_REF_NAME = "dist_mem_gen_v8_0_12_synth" *) 
module inst_rom_dist_mem_gen_v8_0_12_synth
   (spo,
    a);
  output [31:0]spo;
  input [13:0]a;

  wire [13:0]a;
  wire [31:0]spo;

  inst_rom_rom \gen_rom.rom_inst 
       (.a(a),
        .spo(spo));
endmodule

(* ORIG_REF_NAME = "rom" *) 
module inst_rom_rom
   (spo,
    a);
  output [31:0]spo;
  input [13:0]a;

  wire [13:0]a;
  wire [31:0]spo;
  wire \spo[0]_INST_0_i_1_n_0 ;
  wire \spo[0]_INST_0_i_2_n_0 ;
  wire \spo[0]_INST_0_i_3_n_0 ;
  wire \spo[0]_INST_0_i_4_n_0 ;
  wire \spo[0]_INST_0_i_5_n_0 ;
  wire \spo[0]_INST_0_i_6_n_0 ;
  wire \spo[10]_INST_0_i_1_n_0 ;
  wire \spo[10]_INST_0_i_2_n_0 ;
  wire \spo[10]_INST_0_i_3_n_0 ;
  wire \spo[11]_INST_0_i_1_n_0 ;
  wire \spo[11]_INST_0_i_2_n_0 ;
  wire \spo[11]_INST_0_i_3_n_0 ;
  wire \spo[12]_INST_0_i_1_n_0 ;
  wire \spo[12]_INST_0_i_2_n_0 ;
  wire \spo[12]_INST_0_i_3_n_0 ;
  wire \spo[12]_INST_0_i_4_n_0 ;
  wire \spo[13]_INST_0_i_1_n_0 ;
  wire \spo[13]_INST_0_i_2_n_0 ;
  wire \spo[13]_INST_0_i_3_n_0 ;
  wire \spo[13]_INST_0_i_4_n_0 ;
  wire \spo[14]_INST_0_i_10_n_0 ;
  wire \spo[14]_INST_0_i_11_n_0 ;
  wire \spo[14]_INST_0_i_1_n_0 ;
  wire \spo[14]_INST_0_i_2_n_0 ;
  wire \spo[14]_INST_0_i_3_n_0 ;
  wire \spo[14]_INST_0_i_4_n_0 ;
  wire \spo[14]_INST_0_i_5_n_0 ;
  wire \spo[14]_INST_0_i_6_n_0 ;
  wire \spo[14]_INST_0_i_7_n_0 ;
  wire \spo[14]_INST_0_i_8_n_0 ;
  wire \spo[14]_INST_0_i_9_n_0 ;
  wire \spo[15]_INST_0_i_1_n_0 ;
  wire \spo[15]_INST_0_i_2_n_0 ;
  wire \spo[15]_INST_0_i_3_n_0 ;
  wire \spo[15]_INST_0_i_4_n_0 ;
  wire \spo[15]_INST_0_i_5_n_0 ;
  wire \spo[15]_INST_0_i_6_n_0 ;
  wire \spo[16]_INST_0_i_1_n_0 ;
  wire \spo[16]_INST_0_i_2_n_0 ;
  wire \spo[16]_INST_0_i_3_n_0 ;
  wire \spo[16]_INST_0_i_4_n_0 ;
  wire \spo[17]_INST_0_i_1_n_0 ;
  wire \spo[18]_INST_0_i_1_n_0 ;
  wire \spo[18]_INST_0_i_2_n_0 ;
  wire \spo[18]_INST_0_i_3_n_0 ;
  wire \spo[18]_INST_0_i_4_n_0 ;
  wire \spo[18]_INST_0_i_5_n_0 ;
  wire \spo[19]_INST_0_i_1_n_0 ;
  wire \spo[19]_INST_0_i_2_n_0 ;
  wire \spo[19]_INST_0_i_3_n_0 ;
  wire \spo[19]_INST_0_i_4_n_0 ;
  wire \spo[19]_INST_0_i_5_n_0 ;
  wire \spo[19]_INST_0_i_6_n_0 ;
  wire \spo[19]_INST_0_i_7_n_0 ;
  wire \spo[1]_INST_0_i_10_n_0 ;
  wire \spo[1]_INST_0_i_11_n_0 ;
  wire \spo[1]_INST_0_i_12_n_0 ;
  wire \spo[1]_INST_0_i_1_n_0 ;
  wire \spo[1]_INST_0_i_2_n_0 ;
  wire \spo[1]_INST_0_i_3_n_0 ;
  wire \spo[1]_INST_0_i_4_n_0 ;
  wire \spo[1]_INST_0_i_5_n_0 ;
  wire \spo[1]_INST_0_i_6_n_0 ;
  wire \spo[1]_INST_0_i_7_n_0 ;
  wire \spo[1]_INST_0_i_8_n_0 ;
  wire \spo[1]_INST_0_i_9_n_0 ;
  wire \spo[20]_INST_0_i_1_n_0 ;
  wire \spo[20]_INST_0_i_2_n_0 ;
  wire \spo[20]_INST_0_i_3_n_0 ;
  wire \spo[20]_INST_0_i_4_n_0 ;
  wire \spo[20]_INST_0_i_5_n_0 ;
  wire \spo[21]_INST_0_i_10_n_0 ;
  wire \spo[21]_INST_0_i_1_n_0 ;
  wire \spo[21]_INST_0_i_2_n_0 ;
  wire \spo[21]_INST_0_i_3_n_0 ;
  wire \spo[21]_INST_0_i_4_n_0 ;
  wire \spo[21]_INST_0_i_5_n_0 ;
  wire \spo[21]_INST_0_i_6_n_0 ;
  wire \spo[21]_INST_0_i_7_n_0 ;
  wire \spo[21]_INST_0_i_8_n_0 ;
  wire \spo[21]_INST_0_i_9_n_0 ;
  wire \spo[22]_INST_0_i_1_n_0 ;
  wire \spo[22]_INST_0_i_2_n_0 ;
  wire \spo[22]_INST_0_i_3_n_0 ;
  wire \spo[22]_INST_0_i_4_n_0 ;
  wire \spo[22]_INST_0_i_5_n_0 ;
  wire \spo[22]_INST_0_i_6_n_0 ;
  wire \spo[22]_INST_0_i_7_n_0 ;
  wire \spo[22]_INST_0_i_8_n_0 ;
  wire \spo[22]_INST_0_i_9_n_0 ;
  wire \spo[23]_INST_0_i_1_n_0 ;
  wire \spo[23]_INST_0_i_2_n_0 ;
  wire \spo[23]_INST_0_i_3_n_0 ;
  wire \spo[23]_INST_0_i_4_n_0 ;
  wire \spo[23]_INST_0_i_5_n_0 ;
  wire \spo[23]_INST_0_i_6_n_0 ;
  wire \spo[23]_INST_0_i_7_n_0 ;
  wire \spo[24]_INST_0_i_1_n_0 ;
  wire \spo[24]_INST_0_i_2_n_0 ;
  wire \spo[24]_INST_0_i_3_n_0 ;
  wire \spo[24]_INST_0_i_4_n_0 ;
  wire \spo[24]_INST_0_i_5_n_0 ;
  wire \spo[24]_INST_0_i_6_n_0 ;
  wire \spo[24]_INST_0_i_7_n_0 ;
  wire \spo[25]_INST_0_i_1_n_0 ;
  wire \spo[25]_INST_0_i_2_n_0 ;
  wire \spo[25]_INST_0_i_3_n_0 ;
  wire \spo[25]_INST_0_i_4_n_0 ;
  wire \spo[25]_INST_0_i_5_n_0 ;
  wire \spo[25]_INST_0_i_6_n_0 ;
  wire \spo[25]_INST_0_i_7_n_0 ;
  wire \spo[26]_INST_0_i_1_n_0 ;
  wire \spo[26]_INST_0_i_2_n_0 ;
  wire \spo[26]_INST_0_i_3_n_0 ;
  wire \spo[26]_INST_0_i_4_n_0 ;
  wire \spo[26]_INST_0_i_5_n_0 ;
  wire \spo[26]_INST_0_i_6_n_0 ;
  wire \spo[26]_INST_0_i_7_n_0 ;
  wire \spo[27]_INST_0_i_1_n_0 ;
  wire \spo[27]_INST_0_i_2_n_0 ;
  wire \spo[27]_INST_0_i_3_n_0 ;
  wire \spo[27]_INST_0_i_4_n_0 ;
  wire \spo[27]_INST_0_i_5_n_0 ;
  wire \spo[28]_INST_0_i_1_n_0 ;
  wire \spo[28]_INST_0_i_2_n_0 ;
  wire \spo[28]_INST_0_i_3_n_0 ;
  wire \spo[29]_INST_0_i_1_n_0 ;
  wire \spo[29]_INST_0_i_2_n_0 ;
  wire \spo[29]_INST_0_i_3_n_0 ;
  wire \spo[29]_INST_0_i_4_n_0 ;
  wire \spo[29]_INST_0_i_5_n_0 ;
  wire \spo[2]_INST_0_i_1_n_0 ;
  wire \spo[30]_INST_0_i_1_n_0 ;
  wire \spo[30]_INST_0_i_2_n_0 ;
  wire \spo[30]_INST_0_i_3_n_0 ;
  wire \spo[31]_INST_0_i_1_n_0 ;
  wire \spo[31]_INST_0_i_2_n_0 ;
  wire \spo[31]_INST_0_i_3_n_0 ;
  wire \spo[31]_INST_0_i_4_n_0 ;
  wire \spo[31]_INST_0_i_5_n_0 ;
  wire \spo[31]_INST_0_i_6_n_0 ;
  wire \spo[31]_INST_0_i_7_n_0 ;
  wire \spo[31]_INST_0_i_8_n_0 ;
  wire \spo[3]_INST_0_i_1_n_0 ;
  wire \spo[3]_INST_0_i_2_n_0 ;
  wire \spo[3]_INST_0_i_3_n_0 ;
  wire \spo[3]_INST_0_i_4_n_0 ;
  wire \spo[3]_INST_0_i_5_n_0 ;
  wire \spo[3]_INST_0_i_6_n_0 ;
  wire \spo[3]_INST_0_i_7_n_0 ;
  wire \spo[3]_INST_0_i_8_n_0 ;
  wire \spo[4]_INST_0_i_1_n_0 ;
  wire \spo[4]_INST_0_i_2_n_0 ;
  wire \spo[4]_INST_0_i_3_n_0 ;
  wire \spo[4]_INST_0_i_4_n_0 ;
  wire \spo[4]_INST_0_i_5_n_0 ;
  wire \spo[4]_INST_0_i_6_n_0 ;
  wire \spo[4]_INST_0_i_7_n_0 ;
  wire \spo[5]_INST_0_i_1_n_0 ;
  wire \spo[5]_INST_0_i_2_n_0 ;
  wire \spo[5]_INST_0_i_3_n_0 ;
  wire \spo[5]_INST_0_i_4_n_0 ;
  wire \spo[6]_INST_0_i_1_n_0 ;
  wire \spo[6]_INST_0_i_2_n_0 ;
  wire \spo[6]_INST_0_i_3_n_0 ;
  wire \spo[6]_INST_0_i_4_n_0 ;
  wire \spo[6]_INST_0_i_5_n_0 ;
  wire \spo[6]_INST_0_i_6_n_0 ;
  wire \spo[7]_INST_0_i_1_n_0 ;
  wire \spo[7]_INST_0_i_2_n_0 ;
  wire \spo[8]_INST_0_i_1_n_0 ;
  wire \spo[8]_INST_0_i_2_n_0 ;
  wire \spo[8]_INST_0_i_3_n_0 ;
  wire \spo[8]_INST_0_i_4_n_0 ;
  wire \spo[8]_INST_0_i_5_n_0 ;
  wire \spo[9]_INST_0_i_1_n_0 ;
  wire \spo[9]_INST_0_i_2_n_0 ;
  wire \spo[9]_INST_0_i_3_n_0 ;
  wire \spo[9]_INST_0_i_4_n_0 ;

  LUT6 #(
    .INIT(64'h00000000FFEA0000)) 
    \spo[0]_INST_0 
       (.I0(\spo[0]_INST_0_i_1_n_0 ),
        .I1(a[0]),
        .I2(\spo[14]_INST_0_i_2_n_0 ),
        .I3(\spo[0]_INST_0_i_2_n_0 ),
        .I4(\spo[29]_INST_0_i_2_n_0 ),
        .I5(a[13]),
        .O(spo[0]));
  LUT5 #(
    .INIT(32'h0000FFE2)) 
    \spo[0]_INST_0_i_1 
       (.I0(\spo[0]_INST_0_i_3_n_0 ),
        .I1(a[2]),
        .I2(\spo[0]_INST_0_i_4_n_0 ),
        .I3(\spo[14]_INST_0_i_11_n_0 ),
        .I4(a[0]),
        .O(\spo[0]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[0]_INST_0_i_2 
       (.I0(\spo[0]_INST_0_i_5_n_0 ),
        .I1(a[7]),
        .I2(\spo[0]_INST_0_i_6_n_0 ),
        .O(\spo[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1F1C4F5EACFF01DE)) 
    \spo[0]_INST_0_i_3 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[7]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[6]),
        .O(\spo[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h14392FE904192FF9)) 
    \spo[0]_INST_0_i_4 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[5]),
        .I3(a[4]),
        .I4(a[6]),
        .I5(a[1]),
        .O(\spo[0]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000D00000022)) 
    \spo[0]_INST_0_i_5 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[1]),
        .I3(a[6]),
        .I4(a[3]),
        .I5(a[2]),
        .O(\spo[0]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00008000400000A0)) 
    \spo[0]_INST_0_i_6 
       (.I0(a[6]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[4]),
        .O(\spo[0]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAA808080)) 
    \spo[10]_INST_0 
       (.I0(\spo[31]_INST_0_i_1_n_0 ),
        .I1(\spo[12]_INST_0_i_1_n_0 ),
        .I2(\spo[10]_INST_0_i_1_n_0 ),
        .I3(\spo[10]_INST_0_i_2_n_0 ),
        .I4(\spo[10]_INST_0_i_3_n_0 ),
        .O(spo[10]));
  LUT6 #(
    .INIT(64'h2002000108040000)) 
    \spo[10]_INST_0_i_1 
       (.I0(a[3]),
        .I1(a[4]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[6]),
        .I5(a[5]),
        .O(\spo[10]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \spo[10]_INST_0_i_2 
       (.I0(a[8]),
        .I1(a[3]),
        .I2(a[7]),
        .O(\spo[10]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0100200000100000)) 
    \spo[10]_INST_0_i_3 
       (.I0(a[6]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[2]),
        .O(\spo[10]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \spo[11]_INST_0 
       (.I0(a[7]),
        .I1(\spo[11]_INST_0_i_1_n_0 ),
        .I2(\spo[12]_INST_0_i_4_n_0 ),
        .I3(a[4]),
        .I4(\spo[11]_INST_0_i_2_n_0 ),
        .I5(\spo[11]_INST_0_i_3_n_0 ),
        .O(spo[11]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \spo[11]_INST_0_i_1 
       (.I0(a[12]),
        .I1(a[13]),
        .O(\spo[11]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \spo[11]_INST_0_i_2 
       (.I0(a[8]),
        .I1(a[9]),
        .O(\spo[11]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \spo[11]_INST_0_i_3 
       (.I0(a[10]),
        .I1(a[11]),
        .O(\spo[11]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAA80808080808080)) 
    \spo[12]_INST_0 
       (.I0(\spo[31]_INST_0_i_1_n_0 ),
        .I1(\spo[12]_INST_0_i_1_n_0 ),
        .I2(\spo[12]_INST_0_i_2_n_0 ),
        .I3(a[7]),
        .I4(\spo[12]_INST_0_i_3_n_0 ),
        .I5(\spo[12]_INST_0_i_4_n_0 ),
        .O(spo[12]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \spo[12]_INST_0_i_1 
       (.I0(a[8]),
        .I1(a[0]),
        .I2(a[7]),
        .O(\spo[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4000000008020020)) 
    \spo[12]_INST_0_i_2 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[6]),
        .I5(a[5]),
        .O(\spo[12]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \spo[12]_INST_0_i_3 
       (.I0(a[8]),
        .I1(a[4]),
        .O(\spo[12]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4000000000000002)) 
    \spo[12]_INST_0_i_4 
       (.I0(a[5]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[2]),
        .O(\spo[12]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0088008000080000)) 
    \spo[13]_INST_0 
       (.I0(\spo[13]_INST_0_i_1_n_0 ),
        .I1(\spo[13]_INST_0_i_2_n_0 ),
        .I2(a[7]),
        .I3(a[8]),
        .I4(\spo[13]_INST_0_i_3_n_0 ),
        .I5(\spo[13]_INST_0_i_4_n_0 ),
        .O(spo[13]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \spo[13]_INST_0_i_1 
       (.I0(a[11]),
        .I1(a[0]),
        .I2(a[13]),
        .I3(a[12]),
        .O(\spo[13]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \spo[13]_INST_0_i_2 
       (.I0(a[9]),
        .I1(a[10]),
        .O(\spo[13]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \spo[13]_INST_0_i_3 
       (.I0(a[3]),
        .I1(a[4]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[6]),
        .I5(a[5]),
        .O(\spo[13]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0100400000000000)) 
    \spo[13]_INST_0_i_4 
       (.I0(a[5]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[4]),
        .I5(a[3]),
        .O(\spo[13]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA808080)) 
    \spo[14]_INST_0 
       (.I0(\spo[31]_INST_0_i_1_n_0 ),
        .I1(\spo[14]_INST_0_i_1_n_0 ),
        .I2(\spo[14]_INST_0_i_2_n_0 ),
        .I3(\spo[14]_INST_0_i_3_n_0 ),
        .I4(\spo[14]_INST_0_i_4_n_0 ),
        .I5(\spo[14]_INST_0_i_5_n_0 ),
        .O(spo[14]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \spo[14]_INST_0_i_1 
       (.I0(a[0]),
        .I1(a[8]),
        .O(\spo[14]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h34392FE904192FF9)) 
    \spo[14]_INST_0_i_10 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[5]),
        .I3(a[4]),
        .I4(a[6]),
        .I5(a[1]),
        .O(\spo[14]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h032201CC01000100)) 
    \spo[14]_INST_0_i_11 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[7]),
        .I3(a[6]),
        .I4(a[3]),
        .I5(a[4]),
        .O(\spo[14]_INST_0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hEFEA)) 
    \spo[14]_INST_0_i_2 
       (.I0(\spo[14]_INST_0_i_6_n_0 ),
        .I1(\spo[14]_INST_0_i_7_n_0 ),
        .I2(a[2]),
        .I3(\spo[14]_INST_0_i_8_n_0 ),
        .O(\spo[14]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000020000000110C)) 
    \spo[14]_INST_0_i_3 
       (.I0(a[4]),
        .I1(a[7]),
        .I2(a[3]),
        .I3(a[6]),
        .I4(a[5]),
        .I5(a[1]),
        .O(\spo[14]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \spo[14]_INST_0_i_4 
       (.I0(a[2]),
        .I1(a[8]),
        .O(\spo[14]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h1111111111100010)) 
    \spo[14]_INST_0_i_5 
       (.I0(a[0]),
        .I1(a[8]),
        .I2(\spo[14]_INST_0_i_9_n_0 ),
        .I3(a[2]),
        .I4(\spo[14]_INST_0_i_10_n_0 ),
        .I5(\spo[14]_INST_0_i_11_n_0 ),
        .O(\spo[14]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0081008000034042)) 
    \spo[14]_INST_0_i_6 
       (.I0(a[1]),
        .I1(a[4]),
        .I2(a[5]),
        .I3(a[6]),
        .I4(a[3]),
        .I5(a[7]),
        .O(\spo[14]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h7403575C7033535C)) 
    \spo[14]_INST_0_i_7 
       (.I0(a[6]),
        .I1(a[7]),
        .I2(a[5]),
        .I3(a[4]),
        .I4(a[3]),
        .I5(a[1]),
        .O(\spo[14]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h02040FFF23EB2615)) 
    \spo[14]_INST_0_i_8 
       (.I0(a[1]),
        .I1(a[7]),
        .I2(a[4]),
        .I3(a[5]),
        .I4(a[6]),
        .I5(a[3]),
        .O(\spo[14]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h1F1A2F3EDAFF01BE)) 
    \spo[14]_INST_0_i_9 
       (.I0(a[4]),
        .I1(a[5]),
        .I2(a[7]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[6]),
        .O(\spo[14]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA00080000)) 
    \spo[15]_INST_0 
       (.I0(\spo[31]_INST_0_i_1_n_0 ),
        .I1(a[7]),
        .I2(a[8]),
        .I3(a[6]),
        .I4(\spo[15]_INST_0_i_1_n_0 ),
        .I5(\spo[15]_INST_0_i_2_n_0 ),
        .O(spo[15]));
  LUT6 #(
    .INIT(64'h0081002012011000)) 
    \spo[15]_INST_0_i_1 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[5]),
        .I5(a[3]),
        .O(\spo[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \spo[15]_INST_0_i_2 
       (.I0(\spo[15]_INST_0_i_3_n_0 ),
        .I1(\spo[15]_INST_0_i_4_n_0 ),
        .I2(\spo[15]_INST_0_i_5_n_0 ),
        .I3(a[4]),
        .I4(\spo[15]_INST_0_i_6_n_0 ),
        .I5(\spo[22]_INST_0_i_5_n_0 ),
        .O(\spo[15]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000010000008014)) 
    \spo[15]_INST_0_i_3 
       (.I0(a[2]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[4]),
        .O(\spo[15]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \spo[15]_INST_0_i_4 
       (.I0(a[8]),
        .I1(a[6]),
        .I2(a[7]),
        .O(\spo[15]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2004000404000002)) 
    \spo[15]_INST_0_i_5 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[6]),
        .I5(a[5]),
        .O(\spo[15]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h20400180502C8001)) 
    \spo[15]_INST_0_i_6 
       (.I0(a[5]),
        .I1(a[6]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[15]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA00080000)) 
    \spo[16]_INST_0 
       (.I0(\spo[31]_INST_0_i_1_n_0 ),
        .I1(a[4]),
        .I2(a[8]),
        .I3(a[7]),
        .I4(\spo[16]_INST_0_i_1_n_0 ),
        .I5(\spo[16]_INST_0_i_2_n_0 ),
        .O(spo[16]));
  LUT6 #(
    .INIT(64'h6008000800080020)) 
    \spo[16]_INST_0_i_1 
       (.I0(a[0]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[6]),
        .I4(a[2]),
        .I5(a[5]),
        .O(\spo[16]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \spo[16]_INST_0_i_2 
       (.I0(\spo[16]_INST_0_i_3_n_0 ),
        .I1(\spo[21]_INST_0_i_6_n_0 ),
        .I2(\spo[16]_INST_0_i_4_n_0 ),
        .I3(a[5]),
        .I4(\spo[31]_INST_0_i_7_n_0 ),
        .I5(\spo[21]_INST_0_i_5_n_0 ),
        .O(\spo[16]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000104000000)) 
    \spo[16]_INST_0_i_3 
       (.I0(a[5]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[16]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000080180008020)) 
    \spo[16]_INST_0_i_4 
       (.I0(a[2]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[6]),
        .I5(a[7]),
        .O(\spo[16]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA00200000)) 
    \spo[17]_INST_0 
       (.I0(\spo[31]_INST_0_i_1_n_0 ),
        .I1(a[7]),
        .I2(a[6]),
        .I3(a[8]),
        .I4(\spo[17]_INST_0_i_1_n_0 ),
        .I5(\spo[30]_INST_0_i_2_n_0 ),
        .O(spo[17]));
  LUT6 #(
    .INIT(64'h000002000D000000)) 
    \spo[17]_INST_0_i_1 
       (.I0(a[2]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[5]),
        .O(\spo[17]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA00080000)) 
    \spo[18]_INST_0 
       (.I0(\spo[31]_INST_0_i_1_n_0 ),
        .I1(a[6]),
        .I2(a[8]),
        .I3(a[7]),
        .I4(\spo[18]_INST_0_i_1_n_0 ),
        .I5(\spo[18]_INST_0_i_2_n_0 ),
        .O(spo[18]));
  LUT6 #(
    .INIT(64'h0600002083208000)) 
    \spo[18]_INST_0_i_1 
       (.I0(a[1]),
        .I1(a[5]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[4]),
        .O(\spo[18]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \spo[18]_INST_0_i_2 
       (.I0(\spo[18]_INST_0_i_3_n_0 ),
        .I1(\spo[23]_INST_0_i_4_n_0 ),
        .I2(\spo[18]_INST_0_i_4_n_0 ),
        .I3(a[4]),
        .I4(\spo[18]_INST_0_i_5_n_0 ),
        .I5(\spo[3]_INST_0_i_4_n_0 ),
        .O(\spo[18]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000060042010)) 
    \spo[18]_INST_0_i_3 
       (.I0(a[3]),
        .I1(a[4]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[18]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0810200400109000)) 
    \spo[18]_INST_0_i_4 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[7]),
        .I5(a[5]),
        .O(\spo[18]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hC002000000080000)) 
    \spo[18]_INST_0_i_5 
       (.I0(a[7]),
        .I1(a[3]),
        .I2(a[5]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[18]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA808080)) 
    \spo[19]_INST_0 
       (.I0(\spo[31]_INST_0_i_1_n_0 ),
        .I1(\spo[19]_INST_0_i_1_n_0 ),
        .I2(\spo[19]_INST_0_i_2_n_0 ),
        .I3(\spo[19]_INST_0_i_3_n_0 ),
        .I4(\spo[19]_INST_0_i_4_n_0 ),
        .I5(\spo[19]_INST_0_i_5_n_0 ),
        .O(spo[19]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \spo[19]_INST_0_i_1 
       (.I0(a[4]),
        .I1(a[8]),
        .I2(a[5]),
        .O(\spo[19]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000818402)) 
    \spo[19]_INST_0_i_2 
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[6]),
        .I4(a[3]),
        .I5(a[7]),
        .O(\spo[19]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000150000200)) 
    \spo[19]_INST_0_i_3 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[2]),
        .O(\spo[19]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \spo[19]_INST_0_i_4 
       (.I0(a[8]),
        .I1(a[4]),
        .I2(a[5]),
        .O(\spo[19]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h11100010)) 
    \spo[19]_INST_0_i_5 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(\spo[19]_INST_0_i_6_n_0 ),
        .I3(a[3]),
        .I4(\spo[19]_INST_0_i_7_n_0 ),
        .O(\spo[19]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8000082000000041)) 
    \spo[19]_INST_0_i_6 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[7]),
        .I5(a[6]),
        .O(\spo[19]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h182260000000015C)) 
    \spo[19]_INST_0_i_7 
       (.I0(a[6]),
        .I1(a[7]),
        .I2(a[4]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[19]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8888888888808080)) 
    \spo[1]_INST_0 
       (.I0(\spo[11]_INST_0_i_1_n_0 ),
        .I1(\spo[11]_INST_0_i_3_n_0 ),
        .I2(\spo[1]_INST_0_i_1_n_0 ),
        .I3(\spo[1]_INST_0_i_2_n_0 ),
        .I4(\spo[11]_INST_0_i_2_n_0 ),
        .I5(\spo[1]_INST_0_i_3_n_0 ),
        .O(spo[1]));
  LUT5 #(
    .INIT(32'hAAAAA808)) 
    \spo[1]_INST_0_i_1 
       (.I0(\spo[1]_INST_0_i_4_n_0 ),
        .I1(\spo[1]_INST_0_i_5_n_0 ),
        .I2(a[7]),
        .I3(\spo[1]_INST_0_i_6_n_0 ),
        .I4(\spo[1]_INST_0_i_7_n_0 ),
        .O(\spo[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8FFFFC2FFD1FF9FF)) 
    \spo[1]_INST_0_i_10 
       (.I0(a[7]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(\spo[1]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h310033FC315F33FF)) 
    \spo[1]_INST_0_i_11 
       (.I0(a[4]),
        .I1(a[7]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(a[3]),
        .I5(a[0]),
        .O(\spo[1]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h010111310103FD13)) 
    \spo[1]_INST_0_i_12 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[7]),
        .O(\spo[1]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCCDCECCCF)) 
    \spo[1]_INST_0_i_2 
       (.I0(a[4]),
        .I1(\spo[1]_INST_0_i_8_n_0 ),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[7]),
        .I5(a[5]),
        .O(\spo[1]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAA808)) 
    \spo[1]_INST_0_i_3 
       (.I0(\spo[1]_INST_0_i_9_n_0 ),
        .I1(\spo[1]_INST_0_i_10_n_0 ),
        .I2(a[6]),
        .I3(\spo[1]_INST_0_i_11_n_0 ),
        .I4(\spo[1]_INST_0_i_12_n_0 ),
        .O(\spo[1]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \spo[1]_INST_0_i_4 
       (.I0(a[9]),
        .I1(a[2]),
        .I2(a[8]),
        .O(\spo[1]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCBFFF3FF5DCFDFF0)) 
    \spo[1]_INST_0_i_5 
       (.I0(a[6]),
        .I1(a[3]),
        .I2(a[5]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[1]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00C332C20003020F)) 
    \spo[1]_INST_0_i_6 
       (.I0(a[3]),
        .I1(a[4]),
        .I2(a[0]),
        .I3(a[6]),
        .I4(a[5]),
        .I5(a[1]),
        .O(\spo[1]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h51104544)) 
    \spo[1]_INST_0_i_7 
       (.I0(a[6]),
        .I1(a[0]),
        .I2(a[5]),
        .I3(a[4]),
        .I4(a[3]),
        .O(\spo[1]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h000001A000FF0100)) 
    \spo[1]_INST_0_i_8 
       (.I0(a[1]),
        .I1(a[4]),
        .I2(a[5]),
        .I3(a[0]),
        .I4(a[6]),
        .I5(a[7]),
        .O(\spo[1]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \spo[1]_INST_0_i_9 
       (.I0(a[2]),
        .I1(a[9]),
        .I2(a[8]),
        .O(\spo[1]_INST_0_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \spo[20]_INST_0 
       (.I0(\spo[20]_INST_0_i_1_n_0 ),
        .I1(\spo[29]_INST_0_i_2_n_0 ),
        .I2(a[13]),
        .O(spo[20]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \spo[20]_INST_0_i_1 
       (.I0(\spo[20]_INST_0_i_2_n_0 ),
        .I1(\spo[20]_INST_0_i_3_n_0 ),
        .I2(a[5]),
        .I3(a[4]),
        .I4(\spo[20]_INST_0_i_4_n_0 ),
        .I5(\spo[20]_INST_0_i_5_n_0 ),
        .O(\spo[20]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0018000220080084)) 
    \spo[20]_INST_0_i_2 
       (.I0(a[0]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[7]),
        .I4(a[6]),
        .I5(a[1]),
        .O(\spo[20]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000020642800204)) 
    \spo[20]_INST_0_i_3 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[6]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[7]),
        .O(\spo[20]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA8804000450CA800)) 
    \spo[20]_INST_0_i_4 
       (.I0(a[7]),
        .I1(a[1]),
        .I2(a[6]),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[0]),
        .O(\spo[20]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0090002420800040)) 
    \spo[20]_INST_0_i_5 
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[7]),
        .I4(a[3]),
        .I5(a[6]),
        .O(\spo[20]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAA80AA80AA80)) 
    \spo[21]_INST_0 
       (.I0(\spo[31]_INST_0_i_1_n_0 ),
        .I1(\spo[21]_INST_0_i_1_n_0 ),
        .I2(\spo[21]_INST_0_i_2_n_0 ),
        .I3(\spo[21]_INST_0_i_3_n_0 ),
        .I4(\spo[21]_INST_0_i_4_n_0 ),
        .I5(\spo[21]_INST_0_i_5_n_0 ),
        .O(spo[21]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \spo[21]_INST_0_i_1 
       (.I0(a[7]),
        .I1(a[8]),
        .I2(a[4]),
        .O(\spo[21]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000800080018010)) 
    \spo[21]_INST_0_i_10 
       (.I0(a[2]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[7]),
        .I5(a[6]),
        .O(\spo[21]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0808000008811008)) 
    \spo[21]_INST_0_i_2 
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[5]),
        .I4(a[3]),
        .I5(a[6]),
        .O(\spo[21]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000800080A0A0008)) 
    \spo[21]_INST_0_i_3 
       (.I0(\spo[21]_INST_0_i_6_n_0 ),
        .I1(\spo[21]_INST_0_i_7_n_0 ),
        .I2(a[6]),
        .I3(a[3]),
        .I4(\spo[21]_INST_0_i_8_n_0 ),
        .I5(a[5]),
        .O(\spo[21]_INST_0_i_3_n_0 ));
  MUXF7 \spo[21]_INST_0_i_4 
       (.I0(\spo[21]_INST_0_i_9_n_0 ),
        .I1(\spo[21]_INST_0_i_10_n_0 ),
        .O(\spo[21]_INST_0_i_4_n_0 ),
        .S(a[5]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \spo[21]_INST_0_i_5 
       (.I0(a[4]),
        .I1(a[8]),
        .O(\spo[21]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \spo[21]_INST_0_i_6 
       (.I0(a[8]),
        .I1(a[7]),
        .I2(a[4]),
        .O(\spo[21]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \spo[21]_INST_0_i_7 
       (.I0(a[2]),
        .I1(a[1]),
        .I2(a[0]),
        .O(\spo[21]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \spo[21]_INST_0_i_8 
       (.I0(a[1]),
        .I1(a[0]),
        .I2(a[3]),
        .I3(a[2]),
        .O(\spo[21]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h8000800000001201)) 
    \spo[21]_INST_0_i_9 
       (.I0(a[3]),
        .I1(a[6]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[7]),
        .O(\spo[21]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAA80AA80AA80)) 
    \spo[22]_INST_0 
       (.I0(\spo[31]_INST_0_i_1_n_0 ),
        .I1(\spo[22]_INST_0_i_1_n_0 ),
        .I2(\spo[22]_INST_0_i_2_n_0 ),
        .I3(\spo[22]_INST_0_i_3_n_0 ),
        .I4(\spo[22]_INST_0_i_4_n_0 ),
        .I5(\spo[22]_INST_0_i_5_n_0 ),
        .O(spo[22]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \spo[22]_INST_0_i_1 
       (.I0(a[6]),
        .I1(a[8]),
        .I2(a[7]),
        .O(\spo[22]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0400000000010002)) 
    \spo[22]_INST_0_i_2 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[2]),
        .O(\spo[22]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0808000008000000)) 
    \spo[22]_INST_0_i_3 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[8]),
        .I3(\spo[22]_INST_0_i_6_n_0 ),
        .I4(\spo[22]_INST_0_i_7_n_0 ),
        .I5(\spo[25]_INST_0_i_5_n_0 ),
        .O(\spo[22]_INST_0_i_3_n_0 ));
  MUXF7 \spo[22]_INST_0_i_4 
       (.I0(\spo[22]_INST_0_i_8_n_0 ),
        .I1(\spo[22]_INST_0_i_9_n_0 ),
        .O(\spo[22]_INST_0_i_4_n_0 ),
        .S(a[5]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \spo[22]_INST_0_i_5 
       (.I0(a[7]),
        .I1(a[8]),
        .O(\spo[22]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \spo[22]_INST_0_i_6 
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[2]),
        .O(\spo[22]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \spo[22]_INST_0_i_7 
       (.I0(a[4]),
        .I1(a[5]),
        .O(\spo[22]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h2C50840200840800)) 
    \spo[22]_INST_0_i_8 
       (.I0(a[4]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[22]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h1280401A20000100)) 
    \spo[22]_INST_0_i_9 
       (.I0(a[4]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[2]),
        .O(\spo[22]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA808080)) 
    \spo[23]_INST_0 
       (.I0(\spo[31]_INST_0_i_1_n_0 ),
        .I1(\spo[23]_INST_0_i_1_n_0 ),
        .I2(\spo[23]_INST_0_i_2_n_0 ),
        .I3(\spo[23]_INST_0_i_3_n_0 ),
        .I4(\spo[23]_INST_0_i_4_n_0 ),
        .I5(\spo[23]_INST_0_i_5_n_0 ),
        .O(spo[23]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \spo[23]_INST_0_i_1 
       (.I0(a[7]),
        .I1(a[8]),
        .I2(a[6]),
        .O(\spo[23]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00404280A1004100)) 
    \spo[23]_INST_0_i_2 
       (.I0(a[2]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[4]),
        .O(\spo[23]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \spo[23]_INST_0_i_3 
       (.I0(a[2]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[4]),
        .O(\spo[23]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \spo[23]_INST_0_i_4 
       (.I0(a[8]),
        .I1(a[7]),
        .I2(a[6]),
        .O(\spo[23]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h1111100000001000)) 
    \spo[23]_INST_0_i_5 
       (.I0(a[8]),
        .I1(a[6]),
        .I2(\spo[23]_INST_0_i_6_n_0 ),
        .I3(\spo[25]_INST_0_i_5_n_0 ),
        .I4(a[5]),
        .I5(\spo[23]_INST_0_i_7_n_0 ),
        .O(\spo[23]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \spo[23]_INST_0_i_6 
       (.I0(a[4]),
        .I1(a[7]),
        .O(\spo[23]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0080000120801040)) 
    \spo[23]_INST_0_i_7 
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[4]),
        .I4(a[3]),
        .I5(a[7]),
        .O(\spo[23]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8A8A8A8AAA8)) 
    \spo[24]_INST_0 
       (.I0(\spo[31]_INST_0_i_1_n_0 ),
        .I1(\spo[24]_INST_0_i_1_n_0 ),
        .I2(\spo[24]_INST_0_i_2_n_0 ),
        .I3(\spo[24]_INST_0_i_3_n_0 ),
        .I4(a[1]),
        .I5(a[8]),
        .O(spo[24]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \spo[24]_INST_0_i_1 
       (.I0(a[1]),
        .I1(a[6]),
        .I2(a[8]),
        .I3(\spo[24]_INST_0_i_4_n_0 ),
        .O(\spo[24]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \spo[24]_INST_0_i_2 
       (.I0(a[1]),
        .I1(a[8]),
        .I2(a[6]),
        .I3(\spo[24]_INST_0_i_5_n_0 ),
        .O(\spo[24]_INST_0_i_2_n_0 ));
  MUXF7 \spo[24]_INST_0_i_3 
       (.I0(\spo[24]_INST_0_i_6_n_0 ),
        .I1(\spo[24]_INST_0_i_7_n_0 ),
        .O(\spo[24]_INST_0_i_3_n_0 ),
        .S(a[7]));
  LUT6 #(
    .INIT(64'h0012001040028000)) 
    \spo[24]_INST_0_i_4 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[4]),
        .I3(a[5]),
        .I4(a[3]),
        .I5(a[7]),
        .O(\spo[24]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000080400400444)) 
    \spo[24]_INST_0_i_5 
       (.I0(a[0]),
        .I1(a[3]),
        .I2(a[7]),
        .I3(a[5]),
        .I4(a[4]),
        .I5(a[2]),
        .O(\spo[24]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0482400080900008)) 
    \spo[24]_INST_0_i_6 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[3]),
        .I3(a[5]),
        .I4(a[4]),
        .I5(a[6]),
        .O(\spo[24]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000211440840000)) 
    \spo[24]_INST_0_i_7 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[5]),
        .I5(a[6]),
        .O(\spo[24]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8A8A8A8AAA8)) 
    \spo[25]_INST_0 
       (.I0(\spo[31]_INST_0_i_1_n_0 ),
        .I1(\spo[25]_INST_0_i_1_n_0 ),
        .I2(\spo[25]_INST_0_i_2_n_0 ),
        .I3(\spo[25]_INST_0_i_3_n_0 ),
        .I4(a[5]),
        .I5(a[8]),
        .O(spo[25]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \spo[25]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[8]),
        .I3(\spo[25]_INST_0_i_4_n_0 ),
        .O(\spo[25]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    \spo[25]_INST_0_i_2 
       (.I0(a[5]),
        .I1(a[8]),
        .I2(a[4]),
        .I3(a[6]),
        .I4(a[7]),
        .I5(\spo[25]_INST_0_i_5_n_0 ),
        .O(\spo[25]_INST_0_i_2_n_0 ));
  MUXF7 \spo[25]_INST_0_i_3 
       (.I0(\spo[25]_INST_0_i_6_n_0 ),
        .I1(\spo[25]_INST_0_i_7_n_0 ),
        .O(\spo[25]_INST_0_i_3_n_0 ),
        .S(a[7]));
  LUT6 #(
    .INIT(64'h0021010900000A08)) 
    \spo[25]_INST_0_i_4 
       (.I0(a[0]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[7]),
        .I4(a[6]),
        .I5(a[2]),
        .O(\spo[25]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \spo[25]_INST_0_i_5 
       (.I0(a[1]),
        .I1(a[0]),
        .I2(a[3]),
        .I3(a[2]),
        .O(\spo[25]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0900008018040000)) 
    \spo[25]_INST_0_i_6 
       (.I0(a[2]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[6]),
        .O(\spo[25]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000020001001000)) 
    \spo[25]_INST_0_i_7 
       (.I0(a[4]),
        .I1(a[6]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[25]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8A8A8A8AAA8)) 
    \spo[26]_INST_0 
       (.I0(\spo[31]_INST_0_i_1_n_0 ),
        .I1(\spo[26]_INST_0_i_1_n_0 ),
        .I2(\spo[26]_INST_0_i_2_n_0 ),
        .I3(\spo[26]_INST_0_i_3_n_0 ),
        .I4(a[1]),
        .I5(a[8]),
        .O(spo[26]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \spo[26]_INST_0_i_1 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[8]),
        .I3(\spo[26]_INST_0_i_4_n_0 ),
        .O(\spo[26]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \spo[26]_INST_0_i_2 
       (.I0(a[1]),
        .I1(a[8]),
        .I2(a[3]),
        .I3(\spo[26]_INST_0_i_5_n_0 ),
        .O(\spo[26]_INST_0_i_2_n_0 ));
  MUXF7 \spo[26]_INST_0_i_3 
       (.I0(\spo[26]_INST_0_i_6_n_0 ),
        .I1(\spo[26]_INST_0_i_7_n_0 ),
        .O(\spo[26]_INST_0_i_3_n_0 ),
        .S(a[5]));
  LUT6 #(
    .INIT(64'h0030408809018007)) 
    \spo[26]_INST_0_i_4 
       (.I0(a[2]),
        .I1(a[5]),
        .I2(a[6]),
        .I3(a[4]),
        .I4(a[7]),
        .I5(a[0]),
        .O(\spo[26]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0010800401380820)) 
    \spo[26]_INST_0_i_5 
       (.I0(a[4]),
        .I1(a[6]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[7]),
        .I5(a[5]),
        .O(\spo[26]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5201000880001881)) 
    \spo[26]_INST_0_i_6 
       (.I0(a[6]),
        .I1(a[7]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[3]),
        .O(\spo[26]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h011202002850E10C)) 
    \spo[26]_INST_0_i_7 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[4]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[26]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \spo[27]_INST_0 
       (.I0(\spo[27]_INST_0_i_1_n_0 ),
        .I1(\spo[29]_INST_0_i_2_n_0 ),
        .I2(a[13]),
        .O(spo[27]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \spo[27]_INST_0_i_1 
       (.I0(\spo[27]_INST_0_i_2_n_0 ),
        .I1(\spo[27]_INST_0_i_3_n_0 ),
        .I2(a[4]),
        .I3(a[1]),
        .I4(\spo[27]_INST_0_i_4_n_0 ),
        .I5(\spo[27]_INST_0_i_5_n_0 ),
        .O(\spo[27]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0081880402860404)) 
    \spo[27]_INST_0_i_2 
       (.I0(a[0]),
        .I1(a[3]),
        .I2(a[6]),
        .I3(a[5]),
        .I4(a[7]),
        .I5(a[2]),
        .O(\spo[27]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0001488001800100)) 
    \spo[27]_INST_0_i_3 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[7]),
        .I5(a[6]),
        .O(\spo[27]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0220801C04481001)) 
    \spo[27]_INST_0_i_4 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[6]),
        .I5(a[5]),
        .O(\spo[27]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h1500500104708000)) 
    \spo[27]_INST_0_i_5 
       (.I0(a[6]),
        .I1(a[7]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[5]),
        .I5(a[3]),
        .O(\spo[27]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA00200000)) 
    \spo[28]_INST_0 
       (.I0(\spo[31]_INST_0_i_1_n_0 ),
        .I1(a[7]),
        .I2(a[6]),
        .I3(a[8]),
        .I4(\spo[28]_INST_0_i_1_n_0 ),
        .I5(\spo[28]_INST_0_i_2_n_0 ),
        .O(spo[28]));
  LUT6 #(
    .INIT(64'h0014510804430000)) 
    \spo[28]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[3]),
        .I3(a[4]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[28]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \spo[28]_INST_0_i_2 
       (.I0(a[7]),
        .I1(a[4]),
        .I2(a[8]),
        .I3(a[5]),
        .I4(a[6]),
        .I5(\spo[28]_INST_0_i_3_n_0 ),
        .O(\spo[28]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \spo[28]_INST_0_i_3 
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .O(\spo[28]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \spo[29]_INST_0 
       (.I0(\spo[29]_INST_0_i_1_n_0 ),
        .I1(\spo[29]_INST_0_i_2_n_0 ),
        .I2(a[13]),
        .O(spo[29]));
  LUT6 #(
    .INIT(64'hC0C0C0C0FF00AAAA)) 
    \spo[29]_INST_0_i_1 
       (.I0(\spo[29]_INST_0_i_3_n_0 ),
        .I1(a[0]),
        .I2(\spo[29]_INST_0_i_4_n_0 ),
        .I3(\spo[29]_INST_0_i_5_n_0 ),
        .I4(a[5]),
        .I5(a[6]),
        .O(\spo[29]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \spo[29]_INST_0_i_2 
       (.I0(a[8]),
        .I1(a[9]),
        .I2(a[10]),
        .I3(a[12]),
        .I4(a[11]),
        .O(\spo[29]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4800004000000000)) 
    \spo[29]_INST_0_i_3 
       (.I0(a[4]),
        .I1(a[7]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[2]),
        .O(\spo[29]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0100001201000100)) 
    \spo[29]_INST_0_i_4 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(a[3]),
        .I5(a[2]),
        .O(\spo[29]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0108002408088002)) 
    \spo[29]_INST_0_i_5 
       (.I0(a[0]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[4]),
        .I5(a[7]),
        .O(\spo[29]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0088008000080000)) 
    \spo[2]_INST_0 
       (.I0(\spo[13]_INST_0_i_1_n_0 ),
        .I1(\spo[13]_INST_0_i_2_n_0 ),
        .I2(a[7]),
        .I3(a[8]),
        .I4(\spo[13]_INST_0_i_3_n_0 ),
        .I5(\spo[2]_INST_0_i_1_n_0 ),
        .O(spo[2]));
  LUT6 #(
    .INIT(64'h0010020001000000)) 
    \spo[2]_INST_0_i_1 
       (.I0(a[6]),
        .I1(a[5]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[3]),
        .O(\spo[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA00200000)) 
    \spo[30]_INST_0 
       (.I0(\spo[31]_INST_0_i_1_n_0 ),
        .I1(a[7]),
        .I2(a[0]),
        .I3(a[8]),
        .I4(\spo[30]_INST_0_i_1_n_0 ),
        .I5(\spo[30]_INST_0_i_2_n_0 ),
        .O(spo[30]));
  LUT6 #(
    .INIT(64'h4100100800000800)) 
    \spo[30]_INST_0_i_1 
       (.I0(a[3]),
        .I1(a[4]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[5]),
        .I5(a[6]),
        .O(\spo[30]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \spo[30]_INST_0_i_2 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[8]),
        .I3(\spo[30]_INST_0_i_3_n_0 ),
        .O(\spo[30]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000004200001004)) 
    \spo[30]_INST_0_i_3 
       (.I0(a[2]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[6]),
        .I5(a[4]),
        .O(\spo[30]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAA8888888)) 
    \spo[31]_INST_0 
       (.I0(\spo[31]_INST_0_i_1_n_0 ),
        .I1(\spo[31]_INST_0_i_2_n_0 ),
        .I2(\spo[31]_INST_0_i_3_n_0 ),
        .I3(\spo[31]_INST_0_i_4_n_0 ),
        .I4(a[4]),
        .I5(\spo[31]_INST_0_i_5_n_0 ),
        .O(spo[31]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \spo[31]_INST_0_i_1 
       (.I0(a[9]),
        .I1(a[10]),
        .I2(a[11]),
        .I3(a[13]),
        .I4(a[12]),
        .O(\spo[31]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \spo[31]_INST_0_i_2 
       (.I0(a[4]),
        .I1(a[8]),
        .I2(a[6]),
        .I3(\spo[31]_INST_0_i_6_n_0 ),
        .O(\spo[31]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0040420000000000)) 
    \spo[31]_INST_0_i_3 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[2]),
        .O(\spo[31]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \spo[31]_INST_0_i_4 
       (.I0(a[6]),
        .I1(a[8]),
        .O(\spo[31]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h11100010)) 
    \spo[31]_INST_0_i_5 
       (.I0(a[8]),
        .I1(a[4]),
        .I2(\spo[31]_INST_0_i_7_n_0 ),
        .I3(a[5]),
        .I4(\spo[31]_INST_0_i_8_n_0 ),
        .O(\spo[31]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h020A040009080020)) 
    \spo[31]_INST_0_i_6 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[7]),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[31]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h4002200086000400)) 
    \spo[31]_INST_0_i_7 
       (.I0(a[2]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[7]),
        .I5(a[6]),
        .O(\spo[31]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h4000408200002412)) 
    \spo[31]_INST_0_i_8 
       (.I0(a[7]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[6]),
        .I5(a[3]),
        .O(\spo[31]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAA80AA80AA80)) 
    \spo[3]_INST_0 
       (.I0(\spo[31]_INST_0_i_1_n_0 ),
        .I1(\spo[23]_INST_0_i_1_n_0 ),
        .I2(\spo[3]_INST_0_i_1_n_0 ),
        .I3(\spo[3]_INST_0_i_2_n_0 ),
        .I4(\spo[3]_INST_0_i_3_n_0 ),
        .I5(\spo[3]_INST_0_i_4_n_0 ),
        .O(spo[3]));
  LUT6 #(
    .INIT(64'h2000004000202000)) 
    \spo[3]_INST_0_i_1 
       (.I0(a[2]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[4]),
        .O(\spo[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0808000008000000)) 
    \spo[3]_INST_0_i_2 
       (.I0(a[6]),
        .I1(a[7]),
        .I2(a[8]),
        .I3(\spo[3]_INST_0_i_5_n_0 ),
        .I4(\spo[22]_INST_0_i_7_n_0 ),
        .I5(\spo[3]_INST_0_i_6_n_0 ),
        .O(\spo[3]_INST_0_i_2_n_0 ));
  MUXF7 \spo[3]_INST_0_i_3 
       (.I0(\spo[3]_INST_0_i_7_n_0 ),
        .I1(\spo[3]_INST_0_i_8_n_0 ),
        .O(\spo[3]_INST_0_i_3_n_0 ),
        .S(a[5]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \spo[3]_INST_0_i_4 
       (.I0(a[6]),
        .I1(a[8]),
        .O(\spo[3]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \spo[3]_INST_0_i_5 
       (.I0(a[1]),
        .I1(a[0]),
        .I2(a[3]),
        .I3(a[2]),
        .O(\spo[3]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \spo[3]_INST_0_i_6 
       (.I0(a[1]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[3]),
        .O(\spo[3]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h1004008082000400)) 
    \spo[3]_INST_0_i_7 
       (.I0(a[2]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[7]),
        .I5(a[4]),
        .O(\spo[3]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0042108400400200)) 
    \spo[3]_INST_0_i_8 
       (.I0(a[2]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[7]),
        .O(\spo[3]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8A8A8A8AAA8)) 
    \spo[4]_INST_0 
       (.I0(\spo[31]_INST_0_i_1_n_0 ),
        .I1(\spo[4]_INST_0_i_1_n_0 ),
        .I2(\spo[4]_INST_0_i_2_n_0 ),
        .I3(\spo[4]_INST_0_i_3_n_0 ),
        .I4(a[3]),
        .I5(a[8]),
        .O(spo[4]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \spo[4]_INST_0_i_1 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[8]),
        .I3(\spo[4]_INST_0_i_4_n_0 ),
        .O(\spo[4]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \spo[4]_INST_0_i_2 
       (.I0(a[3]),
        .I1(a[8]),
        .I2(a[2]),
        .I3(\spo[4]_INST_0_i_5_n_0 ),
        .O(\spo[4]_INST_0_i_2_n_0 ));
  MUXF7 \spo[4]_INST_0_i_3 
       (.I0(\spo[4]_INST_0_i_6_n_0 ),
        .I1(\spo[4]_INST_0_i_7_n_0 ),
        .O(\spo[4]_INST_0_i_3_n_0 ),
        .S(a[7]));
  LUT6 #(
    .INIT(64'h0200020802002809)) 
    \spo[4]_INST_0_i_4 
       (.I0(a[0]),
        .I1(a[4]),
        .I2(a[6]),
        .I3(a[7]),
        .I4(a[5]),
        .I5(a[1]),
        .O(\spo[4]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h020000054D00C012)) 
    \spo[4]_INST_0_i_5 
       (.I0(a[1]),
        .I1(a[4]),
        .I2(a[5]),
        .I3(a[0]),
        .I4(a[6]),
        .I5(a[7]),
        .O(\spo[4]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8084008000820000)) 
    \spo[4]_INST_0_i_6 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[6]),
        .I3(a[4]),
        .I4(a[5]),
        .I5(a[1]),
        .O(\spo[4]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0084002400040020)) 
    \spo[4]_INST_0_i_7 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[4]),
        .I3(a[5]),
        .I4(a[6]),
        .I5(a[1]),
        .O(\spo[4]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \spo[5]_INST_0 
       (.I0(a[12]),
        .I1(a[13]),
        .I2(a[7]),
        .I3(a[11]),
        .I4(\spo[5]_INST_0_i_1_n_0 ),
        .O(spo[5]));
  LUT6 #(
    .INIT(64'h008800F000000000)) 
    \spo[5]_INST_0_i_1 
       (.I0(\spo[5]_INST_0_i_2_n_0 ),
        .I1(\spo[5]_INST_0_i_3_n_0 ),
        .I2(\spo[5]_INST_0_i_4_n_0 ),
        .I3(a[8]),
        .I4(a[6]),
        .I5(\spo[13]_INST_0_i_2_n_0 ),
        .O(\spo[5]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \spo[5]_INST_0_i_2 
       (.I0(a[1]),
        .I1(a[0]),
        .I2(a[3]),
        .I3(a[2]),
        .O(\spo[5]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \spo[5]_INST_0_i_3 
       (.I0(a[4]),
        .I1(a[5]),
        .O(\spo[5]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0042100400000000)) 
    \spo[5]_INST_0_i_4 
       (.I0(a[2]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[5]),
        .O(\spo[5]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAA80AA80AA80)) 
    \spo[6]_INST_0 
       (.I0(\spo[31]_INST_0_i_1_n_0 ),
        .I1(\spo[10]_INST_0_i_2_n_0 ),
        .I2(\spo[6]_INST_0_i_1_n_0 ),
        .I3(\spo[6]_INST_0_i_2_n_0 ),
        .I4(\spo[6]_INST_0_i_3_n_0 ),
        .I5(\spo[22]_INST_0_i_5_n_0 ),
        .O(spo[6]));
  LUT6 #(
    .INIT(64'h0008000800280181)) 
    \spo[6]_INST_0_i_1 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[6]),
        .I3(a[4]),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[6]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \spo[6]_INST_0_i_2 
       (.I0(a[7]),
        .I1(a[8]),
        .I2(a[3]),
        .I3(\spo[6]_INST_0_i_4_n_0 ),
        .O(\spo[6]_INST_0_i_2_n_0 ));
  MUXF7 \spo[6]_INST_0_i_3 
       (.I0(\spo[6]_INST_0_i_5_n_0 ),
        .I1(\spo[6]_INST_0_i_6_n_0 ),
        .O(\spo[6]_INST_0_i_3_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'h0084000400840020)) 
    \spo[6]_INST_0_i_4 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[4]),
        .I3(a[5]),
        .I4(a[6]),
        .I5(a[1]),
        .O(\spo[6]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0180008280028200)) 
    \spo[6]_INST_0_i_5 
       (.I0(a[3]),
        .I1(a[4]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[6]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h2008080820202008)) 
    \spo[6]_INST_0_i_6 
       (.I0(a[0]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[5]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[6]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \spo[7]_INST_0 
       (.I0(a[4]),
        .I1(\spo[7]_INST_0_i_1_n_0 ),
        .I2(\spo[7]_INST_0_i_2_n_0 ),
        .I3(a[3]),
        .I4(\spo[11]_INST_0_i_3_n_0 ),
        .I5(\spo[11]_INST_0_i_1_n_0 ),
        .O(spo[7]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \spo[7]_INST_0_i_1 
       (.I0(a[6]),
        .I1(a[7]),
        .O(\spo[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000110)) 
    \spo[7]_INST_0_i_2 
       (.I0(a[8]),
        .I1(a[9]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[5]),
        .I5(a[2]),
        .O(\spo[7]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAA80AA80AA80)) 
    \spo[8]_INST_0 
       (.I0(\spo[31]_INST_0_i_1_n_0 ),
        .I1(\spo[22]_INST_0_i_1_n_0 ),
        .I2(\spo[8]_INST_0_i_1_n_0 ),
        .I3(\spo[8]_INST_0_i_2_n_0 ),
        .I4(\spo[8]_INST_0_i_3_n_0 ),
        .I5(\spo[22]_INST_0_i_5_n_0 ),
        .O(spo[8]));
  LUT6 #(
    .INIT(64'h0000000000050402)) 
    \spo[8]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[2]),
        .O(\spo[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \spo[8]_INST_0_i_2 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[8]),
        .I3(a[4]),
        .I4(a[5]),
        .I5(\spo[25]_INST_0_i_5_n_0 ),
        .O(\spo[8]_INST_0_i_2_n_0 ));
  MUXF7 \spo[8]_INST_0_i_3 
       (.I0(\spo[8]_INST_0_i_4_n_0 ),
        .I1(\spo[8]_INST_0_i_5_n_0 ),
        .O(\spo[8]_INST_0_i_3_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'hA010009080000008)) 
    \spo[8]_INST_0_i_4 
       (.I0(a[2]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[5]),
        .I5(a[6]),
        .O(\spo[8]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0020008424900000)) 
    \spo[8]_INST_0_i_5 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[6]),
        .I5(a[5]),
        .O(\spo[8]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \spo[9]_INST_0 
       (.I0(\spo[9]_INST_0_i_1_n_0 ),
        .I1(\spo[29]_INST_0_i_2_n_0 ),
        .I2(a[13]),
        .O(spo[9]));
  LUT6 #(
    .INIT(64'hC0C0C0C0FF00AAAA)) 
    \spo[9]_INST_0_i_1 
       (.I0(\spo[9]_INST_0_i_2_n_0 ),
        .I1(a[0]),
        .I2(\spo[9]_INST_0_i_3_n_0 ),
        .I3(\spo[9]_INST_0_i_4_n_0 ),
        .I4(a[5]),
        .I5(a[7]),
        .O(\spo[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000800001400008)) 
    \spo[9]_INST_0_i_2 
       (.I0(a[2]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[6]),
        .I5(a[4]),
        .O(\spo[9]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000240000000)) 
    \spo[9]_INST_0_i_3 
       (.I0(a[5]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[4]),
        .O(\spo[9]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000408280008200)) 
    \spo[9]_INST_0_i_4 
       (.I0(a[2]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[6]),
        .I5(a[4]),
        .O(\spo[9]_INST_0_i_4_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
