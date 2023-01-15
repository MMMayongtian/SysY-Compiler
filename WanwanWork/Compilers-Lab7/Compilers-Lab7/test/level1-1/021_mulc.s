	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.section .rodata
	.global a
	.align 4
	.size a, 4
a:
	.word 5
	.text
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #0
.L3:
	ldr r10, addr_a0
	ldr r4, [r10]
	ldr r5, =5
	mul r6, r4, r5
	mov r0, r6
	add sp, sp, #0
	pop {r4, r5, r6, r10, fp, lr}
	bx lr
.L4:
	add sp, sp, #0
	pop {r4, r5, r6, r10, fp, lr}
	bx lr

addr_a0:
	.word a
