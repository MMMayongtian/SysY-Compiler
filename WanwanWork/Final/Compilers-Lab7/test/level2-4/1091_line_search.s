	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #76
.L58:
	ldr r4, =0
	str r4, [fp, #-72]
	ldr r5, =0
	str r5, [fp, #-76]
	b .L62
.L62:
	ldr r6, [fp, #-76]
	ldr r4, =10
	cmp r6, r4
	movlt r5, #1
	movge r5, #0
	blt .L63
	b .L67
.L63:
	ldr r7, [fp, #-76]
	add r4, r7, #1
	ldr r5, [fp, #-76]
	ldr r6, =0
	add r7, r6, r5
	mov r5, #4
	mul r5, r7, r5
	mov r6, #-68
	add r6, r6, r5
	add r5, fp, r6
	str r4, [r5]
	ldr r7, [fp, #-76]
	add r4, r7, #1
	str r4, [fp, #-76]
	b .L62
.L64:
	ldr r5, =10
	str r5, [fp, #-12]
	bl getint
	mov r6, r0
	str r6, [fp, #-28]
	ldr r8, [fp, #-12]
	sub r4, r8, #1
	str r4, [fp, #-24]
	ldr r5, =0
	str r5, [fp, #-20]
	ldr r6, [fp, #-24]
	ldr r4, [fp, #-20]
	add r5, r6, r4
	ldr r4, =2
	sdiv r6, r5, r4
	str r6, [fp, #-16]
	ldr r7, =0
	str r7, [fp, #-8]
	ldr r8, =0
	str r8, [fp, #-76]
	ldr r9, =0
	str r9, [fp, #-4]
	b .L77
.L65:
	add sp, sp, #76
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L66:
	add sp, sp, #76
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L67:
	b .L64
.L77:
	ldr r10, [fp, #-76]
	ldr r4, =10
	cmp r10, r4
	movlt r5, #1
	movge r5, #0
	blt .L80
	b .L83
.L78:
	ldr r6, [fp, #-76]
	ldr r4, =0
	add r5, r4, r6
	mov r4, #4
	mul r6, r5, r4
	mov r4, #-68
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, [r5]
	ldr r5, [fp, #-28]
	cmp r4, r5
	moveq r6, #1
	movne r6, #0
	beq .L87
	b .L94
.L79:
	ldr r7, [fp, #-8]
	ldr r4, =1
	cmp r7, r4
	moveq r5, #1
	movne r5, #0
	beq .L95
	b .L100
.L80:
	ldr r6, [fp, #-8]
	ldr r4, =0
	cmp r6, r4
	moveq r5, #1
	movne r5, #0
	beq .L78
	b .L86
.L81:
	add sp, sp, #76
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L82:
	add sp, sp, #76
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L83:
	b .L79
.L84:
	add sp, sp, #76
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L85:
	add sp, sp, #76
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L86:
	b .L79
.L87:
	ldr r7, =1
	str r7, [fp, #-8]
	ldr r8, [fp, #-76]
	str r8, [fp, #-4]
	b .L88
.L88:
	ldr r9, [fp, #-76]
	add r4, r9, #1
	str r4, [fp, #-76]
	b .L77
.L92:
	add sp, sp, #76
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L93:
	add sp, sp, #76
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
	b .F0
.LTORG
.F0:
.L94:
	b .L88
.L95:
	ldr r5, [fp, #-4]
	mov r0, r5
	bl putint
	b .L97
.L96:
	ldr r6, =0
	str r6, [fp, #-28]
	ldr r7, [fp, #-28]
	mov r0, r7
	bl putint
	b .L97
.L97:
	ldr r8, =10
	str r8, [fp, #-28]
	ldr r10, [fp, #-28]
	mov r0, r10
	bl putch
	ldr r9, =0
	mov r0, r9
	add sp, sp, #76
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L98:
	add sp, sp, #76
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L99:
	add sp, sp, #76
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L100:
	b .L96
.L101:
	add sp, sp, #76
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

