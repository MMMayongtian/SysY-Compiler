	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global defn
	.type defn , %function
defn:
	push {r4, fp, lr}
	mov fp, sp
	sub sp, sp, #0
.L3:
	ldr r4, =4
	mov r0, r4
	add sp, sp, #0
	pop {r4, fp, lr}
	bx lr
.L4:
	add sp, sp, #0
	pop {r4, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L5:
	bl defn
	mov r4, r0
	str r4, [fp, #-4]
	ldr r5, [fp, #-4]
	mov r0, r5
	add sp, sp, #4
	pop {r4, r5, fp, lr}
	bx lr
.L7:
	add sp, sp, #4
	pop {r4, r5, fp, lr}
	bx lr

