	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global dec2bin
	.type dec2bin , %function
dec2bin:
	push {r4, r5, r6, r7, fp, lr}
	mov fp, sp
	sub sp, sp, #20
.L37:
	str r0, [fp, #-20]
	ldr r4, =0
	str r4, [fp, #-16]
	ldr r5, =1
	str r5, [fp, #-12]
	ldr r6, [fp, #-20]
	str r6, [fp, #-4]
	b .L43
.L43:
	ldr r7, [fp, #-4]
	ldr r4, =0
	cmp r7, r4
	movne r5, #1
	moveq r5, #0
	bne .L44
	b .L48
.L44:
	ldr r6, [fp, #-4]
	ldr r4, =2
	sdiv r5, r6, r4
	mul r4, r5, r4
	sub r5, r6, r4
	str r5, [fp, #-8]
	ldr r7, [fp, #-12]
	ldr r4, [fp, #-8]
	mul r5, r7, r4
	ldr r4, [fp, #-16]
	add r6, r5, r4
	str r6, [fp, #-16]
	ldr r7, [fp, #-12]
	ldr r4, =10
	mul r5, r7, r4
	str r5, [fp, #-12]
	ldr r6, [fp, #-4]
	ldr r4, =2
	sdiv r5, r6, r4
	str r5, [fp, #-4]
	b .L43
.L45:
	ldr r7, [fp, #-16]
	mov r0, r7
	add sp, sp, #20
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L46:
	add sp, sp, #20
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L47:
	add sp, sp, #20
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L48:
	b .L45
.L49:
	add sp, sp, #20
	pop {r4, r5, r6, r7, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L50:
	ldr r4, =400
	str r4, [fp, #-8]
	ldr r5, [fp, #-8]
	mov r0, r5
	bl dec2bin
	mov r6, r0
	str r6, [fp, #-4]
	ldr r7, [fp, #-4]
	mov r0, r7
	bl putint
	ldr r8, =10
	str r8, [fp, #-4]
	ldr r9, [fp, #-4]
	mov r0, r9
	bl putch
	ldr r10, =0
	mov r0, r10
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L53:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

