`include "defines.v"

module wb_stage(

    // 从访存阶段获得的信息
	input  wire [`REG_ADDR_BUS  ] wb_wa_i,
	input  wire                   wb_wreg_i,
	input  wire [`REG_BUS       ] wb_dreg_i,
	input  wire [`INST_ADDR_BUS]  wb_debug_wb_pc,  // 供调试使用的PC值，上板测试时务必删除该信号

    // 写回目的寄存器的数据
    output wire [`REG_ADDR_BUS  ] wb_wa_o,
	output wire                   wb_wreg_o,
    output wire [`WORD_BUS      ] wb_wd_o,
    
    output wire [`INST_ADDR_BUS]  debug_wb_pc,       // 供调试使用的PC值，上板测试时务必删除该信号
    output wire                   debug_wb_rf_wen,   // 供调试使用的PC值，上板测试时务必删除该信号
    output wire [`REG_ADDR_BUS  ] debug_wb_rf_wnum,  // 供调试使用的PC值，上板测试时务必删除该信号
    output wire [`WORD_BUS      ] debug_wb_rf_wdata  // 供调试使用的PC值，上板测试时务必删除该信号
    );

    assign wb_wa_o      = wb_wa_i;
    assign wb_wreg_o    = wb_wreg_i;
    assign wb_wd_o      = wb_dreg_i;
    
    assign debug_wb_pc         = wb_debug_wb_pc;    // 上板测试时务必删除该语句
    assign debug_wb_rf_wen     = wb_wreg_i;         // 上板测试时务必删除该语句 
    assign debug_wb_rf_wnum    = wb_wa_i;           // 上板测试时务必删除该语句
    assign debug_wb_rf_wdata   = wb_dreg_i;         // 上板测试时务必删除该语句 
    
endmodule
