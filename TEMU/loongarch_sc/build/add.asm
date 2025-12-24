
build/add:     file format elf32-loongarch
build/add


Disassembly of section .text:

80000000 <_start>:
_start():
80000000:	0380040c 	ori	$r12,$r0,0x1
80000004:	0380080d 	ori	$r13,$r0,0x2
80000008:	0010358e 	add.w	$r14,$r12,$r13

8000000c <good>:
good():
8000000c:	80000000 	0x80000000

80000010 <bad>:
bad():
80000010:	80000001 	0x80000001
