	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.section .rodata
	.global ascii_0
	.align 4
	.size ascii_0, 4
ascii_0:
	.word 48
	.text
	.global my_getint
	.type my_getint , %function
my_getint:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L66:
	ldr r10, =0
	str r10, [fp, #-8]
	b .L69
.L69:
	ldr r9, =1
	cmp r9, #0
	bne .L70
	b .L73
.L70:
	bl getch
	mov r8, r0
	ldr r4, addr_ascii_00
	ldr r5, [r4]
	sub r4, r8, r5
	str r4, [fp, #-4]
	ldr r6, [fp, #-4]
	cmp r6, #0
	movlt r7, #1
	movge r7, #0
	blt .L75
	b .L81
.L71:
	ldr r9, [fp, #-4]
	str r9, [fp, #-8]
	b .L87
.L72:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L73:
	b .L71
.L74:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L75:
	b .L69
.L76:
	b .L71
.L77:
	b .L69
.L78:
	ldr r10, [fp, #-4]
	cmp r10, #9
	movgt r8, #1
	movle r8, #0
	bgt .L75
	b .L84
.L79:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L80:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L81:
	b .L78
.L82:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L83:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L84:
	b .L76
.L85:
	b .L77
.L86:
	b .L77
.L87:
	ldr r5, =1
	cmp r5, #0
	bne .L88
	b .L91
.L88:
	bl getch
	mov r4, r0
	ldr r5, addr_ascii_00
	ldr r6, [r5]
	sub r5, r4, r6
	str r5, [fp, #-4]
	ldr r7, [fp, #-4]
	cmp r7, #0
	movge r8, #1
	movlt r8, #0
	bge .L96
	b .L99
.L89:
	ldr r9, [fp, #-8]
	mov r0, r9
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L90:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L91:
	b .L89
.L92:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L93:
	ldr r10, [fp, #-8]
	ldr r4, =10
	mul r5, r10, r4
	ldr r4, [fp, #-4]
	add r6, r5, r4
	str r6, [fp, #-8]
	b .L95
.L94:
	b .L89
.L95:
	b .L87
.L96:
	ldr r7, [fp, #-4]
	cmp r7, #9
	movle r8, #1
	movgt r8, #0
	ble .L93
	b .L102
.L97:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L98:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L99:
	b .L94
.L100:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L101:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L102:
	b .L94
.L103:
	b .L95
.L104:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global my_putint
	.type my_putint , %function
my_putint:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #72
.L105:
	str r0, [fp, #-72]
	ldr r10, =0
	str r10, [fp, #-4]
	b .L109
.L109:
	ldr r9, [fp, #-72]
	cmp r9, #0
	movgt r8, #1
	movle r8, #0
	bgt .L110
	b .L114
.L110:
	ldr r7, [fp, #-72]
	ldr r4, =10
	sdiv r5, r7, r4
	mul r4, r5, r4
	sub r5, r7, r4
	ldr r4, addr_ascii_00
	ldr r6, [r4]
	add r4, r5, r6
	ldr r5, [fp, #-4]
	mov r6, #4
	mul r5, r5, r6
	mov r6, #-68
	add r5, r6, r5
	add r6, fp, r5
	str r4, [r6]
	ldr r7, [fp, #-72]
	ldr r4, =10
	sdiv r5, r7, r4
	str r5, [fp, #-72]
	ldr r6, [fp, #-4]
	add r4, r6, #1
	str r4, [fp, #-4]
	b .L109
.L111:
	b .L115
.L112:
	add sp, sp, #72
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L113:
	add sp, sp, #72
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L114:
	b .L111
.L115:
	ldr r5, [fp, #-4]
	cmp r5, #0
	movgt r7, #1
	movle r7, #0
	bgt .L116
	b .L120
.L116:
	ldr r8, [fp, #-4]
	sub r4, r8, #1
	str r4, [fp, #-4]
	ldr r5, [fp, #-4]
	mov r4, #4
	mul r6, r5, r4
	mov r4, #-68
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, [r5]
	mov r0, r4
	bl putch
	b .L115
.L117:
	add sp, sp, #72
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L118:
	add sp, sp, #72
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L119:
	add sp, sp, #72
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L120:
	b .L117

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L122:
	bl my_getint
	mov r10, r0
	str r10, [fp, #-8]
	b .L124
.L124:
	ldr r9, [fp, #-8]
	cmp r9, #0
	movgt r8, #1
	movle r8, #0
	bgt .L125
	b .L129
.L125:
	bl my_getint
	mov r7, r0
	str r7, [fp, #-4]
	ldr r6, [fp, #-4]
	mov r0, r6
	bl my_putint
	mov r0, #10
	bl putch
	ldr r5, [fp, #-8]
	sub r4, r5, #1
	str r4, [fp, #-8]
	b .L124
.L126:
	mov r0, #0
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L127:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L128:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L129:
	b .L126
.L131:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

addr_ascii_00:
	.word ascii_0
