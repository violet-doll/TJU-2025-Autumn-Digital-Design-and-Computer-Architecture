`include "defines.v"

module ifid_reg (
    input wire cpu_clk_50M,
    input wire cpu_rst_n,
    input wire [5:0] stall,
    input wire flush,

    // 来自取指阶段的信息  
    input wire [`INST_ADDR_BUS] if_pc,
    input  wire [`INST_ADDR_BUS]       if_debug_wb_pc, // 供调试使用的PC值，上板测试时务必删除该信号

    // 来自指令存储器的信息
    input wire [`INST_BUS] inst,

    // 送至译码阶段的信息  
    output reg [`INST_ADDR_BUS] id_pc,
    output reg [`INST_BUS] id_inst,
    output reg  [`INST_ADDR_BUS] 	    id_debug_wb_pc  // 供调试使用的PC值，上板测试时务必删除该信号
);

    always @(posedge cpu_clk_50M) begin
        // 复位期间，送至译码阶段的信息为0
        if (cpu_rst_n == `RST_ENABLE) begin
            id_pc <= `PC_INIT;
            id_debug_wb_pc <= `PC_INIT;
            id_inst <= `ZERO_WORD;
        end  // 修复：只要 stall[1] 为真，就保持当前值，不管 stall[2] 是什么
        else if (stall[1] == `TRUE_V) begin
            id_pc <= id_pc;
            id_debug_wb_pc <= id_debug_wb_pc;
            id_inst <= id_inst;
        end  // 清空：分支跳转时 flush
        else if (flush == `TRUE_V) begin
            id_pc          <= `PC_INIT;
            id_debug_wb_pc <= if_debug_wb_pc;
            id_inst        <= `ZERO_WORD;
        end else begin
            id_pc <= if_pc;
            id_debug_wb_pc <= if_debug_wb_pc;
            id_inst <= inst;
        end
    end

endmodule
