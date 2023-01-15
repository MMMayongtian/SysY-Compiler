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
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L6:
	ldr r4, =2
	str r4, [fp, #-4]
	ldr r5, [fp, #-4]
	ldr r4, addr_a0
	ldr r6, [r4]
	sub r4, r5, r6
	mov r0, r4
	add sp, sp, #4
	pop {r4, r5, r6, fp, lr}
	bx lr
.L8:
	add sp, sp, #4
	pop {r4, r5, r6, fp, lr}
	bx lr

addr_a0:
	.word a
