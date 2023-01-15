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
	ldr r10, =1
	str r10, [fp, #-220]
	ldr r9, =2
	str r9, [fp, #-216]
	ldr r8, =3
	str r8, [fp, #-216]
	ldr r7, [fp, #-216]
	mov r0, r7
	bl putint
	ldr r6, [fp, #-216]
	mov r0, r6
	bl putint
	ldr r5, [fp, #-220]
	mov r0, r5
	bl putint
	mov r0, #10
	bl putch
	b .L39
.L39:
	ldr r4, [fp, #-220]
	cmp r4, #5
	movlt r10, #1
	movge r10, #0
	blt .L40
	b .L44
.L40:
	ldr r9, =0
	str r9, [fp, #-212]
	ldr r8, [fp, #-212]
	add r4, r8, #1
	str r4, [fp, #-212]
	ldr r5, [fp, #-212]
	cmp r5, #0
	bne .L46
	b .L49
.L41:
	ldr r6, [fp, #-220]
	mov r0, r6
	bl putint
	mov r0, #10
	bl putch
	mov r7, #2
	mov r4, #4
	mul r4, r7, r4
	ldr r6, addr_c0
	add r5, r6, r4
	ldr r4, =1
	str r4, [r5]
	mov r6, #0
	mov r4, #32
	mul r5, r6, r4
	mov r4, #-208
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, =0
	str r4, [r6]
	add r4, r6, #4
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
	mov r7, #2
	mov r4, #4
	mul r4, r7, r4
	ldr r6, addr_c0
	add r5, r6, r4
	ldr r4, [r5]
	cmp r4, #0
	bne .L55
	b .L59
.L42:
	add sp, sp, #220
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
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
.L55:
	mov r6, #0
	mov r4, #20
	mul r5, r6, r4
	mov r4, #-140
	add r6, r4, r5
	add r4, fp, r6
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
	ldr r5, =2
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =1
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =8
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
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	ldr r6, [fp, #-144]
	mov r4, #20
	mul r5, r6, r4
	mov r4, #-140
	add r6, r4, r5
	add r4, fp, r6
	mov r5, #0
	mov r6, #20
	mul r6, r5, r6
	add r5, r4, r6
	mov r4, #0
	mov r6, #4
	mul r6, r4, r6
	add r4, r5, r6
	ldr r5, [r4]
	mov r0, r5
	bl putint
	ldr r6, [fp, #-144]
	mov r4, #20
	mul r4, r6, r4
	mov r5, #-140
	add r4, r5, r4
	add r6, fp, r4
	mov r4, #0
	mov r5, #20
	mul r5, r4, r5
	add r4, r6, r5
	mov r5, #1
	mov r6, #4
	mul r6, r5, r6
	add r5, r4, r6
	ldr r4, [r5]
	mov r0, r4
	bl putint
	ldr r6, [fp, #-144]
	mov r4, #20
	mul r5, r6, r4
	mov r4, #-140
	add r4, r4, r5
	add r6, fp, r4
	mov r4, #0
	mov r5, #20
	mul r5, r4, r5
	add r4, r6, r5
	mov r5, #2
	mov r6, #4
	mul r6, r5, r6
	add r5, r4, r6
	ldr r4, [r5]
	mov r0, r4
	bl putint
	b .L56
	b .F0
.LTORG
addr_b0:
	.word b
addr_c0:
	.word c
.F0:
.L56:
	mov r0, #10
	bl putch
	ldr r6, addr_b1
	ldr r4, [r6]
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	mov r5, #0
	mov r4, #4
	mul r4, r5, r4
	ldr r5, addr_c1
	add r6, r5, r4
	ldr r4, [r6]
	mov r0, r4
	bl putint
	mov r5, #1
	mov r4, #4
	mul r4, r5, r4
	ldr r5, addr_c1
	add r6, r5, r4
	ldr r4, [r6]
	mov r0, r4
	bl putint
	mov r5, #2
	mov r4, #4
	mul r4, r5, r4
	ldr r5, addr_c1
	add r6, r5, r4
	ldr r4, [r6]
	mov r0, r4
	bl putint
	mov r5, #3
	mov r4, #4
	mul r4, r5, r4
	ldr r5, addr_c1
	add r6, r5, r4
	ldr r4, [r6]
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	add sp, sp, #220
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L58:
	add sp, sp, #220
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L59:
	b .L56
.L60:
	add sp, sp, #220
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L76:
	add sp, sp, #220
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

addr_b1:
	.word b
addr_c1:
	.word c
