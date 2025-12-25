#include "regdef.h"
#include "trap.h"

    .section .text
    .globl  _start

_start:
    lu12i.w $r12, 0x7ffff
    li.w    $r13, 0x7ffff
    beq     $r12, $r13, pass
    HIT_BAD_TRAP

pass:
    HIT_GOOD_TRAP