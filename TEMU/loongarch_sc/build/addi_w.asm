
build/addi_w:     file format elf32-loongarch
build/addi_w


Disassembly of section .text:

80000000 <_start>:
_start():
80000000:	0380040c 	ori	$r12,$r0,0x1
80000004:	0280058e 	addi.w	$r14,$r12,1(0x1)

80000008 <good>:
good():
80000008:	80000000 	0x80000000

8000000c <bad>:
bad():
8000000c:	80000001 	0x80000001
