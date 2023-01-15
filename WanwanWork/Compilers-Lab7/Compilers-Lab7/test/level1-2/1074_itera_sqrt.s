	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global fsqrt
	.type fsqrt , %function
fsqrt:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #12
.L32:
	str r0, [fp, #-12]
	ldr r10, =0
	str r10, [fp, #-8]
	ldr r9, [fp, #-12]
	ldr r4, =2
	sdiv r5, r9, r4
	str r5, [fp, #-4]
	b .L36
.L36:
	ldr r6, [fp, #-8]
	ldr r4, [fp, #-4]
	sub r5, r6, r4
	cmp r5, #0
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
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L39:
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L40:
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L41:
	b .L38
.L42:
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L43:
	ldr r10, =400
	str r10, [fp, #-8]
	ldr r9, [fp, #-8]
	mov r0, r9
	bl fsqrt
	mov r8, r0
	str r8, [fp, #-4]
	ldr r7, [fp, #-4]
	mov r0, r7
	bl putint
	ldr r6, =10
	str r6, [fp, #-4]
	ldr r5, [fp, #-4]
	mov r0, r5
	bl putch
	mov r0, #0
	add sp, sp, #8
	pop {r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L46:
	add sp, sp, #8
	pop {r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

