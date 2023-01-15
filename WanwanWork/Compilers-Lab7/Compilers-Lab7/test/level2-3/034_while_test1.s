	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global doubleWhile
	.type doubleWhile , %function
doubleWhile:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L19:
	ldr r10, =5
	str r10, [fp, #-8]
	ldr r9, =7
	str r9, [fp, #-4]
	b .L22
.L22:
	ldr r8, [fp, #-8]
	cmp r8, #100
	movlt r7, #1
	movge r7, #0
	blt .L23
	b .L27
.L23:
	ldr r6, [fp, #-8]
	add r4, r6, #30
	str r4, [fp, #-8]
	b .L28
.L24:
	ldr r5, [fp, #-4]
	mov r0, r5
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L25:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L26:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L27:
	b .L24
.L28:
	ldr r7, [fp, #-4]
	cmp r7, #100
	movlt r8, #1
	movge r8, #0
	blt .L29
	b .L33
.L29:
	ldr r9, [fp, #-4]
	add r4, r9, #6
	str r4, [fp, #-4]
	b .L28
.L30:
	ldr r5, [fp, #-4]
	sub r4, r5, #100
	str r4, [fp, #-4]
	b .L22
.L31:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L32:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L33:
	b .L30
.L34:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r10, fp, lr}
	mov fp, sp
	sub sp, sp, #0
.L35:
	bl doubleWhile
	mov r10, r0
	mov r0, r10
	add sp, sp, #0
	pop {r10, fp, lr}
	bx lr
.L36:
	add sp, sp, #0
	pop {r10, fp, lr}
	bx lr

