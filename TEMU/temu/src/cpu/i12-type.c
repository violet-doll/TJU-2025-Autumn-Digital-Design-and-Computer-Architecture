#include "../include/memory/memory.h"
#include "helper.h"
#include "monitor.h"
#include "reg.h"

extern uint32_t instr;
extern char assembly[80];

// 指令结构：10 位 opcode + 12 位 imm + 5 位 rj + 5 位 rd

/* decode I12-type instrucion with unsigned immediate */
static void decode_ui12_type(uint32_t instr) {
    op_src1->type = OP_TYPE_REG;
    op_src1->reg = (instr >> 5) & 0x0000001F;
    op_src1->val = reg_w(op_src1->reg);

    op_src2->type = OP_TYPE_IMM;
    op_src2->imm = (instr >> 10) & 0x00000FFF;
    // 无符号拓展
    op_src2->val = op_src2->imm;

    op_dest->type = OP_TYPE_REG;
    op_dest->reg = instr & 0x0000001F;
}

/* decode I12-type instrucion with signed immediate */
static void decode_si12_type(uint32_t instr) {
    op_src1->type = OP_TYPE_REG;
    op_src1->reg = (instr >> 5) & 0x0000001F;
    op_src1->val = reg_w(op_src1->reg);

    op_src2->type = OP_TYPE_IMM;

    // 取 12 位立即数
    int32_t imm = (instr >> 10) & 0x00000FFF;
    // 有符号扩展：如果 12 位 imm 第 11 位是 1，就把它前面的位都变成 1
    if (imm & 0x800) {
        imm |= 0xFFFFF000;
    }

    op_src2->imm = imm;
    op_src2->val = imm;

    op_dest->type = OP_TYPE_REG;
    op_dest->reg = instr & 0x0000001F;
}

make_helper(ori) {
    decode_ui12_type(instr);
    reg_w(op_dest->reg) = op_src1->val | op_src2->val;
    sprintf(assembly, "ori\t%s,\t%s,\t0x%03x", REG_NAME(op_dest->reg),
            REG_NAME(op_src1->reg), op_src2->imm);
}

make_helper(addi_w) {
    decode_si12_type(instr);
    reg_w(op_dest->reg) = (op_src1->val + op_src2->val);
    sprintf(assembly, "addi.w\t%s,\t%s,\t0x%03x", REG_NAME(op_dest->reg),
            REG_NAME(op_src1->reg), op_src2->imm);
}

make_helper(andi) {
    decode_ui12_type(instr);
    reg_w(op_dest->reg) = op_src1->val & op_src2->val;
    sprintf(assembly, "andi\t%s,\t%s,\t0x%03x", REG_NAME(op_dest->reg),
            REG_NAME(op_src1->reg), op_src2->imm);
}

make_helper(st_b) {
    decode_si12_type(instr);
    uint32_t addr = op_src1->val + op_src2->val;
    uint8_t data = reg_w(op_dest->reg) & 0xFF;
    mem_write(addr, 1, data);
    sprintf(assembly, "st.b\t%s,\t%s,\t0x%03x", REG_NAME(op_dest->reg),
            REG_NAME(op_src1->reg), op_src2->imm);
}

make_helper(ld_b) {
    decode_si12_type(instr);
    uint32_t addr = op_src1->val + op_src2->val;
    // 符号拓展：8 -> 32
    int8_t data = mem_read(addr, 1);
    reg_w(op_dest->reg) = (int32_t)data;
    sprintf(assembly, "ld.b\t%s,\t%s,\t0x%03x", REG_NAME(op_dest->reg),
            REG_NAME(op_src1->reg), op_src2->imm);
}

make_helper(ld_w) {
    decode_si12_type(instr);
    uint32_t addr = op_src1->val + op_src2->val;
    uint32_t data = mem_read(addr, 4);
    reg_w(op_dest->reg) = data;
    sprintf(assembly, "ld.w\t%s,\t%s,\t0x%03x", REG_NAME(op_dest->reg),
            REG_NAME(op_src1->reg), op_src2->imm);
}

make_helper(st_w) {
    decode_si12_type(instr);
    uint32_t addr = op_src1->val + op_src2->val;
    uint32_t data = reg_w(op_dest->reg);
    mem_write(addr, 4, data);
    sprintf(assembly, "st.w\t%s,\t%s,\t0x%03x", REG_NAME(op_dest->reg), REG_NAME(op_src1->reg), op_src2->imm);
}

make_helper(sltui) {
    // sltui 立即数是 sign-extended 12-bit
    decode_si12_type(instr); 
    // 比较时视为无符号数
    if (op_src1->val < op_src2->val) {
        reg_w(op_dest->reg) = 1;
    } else {
        reg_w(op_dest->reg) = 0;
    }
    sprintf(assembly, "sltui\t%s,\t%s,\t0x%03x", REG_NAME(op_dest->reg), REG_NAME(op_src1->reg), op_src2->imm);
}