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
	push {r4, r5, r6, r7, r8, r9, fp, lr}
	mov fp, sp
	sub sp, sp, #24
.L79:
	str r0, [fp, #-24]
	str r1, [fp, #-20]
	ldr r4, =0
	str r4, [fp, #-16]
	b .L85
.L85:
	ldr r5, [fp, #-16]
	ldr r4, [fp, #-20]
	sub r6, r4, #1
	cmp r5, r6
	movlt r7, #1
	movge r7, #0
	blt .L86
	b .L90
.L86:
	ldr r8, [fp, #-16]
	str r8, [fp, #-8]
	ldr r9, [fp, #-16]
	add r4, r9, #1
	str r4, [fp, #-12]
	b .L91
.L87:
	ldr r5, =0
	mov r0, r5
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L88:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L89:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L90:
	b .L87
.L91:
	ldr r6, [fp, #-12]
	ldr r4, [fp, #-20]
	cmp r6, r4
	movlt r5, #1
	movge r5, #0
	blt .L92
	b .L96
.L92:
	ldr r7, [fp, #-24]
	ldr r4, [fp, #-8]
	ldr r5, =0
	add r6, r5, r4
	mov r4, #4
	mul r4, r6, r4
	add r5, r7, r4
	ldr r4, [r5]
	ldr r5, [fp, #-24]
	ldr r6, [fp, #-12]
	ldr r7, =0
	add r8, r7, r6
	mov r6, #4
	mul r6, r8, r6
	add r7, r5, r6
	ldr r5, [r7]
	cmp r4, r5
	movgt r6, #1
	movle r6, #0
	bgt .L97
	b .L109
.L93:
	ldr r8, [fp, #-8]
	ldr r4, [fp, #-16]
	cmp r8, r4
	movne r5, #1
	moveq r5, #0
	bne .L110
	b .L114
.L94:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L95:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L96:
	b .L93
.L97:
	ldr r6, [fp, #-12]
	str r6, [fp, #-8]
	b .L98
.L98:
	ldr r7, [fp, #-12]
	add r4, r7, #1
	str r4, [fp, #-12]
	b .L91
.L107:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L108:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L109:
	b .L98
.L110:
	ldr r5, [fp, #-24]
	ldr r4, [fp, #-8]
	ldr r6, =0
	add r7, r6, r4
	mov r4, #4
	mul r6, r7, r4
	add r4, r5, r6
	ldr r5, [r4]
	str r5, [fp, #-4]
	ldr r6, [fp, #-24]
	ldr r4, [fp, #-16]
	ldr r5, =0
	add r7, r5, r4
	mov r4, #4
	mul r5, r7, r4
	add r4, r6, r5
	ldr r5, [r4]
	ldr r4, [fp, #-24]
	ldr r6, [fp, #-8]
	ldr r7, =0
	add r8, r7, r6
	mov r6, #4
	mul r7, r8, r6
	add r6, r4, r7
	str r5, [r6]
	ldr r8, [fp, #-4]
	ldr r4, [fp, #-24]
	ldr r5, [fp, #-16]
	ldr r6, =0
	add r7, r6, r5
	mov r5, #4
	mul r6, r7, r5
	add r5, r4, r6
	str r8, [r5]
	b .L111
	b .F0
.LTORG
addr_n0:
	.word n
.F0:
.L111:
	ldr r7, [fp, #-16]
	add r4, r7, #1
	str r4, [fp, #-16]
	b .L85
.L112:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L113:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L114:
	b .L111
.L130:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, fp, lr}
	mov fp, sp
	sub sp, sp, #48
.L131:
	ldr r4, =10
	ldr r5, addr_n1
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
	mul r6, r4, r5
	mov r4, #-48
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =2
	str r4, [r5]
	ldr r6, =0
	add r4, r6, #4
	mov r5, #4
	mul r6, r4, r5
	mov r4, #-48
	add r5, r4, r6
	add r4, fp, r5
	ldr r5, =0
	str r5, [r4]
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
	add r4, r6, r4
	add r5, fp, r4
	ldr r4, =6
	str r4, [r5]
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
	ldr r6, =0
	str r6, [fp, #-8]
	mov r7, #0
	mov r4, #4
	mul r5, r7, r4
	mov r4, #-48
	add r6, r4, r5
	add r4, fp, r6
	ldr r5, addr_n1
	ldr r6, [r5]
	mov r0, r4
	mov r1, r6
	bl select_sort
	mov r7, r0
	str r7, [fp, #-8]
	b .L154
.L154:
	ldr r8, [fp, #-8]
	ldr r4, addr_n1
	ldr r5, [r4]
	cmp r8, r5
	movlt r6, #1
	movge r6, #0
	blt .L155
	b .L159
.L155:
	ldr r7, [fp, #-8]
	ldr r4, =0
	add r5, r4, r7
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
	b .L154
	b .F1
.LTORG
addr_n1:
	.word n
.F1:
.L156:
	ldr r5, =0
	mov r0, r5
	add sp, sp, #48
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L157:
	add sp, sp, #48
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L158:
	add sp, sp, #48
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L159:
	b .L156
.L164:
	add sp, sp, #48
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr

addr_n2:
	.word n
