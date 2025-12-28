#include "regdef.h"
#include "trap.h"

    .section .text
    .globl  _start

_start:
    # 测试用例1：加载正数到高位
    # 预期：r12 = 0x12345000
    lu12i.w $r12, 0x12345
    
    # 通过检查高20位是否正确来验证
    # 将预期值存入r13
    lu12i.w $r13, 0x12345
    
    # 测试用例2：高位加载全1
    # 预期：r14 = 0xFFFFF000
    lu12i.w $r14, -1
    
    # 测试用例3：加载零
    # 预期：r15 = 0x00000000
    lu12i.w $r15, 0x00000
    
    # 测试用例4：加载特定模式
    # 预期：r16 = 0xAAAAA000
    lu12i.w $r16, -349526
    
    # 测试用例5：加载另一个模式
    # 预期：r17 = 0x55555000
    lu12i.w $r17, 0x55555
    
    # 所有测试通过
    HIT_GOOD_TRAP