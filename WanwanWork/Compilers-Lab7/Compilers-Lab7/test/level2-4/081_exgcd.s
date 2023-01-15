	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global exgcd
	.type exgcd , %function
exgcd:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #24
.L52:
	str r0, [fp, #-24]
	str r1, [fp, #-20]
	str r2, [fp, #-16]
	str r3, [fp, #-12]
	ldr r10, [fp, #-20]
	cmp r10, #0
	beq .L57
	b .L62
.L57:
	ldr r9, [fp, #-16]
	mov r4, #0
	mov r5, #4
	mul r4, r4, r5
	add r5, r9, r4
	ldr r4, =1
	str r4, [r5]
	ldr r6, [fp, #-12]
	mov r4, #0
	mov r5, #4
	mul r5, r4, r5
	add r4, r6, r5
	ldr r5, =0
	str r5, [r4]
	ldr r6, [fp, #-24]
	mov r0, r6
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L58:
	ldr r7, [fp, #-20]
	ldr r4, [fp, #-24]
	ldr r5, [fp, #-20]
	sdiv r6, r4, r5
	mul r5, r6, r5
	sub r6, r4, r5
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-12]
	mov r0, r7
	mov r1, r6
	mov r2, r4
	mov r3, r5
	bl exgcd
	mov r8, r0
	str r8, [fp, #-8]
	ldr r9, [fp, #-16]
	mov r4, #0
	mov r5, #4
	mul r5, r4, r5
	add r4, r9, r5
	ldr r5, [r4]
	str r5, [fp, #-4]
	ldr r6, [fp, #-12]
	mov r4, #0
	mov r5, #4
	mul r4, r4, r5
	add r5, r6, r4
	ldr r4, [r5]
	ldr r5, [fp, #-16]
	mov r6, #0
	mov r7, #4
	mul r7, r6, r7
	add r6, r5, r7
	str r4, [r6]
	ldr r8, [fp, #-4]
	ldr r4, [fp, #-24]
	ldr r5, [fp, #-20]
	sdiv r6, r4, r5
	ldr r4, [fp, #-12]
	mov r5, #0
	mov r7, #4
	mul r7, r5, r7
	add r5, r4, r7
	ldr r4, [r5]
	mul r5, r6, r4
	sub r4, r8, r5
	ldr r5, [fp, #-12]
	mov r6, #0
	mov r7, #4
	mul r7, r6, r7
	add r6, r5, r7
	str r4, [r6]
	ldr r8, [fp, #-8]
	mov r0, r8
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L59:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L60:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L61:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L62:
	b .L58
.L65:
	b .L59
.L78:
	b .L59

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L79:
	ldr r10, =7
	str r10, [fp, #-16]
	ldr r9, =15
	str r9, [fp, #-12]
	mov r8, #0
	mov r4, #4
	mul r5, r8, r4
	mov r4, #-8
	add r6, r4, r5
	add r4, fp, r6
	ldr r5, =1
	str r5, [r4]
	mov r6, #0
	mov r4, #4
	mul r5, r6, r4
	mov r4, #-4
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, =1
	str r4, [r6]
	ldr r5, [fp, #-16]
	ldr r4, [fp, #-12]
	mov r6, #0
	mov r7, #4
	mul r6, r6, r7
	mov r7, #-8
	add r7, r7, r6
	add r6, fp, r7
	mov r7, #0
	mov r8, #4
	mul r7, r7, r8
	mov r8, #-4
	add r8, r8, r7
	add r7, fp, r8
	mov r0, r5
	mov r1, r4
	mov r2, r6
	mov r3, r7
	bl exgcd
	mov r9, r0
	mov r10, #0
	mov r4, #4
	mul r5, r10, r4
	mov r4, #-8
	add r6, r4, r5
	add r4, fp, r6
	ldr r5, [r4]
	ldr r4, [fp, #-12]
	sdiv r6, r5, r4
	mul r4, r6, r4
	sub r6, r5, r4
	ldr r4, [fp, #-12]
	add r5, r6, r4
	ldr r4, [fp, #-12]
	sdiv r6, r5, r4
	mul r4, r6, r4
	sub r6, r5, r4
	mov r4, #0
	mov r5, #4
	mul r4, r4, r5
	mov r5, #-8
	add r5, r5, r4
	add r4, fp, r5
	str r6, [r4]
	mov r7, #0
	mov r4, #4
	mul r5, r7, r4
	mov r4, #-8
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, [r6]
	mov r0, r4
	bl putint
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L88:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

