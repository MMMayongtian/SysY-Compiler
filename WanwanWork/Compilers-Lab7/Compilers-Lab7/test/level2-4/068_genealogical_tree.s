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
	ldr r10, =0
	str r10, [fp, #-16]
	ldr r9, =0
	str r9, [fp, #-12]
	ldr r8, =1
	str r8, [fp, #-8]
	ldr r7, =1
	str r7, [fp, #-4]
	b .L94
.L94:
	ldr r6, [fp, #-8]
	ldr r4, [fp, #-20]
	cmp r6, r4
	movle r5, #1
	movgt r5, #0
	ble .L95
	b .L99
.L95:
	ldr r7, =1
	str r7, [fp, #-4]
	b .L100
.L96:
	ldr r8, =0
	str r8, [fp, #-8]
	b .L127
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
	mov r4, #4
	mul r4, r6, r4
	ldr r6, addr_indegree0
	add r5, r6, r4
	ldr r4, [r5]
	cmp r4, #0
	beq .L106
	b .L111
.L102:
	ldr r6, [fp, #-16]
	ldr r4, [fp, #-12]
	mov r5, #4
	mul r7, r4, r5
	ldr r5, addr_queue0
	add r4, r5, r7
	str r6, [r4]
	ldr r8, [fp, #-12]
	add r4, r8, #1
	str r4, [fp, #-12]
	ldr r5, =0
	sub r4, r5, #1
	ldr r5, [fp, #-16]
	mov r6, #4
	mul r6, r5, r6
	ldr r7, addr_indegree0
	add r5, r7, r6
	str r4, [r5]
	ldr r8, =1
	str r8, [fp, #-4]
	b .L113
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
.L109:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L110:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L111:
	b .L107
.L112:
	b .L107
.L113:
	ldr r5, [fp, #-4]
	ldr r4, [fp, #-20]
	cmp r5, r4
	movle r6, #1
	movgt r6, #0
	ble .L114
	b .L118
.L114:
	ldr r7, [fp, #-16]
	mov r4, #40
	mul r5, r7, r4
	ldr r4, addr_map0
	add r6, r4, r5
	ldr r4, [fp, #-4]
	mov r5, #4
	mul r5, r4, r5
	add r4, r6, r5
	ldr r5, [r4]
	cmp r5, #0
	bne .L119
	b .L124
.L115:
	ldr r6, [fp, #-8]
	add r4, r6, #1
	str r4, [fp, #-8]
	b .L94
.L116:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L117:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L118:
	b .L115
.L119:
	ldr r5, [fp, #-4]
	mov r4, #4
	mul r4, r5, r4
	ldr r5, addr_indegree0
	add r6, r5, r4
	ldr r4, [r6]
	sub r5, r4, #1
	ldr r4, [fp, #-4]
	mov r6, #4
	mul r6, r4, r6
	ldr r7, addr_indegree0
	add r4, r7, r6
	str r5, [r4]
	b .L120
.L120:
	ldr r8, [fp, #-4]
	add r4, r8, #1
	str r4, [fp, #-4]
	b .L113
.L123:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L124:
	b .L120
.L125:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L127:
	ldr r5, [fp, #-8]
	ldr r4, [fp, #-20]
	cmp r5, r4
	movlt r6, #1
	movge r6, #0
	blt .L128
	b .L132
.L128:
	ldr r7, [fp, #-8]
	mov r4, #4
	mul r4, r7, r4
	ldr r6, addr_queue0
	add r5, r6, r4
	ldr r4, [r5]
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	ldr r6, [fp, #-8]
	add r4, r6, #1
	str r4, [fp, #-8]
	b .L127
.L129:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L130:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L131:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L132:
	b .L129

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #12
.L134:
	ldr r10, =1
	str r10, [fp, #-4]
	ldr r9, =5
	str r9, [fp, #-12]
	b .L138
.L138:
	ldr r8, [fp, #-4]
	ldr r4, [fp, #-12]
	cmp r8, r4
	movle r5, #1
	movgt r5, #0
	ble .L139
	b .L143
.L139:
	bl getint
	mov r6, r0
	str r6, [fp, #-8]
	b .L144
.L140:
	ldr r7, [fp, #-12]
	mov r0, r7
	bl topo
	mov r0, #0
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L141:
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L142:
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L143:
	b .L140
.L144:
	ldr r9, [fp, #-8]
	cmp r9, #0
	bne .L145
	b .L149
.L145:
	ldr r10, [fp, #-4]
	mov r4, #40
	mul r4, r10, r4
	ldr r6, addr_map0
	add r5, r6, r4
	ldr r4, [fp, #-8]
	mov r6, #4
	mul r4, r4, r6
	add r6, r5, r4
	ldr r4, =1
	str r4, [r6]
	ldr r5, [fp, #-8]
	mov r4, #4
	mul r4, r5, r4
	ldr r5, addr_indegree0
	add r6, r5, r4
	ldr r4, [r6]
	add r5, r4, #1
	ldr r4, [fp, #-8]
	mov r6, #4
	mul r6, r4, r6
	ldr r7, addr_indegree0
	add r4, r7, r6
	str r5, [r4]
	bl getint
	mov r8, r0
	str r8, [fp, #-8]
	b .L144
.L146:
	ldr r9, [fp, #-4]
	add r4, r9, #1
	str r4, [fp, #-4]
	b .L138
.L147:
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L148:
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L149:
	b .L146
.L152:
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

addr_map0:
	.word map
addr_indegree0:
	.word indegree
addr_queue0:
	.word queue
