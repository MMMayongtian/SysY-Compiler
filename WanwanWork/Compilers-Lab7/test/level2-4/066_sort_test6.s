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
	.global counting_sort
	.type counting_sort , %function
counting_sort:
	push {r4, r5, r6, r7, r8, r9, fp, lr}
	mov fp, sp
	sub sp, sp, #64
.L105:
	str r0, [fp, #-64]
	str r1, [fp, #-60]
	str r2, [fp, #-56]
	ldr r4, =0
	str r4, [fp, #-4]
	ldr r5, =0
	str r5, [fp, #-12]
	ldr r6, =0
	str r6, [fp, #-8]
	b .L113
.L113:
	ldr r7, [fp, #-4]
	ldr r4, =10
	cmp r7, r4
	movlt r5, #1
	movge r5, #0
	blt .L114
	b .L118
.L114:
	ldr r6, [fp, #-4]
	ldr r4, =0
	add r5, r4, r6
	mov r4, #4
	mul r6, r5, r4
	mov r4, #-52
	add r5, r4, r6
	add r4, fp, r5
	ldr r5, =0
	str r5, [r4]
	ldr r6, [fp, #-4]
	add r4, r6, #1
	str r4, [fp, #-4]
	b .L113
.L115:
	b .L121
.L116:
	add sp, sp, #64
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L117:
	add sp, sp, #64
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L118:
	b .L115
.L121:
	ldr r5, [fp, #-12]
	ldr r4, [fp, #-56]
	cmp r5, r4
	movlt r6, #1
	movge r6, #0
	blt .L122
	b .L126
.L122:
	ldr r7, [fp, #-64]
	ldr r4, [fp, #-12]
	ldr r5, =0
	add r6, r5, r4
	mov r4, #4
	mul r4, r6, r4
	add r5, r7, r4
	ldr r4, [r5]
	ldr r5, =0
	add r6, r5, r4
	mov r4, #4
	mul r4, r6, r4
	mov r5, #-52
	add r4, r5, r4
	add r6, fp, r4
	ldr r4, [r6]
	add r5, r4, #1
	ldr r4, [fp, #-64]
	ldr r6, [fp, #-12]
	ldr r7, =0
	add r8, r7, r6
	mov r6, #4
	mul r7, r8, r6
	add r6, r4, r7
	ldr r4, [r6]
	ldr r6, =0
	add r7, r6, r4
	mov r4, #4
	mul r4, r7, r4
	mov r6, #-52
	add r6, r6, r4
	add r4, fp, r6
	str r5, [r4]
	ldr r7, [fp, #-12]
	add r4, r7, #1
	str r4, [fp, #-12]
	b .L121
.L123:
	ldr r5, =1
	str r5, [fp, #-4]
	b .L140
.L124:
	add sp, sp, #64
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L125:
	add sp, sp, #64
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L126:
	b .L123
.L140:
	ldr r6, [fp, #-4]
	ldr r4, =10
	cmp r6, r4
	movlt r5, #1
	movge r5, #0
	blt .L141
	b .L145
.L141:
	ldr r7, [fp, #-4]
	ldr r4, =0
	add r5, r4, r7
	mov r4, #4
	mul r6, r5, r4
	mov r4, #-52
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, [r5]
	ldr r5, [fp, #-4]
	sub r6, r5, #1
	ldr r5, =0
	add r7, r5, r6
	mov r5, #4
	mul r5, r7, r5
	mov r6, #-52
	add r6, r6, r5
	add r5, fp, r6
	ldr r6, [r5]
	add r5, r4, r6
	ldr r4, [fp, #-4]
	ldr r6, =0
	add r7, r6, r4
	mov r4, #4
	mul r4, r7, r4
	mov r6, #-52
	add r6, r6, r4
	add r4, fp, r6
	str r5, [r4]
	ldr r7, [fp, #-4]
	add r4, r7, #1
	str r4, [fp, #-4]
	b .L140
	b .F0
.LTORG
addr_n0:
	.word n
.F0:
.L142:
	ldr r5, [fp, #-56]
	str r5, [fp, #-8]
	b .L154
.L143:
	add sp, sp, #64
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L144:
	add sp, sp, #64
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L145:
	b .L142
.L154:
	ldr r6, [fp, #-8]
	ldr r4, =0
	cmp r6, r4
	movgt r5, #1
	movle r5, #0
	bgt .L155
	b .L159
.L155:
	ldr r7, [fp, #-64]
	ldr r4, [fp, #-8]
	sub r5, r4, #1
	ldr r4, =0
	add r6, r4, r5
	mov r4, #4
	mul r5, r6, r4
	add r4, r7, r5
	ldr r5, [r4]
	ldr r4, =0
	add r6, r4, r5
	mov r4, #4
	mul r5, r6, r4
	mov r4, #-52
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, [r6]
	sub r5, r4, #1
	ldr r4, [fp, #-64]
	ldr r6, [fp, #-8]
	sub r7, r6, #1
	ldr r6, =0
	add r8, r6, r7
	mov r6, #4
	mul r7, r8, r6
	add r6, r4, r7
	ldr r4, [r6]
	ldr r6, =0
	add r7, r6, r4
	mov r4, #4
	mul r4, r7, r4
	mov r6, #-52
	add r6, r6, r4
	add r4, fp, r6
	str r5, [r4]
	ldr r7, [fp, #-64]
	ldr r4, [fp, #-8]
	sub r5, r4, #1
	ldr r4, =0
	add r6, r4, r5
	mov r4, #4
	mul r5, r6, r4
	add r4, r7, r5
	ldr r5, [r4]
	ldr r4, [fp, #-60]
	ldr r6, [fp, #-64]
	ldr r7, [fp, #-8]
	sub r8, r7, #1
	ldr r7, =0
	add r9, r7, r8
	mov r7, #4
	mul r8, r9, r7
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =0
	add r8, r7, r6
	mov r6, #4
	mul r7, r8, r6
	mov r6, #-52
	add r7, r6, r7
	add r6, fp, r7
	ldr r7, [r6]
	ldr r6, =0
	add r8, r6, r7
	mov r6, #4
	mul r7, r8, r6
	add r6, r4, r7
	str r5, [r6]
	ldr r8, [fp, #-8]
	sub r4, r8, #1
	str r4, [fp, #-8]
	b .L154
.L156:
	ldr r5, =0
	mov r0, r5
	add sp, sp, #64
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L157:
	add sp, sp, #64
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L158:
	add sp, sp, #64
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L159:
	b .L156
.L187:
	add sp, sp, #64
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, fp, lr}
	mov fp, sp
	sub sp, sp, #88
.L188:
	ldr r4, =10
	ldr r5, addr_n1
	str r4, [r5]
	ldr r6, =0
	add r4, r6, #0
	mov r5, #4
	mul r6, r4, r5
	mov r4, #-88
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =4
	str r4, [r5]
	ldr r6, =0
	add r4, r6, #1
	mov r5, #4
	mul r4, r4, r5
	mov r6, #-88
	add r5, r6, r4
	add r4, fp, r5
	ldr r5, =3
	str r5, [r4]
	ldr r6, =0
	add r4, r6, #2
	mov r5, #4
	mul r6, r4, r5
	mov r4, #-88
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =9
	str r4, [r5]
	ldr r6, =0
	add r4, r6, #3
	mov r5, #4
	mul r4, r4, r5
	mov r6, #-88
	add r5, r6, r4
	add r4, fp, r5
	ldr r5, =2
	str r5, [r4]
	ldr r6, =0
	add r4, r6, #4
	mov r5, #4
	mul r6, r4, r5
	mov r4, #-88
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =0
	str r4, [r5]
	ldr r6, =0
	add r4, r6, #5
	mov r5, #4
	mul r6, r4, r5
	mov r4, #-88
	add r5, r4, r6
	add r4, fp, r5
	ldr r5, =1
	str r5, [r4]
	ldr r6, =0
	add r4, r6, #6
	mov r5, #4
	mul r6, r4, r5
	mov r4, #-88
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =6
	str r4, [r5]
	ldr r6, =0
	add r4, r6, #7
	mov r5, #4
	mul r6, r4, r5
	mov r4, #-88
	add r5, r4, r6
	add r4, fp, r5
	ldr r5, =5
	str r5, [r4]
	ldr r6, =0
	add r4, r6, #8
	mov r5, #4
	mul r6, r4, r5
	mov r4, #-88
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =7
	str r4, [r5]
	ldr r6, =0
	add r4, r6, #9
	mov r5, #4
	mul r6, r4, r5
	mov r4, #-88
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =8
	str r4, [r5]
	ldr r6, =0
	str r6, [fp, #-48]
	mov r7, #0
	mov r4, #4
	mul r5, r7, r4
	mov r4, #-88
	add r6, r4, r5
	add r4, fp, r6
	mov r5, #0
	mov r6, #4
	mul r5, r5, r6
	mov r6, #-44
	add r6, r6, r5
	add r5, fp, r6
	ldr r6, addr_n1
	ldr r7, [r6]
	mov r0, r4
	mov r1, r5
	mov r2, r7
	bl counting_sort
	mov r8, r0
	str r8, [fp, #-48]
	b .L212
.L212:
	ldr r9, [fp, #-48]
	ldr r4, addr_n1
	ldr r5, [r4]
	cmp r9, r5
	movlt r6, #1
	movge r6, #0
	blt .L213
	b .L217
	b .F1
.LTORG
addr_n1:
	.word n
.F1:
.L213:
	ldr r7, [fp, #-48]
	ldr r4, =0
	add r5, r4, r7
	mov r4, #4
	mul r6, r5, r4
	mov r4, #-44
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
	ldr r9, [fp, #-48]
	add r4, r9, #1
	str r4, [fp, #-48]
	b .L212
.L214:
	ldr r5, =0
	mov r0, r5
	add sp, sp, #88
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L215:
	add sp, sp, #88
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L216:
	add sp, sp, #88
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L217:
	b .L214
.L222:
	add sp, sp, #88
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr

addr_n2:
	.word n
