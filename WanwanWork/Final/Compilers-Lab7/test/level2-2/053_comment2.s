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
.L5:
	ldr r4, =10
	str r4, [fp, #-8]
	ldr r5, =2
	str r5, [fp, #-4]
	ldr r6, [fp, #-4]
	mov r0, r6
	add sp, sp, #8
	pop {r4, r5, r6, fp, lr}
	bx lr
.L8:
	add sp, sp, #8
	pop {r4, r5, r6, fp, lr}
	bx lr

