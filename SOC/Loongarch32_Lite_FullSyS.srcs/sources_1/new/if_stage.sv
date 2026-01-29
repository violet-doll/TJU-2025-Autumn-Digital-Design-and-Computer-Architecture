`include "defines.v"

// 取指阶段
module if_stage (
    input cpu_clk_50M,
    input cpu_rst_n,

    input wire [           5:0] stall,
    input wire                  branch_taken_i,
    input wire [`INST_ADDR_BUS] branch_target_i,

    // 分支预测更新
    input wire                  bp_update_en_i,
    input wire [`INST_ADDR_BUS] bp_update_pc_i,
    input wire                  bp_update_taken_i,
    input wire [`INST_ADDR_BUS] bp_update_target_i,

    input wire bp_update_is_call_i,
    input wire bp_update_is_ret_i,

    output logic [`INST_ADDR_BUS] pc,
    output       [`INST_ADDR_BUS] iaddr,
    output       [`INST_ADDR_BUS] debug_wb_pc,

    // 预测结果
    output wire                  if_pred_taken,
    output wire [`INST_ADDR_BUS] if_pred_target
);

    wire [`INST_ADDR_BUS] pc_next;

    // 分支预测
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

        // 连接返回栈信号
        .update_is_call_i(bp_update_is_call_i),
        .update_is_ret_i (bp_update_is_ret_i)
    );

    assign if_pred_taken = bp_pred_taken;
    assign if_pred_target = bp_target;

    // 地址更新
    assign pc_next = branch_taken_i ? branch_target_i : (if_pred_taken ? if_pred_target : (pc + 4));

    always @(posedge cpu_clk_50M) begin
        if (~cpu_rst_n) begin
            pc <= `PC_INIT;
        end else if (stall[0] == `TRUE_V) begin
            pc <= pc;
        end else begin
            pc <= pc_next;
        end
    end

    assign iaddr = (~cpu_rst_n) ? `PC_INIT : pc;
    assign debug_wb_pc = pc;

endmodule
