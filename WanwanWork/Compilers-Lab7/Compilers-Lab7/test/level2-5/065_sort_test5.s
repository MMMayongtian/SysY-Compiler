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
	.global swap
	.type swap , %function
swap:
	push {r4, r5, r6, r7, r8, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L143:
	str r0, [fp, #-16]
	str r1, [fp, #-12]
	str r2, [fp, #-8]
	ldr r10, [fp, #-16]
	ldr r4, [fp, #-12]
	mov r5, #4
	mul r5, r4, r5
	add r4, r10, r5
	ldr r5, [r4]
	str r5, [fp, #-4]
	ldr r6, [fp, #-16]
	ldr r4, [fp, #-8]
	mov r5, #4
	mul r5, r4, r5
	add r4, r6, r5
	ldr r5, [r4]
	ldr r4, [fp, #-16]
	ldr r6, [fp, #-12]
	mov r7, #4
	mul r7, r6, r7
	add r6, r4, r7
	str r5, [r6]
	ldr r8, [fp, #-4]
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-8]
	mov r6, #4
	mul r6, r5, r6
	add r5, r4, r6
	str r8, [r5]
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L154:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr

	.global heap_ajust
	.type heap_ajust , %function
heap_ajust:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #20
.L155:
	str r0, [fp, #-20]
	str r1, [fp, #-16]
	str r2, [fp, #-12]
	ldr r10, [fp, #-16]
	str r10, [fp, #-8]
	ldr r9, [fp, #-8]
	ldr r4, =2
	mul r5, r9, r4
	add r4, r5, #1
	str r4, [fp, #-4]
	b .L161
.L161:
	ldr r6, [fp, #-4]
	ldr r4, [fp, #-12]
	add r5, r4, #1
	cmp r6, r5
	movlt r7, #1
	movge r7, #0
	blt .L162
	b .L166
.L162:
	ldr r8, [fp, #-4]
	ldr r4, [fp, #-12]
	cmp r8, r4
	movlt r5, #1
	movge r5, #0
	blt .L169
	b .L172
.L163:
	mov r0, #0
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L164:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L165:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L166:
	b .L163
.L167:
	ldr r6, [fp, #-4]
	add r4, r6, #1
	str r4, [fp, #-4]
	b .L168
.L168:
	ldr r5, [fp, #-20]
	ldr r4, [fp, #-8]
	mov r6, #4
	mul r6, r4, r6
	add r4, r5, r6
	ldr r5, [r4]
	ldr r4, [fp, #-20]
	ldr r6, [fp, #-4]
	mov r7, #4
	mul r7, r6, r7
	add r6, r4, r7
	ldr r4, [r6]
	cmp r5, r4
	movgt r7, #1
	movle r7, #0
	bgt .L180
	b .L189
.L169:
	ldr r8, [fp, #-20]
	ldr r4, [fp, #-4]
	mov r5, #4
	mul r5, r4, r5
	add r4, r8, r5
	ldr r5, [r4]
	ldr r4, [fp, #-20]
	ldr r6, [fp, #-4]
	add r7, r6, #1
	mov r6, #4
	mul r6, r7, r6
	add r7, r4, r6
	ldr r4, [r7]
	cmp r5, r4
	movlt r6, #1
	movge r6, #0
	blt .L167
	b .L179
.L170:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L171:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L172:
	b .L168
.L177:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L178:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L179:
	b .L168
.L180:
	mov r0, #0
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L181:
	ldr r8, [fp, #-20]
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-4]
	mov r0, r8
	mov r1, r4
	mov r2, r5
	bl swap
	mov r6, r0
	str r6, [fp, #-8]
	ldr r7, [fp, #-4]
	str r7, [fp, #-8]
	ldr r9, [fp, #-8]
	ldr r4, =2
	mul r5, r9, r4
	add r4, r5, #1
	str r4, [fp, #-4]
	b .L182
.L182:
	b .L161
.L187:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L188:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L189:
	b .L181
.L190:
	b .L182
.L192:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global heap_sort
	.type heap_sort , %function
heap_sort:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #20
.L193:
	str r0, [fp, #-20]
	str r1, [fp, #-16]
	ldr r10, [fp, #-16]
	ldr r4, =2
	sdiv r5, r10, r4
	sub r4, r5, #1
	str r4, [fp, #-12]
	b .L198
.L198:
	ldr r6, [fp, #-12]
	ldr r4, =0
	sub r5, r4, #1
	cmp r6, r5
	movgt r7, #1
	movle r7, #0
	bgt .L199
	b .L203
.L199:
	ldr r8, [fp, #-16]
	sub r4, r8, #1
	str r4, [fp, #-8]
	ldr r5, [fp, #-20]
	ldr r4, [fp, #-12]
	ldr r6, [fp, #-8]
	mov r0, r5
	mov r1, r4
	mov r2, r6
	bl heap_ajust
	mov r7, r0
	str r7, [fp, #-8]
	ldr r8, [fp, #-12]
	sub r4, r8, #1
	str r4, [fp, #-12]
	b .L198
.L200:
	ldr r5, [fp, #-16]
	sub r4, r5, #1
	str r4, [fp, #-12]
	b .L205
.L201:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L202:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L203:
	b .L200
.L205:
	ldr r6, [fp, #-12]
	cmp r6, #0
	movgt r7, #1
	movle r7, #0
	bgt .L206
	b .L210
.L206:
	ldr r8, =0
	str r8, [fp, #-4]
	ldr r9, [fp, #-20]
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-12]
	mov r0, r9
	mov r1, r4
	mov r2, r5
	bl swap
	mov r6, r0
	str r6, [fp, #-8]
	ldr r7, [fp, #-12]
	sub r4, r7, #1
	str r4, [fp, #-8]
	ldr r5, [fp, #-20]
	ldr r4, [fp, #-4]
	ldr r6, [fp, #-8]
	mov r0, r5
	mov r1, r4
	mov r2, r6
	bl heap_ajust
	mov r7, r0
	str r7, [fp, #-8]
	ldr r8, [fp, #-12]
	sub r4, r8, #1
	str r4, [fp, #-12]
	b .L205
.L207:
	mov r0, #0
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L208:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L209:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L210:
	b .L207
.L214:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #48
.L215:
	ldr r10, =10
	ldr r4, addr_n0
	str r10, [r4]
	mov r5, #0
	mov r4, #4
	mul r6, r5, r4
	mov r4, #-48
	add r5, r4, r6
	add r4, fp, r5
	ldr r5, =4
	str r5, [r4]
	mov r6, #1
	mov r4, #4
	mul r5, r6, r4
	mov r4, #-48
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, =3
	str r4, [r6]
	mov r5, #2
	mov r4, #4
	mul r6, r5, r4
	mov r4, #-48
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =9
	str r4, [r5]
	mov r6, #3
	mov r4, #4
	mul r5, r6, r4
	mov r4, #-48
	add r6, r4, r5
	add r4, fp, r6
	ldr r5, =2
	str r5, [r4]
	mov r6, #4
	mov r4, #4
	mul r5, r6, r4
	mov r4, #-48
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, =0
	str r4, [r6]
	mov r5, #5
	mov r4, #4
	mul r6, r5, r4
	mov r4, #-48
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =1
	str r4, [r5]
	mov r6, #6
	mov r4, #4
	mul r5, r6, r4
	mov r4, #-48
	add r6, r4, r5
	add r4, fp, r6
	ldr r5, =6
	str r5, [r4]
	mov r6, #7
	mov r4, #4
	mul r5, r6, r4
	mov r4, #-48
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, =5
	str r4, [r6]
	mov r5, #8
	mov r4, #4
	mul r6, r5, r4
	mov r4, #-48
	add r5, r4, r6
	add r4, fp, r5
	ldr r5, =7
	str r5, [r4]
	mov r6, #9
	mov r4, #4
	mul r5, r6, r4
	mov r4, #-48
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, =8
	str r4, [r6]
	ldr r5, =0
	str r5, [fp, #-8]
	mov r7, #0
	mov r4, #4
	mul r5, r7, r4
	mov r4, #-48
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, addr_n0
	ldr r5, [r4]
	mov r0, r6
	mov r1, r5
	bl heap_sort
	mov r7, r0
	str r7, [fp, #-8]
	b .L218
.L218:
	ldr r8, [fp, #-8]
	ldr r4, addr_n0
	ldr r5, [r4]
	cmp r8, r5
	movlt r6, #1
	movge r6, #0
	blt .L219
	b .L223
.L219:
	ldr r7, [fp, #-8]
	mov r4, #4
	mul r5, r7, r4
	mov r4, #-48
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
	ldr r9, [fp, #-8]
	add r4, r9, #1
	str r4, [fp, #-8]
	b .L218
.L220:
	mov r0, #0
	add sp, sp, #48
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L221:
	add sp, sp, #48
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L222:
	add sp, sp, #48
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L223:
	b .L220
.L226:
	add sp, sp, #48
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

addr_n0:
	.word n
