	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global gcd
	.type gcd , %function
gcd:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L26:
	str r0, [fp, #-8]
	str r1, [fp, #-4]
	ldr r4, [fp, #-4]
	ldr r5, =0
	cmp r4, r5
	moveq r6, #1
	movne r6, #0
	beq .L29
	b .L33
.L29:
	ldr r7, [fp, #-8]
	mov r0, r7
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L30:
	ldr r8, [fp, #-4]
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-4]
	sdiv r6, r4, r5
	mul r5, r6, r5
	sub r6, r4, r5
	mov r0, r8
	mov r1, r6
	bl gcd
	mov r7, r0
	mov r0, r7
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L31:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L32:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L33:
	b .L30
.L34:
	b .L30
.L35:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, fp, lr}
	mov fp, sp
	sub sp, sp, #12
.L36:
	bl getint
	mov r4, r0
	str r4, [fp, #-12]
	b .L38
.L38:
	ldr r5, [fp, #-12]
	ldr r4, =0
	cmp r5, r4
	movgt r6, #1
	movle r6, #0
	bgt .L39
	b .L43
.L39:
	bl getint
	mov r7, r0
	str r7, [fp, #-8]
	bl getint
	mov r8, r0
	str r8, [fp, #-4]
	ldr r9, [fp, #-8]
	ldr r4, [fp, #-4]
	mov r0, r9
	mov r1, r4
	bl gcd
	mov r5, r0
	mov r0, r5
	bl putint
	mov r0, #10
	bl putch
	ldr r6, [fp, #-12]
	sub r4, r6, #1
	str r4, [fp, #-12]
	b .L38
.L40:
	ldr r5, =0
	mov r0, r5
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L41:
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L42:
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L43:
	b .L40
.L46:
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr

