	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L24:
	ldr r4, =56
	str r4, [fp, #-8]
	ldr r5, =4
	str r5, [fp, #-4]
	ldr r6, [fp, #-8]
	ldr r4, =0
	sub r5, r4, #4
	sub r4, r6, r5
	ldr r5, [fp, #-4]
	add r6, r4, r5
	str r6, [fp, #-8]
	ldr r7, [fp, #-8]
	ldr r4, =0
	cmp r7, r4
	movne r5, #1
	moveq r5, #0
	moveq r6, #1
	movne r6, #0
	moveq r8, #1
	movne r8, #0
	moveq r9, #1
	movne r9, #0
	ldr r4, =0
	sub r5, r4, r9
	ldr r4, =0
	cmp r5, r4
	movne r6, #1
	moveq r6, #0
	bne .L27
	b .L32
.L27:
	ldr r7, =0
	sub r4, r7, #1
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
	ldr r8, =0
	mov r0, r8
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L31:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L32:
	b .L28
.L33:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L34:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr

