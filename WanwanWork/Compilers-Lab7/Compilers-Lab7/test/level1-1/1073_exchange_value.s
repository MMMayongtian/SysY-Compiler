	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global n
	.align 4
	.size n, 4
n:
	.word 0
	.text
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #12
.L20:
	bl getint
	mov r10, r0
	str r10, [fp, #-12]
	bl getint
	mov r9, r0
	str r9, [fp, #-8]
	ldr r8, [fp, #-12]
	str r8, [fp, #-4]
	ldr r7, [fp, #-8]
	str r7, [fp, #-12]
	ldr r6, [fp, #-4]
	str r6, [fp, #-8]
	ldr r5, [fp, #-12]
	mov r0, r5
	bl putint
	ldr r4, =10
	str r4, [fp, #-4]
	ldr r10, [fp, #-4]
	mov r0, r10
	bl putch
	ldr r9, [fp, #-8]
	mov r0, r9
	bl putint
	ldr r8, =10
	str r8, [fp, #-4]
	ldr r7, [fp, #-4]
	mov r0, r7
	bl putch
	mov r0, #0
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L24:
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

addr_n0:
	.word n
