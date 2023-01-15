	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r4, r5, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L3:
	ldr r4, =15
	str r4, [fp, #-4]
	ldr r5, [fp, #-4]
	mov r0, r5
	add sp, sp, #4
	pop {r4, r5, fp, lr}
	bx lr
.L5:
	add sp, sp, #4
	pop {r4, r5, fp, lr}
	bx lr

