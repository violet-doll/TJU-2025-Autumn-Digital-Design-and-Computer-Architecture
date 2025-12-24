#include "regdef.h"
#include "trap.h"

    .section .text
    .globl  _start

_start:
    la      t0, data_val
    ld.w    t1, t0, 0
    # t1 should be 0x12345678

    HIT_GOOD_TRAP

    .data
data_val:
    .word 0x12345678
