	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global N
	.align 4
	.size N, 4
N:
	.word 0
	.text
	.global insert
	.type insert , %function
insert:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L68:
	str r0, [fp, #-16]
	str r1, [fp, #-12]
	ldr r4, =0
	str r4, [fp, #-8]
	b .L73
.L73:
	ldr r5, [fp, #-12]
	ldr r4, [fp, #-16]
	ldr r6, [fp, #-8]
	ldr r7, =0
	add r8, r7, r6
	mov r6, #4
	mul r7, r8, r6
	add r6, r4, r7
	ldr r4, [r6]
	cmp r5, r4
	movgt r7, #1
	movle r7, #0
	bgt .L76
	b .L83
.L74:
	ldr r8, [fp, #-8]
	add r4, r8, #1
	str r4, [fp, #-8]
	b .L73
.L75:
	ldr r5, addr_N0
	ldr r4, [r5]
	str r4, [fp, #-4]
	b .L87
.L76:
	ldr r6, [fp, #-8]
	ldr r4, addr_N0
	ldr r5, [r4]
	cmp r6, r5
	movlt r7, #1
	movge r7, #0
	blt .L74
	b .L86
.L81:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L82:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L83:
	b .L75
.L84:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L85:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L86:
	b .L75
.L87:
	ldr r8, [fp, #-4]
	ldr r4, [fp, #-8]
	cmp r8, r4
	movgt r5, #1
	movle r5, #0
	bgt .L88
	b .L92
.L88:
	ldr r6, [fp, #-16]
	ldr r4, [fp, #-4]
	sub r5, r4, #1
	ldr r4, =0
	add r7, r4, r5
	mov r4, #4
	mul r5, r7, r4
	add r4, r6, r5
	ldr r5, [r4]
	ldr r4, [fp, #-16]
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, r6
	mov r6, #4
	mul r6, r8, r6
	add r7, r4, r6
	str r5, [r7]
	ldr r8, [fp, #-12]
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-8]
	ldr r6, =0
	add r7, r6, r5
	mov r5, #4
	mul r6, r7, r5
	add r5, r4, r6
	str r8, [r5]
	ldr r7, [fp, #-4]
	sub r4, r7, #1
	str r4, [fp, #-4]
	b .L87
.L89:
	ldr r5, =0
	mov r0, r5
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L90:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L91:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L92:
	b .L89
.L103:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, fp, lr}
	mov fp, sp
	sub sp, sp, #52
.L104:
	ldr r4, =10
	ldr r5, addr_N0
	str r4, [r5]
	ldr r6, =0
	add r4, r6, #0
	mov r5, #4
	mul r6, r4, r5
	mov r4, #-52
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =1
	str r4, [r5]
	ldr r6, =0
	add r4, r6, #1
	mov r5, #4
	mul r6, r4, r5
	mov r4, #-52
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =3
	str r4, [r5]
	ldr r6, =0
	add r4, r6, #2
	mov r5, #4
	mul r6, r4, r5
	mov r4, #-52
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =4
	str r4, [r5]
	ldr r6, =0
	add r4, r6, #3
	mov r5, #4
	mul r6, r4, r5
	mov r4, #-52
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =7
	str r4, [r5]
	ldr r6, =0
	add r4, r6, #4
	mov r5, #4
	mul r6, r4, r5
	mov r4, #-52
	add r5, r4, r6
	add r4, fp, r5
	ldr r5, =8
	str r5, [r4]
	ldr r6, =0
	add r4, r6, #5
	mov r5, #4
	mul r6, r4, r5
	mov r4, #-52
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =11
	str r4, [r5]
	ldr r6, =0
	add r4, r6, #6
	mov r5, #4
	mul r4, r4, r5
	mov r6, #-52
	add r4, r6, r4
	add r5, fp, r4
	ldr r4, =13
	str r4, [r5]
	ldr r6, =0
	add r4, r6, #7
	mov r5, #4
	mul r6, r4, r5
	mov r4, #-52
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =18
	str r4, [r5]
	ldr r6, =0
	add r4, r6, #8
	mov r5, #4
	mul r6, r4, r5
	mov r4, #-52
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =56
	str r4, [r5]
	ldr r6, =0
	add r4, r6, #9
	mov r5, #4
	mul r6, r4, r5
	mov r4, #-52
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =78
	str r4, [r5]
	ldr r6, =0
	str r6, [fp, #-4]
	bl getint
	mov r7, r0
	str r7, [fp, #-8]
	mov r8, #0
	mov r4, #4
	mul r5, r8, r4
	mov r4, #-52
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, [fp, #-8]
	mov r0, r6
	mov r1, r4
	bl insert
	mov r5, r0
	str r5, [fp, #-8]
	b .L128
.L128:
	ldr r7, [fp, #-4]
	ldr r4, addr_N0
	ldr r5, [r4]
	cmp r7, r5
	movlt r6, #1
	movge r6, #0
	blt .L129
	b .L133
.L129:
	ldr r8, [fp, #-4]
	ldr r4, =0
	add r5, r4, r8
	mov r4, #4
	mul r6, r5, r4
	mov r4, #-52
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, [r5]
	str r4, [fp, #-8]
	ldr r6, [fp, #-8]
	mov r0, r6
	bl putint
	ldr r7, =10
	str r7, [fp, #-8]
	ldr r8, [fp, #-8]
	mov r0, r8
	bl putch
	ldr r9, [fp, #-4]
	add r4, r9, #1
	str r4, [fp, #-4]
	b .L128
	b .F0
.LTORG
addr_N0:
	.word N
.F0:
.L130:
	ldr r5, =0
	mov r0, r5
	add sp, sp, #52
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L131:
	add sp, sp, #52
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L132:
	add sp, sp, #52
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L133:
	b .L130
.L137:
	add sp, sp, #52
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr

addr_N1:
	.word N
