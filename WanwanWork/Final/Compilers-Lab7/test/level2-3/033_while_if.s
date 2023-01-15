	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global get_one
	.type get_one , %function
get_one:
	push {r4, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L40:
	str r0, [fp, #-4]
	ldr r4, =1
	mov r0, r4
	add sp, sp, #4
	pop {r4, fp, lr}
	bx lr
.L42:
	add sp, sp, #4
	pop {r4, fp, lr}
	bx lr

	.global deepWhileBr
	.type deepWhileBr , %function
deepWhileBr:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #20
.L43:
	str r0, [fp, #-20]
	str r1, [fp, #-16]
	ldr r4, [fp, #-20]
	ldr r5, [fp, #-16]
	add r6, r4, r5
	str r6, [fp, #-12]
	b .L47
.L47:
	ldr r7, [fp, #-12]
	ldr r4, =75
	cmp r7, r4
	movlt r5, #1
	movge r5, #0
	blt .L48
	b .L52
.L48:
	ldr r6, =42
	str r6, [fp, #-8]
	ldr r8, [fp, #-12]
	ldr r4, =100
	cmp r8, r4
	movlt r5, #1
	movge r5, #0
	blt .L54
	b .L58
.L49:
	ldr r6, [fp, #-12]
	mov r0, r6
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L50:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L51:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L52:
	b .L49
.L54:
	ldr r7, [fp, #-12]
	ldr r4, [fp, #-8]
	add r5, r7, r4
	str r5, [fp, #-12]
	ldr r6, [fp, #-12]
	ldr r4, =99
	cmp r6, r4
	movgt r5, #1
	movle r5, #0
	bgt .L59
	b .L63
.L55:
	b .L47
.L56:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L57:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L58:
	b .L55
.L59:
	ldr r7, [fp, #-8]
	ldr r4, =2
	mul r5, r7, r4
	str r5, [fp, #-4]
	mov r0, #0
	bl get_one
	mov r6, r0
	ldr r4, =1
	cmp r6, r4
	moveq r5, #1
	movne r5, #0
	beq .L65
	b .L69
.L60:
	b .L55
.L61:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L62:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L63:
	b .L60
.L65:
	ldr r7, [fp, #-4]
	ldr r4, =2
	mul r5, r7, r4
	str r5, [fp, #-12]
	b .L66
.L66:
	b .L60
.L67:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L68:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L69:
	b .L66
.L70:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L71:
	ldr r4, =2
	str r4, [fp, #-4]
	ldr r5, [fp, #-4]
	ldr r4, [fp, #-4]
	mov r0, r5
	mov r1, r4
	bl deepWhileBr
	mov r6, r0
	str r6, [fp, #-4]
	ldr r7, [fp, #-4]
	mov r0, r7
	bl putint
	ldr r8, =0
	mov r0, r8
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L73:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr

