	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global a
	.align 4
	.size a, 4
a:
	.word 0
	.text
	.global func
	.type func , %function
func:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L13:
	str r0, [fp, #-4]
	ldr r4, [fp, #-4]
	sub r5, r4, #1
	str r5, [fp, #-4]
	ldr r6, [fp, #-4]
	mov r0, r6
	add sp, sp, #4
	pop {r4, r5, r6, fp, lr}
	bx lr
.L15:
	add sp, sp, #4
	pop {r4, r5, r6, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L16:
	ldr r4, =10
	ldr r5, addr_a0
	str r4, [r5]
	ldr r6, addr_a0
	ldr r4, [r6]
	mov r0, r4
	bl func
	mov r5, r0
	str r5, [fp, #-4]
	ldr r7, [fp, #-4]
	mov r0, r7
	add sp, sp, #4
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L18:
	add sp, sp, #4
	pop {r4, r5, r6, r7, fp, lr}
	bx lr

addr_a0:
	.word a
