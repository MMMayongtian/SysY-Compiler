	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global map
	.align 4
	.size map, 400
map:
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.global indegree
	.align 4
	.size indegree, 40
indegree:
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.global queue
	.align 4
	.size queue, 40
queue:
	.word 0
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
	.global topo
	.type topo , %function
topo:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #20
.L88:
	str r0, [fp, #-20]
	ldr r4, =0
	str r4, [fp, #-16]
	ldr r5, =0
	str r5, [fp, #-12]
	ldr r6, =1
	str r6, [fp, #-8]
	ldr r7, =1
	str r7, [fp, #-4]
	b .L94
.L94:
	ldr r8, [fp, #-8]
	ldr r4, [fp, #-20]
	cmp r8, r4
	movle r5, #1
	movgt r5, #0
	ble .L95
	b .L99
.L95:
	ldr r6, =1
	str r6, [fp, #-4]
	b .L100
.L96:
	ldr r7, =0
	str r7, [fp, #-8]
	b .L138
.L97:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L98:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L99:
	b .L96
.L100:
	ldr r9, [fp, #-4]
	ldr r4, [fp, #-20]
	cmp r9, r4
	movle r5, #1
	movgt r5, #0
	ble .L101
	b .L105
.L101:
	ldr r6, [fp, #-4]
	ldr r4, =0
	add r5, r4, r6
	mov r4, #4
	mul r5, r5, r4
	ldr r4, addr_indegree0
	add r6, r4, r5
	ldr r4, [r6]
	ldr r5, =0
	cmp r4, r5
	moveq r6, #1
	movne r6, #0
	beq .L106
	b .L113
.L102:
	ldr r7, [fp, #-16]
	ldr r4, [fp, #-12]
	ldr r5, =0
	add r6, r5, r4
	mov r4, #4
	mul r4, r6, r4
	ldr r5, addr_queue0
	add r6, r5, r4
	str r7, [r6]
	ldr r8, [fp, #-12]
	add r4, r8, #1
	str r4, [fp, #-12]
	ldr r5, =0
	sub r4, r5, #1
	ldr r5, [fp, #-16]
	ldr r6, =0
	add r7, r6, r5
	mov r5, #4
	mul r5, r7, r5
	ldr r6, addr_indegree0
	add r7, r6, r5
	str r4, [r7]
	ldr r8, =1
	str r8, [fp, #-4]
	b .L119
.L103:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L104:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L105:
	b .L102
.L106:
	ldr r9, [fp, #-4]
	str r9, [fp, #-16]
	b .L102
.L107:
	ldr r10, [fp, #-4]
	add r4, r10, #1
	str r4, [fp, #-4]
	b .L100
.L111:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L112:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L113:
	b .L107
.L114:
	b .L107
.L119:
	ldr r5, [fp, #-4]
	ldr r4, [fp, #-20]
	cmp r5, r4
	movle r6, #1
	movgt r6, #0
	ble .L120
	b .L124
.L120:
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
	add r5, r4, v40
	mov r4, #4
	mul r6, r5, r4
	ldr r4, addr_map0
	add r5, r4, r6
	ldr r4, [r5]
	ldr r5, =0
	cmp r4, r5
	movne r6, #1
	moveq r6, #0
	bne .L125
	b .L131
	b .F0
.LTORG
addr_map0:
	.word map
addr_indegree0:
	.word indegree
addr_queue0:
	.word queue
.F0:
.L121:
	ldr r7, [fp, #-8]
	add r4, r7, #1
	str r4, [fp, #-8]
	b .L94
.L122:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L123:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L124:
	b .L121
.L125:
	ldr r5, [fp, #-4]
	ldr r4, =0
	add r6, r4, r5
	mov r4, #4
	mul r6, r6, r4
	ldr r5, addr_indegree1
	add r4, r5, r6
	ldr r5, [r4]
	sub r4, r5, #1
	ldr r5, [fp, #-4]
	ldr r6, =0
	add r7, r6, r5
	mov r5, #4
	mul r6, r7, r5
	ldr r7, addr_indegree1
	add r5, r7, r6
	str r4, [r5]
	b .L126
.L126:
	ldr r8, [fp, #-4]
	add r4, r8, #1
	str r4, [fp, #-4]
	b .L119
.L130:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L131:
	b .L126
.L132:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L138:
	ldr r5, [fp, #-8]
	ldr r4, [fp, #-20]
	cmp r5, r4
	movlt r6, #1
	movge r6, #0
	blt .L139
	b .L143
.L139:
	ldr r7, [fp, #-8]
	ldr r4, =0
	add r5, r4, r7
	mov r4, #4
	mul r4, r5, r4
	ldr r5, addr_queue1
	add r6, r5, r4
	ldr r4, [r6]
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	ldr r5, [fp, #-8]
	add r4, r5, #1
	str r4, [fp, #-8]
	b .L138
.L140:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L141:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L142:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L143:
	b .L140

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #12
.L147:
	ldr r4, =1
	str r4, [fp, #-4]
	ldr r5, =5
	str r5, [fp, #-12]
	b .L151
.L151:
	ldr r6, [fp, #-4]
	ldr r4, [fp, #-12]
	cmp r6, r4
	movle r5, #1
	movgt r5, #0
	ble .L152
	b .L156
.L152:
	bl getint
	mov r7, r0
	str r7, [fp, #-8]
	b .L157
.L153:
	ldr r8, [fp, #-12]
	mov r0, r8
	bl topo
	ldr r9, =0
	mov r0, r9
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L154:
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L155:
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L156:
	b .L153
.L157:
	ldr r10, [fp, #-8]
	ldr r4, =0
	cmp r10, r4
	movne r5, #1
	moveq r5, #0
	bne .L158
	b .L162
.L158:
	ldr r6, [fp, #-4]
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
	ldr r5, [fp, #-4]
	add r5, r4, v75
	mov r4, #4
	mul r6, r5, r4
	ldr r4, addr_map1
	add r5, r4, r6
	ldr r4, =1
	str r4, [r5]
	ldr r6, [fp, #-8]
	ldr r4, =0
	add r5, r4, r6
	mov r4, #4
	mul r4, r5, r4
	ldr r5, addr_indegree1
	add r6, r5, r4
	ldr r4, [r6]
	add r5, r4, #1
	ldr r4, [fp, #-8]
	ldr r6, =0
	add r7, r6, r4
	mov r4, #4
	mul r6, r7, r4
	ldr r7, addr_indegree1
	add r4, r7, r6
	str r5, [r4]
	bl getint
	mov r8, r0
	str r8, [fp, #-8]
	b .L157
.L159:
	ldr r9, [fp, #-4]
	add r4, r9, #1
	str r4, [fp, #-4]
	b .L151
.L160:
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L161:
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L162:
	b .L159
.L170:
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

addr_map1:
	.word map
addr_indegree1:
	.word indegree
addr_queue1:
	.word queue
