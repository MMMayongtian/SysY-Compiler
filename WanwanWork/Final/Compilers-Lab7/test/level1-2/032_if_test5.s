	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global if_if_Else
	.type if_if_Else , %function
if_if_Else:
	push {r4, r5, r6, r7, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L14:
	ldr r4, =5
	str r4, [fp, #-8]
	ldr r5, =10
	str r5, [fp, #-4]
	ldr r6, [fp, #-8]
	ldr r4, =5
	cmp r6, r4
	moveq r5, #1
	movne r5, #0
	beq .L17
	b .L22
.L17:
	ldr r7, [fp, #-4]
	ldr r4, =10
	cmp r7, r4
	moveq r5, #1
	movne r5, #0
	beq .L23
	b .L27
.L18:
	ldr r6, [fp, #-8]
	add r4, r6, #15
	str r4, [fp, #-8]
	b .L19
.L19:
	ldr r5, [fp, #-8]
	mov r0, r5
	add sp, sp, #8
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L20:
	add sp, sp, #8
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L21:
	add sp, sp, #8
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L22:
	b .L18
.L23:
	ldr r7, =25
	str r7, [fp, #-8]
	b .L24
.L24:
	b .L19
.L25:
	add sp, sp, #8
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L26:
	add sp, sp, #8
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L27:
	b .L24
.L28:
	add sp, sp, #8
	pop {r4, r5, r6, r7, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, fp, lr}
	mov fp, sp
	sub sp, sp, #0
.L29:
	bl if_if_Else
	mov r4, r0
	mov r0, r4
	add sp, sp, #0
	pop {r4, fp, lr}
	bx lr
.L30:
	add sp, sp, #0
	pop {r4, fp, lr}
	bx lr

