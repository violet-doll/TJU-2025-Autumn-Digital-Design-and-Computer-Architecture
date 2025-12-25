#include "regdef.h"
#include "trap.h"

    .section .text
    .globl  _start

_start:
    li.w   $r12, 0x1           # r12 = 1
    li.w   $r13, 0x2           # r13 = 2
    add.w  $r14, $r12, $r13    # r14 = 3

    HIT_GOOD_TRAP