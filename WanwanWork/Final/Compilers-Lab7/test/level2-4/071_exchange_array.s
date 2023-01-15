	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, fp, lr}
	mov fp, sp
	sub sp, sp, #116
.L32:
	mov r4, #0
	mov r5, #4
	mul r6, r4, r5
	mov r4, #-116
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =1
	str r4, [r5]
	add r4, r5, #4
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
	ldr r4, =5
	cmp r9, r4
	movlt r5, #1
	movge r5, #0
	blt .L40
	b .L44
.L40:
	ldr r6, [fp, #-16]
	sub r4, r6, #1
	ldr r5, =0
	add r6, r5, r4
	add r5, r6, r4
	add r6, r5, r4
	add r5, r6, r4
	add r6, r5, r4
	ldr r4, [fp, #-16]
	sub r5, r4, #1
	add r4, r6, v13
	mov r5, #4
	mul r6, r4, r5
	mov r4, #-116
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, [r5]
	str r4, [fp, #-8]
	ldr r6, [fp, #-12]
	sub r4, r6, #1
	ldr r5, =0
	add r6, r5, r4
	add r5, r6, r4
	add r6, r5, r4
	add r5, r6, r4
	add r6, r5, r4
	ldr r4, [fp, #-12]
	sub r5, r4, #1
	add r4, r6, v21
	mov r5, #4
	mul r6, r4, r5
	mov r4, #-116
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, [r5]
	ldr r5, [fp, #-16]
	sub r6, r5, #1
	ldr r5, =0
	add r7, r5, r6
	add r5, r7, r6
	add r7, r5, r6
	add r5, r7, r6
	add r7, r5, r6
	ldr r5, [fp, #-16]
	sub r6, r5, #1
	add r5, r7, v17
	mov r6, #4
	mul r5, r5, r6
	mov r6, #-116
	add r6, r6, r5
	add r5, fp, r6
	str r4, [r5]
	ldr r7, [fp, #-8]
	ldr r4, [fp, #-12]
	sub r5, r4, #1
	ldr r4, =0
	add r6, r4, r5
	add r4, r6, r5
	add r6, r4, r5
	add r4, r6, r5
	add r6, r4, r5
	ldr r4, [fp, #-12]
	sub r5, r4, #1
	add r4, r6, v25
	mov r5, #4
	mul r5, r4, r5
	mov r4, #-116
	add r4, r4, r5
	add r5, fp, r4
	str r7, [r5]
	ldr r6, [fp, #-4]
	add r4, r6, #1
	str r4, [fp, #-4]
	b .L39
	b .F0
.LTORG
.F0:
.L41:
	ldr r5, =0
	add r4, r5, #2
	add r5, r4, #2
	add r4, r5, #2
	add r5, r4, #2
	add r4, r5, #2
	add r5, r4, #0
	mov r4, #4
	mul r6, r5, r4
	mov r4, #-116
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, [r5]
	mov r0, r4
	add sp, sp, #116
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L42:
	add sp, sp, #116
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L43:
	add sp, sp, #116
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L44:
	b .L41
.L55:
	add sp, sp, #116
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr

