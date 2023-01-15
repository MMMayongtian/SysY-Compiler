	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global a
	.align 4
	.size a, 4
a:
	.word 7
	.text
	.global func
	.type func , %function
func:
	push {r4, r5, r6, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L24:
	ldr r10, addr_a0
	ldr r4, [r10]
	str r4, [fp, #-8]
	ldr r5, =1
	str r5, [fp, #-4]
	ldr r6, [fp, #-4]
	ldr r4, [fp, #-8]
	cmp r6, r4
	beq .L27
	b .L32
.L27:
	ldr r5, [fp, #-4]
	add r4, r5, #1
	str r4, [fp, #-4]
	mov r0, #1
	add sp, sp, #8
	pop {r4, r5, r6, r10, fp, lr}
	bx lr
.L28:
	mov r0, #0
	add sp, sp, #8
	pop {r4, r5, r6, r10, fp, lr}
	bx lr
.L29:
	add sp, sp, #8
	pop {r4, r5, r6, r10, fp, lr}
	bx lr
.L30:
	add sp, sp, #8
	pop {r4, r5, r6, r10, fp, lr}
	bx lr
.L31:
	add sp, sp, #8
	pop {r4, r5, r6, r10, fp, lr}
	bx lr
.L32:
	b .L28
.L33:
	b .L29
.L34:
	b .L29

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L35:
	ldr r10, =0
	str r10, [fp, #-8]
	ldr r9, =0
	str r9, [fp, #-4]
	b .L38
.L38:
	ldr r8, [fp, #-4]
	cmp r8, #100
	movlt r7, #1
	movge r7, #0
	blt .L39
	b .L43
.L39:
	bl func
	mov r6, r0
	cmp r6, #1
	beq .L44
	b .L48
.L40:
	ldr r5, [fp, #-8]
	cmp r5, #100
	movlt r4, #1
	movge r4, #0
	blt .L49
	b .L54
.L41:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L42:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L43:
	b .L40
.L44:
	ldr r10, [fp, #-8]
	add r4, r10, #1
	str r4, [fp, #-8]
	b .L45
.L45:
	ldr r5, [fp, #-4]
	add r4, r5, #1
	str r4, [fp, #-4]
	b .L38
.L46:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L47:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L48:
	b .L45
.L49:
	mov r0, #1
	bl putint
	b .L51
.L50:
	mov r0, #0
	bl putint
	b .L51
.L51:
	mov r0, #0
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L52:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L53:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L54:
	b .L50
.L55:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

addr_a0:
	.word a
