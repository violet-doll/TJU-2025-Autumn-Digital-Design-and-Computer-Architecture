#include "regdef.h"
#include "trap.h"

    .section .text
    .globl  _start

_start:
    li.w    t0, 0xFF
    andi    t1, t0, 0xF0     # t1 = 0xF0

    HIT_GOOD_TRAP
