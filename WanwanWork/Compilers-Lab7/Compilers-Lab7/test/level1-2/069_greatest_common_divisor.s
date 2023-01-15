	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global fun
	.type fun , %function
fun:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #12
.L28:
	str r0, [fp, #-12]
	str r1, [fp, #-8]
	b .L32
.L32:
	ldr r10, [fp, #-8]
	cmp r10, #0
	movgt r9, #1
	movle r9, #0
	bgt .L33
	b .L37
.L33:
	ldr r8, [fp, #-12]
	ldr r4, [fp, #-8]
	sdiv r5, r8, r4
	mul r4, r5, r4
	sub r5, r8, r4
	str r5, [fp, #-4]
	ldr r6, [fp, #-8]
	str r6, [fp, #-12]
	ldr r7, [fp, #-4]
	str r7, [fp, #-8]
	b .L32
.L34:
	ldr r9, [fp, #-12]
	mov r0, r9
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L35:
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L36:
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L37:
	b .L34
.L38:
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #12
.L39:
	bl getint
	mov r10, r0
	str r10, [fp, #-8]
	bl getint
	mov r9, r0
	str r9, [fp, #-12]
	ldr r8, [fp, #-8]
	ldr r4, [fp, #-12]
	mov r0, r8
	mov r1, r4
	bl fun
	mov r5, r0
	str r5, [fp, #-4]
	ldr r6, [fp, #-4]
	mov r0, r6
	bl putint
	mov r0, #0
	add sp, sp, #12
	pop {r4, r5, r6, r8, r9, r10, fp, lr}
	bx lr
.L43:
	add sp, sp, #12
	pop {r4, r5, r6, r8, r9, r10, fp, lr}
	bx lr

