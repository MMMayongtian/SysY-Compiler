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
	ldr r10, =0
	str r10, [fp, #-8]
	b .L46
.L46:
	ldr r9, [fp, #-8]
	cmp r9, #4
	movlt r8, #1
	movge r8, #0
	blt .L47
	b .L51
.L47:
	ldr r7, [fp, #-28]
	ldr r4, =10
	sdiv r5, r7, r4
	mul r4, r5, r4
	sub r5, r7, r4
	ldr r4, [fp, #-8]
	mov r6, #4
	mul r4, r4, r6
	mov r6, #-24
	add r6, r6, r4
	add r4, fp, r6
	str r5, [r4]
	ldr r7, [fp, #-28]
	ldr r4, =10
	sdiv r5, r7, r4
	str r5, [fp, #-28]
	ldr r6, [fp, #-8]
	add r4, r6, #1
	str r4, [fp, #-8]
	b .L46
.L48:
	mov r5, #0
	mov r4, #4
	mul r6, r5, r4
	mov r4, #-24
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, [r5]
	mov r5, #3
	mov r6, #4
	mul r5, r5, r6
	mov r6, #-24
	add r5, r6, r5
	add r6, fp, r5
	ldr r5, [r6]
	cmp r4, r5
	beq .L55
	b .L60
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
.L52:
	ldr r7, =1
	str r7, [fp, #-4]
	b .L54
.L53:
	ldr r8, =0
	str r8, [fp, #-4]
	b .L54
.L54:
	ldr r9, [fp, #-4]
	mov r0, r9
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L55:
	mov r10, #1
	mov r4, #4
	mul r5, r10, r4
	mov r4, #-24
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, [r6]
	mov r5, #2
	mov r6, #4
	mul r5, r5, r6
	mov r6, #-24
	add r6, r6, r5
	add r5, fp, r6
	ldr r6, [r5]
	cmp r4, r6
	beq .L52
	b .L65
.L58:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L59:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L60:
	b .L53
.L63:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L64:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L65:
	b .L53
.L66:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L67:
	ldr r10, =1221
	str r10, [fp, #-8]
	ldr r9, [fp, #-8]
	mov r0, r9
	bl palindrome
	mov r8, r0
	str r8, [fp, #-4]
	ldr r7, [fp, #-4]
	cmp r7, #1
	beq .L70
	b .L75
.L70:
	ldr r6, [fp, #-8]
	mov r0, r6
	bl putint
	b .L72
.L71:
	ldr r5, =0
	str r5, [fp, #-4]
	ldr r4, [fp, #-4]
	mov r0, r4
	bl putint
	b .L72
.L72:
	ldr r10, =10
	str r10, [fp, #-4]
	ldr r9, [fp, #-4]
	mov r0, r9
	bl putch
	mov r0, #0
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L73:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L74:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L75:
	b .L71
.L76:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

