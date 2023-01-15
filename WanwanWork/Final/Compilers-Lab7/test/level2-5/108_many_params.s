	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global sort
	.type sort , %function
sort:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #20
.L546:
	str r0, [fp, #-20]
	str r1, [fp, #-16]
	ldr r4, =0
	str r4, [fp, #-12]
	b .L550
.L550:
	ldr r5, [fp, #-12]
	ldr r4, [fp, #-16]
	sub r6, r4, #1
	cmp r5, r6
	movlt r7, #1
	movge r7, #0
	blt .L551
	b .L555
.L551:
	ldr r8, [fp, #-12]
	add r4, r8, #1
	str r4, [fp, #-8]
	b .L557
.L552:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L553:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L554:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, fp, lr}
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
	ldr r5, =0
	add r6, r5, r4
	mov r4, #4
	mul r4, r6, r4
	add r5, r7, r4
	ldr r4, [r5]
	ldr r5, [fp, #-20]
	ldr r6, [fp, #-8]
	ldr r7, =0
	add r8, r7, r6
	mov r6, #4
	mul r6, r8, r6
	add r7, r5, r6
	ldr r5, [r7]
	cmp r4, r5
	movlt r6, #1
	movge r6, #0
	blt .L563
	b .L575
.L559:
	ldr r8, [fp, #-12]
	add r4, r8, #1
	str r4, [fp, #-12]
	b .L550
.L560:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L561:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L562:
	b .L559
.L563:
	ldr r5, [fp, #-20]
	ldr r4, [fp, #-12]
	ldr r6, =0
	add r7, r6, r4
	mov r4, #4
	mul r4, r7, r4
	add r6, r5, r4
	ldr r4, [r6]
	str r4, [fp, #-4]
	ldr r5, [fp, #-20]
	ldr r4, [fp, #-8]
	ldr r6, =0
	add r7, r6, r4
	mov r4, #4
	mul r6, r7, r4
	add r4, r5, r6
	ldr r5, [r4]
	ldr r4, [fp, #-20]
	ldr r6, [fp, #-12]
	ldr r7, =0
	add r8, r7, r6
	mov r6, #4
	mul r7, r8, r6
	add r6, r4, r7
	str r5, [r6]
	ldr r8, [fp, #-4]
	ldr r4, [fp, #-20]
	ldr r5, [fp, #-8]
	ldr r6, =0
	add r7, r6, r5
	mov r5, #4
	mul r6, r7, r5
	add r5, r4, r6
	str r8, [r5]
	b .L564
.L564:
	ldr r7, [fp, #-8]
	add r4, r7, #1
	str r4, [fp, #-8]
	b .L557
.L573:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L574:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L575:
	b .L564

	.global param32_rec
	.type param32_rec , %function
param32_rec:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #224
.L591:
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
	ldr r4, [fp, #-128]
	ldr r5, =0
	cmp r4, r5
	moveq r6, #1
	movne r6, #0
	beq .L624
	b .L629
.L624:
	ldr r7, [fp, #-124]
	mov r0, r7
	add sp, sp, #224
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L625:
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
	b .F0
.LTORG
.F0:
.L626:
	add sp, sp, #224
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L627:
	add sp, sp, #224
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L628:
	add sp, sp, #224
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L629:
	b .L625
.L630:
	b .L626
.L631:
	b .L626

	.global param32_arr
	.type param32_arr , %function
param32_arr:
	push {r4, r5, r6, r7, fp, lr}
	mov fp, sp
	sub sp, sp, #132
.L632:
	str r0, [fp, #-132]
	str r1, [fp, #-128]
	str r2, [fp, #-124]
	str r3, [fp, #-120]
	ldr r3, [fp, #24]
	str r3, [fp, #-116]
	ldr r3, [fp, #28]
	str r3, [fp, #-112]
	ldr r3, [fp, #32]
	str r3, [fp, #-108]
	ldr r3, [fp, #36]
	str r3, [fp, #-104]
	ldr r3, [fp, #40]
	str r3, [fp, #-100]
	ldr r3, [fp, #44]
	str r3, [fp, #-96]
	ldr r3, [fp, #48]
	str r3, [fp, #-92]
	ldr r3, [fp, #52]
	str r3, [fp, #-88]
	ldr r3, [fp, #56]
	str r3, [fp, #-84]
	ldr r3, [fp, #60]
	str r3, [fp, #-80]
	ldr r3, [fp, #64]
	str r3, [fp, #-76]
	ldr r3, [fp, #68]
	str r3, [fp, #-72]
	ldr r3, [fp, #72]
	str r3, [fp, #-68]
	ldr r3, [fp, #76]
	str r3, [fp, #-64]
	ldr r3, [fp, #80]
	str r3, [fp, #-60]
	ldr r3, [fp, #84]
	str r3, [fp, #-56]
	ldr r3, [fp, #88]
	str r3, [fp, #-52]
	ldr r3, [fp, #92]
	str r3, [fp, #-48]
	ldr r3, [fp, #96]
	str r3, [fp, #-44]
	ldr r3, [fp, #100]
	str r3, [fp, #-40]
	ldr r3, [fp, #104]
	str r3, [fp, #-36]
	ldr r3, [fp, #108]
	str r3, [fp, #-32]
	ldr r3, [fp, #112]
	str r3, [fp, #-28]
	ldr r3, [fp, #116]
	str r3, [fp, #-24]
	ldr r3, [fp, #120]
	str r3, [fp, #-20]
	ldr r3, [fp, #124]
	str r3, [fp, #-16]
	ldr r3, [fp, #128]
	str r3, [fp, #-12]
	ldr r3, [fp, #132]
	str r3, [fp, #-8]
	ldr r4, [fp, #-132]
	ldr r5, =0
	add r6, r5, #0
	mov r5, #4
	mul r5, r6, r5
	add r6, r4, r5
	ldr r4, [r6]
	ldr r5, [fp, #-132]
	ldr r6, =0
	add r7, r6, #1
	mov r6, #4
	mul r7, r7, r6
	add r6, r5, r7
	ldr r5, [r6]
	add r6, r4, r5
	str r6, [fp, #-4]
	ldr r7, [fp, #-4]
	ldr r4, [fp, #-128]
	ldr r5, =0
	add r6, r5, #0
	mov r5, #4
	mul r6, r6, r5
	add r5, r4, r6
	ldr r4, [r5]
	add r5, r7, r4
	ldr r4, [fp, #-128]
	ldr r6, =0
	add r7, r6, #1
	mov r6, #4
	mul r7, r7, r6
	add r6, r4, r7
	ldr r4, [r6]
	add r6, r5, r4
	str r6, [fp, #-4]
	ldr r7, [fp, #-4]
	ldr r4, [fp, #-124]
	ldr r5, =0
	add r6, r5, #0
	mov r5, #4
	mul r6, r6, r5
	add r5, r4, r6
	ldr r4, [r5]
	add r5, r7, r4
	ldr r4, [fp, #-124]
	ldr r6, =0
	add r7, r6, #1
	mov r6, #4
	mul r7, r7, r6
	add r6, r4, r7
	ldr r4, [r6]
	add r6, r5, r4
	str r6, [fp, #-4]
	ldr r7, [fp, #-4]
	ldr r4, [fp, #-120]
	ldr r5, =0
	add r6, r5, #0
	mov r5, #4
	mul r6, r6, r5
	add r5, r4, r6
	ldr r4, [r5]
	add r5, r7, r4
	ldr r4, [fp, #-120]
	ldr r6, =0
	add r7, r6, #1
	mov r6, #4
	mul r6, r7, r6
	add r7, r4, r6
	ldr r4, [r7]
	add r6, r5, r4
	str r6, [fp, #-4]
	ldr r7, [fp, #-4]
	ldr r4, [fp, #-116]
	ldr r5, =0
	add r6, r5, #0
	mov r5, #4
	mul r6, r6, r5
	add r5, r4, r6
	ldr r4, [r5]
	add r5, r7, r4
	ldr r4, [fp, #-116]
	ldr r6, =0
	add r7, r6, #1
	mov r6, #4
	mul r7, r7, r6
	add r6, r4, r7
	ldr r4, [r6]
	add r6, r5, r4
	str r6, [fp, #-4]
	ldr r7, [fp, #-4]
	ldr r4, [fp, #-112]
	ldr r5, =0
	add r6, r5, #0
	mov r5, #4
	mul r6, r6, r5
	add r5, r4, r6
	ldr r4, [r5]
	add r5, r7, r4
	ldr r4, [fp, #-112]
	ldr r6, =0
	add r7, r6, #1
	mov r6, #4
	mul r7, r7, r6
	add r6, r4, r7
	ldr r4, [r6]
	add r6, r5, r4
	str r6, [fp, #-4]
	ldr r7, [fp, #-4]
	ldr r4, [fp, #-108]
	ldr r5, =0
	add r6, r5, #0
	mov r5, #4
	mul r6, r6, r5
	add r5, r4, r6
	ldr r4, [r5]
	add r5, r7, r4
	ldr r4, [fp, #-108]
	ldr r6, =0
	add r7, r6, #1
	mov r6, #4
	mul r7, r7, r6
	add r6, r4, r7
	ldr r4, [r6]
	add r6, r5, r4
	str r6, [fp, #-4]
	ldr r7, [fp, #-4]
	ldr r4, [fp, #-104]
	ldr r5, =0
	add r6, r5, #0
	mov r5, #4
	mul r6, r6, r5
	add r5, r4, r6
	ldr r4, [r5]
	add r5, r7, r4
	ldr r4, [fp, #-104]
	ldr r6, =0
	add r7, r6, #1
	mov r6, #4
	mul r7, r7, r6
	add r6, r4, r7
	ldr r4, [r6]
	add r6, r5, r4
	str r6, [fp, #-4]
	ldr r7, [fp, #-4]
	ldr r4, [fp, #-100]
	ldr r5, =0
	add r6, r5, #0
	mov r5, #4
	mul r6, r6, r5
	add r5, r4, r6
	ldr r4, [r5]
	add r5, r7, r4
	ldr r4, [fp, #-100]
	ldr r6, =0
	add r7, r6, #1
	mov r6, #4
	mul r7, r7, r6
	add r6, r4, r7
	ldr r4, [r6]
	add r6, r5, r4
	str r6, [fp, #-4]
	ldr r7, [fp, #-4]
	ldr r4, [fp, #-96]
	ldr r5, =0
	add r6, r5, #0
	mov r5, #4
	mul r6, r6, r5
	add r5, r4, r6
	ldr r4, [r5]
	add r5, r7, r4
	ldr r4, [fp, #-96]
	ldr r6, =0
	add r7, r6, #1
	mov r6, #4
	mul r6, r7, r6
	add r7, r4, r6
	ldr r4, [r7]
	add r6, r5, r4
	str r6, [fp, #-4]
	ldr r7, [fp, #-4]
	ldr r4, [fp, #-92]
	ldr r5, =0
	add r6, r5, #0
	mov r5, #4
	mul r6, r6, r5
	add r5, r4, r6
	ldr r4, [r5]
	add r5, r7, r4
	ldr r4, [fp, #-92]
	ldr r6, =0
	add r7, r6, #1
	mov r6, #4
	mul r7, r7, r6
	add r6, r4, r7
	ldr r4, [r6]
	add r6, r5, r4
	str r6, [fp, #-4]
	ldr r7, [fp, #-4]
	ldr r4, [fp, #-88]
	ldr r5, =0
	add r6, r5, #0
	mov r5, #4
	mul r6, r6, r5
	add r5, r4, r6
	ldr r4, [r5]
	add r5, r7, r4
	ldr r4, [fp, #-88]
	ldr r6, =0
	add r7, r6, #1
	mov r6, #4
	mul r6, r7, r6
	add r7, r4, r6
	ldr r4, [r7]
	add r6, r5, r4
	str r6, [fp, #-4]
	ldr r7, [fp, #-4]
	ldr r4, [fp, #-84]
	ldr r5, =0
	add r6, r5, #0
	mov r5, #4
	mul r6, r6, r5
	add r5, r4, r6
	ldr r4, [r5]
	add r5, r7, r4
	ldr r4, [fp, #-84]
	ldr r6, =0
	add r7, r6, #1
	mov r6, #4
	mul r6, r7, r6
	add r7, r4, r6
	ldr r4, [r7]
	add r6, r5, r4
	str r6, [fp, #-4]
	ldr r7, [fp, #-4]
	ldr r4, [fp, #-80]
	ldr r5, =0
	add r6, r5, #0
	mov r5, #4
	mul r5, r6, r5
	add r6, r4, r5
	ldr r4, [r6]
	add r5, r7, r4
	ldr r4, [fp, #-80]
	ldr r6, =0
	add r7, r6, #1
	mov r6, #4
	mul r6, r7, r6
	add r7, r4, r6
	ldr r4, [r7]
	add r6, r5, r4
	str r6, [fp, #-4]
	ldr r7, [fp, #-4]
	ldr r4, [fp, #-76]
	ldr r5, =0
	add r6, r5, #0
	mov r5, #4
	mul r6, r6, r5
	add r5, r4, r6
	ldr r4, [r5]
	add r5, r7, r4
	ldr r4, [fp, #-76]
	ldr r6, =0
	add r7, r6, #1
	mov r6, #4
	mul r7, r7, r6
	add r6, r4, r7
	ldr r4, [r6]
	add r6, r5, r4
	str r6, [fp, #-4]
	b .B0
.LTORG
.B0:
	ldr r7, [fp, #-4]
	ldr r4, [fp, #-72]
	ldr r5, =0
	add r6, r5, #0
	mov r5, #4
	mul r5, r6, r5
	add r6, r4, r5
	ldr r4, [r6]
	add r5, r7, r4
	ldr r4, [fp, #-72]
	ldr r6, =0
	add r7, r6, #1
	mov r6, #4
	mul r6, r7, r6
	add r7, r4, r6
	ldr r4, [r7]
	add r6, r5, r4
	str r6, [fp, #-4]
	ldr r7, [fp, #-4]
	ldr r4, [fp, #-68]
	ldr r5, =0
	add r6, r5, #0
	mov r5, #4
	mul r6, r6, r5
	add r5, r4, r6
	ldr r4, [r5]
	add r5, r7, r4
	ldr r4, [fp, #-68]
	ldr r6, =0
	add r7, r6, #1
	mov r6, #4
	mul r6, r7, r6
	add r7, r4, r6
	ldr r4, [r7]
	add r6, r5, r4
	str r6, [fp, #-4]
	ldr r7, [fp, #-4]
	ldr r4, [fp, #-64]
	ldr r5, =0
	add r6, r5, #0
	mov r5, #4
	mul r6, r6, r5
	add r5, r4, r6
	ldr r4, [r5]
	add r5, r7, r4
	ldr r4, [fp, #-64]
	ldr r6, =0
	add r7, r6, #1
	mov r6, #4
	mul r7, r7, r6
	add r6, r4, r7
	ldr r4, [r6]
	add r6, r5, r4
	str r6, [fp, #-4]
	ldr r7, [fp, #-4]
	ldr r4, [fp, #-60]
	ldr r5, =0
	add r6, r5, #0
	mov r5, #4
	mul r6, r6, r5
	add r5, r4, r6
	ldr r4, [r5]
	add r5, r7, r4
	ldr r4, [fp, #-60]
	ldr r6, =0
	add r7, r6, #1
	mov r6, #4
	mul r7, r7, r6
	add r6, r4, r7
	ldr r4, [r6]
	add r6, r5, r4
	str r6, [fp, #-4]
	ldr r7, [fp, #-4]
	ldr r4, [fp, #-56]
	ldr r5, =0
	add r6, r5, #0
	mov r5, #4
	mul r6, r6, r5
	add r5, r4, r6
	ldr r4, [r5]
	add r5, r7, r4
	ldr r4, [fp, #-56]
	ldr r6, =0
	add r7, r6, #1
	mov r6, #4
	mul r7, r7, r6
	add r6, r4, r7
	ldr r4, [r6]
	add r6, r5, r4
	str r6, [fp, #-4]
	ldr r7, [fp, #-4]
	ldr r4, [fp, #-52]
	ldr r5, =0
	add r6, r5, #0
	mov r5, #4
	mul r5, r6, r5
	add r6, r4, r5
	ldr r4, [r6]
	add r5, r7, r4
	ldr r4, [fp, #-52]
	ldr r6, =0
	add r7, r6, #1
	mov r6, #4
	mul r7, r7, r6
	add r6, r4, r7
	ldr r4, [r6]
	add r6, r5, r4
	str r6, [fp, #-4]
	ldr r7, [fp, #-4]
	ldr r4, [fp, #-48]
	ldr r5, =0
	add r6, r5, #0
	mov r5, #4
	mul r6, r6, r5
	add r5, r4, r6
	ldr r4, [r5]
	add r5, r7, r4
	ldr r4, [fp, #-48]
	ldr r6, =0
	add r7, r6, #1
	mov r6, #4
	mul r6, r7, r6
	add r7, r4, r6
	ldr r4, [r7]
	add r6, r5, r4
	str r6, [fp, #-4]
	ldr r7, [fp, #-4]
	ldr r4, [fp, #-44]
	ldr r5, =0
	add r6, r5, #0
	mov r5, #4
	mul r6, r6, r5
	add r5, r4, r6
	ldr r4, [r5]
	add r5, r7, r4
	ldr r4, [fp, #-44]
	ldr r6, =0
	add r7, r6, #1
	mov r6, #4
	mul r7, r7, r6
	add r6, r4, r7
	ldr r4, [r6]
	add r6, r5, r4
	str r6, [fp, #-4]
	ldr r7, [fp, #-4]
	ldr r4, [fp, #-40]
	ldr r5, =0
	add r6, r5, #0
	mov r5, #4
	mul r6, r6, r5
	add r5, r4, r6
	ldr r4, [r5]
	add r5, r7, r4
	ldr r4, [fp, #-40]
	ldr r6, =0
	add r7, r6, #1
	mov r6, #4
	mul r7, r7, r6
	add r6, r4, r7
	ldr r4, [r6]
	add r6, r5, r4
	str r6, [fp, #-4]
	ldr r7, [fp, #-4]
	ldr r4, [fp, #-36]
	ldr r5, =0
	add r6, r5, #0
	mov r5, #4
	mul r6, r6, r5
	add r5, r4, r6
	ldr r4, [r5]
	add r5, r7, r4
	ldr r4, [fp, #-36]
	ldr r6, =0
	add r7, r6, #1
	mov r6, #4
	mul r7, r7, r6
	add r6, r4, r7
	ldr r4, [r6]
	add r6, r5, r4
	str r6, [fp, #-4]
	ldr r7, [fp, #-4]
	ldr r4, [fp, #-32]
	ldr r5, =0
	add r6, r5, #0
	mov r5, #4
	mul r5, r6, r5
	add r6, r4, r5
	ldr r4, [r6]
	add r5, r7, r4
	ldr r4, [fp, #-32]
	ldr r6, =0
	add r7, r6, #1
	mov r6, #4
	mul r7, r7, r6
	add r6, r4, r7
	ldr r4, [r6]
	add r6, r5, r4
	str r6, [fp, #-4]
	ldr r7, [fp, #-4]
	ldr r4, [fp, #-28]
	ldr r5, =0
	add r6, r5, #0
	mov r5, #4
	mul r6, r6, r5
	add r5, r4, r6
	ldr r4, [r5]
	add r5, r7, r4
	ldr r4, [fp, #-28]
	ldr r6, =0
	add r7, r6, #1
	mov r6, #4
	mul r6, r7, r6
	add r7, r4, r6
	ldr r4, [r7]
	add r6, r5, r4
	str r6, [fp, #-4]
	ldr r7, [fp, #-4]
	ldr r4, [fp, #-24]
	ldr r5, =0
	add r6, r5, #0
	mov r5, #4
	mul r6, r6, r5
	add r5, r4, r6
	ldr r4, [r5]
	add r5, r7, r4
	ldr r4, [fp, #-24]
	ldr r6, =0
	add r7, r6, #1
	mov r6, #4
	mul r6, r7, r6
	add r7, r4, r6
	ldr r4, [r7]
	add r6, r5, r4
	str r6, [fp, #-4]
	ldr r7, [fp, #-4]
	ldr r4, [fp, #-20]
	ldr r5, =0
	add r6, r5, #0
	mov r5, #4
	mul r6, r6, r5
	add r5, r4, r6
	ldr r4, [r5]
	add r5, r7, r4
	ldr r4, [fp, #-20]
	ldr r6, =0
	add r7, r6, #1
	mov r6, #4
	mul r7, r7, r6
	add r6, r4, r7
	ldr r4, [r6]
	add r6, r5, r4
	str r6, [fp, #-4]
	ldr r7, [fp, #-4]
	ldr r4, [fp, #-16]
	ldr r5, =0
	add r6, r5, #0
	mov r5, #4
	mul r6, r6, r5
	add r5, r4, r6
	ldr r4, [r5]
	add r5, r7, r4
	ldr r4, [fp, #-16]
	ldr r6, =0
	add r7, r6, #1
	mov r6, #4
	mul r6, r7, r6
	add r7, r4, r6
	ldr r4, [r7]
	add r6, r5, r4
	str r6, [fp, #-4]
	ldr r7, [fp, #-4]
	ldr r4, [fp, #-12]
	ldr r5, =0
	add r6, r5, #0
	mov r5, #4
	mul r6, r6, r5
	add r5, r4, r6
	ldr r4, [r5]
	add r5, r7, r4
	ldr r4, [fp, #-12]
	ldr r6, =0
	add r7, r6, #1
	mov r6, #4
	mul r7, r7, r6
	add r6, r4, r7
	ldr r4, [r6]
	add r6, r5, r4
	str r6, [fp, #-4]
	ldr r7, [fp, #-4]
	ldr r4, [fp, #-8]
	ldr r5, =0
	add r6, r5, #0
	mov r5, #4
	mul r6, r6, r5
	add r5, r4, r6
	ldr r4, [r5]
	add r5, r7, r4
	ldr r4, [fp, #-8]
	ldr r6, =0
	add r7, r6, #1
	b .B1
.LTORG
.B1:
	mov r6, #4
	mul r7, r7, r6
	add r6, r4, r7
	ldr r4, [r6]
	add r6, r5, r4
	str r6, [fp, #-4]
	ldr r7, [fp, #-4]
	mov r0, r7
	add sp, sp, #132
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
	b .F3
.LTORG
.F3:
.L922:
	add sp, sp, #132
	pop {r4, r5, r6, r7, fp, lr}
	bx lr

	.global param16
	.type param16 , %function
param16:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #228
.L923:
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
	ldr r4, [fp, #-128]
	mov r5, #0
	mov r6, #4
	mul r5, r5, r6
	mov r6, #-64
	add r6, r6, r5
	add r5, fp, r6
	str r4, [r5]
	ldr r4, [fp, #-124]
	add r6, r5, #4
	str r4, [r6]
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
	mul r5, r7, r4
	mov r4, #-64
	add r4, r4, r5
	add r6, fp, r4
	mov r0, r6
	mov r1, #16
	bl sort
	ldr r5, =0
	add r4, r5, #0
	mov r5, #4
	mul r6, r4, r5
	mov r4, #-64
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, [r5]
	ldr r5, =0
	add r6, r5, #1
	mov r5, #4
	mul r6, r6, r5
	mov r5, #-64
	add r6, r5, r6
	add r5, fp, r6
	ldr r6, [r5]
	ldr r5, =0
	add r7, r5, #2
	mov r5, #4
	mul r5, r7, r5
	mov r7, #-64
	add r7, r7, r5
	add r5, fp, r7
	ldr r7, [r5]
	ldr r5, =0
	add r8, r5, #3
	mov r5, #4
	mul r5, r8, r5
	mov r8, #-64
	add r8, r8, r5
	add r5, fp, r8
	ldr r8, [r5]
	ldr r5, =0
	add r9, r5, #4
	mov r5, #4
	mul r5, r9, r5
	mov r9, #-64
	add r5, r9, r5
	add r9, fp, r5
	ldr r5, [r9]
	str r5, [fp, #-132]
	ldr r5, =0
	add r9, r5, #5
	mov r5, #4
	mul r5, r9, r5
	mov r9, #-64
	add r9, r9, r5
	add r5, fp, r9
	ldr r9, [r5]
	str r9, [fp, #-136]
	ldr r5, =0
	add r9, r5, #6
	mov r5, #4
	mul r5, r9, r5
	mov r9, #-64
	add r9, r9, r5
	add r5, fp, r9
	ldr r9, [r5]
	str r9, [fp, #-140]
	ldr r5, =0
	add r9, r5, #7
	mov r5, #4
	mul r5, r9, r5
	mov r9, #-64
	add r9, r9, r5
	add r5, fp, r9
	ldr r9, [r5]
	str r9, [fp, #-144]
	ldr r5, =0
	add r9, r5, #8
	mov r5, #4
	mul r5, r9, r5
	mov r9, #-64
	add r9, r9, r5
	add r5, fp, r9
	ldr r9, [r5]
	str r9, [fp, #-148]
	ldr r5, =0
	add r9, r5, #9
	mov r5, #4
	mul r5, r9, r5
	mov r9, #-64
	add r9, r9, r5
	add r5, fp, r9
	ldr r9, [r5]
	str r9, [fp, #-152]
	ldr r5, =0
	add r9, r5, #10
	mov r5, #4
	mul r5, r9, r5
	mov r9, #-64
	add r9, r9, r5
	add r5, fp, r9
	ldr r9, [r5]
	str r9, [fp, #-156]
	ldr r5, =0
	add r9, r5, #11
	mov r5, #4
	mul r5, r9, r5
	mov r9, #-64
	add r9, r9, r5
	add r5, fp, r9
	ldr r9, [r5]
	str r9, [fp, #-160]
	ldr r5, =0
	add r9, r5, #12
	mov r5, #4
	mul r5, r9, r5
	mov r9, #-64
	add r9, r9, r5
	add r5, fp, r9
	ldr r9, [r5]
	str r9, [fp, #-164]
	ldr r5, =0
	add r9, r5, #13
	mov r5, #4
	mul r5, r9, r5
	mov r9, #-64
	add r9, r9, r5
	add r5, fp, r9
	ldr r9, [r5]
	str r9, [fp, #-168]
	ldr r5, =0
	add r9, r5, #14
	mov r5, #4
	mul r9, r9, r5
	mov r5, #-64
	add r9, r5, r9
	add r5, fp, r9
	ldr r9, [r5]
	str r9, [fp, #-172]
	ldr r5, =0
	add r9, r5, #15
	mov r5, #4
	mul r5, r9, r5
	mov r9, #-64
	add r9, r9, r5
	add r5, fp, r9
	ldr r9, [r5]
	str r9, [fp, #-176]
	ldr r5, [fp, #-128]
	str r5, [fp, #-180]
	ldr r5, [fp, #-124]
	str r5, [fp, #-184]
	ldr r5, [fp, #-120]
	str r5, [fp, #-188]
	ldr r5, [fp, #-116]
	str r5, [fp, #-192]
	ldr r5, [fp, #-112]
	str r5, [fp, #-196]
	ldr r5, [fp, #-108]
	str r5, [fp, #-200]
	ldr r5, [fp, #-104]
	str r5, [fp, #-204]
	ldr r5, [fp, #-100]
	str r5, [fp, #-208]
	ldr r5, [fp, #-96]
	str r5, [fp, #-212]
	ldr r5, [fp, #-92]
	str r5, [fp, #-216]
	ldr r5, [fp, #-88]
	str r5, [fp, #-220]
	ldr r5, [fp, #-84]
	str r5, [fp, #-224]
	ldr r5, [fp, #-80]
	str r5, [fp, #-228]
	ldr r5, [fp, #-76]
	ldr r9, [fp, #-72]
	ldr r10, [fp, #-68]
	mov r0, r4
	mov r1, r6
	mov r2, r7
	mov r3, r8
	push {r10}
	push {r9}
	push {r5}
	ldr r4, [fp, #-228]
	push {r4}
	ldr r6, [fp, #-224]
	push {r6}
	ldr r7, [fp, #-220]
	push {r7}
	ldr r8, [fp, #-216]
	push {r8}
	ldr r10, [fp, #-212]
	push {r10}
	ldr r9, [fp, #-208]
	push {r9}
	ldr r5, [fp, #-204]
	push {r5}
	ldr r4, [fp, #-200]
	push {r4}
	ldr r6, [fp, #-196]
	push {r6}
	ldr r7, [fp, #-192]
	push {r7}
	ldr r8, [fp, #-188]
	push {r8}
	ldr r10, [fp, #-184]
	push {r10}
	ldr r9, [fp, #-180]
	push {r9}
	ldr r5, [fp, #-176]
	push {r5}
	ldr r4, [fp, #-172]
	push {r4}
	ldr r6, [fp, #-168]
	push {r6}
	ldr r7, [fp, #-164]
	push {r7}
	ldr r8, [fp, #-160]
	push {r8}
	ldr r10, [fp, #-156]
	push {r10}
	ldr r9, [fp, #-152]
	push {r9}
	ldr r5, [fp, #-148]
	push {r5}
	ldr r4, [fp, #-144]
	push {r4}
	ldr r6, [fp, #-140]
	push {r6}
	b .B2
.LTORG
.B2:
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
	b .F5
.LTORG
.F5:
.L942:
	add sp, sp, #228
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	ldr r4, =400
	sub sp, sp, r4
.L991:
	bl getint
	mov r4, r0
	bl getint
	mov r5, r0
	bl getint
	mov r6, r0
	bl getint
	mov r7, r0
	bl getint
	mov r8, r0
	str r8, [fp, #-264]
	bl getint
	mov r8, r0
	str r8, [fp, #-268]
	bl getint
	mov r8, r0
	str r8, [fp, #-272]
	bl getint
	mov r8, r0
	str r8, [fp, #-276]
	bl getint
	mov r8, r0
	str r8, [fp, #-280]
	bl getint
	mov r8, r0
	str r8, [fp, #-284]
	bl getint
	mov r8, r0
	str r8, [fp, #-288]
	bl getint
	mov r8, r0
	str r8, [fp, #-292]
	bl getint
	mov r8, r0
	str r8, [fp, #-296]
	bl getint
	mov r8, r0
	bl getint
	mov r9, r0
	bl getint
	mov r10, r0
	mov r0, r4
	mov r1, r5
	mov r2, r6
	mov r3, r7
	push {r10}
	push {r9}
	push {r8}
	ldr r4, [fp, #-296]
	push {r4}
	ldr r5, [fp, #-292]
	push {r5}
	ldr r6, [fp, #-288]
	push {r6}
	ldr r7, [fp, #-284]
	push {r7}
	ldr r10, [fp, #-280]
	push {r10}
	ldr r9, [fp, #-276]
	push {r9}
	ldr r8, [fp, #-272]
	push {r8}
	ldr r4, [fp, #-268]
	push {r4}
	ldr r5, [fp, #-264]
	push {r5}
	bl param16
	add sp, sp, #48
	mov r6, r0
	mov r4, #0
	mov r5, #4
	mul r5, r4, r5
	ldr r4, =-260
	add r4, r4, r5
	add r5, fp, r4
	str r6, [r5]
	add r4, r5, #4
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
	b .L995
	b .F6
.LTORG
.F6:
.L995:
	ldr r7, [fp, #-4]
	ldr r4, =32
	cmp r7, r4
	movlt r5, #1
	movge r5, #0
	blt .L996
	b .L1000
.L996:
	ldr r6, [fp, #-4]
	sub r4, r6, #1
	ldr r5, =0
	add r6, r5, r4
	add r5, r6, r4
	ldr r4, [fp, #-4]
	sub r6, r4, #1
	add r4, r5, #1
	mov r5, #4
	mul r4, r4, r5
	ldr r6, =-260
	add r5, r6, r4
	add r4, fp, r5
	ldr r5, [r4]
	sub r4, r5, #1
	ldr r5, [fp, #-4]
	ldr r6, =0
	add r7, r6, r5
	add r6, r7, r5
	ldr r5, [fp, #-4]
	add r5, r6, #0
	mov r6, #4
	mul r5, r5, r6
	ldr r6, =-260
	add r6, r6, r5
	add r5, fp, r6
	str r4, [r5]
	ldr r7, [fp, #-4]
	sub r4, r7, #1
	ldr r5, =0
	add r6, r5, r4
	add r5, r6, r4
	ldr r4, [fp, #-4]
	sub r6, r4, #1
	add r4, r5, #0
	mov r5, #4
	mul r4, r4, r5
	ldr r6, =-260
	add r5, r6, r4
	add r4, fp, r5
	ldr r5, [r4]
	sub r4, r5, #2
	ldr r5, [fp, #-4]
	ldr r6, =0
	add r7, r6, r5
	add r6, r7, r5
	ldr r5, [fp, #-4]
	add r5, r6, #1
	mov r6, #4
	mul r6, r5, r6
	ldr r5, =-260
	add r5, r5, r6
	add r6, fp, r5
	str r4, [r6]
	ldr r7, [fp, #-4]
	add r4, r7, #1
	str r4, [fp, #-4]
	b .L995
.L997:
	ldr r5, =0
	add r4, r5, #0
	add r5, r4, #0
	mov r4, #4
	mul r4, r5, r4
	ldr r6, =-260
	add r5, r6, r4
	add r4, fp, r5
	ldr r5, =0
	add r6, r5, #1
	add r5, r6, #1
	mov r6, #4
	mul r5, r5, r6
	ldr r6, =-260
	add r6, r6, r5
	add r5, fp, r6
	ldr r6, =0
	add r7, r6, #2
	add r6, r7, #2
	mov r7, #4
	mul r6, r6, r7
	ldr r7, =-260
	add r7, r7, r6
	add r6, fp, r7
	ldr r7, =0
	add r8, r7, #3
	add r7, r8, #3
	mov r8, #4
	mul r8, r7, r8
	ldr r7, =-260
	add r7, r7, r8
	add r8, fp, r7
	ldr r7, =0
	add r9, r7, #4
	add r7, r9, #4
	mov r9, #4
	mul r9, r7, r9
	ldr r7, =-260
	add r7, r7, r9
	add r9, fp, r7
	str r9, [fp, #-300]
	ldr r7, =0
	add r9, r7, #5
	add r7, r9, #5
	mov r9, #4
	mul r7, r7, r9
	ldr r9, =-260
	add r9, r9, r7
	add r7, fp, r9
	str r7, [fp, #-304]
	ldr r7, =0
	add r9, r7, #6
	add r7, r9, #6
	mov r9, #4
	mul r9, r7, r9
	ldr r7, =-260
	add r7, r7, r9
	add r9, fp, r7
	str r9, [fp, #-308]
	ldr r7, =0
	add r9, r7, #7
	add r7, r9, #7
	mov r9, #4
	mul r9, r7, r9
	ldr r7, =-260
	add r7, r7, r9
	add r9, fp, r7
	str r9, [fp, #-312]
	ldr r7, =0
	add r9, r7, #8
	add r7, r9, #8
	mov r9, #4
	mul r7, r7, r9
	ldr r9, =-260
	add r9, r9, r7
	add r7, fp, r9
	str r7, [fp, #-316]
	ldr r7, =0
	add r9, r7, #9
	add r7, r9, #9
	mov r9, #4
	mul r9, r7, r9
	ldr r7, =-260
	add r7, r7, r9
	add r9, fp, r7
	str r9, [fp, #-320]
	ldr r7, =0
	add r9, r7, #10
	add r7, r9, #10
	mov r9, #4
	mul r7, r7, r9
	ldr r9, =-260
	add r7, r9, r7
	add r9, fp, r7
	str r9, [fp, #-324]
	ldr r7, =0
	add r9, r7, #11
	add r7, r9, #11
	mov r9, #4
	mul r7, r7, r9
	ldr r9, =-260
	add r9, r9, r7
	add r7, fp, r9
	str r7, [fp, #-328]
	ldr r7, =0
	add r9, r7, #12
	add r7, r9, #12
	mov r9, #4
	mul r9, r7, r9
	ldr r7, =-260
	add r7, r7, r9
	add r9, fp, r7
	str r9, [fp, #-332]
	ldr r7, =0
	add r9, r7, #13
	add r7, r9, #13
	mov r9, #4
	mul r7, r7, r9
	ldr r9, =-260
	add r9, r9, r7
	add r7, fp, r9
	str r7, [fp, #-336]
	ldr r7, =0
	add r9, r7, #14
	add r7, r9, #14
	mov r9, #4
	mul r7, r7, r9
	ldr r9, =-260
	add r9, r9, r7
	add r7, fp, r9
	str r7, [fp, #-340]
	ldr r7, =0
	add r9, r7, #15
	add r7, r9, #15
	mov r9, #4
	mul r9, r7, r9
	ldr r7, =-260
	add r7, r7, r9
	add r9, fp, r7
	str r9, [fp, #-344]
	ldr r7, =0
	add r9, r7, #16
	add r7, r9, #16
	mov r9, #4
	mul r9, r7, r9
	ldr r7, =-260
	add r7, r7, r9
	add r9, fp, r7
	str r9, [fp, #-348]
	ldr r7, =0
	add r9, r7, #17
	add r7, r9, #17
	mov r9, #4
	mul r7, r7, r9
	ldr r9, =-260
	add r9, r9, r7
	add r7, fp, r9
	str r7, [fp, #-352]
	ldr r7, =0
	add r9, r7, #18
	add r7, r9, #18
	mov r9, #4
	mul r9, r7, r9
	ldr r7, =-260
	add r7, r7, r9
	add r9, fp, r7
	str r9, [fp, #-356]
	ldr r7, =0
	add r9, r7, #19
	add r7, r9, #19
	mov r9, #4
	mul r7, r7, r9
	ldr r9, =-260
	add r7, r9, r7
	add r9, fp, r7
	str r9, [fp, #-360]
	ldr r7, =0
	add r9, r7, #20
	add r7, r9, #20
	mov r9, #4
	mul r9, r7, r9
	ldr r7, =-260
	add r7, r7, r9
	add r9, fp, r7
	str r9, [fp, #-364]
	ldr r7, =0
	add r9, r7, #21
	add r7, r9, #21
	mov r9, #4
	mul r9, r7, r9
	ldr r7, =-260
	add r7, r7, r9
	add r9, fp, r7
	str r9, [fp, #-368]
	ldr r7, =0
	add r9, r7, #22
	add r7, r9, #22
	mov r9, #4
	mul r7, r7, r9
	ldr r9, =-260
	add r7, r9, r7
	add r9, fp, r7
	str r9, [fp, #-372]
	ldr r7, =0
	add r9, r7, #23
	add r7, r9, #23
	mov r9, #4
	mul r9, r7, r9
	ldr r7, =-260
	add r7, r7, r9
	add r9, fp, r7
	str r9, [fp, #-376]
	ldr r7, =0
	add r9, r7, #24
	add r7, r9, #24
	mov r9, #4
	mul r9, r7, r9
	ldr r7, =-260
	add r7, r7, r9
	add r9, fp, r7
	str r9, [fp, #-380]
	ldr r7, =0
	add r9, r7, #25
	add r7, r9, #25
	mov r9, #4
	mul r7, r7, r9
	ldr r9, =-260
	add r9, r9, r7
	add r7, fp, r9
	str r7, [fp, #-384]
	ldr r7, =0
	add r9, r7, #26
	add r7, r9, #26
	mov r9, #4
	mul r9, r7, r9
	ldr r7, =-260
	add r7, r7, r9
	add r9, fp, r7
	str r9, [fp, #-388]
	ldr r7, =0
	add r9, r7, #27
	add r7, r9, #27
	mov r9, #4
	mul r9, r7, r9
	ldr r7, =-260
	add r9, r7, r9
	add r7, fp, r9
	str r7, [fp, #-392]
	ldr r7, =0
	add r9, r7, #28
	add r7, r9, #28
	mov r9, #4
	mul r9, r7, r9
	ldr r7, =-260
	add r7, r7, r9
	add r9, fp, r7
	str r9, [fp, #-396]
	ldr r7, =0
	add r9, r7, #29
	add r7, r9, #29
	mov r9, #4
	mul r7, r7, r9
	ldr r9, =-260
	add r7, r9, r7
	add r9, fp, r7
	str r9, [fp, #-400]
	ldr r7, =0
	add r9, r7, #30
	add r7, r9, #30
	mov r9, #4
	mul r9, r7, r9
	ldr r7, =-260
	add r9, r7, r9
	add r7, fp, r9
	ldr r9, =0
	add r10, r9, #31
	add r9, r10, #31
	mov r10, #4
	mul r10, r9, r10
	ldr r9, =-260
	add r9, r9, r10
	add r10, fp, r9
	mov r0, r4
	mov r1, r5
	mov r2, r6
	mov r3, r8
	push {r10}
	push {r7}
	ldr r9, [fp, #-400]
	push {r9}
	ldr r4, [fp, #-396]
	push {r4}
	ldr r5, [fp, #-392]
	push {r5}
	ldr r6, [fp, #-388]
	push {r6}
	ldr r8, [fp, #-384]
	push {r8}
	ldr r10, [fp, #-380]
	push {r10}
	b .B3
.LTORG
.B3:
	ldr r7, [fp, #-376]
	push {r7}
	ldr r9, [fp, #-372]
	push {r9}
	ldr r4, [fp, #-368]
	push {r4}
	ldr r5, [fp, #-364]
	push {r5}
	ldr r6, [fp, #-360]
	push {r6}
	ldr r8, [fp, #-356]
	push {r8}
	ldr r10, [fp, #-352]
	push {r10}
	ldr r7, [fp, #-348]
	push {r7}
	ldr r9, [fp, #-344]
	push {r9}
	ldr r4, [fp, #-340]
	push {r4}
	ldr r5, [fp, #-336]
	push {r5}
	ldr r6, [fp, #-332]
	push {r6}
	ldr r8, [fp, #-328]
	push {r8}
	ldr r10, [fp, #-324]
	push {r10}
	ldr r7, [fp, #-320]
	push {r7}
	ldr r9, [fp, #-316]
	push {r9}
	ldr r4, [fp, #-312]
	push {r4}
	ldr r5, [fp, #-308]
	push {r5}
	ldr r6, [fp, #-304]
	push {r6}
	ldr r8, [fp, #-300]
	push {r8}
	bl param32_arr
	add sp, sp, #112
	mov r10, r0
	mov r0, r10
	bl putint
	mov r0, #10
	bl putch
	ldr r7, =0
	mov r0, r7
	ldr r1, =400
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
	b .F8
.LTORG
.F8:
.L998:
	ldr r1, =400
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L999:
	ldr r1, =400
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L1000:
	b .L997
.L1075:
	ldr r1, =400
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

