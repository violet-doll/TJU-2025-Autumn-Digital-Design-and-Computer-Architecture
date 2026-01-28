`timescale 1ns / 1ps

//==============================================================================
// File: defines.v
// Description: LoongArch32 CPU全局宏定义
// Author: TJU Digital Design Course
//==============================================================================

//------------------------------------------------------------------------------
// 全局控制参数
//------------------------------------------------------------------------------
`define RST_ENABLE      1'b0                // 复位有效电平
`define RST_DISABLE     1'b1                // 复位无效电平
`define ZERO_WORD       32'h00000000        // 32位零值
`define WRITE_ENABLE    1'b1                // 写使能
`define WRITE_DISABLE   1'b0                // 写禁止
`define READ_ENABLE     1'b1                // 读使能
`define READ_DISABLE    1'b0                // 读禁止
`define TRUE_V          1'b1                // 逻辑真
`define FALSE_V         1'b0                // 逻辑假
`define PC_INIT         32'h80000000        // PC初始值

//------------------------------------------------------------------------------
// 数据通路宽度定义
//------------------------------------------------------------------------------
`define WORD_BUS        31: 0               // 32位字
`define DOUBLE_REG_BUS  63: 0               // 64位双字
`define INST_ADDR_BUS   31: 0               // 指令地址总线
`define INST_BUS        31: 0               // 指令数据宽度
`define ALUOP_BUS       7 : 0               // ALU操作码宽度
`define ALUTYPE_BUS     2 : 0               // ALU类型宽度
`define BSEL_BUS        3 : 0               // 字节选择宽度

//------------------------------------------------------------------------------
// 控制信号
//------------------------------------------------------------------------------
`define SHIFT_ENABLE    1'b1                // 移位使能
`define RT_ENABLE       1'b1                // rt选择使能
`define SIGNED_EXT      1'b1                // 符号扩展使能
`define IMM_ENABLE      1'b1                // 立即数选择使能
`define UPPER_ENABLE    1'b1                // 高位加载使能
`define MREG_ENABLE     1'b1                // 存储器访问使能

//------------------------------------------------------------------------------
// ALU运算类型
//------------------------------------------------------------------------------
`define NOP             3'b000              // 空操作
`define ARITH           3'b001              // 算术运算
`define LOGIC           3'b010              // 逻辑运算
`define MOVE            3'b011              // 数据传送
`define SHIFT           3'b100              // 移位运算

//------------------------------------------------------------------------------
// ALU操作码 (LoongArch32指令编码)
//------------------------------------------------------------------------------
`define LoongArch32_LU12I_W         8'h05   // 高位立即数加载
`define LoongArch32_SLL             8'h11   // 逻辑左移
`define LoongArch32_SRL_W           8'h12   // 逻辑右移
`define LoongArch32_ADD_W           8'h18   // 加法
`define LoongArch32_ADDI_W          8'h19   // 立即数加法
`define LoongArch32_OR              8'h1A   // 或运算
`define LoongArch32_ANDI            8'h1C   // 立即数与运算
`define LoongArch32_ORI             8'h1D   // 立即数或运算
`define LoongArch32_XOR             8'h1E   // 异或运算
`define LoongArch32_SLTUI           8'h27   // 无符号比较置位
`define LoongArch32_MUL_W           8'h30   // 乘法(低32位)
`define LoongArch32_MULH_W          8'h31   // 乘法(高32位)
`define LoongArch32_DIV_W           8'h32   // 除法
`define LoongArch32_MOD_W           8'h33   // 取模
`define LoongArch32_LD_B            8'h90   // 字节加载
`define LoongArch32_LD_W            8'h92   // 字加载
`define LoongArch32_ST_B            8'h98   // 字节存储
`define LoongArch32_ST_W            8'h9A   // 字存储
`define LoongArch32_PCADDU12I       8'h9B   // PC相对地址计算
`define LoongArch32_BEQ             8'h58   // 相等分支
`define LoongArch32_BNE             8'h5C   // 不等分支
`define LoongArch32_BLT             8'h60   // 小于分支

//------------------------------------------------------------------------------
// 寄存器堆参数
//------------------------------------------------------------------------------
`define REG_BUS         31: 0               // 寄存器数据宽度
`define REG_ADDR_BUS    4 : 0               // 寄存器地址宽度
`define REG_NUM         32                  // 寄存器数量
`define REG_NOP         5'b00000            // 零寄存器地址
