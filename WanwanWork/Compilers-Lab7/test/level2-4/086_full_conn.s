	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global relu_reg
	.type relu_reg , %function
relu_reg:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L933:
	str r0, [fp, #-4]
	ldr r4, [fp, #-4]
	ldr r5, =127
	cmp r4, r5
	movgt r6, #1
	movle r6, #0
	bgt .L935
	b .L939
.L935:
	ldr r7, =127
	mov r0, r7
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L936:
	ldr r8, [fp, #-4]
	ldr r4, =0
	cmp r8, r4
	movlt r5, #1
	movge r5, #0
	blt .L941
	b .L945
.L937:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L938:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L939:
	b .L936
.L940:
	b .L936
.L941:
	ldr r6, =0
	mov r0, r6
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L942:
	ldr r7, [fp, #-4]
	mov r0, r7
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L943:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L944:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L945:
	b .L942
.L946:
	b .L942
.L947:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr

	.global model
	.type model , %function
model:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L948:
	str r0, [fp, #-4]
	ldr r4, [fp, #-4]
	ldr r5, =0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	mov r6, #4
	mul r6, r5, r6
	add r5, r4, r6
	ldr r4, [r5]
	ldr r5, =85
	mul r6, r4, r5
	ldr r4, [fp, #-4]
	ldr r5, =0
	add r7, r5, #0
	add r5, r7, #0
	add r7, r5, #0
	add r5, r7, #0
	add r7, r5, #0
	add r5, r7, #1
	mov r7, #4
	mul r7, r5, r7
	add r5, r4, r7
	ldr r4, [r5]
	ldr r5, =23
	mul r7, r4, r5
	add r4, r6, r7
	ldr r5, [fp, #-4]
	ldr r6, =0
	add r7, r6, #0
	add r6, r7, #0
	add r7, r6, #0
	add r6, r7, #0
	add r7, r6, #0
	add r6, r7, #2
	mov r7, #4
	mul r7, r6, r7
	add r6, r5, r7
	ldr r5, [r6]
	ldr r6, =0
	sub r7, r6, #82
	mul r6, r5, r7
	add r5, r4, r6
	ldr r4, [fp, #-4]
	ldr r6, =0
	add r7, r6, #0
	add r6, r7, #0
	add r7, r6, #0
	add r6, r7, #0
	add r7, r6, #0
	add r6, r7, #3
	mov r7, #4
	mul r7, r6, r7
	add r6, r4, r7
	ldr r4, [r6]
	ldr r6, =0
	sub r7, r6, #103
	mul r6, r4, r7
	add r4, r5, r6
	ldr r5, [fp, #-4]
	ldr r6, =0
	add r7, r6, #0
	add r6, r7, #0
	add r7, r6, #0
	add r6, r7, #0
	add r7, r6, #0
	add r6, r7, #4
	mov r7, #4
	mul r7, r6, r7
	add r6, r5, r7
	ldr r5, [r6]
	ldr r6, =0
	sub r7, r6, #123
	mul r6, r5, r7
	add r5, r4, r6
	ldr r4, [fp, #-4]
	ldr r6, =0
	add r7, r6, #1
	add r6, r7, #1
	add r7, r6, #1
	add r6, r7, #1
	add r7, r6, #1
	add r6, r7, #0
	mov r7, #4
	mul r6, r6, r7
	add r7, r4, r6
	ldr r4, [r7]
	ldr r6, =64
	mul r7, r4, r6
	add r4, r5, r7
	ldr r5, [fp, #-4]
	ldr r6, =0
	add r7, r6, #1
	add r6, r7, #1
	add r7, r6, #1
	add r6, r7, #1
	add r7, r6, #1
	add r6, r7, #1
	mov r7, #4
	mul r7, r6, r7
	add r6, r5, r7
	ldr r5, [r6]
	ldr r6, =0
	sub r7, r6, #120
	mul r6, r5, r7
	add r5, r4, r6
	ldr r4, [fp, #-4]
	ldr r6, =0
	add r7, r6, #1
	add r6, r7, #1
	add r7, r6, #1
	add r6, r7, #1
	add r7, r6, #1
	add r6, r7, #2
	mov r7, #4
	mul r7, r6, r7
	add r6, r4, r7
	ldr r4, [r6]
	ldr r6, =50
	mul r7, r4, r6
	add r4, r5, r7
	ldr r5, [fp, #-4]
	ldr r6, =0
	add r7, r6, #1
	add r6, r7, #1
	add r7, r6, #1
	add r6, r7, #1
	add r7, r6, #1
	add r6, r7, #3
	mov r7, #4
	mul r6, r6, r7
	add r7, r5, r6
	ldr r5, [r7]
	ldr r6, =0
	sub r7, r6, #59
	mul r6, r5, r7
	add r5, r4, r6
	ldr r4, [fp, #-4]
	ldr r6, =0
	add r7, r6, #1
	add r6, r7, #1
	add r7, r6, #1
	add r6, r7, #1
	add r7, r6, #1
	add r6, r7, #4
	mov r7, #4
	mul r7, r6, r7
	add r6, r4, r7
	ldr r4, [r6]
	ldr r6, =47
	mul r7, r4, r6
	add r4, r5, r7
	ldr r5, [fp, #-4]
	ldr r6, =0
	add r7, r6, #2
	add r6, r7, #2
	add r7, r6, #2
	add r6, r7, #2
	add r7, r6, #2
	add r6, r7, #0
	mov r7, #4
	mul r6, r6, r7
	add r7, r5, r6
	ldr r5, [r7]
	ldr r6, =0
	sub r7, r6, #111
	mul r6, r5, r7
	add r5, r4, r6
	ldr r4, [fp, #-4]
	ldr r6, =0
	add r7, r6, #2
	add r6, r7, #2
	add r7, r6, #2
	add r6, r7, #2
	add r7, r6, #2
	add r6, r7, #1
	mov r7, #4
	mul r7, r6, r7
	add r6, r4, r7
	ldr r4, [r6]
	ldr r6, =0
	sub r7, r6, #67
	mul r6, r4, r7
	add r4, r5, r6
	ldr r5, [fp, #-4]
	ldr r6, =0
	add r7, r6, #2
	add r6, r7, #2
	add r7, r6, #2
	add r6, r7, #2
	add r7, r6, #2
	add r6, r7, #2
	mov r7, #4
	mul r7, r6, r7
	add r6, r5, r7
	ldr r5, [r6]
	ldr r6, =0
	sub r7, r6, #106
	mul r6, r5, r7
	add r5, r4, r6
	ldr r4, [fp, #-4]
	ldr r6, =0
	add r7, r6, #2
	add r6, r7, #2
	add r7, r6, #2
	add r6, r7, #2
	add r7, r6, #2
	add r6, r7, #3
	mov r7, #4
	mul r7, r6, r7
	add r6, r4, r7
	ldr r4, [r6]
	ldr r6, =0
	sub r7, r6, #75
	mul r6, r4, r7
	add r4, r5, r6
	ldr r5, [fp, #-4]
	ldr r6, =0
	add r7, r6, #2
	add r6, r7, #2
	add r7, r6, #2
	add r6, r7, #2
	add r7, r6, #2
	add r6, r7, #4
	mov r7, #4
	mul r6, r6, r7
	add r7, r5, r6
	ldr r5, [r7]
	ldr r6, =0
	sub r7, r6, #102
	mul r6, r5, r7
	add r5, r4, r6
	ldr r4, [fp, #-4]
	ldr r6, =0
	add r7, r6, #3
	add r6, r7, #3
	add r7, r6, #3
	add r6, r7, #3
	add r7, r6, #3
	add r6, r7, #0
	mov r7, #4
	mul r7, r6, r7
	add r6, r4, r7
	ldr r4, [r6]
	ldr r6, =34
	mul r7, r4, r6
	add r4, r5, r7
	ldr r5, [fp, #-4]
	ldr r6, =0
	add r7, r6, #3
	add r6, r7, #3
	add r7, r6, #3
	add r6, r7, #3
	add r7, r6, #3
	add r6, r7, #1
	mov r7, #4
	mul r7, r6, r7
	add r6, r5, r7
	ldr r5, [r6]
	ldr r6, =0
	sub r7, r6, #39
	mul r6, r5, r7
	add r5, r4, r6
	ldr r4, [fp, #-4]
	ldr r6, =0
	add r7, r6, #3
	add r6, r7, #3
	add r7, r6, #3
	add r6, r7, #3
	add r7, r6, #3
	add r6, r7, #2
	mov r7, #4
	mul r7, r6, r7
	add r6, r4, r7
	ldr r4, [r6]
	ldr r6, =65
	mul r7, r4, r6
	add r4, r5, r7
	ldr r5, [fp, #-4]
	ldr r6, =0
	add r7, r6, #3
	add r6, r7, #3
	add r7, r6, #3
	add r6, r7, #3
	add r7, r6, #3
	add r6, r7, #3
	mov r7, #4
	mul r7, r6, r7
	add r6, r5, r7
	ldr r5, [r6]
	ldr r6, =47
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [fp, #-4]
	ldr r6, =0
	add r7, r6, #3
	add r6, r7, #3
	b .B0
.LTORG
.B0:
	add r7, r6, #3
	add r6, r7, #3
	add r7, r6, #3
	add r6, r7, #4
	mov r7, #4
	mul r7, r6, r7
	add r6, r4, r7
	ldr r4, [r6]
	ldr r6, =113
	mul r7, r4, r6
	add r4, r5, r7
	ldr r5, [fp, #-4]
	ldr r6, =0
	add r7, r6, #4
	add r6, r7, #4
	add r7, r6, #4
	add r6, r7, #4
	add r7, r6, #4
	add r6, r7, #0
	mov r7, #4
	mul r7, r6, r7
	add r6, r5, r7
	ldr r5, [r6]
	ldr r6, =110
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [fp, #-4]
	ldr r6, =0
	add r7, r6, #4
	add r6, r7, #4
	add r7, r6, #4
	add r6, r7, #4
	add r7, r6, #4
	add r6, r7, #1
	mov r7, #4
	mul r6, r6, r7
	add r7, r4, r6
	ldr r4, [r7]
	ldr r6, =47
	mul r7, r4, r6
	add r4, r5, r7
	ldr r5, [fp, #-4]
	ldr r6, =0
	add r7, r6, #4
	add r6, r7, #4
	add r7, r6, #4
	add r6, r7, #4
	add r7, r6, #4
	add r6, r7, #2
	mov r7, #4
	mul r6, r6, r7
	add r7, r5, r6
	ldr r5, [r7]
	ldr r6, =0
	sub r7, r6, #4
	mul r6, r5, r7
	add r5, r4, r6
	ldr r4, [fp, #-4]
	ldr r6, =0
	add r7, r6, #4
	add r6, r7, #4
	add r7, r6, #4
	add r6, r7, #4
	add r7, r6, #4
	add r6, r7, #3
	mov r7, #4
	mul r7, r6, r7
	add r6, r4, r7
	ldr r4, [r6]
	ldr r6, =80
	mul r7, r4, r6
	add r4, r5, r7
	ldr r5, [fp, #-4]
	ldr r6, =0
	add r7, r6, #4
	add r6, r7, #4
	add r7, r6, #4
	add r6, r7, #4
	add r7, r6, #4
	add r6, r7, #4
	mov r7, #4
	mul r7, r6, r7
	add r6, r5, r7
	ldr r5, [r6]
	ldr r6, =46
	mul r7, r5, r6
	add r5, r4, r7
	mov r0, r5
	bl relu_reg
	mov r6, r0
	ldr r4, =39
	mul r5, r6, r4
	ldr r4, [fp, #-4]
	ldr r6, =0
	add r7, r6, #0
	add r6, r7, #0
	add r7, r6, #0
	add r6, r7, #0
	add r7, r6, #0
	add r6, r7, #0
	mov r7, #4
	mul r7, r6, r7
	add r6, r4, r7
	ldr r4, [r6]
	ldr r6, =0
	sub r7, r6, #106
	mul r6, r4, r7
	ldr r4, [fp, #-4]
	ldr r7, =0
	add r8, r7, #0
	add r7, r8, #0
	add r8, r7, #0
	add r7, r8, #0
	add r8, r7, #0
	add r7, r8, #1
	mov r8, #4
	mul r8, r7, r8
	add r7, r4, r8
	ldr r4, [r7]
	ldr r7, =126
	mul r8, r4, r7
	add r4, r6, r8
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #0
	add r7, r8, #0
	add r8, r7, #0
	add r7, r8, #0
	add r8, r7, #0
	add r7, r8, #2
	mov r8, #4
	mul r8, r7, r8
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =0
	sub r8, r7, #18
	mul r7, r6, r8
	add r6, r4, r7
	ldr r4, [fp, #-4]
	ldr r7, =0
	add r8, r7, #0
	add r7, r8, #0
	add r8, r7, #0
	add r7, r8, #0
	add r8, r7, #0
	add r7, r8, #3
	mov r8, #4
	mul r7, r7, r8
	add r8, r4, r7
	ldr r4, [r8]
	ldr r7, =0
	sub r8, r7, #31
	mul r7, r4, r8
	add r4, r6, r7
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #0
	add r7, r8, #0
	add r8, r7, #0
	add r7, r8, #0
	add r8, r7, #0
	add r7, r8, #4
	mov r8, #4
	mul r7, r7, r8
	add r8, r6, r7
	ldr r6, [r8]
	ldr r7, =0
	sub r8, r7, #8
	mul r7, r6, r8
	add r6, r4, r7
	ldr r4, [fp, #-4]
	ldr r7, =0
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #0
	mov r8, #4
	mul r8, r7, r8
	add r7, r4, r8
	ldr r4, [r7]
	ldr r7, =47
	mul r8, r4, r7
	add r4, r6, r8
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #1
	mov r8, #4
	mul r8, r7, r8
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =0
	sub r8, r7, #4
	mul r7, r6, r8
	add r6, r4, r7
	ldr r4, [fp, #-4]
	ldr r7, =0
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #2
	mov r8, #4
	mul r8, r7, r8
	add r7, r4, r8
	ldr r4, [r7]
	ldr r7, =67
	mul r8, r4, r7
	add r4, r6, r8
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #3
	mov r8, #4
	mul r7, r7, r8
	add r8, r6, r7
	ldr r6, [r8]
	ldr r7, =0
	sub r8, r7, #94
	mul r7, r6, r8
	add r6, r4, r7
	ldr r4, [fp, #-4]
	ldr r7, =0
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #4
	mov r8, #4
	mul r7, r7, r8
	add r8, r4, r7
	ldr r4, [r8]
	ldr r7, =0
	sub r8, r7, #121
	mul r7, r4, r8
	add r4, r6, r7
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #0
	mov r8, #4
	mul r8, r7, r8
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =7
	mul r8, r6, r7
	add r6, r4, r8
	ldr r4, [fp, #-4]
	ldr r7, =0
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #1
	mov r8, #4
	mul r7, r7, r8
	add r8, r4, r7
	ldr r4, [r8]
	ldr r7, =0
	sub r8, r7, #21
	mul r7, r4, r8
	add r4, r6, r7
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #2
	mov r8, #4
	mul r8, r7, r8
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =0
	sub r8, r7, #60
	mul r7, r6, r8
	add r6, r4, r7
	ldr r4, [fp, #-4]
	ldr r7, =0
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	b .B1
.LTORG
.B1:
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #3
	mov r8, #4
	mul r8, r7, r8
	add r7, r4, r8
	ldr r4, [r7]
	ldr r7, =0
	sub r8, r7, #43
	mul r7, r4, r8
	add r4, r6, r7
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #4
	mov r8, #4
	mul r8, r7, r8
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =105
	mul r8, r6, r7
	add r6, r4, r8
	ldr r4, [fp, #-4]
	ldr r7, =0
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #0
	mov r8, #4
	mul r8, r7, r8
	add r7, r4, r8
	ldr r4, [r7]
	ldr r7, =0
	sub r8, r7, #42
	mul r7, r4, r8
	add r4, r6, r7
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #1
	mov r8, #4
	mul r7, r7, r8
	add r8, r6, r7
	ldr r6, [r8]
	ldr r7, =87
	mul r8, r6, r7
	add r6, r4, r8
	ldr r4, [fp, #-4]
	ldr r7, =0
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #2
	mov r8, #4
	mul r8, r7, r8
	add r7, r4, r8
	ldr r4, [r7]
	ldr r7, =29
	mul r8, r4, r7
	add r4, r6, r8
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #3
	mov r8, #4
	mul r7, r7, r8
	add r8, r6, r7
	ldr r6, [r8]
	ldr r7, =0
	sub r8, r7, #106
	mul r7, r6, r8
	add r6, r4, r7
	ldr r4, [fp, #-4]
	ldr r7, =0
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #4
	mov r8, #4
	mul r7, r7, r8
	add r8, r4, r7
	ldr r4, [r8]
	ldr r7, =0
	sub r8, r7, #31
	mul r7, r4, r8
	add r4, r6, r7
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #0
	mov r8, #4
	mul r8, r7, r8
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =0
	sub r8, r7, #110
	mul r7, r6, r8
	add r6, r4, r7
	ldr r4, [fp, #-4]
	ldr r7, =0
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #1
	mov r8, #4
	mul r8, r7, r8
	add r7, r4, r8
	ldr r4, [r7]
	ldr r7, =0
	sub r8, r7, #100
	mul r7, r4, r8
	add r4, r6, r7
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #2
	mov r8, #4
	mul r7, r7, r8
	add r8, r6, r7
	ldr r6, [r8]
	ldr r7, =0
	sub r8, r7, #22
	mul r7, r6, r8
	add r6, r4, r7
	ldr r4, [fp, #-4]
	ldr r7, =0
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #3
	mov r8, #4
	mul r8, r7, r8
	add r7, r4, r8
	ldr r4, [r7]
	ldr r7, =0
	sub r8, r7, #75
	mul r7, r4, r8
	add r4, r6, r7
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #4
	mov r8, #4
	mul r8, r7, r8
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =0
	sub r8, r7, #125
	mul r7, r6, r8
	add r6, r4, r7
	mov r0, r6
	bl relu_reg
	mov r4, r0
	ldr r6, =77
	mul r7, r4, r6
	add r4, r5, r7
	ldr r5, [fp, #-4]
	ldr r6, =0
	add r7, r6, #0
	add r6, r7, #0
	add r7, r6, #0
	add r6, r7, #0
	add r7, r6, #0
	add r6, r7, #0
	mov r7, #4
	mul r7, r6, r7
	add r6, r5, r7
	ldr r5, [r6]
	ldr r6, =26
	mul r7, r5, r6
	ldr r5, [fp, #-4]
	ldr r6, =0
	add r8, r6, #0
	add r6, r8, #0
	add r8, r6, #0
	add r6, r8, #0
	add r8, r6, #0
	add r6, r8, #1
	mov r8, #4
	mul r8, r6, r8
	add r6, r5, r8
	ldr r5, [r6]
	ldr r6, =76
	mul r8, r5, r6
	add r5, r7, r8
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #0
	add r7, r8, #0
	add r8, r7, #0
	add r7, r8, #0
	add r8, r7, #0
	add r7, r8, #2
	mov r8, #4
	mul r8, r7, r8
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =0
	sub r8, r7, #70
	mul r7, r6, r8
	add r6, r5, r7
	ldr r5, [fp, #-4]
	ldr r7, =0
	add r8, r7, #0
	add r7, r8, #0
	add r8, r7, #0
	add r7, r8, #0
	add r8, r7, #0
	add r7, r8, #3
	mov r8, #4
	mul r8, r7, r8
	add r7, r5, r8
	ldr r5, [r7]
	ldr r7, =29
	mul r8, r5, r7
	add r5, r6, r8
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #0
	add r7, r8, #0
	add r8, r7, #0
	add r7, r8, #0
	add r8, r7, #0
	add r7, r8, #4
	mov r8, #4
	mul r8, r7, r8
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =0
	sub r8, r7, #95
	mul r7, r6, r8
	add r6, r5, r7
	ldr r5, [fp, #-4]
	ldr r7, =0
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #0
	mov r8, #4
	mul r8, r7, r8
	add r7, r5, r8
	ldr r5, [r7]
	ldr r7, =96
	mul r8, r5, r7
	add r5, r6, r8
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #1
	mov r8, #4
	mul r8, r7, r8
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =52
	mul r8, r6, r7
	add r6, r5, r8
	ldr r5, [fp, #-4]
	ldr r7, =0
	add r8, r7, #1
	add r7, r8, #1
	b .B2
.LTORG
.B2:
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #2
	mov r8, #4
	mul r8, r7, r8
	add r7, r5, r8
	ldr r5, [r7]
	ldr r7, =0
	sub r8, r7, #68
	mul r7, r5, r8
	add r5, r6, r7
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #3
	mov r8, #4
	mul r8, r7, r8
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =0
	sub r8, r7, #5
	mul r7, r6, r8
	add r6, r5, r7
	ldr r5, [fp, #-4]
	ldr r7, =0
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #4
	mov r8, #4
	mul r7, r7, r8
	add r8, r5, r7
	ldr r5, [r8]
	ldr r7, =34
	mul r8, r5, r7
	add r5, r6, r8
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #0
	mov r8, #4
	mul r8, r7, r8
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =0
	sub r8, r7, #34
	mul r7, r6, r8
	add r6, r5, r7
	ldr r5, [fp, #-4]
	ldr r7, =0
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #1
	mov r8, #4
	mul r8, r7, r8
	add r7, r5, r8
	ldr r5, [r7]
	ldr r7, =102
	mul r8, r5, r7
	add r5, r6, r8
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #2
	mov r8, #4
	mul r8, r7, r8
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =6
	mul r8, r6, r7
	add r6, r5, r8
	ldr r5, [fp, #-4]
	ldr r7, =0
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #3
	mov r8, #4
	mul r7, r7, r8
	add r8, r5, r7
	ldr r5, [r8]
	ldr r7, =0
	sub r8, r7, #38
	mul r7, r5, r8
	add r5, r6, r7
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #4
	mov r8, #4
	mul r8, r7, r8
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =27
	mul r8, r6, r7
	add r6, r5, r8
	ldr r5, [fp, #-4]
	ldr r7, =0
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #0
	mov r8, #4
	mul r7, r7, r8
	add r8, r5, r7
	ldr r5, [r8]
	ldr r7, =110
	mul r8, r5, r7
	add r5, r6, r8
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #1
	mov r8, #4
	mul r8, r7, r8
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =116
	mul r8, r6, r7
	add r6, r5, r8
	ldr r5, [fp, #-4]
	ldr r7, =0
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #2
	mov r8, #4
	mul r8, r7, r8
	add r7, r5, r8
	ldr r5, [r7]
	ldr r7, =39
	mul r8, r5, r7
	add r5, r6, r8
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #3
	mov r8, #4
	mul r8, r7, r8
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =0
	sub r8, r7, #63
	mul r7, r6, r8
	add r6, r5, r7
	ldr r5, [fp, #-4]
	ldr r7, =0
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #4
	mov r8, #4
	mul r8, r7, r8
	add r7, r5, r8
	ldr r5, [r7]
	ldr r7, =0
	sub r8, r7, #99
	mul r7, r5, r8
	add r5, r6, r7
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #0
	mov r8, #4
	mul r8, r7, r8
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =65
	mul r8, r6, r7
	add r6, r5, r8
	ldr r5, [fp, #-4]
	ldr r7, =0
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #1
	mov r8, #4
	mul r8, r7, r8
	add r7, r5, r8
	ldr r5, [r7]
	ldr r7, =120
	mul r8, r5, r7
	add r5, r6, r8
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #2
	mov r8, #4
	mul r8, r7, r8
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =0
	sub r8, r7, #39
	mul r7, r6, r8
	add r6, r5, r7
	ldr r5, [fp, #-4]
	ldr r7, =0
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #3
	mov r8, #4
	mul r8, r7, r8
	add r7, r5, r8
	ldr r5, [r7]
	ldr r7, =0
	sub r8, r7, #6
	mul r7, r5, r8
	add r5, r6, r7
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #4
	mov r8, #4
	mul r8, r7, r8
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =94
	mul r8, r6, r7
	add r6, r5, r8
	mov r0, r6
	bl relu_reg
	mov r5, r0
	ldr r6, =127
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [fp, #-4]
	ldr r6, =0
	add r7, r6, #0
	add r6, r7, #0
	add r7, r6, #0
	add r6, r7, #0
	add r7, r6, #0
	add r6, r7, #0
	mov r7, #4
	mul r7, r6, r7
	add r6, r4, r7
	ldr r4, [r6]
	ldr r6, =0
	sub r7, r6, #23
	mul r6, r4, r7
	ldr r4, [fp, #-4]
	ldr r7, =0
	add r8, r7, #0
	add r7, r8, #0
	add r8, r7, #0
	b .B3
.LTORG
.B3:
	add r7, r8, #0
	add r8, r7, #0
	add r7, r8, #1
	mov r8, #4
	mul r7, r7, r8
	add r8, r4, r7
	ldr r4, [r8]
	ldr r7, =0
	sub r8, r7, #63
	mul r7, r4, r8
	add r4, r6, r7
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #0
	add r7, r8, #0
	add r8, r7, #0
	add r7, r8, #0
	add r8, r7, #0
	add r7, r8, #2
	mov r8, #4
	mul r8, r7, r8
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =49
	mul r8, r6, r7
	add r6, r4, r8
	ldr r4, [fp, #-4]
	ldr r7, =0
	add r8, r7, #0
	add r7, r8, #0
	add r8, r7, #0
	add r7, r8, #0
	add r8, r7, #0
	add r7, r8, #3
	mov r8, #4
	mul r8, r7, r8
	add r7, r4, r8
	ldr r4, [r7]
	ldr r7, =50
	mul r8, r4, r7
	add r4, r6, r8
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #0
	add r7, r8, #0
	add r8, r7, #0
	add r7, r8, #0
	add r8, r7, #0
	add r7, r8, #4
	mov r8, #4
	mul r8, r7, r8
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =72
	mul r8, r6, r7
	add r6, r4, r8
	ldr r4, [fp, #-4]
	ldr r7, =0
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #0
	mov r8, #4
	mul r8, r7, r8
	add r7, r4, r8
	ldr r4, [r7]
	ldr r7, =85
	mul r8, r4, r7
	add r4, r6, r8
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #1
	mov r8, #4
	mul r7, r7, r8
	add r8, r6, r7
	ldr r6, [r8]
	ldr r7, =0
	sub r8, r7, #30
	mul r7, r6, r8
	add r6, r4, r7
	ldr r4, [fp, #-4]
	ldr r7, =0
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #2
	mov r8, #4
	mul r8, r7, r8
	add r7, r4, r8
	ldr r4, [r7]
	ldr r7, =12
	mul r8, r4, r7
	add r4, r6, r8
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #3
	mov r8, #4
	mul r8, r7, r8
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =125
	mul r8, r6, r7
	add r6, r4, r8
	ldr r4, [fp, #-4]
	ldr r7, =0
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #4
	mov r8, #4
	mul r8, r7, r8
	add r7, r4, r8
	ldr r4, [r7]
	ldr r7, =0
	sub r8, r7, #117
	mul r7, r4, r8
	add r4, r6, r7
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #0
	mov r8, #4
	mul r8, r7, r8
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =0
	sub r8, r7, #65
	mul r7, r6, r8
	add r6, r4, r7
	ldr r4, [fp, #-4]
	ldr r7, =0
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #1
	mov r8, #4
	mul r8, r7, r8
	add r7, r4, r8
	ldr r4, [r7]
	ldr r7, =0
	sub r8, r7, #67
	mul r7, r4, r8
	add r4, r6, r7
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #2
	mov r8, #4
	mul r8, r7, r8
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =125
	mul r8, r6, r7
	add r6, r4, r8
	ldr r4, [fp, #-4]
	ldr r7, =0
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #3
	mov r8, #4
	mul r8, r7, r8
	add r7, r4, r8
	ldr r4, [r7]
	ldr r7, =110
	mul r8, r4, r7
	add r4, r6, r8
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #4
	mov r8, #4
	mul r8, r7, r8
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =0
	sub r8, r7, #31
	mul r7, r6, r8
	add r6, r4, r7
	ldr r4, [fp, #-4]
	ldr r7, =0
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #0
	mov r8, #4
	mul r8, r7, r8
	add r7, r4, r8
	ldr r4, [r7]
	ldr r7, =0
	sub r8, r7, #123
	mul r7, r4, r8
	add r4, r6, r7
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #1
	mov r8, #4
	mul r8, r7, r8
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =83
	mul r8, r6, r7
	add r6, r4, r8
	ldr r4, [fp, #-4]
	ldr r7, =0
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #2
	mov r8, #4
	mul r7, r7, r8
	add r8, r4, r7
	ldr r4, [r8]
	ldr r7, =122
	mul r8, r4, r7
	add r4, r6, r8
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #3
	mov r8, #4
	mul r8, r7, r8
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =11
	mul r8, r6, r7
	add r6, r4, r8
	ldr r4, [fp, #-4]
	ldr r7, =0
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #4
	mov r8, #4
	mul r8, r7, r8
	add r7, r4, r8
	ldr r4, [r7]
	ldr r7, =0
	sub r8, r7, #23
	mul r7, r4, r8
	add r4, r6, r7
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #0
	mov r8, #4
	mul r8, r7, r8
	add r7, r6, r8
	ldr r6, [r7]
	b .B4
.LTORG
.B4:
	ldr r7, =0
	sub r8, r7, #47
	mul r7, r6, r8
	add r6, r4, r7
	ldr r4, [fp, #-4]
	ldr r7, =0
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #1
	mov r8, #4
	mul r8, r7, r8
	add r7, r4, r8
	ldr r4, [r7]
	ldr r7, =0
	sub r8, r7, #32
	mul r7, r4, r8
	add r4, r6, r7
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #2
	mov r8, #4
	mul r8, r7, r8
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =0
	sub r8, r7, #117
	mul r7, r6, r8
	add r6, r4, r7
	ldr r4, [fp, #-4]
	ldr r7, =0
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #3
	mov r8, #4
	mul r8, r7, r8
	add r7, r4, r8
	ldr r4, [r7]
	ldr r7, =95
	mul r8, r4, r7
	add r4, r6, r8
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #4
	mov r8, #4
	mul r8, r7, r8
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =118
	mul r8, r6, r7
	add r6, r4, r8
	mov r0, r6
	bl relu_reg
	mov r4, r0
	ldr r6, =0
	sub r7, r6, #106
	mul r6, r4, r7
	add r4, r5, r6
	ldr r5, [fp, #-4]
	ldr r6, =0
	add r7, r6, #0
	add r6, r7, #0
	add r7, r6, #0
	add r6, r7, #0
	add r7, r6, #0
	add r6, r7, #0
	mov r7, #4
	mul r7, r6, r7
	add r6, r5, r7
	ldr r5, [r6]
	ldr r6, =8
	mul r7, r5, r6
	ldr r5, [fp, #-4]
	ldr r6, =0
	add r8, r6, #0
	add r6, r8, #0
	add r8, r6, #0
	add r6, r8, #0
	add r8, r6, #0
	add r6, r8, #1
	mov r8, #4
	mul r8, r6, r8
	add r6, r5, r8
	ldr r5, [r6]
	ldr r6, =82
	mul r8, r5, r6
	add r5, r7, r8
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #0
	add r7, r8, #0
	add r8, r7, #0
	add r7, r8, #0
	add r8, r7, #0
	add r7, r8, #2
	mov r8, #4
	mul r8, r7, r8
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =0
	sub r8, r7, #104
	mul r7, r6, r8
	add r6, r5, r7
	ldr r5, [fp, #-4]
	ldr r7, =0
	add r8, r7, #0
	add r7, r8, #0
	add r8, r7, #0
	add r7, r8, #0
	add r8, r7, #0
	add r7, r8, #3
	mov r8, #4
	mul r8, r7, r8
	add r7, r5, r8
	ldr r5, [r7]
	ldr r7, =101
	mul r8, r5, r7
	add r5, r6, r8
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #0
	add r7, r8, #0
	add r8, r7, #0
	add r7, r8, #0
	add r8, r7, #0
	add r7, r8, #4
	mov r8, #4
	mul r7, r7, r8
	add r8, r6, r7
	ldr r6, [r8]
	ldr r7, =0
	sub r8, r7, #116
	mul r7, r6, r8
	add r6, r5, r7
	ldr r5, [fp, #-4]
	ldr r7, =0
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #0
	mov r8, #4
	mul r8, r7, r8
	add r7, r5, r8
	ldr r5, [r7]
	ldr r7, =0
	sub r8, r7, #63
	mul r7, r5, r8
	add r5, r6, r7
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #1
	mov r8, #4
	mul r8, r7, r8
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =0
	sub r8, r7, #16
	mul r7, r6, r8
	add r6, r5, r7
	ldr r5, [fp, #-4]
	ldr r7, =0
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #2
	mov r8, #4
	mul r8, r7, r8
	add r7, r5, r8
	ldr r5, [r7]
	ldr r7, =0
	sub r8, r7, #70
	mul r7, r5, r8
	add r5, r6, r7
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #3
	mov r8, #4
	mul r8, r7, r8
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =125
	mul r8, r6, r7
	add r6, r5, r8
	ldr r5, [fp, #-4]
	ldr r7, =0
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #4
	mov r8, #4
	mul r8, r7, r8
	add r7, r5, r8
	ldr r5, [r7]
	ldr r7, =75
	mul r8, r5, r7
	add r5, r6, r8
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #0
	mov r8, #4
	mul r8, r7, r8
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =66
	mul r8, r6, r7
	add r6, r5, r8
	ldr r5, [fp, #-4]
	ldr r7, =0
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #1
	mov r8, #4
	mul r7, r7, r8
	add r8, r5, r7
	ldr r5, [r8]
	ldr r7, =0
	sub r8, r7, #96
	mul r7, r5, r8
	add r5, r6, r7
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #2
	mov r8, #4
	mul r7, r7, r8
	add r8, r6, r7
	ldr r6, [r8]
	ldr r7, =0
	sub r8, r7, #101
	mul r7, r6, r8
	add r6, r5, r7
	ldr r5, [fp, #-4]
	ldr r7, =0
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #3
	mov r8, #4
	mul r8, r7, r8
	add r7, r5, r8
	ldr r5, [r7]
	ldr r7, =0
	sub r8, r7, #114
	mul r7, r5, r8
	add r5, r6, r7
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #4
	mov r8, #4
	mul r8, r7, r8
	b .B5
.LTORG
.B5:
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =59
	mul r8, r6, r7
	add r6, r5, r8
	ldr r5, [fp, #-4]
	ldr r7, =0
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #0
	mov r8, #4
	mul r8, r7, r8
	add r7, r5, r8
	ldr r5, [r7]
	ldr r7, =12
	mul r8, r5, r7
	add r5, r6, r8
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #1
	mov r8, #4
	mul r7, r7, r8
	add r8, r6, r7
	ldr r6, [r8]
	ldr r7, =5
	mul r8, r6, r7
	add r6, r5, r8
	ldr r5, [fp, #-4]
	ldr r7, =0
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #2
	mov r8, #4
	mul r8, r7, r8
	add r7, r5, r8
	ldr r5, [r7]
	ldr r7, =0
	sub r8, r7, #95
	mul r7, r5, r8
	add r5, r6, r7
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #3
	mov r8, #4
	mul r8, r7, r8
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =116
	mul r8, r6, r7
	add r6, r5, r8
	ldr r5, [fp, #-4]
	ldr r7, =0
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #4
	mov r8, #4
	mul r7, r7, r8
	add r8, r5, r7
	ldr r5, [r8]
	ldr r7, =0
	sub r8, r7, #93
	mul r7, r5, r8
	add r5, r6, r7
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #0
	mov r8, #4
	mul r8, r7, r8
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =15
	mul r8, r6, r7
	add r6, r5, r8
	ldr r5, [fp, #-4]
	ldr r7, =0
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #1
	mov r8, #4
	mul r8, r7, r8
	add r7, r5, r8
	ldr r5, [r7]
	ldr r7, =79
	mul r8, r5, r7
	add r5, r6, r8
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #2
	mov r8, #4
	mul r8, r7, r8
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =3
	mul r8, r6, r7
	add r6, r5, r8
	ldr r5, [fp, #-4]
	ldr r7, =0
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #3
	mov r8, #4
	mul r7, r7, r8
	add r8, r5, r7
	ldr r5, [r8]
	ldr r7, =49
	mul r8, r5, r7
	add r5, r6, r8
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #4
	mov r8, #4
	mul r8, r7, r8
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =0
	sub r8, r7, #124
	mul r7, r6, r8
	add r6, r5, r7
	mov r0, r6
	bl relu_reg
	mov r5, r0
	ldr r6, =0
	sub r7, r6, #3
	mul r6, r5, r7
	add r5, r4, r6
	ldr r4, [fp, #-4]
	ldr r6, =0
	add r7, r6, #0
	add r6, r7, #0
	add r7, r6, #0
	add r6, r7, #0
	add r7, r6, #0
	add r6, r7, #0
	mov r7, #4
	mul r7, r6, r7
	add r6, r4, r7
	ldr r4, [r6]
	ldr r6, =81
	mul r7, r4, r6
	ldr r4, [fp, #-4]
	ldr r6, =0
	add r8, r6, #0
	add r6, r8, #0
	add r8, r6, #0
	add r6, r8, #0
	add r8, r6, #0
	add r6, r8, #1
	mov r8, #4
	mul r8, r6, r8
	add r6, r4, r8
	ldr r4, [r6]
	ldr r6, =68
	mul r8, r4, r6
	add r4, r7, r8
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #0
	add r7, r8, #0
	add r8, r7, #0
	add r7, r8, #0
	add r8, r7, #0
	add r7, r8, #2
	mov r8, #4
	mul r8, r7, r8
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =0
	sub r8, r7, #102
	mul r7, r6, r8
	add r6, r4, r7
	ldr r4, [fp, #-4]
	ldr r7, =0
	add r8, r7, #0
	add r7, r8, #0
	add r8, r7, #0
	add r7, r8, #0
	add r8, r7, #0
	add r7, r8, #3
	mov r8, #4
	mul r8, r7, r8
	add r7, r4, r8
	ldr r4, [r7]
	ldr r7, =0
	sub r8, r7, #74
	mul r7, r4, r8
	add r4, r6, r7
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #0
	add r7, r8, #0
	add r8, r7, #0
	add r7, r8, #0
	add r8, r7, #0
	add r7, r8, #4
	mov r8, #4
	mul r8, r7, r8
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =121
	mul r8, r6, r7
	add r6, r4, r8
	ldr r4, [fp, #-4]
	ldr r7, =0
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #0
	mov r8, #4
	mul r8, r7, r8
	add r7, r4, r8
	ldr r4, [r7]
	ldr r7, =0
	sub r8, r7, #15
	mul r7, r4, r8
	add r4, r6, r7
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #1
	mov r8, #4
	mul r8, r7, r8
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =55
	mul r8, r6, r7
	add r6, r4, r8
	ldr r4, [fp, #-4]
	ldr r7, =0
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #2
	mov r8, #4
	mul r8, r7, r8
	add r7, r4, r8
	ldr r4, [r7]
	ldr r7, =101
	mul r8, r4, r7
	add r4, r6, r8
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #3
	mov r8, #4
	mul r8, r7, r8
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =0
	b .B6
.LTORG
.B6:
	sub r8, r7, #13
	mul r7, r6, r8
	add r6, r4, r7
	ldr r4, [fp, #-4]
	ldr r7, =0
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #4
	mov r8, #4
	mul r8, r7, r8
	add r7, r4, r8
	ldr r4, [r7]
	ldr r7, =0
	sub r8, r7, #62
	mul r7, r4, r8
	add r4, r6, r7
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #0
	mov r8, #4
	mul r8, r7, r8
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =64
	mul r8, r6, r7
	add r6, r4, r8
	ldr r4, [fp, #-4]
	ldr r7, =0
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #1
	mov r8, #4
	mul r7, r7, r8
	add r8, r4, r7
	ldr r4, [r8]
	ldr r7, =114
	mul r8, r4, r7
	add r4, r6, r8
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #2
	mov r8, #4
	mul r8, r7, r8
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =38
	mul r8, r6, r7
	add r6, r4, r8
	ldr r4, [fp, #-4]
	ldr r7, =0
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #3
	mov r8, #4
	mul r8, r7, r8
	add r7, r4, r8
	ldr r4, [r7]
	ldr r7, =0
	sub r8, r7, #21
	mul r7, r4, r8
	add r4, r6, r7
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #4
	mov r8, #4
	mul r8, r7, r8
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =112
	mul r8, r6, r7
	add r6, r4, r8
	ldr r4, [fp, #-4]
	ldr r7, =0
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #0
	mov r8, #4
	mul r7, r7, r8
	add r8, r4, r7
	ldr r4, [r8]
	ldr r7, =114
	mul r8, r4, r7
	add r4, r6, r8
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #1
	mov r8, #4
	mul r7, r7, r8
	add r8, r6, r7
	ldr r6, [r8]
	ldr r7, =112
	mul r8, r6, r7
	add r6, r4, r8
	ldr r4, [fp, #-4]
	ldr r7, =0
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #2
	mov r8, #4
	mul r8, r7, r8
	add r7, r4, r8
	ldr r4, [r7]
	ldr r7, =0
	sub r8, r7, #10
	mul r7, r4, r8
	add r4, r6, r7
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #3
	mov r8, #4
	mul r8, r7, r8
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =0
	sub r8, r7, #16
	mul r7, r6, r8
	add r6, r4, r7
	ldr r4, [fp, #-4]
	ldr r7, =0
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #4
	mov r8, #4
	mul r8, r7, r8
	add r7, r4, r8
	ldr r4, [r7]
	ldr r7, =0
	sub r8, r7, #50
	mul r7, r4, r8
	add r4, r6, r7
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #0
	mov r8, #4
	mul r8, r7, r8
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =0
	sub r8, r7, #112
	mul r7, r6, r8
	add r6, r4, r7
	ldr r4, [fp, #-4]
	ldr r7, =0
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #1
	mov r8, #4
	mul r8, r7, r8
	add r7, r4, r8
	ldr r4, [r7]
	ldr r7, =0
	sub r8, r7, #116
	mul r7, r4, r8
	add r4, r6, r7
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #2
	mov r8, #4
	mul r8, r7, r8
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =0
	sub r8, r7, #54
	mul r7, r6, r8
	add r6, r4, r7
	ldr r4, [fp, #-4]
	ldr r7, =0
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #3
	mov r8, #4
	mul r8, r7, r8
	add r7, r4, r8
	ldr r4, [r7]
	ldr r7, =82
	mul r8, r4, r7
	add r4, r6, r8
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #4
	mov r8, #4
	mul r7, r7, r8
	add r8, r6, r7
	ldr r6, [r8]
	ldr r7, =0
	sub r8, r7, #72
	mul r7, r6, r8
	add r6, r4, r7
	mov r0, r6
	bl relu_reg
	mov r4, r0
	ldr r6, =32
	mul r7, r4, r6
	add r4, r5, r7
	ldr r5, [fp, #-4]
	ldr r6, =0
	add r7, r6, #0
	add r6, r7, #0
	add r7, r6, #0
	add r6, r7, #0
	add r7, r6, #0
	add r6, r7, #0
	mov r7, #4
	mul r7, r6, r7
	add r6, r5, r7
	ldr r5, [r6]
	ldr r6, =15
	mul r7, r5, r6
	ldr r5, [fp, #-4]
	ldr r6, =0
	add r8, r6, #0
	add r6, r8, #0
	add r8, r6, #0
	add r6, r8, #0
	add r8, r6, #0
	add r6, r8, #1
	mov r8, #4
	mul r8, r6, r8
	add r6, r5, r8
	ldr r5, [r6]
	ldr r6, =0
	sub r8, r6, #77
	mul r6, r5, r8
	add r5, r7, r6
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #0
	add r7, r8, #0
	add r8, r7, #0
	add r7, r8, #0
	add r8, r7, #0
	add r7, r8, #2
	mov r8, #4
	mul r7, r7, r8
	add r8, r6, r7
	ldr r6, [r8]
	b .B7
.LTORG
.B7:
	ldr r7, =66
	mul r8, r6, r7
	add r6, r5, r8
	ldr r5, [fp, #-4]
	ldr r7, =0
	add r8, r7, #0
	add r7, r8, #0
	add r8, r7, #0
	add r7, r8, #0
	add r8, r7, #0
	add r7, r8, #3
	mov r8, #4
	mul r7, r7, r8
	add r8, r5, r7
	ldr r5, [r8]
	ldr r7, =0
	sub r8, r7, #90
	mul r7, r5, r8
	add r5, r6, r7
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #0
	add r7, r8, #0
	add r8, r7, #0
	add r7, r8, #0
	add r8, r7, #0
	add r7, r8, #4
	mov r8, #4
	mul r8, r7, r8
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =0
	sub r8, r7, #6
	mul r7, r6, r8
	add r6, r5, r7
	ldr r5, [fp, #-4]
	ldr r7, =0
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #0
	mov r8, #4
	mul r8, r7, r8
	add r7, r5, r8
	ldr r5, [r7]
	ldr r7, =0
	sub r8, r7, #30
	mul r7, r5, r8
	add r5, r6, r7
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #1
	mov r8, #4
	mul r7, r7, r8
	add r8, r6, r7
	ldr r6, [r8]
	ldr r7, =0
	sub r8, r7, #8
	mul r7, r6, r8
	add r6, r5, r7
	ldr r5, [fp, #-4]
	ldr r7, =0
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #2
	mov r8, #4
	mul r8, r7, r8
	add r7, r5, r8
	ldr r5, [r7]
	ldr r7, =81
	mul r8, r5, r7
	add r5, r6, r8
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #3
	mov r8, #4
	mul r8, r7, r8
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =2
	mul r8, r6, r7
	add r6, r5, r8
	ldr r5, [fp, #-4]
	ldr r7, =0
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #4
	mov r8, #4
	mul r8, r7, r8
	add r7, r5, r8
	ldr r5, [r7]
	ldr r7, =0
	sub r8, r7, #110
	mul r7, r5, r8
	add r5, r6, r7
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #0
	mov r8, #4
	mul r8, r7, r8
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =0
	sub r8, r7, #95
	mul r7, r6, r8
	add r6, r5, r7
	ldr r5, [fp, #-4]
	ldr r7, =0
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #1
	mov r8, #4
	mul r8, r7, r8
	add r7, r5, r8
	ldr r5, [r7]
	ldr r7, =59
	mul r8, r5, r7
	add r5, r6, r8
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #2
	mov r8, #4
	mul r8, r7, r8
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =52
	mul r8, r6, r7
	add r6, r5, r8
	ldr r5, [fp, #-4]
	ldr r7, =0
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #3
	mov r8, #4
	mul r8, r7, r8
	add r7, r5, r8
	ldr r5, [r7]
	ldr r7, =15
	mul r8, r5, r7
	add r5, r6, r8
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #4
	mov r8, #4
	mul r8, r7, r8
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =55
	mul r8, r6, r7
	add r6, r5, r8
	ldr r5, [fp, #-4]
	ldr r7, =0
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #0
	mov r8, #4
	mul r8, r7, r8
	add r7, r5, r8
	ldr r5, [r7]
	ldr r7, =0
	sub r8, r7, #33
	mul r7, r5, r8
	add r5, r6, r7
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #1
	mov r8, #4
	mul r7, r7, r8
	add r8, r6, r7
	ldr r6, [r8]
	ldr r7, =14
	mul r8, r6, r7
	add r6, r5, r8
	ldr r5, [fp, #-4]
	ldr r7, =0
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #2
	mov r8, #4
	mul r8, r7, r8
	add r7, r5, r8
	ldr r5, [r7]
	ldr r7, =58
	mul r8, r5, r7
	add r5, r6, r8
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #3
	mov r8, #4
	mul r8, r7, r8
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =67
	mul r8, r6, r7
	add r6, r5, r8
	ldr r5, [fp, #-4]
	ldr r7, =0
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #4
	mov r8, #4
	mul r8, r7, r8
	add r7, r5, r8
	ldr r5, [r7]
	ldr r7, =86
	mul r8, r5, r7
	add r5, r6, r8
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #0
	mov r8, #4
	mul r8, r7, r8
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =0
	sub r8, r7, #79
	mul r7, r6, r8
	add r6, r5, r7
	ldr r5, [fp, #-4]
	ldr r7, =0
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #1
	mov r8, #4
	mul r8, r7, r8
	add r7, r5, r8
	ldr r5, [r7]
	ldr r7, =48
	mul r8, r5, r7
	add r5, r6, r8
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #4
	add r7, r8, #4
	b .B8
.LTORG
.B8:
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #2
	mov r8, #4
	mul r8, r7, r8
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =0
	sub r8, r7, #13
	mul r7, r6, r8
	add r6, r5, r7
	ldr r5, [fp, #-4]
	ldr r7, =0
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #3
	mov r8, #4
	mul r8, r7, r8
	add r7, r5, r8
	ldr r5, [r7]
	ldr r7, =0
	sub r8, r7, #15
	mul r7, r5, r8
	add r5, r6, r7
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #4
	mov r8, #4
	mul r8, r7, r8
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =66
	mul r8, r6, r7
	add r6, r5, r8
	mov r0, r6
	bl relu_reg
	mov r5, r0
	ldr r6, =0
	sub r7, r6, #95
	mul r6, r5, r7
	add r5, r4, r6
	ldr r4, [fp, #-4]
	ldr r6, =0
	add r7, r6, #0
	add r6, r7, #0
	add r7, r6, #0
	add r6, r7, #0
	add r7, r6, #0
	add r6, r7, #0
	mov r7, #4
	mul r6, r6, r7
	add r7, r4, r6
	ldr r4, [r7]
	ldr r6, =33
	mul r7, r4, r6
	ldr r4, [fp, #-4]
	ldr r6, =0
	add r8, r6, #0
	add r6, r8, #0
	add r8, r6, #0
	add r6, r8, #0
	add r8, r6, #0
	add r6, r8, #1
	mov r8, #4
	mul r8, r6, r8
	add r6, r4, r8
	ldr r4, [r6]
	ldr r6, =82
	mul r8, r4, r6
	add r4, r7, r8
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #0
	add r7, r8, #0
	add r8, r7, #0
	add r7, r8, #0
	add r8, r7, #0
	add r7, r8, #2
	mov r8, #4
	mul r8, r7, r8
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =67
	mul r8, r6, r7
	add r6, r4, r8
	ldr r4, [fp, #-4]
	ldr r7, =0
	add r8, r7, #0
	add r7, r8, #0
	add r8, r7, #0
	add r7, r8, #0
	add r8, r7, #0
	add r7, r8, #3
	mov r8, #4
	mul r8, r7, r8
	add r7, r4, r8
	ldr r4, [r7]
	ldr r7, =30
	mul r8, r4, r7
	add r4, r6, r8
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #0
	add r7, r8, #0
	add r8, r7, #0
	add r7, r8, #0
	add r8, r7, #0
	add r7, r8, #4
	mov r8, #4
	mul r8, r7, r8
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =0
	sub r8, r7, #2
	mul r7, r6, r8
	add r6, r4, r7
	ldr r4, [fp, #-4]
	ldr r7, =0
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #0
	mov r8, #4
	mul r8, r7, r8
	add r7, r4, r8
	ldr r4, [r7]
	ldr r7, =65
	mul r8, r4, r7
	add r4, r6, r8
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #1
	mov r8, #4
	mul r7, r7, r8
	add r8, r6, r7
	ldr r6, [r8]
	ldr r7, =120
	mul r8, r6, r7
	add r6, r4, r8
	ldr r4, [fp, #-4]
	ldr r7, =0
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #2
	mov r8, #4
	mul r8, r7, r8
	add r7, r4, r8
	ldr r4, [r7]
	ldr r7, =0
	sub r8, r7, #13
	mul r7, r4, r8
	add r4, r6, r7
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #3
	mov r8, #4
	mul r8, r7, r8
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =18
	mul r8, r6, r7
	add r6, r4, r8
	ldr r4, [fp, #-4]
	ldr r7, =0
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #4
	mov r8, #4
	mul r8, r7, r8
	add r7, r4, r8
	ldr r4, [r7]
	ldr r7, =5
	mul r8, r4, r7
	add r4, r6, r8
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #0
	mov r8, #4
	mul r7, r7, r8
	add r8, r6, r7
	ldr r6, [r8]
	ldr r7, =104
	mul r8, r6, r7
	add r6, r4, r8
	ldr r4, [fp, #-4]
	ldr r7, =0
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #1
	mov r8, #4
	mul r8, r7, r8
	add r7, r4, r8
	ldr r4, [r7]
	ldr r7, =0
	sub r8, r7, #119
	mul r7, r4, r8
	add r4, r6, r7
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #2
	mov r8, #4
	mul r8, r7, r8
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =0
	sub r8, r7, #7
	mul r7, r6, r8
	add r6, r4, r7
	ldr r4, [fp, #-4]
	ldr r7, =0
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #3
	mov r8, #4
	mul r8, r7, r8
	add r7, r4, r8
	ldr r4, [r7]
	ldr r7, =71
	mul r8, r4, r7
	add r4, r6, r8
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #4
	mov r8, #4
	mul r8, r7, r8
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =107
	mul r8, r6, r7
	add r6, r4, r8
	ldr r4, [fp, #-4]
	ldr r7, =0
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #0
	mov r8, #4
	mul r8, r7, r8
	add r7, r4, r8
	ldr r4, [r7]
	ldr r7, =24
	mul r8, r4, r7
	add r4, r6, r8
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	b .B9
.LTORG
.B9:
	add r7, r8, #1
	mov r8, #4
	mul r8, r7, r8
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =82
	mul r8, r6, r7
	add r6, r4, r8
	ldr r4, [fp, #-4]
	ldr r7, =0
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #2
	mov r8, #4
	mul r8, r7, r8
	add r7, r4, r8
	ldr r4, [r7]
	ldr r7, =0
	sub r8, r7, #96
	mul r7, r4, r8
	add r4, r6, r7
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #3
	mov r8, #4
	mul r8, r7, r8
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =0
	sub r8, r7, #104
	mul r7, r6, r8
	add r6, r4, r7
	ldr r4, [fp, #-4]
	ldr r7, =0
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #4
	mov r8, #4
	mul r8, r7, r8
	add r7, r4, r8
	ldr r4, [r7]
	ldr r7, =0
	sub r8, r7, #121
	mul r7, r4, r8
	add r4, r6, r7
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #0
	mov r8, #4
	mul r8, r7, r8
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =65
	mul r8, r6, r7
	add r6, r4, r8
	ldr r4, [fp, #-4]
	ldr r7, =0
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #1
	mov r8, #4
	mul r8, r7, r8
	add r7, r4, r8
	ldr r4, [r7]
	ldr r7, =97
	mul r8, r4, r7
	add r4, r6, r8
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #2
	mov r8, #4
	mul r8, r7, r8
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =83
	mul r8, r6, r7
	add r6, r4, r8
	ldr r4, [fp, #-4]
	ldr r7, =0
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #3
	mov r8, #4
	mul r8, r7, r8
	add r7, r4, r8
	ldr r4, [r7]
	ldr r7, =46
	mul r8, r4, r7
	add r4, r6, r8
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #4
	mov r8, #4
	mul r8, r7, r8
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =0
	sub r8, r7, #84
	mul r7, r6, r8
	add r6, r4, r7
	mov r0, r6
	bl relu_reg
	mov r4, r0
	ldr r6, =0
	sub r7, r6, #50
	mul r6, r4, r7
	add r4, r5, r6
	ldr r5, [fp, #-4]
	ldr r6, =0
	add r7, r6, #0
	add r6, r7, #0
	add r7, r6, #0
	add r6, r7, #0
	add r7, r6, #0
	add r6, r7, #0
	mov r7, #4
	mul r7, r6, r7
	add r6, r5, r7
	ldr r5, [r6]
	ldr r6, =0
	sub r7, r6, #29
	mul r6, r5, r7
	ldr r5, [fp, #-4]
	ldr r7, =0
	add r8, r7, #0
	add r7, r8, #0
	add r8, r7, #0
	add r7, r8, #0
	add r8, r7, #0
	add r7, r8, #1
	mov r8, #4
	mul r7, r7, r8
	add r8, r5, r7
	ldr r5, [r8]
	ldr r7, =7
	mul r8, r5, r7
	add r5, r6, r8
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #0
	add r7, r8, #0
	add r8, r7, #0
	add r7, r8, #0
	add r8, r7, #0
	add r7, r8, #2
	mov r8, #4
	mul r8, r7, r8
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =0
	sub r8, r7, #70
	mul r7, r6, r8
	add r6, r5, r7
	ldr r5, [fp, #-4]
	ldr r7, =0
	add r8, r7, #0
	add r7, r8, #0
	add r8, r7, #0
	add r7, r8, #0
	add r8, r7, #0
	add r7, r8, #3
	mov r8, #4
	mul r8, r7, r8
	add r7, r5, r8
	ldr r5, [r7]
	ldr r7, =38
	mul r8, r5, r7
	add r5, r6, r8
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #0
	add r7, r8, #0
	add r8, r7, #0
	add r7, r8, #0
	add r8, r7, #0
	add r7, r8, #4
	mov r8, #4
	mul r8, r7, r8
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =0
	sub r8, r7, #90
	mul r7, r6, r8
	add r6, r5, r7
	ldr r5, [fp, #-4]
	ldr r7, =0
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #0
	mov r8, #4
	mul r8, r7, r8
	add r7, r5, r8
	ldr r5, [r7]
	ldr r7, =0
	sub r8, r7, #15
	mul r7, r5, r8
	add r5, r6, r7
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #1
	mov r8, #4
	mul r7, r7, r8
	add r8, r6, r7
	ldr r6, [r8]
	ldr r7, =0
	sub r8, r7, #32
	mul r7, r6, r8
	add r6, r5, r7
	ldr r5, [fp, #-4]
	ldr r7, =0
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #2
	mov r8, #4
	mul r7, r7, r8
	add r8, r5, r7
	ldr r5, [r8]
	ldr r7, =37
	mul r8, r5, r7
	add r5, r6, r8
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #3
	mov r8, #4
	mul r7, r7, r8
	add r8, r6, r7
	ldr r6, [r8]
	ldr r7, =36
	mul r8, r6, r7
	add r6, r5, r8
	ldr r5, [fp, #-4]
	ldr r7, =0
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #4
	mov r8, #4
	mul r8, r7, r8
	add r7, r5, r8
	ldr r5, [r7]
	ldr r7, =0
	sub r8, r7, #62
	mul r7, r5, r8
	add r5, r6, r7
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #2
	b .B10
.LTORG
.B10:
	add r8, r7, #2
	add r7, r8, #0
	mov r8, #4
	mul r7, r7, r8
	add r8, r6, r7
	ldr r6, [r8]
	ldr r7, =0
	sub r8, r7, #125
	mul r7, r6, r8
	add r6, r5, r7
	ldr r5, [fp, #-4]
	ldr r7, =0
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #1
	mov r8, #4
	mul r7, r7, r8
	add r8, r5, r7
	ldr r5, [r8]
	ldr r7, =0
	sub r8, r7, #46
	mul r7, r5, r8
	add r5, r6, r7
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #2
	mov r8, #4
	mul r7, r7, r8
	add r8, r6, r7
	ldr r6, [r8]
	ldr r7, =0
	sub r8, r7, #70
	mul r7, r6, r8
	add r6, r5, r7
	ldr r5, [fp, #-4]
	ldr r7, =0
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #3
	mov r8, #4
	mul r7, r7, r8
	add r8, r5, r7
	ldr r5, [r8]
	ldr r7, =37
	mul r8, r5, r7
	add r5, r6, r8
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #4
	mov r8, #4
	mul r8, r7, r8
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =0
	sub r8, r7, #73
	mul r7, r6, r8
	add r6, r5, r7
	ldr r5, [fp, #-4]
	ldr r7, =0
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #0
	mov r8, #4
	mul r7, r7, r8
	add r8, r5, r7
	ldr r5, [r8]
	ldr r7, =0
	sub r8, r7, #34
	mul r7, r5, r8
	add r5, r6, r7
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #1
	mov r8, #4
	mul r8, r7, r8
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =0
	sub r8, r7, #87
	mul r7, r6, r8
	add r6, r5, r7
	ldr r5, [fp, #-4]
	ldr r7, =0
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #2
	mov r8, #4
	mul r8, r7, r8
	add r7, r5, r8
	ldr r5, [r7]
	ldr r7, =0
	sub r8, r7, #75
	mul r7, r5, r8
	add r5, r6, r7
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #3
	mov r8, #4
	mul r8, r7, r8
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =71
	mul r8, r6, r7
	add r6, r5, r8
	ldr r5, [fp, #-4]
	ldr r7, =0
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #4
	mov r8, #4
	mul r8, r7, r8
	add r7, r5, r8
	ldr r5, [r7]
	ldr r7, =0
	sub r8, r7, #77
	mul r7, r5, r8
	add r5, r6, r7
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #0
	mov r8, #4
	mul r7, r7, r8
	add r8, r6, r7
	ldr r6, [r8]
	ldr r7, =53
	mul r8, r6, r7
	add r6, r5, r8
	ldr r5, [fp, #-4]
	ldr r7, =0
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #1
	mov r8, #4
	mul r7, r7, r8
	add r8, r5, r7
	ldr r5, [r8]
	ldr r7, =37
	mul r8, r5, r7
	add r5, r6, r8
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #2
	mov r8, #4
	mul r7, r7, r8
	add r8, r6, r7
	ldr r6, [r8]
	ldr r7, =0
	sub r8, r7, #103
	mul r7, r6, r8
	add r6, r5, r7
	ldr r5, [fp, #-4]
	ldr r7, =0
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #3
	mov r8, #4
	mul r7, r7, r8
	add r8, r5, r7
	ldr r5, [r8]
	ldr r7, =0
	sub r8, r7, #13
	mul r7, r5, r8
	add r5, r6, r7
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #4
	mov r8, #4
	mul r7, r7, r8
	add r8, r6, r7
	ldr r6, [r8]
	ldr r7, =0
	sub r8, r7, #114
	mul r7, r6, r8
	add r6, r5, r7
	mov r0, r6
	bl relu_reg
	mov r5, r0
	ldr r6, =0
	sub r7, r6, #23
	mul r6, r5, r7
	add r5, r4, r6
	ldr r4, [fp, #-4]
	ldr r6, =0
	add r7, r6, #0
	add r6, r7, #0
	add r7, r6, #0
	add r6, r7, #0
	add r7, r6, #0
	add r6, r7, #0
	mov r7, #4
	mul r7, r6, r7
	add r6, r4, r7
	ldr r4, [r6]
	ldr r6, =67
	mul r7, r4, r6
	ldr r4, [fp, #-4]
	ldr r6, =0
	add r8, r6, #0
	add r6, r8, #0
	add r8, r6, #0
	add r6, r8, #0
	add r8, r6, #0
	add r6, r8, #1
	mov r8, #4
	mul r8, r6, r8
	add r6, r4, r8
	ldr r4, [r6]
	ldr r6, =42
	mul r8, r4, r6
	add r4, r7, r8
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #0
	add r7, r8, #0
	add r8, r7, #0
	add r7, r8, #0
	add r8, r7, #0
	add r7, r8, #2
	mov r8, #4
	mul r8, r7, r8
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =41
	mul r8, r6, r7
	add r6, r4, r8
	ldr r4, [fp, #-4]
	ldr r7, =0
	add r8, r7, #0
	add r7, r8, #0
	add r8, r7, #0
	add r7, r8, #0
	add r8, r7, #0
	add r7, r8, #3
	mov r8, #4
	mul r7, r7, r8
	add r8, r4, r7
	ldr r4, [r8]
	ldr r7, =0
	sub r8, r7, #123
	mul r7, r4, r8
	add r4, r6, r7
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #0
	b .B11
.LTORG
.B11:
	add r7, r8, #0
	add r8, r7, #0
	add r7, r8, #0
	add r8, r7, #0
	add r7, r8, #4
	mov r8, #4
	mul r8, r7, r8
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =0
	sub r8, r7, #92
	mul r7, r6, r8
	add r6, r4, r7
	ldr r4, [fp, #-4]
	ldr r7, =0
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #0
	mov r8, #4
	mul r7, r7, r8
	add r8, r4, r7
	ldr r4, [r8]
	ldr r7, =10
	mul r8, r4, r7
	add r4, r6, r8
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #1
	mov r8, #4
	mul r8, r7, r8
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =0
	sub r8, r7, #77
	mul r7, r6, r8
	add r6, r4, r7
	ldr r4, [fp, #-4]
	ldr r7, =0
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #2
	mov r8, #4
	mul r8, r7, r8
	add r7, r4, r8
	ldr r4, [r7]
	ldr r7, =75
	mul r8, r4, r7
	add r4, r6, r8
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #3
	mov r8, #4
	mul r8, r7, r8
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =96
	mul r8, r6, r7
	add r6, r4, r8
	ldr r4, [fp, #-4]
	ldr r7, =0
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #1
	add r8, r7, #1
	add r7, r8, #4
	mov r8, #4
	mul r8, r7, r8
	add r7, r4, r8
	ldr r4, [r7]
	ldr r7, =0
	sub r8, r7, #51
	mul r7, r4, r8
	add r4, r6, r7
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #0
	mov r8, #4
	mul r7, r7, r8
	add r8, r6, r7
	ldr r6, [r8]
	ldr r7, =109
	mul r8, r6, r7
	add r6, r4, r8
	ldr r4, [fp, #-4]
	ldr r7, =0
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #1
	mov r8, #4
	mul r7, r7, r8
	add r8, r4, r7
	ldr r4, [r8]
	ldr r7, =0
	sub r8, r7, #74
	mul r7, r4, r8
	add r4, r6, r7
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #2
	mov r8, #4
	mul r8, r7, r8
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =0
	sub r8, r7, #7
	mul r7, r6, r8
	add r6, r4, r7
	ldr r4, [fp, #-4]
	ldr r7, =0
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #3
	mov r8, #4
	mul r8, r7, r8
	add r7, r4, r8
	ldr r4, [r7]
	ldr r7, =0
	sub r8, r7, #122
	mul r7, r4, r8
	add r4, r6, r7
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #2
	add r8, r7, #2
	add r7, r8, #4
	mov r8, #4
	mul r8, r7, r8
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =67
	mul r8, r6, r7
	add r6, r4, r8
	ldr r4, [fp, #-4]
	ldr r7, =0
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #0
	mov r8, #4
	mul r8, r7, r8
	add r7, r4, r8
	ldr r4, [r7]
	ldr r7, =47
	mul r8, r4, r7
	add r4, r6, r8
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #1
	mov r8, #4
	mul r8, r7, r8
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =22
	mul r8, r6, r7
	add r6, r4, r8
	ldr r4, [fp, #-4]
	ldr r7, =0
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #2
	mov r8, #4
	mul r8, r7, r8
	add r7, r4, r8
	ldr r4, [r7]
	ldr r7, =0
	sub r8, r7, #68
	mul r7, r4, r8
	add r4, r6, r7
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #3
	mov r8, #4
	mul r8, r7, r8
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =38
	mul r8, r6, r7
	add r6, r4, r8
	ldr r4, [fp, #-4]
	ldr r7, =0
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #3
	add r8, r7, #3
	add r7, r8, #4
	mov r8, #4
	mul r8, r7, r8
	add r7, r4, r8
	ldr r4, [r7]
	ldr r7, =29
	mul r8, r4, r7
	add r4, r6, r8
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #0
	mov r8, #4
	mul r7, r7, r8
	add r8, r6, r7
	ldr r6, [r8]
	ldr r7, =115
	mul r8, r6, r7
	add r6, r4, r8
	ldr r4, [fp, #-4]
	ldr r7, =0
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #1
	mov r8, #4
	mul r8, r7, r8
	add r7, r4, r8
	ldr r4, [r7]
	ldr r7, =0
	sub r8, r7, #121
	mul r7, r4, r8
	add r4, r6, r7
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #2
	mov r8, #4
	mul r7, r7, r8
	add r8, r6, r7
	ldr r6, [r8]
	ldr r7, =36
	mul r8, r6, r7
	add r6, r4, r8
	ldr r4, [fp, #-4]
	ldr r7, =0
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #3
	mov r8, #4
	mul r7, r7, r8
	b .B12
.LTORG
.B12:
	add r8, r4, r7
	ldr r4, [r8]
	ldr r7, =0
	sub r8, r7, #49
	mul r7, r4, r8
	add r4, r6, r7
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #4
	add r8, r7, #4
	add r7, r8, #4
	mov r8, #4
	mul r8, r7, r8
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =85
	mul r8, r6, r7
	add r6, r4, r8
	mov r0, r6
	bl relu_reg
	mov r4, r0
	ldr r6, =46
	mul r7, r4, r6
	add r4, r5, r7
	ldr r5, =0
	cmp r4, r5
	movgt r6, #1
	movle r6, #0
	bgt .L950
	b .L1954
	b .F13
.LTORG
.F13:
.L950:
	ldr r7, =1
	mov r0, r7
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L951:
	ldr r8, =0
	mov r0, r8
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L1952:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L1953:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L1954:
	b .L951
.L1955:
	b .L951
.L1956:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, fp, lr}
	mov fp, sp
	sub sp, sp, #112
.L1957:
	bl getint
	mov r4, r0
	str r4, [fp, #-112]
	b .L1960
.L1960:
	ldr r5, [fp, #-112]
	ldr r4, =0
	cmp r5, r4
	movgt r6, #1
	movle r6, #0
	bgt .L1961
	b .L1965
.L1961:
	ldr r7, =0
	str r7, [fp, #-8]
	b .L1967
.L1962:
	ldr r8, =0
	mov r0, r8
	add sp, sp, #112
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L1963:
	add sp, sp, #112
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L1964:
	add sp, sp, #112
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L1965:
	b .L1962
.L1967:
	ldr r9, [fp, #-8]
	ldr r4, =5
	cmp r9, r4
	movlt r5, #1
	movge r5, #0
	blt .L1968
	b .L1972
.L1968:
	ldr r6, =0
	str r6, [fp, #-4]
	b .L1974
.L1969:
	mov r7, #0
	mov r4, #4
	mul r5, r7, r4
	mov r4, #-108
	add r4, r4, r5
	add r6, fp, r4
	mov r0, r6
	bl model
	mov r5, r0
	ldr r4, =0
	cmp r5, r4
	movne r6, #1
	moveq r6, #0
	bne .L1982
	b .L1986
.L1970:
	add sp, sp, #112
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L1971:
	add sp, sp, #112
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L1972:
	b .L1969
.L1974:
	ldr r7, [fp, #-4]
	ldr r4, =5
	cmp r7, r4
	movlt r5, #1
	movge r5, #0
	blt .L1975
	b .L1979
.L1975:
	bl getint
	mov r6, r0
	ldr r4, [fp, #-8]
	ldr r5, =0
	add r7, r5, r4
	add r5, r7, r4
	add r7, r5, r4
	add r5, r7, r4
	add r7, r5, r4
	ldr r4, [fp, #-8]
	add r4, r7, v918
	mov r5, #4
	mul r4, r4, r5
	mov r5, #-108
	add r5, r5, r4
	add r4, fp, r5
	str r6, [r4]
	ldr r7, [fp, #-4]
	add r4, r7, #1
	str r4, [fp, #-4]
	b .L1974
.L1976:
	ldr r5, [fp, #-8]
	add r4, r5, #1
	str r4, [fp, #-8]
	b .L1967
.L1977:
	add sp, sp, #112
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L1978:
	add sp, sp, #112
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L1979:
	b .L1976
.L1982:
	mov r0, #99
	bl putch
	mov r0, #97
	bl putch
	mov r0, #116
	bl putch
	mov r0, #10
	bl putch
	b .L1984
.L1983:
	mov r0, #100
	bl putch
	mov r0, #111
	bl putch
	mov r0, #103
	bl putch
	mov r0, #10
	bl putch
	b .L1984
.L1984:
	ldr r6, [fp, #-112]
	sub r4, r6, #1
	str r4, [fp, #-112]
	b .L1960
.L1985:
	add sp, sp, #112
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
	b .F14
.LTORG
.F14:
.L1986:
	b .L1983
.L1987:
	add sp, sp, #112
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L1988:
	add sp, sp, #112
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr

