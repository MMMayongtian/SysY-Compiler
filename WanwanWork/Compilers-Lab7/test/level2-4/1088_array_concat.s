	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global concat
	.type concat , %function
concat:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #20
.L82:
	str r0, [fp, #-20]
	str r1, [fp, #-16]
	str r2, [fp, #-12]
	ldr r4, =0
	str r4, [fp, #-8]
	b .L87
.L87:
	ldr r5, [fp, #-8]
	ldr r4, =3
	cmp r5, r4
	movlt r6, #1
	movge r6, #0
	blt .L88
	b .L92
.L88:
	ldr r7, [fp, #-20]
	ldr r4, [fp, #-8]
	ldr r5, =0
	add r6, r5, r4
	mov r4, #4
	mul r5, r6, r4
	add r4, r7, r5
	ldr r5, [r4]
	ldr r4, [fp, #-12]
	ldr r6, [fp, #-8]
	ldr r7, =0
	add r8, r7, r6
	mov r6, #4
	mul r7, r8, r6
	add r6, r4, r7
	str r5, [r6]
	ldr r8, [fp, #-8]
	add r4, r8, #1
	str r4, [fp, #-8]
	b .L87
.L89:
	ldr r5, =0
	str r5, [fp, #-4]
	b .L101
.L90:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L91:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L92:
	b .L89
.L101:
	ldr r6, [fp, #-4]
	ldr r4, =3
	cmp r6, r4
	movlt r5, #1
	movge r5, #0
	blt .L102
	b .L106
.L102:
	ldr r7, [fp, #-16]
	ldr r4, [fp, #-4]
	ldr r5, =0
	add r6, r5, r4
	mov r4, #4
	mul r5, r6, r4
	add r4, r7, r5
	ldr r5, [r4]
	ldr r4, [fp, #-12]
	ldr r6, [fp, #-8]
	ldr r7, =0
	add r8, r7, r6
	mov r6, #4
	mul r7, r8, r6
	add r6, r4, r7
	str r5, [r6]
	ldr r8, [fp, #-8]
	add r4, r8, #1
	str r4, [fp, #-8]
	ldr r5, [fp, #-4]
	add r4, r5, #1
	str r4, [fp, #-4]
	b .L101
.L103:
	ldr r6, =0
	mov r0, r6
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L104:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L105:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L106:
	b .L103
.L114:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, fp, lr}
	mov fp, sp
	sub sp, sp, #128
.L115:
	ldr r4, =0
	str r4, [fp, #-8]
	b .L126
.L126:
	ldr r5, [fp, #-8]
	ldr r4, =3
	cmp r5, r4
	movlt r6, #1
	movge r6, #0
	blt .L127
	b .L131
.L127:
	ldr r7, [fp, #-8]
	ldr r4, [fp, #-8]
	ldr r5, =0
	add r6, r5, r4
	mov r4, #4
	mul r4, r6, r4
	mov r5, #-128
	add r5, r5, r4
	add r4, fp, r5
	str r7, [r4]
	ldr r6, [fp, #-8]
	ldr r4, [fp, #-8]
	ldr r5, =0
	add r7, r5, r4
	mov r4, #4
	mul r4, r7, r4
	mov r5, #-116
	add r5, r5, r4
	add r4, fp, r5
	str r6, [r4]
	ldr r7, [fp, #-8]
	ldr r4, [fp, #-8]
	ldr r5, =0
	add r6, r5, r4
	mov r4, #4
	mul r4, r6, r4
	mov r5, #-104
	add r4, r5, r4
	add r5, fp, r4
	str r7, [r5]
	ldr r6, [fp, #-8]
	ldr r4, [fp, #-8]
	ldr r5, =0
	add r7, r5, r4
	mov r4, #4
	mul r4, r7, r4
	mov r5, #-92
	add r5, r5, r4
	add r4, fp, r5
	str r6, [r4]
	ldr r7, [fp, #-8]
	ldr r4, [fp, #-8]
	ldr r5, =0
	add r6, r5, r4
	mov r4, #4
	mul r4, r6, r4
	mov r5, #-80
	add r4, r5, r4
	add r5, fp, r4
	str r7, [r5]
	ldr r6, [fp, #-8]
	ldr r4, [fp, #-8]
	ldr r5, =0
	add r7, r5, r4
	mov r4, #4
	mul r4, r7, r4
	mov r5, #-68
	add r5, r5, r4
	add r4, fp, r5
	str r6, [r4]
	ldr r7, [fp, #-8]
	add r4, r7, #1
	str r4, [fp, #-8]
	b .L126
.L128:
	mov r5, #0
	mov r4, #4
	mul r6, r5, r4
	mov r4, #-128
	add r5, r4, r6
	add r4, fp, r5
	mov r5, #0
	mov r6, #4
	mul r5, r5, r6
	mov r6, #-92
	add r6, r6, r5
	add r5, fp, r6
	mov r6, #0
	mov r7, #4
	mul r6, r6, r7
	mov r7, #-56
	add r7, r7, r6
	add r6, fp, r7
	mov r0, r4
	mov r1, r5
	mov r2, r6
	bl concat
	mov r8, r0
	str r8, [fp, #-8]
	b .L145
.L129:
	add sp, sp, #128
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L130:
	add sp, sp, #128
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L131:
	b .L128
.L145:
	ldr r9, [fp, #-8]
	ldr r4, =6
	cmp r9, r4
	movlt r5, #1
	movge r5, #0
	blt .L146
	b .L150
.L146:
	ldr r6, [fp, #-8]
	ldr r4, =0
	add r5, r4, r6
	mov r4, #4
	mul r6, r5, r4
	mov r4, #-56
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, [r5]
	str r4, [fp, #-4]
	ldr r6, [fp, #-4]
	mov r0, r6
	bl putint
	ldr r7, [fp, #-8]
	add r4, r7, #1
	str r4, [fp, #-8]
	b .L145
	b .F0
.LTORG
.F0:
.L147:
	ldr r5, =10
	str r5, [fp, #-4]
	ldr r6, [fp, #-4]
	mov r0, r6
	bl putch
	ldr r8, =0
	mov r0, r8
	add sp, sp, #128
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L148:
	add sp, sp, #128
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L149:
	add sp, sp, #128
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L150:
	b .L147
.L154:
	add sp, sp, #128
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr

