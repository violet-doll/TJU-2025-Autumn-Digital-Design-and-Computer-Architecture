#include "regdef.h"
#include "trap.h"

    .section .text
    .globl  _start

_start:
    pcaddu12i $r12, 0x1
    li.w      $r13, 0x80001000
    beq       $r12, $r13, good
    HIT_BAD_TRAP

good:
    HIT_GOOD_TRAP
