	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L8:
	ldr r10, =10
	str r10, [fp, #-8]
	ldr r9, =0
	sub r4, r9, #1
	str r4, [fp, #-4]
	ldr r5, [fp, #-8]
	ldr r4, [fp, #-4]
	add r6, r5, r4
	mov r0, r6
	add sp, sp, #8
	pop {r4, r5, r6, r9, r10, fp, lr}
	bx lr
.L11:
	add sp, sp, #8
	pop {r4, r5, r6, r9, r10, fp, lr}
	bx lr

