	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global s
	.align 4
	.size s, 4
s:
	.word 0
	.text
	.global get_ans_se
	.type get_ans_se , %function
get_ans_se:
	push {r4, r5, r6, r7, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L190:
	str r0, [fp, #-16]
	str r1, [fp, #-12]
	str r2, [fp, #-8]
	ldr r10, =0
	str r10, [fp, #-4]
	ldr r9, [fp, #-12]
	ldr r4, [fp, #-8]
	cmp r9, r4
	beq .L195
	b .L199
.L195:
	ldr r5, =1
	str r5, [fp, #-4]
	b .L196
.L196:
	ldr r6, [fp, #-16]
	ldr r4, =2
	mul r5, r6, r4
	str r5, [fp, #-16]
	ldr r7, [fp, #-16]
	ldr r4, [fp, #-4]
	add r5, r7, r4
	str r5, [fp, #-16]
	ldr r6, addr_s0
	ldr r4, [r6]
	ldr r5, [fp, #-16]
	add r6, r4, r5
	ldr r4, addr_s0
	str r6, [r4]
	ldr r5, [fp, #-16]
	mov r0, r5
	add sp, sp, #16
	pop {r4, r5, r6, r7, r9, r10, fp, lr}
	bx lr
.L197:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r9, r10, fp, lr}
	bx lr
.L198:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r9, r10, fp, lr}
	bx lr
.L199:
	b .L196
.L200:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r9, r10, fp, lr}
	bx lr

	.global get_ans
	.type get_ans , %function
get_ans:
	push {r4, r5, r6, r7, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L201:
	str r0, [fp, #-16]
	str r1, [fp, #-12]
	str r2, [fp, #-8]
	ldr r10, =0
	str r10, [fp, #-4]
	ldr r9, [fp, #-12]
	ldr r4, [fp, #-8]
	cmp r9, r4
	beq .L206
	b .L210
.L206:
	ldr r5, =1
	str r5, [fp, #-4]
	b .L207
.L207:
	ldr r6, [fp, #-16]
	ldr r4, =2
	mul r5, r6, r4
	str r5, [fp, #-16]
	ldr r7, [fp, #-16]
	ldr r4, [fp, #-4]
	add r5, r7, r4
	str r5, [fp, #-16]
	ldr r6, [fp, #-16]
	mov r0, r6
	add sp, sp, #16
	pop {r4, r5, r6, r7, r9, r10, fp, lr}
	bx lr
.L208:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r9, r10, fp, lr}
	bx lr
.L209:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r9, r10, fp, lr}
	bx lr
.L210:
	b .L207
.L211:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r9, r10, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #36
.L212:
	ldr r10, =0
	sub r4, r10, #-2147483648
	str r4, [fp, #-36]
	ldr r5, =-2147483648
	str r5, [fp, #-32]
	ldr r6, =-2147483648
	add r4, r6, #1
	str r4, [fp, #-28]
	ldr r5, =2147483647
	str r5, [fp, #-24]
	ldr r7, =2147483647
	sub r4, r7, #1
	str r4, [fp, #-20]
	ldr r5, [fp, #-36]
	ldr r4, [fp, #-32]
	mov r0, #0
	mov r1, r5
	mov r2, r4
	bl get_ans
	mov r6, r0
	str r6, [fp, #-16]
	ldr r7, [fp, #-16]
	ldr r4, [fp, #-36]
	add r5, r4, #1
	ldr r4, [fp, #-28]
	mov r0, r7
	mov r1, r5
	mov r2, r4
	bl get_ans
	mov r6, r0
	str r6, [fp, #-16]
	ldr r8, [fp, #-16]
	ldr r4, [fp, #-36]
	ldr r5, [fp, #-24]
	ldr r6, =0
	sub r7, r6, r5
	sub r5, r7, #1
	mov r0, r8
	mov r1, r4
	mov r2, r5
	bl get_ans
	mov r6, r0
	str r6, [fp, #-16]
	ldr r9, [fp, #-16]
	ldr r4, [fp, #-36]
	ldr r5, [fp, #-20]
	add r6, r5, #1
	mov r0, r9
	mov r1, r4
	mov r2, r6
	bl get_ans
	mov r7, r0
	str r7, [fp, #-16]
	ldr r8, [fp, #-16]
	ldr r4, [fp, #-32]
	ldr r5, =2
	sdiv r6, r4, r5
	ldr r4, [fp, #-28]
	ldr r5, =2
	sdiv r7, r4, r5
	mov r0, r8
	mov r1, r6
	mov r2, r7
	bl get_ans
	mov r9, r0
	str r9, [fp, #-16]
	ldr r10, [fp, #-16]
	ldr r4, [fp, #-32]
	ldr r5, [fp, #-24]
	ldr r6, =0
	sub r7, r6, r5
	sub r5, r7, #1
	mov r0, r10
	mov r1, r4
	mov r2, r5
	bl get_ans
	mov r6, r0
	str r6, [fp, #-16]
	ldr r8, [fp, #-16]
	ldr r4, [fp, #-32]
	ldr r5, [fp, #-20]
	add r6, r5, #1
	mov r0, r8
	mov r1, r4
	mov r2, r6
	bl get_ans
	mov r7, r0
	str r7, [fp, #-16]
	ldr r9, [fp, #-28]
	ldr r4, [fp, #-24]
	mov r0, #0
	mov r1, r9
	mov r2, r4
	bl get_ans
	mov r5, r0
	str r5, [fp, #-12]
	ldr r6, [fp, #-12]
	ldr r4, [fp, #-28]
	ldr r5, [fp, #-20]
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl get_ans
	mov r7, r0
	str r7, [fp, #-12]
	ldr r8, [fp, #-12]
	ldr r4, [fp, #-24]
	ldr r5, [fp, #-20]
	mov r0, r8
	mov r1, r4
	mov r2, r5
	bl get_ans
	mov r6, r0
	str r6, [fp, #-12]
	ldr r7, [fp, #-12]
	ldr r4, [fp, #-36]
	ldr r5, =2
	sdiv r6, r4, r5
	ldr r4, [fp, #-32]
	ldr r5, =2
	sdiv r8, r4, r5
	mov r0, r7
	mov r1, r6
	mov r2, r8
	bl get_ans
	mov r9, r0
	str r9, [fp, #-12]
	ldr r10, [fp, #-36]
	ldr r4, [fp, #-32]
	mov r0, #0
	mov r1, r10
	mov r2, r4
	bl get_ans_se
	mov r5, r0
	str r5, [fp, #-8]
	ldr r6, [fp, #-8]
	ldr r4, [fp, #-36]
	add r5, r4, #1
	ldr r4, [fp, #-28]
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl get_ans_se
	mov r7, r0
	str r7, [fp, #-8]
	ldr r8, [fp, #-8]
	ldr r4, [fp, #-36]
	ldr r5, [fp, #-24]
	ldr r6, =0
	sub r7, r6, r5
	sub r5, r7, #1
	mov r0, r8
	mov r1, r4
	mov r2, r5
	bl get_ans_se
	mov r6, r0
	str r6, [fp, #-8]
	ldr r9, [fp, #-8]
	ldr r4, [fp, #-36]
	ldr r5, [fp, #-20]
	add r6, r5, #1
	mov r0, r9
	mov r1, r4
	mov r2, r6
	bl get_ans_se
	mov r7, r0
	str r7, [fp, #-8]
	ldr r8, [fp, #-8]
	ldr r4, [fp, #-32]
	ldr r5, =2
	sdiv r6, r4, r5
	ldr r4, [fp, #-28]
	ldr r5, =2
	sdiv r7, r4, r5
	mov r0, r8
	mov r1, r6
	mov r2, r7
	bl get_ans_se
	mov r9, r0
	str r9, [fp, #-8]
	ldr r10, [fp, #-8]
	ldr r4, [fp, #-32]
	ldr r5, [fp, #-24]
	ldr r6, =0
	sub r7, r6, r5
	sub r5, r7, #1
	mov r0, r10
	mov r1, r4
	mov r2, r5
	bl get_ans_se
	mov r6, r0
	str r6, [fp, #-8]
	ldr r8, [fp, #-8]
	ldr r4, [fp, #-32]
	ldr r5, [fp, #-20]
	add r6, r5, #1
	mov r0, r8
	mov r1, r4
	mov r2, r6
	bl get_ans_se
	mov r7, r0
	str r7, [fp, #-8]
	ldr r9, [fp, #-28]
	ldr r4, [fp, #-24]
	mov r0, #0
	mov r1, r9
	mov r2, r4
	bl get_ans_se
	mov r5, r0
	str r5, [fp, #-4]
	ldr r6, [fp, #-4]
	ldr r4, [fp, #-28]
	ldr r5, [fp, #-20]
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl get_ans_se
	mov r7, r0
	str r7, [fp, #-4]
	ldr r8, [fp, #-4]
	ldr r4, [fp, #-24]
	ldr r5, [fp, #-20]
	mov r0, r8
	mov r1, r4
	mov r2, r5
	bl get_ans_se
	mov r6, r0
	str r6, [fp, #-4]
	ldr r7, [fp, #-4]
	ldr r4, [fp, #-36]
	ldr r5, =2
	sdiv r6, r4, r5
	ldr r4, [fp, #-32]
	ldr r5, =2
	sdiv r8, r4, r5
	mov r0, r7
	mov r1, r6
	mov r2, r8
	bl get_ans_se
	mov r9, r0
	str r9, [fp, #-4]
	ldr r10, [fp, #-16]
	ldr r4, [fp, #-12]
	add r5, r10, r4
	ldr r4, [fp, #-8]
	add r6, r5, r4
	ldr r4, [fp, #-4]
	add r5, r6, r4
	mov r0, r5
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
	b .F0
.LTORG
addr_s0:
	.word s
.F0:
.L222:
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

addr_s1:
	.word s
