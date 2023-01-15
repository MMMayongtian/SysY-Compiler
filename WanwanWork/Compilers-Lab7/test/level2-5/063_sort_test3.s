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
	push {r4, r5, r6, r7, r8, r9, fp, lr}
	mov fp, sp
	sub sp, sp, #28
.L120:
	str r0, [fp, #-28]
	str r1, [fp, #-24]
	str r2, [fp, #-20]
	ldr r4, [fp, #-24]
	ldr r5, [fp, #-20]
	cmp r4, r5
	movlt r6, #1
	movge r6, #0
	blt .L124
	b .L128
.L124:
	ldr r7, [fp, #-24]
	str r7, [fp, #-16]
	ldr r8, [fp, #-20]
	str r8, [fp, #-12]
	ldr r9, [fp, #-28]
	ldr r4, [fp, #-24]
	ldr r5, =0
	add r6, r5, r4
	mov r4, #4
	mul r5, r6, r4
	add r4, r9, r5
	ldr r5, [r4]
	str r5, [fp, #-8]
	b .L136
.L125:
	ldr r6, =0
	mov r0, r6
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L126:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L127:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L128:
	b .L125
.L136:
	ldr r7, [fp, #-16]
	ldr r4, [fp, #-12]
	cmp r7, r4
	movlt r5, #1
	movge r5, #0
	blt .L137
	b .L141
.L137:
	b .L142
.L138:
	ldr r6, [fp, #-8]
	ldr r4, [fp, #-28]
	ldr r5, [fp, #-16]
	ldr r7, =0
	add r8, r7, r5
	mov r5, #4
	mul r7, r8, r5
	add r5, r4, r7
	str r6, [r5]
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
.L139:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L140:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L141:
	b .L138
.L142:
	ldr r8, [fp, #-16]
	ldr r4, [fp, #-12]
	cmp r8, r4
	movlt r5, #1
	movge r5, #0
	blt .L145
	b .L148
.L143:
	ldr r6, [fp, #-12]
	sub r4, r6, #1
	str r4, [fp, #-12]
	b .L142
.L144:
	ldr r5, [fp, #-16]
	ldr r4, [fp, #-12]
	cmp r5, r4
	movlt r6, #1
	movge r6, #0
	blt .L156
	b .L160
.L145:
	ldr r7, [fp, #-28]
	ldr r4, [fp, #-12]
	ldr r5, =0
	add r6, r5, r4
	mov r4, #4
	mul r5, r6, r4
	add r4, r7, r5
	ldr r5, [r4]
	ldr r4, [fp, #-8]
	sub r6, r4, #1
	cmp r5, r6
	movgt r7, #1
	movle r7, #0
	bgt .L143
	b .L155
.L146:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
	b .F0
.LTORG
addr_n0:
	.word n
.F0:
.L147:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L148:
	b .L144
.L153:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L154:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L155:
	b .L144
.L156:
	ldr r8, [fp, #-28]
	ldr r4, [fp, #-12]
	ldr r5, =0
	add r6, r5, r4
	mov r4, #4
	mul r5, r6, r4
	add r4, r8, r5
	ldr r5, [r4]
	ldr r4, [fp, #-28]
	ldr r6, [fp, #-16]
	ldr r7, =0
	add r8, r7, r6
	mov r6, #4
	mul r7, r8, r6
	add r6, r4, r7
	str r5, [r6]
	ldr r8, [fp, #-16]
	add r4, r8, #1
	str r4, [fp, #-16]
	b .L157
.L157:
	b .L168
.L158:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L159:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L160:
	b .L157
.L168:
	ldr r5, [fp, #-16]
	ldr r4, [fp, #-12]
	cmp r5, r4
	movlt r6, #1
	movge r6, #0
	blt .L171
	b .L174
.L169:
	ldr r7, [fp, #-16]
	add r4, r7, #1
	str r4, [fp, #-16]
	b .L168
.L170:
	ldr r5, [fp, #-16]
	ldr r4, [fp, #-12]
	cmp r5, r4
	movlt r6, #1
	movge r6, #0
	blt .L182
	b .L186
.L171:
	ldr r7, [fp, #-28]
	ldr r4, [fp, #-16]
	ldr r5, =0
	add r6, r5, r4
	mov r4, #4
	mul r5, r6, r4
	add r4, r7, r5
	ldr r5, [r4]
	ldr r4, [fp, #-8]
	cmp r5, r4
	movlt r6, #1
	movge r6, #0
	blt .L169
	b .L181
.L172:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L173:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L174:
	b .L170
.L179:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L180:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L181:
	b .L170
.L182:
	ldr r7, [fp, #-28]
	ldr r4, [fp, #-16]
	ldr r5, =0
	add r6, r5, r4
	mov r4, #4
	mul r5, r6, r4
	add r4, r7, r5
	ldr r5, [r4]
	ldr r4, [fp, #-28]
	ldr r6, [fp, #-12]
	ldr r7, =0
	add r8, r7, r6
	mov r6, #4
	mul r7, r8, r6
	add r6, r4, r7
	str r5, [r6]
	ldr r8, [fp, #-12]
	sub r4, r8, #1
	str r4, [fp, #-12]
	b .L183
.L183:
	b .L136
.L184:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L185:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L186:
	b .L183
.L200:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, fp, lr}
	mov fp, sp
	sub sp, sp, #52
.L201:
	ldr r4, =10
	ldr r5, addr_n1
	str r4, [r5]
	ldr r6, =0
	add r4, r6, #0
	mov r5, #4
	mul r6, r4, r5
	mov r4, #-52
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =4
	str r4, [r5]
	ldr r6, =0
	add r4, r6, #1
	mov r5, #4
	mul r4, r4, r5
	mov r6, #-52
	add r5, r6, r4
	add r4, fp, r5
	ldr r5, =3
	str r5, [r4]
	ldr r6, =0
	add r4, r6, #2
	mov r5, #4
	mul r6, r4, r5
	mov r4, #-52
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =9
	str r4, [r5]
	ldr r6, =0
	add r4, r6, #3
	mov r5, #4
	mul r6, r4, r5
	mov r4, #-52
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =2
	str r4, [r5]
	ldr r6, =0
	add r4, r6, #4
	mov r5, #4
	mul r6, r4, r5
	mov r4, #-52
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =0
	str r4, [r5]
	ldr r6, =0
	add r4, r6, #5
	mov r5, #4
	mul r6, r4, r5
	mov r4, #-52
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =1
	str r4, [r5]
	ldr r6, =0
	add r4, r6, #6
	mov r5, #4
	mul r6, r4, r5
	mov r4, #-52
	add r5, r4, r6
	add r4, fp, r5
	ldr r5, =6
	str r5, [r4]
	ldr r6, =0
	add r4, r6, #7
	mov r5, #4
	mul r6, r4, r5
	mov r4, #-52
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =5
	str r4, [r5]
	ldr r6, =0
	add r4, r6, #8
	mov r5, #4
	mul r6, r4, r5
	mov r4, #-52
	add r5, r4, r6
	add r4, fp, r5
	ldr r5, =7
	str r5, [r4]
	ldr r6, =0
	add r4, r6, #9
	mov r5, #4
	mul r6, r4, r5
	mov r4, #-52
	add r5, r4, r6
	add r4, fp, r5
	ldr r5, =8
	str r5, [r4]
	ldr r6, =0
	str r6, [fp, #-12]
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
	b .L225
.L225:
	ldr r8, [fp, #-12]
	ldr r4, addr_n1
	ldr r5, [r4]
	cmp r8, r5
	movlt r6, #1
	movge r6, #0
	blt .L226
	b .L230
.L226:
	ldr r7, [fp, #-12]
	ldr r4, =0
	add r5, r4, r7
	mov r4, #4
	mul r6, r5, r4
	mov r4, #-52
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, [r5]
	str r4, [fp, #-4]
	ldr r6, [fp, #-4]
	mov r0, r6
	bl putint
	ldr r7, =10
	str r7, [fp, #-4]
	ldr r8, [fp, #-4]
	mov r0, r8
	bl putch
	ldr r9, [fp, #-12]
	add r4, r9, #1
	str r4, [fp, #-12]
	b .L225
	b .F1
.LTORG
addr_n1:
	.word n
.F1:
.L227:
	ldr r5, =0
	mov r0, r5
	add sp, sp, #52
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L228:
	add sp, sp, #52
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L229:
	add sp, sp, #52
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L230:
	b .L227
.L235:
	add sp, sp, #52
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr

addr_n2:
	.word n
