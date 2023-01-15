	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global ifWhile
	.type ifWhile , %function
ifWhile:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L24:
	ldr r10, =0
	str r10, [fp, #-8]
	ldr r9, =3
	str r9, [fp, #-4]
	ldr r8, [fp, #-8]
	cmp r8, #5
	beq .L27
	b .L32
.L27:
	b .L33
.L28:
	b .L39
.L29:
	ldr r7, [fp, #-4]
	mov r0, r7
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L30:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L31:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L32:
	b .L28
.L33:
	ldr r6, [fp, #-4]
	cmp r6, #2
	beq .L34
	b .L38
.L34:
	ldr r5, [fp, #-4]
	add r4, r5, #2
	str r4, [fp, #-4]
	b .L33
.L35:
	ldr r6, [fp, #-4]
	add r4, r6, #25
	str r4, [fp, #-4]
	b .L29
.L36:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L37:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L38:
	b .L35
.L39:
	ldr r5, [fp, #-8]
	cmp r5, #5
	movlt r7, #1
	movge r7, #0
	blt .L40
	b .L44
.L40:
	ldr r8, [fp, #-4]
	ldr r4, =2
	mul r5, r8, r4
	str r5, [fp, #-4]
	ldr r6, [fp, #-8]
	add r4, r6, #1
	str r4, [fp, #-8]
	b .L39
.L41:
	b .L29
.L42:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L43:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L44:
	b .L41
.L45:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r10, fp, lr}
	mov fp, sp
	sub sp, sp, #0
.L46:
	bl ifWhile
	mov r10, r0
	mov r0, r10
	add sp, sp, #0
	pop {r10, fp, lr}
	bx lr
.L47:
	add sp, sp, #0
	pop {r10, fp, lr}
	bx lr

