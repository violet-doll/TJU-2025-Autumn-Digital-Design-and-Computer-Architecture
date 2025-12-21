#include "temu.h"
#include <stdlib.h>

CPU_state cpu;

const char *regfile[] = {"$zero", "ra", "$tp", "$sp", "a0", "$a1", "$a2", "$a3", "$a4", "$a5", "$a6", "$a7", "$t0", "$t1", "$t2", "$t3", "$t4", "$t5", "$t6", "$t7", "$t8", "$x", "$fp", "$s0", "$s1", "$s2", "$s3", "$s4", "$s5", "$s6", "$s7", "$s8"};

void display_reg() {
        int i;
        for(i = 0; i < 32; i ++) {
                printf("%s\t\t0x%08x\t\t%d\n", regfile[i], cpu.gpr[i]._32, cpu.gpr[i]._32);
        }

        printf("%s\t\t0x%08x\t\t%d\n", "$pc", cpu.pc, cpu.pc);
}

