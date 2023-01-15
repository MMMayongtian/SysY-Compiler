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
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L174:
	str r0, [fp, #-8]
	ldr r10, =1
	str r10, [fp, #-4]
	b .L177
.L177:
	ldr r9, [fp, #-4]
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-8]
	mul r6, r4, r5
	add r4, r6, #1
	cmp r9, r4
	movle r5, #1
	movgt r5, #0
	ble .L178
	b .L182
.L178:
	ldr r7, =0
	sub r4, r7, #1
	ldr r5, [fp, #-4]
	mov r6, #4
	mul r6, r5, r6
	ldr r7, addr_array0
	add r5, r7, r6
	str r4, [r5]
	ldr r8, [fp, #-4]
	add r4, r8, #1
	str r4, [fp, #-4]
	b .L177
.L179:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L180:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L181:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L182:
	b .L179

	.global findfa
	.type findfa , %function
findfa:
	push {r4, r5, r6, r7, r8, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L183:
	str r0, [fp, #-4]
	ldr r10, [fp, #-4]
	mov r4, #4
	mul r4, r10, r4
	ldr r6, addr_array0
	add r5, r6, r4
	ldr r4, [r5]
	ldr r5, [fp, #-4]
	cmp r4, r5
	beq .L185
	b .L191
.L185:
	ldr r6, [fp, #-4]
	mov r0, r6
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L186:
	ldr r7, [fp, #-4]
	mov r4, #4
	mul r4, r7, r4
	ldr r6, addr_array0
	add r5, r6, r4
	ldr r4, [r5]
	mov r0, r4
	bl findfa
	mov r6, r0
	ldr r4, [fp, #-4]
	mov r5, #4
	mul r5, r4, r5
	ldr r7, addr_array0
	add r4, r7, r5
	str r6, [r4]
	ldr r8, [fp, #-4]
	mov r4, #4
	mul r4, r8, r4
	ldr r6, addr_array0
	add r5, r6, r4
	ldr r4, [r5]
	mov r0, r4
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L187:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L189:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L190:
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L191:
	b .L186
.L192:
	b .L187
.L194:
	b .L187

	.global mmerge
	.type mmerge , %function
mmerge:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L196:
	str r0, [fp, #-16]
	str r1, [fp, #-12]
	ldr r10, [fp, #-16]
	mov r0, r10
	bl findfa
	mov r9, r0
	str r9, [fp, #-8]
	ldr r8, [fp, #-12]
	mov r0, r8
	bl findfa
	mov r7, r0
	str r7, [fp, #-4]
	ldr r6, [fp, #-8]
	ldr r4, [fp, #-4]
	cmp r6, r4
	bne .L201
	b .L205
.L201:
	ldr r5, [fp, #-4]
	ldr r4, [fp, #-8]
	mov r6, #4
	mul r6, r4, r6
	ldr r7, addr_array0
	add r4, r7, r6
	str r5, [r4]
	b .L202
.L202:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L203:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L204:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L205:
	b .L202

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #36
.L206:
	ldr r10, =1
	str r10, [fp, #-36]
	b .L211
.L211:
	ldr r9, [fp, #-36]
	cmp r9, #0
	bne .L212
	b .L215
.L212:
	ldr r8, [fp, #-36]
	sub r4, r8, #1
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
	b .L220
.L213:
	mov r0, #0
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L214:
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L215:
	b .L213
.L216:
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L220:
	ldr r6, [fp, #-20]
	ldr r4, [fp, #-32]
	cmp r6, r4
	movlt r5, #1
	movge r5, #0
	blt .L221
	b .L225
.L221:
	bl getint
	mov r7, r0
	str r7, [fp, #-28]
	bl getint
	mov r8, r0
	str r8, [fp, #-24]
	ldr r9, [fp, #-16]
	cmp r9, #0
	moveq r10, #1
	movne r10, #0
	cmp r10, #0
	bne .L226
	b .L230
.L222:
	ldr r6, [fp, #-16]
	cmp r6, #0
	moveq r4, #1
	movne r4, #0
	cmp r4, #0
	bne .L299
	b .L303
.L223:
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L224:
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L225:
	b .L222
.L226:
	ldr r5, addr_n0
	ldr r4, [r5]
	ldr r5, [fp, #-28]
	sub r6, r5, #1
	mul r5, r4, r6
	ldr r4, [fp, #-24]
	add r6, r5, r4
	str r6, [fp, #-8]
	ldr r7, [fp, #-8]
	ldr r4, [fp, #-8]
	mov r5, #4
	mul r5, r4, r5
	ldr r6, addr_array0
	add r4, r6, r5
	str r7, [r4]
	ldr r8, [fp, #-28]
	cmp r8, #1
	beq .L233
	b .L237
.L227:
	ldr r9, [fp, #-20]
	add r4, r9, #1
	str r4, [fp, #-20]
	b .L220
.L229:
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L230:
	b .L227
.L231:
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L233:
	mov r5, #0
	mov r4, #4
	mul r6, r5, r4
	ldr r4, addr_array0
	add r5, r4, r6
	ldr r4, =0
	str r4, [r5]
	ldr r6, [fp, #-8]
	mov r0, r6
	mov r1, #0
	bl mmerge
	b .L234
.L234:
	ldr r7, [fp, #-28]
	ldr r4, addr_n0
	ldr r5, [r4]
	cmp r7, r5
	beq .L238
	b .L242
.L235:
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L236:
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L237:
	b .L234
.L238:
	ldr r6, [fp, #-12]
	ldr r4, [fp, #-12]
	mov r5, #4
	mul r5, r4, r5
	ldr r7, addr_array0
	add r4, r7, r5
	str r6, [r4]
	ldr r8, [fp, #-8]
	ldr r4, [fp, #-12]
	mov r0, r8
	mov r1, r4
	bl mmerge
	b .L239
.L239:
	ldr r5, [fp, #-24]
	ldr r4, addr_n0
	ldr r6, [r4]
	cmp r5, r6
	movlt r7, #1
	movge r7, #0
	blt .L245
	b .L248
.L240:
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L241:
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L242:
	b .L239
.L243:
	ldr r8, [fp, #-8]
	ldr r4, [fp, #-8]
	add r5, r4, #1
	mov r0, r8
	mov r1, r5
	bl mmerge
	b .L244
.L244:
	ldr r6, [fp, #-24]
	cmp r6, #1
	movgt r7, #1
	movle r7, #0
	bgt .L255
	b .L258
.L245:
	ldr r9, [fp, #-8]
	add r4, r9, #1
	mov r5, #4
	mul r4, r4, r5
	ldr r5, addr_array0
	add r6, r5, r4
	ldr r4, [r6]
	ldr r5, =0
	sub r6, r5, #1
	cmp r4, r6
	bne .L243
	b .L252
.L246:
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L247:
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L248:
	b .L244
.L250:
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L251:
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L252:
	b .L244
.L253:
	ldr r7, [fp, #-8]
	ldr r4, [fp, #-8]
	sub r5, r4, #1
	mov r0, r7
	mov r1, r5
	bl mmerge
	b .L254
.L254:
	ldr r6, [fp, #-28]
	ldr r4, addr_n0
	ldr r5, [r4]
	cmp r6, r5
	movlt r7, #1
	movge r7, #0
	blt .L265
	b .L268
.L255:
	ldr r8, [fp, #-8]
	sub r4, r8, #1
	mov r5, #4
	mul r4, r4, r5
	ldr r5, addr_array0
	add r6, r5, r4
	ldr r4, [r6]
	ldr r5, =0
	sub r6, r5, #1
	cmp r4, r6
	bne .L253
	b .L262
	b .F0
.LTORG
addr_array0:
	.word array
addr_n0:
	.word n
.F0:
.L256:
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L257:
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L258:
	b .L254
.L260:
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L261:
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L262:
	b .L254
.L263:
	ldr r7, [fp, #-8]
	ldr r4, [fp, #-8]
	ldr r5, addr_n1
	ldr r6, [r5]
	add r5, r4, r6
	mov r0, r7
	mov r1, r5
	bl mmerge
	b .L264
.L264:
	ldr r8, [fp, #-28]
	cmp r8, #1
	movgt r9, #1
	movle r9, #0
	bgt .L275
	b .L278
.L265:
	ldr r10, [fp, #-8]
	ldr r4, addr_n1
	ldr r5, [r4]
	add r4, r10, r5
	mov r5, #4
	mul r4, r4, r5
	ldr r5, addr_array1
	add r6, r5, r4
	ldr r4, [r6]
	ldr r5, =0
	sub r6, r5, #1
	cmp r4, r6
	bne .L263
	b .L272
.L266:
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L267:
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L268:
	b .L264
.L270:
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L271:
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L272:
	b .L264
.L273:
	ldr r7, [fp, #-8]
	ldr r4, [fp, #-8]
	ldr r5, addr_n1
	ldr r6, [r5]
	sub r5, r4, r6
	mov r0, r7
	mov r1, r5
	bl mmerge
	b .L274
.L274:
	mov r8, #0
	mov r4, #4
	mul r4, r8, r4
	ldr r6, addr_array1
	add r5, r6, r4
	ldr r4, [r5]
	ldr r5, =0
	sub r6, r5, #1
	cmp r4, r6
	bne .L286
	b .L290
.L275:
	ldr r7, [fp, #-8]
	ldr r4, addr_n1
	ldr r5, [r4]
	sub r4, r7, r5
	mov r5, #4
	mul r4, r4, r5
	ldr r5, addr_array1
	add r6, r5, r4
	ldr r4, [r6]
	ldr r5, =0
	sub r6, r5, #1
	cmp r4, r6
	bne .L273
	b .L282
.L276:
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L277:
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L278:
	b .L274
.L280:
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L281:
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L282:
	b .L274
.L283:
	ldr r7, =1
	str r7, [fp, #-16]
	ldr r8, [fp, #-20]
	add r4, r8, #1
	str r4, [fp, #-4]
	ldr r5, [fp, #-4]
	mov r0, r5
	bl putint
	mov r0, #10
	bl putch
	b .L284
.L284:
	b .L227
.L285:
	mov r0, #0
	bl findfa
	mov r6, r0
	ldr r4, [fp, #-12]
	mov r0, r4
	bl findfa
	mov r4, r0
	cmp r6, r4
	beq .L283
	b .L297
.L286:
	ldr r5, [fp, #-12]
	mov r4, #4
	mul r5, r5, r4
	ldr r4, addr_array1
	add r6, r4, r5
	ldr r4, [r6]
	ldr r5, =0
	sub r6, r5, #1
	cmp r4, r6
	bne .L285
	b .L294
.L288:
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L289:
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L290:
	b .L284
.L292:
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L293:
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L294:
	b .L284
.L295:
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L296:
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L297:
	b .L284
.L299:
	ldr r7, =0
	sub r4, r7, #1
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	b .L300
.L300:
	b .L211
.L302:
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L303:
	b .L300
.L304:
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L305:
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

addr_array1:
	.word array
addr_n1:
	.word n
