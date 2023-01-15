	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global ififElse
	.type ififElse , %function
ififElse:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L14:
	ldr r10, =5
	str r10, [fp, #-8]
	ldr r9, =10
	str r9, [fp, #-4]
	ldr r8, [fp, #-8]
	cmp r8, #5
	beq .L17
	b .L21
.L17:
	ldr r7, [fp, #-4]
	cmp r7, #10
	beq .L22
	b .L27
.L18:
	ldr r6, [fp, #-8]
	mov r0, r6
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L19:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L20:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L21:
	b .L18
.L22:
	ldr r5, =25
	str r5, [fp, #-8]
	b .L24
.L23:
	ldr r4, [fp, #-8]
	add r5, r4, #15
	str r5, [fp, #-8]
	b .L24
.L24:
	b .L18
.L25:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L26:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L27:
	b .L23
.L28:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r10, fp, lr}
	mov fp, sp
	sub sp, sp, #0
.L29:
	bl ififElse
	mov r10, r0
	mov r0, r10
	add sp, sp, #0
	pop {r10, fp, lr}
	bx lr
.L30:
	add sp, sp, #0
	pop {r10, fp, lr}
	bx lr

