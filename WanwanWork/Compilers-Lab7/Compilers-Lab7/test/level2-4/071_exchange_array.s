	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #116
.L32:
	mov r10, #0
	mov r4, #20
	mul r5, r10, r4
	mov r4, #-116
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, =1
	str r4, [r6]
	add r4, r6, #4
	ldr r5, =1
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =1
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =1
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =1
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =2
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =2
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =2
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =2
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =2
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =3
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =3
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =3
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =3
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =3
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =4
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =4
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =4
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =4
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =4
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =5
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =5
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =5
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =5
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =5
	str r4, [r5]
	ldr r6, =2
	str r6, [fp, #-16]
	ldr r7, =3
	str r7, [fp, #-12]
	ldr r8, =0
	str r8, [fp, #-4]
	b .L39
.L39:
	ldr r9, [fp, #-4]
	cmp r9, #5
	movlt r10, #1
	movge r10, #0
	blt .L40
	b .L44
.L40:
	ldr r5, [fp, #-16]
	sub r4, r5, #1
	mov r5, #20
	mul r6, r4, r5
	mov r4, #-116
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, [fp, #-4]
	mov r6, #4
	mul r6, r4, r6
	add r4, r5, r6
	ldr r5, [r4]
	str r5, [fp, #-8]
	ldr r6, [fp, #-12]
	sub r4, r6, #1
	mov r5, #20
	mul r6, r4, r5
	mov r4, #-116
	add r5, r4, r6
	add r4, fp, r5
	ldr r5, [fp, #-4]
	mov r6, #4
	mul r6, r5, r6
	add r5, r4, r6
	ldr r4, [r5]
	ldr r5, [fp, #-16]
	sub r6, r5, #1
	mov r5, #20
	mul r5, r6, r5
	mov r6, #-116
	add r5, r6, r5
	add r6, fp, r5
	ldr r5, [fp, #-4]
	mov r7, #4
	mul r7, r5, r7
	add r5, r6, r7
	str r4, [r5]
	ldr r8, [fp, #-8]
	ldr r4, [fp, #-12]
	sub r5, r4, #1
	mov r4, #20
	mul r4, r5, r4
	mov r5, #-116
	add r5, r5, r4
	add r4, fp, r5
	ldr r5, [fp, #-4]
	mov r6, #4
	mul r6, r5, r6
	add r5, r4, r6
	str r8, [r5]
	ldr r7, [fp, #-4]
	add r4, r7, #1
	str r4, [fp, #-4]
	b .L39
.L41:
	mov r5, #2
	mov r4, #20
	mul r6, r5, r4
	mov r4, #-116
	add r4, r4, r6
	add r5, fp, r4
	mov r4, #0
	mov r6, #4
	mul r6, r4, r6
	add r4, r5, r6
	ldr r5, [r4]
	mov r0, r5
	add sp, sp, #116
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L42:
	add sp, sp, #116
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L43:
	add sp, sp, #116
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L44:
	b .L41
.L51:
	add sp, sp, #116
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

