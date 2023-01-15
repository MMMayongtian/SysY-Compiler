	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global whileIf
	.type whileIf , %function
whileIf:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L20:
	ldr r10, =0
	str r10, [fp, #-8]
	ldr r9, =0
	str r9, [fp, #-4]
	b .L23
.L23:
	ldr r8, [fp, #-8]
	cmp r8, #100
	movlt r7, #1
	movge r7, #0
	blt .L24
	b .L28
.L24:
	ldr r6, [fp, #-8]
	cmp r6, #5
	beq .L29
	b .L34
.L25:
	ldr r5, [fp, #-4]
	mov r0, r5
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L26:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L27:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L28:
	b .L25
.L29:
	ldr r4, =25
	str r4, [fp, #-4]
	b .L31
.L30:
	ldr r10, [fp, #-8]
	cmp r10, #10
	beq .L35
	b .L40
.L31:
	ldr r9, [fp, #-8]
	add r4, r9, #1
	str r4, [fp, #-8]
	b .L23
.L32:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L33:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L34:
	b .L30
.L35:
	ldr r5, =42
	str r5, [fp, #-4]
	b .L37
.L36:
	ldr r6, [fp, #-8]
	ldr r4, =2
	mul r5, r6, r4
	str r5, [fp, #-4]
	b .L37
.L37:
	b .L31
.L38:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L39:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L40:
	b .L36
.L41:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r10, fp, lr}
	mov fp, sp
	sub sp, sp, #0
.L42:
	bl whileIf
	mov r10, r0
	mov r0, r10
	add sp, sp, #0
	pop {r10, fp, lr}
	bx lr
.L43:
	add sp, sp, #0
	pop {r10, fp, lr}
	bx lr

