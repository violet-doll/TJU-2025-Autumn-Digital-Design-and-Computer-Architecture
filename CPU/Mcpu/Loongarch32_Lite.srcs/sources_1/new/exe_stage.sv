`include "defines.v"

module exe_stage (

    // 从译码阶段获得的信息
    input wire [`ALUTYPE_BUS] exe_alutype_i,
    input wire [`ALUOP_BUS] exe_aluop_i,
    input wire [`REG_BUS] exe_src1_i,
    input wire [`REG_BUS] exe_src2_i,
    input wire [`REG_ADDR_BUS] exe_wa_i,
    input wire exe_wreg_i,
    input  wire [`INST_ADDR_BUS]    exe_debug_wb_pc,  // 供调试使用的PC值，上板测试时务必删除该信号

    // Store 数据透传
    input  wire [`REG_BUS] exe_rkd_value_i,
    output wire [`REG_BUS] exe_rkd_value_o,

    // 分支接口
    output wire                  exe_branch_taken_o,
    output wire [`INST_ADDR_BUS] exe_branch_target_o,

    // 送至执行阶段的信息
    output wire [   `ALUOP_BUS] exe_aluop_o,
    output wire [`REG_ADDR_BUS] exe_wa_o,
    output wire                 exe_wreg_o,
    output wire [     `REG_BUS] exe_wd_o,

    output wire [`INST_ADDR_BUS] 	debug_wb_pc  // 供调试使用的PC值，上板测试时务必删除该信号
);

    assign exe_aluop_o = exe_aluop_i;
    assign exe_wa_o = exe_wa_i;
    assign exe_wreg_o = exe_wreg_i;
    assign exe_rkd_value_o = exe_rkd_value_i;  // 透传

    // --- ALU 计算 ---
    wire [`REG_BUS] adder_res = exe_src1_i + exe_src2_i;  // 加法、Load/Store地址

    wire [`REG_BUS] logic_res = 
        (exe_aluop_i == `LoongArch32_ANDI) ? (exe_src1_i & exe_src2_i) :
        (exe_aluop_i == `LoongArch32_OR || exe_aluop_i == `LoongArch32_ORI) ? (exe_src1_i | exe_src2_i) :
        (exe_aluop_i == `LoongArch32_XOR) ? (exe_src1_i ^ exe_src2_i) :
        (exe_aluop_i == `LoongArch32_LU12I_W) ? exe_src2_i : `ZERO_WORD;

    wire [`REG_BUS] shift_res = 
        (exe_aluop_i == `LoongArch32_SRL_W) ? (exe_src1_i >> exe_src2_i[4:0]) : 
        (exe_src1_i << exe_src2_i[4:0]); // 默认SLL

    // SLTUI: 无符号比较
    wire [`REG_BUS] sltu_res = (exe_src1_i < exe_src2_i) ? 32'b1 : 32'b0;

    // 结果选择
    assign exe_wd_o = 
        (exe_aluop_i == `LoongArch32_SLTUI) ? sltu_res :
        (exe_alutype_i == `LOGIC) ? logic_res :
        (exe_alutype_i == `SHIFT) ? shift_res :
        adder_res;

    wire [31:0] br_offset = exe_rkd_value_i;  // 复用通道
    wire [31:0] br_target = exe_debug_wb_pc + br_offset;  // PC + offset

    wire is_branch = (exe_aluop_i == `LoongArch32_BEQ) || 
                 (exe_aluop_i == `LoongArch32_BNE) || 
                 (exe_aluop_i == `LoongArch32_BLT);

    wire rs_eq_rt = (exe_src1_i == exe_src2_i);
    wire rs_lt_rt = ($signed(exe_src1_i) < $signed(exe_src2_i));  // 有符号比较

    assign exe_branch_taken_o = is_branch && (
        (exe_aluop_i == `LoongArch32_BEQ && rs_eq_rt) ||
        (exe_aluop_i == `LoongArch32_BNE && !rs_eq_rt) ||
        (exe_aluop_i == `LoongArch32_BLT && rs_lt_rt)
    );

    assign exe_branch_target_o = exe_branch_taken_o ? br_target : `ZERO_WORD;

    assign debug_wb_pc = exe_debug_wb_pc;  // 上板测试时务必删除该语句

endmodule
