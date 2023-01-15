	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global N
	.align 4
	.size N, 4
N:
	.word 0
	.global newline
	.align 4
	.size newline, 4
newline:
	.word 0
	.text
	.global split
	.type split , %function
split:
	push {r4, r5, r6, r7, r8, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #12
.L45:
	str r0, [fp, #-12]
	str r1, [fp, #-8]
	ldr r10, addr_N0
	ldr r4, [r10]
	sub r5, r4, #1
	str r5, [fp, #-4]
	b .L49
.L49:
	ldr r6, [fp, #-4]
	ldr r4, =0
	sub r5, r4, #1
	cmp r6, r5
	bne .L50
	b .L54
.L50:
	ldr r7, [fp, #-12]
	ldr r4, =10
	sdiv r5, r7, r4
	mul r5, r5, r4
	sub r4, r7, r5
	ldr r5, [fp, #-8]
	ldr r6, [fp, #-4]
	mov r7, #4
	mul r7, r6, r7
	add r6, r5, r7
	str r4, [r6]
	ldr r8, [fp, #-12]
	ldr r4, =10
	sdiv r5, r8, r4
	str r5, [fp, #-12]
	ldr r6, [fp, #-4]
	sub r4, r6, #1
	str r4, [fp, #-4]
	b .L49
.L51:
	mov r0, #0
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L52:
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L53:
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L54:
	b .L51
.L56:
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #28
.L57:
	ldr r10, =4
	ldr r4, addr_N0
	str r10, [r4]
	ldr r5, =10
	ldr r4, addr_newline0
	str r5, [r4]
	ldr r6, =1478
	str r6, [fp, #-24]
	ldr r7, [fp, #-24]
	mov r4, #0
	mov r5, #4
	mul r4, r4, r5
	mov r5, #-20
	add r5, r5, r4
	add r4, fp, r5
	mov r0, r7
	mov r1, r4
	bl split
	mov r6, r0
	str r6, [fp, #-24]
	ldr r8, =0
	str r8, [fp, #-28]
	b .L62
.L62:
	ldr r9, [fp, #-28]
	cmp r9, #4
	movlt r10, #1
	movge r10, #0
	blt .L63
	b .L67
.L63:
	ldr r5, [fp, #-28]
	mov r4, #4
	mul r6, r5, r4
	mov r4, #-20
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, [r5]
	str r4, [fp, #-4]
	ldr r6, [fp, #-4]
	mov r0, r6
	bl putint
	ldr r7, addr_newline0
	ldr r4, [r7]
	mov r0, r4
	bl putch
	ldr r5, [fp, #-28]
	add r4, r5, #1
	str r4, [fp, #-28]
	b .L62
.L64:
	mov r0, #0
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L65:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L66:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L67:
	b .L64
.L69:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

addr_N0:
	.word N
addr_newline0:
	.word newline
