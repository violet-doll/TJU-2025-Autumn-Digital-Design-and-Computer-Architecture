`include "defines.v"

//==============================================================================
// Module: ifid_reg
// Description: IF/ID流水线寄存器 - 锁存取指阶段数据
// Author: TJU Digital Design Course
//==============================================================================
module ifid_reg (
    input wire       cpu_clk_50M,
    input wire       cpu_rst_n,
    input wire [5:0] stall,        // 流水线暂停信号
    input wire       flush,        // 流水线冲刷信号

    // 来自IF阶段
    input wire [`INST_ADDR_BUS] if_pc,
    input wire [`INST_ADDR_BUS] if_debug_wb_pc,
    input wire [     `INST_BUS] inst,
    input wire                  if_pred_taken,
    input wire [`INST_ADDR_BUS] if_pred_target,

    // 送至ID阶段
    output reg [`INST_ADDR_BUS] id_pc,
    output reg [     `INST_BUS] id_inst,
    output reg [`INST_ADDR_BUS] id_debug_wb_pc,
    output reg                  id_pred_taken,
    output reg [`INST_ADDR_BUS] id_pred_target
);

    always @(posedge cpu_clk_50M) begin
        if (cpu_rst_n == `RST_ENABLE) begin
            // 复位
            id_pc <= `PC_INIT;
            id_debug_wb_pc <= `PC_INIT;
            id_inst <= `ZERO_WORD;
            id_pred_taken <= `FALSE_V;
            id_pred_target <= `ZERO_WORD;
        end else if (flush == `TRUE_V) begin
            // 冲刷时插入气泡(分支跳转)
            id_pc <= `PC_INIT;
            id_debug_wb_pc <= `PC_INIT;  // 气泡指令的PC也应该是无效地址
            id_inst <= `ZERO_WORD;
            id_pred_taken <= `FALSE_V;
            id_pred_target <= `ZERO_WORD;
        end else if (stall[1] == `TRUE_V) begin
            // 暂停时保持当前值
            id_pc <= id_pc;
            id_debug_wb_pc <= id_debug_wb_pc;
            id_inst <= id_inst;
            id_pred_taken <= id_pred_taken;
            id_pred_target <= id_pred_target;
        end else begin
            // 正常传递
            id_pc <= if_pc;
            id_debug_wb_pc <= if_debug_wb_pc;
            id_inst <= inst;
            id_pred_taken <= if_pred_taken;
            id_pred_target <= if_pred_target;
        end
    end

endmodule
