	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global g
	.align 4
	.size g, 4
g:
	.word 0
	.text
	.global func
	.type func , %function
func:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L58:
	str r0, [fp, #-4]
	ldr r4, addr_g0
	ldr r5, [r4]
	ldr r4, [fp, #-4]
	add r6, r5, r4
	ldr r4, addr_g0
	str r6, [r4]
	ldr r5, addr_g0
	ldr r4, [r5]
	mov r0, r4
	bl putint
	ldr r6, addr_g0
	ldr r4, [r6]
	mov r0, r4
	add sp, sp, #4
	pop {r4, r5, r6, fp, lr}
	bx lr
.L60:
	add sp, sp, #4
	pop {r4, r5, r6, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L61:
	bl getint
	mov r4, r0
	str r4, [fp, #-4]
	ldr r5, [fp, #-4]
	ldr r4, =10
	cmp r5, r4
	movgt r6, #1
	movle r6, #0
	bgt .L66
	b .L69
.L63:
	ldr r7, =1
	str r7, [fp, #-4]
	b .L65
.L64:
	ldr r8, =0
	str r8, [fp, #-4]
	b .L65
.L65:
	bl getint
	mov r9, r0
	str r9, [fp, #-4]
	ldr r10, [fp, #-4]
	ldr r4, =11
	cmp r10, r4
	movgt r5, #1
	movle r5, #0
	bgt .L76
	b .L79
.L66:
	ldr r6, [fp, #-4]
	mov r0, r6
	bl func
	mov r7, r0
	ldr r4, =0
	cmp r7, r4
	movne r5, #1
	moveq r5, #0
	bne .L63
	b .L71
.L67:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L68:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L69:
	b .L64
.L70:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L71:
	b .L64
.L72:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L73:
	ldr r6, =1
	str r6, [fp, #-4]
	b .L75
.L74:
	ldr r8, =0
	str r8, [fp, #-4]
	b .L75
.L75:
	bl getint
	mov r9, r0
	str r9, [fp, #-4]
	ldr r10, [fp, #-4]
	ldr r4, =99
	cmp r10, r4
	movle r5, #1
	movgt r5, #0
	ble .L83
	b .L89
.L76:
	ldr r6, [fp, #-4]
	mov r0, r6
	bl func
	mov r7, r0
	ldr r4, =0
	cmp r7, r4
	movne r5, #1
	moveq r5, #0
	bne .L73
	b .L81
.L77:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L78:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L79:
	b .L74
.L80:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L81:
	b .L74
.L82:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L83:
	ldr r6, =1
	str r6, [fp, #-4]
	b .L85
.L84:
	ldr r8, =0
	str r8, [fp, #-4]
	b .L85
.L85:
	bl getint
	mov r9, r0
	str r9, [fp, #-4]
	ldr r10, [fp, #-4]
	ldr r4, =100
	cmp r10, r4
	movle r5, #1
	movgt r5, #0
	ble .L93
	b .L99
.L86:
	ldr r6, [fp, #-4]
	mov r0, r6
	bl func
	mov r7, r0
	ldr r4, =0
	cmp r7, r4
	movne r5, #1
	moveq r5, #0
	bne .L83
	b .L91
.L87:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L88:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
	b .F0
.LTORG
addr_g0:
	.word g
.F0:
.L89:
	b .L86
.L90:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L91:
	b .L84
.L92:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L93:
	ldr r6, =1
	str r6, [fp, #-4]
	b .L95
.L94:
	ldr r8, =0
	str r8, [fp, #-4]
	b .L95
.L95:
	mov r0, #99
	bl func
	mov r9, r0
	ldr r4, =0
	cmp r9, r4
	movne r5, #1
	moveq r5, #0
	moveq r6, #1
	movne r6, #0
	ldr r4, =0
	cmp r6, r4
	movne r5, #1
	moveq r5, #0
	bne .L106
	b .L109
.L96:
	ldr r7, [fp, #-4]
	mov r0, r7
	bl func
	mov r8, r0
	ldr r4, =0
	cmp r8, r4
	movne r5, #1
	moveq r5, #0
	bne .L93
	b .L101
.L97:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L98:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L99:
	b .L96
.L100:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L101:
	b .L94
.L102:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L103:
	ldr r6, =1
	str r6, [fp, #-4]
	b .L105
.L104:
	ldr r7, =0
	str r7, [fp, #-4]
	b .L105
.L105:
	ldr r9, =0
	mov r0, r9
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L106:
	mov r0, #100
	bl func
	mov r10, r0
	ldr r4, =0
	cmp r10, r4
	movne r5, #1
	moveq r5, #0
	bne .L103
	b .L112
.L108:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L109:
	b .L104
.L110:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L111:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L112:
	b .L104
.L113:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L114:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

addr_g1:
	.word g
