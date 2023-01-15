	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global arr
	.align 4
	.size arr, 24
arr:
	.word 1
	.word 2
	.word 33
	.word 4
	.word 5
	.word 6
	.section .rodata
	.global N
	.align 4
	.size N, 4
N:
	.word -1
	.text
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L21:
	ldr r10, =0
	str r10, [fp, #-8]
	ldr r9, =0
	str r9, [fp, #-4]
	b .L24
.L24:
	ldr r8, [fp, #-8]
	cmp r8, #6
	movlt r7, #1
	movge r7, #0
	blt .L25
	b .L29
.L25:
	ldr r6, [fp, #-4]
	ldr r4, [fp, #-8]
	mov r5, #4
	mul r5, r4, r5
	ldr r7, addr_arr0
	add r4, r7, r5
	ldr r5, [r4]
	add r4, r6, r5
	str r4, [fp, #-4]
	ldr r7, [fp, #-8]
	add r4, r7, #1
	str r4, [fp, #-8]
	b .L24
.L26:
	ldr r5, [fp, #-4]
	mov r0, r5
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L27:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L28:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L29:
	b .L26
.L31:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

addr_N0:
	.word N
addr_arr0:
	.word arr
