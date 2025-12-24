#include "regdef.h"
#include "trap.h"

    .section .text
    .globl  _start

_start:
    lu12i.w t0, 0x12345       # t0 = 0x12345000

    HIT_GOOD_TRAP
