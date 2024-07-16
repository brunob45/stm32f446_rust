
app:	file format elf32-littlearm

Disassembly of section .text:

080001c4 <__stext>:
 80001c4:      	bl	0x8002a98 <__pre_init>  @ imm = #0x28d0
 80001c8:      	ldr	r0, [pc, #0x38]         @ 0x8000204 <__stext+0x40>
 80001ca:      	ldr	r1, [pc, #0x3c]         @ 0x8000208 <__stext+0x44>
 80001cc:      	movs	r2, #0x0
 80001ce:      	cmp	r1, r0
 80001d0:      	beq	0x80001d6 <__stext+0x12> @ imm = #0x2
 80001d2:      	stm	r0!, {r2}
 80001d4:      	b	0x80001ce <__stext+0xa> @ imm = #-0xa
 80001d6:      	ldr	r0, [pc, #0x34]         @ 0x800020c <__stext+0x48>
 80001d8:      	ldr	r1, [pc, #0x34]         @ 0x8000210 <__stext+0x4c>
 80001da:      	ldr	r2, [pc, #0x38]         @ 0x8000214 <__stext+0x50>
 80001dc:      	cmp	r1, r0
 80001de:      	beq	0x80001e6 <__stext+0x22> @ imm = #0x4
 80001e0:      	ldm	r2!, {r3}
 80001e2:      	stm	r0!, {r3}
 80001e4:      	b	0x80001dc <__stext+0x18> @ imm = #-0xc
 80001e6:      	ldr	r0, [pc, #0x30]         @ 0x8000218 <__stext+0x54>
 80001e8:      	mov.w	r1, #0xf00000
 80001ec:      	ldr	r2, [r0]
 80001ee:      	orr.w	r2, r2, r1
 80001f2:      	str	r2, [r0]
 80001f4:      	dsb	sy
 80001f8:      	isb	sy
 80001fc:      	bl	0x8001b24 <main>        @ imm = #0x1924
 8000200:      	udf	#0x0
 8000202:      	movs	r0, r0

08000204 <$d.105>:
 8000204: 70 00 00 20  	.word	0x20000070
 8000208: 1c 82 00 20  	.word	0x2000821c
 800020c: 00 00 00 20  	.word	0x20000000
 8000210: 70 00 00 20  	.word	0x20000070
 8000214: 38 5a 00 08  	.word	0x08005a38
 8000218: 88 ed 00 e0  	.word	0xe000ed88

0800021c <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0>:
 800021c:      	push	{r4, r5, r6, r7, lr}
 800021e:      	add	r7, sp, #0xc
 8000220:      	push.w	{r8, r9, r10, r11}
 8000224:      	sub	sp, #0xe4
 8000226:      	mov	r8, r0
 8000228:      	ldrb.w	r0, [r0, #0x60]
 800022c:      	movw	r10, #0x24
 8000230:      	movw	r9, #0x418
 8000234:      	movw	r11, #0x38
 8000238:      	movt	r10, #0x4000
 800023c:      	movt	r9, #0x4002
 8000240:      	movt	r11, #0x2000
 8000244:      	cbz	r0, 0x8000254 <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x38> @ imm = #0xc
 8000246:      	cmp	r0, #0x3
 8000248:      	bne.w	0x80004f8 <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x2dc> @ imm = #0x2ac
 800024c:      	ldrd	r2, r3, [r8, #104]
 8000250:      	b.w	0x800147e <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x1262> @ imm = #0x122a
 8000254:      	movw	r1, #0x102
 8000258:      	movw	r2, #0x704
 800025c:      	movt	r1, #0x1
 8000260:      	movt	r2, #0x2
 8000264:      	str.w	r1, [sp, #0x7d]
 8000268:      	movs	r1, #0x5
 800026a:      	movt	r1, #0x405
 800026e:      	movw	r3, #0x81bc
 8000272:      	str.w	r1, [sp, #0x79]
 8000276:      	movs	r1, #0x5
 8000278:      	strb.w	r1, [sp, #0x73]
 800027c:      	movs	r0, #0x1
 800027e:      	strb.w	r1, [sp, #0x60]
 8000282:      	movs	r1, #0x0
 8000284:      	str.w	r2, [sp, #0x6a]
 8000288:      	movs	r2, #0xa8
 800028a:      	strb.w	r1, [sp, #0x58]
 800028e:      	movw	r1, #0x1200
 8000292:      	strh.w	r2, [sp, #0x68]
 8000296:      	mov.w	r2, #0x102
 800029a:      	movt	r1, #0x7a
 800029e:      	movt	r3, #0x2000
 80002a2:      	strb.w	r0, [sp, #0x81]
 80002a6:      	strh.w	r2, [sp, #0x64]
 80002aa:      	str	r1, [sp, #0x54]
 80002ac:      	mrs	r12, primask
 80002b0:      	cpsid i
 80002b2:      	ldrb	r1, [r3, #0x5]
 80002b4:      	cmp	r1, #0x0
 80002b6:      	bne.w	0x80012ba <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x109e> @ imm = #0x1000
 80002ba:      	strb	r0, [r3, #0x5]
 80002bc:      	movw	r0, #0x2004
 80002c0:      	movt	r0, #0xe004
 80002c4:      	ldrb.w	r1, [sp, #0x81]
 80002c8:      	ldr	r3, [r0]
 80002ca:      	movw	r9, #0x3830
 80002ce:      	movt	r9, #0x4002
 80002d2:      	movw	r4, #0xe100
 80002d6:      	bic	r3, r3, #0x7
 80002da:      	movt	r4, #0xe000
 80002de:      	orr.w	r3, r3, r1, lsl #1
 80002e2:      	mov.w	r6, #0x10000
 80002e6:      	orr.w	r3, r3, r1, lsl #2
 80002ea:      	add.w	r11, sp, #0x54
 80002ee:      	orrs	r1, r3
 80002f0:      	str	r1, [r0]
 80002f2:      	ldr.w	r0, [r9, #0x14]
 80002f6:      	movw	r1, #0xe40b
 80002fa:      	movt	r1, #0xe000
 80002fe:      	mov.w	r3, #0x800
 8000302:      	orr	r0, r0, #0x4000
 8000306:      	str.w	r0, [r9, #0x14]
 800030a:      	ldr	r0, [r9, #-12]
 800030e:      	add.w	r2, r11, #0x14
 8000312:      	orr	r0, r0, #0x4000
 8000316:      	str	r0, [r9, #-12]
 800031a:      	ldr	r0, [r9, #-12]
 800031e:      	bic	r0, r0, #0x4000
 8000322:      	str	r0, [r9, #-12]
 8000326:      	ldr.w	r0, [r9, #0x10]
 800032a:      	orr	r0, r0, #0x10000000
 800032e:      	str.w	r0, [r9, #0x10]
 8000332:      	ldr	r0, [r9, #-16]
 8000336:      	orr	r0, r0, #0x10000000
 800033a:      	str	r0, [r9, #-16]
 800033e:      	ldr	r0, [r9, #-16]
 8000342:      	bic	r0, r0, #0x10000000
 8000346:      	str	r0, [r9, #-16]
 800034a:      	ldr.w	r0, [r9]
 800034e:      	orr	r0, r0, #0x1
 8000352:      	str.w	r0, [r9]
 8000356:      	ldr.w	r0, [r9]
 800035a:      	orr	r0, r0, #0x2
 800035e:      	str.w	r0, [r9]
 8000362:      	ldr.w	r0, [r9]
 8000366:      	orr	r0, r0, #0x4
 800036a:      	str.w	r0, [r9]
 800036e:      	ldr.w	r0, [r9]
 8000372:      	orr	r0, r0, #0x8
 8000376:      	str.w	r0, [r9]
 800037a:      	ldr.w	r0, [r9]
 800037e:      	orr	r0, r0, #0x10
 8000382:      	str.w	r0, [r9]
 8000386:      	ldr.w	r0, [r9]
 800038a:      	orr	r0, r0, #0x20
 800038e:      	str.w	r0, [r9]
 8000392:      	ldr.w	r0, [r9]
 8000396:      	orr	r0, r0, #0x40
 800039a:      	str.w	r0, [r9]
 800039e:      	ldr.w	r0, [r9]
 80003a2:      	orr	r0, r0, #0x80
 80003a6:      	str.w	r0, [r9]
 80003aa:      	ldrb.w	r0, [sp, #0x80]
 80003ae:      	strb	r0, [r1]
 80003b0:      	str	r3, [r4]
 80003b2:      	mov.w	r3, #0x1000
 80003b6:      	strb	r0, [r1, #0x1]
 80003b8:      	str	r3, [r4]
 80003ba:      	mov.w	r3, #0x2000
 80003be:      	strb	r0, [r1, #0x2]
 80003c0:      	str	r3, [r4]
 80003c2:      	mov.w	r3, #0x4000
 80003c6:      	strb	r0, [r1, #0x3]
 80003c8:      	str	r3, [r4]
 80003ca:      	mov.w	r3, #0x8000
 80003ce:      	strb	r0, [r1, #0x4]
 80003d0:      	str	r3, [r4]
 80003d2:      	strb	r0, [r1, #0x5]
 80003d4:      	str	r6, [r4]
 80003d6:      	mov.w	r6, #0x20000
 80003da:      	strb	r0, [r1, #0x6]
 80003dc:      	str	r6, [r4]
 80003de:      	strb.w	r0, [r1, #0x24]
 80003e2:      	str	r3, [r4, #0x4]
 80003e4:      	mov.w	r3, #0x1000000
 80003e8:      	strb.w	r0, [r1, #0x2d]
 80003ec:      	str	r3, [r4, #0x4]
 80003ee:      	mov.w	r3, #0x2000000
 80003f2:      	strb.w	r0, [r1, #0x2e]
 80003f6:      	str	r3, [r4, #0x4]
 80003f8:      	mov.w	r3, #0x4000000
 80003fc:      	strb.w	r0, [r1, #0x2f]
 8000400:      	str	r3, [r4, #0x4]
 8000402:      	mov.w	r3, #0x8000000
 8000406:      	strb.w	r0, [r1, #0x30]
 800040a:      	str	r3, [r4, #0x4]
 800040c:      	mov.w	r3, #0x10000000
 8000410:      	strb.w	r0, [r1, #0x31]
 8000414:      	str	r3, [r4, #0x4]
 8000416:      	movs	r3, #0x10
 8000418:      	strb.w	r0, [r1, #0x39]
 800041c:      	str	r3, [r4, #0x8]
 800041e:      	movs	r3, #0x20
 8000420:      	strb.w	r0, [r1, #0x3a]
 8000424:      	str	r3, [r4, #0x8]
 8000426:      	strb.w	r0, [r1, #0x3b]
 800042a:      	movs	r0, #0x40
 800042c:      	str	r0, [r4, #0x8]
 800042e:      	ldr.w	r1, [r9]
 8000432:      	orr	r1, r1, #0x200000
 8000436:      	str.w	r1, [r9]
 800043a:      	ldr.w	r1, [r9]
 800043e:      	orr	r1, r1, #0x400000
 8000442:      	str.w	r1, [r9]
 8000446:      	str	r0, [r4]
 8000448:      	movs	r0, #0x80
 800044a:      	str	r0, [r4]
 800044c:      	mov.w	r0, #0x100
 8000450:      	mov.w	r1, #0x200
 8000454:      	str	r0, [r4]
 8000456:      	str	r1, [r4]
 8000458:      	mov.w	r1, #0x400
 800045c:      	str	r1, [r4]
 800045e:      	mov.w	r1, #0x800000
 8000462:      	str	r1, [r4]
 8000464:      	str	r0, [r4, #0x4]
 8000466:      	movw	r4, #0x7000
 800046a:      	ldrb.w	r0, [sp, #0x6d]
 800046e:      	movt	r4, #0x4000
 8000472:      	cmp	r0, #0x5
 8000474:      	ittt	ne
 8000476:      	ldrne	r0, [r4]
 8000478:      	orrne	r0, r0, #0xc000
 800047c:      	strne	r0, [r4]
 800047e:      	ldr	r0, [r4]
 8000480:      	orr	r0, r0, #0x10000
 8000484:      	str	r0, [r4]
 8000486:      	ldr	r0, [r4, #0x4]
 8000488:      	lsls	r0, r0, #0xf
 800048a:      	bmi	0x80004a0 <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x284> @ imm = #0x12
 800048c:      	ldr	r0, [r4, #0x4]
 800048e:      	lsls	r0, r0, #0xf
 8000490:      	itt	pl
 8000492:      	ldrpl	r0, [r4, #0x4]
 8000494:      	lslspl.w	r0, r0, #0xf
 8000498:      	bmi	0x80004a0 <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x284> @ imm = #0x4
 800049a:      	ldr	r0, [r4, #0x4]
 800049c:      	lsls	r0, r0, #0xf
 800049e:      	bpl	0x8000486 <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x26a> @ imm = #-0x1c
 80004a0:      	ldr	r0, [r4]
 80004a2:      	orr	r0, r0, #0x20000
 80004a6:      	str	r0, [r4]
 80004a8:      	ldr	r0, [r4, #0x4]
 80004aa:      	lsls	r0, r0, #0xe
 80004ac:      	bmi	0x80004c2 <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x2a6> @ imm = #0x12
 80004ae:      	ldr	r0, [r4, #0x4]
 80004b0:      	lsls	r0, r0, #0xe
 80004b2:      	itt	pl
 80004b4:      	ldrpl	r0, [r4, #0x4]
 80004b6:      	lslspl.w	r0, r0, #0xe
 80004ba:      	bmi	0x80004c2 <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x2a6> @ imm = #0x4
 80004bc:      	ldr	r0, [r4, #0x4]
 80004be:      	lsls	r0, r0, #0xe
 80004c0:      	bpl	0x80004a8 <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x28c> @ imm = #-0x1c
 80004c2:      	ldrb.w	r6, [sp, #0x7e]
 80004c6:      	ldr	r0, [r9, #-48]
 80004ca:      	cbz	r6, 0x8000500 <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x2e4> @ imm = #0x32
 80004cc:      	orr	r0, r0, #0x1
 80004d0:      	str	r0, [r9, #-48]
 80004d4:      	ldr	r0, [r9, #-48]
 80004d8:      	lsls	r0, r0, #0x1e
 80004da:      	bmi	0x80004f4 <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x2d8> @ imm = #0x16
 80004dc:      	ldr	r0, [r9, #-48]
 80004e0:      	lsls	r0, r0, #0x1e
 80004e2:      	bmi	0x80004f4 <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x2d8> @ imm = #0xe
 80004e4:      	ldr	r0, [r9, #-48]
 80004e8:      	lsls	r0, r0, #0x1e
 80004ea:      	bmi	0x80004f4 <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x2d8> @ imm = #0x6
 80004ec:      	ldr	r0, [r9, #-48]
 80004f0:      	lsls	r0, r0, #0x1e
 80004f2:      	bpl	0x80004d4 <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x2b8> @ imm = #-0x22
 80004f4:      	movs	r0, #0x1
 80004f6:      	b	0x800050a <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x2ee> @ imm = #0x10
 80004f8:      	ldrd	r2, r3, [r8, #104]
 80004fc:      	b.w	0x800142c <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x1210> @ imm = #0xf2c
 8000500:      	bic	r0, r0, #0x1
 8000504:      	str	r0, [r9, #-48]
 8000508:      	movs	r0, #0x0
 800050a:      	ldrb.w	r5, [sp, #0x58]
 800050e:      	str.w	r12, [sp, #0x1c]
 8000512:      	cmp	r5, #0x2
 8000514:      	strd	r5, r6, [sp, #76]
 8000518:      	bne	0x800052a <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x30e> @ imm = #0xe
 800051a:      	ldr	r1, [r9, #-48]
 800051e:      	bic	r1, r1, #0x10000
 8000522:      	str	r1, [r9, #-48]
 8000526:      	movs	r1, #0x0
 8000528:      	b	0x80005b2 <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x396> @ imm = #0x86
 800052a:      	ldr.w	r10, [sp, #0x54]
 800052e:      	cbz	r5, 0x800055e <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x342> @ imm = #0x2c
 8000530:      	sub.w	r1, r10, #0xf4000
 8000534:      	movw	r3, #0xae41
 8000538:      	sub.w	r1, r1, #0x240
 800053c:      	movt	r3, #0x2eb
 8000540:      	cmp	r1, r3
 8000542:      	blo	0x8000574 <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x358> @ imm = #0x2e
 8000544:      	bl	0x8002d8e <_defmt_acquire> @ imm = #0x2846
 8000548:      	movw	r0, #0x12
 800054c:      	movt	r0, #0x0
 8000550:      	bl	0x8002c7a <defmt::export::header::hc9b4e0c1cc8ad9b7> @ imm = #0x2726
 8000554:      	bl	0x8002e34 <_defmt_release> @ imm = #0x28dc
 8000558:      	bl	0x8002c96 <_defmt_panic> @ imm = #0x273a
 800055c:      	trap
 800055e:      	sub.w	r1, r10, #0x3d0000
 8000562:      	movw	r3, #0xb181
 8000566:      	sub.w	r1, r1, #0x900
 800056a:      	movt	r3, #0x14f
 800056e:      	cmp	r1, r3
 8000570:      	bhs.w	0x80013f8 <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x11dc> @ imm = #0xe84
 8000574:      	ldr	r1, [r9, #-48]
 8000578:      	bic	r1, r1, #0x40000
 800057c:      	orr.w	r1, r1, r5, lsl #18
 8000580:      	str	r1, [r9, #-48]
 8000584:      	ldr	r1, [r9, #-48]
 8000588:      	orr	r1, r1, #0x10000
 800058c:      	str	r1, [r9, #-48]
 8000590:      	ldr	r1, [r9, #-48]
 8000594:      	lsls	r1, r1, #0xe
 8000596:      	bmi	0x80005b0 <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x394> @ imm = #0x16
 8000598:      	ldr	r1, [r9, #-48]
 800059c:      	lsls	r1, r1, #0xe
 800059e:      	bmi	0x80005b0 <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x394> @ imm = #0xe
 80005a0:      	ldr	r1, [r9, #-48]
 80005a4:      	lsls	r1, r1, #0xe
 80005a6:      	bmi	0x80005b0 <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x394> @ imm = #0x6
 80005a8:      	ldr	r1, [r9, #-48]
 80005ac:      	lsls	r1, r1, #0xe
 80005ae:      	bpl	0x8000590 <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x374> @ imm = #-0x22
 80005b0:      	movs	r1, #0x1
 80005b2:      	movw	r5, #0x2400
 80005b6:      	add	r6, sp, #0x84
 80005b8:      	movt	r5, #0xf4
 80005bc:      	ldrb.w	r3, [sp, #0x7f]
 80005c0:      	strd	r0, r5, [sp, #132]
 80005c4:      	add	r0, sp, #0x98
 80005c6:      	strb.w	r3, [sp, #0x94]
 80005ca:      	mov	r3, r6
 80005cc:      	strd	r1, r10, [sp, #140]
 80005d0:      	movs	r1, #0x0
 80005d2:      	bl	0x800318c <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84> @ imm = #0x2bb6
 80005d6:      	add.w	r2, r11, #0x1a
 80005da:      	add	r0, sp, #0xb0
 80005dc:      	movs	r1, #0x1
 80005de:      	mov	r3, r6
 80005e0:      	bl	0x800318c <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84> @ imm = #0x2ba8
 80005e4:      	add.w	r2, r11, #0x20
 80005e8:      	add	r0, sp, #0xc8
 80005ea:      	movs	r1, #0x2
 80005ec:      	mov	r3, r6
 80005ee:      	bl	0x800318c <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84> @ imm = #0x2b9a
 80005f2:      	ldrb.w	r11, [sp, #0x7d]
 80005f6:      	cmp.w	r11, #0x0
 80005fa:      	beq	0x8000618 <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x3fc> @ imm = #0x1a
 80005fc:      	cmp.w	r11, #0x1
 8000600:      	beq	0x800062e <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x412> @ imm = #0x2a
 8000602:      	cmp.w	r11, #0x2
 8000606:      	bne.w	0x8001376 <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x115a> @ imm = #0xd6c
 800060a:      	ldr	r0, [sp, #0x98]
 800060c:      	cmp	r0, #0x0
 800060e:      	beq.w	0x8001390 <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x1174> @ imm = #0xd7e
 8000612:      	ldr.w	lr, [sp, #0x9c]
 8000616:      	b	0x8000638 <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x41c> @ imm = #0x1e
 8000618:      	ldr	r0, [sp, #0x50]
 800061a:      	mov	lr, r5
 800061c:      	cbnz	r0, 0x8000638 <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x41c> @ imm = #0x18
 800061e:      	bl	0x8002d8e <_defmt_acquire> @ imm = #0x276c
 8000622:      	movw	r0, #0x14
 8000626:      	movt	r0, #0x0
 800062a:      	b.w	0x80012a8 <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x108c> @ imm = #0xc7a
 800062e:      	ldr	r0, [sp, #0x4c]
 8000630:      	mov	lr, r10
 8000632:      	cmp	r0, #0x2
 8000634:      	beq.w	0x800139e <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x1182> @ imm = #0xd66
 8000638:      	ldrb.w	r12, [sp, #0x7a]
 800063c:      	cmp.w	r12, #0xf
 8000640:      	bhi.w	0x8001412 <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x11f6> @ imm = #0xdce
 8000644:      	mov	r2, lr
 8000646:      	tbh	[pc, r12, lsl #1]

0800064a <$d.3>:
 800064a: 27 00 e4 06  	.word	0x06e40027
 800064e: e4 06 e4 06  	.word	0x06e406e4
 8000652: e4 06 e4 06  	.word	0x06e406e4
 8000656: e4 06 e4 06  	.word	0x06e406e4
 800065a: 10 00 13 00  	.word	0x00130010
 800065e: 16 00 19 00  	.word	0x00190016
 8000662: 1c 00 1f 00  	.word	0x001f001c
 8000666: 22 00 25 00  	.word	0x00250022

0800066a <$t.4>:
 800066a:      	lsr.w	r2, lr, #0x1
 800066e:      	b	0x8000698 <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x47c> @ imm = #0x26
 8000670:      	lsr.w	r2, lr, #0x2
 8000674:      	b	0x8000698 <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x47c> @ imm = #0x20
 8000676:      	lsr.w	r2, lr, #0x3
 800067a:      	b	0x8000698 <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x47c> @ imm = #0x1a
 800067c:      	lsr.w	r2, lr, #0x4
 8000680:      	b	0x8000698 <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x47c> @ imm = #0x14
 8000682:      	lsr.w	r2, lr, #0x6
 8000686:      	b	0x8000698 <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x47c> @ imm = #0xe
 8000688:      	lsr.w	r2, lr, #0x7
 800068c:      	b	0x8000698 <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x47c> @ imm = #0x8
 800068e:      	lsr.w	r2, lr, #0x8
 8000692:      	b	0x8000698 <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x47c> @ imm = #0x2
 8000694:      	lsr.w	r2, lr, #0x9
 8000698:      	ldrb.w	r1, [sp, #0x7b]
 800069c:      	cmp	r1, #0x7
 800069e:      	bhi.w	0x800135c <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x1140> @ imm = #0xcba
 80006a2:      	mov	r10, r2
 80006a4:      	tbh	[pc, r1, lsl #1]

080006a8 <$d.5>:
 80006a8: 13 00 5a 06  	.word	0x065a0013
 80006ac: 5a 06 5a 06  	.word	0x065a065a
 80006b0: 08 00 0b 00  	.word	0x000b0008
 80006b4: 0e 00 11 00  	.word	0x0011000e

080006b8 <$t.6>:
 80006b8:      	lsr.w	r10, r2, #0x1
 80006bc:      	b	0x80006ce <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x4b2> @ imm = #0xe
 80006be:      	lsr.w	r10, r2, #0x2
 80006c2:      	b	0x80006ce <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x4b2> @ imm = #0x8
 80006c4:      	lsr.w	r10, r2, #0x3
 80006c8:      	b	0x80006ce <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x4b2> @ imm = #0x2
 80006ca:      	lsr.w	r10, r2, #0x4
 80006ce:      	ldrb.w	r3, [sp, #0x7c]
 80006d2:      	cmp	r3, #0x7
 80006d4:      	bhi.w	0x800135c <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x1140> @ imm = #0xc84
 80006d8:      	mov	r5, r2
 80006da:      	tbh	[pc, r3, lsl #1]

080006de <$d.7>:
 80006de: 0f 00 3f 06  	.word	0x063f000f
 80006e2: 3f 06 3f 06  	.word	0x063f063f
 80006e6: 08 00 0a 00  	.word	0x000a0008
 80006ea: 0c 00 0e 00  	.word	0x000e000c

080006ee <$t.8>:
 80006ee:      	lsrs	r5, r2, #0x1
 80006f0:      	b	0x80006fc <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x4e0> @ imm = #0x8
 80006f2:      	lsrs	r5, r2, #0x2
 80006f4:      	b	0x80006fc <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x4e0> @ imm = #0x4
 80006f6:      	lsrs	r5, r2, #0x3
 80006f8:      	b	0x80006fc <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x4e0> @ imm = #0x0
 80006fa:      	lsrs	r5, r2, #0x4
 80006fc:      	movw	r0, #0x9501
 8000700:      	movt	r0, #0xaba
 8000704:      	cmp	lr, r0
 8000706:      	bhs.w	0x80012d4 <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x10b8> @ imm = #0xbca
 800070a:      	cmp	r2, r0
 800070c:      	bhs.w	0x80012ee <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x10d2> @ imm = #0xbde
 8000710:      	movw	r0, #0xa541
 8000714:      	movt	r0, #0x2ae
 8000718:      	cmp	r10, r0
 800071a:      	bhs.w	0x8001308 <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x10ec> @ imm = #0xbea
 800071e:      	movw	r0, #0x4a81
 8000722:      	str	r2, [sp, #0x50]
 8000724:      	movt	r0, #0x55d
 8000728:      	cmp	r5, r0
 800072a:      	str	r5, [sp, #0x4c]
 800072c:      	bhs.w	0x8001322 <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x1106> @ imm = #0xbf2
 8000730:      	mov	r6, lr
 8000732:      	ldrb.w	lr, [sp, #0x64]
 8000736:      	str.w	r12, [sp, #0x40]
 800073a:      	cmp.w	lr, #0x0
 800073e:      	strd	r3, r1, [sp, #56]
 8000742:      	beq	0x8000772 <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x556> @ imm = #0x2c
 8000744:      	cmp.w	lr, #0x1
 8000748:      	str.w	lr, [sp, #0x34]
 800074c:      	beq	0x8000788 <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x56c> @ imm = #0x38
 800074e:      	cmp.w	lr, #0x2
 8000752:      	bne.w	0x80013ac <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x1190> @ imm = #0xc56
 8000756:      	ldrb.w	r0, [sp, #0x65]
 800075a:      	cmp	r0, #0x0
 800075c:      	beq.w	0x80013c6 <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x11aa> @ imm = #0xc66
 8000760:      	ldr.w	lr, [sp, #0x34]
 8000764:      	movs	r0, #0x1
 8000766:      	str	r0, [sp, #0x18]
 8000768:      	movs	r0, #0x0
 800076a:      	mov	r2, r10
 800076c:      	mov	r5, r6
 800076e:      	str	r0, [sp, #0x10]
 8000770:      	b	0x800077e <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x562> @ imm = #0xa
 8000772:      	movs	r0, #0x1
 8000774:      	mov	r2, r10
 8000776:      	mov	r5, r6
 8000778:      	str	r0, [sp, #0x10]
 800077a:      	str.w	lr, [sp, #0x18]
 800077e:      	ldrb.w	r1, [sp, #0x60]
 8000782:      	mov.w	r6, #0x7d00
 8000786:      	b	0x80007a4 <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x588> @ imm = #0x1a
 8000788:      	ldrb.w	r1, [sp, #0x60]
 800078c:      	cmp	r1, #0x5
 800078e:      	beq.w	0x80013e0 <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x11c4> @ imm = #0xc4e
 8000792:      	movs	r0, #0x1
 8000794:      	mov	r5, r6
 8000796:      	str	r0, [sp, #0x18]
 8000798:      	movs	r0, #0x0
 800079a:      	mov	r2, r10
 800079c:      	ldr	r6, [sp, #0x5c]
 800079e:      	str	r0, [sp, #0x10]
 80007a0:      	ldr.w	lr, [sp, #0x34]
 80007a4:      	movw	r10, #0x24
 80007a8:      	ldr	r0, [r4]
 80007aa:      	movt	r10, #0x4000
 80007ae:      	orr	r0, r0, #0x100
 80007b2:      	str	r0, [r4]
 80007b4:      	ldr	r0, [r4]
 80007b6:      	lsls	r0, r0, #0x17
 80007b8:      	bmi	0x80007ce <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x5b2> @ imm = #0x12
 80007ba:      	ldr	r0, [r4]
 80007bc:      	lsls	r0, r0, #0x17
 80007be:      	itt	pl
 80007c0:      	ldrpl	r0, [r4]
 80007c2:      	lslspl.w	r0, r0, #0x17
 80007c6:      	bmi	0x80007ce <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x5b2> @ imm = #0x4
 80007c8:      	ldr	r0, [r4]
 80007ca:      	lsls	r0, r0, #0x17
 80007cc:      	bpl	0x80007b4 <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x598> @ imm = #-0x1c
 80007ce:      	ldrb.w	r0, [sp, #0x65]
 80007d2:      	str	r6, [sp, #0x14]
 80007d4:      	strd	r2, r5, [sp, #68]
 80007d8:      	cbz	r0, 0x8000808 <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x5ec> @ imm = #0x2c
 80007da:      	ldr.w	r0, [r9, #0x44]
 80007de:      	orr	r0, r0, #0x1
 80007e2:      	str.w	r0, [r9, #0x44]
 80007e6:      	ldr.w	r0, [r9, #0x44]
 80007ea:      	lsls	r0, r0, #0x1e
 80007ec:      	bmi	0x8000808 <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x5ec> @ imm = #0x18
 80007ee:      	ldr.w	r0, [r9, #0x44]
 80007f2:      	lsls	r0, r0, #0x1e
 80007f4:      	itt	pl
 80007f6:      	ldrpl.w	r0, [r9, #0x44]
 80007fa:      	lslspl.w	r0, r0, #0x1e
 80007fe:      	bmi	0x8000808 <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x5ec> @ imm = #0x6
 8000800:      	ldr.w	r0, [r9, #0x44]
 8000804:      	lsls	r0, r0, #0x1e
 8000806:      	bpl	0x80007e6 <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x5ca> @ imm = #-0x24
 8000808:      	ldr.w	r2, [r9, #0x40]
 800080c:      	subs	r6, r1, #0x5
 800080e:      	mov	r12, r1
 8000810:      	sub.w	r1, r1, #0x4
 8000814:      	and	r0, r2, #0x4
 8000818:      	clz	r1, r1
 800081c:      	it	ne
 800081e:      	movne	r6, #0x1
 8000820:      	movs	r3, #0x1
 8000822:      	eor.w	r5, r3, r0, lsr #2
 8000826:      	ldr.w	r4, [r9, #0x40]
 800082a:      	cmp.w	lr, #0x0
 800082e:      	mov	r0, lr
 8000830:      	it	ne
 8000832:      	movne	r0, #0x1
 8000834:      	lsrs	r1, r1, #0x5
 8000836:      	cmp	r1, r5
 8000838:      	movw	r5, #0x1
 800083c:      	movt	r5, #0x0
 8000840:      	beq	0x8000856 <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x63a> @ imm = #0x12
 8000842:      	bic.w	r1, r3, r2
 8000846:      	eors	r1, r6
 8000848:      	ittt	ne
 800084a:      	uxthne	r1, r2
 800084c:      	eorne.w	r1, r3, r1, lsr #15
 8000850:      	eorsne.w	r0, r0, r1
 8000854:      	bne	0x80008fc <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x6e0> @ imm = #0xa4
 8000856:      	orr	r0, r4, #0x10000
 800085a:      	str.w	r0, [r9, #0x40]
 800085e:      	ldr.w	r0, [r9, #0x40]
 8000862:      	cmp.w	r12, #0x5
 8000866:      	bic	r0, r0, #0x10000
 800086a:      	str.w	r0, [r9, #0x40]
 800086e:      	beq	0x80008ac <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x690> @ imm = #0x3a
 8000870:      	ldr.w	r0, [r9, #0x40]
 8000874:      	movs	r1, #0x1
 8000876:      	cmp.w	r12, #0x4
 800087a:      	mov	r4, r12
 800087c:      	bic	r0, r0, #0x4
 8000880:      	it	eq
 8000882:      	moveq	r1, #0x5
 8000884:      	orrs	r0, r1
 8000886:      	str.w	r0, [r9, #0x40]
 800088a:      	ldr.w	r0, [r9, #0x40]
 800088e:      	lsls	r0, r0, #0x1e
 8000890:      	bmi	0x80008ac <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x690> @ imm = #0x18
 8000892:      	ldr.w	r0, [r9, #0x40]
 8000896:      	lsls	r0, r0, #0x1e
 8000898:      	itt	pl
 800089a:      	ldrpl.w	r0, [r9, #0x40]
 800089e:      	lslspl.w	r0, r0, #0x1e
 80008a2:      	bmi	0x80008ac <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x690> @ imm = #0x6
 80008a4:      	ldr.w	r0, [r9, #0x40]
 80008a8:      	lsls	r0, r0, #0x1e
 80008aa:      	bpl	0x800088a <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x66e> @ imm = #-0x24
 80008ac:      	cmp.w	lr, #0x0
 80008b0:      	itttt	ne
 80008b2:      	ldrne.w	r0, [r9, #0x40]
 80008b6:      	bicne	r0, r0, #0x8300
 80008ba:      	orrne.w	r0, r0, lr, lsl #8
 80008be:      	orrne	r0, r0, #0x8000
 80008c2:      	it	ne
 80008c4:      	strne.w	r0, [r9, #0x40]
 80008c8:      	mov	r4, r5
 80008ca:      	ldr.w	r5, [r9, #0x40]
 80008ce:      	bl	0x8002d8e <_defmt_acquire> @ imm = #0x24bc
 80008d2:      	movw	r0, #0x11
 80008d6:      	movt	r0, #0x0
 80008da:      	bl	0x8002c7a <defmt::export::header::hc9b4e0c1cc8ad9b7> @ imm = #0x239c
 80008de:      	add	r0, sp, #0xe0
 80008e0:      	movs	r1, #0x2
 80008e2:      	strh.w	r4, [sp, #0xe0]
 80008e6:      	bl	0x8002f16 <_defmt_write> @ imm = #0x262c
 80008ea:      	add	r0, sp, #0xe0
 80008ec:      	movs	r1, #0x4
 80008ee:      	str	r5, [sp, #0xe0]
 80008f0:      	mov	r5, r4
 80008f2:      	bl	0x8002f16 <_defmt_write> @ imm = #0x2620
 80008f6:      	bl	0x8002e34 <_defmt_release> @ imm = #0x253a
 80008fa:      	b	0x800092e <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x712> @ imm = #0x30
 80008fc:      	ubfx	r0, r2, #0x8, #0x2
 8000900:      	cmp	r0, lr
 8000902:      	bne	0x8000856 <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x63a> @ imm = #-0xb0
 8000904:      	bl	0x8002d8e <_defmt_acquire> @ imm = #0x2486
 8000908:      	movw	r0, #0x10
 800090c:      	movt	r0, #0x0
 8000910:      	bl	0x8002c7a <defmt::export::header::hc9b4e0c1cc8ad9b7> @ imm = #0x2366
 8000914:      	add	r0, sp, #0xe0
 8000916:      	movs	r1, #0x2
 8000918:      	strh.w	r5, [sp, #0xe0]
 800091c:      	bl	0x8002f16 <_defmt_write> @ imm = #0x25f6
 8000920:      	add	r0, sp, #0xe0
 8000922:      	movs	r1, #0x4
 8000924:      	str	r4, [sp, #0xe0]
 8000926:      	bl	0x8002f16 <_defmt_write> @ imm = #0x25ec
 800092a:      	bl	0x8002e34 <_defmt_release> @ imm = #0x2506
 800092e:      	ldr	r4, [sp, #0x50]
 8000930:      	bl	0x8002d8e <_defmt_acquire> @ imm = #0x245a
 8000934:      	movw	r0, #0x1c
 8000938:      	movt	r0, #0x0
 800093c:      	bl	0x8002c7a <defmt::export::header::hc9b4e0c1cc8ad9b7> @ imm = #0x233a
 8000940:      	add	r0, sp, #0xe0
 8000942:      	movs	r1, #0x2
 8000944:      	strh.w	r5, [sp, #0xe0]
 8000948:      	bl	0x8002f16 <_defmt_write> @ imm = #0x25ca
 800094c:      	subs	r0, r4, #0x1
 800094e:      	movw	r1, #0x54c7
 8000952:      	movt	r1, #0x11e
 8000956:      	lsrs	r0, r0, #0x7
 8000958:      	umull	r0, r5, r0, r1
 800095c:      	movs	r1, #0x4
 800095e:      	add	r0, sp, #0xe0
 8000960:      	lsrs	r6, r5, #0xa
 8000962:      	str	r6, [sp, #0xe0]
 8000964:      	bl	0x8002f16 <_defmt_write> @ imm = #0x25ae
 8000968:      	ubfx	r5, r5, #0xa, #0x4
 800096c:      	bl	0x8002e34 <_defmt_release> @ imm = #0x24c4
 8000970:      	str.w	r5, [r9, #0x3d0]
 8000974:      	ldr.w	r0, [r9, #0x3d0]
 8000978:      	eors	r0, r6
 800097a:      	lsls	r0, r0, #0x1c
 800097c:      	beq	0x800099e <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x782> @ imm = #0x1e
 800097e:      	ldr.w	r0, [r9, #0x3d0]
 8000982:      	eors	r0, r6
 8000984:      	lsls	r0, r0, #0x1c
 8000986:      	ittt	ne
 8000988:      	ldrne.w	r0, [r9, #0x3d0]
 800098c:      	eorne	r0, r6
 800098e:      	lslsne.w	r0, r0, #0x1c
 8000992:      	beq	0x800099e <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x782> @ imm = #0x8
 8000994:      	ldr.w	r0, [r9, #0x3d0]
 8000998:      	eors	r0, r6
 800099a:      	lsls	r0, r0, #0x1c
 800099c:      	bne	0x8000974 <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x758> @ imm = #-0x2c
 800099e:      	ldr	r0, [r9, #-40]
 80009a2:      	movw	r1, #0xfcf3
 80009a6:      	ldr	r2, [sp, #0x3c]
 80009a8:      	bics	r0, r1
 80009aa:      	ldr	r1, [sp, #0x40]
 80009ac:      	orr.w	r1, r11, r1, lsl #4
 80009b0:      	orr.w	r1, r1, r2, lsl #10
 80009b4:      	ldr	r2, [sp, #0x38]
 80009b6:      	orr.w	r1, r1, r2, lsl #13
 80009ba:      	orrs	r0, r1
 80009bc:      	str	r0, [r9, #-40]
 80009c0:      	ldr	r0, [r9, #-40]
 80009c4:      	ubfx	r0, r0, #0x2, #0x2
 80009c8:      	cmp	r0, r11
 80009ca:      	beq	0x80009f0 <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x7d4> @ imm = #0x22
 80009cc:      	ldr	r0, [r9, #-40]
 80009d0:      	ubfx	r0, r0, #0x2, #0x2
 80009d4:      	cmp	r0, r11
 80009d6:      	ittt	ne
 80009d8:      	ldrne	r0, [r9, #-40]
 80009dc:      	ubfxne	r0, r0, #0x2, #0x2
 80009e0:      	cmpne	r0, r11
 80009e2:      	beq	0x80009f0 <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x7d4> @ imm = #0xa
 80009e4:      	ldr	r0, [r9, #-40]
 80009e8:      	ubfx	r0, r0, #0x2, #0x2
 80009ec:      	cmp	r0, r11
 80009ee:      	bne	0x80009c0 <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x7a4> @ imm = #-0x32
 80009f0:      	ldr	r0, [sp, #0xd0]
 80009f2:      	str	r0, [sp, #0x40]
 80009f4:      	ldr	r0, [sp, #0xd4]
 80009f6:      	str	r0, [sp, #0x30]
 80009f8:      	ldr	r0, [sp, #0xd8]
 80009fa:      	str	r0, [sp, #0x3c]
 80009fc:      	ldr	r0, [sp, #0xdc]
 80009fe:      	str	r0, [sp, #0x2c]
 8000a00:      	ldrd	r11, r0, [sp, #184]
 8000a04:      	str	r0, [sp, #0x28]
 8000a06:      	ldr	r0, [sp, #0xc0]
 8000a08:      	str	r0, [sp, #0x38]
 8000a0a:      	ldr	r0, [sp, #0xc4]
 8000a0c:      	str	r0, [sp, #0x24]
 8000a0e:      	ldr	r0, [sp, #0xa0]
 8000a10:      	str	r0, [sp, #0x34]
 8000a12:      	ldr	r0, [sp, #0xa4]
 8000a14:      	str	r0, [sp, #0x20]
 8000a16:      	bl	0x8002d8e <_defmt_acquire> @ imm = #0x2374
 8000a1a:      	movw	r0, #0x20
 8000a1e:      	movt	r0, #0x0
 8000a22:      	bl	0x8002c7a <defmt::export::header::hc9b4e0c1cc8ad9b7> @ imm = #0x2254
 8000a26:      	movw	r0, #0x1f
 8000a2a:      	movs	r1, #0x2
 8000a2c:      	movt	r0, #0x0
 8000a30:      	strh.w	r0, [sp, #0xe0]
 8000a34:      	add	r0, sp, #0xe0
 8000a36:      	bl	0x8002f16 <_defmt_write> @ imm = #0x24dc
 8000a3a:      	movw	r4, #0xc
 8000a3e:      	add	r0, sp, #0xe0
 8000a40:      	movt	r4, #0x0
 8000a44:      	movs	r1, #0x2
 8000a46:      	strh.w	r4, [sp, #0xe0]
 8000a4a:      	bl	0x8002f16 <_defmt_write> @ imm = #0x24c8
 8000a4e:      	ldr	r0, [sp, #0x48]
 8000a50:      	movs	r1, #0x4
 8000a52:      	str	r0, [sp, #0xe0]
 8000a54:      	add	r0, sp, #0xe0
 8000a56:      	bl	0x8002f16 <_defmt_write> @ imm = #0x24bc
 8000a5a:      	add	r0, sp, #0xe0
 8000a5c:      	movs	r1, #0x2
 8000a5e:      	strh.w	r4, [sp, #0xe0]
 8000a62:      	bl	0x8002f16 <_defmt_write> @ imm = #0x24b0
 8000a66:      	add	r0, sp, #0xe0
 8000a68:      	ldr	r6, [sp, #0x44]
 8000a6a:      	movs	r1, #0x4
 8000a6c:      	str	r6, [sp, #0xe0]
 8000a6e:      	bl	0x8002f16 <_defmt_write> @ imm = #0x24a4
 8000a72:      	add	r0, sp, #0xe0
 8000a74:      	movs	r1, #0x2
 8000a76:      	strh.w	r4, [sp, #0xe0]
 8000a7a:      	bl	0x8002f16 <_defmt_write> @ imm = #0x2498
 8000a7e:      	ldr	r5, [sp, #0x50]
 8000a80:      	movs	r1, #0x4
 8000a82:      	subs	r0, r6, r5
 8000a84:      	it	ne
 8000a86:      	movne	r0, #0x1
 8000a88:      	lsl.w	r0, r6, r0
 8000a8c:      	str	r0, [sp, #0x8]
 8000a8e:      	str	r0, [sp, #0xe0]
 8000a90:      	add	r0, sp, #0xe0
 8000a92:      	bl	0x8002f16 <_defmt_write> @ imm = #0x2480
 8000a96:      	add	r0, sp, #0xe0
 8000a98:      	movs	r1, #0x2
 8000a9a:      	strh.w	r4, [sp, #0xe0]
 8000a9e:      	bl	0x8002f16 <_defmt_write> @ imm = #0x2474
 8000aa2:      	add	r0, sp, #0xe0
 8000aa4:      	ldr	r6, [sp, #0x4c]
 8000aa6:      	movs	r1, #0x4
 8000aa8:      	str	r6, [sp, #0xe0]
 8000aaa:      	bl	0x8002f16 <_defmt_write> @ imm = #0x2468
 8000aae:      	add	r0, sp, #0xe0
 8000ab0:      	movs	r1, #0x2
 8000ab2:      	strh.w	r4, [sp, #0xe0]
 8000ab6:      	bl	0x8002f16 <_defmt_write> @ imm = #0x245c
 8000aba:      	subs	r0, r6, r5
 8000abc:      	mov.w	r1, #0x4
 8000ac0:      	it	ne
 8000ac2:      	movne	r0, #0x1
 8000ac4:      	lsl.w	r0, r6, r0
 8000ac8:      	str	r0, [sp, #0x4]
 8000aca:      	str	r0, [sp, #0xe0]
 8000acc:      	add	r0, sp, #0xe0
 8000ace:      	bl	0x8002f16 <_defmt_write> @ imm = #0x2444
 8000ad2:      	add	r0, sp, #0xe0
 8000ad4:      	movs	r1, #0x2
 8000ad6:      	strh.w	r4, [sp, #0xe0]
 8000ada:      	bl	0x8002f16 <_defmt_write> @ imm = #0x2438
 8000ade:      	add	r0, sp, #0xe0
 8000ae0:      	movs	r1, #0x4
 8000ae2:      	str	r5, [sp, #0xe0]
 8000ae4:      	bl	0x8002f16 <_defmt_write> @ imm = #0x242e
 8000ae8:      	add	r0, sp, #0xe0
 8000aea:      	movs	r1, #0x2
 8000aec:      	strh.w	r4, [sp, #0xe0]
 8000af0:      	bl	0x8002f16 <_defmt_write> @ imm = #0x2422
 8000af4:      	add	r0, sp, #0xe0
 8000af6:      	movs	r1, #0x4
 8000af8:      	str	r5, [sp, #0xe0]
 8000afa:      	bl	0x8002f16 <_defmt_write> @ imm = #0x2418
 8000afe:      	add	r0, sp, #0xe0
 8000b00:      	movs	r1, #0x2
 8000b02:      	strh.w	r4, [sp, #0xe0]
 8000b06:      	bl	0x8002f16 <_defmt_write> @ imm = #0x240c
 8000b0a:      	add	r0, sp, #0xe0
 8000b0c:      	movs	r1, #0x4
 8000b0e:      	str	r5, [sp, #0xe0]
 8000b10:      	bl	0x8002f16 <_defmt_write> @ imm = #0x2402
 8000b14:      	movw	r6, #0x3
 8000b18:      	add	r0, sp, #0xe0
 8000b1a:      	movt	r6, #0x0
 8000b1e:      	movs	r1, #0x2
 8000b20:      	strh.w	r6, [sp, #0xe0]
 8000b24:      	bl	0x8002f16 <_defmt_write> @ imm = #0x23ee
 8000b28:      	cmp.w	r11, #0x0
 8000b2c:      	str.w	r11, [sp, #0xc]
 8000b30:      	beq	0x8000b54 <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x938> @ imm = #0x20
 8000b32:      	movs	r0, #0x1
 8000b34:      	movs	r1, #0x1
 8000b36:      	strb.w	r0, [sp, #0xe0]
 8000b3a:      	add	r0, sp, #0xe0
 8000b3c:      	bl	0x8002f16 <_defmt_write> @ imm = #0x23d6
 8000b40:      	add	r0, sp, #0xe0
 8000b42:      	movs	r1, #0x2
 8000b44:      	strh.w	r4, [sp, #0xe0]
 8000b48:      	bl	0x8002f16 <_defmt_write> @ imm = #0x23ca
 8000b4c:      	ldr	r0, [sp, #0x28]
 8000b4e:      	movs	r1, #0x4
 8000b50:      	str	r0, [sp, #0xe0]
 8000b52:      	b	0x8000b5c <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x940> @ imm = #0x6
 8000b54:      	movs	r0, #0x0
 8000b56:      	movs	r1, #0x1
 8000b58:      	strb.w	r0, [sp, #0xe0]
 8000b5c:      	add	r0, sp, #0xe0
 8000b5e:      	bl	0x8002f16 <_defmt_write> @ imm = #0x23b4
 8000b62:      	add	r0, sp, #0xe0
 8000b64:      	movs	r1, #0x2
 8000b66:      	strh.w	r6, [sp, #0xe0]
 8000b6a:      	bl	0x8002f16 <_defmt_write> @ imm = #0x23a8
 8000b6e:      	ldr	r0, [sp, #0x38]
 8000b70:      	cbz	r0, 0x8000b94 <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x978> @ imm = #0x20
 8000b72:      	movs	r0, #0x1
 8000b74:      	movs	r1, #0x1
 8000b76:      	strb.w	r0, [sp, #0xe0]
 8000b7a:      	add	r0, sp, #0xe0
 8000b7c:      	bl	0x8002f16 <_defmt_write> @ imm = #0x2396
 8000b80:      	add	r0, sp, #0xe0
 8000b82:      	movs	r1, #0x2
 8000b84:      	strh.w	r4, [sp, #0xe0]
 8000b88:      	bl	0x8002f16 <_defmt_write> @ imm = #0x238a
 8000b8c:      	ldr	r0, [sp, #0x24]
 8000b8e:      	movs	r1, #0x4
 8000b90:      	str	r0, [sp, #0xe0]
 8000b92:      	b	0x8000b9c <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x980> @ imm = #0x6
 8000b94:      	movs	r0, #0x0
 8000b96:      	movs	r1, #0x1
 8000b98:      	strb.w	r0, [sp, #0xe0]
 8000b9c:      	add	r0, sp, #0xe0
 8000b9e:      	bl	0x8002f16 <_defmt_write> @ imm = #0x2374
 8000ba2:      	add	r0, sp, #0xe0
 8000ba4:      	movs	r1, #0x2
 8000ba6:      	strh.w	r6, [sp, #0xe0]
 8000baa:      	bl	0x8002f16 <_defmt_write> @ imm = #0x2368
 8000bae:      	ldr	r0, [sp, #0x40]
 8000bb0:      	cbz	r0, 0x8000bd4 <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x9b8> @ imm = #0x20
 8000bb2:      	movs	r0, #0x1
 8000bb4:      	movs	r1, #0x1
 8000bb6:      	strb.w	r0, [sp, #0xe0]
 8000bba:      	add	r0, sp, #0xe0
 8000bbc:      	bl	0x8002f16 <_defmt_write> @ imm = #0x2356
 8000bc0:      	add	r0, sp, #0xe0
 8000bc2:      	movs	r1, #0x2
 8000bc4:      	strh.w	r4, [sp, #0xe0]
 8000bc8:      	bl	0x8002f16 <_defmt_write> @ imm = #0x234a
 8000bcc:      	ldr	r0, [sp, #0x30]
 8000bce:      	movs	r1, #0x4
 8000bd0:      	str	r0, [sp, #0xe0]
 8000bd2:      	b	0x8000bdc <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x9c0> @ imm = #0x6
 8000bd4:      	movs	r0, #0x0
 8000bd6:      	movs	r1, #0x1
 8000bd8:      	strb.w	r0, [sp, #0xe0]
 8000bdc:      	add	r0, sp, #0xe0
 8000bde:      	bl	0x8002f16 <_defmt_write> @ imm = #0x2334
 8000be2:      	add	r0, sp, #0xe0
 8000be4:      	movs	r1, #0x2
 8000be6:      	strh.w	r6, [sp, #0xe0]
 8000bea:      	bl	0x8002f16 <_defmt_write> @ imm = #0x2328
 8000bee:      	ldr	r0, [sp, #0x3c]
 8000bf0:      	cbz	r0, 0x8000c14 <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x9f8> @ imm = #0x20
 8000bf2:      	movs	r0, #0x1
 8000bf4:      	movs	r1, #0x1
 8000bf6:      	strb.w	r0, [sp, #0xe0]
 8000bfa:      	add	r0, sp, #0xe0
 8000bfc:      	bl	0x8002f16 <_defmt_write> @ imm = #0x2316
 8000c00:      	add	r0, sp, #0xe0
 8000c02:      	movs	r1, #0x2
 8000c04:      	strh.w	r4, [sp, #0xe0]
 8000c08:      	bl	0x8002f16 <_defmt_write> @ imm = #0x230a
 8000c0c:      	ldr	r0, [sp, #0x2c]
 8000c0e:      	movs	r1, #0x4
 8000c10:      	str	r0, [sp, #0xe0]
 8000c12:      	b	0x8000c1c <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0xa00> @ imm = #0x6
 8000c14:      	movs	r0, #0x0
 8000c16:      	movs	r1, #0x1
 8000c18:      	strb.w	r0, [sp, #0xe0]
 8000c1c:      	add	r0, sp, #0xe0
 8000c1e:      	bl	0x8002f16 <_defmt_write> @ imm = #0x22f4
 8000c22:      	add	r0, sp, #0xe0
 8000c24:      	movs	r1, #0x2
 8000c26:      	strh.w	r6, [sp, #0xe0]
 8000c2a:      	bl	0x8002f16 <_defmt_write> @ imm = #0x22e8
 8000c2e:      	ldr	r0, [sp, #0x34]
 8000c30:      	cbz	r0, 0x8000c54 <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0xa38> @ imm = #0x20
 8000c32:      	movs	r0, #0x1
 8000c34:      	movs	r1, #0x1
 8000c36:      	strb.w	r0, [sp, #0xe0]
 8000c3a:      	add	r0, sp, #0xe0
 8000c3c:      	bl	0x8002f16 <_defmt_write> @ imm = #0x22d6
 8000c40:      	add	r0, sp, #0xe0
 8000c42:      	movs	r1, #0x2
 8000c44:      	strh.w	r4, [sp, #0xe0]
 8000c48:      	bl	0x8002f16 <_defmt_write> @ imm = #0x22ca
 8000c4c:      	ldr	r0, [sp, #0x20]
 8000c4e:      	movs	r1, #0x4
 8000c50:      	str	r0, [sp, #0xe0]
 8000c52:      	b	0x8000c5c <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0xa40> @ imm = #0x6
 8000c54:      	movs	r0, #0x0
 8000c56:      	movs	r1, #0x1
 8000c58:      	strb.w	r0, [sp, #0xe0]
 8000c5c:      	add	r0, sp, #0xe0
 8000c5e:      	bl	0x8002f16 <_defmt_write> @ imm = #0x22b4
 8000c62:      	add	r0, sp, #0xe0
 8000c64:      	movs	r1, #0x2
 8000c66:      	strh.w	r6, [sp, #0xe0]
 8000c6a:      	bl	0x8002f16 <_defmt_write> @ imm = #0x22a8
 8000c6e:      	ldr	r0, [sp, #0x10]
 8000c70:      	cbz	r0, 0x8000c94 <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0xa78> @ imm = #0x20
 8000c72:      	movs	r0, #0x0
 8000c74:      	movs	r1, #0x1
 8000c76:      	strb.w	r0, [sp, #0xe0]
 8000c7a:      	add	r0, sp, #0xe0
 8000c7c:      	bl	0x8002f16 <_defmt_write> @ imm = #0x2296
 8000c80:      	movw	r4, #0x418
 8000c84:      	movw	r11, #0x38
 8000c88:      	movt	r4, #0x4002
 8000c8c:      	movt	r11, #0x2000
 8000c90:      	ldr	r5, [sp, #0x14]
 8000c92:      	b	0x8000cca <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0xaae> @ imm = #0x34
 8000c94:      	movs	r0, #0x1
 8000c96:      	movs	r1, #0x1
 8000c98:      	strb.w	r0, [sp, #0xe0]
 8000c9c:      	add	r0, sp, #0xe0
 8000c9e:      	bl	0x8002f16 <_defmt_write> @ imm = #0x2274
 8000ca2:      	add	r0, sp, #0xe0
 8000ca4:      	movs	r1, #0x2
 8000ca6:      	strh.w	r4, [sp, #0xe0]
 8000caa:      	bl	0x8002f16 <_defmt_write> @ imm = #0x2268
 8000cae:      	add	r0, sp, #0xe0
 8000cb0:      	ldr	r5, [sp, #0x14]
 8000cb2:      	movs	r1, #0x4
 8000cb4:      	str	r5, [sp, #0xe0]
 8000cb6:      	bl	0x8002f16 <_defmt_write> @ imm = #0x225c
 8000cba:      	movw	r4, #0x418
 8000cbe:      	movw	r11, #0x38
 8000cc2:      	movt	r4, #0x4002
 8000cc6:      	movt	r11, #0x2000
 8000cca:      	ldr	r6, [sp, #0x28]
 8000ccc:      	bl	0x8002e34 <_defmt_release> @ imm = #0x2164
 8000cd0:      	movw	r1, #0x81bc
 8000cd4:      	ldr	r0, [sp, #0x4]
 8000cd6:      	movt	r1, #0x2000
 8000cda:      	str	r0, [r1, #0x50]
 8000cdc:      	ldr	r0, [sp, #0x50]
 8000cde:      	str	r0, [r1, #0x5c]
 8000ce0:      	strd	r0, r0, [r1, #84]
 8000ce4:      	ldr	r0, [sp, #0x34]
 8000ce6:      	str	r0, [r1, #0x30]
 8000ce8:      	ldr	r0, [sp, #0x20]
 8000cea:      	str	r0, [r1, #0x34]
 8000cec:      	ldr	r0, [sp, #0x18]
 8000cee:      	strd	r0, r5, [r1, #56]
 8000cf2:      	ldr	r0, [sp, #0x48]
 8000cf4:      	str	r0, [r1, #0x40]
 8000cf6:      	ldr	r0, [sp, #0x44]
 8000cf8:      	str	r0, [r1, #0x44]
 8000cfa:      	ldr	r0, [sp, #0x8]
 8000cfc:      	str	r0, [r1, #0x48]
 8000cfe:      	ldr	r0, [sp, #0x4c]
 8000d00:      	str	r0, [r1, #0x4c]
 8000d02:      	ldr	r0, [sp, #0xc]
 8000d04:      	strd	r0, r6, [r1, #16]
 8000d08:      	ldr	r0, [sp, #0x38]
 8000d0a:      	str	r0, [r1, #0x18]
 8000d0c:      	ldr	r0, [sp, #0x24]
 8000d0e:      	str	r0, [r1, #0x1c]
 8000d10:      	ldr	r0, [sp, #0x40]
 8000d12:      	str	r0, [r1, #0x20]
 8000d14:      	ldr	r0, [sp, #0x30]
 8000d16:      	str	r0, [r1, #0x24]
 8000d18:      	ldr	r0, [sp, #0x3c]
 8000d1a:      	str	r0, [r1, #0x28]
 8000d1c:      	ldr	r0, [sp, #0x2c]
 8000d1e:      	str	r0, [r1, #0x2c]
 8000d20:      	ldr.w	r0, [r9, #0x10]
 8000d24:      	orr	r0, r0, #0x1
 8000d28:      	str.w	r0, [r9, #0x10]
 8000d2c:      	ldr	r0, [r9, #-16]
 8000d30:      	orr	r0, r0, #0x1
 8000d34:      	str	r0, [r9, #-16]
 8000d38:      	ldr	r0, [r9, #-16]
 8000d3c:      	bic	r0, r0, #0x1
 8000d40:      	str	r0, [r9, #-16]
 8000d44:      	mov.w	r0, #0x40000000
 8000d48:      	ldr	r1, [r1, #0x48]
 8000d4a:      	ldr	r2, [r0]
 8000d4c:      	bic	r2, r2, #0x1
 8000d50:      	str	r2, [r0]
 8000d52:      	movs	r2, #0x0
 8000d54:      	str.w	r2, [r10]
 8000d58:      	mov.w	r2, #0xffffffff
 8000d5c:      	add.w	r6, r2, r1, lsr #15
 8000d60:      	cmp.w	r6, #0x10000
 8000d64:      	bhs.w	0x800133c <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x1120> @ imm = #0x5d4
 8000d68:      	movw	r1, #0xffff
 8000d6c:      	str.w	r6, [r10, #0x4]
 8000d70:      	str.w	r1, [r10, #0x8]
 8000d74:      	movw	r2, #0xe100
 8000d78:      	ldr	r1, [r0]
 8000d7a:      	movt	r2, #0xe000
 8000d7e:      	orr	r1, r1, #0x4
 8000d82:      	str	r1, [r0]
 8000d84:      	movs	r1, #0x1
 8000d86:      	str	r1, [r10, #-16]
 8000d8a:      	ldr	r1, [r0]
 8000d8c:      	bic	r1, r1, #0x4
 8000d90:      	str	r1, [r0]
 8000d92:      	mov.w	r1, #0x8000
 8000d96:      	str.w	r1, [r10, #0x10]
 8000d9a:      	movs	r1, #0x3
 8000d9c:      	str	r1, [r10, #-24]
 8000da0:      	mov.w	r1, #0x10000000
 8000da4:      	str.w	r1, [r2, #0x180]
 8000da8:      	str	r1, [r2]
 8000daa:      	ldr	r1, [r0]
 8000dac:      	orr	r1, r1, #0x1
 8000db0:      	str	r1, [r0]
 8000db2:      	ldr	r0, [sp, #0x1c]
 8000db4:      	lsls	r0, r0, #0x1f
 8000db6:      	bne	0x8000dba <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0xb9e> @ imm = #0x0
 8000db8:      	cpsie i
 8000dba:      	movw	r1, #0x81bc
 8000dbe:      	mrs	r12, primask
 8000dc2:      	cpsid i
 8000dc4:      	movt	r1, #0x2000
 8000dc8:      	ldr	r0, [r1, #0x8]
 8000dca:      	cbz	r0, 0x8000dd0 <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0xbb4> @ imm = #0x2
 8000dcc:      	ldr	r2, [r1, #0xc]
 8000dce:      	b	0x8000dfc <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0xbe0> @ imm = #0x2a
 8000dd0:      	movs	r0, #0x3
 8000dd2:      	add	r1, sp, #0x54
 8000dd4:      	str	r0, [sp, #0x5c]
 8000dd6:      	movs	r0, #0x4
 8000dd8:      	str	r0, [sp, #0x58]
 8000dda:      	movw	r0, #0x54c0
 8000dde:      	movt	r0, #0x800
 8000de2:      	movs	r3, #0x1
 8000de4:      	str	r0, [sp, #0x54]
 8000de6:      	movs	r0, #0x1
 8000de8:      	bkpt	#0xab
 8000dea:      	mov	r2, r0
 8000dec:      	adds	r0, #0x1
 8000dee:      	beq	0x8000e3c <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0xc20> @ imm = #0x4a
 8000df0:      	movw	r0, #0x81bc
 8000df4:      	movt	r0, #0x2000
 8000df8:      	strd	r3, r2, [r0, #8]
 8000dfc:      	movs	r0, #0xd
 8000dfe:      	add	r1, sp, #0x54
 8000e00:      	str	r0, [sp, #0x5c]
 8000e02:      	movw	r0, #0x52a8
 8000e06:      	movt	r0, #0x800
 8000e0a:      	strd	r2, r0, [sp, #84]
 8000e0e:      	movs	r0, #0x5
 8000e10:      	bkpt	#0xab
 8000e12:      	subs	r1, r0, #0x1
 8000e14:      	cmp	r1, #0xc
 8000e16:      	bhi	0x8000e3c <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0xc20> @ imm = #0x22
 8000e18:      	movw	r6, #0x52a8
 8000e1c:      	add	r1, sp, #0x54
 8000e1e:      	movs	r5, #0xd
 8000e20:      	movt	r6, #0x800
 8000e24:      	mov	r3, r0
 8000e26:      	str	r0, [sp, #0x5c]
 8000e28:      	subs	r0, r5, r0
 8000e2a:      	str	r2, [sp, #0x54]
 8000e2c:      	add	r6, r0
 8000e2e:      	str	r6, [sp, #0x58]
 8000e30:      	movs	r0, #0x5
 8000e32:      	bkpt	#0xab
 8000e34:      	subs	r5, r0, #0x1
 8000e36:      	cmp	r5, r3
 8000e38:      	mov	r5, r3
 8000e3a:      	blo	0x8000e24 <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0xc08> @ imm = #-0x1a
 8000e3c:      	lsls.w	r0, r12, #0x1f
 8000e40:      	bne	0x8000e44 <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0xc28> @ imm = #0x0
 8000e42:      	cpsie i
 8000e44:      	movs	r0, #0x4
 8000e46:      	movs	r2, #0x1
 8000e48:      	str	r0, [r4]
 8000e4a:      	mrs	r0, primask
 8000e4e:      	cpsid i
 8000e50:      	ldr	r1, [r4, #-12]
 8000e54:      	lsls	r0, r0, #0x1f
 8000e56:      	bic	r1, r1, #0x30
 8000e5a:      	str	r1, [r4, #-12]
 8000e5e:      	ldr	r1, [r4, #-20]
 8000e62:      	bic	r1, r1, #0x4
 8000e66:      	str	r1, [r4, #-20]
 8000e6a:      	ldr	r1, [r4, #-16]
 8000e6e:      	bic	r1, r1, #0x30
 8000e72:      	str	r1, [r4, #-16]
 8000e76:      	ldr	r1, [r4, #-24]
 8000e7a:      	bfi	r1, r2, #4, #2
 8000e7e:      	str	r1, [r4, #-24]
 8000e82:      	bne	0x8000e86 <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0xc6a> @ imm = #0x0
 8000e84:      	cpsie i
 8000e86:      	nop
 8000e88:      	ldr.w	r0, [r11, #0x30]
 8000e8c:      	ldr.w	r1, [r10]
 8000e90:      	movw	r5, #0x4240
 8000e94:      	and	r2, r0, #0x1
 8000e98:      	movt	r5, #0xf
 8000e9c:      	mov	r3, r5
 8000e9e:      	uxth	r1, r1
 8000ea0:      	eor.w	r1, r1, r2, lsl #15
 8000ea4:      	adds.w	r2, r1, r0, lsl #15
 8000ea8:      	lsr.w	r0, r0, #0x11
 8000eac:      	adc	r12, r0, #0x0
 8000eb0:      	strd	r2, r12, [r8, #32]
 8000eb4:      	nop
 8000eb6:      	subs	r3, #0x1
 8000eb8:      	nop
 8000eba:      	nop
 8000ebc:      	nop
 8000ebe:      	nop
 8000ec0:      	nop
 8000ec2:      	nop
 8000ec4:      	nop
 8000ec6:      	nop
 8000ec8:      	bne	0x8000eb6 <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0xc9a> @ imm = #-0x16
 8000eca:      	ldr.w	r0, [r11, #0x30]
 8000ece:      	ldr.w	r6, [r10]
 8000ed2:      	movw	r3, #0x3d09
 8000ed6:      	umull	lr, r1, r2, r3
 8000eda:      	and	r2, r0, #0x1
 8000ede:      	mov	r9, r8
 8000ee0:      	uxth	r6, r6
 8000ee2:      	eor.w	r2, r6, r2, lsl #15
 8000ee6:      	lsrs	r6, r0, #0x11
 8000ee8:      	adds.w	r0, r2, r0, lsl #15
 8000eec:      	mla	r1, r12, r3, r1
 8000ef0:      	adc	r6, r6, #0x0
 8000ef4:      	umull	r0, r2, r0, r3
 8000ef8:      	mov	r12, r8
 8000efa:      	mla	r2, r6, r3, r2
 8000efe:      	lsr.w	r6, lr, #0x9
 8000f02:      	orr.w	r6, r6, r1, lsl #23
 8000f06:      	lsrs	r0, r0, #0x9
 8000f08:      	orr.w	r0, r0, r2, lsl #23
 8000f0c:      	lsrs	r3, r2, #0x9
 8000f0e:      	subs	r0, r0, r6
 8000f10:      	str	r0, [r12, #40]!
 8000f14:      	mov.w	r0, #0x0
 8000f18:      	sbc.w	r1, r3, r1, lsr #9
 8000f1c:      	str.w	r1, [r8, #0x2c]
 8000f20:      	nop
 8000f22:      	nop
 8000f24:      	nop
 8000f26:      	movw	r3, #0xccd
 8000f2a:      	str	r0, [r9, #92]!
 8000f2e:      	ldr.w	r1, [r11, #0x30]
 8000f32:      	ldr.w	r2, [r10]
 8000f36:      	strd	r3, r0, [r9, #-44]
 8000f3a:      	and	r0, r1, #0x1
 8000f3e:      	lsrs	r3, r1, #0x11
 8000f40:      	nop
 8000f42:      	nop
 8000f44:      	nop
 8000f46:      	nop
 8000f48:      	uxth	r2, r2
 8000f4a:      	eor.w	r0, r2, r0, lsl #15
 8000f4e:      	adds.w	r2, r0, r1, lsl #15
 8000f52:      	adc	r3, r3, #0x0
 8000f56:      	ldr.w	r0, [r11, #0x30]
 8000f5a:      	ldr.w	r1, [r10]
 8000f5e:      	and	r4, r0, #0x1
 8000f62:      	uxth	r1, r1
 8000f64:      	eor.w	r1, r1, r4, lsl #15
 8000f68:      	lsrs	r4, r0, #0x11
 8000f6a:      	adds.w	r0, r1, r0, lsl #15
 8000f6e:      	adc	r1, r4, #0x0
 8000f72:      	subs	r4, r0, r2
 8000f74:      	sbcs.w	r4, r1, r3
 8000f78:      	blo.w	0x800129c <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x1080> @ imm = #0x320
 8000f7c:      	ldrd	r4, r6, [r8, #48]
 8000f80:      	subs	r0, r0, r2
 8000f82:      	sbcs	r1, r3
 8000f84:      	subs	r0, r0, r4
 8000f86:      	sbcs.w	r0, r1, r6
 8000f8a:      	bhs	0x8000f98 <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0xd7c> @ imm = #0xa
 8000f8c:      	ldr.w	r0, [r9]
 8000f90:      	adds	r0, #0x1
 8000f92:      	str.w	r0, [r9]
 8000f96:      	b	0x8000f56 <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0xd3a> @ imm = #-0x44
 8000f98:      	nop
 8000f9a:      	nop
 8000f9c:      	nop
 8000f9e:      	nop
 8000fa0:      	nop
 8000fa2:      	ldr.w	r2, [r11, #0x30]
 8000fa6:      	ldr.w	r0, [r10]
 8000faa:      	eor.w	r0, r0, r2, lsl #15
 8000fae:      	uxth.w	lr, r0
 8000fb2:      	mov	r0, r5
 8000fb4:      	subs	r0, #0x1
 8000fb6:      	nop
 8000fb8:      	nop
 8000fba:      	nop
 8000fbc:      	nop
 8000fbe:      	nop
 8000fc0:      	nop
 8000fc2:      	nop
 8000fc4:      	nop
 8000fc6:      	bne	0x8000fb4 <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0xd98> @ imm = #-0x16
 8000fc8:      	ldr.w	r0, [r11, #0x30]
 8000fcc:      	ldr.w	r1, [r10]
 8000fd0:      	lsrs	r3, r2, #0x11
 8000fd2:      	and	r6, r0, #0x1
 8000fd6:      	uxth	r1, r1
 8000fd8:      	eor.w	r1, r1, r6, lsl #15
 8000fdc:      	movw	r6, #0x3d09
 8000fe0:      	adds.w	r1, r1, r0, lsl #15
 8000fe4:      	lsr.w	r0, r0, #0x11
 8000fe8:      	adc	r0, r0, #0x0
 8000fec:      	adds.w	r2, lr, r2, lsl #15
 8000ff0:      	umull	r1, r4, r1, r6
 8000ff4:      	adc	r3, r3, #0x0
 8000ff8:      	mla	r0, r0, r6, r4
 8000ffc:      	umull	r2, r4, r2, r6
 8001000:      	lsrs	r1, r1, #0x9
 8001002:      	mla	r3, r3, r6, r4
 8001006:      	lsrs	r6, r0, #0x9
 8001008:      	orr.w	r0, r1, r0, lsl #23
 800100c:      	lsrs	r2, r2, #0x9
 800100e:      	orr.w	r2, r2, r3, lsl #23
 8001012:      	subs	r0, r0, r2
 8001014:      	mov	r2, r8
 8001016:      	str	r0, [r2, #56]!
 800101a:      	sbc.w	r1, r6, r3, lsr #9
 800101e:      	str	r2, [sp, #0x50]
 8001020:      	str	r1, [r2, #0x4]
 8001022:      	ldr.w	r2, [r11, #0x30]
 8001026:      	ldr.w	r0, [r10]
 800102a:      	and	r1, r2, #0x1
 800102e:      	uxth	r0, r0
 8001030:      	eor.w	r3, r0, r1, lsl #15
 8001034:      	subs	r5, #0x1
 8001036:      	nop
 8001038:      	nop
 800103a:      	nop
 800103c:      	nop
 800103e:      	nop
 8001040:      	nop
 8001042:      	nop
 8001044:      	nop
 8001046:      	bne	0x8001034 <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0xe18> @ imm = #-0x16
 8001048:      	ldr.w	r0, [r11, #0x30]
 800104c:      	ldr.w	r1, [r10]
 8001050:      	movw	r5, #0x3d09
 8001054:      	and	r6, r0, #0x1
 8001058:      	uxth	r1, r1
 800105a:      	eor.w	r1, r1, r6, lsl #15
 800105e:      	lsrs	r6, r0, #0x11
 8001060:      	adds.w	r0, r1, r0, lsl #15
 8001064:      	adc	r1, r6, #0x0
 8001068:      	lsrs	r6, r2, #0x11
 800106a:      	adds.w	r2, r3, r2, lsl #15
 800106e:      	umull	r0, r4, r0, r5
 8001072:      	adc	r6, r6, #0x0
 8001076:      	umull	r2, r3, r2, r5
 800107a:      	mla	r1, r1, r5, r4
 800107e:      	lsrs	r0, r0, #0x9
 8001080:      	movw	r4, #0x81bc
 8001084:      	mla	r3, r6, r5, r3
 8001088:      	mov	r5, r8
 800108a:      	lsrs	r2, r2, #0x9
 800108c:      	movt	r4, #0x2000
 8001090:      	orr.w	r0, r0, r1, lsl #23
 8001094:      	lsrs	r6, r1, #0x9
 8001096:      	orr.w	r2, r2, r3, lsl #23
 800109a:      	subs	r0, r0, r2
 800109c:      	str	r0, [r5, #64]!
 80010a0:      	mov.w	r0, #0x0
 80010a4:      	sbc.w	r1, r6, r3, lsr #9
 80010a8:      	str	r0, [sp, #0x64]
 80010aa:      	movs	r0, #0x2
 80010ac:      	str	r0, [sp, #0x58]
 80010ae:      	movw	r0, #0x52b8
 80010b2:      	movt	r0, #0x800
 80010b6:      	str	r1, [r5, #0x4]
 80010b8:      	str	r0, [sp, #0x54]
 80010ba:      	movs	r0, #0x1
 80010bc:      	str	r0, [sp, #0x60]
 80010be:      	add	r0, sp, #0xb0
 80010c0:      	str	r0, [sp, #0x5c]
 80010c2:      	movw	r0, #0x289b
 80010c6:      	movt	r0, #0x800
 80010ca:      	strd	r12, r0, [sp, #176]
 80010ce:      	mrs	r11, primask
 80010d2:      	cpsid i
 80010d4:      	ldr	r0, [r4, #0x8]
 80010d6:      	cbnz	r0, 0x80010fa <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0xede> @ imm = #0x20
 80010d8:      	movs	r0, #0x3
 80010da:      	add	r1, sp, #0xc8
 80010dc:      	str	r0, [sp, #0xd0]
 80010de:      	movs	r0, #0x4
 80010e0:      	str	r0, [sp, #0xcc]
 80010e2:      	movw	r0, #0x54c0
 80010e6:      	movt	r0, #0x800
 80010ea:      	movs	r2, #0x1
 80010ec:      	str	r0, [sp, #0xc8]
 80010ee:      	movs	r0, #0x1
 80010f0:      	bkpt	#0xab
 80010f2:      	adds	r1, r0, #0x1
 80010f4:      	beq	0x800110c <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0xef0> @ imm = #0x14
 80010f6:      	strd	r2, r0, [r4, #8]
 80010fa:      	movw	r1, #0x54a8
 80010fe:      	add.w	r0, r4, #0xc
 8001102:      	add	r2, sp, #0x54
 8001104:      	movt	r1, #0x800
 8001108:      	bl	0x8002686 <core::fmt::write::h095b5b1af45f5b40> @ imm = #0x157a
 800110c:      	lsls.w	r0, r11, #0x1f
 8001110:      	bne	0x8001114 <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0xef8> @ imm = #0x0
 8001112:      	cpsie i
 8001114:      	movs	r0, #0x0
 8001116:      	movw	r11, #0x38
 800111a:      	str	r0, [sp, #0x64]
 800111c:      	movs	r0, #0x2
 800111e:      	str	r0, [sp, #0x58]
 8001120:      	movw	r0, #0x52cc
 8001124:      	movt	r0, #0x800
 8001128:      	movt	r11, #0x2000
 800112c:      	str	r0, [sp, #0x54]
 800112e:      	movs	r0, #0x1
 8001130:      	str	r0, [sp, #0x60]
 8001132:      	add	r0, sp, #0xb0
 8001134:      	str	r0, [sp, #0x5c]
 8001136:      	movw	r0, #0x2995
 800113a:      	movt	r0, #0x800
 800113e:      	strd	r9, r0, [sp, #176]
 8001142:      	mrs	r6, primask
 8001146:      	cpsid i
 8001148:      	ldr	r0, [r4, #0x8]
 800114a:      	movw	r9, #0x418
 800114e:      	movt	r9, #0x4002
 8001152:      	cbnz	r0, 0x8001176 <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0xf5a> @ imm = #0x20
 8001154:      	movs	r0, #0x3
 8001156:      	add	r1, sp, #0xc8
 8001158:      	str	r0, [sp, #0xd0]
 800115a:      	movs	r0, #0x4
 800115c:      	str	r0, [sp, #0xcc]
 800115e:      	movw	r0, #0x54c0
 8001162:      	movt	r0, #0x800
 8001166:      	movs	r2, #0x1
 8001168:      	str	r0, [sp, #0xc8]
 800116a:      	movs	r0, #0x1
 800116c:      	bkpt	#0xab
 800116e:      	adds	r1, r0, #0x1
 8001170:      	beq	0x8001188 <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0xf6c> @ imm = #0x14
 8001172:      	strd	r2, r0, [r4, #8]
 8001176:      	movw	r1, #0x54a8
 800117a:      	add.w	r0, r4, #0xc
 800117e:      	add	r2, sp, #0x54
 8001180:      	movt	r1, #0x800
 8001184:      	bl	0x8002686 <core::fmt::write::h095b5b1af45f5b40> @ imm = #0x14fe
 8001188:      	lsls	r0, r6, #0x1f
 800118a:      	bne	0x800118e <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0xf72> @ imm = #0x0
 800118c:      	cpsie i
 800118e:      	movs	r0, #0x0
 8001190:      	str	r0, [sp, #0x64]
 8001192:      	movs	r0, #0x2
 8001194:      	str	r0, [sp, #0x58]
 8001196:      	movw	r0, #0x52e0
 800119a:      	movt	r0, #0x800
 800119e:      	str	r0, [sp, #0x54]
 80011a0:      	movs	r0, #0x1
 80011a2:      	str	r0, [sp, #0x60]
 80011a4:      	add	r0, sp, #0xb0
 80011a6:      	str	r0, [sp, #0x5c]
 80011a8:      	movw	r0, #0x289b
 80011ac:      	movt	r0, #0x800
 80011b0:      	str	r0, [sp, #0xb4]
 80011b2:      	ldr	r0, [sp, #0x50]
 80011b4:      	str	r0, [sp, #0xb0]
 80011b6:      	mrs	r6, primask
 80011ba:      	cpsid i
 80011bc:      	ldr	r0, [r4, #0x8]
 80011be:      	cbnz	r0, 0x80011e2 <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0xfc6> @ imm = #0x20
 80011c0:      	movs	r0, #0x3
 80011c2:      	add	r1, sp, #0xc8
 80011c4:      	str	r0, [sp, #0xd0]
 80011c6:      	movs	r0, #0x4
 80011c8:      	str	r0, [sp, #0xcc]
 80011ca:      	movw	r0, #0x54c0
 80011ce:      	movt	r0, #0x800
 80011d2:      	movs	r2, #0x1
 80011d4:      	str	r0, [sp, #0xc8]
 80011d6:      	movs	r0, #0x1
 80011d8:      	bkpt	#0xab
 80011da:      	adds	r1, r0, #0x1
 80011dc:      	beq	0x80011f4 <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0xfd8> @ imm = #0x14
 80011de:      	strd	r2, r0, [r4, #8]
 80011e2:      	movw	r1, #0x54a8
 80011e6:      	add.w	r0, r4, #0xc
 80011ea:      	add	r2, sp, #0x54
 80011ec:      	movt	r1, #0x800
 80011f0:      	bl	0x8002686 <core::fmt::write::h095b5b1af45f5b40> @ imm = #0x1492
 80011f4:      	lsls	r0, r6, #0x1f
 80011f6:      	bne	0x80011fa <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0xfde> @ imm = #0x0
 80011f8:      	cpsie i
 80011fa:      	movs	r0, #0x0
 80011fc:      	str	r0, [sp, #0x64]
 80011fe:      	movs	r0, #0x2
 8001200:      	str	r0, [sp, #0x58]
 8001202:      	movw	r0, #0x52f4
 8001206:      	movt	r0, #0x800
 800120a:      	str	r0, [sp, #0x54]
 800120c:      	movs	r0, #0x1
 800120e:      	str	r0, [sp, #0x60]
 8001210:      	add	r0, sp, #0xb0
 8001212:      	str	r0, [sp, #0x5c]
 8001214:      	movw	r0, #0x289b
 8001218:      	movt	r0, #0x800
 800121c:      	strd	r5, r0, [sp, #176]
 8001220:      	mrs	r6, primask
 8001224:      	cpsid i
 8001226:      	ldr	r0, [r4, #0x8]
 8001228:      	cbnz	r0, 0x800124c <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x1030> @ imm = #0x20
 800122a:      	movs	r0, #0x3
 800122c:      	add	r1, sp, #0xc8
 800122e:      	str	r0, [sp, #0xd0]
 8001230:      	movs	r0, #0x4
 8001232:      	str	r0, [sp, #0xcc]
 8001234:      	movw	r0, #0x54c0
 8001238:      	movt	r0, #0x800
 800123c:      	movs	r2, #0x1
 800123e:      	str	r0, [sp, #0xc8]
 8001240:      	movs	r0, #0x1
 8001242:      	bkpt	#0xab
 8001244:      	adds	r1, r0, #0x1
 8001246:      	beq	0x800125e <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x1042> @ imm = #0x14
 8001248:      	strd	r2, r0, [r4, #8]
 800124c:      	movw	r1, #0x54a8
 8001250:      	add.w	r0, r4, #0xc
 8001254:      	add	r2, sp, #0x54
 8001256:      	movt	r1, #0x800
 800125a:      	bl	0x8002686 <core::fmt::write::h095b5b1af45f5b40> @ imm = #0x1428
 800125e:      	lsls	r0, r6, #0x1f
 8001260:      	bne	0x8001264 <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x1048> @ imm = #0x0
 8001262:      	cpsie i
 8001264:      	ldr.w	r0, [r11, #0x30]
 8001268:      	ldr.w	r2, [r10]
 800126c:      	movs	r1, #0x0
 800126e:      	and	r6, r0, #0x1
 8001272:      	add.w	r12, r8, #0x48
 8001276:      	mov.w	r3, #0x4000
 800127a:      	str.w	r1, [r8, #0x54]
 800127e:      	uxth	r2, r2
 8001280:      	eor.w	r2, r2, r6, lsl #15
 8001284:      	lsrs	r6, r0, #0x11
 8001286:      	adds.w	r0, r2, r0, lsl #15
 800128a:      	adc	r2, r6, #0x0
 800128e:      	adds.w	r0, r0, #0x4000
 8001292:      	adc	r2, r2, #0x0
 8001296:      	stm.w	r12, {r0, r2, r3}
 800129a:      	b	0x8001472 <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x1256> @ imm = #0x1d4
 800129c:      	bl	0x8002d8e <_defmt_acquire> @ imm = #0x1aee
 80012a0:      	movw	r0, #0x29
 80012a4:      	movt	r0, #0x0
 80012a8:      	bl	0x8002c7a <defmt::export::header::hc9b4e0c1cc8ad9b7> @ imm = #0x19ce
 80012ac:      	bl	0x8003150 <defmt::export::fmt::h5793c45a2eb637bf> @ imm = #0x1ea0
 80012b0:      	bl	0x8002e34 <_defmt_release> @ imm = #0x1b80
 80012b4:      	bl	0x8002c96 <_defmt_panic> @ imm = #0x19de
 80012b8:      	trap
 80012ba:      	bl	0x8002d8e <_defmt_acquire> @ imm = #0x1ad0
 80012be:      	movw	r0, #0x22
 80012c2:      	movt	r0, #0x0
 80012c6:      	bl	0x8002c7a <defmt::export::header::hc9b4e0c1cc8ad9b7> @ imm = #0x19b0
 80012ca:      	bl	0x8002e34 <_defmt_release> @ imm = #0x1b66
 80012ce:      	bl	0x8002c96 <_defmt_panic> @ imm = #0x19c4
 80012d2:      	trap
 80012d4:      	bl	0x8002d8e <_defmt_acquire> @ imm = #0x1ab6
 80012d8:      	movw	r0, #0x18
 80012dc:      	movt	r0, #0x0
 80012e0:      	bl	0x8002c7a <defmt::export::header::hc9b4e0c1cc8ad9b7> @ imm = #0x1996
 80012e4:      	bl	0x8002e34 <_defmt_release> @ imm = #0x1b4c
 80012e8:      	bl	0x8002c96 <_defmt_panic> @ imm = #0x19aa
 80012ec:      	trap
 80012ee:      	bl	0x8002d8e <_defmt_acquire> @ imm = #0x1a9c
 80012f2:      	movw	r0, #0x19
 80012f6:      	movt	r0, #0x0
 80012fa:      	bl	0x8002c7a <defmt::export::header::hc9b4e0c1cc8ad9b7> @ imm = #0x197c
 80012fe:      	bl	0x8002e34 <_defmt_release> @ imm = #0x1b32
 8001302:      	bl	0x8002c96 <_defmt_panic> @ imm = #0x1990
 8001306:      	trap
 8001308:      	bl	0x8002d8e <_defmt_acquire> @ imm = #0x1a82
 800130c:      	movw	r0, #0x1a
 8001310:      	movt	r0, #0x0
 8001314:      	bl	0x8002c7a <defmt::export::header::hc9b4e0c1cc8ad9b7> @ imm = #0x1962
 8001318:      	bl	0x8002e34 <_defmt_release> @ imm = #0x1b18
 800131c:      	bl	0x8002c96 <_defmt_panic> @ imm = #0x1976
 8001320:      	trap
 8001322:      	bl	0x8002d8e <_defmt_acquire> @ imm = #0x1a68
 8001326:      	movw	r0, #0x1b
 800132a:      	movt	r0, #0x0
 800132e:      	bl	0x8002c7a <defmt::export::header::hc9b4e0c1cc8ad9b7> @ imm = #0x1948
 8001332:      	bl	0x8002e34 <_defmt_release> @ imm = #0x1afe
 8001336:      	bl	0x8002c96 <_defmt_panic> @ imm = #0x195c
 800133a:      	trap
 800133c:      	bl	0x8002d8e <_defmt_acquire> @ imm = #0x1a4e
 8001340:      	movw	r0, #0x21
 8001344:      	movt	r0, #0x0
 8001348:      	bl	0x8002c7a <defmt::export::header::hc9b4e0c1cc8ad9b7> @ imm = #0x192e
 800134c:      	mov	r0, r6
 800134e:      	bl	0x80045b8 <defmt::export::fmt::h43c306accedab863> @ imm = #0x3266
 8001352:      	bl	0x8002e34 <_defmt_release> @ imm = #0x1ade
 8001356:      	bl	0x8002c96 <_defmt_panic> @ imm = #0x193c
 800135a:      	trap
 800135c:      	bl	0x8002d8e <_defmt_acquire> @ imm = #0x1a2e
 8001360:      	movw	r0, #0x28
 8001364:      	movt	r0, #0x0
 8001368:      	bl	0x8002c7a <defmt::export::header::hc9b4e0c1cc8ad9b7> @ imm = #0x190e
 800136c:      	bl	0x8002e34 <_defmt_release> @ imm = #0x1ac4
 8001370:      	bl	0x8002c96 <_defmt_panic> @ imm = #0x1922
 8001374:      	trap
 8001376:      	bl	0x8002d8e <_defmt_acquire> @ imm = #0x1a14
 800137a:      	movw	r0, #0x17
 800137e:      	movt	r0, #0x0
 8001382:      	bl	0x8002c7a <defmt::export::header::hc9b4e0c1cc8ad9b7> @ imm = #0x18f4
 8001386:      	bl	0x8002e34 <_defmt_release> @ imm = #0x1aaa
 800138a:      	bl	0x8002c96 <_defmt_panic> @ imm = #0x1908
 800138e:      	trap
 8001390:      	bl	0x8002d8e <_defmt_acquire> @ imm = #0x19fa
 8001394:      	movw	r0, #0x16
 8001398:      	movt	r0, #0x0
 800139c:      	b	0x80012a8 <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x108c> @ imm = #-0xf8
 800139e:      	bl	0x8002d8e <_defmt_acquire> @ imm = #0x19ec
 80013a2:      	movw	r0, #0x15
 80013a6:      	movt	r0, #0x0
 80013aa:      	b	0x80012a8 <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x108c> @ imm = #-0x106
 80013ac:      	bl	0x8002d8e <_defmt_acquire> @ imm = #0x19de
 80013b0:      	movw	r0, #0xf
 80013b4:      	movt	r0, #0x0
 80013b8:      	bl	0x8002c7a <defmt::export::header::hc9b4e0c1cc8ad9b7> @ imm = #0x18be
 80013bc:      	bl	0x8002e34 <_defmt_release> @ imm = #0x1a74
 80013c0:      	bl	0x8002c96 <_defmt_panic> @ imm = #0x18d2
 80013c4:      	trap
 80013c6:      	bl	0x8002d8e <_defmt_acquire> @ imm = #0x19c4
 80013ca:      	movw	r0, #0xe
 80013ce:      	movt	r0, #0x0
 80013d2:      	bl	0x8002c7a <defmt::export::header::hc9b4e0c1cc8ad9b7> @ imm = #0x18a4
 80013d6:      	bl	0x8002e34 <_defmt_release> @ imm = #0x1a5a
 80013da:      	bl	0x8002c96 <_defmt_panic> @ imm = #0x18b8
 80013de:      	trap
 80013e0:      	movw	r0, #0x5720
 80013e4:      	movw	r2, #0x57bc
 80013e8:      	movt	r0, #0x800
 80013ec:      	movt	r2, #0x800
 80013f0:      	movs	r1, #0x2b
 80013f2:      	bl	0x8001ee2 <core::panicking::panic::h9ea7360e47959be2> @ imm = #0xaec
 80013f6:      	trap
 80013f8:      	bl	0x8002d8e <_defmt_acquire> @ imm = #0x1992
 80013fc:      	movw	r0, #0x13
 8001400:      	movt	r0, #0x0
 8001404:      	bl	0x8002c7a <defmt::export::header::hc9b4e0c1cc8ad9b7> @ imm = #0x1872
 8001408:      	bl	0x8002e34 <_defmt_release> @ imm = #0x1a28
 800140c:      	bl	0x8002c96 <_defmt_panic> @ imm = #0x1886
 8001410:      	trap
 8001412:      	bl	0x8002d8e <_defmt_acquire> @ imm = #0x1978
 8001416:      	movw	r0, #0x23
 800141a:      	movt	r0, #0x0
 800141e:      	bl	0x8002c7a <defmt::export::header::hc9b4e0c1cc8ad9b7> @ imm = #0x1858
 8001422:      	bl	0x8002e34 <_defmt_release> @ imm = #0x1a0e
 8001426:      	bl	0x8002c96 <_defmt_panic> @ imm = #0x186c
 800142a:      	trap
 800142c:      	ldr.w	r6, [r11, #0x30]
 8001430:      	ldr.w	r5, [r10]
 8001434:      	and	r4, r6, #0x1
 8001438:      	ldrd	r1, r0, [r2]
 800143c:      	uxth	r5, r5
 800143e:      	eor.w	r5, r5, r4, lsl #15
 8001442:      	lsrs	r4, r6, #0x11
 8001444:      	adds.w	r6, r5, r6, lsl #15
 8001448:      	adc	r5, r4, #0x0
 800144c:      	subs	r6, r6, r1
 800144e:      	sbcs.w	r6, r5, r0
 8001452:      	blo	0x80014d0 <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x12b4> @ imm = #0x7a
 8001454:      	ldrd	r3, r6, [r3]
 8001458:      	movs	r5, #0x0
 800145a:      	adds	r1, r1, r3
 800145c:      	adcs	r0, r6
 800145e:      	adc	r3, r5, #0x0
 8001462:      	cmp	r3, #0x1
 8001464:      	beq	0x80014fe <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x12e2> @ imm = #0x96
 8001466:      	strd	r1, r0, [r2]
 800146a:      	mov.w	r0, #0x40000
 800146e:      	str.w	r0, [r9]
 8001472:      	add.w	r3, r8, #0x50
 8001476:      	add.w	r2, r8, #0x48
 800147a:      	strd	r2, r3, [r8, #104]
 800147e:      	ldr.w	r6, [r11, #0x30]
 8001482:      	ldr.w	r5, [r10]
 8001486:      	and	r4, r6, #0x1
 800148a:      	ldrd	r1, r0, [r2]
 800148e:      	uxth	r5, r5
 8001490:      	eor.w	r5, r5, r4, lsl #15
 8001494:      	lsrs	r4, r6, #0x11
 8001496:      	adds.w	r6, r5, r6, lsl #15
 800149a:      	adc	r5, r4, #0x0
 800149e:      	subs	r6, r6, r1
 80014a0:      	sbcs.w	r6, r5, r0
 80014a4:      	blo	0x80014d4 <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x12b8> @ imm = #0x2c
 80014a6:      	ldrd	r3, r6, [r3]
 80014aa:      	movs	r5, #0x0
 80014ac:      	adds	r1, r1, r3
 80014ae:      	adcs	r0, r6
 80014b0:      	adc	r3, r5, #0x0
 80014b4:      	cmp	r3, #0x1
 80014b6:      	beq	0x80014fe <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x12e2> @ imm = #0x44
 80014b8:      	add.w	r3, r8, #0x50
 80014bc:      	str	r1, [r2]
 80014be:      	movs	r1, #0x4
 80014c0:      	str.w	r1, [r9]
 80014c4:      	str	r0, [r2, #0x4]
 80014c6:      	add.w	r2, r8, #0x48
 80014ca:      	strd	r2, r3, [r8, #104]
 80014ce:      	b	0x800142c <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x1210> @ imm = #-0xa6
 80014d0:      	movs	r2, #0x4
 80014d2:      	b	0x80014d6 <embassy_executor::raw::TaskStorage<F>::poll::hfba4a571de8aa9d0+0x12ba> @ imm = #0x0
 80014d4:      	movs	r2, #0x3
 80014d6:      	ldrd	r3, r6, [r8]
 80014da:      	strb.w	r2, [r8, #0x60]
 80014de:      	movs	r2, #0x0
 80014e0:      	subs	r5, r3, r1
 80014e2:      	sbcs.w	r5, r6, r0
 80014e6:      	it	lo
 80014e8:      	movlo	r2, #0x1
 80014ea:      	cmp	r2, #0x0
 80014ec:      	itt	ne
 80014ee:      	movne	r1, r3
 80014f0:      	movne	r0, r6
 80014f2:      	strd	r1, r0, [r8]
 80014f6:      	add	sp, #0xe4
 80014f8:      	pop.w	{r8, r9, r10, r11}
 80014fc:      	pop	{r4, r5, r6, r7, pc}
 80014fe:      	bl	0x800280e <core::option::expect_failed::h6508b63e1fb960e8> @ imm = #0x130c
 8001502:      	trap

08001504 <embassy_executor::raw::util::UninitCell<T>::write_in_place::h96d5b1d65edd1332>:
 8001504:      	movs	r2, #0x0
 8001506:      	str	r1, [r0, #0x38]
 8001508:      	strb.w	r2, [r0, #0x40]
 800150c:      	bx	lr

0800150e <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6>:
 800150e:      	push	{r7, lr}
 8001510:      	mov	r7, sp
 8001512:      	sub	sp, #0x8
 8001514:      	movw	r4, #0x70
 8001518:      	mrs	r6, primask
 800151c:      	cpsid i
 800151e:      	movt	r4, #0x2000
 8001522:      	mov	r3, r0
 8001524:      	ldr	r5, [r4]
 8001526:      	str	r0, [sp]
 8001528:      	cmp	r5, #0x0
 800152a:      	beq.w	0x8001644 <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x136> @ imm = #0x116
 800152e:      	lsls	r0, r6, #0x1f
 8001530:      	bne	0x8001534 <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x26> @ imm = #0x0
 8001532:      	cpsie i
 8001534:      	add.w	r0, r5, #0x8
 8001538:      	movw	r1, #0x101
 800153c:      	ldrex	r2, [r0]
 8001540:      	cmp	r2, #0x0
 8001542:      	bne.w	0x8001aca <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x5bc> @ imm = #0x584
 8001546:      	strex	r2, r1, [r0]
 800154a:      	cmp	r2, #0x0
 800154c:      	bne	0x800153c <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x2e> @ imm = #-0x14
 800154e:      	movw	r0, #0x21d
 8001552:      	movt	r0, #0x800
 8001556:      	mov	r1, r3
 8001558:      	str	r0, [r5, #0x14]
 800155a:      	add.w	r0, r5, #0x20
 800155e:      	bl	0x8001504 <embassy_executor::raw::util::UninitCell<T>::write_in_place::h96d5b1d65edd1332> @ imm = #-0x5e
 8001562:      	ldr.w	r12, [sp]
 8001566:      	str.w	r12, [r5, #0x10]
 800156a:      	ldr.w	r1, [r12]
 800156e:      	dmb	sy
 8001572:      	str	r1, [r5, #0xc]
 8001574:      	ldrex	r2, [r12]
 8001578:      	cmp	r2, r1
 800157a:      	bne	0x8001594 <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x86> @ imm = #0x16
 800157c:      	dmb	sy
 8001580:      	strex	r0, r5, [r12]
 8001584:      	cbnz	r0, 0x8001598 <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x8a> @ imm = #0x10
 8001586:      	movs	r0, #0x1
 8001588:      	cmp	r0, #0x0
 800158a:      	mov	r0, r1
 800158c:      	dmb	sy
 8001590:      	beq	0x80015a4 <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x96> @ imm = #0x10
 8001592:      	b	0x800162c <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x11e> @ imm = #0x96
 8001594:      	clrex
 8001598:      	movs	r0, #0x0
 800159a:      	cmp	r0, #0x0
 800159c:      	mov	r0, r1
 800159e:      	dmb	sy
 80015a2:      	bne	0x800162c <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x11e> @ imm = #0x86
 80015a4:      	str	r2, [r5, #0xc]
 80015a6:      	mov	r0, r2
 80015a8:      	ldrex	r1, [r12]
 80015ac:      	cmp	r1, r2
 80015ae:      	bne	0x80015c4 <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0xb6> @ imm = #0x12
 80015b0:      	dmb	sy
 80015b4:      	strex	r2, r5, [r12]
 80015b8:      	cbnz	r2, 0x80015c8 <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0xba> @ imm = #0xc
 80015ba:      	movs	r2, #0x1
 80015bc:      	dmb	sy
 80015c0:      	cbz	r2, 0x80015d0 <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0xc2> @ imm = #0xc
 80015c2:      	b	0x800162c <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x11e> @ imm = #0x66
 80015c4:      	clrex
 80015c8:      	movs	r2, #0x0
 80015ca:      	dmb	sy
 80015ce:      	cbnz	r2, 0x800162c <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x11e> @ imm = #0x5a
 80015d0:      	str	r1, [r5, #0xc]
 80015d2:      	mov	r0, r1
 80015d4:      	ldrex	r2, [r12]
 80015d8:      	cmp	r2, r1
 80015da:      	bne	0x80015f0 <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0xe2> @ imm = #0x12
 80015dc:      	dmb	sy
 80015e0:      	strex	r1, r5, [r12]
 80015e4:      	cbnz	r1, 0x80015f4 <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0xe6> @ imm = #0xc
 80015e6:      	movs	r1, #0x1
 80015e8:      	dmb	sy
 80015ec:      	cbz	r1, 0x80015fc <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0xee> @ imm = #0xc
 80015ee:      	b	0x800162c <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x11e> @ imm = #0x3a
 80015f0:      	clrex
 80015f4:      	movs	r1, #0x0
 80015f6:      	dmb	sy
 80015fa:      	cbnz	r1, 0x800162c <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x11e> @ imm = #0x2e
 80015fc:      	str	r2, [r5, #0xc]
 80015fe:      	mov	r0, r2
 8001600:      	ldrex	r1, [r12]
 8001604:      	cmp	r1, r2
 8001606:      	bne	0x800161e <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x110> @ imm = #0x14
 8001608:      	dmb	sy
 800160c:      	strex	r2, r5, [r12]
 8001610:      	cbnz	r2, 0x8001622 <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x114> @ imm = #0xe
 8001612:      	movs	r2, #0x1
 8001614:      	cmp	r2, #0x0
 8001616:      	dmb	sy
 800161a:      	beq	0x8001572 <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x64> @ imm = #-0xac
 800161c:      	b	0x800162c <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x11e> @ imm = #0xc
 800161e:      	clrex
 8001622:      	movs	r2, #0x0
 8001624:      	cmp	r2, #0x0
 8001626:      	dmb	sy
 800162a:      	beq	0x8001572 <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x64> @ imm = #-0xbc
 800162c:      	cbnz	r0, 0x8001690 <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x182> @ imm = #0x60
 800162e:      	ldr.w	r0, [r12, #0x4]
 8001632:      	adds	r1, r0, #0x1
 8001634:      	beq	0x800168e <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x180> @ imm = #0x56
 8001636:      	movw	r1, #0xef00
 800163a:      	uxth	r0, r0
 800163c:      	movt	r1, #0xe000
 8001640:      	str	r0, [r1]
 8001642:      	b	0x8001690 <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x182> @ imm = #0x4a
 8001644:      	movw	r0, #0x74
 8001648:      	mov.w	r12, #0x8000
 800164c:      	movt	r0, #0x2000
 8001650:      	add.w	r1, r0, #0x8000
 8001654:      	ldr.w	r2, [r0, r12]
 8001658:      	cmp	r2, #0x0
 800165a:      	it	eq
 800165c:      	moveq	r2, r0
 800165e:      	adds	r3, r2, #0x7
 8001660:      	subs	r1, r1, r2
 8001662:      	bic	r3, r3, #0x7
 8001666:      	subs	r3, r3, r2
 8001668:      	add.w	r5, r3, #0x70
 800166c:      	cmp	r5, r1
 800166e:      	bhi.w	0x8001aec <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x5de> @ imm = #0x47a
 8001672:      	adds	r1, r2, r5
 8001674:      	adds	r5, r2, r3
 8001676:      	str.w	r1, [r0, r12]
 800167a:      	movs	r1, #0x70
 800167c:      	mov	r0, r5
 800167e:      	bl	0x8004f3e <__aeabi_memclr8> @ imm = #0x38bc
 8001682:      	ldr	r3, [sp]
 8001684:      	str	r5, [r4]
 8001686:      	lsls	r0, r6, #0x1f
 8001688:      	beq.w	0x8001532 <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x24> @ imm = #-0x15a
 800168c:      	b	0x8001534 <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x26> @ imm = #-0x15c
 800168e:      	sev
 8001690:      	movs	r3, #0xc
 8001692:      	mov.w	r11, #0xffffffff
 8001696:      	movt	r3, #0x4000
 800169a:      	mov.w	lr, #0x0
 800169e:      	mov.w	r10, #0x1
 80016a2:      	movw	r9, #0x101
 80016a6:      	add.w	r0, r12, #0x8
 80016aa:      	str	r0, [sp, #0x4]
 80016ac:      	b	0x80016b0 <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x1a2> @ imm = #0x0
 80016ae:      	wfe
 80016b0:      	ldrb.w	r0, [r12, #0xc]
 80016b4:      	movw	r1, #0x38
 80016b8:      	movw	r2, #0x316f
 80016bc:      	movt	r1, #0x2000
 80016c0:      	movt	r2, #0x800
 80016c4:      	add.w	r0, r1, r0, lsl #4
 80016c8:      	mrs	r1, primask
 80016cc:      	cpsid i
 80016ce:      	strd	r2, r12, [r0, #8]
 80016d2:      	lsls	r0, r1, #0x1f
 80016d4:      	bne	0x80016e6 <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x1d8> @ imm = #0xe
 80016d6:      	cpsie i
 80016d8:      	b	0x80016e6 <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x1d8> @ imm = #0xa
 80016da:      	ldr.w	r12, [sp]
 80016de:      	cmp	r1, #0x0
 80016e0:      	mov.w	lr, #0x0
 80016e4:      	bne	0x80016ae <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x1a0> @ imm = #-0x3a
 80016e6:      	movw	r0, #0x38
 80016ea:      	movt	r0, #0x2000
 80016ee:      	ldr	r0, [r0, #0x30]
 80016f0:      	ldr	r1, [r3, #0x18]
 80016f2:      	ldr	r2, [sp, #0x4]
 80016f4:      	and	r3, r0, #0x1
 80016f8:      	uxth	r1, r1
 80016fa:      	eor.w	r1, r1, r3, lsl #15
 80016fe:      	lsrs	r3, r0, #0x11
 8001700:      	adds.w	r0, r1, r0, lsl #15
 8001704:      	ldr	r2, [r2]
 8001706:      	adc	r1, r3, #0x0
 800170a:      	cmp	r2, #0x0
 800170c:      	beq.w	0x8001812 <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x304> @ imm = #0x102
 8001710:      	ldr	r3, [sp, #0x4]
 8001712:      	b	0x800171e <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x210> @ imm = #0x8
 8001714:      	add.w	r3, r2, #0x18
 8001718:      	ldr	r2, [r3]
 800171a:      	cmp	r2, #0x0
 800171c:      	beq	0x8001812 <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x304> @ imm = #0xf2
 800171e:      	ldrd	r6, r5, [r2]
 8001722:      	subs	r6, r0, r6
 8001724:      	sbcs.w	r6, r1, r5
 8001728:      	blo	0x8001714 <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x206> @ imm = #-0x18
 800172a:      	add.w	r6, r2, #0x8
 800172e:      	ldrex	r5, [r6]
 8001732:      	and.w	r4, r5, r9
 8001736:      	cmp	r4, #0x1
 8001738:      	bne	0x80017fe <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x2f0> @ imm = #0xc2
 800173a:      	orr	r5, r5, #0x100
 800173e:      	strex	r4, r5, [r6]
 8001742:      	cmp	r4, #0x0
 8001744:      	bne	0x800172e <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x220> @ imm = #-0x1a
 8001746:      	ldr	r5, [r2, #0x10]
 8001748:      	ldr	r4, [r5]
 800174a:      	dmb	sy
 800174e:      	str	r4, [r2, #0xc]
 8001750:      	ldrex	r6, [r5]
 8001754:      	cmp	r6, r4
 8001756:      	bne	0x800176c <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x25e> @ imm = #0x12
 8001758:      	dmb	sy
 800175c:      	strex	r4, r2, [r5]
 8001760:      	cbnz	r4, 0x8001770 <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x262> @ imm = #0xc
 8001762:      	movs	r4, #0x1
 8001764:      	dmb	sy
 8001768:      	cbz	r4, 0x800177a <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x26c> @ imm = #0xe
 800176a:      	b	0x8001802 <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x2f4> @ imm = #0x94
 800176c:      	clrex
 8001770:      	movs	r4, #0x0
 8001772:      	cmp	r4, #0x0
 8001774:      	dmb	sy
 8001778:      	bne	0x8001802 <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x2f4> @ imm = #0x86
 800177a:      	str	r6, [r2, #0xc]
 800177c:      	ldrex	r4, [r5]
 8001780:      	cmp	r4, r6
 8001782:      	bne	0x8001798 <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x28a> @ imm = #0x12
 8001784:      	dmb	sy
 8001788:      	strex	r6, r2, [r5]
 800178c:      	cbnz	r6, 0x800179c <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x28e> @ imm = #0xc
 800178e:      	movs	r6, #0x1
 8001790:      	dmb	sy
 8001794:      	cbz	r6, 0x80017a4 <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x296> @ imm = #0xc
 8001796:      	b	0x8001802 <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x2f4> @ imm = #0x68
 8001798:      	clrex
 800179c:      	movs	r6, #0x0
 800179e:      	dmb	sy
 80017a2:      	cbnz	r6, 0x8001802 <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x2f4> @ imm = #0x5c
 80017a4:      	str	r4, [r2, #0xc]
 80017a6:      	ldrex	r6, [r5]
 80017aa:      	cmp	r6, r4
 80017ac:      	bne	0x80017c2 <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x2b4> @ imm = #0x12
 80017ae:      	dmb	sy
 80017b2:      	strex	r4, r2, [r5]
 80017b6:      	cbnz	r4, 0x80017c6 <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x2b8> @ imm = #0xc
 80017b8:      	movs	r4, #0x1
 80017ba:      	dmb	sy
 80017be:      	cbz	r4, 0x80017ce <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x2c0> @ imm = #0xc
 80017c0:      	b	0x8001802 <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x2f4> @ imm = #0x3e
 80017c2:      	clrex
 80017c6:      	movs	r4, #0x0
 80017c8:      	dmb	sy
 80017cc:      	cbnz	r4, 0x8001802 <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x2f4> @ imm = #0x32
 80017ce:      	str	r6, [r2, #0xc]
 80017d0:      	ldrex	r4, [r5]
 80017d4:      	cmp	r4, r6
 80017d6:      	bne	0x80017ee <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x2e0> @ imm = #0x14
 80017d8:      	dmb	sy
 80017dc:      	strex	r6, r2, [r5]
 80017e0:      	cbnz	r6, 0x80017f2 <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x2e4> @ imm = #0xe
 80017e2:      	movs	r6, #0x1
 80017e4:      	cmp	r6, #0x0
 80017e6:      	dmb	sy
 80017ea:      	beq	0x800174e <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x240> @ imm = #-0xa0
 80017ec:      	b	0x8001802 <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x2f4> @ imm = #0x12
 80017ee:      	clrex
 80017f2:      	movs	r6, #0x0
 80017f4:      	cmp	r6, #0x0
 80017f6:      	dmb	sy
 80017fa:      	beq	0x800174e <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x240> @ imm = #-0xb0
 80017fc:      	b	0x8001802 <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x2f4> @ imm = #0x2
 80017fe:      	clrex
 8001802:      	ldr	r6, [r2, #0x18]
 8001804:      	str	r6, [r3]
 8001806:      	strb.w	lr, [r2, #0xa]
 800180a:      	ldr	r2, [r3]
 800180c:      	cmp	r2, #0x0
 800180e:      	bne.w	0x800171e <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x210> @ imm = #-0xf4
 8001812:      	dmb	sy
 8001816:      	ldrex	r8, [r12]
 800181a:      	strex	r0, lr, [r12]
 800181e:      	cmp	r0, #0x0
 8001820:      	bne	0x8001816 <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x308> @ imm = #-0xe
 8001822:      	dmb	sy
 8001826:      	cmp.w	r8, #0x0
 800182a:      	beq	0x8001878 <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x36a> @ imm = #0x4a
 800182c:      	mov	r5, r8
 800182e:      	ldr.w	r8, [r8, #0xc]
 8001832:      	strd	r11, r11, [r5]
 8001836:      	ldrb	r0, [r5, #0x8]
 8001838:      	strb.w	lr, [r5, #0x9]
 800183c:      	cmp	r0, #0x0
 800183e:      	beq	0x8001826 <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x318> @ imm = #-0x1c
 8001840:      	ldr	r1, [r5, #0x14]
 8001842:      	mov	r0, r5
 8001844:      	blx	r1
 8001846:      	ldrd	r0, r1, [r5]
 800184a:      	mov.w	lr, #0x0
 800184e:      	eor.w	r1, r1, r11
 8001852:      	eor.w	r0, r0, r11
 8001856:      	orrs	r0, r1
 8001858:      	beq	0x8001826 <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x318> @ imm = #-0x36
 800185a:      	add.w	r0, r5, #0xa
 800185e:      	ldrexb	r1, [r0]
 8001862:      	strexb	r2, r10, [r0]
 8001866:      	cmp	r2, #0x0
 8001868:      	bne	0x800185e <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x350> @ imm = #-0xe
 800186a:      	cmp	r1, #0x0
 800186c:      	bne	0x8001826 <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x318> @ imm = #-0x4a
 800186e:      	ldr	r1, [sp, #0x4]
 8001870:      	ldr	r0, [r1]
 8001872:      	str	r0, [r5, #0x18]
 8001874:      	str	r5, [r1]
 8001876:      	b	0x8001826 <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x318> @ imm = #-0x54
 8001878:      	ldr	r0, [sp, #0x4]
 800187a:      	mov.w	r5, #0xffffffff
 800187e:      	ldr	r1, [r0]
 8001880:      	mov.w	r0, #0xffffffff
 8001884:      	cmp	r1, #0x0
 8001886:      	beq.w	0x80019ac <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x49e> @ imm = #0x122
 800188a:      	ldr.w	r12, [sp, #0x4]
 800188e:      	b	0x80018a4 <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x396> @ imm = #0x12
 8001890:      	ldr	r1, [r6, #0x18]
 8001892:      	str.w	r1, [r12]
 8001896:      	strb.w	lr, [r6, #0xa]
 800189a:      	ldr.w	r1, [r12]
 800189e:      	cmp	r1, #0x0
 80018a0:      	beq.w	0x80019ac <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x49e> @ imm = #0x108
 80018a4:      	ldrd	r6, r3, [r1]
 80018a8:      	eor.w	r4, r3, r11
 80018ac:      	eor.w	r2, r6, r11
 80018b0:      	orrs	r2, r4
 80018b2:      	subs	r4, r0, r6
 80018b4:      	sbcs.w	r4, r5, r3
 80018b8:      	mov.w	r4, #0x0
 80018bc:      	it	lo
 80018be:      	movlo	r4, #0x1
 80018c0:      	cmp	r4, #0x0
 80018c2:      	itt	eq
 80018c4:      	moveq	r5, r3
 80018c6:      	moveq	r0, r6
 80018c8:      	cbz	r2, 0x80018d6 <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x3c8> @ imm = #0xa
 80018ca:      	add.w	r12, r1, #0x18
 80018ce:      	ldr.w	r1, [r12]
 80018d2:      	cbnz	r1, 0x80018e8 <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x3da> @ imm = #0x12
 80018d4:      	b	0x80019ac <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x49e> @ imm = #0xd4
 80018d6:      	ldr	r2, [r1, #0x18]
 80018d8:      	str.w	r2, [r12]
 80018dc:      	strb.w	lr, [r1, #0xa]
 80018e0:      	ldr.w	r1, [r12]
 80018e4:      	cmp	r1, #0x0
 80018e6:      	beq	0x80019ac <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x49e> @ imm = #0xc2
 80018e8:      	ldrd	r3, r2, [r1]
 80018ec:      	eor.w	r6, r2, r11
 80018f0:      	eor.w	r4, r3, r11
 80018f4:      	orrs	r6, r4
 80018f6:      	subs	r4, r0, r3
 80018f8:      	sbcs.w	r4, r5, r2
 80018fc:      	mov.w	r4, #0x0
 8001900:      	it	lo
 8001902:      	movlo	r4, #0x1
 8001904:      	cmp	r4, #0x0
 8001906:      	itt	eq
 8001908:      	moveq	r5, r2
 800190a:      	moveq	r0, r3
 800190c:      	cbz	r6, 0x800191a <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x40c> @ imm = #0xa
 800190e:      	add.w	r12, r1, #0x18
 8001912:      	ldr.w	r6, [r12]
 8001916:      	cbnz	r6, 0x800192c <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x41e> @ imm = #0x12
 8001918:      	b	0x80019ac <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x49e> @ imm = #0x90
 800191a:      	ldr	r2, [r1, #0x18]
 800191c:      	str.w	r2, [r12]
 8001920:      	strb.w	lr, [r1, #0xa]
 8001924:      	ldr.w	r6, [r12]
 8001928:      	cmp	r6, #0x0
 800192a:      	beq	0x80019ac <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x49e> @ imm = #0x7e
 800192c:      	ldrd	r3, r1, [r6]
 8001930:      	eor.w	r2, r1, r11
 8001934:      	eor.w	r4, r3, r11
 8001938:      	orrs	r2, r4
 800193a:      	subs	r4, r0, r3
 800193c:      	sbcs.w	r4, r5, r1
 8001940:      	mov.w	r4, #0x0
 8001944:      	it	lo
 8001946:      	movlo	r4, #0x1
 8001948:      	cmp	r4, #0x0
 800194a:      	itt	ne
 800194c:      	movne	r1, r5
 800194e:      	movne	r3, r0
 8001950:      	cbz	r2, 0x800195e <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x450> @ imm = #0xa
 8001952:      	add.w	r12, r6, #0x18
 8001956:      	ldr.w	r6, [r12]
 800195a:      	cbnz	r6, 0x800196e <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x460> @ imm = #0x10
 800195c:      	b	0x80019a8 <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x49a> @ imm = #0x48
 800195e:      	ldr	r0, [r6, #0x18]
 8001960:      	str.w	r0, [r12]
 8001964:      	strb.w	lr, [r6, #0xa]
 8001968:      	ldr.w	r6, [r12]
 800196c:      	cbz	r6, 0x80019a8 <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x49a> @ imm = #0x38
 800196e:      	ldrd	r0, r5, [r6]
 8001972:      	eor.w	r2, r5, r11
 8001976:      	eor.w	r4, r0, r11
 800197a:      	orrs	r2, r4
 800197c:      	subs	r4, r3, r0
 800197e:      	sbcs.w	r4, r1, r5
 8001982:      	mov.w	r4, #0x0
 8001986:      	it	lo
 8001988:      	movlo	r4, #0x1
 800198a:      	cmp	r4, #0x0
 800198c:      	itt	ne
 800198e:      	movne	r5, r1
 8001990:      	movne	r0, r3
 8001992:      	cmp	r2, #0x0
 8001994:      	beq.w	0x8001890 <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x382> @ imm = #-0x108
 8001998:      	add.w	r12, r6, #0x18
 800199c:      	ldr.w	r1, [r12]
 80019a0:      	cmp	r1, #0x0
 80019a2:      	bne.w	0x80018a4 <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x396> @ imm = #-0x102
 80019a6:      	b	0x80019ac <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x49e> @ imm = #0x2
 80019a8:      	mov	r0, r3
 80019aa:      	mov	r5, r1
 80019ac:      	ldr	r1, [sp]
 80019ae:      	movw	r2, #0x38
 80019b2:      	movt	r2, #0x2000
 80019b6:      	ldrb	r1, [r1, #0xc]
 80019b8:      	mrs	r12, primask
 80019bc:      	cpsid i
 80019be:      	add.w	r8, r2, r1, lsl #4
 80019c2:      	lsls	r3, r1, #0x4
 80019c4:      	str	r0, [r2, r3]
 80019c6:      	movs	r3, #0xc
 80019c8:      	movt	r3, #0x4000
 80019cc:      	str.w	r5, [r8, #0x4]
 80019d0:      	ldr	r6, [r2, #0x30]
 80019d2:      	ldr	r4, [r3, #0x18]
 80019d4:      	and	r2, r6, #0x1
 80019d8:      	uxth	r4, r4
 80019da:      	eor.w	r2, r4, r2, lsl #15
 80019de:      	lsrs	r4, r6, #0x11
 80019e0:      	adds.w	r6, r2, r6, lsl #15
 80019e4:      	adc	r4, r4, #0x0
 80019e8:      	subs	r2, r6, r0
 80019ea:      	sbcs.w	r2, r4, r5
 80019ee:      	bhs	0x8001a6a <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x55c> @ imm = #0x78
 80019f0:      	cmp	r1, #0x3
 80019f2:      	bhs	0x8001a9a <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x58c> @ imm = #0xa4
 80019f4:      	movs	r3, #0x38
 80019f6:      	uxth	r2, r0
 80019f8:      	movt	r3, #0x4000
 80019fc:      	str.w	r2, [r3, r1, lsl #2]
 8001a00:      	movs	r3, #0xc
 8001a02:      	subs	r2, r0, r6
 8001a04:      	sbc.w	r6, r5, r4
 8001a08:      	subs.w	r2, r2, #0xc000
 8001a0c:      	movt	r3, #0x4000
 8001a10:      	add.w	r1, r1, #0x2
 8001a14:      	sbcs	r6, r6, #0x0
 8001a18:      	and	r4, r1, #0x1f
 8001a1c:      	ldr	r2, [r3]
 8001a1e:      	mov.w	r6, #0x0
 8001a22:      	mov.w	r1, #0x1
 8001a26:      	it	lo
 8001a28:      	movlo	r6, #0x1
 8001a2a:      	lsl.w	lr, r1, r4
 8001a2e:      	bic.w	r2, r2, lr
 8001a32:      	lsls	r6, r4
 8001a34:      	orrs	r2, r6
 8001a36:      	str	r2, [r3]
 8001a38:      	movw	r2, #0x38
 8001a3c:      	movt	r2, #0x2000
 8001a40:      	ldr	r2, [r2, #0x30]
 8001a42:      	ldr	r6, [r3, #0x18]
 8001a44:      	and	r4, r2, #0x1
 8001a48:      	uxth	r6, r6
 8001a4a:      	eor.w	r4, r6, r4, lsl #15
 8001a4e:      	lsrs	r6, r2, #0x11
 8001a50:      	adds.w	r2, r4, r2, lsl #15
 8001a54:      	adc	r4, r6, #0x0
 8001a58:      	subs	r0, r2, r0
 8001a5a:      	sbcs.w	r0, r4, r5
 8001a5e:      	bhs	0x8001a7e <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x570> @ imm = #0x1c
 8001a60:      	lsls.w	r0, r12, #0x1f
 8001a64:      	bne.w	0x80016da <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x1cc> @ imm = #-0x38e
 8001a68:      	b	0x8001a96 <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x588> @ imm = #0x2a
 8001a6a:      	ldr	r0, [r3]
 8001a6c:      	cmp	r1, #0x3
 8001a6e:      	bhs	0x8001ab2 <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x5a4> @ imm = #0x40
 8001a70:      	adds	r1, #0x2
 8001a72:      	and	r1, r1, #0x1f
 8001a76:      	lsl.w	r1, r10, r1
 8001a7a:      	bics	r0, r1
 8001a7c:      	b	0x8001a86 <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x578> @ imm = #0x6
 8001a7e:      	ldr	r1, [r3]
 8001a80:      	mvn.w	r0, lr
 8001a84:      	ands	r0, r1
 8001a86:      	movs	r1, #0x0
 8001a88:      	str	r0, [r3]
 8001a8a:      	strd	r11, r11, [r8]
 8001a8e:      	lsls.w	r0, r12, #0x1f
 8001a92:      	bne.w	0x80016da <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x1cc> @ imm = #-0x3bc
 8001a96:      	cpsie i
 8001a98:      	b	0x80016da <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6+0x1cc> @ imm = #-0x3c2
 8001a9a:      	movw	r0, #0x5674
 8001a9e:      	movw	r2, #0x58f4
 8001aa2:      	movt	r0, #0x800
 8001aa6:      	movt	r2, #0x800
 8001aaa:      	movs	r1, #0x1c
 8001aac:      	bl	0x8001ee2 <core::panicking::panic::h9ea7360e47959be2> @ imm = #0x432
 8001ab0:      	trap
 8001ab2:      	movw	r0, #0x5674
 8001ab6:      	movw	r2, #0x58e4
 8001aba:      	movt	r0, #0x800
 8001abe:      	movt	r2, #0x800
 8001ac2:      	movs	r1, #0x1c
 8001ac4:      	bl	0x8001ee2 <core::panicking::panic::h9ea7360e47959be2> @ imm = #0x41a
 8001ac8:      	trap
 8001aca:      	clrex
 8001ace:      	bl	0x8002d8e <_defmt_acquire> @ imm = #0x12bc
 8001ad2:      	movw	r0, #0xa
 8001ad6:      	movt	r0, #0x0
 8001ada:      	bl	0x8002c7a <defmt::export::header::hc9b4e0c1cc8ad9b7> @ imm = #0x119c
 8001ade:      	bl	0x8001b06 <defmt::export::fmt::hb978ccce7f1da77c> @ imm = #0x24
 8001ae2:      	bl	0x8002e34 <_defmt_release> @ imm = #0x134e
 8001ae6:      	bl	0x8002c96 <_defmt_panic> @ imm = #0x11ac
 8001aea:      	trap
 8001aec:      	bl	0x8002d8e <_defmt_acquire> @ imm = #0x129e
 8001af0:      	movw	r0, #0xb
 8001af4:      	movt	r0, #0x0
 8001af8:      	bl	0x8002c7a <defmt::export::header::hc9b4e0c1cc8ad9b7> @ imm = #0x117e
 8001afc:      	bl	0x8002e34 <_defmt_release> @ imm = #0x1334
 8001b00:      	bl	0x8002c96 <_defmt_panic> @ imm = #0x1192
 8001b04:      	trap

08001b06 <defmt::export::fmt::hb978ccce7f1da77c>:
 8001b06:      	push	{r7, lr}
 8001b08:      	mov	r7, sp
 8001b0a:      	sub	sp, #0x8
 8001b0c:      	movw	r0, #0x9
 8001b10:      	movs	r1, #0x2
 8001b12:      	movt	r0, #0x0
 8001b16:      	strh	r0, [r7, #-2]
 8001b1a:      	subs	r0, r7, #0x2
 8001b1c:      	bl	0x8002f16 <_defmt_write> @ imm = #0x13f6
 8001b20:      	add	sp, #0x8
 8001b22:      	pop	{r7, pc}

08001b24 <main>:
 8001b24:      	push	{r7, lr}
 8001b26:      	mov	r7, sp
 8001b28:      	bl	0x8001b2e <app::__cortex_m_rt_main::hdb2ac8fe40671bea> @ imm = #0x2
 8001b2c:      	trap

08001b2e <app::__cortex_m_rt_main::hdb2ac8fe40671bea>:
 8001b2e:      	push	{r7, lr}
 8001b30:      	mov	r7, sp
 8001b32:      	sub	sp, #0x10
 8001b34:      	mov	r4, sp
 8001b36:      	mov	r0, r4
 8001b38:      	bl	0x80030f6 <embassy_executor::arch::thread::Executor::new::h7cbc8f0c3b7382a4> @ imm = #0x15ba
 8001b3c:      	mov	r0, r4
 8001b3e:      	bl	0x800150e <embassy_executor::arch::thread::Executor::run::hb4a756a260e765c6> @ imm = #-0x634
 8001b42:      	trap

08001b44 <core::ops::function::FnOnce::call_once::h6925adb59fdac1d1>:
 8001b44:      	ldr	r0, [r0]
 8001b46:      	b	0x8001b46 <core::ops::function::FnOnce::call_once::h6925adb59fdac1d1+0x2> @ imm = #-0x4

08001b48 <core::panicking::panic_fmt::h9388f4d1c9b70388>:
 8001b48:      	push	{r7, lr}
 8001b4a:      	mov	r7, sp
 8001b4c:      	sub	sp, #0x18
 8001b4e:      	strd	r0, r1, [sp, #12]
 8001b52:      	movw	r0, #0x5330
 8001b56:      	movt	r0, #0x800
 8001b5a:      	movs	r2, #0x1
 8001b5c:      	str	r0, [sp, #0x8]
 8001b5e:      	movw	r0, #0x54a8
 8001b62:      	movt	r0, #0x800
 8001b66:      	strh.w	r2, [sp, #0x14]
 8001b6a:      	str	r0, [sp, #0x4]
 8001b6c:      	add	r0, sp, #0x4
 8001b6e:      	bl	0x8004b06 <rust_begin_unwind> @ imm = #0x2f94
 8001b72:      	trap

08001b74 <core::ptr::drop_in_place<core::fmt::Error>::h6a40d5d56b4f41ed>:
 8001b74:      	bx	lr

08001b76 <<T as core::any::Any>::type_id::hb7d7a3bcdb5df2c3>:
 8001b76:      	movw	r0, #0xaef7
 8001b7a:      	movw	r1, #0x1499
 8001b7e:      	movw	r2, #0x3bf6
 8001b82:      	movw	r3, #0x387
 8001b86:      	movt	r0, #0x6b63
 8001b8a:      	movt	r1, #0xf20a
 8001b8e:      	movt	r2, #0x42b0
 8001b92:      	movt	r3, #0x40f7
 8001b96:      	bx	lr

08001b98 <core::slice::index::slice_start_index_len_fail::h7a79a905b991b6de>:
 8001b98:      	push	{r7, lr}
 8001b9a:      	mov	r7, sp
 8001b9c:      	sub	sp, #0x30
 8001b9e:      	str	r0, [sp]
 8001ba0:      	movs	r0, #0x1
 8001ba2:      	str	r0, [sp, #0x4]
 8001ba4:      	movs	r0, #0x0
 8001ba6:      	movw	r1, #0x5498
 8001baa:      	str	r0, [sp, #0x18]
 8001bac:      	movs	r0, #0x2
 8001bae:      	movt	r1, #0x800
 8001bb2:      	str	r0, [sp, #0xc]
 8001bb4:      	str	r0, [sp, #0x14]
 8001bb6:      	add	r0, sp, #0x20
 8001bb8:      	str	r1, [sp, #0x8]
 8001bba:      	add	r1, sp, #0x4
 8001bbc:      	str	r0, [sp, #0x10]
 8001bbe:      	movw	r0, #0x1c21
 8001bc2:      	movt	r0, #0x800
 8001bc6:      	strd	r0, r1, [sp, #36]
 8001bca:      	movw	r1, #0x55c4
 8001bce:      	str	r0, [sp, #0x2c]
 8001bd0:      	mov	r0, sp
 8001bd2:      	str	r0, [sp, #0x20]
 8001bd4:      	add	r0, sp, #0x8
 8001bd6:      	movt	r1, #0x800
 8001bda:      	bl	0x8001b48 <core::panicking::panic_fmt::h9388f4d1c9b70388> @ imm = #-0x96
 8001bde:      	trap

08001be0 <core::panicking::panic_bounds_check::h9c02a53999795431>:
 8001be0:      	push	{r7, lr}
 8001be2:      	mov	r7, sp
 8001be4:      	sub	sp, #0x30
 8001be6:      	movs	r2, #0x10
 8001be8:      	strd	r0, r2, [sp]
 8001bec:      	movs	r0, #0x0
 8001bee:      	str	r0, [sp, #0x18]
 8001bf0:      	movs	r0, #0x2
 8001bf2:      	movw	r2, #0x538c
 8001bf6:      	str	r0, [sp, #0xc]
 8001bf8:      	str	r0, [sp, #0x14]
 8001bfa:      	add	r0, sp, #0x20
 8001bfc:      	movt	r2, #0x800
 8001c00:      	str	r0, [sp, #0x10]
 8001c02:      	movw	r0, #0x1c21
 8001c06:      	str	r2, [sp, #0x8]
 8001c08:      	movt	r0, #0x800
 8001c0c:      	mov	r2, sp
 8001c0e:      	str	r0, [sp, #0x2c]
 8001c10:      	strd	r0, r2, [sp, #36]
 8001c14:      	add	r0, sp, #0x4
 8001c16:      	str	r0, [sp, #0x20]
 8001c18:      	add	r0, sp, #0x8
 8001c1a:      	bl	0x8001b48 <core::panicking::panic_fmt::h9388f4d1c9b70388> @ imm = #-0xd6
 8001c1e:      	trap

08001c20 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::h0e20c3276a2c91f3>:
 8001c20:      	push	{r4, r5, r6, r7, lr}
 8001c22:      	add	r7, sp, #0xc
 8001c24:      	push.w	{r8, r9, r10, r11}
 8001c28:      	sub	sp, #0x2c
 8001c2a:      	ldr	r4, [r0]
 8001c2c:      	movw	r0, #0x2710
 8001c30:      	mov	r5, r1
 8001c32:      	movw	lr, #0xff9c
 8001c36:      	cmp	r4, r0
 8001c38:      	movw	r0, #0x539c
 8001c3c:      	movt	r0, #0x800
 8001c40:      	blo	0x8001cbc <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::h0e20c3276a2c91f3+0x9c> @ imm = #0x78
 8001c42:      	movw	r8, #0x1759
 8001c46:      	movw	r2, #0xe0ff
 8001c4a:      	sub.w	r11, r7, #0x43
 8001c4e:      	movs	r1, #0x0
 8001c50:      	movt	r8, #0xd1b7
 8001c54:      	movw	r9, #0xd8f0
 8001c58:      	movw	r10, #0x147b
 8001c5c:      	movt	r2, #0x5f5
 8001c60:      	str	r5, [sp]
 8001c62:      	umull	r3, r5, r4, r8
 8001c66:      	add.w	r12, r11, r1
 8001c6a:      	subs	r1, #0x4
 8001c6c:      	cmp	r4, r2
 8001c6e:      	lsr.w	r3, r5, #0xd
 8001c72:      	mla	r5, r3, r9, r4
 8001c76:      	mov	r4, r3
 8001c78:      	uxth	r6, r5
 8001c7a:      	lsr.w	r6, r6, #0x2
 8001c7e:      	mul	r6, r6, r10
 8001c82:      	lsr.w	r6, r6, #0x11
 8001c86:      	mla	r5, r6, lr, r5
 8001c8a:      	ldrh.w	r6, [r0, r6, lsl #1]
 8001c8e:      	strh.w	r6, [r12, #0x23]
 8001c92:      	uxth	r5, r5
 8001c94:      	ldrh.w	r5, [r0, r5, lsl #1]
 8001c98:      	strh.w	r5, [r12, #0x25]
 8001c9c:      	bhi	0x8001c62 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::h0e20c3276a2c91f3+0x42> @ imm = #-0x3e
 8001c9e:      	ldr	r5, [sp]
 8001ca0:      	adds	r1, #0x27
 8001ca2:      	mov	r4, r3
 8001ca4:      	cmp	r4, #0x63
 8001ca6:      	bhi	0x8001cc2 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::h0e20c3276a2c91f3+0xa2> @ imm = #0x18
 8001ca8:      	mov	r2, r4
 8001caa:      	cmp	r2, #0xa
 8001cac:      	blo	0x8001ce4 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::h0e20c3276a2c91f3+0xc4> @ imm = #0x34
 8001cae:      	ldrh.w	r0, [r0, r2, lsl #1]
 8001cb2:      	subs	r1, #0x2
 8001cb4:      	sub.w	r2, r7, #0x43
 8001cb8:      	strh	r0, [r2, r1]
 8001cba:      	b	0x8001cf0 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::h0e20c3276a2c91f3+0xd0> @ imm = #0x32
 8001cbc:      	movs	r1, #0x27
 8001cbe:      	cmp	r4, #0x63
 8001cc0:      	bls	0x8001ca8 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::h0e20c3276a2c91f3+0x88> @ imm = #-0x1c
 8001cc2:      	uxth	r2, r4
 8001cc4:      	movw	r3, #0x147b
 8001cc8:      	lsrs	r2, r2, #0x2
 8001cca:      	subs	r1, #0x2
 8001ccc:      	muls	r2, r3, r2
 8001cce:      	sub.w	r6, r7, #0x43
 8001cd2:      	lsrs	r2, r2, #0x11
 8001cd4:      	mla	r3, r2, lr, r4
 8001cd8:      	uxth	r3, r3
 8001cda:      	ldrh.w	r3, [r0, r3, lsl #1]
 8001cde:      	strh	r3, [r6, r1]
 8001ce0:      	cmp	r2, #0xa
 8001ce2:      	bhs	0x8001cae <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::h0e20c3276a2c91f3+0x8e> @ imm = #-0x38
 8001ce4:      	subs	r1, #0x1
 8001ce6:      	add.w	r0, r2, #0x30
 8001cea:      	sub.w	r2, r7, #0x43
 8001cee:      	strb	r0, [r2, r1]
 8001cf0:      	sub.w	r0, r7, #0x43
 8001cf4:      	rsb.w	r3, r1, #0x27
 8001cf8:      	adds	r2, r0, r1
 8001cfa:      	mov	r0, r5
 8001cfc:      	movs	r1, #0x1
 8001cfe:      	bl	0x8001d0c <core::fmt::Formatter::pad_integral::hba22464f485613a2> @ imm = #0xa
 8001d02:      	add	sp, #0x2c
 8001d04:      	pop.w	{r8, r9, r10, r11}
 8001d08:      	pop	{r4, r5, r6, r7, pc}
 8001d0a:      	bmi	0x8001cb6 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::h0e20c3276a2c91f3+0x96> @ imm = #-0x58

08001d0c <core::fmt::Formatter::pad_integral::hba22464f485613a2>:
 8001d0c:      	push	{r4, r5, r6, r7, lr}
 8001d0e:      	add	r7, sp, #0xc
 8001d10:      	push.w	{r8, r9, r10, r11}
 8001d14:      	sub	sp, #0x14
 8001d16:      	mov	r4, r3
 8001d18:      	mov	r8, r2
 8001d1a:      	mov	r6, r0
 8001d1c:      	cbz	r1, 0x8001d34 <core::fmt::Formatter::pad_integral::hba22464f485613a2+0x28> @ imm = #0x14
 8001d1e:      	ldr	r0, [r6, #0x1c]
 8001d20:      	mov.w	r11, #0x2b
 8001d24:      	ands	r1, r0, #0x1
 8001d28:      	it	eq
 8001d2a:      	moveq.w	r11, #0x110000
 8001d2e:      	add.w	r9, r1, r4
 8001d32:      	b	0x8001d3e <core::fmt::Formatter::pad_integral::hba22464f485613a2+0x32> @ imm = #0x8
 8001d34:      	ldr	r0, [r6, #0x1c]
 8001d36:      	add.w	r9, r4, #0x1
 8001d3a:      	mov.w	r11, #0x2d
 8001d3e:      	movw	r1, #0x54a8
 8001d42:      	ldr	r2, [r6]
 8001d44:      	lsls	r3, r0, #0x1d
 8001d46:      	movt	r1, #0x800
 8001d4a:      	and.w	r3, r1, r3, asr #31
 8001d4e:      	cbz	r2, 0x8001d7a <core::fmt::Formatter::pad_integral::hba22464f485613a2+0x6e> @ imm = #0x28
 8001d50:      	ldr.w	r10, [r6, #0x4]
 8001d54:      	cmp	r10, r9
 8001d56:      	bls	0x8001d96 <core::fmt::Formatter::pad_integral::hba22464f485613a2+0x8a> @ imm = #0x3c
 8001d58:      	lsls	r0, r0, #0x1c
 8001d5a:      	strd	r8, r4, [sp, #12]
 8001d5e:      	bmi	0x8001dbc <core::fmt::Formatter::pad_integral::hba22464f485613a2+0xb0> @ imm = #0x5a
 8001d60:      	ldrb.w	r0, [r6, #0x20]
 8001d64:      	sub.w	r8, r10, r9
 8001d68:      	mov	r10, r3
 8001d6a:      	tbb	[pc, r0]

08001d6e <$d.22>:
 8001d6e: 51 02 4b 02  	.word	0x024b0251

08001d72 <$t.23>:
 8001d72:      	mov	r0, r8
 8001d74:      	mov.w	r8, #0x0
 8001d78:      	b	0x8001e10 <core::fmt::Formatter::pad_integral::hba22464f485613a2+0x104> @ imm = #0x94
 8001d7a:      	ldrd	r6, r5, [r6, #20]
 8001d7e:      	mov	r2, r11
 8001d80:      	mov	r1, r5
 8001d82:      	mov	r0, r6
 8001d84:      	bl	0x8001ea0 <core::fmt::Formatter::pad_integral::write_prefix::h75435aeb0fe7d572> @ imm = #0x118
 8001d88:      	cbz	r0, 0x8001da8 <core::fmt::Formatter::pad_integral::hba22464f485613a2+0x9c> @ imm = #0x1c
 8001d8a:      	movs	r4, #0x1
 8001d8c:      	mov	r0, r4
 8001d8e:      	add	sp, #0x14
 8001d90:      	pop.w	{r8, r9, r10, r11}
 8001d94:      	pop	{r4, r5, r6, r7, pc}
 8001d96:      	ldrd	r6, r5, [r6, #20]
 8001d9a:      	mov	r2, r11
 8001d9c:      	mov	r1, r5
 8001d9e:      	mov	r0, r6
 8001da0:      	bl	0x8001ea0 <core::fmt::Formatter::pad_integral::write_prefix::h75435aeb0fe7d572> @ imm = #0xfc
 8001da4:      	cmp	r0, #0x0
 8001da6:      	bne	0x8001e6a <core::fmt::Formatter::pad_integral::hba22464f485613a2+0x15e> @ imm = #0xc0
 8001da8:      	ldr	r3, [r5, #0xc]
 8001daa:      	mov	r0, r6
 8001dac:      	mov	r1, r8
 8001dae:      	mov	r2, r4
 8001db0:      	add	sp, #0x14
 8001db2:      	pop.w	{r8, r9, r10, r11}
 8001db6:      	pop.w	{r4, r5, r6, r7, lr}
 8001dba:      	bx	r3
 8001dbc:      	ldrd	r5, r8, [r6, #20]
 8001dc0:      	movs	r4, #0x1
 8001dc2:      	ldr	r0, [r6, #0x10]
 8001dc4:      	mov	r2, r11
 8001dc6:      	str	r0, [sp, #0x8]
 8001dc8:      	movs	r0, #0x30
 8001dca:      	ldrb.w	r1, [r6, #0x20]
 8001dce:      	str	r1, [sp, #0x4]
 8001dd0:      	mov	r1, r8
 8001dd2:      	str	r0, [r6, #0x10]
 8001dd4:      	mov	r0, r5
 8001dd6:      	strb.w	r4, [r6, #0x20]
 8001dda:      	bl	0x8001ea0 <core::fmt::Formatter::pad_integral::write_prefix::h75435aeb0fe7d572> @ imm = #0xc2
 8001dde:      	cbz	r0, 0x8001dea <core::fmt::Formatter::pad_integral::hba22464f485613a2+0xde> @ imm = #0x8
 8001de0:      	mov	r0, r4
 8001de2:      	add	sp, #0x14
 8001de4:      	pop.w	{r8, r9, r10, r11}
 8001de8:      	pop	{r4, r5, r6, r7, pc}
 8001dea:      	sub.w	r0, r10, r9
 8001dee:      	adds	r4, r0, #0x1
 8001df0:      	subs	r4, #0x1
 8001df2:      	beq	0x8001e5c <core::fmt::Formatter::pad_integral::hba22464f485613a2+0x150> @ imm = #0x66
 8001df4:      	ldr.w	r2, [r8, #0x10]
 8001df8:      	mov	r0, r5
 8001dfa:      	movs	r1, #0x30
 8001dfc:      	blx	r2
 8001dfe:      	cmp	r0, #0x0
 8001e00:      	beq	0x8001df0 <core::fmt::Formatter::pad_integral::hba22464f485613a2+0xe4> @ imm = #-0x14
 8001e02:      	b	0x8001e6a <core::fmt::Formatter::pad_integral::hba22464f485613a2+0x15e> @ imm = #0x64
 8001e04:      	add.w	r1, r8, #0x1
 8001e08:      	lsr.w	r0, r8, #0x1
 8001e0c:      	lsr.w	r8, r1, #0x1
 8001e10:      	ldrd	r9, r5, [r6, #16]
 8001e14:      	adds	r4, r0, #0x1
 8001e16:      	ldr	r6, [r6, #0x18]
 8001e18:      	subs	r4, #0x1
 8001e1a:      	beq	0x8001e2a <core::fmt::Formatter::pad_integral::hba22464f485613a2+0x11e> @ imm = #0xc
 8001e1c:      	ldr	r2, [r6, #0x10]
 8001e1e:      	mov	r0, r5
 8001e20:      	mov	r1, r9
 8001e22:      	blx	r2
 8001e24:      	cmp	r0, #0x0
 8001e26:      	beq	0x8001e18 <core::fmt::Formatter::pad_integral::hba22464f485613a2+0x10c> @ imm = #-0x12
 8001e28:      	b	0x8001e6a <core::fmt::Formatter::pad_integral::hba22464f485613a2+0x15e> @ imm = #0x3e
 8001e2a:      	mov	r0, r5
 8001e2c:      	mov	r1, r6
 8001e2e:      	mov	r2, r11
 8001e30:      	mov	r3, r10
 8001e32:      	bl	0x8001ea0 <core::fmt::Formatter::pad_integral::write_prefix::h75435aeb0fe7d572> @ imm = #0x6a
 8001e36:      	cbnz	r0, 0x8001e6a <core::fmt::Formatter::pad_integral::hba22464f485613a2+0x15e> @ imm = #0x30
 8001e38:      	ldr	r3, [r6, #0xc]
 8001e3a:      	mov	r0, r5
 8001e3c:      	ldrd	r1, r2, [sp, #12]
 8001e40:      	blx	r3
 8001e42:      	cbnz	r0, 0x8001e6a <core::fmt::Formatter::pad_integral::hba22464f485613a2+0x15e> @ imm = #0x24
 8001e44:      	movs	r4, #0x0
 8001e46:      	cmp	r8, r4
 8001e48:      	beq	0x8001e8c <core::fmt::Formatter::pad_integral::hba22464f485613a2+0x180> @ imm = #0x40
 8001e4a:      	ldr	r2, [r6, #0x10]
 8001e4c:      	mov	r0, r5
 8001e4e:      	mov	r1, r9
 8001e50:      	blx	r2
 8001e52:      	adds	r4, #0x1
 8001e54:      	cmp	r0, #0x0
 8001e56:      	beq	0x8001e46 <core::fmt::Formatter::pad_integral::hba22464f485613a2+0x13a> @ imm = #-0x14
 8001e58:      	subs	r0, r4, #0x1
 8001e5a:      	b	0x8001e8e <core::fmt::Formatter::pad_integral::hba22464f485613a2+0x182> @ imm = #0x30
 8001e5c:      	ldr.w	r3, [r8, #0xc]
 8001e60:      	mov	r0, r5
 8001e62:      	ldrd	r1, r2, [sp, #12]
 8001e66:      	blx	r3
 8001e68:      	cbz	r0, 0x8001e76 <core::fmt::Formatter::pad_integral::hba22464f485613a2+0x16a> @ imm = #0xa
 8001e6a:      	movs	r4, #0x1
 8001e6c:      	mov	r0, r4
 8001e6e:      	add	sp, #0x14
 8001e70:      	pop.w	{r8, r9, r10, r11}
 8001e74:      	pop	{r4, r5, r6, r7, pc}
 8001e76:      	ldr	r0, [sp, #0x4]
 8001e78:      	movs	r4, #0x0
 8001e7a:      	strb.w	r0, [r6, #0x20]
 8001e7e:      	ldr	r0, [sp, #0x8]
 8001e80:      	str	r0, [r6, #0x10]
 8001e82:      	mov	r0, r4
 8001e84:      	add	sp, #0x14
 8001e86:      	pop.w	{r8, r9, r10, r11}
 8001e8a:      	pop	{r4, r5, r6, r7, pc}
 8001e8c:      	mov	r0, r8
 8001e8e:      	movs	r4, #0x0
 8001e90:      	cmp	r0, r8
 8001e92:      	it	lo
 8001e94:      	movlo	r4, #0x1
 8001e96:      	mov	r0, r4
 8001e98:      	add	sp, #0x14
 8001e9a:      	pop.w	{r8, r9, r10, r11}
 8001e9e:      	pop	{r4, r5, r6, r7, pc}

08001ea0 <core::fmt::Formatter::pad_integral::write_prefix::h75435aeb0fe7d572>:
 8001ea0:      	push	{r4, r5, r6, r7, lr}
 8001ea2:      	add	r7, sp, #0xc
 8001ea4:      	str	r11, [sp, #-4]!
 8001ea8:      	mov	r4, r3
 8001eaa:      	mov	r6, r1
 8001eac:      	mov	r5, r0
 8001eae:      	cmp.w	r2, #0x110000
 8001eb2:      	beq	0x8001ec6 <core::fmt::Formatter::pad_integral::write_prefix::h75435aeb0fe7d572+0x26> @ imm = #0x10
 8001eb4:      	ldr	r3, [r6, #0x10]
 8001eb6:      	mov	r0, r5
 8001eb8:      	mov	r1, r2
 8001eba:      	blx	r3
 8001ebc:      	cbz	r0, 0x8001ec6 <core::fmt::Formatter::pad_integral::write_prefix::h75435aeb0fe7d572+0x26> @ imm = #0x6
 8001ebe:      	movs	r0, #0x1
 8001ec0:      	ldr	r11, [sp], #4
 8001ec4:      	pop	{r4, r5, r6, r7, pc}
 8001ec6:      	cbz	r4, 0x8001eda <core::fmt::Formatter::pad_integral::write_prefix::h75435aeb0fe7d572+0x3a> @ imm = #0x10
 8001ec8:      	ldr	r3, [r6, #0xc]
 8001eca:      	mov	r0, r5
 8001ecc:      	mov	r1, r4
 8001ece:      	movs	r2, #0x0
 8001ed0:      	ldr	r11, [sp], #4
 8001ed4:      	pop.w	{r4, r5, r6, r7, lr}
 8001ed8:      	bx	r3
 8001eda:      	movs	r0, #0x0
 8001edc:      	ldr	r11, [sp], #4
 8001ee0:      	pop	{r4, r5, r6, r7, pc}

08001ee2 <core::panicking::panic::h9ea7360e47959be2>:
 8001ee2:      	push	{r7, lr}
 8001ee4:      	mov	r7, sp
 8001ee6:      	sub	sp, #0x20
 8001ee8:      	mov	r12, r2
 8001eea:      	movs	r2, #0x1
 8001eec:      	str	r2, [sp, #0x4]
 8001eee:      	add	r2, sp, #0x18
 8001ef0:      	str	r2, [sp]
 8001ef2:      	movw	r2, #0x54a8
 8001ef6:      	movs	r3, #0x0
 8001ef8:      	strd	r0, r1, [sp, #24]
 8001efc:      	movt	r2, #0x800
 8001f00:      	mov	r0, sp
 8001f02:      	mov	r1, r12
 8001f04:      	str	r3, [sp, #0x10]
 8001f06:      	str	r3, [sp, #0xc]
 8001f08:      	str	r2, [sp, #0x8]
 8001f0a:      	bl	0x8001b48 <core::panicking::panic_fmt::h9388f4d1c9b70388> @ imm = #-0x3c6
 8001f0e:      	trap

08001f10 <<&T as core::fmt::Display>::fmt::h71f010c380c1da3e>:
 8001f10:      	push	{r4, r5, r6, r7, lr}
 8001f12:      	add	r7, sp, #0xc
 8001f14:      	push.w	{r8, r9, r10, r11}
 8001f18:      	sub	sp, #0x14
 8001f1a:      	ldr.w	r12, [r1]
 8001f1e:      	ldr	r3, [r1, #0x8]
 8001f20:      	ldrd	r10, r2, [r0]
 8001f24:      	orrs.w	r0, r12, r3
 8001f28:      	bne	0x8001f30 <<&T as core::fmt::Display>::fmt::h71f010c380c1da3e+0x20> @ imm = #0x4
 8001f2a:      	ldrd	r0, r1, [r1, #20]
 8001f2e:      	b	0x8002610 <<&T as core::fmt::Display>::fmt::h71f010c380c1da3e+0x700> @ imm = #0x6de
 8001f30:      	cmp	r3, #0x0
 8001f32:      	beq	0x800201c <<&T as core::fmt::Display>::fmt::h71f010c380c1da3e+0x10c> @ imm = #0xe6
 8001f34:      	ldr	r0, [r1, #0xc]
 8001f36:      	add.w	lr, r10, r2
 8001f3a:      	mov.w	r8, #0x0
 8001f3e:      	adds	r5, r0, #0x1
 8001f40:      	mov	r0, r10
 8001f42:      	b	0x8001f58 <<&T as core::fmt::Display>::fmt::h71f010c380c1da3e+0x48> @ imm = #0x12
 8001f44:      	orr.w	r4, r6, r9, lsl #6
 8001f48:      	adds	r0, r3, #0x2
 8001f4a:      	sub.w	r3, r8, r3
 8001f4e:      	cmp.w	r4, #0x110000
 8001f52:      	add.w	r8, r3, r0
 8001f56:      	beq	0x800201c <<&T as core::fmt::Display>::fmt::h71f010c380c1da3e+0x10c> @ imm = #0xc2
 8001f58:      	subs	r5, #0x1
 8001f5a:      	mov	r3, r0
 8001f5c:      	beq	0x8001fb0 <<&T as core::fmt::Display>::fmt::h71f010c380c1da3e+0xa0> @ imm = #0x50
 8001f5e:      	cmp	r3, lr
 8001f60:      	beq	0x800201c <<&T as core::fmt::Display>::fmt::h71f010c380c1da3e+0x10c> @ imm = #0xb8
 8001f62:      	mov	r0, r3
 8001f64:      	ldrsb	r6, [r0], #1
 8001f68:      	cmp.w	r6, #0xffffffff
 8001f6c:      	uxtb	r4, r6
 8001f6e:      	bgt	0x8001f4a <<&T as core::fmt::Display>::fmt::h71f010c380c1da3e+0x3a> @ imm = #-0x28
 8001f70:      	ldrb	r6, [r3, #0x1]
 8001f72:      	and	r9, r4, #0x1f
 8001f76:      	cmp	r4, #0xdf
 8001f78:      	and	r6, r6, #0x3f
 8001f7c:      	bls	0x8001f44 <<&T as core::fmt::Display>::fmt::h71f010c380c1da3e+0x34> @ imm = #-0x3c
 8001f7e:      	ldrb	r0, [r3, #0x2]
 8001f80:      	cmp	r4, #0xf0
 8001f82:      	and	r0, r0, #0x3f
 8001f86:      	orr.w	r6, r0, r6, lsl #6
 8001f8a:      	blo	0x8001fa8 <<&T as core::fmt::Display>::fmt::h71f010c380c1da3e+0x98> @ imm = #0x1a
 8001f8c:      	ldrb	r0, [r3, #0x3]
 8001f8e:      	and	r4, r9, #0x7
 8001f92:      	and	r0, r0, #0x3f
 8001f96:      	orr.w	r0, r0, r6, lsl #6
 8001f9a:      	orr.w	r4, r0, r4, lsl #18
 8001f9e:      	cmp.w	r4, #0x110000
 8001fa2:      	beq	0x800201c <<&T as core::fmt::Display>::fmt::h71f010c380c1da3e+0x10c> @ imm = #0x76
 8001fa4:      	adds	r0, r3, #0x4
 8001fa6:      	b	0x8001f4a <<&T as core::fmt::Display>::fmt::h71f010c380c1da3e+0x3a> @ imm = #-0x60
 8001fa8:      	orr.w	r4, r6, r9, lsl #12
 8001fac:      	adds	r0, r3, #0x3
 8001fae:      	b	0x8001f4a <<&T as core::fmt::Display>::fmt::h71f010c380c1da3e+0x3a> @ imm = #-0x68
 8001fb0:      	cmp	r3, lr
 8001fb2:      	beq	0x800201c <<&T as core::fmt::Display>::fmt::h71f010c380c1da3e+0x10c> @ imm = #0x66
 8001fb4:      	ldrsb.w	r0, [r3]
 8001fb8:      	cmp.w	r0, #0xffffffff
 8001fbc:      	bgt	0x8001fc8 <<&T as core::fmt::Display>::fmt::h71f010c380c1da3e+0xb8> @ imm = #0x8
 8001fbe:      	uxtb	r0, r0
 8001fc0:      	cmp	r0, #0xe0
 8001fc2:      	it	hs
 8001fc4:      	cmphs	r0, #0xf0
 8001fc6:      	bhs	0x8001ff4 <<&T as core::fmt::Display>::fmt::h71f010c380c1da3e+0xe4> @ imm = #0x2a
 8001fc8:      	cmp.w	r8, #0x0
 8001fcc:      	beq	0x8001fe2 <<&T as core::fmt::Display>::fmt::h71f010c380c1da3e+0xd2> @ imm = #0x12
 8001fce:      	cmp	r8, r2
 8001fd0:      	bhs	0x8001fe0 <<&T as core::fmt::Display>::fmt::h71f010c380c1da3e+0xd0> @ imm = #0xc
 8001fd2:      	ldrsb.w	r0, [r10, r8]
 8001fd6:      	cmn.w	r0, #0x40
 8001fda:      	bge	0x8001fe2 <<&T as core::fmt::Display>::fmt::h71f010c380c1da3e+0xd2> @ imm = #0x4
 8001fdc:      	movs	r0, #0x0
 8001fde:      	b	0x8001fe4 <<&T as core::fmt::Display>::fmt::h71f010c380c1da3e+0xd4> @ imm = #0x2
 8001fe0:      	bne	0x8001fdc <<&T as core::fmt::Display>::fmt::h71f010c380c1da3e+0xcc> @ imm = #-0x8
 8001fe2:      	mov	r0, r10
 8001fe4:      	cmp	r0, #0x0
 8001fe6:      	ite	eq
 8001fe8:      	moveq	r8, r2
 8001fea:      	movne	r10, r0
 8001fec:      	cmp.w	r12, #0x0
 8001ff0:      	bne	0x8002026 <<&T as core::fmt::Display>::fmt::h71f010c380c1da3e+0x116> @ imm = #0x32
 8001ff2:      	b	0x800260a <<&T as core::fmt::Display>::fmt::h71f010c380c1da3e+0x6fa> @ imm = #0x614
 8001ff4:      	ldrb	r6, [r3, #0x1]
 8001ff6:      	and	r0, r0, #0x7
 8001ffa:      	ldrb	r5, [r3, #0x2]
 8001ffc:      	ldrb	r3, [r3, #0x3]
 8001ffe:      	and	r6, r6, #0x3f
 8002002:      	and	r5, r5, #0x3f
 8002006:      	and	r3, r3, #0x3f
 800200a:      	lsls	r5, r5, #0x6
 800200c:      	orr.w	r6, r5, r6, lsl #12
 8002010:      	add	r3, r6
 8002012:      	orr.w	r0, r3, r0, lsl #18
 8002016:      	cmp.w	r0, #0x110000
 800201a:      	bne	0x8001fc8 <<&T as core::fmt::Display>::fmt::h71f010c380c1da3e+0xb8> @ imm = #-0x56
 800201c:      	mov	r8, r2
 800201e:      	cmp.w	r12, #0x0
 8002022:      	beq.w	0x800260a <<&T as core::fmt::Display>::fmt::h71f010c380c1da3e+0x6fa> @ imm = #0x5e4
 8002026:      	ldr	r4, [r1, #0x4]
 8002028:      	cmp.w	r8, #0x10
 800202c:      	bhs	0x8002046 <<&T as core::fmt::Display>::fmt::h71f010c380c1da3e+0x136> @ imm = #0x16
 800202e:      	cmp.w	r8, #0x0
 8002032:      	beq	0x800207c <<&T as core::fmt::Display>::fmt::h71f010c380c1da3e+0x16c> @ imm = #0x46
 8002034:      	and	r0, r8, #0x3
 8002038:      	mov.w	lr, #0x0
 800203c:      	cmp.w	r8, #0x4
 8002040:      	bhs	0x8002088 <<&T as core::fmt::Display>::fmt::h71f010c380c1da3e+0x178> @ imm = #0x44
 8002042:      	movs	r3, #0x0
 8002044:      	b	0x800213c <<&T as core::fmt::Display>::fmt::h71f010c380c1da3e+0x22c> @ imm = #0xf4
 8002046:      	add.w	r0, r10, #0x3
 800204a:      	str	r4, [sp]
 800204c:      	bic	r9, r0, #0x3
 8002050:      	str.w	r8, [sp, #0x8]
 8002054:      	subs.w	r0, r9, r10
 8002058:      	str	r1, [sp, #0x4]
 800205a:      	sub.w	r8, r8, r0
 800205e:      	and	r3, r8, #0x3
 8002062:      	bne	0x8002068 <<&T as core::fmt::Display>::fmt::h71f010c380c1da3e+0x158> @ imm = #0x2
 8002064:      	movs	r0, #0x0
 8002066:      	b	0x8002282 <<&T as core::fmt::Display>::fmt::h71f010c380c1da3e+0x372> @ imm = #0x218
 8002068:      	mov	r1, r0
 800206a:      	mvn.w	r0, r10
 800206e:      	add	r0, r9
 8002070:      	str	r3, [sp, #0x10]
 8002072:      	cmp	r0, #0x3
 8002074:      	bhs.w	0x8002188 <<&T as core::fmt::Display>::fmt::h71f010c380c1da3e+0x278> @ imm = #0x110
 8002078:      	movs	r0, #0x0
 800207a:      	b	0x8002254 <<&T as core::fmt::Display>::fmt::h71f010c380c1da3e+0x344> @ imm = #0x1d6
 800207c:      	mov.w	lr, #0x0
 8002080:      	cmp	r4, lr
 8002082:      	bhi.w	0x8002588 <<&T as core::fmt::Display>::fmt::h71f010c380c1da3e+0x678> @ imm = #0x502
 8002086:      	b	0x800260a <<&T as core::fmt::Display>::fmt::h71f010c380c1da3e+0x6fa> @ imm = #0x580
 8002088:      	ldrsb.w	r2, [r10, #0x1]
 800208c:      	ldrsb.w	r6, [r10]
 8002090:      	ldrsb.w	r3, [r10, #0x2]
 8002094:      	cmn.w	r2, #0x41
 8002098:      	ldrsb.w	r5, [r10, #0x3]
 800209c:      	it	gt
 800209e:      	movgt.w	lr, #0x1
 80020a2:      	cmn.w	r6, #0x41
 80020a6:      	it	gt
 80020a8:      	addgt.w	lr, lr, #0x1
 80020ac:      	cmn.w	r3, #0x41
 80020b0:      	it	gt
 80020b2:      	addgt.w	lr, lr, #0x1
 80020b6:      	cmn.w	r5, #0x41
 80020ba:      	bic	r3, r8, #0x3
 80020be:      	it	gt
 80020c0:      	addgt.w	lr, lr, #0x1
 80020c4:      	cmp	r3, #0x4
 80020c6:      	beq	0x800213c <<&T as core::fmt::Display>::fmt::h71f010c380c1da3e+0x22c> @ imm = #0x72
 80020c8:      	ldrsb.w	r6, [r10, #0x4]
 80020cc:      	ldrsb.w	r5, [r10, #0x5]
 80020d0:      	ldrsb.w	r2, [r10, #0x6]
 80020d4:      	cmn.w	r6, #0x41
 80020d8:      	ldrsb.w	r12, [r10, #0x7]
 80020dc:      	it	gt
 80020de:      	addgt.w	lr, lr, #0x1
 80020e2:      	cmn.w	r5, #0x41
 80020e6:      	it	gt
 80020e8:      	addgt.w	lr, lr, #0x1
 80020ec:      	cmn.w	r2, #0x41
 80020f0:      	it	gt
 80020f2:      	addgt.w	lr, lr, #0x1
 80020f6:      	cmn.w	r12, #0x41
 80020fa:      	it	gt
 80020fc:      	addgt.w	lr, lr, #0x1
 8002100:      	cmp	r3, #0x8
 8002102:      	beq	0x800213c <<&T as core::fmt::Display>::fmt::h71f010c380c1da3e+0x22c> @ imm = #0x36
 8002104:      	ldrsb.w	r6, [r10, #0x8]
 8002108:      	ldrsb.w	r5, [r10, #0x9]
 800210c:      	ldrsb.w	r2, [r10, #0xa]
 8002110:      	cmn.w	r6, #0x41
 8002114:      	ldrsb.w	r12, [r10, #0xb]
 8002118:      	it	gt
 800211a:      	addgt.w	lr, lr, #0x1
 800211e:      	cmn.w	r5, #0x41
 8002122:      	it	gt
 8002124:      	addgt.w	lr, lr, #0x1
 8002128:      	cmn.w	r2, #0x41
 800212c:      	it	gt
 800212e:      	addgt.w	lr, lr, #0x1
 8002132:      	cmn.w	r12, #0x41
 8002136:      	it	gt
 8002138:      	addgt.w	lr, lr, #0x1
 800213c:      	cmp	r0, #0x0
 800213e:      	beq.w	0x8002584 <<&T as core::fmt::Display>::fmt::h71f010c380c1da3e+0x674> @ imm = #0x442
 8002142:      	ldrsb.w	r2, [r10, r3]
 8002146:      	cmn.w	r2, #0x41
 800214a:      	it	gt
 800214c:      	addgt.w	lr, lr, #0x1
 8002150:      	cmp	r0, #0x1
 8002152:      	beq.w	0x8002584 <<&T as core::fmt::Display>::fmt::h71f010c380c1da3e+0x674> @ imm = #0x42e
 8002156:      	orr	r2, r3, #0x1
 800215a:      	ldrsb.w	r2, [r10, r2]
 800215e:      	cmn.w	r2, #0x41
 8002162:      	it	gt
 8002164:      	addgt.w	lr, lr, #0x1
 8002168:      	cmp	r0, #0x2
 800216a:      	beq.w	0x8002584 <<&T as core::fmt::Display>::fmt::h71f010c380c1da3e+0x674> @ imm = #0x416
 800216e:      	orr	r0, r3, #0x2
 8002172:      	ldrsb.w	r0, [r10, r0]
 8002176:      	cmn.w	r0, #0x41
 800217a:      	it	gt
 800217c:      	addgt.w	lr, lr, #0x1
 8002180:      	cmp	r4, lr
 8002182:      	bhi.w	0x8002588 <<&T as core::fmt::Display>::fmt::h71f010c380c1da3e+0x678> @ imm = #0x402
 8002186:      	b	0x800260a <<&T as core::fmt::Display>::fmt::h71f010c380c1da3e+0x6fa> @ imm = #0x480
 8002188:      	movs	r0, #0x0
 800218a:      	movs	r4, #0x0
 800218c:      	add.w	r2, r10, r4
 8002190:      	ldrsb.w	r12, [r10, r4]
 8002194:      	ldrsb.w	lr, [r2, #0x1]
 8002198:      	ldrsb.w	r11, [r2, #0xe]
 800219c:      	cmn.w	r12, #0x41
 80021a0:      	ldrsb.w	r3, [r2, #0xd]
 80021a4:      	ldrsb.w	r5, [r2, #0xc]
 80021a8:      	it	gt
 80021aa:      	addgt	r0, #0x1
 80021ac:      	ldrsb.w	r6, [r2, #0x2]
 80021b0:      	cmn.w	lr, #0x41
 80021b4:      	it	gt
 80021b6:      	addgt	r0, #0x1
 80021b8:      	ldrsb.w	r12, [r2, #0x3]
 80021bc:      	cmn.w	r6, #0x41
 80021c0:      	it	gt
 80021c2:      	addgt	r0, #0x1
 80021c4:      	ldrsb.w	r6, [r2, #0x4]
 80021c8:      	cmn.w	r12, #0x41
 80021cc:      	it	gt
 80021ce:      	addgt	r0, #0x1
 80021d0:      	ldrsb.w	r12, [r2, #0x5]
 80021d4:      	cmn.w	r6, #0x41
 80021d8:      	it	gt
 80021da:      	addgt	r0, #0x1
 80021dc:      	ldrsb.w	r6, [r2, #0x6]
 80021e0:      	cmn.w	r12, #0x41
 80021e4:      	it	gt
 80021e6:      	addgt	r0, #0x1
 80021e8:      	ldrsb.w	r12, [r2, #0x7]
 80021ec:      	cmn.w	r6, #0x41
 80021f0:      	it	gt
 80021f2:      	addgt	r0, #0x1
 80021f4:      	ldrsb.w	r6, [r2, #0x8]
 80021f8:      	cmn.w	r12, #0x41
 80021fc:      	it	gt
 80021fe:      	addgt	r0, #0x1
 8002200:      	ldrsb.w	r12, [r2, #0x9]
 8002204:      	cmn.w	r6, #0x41
 8002208:      	it	gt
 800220a:      	addgt	r0, #0x1
 800220c:      	ldrsb.w	r6, [r2, #0xb]
 8002210:      	cmn.w	r12, #0x41
 8002214:      	it	gt
 8002216:      	addgt	r0, #0x1
 8002218:      	ldrsb.w	r12, [r2, #0xf]
 800221c:      	ldrsb.w	r2, [r2, #0xa]
 8002220:      	cmn.w	r2, #0x41
 8002224:      	it	gt
 8002226:      	addgt	r0, #0x1
 8002228:      	cmn.w	r6, #0x41
 800222c:      	it	gt
 800222e:      	addgt	r0, #0x1
 8002230:      	cmn.w	r5, #0x41
 8002234:      	it	gt
 8002236:      	addgt	r0, #0x1
 8002238:      	cmn.w	r3, #0x41
 800223c:      	it	gt
 800223e:      	addgt	r0, #0x1
 8002240:      	cmn.w	r11, #0x41
 8002244:      	it	gt
 8002246:      	addgt	r0, #0x1
 8002248:      	cmn.w	r12, #0x41
 800224c:      	it	gt
 800224e:      	addgt	r0, #0x1
 8002250:      	adds	r4, #0x10
 8002252:      	bne	0x800218c <<&T as core::fmt::Display>::fmt::h71f010c380c1da3e+0x27c> @ imm = #-0xca
 8002254:      	ldrsb.w	r2, [r10]
 8002258:      	cmn.w	r2, #0x41
 800225c:      	it	gt
 800225e:      	addgt	r0, #0x1
 8002260:      	ldr	r3, [sp, #0x10]
 8002262:      	cmp	r1, #0x1
 8002264:      	beq	0x8002282 <<&T as core::fmt::Display>::fmt::h71f010c380c1da3e+0x372> @ imm = #0x1a
 8002266:      	ldrsb.w	r2, [r10, #0x1]
 800226a:      	cmn.w	r2, #0x41
 800226e:      	it	gt
 8002270:      	addgt	r0, #0x1
 8002272:      	cmp	r1, #0x2
 8002274:      	beq	0x8002282 <<&T as core::fmt::Display>::fmt::h71f010c380c1da3e+0x372> @ imm = #0xa
 8002276:      	ldrsb.w	r2, [r10, #0x2]
 800227a:      	cmn.w	r2, #0x41
 800227e:      	it	gt
 8002280:      	addgt	r0, #0x1
 8002282:      	str.w	r10, [sp, #0xc]
 8002286:      	lsr.w	r10, r8, #0x2
 800228a:      	movs	r2, #0x0
 800228c:      	cbz	r3, 0x80022c2 <<&T as core::fmt::Display>::fmt::h71f010c380c1da3e+0x3b2> @ imm = #0x32
 800228e:      	bic	r6, r8, #0x3
 8002292:      	add.w	r5, r9, r6
 8002296:      	ldrsb.w	r6, [r5]
 800229a:      	cmn.w	r6, #0x41
 800229e:      	it	gt
 80022a0:      	movgt	r2, #0x1
 80022a2:      	cmp	r3, #0x1
 80022a4:      	beq	0x80022c2 <<&T as core::fmt::Display>::fmt::h71f010c380c1da3e+0x3b2> @ imm = #0x1a
 80022a6:      	ldrsb.w	r6, [r5, #0x1]
 80022aa:      	cmn.w	r6, #0x41
 80022ae:      	it	gt
 80022b0:      	addgt	r2, #0x1
 80022b2:      	cmp	r3, #0x2
 80022b4:      	beq	0x80022c2 <<&T as core::fmt::Display>::fmt::h71f010c380c1da3e+0x3b2> @ imm = #0xa
 80022b6:      	ldrsb.w	r6, [r5, #0x2]
 80022ba:      	cmn.w	r6, #0x41
 80022be:      	it	gt
 80022c0:      	addgt	r2, #0x1
 80022c2:      	add.w	lr, r2, r0
 80022c6:      	b	0x80022ee <<&T as core::fmt::Display>::fmt::h71f010c380c1da3e+0x3de> @ imm = #0x24
 80022c8:      	mov.w	r12, #0x0
 80022cc:      	uxtb16	r1, r12
 80022d0:      	uxtb16	r2, r12, ror #8
 80022d4:      	add	r1, r2
 80022d6:      	sub.w	r10, r10, r11
 80022da:      	add.w	r9, r8, r11, lsl #2
 80022de:      	ands	r0, r11, #0x3
 80022e2:      	add.w	r1, r1, r1, lsl #16
 80022e6:      	add.w	lr, lr, r1, lsr #16
 80022ea:      	bne.w	0x80025a2 <<&T as core::fmt::Display>::fmt::h71f010c380c1da3e+0x692> @ imm = #0x2b4
 80022ee:      	cmp.w	r10, #0x0
 80022f2:      	beq.w	0x800257c <<&T as core::fmt::Display>::fmt::h71f010c380c1da3e+0x66c> @ imm = #0x286
 80022f6:      	cmp.w	r10, #0xc0
 80022fa:      	mov	r11, r10
 80022fc:      	it	hs
 80022fe:      	movhs.w	r11, #0xc0
 8002302:      	mov	r8, r9
 8002304:      	cmp.w	r11, #0x4
 8002308:      	blo	0x80022c8 <<&T as core::fmt::Display>::fmt::h71f010c380c1da3e+0x3b8> @ imm = #-0x44
 800230a:      	mvn	r0, #0xf
 800230e:      	movs	r1, #0x1
 8002310:      	add.w	r0, r0, r11, lsl #2
 8002314:      	cmp	r0, #0x30
 8002316:      	add.w	r1, r1, r0, lsr #4
 800231a:      	bhs	0x800232c <<&T as core::fmt::Display>::fmt::h71f010c380c1da3e+0x41c> @ imm = #0xe
 800231c:      	mov.w	r12, #0x0
 8002320:      	mov	r6, r8
 8002322:      	ands	r0, r1, #0x3
 8002326:      	bne.w	0x8002490 <<&T as core::fmt::Display>::fmt::h71f010c380c1da3e+0x580> @ imm = #0x166
 800232a:      	b	0x80022cc <<&T as core::fmt::Display>::fmt::h71f010c380c1da3e+0x3bc> @ imm = #-0x62
 800232c:      	bic	r5, r1, #0x3
 8002330:      	mov.w	r12, #0x0
 8002334:      	mov	r6, r8
 8002336:      	str	r1, [sp, #0x10]
 8002338:      	ldm.w	r6, {r0, r2, r4}
 800233c:      	subs	r5, #0x4
 800233e:      	ldr	r3, [r6, #0xc]
 8002340:      	mvn.w	r9, r0
 8002344:      	lsr.w	r1, r9, #0x7
 8002348:      	orr.w	r0, r1, r0, lsr #6
 800234c:      	mvn.w	r1, r2
 8002350:      	bic	r0, r0, #0xfefefefe
 8002354:      	lsr.w	r1, r1, #0x7
 8002358:      	add	r0, r12
 800235a:      	orr.w	r1, r1, r2, lsr #6
 800235e:      	ldr.w	r9, [r6, #0x38]
 8002362:      	bic	r1, r1, #0xfefefefe
 8002366:      	ldr.w	r12, [r6, #0x3c]
 800236a:      	add	r1, r0
 800236c:      	mvn.w	r0, r4
 8002370:      	lsr.w	r2, r0, #0x7
 8002374:      	ldr	r0, [r6, #0x14]
 8002376:      	orr.w	r2, r2, r4, lsr #6
 800237a:      	ldr	r4, [r6, #0x10]
 800237c:      	bic	r2, r2, #0xfefefefe
 8002380:      	add	r1, r2
 8002382:      	mvn.w	r2, r3
 8002386:      	lsr.w	r2, r2, #0x7
 800238a:      	orr.w	r2, r2, r3, lsr #6
 800238e:      	ldr	r3, [r6, #0x18]
 8002390:      	bic	r2, r2, #0xfefefefe
 8002394:      	add	r1, r2
 8002396:      	mvn.w	r2, r4
 800239a:      	lsr.w	r2, r2, #0x7
 800239e:      	orr.w	r2, r2, r4, lsr #6
 80023a2:      	ldr	r4, [r6, #0x1c]
 80023a4:      	bic	r2, r2, #0xfefefefe
 80023a8:      	add	r1, r2
 80023aa:      	mvn.w	r2, r0
 80023ae:      	lsr.w	r2, r2, #0x7
 80023b2:      	orr.w	r0, r2, r0, lsr #6
 80023b6:      	bic	r0, r0, #0xfefefefe
 80023ba:      	ldr	r2, [r6, #0x20]
 80023bc:      	add	r0, r1
 80023be:      	mvn.w	r1, r3
 80023c2:      	lsr.w	r1, r1, #0x7
 80023c6:      	orr.w	r1, r1, r3, lsr #6
 80023ca:      	ldr	r3, [r6, #0x24]
 80023cc:      	bic	r1, r1, #0xfefefefe
 80023d0:      	add	r0, r1
 80023d2:      	mvn.w	r1, r4
 80023d6:      	lsr.w	r1, r1, #0x7
 80023da:      	orr.w	r1, r1, r4, lsr #6
 80023de:      	ldr	r4, [r6, #0x28]
 80023e0:      	bic	r1, r1, #0xfefefefe
 80023e4:      	add	r0, r1
 80023e6:      	mvn.w	r1, r2
 80023ea:      	lsr.w	r1, r1, #0x7
 80023ee:      	orr.w	r1, r1, r2, lsr #6
 80023f2:      	ldr	r2, [r6, #0x2c]
 80023f4:      	bic	r1, r1, #0xfefefefe
 80023f8:      	add	r0, r1
 80023fa:      	mvn.w	r1, r3
 80023fe:      	lsr.w	r1, r1, #0x7
 8002402:      	orr.w	r1, r1, r3, lsr #6
 8002406:      	ldr	r3, [r6, #0x30]
 8002408:      	bic	r1, r1, #0xfefefefe
 800240c:      	add	r0, r1
 800240e:      	mvn.w	r1, r4
 8002412:      	lsr.w	r1, r1, #0x7
 8002416:      	orr.w	r1, r1, r4, lsr #6
 800241a:      	ldr	r4, [r6, #0x34]
 800241c:      	bic	r1, r1, #0xfefefefe
 8002420:      	add.w	r6, r6, #0x40
 8002424:      	add	r0, r1
 8002426:      	mvn.w	r1, r2
 800242a:      	lsr.w	r1, r1, #0x7
 800242e:      	orr.w	r1, r1, r2, lsr #6
 8002432:      	bic	r1, r1, #0xfefefefe
 8002436:      	add	r0, r1
 8002438:      	mvn.w	r1, r3
 800243c:      	lsr.w	r1, r1, #0x7
 8002440:      	orr.w	r1, r1, r3, lsr #6
 8002444:      	bic	r1, r1, #0xfefefefe
 8002448:      	add	r0, r1
 800244a:      	mvn.w	r1, r4
 800244e:      	lsr.w	r1, r1, #0x7
 8002452:      	orr.w	r1, r1, r4, lsr #6
 8002456:      	bic	r1, r1, #0xfefefefe
 800245a:      	add	r0, r1
 800245c:      	mvn.w	r1, r9
 8002460:      	lsr.w	r1, r1, #0x7
 8002464:      	orr.w	r1, r1, r9, lsr #6
 8002468:      	bic	r1, r1, #0xfefefefe
 800246c:      	add	r0, r1
 800246e:      	mvn.w	r1, r12
 8002472:      	lsr.w	r1, r1, #0x7
 8002476:      	orr.w	r1, r1, r12, lsr #6
 800247a:      	bic	r1, r1, #0xfefefefe
 800247e:      	add.w	r12, r1, r0
 8002482:      	bne.w	0x8002338 <<&T as core::fmt::Display>::fmt::h71f010c380c1da3e+0x428> @ imm = #-0x14e
 8002486:      	ldr	r1, [sp, #0x10]
 8002488:      	ands	r0, r1, #0x3
 800248c:      	beq.w	0x80022cc <<&T as core::fmt::Display>::fmt::h71f010c380c1da3e+0x3bc> @ imm = #-0x1c4
 8002490:      	ldm.w	r6, {r1, r2, r3, r4}
 8002494:      	cmp	r0, #0x1
 8002496:      	mvn.w	r5, r1
 800249a:      	lsr.w	r5, r5, #0x7
 800249e:      	orr.w	r1, r5, r1, lsr #6
 80024a2:      	mvn.w	r5, r2
 80024a6:      	bic	r1, r1, #0xfefefefe
 80024aa:      	lsr.w	r5, r5, #0x7
 80024ae:      	orr.w	r2, r5, r2, lsr #6
 80024b2:      	add	r1, r12
 80024b4:      	bic	r2, r2, #0xfefefefe
 80024b8:      	add	r1, r2
 80024ba:      	mvn.w	r2, r3
 80024be:      	lsr.w	r2, r2, #0x7
 80024c2:      	orr.w	r2, r2, r3, lsr #6
 80024c6:      	bic	r2, r2, #0xfefefefe
 80024ca:      	add	r1, r2
 80024cc:      	mvn.w	r2, r4
 80024d0:      	lsr.w	r2, r2, #0x7
 80024d4:      	orr.w	r2, r2, r4, lsr #6
 80024d8:      	bic	r2, r2, #0xfefefefe
 80024dc:      	add.w	r12, r2, r1
 80024e0:      	beq.w	0x80022cc <<&T as core::fmt::Display>::fmt::h71f010c380c1da3e+0x3bc> @ imm = #-0x218
 80024e4:      	add.w	r4, r6, #0x10
 80024e8:      	cmp	r0, #0x2
 80024ea:      	ldm	r4, {r1, r2, r3, r4}
 80024ec:      	mvn.w	r5, r1
 80024f0:      	lsr.w	r5, r5, #0x7
 80024f4:      	orr.w	r1, r5, r1, lsr #6
 80024f8:      	mvn.w	r5, r2
 80024fc:      	bic	r1, r1, #0xfefefefe
 8002500:      	lsr.w	r5, r5, #0x7
 8002504:      	orr.w	r2, r5, r2, lsr #6
 8002508:      	add	r1, r12
 800250a:      	bic	r2, r2, #0xfefefefe
 800250e:      	add	r1, r2
 8002510:      	mvn.w	r2, r3
 8002514:      	lsr.w	r2, r2, #0x7
 8002518:      	orr.w	r2, r2, r3, lsr #6
 800251c:      	bic	r2, r2, #0xfefefefe
 8002520:      	add	r1, r2
 8002522:      	mvn.w	r2, r4
 8002526:      	lsr.w	r2, r2, #0x7
 800252a:      	orr.w	r2, r2, r4, lsr #6
 800252e:      	bic	r2, r2, #0xfefefefe
 8002532:      	add.w	r12, r2, r1
 8002536:      	beq.w	0x80022cc <<&T as core::fmt::Display>::fmt::h71f010c380c1da3e+0x3bc> @ imm = #-0x26e
 800253a:      	add.w	r3, r6, #0x20
 800253e:      	ldm	r3, {r0, r1, r2, r3}
 8002540:      	mvns	r6, r1
 8002542:      	lsrs	r6, r6, #0x7
 8002544:      	orr.w	r1, r6, r1, lsr #6
 8002548:      	mvns	r4, r0
 800254a:      	bic	r1, r1, #0xfefefefe
 800254e:      	lsrs	r4, r4, #0x7
 8002550:      	orr.w	r0, r4, r0, lsr #6
 8002554:      	bic	r0, r0, #0xfefefefe
 8002558:      	add	r0, r12
 800255a:      	add	r0, r1
 800255c:      	mvns	r1, r2
 800255e:      	lsrs	r1, r1, #0x7
 8002560:      	orr.w	r1, r1, r2, lsr #6
 8002564:      	bic	r1, r1, #0xfefefefe
 8002568:      	add	r0, r1
 800256a:      	mvns	r1, r3
 800256c:      	lsrs	r1, r1, #0x7
 800256e:      	orr.w	r1, r1, r3, lsr #6
 8002572:      	bic	r1, r1, #0xfefefefe
 8002576:      	add.w	r12, r1, r0
 800257a:      	b	0x80022cc <<&T as core::fmt::Display>::fmt::h71f010c380c1da3e+0x3bc> @ imm = #-0x2b2
 800257c:      	ldrd	r8, r10, [sp, #8]
 8002580:      	ldrd	r4, r1, [sp]
 8002584:      	cmp	r4, lr
 8002586:      	bls	0x800260a <<&T as core::fmt::Display>::fmt::h71f010c380c1da3e+0x6fa> @ imm = #0x80
 8002588:      	ldrb.w	r2, [r1, #0x20]
 800258c:      	sub.w	r9, r4, lr
 8002590:      	movs	r0, #0x0
 8002592:      	tbb	[pc, r2]

08002596 <$d.27>:
 8002596: 4b 02 45 4b  	.word	0x4b45024b

0800259a <$t.28>:
 800259a:      	mov	r0, r9
 800259c:      	mov.w	r9, #0x0
 80025a0:      	b	0x800262c <<&T as core::fmt::Display>::fmt::h71f010c380c1da3e+0x71c> @ imm = #0x88
 80025a2:      	and	r3, r11, #0xfc
 80025a6:      	ldr.w	r10, [sp, #0xc]
 80025aa:      	ldr	r4, [sp]
 80025ac:      	cmp	r0, #0x1
 80025ae:      	ldr.w	r1, [r8, r3, lsl #2]
 80025b2:      	mvn.w	r2, r1
 80025b6:      	lsr.w	r2, r2, #0x7
 80025ba:      	orr.w	r1, r2, r1, lsr #6
 80025be:      	bic	r2, r1, #0xfefefefe
 80025c2:      	beq	0x80025f0 <<&T as core::fmt::Display>::fmt::h71f010c380c1da3e+0x6e0> @ imm = #0x2a
 80025c4:      	add.w	r3, r8, r3, lsl #2
 80025c8:      	cmp	r0, #0x2
 80025ca:      	ldr	r1, [r3, #0x4]
 80025cc:      	mvn.w	r6, r1
 80025d0:      	lsr.w	r6, r6, #0x7
 80025d4:      	orr.w	r1, r6, r1, lsr #6
 80025d8:      	bic	r1, r1, #0xfefefefe
 80025dc:      	add	r2, r1
 80025de:      	beq	0x80025f0 <<&T as core::fmt::Display>::fmt::h71f010c380c1da3e+0x6e0> @ imm = #0xe
 80025e0:      	ldr	r0, [r3, #0x8]
 80025e2:      	mvns	r1, r0
 80025e4:      	lsrs	r1, r1, #0x7
 80025e6:      	orr.w	r0, r1, r0, lsr #6
 80025ea:      	bic	r0, r0, #0xfefefefe
 80025ee:      	add	r2, r0
 80025f0:      	uxtb16	r0, r2
 80025f4:      	uxtb16	r1, r2, ror #8
 80025f8:      	add	r0, r1
 80025fa:      	ldrd	r1, r8, [sp, #4]
 80025fe:      	add.w	r0, r0, r0, lsl #16
 8002602:      	add.w	lr, lr, r0, lsr #16
 8002606:      	cmp	r4, lr
 8002608:      	bhi	0x8002588 <<&T as core::fmt::Display>::fmt::h71f010c380c1da3e+0x678> @ imm = #-0x84
 800260a:      	ldrd	r0, r1, [r1, #20]
 800260e:      	mov	r2, r8
 8002610:      	ldr	r3, [r1, #0xc]
 8002612:      	mov	r1, r10
 8002614:      	add	sp, #0x14
 8002616:      	pop.w	{r8, r9, r10, r11}
 800261a:      	pop.w	{r4, r5, r6, r7, lr}
 800261e:      	bx	r3
 8002620:      	add.w	r2, r9, #0x1
 8002624:      	lsr.w	r0, r9, #0x1
 8002628:      	lsr.w	r9, r2, #0x1
 800262c:      	ldrd	r11, r4, [r1, #16]
 8002630:      	adds	r6, r0, #0x1
 8002632:      	ldr	r5, [r1, #0x18]
 8002634:      	subs	r6, #0x1
 8002636:      	beq	0x8002646 <<&T as core::fmt::Display>::fmt::h71f010c380c1da3e+0x736> @ imm = #0xc
 8002638:      	ldr	r2, [r5, #0x10]
 800263a:      	mov	r0, r4
 800263c:      	mov	r1, r11
 800263e:      	blx	r2
 8002640:      	cmp	r0, #0x0
 8002642:      	beq	0x8002634 <<&T as core::fmt::Display>::fmt::h71f010c380c1da3e+0x724> @ imm = #-0x12
 8002644:      	b	0x8002652 <<&T as core::fmt::Display>::fmt::h71f010c380c1da3e+0x742> @ imm = #0xa
 8002646:      	ldr	r3, [r5, #0xc]
 8002648:      	mov	r0, r4
 800264a:      	mov	r1, r10
 800264c:      	mov	r2, r8
 800264e:      	blx	r3
 8002650:      	cbz	r0, 0x800265c <<&T as core::fmt::Display>::fmt::h71f010c380c1da3e+0x74c> @ imm = #0x8
 8002652:      	movs	r0, #0x1
 8002654:      	add	sp, #0x14
 8002656:      	pop.w	{r8, r9, r10, r11}
 800265a:      	pop	{r4, r5, r6, r7, pc}
 800265c:      	movs	r6, #0x0
 800265e:      	cmp	r9, r6
 8002660:      	beq	0x8002674 <<&T as core::fmt::Display>::fmt::h71f010c380c1da3e+0x764> @ imm = #0x10
 8002662:      	ldr	r2, [r5, #0x10]
 8002664:      	mov	r0, r4
 8002666:      	mov	r1, r11
 8002668:      	blx	r2
 800266a:      	adds	r6, #0x1
 800266c:      	cmp	r0, #0x0
 800266e:      	beq	0x800265e <<&T as core::fmt::Display>::fmt::h71f010c380c1da3e+0x74e> @ imm = #-0x14
 8002670:      	subs	r1, r6, #0x1
 8002672:      	b	0x8002676 <<&T as core::fmt::Display>::fmt::h71f010c380c1da3e+0x766> @ imm = #0x0
 8002674:      	mov	r1, r9
 8002676:      	movs	r0, #0x0
 8002678:      	cmp	r1, r9
 800267a:      	it	lo
 800267c:      	movlo	r0, #0x1
 800267e:      	add	sp, #0x14
 8002680:      	pop.w	{r8, r9, r10, r11}
 8002684:      	pop	{r4, r5, r6, r7, pc}

08002686 <core::fmt::write::h095b5b1af45f5b40>:
 8002686:      	push	{r4, r5, r6, r7, lr}
 8002688:      	add	r7, sp, #0xc
 800268a:      	push.w	{r8, r9, r10, r11}
 800268e:      	sub	sp, #0x34
 8002690:      	movs	r3, #0x3
 8002692:      	ldr	r6, [r2, #0x10]
 8002694:      	strb.w	r3, [sp, #0x30]
 8002698:      	movs	r3, #0x20
 800269a:      	str	r3, [sp, #0x20]
 800269c:      	movs	r3, #0x0
 800269e:      	cmp	r6, #0x0
 80026a0:      	strd	r1, r3, [sp, #40]
 80026a4:      	str	r0, [sp, #0x24]
 80026a6:      	str	r3, [sp, #0x18]
 80026a8:      	str	r3, [sp, #0x10]
 80026aa:      	beq	0x800278c <core::fmt::write::h095b5b1af45f5b40+0x106> @ imm = #0xde
 80026ac:      	ldr	r0, [r2, #0x14]
 80026ae:      	cmp	r0, #0x0
 80026b0:      	beq.w	0x80027d8 <core::fmt::write::h095b5b1af45f5b40+0x152> @ imm = #0x124
 80026b4:      	ldr.w	r10, [r2]
 80026b8:      	lsls	r1, r0, #0x5
 80026ba:      	ldr.w	r11, [r2, #0x8]
 80026be:      	subs	r0, #0x1
 80026c0:      	bic	r0, r0, #0xf8000000
 80026c4:      	mov.w	r8, #0x0
 80026c8:      	mov.w	r9, #0x0
 80026cc:      	adds	r0, #0x1
 80026ce:      	str	r2, [sp, #0x8]
 80026d0:      	str	r1, [sp, #0xc]
 80026d2:      	str	r0, [sp, #0x4]
 80026d4:      	add.w	r0, r10, r9
 80026d8:      	ldr	r2, [r0, #0x4]
 80026da:      	cbz	r2, 0x80026ee <core::fmt::write::h095b5b1af45f5b40+0x68> @ imm = #0x10
 80026dc:      	ldrd	r0, r3, [sp, #36]
 80026e0:      	ldr.w	r1, [r10, r9]
 80026e4:      	ldr	r3, [r3, #0xc]
 80026e6:      	blx	r3
 80026e8:      	cmp	r0, #0x0
 80026ea:      	bne.w	0x80027fa <core::fmt::write::h095b5b1af45f5b40+0x174> @ imm = #0x10c
 80026ee:      	add.w	r0, r6, r8
 80026f2:      	ldr	r3, [r0, #0x10]
 80026f4:      	add.w	r0, r6, r9, lsl #2
 80026f8:      	ldrd	r2, r1, [r0, #8]
 80026fc:      	ldrb	r5, [r0, #0x1c]
 80026fe:      	ldr	r4, [r0, #0x18]
 8002700:      	str	r3, [sp, #0x20]
 8002702:      	strb.w	r5, [sp, #0x30]
 8002706:      	str	r4, [sp, #0x2c]
 8002708:      	cbz	r2, 0x800272a <core::fmt::write::h095b5b1af45f5b40+0xa4> @ imm = #0x1e
 800270a:      	cmp	r2, #0x1
 800270c:      	bne	0x8002720 <core::fmt::write::h095b5b1af45f5b40+0x9a> @ imm = #0x10
 800270e:      	add.w	r2, r11, r1, lsl #3
 8002712:      	movw	r3, #0x1b45
 8002716:      	movt	r3, #0x800
 800271a:      	ldr	r2, [r2, #0x4]
 800271c:      	cmp	r2, r3
 800271e:      	beq	0x8002724 <core::fmt::write::h095b5b1af45f5b40+0x9e> @ imm = #0x2
 8002720:      	movs	r2, #0x0
 8002722:      	b	0x800272c <core::fmt::write::h095b5b1af45f5b40+0xa6> @ imm = #0x6
 8002724:      	ldr.w	r1, [r11, r1, lsl #3]
 8002728:      	ldr	r1, [r1]
 800272a:      	movs	r2, #0x1
 800272c:      	ldr.w	r3, [r6, r8]
 8002730:      	strd	r2, r1, [sp, #16]
 8002734:      	ldr	r1, [r0, #0x4]
 8002736:      	cbz	r3, 0x8002758 <core::fmt::write::h095b5b1af45f5b40+0xd2> @ imm = #0x1e
 8002738:      	cmp	r3, #0x1
 800273a:      	bne	0x800274e <core::fmt::write::h095b5b1af45f5b40+0xc8> @ imm = #0x10
 800273c:      	add.w	r2, r11, r1, lsl #3
 8002740:      	movw	r3, #0x1b45
 8002744:      	movt	r3, #0x800
 8002748:      	ldr	r2, [r2, #0x4]
 800274a:      	cmp	r2, r3
 800274c:      	beq	0x8002752 <core::fmt::write::h095b5b1af45f5b40+0xcc> @ imm = #0x2
 800274e:      	movs	r2, #0x0
 8002750:      	b	0x800275a <core::fmt::write::h095b5b1af45f5b40+0xd4> @ imm = #0x6
 8002752:      	ldr.w	r1, [r11, r1, lsl #3]
 8002756:      	ldr	r1, [r1]
 8002758:      	movs	r2, #0x1
 800275a:      	ldr	r3, [r0, #0x14]
 800275c:      	str	r1, [sp, #0x1c]
 800275e:      	add.w	r1, r11, r3, lsl #3
 8002762:      	ldr.w	r0, [r11, r3, lsl #3]
 8002766:      	ldr	r3, [r1, #0x4]
 8002768:      	add	r1, sp, #0x10
 800276a:      	str	r2, [sp, #0x18]
 800276c:      	blx	r3
 800276e:      	cmp	r0, #0x0
 8002770:      	bne	0x80027fa <core::fmt::write::h095b5b1af45f5b40+0x174> @ imm = #0x86
 8002772:      	ldr	r0, [sp, #0xc]
 8002774:      	add.w	r8, r8, #0x20
 8002778:      	add.w	r9, r9, #0x8
 800277c:      	cmp	r0, r8
 800277e:      	bne	0x80026d4 <core::fmt::write::h095b5b1af45f5b40+0x4e> @ imm = #-0xae
 8002780:      	ldrd	r10, r2, [sp, #4]
 8002784:      	ldr	r0, [r2, #0x4]
 8002786:      	cmp	r10, r0
 8002788:      	blo	0x80027e2 <core::fmt::write::h095b5b1af45f5b40+0x15c> @ imm = #0x56
 800278a:      	b	0x8002804 <core::fmt::write::h095b5b1af45f5b40+0x17e> @ imm = #0x76
 800278c:      	ldr	r0, [r2, #0xc]
 800278e:      	cbz	r0, 0x80027d8 <core::fmt::write::h095b5b1af45f5b40+0x152> @ imm = #0x46
 8002790:      	ldr	r4, [r2, #0x8]
 8002792:      	add.w	r8, sp, #0x10
 8002796:      	ldr	r1, [r2]
 8002798:      	mov	r9, r2
 800279a:      	add.w	r6, r4, r0, lsl #3
 800279e:      	subs	r0, #0x1
 80027a0:      	bic	r0, r0, #0xe0000000
 80027a4:      	adds	r5, r1, #0x4
 80027a6:      	add.w	r10, r0, #0x1
 80027aa:      	ldr	r2, [r5]
 80027ac:      	cbz	r2, 0x80027bc <core::fmt::write::h095b5b1af45f5b40+0x136> @ imm = #0xc
 80027ae:      	ldrd	r0, r3, [sp, #36]
 80027b2:      	ldr	r1, [r5, #-4]
 80027b6:      	ldr	r3, [r3, #0xc]
 80027b8:      	blx	r3
 80027ba:      	cbnz	r0, 0x80027fa <core::fmt::write::h095b5b1af45f5b40+0x174> @ imm = #0x3c
 80027bc:      	ldrd	r0, r2, [r4]
 80027c0:      	mov	r1, r8
 80027c2:      	blx	r2
 80027c4:      	cbnz	r0, 0x80027fa <core::fmt::write::h095b5b1af45f5b40+0x174> @ imm = #0x32
 80027c6:      	adds	r4, #0x8
 80027c8:      	adds	r5, #0x8
 80027ca:      	cmp	r4, r6
 80027cc:      	bne	0x80027aa <core::fmt::write::h095b5b1af45f5b40+0x124> @ imm = #-0x26
 80027ce:      	mov	r2, r9
 80027d0:      	ldr	r0, [r2, #0x4]
 80027d2:      	cmp	r10, r0
 80027d4:      	blo	0x80027e2 <core::fmt::write::h095b5b1af45f5b40+0x15c> @ imm = #0xa
 80027d6:      	b	0x8002804 <core::fmt::write::h095b5b1af45f5b40+0x17e> @ imm = #0x2a
 80027d8:      	mov.w	r10, #0x0
 80027dc:      	ldr	r0, [r2, #0x4]
 80027de:      	cmp	r10, r0
 80027e0:      	bhs	0x8002804 <core::fmt::write::h095b5b1af45f5b40+0x17e> @ imm = #0x20
 80027e2:      	ldr	r2, [r2]
 80027e4:      	mov	r6, r10
 80027e6:      	ldrd	r0, r1, [sp, #36]
 80027ea:      	ldr	r3, [r1, #0xc]
 80027ec:      	ldr.w	r1, [r2, r10, lsl #3]
 80027f0:      	add.w	r2, r2, r10, lsl #3
 80027f4:      	ldr	r2, [r2, #0x4]
 80027f6:      	blx	r3
 80027f8:      	cbz	r0, 0x8002804 <core::fmt::write::h095b5b1af45f5b40+0x17e> @ imm = #0x8
 80027fa:      	movs	r0, #0x1
 80027fc:      	add	sp, #0x34
 80027fe:      	pop.w	{r8, r9, r10, r11}
 8002802:      	pop	{r4, r5, r6, r7, pc}
 8002804:      	movs	r0, #0x0
 8002806:      	add	sp, #0x34
 8002808:      	pop.w	{r8, r9, r10, r11}
 800280c:      	pop	{r4, r5, r6, r7, pc}

0800280e <core::option::expect_failed::h6508b63e1fb960e8>:
 800280e:      	push	{r7, lr}
 8002810:      	mov	r7, sp
 8002812:      	sub	sp, #0x28
 8002814:      	movs	r0, #0x28
 8002816:      	movw	r1, #0x54dc
 800281a:      	str	r0, [sp, #0x4]
 800281c:      	movw	r0, #0x5980
 8002820:      	movt	r0, #0x800
 8002824:      	movt	r1, #0x800
 8002828:      	str	r0, [sp]
 800282a:      	movs	r0, #0x0
 800282c:      	str	r0, [sp, #0x18]
 800282e:      	movs	r0, #0x1
 8002830:      	str	r0, [sp, #0xc]
 8002832:      	str	r0, [sp, #0x14]
 8002834:      	add	r0, sp, #0x20
 8002836:      	str	r0, [sp, #0x10]
 8002838:      	movw	r0, #0x1f11
 800283c:      	movt	r0, #0x800
 8002840:      	str	r1, [sp, #0x8]
 8002842:      	str	r0, [sp, #0x24]
 8002844:      	mov	r0, sp
 8002846:      	movw	r1, #0x5a18
 800284a:      	str	r0, [sp, #0x20]
 800284c:      	add	r0, sp, #0x8
 800284e:      	movt	r1, #0x800
 8002852:      	bl	0x8001b48 <core::panicking::panic_fmt::h9388f4d1c9b70388> @ imm = #-0xd0e
 8002856:      	trap

08002858 <core::panicking::panic_explicit::h9826f411f8a42d19>:
 8002858:      	push	{r7, lr}
 800285a:      	mov	r7, sp
 800285c:      	sub	sp, #0x20
 800285e:      	movs	r0, #0x0
 8002860:      	movw	r1, #0x54dc
 8002864:      	str	r0, [sp, #0x10]
 8002866:      	movs	r0, #0x1
 8002868:      	str	r0, [sp, #0x4]
 800286a:      	movt	r1, #0x800
 800286e:      	str	r0, [sp, #0xc]
 8002870:      	add	r0, sp, #0x18
 8002872:      	str	r0, [sp, #0x8]
 8002874:      	movw	r0, #0x1f11
 8002878:      	movt	r0, #0x800
 800287c:      	str	r1, [sp]
 800287e:      	str	r0, [sp, #0x1c]
 8002880:      	movw	r0, #0x5350
 8002884:      	movw	r1, #0x5548
 8002888:      	movt	r0, #0x800
 800288c:      	str	r0, [sp, #0x18]
 800288e:      	movt	r1, #0x800
 8002892:      	mov	r0, sp
 8002894:      	bl	0x8001b48 <core::panicking::panic_fmt::h9388f4d1c9b70388> @ imm = #-0xd50
 8002898:      	trap

0800289a <core::fmt::num::imp::<impl core::fmt::Display for u64>::fmt::h3c4afa0384a046d5>:
 800289a:      	push	{r4, r5, r6, r7, lr}
 800289c:      	add	r7, sp, #0xc
 800289e:      	push.w	{r8, r9, r10, r11}
 80028a2:      	sub	sp, #0x2c
 80028a4:      	ldrd	r5, r6, [r0]
 80028a8:      	movw	r0, #0x2710
 80028ac:      	movw	r8, #0x539c
 80028b0:      	mov	r4, r1
 80028b2:      	subs	r0, r5, r0
 80028b4:      	movw	r12, #0xff9c
 80028b8:      	sbcs	r0, r6, #0x0
 80028bc:      	movt	r8, #0x800
 80028c0:      	blo	0x8002948 <core::fmt::num::imp::<impl core::fmt::Display for u64>::fmt::h3c4afa0384a046d5+0xae> @ imm = #0x84
 80028c2:      	movw	r10, #0xe0ff
 80028c6:      	sub.w	r9, r7, #0x43
 80028ca:      	movt	r10, #0x5f5
 80028ce:      	movs	r2, #0x0
 80028d0:      	str	r4, [sp]
 80028d2:      	mov	r11, r2
 80028d4:      	mov	r0, r5
 80028d6:      	mov	r1, r6
 80028d8:      	movw	r2, #0x2710
 80028dc:      	movs	r3, #0x0
 80028de:      	bl	0x8004f42 <__aeabi_uldivmod> @ imm = #0x2660
 80028e2:      	movw	r2, #0xd8f0
 80028e6:      	movw	r4, #0x147b
 80028ea:      	mla	r2, r0, r2, r5
 80028ee:      	movw	r12, #0xff9c
 80028f2:      	uxth	r3, r2
 80028f4:      	lsrs	r3, r3, #0x2
 80028f6:      	muls	r3, r4, r3
 80028f8:      	add.w	r4, r9, r11
 80028fc:      	lsrs	r3, r3, #0x11
 80028fe:      	mla	r2, r3, r12, r2
 8002902:      	ldrh.w	r3, [r8, r3, lsl #1]
 8002906:      	strh.w	r3, [r4, #0x23]
 800290a:      	subs.w	r3, r10, r5
 800290e:      	mov.w	r3, #0x0
 8002912:      	mov	r5, r0
 8002914:      	sbcs	r3, r6
 8002916:      	mov	r6, r1
 8002918:      	uxth	r2, r2
 800291a:      	ldrh.w	r2, [r8, r2, lsl #1]
 800291e:      	strh.w	r2, [r4, #0x25]
 8002922:      	sub.w	r2, r11, #0x4
 8002926:      	blo	0x80028d2 <core::fmt::num::imp::<impl core::fmt::Display for u64>::fmt::h3c4afa0384a046d5+0x38> @ imm = #-0x58
 8002928:      	ldr	r4, [sp]
 800292a:      	add.w	r1, r11, #0x23
 800292e:      	mov	r5, r0
 8002930:      	cmp	r5, #0x63
 8002932:      	bhi	0x800294e <core::fmt::num::imp::<impl core::fmt::Display for u64>::fmt::h3c4afa0384a046d5+0xb4> @ imm = #0x18
 8002934:      	mov	r0, r5
 8002936:      	cmp	r0, #0xa
 8002938:      	blo	0x8002970 <core::fmt::num::imp::<impl core::fmt::Display for u64>::fmt::h3c4afa0384a046d5+0xd6> @ imm = #0x34
 800293a:      	subs	r1, #0x2
 800293c:      	ldrh.w	r0, [r8, r0, lsl #1]
 8002940:      	sub.w	r2, r7, #0x43
 8002944:      	strh	r0, [r2, r1]
 8002946:      	b	0x800297a <core::fmt::num::imp::<impl core::fmt::Display for u64>::fmt::h3c4afa0384a046d5+0xe0> @ imm = #0x30
 8002948:      	movs	r1, #0x27
 800294a:      	cmp	r5, #0x63
 800294c:      	bls	0x8002934 <core::fmt::num::imp::<impl core::fmt::Display for u64>::fmt::h3c4afa0384a046d5+0x9a> @ imm = #-0x1c
 800294e:      	uxth	r0, r5
 8002950:      	movw	r2, #0x147b
 8002954:      	lsrs	r0, r0, #0x2
 8002956:      	subs	r1, #0x2
 8002958:      	muls	r0, r2, r0
 800295a:      	sub.w	r3, r7, #0x43
 800295e:      	lsrs	r0, r0, #0x11
 8002960:      	mla	r2, r0, r12, r5
 8002964:      	uxth	r2, r2
 8002966:      	ldrh.w	r2, [r8, r2, lsl #1]
 800296a:      	strh	r2, [r3, r1]
 800296c:      	cmp	r0, #0xa
 800296e:      	bhs	0x800293a <core::fmt::num::imp::<impl core::fmt::Display for u64>::fmt::h3c4afa0384a046d5+0xa0> @ imm = #-0x38
 8002970:      	subs	r1, #0x1
 8002972:      	sub.w	r2, r7, #0x43
 8002976:      	adds	r0, #0x30
 8002978:      	strb	r0, [r2, r1]
 800297a:      	sub.w	r0, r7, #0x43
 800297e:      	rsb.w	r3, r1, #0x27
 8002982:      	adds	r2, r0, r1
 8002984:      	mov	r0, r4
 8002986:      	movs	r1, #0x1
 8002988:      	bl	0x8001d0c <core::fmt::Formatter::pad_integral::hba22464f485613a2> @ imm = #-0xc80
 800298c:      	add	sp, #0x2c
 800298e:      	pop.w	{r8, r9, r10, r11}
 8002992:      	pop	{r4, r5, r6, r7, pc}

08002994 <core::fmt::num::imp::<impl core::fmt::Display for i32>::fmt::hc2fd3e910bd84eef>:
 8002994:      	push	{r4, r5, r6, r7, lr}
 8002996:      	add	r7, sp, #0xc
 8002998:      	push.w	{r8, r9, r10, r11}
 800299c:      	sub	sp, #0x34
 800299e:      	ldr	r4, [r0]
 80029a0:      	mov	r12, r1
 80029a2:      	movw	r1, #0x539c
 80029a6:      	movw	r6, #0xff9c
 80029aa:      	cmp	r4, #0x0
 80029ac:      	movw	r0, #0x2710
 80029b0:      	mov	r5, r4
 80029b2:      	movt	r1, #0x800
 80029b6:      	it	mi
 80029b8:      	rsbmi	r5, r4, #0
 80029ba:      	cmp	r5, r0
 80029bc:      	blo	0x8002a46 <core::fmt::num::imp::<impl core::fmt::Display for i32>::fmt::hc2fd3e910bd84eef+0xb2> @ imm = #0x86
 80029be:      	movw	r8, #0xe0ff
 80029c2:      	sub.w	lr, r7, #0x43
 80029c6:      	movs	r0, #0x0
 80029c8:      	movw	r10, #0xd8f0
 80029cc:      	movw	r11, #0x147b
 80029d0:      	movw	r9, #0xff9c
 80029d4:      	movt	r8, #0x5f5
 80029d8:      	strd	r4, r12, [sp, #4]
 80029dc:      	movw	r2, #0x1759
 80029e0:      	add.w	r4, lr, r0
 80029e4:      	movt	r2, #0xd1b7
 80029e8:      	subs	r0, #0x4
 80029ea:      	umull	r2, r6, r5, r2
 80029ee:      	cmp	r5, r8
 80029f0:      	lsr.w	r2, r6, #0xd
 80029f4:      	mla	r6, r2, r10, r5
 80029f8:      	mov	r5, r2
 80029fa:      	uxth.w	r12, r6
 80029fe:      	lsr.w	r3, r12, #0x2
 8002a02:      	mul	r3, r3, r11
 8002a06:      	lsr.w	r3, r3, #0x11
 8002a0a:      	mla	r6, r3, r9, r6
 8002a0e:      	ldrh.w	r3, [r1, r3, lsl #1]
 8002a12:      	strh.w	r3, [r4, #0x23]
 8002a16:      	uxth	r6, r6
 8002a18:      	ldrh.w	r6, [r1, r6, lsl #1]
 8002a1c:      	strh.w	r6, [r4, #0x25]
 8002a20:      	bhi	0x80029dc <core::fmt::num::imp::<impl core::fmt::Display for i32>::fmt::hc2fd3e910bd84eef+0x48> @ imm = #-0x48
 8002a22:      	ldrd	r4, r12, [sp, #4]
 8002a26:      	adds	r0, #0x27
 8002a28:      	mov	r5, r2
 8002a2a:      	movw	r6, #0xff9c
 8002a2e:      	cmp	r5, #0x63
 8002a30:      	bhi	0x8002a4c <core::fmt::num::imp::<impl core::fmt::Display for i32>::fmt::hc2fd3e910bd84eef+0xb8> @ imm = #0x18
 8002a32:      	mov	r2, r5
 8002a34:      	cmp	r2, #0xa
 8002a36:      	blo	0x8002a6e <core::fmt::num::imp::<impl core::fmt::Display for i32>::fmt::hc2fd3e910bd84eef+0xda> @ imm = #0x34
 8002a38:      	ldrh.w	r1, [r1, r2, lsl #1]
 8002a3c:      	subs	r0, #0x2
 8002a3e:      	sub.w	r2, r7, #0x43
 8002a42:      	strh	r1, [r2, r0]
 8002a44:      	b	0x8002a7a <core::fmt::num::imp::<impl core::fmt::Display for i32>::fmt::hc2fd3e910bd84eef+0xe6> @ imm = #0x32
 8002a46:      	movs	r0, #0x27
 8002a48:      	cmp	r5, #0x63
 8002a4a:      	bls	0x8002a32 <core::fmt::num::imp::<impl core::fmt::Display for i32>::fmt::hc2fd3e910bd84eef+0x9e> @ imm = #-0x1c
 8002a4c:      	uxth	r2, r5
 8002a4e:      	movw	r3, #0x147b
 8002a52:      	lsrs	r2, r2, #0x2
 8002a54:      	subs	r0, #0x2
 8002a56:      	muls	r2, r3, r2
 8002a58:      	lsrs	r2, r2, #0x11
 8002a5a:      	mla	r3, r2, r6, r5
 8002a5e:      	sub.w	r6, r7, #0x43
 8002a62:      	uxth	r3, r3
 8002a64:      	ldrh.w	r3, [r1, r3, lsl #1]
 8002a68:      	strh	r3, [r6, r0]
 8002a6a:      	cmp	r2, #0xa
 8002a6c:      	bhs	0x8002a38 <core::fmt::num::imp::<impl core::fmt::Display for i32>::fmt::hc2fd3e910bd84eef+0xa4> @ imm = #-0x38
 8002a6e:      	subs	r0, #0x1
 8002a70:      	add.w	r1, r2, #0x30
 8002a74:      	sub.w	r2, r7, #0x43
 8002a78:      	strb	r1, [r2, r0]
 8002a7a:      	sub.w	r1, r7, #0x43
 8002a7e:      	rsb.w	r3, r0, #0x27
 8002a82:      	adds	r2, r1, r0
 8002a84:      	mvns	r0, r4
 8002a86:      	lsrs	r1, r0, #0x1f
 8002a88:      	mov	r0, r12
 8002a8a:      	bl	0x8001d0c <core::fmt::Formatter::pad_integral::hba22464f485613a2> @ imm = #-0xd82
 8002a8e:      	add	sp, #0x34
 8002a90:      	pop.w	{r8, r9, r10, r11}
 8002a94:      	pop	{r4, r5, r6, r7, pc}

08002a96 <WWDG>:
 8002a96:      	b	0x8002a96 <WWDG>        @ imm = #-0x4

08002a98 <__pre_init>:
 8002a98:      	bx	lr

08002a9a <core::ptr::drop_in_place<cortex_m_semihosting::hio::HostStream>::h218ed707f3259d02>:
 8002a9a:      	bx	lr

08002a9c <<cortex_m_semihosting::hio::HostStream as core::fmt::Write>::write_str::h4cd5db539de74185>:
 8002a9c:      	cmp	r2, #0x0
 8002a9e:      	itt	eq
 8002aa0:      	moveq	r0, #0x0
 8002aa2:      	bxeq	lr
 8002aa4:      	push	{r7, lr}
 8002aa6:      	mov	r7, sp
 8002aa8:      	sub	sp, #0xc
 8002aaa:      	ldr.w	r12, [r0]
 8002aae:      	mov	lr, r1
 8002ab0:      	strd	r12, r1, [sp]
 8002ab4:      	mov	r1, sp
 8002ab6:      	str	r2, [sp, #0x8]
 8002ab8:      	movs	r0, #0x5
 8002aba:      	bkpt	#0xab
 8002abc:      	subs	r1, r0, #0x1
 8002abe:      	cmp	r1, r2
 8002ac0:      	bhs	0x8002ae0 <<cortex_m_semihosting::hio::HostStream as core::fmt::Write>::write_str::h4cd5db539de74185+0x44> @ imm = #0x1c
 8002ac2:      	mov	r1, sp
 8002ac4:      	mov	r3, r0
 8002ac6:      	str	r0, [sp, #0x8]
 8002ac8:      	subs	r0, r2, r0
 8002aca:      	str.w	r12, [sp]
 8002ace:      	add	lr, r0
 8002ad0:      	str.w	lr, [sp, #0x4]
 8002ad4:      	movs	r0, #0x5
 8002ad6:      	bkpt	#0xab
 8002ad8:      	subs	r2, r0, #0x1
 8002ada:      	cmp	r2, r3
 8002adc:      	mov	r2, r3
 8002ade:      	blo	0x8002ac4 <<cortex_m_semihosting::hio::HostStream as core::fmt::Write>::write_str::h4cd5db539de74185+0x28> @ imm = #-0x1e
 8002ae0:      	cmp	r0, #0x0
 8002ae2:      	it	ne
 8002ae4:      	movne	r0, #0x1
 8002ae6:      	add	sp, #0xc
 8002ae8:      	pop	{r7, pc}

08002aea <core::fmt::Write::write_char::haf6ba995db33effc>:
 8002aea:      	push	{r4, r6, r7, lr}
 8002aec:      	add	r7, sp, #0x8
 8002aee:      	sub	sp, #0x10
 8002af0:      	movs	r2, #0x0
 8002af2:      	cmp	r1, #0x80
 8002af4:      	str	r2, [sp]
 8002af6:      	bhs	0x8002b02 <core::fmt::Write::write_char::haf6ba995db33effc+0x18> @ imm = #0x8
 8002af8:      	strb.w	r1, [sp]
 8002afc:      	mov.w	lr, #0x1
 8002b00:      	b	0x8002b72 <core::fmt::Write::write_char::haf6ba995db33effc+0x88> @ imm = #0x6e
 8002b02:      	cmp.w	r1, #0x800
 8002b06:      	bhs	0x8002b1e <core::fmt::Write::write_char::haf6ba995db33effc+0x34> @ imm = #0x14
 8002b08:      	mov.w	lr, #0x2
 8002b0c:      	mov	r3, r1
 8002b0e:      	bfi	r3, lr, #6, #26
 8002b12:      	strb.w	r3, [sp, #0x1]
 8002b16:      	movs	r3, #0xc0
 8002b18:      	orr.w	r1, r3, r1, lsr #6
 8002b1c:      	b	0x8002b6e <core::fmt::Write::write_char::haf6ba995db33effc+0x84> @ imm = #0x4e
 8002b1e:      	movs	r2, #0x2
 8002b20:      	mov	r3, r1
 8002b22:      	bfi	r3, r2, #6, #26
 8002b26:      	cmp.w	r1, #0x10000
 8002b2a:      	bhs	0x8002b4a <core::fmt::Write::write_char::haf6ba995db33effc+0x60> @ imm = #0x1c
 8002b2c:      	strb.w	r3, [sp, #0x2]
 8002b30:      	lsrs	r3, r1, #0x6
 8002b32:      	bfi	r3, r2, #6, #26
 8002b36:      	movs	r2, #0xe0
 8002b38:      	orr.w	r1, r2, r1, lsr #12
 8002b3c:      	strb.w	r3, [sp, #0x1]
 8002b40:      	strb.w	r1, [sp]
 8002b44:      	mov.w	lr, #0x3
 8002b48:      	b	0x8002b72 <core::fmt::Write::write_char::haf6ba995db33effc+0x88> @ imm = #0x26
 8002b4a:      	strb.w	r3, [sp, #0x3]
 8002b4e:      	lsrs	r3, r1, #0x6
 8002b50:      	bfi	r3, r2, #6, #26
 8002b54:      	strb.w	r3, [sp, #0x2]
 8002b58:      	lsrs	r3, r1, #0xc
 8002b5a:      	mov.w	lr, #0x4
 8002b5e:      	bfi	r3, r2, #6, #26
 8002b62:      	lsrs	r1, r1, #0x12
 8002b64:      	movs	r2, #0x1e
 8002b66:      	strb.w	r3, [sp, #0x1]
 8002b6a:      	bfi	r1, r2, #3, #29
 8002b6e:      	strb.w	r1, [sp]
 8002b72:      	ldr.w	r12, [r0]
 8002b76:      	mov	r0, sp
 8002b78:      	strd	r12, r0, [sp, #4]
 8002b7c:      	add	r1, sp, #0x4
 8002b7e:      	str.w	lr, [sp, #0xc]
 8002b82:      	movs	r0, #0x5
 8002b84:      	bkpt	#0xab
 8002b86:      	subs	r1, r0, #0x1
 8002b88:      	cmp	r1, lr
 8002b8a:      	bhs	0x8002bac <core::fmt::Write::write_char::haf6ba995db33effc+0xc2> @ imm = #0x1e
 8002b8c:      	add	r1, sp, #0x4
 8002b8e:      	mov	r3, sp
 8002b90:      	mov	r4, r0
 8002b92:      	str	r0, [sp, #0xc]
 8002b94:      	sub.w	r0, lr, r0
 8002b98:      	str.w	r12, [sp, #0x4]
 8002b9c:      	add	r3, r0
 8002b9e:      	str	r3, [sp, #0x8]
 8002ba0:      	movs	r0, #0x5
 8002ba2:      	mov	lr, r4
 8002ba4:      	bkpt	#0xab
 8002ba6:      	subs	r2, r0, #0x1
 8002ba8:      	cmp	r2, r4
 8002baa:      	blo	0x8002b90 <core::fmt::Write::write_char::haf6ba995db33effc+0xa6> @ imm = #-0x1e
 8002bac:      	cmp	r0, #0x0
 8002bae:      	it	ne
 8002bb0:      	movne	r0, #0x1
 8002bb2:      	add	sp, #0x10
 8002bb4:      	pop	{r4, r6, r7, pc}

08002bb6 <core::fmt::Write::write_fmt::h7c5e66d523852bb1>:
 8002bb6:      	mov	r2, r1
 8002bb8:      	movw	r1, #0x54a8
 8002bbc:      	movt	r1, #0x800
 8002bc0:      	b.w	0x8002686 <core::fmt::write::h095b5b1af45f5b40> @ imm = #-0x53e

08002bc4 <core::ptr::drop_in_place<defmt::export::FmtWrite>::h7986ef65cca8c78a>:
 8002bc4:      	bx	lr

08002bc6 <<defmt::export::FmtWrite as core::fmt::Write>::write_str::hea570e40c276f666>:
 8002bc6:      	push	{r7, lr}
 8002bc8:      	mov	r7, sp
 8002bca:      	mov	r0, r1
 8002bcc:      	mov	r1, r2
 8002bce:      	bl	0x8002f16 <_defmt_write> @ imm = #0x344
 8002bd2:      	movs	r0, #0x0
 8002bd4:      	pop	{r7, pc}

08002bd6 <core::fmt::Write::write_char::hb960342db613ce4a>:
 8002bd6:      	push	{r7, lr}
 8002bd8:      	mov	r7, sp
 8002bda:      	sub	sp, #0x8
 8002bdc:      	movs	r0, #0x0
 8002bde:      	cmp	r1, #0x80
 8002be0:      	str	r0, [sp, #0x4]
 8002be2:      	bhs	0x8002bec <core::fmt::Write::write_char::hb960342db613ce4a+0x16> @ imm = #0x6
 8002be4:      	strb.w	r1, [sp, #0x4]
 8002be8:      	movs	r2, #0x1
 8002bea:      	b	0x8002c56 <core::fmt::Write::write_char::hb960342db613ce4a+0x80> @ imm = #0x68
 8002bec:      	cmp.w	r1, #0x800
 8002bf0:      	bhs	0x8002c06 <core::fmt::Write::write_char::hb960342db613ce4a+0x30> @ imm = #0x12
 8002bf2:      	movs	r2, #0x2
 8002bf4:      	mov	r0, r1
 8002bf6:      	bfi	r0, r2, #6, #26
 8002bfa:      	strb.w	r0, [sp, #0x5]
 8002bfe:      	movs	r0, #0xc0
 8002c00:      	orr.w	r0, r0, r1, lsr #6
 8002c04:      	b	0x8002c52 <core::fmt::Write::write_char::hb960342db613ce4a+0x7c> @ imm = #0x4a
 8002c06:      	movs	r0, #0x2
 8002c08:      	mov	r2, r1
 8002c0a:      	bfi	r2, r0, #6, #26
 8002c0e:      	cmp.w	r1, #0x10000
 8002c12:      	bhs	0x8002c30 <core::fmt::Write::write_char::hb960342db613ce4a+0x5a> @ imm = #0x1a
 8002c14:      	strb.w	r2, [sp, #0x6]
 8002c18:      	lsrs	r2, r1, #0x6
 8002c1a:      	bfi	r2, r0, #6, #26
 8002c1e:      	movs	r0, #0xe0
 8002c20:      	strb.w	r2, [sp, #0x5]
 8002c24:      	orr.w	r0, r0, r1, lsr #12
 8002c28:      	strb.w	r0, [sp, #0x4]
 8002c2c:      	movs	r2, #0x3
 8002c2e:      	b	0x8002c56 <core::fmt::Write::write_char::hb960342db613ce4a+0x80> @ imm = #0x24
 8002c30:      	strb.w	r2, [sp, #0x7]
 8002c34:      	lsrs	r2, r1, #0x6
 8002c36:      	bfi	r2, r0, #6, #26
 8002c3a:      	strb.w	r2, [sp, #0x6]
 8002c3e:      	lsrs	r2, r1, #0xc
 8002c40:      	bfi	r2, r0, #6, #26
 8002c44:      	strb.w	r2, [sp, #0x5]
 8002c48:      	lsrs	r0, r1, #0x12
 8002c4a:      	movs	r1, #0x1e
 8002c4c:      	movs	r2, #0x4
 8002c4e:      	bfi	r0, r1, #3, #29
 8002c52:      	strb.w	r0, [sp, #0x4]
 8002c56:      	add	r0, sp, #0x4
 8002c58:      	mov	r1, r2
 8002c5a:      	bl	0x8002f16 <_defmt_write> @ imm = #0x2b8
 8002c5e:      	movs	r0, #0x0
 8002c60:      	add	sp, #0x8
 8002c62:      	pop	{r7, pc}

08002c64 <core::fmt::Write::write_fmt::h133d7f4998ad30d7>:
 8002c64:      	mov	r2, r1
 8002c66:      	movw	r1, #0x54c4
 8002c6a:      	movt	r1, #0x800
 8002c6e:      	b.w	0x8002686 <core::fmt::write::h095b5b1af45f5b40> @ imm = #-0x5ec

08002c72 <<&T as core::fmt::Display>::fmt::h311ee0f0ce692bee>:
 8002c72:      	ldrd	r0, r2, [r0]
 8002c76:      	ldr	r2, [r2, #0xc]
 8002c78:      	bx	r2

08002c7a <defmt::export::header::hc9b4e0c1cc8ad9b7>:
 8002c7a:      	push	{r7, lr}
 8002c7c:      	mov	r7, sp
 8002c7e:      	sub	sp, #0x8
 8002c80:      	strh	r0, [r7, #-2]
 8002c84:      	subs	r0, r7, #0x2
 8002c86:      	movs	r1, #0x2
 8002c88:      	bl	0x8002f16 <_defmt_write> @ imm = #0x28a
 8002c8c:      	bl	0x8004ab4 <_defmt_timestamp> @ imm = #0x1e24
 8002c90:      	add	sp, #0x8
 8002c92:      	pop	{r7, pc}

08002c94 <__defmt_default_timestamp>:
 8002c94:      	bx	lr

08002c96 <_defmt_panic>:
 8002c96:      	push	{r7, lr}
 8002c98:      	mov	r7, sp
 8002c9a:      	bl	0x8002ca0 <defmt::default_panic::panic_cold_explicit::h05a28b32c1558e91> @ imm = #0x2
 8002c9e:      	trap

08002ca0 <defmt::default_panic::panic_cold_explicit::h05a28b32c1558e91>:
 8002ca0:      	push	{r7, lr}
 8002ca2:      	mov	r7, sp
 8002ca4:      	bl	0x8002858 <core::panicking::panic_explicit::h9826f411f8a42d19> @ imm = #-0x450
 8002ca8:      	trap

08002caa <defmt_rtt::channel::Channel::blocking_write::hb92f831d348db312>:
 8002caa:      	push	{r4, r5, r6, r7, lr}
 8002cac:      	add	r7, sp, #0xc
 8002cae:      	push.w	{r8, r9, r11}
 8002cb2:      	cbz	r2, 0x8002d06 <defmt_rtt::channel::Channel::blocking_write::hb92f831d348db312+0x5c> @ imm = #0x50
 8002cb4:      	mov	r4, r0
 8002cb6:      	mov	r8, r1
 8002cb8:      	ldr	r0, [r0, #0x10]
 8002cba:      	ldr	r1, [r4, #0xc]
 8002cbc:      	dmb	sy
 8002cc0:      	cmp	r0, r1
 8002cc2:      	bls	0x8002cf4 <defmt_rtt::channel::Channel::blocking_write::hb92f831d348db312+0x4a> @ imm = #0x2e
 8002cc4:      	mvns	r3, r1
 8002cc6:      	adds	r5, r0, r3
 8002cc8:      	cbz	r5, 0x8002d06 <defmt_rtt::channel::Channel::blocking_write::hb92f831d348db312+0x5c> @ imm = #0x3a
 8002cca:      	cmp	r2, r5
 8002ccc:      	it	lo
 8002cce:      	movlo	r5, r2
 8002cd0:      	adds	r6, r5, r1
 8002cd2:      	cmp.w	r6, #0x400
 8002cd6:      	bls	0x8002d10 <defmt_rtt::channel::Channel::blocking_write::hb92f831d348db312+0x66> @ imm = #0x36
 8002cd8:      	ldr	r0, [r4, #0x4]
 8002cda:      	rsb.w	r9, r1, #0x400
 8002cde:      	add	r0, r1
 8002ce0:      	mov	r1, r8
 8002ce2:      	mov	r2, r9
 8002ce4:      	bl	0x8004cba <__aeabi_memcpy> @ imm = #0x1fd2
 8002ce8:      	ldr	r0, [r4, #0x4]
 8002cea:      	add.w	r1, r8, r9
 8002cee:      	sub.w	r2, r5, r9
 8002cf2:      	b	0x8002d18 <defmt_rtt::channel::Channel::blocking_write::hb92f831d348db312+0x6e> @ imm = #0x22
 8002cf4:      	cmp	r0, #0x0
 8002cf6:      	itee	ne
 8002cf8:      	rsbne.w	r5, r1, #0x400
 8002cfc:      	movweq	r0, #0x3ff
 8002d00:      	subeq	r5, r0, r1
 8002d02:      	cmp	r5, #0x0
 8002d04:      	bne	0x8002cca <defmt_rtt::channel::Channel::blocking_write::hb92f831d348db312+0x20> @ imm = #-0x3e
 8002d06:      	movs	r5, #0x0
 8002d08:      	mov	r0, r5
 8002d0a:      	pop.w	{r8, r9, r11}
 8002d0e:      	pop	{r4, r5, r6, r7, pc}
 8002d10:      	ldr	r0, [r4, #0x4]
 8002d12:      	mov	r2, r5
 8002d14:      	add	r0, r1
 8002d16:      	mov	r1, r8
 8002d18:      	bl	0x8004cba <__aeabi_memcpy> @ imm = #0x1f9e
 8002d1c:      	dmb	sy
 8002d20:      	bfc	r6, #10, #22
 8002d24:      	str	r6, [r4, #0xc]
 8002d26:      	mov	r0, r5
 8002d28:      	pop.w	{r8, r9, r11}
 8002d2c:      	pop	{r4, r5, r6, r7, pc}

08002d2e <defmt_rtt::channel::Channel::nonblocking_write::hb26ab18c6786a366>:
 8002d2e:      	push	{r4, r5, r6, r7, lr}
 8002d30:      	add	r7, sp, #0xc
 8002d32:      	push.w	{r8, r9, r11}
 8002d36:      	mov	r8, r1
 8002d38:      	ldr	r1, [r0, #0xc]
 8002d3a:      	mov	r4, r2
 8002d3c:      	cmp.w	r2, #0x400
 8002d40:      	it	hs
 8002d42:      	movhs.w	r4, #0x400
 8002d46:      	adds	r6, r1, r4
 8002d48:      	mov	r5, r0
 8002d4a:      	cmp.w	r6, #0x400
 8002d4e:      	dmb	sy
 8002d52:      	bls	0x8002d70 <defmt_rtt::channel::Channel::nonblocking_write::hb26ab18c6786a366+0x42> @ imm = #0x1a
 8002d54:      	ldr	r0, [r5, #0x4]
 8002d56:      	rsb.w	r9, r1, #0x400
 8002d5a:      	add	r0, r1
 8002d5c:      	mov	r1, r8
 8002d5e:      	mov	r2, r9
 8002d60:      	bl	0x8004cba <__aeabi_memcpy> @ imm = #0x1f56
 8002d64:      	ldr	r0, [r5, #0x4]
 8002d66:      	add.w	r1, r8, r9
 8002d6a:      	sub.w	r2, r4, r9
 8002d6e:      	b	0x8002d78 <defmt_rtt::channel::Channel::nonblocking_write::hb26ab18c6786a366+0x4a> @ imm = #0x6
 8002d70:      	ldr	r0, [r5, #0x4]
 8002d72:      	mov	r2, r4
 8002d74:      	add	r0, r1
 8002d76:      	mov	r1, r8
 8002d78:      	bl	0x8004cba <__aeabi_memcpy> @ imm = #0x1f3e
 8002d7c:      	dmb	sy
 8002d80:      	bfc	r6, #10, #22
 8002d84:      	str	r6, [r5, #0xc]
 8002d86:      	mov	r0, r4
 8002d88:      	pop.w	{r8, r9, r11}
 8002d8c:      	pop	{r4, r5, r6, r7, pc}

08002d8e <_defmt_acquire>:
 8002d8e:      	push	{r4, r5, r6, r7, lr}
 8002d90:      	add	r7, sp, #0xc
 8002d92:      	str	r11, [sp, #-4]!
 8002d96:      	sub	sp, #0x18
 8002d98:      	movw	r0, #0x81bc
 8002d9c:      	mrs	r1, primask
 8002da0:      	cpsid i
 8002da2:      	movt	r0, #0x2000
 8002da6:      	ldrb	r2, [r0]
 8002da8:      	cbnz	r2, 0x8002e06 <_defmt_acquire+0x78> @ imm = #0x5a
 8002daa:      	movs	r2, #0x1
 8002dac:      	bic.w	r1, r2, r1
 8002db0:      	strb	r2, [r0]
 8002db2:      	ldrb	r3, [r0, #0x2]
 8002db4:      	strb	r1, [r0, #0x1]
 8002db6:      	cbnz	r3, 0x8002df8 <_defmt_acquire+0x6a> @ imm = #0x3e
 8002db8:      	movw	r5, #0x0
 8002dbc:      	strb	r2, [r0, #0x2]
 8002dbe:      	movs	r0, #0x0
 8002dc0:      	movt	r5, #0x2000
 8002dc4:      	strb.w	r0, [sp]
 8002dc8:      	movw	r6, #0x2d2f
 8002dcc:      	ldr	r0, [r5, #0x2c]
 8002dce:      	movw	r1, #0x2cab
 8002dd2:      	movt	r6, #0x800
 8002dd6:      	mov	r4, sp
 8002dd8:      	and	r0, r0, #0x3
 8002ddc:      	movt	r1, #0x800
 8002de0:      	cmp	r0, #0x2
 8002de2:      	it	eq
 8002de4:      	moveq	r6, r1
 8002de6:      	add.w	r0, r5, #0x18
 8002dea:      	mov	r1, r4
 8002dec:      	movs	r2, #0x1
 8002dee:      	blx	r6
 8002df0:      	cmp	r0, #0x0
 8002df2:      	beq	0x8002de6 <_defmt_acquire+0x58> @ imm = #-0x10
 8002df4:      	cmp	r0, #0x1
 8002df6:      	bne	0x8002e00 <_defmt_acquire+0x72> @ imm = #0x6
 8002df8:      	add	sp, #0x18
 8002dfa:      	ldr	r11, [sp], #4
 8002dfe:      	pop	{r4, r5, r6, r7, pc}
 8002e00:      	bl	0x8001b98 <core::slice::index::slice_start_index_len_fail::h7a79a905b991b6de> @ imm = #-0x126c
 8002e04:      	trap
 8002e06:      	movs	r1, #0x1
 8002e08:      	movs	r0, #0x0
 8002e0a:      	str	r1, [sp, #0x4]
 8002e0c:      	movw	r1, #0x55f4
 8002e10:      	movt	r1, #0x800
 8002e14:      	str	r0, [sp, #0x10]
 8002e16:      	str	r0, [sp, #0xc]
 8002e18:      	movw	r0, #0x54a8
 8002e1c:      	str	r1, [sp]
 8002e1e:      	movw	r1, #0x5664
 8002e22:      	movt	r0, #0x800
 8002e26:      	movt	r1, #0x800
 8002e2a:      	str	r0, [sp, #0x8]
 8002e2c:      	mov	r0, sp
 8002e2e:      	bl	0x8001b48 <core::panicking::panic_fmt::h9388f4d1c9b70388> @ imm = #-0x12ea
 8002e32:      	trap

08002e34 <_defmt_release>:
 8002e34:      	push	{r4, r5, r6, r7, lr}
 8002e36:      	add	r7, sp, #0xc
 8002e38:      	push.w	{r8, r9, r10}
 8002e3c:      	sub	sp, #0x8
 8002e3e:      	movw	r8, #0x81bc
 8002e42:      	movw	r6, #0x0
 8002e46:      	movt	r8, #0x2000
 8002e4a:      	movw	r9, #0x2cab
 8002e4e:      	ldrb.w	r0, [r8, #0x3]
 8002e52:      	movw	r5, #0x2d2f
 8002e56:      	movt	r6, #0x2000
 8002e5a:      	movt	r9, #0x800
 8002e5e:      	movt	r5, #0x800
 8002e62:      	cbz	r0, 0x8002ece <_defmt_release+0x9a> @ imm = #0x68
 8002e64:      	cmp	r0, #0x7
 8002e66:      	bhs	0x8002ea0 <_defmt_release+0x6c> @ imm = #0x36
 8002e68:      	mov.w	r2, #0xffffffff
 8002e6c:      	ldrb.w	r1, [r8, #0x4]
 8002e70:      	lsl.w	r0, r2, r0
 8002e74:      	sub.w	r10, r7, #0x1a
 8002e78:      	orrs	r0, r1
 8002e7a:      	mov	r4, r5
 8002e7c:      	and	r0, r0, #0x7f
 8002e80:      	strb	r0, [r7, #-26]
 8002e84:      	ldr	r0, [r6, #0x2c]
 8002e86:      	and	r0, r0, #0x3
 8002e8a:      	cmp	r0, #0x2
 8002e8c:      	it	eq
 8002e8e:      	moveq	r4, r9
 8002e90:      	add.w	r0, r6, #0x18
 8002e94:      	mov	r1, r10
 8002e96:      	movs	r2, #0x1
 8002e98:      	blx	r4
 8002e9a:      	cmp	r0, #0x0
 8002e9c:      	beq	0x8002e90 <_defmt_release+0x5c> @ imm = #-0x10
 8002e9e:      	b	0x8002eca <_defmt_release+0x96> @ imm = #0x28
 8002ea0:      	adds	r0, #0x79
 8002ea2:      	sub.w	r10, r7, #0x1b
 8002ea6:      	orr	r0, r0, #0x80
 8002eaa:      	strb	r0, [r7, #-27]
 8002eae:      	ldr	r0, [r6, #0x2c]
 8002eb0:      	mov	r4, r5
 8002eb2:      	and	r0, r0, #0x3
 8002eb6:      	cmp	r0, #0x2
 8002eb8:      	it	eq
 8002eba:      	moveq	r4, r9
 8002ebc:      	add.w	r0, r6, #0x18
 8002ec0:      	mov	r1, r10
 8002ec2:      	movs	r2, #0x1
 8002ec4:      	blx	r4
 8002ec6:      	cmp	r0, #0x0
 8002ec8:      	beq	0x8002ebc <_defmt_release+0x88> @ imm = #-0x10
 8002eca:      	cmp	r0, #0x1
 8002ecc:      	bne	0x8002f10 <_defmt_release+0xdc> @ imm = #0x40
 8002ece:      	movs	r0, #0x0
 8002ed0:      	sub.w	r4, r7, #0x19
 8002ed4:      	strb	r0, [r7, #-25]
 8002ed8:      	ldr	r0, [r6, #0x2c]
 8002eda:      	and	r0, r0, #0x3
 8002ede:      	cmp	r0, #0x2
 8002ee0:      	it	eq
 8002ee2:      	moveq	r5, r9
 8002ee4:      	add.w	r0, r6, #0x18
 8002ee8:      	mov	r1, r4
 8002eea:      	movs	r2, #0x1
 8002eec:      	blx	r5
 8002eee:      	cmp	r0, #0x0
 8002ef0:      	beq	0x8002ee4 <_defmt_release+0xb0> @ imm = #-0x10
 8002ef2:      	cmp	r0, #0x1
 8002ef4:      	bne	0x8002f10 <_defmt_release+0xdc> @ imm = #0x18
 8002ef6:      	movs	r0, #0x0
 8002ef8:      	strh.w	r0, [r8, #0x3]
 8002efc:      	strb.w	r0, [r8]
 8002f00:      	ldrb.w	r0, [r8, #0x1]
 8002f04:      	cbz	r0, 0x8002f08 <_defmt_release+0xd4> @ imm = #0x0
 8002f06:      	cpsie i
 8002f08:      	add	sp, #0x8
 8002f0a:      	pop.w	{r8, r9, r10}
 8002f0e:      	pop	{r4, r5, r6, r7, pc}
 8002f10:      	bl	0x8001b98 <core::slice::index::slice_start_index_len_fail::h7a79a905b991b6de> @ imm = #-0x137c
 8002f14:      	trap

08002f16 <_defmt_write>:
 8002f16:      	push	{r4, r5, r6, r7, lr}
 8002f18:      	add	r7, sp, #0xc
 8002f1a:      	push.w	{r8, r9, r10, r11}
 8002f1e:      	sub	sp, #0x14
 8002f20:      	cmp	r1, #0x0
 8002f22:      	beq.w	0x80030ee <_defmt_write+0x1d8> @ imm = #0x1c8
 8002f26:      	movw	r3, #0x81bc
 8002f2a:      	movw	r10, #0x0
 8002f2e:      	movt	r3, #0x2000
 8002f32:      	adds	r6, r0, r1
 8002f34:      	ldrb	r4, [r3, #0x3]
 8002f36:      	sub.w	r9, r7, #0x21
 8002f3a:      	sub.w	r11, r7, #0x1e
 8002f3e:      	movt	r10, #0x2000
 8002f42:      	str	r6, [sp, #0x4]
 8002f44:      	b	0x8002f5c <_defmt_write+0x46> @ imm = #0x14
 8002f46:      	ldr	r0, [sp, #0x8]
 8002f48:      	movw	r3, #0x81bc
 8002f4c:      	movt	r3, #0x2000
 8002f50:      	movs	r4, #0x0
 8002f52:      	strh.w	r4, [r3, #0x3]
 8002f56:      	cmp	r0, r6
 8002f58:      	beq.w	0x80030ee <_defmt_write+0x1d8> @ imm = #0x192
 8002f5c:      	ldrb	r1, [r0], #1
 8002f60:      	uxtb	r2, r4
 8002f62:      	cmp	r2, #0x7
 8002f64:      	bhs	0x8002fb2 <_defmt_write+0x9c> @ imm = #0x4a
 8002f66:      	cmp	r1, #0x0
 8002f68:      	beq	0x8003048 <_defmt_write+0x132> @ imm = #0xdc
 8002f6a:      	strb	r1, [r7, #-33]
 8002f6e:      	mov	r8, r0
 8002f70:      	ldr.w	r0, [r10, #0x2c]
 8002f74:      	movw	r5, #0x2d2f
 8002f78:      	movt	r5, #0x800
 8002f7c:      	and	r0, r0, #0x3
 8002f80:      	cmp	r0, #0x2
 8002f82:      	movw	r0, #0x2cab
 8002f86:      	movt	r0, #0x800
 8002f8a:      	it	eq
 8002f8c:      	moveq	r5, r0
 8002f8e:      	add.w	r0, r10, #0x18
 8002f92:      	mov	r1, r9
 8002f94:      	movs	r2, #0x1
 8002f96:      	blx	r5
 8002f98:      	cmp	r0, #0x0
 8002f9a:      	beq	0x8002f8e <_defmt_write+0x78> @ imm = #-0x10
 8002f9c:      	cmp	r0, #0x1
 8002f9e:      	bne.w	0x80030e8 <_defmt_write+0x1d2> @ imm = #0x146
 8002fa2:      	movw	r3, #0x81bc
 8002fa6:      	mov	r0, r8
 8002fa8:      	movt	r3, #0x2000
 8002fac:      	ldrb	r4, [r3, #0x3]
 8002fae:      	ldrb	r1, [r3, #0x4]
 8002fb0:      	b	0x8003054 <_defmt_write+0x13e> @ imm = #0xa0
 8002fb2:      	cmp	r1, #0x0
 8002fb4:      	str	r0, [sp, #0x8]
 8002fb6:      	beq	0x80030a6 <_defmt_write+0x190> @ imm = #0xec
 8002fb8:      	strb	r1, [r7, #-30]
 8002fbc:      	movw	r8, #0x2d2f
 8002fc0:      	ldr.w	r0, [r10, #0x2c]
 8002fc4:      	movt	r8, #0x800
 8002fc8:      	and	r0, r0, #0x3
 8002fcc:      	cmp	r0, #0x2
 8002fce:      	movw	r0, #0x2cab
 8002fd2:      	movt	r0, #0x800
 8002fd6:      	it	eq
 8002fd8:      	moveq	r8, r0
 8002fda:      	add.w	r5, r10, #0x18
 8002fde:      	mov	r1, r11
 8002fe0:      	movs	r2, #0x1
 8002fe2:      	mov	r0, r5
 8002fe4:      	blx	r8
 8002fe6:      	cmp	r0, #0x0
 8002fe8:      	beq	0x8002fda <_defmt_write+0xc4> @ imm = #-0x12
 8002fea:      	sub.w	r8, r7, #0x1d
 8002fee:      	cmp	r0, #0x1
 8002ff0:      	bne	0x80030e8 <_defmt_write+0x1d2> @ imm = #0xf4
 8002ff2:      	movw	r3, #0x81bc
 8002ff6:      	movt	r3, #0x2000
 8002ffa:      	ldrb	r0, [r3, #0x3]
 8002ffc:      	adds	r4, r0, #0x1
 8002ffe:      	ldrd	r6, r0, [sp, #4]
 8003002:      	strb	r4, [r3, #0x3]
 8003004:      	uxtb	r1, r4
 8003006:      	cmp	r1, #0x86
 8003008:      	bne	0x8002f56 <_defmt_write+0x40> @ imm = #-0xb6
 800300a:      	movs	r0, #0xff
 800300c:      	movw	r6, #0x2d2f
 8003010:      	strb	r0, [r7, #-29]
 8003014:      	movt	r6, #0x800
 8003018:      	ldr.w	r0, [r10, #0x2c]
 800301c:      	and	r0, r0, #0x3
 8003020:      	cmp	r0, #0x2
 8003022:      	movw	r0, #0x2cab
 8003026:      	movt	r0, #0x800
 800302a:      	it	eq
 800302c:      	moveq	r6, r0
 800302e:      	mov	r0, r5
 8003030:      	mov	r1, r8
 8003032:      	movs	r2, #0x1
 8003034:      	blx	r6
 8003036:      	cmp	r0, #0x0
 8003038:      	beq	0x800302e <_defmt_write+0x118> @ imm = #-0xe
 800303a:      	cmp	r0, #0x1
 800303c:      	bne	0x80030e8 <_defmt_write+0x1d2> @ imm = #0xa8
 800303e:      	movw	r3, #0x81bc
 8003042:      	ldrd	r6, r0, [sp, #4]
 8003046:      	b	0x8002f4c <_defmt_write+0x36> @ imm = #-0xfe
 8003048:      	ldrb	r1, [r3, #0x4]
 800304a:      	movs	r5, #0x1
 800304c:      	lsl.w	r2, r5, r2
 8003050:      	orrs	r1, r2
 8003052:      	strb	r1, [r3, #0x4]
 8003054:      	adds	r4, #0x1
 8003056:      	strb	r4, [r3, #0x3]
 8003058:      	uxtb	r2, r4
 800305a:      	cmp	r2, #0x7
 800305c:      	bne.w	0x8002f56 <_defmt_write+0x40> @ imm = #-0x10a
 8003060:      	lsls	r2, r1, #0x18
 8003062:      	beq.w	0x8002f56 <_defmt_write+0x40> @ imm = #-0x110
 8003066:      	strb.w	r1, [sp, #0x10]
 800306a:      	mov	r8, r0
 800306c:      	ldr.w	r0, [r10, #0x2c]
 8003070:      	movw	r5, #0x2d2f
 8003074:      	add	r4, sp, #0x10
 8003076:      	movt	r5, #0x800
 800307a:      	and	r0, r0, #0x3
 800307e:      	cmp	r0, #0x2
 8003080:      	movw	r0, #0x2cab
 8003084:      	movt	r0, #0x800
 8003088:      	it	eq
 800308a:      	moveq	r5, r0
 800308c:      	add.w	r0, r10, #0x18
 8003090:      	mov	r1, r4
 8003092:      	movs	r2, #0x1
 8003094:      	blx	r5
 8003096:      	cmp	r0, #0x0
 8003098:      	beq	0x800308c <_defmt_write+0x176> @ imm = #-0x10
 800309a:      	cmp	r0, #0x1
 800309c:      	bne	0x80030e8 <_defmt_write+0x1d2> @ imm = #0x48
 800309e:      	movw	r3, #0x81bc
 80030a2:      	mov	r0, r8
 80030a4:      	b	0x8002f4c <_defmt_write+0x36> @ imm = #-0x15c
 80030a6:      	add.w	r0, r4, #0x79
 80030aa:      	movw	r5, #0x2d2f
 80030ae:      	orr	r0, r0, #0x80
 80030b2:      	strb	r0, [r7, #-31]
 80030b6:      	ldr.w	r0, [r10, #0x2c]
 80030ba:      	sub.w	r8, r7, #0x1f
 80030be:      	movt	r5, #0x800
 80030c2:      	and	r0, r0, #0x3
 80030c6:      	cmp	r0, #0x2
 80030c8:      	movw	r0, #0x2cab
 80030cc:      	movt	r0, #0x800
 80030d0:      	it	eq
 80030d2:      	moveq	r5, r0
 80030d4:      	add.w	r0, r10, #0x18
 80030d8:      	mov	r1, r8
 80030da:      	movs	r2, #0x1
 80030dc:      	blx	r5
 80030de:      	cmp	r0, #0x0
 80030e0:      	beq	0x80030d4 <_defmt_write+0x1be> @ imm = #-0x10
 80030e2:      	cmp	r0, #0x1
 80030e4:      	beq.w	0x8002f46 <_defmt_write+0x30> @ imm = #-0x1a2
 80030e8:      	bl	0x8001b98 <core::slice::index::slice_start_index_len_fail::h7a79a905b991b6de> @ imm = #-0x1554
 80030ec:      	trap
 80030ee:      	add	sp, #0x14
 80030f0:      	pop.w	{r8, r9, r10, r11}
 80030f4:      	pop	{r4, r5, r6, r7, pc}

080030f6 <embassy_executor::arch::thread::Executor::new::h7cbc8f0c3b7382a4>:
 80030f6:      	movw	r12, #0x38
 80030fa:      	mrs	r2, primask
 80030fe:      	cpsid i
 8003100:      	movt	r12, #0x2000
 8003104:      	ldrb.w	r1, [r12, #0x34]
 8003108:      	cmp	r1, #0x2
 800310a:      	itt	ls
 800310c:      	addls	r3, r1, #0x1
 800310e:      	strbls.w	r3, [r12, #0x34]
 8003112:      	lsls	r2, r2, #0x1f
 8003114:      	bne	0x8003118 <embassy_executor::arch::thread::Executor::new::h7cbc8f0c3b7382a4+0x22> @ imm = #0x0
 8003116:      	cpsie i
 8003118:      	cmp	r1, #0x3
 800311a:      	itttt	lo
 800311c:      	strblo	r1, [r0, #0xc]
 800311e:      	movlo	r1, #0x0
 8003120:      	movlo.w	r2, #0xffffffff
 8003124:      	strdlo	r1, r2, [r0]
 8003128:      	itt	lo
 800312a:      	strlo	r1, [r0, #0x8]
 800312c:      	bxlo	lr
 800312e:      	push	{r7, lr}
 8003130:      	mov	r7, sp
 8003132:      	bl	0x8002d8e <_defmt_acquire> @ imm = #-0x3a8
 8003136:      	movw	r0, #0x8
 800313a:      	movt	r0, #0x0
 800313e:      	bl	0x8002c7a <defmt::export::header::hc9b4e0c1cc8ad9b7> @ imm = #-0x4c8
 8003142:      	bl	0x8003150 <defmt::export::fmt::h5793c45a2eb637bf> @ imm = #0xa
 8003146:      	bl	0x8002e34 <_defmt_release> @ imm = #-0x316
 800314a:      	bl	0x8002c96 <_defmt_panic> @ imm = #-0x4b8
 800314e:      	trap

08003150 <defmt::export::fmt::h5793c45a2eb637bf>:
 8003150:      	push	{r7, lr}
 8003152:      	mov	r7, sp
 8003154:      	sub	sp, #0x8
 8003156:      	movw	r0, #0x4
 800315a:      	movs	r1, #0x2
 800315c:      	movt	r0, #0x0
 8003160:      	strh	r0, [r7, #-2]
 8003164:      	subs	r0, r7, #0x2
 8003166:      	bl	0x8002f16 <_defmt_write> @ imm = #-0x254
 800316a:      	add	sp, #0x8
 800316c:      	pop	{r7, pc}

0800316e <embassy_executor::raw::SyncExecutor::alarm_callback::ha6072d3279b63657>:
 800316e:      	push	{r7, lr}
 8003170:      	mov	r7, sp
 8003172:      	ldr	r0, [r0, #0x4]
 8003174:      	adds	r1, r0, #0x1
 8003176:      	itttt	ne
 8003178:      	uxthne	r0, r0
 800317a:      	movwne	r1, #0xef00
 800317e:      	movtne	r1, #0xe000
 8003182:      	strne	r0, [r1]
 8003184:      	it	ne
 8003186:      	popne	{r7, pc}
 8003188:      	sev
 800318a:      	pop	{r7, pc}

0800318c <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84>:
 800318c:      	push	{r4, r5, r6, r7, lr}
 800318e:      	add	r7, sp, #0xc
 8003190:      	push.w	{r8, r9, r10, r11}
 8003194:      	sub	sp, #0x14
 8003196:      	uxtb	r5, r1
 8003198:      	movw	r1, #0x3800
 800319c:      	movt	r1, #0x4002
 80031a0:      	cbz	r5, 0x80031ca <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x3e> @ imm = #0x26
 80031a2:      	cmp	r5, #0x1
 80031a4:      	bne	0x80031ee <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x62> @ imm = #0x46
 80031a6:      	ldr	r6, [r1]
 80031a8:      	bic	r6, r6, #0x4000000
 80031ac:      	str	r6, [r1]
 80031ae:      	ldr	r6, [r1]
 80031b0:      	lsls	r6, r6, #0x4
 80031b2:      	bpl	0x8003210 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x84> @ imm = #0x5a
 80031b4:      	ldr	r6, [r1]
 80031b6:      	lsls	r6, r6, #0x4
 80031b8:      	itt	mi
 80031ba:      	ldrmi	r6, [r1]
 80031bc:      	lslsmi.w	r6, r6, #0x4
 80031c0:      	bpl	0x8003210 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x84> @ imm = #0x4c
 80031c2:      	ldr	r6, [r1]
 80031c4:      	lsls	r6, r6, #0x4
 80031c6:      	bmi	0x80031ae <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x22> @ imm = #-0x1c
 80031c8:      	b	0x8003210 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x84> @ imm = #0x44
 80031ca:      	ldr	r6, [r1]
 80031cc:      	bic	r6, r6, #0x1000000
 80031d0:      	str	r6, [r1]
 80031d2:      	ldr	r6, [r1]
 80031d4:      	lsls	r6, r6, #0x6
 80031d6:      	bpl	0x8003210 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x84> @ imm = #0x36
 80031d8:      	ldr	r6, [r1]
 80031da:      	lsls	r6, r6, #0x6
 80031dc:      	itt	mi
 80031de:      	ldrmi	r6, [r1]
 80031e0:      	lslsmi.w	r6, r6, #0x6
 80031e4:      	bpl	0x8003210 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x84> @ imm = #0x28
 80031e6:      	ldr	r6, [r1]
 80031e8:      	lsls	r6, r6, #0x6
 80031ea:      	bmi	0x80031d2 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x46> @ imm = #-0x1c
 80031ec:      	b	0x8003210 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x84> @ imm = #0x20
 80031ee:      	ldr	r6, [r1]
 80031f0:      	bic	r6, r6, #0x10000000
 80031f4:      	str	r6, [r1]
 80031f6:      	ldr	r6, [r1]
 80031f8:      	lsls	r6, r6, #0x2
 80031fa:      	bpl	0x8003210 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x84> @ imm = #0x12
 80031fc:      	ldr	r6, [r1]
 80031fe:      	lsls	r6, r6, #0x2
 8003200:      	itt	mi
 8003202:      	ldrmi	r6, [r1]
 8003204:      	lslsmi.w	r6, r6, #0x2
 8003208:      	bpl	0x8003210 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x84> @ imm = #0x4
 800320a:      	ldr	r6, [r1]
 800320c:      	lsls	r6, r6, #0x2
 800320e:      	bmi	0x80031f6 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x6a> @ imm = #-0x1c
 8003210:      	ldrb.w	lr, [r2, #0x5]
 8003214:      	cmp.w	lr, #0x5
 8003218:      	bne	0x800322a <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x9e> @ imm = #0xe
 800321a:      	movs	r1, #0x0
 800321c:      	str	r1, [r0, #0x10]
 800321e:      	str	r1, [r0, #0x8]
 8003220:      	str	r1, [r0]
 8003222:      	add	sp, #0x14
 8003224:      	pop.w	{r8, r9, r10, r11}
 8003228:      	pop	{r4, r5, r6, r7, pc}
 800322a:      	ldrb.w	r12, [r3, #0x10]
 800322e:      	mov	r4, r3
 8003230:      	str	r5, [sp, #0x10]
 8003232:      	cmp.w	r12, #0x0
 8003236:      	it	ne
 8003238:      	addne	r4, #0x8
 800323a:      	ldr	r4, [r4]
 800323c:      	cmp	r4, #0x0
 800323e:      	beq.w	0x8004504 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x1378> @ imm = #0x12c2
 8003242:      	ldrb.w	r11, [r2, #0x2]
 8003246:      	add.w	r5, r3, #0xc
 800324a:      	cmp.w	r12, #0x0
 800324e:      	it	eq
 8003250:      	addeq	r5, r3, #0x4
 8003252:      	sub.w	r3, r11, #0x2
 8003256:      	cmp	r3, #0x3d
 8003258:      	bhi.w	0x8004584 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x13f8> @ imm = #0x1328
 800325c:      	ldrb.w	r10, [r2, #0x3]
 8003260:      	ldrb.w	r9, [r2, #0x4]
 8003264:      	ldrh.w	r8, [r2]
 8003268:      	ldr	r2, [r5]
 800326a:      	tbh	[pc, r3, lsl #1]

0800326e <$d.67>:
 800326e: 3e 00 89 00  	.word	0x0089003e
 8003272: 8e 00 90 00  	.word	0x0090008e
 8003276: 95 00 9a 00  	.word	0x009a0095
 800327a: a5 00 a7 00  	.word	0x00a700a5
 800327e: af 00 b4 00  	.word	0x00b400af
 8003282: b9 00 be 00  	.word	0x00be00b9
 8003286: c3 00 c9 00  	.word	0x00c900c3
 800328a: 69 00 ce 00  	.word	0x00ce0069
 800328e: 6b 00 d3 00  	.word	0x00d3006b
 8003292: d8 00 19 01  	.word	0x011900d8
 8003296: dd 00 e2 00  	.word	0x00e200dd
 800329a: 1e 01 23 01  	.word	0x0123011e
 800329e: e7 00 ec 00  	.word	0x00ec00e7
 80032a2: 5e 01 70 00  	.word	0x0070015e
 80032a6: 28 01 2d 01  	.word	0x012d0128
 80032aa: 7e 01 f1 00  	.word	0x00f1017e
 80032ae: 38 01 75 00  	.word	0x00750138
 80032b2: 7a 00 4a 00  	.word	0x004a007a
 80032b6: 4f 00 55 00  	.word	0x0055004f
 80032ba: 3d 01 42 01  	.word	0x0142013d
 80032be: f6 00 ff 00  	.word	0x00ff00f6
 80032c2: 47 01 40 00  	.word	0x00400147
 80032c6: 7f 00 4c 01  	.word	0x014c007f
 80032ca: 6d 01 5a 00  	.word	0x005a016d
 80032ce: 84 00 04 01  	.word	0x01040084
 80032d2: 45 00 75 01  	.word	0x01750045
 80032d6: 80 01 5f 00  	.word	0x005f0180
 80032da: 60 01 68 01  	.word	0x01680160
 80032de: 64 00 51 01  	.word	0x01510064
 80032e2: 09 01 56 01  	.word	0x01560109
 80032e6: 0e 01 14 01  	.word	0x0114010e

080032ea <$t.68>:
 80032ea:      	lsrs	r6, r2, #0x1
 80032ec:      	b	0x800357e <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x3f2> @ imm = #0x28e
 80032ee:      	movw	r3, #0xc16d
 80032f2:      	movt	r3, #0x6c16
 80032f6:      	b	0x8003560 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x3d4> @ imm = #0x266
 80032f8:      	movw	r3, #0xec4f
 80032fc:      	movt	r3, #0x4ec4
 8003300:      	b	0x8003522 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x396> @ imm = #0x21e
 8003302:      	movw	r3, #0x914d
 8003306:      	movt	r3, #0xbacf
 800330a:      	b	0x8003560 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x3d4> @ imm = #0x252
 800330c:      	movw	r3, #0x1af3
 8003310:      	lsrs	r2, r2, #0x1
 8003312:      	movt	r3, #0x6bca
 8003316:      	b	0x8003578 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x3ec> @ imm = #0x25e
 8003318:      	movw	r3, #0x41a5
 800331c:      	movt	r3, #0xa41a
 8003320:      	b	0x8003560 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x3d4> @ imm = #0x23c
 8003322:      	movw	r3, #0x829d
 8003326:      	movt	r3, #0x5397
 800332a:      	b	0x8003522 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x396> @ imm = #0x1f4
 800332c:      	movw	r3, #0x129f
 8003330:      	movt	r3, #0x29e4
 8003334:      	b	0x8003560 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x3d4> @ imm = #0x228
 8003336:      	movw	r3, #0xcb09
 800333a:      	movt	r3, #0x8d3d
 800333e:      	b	0x8003550 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x3c4> @ imm = #0x20e
 8003340:      	lsrs	r6, r2, #0x4
 8003342:      	b	0x800357e <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x3f2> @ imm = #0x238
 8003344:      	movw	r3, #0x8e39
 8003348:      	movt	r3, #0x38e3
 800334c:      	b	0x8003464 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x2d8> @ imm = #0x114
 800334e:      	movw	r3, #0xcb09
 8003352:      	movt	r3, #0x8d3d
 8003356:      	b	0x8003522 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x396> @ imm = #0x1c8
 8003358:      	movw	r3, #0x41d5
 800335c:      	movt	r3, #0xd41d
 8003360:      	b	0x8003560 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x3d4> @ imm = #0x1fc
 8003362:      	movw	r3, #0x8e39
 8003366:      	movt	r3, #0x38e3
 800336a:      	b	0x8003578 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x3ec> @ imm = #0x20a
 800336c:      	movw	r3, #0x42c9
 8003370:      	movt	r3, #0xb216
 8003374:      	b	0x8003550 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x3c4> @ imm = #0x1d8
 8003376:      	movw	r3, #0x851f
 800337a:      	movt	r3, #0x51eb
 800337e:      	b	0x8003522 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x396> @ imm = #0x1a0
 8003380:      	movw	r3, #0xaaab
 8003384:      	movt	r3, #0xaaaa
 8003388:      	b	0x80033c4 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x238> @ imm = #0x38
 800338a:      	lsrs	r6, r2, #0x2
 800338c:      	b	0x800357e <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x3f2> @ imm = #0x1ee
 800338e:      	movw	r3, #0xcccd
 8003392:      	movt	r3, #0xcccc
 8003396:      	b	0x8003464 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x2d8> @ imm = #0xca
 8003398:      	movw	r3, #0xaaab
 800339c:      	movt	r3, #0xaaaa
 80033a0:      	b	0x8003464 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x2d8> @ imm = #0xc0
 80033a2:      	movw	r3, #0x4925
 80033a6:      	movt	r3, #0x2492
 80033aa:      	umull	r3, r4, r2, r3
 80033ae:      	subs	r2, r2, r4
 80033b0:      	add.w	r2, r4, r2, lsr #1
 80033b4:      	lsrs	r6, r2, #0x2
 80033b6:      	b	0x800357e <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x3f2> @ imm = #0x1c4
 80033b8:      	lsrs	r6, r2, #0x3
 80033ba:      	b	0x800357e <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x3f2> @ imm = #0x1c0
 80033bc:      	movw	r3, #0x8e39
 80033c0:      	movt	r3, #0x38e3
 80033c4:      	umull	r2, r3, r2, r3
 80033c8:      	lsrs	r6, r3, #0x1
 80033ca:      	b	0x800357e <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x3f2> @ imm = #0x1b0
 80033cc:      	movw	r3, #0xcccd
 80033d0:      	movt	r3, #0xcccc
 80033d4:      	b	0x8003578 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x3ec> @ imm = #0x1a0
 80033d6:      	movw	r3, #0x8ba3
 80033da:      	movt	r3, #0xba2e
 80033de:      	b	0x8003578 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x3ec> @ imm = #0x196
 80033e0:      	movw	r3, #0xaaab
 80033e4:      	movt	r3, #0xaaaa
 80033e8:      	b	0x8003578 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x3ec> @ imm = #0x18c
 80033ea:      	movw	r3, #0xec4f
 80033ee:      	movt	r3, #0x4ec4
 80033f2:      	b	0x8003464 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x2d8> @ imm = #0x6e
 80033f4:      	movw	r3, #0x2493
 80033f8:      	lsrs	r2, r2, #0x1
 80033fa:      	movt	r3, #0x9249
 80033fe:      	b	0x8003464 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x2d8> @ imm = #0x62
 8003400:      	movw	r3, #0x8889
 8003404:      	movt	r3, #0x8888
 8003408:      	b	0x8003578 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x3ec> @ imm = #0x16c
 800340a:      	movw	r3, #0xf0f1
 800340e:      	movt	r3, #0xf0f0
 8003412:      	b	0x8003522 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x396> @ imm = #0x10c
 8003414:      	movw	r3, #0x6bcb
 8003418:      	movt	r3, #0xaf28
 800341c:      	b	0x80034d0 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x344> @ imm = #0xb0
 800341e:      	movw	r3, #0xcccd
 8003422:      	movt	r3, #0xcccc
 8003426:      	b	0x8003522 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x396> @ imm = #0xf8
 8003428:      	movw	r3, #0x8ba3
 800342c:      	movt	r3, #0xba2e
 8003430:      	b	0x8003522 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x396> @ imm = #0xee
 8003432:      	movw	r3, #0x42c9
 8003436:      	movt	r3, #0xb216
 800343a:      	b	0x8003522 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x396> @ imm = #0xe4
 800343c:      	movw	r3, #0xec4f
 8003440:      	movt	r3, #0x4ec4
 8003444:      	b	0x8003578 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x3ec> @ imm = #0x130
 8003446:      	movw	r3, #0x4bdb
 800344a:      	movt	r3, #0x2f68
 800344e:      	b	0x80034d0 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x344> @ imm = #0x7e
 8003450:      	movw	r3, #0x83e1
 8003454:      	movt	r3, #0x3e0f
 8003458:      	b	0x8003578 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x3ec> @ imm = #0x11c
 800345a:      	movw	r3, #0xc31
 800345e:      	lsrs	r2, r2, #0x1
 8003460:      	movt	r3, #0x30c3
 8003464:      	umull	r2, r3, r2, r3
 8003468:      	lsrs	r6, r3, #0x2
 800346a:      	b	0x800357e <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x3f2> @ imm = #0x110
 800346c:      	movw	r3, #0xbe83
 8003470:      	movt	r3, #0x2fa0
 8003474:      	b	0x8003578 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x3ec> @ imm = #0x100
 8003476:      	movw	r3, #0xa0a1
 800347a:      	movt	r3, #0xa0a0
 800347e:      	b	0x8003550 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x3c4> @ imm = #0xce
 8003480:      	movw	r3, #0x8889
 8003484:      	movt	r3, #0x8888
 8003488:      	b	0x8003550 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x3c4> @ imm = #0xc4
 800348a:      	movw	r3, #0x843
 800348e:      	lsrs	r2, r2, #0x1
 8003490:      	movt	r3, #0x8421
 8003494:      	b	0x8003522 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x396> @ imm = #0x8a
 8003496:      	movw	r3, #0x4105
 800349a:      	movt	r3, #0x410
 800349e:      	b	0x8003560 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x3d4> @ imm = #0xbe
 80034a0:      	movw	r3, #0x6187
 80034a4:      	movt	r3, #0x8618
 80034a8:      	b	0x80034d0 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x344> @ imm = #0x24
 80034aa:      	movw	r3, #0xaaab
 80034ae:      	movt	r3, #0xaaaa
 80034b2:      	b	0x8003522 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x396> @ imm = #0x6c
 80034b4:      	movw	r3, #0x851f
 80034b8:      	movt	r3, #0x51eb
 80034bc:      	b	0x8003578 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x3ec> @ imm = #0xb8
 80034be:      	movw	r3, #0x8889
 80034c2:      	movt	r3, #0x8888
 80034c6:      	b	0x8003522 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x396> @ imm = #0x58
 80034c8:      	movw	r3, #0x1085
 80034cc:      	movt	r3, #0x842
 80034d0:      	umull	r3, r4, r2, r3
 80034d4:      	subs	r2, r2, r4
 80034d6:      	add.w	r2, r4, r2, lsr #1
 80034da:      	lsrs	r6, r2, #0x4
 80034dc:      	b	0x800357e <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x3f2> @ imm = #0x9e
 80034de:      	movw	r3, #0xf0f1
 80034e2:      	movt	r3, #0xf0f0
 80034e6:      	b	0x8003550 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x3c4> @ imm = #0x66
 80034e8:      	movw	r3, #0xcccd
 80034ec:      	movt	r3, #0xcccc
 80034f0:      	b	0x8003550 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x3c4> @ imm = #0x5c
 80034f2:      	movw	r3, #0xc7d
 80034f6:      	movt	r3, #0xc7ce
 80034fa:      	b	0x8003550 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x3c4> @ imm = #0x52
 80034fc:      	movw	r3, #0x8ba3
 8003500:      	movt	r3, #0xba2e
 8003504:      	b	0x8003550 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x3c4> @ imm = #0x48
 8003506:      	movw	r3, #0x415d
 800350a:      	movt	r3, #0xae4c
 800350e:      	b	0x8003550 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x3c4> @ imm = #0x3e
 8003510:      	movw	r3, #0x3cbf
 8003514:      	movt	r3, #0x22b6
 8003518:      	b	0x8003578 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x3ec> @ imm = #0x5c
 800351a:      	movw	r3, #0xc53f
 800351e:      	movt	r3, #0x4325
 8003522:      	umull	r2, r3, r2, r3
 8003526:      	lsrs	r6, r3, #0x4
 8003528:      	b	0x800357e <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x3f2> @ imm = #0x52
 800352a:      	lsrs	r2, r2, #0x2
 800352c:      	b	0x8003530 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x3a4> @ imm = #0x0
 800352e:      	lsrs	r2, r2, #0x3
 8003530:      	movw	r3, #0x4925
 8003534:      	movt	r3, #0x2492
 8003538:      	umull	r2, r6, r2, r3
 800353c:      	b	0x800357e <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x3f2> @ imm = #0x3e
 800353e:      	movw	r3, #0x47dd
 8003542:      	movt	r3, #0x1f70
 8003546:      	b	0x8003560 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x3d4> @ imm = #0x16
 8003548:      	movw	r3, #0xaaab
 800354c:      	movt	r3, #0xaaaa
 8003550:      	umull	r2, r3, r2, r3
 8003554:      	lsrs	r6, r3, #0x5
 8003556:      	b	0x800357e <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x3f2> @ imm = #0x24
 8003558:      	movw	r3, #0xcfb3
 800355c:      	movt	r3, #0x3521
 8003560:      	umull	r3, r4, r2, r3
 8003564:      	subs	r2, r2, r4
 8003566:      	add.w	r2, r4, r2, lsr #1
 800356a:      	lsrs	r6, r2, #0x5
 800356c:      	b	0x800357e <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x3f2> @ imm = #0xe
 800356e:      	movw	r3, #0x12f7
 8003572:      	lsrs	r2, r2, #0x1
 8003574:      	movt	r3, #0x4bda
 8003578:      	umull	r2, r3, r2, r3
 800357c:      	lsrs	r6, r3, #0x3
 800357e:      	sub.w	r2, r6, #0xf4000
 8003582:      	movw	r3, #0xc8e1
 8003586:      	sub.w	r2, r2, #0x240
 800358a:      	movt	r3, #0x10
 800358e:      	cmp	r2, r3
 8003590:      	bhs.w	0x800451c <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x1390> @ imm = #0xf88
 8003594:      	sub.w	r2, r8, #0x32
 8003598:      	cmp.w	r2, #0x17e
 800359c:      	bhi.w	0x800459e <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x1412> @ imm = #0xffe
 80035a0:      	tbh	[pc, r2, lsl #1]

080035a4 <$d.69>:
 80035a4: 7f 01 c2 02  	.word	0x02c2017f
 80035a8: c5 02 9c 01  	.word	0x019c02c5
 80035ac: a0 01 a4 01  	.word	0x01a401a0
 80035b0: bb 04 a8 01  	.word	0x01a804bb
 80035b4: bf 04 1a 02  	.word	0x021a04bf
 80035b8: 1d 02 83 01  	.word	0x0183021d
 80035bc: 87 01 21 02  	.word	0x02210187
 80035c0: 24 02 6d 07  	.word	0x076d0224
 80035c4: c2 04 ac 01  	.word	0x01ac04c2
 80035c8: 26 02 70 07  	.word	0x07700226
 80035cc: c8 02 83 05  	.word	0x058302c8
 80035d0: 86 05 73 07  	.word	0x07730586
 80035d4: 8c 01 b0 01  	.word	0x01b0018c
 80035d8: 76 07 ad 07  	.word	0x07ad0776
 80035dc: b4 01 cb 02  	.word	0x02cb01b4
 80035e0: c6 04 2a 02  	.word	0x022a04c6
 80035e4: ce 02 90 01  	.word	0x019002ce
 80035e8: 8a 05 d1 02  	.word	0x02d1058a
 80035ec: b8 01 ca 04  	.word	0x04ca01b8
 80035f0: 8d 05 d4 02  	.word	0x02d4058d
 80035f4: 90 05 d7 02  	.word	0x02d70590
 80035f8: da 02 79 07  	.word	0x077902da
 80035fc: dd 02 e0 02  	.word	0x02e002dd
 8003600: cd 04 7c 07  	.word	0x077c04cd
 8003604: e3 02 2d 02  	.word	0x022d02e3
 8003608: 30 02 93 05  	.word	0x05930230
 800360c: e6 02 96 05  	.word	0x059602e6
 8003610: e9 02 99 05  	.word	0x059902e9
 8003614: 9c 05 d1 04  	.word	0x04d1059c
 8003618: ec 02 ef 02  	.word	0x02ef02ec
 800361c: d4 04 33 02  	.word	0x023304d4
 8003620: 9f 05 7f 07  	.word	0x077f059f
 8003624: bc 01 a3 05  	.word	0x05a301bc
 8003628: 82 07 a6 05  	.word	0x05a60782
 800362c: 85 07 f2 02  	.word	0x02f20785
 8003630: d7 04 88 07  	.word	0x078804d7
 8003634: db 04 c0 01  	.word	0x01c004db
 8003638: a9 05 94 01  	.word	0x019405a9
 800363c: 36 02 8b 07  	.word	0x078b0236
 8003640: f5 02 f7 02  	.word	0x02f702f5
 8003644: 3a 02 fa 02  	.word	0x02fa023a
 8003648: de 04 3e 02  	.word	0x023e04de
 800364c: 98 01 fd 02  	.word	0x02fd0198
 8003650: c4 01 ad 05  	.word	0x05ad01c4
 8003654: c9 01 e2 04  	.word	0x04e201c9
 8003658: 41 02 e5 04  	.word	0x04e50241
 800365c: 00 03 03 03  	.word	0x03030300
 8003660: b0 05 8e 07  	.word	0x078e05b0
 8003664: 91 07 e8 04  	.word	0x04e80791
 8003668: b4 05 eb 04  	.word	0x04eb05b4
 800366c: 94 07 b7 05  	.word	0x05b70794
 8003670: cd 01 97 07  	.word	0x079701cd
 8003674: 06 03 ba 05  	.word	0x05ba0306
 8003678: d1 01 44 02  	.word	0x024401d1
 800367c: 9a 07 d5 01  	.word	0x01d5079a
 8003680: 9d 07 a1 07  	.word	0x07a1079d
 8003684: 09 03 ee 04  	.word	0x04ee0309
 8003688: d9 01 dd 01  	.word	0x01dd01d9
 800368c: 0c 03 47 02  	.word	0x0247030c
 8003690: 0f 03 4a 02  	.word	0x024a030f
 8003694: f1 04 a4 07  	.word	0x07a404f1
 8003698: 4d 02 a7 07  	.word	0x07a7024d
 800369c: e1 01 12 03  	.word	0x031201e1
 80036a0: e5 01 15 03  	.word	0x031501e5
 80036a4: e9 01 18 03  	.word	0x031801e9
 80036a8: ed 01 f1 01  	.word	0x01f101ed
 80036ac: 50 02 f5 01  	.word	0x01f50250
 80036b0: bd 05 c0 05  	.word	0x05c005bd
 80036b4: 53 02 c3 05  	.word	0x05c30253
 80036b8: c6 05 aa 07  	.word	0x07aa05c6
 80036bc: c9 05 cc 05  	.word	0x05cc05c9
 80036c0: f9 01 fe 01  	.word	0x01fe01f9
 80036c4: f4 04 02 02  	.word	0x020204f4
 80036c8: cf 05 1b 03  	.word	0x031b05cf
 80036cc: d2 05 06 02  	.word	0x020605d2
 80036d0: 1e 03 21 03  	.word	0x0321031e
 80036d4: 24 03 d5 05  	.word	0x05d50324
 80036d8: 56 02 27 03  	.word	0x03270256
 80036dc: d8 05 2a 03  	.word	0x032a05d8
 80036e0: 59 02 0a 02  	.word	0x020a0259
 80036e4: 0d 02 5c 02  	.word	0x025c020d
 80036e8: 10 02 db 05  	.word	0x05db0210
 80036ec: de 05 e1 05  	.word	0x05e105de
 80036f0: 2d 03 30 03  	.word	0x0330032d
 80036f4: 33 03 e4 05  	.word	0x05e40333
 80036f8: 36 03 39 03  	.word	0x03390336
 80036fc: 5f 02 62 02  	.word	0x0262025f
 8003700: e7 05 65 02  	.word	0x026505e7
 8003704: f7 04 3c 03  	.word	0x033c04f7
 8003708: 3f 03 68 02  	.word	0x0268033f
 800370c: fa 04 fd 04  	.word	0x04fd04fa
 8003710: 00 05 03 05  	.word	0x05030500
 8003714: 06 05 42 03  	.word	0x03420506
 8003718: 09 05 0c 05  	.word	0x050c0509
 800371c: 6b 02 eb 05  	.word	0x05eb026b
 8003720: 0f 05 6e 02  	.word	0x026e050f
 8003724: 45 03 13 02  	.word	0x02130345
 8003728: ee 05 f1 05  	.word	0x05f105ee
 800372c: 71 02 48 03  	.word	0x03480271
 8003730: 74 02 78 02  	.word	0x02780274
 8003734: 13 05 7b 02  	.word	0x027b0513
 8003738: 16 02 7e 02  	.word	0x027e0216
 800373c: f4 05 4b 03  	.word	0x034b05f4
 8003740: 4e 03 81 02  	.word	0x0281034e
 8003744: 16 05 50 03  	.word	0x03500516
 8003748: 1a 05 54 03  	.word	0x0354051a
 800374c: 58 03 84 02  	.word	0x02840358
 8003750: 5c 03 88 02  	.word	0x0288035c
 8003754: 8c 02 f8 05  	.word	0x05f8028c
 8003758: fc 05 00 06  	.word	0x060005fc
 800375c: 1e 05 60 03  	.word	0x0360051e
 8003760: 90 02 64 03  	.word	0x03640290
 8003764: 04 06 94 02  	.word	0x02940604
 8003768: 68 03 6c 03  	.word	0x036c0368
 800376c: 22 05 70 03  	.word	0x03700522
 8003770: 74 03 78 03  	.word	0x03780374
 8003774: 7c 03 98 02  	.word	0x0298037c
 8003778: 80 03 9b 02  	.word	0x029b0380
 800377c: 26 05 29 05  	.word	0x05290526
 8003780: 83 03 87 03  	.word	0x03870383
 8003784: 2c 05 2f 05  	.word	0x052f052c
 8003788: 08 06 8a 03  	.word	0x038a0608
 800378c: 9e 02 a1 02  	.word	0x02a1029e
 8003790: 32 05 8d 03  	.word	0x038d0532
 8003794: 35 05 38 05  	.word	0x05380535
 8003798: a4 02 a7 02  	.word	0x02a702a4
 800379c: 90 03 93 03  	.word	0x03930390
 80037a0: 96 03 99 03  	.word	0x03990396
 80037a4: 9c 03 9f 03  	.word	0x039f039c
 80037a8: 3b 05 aa 02  	.word	0x02aa053b
 80037ac: ad 02 a2 03  	.word	0x03a202ad
 80037b0: a5 03 a8 03  	.word	0x03a803a5
 80037b4: ab 03 ae 03  	.word	0x03ae03ab
 80037b8: b1 03 b4 03  	.word	0x03b403b1
 80037bc: b7 03 ba 03  	.word	0x03ba03b7
 80037c0: bd 03 3e 05  	.word	0x053e03bd
 80037c4: b0 02 b3 02  	.word	0x02b302b0
 80037c8: c1 03 c4 03  	.word	0x03c403c1
 80037cc: b6 02 c7 03  	.word	0x03c702b6
 80037d0: 41 05 44 05  	.word	0x05440541
 80037d4: ca 03 47 05  	.word	0x054703ca
 80037d8: 4a 05 4d 05  	.word	0x054d054a
 80037dc: cd 03 50 05  	.word	0x055003cd
 80037e0: d0 03 53 05  	.word	0x055303d0
 80037e4: d3 03 d6 03  	.word	0x03d603d3
 80037e8: d9 03 b9 02  	.word	0x02b903d9
 80037ec: 56 05 59 05  	.word	0x05590556
 80037f0: dc 03 5c 05  	.word	0x055c03dc
 80037f4: df 03 e2 03  	.word	0x03e203df
 80037f8: bc 02 bf 02  	.word	0x02bf02bc
 80037fc: e5 03 e8 03  	.word	0x03e803e5
 8003800: eb 03 ee 03  	.word	0x03ee03eb
 8003804: 5f 05 f1 03  	.word	0x03f1055f
 8003808: f4 03 f7 03  	.word	0x03f703f4
 800380c: 62 05 65 05  	.word	0x05650562
 8003810: 68 05 fa 03  	.word	0x03fa0568
 8003814: fd 03 00 04  	.word	0x040003fd
 8003818: 6b 05 03 04  	.word	0x0403056b
 800381c: 06 04 09 04  	.word	0x04090406
 8003820: 0c 04 0f 04  	.word	0x040f040c
 8003824: 12 04 15 04  	.word	0x04150412
 8003828: 18 04 1b 04  	.word	0x041b0418
 800382c: 1e 04 21 04  	.word	0x0421041e
 8003830: 24 04 6e 05  	.word	0x056e0424
 8003834: 71 05 27 04  	.word	0x04270571
 8003838: 74 05 77 05  	.word	0x05770574
 800383c: 2a 04 2d 04  	.word	0x042d042a
 8003840: 30 04 34 04  	.word	0x04340430
 8003844: 7a 05 37 04  	.word	0x0437057a
 8003848: 3a 04 3d 04  	.word	0x043d043a
 800384c: 40 04 43 04  	.word	0x04430440
 8003850: 46 04 49 04  	.word	0x04490446
 8003854: 7d 05 4c 04  	.word	0x044c057d
 8003858: 4f 04 52 04  	.word	0x0452044f
 800385c: 55 04 58 04  	.word	0x04580455
 8003860: 5b 04 5e 04  	.word	0x045e045b
 8003864: 61 04 64 04  	.word	0x04640461
 8003868: 67 04 6a 04  	.word	0x046a0467
 800386c: 80 05 6d 04  	.word	0x046d0580
 8003870: 70 04 73 04  	.word	0x04730470
 8003874: 76 04 79 04  	.word	0x04790476
 8003878: 7c 04 7f 04  	.word	0x047f047c
 800387c: 82 04 85 04  	.word	0x04850482
 8003880: 88 04 8b 04  	.word	0x048b0488
 8003884: 8e 04 91 04  	.word	0x0491048e
 8003888: 94 04 97 04  	.word	0x04970494
 800388c: 9a 04 9d 04  	.word	0x049d049a
 8003890: a0 04 a3 04  	.word	0x04a304a0
 8003894: a6 04 a9 04  	.word	0x04a904a6
 8003898: ac 04 af 04  	.word	0x04af04ac
 800389c: b2 04 b5 04  	.word	0x04b504b2
 80038a0: b8 04	.short	0x04b8

080038a2 <$t.70>:
 80038a2:      	movs	r2, #0x32
 80038a4:      	muls	r6, r2, r6
 80038a6:      	b.w	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x910
 80038aa:      	movs	r2, #0x3d
 80038ac:      	muls	r6, r2, r6
 80038ae:      	b.w	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x908
 80038b2:      	rsb	r2, r6, r6, lsl #5
 80038b6:      	lsls	r6, r2, #0x1
 80038b8:      	b.w	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x8fe
 80038bc:      	movs	r2, #0x4a
 80038be:      	muls	r6, r2, r6
 80038c0:      	b.w	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x8f6
 80038c4:      	movs	r2, #0x53
 80038c6:      	muls	r6, r2, r6
 80038c8:      	b.w	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x8ee
 80038cc:      	movs	r2, #0x7d
 80038ce:      	muls	r6, r2, r6
 80038d0:      	b.w	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x8e6
 80038d4:      	movs	r2, #0x86
 80038d6:      	muls	r6, r2, r6
 80038d8:      	b.w	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x8de
 80038dc:      	movs	r2, #0x35
 80038de:      	muls	r6, r2, r6
 80038e0:      	b.w	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x8d6
 80038e4:      	movs	r2, #0x36
 80038e6:      	muls	r6, r2, r6
 80038e8:      	b.w	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x8ce
 80038ec:      	movs	r2, #0x37
 80038ee:      	muls	r6, r2, r6
 80038f0:      	b.w	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x8c6
 80038f4:      	movs	r2, #0x39
 80038f6:      	muls	r6, r2, r6
 80038f8:      	b.w	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x8be
 80038fc:      	movs	r2, #0x43
 80038fe:      	muls	r6, r2, r6
 8003900:      	b.w	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x8b6
 8003904:      	movs	r2, #0x4b
 8003906:      	muls	r6, r2, r6
 8003908:      	b.w	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x8ae
 800390c:      	movs	r2, #0x4e
 800390e:      	muls	r6, r2, r6
 8003910:      	b.w	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x8a6
 8003914:      	movs	r2, #0x56
 8003916:      	muls	r6, r2, r6
 8003918:      	b.w	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x89e
 800391c:      	movs	r2, #0x72
 800391e:      	muls	r6, r2, r6
 8003920:      	b.w	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x896
 8003924:      	movs	r2, #0x7b
 8003926:      	muls	r6, r2, r6
 8003928:      	b.w	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x88e
 800392c:      	add.w	r2, r6, r6, lsl #4
 8003930:      	lsls	r6, r2, #0x3
 8003932:      	b.w	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x884
 8003936:      	movs	r2, #0x8a
 8003938:      	muls	r6, r2, r6
 800393a:      	b.w	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x87c
 800393e:      	movs	r2, #0x98
 8003940:      	muls	r6, r2, r6
 8003942:      	b.w	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x874
 8003946:      	movs	r2, #0x9c
 8003948:      	muls	r6, r2, r6
 800394a:      	b.w	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x86c
 800394e:      	movs	r2, #0x9f
 8003950:      	muls	r6, r2, r6
 8003952:      	b.w	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x864
 8003956:      	movs	r2, #0xa4
 8003958:      	muls	r6, r2, r6
 800395a:      	b.w	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x85c
 800395e:      	movs	r2, #0xa5
 8003960:      	muls	r6, r2, r6
 8003962:      	b.w	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x854
 8003966:      	movs	r2, #0xae
 8003968:      	muls	r6, r2, r6
 800396a:      	b.w	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x84c
 800396e:      	movs	r2, #0xb0
 8003970:      	muls	r6, r2, r6
 8003972:      	b.w	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x844
 8003976:      	movs	r2, #0xb2
 8003978:      	muls	r6, r2, r6
 800397a:      	b.w	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x83c
 800397e:      	movs	r2, #0xb4
 8003980:      	muls	r6, r2, r6
 8003982:      	b.w	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x834
 8003986:      	movs	r2, #0xb5
 8003988:      	muls	r6, r2, r6
 800398a:      	b.w	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x82c
 800398e:      	movs	r2, #0xb7
 8003990:      	muls	r6, r2, r6
 8003992:      	b.w	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x824
 8003996:      	add.w	r2, r6, r6, lsl #1
 800399a:      	lsls	r6, r2, #0x6
 800399c:      	b.w	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x81a
 80039a0:      	movs	r2, #0xc1
 80039a2:      	muls	r6, r2, r6
 80039a4:      	b.w	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x812
 80039a8:      	movs	r2, #0xc3
 80039aa:      	muls	r6, r2, r6
 80039ac:      	b.w	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x80a
 80039b0:      	movs	r2, #0xc7
 80039b2:      	muls	r6, r2, r6
 80039b4:      	b.w	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x802
 80039b8:      	movs	r2, #0xd1
 80039ba:      	muls	r6, r2, r6
 80039bc:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x7fa
 80039be:      	movs	r2, #0xd2
 80039c0:      	muls	r6, r2, r6
 80039c2:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x7f4
 80039c4:      	movs	r2, #0xd4
 80039c6:      	muls	r6, r2, r6
 80039c8:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x7ee
 80039ca:      	movs	r2, #0xf3
 80039cc:      	muls	r6, r2, r6
 80039ce:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x7e8
 80039d0:      	rsb	r2, r6, r6, lsl #6
 80039d4:      	lsls	r6, r2, #0x2
 80039d6:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x7e0
 80039d8:      	movs	r2, #0x3b
 80039da:      	muls	r6, r2, r6
 80039dc:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x7da
 80039de:      	rsb	r2, r6, r6, lsl #4
 80039e2:      	lsls	r6, r2, #0x2
 80039e4:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x7d2
 80039e6:      	rsb	r6, r6, r6, lsl #6
 80039ea:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x7cc
 80039ec:      	lsls	r6, r6, #0x6
 80039ee:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x7c8
 80039f0:      	add.w	r2, r6, r6, lsl #4
 80039f4:      	lsls	r6, r2, #0x2
 80039f6:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x7c0
 80039f8:      	movs	r2, #0x51
 80039fa:      	muls	r6, r2, r6
 80039fc:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x7ba
 80039fe:      	movs	r2, #0x63
 8003a00:      	muls	r6, r2, r6
 8003a02:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x7b4
 8003a04:      	movs	r2, #0x64
 8003a06:      	muls	r6, r2, r6
 8003a08:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x7ae
 8003a0a:      	movs	r2, #0x6f
 8003a0c:      	muls	r6, r2, r6
 8003a0e:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x7a8
 8003a10:      	rsb	r2, r6, r6, lsl #6
 8003a14:      	lsls	r6, r2, #0x1
 8003a16:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x7a0
 8003a18:      	add.w	r2, r6, r6, lsl #6
 8003a1c:      	lsls	r6, r2, #0x1
 8003a1e:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x798
 8003a20:      	movs	r2, #0x85
 8003a22:      	muls	r6, r2, r6
 8003a24:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x792
 8003a26:      	movs	r2, #0x8c
 8003a28:      	muls	r6, r2, r6
 8003a2a:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x78c
 8003a2c:      	movs	r2, #0x9d
 8003a2e:      	muls	r6, r2, r6
 8003a30:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x786
 8003a32:      	movs	r2, #0xa7
 8003a34:      	muls	r6, r2, r6
 8003a36:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x780
 8003a38:      	movs	r2, #0xa9
 8003a3a:      	muls	r6, r2, r6
 8003a3c:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x77a
 8003a3e:      	movs	r2, #0xac
 8003a40:      	muls	r6, r2, r6
 8003a42:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x774
 8003a44:      	movs	r2, #0xb6
 8003a46:      	muls	r6, r2, r6
 8003a48:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x76e
 8003a4a:      	movs	r2, #0xba
 8003a4c:      	muls	r6, r2, r6
 8003a4e:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x768
 8003a50:      	movs	r2, #0xcc
 8003a52:      	muls	r6, r2, r6
 8003a54:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x762
 8003a56:      	movs	r2, #0xd0
 8003a58:      	muls	r6, r2, r6
 8003a5a:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x75c
 8003a5c:      	movs	r2, #0xd3
 8003a5e:      	muls	r6, r2, r6
 8003a60:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x756
 8003a62:      	movs	r2, #0xde
 8003a64:      	muls	r6, r2, r6
 8003a66:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x750
 8003a68:      	movs	r2, #0xdf
 8003a6a:      	muls	r6, r2, r6
 8003a6c:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x74a
 8003a6e:      	movs	r2, #0xe1
 8003a70:      	muls	r6, r2, r6
 8003a72:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x744
 8003a74:      	movs	r2, #0xe5
 8003a76:      	muls	r6, r2, r6
 8003a78:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x73e
 8003a7a:      	movs	r2, #0xee
 8003a7c:      	muls	r6, r2, r6
 8003a7e:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x738
 8003a80:      	movs	r2, #0xf1
 8003a82:      	muls	r6, r2, r6
 8003a84:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x732
 8003a86:      	movs	r2, #0xf6
 8003a88:      	muls	r6, r2, r6
 8003a8a:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x72c
 8003a8c:      	rsb	r2, r6, r6, lsl #5
 8003a90:      	lsls	r6, r2, #0x3
 8003a92:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x724
 8003a94:      	movs	r2, #0xf9
 8003a96:      	muls	r6, r2, r6
 8003a98:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x71e
 8003a9a:      	movs	r2, #0xfb
 8003a9c:      	muls	r6, r2, r6
 8003a9e:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x718
 8003aa0:      	movs	r2, #0xfd
 8003aa2:      	muls	r6, r2, r6
 8003aa4:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x712
 8003aa6:      	add.w	r6, r6, r6, lsl #8
 8003aaa:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x70c
 8003aac:      	movw	r2, #0x107
 8003ab0:      	muls	r6, r2, r6
 8003ab2:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x704
 8003ab4:      	movw	r2, #0x109
 8003ab8:      	muls	r6, r2, r6
 8003aba:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x6fc
 8003abc:      	mov.w	r2, #0x10a
 8003ac0:      	muls	r6, r2, r6
 8003ac2:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x6f4
 8003ac4:      	add.w	r2, r6, r6, lsl #4
 8003ac8:      	lsls	r6, r2, #0x4
 8003aca:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x6ec
 8003acc:      	movw	r2, #0x113
 8003ad0:      	muls	r6, r2, r6
 8003ad2:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x6e4
 8003ad4:      	movw	r2, #0x11b
 8003ad8:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x6dc
 8003ada:      	movw	r2, #0x11d
 8003ade:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x6d6
 8003ae0:      	mov.w	r2, #0x126
 8003ae4:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x6d0
 8003ae6:      	movw	r2, #0x127
 8003aea:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x6ca
 8003aec:      	mov.w	r2, #0x12c
 8003af0:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x6c4
 8003af2:      	movw	r2, #0x12d
 8003af6:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x6be
 8003af8:      	movw	r2, #0x135
 8003afc:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x6b8
 8003afe:      	mov.w	r2, #0x136
 8003b02:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x6b2
 8003b04:      	mov.w	r2, #0x142
 8003b08:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x6ac
 8003b0a:      	movw	r2, #0x143
 8003b0e:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x6a6
 8003b10:      	mov.w	r2, #0x146
 8003b14:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x6a0
 8003b16:      	movw	r2, #0x155
 8003b1a:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x69a
 8003b1c:      	mov.w	r2, #0x15c
 8003b20:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x694
 8003b22:      	movw	r2, #0x15d
 8003b26:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x68e
 8003b28:      	movs	r2, #0x33
 8003b2a:      	muls	r6, r2, r6
 8003b2c:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x68a
 8003b2e:      	movs	r2, #0x34
 8003b30:      	muls	r6, r2, r6
 8003b32:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x684
 8003b34:      	movs	r2, #0x46
 8003b36:      	muls	r6, r2, r6
 8003b38:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x67e
 8003b3a:      	movs	r2, #0x4f
 8003b3c:      	muls	r6, r2, r6
 8003b3e:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x678
 8003b40:      	movs	r2, #0x52
 8003b42:      	muls	r6, r2, r6
 8003b44:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x672
 8003b46:      	movs	r2, #0x55
 8003b48:      	muls	r6, r2, r6
 8003b4a:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x66c
 8003b4c:      	movs	r2, #0x59
 8003b4e:      	muls	r6, r2, r6
 8003b50:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x666
 8003b52:      	movs	r2, #0x5b
 8003b54:      	muls	r6, r2, r6
 8003b56:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x660
 8003b58:      	movs	r2, #0x5c
 8003b5a:      	muls	r6, r2, r6
 8003b5c:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x65a
 8003b5e:      	movs	r2, #0x5e
 8003b60:      	muls	r6, r2, r6
 8003b62:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x654
 8003b64:      	movs	r2, #0x5f
 8003b66:      	muls	r6, r2, r6
 8003b68:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x64e
 8003b6a:      	movs	r2, #0x62
 8003b6c:      	muls	r6, r2, r6
 8003b6e:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x648
 8003b70:      	movs	r2, #0x66
 8003b72:      	muls	r6, r2, r6
 8003b74:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x642
 8003b76:      	movs	r2, #0x68
 8003b78:      	muls	r6, r2, r6
 8003b7a:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x63c
 8003b7c:      	movs	r2, #0x6c
 8003b7e:      	muls	r6, r2, r6
 8003b80:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x636
 8003b82:      	movs	r2, #0x6d
 8003b84:      	muls	r6, r2, r6
 8003b86:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x630
 8003b88:      	movs	r2, #0x77
 8003b8a:      	muls	r6, r2, r6
 8003b8c:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x62a
 8003b8e:      	lsls	r6, r6, #0x7
 8003b90:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x626
 8003b92:      	add.w	r6, r6, r6, lsl #7
 8003b96:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x620
 8003b98:      	movs	r2, #0x83
 8003b9a:      	muls	r6, r2, r6
 8003b9c:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x61a
 8003b9e:      	movs	r2, #0x87
 8003ba0:      	muls	r6, r2, r6
 8003ba2:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x614
 8003ba4:      	movs	r2, #0x8e
 8003ba6:      	muls	r6, r2, r6
 8003ba8:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x60e
 8003baa:      	movs	r2, #0x8f
 8003bac:      	muls	r6, r2, r6
 8003bae:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x608
 8003bb0:      	movs	r2, #0x9a
 8003bb2:      	muls	r6, r2, r6
 8003bb4:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x602
 8003bb6:      	movs	r2, #0xa2
 8003bb8:      	muls	r6, r2, r6
 8003bba:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x5fc
 8003bbc:      	movs	r2, #0xa6
 8003bbe:      	muls	r6, r2, r6
 8003bc0:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x5f6
 8003bc2:      	movs	r2, #0xa8
 8003bc4:      	muls	r6, r2, r6
 8003bc6:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x5f0
 8003bc8:      	movs	r2, #0xaf
 8003bca:      	muls	r6, r2, r6
 8003bcc:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x5ea
 8003bce:      	movs	r2, #0xb1
 8003bd0:      	muls	r6, r2, r6
 8003bd2:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x5e4
 8003bd4:      	movs	r2, #0xb3
 8003bd6:      	muls	r6, r2, r6
 8003bd8:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x5de
 8003bda:      	movs	r2, #0xc5
 8003bdc:      	muls	r6, r2, r6
 8003bde:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x5d8
 8003be0:      	movs	r2, #0xc8
 8003be2:      	muls	r6, r2, r6
 8003be4:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x5d2
 8003be6:      	movs	r2, #0xc9
 8003be8:      	muls	r6, r2, r6
 8003bea:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x5cc
 8003bec:      	movs	r2, #0xca
 8003bee:      	muls	r6, r2, r6
 8003bf0:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x5c6
 8003bf2:      	movs	r2, #0xcd
 8003bf4:      	muls	r6, r2, r6
 8003bf6:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x5c0
 8003bf8:      	movs	r2, #0xcf
 8003bfa:      	muls	r6, r2, r6
 8003bfc:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x5ba
 8003bfe:      	movs	r2, #0xd8
 8003c00:      	muls	r6, r2, r6
 8003c02:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x5b4
 8003c04:      	movs	r2, #0xd9
 8003c06:      	muls	r6, r2, r6
 8003c08:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x5ae
 8003c0a:      	movs	r2, #0xda
 8003c0c:      	muls	r6, r2, r6
 8003c0e:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x5a8
 8003c10:      	movs	r2, #0xdc
 8003c12:      	muls	r6, r2, r6
 8003c14:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x5a2
 8003c16:      	movs	r2, #0xdd
 8003c18:      	muls	r6, r2, r6
 8003c1a:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x59c
 8003c1c:      	movs	r2, #0xe3
 8003c1e:      	muls	r6, r2, r6
 8003c20:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x596
 8003c22:      	movs	r2, #0xe4
 8003c24:      	muls	r6, r2, r6
 8003c26:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x590
 8003c28:      	movs	r2, #0xeb
 8003c2a:      	muls	r6, r2, r6
 8003c2c:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x58a
 8003c2e:      	movs	r2, #0xf2
 8003c30:      	muls	r6, r2, r6
 8003c32:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x584
 8003c34:      	movs	r2, #0xf7
 8003c36:      	muls	r6, r2, r6
 8003c38:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x57e
 8003c3a:      	rsb	r6, r6, r6, lsl #8
 8003c3e:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x578
 8003c40:      	lsls	r6, r6, #0x8
 8003c42:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x574
 8003c44:      	movw	r2, #0x103
 8003c48:      	muls	r6, r2, r6
 8003c4a:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x56c
 8003c4c:      	movw	r2, #0x105
 8003c50:      	muls	r6, r2, r6
 8003c52:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x564
 8003c54:      	mov.w	r2, #0x106
 8003c58:      	muls	r6, r2, r6
 8003c5a:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x55c
 8003c5c:      	add.w	r2, r6, r6, lsl #5
 8003c60:      	lsls	r6, r2, #0x3
 8003c62:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x554
 8003c64:      	movw	r2, #0x10f
 8003c68:      	muls	r6, r2, r6
 8003c6a:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x54c
 8003c6c:      	movw	r2, #0x111
 8003c70:      	muls	r6, r2, r6
 8003c72:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x544
 8003c74:      	mov.w	r2, #0x114
 8003c78:      	muls	r6, r2, r6
 8003c7a:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x53c
 8003c7c:      	movw	r2, #0x115
 8003c80:      	muls	r6, r2, r6
 8003c82:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x534
 8003c84:      	movw	r2, #0x117
 8003c88:      	muls	r6, r2, r6
 8003c8a:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x52c
 8003c8c:      	mov.w	r2, #0x118
 8003c90:      	muls	r6, r2, r6
 8003c92:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x524
 8003c94:      	movw	r2, #0x119
 8003c98:      	muls	r6, r2, r6
 8003c9a:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x51c
 8003c9c:      	mov.w	r2, #0x11a
 8003ca0:      	muls	r6, r2, r6
 8003ca2:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x514
 8003ca4:      	mov.w	r2, #0x11c
 8003ca8:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x50c
 8003caa:      	add.w	r2, r6, r6, lsl #3
 8003cae:      	lsls	r6, r2, #0x5
 8003cb0:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x506
 8003cb2:      	movw	r2, #0x121
 8003cb6:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x4fe
 8003cb8:      	movw	r2, #0x125
 8003cbc:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x4f8
 8003cbe:      	movw	r2, #0x129
 8003cc2:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x4f2
 8003cc4:      	mov.w	r2, #0x12e
 8003cc8:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x4ec
 8003cca:      	movw	r2, #0x12f
 8003cce:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x4e6
 8003cd0:      	mov.w	r2, #0x130
 8003cd4:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x4e0
 8003cd6:      	movw	r2, #0x131
 8003cda:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x4da
 8003cdc:      	mov.w	r2, #0x132
 8003ce0:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x4d4
 8003ce2:      	movw	r2, #0x133
 8003ce6:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x4ce
 8003ce8:      	movw	r2, #0x137
 8003cec:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x4c8
 8003cee:      	mov.w	r2, #0x138
 8003cf2:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x4c2
 8003cf4:      	movw	r2, #0x139
 8003cf8:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x4bc
 8003cfa:      	mov.w	r2, #0x13a
 8003cfe:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x4b6
 8003d00:      	movw	r2, #0x13b
 8003d04:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x4b0
 8003d06:      	mov.w	r2, #0x13c
 8003d0a:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x4aa
 8003d0c:      	movw	r2, #0x13d
 8003d10:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x4a4
 8003d12:      	mov.w	r2, #0x13e
 8003d16:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x49e
 8003d18:      	movw	r2, #0x13f
 8003d1c:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x498
 8003d1e:      	add.w	r2, r6, r6, lsl #2
 8003d22:      	lsls	r6, r2, #0x6
 8003d24:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x492
 8003d26:      	mov.w	r2, #0x144
 8003d2a:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x48a
 8003d2c:      	movw	r2, #0x145
 8003d30:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x484
 8003d32:      	movw	r2, #0x147
 8003d36:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x47e
 8003d38:      	mov.w	r2, #0x14a
 8003d3c:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x478
 8003d3e:      	mov.w	r2, #0x14e
 8003d42:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x472
 8003d44:      	mov.w	r2, #0x150
 8003d48:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x46c
 8003d4a:      	mov.w	r2, #0x152
 8003d4e:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x466
 8003d50:      	movw	r2, #0x153
 8003d54:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x460
 8003d56:      	mov.w	r2, #0x154
 8003d5a:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x45a
 8003d5c:      	mov.w	r2, #0x158
 8003d60:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x454
 8003d62:      	mov.w	r2, #0x15a
 8003d66:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x44e
 8003d68:      	movw	r2, #0x15b
 8003d6c:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x448
 8003d6e:      	mov.w	r2, #0x15e
 8003d72:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x442
 8003d74:      	movw	r2, #0x15f
 8003d78:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x43c
 8003d7a:      	mov.w	r2, #0x160
 8003d7e:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x436
 8003d80:      	movw	r2, #0x161
 8003d84:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x430
 8003d86:      	movw	r2, #0x163
 8003d8a:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x42a
 8003d8c:      	mov.w	r2, #0x164
 8003d90:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x424
 8003d92:      	movw	r2, #0x165
 8003d96:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x41e
 8003d98:      	movw	r2, #0x169
 8003d9c:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x418
 8003d9e:      	mov.w	r2, #0x16a
 8003da2:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x412
 8003da4:      	movw	r2, #0x16b
 8003da8:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x40c
 8003daa:      	movw	r2, #0x16d
 8003dae:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x406
 8003db0:      	mov.w	r2, #0x16e
 8003db4:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x400
 8003db6:      	movw	r2, #0x16f
 8003dba:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x3fa
 8003dbc:      	mov.w	r2, #0x170
 8003dc0:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x3f4
 8003dc2:      	movw	r2, #0x171
 8003dc6:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x3ee
 8003dc8:      	mov.w	r2, #0x172
 8003dcc:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x3e8
 8003dce:      	movw	r2, #0x173
 8003dd2:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x3e2
 8003dd4:      	mov.w	r2, #0x174
 8003dd8:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x3dc
 8003dda:      	movw	r2, #0x175
 8003dde:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x3d6
 8003de0:      	mov.w	r2, #0x176
 8003de4:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x3d0
 8003de6:      	movw	r2, #0x177
 8003dea:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x3ca
 8003dec:      	mov.w	r2, #0x178
 8003df0:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x3c4
 8003df2:      	movw	r2, #0x17b
 8003df6:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x3be
 8003df8:      	mov.w	r2, #0x17e
 8003dfc:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x3b8
 8003dfe:      	movw	r2, #0x17f
 8003e02:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x3b2
 8003e04:      	add.w	r2, r6, r6, lsl #1
 8003e08:      	lsls	r6, r2, #0x7
 8003e0a:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x3ac
 8003e0c:      	movw	r2, #0x181
 8003e10:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x3a4
 8003e12:      	movw	r2, #0x183
 8003e16:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x39e
 8003e18:      	mov.w	r2, #0x184
 8003e1c:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x398
 8003e1e:      	movw	r2, #0x185
 8003e22:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x392
 8003e24:      	mov.w	r2, #0x186
 8003e28:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x38c
 8003e2a:      	movw	r2, #0x187
 8003e2e:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x386
 8003e30:      	mov.w	r2, #0x188
 8003e34:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x380
 8003e36:      	movw	r2, #0x189
 8003e3a:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x37a
 8003e3c:      	movw	r2, #0x18b
 8003e40:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x374
 8003e42:      	mov.w	r2, #0x18c
 8003e46:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x36e
 8003e48:      	movw	r2, #0x18d
 8003e4c:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x368
 8003e4e:      	mov.w	r2, #0x18e
 8003e52:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x362
 8003e54:      	movw	r2, #0x18f
 8003e58:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x35c
 8003e5a:      	mov.w	r2, #0x190
 8003e5e:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x356
 8003e60:      	movw	r2, #0x191
 8003e64:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x350
 8003e66:      	mov.w	r2, #0x192
 8003e6a:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x34a
 8003e6c:      	movw	r2, #0x193
 8003e70:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x344
 8003e72:      	mov.w	r2, #0x194
 8003e76:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x33e
 8003e78:      	movw	r2, #0x195
 8003e7c:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x338
 8003e7e:      	movw	r2, #0x197
 8003e82:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x332
 8003e84:      	mov.w	r2, #0x198
 8003e88:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x32c
 8003e8a:      	movw	r2, #0x199
 8003e8e:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x326
 8003e90:      	mov.w	r2, #0x19a
 8003e94:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x320
 8003e96:      	movw	r2, #0x19b
 8003e9a:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x31a
 8003e9c:      	mov.w	r2, #0x19c
 8003ea0:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x314
 8003ea2:      	movw	r2, #0x19d
 8003ea6:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x30e
 8003ea8:      	mov.w	r2, #0x19e
 8003eac:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x308
 8003eae:      	movw	r2, #0x19f
 8003eb2:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x302
 8003eb4:      	mov.w	r2, #0x1a0
 8003eb8:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x2fc
 8003eba:      	movw	r2, #0x1a1
 8003ebe:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x2f6
 8003ec0:      	mov.w	r2, #0x1a2
 8003ec4:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x2f0
 8003ec6:      	movw	r2, #0x1a3
 8003eca:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x2ea
 8003ecc:      	mov.w	r2, #0x1a4
 8003ed0:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x2e4
 8003ed2:      	movw	r2, #0x1a5
 8003ed6:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x2de
 8003ed8:      	mov.w	r2, #0x1a6
 8003edc:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x2d8
 8003ede:      	movw	r2, #0x1a7
 8003ee2:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x2d2
 8003ee4:      	mov.w	r2, #0x1a8
 8003ee8:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x2cc
 8003eea:      	movw	r2, #0x1a9
 8003eee:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x2c6
 8003ef0:      	mov.w	r2, #0x1aa
 8003ef4:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x2c0
 8003ef6:      	movw	r2, #0x1ab
 8003efa:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x2ba
 8003efc:      	mov.w	r2, #0x1ac
 8003f00:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x2b4
 8003f02:      	movw	r2, #0x1ad
 8003f06:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x2ae
 8003f08:      	mov.w	r2, #0x1ae
 8003f0c:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x2a8
 8003f0e:      	movw	r2, #0x1af
 8003f12:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x2a2
 8003f14:      	mov.w	r2, #0x1b0
 8003f18:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x29c
 8003f1a:      	rsb	r2, r6, r6, lsl #3
 8003f1e:      	lsls	r6, r2, #0x3
 8003f20:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x296
 8003f22:      	movs	r2, #0x3a
 8003f24:      	muls	r6, r2, r6
 8003f26:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x290
 8003f28:      	add.w	r2, r6, r6, lsl #5
 8003f2c:      	lsls	r6, r2, #0x1
 8003f2e:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x288
 8003f30:      	add.w	r2, r6, r6, lsl #2
 8003f34:      	lsls	r6, r2, #0x4
 8003f36:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x280
 8003f38:      	movs	r2, #0x57
 8003f3a:      	muls	r6, r2, r6
 8003f3c:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x27a
 8003f3e:      	add.w	r2, r6, r6, lsl #1
 8003f42:      	lsls	r6, r2, #0x5
 8003f44:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x272
 8003f46:      	movs	r2, #0x6b
 8003f48:      	muls	r6, r2, r6
 8003f4a:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x26c
 8003f4c:      	movs	r2, #0x6e
 8003f4e:      	muls	r6, r2, r6
 8003f50:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x266
 8003f52:      	rsb	r2, r6, r6, lsl #4
 8003f56:      	lsls	r6, r2, #0x3
 8003f58:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x25e
 8003f5a:      	movs	r2, #0x7a
 8003f5c:      	muls	r6, r2, r6
 8003f5e:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x258
 8003f60:      	add.w	r2, r6, r6, lsl #5
 8003f64:      	lsls	r6, r2, #0x2
 8003f66:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x250
 8003f68:      	movs	r2, #0x8b
 8003f6a:      	muls	r6, r2, r6
 8003f6c:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x24a
 8003f6e:      	movs	r2, #0x8d
 8003f70:      	muls	r6, r2, r6
 8003f72:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x244
 8003f74:      	movs	r2, #0x93
 8003f76:      	muls	r6, r2, r6
 8003f78:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x23e
 8003f7a:      	movs	r2, #0x95
 8003f7c:      	muls	r6, r2, r6
 8003f7e:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x238
 8003f80:      	movs	r2, #0xa3
 8003f82:      	muls	r6, r2, r6
 8003f84:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x232
 8003f86:      	movs	r2, #0xaa
 8003f88:      	muls	r6, r2, r6
 8003f8a:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x22c
 8003f8c:      	movs	r2, #0xc2
 8003f8e:      	muls	r6, r2, r6
 8003f90:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x226
 8003f92:      	movs	r2, #0xe2
 8003f94:      	muls	r6, r2, r6
 8003f96:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x220
 8003f98:      	movs	r2, #0xe6
 8003f9a:      	muls	r6, r2, r6
 8003f9c:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x21a
 8003f9e:      	movs	r2, #0xe7
 8003fa0:      	muls	r6, r2, r6
 8003fa2:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x214
 8003fa4:      	movs	r2, #0xe8
 8003fa6:      	muls	r6, r2, r6
 8003fa8:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x20e
 8003faa:      	movs	r2, #0xe9
 8003fac:      	muls	r6, r2, r6
 8003fae:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x208
 8003fb0:      	movs	r2, #0xea
 8003fb2:      	muls	r6, r2, r6
 8003fb4:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x202
 8003fb6:      	movs	r2, #0xec
 8003fb8:      	muls	r6, r2, r6
 8003fba:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x1fc
 8003fbc:      	movs	r2, #0xed
 8003fbe:      	muls	r6, r2, r6
 8003fc0:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x1f6
 8003fc2:      	rsb	r2, r6, r6, lsl #4
 8003fc6:      	lsls	r6, r2, #0x4
 8003fc8:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x1ee
 8003fca:      	movs	r2, #0xfa
 8003fcc:      	muls	r6, r2, r6
 8003fce:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x1e8
 8003fd0:      	add.w	r2, r6, r6, lsl #7
 8003fd4:      	lsls	r6, r2, #0x1
 8003fd6:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x1e0
 8003fd8:      	add.w	r2, r6, r6, lsl #6
 8003fdc:      	lsls	r6, r2, #0x2
 8003fde:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x1d8
 8003fe0:      	mov.w	r2, #0x10e
 8003fe4:      	muls	r6, r2, r6
 8003fe6:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x1d0
 8003fe8:      	mov.w	r2, #0x116
 8003fec:      	muls	r6, r2, r6
 8003fee:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x1c8
 8003ff0:      	mov.w	r2, #0x11e
 8003ff4:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x1c0
 8003ff6:      	movw	r2, #0x11f
 8003ffa:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x1ba
 8003ffc:      	mov.w	r2, #0x122
 8004000:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x1b4
 8004002:      	movw	r2, #0x123
 8004006:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x1ae
 8004008:      	mov.w	r2, #0x128
 800400c:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x1a8
 800400e:      	mov.w	r2, #0x12a
 8004012:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x1a2
 8004014:      	movw	r2, #0x12b
 8004018:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x19c
 800401a:      	mov.w	r2, #0x134
 800401e:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x196
 8004020:      	movw	r2, #0x141
 8004024:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x190
 8004026:      	mov.w	r2, #0x148
 800402a:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x18a
 800402c:      	movw	r2, #0x149
 8004030:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x184
 8004032:      	movw	r2, #0x14b
 8004036:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x17e
 8004038:      	mov.w	r2, #0x14c
 800403c:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x178
 800403e:      	movw	r2, #0x14d
 8004042:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x172
 8004044:      	movw	r2, #0x14f
 8004048:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x16c
 800404a:      	movw	r2, #0x151
 800404e:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x166
 8004050:      	mov.w	r2, #0x156
 8004054:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x160
 8004056:      	movw	r2, #0x157
 800405a:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x15a
 800405c:      	movw	r2, #0x159
 8004060:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x154
 8004062:      	mov.w	r2, #0x162
 8004066:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x14e
 8004068:      	mov.w	r2, #0x166
 800406c:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x148
 800406e:      	movw	r2, #0x167
 8004072:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x142
 8004074:      	mov.w	r2, #0x168
 8004078:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x13c
 800407a:      	mov.w	r2, #0x16c
 800407e:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x136
 8004080:      	movw	r2, #0x179
 8004084:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x130
 8004086:      	mov.w	r2, #0x17a
 800408a:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x12a
 800408c:      	mov.w	r2, #0x17c
 8004090:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x124
 8004092:      	movw	r2, #0x17d
 8004096:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x11e
 8004098:      	mov.w	r2, #0x182
 800409c:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x118
 800409e:      	mov.w	r2, #0x18a
 80040a2:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x112
 80040a4:      	mov.w	r2, #0x196
 80040a8:      	b	0x80041b8 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102c> @ imm = #0x10c
 80040aa:      	movs	r2, #0x47
 80040ac:      	muls	r6, r2, r6
 80040ae:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x108
 80040b0:      	add.w	r2, r6, r6, lsl #3
 80040b4:      	lsls	r6, r2, #0x3
 80040b6:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x100
 80040b8:      	movs	r2, #0x54
 80040ba:      	muls	r6, r2, r6
 80040bc:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0xfa
 80040be:      	movs	r2, #0x58
 80040c0:      	muls	r6, r2, r6
 80040c2:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0xf4
 80040c4:      	movs	r2, #0x5a
 80040c6:      	muls	r6, r2, r6
 80040c8:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0xee
 80040ca:      	movs	r2, #0x65
 80040cc:      	muls	r6, r2, r6
 80040ce:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0xe8
 80040d0:      	movs	r2, #0x67
 80040d2:      	muls	r6, r2, r6
 80040d4:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0xe2
 80040d6:      	movs	r2, #0x69
 80040d8:      	muls	r6, r2, r6
 80040da:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0xdc
 80040dc:      	movs	r2, #0x6a
 80040de:      	muls	r6, r2, r6
 80040e0:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0xd6
 80040e2:      	rsb	r2, r6, r6, lsl #3
 80040e6:      	lsls	r6, r2, #0x4
 80040e8:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0xce
 80040ea:      	movs	r2, #0x73
 80040ec:      	muls	r6, r2, r6
 80040ee:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0xc8
 80040f0:      	movs	r2, #0x75
 80040f2:      	muls	r6, r2, r6
 80040f4:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0xc2
 80040f6:      	rsb	r2, r6, r6, lsl #5
 80040fa:      	lsls	r6, r2, #0x2
 80040fc:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0xba
 80040fe:      	movs	r2, #0x89
 8004100:      	muls	r6, r2, r6
 8004102:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0xb4
 8004104:      	add.w	r2, r6, r6, lsl #3
 8004108:      	lsls	r6, r2, #0x4
 800410a:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0xac
 800410c:      	movs	r2, #0x94
 800410e:      	muls	r6, r2, r6
 8004110:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0xa6
 8004112:      	movs	r2, #0x97
 8004114:      	muls	r6, r2, r6
 8004116:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0xa0
 8004118:      	movs	r2, #0x9b
 800411a:      	muls	r6, r2, r6
 800411c:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x9a
 800411e:      	movs	r2, #0xb8
 8004120:      	muls	r6, r2, r6
 8004122:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x94
 8004124:      	movs	r2, #0xb9
 8004126:      	muls	r6, r2, r6
 8004128:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x8e
 800412a:      	movs	r2, #0xbb
 800412c:      	muls	r6, r2, r6
 800412e:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x88
 8004130:      	movs	r2, #0xbc
 8004132:      	muls	r6, r2, r6
 8004134:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x82
 8004136:      	movs	r2, #0xbe
 8004138:      	muls	r6, r2, r6
 800413a:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x7c
 800413c:      	movs	r2, #0xbf
 800413e:      	muls	r6, r2, r6
 8004140:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x76
 8004142:      	movs	r2, #0xc4
 8004144:      	muls	r6, r2, r6
 8004146:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x70
 8004148:      	movs	r2, #0xc6
 800414a:      	muls	r6, r2, r6
 800414c:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x6a
 800414e:      	movs	r2, #0xcb
 8004150:      	muls	r6, r2, r6
 8004152:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x64
 8004154:      	movs	r2, #0xce
 8004156:      	muls	r6, r2, r6
 8004158:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x5e
 800415a:      	movs	r2, #0xd5
 800415c:      	muls	r6, r2, r6
 800415e:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x58
 8004160:      	movs	r2, #0xd6
 8004162:      	muls	r6, r2, r6
 8004164:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x52
 8004166:      	movs	r2, #0xd7
 8004168:      	muls	r6, r2, r6
 800416a:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x4c
 800416c:      	movs	r2, #0xdb
 800416e:      	muls	r6, r2, r6
 8004170:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x46
 8004172:      	rsb	r2, r6, r6, lsl #3
 8004176:      	lsls	r6, r2, #0x5
 8004178:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x3e
 800417a:      	movs	r2, #0xef
 800417c:      	muls	r6, r2, r6
 800417e:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x38
 8004180:      	movs	r2, #0xf4
 8004182:      	muls	r6, r2, r6
 8004184:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x32
 8004186:      	movs	r2, #0xf5
 8004188:      	muls	r6, r2, r6
 800418a:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x2c
 800418c:      	rsb	r2, r6, r6, lsl #7
 8004190:      	lsls	r6, r2, #0x1
 8004192:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x24
 8004194:      	movw	r2, #0x10b
 8004198:      	muls	r6, r2, r6
 800419a:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x1c
 800419c:      	mov.w	r2, #0x10c
 80041a0:      	muls	r6, r2, r6
 80041a2:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x14
 80041a4:      	movw	r2, #0x10d
 80041a8:      	muls	r6, r2, r6
 80041aa:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0xc
 80041ac:      	mov.w	r2, #0x112
 80041b0:      	muls	r6, r2, r6
 80041b2:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #0x4
 80041b4:      	mov.w	r2, #0x124
 80041b8:      	muls	r6, r2, r6
 80041ba:      	movw	r2, #0x1f00
 80041be:      	movw	r3, #0xeb01
 80041c2:      	movt	r2, #0xfa0a
 80041c6:      	movt	r3, #0x13c9
 80041ca:      	add	r2, r6
 80041cc:      	cmp	r2, r3
 80041ce:      	bhs.w	0x8004536 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x13aa> @ imm = #0x364
 80041d2:      	cmp.w	lr, #0x4
 80041d6:      	bne	0x8004202 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x1076> @ imm = #0x28
 80041d8:      	movs	r4, #0x0
 80041da:      	cmp.w	r10, #0x10
 80041de:      	str	r4, [sp, #0xc]
 80041e0:      	beq	0x8004230 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x10a4> @ imm = #0x4c
 80041e2:      	sub.w	r3, r10, #0x2
 80041e6:      	cmp	r3, #0xd
 80041e8:      	bhi.w	0x800456a <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x13de> @ imm = #0x37e
 80041ec:      	tbb	[pc, r3]

080041f0 <$d.71>:
 80041f0: 07 95 9a 9c  	.word	0x9c9a9507
 80041f4: 8b ba c5 a4  	.word	0xa4c5ba8b
 80041f8: c7 ac cc 90  	.word	0x90ccacc7
 80041fc: b1 d1	.short	0xd1b1

080041fe <$t.72>:
 80041fe:      	lsrs	r2, r6, #0x1
 8004200:      	b	0x80043a0 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x1214> @ imm = #0x19c
 8004202:      	tbb	[pc, lr]

08004206 <$d.73>:
 8004206: 02 0e 04 0c  	.word	0x0c040e02

0800420a <$t.74>:
 800420a:      	lsrs	r2, r6, #0x1
 800420c:      	b	0x8004224 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x1098> @ imm = #0x14
 800420e:      	movw	r2, #0xaaab
 8004212:      	movt	r2, #0xaaaa
 8004216:      	umull	r2, r3, r6, r2
 800421a:      	lsrs	r2, r3, #0x2
 800421c:      	b	0x8004224 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x1098> @ imm = #0x4
 800421e:      	lsrs	r2, r6, #0x3
 8004220:      	b	0x8004224 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x1098> @ imm = #0x0
 8004222:      	lsrs	r2, r6, #0x2
 8004224:      	movs	r4, #0x1
 8004226:      	str	r2, [sp, #0x8]
 8004228:      	cmp.w	r10, #0x10
 800422c:      	str	r4, [sp, #0xc]
 800422e:      	bne	0x80041e2 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x1056> @ imm = #-0x50
 8004230:      	movs	r5, #0x0
 8004232:      	cmp.w	r9, #0x8
 8004236:      	bne.w	0x80043ac <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x1220> @ imm = #0x172
 800423a:      	movs	r3, #0x0
 800423c:      	ldr	r2, [sp, #0x10]
 800423e:      	cmp	r2, #0x2
 8004240:      	beq.w	0x8004410 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x1284> @ imm = #0x1cc
 8004244:      	cmp	r2, #0x1
 8004246:      	bne	0x80042a4 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x1118> @ imm = #0x5a
 8004248:      	movw	r2, #0x7fc0
 800424c:      	movw	r4, #0x7fc0
 8004250:      	and.w	r2, r2, r8, lsl #6
 8004254:      	cmp.w	lr, #0x4
 8004258:      	it	ne
 800425a:      	orrne.w	r2, r2, lr, lsl #16
 800425e:      	cmp.w	r10, #0x10
 8004262:      	it	ne
 8004264:      	orrne.w	r2, r2, r10, lsl #24
 8004268:      	movt	r4, #0xfff
 800426c:      	ands	r4, r2
 800426e:      	cmp.w	r9, #0x8
 8004272:      	it	ne
 8004274:      	orrne.w	r2, r4, r9, lsl #28
 8004278:      	str.w	r2, [r1, #0x84]
 800427c:      	ldr	r2, [r1]
 800427e:      	orr	r2, r2, #0x4000000
 8004282:      	str	r2, [r1]
 8004284:      	ldr	r2, [r1]
 8004286:      	lsls	r2, r2, #0x4
 8004288:      	bmi.w	0x8004466 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x12da> @ imm = #0x1da
 800428c:      	ldr	r2, [r1]
 800428e:      	lsls	r2, r2, #0x4
 8004290:      	itt	pl
 8004292:      	ldrpl	r2, [r1]
 8004294:      	lslspl.w	r2, r2, #0x4
 8004298:      	bmi.w	0x8004466 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x12da> @ imm = #0x1ca
 800429c:      	ldr	r2, [r1]
 800429e:      	lsls	r2, r2, #0x4
 80042a0:      	bpl	0x8004284 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x10f8> @ imm = #-0x20
 80042a2:      	b	0x8004466 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x12da> @ imm = #0x1c0
 80042a4:      	movw	r2, #0x7fc0
 80042a8:      	movw	r4, #0x7fff
 80042ac:      	and.w	r2, r2, r8, lsl #6
 80042b0:      	cmp.w	lr, #0x4
 80042b4:      	orr.w	r2, r2, r11
 80042b8:      	movt	r4, #0xfff
 80042bc:      	orr.w	r2, r2, r12, lsl #22
 80042c0:      	it	ne
 80042c2:      	orrne.w	r2, r2, lr, lsl #16
 80042c6:      	cmp.w	r10, #0x10
 80042ca:      	it	ne
 80042cc:      	orrne.w	r2, r2, r10, lsl #24
 80042d0:      	ands	r4, r2
 80042d2:      	cmp.w	r9, #0x8
 80042d6:      	it	ne
 80042d8:      	orrne.w	r2, r4, r9, lsl #28
 80042dc:      	str	r2, [r1, #0x4]
 80042de:      	ldr	r2, [r1]
 80042e0:      	orr	r2, r2, #0x1000000
 80042e4:      	str	r2, [r1]
 80042e6:      	ldr	r2, [r1]
 80042e8:      	lsls	r2, r2, #0x6
 80042ea:      	bmi.w	0x8004466 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x12da> @ imm = #0x178
 80042ee:      	ldr	r2, [r1]
 80042f0:      	lsls	r2, r2, #0x6
 80042f2:      	itt	pl
 80042f4:      	ldrpl	r2, [r1]
 80042f6:      	lslspl.w	r2, r2, #0x6
 80042fa:      	bmi.w	0x8004466 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x12da> @ imm = #0x168
 80042fe:      	ldr	r2, [r1]
 8004300:      	lsls	r2, r2, #0x6
 8004302:      	bpl	0x80042e6 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x115a> @ imm = #-0x20
 8004304:      	b	0x8004466 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x12da> @ imm = #0x15e
 8004306:      	movw	r3, #0xaaab
 800430a:      	movt	r3, #0xaaaa
 800430e:      	b	0x8004330 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x11a4> @ imm = #0x1e
 8004310:      	movw	r3, #0xec4f
 8004314:      	movt	r3, #0x4ec4
 8004318:      	b	0x8004330 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x11a4> @ imm = #0x14
 800431a:      	movw	r3, #0xaaab
 800431e:      	movt	r3, #0xaaaa
 8004322:      	b	0x8004340 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x11b4> @ imm = #0x1a
 8004324:      	lsrs	r2, r6, #0x2
 8004326:      	b	0x80043a0 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x1214> @ imm = #0x76
 8004328:      	movw	r3, #0xcccd
 800432c:      	movt	r3, #0xcccc
 8004330:      	umull	r3, r4, r6, r3
 8004334:      	lsrs	r2, r4, #0x2
 8004336:      	b	0x80043a0 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x1214> @ imm = #0x66
 8004338:      	movw	r3, #0x8e39
 800433c:      	movt	r3, #0x38e3
 8004340:      	umull	r3, r4, r6, r3
 8004344:      	lsrs	r2, r4, #0x1
 8004346:      	b	0x80043a0 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x1214> @ imm = #0x56
 8004348:      	movw	r3, #0x8ba3
 800434c:      	movt	r3, #0xba2e
 8004350:      	b	0x800439a <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x120e> @ imm = #0x46
 8004352:      	movw	r4, #0x2493
 8004356:      	lsrs	r3, r6, #0x1
 8004358:      	movt	r4, #0x9249
 800435c:      	umull	r3, r4, r3, r4
 8004360:      	lsrs	r2, r4, #0x2
 8004362:      	b	0x80043a0 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x1214> @ imm = #0x3a
 8004364:      	movw	r3, #0x4925
 8004368:      	movt	r3, #0x2492
 800436c:      	umull	r3, r4, r6, r3
 8004370:      	subs	r3, r6, r4
 8004372:      	add.w	r3, r4, r3, lsr #1
 8004376:      	lsrs	r2, r3, #0x2
 8004378:      	b	0x80043a0 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x1214> @ imm = #0x24
 800437a:      	lsrs	r2, r6, #0x3
 800437c:      	b	0x80043a0 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x1214> @ imm = #0x20
 800437e:      	movw	r3, #0xcccd
 8004382:      	movt	r3, #0xcccc
 8004386:      	b	0x800439a <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x120e> @ imm = #0x10
 8004388:      	movw	r3, #0xaaab
 800438c:      	movt	r3, #0xaaaa
 8004390:      	b	0x800439a <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x120e> @ imm = #0x6
 8004392:      	movw	r3, #0x8889
 8004396:      	movt	r3, #0x8888
 800439a:      	umull	r3, r4, r6, r3
 800439e:      	lsrs	r2, r4, #0x3
 80043a0:      	movs	r5, #0x1
 80043a2:      	str	r2, [sp, #0x4]
 80043a4:      	cmp.w	r9, #0x8
 80043a8:      	beq.w	0x800423a <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x10ae> @ imm = #-0x172
 80043ac:      	sub.w	r4, r9, #0x2
 80043b0:      	cmp	r4, #0x5
 80043b2:      	bhi.w	0x8004550 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x13c4> @ imm = #0x19a
 80043b6:      	tbb	[pc, r4]

080043ba <$d.75>:
 80043ba: 03 0c 0a 14  	.word	0x140a0c03
 80043be: 05 1c	.short	0x1c05

080043c0 <$t.76>:
 80043c0:      	lsrs	r6, r6, #0x1
 80043c2:      	b	0x8004406 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x127a> @ imm = #0x40
 80043c4:      	movw	r2, #0xaaab
 80043c8:      	movt	r2, #0xaaaa
 80043cc:      	b	0x80043ea <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x125e> @ imm = #0x1a
 80043ce:      	lsrs	r6, r6, #0x2
 80043d0:      	b	0x8004406 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x127a> @ imm = #0x32
 80043d2:      	movw	r2, #0xaaab
 80043d6:      	movt	r2, #0xaaaa
 80043da:      	umull	r2, r4, r6, r2
 80043de:      	lsrs	r6, r4, #0x1
 80043e0:      	b	0x8004406 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x127a> @ imm = #0x22
 80043e2:      	movw	r2, #0xcccd
 80043e6:      	movt	r2, #0xcccc
 80043ea:      	umull	r2, r4, r6, r2
 80043ee:      	lsrs	r6, r4, #0x2
 80043f0:      	b	0x8004406 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x127a> @ imm = #0x12
 80043f2:      	movw	r2, #0x4925
 80043f6:      	movt	r2, #0x2492
 80043fa:      	umull	r2, r4, r6, r2
 80043fe:      	subs	r2, r6, r4
 8004400:      	add.w	r2, r4, r2, lsr #1
 8004404:      	lsrs	r6, r2, #0x2
 8004406:      	movs	r3, #0x1
 8004408:      	ldr	r2, [sp, #0x10]
 800440a:      	cmp	r2, #0x2
 800440c:      	bne.w	0x8004244 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x10b8> @ imm = #-0x1cc
 8004410:      	movw	r2, #0x7fc0
 8004414:      	movw	r4, #0x7fc0
 8004418:      	and.w	r2, r2, r8, lsl #6
 800441c:      	cmp.w	lr, #0x4
 8004420:      	it	ne
 8004422:      	orrne.w	r2, r2, lr, lsl #16
 8004426:      	cmp.w	r10, #0x10
 800442a:      	it	ne
 800442c:      	orrne.w	r2, r2, r10, lsl #24
 8004430:      	movt	r4, #0xfff
 8004434:      	ands	r4, r2
 8004436:      	cmp.w	r9, #0x8
 800443a:      	it	ne
 800443c:      	orrne.w	r2, r4, r9, lsl #28
 8004440:      	str.w	r2, [r1, #0x88]
 8004444:      	ldr	r2, [r1]
 8004446:      	orr	r2, r2, #0x10000000
 800444a:      	str	r2, [r1]
 800444c:      	ldr	r2, [r1]
 800444e:      	lsls	r2, r2, #0x2
 8004450:      	bmi	0x8004466 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x12da> @ imm = #0x12
 8004452:      	ldr	r2, [r1]
 8004454:      	lsls	r2, r2, #0x2
 8004456:      	itt	pl
 8004458:      	ldrpl	r2, [r1]
 800445a:      	lslspl.w	r2, r2, #0x2
 800445e:      	bmi	0x8004466 <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x12da> @ imm = #0x4
 8004460:      	ldr	r2, [r1]
 8004462:      	lsls	r2, r2, #0x2
 8004464:      	bpl	0x800444c <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x12c0> @ imm = #-0x1c
 8004466:      	ldr	r1, [sp, #0xc]
 8004468:      	str	r1, [r0]
 800446a:      	ldr	r1, [sp, #0x8]
 800446c:      	strd	r1, r5, [r0, #4]
 8004470:      	adds	r0, #0xc
 8004472:      	ldr	r1, [sp, #0x4]
 8004474:      	stm	r0!, {r1, r3, r6}
 8004476:      	add	sp, #0x14
 8004478:      	pop.w	{r8, r9, r10, r11}
 800447c:      	pop	{r4, r5, r6, r7, pc}
 800447e:      	add.w	r6, r6, r6, lsl #6
 8004482:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #-0x2cc
 8004484:      	movs	r2, #0x45
 8004486:      	muls	r6, r2, r6
 8004488:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #-0x2d2
 800448a:      	movs	r2, #0x49
 800448c:      	muls	r6, r2, r6
 800448e:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #-0x2d8
 8004490:      	movs	r2, #0x4c
 8004492:      	muls	r6, r2, r6
 8004494:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #-0x2de
 8004496:      	movs	r2, #0x5d
 8004498:      	muls	r6, r2, r6
 800449a:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #-0x2e4
 800449c:      	movs	r2, #0x61
 800449e:      	muls	r6, r2, r6
 80044a0:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #-0x2ea
 80044a2:      	movs	r2, #0x71
 80044a4:      	muls	r6, r2, r6
 80044a6:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #-0x2f0
 80044a8:      	movs	r2, #0x74
 80044aa:      	muls	r6, r2, r6
 80044ac:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #-0x2f6
 80044ae:      	movs	r2, #0x76
 80044b0:      	muls	r6, r2, r6
 80044b2:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #-0x2fc
 80044b4:      	movs	r2, #0x79
 80044b6:      	muls	r6, r2, r6
 80044b8:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #-0x302
 80044ba:      	rsb	r6, r6, r6, lsl #7
 80044be:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #-0x308
 80044c0:      	movs	r2, #0x91
 80044c2:      	muls	r6, r2, r6
 80044c4:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #-0x30e
 80044c6:      	movs	r2, #0x92
 80044c8:      	muls	r6, r2, r6
 80044ca:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #-0x314
 80044cc:      	movs	r2, #0x96
 80044ce:      	muls	r6, r2, r6
 80044d0:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #-0x31a
 80044d2:      	movs	r2, #0x99
 80044d4:      	muls	r6, r2, r6
 80044d6:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #-0x320
 80044d8:      	movs	r2, #0x9e
 80044da:      	muls	r6, r2, r6
 80044dc:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #-0x326
 80044de:      	add.w	r2, r6, r6, lsl #2
 80044e2:      	lsls	r6, r2, #0x5
 80044e4:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #-0x32e
 80044e6:      	movs	r2, #0xa1
 80044e8:      	muls	r6, r2, r6
 80044ea:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #-0x334
 80044ec:      	movs	r2, #0xab
 80044ee:      	muls	r6, r2, r6
 80044f0:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #-0x33a
 80044f2:      	movs	r2, #0xad
 80044f4:      	muls	r6, r2, r6
 80044f6:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #-0x340
 80044f8:      	movs	r2, #0xbd
 80044fa:      	muls	r6, r2, r6
 80044fc:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #-0x346
 80044fe:      	movs	r2, #0x4d
 8004500:      	muls	r6, r2, r6
 8004502:      	b	0x80041ba <embassy_stm32::rcc::_version::init_pll::h8cef3ea0f5119f84+0x102e> @ imm = #-0x34c
 8004504:      	movw	r0, #0x5720
 8004508:      	movw	r2, #0x583c
 800450c:      	movt	r0, #0x800
 8004510:      	movt	r2, #0x800
 8004514:      	movs	r1, #0x2b
 8004516:      	bl	0x8001ee2 <core::panicking::panic::h9ea7360e47959be2> @ imm = #-0x2638
 800451a:      	trap
 800451c:      	bl	0x8002d8e <_defmt_acquire> @ imm = #-0x1792
 8004520:      	movw	r0, #0x1d
 8004524:      	movt	r0, #0x0
 8004528:      	bl	0x8002c7a <defmt::export::header::hc9b4e0c1cc8ad9b7> @ imm = #-0x18b2
 800452c:      	bl	0x8002e34 <_defmt_release> @ imm = #-0x16fc
 8004530:      	bl	0x8002c96 <_defmt_panic> @ imm = #-0x189e
 8004534:      	trap
 8004536:      	bl	0x8002d8e <_defmt_acquire> @ imm = #-0x17ac
 800453a:      	movw	r0, #0x1e
 800453e:      	movt	r0, #0x0
 8004542:      	bl	0x8002c7a <defmt::export::header::hc9b4e0c1cc8ad9b7> @ imm = #-0x18cc
 8004546:      	bl	0x8002e34 <_defmt_release> @ imm = #-0x1716
 800454a:      	bl	0x8002c96 <_defmt_panic> @ imm = #-0x18b8
 800454e:      	trap
 8004550:      	bl	0x8002d8e <_defmt_acquire> @ imm = #-0x17c6
 8004554:      	movw	r0, #0x27
 8004558:      	movt	r0, #0x0
 800455c:      	bl	0x8002c7a <defmt::export::header::hc9b4e0c1cc8ad9b7> @ imm = #-0x18e6
 8004560:      	bl	0x8002e34 <_defmt_release> @ imm = #-0x1730
 8004564:      	bl	0x8002c96 <_defmt_panic> @ imm = #-0x18d2
 8004568:      	trap
 800456a:      	bl	0x8002d8e <_defmt_acquire> @ imm = #-0x17e0
 800456e:      	movw	r0, #0x26
 8004572:      	movt	r0, #0x0
 8004576:      	bl	0x8002c7a <defmt::export::header::hc9b4e0c1cc8ad9b7> @ imm = #-0x1900
 800457a:      	bl	0x8002e34 <_defmt_release> @ imm = #-0x174a
 800457e:      	bl	0x8002c96 <_defmt_panic> @ imm = #-0x18ec
 8004582:      	trap
 8004584:      	bl	0x8002d8e <_defmt_acquire> @ imm = #-0x17fa
 8004588:      	movw	r0, #0x24
 800458c:      	movt	r0, #0x0
 8004590:      	bl	0x8002c7a <defmt::export::header::hc9b4e0c1cc8ad9b7> @ imm = #-0x191a
 8004594:      	bl	0x8002e34 <_defmt_release> @ imm = #-0x1764
 8004598:      	bl	0x8002c96 <_defmt_panic> @ imm = #-0x1906
 800459c:      	trap
 800459e:      	bl	0x8002d8e <_defmt_acquire> @ imm = #-0x1814
 80045a2:      	movw	r0, #0x25
 80045a6:      	movt	r0, #0x0
 80045aa:      	bl	0x8002c7a <defmt::export::header::hc9b4e0c1cc8ad9b7> @ imm = #-0x1934
 80045ae:      	bl	0x8002e34 <_defmt_release> @ imm = #-0x177e
 80045b2:      	bl	0x8002c96 <_defmt_panic> @ imm = #-0x1920
 80045b6:      	trap

080045b8 <defmt::export::fmt::h43c306accedab863>:
 80045b8:      	push	{r4, r6, r7, lr}
 80045ba:      	add	r7, sp, #0x8
 80045bc:      	sub	sp, #0x8
 80045be:      	mov	r4, r0
 80045c0:      	movw	r0, #0x1
 80045c4:      	movt	r0, #0x0
 80045c8:      	movs	r1, #0x2
 80045ca:      	strh	r0, [r7, #-14]
 80045ce:      	sub.w	r0, r7, #0xe
 80045d2:      	bl	0x8002f16 <_defmt_write> @ imm = #-0x16c0
 80045d6:      	add	r0, sp, #0x4
 80045d8:      	movs	r1, #0x4
 80045da:      	str	r4, [sp, #0x4]
 80045dc:      	bl	0x8002f16 <_defmt_write> @ imm = #-0x16ca
 80045e0:      	add	sp, #0x8
 80045e2:      	pop	{r4, r6, r7, pc}

080045e4 <embassy_stm32::dma::dma::on_irq_inner::he25d1be9d2575763>:
 80045e4:      	push	{r4, r5, r6, r7, lr}
 80045e6:      	add	r7, sp, #0xc
 80045e8:      	push.w	{r8, r9, r10}
 80045ec:      	sub	sp, #0x10
 80045ee:      	bic	lr, r1, #0x3
 80045f2:      	mov	r6, r1
 80045f4:      	mov	r9, r0
 80045f6:      	mov.w	r10, #0x16
 80045fa:      	ldr.w	r3, [r0, lr]
 80045fe:      	movs	r0, #0x10
 8004600:      	movs	r4, #0x6
 8004602:      	movs	r5, #0x0
 8004604:      	and	r1, r1, #0x3
 8004608:      	str.w	r10, [sp, #0xc]
 800460c:      	mov	r12, sp
 800460e:      	str	r0, [sp, #0x8]
 8004610:      	mov	r8, r2
 8004612:      	str	r4, [sp, #0x4]
 8004614:      	str	r5, [sp]
 8004616:      	ldr.w	r2, [r12, r1, lsl #2]
 800461a:      	adds	r2, #0x3
 800461c:      	and	r2, r2, #0x1f
 8004620:      	lsr.w	r2, r3, r2
 8004624:      	lsls	r2, r2, #0x1f
 8004626:      	bne.w	0x800476a <embassy_stm32::dma::dma::on_irq_inner::he25d1be9d2575763+0x186> @ imm = #0x140
 800462a:      	add.w	r2, r6, r6, lsl #1
 800462e:      	strd	r0, r10, [sp, #8]
 8004632:      	strd	r5, r4, [sp]
 8004636:      	add.w	r6, r0, r2, lsl #3
 800463a:      	ldr.w	r0, [r12, r1, lsl #2]
 800463e:      	adds	r0, #0x4
 8004640:      	and	r0, r0, #0x1f
 8004644:      	lsr.w	r0, r3, r0
 8004648:      	lsls	r0, r0, #0x1f
 800464a:      	beq	0x8004654 <embassy_stm32::dma::dma::on_irq_inner::he25d1be9d2575763+0x70> @ imm = #0x6
 800464c:      	ldr.w	r0, [r9, r6]
 8004650:      	lsls	r0, r0, #0x1c
 8004652:      	bmi	0x80046ce <embassy_stm32::dma::dma::on_irq_inner::he25d1be9d2575763+0xea> @ imm = #0x78
 8004654:      	movs	r0, #0x16
 8004656:      	str	r0, [sp, #0xc]
 8004658:      	movs	r0, #0x10
 800465a:      	str	r0, [sp, #0x8]
 800465c:      	movs	r0, #0x6
 800465e:      	str	r0, [sp, #0x4]
 8004660:      	movs	r0, #0x0
 8004662:      	str	r0, [sp]
 8004664:      	ldr.w	r0, [r12, r1, lsl #2]
 8004668:      	adds	r0, #0x5
 800466a:      	and	r0, r0, #0x1f
 800466e:      	lsr.w	r0, r3, r0
 8004672:      	lsls	r0, r0, #0x1f
 8004674:      	beq	0x8004742 <embassy_stm32::dma::dma::on_irq_inner::he25d1be9d2575763+0x15e> @ imm = #0xca
 8004676:      	ldr.w	r0, [r9, r6]
 800467a:      	lsls	r0, r0, #0x1b
 800467c:      	bpl	0x8004742 <embassy_stm32::dma::dma::on_irq_inner::he25d1be9d2575763+0x15e> @ imm = #0xc2
 800467e:      	movs	r0, #0x16
 8004680:      	movs	r2, #0x1
 8004682:      	str	r0, [sp, #0xc]
 8004684:      	movs	r0, #0x10
 8004686:      	str	r0, [sp, #0x8]
 8004688:      	movs	r0, #0x6
 800468a:      	str	r0, [sp, #0x4]
 800468c:      	movs	r0, #0x0
 800468e:      	str	r0, [sp]
 8004690:      	cmp.w	r8, #0xf
 8004694:      	ldr.w	r0, [r12, r1, lsl #2]
 8004698:      	add.w	r1, lr, r9
 800469c:      	add.w	r0, r0, #0x5
 80046a0:      	and	r0, r0, #0x1f
 80046a4:      	lsl.w	r0, r2, r0
 80046a8:      	str	r0, [r1, #0x8]
 80046aa:      	bhi	0x800475a <embassy_stm32::dma::dma::on_irq_inner::he25d1be9d2575763+0x176> @ imm = #0xac
 80046ac:      	movw	r0, #0x8078
 80046b0:      	dmb	sy
 80046b4:      	movt	r0, #0x2000
 80046b8:      	add.w	r0, r0, r8, lsl #2
 80046bc:      	adds	r0, #0x80
 80046be:      	ldrex	r1, [r0]
 80046c2:      	adds	r1, #0x1
 80046c4:      	strex	r2, r1, [r0]
 80046c8:      	cmp	r2, #0x0
 80046ca:      	bne	0x80046be <embassy_stm32::dma::dma::on_irq_inner::he25d1be9d2575763+0xda> @ imm = #-0x10
 80046cc:      	b	0x80046fc <embassy_stm32::dma::dma::on_irq_inner::he25d1be9d2575763+0x118> @ imm = #0x2c
 80046ce:      	movs	r0, #0x16
 80046d0:      	movs	r2, #0x1
 80046d2:      	str	r0, [sp, #0xc]
 80046d4:      	movs	r0, #0x10
 80046d6:      	str	r0, [sp, #0x8]
 80046d8:      	movs	r0, #0x6
 80046da:      	str	r0, [sp, #0x4]
 80046dc:      	movs	r0, #0x0
 80046de:      	str	r0, [sp]
 80046e0:      	cmp.w	r8, #0xf
 80046e4:      	ldr.w	r0, [r12, r1, lsl #2]
 80046e8:      	add.w	r1, lr, r9
 80046ec:      	add.w	r0, r0, #0x4
 80046f0:      	and	r0, r0, #0x1f
 80046f4:      	lsl.w	r0, r2, r0
 80046f8:      	str	r0, [r1, #0x8]
 80046fa:      	bhi	0x800474a <embassy_stm32::dma::dma::on_irq_inner::he25d1be9d2575763+0x166> @ imm = #0x4c
 80046fc:      	movw	r4, #0x8078
 8004700:      	mrs	r9, primask
 8004704:      	cpsid i
 8004706:      	movt	r4, #0x2000
 800470a:      	add.w	r5, r4, r8, lsl #3
 800470e:      	ldr.w	r6, [r4, r8, lsl #3]
 8004712:      	movs	r0, #0x0
 8004714:      	ldr	r10, [r5, #4]!
 8004718:      	str.w	r0, [r4, r8, lsl #3]
 800471c:      	cbz	r6, 0x800473a <embassy_stm32::dma::dma::on_irq_inner::he25d1be9d2575763+0x156> @ imm = #0x1a
 800471e:      	ldr	r1, [r6, #0x8]
 8004720:      	mov	r0, r10
 8004722:      	blx	r1
 8004724:      	ldr.w	r1, [r4, r8, lsl #3]
 8004728:      	ldr	r0, [r5]
 800472a:      	str.w	r6, [r4, r8, lsl #3]
 800472e:      	cmp	r1, #0x0
 8004730:      	str.w	r10, [r5]
 8004734:      	itt	ne
 8004736:      	ldrne	r1, [r1, #0xc]
 8004738:      	blxne	r1
 800473a:      	lsls.w	r0, r9, #0x1f
 800473e:      	bne	0x8004742 <embassy_stm32::dma::dma::on_irq_inner::he25d1be9d2575763+0x15e> @ imm = #0x0
 8004740:      	cpsie i
 8004742:      	add	sp, #0x10
 8004744:      	pop.w	{r8, r9, r10}
 8004748:      	pop	{r4, r5, r6, r7, pc}
 800474a:      	movw	r1, #0x5710
 800474e:      	movt	r1, #0x800
 8004752:      	mov	r0, r8
 8004754:      	bl	0x8001be0 <core::panicking::panic_bounds_check::h9c02a53999795431> @ imm = #-0x2b78
 8004758:      	trap
 800475a:      	movw	r1, #0x5700
 800475e:      	movt	r1, #0x800
 8004762:      	mov	r0, r8
 8004764:      	bl	0x8001be0 <core::panicking::panic_bounds_check::h9c02a53999795431> @ imm = #-0x2b88
 8004768:      	trap
 800476a:      	bl	0x8002d8e <_defmt_acquire> @ imm = #-0x19e0
 800476e:      	movw	r0, #0xd
 8004772:      	movt	r0, #0x0
 8004776:      	bl	0x8002c7a <defmt::export::header::hc9b4e0c1cc8ad9b7> @ imm = #-0x1b00
 800477a:      	mov	r0, r9
 800477c:      	bl	0x80045b8 <defmt::export::fmt::h43c306accedab863> @ imm = #-0x1c8
 8004780:      	mov	r0, r6
 8004782:      	bl	0x8004790 <defmt::export::fmt::hdab5f79810fcc819> @ imm = #0xa
 8004786:      	bl	0x8002e34 <_defmt_release> @ imm = #-0x1956
 800478a:      	bl	0x8002c96 <_defmt_panic> @ imm = #-0x1af8
 800478e:      	trap

08004790 <defmt::export::fmt::hdab5f79810fcc819>:
 8004790:      	push	{r4, r6, r7, lr}
 8004792:      	add	r7, sp, #0x8
 8004794:      	sub	sp, #0x8
 8004796:      	mov	r4, r0
 8004798:      	movw	r0, #0x2
 800479c:      	movt	r0, #0x0
 80047a0:      	movs	r1, #0x2
 80047a2:      	strh	r0, [r7, #-14]
 80047a6:      	sub.w	r0, r7, #0xe
 80047aa:      	bl	0x8002f16 <_defmt_write> @ imm = #-0x1898
 80047ae:      	add	r0, sp, #0x4
 80047b0:      	movs	r1, #0x4
 80047b2:      	str	r4, [sp, #0x4]
 80047b4:      	bl	0x8002f16 <_defmt_write> @ imm = #-0x18a2
 80047b8:      	add	sp, #0x8
 80047ba:      	pop	{r4, r6, r7, pc}

080047bc <DMA2_STREAM7>:
 80047bc:      	movw	r0, #0x6400
 80047c0:      	movs	r1, #0x7
 80047c2:      	movt	r0, #0x4002
 80047c6:      	movs	r2, #0xf
 80047c8:      	b.w	0x80045e4 <embassy_stm32::dma::dma::on_irq_inner::he25d1be9d2575763> @ imm = #-0x1e8

080047cc <DMA2_STREAM6>:
 80047cc:      	movw	r0, #0x6400
 80047d0:      	movs	r1, #0x6
 80047d2:      	movt	r0, #0x4002
 80047d6:      	movs	r2, #0xe
 80047d8:      	b.w	0x80045e4 <embassy_stm32::dma::dma::on_irq_inner::he25d1be9d2575763> @ imm = #-0x1f8

080047dc <DMA2_STREAM5>:
 80047dc:      	movw	r0, #0x6400
 80047e0:      	movs	r1, #0x5
 80047e2:      	movt	r0, #0x4002
 80047e6:      	movs	r2, #0xd
 80047e8:      	b.w	0x80045e4 <embassy_stm32::dma::dma::on_irq_inner::he25d1be9d2575763> @ imm = #-0x208

080047ec <DMA2_STREAM4>:
 80047ec:      	movw	r0, #0x6400
 80047f0:      	movs	r1, #0x4
 80047f2:      	movt	r0, #0x4002
 80047f6:      	movs	r2, #0xc
 80047f8:      	b.w	0x80045e4 <embassy_stm32::dma::dma::on_irq_inner::he25d1be9d2575763> @ imm = #-0x218

080047fc <DMA2_STREAM3>:
 80047fc:      	movw	r0, #0x6400
 8004800:      	movs	r1, #0x3
 8004802:      	movt	r0, #0x4002
 8004806:      	movs	r2, #0xb
 8004808:      	b.w	0x80045e4 <embassy_stm32::dma::dma::on_irq_inner::he25d1be9d2575763> @ imm = #-0x228

0800480c <DMA2_STREAM2>:
 800480c:      	movw	r0, #0x6400
 8004810:      	movs	r1, #0x2
 8004812:      	movt	r0, #0x4002
 8004816:      	movs	r2, #0xa
 8004818:      	b.w	0x80045e4 <embassy_stm32::dma::dma::on_irq_inner::he25d1be9d2575763> @ imm = #-0x238

0800481c <DMA2_STREAM1>:
 800481c:      	movw	r0, #0x6400
 8004820:      	movs	r1, #0x1
 8004822:      	movt	r0, #0x4002
 8004826:      	movs	r2, #0x9
 8004828:      	b.w	0x80045e4 <embassy_stm32::dma::dma::on_irq_inner::he25d1be9d2575763> @ imm = #-0x248

0800482c <DMA2_STREAM0>:
 800482c:      	movw	r0, #0x6400
 8004830:      	movs	r1, #0x0
 8004832:      	movt	r0, #0x4002
 8004836:      	movs	r2, #0x8
 8004838:      	b.w	0x80045e4 <embassy_stm32::dma::dma::on_irq_inner::he25d1be9d2575763> @ imm = #-0x258

0800483c <DMA1_STREAM7>:
 800483c:      	movw	r0, #0x6000
 8004840:      	movs	r1, #0x7
 8004842:      	movt	r0, #0x4002
 8004846:      	movs	r2, #0x7
 8004848:      	b.w	0x80045e4 <embassy_stm32::dma::dma::on_irq_inner::he25d1be9d2575763> @ imm = #-0x268

0800484c <DMA1_STREAM6>:
 800484c:      	movw	r0, #0x6000
 8004850:      	movs	r1, #0x6
 8004852:      	movt	r0, #0x4002
 8004856:      	movs	r2, #0x6
 8004858:      	b.w	0x80045e4 <embassy_stm32::dma::dma::on_irq_inner::he25d1be9d2575763> @ imm = #-0x278

0800485c <DMA1_STREAM5>:
 800485c:      	movw	r0, #0x6000
 8004860:      	movs	r1, #0x5
 8004862:      	movt	r0, #0x4002
 8004866:      	movs	r2, #0x5
 8004868:      	b.w	0x80045e4 <embassy_stm32::dma::dma::on_irq_inner::he25d1be9d2575763> @ imm = #-0x288

0800486c <DMA1_STREAM4>:
 800486c:      	movw	r0, #0x6000
 8004870:      	movs	r1, #0x4
 8004872:      	movt	r0, #0x4002
 8004876:      	movs	r2, #0x4
 8004878:      	b.w	0x80045e4 <embassy_stm32::dma::dma::on_irq_inner::he25d1be9d2575763> @ imm = #-0x298

0800487c <DMA1_STREAM3>:
 800487c:      	movw	r0, #0x6000
 8004880:      	movs	r1, #0x3
 8004882:      	movt	r0, #0x4002
 8004886:      	movs	r2, #0x3
 8004888:      	b.w	0x80045e4 <embassy_stm32::dma::dma::on_irq_inner::he25d1be9d2575763> @ imm = #-0x2a8

0800488c <DMA1_STREAM2>:
 800488c:      	movw	r0, #0x6000
 8004890:      	movs	r1, #0x2
 8004892:      	movt	r0, #0x4002
 8004896:      	movs	r2, #0x2
 8004898:      	b.w	0x80045e4 <embassy_stm32::dma::dma::on_irq_inner::he25d1be9d2575763> @ imm = #-0x2b8

0800489c <DMA1_STREAM1>:
 800489c:      	movw	r0, #0x6000
 80048a0:      	movs	r1, #0x1
 80048a2:      	movt	r0, #0x4002
 80048a6:      	movs	r2, #0x1
 80048a8:      	b.w	0x80045e4 <embassy_stm32::dma::dma::on_irq_inner::he25d1be9d2575763> @ imm = #-0x2c8

080048ac <DMA1_STREAM0>:
 80048ac:      	movw	r0, #0x6000
 80048b0:      	movs	r1, #0x0
 80048b2:      	movt	r0, #0x4002
 80048b6:      	movs	r2, #0x0
 80048b8:      	b.w	0x80045e4 <embassy_stm32::dma::dma::on_irq_inner::he25d1be9d2575763> @ imm = #-0x2d8

080048bc <EXTI9_5>:
 80048bc:      	push	{r4, r5, r6, r7, lr}
 80048be:      	add	r7, sp, #0xc
 80048c0:      	push.w	{r8, r9, r10, r11}
 80048c4:      	sub	sp, #0x4
 80048c6:      	movw	r2, #0x3c00
 80048ca:      	movt	r2, #0x4001
 80048ce:      	ldr	r0, [r2, #0x14]
 80048d0:      	ldr	r1, [r2]
 80048d2:      	uxth	r3, r0
 80048d4:      	cmp	r3, #0x0
 80048d6:      	bic.w	r0, r1, r3
 80048da:      	str	r0, [r2]
 80048dc:      	str	r3, [sp]
 80048de:      	beq	0x8004954 <EXTI9_5+0x98> @ imm = #0x72
 80048e0:      	ldr.w	r9, [sp]
 80048e4:      	movw	r6, #0x8138
 80048e8:      	movt	r6, #0x2000
 80048ec:      	rbit	r0, r9
 80048f0:      	clz	r4, r0
 80048f4:      	b	0x8004908 <EXTI9_5+0x4c> @ imm = #0x10
 80048f6:      	movs	r0, #0x1
 80048f8:      	lsls	r0, r4
 80048fa:      	bics.w	r9, r9, r0
 80048fe:      	rbit	r0, r9
 8004902:      	clz	r4, r0
 8004906:      	beq	0x8004954 <EXTI9_5+0x98> @ imm = #0x4a
 8004908:      	cmp	r4, #0xf
 800490a:      	bhi	0x8004968 <EXTI9_5+0xac> @ imm = #0x5a
 800490c:      	add.w	r11, r6, r4, lsl #3
 8004910:      	mrs	r8, primask
 8004914:      	cpsid i
 8004916:      	ldr.w	r10, [r6, r4, lsl #3]
 800491a:      	movs	r0, #0x0
 800491c:      	ldr	r5, [r11, #4]!
 8004920:      	str.w	r0, [r6, r4, lsl #3]
 8004924:      	cmp.w	r10, #0x0
 8004928:      	beq	0x800494a <EXTI9_5+0x8e> @ imm = #0x1e
 800492a:      	ldr.w	r1, [r10, #0x8]
 800492e:      	mov	r0, r5
 8004930:      	blx	r1
 8004932:      	ldr.w	r1, [r6, r4, lsl #3]
 8004936:      	ldr.w	r0, [r11]
 800493a:      	str.w	r10, [r6, r4, lsl #3]
 800493e:      	cmp	r1, #0x0
 8004940:      	str.w	r5, [r11]
 8004944:      	itt	ne
 8004946:      	ldrne	r1, [r1, #0xc]
 8004948:      	blxne	r1
 800494a:      	lsls.w	r0, r8, #0x1f
 800494e:      	bne	0x80048f6 <EXTI9_5+0x3a> @ imm = #-0x5c
 8004950:      	cpsie i
 8004952:      	b	0x80048f6 <EXTI9_5+0x3a> @ imm = #-0x60
 8004954:      	movw	r0, #0x3c00
 8004958:      	ldr	r1, [sp]
 800495a:      	movt	r0, #0x4001
 800495e:      	str	r1, [r0, #0x14]
 8004960:      	add	sp, #0x4
 8004962:      	pop.w	{r8, r9, r10, r11}
 8004966:      	pop	{r4, r5, r6, r7, pc}
 8004968:      	movw	r1, #0x5970
 800496c:      	mov	r0, r4
 800496e:      	movt	r1, #0x800
 8004972:      	bl	0x8001be0 <core::panicking::panic_bounds_check::h9c02a53999795431> @ imm = #-0x2d96
 8004976:      	trap

08004978 <TIM2>:
 8004978:      	push	{r4, r5, r6, r7, lr}
 800497a:      	add	r7, sp, #0xc
 800497c:      	push.w	{r8, r9, r10, r11}
 8004980:      	sub	sp, #0x4
 8004982:      	movw	lr, #0xc
 8004986:      	mrs	r0, primask
 800498a:      	str	r0, [sp]
 800498c:      	movt	lr, #0x4000
 8004990:      	cpsid i
 8004992:      	ldr.w	r4, [lr, #0x4]
 8004996:      	movw	r5, #0x38
 800499a:      	ldr.w	r9, [lr]
 800499e:      	movt	r5, #0x2000
 80049a2:      	mvns	r1, r4
 80049a4:      	str.w	r1, [lr, #0x4]
 80049a8:      	lsls	r1, r4, #0x1f
 80049aa:      	beq	0x8004a06 <TIM2+0x8e>   @ imm = #0x58
 80049ac:      	ldr	r1, [r5, #0x30]
 80049ae:      	mov.w	r6, #0xc000
 80049b2:      	adds	r1, #0x1
 80049b4:      	str	r1, [r5, #0x30]
 80049b6:      	mrs	r12, primask
 80049ba:      	cpsid i
 80049bc:      	lsrs	r3, r1, #0x11
 80049be:      	adds.w	r1, r6, r1, lsl #15
 80049c2:      	ldr.w	r6, [lr]
 80049c6:      	adc	r3, r3, #0x0
 80049ca:      	ldrd	r2, r0, [r5]
 80049ce:      	ldrd	r10, r11, [r5, #16]
 80049d2:      	subs	r2, r2, r1
 80049d4:      	sbcs	r0, r3
 80049d6:      	it	lo
 80049d8:      	orrlo	r6, r6, #0x4
 80049dc:      	subs.w	r0, r10, r1
 80049e0:      	ldrd	r2, r8, [r5, #32]
 80049e4:      	sbcs.w	r0, r11, r3
 80049e8:      	it	lo
 80049ea:      	orrlo	r6, r6, #0x8
 80049ee:      	subs	r0, r2, r1
 80049f0:      	sbcs.w	r0, r8, r3
 80049f4:      	it	lo
 80049f6:      	orrlo	r6, r6, #0x10
 80049fa:      	lsls.w	r0, r12, #0x1f
 80049fe:      	str.w	r6, [lr]
 8004a02:      	bne	0x8004a06 <TIM2+0x8e>   @ imm = #0x0
 8004a04:      	cpsie i
 8004a06:      	lsls	r0, r4, #0x1e
 8004a08:      	bpl	0x8004a64 <TIM2+0xec>   @ imm = #0x58
 8004a0a:      	ldr	r0, [r5, #0x30]
 8004a0c:      	mov.w	r3, #0xc000
 8004a10:      	adds	r0, #0x1
 8004a12:      	str	r0, [r5, #0x30]
 8004a14:      	mrs	r12, primask
 8004a18:      	cpsid i
 8004a1a:      	lsrs	r2, r0, #0x11
 8004a1c:      	adds.w	r0, r3, r0, lsl #15
 8004a20:      	ldr.w	r3, [lr]
 8004a24:      	adc	r2, r2, #0x0
 8004a28:      	ldrd	r6, r1, [r5]
 8004a2c:      	ldrd	r8, r10, [r5, #16]
 8004a30:      	subs	r6, r6, r0
 8004a32:      	sbcs	r1, r2
 8004a34:      	it	lo
 8004a36:      	orrlo	r3, r3, #0x4
 8004a3a:      	subs.w	r1, r8, r0
 8004a3e:      	ldrd	r6, r11, [r5, #32]
 8004a42:      	sbcs.w	r1, r10, r2
 8004a46:      	it	lo
 8004a48:      	orrlo	r3, r3, #0x8
 8004a4c:      	subs	r0, r6, r0
 8004a4e:      	sbcs.w	r0, r11, r2
 8004a52:      	it	lo
 8004a54:      	orrlo	r3, r3, #0x10
 8004a58:      	lsls.w	r0, r12, #0x1f
 8004a5c:      	str.w	r3, [lr]
 8004a60:      	bne	0x8004a64 <TIM2+0xec>   @ imm = #0x0
 8004a62:      	cpsie i
 8004a64:      	lsls	r0, r4, #0x1d
 8004a66:      	mov.w	r6, #0xffffffff
 8004a6a:      	bpl	0x8004a7c <TIM2+0x104>  @ imm = #0xe
 8004a6c:      	ands	r0, r9, #0x4
 8004a70:      	beq	0x8004a7c <TIM2+0x104>  @ imm = #0x8
 8004a72:      	ldrd	r1, r0, [r5, #8]
 8004a76:      	strd	r6, r6, [r5]
 8004a7a:      	blx	r1
 8004a7c:      	lsls	r0, r4, #0x1c
 8004a7e:      	bpl	0x8004a90 <TIM2+0x118>  @ imm = #0xe
 8004a80:      	ands	r0, r9, #0x8
 8004a84:      	ittt	ne
 8004a86:      	ldrdne	r1, r0, [r5, #24]
 8004a8a:      	strdne	r6, r6, [r5, #16]
 8004a8e:      	blxne	r1
 8004a90:      	lsls	r0, r4, #0x1b
 8004a92:      	bpl	0x8004aa4 <TIM2+0x12c>  @ imm = #0xe
 8004a94:      	ands	r0, r9, #0x10
 8004a98:      	ittt	ne
 8004a9a:      	ldrdne	r1, r0, [r5, #40]
 8004a9e:      	strdne	r6, r6, [r5, #32]
 8004aa2:      	blxne	r1
 8004aa4:      	ldr	r0, [sp]
 8004aa6:      	lsls	r0, r0, #0x1f
 8004aa8:      	bne	0x8004aac <TIM2+0x134>  @ imm = #0x0
 8004aaa:      	cpsie i
 8004aac:      	add	sp, #0x4
 8004aae:      	pop.w	{r8, r9, r10, r11}
 8004ab2:      	pop	{r4, r5, r6, r7, pc}

08004ab4 <_defmt_timestamp>:
 8004ab4:      	push	{r7, lr}
 8004ab6:      	mov	r7, sp
 8004ab8:      	sub	sp, #0x8
 8004aba:      	movw	r0, #0x38
 8004abe:      	movs	r1, #0x24
 8004ac0:      	movt	r0, #0x2000
 8004ac4:      	movt	r1, #0x4000
 8004ac8:      	ldr	r0, [r0, #0x30]
 8004aca:      	ldr	r1, [r1]
 8004acc:      	and	r2, r0, #0x1
 8004ad0:      	uxth	r1, r1
 8004ad2:      	eor.w	r1, r1, r2, lsl #15
 8004ad6:      	movw	r2, #0x3d09
 8004ada:      	adds.w	r1, r1, r0, lsl #15
 8004ade:      	lsr.w	r0, r0, #0x11
 8004ae2:      	adc	r0, r0, #0x0
 8004ae6:      	umull	r1, r3, r1, r2
 8004aea:      	mla	r0, r0, r2, r3
 8004aee:      	lsrs	r1, r1, #0x9
 8004af0:      	orr.w	r1, r1, r0, lsl #23
 8004af4:      	lsrs	r0, r0, #0x9
 8004af6:      	str	r1, [sp]
 8004af8:      	movs	r1, #0x8
 8004afa:      	str	r0, [sp, #0x4]
 8004afc:      	mov	r0, sp
 8004afe:      	bl	0x8002f16 <_defmt_write> @ imm = #-0x1bec
 8004b02:      	add	sp, #0x8
 8004b04:      	pop	{r7, pc}

08004b06 <rust_begin_unwind>:
 8004b06:      	push	{r7, lr}
 8004b08:      	mov	r7, sp
 8004b0a:      	sub	sp, #0x30
 8004b0c:      	movw	r1, #0x81b8
 8004b10:      	cpsid i
 8004b12:      	movt	r1, #0x2000
 8004b16:      	ldrb	r2, [r1]
 8004b18:      	cmp	r2, #0x0
 8004b1a:      	bne	0x8004b9a <rust_begin_unwind+0x94> @ imm = #0x7c
 8004b1c:      	movs	r4, #0x1
 8004b1e:      	strb	r4, [r1]
 8004b20:      	str	r0, [sp]
 8004b22:      	bl	0x8002d8e <_defmt_acquire> @ imm = #-0x1d98
 8004b26:      	movw	r0, #0x30
 8004b2a:      	movt	r0, #0x0
 8004b2e:      	bl	0x8002c7a <defmt::export::header::hc9b4e0c1cc8ad9b7> @ imm = #-0x1eb8
 8004b32:      	movw	r0, #0x5
 8004b36:      	movs	r1, #0x2
 8004b38:      	movt	r0, #0x0
 8004b3c:      	strh.w	r0, [sp, #0xc]
 8004b40:      	add	r0, sp, #0xc
 8004b42:      	bl	0x8002f16 <_defmt_write> @ imm = #-0x1c30
 8004b46:      	movw	r0, #0x5a28
 8004b4a:      	movw	r1, #0x54c4
 8004b4e:      	movt	r0, #0x800
 8004b52:      	add	r2, sp, #0xc
 8004b54:      	str	r0, [sp, #0x8]
 8004b56:      	mov	r0, sp
 8004b58:      	str	r0, [sp, #0x4]
 8004b5a:      	movs	r0, #0x0
 8004b5c:      	str	r0, [sp, #0x1c]
 8004b5e:      	movw	r0, #0x54dc
 8004b62:      	movt	r0, #0x800
 8004b66:      	movt	r1, #0x800
 8004b6a:      	str	r0, [sp, #0xc]
 8004b6c:      	add	r0, sp, #0x24
 8004b6e:      	str	r0, [sp, #0x14]
 8004b70:      	movw	r0, #0x2c73
 8004b74:      	movt	r0, #0x800
 8004b78:      	str	r4, [sp, #0x10]
 8004b7a:      	str	r0, [sp, #0x28]
 8004b7c:      	add	r0, sp, #0x4
 8004b7e:      	str	r0, [sp, #0x24]
 8004b80:      	subs	r0, r7, #0x1
 8004b82:      	str	r4, [sp, #0x18]
 8004b84:      	bl	0x8002686 <core::fmt::write::h095b5b1af45f5b40> @ imm = #-0x2502
 8004b88:      	movw	r0, #0x54e4
 8004b8c:      	movs	r1, #0x1
 8004b8e:      	movt	r0, #0x800
 8004b92:      	bl	0x8002f16 <_defmt_write> @ imm = #-0x1c80
 8004b96:      	bl	0x8002e34 <_defmt_release> @ imm = #-0x1d66
 8004b9a:      	movw	r0, #0xed24
 8004b9e:      	movt	r0, #0xe000
 8004ba2:      	ldr	r1, [r0]
 8004ba4:      	bic	r1, r1, #0x40000
 8004ba8:      	str	r1, [r0]
 8004baa:      	udf	#0x0
 8004bac:      	trap

08004bae <<&T as core::fmt::Display>::fmt::hf7ae6a92ea82bb38>:
 8004bae:      	push	{r4, r5, r6, r7, lr}
 8004bb0:      	add	r7, sp, #0xc
 8004bb2:      	push.w	{r8, r9, r10, r11}
 8004bb6:      	sub	sp, #0x34
 8004bb8:      	ldrd	r11, r8, [r1, #20]
 8004bbc:      	movw	r1, #0x5320
 8004bc0:      	ldr.w	r9, [r8, #0xc]
 8004bc4:      	movt	r1, #0x800
 8004bc8:      	ldr	r6, [r0]
 8004bca:      	movs	r2, #0xc
 8004bcc:      	mov	r0, r11
 8004bce:      	blx	r9
 8004bd0:      	cmp	r0, #0x0
 8004bd2:      	bne	0x8004ca6 <<&T as core::fmt::Display>::fmt::hf7ae6a92ea82bb38+0xf8> @ imm = #0xd0
 8004bd4:      	movw	r2, #0x5308
 8004bd8:      	movs	r1, #0x0
 8004bda:      	ldr	r0, [r6, #0xc]
 8004bdc:      	movt	r2, #0x800
 8004be0:      	str	r1, [sp, #0x14]
 8004be2:      	movs	r1, #0x3
 8004be4:      	str	r2, [sp, #0x4]
 8004be6:      	add.w	r2, r0, #0xc
 8004bea:      	str	r1, [sp, #0x8]
 8004bec:      	add	r4, sp, #0x1c
 8004bee:      	str	r1, [sp, #0x10]
 8004bf0:      	movw	r1, #0x1c21
 8004bf4:      	movt	r1, #0x800
 8004bf8:      	str	r4, [sp, #0xc]
 8004bfa:      	strd	r1, r2, [sp, #40]
 8004bfe:      	add	r2, sp, #0x4
 8004c00:      	str	r1, [sp, #0x30]
 8004c02:      	add.w	r1, r0, #0x8
 8004c06:      	str	r1, [sp, #0x24]
 8004c08:      	movw	r1, #0x1f11
 8004c0c:      	movt	r1, #0x800
 8004c10:      	strd	r0, r1, [sp, #28]
 8004c14:      	mov	r0, r11
 8004c16:      	mov	r1, r8
 8004c18:      	bl	0x8002686 <core::fmt::write::h095b5b1af45f5b40> @ imm = #-0x2596
 8004c1c:      	cmp	r0, #0x0
 8004c1e:      	bne	0x8004ca6 <<&T as core::fmt::Display>::fmt::hf7ae6a92ea82bb38+0xf8> @ imm = #0x84
 8004c20:      	ldr.w	r10, [r6, #0x8]
 8004c24:      	cmp.w	r10, #0x0
 8004c28:      	beq	0x8004c52 <<&T as core::fmt::Display>::fmt::hf7ae6a92ea82bb38+0xa4> @ imm = #0x26
 8004c2a:      	movw	r1, #0x532c
 8004c2e:      	mov	r0, r11
 8004c30:      	movt	r1, #0x800
 8004c34:      	movs	r2, #0x2
 8004c36:      	blx	r9
 8004c38:      	cbnz	r0, 0x8004ca6 <<&T as core::fmt::Display>::fmt::hf7ae6a92ea82bb38+0xf8> @ imm = #0x6a
 8004c3a:      	mov	r0, r4
 8004c3c:      	mov	r2, r4
 8004c3e:      	ldm.w	r10, {r1, r3, r4, r5, r6, r12}
 8004c42:      	stm.w	r0, {r1, r3, r4, r5, r6, r12}
 8004c46:      	mov	r0, r11
 8004c48:      	mov	r1, r8
 8004c4a:      	bl	0x8002686 <core::fmt::write::h095b5b1af45f5b40> @ imm = #-0x25c8
 8004c4e:      	cbnz	r0, 0x8004ca6 <<&T as core::fmt::Display>::fmt::hf7ae6a92ea82bb38+0xf8> @ imm = #0x54
 8004c50:      	b	0x8004cb0 <<&T as core::fmt::Display>::fmt::hf7ae6a92ea82bb38+0x102> @ imm = #0x5c
 8004c52:      	ldrd	r5, r0, [r6]
 8004c56:      	ldr	r1, [r0, #0xc]
 8004c58:      	mov	r0, r5
 8004c5a:      	blx	r1
 8004c5c:      	movw	r6, #0x1681
 8004c60:      	movt	r6, #0xfdbc
 8004c64:      	eors	r3, r6
 8004c66:      	movw	r6, #0xc89c
 8004c6a:      	movt	r6, #0xc1a2
 8004c6e:      	eors	r1, r6
 8004c70:      	orrs	r1, r3
 8004c72:      	movw	r3, #0xef64
 8004c76:      	movt	r3, #0xb1
 8004c7a:      	eors	r2, r3
 8004c7c:      	movw	r3, #0x7bc1
 8004c80:      	movt	r3, #0xcd1e
 8004c84:      	eors	r0, r3
 8004c86:      	orrs	r0, r2
 8004c88:      	orrs	r0, r1
 8004c8a:      	bne	0x8004cb0 <<&T as core::fmt::Display>::fmt::hf7ae6a92ea82bb38+0x102> @ imm = #0x22
 8004c8c:      	movw	r1, #0x532c
 8004c90:      	mov	r0, r11
 8004c92:      	movt	r1, #0x800
 8004c96:      	movs	r2, #0x2
 8004c98:      	blx	r9
 8004c9a:      	cbnz	r0, 0x8004ca6 <<&T as core::fmt::Display>::fmt::hf7ae6a92ea82bb38+0xf8> @ imm = #0x8
 8004c9c:      	ldrd	r1, r2, [r5]
 8004ca0:      	mov	r0, r11
 8004ca2:      	blx	r9
 8004ca4:      	cbz	r0, 0x8004cb0 <<&T as core::fmt::Display>::fmt::hf7ae6a92ea82bb38+0x102> @ imm = #0x8
 8004ca6:      	movs	r0, #0x1
 8004ca8:      	add	sp, #0x34
 8004caa:      	pop.w	{r8, r9, r10, r11}
 8004cae:      	pop	{r4, r5, r6, r7, pc}
 8004cb0:      	movs	r0, #0x0
 8004cb2:      	add	sp, #0x34
 8004cb4:      	pop.w	{r8, r9, r10, r11}
 8004cb8:      	pop	{r4, r5, r6, r7, pc}

08004cba <__aeabi_memcpy>:
 8004cba:      	b.w	0x8004cbe <compiler_builtins::arm::__aeabi_memcpy::hede741cf09eb7483> @ imm = #0x0

08004cbe <compiler_builtins::arm::__aeabi_memcpy::hede741cf09eb7483>:
 8004cbe:      	b.w	0x8004d5a <compiler_builtins::mem::memcpy::hfd210fbac5fef302> @ imm = #0x98

08004cc2 <compiler_builtins::arm::__aeabi_memset::h2236dc480e6e4d50>:
 8004cc2:      	mov	r3, r1
 8004cc4:      	mov	r1, r2
 8004cc6:      	mov	r2, r3
 8004cc8:      	b.w	0x8004ea2 <compiler_builtins::mem::memset::h7db47754940b7999> @ imm = #0x1d6

08004ccc <compiler_builtins::arm::__aeabi_memset4::h99fb29863fb40cd2>:
 8004ccc:      	uxtb	r2, r2
 8004cce:      	cmp	r1, #0x4
 8004cd0:      	it	lo
 8004cd2:      	blo.w	0x8004cc2 <compiler_builtins::arm::__aeabi_memset::h2236dc480e6e4d50> @ imm = #-0x14
 8004cd6:      	push	{r4, r6, r7, lr}
 8004cd8:      	add	r7, sp, #0x8
 8004cda:      	mov.w	r3, #0x1010101
 8004cde:      	sub.w	lr, r1, #0x4
 8004ce2:      	muls	r3, r2, r3
 8004ce4:      	movs	r4, #0x1
 8004ce6:      	add.w	r4, r4, lr, lsr #2
 8004cea:      	ands	r4, r4, #0x3
 8004cee:      	beq	0x8004d06 <compiler_builtins::arm::__aeabi_memset4::h99fb29863fb40cd2+0x3a> @ imm = #0x14
 8004cf0:      	mov	r12, r0
 8004cf2:      	cmp	r4, #0x1
 8004cf4:      	str	r3, [r12], #4
 8004cf8:      	bne	0x8004d16 <compiler_builtins::arm::__aeabi_memset4::h99fb29863fb40cd2+0x4a> @ imm = #0x1a
 8004cfa:      	mov	r0, r12
 8004cfc:      	mov	r1, lr
 8004cfe:      	cmp.w	lr, #0xc
 8004d02:      	bhs	0x8004d38 <compiler_builtins::arm::__aeabi_memset4::h99fb29863fb40cd2+0x6c> @ imm = #0x32
 8004d04:      	b	0x8004d0c <compiler_builtins::arm::__aeabi_memset4::h99fb29863fb40cd2+0x40> @ imm = #0x4
 8004d06:      	cmp.w	lr, #0xc
 8004d0a:      	bhs	0x8004d38 <compiler_builtins::arm::__aeabi_memset4::h99fb29863fb40cd2+0x6c> @ imm = #0x2a
 8004d0c:      	pop.w	{r4, r6, r7, lr}
 8004d10:      	mov	r0, r12
 8004d12:      	b.w	0x8004cc2 <compiler_builtins::arm::__aeabi_memset::h2236dc480e6e4d50> @ imm = #-0x54
 8004d16:      	cmp	r4, #0x2
 8004d18:      	str	r3, [r0, #0x4]
 8004d1a:      	bne	0x8004d2a <compiler_builtins::arm::__aeabi_memset4::h99fb29863fb40cd2+0x5e> @ imm = #0xc
 8004d1c:      	subs	r1, #0x8
 8004d1e:      	adds	r0, #0x8
 8004d20:      	mov	r12, r0
 8004d22:      	cmp.w	lr, #0xc
 8004d26:      	bhs	0x8004d38 <compiler_builtins::arm::__aeabi_memset4::h99fb29863fb40cd2+0x6c> @ imm = #0xe
 8004d28:      	b	0x8004d0c <compiler_builtins::arm::__aeabi_memset4::h99fb29863fb40cd2+0x40> @ imm = #-0x20
 8004d2a:      	str	r3, [r0, #0x8]
 8004d2c:      	subs	r1, #0xc
 8004d2e:      	adds	r0, #0xc
 8004d30:      	mov	r12, r0
 8004d32:      	cmp.w	lr, #0xc
 8004d36:      	blo	0x8004d0c <compiler_builtins::arm::__aeabi_memset4::h99fb29863fb40cd2+0x40> @ imm = #-0x2e
 8004d38:      	subs	r1, #0x10
 8004d3a:      	strd	r3, r3, [r0]
 8004d3e:      	strd	r3, r3, [r0, #8]
 8004d42:      	adds	r0, #0x10
 8004d44:      	cmp	r1, #0x3
 8004d46:      	bhi	0x8004d38 <compiler_builtins::arm::__aeabi_memset4::h99fb29863fb40cd2+0x6c> @ imm = #-0x12
 8004d48:      	mov	r12, r0
 8004d4a:      	pop.w	{r4, r6, r7, lr}
 8004d4e:      	mov	r0, r12
 8004d50:      	b.w	0x8004cc2 <compiler_builtins::arm::__aeabi_memset::h2236dc480e6e4d50> @ imm = #-0x92

08004d54 <compiler_builtins::arm::__aeabi_memclr8::h5dc23495368a47cf>:
 8004d54:      	movs	r2, #0x0
 8004d56:      	b.w	0x8004ccc <compiler_builtins::arm::__aeabi_memset4::h99fb29863fb40cd2> @ imm = #-0x8e

08004d5a <compiler_builtins::mem::memcpy::hfd210fbac5fef302>:
 8004d5a:      	push	{r4, r5, r6, r7, lr}
 8004d5c:      	add	r7, sp, #0xc
 8004d5e:      	push.w	{r8, r9, r10}
 8004d62:      	cmp	r2, #0x10
 8004d64:      	blo	0x8004e2e <compiler_builtins::mem::memcpy::hfd210fbac5fef302+0xd4> @ imm = #0xc6
 8004d66:      	rsbs	r3, r0, #0
 8004d68:      	ands	r4, r3, #0x3
 8004d6c:      	add.w	r12, r0, r4
 8004d70:      	beq	0x8004da0 <compiler_builtins::mem::memcpy::hfd210fbac5fef302+0x46> @ imm = #0x2c
 8004d72:      	mov	r3, r0
 8004d74:      	mov	r6, r1
 8004d76:      	ldrb	r5, [r6]
 8004d78:      	strb	r5, [r3], #1
 8004d7c:      	cmp	r3, r12
 8004d7e:      	bhs	0x8004da0 <compiler_builtins::mem::memcpy::hfd210fbac5fef302+0x46> @ imm = #0x1e
 8004d80:      	ldrb	r5, [r6, #0x1]
 8004d82:      	strb	r5, [r3], #1
 8004d86:      	cmp	r3, r12
 8004d88:      	ittt	lo
 8004d8a:      	ldrblo	r5, [r6, #0x2]
 8004d8c:      	strblo	r5, [r3], #1
 8004d90:      	cmplo	r3, r12
 8004d92:      	bhs	0x8004da0 <compiler_builtins::mem::memcpy::hfd210fbac5fef302+0x46> @ imm = #0xa
 8004d94:      	ldrb	r5, [r6, #0x3]
 8004d96:      	adds	r6, #0x4
 8004d98:      	strb	r5, [r3], #1
 8004d9c:      	cmp	r3, r12
 8004d9e:      	blo	0x8004d76 <compiler_builtins::mem::memcpy::hfd210fbac5fef302+0x1c> @ imm = #-0x2c
 8004da0:      	sub.w	lr, r2, r4
 8004da4:      	add.w	r9, r1, r4
 8004da8:      	bic	r8, lr, #0x3
 8004dac:      	add.w	r3, r12, r8
 8004db0:      	lsls.w	r1, r9, #0x1e
 8004db4:      	beq	0x8004e34 <compiler_builtins::mem::memcpy::hfd210fbac5fef302+0xda> @ imm = #0x7c
 8004db6:      	cmp.w	r8, #0x1
 8004dba:      	blt	0x8004e66 <compiler_builtins::mem::memcpy::hfd210fbac5fef302+0x10c> @ imm = #0xa8
 8004dbc:      	movs	r1, #0x18
 8004dbe:      	bic	r2, r9, #0x3
 8004dc2:      	and.w	r10, r1, r9, lsl #3
 8004dc6:      	lsl.w	r1, r9, #0x3
 8004dca:      	add.w	r5, r2, #0x8
 8004dce:      	rsbs	r1, r1, #0
 8004dd0:      	ldr	r2, [r2]
 8004dd2:      	and	r6, r1, #0x18
 8004dd6:      	ldr	r1, [r5, #-4]
 8004dda:      	lsr.w	r2, r2, r10
 8004dde:      	lsl.w	r4, r1, r6
 8004de2:      	orrs	r2, r4
 8004de4:      	str	r2, [r12], #4
 8004de8:      	cmp	r12, r3
 8004dea:      	bhs	0x8004e66 <compiler_builtins::mem::memcpy::hfd210fbac5fef302+0x10c> @ imm = #0x78
 8004dec:      	ldr	r2, [r5]
 8004dee:      	lsr.w	r1, r1, r10
 8004df2:      	lsl.w	r4, r2, r6
 8004df6:      	orrs	r1, r4
 8004df8:      	str	r1, [r12], #4
 8004dfc:      	cmp	r12, r3
 8004dfe:      	itttt	lo
 8004e00:      	ldrlo	r1, [r5, #0x4]
 8004e02:      	lsrlo.w	r2, r2, r10
 8004e06:      	lsllo.w	r4, r1, r6
 8004e0a:      	orrlo	r2, r4
 8004e0c:      	itt	lo
 8004e0e:      	strlo	r2, [r12], #4
 8004e12:      	cmplo	r12, r3
 8004e14:      	bhs	0x8004e66 <compiler_builtins::mem::memcpy::hfd210fbac5fef302+0x10c> @ imm = #0x4e
 8004e16:      	ldr	r2, [r5, #0x8]
 8004e18:      	lsr.w	r1, r1, r10
 8004e1c:      	adds	r5, #0x10
 8004e1e:      	lsl.w	r4, r2, r6
 8004e22:      	orrs	r1, r4
 8004e24:      	str	r1, [r12], #4
 8004e28:      	cmp	r12, r3
 8004e2a:      	blo	0x8004dd6 <compiler_builtins::mem::memcpy::hfd210fbac5fef302+0x7c> @ imm = #-0x58
 8004e2c:      	b	0x8004e66 <compiler_builtins::mem::memcpy::hfd210fbac5fef302+0x10c> @ imm = #0x36
 8004e2e:      	mov	r3, r0
 8004e30:      	cbnz	r2, 0x8004e70 <compiler_builtins::mem::memcpy::hfd210fbac5fef302+0x116> @ imm = #0x3c
 8004e32:      	b	0x8004e9c <compiler_builtins::mem::memcpy::hfd210fbac5fef302+0x142> @ imm = #0x66
 8004e34:      	cmp.w	r8, #0x1
 8004e38:      	blt	0x8004e66 <compiler_builtins::mem::memcpy::hfd210fbac5fef302+0x10c> @ imm = #0x2a
 8004e3a:      	mov	r4, r9
 8004e3c:      	ldr	r1, [r4]
 8004e3e:      	str	r1, [r12], #4
 8004e42:      	cmp	r12, r3
 8004e44:      	bhs	0x8004e66 <compiler_builtins::mem::memcpy::hfd210fbac5fef302+0x10c> @ imm = #0x1e
 8004e46:      	ldr	r1, [r4, #0x4]
 8004e48:      	str	r1, [r12], #4
 8004e4c:      	cmp	r12, r3
 8004e4e:      	ittt	lo
 8004e50:      	ldrlo	r1, [r4, #0x8]
 8004e52:      	strlo	r1, [r12], #4
 8004e56:      	cmplo	r12, r3
 8004e58:      	bhs	0x8004e66 <compiler_builtins::mem::memcpy::hfd210fbac5fef302+0x10c> @ imm = #0xa
 8004e5a:      	ldr	r1, [r4, #0xc]
 8004e5c:      	adds	r4, #0x10
 8004e5e:      	str	r1, [r12], #4
 8004e62:      	cmp	r12, r3
 8004e64:      	blo	0x8004e3c <compiler_builtins::mem::memcpy::hfd210fbac5fef302+0xe2> @ imm = #-0x2c
 8004e66:      	add.w	r1, r9, r8
 8004e6a:      	and	r2, lr, #0x3
 8004e6e:      	cbz	r2, 0x8004e9c <compiler_builtins::mem::memcpy::hfd210fbac5fef302+0x142> @ imm = #0x2a
 8004e70:      	add	r2, r3
 8004e72:      	ldrb	r6, [r1]
 8004e74:      	strb	r6, [r3], #1
 8004e78:      	cmp	r3, r2
 8004e7a:      	bhs	0x8004e9c <compiler_builtins::mem::memcpy::hfd210fbac5fef302+0x142> @ imm = #0x1e
 8004e7c:      	ldrb	r6, [r1, #0x1]
 8004e7e:      	strb	r6, [r3], #1
 8004e82:      	cmp	r3, r2
 8004e84:      	ittt	lo
 8004e86:      	ldrblo	r6, [r1, #0x2]
 8004e88:      	strblo	r6, [r3], #1
 8004e8c:      	cmplo	r3, r2
 8004e8e:      	bhs	0x8004e9c <compiler_builtins::mem::memcpy::hfd210fbac5fef302+0x142> @ imm = #0xa
 8004e90:      	ldrb	r6, [r1, #0x3]
 8004e92:      	adds	r1, #0x4
 8004e94:      	strb	r6, [r3], #1
 8004e98:      	cmp	r3, r2
 8004e9a:      	blo	0x8004e72 <compiler_builtins::mem::memcpy::hfd210fbac5fef302+0x118> @ imm = #-0x2c
 8004e9c:      	pop.w	{r8, r9, r10}
 8004ea0:      	pop	{r4, r5, r6, r7, pc}

08004ea2 <compiler_builtins::mem::memset::h7db47754940b7999>:
 8004ea2:      	push	{r4, r6, r7, lr}
 8004ea4:      	add	r7, sp, #0x8
 8004ea6:      	cmp	r2, #0x10
 8004ea8:      	blo	0x8004f16 <compiler_builtins::mem::memset::h7db47754940b7999+0x74> @ imm = #0x6a
 8004eaa:      	rsbs	r3, r0, #0
 8004eac:      	ands	lr, r3, #0x3
 8004eb0:      	add.w	r12, r0, lr
 8004eb4:      	beq	0x8004ed6 <compiler_builtins::mem::memset::h7db47754940b7999+0x34> @ imm = #0x1e
 8004eb6:      	mov	r3, r0
 8004eb8:      	strb	r1, [r3], #1
 8004ebc:      	cmp	r3, r12
 8004ebe:      	itttt	lo
 8004ec0:      	strblo	r1, [r3], #1
 8004ec4:      	cmplo	r3, r12
 8004ec6:      	strblo	r1, [r3], #1
 8004eca:      	cmplo	r3, r12
 8004ecc:      	bhs	0x8004ed6 <compiler_builtins::mem::memset::h7db47754940b7999+0x34> @ imm = #0x6
 8004ece:      	strb	r1, [r3], #1
 8004ed2:      	cmp	r3, r12
 8004ed4:      	blo	0x8004eb8 <compiler_builtins::mem::memset::h7db47754940b7999+0x16> @ imm = #-0x20
 8004ed6:      	sub.w	lr, r2, lr
 8004eda:      	bic	r2, lr, #0x3
 8004ede:      	add.w	r3, r12, r2
 8004ee2:      	cmp	r2, #0x1
 8004ee4:      	blt	0x8004f0e <compiler_builtins::mem::memset::h7db47754940b7999+0x6c> @ imm = #0x26
 8004ee6:      	uxtb	r2, r1
 8004ee8:      	mov.w	r4, #0x1010101
 8004eec:      	muls	r2, r4, r2
 8004eee:      	str	r2, [r12], #4
 8004ef2:      	cmp	r12, r3
 8004ef4:      	bhs	0x8004f0e <compiler_builtins::mem::memset::h7db47754940b7999+0x6c> @ imm = #0x16
 8004ef6:      	str	r2, [r12], #4
 8004efa:      	cmp	r12, r3
 8004efc:      	itt	lo
 8004efe:      	strlo	r2, [r12], #4
 8004f02:      	cmplo	r12, r3
 8004f04:      	bhs	0x8004f0e <compiler_builtins::mem::memset::h7db47754940b7999+0x6c> @ imm = #0x6
 8004f06:      	str	r2, [r12], #4
 8004f0a:      	cmp	r12, r3
 8004f0c:      	blo	0x8004eee <compiler_builtins::mem::memset::h7db47754940b7999+0x4c> @ imm = #-0x22
 8004f0e:      	and	r2, lr, #0x3
 8004f12:      	cbnz	r2, 0x8004f1a <compiler_builtins::mem::memset::h7db47754940b7999+0x78> @ imm = #0x4
 8004f14:      	b	0x8004f3c <compiler_builtins::mem::memset::h7db47754940b7999+0x9a> @ imm = #0x24
 8004f16:      	mov	r3, r0
 8004f18:      	cbz	r2, 0x8004f3c <compiler_builtins::mem::memset::h7db47754940b7999+0x9a> @ imm = #0x20
 8004f1a:      	add	r2, r3
 8004f1c:      	strb	r1, [r3], #1
 8004f20:      	cmp	r3, r2
 8004f22:      	bhs	0x8004f3c <compiler_builtins::mem::memset::h7db47754940b7999+0x9a> @ imm = #0x16
 8004f24:      	strb	r1, [r3], #1
 8004f28:      	cmp	r3, r2
 8004f2a:      	itt	lo
 8004f2c:      	strblo	r1, [r3], #1
 8004f30:      	cmplo	r3, r2
 8004f32:      	bhs	0x8004f3c <compiler_builtins::mem::memset::h7db47754940b7999+0x9a> @ imm = #0x6
 8004f34:      	strb	r1, [r3], #1
 8004f38:      	cmp	r3, r2
 8004f3a:      	blo	0x8004f1c <compiler_builtins::mem::memset::h7db47754940b7999+0x7a> @ imm = #-0x22
 8004f3c:      	pop	{r4, r6, r7, pc}

08004f3e <__aeabi_memclr8>:
 8004f3e:      	b.w	0x8004d54 <compiler_builtins::arm::__aeabi_memclr8::h5dc23495368a47cf> @ imm = #-0x1ee

08004f42 <__aeabi_uldivmod>:
 8004f42:      	push	{r4, lr}
 8004f44:      	sub	sp, #0x10
 8004f46:      	add	r4, sp, #0x8
 8004f48:      	str	r4, [sp]
 8004f4a:      	bl	0x8004f58 <__udivmoddi4> @ imm = #0xa
 8004f4e:      	ldr	r2, [sp, #0x8]
 8004f50:      	ldr	r3, [sp, #0xc]
 8004f52:      	add	sp, #0x10
 8004f54:      	pop	{r4, pc}
 8004f56:      	trap

08004f58 <__udivmoddi4>:
 8004f58:      	push	{r7, lr}
 8004f5a:      	mov	r7, sp
 8004f5c:      	bl	0x8004f70 <compiler_builtins::int::specialized_div_rem::u64_div_rem::hb771848c6993573d> @ imm = #0x10
 8004f60:      	ldr.w	r12, [r7, #0x8]
 8004f64:      	cmp.w	r12, #0x0
 8004f68:      	it	ne
 8004f6a:      	strdne	r2, r3, [r12]
 8004f6e:      	pop	{r7, pc}

08004f70 <compiler_builtins::int::specialized_div_rem::u64_div_rem::hb771848c6993573d>:
 8004f70:      	push	{r4, r5, r6, r7, lr}
 8004f72:      	add	r7, sp, #0xc
 8004f74:      	push.w	{r8, r9, r11}
 8004f78:      	mov	lr, r3
 8004f7a:      	mov	r6, r1
 8004f7c:      	cmp	r2, #0x0
 8004f7e:      	beq	0x800506a <compiler_builtins::int::specialized_div_rem::u64_div_rem::hb771848c6993573d+0xfa> @ imm = #0xe8
 8004f80:      	cmp.w	lr, #0x0
 8004f84:      	bne	0x800506a <compiler_builtins::int::specialized_div_rem::u64_div_rem::hb771848c6993573d+0xfa> @ imm = #0xe2
 8004f86:      	cmp	r6, #0x0
 8004f88:      	beq.w	0x800515a <compiler_builtins::int::specialized_div_rem::u64_div_rem::hb771848c6993573d+0x1ea> @ imm = #0x1ce
 8004f8c:      	cmp	r6, r2
 8004f8e:      	bhs.w	0x8005170 <compiler_builtins::int::specialized_div_rem::u64_div_rem::hb771848c6993573d+0x200> @ imm = #0x1de
 8004f92:      	clz	r1, r6
 8004f96:      	clz	r3, r2
 8004f9a:      	subs	r1, r3, r1
 8004f9c:      	add.w	r3, r1, #0x20
 8004fa0:      	it	eq
 8004fa2:      	moveq	r3, #0x1f
 8004fa4:      	rsb.w	r5, r3, #0x20
 8004fa8:      	lsl.w	r1, lr, r3
 8004fac:      	lsl.w	lr, r2, r3
 8004fb0:      	lsr.w	r5, r2, r5
 8004fb4:      	orrs	r1, r5
 8004fb6:      	subs.w	r5, r3, #0x20
 8004fba:      	and	r3, r3, #0x1f
 8004fbe:      	it	pl
 8004fc0:      	lslpl.w	r1, r2, r5
 8004fc4:      	mov.w	r5, #0x1
 8004fc8:      	lsl.w	r12, r5, r3
 8004fcc:      	mov.w	r3, #0x0
 8004fd0:      	it	pl
 8004fd2:      	movpl.w	lr, #0x0
 8004fd6:      	b	0x8004fea <compiler_builtins::int::specialized_div_rem::u64_div_rem::hb771848c6993573d+0x7a> @ imm = #0x10
 8004fd8:      	mov	r0, r5
 8004fda:      	mov	r6, r4
 8004fdc:      	lsr.w	r5, lr, #0x4
 8004fe0:      	orr.w	lr, r5, r1, lsl #28
 8004fe4:      	lsr.w	r12, r12, #0x4
 8004fe8:      	lsrs	r1, r1, #0x4
 8004fea:      	subs.w	r5, r0, lr
 8004fee:      	sbc.w	r4, r6, r1
 8004ff2:      	cmp	r4, #0x0
 8004ff4:      	bmi	0x8004ffe <compiler_builtins::int::specialized_div_rem::u64_div_rem::hb771848c6993573d+0x8e> @ imm = #0x6
 8004ff6:      	orr.w	r3, r3, r12
 8004ffa:      	bne	0x8005002 <compiler_builtins::int::specialized_div_rem::u64_div_rem::hb771848c6993573d+0x92> @ imm = #0x4
 8004ffc:      	b	0x800505a <compiler_builtins::int::specialized_div_rem::u64_div_rem::hb771848c6993573d+0xea> @ imm = #0x5a
 8004ffe:      	mov	r5, r0
 8005000:      	mov	r4, r6
 8005002:      	lsrs.w	r6, r1, #0x1
 8005006:      	rrx	r0, lr
 800500a:      	subs	r0, r5, r0
 800500c:      	sbc.w	r6, r4, r6
 8005010:      	cmp	r6, #0x0
 8005012:      	bmi	0x800501e <compiler_builtins::int::specialized_div_rem::u64_div_rem::hb771848c6993573d+0xae> @ imm = #0x8
 8005014:      	orr.w	r3, r3, r12, lsr #1
 8005018:      	mov	r5, r0
 800501a:      	bne	0x8005022 <compiler_builtins::int::specialized_div_rem::u64_div_rem::hb771848c6993573d+0xb2> @ imm = #0x4
 800501c:      	b	0x800505a <compiler_builtins::int::specialized_div_rem::u64_div_rem::hb771848c6993573d+0xea> @ imm = #0x3a
 800501e:      	mov	r0, r5
 8005020:      	mov	r6, r4
 8005022:      	lsr.w	r4, lr, #0x2
 8005026:      	orr.w	r4, r4, r1, lsl #30
 800502a:      	subs	r5, r0, r4
 800502c:      	sbc.w	r4, r6, r1, lsr #2
 8005030:      	cmp	r4, #0x0
 8005032:      	bmi	0x800503c <compiler_builtins::int::specialized_div_rem::u64_div_rem::hb771848c6993573d+0xcc> @ imm = #0x6
 8005034:      	orr.w	r3, r3, r12, lsr #2
 8005038:      	bne	0x8005040 <compiler_builtins::int::specialized_div_rem::u64_div_rem::hb771848c6993573d+0xd0> @ imm = #0x4
 800503a:      	b	0x800505a <compiler_builtins::int::specialized_div_rem::u64_div_rem::hb771848c6993573d+0xea> @ imm = #0x1c
 800503c:      	mov	r5, r0
 800503e:      	mov	r4, r6
 8005040:      	lsr.w	r0, lr, #0x3
 8005044:      	orr.w	r0, r0, r1, lsl #29
 8005048:      	subs	r0, r5, r0
 800504a:      	sbc.w	r6, r4, r1, lsr #3
 800504e:      	cmp	r6, #0x0
 8005050:      	bmi	0x8004fd8 <compiler_builtins::int::specialized_div_rem::u64_div_rem::hb771848c6993573d+0x68> @ imm = #-0x7c
 8005052:      	orr.w	r3, r3, r12, lsr #3
 8005056:      	mov	r5, r0
 8005058:      	bne	0x8004fdc <compiler_builtins::int::specialized_div_rem::u64_div_rem::hb771848c6993573d+0x6c> @ imm = #-0x80
 800505a:      	udiv	r0, r5, r2
 800505e:      	orr.w	r12, r0, r3
 8005062:      	mls	r5, r0, r2, r5
 8005066:      	movs	r3, #0x0
 8005068:      	b	0x8005164 <compiler_builtins::int::specialized_div_rem::u64_div_rem::hb771848c6993573d+0x1f4> @ imm = #0xf8
 800506a:      	subs	r1, r0, r2
 800506c:      	mov.w	r12, #0x0
 8005070:      	sbcs.w	r1, r6, lr
 8005074:      	blo	0x8005154 <compiler_builtins::int::specialized_div_rem::u64_div_rem::hb771848c6993573d+0x1e4> @ imm = #0xdc
 8005076:      	cmp	r6, #0x0
 8005078:      	beq	0x8005154 <compiler_builtins::int::specialized_div_rem::u64_div_rem::hb771848c6993573d+0x1e4> @ imm = #0xd8
 800507a:      	clz	r1, r6
 800507e:      	clz	r3, lr
 8005082:      	subs	r3, r3, r1
 8005084:      	and	r5, r3, #0x3f
 8005088:      	and	r3, r3, #0x1f
 800508c:      	rsb.w	r4, r5, #0x20
 8005090:      	lsl.w	r1, lr, r5
 8005094:      	lsl.w	r9, r2, r5
 8005098:      	lsr.w	r4, r2, r4
 800509c:      	orrs	r1, r4
 800509e:      	subs.w	r4, r5, #0x20
 80050a2:      	mov.w	r5, #0x1
 80050a6:      	lsl.w	r8, r5, r3
 80050aa:      	it	pl
 80050ac:      	lslpl.w	r1, r2, r4
 80050b0:      	it	pl
 80050b2:      	movpl.w	r9, #0x0
 80050b6:      	b	0x80050ca <compiler_builtins::int::specialized_div_rem::u64_div_rem::hb771848c6993573d+0x15a> @ imm = #0x10
 80050b8:      	mov	r0, r5
 80050ba:      	mov	r6, r3
 80050bc:      	lsr.w	r3, r9, #0x4
 80050c0:      	orr.w	r9, r3, r1, lsl #28
 80050c4:      	lsr.w	r8, r8, #0x4
 80050c8:      	lsrs	r1, r1, #0x4
 80050ca:      	subs.w	r5, r0, r9
 80050ce:      	sbcs.w	r3, r6, r1
 80050d2:      	bmi	0x80050e2 <compiler_builtins::int::specialized_div_rem::u64_div_rem::hb771848c6993573d+0x172> @ imm = #0xc
 80050d4:      	subs	r0, r5, r2
 80050d6:      	orr.w	r12, r12, r8
 80050da:      	sbcs.w	r0, r3, lr
 80050de:      	bhs	0x80050e6 <compiler_builtins::int::specialized_div_rem::u64_div_rem::hb771848c6993573d+0x176> @ imm = #0x4
 80050e0:      	b	0x8005164 <compiler_builtins::int::specialized_div_rem::u64_div_rem::hb771848c6993573d+0x1f4> @ imm = #0x80
 80050e2:      	mov	r5, r0
 80050e4:      	mov	r3, r6
 80050e6:      	lsrs.w	r4, r1, #0x1
 80050ea:      	rrx	r0, r9
 80050ee:      	subs	r0, r5, r0
 80050f0:      	sbcs.w	r4, r3, r4
 80050f4:      	bmi	0x8005108 <compiler_builtins::int::specialized_div_rem::u64_div_rem::hb771848c6993573d+0x198> @ imm = #0x10
 80050f6:      	subs	r3, r0, r2
 80050f8:      	orr.w	r12, r12, r8, lsr #1
 80050fc:      	sbcs.w	r3, r4, lr
 8005100:      	mov	r5, r0
 8005102:      	mov	r3, r4
 8005104:      	bhs	0x800510c <compiler_builtins::int::specialized_div_rem::u64_div_rem::hb771848c6993573d+0x19c> @ imm = #0x4
 8005106:      	b	0x8005164 <compiler_builtins::int::specialized_div_rem::u64_div_rem::hb771848c6993573d+0x1f4> @ imm = #0x5a
 8005108:      	mov	r0, r5
 800510a:      	mov	r4, r3
 800510c:      	lsr.w	r3, r9, #0x2
 8005110:      	orr.w	r3, r3, r1, lsl #30
 8005114:      	subs	r5, r0, r3
 8005116:      	sbc.w	r3, r4, r1, lsr #2
 800511a:      	cmp	r3, #0x0
 800511c:      	bmi	0x800512c <compiler_builtins::int::specialized_div_rem::u64_div_rem::hb771848c6993573d+0x1bc> @ imm = #0xc
 800511e:      	subs	r0, r5, r2
 8005120:      	orr.w	r12, r12, r8, lsr #2
 8005124:      	sbcs.w	r0, r3, lr
 8005128:      	bhs	0x8005130 <compiler_builtins::int::specialized_div_rem::u64_div_rem::hb771848c6993573d+0x1c0> @ imm = #0x4
 800512a:      	b	0x8005164 <compiler_builtins::int::specialized_div_rem::u64_div_rem::hb771848c6993573d+0x1f4> @ imm = #0x36
 800512c:      	mov	r5, r0
 800512e:      	mov	r3, r4
 8005130:      	lsr.w	r0, r9, #0x3
 8005134:      	orr.w	r0, r0, r1, lsl #29
 8005138:      	subs	r0, r5, r0
 800513a:      	sbc.w	r6, r3, r1, lsr #3
 800513e:      	cmp	r6, #0x0
 8005140:      	bmi	0x80050b8 <compiler_builtins::int::specialized_div_rem::u64_div_rem::hb771848c6993573d+0x148> @ imm = #-0x8c
 8005142:      	subs	r3, r0, r2
 8005144:      	orr.w	r12, r12, r8, lsr #3
 8005148:      	sbcs.w	r3, r6, lr
 800514c:      	mov	r5, r0
 800514e:      	mov	r3, r6
 8005150:      	bhs	0x80050bc <compiler_builtins::int::specialized_div_rem::u64_div_rem::hb771848c6993573d+0x14c> @ imm = #-0x98
 8005152:      	b	0x8005164 <compiler_builtins::int::specialized_div_rem::u64_div_rem::hb771848c6993573d+0x1f4> @ imm = #0xe
 8005154:      	mov	r5, r0
 8005156:      	mov	r3, r6
 8005158:      	b	0x8005164 <compiler_builtins::int::specialized_div_rem::u64_div_rem::hb771848c6993573d+0x1f4> @ imm = #0x8
 800515a:      	udiv	r12, r0, r2
 800515e:      	movs	r3, #0x0
 8005160:      	mls	r5, r12, r2, r0
 8005164:      	movs	r1, #0x0
 8005166:      	mov	r0, r12
 8005168:      	mov	r2, r5
 800516a:      	pop.w	{r8, r9, r11}
 800516e:      	pop	{r4, r5, r6, r7, pc}
 8005170:      	bne	0x8005188 <compiler_builtins::int::specialized_div_rem::u64_div_rem::hb771848c6993573d+0x218> @ imm = #0x14
 8005172:      	udiv	r12, r0, r6
 8005176:      	movs	r3, #0x0
 8005178:      	mls	r5, r12, r6, r0
 800517c:      	movs	r1, #0x1
 800517e:      	mov	r0, r12
 8005180:      	mov	r2, r5
 8005182:      	pop.w	{r8, r9, r11}
 8005186:      	pop	{r4, r5, r6, r7, pc}
 8005188:      	udiv	r1, r6, r2
 800518c:      	cmp.w	r2, #0x10000
 8005190:      	mls	r3, r1, r2, r6
 8005194:      	bhs	0x80051c4 <compiler_builtins::int::specialized_div_rem::u64_div_rem::hb771848c6993573d+0x254> @ imm = #0x2c
 8005196:      	lsls	r3, r3, #0x10
 8005198:      	orr.w	r3, r3, r0, lsr #16
 800519c:      	udiv	r6, r3, r2
 80051a0:      	mls	r3, r6, r2, r3
 80051a4:      	orr.w	r1, r1, r6, lsr #16
 80051a8:      	pkhbt	r0, r0, r3, lsl #16
 80051ac:      	udiv	r3, r0, r2
 80051b0:      	mls	r5, r3, r2, r0
 80051b4:      	orr.w	r12, r3, r6, lsl #16
 80051b8:      	movs	r3, #0x0
 80051ba:      	mov	r0, r12
 80051bc:      	mov	r2, r5
 80051be:      	pop.w	{r8, r9, r11}
 80051c2:      	pop	{r4, r5, r6, r7, pc}
 80051c4:      	subs	r6, r0, r2
 80051c6:      	sbcs.w	r6, r3, lr
 80051ca:      	bhs	0x80051dc <compiler_builtins::int::specialized_div_rem::u64_div_rem::hb771848c6993573d+0x26c> @ imm = #0xe
 80051cc:      	mov.w	r12, #0x0
 80051d0:      	mov	r5, r0
 80051d2:      	mov	r0, r12
 80051d4:      	mov	r2, r5
 80051d6:      	pop.w	{r8, r9, r11}
 80051da:      	pop	{r4, r5, r6, r7, pc}
 80051dc:      	lsl.w	r6, lr, #0x1f
 80051e0:      	orr.w	r8, r6, r2, lsr #1
 80051e4:      	lsl.w	lr, r2, #0x1f
 80051e8:      	mov.w	r12, #0x80000000
 80051ec:      	movs	r6, #0x0
 80051ee:      	b	0x8005204 <compiler_builtins::int::specialized_div_rem::u64_div_rem::hb771848c6993573d+0x294> @ imm = #0x12
 80051f0:      	mov	r0, r4
 80051f2:      	mov	r3, r5
 80051f4:      	lsr.w	r5, lr, #0x4
 80051f8:      	orr.w	lr, r5, r8, lsl #28
 80051fc:      	lsr.w	r12, r12, #0x4
 8005200:      	lsr.w	r8, r8, #0x4
 8005204:      	subs.w	r4, r0, lr
 8005208:      	sbc.w	r5, r3, r8
 800520c:      	cmp	r5, #0x0
 800520e:      	bmi	0x8005218 <compiler_builtins::int::specialized_div_rem::u64_div_rem::hb771848c6993573d+0x2a8> @ imm = #0x6
 8005210:      	orr.w	r6, r6, r12
 8005214:      	bne	0x800521c <compiler_builtins::int::specialized_div_rem::u64_div_rem::hb771848c6993573d+0x2ac> @ imm = #0x4
 8005216:      	b	0x8005274 <compiler_builtins::int::specialized_div_rem::u64_div_rem::hb771848c6993573d+0x304> @ imm = #0x5a
 8005218:      	mov	r4, r0
 800521a:      	mov	r5, r3
 800521c:      	lsrs.w	r3, r8, #0x1
 8005220:      	rrx	r0, lr
 8005224:      	subs	r0, r4, r0
 8005226:      	sbc.w	r3, r5, r3
 800522a:      	cmp	r3, #0x0
 800522c:      	bmi	0x8005238 <compiler_builtins::int::specialized_div_rem::u64_div_rem::hb771848c6993573d+0x2c8> @ imm = #0x8
 800522e:      	orr.w	r6, r6, r12, lsr #1
 8005232:      	mov	r4, r0
 8005234:      	bne	0x800523c <compiler_builtins::int::specialized_div_rem::u64_div_rem::hb771848c6993573d+0x2cc> @ imm = #0x4
 8005236:      	b	0x8005274 <compiler_builtins::int::specialized_div_rem::u64_div_rem::hb771848c6993573d+0x304> @ imm = #0x3a
 8005238:      	mov	r0, r4
 800523a:      	mov	r3, r5
 800523c:      	lsr.w	r4, lr, #0x2
 8005240:      	orr.w	r4, r4, r8, lsl #30
 8005244:      	subs	r4, r0, r4
 8005246:      	sbc.w	r5, r3, r8, lsr #2
 800524a:      	cmp	r5, #0x0
 800524c:      	bmi	0x8005256 <compiler_builtins::int::specialized_div_rem::u64_div_rem::hb771848c6993573d+0x2e6> @ imm = #0x6
 800524e:      	orr.w	r6, r6, r12, lsr #2
 8005252:      	bne	0x800525a <compiler_builtins::int::specialized_div_rem::u64_div_rem::hb771848c6993573d+0x2ea> @ imm = #0x4
 8005254:      	b	0x8005274 <compiler_builtins::int::specialized_div_rem::u64_div_rem::hb771848c6993573d+0x304> @ imm = #0x1c
 8005256:      	mov	r4, r0
 8005258:      	mov	r5, r3
 800525a:      	lsr.w	r0, lr, #0x3
 800525e:      	orr.w	r0, r0, r8, lsl #29
 8005262:      	subs	r0, r4, r0
 8005264:      	sbc.w	r3, r5, r8, lsr #3
 8005268:      	cmp	r3, #0x0
 800526a:      	bmi	0x80051f0 <compiler_builtins::int::specialized_div_rem::u64_div_rem::hb771848c6993573d+0x280> @ imm = #-0x7e
 800526c:      	orr.w	r6, r6, r12, lsr #3
 8005270:      	mov	r4, r0
 8005272:      	bne	0x80051f4 <compiler_builtins::int::specialized_div_rem::u64_div_rem::hb771848c6993573d+0x284> @ imm = #-0x82
 8005274:      	udiv	r0, r4, r2
 8005278:      	movs	r3, #0x0
 800527a:      	mls	r5, r0, r2, r4
 800527e:      	orr.w	r12, r0, r6
 8005282:      	mov	r0, r12
 8005284:      	mov	r2, r5
 8005286:      	pop.w	{r8, r9, r11}
 800528a:      	pop	{r4, r5, r6, r7, pc}

0800528c <HardFaultTrampoline>:
 800528c:      	mov	r0, lr
 800528e:      	movs	r1, #0x4
 8005290:      	tst	r0, r1
 8005292:      	bne	0x800529c <HardFaultTrampoline+0x10> @ imm = #0x6
 8005294:      	mrs	r0, msp
 8005298:      	b.w	0x80052a4 <HardFault_>  @ imm = #0x8
 800529c:      	mrs	r0, psp
 80052a0:      	b.w	0x80052a4 <HardFault_>  @ imm = #0x0

080052a4 <HardFault_>:
 80052a4:      	b	0x80052a4 <HardFault_>  @ imm = #-0x4
 80052a6:      	bmi	0x8005252 <compiler_builtins::int::specialized_div_rem::u64_div_rem::hb771848c6993573d+0x2e2> @ imm = #-0x58
