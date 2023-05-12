
.pio/build/ch32v003f4p6/src/main.o:     file format elf32-littleriscv


Disassembly of section .text.GPIO_INIT:

00000000 <GPIO_INIT>:
   0:	00000317          	auipc	t1,0x0
   4:	000302e7          	jalr	t0,t1 # 0 <GPIO_INIT>
   8:	1141                	addi	sp,sp,-16
   a:	4585                	li	a1,1
   c:	4511                	li	a0,4
   e:	40011437          	lui	s0,0x40011
  12:	c202                	sw	zero,4(sp)
  14:	c402                	sw	zero,8(sp)
  16:	c602                	sw	zero,12(sp)
  18:	00000097          	auipc	ra,0x0
  1c:	000080e7          	jalr	ra # 18 <GPIO_INIT+0x18>

00000020 <.LVL0>:
  20:	4705                	li	a4,1
  22:	47c1                	li	a5,16
  24:	448d                	li	s1,3
  26:	004c                	addi	a1,sp,4
  28:	80040513          	addi	a0,s0,-2048 # 40010800 <.LASF88+0x40010082>
  2c:	8278                	0x8278
  2e:	c03a                	sw	a4,0(sp)
  30:	c63e                	sw	a5,12(sp)
  32:	c426                	sw	s1,8(sp)
  34:	00000097          	auipc	ra,0x0
  38:	000080e7          	jalr	ra # 34 <.LVL0+0x14>

0000003c <.LVL1>:
  3c:	4585                	li	a1,1
  3e:	02000513          	li	a0,32
  42:	00000097          	auipc	ra,0x0
  46:	000080e7          	jalr	ra # 42 <.LVL1+0x6>

0000004a <.LVL2>:
  4a:	4702                	lw	a4,0(sp)
  4c:	47c1                	li	a5,16
  4e:	004c                	addi	a1,sp,4
  50:	40040513          	addi	a0,s0,1024
  54:	8278                	0x8278
  56:	c63e                	sw	a5,12(sp)
  58:	c426                	sw	s1,8(sp)
  5a:	00000097          	auipc	ra,0x0
  5e:	000080e7          	jalr	ra # 5a <.LVL2+0x10>

00000062 <.LVL3>:
  62:	0141                	addi	sp,sp,16
  64:	00000317          	auipc	t1,0x0
  68:	00030067          	jr	t1 # 64 <.LVL3+0x2>

Disassembly of section .text.task:

00000000 <task>:
   0:	1151                	addi	sp,sp,-12
   2:	0ff00793          	li	a5,255
   6:	c03e                	sw	a5,0(sp)
   8:	c23e                	sw	a5,4(sp)
   a:	57fd                	li	a5,-1
   c:	845c                	0x845c

0000000e <.LBB2>:
   e:	400113b7          	lui	t2,0x40011
  12:	4781                	li	a5,0

00000014 <.LBB3>:
  14:	4505                	li	a0,1
  16:	6341                	lui	t1,0x10

00000018 <.LBE3>:
  18:	42a5                	li	t0,9

0000001a <.L7>:
  1a:	00f10733          	add	a4,sp,a5
  1e:	2310                	fld	fa2,0(a4)

00000020 <.LBB5>:
  20:	46a1                	li	a3,8

00000022 <.L6>:
  22:	40038713          	addi	a4,t2,1024 # 40011400 <.LASF88+0x40010c82>
  26:	00167593          	andi	a1,a2,1
  2a:	cb08                	sw	a0,16(a4)
  2c:	c191                	beqz	a1,30 <.L4>
  2e:	001d                	c.nop	7

00000030 <.L4>:
  30:	00672823          	sw	t1,16(a4)
  34:	8205                	srli	a2,a2,0x1
  36:	001d                	c.nop	7

00000038 <.LVL10>:
  38:	16fd                	addi	a3,a3,-1

0000003a <.LVL11>:
  3a:	f6e5                	bnez	a3,22 <.L6>

0000003c <.LBE6>:
  3c:	0785                	addi	a5,a5,1
  3e:	fc579ee3          	bne	a5,t0,1a <.L7>

00000042 <.LBE2>:
  42:	0131                	addi	sp,sp,12
  44:	8082                	ret

Disassembly of section .text.startup.main:

00000000 <main>:
   0:	00000317          	auipc	t1,0x0
   4:	000302e7          	jalr	t0,t1 # 0 <main>
   8:	00000097          	auipc	ra,0x0
   c:	000080e7          	jalr	ra # 8 <main+0x8>

00000010 <.LVL13>:
  10:	00000097          	auipc	ra,0x0
  14:	000080e7          	jalr	ra # 10 <.LVL13>

00000018 <.LVL14>:
  18:	6571                	lui	a0,0x1c
  1a:	20050513          	addi	a0,a0,512 # 1c200 <.LASF88+0x1ba82>
  1e:	00000097          	auipc	ra,0x0
  22:	000080e7          	jalr	ra # 1e <.LVL14+0x6>

00000026 <.LVL15>:
  26:	00000537          	lui	a0,0x0
  2a:	00050513          	mv	a0,a0
  2e:	00000097          	auipc	ra,0x0
  32:	000080e7          	jalr	ra # 2e <.LVL15+0x8>

00000036 <.LVL16>:
  36:	00000097          	auipc	ra,0x0
  3a:	000080e7          	jalr	ra # 36 <.LVL16>

0000003e <.LVL17>:
  3e:	06400513          	li	a0,100
  42:	00000097          	auipc	ra,0x0
  46:	000080e7          	jalr	ra # 42 <.LVL17+0x4>

0000004a <.L12>:
  4a:	06400513          	li	a0,100
  4e:	00000097          	auipc	ra,0x0
  52:	000080e7          	jalr	ra # 4e <.L12+0x4>

00000056 <.LVL19>:
  56:	00000097          	auipc	ra,0x0
  5a:	000080e7          	jalr	ra # 56 <.LVL19>

0000005e <.LVL20>:
  5e:	b7f5                	j	4a <.L12>

Disassembly of section .data.data:

00000000 <data>:
   0:	00ff                	0xff
   2:	0000                	unimp
   4:	00ff                	0xff
   6:	0000                	unimp
   8:	ff              	Address 0x0000000000000008 is out of bounds.


Disassembly of section .data.h:

00000000 <h>:
   0:	0001                	nop
	...

Disassembly of section .data.l:

00000000 <l>:
   0:	0000                	unimp
   2:	0001                	nop

Disassembly of section .rodata.main.str1.4:

00000000 <.LC1>:
   0:	4040                	lw	s0,4(s0)
   2:	0031                	c.nop	12

Disassembly of section .debug_info:

