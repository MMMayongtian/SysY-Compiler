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
.L14:
	ldr r10, =0
	str r10, [fp, #-4]
	ldr r9, =0
	str r9, [fp, #-8]
	b .L17
.L17:
	ldr r8, [fp, #-8]
	cmp r8, #21
	movlt r7, #1
	movge r7, #0
	blt .L18
	b .L22
.L18:
	ldr r6, [fp, #-4]
	ldr r4, [fp, #-8]
	add r5, r6, r4
	str r5, [fp, #-4]
	ldr r7, [fp, #-8]
	add r4, r7, #1
	str r4, [fp, #-8]
	b .L17
.L19:
	ldr r5, [fp, #-4]
	mov r0, r5
	bl putint
	mov r0, #0
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L20:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L21:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L22:
	b .L19
.L23:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
