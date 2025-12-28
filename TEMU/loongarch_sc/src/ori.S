#include "regdef.h"
#include "trap.h"

    .section .text
    .globl  _start

_start:
    # 测试用例1：与零做或运算
    # 预期：r12 = 0x00000ABC
    lu12i.w $r12, 0x00000      # r12 = 0x00000000
    ori     $r12, $r12, 0xABC  # r12 = 0x00000ABC
    
    # 测试用例2：与全1做或运算
    # 预期：r13 = 0x00000FFF
    lu12i.w $r13, 0x00000      # r13 = 0x00000000
    ori     $r13, $r13, 0xFFF  # r13 = 0x00000FFF
    
    # 测试用例3：与零立即数做或运算
    # 预期：r14 = 0x12345000
    lu12i.w $r14, 0x12345      # r14 = 0x12345000
    ori     $r14, $r14, 0x000  # r14 = 0x12345000（无变化）
    
    # 测试用例4：结合lu12i.w和ori创建完整的32位值
    # 预期：r15 = 0x12345678
    lu12i.w $r15, 0x12345      # r15 = 0x12345000
    ori     $r15, $r15, 0x678  # r15 = 0x12345678
    
    # 测试用例5：另一个32位值
    # 预期：r16 = 0xABCDE123
    lu12i.w $r16, -344098     # r16 = 0xABCDE000
    ori     $r16, $r16, 0x123  # r16 = 0xABCDE123
    
    # 测试用例6：与模式做或运算
    # 预期：r17 = 0xFFFFF555
    lu12i.w $r17, -1           # r17 = 0xFFFFF000
    ori     $r17, $r17, 0x555  # r17 = 0xFFFFF555
    
    # 所有测试通过
    HIT_GOOD_TRAP
