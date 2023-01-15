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
.L19:
	ldr r4, =0
	str r4, [fp, #-8]
	ldr r5, =0
	str r5, [fp, #-4]
	b .L22
.L22:
	ldr r6, [fp, #-8]
	ldr r4, =100
	cmp r6, r4
	movlt r5, #1
	movge r5, #0
	blt .L23
	b .L27
.L23:
	ldr r7, [fp, #-8]
	ldr r4, =50
	cmp r7, r4
	moveq r5, #1
	movne r5, #0
	beq .L28
	b .L32
.L24:
	ldr r6, [fp, #-4]
	mov r0, r6
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L25:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L26:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L27:
	b .L24
.L28:
	ldr r8, [fp, #-8]
	add r4, r8, #1
	str r4, [fp, #-8]
	b .L22
.L29:
	ldr r5, [fp, #-4]
	ldr r4, [fp, #-8]
	add r6, r5, r4
	str r6, [fp, #-4]
	ldr r7, [fp, #-8]
	add r4, r7, #1
	str r4, [fp, #-8]
	b .L22
.L30:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L31:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L32:
	b .L29
.L33:
	b .L29
.L34:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr

