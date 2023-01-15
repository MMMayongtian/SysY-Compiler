	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global a
	.align 4
	.size a, 4
a:
	.word 1
	.global b
	.align 4
	.size b, 4
b:
	.word 0
	.global c
	.align 4
	.size c, 4
c:
	.word 1
	.global d
	.align 4
	.size d, 4
d:
	.word 2
	.global e
	.align 4
	.size e, 4
e:
	.word 4
	.text
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L42:
	ldr r10, =0
	str r10, [fp, #-4]
	ldr r9, addr_a0
	ldr r4, [r9]
	ldr r5, addr_b0
	ldr r6, [r5]
	mul r5, r4, r6
	ldr r4, addr_c0
	ldr r6, [r4]
	sdiv r4, r5, r6
	ldr r5, addr_e0
	ldr r6, [r5]
	ldr r5, addr_d0
	ldr r7, [r5]
	add r5, r6, r7
	cmp r4, r5
	beq .L47
	b .L50
.L44:
	ldr r8, =1
	str r8, [fp, #-4]
	b .L45
.L45:
	ldr r9, [fp, #-4]
	mov r0, r9
	bl putint
	ldr r10, [fp, #-4]
	mov r0, r10
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L46:
	ldr r6, addr_a0
	ldr r4, [r6]
	ldr r5, addr_b0
	ldr r6, [r5]
	ldr r5, addr_c0
	ldr r7, [r5]
	mul r5, r6, r7
	sub r6, r4, r5
	ldr r4, addr_d0
	ldr r5, [r4]
	ldr r4, addr_a0
	ldr r7, [r4]
	ldr r4, addr_c0
	ldr r8, [r4]
	sdiv r4, r7, r8
	sub r7, r5, r4
	cmp r6, r7
	beq .L44
	b .L56
.L47:
	ldr r8, addr_a0
	ldr r4, [r8]
	ldr r5, addr_a0
	ldr r6, [r5]
	ldr r5, addr_b0
	ldr r7, [r5]
	add r5, r6, r7
	mul r6, r4, r5
	ldr r4, addr_c0
	ldr r5, [r4]
	add r4, r6, r5
	ldr r5, addr_d0
	ldr r6, [r5]
	ldr r5, addr_e0
	ldr r7, [r5]
	add r5, r6, r7
	cmp r4, r5
	movle r8, #1
	movgt r8, #0
	ble .L44
	b .L53
.L48:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L49:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L50:
	b .L46
.L51:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L52:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L53:
	b .L46
.L54:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L55:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L56:
	b .L45
.L57:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

addr_a0:
	.word a
addr_b0:
	.word b
addr_c0:
	.word c
addr_d0:
	.word d
addr_e0:
	.word e