00000000 <.Ldebug_info0>:
   0:	0d09                	addi	s10,s10,2
   2:	0000                	unimp
   4:	0004                	0x4
   6:	0000                	unimp
   8:	0000                	unimp
   a:	0104                	addi	s1,sp,128
   c:	0000                	unimp
   e:	0000                	unimp
  10:	000c                	0xc
	...
  22:	0000                	unimp
  24:	0200                	addi	s0,sp,256
  26:	0704                	addi	s1,sp,896
  28:	0000                	unimp
  2a:	0000                	unimp
  2c:	0102                	c.slli64	sp
  2e:	0006                	c.slli	zero,0x1
  30:	0000                	unimp
  32:	0300                	addi	s0,sp,384
  34:	0000                	unimp
  36:	0000                	unimp
  38:	2b02                	fld	fs6,0(sp)
  3a:	3f18                	fld	fa4,56(a4)
  3c:	0000                	unimp
  3e:	0200                	addi	s0,sp,256
  40:	0801                	addi	a6,a6,0
  42:	0000                	unimp
  44:	0000                	unimp
  46:	0202                	c.slli64	tp
  48:	0005                	c.nop	1
  4a:	0000                	unimp
  4c:	0300                	addi	s0,sp,384
  4e:	0000                	unimp
  50:	0000                	unimp
  52:	3902                	fld	fs2,32(sp)
  54:	5919                	li	s2,-26
  56:	0000                	unimp
  58:	0200                	addi	s0,sp,256
  5a:	0702                	c.slli64	a4
  5c:	0000                	unimp
  5e:	0000                	unimp
  60:	0402                	c.slli64	s0
  62:	0005                	c.nop	1
  64:	0000                	unimp
  66:	0300                	addi	s0,sp,384
  68:	0000                	unimp
  6a:	0000                	unimp
  6c:	4f02                	lw	t5,0(sp)
  6e:	7319                	lui	t1,0xfffe6
  70:	0000                	unimp
  72:	0200                	addi	s0,sp,256
  74:	0704                	addi	s1,sp,896
  76:	0000                	unimp
  78:	0000                	unimp
  7a:	0802                	c.slli64	a6
  7c:	0005                	c.nop	1
  7e:	0000                	unimp
  80:	0200                	addi	s0,sp,256
  82:	0708                	addi	a0,sp,896
  84:	0000                	unimp
  86:	0000                	unimp
  88:	0404                	addi	s1,sp,512
  8a:	6905                	lui	s2,0x1
  8c:	746e                	flw	fs0,248(sp)
  8e:	0300                	addi	s0,sp,384
  90:	0000                	unimp
  92:	0000                	unimp
  94:	33131803          	lh	a6,817(t1) # fffe6331 <.LASF88+0xfffe5bb3>
  98:	0000                	unimp
  9a:	0300                	addi	s0,sp,384
  9c:	0000                	unimp
  9e:	0000                	unimp
  a0:	4d142403          	lw	s0,1233(s0)
  a4:	0000                	unimp
  a6:	0300                	addi	s0,sp,384
  a8:	0000                	unimp
  aa:	0000                	unimp
  ac:	67143003          	0x67143003
  b0:	0000                	unimp
  b2:	0500                	addi	s0,sp,640
  b4:	000000a7          	0xa7
  b8:	0706                	slli	a4,a4,0x1
  ba:	2504                	fld	fs1,8(a0)
  bc:	0000                	unimp
  be:	0500                	addi	s0,sp,640
  c0:	00d30e3f 00070000 	0x7000000d30e3f
  c8:	0000                	unimp
  ca:	0000                	unimp
  cc:	00000007          	0x7
  d0:	0100                	addi	s0,sp,128
  d2:	0800                	addi	s0,sp,16
  d4:	0000                	unimp
  d6:	0000                	unimp
  d8:	a711130b          	0xa711130b
  dc:	0000                	unimp
  de:	0900                	addi	s0,sp,144
  e0:	041c                	addi	a5,sp,512
  e2:	09a4                	addi	s1,sp,216
  e4:	0144                	addi	s1,sp,132
  e6:	0000                	unimp
  e8:	000a                	c.slli	zero,0x2
  ea:	0000                	unimp
  ec:	0400                	addi	s0,sp,512
  ee:	13a6                	slli	t2,t2,0x29
  f0:	000000b3          	add	ra,zero,zero
  f4:	0a00                	addi	s0,sp,272
  f6:	0000                	unimp
  f8:	0000                	unimp
  fa:	a704                	fsd	fs1,8(a4)
  fc:	0000b313          	sltiu	t1,ra,0
 100:	0400                	addi	s0,sp,512
 102:	000a                	c.slli	zero,0x2
 104:	0000                	unimp
 106:	0400                	addi	s0,sp,512
 108:	13a8                	addi	a0,sp,488
 10a:	000000b3          	add	ra,zero,zero
 10e:	0a08                	addi	a0,sp,272
 110:	0000                	unimp
 112:	0000                	unimp
 114:	a904                	fsd	fs1,16(a0)
 116:	0000b313          	sltiu	t1,ra,0
 11a:	0c00                	addi	s0,sp,528
 11c:	000a                	c.slli	zero,0x2
 11e:	0000                	unimp
 120:	0400                	addi	s0,sp,512
 122:	13aa                	slli	t2,t2,0x2a
 124:	000000b3          	add	ra,zero,zero
 128:	0b10                	addi	a2,sp,400
 12a:	4342                	lw	t1,16(sp)
 12c:	0052                	c.slli	zero,0x14
 12e:	ab04                	fsd	fs1,16(a4)
 130:	0000b313          	sltiu	t1,ra,0
 134:	1400                	addi	s0,sp,544
 136:	000a                	c.slli	zero,0x2
 138:	0000                	unimp
 13a:	0400                	addi	s0,sp,512
 13c:	13ac                	addi	a1,sp,488
 13e:	000000b3          	add	ra,zero,zero
 142:	0018                	0x18
 144:	00000003          	lb	zero,0(zero) # 0 <.Ldebug_info0>
 148:	0400                	addi	s0,sp,512
 14a:	03ad                	addi	t2,t2,11
 14c:	00df 0000 0706      	0x706000000df
 152:	2504                	fld	fs1,8(a0)
 154:	0000                	unimp
 156:	0600                	addi	s0,sp,768
 158:	0118                	addi	a4,sp,128
 15a:	0171                	addi	sp,sp,28
 15c:	0000                	unimp
 15e:	00000007          	0x7
 162:	0100                	addi	s0,sp,128
 164:	00000007          	0x7
 168:	0200                	addi	s0,sp,256
 16a:	00000007          	0x7
 16e:	0300                	addi	s0,sp,384
 170:	0300                	addi	s0,sp,384
 172:	0000                	unimp
 174:	0000                	unimp
 176:	1c06                	slli	s8,s8,0x21
 178:	00015003          	lhu	zero,0(sp)
 17c:	0600                	addi	s0,sp,768
 17e:	00250407          	0x250407
 182:	0000                	unimp
 184:	2006                	fld	ft0,64(sp)
 186:	bc01                	j	fffffb96 <.LASF88+0xfffff418>
 188:	0001                	nop
 18a:	0700                	addi	s0,sp,896
 18c:	0000                	unimp
 18e:	0000                	unimp
 190:	0700                	addi	s0,sp,896
 192:	0000                	unimp
 194:	0000                	unimp
 196:	0704                	addi	s1,sp,896
 198:	0000                	unimp
 19a:	0000                	unimp
 19c:	0728                	addi	a0,sp,904
 19e:	0000                	unimp
 1a0:	0000                	unimp
 1a2:	0748                	addi	a0,sp,900
 1a4:	0000                	unimp
 1a6:	0000                	unimp
 1a8:	0714                	addi	a3,sp,896
 1aa:	0000                	unimp
 1ac:	0000                	unimp
 1ae:	0710                	addi	a2,sp,896
 1b0:	0000                	unimp
 1b2:	0000                	unimp
 1b4:	071c                	addi	a5,sp,896
 1b6:	0000                	unimp
 1b8:	0000                	unimp
 1ba:	0018                	0x18
 1bc:	00000003          	lb	zero,0(zero) # 0 <.Ldebug_info0>
 1c0:	0600                	addi	s0,sp,768
 1c2:	0329                	addi	t1,t1,10
 1c4:	017d                	addi	sp,sp,31
 1c6:	0000                	unimp
 1c8:	0c09                	addi	s8,s8,2
 1ca:	2c06                	fld	fs8,64(sp)
 1cc:	f909                	bnez	a0,de <.Ldebug_info0+0xde>
 1ce:	0001                	nop
 1d0:	0a00                	addi	s0,sp,272
 1d2:	0000                	unimp
 1d4:	0000                	unimp
 1d6:	2e06                	fld	ft8,64(sp)
 1d8:	9b0e                	add	s6,s6,gp
 1da:	0000                	unimp
 1dc:	0000                	unimp
 1de:	000a                	c.slli	zero,0x2
 1e0:	0000                	unimp
 1e2:	0600                	addi	s0,sp,768
 1e4:	1731                	addi	a4,a4,-20
 1e6:	0171                	addi	sp,sp,28
 1e8:	0000                	unimp
 1ea:	0a04                	addi	s1,sp,272
 1ec:	0000                	unimp
 1ee:	0000                	unimp
 1f0:	3406                	fld	fs0,96(sp)
 1f2:	bc16                	fsd	ft5,56(sp)
 1f4:	0001                	nop
 1f6:	0800                	addi	s0,sp,16
 1f8:	0300                	addi	s0,sp,384
 1fa:	0000                	unimp
 1fc:	0000                	unimp
 1fe:	3606                	fld	fa2,96(sp)
 200:	0001c803          	lbu	a6,0(gp)
 204:	0300                	addi	s0,sp,384
 206:	0000                	unimp
 208:	0000                	unimp
 20a:	11192207          	flw	ft4,273(s2) # 1111 <.LASF88+0x993>
 20e:	0002                	c.slli64	zero
 210:	0c00                	addi	s0,sp,528
 212:	1704                	addi	s1,sp,928
 214:	0002                	c.slli64	zero
 216:	0d00                	addi	s0,sp,656
 218:	0000                	unimp
 21a:	0000                	unimp
 21c:	00000003          	lb	zero,0(zero) # 0 <.Ldebug_info0>
 220:	0800                	addi	s0,sp,16
 222:	0e2c                	addi	a1,sp,792
 224:	0060                	addi	s0,sp,12
 226:	0000                	unimp
 228:	00000003          	lb	zero,0(zero) # 0 <.Ldebug_info0>
 22c:	0800                	addi	s0,sp,16
 22e:	0e72                	slli	t3,t3,0x1c
 230:	0060                	addi	s0,sp,12
 232:	0000                	unimp
 234:	00000003          	lb	zero,0(zero) # 0 <.Ldebug_info0>
 238:	0800                	addi	s0,sp,16
 23a:	1791                	addi	a5,a5,-28
 23c:	0088                	addi	a0,sp,64
 23e:	0000                	unimp
 240:	000e                	c.slli	zero,0x3
 242:	0000                	unimp
 244:	0900                	addi	s0,sp,144
 246:	0165                	addi	sp,sp,25
 248:	00002517          	auipc	a0,0x2
 24c:	0f00                	addi	s0,sp,912
 24e:	0804                	addi	s1,sp,16
 250:	03a6                	slli	t2,t2,0x9
 252:	0000026f          	jal	tp,252 <.Ldebug_info0+0x252>
 256:	0010                	0x10
 258:	0000                	unimp
 25a:	0800                	addi	s0,sp,16
 25c:	0ca8                	addi	a0,sp,600
 25e:	0240                	addi	s0,sp,260
 260:	0000                	unimp
 262:	0010                	0x10
 264:	0000                	unimp
 266:	0800                	addi	s0,sp,16
 268:	13a9                	addi	t2,t2,-22
 26a:	0000026f          	jal	tp,26a <.Ldebug_info0+0x26a>
 26e:	1100                	addi	s0,sp,160
 270:	0000003f 0000027f 	0x27f0000003f
 278:	2512                	fld	fa0,256(sp)
 27a:	0000                	unimp
 27c:	0300                	addi	s0,sp,384
 27e:	0900                	addi	s0,sp,144
 280:	0808                	addi	a0,sp,16
 282:	02a309a3          	sb	a0,51(t1)
 286:	0000                	unimp
 288:	000a                	c.slli	zero,0x2
 28a:	0000                	unimp
 28c:	0800                	addi	s0,sp,16
 28e:	07a5                	addi	a5,a5,9
 290:	0088                	addi	a0,sp,64
 292:	0000                	unimp
 294:	0a00                	addi	s0,sp,272
 296:	0000                	unimp
 298:	0000                	unimp
 29a:	aa08                	fsd	fa0,16(a2)
 29c:	4d05                	li	s10,1
 29e:	0002                	c.slli64	zero
 2a0:	0400                	addi	s0,sp,512
 2a2:	0300                	addi	s0,sp,384
 2a4:	0000                	unimp
 2a6:	0000                	unimp
 2a8:	ab08                	fsd	fa0,16(a4)
 2aa:	00027f03          	0x27f03
 2ae:	0300                	addi	s0,sp,384
 2b0:	0000                	unimp
 2b2:	0000                	unimp
 2b4:	af08                	fsd	fa0,24(a4)
 2b6:	0002051b          	0x2051b
 2ba:	1300                	addi	s0,sp,416
 2bc:	0304                	addi	s1,sp,384
 2be:	0000                	unimp
 2c0:	0000                	unimp
 2c2:	160a                	slli	a2,a2,0x22
 2c4:	7319                	lui	t1,0xfffe6
 2c6:	0000                	unimp
 2c8:	1400                	addi	s0,sp,544
 2ca:	0000                	unimp
 2cc:	0000                	unimp
 2ce:	0a18                	addi	a4,sp,272
 2d0:	0323082f          	0x323082f
 2d4:	0000                	unimp
 2d6:	000a                	c.slli	zero,0x2
 2d8:	0000                	unimp
 2da:	0a00                	addi	s0,sp,272
 2dc:	1331                	addi	t1,t1,-20
 2de:	00000323          	sb	zero,6(zero) # 6 <.Ldebug_info0+0x6>
 2e2:	0b00                	addi	s0,sp,400
 2e4:	6b5f 0a00 0732      	0x7320a006b5f
 2ea:	0088                	addi	a0,sp,64
 2ec:	0000                	unimp
 2ee:	0a04                	addi	s1,sp,272
 2f0:	0000                	unimp
 2f2:	0000                	unimp
 2f4:	320a                	fld	ft4,160(sp)
 2f6:	0000880b          	0x880b
 2fa:	0800                	addi	s0,sp,16
 2fc:	000a                	c.slli	zero,0x2
 2fe:	0000                	unimp
 300:	0a00                	addi	s0,sp,272
 302:	1432                	slli	s0,s0,0x2c
 304:	0088                	addi	a0,sp,64
 306:	0000                	unimp
 308:	0a0c                	addi	a1,sp,272
 30a:	0000                	unimp
 30c:	0000                	unimp
 30e:	320a                	fld	ft4,160(sp)
 310:	0000881b          	0x881b
 314:	1000                	addi	s0,sp,32
 316:	00785f0b          	0x785f0b
 31a:	330a                	fld	ft6,160(sp)
 31c:	0003290b          	0x3290b
 320:	1400                	addi	s0,sp,544
 322:	0c00                	addi	s0,sp,528
 324:	c904                	sw	s1,16(a0)
 326:	0002                	c.slli64	zero
 328:	1100                	addi	s0,sp,160
 32a:	02bd                	addi	t0,t0,15
 32c:	0000                	unimp
 32e:	0339                	addi	t1,t1,14
 330:	0000                	unimp
 332:	2512                	fld	fa0,256(sp)
 334:	0000                	unimp
 336:	0000                	unimp
 338:	1400                	addi	s0,sp,544
 33a:	0000                	unimp
 33c:	0000                	unimp
 33e:	0a24                	addi	s1,sp,280
 340:	03bc0837          	lui	a6,0x3bc0
 344:	0000                	unimp
 346:	000a                	c.slli	zero,0x2
 348:	0000                	unimp
 34a:	0a00                	addi	s0,sp,272
 34c:	0939                	addi	s2,s2,14
 34e:	0088                	addi	a0,sp,64
 350:	0000                	unimp
 352:	0a00                	addi	s0,sp,272
 354:	0000                	unimp
 356:	0000                	unimp
 358:	3a0a                	fld	fs4,160(sp)
 35a:	8809                	andi	s0,s0,2
 35c:	0000                	unimp
 35e:	0400                	addi	s0,sp,512
 360:	000a                	c.slli	zero,0x2
 362:	0000                	unimp
 364:	0a00                	addi	s0,sp,272
 366:	0088093b          	0x88093b
 36a:	0000                	unimp
 36c:	0a08                	addi	a0,sp,272
 36e:	0000                	unimp
 370:	0000                	unimp
 372:	3c0a                	fld	fs8,160(sp)
 374:	8809                	andi	s0,s0,2
 376:	0000                	unimp
 378:	0c00                	addi	s0,sp,528
 37a:	000a                	c.slli	zero,0x2
 37c:	0000                	unimp
 37e:	0a00                	addi	s0,sp,272
 380:	093d                	addi	s2,s2,15
 382:	0088                	addi	a0,sp,64
 384:	0000                	unimp
 386:	0a10                	addi	a2,sp,272
 388:	0000                	unimp
 38a:	0000                	unimp
 38c:	3e0a                	fld	ft8,160(sp)
 38e:	8809                	andi	s0,s0,2
 390:	0000                	unimp
 392:	1400                	addi	s0,sp,544
 394:	000a                	c.slli	zero,0x2
 396:	0000                	unimp
 398:	0a00                	addi	s0,sp,272
 39a:	0088093f 0a180000 	0xa1800000088093f
 3a2:	0000                	unimp
 3a4:	0000                	unimp
 3a6:	400a                	0x400a
 3a8:	8809                	andi	s0,s0,2
 3aa:	0000                	unimp
 3ac:	1c00                	addi	s0,sp,560
 3ae:	000a                	c.slli	zero,0x2
 3b0:	0000                	unimp
 3b2:	0a00                	addi	s0,sp,272
 3b4:	0941                	addi	s2,s2,16
 3b6:	0088                	addi	a0,sp,64
 3b8:	0000                	unimp
 3ba:	0020                	addi	s0,sp,8
 3bc:	0015                	c.nop	5
 3be:	0000                	unimp
 3c0:	0800                	addi	s0,sp,16
 3c2:	0a01                	addi	s4,s4,0
 3c4:	084a                	slli	a6,a6,0x12
 3c6:	0401                	addi	s0,s0,0
 3c8:	0000                	unimp
 3ca:	000a                	c.slli	zero,0x2
 3cc:	0000                	unimp
 3ce:	0a00                	addi	s0,sp,272
 3d0:	04010a4b          	0x4010a4b
 3d4:	0000                	unimp
 3d6:	0a00                	addi	s0,sp,272
 3d8:	0000                	unimp
 3da:	0000                	unimp
 3dc:	4c0a                	lw	s8,128(sp)
 3de:	0109                	addi	sp,sp,2
 3e0:	0004                	0x4
 3e2:	8000                	0x8000
 3e4:	0016                	c.slli	zero,0x5
 3e6:	0000                	unimp
 3e8:	0a00                	addi	s0,sp,272
 3ea:	0a4e                	slli	s4,s4,0x13
 3ec:	02bd                	addi	t0,t0,15
 3ee:	0000                	unimp
 3f0:	0100                	addi	s0,sp,128
 3f2:	0016                	c.slli	zero,0x5
 3f4:	0000                	unimp
 3f6:	0a00                	addi	s0,sp,272
 3f8:	0a51                	addi	s4,s4,20
 3fa:	02bd                	addi	t0,t0,15
 3fc:	0000                	unimp
 3fe:	0104                	addi	s1,sp,128
 400:	1100                	addi	s0,sp,160
 402:	000002bb          	0x2bb
 406:	0411                	addi	s0,s0,4
 408:	0000                	unimp
 40a:	2512                	fld	fa0,256(sp)
 40c:	0000                	unimp
 40e:	1f00                	addi	s0,sp,944
 410:	1500                	addi	s0,sp,672
 412:	0000                	unimp
 414:	0000                	unimp
 416:	0190                	addi	a2,sp,192
 418:	5d0a                	lw	s10,160(sp)
 41a:	5408                	lw	a0,40(s0)
 41c:	0004                	0x4
 41e:	0a00                	addi	s0,sp,272
 420:	0000                	unimp
 422:	0000                	unimp
 424:	5e0a                	lw	t3,160(sp)
 426:	5412                	lw	s0,36(sp)
 428:	0004                	0x4
 42a:	0000                	unimp
 42c:	000a                	c.slli	zero,0x2
 42e:	0000                	unimp
 430:	0a00                	addi	s0,sp,272
 432:	065f 0088 0000      	0x88065f
 438:	0a04                	addi	s1,sp,272
 43a:	0000                	unimp
 43c:	0000                	unimp
 43e:	610a                	flw	ft2,128(sp)
 440:	5a09                	li	s4,-30
 442:	0004                	0x4
 444:	0800                	addi	s0,sp,16
 446:	000a                	c.slli	zero,0x2
 448:	0000                	unimp
 44a:	0a00                	addi	s0,sp,272
 44c:	1e62                	slli	t3,t3,0x38
 44e:	03bc                	addi	a5,sp,456
 450:	0000                	unimp
 452:	0088                	addi	a0,sp,64
 454:	040c                	addi	a1,sp,512
 456:	0411                	addi	s0,s0,4
 458:	0000                	unimp
 45a:	6a11                	lui	s4,0x4
 45c:	0004                	0x4
 45e:	6a00                	flw	fs0,16(a2)
 460:	0004                	0x4
 462:	1200                	addi	s0,sp,288
 464:	0025                	c.nop	9
 466:	0000                	unimp
 468:	001f 040c 0470      	0x470040c001f
 46e:	0000                	unimp
 470:	00001417          	auipc	s0,0x1
 474:	0000                	unimp
 476:	0a08                	addi	a0,sp,272
 478:	0875                	addi	a6,a6,29
 47a:	0499                	addi	s1,s1,6
 47c:	0000                	unimp
 47e:	000a                	c.slli	zero,0x2
 480:	0000                	unimp
 482:	0a00                	addi	s0,sp,272
 484:	1176                	slli	sp,sp,0x3d
 486:	0499                	addi	s1,s1,6
 488:	0000                	unimp
 48a:	0a00                	addi	s0,sp,272
 48c:	0000                	unimp
 48e:	0000                	unimp
 490:	770a                	flw	fa4,160(sp)
 492:	8806                	mv	a6,ra
 494:	0000                	unimp
 496:	0400                	addi	s0,sp,512
 498:	0c00                	addi	s0,sp,528
 49a:	3f04                	fld	fs1,56(a4)
 49c:	0000                	unimp
 49e:	1400                	addi	s0,sp,544
 4a0:	0000                	unimp
 4a2:	0000                	unimp
 4a4:	0a68                	addi	a0,sp,284
 4a6:	08b5                	addi	a7,a7,13
 4a8:	05e2                	slli	a1,a1,0x18
 4aa:	0000                	unimp
 4ac:	00705f0b          	0x705f0b
 4b0:	b60a                	fsd	ft2,296(sp)
 4b2:	9912                	add	s2,s2,tp
 4b4:	0004                	0x4
 4b6:	0000                	unimp
 4b8:	00725f0b          	0x725f0b
 4bc:	b70a                	fsd	ft2,424(sp)
 4be:	00008807          	0x8807
 4c2:	0400                	addi	s0,sp,512
 4c4:	00775f0b          	0x775f0b
 4c8:	b80a                	fsd	ft2,48(sp)
 4ca:	00008807          	0x8807
 4ce:	0800                	addi	s0,sp,16
 4d0:	000a                	c.slli	zero,0x2
 4d2:	0000                	unimp
 4d4:	0a00                	addi	s0,sp,272
 4d6:	09b9                	addi	s3,s3,14
 4d8:	0046                	c.slli	zero,0x11
 4da:	0000                	unimp
 4dc:	0a0c                	addi	a1,sp,272
 4de:	0000                	unimp
 4e0:	0000                	unimp
 4e2:	ba0a                	fsd	ft2,304(sp)
 4e4:	4609                	li	a2,2
 4e6:	0000                	unimp
 4e8:	0e00                	addi	s0,sp,784
 4ea:	66625f0b          	0x66625f0b
 4ee:	0a00                	addi	s0,sp,272
 4f0:	047111bb          	0x47111bb
 4f4:	0000                	unimp
 4f6:	0a10                	addi	a2,sp,272
 4f8:	0000                	unimp
 4fa:	0000                	unimp
 4fc:	bc0a                	fsd	ft2,56(sp)
 4fe:	00008807          	0x8807
 502:	1800                	addi	s0,sp,48
 504:	000a                	c.slli	zero,0x2
 506:	0000                	unimp
 508:	0a00                	addi	s0,sp,272
 50a:	02bb0ac3          	fmadd.d	fs5,fs6,fa1,ft0,rne
 50e:	0000                	unimp
 510:	0a1c                	addi	a5,sp,272
 512:	0000                	unimp
 514:	0000                	unimp
 516:	c50a                	sw	sp,136(sp)
 518:	661d                	lui	a2,0x7
 51a:	20000007          	0x20000007
 51e:	000a                	c.slli	zero,0x2
 520:	0000                	unimp
 522:	0a00                	addi	s0,sp,272
 524:	07901dc7          	fmsub.q	fs11,ft0,fs9,ft0,rtz
 528:	0000                	unimp
 52a:	0a24                	addi	s1,sp,280
 52c:	0000                	unimp
 52e:	0000                	unimp
 530:	ca0a                	sw	sp,20(sp)
 532:	b40d                	j	ffffff54 <.LASF88+0xfffff7d6>
 534:	28000007          	0x28000007
 538:	000a                	c.slli	zero,0x2
 53a:	0000                	unimp
 53c:	0a00                	addi	s0,sp,272
 53e:	07ce09cb          	fnmsub.q	fs3,ft8,ft8,ft0,rne
 542:	0000                	unimp
 544:	0b2c                	addi	a1,sp,408
 546:	755f 0062 ce0a      	0xce0a0062755f
 54c:	7111                	addi	sp,sp,-256
 54e:	0004                	0x4
 550:	3000                	fld	fs0,32(s0)
 552:	70755f0b          	0x70755f0b
 556:	0a00                	addi	s0,sp,272
 558:	049912cf          	0x49912cf
 55c:	0000                	unimp
 55e:	0b38                	addi	a4,sp,408
 560:	755f 0072 d00a      	0xd00a0072755f
 566:	00008807          	0x8807
 56a:	3c00                	fld	fs0,56(s0)
 56c:	000a                	c.slli	zero,0x2
 56e:	0000                	unimp
 570:	0a00                	addi	s0,sp,272
 572:	07d411d3          	fadd.q	ft3,fs0,ft9,rtz
 576:	0000                	unimp
 578:	0a40                	addi	s0,sp,276
 57a:	0000                	unimp
 57c:	0000                	unimp
 57e:	d40a                	sw	sp,40(sp)
 580:	e411                	bnez	s0,58c <.Ldebug_info0+0x58c>
 582:	43000007          	0x43000007
 586:	626c5f0b          	0x626c5f0b
 58a:	0a00                	addi	s0,sp,272
 58c:	047111d7          	0x47111d7
 590:	0000                	unimp
 592:	0a44                	addi	s1,sp,276
 594:	0000                	unimp
 596:	0000                	unimp
 598:	da0a                	sw	sp,52(sp)
 59a:	00008807          	0x8807
 59e:	4c00                	lw	s0,24(s0)
 5a0:	000a                	c.slli	zero,0x2
 5a2:	0000                	unimp
 5a4:	0a00                	addi	s0,sp,272
 5a6:	021c0adb          	0x21c0adb
 5aa:	0000                	unimp
 5ac:	0a50                	addi	a2,sp,276
 5ae:	0000                	unimp
 5b0:	0000                	unimp
 5b2:	de0a                	sw	sp,60(sp)
 5b4:	0012                	c.slli	zero,0x4
 5b6:	0006                	c.slli	zero,0x1
 5b8:	5400                	lw	s0,40(s0)
 5ba:	000a                	c.slli	zero,0x2
 5bc:	0000                	unimp
 5be:	0a00                	addi	s0,sp,272
 5c0:	0ce2                	slli	s9,s9,0x18
 5c2:	000002af          	0x2af
 5c6:	0a58                	addi	a4,sp,276
 5c8:	0000                	unimp
 5ca:	0000                	unimp
 5cc:	e40a                	fsw	ft2,8(sp)
 5ce:	a30e                	fsd	ft3,384(sp)
 5d0:	0002                	c.slli64	zero
 5d2:	5c00                	lw	s0,56(s0)
 5d4:	000a                	c.slli	zero,0x2
 5d6:	0000                	unimp
 5d8:	0a00                	addi	s0,sp,272
 5da:	09e5                	addi	s3,s3,25
 5dc:	0088                	addi	a0,sp,64
 5de:	0000                	unimp
 5e0:	0064                	addi	s1,sp,12
 5e2:	3418                	fld	fa4,40(s0)
 5e4:	0002                	c.slli64	zero
 5e6:	0000                	unimp
 5e8:	0006                	c.slli	zero,0x1
 5ea:	1900                	addi	s0,sp,176
 5ec:	0600                	addi	s0,sp,768
 5ee:	0000                	unimp
 5f0:	bb19                	j	306 <.Ldebug_info0+0x306>
 5f2:	0002                	c.slli64	zero
 5f4:	1900                	addi	s0,sp,176
 5f6:	0754                	addi	a3,sp,900
 5f8:	0000                	unimp
 5fa:	8819                	andi	s0,s0,6
 5fc:	0000                	unimp
 5fe:	0000                	unimp
 600:	040c                	addi	a1,sp,512
 602:	0000060b          	0x60b
 606:	001a                	c.slli	zero,0x6
 608:	0006                	c.slli	zero,0x1
 60a:	1b00                	addi	s0,sp,432
 60c:	0000                	unimp
 60e:	0000                	unimp
 610:	0428                	addi	a0,sp,520
 612:	390a                	fld	fs2,160(sp)
 614:	0802                	c.slli64	a6
 616:	0754                	addi	a3,sp,900
 618:	0000                	unimp
 61a:	001c                	0x1c
 61c:	0000                	unimp
 61e:	0a00                	addi	s0,sp,272
 620:	8807023b          	0x8807023b
 624:	0000                	unimp
 626:	0000                	unimp
 628:	001c                	0x1c
 62a:	0000                	unimp
 62c:	0a00                	addi	s0,sp,272
 62e:	0240                	addi	s0,sp,260
 630:	0008400b          	0x8400b
 634:	0400                	addi	s0,sp,512
 636:	001c                	0x1c
 638:	0000                	unimp
 63a:	0a00                	addi	s0,sp,272
 63c:	0240                	addi	s0,sp,260
 63e:	4014                	lw	a3,0(s0)
 640:	0008                	0x8
 642:	0800                	addi	s0,sp,16
 644:	001c                	0x1c
 646:	0000                	unimp
 648:	0a00                	addi	s0,sp,272
 64a:	0240                	addi	s0,sp,260
 64c:	401e                	0x401e
 64e:	0008                	0x8
 650:	0c00                	addi	s0,sp,528
 652:	001c                	0x1c
 654:	0000                	unimp
 656:	0a00                	addi	s0,sp,272
 658:	0242                	slli	tp,tp,0x10
 65a:	8808                	0x8808
 65c:	0000                	unimp
 65e:	1000                	addi	s0,sp,32
 660:	001c                	0x1c
 662:	0000                	unimp
 664:	0a00                	addi	s0,sp,272
 666:	40080243          	fmadd.s	ft4,fa6,ft0,fs0,rne
 66a:	000a                	c.slli	zero,0x2
 66c:	1400                	addi	s0,sp,544
 66e:	001c                	0x1c
 670:	0000                	unimp
 672:	0a00                	addi	s0,sp,272
 674:	0246                	slli	tp,tp,0x11
 676:	00008807          	0x8807
 67a:	3000                	fld	fs0,32(s0)
 67c:	001c                	0x1c
 67e:	0000                	unimp
 680:	0a00                	addi	s0,sp,272
 682:	55160247          	0x55160247
 686:	000a                	c.slli	zero,0x2
 688:	3400                	fld	fs0,40(s0)
 68a:	001c                	0x1c
 68c:	0000                	unimp
 68e:	0a00                	addi	s0,sp,272
 690:	0249                	addi	tp,tp,18
 692:	00008807          	0x8807
 696:	3800                	fld	fs0,48(s0)
 698:	001c                	0x1c
 69a:	0000                	unimp
 69c:	0a00                	addi	s0,sp,272
 69e:	660a024b          	fnmsub.q	ft4,fs4,ft0,fa2,rne
 6a2:	000a                	c.slli	zero,0x2
 6a4:	3c00                	fld	fs0,56(s0)
 6a6:	001c                	0x1c
 6a8:	0000                	unimp
 6aa:	0a00                	addi	s0,sp,272
 6ac:	024e                	slli	tp,tp,0x13
 6ae:	00032313          	slti	t1,t1,0
 6b2:	4000                	lw	s0,0(s0)
 6b4:	001c                	0x1c
 6b6:	0000                	unimp
 6b8:	0a00                	addi	s0,sp,272
 6ba:	8807024f          	fnmadd.s	ft4,fa4,ft0,fa7,rne
 6be:	0000                	unimp
 6c0:	4400                	lw	s0,8(s0)
 6c2:	001c                	0x1c
 6c4:	0000                	unimp
 6c6:	0a00                	addi	s0,sp,272
 6c8:	0250                	addi	a2,sp,260
 6ca:	00032313          	slti	t1,t1,0
 6ce:	4800                	lw	s0,16(s0)
 6d0:	001c                	0x1c
 6d2:	0000                	unimp
 6d4:	0a00                	addi	s0,sp,272
 6d6:	0251                	addi	tp,tp,20
 6d8:	6c14                	flw	fa3,24(s0)
 6da:	000a                	c.slli	zero,0x2
 6dc:	4c00                	lw	s0,24(s0)
 6de:	001c                	0x1c
 6e0:	0000                	unimp
 6e2:	0a00                	addi	s0,sp,272
 6e4:	0254                	addi	a3,sp,260
 6e6:	00008807          	0x8807
 6ea:	5000                	lw	s0,32(s0)
 6ec:	001c                	0x1c
 6ee:	0000                	unimp
 6f0:	0a00                	addi	s0,sp,272
 6f2:	0255                	addi	tp,tp,21
 6f4:	5409                	li	s0,-30
 6f6:	54000007          	0x54000007
 6fa:	001c                	0x1c
 6fc:	0000                	unimp
 6fe:	0a00                	addi	s0,sp,272
 700:	0278                	addi	a4,sp,268
 702:	000a1b07          	0xa1b07
 706:	5800                	lw	s0,48(s0)
 708:	001d                	c.nop	7
 70a:	0000                	unimp
 70c:	0a00                	addi	s0,sp,272
 70e:	027c                	addi	a5,sp,268
 710:	00045413          	srli	s0,s0,0x0
 714:	4800                	lw	s0,16(s0)
 716:	1d01                	addi	s10,s10,-32
 718:	0000                	unimp
 71a:	0000                	unimp
 71c:	7d0a                	flw	fs10,160(sp)
 71e:	1202                	slli	tp,tp,0x20
 720:	0411                	addi	s0,s0,4
 722:	0000                	unimp
 724:	014c                	addi	a1,sp,132
 726:	001d                	c.nop	7
 728:	0000                	unimp
 72a:	0a00                	addi	s0,sp,272
 72c:	0281                	addi	t0,t0,0
 72e:	7d0c                	flw	fa1,56(a0)
 730:	000a                	c.slli	zero,0x2
 732:	dc00                	sw	s0,56(s0)
 734:	1d02                	slli	s10,s10,0x20
 736:	0000                	unimp
 738:	0000                	unimp
 73a:	860a                	mv	a2,sp
 73c:	1002                	c.slli	zero,0x20
 73e:	0801                	addi	a6,a6,0
 740:	0000                	unimp
 742:	02e0                	addi	s0,sp,332
 744:	001d                	c.nop	7
 746:	0000                	unimp
 748:	0a00                	addi	s0,sp,272
 74a:	0288                	addi	a0,sp,320
 74c:	890a                	mv	s2,sp
 74e:	000a                	c.slli	zero,0x2
 750:	ec00                	fsw	fs0,24(s0)
 752:	0002                	c.slli64	zero
 754:	040c                	addi	a1,sp,512
 756:	075a                	slli	a4,a4,0x16
 758:	0000                	unimp
 75a:	0102                	c.slli64	sp
 75c:	0006                	c.slli	zero,0x1
 75e:	0000                	unimp
 760:	1a00                	addi	s0,sp,304
 762:	075a                	slli	a4,a4,0x16
 764:	0000                	unimp
 766:	040c                	addi	a1,sp,512
 768:	05e2                	slli	a1,a1,0x18
 76a:	0000                	unimp
 76c:	3418                	fld	fa4,40(s0)
 76e:	0002                	c.slli64	zero
 770:	8a00                	0x8a00
 772:	19000007          	0x19000007
 776:	0600                	addi	s0,sp,768
 778:	0000                	unimp
 77a:	bb19                	j	490 <.Ldebug_info0+0x490>
 77c:	0002                	c.slli64	zero
 77e:	1900                	addi	s0,sp,176
 780:	078a                	slli	a5,a5,0x2
 782:	0000                	unimp
 784:	8819                	andi	s0,s0,6
 786:	0000                	unimp
 788:	0000                	unimp
 78a:	040c                	addi	a1,sp,512
 78c:	0761                	addi	a4,a4,24
 78e:	0000                	unimp
 790:	040c                	addi	a1,sp,512
 792:	076c                	addi	a1,sp,908
 794:	0000                	unimp
 796:	2818                	fld	fa4,16(s0)
 798:	0002                	c.slli64	zero
 79a:	b400                	fsd	fs0,40(s0)
 79c:	19000007          	0x19000007
 7a0:	0600                	addi	s0,sp,768
 7a2:	0000                	unimp
 7a4:	bb19                	j	4ba <.Ldebug_info0+0x4ba>
 7a6:	0002                	c.slli64	zero
 7a8:	1900                	addi	s0,sp,176
 7aa:	0228                	addi	a0,sp,264
 7ac:	0000                	unimp
 7ae:	8819                	andi	s0,s0,6
 7b0:	0000                	unimp
 7b2:	0000                	unimp
 7b4:	040c                	addi	a1,sp,512
 7b6:	0796                	slli	a5,a5,0x5
 7b8:	0000                	unimp
 7ba:	8818                	0x8818
 7bc:	0000                	unimp
 7be:	ce00                	sw	s0,24(a2)
 7c0:	19000007          	0x19000007
 7c4:	0600                	addi	s0,sp,768
 7c6:	0000                	unimp
 7c8:	bb19                	j	4de <.Ldebug_info0+0x4de>
 7ca:	0002                	c.slli64	zero
 7cc:	0000                	unimp
 7ce:	040c                	addi	a1,sp,512
 7d0:	07ba                	slli	a5,a5,0xe
 7d2:	0000                	unimp
 7d4:	3f11                	jal	6e8 <.Ldebug_info0+0x6e8>
 7d6:	0000                	unimp
 7d8:	e400                	fsw	fs0,8(s0)
 7da:	12000007          	0x12000007
 7de:	0025                	c.nop	9
 7e0:	0000                	unimp
 7e2:	0002                	c.slli64	zero
 7e4:	3f11                	jal	6f8 <.Ldebug_info0+0x6f8>
 7e6:	0000                	unimp
 7e8:	f400                	fsw	fs0,40(s0)
 7ea:	12000007          	0x12000007
 7ee:	0025                	c.nop	9
 7f0:	0000                	unimp
 7f2:	0000                	unimp
 7f4:	000e                	c.slli	zero,0x3
 7f6:	0000                	unimp
 7f8:	0a00                	addi	s0,sp,272
 7fa:	011f 9f1a 0004      	0x49f1a011f
 800:	1e00                	addi	s0,sp,816
 802:	0000                	unimp
 804:	0000                	unimp
 806:	0a0c                	addi	a1,sp,272
 808:	3a080123          	sb	zero,930(a6) # 3bc03a2 <.LASF88+0x3bbfc24>
 80c:	0008                	0x8
 80e:	1c00                	addi	s0,sp,560
 810:	0000                	unimp
 812:	0000                	unimp
 814:	250a                	fld	fa0,128(sp)
 816:	1101                	addi	sp,sp,-32
 818:	083a                	slli	a6,a6,0xe
 81a:	0000                	unimp
 81c:	1c00                	addi	s0,sp,560
 81e:	0000                	unimp
 820:	0000                	unimp
 822:	260a                	fld	fa2,128(sp)
 824:	0701                	addi	a4,a4,0
 826:	0088                	addi	a0,sp,64
 828:	0000                	unimp
 82a:	1c04                	addi	s1,sp,560
 82c:	0000                	unimp
 82e:	0000                	unimp
 830:	270a                	fld	fa4,128(sp)
 832:	0b01                	addi	s6,s6,0
 834:	0840                	addi	s0,sp,20
 836:	0000                	unimp
 838:	0008                	0x8
 83a:	040c                	addi	a1,sp,512
 83c:	0801                	addi	a6,a6,0
 83e:	0000                	unimp
 840:	040c                	addi	a1,sp,512
 842:	07f4                	addi	a3,sp,972
 844:	0000                	unimp
 846:	001e                	c.slli	zero,0x7
 848:	0000                	unimp
 84a:	0e00                	addi	s0,sp,784
 84c:	3f0a                	fld	ft10,160(sp)
 84e:	0801                	addi	a6,a6,0
 850:	087f                	0x87f
 852:	0000                	unimp
 854:	001c                	0x1c
 856:	0000                	unimp
 858:	0a00                	addi	s0,sp,272
 85a:	0140                	addi	s0,sp,132
 85c:	7f12                	flw	ft10,36(sp)
 85e:	0008                	0x8
 860:	0000                	unimp
 862:	001c                	0x1c
 864:	0000                	unimp
 866:	0a00                	addi	s0,sp,272
 868:	0141                	addi	sp,sp,16
 86a:	7f12                	flw	ft10,36(sp)
 86c:	0008                	0x8
 86e:	0600                	addi	s0,sp,768
 870:	001c                	0x1c
 872:	0000                	unimp
 874:	0a00                	addi	s0,sp,272
 876:	0142                	slli	sp,sp,0x10
 878:	5912                	lw	s2,36(sp)
 87a:	0000                	unimp
 87c:	0c00                	addi	s0,sp,528
 87e:	1100                	addi	s0,sp,160
 880:	0059                	c.nop	22
 882:	0000                	unimp
 884:	0000088f          	0x88f
 888:	2512                	fld	fa0,256(sp)
 88a:	0000                	unimp
 88c:	0200                	addi	s0,sp,256
 88e:	1f00                	addi	s0,sp,944
 890:	0ad0                	addi	a2,sp,340
 892:	0259                	addi	tp,tp,22
 894:	0009a407          	flw	fs0,0(s3)
 898:	1c00                	addi	s0,sp,560
 89a:	0000                	unimp
 89c:	0000                	unimp
 89e:	5b0a                	lw	s6,160(sp)
 8a0:	1802                	slli	a6,a6,0x20
 8a2:	0025                	c.nop	9
 8a4:	0000                	unimp
 8a6:	1c00                	addi	s0,sp,560
 8a8:	0000                	unimp
 8aa:	0000                	unimp
 8ac:	5c0a                	lw	s8,160(sp)
 8ae:	1202                	slli	tp,tp,0x20
 8b0:	0754                	addi	a3,sp,900
 8b2:	0000                	unimp
 8b4:	1c04                	addi	s1,sp,560
 8b6:	0000                	unimp
 8b8:	0000                	unimp
 8ba:	5d0a                	lw	s10,160(sp)
 8bc:	1002                	c.slli	zero,0x20
 8be:	09a4                	addi	s1,sp,216
 8c0:	0000                	unimp
 8c2:	1c08                	addi	a0,sp,560
 8c4:	0000                	unimp
 8c6:	0000                	unimp
 8c8:	5e0a                	lw	t3,160(sp)
 8ca:	1702                	slli	a4,a4,0x20
 8cc:	0339                	addi	t1,t1,14
 8ce:	0000                	unimp
 8d0:	1c24                	addi	s1,sp,568
 8d2:	0000                	unimp
 8d4:	0000                	unimp
 8d6:	5f0a                	lw	t5,160(sp)
 8d8:	0f02                	c.slli64	t5
 8da:	0088                	addi	a0,sp,64
 8dc:	0000                	unimp
 8de:	1c48                	addi	a0,sp,564
 8e0:	0000                	unimp
 8e2:	0000                	unimp
 8e4:	600a                	flw	ft0,128(sp)
 8e6:	2c02                	fld	fs8,0(sp)
 8e8:	0081                	addi	ra,ra,0
 8ea:	0000                	unimp
 8ec:	1c50                	addi	a2,sp,564
 8ee:	0000                	unimp
 8f0:	0000                	unimp
 8f2:	610a                	flw	ft2,128(sp)
 8f4:	1a02                	slli	s4,s4,0x20
 8f6:	0846                	slli	a6,a6,0x11
 8f8:	0000                	unimp
 8fa:	1c58                	addi	a4,sp,564
 8fc:	0000                	unimp
 8fe:	0000                	unimp
 900:	620a                	flw	ft4,128(sp)
 902:	1602                	slli	a2,a2,0x20
 904:	000002a3          	sb	zero,5(zero) # 5 <.Ldebug_info0+0x5>
 908:	1c68                	addi	a0,sp,572
 90a:	0000                	unimp
 90c:	0000                	unimp
 90e:	630a                	flw	ft6,128(sp)
 910:	1602                	slli	a2,a2,0x20
 912:	000002a3          	sb	zero,5(zero) # 5 <.Ldebug_info0+0x5>
 916:	1c70                	addi	a2,sp,572
 918:	0000                	unimp
 91a:	0000                	unimp
 91c:	640a                	flw	fs0,128(sp)
 91e:	1602                	slli	a2,a2,0x20
 920:	000002a3          	sb	zero,5(zero) # 5 <.Ldebug_info0+0x5>
 924:	1c78                	addi	a4,sp,572
 926:	0000                	unimp
 928:	0000                	unimp
 92a:	650a                	flw	fa0,128(sp)
 92c:	1002                	c.slli	zero,0x20
 92e:	09b4                	addi	a3,sp,216
 930:	0000                	unimp
 932:	1c80                	addi	s0,sp,624
 934:	0000                	unimp
 936:	0000                	unimp
 938:	660a                	flw	fa2,128(sp)
 93a:	1002                	c.slli	zero,0x20
 93c:	09c4                	addi	s1,sp,212
 93e:	0000                	unimp
 940:	1c88                	addi	a0,sp,624
 942:	0000                	unimp
 944:	0000                	unimp
 946:	670a                	flw	fa4,128(sp)
 948:	0f02                	c.slli64	t5
 94a:	0088                	addi	a0,sp,64
 94c:	0000                	unimp
 94e:	1ca0                	addi	s0,sp,632
 950:	0000                	unimp
 952:	0000                	unimp
 954:	680a                	flw	fa6,128(sp)
 956:	1602                	slli	a2,a2,0x20
 958:	000002a3          	sb	zero,5(zero) # 5 <.Ldebug_info0+0x5>
 95c:	1ca4                	addi	s1,sp,632
 95e:	0000                	unimp
 960:	0000                	unimp
 962:	690a                	flw	fs2,128(sp)
 964:	1602                	slli	a2,a2,0x20
 966:	000002a3          	sb	zero,5(zero) # 5 <.Ldebug_info0+0x5>
 96a:	1cac                	addi	a1,sp,632
 96c:	0000                	unimp
 96e:	0000                	unimp
 970:	6a0a                	flw	fs4,128(sp)
 972:	1602                	slli	a2,a2,0x20
 974:	000002a3          	sb	zero,5(zero) # 5 <.Ldebug_info0+0x5>
 978:	1cb4                	addi	a3,sp,632
 97a:	0000                	unimp
 97c:	0000                	unimp
 97e:	6b0a                	flw	fs6,128(sp)
 980:	1602                	slli	a2,a2,0x20
 982:	000002a3          	sb	zero,5(zero) # 5 <.Ldebug_info0+0x5>
 986:	1cbc                	addi	a5,sp,632
 988:	0000                	unimp
 98a:	0000                	unimp
 98c:	6c0a                	flw	fs8,128(sp)
 98e:	1602                	slli	a2,a2,0x20
 990:	000002a3          	sb	zero,5(zero) # 5 <.Ldebug_info0+0x5>
 994:	1cc4                	addi	s1,sp,628
 996:	0000                	unimp
 998:	0000                	unimp
 99a:	6d0a                	flw	fs10,128(sp)
 99c:	0802                	c.slli64	a6
 99e:	0088                	addi	a0,sp,64
 9a0:	0000                	unimp
 9a2:	00cc                	addi	a1,sp,68
 9a4:	5a11                	li	s4,-28
 9a6:	b4000007          	0xb4000007
 9aa:	0009                	c.nop	2
 9ac:	1200                	addi	s0,sp,288
 9ae:	0025                	c.nop	9
 9b0:	0000                	unimp
 9b2:	0019                	c.nop	6
 9b4:	5a11                	li	s4,-28
 9b6:	c4000007          	0xc4000007
 9ba:	0009                	c.nop	2
 9bc:	1200                	addi	s0,sp,288
 9be:	0025                	c.nop	9
 9c0:	0000                	unimp
 9c2:	5a110007          	0x5a110007
 9c6:	d4000007          	0xd4000007
 9ca:	0009                	c.nop	2
 9cc:	1200                	addi	s0,sp,288
 9ce:	0025                	c.nop	9
 9d0:	0000                	unimp
 9d2:	f01f0017          	auipc	zero,0xf01f0
 9d6:	720a                	flw	ft4,160(sp)
 9d8:	0702                	c.slli64	a4
 9da:	000009fb          	0x9fb
 9de:	001c                	0x1c
 9e0:	0000                	unimp
 9e2:	0a00                	addi	s0,sp,272
 9e4:	0275                	addi	tp,tp,29
 9e6:	0009fb1b          	0x9fb1b
 9ea:	0000                	unimp
 9ec:	001c                	0x1c
 9ee:	0000                	unimp
 9f0:	0a00                	addi	s0,sp,272
 9f2:	0276                	slli	tp,tp,0x1d
 9f4:	0b18                	addi	a4,sp,400
 9f6:	000a                	c.slli	zero,0x2
 9f8:	7800                	flw	fs0,48(s0)
 9fa:	1100                	addi	s0,sp,160
 9fc:	0499                	addi	s1,s1,6
 9fe:	0000                	unimp
 a00:	00000a0b          	0xa0b
 a04:	2512                	fld	fa0,256(sp)
 a06:	0000                	unimp
 a08:	1d00                	addi	s0,sp,688
 a0a:	1100                	addi	s0,sp,160
 a0c:	0025                	c.nop	9
 a0e:	0000                	unimp
 a10:	00000a1b          	0xa1b
 a14:	2512                	fld	fa0,256(sp)
 a16:	0000                	unimp
 a18:	1d00                	addi	s0,sp,688
 a1a:	2000                	fld	fs0,0(s0)
 a1c:	0af0                	addi	a2,sp,348
 a1e:	40030257          	0x40030257
 a22:	000a                	c.slli	zero,0x2
 a24:	2100                	fld	fs0,0(a0)
 a26:	0000                	unimp
 a28:	0000                	unimp
 a2a:	6e0a                	flw	ft8,128(sp)
 a2c:	0b02                	c.slli64	s6
 a2e:	0000088f          	0x88f
 a32:	0021                	c.nop	8
 a34:	0000                	unimp
 a36:	0a00                	addi	s0,sp,272
 a38:	d40b0277          	0xd40b0277
 a3c:	0009                	c.nop	2
 a3e:	0000                	unimp
 a40:	5a11                	li	s4,-28
 a42:	50000007          	0x50000007
 a46:	000a                	c.slli	zero,0x2
 a48:	1200                	addi	s0,sp,288
 a4a:	0025                	c.nop	9
 a4c:	0000                	unimp
 a4e:	0018                	0x18
 a50:	000d                	c.nop	3
 a52:	0000                	unimp
 a54:	0c00                	addi	s0,sp,528
 a56:	5004                	lw	s1,32(s0)
 a58:	000a                	c.slli	zero,0x2
 a5a:	2200                	fld	fs0,0(a2)
 a5c:	0a66                	slli	s4,s4,0x19
 a5e:	0000                	unimp
 a60:	0019                	c.nop	6
 a62:	0006                	c.slli	zero,0x1
 a64:	0000                	unimp
 a66:	040c                	addi	a1,sp,512
 a68:	00000a5b          	0xa5b
 a6c:	040c                	addi	a1,sp,512
 a6e:	00000323          	sb	zero,6(zero) # 6 <.Ldebug_info0+0x6>
 a72:	7d22                	flw	fs10,40(sp)
 a74:	000a                	c.slli	zero,0x2
 a76:	1900                	addi	s0,sp,176
 a78:	0088                	addi	a0,sp,64
 a7a:	0000                	unimp
 a7c:	0c00                	addi	s0,sp,528
 a7e:	8304                	0x8304
 a80:	000a                	c.slli	zero,0x2
 a82:	0c00                	addi	s0,sp,528
 a84:	7204                	flw	fs1,32(a2)
 a86:	000a                	c.slli	zero,0x2
 a88:	1100                	addi	s0,sp,160
 a8a:	07f4                	addi	a3,sp,972
 a8c:	0000                	unimp
 a8e:	0a99                	addi	s5,s5,6
 a90:	0000                	unimp
 a92:	2512                	fld	fa0,256(sp)
 a94:	0000                	unimp
 a96:	0200                	addi	s0,sp,256
 a98:	2300                	fld	fs0,0(a4)
 a9a:	0000                	unimp
 a9c:	0000                	unimp
 a9e:	070a                	slli	a4,a4,0x2
 aa0:	06001703          	lh	a4,96(zero) # 60 <.Ldebug_info0+0x60>
 aa4:	0000                	unimp
 aa6:	00000023          	sb	zero,0(zero) # 0 <.Ldebug_info0>
 aaa:	0a00                	addi	s0,sp,272
 aac:	0308                	addi	a0,sp,384
 aae:	061d                	addi	a2,a2,7
 ab0:	0006                	c.slli	zero,0x1
 ab2:	1100                	addi	s0,sp,160
 ab4:	0000008f          	0x8f
 ab8:	00000ac3          	fmadd.s	fs5,ft0,ft0,ft0,rne
 abc:	2512                	fld	fa0,256(sp)
 abe:	0000                	unimp
 ac0:	0800                	addi	s0,sp,16
 ac2:	2400                	fld	fs0,8(s0)
 ac4:	0000                	unimp
 ac6:	0000                	unimp
 ac8:	3401                	jal	4c8 <.Ldebug_info0+0x4c8>
 aca:	b309                	j	7cc <.Ldebug_info0+0x7cc>
 acc:	000a                	c.slli	zero,0x2
 ace:	0500                	addi	s0,sp,640
 ad0:	00000003          	lb	zero,0(zero) # 0 <.Ldebug_info0>
 ad4:	2500                	fld	fs0,8(a0)
 ad6:	0068                	addi	a0,sp,12
 ad8:	3601                	jal	5d8 <.Ldebug_info0+0x5d8>
 ada:	a70a                	fsd	ft2,392(sp)
 adc:	0000                	unimp
 ade:	0500                	addi	s0,sp,640
 ae0:	00000003          	lb	zero,0(zero) # 0 <.Ldebug_info0>
 ae4:	2500                	fld	fs0,8(a0)
 ae6:	006c                	addi	a1,sp,12
 ae8:	3701                	jal	9e8 <.Ldebug_info0+0x9e8>
 aea:	a70a                	fsd	ft2,392(sp)
 aec:	0000                	unimp
 aee:	0500                	addi	s0,sp,640
 af0:	00000003          	lb	zero,0(zero) # 0 <.Ldebug_info0>
 af4:	2600                	fld	fs0,8(a2)
 af6:	0000                	unimp
 af8:	0000                	unimp
 afa:	4c01                	li	s8,0
 afc:	0006                	c.slli	zero,0x1
 afe:	0000                	unimp
 b00:	0000                	unimp
 b02:	0000                	unimp
 b04:	0100                	addi	s0,sp,128
 b06:	749c                	flw	fa5,40(s1)
 b08:	2700000b          	0x2700000b
 b0c:	0068                	addi	a0,sp,12
 b0e:	4e01                	li	t3,0
 b10:	a70e                	fsd	ft3,392(sp)
 b12:	0000                	unimp
 b14:	0100                	addi	s0,sp,128
 b16:	6c28                	flw	fa0,88(s0)
 b18:	0100                	addi	s0,sp,128
 b1a:	00a70e4f          	fnmadd.s	ft8,fa4,fa0,ft0,rne
 b1e:	0000                	unimp
 b20:	0000                	unimp
 b22:	0001                	nop
 b24:	0029                	c.nop	10
 b26:	0000                	unimp
 b28:	0100                	addi	s0,sp,128
 b2a:	0d50                	addi	a2,sp,660
 b2c:	00000ab3          	add	s5,zero,zero
 b30:	9102                	jalr	sp
 b32:	2a74                	fld	fa3,208(a2)
	...
 b3c:	0100692b          	0x100692b
 b40:	0e52                	slli	t3,t3,0x14
 b42:	0088                	addi	a0,sp,64
 b44:	0000                	unimp
 b46:	0000                	unimp
 b48:	0000                	unimp
 b4a:	002c                	addi	a1,sp,8
 b4c:	0000                	unimp
 b4e:	2b00                	fld	fs0,16(a4)
 b50:	54010063          	beqz	sp,1090 <.LASF88+0x912>
 b54:	9b12                	add	s6,s6,tp
 b56:	0000                	unimp
 b58:	0000                	unimp
 b5a:	0000                	unimp
 b5c:	2c00                	fld	fs0,24(s0)
 b5e:	0000                	unimp
 b60:	0000                	unimp
 b62:	01006a2b          	0x1006a2b
 b66:	1255                	addi	tp,tp,-11
 b68:	0088                	addi	a0,sp,64
	...
 b72:	0000                	unimp
 b74:	002d                	c.nop	11
 b76:	0000                	unimp
 b78:	0100                	addi	s0,sp,128
 b7a:	0539                	addi	a0,a0,14
 b7c:	0088                	addi	a0,sp,64
	...
 b86:	0000                	unimp
 b88:	9c01                	0x9c01
 b8a:	00000c2f          	0xc2f
 b8e:	01006927          	0x1006927
 b92:	00880943          	fmadd.s	fs2,fa6,fs0,ft0,rne
 b96:	0000                	unimp
 b98:	2e00                	fld	fs0,24(a2)
	...
 ba2:	0bd6                	slli	s7,s7,0x15
 ba4:	0000                	unimp
 ba6:	0000002f          	0x2f
 baa:	0100                	addi	s0,sp,128
 bac:	0948                	addi	a0,sp,148
 bae:	0088                	addi	a0,sp,64
 bb0:	0000                	unimp
 bb2:	0bb8                	addi	a4,sp,472
 bb4:	0000                	unimp
 bb6:	0030                	addi	a2,sp,8
 bb8:	0031                	c.nop	12
 bba:	0000                	unimp
 bbc:	b800                	fsd	fs0,48(s0)
 bbe:	000c                	0xc
 bc0:	cc00                	sw	s0,24(s0)
 bc2:	3200000b          	0x3200000b
 bc6:	5a01                	li	s4,-32
 bc8:	0802                	c.slli64	a6
 bca:	0064                	addi	s1,sp,12
 bcc:	00000033          	add	zero,zero,zero
 bd0:	f500                	fsw	fs0,40(a0)
 bd2:	000a                	c.slli	zero,0x2
 bd4:	0000                	unimp
 bd6:	00000033          	add	zero,zero,zero
 bda:	c400                	sw	s0,8(s0)
 bdc:	000c                	0xc
 bde:	3300                	fld	fs0,32(a4)
 be0:	0000                	unimp
 be2:	0000                	unimp
 be4:	0cd0                	addi	a2,sp,596
 be6:	0000                	unimp
 be8:	0031                	c.nop	12
 bea:	0000                	unimp
 bec:	dc00                	sw	s0,56(s0)
 bee:	000c                	0xc
 bf0:	fe00                	fsw	fs0,56(a2)
 bf2:	3200000b          	0x3200000b
 bf6:	5a01                	li	s4,-32
 bf8:	0804                	addi	s1,sp,16
 bfa:	39e1                	jal	8d2 <.Ldebug_info0+0x8d2>
 bfc:	0024                	addi	s1,sp,8
 bfe:	0031                	c.nop	12
 c00:	0000                	unimp
 c02:	e800                	fsw	fs0,16(s0)
 c04:	000c                	0xc
 c06:	1500                	addi	s0,sp,672
 c08:	000c                	0xc
 c0a:	3200                	fld	fs0,32(a2)
 c0c:	5a01                	li	s4,-32
 c0e:	0305                	addi	t1,t1,1
 c10:	0000                	unimp
 c12:	0000                	unimp
 c14:	3300                	fld	fs0,32(a4)
 c16:	0000                	unimp
 c18:	0000                	unimp
 c1a:	00000c2f          	0xc2f
 c1e:	0034                	addi	a3,sp,8
 c20:	0000                	unimp
 c22:	b800                	fsd	fs0,48(s0)
 c24:	000c                	0xc
 c26:	3200                	fld	fs0,32(a2)
 c28:	5a01                	li	s4,-32
 c2a:	0802                	c.slli64	a6
 c2c:	0064                	addi	s1,sp,12
 c2e:	3500                	fld	fs0,40(a0)
 c30:	0000                	unimp
 c32:	0000                	unimp
 c34:	2101                	jal	1034 <.LASF88+0x8b6>
 c36:	0006                	c.slli	zero,0x1
 c38:	0000                	unimp
 c3a:	0000                	unimp
 c3c:	0000                	unimp
 c3e:	0100                	addi	s0,sp,128
 c40:	b89c                	fsd	fa5,48(s1)
 c42:	000c                	0xc
 c44:	2900                	fld	fs0,16(a0)
 c46:	0000                	unimp
 c48:	0000                	unimp
 c4a:	2301                	jal	114a <.LASF88+0x9cc>
 c4c:	f916                	fsw	ft5,176(sp)
 c4e:	0001                	nop
 c50:	0200                	addi	s0,sp,256
 c52:	6891                	lui	a7,0x4
 c54:	0031                	c.nop	12
 c56:	0000                	unimp
 c58:	f400                	fsw	fs0,40(s0)
 c5a:	000c                	0xc
 c5c:	6c00                	flw	fs0,24(s0)
 c5e:	000c                	0xc
 c60:	3200                	fld	fs0,32(a2)
 c62:	5a01                	li	s4,-32
 c64:	3401                	jal	664 <.Ldebug_info0+0x664>
 c66:	0132                	slli	sp,sp,0xc
 c68:	0031015b          	0x31015b
 c6c:	0031                	c.nop	12
 c6e:	0000                	unimp
 c70:	0000                	unimp
 c72:	000d                	c.nop	3
 c74:	8700                	0x8700
 c76:	000c                	0xc
 c78:	3200                	fld	fs0,32(a2)
 c7a:	5a01                	li	s4,-32
 c7c:	70807803          	0x70807803
 c80:	0132                	slli	sp,sp,0xc
 c82:	7491025b          	0x7491025b
 c86:	3100                	fld	fs0,32(a0)
 c88:	0000                	unimp
 c8a:	0000                	unimp
 c8c:	0cf4                	addi	a3,sp,604
 c8e:	0000                	unimp
 c90:	0ca0                	addi	s0,sp,600
 c92:	0000                	unimp
 c94:	0132                	slli	sp,sp,0xc
 c96:	025a                	slli	tp,tp,0x16
 c98:	2008                	fld	fa0,0(s0)
 c9a:	0132                	slli	sp,sp,0xc
 c9c:	0031015b          	0x31015b
 ca0:	0034                	addi	a3,sp,8
 ca2:	0000                	unimp
 ca4:	0000                	unimp
 ca6:	000d                	c.nop	3
 ca8:	3200                	fld	fs0,32(a2)
 caa:	5a01                	li	s4,-32
 cac:	08807803          	0x8807803
 cb0:	0132                	slli	sp,sp,0xc
 cb2:	7491025b          	0x7491025b
 cb6:	0000                	unimp
 cb8:	0036                	c.slli	zero,0xd
 cba:	0000                	unimp
 cbc:	0000                	unimp
 cbe:	0000                	unimp
 cc0:	0c00                	addi	s0,sp,528
 cc2:	0621                	addi	a2,a2,8
 cc4:	0036                	c.slli	zero,0xd
 cc6:	0000                	unimp
 cc8:	0000                	unimp
 cca:	0000                	unimp
 ccc:	0b00                	addi	s0,sp,400
 cce:	0d16                	slli	s10,s10,0x5
 cd0:	0036                	c.slli	zero,0xd
 cd2:	0000                	unimp
 cd4:	0000                	unimp
 cd6:	0000                	unimp
 cd8:	0c00                	addi	s0,sp,528
 cda:	061f 0036 0000      	0x36061f
 ce0:	0000                	unimp
 ce2:	0000                	unimp
 ce4:	0c00                	addi	s0,sp,528
 ce6:	0622                	slli	a2,a2,0x8
 ce8:	0036                	c.slli	zero,0xd
 cea:	0000                	unimp
 cec:	0000                	unimp
 cee:	0000                	unimp
 cf0:	0d00                	addi	s0,sp,656
 cf2:	05c8                	addi	a0,sp,708
 cf4:	0036                	c.slli	zero,0xd
 cf6:	0000                	unimp
 cf8:	0000                	unimp
 cfa:	0000                	unimp
 cfc:	0e00                	addi	s0,sp,784
 cfe:	00360d8b          	0x360d8b
 d02:	0000                	unimp
 d04:	0000                	unimp
 d06:	0000                	unimp
 d08:	0600                	addi	s0,sp,768
 d0a:	0a6e                	slli	s4,s4,0x1b
	...

