	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global ifWhile
	.type ifWhile , %function
ifWhile:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L24:
	ldr r4, =0
	str r4, [fp, #-8]
	ldr r5, =3
	str r5, [fp, #-4]
	ldr r6, [fp, #-8]
	ldr r4, =5
	cmp r6, r4
	moveq r5, #1
	movne r5, #0
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
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L30:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L31:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L32:
	b .L28
.L33:
	ldr r8, [fp, #-4]
	ldr r4, =2
	cmp r8, r4
	moveq r5, #1
	movne r5, #0
	beq .L34
	b .L38
.L34:
	ldr r6, [fp, #-4]
	add r4, r6, #2
	str r4, [fp, #-4]
	b .L33
.L35:
	ldr r5, [fp, #-4]
	add r4, r5, #25
	str r4, [fp, #-4]
	b .L29
.L36:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L37:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L38:
	b .L35
.L39:
	ldr r6, [fp, #-8]
	ldr r4, =5
	cmp r6, r4
	movlt r5, #1
	movge r5, #0
	blt .L40
	b .L44
.L40:
	ldr r7, [fp, #-4]
	ldr r4, =2
	mul r5, r7, r4
	str r5, [fp, #-4]
	ldr r6, [fp, #-8]
	add r4, r6, #1
	str r4, [fp, #-8]
	b .L39
.L41:
	b .L29
.L42:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L43:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L44:
	b .L41
.L45:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, fp, lr}
	mov fp, sp
	sub sp, sp, #0
.L46:
	bl ifWhile
	mov r4, r0
	mov r0, r4
	add sp, sp, #0
	pop {r4, fp, lr}
	bx lr
.L47:
	add sp, sp, #0
	pop {r4, fp, lr}
	bx lr

