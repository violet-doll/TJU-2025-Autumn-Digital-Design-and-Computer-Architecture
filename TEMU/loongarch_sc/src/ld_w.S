#include "regdef.h"
#include "trap.h"

    .section .text
    .globl  _start

_start:
    lu12i.w $r13, 0x12345
    ori     $r13, $r13, 0x678

    lu12i.w $r12, 0x12345
    ori     $r12, $r12, 0x678

    ld.w    $r14, $r12, 0

    beq     $r13, $r14, good
    HIT_BAD_TRAP

good:
    HIT_GOOD_TRAP