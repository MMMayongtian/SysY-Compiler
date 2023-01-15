	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global move
	.type move , %function
move:
	push {r4, r5, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L38:
	str r0, [fp, #-8]
	str r1, [fp, #-4]
	ldr r4, [fp, #-8]
	mov r0, r4
	bl putint
	mov r0, #32
	bl putch
	ldr r5, [fp, #-4]
	mov r0, r5
	bl putint
	mov r0, #44
	bl putch
	mov r0, #32
	bl putch
	add sp, sp, #8
	pop {r4, r5, fp, lr}
	bx lr

	.global hanoi
	.type hanoi , %function
hanoi:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L41:
	str r0, [fp, #-16]
	str r1, [fp, #-12]
	str r2, [fp, #-8]
	str r3, [fp, #-4]
	ldr r4, [fp, #-16]
	ldr r5, =1
	cmp r4, r5
	moveq r6, #1
	movne r6, #0
	beq .L46
	b .L51
.L46:
	ldr r7, [fp, #-12]
	ldr r4, [fp, #-4]
	mov r0, r7
	mov r1, r4
	bl move
	b .L48
.L47:
	ldr r5, [fp, #-16]
	sub r4, r5, #1
	ldr r5, [fp, #-12]
	ldr r6, [fp, #-4]
	ldr r7, [fp, #-8]
	mov r0, r4
	mov r1, r5
	mov r2, r6
	mov r3, r7
	bl hanoi
	ldr r8, [fp, #-12]
	ldr r4, [fp, #-4]
	mov r0, r8
	mov r1, r4
	bl move
	ldr r5, [fp, #-16]
	sub r4, r5, #1
	ldr r5, [fp, #-8]
	ldr r6, [fp, #-12]
	ldr r7, [fp, #-4]
	mov r0, r4
	mov r1, r5
	mov r2, r6
	mov r3, r7
	bl hanoi
	b .L48
.L48:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L49:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L50:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L51:
	b .L47

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L52:
	bl getint
	mov r4, r0
	str r4, [fp, #-4]
	b .L54
.L54:
	ldr r5, [fp, #-4]
	ldr r4, =0
	cmp r5, r4
	movgt r6, #1
	movle r6, #0
	bgt .L55
	b .L59
.L55:
	bl getint
	mov r7, r0
	mov r0, r7
	mov r1, #1
	mov r2, #2
	mov r3, #3
	bl hanoi
	mov r0, #10
	bl putch
	ldr r8, [fp, #-4]
	sub r4, r8, #1
	str r4, [fp, #-4]
	b .L54
.L56:
	ldr r5, =0
	mov r0, r5
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L57:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L58:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L59:
	b .L56
.L60:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr

