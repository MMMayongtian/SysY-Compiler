	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global FourWhile
	.type FourWhile , %function
FourWhile:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L45:
	ldr r10, =5
	str r10, [fp, #-16]
	ldr r9, =6
	str r9, [fp, #-12]
	ldr r8, =7
	str r8, [fp, #-8]
	ldr r7, =10
	str r7, [fp, #-4]
	b .L50
.L50:
	ldr r6, [fp, #-16]
	cmp r6, #20
	movlt r5, #1
	movge r5, #0
	blt .L51
	b .L55
.L51:
	ldr r4, [fp, #-16]
	add r5, r4, #3
	str r5, [fp, #-16]
	b .L56
.L52:
	ldr r6, [fp, #-16]
	ldr r4, [fp, #-12]
	ldr r5, [fp, #-4]
	add r7, r4, r5
	add r4, r6, r7
	ldr r5, [fp, #-8]
	add r6, r4, r5
	mov r0, r6
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L53:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L54:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L55:
	b .L52
.L56:
	ldr r7, [fp, #-12]
	cmp r7, #10
	movlt r8, #1
	movge r8, #0
	blt .L57
	b .L61
.L57:
	ldr r9, [fp, #-12]
	add r4, r9, #1
	str r4, [fp, #-12]
	b .L62
.L58:
	ldr r5, [fp, #-12]
	sub r4, r5, #2
	str r4, [fp, #-12]
	b .L50
.L59:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L60:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L61:
	b .L58
.L62:
	ldr r6, [fp, #-8]
	cmp r6, #7
	beq .L63
	b .L67
.L63:
	ldr r7, [fp, #-8]
	sub r4, r7, #1
	str r4, [fp, #-8]
	b .L68
.L64:
	ldr r5, [fp, #-8]
	add r4, r5, #1
	str r4, [fp, #-8]
	b .L56
.L65:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L66:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L67:
	b .L64
.L68:
	ldr r6, [fp, #-4]
	cmp r6, #20
	movlt r7, #1
	movge r7, #0
	blt .L69
	b .L73
.L69:
	ldr r8, [fp, #-4]
	add r4, r8, #3
	str r4, [fp, #-4]
	b .L68
.L70:
	ldr r5, [fp, #-4]
	sub r4, r5, #1
	str r4, [fp, #-4]
	b .L62
.L71:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L72:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L73:
	b .L70
.L74:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r10, fp, lr}
	mov fp, sp
	sub sp, sp, #0
.L75:
	bl FourWhile
	mov r10, r0
	mov r0, r10
	add sp, sp, #0
	pop {r10, fp, lr}
	bx lr
.L76:
	add sp, sp, #0
	pop {r10, fp, lr}
	bx lr

