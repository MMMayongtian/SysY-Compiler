	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global concat
	.type concat , %function
concat:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #20
.L82:
	str r0, [fp, #-20]
	str r1, [fp, #-16]
	str r2, [fp, #-12]
	ldr r10, =0
	str r10, [fp, #-8]
	b .L87
.L87:
	ldr r9, [fp, #-8]
	cmp r9, #3
	movlt r8, #1
	movge r8, #0
	blt .L88
	b .L92
.L88:
	ldr r7, [fp, #-20]
	ldr r4, [fp, #-8]
	mov r5, #4
	mul r5, r4, r5
	add r4, r7, r5
	ldr r5, [r4]
	ldr r4, [fp, #-12]
	ldr r6, [fp, #-8]
	mov r7, #4
	mul r7, r6, r7
	add r6, r4, r7
	str r5, [r6]
	ldr r8, [fp, #-8]
	add r4, r8, #1
	str r4, [fp, #-8]
	b .L87
.L89:
	ldr r5, =0
	str r5, [fp, #-4]
	b .L97
.L90:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L91:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L92:
	b .L89
.L97:
	ldr r6, [fp, #-4]
	cmp r6, #3
	movlt r7, #1
	movge r7, #0
	blt .L98
	b .L102
.L98:
	ldr r9, [fp, #-16]
	ldr r4, [fp, #-4]
	mov r5, #4
	mul r5, r4, r5
	add r4, r9, r5
	ldr r5, [r4]
	ldr r4, [fp, #-12]
	ldr r6, [fp, #-8]
	mov r7, #4
	mul r7, r6, r7
	add r6, r4, r7
	str r5, [r6]
	ldr r8, [fp, #-8]
	add r4, r8, #1
	str r4, [fp, #-8]
	ldr r5, [fp, #-4]
	add r4, r5, #1
	str r4, [fp, #-4]
	b .L97
.L99:
	mov r0, #0
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L100:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L101:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L102:
	b .L99
.L106:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #128
.L107:
	ldr r10, =0
	str r10, [fp, #-8]
	b .L118
.L118:
	ldr r9, [fp, #-8]
	cmp r9, #3
	movlt r8, #1
	movge r8, #0
	blt .L119
	b .L123
.L119:
	ldr r7, [fp, #-8]
	ldr r4, [fp, #-8]
	mov r5, #4
	mul r4, r4, r5
	mov r5, #-128
	add r5, r5, r4
	add r4, fp, r5
	str r7, [r4]
	ldr r6, [fp, #-8]
	ldr r4, [fp, #-8]
	mov r5, #4
	mul r4, r4, r5
	mov r5, #-116
	add r5, r5, r4
	add r4, fp, r5
	str r6, [r4]
	ldr r7, [fp, #-8]
	ldr r4, [fp, #-8]
	mov r5, #4
	mul r5, r4, r5
	mov r4, #-104
	add r4, r4, r5
	add r5, fp, r4
	str r7, [r5]
	ldr r6, [fp, #-8]
	ldr r4, [fp, #-8]
	mov r5, #4
	mul r4, r4, r5
	mov r5, #-92
	add r5, r5, r4
	add r4, fp, r5
	str r6, [r4]
	ldr r7, [fp, #-8]
	ldr r4, [fp, #-8]
	mov r5, #4
	mul r4, r4, r5
	mov r5, #-80
	add r5, r5, r4
	add r4, fp, r5
	str r7, [r4]
	ldr r6, [fp, #-8]
	ldr r4, [fp, #-8]
	mov r5, #4
	mul r5, r4, r5
	mov r4, #-68
	add r5, r4, r5
	add r4, fp, r5
	str r6, [r4]
	ldr r7, [fp, #-8]
	add r4, r7, #1
	str r4, [fp, #-8]
	b .L118
.L120:
	mov r5, #0
	mov r4, #4
	mul r6, r5, r4
	mov r4, #-128
	add r4, r4, r6
	add r5, fp, r4
	mov r4, #0
	mov r6, #4
	mul r4, r4, r6
	mov r6, #-92
	add r6, r6, r4
	add r4, fp, r6
	mov r6, #0
	mov r7, #4
	mul r7, r6, r7
	mov r6, #-56
	add r6, r6, r7
	add r7, fp, r6
	mov r0, r5
	mov r1, r4
	mov r2, r7
	bl concat
	mov r8, r0
	str r8, [fp, #-8]
	b .L125
.L121:
	add sp, sp, #128
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L122:
	add sp, sp, #128
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L123:
	b .L120
.L125:
	ldr r9, [fp, #-8]
	cmp r9, #6
	movlt r10, #1
	movge r10, #0
	blt .L126
	b .L130
.L126:
	ldr r6, [fp, #-8]
	mov r4, #4
	mul r5, r6, r4
	mov r4, #-56
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, [r6]
	str r4, [fp, #-4]
	ldr r5, [fp, #-4]
	mov r0, r5
	bl putint
	ldr r7, [fp, #-8]
	add r4, r7, #1
	str r4, [fp, #-8]
	b .L125
.L127:
	ldr r5, =10
	str r5, [fp, #-4]
	ldr r6, [fp, #-4]
	mov r0, r6
	bl putch
	mov r0, #0
	add sp, sp, #128
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L128:
	add sp, sp, #128
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L129:
	add sp, sp, #128
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L130:
	b .L127
.L132:
	add sp, sp, #128
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

