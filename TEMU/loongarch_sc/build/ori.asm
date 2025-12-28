
build/ori:     file format elf32-loongarch
build/ori


Disassembly of section .text:

80000000 <_start>:
_start():
80000000:	1400000c 	lu12i.w	$r12,0
80000004:	03aaf18c 	ori	$r12,$r12,0xabc
80000008:	1400000d 	lu12i.w	$r13,0
8000000c:	03bffdad 	ori	$r13,$r13,0xfff
80000010:	142468ae 	lu12i.w	$r14,74565(0x12345)
80000014:	038001ce 	ori	$r14,$r14,0x0
80000018:	142468af 	lu12i.w	$r15,74565(0x12345)
8000001c:	0399e1ef 	ori	$r15,$r15,0x678
80000020:	1557fbd0 	lu12i.w	$r16,-344098(0xabfde)
80000024:	03848e10 	ori	$r16,$r16,0x123
80000028:	15fffff1 	lu12i.w	$r17,-1(0xfffff)
8000002c:	03955631 	ori	$r17,$r17,0x555
80000030:	80000000 	0x80000000
