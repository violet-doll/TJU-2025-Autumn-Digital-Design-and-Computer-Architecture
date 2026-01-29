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
    input wire                  branch_taken_i,  // 分支跳转有效(预测修正)
    input wire [`INST_ADDR_BUS] branch_target_i, // 分支目标地址(预测修正)

    // BP更新接口(ID阶段)
    input wire                  bp_update_en_i,
    input wire [`INST_ADDR_BUS] bp_update_pc_i,
    input wire                  bp_update_taken_i,
    input wire [`INST_ADDR_BUS] bp_update_target_i,

    input wire bp_update_is_call_i,
    input wire bp_update_is_ret_i,

    output logic [`INST_ADDR_BUS] pc,          // 当前PC值
    output       [`INST_ADDR_BUS] iaddr,       // 指令地址
    output       [`INST_ADDR_BUS] debug_wb_pc, // 调试用PC

    // 预测结果输出(IF->ID)
    output wire                  if_pred_taken,
    output wire [`INST_ADDR_BUS] if_pred_target
);

    wire [`INST_ADDR_BUS] pc_next;

    // 分支预测器
    wire bp_hit;
    wire bp_pred_taken;
    wire [`INST_ADDR_BUS] bp_target;

    branch_predictor branch_predictor0 (
        .cpu_clk_50M (cpu_clk_50M),
        .cpu_rst_n   (cpu_rst_n),
        .pc_i        (pc),
        .hit_o       (bp_hit),
        .pred_taken_o(bp_pred_taken),
        .target_o    (bp_target),

        // 更新端口
        .update_en_i    (bp_update_en_i),
        .update_pc_i    (bp_update_pc_i),
        .update_taken_i (bp_update_taken_i),
        .update_target_i(bp_update_target_i),

        // [New] 连接 RAS 信号
        .update_is_call_i(bp_update_is_call_i),
        .update_is_ret_i (bp_update_is_ret_i)
    );

    assign if_pred_taken = bp_pred_taken;
    assign if_pred_target = bp_target;

    // PC更新: 分支修正 > 预测跳转 > 顺序执行
    assign pc_next = branch_taken_i ? branch_target_i : (if_pred_taken ? if_pred_target : (pc + 4));

    always @(posedge cpu_clk_50M) begin
        if (~cpu_rst_n) begin
            pc <= `PC_INIT;
        end else if (stall[0] == `TRUE_V) begin
            // 流水线暂停时保持PC，避免响应分支跳转
            pc <= pc;
        end else begin
            pc <= pc_next;
        end
    end

    assign iaddr = (~cpu_rst_n) ? `PC_INIT : pc;
    assign debug_wb_pc = pc;

endmodule
