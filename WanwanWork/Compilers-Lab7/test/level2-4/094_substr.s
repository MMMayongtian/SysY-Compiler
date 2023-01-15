	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global MAX
	.type MAX , %function
MAX:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L111:
	str r0, [fp, #-8]
	str r1, [fp, #-4]
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-4]
	cmp r4, r5
	moveq r6, #1
	movne r6, #0
	beq .L114
	b .L119
.L114:
	ldr r7, [fp, #-8]
	mov r0, r7
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L115:
	ldr r8, [fp, #-8]
	ldr r4, [fp, #-4]
	cmp r8, r4
	movgt r5, #1
	movle r5, #0
	bgt .L121
	b .L126
.L116:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L117:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L118:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L119:
	b .L115
.L120:
	b .L116
.L121:
	ldr r6, [fp, #-8]
	mov r0, r6
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L122:
	ldr r7, [fp, #-4]
	mov r0, r7
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L123:
	b .L116
.L124:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L125:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
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
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #76
.L129:
	str r0, [fp, #-76]
	str r1, [fp, #-72]
	mov r4, #0
	mov r5, #4
	mul r6, r4, r5
	mov r4, #-68
	add r5, r4, r6
	add r4, fp, r5
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
	ldr r4, =0
	add r5, r4, #0
	mov r4, #4
	mul r5, r5, r4
	add r4, r6, r5
	ldr r5, [r4]
	ldr r4, =0
	add r6, r4, #0
	mov r4, #4
	mul r4, r6, r4
	mov r6, #-68
	add r6, r6, r4
	add r4, fp, r6
	str r5, [r4]
	ldr r7, [fp, #-76]
	ldr r4, =0
	add r5, r4, #0
	mov r4, #4
	mul r5, r5, r4
	add r4, r7, r5
	ldr r5, [r4]
	ldr r4, [fp, #-76]
	ldr r6, =0
	add r7, r6, #1
	mov r6, #4
	mul r6, r7, r6
	add r7, r4, r6
	ldr r4, [r7]
	mov r0, r5
	mov r1, r4
	bl MAX
	mov r6, r0
	ldr r4, =0
	add r5, r4, #1
	mov r4, #4
	mul r4, r5, r4
	mov r5, #-68
	add r5, r5, r4
	add r4, fp, r5
	str r6, [r4]
	ldr r7, =2
	str r7, [fp, #-4]
	b .L151
.L151:
	ldr r8, [fp, #-4]
	ldr r4, [fp, #-72]
	cmp r8, r4
	movlt r5, #1
	movge r5, #0
	blt .L152
	b .L156
.L152:
	ldr r6, [fp, #-4]
	sub r4, r6, #2
	ldr r5, =0
	add r6, r5, r4
	mov r4, #4
	mul r5, r6, r4
	mov r4, #-68
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, [r6]
	ldr r5, [fp, #-76]
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, r6
	mov r6, #4
	mul r7, r8, r6
	add r6, r5, r7
	ldr r5, [r6]
	add r6, r4, r5
	ldr r4, [fp, #-4]
	sub r5, r4, #1
	ldr r4, =0
	add r7, r4, r5
	mov r4, #4
	mul r4, r7, r4
	mov r5, #-68
	add r5, r5, r4
	add r4, fp, r5
	ldr r5, [r4]
	mov r0, r6
	mov r1, r5
	bl MAX
	mov r7, r0
	ldr r4, [fp, #-4]
	ldr r5, =0
	add r6, r5, r4
	mov r4, #4
	mul r4, r6, r4
	mov r5, #-68
	add r5, r5, r4
	add r4, fp, r5
	str r7, [r4]
	ldr r6, [fp, #-4]
	add r4, r6, #1
	str r4, [fp, #-4]
	b .L151
	b .F0
.LTORG
.F0:
.L153:
	ldr r5, [fp, #-72]
	sub r4, r5, #1
	ldr r5, =0
	add r6, r5, r4
	mov r4, #4
	mul r5, r6, r4
	mov r4, #-68
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, [r6]
	mov r0, r4
	add sp, sp, #76
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L154:
	add sp, sp, #76
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L155:
	add sp, sp, #76
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L156:
	b .L153
.L169:
	add sp, sp, #76
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr

	.global longest_common_subseq
	.type longest_common_subseq , %function
longest_common_subseq:
	push {r4, r5, r6, r7, r8, r9, fp, lr}
	mov fp, sp
	ldr r4, =1048
	sub sp, sp, r4
.L173:
	ldr r4, =-1048
	str r0, [fp, r4]
	ldr r5, =-1044
	str r1, [fp, r5]
	ldr r6, =-1040
	str r2, [fp, r6]
	ldr r7, =-1036
	str r3, [fp, r7]
	mov r8, #0
	mov r4, #4
	mul r5, r8, r4
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
	b .B0
.LTORG
.B0:
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
	b .B1
.LTORG
.B1:
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
	b .L182
	b .F3
.LTORG
.F3:
.L182:
	ldr r7, [fp, #-8]
	ldr r5, =-1044
	ldr r4, [fp, r5]
	cmp r7, r4
	movle r6, #1
	movgt r6, #0
	ble .L183
	b .L187
.L183:
	ldr r8, =1
	str r8, [fp, #-4]
	b .L188
.L184:
	ldr r4, =-1044
	ldr r9, [fp, r4]
	ldr r4, =0
	add r5, r4, r9
	add r4, r5, r9
	add r5, r4, r9
	add r4, r5, r9
	add r5, r4, r9
	add r4, r5, r9
	add r5, r4, r9
	add r4, r5, r9
	add r5, r4, r9
	add r4, r5, r9
	add r5, r4, r9
	add r4, r5, r9
	add r5, r4, r9
	add r4, r5, r9
	add r5, r4, r9
	add r4, r5, r9
	ldr r5, =-1044
	ldr r5, [fp, r5]
	add r5, r4, v100
	mov r4, #4
	mul r6, r5, r4
	ldr r4, =-1032
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, [r5]
	mov r0, r4
	ldr r1, =1048
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L185:
	ldr r1, =1048
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L186:
	ldr r1, =1048
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L187:
	b .L184
.L188:
	ldr r6, [fp, #-4]
	ldr r5, =-1036
	ldr r4, [fp, r5]
	cmp r6, r4
	movle r7, #1
	movgt r7, #0
	ble .L189
	b .L193
.L189:
	ldr r4, =-1048
	ldr r8, [fp, r4]
	ldr r4, [fp, #-8]
	sub r5, r4, #1
	ldr r4, =0
	add r6, r4, r5
	mov r4, #4
	mul r5, r6, r4
	add r4, r8, r5
	ldr r5, [r4]
	ldr r6, =-1040
	ldr r4, [fp, r6]
	ldr r6, [fp, #-4]
	sub r7, r6, #1
	ldr r6, =0
	add r8, r6, r7
	mov r6, #4
	mul r6, r8, r6
	add r7, r4, r6
	ldr r4, [r7]
	cmp r5, r4
	moveq r6, #1
	movne r6, #0
	beq .L194
	b .L207
.L190:
	ldr r8, [fp, #-8]
	add r4, r8, #1
	str r4, [fp, #-8]
	b .L182
.L191:
	ldr r1, =1048
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L192:
	ldr r1, =1048
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L193:
	b .L190
.L194:
	ldr r5, [fp, #-8]
	sub r4, r5, #1
	ldr r5, =0
	add r6, r5, r4
	add r5, r6, r4
	add r6, r5, r4
	add r5, r6, r4
	add r6, r5, r4
	add r5, r6, r4
	add r6, r5, r4
	add r5, r6, r4
	add r6, r5, r4
	add r5, r6, r4
	add r6, r5, r4
	add r5, r6, r4
	add r6, r5, r4
	add r5, r6, r4
	add r6, r5, r4
	add r5, r6, r4
	ldr r4, [fp, #-8]
	sub r6, r4, #1
	add r4, r5, v78
	mov r5, #4
	mul r6, r4, r5
	ldr r4, =-1032
	add r5, r4, r6
	add r4, fp, r5
	ldr r5, [r4]
	add r4, r5, #1
	ldr r5, [fp, #-8]
	ldr r6, =0
	add r7, r6, r5
	add r6, r7, r5
	add r7, r6, r5
	add r6, r7, r5
	add r7, r6, r5
	add r6, r7, r5
	add r7, r6, r5
	add r6, r7, r5
	add r7, r6, r5
	add r6, r7, r5
	add r7, r6, r5
	add r6, r7, r5
	add r7, r6, r5
	add r6, r7, r5
	add r7, r6, r5
	add r6, r7, r5
	ldr r5, [fp, #-8]
	add r5, r6, v73
	mov r6, #4
	mul r5, r5, r6
	ldr r6, =-1032
	add r6, r6, r5
	add r5, fp, r6
	str r4, [r5]
	b .L196
	b .F4
.LTORG
.F4:
.L195:
	ldr r7, [fp, #-8]
	sub r4, r7, #1
	ldr r5, =0
	add r6, r5, r4
	add r5, r6, r4
	add r6, r5, r4
	add r5, r6, r4
	add r6, r5, r4
	add r5, r6, r4
	add r6, r5, r4
	add r5, r6, r4
	add r6, r5, r4
	add r5, r6, r4
	add r6, r5, r4
	add r5, r6, r4
	add r6, r5, r4
	add r5, r6, r4
	add r6, r5, r4
	add r5, r6, r4
	ldr r4, [fp, #-8]
	sub r6, r4, #1
	add r4, r5, v86
	mov r5, #4
	mul r6, r4, r5
	ldr r4, =-1032
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, [r5]
	ldr r5, [fp, #-8]
	ldr r6, =0
	add r7, r6, r5
	add r6, r7, r5
	add r7, r6, r5
	add r6, r7, r5
	add r7, r6, r5
	add r6, r7, r5
	add r7, r6, r5
	add r6, r7, r5
	add r7, r6, r5
	add r6, r7, r5
	add r7, r6, r5
	add r6, r7, r5
	add r7, r6, r5
	add r6, r7, r5
	add r7, r6, r5
	add r6, r7, r5
	ldr r5, [fp, #-8]
	add r5, r6, v90
	mov r6, #4
	mul r6, r5, r6
	ldr r5, =-1032
	add r6, r5, r6
	add r5, fp, r6
	ldr r6, [r5]
	mov r0, r4
	mov r1, r6
	bl MAX
	mov r7, r0
	ldr r4, [fp, #-8]
	ldr r5, =0
	add r6, r5, r4
	add r5, r6, r4
	add r6, r5, r4
	add r5, r6, r4
	add r6, r5, r4
	add r5, r6, r4
	add r6, r5, r4
	add r5, r6, r4
	add r6, r5, r4
	add r5, r6, r4
	add r6, r5, r4
	add r5, r6, r4
	add r6, r5, r4
	add r5, r6, r4
	add r6, r5, r4
	add r5, r6, r4
	ldr r4, [fp, #-8]
	add r4, r5, v82
	mov r5, #4
	mul r4, r4, r5
	ldr r5, =-1032
	add r5, r5, r4
	add r4, fp, r5
	str r7, [r4]
	b .L196
.L196:
	ldr r6, [fp, #-4]
	add r4, r6, #1
	str r4, [fp, #-4]
	b .L188
.L205:
	ldr r1, =1048
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L206:
	ldr r1, =1048
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L207:
	b .L195
.L221:
	ldr r1, =1048
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #120
.L225:
	mov r4, #0
	mov r5, #4
	mul r4, r4, r5
	mov r6, #-120
	add r5, r6, r4
	add r4, fp, r5
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
	ldr r8, =0
	mov r0, r8
	add sp, sp, #120
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
	b .F5
.LTORG
.F5:
.L232:
	add sp, sp, #120
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr

