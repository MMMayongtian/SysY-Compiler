	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global N
	.align 4
	.size N, 4
N:
	.word 0
	.text
	.global insert
	.type insert , %function
insert:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L68:
	str r0, [fp, #-16]
	str r1, [fp, #-12]
	ldr r10, =0
	str r10, [fp, #-8]
	b .L73
.L73:
	ldr r9, [fp, #-12]
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-8]
	mov r6, #4
	mul r6, r5, r6
	add r5, r4, r6
	ldr r4, [r5]
	cmp r9, r4
	movgt r6, #1
	movle r6, #0
	bgt .L76
	b .L81
.L74:
	ldr r7, [fp, #-8]
	add r4, r7, #1
	str r4, [fp, #-8]
	b .L73
.L75:
	ldr r5, addr_N0
	ldr r4, [r5]
	str r4, [fp, #-4]
	b .L85
.L76:
	ldr r6, [fp, #-8]
	ldr r4, addr_N0
	ldr r5, [r4]
	cmp r6, r5
	movlt r7, #1
	movge r7, #0
	blt .L74
	b .L84
.L79:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L80:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L81:
	b .L75
.L82:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L83:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L84:
	b .L75
.L85:
	ldr r8, [fp, #-4]
	ldr r4, [fp, #-8]
	cmp r8, r4
	movgt r5, #1
	movle r5, #0
	bgt .L86
	b .L90
.L86:
	ldr r6, [fp, #-16]
	ldr r4, [fp, #-4]
	sub r5, r4, #1
	mov r4, #4
	mul r5, r5, r4
	add r4, r6, r5
	ldr r5, [r4]
	ldr r4, [fp, #-16]
	ldr r6, [fp, #-4]
	mov r7, #4
	mul r7, r6, r7
	add r6, r4, r7
	str r5, [r6]
	ldr r8, [fp, #-12]
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-8]
	mov r6, #4
	mul r6, r5, r6
	add r5, r4, r6
	str r8, [r5]
	ldr r7, [fp, #-4]
	sub r4, r7, #1
	str r4, [fp, #-4]
	b .L85
.L87:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L88:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L89:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L90:
	b .L87
.L95:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #52
.L96:
	ldr r10, =10
	ldr r4, addr_N0
	str r10, [r4]
	mov r5, #0
	mov r4, #4
	mul r6, r5, r4
	mov r4, #-52
	add r5, r4, r6
	add r4, fp, r5
	ldr r5, =1
	str r5, [r4]
	mov r6, #1
	mov r4, #4
	mul r5, r6, r4
	mov r4, #-52
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, =3
	str r4, [r6]
	mov r5, #2
	mov r4, #4
	mul r6, r5, r4
	mov r4, #-52
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =4
	str r4, [r5]
	mov r6, #3
	mov r4, #4
	mul r5, r6, r4
	mov r4, #-52
	add r6, r4, r5
	add r4, fp, r6
	ldr r5, =7
	str r5, [r4]
	mov r6, #4
	mov r4, #4
	mul r5, r6, r4
	mov r4, #-52
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, =8
	str r4, [r6]
	mov r5, #5
	mov r4, #4
	mul r6, r5, r4
	mov r4, #-52
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =11
	str r4, [r5]
	mov r6, #6
	mov r4, #4
	mul r5, r6, r4
	mov r4, #-52
	add r6, r4, r5
	add r4, fp, r6
	ldr r5, =13
	str r5, [r4]
	mov r6, #7
	mov r4, #4
	mul r5, r6, r4
	mov r4, #-52
	add r6, r4, r5
	add r4, fp, r6
	ldr r5, =18
	str r5, [r4]
	mov r6, #8
	mov r4, #4
	mul r4, r6, r4
	mov r5, #-52
	add r4, r5, r4
	add r6, fp, r4
	ldr r4, =56
	str r4, [r6]
	mov r5, #9
	mov r4, #4
	mul r6, r5, r4
	mov r4, #-52
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =78
	str r4, [r5]
	ldr r6, =0
	str r6, [fp, #-4]
	bl getint
	mov r7, r0
	str r7, [fp, #-8]
	mov r8, #0
	mov r4, #4
	mul r5, r8, r4
	mov r4, #-52
	add r6, r4, r5
	add r4, fp, r6
	ldr r5, [fp, #-8]
	mov r0, r4
	mov r1, r5
	bl insert
	mov r6, r0
	str r6, [fp, #-8]
	b .L100
.L100:
	ldr r7, [fp, #-4]
	ldr r4, addr_N0
	ldr r5, [r4]
	cmp r7, r5
	movlt r6, #1
	movge r6, #0
	blt .L101
	b .L105
.L101:
	ldr r8, [fp, #-4]
	mov r4, #4
	mul r5, r8, r4
	mov r4, #-52
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, [r6]
	str r4, [fp, #-8]
	ldr r5, [fp, #-8]
	mov r0, r5
	bl putint
	ldr r7, =10
	str r7, [fp, #-8]
	ldr r8, [fp, #-8]
	mov r0, r8
	bl putch
	ldr r9, [fp, #-4]
	add r4, r9, #1
	str r4, [fp, #-4]
	b .L100
.L102:
	mov r0, #0
	add sp, sp, #52
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L103:
	add sp, sp, #52
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L104:
	add sp, sp, #52
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L105:
	b .L102
.L107:
	add sp, sp, #52
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

addr_N0:
	.word N
