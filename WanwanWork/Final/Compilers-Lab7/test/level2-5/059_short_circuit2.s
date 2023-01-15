	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global func
	.type func , %function
func:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L27:
	str r0, [fp, #-4]
	ldr r4, [fp, #-4]
	ldr r5, =50
	cmp r4, r5
	movle r6, #1
	movgt r6, #0
	ble .L29
	b .L34
.L29:
	ldr r7, [fp, #-4]
	mov r0, r7
	bl putint
	ldr r8, =1
	mov r0, r8
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L30:
	ldr r9, [fp, #-4]
	mov r0, r9
	bl putint
	ldr r10, =0
	mov r0, r10
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L31:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L32:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L33:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L34:
	b .L30
.L35:
	b .L31
.L36:
	b .L31

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L37:
	mov r0, #0
	bl func
	mov r4, r0
	ldr r5, =1
	cmp r4, r5
	moveq r6, #1
	movne r6, #0
	beq .L39
	b .L45
.L39:
	ldr r7, =0
	str r7, [fp, #-4]
	b .L41
.L40:
	ldr r8, =1
	str r8, [fp, #-4]
	b .L41
.L41:
	mov r0, #50
	bl func
	mov r9, r0
	ldr r4, =1
	cmp r9, r4
	moveq r5, #1
	movne r5, #0
	beq .L57
	b .L60
.L42:
	mov r0, #50
	bl func
	mov r6, r0
	ldr r4, =1
	cmp r6, r4
	moveq r5, #1
	movne r5, #0
	beq .L46
	b .L49
.L43:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L44:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L45:
	b .L42
.L46:
	mov r0, #100
	bl func
	mov r7, r0
	ldr r4, =0
	cmp r7, r4
	moveq r5, #1
	movne r5, #0
	beq .L39
	b .L52
.L47:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L48:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L49:
	b .L40
.L50:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L51:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L52:
	b .L40
.L53:
	ldr r6, =0
	str r6, [fp, #-4]
	b .L55
.L54:
	ldr r8, =1
	str r8, [fp, #-4]
	b .L55
.L55:
	ldr r9, =0
	mov r0, r9
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L56:
	mov r0, #1
	bl func
	mov r10, r0
	ldr r4, =1
	cmp r10, r4
	moveq r5, #1
	movne r5, #0
	beq .L53
	b .L66
.L57:
	mov r0, #40
	bl func
	mov r6, r0
	ldr r4, =1
	cmp r6, r4
	moveq r5, #1
	movne r5, #0
	beq .L53
	b .L63
.L58:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L59:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L60:
	b .L56
.L61:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L62:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L63:
	b .L56
.L64:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L65:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L66:
	b .L54
.L67:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

