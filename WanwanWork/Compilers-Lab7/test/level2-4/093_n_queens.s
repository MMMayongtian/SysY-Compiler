	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global ans
	.align 4
	.size ans, 200
ans:
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
	.global sum
	.align 4
	.size sum, 4
sum:
	.word 0
	.global n
	.align 4
	.size n, 4
n:
	.word 0
	.global row
	.align 4
	.size row, 200
row:
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
	.global line1
	.align 4
	.size line1, 200
line1:
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
	.global line2
	.align 4
	.size line2, 400
line2:
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
	.global printans
	.type printans , %function
printans:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L90:
	ldr r4, addr_sum0
	ldr r5, [r4]
	add r4, r5, #1
	ldr r5, addr_sum0
	str r4, [r5]
	ldr r6, =1
	str r6, [fp, #-4]
	b .L92
.L92:
	ldr r7, [fp, #-4]
	ldr r4, addr_n0
	ldr r5, [r4]
	cmp r7, r5
	movle r6, #1
	movgt r6, #0
	ble .L93
	b .L97
.L93:
	ldr r8, [fp, #-4]
	ldr r4, =0
	add r5, r4, r8
	mov r4, #4
	mul r4, r5, r4
	ldr r5, addr_ans0
	add r6, r5, r4
	ldr r4, [r6]
	mov r0, r4
	bl putint
	ldr r5, [fp, #-4]
	ldr r4, addr_n0
	ldr r6, [r4]
	cmp r5, r6
	moveq r7, #1
	movne r7, #0
	beq .L101
	b .L106
.L94:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L95:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L96:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L97:
	b .L94
.L101:
	mov r0, #10
	bl putch
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L102:
	mov r0, #32
	bl putch
	b .L103
.L103:
	ldr r8, [fp, #-4]
	add r4, r8, #1
	str r4, [fp, #-4]
	b .L92
.L104:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L105:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L106:
	b .L102
.L107:
	b .L103

	.global f
	.type f , %function
f:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L108:
	str r0, [fp, #-8]
	ldr r4, =1
	str r4, [fp, #-4]
	b .L111
.L111:
	ldr r5, [fp, #-4]
	ldr r4, addr_n0
	ldr r6, [r4]
	cmp r5, r6
	movle r7, #1
	movgt r7, #0
	ble .L112
	b .L116
.L112:
	ldr r8, [fp, #-4]
	ldr r4, =0
	add r5, r4, r8
	mov r4, #4
	mul r4, r5, r4
	ldr r5, addr_row0
	add r6, r5, r4
	ldr r4, [r6]
	ldr r5, =1
	cmp r4, r5
	movne r6, #1
	moveq r6, #0
	bne .L120
	b .L126
.L113:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L114:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L115:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L116:
	b .L113
.L117:
	ldr r7, [fp, #-4]
	ldr r4, [fp, #-8]
	ldr r5, =0
	add r6, r5, r4
	mov r4, #4
	mul r5, r6, r4
	ldr r6, addr_ans0
	add r4, r6, r5
	str r7, [r4]
	ldr r8, [fp, #-8]
	ldr r4, addr_n0
	ldr r5, [r4]
	cmp r8, r5
	moveq r6, #1
	movne r6, #0
	beq .L142
	b .L146
.L118:
	ldr r7, [fp, #-4]
	add r4, r7, #1
	str r4, [fp, #-4]
	b .L111
.L119:
	ldr r5, addr_n0
	ldr r4, [r5]
	ldr r5, [fp, #-8]
	add r6, r4, r5
	ldr r4, [fp, #-4]
	sub r5, r6, r4
	ldr r4, =0
	add r6, r4, r5
	mov r4, #4
	mul r4, r6, r4
	ldr r6, addr_line20
	add r5, r6, r4
	ldr r4, [r5]
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
	bne .L117
	b .L138
.L120:
	ldr r6, [fp, #-8]
	ldr r4, [fp, #-4]
	add r5, r6, r4
	ldr r4, =0
	add r6, r4, r5
	mov r4, #4
	mul r4, r6, r4
	ldr r6, addr_line10
	add r5, r6, r4
	ldr r4, [r5]
	ldr r5, =0
	cmp r4, r5
	moveq r6, #1
	movne r6, #0
	beq .L119
	b .L132
.L124:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L125:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L126:
	b .L118
.L130:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L131:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L132:
	b .L118
.L137:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L138:
	b .L118
.L139:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L142:
	bl printans
	b .L143
	b .F0
.LTORG
addr_ans0:
	.word ans
addr_sum0:
	.word sum
addr_n0:
	.word n
addr_row0:
	.word row
addr_line10:
	.word line1
addr_line20:
	.word line2
.F0:
.L143:
	ldr r7, [fp, #-4]
	ldr r4, =0
	add r5, r4, r7
	mov r4, #4
	mul r5, r5, r4
	ldr r4, addr_row1
	add r6, r4, r5
	ldr r4, =1
	str r4, [r6]
	ldr r5, [fp, #-8]
	ldr r4, [fp, #-4]
	add r6, r5, r4
	ldr r4, =0
	add r5, r4, r6
	mov r4, #4
	mul r4, r5, r4
	ldr r5, addr_line11
	add r6, r5, r4
	ldr r4, =1
	str r4, [r6]
	ldr r5, addr_n1
	ldr r4, [r5]
	ldr r5, [fp, #-8]
	add r6, r4, r5
	ldr r4, [fp, #-4]
	sub r5, r6, r4
	ldr r4, =0
	add r6, r4, r5
	mov r4, #4
	mul r4, r6, r4
	ldr r6, addr_line21
	add r5, r6, r4
	ldr r4, =1
	str r4, [r5]
	ldr r6, [fp, #-8]
	add r4, r6, #1
	mov r0, r4
	bl f
	ldr r5, [fp, #-4]
	ldr r4, =0
	add r6, r4, r5
	mov r4, #4
	mul r4, r6, r4
	ldr r6, addr_row1
	add r5, r6, r4
	ldr r4, =0
	str r4, [r5]
	ldr r6, [fp, #-8]
	ldr r4, [fp, #-4]
	add r5, r6, r4
	ldr r4, =0
	add r6, r4, r5
	mov r4, #4
	mul r4, r6, r4
	ldr r5, addr_line11
	add r6, r5, r4
	ldr r4, =0
	str r4, [r6]
	ldr r5, addr_n1
	ldr r4, [r5]
	ldr r5, [fp, #-8]
	add r6, r4, r5
	ldr r4, [fp, #-4]
	sub r5, r6, r4
	ldr r4, =0
	add r6, r4, r5
	mov r4, #4
	mul r4, r6, r4
	ldr r6, addr_line21
	add r5, r6, r4
	ldr r4, =0
	str r4, [r5]
	b .L118
.L144:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L145:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L146:
	b .L143

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L159:
	bl getint
	mov r4, r0
	str r4, [fp, #-4]
	b .L161
.L161:
	ldr r5, [fp, #-4]
	ldr r4, =0
	cmp r5, r4
	movgt r6, #1
	movle r6, #0
	bgt .L162
	b .L166
.L162:
	bl getint
	mov r7, r0
	ldr r4, addr_n1
	str r7, [r4]
	mov r0, #1
	bl f
	ldr r5, [fp, #-4]
	sub r4, r5, #1
	str r4, [fp, #-4]
	b .L161
.L163:
	ldr r6, addr_sum1
	ldr r4, [r6]
	mov r0, r4
	add sp, sp, #4
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L164:
	add sp, sp, #4
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L165:
	add sp, sp, #4
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L166:
	b .L163
.L167:
	add sp, sp, #4
	pop {r4, r5, r6, r7, fp, lr}
	bx lr

addr_ans1:
	.word ans
addr_sum1:
	.word sum
addr_n1:
	.word n
addr_row1:
	.word row
addr_line11:
	.word line1
addr_line21:
	.word line2
