
build/pcaddu12i:     file format elf32-loongarch
build/pcaddu12i


Disassembly of section .text:

80000000 <_start>:
_start():
80000000:	1c00002c 	pcaddu12i	$r12,1(0x1)
80000004:	1500002d 	lu12i.w	$r13,-524287(0x80001)
80000008:	5800098d 	beq	$r12,$r13,8(0x8) # 80000010 <good>
8000000c:	80000001 	0x80000001

80000010 <good>:
good():
80000010:	80000000 	0x80000000
