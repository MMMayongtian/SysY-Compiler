	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L8:
	ldr r4, =15
	str r4, [fp, #-8]
	ldr r5, =12
	str r5, [fp, #-4]
	ldr r6, [fp, #-8]
	ldr r4, [fp, #-4]
	add r5, r6, r4
	add r4, r5, #61
	mov r0, r4
	add sp, sp, #8
	pop {r4, r5, r6, fp, lr}
	bx lr
.L11:
	add sp, sp, #8
	pop {r4, r5, r6, fp, lr}
	bx lr

