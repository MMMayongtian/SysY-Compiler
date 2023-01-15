	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #20
.L42:
	ldr r10, =5
	str r10, [fp, #-20]
	ldr r9, =5
	str r9, [fp, #-16]
	ldr r8, =1
	str r8, [fp, #-12]
	ldr r7, =0
	sub r4, r7, #2
	str r4, [fp, #-8]
	ldr r5, [fp, #-8]
	ldr r4, =1
	mul r6, r5, r4
	ldr r4, =2
	sdiv r5, r6, r4
	ldr r4, [fp, #-20]
	ldr r6, [fp, #-16]
	sub r7, r4, r6
	add r4, r5, r7
	ldr r5, [fp, #-12]
	add r6, r5, #3
	ldr r5, =0
	sub r7, r5, r6
	ldr r5, =2
	sdiv r6, r7, r5
	mul r5, r6, r5
	sub r6, r7, r5
	sub r5, r4, r6
	str r5, [fp, #-4]
	ldr r7, [fp, #-4]
	mov r0, r7
	bl putint
	ldr r8, [fp, #-8]
	ldr r4, =2
	sdiv r5, r8, r4
	mul r4, r5, r4
	sub r5, r8, r4
	add r4, r5, #67
	ldr r5, [fp, #-20]
	ldr r6, [fp, #-16]
	sub r7, r5, r6
	ldr r5, =0
	sub r6, r5, r7
	add r5, r4, r6
	ldr r4, [fp, #-12]
	add r6, r4, #2
	ldr r4, =2
	sdiv r7, r6, r4
	mul r4, r7, r4
	sub r7, r6, r4
	ldr r4, =0
	sub r6, r4, r7
	sub r4, r5, r6
	str r4, [fp, #-4]
	ldr r7, [fp, #-4]
	add r4, r7, #3
	str r4, [fp, #-4]
	ldr r5, [fp, #-4]
	mov r0, r5
	bl putint
	mov r0, #0
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L48:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

