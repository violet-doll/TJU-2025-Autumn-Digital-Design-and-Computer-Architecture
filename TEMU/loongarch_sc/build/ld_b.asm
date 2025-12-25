
build/ld_b:     file format elf32-loongarch
build/ld_b


Disassembly of section .text:

80000000 <_start>:
_start():
80000000:	1438000c 	lu12i.w	$r12,114688(0x1c000)
80000004:	02bffc0d 	addi.w	$r13,$r0,-1(0xfff)
80000008:	2900018d 	st.b	$r13,$r12,0
8000000c:	2800018e 	ld.b	$r14,$r12,0
80000010:	580009ae 	beq	$r13,$r14,8(0x8) # 80000018 <good>
80000014:	80000001 	0x80000001

80000018 <good>:
good():
80000018:	80000000 	0x80000000
