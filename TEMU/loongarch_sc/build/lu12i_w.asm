
build/lu12i_w:     file format elf32-loongarch
build/lu12i_w


Disassembly of section .text:

80000000 <_start>:
_start():
80000000:	14ffffec 	lu12i.w	$r12,524287(0x7ffff)
80000004:	14ffffed 	lu12i.w	$r13,524287(0x7ffff)
80000008:	5800098d 	beq	$r12,$r13,8(0x8) # 80000010 <pass>
8000000c:	80000001 	0x80000001

80000010 <pass>:
pass():
80000010:	80000000 	0x80000000
