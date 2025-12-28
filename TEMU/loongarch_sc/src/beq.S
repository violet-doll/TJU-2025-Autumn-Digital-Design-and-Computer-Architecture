#include "regdef.h"
#include "trap.h"

    .section .text
    .globl  _start

_start:
    # 测试用例1：相等时分支
    # 预期：r12 == r13，应该跳转到label1
    lu12i.w $r12, 0x00000      # r12 = 0
    ori     $r12, $r12, 0x042  # r12 = 66
    lu12i.w $r13, 0x00000      # r13 = 0
    ori     $r13, $r13, 0x042  # r13 = 66
    beq     $r12, $r13, label1 
    HIT_BAD_TRAP         

label1:
    # 测试用例2：不等时分支
    # 预期：r14 != r15，不应该跳转
    lu12i.w $r14, 0x00000      # r14 = 0
    ori     $r14, $r14, 0x0A0  # r14 = 100
    lu12i.w $r15, 0x00000      # r15 = 0
    ori     $r15, $r15, 0x0C8  # r15 = 200
    beq     $r14, $r15, fail  
    
    # 测试用例3：与零寄存器比较
    # 预期：r0 == r0，应该跳转
    beq     $r0, $r0, label2  
    HIT_BAD_TRAP      

label2:
    # 测试用例4：负数比较
    # 预期：-1 == -1，应该跳转
    lu12i.w $r16, -1           # r16 = 0xFFFFF000
    ori     $r16, $r16, 0xFFF  # r16 = 0xFFFFFFFF（-1）
    lu12i.w $r17, -1           # r17 = 0xFFFFF000
    ori     $r17, $r17, 0xFFF  # r17 = 0xFFFFFFFF（-1）
    beq     $r16, $r17, label3
    HIT_BAD_TRAP    

label3:
    # 测试用例5：后向分支
    # 预期：应该先前向跳转再继续
    lu12i.w $r18, 0x00000      # r18 = 0
    ori     $r18, $r18, 0x001  # r18 = 1
    beq     $r18, $r18, label4
    HIT_BAD_TRAP

label4:
    lu12i.w $r19, 0x00000      # r19 = 0
    ori     $r19, $r19, 0x005  # r19 = 5
    lu12i.w $r20, 0x00000      # r20 = 0  
    ori     $r20, $r20, 0x00A  # r20 = 10
    beq     $r19, $r20, fail   
    
    # 所有测试通过
    HIT_GOOD_TRAP

fail:
    HIT_BAD_TRAP
