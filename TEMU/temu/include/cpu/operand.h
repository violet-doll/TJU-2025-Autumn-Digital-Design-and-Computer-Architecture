#ifndef __OPERAND_H__
#define __OPERAND_H__

enum { OP_TYPE_REG, OP_TYPE_IMM, OP_TYPE_JUMP };

#define OP_STR_SIZE 40

// 操作数结构体
typedef struct {
    uint32_t type;
    union {
        uint32_t reg;         // 寄存器
        uint32_t imm;         // 立即数
        int32_t simm;         // 有符号立即数
        int32_t instr_index;  // 内存偏移
    };
    uint32_t val;  // 求值后的最终结果
} Operand;

typedef struct {
    uint32_t opcode1;
    uint32_t opcode2;
    uint32_t opcode3;
    Operand src1, src2, dest;
} Operands;

#endif
