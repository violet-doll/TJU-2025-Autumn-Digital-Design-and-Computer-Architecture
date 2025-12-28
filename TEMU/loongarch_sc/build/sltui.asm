
build/sltui:     file format elf32-loongarch
build/sltui


Disassembly of section .text:

80000000 <_start>:
_start():
80000000:	1400000c 	lu12i.w	$r12,0
80000004:	0380158c 	ori	$r12,$r12,0x5
80000008:	0240298e 	sltui	$r14,$r12,10(0xa)
8000000c:	1400000c 	lu12i.w	$r12,0
80000010:	0380298c 	ori	$r12,$r12,0xa
80000014:	0240298f 	sltui	$r15,$r12,10(0xa)
80000018:	1400000c 	lu12i.w	$r12,0
8000001c:	0380518c 	ori	$r12,$r12,0x14
80000020:	02402990 	sltui	$r16,$r12,10(0xa)
80000024:	02400411 	sltui	$r17,$r0,1(0x1)
80000028:	1400000c 	lu12i.w	$r12,0
8000002c:	0381918c 	ori	$r12,$r12,0x64
80000030:	027ffd92 	sltui	$r18,$r12,-1(0xfff)
80000034:	15ffffec 	lu12i.w	$r12,-1(0xfffff)
80000038:	03bfc18c 	ori	$r12,$r12,0xff0
8000003c:	027ffd93 	sltui	$r19,$r12,-1(0xfff)
80000040:	025ffc14 	sltui	$r20,$r0,2047(0x7ff)
80000044:	15ffffec 	lu12i.w	$r12,-1(0xfffff)
80000048:	03bffd8c 	ori	$r12,$r12,0xfff
8000004c:	02400595 	sltui	$r21,$r12,1(0x1)
80000050:	80000000 	0x80000000
