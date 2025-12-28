#include "regdef.h"
#include "trap.h"

    .section .text
    .globl  _start

_start:
    # 测试用例1：不等时分支
    # 预期：r12 != r13，应该跳转到label1
    lu12i.w $r12, 0x00000      # r12 = 0
    ori     $r12, $r12, 0x064  # r12 = 100
    lu12i.w $r13, 0x00000      # r13 = 0
    ori     $r13, $r13, 0x0C8  # r13 = 200
    bne     $r12, $r13, label1 
    HIT_BAD_TRAP            

label1:
    # 测试用例2：相等时分支
    # 预期：r14 == r15，不应该跳转
    lu12i.w $r14, 0x00000      # r14 = 0
    ori     $r14, $r14, 0x02A  # r14 = 42
    lu12i.w $r15, 0x00000      # r15 = 0
    ori     $r15, $r15, 0x02A  # r15 = 42
    bne     $r14, $r15, fail   
    
    # 测试用例3：与零寄存器比较
    # 预期：r16 != r0，应该跳转
    lu12i.w $r16, 0x00000      # r16 = 0
    ori     $r16, $r16, 0x001  # r16 = 1
    bne     $r16, $r0, label2 
    HIT_BAD_TRAP           

label2:
    # 测试用例4：零寄存器 == 零寄存器
    bne     $r0, $r0, fail    
    
    # 测试用例5：不同负数
    # 预期：-1 != -2，应该跳转
    lu12i.w $r17, -1           # r17 = 0xFFFFF000
    ori     $r17, $r17, 0xFFF  # r17 = 0xFFFFFFFF（-1）
    lu12i.w $r18, -1           # r18 = 0xFFFFF000
    ori     $r18, $r18, 0xFFE  # r18 = 0xFFFFFFFE（-2）
    bne     $r17, $r18, label3 
    HIT_BAD_TRAP           

label3:
    # 测试用例6：大数相差1
    # 预期：0x12345678 != 0x12345679，应该跳转
    lu12i.w $r19, 0x12345      # r19 = 0x12345000
    ori     $r19, $r19, 0x678  # r19 = 0x12345678
    lu12i.w $r20, 0x12345      # r20 = 0x12345000
    ori     $r20, $r20, 0x679  # r20 = 0x12345679
    bne     $r19, $r20, success
    HIT_BAD_TRAP     

success:
    # 所有测试通过
    HIT_GOOD_TRAP

fail:
    HIT_BAD_TRAP
