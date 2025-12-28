#include "regdef.h"
#include "trap.h"

    .section .text
    .globl  _start

_start:
    # 测试用例1：相同值做异或
    # 预期：r14 = 0xABC ^ 0xABC = 0
    lu12i.w $r12, 0x00000      # r12 = 0
    ori     $r12, $r12, 0xABC  # r12 = 0xABC
    xor     $r14, $r12, $r12   # r14 = 0
    
    # 测试用例2：与零做异或
    # 预期：r15 = 0x123 ^ 0 = 0x123
    lu12i.w $r12, 0x00000      # r12 = 0
    ori     $r12, $r12, 0x123  # r12 = 0x123
    xor     $r15, $r12, $r0    # r15 = 0x123
    
    # 测试用例3：与全1做异或
    # 预期：r16 = 0x0F0 ^ 0xFFF = 0xF0F
    lu12i.w $r12, 0x00000      # r12 = 0
    ori     $r12, $r12, 0x0F0  # r12 = 0x0F0
    lu12i.w $r13, 0x00000      # r13 = 0
    ori     $r13, $r13, 0xFFF  # r13 = 0xFFF
    xor     $r16, $r12, $r13   # r16 = 0xF0F
    
    # 测试用例4：互补模式做异或
    # 预期：r17 = 0xAAAAAAAA ^ 0x55555555 = 0xFFFFFFFF
    lu12i.w $r12, -349526     # r12 = 0xAAAAA000
    ori     $r12, $r12, 0xAAA  # r12 = 0xAAAAAAAA
    lu12i.w $r13, 0x55555      # r13 = 0x55555000
    ori     $r13, $r13, 0x555  # r13 = 0x55555555
    xor     $r17, $r12, $r13   # r17 = 0xFFFFFFFF
    
    # 测试用例5：相同全模式做异或
    # 预期：r18 = 0xFFFFFFFF ^ 0xFFFFFFFF = 0
    lu12i.w $r12, -1           # r12 = 0xFFFFF000
    ori     $r12, $r12, 0xFFF  # r12 = 0xFFFFFFFF
    xor     $r18, $r12, $r12   # r18 = 0
    
    # 测试用例6：翻转特定位
    # 预期：r19 = 0xF0F0F0F0 ^ 0x0F0F0F0F = 0xFFFFFFFF
    lu12i.w $r12, -61681      # r12 = 0xF0F0F000
    ori     $r12, $r12, 0x0F0  # r12 = 0xF0F0F0F0
    lu12i.w $r13, 0x0F0F0      # r13 = 0x0F0F0000
    ori     $r13, $r13, 0xF0F  # r13 = 0x0F0F0F0F
    xor     $r19, $r12, $r13   # r19 = 0xFFFFFFFF
    
    # 所有测试通过
    HIT_GOOD_TRAP
