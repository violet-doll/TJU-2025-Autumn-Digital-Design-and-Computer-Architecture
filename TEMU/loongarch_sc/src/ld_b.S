#include "regdef.h"
#include "trap.h"

    .section .text
    .globl  _start

_start:
    lu12i.w $r12, 0x1c000

    addi.w  $r13, $r0, -1

    st.b    $r13, $r12, 0

    ld.b    $r14, $r12, 0

    beq     $r13, $r14, good

    HIT_BAD_TRAP

good:
    HIT_GOOD_TRAP