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
	ldr r4, =0
	str r4, [fp, #-64]
	ldr r5, =0
	str r5, [fp, #-68]
	b .L67
.L67:
	ldr r6, [fp, #-68]
	ldr r4, =10
	cmp r6, r4
	movlt r5, #1
	movge r5, #0
	blt .L68
	b .L72
.L68:
	ldr r7, [fp, #-68]
	add r4, r7, #1
	ldr r5, [fp, #-68]
	ldr r6, =0
	add r7, r6, r5
	mov r5, #4
	mul r6, r7, r5
	mov r5, #-60
	add r6, r5, r6
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
	b .L80
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
.L80:
	ldr r7, [fp, #-8]
	ldr r4, =0
	add r5, r4, r7
	mov r4, #4
	mul r6, r5, r4
	mov r4, #-60
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, [r5]
	ldr r5, [fp, #-20]
	cmp r4, r5
	movne r6, #1
	moveq r6, #0
	bne .L83
	b .L89
.L81:
	ldr r7, [fp, #-16]
	ldr r4, [fp, #-12]
	add r5, r7, r4
	ldr r4, =2
	sdiv r6, r5, r4
	str r6, [fp, #-8]
	ldr r7, [fp, #-20]
	ldr r4, [fp, #-8]
	ldr r5, =0
	add r6, r5, r4
	mov r4, #4
	mul r4, r6, r4
	mov r5, #-60
	add r5, r5, r4
	add r4, fp, r5
	ldr r5, [r4]
	cmp r7, r5
	movlt r6, #1
	movge r6, #0
	blt .L93
	b .L101
.L82:
	ldr r8, [fp, #-20]
	ldr r4, [fp, #-8]
	ldr r5, =0
	add r6, r5, r4
	mov r4, #4
	mul r4, r6, r4
	mov r5, #-60
	add r4, r5, r4
	add r5, fp, r4
	ldr r4, [r5]
	cmp r8, r4
	moveq r6, #1
	movne r6, #0
	beq .L102
	b .L110
.L83:
	ldr r7, [fp, #-12]
	ldr r4, [fp, #-16]
	cmp r7, r4
	movlt r5, #1
	movge r5, #0
	blt .L81
	b .L92
.L87:
	add sp, sp, #68
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L88:
	add sp, sp, #68
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L89:
	b .L82
.L90:
	add sp, sp, #68
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L91:
	add sp, sp, #68
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
	b .F0
.LTORG
.F0:
.L92:
	b .L82
.L93:
	ldr r6, [fp, #-8]
	sub r4, r6, #1
	str r4, [fp, #-16]
	b .L95
.L94:
	ldr r5, [fp, #-8]
	add r4, r5, #1
	str r4, [fp, #-12]
	b .L95
.L95:
	b .L80
.L99:
	add sp, sp, #68
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L100:
	add sp, sp, #68
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L101:
	b .L94
.L102:
	ldr r6, [fp, #-20]
	mov r0, r6
	bl putint
	b .L104
.L103:
	ldr r7, =0
	str r7, [fp, #-20]
	ldr r8, [fp, #-20]
	mov r0, r8
	bl putint
	b .L104
.L104:
	ldr r9, =10
	str r9, [fp, #-20]
	ldr r10, [fp, #-20]
	mov r0, r10
	bl putch
	ldr r5, =0
	mov r0, r5
	add sp, sp, #68
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L108:
	add sp, sp, #68
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L109:
	add sp, sp, #68
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L110:
	b .L103
.L111:
	add sp, sp, #68
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

