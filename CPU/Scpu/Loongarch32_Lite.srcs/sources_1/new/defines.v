`timescale 1ns / 1ps

/*------------------- 全局参数 -------------------*/
`define RST_ENABLE      1'b0                // 复位信号有效
`define RST_DISABLE     1'b1                // 复位信号无效
`define ZERO_WORD       32'h00000000        // 32位的数值0
`define WRITE_ENABLE    1'b1                // 使能写
`define WRITE_DISABLE   1'b0                // 禁止写
`define READ_ENABLE     1'b1                // 使能读
`define READ_DISABLE    1'b0                // 禁止读
`define ALUOP_BUS       7 : 0               // 译码阶段的输出aluop_o的宽度
`define SHIFT_ENABLE    1'b1                // 移位指令使能
`define ALUTYPE_BUS     2 : 0               // 译码阶段的输出alutype_o的宽度
`define TRUE_V          1'b1                // 逻辑"真"
`define FALSE_V         1'b0                // 逻辑"假"
`define WORD_BUS        31: 0               // 32位宽
`define DOUBLE_REG_BUS  63: 0               // 两倍的通用寄存器的数据线宽度
`define RT_ENABLE       1'b1                // rt选择使能
`define SIGNED_EXT      1'b1                // 符号扩展使能
`define IMM_ENABLE      1'b1                // 立即数选择使能
`define UPPER_ENABLE    1'b1                // 立即数移位使能
`define MREG_ENABLE     1'b1                // 写回阶段存储器结果选择信号
`define BSEL_BUS        3 : 0               // 数据存储器字节选择信号宽度
`define PC_INIT         32'h80000000        // PC初始值

/*------------------- 指令字参数 -------------------*/
`define INST_ADDR_BUS   31: 0               // 指令的地址宽度
`define INST_BUS        31: 0               // 指令的数据宽度

// 操作类型alutype
`define NOP             3'b000
`define ARITH           3'b001
`define LOGIC           3'b010
`define MOVE            3'b011
`define SHIFT           3'b100

// 内部操作码aluop
`define LoongArch32_LU12I_W         8'h05 
`define LoongArch32_MFHI            8'h0C
`define LoongArch32_MFLO            8'h0D
`define LoongArch32_SLL             8'h11
`define LoongArch32_SRL_W           8'h12 
`define LoongArch32_MULT            8'h14
`define LoongArch32_ADD_W           8'h18 
`define LoongArch32_ADDI_W          8'h19  
`define LoongArch32_OR              8'h1A 
`define LoongArch32_SUBU            8'h1B
`define LoongArch32_ANDI            8'h1C 
`define LoongArch32_ORI             8'h1D
`define LoongArch32_XOR             8'h1E 
`define LoongArch32_SLT             8'h26
`define LoongArch32_SLTU            8'h27  
`define LoongArch32_LD_B            8'h90 
`define LoongArch32_LD_W            8'h92 
`define LoongArch32_ST_B            8'h98 
`define LoongArch32_ST_W            8'h9A 
`define LoongArch32_PCADDU12I       8'h9B  

/*------------------- 通用寄存器堆参数 -------------------*/
`define REG_BUS         31: 0               // 寄存器数据宽度
`define REG_ADDR_BUS    4 : 0               // 寄存器的地址宽度
`define REG_NUM         32                  // 寄存器数量32个
`define REG_NOP         5'b00000            // 零号寄存器
