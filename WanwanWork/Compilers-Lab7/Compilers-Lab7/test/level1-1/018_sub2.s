	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.section .rodata
	.global a
	.align 4
	.size a, 4
a:
	.word 10
	.text
	.global main
	.type main , %function
main:
	push {r4, r5, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L6:
	ldr r10, =2
	str r10, [fp, #-4]
	ldr r9, [fp, #-4]
	ldr r4, addr_a0
	ldr r5, [r4]
	sub r4, r9, r5
	mov r0, r4
	add sp, sp, #4
	pop {r4, r5, r9, r10, fp, lr}
	bx lr
.L8:
	add sp, sp, #4
	pop {r4, r5, r9, r10, fp, lr}
	bx lr

addr_a0:
	.word a
