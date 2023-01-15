	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L14:
	ldr r10, =10
	str r10, [fp, #-4]
	ldr r9, [fp, #-4]
	cmp r9, #0
	moveq r8, #1
	movne r8, #0
	moveq r7, #1
	movne r7, #0
	moveq r6, #1
	movne r6, #0
	ldr r4, =0
	sub r5, r4, r6
	cmp r5, #0
	bne .L16
	b .L21
.L16:
	ldr r7, =0
	sub r4, r7, #1
	ldr r5, =0
	sub r6, r5, r4
	ldr r4, =0
	sub r5, r4, r6
	str r5, [fp, #-4]
	b .L18
.L17:
	ldr r7, =0
	str r7, [fp, #-4]
	b .L18
.L18:
	ldr r8, [fp, #-4]
	mov r0, r8
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L20:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L21:
	b .L17
.L22:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L23:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

