	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L15:
	ldr r4, =10
	str r4, [fp, #-16]
	ldr r5, =4
	str r5, [fp, #-12]
	ldr r6, =2
	str r6, [fp, #-8]
	ldr r7, =2
	str r7, [fp, #-4]
	ldr r8, [fp, #-8]
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-12]
	mul r6, r4, r5
	add r4, r8, r6
	ldr r5, [fp, #-4]
	sub r6, r4, r5
	mov r0, r6
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L20:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
