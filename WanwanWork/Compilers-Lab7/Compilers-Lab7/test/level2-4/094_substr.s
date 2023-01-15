	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global MAX
	.type MAX , %function
MAX:
	push {r4, r5, r6, r7, r8, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L111:
	str r0, [fp, #-8]
	str r1, [fp, #-4]
	ldr r10, [fp, #-8]
	ldr r4, [fp, #-4]
	cmp r10, r4
	beq .L114
	b .L119
.L114:
	ldr r5, [fp, #-8]
	mov r0, r5
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L115:
	ldr r6, [fp, #-8]
	ldr r4, [fp, #-4]
	cmp r6, r4
	movgt r5, #1
	movle r5, #0
	bgt .L121
	b .L126
.L116:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L117:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L118:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L119:
	b .L115
.L120:
	b .L116
.L121:
	ldr r7, [fp, #-8]
	mov r0, r7
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L122:
	ldr r8, [fp, #-4]
	mov r0, r8
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L123:
	b .L116
.L124:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L125:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L126:
	b .L122
.L127:
	b .L123
.L128:
	b .L123

	.global max_sum_nonadjacent
	.type max_sum_nonadjacent , %function
max_sum_nonadjacent:
	push {r4, r5, r6, r7, r8, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #76
.L129:
	str r0, [fp, #-76]
	str r1, [fp, #-72]
	mov r10, #0
	mov r4, #4
	mul r5, r10, r4
	mov r4, #-68
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
	ldr r6, [fp, #-76]
	mov r4, #0
	mov r5, #4
	mul r5, r4, r5
	add r4, r6, r5
	ldr r5, [r4]
	mov r4, #0
	mov r6, #4
	mul r4, r4, r6
	mov r6, #-68
	add r6, r6, r4
	add r4, fp, r6
	str r5, [r4]
	ldr r7, [fp, #-76]
	mov r4, #0
	mov r5, #4
	mul r5, r4, r5
	add r4, r7, r5
	ldr r5, [r4]
	ldr r4, [fp, #-76]
	mov r6, #1
	mov r7, #4
	mul r7, r6, r7
	add r6, r4, r7
	ldr r4, [r6]
	mov r0, r5
	mov r1, r4
	bl MAX
	mov r7, r0
	mov r4, #1
	mov r5, #4
	mul r4, r4, r5
	mov r5, #-68
	add r5, r5, r4
	add r4, fp, r5
	str r7, [r4]
	ldr r6, =2
	str r6, [fp, #-4]
	b .L141
.L141:
	ldr r8, [fp, #-4]
	ldr r4, [fp, #-72]
	cmp r8, r4
	movlt r5, #1
	movge r5, #0
	blt .L142
	b .L146
.L142:
	ldr r6, [fp, #-4]
	sub r4, r6, #2
	mov r5, #4
	mul r6, r4, r5
	mov r4, #-68
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, [r5]
	ldr r5, [fp, #-76]
	ldr r6, [fp, #-4]
	mov r7, #4
	mul r7, r6, r7
	add r6, r5, r7
	ldr r5, [r6]
	add r6, r4, r5
	ldr r4, [fp, #-4]
	sub r5, r4, #1
	mov r4, #4
	mul r4, r5, r4
	mov r5, #-68
	add r5, r5, r4
	add r4, fp, r5
	ldr r5, [r4]
	mov r0, r6
	mov r1, r5
	bl MAX
	mov r7, r0
	ldr r4, [fp, #-4]
	mov r5, #4
	mul r4, r4, r5
	mov r5, #-68
	add r5, r5, r4
	add r4, fp, r5
	str r7, [r4]
	ldr r6, [fp, #-4]
	add r4, r6, #1
	str r4, [fp, #-4]
	b .L141
.L143:
	ldr r5, [fp, #-72]
	sub r4, r5, #1
	mov r5, #4
	mul r6, r4, r5
	mov r4, #-68
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, [r5]
	mov r0, r4
	add sp, sp, #76
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L144:
	add sp, sp, #76
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L145:
	add sp, sp, #76
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L146:
	b .L143
.L151:
	add sp, sp, #76
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr

	.global longest_common_subseq
	.type longest_common_subseq , %function
longest_common_subseq:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	ldr r4, =1048
	sub sp, sp, r4
.L153:
	ldr r10, =-1048
	str r0, [fp, r10]
	ldr r9, =-1044
	str r1, [fp, r9]
	ldr r8, =-1040
	str r2, [fp, r8]
	ldr r7, =-1036
	str r3, [fp, r7]
	mov r6, #0
	mov r4, #64
	mul r5, r6, r4
	ldr r4, =-1032
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, =0
	str r4, [r6]
	add r4, r6, #4
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
	b .B0
.LTORG
.B0:
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
	str r6, [fp, #-8]
	b .L162
	b .F1
.LTORG
.F1:
.L162:
	ldr r7, [fp, #-8]
	ldr r5, =-1044
	ldr r4, [fp, r5]
	cmp r7, r4
	movle r6, #1
	movgt r6, #0
	ble .L163
	b .L167
.L163:
	ldr r8, =1
	str r8, [fp, #-4]
	b .L168
.L164:
	ldr r4, =-1044
	ldr r9, [fp, r4]
	mov r4, #64
	mul r5, r9, r4
	ldr r4, =-1032
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, =-1036
	ldr r5, [fp, r4]
	mov r4, #4
	mul r5, r5, r4
	add r4, r6, r5
	ldr r5, [r4]
	mov r0, r5
	ldr r1, =1048
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L165:
	ldr r1, =1048
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L166:
	ldr r1, =1048
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L167:
	b .L164
.L168:
	ldr r6, [fp, #-4]
	ldr r5, =-1036
	ldr r4, [fp, r5]
	cmp r6, r4
	movle r7, #1
	movgt r7, #0
	ble .L169
	b .L173
.L169:
	ldr r8, =-1048
	ldr r4, [fp, r8]
	ldr r5, [fp, #-8]
	sub r6, r5, #1
	mov r5, #4
	mul r6, r6, r5
	add r5, r4, r6
	ldr r4, [r5]
	ldr r6, =-1040
	ldr r5, [fp, r6]
	ldr r6, [fp, #-4]
	sub r7, r6, #1
	mov r6, #4
	mul r7, r7, r6
	add r6, r5, r7
	ldr r5, [r6]
	cmp r4, r5
	beq .L174
	b .L183
.L170:
	ldr r7, [fp, #-8]
	add r4, r7, #1
	str r4, [fp, #-8]
	b .L162
.L171:
	ldr r1, =1048
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L172:
	ldr r1, =1048
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L173:
	b .L170
.L174:
	ldr r5, [fp, #-8]
	sub r4, r5, #1
	mov r5, #64
	mul r6, r4, r5
	ldr r4, =-1032
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, [fp, #-4]
	sub r6, r4, #1
	mov r4, #4
	mul r6, r6, r4
	add r4, r5, r6
	ldr r5, [r4]
	add r4, r5, #1
	ldr r5, [fp, #-8]
	mov r6, #64
	mul r5, r5, r6
	ldr r6, =-1032
	add r6, r6, r5
	add r5, fp, r6
	ldr r6, [fp, #-4]
	mov r7, #4
	mul r7, r6, r7
	add r6, r5, r7
	str r4, [r6]
	b .L176
.L175:
	ldr r8, [fp, #-8]
	sub r4, r8, #1
	mov r5, #64
	mul r6, r4, r5
	ldr r4, =-1032
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, [fp, #-4]
	mov r6, #4
	mul r4, r4, r6
	add r6, r5, r4
	ldr r4, [r6]
	ldr r5, [fp, #-8]
	mov r6, #64
	mul r5, r5, r6
	ldr r6, =-1032
	add r6, r6, r5
	add r5, fp, r6
	ldr r6, [fp, #-4]
	sub r7, r6, #1
	mov r6, #4
	mul r7, r7, r6
	add r6, r5, r7
	ldr r5, [r6]
	mov r0, r4
	mov r1, r5
	bl MAX
	mov r7, r0
	ldr r4, [fp, #-8]
	mov r5, #64
	mul r4, r4, r5
	ldr r5, =-1032
	add r5, r5, r4
	add r4, fp, r5
	ldr r5, [fp, #-4]
	mov r6, #4
	mul r6, r5, r6
	add r5, r4, r6
	str r7, [r5]
	b .L176
.L176:
	ldr r8, [fp, #-4]
	add r4, r8, #1
	str r4, [fp, #-4]
	b .L168
.L181:
	ldr r1, =1048
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L182:
	ldr r1, =1048
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L183:
	b .L175
.L192:
	ldr r1, =1048
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #120
.L195:
	mov r10, #0
	mov r4, #4
	mul r4, r10, r4
	mov r5, #-120
	add r6, r5, r4
	add r4, fp, r6
	ldr r5, =8
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =7
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =4
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =1
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =2
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =7
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =1
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =9
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =3
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =4
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =8
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =3
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =7
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	mov r6, #0
	mov r4, #4
	mul r5, r6, r4
	mov r4, #-60
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, =3
	str r4, [r6]
	add r4, r6, #4
	ldr r5, =9
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =7
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =1
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =4
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =2
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =4
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =3
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =6
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =8
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =1
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =5
	str r4, [r5]
	mov r6, #0
	mov r4, #4
	mul r5, r6, r4
	mov r4, #-120
	add r6, r4, r5
	add r4, fp, r6
	mov r0, r4
	mov r1, #15
	bl max_sum_nonadjacent
	mov r5, r0
	mov r0, r5
	bl putint
	mov r0, #10
	bl putch
	mov r7, #0
	mov r4, #4
	mul r5, r7, r4
	mov r4, #-120
	add r4, r4, r5
	add r6, fp, r4
	mov r4, #0
	mov r5, #4
	mul r4, r4, r5
	mov r5, #-60
	add r5, r5, r4
	add r4, fp, r5
	mov r0, r6
	mov r1, #15
	mov r2, r4
	mov r3, #13
	bl longest_common_subseq
	mov r7, r0
	mov r0, r7
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	add sp, sp, #120
	pop {r4, r5, r6, r7, r10, fp, lr}
	bx lr
.L202:
	add sp, sp, #120
	pop {r4, r5, r6, r7, r10, fp, lr}
	bx lr

