	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global M
	.align 4
	.size M, 4
M:
	.word 0
	.global L
	.align 4
	.size L, 4
L:
	.word 0
	.global N
	.align 4
	.size N, 4
N:
	.word 0
	.text
	.global add
	.type add , %function
add:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #40
.L138:
	str r0, [fp, #-40]
	str r1, [fp, #-36]
	str r2, [fp, #-32]
	str r3, [fp, #-28]
	ldr r3, [fp, #36]
	str r3, [fp, #-24]
	ldr r3, [fp, #40]
	str r3, [fp, #-20]
	ldr r3, [fp, #44]
	str r3, [fp, #-16]
	ldr r3, [fp, #48]
	str r3, [fp, #-12]
	ldr r3, [fp, #52]
	str r3, [fp, #-8]
	ldr r10, =0
	str r10, [fp, #-4]
	b .L149
.L149:
	ldr r9, [fp, #-4]
	ldr r4, addr_M0
	ldr r5, [r4]
	cmp r9, r5
	movlt r6, #1
	movge r6, #0
	blt .L150
	b .L154
.L150:
	ldr r7, [fp, #-40]
	ldr r4, [fp, #-4]
	mov r5, #4
	mul r5, r4, r5
	add r4, r7, r5
	ldr r5, [r4]
	ldr r4, [fp, #-28]
	ldr r6, [fp, #-4]
	mov r7, #4
	mul r7, r6, r7
	add r6, r4, r7
	ldr r4, [r6]
	add r6, r5, r4
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-4]
	mov r7, #4
	mul r7, r5, r7
	add r5, r4, r7
	str r6, [r5]
	ldr r8, [fp, #-36]
	ldr r4, [fp, #-4]
	mov r5, #4
	mul r5, r4, r5
	add r4, r8, r5
	ldr r5, [r4]
	ldr r4, [fp, #-24]
	ldr r6, [fp, #-4]
	mov r7, #4
	mul r6, r6, r7
	add r7, r4, r6
	ldr r4, [r7]
	add r6, r5, r4
	ldr r4, [fp, #-12]
	ldr r5, [fp, #-4]
	mov r7, #4
	mul r7, r5, r7
	add r5, r4, r7
	str r6, [r5]
	ldr r8, [fp, #-32]
	ldr r4, [fp, #-4]
	mov r5, #4
	mul r5, r4, r5
	add r4, r8, r5
	ldr r5, [r4]
	ldr r4, [fp, #-20]
	ldr r6, [fp, #-4]
	mov r7, #4
	mul r7, r6, r7
	add r6, r4, r7
	ldr r4, [r6]
	add r6, r5, r4
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-4]
	mov r7, #4
	mul r7, r5, r7
	add r5, r4, r7
	str r6, [r5]
	ldr r8, [fp, #-4]
	add r4, r8, #1
	str r4, [fp, #-4]
	b .L149
.L151:
	mov r0, #0
	add sp, sp, #40
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L152:
	add sp, sp, #40
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L153:
	add sp, sp, #40
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L154:
	b .L151
.L170:
	add sp, sp, #40
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #140
.L171:
	ldr r10, =3
	ldr r4, addr_N0
	str r10, [r4]
	ldr r5, =3
	ldr r4, addr_M0
	str r5, [r4]
	ldr r6, =3
	ldr r4, addr_L0
	str r6, [r4]
	ldr r5, =0
	str r5, [fp, #-8]
	b .L182
.L182:
	ldr r7, [fp, #-8]
	ldr r4, addr_M0
	ldr r5, [r4]
	cmp r7, r5
	movlt r6, #1
	movge r6, #0
	blt .L183
	b .L187
.L183:
	ldr r8, [fp, #-8]
	ldr r4, [fp, #-8]
	mov r5, #4
	mul r4, r4, r5
	mov r5, #-128
	add r5, r5, r4
	add r4, fp, r5
	str r8, [r4]
	ldr r6, [fp, #-8]
	ldr r4, [fp, #-8]
	mov r5, #4
	mul r5, r4, r5
	mov r4, #-116
	add r4, r4, r5
	add r5, fp, r4
	str r6, [r5]
	ldr r7, [fp, #-8]
	ldr r4, [fp, #-8]
	mov r5, #4
	mul r4, r4, r5
	mov r5, #-104
	add r5, r5, r4
	add r4, fp, r5
	str r7, [r4]
	ldr r6, [fp, #-8]
	ldr r4, [fp, #-8]
	mov r5, #4
	mul r4, r4, r5
	mov r5, #-92
	add r5, r5, r4
	add r4, fp, r5
	str r6, [r4]
	ldr r7, [fp, #-8]
	ldr r4, [fp, #-8]
	mov r5, #4
	mul r4, r4, r5
	mov r5, #-80
	add r4, r5, r4
	add r5, fp, r4
	str r7, [r5]
	ldr r6, [fp, #-8]
	ldr r4, [fp, #-8]
	mov r5, #4
	mul r4, r4, r5
	mov r5, #-68
	add r5, r5, r4
	add r4, fp, r5
	str r6, [r4]
	ldr r7, [fp, #-8]
	add r4, r7, #1
	str r4, [fp, #-8]
	b .L182
.L184:
	mov r5, #0
	mov r4, #4
	mul r6, r5, r4
	mov r4, #-128
	add r4, r4, r6
	add r5, fp, r4
	mov r4, #0
	mov r6, #4
	mul r4, r4, r6
	mov r6, #-116
	add r6, r6, r4
	add r4, fp, r6
	mov r6, #0
	mov r7, #4
	mul r6, r6, r7
	mov r7, #-104
	add r7, r7, r6
	add r6, fp, r7
	mov r7, #0
	mov r8, #4
	mul r7, r7, r8
	mov r8, #-92
	add r8, r8, r7
	add r7, fp, r8
	mov r8, #0
	mov r9, #4
	mul r8, r8, r9
	mov r9, #-80
	add r8, r9, r8
	add r9, fp, r8
	str r9, [fp, #-132]
	mov r8, #0
	mov r9, #4
	mul r8, r8, r9
	mov r9, #-68
	add r9, r9, r8
	add r8, fp, r9
	str r8, [fp, #-136]
	mov r8, #0
	mov r9, #4
	mul r8, r8, r9
	mov r9, #-56
	add r8, r9, r8
	add r9, fp, r8
	str r9, [fp, #-140]
	mov r8, #0
	mov r9, #4
	mul r8, r8, r9
	mov r9, #-32
	add r9, r9, r8
	add r8, fp, r9
	mov r9, #0
	mov r10, #4
	mul r9, r9, r10
	mov r10, #-20
	add r10, r10, r9
	add r9, fp, r10
	mov r0, r5
	mov r1, r4
	mov r2, r6
	mov r3, r7
	push {r9}
	push {r8}
	ldr r10, [fp, #-140]
	push {r10}
	ldr r5, [fp, #-136]
	push {r5}
	ldr r4, [fp, #-132]
	push {r4}
	bl add
	add sp, sp, #20
	mov r6, r0
	str r6, [fp, #-8]
	b .L189
.L185:
	add sp, sp, #140
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L186:
	add sp, sp, #140
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L187:
	b .L184
.L189:
	ldr r7, [fp, #-8]
	ldr r4, addr_N0
	ldr r5, [r4]
	cmp r7, r5
	movlt r6, #1
	movge r6, #0
	blt .L190
	b .L194
.L190:
	ldr r8, [fp, #-8]
	mov r4, #4
	mul r5, r8, r4
	mov r4, #-56
	add r6, r4, r5
	add r4, fp, r6
	ldr r5, [r4]
	str r5, [fp, #-4]
	ldr r6, [fp, #-4]
	mov r0, r6
	bl putint
	ldr r7, [fp, #-8]
	add r4, r7, #1
	str r4, [fp, #-8]
	b .L189
.L191:
	ldr r5, =10
	str r5, [fp, #-4]
	ldr r6, [fp, #-4]
	mov r0, r6
	bl putch
	ldr r8, =0
	str r8, [fp, #-8]
	b .L196
.L192:
	add sp, sp, #140
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L193:
	add sp, sp, #140
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L194:
	b .L191
.L196:
	ldr r9, [fp, #-8]
	ldr r4, addr_N0
	ldr r5, [r4]
	cmp r9, r5
	movlt r6, #1
	movge r6, #0
	blt .L197
	b .L201
.L197:
	ldr r7, [fp, #-8]
	mov r4, #4
	mul r5, r7, r4
	mov r4, #-32
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, [r6]
	str r4, [fp, #-4]
	ldr r5, [fp, #-4]
	mov r0, r5
	bl putint
	ldr r7, [fp, #-8]
	add r4, r7, #1
	str r4, [fp, #-8]
	b .L196
	b .F0
.LTORG
addr_M0:
	.word M
addr_L0:
	.word L
addr_N0:
	.word N
.F0:
.L198:
	ldr r5, =10
	str r5, [fp, #-4]
	ldr r6, [fp, #-4]
	mov r0, r6
	bl putch
	ldr r8, =0
	str r8, [fp, #-8]
	b .L203
.L199:
	add sp, sp, #140
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L200:
	add sp, sp, #140
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L201:
	b .L198
.L203:
	ldr r9, [fp, #-8]
	ldr r4, addr_N1
	ldr r5, [r4]
	cmp r9, r5
	movlt r6, #1
	movge r6, #0
	blt .L204
	b .L208
.L204:
	ldr r7, [fp, #-8]
	mov r4, #4
	mul r5, r7, r4
	mov r4, #-20
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, [r6]
	str r4, [fp, #-4]
	ldr r5, [fp, #-4]
	mov r0, r5
	bl putint
	ldr r7, [fp, #-8]
	add r4, r7, #1
	str r4, [fp, #-8]
	b .L203
.L205:
	ldr r5, =10
	str r5, [fp, #-4]
	ldr r6, [fp, #-4]
	mov r0, r6
	bl putch
	mov r0, #0
	add sp, sp, #140
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L206:
	add sp, sp, #140
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L207:
	add sp, sp, #140
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L208:
	b .L205
.L210:
	add sp, sp, #140
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

addr_M1:
	.word M
addr_L1:
	.word L
addr_N1:
	.word N
