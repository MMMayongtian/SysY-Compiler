	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global buf
	.align 4
	.size buf, 800
buf:
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.text
	.global merge_sort
	.type merge_sort , %function
merge_sort:
	push {r4, r5, r6, r7, r8, r9, fp, lr}
	mov fp, sp
	sub sp, sp, #24
.L95:
	str r0, [fp, #-24]
	str r1, [fp, #-20]
	ldr r4, [fp, #-24]
	add r5, r4, #1
	ldr r4, [fp, #-20]
	cmp r5, r4
	movge r6, #1
	movlt r6, #0
	bge .L98
	b .L102
.L98:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L99:
	ldr r7, [fp, #-24]
	ldr r4, [fp, #-20]
	add r5, r7, r4
	ldr r4, =2
	sdiv r6, r5, r4
	str r6, [fp, #-16]
	ldr r7, [fp, #-24]
	ldr r4, [fp, #-16]
	mov r0, r7
	mov r1, r4
	bl merge_sort
	ldr r5, [fp, #-16]
	ldr r4, [fp, #-20]
	mov r0, r5
	mov r1, r4
	bl merge_sort
	ldr r6, [fp, #-24]
	str r6, [fp, #-12]
	ldr r7, [fp, #-16]
	str r7, [fp, #-8]
	ldr r8, [fp, #-24]
	str r8, [fp, #-4]
	b .L108
.L100:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L101:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L102:
	b .L99
.L103:
	b .L99
.L108:
	ldr r9, [fp, #-12]
	ldr r4, [fp, #-16]
	cmp r9, r4
	movlt r5, #1
	movge r5, #0
	blt .L111
	b .L114
.L109:
	ldr r6, =0
	add r4, r6, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, v31
	mov r5, #4
	mul r4, r4, r5
	ldr r5, addr_buf0
	add r6, r5, r4
	ldr r4, [r6]
	ldr r5, =0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, v33
	mov r5, #4
	mul r6, r6, r5
	ldr r7, addr_buf0
	add r5, r7, r6
	ldr r6, [r5]
	cmp r4, r6
	movlt r7, #1
	movge r7, #0
	blt .L118
	b .L129
	b .F0
.LTORG
addr_buf0:
	.word buf
.F0:
.L110:
	b .L140
.L111:
	ldr r8, [fp, #-8]
	ldr r4, [fp, #-20]
	cmp r8, r4
	movlt r5, #1
	movge r5, #0
	blt .L109
	b .L117
.L112:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L113:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L114:
	b .L110
.L115:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L116:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L117:
	b .L110
.L118:
	ldr r6, =0
	add r4, r6, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, v38
	mov r5, #4
	mul r5, r4, r5
	ldr r4, addr_buf1
	add r6, r4, r5
	ldr r4, [r6]
	ldr r5, =0
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, v36
	mov r5, #4
	mul r6, r6, r5
	ldr r7, addr_buf1
	add r5, r7, r6
	str r4, [r5]
	ldr r8, [fp, #-12]
	add r4, r8, #1
	str r4, [fp, #-12]
	b .L120
	b .F1
.LTORG
addr_buf1:
	.word buf
.F1:
.L119:
	ldr r5, =0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, v45
	mov r5, #4
	mul r5, r4, r5
	ldr r4, addr_buf2
	add r6, r4, r5
	ldr r4, [r6]
	ldr r5, =0
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, v43
	mov r5, #4
	mul r6, r6, r5
	ldr r5, addr_buf2
	add r7, r5, r6
	str r4, [r7]
	ldr r8, [fp, #-8]
	add r4, r8, #1
	str r4, [fp, #-8]
	b .L120
	b .F2
.LTORG
addr_buf2:
	.word buf
.F2:
.L120:
	ldr r5, [fp, #-4]
	add r4, r5, #1
	str r4, [fp, #-4]
	b .L108
.L127:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L128:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L129:
	b .L119
.L140:
	ldr r6, [fp, #-12]
	ldr r4, [fp, #-16]
	cmp r6, r4
	movlt r5, #1
	movge r5, #0
	blt .L141
	b .L145
.L141:
	ldr r7, =0
	add r4, r7, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, v58
	mov r5, #4
	mul r4, r4, r5
	ldr r5, addr_buf3
	add r6, r5, r4
	ldr r4, [r6]
	ldr r5, =0
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, #1
	add r5, r6, #1
	add r6, r5, v56
	mov r5, #4
	mul r6, r6, r5
	ldr r7, addr_buf3
	add r5, r7, r6
	str r4, [r5]
	ldr r8, [fp, #-12]
	add r4, r8, #1
	str r4, [fp, #-12]
	ldr r5, [fp, #-4]
	add r4, r5, #1
	str r4, [fp, #-4]
	b .L140
	b .F3
.LTORG
addr_buf3:
	.word buf
.F3:
.L142:
	b .L151
.L143:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L144:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L145:
	b .L142
.L151:
	ldr r6, [fp, #-8]
	ldr r4, [fp, #-20]
	cmp r6, r4
	movlt r5, #1
	movge r5, #0
	blt .L152
	b .L156
.L152:
	ldr r7, =0
	add r4, r7, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, v71
	mov r5, #4
	mul r6, r4, r5
	ldr r5, addr_buf4
	add r4, r5, r6
	ldr r5, [r4]
	ldr r4, =0
	add r6, r4, #1
	add r4, r6, #1
	add r6, r4, #1
	add r4, r6, #1
	add r6, r4, #1
	add r4, r6, #1
	add r6, r4, #1
	add r4, r6, #1
	add r6, r4, #1
	add r4, r6, #1
	add r6, r4, #1
	add r4, r6, #1
	add r6, r4, #1
	add r4, r6, #1
	add r6, r4, #1
	add r4, r6, #1
	add r6, r4, #1
	add r4, r6, #1
	add r6, r4, #1
	add r4, r6, #1
	add r6, r4, #1
	add r4, r6, #1
	add r6, r4, #1
	add r4, r6, #1
	add r6, r4, #1
	add r4, r6, #1
	add r6, r4, #1
	add r4, r6, #1
	add r6, r4, #1
	add r4, r6, #1
	add r6, r4, #1
	add r4, r6, #1
	add r6, r4, #1
	add r4, r6, #1
	add r6, r4, #1
	add r4, r6, #1
	add r6, r4, #1
	add r4, r6, #1
	add r6, r4, #1
	add r4, r6, #1
	add r6, r4, #1
	add r4, r6, #1
	add r6, r4, #1
	add r4, r6, #1
	add r6, r4, #1
	add r4, r6, #1
	add r6, r4, #1
	add r4, r6, #1
	add r6, r4, #1
	add r4, r6, #1
	add r6, r4, #1
	add r4, r6, #1
	add r6, r4, #1
	add r4, r6, #1
	add r6, r4, #1
	add r4, r6, #1
	add r6, r4, #1
	add r4, r6, #1
	add r6, r4, #1
	add r4, r6, #1
	add r6, r4, #1
	add r4, r6, #1
	add r6, r4, #1
	add r4, r6, #1
	add r6, r4, #1
	add r4, r6, #1
	add r6, r4, #1
	add r4, r6, #1
	add r6, r4, #1
	add r4, r6, #1
	add r6, r4, #1
	add r4, r6, #1
	add r6, r4, #1
	add r4, r6, #1
	add r6, r4, #1
	add r4, r6, #1
	add r6, r4, #1
	add r4, r6, #1
	add r6, r4, #1
	add r4, r6, #1
	add r6, r4, #1
	add r4, r6, #1
	add r6, r4, #1
	add r4, r6, #1
	add r6, r4, #1
	add r4, r6, #1
	add r6, r4, #1
	add r4, r6, #1
	add r6, r4, #1
	add r4, r6, #1
	add r6, r4, #1
	add r4, r6, #1
	add r6, r4, #1
	add r4, r6, #1
	add r6, r4, #1
	add r4, r6, #1
	add r6, r4, #1
	add r4, r6, #1
	add r6, r4, #1
	add r4, r6, #1
	add r6, r4, v69
	mov r4, #4
	mul r4, r6, r4
	ldr r6, addr_buf4
	add r7, r6, r4
	str r5, [r7]
	ldr r8, [fp, #-8]
	add r4, r8, #1
	str r4, [fp, #-8]
	ldr r5, [fp, #-4]
	add r4, r5, #1
	str r4, [fp, #-4]
	b .L151
	b .F4
.LTORG
addr_buf4:
	.word buf
.F4:
.L153:
	b .L162
.L154:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L155:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L156:
	b .L153
.L162:
	ldr r6, [fp, #-24]
	ldr r4, [fp, #-20]
	cmp r6, r4
	movlt r5, #1
	movge r5, #0
	blt .L163
	b .L167
.L163:
	ldr r7, =0
	add r4, r7, #1
	add r5, r4, #1
	add r4, r5, #1
	add r5, r4, #1
	add r4, r5, #1
	add r5, r4, #1
	add r4, r5, #1
	add r5, r4, #1
	add r4, r5, #1
	add r5, r4, #1
	add r4, r5, #1
	add r5, r4, #1
	add r4, r5, #1
	add r5, r4, #1
	add r4, r5, #1
	add r5, r4, #1
	add r4, r5, #1
	add r5, r4, #1
	add r4, r5, #1
	add r5, r4, #1
	add r4, r5, #1
	add r5, r4, #1
	add r4, r5, #1
	add r5, r4, #1
	add r4, r5, #1
	add r5, r4, #1
	add r4, r5, #1
	add r5, r4, #1
	add r4, r5, #1
	add r5, r4, #1
	add r4, r5, #1
	add r5, r4, #1
	add r4, r5, #1
	add r5, r4, #1
	add r4, r5, #1
	add r5, r4, #1
	add r4, r5, #1
	add r5, r4, #1
	add r4, r5, #1
	add r5, r4, #1
	add r4, r5, #1
	add r5, r4, #1
	add r4, r5, #1
	add r5, r4, #1
	add r4, r5, #1
	add r5, r4, #1
	add r4, r5, #1
	add r5, r4, #1
	add r4, r5, #1
	add r5, r4, #1
	add r4, r5, #1
	add r5, r4, #1
	add r4, r5, #1
	add r5, r4, #1
	add r4, r5, #1
	add r5, r4, #1
	add r4, r5, #1
	add r5, r4, #1
	add r4, r5, #1
	add r5, r4, #1
	add r4, r5, #1
	add r5, r4, #1
	add r4, r5, #1
	add r5, r4, #1
	add r4, r5, #1
	add r5, r4, #1
	add r4, r5, #1
	add r5, r4, #1
	add r4, r5, #1
	add r5, r4, #1
	add r4, r5, #1
	add r5, r4, #1
	add r4, r5, #1
	add r5, r4, #1
	add r4, r5, #1
	add r5, r4, #1
	add r4, r5, #1
	add r5, r4, #1
	add r4, r5, #1
	add r5, r4, #1
	add r4, r5, #1
	add r5, r4, #1
	add r4, r5, #1
	add r5, r4, #1
	add r4, r5, #1
	add r5, r4, #1
	add r4, r5, #1
	add r5, r4, #1
	add r4, r5, #1
	add r5, r4, #1
	add r4, r5, #1
	add r5, r4, #1
	add r4, r5, #1
	add r5, r4, #1
	add r4, r5, #1
	add r5, r4, #1
	add r4, r5, #1
	add r5, r4, #1
	add r4, r5, #1
	add r5, r4, #1
	add r4, r5, v84
	mov r5, #4
	mul r6, r4, r5
	ldr r4, addr_buf5
	add r5, r4, r6
	ldr r4, [r5]
	ldr r5, =0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, #0
	add r5, r6, #0
	add r6, r5, v82
	mov r5, #4
	mul r6, r6, r5
	ldr r7, addr_buf5
	add r5, r7, r6
	str r4, [r5]
	ldr r8, [fp, #-24]
	add r4, r8, #1
	str r4, [fp, #-24]
	b .L162
	b .F5
.LTORG
addr_buf5:
	.word buf
.F5:
.L164:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L165:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L166:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L167:
	b .L164

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L173:
	ldr r4, =0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	mov r5, #4
	mul r4, r4, r5
	ldr r5, addr_buf6
	add r6, r5, r4
	mov r0, r6
	bl getarray
	mov r7, r0
	str r7, [fp, #-4]
	ldr r8, [fp, #-4]
	mov r0, #0
	mov r1, r8
	bl merge_sort
	ldr r9, [fp, #-4]
	ldr r4, =0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	add r5, r4, #0
	add r4, r5, #0
	mov r5, #4
	mul r5, r4, r5
	ldr r6, addr_buf6
	add r4, r6, r5
	mov r0, r9
	mov r1, r4
	bl putarray
	ldr r7, =0
	mov r0, r7
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
	b .F6
.LTORG
addr_buf6:
	.word buf
.F6:
.L179:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr

addr_buf7:
	.word buf
