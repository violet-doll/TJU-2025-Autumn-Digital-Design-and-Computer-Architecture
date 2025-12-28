#include "regdef.h"
#include "trap.h"

    .section .text
    .globl  _start

_start:
    # 测试用例1：与全1做与运算
    # 预期：r12 = 0xABCDEFFF & 0xFFF = 0xEFF
    lu12i.w $r12, 0xABCDE - 0x100000  # r12 = 0xABCDE000
    ori     $r12, $r12, 0xFFF  # r12 = 0xABCDEFFF
    andi    $r13, $r12, 0xFFF  # r13 = 0x00000EFF
    
    # 测试用例2：与零做与运算
    # 预期：r14 = 任意值 & 0 = 0
    lu12i.w $r14, 0x12345      # r14 = 0x12345000
    ori     $r14, $r14, 0x678  # r14 = 0x12345678
    andi    $r15, $r14, 0x000  # r15 = 0x00000000
    
    # 测试用例3：用特定掩码提取位
    # 预期：r16 = 0x5A5 & 0x0F0 = 0x0A0
    lu12i.w $r16, 0x00000      # r16 = 0
    ori     $r16, $r16, 0x5A5  # r16 = 0x5A5
    andi    $r17, $r16, 0x0F0  # r17 = 0x0A0
    
    # 测试用例4：与模式做与运算
    # 预期：r18 = 0xFFF & 0x555 = 0x555
    lu12i.w $r18, 0x00000      # r18 = 0
    ori     $r18, $r18, 0xFFF  # r18 = 0xFFF
    andi    $r19, $r18, 0x555  # r19 = 0x555
    
    # 测试用例5：提取低字节
    # 预期：r20 = 0x12345678 & 0xFF = 0x78
    lu12i.w $r20, 0x12345      # r20 = 0x12345000
    ori     $r20, $r20, 0x678  # r20 = 0x12345678
    andi    $r21, $r20, 0x0FF  # r21 = 0x00000078
    
    # 测试用例6：验证零扩展
    # 预期：r22 = 0xFFFFFFFF & 0xFFF = 0xFFF
    lu12i.w $r22, -1           # r22 = 0xFFFFF000
    ori     $r22, $r22, 0xFFF  # r22 = 0xFFFFFFFF
    andi    $r23, $r22, 0xFFF  # r23 = 0x00000FFF
    
    # 所有测试通过
    HIT_GOOD_TRAP
