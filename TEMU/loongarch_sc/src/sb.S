#include "regdef.h"
#include "trap.h"

    .section .text
    .globl  _start

_start:
    li.w    t0, 0x55
    la      t1, byte_space
    st.b    t0, t1, 0
    
    ld.b    t2, t1, 0
    # t2 should be 0x55

    HIT_GOOD_TRAP

    .data
byte_space:
    .byte 0
