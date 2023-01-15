	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global k
	.align 4
	.size k, 4
k:
	.word 0
	.text
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L31:
	ldr r10, =3389
	ldr r4, addr_k0
	str r10, [r4]
	ldr r5, addr_k0
	ldr r4, [r5]
	ldr r5, =10000
	cmp r4, r5
	movlt r6, #1
	movge r6, #0
	blt .L32
	b .L36
.L32:
	ldr r7, addr_k0
	ldr r4, [r7]
	add r5, r4, #1
	ldr r4, addr_k0
	str r5, [r4]
	ldr r6, =112
	str r6, [fp, #-16]
	b .L38
.L33:
	ldr r7, addr_k0
	ldr r4, [r7]
	mov r0, r4
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L34:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L35:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L36:
	b .L33
.L38:
	ldr r5, [fp, #-16]
	cmp r5, #10
	movgt r6, #1
	movle r6, #0
	bgt .L39
	b .L43
.L39:
	ldr r8, [fp, #-16]
	sub r4, r8, #88
	str r4, [fp, #-16]
	ldr r5, [fp, #-16]
	ldr r4, =1000
	cmp r5, r4
	movlt r6, #1
	movge r6, #0
	blt .L44
	b .L48
.L40:
	ldr r7, [fp, #-16]
	mov r0, r7
	bl putint
	b .L33
.L41:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L42:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L43:
	b .L40
.L44:
	ldr r8, =9
	str r8, [fp, #-12]
	ldr r9, =11
	str r9, [fp, #-8]
	ldr r10, =10
	str r10, [fp, #-12]
	ldr r5, [fp, #-16]
	ldr r4, [fp, #-12]
	sub r6, r5, r4
	str r6, [fp, #-16]
	ldr r7, =11
	str r7, [fp, #-4]
	ldr r8, [fp, #-16]
	ldr r4, [fp, #-4]
	add r5, r8, r4
	ldr r4, [fp, #-8]
	add r6, r5, r4
	str r6, [fp, #-16]
	b .L45
.L45:
	b .L38
.L46:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L47:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L48:
	b .L45
.L52:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

addr_k0:
	.word k
