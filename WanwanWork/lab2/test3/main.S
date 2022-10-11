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
	.section	.rodata
	.align	2
.LC0:
	.ascii	"\012\000"
	.text
	.align	1
	.global	main
	.arch armv7-a
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
	ldr	r3, [r7]
	lsls	r3, r3, #1
	str	r3, [r7]
	ldr	r3, [r7]
	adds	r3, r3, #4
	str	r3, [r7]
	ldr	r3, [r7]
	orr	r3, r3, #1
	str	r3, [r7]
	movs	r3, #0
	str	r3, [r7, #4]
	b	.L2
.L3:
	ldr	r2, [r7]
	ldr	r3, [r7, #4]
	subs	r3, r2, r3
	str	r3, [r7]
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	str	r3, [r7, #4]
.L2:
	ldr	r3, [r7, #4]
	cmp	r3, #4
	ble	.L3
	ldr	r3, [r7]
	cmp	r3, #64
	ble	.L4
	ldr	r3, [r7]
	cmp	r3, #90
	ble	.L5
.L4:
	ldr	r3, [r7]
	cmp	r3, #96
	ble	.L6
	ldr	r3, [r7]
	cmp	r3, #122
	bgt	.L6
.L5:
	ldr	r0, [r7]
	bl	putch(PLT)
.L6:
	ldr	r3, .L8
.LPIC0:
	add	r3, pc
	mov	r0, r3
	bl	putf(PLT)
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L9:
	.align	2
.L8:
	.word	.LC0-(.LPIC0+4)
	.size	main, .-main
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
	.section	.note.GNU-stack,"",%progbits
