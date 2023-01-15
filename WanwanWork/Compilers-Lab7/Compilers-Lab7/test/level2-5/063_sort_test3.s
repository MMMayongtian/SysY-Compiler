	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global n
	.align 4
	.size n, 4
n:
	.word 0
	.text
	.global QuickSort
	.type QuickSort , %function
QuickSort:
	push {r4, r5, r6, r7, r8, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #28
.L120:
	str r0, [fp, #-28]
	str r1, [fp, #-24]
	str r2, [fp, #-20]
	ldr r10, [fp, #-24]
	ldr r4, [fp, #-20]
	cmp r10, r4
	movlt r5, #1
	movge r5, #0
	blt .L124
	b .L128
.L124:
	ldr r6, [fp, #-24]
	str r6, [fp, #-16]
	ldr r7, [fp, #-20]
	str r7, [fp, #-12]
	ldr r8, [fp, #-28]
	ldr r4, [fp, #-24]
	mov r5, #4
	mul r5, r4, r5
	add r4, r8, r5
	ldr r5, [r4]
	str r5, [fp, #-8]
	b .L134
.L125:
	mov r0, #0
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L126:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L127:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L128:
	b .L125
.L134:
	ldr r6, [fp, #-16]
	ldr r4, [fp, #-12]
	cmp r6, r4
	movlt r5, #1
	movge r5, #0
	blt .L135
	b .L139
.L135:
	b .L140
.L136:
	ldr r7, [fp, #-8]
	ldr r4, [fp, #-28]
	ldr r5, [fp, #-16]
	mov r6, #4
	mul r6, r5, r6
	add r5, r4, r6
	str r7, [r5]
	ldr r8, [fp, #-16]
	sub r4, r8, #1
	str r4, [fp, #-4]
	ldr r5, [fp, #-28]
	ldr r4, [fp, #-24]
	ldr r6, [fp, #-4]
	mov r0, r5
	mov r1, r4
	mov r2, r6
	bl QuickSort
	mov r7, r0
	str r7, [fp, #-4]
	ldr r8, [fp, #-16]
	add r4, r8, #1
	str r4, [fp, #-4]
	ldr r5, [fp, #-28]
	ldr r4, [fp, #-4]
	ldr r6, [fp, #-20]
	mov r0, r5
	mov r1, r4
	mov r2, r6
	bl QuickSort
	mov r7, r0
	str r7, [fp, #-4]
	b .L125
.L137:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L138:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L139:
	b .L136
.L140:
	ldr r8, [fp, #-16]
	ldr r4, [fp, #-12]
	cmp r8, r4
	movlt r5, #1
	movge r5, #0
	blt .L143
	b .L146
.L141:
	ldr r6, [fp, #-12]
	sub r4, r6, #1
	str r4, [fp, #-12]
	b .L140
.L142:
	ldr r5, [fp, #-16]
	ldr r4, [fp, #-12]
	cmp r5, r4
	movlt r6, #1
	movge r6, #0
	blt .L152
	b .L156
.L143:
	ldr r7, [fp, #-28]
	ldr r4, [fp, #-12]
	mov r5, #4
	mul r5, r4, r5
	add r4, r7, r5
	ldr r5, [r4]
	ldr r4, [fp, #-8]
	sub r6, r4, #1
	cmp r5, r6
	movgt r7, #1
	movle r7, #0
	bgt .L141
	b .L151
.L144:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L145:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L146:
	b .L142
.L149:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L150:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L151:
	b .L142
.L152:
	ldr r8, [fp, #-28]
	ldr r4, [fp, #-12]
	mov r5, #4
	mul r5, r4, r5
	add r4, r8, r5
	ldr r5, [r4]
	ldr r4, [fp, #-28]
	ldr r6, [fp, #-16]
	mov r7, #4
	mul r7, r6, r7
	add r6, r4, r7
	str r5, [r6]
	ldr r8, [fp, #-16]
	add r4, r8, #1
	str r4, [fp, #-16]
	b .L153
.L153:
	b .L160
.L154:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L155:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L156:
	b .L153
.L160:
	ldr r5, [fp, #-16]
	ldr r4, [fp, #-12]
	cmp r5, r4
	movlt r6, #1
	movge r6, #0
	blt .L163
	b .L166
.L161:
	ldr r7, [fp, #-16]
	add r4, r7, #1
	str r4, [fp, #-16]
	b .L160
.L162:
	ldr r5, [fp, #-16]
	ldr r4, [fp, #-12]
	cmp r5, r4
	movlt r6, #1
	movge r6, #0
	blt .L172
	b .L176
.L163:
	ldr r7, [fp, #-28]
	ldr r4, [fp, #-16]
	mov r5, #4
	mul r5, r4, r5
	add r4, r7, r5
	ldr r5, [r4]
	ldr r4, [fp, #-8]
	cmp r5, r4
	movlt r6, #1
	movge r6, #0
	blt .L161
	b .L171
.L164:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L165:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L166:
	b .L162
.L169:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L170:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L171:
	b .L162
.L172:
	ldr r7, [fp, #-28]
	ldr r4, [fp, #-16]
	mov r5, #4
	mul r5, r4, r5
	add r4, r7, r5
	ldr r5, [r4]
	ldr r4, [fp, #-28]
	ldr r6, [fp, #-12]
	mov r7, #4
	mul r7, r6, r7
	add r6, r4, r7
	str r5, [r6]
	ldr r8, [fp, #-12]
	sub r4, r8, #1
	str r4, [fp, #-12]
	b .L173
.L173:
	b .L134
.L174:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L175:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L176:
	b .L173
.L184:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
	b .F0
.LTORG
addr_n0:
	.word n
.F0:

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #52
.L185:
	ldr r10, =10
	ldr r4, addr_n1
	str r10, [r4]
	mov r5, #0
	mov r4, #4
	mul r6, r5, r4
	mov r4, #-52
	add r5, r4, r6
	add r4, fp, r5
	ldr r5, =4
	str r5, [r4]
	mov r6, #1
	mov r4, #4
	mul r4, r6, r4
	mov r5, #-52
	add r6, r5, r4
	add r4, fp, r6
	ldr r5, =3
	str r5, [r4]
	mov r6, #2
	mov r4, #4
	mul r4, r6, r4
	mov r5, #-52
	add r4, r5, r4
	add r6, fp, r4
	ldr r4, =9
	str r4, [r6]
	mov r5, #3
	mov r4, #4
	mul r6, r5, r4
	mov r4, #-52
	add r5, r4, r6
	add r4, fp, r5
	ldr r5, =2
	str r5, [r4]
	mov r6, #4
	mov r4, #4
	mul r5, r6, r4
	mov r4, #-52
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, =0
	str r4, [r6]
	mov r5, #5
	mov r4, #4
	mul r6, r5, r4
	mov r4, #-52
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =1
	str r4, [r5]
	mov r6, #6
	mov r4, #4
	mul r5, r6, r4
	mov r4, #-52
	add r6, r4, r5
	add r4, fp, r6
	ldr r5, =6
	str r5, [r4]
	mov r6, #7
	mov r4, #4
	mul r5, r6, r4
	mov r4, #-52
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, =5
	str r4, [r6]
	mov r5, #8
	mov r4, #4
	mul r6, r5, r4
	mov r4, #-52
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =7
	str r4, [r5]
	mov r6, #9
	mov r4, #4
	mul r5, r6, r4
	mov r4, #-52
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, =8
	str r4, [r6]
	ldr r5, =0
	str r5, [fp, #-12]
	ldr r7, =9
	str r7, [fp, #-8]
	mov r8, #0
	mov r4, #4
	mul r5, r8, r4
	mov r4, #-52
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, [fp, #-12]
	ldr r5, [fp, #-8]
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl QuickSort
	mov r7, r0
	str r7, [fp, #-12]
	b .L189
.L189:
	ldr r8, [fp, #-12]
	ldr r4, addr_n1
	ldr r5, [r4]
	cmp r8, r5
	movlt r6, #1
	movge r6, #0
	blt .L190
	b .L194
.L190:
	ldr r7, [fp, #-12]
	mov r4, #4
	mul r5, r7, r4
	mov r4, #-52
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, [r6]
	str r4, [fp, #-4]
	ldr r5, [fp, #-4]
	mov r0, r5
	bl putint
	ldr r7, =10
	str r7, [fp, #-4]
	ldr r8, [fp, #-4]
	mov r0, r8
	bl putch
	ldr r9, [fp, #-12]
	add r4, r9, #1
	str r4, [fp, #-12]
	b .L189
.L191:
	mov r0, #0
	add sp, sp, #52
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L192:
	add sp, sp, #52
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L193:
	add sp, sp, #52
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L194:
	b .L191
.L197:
	add sp, sp, #52
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

addr_n1:
	.word n
