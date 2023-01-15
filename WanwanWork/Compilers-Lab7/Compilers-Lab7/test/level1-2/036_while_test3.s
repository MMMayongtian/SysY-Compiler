	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global g
	.align 4
	.size g, 4
g:
	.word 0
	.global h
	.align 4
	.size h, 4
h:
	.word 0
	.global f
	.align 4
	.size f, 4
f:
	.word 0
	.global e
	.align 4
	.size e, 4
e:
	.word 0
	.text
	.global EightWhile
	.type EightWhile , %function
EightWhile:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L93:
	ldr r10, =5
	str r10, [fp, #-16]
	ldr r9, =6
	str r9, [fp, #-12]
	ldr r8, =7
	str r8, [fp, #-8]
	ldr r7, =10
	str r7, [fp, #-4]
	b .L98
.L98:
	ldr r6, [fp, #-16]
	cmp r6, #20
	movlt r5, #1
	movge r5, #0
	blt .L99
	b .L103
.L99:
	ldr r4, [fp, #-16]
	add r5, r4, #3
	str r5, [fp, #-16]
	b .L104
.L100:
	ldr r6, [fp, #-16]
	ldr r4, [fp, #-12]
	ldr r5, [fp, #-4]
	add r7, r4, r5
	add r4, r6, r7
	ldr r5, [fp, #-8]
	add r6, r4, r5
	ldr r4, addr_e0
	ldr r5, [r4]
	ldr r4, [fp, #-4]
	add r7, r5, r4
	ldr r4, addr_g0
	ldr r5, [r4]
	sub r4, r7, r5
	ldr r5, addr_h0
	ldr r7, [r5]
	add r5, r4, r7
	sub r4, r6, r5
	mov r0, r4
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L101:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L102:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L103:
	b .L100
.L104:
	ldr r7, [fp, #-12]
	cmp r7, #10
	movlt r8, #1
	movge r8, #0
	blt .L105
	b .L109
.L105:
	ldr r9, [fp, #-12]
	add r4, r9, #1
	str r4, [fp, #-12]
	b .L110
.L106:
	ldr r5, [fp, #-12]
	sub r4, r5, #2
	str r4, [fp, #-12]
	b .L98
.L107:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L108:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L109:
	b .L106
.L110:
	ldr r6, [fp, #-8]
	cmp r6, #7
	beq .L111
	b .L115
.L111:
	ldr r7, [fp, #-8]
	sub r4, r7, #1
	str r4, [fp, #-8]
	b .L116
.L112:
	ldr r5, [fp, #-8]
	add r4, r5, #1
	str r4, [fp, #-8]
	b .L104
.L113:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L114:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L115:
	b .L112
.L116:
	ldr r6, [fp, #-4]
	cmp r6, #20
	movlt r7, #1
	movge r7, #0
	blt .L117
	b .L121
.L117:
	ldr r8, [fp, #-4]
	add r4, r8, #3
	str r4, [fp, #-4]
	b .L122
.L118:
	ldr r5, [fp, #-4]
	sub r4, r5, #1
	str r4, [fp, #-4]
	b .L110
.L119:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L120:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L121:
	b .L118
.L122:
	ldr r6, addr_e0
	ldr r4, [r6]
	cmp r4, #1
	movgt r5, #1
	movle r5, #0
	bgt .L123
	b .L127
.L123:
	ldr r7, addr_e0
	ldr r4, [r7]
	sub r5, r4, #1
	ldr r4, addr_e0
	str r5, [r4]
	b .L128
.L124:
	ldr r6, addr_e0
	ldr r4, [r6]
	add r5, r4, #1
	ldr r4, addr_e0
	str r5, [r4]
	b .L116
.L125:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L126:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L127:
	b .L124
.L128:
	ldr r6, addr_f0
	ldr r4, [r6]
	cmp r4, #2
	movgt r5, #1
	movle r5, #0
	bgt .L129
	b .L133
.L129:
	ldr r7, addr_f0
	ldr r4, [r7]
	sub r5, r4, #2
	ldr r4, addr_f0
	str r5, [r4]
	b .L134
.L130:
	ldr r6, addr_f0
	ldr r4, [r6]
	add r5, r4, #1
	ldr r4, addr_f0
	str r5, [r4]
	b .L122
.L131:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L132:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L133:
	b .L130
.L134:
	ldr r6, addr_g0
	ldr r4, [r6]
	cmp r4, #3
	movlt r5, #1
	movge r5, #0
	blt .L135
	b .L139
.L135:
	ldr r7, addr_g0
	ldr r4, [r7]
	add r5, r4, #10
	ldr r4, addr_g0
	str r5, [r4]
	b .L140
.L136:
	ldr r6, addr_g0
	ldr r4, [r6]
	sub r5, r4, #8
	ldr r4, addr_g0
	str r5, [r4]
	b .L128
.L137:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L138:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L139:
	b .L136
.L140:
	ldr r6, addr_h0
	ldr r4, [r6]
	cmp r4, #10
	movlt r5, #1
	movge r5, #0
	blt .L141
	b .L145
.L141:
	ldr r7, addr_h0
	ldr r4, [r7]
	add r5, r4, #8
	ldr r4, addr_h0
	str r5, [r4]
	b .L140
.L142:
	ldr r6, addr_h0
	ldr r4, [r6]
	sub r5, r4, #1
	ldr r4, addr_h0
	str r5, [r4]
	b .L134
.L143:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L144:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L145:
	b .L142
.L146:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #0
.L147:
	ldr r10, =1
	ldr r4, addr_g0
	str r10, [r4]
	ldr r5, =2
	ldr r4, addr_h0
	str r5, [r4]
	ldr r6, =4
	ldr r4, addr_e0
	str r6, [r4]
	ldr r5, =6
	ldr r4, addr_f0
	str r5, [r4]
	bl EightWhile
	mov r6, r0
	mov r0, r6
	add sp, sp, #0
	pop {r4, r5, r6, r10, fp, lr}
	bx lr
.L148:
	add sp, sp, #0
	pop {r4, r5, r6, r10, fp, lr}
	bx lr

addr_g0:
	.word g
addr_h0:
	.word h
addr_f0:
	.word f
addr_e0:
	.word e
