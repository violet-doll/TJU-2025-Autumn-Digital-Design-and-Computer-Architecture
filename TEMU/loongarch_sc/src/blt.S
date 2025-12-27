#include "regdef.h"
#include "trap.h"

    .section .text
    .globl  _start

_start:
    li.w    $r12, 10
    li.w    $r13, 20
    blt     $r12, $r13, label1
    
    HIT_BAD_TRAP

label1:
    blt     $r13, $r12, error
    
    li.w    $r14, -5
    li.w    $r15, 5
    blt     $r14, $r15, label2
    
    HIT_BAD_TRAP

label2:
    HIT_GOOD_TRAP

error:
    HIT_BAD_TRAP