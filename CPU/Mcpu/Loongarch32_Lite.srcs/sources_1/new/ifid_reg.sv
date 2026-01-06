`include "defines.v"

module ifid_reg (
    input wire cpu_clk_50M,
    input wire cpu_rst_n,
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
            id_debug_wb_pc <= `PC_INIT;  // 上板测试时务必删除该语句
            id_inst <= `ZERO_WORD;
        end  // 清空取指阶段的信息，暂停并译码阶段
		else if (flush == `TRUE_V) begin
            id_pc          <= `PC_INIT;
            id_debug_wb_pc <= if_debug_wb_pc;
            id_inst        <= `ZERO_WORD;  // 插入 NOP (inst=0 相当于写 r0，无修改作用)
        end else begin
            id_pc <= if_pc;
            id_debug_wb_pc <= if_debug_wb_pc;  // 上板测试时务必删除该语句
            id_inst <= inst;
        end
    end

endmodule
