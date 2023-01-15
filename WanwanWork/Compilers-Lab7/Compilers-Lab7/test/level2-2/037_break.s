	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L16:
	ldr r10, =0
	str r10, [fp, #-8]
	ldr r9, =0
	str r9, [fp, #-4]
	b .L19
.L19:
	ldr r8, [fp, #-8]
	cmp r8, #100
	movlt r7, #1
	movge r7, #0
	blt .L20
	b .L24
.L20:
	ldr r6, [fp, #-8]
	cmp r6, #50
	beq .L25
	b .L29
.L21:
	ldr r5, [fp, #-4]
	mov r0, r5
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L22:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L23:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L24:
	b .L21
.L25:
	b .L21
.L26:
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-8]
	add r6, r4, r5
	str r6, [fp, #-4]
	ldr r7, [fp, #-8]
	add r4, r7, #1
	str r4, [fp, #-8]
	b .L19
.L27:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L28:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L29:
	b .L26
.L30:
	b .L26
.L31:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

