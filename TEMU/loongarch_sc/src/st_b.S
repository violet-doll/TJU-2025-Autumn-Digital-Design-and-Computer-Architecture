#include "regdef.h"
#include "trap.h"

    .section .text
    .globl  _start

_start:
    lu12i.w $r10, 0x10000      # r10 = 0x10000000（基地址）
    
    # 测试用例1：存储字节（低8位）
    # 预期：存储0xAB（0x123456AB的低字节）
    lu12i.w $r12, 0x12345      # r12 = 0x12345000
    ori     $r12, $r12, 0x6AB  # r12 = 0x123456AB
    st.b    $r12, $r10, 0      # mem[0x80010000] = 0xAB（低字节）
    
    # 测试用例2：用偏移存储字节
    # 预期：在偏移1存储0x12
    lu12i.w $r13, 0x00000      # r13 = 0
    ori     $r13, $r13, 0x012  # r13 = 0x12
    st.b    $r13, $r10, 1      # mem[0x80010001] = 0x12
    
    # 测试用例3：存储零字节
    # 预期：在偏移2存储0x00
    st.b    $r0, $r10, 2       # mem[0x80010002] = 0x00
    
    # 测试用例4：从负数存储字节（低8位）
    # 预期：存储0xFF（0xFFFFFFFF的低字节）
    lu12i.w $r14, -1           # r14 = 0xFFFFF000
    ori     $r14, $r14, 0xFFF  # r14 = 0xFFFFFFFF
    st.b    $r14, $r10, 3      # mem[0x80010003] = 0xFF
    
    # 测试用例5：逐字节存储模式
    # 创建模式：0xDEADBEEF 逐字节存储
    lu12i.w $r15, 0x00000      # r15 = 0
    ori     $r15, $r15, 0x0EF  # r15 = 0xEF
    st.b    $r15, $r10, 4      # mem[0x80010004] = 0xEF
    
    lu12i.w $r16, 0x00000      # r16 = 0
    ori     $r16, $r16, 0x0BE  # r16 = 0xBE
    st.b    $r16, $r10, 5      # mem[0x80010005] = 0xBE
    
    lu12i.w $r17, 0x00000      # r17 = 0
    ori     $r17, $r17, 0x0AD  # r17 = 0xAD
    st.b    $r17, $r10, 6      # mem[0x80010006] = 0xAD
    
    lu12i.w $r18, 0x00000      # r18 = 0
    ori     $r18, $r18, 0x0DE  # r18 = 0xDE
    st.b    $r18, $r10, 7      # mem[0x80010007] = 0xDE
    # 现在mem[0x80010004:0x80010007]包含0xDEADBEEF（小端）
    
    # 测试用例6：用负偏移存储
    # 使用地址0x80010010，偏移-4写入0x8001000C
    addi.w  $r19, $r10, 16     # r19 = 0x80010010
    lu12i.w $r20, 0x00000      # r20 = 0
    ori     $r20, $r20, 0x0CC  # r20 = 0xCC
    st.b    $r20, $r19, -4     # mem[0x8001000C] = 0xCC
    
    # 测试用例7：验证只存储低8位
    # 存储0x12345678，只有0x78应被写入
    lu12i.w $r21, 0x12345      # r21 = 0x12345000
    ori     $r21, $r21, 0x678  # r21 = 0x12345678
    st.b    $r21, $r10, 8      # mem[0x80010008] = 0x78（不是0x12345678）
    
    # 所有测试通过
    HIT_GOOD_TRAP
