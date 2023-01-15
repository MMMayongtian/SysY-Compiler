	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.section .rodata
	.global a
	.align 4
	.size a, 20
a:
	.word 0
	.word 1
	.word 2
	.word 3
	.word 4
	.text
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #0
.L2:
	mov r10, #4
	mov r4, #4
	mul r4, r10, r4
	ldr r6, addr_a0
	add r5, r6, r4
	ldr r4, [r5]
	mov r0, r4
	add sp, sp, #0
	pop {r4, r5, r6, r10, fp, lr}
	bx lr
.L3:
	add sp, sp, #0
	pop {r4, r5, r6, r10, fp, lr}
	bx lr

addr_a0:
	.word a
