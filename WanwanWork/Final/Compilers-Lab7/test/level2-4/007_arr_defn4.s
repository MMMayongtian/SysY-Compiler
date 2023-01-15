	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, fp, lr}
	mov fp, sp
	sub sp, sp, #164
.L18:
	mov r4, #0
	mov r5, #4
	mul r6, r4, r5
	mov r4, #-164
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =1
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =2
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =3
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =4
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =7
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	ldr r6, =3
	str r6, [fp, #-132]
	mov r7, #0
	mov r4, #4
	mul r5, r7, r4
	mov r4, #-128
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
	mov r6, #0
	mov r4, #4
	mul r5, r6, r4
	mov r4, #-96
	add r6, r4, r5
	add r4, fp, r6
	ldr r5, =1
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =2
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =3
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =4
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =5
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =6
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =7
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =8
	str r4, [r5]
	mov r6, #0
	mov r4, #4
	mul r5, r6, r4
	mov r4, #-64
	add r6, r4, r5
	add r4, fp, r6
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
	ldr r5, =5
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	ldr r4, =0
	add r6, r4, #3
	add r4, r6, #3
	add r6, r4, #0
	mov r4, #4
	mul r4, r6, r4
	mov r6, #-164
	add r4, r6, r4
	add r6, fp, r4
	ldr r4, [r6]
	add r6, r5, #4
	str r4, [r6]
	add r4, r6, #4
	ldr r5, =8
	str r5, [r4]
	ldr r6, =0
	add r4, r6, #2
	add r5, r4, #2
	add r4, r5, #1
	mov r5, #4
	mul r6, r4, r5
	mov r4, #-64
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, [r5]
	mov r5, #0
	mov r6, #4
	mul r5, r5, r6
	mov r6, #-32
	add r6, r6, r5
	add r5, fp, r6
	str r4, [r5]
	ldr r4, =0
	add r6, r4, #2
	add r4, r6, #2
	add r6, r4, #1
	mov r4, #4
	mul r4, r6, r4
	mov r6, #-96
	add r6, r6, r4
	add r4, fp, r6
	ldr r6, [r4]
	add r4, r5, #4
	str r6, [r4]
	add r5, r4, #4
	ldr r4, =3
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =4
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =5
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =6
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =7
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =8
	str r5, [r4]
	ldr r6, =0
	add r4, r6, #3
	add r5, r4, #3
	add r4, r5, #1
	add r5, r4, #0
	mov r4, #4
	mul r6, r5, r4
	mov r4, #-32
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, [r5]
	ldr r5, =0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	mov r6, #4
	mul r5, r5, r6
	mov r6, #-32
	add r6, r6, r5
	add r5, fp, r6
	ldr r6, [r5]
	add r5, r4, r6
	ldr r4, =0
	add r6, r4, #0
	add r4, r6, #0
	add r6, r4, #1
	add r4, r6, #0
	mov r6, #4
	mul r4, r4, r6
	mov r6, #-32
	add r6, r6, r4
	add r4, fp, r6
	ldr r6, [r4]
	add r4, r5, r6
	ldr r5, =0
	add r6, r5, #3
	add r5, r6, #3
	add r6, r5, #0
	mov r5, #4
	mul r5, r6, r5
	mov r6, #-64
	add r6, r6, r5
	add r5, fp, r6
	ldr r6, [r5]
	add r5, r4, r6
	mov r0, r5
	add sp, sp, #164
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
	b .F0
.LTORG
.F0:
.L39:
	add sp, sp, #164
	pop {r4, r5, r6, r7, fp, lr}
	bx lr

