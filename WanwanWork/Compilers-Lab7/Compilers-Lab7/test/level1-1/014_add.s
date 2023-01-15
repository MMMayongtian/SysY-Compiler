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
.L7:
	ldr r10, =10
	str r10, [fp, #-8]
	ldr r9, =2
	str r9, [fp, #-4]
	ldr r8, [fp, #-8]
	ldr r4, [fp, #-4]
	add r5, r8, r4
	mov r0, r5
	add sp, sp, #8
	pop {r4, r5, r8, r9, r10, fp, lr}
	bx lr
.L10:
	add sp, sp, #8
	pop {r4, r5, r8, r9, r10, fp, lr}
	bx lr

