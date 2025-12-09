`include "defines.v"

module mem_stage (

    // 从执行阶段获得的信息
    input  wire [`ALUOP_BUS     ]       mem_aluop_i,
    input  wire [`REG_ADDR_BUS  ]       mem_wa_i,
    input  wire                         mem_wreg_i,
    input  wire [`REG_BUS       ]       mem_wd_i,
    input  wire [`INST_ADDR_BUS]        mem_debug_wb_pc,  // 供调试使用的PC值，上板测试时务必删除该信号
    
    // 送至写回阶段的信息
    output wire [`REG_ADDR_BUS  ]       mem_wa_o,
    output wire                         mem_wreg_o,
    output wire [`REG_BUS       ]       mem_dreg_o,
    
    output wire [`INST_ADDR_BUS] 	    debug_wb_pc  // 供调试使用的PC值，上板测试时务必删除该信号
    );

    // 如果当前不是访存指令，则只需要把从执行阶段获得的信息直接输出
    assign mem_wa_o     = mem_wa_i;
    assign mem_wreg_o   = mem_wreg_i;
    assign mem_dreg_o   = mem_wd_i;
    
    assign debug_wb_pc = mem_debug_wb_pc;    // 上板测试时务必删除该语句 

endmodule