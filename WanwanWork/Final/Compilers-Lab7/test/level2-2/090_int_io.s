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
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L66:
	ldr r4, =0
	str r4, [fp, #-8]
	b .L69
.L69:
	ldr r5, =1
	ldr r4, =0
	cmp r5, r4
	movne r6, #1
	moveq r6, #0
	bne .L70
	b .L73
.L70:
	bl getch
	mov r7, r0
	ldr r4, addr_ascii_00
	ldr r5, [r4]
	sub r4, r7, r5
	str r4, [fp, #-4]
	ldr r6, [fp, #-4]
	ldr r4, =0
	cmp r6, r4
	movlt r5, #1
	movge r5, #0
	blt .L75
	b .L81
.L71:
	ldr r7, [fp, #-4]
	str r7, [fp, #-8]
	b .L87
.L72:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L73:
	b .L71
.L74:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L75:
	b .L69
.L76:
	b .L71
.L77:
	b .L69
.L78:
	ldr r8, [fp, #-4]
	ldr r4, =9
	cmp r8, r4
	movgt r5, #1
	movle r5, #0
	bgt .L75
	b .L84
.L79:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L80:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L81:
	b .L78
.L82:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L83:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L84:
	b .L76
.L85:
	b .L77
.L86:
	b .L77
.L87:
	ldr r6, =1
	ldr r4, =0
	cmp r6, r4
	movne r5, #1
	moveq r5, #0
	bne .L88
	b .L91
.L88:
	bl getch
	mov r7, r0
	ldr r4, addr_ascii_00
	ldr r5, [r4]
	sub r4, r7, r5
	str r4, [fp, #-4]
	ldr r6, [fp, #-4]
	ldr r4, =0
	cmp r6, r4
	movge r5, #1
	movlt r5, #0
	bge .L96
	b .L99
.L89:
	ldr r7, [fp, #-8]
	mov r0, r7
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L90:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L91:
	b .L89
.L92:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L93:
	ldr r8, [fp, #-8]
	ldr r4, =10
	mul r5, r8, r4
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
	ldr r4, =9
	cmp r7, r4
	movle r5, #1
	movgt r5, #0
	ble .L93
	b .L102
.L97:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L98:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L99:
	b .L94
.L100:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L101:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L102:
	b .L94
	b .F0
.LTORG
addr_ascii_00:
	.word ascii_0
.F0:
.L103:
	b .L95
.L104:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr

	.global my_putint
	.type my_putint , %function
my_putint:
	push {r4, r5, r6, r7, fp, lr}
	mov fp, sp
	sub sp, sp, #72
.L105:
	str r0, [fp, #-72]
	ldr r4, =0
	str r4, [fp, #-4]
	b .L109
.L109:
	ldr r5, [fp, #-72]
	ldr r4, =0
	cmp r5, r4
	movgt r6, #1
	movle r6, #0
	bgt .L110
	b .L114
.L110:
	ldr r7, [fp, #-72]
	ldr r4, =10
	sdiv r5, r7, r4
	mul r5, r5, r4
	sub r4, r7, r5
	ldr r5, addr_ascii_01
	ldr r6, [r5]
	add r5, r4, r6
	ldr r4, [fp, #-4]
	ldr r6, =0
	add r7, r6, r4
	mov r4, #4
	mul r4, r7, r4
	mov r6, #-68
	add r4, r6, r4
	add r6, fp, r4
	str r5, [r6]
	ldr r7, [fp, #-72]
	ldr r4, =10
	sdiv r5, r7, r4
	str r5, [fp, #-72]
	ldr r6, [fp, #-4]
	add r4, r6, #1
	str r4, [fp, #-4]
	b .L109
.L111:
	b .L117
.L112:
	add sp, sp, #72
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L113:
	add sp, sp, #72
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L114:
	b .L111
.L117:
	ldr r5, [fp, #-4]
	ldr r4, =0
	cmp r5, r4
	movgt r6, #1
	movle r6, #0
	bgt .L118
	b .L122
.L118:
	ldr r7, [fp, #-4]
	sub r4, r7, #1
	str r4, [fp, #-4]
	ldr r5, [fp, #-4]
	ldr r4, =0
	add r6, r4, r5
	mov r4, #4
	mul r5, r6, r4
	mov r4, #-68
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, [r6]
	mov r0, r4
	bl putch
	b .L117
.L119:
	add sp, sp, #72
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L120:
	add sp, sp, #72
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L121:
	add sp, sp, #72
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L122:
	b .L119

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L126:
	bl my_getint
	mov r4, r0
	str r4, [fp, #-8]
	b .L128
.L128:
	ldr r5, [fp, #-8]
	ldr r4, =0
	cmp r5, r4
	movgt r6, #1
	movle r6, #0
	bgt .L129
	b .L133
.L129:
	bl my_getint
	mov r7, r0
	str r7, [fp, #-4]
	ldr r8, [fp, #-4]
	mov r0, r8
	bl my_putint
	mov r0, #10
	bl putch
	ldr r9, [fp, #-8]
	sub r4, r9, #1
	str r4, [fp, #-8]
	b .L128
.L130:
	ldr r5, =0
	mov r0, r5
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L131:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L132:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L133:
	b .L130
.L135:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr

addr_ascii_01:
	.word ascii_0
