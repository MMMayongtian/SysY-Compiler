	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	ldr r4, =408
	sub sp, sp, r4
.L23:
	ldr r10, =0
	str r10, [fp, #-8]
	ldr r9, =0
	str r9, [fp, #-4]
	b .L27
.L27:
	bl getint
	mov r8, r0
	cmp r8, #0
	bne .L28
	b .L31
.L28:
	bl getint
	mov r7, r0
	ldr r4, [fp, #-8]
	mov r5, #4
	mul r4, r4, r5
	ldr r5, =-408
	add r5, r5, r4
	add r4, fp, r5
	str r7, [r4]
	ldr r6, [fp, #-8]
	add r4, r6, #1
	str r4, [fp, #-8]
	b .L27
.L29:
	b .L33
.L30:
	ldr r1, =408
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L31:
	b .L29
.L32:
	ldr r1, =408
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L33:
	ldr r5, [fp, #-8]
	cmp r5, #0
	bne .L34
	b .L37
.L34:
	ldr r7, [fp, #-8]
	sub r4, r7, #1
	str r4, [fp, #-8]
	ldr r5, [fp, #-4]
	ldr r4, [fp, #-8]
	mov r6, #4
	mul r4, r4, r6
	ldr r6, =-408
	add r6, r6, r4
	add r4, fp, r6
	ldr r6, [r4]
	add r4, r5, r6
	str r4, [fp, #-4]
	b .L33
.L35:
	ldr r7, [fp, #-4]
	ldr r4, =79
	sdiv r5, r7, r4
	mul r4, r5, r4
	sub r5, r7, r4
	mov r0, r5
	ldr r1, =408
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L36:
	ldr r1, =408
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L37:
	b .L35
.L38:
	ldr r1, =408
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L40:
	ldr r1, =408
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

