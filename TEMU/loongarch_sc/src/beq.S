#include "regdef.h"
#include "trap.h"

    .section .text
    .globl  _start

_start:
    li.w    t0, 1
    li.w    t1, 1
    beq     t0, t1, target
    HIT_BAD_TRAP

target:
    li.w    t0, 1
    li.w    t1, 2
    beq     t0, t1, bad
    HIT_GOOD_TRAP

bad:
    HIT_BAD_TRAP
