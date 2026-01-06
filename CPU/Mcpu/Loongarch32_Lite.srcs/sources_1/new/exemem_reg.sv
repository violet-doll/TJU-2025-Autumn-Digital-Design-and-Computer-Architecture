`include "defines.v"

module exemem_reg (
    input wire cpu_clk_50M,
    input wire cpu_rst_n,
    input wire [5:0] stall,

    // 来自执行阶段的信息
    input wire [`ALUOP_BUS] exe_aluop,
    input wire [`REG_ADDR_BUS] exe_wa,
    input wire exe_wreg,
    input wire [`REG_BUS] exe_wd,
    input wire [`REG_BUS] exe_rkd_value,
    input  wire [`INST_ADDR_BUS]  exe_debug_wb_pc, // 供调试使用的PC值，上板测试时务必删除该信号

    // 送到访存阶段的信息
    output reg [`ALUOP_BUS] mem_aluop,
    output reg [`REG_ADDR_BUS] mem_wa,
    output reg mem_wreg,
    output reg [`REG_BUS] mem_wd,
    output reg [`REG_BUS] mem_rkd_value,
    output reg  [`INST_ADDR_BUS]  mem_debug_wb_pc  // 供调试使用的PC值，上板测试时务必删除该信号
);

    always @(posedge cpu_clk_50M) begin
        if (cpu_rst_n == `RST_ENABLE) begin
            mem_aluop       <= `LoongArch32_SLL;
            mem_wa          <= `REG_NOP;
            mem_wreg        <= `WRITE_DISABLE;
            mem_wd          <= `ZERO_WORD;
            mem_rkd_value   <= `ZERO_WORD;
            mem_debug_wb_pc <= `PC_INIT;  // 上板测试时务必删除该语句
        end  // 暂停：EXE/MEM 暂停但 MEM/WB 不暂停时，插入气泡
        else if (stall[3] == `TRUE_V && stall[4] == `FALSE_V) begin
            mem_aluop       <= `LoongArch32_SLL;
            mem_wa          <= `REG_NOP;
            mem_wreg        <= `WRITE_DISABLE;
            mem_wd          <= `ZERO_WORD;
            mem_rkd_value   <= `ZERO_WORD;
            mem_debug_wb_pc <= exe_debug_wb_pc;
        end  // 暂停：EXE/MEM 和 MEM/WB 都暂停时，保持当前值
        else if (stall[3] == `TRUE_V && stall[4] == `TRUE_V) begin
            mem_aluop       <= mem_aluop;
            mem_wa          <= mem_wa;
            mem_wreg        <= mem_wreg;
            mem_wd          <= mem_wd;
            mem_rkd_value   <= mem_rkd_value;
            mem_debug_wb_pc <= mem_debug_wb_pc;
        end else begin
            mem_aluop       <= exe_aluop;
            mem_wa          <= exe_wa;
            mem_wreg        <= exe_wreg;
            mem_wd          <= exe_wd;
            mem_rkd_value   <= exe_rkd_value;
            mem_debug_wb_pc <= exe_debug_wb_pc;  // 上板测试时务必删除该语句
        end
    end

endmodule

