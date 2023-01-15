	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global N
	.align 4
	.size N, 4
N:
	.word 0
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
	.text
	.global sub
	.type sub , %function
sub:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #40
.L133:
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
	b .L144
.L144:
	ldr r9, [fp, #-4]
	cmp r9, #3
	movlt r8, #1
	movge r8, #0
	blt .L145
	b .L149
.L145:
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
	sub r6, r5, r4
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
	mul r7, r6, r7
	add r6, r4, r7
	ldr r4, [r6]
	sub r6, r5, r4
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
	sub r6, r5, r4
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-4]
	mov r7, #4
	mul r7, r5, r7
	add r5, r4, r7
	str r6, [r5]
	ldr r8, [fp, #-4]
	add r4, r8, #1
	str r4, [fp, #-4]
	b .L144
.L146:
	mov r0, #0
	add sp, sp, #40
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L147:
	add sp, sp, #40
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L148:
	add sp, sp, #40
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L149:
	b .L146
.L165:
	add sp, sp, #40
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #140
.L166:
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
	b .L177
.L177:
	ldr r7, [fp, #-8]
	cmp r7, #3
	movlt r8, #1
	movge r8, #0
	blt .L178
	b .L182
.L178:
	ldr r9, [fp, #-8]
	ldr r4, [fp, #-8]
	mov r5, #4
	mul r4, r4, r5
	mov r5, #-128
	add r5, r5, r4
	add r4, fp, r5
	str r9, [r4]
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
	mul r5, r4, r5
	mov r4, #-80
	add r4, r4, r5
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
	b .L177
.L179:
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
	add r4, r6, r4
	add r6, fp, r4
	mov r4, #0
	mov r7, #4
	mul r4, r4, r7
	mov r7, #-104
	add r7, r7, r4
	add r4, fp, r7
	mov r7, #0
	mov r8, #4
	mul r7, r7, r8
	mov r8, #-92
	add r7, r8, r7
	add r8, fp, r7
	mov r7, #0
	mov r9, #4
	mul r7, r7, r9
	mov r9, #-80
	add r9, r9, r7
	add r7, fp, r9
	str r7, [fp, #-132]
	mov r7, #0
	mov r9, #4
	mul r7, r7, r9
	mov r9, #-68
	add r9, r9, r7
	add r7, fp, r9
	str r7, [fp, #-136]
	mov r7, #0
	mov r9, #4
	mul r7, r7, r9
	mov r9, #-56
	add r7, r9, r7
	add r9, fp, r7
	str r9, [fp, #-140]
	mov r7, #0
	mov r9, #4
	mul r7, r7, r9
	mov r9, #-32
	add r9, r9, r7
	add r7, fp, r9
	mov r9, #0
	mov r10, #4
	mul r9, r9, r10
	mov r10, #-20
	add r10, r10, r9
	add r9, fp, r10
	mov r0, r5
	mov r1, r6
	mov r2, r4
	mov r3, r8
	push {r9}
	push {r7}
	ldr r10, [fp, #-140]
	push {r10}
	ldr r5, [fp, #-136]
	push {r5}
	ldr r6, [fp, #-132]
	push {r6}
	bl sub
	add sp, sp, #20
	mov r4, r0
	str r4, [fp, #-8]
	b .L184
.L180:
	add sp, sp, #140
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L181:
	add sp, sp, #140
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L182:
	b .L179
.L184:
	ldr r8, [fp, #-8]
	cmp r8, #3
	movlt r9, #1
	movge r9, #0
	blt .L185
	b .L189
.L185:
	ldr r7, [fp, #-8]
	mov r4, #4
	mul r5, r7, r4
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
	b .L184
.L186:
	ldr r5, =10
	str r5, [fp, #-4]
	ldr r6, =0
	str r6, [fp, #-8]
	ldr r8, [fp, #-4]
	mov r0, r8
	bl putch
	b .L191
.L187:
	add sp, sp, #140
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L188:
	add sp, sp, #140
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L189:
	b .L186
.L191:
	ldr r9, [fp, #-8]
	cmp r9, #3
	movlt r10, #1
	movge r10, #0
	blt .L192
	b .L196
.L192:
	ldr r7, [fp, #-8]
	mov r4, #4
	mul r5, r7, r4
	mov r4, #-32
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
	b .L191
	b .F0
.LTORG
addr_N0:
	.word N
addr_M0:
	.word M
addr_L0:
	.word L
.F0:
.L193:
	ldr r5, =10
	str r5, [fp, #-4]
	ldr r6, =0
	str r6, [fp, #-8]
	ldr r8, [fp, #-4]
	mov r0, r8
	bl putch
	b .L198
.L194:
	add sp, sp, #140
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L195:
	add sp, sp, #140
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L196:
	b .L193
.L198:
	ldr r9, [fp, #-8]
	cmp r9, #3
	movlt r10, #1
	movge r10, #0
	blt .L199
	b .L203
.L199:
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
	b .L198
.L200:
	ldr r5, =10
	str r5, [fp, #-4]
	ldr r6, [fp, #-4]
	mov r0, r6
	bl putch
	mov r0, #0
	add sp, sp, #140
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L201:
	add sp, sp, #140
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L202:
	add sp, sp, #140
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L203:
	b .L200
.L205:
	add sp, sp, #140
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

addr_N1:
	.word N
addr_M1:
	.word M
addr_L1:
	.word L
