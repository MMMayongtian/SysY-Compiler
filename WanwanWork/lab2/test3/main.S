	.arch armv7-a
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"main.c"
	.text
	.global	globla_var
	.bss
	.align	2
	.type	globla_var, %object
	.size	globla_var, 4
globla_var:
	.space	4
	.text
	.align	1
	.global	mul
	.arch armv7-a
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	mul, %function
mul:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	mul	r3, r2, r3
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	mul, .-mul
	.section	.rodata
	.align	2
.LC0:
	.ascii	"\012\000"
	.text
	.align	1
	.global	main
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	bl	getint(PLT)
	str	r0, [r7]
	b	.L4
.L5:
	bl	getint(PLT)
	str	r0, [r7]
.L4:
	ldr	r3, [r7]
	cmp	r3, #10
	ble	.L5
	movw	r3, #52429
	movt	r3, 16268
	str	r3, [r7, #4]	@ float
	ldr	r3, [r7]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	vldr.32	s15, [r7, #4]
	vadd.f32	s15, s14, s15
	vcvt.s32.f32	s15, s15
	vmov	r2, s15	@ int
	ldr	r3, .L7
.LPIC0:
	add	r3, pc
	str	r2, [r3]
	ldr	r3, .L7+4
.LPIC1:
	add	r3, pc
	ldr	r3, [r3]
	mov	r1, r3
	ldr	r0, [r7]
	bl	mul(PLT)
	str	r0, [r7]
	ldr	r0, [r7]
	bl	putint(PLT)
	ldr	r3, .L7+8
.LPIC2:
	add	r3, pc
	mov	r0, r3
	bl	putf(PLT)
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L8:
	.align	2
.L7:
	.word	globla_var-(.LPIC0+4)
	.word	globla_var-(.LPIC1+4)
	.word	.LC0-(.LPIC2+4)
	.size	main, .-main
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
	.section	.note.GNU-stack,"",%progbits
