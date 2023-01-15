	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L24:
	ldr r10, =56
	str r10, [fp, #-8]
	ldr r9, =4
	str r9, [fp, #-4]
	ldr r8, [fp, #-8]
	ldr r4, =0
	sub r5, r4, #4
	sub r4, r8, r5
	ldr r5, [fp, #-4]
	add r6, r4, r5
	str r6, [fp, #-8]
	ldr r7, [fp, #-8]
	cmp r7, #0
	moveq r8, #1
	movne r8, #0
	moveq r9, #1
	movne r9, #0
	moveq r10, #1
	movne r10, #0
	ldr r4, =0
	sub r5, r4, r10
	cmp r5, #0
	bne .L27
	b .L32
.L27:
	ldr r6, =0
	sub r4, r6, #1
	ldr r5, =0
	sub r6, r5, r4
	ldr r4, =0
	sub r5, r4, r6
	str r5, [fp, #-8]
	b .L29
.L28:
	ldr r7, [fp, #-4]
	ldr r4, =0
	add r5, r4, r7
	str r5, [fp, #-8]
	b .L29
.L29:
	ldr r6, [fp, #-8]
	mov r0, r6
	bl putint
	mov r0, #0
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L31:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L32:
	b .L28
.L33:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L34:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

