	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global deepWhileBr
	.type deepWhileBr , %function
deepWhileBr:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #20
.L35:
	str r0, [fp, #-20]
	str r1, [fp, #-16]
	ldr r10, [fp, #-20]
	ldr r4, [fp, #-16]
	add r5, r10, r4
	str r5, [fp, #-12]
	b .L39
.L39:
	ldr r6, [fp, #-12]
	cmp r6, #75
	movlt r7, #1
	movge r7, #0
	blt .L40
	b .L44
.L40:
	ldr r8, =42
	str r8, [fp, #-8]
	ldr r9, [fp, #-12]
	cmp r9, #100
	movlt r10, #1
	movge r10, #0
	blt .L46
	b .L50
.L41:
	ldr r4, [fp, #-12]
	mov r0, r4
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L42:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L43:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L44:
	b .L41
.L46:
	ldr r5, [fp, #-12]
	ldr r4, [fp, #-8]
	add r6, r5, r4
	str r6, [fp, #-12]
	ldr r7, [fp, #-12]
	cmp r7, #99
	movgt r8, #1
	movle r8, #0
	bgt .L51
	b .L55
.L47:
	b .L39
.L48:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L49:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L50:
	b .L47
.L51:
	ldr r9, [fp, #-8]
	ldr r4, =2
	mul r5, r9, r4
	str r5, [fp, #-4]
	ldr r6, =1
	cmp r6, #1
	beq .L57
	b .L61
.L52:
	b .L47
.L53:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L54:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L55:
	b .L52
.L57:
	ldr r7, [fp, #-4]
	ldr r4, =2
	mul r5, r7, r4
	str r5, [fp, #-12]
	b .L58
.L58:
	b .L52
.L59:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L60:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L61:
	b .L58
.L62:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L63:
	ldr r10, =2
	str r10, [fp, #-4]
	ldr r9, [fp, #-4]
	ldr r4, [fp, #-4]
	mov r0, r9
	mov r1, r4
	bl deepWhileBr
	mov r5, r0
	mov r0, r5
	add sp, sp, #4
	pop {r4, r5, r9, r10, fp, lr}
	bx lr
.L65:
	add sp, sp, #4
	pop {r4, r5, r9, r10, fp, lr}
	bx lr

