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
	ldr r10, =0
	str r10, [fp, #-72]
	ldr r9, =0
	str r9, [fp, #-76]
	b .L62
.L62:
	ldr r8, [fp, #-76]
	cmp r8, #10
	movlt r7, #1
	movge r7, #0
	blt .L63
	b .L67
.L63:
	ldr r6, [fp, #-76]
	add r4, r6, #1
	ldr r5, [fp, #-76]
	mov r6, #4
	mul r5, r5, r6
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
	b .L75
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
.L75:
	ldr r10, [fp, #-76]
	cmp r10, #10
	movlt r5, #1
	movge r5, #0
	blt .L78
	b .L81
.L76:
	ldr r4, [fp, #-76]
	mov r5, #4
	mul r6, r4, r5
	mov r4, #-68
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, [r5]
	ldr r5, [fp, #-28]
	cmp r4, r5
	beq .L85
	b .L90
.L77:
	ldr r6, [fp, #-8]
	cmp r6, #1
	beq .L91
	b .L96
.L78:
	ldr r7, [fp, #-8]
	cmp r7, #0
	beq .L76
	b .L84
.L79:
	add sp, sp, #76
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L80:
	add sp, sp, #76
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L81:
	b .L77
.L82:
	add sp, sp, #76
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L83:
	add sp, sp, #76
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L84:
	b .L77
.L85:
	ldr r8, =1
	str r8, [fp, #-8]
	ldr r9, [fp, #-76]
	str r9, [fp, #-4]
	b .L86
.L86:
	ldr r10, [fp, #-76]
	add r4, r10, #1
	str r4, [fp, #-76]
	b .L75
.L88:
	add sp, sp, #76
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L89:
	add sp, sp, #76
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L90:
	b .L86
.L91:
	ldr r5, [fp, #-4]
	mov r0, r5
	bl putint
	b .L93
.L92:
	ldr r6, =0
	str r6, [fp, #-28]
	ldr r7, [fp, #-28]
	mov r0, r7
	bl putint
	b .L93
.L93:
	ldr r8, =10
	str r8, [fp, #-28]
	ldr r9, [fp, #-28]
	mov r0, r9
	bl putch
	mov r0, #0
	add sp, sp, #76
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L94:
	add sp, sp, #76
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L95:
	add sp, sp, #76
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L96:
	b .L92
.L97:
	add sp, sp, #76
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

