`include "defines.v"

// 写回阶段
module wb_stage (
    input wire [`REG_ADDR_BUS] wb_wa_i,
    input wire wb_wreg_i,
    input wire [`REG_BUS] wb_dreg_i,
    input wire [`INST_ADDR_BUS] wb_debug_wb_pc,

    // 写回
    output wire [`REG_ADDR_BUS] wb_wa_o,
    output wire                 wb_wreg_o,
    output wire [    `WORD_BUS] wb_wd_o,

    // 调试
    output wire [`INST_ADDR_BUS] debug_wb_pc,
    output wire                  debug_wb_rf_wen,
    output wire [ `REG_ADDR_BUS] debug_wb_rf_wnum,
    output wire [     `WORD_BUS] debug_wb_rf_wdata
);

    assign wb_wa_o           = wb_wa_i;
    assign wb_wreg_o         = wb_wreg_i;
    assign wb_wd_o           = wb_dreg_i;

    assign debug_wb_pc       = wb_debug_wb_pc;
    assign debug_wb_rf_wen   = wb_wreg_i;
    assign debug_wb_rf_wnum  = wb_wa_i;
    assign debug_wb_rf_wdata = wb_dreg_i;

endmodule
