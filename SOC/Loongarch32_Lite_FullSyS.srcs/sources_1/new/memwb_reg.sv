`include "defines.v"

// 访存/写回寄存器
module memwb_reg (
    input wire cpu_clk_50M,
    input wire cpu_rst_n,
    input wire [5:0] stall,

    // 来自访存
    input wire [`REG_ADDR_BUS] mem_wa,
    input wire mem_wreg,
    input wire [`REG_BUS] mem_dreg,
    input wire [`INST_ADDR_BUS] mem_debug_wb_pc,

    // 送至写回
    output reg [ `REG_ADDR_BUS] wb_wa,
    output reg                  wb_wreg,
    output reg [      `REG_BUS] wb_dreg,
    output reg [`INST_ADDR_BUS] wb_debug_wb_pc
);

    always @(posedge cpu_clk_50M) begin
        if (cpu_rst_n == `RST_ENABLE) begin
            // 复位
            wb_wa          <= `REG_NOP;
            wb_wreg        <= `WRITE_DISABLE;
            wb_dreg        <= `ZERO_WORD;
            wb_debug_wb_pc <= `PC_INIT;
        end else if (stall[4] == `TRUE_V && stall[5] == `FALSE_V) begin
            // 插入气泡
            wb_wa          <= `REG_NOP;
            wb_wreg        <= `WRITE_DISABLE;
            wb_dreg        <= `ZERO_WORD;
            wb_debug_wb_pc <= mem_debug_wb_pc;
        end else if (stall[4] == `TRUE_V && stall[5] == `TRUE_V) begin
            // 保持
            wb_wa          <= wb_wa;
            wb_wreg        <= wb_wreg;
            wb_dreg        <= wb_dreg;
            wb_debug_wb_pc <= wb_debug_wb_pc;
        end else begin
            // 传递
            wb_wa          <= mem_wa;
            wb_wreg        <= mem_wreg;
            wb_dreg        <= mem_dreg;
            wb_debug_wb_pc <= mem_debug_wb_pc;
        end
    end

endmodule
