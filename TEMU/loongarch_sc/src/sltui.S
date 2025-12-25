#include "regdef.h"
#include "trap.h"

    .section .text
    .globl  _start

_start:
    li.w    $r12, 10
    sltui   $r13, $r12, 11
    li.w    $r14, 0
    beq     $r13, $r14, error

    sltui   $r13, $r12, 10
    li.w    $r14, 1
    beq     $r13, $r14, error

    sltui   $r13, $r12, 9
    li.w    $r14, 1
    beq     $r13, $r14, error

    HIT_GOOD_TRAP
error:
    HIT_BAD_TRAP
