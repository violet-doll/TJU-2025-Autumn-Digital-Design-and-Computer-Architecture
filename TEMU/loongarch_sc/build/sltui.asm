
build/sltui:     file format elf32-loongarch
build/sltui


Disassembly of section .text:

80000000 <_start>:
_start():
80000000:	0380280c 	ori	$r12,$r0,0xa
80000004:	02402d8d 	sltui	$r13,$r12,11(0xb)
80000008:	0015000e 	move	$r14,$r0
8000000c:	580021ae 	beq	$r13,$r14,32(0x20) # 8000002c <error>
80000010:	0240298d 	sltui	$r13,$r12,10(0xa)
80000014:	0380040e 	ori	$r14,$r0,0x1
80000018:	580015ae 	beq	$r13,$r14,20(0x14) # 8000002c <error>
8000001c:	0240258d 	sltui	$r13,$r12,9(0x9)
80000020:	0380040e 	ori	$r14,$r0,0x1
80000024:	580009ae 	beq	$r13,$r14,8(0x8) # 8000002c <error>
80000028:	80000000 	0x80000000

8000002c <error>:
error():
8000002c:	80000001 	0x80000001
