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
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #132
.L164:
	bl getint
	mov r4, r0
	str r4, [fp, #-12]
	b .L196
.L196:
	ldr r5, [fp, #-12]
	ldr r4, =5
	cmp r5, r4
	moveq r6, #1
	movne r6, #0
	beq .L197
	b .L201
.L197:
	ldr r7, [fp, #-12]
	add r4, r7, #1
	str r4, [fp, #-12]
	b .L196
.L198:
	ldr r5, =0
	str r5, [fp, #-132]
	ldr r6, [fp, #-132]
	add r4, r6, #1
	str r4, [fp, #-128]
	ldr r5, [fp, #-128]
	add r4, r5, #1
	str r4, [fp, #-124]
	ldr r6, [fp, #-124]
	add r4, r6, #1
	str r4, [fp, #-120]
	ldr r5, [fp, #-120]
	add r4, r5, #1
	str r4, [fp, #-116]
	ldr r6, [fp, #-116]
	add r4, r6, #1
	str r4, [fp, #-112]
	ldr r5, [fp, #-112]
	add r4, r5, #1
	str r4, [fp, #-108]
	ldr r6, [fp, #-108]
	add r4, r6, #1
	str r4, [fp, #-104]
	ldr r5, [fp, #-104]
	add r4, r5, #1
	str r4, [fp, #-100]
	ldr r6, [fp, #-100]
	add r4, r6, #1
	str r4, [fp, #-96]
	ldr r5, [fp, #-96]
	add r4, r5, #1
	str r4, [fp, #-92]
	ldr r6, [fp, #-92]
	add r4, r6, #1
	str r4, [fp, #-88]
	ldr r5, [fp, #-88]
	add r4, r5, #1
	str r4, [fp, #-84]
	ldr r6, [fp, #-84]
	add r4, r6, #1
	str r4, [fp, #-80]
	ldr r5, [fp, #-80]
	add r4, r5, #1
	str r4, [fp, #-76]
	ldr r6, [fp, #-76]
	add r4, r6, #1
	str r4, [fp, #-72]
	ldr r5, [fp, #-72]
	add r4, r5, #1
	str r4, [fp, #-68]
	ldr r6, [fp, #-68]
	add r4, r6, #1
	str r4, [fp, #-64]
	ldr r5, [fp, #-64]
	add r4, r5, #1
	str r4, [fp, #-60]
	ldr r6, [fp, #-60]
	add r4, r6, #1
	str r4, [fp, #-56]
	ldr r5, [fp, #-56]
	add r4, r5, #1
	str r4, [fp, #-52]
	ldr r6, [fp, #-52]
	add r4, r6, #1
	str r4, [fp, #-48]
	ldr r5, [fp, #-48]
	add r4, r5, #1
	str r4, [fp, #-44]
	ldr r6, [fp, #-44]
	add r4, r6, #1
	str r4, [fp, #-40]
	ldr r5, [fp, #-40]
	add r4, r5, #1
	str r4, [fp, #-36]
	ldr r6, [fp, #-36]
	add r4, r6, #1
	str r4, [fp, #-32]
	ldr r5, [fp, #-32]
	add r4, r5, #1
	str r4, [fp, #-28]
	ldr r6, [fp, #-28]
	add r4, r6, #1
	str r4, [fp, #-24]
	ldr r5, [fp, #-24]
	add r4, r5, #1
	str r4, [fp, #-20]
	ldr r6, [fp, #-20]
	add r4, r6, #1
	str r4, [fp, #-16]
	ldr r5, [fp, #-132]
	mov r0, r5
	bl putint
	ldr r7, [fp, #-128]
	mov r0, r7
	bl putint
	ldr r8, [fp, #-124]
	mov r0, r8
	bl putint
	ldr r9, [fp, #-120]
	mov r0, r9
	bl putint
	ldr r10, [fp, #-116]
	mov r0, r10
	bl putint
	ldr r6, [fp, #-112]
	mov r0, r6
	bl putint
	ldr r4, [fp, #-108]
	mov r0, r4
	bl putint
	ldr r5, [fp, #-104]
	mov r0, r5
	bl putint
	ldr r7, [fp, #-100]
	mov r0, r7
	bl putint
	ldr r8, [fp, #-96]
	mov r0, r8
	bl putint
	ldr r9, [fp, #-92]
	mov r0, r9
	bl putint
	ldr r10, [fp, #-88]
	mov r0, r10
	bl putint
	ldr r6, [fp, #-84]
	mov r0, r6
	bl putint
	ldr r4, [fp, #-80]
	mov r0, r4
	bl putint
	ldr r5, [fp, #-76]
	mov r0, r5
	bl putint
	ldr r7, [fp, #-72]
	mov r0, r7
	bl putint
	ldr r8, [fp, #-68]
	mov r0, r8
	bl putint
	ldr r9, [fp, #-64]
	mov r0, r9
	bl putint
	ldr r10, [fp, #-60]
	mov r0, r10
	bl putint
	ldr r6, [fp, #-56]
	mov r0, r6
	bl putint
	ldr r4, [fp, #-52]
	mov r0, r4
	bl putint
	ldr r5, [fp, #-48]
	mov r0, r5
	bl putint
	ldr r7, [fp, #-44]
	mov r0, r7
	bl putint
	ldr r8, [fp, #-40]
	mov r0, r8
	bl putint
	ldr r9, [fp, #-36]
	mov r0, r9
	bl putint
	ldr r10, [fp, #-32]
	mov r0, r10
	bl putint
	ldr r6, [fp, #-28]
	mov r0, r6
	bl putint
	ldr r4, [fp, #-24]
	mov r0, r4
	bl putint
	ldr r5, [fp, #-20]
	mov r0, r5
	bl putint
	ldr r7, [fp, #-16]
	mov r0, r7
	bl putint
	ldr r8, =10
	str r8, [fp, #-4]
	ldr r9, [fp, #-4]
	mov r0, r9
	bl putch
	ldr r10, [fp, #-12]
	mov r0, r10
	bl putint
	ldr r6, [fp, #-4]
	mov r0, r6
	bl putch
	ldr r4, [fp, #-32]
	mov r0, r4
	add sp, sp, #132
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
	b .F0
.LTORG
addr_n0:
	.word n
.F0:
.L199:
	add sp, sp, #132
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L200:
	add sp, sp, #132
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L201:
	b .L198
.L204:
	add sp, sp, #132
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

addr_n1:
	.word n
