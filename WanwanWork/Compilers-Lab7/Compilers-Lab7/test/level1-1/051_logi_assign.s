	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global a
	.align 4
	.size a, 4
a:
	.word 0
	.global b
	.align 4
	.size b, 4
b:
	.word 0
	.text
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L16:
	bl getint
	mov r10, r0
	ldr r4, addr_a0
	str r10, [r4]
	bl getint
	mov r5, r0
	ldr r4, addr_b0
	str r5, [r4]
	ldr r6, addr_a0
	ldr r4, [r6]
	ldr r5, addr_b0
	ldr r6, [r5]
	cmp r4, r6
	beq .L21
	b .L24
.L18:
	ldr r7, =1
	str r7, [fp, #-4]
	b .L20
.L19:
	ldr r8, =0
	str r8, [fp, #-4]
	b .L20
.L20:
	ldr r9, [fp, #-4]
	mov r0, r9
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L21:
	ldr r10, addr_a0
	ldr r4, [r10]
	cmp r4, #3
	bne .L18
	b .L27
.L22:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L23:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L24:
	b .L19
.L25:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L26:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L27:
	b .L19
.L28:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

addr_a0:
	.word a
addr_b0:
	.word b
