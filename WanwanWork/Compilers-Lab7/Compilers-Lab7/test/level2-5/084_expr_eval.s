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
	push {r4, r5, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #0
.L205:
	bl getch
	mov r10, r0
	ldr r4, addr_last_char0
	str r10, [r4]
	ldr r5, addr_last_char0
	ldr r4, [r5]
	mov r0, r4
	add sp, sp, #0
	pop {r4, r5, r10, fp, lr}
	bx lr
.L206:
	add sp, sp, #0
	pop {r4, r5, r10, fp, lr}
	bx lr

	.global is_space
	.type is_space , %function
is_space:
	push {r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L207:
	str r0, [fp, #-4]
	ldr r10, [fp, #-4]
	cmp r10, #32
	beq .L209
	b .L215
.L209:
	mov r0, #1
	add sp, sp, #4
	pop {r9, r10, fp, lr}
	bx lr
.L210:
	mov r0, #0
	add sp, sp, #4
	pop {r9, r10, fp, lr}
	bx lr
.L211:
	add sp, sp, #4
	pop {r9, r10, fp, lr}
	bx lr
.L212:
	ldr r9, [fp, #-4]
	cmp r9, #10
	beq .L209
	b .L218
.L213:
	add sp, sp, #4
	pop {r9, r10, fp, lr}
	bx lr
.L214:
	add sp, sp, #4
	pop {r9, r10, fp, lr}
	bx lr
.L215:
	b .L212
.L216:
	add sp, sp, #4
	pop {r9, r10, fp, lr}
	bx lr
.L217:
	add sp, sp, #4
	pop {r9, r10, fp, lr}
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
	push {r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L221:
	str r0, [fp, #-4]
	ldr r10, [fp, #-4]
	cmp r10, #48
	movge r9, #1
	movlt r9, #0
	bge .L226
	b .L229
.L223:
	mov r0, #1
	add sp, sp, #4
	pop {r7, r8, r9, r10, fp, lr}
	bx lr
.L224:
	mov r0, #0
	add sp, sp, #4
	pop {r7, r8, r9, r10, fp, lr}
	bx lr
.L225:
	add sp, sp, #4
	pop {r7, r8, r9, r10, fp, lr}
	bx lr
.L226:
	ldr r8, [fp, #-4]
	cmp r8, #57
	movle r7, #1
	movgt r7, #0
	ble .L223
	b .L232
.L227:
	add sp, sp, #4
	pop {r7, r8, r9, r10, fp, lr}
	bx lr
.L228:
	add sp, sp, #4
	pop {r7, r8, r9, r10, fp, lr}
	bx lr
.L229:
	b .L224
.L230:
	add sp, sp, #4
	pop {r7, r8, r9, r10, fp, lr}
	bx lr
.L231:
	add sp, sp, #4
	pop {r7, r8, r9, r10, fp, lr}
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
	push {r4, r5, r6, r7, r8, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #0
.L235:
	b .L236
.L236:
	ldr r10, addr_last_char0
	ldr r4, [r10]
	mov r0, r4
	bl is_space
	mov r5, r0
	cmp r5, #0
	bne .L237
	b .L240
.L237:
	bl next_char
	mov r6, r0
	b .L236
.L238:
	ldr r7, addr_last_char0
	ldr r4, [r7]
	mov r0, r4
	bl is_num
	mov r5, r0
	cmp r5, #0
	bne .L242
	b .L246
.L239:
	add sp, sp, #0
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L240:
	b .L238
.L241:
	add sp, sp, #0
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L242:
	ldr r6, addr_last_char0
	ldr r4, [r6]
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
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L245:
	add sp, sp, #0
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L246:
	b .L243
.L247:
	add sp, sp, #0
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L248:
	bl next_char
	mov r5, r0
	mov r0, r5
	bl is_num
	mov r7, r0
	cmp r7, #0
	bne .L249
	b .L252
.L249:
	ldr r8, addr_num0
	ldr r4, [r8]
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
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L252:
	b .L250
.L253:
	add sp, sp, #0
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L254:
	add sp, sp, #0
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr

	.global panic
	.type panic , %function
panic:
	push {r4, r10, fp, lr}
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
	ldr r10, =0
	sub r4, r10, #1
	mov r0, r4
	add sp, sp, #0
	pop {r4, r10, fp, lr}
	bx lr
.L256:
	add sp, sp, #0
	pop {r4, r10, fp, lr}
	bx lr

	.global get_op_prec
	.type get_op_prec , %function
get_op_prec:
	push {r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L257:
	str r0, [fp, #-4]
	ldr r10, [fp, #-4]
	cmp r10, #43
	beq .L259
	b .L264
.L259:
	mov r0, #10
	add sp, sp, #4
	pop {r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L260:
	ldr r9, [fp, #-4]
	cmp r9, #42
	beq .L269
	b .L275
.L261:
	ldr r8, [fp, #-4]
	cmp r8, #45
	beq .L259
	b .L267
.L262:
	add sp, sp, #4
	pop {r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L263:
	add sp, sp, #4
	pop {r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L264:
	b .L261
.L265:
	add sp, sp, #4
	pop {r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L266:
	add sp, sp, #4
	pop {r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L267:
	b .L260
.L268:
	b .L260
.L269:
	mov r0, #20
	add sp, sp, #4
	pop {r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L270:
	mov r0, #0
	add sp, sp, #4
	pop {r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L271:
	ldr r7, [fp, #-4]
	cmp r7, #37
	beq .L269
	b .L281
.L272:
	ldr r6, [fp, #-4]
	cmp r6, #47
	beq .L269
	b .L278
.L273:
	add sp, sp, #4
	pop {r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L274:
	add sp, sp, #4
	pop {r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L275:
	b .L272
.L276:
	add sp, sp, #4
	pop {r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L277:
	add sp, sp, #4
	pop {r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L278:
	b .L271
.L279:
	add sp, sp, #4
	pop {r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L280:
	add sp, sp, #4
	pop {r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L281:
	b .L270
.L282:
	b .L270
.L283:
	add sp, sp, #4
	pop {r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global stack_push
	.type stack_push , %function
stack_push:
	push {r4, r5, r6, r7, r8, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L284:
	str r0, [fp, #-8]
	str r1, [fp, #-4]
	ldr r10, [fp, #-8]
	mov r4, #0
	mov r5, #4
	mul r5, r4, r5
	add r4, r10, r5
	ldr r5, [r4]
	add r4, r5, #1
	ldr r5, [fp, #-8]
	mov r6, #0
	mov r7, #4
	mul r6, r6, r7
	add r7, r5, r6
	str r4, [r7]
	ldr r8, [fp, #-4]
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-8]
	mov r6, #0
	mov r7, #4
	mul r7, r6, r7
	add r6, r5, r7
	ldr r5, [r6]
	mov r6, #4
	mul r6, r5, r6
	add r5, r4, r6
	str r8, [r5]
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr

	.global stack_pop
	.type stack_pop , %function
stack_pop:
	push {r4, r5, r6, r7, r8, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L293:
	str r0, [fp, #-8]
	ldr r10, [fp, #-8]
	ldr r4, [fp, #-8]
	mov r5, #0
	mov r6, #4
	mul r6, r5, r6
	add r5, r4, r6
	ldr r4, [r5]
	mov r5, #4
	mul r5, r4, r5
	add r4, r10, r5
	ldr r5, [r4]
	str r5, [fp, #-4]
	ldr r6, [fp, #-8]
	mov r4, #0
	mov r5, #4
	mul r5, r4, r5
	add r4, r6, r5
	ldr r5, [r4]
	sub r4, r5, #1
	ldr r5, [fp, #-8]
	mov r6, #0
	mov r7, #4
	mul r7, r6, r7
	add r6, r5, r7
	str r4, [r6]
	ldr r8, [fp, #-4]
	mov r0, r8
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L303:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr

	.global stack_peek
	.type stack_peek , %function
stack_peek:
	push {r4, r5, r6, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L304:
	str r0, [fp, #-4]
	ldr r10, [fp, #-4]
	ldr r4, [fp, #-4]
	mov r5, #0
	mov r6, #4
	mul r6, r5, r6
	add r5, r4, r6
	ldr r4, [r5]
	mov r5, #4
	mul r5, r4, r5
	add r4, r10, r5
	ldr r5, [r4]
	mov r0, r5
	add sp, sp, #4
	pop {r4, r5, r6, r10, fp, lr}
	bx lr
.L306:
	add sp, sp, #4
	pop {r4, r5, r6, r10, fp, lr}
	bx lr

	.global stack_size
	.type stack_size , %function
stack_size:
	push {r4, r5, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L311:
	str r0, [fp, #-4]
	ldr r10, [fp, #-4]
	mov r4, #0
	mov r5, #4
	mul r5, r4, r5
	add r4, r10, r5
	ldr r5, [r4]
	mov r0, r5
	add sp, sp, #4
	pop {r4, r5, r10, fp, lr}
	bx lr
.L313:
	add sp, sp, #4
	pop {r4, r5, r10, fp, lr}
	bx lr

	.global eval_op
	.type eval_op , %function
eval_op:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #12
.L316:
	str r0, [fp, #-12]
	str r1, [fp, #-8]
	str r2, [fp, #-4]
	ldr r10, [fp, #-12]
	cmp r10, #43
	beq .L320
	b .L324
.L320:
	ldr r9, [fp, #-8]
	ldr r4, [fp, #-4]
	add r5, r9, r4
	mov r0, r5
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L321:
	ldr r6, [fp, #-12]
	cmp r6, #45
	beq .L326
	b .L330
.L322:
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L323:
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L324:
	b .L321
.L325:
	b .L321
.L326:
	ldr r7, [fp, #-8]
	ldr r4, [fp, #-4]
	sub r5, r7, r4
	mov r0, r5
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L327:
	ldr r6, [fp, #-12]
	cmp r6, #42
	beq .L332
	b .L336
.L328:
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L329:
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L330:
	b .L327
.L331:
	b .L327
.L332:
	ldr r8, [fp, #-8]
	ldr r4, [fp, #-4]
	mul r5, r8, r4
	mov r0, r5
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L333:
	ldr r6, [fp, #-12]
	cmp r6, #47
	beq .L338
	b .L342
.L334:
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L335:
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L336:
	b .L333
.L337:
	b .L333
.L338:
	ldr r7, [fp, #-8]
	ldr r4, [fp, #-4]
	sdiv r5, r7, r4
	mov r0, r5
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L339:
	ldr r6, [fp, #-12]
	cmp r6, #37
	beq .L344
	b .L348
.L340:
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L341:
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L342:
	b .L339
.L343:
	b .L339
.L344:
	ldr r8, [fp, #-8]
	ldr r4, [fp, #-4]
	sdiv r5, r8, r4
	mul r4, r5, r4
	sub r5, r8, r4
	mov r0, r5
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L345:
	mov r0, #0
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L346:
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L347:
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L348:
	b .L345
.L349:
	b .L345
.L350:
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global eval
	.type eval , %function
eval:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	ldr r4, =2076
	sub sp, sp, r4
.L351:
	mov r10, #0
	mov r4, #4
	mul r4, r10, r4
	ldr r5, =-2076
	add r6, r5, r4
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
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	b .B0
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
.B0:
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
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
	b .B1
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
.B1:
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	b .B2
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
.B2:
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	ldr r6, addr_cur_token3
	ldr r4, [r6]
	ldr r5, addr_TOKEN_NUM3
	ldr r6, [r5]
	cmp r4, r6
	bne .L356
	b .L360
	b .F3
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
.F3:
.L356:
	bl panic
	mov r7, r0
	mov r0, r7
	ldr r1, =2076
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L357:
	mov r8, #0
	mov r4, #4
	mul r5, r8, r4
	ldr r4, =-2076
	add r6, r4, r5
	add r4, fp, r6
	ldr r5, addr_num4
	ldr r6, [r5]
	mov r0, r4
	mov r1, r6
	bl stack_push
	bl next_token
	mov r7, r0
	b .L362
.L358:
	ldr r1, =2076
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L359:
	ldr r1, =2076
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L360:
	b .L357
.L361:
	b .L357
.L362:
	ldr r8, addr_cur_token4
	ldr r4, [r8]
	ldr r5, addr_TOKEN_OTHER4
	ldr r6, [r5]
	cmp r4, r6
	beq .L363
	b .L367
.L363:
	ldr r7, addr_other4
	ldr r4, [r7]
	str r4, [fp, #-28]
	ldr r5, [fp, #-28]
	mov r0, r5
	bl get_op_prec
	mov r6, r0
	cmp r6, #0
	moveq r8, #1
	movne r8, #0
	cmp r8, #0
	bne .L369
	b .L373
.L364:
	bl next_token
	mov r9, r0
	b .L395
.L365:
	ldr r1, =2076
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L366:
	ldr r1, =2076
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L367:
	b .L364
.L369:
	b .L364
.L370:
	bl next_token
	mov r10, r0
	b .L376
.L372:
	ldr r1, =2076
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L373:
	b .L370
.L374:
	ldr r1, =2076
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L375:
	b .L370
.L376:
	mov r7, #0
	mov r4, #4
	mul r5, r7, r4
	ldr r4, =-1052
	add r6, r4, r5
	add r4, fp, r6
	mov r0, r4
	bl stack_size
	mov r5, r0
	cmp r5, #0
	bne .L379
	b .L381
.L377:
	mov r7, #0
	mov r4, #4
	mul r5, r7, r4
	ldr r4, =-1052
	add r6, r4, r5
	add r4, fp, r6
	mov r0, r4
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
	add r4, r4, r5
	add r6, fp, r4
	mov r0, r6
	bl stack_pop
	mov r5, r0
	str r5, [fp, #-16]
	mov r7, #0
	mov r4, #4
	mul r5, r7, r4
	ldr r4, =-2076
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, [fp, #-24]
	ldr r5, [fp, #-16]
	ldr r7, [fp, #-20]
	mov r0, r4
	mov r1, r5
	mov r2, r7
	bl eval_op
	mov r4, r0
	mov r0, r6
	mov r1, r4
	bl stack_push
	b .L376
.L378:
	mov r5, #0
	mov r4, #4
	mul r6, r5, r4
	ldr r4, =-1052
	add r5, r4, r6
	add r4, fp, r5
	ldr r5, [fp, #-28]
	mov r0, r4
	mov r1, r5
	bl stack_push
	ldr r6, addr_cur_token4
	ldr r4, [r6]
	ldr r5, addr_TOKEN_NUM4
	ldr r6, [r5]
	cmp r4, r6
	bne .L389
	b .L393
.L379:
	mov r7, #0
	mov r4, #4
	mul r4, r7, r4
	ldr r5, =-1052
	add r6, r5, r4
	add r4, fp, r6
	mov r0, r4
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
	bge .L377
	b .L385
.L380:
	ldr r1, =2076
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L381:
	b .L378
.L382:
	ldr r1, =2076
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L383:
	ldr r1, =2076
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L384:
	ldr r1, =2076
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L385:
	b .L378
.L389:
	bl panic
	mov r6, r0
	mov r0, r6
	ldr r1, =2076
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L390:
	mov r8, #0
	mov r4, #4
	mul r5, r8, r4
	ldr r4, =-2076
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, addr_num4
	ldr r5, [r4]
	mov r0, r6
	mov r1, r5
	bl stack_push
	bl next_token
	mov r7, r0
	b .L362
.L391:
	ldr r1, =2076
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L392:
	ldr r1, =2076
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L393:
	b .L390
.L394:
	b .L390
.L395:
	mov r8, #0
	mov r4, #4
	mul r5, r8, r4
	ldr r4, =-1052
	add r4, r4, r5
	add r6, fp, r4
	mov r0, r6
	bl stack_size
	mov r5, r0
	cmp r5, #0
	bne .L396
	b .L399
	b .F4
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
.F4:
.L396:
	mov r7, #0
	mov r4, #4
	mul r5, r7, r4
	ldr r4, =-1052
	add r4, r4, r5
	add r6, fp, r4
	mov r0, r6
	bl stack_pop
	mov r5, r0
	str r5, [fp, #-12]
	mov r7, #0
	mov r4, #4
	mul r5, r7, r4
	ldr r4, =-2076
	add r4, r4, r5
	add r6, fp, r4
	mov r0, r6
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
	b .L395
.L397:
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
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L398:
	ldr r1, =2076
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L399:
	b .L397
.L400:
	ldr r1, =2076
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L404:
	ldr r1, =2076
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L405:
	bl getint
	mov r10, r0
	str r10, [fp, #-4]
	bl getch
	mov r9, r0
	bl next_token
	mov r8, r0
	b .L407
.L407:
	ldr r7, [fp, #-4]
	cmp r7, #0
	bne .L408
	b .L411
.L408:
	bl eval
	mov r6, r0
	mov r0, r6
	bl putint
	mov r0, #10
	bl putch
	ldr r5, [fp, #-4]
	sub r4, r5, #1
	str r4, [fp, #-4]
	b .L407
.L409:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L410:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L411:
	b .L409
.L412:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L413:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

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
