#include "helper.h"
#include "monitor.h"
#include "reg.h"

extern uint32_t instr;
extern char assembly[80];

/* decode I12-type instrucion with unsigned immediate */
static void decode_ui12_type(uint32_t instr) {

	op_src1->type = OP_TYPE_REG;
	op_src1->reg = (instr >> 5) & 0x0000001F;
	op_src1->val = reg_w(op_src1->reg);

	op_src2->type = OP_TYPE_IMM;
	op_src2->imm = (instr >> 10) & 0x00000FFF;
	op_src2->val = op_src2->imm;

	op_dest->type = OP_TYPE_REG;
	op_dest->reg = instr & 0x0000001F;
}


make_helper(ori) {

	decode_ui12_type(instr);
	reg_w(op_dest->reg) = op_src1->val | op_src2->val;
	sprintf(assembly, "ori\t%s,\t%s,\t0x%03x", REG_NAME(op_dest->reg), REG_NAME(op_src1->reg), op_src2->imm);
}

