
build/xor:     file format elf32-loongarch
build/xor


Disassembly of section .text:

80000000 <_start>:
_start():
80000000:	0383fc0c 	ori	$r12,$r0,0xff
80000004:	03803c0d 	ori	$r13,$r0,0xf
80000008:	0015b58e 	xor	$r14,$r12,$r13
8000000c:	80000000 	0x80000000
