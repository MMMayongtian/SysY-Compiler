	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global ifElseIf
	.type ifElseIf , %function
ifElseIf:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L30:
	ldr r10, =5
	str r10, [fp, #-8]
	ldr r9, =10
	str r9, [fp, #-4]
	ldr r8, [fp, #-8]
	cmp r8, #6
	beq .L33
	b .L39
.L33:
	ldr r7, [fp, #-8]
	mov r0, r7
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L34:
	ldr r6, [fp, #-4]
	cmp r6, #10
	beq .L47
	b .L50
.L35:
	ldr r5, [fp, #-8]
	mov r0, r5
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L36:
	ldr r4, [fp, #-4]
	cmp r4, #11
	beq .L33
	b .L42
.L37:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L38:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L39:
	b .L36
.L40:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L41:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L42:
	b .L34
.L43:
	b .L35
.L44:
	ldr r10, =25
	str r10, [fp, #-8]
	b .L46
.L45:
	ldr r9, [fp, #-4]
	cmp r9, #10
	beq .L57
	b .L60
.L46:
	b .L35
.L47:
	ldr r8, [fp, #-8]
	cmp r8, #1
	beq .L44
	b .L53
.L48:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L49:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L50:
	b .L45
.L51:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L52:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L53:
	b .L45
.L54:
	ldr r7, [fp, #-8]
	add r4, r7, #15
	str r4, [fp, #-8]
	b .L56
.L55:
	ldr r5, [fp, #-8]
	ldr r4, =0
	sub r6, r4, r5
	str r6, [fp, #-8]
	b .L56
.L56:
	b .L46
.L57:
	ldr r7, [fp, #-8]
	ldr r4, =0
	sub r5, r4, #5
	cmp r7, r5
	beq .L54
	b .L63
.L58:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L59:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L60:
	b .L55
.L61:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L62:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L63:
	b .L55
.L64:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r10, fp, lr}
	mov fp, sp
	sub sp, sp, #0
.L65:
	bl ifElseIf
	mov r10, r0
	mov r0, r10
	bl putint
	mov r0, #0
	add sp, sp, #0
	pop {r10, fp, lr}
	bx lr
.L66:
	add sp, sp, #0
	pop {r10, fp, lr}
	bx lr

