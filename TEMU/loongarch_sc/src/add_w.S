#include "regdef.h"
#include "trap.h"

    .section .text
    .globl  _start

_start:
    # 测试用例1：两正数相加
    # 预期：r14 = 100 + 200 = 300
    lu12i.w $r12, 0x00000      # r12 = 0
    ori     $r12, $r12, 0x064  # r12 = 100
    lu12i.w $r13, 0x00000      # r13 = 0
    ori     $r13, $r13, 0x0C8  # r13 = 200
    add.w   $r14, $r12, $r13   # r14 = 300
    
    # 测试用例2：加零
    # 预期：r15 = 42 + 0 = 42
    lu12i.w $r12, 0x00000      # r12 = 0
    ori     $r12, $r12, 0x02A  # r12 = 42
    add.w   $r15, $r12, $r0    # r15 = 42
    
    # 测试用例3：正数和负数相加
    # 预期：r16 = 100 + (-50) = 50
    lu12i.w $r12, 0x00000      # r12 = 0
    ori     $r12, $r12, 0x064  # r12 = 100
    lu12i.w $r13, -1           # r13 = 0xFFFFF000
    ori     $r13, $r13, 0xFCE  # r13 = 0xFFFFFFCE（-50的补码）
    add.w   $r16, $r12, $r13   # r16 = 50
    
    # 测试用例4：两负数相加
    # 预期：r17 = (-10) + (-20) = -30
    lu12i.w $r12, -1           # r12 = 0xFFFFF000
    ori     $r12, $r12, 0xFF6  # r12 = 0xFFFFFFF6（-10）
    lu12i.w $r13, -1           # r13 = 0xFFFFF000
    ori     $r13, $r13, 0xFEC  # r13 = 0xFFFFFFEC（-20）
    add.w   $r17, $r12, $r13   # r17 = 0xFFFFFFE2（-30）
    
    # 测试用例5：相加得零
    # 预期：r18 = 123 + (-123) = 0
    lu12i.w $r12, 0x00000      # r12 = 0
    ori     $r12, $r12, 0x07B  # r12 = 123
    lu12i.w $r13, -1           # r13 = 0xFFFFF000
    ori     $r13, $r13, 0xF85  # r13 = 0xFFFFFF85（-123）
    add.w   $r18, $r12, $r13   # r18 = 0
    
    # 测试用例6：测试溢出
    # 预期：0x7FFFFFFF + 1 = 0x80000000
    lu12i.w $r12, 0x7FFFF      # r12 = 0x7FFFF000
    ori     $r12, $r12, 0xFFF  # r12 = 0x7FFFFFFF
    lu12i.w $r13, 0x00000      # r13 = 0
    ori     $r13, $r13, 0x001  # r13 = 1
    add.w   $r19, $r12, $r13   # r19 = 0x80000000
    
    # 所有测试通过
    HIT_GOOD_TRAP