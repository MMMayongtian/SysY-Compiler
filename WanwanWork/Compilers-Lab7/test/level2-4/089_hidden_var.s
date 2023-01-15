	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global b
	.align 4
	.size b, 4
b:
	.word 5
	.global c
	.align 4
	.size c, 16
c:
	.word 6
	.word 7
	.word 8
	.word 9
	.text
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #220
.L36:
	ldr r4, =1
	str r4, [fp, #-220]
	ldr r5, =2
	str r5, [fp, #-216]
	ldr r6, =3
	str r6, [fp, #-216]
	ldr r7, [fp, #-216]
	mov r0, r7
	bl putint
	ldr r8, [fp, #-216]
	mov r0, r8
	bl putint
	ldr r9, [fp, #-220]
	mov r0, r9
	bl putint
	mov r0, #10
	bl putch
	b .L39
.L39:
	ldr r10, [fp, #-220]
	ldr r4, =5
	cmp r10, r4
	movlt r5, #1
	movge r5, #0
	blt .L40
	b .L44
.L40:
	ldr r6, =0
	str r6, [fp, #-212]
	ldr r7, [fp, #-212]
	add r4, r7, #1
	str r4, [fp, #-212]
	ldr r5, [fp, #-212]
	ldr r4, =0
	cmp r5, r4
	movne r6, #1
	moveq r6, #0
	bne .L46
	b .L49
.L41:
	ldr r7, [fp, #-220]
	mov r0, r7
	bl putint
	mov r0, #10
	bl putch
	ldr r8, =0
	add r4, r8, #2
	mov r5, #4
	mul r5, r4, r5
	ldr r4, addr_c0
	add r6, r4, r5
	ldr r4, =1
	str r4, [r6]
	mov r5, #0
	mov r4, #4
	mul r6, r5, r4
	mov r4, #-208
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =9
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =8
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =3
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	ldr r6, =2
	str r6, [fp, #-144]
	ldr r7, =0
	add r4, r7, #2
	mov r5, #4
	mul r5, r4, r5
	ldr r4, addr_c0
	add r6, r4, r5
	ldr r4, [r6]
	ldr r5, =0
	cmp r4, r5
	movne r6, #1
	moveq r6, #0
	bne .L57
	b .L63
.L42:
	add sp, sp, #220
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
	b .F0
.LTORG
addr_b0:
	.word b
addr_c0:
	.word c
.F0:
.L43:
	add sp, sp, #220
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L44:
	b .L41
.L46:
	b .L41
.L47:
	b .L39
.L48:
	add sp, sp, #220
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L49:
	b .L47
.L50:
	add sp, sp, #220
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L51:
	b .L47
.L57:
	mov r7, #0
	mov r4, #4
	mul r5, r7, r4
	mov r4, #-140
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, =0
	str r4, [r6]
	add r4, r6, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =2
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =1
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =8
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	ldr r6, [fp, #-144]
	ldr r4, =0
	add r5, r4, r6
	add r4, r5, r6
	add r5, r4, r6
	add r4, r5, r6
	add r5, r4, r6
	ldr r4, [fp, #-144]
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	ldr r5, [fp, #-144]
	add r5, r4, #0
	mov r4, #4
	mul r6, r5, r4
	mov r4, #-140
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, [r5]
	mov r0, r4
	bl putint
	ldr r6, [fp, #-144]
	ldr r4, =0
	add r5, r4, r6
	add r4, r5, r6
	add r5, r4, r6
	add r4, r5, r6
	add r5, r4, r6
	ldr r4, [fp, #-144]
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	ldr r5, [fp, #-144]
	add r5, r4, #1
	mov r4, #4
	mul r6, r5, r4
	mov r4, #-140
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, [r5]
	mov r0, r4
	bl putint
	ldr r6, [fp, #-144]
	ldr r4, =0
	add r5, r4, r6
	add r4, r5, r6
	add r5, r4, r6
	add r4, r5, r6
	add r5, r4, r6
	ldr r4, [fp, #-144]
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	ldr r5, [fp, #-144]
	add r5, r4, #2
	mov r4, #4
	mul r6, r5, r4
	mov r4, #-140
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, [r5]
	mov r0, r4
	bl putint
	b .L58
	b .F1
.LTORG
addr_b1:
	.word b
addr_c1:
	.word c
.F1:
.L58:
	mov r0, #10
	bl putch
	ldr r6, addr_b2
	ldr r4, [r6]
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	ldr r5, =0
	add r4, r5, #0
	mov r5, #4
	mul r4, r4, r5
	ldr r5, addr_c2
	add r6, r5, r4
	ldr r4, [r6]
	mov r0, r4
	bl putint
	ldr r5, =0
	add r4, r5, #1
	mov r5, #4
	mul r4, r4, r5
	ldr r5, addr_c2
	add r6, r5, r4
	ldr r4, [r6]
	mov r0, r4
	bl putint
	ldr r5, =0
	add r4, r5, #2
	mov r5, #4
	mul r4, r4, r5
	ldr r5, addr_c2
	add r6, r5, r4
	ldr r4, [r6]
	mov r0, r4
	bl putint
	ldr r5, =0
	add r4, r5, #3
	mov r5, #4
	mul r4, r4, r5
	ldr r5, addr_c2
	add r6, r5, r4
	ldr r4, [r6]
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	ldr r5, =0
	mov r0, r5
	add sp, sp, #220
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L62:
	add sp, sp, #220
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L63:
	b .L58
.L64:
	add sp, sp, #220
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L88:
	add sp, sp, #220
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

addr_b2:
	.word b
addr_c2:
	.word c
