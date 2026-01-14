`include "defines.v"

//==============================================================================
// Module: forwarding_unit
// Description: 数据前推单元 - 解决RAW数据冒险
// Author: TJU Digital Design Course
//==============================================================================
module forwarding_unit (
    // EXE阶段源寄存器地址
    input wire [`REG_ADDR_BUS] exe_rs1_addr,
    input wire [`REG_ADDR_BUS] exe_rs2_addr,

    // MEM阶段写回信息
    input wire                 mem_wreg,
    input wire [`REG_ADDR_BUS] mem_wa,
    input wire [     `REG_BUS] mem_wd,

    // WB阶段写回信息
    input wire                 wb_wreg,
    input wire [`REG_ADDR_BUS] wb_wa,
    input wire [     `REG_BUS] wb_wd,

    // 前推控制: 00=原值, 01=MEM前推, 10=WB前推
    output reg [1:0] forward_src1,
    output reg [1:0] forward_src2,

    // 前推数据
    output wire [`REG_BUS] forward_data_mem,
    output wire [`REG_BUS] forward_data_wb
);

    assign forward_data_mem = mem_wd;
    assign forward_data_wb  = wb_wd;

    // 源操作数1前推逻辑
    always @(*) begin
        if (mem_wreg && (mem_wa != `REG_NOP) && (mem_wa == exe_rs1_addr))
            forward_src1 = 2'b01;  // MEM前推优先
        else if (wb_wreg && (wb_wa != `REG_NOP) && (wb_wa == exe_rs1_addr))
            forward_src1 = 2'b10;  // WB前推
        else forward_src1 = 2'b00;  // 无需前推
    end

    // 源操作数2前推逻辑
    always @(*) begin
        if (mem_wreg && (mem_wa != `REG_NOP) && (mem_wa == exe_rs2_addr)) forward_src2 = 2'b01;
        else if (wb_wreg && (wb_wa != `REG_NOP) && (wb_wa == exe_rs2_addr)) forward_src2 = 2'b10;
        else forward_src2 = 2'b00;
    end

endmodule
