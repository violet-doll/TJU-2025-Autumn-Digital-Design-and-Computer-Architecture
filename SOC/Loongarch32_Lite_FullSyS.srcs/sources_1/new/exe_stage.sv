`include "defines.v"

//==============================================================================
// Module: exe_stage
// Description: 执行阶段 - ALU运算、数据前推处理
// Author: TJU Digital Design Course
//==============================================================================
module exe_stage (
    // 来自ID/EXE寄存器
    input wire [`ALUTYPE_BUS] exe_alutype_i,
    input wire [`ALUOP_BUS] exe_aluop_i,
    input wire [`REG_BUS] exe_src1_i,
    input wire [`REG_BUS] exe_src2_i,
    input wire [`REG_ADDR_BUS] exe_wa_i,
    input wire exe_wreg_i,
    input wire [`INST_ADDR_BUS] exe_debug_wb_pc,

    // Store数据通路
    input  wire [`REG_BUS] exe_rkd_value_i,
    output wire [`REG_BUS] exe_rkd_value_o,

    // 前推控制信号
    input wire [     1:0] forward_src1,
    input wire [     1:0] forward_src2,
    input wire [`REG_BUS] forward_data_mem,
    input wire [`REG_BUS] forward_data_wb,

    // 送至MEM阶段
    output wire [   `ALUOP_BUS] exe_aluop_o,
    output wire [`REG_ADDR_BUS] exe_wa_o,
    output wire                 exe_wreg_o,
    output wire [     `REG_BUS] exe_wd_o,

    output wire [`INST_ADDR_BUS] debug_wb_pc
);

    // Store指令识别
    wire is_store = (exe_aluop_i == `LoongArch32_ST_B) || (exe_aluop_i == `LoongArch32_ST_W);

    assign exe_aluop_o = exe_aluop_i;
    assign exe_wa_o = exe_wa_i;
    assign exe_wreg_o = exe_wreg_i;

    //--------------------------------------------------------------------------
    // Store数据前推
    //--------------------------------------------------------------------------
    assign exe_rkd_value_o = is_store ? (
        (forward_src2 == 2'b01) ? forward_data_mem :
        (forward_src2 == 2'b10) ? forward_data_wb :
        exe_rkd_value_i
    ) : exe_rkd_value_i;

    //--------------------------------------------------------------------------
    // ALU操作数前推
    //--------------------------------------------------------------------------
    wire [`REG_BUS] alu_src1 = 
        (forward_src1 == 2'b01) ? forward_data_mem :
        (forward_src1 == 2'b10) ? forward_data_wb :
        exe_src1_i;

    // Store指令的src2是立即数偏移，不前推
    wire [`REG_BUS] alu_src2 = is_store ? exe_src2_i :
        (forward_src2 == 2'b01) ? forward_data_mem :
        (forward_src2 == 2'b10) ? forward_data_wb :
        exe_src2_i;

    //--------------------------------------------------------------------------
    // ALU运算
    //--------------------------------------------------------------------------
    wire [`REG_BUS] adder_res = alu_src1 + alu_src2;

    wire [`REG_BUS] logic_res = 
        (exe_aluop_i == `LoongArch32_ANDI) ? (alu_src1 & alu_src2) :
        (exe_aluop_i == `LoongArch32_OR || exe_aluop_i == `LoongArch32_ORI) ? (alu_src1 | alu_src2) :
        (exe_aluop_i == `LoongArch32_XOR) ? (alu_src1 ^ alu_src2) :
        (exe_aluop_i == `LoongArch32_LU12I_W) ? alu_src2 : `ZERO_WORD;

    wire [`REG_BUS] shift_res = 
        (exe_aluop_i == `LoongArch32_SRL_W) ? (alu_src1 >> alu_src2[4:0]) : 
        (alu_src1 << alu_src2[4:0]);

    wire [`REG_BUS] sltu_res = (alu_src1 < alu_src2) ? 32'b1 : 32'b0;

    // 结果选择
    assign exe_wd_o = 
        (exe_aluop_i == `LoongArch32_SLTUI) ? sltu_res :
        (exe_alutype_i == `LOGIC) ? logic_res :
        (exe_alutype_i == `SHIFT) ? shift_res :
        adder_res;

    assign debug_wb_pc = exe_debug_wb_pc;

endmodule
