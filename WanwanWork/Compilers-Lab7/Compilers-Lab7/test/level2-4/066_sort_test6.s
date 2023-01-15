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
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #64
.L105:
	str r0, [fp, #-64]
	str r1, [fp, #-60]
	str r2, [fp, #-56]
	ldr r10, =0
	str r10, [fp, #-4]
	ldr r9, =0
	str r9, [fp, #-12]
	ldr r8, =0
	str r8, [fp, #-8]
	b .L113
.L113:
	ldr r7, [fp, #-4]
	cmp r7, #10
	movlt r6, #1
	movge r6, #0
	blt .L114
	b .L118
.L114:
	ldr r5, [fp, #-4]
	mov r4, #4
	mul r6, r5, r4
	mov r4, #-52
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =0
	str r4, [r5]
	ldr r6, [fp, #-4]
	add r4, r6, #1
	str r4, [fp, #-4]
	b .L113
.L115:
	b .L119
.L116:
	add sp, sp, #64
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L117:
	add sp, sp, #64
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L118:
	b .L115
.L119:
	ldr r5, [fp, #-12]
	ldr r4, [fp, #-56]
	cmp r5, r4
	movlt r6, #1
	movge r6, #0
	blt .L120
	b .L124
.L120:
	ldr r7, [fp, #-64]
	ldr r4, [fp, #-12]
	mov r5, #4
	mul r5, r4, r5
	add r4, r7, r5
	ldr r5, [r4]
	mov r4, #4
	mul r6, r5, r4
	mov r4, #-52
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, [r5]
	add r5, r4, #1
	ldr r4, [fp, #-64]
	ldr r6, [fp, #-12]
	mov r7, #4
	mul r7, r6, r7
	add r6, r4, r7
	ldr r4, [r6]
	mov r6, #4
	mul r4, r4, r6
	mov r6, #-52
	add r6, r6, r4
	add r4, fp, r6
	str r5, [r4]
	ldr r7, [fp, #-12]
	add r4, r7, #1
	str r4, [fp, #-12]
	b .L119
.L121:
	ldr r5, =1
	str r5, [fp, #-4]
	b .L130
.L122:
	add sp, sp, #64
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L123:
	add sp, sp, #64
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L124:
	b .L121
.L130:
	ldr r6, [fp, #-4]
	cmp r6, #10
	movlt r8, #1
	movge r8, #0
	blt .L131
	b .L135
.L131:
	ldr r9, [fp, #-4]
	mov r4, #4
	mul r5, r9, r4
	mov r4, #-52
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, [r6]
	ldr r5, [fp, #-4]
	sub r6, r5, #1
	mov r5, #4
	mul r5, r6, r5
	mov r6, #-52
	add r6, r6, r5
	add r5, fp, r6
	ldr r6, [r5]
	add r5, r4, r6
	ldr r4, [fp, #-4]
	mov r6, #4
	mul r4, r4, r6
	mov r6, #-52
	add r4, r6, r4
	add r6, fp, r4
	str r5, [r6]
	ldr r7, [fp, #-4]
	add r4, r7, #1
	str r4, [fp, #-4]
	b .L130
.L132:
	ldr r5, [fp, #-56]
	str r5, [fp, #-8]
	b .L138
.L133:
	add sp, sp, #64
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L134:
	add sp, sp, #64
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L135:
	b .L132
.L138:
	ldr r6, [fp, #-8]
	cmp r6, #0
	movgt r8, #1
	movle r8, #0
	bgt .L139
	b .L143
.L139:
	ldr r9, [fp, #-64]
	ldr r4, [fp, #-8]
	sub r5, r4, #1
	mov r4, #4
	mul r5, r5, r4
	add r4, r9, r5
	ldr r5, [r4]
	mov r4, #4
	mul r6, r5, r4
	mov r4, #-52
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, [r5]
	sub r5, r4, #1
	ldr r4, [fp, #-64]
	ldr r6, [fp, #-8]
	sub r7, r6, #1
	mov r6, #4
	mul r7, r7, r6
	add r6, r4, r7
	ldr r4, [r6]
	mov r6, #4
	mul r4, r4, r6
	mov r6, #-52
	add r6, r6, r4
	add r4, fp, r6
	str r5, [r4]
	ldr r7, [fp, #-64]
	ldr r4, [fp, #-8]
	sub r5, r4, #1
	mov r4, #4
	mul r5, r5, r4
	add r4, r7, r5
	ldr r5, [r4]
	ldr r4, [fp, #-60]
	ldr r6, [fp, #-64]
	ldr r7, [fp, #-8]
	sub r8, r7, #1
	mov r7, #4
	mul r8, r8, r7
	add r7, r6, r8
	ldr r6, [r7]
	mov r7, #4
	mul r6, r6, r7
	mov r7, #-52
	add r7, r7, r6
	add r6, fp, r7
	ldr r7, [r6]
	mov r6, #4
	mul r7, r7, r6
	add r6, r4, r7
	str r5, [r6]
	ldr r8, [fp, #-8]
	sub r4, r8, #1
	str r4, [fp, #-8]
	b .L138
.L140:
	mov r0, #0
	add sp, sp, #64
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L141:
	add sp, sp, #64
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L142:
	add sp, sp, #64
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L143:
	b .L140
.L155:
	add sp, sp, #64
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #88
.L156:
	ldr r10, =10
	ldr r4, addr_n0
	str r10, [r4]
	mov r5, #0
	mov r4, #4
	mul r6, r5, r4
	mov r4, #-88
	add r5, r4, r6
	add r4, fp, r5
	ldr r5, =4
	str r5, [r4]
	mov r6, #1
	mov r4, #4
	mul r5, r6, r4
	mov r4, #-88
	add r6, r4, r5
	add r4, fp, r6
	ldr r5, =3
	str r5, [r4]
	mov r6, #2
	mov r4, #4
	mul r4, r6, r4
	mov r5, #-88
	add r4, r5, r4
	add r6, fp, r4
	ldr r4, =9
	str r4, [r6]
	mov r5, #3
	mov r4, #4
	mul r6, r5, r4
	mov r4, #-88
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =2
	str r4, [r5]
	mov r6, #4
	mov r4, #4
	mul r5, r6, r4
	mov r4, #-88
	add r6, r4, r5
	add r4, fp, r6
	ldr r5, =0
	str r5, [r4]
	mov r6, #5
	mov r4, #4
	mul r4, r6, r4
	mov r5, #-88
	add r4, r5, r4
	add r6, fp, r4
	ldr r4, =1
	str r4, [r6]
	mov r5, #6
	mov r4, #4
	mul r6, r5, r4
	mov r4, #-88
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =6
	str r4, [r5]
	mov r6, #7
	mov r4, #4
	mul r5, r6, r4
	mov r4, #-88
	add r6, r4, r5
	add r4, fp, r6
	ldr r5, =5
	str r5, [r4]
	mov r6, #8
	mov r4, #4
	mul r5, r6, r4
	mov r4, #-88
	add r6, r4, r5
	add r4, fp, r6
	ldr r5, =7
	str r5, [r4]
	mov r6, #9
	mov r4, #4
	mul r5, r6, r4
	mov r4, #-88
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, =8
	str r4, [r6]
	ldr r5, =0
	str r5, [fp, #-48]
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
	ldr r6, addr_n0
	ldr r7, [r6]
	mov r0, r4
	mov r1, r5
	mov r2, r7
	bl counting_sort
	mov r8, r0
	str r8, [fp, #-48]
	b .L160
.L160:
	ldr r9, [fp, #-48]
	ldr r4, addr_n0
	ldr r5, [r4]
	cmp r9, r5
	movlt r6, #1
	movge r6, #0
	blt .L161
	b .L165
.L161:
	ldr r7, [fp, #-48]
	mov r4, #4
	mul r5, r7, r4
	mov r4, #-44
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
	ldr r9, [fp, #-48]
	add r4, r9, #1
	str r4, [fp, #-48]
	b .L160
.L162:
	mov r0, #0
	add sp, sp, #88
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L163:
	add sp, sp, #88
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L164:
	add sp, sp, #88
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L165:
	b .L162
.L168:
	add sp, sp, #88
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

addr_n0:
	.word n
