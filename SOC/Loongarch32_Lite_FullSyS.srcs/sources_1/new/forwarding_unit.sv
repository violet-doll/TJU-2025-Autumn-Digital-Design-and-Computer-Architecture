`include "defines.v"

// 前推单元
module forwarding_unit (
    // 执行级源寄存器
    input wire [`REG_ADDR_BUS] exe_rs1_addr,
    input wire [`REG_ADDR_BUS] exe_rs2_addr,

    // 访存级写回
    input wire                 mem_wreg,
    input wire [`REG_ADDR_BUS] mem_wa,
    input wire [     `REG_BUS] mem_wd,

    // 写回级写回
    input wire                 wb_wreg,
    input wire [`REG_ADDR_BUS] wb_wa,
    input wire [     `REG_BUS] wb_wd,

    // 00=原值, 01=访存, 10=写回
    output reg [1:0] forward_src1,
    output reg [1:0] forward_src2,

    // 前推数据
    output wire [`REG_BUS] forward_data_mem,
    output wire [`REG_BUS] forward_data_wb
);

    assign forward_data_mem = mem_wd;
    assign forward_data_wb  = wb_wd;

    // 源1
    always @(*) begin
        if (mem_wreg && (mem_wa != `REG_NOP) && (mem_wa == exe_rs1_addr)) forward_src1 = 2'b01;
        else if (wb_wreg && (wb_wa != `REG_NOP) && (wb_wa == exe_rs1_addr)) forward_src1 = 2'b10;
        else forward_src1 = 2'b00;
    end

    // 源2
    always @(*) begin
        if (mem_wreg && (mem_wa != `REG_NOP) && (mem_wa == exe_rs2_addr)) forward_src2 = 2'b01;
        else if (wb_wreg && (wb_wa != `REG_NOP) && (wb_wa == exe_rs2_addr)) forward_src2 = 2'b10;
        else forward_src2 = 2'b00;
    end

endmodule
