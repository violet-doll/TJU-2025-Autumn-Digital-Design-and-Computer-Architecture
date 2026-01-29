`include "defines.v"

// 处理器核心
module Loongarch32_Lite (
    input wire cpu_clk_50M,
    input wire cpu_rst_n,

    // 指令接口
    output wire [`INST_ADDR_BUS] iaddr,
    input  wire [     `INST_BUS] inst,

    // 数据接口
    output wire data_sram_en,
    output wire [3:0] data_sram_we,
    output wire [`REG_BUS] data_sram_addr,
    output wire [`REG_BUS] data_sram_wdata,
    input wire [`REG_BUS] data_sram_rdata,

    // 调试
    output wire [`INST_ADDR_BUS] debug_wb_pc,
    output wire                  debug_wb_rf_wen,
    output wire [ `REG_ADDR_BUS] debug_wb_rf_wnum,
    output wire [     `WORD_BUS] debug_wb_rf_wdata
);

    // 流水线信号
    wire [`WORD_BUS] pc;

    // 取指/译码
    wire [`WORD_BUS] id_pc_i;
    wire [`INST_BUS] id_inst_i;
    wire if_pred_taken;
    wire [`WORD_BUS] if_pred_target;
    wire id_pred_taken;
    wire [`WORD_BUS] id_pred_target;


    // 寄存器读
    wire [`REG_ADDR_BUS] ra1;
    wire [`REG_BUS] rd1;
    wire [`REG_ADDR_BUS] ra2;
    wire [`REG_BUS] rd2;


    // 分支
    wire id_branch_taken;
    wire [31:0] id_branch_target;
    wire id_flush;
    wire [`WORD_BUS] id_redirect_pc;


    // 分支预测更新
    wire bp_update_en;
    wire [`INST_ADDR_BUS] bp_update_pc;
    wire bp_update_taken;
    wire [`INST_ADDR_BUS] bp_update_target;


    // 译码/执行
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


    // 存储数据
    wire [`REG_BUS] id_rkd_value_o;
    wire [`REG_BUS] exe_rkd_value_i;
    wire [`REG_BUS] exe_rkd_value_o;


    // 执行/访存
    wire [`ALUOP_BUS] exe_aluop_o;
    wire exe_wreg_o;
    wire [`REG_ADDR_BUS] exe_wa_o;
    wire [`REG_BUS] exe_wd_o;
    wire [`ALUOP_BUS] mem_aluop_i;
    wire mem_wreg_i;
    wire [`REG_ADDR_BUS] mem_wa_i;
    wire [`REG_BUS] mem_wd_i;


    // 访存/写回
    wire mem_wreg_o;
    wire [`REG_ADDR_BUS] mem_wa_o;
    wire [`REG_BUS] mem_dreg_o;
    wire wb_wreg_i;
    wire [`REG_ADDR_BUS] wb_wa_i;
    wire [`REG_BUS] wb_dreg_i;


    // 写回
    wire wb_wreg_o;
    wire [`REG_ADDR_BUS] wb_wa_o;
    wire [`REG_BUS] wb_wd_o;

    wire [`REG_BUS] mem_rkd_value_i;


    // 控制
    wire [5:0] stall;
    wire stallreq_from_id;
    wire stallreq_from_exe;


    // 前推
    wire [`REG_ADDR_BUS] exe_ra1_i;
    wire [`REG_ADDR_BUS] exe_ra2_i;
    wire [1:0] forward_src1;
    wire [1:0] forward_src2;
    wire [`REG_BUS] forward_data_mem;
    wire [`REG_BUS] forward_data_wb;


    // 加载相关冒险
    wire exe_is_load = (exe_aluop_i == `LoongArch32_LD_B) || (exe_aluop_i == `LoongArch32_LD_W);
    wire id_uses_ra1 = (id_aluop_o != `LoongArch32_LU12I_W) && (id_aluop_o != `LoongArch32_PCADDU12I);
    wire conflict_ra1 = id_uses_ra1 && (ra1 == exe_wa_i) && (ra1 != 5'd0);
    wire conflict_ra2 = (ra2 == exe_wa_i) && (ra2 != 5'd0);
    assign stallreq_from_id = exe_is_load && (conflict_ra1 || conflict_ra2);

    // 指令存储器冲突
    wire stallreq_from_mem = data_sram_en & (data_sram_addr[31:16] == 16'h8000);

    // 调试地址
    wire [`INST_ADDR_BUS] if_debug_wb_pc;
    wire [`INST_ADDR_BUS] id_debug_wb_pc_i;
    wire [`INST_ADDR_BUS] id_debug_wb_pc_o;
    wire [`INST_ADDR_BUS] exe_debug_wb_pc_i;
    wire [`INST_ADDR_BUS] exe_debug_wb_pc_o;
    wire [`INST_ADDR_BUS] mem_debug_wb_pc_i;
    wire [`INST_ADDR_BUS] mem_debug_wb_pc_o;
    wire [`INST_ADDR_BUS] wb_debug_wb_pc_i;

    // 控制模块
    ctrl ctrl0 (
        .cpu_rst_n(cpu_rst_n),
        .stallreq_from_id(stallreq_from_id),
        .stallreq_from_exe(stallreq_from_exe),
        .stallreq_from_mem(stallreq_from_mem),
        .stall(stall)
    );

    // 取指
    wire bp_update_is_call;
    wire bp_update_is_ret;

    if_stage if_stage0 (
        .cpu_clk_50M        (cpu_clk_50M),
        .cpu_rst_n          (cpu_rst_n),
        .stall              (stall),
        .pc                 (pc),
        .iaddr              (iaddr),
        .branch_taken_i     (id_flush),
        .branch_target_i    (id_redirect_pc),
        .bp_update_en_i     (bp_update_en),
        .bp_update_pc_i     (bp_update_pc),
        .bp_update_taken_i  (bp_update_taken),
        .bp_update_target_i (bp_update_target),
        .debug_wb_pc        (if_debug_wb_pc),
        .if_pred_taken      (if_pred_taken),
        .if_pred_target     (if_pred_target),
        .bp_update_is_call_i(bp_update_is_call),
        .bp_update_is_ret_i (bp_update_is_ret)
    );

    // 取指/译码
    ifid_reg ifid_reg0 (
        .cpu_clk_50M(cpu_clk_50M),
        .cpu_rst_n(cpu_rst_n),
        .stall(stall),
        .flush(id_flush),
        .inst(inst),
        .if_pc(pc),
        .if_debug_wb_pc(if_debug_wb_pc),
        .if_pred_taken(if_pred_taken),
        .if_pred_target(if_pred_target),
        .id_inst(id_inst_i),
        .id_pc(id_pc_i),
        .id_debug_wb_pc(id_debug_wb_pc_i),
        .id_pred_taken(id_pred_taken),
        .id_pred_target(id_pred_target)
    );

    // 译码
    id_stage id_stage0 (
        .id_pc_i            (id_pc_i),
        .id_inst_i          (id_inst_i),
        .id_debug_wb_pc     (id_debug_wb_pc_i),
        .id_pred_taken_i    (id_pred_taken),
        .id_pred_target_i   (id_pred_target),
        .id_hold_i          (stall[1]),
        .rd1                (rd1),
        .rd2                (rd2),
        .ra1                (ra1),
        .ra2                (ra2),
        .id_aluop_o         (id_aluop_o),
        .id_alutype_o       (id_alutype_o),
        .id_src1_o          (id_src1_o),
        .id_src2_o          (id_src2_o),
        .id_wa_o            (id_wa_o),
        .id_wreg_o          (id_wreg_o),
        .id_rkd_value_o     (id_rkd_value_o),
        // 分支前推
        .exe_wreg_i         (exe_wreg_i),
        .exe_wa_i           (exe_wa_i),
        .exe_wd_i           (exe_wd_o),
        .exe_aluop_i        (exe_aluop_i),
        .mem_wreg_i         (mem_wreg_i),
        .mem_wa_i           (mem_wa_i),
        .mem_wd_i           (mem_dreg_o),
        // 分支输出
        .id_branch_taken_o  (id_branch_taken),
        .id_branch_target_o (id_branch_target),
        // 预测校验
        .id_flush_o         (id_flush),
        .id_redirect_pc_o   (id_redirect_pc),
        // 分支预测更新
        .bp_update_en_o     (bp_update_en),
        .bp_update_pc_o     (bp_update_pc),
        .bp_update_taken_o  (bp_update_taken),
        .bp_update_target_o (bp_update_target),
        .bp_update_is_call_o(bp_update_is_call),
        .bp_update_is_ret_o (bp_update_is_ret),
        .debug_wb_pc        (id_debug_wb_pc_o)
    );

    // 寄存器堆
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

    // 译码/执行
    idexe_reg idexe_reg0 (
        .cpu_clk_50M(cpu_clk_50M),
        .cpu_rst_n(cpu_rst_n),
        .stall(stall),
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
        .id_ra1(ra1),
        .id_ra2(ra2),
        .exe_ra1(exe_ra1_i),
        .exe_ra2(exe_ra2_i),
        .exe_debug_wb_pc(exe_debug_wb_pc_i)
    );

    // 前推单元
    forwarding_unit forwarding_unit0 (
        .exe_rs1_addr(exe_ra1_i),
        .exe_rs2_addr(exe_ra2_i),
        .mem_wreg(mem_wreg_i),
        .mem_wa(mem_wa_i),
        .mem_wd(mem_dreg_o),
        .wb_wreg(wb_wreg_o),
        .wb_wa(wb_wa_o),
        .wb_wd(wb_wd_o),
        .forward_src1(forward_src1),
        .forward_src2(forward_src2),
        .forward_data_mem(forward_data_mem),
        .forward_data_wb(forward_data_wb)
    );

    // 执行
    exe_stage exe_stage0 (
        .cpu_clk_50M(cpu_clk_50M),
        .cpu_rst_n(cpu_rst_n),
        .exe_alutype_i(exe_alutype_i),
        .exe_aluop_i(exe_aluop_i),
        .exe_src1_i(exe_src1_i),
        .exe_src2_i(exe_src2_i),
        .exe_wa_i(exe_wa_i),
        .exe_wreg_i(exe_wreg_i),
        .exe_rkd_value_i(exe_rkd_value_i),
        .exe_rkd_value_o(exe_rkd_value_o),
        .exe_debug_wb_pc(exe_debug_wb_pc_i),
        .exe_aluop_o(exe_aluop_o),
        .exe_wa_o(exe_wa_o),
        .exe_wreg_o(exe_wreg_o),
        .exe_wd_o(exe_wd_o),
        .forward_src1(forward_src1),
        .forward_src2(forward_src2),
        .forward_data_mem(forward_data_mem),
        .forward_data_wb(forward_data_wb),
        .stallreq_from_exe(stallreq_from_exe),
        .debug_wb_pc(exe_debug_wb_pc_o)
    );

    // 执行/访存
    exemem_reg exemem_reg0 (
        .cpu_clk_50M(cpu_clk_50M),
        .cpu_rst_n(cpu_rst_n),
        .stall(stall),
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

    // 访存
    mem_stage mem_stage0 (
        .mem_aluop_i(mem_aluop_i),
        .mem_wa_i(mem_wa_i),
        .mem_wreg_i(mem_wreg_i),
        .mem_wd_i(mem_wd_i),
        .mem_rkd_value_i(mem_rkd_value_i),
        .mem_debug_wb_pc(mem_debug_wb_pc_i),
        .data_sram_en(data_sram_en),
        .data_sram_we(data_sram_we),
        .data_sram_addr(data_sram_addr),
        .data_sram_wdata(data_sram_wdata),
        .data_sram_rdata(data_sram_rdata),
        .mem_wa_o(mem_wa_o),
        .mem_wreg_o(mem_wreg_o),
        .mem_dreg_o(mem_dreg_o),
        .debug_wb_pc(mem_debug_wb_pc_o)
    );

    // 访存/写回
    memwb_reg memwb_reg0 (
        .cpu_clk_50M(cpu_clk_50M),
        .cpu_rst_n(cpu_rst_n),
        .stall(stall),
        .mem_wa(mem_wa_o),
        .mem_wreg(mem_wreg_o),
        .mem_dreg(mem_dreg_o),
        .mem_debug_wb_pc(mem_debug_wb_pc_o),
        .wb_wa(wb_wa_i),
        .wb_wreg(wb_wreg_i),
        .wb_dreg(wb_dreg_i),
        .wb_debug_wb_pc(wb_debug_wb_pc_i)
    );

    // 写回
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
