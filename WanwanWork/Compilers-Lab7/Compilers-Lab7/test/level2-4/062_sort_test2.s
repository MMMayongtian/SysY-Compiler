	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global n
	.align 4
	.size n, 4
n:
	.word 0
	.text
	.global insertsort
	.type insertsort , %function
insertsort:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L68:
	str r0, [fp, #-16]
	ldr r10, =1
	str r10, [fp, #-12]
	b .L71
.L71:
	ldr r9, [fp, #-12]
	ldr r4, addr_n0
	ldr r5, [r4]
	cmp r9, r5
	movlt r6, #1
	movge r6, #0
	blt .L72
	b .L76
.L72:
	ldr r7, [fp, #-16]
	ldr r4, [fp, #-12]
	mov r5, #4
	mul r5, r4, r5
	add r4, r7, r5
	ldr r5, [r4]
	str r5, [fp, #-8]
	ldr r6, [fp, #-12]
	sub r4, r6, #1
	str r4, [fp, #-4]
	b .L81
.L73:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L74:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L75:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L76:
	b .L73
.L81:
	ldr r5, [fp, #-4]
	ldr r4, =0
	sub r6, r4, #1
	cmp r5, r6
	movgt r7, #1
	movle r7, #0
	bgt .L84
	b .L87
.L82:
	ldr r8, [fp, #-16]
	ldr r4, [fp, #-4]
	mov r5, #4
	mul r5, r4, r5
	add r4, r8, r5
	ldr r5, [r4]
	ldr r4, [fp, #-16]
	ldr r6, [fp, #-4]
	add r7, r6, #1
	mov r6, #4
	mul r7, r7, r6
	add r6, r4, r7
	str r5, [r6]
	ldr r8, [fp, #-4]
	sub r4, r8, #1
	str r4, [fp, #-4]
	b .L81
.L83:
	ldr r5, [fp, #-8]
	ldr r4, [fp, #-16]
	ldr r6, [fp, #-4]
	add r7, r6, #1
	mov r6, #4
	mul r7, r7, r6
	add r6, r4, r7
	str r5, [r6]
	ldr r8, [fp, #-12]
	add r4, r8, #1
	str r4, [fp, #-12]
	b .L71
.L84:
	ldr r5, [fp, #-8]
	ldr r4, [fp, #-16]
	ldr r6, [fp, #-4]
	mov r7, #4
	mul r7, r6, r7
	add r6, r4, r7
	ldr r4, [r6]
	cmp r5, r4
	movlt r7, #1
	movge r7, #0
	blt .L82
	b .L92
.L85:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L86:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L87:
	b .L83
.L90:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L91:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L92:
	b .L83
.L97:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #48
.L98:
	ldr r10, =10
	ldr r4, addr_n0
	str r10, [r4]
	mov r5, #0
	mov r4, #4
	mul r6, r5, r4
	mov r4, #-48
	add r5, r4, r6
	add r4, fp, r5
	ldr r5, =4
	str r5, [r4]
	mov r6, #1
	mov r4, #4
	mul r5, r6, r4
	mov r4, #-48
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, =3
	str r4, [r6]
	mov r5, #2
	mov r4, #4
	mul r6, r5, r4
	mov r4, #-48
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =9
	str r4, [r5]
	mov r6, #3
	mov r4, #4
	mul r4, r6, r4
	mov r5, #-48
	add r4, r5, r4
	add r6, fp, r4
	ldr r4, =2
	str r4, [r6]
	mov r5, #4
	mov r4, #4
	mul r6, r5, r4
	mov r4, #-48
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =0
	str r4, [r5]
	mov r6, #5
	mov r4, #4
	mul r5, r6, r4
	mov r4, #-48
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, =1
	str r4, [r6]
	mov r5, #6
	mov r4, #4
	mul r4, r5, r4
	mov r6, #-48
	add r5, r6, r4
	add r4, fp, r5
	ldr r5, =6
	str r5, [r4]
	mov r6, #7
	mov r4, #4
	mul r5, r6, r4
	mov r4, #-48
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, =5
	str r4, [r6]
	mov r5, #8
	mov r4, #4
	mul r6, r5, r4
	mov r4, #-48
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =7
	str r4, [r5]
	mov r6, #9
	mov r4, #4
	mul r5, r6, r4
	mov r4, #-48
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, =8
	str r4, [r6]
	mov r5, #0
	mov r4, #4
	mul r6, r5, r4
	mov r4, #-48
	add r5, r4, r6
	add r4, fp, r5
	mov r0, r4
	bl insertsort
	mov r6, r0
	str r6, [fp, #-8]
	b .L101
.L101:
	ldr r7, [fp, #-8]
	ldr r4, addr_n0
	ldr r5, [r4]
	cmp r7, r5
	movlt r6, #1
	movge r6, #0
	blt .L102
	b .L106
.L102:
	ldr r8, [fp, #-8]
	mov r4, #4
	mul r5, r8, r4
	mov r4, #-48
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, [r6]
	str r4, [fp, #-4]
	ldr r5, [fp, #-4]
	mov r0, r5
	bl putint
	ldr r7, =10
	str r7, [fp, #-4]
	ldr r8, [fp, #-4]
	mov r0, r8
	bl putch
	ldr r9, [fp, #-8]
	add r4, r9, #1
	str r4, [fp, #-8]
	b .L101
.L103:
	mov r0, #0
	add sp, sp, #48
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L104:
	add sp, sp, #48
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L105:
	add sp, sp, #48
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L106:
	b .L103
.L109:
	add sp, sp, #48
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

addr_n0:
	.word n
