	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global maxArea
	.type maxArea , %function
maxArea:
	push {r4, r5, r6, r7, r8, r9, fp, lr}
	mov fp, sp
	sub sp, sp, #24
.L71:
	str r0, [fp, #-24]
	str r1, [fp, #-20]
	ldr r4, =0
	str r4, [fp, #-16]
	ldr r5, [fp, #-20]
	sub r4, r5, #1
	str r4, [fp, #-12]
	ldr r6, =0
	sub r4, r6, #1
	str r4, [fp, #-8]
	b .L77
.L77:
	ldr r5, [fp, #-16]
	ldr r4, [fp, #-12]
	cmp r5, r4
	movlt r6, #1
	movge r6, #0
	blt .L78
	b .L82
.L78:
	ldr r7, [fp, #-24]
	ldr r4, [fp, #-16]
	ldr r5, =0
	add r6, r5, r4
	mov r4, #4
	mul r5, r6, r4
	add r4, r7, r5
	ldr r5, [r4]
	ldr r4, [fp, #-24]
	ldr r6, [fp, #-12]
	ldr r7, =0
	add r8, r7, r6
	mov r6, #4
	mul r7, r8, r6
	add r6, r4, r7
	ldr r4, [r6]
	cmp r5, r4
	movlt r7, #1
	movge r7, #0
	blt .L84
	b .L97
.L79:
	ldr r8, [fp, #-8]
	mov r0, r8
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L80:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L81:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L82:
	b .L79
.L84:
	ldr r9, [fp, #-12]
	ldr r4, [fp, #-16]
	sub r5, r9, r4
	ldr r4, [fp, #-24]
	ldr r6, [fp, #-16]
	ldr r7, =0
	add r8, r7, r6
	mov r6, #4
	mul r7, r8, r6
	add r6, r4, r7
	ldr r4, [r6]
	mul r6, r5, r4
	str r6, [fp, #-4]
	b .L86
.L85:
	ldr r7, [fp, #-12]
	ldr r4, [fp, #-16]
	sub r5, r7, r4
	ldr r4, [fp, #-24]
	ldr r6, [fp, #-12]
	ldr r7, =0
	add r8, r7, r6
	mov r6, #4
	mul r7, r8, r6
	add r6, r4, r7
	ldr r4, [r6]
	mul r6, r5, r4
	str r6, [fp, #-4]
	b .L86
.L86:
	ldr r7, [fp, #-4]
	ldr r4, [fp, #-8]
	cmp r7, r4
	movgt r5, #1
	movle r5, #0
	bgt .L106
	b .L110
.L95:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L96:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L97:
	b .L85
.L106:
	ldr r6, [fp, #-4]
	str r6, [fp, #-8]
	b .L107
.L107:
	ldr r8, [fp, #-24]
	ldr r4, [fp, #-16]
	ldr r5, =0
	add r6, r5, r4
	mov r4, #4
	mul r4, r6, r4
	add r5, r8, r4
	ldr r4, [r5]
	ldr r5, [fp, #-24]
	ldr r6, [fp, #-12]
	ldr r7, =0
	add r8, r7, r6
	mov r6, #4
	mul r7, r8, r6
	add r6, r5, r7
	ldr r5, [r6]
	cmp r4, r5
	movgt r7, #1
	movle r7, #0
	bgt .L111
	b .L124
.L108:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L109:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
	b .F0
.LTORG
.F0:
.L110:
	b .L107
.L111:
	ldr r8, [fp, #-12]
	sub r4, r8, #1
	str r4, [fp, #-12]
	b .L113
.L112:
	ldr r5, [fp, #-16]
	add r4, r5, #1
	str r4, [fp, #-16]
	b .L113
.L113:
	b .L77
.L122:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L123:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L124:
	b .L112
.L125:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, fp, lr}
	mov fp, sp
	sub sp, sp, #44
.L126:
	ldr r4, =0
	add r5, r4, #0
	mov r4, #4
	mul r4, r5, r4
	mov r6, #-40
	add r5, r6, r4
	add r4, fp, r5
	ldr r5, =3
	str r5, [r4]
	ldr r6, =0
	add r4, r6, #1
	mov r5, #4
	mul r6, r4, r5
	mov r4, #-40
	add r5, r4, r6
	add r4, fp, r5
	ldr r5, =3
	str r5, [r4]
	ldr r6, =0
	add r4, r6, #2
	mov r5, #4
	mul r6, r4, r5
	mov r4, #-40
	add r5, r4, r6
	add r4, fp, r5
	ldr r5, =9
	str r5, [r4]
	ldr r6, =0
	add r4, r6, #3
	mov r5, #4
	mul r6, r4, r5
	mov r4, #-40
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =0
	str r4, [r5]
	ldr r6, =0
	add r4, r6, #4
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
	add r4, r6, r4
	add r5, fp, r4
	ldr r4, =1
	str r4, [r5]
	ldr r6, =0
	add r4, r6, #6
	mov r5, #4
	mul r6, r4, r5
	mov r4, #-40
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =1
	str r4, [r5]
	ldr r6, =0
	add r4, r6, #7
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
	bl maxArea
	mov r5, r0
	str r5, [fp, #-44]
	ldr r7, [fp, #-44]
	mov r0, r7
	add sp, sp, #44
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L149:
	add sp, sp, #44
	pop {r4, r5, r6, r7, fp, lr}
	bx lr

