`include "defines.v"

// 执行/访存寄存器
module exemem_reg (
    input wire cpu_clk_50M,
    input wire cpu_rst_n,
    input wire [5:0] stall,

    // 来自执行
    input wire [`ALUOP_BUS] exe_aluop,
    input wire [`REG_ADDR_BUS] exe_wa,
    input wire exe_wreg,
    input wire [`REG_BUS] exe_wd,
    input wire [`REG_BUS] exe_rkd_value,
    input wire [`INST_ADDR_BUS] exe_debug_wb_pc,

    // 送至访存
    output reg [`ALUOP_BUS] mem_aluop,
    output reg [`REG_ADDR_BUS] mem_wa,
    output reg mem_wreg,
    output reg [`REG_BUS] mem_wd,
    output reg [`REG_BUS] mem_rkd_value,
    output reg [`INST_ADDR_BUS] mem_debug_wb_pc
);

    always @(posedge cpu_clk_50M) begin
        if (cpu_rst_n == `RST_ENABLE) begin
            // 复位
            mem_aluop       <= `LoongArch32_SLL;
            mem_wa          <= `REG_NOP;
            mem_wreg        <= `WRITE_DISABLE;
            mem_wd          <= `ZERO_WORD;
            mem_rkd_value   <= `ZERO_WORD;
            mem_debug_wb_pc <= `PC_INIT;
        end else if (stall[3] == `TRUE_V && stall[4] == `FALSE_V) begin
            // 插入气泡
            mem_aluop       <= `LoongArch32_SLL;
            mem_wa          <= `REG_NOP;
            mem_wreg        <= `WRITE_DISABLE;
            mem_wd          <= `ZERO_WORD;
            mem_rkd_value   <= `ZERO_WORD;
            mem_debug_wb_pc <= exe_debug_wb_pc;
        end else if (stall[3] == `TRUE_V && stall[4] == `TRUE_V) begin
            // 保持
            mem_aluop       <= mem_aluop;
            mem_wa          <= mem_wa;
            mem_wreg        <= mem_wreg;
            mem_wd          <= mem_wd;
            mem_rkd_value   <= mem_rkd_value;
            mem_debug_wb_pc <= mem_debug_wb_pc;
        end else begin
            // 传递
            mem_aluop       <= exe_aluop;
            mem_wa          <= exe_wa;
            mem_wreg        <= exe_wreg;
            mem_wd          <= exe_wd;
            mem_rkd_value   <= exe_rkd_value;
            mem_debug_wb_pc <= exe_debug_wb_pc;
        end
    end

endmodule
