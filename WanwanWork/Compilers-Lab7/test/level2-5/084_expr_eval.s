	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global last_char
	.align 4
	.size last_char, 4
last_char:
	.word 32
	.global num
	.align 4
	.size num, 4
num:
	.word 0
	.global other
	.align 4
	.size other, 4
other:
	.word 0
	.global cur_token
	.align 4
	.size cur_token, 4
cur_token:
	.word 0
	.section .rodata
	.global TOKEN_NUM
	.align 4
	.size TOKEN_NUM, 4
TOKEN_NUM:
	.word 0
	.global TOKEN_OTHER
	.align 4
	.size TOKEN_OTHER, 4
TOKEN_OTHER:
	.word 1
	.text
	.global next_char
	.type next_char , %function
next_char:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #0
.L205:
	bl getch
	mov r4, r0
	ldr r5, addr_last_char0
	str r4, [r5]
	ldr r6, addr_last_char0
	ldr r4, [r6]
	mov r0, r4
	add sp, sp, #0
	pop {r4, r5, r6, fp, lr}
	bx lr
.L206:
	add sp, sp, #0
	pop {r4, r5, r6, fp, lr}
	bx lr

	.global is_space
	.type is_space , %function
is_space:
	push {r4, r5, r6, r7, r8, r9, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L207:
	str r0, [fp, #-4]
	ldr r4, [fp, #-4]
	ldr r5, =32
	cmp r4, r5
	moveq r6, #1
	movne r6, #0
	beq .L209
	b .L215
.L209:
	ldr r7, =1
	mov r0, r7
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L210:
	ldr r8, =0
	mov r0, r8
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L211:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L212:
	ldr r9, [fp, #-4]
	ldr r4, =10
	cmp r9, r4
	moveq r5, #1
	movne r5, #0
	beq .L209
	b .L218
.L213:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L214:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L215:
	b .L212
.L216:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L217:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L218:
	b .L210
.L219:
	b .L211
.L220:
	b .L211

	.global is_num
	.type is_num , %function
is_num:
	push {r4, r5, r6, r7, r8, r9, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L221:
	str r0, [fp, #-4]
	ldr r4, [fp, #-4]
	ldr r5, =48
	cmp r4, r5
	movge r6, #1
	movlt r6, #0
	bge .L226
	b .L229
.L223:
	ldr r7, =1
	mov r0, r7
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L224:
	ldr r8, =0
	mov r0, r8
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L225:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L226:
	ldr r9, [fp, #-4]
	ldr r4, =57
	cmp r9, r4
	movle r5, #1
	movgt r5, #0
	ble .L223
	b .L232
.L227:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L228:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L229:
	b .L224
.L230:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L231:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L232:
	b .L224
.L233:
	b .L225
.L234:
	b .L225

	.global next_token
	.type next_token , %function
next_token:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #0
.L235:
	b .L236
.L236:
	ldr r4, addr_last_char0
	ldr r5, [r4]
	mov r0, r5
	bl is_space
	mov r6, r0
	ldr r4, =0
	cmp r6, r4
	movne r5, #1
	moveq r5, #0
	bne .L237
	b .L240
.L237:
	bl next_char
	mov r7, r0
	b .L236
.L238:
	ldr r8, addr_last_char0
	ldr r4, [r8]
	mov r0, r4
	bl is_num
	mov r5, r0
	ldr r4, =0
	cmp r5, r4
	movne r6, #1
	moveq r6, #0
	bne .L242
	b .L246
.L239:
	add sp, sp, #0
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L240:
	b .L238
.L241:
	add sp, sp, #0
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L242:
	ldr r7, addr_last_char0
	ldr r4, [r7]
	sub r5, r4, #48
	ldr r4, addr_num0
	str r5, [r4]
	b .L248
.L243:
	ldr r6, addr_last_char0
	ldr r4, [r6]
	ldr r5, addr_other0
	str r4, [r5]
	bl next_char
	mov r6, r0
	ldr r7, addr_TOKEN_OTHER0
	ldr r4, [r7]
	ldr r5, addr_cur_token0
	str r4, [r5]
	b .L244
.L244:
	ldr r6, addr_cur_token0
	ldr r4, [r6]
	mov r0, r4
	add sp, sp, #0
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L245:
	add sp, sp, #0
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L246:
	b .L243
.L247:
	add sp, sp, #0
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L248:
	bl next_char
	mov r5, r0
	mov r0, r5
	bl is_num
	mov r7, r0
	ldr r4, =0
	cmp r7, r4
	movne r5, #1
	moveq r5, #0
	bne .L249
	b .L252
.L249:
	ldr r6, addr_num0
	ldr r4, [r6]
	ldr r5, =10
	mul r6, r4, r5
	ldr r4, addr_last_char0
	ldr r5, [r4]
	add r4, r6, r5
	sub r5, r4, #48
	ldr r4, addr_num0
	str r5, [r4]
	b .L248
.L250:
	ldr r6, addr_TOKEN_NUM0
	ldr r4, [r6]
	ldr r5, addr_cur_token0
	str r4, [r5]
	b .L244
.L251:
	add sp, sp, #0
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L252:
	b .L250
.L253:
	add sp, sp, #0
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L254:
	add sp, sp, #0
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr

	.global panic
	.type panic , %function
panic:
	push {r4, r5, fp, lr}
	mov fp, sp
	sub sp, sp, #0
.L255:
	mov r0, #112
	bl putch
	mov r0, #97
	bl putch
	mov r0, #110
	bl putch
	mov r0, #105
	bl putch
	mov r0, #99
	bl putch
	mov r0, #33
	bl putch
	mov r0, #10
	bl putch
	ldr r4, =0
	sub r5, r4, #1
	mov r0, r5
	add sp, sp, #0
	pop {r4, r5, fp, lr}
	bx lr
.L256:
	add sp, sp, #0
	pop {r4, r5, fp, lr}
	bx lr

	.global get_op_prec
	.type get_op_prec , %function
get_op_prec:
	push {r4, r5, r6, r7, r8, r9, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L257:
	str r0, [fp, #-4]
	ldr r4, [fp, #-4]
	ldr r5, =43
	cmp r4, r5
	moveq r6, #1
	movne r6, #0
	beq .L259
	b .L264
.L259:
	ldr r7, =10
	mov r0, r7
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L260:
	ldr r8, [fp, #-4]
	ldr r4, =42
	cmp r8, r4
	moveq r5, #1
	movne r5, #0
	beq .L269
	b .L275
.L261:
	ldr r6, [fp, #-4]
	ldr r4, =45
	cmp r6, r4
	moveq r5, #1
	movne r5, #0
	beq .L259
	b .L267
.L262:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L263:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L264:
	b .L261
.L265:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L266:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L267:
	b .L260
.L268:
	b .L260
.L269:
	ldr r7, =20
	mov r0, r7
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L270:
	ldr r8, =0
	mov r0, r8
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L271:
	ldr r9, [fp, #-4]
	ldr r4, =37
	cmp r9, r4
	moveq r5, #1
	movne r5, #0
	beq .L269
	b .L281
.L272:
	ldr r6, [fp, #-4]
	ldr r4, =47
	cmp r6, r4
	moveq r5, #1
	movne r5, #0
	beq .L269
	b .L278
.L273:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L274:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L275:
	b .L272
.L276:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L277:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L278:
	b .L271
.L279:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L280:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L281:
	b .L270
.L282:
	b .L270
.L283:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr

	.global stack_push
	.type stack_push , %function
stack_push:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L284:
	str r0, [fp, #-8]
	str r1, [fp, #-4]
	ldr r4, [fp, #-8]
	ldr r5, =0
	add r6, r5, #0
	mov r5, #4
	mul r5, r6, r5
	add r6, r4, r5
	ldr r4, [r6]
	add r5, r4, #1
	ldr r4, [fp, #-8]
	ldr r6, =0
	add r7, r6, #0
	mov r6, #4
	mul r7, r7, r6
	add r6, r4, r7
	str r5, [r6]
	ldr r8, [fp, #-4]
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-8]
	ldr r6, =0
	add r7, r6, #0
	mov r6, #4
	mul r7, r7, r6
	add r6, r5, r7
	ldr r5, [r6]
	ldr r6, =0
	add r7, r6, r5
	mov r5, #4
	mul r6, r7, r5
	add r5, r4, r6
	str r8, [r5]
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr

	.global stack_pop
	.type stack_pop , %function
stack_pop:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L301:
	str r0, [fp, #-8]
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-8]
	ldr r6, =0
	add r7, r6, #0
	mov r6, #4
	mul r7, r7, r6
	add r6, r5, r7
	ldr r5, [r6]
	ldr r6, =0
	add r7, r6, r5
	mov r5, #4
	mul r6, r7, r5
	add r5, r4, r6
	ldr r4, [r5]
	str r4, [fp, #-4]
	ldr r6, [fp, #-8]
	ldr r4, =0
	add r5, r4, #0
	mov r4, #4
	mul r5, r5, r4
	add r4, r6, r5
	ldr r5, [r4]
	sub r4, r5, #1
	ldr r5, [fp, #-8]
	ldr r6, =0
	add r7, r6, #0
	mov r6, #4
	mul r7, r7, r6
	add r6, r5, r7
	str r4, [r6]
	ldr r8, [fp, #-4]
	mov r0, r8
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L319:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr

	.global stack_peek
	.type stack_peek , %function
stack_peek:
	push {r4, r5, r6, r7, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L320:
	str r0, [fp, #-4]
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-4]
	ldr r6, =0
	add r7, r6, #0
	mov r6, #4
	mul r7, r7, r6
	add r6, r5, r7
	ldr r5, [r6]
	ldr r6, =0
	add r7, r6, r5
	mov r5, #4
	mul r6, r7, r5
	add r5, r4, r6
	ldr r4, [r5]
	mov r0, r4
	add sp, sp, #4
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L322:
	add sp, sp, #4
	pop {r4, r5, r6, r7, fp, lr}
	bx lr

	.global stack_size
	.type stack_size , %function
stack_size:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L331:
	str r0, [fp, #-4]
	ldr r4, [fp, #-4]
	ldr r5, =0
	add r6, r5, #0
	mov r5, #4
	mul r6, r6, r5
	add r5, r4, r6
	ldr r4, [r5]
	mov r0, r4
	add sp, sp, #4
	pop {r4, r5, r6, fp, lr}
	bx lr
.L333:
	add sp, sp, #4
	pop {r4, r5, r6, fp, lr}
	bx lr

	.global eval_op
	.type eval_op , %function
eval_op:
	push {r4, r5, r6, r7, fp, lr}
	mov fp, sp
	sub sp, sp, #12
.L338:
	str r0, [fp, #-12]
	str r1, [fp, #-8]
	str r2, [fp, #-4]
	ldr r4, [fp, #-12]
	ldr r5, =43
	cmp r4, r5
	moveq r6, #1
	movne r6, #0
	beq .L342
	b .L346
.L342:
	ldr r7, [fp, #-8]
	ldr r4, [fp, #-4]
	add r5, r7, r4
	mov r0, r5
	add sp, sp, #12
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L343:
	ldr r6, [fp, #-12]
	ldr r4, =45
	cmp r6, r4
	moveq r5, #1
	movne r5, #0
	beq .L348
	b .L352
.L344:
	add sp, sp, #12
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L345:
	add sp, sp, #12
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L346:
	b .L343
.L347:
	b .L343
.L348:
	ldr r7, [fp, #-8]
	ldr r4, [fp, #-4]
	sub r5, r7, r4
	mov r0, r5
	add sp, sp, #12
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L349:
	ldr r6, [fp, #-12]
	ldr r4, =42
	cmp r6, r4
	moveq r5, #1
	movne r5, #0
	beq .L354
	b .L358
.L350:
	add sp, sp, #12
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L351:
	add sp, sp, #12
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L352:
	b .L349
.L353:
	b .L349
.L354:
	ldr r7, [fp, #-8]
	ldr r4, [fp, #-4]
	mul r5, r7, r4
	mov r0, r5
	add sp, sp, #12
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L355:
	ldr r6, [fp, #-12]
	ldr r4, =47
	cmp r6, r4
	moveq r5, #1
	movne r5, #0
	beq .L360
	b .L364
.L356:
	add sp, sp, #12
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L357:
	add sp, sp, #12
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L358:
	b .L355
.L359:
	b .L355
.L360:
	ldr r7, [fp, #-8]
	ldr r4, [fp, #-4]
	sdiv r5, r7, r4
	mov r0, r5
	add sp, sp, #12
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L361:
	ldr r6, [fp, #-12]
	ldr r4, =37
	cmp r6, r4
	moveq r5, #1
	movne r5, #0
	beq .L366
	b .L370
.L362:
	add sp, sp, #12
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L363:
	add sp, sp, #12
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L364:
	b .L361
.L365:
	b .L361
.L366:
	ldr r7, [fp, #-8]
	ldr r4, [fp, #-4]
	sdiv r5, r7, r4
	mul r4, r5, r4
	sub r5, r7, r4
	mov r0, r5
	add sp, sp, #12
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L367:
	ldr r6, =0
	mov r0, r6
	add sp, sp, #12
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L368:
	add sp, sp, #12
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L369:
	add sp, sp, #12
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L370:
	b .L367
.L371:
	b .L367
.L372:
	add sp, sp, #12
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
	b .F0
.LTORG
addr_TOKEN_NUM0:
	.word TOKEN_NUM
addr_TOKEN_OTHER0:
	.word TOKEN_OTHER
addr_last_char0:
	.word last_char
addr_num0:
	.word num
addr_other0:
	.word other
addr_cur_token0:
	.word cur_token
.F0:

	.global eval
	.type eval , %function
eval:
	push {r4, r5, r6, r7, r8, r9, fp, lr}
	mov fp, sp
	ldr r4, =2076
	sub sp, sp, r4
.L373:
	mov r4, #0
	mov r5, #4
	mul r4, r4, r5
	ldr r6, =-2076
	add r5, r6, r4
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
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	b .B0
.LTORG
addr_TOKEN_NUM1:
	.word TOKEN_NUM
addr_TOKEN_OTHER1:
	.word TOKEN_OTHER
addr_last_char1:
	.word last_char
addr_num1:
	.word num
addr_other1:
	.word other
addr_cur_token1:
	.word cur_token
.B0:
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	b .B1
.LTORG
addr_TOKEN_NUM2:
	.word TOKEN_NUM
addr_TOKEN_OTHER2:
	.word TOKEN_OTHER
addr_last_char2:
	.word last_char
addr_num2:
	.word num
addr_other2:
	.word other
addr_cur_token2:
	.word cur_token
.B1:
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
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
	ldr r4, =-1052
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
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	b .B2
.LTORG
addr_TOKEN_NUM3:
	.word TOKEN_NUM
addr_TOKEN_OTHER3:
	.word TOKEN_OTHER
addr_last_char3:
	.word last_char
addr_num3:
	.word num
addr_other3:
	.word other
addr_cur_token3:
	.word cur_token
.B2:
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	b .B3
.LTORG
addr_TOKEN_NUM4:
	.word TOKEN_NUM
addr_TOKEN_OTHER4:
	.word TOKEN_OTHER
addr_last_char4:
	.word last_char
addr_num4:
	.word num
addr_other4:
	.word other
addr_cur_token4:
	.word cur_token
.B3:
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	b .B4
.LTORG
addr_TOKEN_NUM5:
	.word TOKEN_NUM
addr_TOKEN_OTHER5:
	.word TOKEN_OTHER
addr_last_char5:
	.word last_char
addr_num5:
	.word num
addr_other5:
	.word other
addr_cur_token5:
	.word cur_token
.B4:
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	ldr r6, addr_cur_token6
	ldr r4, [r6]
	ldr r5, addr_TOKEN_NUM6
	ldr r6, [r5]
	cmp r4, r6
	movne r7, #1
	moveq r7, #0
	bne .L378
	b .L382
	b .F6
.LTORG
addr_TOKEN_NUM6:
	.word TOKEN_NUM
addr_TOKEN_OTHER6:
	.word TOKEN_OTHER
addr_last_char6:
	.word last_char
addr_num6:
	.word num
addr_other6:
	.word other
addr_cur_token6:
	.word cur_token
.F6:
.L378:
	bl panic
	mov r8, r0
	mov r0, r8
	ldr r1, =2076
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L379:
	mov r9, #0
	mov r4, #4
	mul r5, r9, r4
	ldr r4, =-2076
	add r6, r4, r5
	add r4, fp, r6
	ldr r5, addr_num7
	ldr r6, [r5]
	mov r0, r4
	mov r1, r6
	bl stack_push
	bl next_token
	mov r7, r0
	b .L384
.L380:
	ldr r1, =2076
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L381:
	ldr r1, =2076
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L382:
	b .L379
.L383:
	b .L379
.L384:
	ldr r8, addr_cur_token7
	ldr r4, [r8]
	ldr r5, addr_TOKEN_OTHER7
	ldr r6, [r5]
	cmp r4, r6
	moveq r7, #1
	movne r7, #0
	beq .L385
	b .L389
.L385:
	ldr r8, addr_other7
	ldr r4, [r8]
	str r4, [fp, #-28]
	ldr r5, [fp, #-28]
	mov r0, r5
	bl get_op_prec
	mov r6, r0
	ldr r4, =0
	cmp r6, r4
	movne r5, #1
	moveq r5, #0
	moveq r7, #1
	movne r7, #0
	ldr r4, =0
	cmp r7, r4
	movne r5, #1
	moveq r5, #0
	bne .L391
	b .L395
.L386:
	bl next_token
	mov r6, r0
	b .L417
.L387:
	ldr r1, =2076
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L388:
	ldr r1, =2076
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L389:
	b .L386
.L391:
	b .L386
.L392:
	bl next_token
	mov r8, r0
	b .L398
.L394:
	ldr r1, =2076
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L395:
	b .L392
.L396:
	ldr r1, =2076
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L397:
	b .L392
.L398:
	mov r9, #0
	mov r4, #4
	mul r5, r9, r4
	ldr r4, =-1052
	add r6, r4, r5
	add r4, fp, r6
	mov r0, r4
	bl stack_size
	mov r5, r0
	ldr r4, =0
	cmp r5, r4
	movne r6, #1
	moveq r6, #0
	bne .L401
	b .L403
.L399:
	mov r7, #0
	mov r4, #4
	mul r5, r7, r4
	ldr r4, =-1052
	add r4, r4, r5
	add r6, fp, r4
	mov r0, r6
	bl stack_pop
	mov r5, r0
	str r5, [fp, #-24]
	mov r7, #0
	mov r4, #4
	mul r5, r7, r4
	ldr r4, =-2076
	add r4, r4, r5
	add r6, fp, r4
	mov r0, r6
	bl stack_pop
	mov r5, r0
	str r5, [fp, #-20]
	mov r7, #0
	mov r4, #4
	mul r5, r7, r4
	ldr r4, =-2076
	add r6, r4, r5
	add r4, fp, r6
	mov r0, r4
	bl stack_pop
	mov r5, r0
	str r5, [fp, #-16]
	mov r7, #0
	mov r4, #4
	mul r5, r7, r4
	ldr r4, =-2076
	add r6, r4, r5
	add r4, fp, r6
	ldr r5, [fp, #-24]
	ldr r6, [fp, #-16]
	ldr r7, [fp, #-20]
	mov r0, r5
	mov r1, r6
	mov r2, r7
	bl eval_op
	mov r5, r0
	mov r0, r4
	mov r1, r5
	bl stack_push
	b .L398
	b .F7
.LTORG
addr_TOKEN_NUM7:
	.word TOKEN_NUM
addr_TOKEN_OTHER7:
	.word TOKEN_OTHER
addr_last_char7:
	.word last_char
addr_num7:
	.word num
addr_other7:
	.word other
addr_cur_token7:
	.word cur_token
.F7:
.L400:
	mov r6, #0
	mov r4, #4
	mul r4, r6, r4
	ldr r5, =-1052
	add r4, r5, r4
	add r6, fp, r4
	ldr r4, [fp, #-28]
	mov r0, r6
	mov r1, r4
	bl stack_push
	ldr r5, addr_cur_token8
	ldr r4, [r5]
	ldr r5, addr_TOKEN_NUM8
	ldr r6, [r5]
	cmp r4, r6
	movne r7, #1
	moveq r7, #0
	bne .L411
	b .L415
.L401:
	mov r8, #0
	mov r4, #4
	mul r5, r8, r4
	ldr r4, =-1052
	add r4, r4, r5
	add r6, fp, r4
	mov r0, r6
	bl stack_peek
	mov r5, r0
	mov r0, r5
	bl get_op_prec
	mov r7, r0
	ldr r4, [fp, #-28]
	mov r0, r4
	bl get_op_prec
	mov r4, r0
	cmp r7, r4
	movge r5, #1
	movlt r5, #0
	bge .L399
	b .L407
.L402:
	ldr r1, =2076
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L403:
	b .L400
.L404:
	ldr r1, =2076
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L405:
	ldr r1, =2076
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L406:
	ldr r1, =2076
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L407:
	b .L400
.L411:
	bl panic
	mov r6, r0
	mov r0, r6
	ldr r1, =2076
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L412:
	mov r8, #0
	mov r4, #4
	mul r5, r8, r4
	ldr r4, =-2076
	add r6, r4, r5
	add r4, fp, r6
	ldr r5, addr_num8
	ldr r6, [r5]
	mov r0, r4
	mov r1, r6
	bl stack_push
	bl next_token
	mov r7, r0
	b .L384
.L413:
	ldr r1, =2076
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L414:
	ldr r1, =2076
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L415:
	b .L412
.L416:
	b .L412
.L417:
	mov r8, #0
	mov r4, #4
	mul r5, r8, r4
	ldr r4, =-1052
	add r4, r4, r5
	add r6, fp, r4
	mov r0, r6
	bl stack_size
	mov r5, r0
	ldr r4, =0
	cmp r5, r4
	movne r6, #1
	moveq r6, #0
	bne .L418
	b .L421
.L418:
	mov r7, #0
	mov r4, #4
	mul r5, r7, r4
	ldr r4, =-1052
	add r6, r4, r5
	add r4, fp, r6
	mov r0, r4
	bl stack_pop
	mov r5, r0
	str r5, [fp, #-12]
	mov r7, #0
	mov r4, #4
	mul r5, r7, r4
	ldr r4, =-2076
	add r6, r4, r5
	add r4, fp, r6
	mov r0, r4
	bl stack_pop
	mov r5, r0
	str r5, [fp, #-8]
	mov r7, #0
	mov r4, #4
	mul r5, r7, r4
	ldr r4, =-2076
	add r6, r4, r5
	add r4, fp, r6
	mov r0, r4
	bl stack_pop
	mov r5, r0
	str r5, [fp, #-4]
	mov r7, #0
	mov r4, #4
	mul r5, r7, r4
	ldr r4, =-2076
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, [fp, #-12]
	ldr r5, [fp, #-4]
	ldr r7, [fp, #-8]
	mov r0, r4
	mov r1, r5
	mov r2, r7
	bl eval_op
	mov r4, r0
	mov r0, r6
	mov r1, r4
	bl stack_push
	b .L417
	b .F8
.LTORG
addr_TOKEN_NUM8:
	.word TOKEN_NUM
addr_TOKEN_OTHER8:
	.word TOKEN_OTHER
addr_last_char8:
	.word last_char
addr_num8:
	.word num
addr_other8:
	.word other
addr_cur_token8:
	.word cur_token
.F8:
.L419:
	mov r5, #0
	mov r4, #4
	mul r6, r5, r4
	ldr r4, =-2076
	add r4, r4, r6
	add r5, fp, r4
	mov r0, r5
	bl stack_peek
	mov r6, r0
	mov r0, r6
	ldr r1, =2076
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L420:
	ldr r1, =2076
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L421:
	b .L419
.L422:
	ldr r1, =2076
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L426:
	ldr r1, =2076
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L427:
	bl getint
	mov r4, r0
	str r4, [fp, #-4]
	bl getch
	mov r5, r0
	bl next_token
	mov r6, r0
	b .L429
.L429:
	ldr r7, [fp, #-4]
	ldr r4, =0
	cmp r7, r4
	movne r5, #1
	moveq r5, #0
	bne .L430
	b .L433
.L430:
	bl eval
	mov r6, r0
	mov r0, r6
	bl putint
	mov r0, #10
	bl putch
	ldr r8, [fp, #-4]
	sub r4, r8, #1
	str r4, [fp, #-4]
	b .L429
.L431:
	ldr r5, =0
	mov r0, r5
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L432:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L433:
	b .L431
.L434:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L435:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr

addr_TOKEN_NUM9:
	.word TOKEN_NUM
addr_TOKEN_OTHER9:
	.word TOKEN_OTHER
addr_last_char9:
	.word last_char
addr_num9:
	.word num
addr_other9:
	.word other
addr_cur_token9:
	.word cur_token