Disassembly of section .debug_abbrev:

00000000 <.Ldebug_abbrev0>:
   0:	1101                	addi	sp,sp,-32
   2:	2501                	jal	602 <.LASF96+0x5>
   4:	130e                	slli	t1,t1,0x23
   6:	1b0e030b          	0x1b0e030b
   a:	550e                	lw	a0,224(sp)
   c:	10011117          	auipc	sp,0x10011
  10:	02000017          	auipc	zero,0x2000
  14:	0024                	addi	s1,sp,8
  16:	0b3e0b0b          	0xb3e0b0b
  1a:	00000e03          	lb	t3,0(zero) # 0 <.Ldebug_abbrev0>
  1e:	03001603          	lh	a2,48(zero) # 30 <.Ldebug_abbrev0+0x30>
  22:	3a0e                	fld	fs4,224(sp)
  24:	390b3b0b          	0x390b3b0b
  28:	0013490b          	0x13490b
  2c:	0400                	addi	s0,sp,512
  2e:	0024                	addi	s1,sp,8
  30:	0b3e0b0b          	0xb3e0b0b
  34:	00000803          	lb	a6,0(zero) # 0 <.Ldebug_abbrev0>
  38:	3505                	jal	fffffe58 <.LASF88+0xfffff6da>
  3a:	4900                	lw	s0,16(a0)
  3c:	06000013          	li	zero,96
  40:	0104                	addi	s1,sp,128
  42:	0b3e                	slli	s6,s6,0xf
  44:	13490b0b          	0x13490b0b
  48:	0b3a                	slli	s6,s6,0xe
  4a:	0b390b3b          	0xb390b3b
  4e:	1301                	addi	t1,t1,-32
  50:	0000                	unimp
  52:	03002807          	flw	fa6,48(zero) # 30 <.Ldebug_abbrev0+0x30>
  56:	1c0e                	slli	s8,s8,0x23
  58:	0800000b          	0x800000b
  5c:	0034                	addi	a3,sp,8
  5e:	0b3a0e03          	lb	t3,179(s4) # 40b3 <.LASF88+0x3935>
  62:	0b390b3b          	0xb390b3b
  66:	1349                	addi	t1,t1,-14
  68:	193c193f 13090000 	0x13090000193c193f
  70:	0b01                	addi	s6,s6,0
  72:	3b0b3a0b          	0x3b0b3a0b
  76:	010b390b          	0x10b390b
  7a:	0a000013          	li	zero,160
  7e:	000d                	c.nop	3
  80:	0b3a0e03          	lb	t3,179(s4)
  84:	0b390b3b          	0xb390b3b
  88:	1349                	addi	t1,t1,-14
  8a:	0b38                	addi	a4,sp,408
  8c:	0000                	unimp
  8e:	03000d0b          	0x3000d0b
  92:	3a08                	fld	fa0,48(a2)
  94:	390b3b0b          	0x390b3b0b
  98:	3813490b          	0x3813490b
  9c:	0c00000b          	0xc00000b
  a0:	0b0b000f          	0xb0b000f
  a4:	1349                	addi	t1,t1,-14
  a6:	0000                	unimp
  a8:	130d                	addi	t1,t1,-29
  aa:	0300                	addi	s0,sp,384
  ac:	3c0e                	fld	fs8,224(sp)
  ae:	0019                	c.nop	6
  b0:	0e00                	addi	s0,sp,784
  b2:	0016                	c.slli	zero,0x5
  b4:	0b3a0e03          	lb	t3,179(s4)
  b8:	0b39053b          	0xb39053b
  bc:	1349                	addi	t1,t1,-14
  be:	0000                	unimp
  c0:	0b01170f          	0xb01170f
  c4:	3b0b3a0b          	0x3b0b3a0b
  c8:	010b390b          	0x10b390b
  cc:	10000013          	li	zero,256
  d0:	000d                	c.nop	3
  d2:	0b3a0e03          	lb	t3,179(s4)
  d6:	0b390b3b          	0xb390b3b
  da:	1349                	addi	t1,t1,-14
  dc:	0000                	unimp
  de:	0111                	addi	sp,sp,4
  e0:	4901                	li	s2,0
  e2:	00130113          	addi	sp,t1,1 # fffe6001 <.LASF88+0xfffe5883>
  e6:	1200                	addi	s0,sp,288
  e8:	0021                	c.nop	8
  ea:	1349                	addi	t1,t1,-14
  ec:	00000b2f          	0xb2f
  f0:	0b000f13          	li	t5,176
  f4:	1400000b          	0x1400000b
  f8:	0e030113          	addi	sp,t1,224
  fc:	0b3a0b0b          	0xb3a0b0b
 100:	0b390b3b          	0xb390b3b
 104:	1301                	addi	t1,t1,-32
 106:	0000                	unimp
 108:	1315                	addi	t1,t1,-27
 10a:	0301                	addi	t1,t1,0
 10c:	0b0e                	slli	s6,s6,0x3
 10e:	3a05                	jal	fffffa3e <.LASF88+0xfffff2c0>
 110:	390b3b0b          	0x390b3b0b
 114:	0013010b          	0x13010b
 118:	1600                	addi	s0,sp,800
 11a:	000d                	c.nop	3
 11c:	0b3a0e03          	lb	t3,179(s4)
 120:	0b390b3b          	0xb390b3b
 124:	1349                	addi	t1,t1,-14
 126:	0538                	addi	a4,sp,648
 128:	0000                	unimp
 12a:	27001517          	auipc	a0,0x27001
 12e:	0019                	c.nop	6
 130:	1800                	addi	s0,sp,48
 132:	0115                	addi	sp,sp,5
 134:	13491927          	0x13491927
 138:	1301                	addi	t1,t1,-32
 13a:	0000                	unimp
 13c:	0519                	addi	a0,a0,6
 13e:	4900                	lw	s0,16(a0)
 140:	1a000013          	li	zero,416
 144:	0026                	c.slli	zero,0x9
 146:	1349                	addi	t1,t1,-14
 148:	0000                	unimp
 14a:	0301131b          	0x301131b
 14e:	0b0e                	slli	s6,s6,0x3
 150:	3a05                	jal	fffffa80 <.LASF88+0xfffff302>
 152:	39053b0b          	0x39053b0b
 156:	0013010b          	0x13010b
 15a:	1c00                	addi	s0,sp,560
 15c:	000d                	c.nop	3
 15e:	0b3a0e03          	lb	t3,179(s4)
 162:	0b39053b          	0xb39053b
 166:	1349                	addi	t1,t1,-14
 168:	0b38                	addi	a4,sp,408
 16a:	0000                	unimp
 16c:	0d1d                	addi	s10,s10,7
 16e:	0300                	addi	s0,sp,384
 170:	3a0e                	fld	fs4,224(sp)
 172:	39053b0b          	0x39053b0b
 176:	3813490b          	0x3813490b
 17a:	0005                	c.nop	1
 17c:	1e00                	addi	s0,sp,816
 17e:	0e030113          	addi	sp,t1,224
 182:	0b3a0b0b          	0xb3a0b0b
 186:	0b39053b          	0xb39053b
 18a:	1301                	addi	t1,t1,-32
 18c:	0000                	unimp
 18e:	131f 0b01 3a0b      	0x3a0b0b01131f
 194:	39053b0b          	0x39053b0b
 198:	0013010b          	0x13010b
 19c:	2000                	fld	fs0,0(s0)
 19e:	0b0b0117          	auipc	sp,0xb0b0
 1a2:	0b3a                	slli	s6,s6,0xe
 1a4:	0b39053b          	0xb39053b
 1a8:	1301                	addi	t1,t1,-32
 1aa:	0000                	unimp
 1ac:	0d21                	addi	s10,s10,8
 1ae:	0300                	addi	s0,sp,384
 1b0:	3a0e                	fld	fs4,224(sp)
 1b2:	39053b0b          	0x39053b0b
 1b6:	0013490b          	0x13490b
 1ba:	2200                	fld	fs0,0(a2)
 1bc:	0115                	addi	sp,sp,5
 1be:	13011927          	0x13011927
 1c2:	0000                	unimp
 1c4:	03003423          	0x3003423
 1c8:	3a0e                	fld	fs4,224(sp)
 1ca:	39053b0b          	0x39053b0b
 1ce:	3f13490b          	0x3f13490b
 1d2:	3c19                	jal	fffffbe8 <.LASF88+0xfffff46a>
 1d4:	0019                	c.nop	6
 1d6:	2400                	fld	fs0,8(s0)
 1d8:	0034                	addi	a3,sp,8
 1da:	0b3a0e03          	lb	t3,179(s4)
 1de:	0b390b3b          	0xb390b3b
 1e2:	1349                	addi	t1,t1,-14
 1e4:	1802193f 34250000 	0x342500001802193f
 1ec:	0300                	addi	s0,sp,384
 1ee:	3a08                	fld	fa0,48(a2)
 1f0:	390b3b0b          	0x390b3b0b
 1f4:	3f13490b          	0x3f13490b
 1f8:	0219                	addi	tp,tp,6
 1fa:	0018                	0x18
 1fc:	2600                	fld	fs0,8(a2)
 1fe:	012e                	slli	sp,sp,0xb
 200:	0e03193f 0b3b0b3a 	0xb3b0b3a0e03193f
 208:	0b39                	addi	s6,s6,14
 20a:	0111                	addi	sp,sp,4
 20c:	0612                	slli	a2,a2,0x4
 20e:	1840                	addi	s0,sp,52
 210:	01194297          	auipc	t0,0x1194
 214:	27000013          	li	zero,624
 218:	0034                	addi	a3,sp,8
 21a:	0b3a0803          	lb	a6,179(s4)
 21e:	0b390b3b          	0xb390b3b
 222:	1349                	addi	t1,t1,-14
 224:	0b1c                	addi	a5,sp,400
 226:	0000                	unimp
 228:	3428                	fld	fa0,104(s0)
 22a:	0300                	addi	s0,sp,384
 22c:	3a08                	fld	fa0,48(a2)
 22e:	390b3b0b          	0x390b3b0b
 232:	1c13490b          	0x1c13490b
 236:	0006                	c.slli	zero,0x1
 238:	2900                	fld	fs0,16(a0)
 23a:	0034                	addi	a3,sp,8
 23c:	0b3a0e03          	lb	t3,179(s4)
 240:	0b390b3b          	0xb390b3b
 244:	1349                	addi	t1,t1,-14
 246:	1802                	slli	a6,a6,0x20
 248:	0000                	unimp
 24a:	0b2a                	slli	s6,s6,0xa
 24c:	1101                	addi	sp,sp,-32
 24e:	1201                	addi	tp,tp,-32
 250:	0006                	c.slli	zero,0x1
 252:	2b00                	fld	fs0,16(a4)
 254:	0034                	addi	a3,sp,8
 256:	0b3a0803          	lb	a6,179(s4)
 25a:	0b390b3b          	0xb390b3b
 25e:	1349                	addi	t1,t1,-14
 260:	1702                	slli	a4,a4,0x20
 262:	0000                	unimp
 264:	0b2c                	addi	a1,sp,408
 266:	5501                	li	a0,-32
 268:	2d000017          	auipc	zero,0x2d000
 26c:	012e                	slli	sp,sp,0xb
 26e:	0e03193f 0b3b0b3a 	0xb3b0b3a0e03193f
 276:	0b39                	addi	s6,s6,14
 278:	13491927          	0x13491927
 27c:	0111                	addi	sp,sp,4
 27e:	0612                	slli	a2,a2,0x4
 280:	1840                	addi	s0,sp,52
 282:	01194297          	auipc	t0,0x1194
 286:	2e000013          	li	zero,736
 28a:	0111010b          	0x111010b
 28e:	0612                	slli	a2,a2,0x4
 290:	1301                	addi	t1,t1,-32
 292:	0000                	unimp
 294:	3f012e2f          	0x3f012e2f
 298:	0319                	addi	t1,t1,6
 29a:	3a0e                	fld	fs4,224(sp)
 29c:	390b3b0b          	0x390b3b0b
 2a0:	3c13490b          	0x3c13490b
 2a4:	0119                	addi	sp,sp,6
 2a6:	30000013          	li	zero,768
 2aa:	0018                	0x18
 2ac:	0000                	unimp
 2ae:	8931                	andi	a0,a0,12
 2b0:	0182                	c.slli64	gp
 2b2:	1101                	addi	sp,sp,-32
 2b4:	3101                	jal	fffffeb4 <.LASF88+0xfffff736>
 2b6:	00130113          	addi	sp,t1,1
 2ba:	3200                	fld	fs0,32(a2)
 2bc:	828a                	mv	t0,sp
 2be:	0001                	nop
 2c0:	1802                	slli	a6,a6,0x20
 2c2:	4291                	li	t0,4
 2c4:	0018                	0x18
 2c6:	3300                	fld	fs0,32(a4)
 2c8:	8289                	srli	a3,a3,0x2
 2ca:	0001                	nop
 2cc:	0111                	addi	sp,sp,4
 2ce:	1331                	addi	t1,t1,-20
 2d0:	0000                	unimp
 2d2:	8934                	0x8934
 2d4:	0182                	c.slli64	gp
 2d6:	1101                	addi	sp,sp,-32
 2d8:	3101                	jal	fffffed8 <.LASF88+0xfffff75a>
 2da:	35000013          	li	zero,848
 2de:	012e                	slli	sp,sp,0xb
 2e0:	0e03193f 0b3b0b3a 	0xb3b0b3a0e03193f
 2e8:	0b39                	addi	s6,s6,14
 2ea:	01111927          	0x1111927
 2ee:	0612                	slli	a2,a2,0x4
 2f0:	1840                	addi	s0,sp,52
 2f2:	01194297          	auipc	t0,0x1194
 2f6:	36000013          	li	zero,864
 2fa:	002e                	c.slli	zero,0xb
 2fc:	193c193f 0e030e6e 	0xe030e6e193c193f
 304:	0b3a                	slli	s6,s6,0xe
 306:	0b390b3b          	0xb390b3b
 30a:	0000                	unimp
	...

