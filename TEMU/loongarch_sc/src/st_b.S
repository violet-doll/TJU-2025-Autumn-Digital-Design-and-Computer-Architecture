#include "regdef.h"
#include "trap.h"

    .section .text
    .globl  _start

_start:
    # Load base address 0x1c000000 into r12
    lu12i.w $r12, 0x1c000
    
    # Load data 0x12 into r13
    # Using addi.w with $zero (r0)
    addi.w  $r13, $r0, 0x12
    
    # Store byte 0x12 to memory at 0x1c000000
    st.b    $r13, $r12, 0

    HIT_GOOD_TRAP
