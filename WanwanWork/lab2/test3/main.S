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
	.comm	globla_var,4,4
	.comm	n,4,4
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
	push	{r4, r7, lr}
	sub	sp, sp, #12
	add	r7, sp, #0
	ldr	r4, .L13
.LPIC0:
	add	r4, pc
	bl	getint(PLT)
	mov	r2, r0
	ldr	r3, .L13+4
	ldr	r3, [r4, r3]
	str	r2, [r3]
	b	.L4
.L5:
	bl	getint(PLT)
	mov	r2, r0
	ldr	r3, .L13+4
	ldr	r3, [r4, r3]
	str	r2, [r3]
.L4:
	ldr	r3, .L13+4
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	cmp	r3, #5
	bgt	.L5
	ldr	r3, .L13+8
	ldr	r3, [r4, r3]
	mov	r2, r3
	movs	r3, #1
	str	r3, [r2]
	movs	r3, #1
	str	r3, [r7, #4]
	b	.L6
.L7:
	ldr	r3, .L13+8
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	mul(PLT)
	mov	r2, r0
	ldr	r3, .L13+8
	ldr	r3, [r4, r3]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	str	r3, [r7, #4]
.L6:
	ldr	r3, .L13+4
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	cmp	r2, r3
	ble	.L7
	ldr	r3, .L13+8
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	lsls	r3, r3, #2
	ldr	r2, .L13+8
	ldr	r2, [r4, r2]
	str	r3, [r2]
	ldr	r3, .L13+8
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	adds	r3, r3, #2
	ldr	r2, .L13+8
	ldr	r2, [r4, r2]
	str	r3, [r2]
	ldr	r3, .L13+8
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	orr	r3, r3, #1
	ldr	r2, .L13+8
	ldr	r2, [r4, r2]
	str	r3, [r2]
	ldr	r3, .L13+8
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	cmp	r3, #64
	ble	.L8
	ldr	r3, .L13+8
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	cmp	r3, #90
	ble	.L9
.L8:
	ldr	r3, .L13+8
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	cmp	r3, #96
	ble	.L10
	ldr	r3, .L13+8
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	cmp	r3, #122
	bgt	.L10
.L9:
	ldr	r3, .L13+8
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	mov	r0, r3
	bl	putch(PLT)
	b	.L11
.L10:
	ldr	r3, .L13+8
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	mov	r0, r3
	bl	putint(PLT)
.L11:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L14:
	.align	2
.L13:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+4)
	.word	n(GOT)
	.word	globla_var(GOT)
	.size	main, .-main
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
	.section	.note.GNU-stack,"",%progbits