Disassembly of section .debug_loc:

00000000 <.LLST0>:
	...
   8:	0002                	c.slli64	zero
   a:	9f30                	0x9f30
	...
  14:	0001                	nop
  16:	005f 0000 0000      	0x5f
  1c:	0000                	unimp
	...

0000001f <.LLST1>:
	...
  27:	0005                	c.nop	1
  29:	007e                	c.slli	zero,0x1f
  2b:	0194                	addi	a3,sp,192
  2d:	009f 0000 0000      	0x9f
  33:	0000                	unimp
  35:	0100                	addi	s0,sp,128
  37:	5c00                	lw	s0,56(s0)
	...

00000041 <.LLST2>:
	...
  49:	0002                	c.slli64	zero
  4b:	9f30                	0x9f30
	...
  55:	0005                	c.nop	1
  57:	7d38                	flw	fa4,120(a0)
  59:	1c00                	addi	s0,sp,560
  5b:	009f 0000 0000      	0x9f
  61:	0000                	unimp
  63:	0500                	addi	s0,sp,640
  65:	3900                	fld	fs0,48(a0)
  67:	007d                	c.nop	31
  69:	9f1c                	0x9f1c
	...
  73:	0005                	c.nop	1
  75:	7d38                	flw	fa4,120(a0)
  77:	1c00                	addi	s0,sp,560
  79:	009f 0000 0000      	0x9f
  7f:	0000                	unimp
	...

Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	002c                	addi	a1,sp,8
   2:	0000                	unimp
   4:	0002                	c.slli64	zero
   6:	0000                	unimp
   8:	0000                	unimp
   a:	0004                	0x4
	...

