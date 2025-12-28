#include "regdef.h"
#include "trap.h"

    .section .text
    .globl  _start

_start:
    lu12i.w $r10, 0x10000      # r10 = 0x10000000（基地址）
    
    # 测试用例1：加载正字节（符号扩展）
    # 预期：加载0x7F，符号扩展为0x0000007F
    lu12i.w $r12, 0x00000      # r12 = 0
    ori     $r12, $r12, 0x07F  # r12 = 0x7F
    st.b    $r12, $r10, 0      # mem[0x80010000] = 0x7F
    ld.b    $r13, $r10, 0      # r13 = sign_extend(0x7F) = 0x0000007F
    
    # 测试用例2：加载负字节（符号扩展）
    # 预期：加载0x80，符号扩展为0xFFFFFF80
    lu12i.w $r14, 0x00000      # r14 = 0
    ori     $r14, $r14, 0x080  # r14 = 0x80（第7位置位=负）
    st.b    $r14, $r10, 1      # mem[0x80010001] = 0x80
    ld.b    $r15, $r10, 1      # r15 = sign_extend(0x80) = 0xFFFFFF80
    
    # 测试用例3：加载0xFF（符号扩展为-1）
    # 预期：加载0xFF，符号扩展为0xFFFFFFFF
    lu12i.w $r16, 0x00000      # r16 = 0
    ori     $r16, $r16, 0x0FF  # r16 = 0xFF
    st.b    $r16, $r10, 2      # mem[0x80010002] = 0xFF
    ld.b    $r17, $r10, 2      # r17 = sign_extend(0xFF) = 0xFFFFFFFF
    
    # 测试用例4：加载零字节
    # 预期：加载0x00，符号扩展为0x00000000
    st.b    $r0, $r10, 3       # mem[0x80010003] = 0x00
    ld.b    $r18, $r10, 3      # r18 = sign_extend(0x00) = 0x00000000
    
    # 测试用例5：最大正值字节
    # 预期：加载0x7F（127），符号扩展后仍为正
    lu12i.w $r19, 0x00000      # r19 = 0
    ori     $r19, $r19, 0x07F  # r19 = 0x7F（最大正有符号字节）
    st.b    $r19, $r10, 4      # mem[0x80010004] = 0x7F
    ld.b    $r20, $r10, 4      # r20 = 0x0000007F（正数）
    
    # 测试用例6：最小负值字节
    # 预期：加载0x80（-128），符号扩展为0xFFFFFF80
    lu12i.w $r21, 0x00000      # r21 = 0
    ori     $r21, $r21, 0x080  # r21 = 0x80（最小负有符号字节）
    st.b    $r21, $r10, 5      # mem[0x80010005] = 0x80
    ld.b    $r22, $r10, 5      # r22 = 0xFFFFFF80（负数）
    
    # 测试用例7：用负偏移加载
    # 在偏移8存储0xAB，然后从基址+12用偏移-4加载
    lu12i.w $r23, 0x00000      # r23 = 0
    ori     $r23, $r23, 0x0AB  # r23 = 0xAB
    st.b    $r23, $r10, 8      # mem[0x80010008] = 0xAB
    
    addi.w  $r24, $r10, 12     # r24 = 0x8001000C
    ld.b    $r25, $r24, -4     # r25 = sign_extend(mem[0x80010008]) = 0xFFFFFFAB
    
    # 测试用例8：验证各种值的符号扩展
    # 测试字节0x01
    lu12i.w $r26, 0x00000      # r26 = 0
    ori     $r26, $r26, 0x001  # r26 = 0x01
    st.b    $r26, $r10, 9      # mem[0x80010009] = 0x01
    ld.b    $r27, $r10, 9      # r27 = 0x00000001
    
    # 测试字节0xFE
    lu12i.w $r28, 0x00000      # r28 = 0
    ori     $r28, $r28, 0x0FE  # r28 = 0xFE
    st.b    $r28, $r10, 10     # mem[0x8001000A] = 0xFE
    ld.b    $r29, $r10, 10     # r29 = 0xFFFFFFFE（补码-2）
    
    # 所有测试通过
    HIT_GOOD_TRAP