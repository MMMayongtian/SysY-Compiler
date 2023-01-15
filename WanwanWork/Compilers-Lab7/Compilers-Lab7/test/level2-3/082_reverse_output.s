	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global reverse
	.type reverse , %function
reverse:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L15:
	str r0, [fp, #-8]
	ldr r10, [fp, #-8]
	cmp r10, #1
	movle r9, #1
	movgt r9, #0
	ble .L18
	b .L23
.L18:
	bl getint
	mov r8, r0
	str r8, [fp, #-4]
	ldr r7, [fp, #-4]
	mov r0, r7
	bl putint
	b .L20
.L19:
	bl getint
	mov r6, r0
	str r6, [fp, #-4]
	ldr r5, [fp, #-8]
	sub r4, r5, #1
	mov r0, r4
	bl reverse
	ldr r6, [fp, #-4]
	mov r0, r6
	bl putint
	b .L20
.L20:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L21:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L22:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L23:
	b .L19

	.global main
	.type main , %function
main:
	push {r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L24:
	ldr r10, =200
	str r10, [fp, #-4]
	ldr r9, [fp, #-4]
	mov r0, r9
	bl reverse
	mov r0, #0
	add sp, sp, #4
	pop {r9, r10, fp, lr}
	bx lr
.L26:
	add sp, sp, #4
	pop {r9, r10, fp, lr}
	bx lr