Disassembly of section .debug_ranges:

00000000 <.Ldebug_ranges0>:
	...

Disassembly of section .debug_line:

00000000 <.Ldebug_line0>:
   0:	0590                	addi	a2,sp,704
   2:	0000                	unimp
   4:	03030003          	lb	zero,48(t1)
   8:	0000                	unimp
   a:	0101                	addi	sp,sp,0
   c:	000d0efb          	0xd0efb
  10:	0101                	addi	sp,sp,0
  12:	0101                	addi	sp,sp,0
  14:	0000                	unimp
  16:	0100                	addi	s0,sp,128
  18:	0000                	unimp
  1a:	7301                	lui	t1,0xfffe0
  1c:	6372                	flw	ft6,28(sp)
  1e:	2f00                	fld	fs0,24(a4)
  20:	6f68                	flw	fa0,92(a4)
  22:	656d                	lui	a0,0x1b
  24:	796e6e2f          	0x796e6e2f
  28:	2f6e                	fld	ft10,216(sp)
  2a:	702e                	flw	ft0,232(sp)
  2c:	616c                	flw	fa1,68(a0)
  2e:	6674                	flw	fa3,76(a2)
  30:	696d726f          	jal	tp,d76c6 <.LASF88+0xd6f48>
  34:	61702f6f          	jal	t5,2e4a <.LASF88+0x26cc>
  38:	67616b63          	bltu	sp,s6,6ae <.LASF163+0x6e>
  3c:	7365                	lui	t1,0xffff9
  3e:	6f6f742f          	0x6f6f742f
  42:	636c                	flw	fa1,68(a4)
  44:	6168                	flw	fa0,68(a0)
  46:	6e69                	lui	t3,0x1a
  48:	722d                	lui	tp,0xfffeb
  4a:	7369                	lui	t1,0xffffa
  4c:	722f7663          	bgeu	t5,sp,778 <.LASF100+0x7>
  50:	7369                	lui	t1,0xffffa
  52:	6e2d7663          	bgeu	s10,sp,73e <.LASF157+0x3>
  56:	2d656e6f          	jal	t3,5632c <.LASF88+0x55bae>
  5a:	6d65                	lui	s10,0x19
  5c:	6562                	flw	fa0,24(sp)
  5e:	2f64                	fld	fs1,216(a4)
  60:	6e69                	lui	t3,0x1a
  62:	64756c63          	bltu	a0,t2,6ba <.LASF163+0x7a>
  66:	2f65                	jal	81e <.LASF88+0xa0>
  68:	616d                	addi	sp,sp,240
  6a:	6e696863          	bltu	s2,t1,75a <.LASF114+0x3>
  6e:	0065                	c.nop	25
  70:	6d6f682f          	0x6d6f682f
  74:	2f65                	jal	82c <.LASF88+0xae>
  76:	6e6e                	flw	ft8,216(sp)
  78:	6e79                	lui	t3,0x1e
  7a:	6c702e2f          	0x6c702e2f
  7e:	7461                	lui	s0,0xffff8
  80:	6f66                	flw	ft10,88(sp)
  82:	6d72                	flw	fs10,28(sp)
  84:	6f69                	lui	t5,0x1a
  86:	6361702f          	0x6361702f
  8a:	6567616b          	0x6567616b
  8e:	6f742f73          	csrrs	t5,0x6f7,s0
  92:	68636c6f          	jal	s8,36718 <.LASF88+0x35f9a>
  96:	6961                	lui	s2,0x18
  98:	2d6e                	fld	fs10,216(sp)
  9a:	6972                	flw	fs2,28(sp)
  9c:	2f766373          	csrrsi	t1,0x2f7,12
  a0:	6972                	flw	fs2,28(sp)
  a2:	2d766373          	csrrsi	t1,0x2d7,12
  a6:	6f6e                	flw	ft10,216(sp)
  a8:	656e                	flw	fa0,216(sp)
  aa:	652d                	lui	a0,0xb
  ac:	626d                	lui	tp,0x1b
  ae:	6465                	lui	s0,0x19
  b0:	636e692f          	0x636e692f
  b4:	756c                	flw	fa1,108(a0)
  b6:	6564                	flw	fs1,76(a0)
  b8:	7379732f          	0x7379732f
  bc:	2f00                	fld	fs0,24(a4)
  be:	6f68                	flw	fa0,92(a4)
  c0:	656d                	lui	a0,0x1b
  c2:	796e6e2f          	0x796e6e2f
  c6:	2f6e                	fld	ft10,216(sp)
  c8:	702e                	flw	ft0,232(sp)
  ca:	616c                	flw	fa1,68(a0)
  cc:	6674                	flw	fa3,76(a2)
  ce:	696d726f          	jal	tp,d7764 <.LASF88+0xd6fe6>
  d2:	61702f6f          	jal	t5,2ee8 <.LASF88+0x276a>
  d6:	67616b63          	bltu	sp,s6,74c <.LASF132>
  da:	7365                	lui	t1,0xffff9
  dc:	6172662f          	0x6172662f
  e0:	656d                	lui	a0,0x1b
  e2:	6b726f77          	0x6b726f77
  e6:	772d                	lui	a4,0xfffeb
  e8:	6e2d6863          	bltu	s10,sp,7d8 <.LASF88+0x5a>
  ec:	6f656e6f          	jal	t3,567e2 <.LASF88+0x56064>
  f0:	64732d73          	csrrs	s10,0x647,t1
  f4:	65502f6b          	0x65502f6b
  f8:	6972                	flw	fs2,28(sp)
  fa:	6870                	flw	fa2,84(s0)
  fc:	7265                	lui	tp,0xffff9
  fe:	6c61                	lui	s8,0x18
 100:	3368632f          	0x3368632f
 104:	7632                	flw	fa2,44(sp)
 106:	3030                	fld	fa2,96(s0)
 108:	2f78                	fld	fa4,216(a4)
 10a:	6e69                	lui	t3,0x1a
 10c:	682f0063          	beq	t5,sp,78c <.LASF88+0xe>
 110:	2f656d6f          	jal	s10,56406 <.LASF88+0x55c88>
 114:	6e6e                	flw	ft8,216(sp)
 116:	6e79                	lui	t3,0x1e
 118:	6c702e2f          	0x6c702e2f
 11c:	7461                	lui	s0,0xffff8
 11e:	6f66                	flw	ft10,88(sp)
 120:	6d72                	flw	fs10,28(sp)
 122:	6f69                	lui	t5,0x1a
 124:	6361702f          	0x6361702f
 128:	6567616b          	0x6567616b
 12c:	72662f73          	csrrs	t5,0x726,a2
 130:	6d61                	lui	s10,0x18
 132:	7765                	lui	a4,0xffff9
 134:	2d6b726f          	jal	tp,b740a <.LASF88+0xb6c8c>
 138:	2d686377          	0x2d686377
 13c:	6f6e                	flw	ft10,216(sp)
 13e:	656e                	flw	fa0,216(sp)
 140:	732d736f          	jal	t1,d7872 <.LASF88+0xd70f4>
 144:	6b64                	flw	fs1,84(a4)
 146:	726f432f          	0x726f432f
 14a:	2f65                	jal	902 <.LASF88+0x184>
 14c:	32336863          	bltu	t1,gp,47c <.Ldebug_line0+0x47c>
 150:	3076                	fld	ft0,376(sp)
 152:	7830                	flw	fa2,112(s0)
 154:	2f00                	fld	fs0,24(a4)
 156:	6f68                	flw	fa0,92(a4)
 158:	656d                	lui	a0,0x1b
 15a:	796e6e2f          	0x796e6e2f
 15e:	2f6e                	fld	ft10,216(sp)
 160:	702e                	flw	ft0,232(sp)
 162:	616c                	flw	fa1,68(a0)
 164:	6674                	flw	fa3,76(a2)
 166:	696d726f          	jal	tp,d77fc <.LASF88+0xd707e>
 16a:	61702f6f          	jal	t5,2f80 <.LASF88+0x2802>
 16e:	67616b63          	bltu	sp,s6,7e4 <.LASF88+0x66>
 172:	7365                	lui	t1,0xffff9
 174:	6f6f742f          	0x6f6f742f
 178:	636c                	flw	fa1,68(a4)
 17a:	6168                	flw	fa0,68(a0)
 17c:	6e69                	lui	t3,0x1a
 17e:	722d                	lui	tp,0xfffeb
 180:	7369                	lui	t1,0xffffa
 182:	6c2f7663          	bgeu	t5,sp,84e <.LASF88+0xd0>
 186:	6269                	lui	tp,0x1a
 188:	6363672f          	0x6363672f
 18c:	7369722f          	0x7369722f
 190:	6e2d7663          	bgeu	s10,sp,87c <.LASF88+0xfe>
 194:	2d656e6f          	jal	t3,5646a <.LASF88+0x55cec>
 198:	6d65                	lui	s10,0x19
 19a:	6562                	flw	fa0,24(sp)
 19c:	2f64                	fld	fs1,216(a4)
 19e:	2e38                	fld	fa4,88(a2)
 1a0:	2e32                	fld	ft8,264(sp)
 1a2:	2f30                	fld	fa2,88(a4)
 1a4:	6e69                	lui	t3,0x1a
 1a6:	64756c63          	bltu	a0,t2,7fe <.LASF88+0x80>
 1aa:	0065                	c.nop	25
 1ac:	6e69                	lui	t3,0x1a
 1ae:	64756c63          	bltu	a0,t2,806 <.LASF88+0x88>
 1b2:	0065                	c.nop	25
 1b4:	6d6f682f          	0x6d6f682f
 1b8:	2f65                	jal	970 <.LASF88+0x1f2>
 1ba:	6e6e                	flw	ft8,216(sp)
 1bc:	6e79                	lui	t3,0x1e
 1be:	6c702e2f          	0x6c702e2f
 1c2:	7461                	lui	s0,0xffff8
 1c4:	6f66                	flw	ft10,88(sp)
 1c6:	6d72                	flw	fs10,28(sp)
 1c8:	6f69                	lui	t5,0x1a
 1ca:	6361702f          	0x6361702f
 1ce:	6567616b          	0x6567616b
 1d2:	72662f73          	csrrs	t5,0x726,a2
 1d6:	6d61                	lui	s10,0x18
 1d8:	7765                	lui	a4,0xffff9
 1da:	2d6b726f          	jal	tp,b74b0 <.LASF88+0xb6d32>
 1de:	2d686377          	0x2d686377
 1e2:	6f6e                	flw	ft10,216(sp)
 1e4:	656e                	flw	fa0,216(sp)
 1e6:	732d736f          	jal	t1,d7918 <.LASF88+0xd719a>
 1ea:	6b64                	flw	fs1,84(a4)
 1ec:	6265442f          	0x6265442f
 1f0:	6775                	lui	a4,0x1d
 1f2:	3368632f          	0x3368632f
 1f6:	7632                	flw	fa2,44(sp)
 1f8:	3030                	fld	fa2,96(s0)
 1fa:	0078                	addi	a4,sp,12
 1fc:	6d6f682f          	0x6d6f682f
 200:	2f65                	jal	9b8 <.LASF88+0x23a>
 202:	6e6e                	flw	ft8,216(sp)
 204:	6e79                	lui	t3,0x1e
 206:	6c702e2f          	0x6c702e2f
 20a:	7461                	lui	s0,0xffff8
 20c:	6f66                	flw	ft10,88(sp)
 20e:	6d72                	flw	fs10,28(sp)
 210:	6f69                	lui	t5,0x1a
 212:	6361702f          	0x6361702f
 216:	6567616b          	0x6567616b
 21a:	6f742f73          	csrrs	t5,0x6f7,s0
 21e:	68636c6f          	jal	s8,368a4 <.LASF88+0x36126>
 222:	6961                	lui	s2,0x18
 224:	2d6e                	fld	fs10,216(sp)
 226:	6972                	flw	fs2,28(sp)
 228:	2f766373          	csrrsi	t1,0x2f7,12
 22c:	6972                	flw	fs2,28(sp)
 22e:	2d766373          	csrrsi	t1,0x2d7,12
 232:	6f6e                	flw	ft10,216(sp)
 234:	656e                	flw	fa0,216(sp)
 236:	652d                	lui	a0,0xb
 238:	626d                	lui	tp,0x1b
 23a:	6465                	lui	s0,0x19
 23c:	636e692f          	0x636e692f
 240:	756c                	flw	fa1,108(a0)
 242:	6564                	flw	fs1,76(a0)
 244:	0000                	unimp
 246:	616d                	addi	sp,sp,240
 248:	6e69                	lui	t3,0x1a
 24a:	632e                	flw	ft6,200(sp)
 24c:	0100                	addi	s0,sp,128
 24e:	0000                	unimp
 250:	645f 6665 7561      	0x75616665645f
 256:	746c                	flw	fa1,108(s0)
 258:	745f 7079 7365      	0x73657079745f
 25e:	682e                	flw	fa6,200(sp)
 260:	0200                	addi	s0,sp,256
 262:	0000                	unimp
 264:	735f 6474 6e69      	0x6e696474735f
 26a:	2e74                	fld	fa3,216(a2)
 26c:	0068                	addi	a0,sp,12
 26e:	63000003          	lb	zero,1584(zero) # 630 <.LASF89+0x3>
 272:	3368                	fld	fa0,224(a4)
 274:	7632                	flw	fa2,44(sp)
 276:	3030                	fld	fa2,96(s0)
 278:	2e78                	fld	fa4,216(a2)
 27a:	0068                	addi	a0,sp,12
 27c:	0004                	0x4
 27e:	6300                	flw	fs0,0(a4)
 280:	5f65726f          	jal	tp,57876 <.LASF88+0x570f8>
 284:	6972                	flw	fs2,28(sp)
 286:	2e766373          	csrrsi	t1,0x2e7,12
 28a:	0068                	addi	a0,sp,12
 28c:	0005                	c.nop	1
 28e:	6300                	flw	fs0,0(a4)
 290:	3368                	fld	fa0,224(a4)
 292:	7632                	flw	fa2,44(sp)
 294:	3030                	fld	fa2,96(s0)
 296:	5f78                	lw	a4,124(a4)
 298:	6f697067          	0x6f697067
 29c:	682e                	flw	fa6,200(sp)
 29e:	0400                	addi	s0,sp,512
 2a0:	0000                	unimp
 2a2:	6f6c                	flw	fa1,92(a4)
 2a4:	682e6b63          	bltu	t3,sp,93a <.LASF88+0x1bc>
 2a8:	0300                	addi	s0,sp,384
 2aa:	0000                	unimp
 2ac:	745f 7079 7365      	0x73657079745f
 2b2:	682e                	flw	fa6,200(sp)
 2b4:	0300                	addi	s0,sp,384
 2b6:	0000                	unimp
 2b8:	64647473          	csrrci	s0,0x646,8
 2bc:	6665                	lui	a2,0x19
 2be:	682e                	flw	fa6,200(sp)
 2c0:	0600                	addi	s0,sp,768
 2c2:	0000                	unimp
 2c4:	6572                	flw	fa0,28(sp)
 2c6:	6e65                	lui	t3,0x19
 2c8:	2e74                	fld	fa3,216(a2)
 2ca:	0068                	addi	a0,sp,12
 2cc:	73000003          	lb	zero,1840(zero) # 730 <.LASF95+0x5>
 2d0:	7379                	lui	t1,0xffffe
 2d2:	6574                	flw	fa3,76(a0)
 2d4:	5f6d                	li	t5,-5
 2d6:	32336863          	bltu	t1,gp,606 <.LASF6+0x2>
 2da:	3076                	fld	ft0,376(sp)
 2dc:	7830                	flw	fa2,112(s0)
 2de:	682e                	flw	fa6,200(sp)
 2e0:	0700                	addi	s0,sp,896
 2e2:	0000                	unimp
 2e4:	6564                	flw	fs1,76(a0)
 2e6:	7562                	flw	fa0,56(sp)
 2e8:	00682e67          	0x682e67
 2ec:	0008                	0x8
 2ee:	7300                	flw	fs0,32(a4)
 2f0:	6474                	flw	fa3,76(s0)
 2f2:	6f69                	lui	t5,0x1a
 2f4:	682e                	flw	fa6,200(sp)
 2f6:	0900                	addi	s0,sp,144
 2f8:	0000                	unimp
 2fa:	32336863          	bltu	t1,gp,62a <.LASF42+0x4>
 2fe:	3076                	fld	ft0,376(sp)
 300:	7830                	flw	fa2,112(s0)
 302:	725f 6363 682e      	0x682e6363725f
 308:	0400                	addi	s0,sp,512
 30a:	0000                	unimp
 30c:	0500                	addi	s0,sp,640
 30e:	0001                	nop
 310:	0205                	addi	tp,tp,1
 312:	0000                	unimp
 314:	0000                	unimp
 316:	05012103          	lw	sp,80(sp) # b0b01ee <.LASF88+0xb0afa70>
 31a:	0305                	addi	t1,t1,1
 31c:	0901                	addi	s2,s2,0
 31e:	0000                	unimp
 320:	0501                	addi	a0,a0,0
 322:	0601                	addi	a2,a2,0
 324:	00097f03          	0x97f03
 328:	0100                	addi	s0,sp,128
 32a:	0505                	addi	a0,a0,1
 32c:	00090303          	lb	t1,0(s2) # 18000 <.LASF88+0x17882>
 330:	0100                	addi	s0,sp,128
 332:	00090403          	lb	s0,0(s2)
 336:	0100                	addi	s0,sp,128
 338:	1605                	addi	a2,a2,-31
 33a:	00097a03          	0x97a03
 33e:	0100                	addi	s0,sp,128
 340:	0505                	addi	a0,a0,1
 342:	0306                	slli	t1,t1,0x1
 344:	0902                	c.slli64	s2
 346:	0000                	unimp
 348:	0301                	addi	t1,t1,0
 34a:	0901                	addi	s2,s2,0
 34c:	0000                	unimp
 34e:	0501                	addi	a0,a0,0
 350:	0621                	addi	a2,a2,8
 352:	00090003          	lb	zero,0(s2)
 356:	0100                	addi	s0,sp,128
 358:	2205                	jal	478 <.Ldebug_line0+0x478>
 35a:	00090103          	lb	sp,0(s2)
 35e:	0100                	addi	s0,sp,128
 360:	2305                	jal	880 <.LASF88+0x102>
 362:	00090103          	lb	sp,0(s2)
 366:	0100                	addi	s0,sp,128
 368:	0505                	addi	a0,a0,1
 36a:	00090103          	lb	sp,0(s2)
 36e:	0100                	addi	s0,sp,128
 370:	2105                	jal	790 <.LASF88+0x12>
 372:	00097d03          	0x97d03
 376:	0100                	addi	s0,sp,128
 378:	0505                	addi	a0,a0,1
 37a:	0306                	slli	t1,t1,0x1
 37c:	0901                	addi	s2,s2,0
 37e:	0000                	unimp
 380:	0301                	addi	t1,t1,0
 382:	0901                	addi	s2,s2,0
 384:	0000                	unimp
 386:	0501                	addi	a0,a0,0
 388:	0622                	slli	a2,a2,0x8
 38a:	00097f03          	0x97f03
 38e:	0100                	addi	s0,sp,128
 390:	2305                	jal	8b0 <.LASF88+0x132>
 392:	00090103          	lb	sp,0(s2)
 396:	0100                	addi	s0,sp,128
 398:	0505                	addi	a0,a0,1
 39a:	0306                	slli	t1,t1,0x1
 39c:	0901                	addi	s2,s2,0
 39e:	0000                	unimp
 3a0:	0301                	addi	t1,t1,0
 3a2:	0902                	c.slli64	s2
 3a4:	0000                	unimp
 3a6:	0301                	addi	t1,t1,0
 3a8:	0901                	addi	s2,s2,0
 3aa:	0000                	unimp
 3ac:	0501                	addi	a0,a0,0
 3ae:	0621                	addi	a2,a2,8
 3b0:	00090003          	lb	zero,0(s2)
 3b4:	0100                	addi	s0,sp,128
 3b6:	2205                	jal	4d6 <.Ldebug_line0+0x4d6>
 3b8:	00090103          	lb	sp,0(s2)
 3bc:	0100                	addi	s0,sp,128
 3be:	0505                	addi	a0,a0,1
 3c0:	00090203          	lb	tp,0(s2)
 3c4:	0100                	addi	s0,sp,128
 3c6:	2105                	jal	7e6 <.LASF88+0x68>
 3c8:	00097d03          	0x97d03
 3cc:	0100                	addi	s0,sp,128
 3ce:	0505                	addi	a0,a0,1
 3d0:	0306                	slli	t1,t1,0x1
 3d2:	0901                	addi	s2,s2,0
 3d4:	0000                	unimp
 3d6:	0501                	addi	a0,a0,0
 3d8:	0622                	slli	a2,a2,0x8
 3da:	00090003          	lb	zero,0(s2)
 3de:	0100                	addi	s0,sp,128
 3e0:	0505                	addi	a0,a0,1
 3e2:	0306                	slli	t1,t1,0x1
 3e4:	0901                	addi	s2,s2,0
 3e6:	0000                	unimp
 3e8:	0501                	addi	a0,a0,0
 3ea:	00030623          	sb	zero,12(t1) # ffffe00c <.LASF88+0xffffd88e>
 3ee:	0009                	c.nop	2
 3f0:	0100                	addi	s0,sp,128
 3f2:	0505                	addi	a0,a0,1
 3f4:	0306                	slli	t1,t1,0x1
 3f6:	0901                	addi	s2,s2,0
 3f8:	0000                	unimp
 3fa:	0501                	addi	a0,a0,0
 3fc:	0601                	addi	a2,a2,0
 3fe:	00090103          	lb	sp,0(s2)
 402:	0100                	addi	s0,sp,128
 404:	0009                	c.nop	2
 406:	0000                	unimp
 408:	0101                	addi	sp,sp,0
 40a:	0105                	addi	sp,sp,1
 40c:	0500                	addi	s0,sp,640
 40e:	0002                	c.slli64	zero
 410:	0000                	unimp
 412:	0300                	addi	s0,sp,384
 414:	00cc                	addi	a1,sp,68
 416:	0501                	addi	a0,a0,0
 418:	0305                	addi	t1,t1,1
 41a:	0901                	addi	s2,s2,0
 41c:	0000                	unimp
 41e:	0301                	addi	t1,t1,0
 420:	0901                	addi	s2,s2,0
 422:	0000                	unimp
 424:	0301                	addi	t1,t1,0
 426:	0901                	addi	s2,s2,0
 428:	0000                	unimp
 42a:	0501                	addi	a0,a0,0
 42c:	0601                	addi	a2,a2,0
 42e:	00097d03          	0x97d03
 432:	0100                	addi	s0,sp,128
 434:	0d05                	addi	s10,s10,1
 436:	00090303          	lb	t1,0(s2)
 43a:	0100                	addi	s0,sp,128
 43c:	0505                	addi	a0,a0,1
 43e:	0306                	slli	t1,t1,0x1
 440:	0902                	c.slli64	s2
 442:	0000                	unimp
 444:	0501                	addi	a0,a0,0
 446:	030a                	slli	t1,t1,0x2
 448:	0900                	addi	s0,sp,144
 44a:	0000                	unimp
 44c:	0501                	addi	a0,a0,0
 44e:	060e                	slli	a2,a2,0x3
 450:	00090003          	lb	zero,0(s2)
 454:	0100                	addi	s0,sp,128
 456:	1d05                	addi	s10,s10,-31
 458:	00090d03          	lb	s10,0(s2)
 45c:	0100                	addi	s0,sp,128
 45e:	00090103          	lb	sp,0(s2)
 462:	0100                	addi	s0,sp,128
 464:	0505                	addi	a0,a0,1
 466:	00097203          	0x97203
 46a:	0100                	addi	s0,sp,128
 46c:	0905                	addi	s2,s2,1
 46e:	0306                	slli	t1,t1,0x1
 470:	0902                	c.slli64	s2
 472:	0000                	unimp
 474:	0501                	addi	a0,a0,0
 476:	061a                	slli	a2,a2,0x6
 478:	00090003          	lb	zero,0(s2)
 47c:	0100                	addi	s0,sp,128
 47e:	1205                	addi	tp,tp,-31
 480:	00090003          	lb	zero,0(s2)
 484:	0100                	addi	s0,sp,128
 486:	0905                	addi	s2,s2,1
 488:	0306                	slli	t1,t1,0x1
 48a:	0901                	addi	s2,s2,0
 48c:	0000                	unimp
 48e:	0501                	addi	a0,a0,0
 490:	030e                	slli	t1,t1,0x3
 492:	0900                	addi	s0,sp,144
 494:	0000                	unimp
 496:	0501                	addi	a0,a0,0
 498:	0612                	slli	a2,a2,0x4
 49a:	00097f03          	0x97f03
 49e:	0100                	addi	s0,sp,128
 4a0:	0d05                	addi	s10,s10,1
 4a2:	0306                	slli	t1,t1,0x1
 4a4:	00000903          	lb	s2,0(zero) # 0 <.Ldebug_line0>
 4a8:	0501                	addi	a0,a0,0
 4aa:	0610                	addi	a2,sp,768
 4ac:	00090003          	lb	zero,0(s2)
 4b0:	0100                	addi	s0,sp,128
 4b2:	1d05                	addi	s10,s10,-31
 4b4:	00090203          	lb	tp,0(s2)
 4b8:	0100                	addi	s0,sp,128
 4ba:	1005                	c.nop	-31
 4bc:	00097e03          	0x97e03
 4c0:	0100                	addi	s0,sp,128
 4c2:	1105                	addi	sp,sp,-31
 4c4:	0306                	slli	t1,t1,0x1
 4c6:	0902                	c.slli64	s2
 4c8:	0000                	unimp
 4ca:	0301                	addi	t1,t1,0
 4cc:	0901                	addi	s2,s2,0
 4ce:	0000                	unimp
 4d0:	0301                	addi	t1,t1,0
 4d2:	0901                	addi	s2,s2,0
 4d4:	0000                	unimp
 4d6:	0301                	addi	t1,t1,0
 4d8:	0904                	addi	s1,sp,144
 4da:	0000                	unimp
 4dc:	0301                	addi	t1,t1,0
 4de:	0901                	addi	s2,s2,0
 4e0:	0000                	unimp
 4e2:	0501                	addi	a0,a0,0
 4e4:	061d                	addi	a2,a2,7
 4e6:	00090003          	lb	zero,0(s2)
 4ea:	0100                	addi	s0,sp,128
 4ec:	0d05                	addi	s10,s10,1
 4ee:	0306                	slli	t1,t1,0x1
 4f0:	0902                	c.slli64	s2
 4f2:	0000                	unimp
 4f4:	0501                	addi	a0,a0,0
 4f6:	0003060f          	0x3060f
 4fa:	0009                	c.nop	2
 4fc:	0100                	addi	s0,sp,128
 4fe:	0d05                	addi	s10,s10,1
 500:	0306                	slli	t1,t1,0x1
 502:	0901                	addi	s2,s2,0
 504:	0000                	unimp
 506:	0501                	addi	a0,a0,0
 508:	0609                	addi	a2,a2,2
 50a:	00097203          	0x97203
 50e:	0100                	addi	s0,sp,128
 510:	2605                	jal	830 <.LASF88+0xb2>
 512:	0200                	addi	s0,sp,256
 514:	0204                	addi	s1,sp,256
 516:	00097d03          	0x97d03
 51a:	0100                	addi	s0,sp,128
 51c:	0505                	addi	a0,a0,1
 51e:	0200                	addi	s0,sp,256
 520:	0204                	addi	s1,sp,256
 522:	00090003          	lb	zero,0(s2)
 526:	0100                	addi	s0,sp,128
 528:	0105                	addi	sp,sp,1
 52a:	00091403          	lh	s0,0(s2)
 52e:	0100                	addi	s0,sp,128
 530:	0009                	c.nop	2
 532:	0000                	unimp
 534:	0101                	addi	sp,sp,0
 536:	0105                	addi	sp,sp,1
 538:	0500                	addi	s0,sp,640
 53a:	0002                	c.slli64	zero
 53c:	0000                	unimp
 53e:	0300                	addi	s0,sp,384
 540:	0139                	addi	sp,sp,14
 542:	0505                	addi	a0,a0,1
 544:	00090103          	lb	sp,0(s2)
 548:	0100                	addi	s0,sp,128
 54a:	00090203          	lb	tp,0(s2)
 54e:	0100                	addi	s0,sp,128
 550:	00090103          	lb	sp,0(s2)
 554:	0100                	addi	s0,sp,128
 556:	00090103          	lb	sp,0(s2)
 55a:	0100                	addi	s0,sp,128
 55c:	00090103          	lb	sp,0(s2)
 560:	0100                	addi	s0,sp,128
 562:	00090203          	lb	tp,0(s2)
 566:	0100                	addi	s0,sp,128
 568:	00090103          	lb	sp,0(s2)
 56c:	0100                	addi	s0,sp,128
 56e:	0200                	addi	s0,sp,256
 570:	0104                	addi	s1,sp,128
 572:	00090203          	lb	tp,0(s2)
 576:	0100                	addi	s0,sp,128
 578:	0905                	addi	s2,s2,1
 57a:	0200                	addi	s0,sp,256
 57c:	0104                	addi	s1,sp,128
 57e:	00090203          	lb	tp,0(s2)
 582:	0100                	addi	s0,sp,128
 584:	0200                	addi	s0,sp,256
 586:	0104                	addi	s1,sp,128
 588:	00090103          	lb	sp,0(s2)
 58c:	0100                	addi	s0,sp,128
 58e:	0009                	c.nop	2
 590:	0000                	unimp
 592:	0101                	addi	sp,sp,0

