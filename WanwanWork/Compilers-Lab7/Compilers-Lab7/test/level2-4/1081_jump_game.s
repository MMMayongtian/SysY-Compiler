	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global canJump
	.type canJump , %function
canJump:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #56
.L82:
	str r0, [fp, #-56]
	str r1, [fp, #-52]
	ldr r10, [fp, #-52]
	cmp r10, #1
	beq .L85
	b .L89
.L85:
	mov r0, #1
	add sp, sp, #56
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L86:
	ldr r9, [fp, #-56]
	mov r4, #0
	mov r5, #4
	mul r5, r4, r5
	add r4, r9, r5
	ldr r5, [r4]
	ldr r4, [fp, #-52]
	sub r6, r4, #2
	cmp r5, r6
	movgt r7, #1
	movle r7, #0
	bgt .L91
	b .L97
.L87:
	add sp, sp, #56
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L88:
	add sp, sp, #56
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L89:
	b .L86
.L90:
	b .L86
.L91:
	mov r0, #1
	add sp, sp, #56
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L92:
	ldr r8, =0
	str r8, [fp, #-8]
	b .L101
.L95:
	add sp, sp, #56
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L96:
	add sp, sp, #56
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L97:
	b .L92
.L98:
	b .L92
.L101:
	ldr r9, [fp, #-8]
	ldr r4, [fp, #-52]
	sub r5, r4, #1
	cmp r9, r5
	movlt r6, #1
	movge r6, #0
	blt .L102
	b .L106
.L102:
	ldr r7, [fp, #-8]
	mov r4, #4
	mul r5, r7, r4
	mov r4, #-48
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, =0
	str r4, [r6]
	ldr r5, [fp, #-8]
	add r4, r5, #1
	str r4, [fp, #-8]
	b .L101
.L103:
	ldr r6, [fp, #-52]
	sub r4, r6, #1
	mov r5, #4
	mul r6, r4, r5
	mov r4, #-48
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =1
	str r4, [r5]
	ldr r6, [fp, #-52]
	sub r4, r6, #2
	str r4, [fp, #-8]
	b .L107
.L104:
	add sp, sp, #56
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L105:
	add sp, sp, #56
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L106:
	b .L103
.L107:
	ldr r5, [fp, #-8]
	ldr r4, =0
	sub r6, r4, #1
	cmp r5, r6
	movgt r7, #1
	movle r7, #0
	bgt .L108
	b .L112
.L108:
	ldr r8, [fp, #-56]
	ldr r4, [fp, #-8]
	mov r5, #4
	mul r5, r4, r5
	add r4, r8, r5
	ldr r5, [r4]
	ldr r4, [fp, #-52]
	sub r6, r4, #1
	ldr r4, [fp, #-8]
	sub r7, r6, r4
	cmp r5, r7
	movlt r8, #1
	movge r8, #0
	blt .L114
	b .L121
.L109:
	mov r9, #0
	mov r4, #4
	mul r5, r9, r4
	mov r4, #-48
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, [r6]
	mov r0, r4
	add sp, sp, #56
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L110:
	add sp, sp, #56
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L111:
	add sp, sp, #56
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L112:
	b .L109
.L114:
	ldr r5, [fp, #-56]
	ldr r4, [fp, #-8]
	mov r6, #4
	mul r6, r4, r6
	add r4, r5, r6
	ldr r5, [r4]
	str r5, [fp, #-4]
	b .L116
.L115:
	ldr r6, [fp, #-52]
	sub r4, r6, #1
	ldr r5, [fp, #-8]
	sub r6, r4, r5
	str r6, [fp, #-4]
	b .L116
.L116:
	b .L124
.L119:
	add sp, sp, #56
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L120:
	add sp, sp, #56
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L121:
	b .L115
.L124:
	ldr r7, [fp, #-4]
	ldr r4, =0
	sub r5, r4, #1
	cmp r7, r5
	movgt r6, #1
	movle r6, #0
	bgt .L125
	b .L129
.L125:
	ldr r8, [fp, #-8]
	ldr r4, [fp, #-4]
	add r5, r8, r4
	mov r4, #4
	mul r6, r5, r4
	mov r4, #-48
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, [r5]
	cmp r4, #0
	bne .L130
	b .L135
.L126:
	ldr r6, [fp, #-8]
	sub r4, r6, #1
	str r4, [fp, #-8]
	b .L107
.L127:
	add sp, sp, #56
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L128:
	add sp, sp, #56
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L129:
	b .L126
.L130:
	ldr r5, [fp, #-8]
	mov r4, #4
	mul r6, r5, r4
	mov r4, #-48
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =1
	str r4, [r5]
	b .L131
.L131:
	ldr r6, [fp, #-4]
	sub r4, r6, #1
	str r4, [fp, #-4]
	b .L124
.L133:
	add sp, sp, #56
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L134:
	add sp, sp, #56
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L135:
	b .L131
.L136:
	add sp, sp, #56
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #44
.L138:
	mov r10, #0
	mov r4, #4
	mul r4, r10, r4
	mov r5, #-40
	add r6, r5, r4
	add r4, fp, r6
	ldr r5, =3
	str r5, [r4]
	mov r6, #1
	mov r4, #4
	mul r5, r6, r4
	mov r4, #-40
	add r6, r4, r5
	add r4, fp, r6
	ldr r5, =3
	str r5, [r4]
	mov r6, #2
	mov r4, #4
	mul r4, r6, r4
	mov r5, #-40
	add r4, r5, r4
	add r6, fp, r4
	ldr r4, =9
	str r4, [r6]
	mov r5, #3
	mov r4, #4
	mul r6, r5, r4
	mov r4, #-40
	add r5, r4, r6
	add r4, fp, r5
	ldr r5, =0
	str r5, [r4]
	mov r6, #4
	mov r4, #4
	mul r5, r6, r4
	mov r4, #-40
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, =0
	str r4, [r6]
	mov r5, #5
	mov r4, #4
	mul r6, r5, r4
	mov r4, #-40
	add r5, r4, r6
	add r4, fp, r5
	ldr r5, =1
	str r5, [r4]
	mov r6, #6
	mov r4, #4
	mul r5, r6, r4
	mov r4, #-40
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, =1
	str r4, [r6]
	mov r5, #7
	mov r4, #4
	mul r6, r5, r4
	mov r4, #-40
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =5
	str r4, [r5]
	mov r6, #8
	mov r4, #4
	mul r4, r6, r4
	mov r5, #-40
	add r4, r5, r4
	add r6, fp, r4
	ldr r4, =7
	str r4, [r6]
	mov r5, #9
	mov r4, #4
	mul r6, r5, r4
	mov r4, #-40
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =8
	str r4, [r5]
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
	bl canJump
	mov r5, r0
	str r5, [fp, #-44]
	ldr r7, [fp, #-44]
	mov r0, r7
	add sp, sp, #44
	pop {r4, r5, r6, r7, r10, fp, lr}
	bx lr
.L141:
	add sp, sp, #44
	pop {r4, r5, r6, r7, r10, fp, lr}
	bx lr

