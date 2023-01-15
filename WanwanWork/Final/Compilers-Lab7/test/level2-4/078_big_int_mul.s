	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.section .rodata
	.global len
	.align 4
	.size len, 4
len:
	.word 20
	.text
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	ldr r4, =548
	sub sp, sp, r4
.L129:
	mov r4, #0
	mov r5, #4
	mul r6, r4, r5
	ldr r4, =-528
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =1
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =2
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =3
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =4
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =5
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =6
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =7
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =8
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =9
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =1
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =2
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =3
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =4
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =5
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =6
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =7
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =8
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =9
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	mov r6, #0
	mov r4, #4
	mul r5, r6, r4
	ldr r4, =-448
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, =2
	str r4, [r6]
	add r4, r6, #4
	ldr r5, =3
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =4
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =2
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =5
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =7
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =9
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =9
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =1
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =9
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =8
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =7
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =6
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =4
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =3
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =2
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =1
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =2
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =2
	str r5, [r4]
	ldr r6, addr_len0
	ldr r4, [r6]
	ldr r5, =-368
	str r4, [fp, r5]
	ldr r6, addr_len0
	ldr r4, [r6]
	ldr r5, =-364
	str r4, [fp, r5]
	mov r6, #0
	mov r4, #4
	mul r5, r6, r4
	mov r4, #-160
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
	ldr r6, =0
	ldr r4, =-548
	str r6, [fp, r4]
	b .L145
	b .F0
.LTORG
addr_len0:
	.word len
.F0:
.L145:
	ldr r5, =-548
	ldr r4, [fp, r5]
	ldr r6, =-368
	ldr r5, [fp, r6]
	cmp r4, r5
	movlt r7, #1
	movge r7, #0
	blt .L146
	b .L150
.L146:
	ldr r4, =-548
	ldr r8, [fp, r4]
	ldr r4, =0
	add r5, r4, r8
	mov r4, #4
	mul r6, r5, r4
	ldr r4, =-528
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, [r5]
	ldr r6, =-548
	ldr r5, [fp, r6]
	ldr r6, =0
	add r7, r6, r5
	mov r5, #4
	mul r5, r7, r5
	ldr r6, =-360
	add r6, r6, r5
	add r5, fp, r6
	str r4, [r5]
	ldr r4, =-548
	ldr r7, [fp, r4]
	add r4, r7, #1
	ldr r5, =-548
	str r4, [fp, r5]
	b .L145
.L147:
	ldr r6, =0
	ldr r4, =-548
	str r6, [fp, r4]
	b .L156
.L148:
	ldr r1, =548
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L149:
	ldr r1, =548
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L150:
	b .L147
.L156:
	ldr r4, =-548
	ldr r5, [fp, r4]
	ldr r6, =-364
	ldr r4, [fp, r6]
	cmp r5, r4
	movlt r7, #1
	movge r7, #0
	blt .L157
	b .L161
.L157:
	ldr r4, =-548
	ldr r8, [fp, r4]
	ldr r4, =0
	add r5, r4, r8
	mov r4, #4
	mul r6, r5, r4
	ldr r4, =-448
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, [r5]
	ldr r5, =-548
	ldr r6, [fp, r5]
	ldr r5, =0
	add r7, r5, r6
	mov r5, #4
	mul r5, r7, r5
	ldr r6, =-260
	add r6, r6, r5
	add r5, fp, r6
	str r4, [r5]
	ldr r4, =-548
	ldr r7, [fp, r4]
	add r4, r7, #1
	ldr r5, =-548
	str r4, [fp, r5]
	b .L156
.L158:
	ldr r6, =-368
	ldr r4, [fp, r6]
	ldr r6, =-364
	ldr r5, [fp, r6]
	add r6, r4, r5
	sub r4, r6, #1
	ldr r5, =-536
	str r4, [fp, r5]
	ldr r6, =0
	ldr r4, =-548
	str r6, [fp, r4]
	b .L167
.L159:
	ldr r1, =548
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L160:
	ldr r1, =548
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L161:
	b .L158
.L167:
	ldr r4, =-548
	ldr r5, [fp, r4]
	ldr r6, =-536
	ldr r4, [fp, r6]
	cmp r5, r4
	movle r7, #1
	movgt r7, #0
	ble .L168
	b .L172
.L168:
	ldr r8, =-548
	ldr r4, [fp, r8]
	ldr r5, =0
	add r6, r5, r4
	mov r4, #4
	mul r5, r6, r4
	mov r4, #-160
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, =0
	str r4, [r6]
	ldr r4, =-548
	ldr r5, [fp, r4]
	add r4, r5, #1
	ldr r5, =-548
	str r4, [fp, r5]
	b .L167
	b .F1
.LTORG
addr_len1:
	.word len
.F1:
.L169:
	ldr r6, =0
	ldr r4, =-532
	str r6, [fp, r4]
	ldr r4, =-364
	ldr r5, [fp, r4]
	sub r4, r5, #1
	ldr r5, =-548
	str r4, [fp, r5]
	b .L175
.L170:
	ldr r1, =548
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L171:
	ldr r1, =548
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L172:
	b .L169
.L175:
	ldr r4, =-548
	ldr r6, [fp, r4]
	ldr r4, =0
	sub r5, r4, #1
	cmp r6, r5
	movgt r7, #1
	movle r7, #0
	bgt .L176
	b .L180
.L176:
	ldr r8, =-548
	ldr r4, [fp, r8]
	ldr r5, =0
	add r6, r5, r4
	mov r4, #4
	mul r5, r6, r4
	ldr r4, =-260
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, [r6]
	ldr r5, =-540
	str r4, [fp, r5]
	ldr r4, =-368
	ldr r6, [fp, r4]
	sub r4, r6, #1
	ldr r5, =-544
	str r4, [fp, r5]
	b .L184
