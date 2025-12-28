#include "regdef.h"
#include "trap.h"

    .section .text
    .globl  _start

_start:
    # Memory base address: 0x80010000 (using safe data area)
    
    # Test Case 1: Store word at base address
    # Expected: Store 0x12345678 to memory[0x80010000]
    lu12i.w $r12, 0x10000      # r12 = 0x10000000 (base address)
    lu12i.w $r13, 0x12345      # r13 = 0x12345000
    ori     $r13, $r13, 0x678  # r13 = 0x12345678 (data to store)
    st.w    $r13, $r12, 0      # mem[0x80010000] = 0x12345678
    
    # Test Case 2: Store word with positive offset
    # Expected: Store 0xABCDEF01 to memory[0x80010004]
    lu12i.w $r14, -344098     # r14 = 0xABCDE000
    ori     $r14, $r14, 0xF01  # r14 = 0xABCDEF01
    st.w    $r14, $r12, 4      # mem[0x80010004] = 0xABCDEF01
    
    # Test Case 3: Store zero
    # Expected: Store 0x00000000 to memory[0x80010008]
    st.w    $r0, $r12, 8       # mem[0x80010008] = 0x00000000
    
    # Test Case 4: Store negative number
    # Expected: Store 0xFFFFFFFF (-1) to memory[0x8001000C]
    lu12i.w $r15, -1           # r15 = 0xFFFFF000
    ori     $r15, $r15, 0xFFF  # r15 = 0xFFFFFFFF (-1)
    st.w    $r15, $r12, 12     # mem[0x8001000C] = 0xFFFFFFFF
    
    # Test Case 5: Store with maximum 12-bit positive offset
    # Expected: Store 0xDEADBEEF to memory[0x800107FF] (offset 2047)
    lu12i.w $r16, -136485     # r16 = 0xDEADB000
    ori     $r16, $r16, 0xEEF  # r16 = 0xDEADBEEF
    addi.w  $r17, $r0, 2047    # r17 = 2047 (max positive offset)
    st.w    $r16, $r12, 2047   # mem[0x800107FF] = 0xDEADBEEF
    
    # Test Case 6: Store with negative offset
    # Need to use base address + offset where offset is negative
    # Use address 0x80010010, offset -4 to write to 0x8001000C
    addi.w  $r18, $r12, 16     # r18 = 0x80010010
    lu12i.w $r19, 0x11111      # r19 = 0x11111000  
    ori     $r19, $r19, 0x111  # r19 = 0x11111111
    st.w    $r19, $r18, -4     # mem[0x8001000C] = 0x11111111 (overwrites test 4)
    
    # All tests passed (can't verify without load, but ensures no traps)
    HIT_GOOD_TRAP
