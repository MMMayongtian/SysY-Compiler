	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, fp, lr}
	mov fp, sp
	ldr r4, =408
	sub sp, sp, r4
.L23:
	ldr r4, =0
	str r4, [fp, #-8]
	ldr r5, =0
	str r5, [fp, #-4]
	b .L27
.L27:
	bl getint
	mov r6, r0
	ldr r4, =0
	cmp r6, r4
	movne r5, #1
	moveq r5, #0
	bne .L28
	b .L31
.L28:
	bl getint
	mov r7, r0
	ldr r4, [fp, #-8]
	ldr r5, =0
	add r6, r5, r4
	mov r4, #4
	mul r4, r6, r4
	ldr r5, =-408
	add r5, r5, r4
	add r4, fp, r5
	str r7, [r4]
	ldr r6, [fp, #-8]
	add r4, r6, #1
	str r4, [fp, #-8]
	b .L27
.L29:
	b .L35
.L30:
	ldr r1, =408
	add sp, sp, r1
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L31:
	b .L29
.L32:
	ldr r1, =408
	add sp, sp, r1
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L35:
	ldr r5, [fp, #-8]
	ldr r4, =0
	cmp r5, r4
	movne r6, #1
	moveq r6, #0
	bne .L36
	b .L39
.L36:
	ldr r7, [fp, #-8]
	sub r4, r7, #1
	str r4, [fp, #-8]
	ldr r5, [fp, #-4]
	ldr r4, [fp, #-8]
	ldr r6, =0
	add r7, r6, r4
	mov r4, #4
	mul r6, r7, r4
	ldr r4, =-408
	add r6, r4, r6
	add r4, fp, r6
	ldr r6, [r4]
	add r4, r5, r6
	str r4, [fp, #-4]
	b .L35
.L37:
	ldr r7, [fp, #-4]
	ldr r4, =79
	sdiv r5, r7, r4
	mul r4, r5, r4
	sub r5, r7, r4
	mov r0, r5
	ldr r1, =408
	add sp, sp, r1
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L38:
	ldr r1, =408
	add sp, sp, r1
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L39:
	b .L37
.L40:
	ldr r1, =408
	add sp, sp, r1
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L44:
	ldr r1, =408
	add sp, sp, r1
	pop {r4, r5, r6, r7, fp, lr}
	bx lr

