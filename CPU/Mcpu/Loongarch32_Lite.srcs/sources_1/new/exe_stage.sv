`include "defines.v"

module exe_stage (

    // 从译码阶段获得的信息
    input wire [`ALUTYPE_BUS] exe_alutype_i,
    input wire [`ALUOP_BUS] exe_aluop_i,
    input wire [`REG_BUS] exe_src1_i,
    input wire [`REG_BUS] exe_src2_i,
    input wire [`REG_ADDR_BUS] exe_wa_i,
    input wire exe_wreg_i,
    input wire [`INST_ADDR_BUS] exe_debug_wb_pc,

    // Store 数据透传
    input  wire [`REG_BUS] exe_rkd_value_i,
    output wire [`REG_BUS] exe_rkd_value_o,

    // 前推信号输入
    input wire [     1:0] forward_src1,      // 00:原值, 01:MEM前推, 10:WB前推
    input wire [     1:0] forward_src2,      // 00:原值, 01:MEM前推, 10:WB前推
    input wire [`REG_BUS] forward_data_mem,  // 来自 MEM 阶段的前推数据
    input wire [`REG_BUS] forward_data_wb,   // 来自 WB 阶段的前推数据

    // 送至 MEM 阶段的信息
    output wire [   `ALUOP_BUS] exe_aluop_o,
    output wire [`REG_ADDR_BUS] exe_wa_o,
    output wire                 exe_wreg_o,
    output wire [     `REG_BUS] exe_wd_o,

    output wire [`INST_ADDR_BUS] debug_wb_pc
);

    // --- 识别 Store 指令 ---
    // Store 指令需要特殊处理：ALU 计算地址（不前推 src2），但存储数据需要前推
    wire is_store = (exe_aluop_i == `LoongArch32_ST_B) || (exe_aluop_i == `LoongArch32_ST_W);

    assign exe_aluop_o = exe_aluop_i;
    assign exe_wa_o = exe_wa_i;
    assign exe_wreg_o = exe_wreg_i;

    // --- Store 数据前推 MUX ---
    // 对于 Store 指令，存储数据（exe_rkd_value）需要前推
    // forward_src2 检测的是 ra2（Store 指令的 rd，即要存储的数据寄存器）
    assign exe_rkd_value_o = is_store ? (
        (forward_src2 == 2'b01) ? forward_data_mem :  // MEM阶段前推
        (forward_src2 == 2'b10) ? forward_data_wb :  // WB阶段前推
        exe_rkd_value_i  // 原始值
        ) : exe_rkd_value_i;  // 非 Store 指令直接透传

    // --- ALU 操作数前推 MUX ---
    // 根据前推信号选择实际的操作数
    wire [`REG_BUS] alu_src1 = (forward_src1 == 2'b01) ? forward_data_mem :  // MEM阶段前推
    (forward_src1 == 2'b10) ? forward_data_wb :  // WB阶段前推
    exe_src1_i;  // 原始值

    // 对于 Store 指令，ALU 的第二操作数是立即数偏移量，不应该被前推
    // 只有非 Store 指令才对 src2 进行前推
    wire [`REG_BUS] alu_src2 = is_store ? exe_src2_i :  // Store 指令：使用原始立即数偏移
    (forward_src2 == 2'b01) ? forward_data_mem :  // MEM阶段前推
    (forward_src2 == 2'b10) ? forward_data_wb :  // WB阶段前推
    exe_src2_i;  // 原始值

    // --- ALU 计算 ---
    wire [`REG_BUS] adder_res = alu_src1 + alu_src2;  // 加法、Load/Store地址

    wire [`REG_BUS] logic_res = 
        (exe_aluop_i == `LoongArch32_ANDI) ? (alu_src1 & alu_src2) :
        (exe_aluop_i == `LoongArch32_OR || exe_aluop_i == `LoongArch32_ORI) ? (alu_src1 | alu_src2) :
        (exe_aluop_i == `LoongArch32_XOR) ? (alu_src1 ^ alu_src2) :
        (exe_aluop_i == `LoongArch32_LU12I_W) ? alu_src2 : `ZERO_WORD;

    wire [`REG_BUS] shift_res = 
        (exe_aluop_i == `LoongArch32_SRL_W) ? (alu_src1 >> alu_src2[4:0]) : 
        (alu_src1 << alu_src2[4:0]); // 默认SLL

    // SLTUI: 无符号比较
    wire [`REG_BUS] sltu_res = (alu_src1 < alu_src2) ? 32'b1 : 32'b0;

    // 结果选择
    assign exe_wd_o = 
        (exe_aluop_i == `LoongArch32_SLTUI) ? sltu_res :
        (exe_alutype_i == `LOGIC) ? logic_res :
        (exe_alutype_i == `SHIFT) ? shift_res :
        adder_res;

    assign debug_wb_pc = exe_debug_wb_pc;

endmodule

