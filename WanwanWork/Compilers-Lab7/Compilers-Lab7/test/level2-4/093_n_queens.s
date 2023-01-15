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
	push {r4, r5, r6, r7, r8, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L90:
	ldr r10, addr_sum0
	ldr r4, [r10]
	add r5, r4, #1
	ldr r4, addr_sum0
	str r5, [r4]
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
	mov r4, #4
	mul r6, r8, r4
	ldr r4, addr_ans0
	add r5, r4, r6
	ldr r4, [r5]
	mov r0, r4
	bl putint
	ldr r6, [fp, #-4]
	ldr r4, addr_n0
	ldr r5, [r4]
	cmp r6, r5
	beq .L99
	b .L104
.L94:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L95:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L96:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L97:
	b .L94
.L99:
	mov r0, #10
	bl putch
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L100:
	mov r0, #32
	bl putch
	b .L101
.L101:
	ldr r7, [fp, #-4]
	add r4, r7, #1
	str r4, [fp, #-4]
	b .L92
.L102:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L103:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L104:
	b .L100
.L105:
	b .L101

	.global f
	.type f , %function
f:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L106:
	str r0, [fp, #-8]
	ldr r10, =1
	str r10, [fp, #-4]
	b .L109
.L109:
	ldr r9, [fp, #-4]
	ldr r4, addr_n0
	ldr r5, [r4]
	cmp r9, r5
	movle r6, #1
	movgt r6, #0
	ble .L110
	b .L114
.L110:
	ldr r7, [fp, #-4]
	mov r4, #4
	mul r4, r7, r4
	ldr r6, addr_row0
	add r5, r6, r4
	ldr r4, [r5]
	cmp r4, #1
	bne .L118
	b .L122
.L111:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L112:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L113:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L114:
	b .L111
.L115:
	ldr r6, [fp, #-4]
	ldr r4, [fp, #-8]
	mov r5, #4
	mul r4, r4, r5
	ldr r5, addr_ans0
	add r7, r5, r4
	str r6, [r7]
	ldr r8, [fp, #-8]
	ldr r4, addr_n0
	ldr r5, [r4]
	cmp r8, r5
	beq .L132
	b .L136
.L116:
	ldr r6, [fp, #-4]
	add r4, r6, #1
	str r4, [fp, #-4]
	b .L109
.L117:
	ldr r5, addr_n0
	ldr r4, [r5]
	ldr r5, [fp, #-8]
	add r6, r4, r5
	ldr r4, [fp, #-4]
	sub r5, r6, r4
	mov r4, #4
	mul r4, r5, r4
	ldr r5, addr_line20
	add r6, r5, r4
	ldr r4, [r6]
	cmp r4, #0
	moveq r5, #1
	movne r5, #0
	cmp r5, #0
	bne .L115
	b .L130
.L118:
	ldr r7, [fp, #-8]
	ldr r4, [fp, #-4]
	add r5, r7, r4
	mov r4, #4
	mul r5, r5, r4
	ldr r4, addr_line10
	add r6, r4, r5
	ldr r4, [r6]
	cmp r4, #0
	beq .L117
	b .L126
.L120:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L121:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L122:
	b .L116
.L124:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L125:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L126:
	b .L116
.L129:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L130:
	b .L116
.L131:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L132:
	bl printans
	b .L133
.L133:
	ldr r5, [fp, #-4]
	mov r4, #4
	mul r4, r5, r4
	ldr r5, addr_row0
	add r6, r5, r4
	ldr r4, =1
	str r4, [r6]
	ldr r5, [fp, #-8]
	ldr r4, [fp, #-4]
	add r6, r5, r4
	mov r4, #4
	mul r4, r6, r4
	ldr r6, addr_line10
	add r5, r6, r4
	ldr r4, =1
	str r4, [r5]
	ldr r6, addr_n0
	ldr r4, [r6]
	ldr r5, [fp, #-8]
	add r6, r4, r5
	ldr r4, [fp, #-4]
	sub r5, r6, r4
	mov r4, #4
	mul r4, r5, r4
	ldr r5, addr_line20
	add r6, r5, r4
	ldr r4, =1
	str r4, [r6]
	ldr r5, [fp, #-8]
	add r4, r5, #1
	mov r0, r4
	bl f
	ldr r6, [fp, #-4]
	mov r4, #4
	mul r5, r6, r4
	ldr r4, addr_row0
	add r6, r4, r5
	ldr r4, =0
	str r4, [r6]
	ldr r5, [fp, #-8]
	ldr r4, [fp, #-4]
	add r6, r5, r4
	mov r4, #4
	mul r4, r6, r4
	ldr r6, addr_line10
	add r5, r6, r4
	ldr r4, =0
	str r4, [r5]
	ldr r6, addr_n0
	ldr r4, [r6]
	ldr r5, [fp, #-8]
	add r6, r4, r5
	ldr r4, [fp, #-4]
	sub r5, r6, r4
	mov r4, #4
	mul r4, r5, r4
	ldr r5, addr_line20
	add r6, r5, r4
	ldr r4, =0
	str r4, [r6]
	b .L116
.L134:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L135:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L136:
	b .L133

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L137:
	bl getint
	mov r10, r0
	str r10, [fp, #-4]
	b .L139
.L139:
	ldr r9, [fp, #-4]
	cmp r9, #0
	movgt r8, #1
	movle r8, #0
	bgt .L140
	b .L144
.L140:
	bl getint
	mov r7, r0
	ldr r4, addr_n0
	str r7, [r4]
	mov r0, #1
	bl f
	ldr r5, [fp, #-4]
	sub r4, r5, #1
	str r4, [fp, #-4]
	b .L139
.L141:
	ldr r6, addr_sum0
	ldr r4, [r6]
	mov r0, r4
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L142:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L143:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L144:
	b .L141
.L145:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

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
