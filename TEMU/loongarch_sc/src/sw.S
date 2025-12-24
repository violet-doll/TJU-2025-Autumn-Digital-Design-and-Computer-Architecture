#include "regdef.h"
#include "trap.h"

    .section .text
    .globl  _start

_start:
    li.w    t0, 0xDEADBEEF
    la      t1, data_space
    st.w    t0, t1, 0
    
    ld.w    t2, t1, 0
    # t2 should be 0xDEADBEEF

    HIT_GOOD_TRAP

    .data
data_space:
    .word 0
