	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global f
	.type f , %function
f:
	push {r4, r5, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L28:
	str r0, [fp, #-8]
	str r1, [fp, #-4]
	ldr r10, [fp, #-8]
	ldr r4, [fp, #-4]
	mul r5, r10, r4
	mov r0, r5
	add sp, sp, #8
	pop {r4, r5, r10, fp, lr}
	bx lr
.L31:
	add sp, sp, #8
	pop {r4, r5, r10, fp, lr}
	bx lr

	.global g
	.type g , %function
g:
	push {r4, r5, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L32:
	str r0, [fp, #-8]
	str r1, [fp, #-4]
	ldr r10, [fp, #-8]
	ldr r4, [fp, #-4]
	sdiv r5, r10, r4
	mul r4, r5, r4
	sub r5, r10, r4
	mov r0, r5
	add sp, sp, #8
	pop {r4, r5, r10, fp, lr}
	bx lr
.L35:
	add sp, sp, #8
	pop {r4, r5, r10, fp, lr}
	bx lr

	.global h
	.type h , %function
h:
	push {r4, r5, r6, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L36:
	str r0, [fp, #-8]
	str r1, [fp, #-4]
	ldr r10, [fp, #-8]
	ldr r4, [fp, #-4]
	mov r0, r10
	mov r1, r4
	bl g
	mov r5, r0
	mov r0, #2
	mov r1, r5
	bl f
	mov r6, r0
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-4]
	mov r0, r4
	mov r1, r5
	bl f
	mov r4, r0
	mov r0, r4
	mov r1, #4
	bl g
	mov r4, r0
	mov r0, r6
	mov r1, r4
	bl f
	mov r5, r0
	mov r0, r5
	add sp, sp, #8
	pop {r4, r5, r6, r10, fp, lr}
	bx lr
.L39:
	add sp, sp, #8
	pop {r4, r5, r6, r10, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r10, fp, lr}
	mov fp, sp
	sub sp, sp, #0
.L40:
	mov r0, #11
	mov r1, #3
	bl h
	mov r10, r0
	mov r0, r10
	bl putint
	mov r0, #0
	add sp, sp, #0
	pop {r10, fp, lr}
	bx lr
.L41:
	add sp, sp, #0
	pop {r10, fp, lr}
	bx lr

