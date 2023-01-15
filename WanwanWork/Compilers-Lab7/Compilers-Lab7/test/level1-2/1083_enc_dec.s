	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global enc
	.type enc , %function
enc:
	push {r4, r5, r6, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L34:
	str r0, [fp, #-4]
	ldr r10, [fp, #-4]
	cmp r10, #25
	movgt r9, #1
	movle r9, #0
	bgt .L36
	b .L41
.L36:
	ldr r8, [fp, #-4]
	add r4, r8, #60
	str r4, [fp, #-4]
	b .L38
.L37:
	ldr r5, [fp, #-4]
	sub r4, r5, #15
	str r4, [fp, #-4]
	b .L38
.L38:
	ldr r6, [fp, #-4]
	mov r0, r6
	add sp, sp, #4
	pop {r4, r5, r6, r8, r9, r10, fp, lr}
	bx lr
.L39:
	add sp, sp, #4
	pop {r4, r5, r6, r8, r9, r10, fp, lr}
	bx lr
.L40:
	add sp, sp, #4
	pop {r4, r5, r6, r8, r9, r10, fp, lr}
	bx lr
.L41:
	b .L37
.L42:
	add sp, sp, #4
	pop {r4, r5, r6, r8, r9, r10, fp, lr}
	bx lr

	.global dec
	.type dec , %function
dec:
	push {r4, r5, r6, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L43:
	str r0, [fp, #-4]
	ldr r10, [fp, #-4]
	cmp r10, #85
	movgt r9, #1
	movle r9, #0
	bgt .L45
	b .L50
.L45:
	ldr r8, [fp, #-4]
	sub r4, r8, #59
	str r4, [fp, #-4]
	b .L47
.L46:
	ldr r5, [fp, #-4]
	add r4, r5, #14
	str r4, [fp, #-4]
	b .L47
.L47:
	ldr r6, [fp, #-4]
	mov r0, r6
	add sp, sp, #4
	pop {r4, r5, r6, r8, r9, r10, fp, lr}
	bx lr
.L48:
	add sp, sp, #4
	pop {r4, r5, r6, r8, r9, r10, fp, lr}
	bx lr
.L49:
	add sp, sp, #4
	pop {r4, r5, r6, r8, r9, r10, fp, lr}
	bx lr
.L50:
	b .L46
.L51:
	add sp, sp, #4
	pop {r4, r5, r6, r8, r9, r10, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L52:
	ldr r10, =400
	str r10, [fp, #-8]
	ldr r9, [fp, #-8]
	mov r0, r9
	bl enc
	mov r8, r0
	str r8, [fp, #-4]
	ldr r7, [fp, #-4]
	mov r0, r7
	bl dec
	mov r6, r0
	str r6, [fp, #-4]
	ldr r5, [fp, #-4]
	mov r0, r5
	bl putint
	ldr r4, =10
	str r4, [fp, #-4]
	ldr r10, [fp, #-4]
	mov r0, r10
	bl putch
	mov r0, #0
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L55:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

