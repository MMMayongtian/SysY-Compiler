	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r4, r5, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L4:
	ldr r10, =10
	str r10, [fp, #-4]
	ldr r9, [fp, #-4]
	ldr r4, =3
	sdiv r5, r9, r4
	mul r4, r5, r4
	sub r5, r9, r4
	mov r0, r5
	add sp, sp, #4
	pop {r4, r5, r9, r10, fp, lr}
	bx lr
.L6:
	add sp, sp, #4
	pop {r4, r5, r9, r10, fp, lr}
	bx lr

