	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global M
	.align 4
	.size M, 4
M:
	.word 0
	.global L
	.align 4
	.size L, 4
L:
	.word 0
	.global N
	.align 4
	.size N, 4
N:
	.word 0
	.text
	.global mul
	.type mul , %function
mul:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #40
.L219:
	str r0, [fp, #-40]
	str r1, [fp, #-36]
	str r2, [fp, #-32]
	str r3, [fp, #-28]
	ldr r3, [fp, #28]
	str r3, [fp, #-24]
	ldr r3, [fp, #32]
	str r3, [fp, #-20]
	ldr r3, [fp, #36]
	str r3, [fp, #-16]
	ldr r3, [fp, #40]
	str r3, [fp, #-12]
	ldr r3, [fp, #44]
	str r3, [fp, #-8]
	ldr r4, =0
	str r4, [fp, #-4]
	ldr r5, [fp, #-40]
	ldr r4, =0
	add r6, r4, #0
	mov r4, #4
	mul r4, r6, r4
	add r6, r5, r4
	ldr r4, [r6]
	ldr r5, [fp, #-28]
	ldr r6, =0
	add r7, r6, #0
	mov r6, #4
	mul r7, r7, r6
	add r6, r5, r7
	ldr r5, [r6]
	mul r6, r4, r5
	ldr r4, [fp, #-40]
	ldr r5, =0
	add r7, r5, #1
	mov r5, #4
	mul r7, r7, r5
	add r5, r4, r7
	ldr r4, [r5]
	ldr r5, [fp, #-24]
	ldr r7, =0
	add r8, r7, #0
	mov r7, #4
	mul r8, r8, r7
	add r7, r5, r8
	ldr r5, [r7]
	mul r7, r4, r5
	add r4, r6, r7
	ldr r5, [fp, #-40]
	ldr r6, =0
	add r7, r6, #2
	mov r6, #4
	mul r7, r7, r6
	add r6, r5, r7
	ldr r5, [r6]
	ldr r6, [fp, #-20]
	ldr r7, =0
	add r8, r7, #0
	mov r7, #4
	mul r8, r8, r7
	add r7, r6, r8
	ldr r6, [r7]
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [fp, #-16]
	ldr r6, =0
	add r7, r6, #0
	mov r6, #4
	mul r7, r7, r6
	add r6, r4, r7
	str r5, [r6]
	ldr r8, [fp, #-40]
	ldr r4, =0
	add r5, r4, #0
	mov r4, #4
	mul r4, r5, r4
	add r5, r8, r4
	ldr r4, [r5]
	ldr r5, [fp, #-28]
	ldr r6, =0
	add r7, r6, #1
	mov r6, #4
	mul r7, r7, r6
	add r6, r5, r7
	ldr r5, [r6]
	mul r6, r4, r5
	ldr r4, [fp, #-40]
	ldr r5, =0
	add r7, r5, #1
	mov r5, #4
	mul r5, r7, r5
	add r7, r4, r5
	ldr r4, [r7]
	ldr r5, [fp, #-24]
	ldr r7, =0
	add r8, r7, #1
	mov r7, #4
	mul r8, r8, r7
	add r7, r5, r8
	ldr r5, [r7]
	mul r7, r4, r5
	add r4, r6, r7
	ldr r5, [fp, #-40]
	ldr r6, =0
	add r7, r6, #2
	mov r6, #4
	mul r7, r7, r6
	add r6, r5, r7
	ldr r5, [r6]
	ldr r6, [fp, #-20]
	ldr r7, =0
	add r8, r7, #1
	mov r7, #4
	mul r8, r8, r7
	add r7, r6, r8
	ldr r6, [r7]
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [fp, #-16]
	ldr r6, =0
	add r7, r6, #1
	mov r6, #4
	mul r7, r7, r6
	add r6, r4, r7
	str r5, [r6]
	ldr r8, [fp, #-40]
	ldr r4, =0
	add r5, r4, #0
	mov r4, #4
	mul r5, r5, r4
	add r4, r8, r5
	ldr r5, [r4]
	ldr r4, [fp, #-28]
	ldr r6, =0
	add r7, r6, #2
	mov r6, #4
	mul r6, r7, r6
	add r7, r4, r6
	ldr r4, [r7]
	mul r6, r5, r4
	ldr r4, [fp, #-40]
	ldr r5, =0
	add r7, r5, #1
	mov r5, #4
	mul r7, r7, r5
	add r5, r4, r7
	ldr r4, [r5]
	ldr r5, [fp, #-24]
	ldr r7, =0
	add r8, r7, #2
	mov r7, #4
	mul r8, r8, r7
	add r7, r5, r8
	ldr r5, [r7]
	mul r7, r4, r5
	add r4, r6, r7
	ldr r5, [fp, #-40]
	ldr r6, =0
	add r7, r6, #2
	mov r6, #4
	mul r6, r7, r6
	add r7, r5, r6
	ldr r5, [r7]
	ldr r6, [fp, #-20]
	ldr r7, =0
	add r8, r7, #2
	mov r7, #4
	mul r8, r8, r7
	add r7, r6, r8
	ldr r6, [r7]
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [fp, #-16]
	ldr r6, =0
	add r7, r6, #2
	mov r6, #4
	mul r7, r7, r6
	add r6, r4, r7
	str r5, [r6]
	ldr r8, [fp, #-36]
	ldr r4, =0
	add r5, r4, #0
	mov r4, #4
	mul r4, r5, r4
	add r5, r8, r4
	ldr r4, [r5]
	ldr r5, [fp, #-28]
	ldr r6, =0
	add r7, r6, #0
	mov r6, #4
	mul r6, r7, r6
	add r7, r5, r6
	ldr r5, [r7]
	mul r6, r4, r5
	ldr r4, [fp, #-36]
	ldr r5, =0
	add r7, r5, #1
	mov r5, #4
	mul r7, r7, r5
	add r5, r4, r7
	ldr r4, [r5]
	ldr r5, [fp, #-24]
	ldr r7, =0
	add r8, r7, #0
	mov r7, #4
	mul r8, r8, r7
	add r7, r5, r8
	ldr r5, [r7]
	mul r7, r4, r5
	add r4, r6, r7
	ldr r5, [fp, #-36]
	ldr r6, =0
	add r7, r6, #2
	mov r6, #4
	mul r7, r7, r6
	add r6, r5, r7
	ldr r5, [r6]
	ldr r6, [fp, #-20]
	ldr r7, =0
	add r8, r7, #0
	mov r7, #4
	mul r8, r8, r7
	add r7, r6, r8
	ldr r6, [r7]
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [fp, #-12]
	ldr r6, =0
	add r7, r6, #0
	mov r6, #4
	mul r7, r7, r6
	add r6, r4, r7
	str r5, [r6]
	ldr r8, [fp, #-36]
	ldr r4, =0
	add r5, r4, #0
	mov r4, #4
	mul r5, r5, r4
	add r4, r8, r5
	ldr r5, [r4]
	ldr r4, [fp, #-28]
	ldr r6, =0
	add r7, r6, #1
	mov r6, #4
	mul r7, r7, r6
	add r6, r4, r7
	ldr r4, [r6]
	mul r6, r5, r4
	ldr r4, [fp, #-36]
	ldr r5, =0
	add r7, r5, #1
	mov r5, #4
	mul r7, r7, r5
	add r5, r4, r7
	ldr r4, [r5]
	ldr r5, [fp, #-24]
	ldr r7, =0
	add r8, r7, #1
	mov r7, #4
	mul r8, r8, r7
	add r7, r5, r8
	ldr r5, [r7]
	mul r7, r4, r5
	add r4, r6, r7
	ldr r5, [fp, #-36]
	ldr r6, =0
	add r7, r6, #2
	mov r6, #4
	mul r7, r7, r6
	add r6, r5, r7
	ldr r5, [r6]
	ldr r6, [fp, #-20]
	ldr r7, =0
	add r8, r7, #1
	mov r7, #4
	mul r8, r8, r7
	add r7, r6, r8
	ldr r6, [r7]
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [fp, #-12]
	ldr r6, =0
	add r7, r6, #1
	mov r6, #4
	mul r7, r7, r6
	add r6, r4, r7
	str r5, [r6]
	ldr r8, [fp, #-36]
	ldr r4, =0
	add r5, r4, #0
	mov r4, #4
	mul r5, r5, r4
	add r4, r8, r5
	ldr r5, [r4]
	ldr r4, [fp, #-28]
	ldr r6, =0
	add r7, r6, #2
	mov r6, #4
	mul r6, r7, r6
	add r7, r4, r6
	ldr r4, [r7]
	mul r6, r5, r4
	ldr r4, [fp, #-36]
	ldr r5, =0
	add r7, r5, #1
	mov r5, #4
	b .B0
.LTORG
addr_M0:
	.word M
addr_L0:
	.word L
addr_N0:
	.word N
.B0:
	mul r7, r7, r5
	add r5, r4, r7
	ldr r4, [r5]
	ldr r5, [fp, #-24]
	ldr r7, =0
	add r8, r7, #2
	mov r7, #4
	mul r7, r8, r7
	add r8, r5, r7
	ldr r5, [r8]
	mul r7, r4, r5
	add r4, r6, r7
	ldr r5, [fp, #-36]
	ldr r6, =0
	add r7, r6, #2
	mov r6, #4
	mul r7, r7, r6
	add r6, r5, r7
	ldr r5, [r6]
	ldr r6, [fp, #-20]
	ldr r7, =0
	add r8, r7, #2
	mov r7, #4
	mul r7, r8, r7
	add r8, r6, r7
	ldr r6, [r8]
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [fp, #-12]
	ldr r6, =0
	add r7, r6, #2
	mov r6, #4
	mul r7, r7, r6
	add r6, r4, r7
	str r5, [r6]
	ldr r8, [fp, #-32]
	ldr r4, =0
	add r5, r4, #0
	mov r4, #4
	mul r4, r5, r4
	add r5, r8, r4
	ldr r4, [r5]
	ldr r5, [fp, #-28]
	ldr r6, =0
	add r7, r6, #0
	mov r6, #4
	mul r7, r7, r6
	add r6, r5, r7
	ldr r5, [r6]
	mul r6, r4, r5
	ldr r4, [fp, #-32]
	ldr r5, =0
	add r7, r5, #1
	mov r5, #4
	mul r5, r7, r5
	add r7, r4, r5
	ldr r4, [r7]
	ldr r5, [fp, #-24]
	ldr r7, =0
	add r8, r7, #0
	mov r7, #4
	mul r8, r8, r7
	add r7, r5, r8
	ldr r5, [r7]
	mul r7, r4, r5
	add r4, r6, r7
	ldr r5, [fp, #-32]
	ldr r6, =0
	add r7, r6, #2
	mov r6, #4
	mul r6, r7, r6
	add r7, r5, r6
	ldr r5, [r7]
	ldr r6, [fp, #-20]
	ldr r7, =0
	add r8, r7, #0
	mov r7, #4
	mul r7, r8, r7
	add r8, r6, r7
	ldr r6, [r8]
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [fp, #-8]
	ldr r6, =0
	add r7, r6, #0
	mov r6, #4
	mul r7, r7, r6
	add r6, r4, r7
	str r5, [r6]
	ldr r8, [fp, #-32]
	ldr r4, =0
	add r5, r4, #0
	mov r4, #4
	mul r5, r5, r4
	add r4, r8, r5
	ldr r5, [r4]
	ldr r4, [fp, #-28]
	ldr r6, =0
	add r7, r6, #1
	mov r6, #4
	mul r7, r7, r6
	add r6, r4, r7
	ldr r4, [r6]
	mul r6, r5, r4
	ldr r4, [fp, #-32]
	ldr r5, =0
	add r7, r5, #1
	mov r5, #4
	mul r7, r7, r5
	add r5, r4, r7
	ldr r4, [r5]
	ldr r5, [fp, #-24]
	ldr r7, =0
	add r8, r7, #1
	mov r7, #4
	mul r8, r8, r7
	add r7, r5, r8
	ldr r5, [r7]
	mul r7, r4, r5
	add r4, r6, r7
	ldr r5, [fp, #-32]
	ldr r6, =0
	add r7, r6, #2
	mov r6, #4
	mul r7, r7, r6
	add r6, r5, r7
	ldr r5, [r6]
	ldr r6, [fp, #-20]
	ldr r7, =0
	add r8, r7, #1
	mov r7, #4
	mul r8, r8, r7
	add r7, r6, r8
	ldr r6, [r7]
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [fp, #-8]
	ldr r6, =0
	add r7, r6, #1
	mov r6, #4
	mul r7, r7, r6
	add r6, r4, r7
	str r5, [r6]
	ldr r8, [fp, #-32]
	ldr r4, =0
	add r5, r4, #0
	mov r4, #4
	mul r5, r5, r4
	add r4, r8, r5
	ldr r5, [r4]
	ldr r4, [fp, #-28]
	ldr r6, =0
	add r7, r6, #2
	mov r6, #4
	mul r7, r7, r6
	add r6, r4, r7
	ldr r4, [r6]
	mul r6, r5, r4
	ldr r4, [fp, #-32]
	ldr r5, =0
	add r7, r5, #1
	mov r5, #4
	mul r7, r7, r5
	add r5, r4, r7
	ldr r4, [r5]
	ldr r5, [fp, #-24]
	ldr r7, =0
	add r8, r7, #2
	mov r7, #4
	mul r7, r8, r7
	add r8, r5, r7
	ldr r5, [r8]
	mul r7, r4, r5
	add r4, r6, r7
	ldr r5, [fp, #-32]
	ldr r6, =0
	add r7, r6, #2
	mov r6, #4
	mul r7, r7, r6
	add r6, r5, r7
	ldr r5, [r6]
	ldr r6, [fp, #-20]
	ldr r7, =0
	add r8, r7, #2
	mov r7, #4
	mul r8, r8, r7
	add r7, r6, r8
	ldr r6, [r7]
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [fp, #-8]
	ldr r6, =0
	add r7, r6, #2
	mov r6, #4
	mul r7, r7, r6
	add r6, r4, r7
	str r5, [r6]
	ldr r8, =0
	mov r0, r8
	add sp, sp, #40
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
	b .F1
.LTORG
addr_M1:
	.word M
addr_L1:
	.word L
addr_N1:
	.word N
.F1:
.L473:
	add sp, sp, #40
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #140
.L474:
	ldr r4, =3
	ldr r5, addr_N2
	str r4, [r5]
	ldr r6, =3
	ldr r4, addr_M2
	str r6, [r4]
	ldr r5, =3
	ldr r4, addr_L2
	str r5, [r4]
	ldr r6, =0
	str r6, [fp, #-8]
	b .L485
.L485:
	ldr r7, [fp, #-8]
	ldr r4, addr_M2
	ldr r5, [r4]
	cmp r7, r5
	movlt r6, #1
	movge r6, #0
	blt .L486
	b .L490
.L486:
	ldr r8, [fp, #-8]
	ldr r4, [fp, #-8]
	ldr r5, =0
	add r6, r5, r4
	mov r4, #4
	mul r4, r6, r4
	mov r5, #-128
	add r5, r5, r4
	add r4, fp, r5
	str r8, [r4]
	ldr r6, [fp, #-8]
	ldr r4, [fp, #-8]
	ldr r5, =0
	add r7, r5, r4
	mov r4, #4
	mul r4, r7, r4
	mov r5, #-116
	add r4, r5, r4
	add r5, fp, r4
	str r6, [r5]
	ldr r7, [fp, #-8]
	ldr r4, [fp, #-8]
	ldr r5, =0
	add r6, r5, r4
	mov r4, #4
	mul r4, r6, r4
	mov r5, #-104
	add r4, r5, r4
	add r5, fp, r4
	str r7, [r5]
	ldr r6, [fp, #-8]
	ldr r4, [fp, #-8]
	ldr r5, =0
	add r7, r5, r4
	mov r4, #4
	mul r4, r7, r4
	mov r5, #-92
	add r5, r5, r4
	add r4, fp, r5
	str r6, [r4]
	ldr r7, [fp, #-8]
	ldr r4, [fp, #-8]
	ldr r5, =0
	add r6, r5, r4
	mov r4, #4
	mul r4, r6, r4
	mov r5, #-80
	add r5, r5, r4
	add r4, fp, r5
	str r7, [r4]
	ldr r6, [fp, #-8]
	ldr r4, [fp, #-8]
	ldr r5, =0
	add r7, r5, r4
	mov r4, #4
	mul r4, r7, r4
	mov r5, #-68
	add r5, r5, r4
	add r4, fp, r5
	str r6, [r4]
	ldr r7, [fp, #-8]
	add r4, r7, #1
	str r4, [fp, #-8]
	b .L485
.L487:
	mov r5, #0
	mov r4, #4
	mul r6, r5, r4
	mov r4, #-128
	add r5, r4, r6
	add r4, fp, r5
	mov r5, #0
	mov r6, #4
	mul r5, r5, r6
	mov r6, #-116
	add r6, r6, r5
	add r5, fp, r6
	mov r6, #0
	mov r7, #4
	mul r6, r6, r7
	mov r7, #-104
	add r6, r7, r6
	add r7, fp, r6
	mov r6, #0
	mov r8, #4
	mul r6, r6, r8
	mov r8, #-92
	add r8, r8, r6
	add r6, fp, r8
	mov r8, #0
	mov r9, #4
	mul r8, r8, r9
	mov r9, #-80
	add r9, r9, r8
	add r8, fp, r9
	str r8, [fp, #-132]
	mov r8, #0
	mov r9, #4
	mul r8, r8, r9
	mov r9, #-68
	add r9, r9, r8
	add r8, fp, r9
	str r8, [fp, #-136]
	mov r8, #0
	mov r9, #4
	mul r8, r8, r9
	mov r9, #-56
	add r9, r9, r8
	add r8, fp, r9
	str r8, [fp, #-140]
	mov r8, #0
	mov r9, #4
	mul r8, r8, r9
	mov r9, #-32
	add r9, r9, r8
	add r8, fp, r9
	mov r9, #0
	mov r10, #4
	mul r9, r9, r10
	mov r10, #-20
	add r10, r10, r9
	add r9, fp, r10
	mov r0, r4
	mov r1, r5
	mov r2, r7
	mov r3, r6
	push {r9}
	push {r8}
	ldr r10, [fp, #-140]
	push {r10}
	ldr r4, [fp, #-136]
	push {r4}
	ldr r5, [fp, #-132]
	push {r5}
	bl mul
	add sp, sp, #20
	mov r7, r0
	str r7, [fp, #-8]
	b .L504
	b .F2
.LTORG
addr_M2:
	.word M
addr_L2:
	.word L
addr_N2:
	.word N
.F2:
.L488:
	add sp, sp, #140
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L489:
	add sp, sp, #140
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L490:
	b .L487
.L504:
	ldr r6, [fp, #-8]
	ldr r4, addr_N3
	ldr r5, [r4]
	cmp r6, r5
	movlt r7, #1
	movge r7, #0
	blt .L505
	b .L509
.L505:
	ldr r8, [fp, #-8]
	ldr r4, =0
	add r5, r4, r8
	mov r4, #4
	mul r6, r5, r4
	mov r4, #-56
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, [r5]
	str r4, [fp, #-4]
	ldr r6, [fp, #-4]
	mov r0, r6
	bl putint
	ldr r7, [fp, #-8]
	add r4, r7, #1
	str r4, [fp, #-8]
	b .L504
.L506:
	ldr r5, =10
	str r5, [fp, #-4]
	ldr r6, =0
	str r6, [fp, #-8]
	ldr r8, [fp, #-4]
	mov r0, r8
	bl putch
	b .L513
.L507:
	add sp, sp, #140
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L508:
	add sp, sp, #140
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L509:
	b .L506
.L513:
	ldr r9, [fp, #-8]
	ldr r4, addr_N3
	ldr r5, [r4]
	cmp r9, r5
	movlt r6, #1
	movge r6, #0
	blt .L514
	b .L518
.L514:
	ldr r7, [fp, #-8]
	ldr r4, =0
	add r5, r4, r7
	mov r4, #4
	mul r6, r5, r4
	mov r4, #-32
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, [r5]
	str r4, [fp, #-4]
	ldr r6, [fp, #-4]
	mov r0, r6
	bl putint
	ldr r7, [fp, #-8]
	add r4, r7, #1
	str r4, [fp, #-8]
	b .L513
.L515:
	ldr r5, =10
	str r5, [fp, #-4]
	ldr r6, =0
	str r6, [fp, #-8]
	ldr r8, [fp, #-4]
	mov r0, r8
	bl putch
	b .L522
.L516:
	add sp, sp, #140
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L517:
	add sp, sp, #140
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L518:
	b .L515
.L522:
	ldr r9, [fp, #-8]
	ldr r4, addr_N3
	ldr r5, [r4]
	cmp r9, r5
	movlt r6, #1
	movge r6, #0
	blt .L523
	b .L527
.L523:
	ldr r7, [fp, #-8]
	ldr r4, =0
	add r5, r4, r7
	mov r4, #4
	mul r6, r5, r4
	mov r4, #-20
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, [r5]
	str r4, [fp, #-4]
	ldr r6, [fp, #-4]
	mov r0, r6
	bl putint
	ldr r7, [fp, #-8]
	add r4, r7, #1
	str r4, [fp, #-8]
	b .L522
.L524:
	ldr r5, =10
	str r5, [fp, #-4]
	ldr r6, [fp, #-4]
	mov r0, r6
	bl putch
	ldr r8, =0
	mov r0, r8
	add sp, sp, #140
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
	b .F3
.LTORG
addr_M3:
	.word M
addr_L3:
	.word L
addr_N3:
	.word N
.F3:
.L525:
	add sp, sp, #140
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L526:
	add sp, sp, #140
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L527:
	b .L524
.L531:
	add sp, sp, #140
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

addr_M4:
	.word M
addr_L4:
	.word L
addr_N4:
	.word N
