#include "regdef.h"
#include "trap.h"

    .section .text
    .globl  _start

_start:
    # 测试用例1：右移0位
    # 预期：r14 = 0xABCD >> 0 = 0xABCD
    lu12i.w $r12, 0x0000A      # r12 = 0x0000A000
    ori     $r12, $r12, 0xBCD  # r12 = 0xABCD
    lu12i.w $r13, 0x00000      # r13 = 0
    srl.w   $r14, $r12, $r13   # r14 = 0xABCD
    
    # 测试用例2：右移1位
    # 预期：r15 = 0x8000 >> 1 = 0x4000
    lu12i.w $r12, 0x00000      # r12 = 0
    ori     $r12, $r12, 0x800  # r12 = 0x800（第11位置位）
    lu12i.w $r13, 0x00000      # r13 = 0
    ori     $r13, $r13, 0x001  # r13 = 1
    srl.w   $r15, $r12, $r13   # r15 = 0x400
    
    # 测试用例3：右移4位
    # 预期：r16 = 0xF0 >> 4 = 0x0F
    lu12i.w $r12, 0x00000      # r12 = 0
    ori     $r12, $r12, 0x0F0  # r12 = 0xF0
    lu12i.w $r13, 0x00000      # r13 = 0
    ori     $r13, $r13, 0x004  # r13 = 4
    srl.w   $r16, $r12, $r13   # r16 = 0x0F
    
    # 测试用例4：右移8位
    # 预期：r17 = 0x12345678 >> 8 = 0x00123456
    lu12i.w $r12, 0x12345      # r12 = 0x12345000
    ori     $r12, $r12, 0x678  # r12 = 0x12345678
    lu12i.w $r13, 0x00000      # r13 = 0
    ori     $r13, $r13, 0x008  # r13 = 8
    srl.w   $r17, $r12, $r13   # r17 = 0x00123456
    
    # 测试用例5：右移31位
    # 预期：r18 = 0x80000000 >> 31 = 0x00000001
    lu12i.w $r12, -524288     # r12 = 0x80000000
    lu12i.w $r13, 0x00000      # r13 = 0
    ori     $r13, $r13, 0x01F  # r13 = 31
    srl.w   $r18, $r12, $r13   # r18 = 0x00000001
    
    # 测试用例6：测试移位量被掩码到5位
    # 移位32应等同于移位0
    # 预期：r19 = 0xFFF >> 32 = 0xFFF（因为32 & 0x1F = 0）
    lu12i.w $r12, 0x00000      # r12 = 0
    ori     $r12, $r12, 0xFFF  # r12 = 0xFFF
    lu12i.w $r13, 0x00000      # r13 = 0
    ori     $r13, $r13, 0x020  # r13 = 32
    srl.w   $r19, $r12, $r13   # r19 = 0xFFF
    
    # 测试用例7：负数的逻辑右移
    # 预期：r20 = 0xFFFFFFFF >> 1 = 0x7FFFFFFF
    lu12i.w $r12, -1           # r12 = 0xFFFFF000
    ori     $r12, $r12, 0xFFF  # r12 = 0xFFFFFFFF
    lu12i.w $r13, 0x00000      # r13 = 0
    ori     $r13, $r13, 0x001  # r13 = 1
    srl.w   $r20, $r12, $r13   # r20 = 0x7FFFFFFF
    
    # 所有测试通过
    HIT_GOOD_TRAP
