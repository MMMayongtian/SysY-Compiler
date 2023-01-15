	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global func1
	.type func1 , %function
func1:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #12
.L150:
	str r0, [fp, #-12]
	str r1, [fp, #-8]
	str r2, [fp, #-4]
	ldr r4, [fp, #-4]
	ldr r5, =0
	cmp r4, r5
	moveq r6, #1
	movne r6, #0
	beq .L154
	b .L159
.L154:
	ldr r7, [fp, #-12]
	ldr r4, [fp, #-8]
	mul r5, r7, r4
	mov r0, r5
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L155:
	ldr r6, [fp, #-12]
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-4]
	sub r7, r4, r5
	mov r0, r6
	mov r1, r7
	mov r2, #0
	bl func1
	mov r8, r0
	mov r0, r8
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L156:
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L157:
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L158:
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L159:
	b .L155
.L160:
	b .L156
.L161:
	b .L156

	.global func2
	.type func2 , %function
func2:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L162:
	str r0, [fp, #-8]
	str r1, [fp, #-4]
	ldr r4, [fp, #-4]
	ldr r5, =0
	cmp r4, r5
	movne r6, #1
	moveq r6, #0
	bne .L165
	b .L169
.L165:
	ldr r7, [fp, #-8]
	ldr r4, [fp, #-4]
	sdiv r5, r7, r4
	mul r4, r5, r4
	sub r5, r7, r4
	mov r0, r5
	mov r1, #0
	bl func2
	mov r6, r0
	mov r0, r6
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L166:
	ldr r8, [fp, #-8]
	mov r0, r8
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L167:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L168:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L169:
	b .L166
.L170:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L171:
	b .L167
.L172:
	b .L167

	.global func3
	.type func3 , %function
func3:
	push {r4, r5, r6, r7, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L173:
	str r0, [fp, #-8]
	str r1, [fp, #-4]
	ldr r4, [fp, #-4]
	ldr r5, =0
	cmp r4, r5
	moveq r6, #1
	movne r6, #0
	beq .L176
	b .L181
.L176:
	ldr r7, [fp, #-8]
	add r4, r7, #1
	mov r0, r4
	add sp, sp, #8
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L177:
	ldr r5, [fp, #-8]
	ldr r4, [fp, #-4]
	add r6, r5, r4
	mov r0, r6
	mov r1, #0
	bl func3
	mov r7, r0
	mov r0, r7
	add sp, sp, #8
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L178:
	add sp, sp, #8
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L179:
	add sp, sp, #8
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L180:
	add sp, sp, #8
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L181:
	b .L177
.L182:
	b .L178
.L183:
	b .L178

	.global func4
	.type func4 , %function
func4:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #12
.L184:
	str r0, [fp, #-12]
	str r1, [fp, #-8]
	str r2, [fp, #-4]
	ldr r4, [fp, #-12]
	ldr r5, =0
	cmp r4, r5
	movne r6, #1
	moveq r6, #0
	bne .L188
	b .L192
.L188:
	ldr r7, [fp, #-8]
	mov r0, r7
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L189:
	ldr r8, [fp, #-4]
	mov r0, r8
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L190:
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L191:
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L192:
	b .L189
.L193:
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L194:
	b .L190
.L195:
	b .L190

	.global func5
	.type func5 , %function
func5:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L196:
	str r0, [fp, #-4]
	ldr r4, [fp, #-4]
	ldr r5, =0
	sub r6, r5, r4
	mov r0, r6
	add sp, sp, #4
	pop {r4, r5, r6, fp, lr}
	bx lr
.L198:
	add sp, sp, #4
	pop {r4, r5, r6, fp, lr}
	bx lr

	.global func6
	.type func6 , %function
func6:
	push {r4, r5, r6, r7, r8, r9, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L199:
	str r0, [fp, #-8]
	str r1, [fp, #-4]
	ldr r4, [fp, #-8]
	ldr r5, =0
	cmp r4, r5
	movne r6, #1
	moveq r6, #0
	bne .L205
	b .L207
.L202:
	ldr r7, =1
	mov r0, r7
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L203:
	ldr r8, =0
	mov r0, r8
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L204:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L205:
	ldr r9, [fp, #-4]
	ldr r4, =0
	cmp r9, r4
	movne r5, #1
	moveq r5, #0
	bne .L202
	b .L210
.L206:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L207:
	b .L203
.L208:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L209:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L210:
	b .L203
.L211:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L212:
	b .L204
.L213:
	b .L204

	.global func7
	.type func7 , %function
func7:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L214:
	str r0, [fp, #-4]
	ldr r4, [fp, #-4]
	ldr r5, =0
	cmp r4, r5
	movne r6, #1
	moveq r6, #0
	moveq r7, #1
	movne r7, #0
	ldr r4, =0
	cmp r7, r4
	movne r5, #1
	moveq r5, #0
	bne .L216
	b .L221
.L216:
	ldr r6, =1
	mov r0, r6
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L217:
	ldr r8, =0
	mov r0, r8
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L218:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L220:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L221:
	b .L217
.L222:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L223:
	b .L218
.L224:
	b .L218

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #64
.L225:
	bl getint
	mov r4, r0
	str r4, [fp, #-64]
	bl getint
	mov r5, r0
	str r5, [fp, #-60]
	bl getint
	mov r6, r0
	str r6, [fp, #-56]
	bl getint
	mov r7, r0
	str r7, [fp, #-52]
	ldr r8, =0
	str r8, [fp, #-8]
	b .L232
.L232:
	ldr r9, [fp, #-8]
	ldr r4, =10
	cmp r9, r4
	movlt r5, #1
	movge r5, #0
	blt .L233
	b .L237
.L233:
	bl getint
	mov r6, r0
	ldr r4, [fp, #-8]
	ldr r5, =0
	add r7, r5, r4
	mov r4, #4
	mul r5, r7, r4
	mov r4, #-48
	add r5, r4, r5
	add r4, fp, r5
	str r6, [r4]
	ldr r7, [fp, #-8]
	add r4, r7, #1
	str r4, [fp, #-8]
	b .L232
.L234:
	ldr r5, [fp, #-64]
	mov r0, r5
	bl func7
	mov r6, r0
	ldr r4, [fp, #-60]
	mov r0, r4
	bl func5
	mov r4, r0
	mov r0, r6
	mov r1, r4
	bl func6
	mov r5, r0
	ldr r4, [fp, #-56]
	mov r0, r5
	mov r1, r4
	bl func2
	mov r6, r0
	ldr r4, [fp, #-52]
	mov r0, r6
	mov r1, r4
	bl func3
	mov r5, r0
	mov r0, r5
	bl func5
	mov r7, r0
	ldr r4, =0
	add r5, r4, #0
	mov r4, #4
	mul r4, r5, r4
	mov r5, #-48
	add r5, r5, r4
	add r4, fp, r5
	ldr r5, [r4]
	ldr r4, =0
	add r6, r4, #1
	mov r4, #4
	mul r4, r6, r4
	mov r6, #-48
	add r6, r6, r4
	add r4, fp, r6
	ldr r6, [r4]
	mov r0, r6
	bl func5
	mov r4, r0
	ldr r6, =0
	add r8, r6, #2
	mov r6, #4
	mul r8, r8, r6
	mov r6, #-48
	add r8, r6, r8
	add r6, fp, r8
	ldr r8, [r6]
	ldr r6, =0
	add r9, r6, #3
	mov r6, #4
	mul r6, r9, r6
	mov r9, #-48
	add r9, r9, r6
	add r6, fp, r9
	ldr r9, [r6]
	mov r0, r9
	bl func7
	mov r6, r0
	mov r0, r8
	mov r1, r6
	bl func6
	mov r6, r0
	ldr r8, =0
	add r9, r8, #4
	mov r8, #4
	mul r8, r9, r8
	mov r9, #-48
	add r9, r9, r8
	add r8, fp, r9
	ldr r9, [r8]
	ldr r8, =0
	add r10, r8, #5
	mov r8, #4
	mul r8, r10, r8
	mov r10, #-48
	add r8, r10, r8
	add r10, fp, r8
	ldr r8, [r10]
	mov r0, r8
	bl func7
	mov r8, r0
	mov r0, r9
	mov r1, r8
	bl func2
	mov r8, r0
	mov r0, r4
	mov r1, r6
	mov r2, r8
	bl func4
	mov r4, r0
	ldr r6, =0
	add r8, r6, #6
	mov r6, #4
	mul r6, r8, r6
	mov r8, #-48
	add r8, r8, r6
	add r6, fp, r8
	ldr r8, [r6]
	mov r0, r4
	mov r1, r8
	bl func3
	mov r4, r0
	ldr r6, =0
	add r8, r6, #7
	mov r6, #4
	mul r6, r8, r6
	mov r8, #-48
	add r8, r8, r6
	add r6, fp, r8
	ldr r8, [r6]
	mov r0, r4
	mov r1, r8
	bl func2
	mov r4, r0
	ldr r6, =0
	add r8, r6, #8
	mov r6, #4
	mul r6, r8, r6
	mov r8, #-48
	add r8, r8, r6
	add r6, fp, r8
	ldr r8, [r6]
	ldr r6, =0
	add r9, r6, #9
	mov r6, #4
	mul r6, r9, r6
	mov r9, #-48
	add r9, r9, r6
	add r6, fp, r9
	ldr r9, [r6]
	mov r0, r9
	bl func7
	mov r6, r0
	mov r0, r8
	mov r1, r6
	bl func3
	mov r6, r0
	ldr r8, [fp, #-64]
	mov r0, r4
	mov r1, r6
	mov r2, r8
	bl func1
	mov r4, r0
	mov r0, r7
	mov r1, r5
	mov r2, r4
	bl func4
	mov r6, r0
	ldr r4, [fp, #-60]
	ldr r5, [fp, #-56]
	mov r0, r5
	bl func7
	mov r5, r0
	ldr r7, [fp, #-52]
	mov r0, r5
	mov r1, r7
	bl func3
	mov r5, r0
	mov r0, r4
	mov r1, r5
	bl func2
	mov r4, r0
	mov r0, r6
	mov r1, r4
	bl func3
	mov r5, r0
	ldr r4, =0
	add r6, r4, #0
	mov r4, #4
	mul r4, r6, r4
	mov r6, #-48
	add r4, r6, r4
	add r6, fp, r4
	ldr r4, [r6]
	ldr r6, =0
	add r7, r6, #1
	mov r6, #4
	mul r7, r7, r6
	mov r6, #-48
	add r7, r6, r7
	add r6, fp, r7
	ldr r7, [r6]
	mov r0, r5
	mov r1, r4
	mov r2, r7
	bl func1
	mov r8, r0
	ldr r4, =0
	add r5, r4, #2
	mov r4, #4
	mul r5, r5, r4
	mov r4, #-48
	add r4, r4, r5
	add r5, fp, r4
	ldr r4, [r5]
	mov r0, r8
	mov r1, r4
	bl func2
	mov r6, r0
	ldr r4, =0
	add r5, r4, #3
	mov r4, #4
	mul r4, r5, r4
	mov r5, #-48
	add r4, r5, r4
	add r5, fp, r4
	ldr r4, [r5]
	ldr r5, =0
	add r7, r5, #4
	mov r5, #4
	mul r5, r7, r5
	mov r7, #-48
	add r5, r7, r5
	add r7, fp, r5
	ldr r5, [r7]
	ldr r7, =0
	add r8, r7, #5
	mov r7, #4
	mul r7, r8, r7
	mov r8, #-48
	add r8, r8, r7
	add r7, fp, r8
	ldr r8, [r7]
	mov r0, r8
	bl func5
	mov r7, r0
	mov r0, r5
	mov r1, r7
	bl func3
	mov r5, r0
	ldr r7, =0
	add r8, r7, #6
	mov r7, #4
	mul r7, r8, r7
	mov r8, #-48
	add r8, r8, r7
	add r7, fp, r8
	ldr r8, [r7]
	mov r0, r8
	bl func5
	mov r7, r0
	mov r0, r5
	mov r1, r7
	bl func2
	mov r5, r0
	ldr r7, =0
	add r8, r7, #7
	mov r7, #4
	mul r8, r8, r7
	mov r7, #-48
	add r7, r7, r8
	add r8, fp, r7
	ldr r7, [r8]
	ldr r8, =0
	add r9, r8, #8
	mov r8, #4
	mul r9, r9, r8
	mov r8, #-48
	add r9, r8, r9
	add r8, fp, r9
	ldr r9, [r8]
	mov r0, r9
	bl func7
	mov r8, r0
	mov r0, r5
	mov r1, r7
	mov r2, r8
	bl func1
	mov r5, r0
	ldr r7, =0
	add r8, r7, #9
	mov r7, #4
	mul r7, r8, r7
	mov r8, #-48
	add r8, r8, r7
	add r7, fp, r8
	ldr r8, [r7]
	mov r0, r8
	bl func5
	mov r7, r0
	mov r0, r5
	mov r1, r7
	bl func2
	mov r5, r0
	ldr r7, [fp, #-64]
	mov r0, r5
	mov r1, r7
	bl func3
	mov r5, r0
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl func1
	mov r7, r0
	str r7, [fp, #-4]
	b .B0
.LTORG
.B0:
	ldr r8, [fp, #-4]
	mov r0, r8
	add sp, sp, #64
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
	b .F1
.LTORG
.F1:
.L235:
	add sp, sp, #64
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L236:
	add sp, sp, #64
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L237:
	b .L234
.L301:
	add sp, sp, #64
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

