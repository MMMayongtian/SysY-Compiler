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
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L143:
	str r0, [fp, #-16]
	str r1, [fp, #-12]
	str r2, [fp, #-8]
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-12]
	ldr r6, =0
	add r7, r6, r5
	mov r5, #4
	mul r6, r7, r5
	add r5, r4, r6
	ldr r4, [r5]
	str r4, [fp, #-4]
	ldr r6, [fp, #-16]
	ldr r4, [fp, #-8]
	ldr r5, =0
	add r7, r5, r4
	mov r4, #4
	mul r5, r7, r4
	add r4, r6, r5
	ldr r5, [r4]
	ldr r4, [fp, #-16]
	ldr r6, [fp, #-12]
	ldr r7, =0
	add r8, r7, r6
	mov r6, #4
	mul r7, r8, r6
	add r6, r4, r7
	str r5, [r6]
	ldr r8, [fp, #-4]
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-8]
	ldr r6, =0
	add r7, r6, r5
	mov r5, #4
	mul r6, r7, r5
	add r5, r4, r6
	str r8, [r5]
	ldr r7, =0
	mov r0, r7
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L162:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr

	.global heap_ajust
	.type heap_ajust , %function
heap_ajust:
	push {r4, r5, r6, r7, r8, r9, fp, lr}
	mov fp, sp
	sub sp, sp, #20
.L163:
	str r0, [fp, #-20]
	str r1, [fp, #-16]
	str r2, [fp, #-12]
	ldr r4, [fp, #-16]
	str r4, [fp, #-8]
	ldr r5, [fp, #-8]
	ldr r4, =2
	mul r6, r5, r4
	add r4, r6, #1
	str r4, [fp, #-4]
	b .L169
.L169:
	ldr r5, [fp, #-4]
	ldr r4, [fp, #-12]
	add r6, r4, #1
	cmp r5, r6
	movlt r7, #1
	movge r7, #0
	blt .L170
	b .L174
.L170:
	ldr r8, [fp, #-4]
	ldr r4, [fp, #-12]
	cmp r8, r4
	movlt r5, #1
	movge r5, #0
	blt .L177
	b .L180
.L171:
	ldr r6, =0
	mov r0, r6
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L172:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L173:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L174:
	b .L171
.L175:
	ldr r7, [fp, #-4]
	add r4, r7, #1
	str r4, [fp, #-4]
	b .L176
.L176:
	ldr r5, [fp, #-20]
	ldr r4, [fp, #-8]
	ldr r6, =0
	add r7, r6, r4
	mov r4, #4
	mul r6, r7, r4
	add r4, r5, r6
	ldr r5, [r4]
	ldr r4, [fp, #-20]
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, r6
	mov r6, #4
	mul r7, r8, r6
	add r6, r4, r7
	ldr r4, [r6]
	cmp r5, r4
	movgt r7, #1
	movle r7, #0
	bgt .L192
	b .L205
.L177:
	ldr r8, [fp, #-20]
	ldr r4, [fp, #-4]
	ldr r5, =0
	add r6, r5, r4
	mov r4, #4
	mul r5, r6, r4
	add r4, r8, r5
	ldr r5, [r4]
	ldr r4, [fp, #-20]
	ldr r6, [fp, #-4]
	add r7, r6, #1
	ldr r6, =0
	add r8, r6, r7
	mov r6, #4
	mul r7, r8, r6
	add r6, r4, r7
	ldr r4, [r6]
	cmp r5, r4
	movlt r7, #1
	movge r7, #0
	blt .L175
	b .L191
.L178:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L179:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L180:
	b .L176
.L189:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L190:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L191:
	b .L176
.L192:
	ldr r8, =0
	mov r0, r8
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L193:
	ldr r9, [fp, #-20]
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-4]
	mov r0, r9
	mov r1, r4
	mov r2, r5
	bl swap
	mov r6, r0
	str r6, [fp, #-8]
	ldr r7, [fp, #-4]
	str r7, [fp, #-8]
	ldr r8, [fp, #-8]
	ldr r4, =2
	mul r5, r8, r4
	add r4, r5, #1
	str r4, [fp, #-4]
	b .L194
	b .F0
.LTORG
addr_n0:
	.word n
.F0:
.L194:
	b .L169
.L203:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L204:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L205:
	b .L193
.L206:
	b .L194
.L208:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr

	.global heap_sort
	.type heap_sort , %function
heap_sort:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #20
.L209:
	str r0, [fp, #-20]
	str r1, [fp, #-16]
	ldr r4, [fp, #-16]
	ldr r5, =2
	sdiv r6, r4, r5
	sub r4, r6, #1
	str r4, [fp, #-12]
	b .L214
.L214:
	ldr r5, [fp, #-12]
	ldr r4, =0
	sub r6, r4, #1
	cmp r5, r6
	movgt r7, #1
	movle r7, #0
	bgt .L215
	b .L219
.L215:
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
	b .L214
.L216:
	ldr r5, [fp, #-16]
	sub r4, r5, #1
	str r4, [fp, #-12]
	b .L221
.L217:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L218:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L219:
	b .L216
.L221:
	ldr r6, [fp, #-12]
	ldr r4, =0
	cmp r6, r4
	movgt r5, #1
	movle r5, #0
	bgt .L222
	b .L226
.L222:
	ldr r7, =0
	str r7, [fp, #-4]
	ldr r8, [fp, #-20]
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-12]
	mov r0, r8
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
	b .L221
.L223:
	ldr r5, =0
	mov r0, r5
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L224:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L225:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L226:
	b .L223
.L230:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, fp, lr}
	mov fp, sp
	sub sp, sp, #48
.L231:
	ldr r4, =10
	ldr r5, addr_n1
	str r4, [r5]
	ldr r6, =0
	add r4, r6, #0
	mov r5, #4
	mul r6, r4, r5
	mov r4, #-48
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =4
	str r4, [r5]
	ldr r6, =0
	add r4, r6, #1
	mov r5, #4
	mul r6, r4, r5
	mov r4, #-48
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =3
	str r4, [r5]
	ldr r6, =0
	add r4, r6, #2
	mov r5, #4
	mul r6, r4, r5
	mov r4, #-48
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =9
	str r4, [r5]
	ldr r6, =0
	add r4, r6, #3
	mov r5, #4
	mul r6, r4, r5
	mov r4, #-48
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =2
	str r4, [r5]
	ldr r6, =0
	add r4, r6, #4
	mov r5, #4
	mul r6, r4, r5
	mov r4, #-48
	add r5, r4, r6
	add r4, fp, r5
	ldr r5, =0
	str r5, [r4]
	ldr r6, =0
	add r4, r6, #5
	mov r5, #4
	mul r6, r4, r5
	mov r4, #-48
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =1
	str r4, [r5]
	ldr r6, =0
	add r4, r6, #6
	mov r5, #4
	mul r4, r4, r5
	mov r6, #-48
	add r4, r6, r4
	add r5, fp, r4
	ldr r4, =6
	str r4, [r5]
	ldr r6, =0
	add r4, r6, #7
	mov r5, #4
	mul r6, r4, r5
	mov r4, #-48
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =5
	str r4, [r5]
	ldr r6, =0
	add r4, r6, #8
	mov r5, #4
	mul r6, r4, r5
	mov r4, #-48
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =7
	str r4, [r5]
	ldr r6, =0
	add r4, r6, #9
	mov r5, #4
	mul r6, r4, r5
	mov r4, #-48
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =8
	str r4, [r5]
	ldr r6, =0
	str r6, [fp, #-8]
	mov r7, #0
	mov r4, #4
	mul r5, r7, r4
	mov r4, #-48
	add r6, r4, r5
	add r4, fp, r6
	ldr r5, addr_n1
	ldr r6, [r5]
	mov r0, r4
	mov r1, r6
	bl heap_sort
	mov r7, r0
	str r7, [fp, #-8]
	b .L254
.L254:
	ldr r8, [fp, #-8]
	ldr r4, addr_n1
	ldr r5, [r4]
	cmp r8, r5
	movlt r6, #1
	movge r6, #0
	blt .L255
	b .L259
.L255:
	ldr r7, [fp, #-8]
	ldr r4, =0
	add r5, r4, r7
	mov r4, #4
	mul r6, r5, r4
	mov r4, #-48
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
	ldr r9, [fp, #-8]
	add r4, r9, #1
	str r4, [fp, #-8]
	b .L254
	b .F1
.LTORG
addr_n1:
	.word n
.F1:
.L256:
	ldr r5, =0
	mov r0, r5
	add sp, sp, #48
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L257:
	add sp, sp, #48
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L258:
	add sp, sp, #48
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L259:
	b .L256
.L264:
	add sp, sp, #48
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr

addr_n2:
	.word n
