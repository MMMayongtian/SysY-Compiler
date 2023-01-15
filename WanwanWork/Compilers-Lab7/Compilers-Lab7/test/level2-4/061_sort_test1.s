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
	.global bubblesort
	.type bubblesort , %function
bubblesort:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L71:
	str r0, [fp, #-16]
	ldr r10, =0
	str r10, [fp, #-12]
	b .L75
.L75:
	ldr r9, [fp, #-12]
	ldr r4, addr_n0
	ldr r5, [r4]
	sub r4, r5, #1
	cmp r9, r4
	movlt r6, #1
	movge r6, #0
	blt .L76
	b .L80
.L76:
	ldr r7, =0
	str r7, [fp, #-8]
	b .L81
.L77:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L78:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L79:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L80:
	b .L77
.L81:
	ldr r8, [fp, #-8]
	ldr r4, addr_n0
	ldr r5, [r4]
	ldr r4, [fp, #-12]
	sub r6, r5, r4
	sub r4, r6, #1
	cmp r8, r4
	movlt r5, #1
	movge r5, #0
	blt .L82
	b .L86
.L82:
	ldr r7, [fp, #-16]
	ldr r4, [fp, #-8]
	mov r5, #4
	mul r5, r4, r5
	add r4, r7, r5
	ldr r5, [r4]
	ldr r4, [fp, #-16]
	ldr r6, [fp, #-8]
	add r7, r6, #1
	mov r6, #4
	mul r7, r7, r6
	add r6, r4, r7
	ldr r4, [r6]
	cmp r5, r4
	movgt r7, #1
	movle r7, #0
	bgt .L87
	b .L95
.L83:
	ldr r8, [fp, #-12]
	add r4, r8, #1
	str r4, [fp, #-12]
	b .L75
.L84:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L85:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L86:
	b .L83
.L87:
	ldr r5, [fp, #-16]
	ldr r4, [fp, #-8]
	add r6, r4, #1
	mov r4, #4
	mul r6, r6, r4
	add r4, r5, r6
	ldr r5, [r4]
	str r5, [fp, #-4]
	ldr r6, [fp, #-16]
	ldr r4, [fp, #-8]
	mov r5, #4
	mul r5, r4, r5
	add r4, r6, r5
	ldr r5, [r4]
	ldr r4, [fp, #-16]
	ldr r6, [fp, #-8]
	add r7, r6, #1
	mov r6, #4
	mul r7, r7, r6
	add r6, r4, r7
	str r5, [r6]
	ldr r8, [fp, #-4]
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-8]
	mov r6, #4
	mul r6, r5, r6
	add r5, r4, r6
	str r8, [r5]
	b .L88
.L88:
	ldr r7, [fp, #-8]
	add r4, r7, #1
	str r4, [fp, #-8]
	b .L81
.L93:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L94:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L95:
	b .L88
.L103:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #48
.L104:
	ldr r10, =10
	ldr r4, addr_n0
	str r10, [r4]
	mov r5, #0
	mov r4, #4
	mul r6, r5, r4
	mov r4, #-48
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =4
	str r4, [r5]
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
	bl bubblesort
	mov r6, r0
	str r6, [fp, #-8]
	b .L107
.L107:
	ldr r7, [fp, #-8]
	ldr r4, addr_n0
	ldr r5, [r4]
	cmp r7, r5
	movlt r6, #1
	movge r6, #0
	blt .L108
	b .L112
.L108:
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
	b .L107
.L109:
	mov r0, #0
	add sp, sp, #48
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L110:
	add sp, sp, #48
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L111:
	add sp, sp, #48
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L112:
	b .L109
.L115:
	add sp, sp, #48
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

addr_n0:
	.word n
