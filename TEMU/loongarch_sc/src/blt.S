#include "regdef.h"
#include "trap.h"

    .section .text
    .globl  _start

_start:
    # 测试用例1：有符号小于
    # 预期：10 < 20，应该跳转
    lu12i.w $r12, 0x00000      # r12 = 0
    ori     $r12, $r12, 0x00A  # r12 = 10
    lu12i.w $r13, 0x00000      # r13 = 0
    ori     $r13, $r13, 0x014  # r13 = 20
    blt     $r12, $r13, label1 
    HIT_BAD_TRAP         

label1:
    # 测试用例2：不小于（相等）
    # 预期：15 < 15，不应该跳转
    lu12i.w $r14, 0x00000      # r14 = 0
    ori     $r14, $r14, 0x00F  # r14 = 15
    blt     $r14, $r14, fail 
    
    # 测试用例3：不小于（大于）
    # 预期：30 < 10，不应该跳转
    lu12i.w $r15, 0x00000      # r15 = 0
    ori     $r15, $r15, 0x01E  # r15 = 30
    lu12i.w $r16, 0x00000      # r16 = 0
    ori     $r16, $r16, 0x00A  # r16 = 10
    blt     $r15, $r16, fail 
    
    # 测试用例4：负数 < 正数（有符号）
    # 预期：-5 < 5，应该跳转
    lu12i.w $r17, -1           # r17 = 0xFFFFF000
    ori     $r17, $r17, 0xFFB  # r17 = 0xFFFFFFFB（-5）
    lu12i.w $r18, 0x00000      # r18 = 0
    ori     $r18, $r18, 0x005  # r18 = 5
    blt     $r17, $r18, label2 
    HIT_BAD_TRAP           

label2:
    # 测试用例5：正数 < 负数（不应跳转）
    # 预期：100 < -10，不应该跳转
    lu12i.w $r19, 0x00000      # r19 = 0
    ori     $r19, $r19, 0x064  # r19 = 100
    lu12i.w $r20, -1           # r20 = 0xFFFFF000
    ori     $r20, $r20, 0xFF6  # r20 = 0xFFFFFFF6（-10）
    blt     $r19, $r20, fail   
    
    # 测试用例6：负数 < 负数
    # 预期：-20 < -5，应该跳转
    lu12i.w $r21, -1           # r21 = 0xFFFFF000
    ori     $r21, $r21, 0xFEC  # r21 = 0xFFFFFFEC（-20）
    lu12i.w $r22, -1           # r22 = 0xFFFFF000
    ori     $r22, $r22, 0xFFB  # r22 = 0xFFFFFFFB（-5）
    blt     $r21, $r22, label3 
    HIT_BAD_TRAP         

label3:
    # 测试用例7：零 < 正数
    # 预期：0 < 1，应该跳转
    lu12i.w $r23, 0x00000      # r23 = 0
    ori     $r23, $r23, 0x001  # r23 = 1
    blt     $r0, $r23, label4 
    HIT_BAD_TRAP         

label4:
    # 测试用例8：负数 < 零
    # 预期：-1 < 0，应该跳转
    lu12i.w $r24, -1           # r24 = 0xFFFFF000
    ori     $r24, $r24, 0xFFF  # r24 = 0xFFFFFFFF（-1）
    blt     $r24, $r0, success
    HIT_BAD_TRAP      

success:
    # 所有测试通过
    HIT_GOOD_TRAP

fail:
    HIT_BAD_TRAP