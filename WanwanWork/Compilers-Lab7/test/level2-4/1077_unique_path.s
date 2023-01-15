	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global uniquePaths
	.type uniquePaths , %function
uniquePaths:
	push {r4, r5, r6, r7, r8, r9, fp, lr}
	mov fp, sp
	sub sp, sp, #52
.L83:
	str r0, [fp, #-52]
	str r1, [fp, #-48]
	ldr r4, [fp, #-52]
	ldr r5, =1
	cmp r4, r5
	moveq r6, #1
	movne r6, #0
	beq .L86
	b .L91
.L86:
	ldr r7, =1
	mov r0, r7
	add sp, sp, #52
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L87:
	ldr r8, =0
	str r8, [fp, #-8]
	b .L99
.L88:
	ldr r9, [fp, #-48]
	ldr r4, =1
	cmp r9, r4
	moveq r5, #1
	movne r5, #0
	beq .L86
	b .L94
.L89:
	add sp, sp, #52
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L90:
	add sp, sp, #52
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L91:
	b .L88
.L92:
	add sp, sp, #52
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L93:
	add sp, sp, #52
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L94:
	b .L87
.L95:
	b .L87
.L99:
	ldr r6, [fp, #-8]
	ldr r4, [fp, #-52]
	cmp r6, r4
	movlt r5, #1
	movge r5, #0
	blt .L100
	b .L104
.L100:
	ldr r7, [fp, #-8]
	ldr r4, =3
	mul r5, r7, r4
	ldr r4, [fp, #-48]
	add r6, r5, r4
	sub r4, r6, #1
	ldr r5, =0
	add r6, r5, r4
	mov r4, #4
	mul r5, r6, r4
	mov r4, #-44
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, =1
	str r4, [r6]
	ldr r5, [fp, #-8]
	add r4, r5, #1
	str r4, [fp, #-8]
	b .L99
.L101:
	ldr r6, =0
	str r6, [fp, #-8]
	b .L107
.L102:
	add sp, sp, #52
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L103:
	add sp, sp, #52
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L104:
	b .L101
.L107:
	ldr r7, [fp, #-8]
	ldr r4, [fp, #-48]
	cmp r7, r4
	movlt r5, #1
	movge r5, #0
	blt .L108
	b .L112
.L108:
	ldr r6, [fp, #-52]
	sub r4, r6, #1
	ldr r5, =3
	mul r6, r4, r5
	ldr r4, [fp, #-8]
	add r5, r6, r4
	ldr r4, =0
	add r6, r4, r5
	mov r4, #4
	mul r5, r6, r4
	mov r4, #-44
	add r6, r4, r5
	add r4, fp, r6
	ldr r5, =1
	str r5, [r4]
	ldr r6, [fp, #-8]
	add r4, r6, #1
	str r4, [fp, #-8]
	b .L107
.L109:
	ldr r5, [fp, #-52]
	sub r4, r5, #2
	str r4, [fp, #-8]
	b .L115
.L110:
	add sp, sp, #52
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L111:
	add sp, sp, #52
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L112:
	b .L109
.L115:
	ldr r6, [fp, #-8]
	ldr r4, =0
	sub r5, r4, #1
	cmp r6, r5
	movgt r7, #1
	movle r7, #0
	bgt .L116
	b .L120
.L116:
	ldr r8, [fp, #-48]
	sub r4, r8, #2
	str r4, [fp, #-4]
	b .L121
	b .F0
.LTORG
.F0:
.L117:
	ldr r5, =0
	add r4, r5, #0
	mov r5, #4
	mul r6, r4, r5
	mov r4, #-44
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, [r5]
	mov r0, r4
	add sp, sp, #52
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L118:
	add sp, sp, #52
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L119:
	add sp, sp, #52
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L120:
	b .L117
.L121:
	ldr r6, [fp, #-4]
	ldr r4, =0
	sub r5, r4, #1
	cmp r6, r5
	movgt r7, #1
	movle r7, #0
	bgt .L122
	b .L126
.L122:
	ldr r8, [fp, #-8]
	add r4, r8, #1
	ldr r5, =3
	mul r6, r4, r5
	ldr r4, [fp, #-4]
	add r5, r6, r4
	ldr r4, =0
	add r6, r4, r5
	mov r4, #4
	mul r5, r6, r4
	mov r4, #-44
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, [r6]
	ldr r5, [fp, #-8]
	ldr r6, =3
	mul r7, r5, r6
	ldr r5, [fp, #-4]
	add r6, r7, r5
	add r5, r6, #1
	ldr r6, =0
	add r7, r6, r5
	mov r5, #4
	mul r5, r7, r5
	mov r6, #-44
	add r6, r6, r5
	add r5, fp, r6
	ldr r6, [r5]
	add r5, r4, r6
	ldr r4, [fp, #-8]
	ldr r6, =3
	mul r7, r4, r6
	ldr r4, [fp, #-4]
	add r6, r7, r4
	ldr r4, =0
	add r7, r4, r6
	mov r4, #4
	mul r4, r7, r4
	mov r6, #-44
	add r6, r6, r4
	add r4, fp, r6
	str r5, [r4]
	ldr r7, [fp, #-4]
	sub r4, r7, #1
	str r4, [fp, #-4]
	b .L121
.L123:
	ldr r5, [fp, #-8]
	sub r4, r5, #1
	str r4, [fp, #-8]
	b .L115
.L124:
	add sp, sp, #52
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L125:
	add sp, sp, #52
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L126:
	b .L123
.L135:
	add sp, sp, #52
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L139:
	ldr r4, =3
	str r4, [fp, #-4]
	ldr r5, [fp, #-4]
	ldr r4, [fp, #-4]
	mov r0, r5
	mov r1, r4
	bl uniquePaths
	mov r6, r0
	str r6, [fp, #-8]
	ldr r7, [fp, #-8]
	mov r0, r7
	add sp, sp, #8
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L142:
	add sp, sp, #8
	pop {r4, r5, r6, r7, fp, lr}
	bx lr

