	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #68
.L63:
	ldr r10, =0
	str r10, [fp, #-64]
	ldr r9, =0
	str r9, [fp, #-68]
	b .L67
.L67:
	ldr r8, [fp, #-68]
	cmp r8, #10
	movlt r7, #1
	movge r7, #0
	blt .L68
	b .L72
.L68:
	ldr r6, [fp, #-68]
	add r4, r6, #1
	ldr r5, [fp, #-68]
	mov r6, #4
	mul r5, r5, r6
	mov r6, #-60
	add r6, r6, r5
	add r5, fp, r6
	str r4, [r5]
	ldr r7, [fp, #-68]
	add r4, r7, #1
	str r4, [fp, #-68]
	b .L67
.L69:
	ldr r5, =10
	str r5, [fp, #-4]
	bl getint
	mov r6, r0
	str r6, [fp, #-20]
	ldr r8, [fp, #-4]
	sub r4, r8, #1
	str r4, [fp, #-16]
	ldr r5, =0
	str r5, [fp, #-12]
	ldr r6, [fp, #-16]
	ldr r4, [fp, #-12]
	add r5, r6, r4
	ldr r4, =2
	sdiv r6, r5, r4
	str r6, [fp, #-8]
	b .L78
.L70:
	add sp, sp, #68
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L71:
	add sp, sp, #68
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L72:
	b .L69
.L78:
	ldr r7, [fp, #-8]
	mov r4, #4
	mul r5, r7, r4
	mov r4, #-60
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, [r6]
	ldr r5, [fp, #-20]
	cmp r4, r5
	bne .L81
	b .L85
.L79:
	ldr r6, [fp, #-16]
	ldr r4, [fp, #-12]
	add r5, r6, r4
	ldr r4, =2
	sdiv r6, r5, r4
	str r6, [fp, #-8]
	ldr r7, [fp, #-20]
	ldr r4, [fp, #-8]
	mov r5, #4
	mul r4, r4, r5
	mov r5, #-60
	add r5, r5, r4
	add r4, fp, r5
	ldr r5, [r4]
	cmp r7, r5
	movlt r6, #1
	movge r6, #0
	blt .L89
	b .L95
.L80:
	ldr r8, [fp, #-20]
	ldr r4, [fp, #-8]
	mov r5, #4
	mul r5, r4, r5
	mov r4, #-60
	add r5, r4, r5
	add r4, fp, r5
	ldr r5, [r4]
	cmp r8, r5
	beq .L96
	b .L102
.L81:
	ldr r6, [fp, #-12]
	ldr r4, [fp, #-16]
	cmp r6, r4
	movlt r5, #1
	movge r5, #0
	blt .L79
	b .L88
.L83:
	add sp, sp, #68
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L84:
	add sp, sp, #68
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L85:
	b .L80
.L86:
	add sp, sp, #68
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L87:
	add sp, sp, #68
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L88:
	b .L80
.L89:
	ldr r7, [fp, #-8]
	sub r4, r7, #1
	str r4, [fp, #-16]
	b .L91
.L90:
	ldr r5, [fp, #-8]
	add r4, r5, #1
	str r4, [fp, #-12]
	b .L91
.L91:
	b .L78
.L93:
	add sp, sp, #68
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L94:
	add sp, sp, #68
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L95:
	b .L90
.L96:
	ldr r6, [fp, #-20]
	mov r0, r6
	bl putint
	b .L98
.L97:
	ldr r7, =0
	str r7, [fp, #-20]
	ldr r8, [fp, #-20]
	mov r0, r8
	bl putint
	b .L98
.L98:
	ldr r9, =10
	str r9, [fp, #-20]
	ldr r10, [fp, #-20]
	mov r0, r10
	bl putch
	mov r0, #0
	add sp, sp, #68
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L100:
	add sp, sp, #68
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L101:
	add sp, sp, #68
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L102:
	b .L97
.L103:
	add sp, sp, #68
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

