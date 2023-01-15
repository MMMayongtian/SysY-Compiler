	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #92
.L31:
	ldr r10, =2
	str r10, [fp, #-92]
	ldr r9, =20
	str r9, [fp, #-88]
	mov r8, #0
	mov r4, #4
	mul r5, r8, r4
	mov r4, #-84
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, =1
	str r4, [r6]
	add r4, r6, #4
	ldr r5, =2
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	ldr r6, =0
	str r6, [fp, #-4]
	b .L37
.L37:
	ldr r7, [fp, #-92]
	ldr r4, [fp, #-88]
	cmp r7, r4
	movlt r5, #1
	movge r5, #0
	blt .L38
	b .L42
.L38:
	ldr r6, [fp, #-92]
	mov r4, #4
	mul r5, r6, r4
	mov r4, #-84
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, [r6]
	ldr r5, [fp, #-92]
	sub r6, r5, #1
	mov r5, #4
	mul r5, r6, r5
	mov r6, #-84
	add r6, r6, r5
	add r5, fp, r6
	ldr r6, [r5]
	add r5, r4, r6
	ldr r4, [fp, #-92]
	sub r6, r4, #2
	mov r4, #4
	mul r4, r6, r4
	mov r6, #-84
	add r6, r6, r4
	add r4, fp, r6
	ldr r6, [r4]
	add r4, r5, r6
	ldr r5, [fp, #-92]
	mov r6, #4
	mul r5, r5, r6
	mov r6, #-84
	add r5, r6, r5
	add r6, fp, r5
	str r4, [r6]
	ldr r7, [fp, #-4]
	ldr r4, [fp, #-92]
	mov r5, #4
	mul r4, r4, r5
	mov r5, #-84
	add r5, r5, r4
	add r4, fp, r5
	ldr r5, [r4]
	add r4, r7, r5
	str r4, [fp, #-4]
	ldr r6, [fp, #-92]
	mov r4, #4
	mul r5, r6, r4
	mov r4, #-84
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, [r6]
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	ldr r5, [fp, #-92]
	add r4, r5, #1
	str r4, [fp, #-92]
	b .L37
.L39:
	ldr r6, [fp, #-4]
	mov r0, r6
	add sp, sp, #92
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L40:
	add sp, sp, #92
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L41:
	add sp, sp, #92
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L42:
	b .L39
.L48:
	add sp, sp, #92
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

