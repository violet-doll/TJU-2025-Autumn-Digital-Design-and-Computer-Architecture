#ifndef __REG_H__
#define __REG_H__

#include "common.h"

typedef struct {
    union {
        union {
            uint32_t _32;
            uint16_t _16;
            uint8_t _8;
        } gpr[32];

        /* Do NOT change the order of the GPRs' definitions. */
        struct {
            uint32_t zero, ra, tp, sp, a0, a1, a2, a3;
            uint32_t a4, a5, a6, a7, t0, t1, t2, t3;
            uint32_t t4, t5, t6, t7, t8, x, fp, s0;
            uint32_t s1, s2, s3, s4, s5, s6, s7, s8;
        };
    };
    uint32_t pc;

} CPU_state;

extern CPU_state cpu;

static inline int check_reg_index(int index) {
    assert(index >= 0 && index < 32);
    return index;
}

#define reg_w(index) (cpu.gpr[check_reg_index(index)]._32)

extern const char* regfile[];

#endif
