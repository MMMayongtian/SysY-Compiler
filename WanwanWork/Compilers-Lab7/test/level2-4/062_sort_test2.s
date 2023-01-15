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
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L68:
	str r0, [fp, #-16]
	ldr r4, =1
	str r4, [fp, #-12]
	b .L71
.L71:
	ldr r5, [fp, #-12]
	ldr r4, addr_n0
	ldr r6, [r4]
	cmp r5, r6
	movlt r7, #1
	movge r7, #0
	blt .L72
	b .L76
.L72:
	ldr r8, [fp, #-16]
	ldr r4, [fp, #-12]
	ldr r5, =0
	add r6, r5, r4
	mov r4, #4
	mul r5, r6, r4
	add r4, r8, r5
	ldr r5, [r4]
	str r5, [fp, #-8]
	ldr r6, [fp, #-12]
	sub r4, r6, #1
	str r4, [fp, #-4]
	b .L83
.L73:
	ldr r5, =0
	mov r0, r5
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L74:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L75:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L76:
	b .L73
.L83:
	ldr r7, [fp, #-4]
	ldr r4, =0
	sub r5, r4, #1
	cmp r7, r5
	movgt r6, #1
	movle r6, #0
	bgt .L86
	b .L89
.L84:
	ldr r8, [fp, #-16]
	ldr r4, [fp, #-4]
	ldr r5, =0
	add r6, r5, r4
	mov r4, #4
	mul r5, r6, r4
	add r4, r8, r5
	ldr r5, [r4]
	ldr r4, [fp, #-16]
	ldr r6, [fp, #-4]
	add r7, r6, #1
	ldr r6, =0
	add r8, r6, r7
	mov r6, #4
	mul r7, r8, r6
	add r6, r4, r7
	str r5, [r6]
	ldr r8, [fp, #-4]
	sub r4, r8, #1
	str r4, [fp, #-4]
	b .L83
.L85:
	ldr r5, [fp, #-8]
	ldr r4, [fp, #-16]
	ldr r6, [fp, #-4]
	add r7, r6, #1
	ldr r6, =0
	add r8, r6, r7
	mov r6, #4
	mul r7, r8, r6
	add r6, r4, r7
	str r5, [r6]
	ldr r8, [fp, #-12]
	add r4, r8, #1
	str r4, [fp, #-12]
	b .L71
.L86:
	ldr r5, [fp, #-8]
	ldr r4, [fp, #-16]
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, r6
	mov r6, #4
	mul r7, r8, r6
	add r6, r4, r7
	ldr r4, [r6]
	cmp r5, r4
	movlt r7, #1
	movge r7, #0
	blt .L84
	b .L96
.L87:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L88:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L89:
	b .L85
.L94:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L95:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L96:
	b .L85
.L107:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, fp, lr}
	mov fp, sp
	sub sp, sp, #48
.L108:
	ldr r4, =10
	ldr r5, addr_n0
	str r4, [r5]
	ldr r6, =0
	add r4, r6, #0
	mov r5, #4
	mul r6, r4, r5
	mov r4, #-48
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =4
	str r4, [r5]
	ldr r6, =0
	add r4, r6, #1
	mov r5, #4
	mul r6, r4, r5
	mov r4, #-48
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =3
	str r4, [r5]
	ldr r6, =0
	add r4, r6, #2
	mov r5, #4
	mul r6, r4, r5
	mov r4, #-48
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =9
	str r4, [r5]
	ldr r6, =0
	add r4, r6, #3
	mov r5, #4
	mul r4, r4, r5
	mov r6, #-48
	add r4, r6, r4
	add r5, fp, r4
	ldr r4, =2
	str r4, [r5]
	ldr r6, =0
	add r4, r6, #4
	mov r5, #4
	mul r6, r4, r5
	mov r4, #-48
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =0
	str r4, [r5]
	ldr r6, =0
	add r4, r6, #5
	mov r5, #4
	mul r6, r4, r5
	mov r4, #-48
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =1
	str r4, [r5]
	ldr r6, =0
	add r4, r6, #6
	mov r5, #4
	mul r4, r4, r5
	mov r6, #-48
	add r5, r6, r4
	add r4, fp, r5
	ldr r5, =6
	str r5, [r4]
	ldr r6, =0
	add r4, r6, #7
	mov r5, #4
	mul r6, r4, r5
	mov r4, #-48
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =5
	str r4, [r5]
	ldr r6, =0
	add r4, r6, #8
	mov r5, #4
	mul r6, r4, r5
	mov r4, #-48
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =7
	str r4, [r5]
	ldr r6, =0
	add r4, r6, #9
	mov r5, #4
	mul r6, r4, r5
	mov r4, #-48
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =8
	str r4, [r5]
	mov r6, #0
	mov r4, #4
	mul r5, r6, r4
	mov r4, #-48
	add r6, r4, r5
	add r4, fp, r6
	mov r0, r4
	bl insertsort
	mov r5, r0
	str r5, [fp, #-8]
	b .L131
.L131:
	ldr r7, [fp, #-8]
	ldr r4, addr_n0
	ldr r5, [r4]
	cmp r7, r5
	movlt r6, #1
	movge r6, #0
	blt .L132
	b .L136
.L132:
	ldr r8, [fp, #-8]
	ldr r4, =0
	add r5, r4, r8
	mov r4, #4
	mul r6, r5, r4
	mov r4, #-48
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, [r5]
	str r4, [fp, #-4]
	ldr r6, [fp, #-4]
	mov r0, r6
	bl putint
	ldr r7, =10
	str r7, [fp, #-4]
	ldr r8, [fp, #-4]
	mov r0, r8
	bl putch
	ldr r9, [fp, #-8]
	add r4, r9, #1
	str r4, [fp, #-8]
	b .L131
	b .F0
.LTORG
addr_n0:
	.word n
.F0:
.L133:
	ldr r5, =0
	mov r0, r5
	add sp, sp, #48
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L134:
	add sp, sp, #48
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L135:
	add sp, sp, #48
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L136:
	b .L133
.L141:
	add sp, sp, #48
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr

addr_n1:
	.word n
