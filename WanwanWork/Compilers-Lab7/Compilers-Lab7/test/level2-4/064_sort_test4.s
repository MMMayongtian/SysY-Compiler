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
	.global select_sort
	.type select_sort , %function
select_sort:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #24
.L79:
	str r0, [fp, #-24]
	str r1, [fp, #-20]
	ldr r10, =0
	str r10, [fp, #-16]
	b .L85
.L85:
	ldr r9, [fp, #-16]
	ldr r4, [fp, #-20]
	sub r5, r4, #1
	cmp r9, r5
	movlt r6, #1
	movge r6, #0
	blt .L86
	b .L90
.L86:
	ldr r7, [fp, #-16]
	str r7, [fp, #-8]
	ldr r8, [fp, #-16]
	add r4, r8, #1
	str r4, [fp, #-12]
	b .L91
.L87:
	mov r0, #0
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L88:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L89:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L90:
	b .L87
.L91:
	ldr r5, [fp, #-12]
	ldr r4, [fp, #-20]
	cmp r5, r4
	movlt r6, #1
	movge r6, #0
	blt .L92
	b .L96
.L92:
	ldr r7, [fp, #-24]
	ldr r4, [fp, #-8]
	mov r5, #4
	mul r4, r4, r5
	add r5, r7, r4
	ldr r4, [r5]
	ldr r5, [fp, #-24]
	ldr r6, [fp, #-12]
	mov r7, #4
	mul r7, r6, r7
	add r6, r5, r7
	ldr r5, [r6]
	cmp r4, r5
	movgt r7, #1
	movle r7, #0
	bgt .L97
	b .L105
.L93:
	ldr r8, [fp, #-8]
	ldr r4, [fp, #-16]
	cmp r8, r4
	bne .L106
	b .L110
.L94:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L95:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L96:
	b .L93
.L97:
	ldr r5, [fp, #-12]
	str r5, [fp, #-8]
	b .L98
.L98:
	ldr r6, [fp, #-12]
	add r4, r6, #1
	str r4, [fp, #-12]
	b .L91
.L103:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L104:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L105:
	b .L98
.L106:
	ldr r5, [fp, #-24]
	ldr r4, [fp, #-8]
	mov r6, #4
	mul r6, r4, r6
	add r4, r5, r6
	ldr r5, [r4]
	str r5, [fp, #-4]
	ldr r6, [fp, #-24]
	ldr r4, [fp, #-16]
	mov r5, #4
	mul r5, r4, r5
	add r4, r6, r5
	ldr r5, [r4]
	ldr r4, [fp, #-24]
	ldr r6, [fp, #-8]
	mov r7, #4
	mul r7, r6, r7
	add r6, r4, r7
	str r5, [r6]
	ldr r8, [fp, #-4]
	ldr r4, [fp, #-24]
	ldr r5, [fp, #-16]
	mov r6, #4
	mul r6, r5, r6
	add r5, r4, r6
	str r8, [r5]
	b .L107
.L107:
	ldr r7, [fp, #-16]
	add r4, r7, #1
	str r4, [fp, #-16]
	b .L85
.L108:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L109:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L110:
	b .L107
.L118:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #48
.L119:
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
	mul r5, r6, r4
	mov r4, #-48
	add r6, r4, r5
	add r4, fp, r6
	ldr r5, =2
	str r5, [r4]
	mov r6, #4
	mov r4, #4
	mul r5, r6, r4
	mov r4, #-48
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, =0
	str r4, [r6]
	mov r5, #5
	mov r4, #4
	mul r6, r5, r4
	mov r4, #-48
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =1
	str r4, [r5]
	mov r6, #6
	mov r4, #4
	mul r5, r6, r4
	mov r4, #-48
	add r6, r4, r5
	add r4, fp, r6
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
	add r5, r4, r6
	add r4, fp, r5
	ldr r5, =7
	str r5, [r4]
	mov r6, #9
	mov r4, #4
	mul r5, r6, r4
	mov r4, #-48
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, =8
	str r4, [r6]
	ldr r5, =0
	str r5, [fp, #-8]
	mov r7, #0
	mov r4, #4
	mul r5, r7, r4
	mov r4, #-48
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, addr_n0
	ldr r5, [r4]
	mov r0, r6
	mov r1, r5
	bl select_sort
	mov r7, r0
	str r7, [fp, #-8]
	b .L122
.L122:
	ldr r8, [fp, #-8]
	ldr r4, addr_n0
	ldr r5, [r4]
	cmp r8, r5
	movlt r6, #1
	movge r6, #0
	blt .L123
	b .L127
.L123:
	ldr r7, [fp, #-8]
	mov r4, #4
	mul r5, r7, r4
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
	b .L122
.L124:
	mov r0, #0
	add sp, sp, #48
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L125:
	add sp, sp, #48
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L126:
	add sp, sp, #48
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L127:
	b .L124
.L130:
	add sp, sp, #48
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

addr_n0:
	.word n
