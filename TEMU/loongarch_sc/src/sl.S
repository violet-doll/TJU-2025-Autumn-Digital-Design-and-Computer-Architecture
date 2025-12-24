#include "regdef.h"
#include "trap.h"

    .section .text
    .globl  _start

_start:
    li.w    t0, 1
    sll.w   t1, t0, 2        # t1 = 4

    HIT_GOOD_TRAP
