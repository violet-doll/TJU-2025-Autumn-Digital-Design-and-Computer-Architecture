`include "defines.v"

//==============================================================================
// Module: if_stage
// Description: 取指阶段 - 生成PC并获取指令
// Author: TJU Digital Design Course
//==============================================================================
module if_stage (
    input cpu_clk_50M,
    input cpu_rst_n,

    input wire [           5:0] stall,           // 流水线暂停信号
    input wire                  branch_taken_i,  // 分支跳转有效
    input wire [`INST_ADDR_BUS] branch_target_i, // 分支目标地址

    output logic [`INST_ADDR_BUS] pc,          // 当前PC值
    output       [`INST_ADDR_BUS] iaddr,       // 指令地址
    output       [`INST_ADDR_BUS] debug_wb_pc  // 调试用PC
);

    wire [`INST_ADDR_BUS] pc_next;

    // PC更新: 分支跳转时取目标地址，否则PC+4
    assign pc_next = branch_taken_i ? branch_target_i : (pc + 4);

    always @(posedge cpu_clk_50M) begin
        if (~cpu_rst_n) pc <= `PC_INIT;
        else if (stall[0]) pc <= pc;
        else pc <= pc_next;
    end

    assign iaddr = (~cpu_rst_n) ? `PC_INIT : pc;
    assign debug_wb_pc = pc;

endmodule
