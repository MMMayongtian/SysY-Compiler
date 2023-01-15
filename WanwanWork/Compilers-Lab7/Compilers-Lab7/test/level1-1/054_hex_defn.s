	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L3:
	ldr r10, =15
	str r10, [fp, #-4]
	ldr r9, [fp, #-4]
	mov r0, r9
	add sp, sp, #4
	pop {r9, r10, fp, lr}
	bx lr
.L5:
	add sp, sp, #4
	pop {r9, r10, fp, lr}
	bx lr

