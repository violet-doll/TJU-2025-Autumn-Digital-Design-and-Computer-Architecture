#include "helper.h"
#include "monitor.h"
#include "reg.h"

extern uint32_t instr;
extern char assembly[80];

// 此文件用于处理分支类指令
// 指令结构：6 位 opcode + 16 位 off + 5 位 rj + 5 位 rd

static void decode_b_type(uint32_t instr) {
    // rd (源寄存器 1)：第 0 到 4 位
    op_src1->type = OP_TYPE_REG;
    op_src1->reg = instr & 0x0000001F;
    op_src1->val = reg_w(op_src1->reg);

    // rj (源寄存器 2)：第 5 到 9 位
    op_src2->type = OP_TYPE_REG;
    op_src2->reg = (instr >> 5) & 0x0000001F;
    op_src2->val = reg_w(op_src2->reg);

    // offset (偏移量)：第 10 到 25 位
    uint32_t offset = (instr >> 10) & 0x0000FFFF;
    // 先左移两位
    offset <<= 2;
    // 再进行符号拓展
    if (offset & 0x00040000) offset |= 0xFFF80000;

    op_dest->type = OP_TYPE_IMM;
    op_dest->instr_index = offset;
}

make_helper(beq) {
    decode_b_type(instr);
    if (op_src1->val == op_src2->val) cpu.pc += op_dest->imm - 4;
    sprintf(assembly, "beq\t%s,\t%s,\t0x%x", REG_NAME(op_src1->reg),
            REG_NAME(op_src2->reg), op_dest->imm);
}

make_helper(bne) {
    decode_b_type(instr);
    if (op_src1->val != op_src2->val) cpu.pc += op_dest->imm - 4;
    sprintf(assembly, "bne\t%s,\t%s,\t0x%x", REG_NAME(op_src1->reg), REG_NAME(op_src2->reg), op_dest->imm);
}

make_helper(blt) {
    decode_b_type(instr);
    // blt 是有符号比较
    if ((int32_t)op_src1->val < (int32_t)op_src2->val) cpu.pc += op_dest->imm - 4;
    sprintf(assembly, "blt\t%s,\t%s,\t0x%x", REG_NAME(op_src1->reg), REG_NAME(op_src2->reg), op_dest->imm);
}