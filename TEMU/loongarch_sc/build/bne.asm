
build/bne:     file format elf32-loongarch
build/bne


Disassembly of section .text:

80000000 <_start>:
_start():
80000000:	0380040c 	ori	$r12,$r0,0x1
80000004:	0380080d 	ori	$r13,$r0,0x2
80000008:	5c00098d 	bne	$r12,$r13,8(0x8) # 80000010 <target>
8000000c:	80000001 	0x80000001

80000010 <target>:
target():
80000010:	0380040c 	ori	$r12,$r0,0x1
80000014:	0380040d 	ori	$r13,$r0,0x1
80000018:	5c00098d 	bne	$r12,$r13,8(0x8) # 80000020 <bad>
8000001c:	80000000 	0x80000000

80000020 <bad>:
bad():
80000020:	80000001 	0x80000001
