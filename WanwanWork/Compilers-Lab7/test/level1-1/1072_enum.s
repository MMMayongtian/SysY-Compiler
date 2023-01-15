	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L38:
	ldr r4, =0
	str r4, [fp, #-16]
	ldr r5, =0
	str r5, [fp, #-12]
	ldr r6, =0
	str r6, [fp, #-8]
	b .L43
.L43:
	ldr r7, [fp, #-16]
	ldr r4, =21
	cmp r7, r4
	movlt r5, #1
	movge r5, #0
	blt .L44
	b .L48
.L44:
	b .L49
.L45:
	ldr r6, =0
	mov r0, r6
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
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
.L49:
	ldr r8, [fp, #-12]
	ldr r4, [fp, #-16]
	ldr r5, =101
	sub r6, r5, r4
	cmp r8, r6
	movlt r7, #1
	movge r7, #0
	blt .L50
	b .L54
.L50:
	ldr r9, [fp, #-16]
	ldr r4, =100
	sub r5, r4, r9
	ldr r4, [fp, #-12]
	sub r6, r5, r4
	str r6, [fp, #-8]
	ldr r7, [fp, #-16]
	ldr r4, =5
	mul r5, r4, r7
	ldr r4, [fp, #-12]
	ldr r6, =1
	mul r7, r6, r4
	add r4, r5, r7
	ldr r5, [fp, #-8]
	ldr r6, =2
	sdiv r7, r5, r6
	add r5, r4, r7
	ldr r4, =100
	cmp r5, r4
	moveq r6, #1
	movne r6, #0
	beq .L55
	b .L59
.L51:
	ldr r7, [fp, #-16]
	add r4, r7, #1
	str r4, [fp, #-16]
	b .L43
.L52:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L53:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L54:
	b .L51
.L55:
	ldr r5, [fp, #-16]
	mov r0, r5
	bl putint
	ldr r6, [fp, #-12]
	mov r0, r6
	bl putint
	ldr r8, [fp, #-8]
	mov r0, r8
	bl putint
	ldr r9, =10
	str r9, [fp, #-4]
	ldr r10, [fp, #-4]
	mov r0, r10
	bl putch
	b .L56
.L56:
	ldr r7, [fp, #-12]
	add r4, r7, #1
	str r4, [fp, #-12]
	b .L49
.L57:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L58:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L59:
	b .L56
.L60:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

