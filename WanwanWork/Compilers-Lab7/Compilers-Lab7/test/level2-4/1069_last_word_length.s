	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global lengthOfLastWord
	.type lengthOfLastWord , %function
lengthOfLastWord:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L68:
	str r0, [fp, #-16]
	str r1, [fp, #-12]
	ldr r10, [fp, #-12]
	cmp r10, #0
	beq .L71
	b .L75
.L71:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L72:
	ldr r9, [fp, #-12]
	sub r4, r9, #1
	str r4, [fp, #-8]
	b .L78
.L73:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L74:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L75:
	b .L72
.L76:
	b .L72
.L78:
	ldr r5, [fp, #-8]
	ldr r4, =0
	sub r6, r4, #1
	cmp r5, r6
	movgt r7, #1
	movle r7, #0
	bgt .L81
	b .L84
.L79:
	ldr r8, [fp, #-8]
	sub r4, r8, #1
	str r4, [fp, #-8]
	b .L78
.L80:
	ldr r5, [fp, #-8]
	ldr r4, =0
	sub r6, r4, #1
	cmp r5, r6
	beq .L90
	b .L94
.L81:
	ldr r7, [fp, #-16]
	ldr r4, [fp, #-8]
	mov r5, #4
	mul r5, r4, r5
	add r4, r7, r5
	ldr r5, [r4]
	cmp r5, #0
	beq .L79
	b .L89
.L82:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L83:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L84:
	b .L80
.L87:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L88:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L89:
	b .L80
.L90:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L91:
	ldr r6, [fp, #-8]
	str r6, [fp, #-4]
	b .L97
.L92:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L93:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L94:
	b .L91
.L95:
	b .L91
.L97:
	ldr r7, [fp, #-4]
	ldr r4, =0
	sub r5, r4, #1
	cmp r7, r5
	movgt r6, #1
	movle r6, #0
	bgt .L98
	b .L102
.L98:
	ldr r8, [fp, #-16]
	ldr r4, [fp, #-4]
	mov r5, #4
	mul r5, r4, r5
	add r4, r8, r5
	ldr r5, [r4]
	cmp r5, #0
	beq .L103
	b .L109
.L99:
	ldr r6, [fp, #-8]
	ldr r4, [fp, #-4]
	sub r5, r6, r4
	mov r0, r5
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L100:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L101:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L102:
	b .L99
.L103:
	ldr r7, [fp, #-12]
	ldr r4, [fp, #-4]
	sub r5, r7, r4
	sub r4, r5, #1
	ldr r5, [fp, #-12]
	sub r6, r5, #1
	ldr r5, [fp, #-8]
	sub r7, r6, r5
	sub r5, r4, r7
	mov r0, r5
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L104:
	ldr r6, [fp, #-4]
	sub r4, r6, #1
	str r4, [fp, #-4]
	b .L97
.L107:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L108:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L109:
	b .L104
.L110:
	b .L104
.L111:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #44
.L112:
	ldr r10, =0
	sub r4, r10, #4
	mov r5, #0
	mov r6, #4
	mul r5, r5, r6
	mov r6, #-40
	add r5, r6, r5
	add r6, fp, r5
	str r4, [r6]
	mov r7, #1
	mov r4, #4
	mul r4, r7, r4
	mov r5, #-40
	add r4, r5, r4
	add r6, fp, r4
	ldr r4, =3
	str r4, [r6]
	mov r5, #2
	mov r4, #4
	mul r6, r5, r4
	mov r4, #-40
	add r5, r4, r6
	add r4, fp, r5
	ldr r5, =9
	str r5, [r4]
	ldr r6, =0
	sub r4, r6, #2
	mov r5, #3
	mov r6, #4
	mul r5, r5, r6
	mov r6, #-40
	add r6, r6, r5
	add r5, fp, r6
	str r4, [r5]
	mov r7, #4
	mov r4, #4
	mul r5, r7, r4
	mov r4, #-40
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, =0
	str r4, [r6]
	mov r5, #5
	mov r4, #4
	mul r4, r5, r4
	mov r6, #-40
	add r4, r6, r4
	add r5, fp, r4
	ldr r4, =1
	str r4, [r5]
	ldr r6, =0
	sub r4, r6, #6
	mov r5, #6
	mov r6, #4
	mul r6, r5, r6
	mov r5, #-40
	add r5, r5, r6
	add r6, fp, r5
	str r4, [r6]
	mov r7, #7
	mov r4, #4
	mul r5, r7, r4
	mov r4, #-40
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, =5
	str r4, [r6]
	mov r5, #8
	mov r4, #4
	mul r6, r5, r4
	mov r4, #-40
	add r5, r4, r6
	add r4, fp, r5
	ldr r5, =7
	str r5, [r4]
	mov r6, #9
	mov r4, #4
	mul r5, r6, r4
	mov r4, #-40
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, =8
	str r4, [r6]
	ldr r5, =10
	str r5, [fp, #-44]
	mov r7, #0
	mov r4, #4
	mul r5, r7, r4
	mov r4, #-40
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, [fp, #-44]
	mov r0, r6
	mov r1, r4
	bl lengthOfLastWord
	mov r5, r0
	str r5, [fp, #-44]
	ldr r7, [fp, #-44]
	mov r0, r7
	add sp, sp, #44
	pop {r4, r5, r6, r7, r10, fp, lr}
	bx lr
.L115:
	add sp, sp, #44
	pop {r4, r5, r6, r7, r10, fp, lr}
	bx lr

