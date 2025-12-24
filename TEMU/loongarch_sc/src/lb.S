#include "regdef.h"
#include "trap.h"

    .section .text
    .globl  _start

_start:
    la      t0, byte_data
    ld.b    t1, t0, 0
    # t1 should be 0x12

    ld.b    t2, t0, 1
    # t2 should be 0x34

    HIT_GOOD_TRAP

    .data
byte_data:
    .byte 0x12, 0x34, 0x56, 0x78
