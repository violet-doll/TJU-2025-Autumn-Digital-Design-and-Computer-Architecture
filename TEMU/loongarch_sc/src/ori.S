#include "regdef.h"
#include "trap.h"

    .section .text
    .globl  _start

_start:
    li.w    t0, 0x0
    ori     t1, t0, 0x123    # t1 = 0x123

    HIT_GOOD_TRAP
