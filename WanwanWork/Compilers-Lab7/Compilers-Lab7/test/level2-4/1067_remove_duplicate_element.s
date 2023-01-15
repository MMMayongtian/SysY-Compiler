	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global removeElement
	.type removeElement , %function
removeElement:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L48:
	str r0, [fp, #-16]
	str r1, [fp, #-12]
	str r2, [fp, #-8]
	ldr r10, =0
	str r10, [fp, #-4]
	b .L53
.L53:
	ldr r9, [fp, #-4]
	ldr r4, [fp, #-12]
	cmp r9, r4
	movlt r5, #1
	movge r5, #0
	blt .L54
	b .L58
.L54:
	ldr r6, [fp, #-16]
	ldr r4, [fp, #-4]
	mov r5, #4
	mul r5, r4, r5
	add r4, r6, r5
	ldr r5, [r4]
	ldr r4, [fp, #-8]
	cmp r5, r4
	beq .L59
	b .L66
.L55:
	ldr r6, [fp, #-12]
	mov r0, r6
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L56:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L57:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L58:
	b .L55
.L59:
	ldr r7, [fp, #-16]
	ldr r4, [fp, #-12]
	sub r5, r4, #1
	mov r4, #4
	mul r5, r5, r4
	add r4, r7, r5
	ldr r5, [r4]
	ldr r4, [fp, #-16]
	ldr r6, [fp, #-4]
	mov r7, #4
	mul r7, r6, r7
	add r6, r4, r7
	str r5, [r6]
	ldr r8, [fp, #-12]
	sub r4, r8, #1
	str r4, [fp, #-12]
	b .L61
.L60:
	ldr r5, [fp, #-4]
	add r4, r5, #1
	str r4, [fp, #-4]
	b .L61
.L61:
	b .L53
.L64:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L65:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L66:
	b .L60
.L70:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #48
.L71:
	mov r10, #0
	mov r4, #4
	mul r4, r10, r4
	mov r5, #-44
	add r6, r5, r4
	add r4, fp, r6
	ldr r5, =3
	str r5, [r4]
	mov r6, #1
	mov r4, #4
	mul r5, r6, r4
	mov r4, #-44
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, =3
	str r4, [r6]
	mov r5, #2
	mov r4, #4
	mul r6, r5, r4
	mov r4, #-44
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =9
	str r4, [r5]
	mov r6, #3
	mov r4, #4
	mul r4, r6, r4
	mov r5, #-44
	add r6, r5, r4
	add r4, fp, r6
	ldr r5, =0
	str r5, [r4]
	mov r6, #4
	mov r4, #4
	mul r5, r6, r4
	mov r4, #-44
	add r6, r4, r5
	add r4, fp, r6
	ldr r5, =0
	str r5, [r4]
	mov r6, #5
	mov r4, #4
	mul r5, r6, r4
	mov r4, #-44
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, =1
	str r4, [r6]
	mov r5, #6
	mov r4, #4
	mul r6, r5, r4
	mov r4, #-44
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =1
	str r4, [r5]
	mov r6, #7
	mov r4, #4
	mul r5, r6, r4
	mov r4, #-44
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, =5
	str r4, [r6]
	mov r5, #8
	mov r4, #4
	mul r6, r5, r4
	mov r4, #-44
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =7
	str r4, [r5]
	mov r6, #9
	mov r4, #4
	mul r5, r6, r4
	mov r4, #-44
	add r6, r4, r5
	add r4, fp, r6
	ldr r5, =8
	str r5, [r4]
	ldr r6, =10
	str r6, [fp, #-48]
	ldr r7, =3
	str r7, [fp, #-4]
	mov r8, #0
	mov r4, #4
	mul r5, r8, r4
	mov r4, #-44
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, [fp, #-48]
	ldr r5, [fp, #-4]
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl removeElement
	mov r7, r0
	str r7, [fp, #-48]
	ldr r8, [fp, #-48]
	mov r0, r8
	add sp, sp, #48
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L75:
	add sp, sp, #48
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr

