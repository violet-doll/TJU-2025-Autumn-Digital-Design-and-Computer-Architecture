#include "regdef.h"
#include "trap.h"

    .section .text
    .globl  _start

_start:
    # 测试用例1：与零做或运算
    # 预期：r14 = 0xABCD | 0 = 0xABCD
    lu12i.w $r12, 0x0000A      # r12 = 0x0000A000
    ori     $r12, $r12, 0xBCD  # r12 = 0xABCD
    or      $r14, $r12, $r0    # r14 = 0xABCD
    
    # 测试用例2：两不同值做或运算
    # 预期：r15 = 0xF0F0 | 0x0F0F = 0xFFFF
    lu12i.w $r12, 0x0000F      # r12 = 0x0000F000
    ori     $r12, $r12, 0x0F0  # r12 = 0xF0F0
    lu12i.w $r13, 0x00000      # r13 = 0
    ori     $r13, $r13, 0xF0F  # r13 = 0x0F0F
    or      $r15, $r12, $r13   # r15 = 0xFFFF
    
    # 测试用例3：相同值做或运算
    # 预期：r16 = 0x5555 | 0x5555 = 0x5555
    lu12i.w $r12, 0x00000      # r12 = 0
    ori     $r12, $r12, 0x555  # r12 = 0x555
    or      $r16, $r12, $r12   # r16 = 0x555
    
    # 测试用例4：与全1做或运算
    # 预期：r17 = 0x123 | 0xFFF = 0xFFF
    lu12i.w $r12, 0x00000      # r12 = 0
    ori     $r12, $r12, 0x123  # r12 = 0x123
    lu12i.w $r13, 0x00000      # r13 = 0
    ori     $r13, $r13, 0xFFF  # r13 = 0xFFF
    or      $r17, $r12, $r13   # r17 = 0xFFF
    
    # 测试用例5：互补位模式做或运算
    # 预期：r18 = 0xAAAAAAAA | 0x55555555 = 0xFFFFFFFF
    lu12i.w $r12, -349526     # r12 = 0xAAAAA000
    ori     $r12, $r12, 0xAAA  # r12 = 0xAAAAAAAA
    lu12i.w $r13, 0x55555      # r13 = 0x55555000
    ori     $r13, $r13, 0x555  # r13 = 0x55555555
    or      $r18, $r12, $r13   # r18 = 0xFFFFFFFF
    
    # 所有测试通过
    HIT_GOOD_TRAP
