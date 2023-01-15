	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global fsqrt
	.type fsqrt , %function
fsqrt:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #12
.L32:
	str r0, [fp, #-12]
	ldr r4, =0
	str r4, [fp, #-8]
	ldr r5, [fp, #-12]
	ldr r4, =2
	sdiv r6, r5, r4
	str r6, [fp, #-4]
	b .L36
.L36:
	ldr r7, [fp, #-8]
	ldr r4, [fp, #-4]
	sub r5, r7, r4
	ldr r4, =0
	cmp r5, r4
	movne r6, #1
	moveq r6, #0
	bne .L37
	b .L41
.L37:
	ldr r7, [fp, #-4]
	str r7, [fp, #-8]
	ldr r8, [fp, #-8]
	ldr r4, [fp, #-12]
	ldr r5, [fp, #-8]
	sdiv r6, r4, r5
	add r4, r8, r6
	str r4, [fp, #-4]
	ldr r5, [fp, #-4]
	ldr r4, =2
	sdiv r6, r5, r4
	str r6, [fp, #-4]
	b .L36
.L38:
	ldr r7, [fp, #-4]
	mov r0, r7
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L39:
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L40:
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L41:
	b .L38
.L42:
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L43:
	ldr r4, =400
	str r4, [fp, #-8]
	ldr r5, [fp, #-8]
	mov r0, r5
	bl fsqrt
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
.L46:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

