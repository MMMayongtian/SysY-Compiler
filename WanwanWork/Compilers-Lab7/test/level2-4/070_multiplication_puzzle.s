	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global a
	.align 4
	.size a, 24
a:
	.word 10
	.word 1
	.word 50
	.word 50
	.word 20
	.word 5
	.global dp
	.align 4
	.size dp, 400
dp:
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.text
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #24
.L75:
	ldr r4, =6
	str r4, [fp, #-24]
	ldr r5, =3
	str r5, [fp, #-20]
	b .L82
.L82:
	ldr r6, [fp, #-20]
	ldr r4, [fp, #-24]
	cmp r6, r4
	movle r5, #1
	movgt r5, #0
	ble .L83
	b .L87
.L83:
	ldr r7, =0
	str r7, [fp, #-16]
	b .L88
.L84:
	ldr r8, =0
	add r4, r8, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, v73
	mov r5, #4
	mul r4, r4, r5
	ldr r5, addr_dp0
	add r6, r5, r4
	ldr r4, [r6]
	mov r0, r4
	bl putint
	ldr r5, =0
	mov r0, r5
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L85:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L86:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L87:
	b .L84
.L88:
	ldr r7, [fp, #-16]
	ldr r4, [fp, #-24]
	ldr r5, [fp, #-20]
	sub r6, r4, r5
	add r4, r6, #1
	cmp r7, r4
	movlt r5, #1
	movge r5, #0
	blt .L89
	b .L93
.L89:
	ldr r8, [fp, #-16]
	ldr r4, [fp, #-20]
	add r5, r8, r4
	sub r4, r5, #1
	str r4, [fp, #-8]
	ldr r6, [fp, #-16]
	add r4, r6, #1
	str r4, [fp, #-12]
	b .L94
.L90:
	ldr r5, [fp, #-20]
	add r4, r5, #1
	str r4, [fp, #-20]
	b .L82
.L91:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L92:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L93:
	b .L90
.L94:
	ldr r6, [fp, #-12]
	ldr r4, [fp, #-8]
	cmp r6, r4
	movlt r5, #1
	movge r5, #0
	blt .L95
	b .L99
.L95:
	ldr r7, [fp, #-16]
	ldr r4, =0
	add r5, r4, r7
	add r4, r5, r7
	add r5, r4, r7
	add r4, r5, r7
	add r5, r4, r7
	add r4, r5, r7
	add r5, r4, r7
	add r4, r5, r7
	add r5, r4, r7
	add r4, r5, r7
	ldr r5, [fp, #-16]
	add r5, r4, v33
	mov r4, #4
	mul r4, r5, r4
	ldr r6, addr_dp0
	add r5, r6, r4
	ldr r4, [r5]
	ldr r5, [fp, #-12]
	ldr r6, =0
	add r7, r6, r5
	add r6, r7, r5
	add r7, r6, r5
	add r6, r7, r5
	add r7, r6, r5
	add r6, r7, r5
	add r7, r6, r5
	add r6, r7, r5
	add r7, r6, r5
	add r6, r7, r5
	ldr r5, [fp, #-12]
	add r5, r6, v36
	mov r6, #4
	mul r6, r5, r6
	ldr r7, addr_dp0
	add r5, r7, r6
	ldr r6, [r5]
	add r5, r4, r6
	ldr r4, [fp, #-16]
	ldr r6, =0
	add r7, r6, r4
	mov r4, #4
	mul r6, r7, r4
	ldr r7, addr_a0
	add r4, r7, r6
	ldr r6, [r4]
	ldr r4, [fp, #-12]
	ldr r7, =0
	add r8, r7, r4
	mov r4, #4
	mul r8, r8, r4
	ldr r7, addr_a0
	add r4, r7, r8
	ldr r7, [r4]
	mul r4, r6, r7
	ldr r6, [fp, #-8]
	ldr r7, =0
	add r8, r7, r6
	mov r6, #4
	mul r7, r8, r6
	ldr r6, addr_a0
	add r8, r6, r7
	ldr r6, [r8]
	mul r7, r4, r6
	add r4, r5, r7
	str r4, [fp, #-4]
	ldr r6, [fp, #-16]
	ldr r4, =0
	add r5, r4, r6
	add r4, r5, r6
	add r5, r4, r6
	add r4, r5, r6
	add r5, r4, r6
	add r4, r5, r6
	add r5, r4, r6
	add r4, r5, r6
	add r5, r4, r6
	add r4, r5, r6
	ldr r5, [fp, #-16]
	add r5, r4, v49
	mov r4, #4
	mul r4, r5, r4
	ldr r5, addr_dp0
	add r6, r5, r4
	ldr r4, [r6]
	ldr r5, =0
	cmp r4, r5
	movne r6, #1
	moveq r6, #0
	moveq r7, #1
	movne r7, #0
	ldr r4, =0
	cmp r7, r4
	movne r5, #1
	moveq r5, #0
	bne .L115
	b .L123
	b .F0
.LTORG
addr_a0:
	.word a
addr_dp0:
	.word dp
.F0:
.L96:
	ldr r6, [fp, #-16]
	add r4, r6, #1
	str r4, [fp, #-16]
	b .L88
.L97:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L98:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L99:
	b .L96
.L115:
	ldr r5, [fp, #-4]
	ldr r4, [fp, #-16]
	ldr r6, =0
	add r7, r6, r4
	add r6, r7, r4
	add r7, r6, r4
	add r6, r7, r4
	add r7, r6, r4
	add r6, r7, r4
	add r7, r6, r4
	add r6, r7, r4
	add r7, r6, r4
	add r6, r7, r4
	ldr r4, [fp, #-16]
	add r4, r6, v60
	mov r6, #4
	mul r6, r4, r6
	ldr r7, addr_dp1
	add r4, r7, r6
	str r5, [r4]
	b .L116
.L116:
	ldr r8, [fp, #-12]
	add r4, r8, #1
	str r4, [fp, #-12]
	b .L94
.L117:
	ldr r5, [fp, #-4]
	ldr r4, [fp, #-16]
	ldr r6, =0
	add r7, r6, r4
	add r6, r7, r4
	add r7, r6, r4
	add r6, r7, r4
	add r7, r6, r4
	add r6, r7, r4
	add r7, r6, r4
	add r6, r7, r4
	add r7, r6, r4
	add r6, r7, r4
	ldr r4, [fp, #-16]
	add r4, r6, v54
	mov r6, #4
	mul r6, r4, r6
	ldr r7, addr_dp1
	add r4, r7, r6
	ldr r6, [r4]
	cmp r5, r6
	movlt r7, #1
	movge r7, #0
	blt .L115
	b .L130
.L122:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L123:
	b .L117
.L124:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L128:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L129:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L130:
	b .L116
.L136:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr

addr_a1:
	.word a
addr_dp1:
	.word dp
