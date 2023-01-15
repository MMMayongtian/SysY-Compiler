	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global array
	.align 4
	.size array, 440
array:
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.global n
	.align 4
	.size n, 4
n:
	.word 0
	.text
	.global init
	.type init , %function
init:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L174:
	str r0, [fp, #-8]
	ldr r4, =1
	str r4, [fp, #-4]
	b .L177
.L177:
	ldr r5, [fp, #-4]
	ldr r4, [fp, #-8]
	ldr r6, [fp, #-8]
	mul r7, r4, r6
	add r4, r7, #1
	cmp r5, r4
	movle r6, #1
	movgt r6, #0
	ble .L178
	b .L182
.L178:
	ldr r8, =0
	sub r4, r8, #1
	ldr r5, [fp, #-4]
	ldr r6, =0
	add r7, r6, r5
	mov r5, #4
	mul r6, r7, r5
	ldr r7, addr_array0
	add r5, r7, r6
	str r4, [r5]
	ldr r8, [fp, #-4]
	add r4, r8, #1
	str r4, [fp, #-4]
	b .L177
.L179:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L180:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L181:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L182:
	b .L179

	.global findfa
	.type findfa , %function
findfa:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L185:
	str r0, [fp, #-4]
	ldr r4, [fp, #-4]
	ldr r5, =0
	add r6, r5, r4
	mov r4, #4
	mul r4, r6, r4
	ldr r6, addr_array0
	add r5, r6, r4
	ldr r4, [r5]
	ldr r5, [fp, #-4]
	cmp r4, r5
	moveq r6, #1
	movne r6, #0
	beq .L187
	b .L195
.L187:
	ldr r7, [fp, #-4]
	mov r0, r7
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L188:
	ldr r8, [fp, #-4]
	ldr r4, =0
	add r5, r4, r8
	mov r4, #4
	mul r5, r5, r4
	ldr r6, addr_array0
	add r4, r6, r5
	ldr r5, [r4]
	mov r0, r5
	bl findfa
	mov r6, r0
	ldr r4, [fp, #-4]
	ldr r5, =0
	add r7, r5, r4
	mov r4, #4
	mul r4, r7, r4
	ldr r5, addr_array0
	add r7, r5, r4
	str r6, [r7]
	ldr r8, [fp, #-4]
	ldr r4, =0
	add r5, r4, r8
	mov r4, #4
	mul r4, r5, r4
	ldr r5, addr_array0
	add r6, r5, r4
	ldr r4, [r6]
	mov r0, r4
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L189:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L193:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L194:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L195:
	b .L188
.L196:
	b .L189
.L202:
	b .L189

	.global mmerge
	.type mmerge , %function
mmerge:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L206:
	str r0, [fp, #-16]
	str r1, [fp, #-12]
	ldr r4, [fp, #-16]
	mov r0, r4
	bl findfa
	mov r5, r0
	str r5, [fp, #-8]
	ldr r6, [fp, #-12]
	mov r0, r6
	bl findfa
	mov r7, r0
	str r7, [fp, #-4]
	ldr r8, [fp, #-8]
	ldr r4, [fp, #-4]
	cmp r8, r4
	movne r5, #1
	moveq r5, #0
	bne .L211
	b .L215
.L211:
	ldr r6, [fp, #-4]
	ldr r4, [fp, #-8]
	ldr r5, =0
	add r7, r5, r4
	mov r4, #4
	mul r5, r7, r4
	ldr r7, addr_array0
	add r4, r7, r5
	str r6, [r4]
	b .L212
.L212:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L213:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L214:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L215:
	b .L212

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, fp, lr}
	mov fp, sp
	sub sp, sp, #36
.L218:
	ldr r4, =1
	str r4, [fp, #-36]
	b .L223
.L223:
	ldr r5, [fp, #-36]
	ldr r4, =0
	cmp r5, r4
	movne r6, #1
	moveq r6, #0
	bne .L224
	b .L227
.L224:
	ldr r7, [fp, #-36]
	sub r4, r7, #1
	str r4, [fp, #-36]
	ldr r5, =4
	ldr r4, addr_n0
	str r5, [r4]
	ldr r6, =10
	str r6, [fp, #-32]
	ldr r7, =0
	str r7, [fp, #-20]
	ldr r8, =0
	str r8, [fp, #-16]
	ldr r9, addr_n0
	ldr r4, [r9]
	mov r0, r4
	bl init
	ldr r5, addr_n0
	ldr r4, [r5]
	ldr r5, addr_n0
	ldr r6, [r5]
	mul r5, r4, r6
	add r4, r5, #1
	str r4, [fp, #-12]
	b .L232
.L225:
	ldr r6, =0
	mov r0, r6
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L226:
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L227:
	b .L225
.L228:
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L232:
	ldr r7, [fp, #-20]
	ldr r4, [fp, #-32]
	cmp r7, r4
	movlt r5, #1
	movge r5, #0
	blt .L233
	b .L237
.L233:
	bl getint
	mov r6, r0
	str r6, [fp, #-28]
	bl getint
	mov r8, r0
	str r8, [fp, #-24]
	ldr r9, [fp, #-16]
	ldr r4, =0
	cmp r9, r4
	movne r5, #1
	moveq r5, #0
	moveq r6, #1
	movne r6, #0
	ldr r4, =0
	cmp r6, r4
	movne r5, #1
	moveq r5, #0
	bne .L238
	b .L242
.L234:
	ldr r7, [fp, #-16]
	ldr r4, =0
	cmp r7, r4
	movne r5, #1
	moveq r5, #0
	moveq r6, #1
	movne r6, #0
	ldr r4, =0
	cmp r6, r4
	movne r5, #1
	moveq r5, #0
	bne .L329
	b .L333
.L235:
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L236:
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L237:
	b .L234
.L238:
	ldr r7, addr_n0
	ldr r4, [r7]
	ldr r5, [fp, #-28]
	sub r6, r5, #1
	mul r5, r4, r6
	ldr r4, [fp, #-24]
	add r6, r5, r4
	str r6, [fp, #-8]
	ldr r7, [fp, #-8]
	ldr r4, [fp, #-8]
	ldr r5, =0
	add r6, r5, r4
	mov r4, #4
	mul r5, r6, r4
	ldr r6, addr_array0
	add r4, r6, r5
	str r7, [r4]
	ldr r8, [fp, #-28]
	ldr r4, =1
	cmp r8, r4
	moveq r5, #1
	movne r5, #0
	beq .L247
	b .L251
.L239:
	ldr r6, [fp, #-20]
	add r4, r6, #1
	str r4, [fp, #-20]
	b .L232
.L241:
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
	b .F0
.LTORG
addr_array0:
	.word array
addr_n0:
	.word n
.F0:
.L242:
	b .L239
.L243:
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L247:
	ldr r5, =0
	add r4, r5, #0
	mov r5, #4
	mul r6, r4, r5
	ldr r4, addr_array1
	add r5, r4, r6
	ldr r4, =0
	str r4, [r5]
	ldr r6, [fp, #-8]
	mov r0, r6
	mov r1, #0
	bl mmerge
	b .L248
.L248:
	ldr r7, [fp, #-28]
	ldr r4, addr_n1
	ldr r5, [r4]
	cmp r7, r5
	moveq r6, #1
	movne r6, #0
	beq .L254
	b .L258
.L249:
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L250:
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L251:
	b .L248
.L254:
	ldr r8, [fp, #-12]
	ldr r4, [fp, #-12]
	ldr r5, =0
	add r6, r5, r4
	mov r4, #4
	mul r4, r6, r4
	ldr r5, addr_array1
	add r6, r5, r4
	str r8, [r6]
	ldr r7, [fp, #-8]
	ldr r4, [fp, #-12]
	mov r0, r7
	mov r1, r4
	bl mmerge
	b .L255
.L255:
	ldr r5, [fp, #-24]
	ldr r4, addr_n1
	ldr r6, [r4]
	cmp r5, r6
	movlt r7, #1
	movge r7, #0
	blt .L263
	b .L266
.L256:
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L257:
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L258:
	b .L255
.L261:
	ldr r8, [fp, #-8]
	ldr r4, [fp, #-8]
	add r5, r4, #1
	mov r0, r8
	mov r1, r5
	bl mmerge
	b .L262
.L262:
	ldr r6, [fp, #-24]
	ldr r4, =1
	cmp r6, r4
	movgt r5, #1
	movle r5, #0
	bgt .L275
	b .L278
.L263:
	ldr r7, [fp, #-8]
	add r4, r7, #1
	ldr r5, =0
	add r6, r5, r4
	mov r4, #4
	mul r6, r6, r4
	ldr r5, addr_array1
	add r4, r5, r6
	ldr r5, [r4]
	ldr r4, =0
	sub r6, r4, #1
	cmp r5, r6
	movne r7, #1
	moveq r7, #0
	bne .L261
	b .L272
.L264:
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L265:
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L266:
	b .L262
.L270:
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L271:
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L272:
	b .L262
.L273:
	ldr r8, [fp, #-8]
	ldr r4, [fp, #-8]
	sub r5, r4, #1
	mov r0, r8
	mov r1, r5
	bl mmerge
	b .L274
.L274:
	ldr r6, [fp, #-28]
	ldr r4, addr_n1
	ldr r5, [r4]
	cmp r6, r5
	movlt r7, #1
	movge r7, #0
	blt .L287
	b .L290
	b .F1
.LTORG
addr_array1:
	.word array
addr_n1:
	.word n
.F1:
.L275:
	ldr r8, [fp, #-8]
	sub r4, r8, #1
	ldr r5, =0
	add r6, r5, r4
	mov r4, #4
	mul r4, r6, r4
	ldr r6, addr_array2
	add r5, r6, r4
	ldr r4, [r5]
	ldr r5, =0
	sub r6, r5, #1
	cmp r4, r6
	movne r7, #1
	moveq r7, #0
	bne .L273
	b .L284
.L276:
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L277:
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L278:
	b .L274
.L282:
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L283:
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L284:
	b .L274
.L285:
	ldr r8, [fp, #-8]
	ldr r4, [fp, #-8]
	ldr r5, addr_n2
	ldr r6, [r5]
	add r5, r4, r6
	mov r0, r8
	mov r1, r5
	bl mmerge
	b .L286
.L286:
	ldr r7, [fp, #-28]
	ldr r4, =1
	cmp r7, r4
	movgt r5, #1
	movle r5, #0
	bgt .L299
	b .L302
.L287:
	ldr r6, [fp, #-8]
	ldr r4, addr_n2
	ldr r5, [r4]
	add r4, r6, r5
	ldr r5, =0
	add r6, r5, r4
	mov r4, #4
	mul r4, r6, r4
	ldr r6, addr_array2
	add r5, r6, r4
	ldr r4, [r5]
	ldr r5, =0
	sub r6, r5, #1
	cmp r4, r6
	movne r7, #1
	moveq r7, #0
	bne .L285
	b .L296
.L288:
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L289:
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L290:
	b .L286
.L294:
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L295:
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L296:
	b .L286
.L297:
	ldr r8, [fp, #-8]
	ldr r4, [fp, #-8]
	ldr r5, addr_n2
	ldr r6, [r5]
	sub r5, r4, r6
	mov r0, r8
	mov r1, r5
	bl mmerge
	b .L298
.L298:
	ldr r7, =0
	add r4, r7, #0
	mov r5, #4
	mul r4, r4, r5
	ldr r5, addr_array2
	add r6, r5, r4
	ldr r4, [r6]
	ldr r5, =0
	sub r6, r5, #1
	cmp r4, r6
	movne r7, #1
	moveq r7, #0
	bne .L312
	b .L318
.L299:
	ldr r8, [fp, #-8]
	ldr r4, addr_n2
	ldr r5, [r4]
	sub r4, r8, r5
	ldr r5, =0
	add r6, r5, r4
	mov r4, #4
	mul r4, r6, r4
	ldr r6, addr_array2
	add r5, r6, r4
	ldr r4, [r5]
	ldr r5, =0
	sub r6, r5, #1
	cmp r4, r6
	movne r7, #1
	moveq r7, #0
	bne .L297
	b .L308
.L300:
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
	b .F2
.LTORG
addr_array2:
	.word array
addr_n2:
	.word n
.F2:
.L301:
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L302:
	b .L298
.L306:
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L307:
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L308:
	b .L298
.L309:
	ldr r8, =1
	str r8, [fp, #-16]
	ldr r9, [fp, #-20]
	add r4, r9, #1
	str r4, [fp, #-4]
	ldr r5, [fp, #-4]
	mov r0, r5
	bl putint
	mov r0, #10
	bl putch
	b .L310
.L310:
	b .L239
.L311:
	mov r0, #0
	bl findfa
	mov r6, r0
	ldr r4, [fp, #-12]
	mov r0, r4
	bl findfa
	mov r4, r0
	cmp r6, r4
	moveq r5, #1
	movne r5, #0
	beq .L309
	b .L327
.L312:
	ldr r7, [fp, #-12]
	ldr r4, =0
	add r5, r4, r7
	mov r4, #4
	mul r4, r5, r4
	ldr r5, addr_array3
	add r6, r5, r4
	ldr r4, [r6]
	ldr r5, =0
	sub r6, r5, #1
	cmp r4, r6
	movne r7, #1
	moveq r7, #0
	bne .L311
	b .L324
.L316:
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L317:
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L318:
	b .L310
.L322:
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L323:
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L324:
	b .L310
.L325:
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L326:
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L327:
	b .L310
.L329:
	ldr r8, =0
	sub r4, r8, #1
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	b .L330
.L330:
	b .L223
.L332:
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L333:
	b .L330
.L334:
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L335:
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr

addr_array3:
	.word array
addr_n3:
	.word n
