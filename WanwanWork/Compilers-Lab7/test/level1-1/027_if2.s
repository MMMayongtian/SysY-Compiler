	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global a
	.align 4
	.size a, 4
a:
	.word 0
	.text
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #0
.L4:
	ldr r4, =10
	ldr r5, addr_a0
	str r4, [r5]
	ldr r6, addr_a0
	ldr r4, [r6]
	ldr r5, =0
	cmp r4, r5
	movgt r6, #1
	movle r6, #0
	bgt .L5
	b .L10
.L5:
	ldr r7, =1
	mov r0, r7
	add sp, sp, #0
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L6:
	ldr r8, =0
	mov r0, r8
	add sp, sp, #0
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L7:
	add sp, sp, #0
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L8:
	add sp, sp, #0
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L9:
	add sp, sp, #0
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L10:
	b .L6
.L11:
	b .L7
.L12:
	b .L7

addr_a0:
	.word a
