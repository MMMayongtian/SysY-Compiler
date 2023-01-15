	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L14:
	ldr r4, =0
	str r4, [fp, #-4]
	ldr r5, =0
	str r5, [fp, #-8]
	b .L17
.L17:
	ldr r6, [fp, #-8]
	ldr r4, =21
	cmp r6, r4
	movlt r5, #1
	movge r5, #0
	blt .L18
	b .L22
.L18:
	ldr r7, [fp, #-4]
	ldr r4, [fp, #-8]
	add r5, r7, r4
	str r5, [fp, #-4]
	ldr r6, [fp, #-8]
	add r4, r6, #1
	str r4, [fp, #-8]
	b .L17
.L19:
	ldr r5, [fp, #-4]
	mov r0, r5
	bl putint
	ldr r7, =0
	mov r0, r7
	add sp, sp, #8
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L20:
	add sp, sp, #8
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L21:
	add sp, sp, #8
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L22:
	b .L19
.L23:
	add sp, sp, #8
	pop {r4, r5, r6, r7, fp, lr}
	bx lr

