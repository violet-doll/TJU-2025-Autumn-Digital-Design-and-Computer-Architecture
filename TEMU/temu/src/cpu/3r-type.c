#include "helper.h"
#include "monitor.h"
#include "reg.h"

extern uint32_t instr;
extern char assembly[80];

// 指令结构：17 位 opcode + 5 位 rk + 5 位 rj + 5 位 rd

/* decode 3R-type instrucion */
static void decode_3r_type(uint32_t instr) {
    // rj (源寄存器 1)：第 5 到 9 位
    op_src1->type = OP_TYPE_REG;
    op_src1->reg = (instr >> 5) & 0x0000001F;
    op_src1->val = reg_w(op_src1->reg);

    // rk (源寄存器 2)：第 10 到 14 位
    op_src2->type = OP_TYPE_REG;
    op_src2->reg = (instr >> 10) & 0x0000001F;
    op_src2->val = reg_w(op_src2->reg);

    // rd (目的寄存器)：第 0 到 4 位
    op_dest->type = OP_TYPE_REG;
    op_dest->reg = instr & 0x0000001F;
}

make_helper(or) {
    decode_3r_type(instr);
    // 访问寄存器的 32 位值
    reg_w(op_dest->reg) = (op_src1->val | op_src2->val);
    sprintf(assembly, "or\t%s,\t%s,\t%s", REG_NAME(op_dest->reg),
            REG_NAME(op_src1->reg), REG_NAME(op_src2->reg));
}

make_helper(add_w) {
    decode_3r_type(instr);
    reg_w(op_dest->reg) = (op_src1->val + op_src2->val);
    sprintf(assembly, "add.w\t%s,\t%s,\t%s", REG_NAME(op_dest->reg),
            REG_NAME(op_src1->reg), REG_NAME(op_src2->reg));
}