.L177:
	ldr r6, =0
	add r4, r6, #0
	mov r5, #4
	mul r6, r4, r5
	mov r4, #-160
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, [r5]
	ldr r5, =0
	cmp r4, r5
	movne r6, #1
	moveq r6, #0
	bne .L211
	b .L218
.L178:
	ldr r1, =548
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L179:
	ldr r1, =548
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L180:
	b .L177
.L184:
	ldr r7, =-544
	ldr r4, [fp, r7]
	ldr r5, =0
	sub r6, r5, #1
	cmp r4, r6
	movgt r7, #1
	movle r7, #0
	bgt .L185
	b .L189
.L185:
	ldr r4, =-536
	ldr r8, [fp, r4]
	ldr r4, =0
	add r5, r4, r8
	mov r4, #4
	mul r6, r5, r4
	mov r4, #-160
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, [r5]
	ldr r6, =-540
	ldr r5, [fp, r6]
	ldr r7, =-544
	ldr r6, [fp, r7]
	ldr r7, =0
	add r8, r7, r6
	mov r6, #4
	mul r6, r8, r6
	ldr r7, =-360
	add r7, r7, r6
	add r6, fp, r7
	ldr r7, [r6]
	mul r6, r5, r7
	add r5, r4, r6
	ldr r4, =-532
	str r5, [fp, r4]
	ldr r4, =-532
	ldr r6, [fp, r4]
	ldr r4, =10
	cmp r6, r4
	movge r5, #1
	movlt r5, #0
	bge .L196
	b .L201
.L186:
	ldr r4, =-536
	ldr r7, [fp, r4]
	ldr r5, =-368
	ldr r4, [fp, r5]
	add r5, r7, r4
	sub r4, r5, #1
	ldr r5, =-536
	str r4, [fp, r5]
	ldr r4, =-548
	ldr r6, [fp, r4]
	sub r4, r6, #1
	ldr r5, =-548
	str r4, [fp, r5]
	b .L175
	b .F2
.LTORG
addr_len2:
	.word len
.F2:
.L187:
	ldr r1, =548
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L188:
	ldr r1, =548
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L189:
	b .L186
.L196:
	ldr r4, =-532
	ldr r6, [fp, r4]
	ldr r5, =-536
	ldr r4, [fp, r5]
	ldr r5, =0
	add r7, r5, r4
	mov r4, #4
	mul r5, r7, r4
	mov r4, #-160
	add r4, r4, r5
	add r5, fp, r4
	str r6, [r5]
	ldr r4, =-536
	ldr r7, [fp, r4]
	sub r4, r7, #1
	ldr r5, =0
	add r6, r5, r4
	mov r4, #4
	mul r5, r6, r4
	mov r4, #-160
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, [r6]
	ldr r6, =-532
	ldr r5, [fp, r6]
	ldr r6, =10
	sdiv r7, r5, r6
	add r5, r4, r7
	ldr r6, =-536
	ldr r4, [fp, r6]
	sub r6, r4, #1
	ldr r4, =0
	add r7, r4, r6
	mov r4, #4
	mul r6, r7, r4
	mov r4, #-160
	add r4, r4, r6
	add r6, fp, r4
	str r5, [r6]
	b .L198
.L197:
	ldr r4, =-532
	ldr r7, [fp, r4]
	ldr r5, =-536
	ldr r4, [fp, r5]
	ldr r5, =0
	add r6, r5, r4
	mov r4, #4
	mul r4, r6, r4
	mov r5, #-160
	add r5, r5, r4
	add r4, fp, r5
	str r7, [r4]
	b .L198
.L198:
	ldr r4, =-544
	ldr r6, [fp, r4]
	sub r4, r6, #1
	ldr r5, =-544
	str r4, [fp, r5]
	ldr r4, =-536
	ldr r6, [fp, r4]
	sub r4, r6, #1
	ldr r5, =-536
	str r4, [fp, r5]
	b .L184
.L199:
	ldr r1, =548
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L200:
	ldr r1, =548
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L201:
	b .L197
.L211:
	ldr r6, =0
	add r4, r6, #0
	mov r5, #4
	mul r6, r4, r5
	mov r4, #-160
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, [r5]
	mov r0, r4
	bl putint
	b .L212
.L212:
	ldr r6, =1
	ldr r4, =-548
	str r6, [fp, r4]
	b .L222
.L216:
	ldr r1, =548
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L217:
	ldr r1, =548
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L218:
	b .L212
.L222:
	ldr r4, =-548
	ldr r5, [fp, r4]
	ldr r6, =-368
	ldr r4, [fp, r6]
	ldr r7, =-364
	ldr r6, [fp, r7]
	add r7, r4, r6
	sub r4, r7, #1
	cmp r5, r4
	movle r6, #1
	movgt r6, #0
	ble .L223
	b .L227
.L223:
	ldr r4, =-548
	ldr r8, [fp, r4]
	ldr r4, =0
	add r5, r4, r8
	mov r4, #4
	mul r6, r5, r4
	mov r4, #-160
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, [r5]
	mov r0, r4
	bl putint
	ldr r4, =-548
	ldr r6, [fp, r4]
	add r4, r6, #1
	ldr r5, =-548
	str r4, [fp, r5]
	b .L222
	b .F3
.LTORG
addr_len3:
	.word len
.F3:
.L224:
	ldr r6, =0
	mov r0, r6
	ldr r1, =548
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L225:
	ldr r1, =548
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L226:
	ldr r1, =548
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L227:
	b .L224
.L231:
	ldr r1, =548
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr

addr_len4:
	.word len
