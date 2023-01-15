	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global func
	.type func , %function
func:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #156
.L341:
	str r0, [fp, #-156]
	str r1, [fp, #-152]
	ldr r4, [fp, #-156]
	ldr r5, [fp, #-152]
	add r6, r4, r5
	str r6, [fp, #-148]
	ldr r7, =1
	str r7, [fp, #-144]
	ldr r8, =2
	str r8, [fp, #-140]
	ldr r9, =3
	str r9, [fp, #-136]
	ldr r10, =4
	str r10, [fp, #-132]
	ldr r4, [fp, #-144]
	ldr r5, =1
	add r6, r5, r4
	str r6, [fp, #-128]
	ldr r7, [fp, #-140]
	ldr r4, =2
	add r5, r4, r7
	str r5, [fp, #-124]
	ldr r6, [fp, #-136]
	ldr r4, =3
	add r5, r4, r6
	str r5, [fp, #-120]
	ldr r7, [fp, #-132]
	ldr r4, =4
	add r5, r4, r7
	str r5, [fp, #-116]
	ldr r6, [fp, #-128]
	ldr r4, =1
	add r5, r4, r6
	str r5, [fp, #-112]
	ldr r7, [fp, #-124]
	ldr r4, =2
	add r5, r4, r7
	str r5, [fp, #-108]
	ldr r6, [fp, #-120]
	ldr r4, =3
	add r5, r4, r6
	str r5, [fp, #-104]
	ldr r7, [fp, #-116]
	ldr r4, =4
	add r5, r4, r7
	str r5, [fp, #-100]
	ldr r6, [fp, #-112]
	ldr r4, =1
	add r5, r4, r6
	str r5, [fp, #-96]
	ldr r7, [fp, #-108]
	ldr r4, =2
	add r5, r4, r7
	str r5, [fp, #-92]
	ldr r6, [fp, #-104]
	ldr r4, =3
	add r5, r4, r6
	str r5, [fp, #-88]
	ldr r7, [fp, #-100]
	ldr r4, =4
	add r5, r4, r7
	str r5, [fp, #-84]
	ldr r6, [fp, #-96]
	ldr r4, =1
	add r5, r4, r6
	str r5, [fp, #-80]
	ldr r7, [fp, #-92]
	ldr r4, =2
	add r5, r4, r7
	str r5, [fp, #-76]
	ldr r6, [fp, #-88]
	ldr r4, =3
	add r5, r4, r6
	str r5, [fp, #-72]
	ldr r7, [fp, #-84]
	ldr r4, =4
	add r5, r4, r7
	str r5, [fp, #-68]
	ldr r6, [fp, #-80]
	ldr r4, =1
	add r5, r4, r6
	str r5, [fp, #-64]
	ldr r7, [fp, #-76]
	ldr r4, =2
	add r5, r4, r7
	str r5, [fp, #-60]
	ldr r6, [fp, #-72]
	ldr r4, =3
	add r5, r4, r6
	str r5, [fp, #-56]
	ldr r7, [fp, #-68]
	ldr r4, =4
	add r5, r4, r7
	str r5, [fp, #-52]
	ldr r6, [fp, #-64]
	ldr r4, =1
	add r5, r4, r6
	str r5, [fp, #-48]
	ldr r7, [fp, #-60]
	ldr r4, =2
	add r5, r4, r7
	str r5, [fp, #-44]
	ldr r6, [fp, #-56]
	ldr r4, =3
	add r5, r4, r6
	str r5, [fp, #-40]
	ldr r7, [fp, #-52]
	ldr r4, =4
	add r5, r4, r7
	str r5, [fp, #-36]
	ldr r6, [fp, #-48]
	ldr r4, =1
	add r5, r4, r6
	str r5, [fp, #-32]
	ldr r7, [fp, #-44]
	ldr r4, =2
	add r5, r4, r7
	str r5, [fp, #-28]
	ldr r6, [fp, #-40]
	ldr r4, =3
	add r5, r4, r6
	str r5, [fp, #-24]
	ldr r7, [fp, #-36]
	ldr r4, =4
	add r5, r4, r7
	str r5, [fp, #-20]
	ldr r6, [fp, #-32]
	ldr r4, =1
	add r5, r4, r6
	str r5, [fp, #-16]
	ldr r7, [fp, #-28]
	ldr r4, =2
	add r5, r4, r7
	str r5, [fp, #-12]
	ldr r6, [fp, #-24]
	ldr r4, =3
	add r5, r4, r6
	str r5, [fp, #-8]
	ldr r7, [fp, #-20]
	ldr r4, =4
	add r5, r4, r7
	str r5, [fp, #-4]
	ldr r6, [fp, #-156]
	ldr r4, [fp, #-152]
	sub r5, r6, r4
	add r4, r5, #10
	str r4, [fp, #-148]
	ldr r6, [fp, #-32]
	ldr r4, =1
	add r5, r4, r6
	str r5, [fp, #-16]
	ldr r7, [fp, #-28]
	ldr r4, =2
	add r5, r4, r7
	str r5, [fp, #-12]
	ldr r6, [fp, #-24]
	ldr r4, =3
	add r5, r4, r6
	str r5, [fp, #-8]
	ldr r7, [fp, #-20]
	ldr r4, =4
	add r5, r4, r7
	str r5, [fp, #-4]
	ldr r6, [fp, #-48]
	ldr r4, =1
	add r5, r4, r6
	str r5, [fp, #-32]
	ldr r7, [fp, #-44]
	ldr r4, =2
	add r5, r4, r7
	str r5, [fp, #-28]
	ldr r6, [fp, #-40]
	ldr r4, =3
	add r5, r4, r6
	str r5, [fp, #-24]
	ldr r7, [fp, #-36]
	ldr r4, =4
	add r5, r4, r7
	str r5, [fp, #-20]
	ldr r6, [fp, #-64]
	ldr r4, =1
	add r5, r4, r6
	str r5, [fp, #-48]
	ldr r7, [fp, #-60]
	ldr r4, =2
	add r5, r4, r7
	str r5, [fp, #-44]
	ldr r6, [fp, #-56]
	ldr r4, =3
	add r5, r4, r6
	str r5, [fp, #-40]
	ldr r7, [fp, #-52]
	ldr r4, =4
	add r5, r4, r7
	str r5, [fp, #-36]
	ldr r6, [fp, #-80]
	ldr r4, =1
	add r5, r4, r6
	str r5, [fp, #-64]
	ldr r7, [fp, #-76]
	ldr r4, =2
	add r5, r4, r7
	str r5, [fp, #-60]
	ldr r6, [fp, #-72]
	ldr r4, =3
	add r5, r4, r6
	str r5, [fp, #-56]
	ldr r7, [fp, #-68]
	ldr r4, =4
	add r5, r4, r7
	str r5, [fp, #-52]
	ldr r6, [fp, #-96]
	ldr r4, =1
	add r5, r4, r6
	str r5, [fp, #-80]
	ldr r7, [fp, #-92]
	ldr r4, =2
	add r5, r4, r7
	str r5, [fp, #-76]
	ldr r6, [fp, #-88]
	ldr r4, =3
	add r5, r4, r6
	str r5, [fp, #-72]
	ldr r7, [fp, #-84]
	ldr r4, =4
	add r5, r4, r7
	str r5, [fp, #-68]
	ldr r6, [fp, #-112]
	ldr r4, =1
	add r5, r4, r6
	str r5, [fp, #-96]
	ldr r7, [fp, #-108]
	ldr r4, =2
	add r5, r4, r7
	str r5, [fp, #-92]
	ldr r6, [fp, #-104]
	ldr r4, =3
	add r5, r4, r6
	str r5, [fp, #-88]
	ldr r7, [fp, #-100]
	ldr r4, =4
	add r5, r4, r7
	str r5, [fp, #-84]
	ldr r6, [fp, #-128]
	ldr r4, =1
	add r5, r4, r6
	str r5, [fp, #-112]
	ldr r7, [fp, #-124]
	ldr r4, =2
	add r5, r4, r7
	str r5, [fp, #-108]
	ldr r6, [fp, #-120]
	ldr r4, =3
	add r5, r4, r6
	str r5, [fp, #-104]
	ldr r7, [fp, #-116]
	ldr r4, =4
	add r5, r4, r7
	str r5, [fp, #-100]
	ldr r6, [fp, #-144]
	ldr r4, =1
	add r5, r4, r6
	str r5, [fp, #-128]
	ldr r7, [fp, #-140]
	ldr r4, =2
	add r5, r4, r7
	str r5, [fp, #-124]
	ldr r6, [fp, #-136]
	ldr r4, =3
	add r5, r4, r6
	str r5, [fp, #-120]
	ldr r7, [fp, #-132]
	ldr r4, =4
	add r5, r4, r7
	str r5, [fp, #-116]
	ldr r6, [fp, #-16]
	ldr r4, =1
	add r5, r4, r6
	str r5, [fp, #-144]
	ldr r7, [fp, #-12]
	ldr r4, =2
	add r5, r4, r7
	str r5, [fp, #-140]
	ldr r6, [fp, #-8]
	ldr r4, =3
	add r5, r4, r6
	str r5, [fp, #-136]
	ldr r7, [fp, #-4]
	ldr r4, =4
	add r5, r4, r7
	str r5, [fp, #-132]
	ldr r6, [fp, #-148]
	ldr r4, [fp, #-144]
	add r5, r6, r4
	ldr r4, [fp, #-140]
	add r6, r5, r4
	ldr r4, [fp, #-136]
	add r5, r6, r4
	ldr r4, [fp, #-132]
	add r6, r5, r4
	b .B0
.LTORG
.B0:
	ldr r4, [fp, #-128]
	sub r5, r6, r4
	ldr r4, [fp, #-124]
	sub r6, r5, r4
	ldr r4, [fp, #-120]
	sub r5, r6, r4
	ldr r4, [fp, #-116]
	sub r6, r5, r4
	ldr r4, [fp, #-112]
	add r5, r6, r4
	ldr r4, [fp, #-108]
	add r6, r5, r4
	ldr r4, [fp, #-104]
	add r5, r6, r4
	ldr r4, [fp, #-100]
	add r6, r5, r4
	ldr r4, [fp, #-96]
	sub r5, r6, r4
	ldr r4, [fp, #-92]
	sub r6, r5, r4
	ldr r4, [fp, #-88]
	sub r5, r6, r4
	ldr r4, [fp, #-84]
	sub r6, r5, r4
	ldr r4, [fp, #-80]
	add r5, r6, r4
	ldr r4, [fp, #-76]
	add r6, r5, r4
	ldr r4, [fp, #-72]
	add r5, r6, r4
	ldr r4, [fp, #-68]
	add r6, r5, r4
	ldr r4, [fp, #-64]
	sub r5, r6, r4
	ldr r4, [fp, #-60]
	sub r6, r5, r4
	ldr r4, [fp, #-56]
	sub r5, r6, r4
	ldr r4, [fp, #-52]
	sub r6, r5, r4
	ldr r4, [fp, #-48]
	add r5, r6, r4
	ldr r4, [fp, #-44]
	add r6, r5, r4
	ldr r4, [fp, #-40]
	add r5, r6, r4
	ldr r4, [fp, #-36]
	add r6, r5, r4
	ldr r4, [fp, #-32]
	sub r5, r6, r4
	ldr r4, [fp, #-28]
	sub r6, r5, r4
	ldr r4, [fp, #-24]
	sub r5, r6, r4
	ldr r4, [fp, #-20]
	sub r6, r5, r4
	ldr r4, [fp, #-16]
	add r5, r6, r4
	ldr r4, [fp, #-12]
	add r6, r5, r4
	ldr r4, [fp, #-8]
	add r5, r6, r4
	ldr r4, [fp, #-4]
	add r6, r5, r4
	mov r0, r6
	add sp, sp, #156
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
	b .F1
.LTORG
.F1:
.L381:
	add sp, sp, #156
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L382:
	ldr r4, =1
	str r4, [fp, #-8]
	ldr r5, [fp, #-8]
	ldr r4, =2
	ldr r6, =9
	mul r7, r4, r6
	add r4, r5, r7
	str r4, [fp, #-4]
	ldr r6, [fp, #-8]
	ldr r4, [fp, #-4]
	mov r0, r6
	mov r1, r4
	bl func
	mov r5, r0
	mov r0, r5
	add sp, sp, #8
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L385:
	add sp, sp, #8
	pop {r4, r5, r6, r7, fp, lr}
	bx lr

