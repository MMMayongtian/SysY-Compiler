	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global ifElse
	.type ifElse , %function
ifElse:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L10:
	ldr r10, =5
	str r10, [fp, #-4]
	ldr r9, [fp, #-4]
	cmp r9, #5
	beq .L12
	b .L17
.L12:
	ldr r8, =25
	str r8, [fp, #-4]
	b .L14
.L13:
	ldr r7, [fp, #-4]
	ldr r4, =2
	mul r5, r7, r4
	str r5, [fp, #-4]
	b .L14
.L14:
	ldr r6, [fp, #-4]
	mov r0, r6
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L15:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L16:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L17:
	b .L13
.L18:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r10, fp, lr}
	mov fp, sp
	sub sp, sp, #0
.L19:
	bl ifElse
	mov r10, r0
	mov r0, r10
	add sp, sp, #0
	pop {r10, fp, lr}
	bx lr
.L20:
	add sp, sp, #0
	pop {r10, fp, lr}
	bx lr