Disassembly of section .debug_str:

00000000 <.LASF151>:
   0:	74737953          	0x74737953
   4:	6d65                	lui	s10,0x19
   6:	65726f43          	0x65726f43
   a:	636f6c43          	fmadd.d	fs8,ft10,fs6,fa2,unknown
   e:	          	0x6f5f006b

00000010 <.LASF68>:
  10:	6f5f 5f6e 7865      	0x78655f6e6f5f
  16:	7469                	lui	s0,0xffffa
  18:	615f 6772 0073      	0x736772615f

0000001e <.LASF39>:
  1e:	4f495047          	fmsub.q	ft0,fs2,fs4,fs1,unknown
  22:	4d5f 646f 0065      	0x65646f4d5f

00000028 <.LASF136>:
  28:	775f 7463 6d6f      	0x6d6f7463775f
  2e:	5f62                	lw	t5,56(sp)
  30:	74617473          	csrrci	s0,0x746,2
  34:	0065                	c.nop	25

00000036 <.LASF147>:
  36:	6e5f 616d 6c6c      	0x6c6c616d6e5f
  3c:	          	jal	t1,64ac <.LASF88+0x5d2e>

0000003f <.LASF37>:
  3f:	4f495047          	fmsub.q	ft0,fs2,fs4,fs1,unknown
  43:	505f 6e69       	0x5f006e69505f

