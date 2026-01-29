`timescale 1ns / 1ps

// 全局宏

// 控制参数
`define RST_ENABLE      1'b0
`define RST_DISABLE     1'b1
`define ZERO_WORD       32'h00000000
`define WRITE_ENABLE    1'b1
`define WRITE_DISABLE   1'b0
`define READ_ENABLE     1'b1
`define READ_DISABLE    1'b0
`define TRUE_V          1'b1
`define FALSE_V         1'b0
`define PC_INIT         32'h80000000

// 总线宽度
`define WORD_BUS        31: 0
`define DOUBLE_REG_BUS  63: 0
`define INST_ADDR_BUS   31: 0
`define INST_BUS        31: 0
`define ALUOP_BUS       7 : 0
`define ALUTYPE_BUS     2 : 0
`define BSEL_BUS        3 : 0

// 控制信号
`define SHIFT_ENABLE    1'b1
`define RT_ENABLE       1'b1
`define SIGNED_EXT      1'b1
`define IMM_ENABLE      1'b1
`define UPPER_ENABLE    1'b1
`define MREG_ENABLE     1'b1

// 运算类型
`define NOP             3'b000
`define ARITH           3'b001
`define LOGIC           3'b010
`define MOVE            3'b011
`define SHIFT           3'b100

// 运算操作码
`define LoongArch32_LU12I_W         8'h05
`define LoongArch32_SLL             8'h11
`define LoongArch32_SRL_W           8'h12
`define LoongArch32_ADD_W           8'h18
`define LoongArch32_ADDI_W          8'h19
`define LoongArch32_OR              8'h1A
`define LoongArch32_ANDI            8'h1C
`define LoongArch32_ORI             8'h1D
`define LoongArch32_XOR             8'h1E
`define LoongArch32_SLTUI           8'h27
`define LoongArch32_MUL_W           8'h30
`define LoongArch32_MULH_W          8'h31
`define LoongArch32_DIV_W           8'h32
`define LoongArch32_MOD_W           8'h33
`define LoongArch32_LD_B            8'h90
`define LoongArch32_LD_W            8'h92
`define LoongArch32_ST_B            8'h98
`define LoongArch32_ST_W            8'h9A
`define LoongArch32_PCADDU12I       8'h9B
`define LoongArch32_BEQ             8'h58
`define LoongArch32_BNE             8'h5C
`define LoongArch32_BLT             8'h60

// 寄存器堆
`define REG_BUS         31: 0
`define REG_ADDR_BUS    4 : 0
`define REG_NUM         32
`define REG_NOP         5'b00000
