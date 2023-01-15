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
	.global factor
	.type factor , %function
factor:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #12
.L32:
	str r0, [fp, #-12]
	ldr r10, =0
	str r10, [fp, #-4]
	ldr r9, =1
	str r9, [fp, #-8]
	b .L36
.L36:
	ldr r8, [fp, #-8]
	ldr r4, [fp, #-12]
	add r5, r4, #1
	cmp r8, r5
	movlt r6, #1
	movge r6, #0
	blt .L37
	b .L41
.L37:
	ldr r7, [fp, #-12]
	ldr r4, [fp, #-8]
	sdiv r5, r7, r4
	mul r4, r5, r4
	sub r5, r7, r4
	cmp r5, #0
	beq .L42
	b .L46
.L38:
	ldr r6, [fp, #-4]
	mov r0, r6
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L39:
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L40:
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L41:
	b .L38
.L42:
	ldr r8, [fp, #-4]
	ldr r4, [fp, #-8]
	add r5, r8, r4
	str r5, [fp, #-4]
	b .L43
.L43:
	ldr r6, [fp, #-8]
	add r4, r6, #1
	str r4, [fp, #-8]
	b .L36
.L44:
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L45:
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L46:
	b .L43
.L47:
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #12
.L48:
	ldr r10, =4
	ldr r4, addr_N0
	str r10, [r4]
	ldr r5, =10
	ldr r4, addr_newline0
	str r5, [r4]
	ldr r6, =1478
	str r6, [fp, #-8]
	ldr r7, [fp, #-8]
	mov r0, r7
	bl factor
	mov r8, r0
	mov r0, r8
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L52:
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr

addr_N0:
	.word N
addr_newline0:
	.word newline
