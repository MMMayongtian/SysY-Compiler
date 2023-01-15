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
	push {r4, r5, r6, r7, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L21:
	ldr r4, =0
	str r4, [fp, #-8]
	ldr r5, =0
	str r5, [fp, #-4]
	b .L24
.L24:
	ldr r6, [fp, #-8]
	ldr r4, =6
	cmp r6, r4
	movlt r5, #1
	movge r5, #0
	blt .L25
	b .L29
.L25:
	ldr r7, [fp, #-4]
	ldr r4, [fp, #-8]
	ldr r5, =0
	add r6, r5, r4
	mov r4, #4
	mul r6, r6, r4
	ldr r5, addr_arr0
	add r4, r5, r6
	ldr r5, [r4]
	add r4, r7, r5
	str r4, [fp, #-4]
	ldr r6, [fp, #-8]
	add r4, r6, #1
	str r4, [fp, #-8]
	b .L24
.L26:
	ldr r5, [fp, #-4]
	mov r0, r5
	add sp, sp, #8
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L27:
	add sp, sp, #8
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L28:
	add sp, sp, #8
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L29:
	b .L26
.L33:
	add sp, sp, #8
	pop {r4, r5, r6, r7, fp, lr}
	bx lr

addr_N0:
	.word N
addr_arr0:
	.word arr
