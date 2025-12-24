#include "regdef.h"
#include "trap.h"

    .section .text
    .globl  _start

_start:
    li.w   $r12, 0x1           # r12 = 1
    addi.w  $r14, $r12, 0x1    # r14 = 2

good:
    HIT_GOOD_TRAP
bad:
    HIT_BAD_TRAP