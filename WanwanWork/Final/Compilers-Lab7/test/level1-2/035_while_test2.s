	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global FourWhile
	.type FourWhile , %function
FourWhile:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L45:
	ldr r4, =5
	str r4, [fp, #-16]
	ldr r5, =6
	str r5, [fp, #-12]
	ldr r6, =7
	str r6, [fp, #-8]
	ldr r7, =10
	str r7, [fp, #-4]
	b .L50
.L50:
	ldr r8, [fp, #-16]
	ldr r4, =20
	cmp r8, r4
	movlt r5, #1
	movge r5, #0
	blt .L51
	b .L55
.L51:
	ldr r6, [fp, #-16]
	add r4, r6, #3
	str r4, [fp, #-16]
	b .L56
.L52:
	ldr r5, [fp, #-16]
	ldr r4, [fp, #-12]
	ldr r6, [fp, #-4]
	add r7, r4, r6
	add r4, r5, r7
	ldr r5, [fp, #-8]
	add r6, r4, r5
	mov r0, r6
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L53:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L54:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L55:
	b .L52
.L56:
	ldr r7, [fp, #-12]
	ldr r4, =10
	cmp r7, r4
	movlt r5, #1
	movge r5, #0
	blt .L57
	b .L61
.L57:
	ldr r6, [fp, #-12]
	add r4, r6, #1
	str r4, [fp, #-12]
	b .L62
.L58:
	ldr r5, [fp, #-12]
	sub r4, r5, #2
	str r4, [fp, #-12]
	b .L50
.L59:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L60:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L61:
	b .L58
.L62:
	ldr r6, [fp, #-8]
	ldr r4, =7
	cmp r6, r4
	moveq r5, #1
	movne r5, #0
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
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L66:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L67:
	b .L64
.L68:
	ldr r6, [fp, #-4]
	ldr r4, =20
	cmp r6, r4
	movlt r5, #1
	movge r5, #0
	blt .L69
	b .L73
.L69:
	ldr r7, [fp, #-4]
	add r4, r7, #3
	str r4, [fp, #-4]
	b .L68
.L70:
	ldr r5, [fp, #-4]
	sub r4, r5, #1
	str r4, [fp, #-4]
	b .L62
.L71:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L72:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L73:
	b .L70
.L74:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, fp, lr}
	mov fp, sp
	sub sp, sp, #0
.L75:
	bl FourWhile
	mov r4, r0
	mov r0, r4
	add sp, sp, #0
	pop {r4, fp, lr}
	bx lr
.L76:
	add sp, sp, #0
	pop {r4, fp, lr}
	bx lr

