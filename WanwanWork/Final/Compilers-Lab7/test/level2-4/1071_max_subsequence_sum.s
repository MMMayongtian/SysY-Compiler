	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global maxSubArray
	.type maxSubArray , %function
maxSubArray:
	push {r4, r5, r6, r7, r8, r9, fp, lr}
	mov fp, sp
	sub sp, sp, #20
.L58:
	str r0, [fp, #-20]
	str r1, [fp, #-16]
	ldr r4, [fp, #-16]
	ldr r5, =0
	cmp r4, r5
	moveq r6, #1
	movne r6, #0
	beq .L61
	b .L65
.L61:
	ldr r7, =0
	mov r0, r7
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L62:
	ldr r8, [fp, #-16]
	ldr r4, =1
	cmp r8, r4
	moveq r5, #1
	movne r5, #0
	beq .L67
	b .L71
.L63:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L64:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L65:
	b .L62
.L66:
	b .L62
.L67:
	ldr r6, [fp, #-20]
	ldr r4, =0
	add r5, r4, #0
	mov r4, #4
	mul r5, r5, r4
	add r4, r6, r5
	ldr r5, [r4]
	mov r0, r5
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L68:
	ldr r6, [fp, #-20]
	ldr r4, =0
	add r5, r4, #0
	mov r4, #4
	mul r5, r5, r4
	add r4, r6, r5
	ldr r5, [r4]
	str r5, [fp, #-12]
	ldr r6, [fp, #-12]
	str r6, [fp, #-8]
	ldr r7, =1
	str r7, [fp, #-4]
	b .L84
.L69:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L70:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L71:
	b .L68
.L72:
	b .L68
.L84:
	ldr r8, [fp, #-4]
	ldr r4, [fp, #-16]
	cmp r8, r4
	movlt r5, #1
	movge r5, #0
	blt .L85
	b .L89
.L85:
	ldr r6, [fp, #-12]
	ldr r4, =0
	cmp r6, r4
	movlt r5, #1
	movge r5, #0
	blt .L90
	b .L94
.L86:
	ldr r7, [fp, #-8]
	mov r0, r7
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L87:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L88:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L89:
	b .L86
.L90:
	ldr r8, =0
	str r8, [fp, #-12]
	b .L91
.L91:
	ldr r9, [fp, #-12]
	ldr r4, [fp, #-20]
	ldr r5, [fp, #-4]
	ldr r6, =0
	add r7, r6, r5
	mov r5, #4
	mul r6, r7, r5
	add r5, r4, r6
	ldr r4, [r5]
	add r5, r9, r4
	str r5, [fp, #-12]
	ldr r6, [fp, #-8]
	ldr r4, [fp, #-12]
	cmp r6, r4
	movlt r5, #1
	movge r5, #0
	blt .L99
	b .L103
.L92:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L93:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L94:
	b .L91
.L99:
	ldr r7, [fp, #-12]
	str r7, [fp, #-8]
	b .L100
.L100:
	ldr r8, [fp, #-4]
	add r4, r8, #1
	str r4, [fp, #-4]
	b .L84
	b .F0
.LTORG
.F0:
.L101:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L102:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L103:
	b .L100
.L104:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, fp, lr}
	mov fp, sp
	sub sp, sp, #44
.L105:
	ldr r4, =0
	sub r5, r4, #4
	ldr r4, =0
	add r6, r4, #0
	mov r4, #4
	mul r4, r6, r4
	mov r6, #-40
	add r6, r6, r4
	add r4, fp, r6
	str r5, [r4]
	ldr r7, =0
	add r4, r7, #1
	mov r5, #4
	mul r6, r4, r5
	mov r4, #-40
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =3
	str r4, [r5]
	ldr r6, =0
	add r4, r6, #2
	mov r5, #4
	mul r6, r4, r5
	mov r4, #-40
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =9
	str r4, [r5]
	ldr r6, =0
	sub r4, r6, #2
	ldr r5, =0
	add r6, r5, #3
	mov r5, #4
	mul r5, r6, r5
	mov r6, #-40
	add r5, r6, r5
	add r6, fp, r5
	str r4, [r6]
	ldr r7, =0
	add r4, r7, #4
	mov r5, #4
	mul r6, r4, r5
	mov r4, #-40
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =0
	str r4, [r5]
	ldr r6, =0
	add r4, r6, #5
	mov r5, #4
	mul r4, r4, r5
	mov r6, #-40
	add r5, r6, r4
	add r4, fp, r5
	ldr r5, =1
	str r5, [r4]
	ldr r6, =0
	sub r4, r6, #6
	ldr r5, =0
	add r6, r5, #6
	mov r5, #4
	mul r5, r6, r5
	mov r6, #-40
	add r6, r6, r5
	add r5, fp, r6
	str r4, [r5]
	ldr r7, =0
	add r4, r7, #7
	mov r5, #4
	mul r6, r4, r5
	mov r4, #-40
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =5
	str r4, [r5]
	ldr r6, =0
	add r4, r6, #8
	mov r5, #4
	mul r6, r4, r5
	mov r4, #-40
	add r5, r4, r6
	add r4, fp, r5
	ldr r5, =7
	str r5, [r4]
	ldr r6, =0
	add r4, r6, #9
	mov r5, #4
	mul r6, r4, r5
	mov r4, #-40
	add r5, r4, r6
	add r4, fp, r5
	ldr r5, =8
	str r5, [r4]
	ldr r6, =10
	str r6, [fp, #-44]
	mov r7, #0
	mov r4, #4
	mul r5, r7, r4
	mov r4, #-40
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, [fp, #-44]
	mov r0, r6
	mov r1, r4
	bl maxSubArray
	mov r5, r0
	str r5, [fp, #-44]
	ldr r7, [fp, #-44]
	mov r0, r7
	add sp, sp, #44
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L128:
	add sp, sp, #44
	pop {r4, r5, r6, r7, fp, lr}
	bx lr

