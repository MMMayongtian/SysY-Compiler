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
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #12
.L45:
	str r0, [fp, #-12]
	str r1, [fp, #-8]
	ldr r4, addr_N0
	ldr r5, [r4]
	sub r4, r5, #1
	str r4, [fp, #-4]
	b .L49
.L49:
	ldr r6, [fp, #-4]
	ldr r4, =0
	sub r5, r4, #1
	cmp r6, r5
	movne r7, #1
	moveq r7, #0
	bne .L50
	b .L54
.L50:
	ldr r8, [fp, #-12]
	ldr r4, =10
	sdiv r5, r8, r4
	mul r4, r5, r4
	sub r5, r8, r4
	ldr r4, [fp, #-8]
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, r6
	mov r6, #4
	mul r7, r8, r6
	add r6, r4, r7
	str r5, [r6]
	ldr r8, [fp, #-12]
	ldr r4, =10
	sdiv r5, r8, r4
	str r5, [fp, #-12]
	ldr r6, [fp, #-4]
	sub r4, r6, #1
	str r4, [fp, #-4]
	b .L49
.L51:
	ldr r5, =0
	mov r0, r5
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L52:
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L53:
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L54:
	b .L51
.L58:
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, fp, lr}
	mov fp, sp
	sub sp, sp, #28
.L59:
	ldr r4, =4
	ldr r5, addr_N0
	str r4, [r5]
	ldr r6, =10
	ldr r4, addr_newline0
	str r6, [r4]
	ldr r5, =1478
	str r5, [fp, #-24]
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
	b .L64
.L64:
	ldr r9, [fp, #-28]
	ldr r4, =4
	cmp r9, r4
	movlt r5, #1
	movge r5, #0
	blt .L65
	b .L69
.L65:
	ldr r6, [fp, #-28]
	ldr r4, =0
	add r5, r4, r6
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
	b .L64
.L66:
	ldr r6, =0
	mov r0, r6
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L67:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L68:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L69:
	b .L66
.L73:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr

addr_N0:
	.word N
addr_newline0:
	.word newline