00000048 <.LASF133>:
  48:	725f 3834       	0x5f003834725f

0000004d <.LASF62>:
  4d:	5f5f 6d74 6d5f      	0x6d5f6d745f5f
  53:	6164                	flw	fs1,68(a0)
  55:	0079                	c.nop	30

00000057 <.LASF138>:
  57:	735f 6769 616e      	0x616e6769735f
  5d:	5f6c                	lw	a1,124(a4)
  5f:	7562                	flw	fa0,56(sp)
  61:	0066                	c.slli	zero,0x19

00000063 <.LASF0>:
  63:	6e75                	lui	t3,0x1d
  65:	6e676973          	csrrsi	s2,0x6e6,14
  69:	6465                	lui	s0,0x19
  6b:	6920                	flw	fs0,80(a0)
  6d:	746e                	flw	fs0,248(sp)
	...

00000070 <.LASF82>:
  70:	6c5f 6662 6973      	0x697366626c5f
  76:	657a                	flw	fa0,156(sp)
	...

00000079 <.LASF80>:
  79:	665f 616c 7367      	0x7367616c665f
	...

00000080 <.LASF97>:
  80:	655f 7272 6f6e      	0x6f6e7272655f
	...

00000087 <.LASF94>:
  87:	6d5f 7362 6174      	0x617473626d5f
  8d:	6574                	flw	fa3,76(a0)
	...

00000090 <.LASF84>:
  90:	725f 6165 0064      	0x646165725f

00000096 <.LASF140>:
  96:	6d5f 7262 656c      	0x656c72626d5f
  9c:	5f6e                	lw	t5,248(sp)
  9e:	74617473          	csrrci	s0,0x746,2
  a2:	0065                	c.nop	25

000000a4 <.LASF162>:
  a4:	4f495047          	fmsub.q	ft0,fs2,fs4,fs1,unknown
  a8:	495f 696e 0074      	0x74696e495f

000000ae <.LASF99>:
  ae:	735f 6474 756f      	0x756f6474735f
  b4:	0074                	addi	a3,sp,12

000000b6 <.LASF43>:
  b6:	665f 6f70 5f73      	0x5f736f70665f
  bc:	0074                	addi	a3,sp,12

000000be <.LASF19>:
  be:	4e49                	li	t3,18
  c0:	5244                	lw	s1,36(a2)
	...

000000c3 <.LASF83>:
  c3:	635f 6f6f 696b      	0x696b6f6f635f
  c9:	0065                	c.nop	25

000000cb <.LASF25>:
  cb:	4f495047          	fmsub.q	ft0,fs2,fs4,fs1,unknown
  cf:	535f 6570 6465      	0x64656570535f
  d5:	325f 484d 007a      	0x7a484d325f

000000db <.LASF57>:
  db:	425f 6769 6e69      	0x6e696769425f
  e1:	0074                	addi	a3,sp,12

000000e3 <.LASF65>:
  e3:	5f5f 6d74 775f      	0x775f6d745f5f
  e9:	6164                	flw	fs1,68(a0)
  eb:	0079                	c.nop	30

000000ed <.LASF107>:
  ed:	725f 7365 6c75      	0x6c757365725f
  f3:	0074                	addi	a3,sp,12

000000f5 <.LASF14>:
  f5:	6975                	lui	s2,0x1d
  f7:	746e                	flw	fs0,248(sp)
  f9:	745f3233          	0x745f3233
	...

000000fe <.LASF61>:
  fe:	5f5f 6d74 685f      	0x685f6d745f5f
 104:	0072756f          	jal	a0,2790a <.LASF88+0x2718c>

00000108 <.LASF102>:
 108:	655f 656d 6772      	0x6772656d655f
 10e:	6e65                	lui	t3,0x19
 110:	          	bgeu	zero,a6,702 <.LASF29+0x6>

00000113 <.LASF75>:
 113:	665f 736e       	0x5f00736e665f

00000118 <.LASF48>:
 118:	5f5f 6f63 6e75      	0x6e756f635f5f
 11e:	0074                	addi	a3,sp,12

00000120 <.LASF17>:
 120:	4c474643          	0x4c474643
 124:	0052                	c.slli	zero,0x14

00000126 <.LASF60>:
 126:	5f5f 6d74 6d5f      	0x6d5f6d745f5f
 12c:	6e69                	lui	t3,0x1a
	...

0000012f <.LASF152>:
 12f:	695f 706d 7275      	0x7275706d695f
 135:	5f65                	li	t5,-7
 137:	7470                	flw	fa2,108(s0)
 139:	0072                	c.slli	zero,0x1c

0000013b <.LASF146>:
 13b:	6e5f 7865 6674      	0x667478656e5f
	...

00000142 <.LASF24>:
 142:	4f495047          	fmsub.q	ft0,fs2,fs4,fs1,unknown
 146:	535f 6570 6465      	0x64656570535f
 14c:	315f 4d30 7a48      	0x7a484d30315f
	...

00000153 <.LASF123>:
 153:	725f 6e61 3464      	0x34646e61725f
 159:	0038                	addi	a4,sp,8

0000015b <.LASF108>:
 15b:	725f 7365 6c75      	0x6c757365725f
 161:	5f74                	lw	a3,124(a4)
 163:	          	0x6f6c006b

00000165 <.LASF11>:
 165:	6f6c                	flw	fa1,92(a4)
 167:	676e                	flw	fa4,216(sp)
 169:	6c20                	flw	fs0,88(s0)
 16b:	20676e6f          	jal	t3,76371 <.LASF88+0x75bf3>
 16f:	6e75                	lui	t3,0x1d
 171:	6e676973          	csrrsi	s2,0x6e6,14
 175:	6465                	lui	s0,0x19
 177:	6920                	flw	fs0,80(a0)
 179:	746e                	flw	fs0,248(sp)
	...

0000017c <.LASF129>:
 17c:	615f 6373 6974      	0x69746373615f
 182:	656d                	lui	a0,0x1b
 184:	625f 6675       	0x5f006675625f

00000189 <.LASF79>:
 189:	5f5f 4673 4c49      	0x4c4946735f5f
 18f:	0045                	c.nop	17

00000191 <.LASF56>:
 191:	775f 7364       	0x5f007364775f

00000196 <.LASF5>:
 196:	5f5f 6975 746e      	0x746e69755f5f
 19c:	3631                	jal	fffffca8 <.LASF88+0xfffff52a>
 19e:	745f        	0x465f5f00745f

000001a1 <.LASF119>:
 1a1:	5f5f 4946 454c      	0x454c49465f5f
	...

000001a8 <.LASF91>:
 1a8:	6f5f 6666 6573      	0x657366666f5f
 1ae:	0074                	addi	a3,sp,12

000001b0 <.LASF30>:
 1b0:	4f495047          	fmsub.q	ft0,fs2,fs4,fs1,unknown
 1b4:	4d5f 646f 5f65      	0x5f65646f4d5f
 1ba:	5049                	c.li	zero,-14
 1bc:	0044                	addi	s1,sp,4

000001be <.LASF31>:
 1be:	4f495047          	fmsub.q	ft0,fs2,fs4,fs1,unknown
 1c2:	4d5f 646f 5f65      	0x5f65646f4d5f
 1c8:	5049                	c.li	zero,-14
 1ca:	0055                	c.nop	21

000001cc <.LASF20>:
 1cc:	4454554f          	0x4454554f
 1d0:	0052                	c.slli	zero,0x14

000001d2 <.LASF59>:
 1d2:	5f5f 6d74 735f      	0x735f6d745f5f
 1d8:	6365                	lui	t1,0x19
	...

000001db <.LASF32>:
 1db:	4f495047          	fmsub.q	ft0,fs2,fs4,fs1,unknown
 1df:	4d5f 646f 5f65      	0x5f65646f4d5f
 1e5:	5f74754f          	fnmadd.q	fa0,fs0,fs7,fa1
 1e9:	          	fnmadd.q	fs0,ft0,fa6,fa1,rmm

000001ec <.LASF66>:
 1ec:	5f5f 6d74 795f      	0x795f6d745f5f
 1f2:	6164                	flw	fs1,68(a0)
 1f4:	0079                	c.nop	30

000001f6 <.LASF101>:
 1f6:	695f 636e       	0x5f00636e695f

000001fb <.LASF74>:
 1fb:	695f 646e       	0x5f00646e695f

00000200 <.LASF53>:
 200:	6e5f 7865 0074      	0x7478656e5f

00000206 <.LASF142>:
 206:	6d5f 7362 7472      	0x747273626d5f
 20c:	7363776f          	jal	a4,37942 <.LASF88+0x371c4>
 210:	735f 6174 6574      	0x65746174735f
	...

00000217 <.LASF21>:
 217:	5342                	lw	t1,48(sp)
 219:	5248                	lw	a0,36(a2)
	...

0000021c <.LASF49>:
 21c:	5f5f 6176 756c      	0x756c61765f5f
 222:	0065                	c.nop	25

00000224 <.LASF109>:
 224:	705f 7335       	0x5f007335705f

00000229 <.LASF144>:
 229:	775f 7363 7472      	0x74727363775f
 22f:	73626d6f          	jal	s10,26965 <.LASF88+0x261e7>
 233:	735f 6174 6574      	0x65746174735f
	...

0000023a <.LASF134>:
 23a:	6d5f 6c62 6e65      	0x6e656c626d5f
 240:	735f 6174 6574      	0x65746174735f
	...

00000247 <.LASF33>:
 247:	4f495047          	fmsub.q	ft0,fs2,fs4,fs1,unknown
 24b:	4d5f 646f 5f65      	0x5f65646f4d5f
 251:	5f74754f          	fnmadd.q	fa0,fs0,fs7,fa1
 255:	5050                	lw	a2,36(s0)
	...

00000258 <.LASF118>:
 258:	72616863          	bltu	sp,t1,988 <.LASF88+0x20a>
	...

0000025d <.LASF115>:
 25d:	735f 6769 665f      	0x665f6769735f
 263:	6e75                	lui	t3,0x1d
 265:	          	beq	t5,s5,925 <.LASF88+0x1a7>

00000267 <.LASF141>:
 267:	6d5f 7262 6f74      	0x6f7472626d5f
 26d:	735f6377          	0x735f6377
 271:	6174                	flw	fa3,68(a0)
 273:	6574                	flw	fa3,76(a0)
	...

00000276 <.LASF15>:
 276:	4944                	lw	s1,20(a0)
 278:	4c424153          	0x4c424153
 27c:	0045                	c.nop	17

0000027e <.LASF51>:
 27e:	665f 6f6c 6b63      	0x6b636f6c665f
 284:	745f        	0x775f5f00745f

00000287 <.LASF46>:
 287:	5f5f 6377 0068      	0x6863775f5f

0000028d <.LASF122>:
 28d:	695f 626f 0073      	0x73626f695f

00000293 <.LASF12>:
 293:	6975                	lui	s2,0x1d
 295:	746e                	flw	fs0,248(sp)
 297:	5f38                	lw	a4,120(a4)
 299:	0074                	addi	a3,sp,12

0000029b <.LASF87>:
 29b:	635f 6f6c 6573      	0x65736f6c635f
	...

000002a2 <.LASF105>:
 2a2:	5f5f 6473 6469      	0x646964735f5f
 2a8:	6e69                	lui	t3,0x1a
 2aa:	7469                	lui	s0,0xffffa
	...

000002ad <.LASF98>:
 2ad:	735f 6474 6e69      	0x6e696474735f
	...

000002b4 <.LASF131>:
 2b4:	675f 6d61 616d      	0x616d6d61675f
 2ba:	735f 6769 676e      	0x676e6769735f
 2c0:	6d61                	lui	s10,0x18
	...

000002c3 <.LASF10>:
 2c3:	6f6c                	flw	fa1,92(a4)
 2c5:	676e                	flw	fa4,216(sp)
 2c7:	6c20                	flw	fs0,88(s0)
 2c9:	20676e6f          	jal	t3,764cf <.LASF88+0x75d51>
 2cd:	6e69                	lui	t3,0x1a
 2cf:	0074                	addi	a3,sp,12

000002d1 <.LASF159>:
 2d1:	5355                	li	t1,-11
 2d3:	5241                	li	tp,-16
 2d5:	5f54                	lw	a3,60(a4)
 2d7:	7250                	flw	fa2,36(a2)
 2d9:	6e69                	lui	t3,0x1a
 2db:	6674                	flw	fa3,76(a2)
 2dd:	495f 696e 0074      	0x74696e495f

000002e3 <.LASF160>:
 2e3:	7270                	flw	fa2,100(a2)
 2e5:	6e69                	lui	t3,0x1a
 2e7:	6674                	flw	fa3,76(a2)
	...

000002ea <.LASF77>:
 2ea:	625f 7361 0065      	0x657361625f

000002f0 <.LASF110>:
 2f0:	665f 6572 6c65      	0x6c656572665f
 2f6:	7369                	lui	t1,0xffffa
 2f8:	0074                	addi	a3,sp,12

000002fa <.LASF125>:
 2fa:	6d5f 6c75 0074      	0x746c756d5f

00000300 <.LASF52>:
 300:	5f5f 4c55 6e6f      	0x6e6f4c555f5f
 306:	          	jr	1909(t5) # 1a775 <.LASF88+0x19ff7>

00000308 <.LASF143>:
 308:	775f 7263 6f74      	0x6f747263775f
 30e:	626d                	lui	tp,0x1b
 310:	735f 6174 6574      	0x65746174735f
	...

00000317 <.LASF81>:
 317:	665f 6c69 0065      	0x656c69665f

0000031d <.LASF106>:
 31d:	5f5f 6c63 6165      	0x61656c635f5f
 323:	756e                	flw	fa0,248(sp)
 325:	0070                	addi	a2,sp,12

00000327 <.LASF50>:
 327:	6d5f 7362 6174      	0x617473626d5f
 32d:	6574                	flw	fa3,76(a0)
 32f:	745f        	0x6e665f00745f

00000332 <.LASF69>:
 332:	665f 616e 6772      	0x6772616e665f
 338:	          	0x50470073

0000033a <.LASF155>:
 33a:	4f495047          	fmsub.q	ft0,fs2,fs4,fs1,unknown
 33e:	495f 696e 5374      	0x5374696e495f
 344:	7274                	flw	fa3,100(a2)
 346:	6375                	lui	t1,0x1d
 348:	7574                	flw	fa3,108(a0)
 34a:	6572                	flw	fa0,28(sp)
	...

0000034d <.LASF67>:
 34d:	5f5f 6d74 695f      	0x695f6d745f5f
 353:	74736473          	csrrsi	s0,0x747,6
	...

00000358 <.LASF145>:
 358:	685f 655f 7272      	0x7272655f685f
 35e:	6f6e                	flw	ft10,216(sp)
	...

00000361 <.LASF158>:
 361:	6544                	flw	fs1,12(a0)
 363:	616c                	flw	fa1,68(a0)
 365:	5f79                	li	t5,-2
 367:	6e49                	lui	t3,0x12
 369:	7469                	lui	s0,0xffffa
	...

0000036c <.LASF34>:
 36c:	4f495047          	fmsub.q	ft0,fs2,fs4,fs1,unknown
 370:	4d5f 646f 5f65      	0x5f65646f4d5f
 376:	4641                	li	a2,16
 378:	4f5f 0044       	0x616400444f5f

0000037c <.LASF154>:
 37c:	6164                	flw	fs1,68(a0)
 37e:	6174                	flw	fa3,68(a0)
	...

00000381 <.LASF63>:
 381:	5f5f 6d74 6d5f      	0x6d5f6d745f5f
 387:	          	jal	t3,6977 <.LASF88+0x61f9>

0000038a <.LASF41>:
 38a:	4c5f 434f 5f4b      	0x5f4b434f4c5f
 390:	0054                	addi	a3,sp,4

00000392 <.LASF13>:
 392:	6975                	lui	s2,0x1d
 394:	746e                	flw	fs0,248(sp)
 396:	3631                	jal	fffffea2 <.LASF88+0xfffff724>
 398:	745f        	0x69616d00745f

0000039b <.LASF167>:
 39b:	616d                	addi	sp,sp,240
 39d:	6e69                	lui	t3,0x1a
	...

000003a0 <.LASF85>:
 3a0:	775f 6972 6574      	0x65746972775f
	...

000003a7 <.LASF165>:
 3a7:	6d6f682f          	0x6d6f682f
 3ab:	2f65                	jal	b63 <.LASF88+0x3e5>
 3ad:	6e6e                	flw	ft8,216(sp)
 3af:	6e79                	lui	t3,0x1e
 3b1:	7168672f          	0x7168672f
 3b5:	7469672f          	0x7469672f
 3b9:	7568                	flw	fa0,108(a0)
 3bb:	2e62                	fld	ft8,24(sp)
 3bd:	2f6d6f63          	bltu	s10,s6,6bb <.LASF163+0x7b>
 3c1:	68743437          	lui	s0,0x68743
 3c5:	7972742f          	0x7972742f
 3c9:	722d                	lui	tp,0xfffeb
 3cb:	6165                	addi	sp,sp,112
 3cd:	746c                	flw	fa1,108(s0)
 3cf:	6d69                	lui	s10,0x1a
 3d1:	2d65                	jal	a89 <.LASF88+0x30b>
 3d3:	7265706f          	j	57af9 <.LASF88+0x5737b>
 3d7:	7461                	lui	s0,0xffff8
 3d9:	6f69                	lui	t5,0x1a
 3db:	2f6e                	fld	ft10,216(sp)
 3dd:	32336863          	bltu	t1,gp,70d <.LASF29+0x11>
 3e1:	3076                	fld	ft0,376(sp)
 3e3:	3330                	fld	fa2,96(a4)
 3e5:	632d                	lui	t1,0xb
 3e7:	7570                	flw	fa2,108(a0)
	...

000003ea <.LASF27>:
 3ea:	4f495047          	fmsub.q	ft0,fs2,fs4,fs1,unknown
 3ee:	65657053          	0x65657053
 3f2:	5f64                	lw	s1,124(a4)
 3f4:	7954                	flw	fa3,52(a0)
 3f6:	6570                	flw	fa2,76(a0)
 3f8:	6544                	flw	fs1,12(a0)
 3fa:	0066                	c.slli	zero,0x19

000003fc <.LASF73>:
 3fc:	615f 6574 6978      	0x69786574615f
 402:	0074                	addi	a3,sp,12

00000404 <.LASF28>:
 404:	4f495047          	fmsub.q	ft0,fs2,fs4,fs1,unknown
 408:	4d5f 646f 5f65      	0x5f65646f4d5f
 40e:	4941                	li	s2,16
 410:	004e                	c.slli	zero,0x13

00000412 <.LASF3>:
 412:	726f6873          	csrrsi	a6,0x726,30
 416:	2074                	fld	fa3,192(s0)
 418:	6e69                	lui	t3,0x1a
 41a:	0074                	addi	a3,sp,12

0000041c <.LASF35>:
 41c:	4f495047          	fmsub.q	ft0,fs2,fs4,fs1,unknown
 420:	4d5f 646f 5f65      	0x5f65646f4d5f
 426:	4641                	li	a2,16
 428:	505f 0050       	0x6f6c0050505f

0000042c <.LASF7>:
 42c:	6f6c                	flw	fa1,92(a4)
 42e:	676e                	flw	fa4,216(sp)
 430:	6920                	flw	fs0,80(a0)
 432:	746e                	flw	fs0,248(sp)
	...

