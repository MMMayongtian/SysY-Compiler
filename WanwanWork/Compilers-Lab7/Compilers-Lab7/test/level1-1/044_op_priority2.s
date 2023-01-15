	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L15:
	ldr r10, =10
	str r10, [fp, #-16]
	ldr r9, =4
	str r9, [fp, #-12]
	ldr r8, =2
	str r8, [fp, #-8]
	ldr r7, =2
	str r7, [fp, #-4]
	ldr r6, [fp, #-8]
	ldr r4, [fp, #-16]
	add r5, r6, r4
	ldr r4, [fp, #-12]
	ldr r6, [fp, #-4]
	sub r7, r4, r6
	mul r4, r5, r7
	mov r0, r4
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L20:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

