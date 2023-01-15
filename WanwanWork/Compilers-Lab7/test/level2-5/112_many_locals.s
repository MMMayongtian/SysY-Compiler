	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global foo
	.type foo , %function
foo:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #136
.L158:
	mov r4, #0
	mov r5, #4
	mul r6, r4, r5
	mov r4, #-136
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =1
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =2
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =3
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =1
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =2
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =3
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =1
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =2
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =3
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =1
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =2
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =3
	str r5, [r4]
	ldr r6, =3
	str r6, [fp, #-72]
	ldr r7, =7
	str r7, [fp, #-68]
	ldr r8, =5
	str r8, [fp, #-64]
	ldr r9, =6
	str r9, [fp, #-60]
	ldr r10, =1
	str r10, [fp, #-56]
	ldr r4, =0
	str r4, [fp, #-52]
	ldr r5, =3
	str r5, [fp, #-48]
	ldr r6, =5
	str r6, [fp, #-44]
	ldr r7, =4
	str r7, [fp, #-40]
	ldr r8, =2
	str r8, [fp, #-36]
	ldr r9, =7
	str r9, [fp, #-32]
	ldr r10, =9
	str r10, [fp, #-28]
	ldr r4, =8
	str r4, [fp, #-24]
	ldr r5, =1
	str r5, [fp, #-20]
	ldr r6, =4
	str r6, [fp, #-16]
	ldr r7, =6
	str r7, [fp, #-12]
	ldr r8, [fp, #-72]
	ldr r4, [fp, #-68]
	add r5, r8, r4
	ldr r4, [fp, #-64]
	add r6, r5, r4
	ldr r4, [fp, #-60]
	add r5, r6, r4
	ldr r4, [fp, #-56]
	add r6, r5, r4
	ldr r4, [fp, #-52]
	add r5, r6, r4
	ldr r4, [fp, #-48]
	add r6, r5, r4
	ldr r4, [fp, #-44]
	add r5, r6, r4
	str r5, [fp, #-8]
	ldr r7, [fp, #-40]
	ldr r4, [fp, #-36]
	add r5, r7, r4
	ldr r4, [fp, #-32]
	add r6, r5, r4
	ldr r4, [fp, #-28]
	add r5, r6, r4
	ldr r4, [fp, #-24]
	add r6, r5, r4
	ldr r4, [fp, #-20]
	add r5, r6, r4
	ldr r4, [fp, #-16]
	add r6, r5, r4
	ldr r4, [fp, #-12]
	add r5, r6, r4
	str r5, [fp, #-4]
	ldr r7, [fp, #-8]
	ldr r4, [fp, #-4]
	add r5, r7, r4
	ldr r4, [fp, #-72]
	ldr r6, =0
	add r7, r6, r4
	mov r4, #4
	mul r4, r7, r4
	mov r6, #-136
	add r6, r6, r4
	add r4, fp, r6
	ldr r6, [r4]
	add r4, r5, r6
	mov r0, r4
	add sp, sp, #136
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
	b .F0
.LTORG
.F0:
.L179:
	add sp, sp, #136
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #112
.L183:
	ldr r4, =3
	str r4, [fp, #-112]
	ldr r5, =7
	str r5, [fp, #-108]
	ldr r6, =5
	str r6, [fp, #-104]
	ldr r7, =6
	str r7, [fp, #-100]
	ldr r8, =1
	str r8, [fp, #-96]
	ldr r9, =0
	str r9, [fp, #-92]
	ldr r10, =3
	str r10, [fp, #-88]
	ldr r4, =5
	str r4, [fp, #-84]
	ldr r5, =4
	str r5, [fp, #-80]
	ldr r6, =2
	str r6, [fp, #-76]
	ldr r7, =7
	str r7, [fp, #-72]
	ldr r8, =9
	str r8, [fp, #-68]
	ldr r9, =8
	str r9, [fp, #-64]
	ldr r10, =1
	str r10, [fp, #-60]
	ldr r4, =4
	str r4, [fp, #-56]
	ldr r5, =6
	str r5, [fp, #-52]
	ldr r6, [fp, #-112]
	ldr r4, [fp, #-108]
	add r5, r6, r4
	ldr r4, [fp, #-104]
	add r6, r5, r4
	ldr r4, [fp, #-100]
	add r5, r6, r4
	ldr r4, [fp, #-96]
	add r6, r5, r4
	ldr r4, [fp, #-92]
	add r5, r6, r4
	ldr r4, [fp, #-88]
	add r6, r5, r4
	ldr r4, [fp, #-84]
	add r5, r6, r4
	str r5, [fp, #-48]
	ldr r7, [fp, #-80]
	ldr r4, [fp, #-76]
	add r5, r7, r4
	ldr r4, [fp, #-72]
	add r6, r5, r4
	ldr r4, [fp, #-68]
	add r5, r6, r4
	ldr r4, [fp, #-64]
	add r6, r5, r4
	ldr r4, [fp, #-60]
	add r5, r6, r4
	ldr r4, [fp, #-56]
	add r6, r5, r4
	ldr r4, [fp, #-52]
	add r5, r6, r4
	str r5, [fp, #-44]
	ldr r7, [fp, #-48]
	bl foo
	mov r4, r0
	add r5, r7, r4
	str r5, [fp, #-48]
	ldr r6, =4
	str r6, [fp, #-40]
	ldr r8, =7
	str r8, [fp, #-36]
	ldr r9, =2
	str r9, [fp, #-32]
	ldr r10, =5
	str r10, [fp, #-28]
	ldr r7, =8
	str r7, [fp, #-24]
	ldr r4, =0
	str r4, [fp, #-20]
	ldr r5, =6
	str r5, [fp, #-16]
	ldr r6, =3
	str r6, [fp, #-12]
	ldr r8, [fp, #-44]
	bl foo
	mov r4, r0
	add r5, r8, r4
	str r5, [fp, #-44]
	ldr r6, [fp, #-80]
	str r6, [fp, #-112]
	ldr r7, [fp, #-76]
	str r7, [fp, #-108]
	ldr r9, [fp, #-72]
	str r9, [fp, #-104]
	ldr r10, [fp, #-68]
	str r10, [fp, #-100]
	ldr r8, [fp, #-64]
	str r8, [fp, #-96]
	ldr r4, [fp, #-60]
	str r4, [fp, #-92]
	ldr r5, [fp, #-56]
	str r5, [fp, #-88]
	ldr r6, [fp, #-52]
	str r6, [fp, #-84]
	ldr r7, [fp, #-40]
	ldr r4, [fp, #-36]
	add r5, r7, r4
	ldr r4, [fp, #-32]
	add r6, r5, r4
	ldr r4, [fp, #-28]
	add r5, r6, r4
	ldr r4, [fp, #-24]
	add r6, r5, r4
	ldr r4, [fp, #-20]
	add r5, r6, r4
	ldr r4, [fp, #-16]
	add r6, r5, r4
	ldr r4, [fp, #-12]
	add r5, r6, r4
	str r5, [fp, #-8]
	ldr r7, [fp, #-48]
	ldr r4, [fp, #-44]
	add r5, r7, r4
	ldr r4, [fp, #-8]
	add r6, r5, r4
	str r6, [fp, #-4]
	ldr r7, [fp, #-4]
	mov r0, r7
	bl putint
	mov r0, #10
	bl putch
	ldr r8, =0
	mov r0, r8
	add sp, sp, #112
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
	b .F1
.LTORG
.F1:
.L212:
	add sp, sp, #112
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

