#include "regdef.h"
#include "trap.h"

    .section .text
    .globl  _start

_start:
    li.w    t0, 0xF0
    li.w    t1, 0x0F
    or      t2, t0, t1      # t2 = 0xFF

    HIT_GOOD_TRAP
