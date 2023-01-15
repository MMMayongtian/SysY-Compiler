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
	.global tran
	.type tran , %function
tran:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #40
.L129:
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
	ldr r9, [fp, #-32]
	mov r4, #1
	mov r5, #4
	mul r4, r4, r5
	add r5, r9, r4
	ldr r4, [r5]
	ldr r5, [fp, #-12]
	mov r6, #2
	mov r7, #4
	mul r7, r6, r7
	add r6, r5, r7
	str r4, [r6]
	ldr r8, [fp, #-36]
	mov r4, #2
	mov r5, #4
	mul r4, r4, r5
	add r5, r8, r4
	ldr r4, [r5]
	ldr r5, [fp, #-8]
	mov r6, #1
	mov r7, #4
	mul r7, r6, r7
	add r6, r5, r7
	str r4, [r6]
	ldr r8, [fp, #-36]
	mov r4, #0
	mov r5, #4
	mul r4, r4, r5
	add r5, r8, r4
	ldr r4, [r5]
	ldr r5, [fp, #-16]
	mov r6, #1
	mov r7, #4
	mul r7, r6, r7
	add r6, r5, r7
	str r4, [r6]
	ldr r8, [fp, #-32]
	mov r4, #0
	mov r5, #4
	mul r4, r4, r5
	add r5, r8, r4
	ldr r4, [r5]
	ldr r5, [fp, #-16]
	mov r6, #2
	mov r7, #4
	mul r7, r6, r7
	add r6, r5, r7
	str r4, [r6]
	ldr r8, [fp, #-40]
	mov r4, #1
	mov r5, #4
	mul r5, r4, r5
	add r4, r8, r5
	ldr r5, [r4]
	ldr r4, [fp, #-12]
	mov r6, #0
	mov r7, #4
	mul r7, r6, r7
	add r6, r4, r7
	str r5, [r6]
	ldr r8, [fp, #-40]
	mov r4, #2
	mov r5, #4
	mul r5, r4, r5
	add r4, r8, r5
	ldr r5, [r4]
	ldr r4, [fp, #-8]
	mov r6, #0
	mov r7, #4
	mul r7, r6, r7
	add r6, r4, r7
	str r5, [r6]
	ldr r8, [fp, #-36]
	mov r4, #1
	mov r5, #4
	mul r5, r4, r5
	add r4, r8, r5
	ldr r5, [r4]
	ldr r4, [fp, #-12]
	mov r6, #1
	mov r7, #4
	mul r6, r6, r7
	add r7, r4, r6
	str r5, [r7]
	ldr r8, [fp, #-32]
	mov r4, #2
	mov r5, #4
	mul r5, r4, r5
	add r4, r8, r5
	ldr r5, [r4]
	ldr r4, [fp, #-8]
	mov r6, #2
	mov r7, #4
	mul r7, r6, r7
	add r6, r4, r7
	str r5, [r6]
	ldr r8, [fp, #-40]
	mov r4, #0
	mov r5, #4
	mul r5, r4, r5
	add r4, r8, r5
	ldr r5, [r4]
	ldr r4, [fp, #-16]
	mov r6, #0
	mov r7, #4
	mul r7, r6, r7
	add r6, r4, r7
	str r5, [r6]
	mov r0, #0
	add sp, sp, #40
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L167:
	add sp, sp, #40
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #140
.L168:
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
	b .L179
.L179:
	ldr r7, [fp, #-8]
	ldr r4, addr_M0
	ldr r5, [r4]
	cmp r7, r5
	movlt r6, #1
	movge r6, #0
	blt .L180
	b .L184
.L180:
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
	mul r4, r4, r5
	mov r5, #-116
	add r4, r5, r4
	add r5, fp, r4
	str r6, [r5]
	ldr r7, [fp, #-8]
	ldr r4, [fp, #-8]
	mov r5, #4
	mul r4, r4, r5
	mov r5, #-104
	add r4, r5, r4
	add r5, fp, r4
	str r7, [r5]
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
	b .L179
.L181:
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
	add r9, r9, r8
	add r8, fp, r9
	str r8, [fp, #-132]
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
	bl tran
	add sp, sp, #20
	mov r6, r0
	str r6, [fp, #-8]
	b .L186
.L182:
	add sp, sp, #140
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L183:
	add sp, sp, #140
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L184:
	b .L181
.L186:
	ldr r7, [fp, #-8]
	ldr r4, addr_N0
	ldr r5, [r4]
	cmp r7, r5
	movlt r6, #1
	movge r6, #0
	blt .L187
	b .L191
.L187:
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
	b .L186
.L188:
	ldr r5, =10
	str r5, [fp, #-4]
	ldr r6, [fp, #-4]
	mov r0, r6
	bl putch
	ldr r8, =0
	str r8, [fp, #-8]
	b .L193
.L189:
	add sp, sp, #140
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L190:
	add sp, sp, #140
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L191:
	b .L188
.L193:
	ldr r9, [fp, #-8]
	ldr r4, addr_N0
	ldr r5, [r4]
	cmp r9, r5
	movlt r6, #1
	movge r6, #0
	blt .L194
	b .L198
.L194:
	ldr r7, [fp, #-8]
	mov r4, #4
	mul r4, r7, r4
	mov r5, #-32
	add r6, r5, r4
	add r4, fp, r6
	ldr r5, [r4]
	str r5, [fp, #-4]
	ldr r6, [fp, #-4]
	mov r0, r6
	bl putint
	ldr r7, [fp, #-8]
	add r4, r7, #1
	str r4, [fp, #-8]
	b .L193
	b .F0
.LTORG
addr_M0:
	.word M
addr_L0:
	.word L
addr_N0:
	.word N
.F0:
.L195:
	ldr r5, =10
	str r5, [fp, #-4]
	ldr r6, =0
	str r6, [fp, #-8]
	ldr r8, [fp, #-4]
	mov r0, r8
	bl putch
	b .L200
.L196:
	add sp, sp, #140
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L197:
	add sp, sp, #140
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L198:
	b .L195
.L200:
	ldr r9, [fp, #-8]
	ldr r4, addr_N1
	ldr r5, [r4]
	cmp r9, r5
	movlt r6, #1
	movge r6, #0
	blt .L201
	b .L205
.L201:
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
	b .L200
.L202:
	ldr r5, =10
	str r5, [fp, #-4]
	ldr r6, [fp, #-4]
	mov r0, r6
	bl putch
	mov r0, #0
	add sp, sp, #140
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L203:
	add sp, sp, #140
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L204:
	add sp, sp, #140
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L205:
	b .L202
.L207:
	add sp, sp, #140
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

addr_M1:
	.word M
addr_L1:
	.word L
addr_N1:
	.word N
