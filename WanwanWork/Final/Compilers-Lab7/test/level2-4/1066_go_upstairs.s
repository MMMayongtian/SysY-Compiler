	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global climbStairs
	.type climbStairs , %function
climbStairs:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #48
.L36:
	str r0, [fp, #-48]
	ldr r4, [fp, #-48]
	ldr r5, =4
	cmp r4, r5
	movlt r6, #1
	movge r6, #0
	blt .L38
	b .L42
.L38:
	ldr r7, [fp, #-48]
	mov r0, r7
	add sp, sp, #48
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L39:
	ldr r8, =0
	add r4, r8, #0
	mov r5, #4
	mul r6, r4, r5
	mov r4, #-44
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =0
	str r4, [r5]
	ldr r6, =0
	add r4, r6, #1
	mov r5, #4
	mul r6, r4, r5
	mov r4, #-44
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =1
	str r4, [r5]
	ldr r6, =0
	add r4, r6, #2
	mov r5, #4
	mul r6, r4, r5
	mov r4, #-44
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =2
	str r4, [r5]
	ldr r6, =3
	str r6, [fp, #-4]
	b .L52
.L40:
	add sp, sp, #48
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L41:
	add sp, sp, #48
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L42:
	b .L39
.L43:
	b .L39
.L52:
	ldr r7, [fp, #-4]
	ldr r4, [fp, #-48]
	add r5, r4, #1
	cmp r7, r5
	movlt r6, #1
	movge r6, #0
	blt .L53
	b .L57
.L53:
	ldr r8, [fp, #-4]
	sub r4, r8, #1
	ldr r5, =0
	add r6, r5, r4
	mov r4, #4
	mul r5, r6, r4
	mov r4, #-44
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, [r6]
	ldr r5, [fp, #-4]
	sub r6, r5, #2
	ldr r5, =0
	add r7, r5, r6
	mov r5, #4
	mul r5, r7, r5
	mov r6, #-44
	add r6, r6, r5
	add r5, fp, r6
	ldr r6, [r5]
	add r5, r4, r6
	ldr r4, [fp, #-4]
	ldr r6, =0
	add r7, r6, r4
	mov r4, #4
	mul r4, r7, r4
	mov r6, #-44
	add r6, r6, r4
	add r4, fp, r6
	str r5, [r4]
	ldr r7, [fp, #-4]
	add r4, r7, #1
	str r4, [fp, #-4]
	b .L52
.L54:
	ldr r5, [fp, #-48]
	ldr r4, =0
	add r6, r4, r5
	mov r4, #4
	mul r5, r6, r4
	mov r4, #-44
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, [r6]
	mov r0, r4
	add sp, sp, #48
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L55:
	add sp, sp, #48
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L56:
	add sp, sp, #48
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L57:
	b .L54
.L66:
	add sp, sp, #48
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L70:
	ldr r4, =5
	str r4, [fp, #-4]
	ldr r5, [fp, #-4]
	mov r0, r5
	bl climbStairs
	mov r6, r0
	str r6, [fp, #-8]
	ldr r7, [fp, #-8]
	mov r0, r7
	add sp, sp, #8
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L73:
	add sp, sp, #8
	pop {r4, r5, r6, r7, fp, lr}
	bx lr

