`include "defines.v"

module idexe_reg (
    input wire cpu_clk_50M,
    input wire cpu_rst_n,
    input wire [5:0] stall,

    // 来自译码阶段的信息
    input wire [`ALUTYPE_BUS] id_alutype,
    input wire [`ALUOP_BUS] id_aluop,
    input wire [`REG_BUS] id_src1,
    input wire [`REG_BUS] id_src2,
    input wire [`REG_ADDR_BUS] id_wa,
    input wire id_wreg,
    input wire [`INST_ADDR_BUS] id_debug_wb_pc,
    input wire [`REG_BUS] id_rkd_value,
    input wire [`REG_ADDR_BUS] id_ra1,  // 源寄存器地址1（用于前推）
    input wire [`REG_ADDR_BUS] id_ra2,  // 源寄存器地址2（用于前推）

    // 送至执行阶段的信息
    output reg [`ALUTYPE_BUS] exe_alutype,
    output reg [`ALUOP_BUS] exe_aluop,
    output reg [`REG_BUS] exe_src1,
    output reg [`REG_BUS] exe_src2,
    output reg [`REG_ADDR_BUS] exe_wa,
    output reg exe_wreg,
    output reg [`REG_BUS] exe_rkd_value,
    output reg [`INST_ADDR_BUS] exe_debug_wb_pc,
    output reg [`REG_ADDR_BUS] exe_ra1,  // 源寄存器地址1（用于前推）
    output reg [`REG_ADDR_BUS] exe_ra2  // 源寄存器地址2（用于前推）
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
            exe_debug_wb_pc <= `PC_INIT;
            exe_ra1         <= `REG_NOP;
            exe_ra2         <= `REG_NOP;
        end  // 暂停：ID/EXE 暂停但 EXE/MEM 不暂停时，插入气泡 NOP
        else if (stall[2] == `TRUE_V && stall[3] == `FALSE_V) begin
            exe_alutype     <= `NOP;
            exe_aluop       <= `LoongArch32_SLL;
            exe_wa          <= `REG_NOP;
            exe_wreg        <= `WRITE_DISABLE;
            exe_src1        <= `ZERO_WORD;
            exe_src2        <= `ZERO_WORD;
            exe_rkd_value   <= `ZERO_WORD;
            exe_debug_wb_pc <= id_debug_wb_pc;
            exe_ra1         <= `REG_NOP;
            exe_ra2         <= `REG_NOP;
        end  // 暂停：ID/EXE 和 EXE/MEM 都暂停时，保持当前值
        else if (stall[2] == `TRUE_V && stall[3] == `TRUE_V) begin
            exe_alutype     <= exe_alutype;
            exe_aluop       <= exe_aluop;
            exe_src1        <= exe_src1;
            exe_src2        <= exe_src2;
            exe_wa          <= exe_wa;
            exe_wreg        <= exe_wreg;
            exe_rkd_value   <= exe_rkd_value;
            exe_debug_wb_pc <= exe_debug_wb_pc;
            exe_ra1         <= exe_ra1;
            exe_ra2         <= exe_ra2;
        end  // 正常传递
        else begin
            exe_alutype     <= id_alutype;
            exe_aluop       <= id_aluop;
            exe_src1        <= id_src1;
            exe_src2        <= id_src2;
            exe_wa          <= id_wa;
            exe_wreg        <= id_wreg;
            exe_rkd_value   <= id_rkd_value;
            exe_debug_wb_pc <= id_debug_wb_pc;
            exe_ra1         <= id_ra1;
            exe_ra2         <= id_ra2;
        end
    end

endmodule


