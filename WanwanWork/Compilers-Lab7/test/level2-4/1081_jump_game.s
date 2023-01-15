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
	ldr r4, [fp, #-52]
	ldr r5, =1
	cmp r4, r5
	moveq r6, #1
	movne r6, #0
	beq .L85
	b .L89
.L85:
	ldr r7, =1
	mov r0, r7
	add sp, sp, #56
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L86:
	ldr r8, [fp, #-56]
	ldr r4, =0
	add r5, r4, #0
	mov r4, #4
	mul r5, r5, r4
	add r4, r8, r5
	ldr r5, [r4]
	ldr r4, [fp, #-52]
	sub r6, r4, #2
	cmp r5, r6
	movgt r7, #1
	movle r7, #0
	bgt .L91
	b .L99
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
	ldr r8, =1
	mov r0, r8
	add sp, sp, #56
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L92:
	ldr r9, =0
	str r9, [fp, #-8]
	b .L103
.L97:
	add sp, sp, #56
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L98:
	add sp, sp, #56
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L99:
	b .L92
.L100:
	b .L92
.L103:
	ldr r10, [fp, #-8]
	ldr r4, [fp, #-52]
	sub r5, r4, #1
	cmp r10, r5
	movlt r6, #1
	movge r6, #0
	blt .L104
	b .L108
.L104:
	ldr r7, [fp, #-8]
	ldr r4, =0
	add r5, r4, r7
	mov r4, #4
	mul r6, r5, r4
	mov r4, #-48
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =0
	str r4, [r5]
	ldr r6, [fp, #-8]
	add r4, r6, #1
	str r4, [fp, #-8]
	b .L103
.L105:
	ldr r5, [fp, #-52]
	sub r4, r5, #1
	ldr r5, =0
	add r6, r5, r4
	mov r4, #4
	mul r5, r6, r4
	mov r4, #-48
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, =1
	str r4, [r6]
	ldr r5, [fp, #-52]
	sub r4, r5, #2
	str r4, [fp, #-8]
	b .L113
.L106:
	add sp, sp, #56
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L107:
	add sp, sp, #56
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L108:
	b .L105
.L113:
	ldr r6, [fp, #-8]
	ldr r4, =0
	sub r5, r4, #1
	cmp r6, r5
	movgt r7, #1
	movle r7, #0
	bgt .L114
	b .L118
.L114:
	ldr r8, [fp, #-56]
	ldr r4, [fp, #-8]
	ldr r5, =0
	add r6, r5, r4
	mov r4, #4
	mul r5, r6, r4
	add r4, r8, r5
	ldr r5, [r4]
	ldr r4, [fp, #-52]
	sub r6, r4, #1
	ldr r4, [fp, #-8]
	sub r7, r6, r4
	cmp r5, r7
	movlt r8, #1
	movge r8, #0
	blt .L120
	b .L129
	b .F0
.LTORG
.F0:
.L115:
	ldr r9, =0
	add r4, r9, #0
	mov r5, #4
	mul r6, r4, r5
	mov r4, #-48
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, [r5]
	mov r0, r4
	add sp, sp, #56
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L116:
	add sp, sp, #56
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L117:
	add sp, sp, #56
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L118:
	b .L115
.L120:
	ldr r6, [fp, #-56]
	ldr r4, [fp, #-8]
	ldr r5, =0
	add r7, r5, r4
	mov r4, #4
	mul r5, r7, r4
	add r4, r6, r5
	ldr r5, [r4]
	str r5, [fp, #-4]
	b .L122
.L121:
	ldr r6, [fp, #-52]
	sub r4, r6, #1
	ldr r5, [fp, #-8]
	sub r6, r4, r5
	str r6, [fp, #-4]
	b .L122
.L122:
	b .L134
.L127:
	add sp, sp, #56
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L128:
	add sp, sp, #56
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L129:
	b .L121
.L134:
	ldr r7, [fp, #-4]
	ldr r4, =0
	sub r5, r4, #1
	cmp r7, r5
	movgt r6, #1
	movle r6, #0
	bgt .L135
	b .L139
.L135:
	ldr r8, [fp, #-8]
	ldr r4, [fp, #-4]
	add r5, r8, r4
	ldr r4, =0
	add r6, r4, r5
	mov r4, #4
	mul r5, r6, r4
	mov r4, #-48
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, [r6]
	ldr r5, =0
	cmp r4, r5
	movne r6, #1
	moveq r6, #0
	bne .L140
	b .L147
.L136:
	ldr r7, [fp, #-8]
	sub r4, r7, #1
	str r4, [fp, #-8]
	b .L113
.L137:
	add sp, sp, #56
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L138:
	add sp, sp, #56
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L139:
	b .L136
.L140:
	ldr r5, [fp, #-8]
	ldr r4, =0
	add r6, r4, r5
	mov r4, #4
	mul r5, r6, r4
	mov r4, #-48
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, =1
	str r4, [r6]
	b .L141
.L141:
	ldr r5, [fp, #-4]
	sub r4, r5, #1
	str r4, [fp, #-4]
	b .L134
.L145:
	add sp, sp, #56
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L146:
	add sp, sp, #56
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L147:
	b .L141
.L150:
	add sp, sp, #56
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, fp, lr}
	mov fp, sp
	sub sp, sp, #44
.L154:
	ldr r4, =0
	add r5, r4, #0
	mov r4, #4
	mul r4, r5, r4
	mov r6, #-40
	add r4, r6, r4
	add r5, fp, r4
	ldr r4, =3
	str r4, [r5]
	ldr r6, =0
	add r4, r6, #1
	mov r5, #4
	mul r4, r4, r5
	mov r6, #-40
	add r4, r6, r4
	add r5, fp, r4
	ldr r4, =3
	str r4, [r5]
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
	bl canJump
	mov r5, r0
	str r5, [fp, #-44]
	ldr r7, [fp, #-44]
	mov r0, r7
	add sp, sp, #44
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L177:
	add sp, sp, #44
	pop {r4, r5, r6, r7, fp, lr}
	bx lr

