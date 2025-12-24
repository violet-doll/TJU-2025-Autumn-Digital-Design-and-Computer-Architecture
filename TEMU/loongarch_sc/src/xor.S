#include "regdef.h"
#include "trap.h"

    .section .text
    .globl  _start

_start:
    li.w    t0, 0xFF
    li.w    t1, 0x0F
    xor     t2, t0, t1      # t2 = 0xF0

    HIT_GOOD_TRAP
