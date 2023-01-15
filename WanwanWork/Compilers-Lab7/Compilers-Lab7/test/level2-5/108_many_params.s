	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global sort
	.type sort , %function
sort:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #20
.L546:
	str r0, [fp, #-20]
	str r1, [fp, #-16]
	ldr r10, =0
	str r10, [fp, #-12]
	b .L550
.L550:
	ldr r9, [fp, #-12]
	ldr r4, [fp, #-16]
	sub r5, r4, #1
	cmp r9, r5
	movlt r6, #1
	movge r6, #0
	blt .L551
	b .L555
.L551:
	ldr r7, [fp, #-12]
	add r4, r7, #1
	str r4, [fp, #-8]
	b .L557
.L552:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L553:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L554:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L555:
	b .L552
.L557:
	ldr r5, [fp, #-8]
	ldr r4, [fp, #-16]
	cmp r5, r4
	movlt r6, #1
	movge r6, #0
	blt .L558
	b .L562
.L558:
	ldr r7, [fp, #-20]
	ldr r4, [fp, #-12]
	mov r5, #4
	mul r4, r4, r5
	add r5, r7, r4
	ldr r4, [r5]
	ldr r5, [fp, #-20]
	ldr r6, [fp, #-8]
	mov r7, #4
	mul r7, r6, r7
	add r6, r5, r7
	ldr r5, [r6]
	cmp r4, r5
	movlt r7, #1
	movge r7, #0
	blt .L563
	b .L571
.L559:
	ldr r8, [fp, #-12]
	add r4, r8, #1
	str r4, [fp, #-12]
	b .L550
.L560:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L561:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L562:
	b .L559
.L563:
	ldr r5, [fp, #-20]
	ldr r4, [fp, #-12]
	mov r6, #4
	mul r6, r4, r6
	add r4, r5, r6
	ldr r5, [r4]
	str r5, [fp, #-4]
	ldr r6, [fp, #-20]
	ldr r4, [fp, #-8]
	mov r5, #4
	mul r5, r4, r5
	add r4, r6, r5
	ldr r5, [r4]
	ldr r4, [fp, #-20]
	ldr r6, [fp, #-12]
	mov r7, #4
	mul r7, r6, r7
	add r6, r4, r7
	str r5, [r6]
	ldr r8, [fp, #-4]
	ldr r4, [fp, #-20]
	ldr r5, [fp, #-8]
	mov r6, #4
	mul r6, r5, r6
	add r5, r4, r6
	str r8, [r5]
	b .L564
.L564:
	ldr r7, [fp, #-8]
	add r4, r7, #1
	str r4, [fp, #-8]
	b .L557
.L569:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L570:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L571:
	b .L564

	.global param32_rec
	.type param32_rec , %function
param32_rec:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #224
.L579:
	str r0, [fp, #-128]
	str r1, [fp, #-124]
	str r2, [fp, #-120]
	str r3, [fp, #-116]
	ldr r3, [fp, #36]
	str r3, [fp, #-112]
	ldr r3, [fp, #40]
	str r3, [fp, #-108]
	ldr r3, [fp, #44]
	str r3, [fp, #-104]
	ldr r3, [fp, #48]
	str r3, [fp, #-100]
	ldr r3, [fp, #52]
	str r3, [fp, #-96]
	ldr r3, [fp, #56]
	str r3, [fp, #-92]
	ldr r3, [fp, #60]
	str r3, [fp, #-88]
	ldr r3, [fp, #64]
	str r3, [fp, #-84]
	ldr r3, [fp, #68]
	str r3, [fp, #-80]
	ldr r3, [fp, #72]
	str r3, [fp, #-76]
	ldr r3, [fp, #76]
	str r3, [fp, #-72]
	ldr r3, [fp, #80]
	str r3, [fp, #-68]
	ldr r3, [fp, #84]
	str r3, [fp, #-64]
	ldr r3, [fp, #88]
	str r3, [fp, #-60]
	ldr r3, [fp, #92]
	str r3, [fp, #-56]
	ldr r3, [fp, #96]
	str r3, [fp, #-52]
	ldr r3, [fp, #100]
	str r3, [fp, #-48]
	ldr r3, [fp, #104]
	str r3, [fp, #-44]
	ldr r3, [fp, #108]
	str r3, [fp, #-40]
	ldr r3, [fp, #112]
	str r3, [fp, #-36]
	ldr r3, [fp, #116]
	str r3, [fp, #-32]
	ldr r3, [fp, #120]
	str r3, [fp, #-28]
	ldr r3, [fp, #124]
	str r3, [fp, #-24]
	ldr r3, [fp, #128]
	str r3, [fp, #-20]
	ldr r3, [fp, #132]
	str r3, [fp, #-16]
	ldr r3, [fp, #136]
	str r3, [fp, #-12]
	ldr r3, [fp, #140]
	str r3, [fp, #-8]
	ldr r3, [fp, #144]
	str r3, [fp, #-4]
	ldr r10, [fp, #-128]
	cmp r10, #0
	beq .L612
	b .L617
.L612:
	ldr r9, [fp, #-124]
	mov r0, r9
	add sp, sp, #224
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L613:
	ldr r8, [fp, #-128]
	sub r4, r8, #1
	ldr r5, [fp, #-124]
	ldr r6, [fp, #-120]
	add r7, r5, r6
	ldr r5, =998244353
	sdiv r6, r7, r5
	mul r5, r6, r5
	sub r6, r7, r5
	ldr r5, [fp, #-116]
	ldr r7, [fp, #-112]
	ldr r8, [fp, #-108]
	str r8, [fp, #-132]
	ldr r8, [fp, #-104]
	str r8, [fp, #-136]
	ldr r8, [fp, #-100]
	str r8, [fp, #-140]
	ldr r8, [fp, #-96]
	str r8, [fp, #-144]
	ldr r8, [fp, #-92]
	str r8, [fp, #-148]
	ldr r8, [fp, #-88]
	str r8, [fp, #-152]
	ldr r8, [fp, #-84]
	str r8, [fp, #-156]
	ldr r8, [fp, #-80]
	str r8, [fp, #-160]
	ldr r8, [fp, #-76]
	str r8, [fp, #-164]
	ldr r8, [fp, #-72]
	str r8, [fp, #-168]
	ldr r8, [fp, #-68]
	str r8, [fp, #-172]
	ldr r8, [fp, #-64]
	str r8, [fp, #-176]
	ldr r8, [fp, #-60]
	str r8, [fp, #-180]
	ldr r8, [fp, #-56]
	str r8, [fp, #-184]
	ldr r8, [fp, #-52]
	str r8, [fp, #-188]
	ldr r8, [fp, #-48]
	str r8, [fp, #-192]
	ldr r8, [fp, #-44]
	str r8, [fp, #-196]
	ldr r8, [fp, #-40]
	str r8, [fp, #-200]
	ldr r8, [fp, #-36]
	str r8, [fp, #-204]
	ldr r8, [fp, #-32]
	str r8, [fp, #-208]
	ldr r8, [fp, #-28]
	str r8, [fp, #-212]
	ldr r8, [fp, #-24]
	str r8, [fp, #-216]
	ldr r8, [fp, #-20]
	str r8, [fp, #-220]
	ldr r8, [fp, #-16]
	str r8, [fp, #-224]
	ldr r8, [fp, #-12]
	ldr r9, [fp, #-8]
	ldr r10, [fp, #-4]
	mov r0, r4
	mov r1, r6
	mov r2, r5
	mov r3, r7
	mov r4, #0
	push {r4}
	push {r10}
	push {r9}
	push {r8}
	ldr r5, [fp, #-224]
	push {r5}
	ldr r6, [fp, #-220]
	push {r6}
	ldr r7, [fp, #-216]
	push {r7}
	ldr r4, [fp, #-212]
	push {r4}
	ldr r10, [fp, #-208]
	push {r10}
	ldr r9, [fp, #-204]
	push {r9}
	ldr r8, [fp, #-200]
	push {r8}
	ldr r5, [fp, #-196]
	push {r5}
	ldr r6, [fp, #-192]
	push {r6}
	ldr r7, [fp, #-188]
	push {r7}
	ldr r4, [fp, #-184]
	push {r4}
	ldr r10, [fp, #-180]
	push {r10}
	ldr r9, [fp, #-176]
	push {r9}
	ldr r8, [fp, #-172]
	push {r8}
	ldr r5, [fp, #-168]
	push {r5}
	ldr r6, [fp, #-164]
	push {r6}
	ldr r7, [fp, #-160]
	push {r7}
	ldr r4, [fp, #-156]
	push {r4}
	ldr r10, [fp, #-152]
	push {r10}
	ldr r9, [fp, #-148]
	push {r9}
	ldr r8, [fp, #-144]
	push {r8}
	ldr r5, [fp, #-140]
	push {r5}
	ldr r6, [fp, #-136]
	push {r6}
	ldr r7, [fp, #-132]
	push {r7}
	bl param32_rec
	add sp, sp, #112
	mov r4, r0
	mov r0, r4
	add sp, sp, #224
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L614:
	add sp, sp, #224
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L615:
	add sp, sp, #224
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L616:
	add sp, sp, #224
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L617:
	b .L613
.L618:
	b .L614
.L619:
	b .L614

	.global param32_arr
	.type param32_arr , %function
param32_arr:
	push {r4, r5, r6, r7, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #132
.L620:
	str r0, [fp, #-132]
	str r1, [fp, #-128]
	str r2, [fp, #-124]
	str r3, [fp, #-120]
	ldr r3, [fp, #28]
	str r3, [fp, #-116]
	ldr r3, [fp, #32]
	str r3, [fp, #-112]
	ldr r3, [fp, #36]
	str r3, [fp, #-108]
	ldr r3, [fp, #40]
	str r3, [fp, #-104]
	ldr r3, [fp, #44]
	str r3, [fp, #-100]
	ldr r3, [fp, #48]
	str r3, [fp, #-96]
	ldr r3, [fp, #52]
	str r3, [fp, #-92]
	ldr r3, [fp, #56]
	str r3, [fp, #-88]
	ldr r3, [fp, #60]
	str r3, [fp, #-84]
	ldr r3, [fp, #64]
	str r3, [fp, #-80]
	ldr r3, [fp, #68]
	str r3, [fp, #-76]
	ldr r3, [fp, #72]
	str r3, [fp, #-72]
	ldr r3, [fp, #76]
	str r3, [fp, #-68]
	ldr r3, [fp, #80]
	str r3, [fp, #-64]
	ldr r3, [fp, #84]
	str r3, [fp, #-60]
	ldr r3, [fp, #88]
	str r3, [fp, #-56]
	ldr r3, [fp, #92]
	str r3, [fp, #-52]
	ldr r3, [fp, #96]
	str r3, [fp, #-48]
	ldr r3, [fp, #100]
	str r3, [fp, #-44]
	ldr r3, [fp, #104]
	str r3, [fp, #-40]
	ldr r3, [fp, #108]
	str r3, [fp, #-36]
	ldr r3, [fp, #112]
	str r3, [fp, #-32]
	ldr r3, [fp, #116]
	str r3, [fp, #-28]
	ldr r3, [fp, #120]
	str r3, [fp, #-24]
	ldr r3, [fp, #124]
	str r3, [fp, #-20]
	ldr r3, [fp, #128]
	str r3, [fp, #-16]
	ldr r3, [fp, #132]
	str r3, [fp, #-12]
	ldr r3, [fp, #136]
	str r3, [fp, #-8]
	ldr r10, [fp, #-132]
	mov r4, #0
	mov r5, #4
	mul r5, r4, r5
	add r4, r10, r5
	ldr r5, [r4]
	ldr r4, [fp, #-132]
	mov r6, #1
	mov r7, #4
	mul r7, r6, r7
	add r6, r4, r7
	ldr r4, [r6]
	add r6, r5, r4
	str r6, [fp, #-4]
	ldr r7, [fp, #-4]
	ldr r4, [fp, #-128]
	mov r5, #0
	mov r6, #4
	mul r6, r5, r6
	add r5, r4, r6
	ldr r4, [r5]
	add r5, r7, r4
	ldr r4, [fp, #-128]
	mov r6, #1
	mov r7, #4
	mul r7, r6, r7
	add r6, r4, r7
	ldr r4, [r6]
	add r6, r5, r4
	str r6, [fp, #-4]
	ldr r7, [fp, #-4]
	ldr r4, [fp, #-124]
	mov r5, #0
	mov r6, #4
	mul r6, r5, r6
	add r5, r4, r6
	ldr r4, [r5]
	add r5, r7, r4
	ldr r4, [fp, #-124]
	mov r6, #1
	mov r7, #4
	mul r7, r6, r7
	add r6, r4, r7
	ldr r4, [r6]
	add r6, r5, r4
	str r6, [fp, #-4]
	ldr r7, [fp, #-4]
	ldr r4, [fp, #-120]
	mov r5, #0
	mov r6, #4
	mul r6, r5, r6
	add r5, r4, r6
	ldr r4, [r5]
	add r5, r7, r4
	ldr r4, [fp, #-120]
	mov r6, #1
	mov r7, #4
	mul r7, r6, r7
	add r6, r4, r7
	ldr r4, [r6]
	add r6, r5, r4
	str r6, [fp, #-4]
	ldr r7, [fp, #-4]
	ldr r4, [fp, #-116]
	mov r5, #0
	mov r6, #4
	mul r6, r5, r6
	add r5, r4, r6
	ldr r4, [r5]
	add r5, r7, r4
	ldr r4, [fp, #-116]
	mov r6, #1
	mov r7, #4
	mul r7, r6, r7
	add r6, r4, r7
	ldr r4, [r6]
	add r6, r5, r4
	str r6, [fp, #-4]
	ldr r7, [fp, #-4]
	ldr r4, [fp, #-112]
	mov r5, #0
	mov r6, #4
	mul r6, r5, r6
	add r5, r4, r6
	ldr r4, [r5]
	add r5, r7, r4
	ldr r4, [fp, #-112]
	mov r6, #1
	mov r7, #4
	mul r7, r6, r7
	add r6, r4, r7
	ldr r4, [r6]
	add r6, r5, r4
	str r6, [fp, #-4]
	ldr r7, [fp, #-4]
	ldr r4, [fp, #-108]
	mov r5, #0
	mov r6, #4
	mul r6, r5, r6
	add r5, r4, r6
	ldr r4, [r5]
	add r5, r7, r4
	ldr r4, [fp, #-108]
	mov r6, #1
	mov r7, #4
	mul r6, r6, r7
	add r7, r4, r6
	ldr r4, [r7]
	add r6, r5, r4
	str r6, [fp, #-4]
	ldr r7, [fp, #-4]
	ldr r4, [fp, #-104]
	mov r5, #0
	mov r6, #4
	mul r6, r5, r6
	add r5, r4, r6
	ldr r4, [r5]
	add r5, r7, r4
	ldr r4, [fp, #-104]
	mov r6, #1
	mov r7, #4
	mul r6, r6, r7
	add r7, r4, r6
	ldr r4, [r7]
	add r6, r5, r4
	str r6, [fp, #-4]
	ldr r7, [fp, #-4]
	ldr r4, [fp, #-100]
	mov r5, #0
	mov r6, #4
	mul r5, r5, r6
	add r6, r4, r5
	ldr r4, [r6]
	add r5, r7, r4
	ldr r4, [fp, #-100]
	mov r6, #1
	mov r7, #4
	mul r7, r6, r7
	add r6, r4, r7
	ldr r4, [r6]
	add r6, r5, r4
	str r6, [fp, #-4]
	ldr r7, [fp, #-4]
	ldr r4, [fp, #-96]
	mov r5, #0
	mov r6, #4
	mul r6, r5, r6
	add r5, r4, r6
	ldr r4, [r5]
	add r5, r7, r4
	ldr r4, [fp, #-96]
	mov r6, #1
	mov r7, #4
	mul r7, r6, r7
	add r6, r4, r7
	ldr r4, [r6]
	add r6, r5, r4
	str r6, [fp, #-4]
	ldr r7, [fp, #-4]
	ldr r4, [fp, #-92]
	mov r5, #0
	mov r6, #4
	mul r6, r5, r6
	add r5, r4, r6
	ldr r4, [r5]
	add r5, r7, r4
	ldr r4, [fp, #-92]
	mov r6, #1
	mov r7, #4
	mul r7, r6, r7
	add r6, r4, r7
	ldr r4, [r6]
	add r6, r5, r4
	str r6, [fp, #-4]
	ldr r7, [fp, #-4]
	ldr r4, [fp, #-88]
	mov r5, #0
	mov r6, #4
	mul r6, r5, r6
	add r5, r4, r6
	ldr r4, [r5]
	add r5, r7, r4
	ldr r4, [fp, #-88]
	mov r6, #1
	mov r7, #4
	mul r7, r6, r7
	add r6, r4, r7
	ldr r4, [r6]
	add r6, r5, r4
	str r6, [fp, #-4]
	ldr r7, [fp, #-4]
	ldr r4, [fp, #-84]
	mov r5, #0
	mov r6, #4
	mul r6, r5, r6
	add r5, r4, r6
	ldr r4, [r5]
	add r5, r7, r4
	ldr r4, [fp, #-84]
	mov r6, #1
	mov r7, #4
	mul r7, r6, r7
	add r6, r4, r7
	ldr r4, [r6]
	add r6, r5, r4
	str r6, [fp, #-4]
	ldr r7, [fp, #-4]
	ldr r4, [fp, #-80]
	mov r5, #0
	mov r6, #4
	mul r6, r5, r6
	add r5, r4, r6
	ldr r4, [r5]
	add r5, r7, r4
	ldr r4, [fp, #-80]
	mov r6, #1
	mov r7, #4
	mul r6, r6, r7
	add r7, r4, r6
	ldr r4, [r7]
	add r6, r5, r4
	str r6, [fp, #-4]
	ldr r7, [fp, #-4]
	ldr r4, [fp, #-76]
	mov r5, #0
	mov r6, #4
	mul r5, r5, r6
	add r6, r4, r5
	ldr r4, [r6]
	add r5, r7, r4
	ldr r4, [fp, #-76]
	mov r6, #1
	mov r7, #4
	mul r6, r6, r7
	add r7, r4, r6
	ldr r4, [r7]
	add r6, r5, r4
	str r6, [fp, #-4]
	ldr r7, [fp, #-4]
	ldr r4, [fp, #-72]
	mov r5, #0
	mov r6, #4
	mul r5, r5, r6
	add r6, r4, r5
	ldr r4, [r6]
	add r5, r7, r4
	ldr r4, [fp, #-72]
	mov r6, #1
	mov r7, #4
	mul r6, r6, r7
	add r7, r4, r6
	ldr r4, [r7]
	add r6, r5, r4
	str r6, [fp, #-4]
	ldr r7, [fp, #-4]
	ldr r4, [fp, #-68]
	mov r5, #0
	mov r6, #4
	mul r5, r5, r6
	add r6, r4, r5
	ldr r4, [r6]
	add r5, r7, r4
	ldr r4, [fp, #-68]
	mov r6, #1
	mov r7, #4
	mul r7, r6, r7
	add r6, r4, r7
	ldr r4, [r6]
	add r6, r5, r4
	str r6, [fp, #-4]
	ldr r7, [fp, #-4]
	ldr r4, [fp, #-64]
	mov r5, #0
	mov r6, #4
	mul r6, r5, r6
	add r5, r4, r6
	ldr r4, [r5]
	add r5, r7, r4
	ldr r4, [fp, #-64]
	mov r6, #1
	mov r7, #4
	mul r7, r6, r7
	add r6, r4, r7
	ldr r4, [r6]
	add r6, r5, r4
	str r6, [fp, #-4]
	ldr r7, [fp, #-4]
	ldr r4, [fp, #-60]
	mov r5, #0
	mov r6, #4
	mul r6, r5, r6
	add r5, r4, r6
	ldr r4, [r5]
	add r5, r7, r4
	ldr r4, [fp, #-60]
	mov r6, #1
	mov r7, #4
	mul r6, r6, r7
	add r7, r4, r6
	ldr r4, [r7]
	add r6, r5, r4
	str r6, [fp, #-4]
	ldr r7, [fp, #-4]
	ldr r4, [fp, #-56]
	mov r5, #0
	mov r6, #4
	mul r6, r5, r6
	add r5, r4, r6
	ldr r4, [r5]
	add r5, r7, r4
	ldr r4, [fp, #-56]
	mov r6, #1
	mov r7, #4
	mul r6, r6, r7
	add r7, r4, r6
	ldr r4, [r7]
	add r6, r5, r4
	str r6, [fp, #-4]
	ldr r7, [fp, #-4]
	ldr r4, [fp, #-52]
	mov r5, #0
	mov r6, #4
	mul r6, r5, r6
	add r5, r4, r6
	ldr r4, [r5]
	add r5, r7, r4
	ldr r4, [fp, #-52]
	mov r6, #1
	mov r7, #4
	mul r7, r6, r7
	add r6, r4, r7
	ldr r4, [r6]
	add r6, r5, r4
	str r6, [fp, #-4]
	ldr r7, [fp, #-4]
	ldr r4, [fp, #-48]
	mov r5, #0
	mov r6, #4
	mul r6, r5, r6
	add r5, r4, r6
	ldr r4, [r5]
	add r5, r7, r4
	ldr r4, [fp, #-48]
	mov r6, #1
	mov r7, #4
	mul r7, r6, r7
	add r6, r4, r7
	ldr r4, [r6]
	add r6, r5, r4
	str r6, [fp, #-4]
	ldr r7, [fp, #-4]
	ldr r4, [fp, #-44]
	mov r5, #0
	mov r6, #4
	mul r5, r5, r6
	add r6, r4, r5
	ldr r4, [r6]
	add r5, r7, r4
	ldr r4, [fp, #-44]
	mov r6, #1
	mov r7, #4
	mul r7, r6, r7
	add r6, r4, r7
	ldr r4, [r6]
	add r6, r5, r4
	str r6, [fp, #-4]
	ldr r7, [fp, #-4]
	ldr r4, [fp, #-40]
	mov r5, #0
	mov r6, #4
	mul r6, r5, r6
	add r5, r4, r6
	ldr r4, [r5]
	add r5, r7, r4
	ldr r4, [fp, #-40]
	mov r6, #1
	mov r7, #4
	mul r7, r6, r7
	add r6, r4, r7
	ldr r4, [r6]
	add r6, r5, r4
	str r6, [fp, #-4]
	ldr r7, [fp, #-4]
	ldr r4, [fp, #-36]
	mov r5, #0
	mov r6, #4
	mul r6, r5, r6
	add r5, r4, r6
	ldr r4, [r5]
	add r5, r7, r4
	ldr r4, [fp, #-36]
	mov r6, #1
	mov r7, #4
	mul r6, r6, r7
	add r7, r4, r6
	ldr r4, [r7]
	add r6, r5, r4
	str r6, [fp, #-4]
	ldr r7, [fp, #-4]
	ldr r4, [fp, #-32]
	mov r5, #0
	mov r6, #4
	mul r6, r5, r6
	add r5, r4, r6
	ldr r4, [r5]
	add r5, r7, r4
	ldr r4, [fp, #-32]
	mov r6, #1
	mov r7, #4
	mul r7, r6, r7
	add r6, r4, r7
	ldr r4, [r6]
	add r6, r5, r4
	str r6, [fp, #-4]
	ldr r7, [fp, #-4]
	ldr r4, [fp, #-28]
	mov r5, #0
	mov r6, #4
	mul r6, r5, r6
	add r5, r4, r6
	ldr r4, [r5]
	add r5, r7, r4
	ldr r4, [fp, #-28]
	mov r6, #1
	mov r7, #4
	mul r7, r6, r7
	add r6, r4, r7
	ldr r4, [r6]
	add r6, r5, r4
	str r6, [fp, #-4]
	ldr r7, [fp, #-4]
	ldr r4, [fp, #-24]
	mov r5, #0
	mov r6, #4
	mul r6, r5, r6
	add r5, r4, r6
	ldr r4, [r5]
	add r5, r7, r4
	ldr r4, [fp, #-24]
	mov r6, #1
	mov r7, #4
	mul r7, r6, r7
	add r6, r4, r7
	ldr r4, [r6]
	add r6, r5, r4
	str r6, [fp, #-4]
	ldr r7, [fp, #-4]
	ldr r4, [fp, #-20]
	mov r5, #0
	mov r6, #4
	mul r6, r5, r6
	add r5, r4, r6
	ldr r4, [r5]
	add r5, r7, r4
	ldr r4, [fp, #-20]
	mov r6, #1
	mov r7, #4
	mul r7, r6, r7
	add r6, r4, r7
	ldr r4, [r6]
	add r6, r5, r4
	str r6, [fp, #-4]
	ldr r7, [fp, #-4]
	ldr r4, [fp, #-16]
	mov r5, #0
	mov r6, #4
	mul r5, r5, r6
	add r6, r4, r5
	b .B0
.LTORG
.B0:
	ldr r4, [r6]
	add r5, r7, r4
	ldr r4, [fp, #-16]
	mov r6, #1
	mov r7, #4
	mul r7, r6, r7
	add r6, r4, r7
	ldr r4, [r6]
	add r6, r5, r4
	str r6, [fp, #-4]
	ldr r7, [fp, #-4]
	ldr r4, [fp, #-12]
	mov r5, #0
	mov r6, #4
	mul r5, r5, r6
	add r6, r4, r5
	ldr r4, [r6]
	add r5, r7, r4
	ldr r4, [fp, #-12]
	mov r6, #1
	mov r7, #4
	mul r7, r6, r7
	add r6, r4, r7
	ldr r4, [r6]
	add r6, r5, r4
	str r6, [fp, #-4]
	ldr r7, [fp, #-4]
	ldr r4, [fp, #-8]
	mov r5, #0
	mov r6, #4
	mul r6, r5, r6
	add r5, r4, r6
	ldr r4, [r5]
	add r5, r7, r4
	ldr r4, [fp, #-8]
	mov r6, #1
	mov r7, #4
	mul r7, r6, r7
	add r6, r4, r7
	ldr r4, [r6]
	add r6, r5, r4
	str r6, [fp, #-4]
	ldr r7, [fp, #-4]
	mov r0, r7
	add sp, sp, #132
	pop {r4, r5, r6, r7, r10, fp, lr}
	bx lr
	b .F1
.LTORG
.F1:
.L782:
	add sp, sp, #132
	pop {r4, r5, r6, r7, r10, fp, lr}
	bx lr

	.global param16
	.type param16 , %function
param16:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #228
.L783:
	str r0, [fp, #-128]
	str r1, [fp, #-124]
	str r2, [fp, #-120]
	str r3, [fp, #-116]
	ldr r3, [fp, #36]
	str r3, [fp, #-112]
	ldr r3, [fp, #40]
	str r3, [fp, #-108]
	ldr r3, [fp, #44]
	str r3, [fp, #-104]
	ldr r3, [fp, #48]
	str r3, [fp, #-100]
	ldr r3, [fp, #52]
	str r3, [fp, #-96]
	ldr r3, [fp, #56]
	str r3, [fp, #-92]
	ldr r3, [fp, #60]
	str r3, [fp, #-88]
	ldr r3, [fp, #64]
	str r3, [fp, #-84]
	ldr r3, [fp, #68]
	str r3, [fp, #-80]
	ldr r3, [fp, #72]
	str r3, [fp, #-76]
	ldr r3, [fp, #76]
	str r3, [fp, #-72]
	ldr r3, [fp, #80]
	str r3, [fp, #-68]
	ldr r10, [fp, #-128]
	mov r4, #0
	mov r5, #4
	mul r4, r4, r5
	mov r5, #-64
	add r5, r5, r4
	add r4, fp, r5
	str r10, [r4]
	ldr r5, [fp, #-124]
	add r6, r4, #4
	str r5, [r6]
	ldr r4, [fp, #-120]
	add r5, r6, #4
	str r4, [r5]
	ldr r4, [fp, #-116]
	add r6, r5, #4
	str r4, [r6]
	ldr r4, [fp, #-112]
	add r5, r6, #4
	str r4, [r5]
	ldr r4, [fp, #-108]
	add r6, r5, #4
	str r4, [r6]
	ldr r4, [fp, #-104]
	add r5, r6, #4
	str r4, [r5]
	ldr r4, [fp, #-100]
	add r6, r5, #4
	str r4, [r6]
	ldr r4, [fp, #-96]
	add r5, r6, #4
	str r4, [r5]
	ldr r4, [fp, #-92]
	add r6, r5, #4
	str r4, [r6]
	ldr r4, [fp, #-88]
	add r5, r6, #4
	str r4, [r5]
	ldr r4, [fp, #-84]
	add r6, r5, #4
	str r4, [r6]
	ldr r4, [fp, #-80]
	add r5, r6, #4
	str r4, [r5]
	ldr r4, [fp, #-76]
	add r6, r5, #4
	str r4, [r6]
	ldr r4, [fp, #-72]
	add r5, r6, #4
	str r4, [r5]
	ldr r4, [fp, #-68]
	add r6, r5, #4
	str r4, [r6]
	mov r7, #0
	mov r4, #4
	mul r4, r7, r4
	mov r5, #-64
	add r4, r5, r4
	add r6, fp, r4
	mov r0, r6
	mov r1, #16
	bl sort
	mov r5, #0
	mov r4, #4
	mul r6, r5, r4
	mov r4, #-64
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, [r5]
	mov r5, #1
	mov r6, #4
	mul r5, r5, r6
	mov r6, #-64
	add r5, r6, r5
	add r6, fp, r5
	ldr r5, [r6]
	mov r6, #2
	mov r7, #4
	mul r6, r6, r7
	mov r7, #-64
	add r7, r7, r6
	add r6, fp, r7
	ldr r7, [r6]
	mov r6, #3
	mov r8, #4
	mul r6, r6, r8
	mov r8, #-64
	add r8, r8, r6
	add r6, fp, r8
	ldr r8, [r6]
	mov r6, #4
	mov r9, #4
	mul r9, r6, r9
	mov r6, #-64
	add r9, r6, r9
	add r6, fp, r9
	ldr r9, [r6]
	str r9, [fp, #-132]
	mov r6, #5
	mov r9, #4
	mul r6, r6, r9
	mov r9, #-64
	add r9, r9, r6
	add r6, fp, r9
	ldr r9, [r6]
	str r9, [fp, #-136]
	mov r6, #6
	mov r9, #4
	mul r6, r6, r9
	mov r9, #-64
	add r9, r9, r6
	add r6, fp, r9
	ldr r9, [r6]
	str r9, [fp, #-140]
	mov r6, #7
	mov r9, #4
	mul r6, r6, r9
	mov r9, #-64
	add r9, r9, r6
	add r6, fp, r9
	ldr r9, [r6]
	str r9, [fp, #-144]
	mov r6, #8
	mov r9, #4
	mul r6, r6, r9
	mov r9, #-64
	add r9, r9, r6
	add r6, fp, r9
	ldr r9, [r6]
	str r9, [fp, #-148]
	mov r6, #9
	mov r9, #4
	mul r6, r6, r9
	mov r9, #-64
	add r9, r9, r6
	add r6, fp, r9
	ldr r9, [r6]
	str r9, [fp, #-152]
	mov r6, #10
	mov r9, #4
	mul r6, r6, r9
	mov r9, #-64
	add r9, r9, r6
	add r6, fp, r9
	ldr r9, [r6]
	str r9, [fp, #-156]
	mov r6, #11
	mov r9, #4
	mul r6, r6, r9
	mov r9, #-64
	add r9, r9, r6
	add r6, fp, r9
	ldr r9, [r6]
	str r9, [fp, #-160]
	mov r6, #12
	mov r9, #4
	mul r6, r6, r9
	mov r9, #-64
	add r6, r9, r6
	add r9, fp, r6
	ldr r6, [r9]
	str r6, [fp, #-164]
	mov r6, #13
	mov r9, #4
	mul r6, r6, r9
	mov r9, #-64
	add r9, r9, r6
	add r6, fp, r9
	ldr r9, [r6]
	str r9, [fp, #-168]
	mov r6, #14
	mov r9, #4
	mul r6, r6, r9
	mov r9, #-64
	add r9, r9, r6
	add r6, fp, r9
	ldr r9, [r6]
	str r9, [fp, #-172]
	mov r6, #15
	mov r9, #4
	mul r6, r6, r9
	mov r9, #-64
	add r9, r9, r6
	add r6, fp, r9
	ldr r9, [r6]
	str r9, [fp, #-176]
	ldr r6, [fp, #-128]
	str r6, [fp, #-180]
	ldr r6, [fp, #-124]
	str r6, [fp, #-184]
	ldr r6, [fp, #-120]
	str r6, [fp, #-188]
	ldr r6, [fp, #-116]
	str r6, [fp, #-192]
	ldr r6, [fp, #-112]
	str r6, [fp, #-196]
	ldr r6, [fp, #-108]
	str r6, [fp, #-200]
	ldr r6, [fp, #-104]
	str r6, [fp, #-204]
	ldr r6, [fp, #-100]
	str r6, [fp, #-208]
	ldr r6, [fp, #-96]
	str r6, [fp, #-212]
	ldr r6, [fp, #-92]
	str r6, [fp, #-216]
	ldr r6, [fp, #-88]
	str r6, [fp, #-220]
	ldr r6, [fp, #-84]
	str r6, [fp, #-224]
	ldr r6, [fp, #-80]
	str r6, [fp, #-228]
	ldr r6, [fp, #-76]
	ldr r9, [fp, #-72]
	ldr r10, [fp, #-68]
	mov r0, r4
	mov r1, r5
	mov r2, r7
	mov r3, r8
	push {r10}
	push {r9}
	push {r6}
	ldr r4, [fp, #-228]
	push {r4}
	ldr r5, [fp, #-224]
	push {r5}
	ldr r7, [fp, #-220]
	push {r7}
	ldr r8, [fp, #-216]
	push {r8}
	ldr r10, [fp, #-212]
	push {r10}
	ldr r9, [fp, #-208]
	push {r9}
	ldr r6, [fp, #-204]
	push {r6}
	ldr r4, [fp, #-200]
	push {r4}
	ldr r5, [fp, #-196]
	push {r5}
	ldr r7, [fp, #-192]
	push {r7}
	ldr r8, [fp, #-188]
	push {r8}
	ldr r10, [fp, #-184]
	push {r10}
	ldr r9, [fp, #-180]
	push {r9}
	ldr r6, [fp, #-176]
	push {r6}
	ldr r4, [fp, #-172]
	push {r4}
	ldr r5, [fp, #-168]
	push {r5}
	ldr r7, [fp, #-164]
	push {r7}
	ldr r8, [fp, #-160]
	push {r8}
	ldr r10, [fp, #-156]
	push {r10}
	ldr r9, [fp, #-152]
	push {r9}
	ldr r6, [fp, #-148]
	push {r6}
	ldr r4, [fp, #-144]
	push {r4}
	ldr r5, [fp, #-140]
	push {r5}
	ldr r7, [fp, #-136]
	push {r7}
	ldr r8, [fp, #-132]
	push {r8}
	bl param32_rec
	add sp, sp, #112
	mov r10, r0
	mov r0, r10
	add sp, sp, #228
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
	b .F2
.LTORG
.F2:
.L802:
	add sp, sp, #228
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	ldr r4, =404
	sub sp, sp, r4
.L819:
	bl getint
	mov r10, r0
	bl getint
	mov r4, r0
	bl getint
	mov r5, r0
	bl getint
	mov r6, r0
	bl getint
	mov r7, r0
	str r7, [fp, #-264]
	bl getint
	mov r7, r0
	str r7, [fp, #-268]
	bl getint
	mov r7, r0
	str r7, [fp, #-272]
	bl getint
	mov r7, r0
	str r7, [fp, #-276]
	bl getint
	mov r7, r0
	str r7, [fp, #-280]
	bl getint
	mov r7, r0
	str r7, [fp, #-284]
	bl getint
	mov r7, r0
	str r7, [fp, #-288]
	bl getint
	mov r7, r0
	str r7, [fp, #-292]
	bl getint
	mov r7, r0
	str r7, [fp, #-296]
	bl getint
	mov r7, r0
	bl getint
	mov r8, r0
	bl getint
	mov r9, r0
	mov r0, r10
	mov r1, r4
	mov r2, r5
	mov r3, r6
	push {r9}
	push {r8}
	push {r7}
	ldr r10, [fp, #-296]
	push {r10}
	ldr r4, [fp, #-292]
	push {r4}
	ldr r5, [fp, #-288]
	push {r5}
	ldr r6, [fp, #-284]
	push {r6}
	ldr r9, [fp, #-280]
	push {r9}
	ldr r8, [fp, #-276]
	push {r8}
	ldr r7, [fp, #-272]
	push {r7}
	ldr r10, [fp, #-268]
	push {r10}
	ldr r4, [fp, #-264]
	push {r4}
	bl param16
	add sp, sp, #48
	mov r5, r0
	mov r4, #0
	mov r6, #8
	mul r6, r4, r6
	ldr r4, =-260
	add r4, r4, r6
	add r6, fp, r4
	str r5, [r6]
	add r4, r6, #4
	ldr r5, =8848
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
	ldr r6, =1
	str r6, [fp, #-4]
	b .L823
	b .F3
.LTORG
.F3:
.L823:
	ldr r7, [fp, #-4]
	cmp r7, #32
	movlt r8, #1
	movge r8, #0
	blt .L824
	b .L828
.L824:
	ldr r9, [fp, #-4]
	sub r4, r9, #1
	mov r5, #8
	mul r4, r4, r5
	ldr r6, =-260
	add r5, r6, r4
	add r4, fp, r5
	mov r5, #1
	mov r6, #4
	mul r5, r5, r6
	add r6, r4, r5
	ldr r4, [r6]
	sub r5, r4, #1
	ldr r4, [fp, #-4]
	mov r6, #8
	mul r6, r4, r6
	ldr r4, =-260
	add r4, r4, r6
	add r6, fp, r4
	mov r4, #0
	mov r7, #4
	mul r4, r4, r7
	add r7, r6, r4
	str r5, [r7]
	ldr r8, [fp, #-4]
	sub r4, r8, #1
	mov r5, #8
	mul r6, r4, r5
	ldr r4, =-260
	add r5, r4, r6
	add r4, fp, r5
	mov r5, #0
	mov r6, #4
	mul r6, r5, r6
	add r5, r4, r6
	ldr r4, [r5]
	sub r5, r4, #2
	ldr r4, [fp, #-4]
	mov r6, #8
	mul r6, r4, r6
	ldr r4, =-260
	add r4, r4, r6
	add r6, fp, r4
	mov r4, #1
	mov r7, #4
	mul r4, r4, r7
	add r7, r6, r4
	str r5, [r7]
	ldr r8, [fp, #-4]
	add r4, r8, #1
	str r4, [fp, #-4]
	b .L823
.L825:
	mov r5, #0
	mov r4, #8
	mul r4, r5, r4
	ldr r6, =-260
	add r5, r6, r4
	add r4, fp, r5
	mov r5, #0
	mov r6, #4
	mul r6, r5, r6
	add r5, r4, r6
	mov r4, #1
	mov r6, #8
	mul r4, r4, r6
	ldr r6, =-260
	add r6, r6, r4
	add r4, fp, r6
	mov r6, #0
	mov r7, #4
	mul r6, r6, r7
	add r7, r4, r6
	mov r4, #2
	mov r6, #8
	mul r4, r4, r6
	ldr r6, =-260
	add r4, r6, r4
	add r6, fp, r4
	mov r4, #0
	mov r8, #4
	mul r4, r4, r8
	add r8, r6, r4
	mov r4, #3
	mov r6, #8
	mul r4, r4, r6
	ldr r6, =-260
	add r4, r6, r4
	add r6, fp, r4
	mov r4, #0
	mov r9, #4
	mul r4, r4, r9
	add r9, r6, r4
	mov r4, #4
	mov r6, #8
	mul r4, r4, r6
	ldr r6, =-260
	add r6, r6, r4
	add r4, fp, r6
	mov r6, #0
	mov r10, #4
	mul r10, r6, r10
	add r6, r4, r10
	str r6, [fp, #-300]
	mov r4, #5
	mov r6, #8
	mul r6, r4, r6
	ldr r4, =-260
	add r4, r4, r6
	add r6, fp, r4
	mov r4, #0
	mov r10, #4
	mul r4, r4, r10
	add r10, r6, r4
	str r10, [fp, #-304]
	mov r4, #6
	mov r6, #8
	mul r6, r4, r6
	ldr r4, =-260
	add r6, r4, r6
	add r4, fp, r6
	mov r6, #0
	mov r10, #4
	mul r6, r6, r10
	add r10, r4, r6
	str r10, [fp, #-308]
	mov r4, #7
	mov r6, #8
	mul r6, r4, r6
	ldr r4, =-260
	add r4, r4, r6
	add r6, fp, r4
	mov r4, #0
	mov r10, #4
	mul r4, r4, r10
	add r10, r6, r4
	str r10, [fp, #-312]
	mov r4, #8
	mov r6, #8
	mul r6, r4, r6
	ldr r4, =-260
	add r4, r4, r6
	add r6, fp, r4
	mov r4, #0
	mov r10, #4
	mul r10, r4, r10
	add r4, r6, r10
	str r4, [fp, #-316]
	mov r4, #9
	mov r6, #8
	mul r4, r4, r6
	ldr r6, =-260
	add r6, r6, r4
	add r4, fp, r6
	mov r6, #0
	mov r10, #4
	mul r6, r6, r10
	add r10, r4, r6
	str r10, [fp, #-320]
	mov r4, #10
	mov r6, #8
	mul r4, r4, r6
	ldr r6, =-260
	add r6, r6, r4
	add r4, fp, r6
	mov r6, #0
	mov r10, #4
	mul r6, r6, r10
	add r10, r4, r6
	str r10, [fp, #-324]
	mov r4, #11
	mov r6, #8
	mul r4, r4, r6
	ldr r6, =-260
	add r6, r6, r4
	add r4, fp, r6
	mov r6, #0
	mov r10, #4
	mul r10, r6, r10
	add r6, r4, r10
	str r6, [fp, #-328]
	mov r4, #12
	mov r6, #8
	mul r6, r4, r6
	ldr r4, =-260
	add r4, r4, r6
	add r6, fp, r4
	mov r4, #0
	mov r10, #4
	mul r4, r4, r10
	add r10, r6, r4
	str r10, [fp, #-332]
	mov r4, #13
	mov r6, #8
	mul r4, r4, r6
	ldr r6, =-260
	add r4, r6, r4
	add r6, fp, r4
	mov r4, #0
	mov r10, #4
	mul r10, r4, r10
	add r4, r6, r10
	str r4, [fp, #-336]
	mov r4, #14
	mov r6, #8
	mul r6, r4, r6
	ldr r4, =-260
	add r4, r4, r6
	add r6, fp, r4
	mov r4, #0
	mov r10, #4
	mul r10, r4, r10
	add r4, r6, r10
	str r4, [fp, #-340]
	mov r4, #15
	mov r6, #8
	mul r6, r4, r6
	ldr r4, =-260
	add r6, r4, r6
	add r4, fp, r6
	mov r6, #0
	mov r10, #4
	mul r10, r6, r10
	add r6, r4, r10
	str r6, [fp, #-344]
	mov r4, #16
	mov r6, #8
	mul r4, r4, r6
	ldr r6, =-260
	add r6, r6, r4
	add r4, fp, r6
	mov r6, #0
	mov r10, #4
	mul r6, r6, r10
	add r10, r4, r6
	str r10, [fp, #-348]
	mov r4, #17
	mov r6, #8
	mul r4, r4, r6
	ldr r6, =-260
	add r6, r6, r4
	add r4, fp, r6
	mov r6, #0
	mov r10, #4
	mul r10, r6, r10
	add r6, r4, r10
	str r6, [fp, #-352]
	mov r4, #18
	mov r6, #8
	mul r4, r4, r6
	ldr r6, =-260
	add r4, r6, r4
	add r6, fp, r4
	mov r4, #0
	mov r10, #4
	mul r10, r4, r10
	add r4, r6, r10
	str r4, [fp, #-356]
	mov r4, #19
	mov r6, #8
	mul r4, r4, r6
	ldr r6, =-260
	add r4, r6, r4
	add r6, fp, r4
	mov r4, #0
	mov r10, #4
	mul r10, r4, r10
	add r4, r6, r10
	str r4, [fp, #-360]
	mov r4, #20
	mov r6, #8
	mul r6, r4, r6
	ldr r4, =-260
	add r4, r4, r6
	add r6, fp, r4
	mov r4, #0
	mov r10, #4
	mul r10, r4, r10
	add r4, r6, r10
	str r4, [fp, #-364]
	mov r4, #21
	mov r6, #8
	mul r4, r4, r6
	ldr r6, =-260
	add r4, r6, r4
	add r6, fp, r4
	mov r4, #0
	mov r10, #4
	mul r10, r4, r10
	add r4, r6, r10
	str r4, [fp, #-368]
	mov r4, #22
	mov r6, #8
	mul r4, r4, r6
	ldr r6, =-260
	add r6, r6, r4
	add r4, fp, r6
	mov r6, #0
	mov r10, #4
	mul r10, r6, r10
	add r6, r4, r10
	str r6, [fp, #-372]
	mov r4, #23
	mov r6, #8
	mul r4, r4, r6
	ldr r6, =-260
	add r4, r6, r4
	add r6, fp, r4
	mov r4, #0
	mov r10, #4
	mul r10, r4, r10
	add r4, r6, r10
	str r4, [fp, #-376]
	mov r4, #24
	mov r6, #8
	mul r4, r4, r6
	ldr r6, =-260
	add r4, r6, r4
	add r6, fp, r4
	mov r4, #0
	mov r10, #4
	mul r4, r4, r10
	add r10, r6, r4
	str r10, [fp, #-380]
	mov r4, #25
	mov r6, #8
	mul r4, r4, r6
	ldr r6, =-260
	add r4, r6, r4
	add r6, fp, r4
	mov r4, #0
	mov r10, #4
	mul r10, r4, r10
	add r4, r6, r10
	str r4, [fp, #-384]
	mov r4, #26
	mov r6, #8
	mul r6, r4, r6
	ldr r4, =-260
	add r4, r4, r6
	add r6, fp, r4
	mov r4, #0
	mov r10, #4
	mul r10, r4, r10
	add r4, r6, r10
	str r4, [fp, #-388]
	mov r4, #27
	mov r6, #8
	mul r4, r4, r6
	ldr r6, =-260
	add r4, r6, r4
	add r6, fp, r4
	mov r4, #0
	mov r10, #4
	mul r4, r4, r10
	add r10, r6, r4
	str r10, [fp, #-392]
	mov r4, #28
	mov r6, #8
	mul r6, r4, r6
	ldr r4, =-260
	add r4, r4, r6
	add r6, fp, r4
	mov r4, #0
	mov r10, #4
	mul r4, r4, r10
	add r10, r6, r4
	str r10, [fp, #-396]
	mov r4, #29
	mov r6, #8
	mul r6, r4, r6
	ldr r4, =-260
	add r6, r4, r6
	add r4, fp, r6
	mov r6, #0
	mov r10, #4
	mul r10, r6, r10
	add r6, r4, r10
	str r6, [fp, #-400]
	mov r4, #30
	mov r6, #8
	mul r6, r4, r6
	ldr r4, =-260
	add r4, r4, r6
	add r6, fp, r4
	mov r4, #0
	mov r10, #4
	mul r10, r4, r10
	add r4, r6, r10
	str r4, [fp, #-404]
	mov r4, #31
	mov r6, #8
	mul r6, r4, r6
	ldr r4, =-260
	add r4, r4, r6
	add r6, fp, r4
	mov r4, #0
	mov r10, #4
	mul r10, r4, r10
	add r4, r6, r10
	mov r0, r5
	mov r1, r7
	mov r2, r8
	mov r3, r9
	push {r4}
	ldr r6, [fp, #-404]
	push {r6}
	ldr r10, [fp, #-400]
	push {r10}
	ldr r5, [fp, #-396]
	push {r5}
	ldr r7, [fp, #-392]
	push {r7}
	ldr r8, [fp, #-388]
	push {r8}
	ldr r9, [fp, #-384]
	push {r9}
	ldr r4, [fp, #-380]
	push {r4}
	ldr r6, [fp, #-376]
	push {r6}
	ldr r10, [fp, #-372]
	push {r10}
	ldr r5, [fp, #-368]
	push {r5}
	ldr r7, [fp, #-364]
	push {r7}
	ldr r8, [fp, #-360]
	push {r8}
	ldr r9, [fp, #-356]
	push {r9}
	ldr r4, [fp, #-352]
	push {r4}
	ldr r6, [fp, #-348]
	push {r6}
	ldr r10, [fp, #-344]
	push {r10}
	ldr r5, [fp, #-340]
	push {r5}
	ldr r7, [fp, #-336]
	push {r7}
	ldr r8, [fp, #-332]
	push {r8}
	ldr r9, [fp, #-328]
	push {r9}
	ldr r4, [fp, #-324]
	push {r4}
	ldr r6, [fp, #-320]
	push {r6}
	ldr r10, [fp, #-316]
	push {r10}
	ldr r5, [fp, #-312]
	push {r5}
	ldr r7, [fp, #-308]
	push {r7}
	ldr r8, [fp, #-304]
	push {r8}
	ldr r9, [fp, #-300]
	push {r9}
	bl param32_arr
	add sp, sp, #112
	mov r4, r0
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	ldr r1, =404
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
	b .F4
.LTORG
.F4:
.L826:
	ldr r1, =404
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L827:
	ldr r1, =404
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L828:
	b .L825
.L899:
	ldr r1, =404
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

