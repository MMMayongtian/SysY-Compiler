	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #20
.L42:
	ldr r10, =5
	str r10, [fp, #-20]
	ldr r9, =5
	str r9, [fp, #-16]
	ldr r8, =1
	str r8, [fp, #-12]
	ldr r7, =0
	sub r4, r7, #2
	str r4, [fp, #-8]
	ldr r5, =2
	str r5, [fp, #-4]
	ldr r6, [fp, #-8]
	ldr r4, =1
	mul r5, r6, r4
	ldr r4, =2
	sdiv r6, r5, r4
	cmp r6, #0
	movlt r7, #1
	movge r7, #0
	blt .L48
	b .L53
.L48:
	ldr r8, [fp, #-4]
	mov r0, r8
	bl putint
	b .L49
.L49:
	ldr r9, [fp, #-8]
	ldr r4, =2
	sdiv r5, r9, r4
	mul r4, r5, r4
	sub r5, r9, r4
	add r4, r5, #67
	cmp r4, #0
	movlt r6, #1
	movge r6, #0
	blt .L61
	b .L66
.L50:
	ldr r7, [fp, #-20]
	ldr r4, [fp, #-16]
	sub r5, r7, r4
	cmp r5, #0
	bne .L54
	b .L57
.L51:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L52:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L53:
	b .L50
.L54:
	ldr r6, [fp, #-12]
	add r4, r6, #3
	ldr r5, =2
	sdiv r6, r4, r5
	mul r5, r6, r5
	sub r6, r4, r5
	cmp r6, #0
	bne .L48
	b .L60
.L55:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L56:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L57:
	b .L49
.L58:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L59:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L60:
	b .L49
.L61:
	ldr r7, =4
	str r7, [fp, #-4]
	ldr r8, [fp, #-4]
	mov r0, r8
	bl putint
	b .L62
.L62:
	mov r0, #0
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L63:
	ldr r9, [fp, #-20]
	ldr r4, [fp, #-16]
	sub r5, r9, r4
	cmp r5, #0
	bne .L67
	b .L70
.L64:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L65:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L66:
	b .L63
.L67:
	ldr r6, [fp, #-12]
	add r4, r6, #2
	ldr r5, =2
	sdiv r6, r4, r5
	mul r5, r6, r5
	sub r6, r4, r5
	cmp r6, #0
	bne .L61
	b .L73
.L68:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L69:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L70:
	b .L62
.L71:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L72:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L73:
	b .L62
.L74:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

