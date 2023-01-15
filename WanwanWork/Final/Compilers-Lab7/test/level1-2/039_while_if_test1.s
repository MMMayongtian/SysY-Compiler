	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global whileIf
	.type whileIf , %function
whileIf:
	push {r4, r5, r6, r7, r8, r9, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L20:
	ldr r4, =0
	str r4, [fp, #-8]
	ldr r5, =0
	str r5, [fp, #-4]
	b .L23
.L23:
	ldr r6, [fp, #-8]
	ldr r4, =100
	cmp r6, r4
	movlt r5, #1
	movge r5, #0
	blt .L24
	b .L28
.L24:
	ldr r7, [fp, #-8]
	ldr r4, =5
	cmp r7, r4
	moveq r5, #1
	movne r5, #0
	beq .L29
	b .L34
.L25:
	ldr r6, [fp, #-4]
	mov r0, r6
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L26:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L27:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L28:
	b .L25
.L29:
	ldr r8, =25
	str r8, [fp, #-4]
	b .L31
.L30:
	ldr r9, [fp, #-8]
	ldr r4, =10
	cmp r9, r4
	moveq r5, #1
	movne r5, #0
	beq .L35
	b .L40
.L31:
	ldr r6, [fp, #-8]
	add r4, r6, #1
	str r4, [fp, #-8]
	b .L23
.L32:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L33:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L34:
	b .L30
.L35:
	ldr r5, =42
	str r5, [fp, #-4]
	b .L37
.L36:
	ldr r7, [fp, #-8]
	ldr r4, =2
	mul r5, r7, r4
	str r5, [fp, #-4]
	b .L37
.L37:
	b .L31
.L38:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L39:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L40:
	b .L36
.L41:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, fp, lr}
	mov fp, sp
	sub sp, sp, #0
.L42:
	bl whileIf
	mov r4, r0
	mov r0, r4
	add sp, sp, #0
	pop {r4, fp, lr}
	bx lr
.L43:
	add sp, sp, #0
	pop {r4, fp, lr}
	bx lr

