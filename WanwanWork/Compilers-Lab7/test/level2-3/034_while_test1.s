	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global doubleWhile
	.type doubleWhile , %function
doubleWhile:
	push {r4, r5, r6, r7, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L19:
	ldr r4, =5
	str r4, [fp, #-8]
	ldr r5, =7
	str r5, [fp, #-4]
	b .L22
.L22:
	ldr r6, [fp, #-8]
	ldr r4, =100
	cmp r6, r4
	movlt r5, #1
	movge r5, #0
	blt .L23
	b .L27
.L23:
	ldr r7, [fp, #-8]
	add r4, r7, #30
	str r4, [fp, #-8]
	b .L28
.L24:
	ldr r5, [fp, #-4]
	mov r0, r5
	add sp, sp, #8
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L25:
	add sp, sp, #8
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L26:
	add sp, sp, #8
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L27:
	b .L24
.L28:
	ldr r6, [fp, #-4]
	ldr r4, =100
	cmp r6, r4
	movlt r5, #1
	movge r5, #0
	blt .L29
	b .L33
.L29:
	ldr r7, [fp, #-4]
	add r4, r7, #6
	str r4, [fp, #-4]
	b .L28
.L30:
	ldr r5, [fp, #-4]
	sub r4, r5, #100
	str r4, [fp, #-4]
	b .L22
.L31:
	add sp, sp, #8
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L32:
	add sp, sp, #8
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L33:
	b .L30
.L34:
	add sp, sp, #8
	pop {r4, r5, r6, r7, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, fp, lr}
	mov fp, sp
	sub sp, sp, #0
.L35:
	bl doubleWhile
	mov r4, r0
	mov r0, r4
	add sp, sp, #0
	pop {r4, fp, lr}
	bx lr
.L36:
	add sp, sp, #0
	pop {r4, fp, lr}
	bx lr

