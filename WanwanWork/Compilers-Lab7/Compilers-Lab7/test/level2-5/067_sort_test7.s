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
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #24
.L95:
	str r0, [fp, #-24]
	str r1, [fp, #-20]
	ldr r10, [fp, #-24]
	add r4, r10, #1
	ldr r5, [fp, #-20]
	cmp r4, r5
	movge r6, #1
	movlt r6, #0
	bge .L98
	b .L102
.L98:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
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
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L101:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
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
	mov r6, #0
	ldr r4, =400
	mul r6, r6, r4
	ldr r5, addr_buf0
	add r4, r5, r6
	ldr r5, [fp, #-12]
	mov r6, #4
	mul r6, r5, r6
	add r5, r4, r6
	ldr r4, [r5]
	mov r5, #0
	ldr r6, =400
	mul r5, r5, r6
	ldr r6, addr_buf0
	add r7, r6, r5
	ldr r5, [fp, #-8]
	mov r6, #4
	mul r6, r5, r6
	add r5, r7, r6
	ldr r6, [r5]
	cmp r4, r6
	movlt r7, #1
	movge r7, #0
	blt .L118
	b .L127
.L110:
	b .L134
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
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L113:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L114:
	b .L110
.L115:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L116:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L117:
	b .L110
.L118:
	mov r6, #0
	ldr r4, =400
	mul r4, r6, r4
	ldr r6, addr_buf0
	add r5, r6, r4
	ldr r4, [fp, #-12]
	mov r6, #4
	mul r4, r4, r6
	add r6, r5, r4
	ldr r4, [r6]
	mov r5, #1
	ldr r6, =400
	mul r6, r5, r6
	ldr r7, addr_buf0
	add r5, r7, r6
	ldr r6, [fp, #-4]
	mov r7, #4
	mul r6, r6, r7
	add r7, r5, r6
	str r4, [r7]
	ldr r8, [fp, #-12]
	add r4, r8, #1
	str r4, [fp, #-12]
	b .L120
.L119:
	mov r5, #0
	ldr r4, =400
	mul r4, r5, r4
	ldr r5, addr_buf0
	add r6, r5, r4
	ldr r4, [fp, #-8]
	mov r5, #4
	mul r5, r4, r5
	add r4, r6, r5
	ldr r5, [r4]
	mov r4, #1
	ldr r6, =400
	mul r6, r4, r6
	ldr r7, addr_buf0
	add r4, r7, r6
	ldr r6, [fp, #-4]
	mov r7, #4
	mul r6, r6, r7
	add r7, r4, r6
	str r5, [r7]
	ldr r8, [fp, #-8]
	add r4, r8, #1
	str r4, [fp, #-8]
	b .L120
.L120:
	ldr r5, [fp, #-4]
	add r4, r5, #1
	str r4, [fp, #-4]
	b .L108
.L125:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L126:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L127:
	b .L119
.L134:
	ldr r6, [fp, #-12]
	ldr r4, [fp, #-16]
	cmp r6, r4
	movlt r5, #1
	movge r5, #0
	blt .L135
	b .L139
.L135:
	mov r7, #0
	ldr r4, =400
	mul r5, r7, r4
	ldr r4, addr_buf0
	add r6, r4, r5
	ldr r4, [fp, #-12]
	mov r5, #4
	mul r5, r4, r5
	add r4, r6, r5
	ldr r5, [r4]
	mov r4, #1
	ldr r6, =400
	mul r4, r4, r6
	ldr r6, addr_buf0
	add r7, r6, r4
	ldr r4, [fp, #-4]
	mov r6, #4
	mul r6, r4, r6
	add r4, r7, r6
	str r5, [r4]
	ldr r8, [fp, #-12]
	add r4, r8, #1
	str r4, [fp, #-12]
	ldr r5, [fp, #-4]
	add r4, r5, #1
	str r4, [fp, #-4]
	b .L134
.L136:
	b .L143
.L137:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L138:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L139:
	b .L136
.L143:
	ldr r6, [fp, #-8]
	ldr r4, [fp, #-20]
	cmp r6, r4
	movlt r5, #1
	movge r5, #0
	blt .L144
	b .L148
.L144:
	mov r7, #0
	ldr r4, =400
	mul r4, r7, r4
	ldr r6, addr_buf0
	add r5, r6, r4
	ldr r4, [fp, #-8]
	mov r6, #4
	mul r6, r4, r6
	add r4, r5, r6
	ldr r5, [r4]
	mov r4, #1
	ldr r6, =400
	mul r4, r4, r6
	ldr r6, addr_buf0
	add r7, r6, r4
	ldr r4, [fp, #-4]
	mov r6, #4
	mul r4, r4, r6
	add r6, r7, r4
	str r5, [r6]
	ldr r8, [fp, #-8]
	add r4, r8, #1
	str r4, [fp, #-8]
	ldr r5, [fp, #-4]
	add r4, r5, #1
	str r4, [fp, #-4]
	b .L143
	b .F0
.LTORG
addr_buf0:
	.word buf
.F0:
.L145:
	b .L152
.L146:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L147:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L148:
	b .L145
.L152:
	ldr r6, [fp, #-24]
	ldr r4, [fp, #-20]
	cmp r6, r4
	movlt r5, #1
	movge r5, #0
	blt .L153
	b .L157
.L153:
	mov r7, #1
	ldr r4, =400
	mul r5, r7, r4
	ldr r4, addr_buf1
	add r6, r4, r5
	ldr r4, [fp, #-24]
	mov r5, #4
	mul r5, r4, r5
	add r4, r6, r5
	ldr r5, [r4]
	mov r4, #0
	ldr r6, =400
	mul r6, r4, r6
	ldr r7, addr_buf1
	add r4, r7, r6
	ldr r6, [fp, #-24]
	mov r7, #4
	mul r7, r6, r7
	add r6, r4, r7
	str r5, [r6]
	ldr r8, [fp, #-24]
	add r4, r8, #1
	str r4, [fp, #-24]
	b .L152
.L154:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L155:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L156:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L157:
	b .L154

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L161:
	mov r10, #0
	ldr r4, =400
	mul r4, r10, r4
	ldr r5, addr_buf1
	add r6, r5, r4
	mov r4, #0
	mov r5, #4
	mul r4, r4, r5
	add r5, r6, r4
	mov r0, r5
	bl getarray
	mov r7, r0
	str r7, [fp, #-4]
	ldr r8, [fp, #-4]
	mov r0, #0
	mov r1, r8
	bl merge_sort
	ldr r9, [fp, #-4]
	mov r4, #0
	ldr r5, =400
	mul r5, r4, r5
	ldr r6, addr_buf1
	add r4, r6, r5
	mov r5, #0
	mov r6, #4
	mul r6, r5, r6
	add r5, r4, r6
	mov r0, r9
	mov r1, r5
	bl putarray
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L167:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

addr_buf1:
	.word buf
