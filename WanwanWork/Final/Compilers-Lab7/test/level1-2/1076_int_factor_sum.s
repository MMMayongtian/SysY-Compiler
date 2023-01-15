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
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #12
.L32:
	str r0, [fp, #-12]
	ldr r4, =0
	str r4, [fp, #-4]
	ldr r5, =1
	str r5, [fp, #-8]
	b .L36
.L36:
	ldr r6, [fp, #-8]
	ldr r4, [fp, #-12]
	add r5, r4, #1
	cmp r6, r5
	movlt r7, #1
	movge r7, #0
	blt .L37
	b .L41
.L37:
	ldr r8, [fp, #-12]
	ldr r4, [fp, #-8]
	sdiv r5, r8, r4
	mul r4, r5, r4
	sub r5, r8, r4
	ldr r4, =0
	cmp r5, r4
	moveq r6, #1
	movne r6, #0
	beq .L42
	b .L46
.L38:
	ldr r7, [fp, #-4]
	mov r0, r7
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L39:
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L40:
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, fp, lr}
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
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L45:
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L46:
	b .L43
.L47:
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #12
.L48:
	ldr r4, =4
	ldr r5, addr_N0
	str r4, [r5]
	ldr r6, =10
	ldr r4, addr_newline0
	str r6, [r4]
	ldr r5, =1478
	str r5, [fp, #-8]
	ldr r7, [fp, #-8]
	mov r0, r7
	bl factor
	mov r8, r0
	mov r0, r8
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L52:
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr

addr_N0:
	.word N
addr_newline0:
	.word newline
