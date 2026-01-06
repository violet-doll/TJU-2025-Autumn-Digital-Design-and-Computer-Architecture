`include "defines.v"

module idexe_reg (
    input wire cpu_clk_50M,
    input wire cpu_rst_n,
    input wire flush,

    // 来自译码阶段的信息
    input wire [`ALUTYPE_BUS] id_alutype,
    input wire [`ALUOP_BUS] id_aluop,
    input wire [`REG_BUS] id_src1,
    input wire [`REG_BUS] id_src2,
    input wire [`REG_ADDR_BUS] id_wa,
    input wire id_wreg,
    input  wire [`INST_ADDR_BUS]  id_debug_wb_pc, // 供调试使用的PC值，上板测试时务必删除该信号
    input wire [`REG_BUS] id_rkd_value,

    // 送至执行阶段的信息
    output reg [`ALUTYPE_BUS] exe_alutype,
    output reg [`ALUOP_BUS] exe_aluop,
    output reg [`REG_BUS] exe_src1,
    output reg [`REG_BUS] exe_src2,
    output reg [`REG_ADDR_BUS] exe_wa,
    output reg exe_wreg,
    output reg [`REG_BUS] exe_rkd_value,
    output reg  [`INST_ADDR_BUS]  exe_debug_wb_pc  // 供调试使用的PC值，上板测试时务必删除该信号
);

    always @(posedge cpu_clk_50M) begin
        // 复位期间，送至执行阶段的信息为0
        if (cpu_rst_n == `RST_ENABLE) begin
            exe_alutype     <= `NOP;
            exe_aluop       <= `LoongArch32_SLL;
            exe_src1        <= `ZERO_WORD;
            exe_src2        <= `ZERO_WORD;
            exe_wa          <= `REG_NOP;
            exe_wreg        <= `WRITE_DISABLE;
            exe_rkd_value   <= `ZERO_WORD;
            exe_debug_wb_pc <= `PC_INIT;  // 上板测试时务必删除该语句
        end  // 清空译码阶段的信息，暂停并重新执行阶段
        else if (flush == `TRUE_V) begin
            exe_alutype     <= `NOP;
            exe_aluop       <= `LoongArch32_SLL;
            exe_wa          <= `REG_NOP;
            exe_wreg        <= `WRITE_DISABLE;  // 禁止写寄存器
            exe_src1        <= `ZERO_WORD;
            exe_src2        <= `ZERO_WORD;
            exe_rkd_value   <= `ZERO_WORD;  // 防止错误的 Store 数据
            exe_debug_wb_pc <= id_debug_wb_pc;
        end else begin
            exe_alutype <= id_alutype;
            exe_aluop <= id_aluop;
            exe_src1 <= id_src1;
            exe_src2 <= id_src2;
            exe_wa <= id_wa;
            exe_wreg <= id_wreg;
            exe_rkd_value <= id_rkd_value;
            exe_debug_wb_pc <= id_debug_wb_pc;  // 上板测试时务必删除该语句
        end
    end

endmodule
