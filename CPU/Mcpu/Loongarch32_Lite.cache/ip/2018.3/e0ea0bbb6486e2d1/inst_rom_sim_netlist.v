// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Jan 12 00:06:47 2026
// Host        : violet running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ inst_rom_sim_netlist.v
// Design      : inst_rom
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "inst_rom,dist_mem_gen_v8_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_12,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12 U0
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
(* C_SYNC_ENABLE = "1" *) (* C_WIDTH = "32" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12
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
  wire [31:0]\^spo ;

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
  assign spo[31:8] = \^spo [31:8];
  assign spo[7] = \<const0> ;
  assign spo[6:0] = \^spo [6:0];
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12_synth \synth_options.dist_mem_inst 
       (.a(a),
        .spo({\^spo [31:8],\^spo [6:0]}));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12_synth
   (spo,
    a);
  output [30:0]spo;
  input [13:0]a;

  wire [13:0]a;
  wire [30:0]spo;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rom \gen_rom.rom_inst 
       (.a(a),
        .spo(spo));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rom
   (spo,
    a);
  output [30:0]spo;
  input [13:0]a;

  wire [13:0]a;
  wire [30:0]spo;
  wire \spo[0]_INST_0_i_10_n_0 ;
  wire \spo[0]_INST_0_i_11_n_0 ;
  wire \spo[0]_INST_0_i_12_n_0 ;
  wire \spo[0]_INST_0_i_13_n_0 ;
  wire \spo[0]_INST_0_i_14_n_0 ;
  wire \spo[0]_INST_0_i_15_n_0 ;
  wire \spo[0]_INST_0_i_16_n_0 ;
  wire \spo[0]_INST_0_i_17_n_0 ;
  wire \spo[0]_INST_0_i_18_n_0 ;
  wire \spo[0]_INST_0_i_19_n_0 ;
  wire \spo[0]_INST_0_i_1_n_0 ;
  wire \spo[0]_INST_0_i_20_n_0 ;
  wire \spo[0]_INST_0_i_21_n_0 ;
  wire \spo[0]_INST_0_i_22_n_0 ;
  wire \spo[0]_INST_0_i_23_n_0 ;
  wire \spo[0]_INST_0_i_24_n_0 ;
  wire \spo[0]_INST_0_i_25_n_0 ;
  wire \spo[0]_INST_0_i_26_n_0 ;
  wire \spo[0]_INST_0_i_27_n_0 ;
  wire \spo[0]_INST_0_i_28_n_0 ;
  wire \spo[0]_INST_0_i_2_n_0 ;
  wire \spo[0]_INST_0_i_3_n_0 ;
  wire \spo[0]_INST_0_i_4_n_0 ;
  wire \spo[0]_INST_0_i_5_n_0 ;
  wire \spo[0]_INST_0_i_6_n_0 ;
  wire \spo[0]_INST_0_i_7_n_0 ;
  wire \spo[0]_INST_0_i_8_n_0 ;
  wire \spo[0]_INST_0_i_9_n_0 ;
  wire \spo[10]_INST_0_i_10_n_0 ;
  wire \spo[10]_INST_0_i_11_n_0 ;
  wire \spo[10]_INST_0_i_12_n_0 ;
  wire \spo[10]_INST_0_i_13_n_0 ;
  wire \spo[10]_INST_0_i_14_n_0 ;
  wire \spo[10]_INST_0_i_15_n_0 ;
  wire \spo[10]_INST_0_i_16_n_0 ;
  wire \spo[10]_INST_0_i_17_n_0 ;
  wire \spo[10]_INST_0_i_18_n_0 ;
  wire \spo[10]_INST_0_i_19_n_0 ;
  wire \spo[10]_INST_0_i_1_n_0 ;
  wire \spo[10]_INST_0_i_20_n_0 ;
  wire \spo[10]_INST_0_i_21_n_0 ;
  wire \spo[10]_INST_0_i_22_n_0 ;
  wire \spo[10]_INST_0_i_23_n_0 ;
  wire \spo[10]_INST_0_i_24_n_0 ;
  wire \spo[10]_INST_0_i_25_n_0 ;
  wire \spo[10]_INST_0_i_26_n_0 ;
  wire \spo[10]_INST_0_i_27_n_0 ;
  wire \spo[10]_INST_0_i_28_n_0 ;
  wire \spo[10]_INST_0_i_29_n_0 ;
  wire \spo[10]_INST_0_i_2_n_0 ;
  wire \spo[10]_INST_0_i_30_n_0 ;
  wire \spo[10]_INST_0_i_31_n_0 ;
  wire \spo[10]_INST_0_i_32_n_0 ;
  wire \spo[10]_INST_0_i_33_n_0 ;
  wire \spo[10]_INST_0_i_34_n_0 ;
  wire \spo[10]_INST_0_i_35_n_0 ;
  wire \spo[10]_INST_0_i_36_n_0 ;
  wire \spo[10]_INST_0_i_37_n_0 ;
  wire \spo[10]_INST_0_i_38_n_0 ;
  wire \spo[10]_INST_0_i_39_n_0 ;
  wire \spo[10]_INST_0_i_3_n_0 ;
  wire \spo[10]_INST_0_i_40_n_0 ;
  wire \spo[10]_INST_0_i_41_n_0 ;
  wire \spo[10]_INST_0_i_42_n_0 ;
  wire \spo[10]_INST_0_i_4_n_0 ;
  wire \spo[10]_INST_0_i_5_n_0 ;
  wire \spo[10]_INST_0_i_6_n_0 ;
  wire \spo[10]_INST_0_i_7_n_0 ;
  wire \spo[10]_INST_0_i_8_n_0 ;
  wire \spo[10]_INST_0_i_9_n_0 ;
  wire \spo[11]_INST_0_i_10_n_0 ;
  wire \spo[11]_INST_0_i_11_n_0 ;
  wire \spo[11]_INST_0_i_12_n_0 ;
  wire \spo[11]_INST_0_i_13_n_0 ;
  wire \spo[11]_INST_0_i_14_n_0 ;
  wire \spo[11]_INST_0_i_15_n_0 ;
  wire \spo[11]_INST_0_i_16_n_0 ;
  wire \spo[11]_INST_0_i_17_n_0 ;
  wire \spo[11]_INST_0_i_18_n_0 ;
  wire \spo[11]_INST_0_i_19_n_0 ;
  wire \spo[11]_INST_0_i_1_n_0 ;
  wire \spo[11]_INST_0_i_20_n_0 ;
  wire \spo[11]_INST_0_i_21_n_0 ;
  wire \spo[11]_INST_0_i_22_n_0 ;
  wire \spo[11]_INST_0_i_23_n_0 ;
  wire \spo[11]_INST_0_i_24_n_0 ;
  wire \spo[11]_INST_0_i_25_n_0 ;
  wire \spo[11]_INST_0_i_26_n_0 ;
  wire \spo[11]_INST_0_i_27_n_0 ;
  wire \spo[11]_INST_0_i_28_n_0 ;
  wire \spo[11]_INST_0_i_29_n_0 ;
  wire \spo[11]_INST_0_i_2_n_0 ;
  wire \spo[11]_INST_0_i_30_n_0 ;
  wire \spo[11]_INST_0_i_31_n_0 ;
  wire \spo[11]_INST_0_i_32_n_0 ;
  wire \spo[11]_INST_0_i_33_n_0 ;
  wire \spo[11]_INST_0_i_34_n_0 ;
  wire \spo[11]_INST_0_i_35_n_0 ;
  wire \spo[11]_INST_0_i_36_n_0 ;
  wire \spo[11]_INST_0_i_37_n_0 ;
  wire \spo[11]_INST_0_i_38_n_0 ;
  wire \spo[11]_INST_0_i_39_n_0 ;
  wire \spo[11]_INST_0_i_3_n_0 ;
  wire \spo[11]_INST_0_i_40_n_0 ;
  wire \spo[11]_INST_0_i_4_n_0 ;
  wire \spo[11]_INST_0_i_5_n_0 ;
  wire \spo[11]_INST_0_i_6_n_0 ;
  wire \spo[11]_INST_0_i_7_n_0 ;
  wire \spo[11]_INST_0_i_8_n_0 ;
  wire \spo[11]_INST_0_i_9_n_0 ;
  wire \spo[12]_INST_0_i_10_n_0 ;
  wire \spo[12]_INST_0_i_11_n_0 ;
  wire \spo[12]_INST_0_i_12_n_0 ;
  wire \spo[12]_INST_0_i_13_n_0 ;
  wire \spo[12]_INST_0_i_14_n_0 ;
  wire \spo[12]_INST_0_i_15_n_0 ;
  wire \spo[12]_INST_0_i_16_n_0 ;
  wire \spo[12]_INST_0_i_17_n_0 ;
  wire \spo[12]_INST_0_i_18_n_0 ;
  wire \spo[12]_INST_0_i_19_n_0 ;
  wire \spo[12]_INST_0_i_1_n_0 ;
  wire \spo[12]_INST_0_i_20_n_0 ;
  wire \spo[12]_INST_0_i_21_n_0 ;
  wire \spo[12]_INST_0_i_22_n_0 ;
  wire \spo[12]_INST_0_i_23_n_0 ;
  wire \spo[12]_INST_0_i_24_n_0 ;
  wire \spo[12]_INST_0_i_25_n_0 ;
  wire \spo[12]_INST_0_i_26_n_0 ;
  wire \spo[12]_INST_0_i_27_n_0 ;
  wire \spo[12]_INST_0_i_28_n_0 ;
  wire \spo[12]_INST_0_i_29_n_0 ;
  wire \spo[12]_INST_0_i_2_n_0 ;
  wire \spo[12]_INST_0_i_30_n_0 ;
  wire \spo[12]_INST_0_i_31_n_0 ;
  wire \spo[12]_INST_0_i_32_n_0 ;
  wire \spo[12]_INST_0_i_33_n_0 ;
  wire \spo[12]_INST_0_i_34_n_0 ;
  wire \spo[12]_INST_0_i_35_n_0 ;
  wire \spo[12]_INST_0_i_36_n_0 ;
  wire \spo[12]_INST_0_i_37_n_0 ;
  wire \spo[12]_INST_0_i_38_n_0 ;
  wire \spo[12]_INST_0_i_39_n_0 ;
  wire \spo[12]_INST_0_i_3_n_0 ;
  wire \spo[12]_INST_0_i_40_n_0 ;
  wire \spo[12]_INST_0_i_41_n_0 ;
  wire \spo[12]_INST_0_i_42_n_0 ;
  wire \spo[12]_INST_0_i_4_n_0 ;
  wire \spo[12]_INST_0_i_5_n_0 ;
  wire \spo[12]_INST_0_i_6_n_0 ;
  wire \spo[12]_INST_0_i_7_n_0 ;
  wire \spo[12]_INST_0_i_8_n_0 ;
  wire \spo[12]_INST_0_i_9_n_0 ;
  wire \spo[13]_INST_0_i_10_n_0 ;
  wire \spo[13]_INST_0_i_11_n_0 ;
  wire \spo[13]_INST_0_i_12_n_0 ;
  wire \spo[13]_INST_0_i_13_n_0 ;
  wire \spo[13]_INST_0_i_14_n_0 ;
  wire \spo[13]_INST_0_i_15_n_0 ;
  wire \spo[13]_INST_0_i_16_n_0 ;
  wire \spo[13]_INST_0_i_17_n_0 ;
  wire \spo[13]_INST_0_i_18_n_0 ;
  wire \spo[13]_INST_0_i_19_n_0 ;
  wire \spo[13]_INST_0_i_1_n_0 ;
  wire \spo[13]_INST_0_i_20_n_0 ;
  wire \spo[13]_INST_0_i_21_n_0 ;
  wire \spo[13]_INST_0_i_22_n_0 ;
  wire \spo[13]_INST_0_i_23_n_0 ;
  wire \spo[13]_INST_0_i_24_n_0 ;
  wire \spo[13]_INST_0_i_25_n_0 ;
  wire \spo[13]_INST_0_i_26_n_0 ;
  wire \spo[13]_INST_0_i_27_n_0 ;
  wire \spo[13]_INST_0_i_28_n_0 ;
  wire \spo[13]_INST_0_i_29_n_0 ;
  wire \spo[13]_INST_0_i_2_n_0 ;
  wire \spo[13]_INST_0_i_30_n_0 ;
  wire \spo[13]_INST_0_i_31_n_0 ;
  wire \spo[13]_INST_0_i_32_n_0 ;
  wire \spo[13]_INST_0_i_33_n_0 ;
  wire \spo[13]_INST_0_i_34_n_0 ;
  wire \spo[13]_INST_0_i_35_n_0 ;
  wire \spo[13]_INST_0_i_36_n_0 ;
  wire \spo[13]_INST_0_i_37_n_0 ;
  wire \spo[13]_INST_0_i_38_n_0 ;
  wire \spo[13]_INST_0_i_39_n_0 ;
  wire \spo[13]_INST_0_i_3_n_0 ;
  wire \spo[13]_INST_0_i_40_n_0 ;
  wire \spo[13]_INST_0_i_4_n_0 ;
  wire \spo[13]_INST_0_i_5_n_0 ;
  wire \spo[13]_INST_0_i_6_n_0 ;
  wire \spo[13]_INST_0_i_7_n_0 ;
  wire \spo[13]_INST_0_i_8_n_0 ;
  wire \spo[13]_INST_0_i_9_n_0 ;
  wire \spo[14]_INST_0_i_10_n_0 ;
  wire \spo[14]_INST_0_i_11_n_0 ;
  wire \spo[14]_INST_0_i_12_n_0 ;
  wire \spo[14]_INST_0_i_13_n_0 ;
  wire \spo[14]_INST_0_i_14_n_0 ;
  wire \spo[14]_INST_0_i_15_n_0 ;
  wire \spo[14]_INST_0_i_16_n_0 ;
  wire \spo[14]_INST_0_i_17_n_0 ;
  wire \spo[14]_INST_0_i_18_n_0 ;
  wire \spo[14]_INST_0_i_19_n_0 ;
  wire \spo[14]_INST_0_i_1_n_0 ;
  wire \spo[14]_INST_0_i_20_n_0 ;
  wire \spo[14]_INST_0_i_21_n_0 ;
  wire \spo[14]_INST_0_i_22_n_0 ;
  wire \spo[14]_INST_0_i_23_n_0 ;
  wire \spo[14]_INST_0_i_24_n_0 ;
  wire \spo[14]_INST_0_i_25_n_0 ;
  wire \spo[14]_INST_0_i_26_n_0 ;
  wire \spo[14]_INST_0_i_27_n_0 ;
  wire \spo[14]_INST_0_i_28_n_0 ;
  wire \spo[14]_INST_0_i_29_n_0 ;
  wire \spo[14]_INST_0_i_2_n_0 ;
  wire \spo[14]_INST_0_i_30_n_0 ;
  wire \spo[14]_INST_0_i_31_n_0 ;
  wire \spo[14]_INST_0_i_32_n_0 ;
  wire \spo[14]_INST_0_i_33_n_0 ;
  wire \spo[14]_INST_0_i_34_n_0 ;
  wire \spo[14]_INST_0_i_35_n_0 ;
  wire \spo[14]_INST_0_i_36_n_0 ;
  wire \spo[14]_INST_0_i_37_n_0 ;
  wire \spo[14]_INST_0_i_38_n_0 ;
  wire \spo[14]_INST_0_i_39_n_0 ;
  wire \spo[14]_INST_0_i_3_n_0 ;
  wire \spo[14]_INST_0_i_40_n_0 ;
  wire \spo[14]_INST_0_i_41_n_0 ;
  wire \spo[14]_INST_0_i_4_n_0 ;
  wire \spo[14]_INST_0_i_5_n_0 ;
  wire \spo[14]_INST_0_i_6_n_0 ;
  wire \spo[14]_INST_0_i_7_n_0 ;
  wire \spo[14]_INST_0_i_8_n_0 ;
  wire \spo[14]_INST_0_i_9_n_0 ;
  wire \spo[15]_INST_0_i_10_n_0 ;
  wire \spo[15]_INST_0_i_11_n_0 ;
  wire \spo[15]_INST_0_i_12_n_0 ;
  wire \spo[15]_INST_0_i_13_n_0 ;
  wire \spo[15]_INST_0_i_14_n_0 ;
  wire \spo[15]_INST_0_i_15_n_0 ;
  wire \spo[15]_INST_0_i_16_n_0 ;
  wire \spo[15]_INST_0_i_17_n_0 ;
  wire \spo[15]_INST_0_i_18_n_0 ;
  wire \spo[15]_INST_0_i_19_n_0 ;
  wire \spo[15]_INST_0_i_1_n_0 ;
  wire \spo[15]_INST_0_i_20_n_0 ;
  wire \spo[15]_INST_0_i_21_n_0 ;
  wire \spo[15]_INST_0_i_22_n_0 ;
  wire \spo[15]_INST_0_i_23_n_0 ;
  wire \spo[15]_INST_0_i_24_n_0 ;
  wire \spo[15]_INST_0_i_25_n_0 ;
  wire \spo[15]_INST_0_i_26_n_0 ;
  wire \spo[15]_INST_0_i_27_n_0 ;
  wire \spo[15]_INST_0_i_28_n_0 ;
  wire \spo[15]_INST_0_i_29_n_0 ;
  wire \spo[15]_INST_0_i_2_n_0 ;
  wire \spo[15]_INST_0_i_30_n_0 ;
  wire \spo[15]_INST_0_i_31_n_0 ;
  wire \spo[15]_INST_0_i_32_n_0 ;
  wire \spo[15]_INST_0_i_33_n_0 ;
  wire \spo[15]_INST_0_i_34_n_0 ;
  wire \spo[15]_INST_0_i_35_n_0 ;
  wire \spo[15]_INST_0_i_36_n_0 ;
  wire \spo[15]_INST_0_i_37_n_0 ;
  wire \spo[15]_INST_0_i_38_n_0 ;
  wire \spo[15]_INST_0_i_39_n_0 ;
  wire \spo[15]_INST_0_i_3_n_0 ;
  wire \spo[15]_INST_0_i_40_n_0 ;
  wire \spo[15]_INST_0_i_41_n_0 ;
  wire \spo[15]_INST_0_i_4_n_0 ;
  wire \spo[15]_INST_0_i_5_n_0 ;
  wire \spo[15]_INST_0_i_6_n_0 ;
  wire \spo[15]_INST_0_i_7_n_0 ;
  wire \spo[15]_INST_0_i_8_n_0 ;
  wire \spo[15]_INST_0_i_9_n_0 ;
  wire \spo[16]_INST_0_i_10_n_0 ;
  wire \spo[16]_INST_0_i_11_n_0 ;
  wire \spo[16]_INST_0_i_12_n_0 ;
  wire \spo[16]_INST_0_i_13_n_0 ;
  wire \spo[16]_INST_0_i_14_n_0 ;
  wire \spo[16]_INST_0_i_15_n_0 ;
  wire \spo[16]_INST_0_i_16_n_0 ;
  wire \spo[16]_INST_0_i_17_n_0 ;
  wire \spo[16]_INST_0_i_18_n_0 ;
  wire \spo[16]_INST_0_i_19_n_0 ;
  wire \spo[16]_INST_0_i_1_n_0 ;
  wire \spo[16]_INST_0_i_20_n_0 ;
  wire \spo[16]_INST_0_i_21_n_0 ;
  wire \spo[16]_INST_0_i_22_n_0 ;
  wire \spo[16]_INST_0_i_23_n_0 ;
  wire \spo[16]_INST_0_i_24_n_0 ;
  wire \spo[16]_INST_0_i_25_n_0 ;
  wire \spo[16]_INST_0_i_26_n_0 ;
  wire \spo[16]_INST_0_i_27_n_0 ;
  wire \spo[16]_INST_0_i_28_n_0 ;
  wire \spo[16]_INST_0_i_29_n_0 ;
  wire \spo[16]_INST_0_i_2_n_0 ;
  wire \spo[16]_INST_0_i_30_n_0 ;
  wire \spo[16]_INST_0_i_31_n_0 ;
  wire \spo[16]_INST_0_i_32_n_0 ;
  wire \spo[16]_INST_0_i_33_n_0 ;
  wire \spo[16]_INST_0_i_34_n_0 ;
  wire \spo[16]_INST_0_i_35_n_0 ;
  wire \spo[16]_INST_0_i_36_n_0 ;
  wire \spo[16]_INST_0_i_37_n_0 ;
  wire \spo[16]_INST_0_i_38_n_0 ;
  wire \spo[16]_INST_0_i_39_n_0 ;
  wire \spo[16]_INST_0_i_3_n_0 ;
  wire \spo[16]_INST_0_i_40_n_0 ;
  wire \spo[16]_INST_0_i_41_n_0 ;
  wire \spo[16]_INST_0_i_4_n_0 ;
  wire \spo[16]_INST_0_i_5_n_0 ;
  wire \spo[16]_INST_0_i_6_n_0 ;
  wire \spo[16]_INST_0_i_7_n_0 ;
  wire \spo[16]_INST_0_i_8_n_0 ;
  wire \spo[16]_INST_0_i_9_n_0 ;
  wire \spo[17]_INST_0_i_10_n_0 ;
  wire \spo[17]_INST_0_i_11_n_0 ;
  wire \spo[17]_INST_0_i_12_n_0 ;
  wire \spo[17]_INST_0_i_13_n_0 ;
  wire \spo[17]_INST_0_i_14_n_0 ;
  wire \spo[17]_INST_0_i_15_n_0 ;
  wire \spo[17]_INST_0_i_16_n_0 ;
  wire \spo[17]_INST_0_i_17_n_0 ;
  wire \spo[17]_INST_0_i_18_n_0 ;
  wire \spo[17]_INST_0_i_19_n_0 ;
  wire \spo[17]_INST_0_i_1_n_0 ;
  wire \spo[17]_INST_0_i_20_n_0 ;
  wire \spo[17]_INST_0_i_21_n_0 ;
  wire \spo[17]_INST_0_i_22_n_0 ;
  wire \spo[17]_INST_0_i_23_n_0 ;
  wire \spo[17]_INST_0_i_24_n_0 ;
  wire \spo[17]_INST_0_i_25_n_0 ;
  wire \spo[17]_INST_0_i_26_n_0 ;
  wire \spo[17]_INST_0_i_27_n_0 ;
  wire \spo[17]_INST_0_i_28_n_0 ;
  wire \spo[17]_INST_0_i_29_n_0 ;
  wire \spo[17]_INST_0_i_2_n_0 ;
  wire \spo[17]_INST_0_i_30_n_0 ;
  wire \spo[17]_INST_0_i_31_n_0 ;
  wire \spo[17]_INST_0_i_32_n_0 ;
  wire \spo[17]_INST_0_i_33_n_0 ;
  wire \spo[17]_INST_0_i_34_n_0 ;
  wire \spo[17]_INST_0_i_35_n_0 ;
  wire \spo[17]_INST_0_i_36_n_0 ;
  wire \spo[17]_INST_0_i_37_n_0 ;
  wire \spo[17]_INST_0_i_38_n_0 ;
  wire \spo[17]_INST_0_i_39_n_0 ;
  wire \spo[17]_INST_0_i_3_n_0 ;
  wire \spo[17]_INST_0_i_40_n_0 ;
  wire \spo[17]_INST_0_i_41_n_0 ;
  wire \spo[17]_INST_0_i_42_n_0 ;
  wire \spo[17]_INST_0_i_4_n_0 ;
  wire \spo[17]_INST_0_i_5_n_0 ;
  wire \spo[17]_INST_0_i_6_n_0 ;
  wire \spo[17]_INST_0_i_7_n_0 ;
  wire \spo[17]_INST_0_i_8_n_0 ;
  wire \spo[17]_INST_0_i_9_n_0 ;
  wire \spo[18]_INST_0_i_10_n_0 ;
  wire \spo[18]_INST_0_i_11_n_0 ;
  wire \spo[18]_INST_0_i_12_n_0 ;
  wire \spo[18]_INST_0_i_13_n_0 ;
  wire \spo[18]_INST_0_i_14_n_0 ;
  wire \spo[18]_INST_0_i_15_n_0 ;
  wire \spo[18]_INST_0_i_16_n_0 ;
  wire \spo[18]_INST_0_i_17_n_0 ;
  wire \spo[18]_INST_0_i_18_n_0 ;
  wire \spo[18]_INST_0_i_19_n_0 ;
  wire \spo[18]_INST_0_i_1_n_0 ;
  wire \spo[18]_INST_0_i_20_n_0 ;
  wire \spo[18]_INST_0_i_21_n_0 ;
  wire \spo[18]_INST_0_i_22_n_0 ;
  wire \spo[18]_INST_0_i_23_n_0 ;
  wire \spo[18]_INST_0_i_24_n_0 ;
  wire \spo[18]_INST_0_i_25_n_0 ;
  wire \spo[18]_INST_0_i_26_n_0 ;
  wire \spo[18]_INST_0_i_27_n_0 ;
  wire \spo[18]_INST_0_i_28_n_0 ;
  wire \spo[18]_INST_0_i_29_n_0 ;
  wire \spo[18]_INST_0_i_2_n_0 ;
  wire \spo[18]_INST_0_i_30_n_0 ;
  wire \spo[18]_INST_0_i_31_n_0 ;
  wire \spo[18]_INST_0_i_32_n_0 ;
  wire \spo[18]_INST_0_i_33_n_0 ;
  wire \spo[18]_INST_0_i_34_n_0 ;
  wire \spo[18]_INST_0_i_35_n_0 ;
  wire \spo[18]_INST_0_i_36_n_0 ;
  wire \spo[18]_INST_0_i_37_n_0 ;
  wire \spo[18]_INST_0_i_38_n_0 ;
  wire \spo[18]_INST_0_i_39_n_0 ;
  wire \spo[18]_INST_0_i_3_n_0 ;
  wire \spo[18]_INST_0_i_40_n_0 ;
  wire \spo[18]_INST_0_i_4_n_0 ;
  wire \spo[18]_INST_0_i_5_n_0 ;
  wire \spo[18]_INST_0_i_6_n_0 ;
  wire \spo[18]_INST_0_i_7_n_0 ;
  wire \spo[18]_INST_0_i_8_n_0 ;
  wire \spo[18]_INST_0_i_9_n_0 ;
  wire \spo[19]_INST_0_i_10_n_0 ;
  wire \spo[19]_INST_0_i_11_n_0 ;
  wire \spo[19]_INST_0_i_12_n_0 ;
  wire \spo[19]_INST_0_i_13_n_0 ;
  wire \spo[19]_INST_0_i_14_n_0 ;
  wire \spo[19]_INST_0_i_15_n_0 ;
  wire \spo[19]_INST_0_i_16_n_0 ;
  wire \spo[19]_INST_0_i_17_n_0 ;
  wire \spo[19]_INST_0_i_18_n_0 ;
  wire \spo[19]_INST_0_i_19_n_0 ;
  wire \spo[19]_INST_0_i_1_n_0 ;
  wire \spo[19]_INST_0_i_20_n_0 ;
  wire \spo[19]_INST_0_i_21_n_0 ;
  wire \spo[19]_INST_0_i_22_n_0 ;
  wire \spo[19]_INST_0_i_23_n_0 ;
  wire \spo[19]_INST_0_i_24_n_0 ;
  wire \spo[19]_INST_0_i_25_n_0 ;
  wire \spo[19]_INST_0_i_26_n_0 ;
  wire \spo[19]_INST_0_i_27_n_0 ;
  wire \spo[19]_INST_0_i_28_n_0 ;
  wire \spo[19]_INST_0_i_29_n_0 ;
  wire \spo[19]_INST_0_i_2_n_0 ;
  wire \spo[19]_INST_0_i_30_n_0 ;
  wire \spo[19]_INST_0_i_31_n_0 ;
  wire \spo[19]_INST_0_i_32_n_0 ;
  wire \spo[19]_INST_0_i_33_n_0 ;
  wire \spo[19]_INST_0_i_34_n_0 ;
  wire \spo[19]_INST_0_i_35_n_0 ;
  wire \spo[19]_INST_0_i_36_n_0 ;
  wire \spo[19]_INST_0_i_37_n_0 ;
  wire \spo[19]_INST_0_i_38_n_0 ;
  wire \spo[19]_INST_0_i_39_n_0 ;
  wire \spo[19]_INST_0_i_3_n_0 ;
  wire \spo[19]_INST_0_i_40_n_0 ;
  wire \spo[19]_INST_0_i_4_n_0 ;
  wire \spo[19]_INST_0_i_5_n_0 ;
  wire \spo[19]_INST_0_i_6_n_0 ;
  wire \spo[19]_INST_0_i_7_n_0 ;
  wire \spo[19]_INST_0_i_8_n_0 ;
  wire \spo[19]_INST_0_i_9_n_0 ;
  wire \spo[1]_INST_0_i_10_n_0 ;
  wire \spo[1]_INST_0_i_11_n_0 ;
  wire \spo[1]_INST_0_i_12_n_0 ;
  wire \spo[1]_INST_0_i_13_n_0 ;
  wire \spo[1]_INST_0_i_14_n_0 ;
  wire \spo[1]_INST_0_i_15_n_0 ;
  wire \spo[1]_INST_0_i_16_n_0 ;
  wire \spo[1]_INST_0_i_17_n_0 ;
  wire \spo[1]_INST_0_i_18_n_0 ;
  wire \spo[1]_INST_0_i_19_n_0 ;
  wire \spo[1]_INST_0_i_1_n_0 ;
  wire \spo[1]_INST_0_i_20_n_0 ;
  wire \spo[1]_INST_0_i_21_n_0 ;
  wire \spo[1]_INST_0_i_22_n_0 ;
  wire \spo[1]_INST_0_i_23_n_0 ;
  wire \spo[1]_INST_0_i_24_n_0 ;
  wire \spo[1]_INST_0_i_25_n_0 ;
  wire \spo[1]_INST_0_i_26_n_0 ;
  wire \spo[1]_INST_0_i_27_n_0 ;
  wire \spo[1]_INST_0_i_28_n_0 ;
  wire \spo[1]_INST_0_i_29_n_0 ;
  wire \spo[1]_INST_0_i_2_n_0 ;
  wire \spo[1]_INST_0_i_30_n_0 ;
  wire \spo[1]_INST_0_i_31_n_0 ;
  wire \spo[1]_INST_0_i_32_n_0 ;
  wire \spo[1]_INST_0_i_33_n_0 ;
  wire \spo[1]_INST_0_i_34_n_0 ;
  wire \spo[1]_INST_0_i_35_n_0 ;
  wire \spo[1]_INST_0_i_3_n_0 ;
  wire \spo[1]_INST_0_i_4_n_0 ;
  wire \spo[1]_INST_0_i_5_n_0 ;
  wire \spo[1]_INST_0_i_6_n_0 ;
  wire \spo[1]_INST_0_i_7_n_0 ;
  wire \spo[1]_INST_0_i_8_n_0 ;
  wire \spo[1]_INST_0_i_9_n_0 ;
  wire \spo[20]_INST_0_i_10_n_0 ;
  wire \spo[20]_INST_0_i_11_n_0 ;
  wire \spo[20]_INST_0_i_12_n_0 ;
  wire \spo[20]_INST_0_i_13_n_0 ;
  wire \spo[20]_INST_0_i_14_n_0 ;
  wire \spo[20]_INST_0_i_15_n_0 ;
  wire \spo[20]_INST_0_i_16_n_0 ;
  wire \spo[20]_INST_0_i_17_n_0 ;
  wire \spo[20]_INST_0_i_18_n_0 ;
  wire \spo[20]_INST_0_i_19_n_0 ;
  wire \spo[20]_INST_0_i_1_n_0 ;
  wire \spo[20]_INST_0_i_20_n_0 ;
  wire \spo[20]_INST_0_i_21_n_0 ;
  wire \spo[20]_INST_0_i_22_n_0 ;
  wire \spo[20]_INST_0_i_23_n_0 ;
  wire \spo[20]_INST_0_i_24_n_0 ;
  wire \spo[20]_INST_0_i_25_n_0 ;
  wire \spo[20]_INST_0_i_26_n_0 ;
  wire \spo[20]_INST_0_i_27_n_0 ;
  wire \spo[20]_INST_0_i_28_n_0 ;
  wire \spo[20]_INST_0_i_29_n_0 ;
  wire \spo[20]_INST_0_i_2_n_0 ;
  wire \spo[20]_INST_0_i_30_n_0 ;
  wire \spo[20]_INST_0_i_31_n_0 ;
  wire \spo[20]_INST_0_i_32_n_0 ;
  wire \spo[20]_INST_0_i_33_n_0 ;
  wire \spo[20]_INST_0_i_34_n_0 ;
  wire \spo[20]_INST_0_i_35_n_0 ;
  wire \spo[20]_INST_0_i_36_n_0 ;
  wire \spo[20]_INST_0_i_37_n_0 ;
  wire \spo[20]_INST_0_i_38_n_0 ;
  wire \spo[20]_INST_0_i_39_n_0 ;
  wire \spo[20]_INST_0_i_3_n_0 ;
  wire \spo[20]_INST_0_i_40_n_0 ;
  wire \spo[20]_INST_0_i_41_n_0 ;
  wire \spo[20]_INST_0_i_42_n_0 ;
  wire \spo[20]_INST_0_i_4_n_0 ;
  wire \spo[20]_INST_0_i_5_n_0 ;
  wire \spo[20]_INST_0_i_6_n_0 ;
  wire \spo[20]_INST_0_i_7_n_0 ;
  wire \spo[20]_INST_0_i_8_n_0 ;
  wire \spo[20]_INST_0_i_9_n_0 ;
  wire \spo[21]_INST_0_i_10_n_0 ;
  wire \spo[21]_INST_0_i_11_n_0 ;
  wire \spo[21]_INST_0_i_12_n_0 ;
  wire \spo[21]_INST_0_i_13_n_0 ;
  wire \spo[21]_INST_0_i_14_n_0 ;
  wire \spo[21]_INST_0_i_15_n_0 ;
  wire \spo[21]_INST_0_i_16_n_0 ;
  wire \spo[21]_INST_0_i_17_n_0 ;
  wire \spo[21]_INST_0_i_18_n_0 ;
  wire \spo[21]_INST_0_i_19_n_0 ;
  wire \spo[21]_INST_0_i_1_n_0 ;
  wire \spo[21]_INST_0_i_20_n_0 ;
  wire \spo[21]_INST_0_i_21_n_0 ;
  wire \spo[21]_INST_0_i_22_n_0 ;
  wire \spo[21]_INST_0_i_23_n_0 ;
  wire \spo[21]_INST_0_i_24_n_0 ;
  wire \spo[21]_INST_0_i_25_n_0 ;
  wire \spo[21]_INST_0_i_26_n_0 ;
  wire \spo[21]_INST_0_i_27_n_0 ;
  wire \spo[21]_INST_0_i_28_n_0 ;
  wire \spo[21]_INST_0_i_29_n_0 ;
  wire \spo[21]_INST_0_i_2_n_0 ;
  wire \spo[21]_INST_0_i_30_n_0 ;
  wire \spo[21]_INST_0_i_31_n_0 ;
  wire \spo[21]_INST_0_i_32_n_0 ;
  wire \spo[21]_INST_0_i_33_n_0 ;
  wire \spo[21]_INST_0_i_34_n_0 ;
  wire \spo[21]_INST_0_i_35_n_0 ;
  wire \spo[21]_INST_0_i_36_n_0 ;
  wire \spo[21]_INST_0_i_37_n_0 ;
  wire \spo[21]_INST_0_i_38_n_0 ;
  wire \spo[21]_INST_0_i_39_n_0 ;
  wire \spo[21]_INST_0_i_3_n_0 ;
  wire \spo[21]_INST_0_i_40_n_0 ;
  wire \spo[21]_INST_0_i_4_n_0 ;
  wire \spo[21]_INST_0_i_5_n_0 ;
  wire \spo[21]_INST_0_i_6_n_0 ;
  wire \spo[21]_INST_0_i_7_n_0 ;
  wire \spo[21]_INST_0_i_8_n_0 ;
  wire \spo[21]_INST_0_i_9_n_0 ;
  wire \spo[22]_INST_0_i_10_n_0 ;
  wire \spo[22]_INST_0_i_11_n_0 ;
  wire \spo[22]_INST_0_i_12_n_0 ;
  wire \spo[22]_INST_0_i_13_n_0 ;
  wire \spo[22]_INST_0_i_14_n_0 ;
  wire \spo[22]_INST_0_i_15_n_0 ;
  wire \spo[22]_INST_0_i_16_n_0 ;
  wire \spo[22]_INST_0_i_17_n_0 ;
  wire \spo[22]_INST_0_i_18_n_0 ;
  wire \spo[22]_INST_0_i_19_n_0 ;
  wire \spo[22]_INST_0_i_1_n_0 ;
  wire \spo[22]_INST_0_i_20_n_0 ;
  wire \spo[22]_INST_0_i_21_n_0 ;
  wire \spo[22]_INST_0_i_22_n_0 ;
  wire \spo[22]_INST_0_i_23_n_0 ;
  wire \spo[22]_INST_0_i_24_n_0 ;
  wire \spo[22]_INST_0_i_25_n_0 ;
  wire \spo[22]_INST_0_i_26_n_0 ;
  wire \spo[22]_INST_0_i_27_n_0 ;
  wire \spo[22]_INST_0_i_28_n_0 ;
  wire \spo[22]_INST_0_i_29_n_0 ;
  wire \spo[22]_INST_0_i_2_n_0 ;
  wire \spo[22]_INST_0_i_30_n_0 ;
  wire \spo[22]_INST_0_i_31_n_0 ;
  wire \spo[22]_INST_0_i_32_n_0 ;
  wire \spo[22]_INST_0_i_33_n_0 ;
  wire \spo[22]_INST_0_i_34_n_0 ;
  wire \spo[22]_INST_0_i_35_n_0 ;
  wire \spo[22]_INST_0_i_36_n_0 ;
  wire \spo[22]_INST_0_i_37_n_0 ;
  wire \spo[22]_INST_0_i_38_n_0 ;
  wire \spo[22]_INST_0_i_39_n_0 ;
  wire \spo[22]_INST_0_i_3_n_0 ;
  wire \spo[22]_INST_0_i_40_n_0 ;
  wire \spo[22]_INST_0_i_41_n_0 ;
  wire \spo[22]_INST_0_i_4_n_0 ;
  wire \spo[22]_INST_0_i_5_n_0 ;
  wire \spo[22]_INST_0_i_6_n_0 ;
  wire \spo[22]_INST_0_i_7_n_0 ;
  wire \spo[22]_INST_0_i_8_n_0 ;
  wire \spo[22]_INST_0_i_9_n_0 ;
  wire \spo[23]_INST_0_i_10_n_0 ;
  wire \spo[23]_INST_0_i_11_n_0 ;
  wire \spo[23]_INST_0_i_12_n_0 ;
  wire \spo[23]_INST_0_i_13_n_0 ;
  wire \spo[23]_INST_0_i_14_n_0 ;
  wire \spo[23]_INST_0_i_15_n_0 ;
  wire \spo[23]_INST_0_i_16_n_0 ;
  wire \spo[23]_INST_0_i_17_n_0 ;
  wire \spo[23]_INST_0_i_18_n_0 ;
  wire \spo[23]_INST_0_i_19_n_0 ;
  wire \spo[23]_INST_0_i_1_n_0 ;
  wire \spo[23]_INST_0_i_20_n_0 ;
  wire \spo[23]_INST_0_i_21_n_0 ;
  wire \spo[23]_INST_0_i_22_n_0 ;
  wire \spo[23]_INST_0_i_23_n_0 ;
  wire \spo[23]_INST_0_i_24_n_0 ;
  wire \spo[23]_INST_0_i_25_n_0 ;
  wire \spo[23]_INST_0_i_26_n_0 ;
  wire \spo[23]_INST_0_i_27_n_0 ;
  wire \spo[23]_INST_0_i_28_n_0 ;
  wire \spo[23]_INST_0_i_29_n_0 ;
  wire \spo[23]_INST_0_i_2_n_0 ;
  wire \spo[23]_INST_0_i_30_n_0 ;
  wire \spo[23]_INST_0_i_31_n_0 ;
  wire \spo[23]_INST_0_i_32_n_0 ;
  wire \spo[23]_INST_0_i_33_n_0 ;
  wire \spo[23]_INST_0_i_34_n_0 ;
  wire \spo[23]_INST_0_i_35_n_0 ;
  wire \spo[23]_INST_0_i_36_n_0 ;
  wire \spo[23]_INST_0_i_37_n_0 ;
  wire \spo[23]_INST_0_i_38_n_0 ;
  wire \spo[23]_INST_0_i_39_n_0 ;
  wire \spo[23]_INST_0_i_3_n_0 ;
  wire \spo[23]_INST_0_i_40_n_0 ;
  wire \spo[23]_INST_0_i_41_n_0 ;
  wire \spo[23]_INST_0_i_4_n_0 ;
  wire \spo[23]_INST_0_i_5_n_0 ;
  wire \spo[23]_INST_0_i_6_n_0 ;
  wire \spo[23]_INST_0_i_7_n_0 ;
  wire \spo[23]_INST_0_i_8_n_0 ;
  wire \spo[23]_INST_0_i_9_n_0 ;
  wire \spo[24]_INST_0_i_10_n_0 ;
  wire \spo[24]_INST_0_i_11_n_0 ;
  wire \spo[24]_INST_0_i_12_n_0 ;
  wire \spo[24]_INST_0_i_13_n_0 ;
  wire \spo[24]_INST_0_i_14_n_0 ;
  wire \spo[24]_INST_0_i_15_n_0 ;
  wire \spo[24]_INST_0_i_16_n_0 ;
  wire \spo[24]_INST_0_i_17_n_0 ;
  wire \spo[24]_INST_0_i_18_n_0 ;
  wire \spo[24]_INST_0_i_19_n_0 ;
  wire \spo[24]_INST_0_i_1_n_0 ;
  wire \spo[24]_INST_0_i_20_n_0 ;
  wire \spo[24]_INST_0_i_21_n_0 ;
  wire \spo[24]_INST_0_i_22_n_0 ;
  wire \spo[24]_INST_0_i_23_n_0 ;
  wire \spo[24]_INST_0_i_24_n_0 ;
  wire \spo[24]_INST_0_i_25_n_0 ;
  wire \spo[24]_INST_0_i_26_n_0 ;
  wire \spo[24]_INST_0_i_27_n_0 ;
  wire \spo[24]_INST_0_i_28_n_0 ;
  wire \spo[24]_INST_0_i_29_n_0 ;
  wire \spo[24]_INST_0_i_2_n_0 ;
  wire \spo[24]_INST_0_i_30_n_0 ;
  wire \spo[24]_INST_0_i_31_n_0 ;
  wire \spo[24]_INST_0_i_32_n_0 ;
  wire \spo[24]_INST_0_i_33_n_0 ;
  wire \spo[24]_INST_0_i_34_n_0 ;
  wire \spo[24]_INST_0_i_35_n_0 ;
  wire \spo[24]_INST_0_i_36_n_0 ;
  wire \spo[24]_INST_0_i_37_n_0 ;
  wire \spo[24]_INST_0_i_38_n_0 ;
  wire \spo[24]_INST_0_i_39_n_0 ;
  wire \spo[24]_INST_0_i_3_n_0 ;
  wire \spo[24]_INST_0_i_40_n_0 ;
  wire \spo[24]_INST_0_i_41_n_0 ;
  wire \spo[24]_INST_0_i_4_n_0 ;
  wire \spo[24]_INST_0_i_5_n_0 ;
  wire \spo[24]_INST_0_i_6_n_0 ;
  wire \spo[24]_INST_0_i_7_n_0 ;
  wire \spo[24]_INST_0_i_8_n_0 ;
  wire \spo[24]_INST_0_i_9_n_0 ;
  wire \spo[25]_INST_0_i_10_n_0 ;
  wire \spo[25]_INST_0_i_11_n_0 ;
  wire \spo[25]_INST_0_i_12_n_0 ;
  wire \spo[25]_INST_0_i_13_n_0 ;
  wire \spo[25]_INST_0_i_14_n_0 ;
  wire \spo[25]_INST_0_i_15_n_0 ;
  wire \spo[25]_INST_0_i_16_n_0 ;
  wire \spo[25]_INST_0_i_17_n_0 ;
  wire \spo[25]_INST_0_i_18_n_0 ;
  wire \spo[25]_INST_0_i_19_n_0 ;
  wire \spo[25]_INST_0_i_1_n_0 ;
  wire \spo[25]_INST_0_i_20_n_0 ;
  wire \spo[25]_INST_0_i_21_n_0 ;
  wire \spo[25]_INST_0_i_22_n_0 ;
  wire \spo[25]_INST_0_i_23_n_0 ;
  wire \spo[25]_INST_0_i_24_n_0 ;
  wire \spo[25]_INST_0_i_25_n_0 ;
  wire \spo[25]_INST_0_i_26_n_0 ;
  wire \spo[25]_INST_0_i_27_n_0 ;
  wire \spo[25]_INST_0_i_28_n_0 ;
  wire \spo[25]_INST_0_i_29_n_0 ;
  wire \spo[25]_INST_0_i_2_n_0 ;
  wire \spo[25]_INST_0_i_30_n_0 ;
  wire \spo[25]_INST_0_i_31_n_0 ;
  wire \spo[25]_INST_0_i_32_n_0 ;
  wire \spo[25]_INST_0_i_33_n_0 ;
  wire \spo[25]_INST_0_i_34_n_0 ;
  wire \spo[25]_INST_0_i_35_n_0 ;
  wire \spo[25]_INST_0_i_36_n_0 ;
  wire \spo[25]_INST_0_i_37_n_0 ;
  wire \spo[25]_INST_0_i_38_n_0 ;
  wire \spo[25]_INST_0_i_39_n_0 ;
  wire \spo[25]_INST_0_i_3_n_0 ;
  wire \spo[25]_INST_0_i_40_n_0 ;
  wire \spo[25]_INST_0_i_41_n_0 ;
  wire \spo[25]_INST_0_i_4_n_0 ;
  wire \spo[25]_INST_0_i_5_n_0 ;
  wire \spo[25]_INST_0_i_6_n_0 ;
  wire \spo[25]_INST_0_i_7_n_0 ;
  wire \spo[25]_INST_0_i_8_n_0 ;
  wire \spo[25]_INST_0_i_9_n_0 ;
  wire \spo[26]_INST_0_i_10_n_0 ;
  wire \spo[26]_INST_0_i_11_n_0 ;
  wire \spo[26]_INST_0_i_12_n_0 ;
  wire \spo[26]_INST_0_i_13_n_0 ;
  wire \spo[26]_INST_0_i_14_n_0 ;
  wire \spo[26]_INST_0_i_15_n_0 ;
  wire \spo[26]_INST_0_i_16_n_0 ;
  wire \spo[26]_INST_0_i_17_n_0 ;
  wire \spo[26]_INST_0_i_18_n_0 ;
  wire \spo[26]_INST_0_i_19_n_0 ;
  wire \spo[26]_INST_0_i_1_n_0 ;
  wire \spo[26]_INST_0_i_20_n_0 ;
  wire \spo[26]_INST_0_i_21_n_0 ;
  wire \spo[26]_INST_0_i_22_n_0 ;
  wire \spo[26]_INST_0_i_23_n_0 ;
  wire \spo[26]_INST_0_i_24_n_0 ;
  wire \spo[26]_INST_0_i_25_n_0 ;
  wire \spo[26]_INST_0_i_26_n_0 ;
  wire \spo[26]_INST_0_i_27_n_0 ;
  wire \spo[26]_INST_0_i_28_n_0 ;
  wire \spo[26]_INST_0_i_29_n_0 ;
  wire \spo[26]_INST_0_i_2_n_0 ;
  wire \spo[26]_INST_0_i_30_n_0 ;
  wire \spo[26]_INST_0_i_31_n_0 ;
  wire \spo[26]_INST_0_i_32_n_0 ;
  wire \spo[26]_INST_0_i_33_n_0 ;
  wire \spo[26]_INST_0_i_34_n_0 ;
  wire \spo[26]_INST_0_i_35_n_0 ;
  wire \spo[26]_INST_0_i_36_n_0 ;
  wire \spo[26]_INST_0_i_37_n_0 ;
  wire \spo[26]_INST_0_i_38_n_0 ;
  wire \spo[26]_INST_0_i_3_n_0 ;
  wire \spo[26]_INST_0_i_4_n_0 ;
  wire \spo[26]_INST_0_i_5_n_0 ;
  wire \spo[26]_INST_0_i_6_n_0 ;
  wire \spo[26]_INST_0_i_7_n_0 ;
  wire \spo[26]_INST_0_i_8_n_0 ;
  wire \spo[26]_INST_0_i_9_n_0 ;
  wire \spo[27]_INST_0_i_10_n_0 ;
  wire \spo[27]_INST_0_i_11_n_0 ;
  wire \spo[27]_INST_0_i_12_n_0 ;
  wire \spo[27]_INST_0_i_13_n_0 ;
  wire \spo[27]_INST_0_i_14_n_0 ;
  wire \spo[27]_INST_0_i_15_n_0 ;
  wire \spo[27]_INST_0_i_16_n_0 ;
  wire \spo[27]_INST_0_i_17_n_0 ;
  wire \spo[27]_INST_0_i_18_n_0 ;
  wire \spo[27]_INST_0_i_19_n_0 ;
  wire \spo[27]_INST_0_i_1_n_0 ;
  wire \spo[27]_INST_0_i_20_n_0 ;
  wire \spo[27]_INST_0_i_21_n_0 ;
  wire \spo[27]_INST_0_i_22_n_0 ;
  wire \spo[27]_INST_0_i_23_n_0 ;
  wire \spo[27]_INST_0_i_24_n_0 ;
  wire \spo[27]_INST_0_i_25_n_0 ;
  wire \spo[27]_INST_0_i_26_n_0 ;
  wire \spo[27]_INST_0_i_27_n_0 ;
  wire \spo[27]_INST_0_i_28_n_0 ;
  wire \spo[27]_INST_0_i_29_n_0 ;
  wire \spo[27]_INST_0_i_2_n_0 ;
  wire \spo[27]_INST_0_i_30_n_0 ;
  wire \spo[27]_INST_0_i_31_n_0 ;
  wire \spo[27]_INST_0_i_32_n_0 ;
  wire \spo[27]_INST_0_i_33_n_0 ;
  wire \spo[27]_INST_0_i_34_n_0 ;
  wire \spo[27]_INST_0_i_35_n_0 ;
  wire \spo[27]_INST_0_i_36_n_0 ;
  wire \spo[27]_INST_0_i_37_n_0 ;
  wire \spo[27]_INST_0_i_38_n_0 ;
  wire \spo[27]_INST_0_i_39_n_0 ;
  wire \spo[27]_INST_0_i_3_n_0 ;
  wire \spo[27]_INST_0_i_4_n_0 ;
  wire \spo[27]_INST_0_i_5_n_0 ;
  wire \spo[27]_INST_0_i_6_n_0 ;
  wire \spo[27]_INST_0_i_7_n_0 ;
  wire \spo[27]_INST_0_i_8_n_0 ;
  wire \spo[27]_INST_0_i_9_n_0 ;
  wire \spo[28]_INST_0_i_10_n_0 ;
  wire \spo[28]_INST_0_i_11_n_0 ;
  wire \spo[28]_INST_0_i_12_n_0 ;
  wire \spo[28]_INST_0_i_13_n_0 ;
  wire \spo[28]_INST_0_i_14_n_0 ;
  wire \spo[28]_INST_0_i_15_n_0 ;
  wire \spo[28]_INST_0_i_16_n_0 ;
  wire \spo[28]_INST_0_i_17_n_0 ;
  wire \spo[28]_INST_0_i_18_n_0 ;
  wire \spo[28]_INST_0_i_19_n_0 ;
  wire \spo[28]_INST_0_i_1_n_0 ;
  wire \spo[28]_INST_0_i_20_n_0 ;
  wire \spo[28]_INST_0_i_21_n_0 ;
  wire \spo[28]_INST_0_i_22_n_0 ;
  wire \spo[28]_INST_0_i_23_n_0 ;
  wire \spo[28]_INST_0_i_24_n_0 ;
  wire \spo[28]_INST_0_i_25_n_0 ;
  wire \spo[28]_INST_0_i_26_n_0 ;
  wire \spo[28]_INST_0_i_27_n_0 ;
  wire \spo[28]_INST_0_i_28_n_0 ;
  wire \spo[28]_INST_0_i_29_n_0 ;
  wire \spo[28]_INST_0_i_2_n_0 ;
  wire \spo[28]_INST_0_i_30_n_0 ;
  wire \spo[28]_INST_0_i_31_n_0 ;
  wire \spo[28]_INST_0_i_32_n_0 ;
  wire \spo[28]_INST_0_i_33_n_0 ;
  wire \spo[28]_INST_0_i_34_n_0 ;
  wire \spo[28]_INST_0_i_35_n_0 ;
  wire \spo[28]_INST_0_i_36_n_0 ;
  wire \spo[28]_INST_0_i_37_n_0 ;
  wire \spo[28]_INST_0_i_3_n_0 ;
  wire \spo[28]_INST_0_i_4_n_0 ;
  wire \spo[28]_INST_0_i_5_n_0 ;
  wire \spo[28]_INST_0_i_6_n_0 ;
  wire \spo[28]_INST_0_i_7_n_0 ;
  wire \spo[28]_INST_0_i_8_n_0 ;
  wire \spo[28]_INST_0_i_9_n_0 ;
  wire \spo[29]_INST_0_i_10_n_0 ;
  wire \spo[29]_INST_0_i_11_n_0 ;
  wire \spo[29]_INST_0_i_12_n_0 ;
  wire \spo[29]_INST_0_i_13_n_0 ;
  wire \spo[29]_INST_0_i_14_n_0 ;
  wire \spo[29]_INST_0_i_15_n_0 ;
  wire \spo[29]_INST_0_i_16_n_0 ;
  wire \spo[29]_INST_0_i_17_n_0 ;
  wire \spo[29]_INST_0_i_18_n_0 ;
  wire \spo[29]_INST_0_i_19_n_0 ;
  wire \spo[29]_INST_0_i_1_n_0 ;
  wire \spo[29]_INST_0_i_20_n_0 ;
  wire \spo[29]_INST_0_i_21_n_0 ;
  wire \spo[29]_INST_0_i_22_n_0 ;
  wire \spo[29]_INST_0_i_23_n_0 ;
  wire \spo[29]_INST_0_i_24_n_0 ;
  wire \spo[29]_INST_0_i_25_n_0 ;
  wire \spo[29]_INST_0_i_26_n_0 ;
  wire \spo[29]_INST_0_i_27_n_0 ;
  wire \spo[29]_INST_0_i_28_n_0 ;
  wire \spo[29]_INST_0_i_29_n_0 ;
  wire \spo[29]_INST_0_i_2_n_0 ;
  wire \spo[29]_INST_0_i_30_n_0 ;
  wire \spo[29]_INST_0_i_31_n_0 ;
  wire \spo[29]_INST_0_i_32_n_0 ;
  wire \spo[29]_INST_0_i_33_n_0 ;
  wire \spo[29]_INST_0_i_34_n_0 ;
  wire \spo[29]_INST_0_i_35_n_0 ;
  wire \spo[29]_INST_0_i_36_n_0 ;
  wire \spo[29]_INST_0_i_37_n_0 ;
  wire \spo[29]_INST_0_i_38_n_0 ;
  wire \spo[29]_INST_0_i_39_n_0 ;
  wire \spo[29]_INST_0_i_3_n_0 ;
  wire \spo[29]_INST_0_i_4_n_0 ;
  wire \spo[29]_INST_0_i_5_n_0 ;
  wire \spo[29]_INST_0_i_6_n_0 ;
  wire \spo[29]_INST_0_i_7_n_0 ;
  wire \spo[29]_INST_0_i_8_n_0 ;
  wire \spo[29]_INST_0_i_9_n_0 ;
  wire \spo[2]_INST_0_i_10_n_0 ;
  wire \spo[2]_INST_0_i_11_n_0 ;
  wire \spo[2]_INST_0_i_12_n_0 ;
  wire \spo[2]_INST_0_i_13_n_0 ;
  wire \spo[2]_INST_0_i_14_n_0 ;
  wire \spo[2]_INST_0_i_15_n_0 ;
  wire \spo[2]_INST_0_i_16_n_0 ;
  wire \spo[2]_INST_0_i_17_n_0 ;
  wire \spo[2]_INST_0_i_18_n_0 ;
  wire \spo[2]_INST_0_i_19_n_0 ;
  wire \spo[2]_INST_0_i_1_n_0 ;
  wire \spo[2]_INST_0_i_20_n_0 ;
  wire \spo[2]_INST_0_i_21_n_0 ;
  wire \spo[2]_INST_0_i_22_n_0 ;
  wire \spo[2]_INST_0_i_23_n_0 ;
  wire \spo[2]_INST_0_i_24_n_0 ;
  wire \spo[2]_INST_0_i_2_n_0 ;
  wire \spo[2]_INST_0_i_3_n_0 ;
  wire \spo[2]_INST_0_i_4_n_0 ;
  wire \spo[2]_INST_0_i_5_n_0 ;
  wire \spo[2]_INST_0_i_6_n_0 ;
  wire \spo[2]_INST_0_i_7_n_0 ;
  wire \spo[2]_INST_0_i_8_n_0 ;
  wire \spo[2]_INST_0_i_9_n_0 ;
  wire \spo[30]_INST_0_i_10_n_0 ;
  wire \spo[30]_INST_0_i_11_n_0 ;
  wire \spo[30]_INST_0_i_12_n_0 ;
  wire \spo[30]_INST_0_i_13_n_0 ;
  wire \spo[30]_INST_0_i_14_n_0 ;
  wire \spo[30]_INST_0_i_15_n_0 ;
  wire \spo[30]_INST_0_i_16_n_0 ;
  wire \spo[30]_INST_0_i_17_n_0 ;
  wire \spo[30]_INST_0_i_18_n_0 ;
  wire \spo[30]_INST_0_i_19_n_0 ;
  wire \spo[30]_INST_0_i_1_n_0 ;
  wire \spo[30]_INST_0_i_20_n_0 ;
  wire \spo[30]_INST_0_i_21_n_0 ;
  wire \spo[30]_INST_0_i_22_n_0 ;
  wire \spo[30]_INST_0_i_23_n_0 ;
  wire \spo[30]_INST_0_i_24_n_0 ;
  wire \spo[30]_INST_0_i_25_n_0 ;
  wire \spo[30]_INST_0_i_26_n_0 ;
  wire \spo[30]_INST_0_i_27_n_0 ;
  wire \spo[30]_INST_0_i_28_n_0 ;
  wire \spo[30]_INST_0_i_29_n_0 ;
  wire \spo[30]_INST_0_i_2_n_0 ;
  wire \spo[30]_INST_0_i_30_n_0 ;
  wire \spo[30]_INST_0_i_31_n_0 ;
  wire \spo[30]_INST_0_i_32_n_0 ;
  wire \spo[30]_INST_0_i_33_n_0 ;
  wire \spo[30]_INST_0_i_34_n_0 ;
  wire \spo[30]_INST_0_i_35_n_0 ;
  wire \spo[30]_INST_0_i_36_n_0 ;
  wire \spo[30]_INST_0_i_37_n_0 ;
  wire \spo[30]_INST_0_i_38_n_0 ;
  wire \spo[30]_INST_0_i_3_n_0 ;
  wire \spo[30]_INST_0_i_4_n_0 ;
  wire \spo[30]_INST_0_i_5_n_0 ;
  wire \spo[30]_INST_0_i_6_n_0 ;
  wire \spo[30]_INST_0_i_7_n_0 ;
  wire \spo[30]_INST_0_i_8_n_0 ;
  wire \spo[30]_INST_0_i_9_n_0 ;
  wire \spo[31]_INST_0_i_10_n_0 ;
  wire \spo[31]_INST_0_i_11_n_0 ;
  wire \spo[31]_INST_0_i_12_n_0 ;
  wire \spo[31]_INST_0_i_13_n_0 ;
  wire \spo[31]_INST_0_i_14_n_0 ;
  wire \spo[31]_INST_0_i_15_n_0 ;
  wire \spo[31]_INST_0_i_16_n_0 ;
  wire \spo[31]_INST_0_i_17_n_0 ;
  wire \spo[31]_INST_0_i_18_n_0 ;
  wire \spo[31]_INST_0_i_19_n_0 ;
  wire \spo[31]_INST_0_i_1_n_0 ;
  wire \spo[31]_INST_0_i_20_n_0 ;
  wire \spo[31]_INST_0_i_21_n_0 ;
  wire \spo[31]_INST_0_i_22_n_0 ;
  wire \spo[31]_INST_0_i_23_n_0 ;
  wire \spo[31]_INST_0_i_24_n_0 ;
  wire \spo[31]_INST_0_i_25_n_0 ;
  wire \spo[31]_INST_0_i_26_n_0 ;
  wire \spo[31]_INST_0_i_27_n_0 ;
  wire \spo[31]_INST_0_i_28_n_0 ;
  wire \spo[31]_INST_0_i_29_n_0 ;
  wire \spo[31]_INST_0_i_2_n_0 ;
  wire \spo[31]_INST_0_i_30_n_0 ;
  wire \spo[31]_INST_0_i_31_n_0 ;
  wire \spo[31]_INST_0_i_32_n_0 ;
  wire \spo[31]_INST_0_i_33_n_0 ;
  wire \spo[31]_INST_0_i_34_n_0 ;
  wire \spo[31]_INST_0_i_35_n_0 ;
  wire \spo[31]_INST_0_i_36_n_0 ;
  wire \spo[31]_INST_0_i_37_n_0 ;
  wire \spo[31]_INST_0_i_38_n_0 ;
  wire \spo[31]_INST_0_i_39_n_0 ;
  wire \spo[31]_INST_0_i_3_n_0 ;
  wire \spo[31]_INST_0_i_40_n_0 ;
  wire \spo[31]_INST_0_i_41_n_0 ;
  wire \spo[31]_INST_0_i_42_n_0 ;
  wire \spo[31]_INST_0_i_43_n_0 ;
  wire \spo[31]_INST_0_i_4_n_0 ;
  wire \spo[31]_INST_0_i_5_n_0 ;
  wire \spo[31]_INST_0_i_6_n_0 ;
  wire \spo[31]_INST_0_i_7_n_0 ;
  wire \spo[31]_INST_0_i_8_n_0 ;
  wire \spo[31]_INST_0_i_9_n_0 ;
  wire \spo[3]_INST_0_i_10_n_0 ;
  wire \spo[3]_INST_0_i_11_n_0 ;
  wire \spo[3]_INST_0_i_12_n_0 ;
  wire \spo[3]_INST_0_i_13_n_0 ;
  wire \spo[3]_INST_0_i_14_n_0 ;
  wire \spo[3]_INST_0_i_15_n_0 ;
  wire \spo[3]_INST_0_i_16_n_0 ;
  wire \spo[3]_INST_0_i_17_n_0 ;
  wire \spo[3]_INST_0_i_18_n_0 ;
  wire \spo[3]_INST_0_i_19_n_0 ;
  wire \spo[3]_INST_0_i_1_n_0 ;
  wire \spo[3]_INST_0_i_20_n_0 ;
  wire \spo[3]_INST_0_i_21_n_0 ;
  wire \spo[3]_INST_0_i_22_n_0 ;
  wire \spo[3]_INST_0_i_23_n_0 ;
  wire \spo[3]_INST_0_i_24_n_0 ;
  wire \spo[3]_INST_0_i_25_n_0 ;
  wire \spo[3]_INST_0_i_2_n_0 ;
  wire \spo[3]_INST_0_i_3_n_0 ;
  wire \spo[3]_INST_0_i_4_n_0 ;
  wire \spo[3]_INST_0_i_5_n_0 ;
  wire \spo[3]_INST_0_i_6_n_0 ;
  wire \spo[3]_INST_0_i_7_n_0 ;
  wire \spo[3]_INST_0_i_8_n_0 ;
  wire \spo[3]_INST_0_i_9_n_0 ;
  wire \spo[4]_INST_0_i_10_n_0 ;
  wire \spo[4]_INST_0_i_11_n_0 ;
  wire \spo[4]_INST_0_i_12_n_0 ;
  wire \spo[4]_INST_0_i_13_n_0 ;
  wire \spo[4]_INST_0_i_14_n_0 ;
  wire \spo[4]_INST_0_i_15_n_0 ;
  wire \spo[4]_INST_0_i_16_n_0 ;
  wire \spo[4]_INST_0_i_17_n_0 ;
  wire \spo[4]_INST_0_i_18_n_0 ;
  wire \spo[4]_INST_0_i_19_n_0 ;
  wire \spo[4]_INST_0_i_1_n_0 ;
  wire \spo[4]_INST_0_i_20_n_0 ;
  wire \spo[4]_INST_0_i_21_n_0 ;
  wire \spo[4]_INST_0_i_22_n_0 ;
  wire \spo[4]_INST_0_i_23_n_0 ;
  wire \spo[4]_INST_0_i_24_n_0 ;
  wire \spo[4]_INST_0_i_25_n_0 ;
  wire \spo[4]_INST_0_i_26_n_0 ;
  wire \spo[4]_INST_0_i_27_n_0 ;
  wire \spo[4]_INST_0_i_28_n_0 ;
  wire \spo[4]_INST_0_i_2_n_0 ;
  wire \spo[4]_INST_0_i_3_n_0 ;
  wire \spo[4]_INST_0_i_4_n_0 ;
  wire \spo[4]_INST_0_i_5_n_0 ;
  wire \spo[4]_INST_0_i_6_n_0 ;
  wire \spo[4]_INST_0_i_7_n_0 ;
  wire \spo[4]_INST_0_i_8_n_0 ;
  wire \spo[4]_INST_0_i_9_n_0 ;
  wire \spo[5]_INST_0_i_10_n_0 ;
  wire \spo[5]_INST_0_i_11_n_0 ;
  wire \spo[5]_INST_0_i_12_n_0 ;
  wire \spo[5]_INST_0_i_13_n_0 ;
  wire \spo[5]_INST_0_i_14_n_0 ;
  wire \spo[5]_INST_0_i_15_n_0 ;
  wire \spo[5]_INST_0_i_16_n_0 ;
  wire \spo[5]_INST_0_i_17_n_0 ;
  wire \spo[5]_INST_0_i_18_n_0 ;
  wire \spo[5]_INST_0_i_19_n_0 ;
  wire \spo[5]_INST_0_i_1_n_0 ;
  wire \spo[5]_INST_0_i_20_n_0 ;
  wire \spo[5]_INST_0_i_21_n_0 ;
  wire \spo[5]_INST_0_i_22_n_0 ;
  wire \spo[5]_INST_0_i_23_n_0 ;
  wire \spo[5]_INST_0_i_24_n_0 ;
  wire \spo[5]_INST_0_i_25_n_0 ;
  wire \spo[5]_INST_0_i_26_n_0 ;
  wire \spo[5]_INST_0_i_27_n_0 ;
  wire \spo[5]_INST_0_i_2_n_0 ;
  wire \spo[5]_INST_0_i_3_n_0 ;
  wire \spo[5]_INST_0_i_4_n_0 ;
  wire \spo[5]_INST_0_i_5_n_0 ;
  wire \spo[5]_INST_0_i_6_n_0 ;
  wire \spo[5]_INST_0_i_7_n_0 ;
  wire \spo[5]_INST_0_i_8_n_0 ;
  wire \spo[5]_INST_0_i_9_n_0 ;
  wire \spo[6]_INST_0_i_10_n_0 ;
  wire \spo[6]_INST_0_i_11_n_0 ;
  wire \spo[6]_INST_0_i_12_n_0 ;
  wire \spo[6]_INST_0_i_13_n_0 ;
  wire \spo[6]_INST_0_i_14_n_0 ;
  wire \spo[6]_INST_0_i_15_n_0 ;
  wire \spo[6]_INST_0_i_16_n_0 ;
  wire \spo[6]_INST_0_i_17_n_0 ;
  wire \spo[6]_INST_0_i_18_n_0 ;
  wire \spo[6]_INST_0_i_19_n_0 ;
  wire \spo[6]_INST_0_i_1_n_0 ;
  wire \spo[6]_INST_0_i_20_n_0 ;
  wire \spo[6]_INST_0_i_21_n_0 ;
  wire \spo[6]_INST_0_i_22_n_0 ;
  wire \spo[6]_INST_0_i_23_n_0 ;
  wire \spo[6]_INST_0_i_24_n_0 ;
  wire \spo[6]_INST_0_i_25_n_0 ;
  wire \spo[6]_INST_0_i_26_n_0 ;
  wire \spo[6]_INST_0_i_27_n_0 ;
  wire \spo[6]_INST_0_i_2_n_0 ;
  wire \spo[6]_INST_0_i_3_n_0 ;
  wire \spo[6]_INST_0_i_4_n_0 ;
  wire \spo[6]_INST_0_i_5_n_0 ;
  wire \spo[6]_INST_0_i_6_n_0 ;
  wire \spo[6]_INST_0_i_7_n_0 ;
  wire \spo[6]_INST_0_i_8_n_0 ;
  wire \spo[6]_INST_0_i_9_n_0 ;
  wire \spo[8]_INST_0_i_10_n_0 ;
  wire \spo[8]_INST_0_i_11_n_0 ;
  wire \spo[8]_INST_0_i_12_n_0 ;
  wire \spo[8]_INST_0_i_13_n_0 ;
  wire \spo[8]_INST_0_i_14_n_0 ;
  wire \spo[8]_INST_0_i_15_n_0 ;
  wire \spo[8]_INST_0_i_16_n_0 ;
  wire \spo[8]_INST_0_i_17_n_0 ;
  wire \spo[8]_INST_0_i_18_n_0 ;
  wire \spo[8]_INST_0_i_19_n_0 ;
  wire \spo[8]_INST_0_i_1_n_0 ;
  wire \spo[8]_INST_0_i_20_n_0 ;
  wire \spo[8]_INST_0_i_21_n_0 ;
  wire \spo[8]_INST_0_i_22_n_0 ;
  wire \spo[8]_INST_0_i_23_n_0 ;
  wire \spo[8]_INST_0_i_24_n_0 ;
  wire \spo[8]_INST_0_i_25_n_0 ;
  wire \spo[8]_INST_0_i_26_n_0 ;
  wire \spo[8]_INST_0_i_27_n_0 ;
  wire \spo[8]_INST_0_i_28_n_0 ;
  wire \spo[8]_INST_0_i_29_n_0 ;
  wire \spo[8]_INST_0_i_2_n_0 ;
  wire \spo[8]_INST_0_i_30_n_0 ;
  wire \spo[8]_INST_0_i_31_n_0 ;
  wire \spo[8]_INST_0_i_32_n_0 ;
  wire \spo[8]_INST_0_i_33_n_0 ;
  wire \spo[8]_INST_0_i_34_n_0 ;
  wire \spo[8]_INST_0_i_35_n_0 ;
  wire \spo[8]_INST_0_i_36_n_0 ;
  wire \spo[8]_INST_0_i_37_n_0 ;
  wire \spo[8]_INST_0_i_38_n_0 ;
  wire \spo[8]_INST_0_i_39_n_0 ;
  wire \spo[8]_INST_0_i_3_n_0 ;
  wire \spo[8]_INST_0_i_40_n_0 ;
  wire \spo[8]_INST_0_i_41_n_0 ;
  wire \spo[8]_INST_0_i_42_n_0 ;
  wire \spo[8]_INST_0_i_4_n_0 ;
  wire \spo[8]_INST_0_i_5_n_0 ;
  wire \spo[8]_INST_0_i_6_n_0 ;
  wire \spo[8]_INST_0_i_7_n_0 ;
  wire \spo[8]_INST_0_i_8_n_0 ;
  wire \spo[8]_INST_0_i_9_n_0 ;
  wire \spo[9]_INST_0_i_10_n_0 ;
  wire \spo[9]_INST_0_i_11_n_0 ;
  wire \spo[9]_INST_0_i_12_n_0 ;
  wire \spo[9]_INST_0_i_13_n_0 ;
  wire \spo[9]_INST_0_i_14_n_0 ;
  wire \spo[9]_INST_0_i_15_n_0 ;
  wire \spo[9]_INST_0_i_16_n_0 ;
  wire \spo[9]_INST_0_i_17_n_0 ;
  wire \spo[9]_INST_0_i_18_n_0 ;
  wire \spo[9]_INST_0_i_19_n_0 ;
  wire \spo[9]_INST_0_i_1_n_0 ;
  wire \spo[9]_INST_0_i_20_n_0 ;
  wire \spo[9]_INST_0_i_21_n_0 ;
  wire \spo[9]_INST_0_i_22_n_0 ;
  wire \spo[9]_INST_0_i_23_n_0 ;
  wire \spo[9]_INST_0_i_24_n_0 ;
  wire \spo[9]_INST_0_i_25_n_0 ;
  wire \spo[9]_INST_0_i_26_n_0 ;
  wire \spo[9]_INST_0_i_27_n_0 ;
  wire \spo[9]_INST_0_i_28_n_0 ;
  wire \spo[9]_INST_0_i_29_n_0 ;
  wire \spo[9]_INST_0_i_2_n_0 ;
  wire \spo[9]_INST_0_i_30_n_0 ;
  wire \spo[9]_INST_0_i_31_n_0 ;
  wire \spo[9]_INST_0_i_32_n_0 ;
  wire \spo[9]_INST_0_i_33_n_0 ;
  wire \spo[9]_INST_0_i_34_n_0 ;
  wire \spo[9]_INST_0_i_35_n_0 ;
  wire \spo[9]_INST_0_i_36_n_0 ;
  wire \spo[9]_INST_0_i_37_n_0 ;
  wire \spo[9]_INST_0_i_38_n_0 ;
  wire \spo[9]_INST_0_i_39_n_0 ;
  wire \spo[9]_INST_0_i_3_n_0 ;
  wire \spo[9]_INST_0_i_4_n_0 ;
  wire \spo[9]_INST_0_i_5_n_0 ;
  wire \spo[9]_INST_0_i_6_n_0 ;
  wire \spo[9]_INST_0_i_7_n_0 ;
  wire \spo[9]_INST_0_i_8_n_0 ;
  wire \spo[9]_INST_0_i_9_n_0 ;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0 
       (.I0(\spo[0]_INST_0_i_1_n_0 ),
        .I1(\spo[0]_INST_0_i_2_n_0 ),
        .I2(a[3]),
        .I3(\spo[0]_INST_0_i_3_n_0 ),
        .I4(a[4]),
        .I5(\spo[0]_INST_0_i_4_n_0 ),
        .O(spo[0]));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \spo[0]_INST_0_i_1 
       (.I0(\spo[0]_INST_0_i_5_n_0 ),
        .I1(a[0]),
        .I2(\spo[0]_INST_0_i_6_n_0 ),
        .I3(a[8]),
        .I4(a[9]),
        .I5(\spo[0]_INST_0_i_7_n_0 ),
        .O(\spo[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_10 
       (.I0(\spo[0]_INST_0_i_20_n_0 ),
        .I1(\spo[1]_INST_0_i_21_n_0 ),
        .I2(a[8]),
        .I3(\spo[0]_INST_0_i_21_n_0 ),
        .I4(a[0]),
        .I5(\spo[0]_INST_0_i_22_n_0 ),
        .O(\spo[0]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFEBB7FFF00000000)) 
    \spo[0]_INST_0_i_11 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(\spo[25]_INST_0_i_27_n_0 ),
        .O(\spo[0]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h2020A000A0109020)) 
    \spo[0]_INST_0_i_12 
       (.I0(a[7]),
        .I1(a[2]),
        .I2(\spo[25]_INST_0_i_27_n_0 ),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[6]),
        .O(\spo[0]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_13 
       (.I0(\spo[0]_INST_0_i_23_n_0 ),
        .I1(\spo[1]_INST_0_i_26_n_0 ),
        .I2(a[8]),
        .I3(\spo[0]_INST_0_i_24_n_0 ),
        .I4(a[0]),
        .I5(\spo[0]_INST_0_i_25_n_0 ),
        .O(\spo[0]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h77FE00007FFF0000)) 
    \spo[0]_INST_0_i_14 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[2]),
        .I4(\spo[25]_INST_0_i_27_n_0 ),
        .I5(a[1]),
        .O(\spo[0]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hB532000012520000)) 
    \spo[0]_INST_0_i_15 
       (.I0(a[7]),
        .I1(a[1]),
        .I2(a[6]),
        .I3(a[2]),
        .I4(\spo[25]_INST_0_i_27_n_0 ),
        .I5(a[5]),
        .O(\spo[0]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_16 
       (.I0(\spo[0]_INST_0_i_26_n_0 ),
        .I1(\spo[1]_INST_0_i_33_n_0 ),
        .I2(a[8]),
        .I3(\spo[0]_INST_0_i_27_n_0 ),
        .I4(a[0]),
        .I5(\spo[0]_INST_0_i_28_n_0 ),
        .O(\spo[0]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h72A100004E200000)) 
    \spo[0]_INST_0_i_17 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[25]_INST_0_i_27_n_0 ),
        .I5(a[2]),
        .O(\spo[0]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0013000054000000)) 
    \spo[0]_INST_0_i_18 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(\spo[25]_INST_0_i_27_n_0 ),
        .I5(a[2]),
        .O(\spo[0]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h53150000D6E20000)) 
    \spo[0]_INST_0_i_19 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(\spo[25]_INST_0_i_27_n_0 ),
        .I5(a[2]),
        .O(\spo[0]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \spo[0]_INST_0_i_2 
       (.I0(\spo[0]_INST_0_i_8_n_0 ),
        .I1(a[0]),
        .I2(\spo[0]_INST_0_i_9_n_0 ),
        .I3(a[8]),
        .I4(a[9]),
        .I5(\spo[0]_INST_0_i_10_n_0 ),
        .O(\spo[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3509000093440000)) 
    \spo[0]_INST_0_i_20 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[2]),
        .I4(\spo[25]_INST_0_i_27_n_0 ),
        .I5(a[1]),
        .O(\spo[0]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h4502000030BA0000)) 
    \spo[0]_INST_0_i_21 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[25]_INST_0_i_27_n_0 ),
        .I5(a[2]),
        .O(\spo[0]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hEE9A0000336E0000)) 
    \spo[0]_INST_0_i_22 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[25]_INST_0_i_27_n_0 ),
        .I5(a[2]),
        .O(\spo[0]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h00A0208090004080)) 
    \spo[0]_INST_0_i_23 
       (.I0(a[7]),
        .I1(a[2]),
        .I2(\spo[25]_INST_0_i_27_n_0 ),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[6]),
        .O(\spo[0]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h1441000060880000)) 
    \spo[0]_INST_0_i_24 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[25]_INST_0_i_27_n_0 ),
        .I5(a[2]),
        .O(\spo[0]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hBD570000DF740000)) 
    \spo[0]_INST_0_i_25 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[2]),
        .I4(\spo[25]_INST_0_i_27_n_0 ),
        .I5(a[1]),
        .O(\spo[0]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h8254000022090000)) 
    \spo[0]_INST_0_i_26 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[25]_INST_0_i_27_n_0 ),
        .I5(a[2]),
        .O(\spo[0]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h850000006DF50000)) 
    \spo[0]_INST_0_i_27 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(\spo[25]_INST_0_i_27_n_0 ),
        .I5(a[2]),
        .O(\spo[0]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hB9FC0000B8800000)) 
    \spo[0]_INST_0_i_28 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[25]_INST_0_i_27_n_0 ),
        .I5(a[2]),
        .O(\spo[0]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \spo[0]_INST_0_i_3 
       (.I0(\spo[0]_INST_0_i_11_n_0 ),
        .I1(a[0]),
        .I2(\spo[0]_INST_0_i_12_n_0 ),
        .I3(a[8]),
        .I4(a[9]),
        .I5(\spo[0]_INST_0_i_13_n_0 ),
        .O(\spo[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \spo[0]_INST_0_i_4 
       (.I0(\spo[0]_INST_0_i_14_n_0 ),
        .I1(a[0]),
        .I2(\spo[0]_INST_0_i_15_n_0 ),
        .I3(a[8]),
        .I4(a[9]),
        .I5(\spo[0]_INST_0_i_16_n_0 ),
        .O(\spo[0]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7F7E7F6F00000000)) 
    \spo[0]_INST_0_i_5 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(\spo[25]_INST_0_i_27_n_0 ),
        .O(\spo[0]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h340000008C008000)) 
    \spo[0]_INST_0_i_6 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[2]),
        .I3(\spo[25]_INST_0_i_27_n_0 ),
        .I4(a[1]),
        .I5(a[6]),
        .O(\spo[0]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_7 
       (.I0(\spo[0]_INST_0_i_17_n_0 ),
        .I1(\spo[1]_INST_0_i_17_n_0 ),
        .I2(a[8]),
        .I3(\spo[0]_INST_0_i_18_n_0 ),
        .I4(a[0]),
        .I5(\spo[0]_INST_0_i_19_n_0 ),
        .O(\spo[0]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hE37EFFFF00000000)) 
    \spo[0]_INST_0_i_8 
       (.I0(a[6]),
        .I1(a[5]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[7]),
        .I5(\spo[25]_INST_0_i_27_n_0 ),
        .O(\spo[0]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hC101000035D40000)) 
    \spo[0]_INST_0_i_9 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[2]),
        .I4(\spo[25]_INST_0_i_27_n_0 ),
        .I5(a[1]),
        .O(\spo[0]_INST_0_i_9_n_0 ));
  MUXF8 \spo[10]_INST_0 
       (.I0(\spo[10]_INST_0_i_1_n_0 ),
        .I1(\spo[10]_INST_0_i_2_n_0 ),
        .O(spo[9]),
        .S(a[3]));
  MUXF7 \spo[10]_INST_0_i_1 
       (.I0(\spo[10]_INST_0_i_3_n_0 ),
        .I1(\spo[10]_INST_0_i_4_n_0 ),
        .O(\spo[10]_INST_0_i_1_n_0 ),
        .S(a[4]));
  MUXF7 \spo[10]_INST_0_i_10 
       (.I0(\spo[10]_INST_0_i_25_n_0 ),
        .I1(\spo[10]_INST_0_i_26_n_0 ),
        .O(\spo[10]_INST_0_i_10_n_0 ),
        .S(a[0]));
  MUXF7 \spo[10]_INST_0_i_11 
       (.I0(\spo[10]_INST_0_i_27_n_0 ),
        .I1(\spo[10]_INST_0_i_28_n_0 ),
        .O(\spo[10]_INST_0_i_11_n_0 ),
        .S(a[0]));
  MUXF7 \spo[10]_INST_0_i_12 
       (.I0(\spo[10]_INST_0_i_29_n_0 ),
        .I1(\spo[10]_INST_0_i_30_n_0 ),
        .O(\spo[10]_INST_0_i_12_n_0 ),
        .S(a[0]));
  MUXF7 \spo[10]_INST_0_i_13 
       (.I0(\spo[10]_INST_0_i_31_n_0 ),
        .I1(\spo[10]_INST_0_i_32_n_0 ),
        .O(\spo[10]_INST_0_i_13_n_0 ),
        .S(a[0]));
  MUXF7 \spo[10]_INST_0_i_14 
       (.I0(\spo[10]_INST_0_i_33_n_0 ),
        .I1(\spo[10]_INST_0_i_34_n_0 ),
        .O(\spo[10]_INST_0_i_14_n_0 ),
        .S(a[0]));
  MUXF7 \spo[10]_INST_0_i_15 
       (.I0(\spo[10]_INST_0_i_35_n_0 ),
        .I1(\spo[10]_INST_0_i_36_n_0 ),
        .O(\spo[10]_INST_0_i_15_n_0 ),
        .S(a[0]));
  MUXF7 \spo[10]_INST_0_i_16 
       (.I0(\spo[10]_INST_0_i_37_n_0 ),
        .I1(\spo[10]_INST_0_i_38_n_0 ),
        .O(\spo[10]_INST_0_i_16_n_0 ),
        .S(a[0]));
  MUXF7 \spo[10]_INST_0_i_17 
       (.I0(\spo[10]_INST_0_i_39_n_0 ),
        .I1(\spo[10]_INST_0_i_40_n_0 ),
        .O(\spo[10]_INST_0_i_17_n_0 ),
        .S(a[0]));
  MUXF7 \spo[10]_INST_0_i_18 
       (.I0(\spo[10]_INST_0_i_41_n_0 ),
        .I1(\spo[10]_INST_0_i_42_n_0 ),
        .O(\spo[10]_INST_0_i_18_n_0 ),
        .S(a[0]));
  LUT6 #(
    .INIT(64'h5A950000A7480000)) 
    \spo[10]_INST_0_i_19 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(a[5]),
        .I4(\spo[2]_INST_0_i_19_n_0 ),
        .I5(a[1]),
        .O(\spo[10]_INST_0_i_19_n_0 ));
  MUXF7 \spo[10]_INST_0_i_2 
       (.I0(\spo[10]_INST_0_i_5_n_0 ),
        .I1(\spo[10]_INST_0_i_6_n_0 ),
        .O(\spo[10]_INST_0_i_2_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h124E000080630000)) 
    \spo[10]_INST_0_i_20 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[2]_INST_0_i_19_n_0 ),
        .I5(a[2]),
        .O(\spo[10]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h33C00000100C0000)) 
    \spo[10]_INST_0_i_21 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[2]_INST_0_i_19_n_0 ),
        .I5(a[2]),
        .O(\spo[10]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h08610000C0580000)) 
    \spo[10]_INST_0_i_22 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[2]_INST_0_i_19_n_0 ),
        .I5(a[2]),
        .O(\spo[10]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h8400400004003A00)) 
    \spo[10]_INST_0_i_23 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[2]_INST_0_i_19_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[10]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h1851000097100000)) 
    \spo[10]_INST_0_i_24 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[2]),
        .I4(\spo[2]_INST_0_i_19_n_0 ),
        .I5(a[1]),
        .O(\spo[10]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h1815000005280000)) 
    \spo[10]_INST_0_i_25 
       (.I0(a[7]),
        .I1(a[1]),
        .I2(a[6]),
        .I3(a[5]),
        .I4(\spo[2]_INST_0_i_19_n_0 ),
        .I5(a[2]),
        .O(\spo[10]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h78210000CC920000)) 
    \spo[10]_INST_0_i_26 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[2]_INST_0_i_19_n_0 ),
        .I5(a[2]),
        .O(\spo[10]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h7219000046A40000)) 
    \spo[10]_INST_0_i_27 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[2]_INST_0_i_19_n_0 ),
        .I5(a[2]),
        .O(\spo[10]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h8438000001CE0000)) 
    \spo[10]_INST_0_i_28 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[2]_INST_0_i_19_n_0 ),
        .I5(a[2]),
        .O(\spo[10]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h4715000020880000)) 
    \spo[10]_INST_0_i_29 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(\spo[2]_INST_0_i_19_n_0 ),
        .I5(a[2]),
        .O(\spo[10]_INST_0_i_29_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[10]_INST_0_i_3 
       (.I0(\spo[10]_INST_0_i_7_n_0 ),
        .I1(a[9]),
        .I2(\spo[10]_INST_0_i_8_n_0 ),
        .I3(a[8]),
        .I4(\spo[10]_INST_0_i_9_n_0 ),
        .O(\spo[10]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA1008A008000E800)) 
    \spo[10]_INST_0_i_30 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[2]_INST_0_i_19_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[10]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h360008006C000200)) 
    \spo[10]_INST_0_i_31 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[2]_INST_0_i_19_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[10]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h9101000097FC0000)) 
    \spo[10]_INST_0_i_32 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[2]),
        .I4(\spo[2]_INST_0_i_19_n_0 ),
        .I5(a[1]),
        .O(\spo[10]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h1260000045300000)) 
    \spo[10]_INST_0_i_33 
       (.I0(a[7]),
        .I1(a[1]),
        .I2(a[6]),
        .I3(a[2]),
        .I4(\spo[2]_INST_0_i_19_n_0 ),
        .I5(a[5]),
        .O(\spo[10]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h9790000060580000)) 
    \spo[10]_INST_0_i_34 
       (.I0(a[7]),
        .I1(a[2]),
        .I2(a[6]),
        .I3(a[1]),
        .I4(\spo[2]_INST_0_i_19_n_0 ),
        .I5(a[5]),
        .O(\spo[10]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hC700080040008800)) 
    \spo[10]_INST_0_i_35 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[2]),
        .I3(\spo[2]_INST_0_i_19_n_0 ),
        .I4(a[1]),
        .I5(a[6]),
        .O(\spo[10]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hAA1A000045540000)) 
    \spo[10]_INST_0_i_36 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[2]_INST_0_i_19_n_0 ),
        .I5(a[2]),
        .O(\spo[10]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h602100000A100000)) 
    \spo[10]_INST_0_i_37 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[2]_INST_0_i_19_n_0 ),
        .I5(a[2]),
        .O(\spo[10]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h0040000027620000)) 
    \spo[10]_INST_0_i_38 
       (.I0(a[7]),
        .I1(a[2]),
        .I2(a[6]),
        .I3(a[1]),
        .I4(\spo[2]_INST_0_i_19_n_0 ),
        .I5(a[5]),
        .O(\spo[10]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h4B08000016850000)) 
    \spo[10]_INST_0_i_39 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[2]),
        .I4(\spo[2]_INST_0_i_19_n_0 ),
        .I5(a[1]),
        .O(\spo[10]_INST_0_i_39_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[10]_INST_0_i_4 
       (.I0(\spo[10]_INST_0_i_10_n_0 ),
        .I1(a[9]),
        .I2(\spo[10]_INST_0_i_11_n_0 ),
        .I3(a[8]),
        .I4(\spo[10]_INST_0_i_12_n_0 ),
        .O(\spo[10]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h522200001E210000)) 
    \spo[10]_INST_0_i_40 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[2]_INST_0_i_19_n_0 ),
        .I5(a[2]),
        .O(\spo[10]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h22008000E0008900)) 
    \spo[10]_INST_0_i_41 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[2]_INST_0_i_19_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[10]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h63990000BD620000)) 
    \spo[10]_INST_0_i_42 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[2]),
        .I4(\spo[2]_INST_0_i_19_n_0 ),
        .I5(a[1]),
        .O(\spo[10]_INST_0_i_42_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[10]_INST_0_i_5 
       (.I0(\spo[10]_INST_0_i_13_n_0 ),
        .I1(a[9]),
        .I2(\spo[10]_INST_0_i_14_n_0 ),
        .I3(a[8]),
        .I4(\spo[10]_INST_0_i_15_n_0 ),
        .O(\spo[10]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[10]_INST_0_i_6 
       (.I0(\spo[10]_INST_0_i_16_n_0 ),
        .I1(a[9]),
        .I2(\spo[10]_INST_0_i_17_n_0 ),
        .I3(a[8]),
        .I4(\spo[10]_INST_0_i_18_n_0 ),
        .O(\spo[10]_INST_0_i_6_n_0 ));
  MUXF7 \spo[10]_INST_0_i_7 
       (.I0(\spo[10]_INST_0_i_19_n_0 ),
        .I1(\spo[10]_INST_0_i_20_n_0 ),
        .O(\spo[10]_INST_0_i_7_n_0 ),
        .S(a[0]));
  MUXF7 \spo[10]_INST_0_i_8 
       (.I0(\spo[10]_INST_0_i_21_n_0 ),
        .I1(\spo[10]_INST_0_i_22_n_0 ),
        .O(\spo[10]_INST_0_i_8_n_0 ),
        .S(a[0]));
  MUXF7 \spo[10]_INST_0_i_9 
       (.I0(\spo[10]_INST_0_i_23_n_0 ),
        .I1(\spo[10]_INST_0_i_24_n_0 ),
        .O(\spo[10]_INST_0_i_9_n_0 ),
        .S(a[0]));
  MUXF8 \spo[11]_INST_0 
       (.I0(\spo[11]_INST_0_i_1_n_0 ),
        .I1(\spo[11]_INST_0_i_2_n_0 ),
        .O(spo[10]),
        .S(a[3]));
  MUXF7 \spo[11]_INST_0_i_1 
       (.I0(\spo[11]_INST_0_i_3_n_0 ),
        .I1(\spo[11]_INST_0_i_4_n_0 ),
        .O(\spo[11]_INST_0_i_1_n_0 ),
        .S(a[4]));
  MUXF7 \spo[11]_INST_0_i_10 
       (.I0(\spo[11]_INST_0_i_25_n_0 ),
        .I1(\spo[11]_INST_0_i_26_n_0 ),
        .O(\spo[11]_INST_0_i_10_n_0 ),
        .S(a[0]));
  MUXF7 \spo[11]_INST_0_i_11 
       (.I0(\spo[11]_INST_0_i_27_n_0 ),
        .I1(\spo[11]_INST_0_i_28_n_0 ),
        .O(\spo[11]_INST_0_i_11_n_0 ),
        .S(a[0]));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \spo[11]_INST_0_i_12 
       (.I0(\spo[1]_INST_0_i_31_n_0 ),
        .I1(a[6]),
        .I2(\spo[30]_INST_0_i_22_n_0 ),
        .I3(a[7]),
        .I4(a[0]),
        .I5(\spo[11]_INST_0_i_29_n_0 ),
        .O(\spo[11]_INST_0_i_12_n_0 ));
  MUXF7 \spo[11]_INST_0_i_13 
       (.I0(\spo[11]_INST_0_i_30_n_0 ),
        .I1(\spo[11]_INST_0_i_31_n_0 ),
        .O(\spo[11]_INST_0_i_13_n_0 ),
        .S(a[0]));
  MUXF7 \spo[11]_INST_0_i_14 
       (.I0(\spo[11]_INST_0_i_32_n_0 ),
        .I1(\spo[11]_INST_0_i_33_n_0 ),
        .O(\spo[11]_INST_0_i_14_n_0 ),
        .S(a[0]));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \spo[11]_INST_0_i_15 
       (.I0(\spo[5]_INST_0_i_12_n_0 ),
        .I1(a[7]),
        .I2(\spo[4]_INST_0_i_20_n_0 ),
        .I3(a[6]),
        .I4(a[0]),
        .I5(\spo[11]_INST_0_i_34_n_0 ),
        .O(\spo[11]_INST_0_i_15_n_0 ));
  MUXF7 \spo[11]_INST_0_i_16 
       (.I0(\spo[11]_INST_0_i_35_n_0 ),
        .I1(\spo[11]_INST_0_i_36_n_0 ),
        .O(\spo[11]_INST_0_i_16_n_0 ),
        .S(a[0]));
  MUXF7 \spo[11]_INST_0_i_17 
       (.I0(\spo[11]_INST_0_i_37_n_0 ),
        .I1(\spo[11]_INST_0_i_38_n_0 ),
        .O(\spo[11]_INST_0_i_17_n_0 ),
        .S(a[0]));
  MUXF7 \spo[11]_INST_0_i_18 
       (.I0(\spo[11]_INST_0_i_39_n_0 ),
        .I1(\spo[11]_INST_0_i_40_n_0 ),
        .O(\spo[11]_INST_0_i_18_n_0 ),
        .S(a[0]));
  LUT6 #(
    .INIT(64'h11200000807A0000)) 
    \spo[11]_INST_0_i_19 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[6]_INST_0_i_16_n_0 ),
        .I5(a[2]),
        .O(\spo[11]_INST_0_i_19_n_0 ));
  MUXF7 \spo[11]_INST_0_i_2 
       (.I0(\spo[11]_INST_0_i_5_n_0 ),
        .I1(\spo[11]_INST_0_i_6_n_0 ),
        .O(\spo[11]_INST_0_i_2_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h1200440004004200)) 
    \spo[11]_INST_0_i_20 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[6]_INST_0_i_16_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[11]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h0400200038000800)) 
    \spo[11]_INST_0_i_21 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[6]_INST_0_i_16_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[11]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h1047000048600000)) 
    \spo[11]_INST_0_i_22 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[6]),
        .I3(a[1]),
        .I4(\spo[6]_INST_0_i_16_n_0 ),
        .I5(a[2]),
        .O(\spo[11]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h8000400000005000)) 
    \spo[11]_INST_0_i_23 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[6]_INST_0_i_16_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[11]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h1815000091120000)) 
    \spo[11]_INST_0_i_24 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[2]),
        .I4(\spo[6]_INST_0_i_16_n_0 ),
        .I5(a[1]),
        .O(\spo[11]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h0000000090100040)) 
    \spo[11]_INST_0_i_25 
       (.I0(a[7]),
        .I1(a[2]),
        .I2(\spo[25]_INST_0_i_27_n_0 ),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[6]),
        .O(\spo[11]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h6000A800A8000000)) 
    \spo[11]_INST_0_i_26 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(\spo[25]_INST_0_i_27_n_0 ),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[11]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hE0000A0008008100)) 
    \spo[11]_INST_0_i_27 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[25]_INST_0_i_27_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[11]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h0000E80000009C00)) 
    \spo[11]_INST_0_i_28 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[25]_INST_0_i_27_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[11]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h1055000080000000)) 
    \spo[11]_INST_0_i_29 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(\spo[25]_INST_0_i_27_n_0 ),
        .I5(a[2]),
        .O(\spo[11]_INST_0_i_29_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[11]_INST_0_i_3 
       (.I0(\spo[11]_INST_0_i_7_n_0 ),
        .I1(a[9]),
        .I2(\spo[11]_INST_0_i_8_n_0 ),
        .I3(a[8]),
        .I4(\spo[11]_INST_0_i_9_n_0 ),
        .O(\spo[11]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h3405000004800000)) 
    \spo[11]_INST_0_i_30 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[4]_INST_0_i_14_n_0 ),
        .I5(a[2]),
        .O(\spo[11]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h909500008D080000)) 
    \spo[11]_INST_0_i_31 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(a[5]),
        .I4(\spo[4]_INST_0_i_14_n_0 ),
        .I5(a[1]),
        .O(\spo[11]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h100000002F000000)) 
    \spo[11]_INST_0_i_32 
       (.I0(a[1]),
        .I1(a[5]),
        .I2(a[7]),
        .I3(a[2]),
        .I4(\spo[6]_INST_0_i_16_n_0 ),
        .I5(a[6]),
        .O(\spo[11]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hB500000085450000)) 
    \spo[11]_INST_0_i_33 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[2]),
        .I4(\spo[4]_INST_0_i_14_n_0 ),
        .I5(a[1]),
        .O(\spo[11]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h4400448000000000)) 
    \spo[11]_INST_0_i_34 
       (.I0(a[2]),
        .I1(\spo[6]_INST_0_i_16_n_0 ),
        .I2(a[1]),
        .I3(a[5]),
        .I4(a[6]),
        .I5(a[7]),
        .O(\spo[11]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h6000300040000000)) 
    \spo[11]_INST_0_i_35 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[4]_INST_0_i_14_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[11]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h674000003A0A0000)) 
    \spo[11]_INST_0_i_36 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[4]_INST_0_i_14_n_0 ),
        .I5(a[2]),
        .O(\spo[11]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h6000400089008000)) 
    \spo[11]_INST_0_i_37 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[4]_INST_0_i_14_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[11]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h7000A20024008800)) 
    \spo[11]_INST_0_i_38 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[4]_INST_0_i_14_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[11]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h8010000040810000)) 
    \spo[11]_INST_0_i_39 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[4]_INST_0_i_14_n_0 ),
        .I5(a[2]),
        .O(\spo[11]_INST_0_i_39_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[11]_INST_0_i_4 
       (.I0(\spo[11]_INST_0_i_10_n_0 ),
        .I1(a[9]),
        .I2(\spo[11]_INST_0_i_11_n_0 ),
        .I3(a[8]),
        .I4(\spo[11]_INST_0_i_12_n_0 ),
        .O(\spo[11]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0117000001000000)) 
    \spo[11]_INST_0_i_40 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[2]),
        .I4(\spo[4]_INST_0_i_14_n_0 ),
        .I5(a[1]),
        .O(\spo[11]_INST_0_i_40_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[11]_INST_0_i_5 
       (.I0(\spo[11]_INST_0_i_13_n_0 ),
        .I1(a[9]),
        .I2(\spo[11]_INST_0_i_14_n_0 ),
        .I3(a[8]),
        .I4(\spo[11]_INST_0_i_15_n_0 ),
        .O(\spo[11]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[11]_INST_0_i_6 
       (.I0(\spo[11]_INST_0_i_16_n_0 ),
        .I1(a[9]),
        .I2(\spo[11]_INST_0_i_17_n_0 ),
        .I3(a[8]),
        .I4(\spo[11]_INST_0_i_18_n_0 ),
        .O(\spo[11]_INST_0_i_6_n_0 ));
  MUXF7 \spo[11]_INST_0_i_7 
       (.I0(\spo[11]_INST_0_i_19_n_0 ),
        .I1(\spo[11]_INST_0_i_20_n_0 ),
        .O(\spo[11]_INST_0_i_7_n_0 ),
        .S(a[0]));
  MUXF7 \spo[11]_INST_0_i_8 
       (.I0(\spo[11]_INST_0_i_21_n_0 ),
        .I1(\spo[11]_INST_0_i_22_n_0 ),
        .O(\spo[11]_INST_0_i_8_n_0 ),
        .S(a[0]));
  MUXF7 \spo[11]_INST_0_i_9 
       (.I0(\spo[11]_INST_0_i_23_n_0 ),
        .I1(\spo[11]_INST_0_i_24_n_0 ),
        .O(\spo[11]_INST_0_i_9_n_0 ),
        .S(a[0]));
  MUXF8 \spo[12]_INST_0 
       (.I0(\spo[12]_INST_0_i_1_n_0 ),
        .I1(\spo[12]_INST_0_i_2_n_0 ),
        .O(spo[11]),
        .S(a[3]));
  MUXF7 \spo[12]_INST_0_i_1 
       (.I0(\spo[12]_INST_0_i_3_n_0 ),
        .I1(\spo[12]_INST_0_i_4_n_0 ),
        .O(\spo[12]_INST_0_i_1_n_0 ),
        .S(a[4]));
  MUXF7 \spo[12]_INST_0_i_10 
       (.I0(\spo[12]_INST_0_i_25_n_0 ),
        .I1(\spo[12]_INST_0_i_26_n_0 ),
        .O(\spo[12]_INST_0_i_10_n_0 ),
        .S(a[0]));
  MUXF7 \spo[12]_INST_0_i_11 
       (.I0(\spo[12]_INST_0_i_27_n_0 ),
        .I1(\spo[12]_INST_0_i_28_n_0 ),
        .O(\spo[12]_INST_0_i_11_n_0 ),
        .S(a[0]));
  MUXF7 \spo[12]_INST_0_i_12 
       (.I0(\spo[12]_INST_0_i_29_n_0 ),
        .I1(\spo[12]_INST_0_i_30_n_0 ),
        .O(\spo[12]_INST_0_i_12_n_0 ),
        .S(a[0]));
  MUXF7 \spo[12]_INST_0_i_13 
       (.I0(\spo[12]_INST_0_i_31_n_0 ),
        .I1(\spo[12]_INST_0_i_32_n_0 ),
        .O(\spo[12]_INST_0_i_13_n_0 ),
        .S(a[0]));
  MUXF7 \spo[12]_INST_0_i_14 
       (.I0(\spo[12]_INST_0_i_33_n_0 ),
        .I1(\spo[12]_INST_0_i_34_n_0 ),
        .O(\spo[12]_INST_0_i_14_n_0 ),
        .S(a[0]));
  MUXF7 \spo[12]_INST_0_i_15 
       (.I0(\spo[12]_INST_0_i_35_n_0 ),
        .I1(\spo[12]_INST_0_i_36_n_0 ),
        .O(\spo[12]_INST_0_i_15_n_0 ),
        .S(a[0]));
  MUXF7 \spo[12]_INST_0_i_16 
       (.I0(\spo[12]_INST_0_i_37_n_0 ),
        .I1(\spo[12]_INST_0_i_38_n_0 ),
        .O(\spo[12]_INST_0_i_16_n_0 ),
        .S(a[0]));
  MUXF7 \spo[12]_INST_0_i_17 
       (.I0(\spo[12]_INST_0_i_39_n_0 ),
        .I1(\spo[12]_INST_0_i_40_n_0 ),
        .O(\spo[12]_INST_0_i_17_n_0 ),
        .S(a[0]));
  MUXF7 \spo[12]_INST_0_i_18 
       (.I0(\spo[12]_INST_0_i_41_n_0 ),
        .I1(\spo[12]_INST_0_i_42_n_0 ),
        .O(\spo[12]_INST_0_i_18_n_0 ),
        .S(a[0]));
  LUT6 #(
    .INIT(64'h58B50000A6480000)) 
    \spo[12]_INST_0_i_19 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(a[5]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[1]),
        .O(\spo[12]_INST_0_i_19_n_0 ));
  MUXF7 \spo[12]_INST_0_i_2 
       (.I0(\spo[12]_INST_0_i_5_n_0 ),
        .I1(\spo[12]_INST_0_i_6_n_0 ),
        .O(\spo[12]_INST_0_i_2_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h5A20000044F30000)) 
    \spo[12]_INST_0_i_20 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(a[5]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[1]),
        .O(\spo[12]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h1DC0000028280000)) 
    \spo[12]_INST_0_i_21 
       (.I0(a[7]),
        .I1(a[2]),
        .I2(a[6]),
        .I3(a[1]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[5]),
        .O(\spo[12]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h0C770000A0180000)) 
    \spo[12]_INST_0_i_22 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[2]),
        .O(\spo[12]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h4400000054006A00)) 
    \spo[12]_INST_0_i_23 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[29]_INST_0_i_36_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[12]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h08850000804A0000)) 
    \spo[12]_INST_0_i_24 
       (.I0(a[7]),
        .I1(a[2]),
        .I2(a[6]),
        .I3(a[1]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[5]),
        .O(\spo[12]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h2415000010880000)) 
    \spo[12]_INST_0_i_25 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[2]),
        .O(\spo[12]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h3ECD000001180000)) 
    \spo[12]_INST_0_i_26 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[2]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[1]),
        .O(\spo[12]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hD21100004AA00000)) 
    \spo[12]_INST_0_i_27 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[2]),
        .O(\spo[12]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hA47A000009C60000)) 
    \spo[12]_INST_0_i_28 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[2]),
        .O(\spo[12]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h20200020404080E0)) 
    \spo[12]_INST_0_i_29 
       (.I0(a[7]),
        .I1(a[2]),
        .I2(\spo[29]_INST_0_i_36_n_0 ),
        .I3(a[5]),
        .I4(a[1]),
        .I5(a[6]),
        .O(\spo[12]_INST_0_i_29_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[12]_INST_0_i_3 
       (.I0(\spo[12]_INST_0_i_7_n_0 ),
        .I1(a[9]),
        .I2(\spo[12]_INST_0_i_8_n_0 ),
        .I3(a[8]),
        .I4(\spo[12]_INST_0_i_9_n_0 ),
        .O(\spo[12]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA40092008000A000)) 
    \spo[12]_INST_0_i_30 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[29]_INST_0_i_36_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[12]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h32010000E8C20000)) 
    \spo[12]_INST_0_i_31 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[2]),
        .O(\spo[12]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hD09500003F6C0000)) 
    \spo[12]_INST_0_i_32 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(a[5]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[1]),
        .O(\spo[12]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h1740000020320000)) 
    \spo[12]_INST_0_i_33 
       (.I0(a[7]),
        .I1(a[1]),
        .I2(a[6]),
        .I3(a[2]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[5]),
        .O(\spo[12]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h1815000064040000)) 
    \spo[12]_INST_0_i_34 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[2]),
        .O(\spo[12]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h003B0000F8000000)) 
    \spo[12]_INST_0_i_35 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[6]),
        .I3(a[1]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[2]),
        .O(\spo[12]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h9015000098900000)) 
    \spo[12]_INST_0_i_36 
       (.I0(a[7]),
        .I1(a[2]),
        .I2(a[6]),
        .I3(a[1]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[5]),
        .O(\spo[12]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h202100000A140000)) 
    \spo[12]_INST_0_i_37 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[2]),
        .O(\spo[12]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h413B0000604A0000)) 
    \spo[12]_INST_0_i_38 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(a[5]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[1]),
        .O(\spo[12]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hCC3C000008830000)) 
    \spo[12]_INST_0_i_39 
       (.I0(a[6]),
        .I1(a[7]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[2]),
        .O(\spo[12]_INST_0_i_39_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[12]_INST_0_i_4 
       (.I0(\spo[12]_INST_0_i_10_n_0 ),
        .I1(a[9]),
        .I2(\spo[12]_INST_0_i_11_n_0 ),
        .I3(a[8]),
        .I4(\spo[12]_INST_0_i_12_n_0 ),
        .O(\spo[12]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h426A000054290000)) 
    \spo[12]_INST_0_i_40 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[2]),
        .O(\spo[12]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hBAB0000048B50000)) 
    \spo[12]_INST_0_i_41 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[6]),
        .I3(a[1]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[2]),
        .O(\spo[12]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h76BD00008A620000)) 
    \spo[12]_INST_0_i_42 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[2]),
        .O(\spo[12]_INST_0_i_42_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[12]_INST_0_i_5 
       (.I0(\spo[12]_INST_0_i_13_n_0 ),
        .I1(a[9]),
        .I2(\spo[12]_INST_0_i_14_n_0 ),
        .I3(a[8]),
        .I4(\spo[12]_INST_0_i_15_n_0 ),
        .O(\spo[12]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[12]_INST_0_i_6 
       (.I0(\spo[12]_INST_0_i_16_n_0 ),
        .I1(a[9]),
        .I2(\spo[12]_INST_0_i_17_n_0 ),
        .I3(a[8]),
        .I4(\spo[12]_INST_0_i_18_n_0 ),
        .O(\spo[12]_INST_0_i_6_n_0 ));
  MUXF7 \spo[12]_INST_0_i_7 
       (.I0(\spo[12]_INST_0_i_19_n_0 ),
        .I1(\spo[12]_INST_0_i_20_n_0 ),
        .O(\spo[12]_INST_0_i_7_n_0 ),
        .S(a[0]));
  MUXF7 \spo[12]_INST_0_i_8 
       (.I0(\spo[12]_INST_0_i_21_n_0 ),
        .I1(\spo[12]_INST_0_i_22_n_0 ),
        .O(\spo[12]_INST_0_i_8_n_0 ),
        .S(a[0]));
  MUXF7 \spo[12]_INST_0_i_9 
       (.I0(\spo[12]_INST_0_i_23_n_0 ),
        .I1(\spo[12]_INST_0_i_24_n_0 ),
        .O(\spo[12]_INST_0_i_9_n_0 ),
        .S(a[0]));
  MUXF8 \spo[13]_INST_0 
       (.I0(\spo[13]_INST_0_i_1_n_0 ),
        .I1(\spo[13]_INST_0_i_2_n_0 ),
        .O(spo[12]),
        .S(a[3]));
  MUXF7 \spo[13]_INST_0_i_1 
       (.I0(\spo[13]_INST_0_i_3_n_0 ),
        .I1(\spo[13]_INST_0_i_4_n_0 ),
        .O(\spo[13]_INST_0_i_1_n_0 ),
        .S(a[4]));
  MUXF7 \spo[13]_INST_0_i_10 
       (.I0(\spo[13]_INST_0_i_25_n_0 ),
        .I1(\spo[13]_INST_0_i_26_n_0 ),
        .O(\spo[13]_INST_0_i_10_n_0 ),
        .S(a[0]));
  MUXF7 \spo[13]_INST_0_i_11 
       (.I0(\spo[13]_INST_0_i_27_n_0 ),
        .I1(\spo[13]_INST_0_i_28_n_0 ),
        .O(\spo[13]_INST_0_i_11_n_0 ),
        .S(a[0]));
  MUXF7 \spo[13]_INST_0_i_12 
       (.I0(\spo[13]_INST_0_i_29_n_0 ),
        .I1(\spo[13]_INST_0_i_30_n_0 ),
        .O(\spo[13]_INST_0_i_12_n_0 ),
        .S(a[0]));
  MUXF7 \spo[13]_INST_0_i_13 
       (.I0(\spo[13]_INST_0_i_31_n_0 ),
        .I1(\spo[13]_INST_0_i_32_n_0 ),
        .O(\spo[13]_INST_0_i_13_n_0 ),
        .S(a[0]));
  MUXF7 \spo[13]_INST_0_i_14 
       (.I0(\spo[13]_INST_0_i_33_n_0 ),
        .I1(\spo[13]_INST_0_i_34_n_0 ),
        .O(\spo[13]_INST_0_i_14_n_0 ),
        .S(a[0]));
  LUT6 #(
    .INIT(64'hF3B8C0B800C000C0)) 
    \spo[13]_INST_0_i_15 
       (.I0(\spo[4]_INST_0_i_27_n_0 ),
        .I1(a[0]),
        .I2(\spo[4]_INST_0_i_20_n_0 ),
        .I3(a[6]),
        .I4(\spo[6]_INST_0_i_21_n_0 ),
        .I5(a[7]),
        .O(\spo[13]_INST_0_i_15_n_0 ));
  MUXF7 \spo[13]_INST_0_i_16 
       (.I0(\spo[13]_INST_0_i_35_n_0 ),
        .I1(\spo[13]_INST_0_i_36_n_0 ),
        .O(\spo[13]_INST_0_i_16_n_0 ),
        .S(a[0]));
  MUXF7 \spo[13]_INST_0_i_17 
       (.I0(\spo[13]_INST_0_i_37_n_0 ),
        .I1(\spo[13]_INST_0_i_38_n_0 ),
        .O(\spo[13]_INST_0_i_17_n_0 ),
        .S(a[0]));
  LUT6 #(
    .INIT(64'h88888888BBB888B8)) 
    \spo[13]_INST_0_i_18 
       (.I0(\spo[13]_INST_0_i_39_n_0 ),
        .I1(a[0]),
        .I2(\spo[13]_INST_0_i_40_n_0 ),
        .I3(a[6]),
        .I4(\spo[25]_INST_0_i_30_n_0 ),
        .I5(a[7]),
        .O(\spo[13]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h1200870004000A00)) 
    \spo[13]_INST_0_i_19 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(\spo[4]_INST_0_i_14_n_0 ),
        .I4(a[2]),
        .I5(a[5]),
        .O(\spo[13]_INST_0_i_19_n_0 ));
  MUXF7 \spo[13]_INST_0_i_2 
       (.I0(\spo[13]_INST_0_i_5_n_0 ),
        .I1(\spo[13]_INST_0_i_6_n_0 ),
        .O(\spo[13]_INST_0_i_2_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h00700040000000A0)) 
    \spo[13]_INST_0_i_20 
       (.I0(a[7]),
        .I1(a[2]),
        .I2(\spo[4]_INST_0_i_14_n_0 ),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[6]),
        .O(\spo[13]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h1000400008002400)) 
    \spo[13]_INST_0_i_21 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[4]_INST_0_i_14_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[13]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h0000440062001000)) 
    \spo[13]_INST_0_i_22 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[4]_INST_0_i_14_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[13]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000C01040)) 
    \spo[13]_INST_0_i_23 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(\spo[4]_INST_0_i_14_n_0 ),
        .I3(a[1]),
        .I4(a[6]),
        .I5(a[7]),
        .O(\spo[13]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h2845000091120000)) 
    \spo[13]_INST_0_i_24 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[2]),
        .I4(\spo[4]_INST_0_i_14_n_0 ),
        .I5(a[1]),
        .O(\spo[13]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h0A15000000000000)) 
    \spo[13]_INST_0_i_25 
       (.I0(a[7]),
        .I1(a[1]),
        .I2(a[6]),
        .I3(a[2]),
        .I4(\spo[4]_INST_0_i_14_n_0 ),
        .I5(a[5]),
        .O(\spo[13]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h20002000A0109000)) 
    \spo[13]_INST_0_i_26 
       (.I0(a[7]),
        .I1(a[2]),
        .I2(\spo[4]_INST_0_i_14_n_0 ),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[6]),
        .O(\spo[13]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h04000B0080000000)) 
    \spo[13]_INST_0_i_27 
       (.I0(a[1]),
        .I1(a[7]),
        .I2(a[5]),
        .I3(\spo[4]_INST_0_i_14_n_0 ),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[13]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h02002A0088004000)) 
    \spo[13]_INST_0_i_28 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(\spo[4]_INST_0_i_14_n_0 ),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[13]_INST_0_i_28_n_0 ));
  LUT5 #(
    .INIT(32'h42005000)) 
    \spo[13]_INST_0_i_29 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[4]_INST_0_i_14_n_0 ),
        .I4(a[5]),
        .O(\spo[13]_INST_0_i_29_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[13]_INST_0_i_3 
       (.I0(\spo[13]_INST_0_i_7_n_0 ),
        .I1(a[9]),
        .I2(\spo[13]_INST_0_i_8_n_0 ),
        .I3(a[8]),
        .I4(\spo[13]_INST_0_i_9_n_0 ),
        .O(\spo[13]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0100780000006800)) 
    \spo[13]_INST_0_i_30 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(\spo[4]_INST_0_i_14_n_0 ),
        .I4(a[2]),
        .I5(a[5]),
        .O(\spo[13]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h10000D0040004000)) 
    \spo[13]_INST_0_i_31 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(\spo[6]_INST_0_i_16_n_0 ),
        .I4(a[2]),
        .I5(a[5]),
        .O(\spo[13]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h9914000000D40000)) 
    \spo[13]_INST_0_i_32 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[6]_INST_0_i_16_n_0 ),
        .I5(a[2]),
        .O(\spo[13]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h8000000045020000)) 
    \spo[13]_INST_0_i_33 
       (.I0(a[7]),
        .I1(a[1]),
        .I2(a[6]),
        .I3(a[2]),
        .I4(\spo[6]_INST_0_i_16_n_0 ),
        .I5(a[5]),
        .O(\spo[13]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h1111000010840000)) 
    \spo[13]_INST_0_i_34 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(\spo[6]_INST_0_i_16_n_0 ),
        .I5(a[2]),
        .O(\spo[13]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h4000603020000000)) 
    \spo[13]_INST_0_i_35 
       (.I0(a[7]),
        .I1(a[1]),
        .I2(\spo[4]_INST_0_i_14_n_0 ),
        .I3(a[2]),
        .I4(a[5]),
        .I5(a[6]),
        .O(\spo[13]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h4000400012004200)) 
    \spo[13]_INST_0_i_36 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[4]_INST_0_i_14_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[13]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h4000004080200080)) 
    \spo[13]_INST_0_i_37 
       (.I0(a[7]),
        .I1(a[2]),
        .I2(\spo[4]_INST_0_i_14_n_0 ),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[6]),
        .O(\spo[13]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h500030A00020A080)) 
    \spo[13]_INST_0_i_38 
       (.I0(a[7]),
        .I1(a[2]),
        .I2(\spo[4]_INST_0_i_14_n_0 ),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[6]),
        .O(\spo[13]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004404008)) 
    \spo[13]_INST_0_i_39 
       (.I0(a[2]),
        .I1(\spo[4]_INST_0_i_14_n_0 ),
        .I2(a[1]),
        .I3(a[5]),
        .I4(a[6]),
        .I5(a[7]),
        .O(\spo[13]_INST_0_i_39_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[13]_INST_0_i_4 
       (.I0(\spo[13]_INST_0_i_10_n_0 ),
        .I1(a[9]),
        .I2(\spo[13]_INST_0_i_11_n_0 ),
        .I3(a[8]),
        .I4(\spo[13]_INST_0_i_12_n_0 ),
        .O(\spo[13]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h2010)) 
    \spo[13]_INST_0_i_40 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(\spo[4]_INST_0_i_14_n_0 ),
        .I3(a[2]),
        .O(\spo[13]_INST_0_i_40_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[13]_INST_0_i_5 
       (.I0(\spo[13]_INST_0_i_13_n_0 ),
        .I1(a[9]),
        .I2(\spo[13]_INST_0_i_14_n_0 ),
        .I3(a[8]),
        .I4(\spo[13]_INST_0_i_15_n_0 ),
        .O(\spo[13]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[13]_INST_0_i_6 
       (.I0(\spo[13]_INST_0_i_16_n_0 ),
        .I1(a[9]),
        .I2(\spo[13]_INST_0_i_17_n_0 ),
        .I3(a[8]),
        .I4(\spo[13]_INST_0_i_18_n_0 ),
        .O(\spo[13]_INST_0_i_6_n_0 ));
  MUXF7 \spo[13]_INST_0_i_7 
       (.I0(\spo[13]_INST_0_i_19_n_0 ),
        .I1(\spo[13]_INST_0_i_20_n_0 ),
        .O(\spo[13]_INST_0_i_7_n_0 ),
        .S(a[0]));
  MUXF7 \spo[13]_INST_0_i_8 
       (.I0(\spo[13]_INST_0_i_21_n_0 ),
        .I1(\spo[13]_INST_0_i_22_n_0 ),
        .O(\spo[13]_INST_0_i_8_n_0 ),
        .S(a[0]));
  MUXF7 \spo[13]_INST_0_i_9 
       (.I0(\spo[13]_INST_0_i_23_n_0 ),
        .I1(\spo[13]_INST_0_i_24_n_0 ),
        .O(\spo[13]_INST_0_i_9_n_0 ),
        .S(a[0]));
  MUXF8 \spo[14]_INST_0 
       (.I0(\spo[14]_INST_0_i_1_n_0 ),
        .I1(\spo[14]_INST_0_i_2_n_0 ),
        .O(spo[13]),
        .S(a[3]));
  MUXF7 \spo[14]_INST_0_i_1 
       (.I0(\spo[14]_INST_0_i_3_n_0 ),
        .I1(\spo[14]_INST_0_i_4_n_0 ),
        .O(\spo[14]_INST_0_i_1_n_0 ),
        .S(a[4]));
  MUXF7 \spo[14]_INST_0_i_10 
       (.I0(\spo[14]_INST_0_i_25_n_0 ),
        .I1(\spo[14]_INST_0_i_26_n_0 ),
        .O(\spo[14]_INST_0_i_10_n_0 ),
        .S(a[0]));
  MUXF7 \spo[14]_INST_0_i_11 
       (.I0(\spo[14]_INST_0_i_27_n_0 ),
        .I1(\spo[14]_INST_0_i_28_n_0 ),
        .O(\spo[14]_INST_0_i_11_n_0 ),
        .S(a[0]));
  MUXF7 \spo[14]_INST_0_i_12 
       (.I0(\spo[14]_INST_0_i_29_n_0 ),
        .I1(\spo[14]_INST_0_i_30_n_0 ),
        .O(\spo[14]_INST_0_i_12_n_0 ),
        .S(a[0]));
  MUXF7 \spo[14]_INST_0_i_13 
       (.I0(\spo[14]_INST_0_i_31_n_0 ),
        .I1(\spo[14]_INST_0_i_32_n_0 ),
        .O(\spo[14]_INST_0_i_13_n_0 ),
        .S(a[0]));
  MUXF7 \spo[14]_INST_0_i_14 
       (.I0(\spo[14]_INST_0_i_33_n_0 ),
        .I1(\spo[14]_INST_0_i_34_n_0 ),
        .O(\spo[14]_INST_0_i_14_n_0 ),
        .S(a[0]));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \spo[14]_INST_0_i_15 
       (.I0(\spo[30]_INST_0_i_21_n_0 ),
        .I1(a[7]),
        .I2(\spo[4]_INST_0_i_20_n_0 ),
        .I3(a[6]),
        .I4(a[0]),
        .I5(\spo[14]_INST_0_i_35_n_0 ),
        .O(\spo[14]_INST_0_i_15_n_0 ));
  MUXF7 \spo[14]_INST_0_i_16 
       (.I0(\spo[14]_INST_0_i_36_n_0 ),
        .I1(\spo[14]_INST_0_i_37_n_0 ),
        .O(\spo[14]_INST_0_i_16_n_0 ),
        .S(a[0]));
  MUXF7 \spo[14]_INST_0_i_17 
       (.I0(\spo[14]_INST_0_i_38_n_0 ),
        .I1(\spo[14]_INST_0_i_39_n_0 ),
        .O(\spo[14]_INST_0_i_17_n_0 ),
        .S(a[0]));
  MUXF7 \spo[14]_INST_0_i_18 
       (.I0(\spo[14]_INST_0_i_40_n_0 ),
        .I1(\spo[14]_INST_0_i_41_n_0 ),
        .O(\spo[14]_INST_0_i_18_n_0 ),
        .S(a[0]));
  LUT6 #(
    .INIT(64'h2D4A000058B50000)) 
    \spo[14]_INST_0_i_19 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(a[5]),
        .I4(\spo[4]_INST_0_i_14_n_0 ),
        .I5(a[1]),
        .O(\spo[14]_INST_0_i_19_n_0 ));
  MUXF7 \spo[14]_INST_0_i_2 
       (.I0(\spo[14]_INST_0_i_5_n_0 ),
        .I1(\spo[14]_INST_0_i_6_n_0 ),
        .O(\spo[14]_INST_0_i_2_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'hC200560004004200)) 
    \spo[14]_INST_0_i_20 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[4]_INST_0_i_14_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[14]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hC81DA7F300000000)) 
    \spo[14]_INST_0_i_21 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(\spo[4]_INST_0_i_14_n_0 ),
        .O(\spo[14]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h024700000A600000)) 
    \spo[14]_INST_0_i_22 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[6]),
        .I3(a[1]),
        .I4(\spo[4]_INST_0_i_14_n_0 ),
        .I5(a[2]),
        .O(\spo[14]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h20A0A080F040E040)) 
    \spo[14]_INST_0_i_23 
       (.I0(a[7]),
        .I1(a[1]),
        .I2(\spo[4]_INST_0_i_14_n_0 ),
        .I3(a[5]),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[14]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h2091075500000000)) 
    \spo[14]_INST_0_i_24 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(\spo[4]_INST_0_i_14_n_0 ),
        .O(\spo[14]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hE5EA00007A570000)) 
    \spo[14]_INST_0_i_25 
       (.I0(a[7]),
        .I1(a[1]),
        .I2(a[6]),
        .I3(a[5]),
        .I4(\spo[4]_INST_0_i_14_n_0 ),
        .I5(a[2]),
        .O(\spo[14]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h6E200000891A0000)) 
    \spo[14]_INST_0_i_26 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[4]_INST_0_i_14_n_0 ),
        .I5(a[2]),
        .O(\spo[14]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h3D22000092D70000)) 
    \spo[14]_INST_0_i_27 
       (.I0(a[7]),
        .I1(a[1]),
        .I2(a[5]),
        .I3(a[6]),
        .I4(\spo[4]_INST_0_i_14_n_0 ),
        .I5(a[2]),
        .O(\spo[14]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h3A20000027100000)) 
    \spo[14]_INST_0_i_28 
       (.I0(a[7]),
        .I1(a[1]),
        .I2(a[6]),
        .I3(a[2]),
        .I4(\spo[4]_INST_0_i_14_n_0 ),
        .I5(a[5]),
        .O(\spo[14]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h2377000089560000)) 
    \spo[14]_INST_0_i_29 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[2]),
        .I4(\spo[4]_INST_0_i_14_n_0 ),
        .I5(a[1]),
        .O(\spo[14]_INST_0_i_29_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[14]_INST_0_i_3 
       (.I0(\spo[14]_INST_0_i_7_n_0 ),
        .I1(a[9]),
        .I2(\spo[14]_INST_0_i_8_n_0 ),
        .I3(a[8]),
        .I4(\spo[14]_INST_0_i_9_n_0 ),
        .O(\spo[14]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010402040)) 
    \spo[14]_INST_0_i_30 
       (.I0(a[7]),
        .I1(a[2]),
        .I2(\spo[4]_INST_0_i_14_n_0 ),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[6]),
        .O(\spo[14]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hC78A00001A3D0000)) 
    \spo[14]_INST_0_i_31 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(\spo[4]_INST_0_i_14_n_0 ),
        .I5(a[2]),
        .O(\spo[14]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h8901000035D40000)) 
    \spo[14]_INST_0_i_32 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[2]),
        .I4(\spo[4]_INST_0_i_14_n_0 ),
        .I5(a[1]),
        .O(\spo[14]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h689F00009FC80000)) 
    \spo[14]_INST_0_i_33 
       (.I0(a[7]),
        .I1(a[1]),
        .I2(a[6]),
        .I3(a[5]),
        .I4(\spo[4]_INST_0_i_14_n_0 ),
        .I5(a[2]),
        .O(\spo[14]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hB004000004150000)) 
    \spo[14]_INST_0_i_34 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(\spo[4]_INST_0_i_14_n_0 ),
        .I5(a[2]),
        .O(\spo[14]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h630084004200A600)) 
    \spo[14]_INST_0_i_35 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[6]_INST_0_i_16_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[14]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h1B46752100000000)) 
    \spo[14]_INST_0_i_36 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(\spo[4]_INST_0_i_14_n_0 ),
        .O(\spo[14]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h04002000A800A200)) 
    \spo[14]_INST_0_i_37 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(\spo[4]_INST_0_i_14_n_0 ),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[14]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h95F70000A15A0000)) 
    \spo[14]_INST_0_i_38 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[2]),
        .I4(\spo[4]_INST_0_i_14_n_0 ),
        .I5(a[1]),
        .O(\spo[14]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h5000100080A08080)) 
    \spo[14]_INST_0_i_39 
       (.I0(a[7]),
        .I1(a[2]),
        .I2(\spo[4]_INST_0_i_14_n_0 ),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[6]),
        .O(\spo[14]_INST_0_i_39_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[14]_INST_0_i_4 
       (.I0(\spo[14]_INST_0_i_10_n_0 ),
        .I1(a[9]),
        .I2(\spo[14]_INST_0_i_11_n_0 ),
        .I3(a[8]),
        .I4(\spo[14]_INST_0_i_12_n_0 ),
        .O(\spo[14]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4211000094C20000)) 
    \spo[14]_INST_0_i_40 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(\spo[4]_INST_0_i_14_n_0 ),
        .I5(a[2]),
        .O(\spo[14]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h0003000012400000)) 
    \spo[14]_INST_0_i_41 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[4]_INST_0_i_14_n_0 ),
        .I5(a[2]),
        .O(\spo[14]_INST_0_i_41_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[14]_INST_0_i_5 
       (.I0(\spo[14]_INST_0_i_13_n_0 ),
        .I1(a[9]),
        .I2(\spo[14]_INST_0_i_14_n_0 ),
        .I3(a[8]),
        .I4(\spo[14]_INST_0_i_15_n_0 ),
        .O(\spo[14]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[14]_INST_0_i_6 
       (.I0(\spo[14]_INST_0_i_16_n_0 ),
        .I1(a[9]),
        .I2(\spo[14]_INST_0_i_17_n_0 ),
        .I3(a[8]),
        .I4(\spo[14]_INST_0_i_18_n_0 ),
        .O(\spo[14]_INST_0_i_6_n_0 ));
  MUXF7 \spo[14]_INST_0_i_7 
       (.I0(\spo[14]_INST_0_i_19_n_0 ),
        .I1(\spo[14]_INST_0_i_20_n_0 ),
        .O(\spo[14]_INST_0_i_7_n_0 ),
        .S(a[0]));
  MUXF7 \spo[14]_INST_0_i_8 
       (.I0(\spo[14]_INST_0_i_21_n_0 ),
        .I1(\spo[14]_INST_0_i_22_n_0 ),
        .O(\spo[14]_INST_0_i_8_n_0 ),
        .S(a[0]));
  MUXF7 \spo[14]_INST_0_i_9 
       (.I0(\spo[14]_INST_0_i_23_n_0 ),
        .I1(\spo[14]_INST_0_i_24_n_0 ),
        .O(\spo[14]_INST_0_i_9_n_0 ),
        .S(a[0]));
  MUXF8 \spo[15]_INST_0 
       (.I0(\spo[15]_INST_0_i_1_n_0 ),
        .I1(\spo[15]_INST_0_i_2_n_0 ),
        .O(spo[14]),
        .S(a[3]));
  MUXF7 \spo[15]_INST_0_i_1 
       (.I0(\spo[15]_INST_0_i_3_n_0 ),
        .I1(\spo[15]_INST_0_i_4_n_0 ),
        .O(\spo[15]_INST_0_i_1_n_0 ),
        .S(a[4]));
  MUXF7 \spo[15]_INST_0_i_10 
       (.I0(\spo[15]_INST_0_i_24_n_0 ),
        .I1(\spo[15]_INST_0_i_25_n_0 ),
        .O(\spo[15]_INST_0_i_10_n_0 ),
        .S(a[0]));
  MUXF7 \spo[15]_INST_0_i_11 
       (.I0(\spo[15]_INST_0_i_26_n_0 ),
        .I1(\spo[15]_INST_0_i_27_n_0 ),
        .O(\spo[15]_INST_0_i_11_n_0 ),
        .S(a[0]));
  MUXF7 \spo[15]_INST_0_i_12 
       (.I0(\spo[15]_INST_0_i_28_n_0 ),
        .I1(\spo[15]_INST_0_i_29_n_0 ),
        .O(\spo[15]_INST_0_i_12_n_0 ),
        .S(a[0]));
  MUXF7 \spo[15]_INST_0_i_13 
       (.I0(\spo[15]_INST_0_i_30_n_0 ),
        .I1(\spo[15]_INST_0_i_31_n_0 ),
        .O(\spo[15]_INST_0_i_13_n_0 ),
        .S(a[0]));
  MUXF7 \spo[15]_INST_0_i_14 
       (.I0(\spo[15]_INST_0_i_32_n_0 ),
        .I1(\spo[15]_INST_0_i_33_n_0 ),
        .O(\spo[15]_INST_0_i_14_n_0 ),
        .S(a[0]));
  MUXF7 \spo[15]_INST_0_i_15 
       (.I0(\spo[15]_INST_0_i_34_n_0 ),
        .I1(\spo[15]_INST_0_i_35_n_0 ),
        .O(\spo[15]_INST_0_i_15_n_0 ),
        .S(a[0]));
  MUXF7 \spo[15]_INST_0_i_16 
       (.I0(\spo[15]_INST_0_i_36_n_0 ),
        .I1(\spo[15]_INST_0_i_37_n_0 ),
        .O(\spo[15]_INST_0_i_16_n_0 ),
        .S(a[0]));
  MUXF7 \spo[15]_INST_0_i_17 
       (.I0(\spo[15]_INST_0_i_38_n_0 ),
        .I1(\spo[15]_INST_0_i_39_n_0 ),
        .O(\spo[15]_INST_0_i_17_n_0 ),
        .S(a[0]));
  MUXF7 \spo[15]_INST_0_i_18 
       (.I0(\spo[15]_INST_0_i_40_n_0 ),
        .I1(\spo[15]_INST_0_i_41_n_0 ),
        .O(\spo[15]_INST_0_i_18_n_0 ),
        .S(a[0]));
  LUT6 #(
    .INIT(64'h53240000A47A0000)) 
    \spo[15]_INST_0_i_19 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[2]_INST_0_i_19_n_0 ),
        .I5(a[2]),
        .O(\spo[15]_INST_0_i_19_n_0 ));
  MUXF7 \spo[15]_INST_0_i_2 
       (.I0(\spo[15]_INST_0_i_5_n_0 ),
        .I1(\spo[15]_INST_0_i_6_n_0 ),
        .O(\spo[15]_INST_0_i_2_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h1200CE0004006200)) 
    \spo[15]_INST_0_i_20 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[2]_INST_0_i_19_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[15]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h174A000060300000)) 
    \spo[15]_INST_0_i_21 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[6]),
        .I3(a[1]),
        .I4(\spo[2]_INST_0_i_19_n_0 ),
        .I5(a[2]),
        .O(\spo[15]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h0422000054590000)) 
    \spo[15]_INST_0_i_22 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(a[5]),
        .I4(\spo[2]_INST_0_i_19_n_0 ),
        .I5(a[1]),
        .O(\spo[15]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h9A65000030000000)) 
    \spo[15]_INST_0_i_23 
       (.I0(a[7]),
        .I1(a[2]),
        .I2(a[6]),
        .I3(a[1]),
        .I4(\spo[2]_INST_0_i_19_n_0 ),
        .I5(a[5]),
        .O(\spo[15]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h0000202090902040)) 
    \spo[15]_INST_0_i_24 
       (.I0(a[7]),
        .I1(a[2]),
        .I2(\spo[2]_INST_0_i_19_n_0 ),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[6]),
        .O(\spo[15]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h2000200080109020)) 
    \spo[15]_INST_0_i_25 
       (.I0(a[7]),
        .I1(a[2]),
        .I2(\spo[2]_INST_0_i_19_n_0 ),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[6]),
        .O(\spo[15]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hE0001A002C008400)) 
    \spo[15]_INST_0_i_26 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[2]_INST_0_i_19_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[15]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h02000B0088000000)) 
    \spo[15]_INST_0_i_27 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(\spo[2]_INST_0_i_19_n_0 ),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[15]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h90C000005A790000)) 
    \spo[15]_INST_0_i_28 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(a[5]),
        .I4(\spo[2]_INST_0_i_19_n_0 ),
        .I5(a[1]),
        .O(\spo[15]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h1454000073880000)) 
    \spo[15]_INST_0_i_29 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[2]_INST_0_i_19_n_0 ),
        .I5(a[2]),
        .O(\spo[15]_INST_0_i_29_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[15]_INST_0_i_3 
       (.I0(\spo[15]_INST_0_i_7_n_0 ),
        .I1(a[9]),
        .I2(\spo[15]_INST_0_i_8_n_0 ),
        .I3(a[8]),
        .I4(\spo[15]_INST_0_i_9_n_0 ),
        .O(\spo[15]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h38550000C5C00000)) 
    \spo[15]_INST_0_i_30 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(\spo[2]_INST_0_i_19_n_0 ),
        .I5(a[2]),
        .O(\spo[15]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hD934000000D40000)) 
    \spo[15]_INST_0_i_31 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[2]_INST_0_i_19_n_0 ),
        .I5(a[2]),
        .O(\spo[15]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h9540000019870000)) 
    \spo[15]_INST_0_i_32 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[2]),
        .I4(\spo[2]_INST_0_i_19_n_0 ),
        .I5(a[1]),
        .O(\spo[15]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h3957000010840000)) 
    \spo[15]_INST_0_i_33 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(\spo[2]_INST_0_i_19_n_0 ),
        .I5(a[2]),
        .O(\spo[15]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h8000802050B0C010)) 
    \spo[15]_INST_0_i_34 
       (.I0(a[7]),
        .I1(a[1]),
        .I2(\spo[2]_INST_0_i_19_n_0 ),
        .I3(a[2]),
        .I4(a[5]),
        .I5(a[6]),
        .O(\spo[15]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h528B51BB00000000)) 
    \spo[15]_INST_0_i_35 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[5]),
        .I5(\spo[2]_INST_0_i_19_n_0 ),
        .O(\spo[15]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h600034004A008E00)) 
    \spo[15]_INST_0_i_36 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[2]_INST_0_i_19_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[15]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h0000400074000400)) 
    \spo[15]_INST_0_i_37 
       (.I0(a[6]),
        .I1(a[7]),
        .I2(a[2]),
        .I3(\spo[2]_INST_0_i_19_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[15]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h4040A0C080208080)) 
    \spo[15]_INST_0_i_38 
       (.I0(a[7]),
        .I1(a[2]),
        .I2(\spo[2]_INST_0_i_19_n_0 ),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[6]),
        .O(\spo[15]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h72EB000008280000)) 
    \spo[15]_INST_0_i_39 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[2]_INST_0_i_19_n_0 ),
        .I5(a[2]),
        .O(\spo[15]_INST_0_i_39_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[15]_INST_0_i_4 
       (.I0(\spo[15]_INST_0_i_10_n_0 ),
        .I1(a[9]),
        .I2(\spo[15]_INST_0_i_11_n_0 ),
        .I3(a[8]),
        .I4(\spo[15]_INST_0_i_12_n_0 ),
        .O(\spo[15]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h05100000420D0000)) 
    \spo[15]_INST_0_i_40 
       (.I0(a[7]),
        .I1(a[1]),
        .I2(a[6]),
        .I3(a[5]),
        .I4(\spo[2]_INST_0_i_19_n_0 ),
        .I5(a[2]),
        .O(\spo[15]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040404008)) 
    \spo[15]_INST_0_i_41 
       (.I0(a[2]),
        .I1(\spo[2]_INST_0_i_19_n_0 ),
        .I2(a[1]),
        .I3(a[5]),
        .I4(a[6]),
        .I5(a[7]),
        .O(\spo[15]_INST_0_i_41_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[15]_INST_0_i_5 
       (.I0(\spo[15]_INST_0_i_13_n_0 ),
        .I1(a[9]),
        .I2(\spo[15]_INST_0_i_14_n_0 ),
        .I3(a[8]),
        .I4(\spo[15]_INST_0_i_15_n_0 ),
        .O(\spo[15]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[15]_INST_0_i_6 
       (.I0(\spo[15]_INST_0_i_16_n_0 ),
        .I1(a[9]),
        .I2(\spo[15]_INST_0_i_17_n_0 ),
        .I3(a[8]),
        .I4(\spo[15]_INST_0_i_18_n_0 ),
        .O(\spo[15]_INST_0_i_6_n_0 ));
  MUXF7 \spo[15]_INST_0_i_7 
       (.I0(\spo[15]_INST_0_i_19_n_0 ),
        .I1(\spo[15]_INST_0_i_20_n_0 ),
        .O(\spo[15]_INST_0_i_7_n_0 ),
        .S(a[0]));
  MUXF7 \spo[15]_INST_0_i_8 
       (.I0(\spo[15]_INST_0_i_21_n_0 ),
        .I1(\spo[15]_INST_0_i_22_n_0 ),
        .O(\spo[15]_INST_0_i_8_n_0 ),
        .S(a[0]));
  LUT6 #(
    .INIT(64'hB8BBB88888888888)) 
    \spo[15]_INST_0_i_9 
       (.I0(\spo[15]_INST_0_i_23_n_0 ),
        .I1(a[0]),
        .I2(\spo[30]_INST_0_i_21_n_0 ),
        .I3(a[7]),
        .I4(\spo[6]_INST_0_i_18_n_0 ),
        .I5(a[6]),
        .O(\spo[15]_INST_0_i_9_n_0 ));
  MUXF8 \spo[16]_INST_0 
       (.I0(\spo[16]_INST_0_i_1_n_0 ),
        .I1(\spo[16]_INST_0_i_2_n_0 ),
        .O(spo[15]),
        .S(a[3]));
  MUXF7 \spo[16]_INST_0_i_1 
       (.I0(\spo[16]_INST_0_i_3_n_0 ),
        .I1(\spo[16]_INST_0_i_4_n_0 ),
        .O(\spo[16]_INST_0_i_1_n_0 ),
        .S(a[4]));
  MUXF7 \spo[16]_INST_0_i_10 
       (.I0(\spo[16]_INST_0_i_24_n_0 ),
        .I1(\spo[16]_INST_0_i_25_n_0 ),
        .O(\spo[16]_INST_0_i_10_n_0 ),
        .S(a[0]));
  MUXF7 \spo[16]_INST_0_i_11 
       (.I0(\spo[16]_INST_0_i_26_n_0 ),
        .I1(\spo[16]_INST_0_i_27_n_0 ),
        .O(\spo[16]_INST_0_i_11_n_0 ),
        .S(a[0]));
  MUXF7 \spo[16]_INST_0_i_12 
       (.I0(\spo[16]_INST_0_i_28_n_0 ),
        .I1(\spo[16]_INST_0_i_29_n_0 ),
        .O(\spo[16]_INST_0_i_12_n_0 ),
        .S(a[0]));
  MUXF7 \spo[16]_INST_0_i_13 
       (.I0(\spo[16]_INST_0_i_30_n_0 ),
        .I1(\spo[16]_INST_0_i_31_n_0 ),
        .O(\spo[16]_INST_0_i_13_n_0 ),
        .S(a[0]));
  MUXF7 \spo[16]_INST_0_i_14 
       (.I0(\spo[16]_INST_0_i_32_n_0 ),
        .I1(\spo[16]_INST_0_i_33_n_0 ),
        .O(\spo[16]_INST_0_i_14_n_0 ),
        .S(a[0]));
  MUXF7 \spo[16]_INST_0_i_15 
       (.I0(\spo[16]_INST_0_i_34_n_0 ),
        .I1(\spo[16]_INST_0_i_35_n_0 ),
        .O(\spo[16]_INST_0_i_15_n_0 ),
        .S(a[0]));
  LUT6 #(
    .INIT(64'h671800003A4E0000)) 
    \spo[16]_INST_0_i_16 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[31]_INST_0_i_37_n_0 ),
        .I5(a[2]),
        .O(\spo[16]_INST_0_i_16_n_0 ));
  MUXF8 \spo[16]_INST_0_i_17 
       (.I0(\spo[16]_INST_0_i_36_n_0 ),
        .I1(\spo[16]_INST_0_i_37_n_0 ),
        .O(\spo[16]_INST_0_i_17_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'h91A40000245A0000)) 
    \spo[16]_INST_0_i_18 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[31]_INST_0_i_37_n_0 ),
        .I5(a[2]),
        .O(\spo[16]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h56150000AD0E0000)) 
    \spo[16]_INST_0_i_19 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(\spo[31]_INST_0_i_37_n_0 ),
        .I5(a[2]),
        .O(\spo[16]_INST_0_i_19_n_0 ));
  MUXF7 \spo[16]_INST_0_i_2 
       (.I0(\spo[16]_INST_0_i_5_n_0 ),
        .I1(\spo[16]_INST_0_i_6_n_0 ),
        .O(\spo[16]_INST_0_i_2_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h14790000400C0000)) 
    \spo[16]_INST_0_i_20 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(a[5]),
        .I4(\spo[31]_INST_0_i_37_n_0 ),
        .I5(a[1]),
        .O(\spo[16]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hB6554B0500000000)) 
    \spo[16]_INST_0_i_21 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(\spo[31]_INST_0_i_37_n_0 ),
        .O(\spo[16]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hE04F00005FF00000)) 
    \spo[16]_INST_0_i_22 
       (.I0(a[7]),
        .I1(a[2]),
        .I2(a[6]),
        .I3(a[5]),
        .I4(\spo[31]_INST_0_i_37_n_0 ),
        .I5(a[1]),
        .O(\spo[16]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h66380000A9AA0000)) 
    \spo[16]_INST_0_i_23 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[31]_INST_0_i_37_n_0 ),
        .I5(a[2]),
        .O(\spo[16]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h0A95000000A80000)) 
    \spo[16]_INST_0_i_24 
       (.I0(a[7]),
        .I1(a[1]),
        .I2(a[6]),
        .I3(a[2]),
        .I4(\spo[31]_INST_0_i_37_n_0 ),
        .I5(a[5]),
        .O(\spo[16]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h2D2000003A480000)) 
    \spo[16]_INST_0_i_25 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[31]_INST_0_i_37_n_0 ),
        .I5(a[2]),
        .O(\spo[16]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h60000A003800C500)) 
    \spo[16]_INST_0_i_26 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(\spo[31]_INST_0_i_37_n_0 ),
        .I4(a[2]),
        .I5(a[5]),
        .O(\spo[16]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h451800002AA50000)) 
    \spo[16]_INST_0_i_27 
       (.I0(a[7]),
        .I1(a[2]),
        .I2(a[6]),
        .I3(a[5]),
        .I4(\spo[31]_INST_0_i_37_n_0 ),
        .I5(a[1]),
        .O(\spo[16]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h5700AF0066008E00)) 
    \spo[16]_INST_0_i_28 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(\spo[31]_INST_0_i_37_n_0 ),
        .I4(a[2]),
        .I5(a[5]),
        .O(\spo[16]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h42080000A8F70000)) 
    \spo[16]_INST_0_i_29 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[6]),
        .I3(a[1]),
        .I4(\spo[31]_INST_0_i_37_n_0 ),
        .I5(a[2]),
        .O(\spo[16]_INST_0_i_29_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[16]_INST_0_i_3 
       (.I0(\spo[16]_INST_0_i_7_n_0 ),
        .I1(a[9]),
        .I2(\spo[16]_INST_0_i_8_n_0 ),
        .I3(a[8]),
        .I4(\spo[16]_INST_0_i_9_n_0 ),
        .O(\spo[16]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA8550000C5800000)) 
    \spo[16]_INST_0_i_30 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(\spo[31]_INST_0_i_37_n_0 ),
        .I5(a[2]),
        .O(\spo[16]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hF0D10000CDCA0000)) 
    \spo[16]_INST_0_i_31 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(\spo[31]_INST_0_i_37_n_0 ),
        .I5(a[2]),
        .O(\spo[16]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h85202D1700000000)) 
    \spo[16]_INST_0_i_32 
       (.I0(a[7]),
        .I1(a[1]),
        .I2(a[6]),
        .I3(a[2]),
        .I4(a[5]),
        .I5(\spo[31]_INST_0_i_37_n_0 ),
        .O(\spo[16]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h170800004B870000)) 
    \spo[16]_INST_0_i_33 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[2]),
        .I4(\spo[31]_INST_0_i_37_n_0 ),
        .I5(a[1]),
        .O(\spo[16]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h928A00009D880000)) 
    \spo[16]_INST_0_i_34 
       (.I0(a[7]),
        .I1(a[1]),
        .I2(a[6]),
        .I3(a[2]),
        .I4(\spo[31]_INST_0_i_37_n_0 ),
        .I5(a[5]),
        .O(\spo[16]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h6A00E8004A00F200)) 
    \spo[16]_INST_0_i_35 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[31]_INST_0_i_37_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[16]_INST_0_i_35_n_0 ));
  MUXF7 \spo[16]_INST_0_i_36 
       (.I0(\spo[16]_INST_0_i_38_n_0 ),
        .I1(\spo[16]_INST_0_i_39_n_0 ),
        .O(\spo[16]_INST_0_i_36_n_0 ),
        .S(a[0]));
  MUXF7 \spo[16]_INST_0_i_37 
       (.I0(\spo[16]_INST_0_i_40_n_0 ),
        .I1(\spo[16]_INST_0_i_41_n_0 ),
        .O(\spo[16]_INST_0_i_37_n_0 ),
        .S(a[0]));
  LUT6 #(
    .INIT(64'h8857619D00000000)) 
    \spo[16]_INST_0_i_38 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(\spo[31]_INST_0_i_37_n_0 ),
        .O(\spo[16]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h92C600004D1D0000)) 
    \spo[16]_INST_0_i_39 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(a[5]),
        .I4(\spo[31]_INST_0_i_37_n_0 ),
        .I5(a[1]),
        .O(\spo[16]_INST_0_i_39_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[16]_INST_0_i_4 
       (.I0(\spo[16]_INST_0_i_10_n_0 ),
        .I1(a[9]),
        .I2(\spo[16]_INST_0_i_11_n_0 ),
        .I3(a[8]),
        .I4(\spo[16]_INST_0_i_12_n_0 ),
        .O(\spo[16]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hC04200008DC80000)) 
    \spo[16]_INST_0_i_40 
       (.I0(a[7]),
        .I1(a[2]),
        .I2(a[6]),
        .I3(a[1]),
        .I4(\spo[31]_INST_0_i_37_n_0 ),
        .I5(a[5]),
        .O(\spo[16]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hDB4D00008DA80000)) 
    \spo[16]_INST_0_i_41 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[2]),
        .I4(\spo[31]_INST_0_i_37_n_0 ),
        .I5(a[1]),
        .O(\spo[16]_INST_0_i_41_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[16]_INST_0_i_5 
       (.I0(\spo[16]_INST_0_i_13_n_0 ),
        .I1(a[9]),
        .I2(\spo[16]_INST_0_i_14_n_0 ),
        .I3(a[8]),
        .I4(\spo[16]_INST_0_i_15_n_0 ),
        .O(\spo[16]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \spo[16]_INST_0_i_6 
       (.I0(\spo[31]_INST_0_i_16_n_0 ),
        .I1(a[0]),
        .I2(\spo[16]_INST_0_i_16_n_0 ),
        .I3(a[8]),
        .I4(a[9]),
        .I5(\spo[16]_INST_0_i_17_n_0 ),
        .O(\spo[16]_INST_0_i_6_n_0 ));
  MUXF7 \spo[16]_INST_0_i_7 
       (.I0(\spo[16]_INST_0_i_18_n_0 ),
        .I1(\spo[16]_INST_0_i_19_n_0 ),
        .O(\spo[16]_INST_0_i_7_n_0 ),
        .S(a[0]));
  MUXF7 \spo[16]_INST_0_i_8 
       (.I0(\spo[16]_INST_0_i_20_n_0 ),
        .I1(\spo[16]_INST_0_i_21_n_0 ),
        .O(\spo[16]_INST_0_i_8_n_0 ),
        .S(a[0]));
  MUXF7 \spo[16]_INST_0_i_9 
       (.I0(\spo[16]_INST_0_i_22_n_0 ),
        .I1(\spo[16]_INST_0_i_23_n_0 ),
        .O(\spo[16]_INST_0_i_9_n_0 ),
        .S(a[0]));
  MUXF8 \spo[17]_INST_0 
       (.I0(\spo[17]_INST_0_i_1_n_0 ),
        .I1(\spo[17]_INST_0_i_2_n_0 ),
        .O(spo[16]),
        .S(a[3]));
  MUXF7 \spo[17]_INST_0_i_1 
       (.I0(\spo[17]_INST_0_i_3_n_0 ),
        .I1(\spo[17]_INST_0_i_4_n_0 ),
        .O(\spo[17]_INST_0_i_1_n_0 ),
        .S(a[4]));
  MUXF7 \spo[17]_INST_0_i_10 
       (.I0(\spo[17]_INST_0_i_25_n_0 ),
        .I1(\spo[17]_INST_0_i_26_n_0 ),
        .O(\spo[17]_INST_0_i_10_n_0 ),
        .S(a[0]));
  LUT6 #(
    .INIT(64'h3000BB3330008800)) 
    \spo[17]_INST_0_i_11 
       (.I0(\spo[17]_INST_0_i_27_n_0 ),
        .I1(a[0]),
        .I2(\spo[30]_INST_0_i_21_n_0 ),
        .I3(a[6]),
        .I4(a[7]),
        .I5(\spo[17]_INST_0_i_28_n_0 ),
        .O(\spo[17]_INST_0_i_11_n_0 ));
  MUXF7 \spo[17]_INST_0_i_12 
       (.I0(\spo[17]_INST_0_i_29_n_0 ),
        .I1(\spo[17]_INST_0_i_30_n_0 ),
        .O(\spo[17]_INST_0_i_12_n_0 ),
        .S(a[0]));
  MUXF7 \spo[17]_INST_0_i_13 
       (.I0(\spo[17]_INST_0_i_31_n_0 ),
        .I1(\spo[17]_INST_0_i_32_n_0 ),
        .O(\spo[17]_INST_0_i_13_n_0 ),
        .S(a[0]));
  MUXF7 \spo[17]_INST_0_i_14 
       (.I0(\spo[17]_INST_0_i_33_n_0 ),
        .I1(\spo[17]_INST_0_i_34_n_0 ),
        .O(\spo[17]_INST_0_i_14_n_0 ),
        .S(a[0]));
  MUXF7 \spo[17]_INST_0_i_15 
       (.I0(\spo[17]_INST_0_i_35_n_0 ),
        .I1(\spo[17]_INST_0_i_36_n_0 ),
        .O(\spo[17]_INST_0_i_15_n_0 ),
        .S(a[0]));
  MUXF7 \spo[17]_INST_0_i_16 
       (.I0(\spo[17]_INST_0_i_37_n_0 ),
        .I1(\spo[17]_INST_0_i_38_n_0 ),
        .O(\spo[17]_INST_0_i_16_n_0 ),
        .S(a[0]));
  MUXF7 \spo[17]_INST_0_i_17 
       (.I0(\spo[17]_INST_0_i_39_n_0 ),
        .I1(\spo[17]_INST_0_i_40_n_0 ),
        .O(\spo[17]_INST_0_i_17_n_0 ),
        .S(a[0]));
  LUT6 #(
    .INIT(64'h00000000C0AFC0A0)) 
    \spo[17]_INST_0_i_18 
       (.I0(\spo[17]_INST_0_i_41_n_0 ),
        .I1(\spo[4]_INST_0_i_20_n_0 ),
        .I2(a[0]),
        .I3(a[6]),
        .I4(\spo[17]_INST_0_i_42_n_0 ),
        .I5(a[7]),
        .O(\spo[17]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hC000820028008800)) 
    \spo[17]_INST_0_i_19 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(\spo[4]_INST_0_i_14_n_0 ),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[17]_INST_0_i_19_n_0 ));
  MUXF7 \spo[17]_INST_0_i_2 
       (.I0(\spo[17]_INST_0_i_5_n_0 ),
        .I1(\spo[17]_INST_0_i_6_n_0 ),
        .O(\spo[17]_INST_0_i_2_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h3D20000000900000)) 
    \spo[17]_INST_0_i_20 
       (.I0(a[7]),
        .I1(a[1]),
        .I2(a[6]),
        .I3(a[2]),
        .I4(\spo[4]_INST_0_i_14_n_0 ),
        .I5(a[5]),
        .O(\spo[17]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h000022002A001000)) 
    \spo[17]_INST_0_i_21 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(\spo[4]_INST_0_i_14_n_0 ),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[17]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h870200001EC10000)) 
    \spo[17]_INST_0_i_22 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[2]),
        .I4(\spo[4]_INST_0_i_14_n_0 ),
        .I5(a[1]),
        .O(\spo[17]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h0200800008000400)) 
    \spo[17]_INST_0_i_23 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(\spo[4]_INST_0_i_14_n_0 ),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[17]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h1FA00000A0000000)) 
    \spo[17]_INST_0_i_24 
       (.I0(a[7]),
        .I1(a[2]),
        .I2(a[6]),
        .I3(a[1]),
        .I4(\spo[4]_INST_0_i_14_n_0 ),
        .I5(a[5]),
        .O(\spo[17]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h0001000090500000)) 
    \spo[17]_INST_0_i_25 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[4]_INST_0_i_14_n_0 ),
        .I5(a[2]),
        .O(\spo[17]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h0A100000019C0000)) 
    \spo[17]_INST_0_i_26 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[4]_INST_0_i_14_n_0 ),
        .I5(a[2]),
        .O(\spo[17]_INST_0_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h00B0)) 
    \spo[17]_INST_0_i_27 
       (.I0(a[2]),
        .I1(a[5]),
        .I2(\spo[4]_INST_0_i_14_n_0 ),
        .I3(a[1]),
        .O(\spo[17]_INST_0_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00402020)) 
    \spo[17]_INST_0_i_28 
       (.I0(a[6]),
        .I1(a[2]),
        .I2(\spo[4]_INST_0_i_14_n_0 ),
        .I3(a[1]),
        .I4(a[5]),
        .O(\spo[17]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h02000D0000000C00)) 
    \spo[17]_INST_0_i_29 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[4]_INST_0_i_14_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[17]_INST_0_i_29_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[17]_INST_0_i_3 
       (.I0(\spo[17]_INST_0_i_7_n_0 ),
        .I1(a[9]),
        .I2(\spo[17]_INST_0_i_8_n_0 ),
        .I3(a[8]),
        .I4(\spo[17]_INST_0_i_9_n_0 ),
        .O(\spo[17]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0100500000006000)) 
    \spo[17]_INST_0_i_30 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(\spo[4]_INST_0_i_14_n_0 ),
        .I4(a[2]),
        .I5(a[5]),
        .O(\spo[17]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h1C00840044004000)) 
    \spo[17]_INST_0_i_31 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[4]_INST_0_i_14_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[17]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h40830000F5C40000)) 
    \spo[17]_INST_0_i_32 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[2]),
        .I4(\spo[4]_INST_0_i_14_n_0 ),
        .I5(a[1]),
        .O(\spo[17]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h1000400000008020)) 
    \spo[17]_INST_0_i_33 
       (.I0(a[7]),
        .I1(a[2]),
        .I2(\spo[4]_INST_0_i_14_n_0 ),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[6]),
        .O(\spo[17]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hE00092000A006000)) 
    \spo[17]_INST_0_i_34 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[4]_INST_0_i_14_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[17]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h0000400030008800)) 
    \spo[17]_INST_0_i_35 
       (.I0(a[1]),
        .I1(a[7]),
        .I2(a[5]),
        .I3(\spo[4]_INST_0_i_14_n_0 ),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[17]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h7000800040008200)) 
    \spo[17]_INST_0_i_36 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[4]_INST_0_i_14_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[17]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h0480448000000000)) 
    \spo[17]_INST_0_i_37 
       (.I0(a[5]),
        .I1(\spo[4]_INST_0_i_14_n_0 ),
        .I2(a[2]),
        .I3(a[6]),
        .I4(a[1]),
        .I5(a[7]),
        .O(\spo[17]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h6200600088000100)) 
    \spo[17]_INST_0_i_38 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[4]_INST_0_i_14_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[17]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hA200200090000000)) 
    \spo[17]_INST_0_i_39 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(\spo[4]_INST_0_i_14_n_0 ),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[17]_INST_0_i_39_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[17]_INST_0_i_4 
       (.I0(\spo[17]_INST_0_i_10_n_0 ),
        .I1(a[9]),
        .I2(\spo[17]_INST_0_i_11_n_0 ),
        .I3(a[8]),
        .I4(\spo[17]_INST_0_i_12_n_0 ),
        .O(\spo[17]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h20C900008A180000)) 
    \spo[17]_INST_0_i_40 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[4]_INST_0_i_14_n_0 ),
        .I5(a[2]),
        .O(\spo[17]_INST_0_i_40_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h00A2)) 
    \spo[17]_INST_0_i_41 
       (.I0(\spo[6]_INST_0_i_16_n_0 ),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[5]),
        .O(\spo[17]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \spo[17]_INST_0_i_42 
       (.I0(a[2]),
        .I1(a[10]),
        .I2(a[11]),
        .I3(a[12]),
        .I4(a[13]),
        .I5(a[5]),
        .O(\spo[17]_INST_0_i_42_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[17]_INST_0_i_5 
       (.I0(\spo[17]_INST_0_i_13_n_0 ),
        .I1(a[9]),
        .I2(\spo[17]_INST_0_i_14_n_0 ),
        .I3(a[8]),
        .I4(\spo[17]_INST_0_i_15_n_0 ),
        .O(\spo[17]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[17]_INST_0_i_6 
       (.I0(\spo[17]_INST_0_i_16_n_0 ),
        .I1(a[9]),
        .I2(\spo[17]_INST_0_i_17_n_0 ),
        .I3(a[8]),
        .I4(\spo[17]_INST_0_i_18_n_0 ),
        .O(\spo[17]_INST_0_i_6_n_0 ));
  MUXF7 \spo[17]_INST_0_i_7 
       (.I0(\spo[17]_INST_0_i_19_n_0 ),
        .I1(\spo[17]_INST_0_i_20_n_0 ),
        .O(\spo[17]_INST_0_i_7_n_0 ),
        .S(a[0]));
  MUXF7 \spo[17]_INST_0_i_8 
       (.I0(\spo[17]_INST_0_i_21_n_0 ),
        .I1(\spo[17]_INST_0_i_22_n_0 ),
        .O(\spo[17]_INST_0_i_8_n_0 ),
        .S(a[0]));
  MUXF7 \spo[17]_INST_0_i_9 
       (.I0(\spo[17]_INST_0_i_23_n_0 ),
        .I1(\spo[17]_INST_0_i_24_n_0 ),
        .O(\spo[17]_INST_0_i_9_n_0 ),
        .S(a[0]));
  MUXF8 \spo[18]_INST_0 
       (.I0(\spo[18]_INST_0_i_1_n_0 ),
        .I1(\spo[18]_INST_0_i_2_n_0 ),
        .O(spo[17]),
        .S(a[3]));
  MUXF7 \spo[18]_INST_0_i_1 
       (.I0(\spo[18]_INST_0_i_3_n_0 ),
        .I1(\spo[18]_INST_0_i_4_n_0 ),
        .O(\spo[18]_INST_0_i_1_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h0400100000000000)) 
    \spo[18]_INST_0_i_10 
       (.I0(a[6]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(\spo[6]_INST_0_i_16_n_0 ),
        .I4(a[2]),
        .I5(a[7]),
        .O(\spo[18]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0B310000350C0000)) 
    \spo[18]_INST_0_i_11 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(a[5]),
        .I4(\spo[6]_INST_0_i_16_n_0 ),
        .I5(a[1]),
        .O(\spo[18]_INST_0_i_11_n_0 ));
  MUXF8 \spo[18]_INST_0_i_12 
       (.I0(\spo[18]_INST_0_i_24_n_0 ),
        .I1(\spo[18]_INST_0_i_25_n_0 ),
        .O(\spo[18]_INST_0_i_12_n_0 ),
        .S(a[8]));
  MUXF7 \spo[18]_INST_0_i_13 
       (.I0(\spo[18]_INST_0_i_26_n_0 ),
        .I1(\spo[18]_INST_0_i_27_n_0 ),
        .O(\spo[18]_INST_0_i_13_n_0 ),
        .S(a[0]));
  MUXF7 \spo[18]_INST_0_i_14 
       (.I0(\spo[18]_INST_0_i_28_n_0 ),
        .I1(\spo[18]_INST_0_i_29_n_0 ),
        .O(\spo[18]_INST_0_i_14_n_0 ),
        .S(a[0]));
  MUXF7 \spo[18]_INST_0_i_15 
       (.I0(\spo[18]_INST_0_i_30_n_0 ),
        .I1(\spo[18]_INST_0_i_31_n_0 ),
        .O(\spo[18]_INST_0_i_15_n_0 ),
        .S(a[0]));
  MUXF7 \spo[18]_INST_0_i_16 
       (.I0(\spo[18]_INST_0_i_32_n_0 ),
        .I1(\spo[18]_INST_0_i_33_n_0 ),
        .O(\spo[18]_INST_0_i_16_n_0 ),
        .S(a[0]));
  LUT6 #(
    .INIT(64'h88BB8888B888B888)) 
    \spo[18]_INST_0_i_17 
       (.I0(\spo[18]_INST_0_i_34_n_0 ),
        .I1(a[0]),
        .I2(\spo[6]_INST_0_i_21_n_0 ),
        .I3(a[7]),
        .I4(\spo[25]_INST_0_i_30_n_0 ),
        .I5(a[6]),
        .O(\spo[18]_INST_0_i_17_n_0 ));
  MUXF7 \spo[18]_INST_0_i_18 
       (.I0(\spo[18]_INST_0_i_35_n_0 ),
        .I1(\spo[18]_INST_0_i_36_n_0 ),
        .O(\spo[18]_INST_0_i_18_n_0 ),
        .S(a[0]));
  LUT6 #(
    .INIT(64'h9200260020000200)) 
    \spo[18]_INST_0_i_19 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[25]_INST_0_i_27_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[18]_INST_0_i_19_n_0 ));
  MUXF7 \spo[18]_INST_0_i_2 
       (.I0(\spo[18]_INST_0_i_5_n_0 ),
        .I1(\spo[18]_INST_0_i_6_n_0 ),
        .O(\spo[18]_INST_0_i_2_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h307300000C0C0000)) 
    \spo[18]_INST_0_i_20 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[25]_INST_0_i_27_n_0 ),
        .I5(a[2]),
        .O(\spo[18]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h000060000A000000)) 
    \spo[18]_INST_0_i_21 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(\spo[25]_INST_0_i_27_n_0 ),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[18]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h0A20000065A00000)) 
    \spo[18]_INST_0_i_22 
       (.I0(a[7]),
        .I1(a[2]),
        .I2(a[6]),
        .I3(a[1]),
        .I4(\spo[25]_INST_0_i_27_n_0 ),
        .I5(a[5]),
        .O(\spo[18]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hEE690000C4380000)) 
    \spo[18]_INST_0_i_23 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[25]_INST_0_i_27_n_0 ),
        .I5(a[2]),
        .O(\spo[18]_INST_0_i_23_n_0 ));
  MUXF7 \spo[18]_INST_0_i_24 
       (.I0(\spo[18]_INST_0_i_37_n_0 ),
        .I1(\spo[18]_INST_0_i_38_n_0 ),
        .O(\spo[18]_INST_0_i_24_n_0 ),
        .S(a[0]));
  MUXF7 \spo[18]_INST_0_i_25 
       (.I0(\spo[18]_INST_0_i_39_n_0 ),
        .I1(\spo[18]_INST_0_i_40_n_0 ),
        .O(\spo[18]_INST_0_i_25_n_0 ),
        .S(a[0]));
  LUT6 #(
    .INIT(64'hA00081004C000000)) 
    \spo[18]_INST_0_i_26 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[6]_INST_0_i_16_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[18]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h1C51000042C20000)) 
    \spo[18]_INST_0_i_27 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[6]_INST_0_i_16_n_0 ),
        .I5(a[2]),
        .O(\spo[18]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h1140000001070000)) 
    \spo[18]_INST_0_i_28 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[2]),
        .I4(\spo[6]_INST_0_i_16_n_0 ),
        .I5(a[1]),
        .O(\spo[18]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hC2D0000012230000)) 
    \spo[18]_INST_0_i_29 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[6]_INST_0_i_16_n_0 ),
        .I5(a[2]),
        .O(\spo[18]_INST_0_i_29_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[18]_INST_0_i_3 
       (.I0(\spo[18]_INST_0_i_7_n_0 ),
        .I1(a[9]),
        .I2(\spo[18]_INST_0_i_8_n_0 ),
        .I3(a[8]),
        .I4(\spo[18]_INST_0_i_9_n_0 ),
        .O(\spo[18]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2068000020450000)) 
    \spo[18]_INST_0_i_30 
       (.I0(a[7]),
        .I1(a[2]),
        .I2(a[6]),
        .I3(a[1]),
        .I4(\spo[6]_INST_0_i_16_n_0 ),
        .I5(a[5]),
        .O(\spo[18]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h2800E2004A00C900)) 
    \spo[18]_INST_0_i_31 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[6]_INST_0_i_16_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[18]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h4200260082000200)) 
    \spo[18]_INST_0_i_32 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[2]),
        .I3(\spo[6]_INST_0_i_16_n_0 ),
        .I4(a[1]),
        .I5(a[6]),
        .O(\spo[18]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h2000200098000100)) 
    \spo[18]_INST_0_i_33 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[2]),
        .I3(\spo[6]_INST_0_i_16_n_0 ),
        .I4(a[1]),
        .I5(a[6]),
        .O(\spo[18]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h8C95000029A80000)) 
    \spo[18]_INST_0_i_34 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(a[5]),
        .I4(\spo[6]_INST_0_i_16_n_0 ),
        .I5(a[1]),
        .O(\spo[18]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h98230000119C0000)) 
    \spo[18]_INST_0_i_35 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[2]),
        .I4(\spo[6]_INST_0_i_16_n_0 ),
        .I5(a[1]),
        .O(\spo[18]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h94006D00C0006C00)) 
    \spo[18]_INST_0_i_36 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(\spo[6]_INST_0_i_16_n_0 ),
        .I4(a[2]),
        .I5(a[5]),
        .O(\spo[18]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h8A00690008004A00)) 
    \spo[18]_INST_0_i_37 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[6]_INST_0_i_16_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[18]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h560085006000C600)) 
    \spo[18]_INST_0_i_38 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(\spo[6]_INST_0_i_16_n_0 ),
        .I4(a[2]),
        .I5(a[5]),
        .O(\spo[18]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h8020000000000000)) 
    \spo[18]_INST_0_i_39 
       (.I0(a[6]),
        .I1(a[1]),
        .I2(\spo[6]_INST_0_i_16_n_0 ),
        .I3(a[2]),
        .I4(a[5]),
        .I5(a[7]),
        .O(\spo[18]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \spo[18]_INST_0_i_4 
       (.I0(\spo[18]_INST_0_i_10_n_0 ),
        .I1(a[0]),
        .I2(\spo[18]_INST_0_i_11_n_0 ),
        .I3(a[8]),
        .I4(a[9]),
        .I5(\spo[18]_INST_0_i_12_n_0 ),
        .O(\spo[18]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h10040000A0790000)) 
    \spo[18]_INST_0_i_40 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(a[5]),
        .I4(\spo[6]_INST_0_i_16_n_0 ),
        .I5(a[1]),
        .O(\spo[18]_INST_0_i_40_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[18]_INST_0_i_5 
       (.I0(\spo[18]_INST_0_i_13_n_0 ),
        .I1(a[9]),
        .I2(\spo[18]_INST_0_i_14_n_0 ),
        .I3(a[8]),
        .I4(\spo[18]_INST_0_i_15_n_0 ),
        .O(\spo[18]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[18]_INST_0_i_6 
       (.I0(\spo[18]_INST_0_i_16_n_0 ),
        .I1(a[9]),
        .I2(\spo[18]_INST_0_i_17_n_0 ),
        .I3(a[8]),
        .I4(\spo[18]_INST_0_i_18_n_0 ),
        .O(\spo[18]_INST_0_i_6_n_0 ));
  MUXF7 \spo[18]_INST_0_i_7 
       (.I0(\spo[18]_INST_0_i_19_n_0 ),
        .I1(\spo[18]_INST_0_i_20_n_0 ),
        .O(\spo[18]_INST_0_i_7_n_0 ),
        .S(a[0]));
  MUXF7 \spo[18]_INST_0_i_8 
       (.I0(\spo[18]_INST_0_i_21_n_0 ),
        .I1(\spo[18]_INST_0_i_22_n_0 ),
        .O(\spo[18]_INST_0_i_8_n_0 ),
        .S(a[0]));
  LUT6 #(
    .INIT(64'hB8BBB88888888888)) 
    \spo[18]_INST_0_i_9 
       (.I0(\spo[18]_INST_0_i_23_n_0 ),
        .I1(a[0]),
        .I2(\spo[1]_INST_0_i_31_n_0 ),
        .I3(a[7]),
        .I4(\spo[6]_INST_0_i_21_n_0 ),
        .I5(a[6]),
        .O(\spo[18]_INST_0_i_9_n_0 ));
  MUXF8 \spo[19]_INST_0 
       (.I0(\spo[19]_INST_0_i_1_n_0 ),
        .I1(\spo[19]_INST_0_i_2_n_0 ),
        .O(spo[18]),
        .S(a[3]));
  MUXF7 \spo[19]_INST_0_i_1 
       (.I0(\spo[19]_INST_0_i_3_n_0 ),
        .I1(\spo[19]_INST_0_i_4_n_0 ),
        .O(\spo[19]_INST_0_i_1_n_0 ),
        .S(a[4]));
  MUXF7 \spo[19]_INST_0_i_10 
       (.I0(\spo[19]_INST_0_i_25_n_0 ),
        .I1(\spo[19]_INST_0_i_26_n_0 ),
        .O(\spo[19]_INST_0_i_10_n_0 ),
        .S(a[0]));
  MUXF7 \spo[19]_INST_0_i_11 
       (.I0(\spo[19]_INST_0_i_27_n_0 ),
        .I1(\spo[19]_INST_0_i_28_n_0 ),
        .O(\spo[19]_INST_0_i_11_n_0 ),
        .S(a[0]));
  MUXF7 \spo[19]_INST_0_i_12 
       (.I0(\spo[19]_INST_0_i_29_n_0 ),
        .I1(\spo[19]_INST_0_i_30_n_0 ),
        .O(\spo[19]_INST_0_i_12_n_0 ),
        .S(a[0]));
  MUXF7 \spo[19]_INST_0_i_13 
       (.I0(\spo[19]_INST_0_i_31_n_0 ),
        .I1(\spo[19]_INST_0_i_32_n_0 ),
        .O(\spo[19]_INST_0_i_13_n_0 ),
        .S(a[0]));
  MUXF7 \spo[19]_INST_0_i_14 
       (.I0(\spo[19]_INST_0_i_33_n_0 ),
        .I1(\spo[19]_INST_0_i_34_n_0 ),
        .O(\spo[19]_INST_0_i_14_n_0 ),
        .S(a[0]));
  LUT6 #(
    .INIT(64'hBBB888B888888888)) 
    \spo[19]_INST_0_i_15 
       (.I0(\spo[19]_INST_0_i_35_n_0 ),
        .I1(a[0]),
        .I2(\spo[5]_INST_0_i_12_n_0 ),
        .I3(a[6]),
        .I4(\spo[30]_INST_0_i_21_n_0 ),
        .I5(a[7]),
        .O(\spo[19]_INST_0_i_15_n_0 ));
  MUXF7 \spo[19]_INST_0_i_16 
       (.I0(\spo[19]_INST_0_i_36_n_0 ),
        .I1(\spo[19]_INST_0_i_37_n_0 ),
        .O(\spo[19]_INST_0_i_16_n_0 ),
        .S(a[0]));
  MUXF7 \spo[19]_INST_0_i_17 
       (.I0(\spo[19]_INST_0_i_38_n_0 ),
        .I1(\spo[19]_INST_0_i_39_n_0 ),
        .O(\spo[19]_INST_0_i_17_n_0 ),
        .S(a[0]));
  LUT6 #(
    .INIT(64'h88888888B8BBB888)) 
    \spo[19]_INST_0_i_18 
       (.I0(\spo[19]_INST_0_i_40_n_0 ),
        .I1(a[0]),
        .I2(\spo[4]_INST_0_i_20_n_0 ),
        .I3(a[7]),
        .I4(\spo[1]_INST_0_i_32_n_0 ),
        .I5(a[6]),
        .O(\spo[19]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h8580000098620000)) 
    \spo[19]_INST_0_i_19 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[6]),
        .I3(a[1]),
        .I4(\spo[4]_INST_0_i_14_n_0 ),
        .I5(a[2]),
        .O(\spo[19]_INST_0_i_19_n_0 ));
  MUXF7 \spo[19]_INST_0_i_2 
       (.I0(\spo[19]_INST_0_i_5_n_0 ),
        .I1(\spo[19]_INST_0_i_6_n_0 ),
        .O(\spo[19]_INST_0_i_2_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h7000460008006200)) 
    \spo[19]_INST_0_i_20 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[4]_INST_0_i_14_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[19]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h0040400000008000)) 
    \spo[19]_INST_0_i_21 
       (.I0(a[7]),
        .I1(a[2]),
        .I2(\spo[4]_INST_0_i_14_n_0 ),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[6]),
        .O(\spo[19]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h085000006F600000)) 
    \spo[19]_INST_0_i_22 
       (.I0(a[7]),
        .I1(a[2]),
        .I2(a[6]),
        .I3(a[1]),
        .I4(\spo[4]_INST_0_i_14_n_0 ),
        .I5(a[5]),
        .O(\spo[19]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001005000)) 
    \spo[19]_INST_0_i_23 
       (.I0(a[6]),
        .I1(a[5]),
        .I2(a[2]),
        .I3(\spo[4]_INST_0_i_14_n_0 ),
        .I4(a[1]),
        .I5(a[7]),
        .O(\spo[19]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h8A850000312A0000)) 
    \spo[19]_INST_0_i_24 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[2]),
        .I4(\spo[4]_INST_0_i_14_n_0 ),
        .I5(a[1]),
        .O(\spo[19]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h0044804000000000)) 
    \spo[19]_INST_0_i_25 
       (.I0(a[2]),
        .I1(\spo[4]_INST_0_i_14_n_0 ),
        .I2(a[1]),
        .I3(a[5]),
        .I4(a[6]),
        .I5(a[7]),
        .O(\spo[19]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h2630000029060000)) 
    \spo[19]_INST_0_i_26 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[4]_INST_0_i_14_n_0 ),
        .I5(a[2]),
        .O(\spo[19]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hC000180008000000)) 
    \spo[19]_INST_0_i_27 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[4]_INST_0_i_14_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[19]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h1009000014840000)) 
    \spo[19]_INST_0_i_28 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[4]_INST_0_i_14_n_0 ),
        .I5(a[2]),
        .O(\spo[19]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h00001000C0000C00)) 
    \spo[19]_INST_0_i_29 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[4]_INST_0_i_14_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[19]_INST_0_i_29_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[19]_INST_0_i_3 
       (.I0(\spo[19]_INST_0_i_7_n_0 ),
        .I1(a[9]),
        .I2(\spo[19]_INST_0_i_8_n_0 ),
        .I3(a[8]),
        .I4(\spo[19]_INST_0_i_9_n_0 ),
        .O(\spo[19]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4090309000E04060)) 
    \spo[19]_INST_0_i_30 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(\spo[4]_INST_0_i_14_n_0 ),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[19]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h004010C080000000)) 
    \spo[19]_INST_0_i_31 
       (.I0(a[7]),
        .I1(a[1]),
        .I2(\spo[4]_INST_0_i_14_n_0 ),
        .I3(a[5]),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[19]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h901300006D4C0000)) 
    \spo[19]_INST_0_i_32 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(a[5]),
        .I4(\spo[4]_INST_0_i_14_n_0 ),
        .I5(a[1]),
        .O(\spo[19]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040008808)) 
    \spo[19]_INST_0_i_33 
       (.I0(a[2]),
        .I1(\spo[4]_INST_0_i_14_n_0 ),
        .I2(a[5]),
        .I3(a[1]),
        .I4(a[6]),
        .I5(a[7]),
        .O(\spo[19]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h5000040062004400)) 
    \spo[19]_INST_0_i_34 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[4]_INST_0_i_14_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[19]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h480063000800E000)) 
    \spo[19]_INST_0_i_35 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[4]_INST_0_i_14_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[19]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h0400030084008000)) 
    \spo[19]_INST_0_i_36 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[2]),
        .I3(\spo[6]_INST_0_i_16_n_0 ),
        .I4(a[1]),
        .I5(a[6]),
        .O(\spo[19]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h4200000090002B00)) 
    \spo[19]_INST_0_i_37 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(\spo[6]_INST_0_i_16_n_0 ),
        .I4(a[2]),
        .I5(a[5]),
        .O(\spo[19]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h2400200022000800)) 
    \spo[19]_INST_0_i_38 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(\spo[6]_INST_0_i_16_n_0 ),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[19]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h58B5000062880000)) 
    \spo[19]_INST_0_i_39 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(a[5]),
        .I4(\spo[6]_INST_0_i_16_n_0 ),
        .I5(a[1]),
        .O(\spo[19]_INST_0_i_39_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[19]_INST_0_i_4 
       (.I0(\spo[19]_INST_0_i_10_n_0 ),
        .I1(a[9]),
        .I2(\spo[19]_INST_0_i_11_n_0 ),
        .I3(a[8]),
        .I4(\spo[19]_INST_0_i_12_n_0 ),
        .O(\spo[19]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8801000000140000)) 
    \spo[19]_INST_0_i_40 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[6]_INST_0_i_16_n_0 ),
        .I5(a[2]),
        .O(\spo[19]_INST_0_i_40_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[19]_INST_0_i_5 
       (.I0(\spo[19]_INST_0_i_13_n_0 ),
        .I1(a[9]),
        .I2(\spo[19]_INST_0_i_14_n_0 ),
        .I3(a[8]),
        .I4(\spo[19]_INST_0_i_15_n_0 ),
        .O(\spo[19]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[19]_INST_0_i_6 
       (.I0(\spo[19]_INST_0_i_16_n_0 ),
        .I1(a[9]),
        .I2(\spo[19]_INST_0_i_17_n_0 ),
        .I3(a[8]),
        .I4(\spo[19]_INST_0_i_18_n_0 ),
        .O(\spo[19]_INST_0_i_6_n_0 ));
  MUXF7 \spo[19]_INST_0_i_7 
       (.I0(\spo[19]_INST_0_i_19_n_0 ),
        .I1(\spo[19]_INST_0_i_20_n_0 ),
        .O(\spo[19]_INST_0_i_7_n_0 ),
        .S(a[0]));
  MUXF7 \spo[19]_INST_0_i_8 
       (.I0(\spo[19]_INST_0_i_21_n_0 ),
        .I1(\spo[19]_INST_0_i_22_n_0 ),
        .O(\spo[19]_INST_0_i_8_n_0 ),
        .S(a[0]));
  MUXF7 \spo[19]_INST_0_i_9 
       (.I0(\spo[19]_INST_0_i_23_n_0 ),
        .I1(\spo[19]_INST_0_i_24_n_0 ),
        .O(\spo[19]_INST_0_i_9_n_0 ),
        .S(a[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0 
       (.I0(\spo[1]_INST_0_i_1_n_0 ),
        .I1(\spo[1]_INST_0_i_2_n_0 ),
        .I2(a[3]),
        .I3(\spo[1]_INST_0_i_3_n_0 ),
        .I4(a[4]),
        .I5(\spo[1]_INST_0_i_4_n_0 ),
        .O(spo[1]));
  MUXF7 \spo[1]_INST_0_i_1 
       (.I0(\spo[1]_INST_0_i_5_n_0 ),
        .I1(\spo[1]_INST_0_i_6_n_0 ),
        .O(\spo[1]_INST_0_i_1_n_0 ),
        .S(a[9]));
  LUT6 #(
    .INIT(64'hE200FFFFE2000000)) 
    \spo[1]_INST_0_i_10 
       (.I0(\spo[30]_INST_0_i_21_n_0 ),
        .I1(a[6]),
        .I2(\spo[25]_INST_0_i_26_n_0 ),
        .I3(a[7]),
        .I4(a[0]),
        .I5(\spo[0]_INST_0_i_11_n_0 ),
        .O(\spo[1]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h8830FFFF88300000)) 
    \spo[1]_INST_0_i_11 
       (.I0(\spo[1]_INST_0_i_24_n_0 ),
        .I1(a[7]),
        .I2(\spo[1]_INST_0_i_25_n_0 ),
        .I3(a[6]),
        .I4(a[0]),
        .I5(\spo[1]_INST_0_i_26_n_0 ),
        .O(\spo[1]_INST_0_i_11_n_0 ));
  MUXF7 \spo[1]_INST_0_i_12 
       (.I0(\spo[1]_INST_0_i_27_n_0 ),
        .I1(\spo[1]_INST_0_i_28_n_0 ),
        .O(\spo[1]_INST_0_i_12_n_0 ),
        .S(a[0]));
  MUXF7 \spo[1]_INST_0_i_13 
       (.I0(\spo[1]_INST_0_i_29_n_0 ),
        .I1(\spo[1]_INST_0_i_30_n_0 ),
        .O(\spo[1]_INST_0_i_13_n_0 ),
        .S(a[0]));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \spo[1]_INST_0_i_14 
       (.I0(\spo[1]_INST_0_i_31_n_0 ),
        .I1(a[6]),
        .I2(\spo[1]_INST_0_i_32_n_0 ),
        .I3(a[7]),
        .I4(a[0]),
        .I5(\spo[1]_INST_0_i_33_n_0 ),
        .O(\spo[1]_INST_0_i_14_n_0 ));
  MUXF7 \spo[1]_INST_0_i_15 
       (.I0(\spo[1]_INST_0_i_34_n_0 ),
        .I1(\spo[1]_INST_0_i_35_n_0 ),
        .O(\spo[1]_INST_0_i_15_n_0 ),
        .S(a[0]));
  LUT6 #(
    .INIT(64'h4000820020001000)) 
    \spo[1]_INST_0_i_16 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[25]_INST_0_i_27_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[1]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFEFF0000F7EA0000)) 
    \spo[1]_INST_0_i_17 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(\spo[25]_INST_0_i_27_n_0 ),
        .I5(a[2]),
        .O(\spo[1]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0400000002003000)) 
    \spo[1]_INST_0_i_18 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[25]_INST_0_i_27_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[1]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h5D761F5300000000)) 
    \spo[1]_INST_0_i_19 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[5]),
        .I5(\spo[25]_INST_0_i_27_n_0 ),
        .O(\spo[1]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \spo[1]_INST_0_i_2 
       (.I0(\spo[1]_INST_0_i_7_n_0 ),
        .I1(a[0]),
        .I2(\spo[1]_INST_0_i_8_n_0 ),
        .I3(a[8]),
        .I4(a[9]),
        .I5(\spo[1]_INST_0_i_9_n_0 ),
        .O(\spo[1]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1101000003040000)) 
    \spo[1]_INST_0_i_20 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[2]),
        .I4(\spo[25]_INST_0_i_27_n_0 ),
        .I5(a[1]),
        .O(\spo[1]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFE9E0000FEF70000)) 
    \spo[1]_INST_0_i_21 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[25]_INST_0_i_27_n_0 ),
        .I5(a[2]),
        .O(\spo[1]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h440121BB00000000)) 
    \spo[1]_INST_0_i_22 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(\spo[25]_INST_0_i_27_n_0 ),
        .O(\spo[1]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hEF1200009A7F0000)) 
    \spo[1]_INST_0_i_23 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[2]),
        .I4(\spo[25]_INST_0_i_27_n_0 ),
        .I5(a[1]),
        .O(\spo[1]_INST_0_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h1020)) 
    \spo[1]_INST_0_i_24 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(\spo[25]_INST_0_i_27_n_0 ),
        .I3(a[2]),
        .O(\spo[1]_INST_0_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \spo[1]_INST_0_i_25 
       (.I0(\spo[6]_INST_0_i_21_n_0 ),
        .I1(a[5]),
        .O(\spo[1]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hEEFE0000BDFE0000)) 
    \spo[1]_INST_0_i_26 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[25]_INST_0_i_27_n_0 ),
        .I5(a[2]),
        .O(\spo[1]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hFE570000DF760000)) 
    \spo[1]_INST_0_i_27 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[2]),
        .I4(\spo[25]_INST_0_i_27_n_0 ),
        .I5(a[1]),
        .O(\spo[1]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h1421000041880000)) 
    \spo[1]_INST_0_i_28 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[2]),
        .I4(\spo[25]_INST_0_i_27_n_0 ),
        .I5(a[1]),
        .O(\spo[1]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h777E00007FFF0000)) 
    \spo[1]_INST_0_i_29 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[2]),
        .I4(\spo[25]_INST_0_i_27_n_0 ),
        .I5(a[1]),
        .O(\spo[1]_INST_0_i_29_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[1]_INST_0_i_3 
       (.I0(\spo[1]_INST_0_i_10_n_0 ),
        .I1(a[9]),
        .I2(\spo[1]_INST_0_i_11_n_0 ),
        .I3(a[8]),
        .I4(\spo[1]_INST_0_i_12_n_0 ),
        .O(\spo[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8030004000000020)) 
    \spo[1]_INST_0_i_30 
       (.I0(a[7]),
        .I1(a[2]),
        .I2(\spo[25]_INST_0_i_27_n_0 ),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[6]),
        .O(\spo[1]_INST_0_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \spo[1]_INST_0_i_31 
       (.I0(a[2]),
        .I1(\spo[25]_INST_0_i_27_n_0 ),
        .I2(a[1]),
        .I3(a[5]),
        .O(\spo[1]_INST_0_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \spo[1]_INST_0_i_32 
       (.I0(\spo[6]_INST_0_i_18_n_0 ),
        .I1(a[5]),
        .O(\spo[1]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hDE7FFFFF00000000)) 
    \spo[1]_INST_0_i_33 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[5]),
        .I5(\spo[25]_INST_0_i_27_n_0 ),
        .O(\spo[1]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hBBFC0000B8A00000)) 
    \spo[1]_INST_0_i_34 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[25]_INST_0_i_27_n_0 ),
        .I5(a[2]),
        .O(\spo[1]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h803000004CB70000)) 
    \spo[1]_INST_0_i_35 
       (.I0(a[6]),
        .I1(a[7]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[25]_INST_0_i_27_n_0 ),
        .I5(a[2]),
        .O(\spo[1]_INST_0_i_35_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[1]_INST_0_i_4 
       (.I0(\spo[1]_INST_0_i_13_n_0 ),
        .I1(a[9]),
        .I2(\spo[1]_INST_0_i_14_n_0 ),
        .I3(a[8]),
        .I4(\spo[1]_INST_0_i_15_n_0 ),
        .O(\spo[1]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_5 
       (.I0(\spo[1]_INST_0_i_16_n_0 ),
        .I1(\spo[1]_INST_0_i_17_n_0 ),
        .I2(a[8]),
        .I3(\spo[1]_INST_0_i_18_n_0 ),
        .I4(a[0]),
        .I5(\spo[1]_INST_0_i_19_n_0 ),
        .O(\spo[1]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000000002222E222)) 
    \spo[1]_INST_0_i_6 
       (.I0(\spo[0]_INST_0_i_5_n_0 ),
        .I1(a[0]),
        .I2(a[7]),
        .I3(\spo[30]_INST_0_i_22_n_0 ),
        .I4(a[6]),
        .I5(a[8]),
        .O(\spo[1]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hEBF6FFFF00000000)) 
    \spo[1]_INST_0_i_7 
       (.I0(a[6]),
        .I1(a[5]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[7]),
        .I5(\spo[25]_INST_0_i_27_n_0 ),
        .O(\spo[1]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hC100000000100000)) 
    \spo[1]_INST_0_i_8 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[25]_INST_0_i_27_n_0 ),
        .I5(a[2]),
        .O(\spo[1]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_9 
       (.I0(\spo[1]_INST_0_i_20_n_0 ),
        .I1(\spo[1]_INST_0_i_21_n_0 ),
        .I2(a[8]),
        .I3(\spo[1]_INST_0_i_22_n_0 ),
        .I4(a[0]),
        .I5(\spo[1]_INST_0_i_23_n_0 ),
        .O(\spo[1]_INST_0_i_9_n_0 ));
  MUXF8 \spo[20]_INST_0 
       (.I0(\spo[20]_INST_0_i_1_n_0 ),
        .I1(\spo[20]_INST_0_i_2_n_0 ),
        .O(spo[19]),
        .S(a[3]));
  MUXF7 \spo[20]_INST_0_i_1 
       (.I0(\spo[20]_INST_0_i_3_n_0 ),
        .I1(\spo[20]_INST_0_i_4_n_0 ),
        .O(\spo[20]_INST_0_i_1_n_0 ),
        .S(a[4]));
  MUXF7 \spo[20]_INST_0_i_10 
       (.I0(\spo[20]_INST_0_i_25_n_0 ),
        .I1(\spo[20]_INST_0_i_26_n_0 ),
        .O(\spo[20]_INST_0_i_10_n_0 ),
        .S(a[0]));
  MUXF7 \spo[20]_INST_0_i_11 
       (.I0(\spo[20]_INST_0_i_27_n_0 ),
        .I1(\spo[20]_INST_0_i_28_n_0 ),
        .O(\spo[20]_INST_0_i_11_n_0 ),
        .S(a[0]));
  MUXF7 \spo[20]_INST_0_i_12 
       (.I0(\spo[20]_INST_0_i_29_n_0 ),
        .I1(\spo[20]_INST_0_i_30_n_0 ),
        .O(\spo[20]_INST_0_i_12_n_0 ),
        .S(a[0]));
  MUXF7 \spo[20]_INST_0_i_13 
       (.I0(\spo[20]_INST_0_i_31_n_0 ),
        .I1(\spo[20]_INST_0_i_32_n_0 ),
        .O(\spo[20]_INST_0_i_13_n_0 ),
        .S(a[0]));
  MUXF7 \spo[20]_INST_0_i_14 
       (.I0(\spo[20]_INST_0_i_33_n_0 ),
        .I1(\spo[20]_INST_0_i_34_n_0 ),
        .O(\spo[20]_INST_0_i_14_n_0 ),
        .S(a[0]));
  MUXF7 \spo[20]_INST_0_i_15 
       (.I0(\spo[20]_INST_0_i_35_n_0 ),
        .I1(\spo[20]_INST_0_i_36_n_0 ),
        .O(\spo[20]_INST_0_i_15_n_0 ),
        .S(a[0]));
  MUXF7 \spo[20]_INST_0_i_16 
       (.I0(\spo[20]_INST_0_i_37_n_0 ),
        .I1(\spo[20]_INST_0_i_38_n_0 ),
        .O(\spo[20]_INST_0_i_16_n_0 ),
        .S(a[0]));
  MUXF7 \spo[20]_INST_0_i_17 
       (.I0(\spo[20]_INST_0_i_39_n_0 ),
        .I1(\spo[20]_INST_0_i_40_n_0 ),
        .O(\spo[20]_INST_0_i_17_n_0 ),
        .S(a[0]));
  MUXF7 \spo[20]_INST_0_i_18 
       (.I0(\spo[20]_INST_0_i_41_n_0 ),
        .I1(\spo[20]_INST_0_i_42_n_0 ),
        .O(\spo[20]_INST_0_i_18_n_0 ),
        .S(a[0]));
  LUT6 #(
    .INIT(64'hD200A70024000800)) 
    \spo[20]_INST_0_i_19 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(\spo[2]_INST_0_i_19_n_0 ),
        .I4(a[2]),
        .I5(a[5]),
        .O(\spo[20]_INST_0_i_19_n_0 ));
  MUXF7 \spo[20]_INST_0_i_2 
       (.I0(\spo[20]_INST_0_i_5_n_0 ),
        .I1(\spo[20]_INST_0_i_6_n_0 ),
        .O(\spo[20]_INST_0_i_2_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h12570000578A0000)) 
    \spo[20]_INST_0_i_20 
       (.I0(a[7]),
        .I1(a[1]),
        .I2(a[6]),
        .I3(a[5]),
        .I4(\spo[2]_INST_0_i_19_n_0 ),
        .I5(a[2]),
        .O(\spo[20]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h004040B000000000)) 
    \spo[20]_INST_0_i_21 
       (.I0(a[7]),
        .I1(a[1]),
        .I2(\spo[2]_INST_0_i_19_n_0 ),
        .I3(a[2]),
        .I4(a[5]),
        .I5(a[6]),
        .O(\spo[20]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hDD420000589A0000)) 
    \spo[20]_INST_0_i_22 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[6]),
        .I3(a[1]),
        .I4(\spo[2]_INST_0_i_19_n_0 ),
        .I5(a[2]),
        .O(\spo[20]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h4040402000000000)) 
    \spo[20]_INST_0_i_23 
       (.I0(a[7]),
        .I1(a[2]),
        .I2(\spo[2]_INST_0_i_19_n_0 ),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[6]),
        .O(\spo[20]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h2B00D00088004200)) 
    \spo[20]_INST_0_i_24 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(\spo[2]_INST_0_i_19_n_0 ),
        .I4(a[2]),
        .I5(a[5]),
        .O(\spo[20]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h0000080080003800)) 
    \spo[20]_INST_0_i_25 
       (.I0(a[1]),
        .I1(a[7]),
        .I2(a[5]),
        .I3(\spo[2]_INST_0_i_19_n_0 ),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[20]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h620A00001A270000)) 
    \spo[20]_INST_0_i_26 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[2]_INST_0_i_19_n_0 ),
        .I5(a[2]),
        .O(\spo[20]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h80001A0004008400)) 
    \spo[20]_INST_0_i_27 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[2]_INST_0_i_19_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[20]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h7AA00000EB9D0000)) 
    \spo[20]_INST_0_i_28 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(a[5]),
        .I4(\spo[2]_INST_0_i_19_n_0 ),
        .I5(a[1]),
        .O(\spo[20]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hC400340040008000)) 
    \spo[20]_INST_0_i_29 
       (.I0(a[2]),
        .I1(a[7]),
        .I2(a[5]),
        .I3(\spo[2]_INST_0_i_19_n_0 ),
        .I4(a[1]),
        .I5(a[6]),
        .O(\spo[20]_INST_0_i_29_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[20]_INST_0_i_3 
       (.I0(\spo[20]_INST_0_i_7_n_0 ),
        .I1(a[9]),
        .I2(\spo[20]_INST_0_i_8_n_0 ),
        .I3(a[8]),
        .I4(\spo[20]_INST_0_i_9_n_0 ),
        .O(\spo[20]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0224000089FD0000)) 
    \spo[20]_INST_0_i_30 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(\spo[2]_INST_0_i_19_n_0 ),
        .I5(a[2]),
        .O(\spo[20]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h1104000048500000)) 
    \spo[20]_INST_0_i_31 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[2]_INST_0_i_19_n_0 ),
        .I5(a[2]),
        .O(\spo[20]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hB15E00008CD50000)) 
    \spo[20]_INST_0_i_32 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[2]),
        .I4(\spo[2]_INST_0_i_19_n_0 ),
        .I5(a[1]),
        .O(\spo[20]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h0418000001040000)) 
    \spo[20]_INST_0_i_33 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[2]_INST_0_i_19_n_0 ),
        .I5(a[2]),
        .O(\spo[20]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hCAD70000F5820000)) 
    \spo[20]_INST_0_i_34 
       (.I0(a[7]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[6]),
        .I4(\spo[2]_INST_0_i_19_n_0 ),
        .I5(a[5]),
        .O(\spo[20]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h98650000A8B80000)) 
    \spo[20]_INST_0_i_35 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[2]_INST_0_i_19_n_0 ),
        .I5(a[2]),
        .O(\spo[20]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h40488C0400000000)) 
    \spo[20]_INST_0_i_36 
       (.I0(a[2]),
        .I1(\spo[2]_INST_0_i_19_n_0 ),
        .I2(a[1]),
        .I3(a[5]),
        .I4(a[6]),
        .I5(a[7]),
        .O(\spo[20]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h000030004A000400)) 
    \spo[20]_INST_0_i_37 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[2]_INST_0_i_19_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[20]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h555600005A670000)) 
    \spo[20]_INST_0_i_38 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[2]),
        .I4(\spo[2]_INST_0_i_19_n_0 ),
        .I5(a[1]),
        .O(\spo[20]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h4400700080004000)) 
    \spo[20]_INST_0_i_39 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[2]),
        .I3(\spo[2]_INST_0_i_19_n_0 ),
        .I4(a[1]),
        .I5(a[6]),
        .O(\spo[20]_INST_0_i_39_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[20]_INST_0_i_4 
       (.I0(\spo[20]_INST_0_i_10_n_0 ),
        .I1(a[9]),
        .I2(\spo[20]_INST_0_i_11_n_0 ),
        .I3(a[8]),
        .I4(\spo[20]_INST_0_i_12_n_0 ),
        .O(\spo[20]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7F06000066F20000)) 
    \spo[20]_INST_0_i_40 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[2]_INST_0_i_19_n_0 ),
        .I5(a[2]),
        .O(\spo[20]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hA000000048BD0000)) 
    \spo[20]_INST_0_i_41 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[6]),
        .I3(a[1]),
        .I4(\spo[2]_INST_0_i_19_n_0 ),
        .I5(a[2]),
        .O(\spo[20]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h1407000041140000)) 
    \spo[20]_INST_0_i_42 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[2]),
        .I4(\spo[2]_INST_0_i_19_n_0 ),
        .I5(a[1]),
        .O(\spo[20]_INST_0_i_42_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[20]_INST_0_i_5 
       (.I0(\spo[20]_INST_0_i_13_n_0 ),
        .I1(a[9]),
        .I2(\spo[20]_INST_0_i_14_n_0 ),
        .I3(a[8]),
        .I4(\spo[20]_INST_0_i_15_n_0 ),
        .O(\spo[20]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[20]_INST_0_i_6 
       (.I0(\spo[20]_INST_0_i_16_n_0 ),
        .I1(a[9]),
        .I2(\spo[20]_INST_0_i_17_n_0 ),
        .I3(a[8]),
        .I4(\spo[20]_INST_0_i_18_n_0 ),
        .O(\spo[20]_INST_0_i_6_n_0 ));
  MUXF7 \spo[20]_INST_0_i_7 
       (.I0(\spo[20]_INST_0_i_19_n_0 ),
        .I1(\spo[20]_INST_0_i_20_n_0 ),
        .O(\spo[20]_INST_0_i_7_n_0 ),
        .S(a[0]));
  MUXF7 \spo[20]_INST_0_i_8 
       (.I0(\spo[20]_INST_0_i_21_n_0 ),
        .I1(\spo[20]_INST_0_i_22_n_0 ),
        .O(\spo[20]_INST_0_i_8_n_0 ),
        .S(a[0]));
  MUXF7 \spo[20]_INST_0_i_9 
       (.I0(\spo[20]_INST_0_i_23_n_0 ),
        .I1(\spo[20]_INST_0_i_24_n_0 ),
        .O(\spo[20]_INST_0_i_9_n_0 ),
        .S(a[0]));
  MUXF8 \spo[21]_INST_0 
       (.I0(\spo[21]_INST_0_i_1_n_0 ),
        .I1(\spo[21]_INST_0_i_2_n_0 ),
        .O(spo[20]),
        .S(a[3]));
  MUXF7 \spo[21]_INST_0_i_1 
       (.I0(\spo[21]_INST_0_i_3_n_0 ),
        .I1(\spo[21]_INST_0_i_4_n_0 ),
        .O(\spo[21]_INST_0_i_1_n_0 ),
        .S(a[4]));
  MUXF7 \spo[21]_INST_0_i_10 
       (.I0(\spo[21]_INST_0_i_24_n_0 ),
        .I1(\spo[21]_INST_0_i_25_n_0 ),
        .O(\spo[21]_INST_0_i_10_n_0 ),
        .S(a[0]));
  MUXF7 \spo[21]_INST_0_i_11 
       (.I0(\spo[21]_INST_0_i_26_n_0 ),
        .I1(\spo[21]_INST_0_i_27_n_0 ),
        .O(\spo[21]_INST_0_i_11_n_0 ),
        .S(a[0]));
  MUXF7 \spo[21]_INST_0_i_12 
       (.I0(\spo[21]_INST_0_i_28_n_0 ),
        .I1(\spo[21]_INST_0_i_29_n_0 ),
        .O(\spo[21]_INST_0_i_12_n_0 ),
        .S(a[0]));
  MUXF7 \spo[21]_INST_0_i_13 
       (.I0(\spo[21]_INST_0_i_30_n_0 ),
        .I1(\spo[21]_INST_0_i_31_n_0 ),
        .O(\spo[21]_INST_0_i_13_n_0 ),
        .S(a[0]));
  LUT6 #(
    .INIT(64'h8888B88888888888)) 
    \spo[21]_INST_0_i_14 
       (.I0(\spo[21]_INST_0_i_32_n_0 ),
        .I1(a[0]),
        .I2(a[6]),
        .I3(\spo[6]_INST_0_i_18_n_0 ),
        .I4(a[5]),
        .I5(a[7]),
        .O(\spo[21]_INST_0_i_14_n_0 ));
  MUXF7 \spo[21]_INST_0_i_15 
       (.I0(\spo[21]_INST_0_i_33_n_0 ),
        .I1(\spo[21]_INST_0_i_34_n_0 ),
        .O(\spo[21]_INST_0_i_15_n_0 ),
        .S(a[0]));
  MUXF7 \spo[21]_INST_0_i_16 
       (.I0(\spo[21]_INST_0_i_35_n_0 ),
        .I1(\spo[21]_INST_0_i_36_n_0 ),
        .O(\spo[21]_INST_0_i_16_n_0 ),
        .S(a[0]));
  MUXF7 \spo[21]_INST_0_i_17 
       (.I0(\spo[21]_INST_0_i_37_n_0 ),
        .I1(\spo[21]_INST_0_i_38_n_0 ),
        .O(\spo[21]_INST_0_i_17_n_0 ),
        .S(a[0]));
  MUXF7 \spo[21]_INST_0_i_18 
       (.I0(\spo[21]_INST_0_i_39_n_0 ),
        .I1(\spo[21]_INST_0_i_40_n_0 ),
        .O(\spo[21]_INST_0_i_18_n_0 ),
        .S(a[0]));
  LUT6 #(
    .INIT(64'h81A4000000780000)) 
    \spo[21]_INST_0_i_19 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[2]_INST_0_i_19_n_0 ),
        .I5(a[2]),
        .O(\spo[21]_INST_0_i_19_n_0 ));
  MUXF7 \spo[21]_INST_0_i_2 
       (.I0(\spo[21]_INST_0_i_5_n_0 ),
        .I1(\spo[21]_INST_0_i_6_n_0 ),
        .O(\spo[21]_INST_0_i_2_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h2999000073140000)) 
    \spo[21]_INST_0_i_20 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[2]),
        .I4(\spo[2]_INST_0_i_19_n_0 ),
        .I5(a[1]),
        .O(\spo[21]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h97550000BD000000)) 
    \spo[21]_INST_0_i_21 
       (.I0(a[7]),
        .I1(a[2]),
        .I2(a[5]),
        .I3(a[6]),
        .I4(\spo[2]_INST_0_i_19_n_0 ),
        .I5(a[1]),
        .O(\spo[21]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h4000400040301090)) 
    \spo[21]_INST_0_i_22 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(\spo[2]_INST_0_i_19_n_0 ),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[21]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h74F50000B9100000)) 
    \spo[21]_INST_0_i_23 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[2]),
        .I4(\spo[2]_INST_0_i_19_n_0 ),
        .I5(a[1]),
        .O(\spo[21]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h0000080040003000)) 
    \spo[21]_INST_0_i_24 
       (.I0(a[1]),
        .I1(a[7]),
        .I2(a[5]),
        .I3(\spo[2]_INST_0_i_19_n_0 ),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[21]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h4B3300007B6C0000)) 
    \spo[21]_INST_0_i_25 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(a[5]),
        .I4(\spo[2]_INST_0_i_19_n_0 ),
        .I5(a[1]),
        .O(\spo[21]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000404000)) 
    \spo[21]_INST_0_i_26 
       (.I0(a[7]),
        .I1(a[2]),
        .I2(\spo[2]_INST_0_i_19_n_0 ),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[6]),
        .O(\spo[21]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h5A0200001A4D0000)) 
    \spo[21]_INST_0_i_27 
       (.I0(a[7]),
        .I1(a[2]),
        .I2(a[6]),
        .I3(a[1]),
        .I4(\spo[2]_INST_0_i_19_n_0 ),
        .I5(a[5]),
        .O(\spo[21]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h43970000A08A0000)) 
    \spo[21]_INST_0_i_28 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(\spo[2]_INST_0_i_19_n_0 ),
        .I5(a[2]),
        .O(\spo[21]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h303D00002A500000)) 
    \spo[21]_INST_0_i_29 
       (.I0(a[7]),
        .I1(a[2]),
        .I2(a[6]),
        .I3(a[1]),
        .I4(\spo[2]_INST_0_i_19_n_0 ),
        .I5(a[5]),
        .O(\spo[21]_INST_0_i_29_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[21]_INST_0_i_3 
       (.I0(\spo[21]_INST_0_i_7_n_0 ),
        .I1(a[9]),
        .I2(\spo[21]_INST_0_i_8_n_0 ),
        .I3(a[8]),
        .I4(\spo[21]_INST_0_i_9_n_0 ),
        .O(\spo[21]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h1000080008004000)) 
    \spo[21]_INST_0_i_30 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[2]_INST_0_i_19_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[21]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hA2AC00009CD70000)) 
    \spo[21]_INST_0_i_31 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(a[5]),
        .I4(\spo[2]_INST_0_i_19_n_0 ),
        .I5(a[1]),
        .O(\spo[21]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h6B98000039990000)) 
    \spo[21]_INST_0_i_32 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[2]),
        .I4(\spo[2]_INST_0_i_19_n_0 ),
        .I5(a[1]),
        .O(\spo[21]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h880060002A005800)) 
    \spo[21]_INST_0_i_33 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[2]_INST_0_i_19_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[21]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h00002000C2002400)) 
    \spo[21]_INST_0_i_34 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[2]),
        .I3(\spo[2]_INST_0_i_19_n_0 ),
        .I4(a[1]),
        .I5(a[6]),
        .O(\spo[21]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h000034000A000200)) 
    \spo[21]_INST_0_i_35 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[2]_INST_0_i_19_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[21]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h7011000074540000)) 
    \spo[21]_INST_0_i_36 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[2]_INST_0_i_19_n_0 ),
        .I5(a[2]),
        .O(\spo[21]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h42000000A2000000)) 
    \spo[21]_INST_0_i_37 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(\spo[2]_INST_0_i_19_n_0 ),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[21]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h2D1E00000E4E0000)) 
    \spo[21]_INST_0_i_38 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[2]_INST_0_i_19_n_0 ),
        .I5(a[2]),
        .O(\spo[21]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h8812000060BD0000)) 
    \spo[21]_INST_0_i_39 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[2]_INST_0_i_19_n_0 ),
        .I5(a[2]),
        .O(\spo[21]_INST_0_i_39_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[21]_INST_0_i_4 
       (.I0(\spo[21]_INST_0_i_10_n_0 ),
        .I1(a[9]),
        .I2(\spo[21]_INST_0_i_11_n_0 ),
        .I3(a[8]),
        .I4(\spo[21]_INST_0_i_12_n_0 ),
        .O(\spo[21]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h1531000041880000)) 
    \spo[21]_INST_0_i_40 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[2]),
        .I4(\spo[2]_INST_0_i_19_n_0 ),
        .I5(a[1]),
        .O(\spo[21]_INST_0_i_40_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[21]_INST_0_i_5 
       (.I0(\spo[21]_INST_0_i_13_n_0 ),
        .I1(a[9]),
        .I2(\spo[21]_INST_0_i_14_n_0 ),
        .I3(a[8]),
        .I4(\spo[21]_INST_0_i_15_n_0 ),
        .O(\spo[21]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[21]_INST_0_i_6 
       (.I0(\spo[21]_INST_0_i_16_n_0 ),
        .I1(a[9]),
        .I2(\spo[21]_INST_0_i_17_n_0 ),
        .I3(a[8]),
        .I4(\spo[21]_INST_0_i_18_n_0 ),
        .O(\spo[21]_INST_0_i_6_n_0 ));
  MUXF7 \spo[21]_INST_0_i_7 
       (.I0(\spo[21]_INST_0_i_19_n_0 ),
        .I1(\spo[21]_INST_0_i_20_n_0 ),
        .O(\spo[21]_INST_0_i_7_n_0 ),
        .S(a[0]));
  LUT6 #(
    .INIT(64'hB8BBB88888888888)) 
    \spo[21]_INST_0_i_8 
       (.I0(\spo[21]_INST_0_i_21_n_0 ),
        .I1(a[0]),
        .I2(\spo[30]_INST_0_i_22_n_0 ),
        .I3(a[7]),
        .I4(\spo[1]_INST_0_i_25_n_0 ),
        .I5(a[6]),
        .O(\spo[21]_INST_0_i_8_n_0 ));
  MUXF7 \spo[21]_INST_0_i_9 
       (.I0(\spo[21]_INST_0_i_22_n_0 ),
        .I1(\spo[21]_INST_0_i_23_n_0 ),
        .O(\spo[21]_INST_0_i_9_n_0 ),
        .S(a[0]));
  MUXF8 \spo[22]_INST_0 
       (.I0(\spo[22]_INST_0_i_1_n_0 ),
        .I1(\spo[22]_INST_0_i_2_n_0 ),
        .O(spo[21]),
        .S(a[3]));
  MUXF7 \spo[22]_INST_0_i_1 
       (.I0(\spo[22]_INST_0_i_3_n_0 ),
        .I1(\spo[22]_INST_0_i_4_n_0 ),
        .O(\spo[22]_INST_0_i_1_n_0 ),
        .S(a[4]));
  MUXF7 \spo[22]_INST_0_i_10 
       (.I0(\spo[22]_INST_0_i_25_n_0 ),
        .I1(\spo[22]_INST_0_i_26_n_0 ),
        .O(\spo[22]_INST_0_i_10_n_0 ),
        .S(a[0]));
  MUXF7 \spo[22]_INST_0_i_11 
       (.I0(\spo[22]_INST_0_i_27_n_0 ),
        .I1(\spo[22]_INST_0_i_28_n_0 ),
        .O(\spo[22]_INST_0_i_11_n_0 ),
        .S(a[0]));
  MUXF7 \spo[22]_INST_0_i_12 
       (.I0(\spo[22]_INST_0_i_29_n_0 ),
        .I1(\spo[22]_INST_0_i_30_n_0 ),
        .O(\spo[22]_INST_0_i_12_n_0 ),
        .S(a[0]));
  MUXF7 \spo[22]_INST_0_i_13 
       (.I0(\spo[22]_INST_0_i_31_n_0 ),
        .I1(\spo[22]_INST_0_i_32_n_0 ),
        .O(\spo[22]_INST_0_i_13_n_0 ),
        .S(a[0]));
  MUXF7 \spo[22]_INST_0_i_14 
       (.I0(\spo[22]_INST_0_i_33_n_0 ),
        .I1(\spo[22]_INST_0_i_34_n_0 ),
        .O(\spo[22]_INST_0_i_14_n_0 ),
        .S(a[0]));
  MUXF7 \spo[22]_INST_0_i_15 
       (.I0(\spo[22]_INST_0_i_35_n_0 ),
        .I1(\spo[22]_INST_0_i_36_n_0 ),
        .O(\spo[22]_INST_0_i_15_n_0 ),
        .S(a[0]));
  MUXF7 \spo[22]_INST_0_i_16 
       (.I0(\spo[22]_INST_0_i_37_n_0 ),
        .I1(\spo[22]_INST_0_i_38_n_0 ),
        .O(\spo[22]_INST_0_i_16_n_0 ),
        .S(a[0]));
  MUXF7 \spo[22]_INST_0_i_17 
       (.I0(\spo[22]_INST_0_i_39_n_0 ),
        .I1(\spo[22]_INST_0_i_40_n_0 ),
        .O(\spo[22]_INST_0_i_17_n_0 ),
        .S(a[0]));
  LUT6 #(
    .INIT(64'h03000000C808C808)) 
    \spo[22]_INST_0_i_18 
       (.I0(\spo[22]_INST_0_i_41_n_0 ),
        .I1(a[0]),
        .I2(a[6]),
        .I3(\spo[3]_INST_0_i_25_n_0 ),
        .I4(a[5]),
        .I5(a[7]),
        .O(\spo[22]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h4A00A30004004800)) 
    \spo[22]_INST_0_i_19 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[29]_INST_0_i_36_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[22]_INST_0_i_19_n_0 ));
  MUXF7 \spo[22]_INST_0_i_2 
       (.I0(\spo[22]_INST_0_i_5_n_0 ),
        .I1(\spo[22]_INST_0_i_6_n_0 ),
        .O(\spo[22]_INST_0_i_2_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h481F0000A04A0000)) 
    \spo[22]_INST_0_i_20 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[6]),
        .I3(a[1]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[2]),
        .O(\spo[22]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h0400200018002800)) 
    \spo[22]_INST_0_i_21 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[29]_INST_0_i_36_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[22]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hA41900005C880000)) 
    \spo[22]_INST_0_i_22 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(a[5]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[1]),
        .O(\spo[22]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h0600040011001400)) 
    \spo[22]_INST_0_i_23 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(\spo[29]_INST_0_i_36_n_0 ),
        .I4(a[2]),
        .I5(a[5]),
        .O(\spo[22]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h10DD000039120000)) 
    \spo[22]_INST_0_i_24 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[2]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[1]),
        .O(\spo[22]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h0000080000003800)) 
    \spo[22]_INST_0_i_25 
       (.I0(a[1]),
        .I1(a[7]),
        .I2(a[5]),
        .I3(\spo[29]_INST_0_i_36_n_0 ),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[22]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h6BD900001D060000)) 
    \spo[22]_INST_0_i_26 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(a[5]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[1]),
        .O(\spo[22]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h82002000A4000800)) 
    \spo[22]_INST_0_i_27 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(\spo[29]_INST_0_i_36_n_0 ),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[22]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h108F000004880000)) 
    \spo[22]_INST_0_i_28 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[2]),
        .O(\spo[22]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h1041000020000000)) 
    \spo[22]_INST_0_i_29 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[2]),
        .O(\spo[22]_INST_0_i_29_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[22]_INST_0_i_3 
       (.I0(\spo[22]_INST_0_i_7_n_0 ),
        .I1(a[9]),
        .I2(\spo[22]_INST_0_i_8_n_0 ),
        .I3(a[8]),
        .I4(\spo[22]_INST_0_i_9_n_0 ),
        .O(\spo[22]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4015000000120000)) 
    \spo[22]_INST_0_i_30 
       (.I0(a[7]),
        .I1(a[2]),
        .I2(a[6]),
        .I3(a[1]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[5]),
        .O(\spo[22]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h11040000C8100000)) 
    \spo[22]_INST_0_i_31 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[2]),
        .O(\spo[22]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h8080A0004060D060)) 
    \spo[22]_INST_0_i_32 
       (.I0(a[7]),
        .I1(a[2]),
        .I2(\spo[29]_INST_0_i_36_n_0 ),
        .I3(a[5]),
        .I4(a[1]),
        .I5(a[6]),
        .O(\spo[22]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h8000000019001600)) 
    \spo[22]_INST_0_i_33 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(\spo[29]_INST_0_i_36_n_0 ),
        .I4(a[2]),
        .I5(a[5]),
        .O(\spo[22]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h4D02000040900000)) 
    \spo[22]_INST_0_i_34 
       (.I0(a[7]),
        .I1(a[1]),
        .I2(a[6]),
        .I3(a[2]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[5]),
        .O(\spo[22]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h0000020020008C00)) 
    \spo[22]_INST_0_i_35 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(\spo[29]_INST_0_i_36_n_0 ),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[22]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h0000A00088002400)) 
    \spo[22]_INST_0_i_36 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(\spo[29]_INST_0_i_36_n_0 ),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[22]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h000030004A000000)) 
    \spo[22]_INST_0_i_37 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[29]_INST_0_i_36_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[22]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h660020005000A300)) 
    \spo[22]_INST_0_i_38 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(\spo[29]_INST_0_i_36_n_0 ),
        .I4(a[2]),
        .I5(a[5]),
        .O(\spo[22]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h400000C080208080)) 
    \spo[22]_INST_0_i_39 
       (.I0(a[7]),
        .I1(a[2]),
        .I2(\spo[29]_INST_0_i_36_n_0 ),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[6]),
        .O(\spo[22]_INST_0_i_39_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[22]_INST_0_i_4 
       (.I0(\spo[22]_INST_0_i_10_n_0 ),
        .I1(a[9]),
        .I2(\spo[22]_INST_0_i_11_n_0 ),
        .I3(a[8]),
        .I4(\spo[22]_INST_0_i_12_n_0 ),
        .O(\spo[22]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF6000300A2008000)) 
    \spo[22]_INST_0_i_40 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(\spo[29]_INST_0_i_36_n_0 ),
        .I4(a[2]),
        .I5(a[5]),
        .O(\spo[22]_INST_0_i_40_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h7060)) 
    \spo[22]_INST_0_i_41 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(\spo[29]_INST_0_i_36_n_0 ),
        .I3(a[1]),
        .O(\spo[22]_INST_0_i_41_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[22]_INST_0_i_5 
       (.I0(\spo[22]_INST_0_i_13_n_0 ),
        .I1(a[9]),
        .I2(\spo[22]_INST_0_i_14_n_0 ),
        .I3(a[8]),
        .I4(\spo[22]_INST_0_i_15_n_0 ),
        .O(\spo[22]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[22]_INST_0_i_6 
       (.I0(\spo[22]_INST_0_i_16_n_0 ),
        .I1(a[9]),
        .I2(\spo[22]_INST_0_i_17_n_0 ),
        .I3(a[8]),
        .I4(\spo[22]_INST_0_i_18_n_0 ),
        .O(\spo[22]_INST_0_i_6_n_0 ));
  MUXF7 \spo[22]_INST_0_i_7 
       (.I0(\spo[22]_INST_0_i_19_n_0 ),
        .I1(\spo[22]_INST_0_i_20_n_0 ),
        .O(\spo[22]_INST_0_i_7_n_0 ),
        .S(a[0]));
  MUXF7 \spo[22]_INST_0_i_8 
       (.I0(\spo[22]_INST_0_i_21_n_0 ),
        .I1(\spo[22]_INST_0_i_22_n_0 ),
        .O(\spo[22]_INST_0_i_8_n_0 ),
        .S(a[0]));
  MUXF7 \spo[22]_INST_0_i_9 
       (.I0(\spo[22]_INST_0_i_23_n_0 ),
        .I1(\spo[22]_INST_0_i_24_n_0 ),
        .O(\spo[22]_INST_0_i_9_n_0 ),
        .S(a[0]));
  MUXF8 \spo[23]_INST_0 
       (.I0(\spo[23]_INST_0_i_1_n_0 ),
        .I1(\spo[23]_INST_0_i_2_n_0 ),
        .O(spo[22]),
        .S(a[3]));
  MUXF7 \spo[23]_INST_0_i_1 
       (.I0(\spo[23]_INST_0_i_3_n_0 ),
        .I1(\spo[23]_INST_0_i_4_n_0 ),
        .O(\spo[23]_INST_0_i_1_n_0 ),
        .S(a[4]));
  MUXF7 \spo[23]_INST_0_i_10 
       (.I0(\spo[23]_INST_0_i_24_n_0 ),
        .I1(\spo[23]_INST_0_i_25_n_0 ),
        .O(\spo[23]_INST_0_i_10_n_0 ),
        .S(a[0]));
  MUXF7 \spo[23]_INST_0_i_11 
       (.I0(\spo[23]_INST_0_i_26_n_0 ),
        .I1(\spo[23]_INST_0_i_27_n_0 ),
        .O(\spo[23]_INST_0_i_11_n_0 ),
        .S(a[0]));
  MUXF7 \spo[23]_INST_0_i_12 
       (.I0(\spo[23]_INST_0_i_28_n_0 ),
        .I1(\spo[23]_INST_0_i_29_n_0 ),
        .O(\spo[23]_INST_0_i_12_n_0 ),
        .S(a[0]));
  MUXF7 \spo[23]_INST_0_i_13 
       (.I0(\spo[23]_INST_0_i_30_n_0 ),
        .I1(\spo[23]_INST_0_i_31_n_0 ),
        .O(\spo[23]_INST_0_i_13_n_0 ),
        .S(a[0]));
  MUXF7 \spo[23]_INST_0_i_14 
       (.I0(\spo[23]_INST_0_i_32_n_0 ),
        .I1(\spo[23]_INST_0_i_33_n_0 ),
        .O(\spo[23]_INST_0_i_14_n_0 ),
        .S(a[0]));
  MUXF7 \spo[23]_INST_0_i_15 
       (.I0(\spo[23]_INST_0_i_34_n_0 ),
        .I1(\spo[23]_INST_0_i_35_n_0 ),
        .O(\spo[23]_INST_0_i_15_n_0 ),
        .S(a[0]));
  MUXF7 \spo[23]_INST_0_i_16 
       (.I0(\spo[23]_INST_0_i_36_n_0 ),
        .I1(\spo[23]_INST_0_i_37_n_0 ),
        .O(\spo[23]_INST_0_i_16_n_0 ),
        .S(a[0]));
  MUXF7 \spo[23]_INST_0_i_17 
       (.I0(\spo[23]_INST_0_i_38_n_0 ),
        .I1(\spo[23]_INST_0_i_39_n_0 ),
        .O(\spo[23]_INST_0_i_17_n_0 ),
        .S(a[0]));
  MUXF7 \spo[23]_INST_0_i_18 
       (.I0(\spo[23]_INST_0_i_40_n_0 ),
        .I1(\spo[23]_INST_0_i_41_n_0 ),
        .O(\spo[23]_INST_0_i_18_n_0 ),
        .S(a[0]));
  LUT6 #(
    .INIT(64'h03A0000084380000)) 
    \spo[23]_INST_0_i_19 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[2]),
        .O(\spo[23]_INST_0_i_19_n_0 ));
  MUXF7 \spo[23]_INST_0_i_2 
       (.I0(\spo[23]_INST_0_i_5_n_0 ),
        .I1(\spo[23]_INST_0_i_6_n_0 ),
        .O(\spo[23]_INST_0_i_2_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h2000240000007E00)) 
    \spo[23]_INST_0_i_20 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[29]_INST_0_i_36_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[23]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h1502000000100000)) 
    \spo[23]_INST_0_i_21 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[6]),
        .I3(a[1]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[2]),
        .O(\spo[23]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h000030004C00C800)) 
    \spo[23]_INST_0_i_22 
       (.I0(a[6]),
        .I1(a[7]),
        .I2(a[2]),
        .I3(\spo[29]_INST_0_i_36_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[23]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h1AD5000000020000)) 
    \spo[23]_INST_0_i_23 
       (.I0(a[7]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[6]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[5]),
        .O(\spo[23]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h0000040040003000)) 
    \spo[23]_INST_0_i_24 
       (.I0(a[1]),
        .I1(a[7]),
        .I2(a[5]),
        .I3(\spo[29]_INST_0_i_36_n_0 ),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[23]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h2A100000B9D80000)) 
    \spo[23]_INST_0_i_25 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[2]),
        .O(\spo[23]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h4000080048008300)) 
    \spo[23]_INST_0_i_26 
       (.I0(a[6]),
        .I1(a[7]),
        .I2(a[2]),
        .I3(\spo[29]_INST_0_i_36_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[23]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h0000C8000C00D800)) 
    \spo[23]_INST_0_i_27 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[29]_INST_0_i_36_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[23]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h033700004C040000)) 
    \spo[23]_INST_0_i_28 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[1]),
        .I3(a[6]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[2]),
        .O(\spo[23]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h0000000050890000)) 
    \spo[23]_INST_0_i_29 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[2]),
        .O(\spo[23]_INST_0_i_29_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[23]_INST_0_i_3 
       (.I0(\spo[23]_INST_0_i_7_n_0 ),
        .I1(a[9]),
        .I2(\spo[23]_INST_0_i_8_n_0 ),
        .I3(a[8]),
        .I4(\spo[23]_INST_0_i_9_n_0 ),
        .O(\spo[23]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h18000C0008004000)) 
    \spo[23]_INST_0_i_30 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[29]_INST_0_i_36_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[23]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h9955000009040000)) 
    \spo[23]_INST_0_i_31 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[2]),
        .O(\spo[23]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h0111000048020000)) 
    \spo[23]_INST_0_i_32 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[2]),
        .O(\spo[23]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h36C0000010450000)) 
    \spo[23]_INST_0_i_33 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[2]),
        .O(\spo[23]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h82004A0089000000)) 
    \spo[23]_INST_0_i_34 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[29]_INST_0_i_36_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[23]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h4400400004003000)) 
    \spo[23]_INST_0_i_35 
       (.I0(a[1]),
        .I1(a[7]),
        .I2(a[5]),
        .I3(\spo[29]_INST_0_i_36_n_0 ),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[23]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h4000300008008C00)) 
    \spo[23]_INST_0_i_36 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[29]_INST_0_i_36_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[23]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h620000005A004000)) 
    \spo[23]_INST_0_i_37 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[29]_INST_0_i_36_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[23]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h4000000001002000)) 
    \spo[23]_INST_0_i_38 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[29]_INST_0_i_36_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[23]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hCF48000042080000)) 
    \spo[23]_INST_0_i_39 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[6]),
        .I3(a[1]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[2]),
        .O(\spo[23]_INST_0_i_39_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[23]_INST_0_i_4 
       (.I0(\spo[23]_INST_0_i_10_n_0 ),
        .I1(a[9]),
        .I2(\spo[23]_INST_0_i_11_n_0 ),
        .I3(a[8]),
        .I4(\spo[23]_INST_0_i_12_n_0 ),
        .O(\spo[23]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h08140000000D0000)) 
    \spo[23]_INST_0_i_40 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[2]),
        .O(\spo[23]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h0000040051007000)) 
    \spo[23]_INST_0_i_41 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(\spo[29]_INST_0_i_36_n_0 ),
        .I4(a[2]),
        .I5(a[5]),
        .O(\spo[23]_INST_0_i_41_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[23]_INST_0_i_5 
       (.I0(\spo[23]_INST_0_i_13_n_0 ),
        .I1(a[9]),
        .I2(\spo[23]_INST_0_i_14_n_0 ),
        .I3(a[8]),
        .I4(\spo[23]_INST_0_i_15_n_0 ),
        .O(\spo[23]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[23]_INST_0_i_6 
       (.I0(\spo[23]_INST_0_i_16_n_0 ),
        .I1(a[9]),
        .I2(\spo[23]_INST_0_i_17_n_0 ),
        .I3(a[8]),
        .I4(\spo[23]_INST_0_i_18_n_0 ),
        .O(\spo[23]_INST_0_i_6_n_0 ));
  MUXF7 \spo[23]_INST_0_i_7 
       (.I0(\spo[23]_INST_0_i_19_n_0 ),
        .I1(\spo[23]_INST_0_i_20_n_0 ),
        .O(\spo[23]_INST_0_i_7_n_0 ),
        .S(a[0]));
  MUXF7 \spo[23]_INST_0_i_8 
       (.I0(\spo[23]_INST_0_i_21_n_0 ),
        .I1(\spo[23]_INST_0_i_22_n_0 ),
        .O(\spo[23]_INST_0_i_8_n_0 ),
        .S(a[0]));
  LUT6 #(
    .INIT(64'hB8BBB88888888888)) 
    \spo[23]_INST_0_i_9 
       (.I0(\spo[23]_INST_0_i_23_n_0 ),
        .I1(a[0]),
        .I2(\spo[25]_INST_0_i_30_n_0 ),
        .I3(a[7]),
        .I4(\spo[29]_INST_0_i_35_n_0 ),
        .I5(a[6]),
        .O(\spo[23]_INST_0_i_9_n_0 ));
  MUXF8 \spo[24]_INST_0 
       (.I0(\spo[24]_INST_0_i_1_n_0 ),
        .I1(\spo[24]_INST_0_i_2_n_0 ),
        .O(spo[23]),
        .S(a[3]));
  MUXF7 \spo[24]_INST_0_i_1 
       (.I0(\spo[24]_INST_0_i_3_n_0 ),
        .I1(\spo[24]_INST_0_i_4_n_0 ),
        .O(\spo[24]_INST_0_i_1_n_0 ),
        .S(a[4]));
  MUXF7 \spo[24]_INST_0_i_10 
       (.I0(\spo[24]_INST_0_i_24_n_0 ),
        .I1(\spo[24]_INST_0_i_25_n_0 ),
        .O(\spo[24]_INST_0_i_10_n_0 ),
        .S(a[0]));
  MUXF7 \spo[24]_INST_0_i_11 
       (.I0(\spo[24]_INST_0_i_26_n_0 ),
        .I1(\spo[24]_INST_0_i_27_n_0 ),
        .O(\spo[24]_INST_0_i_11_n_0 ),
        .S(a[0]));
  MUXF7 \spo[24]_INST_0_i_12 
       (.I0(\spo[24]_INST_0_i_28_n_0 ),
        .I1(\spo[24]_INST_0_i_29_n_0 ),
        .O(\spo[24]_INST_0_i_12_n_0 ),
        .S(a[0]));
  MUXF7 \spo[24]_INST_0_i_13 
       (.I0(\spo[24]_INST_0_i_30_n_0 ),
        .I1(\spo[24]_INST_0_i_31_n_0 ),
        .O(\spo[24]_INST_0_i_13_n_0 ),
        .S(a[0]));
  MUXF7 \spo[24]_INST_0_i_14 
       (.I0(\spo[24]_INST_0_i_32_n_0 ),
        .I1(\spo[24]_INST_0_i_33_n_0 ),
        .O(\spo[24]_INST_0_i_14_n_0 ),
        .S(a[0]));
  MUXF7 \spo[24]_INST_0_i_15 
       (.I0(\spo[24]_INST_0_i_34_n_0 ),
        .I1(\spo[24]_INST_0_i_35_n_0 ),
        .O(\spo[24]_INST_0_i_15_n_0 ),
        .S(a[0]));
  LUT6 #(
    .INIT(64'h6D101B4700000000)) 
    \spo[24]_INST_0_i_16 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(\spo[29]_INST_0_i_36_n_0 ),
        .O(\spo[24]_INST_0_i_16_n_0 ));
  MUXF8 \spo[24]_INST_0_i_17 
       (.I0(\spo[24]_INST_0_i_36_n_0 ),
        .I1(\spo[24]_INST_0_i_37_n_0 ),
        .O(\spo[24]_INST_0_i_17_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'h81240000005A0000)) 
    \spo[24]_INST_0_i_18 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[2]),
        .O(\spo[24]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h312C00000D530000)) 
    \spo[24]_INST_0_i_19 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[2]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[1]),
        .O(\spo[24]_INST_0_i_19_n_0 ));
  MUXF7 \spo[24]_INST_0_i_2 
       (.I0(\spo[24]_INST_0_i_5_n_0 ),
        .I1(\spo[24]_INST_0_i_6_n_0 ),
        .O(\spo[24]_INST_0_i_2_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h3000400008000400)) 
    \spo[24]_INST_0_i_20 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[29]_INST_0_i_36_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[24]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h9F580000C09C0000)) 
    \spo[24]_INST_0_i_21 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[2]),
        .O(\spo[24]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h0000440002005600)) 
    \spo[24]_INST_0_i_22 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[29]_INST_0_i_36_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[24]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hD04200005F600000)) 
    \spo[24]_INST_0_i_23 
       (.I0(a[7]),
        .I1(a[1]),
        .I2(a[6]),
        .I3(a[2]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[5]),
        .O(\spo[24]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h0000200090006000)) 
    \spo[24]_INST_0_i_24 
       (.I0(a[7]),
        .I1(a[2]),
        .I2(\spo[29]_INST_0_i_36_n_0 ),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[6]),
        .O(\spo[24]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h730041004000EE00)) 
    \spo[24]_INST_0_i_25 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(\spo[29]_INST_0_i_36_n_0 ),
        .I4(a[2]),
        .I5(a[5]),
        .O(\spo[24]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h503900000A400000)) 
    \spo[24]_INST_0_i_26 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[2]),
        .O(\spo[24]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h60004E006800E700)) 
    \spo[24]_INST_0_i_27 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[29]_INST_0_i_36_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[24]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h9D20000001890000)) 
    \spo[24]_INST_0_i_28 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[2]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[1]),
        .O(\spo[24]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hDE760000A8AB0000)) 
    \spo[24]_INST_0_i_29 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[2]),
        .O(\spo[24]_INST_0_i_29_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[24]_INST_0_i_3 
       (.I0(\spo[24]_INST_0_i_7_n_0 ),
        .I1(a[9]),
        .I2(\spo[24]_INST_0_i_8_n_0 ),
        .I3(a[8]),
        .I4(\spo[24]_INST_0_i_9_n_0 ),
        .O(\spo[24]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2500000048920000)) 
    \spo[24]_INST_0_i_30 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[2]),
        .O(\spo[24]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h2617000007A80000)) 
    \spo[24]_INST_0_i_31 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[2]),
        .O(\spo[24]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h1148018700000000)) 
    \spo[24]_INST_0_i_32 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(\spo[29]_INST_0_i_36_n_0 ),
        .O(\spo[24]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hF11800002AA40000)) 
    \spo[24]_INST_0_i_33 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[2]),
        .O(\spo[24]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h1110000064880000)) 
    \spo[24]_INST_0_i_34 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[2]),
        .O(\spo[24]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h86A40000FAD90000)) 
    \spo[24]_INST_0_i_35 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[2]),
        .O(\spo[24]_INST_0_i_35_n_0 ));
  MUXF7 \spo[24]_INST_0_i_36 
       (.I0(\spo[24]_INST_0_i_38_n_0 ),
        .I1(\spo[24]_INST_0_i_39_n_0 ),
        .O(\spo[24]_INST_0_i_36_n_0 ),
        .S(a[0]));
  MUXF7 \spo[24]_INST_0_i_37 
       (.I0(\spo[24]_INST_0_i_40_n_0 ),
        .I1(\spo[24]_INST_0_i_41_n_0 ),
        .O(\spo[24]_INST_0_i_37_n_0 ),
        .S(a[0]));
  LUT6 #(
    .INIT(64'h300082004200A000)) 
    \spo[24]_INST_0_i_38 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[29]_INST_0_i_36_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[24]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h9AE7000088F00000)) 
    \spo[24]_INST_0_i_39 
       (.I0(a[7]),
        .I1(a[2]),
        .I2(a[6]),
        .I3(a[1]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[5]),
        .O(\spo[24]_INST_0_i_39_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[24]_INST_0_i_4 
       (.I0(\spo[24]_INST_0_i_10_n_0 ),
        .I1(a[9]),
        .I2(\spo[24]_INST_0_i_11_n_0 ),
        .I3(a[8]),
        .I4(\spo[24]_INST_0_i_12_n_0 ),
        .O(\spo[24]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4020804000208000)) 
    \spo[24]_INST_0_i_40 
       (.I0(a[7]),
        .I1(a[2]),
        .I2(\spo[29]_INST_0_i_36_n_0 ),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[6]),
        .O(\spo[24]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h542E000093510000)) 
    \spo[24]_INST_0_i_41 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[2]),
        .O(\spo[24]_INST_0_i_41_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[24]_INST_0_i_5 
       (.I0(\spo[24]_INST_0_i_13_n_0 ),
        .I1(a[9]),
        .I2(\spo[24]_INST_0_i_14_n_0 ),
        .I3(a[8]),
        .I4(\spo[24]_INST_0_i_15_n_0 ),
        .O(\spo[24]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \spo[24]_INST_0_i_6 
       (.I0(\spo[29]_INST_0_i_16_n_0 ),
        .I1(a[0]),
        .I2(\spo[24]_INST_0_i_16_n_0 ),
        .I3(a[8]),
        .I4(a[9]),
        .I5(\spo[24]_INST_0_i_17_n_0 ),
        .O(\spo[24]_INST_0_i_6_n_0 ));
  MUXF7 \spo[24]_INST_0_i_7 
       (.I0(\spo[24]_INST_0_i_18_n_0 ),
        .I1(\spo[24]_INST_0_i_19_n_0 ),
        .O(\spo[24]_INST_0_i_7_n_0 ),
        .S(a[0]));
  MUXF7 \spo[24]_INST_0_i_8 
       (.I0(\spo[24]_INST_0_i_20_n_0 ),
        .I1(\spo[24]_INST_0_i_21_n_0 ),
        .O(\spo[24]_INST_0_i_8_n_0 ),
        .S(a[0]));
  MUXF7 \spo[24]_INST_0_i_9 
       (.I0(\spo[24]_INST_0_i_22_n_0 ),
        .I1(\spo[24]_INST_0_i_23_n_0 ),
        .O(\spo[24]_INST_0_i_9_n_0 ),
        .S(a[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[25]_INST_0 
       (.I0(\spo[25]_INST_0_i_1_n_0 ),
        .I1(\spo[25]_INST_0_i_2_n_0 ),
        .I2(a[3]),
        .I3(\spo[25]_INST_0_i_3_n_0 ),
        .I4(a[4]),
        .I5(\spo[25]_INST_0_i_4_n_0 ),
        .O(spo[24]));
  MUXF7 \spo[25]_INST_0_i_1 
       (.I0(\spo[25]_INST_0_i_5_n_0 ),
        .I1(\spo[25]_INST_0_i_6_n_0 ),
        .O(\spo[25]_INST_0_i_1_n_0 ),
        .S(a[9]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \spo[25]_INST_0_i_10 
       (.I0(a[6]),
        .I1(\spo[25]_INST_0_i_26_n_0 ),
        .I2(a[5]),
        .I3(a[7]),
        .O(\spo[25]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h5400000044000200)) 
    \spo[25]_INST_0_i_11 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[25]_INST_0_i_27_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[25]_INST_0_i_11_n_0 ));
  MUXF8 \spo[25]_INST_0_i_12 
       (.I0(\spo[25]_INST_0_i_28_n_0 ),
        .I1(\spo[25]_INST_0_i_29_n_0 ),
        .O(\spo[25]_INST_0_i_12_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'hA000A00000CF00C0)) 
    \spo[25]_INST_0_i_13 
       (.I0(\spo[25]_INST_0_i_30_n_0 ),
        .I1(\spo[25]_INST_0_i_31_n_0 ),
        .I2(a[0]),
        .I3(a[6]),
        .I4(\spo[30]_INST_0_i_35_n_0 ),
        .I5(a[7]),
        .O(\spo[25]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h8830FFFF88300000)) 
    \spo[25]_INST_0_i_14 
       (.I0(\spo[25]_INST_0_i_32_n_0 ),
        .I1(a[7]),
        .I2(\spo[25]_INST_0_i_33_n_0 ),
        .I3(a[6]),
        .I4(a[0]),
        .I5(\spo[30]_INST_0_i_32_n_0 ),
        .O(\spo[25]_INST_0_i_14_n_0 ));
  MUXF7 \spo[25]_INST_0_i_15 
       (.I0(\spo[25]_INST_0_i_34_n_0 ),
        .I1(\spo[25]_INST_0_i_35_n_0 ),
        .O(\spo[25]_INST_0_i_15_n_0 ),
        .S(a[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h40004D00)) 
    \spo[25]_INST_0_i_16 
       (.I0(a[6]),
        .I1(a[1]),
        .I2(a[5]),
        .I3(\spo[25]_INST_0_i_27_n_0 ),
        .I4(a[2]),
        .O(\spo[25]_INST_0_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00001080)) 
    \spo[25]_INST_0_i_17 
       (.I0(a[6]),
        .I1(a[2]),
        .I2(\spo[25]_INST_0_i_27_n_0 ),
        .I3(a[1]),
        .I4(a[5]),
        .O(\spo[25]_INST_0_i_17_n_0 ));
  MUXF7 \spo[25]_INST_0_i_18 
       (.I0(\spo[25]_INST_0_i_36_n_0 ),
        .I1(\spo[25]_INST_0_i_37_n_0 ),
        .O(\spo[25]_INST_0_i_18_n_0 ),
        .S(a[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h7000)) 
    \spo[25]_INST_0_i_19 
       (.I0(a[2]),
        .I1(a[5]),
        .I2(\spo[25]_INST_0_i_27_n_0 ),
        .I3(a[1]),
        .O(\spo[25]_INST_0_i_19_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[25]_INST_0_i_2 
       (.I0(\spo[25]_INST_0_i_7_n_0 ),
        .I1(a[9]),
        .I2(\spo[25]_INST_0_i_8_n_0 ),
        .I3(a[8]),
        .I4(\spo[25]_INST_0_i_9_n_0 ),
        .O(\spo[25]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0060800000000000)) 
    \spo[25]_INST_0_i_20 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(\spo[25]_INST_0_i_27_n_0 ),
        .I3(a[2]),
        .I4(a[6]),
        .I5(a[7]),
        .O(\spo[25]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h00040C0800000000)) 
    \spo[25]_INST_0_i_21 
       (.I0(a[2]),
        .I1(\spo[25]_INST_0_i_27_n_0 ),
        .I2(a[1]),
        .I3(a[5]),
        .I4(a[6]),
        .I5(a[7]),
        .O(\spo[25]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h0208000010110000)) 
    \spo[25]_INST_0_i_22 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(\spo[25]_INST_0_i_27_n_0 ),
        .I5(a[6]),
        .O(\spo[25]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h0200000098000100)) 
    \spo[25]_INST_0_i_23 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[2]),
        .I3(\spo[25]_INST_0_i_27_n_0 ),
        .I4(a[1]),
        .I5(a[6]),
        .O(\spo[25]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h004F0000E0800000)) 
    \spo[25]_INST_0_i_24 
       (.I0(a[6]),
        .I1(a[5]),
        .I2(a[7]),
        .I3(a[1]),
        .I4(\spo[25]_INST_0_i_27_n_0 ),
        .I5(a[2]),
        .O(\spo[25]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h13640000FC880000)) 
    \spo[25]_INST_0_i_25 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[25]_INST_0_i_27_n_0 ),
        .I5(a[2]),
        .O(\spo[25]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \spo[25]_INST_0_i_26 
       (.I0(a[1]),
        .I1(a[10]),
        .I2(a[11]),
        .I3(a[12]),
        .I4(a[13]),
        .I5(a[2]),
        .O(\spo[25]_INST_0_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \spo[25]_INST_0_i_27 
       (.I0(a[10]),
        .I1(a[11]),
        .I2(a[12]),
        .I3(a[13]),
        .O(\spo[25]_INST_0_i_27_n_0 ));
  MUXF7 \spo[25]_INST_0_i_28 
       (.I0(\spo[25]_INST_0_i_38_n_0 ),
        .I1(\spo[25]_INST_0_i_39_n_0 ),
        .O(\spo[25]_INST_0_i_28_n_0 ),
        .S(a[0]));
  MUXF7 \spo[25]_INST_0_i_29 
       (.I0(\spo[25]_INST_0_i_40_n_0 ),
        .I1(\spo[25]_INST_0_i_41_n_0 ),
        .O(\spo[25]_INST_0_i_29_n_0 ),
        .S(a[0]));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \spo[25]_INST_0_i_3 
       (.I0(\spo[25]_INST_0_i_10_n_0 ),
        .I1(a[0]),
        .I2(\spo[25]_INST_0_i_11_n_0 ),
        .I3(a[8]),
        .I4(a[9]),
        .I5(\spo[25]_INST_0_i_12_n_0 ),
        .O(\spo[25]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \spo[25]_INST_0_i_30 
       (.I0(\spo[6]_INST_0_i_18_n_0 ),
        .I1(a[5]),
        .O(\spo[25]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \spo[25]_INST_0_i_31 
       (.I0(a[1]),
        .I1(a[10]),
        .I2(a[11]),
        .I3(a[12]),
        .I4(a[13]),
        .I5(a[5]),
        .O(\spo[25]_INST_0_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hC080)) 
    \spo[25]_INST_0_i_32 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(\spo[25]_INST_0_i_27_n_0 ),
        .I3(a[2]),
        .O(\spo[25]_INST_0_i_32_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h6020)) 
    \spo[25]_INST_0_i_33 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(\spo[25]_INST_0_i_27_n_0 ),
        .I3(a[2]),
        .O(\spo[25]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h4000060061003E00)) 
    \spo[25]_INST_0_i_34 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(\spo[25]_INST_0_i_27_n_0 ),
        .I4(a[2]),
        .I5(a[5]),
        .O(\spo[25]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h4000420061006A00)) 
    \spo[25]_INST_0_i_35 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[25]_INST_0_i_27_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[25]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h94002900C2002C00)) 
    \spo[25]_INST_0_i_36 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(\spo[25]_INST_0_i_27_n_0 ),
        .I4(a[2]),
        .I5(a[5]),
        .O(\spo[25]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hBC006B00E8002C00)) 
    \spo[25]_INST_0_i_37 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(\spo[25]_INST_0_i_27_n_0 ),
        .I4(a[2]),
        .I5(a[5]),
        .O(\spo[25]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h4200A80030008B00)) 
    \spo[25]_INST_0_i_38 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(\spo[25]_INST_0_i_27_n_0 ),
        .I4(a[2]),
        .I5(a[5]),
        .O(\spo[25]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hDE620000A88B0000)) 
    \spo[25]_INST_0_i_39 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[25]_INST_0_i_27_n_0 ),
        .I5(a[2]),
        .O(\spo[25]_INST_0_i_39_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[25]_INST_0_i_4 
       (.I0(\spo[25]_INST_0_i_13_n_0 ),
        .I1(a[9]),
        .I2(\spo[25]_INST_0_i_14_n_0 ),
        .I3(a[8]),
        .I4(\spo[25]_INST_0_i_15_n_0 ),
        .O(\spo[25]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4000020031000100)) 
    \spo[25]_INST_0_i_40 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(\spo[25]_INST_0_i_27_n_0 ),
        .I4(a[2]),
        .I5(a[5]),
        .O(\spo[25]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h00500000400F0000)) 
    \spo[25]_INST_0_i_41 
       (.I0(a[7]),
        .I1(a[2]),
        .I2(a[6]),
        .I3(a[1]),
        .I4(\spo[25]_INST_0_i_27_n_0 ),
        .I5(a[5]),
        .O(\spo[25]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \spo[25]_INST_0_i_5 
       (.I0(\spo[25]_INST_0_i_16_n_0 ),
        .I1(a[0]),
        .I2(\spo[25]_INST_0_i_17_n_0 ),
        .I3(a[7]),
        .I4(a[8]),
        .I5(\spo[25]_INST_0_i_18_n_0 ),
        .O(\spo[25]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004045404)) 
    \spo[25]_INST_0_i_6 
       (.I0(a[7]),
        .I1(\spo[30]_INST_0_i_18_n_0 ),
        .I2(a[0]),
        .I3(\spo[25]_INST_0_i_19_n_0 ),
        .I4(a[6]),
        .I5(a[8]),
        .O(\spo[25]_INST_0_i_6_n_0 ));
  MUXF7 \spo[25]_INST_0_i_7 
       (.I0(\spo[25]_INST_0_i_20_n_0 ),
        .I1(\spo[25]_INST_0_i_21_n_0 ),
        .O(\spo[25]_INST_0_i_7_n_0 ),
        .S(a[0]));
  MUXF7 \spo[25]_INST_0_i_8 
       (.I0(\spo[25]_INST_0_i_22_n_0 ),
        .I1(\spo[25]_INST_0_i_23_n_0 ),
        .O(\spo[25]_INST_0_i_8_n_0 ),
        .S(a[0]));
  MUXF7 \spo[25]_INST_0_i_9 
       (.I0(\spo[25]_INST_0_i_24_n_0 ),
        .I1(\spo[25]_INST_0_i_25_n_0 ),
        .O(\spo[25]_INST_0_i_9_n_0 ),
        .S(a[0]));
  MUXF7 \spo[26]_INST_0 
       (.I0(\spo[26]_INST_0_i_1_n_0 ),
        .I1(\spo[26]_INST_0_i_2_n_0 ),
        .O(spo[25]),
        .S(a[3]));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \spo[26]_INST_0_i_1 
       (.I0(\spo[26]_INST_0_i_3_n_0 ),
        .I1(a[8]),
        .I2(a[9]),
        .I3(\spo[26]_INST_0_i_4_n_0 ),
        .I4(a[4]),
        .I5(\spo[26]_INST_0_i_5_n_0 ),
        .O(\spo[26]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4F4D00006DFA0000)) 
    \spo[26]_INST_0_i_10 
       (.I0(a[7]),
        .I1(a[1]),
        .I2(a[6]),
        .I3(a[5]),
        .I4(\spo[31]_INST_0_i_37_n_0 ),
        .I5(a[2]),
        .O(\spo[26]_INST_0_i_10_n_0 ));
  MUXF7 \spo[26]_INST_0_i_11 
       (.I0(\spo[26]_INST_0_i_21_n_0 ),
        .I1(\spo[26]_INST_0_i_22_n_0 ),
        .O(\spo[26]_INST_0_i_11_n_0 ),
        .S(a[0]));
  MUXF7 \spo[26]_INST_0_i_12 
       (.I0(\spo[26]_INST_0_i_23_n_0 ),
        .I1(\spo[26]_INST_0_i_24_n_0 ),
        .O(\spo[26]_INST_0_i_12_n_0 ),
        .S(a[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[26]_INST_0_i_13 
       (.I0(\spo[26]_INST_0_i_25_n_0 ),
        .I1(\spo[27]_INST_0_i_16_n_0 ),
        .I2(a[8]),
        .I3(\spo[26]_INST_0_i_26_n_0 ),
        .I4(a[0]),
        .I5(\spo[26]_INST_0_i_27_n_0 ),
        .O(\spo[26]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \spo[26]_INST_0_i_14 
       (.I0(\spo[26]_INST_0_i_28_n_0 ),
        .I1(a[7]),
        .I2(\spo[26]_INST_0_i_29_n_0 ),
        .I3(a[0]),
        .I4(\spo[26]_INST_0_i_30_n_0 ),
        .I5(a[8]),
        .O(\spo[26]_INST_0_i_14_n_0 ));
  MUXF7 \spo[26]_INST_0_i_15 
       (.I0(\spo[26]_INST_0_i_31_n_0 ),
        .I1(\spo[26]_INST_0_i_32_n_0 ),
        .O(\spo[26]_INST_0_i_15_n_0 ),
        .S(a[0]));
  MUXF7 \spo[26]_INST_0_i_16 
       (.I0(\spo[26]_INST_0_i_33_n_0 ),
        .I1(\spo[26]_INST_0_i_34_n_0 ),
        .O(\spo[26]_INST_0_i_16_n_0 ),
        .S(a[0]));
  LUT6 #(
    .INIT(64'hA05500004D820000)) 
    \spo[26]_INST_0_i_17 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(\spo[31]_INST_0_i_37_n_0 ),
        .I5(a[2]),
        .O(\spo[26]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h3DCF0000E77A0000)) 
    \spo[26]_INST_0_i_18 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[2]),
        .I4(\spo[31]_INST_0_i_37_n_0 ),
        .I5(a[1]),
        .O(\spo[26]_INST_0_i_18_n_0 ));
  MUXF7 \spo[26]_INST_0_i_19 
       (.I0(\spo[26]_INST_0_i_35_n_0 ),
        .I1(\spo[26]_INST_0_i_36_n_0 ),
        .O(\spo[26]_INST_0_i_19_n_0 ),
        .S(a[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[26]_INST_0_i_2 
       (.I0(\spo[27]_INST_0_i_6_n_0 ),
        .I1(\spo[26]_INST_0_i_6_n_0 ),
        .I2(a[4]),
        .I3(\spo[26]_INST_0_i_7_n_0 ),
        .I4(a[9]),
        .I5(\spo[26]_INST_0_i_8_n_0 ),
        .O(\spo[26]_INST_0_i_2_n_0 ));
  MUXF7 \spo[26]_INST_0_i_20 
       (.I0(\spo[26]_INST_0_i_37_n_0 ),
        .I1(\spo[26]_INST_0_i_38_n_0 ),
        .O(\spo[26]_INST_0_i_20_n_0 ),
        .S(a[0]));
  LUT6 #(
    .INIT(64'hB5000000575D0000)) 
    \spo[26]_INST_0_i_21 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[6]),
        .I3(a[2]),
        .I4(\spo[31]_INST_0_i_37_n_0 ),
        .I5(a[1]),
        .O(\spo[26]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h290C000052710000)) 
    \spo[26]_INST_0_i_22 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(\spo[31]_INST_0_i_37_n_0 ),
        .I5(a[2]),
        .O(\spo[26]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h70000A002C008400)) 
    \spo[26]_INST_0_i_23 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[31]_INST_0_i_37_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[26]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hF67E00000DEE0000)) 
    \spo[26]_INST_0_i_24 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[31]_INST_0_i_37_n_0 ),
        .I5(a[2]),
        .O(\spo[26]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hBE7F0000C8DC0000)) 
    \spo[26]_INST_0_i_25 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[31]_INST_0_i_37_n_0 ),
        .I5(a[2]),
        .O(\spo[26]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hB880000055000000)) 
    \spo[26]_INST_0_i_26 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[31]_INST_0_i_37_n_0 ),
        .I5(a[2]),
        .O(\spo[26]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h807E0000C5100000)) 
    \spo[26]_INST_0_i_27 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[31]_INST_0_i_37_n_0 ),
        .I5(a[2]),
        .O(\spo[26]_INST_0_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h52002C00)) 
    \spo[26]_INST_0_i_28 
       (.I0(a[6]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(\spo[31]_INST_0_i_37_n_0 ),
        .I4(a[2]),
        .O(\spo[26]_INST_0_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h2090)) 
    \spo[26]_INST_0_i_29 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(\spo[31]_INST_0_i_37_n_0 ),
        .I3(a[2]),
        .O(\spo[26]_INST_0_i_29_n_0 ));
  MUXF7 \spo[26]_INST_0_i_3 
       (.I0(\spo[26]_INST_0_i_9_n_0 ),
        .I1(\spo[26]_INST_0_i_10_n_0 ),
        .O(\spo[26]_INST_0_i_3_n_0 ),
        .S(a[0]));
  LUT6 #(
    .INIT(64'h4FB80000BD7F0000)) 
    \spo[26]_INST_0_i_30 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[6]),
        .I3(a[2]),
        .I4(\spo[31]_INST_0_i_37_n_0 ),
        .I5(a[1]),
        .O(\spo[26]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h0AB5000040080000)) 
    \spo[26]_INST_0_i_31 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[6]),
        .I3(a[1]),
        .I4(\spo[31]_INST_0_i_37_n_0 ),
        .I5(a[2]),
        .O(\spo[26]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h41349D4300000000)) 
    \spo[26]_INST_0_i_32 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(\spo[31]_INST_0_i_37_n_0 ),
        .O(\spo[26]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hC4000A00BE000100)) 
    \spo[26]_INST_0_i_33 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(\spo[31]_INST_0_i_37_n_0 ),
        .I4(a[2]),
        .I5(a[5]),
        .O(\spo[26]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h70D040B0A0E0E000)) 
    \spo[26]_INST_0_i_34 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(\spo[31]_INST_0_i_37_n_0 ),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[26]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h90079F2500000000)) 
    \spo[26]_INST_0_i_35 
       (.I0(a[7]),
        .I1(a[2]),
        .I2(a[6]),
        .I3(a[1]),
        .I4(a[5]),
        .I5(\spo[31]_INST_0_i_37_n_0 ),
        .O(\spo[26]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hA817A71500000000)) 
    \spo[26]_INST_0_i_36 
       (.I0(a[7]),
        .I1(a[1]),
        .I2(a[6]),
        .I3(a[2]),
        .I4(a[5]),
        .I5(\spo[31]_INST_0_i_37_n_0 ),
        .O(\spo[26]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h9259000000860000)) 
    \spo[26]_INST_0_i_37 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[31]_INST_0_i_37_n_0 ),
        .I5(a[2]),
        .O(\spo[26]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hF4D900007AA60000)) 
    \spo[26]_INST_0_i_38 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[31]_INST_0_i_37_n_0 ),
        .I5(a[2]),
        .O(\spo[26]_INST_0_i_38_n_0 ));
  MUXF8 \spo[26]_INST_0_i_4 
       (.I0(\spo[26]_INST_0_i_11_n_0 ),
        .I1(\spo[26]_INST_0_i_12_n_0 ),
        .O(\spo[26]_INST_0_i_4_n_0 ),
        .S(a[8]));
  MUXF7 \spo[26]_INST_0_i_5 
       (.I0(\spo[26]_INST_0_i_13_n_0 ),
        .I1(\spo[26]_INST_0_i_14_n_0 ),
        .O(\spo[26]_INST_0_i_5_n_0 ),
        .S(a[9]));
  MUXF8 \spo[26]_INST_0_i_6 
       (.I0(\spo[26]_INST_0_i_15_n_0 ),
        .I1(\spo[26]_INST_0_i_16_n_0 ),
        .O(\spo[26]_INST_0_i_6_n_0 ),
        .S(a[8]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \spo[26]_INST_0_i_7 
       (.I0(\spo[26]_INST_0_i_17_n_0 ),
        .I1(a[0]),
        .I2(\spo[26]_INST_0_i_18_n_0 ),
        .I3(a[8]),
        .O(\spo[26]_INST_0_i_7_n_0 ));
  MUXF8 \spo[26]_INST_0_i_8 
       (.I0(\spo[26]_INST_0_i_19_n_0 ),
        .I1(\spo[26]_INST_0_i_20_n_0 ),
        .O(\spo[26]_INST_0_i_8_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'h212000009A580000)) 
    \spo[26]_INST_0_i_9 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[31]_INST_0_i_37_n_0 ),
        .I5(a[2]),
        .O(\spo[26]_INST_0_i_9_n_0 ));
  MUXF7 \spo[27]_INST_0 
       (.I0(\spo[27]_INST_0_i_1_n_0 ),
        .I1(\spo[27]_INST_0_i_2_n_0 ),
        .O(spo[26]),
        .S(a[3]));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    \spo[27]_INST_0_i_1 
       (.I0(\spo[27]_INST_0_i_3_n_0 ),
        .I1(a[4]),
        .I2(\spo[27]_INST_0_i_4_n_0 ),
        .I3(a[8]),
        .I4(a[9]),
        .I5(\spo[27]_INST_0_i_5_n_0 ),
        .O(\spo[27]_INST_0_i_1_n_0 ));
  MUXF7 \spo[27]_INST_0_i_10 
       (.I0(\spo[27]_INST_0_i_26_n_0 ),
        .I1(\spo[27]_INST_0_i_27_n_0 ),
        .O(\spo[27]_INST_0_i_10_n_0 ),
        .S(a[0]));
  MUXF7 \spo[27]_INST_0_i_11 
       (.I0(\spo[27]_INST_0_i_28_n_0 ),
        .I1(\spo[27]_INST_0_i_29_n_0 ),
        .O(\spo[27]_INST_0_i_11_n_0 ),
        .S(a[0]));
  MUXF7 \spo[27]_INST_0_i_12 
       (.I0(\spo[27]_INST_0_i_30_n_0 ),
        .I1(\spo[27]_INST_0_i_31_n_0 ),
        .O(\spo[27]_INST_0_i_12_n_0 ),
        .S(a[0]));
  LUT6 #(
    .INIT(64'h91A40000A45A0000)) 
    \spo[27]_INST_0_i_13 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[31]_INST_0_i_37_n_0 ),
        .I5(a[2]),
        .O(\spo[27]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h4FB80000BDFF0000)) 
    \spo[27]_INST_0_i_14 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[6]),
        .I3(a[2]),
        .I4(\spo[31]_INST_0_i_37_n_0 ),
        .I5(a[1]),
        .O(\spo[27]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hBFE000007FF50000)) 
    \spo[27]_INST_0_i_15 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[6]),
        .I3(a[2]),
        .I4(\spo[31]_INST_0_i_37_n_0 ),
        .I5(a[1]),
        .O(\spo[27]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h34790000400C0000)) 
    \spo[27]_INST_0_i_16 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(a[5]),
        .I4(\spo[31]_INST_0_i_37_n_0 ),
        .I5(a[1]),
        .O(\spo[27]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hE700CA00EC006A00)) 
    \spo[27]_INST_0_i_17 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[31]_INST_0_i_37_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[27]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hCC0076006600EE00)) 
    \spo[27]_INST_0_i_18 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[31]_INST_0_i_37_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[27]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h6D7C1B4F00000000)) 
    \spo[27]_INST_0_i_19 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(\spo[31]_INST_0_i_37_n_0 ),
        .O(\spo[27]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[27]_INST_0_i_2 
       (.I0(\spo[27]_INST_0_i_6_n_0 ),
        .I1(\spo[27]_INST_0_i_7_n_0 ),
        .I2(a[4]),
        .I3(\spo[27]_INST_0_i_8_n_0 ),
        .I4(a[9]),
        .I5(\spo[27]_INST_0_i_9_n_0 ),
        .O(\spo[27]_INST_0_i_2_n_0 ));
  MUXF7 \spo[27]_INST_0_i_20 
       (.I0(\spo[27]_INST_0_i_32_n_0 ),
        .I1(\spo[27]_INST_0_i_33_n_0 ),
        .O(\spo[27]_INST_0_i_20_n_0 ),
        .S(a[0]));
  MUXF7 \spo[27]_INST_0_i_21 
       (.I0(\spo[27]_INST_0_i_34_n_0 ),
        .I1(\spo[27]_INST_0_i_35_n_0 ),
        .O(\spo[27]_INST_0_i_21_n_0 ),
        .S(a[0]));
  LUT6 #(
    .INIT(64'hA8550000C5820000)) 
    \spo[27]_INST_0_i_22 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(\spo[31]_INST_0_i_37_n_0 ),
        .I5(a[2]),
        .O(\spo[27]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h7D4F0000E7FA0000)) 
    \spo[27]_INST_0_i_23 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[2]),
        .I4(\spo[31]_INST_0_i_37_n_0 ),
        .I5(a[1]),
        .O(\spo[27]_INST_0_i_23_n_0 ));
  MUXF7 \spo[27]_INST_0_i_24 
       (.I0(\spo[27]_INST_0_i_36_n_0 ),
        .I1(\spo[27]_INST_0_i_37_n_0 ),
        .O(\spo[27]_INST_0_i_24_n_0 ),
        .S(a[0]));
  MUXF7 \spo[27]_INST_0_i_25 
       (.I0(\spo[27]_INST_0_i_38_n_0 ),
        .I1(\spo[27]_INST_0_i_39_n_0 ),
        .O(\spo[27]_INST_0_i_25_n_0 ),
        .S(a[0]));
  LUT6 #(
    .INIT(64'h212000001A580000)) 
    \spo[27]_INST_0_i_26 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[31]_INST_0_i_37_n_0 ),
        .I5(a[2]),
        .O(\spo[27]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h4F4D00004DFA0000)) 
    \spo[27]_INST_0_i_27 
       (.I0(a[7]),
        .I1(a[1]),
        .I2(a[6]),
        .I3(a[5]),
        .I4(\spo[31]_INST_0_i_37_n_0 ),
        .I5(a[2]),
        .O(\spo[27]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h730C000009A50000)) 
    \spo[27]_INST_0_i_28 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[2]),
        .I4(\spo[31]_INST_0_i_37_n_0 ),
        .I5(a[1]),
        .O(\spo[27]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hF67F0DEF00000000)) 
    \spo[27]_INST_0_i_29 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(\spo[31]_INST_0_i_37_n_0 ),
        .O(\spo[27]_INST_0_i_29_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[27]_INST_0_i_3 
       (.I0(\spo[27]_INST_0_i_10_n_0 ),
        .I1(a[9]),
        .I2(\spo[27]_INST_0_i_11_n_0 ),
        .I3(a[8]),
        .I4(\spo[27]_INST_0_i_12_n_0 ),
        .O(\spo[27]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hDE760000A8FF0000)) 
    \spo[27]_INST_0_i_30 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[31]_INST_0_i_37_n_0 ),
        .I5(a[2]),
        .O(\spo[27]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hFFFE0000FEAB0000)) 
    \spo[27]_INST_0_i_31 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[2]),
        .I4(\spo[31]_INST_0_i_37_n_0 ),
        .I5(a[1]),
        .O(\spo[27]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hBEDF63BD00000000)) 
    \spo[27]_INST_0_i_32 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(\spo[31]_INST_0_i_37_n_0 ),
        .O(\spo[27]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hFEFC0000FFFE0000)) 
    \spo[27]_INST_0_i_33 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[31]_INST_0_i_37_n_0 ),
        .I5(a[2]),
        .O(\spo[27]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hC00040A0B010E010)) 
    \spo[27]_INST_0_i_34 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(\spo[31]_INST_0_i_37_n_0 ),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[27]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h7ACFDFB100000000)) 
    \spo[27]_INST_0_i_35 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(\spo[31]_INST_0_i_37_n_0 ),
        .O(\spo[27]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h9BEE000065B90000)) 
    \spo[27]_INST_0_i_36 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[2]),
        .I4(\spo[31]_INST_0_i_37_n_0 ),
        .I5(a[1]),
        .O(\spo[27]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hFFF80000FFFF0000)) 
    \spo[27]_INST_0_i_37 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[6]),
        .I3(a[2]),
        .I4(\spo[31]_INST_0_i_37_n_0 ),
        .I5(a[1]),
        .O(\spo[27]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h95202D1700000000)) 
    \spo[27]_INST_0_i_38 
       (.I0(a[7]),
        .I1(a[1]),
        .I2(a[6]),
        .I3(a[2]),
        .I4(a[5]),
        .I5(\spo[31]_INST_0_i_37_n_0 ),
        .O(\spo[27]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hF57A0000DBA70000)) 
    \spo[27]_INST_0_i_39 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[2]),
        .I4(\spo[31]_INST_0_i_37_n_0 ),
        .I5(a[1]),
        .O(\spo[27]_INST_0_i_39_n_0 ));
  MUXF7 \spo[27]_INST_0_i_4 
       (.I0(\spo[27]_INST_0_i_13_n_0 ),
        .I1(\spo[27]_INST_0_i_14_n_0 ),
        .O(\spo[27]_INST_0_i_4_n_0 ),
        .S(a[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[27]_INST_0_i_5 
       (.I0(\spo[27]_INST_0_i_15_n_0 ),
        .I1(\spo[27]_INST_0_i_16_n_0 ),
        .I2(a[8]),
        .I3(\spo[27]_INST_0_i_17_n_0 ),
        .I4(a[0]),
        .I5(\spo[27]_INST_0_i_18_n_0 ),
        .O(\spo[27]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \spo[27]_INST_0_i_6 
       (.I0(\spo[31]_INST_0_i_16_n_0 ),
        .I1(a[0]),
        .I2(\spo[27]_INST_0_i_19_n_0 ),
        .I3(a[8]),
        .O(\spo[27]_INST_0_i_6_n_0 ));
  MUXF8 \spo[27]_INST_0_i_7 
       (.I0(\spo[27]_INST_0_i_20_n_0 ),
        .I1(\spo[27]_INST_0_i_21_n_0 ),
        .O(\spo[27]_INST_0_i_7_n_0 ),
        .S(a[8]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \spo[27]_INST_0_i_8 
       (.I0(\spo[27]_INST_0_i_22_n_0 ),
        .I1(a[0]),
        .I2(\spo[27]_INST_0_i_23_n_0 ),
        .I3(a[8]),
        .O(\spo[27]_INST_0_i_8_n_0 ));
  MUXF8 \spo[27]_INST_0_i_9 
       (.I0(\spo[27]_INST_0_i_24_n_0 ),
        .I1(\spo[27]_INST_0_i_25_n_0 ),
        .O(\spo[27]_INST_0_i_9_n_0 ),
        .S(a[8]));
  MUXF8 \spo[28]_INST_0 
       (.I0(\spo[28]_INST_0_i_1_n_0 ),
        .I1(\spo[28]_INST_0_i_2_n_0 ),
        .O(spo[27]),
        .S(a[3]));
  MUXF7 \spo[28]_INST_0_i_1 
       (.I0(\spo[28]_INST_0_i_3_n_0 ),
        .I1(\spo[28]_INST_0_i_4_n_0 ),
        .O(\spo[28]_INST_0_i_1_n_0 ),
        .S(a[4]));
  MUXF7 \spo[28]_INST_0_i_10 
       (.I0(\spo[28]_INST_0_i_24_n_0 ),
        .I1(\spo[28]_INST_0_i_25_n_0 ),
        .O(\spo[28]_INST_0_i_10_n_0 ),
        .S(a[0]));
  MUXF7 \spo[28]_INST_0_i_11 
       (.I0(\spo[28]_INST_0_i_26_n_0 ),
        .I1(\spo[28]_INST_0_i_27_n_0 ),
        .O(\spo[28]_INST_0_i_11_n_0 ),
        .S(a[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \spo[28]_INST_0_i_12 
       (.I0(a[6]),
        .I1(\spo[6]_INST_0_i_21_n_0 ),
        .I2(a[5]),
        .I3(a[7]),
        .O(\spo[28]_INST_0_i_12_n_0 ));
  MUXF7 \spo[28]_INST_0_i_13 
       (.I0(\spo[28]_INST_0_i_28_n_0 ),
        .I1(\spo[28]_INST_0_i_29_n_0 ),
        .O(\spo[28]_INST_0_i_13_n_0 ),
        .S(a[0]));
  MUXF7 \spo[28]_INST_0_i_14 
       (.I0(\spo[28]_INST_0_i_30_n_0 ),
        .I1(\spo[28]_INST_0_i_31_n_0 ),
        .O(\spo[28]_INST_0_i_14_n_0 ),
        .S(a[0]));
  LUT6 #(
    .INIT(64'h888888888B888888)) 
    \spo[28]_INST_0_i_15 
       (.I0(\spo[28]_INST_0_i_32_n_0 ),
        .I1(a[0]),
        .I2(a[6]),
        .I3(\spo[28]_INST_0_i_33_n_0 ),
        .I4(a[5]),
        .I5(a[7]),
        .O(\spo[28]_INST_0_i_15_n_0 ));
  MUXF7 \spo[28]_INST_0_i_16 
       (.I0(\spo[28]_INST_0_i_34_n_0 ),
        .I1(\spo[28]_INST_0_i_35_n_0 ),
        .O(\spo[28]_INST_0_i_16_n_0 ),
        .S(a[0]));
  MUXF7 \spo[28]_INST_0_i_17 
       (.I0(\spo[28]_INST_0_i_36_n_0 ),
        .I1(\spo[28]_INST_0_i_37_n_0 ),
        .O(\spo[28]_INST_0_i_17_n_0 ),
        .S(a[0]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \spo[28]_INST_0_i_18 
       (.I0(a[6]),
        .I1(a[2]),
        .I2(\spo[6]_INST_0_i_16_n_0 ),
        .I3(a[5]),
        .I4(a[7]),
        .O(\spo[28]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hC2002200A1000800)) 
    \spo[28]_INST_0_i_19 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[25]_INST_0_i_27_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[28]_INST_0_i_19_n_0 ));
  MUXF7 \spo[28]_INST_0_i_2 
       (.I0(\spo[28]_INST_0_i_5_n_0 ),
        .I1(\spo[28]_INST_0_i_6_n_0 ),
        .O(\spo[28]_INST_0_i_2_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h30004C00CC00C000)) 
    \spo[28]_INST_0_i_20 
       (.I0(a[1]),
        .I1(a[7]),
        .I2(a[5]),
        .I3(\spo[25]_INST_0_i_27_n_0 ),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[28]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h08002200AA004000)) 
    \spo[28]_INST_0_i_21 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(\spo[25]_INST_0_i_27_n_0 ),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[28]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h02002A00AA00A100)) 
    \spo[28]_INST_0_i_22 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(\spo[25]_INST_0_i_27_n_0 ),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[28]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \spo[28]_INST_0_i_23 
       (.I0(a[2]),
        .I1(a[10]),
        .I2(a[11]),
        .I3(a[12]),
        .I4(a[13]),
        .I5(a[5]),
        .O(\spo[28]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000488848)) 
    \spo[28]_INST_0_i_24 
       (.I0(a[2]),
        .I1(\spo[6]_INST_0_i_16_n_0 ),
        .I2(a[5]),
        .I3(a[6]),
        .I4(a[1]),
        .I5(a[7]),
        .O(\spo[28]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h0911000011140000)) 
    \spo[28]_INST_0_i_25 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[2]),
        .I4(\spo[6]_INST_0_i_16_n_0 ),
        .I5(a[1]),
        .O(\spo[28]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h8540000000580000)) 
    \spo[28]_INST_0_i_26 
       (.I0(a[7]),
        .I1(a[1]),
        .I2(a[6]),
        .I3(a[2]),
        .I4(\spo[6]_INST_0_i_16_n_0 ),
        .I5(a[5]),
        .O(\spo[28]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h9900100004004400)) 
    \spo[28]_INST_0_i_27 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(\spo[6]_INST_0_i_16_n_0 ),
        .I4(a[2]),
        .I5(a[5]),
        .O(\spo[28]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h1E008C0064004200)) 
    \spo[28]_INST_0_i_28 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[6]_INST_0_i_16_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[28]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h33700000303C0000)) 
    \spo[28]_INST_0_i_29 
       (.I0(a[1]),
        .I1(a[7]),
        .I2(a[6]),
        .I3(a[2]),
        .I4(\spo[6]_INST_0_i_16_n_0 ),
        .I5(a[5]),
        .O(\spo[28]_INST_0_i_29_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[28]_INST_0_i_3 
       (.I0(\spo[28]_INST_0_i_7_n_0 ),
        .I1(a[9]),
        .I2(\spo[28]_INST_0_i_8_n_0 ),
        .I3(a[8]),
        .I4(\spo[28]_INST_0_i_9_n_0 ),
        .O(\spo[28]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h1040402000800020)) 
    \spo[28]_INST_0_i_30 
       (.I0(a[7]),
        .I1(a[2]),
        .I2(\spo[6]_INST_0_i_16_n_0 ),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[6]),
        .O(\spo[28]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h3300300004004C00)) 
    \spo[28]_INST_0_i_31 
       (.I0(a[1]),
        .I1(a[7]),
        .I2(a[2]),
        .I3(\spo[6]_INST_0_i_16_n_0 ),
        .I4(a[5]),
        .I5(a[6]),
        .O(\spo[28]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h5100100040000200)) 
    \spo[28]_INST_0_i_32 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(\spo[6]_INST_0_i_16_n_0 ),
        .I4(a[2]),
        .I5(a[5]),
        .O(\spo[28]_INST_0_i_32_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \spo[28]_INST_0_i_33 
       (.I0(a[13]),
        .I1(a[12]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[2]),
        .O(\spo[28]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h000020A080900040)) 
    \spo[28]_INST_0_i_34 
       (.I0(a[7]),
        .I1(a[2]),
        .I2(\spo[6]_INST_0_i_16_n_0 ),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[6]),
        .O(\spo[28]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h22002200A8008100)) 
    \spo[28]_INST_0_i_35 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(\spo[6]_INST_0_i_16_n_0 ),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[28]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h2000180088008400)) 
    \spo[28]_INST_0_i_36 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[6]_INST_0_i_16_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[28]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h20A0A0A080900040)) 
    \spo[28]_INST_0_i_37 
       (.I0(a[7]),
        .I1(a[2]),
        .I2(\spo[6]_INST_0_i_16_n_0 ),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[6]),
        .O(\spo[28]_INST_0_i_37_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[28]_INST_0_i_4 
       (.I0(\spo[28]_INST_0_i_10_n_0 ),
        .I1(a[9]),
        .I2(\spo[28]_INST_0_i_11_n_0 ),
        .I3(a[8]),
        .I4(\spo[28]_INST_0_i_12_n_0 ),
        .O(\spo[28]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[28]_INST_0_i_5 
       (.I0(\spo[28]_INST_0_i_13_n_0 ),
        .I1(a[9]),
        .I2(\spo[28]_INST_0_i_14_n_0 ),
        .I3(a[8]),
        .I4(\spo[28]_INST_0_i_15_n_0 ),
        .O(\spo[28]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h3088308830BB3088)) 
    \spo[28]_INST_0_i_6 
       (.I0(\spo[28]_INST_0_i_16_n_0 ),
        .I1(a[9]),
        .I2(\spo[28]_INST_0_i_17_n_0 ),
        .I3(a[8]),
        .I4(\spo[28]_INST_0_i_18_n_0 ),
        .I5(a[0]),
        .O(\spo[28]_INST_0_i_6_n_0 ));
  MUXF7 \spo[28]_INST_0_i_7 
       (.I0(\spo[28]_INST_0_i_19_n_0 ),
        .I1(\spo[28]_INST_0_i_20_n_0 ),
        .O(\spo[28]_INST_0_i_7_n_0 ),
        .S(a[0]));
  MUXF7 \spo[28]_INST_0_i_8 
       (.I0(\spo[28]_INST_0_i_21_n_0 ),
        .I1(\spo[28]_INST_0_i_22_n_0 ),
        .O(\spo[28]_INST_0_i_8_n_0 ),
        .S(a[0]));
  LUT6 #(
    .INIT(64'hC0A0C0A0000F0000)) 
    \spo[28]_INST_0_i_9 
       (.I0(\spo[5]_INST_0_i_12_n_0 ),
        .I1(\spo[5]_INST_0_i_11_n_0 ),
        .I2(a[0]),
        .I3(a[6]),
        .I4(\spo[28]_INST_0_i_23_n_0 ),
        .I5(a[7]),
        .O(\spo[28]_INST_0_i_9_n_0 ));
  MUXF8 \spo[29]_INST_0 
       (.I0(\spo[29]_INST_0_i_1_n_0 ),
        .I1(\spo[29]_INST_0_i_2_n_0 ),
        .O(spo[28]),
        .S(a[3]));
  MUXF7 \spo[29]_INST_0_i_1 
       (.I0(\spo[29]_INST_0_i_3_n_0 ),
        .I1(\spo[29]_INST_0_i_4_n_0 ),
        .O(\spo[29]_INST_0_i_1_n_0 ),
        .S(a[4]));
  MUXF7 \spo[29]_INST_0_i_10 
       (.I0(\spo[29]_INST_0_i_25_n_0 ),
        .I1(\spo[29]_INST_0_i_26_n_0 ),
        .O(\spo[29]_INST_0_i_10_n_0 ),
        .S(a[0]));
  MUXF7 \spo[29]_INST_0_i_11 
       (.I0(\spo[29]_INST_0_i_27_n_0 ),
        .I1(\spo[29]_INST_0_i_28_n_0 ),
        .O(\spo[29]_INST_0_i_11_n_0 ),
        .S(a[0]));
  LUT6 #(
    .INIT(64'h88F0FFFF88F00000)) 
    \spo[29]_INST_0_i_12 
       (.I0(\spo[3]_INST_0_i_25_n_0 ),
        .I1(a[7]),
        .I2(\spo[5]_INST_0_i_12_n_0 ),
        .I3(a[6]),
        .I4(a[0]),
        .I5(\spo[29]_INST_0_i_29_n_0 ),
        .O(\spo[29]_INST_0_i_12_n_0 ));
  MUXF7 \spo[29]_INST_0_i_13 
       (.I0(\spo[29]_INST_0_i_30_n_0 ),
        .I1(\spo[29]_INST_0_i_31_n_0 ),
        .O(\spo[29]_INST_0_i_13_n_0 ),
        .S(a[0]));
  MUXF7 \spo[29]_INST_0_i_14 
       (.I0(\spo[29]_INST_0_i_32_n_0 ),
        .I1(\spo[29]_INST_0_i_33_n_0 ),
        .O(\spo[29]_INST_0_i_14_n_0 ),
        .S(a[0]));
  LUT6 #(
    .INIT(64'h88888888B8BBB888)) 
    \spo[29]_INST_0_i_15 
       (.I0(\spo[29]_INST_0_i_34_n_0 ),
        .I1(a[0]),
        .I2(\spo[25]_INST_0_i_26_n_0 ),
        .I3(a[7]),
        .I4(\spo[29]_INST_0_i_35_n_0 ),
        .I5(a[6]),
        .O(\spo[29]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0000140002008400)) 
    \spo[29]_INST_0_i_16 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[29]_INST_0_i_36_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[29]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h2300200060008200)) 
    \spo[29]_INST_0_i_17 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[29]_INST_0_i_36_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[29]_INST_0_i_17_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \spo[29]_INST_0_i_18 
       (.I0(\spo[29]_INST_0_i_37_n_0 ),
        .I1(\spo[29]_INST_0_i_38_n_0 ),
        .I2(a[8]),
        .I3(\spo[29]_INST_0_i_39_n_0 ),
        .I4(a[0]),
        .O(\spo[29]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h01240000005A0000)) 
    \spo[29]_INST_0_i_19 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[2]),
        .O(\spo[29]_INST_0_i_19_n_0 ));
  MUXF7 \spo[29]_INST_0_i_2 
       (.I0(\spo[29]_INST_0_i_5_n_0 ),
        .I1(\spo[29]_INST_0_i_6_n_0 ),
        .O(\spo[29]_INST_0_i_2_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h40CD000018200000)) 
    \spo[29]_INST_0_i_20 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[6]),
        .I3(a[1]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[2]),
        .O(\spo[29]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h1040000009040000)) 
    \spo[29]_INST_0_i_21 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[2]),
        .O(\spo[29]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hA600100048000800)) 
    \spo[29]_INST_0_i_22 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[29]_INST_0_i_36_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[29]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h080060000000D000)) 
    \spo[29]_INST_0_i_23 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[29]_INST_0_i_36_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[29]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h3100000050000000)) 
    \spo[29]_INST_0_i_24 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[2]),
        .O(\spo[29]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h210004000A000000)) 
    \spo[29]_INST_0_i_25 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[29]_INST_0_i_36_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[29]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h4520000030980000)) 
    \spo[29]_INST_0_i_26 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[2]),
        .O(\spo[29]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h4020108000208000)) 
    \spo[29]_INST_0_i_27 
       (.I0(a[7]),
        .I1(a[2]),
        .I2(\spo[29]_INST_0_i_36_n_0 ),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[6]),
        .O(\spo[29]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h0D08000030380000)) 
    \spo[29]_INST_0_i_28 
       (.I0(a[7]),
        .I1(a[2]),
        .I2(a[6]),
        .I3(a[1]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[5]),
        .O(\spo[29]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h10002D0040000C00)) 
    \spo[29]_INST_0_i_29 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(\spo[29]_INST_0_i_36_n_0 ),
        .I4(a[2]),
        .I5(a[5]),
        .O(\spo[29]_INST_0_i_29_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[29]_INST_0_i_3 
       (.I0(\spo[29]_INST_0_i_7_n_0 ),
        .I1(a[9]),
        .I2(\spo[29]_INST_0_i_8_n_0 ),
        .I3(a[8]),
        .I4(\spo[29]_INST_0_i_9_n_0 ),
        .O(\spo[29]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2500000048100000)) 
    \spo[29]_INST_0_i_30 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[2]),
        .O(\spo[29]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h0C450000B1C20000)) 
    \spo[29]_INST_0_i_31 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[2]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[1]),
        .O(\spo[29]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h1208000000870000)) 
    \spo[29]_INST_0_i_32 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[2]),
        .O(\spo[29]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h21D4000010420000)) 
    \spo[29]_INST_0_i_33 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[2]),
        .O(\spo[29]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h00A00080E0000040)) 
    \spo[29]_INST_0_i_34 
       (.I0(a[7]),
        .I1(a[2]),
        .I2(\spo[29]_INST_0_i_36_n_0 ),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[6]),
        .O(\spo[29]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \spo[29]_INST_0_i_35 
       (.I0(a[2]),
        .I1(a[10]),
        .I2(a[11]),
        .I3(a[12]),
        .I4(a[13]),
        .I5(a[5]),
        .O(\spo[29]_INST_0_i_35_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \spo[29]_INST_0_i_36 
       (.I0(a[10]),
        .I1(a[11]),
        .I2(a[12]),
        .I3(a[13]),
        .O(\spo[29]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h200018008A000000)) 
    \spo[29]_INST_0_i_37 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(\spo[29]_INST_0_i_36_n_0 ),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[29]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hC0000200B0004000)) 
    \spo[29]_INST_0_i_38 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[29]_INST_0_i_36_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[29]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000400888)) 
    \spo[29]_INST_0_i_39 
       (.I0(a[1]),
        .I1(\spo[29]_INST_0_i_36_n_0 ),
        .I2(a[5]),
        .I3(a[2]),
        .I4(a[6]),
        .I5(a[7]),
        .O(\spo[29]_INST_0_i_39_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[29]_INST_0_i_4 
       (.I0(\spo[29]_INST_0_i_10_n_0 ),
        .I1(a[9]),
        .I2(\spo[29]_INST_0_i_11_n_0 ),
        .I3(a[8]),
        .I4(\spo[29]_INST_0_i_12_n_0 ),
        .O(\spo[29]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[29]_INST_0_i_5 
       (.I0(\spo[29]_INST_0_i_13_n_0 ),
        .I1(a[9]),
        .I2(\spo[29]_INST_0_i_14_n_0 ),
        .I3(a[8]),
        .I4(\spo[29]_INST_0_i_15_n_0 ),
        .O(\spo[29]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \spo[29]_INST_0_i_6 
       (.I0(\spo[29]_INST_0_i_16_n_0 ),
        .I1(a[0]),
        .I2(\spo[29]_INST_0_i_17_n_0 ),
        .I3(a[8]),
        .I4(a[9]),
        .I5(\spo[29]_INST_0_i_18_n_0 ),
        .O(\spo[29]_INST_0_i_6_n_0 ));
  MUXF7 \spo[29]_INST_0_i_7 
       (.I0(\spo[29]_INST_0_i_19_n_0 ),
        .I1(\spo[29]_INST_0_i_20_n_0 ),
        .O(\spo[29]_INST_0_i_7_n_0 ),
        .S(a[0]));
  MUXF7 \spo[29]_INST_0_i_8 
       (.I0(\spo[29]_INST_0_i_21_n_0 ),
        .I1(\spo[29]_INST_0_i_22_n_0 ),
        .O(\spo[29]_INST_0_i_8_n_0 ),
        .S(a[0]));
  MUXF7 \spo[29]_INST_0_i_9 
       (.I0(\spo[29]_INST_0_i_23_n_0 ),
        .I1(\spo[29]_INST_0_i_24_n_0 ),
        .O(\spo[29]_INST_0_i_9_n_0 ),
        .S(a[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0 
       (.I0(\spo[2]_INST_0_i_1_n_0 ),
        .I1(\spo[2]_INST_0_i_2_n_0 ),
        .I2(a[3]),
        .I3(\spo[2]_INST_0_i_3_n_0 ),
        .I4(a[4]),
        .I5(\spo[2]_INST_0_i_4_n_0 ),
        .O(spo[2]));
  LUT6 #(
    .INIT(64'h3000BB3330008800)) 
    \spo[2]_INST_0_i_1 
       (.I0(\spo[2]_INST_0_i_5_n_0 ),
        .I1(a[9]),
        .I2(\spo[2]_INST_0_i_6_n_0 ),
        .I3(a[0]),
        .I4(a[8]),
        .I5(\spo[2]_INST_0_i_7_n_0 ),
        .O(\spo[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6BFB0000310E0000)) 
    \spo[2]_INST_0_i_10 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(a[5]),
        .I4(\spo[2]_INST_0_i_19_n_0 ),
        .I5(a[1]),
        .O(\spo[2]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_11 
       (.I0(\spo[2]_INST_0_i_20_n_0 ),
        .I1(\spo[28]_INST_0_i_12_n_0 ),
        .I2(a[8]),
        .I3(\spo[2]_INST_0_i_21_n_0 ),
        .I4(a[0]),
        .I5(\spo[4]_INST_0_i_24_n_0 ),
        .O(\spo[2]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hB888888888888888)) 
    \spo[2]_INST_0_i_12 
       (.I0(\spo[2]_INST_0_i_22_n_0 ),
        .I1(a[0]),
        .I2(a[6]),
        .I3(\spo[2]_INST_0_i_23_n_0 ),
        .I4(a[5]),
        .I5(a[7]),
        .O(\spo[2]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hA17F00006CA80000)) 
    \spo[2]_INST_0_i_13 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(\spo[6]_INST_0_i_16_n_0 ),
        .I5(a[2]),
        .O(\spo[2]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h88BB8888B888B888)) 
    \spo[2]_INST_0_i_14 
       (.I0(\spo[2]_INST_0_i_24_n_0 ),
        .I1(a[0]),
        .I2(\spo[30]_INST_0_i_22_n_0 ),
        .I3(a[7]),
        .I4(\spo[3]_INST_0_i_25_n_0 ),
        .I5(a[6]),
        .O(\spo[2]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h903D000080700000)) 
    \spo[2]_INST_0_i_15 
       (.I0(a[7]),
        .I1(a[1]),
        .I2(a[6]),
        .I3(a[2]),
        .I4(\spo[4]_INST_0_i_14_n_0 ),
        .I5(a[5]),
        .O(\spo[2]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hED001E004C00A200)) 
    \spo[2]_INST_0_i_16 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(\spo[4]_INST_0_i_14_n_0 ),
        .I4(a[2]),
        .I5(a[5]),
        .O(\spo[2]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h3A85000032800000)) 
    \spo[2]_INST_0_i_17 
       (.I0(a[7]),
        .I1(a[1]),
        .I2(a[6]),
        .I3(a[2]),
        .I4(\spo[4]_INST_0_i_14_n_0 ),
        .I5(a[5]),
        .O(\spo[2]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h3C4F000075CE0000)) 
    \spo[2]_INST_0_i_18 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[2]),
        .I4(\spo[6]_INST_0_i_16_n_0 ),
        .I5(a[1]),
        .O(\spo[2]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \spo[2]_INST_0_i_19 
       (.I0(a[10]),
        .I1(a[11]),
        .I2(a[12]),
        .I3(a[13]),
        .O(\spo[2]_INST_0_i_19_n_0 ));
  MUXF7 \spo[2]_INST_0_i_2 
       (.I0(\spo[2]_INST_0_i_8_n_0 ),
        .I1(\spo[2]_INST_0_i_9_n_0 ),
        .O(\spo[2]_INST_0_i_2_n_0 ),
        .S(a[9]));
  LUT6 #(
    .INIT(64'h32EE00001CAD0000)) 
    \spo[2]_INST_0_i_20 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[4]_INST_0_i_14_n_0 ),
        .I5(a[2]),
        .O(\spo[2]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h43DE000034030000)) 
    \spo[2]_INST_0_i_21 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[2]),
        .I4(\spo[4]_INST_0_i_14_n_0 ),
        .I5(a[1]),
        .O(\spo[2]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h707300002C2E0000)) 
    \spo[2]_INST_0_i_22 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[6]_INST_0_i_16_n_0 ),
        .I5(a[2]),
        .O(\spo[2]_INST_0_i_22_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \spo[2]_INST_0_i_23 
       (.I0(a[13]),
        .I1(a[12]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[1]),
        .O(\spo[2]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h64008300E4000800)) 
    \spo[2]_INST_0_i_24 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[6]_INST_0_i_16_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[2]_INST_0_i_24_n_0 ));
  LUT5 #(
    .INIT(32'h08FF0800)) 
    \spo[2]_INST_0_i_3 
       (.I0(a[0]),
        .I1(\spo[2]_INST_0_i_10_n_0 ),
        .I2(a[8]),
        .I3(a[9]),
        .I4(\spo[2]_INST_0_i_11_n_0 ),
        .O(\spo[2]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h3000BBBB30008888)) 
    \spo[2]_INST_0_i_4 
       (.I0(\spo[2]_INST_0_i_12_n_0 ),
        .I1(a[9]),
        .I2(\spo[2]_INST_0_i_13_n_0 ),
        .I3(a[0]),
        .I4(a[8]),
        .I5(\spo[2]_INST_0_i_14_n_0 ),
        .O(\spo[2]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h6F3A00006C4B0000)) 
    \spo[2]_INST_0_i_5 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[2]),
        .I4(\spo[4]_INST_0_i_14_n_0 ),
        .I5(a[1]),
        .O(\spo[2]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h3A6A0000CFB80000)) 
    \spo[2]_INST_0_i_6 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[4]_INST_0_i_14_n_0 ),
        .I5(a[2]),
        .O(\spo[2]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h88888B8888888888)) 
    \spo[2]_INST_0_i_7 
       (.I0(\spo[2]_INST_0_i_15_n_0 ),
        .I1(a[0]),
        .I2(a[6]),
        .I3(\spo[6]_INST_0_i_18_n_0 ),
        .I4(a[5]),
        .I5(a[7]),
        .O(\spo[2]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_8 
       (.I0(\spo[2]_INST_0_i_16_n_0 ),
        .I1(\spo[4]_INST_0_i_17_n_0 ),
        .I2(a[8]),
        .I3(\spo[2]_INST_0_i_17_n_0 ),
        .I4(a[0]),
        .I5(\spo[4]_INST_0_i_19_n_0 ),
        .O(\spo[2]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF800080)) 
    \spo[2]_INST_0_i_9 
       (.I0(a[7]),
        .I1(\spo[4]_INST_0_i_20_n_0 ),
        .I2(a[6]),
        .I3(a[0]),
        .I4(\spo[2]_INST_0_i_18_n_0 ),
        .I5(a[8]),
        .O(\spo[2]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[30]_INST_0 
       (.I0(\spo[30]_INST_0_i_1_n_0 ),
        .I1(\spo[30]_INST_0_i_2_n_0 ),
        .I2(a[3]),
        .I3(\spo[30]_INST_0_i_3_n_0 ),
        .I4(a[4]),
        .I5(\spo[30]_INST_0_i_4_n_0 ),
        .O(spo[29]));
  MUXF7 \spo[30]_INST_0_i_1 
       (.I0(\spo[30]_INST_0_i_5_n_0 ),
        .I1(\spo[30]_INST_0_i_6_n_0 ),
        .O(\spo[30]_INST_0_i_1_n_0 ),
        .S(a[9]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \spo[30]_INST_0_i_10 
       (.I0(\spo[30]_INST_0_i_27_n_0 ),
        .I1(a[8]),
        .I2(\spo[30]_INST_0_i_28_n_0 ),
        .I3(a[0]),
        .I4(\spo[30]_INST_0_i_29_n_0 ),
        .I5(a[7]),
        .O(\spo[30]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF080008)) 
    \spo[30]_INST_0_i_11 
       (.I0(a[7]),
        .I1(\spo[30]_INST_0_i_22_n_0 ),
        .I2(a[6]),
        .I3(a[0]),
        .I4(\spo[30]_INST_0_i_30_n_0 ),
        .I5(a[8]),
        .O(\spo[30]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[30]_INST_0_i_12 
       (.I0(\spo[30]_INST_0_i_31_n_0 ),
        .I1(\spo[30]_INST_0_i_32_n_0 ),
        .I2(a[8]),
        .I3(\spo[30]_INST_0_i_33_n_0 ),
        .I4(a[0]),
        .I5(\spo[30]_INST_0_i_34_n_0 ),
        .O(\spo[30]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF040004)) 
    \spo[30]_INST_0_i_13 
       (.I0(a[7]),
        .I1(\spo[30]_INST_0_i_35_n_0 ),
        .I2(a[6]),
        .I3(a[0]),
        .I4(\spo[30]_INST_0_i_36_n_0 ),
        .I5(a[8]),
        .O(\spo[30]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h400048008F00C800)) 
    \spo[30]_INST_0_i_14 
       (.I0(a[6]),
        .I1(a[7]),
        .I2(a[2]),
        .I3(\spo[25]_INST_0_i_27_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[30]_INST_0_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \spo[30]_INST_0_i_15 
       (.I0(a[6]),
        .I1(\spo[6]_INST_0_i_18_n_0 ),
        .I2(a[5]),
        .I3(a[7]),
        .O(\spo[30]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h82950000490C0000)) 
    \spo[30]_INST_0_i_16 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(a[5]),
        .I4(\spo[25]_INST_0_i_27_n_0 ),
        .I5(a[1]),
        .O(\spo[30]_INST_0_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \spo[30]_INST_0_i_17 
       (.I0(a[6]),
        .I1(\spo[6]_INST_0_i_18_n_0 ),
        .I2(a[5]),
        .I3(a[7]),
        .O(\spo[30]_INST_0_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00600020)) 
    \spo[30]_INST_0_i_18 
       (.I0(a[6]),
        .I1(a[2]),
        .I2(\spo[25]_INST_0_i_27_n_0 ),
        .I3(a[1]),
        .I4(a[5]),
        .O(\spo[30]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0000400078008800)) 
    \spo[30]_INST_0_i_19 
       (.I0(a[6]),
        .I1(a[7]),
        .I2(a[2]),
        .I3(\spo[25]_INST_0_i_27_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[30]_INST_0_i_19_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[30]_INST_0_i_2 
       (.I0(\spo[30]_INST_0_i_7_n_0 ),
        .I1(a[9]),
        .I2(\spo[30]_INST_0_i_8_n_0 ),
        .I3(a[8]),
        .I4(\spo[30]_INST_0_i_9_n_0 ),
        .O(\spo[30]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h14410000B58E0000)) 
    \spo[30]_INST_0_i_20 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[2]),
        .I4(\spo[25]_INST_0_i_27_n_0 ),
        .I5(a[1]),
        .O(\spo[30]_INST_0_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \spo[30]_INST_0_i_21 
       (.I0(\spo[6]_INST_0_i_21_n_0 ),
        .I1(a[5]),
        .O(\spo[30]_INST_0_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \spo[30]_INST_0_i_22 
       (.I0(\spo[25]_INST_0_i_26_n_0 ),
        .I1(a[5]),
        .O(\spo[30]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h0400400000000300)) 
    \spo[30]_INST_0_i_23 
       (.I0(a[1]),
        .I1(a[7]),
        .I2(a[5]),
        .I3(\spo[25]_INST_0_i_27_n_0 ),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[30]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hA154000018020000)) 
    \spo[30]_INST_0_i_24 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[25]_INST_0_i_27_n_0 ),
        .I5(a[2]),
        .O(\spo[30]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h0020000040404000)) 
    \spo[30]_INST_0_i_25 
       (.I0(a[7]),
        .I1(a[2]),
        .I2(\spo[25]_INST_0_i_27_n_0 ),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[6]),
        .O(\spo[30]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h1A00E8000800E000)) 
    \spo[30]_INST_0_i_26 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[25]_INST_0_i_27_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[30]_INST_0_i_26_n_0 ));
  MUXF7 \spo[30]_INST_0_i_27 
       (.I0(\spo[30]_INST_0_i_37_n_0 ),
        .I1(\spo[30]_INST_0_i_38_n_0 ),
        .O(\spo[30]_INST_0_i_27_n_0 ),
        .S(a[0]));
  LUT6 #(
    .INIT(64'h42200000FC8B0000)) 
    \spo[30]_INST_0_i_28 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[25]_INST_0_i_27_n_0 ),
        .I5(a[2]),
        .O(\spo[30]_INST_0_i_28_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \spo[30]_INST_0_i_29 
       (.I0(a[2]),
        .I1(\spo[25]_INST_0_i_27_n_0 ),
        .I2(a[1]),
        .I3(a[6]),
        .O(\spo[30]_INST_0_i_29_n_0 ));
  MUXF7 \spo[30]_INST_0_i_3 
       (.I0(\spo[30]_INST_0_i_10_n_0 ),
        .I1(\spo[30]_INST_0_i_11_n_0 ),
        .O(\spo[30]_INST_0_i_3_n_0 ),
        .S(a[9]));
  LUT6 #(
    .INIT(64'h4191000009080000)) 
    \spo[30]_INST_0_i_30 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(a[5]),
        .I4(\spo[25]_INST_0_i_27_n_0 ),
        .I5(a[1]),
        .O(\spo[30]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hA400100008002800)) 
    \spo[30]_INST_0_i_31 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[25]_INST_0_i_27_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[30]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000108000)) 
    \spo[30]_INST_0_i_32 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(\spo[25]_INST_0_i_27_n_0 ),
        .I3(a[2]),
        .I4(a[6]),
        .I5(a[7]),
        .O(\spo[30]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h5E15000001280000)) 
    \spo[30]_INST_0_i_33 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[2]),
        .I4(\spo[25]_INST_0_i_27_n_0 ),
        .I5(a[1]),
        .O(\spo[30]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h0000040011003400)) 
    \spo[30]_INST_0_i_34 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(\spo[25]_INST_0_i_27_n_0 ),
        .I4(a[2]),
        .I5(a[5]),
        .O(\spo[30]_INST_0_i_34_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h4020)) 
    \spo[30]_INST_0_i_35 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(\spo[25]_INST_0_i_27_n_0 ),
        .I3(a[2]),
        .O(\spo[30]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h080003000A008000)) 
    \spo[30]_INST_0_i_36 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(\spo[25]_INST_0_i_27_n_0 ),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[30]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h4000020030000000)) 
    \spo[30]_INST_0_i_37 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[25]_INST_0_i_27_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[30]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h10E20000040D0000)) 
    \spo[30]_INST_0_i_38 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[25]_INST_0_i_27_n_0 ),
        .I5(a[2]),
        .O(\spo[30]_INST_0_i_38_n_0 ));
  MUXF7 \spo[30]_INST_0_i_4 
       (.I0(\spo[30]_INST_0_i_12_n_0 ),
        .I1(\spo[30]_INST_0_i_13_n_0 ),
        .O(\spo[30]_INST_0_i_4_n_0 ),
        .S(a[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[30]_INST_0_i_5 
       (.I0(\spo[30]_INST_0_i_14_n_0 ),
        .I1(\spo[30]_INST_0_i_15_n_0 ),
        .I2(a[8]),
        .I3(\spo[30]_INST_0_i_16_n_0 ),
        .I4(a[0]),
        .I5(\spo[30]_INST_0_i_17_n_0 ),
        .O(\spo[30]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h0000F404)) 
    \spo[30]_INST_0_i_6 
       (.I0(a[7]),
        .I1(\spo[30]_INST_0_i_18_n_0 ),
        .I2(a[0]),
        .I3(\spo[30]_INST_0_i_19_n_0 ),
        .I4(a[8]),
        .O(\spo[30]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hBBB888B888888888)) 
    \spo[30]_INST_0_i_7 
       (.I0(\spo[30]_INST_0_i_20_n_0 ),
        .I1(a[0]),
        .I2(\spo[30]_INST_0_i_21_n_0 ),
        .I3(a[6]),
        .I4(\spo[30]_INST_0_i_22_n_0 ),
        .I5(a[7]),
        .O(\spo[30]_INST_0_i_7_n_0 ));
  MUXF7 \spo[30]_INST_0_i_8 
       (.I0(\spo[30]_INST_0_i_23_n_0 ),
        .I1(\spo[30]_INST_0_i_24_n_0 ),
        .O(\spo[30]_INST_0_i_8_n_0 ),
        .S(a[0]));
  MUXF7 \spo[30]_INST_0_i_9 
       (.I0(\spo[30]_INST_0_i_25_n_0 ),
        .I1(\spo[30]_INST_0_i_26_n_0 ),
        .O(\spo[30]_INST_0_i_9_n_0 ),
        .S(a[0]));
  MUXF8 \spo[31]_INST_0 
       (.I0(\spo[31]_INST_0_i_1_n_0 ),
        .I1(\spo[31]_INST_0_i_2_n_0 ),
        .O(spo[30]),
        .S(a[3]));
  MUXF7 \spo[31]_INST_0_i_1 
       (.I0(\spo[31]_INST_0_i_3_n_0 ),
        .I1(\spo[31]_INST_0_i_4_n_0 ),
        .O(\spo[31]_INST_0_i_1_n_0 ),
        .S(a[4]));
  MUXF7 \spo[31]_INST_0_i_10 
       (.I0(\spo[31]_INST_0_i_25_n_0 ),
        .I1(\spo[31]_INST_0_i_26_n_0 ),
        .O(\spo[31]_INST_0_i_10_n_0 ),
        .S(a[0]));
  MUXF7 \spo[31]_INST_0_i_11 
       (.I0(\spo[31]_INST_0_i_27_n_0 ),
        .I1(\spo[31]_INST_0_i_28_n_0 ),
        .O(\spo[31]_INST_0_i_11_n_0 ),
        .S(a[0]));
  MUXF7 \spo[31]_INST_0_i_12 
       (.I0(\spo[31]_INST_0_i_29_n_0 ),
        .I1(\spo[31]_INST_0_i_30_n_0 ),
        .O(\spo[31]_INST_0_i_12_n_0 ),
        .S(a[0]));
  MUXF7 \spo[31]_INST_0_i_13 
       (.I0(\spo[31]_INST_0_i_31_n_0 ),
        .I1(\spo[31]_INST_0_i_32_n_0 ),
        .O(\spo[31]_INST_0_i_13_n_0 ),
        .S(a[0]));
  MUXF7 \spo[31]_INST_0_i_14 
       (.I0(\spo[31]_INST_0_i_33_n_0 ),
        .I1(\spo[31]_INST_0_i_34_n_0 ),
        .O(\spo[31]_INST_0_i_14_n_0 ),
        .S(a[0]));
  MUXF7 \spo[31]_INST_0_i_15 
       (.I0(\spo[31]_INST_0_i_35_n_0 ),
        .I1(\spo[31]_INST_0_i_36_n_0 ),
        .O(\spo[31]_INST_0_i_15_n_0 ),
        .S(a[0]));
  LUT6 #(
    .INIT(64'h600014004A008600)) 
    \spo[31]_INST_0_i_16 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[31]_INST_0_i_37_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[31]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h213C0000324C0000)) 
    \spo[31]_INST_0_i_17 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[31]_INST_0_i_37_n_0 ),
        .I5(a[2]),
        .O(\spo[31]_INST_0_i_17_n_0 ));
  MUXF8 \spo[31]_INST_0_i_18 
       (.I0(\spo[31]_INST_0_i_38_n_0 ),
        .I1(\spo[31]_INST_0_i_39_n_0 ),
        .O(\spo[31]_INST_0_i_18_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'h11A40000245A0000)) 
    \spo[31]_INST_0_i_19 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[31]_INST_0_i_37_n_0 ),
        .I5(a[2]),
        .O(\spo[31]_INST_0_i_19_n_0 ));
  MUXF7 \spo[31]_INST_0_i_2 
       (.I0(\spo[31]_INST_0_i_5_n_0 ),
        .I1(\spo[31]_INST_0_i_6_n_0 ),
        .O(\spo[31]_INST_0_i_2_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h4A170000870E0000)) 
    \spo[31]_INST_0_i_20 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(\spo[31]_INST_0_i_37_n_0 ),
        .I5(a[2]),
        .O(\spo[31]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h1740000060300000)) 
    \spo[31]_INST_0_i_21 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[6]),
        .I3(a[1]),
        .I4(\spo[31]_INST_0_i_37_n_0 ),
        .I5(a[2]),
        .O(\spo[31]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h3040000009440000)) 
    \spo[31]_INST_0_i_22 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[31]_INST_0_i_37_n_0 ),
        .I5(a[2]),
        .O(\spo[31]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hC000520060004800)) 
    \spo[31]_INST_0_i_23 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[31]_INST_0_i_37_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[31]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h28DD000098020000)) 
    \spo[31]_INST_0_i_24 
       (.I0(a[7]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[6]),
        .I4(\spo[31]_INST_0_i_37_n_0 ),
        .I5(a[5]),
        .O(\spo[31]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h00000C00C0003800)) 
    \spo[31]_INST_0_i_25 
       (.I0(a[1]),
        .I1(a[7]),
        .I2(a[5]),
        .I3(\spo[31]_INST_0_i_37_n_0 ),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[31]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h67200000BADA0000)) 
    \spo[31]_INST_0_i_26 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[31]_INST_0_i_37_n_0 ),
        .I5(a[2]),
        .O(\spo[31]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h60000A002C008500)) 
    \spo[31]_INST_0_i_27 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[31]_INST_0_i_37_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[31]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h728900000CA00000)) 
    \spo[31]_INST_0_i_28 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[31]_INST_0_i_37_n_0 ),
        .I5(a[2]),
        .O(\spo[31]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h5A680000727B0000)) 
    \spo[31]_INST_0_i_29 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(a[5]),
        .I4(\spo[31]_INST_0_i_37_n_0 ),
        .I5(a[1]),
        .O(\spo[31]_INST_0_i_29_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[31]_INST_0_i_3 
       (.I0(\spo[31]_INST_0_i_7_n_0 ),
        .I1(a[9]),
        .I2(\spo[31]_INST_0_i_8_n_0 ),
        .I3(a[8]),
        .I4(\spo[31]_INST_0_i_9_n_0 ),
        .O(\spo[31]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000005350000)) 
    \spo[31]_INST_0_i_30 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(\spo[31]_INST_0_i_37_n_0 ),
        .I5(a[2]),
        .O(\spo[31]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hA055000045800000)) 
    \spo[31]_INST_0_i_31 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(\spo[31]_INST_0_i_37_n_0 ),
        .I5(a[2]),
        .O(\spo[31]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hB54D0000B59E0000)) 
    \spo[31]_INST_0_i_32 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[2]),
        .I4(\spo[31]_INST_0_i_37_n_0 ),
        .I5(a[1]),
        .O(\spo[31]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h8520000020120000)) 
    \spo[31]_INST_0_i_33 
       (.I0(a[7]),
        .I1(a[1]),
        .I2(a[6]),
        .I3(a[2]),
        .I4(\spo[31]_INST_0_i_37_n_0 ),
        .I5(a[5]),
        .O(\spo[31]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h8D480000F0970000)) 
    \spo[31]_INST_0_i_34 
       (.I0(a[7]),
        .I1(a[2]),
        .I2(a[6]),
        .I3(a[5]),
        .I4(\spo[31]_INST_0_i_37_n_0 ),
        .I5(a[1]),
        .O(\spo[31]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hC37B0000C0080000)) 
    \spo[31]_INST_0_i_35 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[1]),
        .I3(a[6]),
        .I4(\spo[31]_INST_0_i_37_n_0 ),
        .I5(a[2]),
        .O(\spo[31]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h00002000C01070C0)) 
    \spo[31]_INST_0_i_36 
       (.I0(a[7]),
        .I1(a[1]),
        .I2(\spo[31]_INST_0_i_37_n_0 ),
        .I3(a[2]),
        .I4(a[5]),
        .I5(a[6]),
        .O(\spo[31]_INST_0_i_36_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \spo[31]_INST_0_i_37 
       (.I0(a[10]),
        .I1(a[11]),
        .I2(a[12]),
        .I3(a[13]),
        .O(\spo[31]_INST_0_i_37_n_0 ));
  MUXF7 \spo[31]_INST_0_i_38 
       (.I0(\spo[31]_INST_0_i_40_n_0 ),
        .I1(\spo[31]_INST_0_i_41_n_0 ),
        .O(\spo[31]_INST_0_i_38_n_0 ),
        .S(a[0]));
  MUXF7 \spo[31]_INST_0_i_39 
       (.I0(\spo[31]_INST_0_i_42_n_0 ),
        .I1(\spo[31]_INST_0_i_43_n_0 ),
        .O(\spo[31]_INST_0_i_39_n_0 ),
        .S(a[0]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[31]_INST_0_i_4 
       (.I0(\spo[31]_INST_0_i_10_n_0 ),
        .I1(a[9]),
        .I2(\spo[31]_INST_0_i_11_n_0 ),
        .I3(a[8]),
        .I4(\spo[31]_INST_0_i_12_n_0 ),
        .O(\spo[31]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h88550000609C0000)) 
    \spo[31]_INST_0_i_40 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[31]_INST_0_i_37_n_0 ),
        .I5(a[2]),
        .O(\spo[31]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h1503000001000000)) 
    \spo[31]_INST_0_i_41 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[2]),
        .I4(\spo[31]_INST_0_i_37_n_0 ),
        .I5(a[1]),
        .O(\spo[31]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h40004200A100E000)) 
    \spo[31]_INST_0_i_42 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[31]_INST_0_i_37_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[31]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hEF70000050A80000)) 
    \spo[31]_INST_0_i_43 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[6]),
        .I3(a[1]),
        .I4(\spo[31]_INST_0_i_37_n_0 ),
        .I5(a[2]),
        .O(\spo[31]_INST_0_i_43_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[31]_INST_0_i_5 
       (.I0(\spo[31]_INST_0_i_13_n_0 ),
        .I1(a[9]),
        .I2(\spo[31]_INST_0_i_14_n_0 ),
        .I3(a[8]),
        .I4(\spo[31]_INST_0_i_15_n_0 ),
        .O(\spo[31]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \spo[31]_INST_0_i_6 
       (.I0(\spo[31]_INST_0_i_16_n_0 ),
        .I1(a[0]),
        .I2(\spo[31]_INST_0_i_17_n_0 ),
        .I3(a[8]),
        .I4(a[9]),
        .I5(\spo[31]_INST_0_i_18_n_0 ),
        .O(\spo[31]_INST_0_i_6_n_0 ));
  MUXF7 \spo[31]_INST_0_i_7 
       (.I0(\spo[31]_INST_0_i_19_n_0 ),
        .I1(\spo[31]_INST_0_i_20_n_0 ),
        .O(\spo[31]_INST_0_i_7_n_0 ),
        .S(a[0]));
  MUXF7 \spo[31]_INST_0_i_8 
       (.I0(\spo[31]_INST_0_i_21_n_0 ),
        .I1(\spo[31]_INST_0_i_22_n_0 ),
        .O(\spo[31]_INST_0_i_8_n_0 ),
        .S(a[0]));
  MUXF7 \spo[31]_INST_0_i_9 
       (.I0(\spo[31]_INST_0_i_23_n_0 ),
        .I1(\spo[31]_INST_0_i_24_n_0 ),
        .O(\spo[31]_INST_0_i_9_n_0 ),
        .S(a[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0 
       (.I0(\spo[3]_INST_0_i_1_n_0 ),
        .I1(\spo[3]_INST_0_i_2_n_0 ),
        .I2(a[3]),
        .I3(\spo[3]_INST_0_i_3_n_0 ),
        .I4(a[4]),
        .I5(\spo[3]_INST_0_i_4_n_0 ),
        .O(spo[3]));
  LUT6 #(
    .INIT(64'h08AF080F08A00800)) 
    \spo[3]_INST_0_i_1 
       (.I0(a[0]),
        .I1(\spo[6]_INST_0_i_5_n_0 ),
        .I2(a[8]),
        .I3(a[9]),
        .I4(\spo[3]_INST_0_i_5_n_0 ),
        .I5(\spo[3]_INST_0_i_6_n_0 ),
        .O(\spo[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF800080)) 
    \spo[3]_INST_0_i_10 
       (.I0(a[7]),
        .I1(\spo[5]_INST_0_i_12_n_0 ),
        .I2(a[6]),
        .I3(a[0]),
        .I4(\spo[3]_INST_0_i_22_n_0 ),
        .I5(a[8]),
        .O(\spo[3]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hB888888888888888)) 
    \spo[3]_INST_0_i_11 
       (.I0(\spo[3]_INST_0_i_23_n_0 ),
        .I1(a[0]),
        .I2(a[6]),
        .I3(\spo[6]_INST_0_i_21_n_0 ),
        .I4(a[5]),
        .I5(a[7]),
        .O(\spo[3]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h48A00000358A0000)) 
    \spo[3]_INST_0_i_12 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[6]),
        .I3(a[1]),
        .I4(\spo[6]_INST_0_i_16_n_0 ),
        .I5(a[2]),
        .O(\spo[3]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    \spo[3]_INST_0_i_13 
       (.I0(\spo[3]_INST_0_i_24_n_0 ),
        .I1(a[0]),
        .I2(\spo[30]_INST_0_i_22_n_0 ),
        .I3(a[6]),
        .I4(a[7]),
        .I5(\spo[3]_INST_0_i_25_n_0 ),
        .O(\spo[3]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h8429911D00000000)) 
    \spo[3]_INST_0_i_14 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[5]),
        .I5(\spo[6]_INST_0_i_16_n_0 ),
        .O(\spo[3]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h48006300A6000A00)) 
    \spo[3]_INST_0_i_15 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[6]_INST_0_i_16_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[3]_INST_0_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \spo[3]_INST_0_i_16 
       (.I0(a[6]),
        .I1(\spo[25]_INST_0_i_26_n_0 ),
        .I2(a[5]),
        .I3(a[7]),
        .O(\spo[3]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h116400008A100000)) 
    \spo[3]_INST_0_i_17 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[6]_INST_0_i_16_n_0 ),
        .I5(a[2]),
        .O(\spo[3]_INST_0_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \spo[3]_INST_0_i_18 
       (.I0(a[6]),
        .I1(\spo[6]_INST_0_i_21_n_0 ),
        .I2(a[5]),
        .I3(a[7]),
        .O(\spo[3]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h18040000E6110000)) 
    \spo[3]_INST_0_i_19 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[6]_INST_0_i_16_n_0 ),
        .I5(a[2]),
        .O(\spo[3]_INST_0_i_19_n_0 ));
  LUT5 #(
    .INIT(32'h08FF0800)) 
    \spo[3]_INST_0_i_2 
       (.I0(a[0]),
        .I1(\spo[3]_INST_0_i_7_n_0 ),
        .I2(a[8]),
        .I3(a[9]),
        .I4(\spo[3]_INST_0_i_8_n_0 ),
        .O(\spo[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4388000020570000)) 
    \spo[3]_INST_0_i_20 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[2]),
        .I4(\spo[6]_INST_0_i_16_n_0 ),
        .I5(a[1]),
        .O(\spo[3]_INST_0_i_20_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \spo[3]_INST_0_i_21 
       (.I0(a[6]),
        .I1(a[1]),
        .I2(\spo[6]_INST_0_i_16_n_0 ),
        .I3(a[5]),
        .I4(a[7]),
        .O(\spo[3]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h219A0000DEE50000)) 
    \spo[3]_INST_0_i_22 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[2]),
        .I4(\spo[6]_INST_0_i_16_n_0 ),
        .I5(a[1]),
        .O(\spo[3]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h25DB0000A54A0000)) 
    \spo[3]_INST_0_i_23 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(a[5]),
        .I4(\spo[6]_INST_0_i_16_n_0 ),
        .I5(a[1]),
        .O(\spo[3]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h5638000091380000)) 
    \spo[3]_INST_0_i_24 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[6]_INST_0_i_16_n_0 ),
        .I5(a[2]),
        .O(\spo[3]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \spo[3]_INST_0_i_25 
       (.I0(a[1]),
        .I1(a[10]),
        .I2(a[11]),
        .I3(a[12]),
        .I4(a[13]),
        .I5(a[2]),
        .O(\spo[3]_INST_0_i_25_n_0 ));
  MUXF7 \spo[3]_INST_0_i_3 
       (.I0(\spo[3]_INST_0_i_9_n_0 ),
        .I1(\spo[3]_INST_0_i_10_n_0 ),
        .O(\spo[3]_INST_0_i_3_n_0 ),
        .S(a[9]));
  LUT6 #(
    .INIT(64'h3000BBBB30008888)) 
    \spo[3]_INST_0_i_4 
       (.I0(\spo[3]_INST_0_i_11_n_0 ),
        .I1(a[9]),
        .I2(\spo[3]_INST_0_i_12_n_0 ),
        .I3(a[0]),
        .I4(a[8]),
        .I5(\spo[3]_INST_0_i_13_n_0 ),
        .O(\spo[3]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA2C5000035120000)) 
    \spo[3]_INST_0_i_5 
       (.I0(a[7]),
        .I1(a[2]),
        .I2(a[6]),
        .I3(a[5]),
        .I4(\spo[6]_INST_0_i_16_n_0 ),
        .I5(a[1]),
        .O(\spo[3]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h88888B8888888888)) 
    \spo[3]_INST_0_i_6 
       (.I0(\spo[3]_INST_0_i_14_n_0 ),
        .I1(a[0]),
        .I2(a[6]),
        .I3(\spo[6]_INST_0_i_18_n_0 ),
        .I4(a[5]),
        .I5(a[7]),
        .O(\spo[3]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hA7FA0000C8930000)) 
    \spo[3]_INST_0_i_7 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[2]),
        .I4(\spo[6]_INST_0_i_16_n_0 ),
        .I5(a[1]),
        .O(\spo[3]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_8 
       (.I0(\spo[3]_INST_0_i_15_n_0 ),
        .I1(\spo[3]_INST_0_i_16_n_0 ),
        .I2(a[8]),
        .I3(\spo[3]_INST_0_i_17_n_0 ),
        .I4(a[0]),
        .I5(\spo[3]_INST_0_i_18_n_0 ),
        .O(\spo[3]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_9 
       (.I0(\spo[3]_INST_0_i_19_n_0 ),
        .I1(\spo[28]_INST_0_i_12_n_0 ),
        .I2(a[8]),
        .I3(\spo[3]_INST_0_i_20_n_0 ),
        .I4(a[0]),
        .I5(\spo[3]_INST_0_i_21_n_0 ),
        .O(\spo[3]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[4]_INST_0 
       (.I0(\spo[4]_INST_0_i_1_n_0 ),
        .I1(\spo[4]_INST_0_i_2_n_0 ),
        .I2(a[3]),
        .I3(\spo[4]_INST_0_i_3_n_0 ),
        .I4(a[4]),
        .I5(\spo[4]_INST_0_i_4_n_0 ),
        .O(spo[4]));
  LUT6 #(
    .INIT(64'h3000BB3330008800)) 
    \spo[4]_INST_0_i_1 
       (.I0(\spo[4]_INST_0_i_5_n_0 ),
        .I1(a[9]),
        .I2(\spo[4]_INST_0_i_6_n_0 ),
        .I3(a[0]),
        .I4(a[8]),
        .I5(\spo[4]_INST_0_i_7_n_0 ),
        .O(\spo[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4FFEB17F00000000)) 
    \spo[4]_INST_0_i_10 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(\spo[4]_INST_0_i_14_n_0 ),
        .O(\spo[4]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[4]_INST_0_i_11 
       (.I0(\spo[4]_INST_0_i_22_n_0 ),
        .I1(\spo[28]_INST_0_i_12_n_0 ),
        .I2(a[8]),
        .I3(\spo[4]_INST_0_i_23_n_0 ),
        .I4(a[0]),
        .I5(\spo[4]_INST_0_i_24_n_0 ),
        .O(\spo[4]_INST_0_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \spo[4]_INST_0_i_12 
       (.I0(\spo[4]_INST_0_i_25_n_0 ),
        .I1(a[8]),
        .I2(\spo[4]_INST_0_i_26_n_0 ),
        .I3(a[0]),
        .I4(\spo[6]_INST_0_i_26_n_0 ),
        .O(\spo[4]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF800080)) 
    \spo[4]_INST_0_i_13 
       (.I0(a[7]),
        .I1(\spo[4]_INST_0_i_27_n_0 ),
        .I2(a[6]),
        .I3(a[0]),
        .I4(\spo[4]_INST_0_i_28_n_0 ),
        .I5(a[8]),
        .O(\spo[4]_INST_0_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \spo[4]_INST_0_i_14 
       (.I0(a[10]),
        .I1(a[11]),
        .I2(a[12]),
        .I3(a[13]),
        .O(\spo[4]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h8841000034DC0000)) 
    \spo[4]_INST_0_i_15 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[4]_INST_0_i_14_n_0 ),
        .I5(a[2]),
        .O(\spo[4]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hE090F070E0E040A0)) 
    \spo[4]_INST_0_i_16 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(\spo[4]_INST_0_i_14_n_0 ),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[4]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000005040)) 
    \spo[4]_INST_0_i_17 
       (.I0(a[6]),
        .I1(a[1]),
        .I2(\spo[4]_INST_0_i_14_n_0 ),
        .I3(a[2]),
        .I4(a[5]),
        .I5(a[7]),
        .O(\spo[4]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h3A85000032880000)) 
    \spo[4]_INST_0_i_18 
       (.I0(a[7]),
        .I1(a[1]),
        .I2(a[6]),
        .I3(a[2]),
        .I4(\spo[4]_INST_0_i_14_n_0 ),
        .I5(a[5]),
        .O(\spo[4]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0000080000009000)) 
    \spo[4]_INST_0_i_19 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(\spo[4]_INST_0_i_14_n_0 ),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[4]_INST_0_i_19_n_0 ));
  MUXF7 \spo[4]_INST_0_i_2 
       (.I0(\spo[4]_INST_0_i_8_n_0 ),
        .I1(\spo[4]_INST_0_i_9_n_0 ),
        .O(\spo[4]_INST_0_i_2_n_0 ),
        .S(a[9]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \spo[4]_INST_0_i_20 
       (.I0(a[2]),
        .I1(\spo[6]_INST_0_i_16_n_0 ),
        .I2(a[1]),
        .I3(a[5]),
        .O(\spo[4]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h9E7D77CF00000000)) 
    \spo[4]_INST_0_i_21 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(\spo[6]_INST_0_i_16_n_0 ),
        .O(\spo[4]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h38E60000FE1D0000)) 
    \spo[4]_INST_0_i_22 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[4]_INST_0_i_14_n_0 ),
        .I5(a[2]),
        .O(\spo[4]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h43DE000034570000)) 
    \spo[4]_INST_0_i_23 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[2]),
        .I4(\spo[4]_INST_0_i_14_n_0 ),
        .I5(a[1]),
        .O(\spo[4]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h0000440003008000)) 
    \spo[4]_INST_0_i_24 
       (.I0(a[1]),
        .I1(a[7]),
        .I2(a[5]),
        .I3(\spo[4]_INST_0_i_14_n_0 ),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[4]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hE77F00009FEA0000)) 
    \spo[4]_INST_0_i_25 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[2]),
        .I4(\spo[6]_INST_0_i_16_n_0 ),
        .I5(a[1]),
        .O(\spo[4]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h788F0000B8C00000)) 
    \spo[4]_INST_0_i_26 
       (.I0(a[2]),
        .I1(a[7]),
        .I2(a[6]),
        .I3(a[1]),
        .I4(\spo[6]_INST_0_i_16_n_0 ),
        .I5(a[5]),
        .O(\spo[4]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \spo[4]_INST_0_i_27 
       (.I0(a[1]),
        .I1(a[10]),
        .I2(a[11]),
        .I3(a[12]),
        .I4(a[13]),
        .I5(a[5]),
        .O(\spo[4]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h7C7F0000732C0000)) 
    \spo[4]_INST_0_i_28 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[2]),
        .I4(\spo[6]_INST_0_i_16_n_0 ),
        .I5(a[1]),
        .O(\spo[4]_INST_0_i_28_n_0 ));
  LUT5 #(
    .INIT(32'h08FF0800)) 
    \spo[4]_INST_0_i_3 
       (.I0(a[0]),
        .I1(\spo[4]_INST_0_i_10_n_0 ),
        .I2(a[8]),
        .I3(a[9]),
        .I4(\spo[4]_INST_0_i_11_n_0 ),
        .O(\spo[4]_INST_0_i_3_n_0 ));
  MUXF7 \spo[4]_INST_0_i_4 
       (.I0(\spo[4]_INST_0_i_12_n_0 ),
        .I1(\spo[4]_INST_0_i_13_n_0 ),
        .O(\spo[4]_INST_0_i_4_n_0 ),
        .S(a[9]));
  LUT6 #(
    .INIT(64'h7F7C00006F3B0000)) 
    \spo[4]_INST_0_i_5 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[2]),
        .I4(\spo[4]_INST_0_i_14_n_0 ),
        .I5(a[1]),
        .O(\spo[4]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBEDF00007DAE0000)) 
    \spo[4]_INST_0_i_6 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(a[5]),
        .I4(\spo[4]_INST_0_i_14_n_0 ),
        .I5(a[1]),
        .O(\spo[4]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h88888B8888888888)) 
    \spo[4]_INST_0_i_7 
       (.I0(\spo[4]_INST_0_i_15_n_0 ),
        .I1(a[0]),
        .I2(a[6]),
        .I3(\spo[6]_INST_0_i_18_n_0 ),
        .I4(a[5]),
        .I5(a[7]),
        .O(\spo[4]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[4]_INST_0_i_8 
       (.I0(\spo[4]_INST_0_i_16_n_0 ),
        .I1(\spo[4]_INST_0_i_17_n_0 ),
        .I2(a[8]),
        .I3(\spo[4]_INST_0_i_18_n_0 ),
        .I4(a[0]),
        .I5(\spo[4]_INST_0_i_19_n_0 ),
        .O(\spo[4]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF800080)) 
    \spo[4]_INST_0_i_9 
       (.I0(a[7]),
        .I1(\spo[4]_INST_0_i_20_n_0 ),
        .I2(a[6]),
        .I3(a[0]),
        .I4(\spo[4]_INST_0_i_21_n_0 ),
        .I5(a[8]),
        .O(\spo[4]_INST_0_i_9_n_0 ));
  MUXF7 \spo[5]_INST_0 
       (.I0(\spo[5]_INST_0_i_1_n_0 ),
        .I1(\spo[5]_INST_0_i_2_n_0 ),
        .O(spo[5]),
        .S(a[3]));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \spo[5]_INST_0_i_1 
       (.I0(\spo[5]_INST_0_i_3_n_0 ),
        .I1(a[8]),
        .I2(a[9]),
        .I3(\spo[5]_INST_0_i_4_n_0 ),
        .I4(a[4]),
        .I5(\spo[5]_INST_0_i_5_n_0 ),
        .O(\spo[5]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h8040)) 
    \spo[5]_INST_0_i_10 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(\spo[25]_INST_0_i_27_n_0 ),
        .I3(a[2]),
        .O(\spo[5]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \spo[5]_INST_0_i_11 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(\spo[25]_INST_0_i_27_n_0 ),
        .I3(a[2]),
        .O(\spo[5]_INST_0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \spo[5]_INST_0_i_12 
       (.I0(\spo[25]_INST_0_i_26_n_0 ),
        .I1(a[5]),
        .O(\spo[5]_INST_0_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \spo[5]_INST_0_i_13 
       (.I0(a[5]),
        .I1(\spo[6]_INST_0_i_21_n_0 ),
        .I2(a[6]),
        .O(\spo[5]_INST_0_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h12000C00)) 
    \spo[5]_INST_0_i_14 
       (.I0(a[6]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(\spo[25]_INST_0_i_27_n_0 ),
        .I4(a[2]),
        .O(\spo[5]_INST_0_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \spo[5]_INST_0_i_15 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(\spo[25]_INST_0_i_27_n_0 ),
        .I3(a[2]),
        .I4(a[6]),
        .O(\spo[5]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h30003000B833B800)) 
    \spo[5]_INST_0_i_16 
       (.I0(\spo[5]_INST_0_i_24_n_0 ),
        .I1(a[8]),
        .I2(\spo[5]_INST_0_i_25_n_0 ),
        .I3(a[0]),
        .I4(\spo[5]_INST_0_i_26_n_0 ),
        .I5(a[7]),
        .O(\spo[5]_INST_0_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h00008A80)) 
    \spo[5]_INST_0_i_17 
       (.I0(a[0]),
        .I1(\spo[5]_INST_0_i_27_n_0 ),
        .I2(a[7]),
        .I3(\spo[5]_INST_0_i_14_n_0 ),
        .I4(a[8]),
        .O(\spo[5]_INST_0_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h80080000)) 
    \spo[5]_INST_0_i_18 
       (.I0(a[2]),
        .I1(\spo[25]_INST_0_i_27_n_0 ),
        .I2(a[1]),
        .I3(a[5]),
        .I4(a[6]),
        .O(\spo[5]_INST_0_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00000480)) 
    \spo[5]_INST_0_i_19 
       (.I0(a[2]),
        .I1(\spo[25]_INST_0_i_27_n_0 ),
        .I2(a[1]),
        .I3(a[5]),
        .I4(a[6]),
        .O(\spo[5]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0_i_2 
       (.I0(\spo[5]_INST_0_i_6_n_0 ),
        .I1(\spo[5]_INST_0_i_7_n_0 ),
        .I2(a[4]),
        .I3(\spo[5]_INST_0_i_8_n_0 ),
        .I4(a[9]),
        .I5(\spo[5]_INST_0_i_9_n_0 ),
        .O(\spo[5]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00004500)) 
    \spo[5]_INST_0_i_20 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(\spo[25]_INST_0_i_27_n_0 ),
        .I4(a[6]),
        .O(\spo[5]_INST_0_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h60802000)) 
    \spo[5]_INST_0_i_21 
       (.I0(a[6]),
        .I1(a[2]),
        .I2(\spo[25]_INST_0_i_27_n_0 ),
        .I3(a[1]),
        .I4(a[5]),
        .O(\spo[5]_INST_0_i_21_n_0 ));
  LUT5 #(
    .INIT(32'h00003020)) 
    \spo[5]_INST_0_i_22 
       (.I0(a[0]),
        .I1(a[6]),
        .I2(\spo[6]_INST_0_i_21_n_0 ),
        .I3(a[5]),
        .I4(a[7]),
        .O(\spo[5]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hCCE200E200000000)) 
    \spo[5]_INST_0_i_23 
       (.I0(\spo[30]_INST_0_i_21_n_0 ),
        .I1(a[6]),
        .I2(\spo[1]_INST_0_i_31_n_0 ),
        .I3(a[7]),
        .I4(\spo[1]_INST_0_i_24_n_0 ),
        .I5(a[0]),
        .O(\spo[5]_INST_0_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h40800020)) 
    \spo[5]_INST_0_i_24 
       (.I0(a[6]),
        .I1(a[2]),
        .I2(\spo[25]_INST_0_i_27_n_0 ),
        .I3(a[1]),
        .I4(a[5]),
        .O(\spo[5]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h0000000045001000)) 
    \spo[5]_INST_0_i_25 
       (.I0(a[6]),
        .I1(a[5]),
        .I2(a[2]),
        .I3(\spo[25]_INST_0_i_27_n_0 ),
        .I4(a[1]),
        .I5(a[7]),
        .O(\spo[5]_INST_0_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00000440)) 
    \spo[5]_INST_0_i_26 
       (.I0(a[2]),
        .I1(\spo[25]_INST_0_i_27_n_0 ),
        .I2(a[1]),
        .I3(a[5]),
        .I4(a[6]),
        .O(\spo[5]_INST_0_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00800010)) 
    \spo[5]_INST_0_i_27 
       (.I0(a[6]),
        .I1(a[2]),
        .I2(\spo[25]_INST_0_i_27_n_0 ),
        .I3(a[1]),
        .I4(a[5]),
        .O(\spo[5]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hCFA0C0A000000000)) 
    \spo[5]_INST_0_i_3 
       (.I0(\spo[5]_INST_0_i_10_n_0 ),
        .I1(\spo[5]_INST_0_i_11_n_0 ),
        .I2(a[0]),
        .I3(a[6]),
        .I4(\spo[5]_INST_0_i_12_n_0 ),
        .I5(a[7]),
        .O(\spo[5]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hC0A0C0A0000F0000)) 
    \spo[5]_INST_0_i_4 
       (.I0(\spo[5]_INST_0_i_13_n_0 ),
        .I1(\spo[5]_INST_0_i_14_n_0 ),
        .I2(a[8]),
        .I3(a[7]),
        .I4(\spo[5]_INST_0_i_15_n_0 ),
        .I5(a[0]),
        .O(\spo[5]_INST_0_i_4_n_0 ));
  MUXF7 \spo[5]_INST_0_i_5 
       (.I0(\spo[5]_INST_0_i_16_n_0 ),
        .I1(\spo[5]_INST_0_i_17_n_0 ),
        .O(\spo[5]_INST_0_i_5_n_0 ),
        .S(a[9]));
  LUT6 #(
    .INIT(64'h0000000008AA0800)) 
    \spo[5]_INST_0_i_6 
       (.I0(a[0]),
        .I1(\spo[30]_INST_0_i_22_n_0 ),
        .I2(a[6]),
        .I3(a[7]),
        .I4(\spo[30]_INST_0_i_18_n_0 ),
        .I5(a[8]),
        .O(\spo[5]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hC0AFC0A000000000)) 
    \spo[5]_INST_0_i_7 
       (.I0(\spo[5]_INST_0_i_18_n_0 ),
        .I1(\spo[5]_INST_0_i_19_n_0 ),
        .I2(a[8]),
        .I3(a[7]),
        .I4(\spo[5]_INST_0_i_20_n_0 ),
        .I5(a[0]),
        .O(\spo[5]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080808A80)) 
    \spo[5]_INST_0_i_8 
       (.I0(a[0]),
        .I1(\spo[5]_INST_0_i_21_n_0 ),
        .I2(a[7]),
        .I3(\spo[30]_INST_0_i_35_n_0 ),
        .I4(a[6]),
        .I5(a[8]),
        .O(\spo[5]_INST_0_i_8_n_0 ));
  MUXF7 \spo[5]_INST_0_i_9 
       (.I0(\spo[5]_INST_0_i_22_n_0 ),
        .I1(\spo[5]_INST_0_i_23_n_0 ),
        .O(\spo[5]_INST_0_i_9_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[6]_INST_0 
       (.I0(\spo[6]_INST_0_i_1_n_0 ),
        .I1(\spo[6]_INST_0_i_2_n_0 ),
        .I2(a[3]),
        .I3(\spo[6]_INST_0_i_3_n_0 ),
        .I4(a[4]),
        .I5(\spo[6]_INST_0_i_4_n_0 ),
        .O(spo[6]));
  LUT6 #(
    .INIT(64'h08AF080F08A00800)) 
    \spo[6]_INST_0_i_1 
       (.I0(a[0]),
        .I1(\spo[6]_INST_0_i_5_n_0 ),
        .I2(a[8]),
        .I3(a[9]),
        .I4(\spo[6]_INST_0_i_6_n_0 ),
        .I5(\spo[6]_INST_0_i_7_n_0 ),
        .O(\spo[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h080061000A004000)) 
    \spo[6]_INST_0_i_10 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[6]_INST_0_i_16_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[6]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h219A0000DE650000)) 
    \spo[6]_INST_0_i_11 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[2]),
        .I4(\spo[6]_INST_0_i_16_n_0 ),
        .I5(a[1]),
        .O(\spo[6]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h8888888888888B88)) 
    \spo[6]_INST_0_i_12 
       (.I0(\spo[6]_INST_0_i_20_n_0 ),
        .I1(a[0]),
        .I2(a[6]),
        .I3(\spo[6]_INST_0_i_21_n_0 ),
        .I4(a[5]),
        .I5(a[7]),
        .O(\spo[6]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0A0A0C0CFC0C0)) 
    \spo[6]_INST_0_i_13 
       (.I0(\spo[6]_INST_0_i_22_n_0 ),
        .I1(\spo[6]_INST_0_i_23_n_0 ),
        .I2(a[0]),
        .I3(a[6]),
        .I4(\spo[25]_INST_0_i_30_n_0 ),
        .I5(a[7]),
        .O(\spo[6]_INST_0_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \spo[6]_INST_0_i_14 
       (.I0(\spo[6]_INST_0_i_24_n_0 ),
        .I1(a[8]),
        .I2(\spo[6]_INST_0_i_25_n_0 ),
        .I3(a[0]),
        .I4(\spo[6]_INST_0_i_26_n_0 ),
        .O(\spo[6]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF800080)) 
    \spo[6]_INST_0_i_15 
       (.I0(a[7]),
        .I1(\spo[30]_INST_0_i_21_n_0 ),
        .I2(a[6]),
        .I3(a[0]),
        .I4(\spo[6]_INST_0_i_27_n_0 ),
        .I5(a[8]),
        .O(\spo[6]_INST_0_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \spo[6]_INST_0_i_16 
       (.I0(a[10]),
        .I1(a[11]),
        .I2(a[12]),
        .I3(a[13]),
        .O(\spo[6]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h88410000209C0000)) 
    \spo[6]_INST_0_i_17 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[6]_INST_0_i_16_n_0 ),
        .I5(a[2]),
        .O(\spo[6]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \spo[6]_INST_0_i_18 
       (.I0(a[1]),
        .I1(a[10]),
        .I2(a[11]),
        .I3(a[12]),
        .I4(a[13]),
        .I5(a[2]),
        .O(\spo[6]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h56008B00A8006E00)) 
    \spo[6]_INST_0_i_19 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(\spo[6]_INST_0_i_16_n_0 ),
        .I4(a[2]),
        .I5(a[5]),
        .O(\spo[6]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h30BB308830003000)) 
    \spo[6]_INST_0_i_2 
       (.I0(\spo[6]_INST_0_i_8_n_0 ),
        .I1(a[9]),
        .I2(\spo[6]_INST_0_i_9_n_0 ),
        .I3(a[8]),
        .I4(\spo[6]_INST_0_i_10_n_0 ),
        .I5(a[0]),
        .O(\spo[6]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5A0C0000E6B10000)) 
    \spo[6]_INST_0_i_20 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[6]_INST_0_i_16_n_0 ),
        .I5(a[2]),
        .O(\spo[6]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \spo[6]_INST_0_i_21 
       (.I0(a[1]),
        .I1(a[10]),
        .I2(a[11]),
        .I3(a[12]),
        .I4(a[13]),
        .I5(a[2]),
        .O(\spo[6]_INST_0_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h1A004100)) 
    \spo[6]_INST_0_i_22 
       (.I0(a[6]),
        .I1(a[5]),
        .I2(a[2]),
        .I3(\spo[6]_INST_0_i_16_n_0 ),
        .I4(a[1]),
        .O(\spo[6]_INST_0_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h80000F00)) 
    \spo[6]_INST_0_i_23 
       (.I0(a[5]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(\spo[6]_INST_0_i_16_n_0 ),
        .I4(a[2]),
        .O(\spo[6]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h70C800001DA60000)) 
    \spo[6]_INST_0_i_24 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[6]_INST_0_i_16_n_0 ),
        .I5(a[2]),
        .O(\spo[6]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h4638000081380000)) 
    \spo[6]_INST_0_i_25 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[6]_INST_0_i_16_n_0 ),
        .I5(a[2]),
        .O(\spo[6]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h0000040010002500)) 
    \spo[6]_INST_0_i_26 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(\spo[6]_INST_0_i_16_n_0 ),
        .I4(a[2]),
        .I5(a[5]),
        .O(\spo[6]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h25DB0000254A0000)) 
    \spo[6]_INST_0_i_27 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(a[5]),
        .I4(\spo[6]_INST_0_i_16_n_0 ),
        .I5(a[1]),
        .O(\spo[6]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h0F008F8F0F008080)) 
    \spo[6]_INST_0_i_3 
       (.I0(a[0]),
        .I1(\spo[6]_INST_0_i_11_n_0 ),
        .I2(a[9]),
        .I3(\spo[6]_INST_0_i_12_n_0 ),
        .I4(a[8]),
        .I5(\spo[6]_INST_0_i_13_n_0 ),
        .O(\spo[6]_INST_0_i_3_n_0 ));
  MUXF7 \spo[6]_INST_0_i_4 
       (.I0(\spo[6]_INST_0_i_14_n_0 ),
        .I1(\spo[6]_INST_0_i_15_n_0 ),
        .O(\spo[6]_INST_0_i_4_n_0 ),
        .S(a[9]));
  LUT6 #(
    .INIT(64'h1486000017B50000)) 
    \spo[6]_INST_0_i_5 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(a[5]),
        .I4(\spo[6]_INST_0_i_16_n_0 ),
        .I5(a[1]),
        .O(\spo[6]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hE2CD000037520000)) 
    \spo[6]_INST_0_i_6 
       (.I0(a[7]),
        .I1(a[2]),
        .I2(a[6]),
        .I3(a[5]),
        .I4(\spo[6]_INST_0_i_16_n_0 ),
        .I5(a[1]),
        .O(\spo[6]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h88888B8888888888)) 
    \spo[6]_INST_0_i_7 
       (.I0(\spo[6]_INST_0_i_17_n_0 ),
        .I1(a[0]),
        .I2(a[6]),
        .I3(\spo[6]_INST_0_i_18_n_0 ),
        .I4(a[5]),
        .I5(a[7]),
        .O(\spo[6]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hA77A000048130000)) 
    \spo[6]_INST_0_i_8 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[2]),
        .I4(\spo[6]_INST_0_i_16_n_0 ),
        .I5(a[1]),
        .O(\spo[6]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h8888888888888B88)) 
    \spo[6]_INST_0_i_9 
       (.I0(\spo[6]_INST_0_i_19_n_0 ),
        .I1(a[0]),
        .I2(a[6]),
        .I3(\spo[25]_INST_0_i_26_n_0 ),
        .I4(a[5]),
        .I5(a[7]),
        .O(\spo[6]_INST_0_i_9_n_0 ));
  MUXF8 \spo[8]_INST_0 
       (.I0(\spo[8]_INST_0_i_1_n_0 ),
        .I1(\spo[8]_INST_0_i_2_n_0 ),
        .O(spo[7]),
        .S(a[3]));
  MUXF7 \spo[8]_INST_0_i_1 
       (.I0(\spo[8]_INST_0_i_3_n_0 ),
        .I1(\spo[8]_INST_0_i_4_n_0 ),
        .O(\spo[8]_INST_0_i_1_n_0 ),
        .S(a[4]));
  MUXF7 \spo[8]_INST_0_i_10 
       (.I0(\spo[8]_INST_0_i_25_n_0 ),
        .I1(\spo[8]_INST_0_i_26_n_0 ),
        .O(\spo[8]_INST_0_i_10_n_0 ),
        .S(a[0]));
  MUXF7 \spo[8]_INST_0_i_11 
       (.I0(\spo[8]_INST_0_i_27_n_0 ),
        .I1(\spo[8]_INST_0_i_28_n_0 ),
        .O(\spo[8]_INST_0_i_11_n_0 ),
        .S(a[0]));
  MUXF7 \spo[8]_INST_0_i_12 
       (.I0(\spo[8]_INST_0_i_29_n_0 ),
        .I1(\spo[8]_INST_0_i_30_n_0 ),
        .O(\spo[8]_INST_0_i_12_n_0 ),
        .S(a[0]));
  MUXF7 \spo[8]_INST_0_i_13 
       (.I0(\spo[8]_INST_0_i_31_n_0 ),
        .I1(\spo[8]_INST_0_i_32_n_0 ),
        .O(\spo[8]_INST_0_i_13_n_0 ),
        .S(a[0]));
  MUXF7 \spo[8]_INST_0_i_14 
       (.I0(\spo[8]_INST_0_i_33_n_0 ),
        .I1(\spo[8]_INST_0_i_34_n_0 ),
        .O(\spo[8]_INST_0_i_14_n_0 ),
        .S(a[0]));
  MUXF7 \spo[8]_INST_0_i_15 
       (.I0(\spo[8]_INST_0_i_35_n_0 ),
        .I1(\spo[8]_INST_0_i_36_n_0 ),
        .O(\spo[8]_INST_0_i_15_n_0 ),
        .S(a[0]));
  MUXF7 \spo[8]_INST_0_i_16 
       (.I0(\spo[8]_INST_0_i_37_n_0 ),
        .I1(\spo[8]_INST_0_i_38_n_0 ),
        .O(\spo[8]_INST_0_i_16_n_0 ),
        .S(a[0]));
  MUXF7 \spo[8]_INST_0_i_17 
       (.I0(\spo[8]_INST_0_i_39_n_0 ),
        .I1(\spo[8]_INST_0_i_40_n_0 ),
        .O(\spo[8]_INST_0_i_17_n_0 ),
        .S(a[0]));
  MUXF7 \spo[8]_INST_0_i_18 
       (.I0(\spo[8]_INST_0_i_41_n_0 ),
        .I1(\spo[8]_INST_0_i_42_n_0 ),
        .O(\spo[8]_INST_0_i_18_n_0 ),
        .S(a[0]));
  LUT6 #(
    .INIT(64'h0A80000081580000)) 
    \spo[8]_INST_0_i_19 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[2]),
        .O(\spo[8]_INST_0_i_19_n_0 ));
  MUXF7 \spo[8]_INST_0_i_2 
       (.I0(\spo[8]_INST_0_i_5_n_0 ),
        .I1(\spo[8]_INST_0_i_6_n_0 ),
        .O(\spo[8]_INST_0_i_2_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h524E000080630000)) 
    \spo[8]_INST_0_i_20 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[2]),
        .O(\spo[8]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h4784000038000000)) 
    \spo[8]_INST_0_i_21 
       (.I0(a[6]),
        .I1(a[7]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[2]),
        .O(\spo[8]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h2C700000A0590000)) 
    \spo[8]_INST_0_i_22 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[2]),
        .O(\spo[8]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h0C00400014006A00)) 
    \spo[8]_INST_0_i_23 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[29]_INST_0_i_36_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[8]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h10D50000940A0000)) 
    \spo[8]_INST_0_i_24 
       (.I0(a[7]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[6]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[5]),
        .O(\spo[8]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h0144000008180000)) 
    \spo[8]_INST_0_i_25 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[2]),
        .O(\spo[8]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h72D10000EDCA0000)) 
    \spo[8]_INST_0_i_26 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[2]),
        .O(\spo[8]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hF211000046000000)) 
    \spo[8]_INST_0_i_27 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[2]),
        .O(\spo[8]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hB418000011C20000)) 
    \spo[8]_INST_0_i_28 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[2]),
        .O(\spo[8]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h047500000A020000)) 
    \spo[8]_INST_0_i_29 
       (.I0(a[7]),
        .I1(a[1]),
        .I2(a[5]),
        .I3(a[6]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[2]),
        .O(\spo[8]_INST_0_i_29_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[8]_INST_0_i_3 
       (.I0(\spo[8]_INST_0_i_7_n_0 ),
        .I1(a[9]),
        .I2(\spo[8]_INST_0_i_8_n_0 ),
        .I3(a[8]),
        .I4(\spo[8]_INST_0_i_9_n_0 ),
        .O(\spo[8]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA4008A008600A900)) 
    \spo[8]_INST_0_i_30 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[29]_INST_0_i_36_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[8]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h20750000A9C20000)) 
    \spo[8]_INST_0_i_31 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[2]),
        .O(\spo[8]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h899300000F220000)) 
    \spo[8]_INST_0_i_32 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[2]),
        .O(\spo[8]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h94700000408B0000)) 
    \spo[8]_INST_0_i_33 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[2]),
        .O(\spo[8]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h3171000072040000)) 
    \spo[8]_INST_0_i_34 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[2]),
        .O(\spo[8]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h86002900AC000000)) 
    \spo[8]_INST_0_i_35 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[29]_INST_0_i_36_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[8]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h9035000098900000)) 
    \spo[8]_INST_0_i_36 
       (.I0(a[7]),
        .I1(a[2]),
        .I2(a[6]),
        .I3(a[1]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[5]),
        .O(\spo[8]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h6431000008100000)) 
    \spo[8]_INST_0_i_37 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[2]),
        .O(\spo[8]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h08080000308F0000)) 
    \spo[8]_INST_0_i_38 
       (.I0(a[1]),
        .I1(a[7]),
        .I2(a[6]),
        .I3(a[2]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[5]),
        .O(\spo[8]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h2A12000008A50000)) 
    \spo[8]_INST_0_i_39 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[2]),
        .O(\spo[8]_INST_0_i_39_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[8]_INST_0_i_4 
       (.I0(\spo[8]_INST_0_i_10_n_0 ),
        .I1(a[9]),
        .I2(\spo[8]_INST_0_i_11_n_0 ),
        .I3(a[8]),
        .I4(\spo[8]_INST_0_i_12_n_0 ),
        .O(\spo[8]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF314000068390000)) 
    \spo[8]_INST_0_i_40 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[2]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[1]),
        .O(\spo[8]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h22009000E0008800)) 
    \spo[8]_INST_0_i_41 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[29]_INST_0_i_36_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[8]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h638D0000BD220000)) 
    \spo[8]_INST_0_i_42 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[2]),
        .I4(\spo[29]_INST_0_i_36_n_0 ),
        .I5(a[1]),
        .O(\spo[8]_INST_0_i_42_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[8]_INST_0_i_5 
       (.I0(\spo[8]_INST_0_i_13_n_0 ),
        .I1(a[9]),
        .I2(\spo[8]_INST_0_i_14_n_0 ),
        .I3(a[8]),
        .I4(\spo[8]_INST_0_i_15_n_0 ),
        .O(\spo[8]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[8]_INST_0_i_6 
       (.I0(\spo[8]_INST_0_i_16_n_0 ),
        .I1(a[9]),
        .I2(\spo[8]_INST_0_i_17_n_0 ),
        .I3(a[8]),
        .I4(\spo[8]_INST_0_i_18_n_0 ),
        .O(\spo[8]_INST_0_i_6_n_0 ));
  MUXF7 \spo[8]_INST_0_i_7 
       (.I0(\spo[8]_INST_0_i_19_n_0 ),
        .I1(\spo[8]_INST_0_i_20_n_0 ),
        .O(\spo[8]_INST_0_i_7_n_0 ),
        .S(a[0]));
  MUXF7 \spo[8]_INST_0_i_8 
       (.I0(\spo[8]_INST_0_i_21_n_0 ),
        .I1(\spo[8]_INST_0_i_22_n_0 ),
        .O(\spo[8]_INST_0_i_8_n_0 ),
        .S(a[0]));
  MUXF7 \spo[8]_INST_0_i_9 
       (.I0(\spo[8]_INST_0_i_23_n_0 ),
        .I1(\spo[8]_INST_0_i_24_n_0 ),
        .O(\spo[8]_INST_0_i_9_n_0 ),
        .S(a[0]));
  MUXF8 \spo[9]_INST_0 
       (.I0(\spo[9]_INST_0_i_1_n_0 ),
        .I1(\spo[9]_INST_0_i_2_n_0 ),
        .O(spo[8]),
        .S(a[3]));
  MUXF7 \spo[9]_INST_0_i_1 
       (.I0(\spo[9]_INST_0_i_3_n_0 ),
        .I1(\spo[9]_INST_0_i_4_n_0 ),
        .O(\spo[9]_INST_0_i_1_n_0 ),
        .S(a[4]));
  MUXF7 \spo[9]_INST_0_i_10 
       (.I0(\spo[9]_INST_0_i_24_n_0 ),
        .I1(\spo[9]_INST_0_i_25_n_0 ),
        .O(\spo[9]_INST_0_i_10_n_0 ),
        .S(a[0]));
  MUXF7 \spo[9]_INST_0_i_11 
       (.I0(\spo[9]_INST_0_i_26_n_0 ),
        .I1(\spo[9]_INST_0_i_27_n_0 ),
        .O(\spo[9]_INST_0_i_11_n_0 ),
        .S(a[0]));
  MUXF7 \spo[9]_INST_0_i_12 
       (.I0(\spo[9]_INST_0_i_28_n_0 ),
        .I1(\spo[9]_INST_0_i_29_n_0 ),
        .O(\spo[9]_INST_0_i_12_n_0 ),
        .S(a[0]));
  MUXF7 \spo[9]_INST_0_i_13 
       (.I0(\spo[9]_INST_0_i_30_n_0 ),
        .I1(\spo[9]_INST_0_i_31_n_0 ),
        .O(\spo[9]_INST_0_i_13_n_0 ),
        .S(a[0]));
  LUT6 #(
    .INIT(64'hB8BBB88888888888)) 
    \spo[9]_INST_0_i_14 
       (.I0(\spo[9]_INST_0_i_32_n_0 ),
        .I1(a[0]),
        .I2(\spo[25]_INST_0_i_30_n_0 ),
        .I3(a[7]),
        .I4(\spo[5]_INST_0_i_12_n_0 ),
        .I5(a[6]),
        .O(\spo[9]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \spo[9]_INST_0_i_15 
       (.I0(a[6]),
        .I1(\spo[3]_INST_0_i_25_n_0 ),
        .I2(a[5]),
        .I3(a[7]),
        .I4(a[0]),
        .I5(\spo[9]_INST_0_i_33_n_0 ),
        .O(\spo[9]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h410000001A020000)) 
    \spo[9]_INST_0_i_16 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[6]_INST_0_i_16_n_0 ),
        .I5(a[2]),
        .O(\spo[9]_INST_0_i_16_n_0 ));
  MUXF8 \spo[9]_INST_0_i_17 
       (.I0(\spo[9]_INST_0_i_34_n_0 ),
        .I1(\spo[9]_INST_0_i_35_n_0 ),
        .O(\spo[9]_INST_0_i_17_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'h4200270020000A00)) 
    \spo[9]_INST_0_i_18 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[6]_INST_0_i_16_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[9]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h4000560000006600)) 
    \spo[9]_INST_0_i_19 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[6]_INST_0_i_16_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[9]_INST_0_i_19_n_0 ));
  MUXF7 \spo[9]_INST_0_i_2 
       (.I0(\spo[9]_INST_0_i_5_n_0 ),
        .I1(\spo[9]_INST_0_i_6_n_0 ),
        .O(\spo[9]_INST_0_i_2_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h10110000000C0000)) 
    \spo[9]_INST_0_i_20 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(a[5]),
        .I4(\spo[6]_INST_0_i_16_n_0 ),
        .I5(a[1]),
        .O(\spo[9]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h8600540040002800)) 
    \spo[9]_INST_0_i_21 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[6]_INST_0_i_16_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[9]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h4400000055001800)) 
    \spo[9]_INST_0_i_22 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(\spo[6]_INST_0_i_16_n_0 ),
        .I4(a[2]),
        .I5(a[5]),
        .O(\spo[9]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h3810000015120000)) 
    \spo[9]_INST_0_i_23 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[6]_INST_0_i_16_n_0 ),
        .I5(a[2]),
        .O(\spo[9]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h0000202010102040)) 
    \spo[9]_INST_0_i_24 
       (.I0(a[7]),
        .I1(a[2]),
        .I2(\spo[6]_INST_0_i_16_n_0 ),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[6]),
        .O(\spo[9]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h2E000000A99A0000)) 
    \spo[9]_INST_0_i_25 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[6]_INST_0_i_16_n_0 ),
        .I5(a[2]),
        .O(\spo[9]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h0200290000000800)) 
    \spo[9]_INST_0_i_26 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(\spo[6]_INST_0_i_16_n_0 ),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[9]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h2100E8000000AC00)) 
    \spo[9]_INST_0_i_27 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[6]_INST_0_i_16_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[9]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h5613000000800000)) 
    \spo[9]_INST_0_i_28 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(\spo[6]_INST_0_i_16_n_0 ),
        .I5(a[2]),
        .O(\spo[9]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h0400080006000100)) 
    \spo[9]_INST_0_i_29 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[6]_INST_0_i_16_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[9]_INST_0_i_29_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[9]_INST_0_i_3 
       (.I0(\spo[9]_INST_0_i_7_n_0 ),
        .I1(a[9]),
        .I2(\spo[9]_INST_0_i_8_n_0 ),
        .I3(a[8]),
        .I4(\spo[9]_INST_0_i_9_n_0 ),
        .O(\spo[9]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h1400080044000000)) 
    \spo[9]_INST_0_i_30 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[6]_INST_0_i_16_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[9]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h991500000D440000)) 
    \spo[9]_INST_0_i_31 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(\spo[6]_INST_0_i_16_n_0 ),
        .I5(a[2]),
        .O(\spo[9]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h1815000010040000)) 
    \spo[9]_INST_0_i_32 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(\spo[6]_INST_0_i_16_n_0 ),
        .I5(a[2]),
        .O(\spo[9]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h8400380048008000)) 
    \spo[9]_INST_0_i_33 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[2]),
        .I3(\spo[6]_INST_0_i_16_n_0 ),
        .I4(a[1]),
        .I5(a[6]),
        .O(\spo[9]_INST_0_i_33_n_0 ));
  MUXF7 \spo[9]_INST_0_i_34 
       (.I0(\spo[9]_INST_0_i_36_n_0 ),
        .I1(\spo[9]_INST_0_i_37_n_0 ),
        .O(\spo[9]_INST_0_i_34_n_0 ),
        .S(a[0]));
  MUXF7 \spo[9]_INST_0_i_35 
       (.I0(\spo[9]_INST_0_i_38_n_0 ),
        .I1(\spo[9]_INST_0_i_39_n_0 ),
        .O(\spo[9]_INST_0_i_35_n_0 ),
        .S(a[0]));
  LUT6 #(
    .INIT(64'h2010000008350000)) 
    \spo[9]_INST_0_i_36 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[6]),
        .I3(a[1]),
        .I4(\spo[6]_INST_0_i_16_n_0 ),
        .I5(a[2]),
        .O(\spo[9]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h00000000008880C8)) 
    \spo[9]_INST_0_i_37 
       (.I0(a[1]),
        .I1(\spo[6]_INST_0_i_16_n_0 ),
        .I2(a[2]),
        .I3(a[5]),
        .I4(a[6]),
        .I5(a[7]),
        .O(\spo[9]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h0008084800000000)) 
    \spo[9]_INST_0_i_38 
       (.I0(a[2]),
        .I1(\spo[6]_INST_0_i_16_n_0 ),
        .I2(a[5]),
        .I3(a[1]),
        .I4(a[6]),
        .I5(a[7]),
        .O(\spo[9]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h4400220024009800)) 
    \spo[9]_INST_0_i_39 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(\spo[6]_INST_0_i_16_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[9]_INST_0_i_39_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[9]_INST_0_i_4 
       (.I0(\spo[9]_INST_0_i_10_n_0 ),
        .I1(a[9]),
        .I2(\spo[9]_INST_0_i_11_n_0 ),
        .I3(a[8]),
        .I4(\spo[9]_INST_0_i_12_n_0 ),
        .O(\spo[9]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[9]_INST_0_i_5 
       (.I0(\spo[9]_INST_0_i_13_n_0 ),
        .I1(a[9]),
        .I2(\spo[9]_INST_0_i_14_n_0 ),
        .I3(a[8]),
        .I4(\spo[9]_INST_0_i_15_n_0 ),
        .O(\spo[9]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \spo[9]_INST_0_i_6 
       (.I0(\spo[18]_INST_0_i_10_n_0 ),
        .I1(a[0]),
        .I2(\spo[9]_INST_0_i_16_n_0 ),
        .I3(a[8]),
        .I4(a[9]),
        .I5(\spo[9]_INST_0_i_17_n_0 ),
        .O(\spo[9]_INST_0_i_6_n_0 ));
  MUXF7 \spo[9]_INST_0_i_7 
       (.I0(\spo[9]_INST_0_i_18_n_0 ),
        .I1(\spo[9]_INST_0_i_19_n_0 ),
        .O(\spo[9]_INST_0_i_7_n_0 ),
        .S(a[0]));
  MUXF7 \spo[9]_INST_0_i_8 
       (.I0(\spo[9]_INST_0_i_20_n_0 ),
        .I1(\spo[9]_INST_0_i_21_n_0 ),
        .O(\spo[9]_INST_0_i_8_n_0 ),
        .S(a[0]));
  MUXF7 \spo[9]_INST_0_i_9 
       (.I0(\spo[9]_INST_0_i_22_n_0 ),
        .I1(\spo[9]_INST_0_i_23_n_0 ),
        .O(\spo[9]_INST_0_i_9_n_0 ),
        .S(a[0]));
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
