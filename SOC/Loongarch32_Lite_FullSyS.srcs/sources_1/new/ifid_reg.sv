`include "defines.v"

// 取指/译码寄存器
module ifid_reg (
    input wire       cpu_clk_50M,
    input wire       cpu_rst_n,
    input wire [5:0] stall,
    input wire       flush,

    // 来自取指
    input wire [`INST_ADDR_BUS] if_pc,
    input wire [`INST_ADDR_BUS] if_debug_wb_pc,
    input wire [     `INST_BUS] inst,
    input wire                  if_pred_taken,
    input wire [`INST_ADDR_BUS] if_pred_target,

    // 送至译码
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
            // 冲刷
            id_pc <= `PC_INIT;
            id_debug_wb_pc <= `PC_INIT;
            id_inst <= `ZERO_WORD;
            id_pred_taken <= `FALSE_V;
            id_pred_target <= `ZERO_WORD;
        end else if (stall[1] == `TRUE_V) begin
            // 保持
            id_pc <= id_pc;
            id_debug_wb_pc <= id_debug_wb_pc;
            id_inst <= id_inst;
            id_pred_taken <= id_pred_taken;
            id_pred_target <= id_pred_target;
        end else begin
            // 传递
            id_pc <= if_pc;
            id_debug_wb_pc <= if_debug_wb_pc;
            id_inst <= inst;
            id_pred_taken <= if_pred_taken;
            id_pred_target <= if_pred_target;
        end
    end

endmodule
