#include "regdef.h"
#include "trap.h"

    .section .text
    .globl  _start

_start:
    # 测试用例1：计算PC + 偏移
    # pcaddu12i rd, imm20 => rd = PC + (imm20 << 12)
    
    pcaddu12i $r12, 0          # r12 = PC + 0 = 此指令的PC
    
    # 测试用例2：加正偏移
    pcaddu12i $r13, 1          # r13 = PC + 0x1000
    
    # 测试用例3：加更大偏移
    pcaddu12i $r14, 0x100      # r14 = PC + 0x100000
    
    # 测试用例4：使用20位最大正值
    pcaddu12i $r15, 0x7FFFF    # r15 = PC + 0x7FFFF000
    
    # 测试用例5：使用模式
    pcaddu12i $r16, 0x12345    # r16 = PC + 0x12345000
    
    # 测试用例6：使用另一个模式
    pcaddu12i $r17, -344098   # r17 = PC + 0xABCDE000
    
    # 测试用例7：计算数据访问地址
    pcaddu12i $r18, 0x10       # r18 = PC + 0x10000
    
    # 所有测试通过
    HIT_GOOD_TRAP
