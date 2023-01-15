	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r4, r5, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #12
.L9:
	ldr r10, =1
	str r10, [fp, #-12]
	ldr r9, =2
	str r9, [fp, #-8]
	ldr r8, =3
	str r8, [fp, #-4]
	ldr r7, [fp, #-8]
	ldr r4, [fp, #-4]
	add r5, r7, r4
	mov r0, r5
	add sp, sp, #12
	pop {r4, r5, r7, r8, r9, r10, fp, lr}
	bx lr
.L13:
	add sp, sp, #12
	pop {r4, r5, r7, r8, r9, r10, fp, lr}
	bx lr

