`include "defines.v"

module Loongarch32_Lite (
    input wire cpu_clk_50M,
    input wire cpu_rst_n,

    // inst_rom
    output wire [`INST_ADDR_BUS] iaddr,
    input  wire [     `INST_BUS] inst,

    // data_ram ???
    output wire data_sram_en,
    output wire [3:0] data_sram_we,
    output wire [`REG_BUS] data_sram_addr,
    output wire [`REG_BUS] data_sram_wdata,
    input wire [`REG_BUS] data_sram_rdata,

    output wire [`INST_ADDR_BUS]  debug_wb_pc,       // ??????????PC?????????????????????
    output wire debug_wb_rf_wen,  // ??????????PC?????????????????????
    output wire [`REG_ADDR_BUS  ] debug_wb_rf_wnum,  // ??????????PC?????????????????????
    output wire [`WORD_BUS      ] debug_wb_rf_wdata  // ??????????PC?????????????????????
);


    wire [`WORD_BUS] pc;

    // ????IF/ID???????????ID???????
    wire [`WORD_BUS] id_pc_i;
    wire [`INST_BUS] id_inst_i;

    // ????ID???????ü????Regfile???????;
    wire [`REG_ADDR_BUS] ra1;
    wire [`REG_BUS] rd1;
    wire [`REG_ADDR_BUS] ra2;
    wire [`REG_BUS] rd2;

    // ????ID/EXE???????н??EXE???????
    wire [`ALUOP_BUS] id_aluop_o;
    wire [`ALUTYPE_BUS] id_alutype_o;
    wire [`REG_BUS] id_src1_o;
    wire [`REG_BUS] id_src2_o;
    wire id_wreg_o;
    wire [`REG_ADDR_BUS] id_wa_o;
    wire [`ALUOP_BUS] exe_aluop_i;
    wire [`ALUTYPE_BUS] exe_alutype_i;
    wire [`REG_BUS] exe_src1_i;
    wire [`REG_BUS] exe_src2_i;
    wire exe_wreg_i;
    wire [`REG_ADDR_BUS] exe_wa_i;

    // rkd_value 信号连线
    wire [`REG_BUS] id_rkd_value_o;  // ID阶段输出
    wire [`REG_BUS] exe_rkd_value_i;  // EXE阶段输入
    wire [`REG_BUS] exe_rkd_value_o;  // EXE阶段输出

    // ????EXE/MEM?????????MEM???????
    wire [`ALUOP_BUS] exe_aluop_o;
    wire exe_wreg_o;
    wire [`REG_ADDR_BUS] exe_wa_o;
    wire [`REG_BUS] exe_wd_o;
    wire [`ALUOP_BUS] mem_aluop_i;
    wire mem_wreg_i;
    wire [`REG_ADDR_BUS] mem_wa_i;
    wire [`REG_BUS] mem_wd_i;

    // ????MEM/WB?????д????WB???????
    wire mem_wreg_o;
    wire [`REG_ADDR_BUS] mem_wa_o;
    wire [`REG_BUS] mem_dreg_o;
    wire wb_wreg_i;
    wire [`REG_ADDR_BUS] wb_wa_i;
    wire [`REG_BUS] wb_dreg_i;

    // ????WB???????ü????Regfile???????
    wire wb_wreg_o;
    wire [`REG_ADDR_BUS] wb_wa_o;
    wire [`REG_BUS] wb_wd_o;

    wire [`REG_BUS] mem_rkd_value_i;

    // 定义跳转相关的连接线
    wire branch_taken;
    wire [31:0] branch_target;

    wire [`INST_ADDR_BUS] if_debug_wb_pc;  // ??????????????????
    wire [`INST_ADDR_BUS] id_debug_wb_pc_i;  // ??????????????????
    wire [`INST_ADDR_BUS] id_debug_wb_pc_o;  // ??????????????????
    wire [`INST_ADDR_BUS] exe_debug_wb_pc_i;  // ??????????????????
    wire [`INST_ADDR_BUS] exe_debug_wb_pc_o;  // ??????????????????
    wire [`INST_ADDR_BUS] mem_debug_wb_pc_i;  // ??????????????????
    wire [`INST_ADDR_BUS] mem_debug_wb_pc_o;  // ??????????????????
    wire [`INST_ADDR_BUS] wb_debug_wb_pc_i;  // ??????????????????

    if_stage if_stage0 (
        .cpu_clk_50M(cpu_clk_50M),
        .cpu_rst_n(cpu_rst_n),
        .pc(pc),
        .iaddr(iaddr),
        .branch_taken_i(branch_taken),
        .branch_target_i(branch_target),
        .debug_wb_pc(if_debug_wb_pc)
    );

    ifid_reg ifid_reg0 (
        .cpu_clk_50M(cpu_clk_50M),
        .cpu_rst_n(cpu_rst_n),
        .flush(branch_taken),
        .inst(inst),
        .if_pc(pc),
        .if_debug_wb_pc(if_debug_wb_pc),
        .id_inst(id_inst_i),
        .id_pc(id_pc_i),
        .id_debug_wb_pc(id_debug_wb_pc_i)
    );

    id_stage id_stage0 (
        .id_pc_i(id_pc_i),
        .id_inst_i(id_inst_i),
        .id_debug_wb_pc(id_debug_wb_pc_i),
        .rd1(rd1),
        .rd2(rd2),
        .ra1(ra1),
        .ra2(ra2),
        .id_aluop_o(id_aluop_o),
        .id_alutype_o(id_alutype_o),
        .id_src1_o(id_src1_o),
        .id_src2_o(id_src2_o),
        .id_wa_o(id_wa_o),
        .id_wreg_o(id_wreg_o),
        .id_rkd_value_o(id_rkd_value_o),
        .debug_wb_pc(id_debug_wb_pc_o)
    );

    regfile regfile0 (
        .cpu_clk_50M(cpu_clk_50M),
        .cpu_rst_n(cpu_rst_n),
        .we(wb_wreg_o),
        .wa(wb_wa_o),
        .wd(wb_wd_o),
        .ra1(ra1),
        .rd1(rd1),
        .ra2(ra2),
        .rd2(rd2)
    );

    idexe_reg idexe_reg0 (
        .cpu_clk_50M(cpu_clk_50M),
        .cpu_rst_n(cpu_rst_n),
        .flush(branch_taken),
        .id_alutype(id_alutype_o),
        .id_aluop(id_aluop_o),
        .id_src1(id_src1_o),
        .id_src2(id_src2_o),
        .id_wa(id_wa_o),
        .id_wreg(id_wreg_o),
        .id_rkd_value(id_rkd_value_o),
        .exe_rkd_value(exe_rkd_value_i),
        .id_debug_wb_pc(id_debug_wb_pc_o),
        .exe_alutype(exe_alutype_i),
        .exe_aluop(exe_aluop_i),
        .exe_src1(exe_src1_i),
        .exe_src2(exe_src2_i),
        .exe_wa(exe_wa_i),
        .exe_wreg(exe_wreg_i),
        .exe_debug_wb_pc(exe_debug_wb_pc_i)
    );

    exe_stage exe_stage0 (
        .exe_alutype_i(exe_alutype_i),
        .exe_aluop_i(exe_aluop_i),
        .exe_src1_i(exe_src1_i),
        .exe_src2_i(exe_src2_i),
        .exe_wa_i(exe_wa_i),
        .exe_wreg_i(exe_wreg_i),
        .exe_rkd_value_i(exe_rkd_value_i),
        .exe_rkd_value_o(exe_rkd_value_o),
        .exe_branch_taken_o(branch_taken),
        .exe_branch_target_o(branch_target),
        .exe_debug_wb_pc(exe_debug_wb_pc_i),
        .exe_aluop_o(exe_aluop_o),
        .exe_wa_o(exe_wa_o),
        .exe_wreg_o(exe_wreg_o),
        .exe_wd_o(exe_wd_o),
        .debug_wb_pc(exe_debug_wb_pc_o)
    );

    exemem_reg exemem_reg0 (
        .cpu_clk_50M(cpu_clk_50M),
        .cpu_rst_n(cpu_rst_n),
        .exe_aluop(exe_aluop_o),
        .exe_wa(exe_wa_o),
        .exe_wreg(exe_wreg_o),
        .exe_wd(exe_wd_o),
        .exe_rkd_value(exe_rkd_value_o),
        .exe_debug_wb_pc(exe_debug_wb_pc_o),
        .mem_aluop(mem_aluop_i),
        .mem_wa(mem_wa_i),
        .mem_wreg(mem_wreg_i),
        .mem_wd(mem_wd_i),
        .mem_rkd_value(mem_rkd_value_i),
        .mem_debug_wb_pc(mem_debug_wb_pc_i)
    );

    mem_stage mem_stage0 (
        .mem_aluop_i(mem_aluop_i),
        .mem_wa_i(mem_wa_i),
        .mem_wreg_i(mem_wreg_i),
        .mem_wd_i(mem_wd_i),
        .mem_rkd_value_i(mem_rkd_value_i),
        .mem_debug_wb_pc(mem_debug_wb_pc_i),

        // ???? SRAM ???
        .data_sram_en(data_sram_en),
        .data_sram_we(data_sram_we),
        .data_sram_addr(data_sram_addr),
        .data_sram_wdata(data_sram_wdata),
        .data_sram_rdata(data_sram_rdata),  // ????

        .mem_wa_o(mem_wa_o),
        .mem_wreg_o(mem_wreg_o),
        .mem_dreg_o(mem_dreg_o),
        .debug_wb_pc(mem_debug_wb_pc_o)
    );

    memwb_reg memwb_reg0 (
        .cpu_clk_50M(cpu_clk_50M),
        .cpu_rst_n(cpu_rst_n),
        .mem_wa(mem_wa_o),
        .mem_wreg(mem_wreg_o),
        .mem_dreg(mem_dreg_o),
        .mem_debug_wb_pc(mem_debug_wb_pc_o),
        .wb_wa(wb_wa_i),
        .wb_wreg(wb_wreg_i),
        .wb_dreg(wb_dreg_i),
        .wb_debug_wb_pc(wb_debug_wb_pc_i)
    );

    wb_stage wb_stage0 (
        .wb_wa_i(wb_wa_i),
        .wb_wreg_i(wb_wreg_i),
        .wb_dreg_i(wb_dreg_i),
        .wb_debug_wb_pc(wb_debug_wb_pc_i),
        .wb_wa_o(wb_wa_o),
        .wb_wreg_o(wb_wreg_o),
        .wb_wd_o(wb_wd_o),
        .debug_wb_pc(debug_wb_pc),
        .debug_wb_rf_wen(debug_wb_rf_wen),
        .debug_wb_rf_wnum(debug_wb_rf_wnum),
        .debug_wb_rf_wdata(debug_wb_rf_wdata)
    );

endmodule
