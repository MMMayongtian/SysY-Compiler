	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global a
	.align 4
	.size a, 4
a:
	.word -1
	.global b
	.align 4
	.size b, 4
b:
	.word 1
	.text
	.global inc_a
	.type inc_a , %function
inc_a:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L46:
	ldr r4, addr_a0
	ldr r5, [r4]
	str r5, [fp, #-4]
	ldr r6, [fp, #-4]
	add r4, r6, #1
	str r4, [fp, #-4]
	ldr r5, [fp, #-4]
	ldr r4, addr_a0
	str r5, [r4]
	ldr r6, addr_a0
	ldr r4, [r6]
	mov r0, r4
	add sp, sp, #4
	pop {r4, r5, r6, fp, lr}
	bx lr
.L48:
	add sp, sp, #4
	pop {r4, r5, r6, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L49:
	ldr r4, =5
	str r4, [fp, #-4]
	b .L51
.L51:
	ldr r5, [fp, #-4]
	ldr r4, =0
	cmp r5, r4
	movge r6, #1
	movlt r6, #0
	bge .L52
	b .L56
.L52:
	bl inc_a
	mov r7, r0
	ldr r4, =0
	cmp r7, r4
	movne r5, #1
	moveq r5, #0
	bne .L60
	b .L62
.L53:
	ldr r6, addr_a0
	ldr r4, [r6]
	mov r0, r4
	bl putint
	mov r0, #32
	bl putch
	ldr r5, addr_b0
	ldr r4, [r5]
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	ldr r6, addr_a0
	ldr r4, [r6]
	mov r0, r4
	add sp, sp, #4
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L54:
	add sp, sp, #4
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L55:
	add sp, sp, #4
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L56:
	b .L53
.L57:
	ldr r5, addr_a0
	ldr r4, [r5]
	mov r0, r4
	bl putint
	mov r0, #32
	bl putch
	ldr r6, addr_b0
	ldr r4, [r6]
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	b .L58
.L58:
	bl inc_a
	mov r5, r0
	ldr r4, =14
	cmp r5, r4
	movlt r6, #1
	movge r6, #0
	blt .L70
	b .L76
.L59:
	bl inc_a
	mov r7, r0
	ldr r4, =0
	cmp r7, r4
	movne r5, #1
	moveq r5, #0
	bne .L57
	b .L68
.L60:
	bl inc_a
	mov r6, r0
	ldr r4, =0
	cmp r6, r4
	movne r5, #1
	moveq r5, #0
	bne .L59
	b .L65
.L61:
	add sp, sp, #4
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L62:
	b .L58
.L63:
	add sp, sp, #4
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L64:
	add sp, sp, #4
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L65:
	b .L58
.L66:
	add sp, sp, #4
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L67:
	add sp, sp, #4
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L68:
	b .L58
.L69:
	add sp, sp, #4
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L70:
	ldr r7, addr_a0
	ldr r4, [r7]
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	ldr r5, addr_b0
	ldr r4, [r5]
	ldr r5, =2
	mul r6, r4, r5
	ldr r4, addr_b0
	str r6, [r4]
	b .L72
.L71:
	bl inc_a
	mov r5, r0
	b .L72
.L72:
	ldr r7, [fp, #-4]
	sub r4, r7, #1
	str r4, [fp, #-4]
	b .L51
	b .F0
.LTORG
addr_a0:
	.word a
addr_b0:
	.word b
.F0:
.L73:
	bl inc_a
	mov r5, r0
	ldr r4, =0
	cmp r5, r4
	movne r6, #1
	moveq r6, #0
	bne .L77
	b .L79
.L74:
	add sp, sp, #4
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L75:
	add sp, sp, #4
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L76:
	b .L73
.L77:
	bl inc_a
	mov r7, r0
	bl inc_a
	mov r4, r0
	sub r5, r7, r4
	add r4, r5, #1
	ldr r5, =0
	cmp r4, r5
	movne r6, #1
	moveq r6, #0
	bne .L70
	b .L82
.L78:
	add sp, sp, #4
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L79:
	b .L71
.L80:
	add sp, sp, #4
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L81:
	add sp, sp, #4
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L82:
	b .L71
.L83:
	add sp, sp, #4
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L84:
	add sp, sp, #4
	pop {r4, r5, r6, r7, fp, lr}
	bx lr

addr_a1:
	.word a
addr_b1:
	.word b
