#include "helper.h"
#include "monitor.h"
#include "reg.h"

extern uint32_t instr;
extern char assembly[80];

/* decode 3R-type instrucion */
static void decode_3r_type(uint32_t instr) {

	op_src1->type = OP_TYPE_REG;
	op_src1->reg = (instr >> 5) & 0x0000001F;
	op_src1->val = reg_w(op_src1->reg);
	
	op_src2->type = OP_TYPE_REG;
	op_src2->imm = (instr >> 10) & 0x0000001F;
	op_src2->val = reg_w(op_src2->reg);

	op_dest->type = OP_TYPE_REG;
	op_dest->reg = instr & 0x0000001F;
}

make_helper(or) {

	decode_3r_type(instr);
	reg_w(op_dest->reg) = (op_src1->val | op_src2->val);
	sprintf(assembly, "or\t%s,\t%s,\t%s", REG_NAME(op_dest->reg), REG_NAME(op_src1->reg), REG_NAME(op_src2->reg));
}

