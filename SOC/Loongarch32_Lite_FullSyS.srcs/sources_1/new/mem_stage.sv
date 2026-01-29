`include "defines.v"

// 访存阶段
module mem_stage (
    input wire [    `ALUOP_BUS] mem_aluop_i,
    input wire [ `REG_ADDR_BUS] mem_wa_i,
    input wire                  mem_wreg_i,
    input wire [      `REG_BUS] mem_wd_i,
    input wire [      `REG_BUS] mem_rkd_value_i,
    input wire [`INST_ADDR_BUS] mem_debug_wb_pc,

    // 存储器接口
    output wire data_sram_en,
    output wire [3:0] data_sram_we,
    output wire [31:0] data_sram_addr,
    output wire [31:0] data_sram_wdata,
    input wire [31:0] data_sram_rdata,

    output wire [`REG_ADDR_BUS] mem_wa_o,
    output wire mem_wreg_o,
    output wire [`REG_BUS] mem_dreg_o,
    output wire [`INST_ADDR_BUS] debug_wb_pc
);

    assign mem_wa_o = mem_wa_i;
    assign mem_wreg_o = mem_wreg_i;
    assign debug_wb_pc = mem_debug_wb_pc;

    // 存储器控制
    wire is_load = (mem_aluop_i == `LoongArch32_LD_B || mem_aluop_i == `LoongArch32_LD_W);
    wire is_store = (mem_aluop_i == `LoongArch32_ST_B || mem_aluop_i == `LoongArch32_ST_W);

    assign data_sram_en   = is_load | is_store;
    assign data_sram_addr = mem_wd_i;

    // 写使能
    wire [1:0] addr_low = mem_wd_i[1:0];
    assign data_sram_we = 
        (mem_aluop_i == `LoongArch32_ST_W) ? 4'b1111 :
        (mem_aluop_i == `LoongArch32_ST_B) ? (4'b0001 << addr_low) : 4'b0000;

    // 写数据
    assign data_sram_wdata = 
        (mem_aluop_i == `LoongArch32_ST_B) ? {4{mem_rkd_value_i[7:0]}} : mem_rkd_value_i;

    // 读数据
    wire [7:0] byte_read = 
        (addr_low == 2'b00) ? data_sram_rdata[7:0] :
        (addr_low == 2'b01) ? data_sram_rdata[15:8] :
        (addr_low == 2'b10) ? data_sram_rdata[23:16] : data_sram_rdata[31:24];

    assign mem_dreg_o = 
        (mem_aluop_i == `LoongArch32_LD_B) ? {{24{byte_read[7]}}, byte_read} :
        (mem_aluop_i == `LoongArch32_LD_W) ? data_sram_rdata :
        mem_wd_i;

endmodule
