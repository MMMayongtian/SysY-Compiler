	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global k
	.align 4
	.size k, 4
k:
	.word 0
	.section .rodata
	.global n
	.align 4
	.size n, 4
n:
	.word 10
	.text
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L19:
	ldr r10, =0
	str r10, [fp, #-4]
	ldr r9, =1
	ldr r4, addr_k0
	str r9, [r4]
	b .L21
.L21:
	ldr r5, [fp, #-4]
	ldr r4, addr_n0
	ldr r6, [r4]
	sub r4, r6, #1
	cmp r5, r4
	movle r7, #1
	movgt r7, #0
	ble .L22
	b .L26
.L22:
	ldr r8, [fp, #-4]
	add r4, r8, #1
	str r4, [fp, #-4]
	ldr r5, addr_k0
	ldr r4, [r5]
	add r5, r4, #1
	ldr r6, addr_k0
	ldr r4, [r6]
	ldr r5, addr_k0
	ldr r6, [r5]
	add r5, r4, r6
	ldr r4, addr_k0
	str r5, [r4]
	b .L21
.L23:
	ldr r6, addr_k0
	ldr r4, [r6]
	mov r0, r4
	bl putint
	ldr r5, addr_k0
	ldr r4, [r5]
	mov r0, r4
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L24:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L25:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L26:
	b .L23
.L27:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

addr_k0:
	.word k
addr_n0:
	.word n
