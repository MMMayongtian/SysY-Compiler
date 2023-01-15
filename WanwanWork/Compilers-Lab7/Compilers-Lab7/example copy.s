	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global func2
	.type func2 , %function
func2:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L5:
	str r0, [fp, #-4]
	ldr r4, [fp, #-4]
	mov r5, #0
	mov r6, #4
	mul r6, r5, r6
	add r5, r4, r6
	ldr r4, =1
	str r4, [r5]
	add sp, sp, #4
	pop {r4, r5, r6, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #12
.L8:
	mov r4, #0
	mov r5, #4
	mul r6, r4, r5
	mov r4, #-12
	add r5, r4, r6
	add r4, fp, r5
	ldr r5, =17
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =13
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =11
	str r5, [r4]
	mov r6, #0
	mov r4, #4
	mul r5, r6, r4
	mov r4, #-12
	add r4, r4, r5
	add r6, fp, r4
	mov r0, r6
	bl func2
	ldr r5, =0
	mov r0, r5
	add sp, sp, #12
	pop {r4, r5, r6, fp, lr}
	bx lr
.L11:
	add sp, sp, #12
	pop {r4, r5, r6, fp, lr}
	bx lr



	add operand2
	add operand1 0 0
	r1
	store stack

	load 
	sub kkkk  operand1
	load 
	sub kkkk  operand1
	load 
	sub kkkk  operand1
	sub kkkk  operand1
	sub kkkk  operand1
	sub kkkk  operand1