	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r4, r5, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L8:
	ldr r10, =15
	str r10, [fp, #-8]
	ldr r9, =12
	str r9, [fp, #-4]
	ldr r8, [fp, #-8]
	ldr r4, [fp, #-4]
	add r5, r8, r4
	add r4, r5, #61
	mov r0, r4
	add sp, sp, #8
	pop {r4, r5, r8, r9, r10, fp, lr}
	bx lr
.L11:
	add sp, sp, #8
	pop {r4, r5, r8, r9, r10, fp, lr}
	bx lr

