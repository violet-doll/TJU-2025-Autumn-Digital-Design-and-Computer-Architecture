`include "defines.v"

// 数据前推单元 - 解决 RAW 数据冒险
module forwarding_unit (
    // 来自 EXE 阶段的源寄存器地址
    input wire [`REG_ADDR_BUS] exe_rs1_addr,  // 源操作数1的寄存器地址
    input wire [`REG_ADDR_BUS] exe_rs2_addr,  // 源操作数2的寄存器地址

    // 来自 MEM 阶段的写回信息
    input wire                 mem_wreg,  // MEM阶段是否写寄存器
    input wire [`REG_ADDR_BUS] mem_wa,    // MEM阶段写目标寄存器地址
    input wire [     `REG_BUS] mem_wd,    // MEM阶段写数据

    // 来自 WB 阶段的写回信息
    input wire                 wb_wreg,  // WB阶段是否写寄存器
    input wire [`REG_ADDR_BUS] wb_wa,    // WB阶段写目标寄存器地址
    input wire [     `REG_BUS] wb_wd,    // WB阶段写数据

    // 前推控制信号输出
    // 00: 使用原始值（来自寄存器堆）
    // 01: 前推来自 MEM 阶段
    // 10: 前推来自 WB 阶段
    output reg [1:0] forward_src1,
    output reg [1:0] forward_src2,

    // 前推数据输出
    output wire [`REG_BUS] forward_data_mem,
    output wire [`REG_BUS] forward_data_wb
);

    // 透传前推数据
    assign forward_data_mem = mem_wd;
    assign forward_data_wb  = wb_wd;

    // 前推逻辑 - 源操作数1
    always @(*) begin
        if (mem_wreg && (mem_wa != `REG_NOP) && (mem_wa == exe_rs1_addr)) begin
            // MEM 阶段前推优先级更高（数据更新）
            forward_src1 = 2'b01;
        end else if (wb_wreg && (wb_wa != `REG_NOP) && (wb_wa == exe_rs1_addr)) begin
            // WB 阶段前推
            forward_src1 = 2'b10;
        end else begin
            // 不需要前推，使用原始值
            forward_src1 = 2'b00;
        end
    end

    // 前推逻辑 - 源操作数2
    always @(*) begin
        if (mem_wreg && (mem_wa != `REG_NOP) && (mem_wa == exe_rs2_addr)) begin
            // MEM 阶段前推优先级更高
            forward_src2 = 2'b01;
        end else if (wb_wreg && (wb_wa != `REG_NOP) && (wb_wa == exe_rs2_addr)) begin
            // WB 阶段前推
            forward_src2 = 2'b10;
        end else begin
            // 不需要前推，使用原始值
            forward_src2 = 2'b00;
        end
    end

endmodule
