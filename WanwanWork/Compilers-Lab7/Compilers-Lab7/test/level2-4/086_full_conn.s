	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global relu_reg
	.type relu_reg , %function
relu_reg:
	push {r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L933:
	str r0, [fp, #-4]
	ldr r10, [fp, #-4]
	cmp r10, #127
	movgt r9, #1
	movle r9, #0
	bgt .L935
	b .L939
.L935:
	mov r0, #127
	add sp, sp, #4
	pop {r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L936:
	ldr r8, [fp, #-4]
	cmp r8, #0
	movlt r7, #1
	movge r7, #0
	blt .L941
	b .L945
.L937:
	add sp, sp, #4
	pop {r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L938:
	add sp, sp, #4
	pop {r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L939:
	b .L936
.L940:
	b .L936
.L941:
	mov r0, #0
	add sp, sp, #4
	pop {r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L942:
	ldr r6, [fp, #-4]
	mov r0, r6
	add sp, sp, #4
	pop {r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L943:
	add sp, sp, #4
	pop {r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L944:
	add sp, sp, #4
	pop {r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L945:
	b .L942
.L946:
	b .L942
.L947:
	add sp, sp, #4
	pop {r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global model
	.type model , %function
model:
	push {r4, r5, r6, r7, r8, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L948:
	str r0, [fp, #-4]
	ldr r10, [fp, #-4]
	mov r4, #0
	mov r5, #20
	mul r4, r4, r5
	add r5, r10, r4
	mov r4, #0
	mov r6, #4
	mul r4, r4, r6
	add r6, r5, r4
	ldr r4, [r6]
	ldr r5, =85
	mul r6, r4, r5
	ldr r4, [fp, #-4]
	mov r5, #0
	mov r7, #20
	mul r5, r5, r7
	add r7, r4, r5
	mov r4, #1
	mov r5, #4
	mul r5, r4, r5
	add r4, r7, r5
	ldr r5, [r4]
	ldr r4, =23
	mul r7, r5, r4
	add r4, r6, r7
	ldr r5, [fp, #-4]
	mov r6, #0
	mov r7, #20
	mul r6, r6, r7
	add r7, r5, r6
	mov r5, #2
	mov r6, #4
	mul r6, r5, r6
	add r5, r7, r6
	ldr r6, [r5]
	ldr r5, =0
	sub r7, r5, #82
	mul r5, r6, r7
	add r6, r4, r5
	ldr r4, [fp, #-4]
	mov r5, #0
	mov r7, #20
	mul r7, r5, r7
	add r5, r4, r7
	mov r4, #3
	mov r7, #4
	mul r7, r4, r7
	add r4, r5, r7
	ldr r5, [r4]
	ldr r4, =0
	sub r7, r4, #103
	mul r4, r5, r7
	add r5, r6, r4
	ldr r4, [fp, #-4]
	mov r6, #0
	mov r7, #20
	mul r7, r6, r7
	add r6, r4, r7
	mov r4, #4
	mov r7, #4
	mul r7, r4, r7
	add r4, r6, r7
	ldr r6, [r4]
	ldr r4, =0
	sub r7, r4, #123
	mul r4, r6, r7
	add r6, r5, r4
	ldr r4, [fp, #-4]
	mov r5, #1
	mov r7, #20
	mul r7, r5, r7
	add r5, r4, r7
	mov r4, #0
	mov r7, #4
	mul r7, r4, r7
	add r4, r5, r7
	ldr r5, [r4]
	ldr r4, =64
	mul r7, r5, r4
	add r4, r6, r7
	ldr r5, [fp, #-4]
	mov r6, #1
	mov r7, #20
	mul r6, r6, r7
	add r7, r5, r6
	mov r5, #1
	mov r6, #4
	mul r6, r5, r6
	add r5, r7, r6
	ldr r6, [r5]
	ldr r5, =0
	sub r7, r5, #120
	mul r5, r6, r7
	add r6, r4, r5
	ldr r4, [fp, #-4]
	mov r5, #1
	mov r7, #20
	mul r7, r5, r7
	add r5, r4, r7
	mov r4, #2
	mov r7, #4
	mul r7, r4, r7
	add r4, r5, r7
	ldr r5, [r4]
	ldr r4, =50
	mul r7, r5, r4
	add r4, r6, r7
	ldr r5, [fp, #-4]
	mov r6, #1
	mov r7, #20
	mul r7, r6, r7
	add r6, r5, r7
	mov r5, #3
	mov r7, #4
	mul r5, r5, r7
	add r7, r6, r5
	ldr r5, [r7]
	ldr r6, =0
	sub r7, r6, #59
	mul r6, r5, r7
	add r5, r4, r6
	ldr r4, [fp, #-4]
	mov r6, #1
	mov r7, #20
	mul r7, r6, r7
	add r6, r4, r7
	mov r4, #4
	mov r7, #4
	mul r7, r4, r7
	add r4, r6, r7
	ldr r6, [r4]
	ldr r4, =47
	mul r7, r6, r4
	add r4, r5, r7
	ldr r5, [fp, #-4]
	mov r6, #2
	mov r7, #20
	mul r6, r6, r7
	add r7, r5, r6
	mov r5, #0
	mov r6, #4
	mul r5, r5, r6
	add r6, r7, r5
	ldr r5, [r6]
	ldr r6, =0
	sub r7, r6, #111
	mul r6, r5, r7
	add r5, r4, r6
	ldr r4, [fp, #-4]
	mov r6, #2
	mov r7, #20
	mul r7, r6, r7
	add r6, r4, r7
	mov r4, #1
	mov r7, #4
	mul r7, r4, r7
	add r4, r6, r7
	ldr r6, [r4]
	ldr r4, =0
	sub r7, r4, #67
	mul r4, r6, r7
	add r6, r5, r4
	ldr r4, [fp, #-4]
	mov r5, #2
	mov r7, #20
	mul r7, r5, r7
	add r5, r4, r7
	mov r4, #2
	mov r7, #4
	mul r7, r4, r7
	add r4, r5, r7
	ldr r5, [r4]
	ldr r4, =0
	sub r7, r4, #106
	mul r4, r5, r7
	add r5, r6, r4
	ldr r4, [fp, #-4]
	mov r6, #2
	mov r7, #20
	mul r7, r6, r7
	add r6, r4, r7
	mov r4, #3
	mov r7, #4
	mul r4, r4, r7
	add r7, r6, r4
	ldr r4, [r7]
	ldr r6, =0
	sub r7, r6, #75
	mul r6, r4, r7
	add r4, r5, r6
	ldr r5, [fp, #-4]
	mov r6, #2
	mov r7, #20
	mul r6, r6, r7
	add r7, r5, r6
	mov r5, #4
	mov r6, #4
	mul r5, r5, r6
	add r6, r7, r5
	ldr r5, [r6]
	ldr r6, =0
	sub r7, r6, #102
	mul r6, r5, r7
	add r5, r4, r6
	ldr r4, [fp, #-4]
	mov r6, #3
	mov r7, #20
	mul r7, r6, r7
	add r6, r4, r7
	mov r4, #0
	mov r7, #4
	mul r4, r4, r7
	add r7, r6, r4
	ldr r4, [r7]
	ldr r6, =34
	mul r7, r4, r6
	add r4, r5, r7
	ldr r5, [fp, #-4]
	mov r6, #3
	mov r7, #20
	mul r6, r6, r7
	add r7, r5, r6
	mov r5, #1
	mov r6, #4
	mul r6, r5, r6
	add r5, r7, r6
	ldr r6, [r5]
	ldr r5, =0
	sub r7, r5, #39
	mul r5, r6, r7
	add r6, r4, r5
	ldr r4, [fp, #-4]
	mov r5, #3
	mov r7, #20
	mul r7, r5, r7
	add r5, r4, r7
	mov r4, #2
	mov r7, #4
	mul r4, r4, r7
	add r7, r5, r4
	ldr r4, [r7]
	ldr r5, =65
	mul r7, r4, r5
	add r4, r6, r7
	ldr r5, [fp, #-4]
	mov r6, #3
	mov r7, #20
	mul r6, r6, r7
	add r7, r5, r6
	mov r5, #3
	mov r6, #4
	mul r6, r5, r6
	add r5, r7, r6
	ldr r6, [r5]
	ldr r5, =47
	mul r7, r6, r5
	add r5, r4, r7
	ldr r4, [fp, #-4]
	mov r6, #3
	mov r7, #20
	mul r7, r6, r7
	add r6, r4, r7
	mov r4, #4
	mov r7, #4
	mul r7, r4, r7
	add r4, r6, r7
	ldr r6, [r4]
	ldr r4, =113
	mul r7, r6, r4
	add r4, r5, r7
	ldr r5, [fp, #-4]
	mov r6, #4
	mov r7, #20
	mul r6, r6, r7
	add r7, r5, r6
	mov r5, #0
	mov r6, #4
	mul r5, r5, r6
	add r6, r7, r5
	ldr r5, [r6]
	ldr r6, =110
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [fp, #-4]
	mov r6, #4
	mov r7, #20
	mul r7, r6, r7
	add r6, r4, r7
	mov r4, #1
	mov r7, #4
	mul r7, r4, r7
	add r4, r6, r7
	ldr r6, [r4]
	ldr r4, =47
	mul r7, r6, r4
	add r4, r5, r7
	ldr r5, [fp, #-4]
	mov r6, #4
	mov r7, #20
	mul r6, r6, r7
	add r7, r5, r6
	mov r5, #2
	mov r6, #4
	mul r6, r5, r6
	add r5, r7, r6
	ldr r6, [r5]
	ldr r5, =0
	sub r7, r5, #4
	mul r5, r6, r7
	add r6, r4, r5
	ldr r4, [fp, #-4]
	mov r5, #4
	mov r7, #20
	mul r5, r5, r7
	add r7, r4, r5
	mov r4, #3
	mov r5, #4
	mul r5, r4, r5
	add r4, r7, r5
	ldr r5, [r4]
	ldr r4, =80
	mul r7, r5, r4
	add r4, r6, r7
	ldr r5, [fp, #-4]
	mov r6, #4
	mov r7, #20
	mul r7, r6, r7
	add r6, r5, r7
	mov r5, #4
	mov r7, #4
	mul r7, r5, r7
	add r5, r6, r7
	ldr r6, [r5]
	ldr r5, =46
	mul r7, r6, r5
	add r5, r4, r7
	mov r0, r5
	bl relu_reg
	mov r6, r0
	ldr r4, =39
	mul r5, r6, r4
	ldr r4, [fp, #-4]
	mov r6, #0
	mov r7, #20
	mul r6, r6, r7
	add r7, r4, r6
	mov r4, #0
	mov r6, #4
	mul r6, r4, r6
	add r4, r7, r6
	ldr r6, [r4]
	ldr r4, =0
	sub r7, r4, #106
	mul r4, r6, r7
	ldr r6, [fp, #-4]
	mov r7, #0
	mov r8, #20
	mul r8, r7, r8
	add r7, r6, r8
	mov r6, #1
	mov r8, #4
	mul r8, r6, r8
	add r6, r7, r8
	ldr r7, [r6]
	ldr r6, =126
	mul r8, r7, r6
	add r6, r4, r8
	ldr r4, [fp, #-4]
	mov r7, #0
	mov r8, #20
	mul r8, r7, r8
	add r7, r4, r8
	mov r4, #2
	mov r8, #4
	mul r4, r4, r8
	add r8, r7, r4
	ldr r4, [r8]
	ldr r7, =0
	sub r8, r7, #18
	mul r7, r4, r8
	add r4, r6, r7
	ldr r6, [fp, #-4]
	mov r7, #0
	mov r8, #20
	mul r7, r7, r8
	add r8, r6, r7
	mov r6, #3
	mov r7, #4
	mul r6, r6, r7
	add r7, r8, r6
	ldr r6, [r7]
	ldr r7, =0
	sub r8, r7, #31
	mul r7, r6, r8
	add r6, r4, r7
	ldr r4, [fp, #-4]
	mov r7, #0
	mov r8, #20
	mul r7, r7, r8
	add r8, r4, r7
	mov r4, #4
	mov r7, #4
	mul r4, r4, r7
	add r7, r8, r4
	ldr r4, [r7]
	ldr r7, =0
	sub r8, r7, #8
	mul r7, r4, r8
	add r4, r6, r7
	ldr r6, [fp, #-4]
	mov r7, #1
	mov r8, #20
	mul r7, r7, r8
	add r8, r6, r7
	mov r6, #0
	mov r7, #4
	mul r7, r6, r7
	add r6, r8, r7
	ldr r7, [r6]
	ldr r6, =47
	mul r8, r7, r6
	add r6, r4, r8
	ldr r4, [fp, #-4]
	mov r7, #1
	mov r8, #20
	mul r8, r7, r8
	add r7, r4, r8
	mov r4, #1
	mov r8, #4
	mul r4, r4, r8
	add r8, r7, r4
	ldr r4, [r8]
	ldr r7, =0
	sub r8, r7, #4
	mul r7, r4, r8
	add r4, r6, r7
	ldr r6, [fp, #-4]
	mov r7, #1
	mov r8, #20
	mul r8, r7, r8
	add r7, r6, r8
	mov r6, #2
	mov r8, #4
	mul r8, r6, r8
	add r6, r7, r8
	ldr r7, [r6]
	ldr r6, =67
	mul r8, r7, r6
	add r6, r4, r8
	ldr r4, [fp, #-4]
	mov r7, #1
	mov r8, #20
	mul r8, r7, r8
	add r7, r4, r8
	mov r4, #3
	mov r8, #4
	mul r4, r4, r8
	add r8, r7, r4
	ldr r4, [r8]
	ldr r7, =0
	sub r8, r7, #94
	mul r7, r4, r8
	add r4, r6, r7
	ldr r6, [fp, #-4]
	mov r7, #1
	mov r8, #20
	mul r8, r7, r8
	add r7, r6, r8
	mov r6, #4
	mov r8, #4
	mul r8, r6, r8
	add r6, r7, r8
	ldr r7, [r6]
	ldr r6, =0
	sub r8, r6, #121
	mul r6, r7, r8
	add r7, r4, r6
	ldr r4, [fp, #-4]
	mov r6, #2
	mov r8, #20
	mul r8, r6, r8
	add r6, r4, r8
	mov r4, #0
	mov r8, #4
	mul r4, r4, r8
	add r8, r6, r4
	ldr r4, [r8]
	ldr r6, =7
	mul r8, r4, r6
	add r4, r7, r8
	ldr r6, [fp, #-4]
	mov r7, #2
	mov r8, #20
	mul r8, r7, r8
	add r7, r6, r8
	mov r6, #1
	mov r8, #4
	mul r8, r6, r8
	add r6, r7, r8
	b .B0
.LTORG
.B0:
	ldr r7, [r6]
	ldr r6, =0
	sub r8, r6, #21
	mul r6, r7, r8
	add r7, r4, r6
	ldr r4, [fp, #-4]
	mov r6, #2
	mov r8, #20
	mul r8, r6, r8
	add r6, r4, r8
	mov r4, #2
	mov r8, #4
	mul r4, r4, r8
	add r8, r6, r4
	ldr r4, [r8]
	ldr r6, =0
	sub r8, r6, #60
	mul r6, r4, r8
	add r4, r7, r6
	ldr r6, [fp, #-4]
	mov r7, #2
	mov r8, #20
	mul r8, r7, r8
	add r7, r6, r8
	mov r6, #3
	mov r8, #4
	mul r8, r6, r8
	add r6, r7, r8
	ldr r7, [r6]
	ldr r6, =0
	sub r8, r6, #43
	mul r6, r7, r8
	add r7, r4, r6
	ldr r4, [fp, #-4]
	mov r6, #2
	mov r8, #20
	mul r6, r6, r8
	add r8, r4, r6
	mov r4, #4
	mov r6, #4
	mul r4, r4, r6
	add r6, r8, r4
	ldr r4, [r6]
	ldr r6, =105
	mul r8, r4, r6
	add r4, r7, r8
	ldr r6, [fp, #-4]
	mov r7, #3
	mov r8, #20
	mul r7, r7, r8
	add r8, r6, r7
	mov r6, #0
	mov r7, #4
	mul r7, r6, r7
	add r6, r8, r7
	ldr r7, [r6]
	ldr r6, =0
	sub r8, r6, #42
	mul r6, r7, r8
	add r7, r4, r6
	ldr r4, [fp, #-4]
	mov r6, #3
	mov r8, #20
	mul r8, r6, r8
	add r6, r4, r8
	mov r4, #1
	mov r8, #4
	mul r8, r4, r8
	add r4, r6, r8
	ldr r6, [r4]
	ldr r4, =87
	mul r8, r6, r4
	add r4, r7, r8
	ldr r6, [fp, #-4]
	mov r7, #3
	mov r8, #20
	mul r7, r7, r8
	add r8, r6, r7
	mov r6, #2
	mov r7, #4
	mul r6, r6, r7
	add r7, r8, r6
	ldr r6, [r7]
	ldr r7, =29
	mul r8, r6, r7
	add r6, r4, r8
	ldr r4, [fp, #-4]
	mov r7, #3
	mov r8, #20
	mul r7, r7, r8
	add r8, r4, r7
	mov r4, #3
	mov r7, #4
	mul r7, r4, r7
	add r4, r8, r7
	ldr r7, [r4]
	ldr r4, =0
	sub r8, r4, #106
	mul r4, r7, r8
	add r7, r6, r4
	ldr r4, [fp, #-4]
	mov r6, #3
	mov r8, #20
	mul r8, r6, r8
	add r6, r4, r8
	mov r4, #4
	mov r8, #4
	mul r8, r4, r8
	add r4, r6, r8
	ldr r6, [r4]
	ldr r4, =0
	sub r8, r4, #31
	mul r4, r6, r8
	add r6, r7, r4
	ldr r4, [fp, #-4]
	mov r7, #4
	mov r8, #20
	mul r8, r7, r8
	add r7, r4, r8
	mov r4, #0
	mov r8, #4
	mul r8, r4, r8
	add r4, r7, r8
	ldr r7, [r4]
	ldr r4, =0
	sub r8, r4, #110
	mul r4, r7, r8
	add r7, r6, r4
	ldr r4, [fp, #-4]
	mov r6, #4
	mov r8, #20
	mul r8, r6, r8
	add r6, r4, r8
	mov r4, #1
	mov r8, #4
	mul r8, r4, r8
	add r4, r6, r8
	ldr r6, [r4]
	ldr r4, =0
	sub r8, r4, #100
	mul r4, r6, r8
	add r6, r7, r4
	ldr r4, [fp, #-4]
	mov r7, #4
	mov r8, #20
	mul r8, r7, r8
	add r7, r4, r8
	mov r4, #2
	mov r8, #4
	mul r8, r4, r8
	add r4, r7, r8
	ldr r7, [r4]
	ldr r4, =0
	sub r8, r4, #22
	mul r4, r7, r8
	add r7, r6, r4
	ldr r4, [fp, #-4]
	mov r6, #4
	mov r8, #20
	mul r8, r6, r8
	add r6, r4, r8
	mov r4, #3
	mov r8, #4
	mul r8, r4, r8
	add r4, r6, r8
	ldr r6, [r4]
	ldr r4, =0
	sub r8, r4, #75
	mul r4, r6, r8
	add r6, r7, r4
	ldr r4, [fp, #-4]
	mov r7, #4
	mov r8, #20
	mul r8, r7, r8
	add r7, r4, r8
	mov r4, #4
	mov r8, #4
	mul r8, r4, r8
	add r4, r7, r8
	ldr r7, [r4]
	ldr r4, =0
	sub r8, r4, #125
	mul r4, r7, r8
	add r7, r6, r4
	mov r0, r7
	bl relu_reg
	mov r4, r0
	ldr r6, =77
	mul r7, r4, r6
	add r4, r5, r7
	ldr r5, [fp, #-4]
	mov r6, #0
	mov r7, #20
	mul r7, r6, r7
	add r6, r5, r7
	mov r5, #0
	mov r7, #4
	mul r7, r5, r7
	add r5, r6, r7
	ldr r6, [r5]
	ldr r5, =26
	mul r7, r6, r5
	ldr r5, [fp, #-4]
	mov r6, #0
	mov r8, #20
	mul r8, r6, r8
	add r6, r5, r8
	mov r5, #1
	mov r8, #4
	mul r8, r5, r8
	add r5, r6, r8
	ldr r6, [r5]
	ldr r5, =76
	mul r8, r6, r5
	add r5, r7, r8
	ldr r6, [fp, #-4]
	mov r7, #0
	mov r8, #20
	mul r8, r7, r8
	add r7, r6, r8
	mov r6, #2
	mov r8, #4
	mul r8, r6, r8
	add r6, r7, r8
	ldr r7, [r6]
	ldr r6, =0
	sub r8, r6, #70
	mul r6, r7, r8
	add r7, r5, r6
	ldr r5, [fp, #-4]
	mov r6, #0
	mov r8, #20
	mul r8, r6, r8
	add r6, r5, r8
	mov r5, #3
	mov r8, #4
	mul r8, r5, r8
	add r5, r6, r8
	ldr r6, [r5]
	ldr r5, =29
	mul r8, r6, r5
	add r5, r7, r8
	ldr r6, [fp, #-4]
	mov r7, #0
	mov r8, #20
	mul r8, r7, r8
	add r7, r6, r8
	mov r6, #4
	mov r8, #4
	mul r8, r6, r8
	add r6, r7, r8
	ldr r7, [r6]
	ldr r6, =0
	sub r8, r6, #95
	mul r6, r7, r8
	add r7, r5, r6
	ldr r5, [fp, #-4]
	mov r6, #1
	mov r8, #20
	mul r8, r6, r8
	add r6, r5, r8
	mov r5, #0
	mov r8, #4
	mul r8, r5, r8
	add r5, r6, r8
	ldr r6, [r5]
	ldr r5, =96
	mul r8, r6, r5
	add r5, r7, r8
	ldr r6, [fp, #-4]
	mov r7, #1
	mov r8, #20
	mul r8, r7, r8
	add r7, r6, r8
	mov r6, #1
	mov r8, #4
	mul r8, r6, r8
	add r6, r7, r8
	ldr r7, [r6]
	ldr r6, =52
	mul r8, r7, r6
	add r6, r5, r8
	ldr r5, [fp, #-4]
	mov r7, #1
	mov r8, #20
	mul r8, r7, r8
	add r7, r5, r8
	mov r5, #2
	mov r8, #4
	mul r8, r5, r8
	add r5, r7, r8
	ldr r7, [r5]
	ldr r5, =0
	sub r8, r5, #68
	mul r5, r7, r8
	add r7, r6, r5
	ldr r5, [fp, #-4]
	mov r6, #1
	mov r8, #20
	mul r8, r6, r8
	add r6, r5, r8
	mov r5, #3
	mov r8, #4
	mul r8, r5, r8
	add r5, r6, r8
	ldr r6, [r5]
	ldr r5, =0
	sub r8, r5, #5
	mul r5, r6, r8
	add r6, r7, r5
	ldr r5, [fp, #-4]
	mov r7, #1
	mov r8, #20
	mul r8, r7, r8
	add r7, r5, r8
	mov r5, #4
	mov r8, #4
	mul r8, r5, r8
	add r5, r7, r8
	ldr r7, [r5]
	ldr r5, =34
	mul r8, r7, r5
	add r5, r6, r8
	ldr r6, [fp, #-4]
	mov r7, #2
	mov r8, #20
	mul r8, r7, r8
	add r7, r6, r8
	mov r6, #0
	mov r8, #4
	mul r8, r6, r8
	add r6, r7, r8
	ldr r7, [r6]
	ldr r6, =0
	sub r8, r6, #34
	mul r6, r7, r8
	add r7, r5, r6
	ldr r5, [fp, #-4]
	mov r6, #2
	mov r8, #20
	mul r8, r6, r8
	add r6, r5, r8
	mov r5, #1
	mov r8, #4
	mul r5, r5, r8
	add r8, r6, r5
	ldr r5, [r8]
	ldr r6, =102
	mul r8, r5, r6
	add r5, r7, r8
	ldr r6, [fp, #-4]
	mov r7, #2
	mov r8, #20
	mul r8, r7, r8
	add r7, r6, r8
	mov r6, #2
	mov r8, #4
	mul r6, r6, r8
	add r8, r7, r6
	ldr r6, [r8]
	ldr r7, =6
	mul r8, r6, r7
	add r6, r5, r8
	ldr r5, [fp, #-4]
	mov r7, #2
	mov r8, #20
	mul r8, r7, r8
	add r7, r5, r8
	mov r5, #3
	mov r8, #4
	mul r8, r5, r8
	add r5, r7, r8
	ldr r7, [r5]
	ldr r5, =0
	sub r8, r5, #38
	mul r5, r7, r8
	add r7, r6, r5
	ldr r5, [fp, #-4]
	mov r6, #2
	mov r8, #20
	mul r8, r6, r8
	add r6, r5, r8
	mov r5, #4
	mov r8, #4
	mul r8, r5, r8
	add r5, r6, r8
	ldr r6, [r5]
	ldr r5, =27
	mul r8, r6, r5
	add r5, r7, r8
	ldr r6, [fp, #-4]
	mov r7, #3
	mov r8, #20
	mul r8, r7, r8
	add r7, r6, r8
	mov r6, #0
	mov r8, #4
	mul r8, r6, r8
	add r6, r7, r8
	ldr r7, [r6]
	ldr r6, =110
	mul r8, r7, r6
	add r6, r5, r8
	ldr r5, [fp, #-4]
	mov r7, #3
	mov r8, #20
	mul r8, r7, r8
	add r7, r5, r8
	mov r5, #1
	mov r8, #4
	mul r8, r5, r8
	add r5, r7, r8
	ldr r7, [r5]
	ldr r5, =116
	mul r8, r7, r5
	add r5, r6, r8
	ldr r6, [fp, #-4]
	mov r7, #3
	mov r8, #20
	mul r8, r7, r8
	add r7, r6, r8
	mov r6, #2
	mov r8, #4
	mul r8, r6, r8
	add r6, r7, r8
	ldr r7, [r6]
	ldr r6, =39
	mul r8, r7, r6
	add r6, r5, r8
	ldr r5, [fp, #-4]
	mov r7, #3
	mov r8, #20
	mul r8, r7, r8
	add r7, r5, r8
	mov r5, #3
	mov r8, #4
	mul r8, r5, r8
	add r5, r7, r8
	ldr r7, [r5]
	ldr r5, =0
	sub r8, r5, #63
	mul r5, r7, r8
	add r7, r6, r5
	ldr r5, [fp, #-4]
	mov r6, #3
	mov r8, #20
	mul r8, r6, r8
	add r6, r5, r8
	mov r5, #4
	mov r8, #4
	mul r8, r5, r8
	add r5, r6, r8
	ldr r6, [r5]
	ldr r5, =0
	sub r8, r5, #99
	mul r5, r6, r8
	add r6, r7, r5
	ldr r5, [fp, #-4]
	mov r7, #4
	mov r8, #20
	mul r8, r7, r8
	add r7, r5, r8
	mov r5, #0
	mov r8, #4
	mul r8, r5, r8
	add r5, r7, r8
	ldr r7, [r5]
	ldr r5, =65
	mul r8, r7, r5
	add r5, r6, r8
	ldr r6, [fp, #-4]
	mov r7, #4
	mov r8, #20
	mul r8, r7, r8
	add r7, r6, r8
	mov r6, #1
	mov r8, #4
	mul r8, r6, r8
	add r6, r7, r8
	ldr r7, [r6]
	ldr r6, =120
	mul r8, r7, r6
	add r6, r5, r8
	ldr r5, [fp, #-4]
	mov r7, #4
	mov r8, #20
	mul r7, r7, r8
	add r8, r5, r7
	mov r5, #2
	mov r7, #4
	mul r7, r5, r7
	add r5, r8, r7
	ldr r7, [r5]
	ldr r5, =0
	sub r8, r5, #39
	mul r5, r7, r8
	add r7, r6, r5
	ldr r5, [fp, #-4]
	mov r6, #4
	mov r8, #20
	b .B1
.LTORG
.B1:
	mul r8, r6, r8
	add r6, r5, r8
	mov r5, #3
	mov r8, #4
	mul r8, r5, r8
	add r5, r6, r8
	ldr r6, [r5]
	ldr r5, =0
	sub r8, r5, #6
	mul r5, r6, r8
	add r6, r7, r5
	ldr r5, [fp, #-4]
	mov r7, #4
	mov r8, #20
	mul r8, r7, r8
	add r7, r5, r8
	mov r5, #4
	mov r8, #4
	mul r8, r5, r8
	add r5, r7, r8
	ldr r7, [r5]
	ldr r5, =94
	mul r8, r7, r5
	add r5, r6, r8
	mov r0, r5
	bl relu_reg
	mov r5, r0
	ldr r6, =127
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [fp, #-4]
	mov r6, #0
	mov r7, #20
	mul r7, r6, r7
	add r6, r4, r7
	mov r4, #0
	mov r7, #4
	mul r7, r4, r7
	add r4, r6, r7
	ldr r6, [r4]
	ldr r4, =0
	sub r7, r4, #23
	mul r4, r6, r7
	ldr r6, [fp, #-4]
	mov r7, #0
	mov r8, #20
	mul r8, r7, r8
	add r7, r6, r8
	mov r6, #1
	mov r8, #4
	mul r6, r6, r8
	add r8, r7, r6
	ldr r6, [r8]
	ldr r7, =0
	sub r8, r7, #63
	mul r7, r6, r8
	add r6, r4, r7
	ldr r4, [fp, #-4]
	mov r7, #0
	mov r8, #20
	mul r7, r7, r8
	add r8, r4, r7
	mov r4, #2
	mov r7, #4
	mul r4, r4, r7
	add r7, r8, r4
	ldr r4, [r7]
	ldr r7, =49
	mul r8, r4, r7
	add r4, r6, r8
	ldr r6, [fp, #-4]
	mov r7, #0
	mov r8, #20
	mul r7, r7, r8
	add r8, r6, r7
	mov r6, #3
	mov r7, #4
	mul r7, r6, r7
	add r6, r8, r7
	ldr r7, [r6]
	ldr r6, =50
	mul r8, r7, r6
	add r6, r4, r8
	ldr r4, [fp, #-4]
	mov r7, #0
	mov r8, #20
	mul r8, r7, r8
	add r7, r4, r8
	mov r4, #4
	mov r8, #4
	mul r8, r4, r8
	add r4, r7, r8
	ldr r7, [r4]
	ldr r4, =72
	mul r8, r7, r4
	add r4, r6, r8
	ldr r6, [fp, #-4]
	mov r7, #1
	mov r8, #20
	mul r8, r7, r8
	add r7, r6, r8
	mov r6, #0
	mov r8, #4
	mul r8, r6, r8
	add r6, r7, r8
	ldr r7, [r6]
	ldr r6, =85
	mul r8, r7, r6
	add r6, r4, r8
	ldr r4, [fp, #-4]
	mov r7, #1
	mov r8, #20
	mul r8, r7, r8
	add r7, r4, r8
	mov r4, #1
	mov r8, #4
	mul r8, r4, r8
	add r4, r7, r8
	ldr r7, [r4]
	ldr r4, =0
	sub r8, r4, #30
	mul r4, r7, r8
	add r7, r6, r4
	ldr r4, [fp, #-4]
	mov r6, #1
	mov r8, #20
	mul r8, r6, r8
	add r6, r4, r8
	mov r4, #2
	mov r8, #4
	mul r8, r4, r8
	add r4, r6, r8
	ldr r6, [r4]
	ldr r4, =12
	mul r8, r6, r4
	add r4, r7, r8
	ldr r6, [fp, #-4]
	mov r7, #1
	mov r8, #20
	mul r8, r7, r8
	add r7, r6, r8
	mov r6, #3
	mov r8, #4
	mul r6, r6, r8
	add r8, r7, r6
	ldr r6, [r8]
	ldr r7, =125
	mul r8, r6, r7
	add r6, r4, r8
	ldr r4, [fp, #-4]
	mov r7, #1
	mov r8, #20
	mul r7, r7, r8
	add r8, r4, r7
	mov r4, #4
	mov r7, #4
	mul r7, r4, r7
	add r4, r8, r7
	ldr r7, [r4]
	ldr r4, =0
	sub r8, r4, #117
	mul r4, r7, r8
	add r7, r6, r4
	ldr r4, [fp, #-4]
	mov r6, #2
	mov r8, #20
	mul r6, r6, r8
	add r8, r4, r6
	mov r4, #0
	mov r6, #4
	mul r4, r4, r6
	add r6, r8, r4
	ldr r4, [r6]
	ldr r6, =0
	sub r8, r6, #65
	mul r6, r4, r8
	add r4, r7, r6
	ldr r6, [fp, #-4]
	mov r7, #2
	mov r8, #20
	mul r8, r7, r8
	add r7, r6, r8
	mov r6, #1
	mov r8, #4
	mul r8, r6, r8
	add r6, r7, r8
	ldr r7, [r6]
	ldr r6, =0
	sub r8, r6, #67
	mul r6, r7, r8
	add r7, r4, r6
	ldr r4, [fp, #-4]
	mov r6, #2
	mov r8, #20
	mul r6, r6, r8
	add r8, r4, r6
	mov r4, #2
	mov r6, #4
	mul r6, r4, r6
	add r4, r8, r6
	ldr r6, [r4]
	ldr r4, =125
	mul r8, r6, r4
	add r4, r7, r8
	ldr r6, [fp, #-4]
	mov r7, #2
	mov r8, #20
	mul r8, r7, r8
	add r7, r6, r8
	mov r6, #3
	mov r8, #4
	mul r8, r6, r8
	add r6, r7, r8
	ldr r7, [r6]
	ldr r6, =110
	mul r8, r7, r6
	add r6, r4, r8
	ldr r4, [fp, #-4]
	mov r7, #2
	mov r8, #20
	mul r8, r7, r8
	add r7, r4, r8
	mov r4, #4
	mov r8, #4
	mul r8, r4, r8
	add r4, r7, r8
	ldr r7, [r4]
	ldr r4, =0
	sub r8, r4, #31
	mul r4, r7, r8
	add r7, r6, r4
	ldr r4, [fp, #-4]
	mov r6, #3
	mov r8, #20
	mul r8, r6, r8
	add r6, r4, r8
	mov r4, #0
	mov r8, #4
	mul r8, r4, r8
	add r4, r6, r8
	ldr r6, [r4]
	ldr r4, =0
	sub r8, r4, #123
	mul r4, r6, r8
	add r6, r7, r4
	ldr r4, [fp, #-4]
	mov r7, #3
	mov r8, #20
	mul r7, r7, r8
	add r8, r4, r7
	mov r4, #1
	mov r7, #4
	mul r7, r4, r7
	add r4, r8, r7
	ldr r7, [r4]
	ldr r4, =83
	mul r8, r7, r4
	add r4, r6, r8
	ldr r6, [fp, #-4]
	mov r7, #3
	mov r8, #20
	mul r8, r7, r8
	add r7, r6, r8
	mov r6, #2
	mov r8, #4
	mul r6, r6, r8
	add r8, r7, r6
	ldr r6, [r8]
	ldr r7, =122
	mul r8, r6, r7
	add r6, r4, r8
	ldr r4, [fp, #-4]
	mov r7, #3
	mov r8, #20
	mul r8, r7, r8
	add r7, r4, r8
	mov r4, #3
	mov r8, #4
	mul r4, r4, r8
	add r8, r7, r4
	ldr r4, [r8]
	ldr r7, =11
	mul r8, r4, r7
	add r4, r6, r8
	ldr r6, [fp, #-4]
	mov r7, #3
	mov r8, #20
	mul r8, r7, r8
	add r7, r6, r8
	mov r6, #4
	mov r8, #4
	mul r8, r6, r8
	add r6, r7, r8
	ldr r7, [r6]
	ldr r6, =0
	sub r8, r6, #23
	mul r6, r7, r8
	add r7, r4, r6
	ldr r4, [fp, #-4]
	mov r6, #4
	mov r8, #20
	mul r8, r6, r8
	add r6, r4, r8
	mov r4, #0
	mov r8, #4
	mul r4, r4, r8
	add r8, r6, r4
	ldr r4, [r8]
	ldr r6, =0
	sub r8, r6, #47
	mul r6, r4, r8
	add r4, r7, r6
	ldr r6, [fp, #-4]
	mov r7, #4
	mov r8, #20
	mul r7, r7, r8
	add r8, r6, r7
	mov r6, #1
	mov r7, #4
	mul r7, r6, r7
	add r6, r8, r7
	ldr r7, [r6]
	ldr r6, =0
	sub r8, r6, #32
	mul r6, r7, r8
	add r7, r4, r6
	ldr r4, [fp, #-4]
	mov r6, #4
	mov r8, #20
	mul r6, r6, r8
	add r8, r4, r6
	mov r4, #2
	mov r6, #4
	mul r6, r4, r6
	add r4, r8, r6
	ldr r6, [r4]
	ldr r4, =0
	sub r8, r4, #117
	mul r4, r6, r8
	add r6, r7, r4
	ldr r4, [fp, #-4]
	mov r7, #4
	mov r8, #20
	mul r8, r7, r8
	add r7, r4, r8
	mov r4, #3
	mov r8, #4
	mul r8, r4, r8
	add r4, r7, r8
	ldr r7, [r4]
	ldr r4, =95
	mul r8, r7, r4
	add r4, r6, r8
	ldr r6, [fp, #-4]
	mov r7, #4
	mov r8, #20
	mul r7, r7, r8
	add r8, r6, r7
	mov r6, #4
	mov r7, #4
	mul r7, r6, r7
	add r6, r8, r7
	ldr r7, [r6]
	ldr r6, =118
	mul r8, r7, r6
	add r6, r4, r8
	mov r0, r6
	bl relu_reg
	mov r4, r0
	ldr r6, =0
	sub r7, r6, #106
	mul r6, r4, r7
	add r4, r5, r6
	ldr r5, [fp, #-4]
	mov r6, #0
	mov r7, #20
	mul r7, r6, r7
	add r6, r5, r7
	mov r5, #0
	mov r7, #4
	mul r7, r5, r7
	add r5, r6, r7
	ldr r6, [r5]
	ldr r5, =8
	mul r7, r6, r5
	ldr r5, [fp, #-4]
	mov r6, #0
	mov r8, #20
	mul r8, r6, r8
	add r6, r5, r8
	mov r5, #1
	mov r8, #4
	mul r8, r5, r8
	add r5, r6, r8
	ldr r6, [r5]
	ldr r5, =82
	mul r8, r6, r5
	add r5, r7, r8
	ldr r6, [fp, #-4]
	mov r7, #0
	mov r8, #20
	mul r8, r7, r8
	add r7, r6, r8
	mov r6, #2
	mov r8, #4
	mul r8, r6, r8
	add r6, r7, r8
	ldr r7, [r6]
	ldr r6, =0
	sub r8, r6, #104
	mul r6, r7, r8
	add r7, r5, r6
	ldr r5, [fp, #-4]
	mov r6, #0
	mov r8, #20
	mul r8, r6, r8
	add r6, r5, r8
	mov r5, #3
	mov r8, #4
	mul r8, r5, r8
	add r5, r6, r8
	ldr r6, [r5]
	ldr r5, =101
	mul r8, r6, r5
	add r5, r7, r8
	ldr r6, [fp, #-4]
	mov r7, #0
	mov r8, #20
	mul r8, r7, r8
	add r7, r6, r8
	mov r6, #4
	mov r8, #4
	mul r8, r6, r8
	add r6, r7, r8
	ldr r7, [r6]
	ldr r6, =0
	sub r8, r6, #116
	mul r6, r7, r8
	add r7, r5, r6
	ldr r5, [fp, #-4]
	mov r6, #1
	mov r8, #20
	mul r8, r6, r8
	add r6, r5, r8
	mov r5, #0
	mov r8, #4
	mul r8, r5, r8
	add r5, r6, r8
	ldr r6, [r5]
	ldr r5, =0
	sub r8, r5, #63
	mul r5, r6, r8
	add r6, r7, r5
	ldr r5, [fp, #-4]
	mov r7, #1
	mov r8, #20
	mul r8, r7, r8
	add r7, r5, r8
	mov r5, #1
	mov r8, #4
	mul r8, r5, r8
	add r5, r7, r8
	ldr r7, [r5]
	ldr r5, =0
	sub r8, r5, #16
	mul r5, r7, r8
	add r7, r6, r5
	ldr r5, [fp, #-4]
	mov r6, #1
	mov r8, #20
	mul r8, r6, r8
	add r6, r5, r8
	mov r5, #2
	mov r8, #4
	mul r5, r5, r8
	add r8, r6, r5
	ldr r5, [r8]
	ldr r6, =0
	sub r8, r6, #70
	mul r6, r5, r8
	add r5, r7, r6
	ldr r6, [fp, #-4]
	mov r7, #1
	mov r8, #20
	mul r8, r7, r8
	add r7, r6, r8
	mov r6, #3
	mov r8, #4
	mul r6, r6, r8
	add r8, r7, r6
	ldr r6, [r8]
	ldr r7, =125
	mul r8, r6, r7
	add r6, r5, r8
	ldr r5, [fp, #-4]
	mov r7, #1
	mov r8, #20
	mul r8, r7, r8
	add r7, r5, r8
	mov r5, #4
	b .B2
.LTORG
.B2:
	mov r8, #4
	mul r5, r5, r8
	add r8, r7, r5
	ldr r5, [r8]
	ldr r7, =75
	mul r8, r5, r7
	add r5, r6, r8
	ldr r6, [fp, #-4]
	mov r7, #2
	mov r8, #20
	mul r8, r7, r8
	add r7, r6, r8
	mov r6, #0
	mov r8, #4
	mul r8, r6, r8
	add r6, r7, r8
	ldr r7, [r6]
	ldr r6, =66
	mul r8, r7, r6
	add r6, r5, r8
	ldr r5, [fp, #-4]
	mov r7, #2
	mov r8, #20
	mul r8, r7, r8
	add r7, r5, r8
	mov r5, #1
	mov r8, #4
	mul r8, r5, r8
	add r5, r7, r8
	ldr r7, [r5]
	ldr r5, =0
	sub r8, r5, #96
	mul r5, r7, r8
	add r7, r6, r5
	ldr r5, [fp, #-4]
	mov r6, #2
	mov r8, #20
	mul r6, r6, r8
	add r8, r5, r6
	mov r5, #2
	mov r6, #4
	mul r6, r5, r6
	add r5, r8, r6
	ldr r6, [r5]
	ldr r5, =0
	sub r8, r5, #101
	mul r5, r6, r8
	add r6, r7, r5
	ldr r5, [fp, #-4]
	mov r7, #2
	mov r8, #20
	mul r8, r7, r8
	add r7, r5, r8
	mov r5, #3
	mov r8, #4
	mul r8, r5, r8
	add r5, r7, r8
	ldr r7, [r5]
	ldr r5, =0
	sub r8, r5, #114
	mul r5, r7, r8
	add r7, r6, r5
	ldr r5, [fp, #-4]
	mov r6, #2
	mov r8, #20
	mul r6, r6, r8
	add r8, r5, r6
	mov r5, #4
	mov r6, #4
	mul r6, r5, r6
	add r5, r8, r6
	ldr r6, [r5]
	ldr r5, =59
	mul r8, r6, r5
	add r5, r7, r8
	ldr r6, [fp, #-4]
	mov r7, #3
	mov r8, #20
	mul r8, r7, r8
	add r7, r6, r8
	mov r6, #0
	mov r8, #4
	mul r8, r6, r8
	add r6, r7, r8
	ldr r7, [r6]
	ldr r6, =12
	mul r8, r7, r6
	add r6, r5, r8
	ldr r5, [fp, #-4]
	mov r7, #3
	mov r8, #20
	mul r8, r7, r8
	add r7, r5, r8
	mov r5, #1
	mov r8, #4
	mul r8, r5, r8
	add r5, r7, r8
	ldr r7, [r5]
	ldr r5, =5
	mul r8, r7, r5
	add r5, r6, r8
	ldr r6, [fp, #-4]
	mov r7, #3
	mov r8, #20
	mul r8, r7, r8
	add r7, r6, r8
	mov r6, #2
	mov r8, #4
	mul r8, r6, r8
	add r6, r7, r8
	ldr r7, [r6]
	ldr r6, =0
	sub r8, r6, #95
	mul r6, r7, r8
	add r7, r5, r6
	ldr r5, [fp, #-4]
	mov r6, #3
	mov r8, #20
	mul r8, r6, r8
	add r6, r5, r8
	mov r5, #3
	mov r8, #4
	mul r8, r5, r8
	add r5, r6, r8
	ldr r6, [r5]
	ldr r5, =116
	mul r8, r6, r5
	add r5, r7, r8
	ldr r6, [fp, #-4]
	mov r7, #3
	mov r8, #20
	mul r8, r7, r8
	add r7, r6, r8
	mov r6, #4
	mov r8, #4
	mul r8, r6, r8
	add r6, r7, r8
	ldr r7, [r6]
	ldr r6, =0
	sub r8, r6, #93
	mul r6, r7, r8
	add r7, r5, r6
	ldr r5, [fp, #-4]
	mov r6, #4
	mov r8, #20
	mul r8, r6, r8
	add r6, r5, r8
	mov r5, #0
	mov r8, #4
	mul r8, r5, r8
	add r5, r6, r8
	ldr r6, [r5]
	ldr r5, =15
	mul r8, r6, r5
	add r5, r7, r8
	ldr r6, [fp, #-4]
	mov r7, #4
	mov r8, #20
	mul r8, r7, r8
	add r7, r6, r8
	mov r6, #1
	mov r8, #4
	mul r8, r6, r8
	add r6, r7, r8
	ldr r7, [r6]
	ldr r6, =79
	mul r8, r7, r6
	add r6, r5, r8
	ldr r5, [fp, #-4]
	mov r7, #4
	mov r8, #20
	mul r7, r7, r8
	add r8, r5, r7
	mov r5, #2
	mov r7, #4
	mul r5, r5, r7
	add r7, r8, r5
	ldr r5, [r7]
	ldr r7, =3
	mul r8, r5, r7
	add r5, r6, r8
	ldr r6, [fp, #-4]
	mov r7, #4
	mov r8, #20
	mul r8, r7, r8
	add r7, r6, r8
	mov r6, #3
	mov r8, #4
	mul r8, r6, r8
	add r6, r7, r8
	ldr r7, [r6]
	ldr r6, =49
	mul r8, r7, r6
	add r6, r5, r8
	ldr r5, [fp, #-4]
	mov r7, #4
	mov r8, #20
	mul r7, r7, r8
	add r8, r5, r7
	mov r5, #4
	mov r7, #4
	mul r7, r5, r7
	add r5, r8, r7
	ldr r7, [r5]
	ldr r5, =0
	sub r8, r5, #124
	mul r5, r7, r8
	add r7, r6, r5
	mov r0, r7
	bl relu_reg
	mov r5, r0
	ldr r6, =0
	sub r7, r6, #3
	mul r6, r5, r7
	add r5, r4, r6
	ldr r4, [fp, #-4]
	mov r6, #0
	mov r7, #20
	mul r7, r6, r7
	add r6, r4, r7
	mov r4, #0
	mov r7, #4
	mul r4, r4, r7
	add r7, r6, r4
	ldr r4, [r7]
	ldr r6, =81
	mul r7, r4, r6
	ldr r4, [fp, #-4]
	mov r6, #0
	mov r8, #20
	mul r8, r6, r8
	add r6, r4, r8
	mov r4, #1
	mov r8, #4
	mul r4, r4, r8
	add r8, r6, r4
	ldr r4, [r8]
	ldr r6, =68
	mul r8, r4, r6
	add r4, r7, r8
	ldr r6, [fp, #-4]
	mov r7, #0
	mov r8, #20
	mul r8, r7, r8
	add r7, r6, r8
	mov r6, #2
	mov r8, #4
	mul r8, r6, r8
	add r6, r7, r8
	ldr r7, [r6]
	ldr r6, =0
	sub r8, r6, #102
	mul r6, r7, r8
	add r7, r4, r6
	ldr r4, [fp, #-4]
	mov r6, #0
	mov r8, #20
	mul r8, r6, r8
	add r6, r4, r8
	mov r4, #3
	mov r8, #4
	mul r4, r4, r8
	add r8, r6, r4
	ldr r4, [r8]
	ldr r6, =0
	sub r8, r6, #74
	mul r6, r4, r8
	add r4, r7, r6
	ldr r6, [fp, #-4]
	mov r7, #0
	mov r8, #20
	mul r8, r7, r8
	add r7, r6, r8
	mov r6, #4
	mov r8, #4
	mul r6, r6, r8
	add r8, r7, r6
	ldr r6, [r8]
	ldr r7, =121
	mul r8, r6, r7
	add r6, r4, r8
	ldr r4, [fp, #-4]
	mov r7, #1
	mov r8, #20
	mul r8, r7, r8
	add r7, r4, r8
	mov r4, #0
	mov r8, #4
	mul r4, r4, r8
	add r8, r7, r4
	ldr r4, [r8]
	ldr r7, =0
	sub r8, r7, #15
	mul r7, r4, r8
	add r4, r6, r7
	ldr r6, [fp, #-4]
	mov r7, #1
	mov r8, #20
	mul r7, r7, r8
	add r8, r6, r7
	mov r6, #1
	mov r7, #4
	mul r7, r6, r7
	add r6, r8, r7
	ldr r7, [r6]
	ldr r6, =55
	mul r8, r7, r6
	add r6, r4, r8
	ldr r4, [fp, #-4]
	mov r7, #1
	mov r8, #20
	mul r7, r7, r8
	add r8, r4, r7
	mov r4, #2
	mov r7, #4
	mul r7, r4, r7
	add r4, r8, r7
	ldr r7, [r4]
	ldr r4, =101
	mul r8, r7, r4
	add r4, r6, r8
	ldr r6, [fp, #-4]
	mov r7, #1
	mov r8, #20
	mul r7, r7, r8
	add r8, r6, r7
	mov r6, #3
	mov r7, #4
	mul r7, r6, r7
	add r6, r8, r7
	ldr r7, [r6]
	ldr r6, =0
	sub r8, r6, #13
	mul r6, r7, r8
	add r7, r4, r6
	ldr r4, [fp, #-4]
	mov r6, #1
	mov r8, #20
	mul r6, r6, r8
	add r8, r4, r6
	mov r4, #4
	mov r6, #4
	mul r6, r4, r6
	add r4, r8, r6
	ldr r6, [r4]
	ldr r4, =0
	sub r8, r4, #62
	mul r4, r6, r8
	add r6, r7, r4
	ldr r4, [fp, #-4]
	mov r7, #2
	mov r8, #20
	mul r8, r7, r8
	add r7, r4, r8
	mov r4, #0
	mov r8, #4
	mul r4, r4, r8
	add r8, r7, r4
	ldr r4, [r8]
	ldr r7, =64
	mul r8, r4, r7
	add r4, r6, r8
	ldr r6, [fp, #-4]
	mov r7, #2
	mov r8, #20
	mul r8, r7, r8
	add r7, r6, r8
	mov r6, #1
	mov r8, #4
	mul r8, r6, r8
	add r6, r7, r8
	ldr r7, [r6]
	ldr r6, =114
	mul r8, r7, r6
	add r6, r4, r8
	ldr r4, [fp, #-4]
	mov r7, #2
	mov r8, #20
	mul r7, r7, r8
	add r8, r4, r7
	mov r4, #2
	mov r7, #4
	mul r7, r4, r7
	add r4, r8, r7
	ldr r7, [r4]
	ldr r4, =38
	mul r8, r7, r4
	add r4, r6, r8
	ldr r6, [fp, #-4]
	mov r7, #2
	mov r8, #20
	mul r7, r7, r8
	add r8, r6, r7
	mov r6, #3
	mov r7, #4
	mul r7, r6, r7
	add r6, r8, r7
	ldr r7, [r6]
	ldr r6, =0
	sub r8, r6, #21
	mul r6, r7, r8
	add r7, r4, r6
	ldr r4, [fp, #-4]
	mov r6, #2
	mov r8, #20
	mul r8, r6, r8
	add r6, r4, r8
	mov r4, #4
	mov r8, #4
	mul r4, r4, r8
	add r8, r6, r4
	ldr r4, [r8]
	ldr r6, =112
	mul r8, r4, r6
	add r4, r7, r8
	ldr r6, [fp, #-4]
	mov r7, #3
	mov r8, #20
	mul r8, r7, r8
	add r7, r6, r8
	mov r6, #0
	mov r8, #4
	mul r8, r6, r8
	add r6, r7, r8
	ldr r7, [r6]
	ldr r6, =114
	mul r8, r7, r6
	add r6, r4, r8
	ldr r4, [fp, #-4]
	mov r7, #3
	mov r8, #20
	mul r7, r7, r8
	add r8, r4, r7
	mov r4, #1
	mov r7, #4
	mul r7, r4, r7
	add r4, r8, r7
	ldr r7, [r4]
	ldr r4, =112
	mul r8, r7, r4
	add r4, r6, r8
	ldr r6, [fp, #-4]
	mov r7, #3
	mov r8, #20
	mul r7, r7, r8
	add r8, r6, r7
	mov r6, #2
	mov r7, #4
	mul r7, r6, r7
	add r6, r8, r7
	ldr r7, [r6]
	ldr r6, =0
	sub r8, r6, #10
	mul r6, r7, r8
	add r7, r4, r6
	ldr r4, [fp, #-4]
	mov r6, #3
	mov r8, #20
	mul r8, r6, r8
	add r6, r4, r8
	mov r4, #3
	mov r8, #4
	mul r4, r4, r8
	add r8, r6, r4
	ldr r4, [r8]
	ldr r6, =0
	sub r8, r6, #16
	mul r6, r4, r8
	add r4, r7, r6
	ldr r6, [fp, #-4]
	mov r7, #3
	mov r8, #20
	mul r7, r7, r8
	add r8, r6, r7
	mov r6, #4
	mov r7, #4
	mul r7, r6, r7
	add r6, r8, r7
	ldr r7, [r6]
	ldr r6, =0
	sub r8, r6, #50
	mul r6, r7, r8
	add r7, r4, r6
	ldr r4, [fp, #-4]
	mov r6, #4
	mov r8, #20
	mul r6, r6, r8
	add r8, r4, r6
	mov r4, #0
	mov r6, #4
	mul r6, r4, r6
	add r4, r8, r6
	ldr r6, [r4]
	ldr r4, =0
	sub r8, r4, #112
	mul r4, r6, r8
	add r6, r7, r4
	ldr r4, [fp, #-4]
	mov r7, #4
	mov r8, #20
	b .B3
.LTORG
.B3:
	mul r8, r7, r8
	add r7, r4, r8
	mov r4, #1
	mov r8, #4
	mul r8, r4, r8
	add r4, r7, r8
	ldr r7, [r4]
	ldr r4, =0
	sub r8, r4, #116
	mul r4, r7, r8
	add r7, r6, r4
	ldr r4, [fp, #-4]
	mov r6, #4
	mov r8, #20
	mul r8, r6, r8
	add r6, r4, r8
	mov r4, #2
	mov r8, #4
	mul r8, r4, r8
	add r4, r6, r8
	ldr r6, [r4]
	ldr r4, =0
	sub r8, r4, #54
	mul r4, r6, r8
	add r6, r7, r4
	ldr r4, [fp, #-4]
	mov r7, #4
	mov r8, #20
	mul r8, r7, r8
	add r7, r4, r8
	mov r4, #3
	mov r8, #4
	mul r8, r4, r8
	add r4, r7, r8
	ldr r7, [r4]
	ldr r4, =82
	mul r8, r7, r4
	add r4, r6, r8
	ldr r6, [fp, #-4]
	mov r7, #4
	mov r8, #20
	mul r8, r7, r8
	add r7, r6, r8
	mov r6, #4
	mov r8, #4
	mul r8, r6, r8
	add r6, r7, r8
	ldr r7, [r6]
	ldr r6, =0
	sub r8, r6, #72
	mul r6, r7, r8
	add r7, r4, r6
	mov r0, r7
	bl relu_reg
	mov r4, r0
	ldr r6, =32
	mul r7, r4, r6
	add r4, r5, r7
	ldr r5, [fp, #-4]
	mov r6, #0
	mov r7, #20
	mul r7, r6, r7
	add r6, r5, r7
	mov r5, #0
	mov r7, #4
	mul r5, r5, r7
	add r7, r6, r5
	ldr r5, [r7]
	ldr r6, =15
	mul r7, r5, r6
	ldr r5, [fp, #-4]
	mov r6, #0
	mov r8, #20
	mul r8, r6, r8
	add r6, r5, r8
	mov r5, #1
	mov r8, #4
	mul r5, r5, r8
	add r8, r6, r5
	ldr r5, [r8]
	ldr r6, =0
	sub r8, r6, #77
	mul r6, r5, r8
	add r5, r7, r6
	ldr r6, [fp, #-4]
	mov r7, #0
	mov r8, #20
	mul r7, r7, r8
	add r8, r6, r7
	mov r6, #2
	mov r7, #4
	mul r6, r6, r7
	add r7, r8, r6
	ldr r6, [r7]
	ldr r7, =66
	mul r8, r6, r7
	add r6, r5, r8
	ldr r5, [fp, #-4]
	mov r7, #0
	mov r8, #20
	mul r8, r7, r8
	add r7, r5, r8
	mov r5, #3
	mov r8, #4
	mul r8, r5, r8
	add r5, r7, r8
	ldr r7, [r5]
	ldr r5, =0
	sub r8, r5, #90
	mul r5, r7, r8
	add r7, r6, r5
	ldr r5, [fp, #-4]
	mov r6, #0
	mov r8, #20
	mul r8, r6, r8
	add r6, r5, r8
	mov r5, #4
	mov r8, #4
	mul r8, r5, r8
	add r5, r6, r8
	ldr r6, [r5]
	ldr r5, =0
	sub r8, r5, #6
	mul r5, r6, r8
	add r6, r7, r5
	ldr r5, [fp, #-4]
	mov r7, #1
	mov r8, #20
	mul r8, r7, r8
	add r7, r5, r8
	mov r5, #0
	mov r8, #4
	mul r8, r5, r8
	add r5, r7, r8
	ldr r7, [r5]
	ldr r5, =0
	sub r8, r5, #30
	mul r5, r7, r8
	add r7, r6, r5
	ldr r5, [fp, #-4]
	mov r6, #1
	mov r8, #20
	mul r8, r6, r8
	add r6, r5, r8
	mov r5, #1
	mov r8, #4
	mul r8, r5, r8
	add r5, r6, r8
	ldr r6, [r5]
	ldr r5, =0
	sub r8, r5, #8
	mul r5, r6, r8
	add r6, r7, r5
	ldr r5, [fp, #-4]
	mov r7, #1
	mov r8, #20
	mul r8, r7, r8
	add r7, r5, r8
	mov r5, #2
	mov r8, #4
	mul r8, r5, r8
	add r5, r7, r8
	ldr r7, [r5]
	ldr r5, =81
	mul r8, r7, r5
	add r5, r6, r8
	ldr r6, [fp, #-4]
	mov r7, #1
	mov r8, #20
	mul r7, r7, r8
	add r8, r6, r7
	mov r6, #3
	mov r7, #4
	mul r7, r6, r7
	add r6, r8, r7
	ldr r7, [r6]
	ldr r6, =2
	mul r8, r7, r6
	add r6, r5, r8
	ldr r5, [fp, #-4]
	mov r7, #1
	mov r8, #20
	mul r8, r7, r8
	add r7, r5, r8
	mov r5, #4
	mov r8, #4
	mul r8, r5, r8
	add r5, r7, r8
	ldr r7, [r5]
	ldr r5, =0
	sub r8, r5, #110
	mul r5, r7, r8
	add r7, r6, r5
	ldr r5, [fp, #-4]
	mov r6, #2
	mov r8, #20
	mul r8, r6, r8
	add r6, r5, r8
	mov r5, #0
	mov r8, #4
	mul r8, r5, r8
	add r5, r6, r8
	ldr r6, [r5]
	ldr r5, =0
	sub r8, r5, #95
	mul r5, r6, r8
	add r6, r7, r5
	ldr r5, [fp, #-4]
	mov r7, #2
	mov r8, #20
	mul r8, r7, r8
	add r7, r5, r8
	mov r5, #1
	mov r8, #4
	mul r8, r5, r8
	add r5, r7, r8
	ldr r7, [r5]
	ldr r5, =59
	mul r8, r7, r5
	add r5, r6, r8
	ldr r6, [fp, #-4]
	mov r7, #2
	mov r8, #20
	mul r7, r7, r8
	add r8, r6, r7
	mov r6, #2
	mov r7, #4
	mul r7, r6, r7
	add r6, r8, r7
	ldr r7, [r6]
	ldr r6, =52
	mul r8, r7, r6
	add r6, r5, r8
	ldr r5, [fp, #-4]
	mov r7, #2
	mov r8, #20
	mul r8, r7, r8
	add r7, r5, r8
	mov r5, #3
	mov r8, #4
	mul r8, r5, r8
	add r5, r7, r8
	ldr r7, [r5]
	ldr r5, =15
	mul r8, r7, r5
	add r5, r6, r8
	ldr r6, [fp, #-4]
	mov r7, #2
	mov r8, #20
	mul r8, r7, r8
	add r7, r6, r8
	mov r6, #4
	mov r8, #4
	mul r8, r6, r8
	add r6, r7, r8
	ldr r7, [r6]
	ldr r6, =55
	mul r8, r7, r6
	add r6, r5, r8
	ldr r5, [fp, #-4]
	mov r7, #3
	mov r8, #20
	mul r8, r7, r8
	add r7, r5, r8
	mov r5, #0
	mov r8, #4
	mul r8, r5, r8
	add r5, r7, r8
	ldr r7, [r5]
	ldr r5, =0
	sub r8, r5, #33
	mul r5, r7, r8
	add r7, r6, r5
	ldr r5, [fp, #-4]
	mov r6, #3
	mov r8, #20
	mul r6, r6, r8
	add r8, r5, r6
	mov r5, #1
	mov r6, #4
	mul r6, r5, r6
	add r5, r8, r6
	ldr r6, [r5]
	ldr r5, =14
	mul r8, r6, r5
	add r5, r7, r8
	ldr r6, [fp, #-4]
	mov r7, #3
	mov r8, #20
	mul r8, r7, r8
	add r7, r6, r8
	mov r6, #2
	mov r8, #4
	mul r8, r6, r8
	add r6, r7, r8
	ldr r7, [r6]
	ldr r6, =58
	mul r8, r7, r6
	add r6, r5, r8
	ldr r5, [fp, #-4]
	mov r7, #3
	mov r8, #20
	mul r8, r7, r8
	add r7, r5, r8
	mov r5, #3
	mov r8, #4
	mul r8, r5, r8
	add r5, r7, r8
	ldr r7, [r5]
	ldr r5, =67
	mul r8, r7, r5
	add r5, r6, r8
	ldr r6, [fp, #-4]
	mov r7, #3
	mov r8, #20
	mul r8, r7, r8
	add r7, r6, r8
	mov r6, #4
	mov r8, #4
	mul r8, r6, r8
	add r6, r7, r8
	ldr r7, [r6]
	ldr r6, =86
	mul r8, r7, r6
	add r6, r5, r8
	ldr r5, [fp, #-4]
	mov r7, #4
	mov r8, #20
	mul r8, r7, r8
	add r7, r5, r8
	mov r5, #0
	mov r8, #4
	mul r8, r5, r8
	add r5, r7, r8
	ldr r7, [r5]
	ldr r5, =0
	sub r8, r5, #79
	mul r5, r7, r8
	add r7, r6, r5
	ldr r5, [fp, #-4]
	mov r6, #4
	mov r8, #20
	mul r6, r6, r8
	add r8, r5, r6
	mov r5, #1
	mov r6, #4
	mul r6, r5, r6
	add r5, r8, r6
	ldr r6, [r5]
	ldr r5, =48
	mul r8, r6, r5
	add r5, r7, r8
	ldr r6, [fp, #-4]
	mov r7, #4
	mov r8, #20
	mul r7, r7, r8
	add r8, r6, r7
	mov r6, #2
	mov r7, #4
	mul r7, r6, r7
	add r6, r8, r7
	ldr r7, [r6]
	ldr r6, =0
	sub r8, r6, #13
	mul r6, r7, r8
	add r7, r5, r6
	ldr r5, [fp, #-4]
	mov r6, #4
	mov r8, #20
	mul r6, r6, r8
	add r8, r5, r6
	mov r5, #3
	mov r6, #4
	mul r6, r5, r6
	add r5, r8, r6
	ldr r6, [r5]
	ldr r5, =0
	sub r8, r5, #15
	mul r5, r6, r8
	add r6, r7, r5
	ldr r5, [fp, #-4]
	mov r7, #4
	mov r8, #20
	mul r8, r7, r8
	add r7, r5, r8
	mov r5, #4
	mov r8, #4
	mul r8, r5, r8
	add r5, r7, r8
	ldr r7, [r5]
	ldr r5, =66
	mul r8, r7, r5
	add r5, r6, r8
	mov r0, r5
	bl relu_reg
	mov r5, r0
	ldr r6, =0
	sub r7, r6, #95
	mul r6, r5, r7
	add r5, r4, r6
	ldr r4, [fp, #-4]
	mov r6, #0
	mov r7, #20
	mul r7, r6, r7
	add r6, r4, r7
	mov r4, #0
	mov r7, #4
	mul r7, r4, r7
	add r4, r6, r7
	ldr r6, [r4]
	ldr r4, =33
	mul r7, r6, r4
	ldr r4, [fp, #-4]
	mov r6, #0
	mov r8, #20
	mul r8, r6, r8
	add r6, r4, r8
	mov r4, #1
	mov r8, #4
	mul r8, r4, r8
	add r4, r6, r8
	ldr r6, [r4]
	ldr r4, =82
	mul r8, r6, r4
	add r4, r7, r8
	ldr r6, [fp, #-4]
	mov r7, #0
	mov r8, #20
	mul r8, r7, r8
	add r7, r6, r8
	mov r6, #2
	mov r8, #4
	mul r8, r6, r8
	add r6, r7, r8
	ldr r7, [r6]
	ldr r6, =67
	mul r8, r7, r6
	add r6, r4, r8
	ldr r4, [fp, #-4]
	mov r7, #0
	mov r8, #20
	mul r8, r7, r8
	add r7, r4, r8
	mov r4, #3
	mov r8, #4
	mul r8, r4, r8
	add r4, r7, r8
	ldr r7, [r4]
	ldr r4, =30
	mul r8, r7, r4
	add r4, r6, r8
	ldr r6, [fp, #-4]
	mov r7, #0
	mov r8, #20
	mul r8, r7, r8
	add r7, r6, r8
	mov r6, #4
	mov r8, #4
	mul r8, r6, r8
	add r6, r7, r8
	ldr r7, [r6]
	ldr r6, =0
	sub r8, r6, #2
	mul r6, r7, r8
	add r7, r4, r6
	ldr r4, [fp, #-4]
	mov r6, #1
	mov r8, #20
	mul r6, r6, r8
	add r8, r4, r6
	mov r4, #0
	mov r6, #4
	mul r6, r4, r6
	add r4, r8, r6
	ldr r6, [r4]
	ldr r4, =65
	mul r8, r6, r4
	add r4, r7, r8
	ldr r6, [fp, #-4]
	mov r7, #1
	mov r8, #20
	mul r8, r7, r8
	add r7, r6, r8
	mov r6, #1
	mov r8, #4
	mul r8, r6, r8
	add r6, r7, r8
	ldr r7, [r6]
	ldr r6, =120
	mul r8, r7, r6
	add r6, r4, r8
	ldr r4, [fp, #-4]
	mov r7, #1
	mov r8, #20
	mul r7, r7, r8
	add r8, r4, r7
	mov r4, #2
	mov r7, #4
	mul r7, r4, r7
	add r4, r8, r7
	b .B4
.LTORG
.B4:
	ldr r7, [r4]
	ldr r4, =0
	sub r8, r4, #13
	mul r4, r7, r8
	add r7, r6, r4
	ldr r4, [fp, #-4]
	mov r6, #1
	mov r8, #20
	mul r6, r6, r8
	add r8, r4, r6
	mov r4, #3
	mov r6, #4
	mul r6, r4, r6
	add r4, r8, r6
	ldr r6, [r4]
	ldr r4, =18
	mul r8, r6, r4
	add r4, r7, r8
	ldr r6, [fp, #-4]
	mov r7, #1
	mov r8, #20
	mul r8, r7, r8
	add r7, r6, r8
	mov r6, #4
	mov r8, #4
	mul r8, r6, r8
	add r6, r7, r8
	ldr r7, [r6]
	ldr r6, =5
	mul r8, r7, r6
	add r6, r4, r8
	ldr r4, [fp, #-4]
	mov r7, #2
	mov r8, #20
	mul r8, r7, r8
	add r7, r4, r8
	mov r4, #0
	mov r8, #4
	mul r8, r4, r8
	add r4, r7, r8
	ldr r7, [r4]
	ldr r4, =104
	mul r8, r7, r4
	add r4, r6, r8
	ldr r6, [fp, #-4]
	mov r7, #2
	mov r8, #20
	mul r7, r7, r8
	add r8, r6, r7
	mov r6, #1
	mov r7, #4
	mul r7, r6, r7
	add r6, r8, r7
	ldr r7, [r6]
	ldr r6, =0
	sub r8, r6, #119
	mul r6, r7, r8
	add r7, r4, r6
	ldr r4, [fp, #-4]
	mov r6, #2
	mov r8, #20
	mul r6, r6, r8
	add r8, r4, r6
	mov r4, #2
	mov r6, #4
	mul r6, r4, r6
	add r4, r8, r6
	ldr r6, [r4]
	ldr r4, =0
	sub r8, r4, #7
	mul r4, r6, r8
	add r6, r7, r4
	ldr r4, [fp, #-4]
	mov r7, #2
	mov r8, #20
	mul r8, r7, r8
	add r7, r4, r8
	mov r4, #3
	mov r8, #4
	mul r8, r4, r8
	add r4, r7, r8
	ldr r7, [r4]
	ldr r4, =71
	mul r8, r7, r4
	add r4, r6, r8
	ldr r6, [fp, #-4]
	mov r7, #2
	mov r8, #20
	mul r8, r7, r8
	add r7, r6, r8
	mov r6, #4
	mov r8, #4
	mul r8, r6, r8
	add r6, r7, r8
	ldr r7, [r6]
	ldr r6, =107
	mul r8, r7, r6
	add r6, r4, r8
	ldr r4, [fp, #-4]
	mov r7, #3
	mov r8, #20
	mul r7, r7, r8
	add r8, r4, r7
	mov r4, #0
	mov r7, #4
	mul r7, r4, r7
	add r4, r8, r7
	ldr r7, [r4]
	ldr r4, =24
	mul r8, r7, r4
	add r4, r6, r8
	ldr r6, [fp, #-4]
	mov r7, #3
	mov r8, #20
	mul r7, r7, r8
	add r8, r6, r7
	mov r6, #1
	mov r7, #4
	mul r7, r6, r7
	add r6, r8, r7
	ldr r7, [r6]
	ldr r6, =82
	mul r8, r7, r6
	add r6, r4, r8
	ldr r4, [fp, #-4]
	mov r7, #3
	mov r8, #20
	mul r7, r7, r8
	add r8, r4, r7
	mov r4, #2
	mov r7, #4
	mul r7, r4, r7
	add r4, r8, r7
	ldr r7, [r4]
	ldr r4, =0
	sub r8, r4, #96
	mul r4, r7, r8
	add r7, r6, r4
	ldr r4, [fp, #-4]
	mov r6, #3
	mov r8, #20
	mul r6, r6, r8
	add r8, r4, r6
	mov r4, #3
	mov r6, #4
	mul r6, r4, r6
	add r4, r8, r6
	ldr r6, [r4]
	ldr r4, =0
	sub r8, r4, #104
	mul r4, r6, r8
	add r6, r7, r4
	ldr r4, [fp, #-4]
	mov r7, #3
	mov r8, #20
	mul r7, r7, r8
	add r8, r4, r7
	mov r4, #4
	mov r7, #4
	mul r7, r4, r7
	add r4, r8, r7
	ldr r7, [r4]
	ldr r4, =0
	sub r8, r4, #121
	mul r4, r7, r8
	add r7, r6, r4
	ldr r4, [fp, #-4]
	mov r6, #4
	mov r8, #20
	mul r8, r6, r8
	add r6, r4, r8
	mov r4, #0
	mov r8, #4
	mul r8, r4, r8
	add r4, r6, r8
	ldr r6, [r4]
	ldr r4, =65
	mul r8, r6, r4
	add r4, r7, r8
	ldr r6, [fp, #-4]
	mov r7, #4
	mov r8, #20
	mul r8, r7, r8
	add r7, r6, r8
	mov r6, #1
	mov r8, #4
	mul r6, r6, r8
	add r8, r7, r6
	ldr r6, [r8]
	ldr r7, =97
	mul r8, r6, r7
	add r6, r4, r8
	ldr r4, [fp, #-4]
	mov r7, #4
	mov r8, #20
	mul r8, r7, r8
	add r7, r4, r8
	mov r4, #2
	mov r8, #4
	mul r8, r4, r8
	add r4, r7, r8
	ldr r7, [r4]
	ldr r4, =83
	mul r8, r7, r4
	add r4, r6, r8
	ldr r6, [fp, #-4]
	mov r7, #4
	mov r8, #20
	mul r8, r7, r8
	add r7, r6, r8
	mov r6, #3
	mov r8, #4
	mul r6, r6, r8
	add r8, r7, r6
	ldr r6, [r8]
	ldr r7, =46
	mul r8, r6, r7
	add r6, r4, r8
	ldr r4, [fp, #-4]
	mov r7, #4
	mov r8, #20
	mul r8, r7, r8
	add r7, r4, r8
	mov r4, #4
	mov r8, #4
	mul r4, r4, r8
	add r8, r7, r4
	ldr r4, [r8]
	ldr r7, =0
	sub r8, r7, #84
	mul r7, r4, r8
	add r4, r6, r7
	mov r0, r4
	bl relu_reg
	mov r4, r0
	ldr r6, =0
	sub r7, r6, #50
	mul r6, r4, r7
	add r4, r5, r6
	ldr r5, [fp, #-4]
	mov r6, #0
	mov r7, #20
	mul r7, r6, r7
	add r6, r5, r7
	mov r5, #0
	mov r7, #4
	mul r7, r5, r7
	add r5, r6, r7
	ldr r6, [r5]
	ldr r5, =0
	sub r7, r5, #29
	mul r5, r6, r7
	ldr r6, [fp, #-4]
	mov r7, #0
	mov r8, #20
	mul r8, r7, r8
	add r7, r6, r8
	mov r6, #1
	mov r8, #4
	mul r8, r6, r8
	add r6, r7, r8
	ldr r7, [r6]
	ldr r6, =7
	mul r8, r7, r6
	add r6, r5, r8
	ldr r5, [fp, #-4]
	mov r7, #0
	mov r8, #20
	mul r7, r7, r8
	add r8, r5, r7
	mov r5, #2
	mov r7, #4
	mul r7, r5, r7
	add r5, r8, r7
	ldr r7, [r5]
	ldr r5, =0
	sub r8, r5, #70
	mul r5, r7, r8
	add r7, r6, r5
	ldr r5, [fp, #-4]
	mov r6, #0
	mov r8, #20
	mul r6, r6, r8
	add r8, r5, r6
	mov r5, #3
	mov r6, #4
	mul r6, r5, r6
	add r5, r8, r6
	ldr r6, [r5]
	ldr r5, =38
	mul r8, r6, r5
	add r5, r7, r8
	ldr r6, [fp, #-4]
	mov r7, #0
	mov r8, #20
	mul r7, r7, r8
	add r8, r6, r7
	mov r6, #4
	mov r7, #4
	mul r7, r6, r7
	add r6, r8, r7
	ldr r7, [r6]
	ldr r6, =0
	sub r8, r6, #90
	mul r6, r7, r8
	add r7, r5, r6
	ldr r5, [fp, #-4]
	mov r6, #1
	mov r8, #20
	mul r6, r6, r8
	add r8, r5, r6
	mov r5, #0
	mov r6, #4
	mul r6, r5, r6
	add r5, r8, r6
	ldr r6, [r5]
	ldr r5, =0
	sub r8, r5, #15
	mul r5, r6, r8
	add r6, r7, r5
	ldr r5, [fp, #-4]
	mov r7, #1
	mov r8, #20
	mul r7, r7, r8
	add r8, r5, r7
	mov r5, #1
	mov r7, #4
	mul r7, r5, r7
	add r5, r8, r7
	ldr r7, [r5]
	ldr r5, =0
	sub r8, r5, #32
	mul r5, r7, r8
	add r7, r6, r5
	ldr r5, [fp, #-4]
	mov r6, #1
	mov r8, #20
	mul r6, r6, r8
	add r8, r5, r6
	mov r5, #2
	mov r6, #4
	mul r6, r5, r6
	add r5, r8, r6
	ldr r6, [r5]
	ldr r5, =37
	mul r8, r6, r5
	add r5, r7, r8
	ldr r6, [fp, #-4]
	mov r7, #1
	mov r8, #20
	mul r7, r7, r8
	add r8, r6, r7
	mov r6, #3
	mov r7, #4
	mul r7, r6, r7
	add r6, r8, r7
	ldr r7, [r6]
	ldr r6, =36
	mul r8, r7, r6
	add r6, r5, r8
	ldr r5, [fp, #-4]
	mov r7, #1
	mov r8, #20
	mul r7, r7, r8
	add r8, r5, r7
	mov r5, #4
	mov r7, #4
	mul r7, r5, r7
	add r5, r8, r7
	ldr r7, [r5]
	ldr r5, =0
	sub r8, r5, #62
	mul r5, r7, r8
	add r7, r6, r5
	ldr r5, [fp, #-4]
	mov r6, #2
	mov r8, #20
	mul r6, r6, r8
	add r8, r5, r6
	mov r5, #0
	mov r6, #4
	mul r6, r5, r6
	add r5, r8, r6
	ldr r6, [r5]
	ldr r5, =0
	sub r8, r5, #125
	mul r5, r6, r8
	add r6, r7, r5
	ldr r5, [fp, #-4]
	mov r7, #2
	mov r8, #20
	mul r7, r7, r8
	add r8, r5, r7
	mov r5, #1
	mov r7, #4
	mul r7, r5, r7
	add r5, r8, r7
	ldr r7, [r5]
	ldr r5, =0
	sub r8, r5, #46
	mul r5, r7, r8
	add r7, r6, r5
	ldr r5, [fp, #-4]
	mov r6, #2
	mov r8, #20
	mul r6, r6, r8
	add r8, r5, r6
	mov r5, #2
	mov r6, #4
	mul r6, r5, r6
	add r5, r8, r6
	ldr r6, [r5]
	ldr r5, =0
	sub r8, r5, #70
	mul r5, r6, r8
	add r6, r7, r5
	ldr r5, [fp, #-4]
	mov r7, #2
	mov r8, #20
	mul r7, r7, r8
	add r8, r5, r7
	mov r5, #3
	mov r7, #4
	mul r7, r5, r7
	add r5, r8, r7
	ldr r7, [r5]
	ldr r5, =37
	mul r8, r7, r5
	add r5, r6, r8
	ldr r6, [fp, #-4]
	mov r7, #2
	mov r8, #20
	mul r7, r7, r8
	add r8, r6, r7
	mov r6, #4
	mov r7, #4
	mul r7, r6, r7
	add r6, r8, r7
	ldr r7, [r6]
	ldr r6, =0
	sub r8, r6, #73
	mul r6, r7, r8
	add r7, r5, r6
	ldr r5, [fp, #-4]
	mov r6, #3
	mov r8, #20
	mul r6, r6, r8
	add r8, r5, r6
	mov r5, #0
	mov r6, #4
	mul r6, r5, r6
	add r5, r8, r6
	ldr r6, [r5]
	ldr r5, =0
	sub r8, r5, #34
	mul r5, r6, r8
	add r6, r7, r5
	ldr r5, [fp, #-4]
	mov r7, #3
	mov r8, #20
	mul r7, r7, r8
	add r8, r5, r7
	mov r5, #1
	mov r7, #4
	mul r7, r5, r7
	add r5, r8, r7
	ldr r7, [r5]
	ldr r5, =0
	sub r8, r5, #87
	mul r5, r7, r8
	add r7, r6, r5
	ldr r5, [fp, #-4]
	mov r6, #3
	mov r8, #20
	mul r6, r6, r8
	add r8, r5, r6
	mov r5, #2
	mov r6, #4
	mul r6, r5, r6
	add r5, r8, r6
	ldr r6, [r5]
	ldr r5, =0
	sub r8, r5, #75
	mul r5, r6, r8
	add r6, r7, r5
	ldr r5, [fp, #-4]
	mov r7, #3
	mov r8, #20
	mul r8, r7, r8
	add r7, r5, r8
	mov r5, #3
	mov r8, #4
	mul r8, r5, r8
	add r5, r7, r8
	ldr r7, [r5]
	ldr r5, =71
	mul r8, r7, r5
	add r5, r6, r8
	ldr r6, [fp, #-4]
	mov r7, #3
	b .B5
.LTORG
.B5:
	mov r8, #20
	mul r8, r7, r8
	add r7, r6, r8
	mov r6, #4
	mov r8, #4
	mul r8, r6, r8
	add r6, r7, r8
	ldr r7, [r6]
	ldr r6, =0
	sub r8, r6, #77
	mul r6, r7, r8
	add r7, r5, r6
	ldr r5, [fp, #-4]
	mov r6, #4
	mov r8, #20
	mul r8, r6, r8
	add r6, r5, r8
	mov r5, #0
	mov r8, #4
	mul r8, r5, r8
	add r5, r6, r8
	ldr r6, [r5]
	ldr r5, =53
	mul r8, r6, r5
	add r5, r7, r8
	ldr r6, [fp, #-4]
	mov r7, #4
	mov r8, #20
	mul r8, r7, r8
	add r7, r6, r8
	mov r6, #1
	mov r8, #4
	mul r8, r6, r8
	add r6, r7, r8
	ldr r7, [r6]
	ldr r6, =37
	mul r8, r7, r6
	add r6, r5, r8
	ldr r5, [fp, #-4]
	mov r7, #4
	mov r8, #20
	mul r8, r7, r8
	add r7, r5, r8
	mov r5, #2
	mov r8, #4
	mul r8, r5, r8
	add r5, r7, r8
	ldr r7, [r5]
	ldr r5, =0
	sub r8, r5, #103
	mul r5, r7, r8
	add r7, r6, r5
	ldr r5, [fp, #-4]
	mov r6, #4
	mov r8, #20
	mul r8, r6, r8
	add r6, r5, r8
	mov r5, #3
	mov r8, #4
	mul r5, r5, r8
	add r8, r6, r5
	ldr r5, [r8]
	ldr r6, =0
	sub r8, r6, #13
	mul r6, r5, r8
	add r5, r7, r6
	ldr r6, [fp, #-4]
	mov r7, #4
	mov r8, #20
	mul r8, r7, r8
	add r7, r6, r8
	mov r6, #4
	mov r8, #4
	mul r6, r6, r8
	add r8, r7, r6
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
	mov r6, #0
	mov r7, #20
	mul r7, r6, r7
	add r6, r4, r7
	mov r4, #0
	mov r7, #4
	mul r7, r4, r7
	add r4, r6, r7
	ldr r6, [r4]
	ldr r4, =67
	mul r7, r6, r4
	ldr r4, [fp, #-4]
	mov r6, #0
	mov r8, #20
	mul r6, r6, r8
	add r8, r4, r6
	mov r4, #1
	mov r6, #4
	mul r6, r4, r6
	add r4, r8, r6
	ldr r6, [r4]
	ldr r4, =42
	mul r8, r6, r4
	add r4, r7, r8
	ldr r6, [fp, #-4]
	mov r7, #0
	mov r8, #20
	mul r7, r7, r8
	add r8, r6, r7
	mov r6, #2
	mov r7, #4
	mul r7, r6, r7
	add r6, r8, r7
	ldr r7, [r6]
	ldr r6, =41
	mul r8, r7, r6
	add r6, r4, r8
	ldr r4, [fp, #-4]
	mov r7, #0
	mov r8, #20
	mul r7, r7, r8
	add r8, r4, r7
	mov r4, #3
	mov r7, #4
	mul r7, r4, r7
	add r4, r8, r7
	ldr r7, [r4]
	ldr r4, =0
	sub r8, r4, #123
	mul r4, r7, r8
	add r7, r6, r4
	ldr r4, [fp, #-4]
	mov r6, #0
	mov r8, #20
	mul r6, r6, r8
	add r8, r4, r6
	mov r4, #4
	mov r6, #4
	mul r6, r4, r6
	add r4, r8, r6
	ldr r6, [r4]
	ldr r4, =0
	sub r8, r4, #92
	mul r4, r6, r8
	add r6, r7, r4
	ldr r4, [fp, #-4]
	mov r7, #1
	mov r8, #20
	mul r8, r7, r8
	add r7, r4, r8
	mov r4, #0
	mov r8, #4
	mul r8, r4, r8
	add r4, r7, r8
	ldr r7, [r4]
	ldr r4, =10
	mul r8, r7, r4
	add r4, r6, r8
	ldr r6, [fp, #-4]
	mov r7, #1
	mov r8, #20
	mul r8, r7, r8
	add r7, r6, r8
	mov r6, #1
	mov r8, #4
	mul r8, r6, r8
	add r6, r7, r8
	ldr r7, [r6]
	ldr r6, =0
	sub r8, r6, #77
	mul r6, r7, r8
	add r7, r4, r6
	ldr r4, [fp, #-4]
	mov r6, #1
	mov r8, #20
	mul r6, r6, r8
	add r8, r4, r6
	mov r4, #2
	mov r6, #4
	mul r6, r4, r6
	add r4, r8, r6
	ldr r6, [r4]
	ldr r4, =75
	mul r8, r6, r4
	add r4, r7, r8
	ldr r6, [fp, #-4]
	mov r7, #1
	mov r8, #20
	mul r8, r7, r8
	add r7, r6, r8
	mov r6, #3
	mov r8, #4
	mul r8, r6, r8
	add r6, r7, r8
	ldr r7, [r6]
	ldr r6, =96
	mul r8, r7, r6
	add r6, r4, r8
	ldr r4, [fp, #-4]
	mov r7, #1
	mov r8, #20
	mul r7, r7, r8
	add r8, r4, r7
	mov r4, #4
	mov r7, #4
	mul r7, r4, r7
	add r4, r8, r7
	ldr r7, [r4]
	ldr r4, =0
	sub r8, r4, #51
	mul r4, r7, r8
	add r7, r6, r4
	ldr r4, [fp, #-4]
	mov r6, #2
	mov r8, #20
	mul r6, r6, r8
	add r8, r4, r6
	mov r4, #0
	mov r6, #4
	mul r6, r4, r6
	add r4, r8, r6
	ldr r6, [r4]
	ldr r4, =109
	mul r8, r6, r4
	add r4, r7, r8
	ldr r6, [fp, #-4]
	mov r7, #2
	mov r8, #20
	mul r7, r7, r8
	add r8, r6, r7
	mov r6, #1
	mov r7, #4
	mul r7, r6, r7
	add r6, r8, r7
	ldr r7, [r6]
	ldr r6, =0
	sub r8, r6, #74
	mul r6, r7, r8
	add r7, r4, r6
	ldr r4, [fp, #-4]
	mov r6, #2
	mov r8, #20
	mul r6, r6, r8
	add r8, r4, r6
	mov r4, #2
	mov r6, #4
	mul r6, r4, r6
	add r4, r8, r6
	ldr r6, [r4]
	ldr r4, =0
	sub r8, r4, #7
	mul r4, r6, r8
	add r6, r7, r4
	ldr r4, [fp, #-4]
	mov r7, #2
	mov r8, #20
	mul r8, r7, r8
	add r7, r4, r8
	mov r4, #3
	mov r8, #4
	mul r8, r4, r8
	add r4, r7, r8
	ldr r7, [r4]
	ldr r4, =0
	sub r8, r4, #122
	mul r4, r7, r8
	add r7, r6, r4
	ldr r4, [fp, #-4]
	mov r6, #2
	mov r8, #20
	mul r6, r6, r8
	add r8, r4, r6
	mov r4, #4
	mov r6, #4
	mul r6, r4, r6
	add r4, r8, r6
	ldr r6, [r4]
	ldr r4, =67
	mul r8, r6, r4
	add r4, r7, r8
	ldr r6, [fp, #-4]
	mov r7, #3
	mov r8, #20
	mul r7, r7, r8
	add r8, r6, r7
	mov r6, #0
	mov r7, #4
	mul r7, r6, r7
	add r6, r8, r7
	ldr r7, [r6]
	ldr r6, =47
	mul r8, r7, r6
	add r6, r4, r8
	ldr r4, [fp, #-4]
	mov r7, #3
	mov r8, #20
	mul r8, r7, r8
	add r7, r4, r8
	mov r4, #1
	mov r8, #4
	mul r8, r4, r8
	add r4, r7, r8
	ldr r7, [r4]
	ldr r4, =22
	mul r8, r7, r4
	add r4, r6, r8
	ldr r6, [fp, #-4]
	mov r7, #3
	mov r8, #20
	mul r7, r7, r8
	add r8, r6, r7
	mov r6, #2
	mov r7, #4
	mul r7, r6, r7
	add r6, r8, r7
	ldr r7, [r6]
	ldr r6, =0
	sub r8, r6, #68
	mul r6, r7, r8
	add r7, r4, r6
	ldr r4, [fp, #-4]
	mov r6, #3
	mov r8, #20
	mul r6, r6, r8
	add r8, r4, r6
	mov r4, #3
	mov r6, #4
	mul r6, r4, r6
	add r4, r8, r6
	ldr r6, [r4]
	ldr r4, =38
	mul r8, r6, r4
	add r4, r7, r8
	ldr r6, [fp, #-4]
	mov r7, #3
	mov r8, #20
	mul r7, r7, r8
	add r8, r6, r7
	mov r6, #4
	mov r7, #4
	mul r7, r6, r7
	add r6, r8, r7
	ldr r7, [r6]
	ldr r6, =29
	mul r8, r7, r6
	add r6, r4, r8
	ldr r4, [fp, #-4]
	mov r7, #4
	mov r8, #20
	mul r7, r7, r8
	add r8, r4, r7
	mov r4, #0
	mov r7, #4
	mul r7, r4, r7
	add r4, r8, r7
	ldr r7, [r4]
	ldr r4, =115
	mul r8, r7, r4
	add r4, r6, r8
	ldr r6, [fp, #-4]
	mov r7, #4
	mov r8, #20
	mul r7, r7, r8
	add r8, r6, r7
	mov r6, #1
	mov r7, #4
	mul r7, r6, r7
	add r6, r8, r7
	ldr r7, [r6]
	ldr r6, =0
	sub r8, r6, #121
	mul r6, r7, r8
	add r7, r4, r6
	ldr r4, [fp, #-4]
	mov r6, #4
	mov r8, #20
	mul r6, r6, r8
	add r8, r4, r6
	mov r4, #2
	mov r6, #4
	mul r6, r4, r6
	add r4, r8, r6
	ldr r6, [r4]
	ldr r4, =36
	mul r8, r6, r4
	add r4, r7, r8
	ldr r6, [fp, #-4]
	mov r7, #4
	mov r8, #20
	mul r7, r7, r8
	add r8, r6, r7
	mov r6, #3
	mov r7, #4
	mul r7, r6, r7
	add r6, r8, r7
	ldr r7, [r6]
	ldr r6, =0
	sub r8, r6, #49
	mul r6, r7, r8
	add r7, r4, r6
	ldr r4, [fp, #-4]
	mov r6, #4
	mov r8, #20
	mul r6, r6, r8
	add r8, r4, r6
	mov r4, #4
	mov r6, #4
	mul r6, r4, r6
	add r4, r8, r6
	ldr r6, [r4]
	ldr r4, =85
	mul r8, r6, r4
	add r4, r7, r8
	mov r0, r4
	bl relu_reg
	mov r4, r0
	ldr r6, =46
	mul r7, r4, r6
	add r4, r5, r7
	cmp r4, #0
	movgt r6, #1
	movle r6, #0
	bgt .L950
	b .L1704
	b .F6
.LTORG
.F6:
.L950:
	mov r0, #1
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L951:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L1702:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L1703:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L1704:
	b .L951
.L1705:
	b .L951
.L1706:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #112
.L1707:
	bl getint
	mov r10, r0
	str r10, [fp, #-112]
	b .L1710
.L1710:
	ldr r9, [fp, #-112]
	cmp r9, #0
	movgt r8, #1
	movle r8, #0
	bgt .L1711
	b .L1715
.L1711:
	ldr r7, =0
	str r7, [fp, #-8]
	b .L1717
.L1712:
	mov r0, #0
	add sp, sp, #112
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L1713:
	add sp, sp, #112
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L1714:
	add sp, sp, #112
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L1715:
	b .L1712
.L1717:
	ldr r6, [fp, #-8]
	cmp r6, #5
	movlt r5, #1
	movge r5, #0
	blt .L1718
	b .L1722
.L1718:
	ldr r4, =0
	str r4, [fp, #-4]
	b .L1724
.L1719:
	mov r10, #0
	mov r4, #20
	mul r5, r10, r4
	mov r4, #-108
	add r4, r4, r5
	add r6, fp, r4
	mov r0, r6
	bl model
	mov r5, r0
	cmp r5, #0
	bne .L1731
	b .L1735
.L1720:
	add sp, sp, #112
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L1721:
	add sp, sp, #112
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L1722:
	b .L1719
.L1724:
	ldr r7, [fp, #-4]
	cmp r7, #5
	movlt r8, #1
	movge r8, #0
	blt .L1725
	b .L1729
.L1725:
	bl getint
	mov r9, r0
	ldr r4, [fp, #-8]
	mov r5, #20
	mul r4, r4, r5
	mov r5, #-108
	add r5, r5, r4
	add r4, fp, r5
	ldr r5, [fp, #-4]
	mov r6, #4
	mul r6, r5, r6
	add r5, r4, r6
	str r9, [r5]
	ldr r7, [fp, #-4]
	add r4, r7, #1
	str r4, [fp, #-4]
	b .L1724
.L1726:
	ldr r5, [fp, #-8]
	add r4, r5, #1
	str r4, [fp, #-8]
	b .L1717
.L1727:
	add sp, sp, #112
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L1728:
	add sp, sp, #112
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L1729:
	b .L1726
.L1731:
	mov r0, #99
	bl putch
	mov r0, #97
	bl putch
	mov r0, #116
	bl putch
	mov r0, #10
	bl putch
	b .L1733
.L1732:
	mov r0, #100
	bl putch
	mov r0, #111
	bl putch
	mov r0, #103
	bl putch
	mov r0, #10
	bl putch
	b .L1733
.L1733:
	ldr r6, [fp, #-112]
	sub r4, r6, #1
	str r4, [fp, #-112]
	b .L1710
.L1734:
	add sp, sp, #112
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L1735:
	b .L1732
.L1736:
	add sp, sp, #112
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L1737:
	add sp, sp, #112
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

