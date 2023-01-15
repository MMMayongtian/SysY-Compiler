	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global a
	.align 4
	.size a, 4
a:
	.word 0
	.global b
	.align 4
	.size b, 4
b:
	.word 0
	.global d
	.align 4
	.size d, 4
d:
	.word 0
	.text
	.global set_a
	.type set_a , %function
set_a:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L121:
	str r0, [fp, #-4]
	ldr r4, [fp, #-4]
	ldr r5, addr_a0
	str r4, [r5]
	ldr r6, addr_a0
	ldr r4, [r6]
	mov r0, r4
	add sp, sp, #4
	pop {r4, r5, r6, fp, lr}
	bx lr
.L123:
	add sp, sp, #4
	pop {r4, r5, r6, fp, lr}
	bx lr

	.global set_b
	.type set_b , %function
set_b:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L124:
	str r0, [fp, #-4]
	ldr r4, [fp, #-4]
	ldr r5, addr_b0
	str r4, [r5]
	ldr r6, addr_b0
	ldr r4, [r6]
	mov r0, r4
	add sp, sp, #4
	pop {r4, r5, r6, fp, lr}
	bx lr
.L126:
	add sp, sp, #4
	pop {r4, r5, r6, fp, lr}
	bx lr

	.global set_d
	.type set_d , %function
set_d:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L127:
	str r0, [fp, #-4]
	ldr r4, [fp, #-4]
	ldr r5, addr_d0
	str r4, [r5]
	ldr r6, addr_d0
	ldr r4, [r6]
	mov r0, r4
	add sp, sp, #4
	pop {r4, r5, r6, fp, lr}
	bx lr
.L129:
	add sp, sp, #4
	pop {r4, r5, r6, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #24
.L130:
	ldr r4, =2
	ldr r5, addr_a0
	str r4, [r5]
	ldr r6, =3
	ldr r4, addr_b0
	str r6, [r4]
	mov r0, #0
	bl set_a
	mov r5, r0
	ldr r4, =0
	cmp r5, r4
	movne r6, #1
	moveq r6, #0
	bne .L133
	b .L135
.L131:
	b .L132
.L132:
	ldr r7, addr_a0
	ldr r4, [r7]
	mov r0, r4
	bl putint
	mov r0, #32
	bl putch
	ldr r5, addr_b0
	ldr r4, [r5]
	mov r0, r4
	bl putint
	mov r0, #32
	bl putch
	ldr r6, =2
	ldr r4, addr_a0
	str r6, [r4]
	ldr r5, =3
	ldr r4, addr_b0
	str r5, [r4]
	mov r0, #0
	bl set_a
	mov r6, r0
	ldr r4, =0
	cmp r6, r4
	movne r5, #1
	moveq r5, #0
	bne .L142
	b .L144
.L133:
	mov r0, #1
	bl set_b
	mov r7, r0
	ldr r4, =0
	cmp r7, r4
	movne r5, #1
	moveq r5, #0
	bne .L131
	b .L138
.L134:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L135:
	b .L132
.L136:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L137:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L138:
	b .L132
.L139:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L140:
	b .L141
.L141:
	ldr r6, addr_a0
	ldr r4, [r6]
	mov r0, r4
	bl putint
	mov r0, #32
	bl putch
	ldr r5, addr_b0
	ldr r4, [r5]
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	ldr r6, =1
	str r6, [fp, #-24]
	ldr r7, =2
	ldr r4, addr_d0
	str r7, [r4]
	ldr r5, [fp, #-24]
	ldr r4, =1
	cmp r5, r4
	movge r6, #1
	movlt r6, #0
	bge .L152
	b .L155
.L142:
	mov r0, #1
	bl set_b
	mov r7, r0
	ldr r4, =0
	cmp r7, r4
	movne r5, #1
	moveq r5, #0
	bne .L140
	b .L147
.L143:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L144:
	b .L141
.L145:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L146:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L147:
	b .L141
.L148:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L150:
	b .L151
.L151:
	ldr r6, addr_d0
	ldr r4, [r6]
	mov r0, r4
	bl putint
	mov r0, #32
	bl putch
	ldr r5, [fp, #-24]
	ldr r4, =1
	cmp r5, r4
	movle r6, #1
	movgt r6, #0
	ble .L159
	b .L164
	b .F0
.LTORG
addr_a0:
	.word a
addr_b0:
	.word b
addr_d0:
	.word d
.F0:
.L152:
	mov r0, #3
	bl set_d
	mov r7, r0
	ldr r4, =0
	cmp r7, r4
	movne r5, #1
	moveq r5, #0
	bne .L150
	b .L157
.L153:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L154:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L155:
	b .L151
.L156:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L157:
	b .L151
.L158:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L159:
	b .L160
.L160:
	ldr r6, addr_d1
	ldr r4, [r6]
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	ldr r5, =2
	add r4, r5, #1
	ldr r5, =3
	sub r6, r5, r4
	ldr r4, =16
	cmp r4, r6
	movge r5, #1
	movlt r5, #0
	bge .L168
	b .L172
.L161:
	mov r0, #4
	bl set_d
	mov r7, r0
	ldr r4, =0
	cmp r7, r4
	movne r5, #1
	moveq r5, #0
	bne .L159
	b .L166
.L162:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L163:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L164:
	b .L161
.L165:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L166:
	b .L160
.L167:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L168:
	mov r0, #65
	bl putch
	b .L169
.L169:
	ldr r6, =25
	sub r4, r6, #7
	ldr r5, =6
	ldr r6, =3
	mul r7, r5, r6
	ldr r5, =36
	sub r6, r5, r7
	cmp r4, r6
	movne r8, #1
	moveq r8, #0
	bne .L173
	b .L177
.L170:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L171:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L172:
	b .L169
.L173:
	mov r0, #66
	bl putch
	b .L174
.L174:
	ldr r9, =1
	ldr r4, =8
	cmp r9, r4
	movlt r5, #1
	movge r5, #0
	ldr r6, =7
	ldr r4, =2
	sdiv r5, r6, r4
	mul r4, r5, r4
	sub r5, r6, r4
	ldr r4, =1
	cmp r4, r5
	movne r6, #1
	moveq r6, #0
	bne .L178
	b .L185
.L175:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L176:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L177:
	b .L174
.L178:
	mov r0, #67
	bl putch
	b .L179
.L179:
	ldr r7, =3
	ldr r4, =4
	cmp r7, r4
	movgt r5, #1
	movle r5, #0
	ldr r6, =0
	ldr r4, =0
	cmp r6, r4
	moveq r5, #1
	movne r5, #0
	beq .L186
	b .L193
	b .F1
.LTORG
addr_a1:
	.word a
addr_b1:
	.word b
addr_d1:
	.word d
.F1:
.L180:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L181:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L182:
	b .L181
.L183:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L184:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L185:
	b .L179
.L186:
	mov r0, #68
	bl putch
	b .L187
.L187:
	ldr r7, =102
	ldr r4, =63
	cmp r7, r4
	movle r5, #1
	movgt r5, #0
	ldr r6, =1
	ldr r4, =0
	cmp r6, r4
	moveq r5, #1
	movne r5, #0
	beq .L194
	b .L201
.L188:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L189:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L190:
	b .L189
.L191:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L192:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L193:
	b .L187
.L194:
	mov r0, #69
	bl putch
	b .L195
.L195:
	ldr r7, =5
	sub r4, r7, #6
	ldr r5, =0
	ldr r6, =0
	cmp r5, r6
	movne r5, #1
	moveq r5, #0
	moveq r5, #1
	movne r5, #0
	ldr r6, =0
	sub r7, r6, r5
	cmp r4, r7
	moveq r8, #1
	movne r8, #0
	beq .L202
	b .L207
.L196:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L197:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L198:
	b .L197
.L199:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L200:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L201:
	b .L195
.L202:
	mov r0, #70
	bl putch
	b .L203
.L203:
	mov r0, #10
	bl putch
	ldr r9, =0
	str r9, [fp, #-20]
	ldr r10, =1
	str r10, [fp, #-16]
	ldr r5, =2
	str r5, [fp, #-12]
	ldr r6, =3
	str r6, [fp, #-8]
	ldr r4, =4
	str r4, [fp, #-4]
	b .L213
.L205:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L206:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L207:
	b .L203
.L213:
	ldr r7, [fp, #-20]
	ldr r4, =0
	cmp r7, r4
	movne r5, #1
	moveq r5, #0
	bne .L216
	b .L218
.L214:
	mov r0, #32
	bl putch
	b .L213
.L215:
	ldr r6, [fp, #-20]
	ldr r4, =0
	cmp r6, r4
	movne r5, #1
	moveq r5, #0
	bne .L223
	b .L227
.L216:
	ldr r7, [fp, #-16]
	ldr r4, =0
	cmp r7, r4
	movne r5, #1
	moveq r5, #0
	bne .L214
	b .L221
	b .F2
.LTORG
addr_a2:
	.word a
addr_b2:
	.word b
addr_d2:
	.word d
.F2:
.L217:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L218:
	b .L215
.L219:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L220:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L221:
	b .L215
.L222:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L223:
	mov r0, #67
	bl putch
	b .L224
.L224:
	ldr r6, [fp, #-20]
	ldr r4, [fp, #-16]
	cmp r6, r4
	movge r5, #1
	movlt r5, #0
	bge .L232
	b .L237
.L225:
	ldr r7, [fp, #-16]
	ldr r4, =0
	cmp r7, r4
	movne r5, #1
	moveq r5, #0
	bne .L223
	b .L230
.L226:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L227:
	b .L225
.L228:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L229:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L230:
	b .L224
.L231:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L232:
	mov r0, #72
	bl putch
	b .L233
.L233:
	ldr r6, [fp, #-12]
	ldr r4, [fp, #-16]
	cmp r6, r4
	movge r5, #1
	movlt r5, #0
	bge .L243
	b .L246
.L234:
	ldr r7, [fp, #-16]
	ldr r4, [fp, #-20]
	cmp r7, r4
	movle r5, #1
	movgt r5, #0
	ble .L232
	b .L240
.L235:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L236:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L237:
	b .L234
.L238:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L239:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L240:
	b .L233
.L241:
	mov r0, #73
	bl putch
	b .L242
.L242:
	ldr r6, [fp, #-20]
	ldr r4, [fp, #-16]
	ldr r5, =0
	cmp r4, r5
	movne r4, #1
	moveq r4, #0
	moveq r4, #1
	movne r4, #0
	ldr r4, =0
	cmp r6, r4
	moveq r5, #1
	movne r5, #0
	beq .L253
	b .L257
.L243:
	ldr r7, [fp, #-4]
	ldr r4, [fp, #-8]
	cmp r7, r4
	movne r5, #1
	moveq r5, #0
	bne .L241
	b .L249
.L244:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L245:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L246:
	b .L242
.L247:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L248:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L249:
	b .L242
.L250:
	mov r0, #74
	bl putch
	b .L251
.L251:
	ldr r6, [fp, #-20]
	ldr r4, [fp, #-16]
	ldr r5, =0
	cmp r4, r5
	movne r4, #1
	moveq r4, #0
	moveq r4, #1
	movne r4, #0
	ldr r4, =0
	cmp r6, r4
	moveq r5, #1
	movne r5, #0
	beq .L264
	b .L270
	b .F3
.LTORG
addr_a3:
	.word a
addr_b3:
	.word b
addr_d3:
	.word d
.F3:
.L252:
	ldr r7, [fp, #-4]
	ldr r4, [fp, #-4]
	cmp r7, r4
	movge r5, #1
	movlt r5, #0
	bge .L250
	b .L263
.L253:
	ldr r6, [fp, #-8]
	ldr r4, [fp, #-8]
	cmp r6, r4
	movlt r5, #1
	movge r5, #0
	blt .L250
	b .L260
.L255:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L256:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L257:
	b .L252
.L258:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L259:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L260:
	b .L252
.L261:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L262:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L263:
	b .L251
.L264:
	mov r0, #75
	bl putch
	b .L265
.L265:
	mov r0, #10
	bl putch
	ldr r7, =0
	mov r0, r7
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L266:
	ldr r8, [fp, #-8]
	ldr r4, [fp, #-8]
	cmp r8, r4
	movlt r5, #1
	movge r5, #0
	blt .L271
	b .L274
.L268:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L269:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L270:
	b .L266
.L271:
	ldr r6, [fp, #-4]
	ldr r4, [fp, #-4]
	cmp r6, r4
	movge r5, #1
	movlt r5, #0
	bge .L264
	b .L277
.L272:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L273:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L274:
	b .L265
.L275:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L276:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L277:
	b .L265
.L278:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

addr_a4:
	.word a
addr_b4:
	.word b
addr_d4:
	.word d
