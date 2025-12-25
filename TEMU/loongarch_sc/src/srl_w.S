#include "regdef.h"
#include "trap.h"

    .section .text
    .globl  _start

_start:
    li.w    t0, 2
    li.w    t1, 16
    srl.w   t2, t1, t0        # t2 = 4

    HIT_GOOD_TRAP
