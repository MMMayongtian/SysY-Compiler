	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global n
	.align 4
	.size n, 4
n:
	.word 0
	.text
	.global gcd
	.type gcd , %function
gcd:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #24
.L50:
	str r0, [fp, #-24]
	str r1, [fp, #-20]
	ldr r10, [fp, #-24]
	str r10, [fp, #-16]
	ldr r9, [fp, #-20]
	str r9, [fp, #-12]
	ldr r8, [fp, #-24]
	ldr r4, [fp, #-20]
	cmp r8, r4
	movlt r5, #1
	movge r5, #0
	blt .L57
	b .L61
.L57:
	ldr r6, [fp, #-24]
	str r6, [fp, #-8]
	ldr r7, [fp, #-20]
	str r7, [fp, #-24]
	ldr r9, [fp, #-8]
	str r9, [fp, #-20]
	b .L58
.L58:
	ldr r10, [fp, #-24]
	ldr r4, [fp, #-20]
	sdiv r5, r10, r4
	mul r4, r5, r4
	sub r5, r10, r4
	str r5, [fp, #-4]
	b .L62
.L59:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L60:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L61:
	b .L58
.L62:
	ldr r6, [fp, #-4]
	cmp r6, #0
	bne .L63
	b .L67
.L63:
	ldr r7, [fp, #-20]
	str r7, [fp, #-24]
	ldr r8, [fp, #-4]
	str r8, [fp, #-20]
	ldr r9, [fp, #-24]
	ldr r4, [fp, #-20]
	sdiv r5, r9, r4
	mul r4, r5, r4
	sub r5, r9, r4
	str r5, [fp, #-4]
	b .L62
.L64:
	ldr r6, [fp, #-16]
	ldr r4, [fp, #-12]
	mul r5, r6, r4
	ldr r4, [fp, #-20]
	sdiv r6, r5, r4
	mov r0, r6
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L65:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L66:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L67:
	b .L64
.L68:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L69:
	bl getint
	mov r10, r0
	str r10, [fp, #-8]
	bl getint
	mov r9, r0
	str r9, [fp, #-4]
	ldr r8, [fp, #-8]
	ldr r4, [fp, #-4]
	mov r0, r8
	mov r1, r4
	bl gcd
	mov r5, r0
	mov r0, r5
	add sp, sp, #8
	pop {r4, r5, r8, r9, r10, fp, lr}
	bx lr
.L72:
	add sp, sp, #8
	pop {r4, r5, r8, r9, r10, fp, lr}
	bx lr

addr_n0:
	.word n
