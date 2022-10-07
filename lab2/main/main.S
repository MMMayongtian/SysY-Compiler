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
	.global	a
	.bss
	.align	2
	.type	a, %object
	.size	a, 4
a:
	.space	4
	.global	b
	.align	2
	.type	b, %object
	.size	b, 4
b:
	.space	4
	.text
	.align	1
	.global	max
	.arch armv7-a
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	max, %function
max:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	cmp	r2, r3
	blt	.L2
	ldr	r3, [r7, #4]
	b	.L3
.L2:
	ldr	r3, [r7]
.L3:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	max, .-max
	.section	.rodata
	.align	2
.LC0:
	.ascii	"%d %d\000"
	.align	2
.LC1:
	.ascii	"max is: %d\012\000"
	.text
	.align	1
	.global	main
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	ldr	r3, .L6
.LPIC0:
	add	r3, pc
	mov	r2, r3
	ldr	r3, .L6+4
.LPIC1:
	add	r3, pc
	mov	r1, r3
	ldr	r3, .L6+8
.LPIC2:
	add	r3, pc
	mov	r0, r3
	bl	__isoc99_scanf(PLT)
	ldr	r3, .L6+12
.LPIC3:
	add	r3, pc
	ldr	r3, [r3]
	ldr	r2, .L6+16
.LPIC4:
	add	r2, pc
	ldr	r2, [r2]
	mov	r1, r2
	mov	r0, r3
	bl	max(PLT)
	mov	r3, r0
	mov	r1, r3
	ldr	r3, .L6+20
.LPIC5:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	movs	r3, #0
	mov	r0, r3
	pop	{r7, pc}
.L7:
	.align	2
.L6:
	.word	b-(.LPIC0+4)
	.word	a-(.LPIC1+4)
	.word	.LC0-(.LPIC2+4)
	.word	a-(.LPIC3+4)
	.word	b-(.LPIC4+4)
	.word	.LC1-(.LPIC5+4)
	.size	main, .-main
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
	.section	.note.GNU-stack,"",%progbits