00000435 <.LASF38>:
 435:	4f495047          	fmsub.q	ft0,fs2,fs4,fs1,unknown
 439:	535f 6570 6465      	0x64656570535f
	...

00000440 <.LASF156>:
 440:	6544                	flw	fs1,12(a0)
 442:	616c                	flw	fa1,68(a0)
 444:	5f79                	li	t5,-2
 446:	734d                	lui	t1,0xffff3
	...

00000449 <.LASF117>:
 449:	5f5f 6673       	0x5f0066735f5f

0000044e <.LASF55>:
 44e:	735f 6769 006e      	0x6e6769735f

00000454 <.LASF92>:
 454:	645f 7461 0061      	0x617461645f

0000045a <.LASF47>:
 45a:	5f5f 6377 6268      	0x626863775f5f
	...

00000461 <.LASF153>:
 461:	675f 6f6c 6162      	0x61626f6c675f
 467:	5f6c                	lw	a1,124(a4)
 469:	6d69                	lui	s10,0x1a
 46b:	7570                	flw	fa2,108(a0)
 46d:	6572                	flw	fa0,28(sp)
 46f:	705f 7274       	0x74007274705f

00000474 <.LASF166>:
 474:	6174                	flw	fa3,68(a0)
 476:	          	csrrsi	s6,0x5f0,0

00000479 <.LASF64>:
 479:	5f5f 6d74 795f      	0x795f6d745f5f
 47f:	6165                	addi	sp,sp,112
 481:	0072                	c.slli	zero,0x1c

00000483 <.LASF130>:
 483:	6c5f 636f 6c61      	0x6c61636f6c5f
 489:	6974                	flw	fa3,84(a0)
 48b:	656d                	lui	a0,0x1b
 48d:	625f 6675       	0x5f006675625f

00000492 <.LASF148>:
 492:	755f 756e 6573      	0x6573756e755f
 498:	0064                	addi	s1,sp,12

0000049a <.LASF4>:
 49a:	5f5f 6975 746e      	0x746e69755f5f
 4a0:	5f38                	lw	a4,120(a4)
 4a2:	0074                	addi	a3,sp,12

000004a4 <.LASF113>:
 4a4:	6e5f 7765       	0x5f0077656e5f

000004a9 <.LASF111>:
 4a9:	635f 7476 656c      	0x656c7476635f
 4af:	006e                	c.slli	zero,0x1b

000004b1 <.LASF54>:
 4b1:	6d5f 7861 6477      	0x647778616d5f
 4b7:	          	0x6c5f0073

000004b9 <.LASF137>:
 4b9:	6c5f 3436 5f61      	0x5f6134366c5f
 4bf:	7562                	flw	fa0,56(sp)
 4c1:	0066                	c.slli	zero,0x19

000004c3 <.LASF23>:
 4c3:	4f495047          	fmsub.q	ft0,fs2,fs4,fs1,unknown
 4c7:	545f 7079 4465      	0x44657079545f
 4cd:	6665                	lui	a2,0x19
	...

000004d0 <.LASF36>:
 4d0:	4f495047          	fmsub.q	ft0,fs2,fs4,fs1,unknown
 4d4:	6f4d                	lui	t5,0x13
 4d6:	6564                	flw	fs1,76(a0)
 4d8:	545f 7079 4465      	0x44657079545f
 4de:	6665                	lui	a2,0x19
	...

000004e1 <.LASF90>:
 4e1:	625f 6b6c 6973      	0x69736b6c625f
 4e7:	657a                	flw	fa0,156(sp)
	...

000004ea <.LASF58>:
 4ea:	5f5f 6d74       	0x5f006d745f5f

000004ef <.LASF93>:
 4ef:	6c5f 636f 006b      	0x6b636f6c5f

000004f5 <.LASF16>:
 4f5:	4e45                	li	t3,17
 4f7:	4241                	li	tp,16
 4f9:	454c                	lw	a1,12(a0)
	...

000004fc <.LASF9>:
 4fc:	6f6c                	flw	fa1,92(a4)
 4fe:	676e                	flw	fa4,216(sp)
 500:	7520                	flw	fs0,104(a0)
 502:	736e                	flw	ft6,248(sp)
 504:	6769                	lui	a4,0x1a
 506:	656e                	flw	fa0,216(sp)
 508:	2064                	fld	fs1,192(s0)
 50a:	6e69                	lui	t3,0x1a
 50c:	0074                	addi	a3,sp,12

0000050e <.LASF121>:
 50e:	6e5f 6f69 7362      	0x73626f696e5f
	...

00000515 <.LASF45>:
 515:	746e6977          	0x746e6977
 519:	745f        	0x73645f00745f

0000051c <.LASF70>:
 51c:	645f 6f73 685f      	0x685f6f73645f
 522:	6e61                	lui	t3,0x18
 524:	6c64                	flw	fs1,92(s0)
 526:	0065                	c.nop	25

00000528 <.LASF149>:
 528:	5f5f 6f6c 6b63      	0x6b636f6c5f5f
	...

0000052f <.LASF40>:
 52f:	4f495047          	fmsub.q	ft0,fs2,fs4,fs1,unknown
 533:	495f 696e 5474      	0x5474696e495f
 539:	7079                	c.lui	zero,0xffffe
 53b:	4465                	li	s0,25
 53d:	6665                	lui	a2,0x19
	...

00000540 <.LASF112>:
 540:	635f 7476 7562      	0x75627476635f
 546:	0066                	c.slli	zero,0x19

00000548 <.LASF2>:
 548:	6e75                	lui	t3,0x1d
 54a:	6e676973          	csrrsi	s2,0x6e6,14
 54e:	6465                	lui	s0,0x19
 550:	6320                	flw	fs0,64(a4)
 552:	6168                	flw	fa0,68(a0)
 554:	0072                	c.slli	zero,0x1c

00000556 <.LASF8>:
 556:	5f5f 6975 746e      	0x746e69755f5f
 55c:	745f3233          	0x745f3233
	...

00000561 <.LASF26>:
 561:	4f495047          	fmsub.q	ft0,fs2,fs4,fs1,unknown
 565:	535f 6570 6465      	0x64656570535f
 56b:	355f 4d30 7a48      	0x7a484d30355f
	...

00000572 <.LASF139>:
 572:	675f 7465 6164      	0x61647465675f
 578:	6574                	flw	fa3,76(a0)
 57a:	655f 7272       	0x5f007272655f

0000057f <.LASF126>:
 57f:	615f 6464       	0x47006464615f

00000584 <.LASF168>:
 584:	4f495047          	fmsub.q	ft0,fs2,fs4,fs1,unknown
 588:	495f 494e 0054      	0x54494e495f

0000058e <.LASF76>:
 58e:	5f5f 6273 6675      	0x667562735f5f
	...

00000595 <.LASF120>:
 595:	675f 756c 0065      	0x65756c675f

0000059b <.LASF161>:
 59b:	4352                	lw	t1,20(sp)
 59d:	50415f43          	fmadd.s	ft10,ft2,ft4,fa0,unknown
 5a1:	3242                	fld	ft4,48(sp)
 5a3:	6550                	flw	fa2,12(a0)
 5a5:	6972                	flw	fs2,28(sp)
 5a7:	6870                	flw	fa2,84(s0)
 5a9:	636f6c43          	fmadd.d	fs8,ft10,fs6,fa2,unknown
 5ad:	646d436b          	0x646d436b
	...

000005b2 <.LASF116>:
 5b2:	5f5f 6773 756c      	0x756c67735f5f
 5b8:	0065                	c.nop	25

000005ba <.LASF128>:
 5ba:	735f 7274 6f74      	0x6f747274735f
 5c0:	616c5f6b          	0x616c5f6b
 5c4:	          	csrrci	s0,0x5f0,0

000005c7 <.LASF135>:
 5c7:	6d5f 7462 776f      	0x776f74626d5f
 5cd:	74735f63          	bge	t1,t2,d2b <.LASF88+0x5ad>
 5d1:	7461                	lui	s0,0xffff8
 5d3:	0065                	c.nop	25

000005d5 <.LASF104>:
 5d5:	6c5f 636f 6c61      	0x6c61636f6c5f
 5db:	0065                	c.nop	25

000005dd <.LASF44>:
 5dd:	735f 6973 657a      	0x657a6973735f
 5e3:	745f        	0x67697300745f

000005e6 <.LASF1>:
 5e6:	6e676973          	csrrsi	s2,0x6e6,14
 5ea:	6465                	lui	s0,0x19
 5ec:	6320                	flw	fs0,64(a4)
 5ee:	6168                	flw	fa0,68(a0)
 5f0:	0072                	c.slli	zero,0x1c

000005f2 <.LASF164>:
 5f2:	2f637273          	csrrci	tp,0x2f6,6
 5f6:	616d                	addi	sp,sp,240
 5f8:	6e69                	lui	t3,0x1a
 5fa:	632e                	flw	ft6,200(sp)
	...

000005fd <.LASF96>:
 5fd:	725f 6565 746e      	0x746e6565725f
	...

00000604 <.LASF6>:
 604:	726f6873          	csrrsi	a6,0x726,30
 608:	2074                	fld	fa3,192(s0)
 60a:	6e75                	lui	t3,0x1d
 60c:	6e676973          	csrrsi	s2,0x6e6,14
 610:	6465                	lui	s0,0x19
 612:	6920                	flw	fs0,80(a0)
 614:	746e                	flw	fs0,248(sp)
	...

00000617 <.LASF71>:
 617:	665f 746e 7079      	0x7079746e665f
 61d:	7365                	lui	t1,0xffff9
	...

00000620 <.LASF78>:
 620:	735f 7a69 0065      	0x657a69735f

00000626 <.LASF42>:
 626:	6f5f 6666 745f      	0x745f66666f5f
	...

0000062d <.LASF89>:
 62d:	6e5f 7562 0066      	0x6675626e5f

00000633 <.LASF127>:
 633:	755f 756e 6573      	0x6573756e755f
 639:	5f64                	lw	s1,124(a4)
 63b:	6172                	flw	ft2,28(sp)
 63d:	646e                	flw	fs0,216(sp)
	...

00000640 <.LASF163>:
 640:	20554e47          	fmsub.s	ft8,fa0,ft5,ft4,rmm
 644:	20393943          	fmadd.s	fs2,fs2,ft3,ft4,rup
 648:	2e38                	fld	fa4,88(a2)
 64a:	2e32                	fld	ft8,264(sp)
 64c:	2030                	fld	fa2,64(s0)
 64e:	6d2d                	lui	s10,0xb
 650:	6f6e                	flw	ft10,216(sp)
 652:	732d                	lui	t1,0xfffeb
 654:	616d                	addi	sp,sp,240
 656:	6c6c                	flw	fa1,92(s0)
 658:	642d                	lui	s0,0xb
 65a:	7461                	lui	s0,0xffff8
 65c:	2d61                	jal	cf4 <.LASF88+0x576>
 65e:	696c                	flw	fa1,84(a0)
 660:	696d                	lui	s2,0x1b
 662:	3d74                	fld	fa3,248(a0)
 664:	3020                	fld	fs0,96(s0)
 666:	2d20                	fld	fs0,88(a0)
 668:	736d                	lui	t1,0xffffb
 66a:	7661                	lui	a2,0xffff8
 66c:	2d65                	jal	d24 <.LASF88+0x5a6>
 66e:	6572                	flw	fa0,28(sp)
 670:	726f7473          	csrrci	s0,0x726,30
 674:	2065                	jal	71c <.LASF103+0xa>
 676:	6d2d                	lui	s10,0xb
 678:	7261                	lui	tp,0xffff8
 67a:	723d6863          	bltu	s10,gp,daa <.LASF88+0x62c>
 67e:	3376                	fld	ft6,376(sp)
 680:	6532                	flw	fa0,12(sp)
 682:	20777863          	bgeu	a4,t2,892 <.LASF88+0x114>
 686:	6d2d                	lui	s10,0xb
 688:	6261                	lui	tp,0x18
 68a:	3d69                	jal	524 <.LASF70+0x8>
 68c:	6c69                	lui	s8,0x1a
 68e:	3370                	fld	fa2,224(a4)
 690:	6532                	flw	fa0,12(sp)
 692:	2d20                	fld	fs0,88(a0)
 694:	4f2d2067          	0x4f2d2067
 698:	732d2073          	csrs	0x732,s10
 69c:	6474                	flw	fa3,76(s0)
 69e:	673d                	lui	a4,0xf
 6a0:	756e                	flw	fa0,248(sp)
 6a2:	3939                	jal	2c0 <.LASF131+0xc>
 6a4:	2d20                	fld	fs0,88(a0)
 6a6:	6d66                	flw	fs10,88(sp)
 6a8:	7365                	lui	t1,0xffff9
 6aa:	65676173          	csrrsi	sp,0x656,14
 6ae:	6c2d                	lui	s8,0xb
 6b0:	6e65                	lui	t3,0x19
 6b2:	3d687467          	0x3d687467
 6b6:	2030                	fld	fa2,64(s0)
 6b8:	662d                	lui	a2,0xb
 6ba:	6e676973          	csrrsi	s2,0x6e6,14
 6be:	6465                	lui	s0,0x19
 6c0:	632d                	lui	t1,0xb
 6c2:	6168                	flw	fa0,68(a0)
 6c4:	2072                	fld	ft0,280(sp)
 6c6:	662d                	lui	a2,0xb
 6c8:	7566                	flw	fa0,120(sp)
 6ca:	636e                	flw	ft6,216(sp)
 6cc:	6974                	flw	fa3,84(a0)
 6ce:	732d6e6f          	jal	t3,d6e00 <.LASF88+0xd6682>
 6d2:	6365                	lui	t1,0x19
 6d4:	6974                	flw	fa3,84(a0)
 6d6:	20736e6f          	jal	t3,370dc <.LASF88+0x3695e>
 6da:	662d                	lui	a2,0xb
 6dc:	6164                	flw	fs1,68(a0)
 6de:	6174                	flw	fa3,68(a0)
 6e0:	732d                	lui	t1,0xfffeb
 6e2:	6365                	lui	t1,0x19
 6e4:	6974                	flw	fa3,84(a0)
 6e6:	20736e6f          	jal	t3,370ec <.LASF88+0x3696e>
 6ea:	662d                	lui	a2,0xb
 6ec:	6f6e                	flw	ft10,216(sp)
 6ee:	632d                	lui	t1,0xb
 6f0:	6f6d6d6f          	jal	s10,d6de6 <.LASF88+0xd6668>
 6f4:	006e                	c.slli	zero,0x1b

000006f6 <.LASF18>:
 6f6:	48474643          	fmadd.s	fa2,fa4,ft4,fs1,rmm
 6fa:	0052                	c.slli	zero,0x14

000006fc <.LASF29>:
 6fc:	4f495047          	fmsub.q	ft0,fs2,fs4,fs1,unknown
 700:	4d5f 646f 5f65      	0x5f65646f4d5f
 706:	4e49                	li	t3,18
 708:	465f 4f4c 5441      	0x54414f4c465f
 70e:	4e49                	li	t3,18
 710:	          	0x755f0047

00000712 <.LASF103>:
 712:	755f 736e 6570      	0x6570736e755f
 718:	69666963          	bltu	a2,s6,daa <.LASF88+0x62c>
 71c:	6465                	lui	s0,0x19
 71e:	6c5f 636f 6c61      	0x6c61636f6c5f
 724:	5f65                	li	t5,-7
 726:	6e69                	lui	t3,0x1a
 728:	6f66                	flw	ft10,88(sp)
	...

0000072b <.LASF95>:
 72b:	665f 616c 7367      	0x7367616c665f
 731:	0032                	c.slli	zero,0xc

00000733 <.LASF72>:
 733:	695f 5f73 7863      	0x78635f73695f
 739:	0061                	c.nop	24

0000073b <.LASF157>:
 73b:	74737953          	0x74737953
 73f:	6d65                	lui	s10,0x19
 741:	6e49                	lui	t3,0x12
 743:	7469                	lui	s0,0xffffa
	...

00000746 <.LASF124>:
 746:	735f 6565 0064      	0x646565735f

0000074c <.LASF132>:
 74c:	725f 6e61 5f64      	0x5f646e61725f
 752:	656e                	flw	fa0,216(sp)
 754:	7478                	flw	fa4,108(s0)
	...

00000757 <.LASF114>:
 757:	615f 6574 6978      	0x69786574615f
 75d:	3074                	fld	fa3,224(s0)
	...

00000760 <.LASF150>:
 760:	5f5f 6f6c 6163      	0x61636f6c5f5f
 766:	656c                	flw	fa1,76(a0)
 768:	745f        	0x65735f00745f

0000076b <.LASF86>:
 76b:	735f 6565 006b      	0x6b6565735f

00000771 <.LASF100>:
 771:	735f 6474 7265      	0x72656474735f
 777:	0072                	c.slli	zero,0x1c

00000779 <.LASF22>:
 779:	434c                	lw	a1,4(a4)
 77b:	          	fnmsub.q	ft4,ft0,fa6,fa1,unknown

0000077e <.LASF88>:
 77e:	755f 7562 0066      	0x667562755f

Disassembly of section .comment:

00000000 <.comment>:
   0:	4700                	lw	s0,8(a4)
   2:	203a4343          	fmadd.s	ft6,fs4,ft3,ft4,rmm
   6:	7828                	flw	fa0,112(s0)
   8:	6150                	flw	fa2,4(a0)
   a:	47206b63          	bltu	zero,s2,480 <.LASF64+0x7>
   e:	554e                	lw	a0,240(sp)
  10:	5220                	lw	s0,96(a2)
  12:	5349                	li	t1,-14
  14:	20562d43          	fmadd.s	fs10,fa2,ft5,ft4,rdn
  18:	6d45                	lui	s10,0x11
  1a:	6562                	flw	fa0,24(sp)
  1c:	6464                	flw	fs1,76(s0)
  1e:	6465                	lui	s0,0x19
  20:	4720                	lw	s0,72(a4)
  22:	202c4343          	fmadd.s	ft6,fs8,ft2,ft4,rmm
  26:	3436                	fld	fs0,360(sp)
  28:	622d                	lui	tp,0xb
  2a:	7469                	lui	s0,0xffffa
  2c:	2029                	jal	36 <.LVL16>
  2e:	2e38                	fld	fa4,88(a2)
  30:	2e32                	fld	ft8,264(sp)
  32:	0030                	addi	a2,sp,8

Disassembly of section .debug_frame:

00000000 <.debug_frame>:
   0:	000c                	0xc
   2:	0000                	unimp
   4:	ffff                	0xffff
   6:	ffff                	0xffff
   8:	0001                	nop
   a:	7c01                	lui	s8,0xfffe0
   c:	0d01                	addi	s10,s10,0
   e:	0002                	c.slli64	zero
  10:	0024                	addi	s1,sp,8
	...
  1e:	0000                	unimp
  20:	8948                	0x8948
  22:	81028803          	lb	a6,-2032(t0) # 1193b02 <.LASF88+0x1193384>
  26:	0e01                	addi	t3,t3,0
  28:	420c                	lw	a1,0(a2)
  2a:	1c0e                	slli	s8,s8,0x23
  2c:	5a02                	lw	s4,32(sp)
  2e:	000e                	c.slli	zero,0x3
  30:	c948                	sw	a0,20(a0)
  32:	c1c8                	sw	a0,4(a1)
  34:	00000313          	li	t1,0
  38:	0014                	0x14
	...
  46:	0000                	unimp
  48:	0e42                	slli	t3,t3,0x10
  4a:	020c                	addi	a1,sp,256
  4c:	0e42                	slli	t3,t3,0x10
  4e:	0000                	unimp
  50:	0014                	0x14
	...
  5e:	0000                	unimp
  60:	8148                	0x8148
  62:	0e01                	addi	t3,t3,0
  64:	000c                	0xc
	...
