#include "regdef.h"
#include "trap.h"

    .section .text
    .globl  _start

_start:
    # 测试用例1：无符号小于比较
    # 预期：5 < 10 = 1
    lu12i.w $r12, 0x00000      # r12 = 0
    ori     $r12, $r12, 0x005  # r12 = 5
    sltui   $r14, $r12, 10     # r14 = 1
    
    # 测试用例2：无符号相等比较
    # 预期：10 < 10 = 0
    lu12i.w $r12, 0x00000      # r12 = 0
    ori     $r12, $r12, 0x00A  # r12 = 10
    sltui   $r15, $r12, 10     # r15 = 0
    
    # 测试用例3：无符号大于比较
    # 预期：20 < 10 = 0
    lu12i.w $r12, 0x00000      # r12 = 0
    ori     $r12, $r12, 0x014  # r12 = 20
    sltui   $r16, $r12, 10     # r16 = 0
    
    # 测试用例4：与零比较
    # 预期：0 < 1 = 1
    sltui   $r17, $r0, 1       # r17 = 1
    
    # 测试用例5：测试立即数的符号扩展
    # -1（12位中的0xFFF）符号扩展为0xFFFFFFFF
    # 作为无符号数：100 < 0xFFFFFFFF = 1
    lu12i.w $r12, 0x00000      # r12 = 0
    ori     $r12, $r12, 0x064  # r12 = 100
    sltui   $r18, $r12, -1     # r18 = 1（100 < 0xFFFFFFFF 无符号）
    
    # 测试用例6：大数的无符号比较
    # 0xFFFFFFF0 < 0xFFFFFFFF = 1
    lu12i.w $r12, -1           # r12 = 0xFFFFF000
    ori     $r12, $r12, 0xFF0  # r12 = 0xFFFFFFF0
    sltui   $r19, $r12, -1     # r19 = 1（0xFFFFFFF0 < 0xFFFFFFFF）
    
    # 测试用例7：最大正立即数测试
    # 0 < 2047 = 1
    sltui   $r20, $r0, 2047    # r20 = 1
    
    # 测试用例8：大无符号值vs小立即数
    # 0xFFFFFFFF < 1 = 0
    lu12i.w $r12, -1           # r12 = 0xFFFFF000
    ori     $r12, $r12, 0xFFF  # r12 = 0xFFFFFFFF
    sltui   $r21, $r12, 1      # r21 = 0
    
    # 所有测试通过
    HIT_GOOD_TRAP
