	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L3:
	ldr r10, =10
	str r10, [fp, #-8]
	ldr r9, =5
	str r9, [fp, #-4]
	ldr r8, [fp, #-4]
	mov r0, r8
	add sp, sp, #8
	pop {r8, r9, r10, fp, lr}
	bx lr
.L6:
	add sp, sp, #8
	pop {r8, r9, r10, fp, lr}
	bx lr

