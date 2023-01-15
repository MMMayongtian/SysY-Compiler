	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L16:
	ldr r4, =0
	str r4, [fp, #-8]
	ldr r5, =0
	str r5, [fp, #-4]
	b .L19
.L19:
	ldr r6, [fp, #-8]
	ldr r4, =100
	cmp r6, r4
	movlt r5, #1
	movge r5, #0
	blt .L20
	b .L24
.L20:
	ldr r7, [fp, #-8]
	ldr r4, =50
	cmp r7, r4
	moveq r5, #1
	movne r5, #0
	beq .L25
	b .L29
.L21:
	ldr r6, [fp, #-4]
	mov r0, r6
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L22:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L23:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L24:
	b .L21
.L25:
	b .L21
.L26:
	ldr r8, [fp, #-4]
	ldr r4, [fp, #-8]
	add r5, r8, r4
	str r5, [fp, #-4]
	ldr r6, [fp, #-8]
	add r4, r6, #1
	str r4, [fp, #-8]
	b .L19
.L27:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L28:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L29:
	b .L26
.L30:
	b .L26
.L31:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr

