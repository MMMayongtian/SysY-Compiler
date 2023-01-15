	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global palindrome
	.type palindrome , %function
palindrome:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #28
.L41:
	str r0, [fp, #-28]
	ldr r4, =0
	str r4, [fp, #-8]
	b .L46
.L46:
	ldr r5, [fp, #-8]
	ldr r4, =4
	cmp r5, r4
	movlt r6, #1
	movge r6, #0
	blt .L47
	b .L51
.L47:
	ldr r7, [fp, #-28]
	ldr r4, =10
	sdiv r5, r7, r4
	mul r4, r5, r4
	sub r5, r7, r4
	ldr r4, [fp, #-8]
	ldr r6, =0
	add r7, r6, r4
	mov r4, #4
	mul r4, r7, r4
	mov r6, #-24
	add r4, r6, r4
	add r6, fp, r4
	str r5, [r6]
	ldr r7, [fp, #-28]
	ldr r4, =10
	sdiv r5, r7, r4
	str r5, [fp, #-28]
	ldr r6, [fp, #-8]
	add r4, r6, #1
	str r4, [fp, #-8]
	b .L46
.L48:
	ldr r5, =0
	add r4, r5, #0
	mov r5, #4
	mul r6, r4, r5
	mov r4, #-24
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, [r5]
	ldr r5, =0
	add r6, r5, #3
	mov r5, #4
	mul r5, r6, r5
	mov r6, #-24
	add r6, r6, r5
	add r5, fp, r6
	ldr r6, [r5]
	cmp r4, r6
	moveq r7, #1
	movne r7, #0
	beq .L57
	b .L66
.L49:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L50:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L51:
	b .L48
.L54:
	ldr r8, =1
	str r8, [fp, #-4]
	b .L56
.L55:
	ldr r9, =0
	str r9, [fp, #-4]
	b .L56
.L56:
	ldr r10, [fp, #-4]
	mov r0, r10
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L57:
	ldr r5, =0
	add r4, r5, #1
	mov r5, #4
	mul r6, r4, r5
	mov r4, #-24
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, [r5]
	ldr r5, =0
	add r6, r5, #2
	mov r5, #4
	mul r5, r6, r5
	mov r6, #-24
	add r6, r6, r5
	add r5, fp, r6
	ldr r6, [r5]
	cmp r4, r6
	moveq r7, #1
	movne r7, #0
	beq .L54
	b .L75
.L64:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L65:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L66:
	b .L55
.L73:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L74:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L75:
	b .L55
.L76:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L77:
	ldr r4, =1221
	str r4, [fp, #-8]
	ldr r5, [fp, #-8]
	mov r0, r5
	bl palindrome
	mov r6, r0
	str r6, [fp, #-4]
	ldr r7, [fp, #-4]
	ldr r4, =1
	cmp r7, r4
	moveq r5, #1
	movne r5, #0
	beq .L80
	b .L85
.L80:
	ldr r6, [fp, #-8]
	mov r0, r6
	bl putint
	b .L82
.L81:
	ldr r8, =0
	str r8, [fp, #-4]
	ldr r9, [fp, #-4]
	mov r0, r9
	bl putint
	b .L82
.L82:
	ldr r10, =10
	str r10, [fp, #-4]
	ldr r7, [fp, #-4]
	mov r0, r7
	bl putch
	ldr r4, =0
	mov r0, r4
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L83:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L84:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L85:
	b .L81
.L86:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

