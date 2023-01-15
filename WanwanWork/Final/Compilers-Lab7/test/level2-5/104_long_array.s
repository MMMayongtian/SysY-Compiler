	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.section .rodata
	.global N
	.align 4
	.size N, 4
N:
	.word 10000
	.text
	.global long_array
	.type long_array , %function
long_array:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	ldr r4, =120020
	sub sp, sp, r4
.L136:
	ldr r4, =-120020
	str r0, [fp, r4]
	ldr r5, =0
	str r5, [fp, #-16]
	b .L142
.L142:
	ldr r6, [fp, #-16]
	ldr r4, addr_N0
	ldr r5, [r4]
	cmp r6, r5
	movlt r7, #1
	movge r7, #0
	blt .L143
	b .L147
.L143:
	ldr r8, [fp, #-16]
	ldr r4, [fp, #-16]
	mul r5, r8, r4
	ldr r4, =10
	sdiv r6, r5, r4
	mul r4, r6, r4
	sub r6, r5, r4
	ldr r4, [fp, #-16]
	ldr r5, =0
	add r7, r5, r4
	mov r4, #4
	mul r4, r7, r4
	ldr r5, =-120016
	add r5, r5, r4
	add r4, fp, r5
	str r6, [r4]
	ldr r7, [fp, #-16]
	add r4, r7, #1
	str r4, [fp, #-16]
	b .L142
.L144:
	ldr r5, =0
	str r5, [fp, #-16]
	b .L150
.L145:
	ldr r1, =120020
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L146:
	ldr r1, =120020
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L147:
	b .L144
.L150:
	ldr r6, [fp, #-16]
	ldr r4, addr_N0
	ldr r5, [r4]
	cmp r6, r5
	movlt r7, #1
	movge r7, #0
	blt .L151
	b .L155
.L151:
	ldr r8, [fp, #-16]
	ldr r4, =0
	add r5, r4, r8
	mov r4, #4
	mul r6, r5, r4
	ldr r4, =-120016
	add r5, r4, r6
	add r4, fp, r5
	ldr r5, [r4]
	ldr r4, [fp, #-16]
	ldr r6, =0
	add r7, r6, r4
	mov r4, #4
	mul r4, r7, r4
	ldr r6, =-120016
	add r6, r6, r4
	add r4, fp, r6
	ldr r6, [r4]
	mul r4, r5, r6
	ldr r5, =10
	sdiv r6, r4, r5
	mul r5, r6, r5
	sub r6, r4, r5
	ldr r4, [fp, #-16]
	ldr r5, =0
	add r7, r5, r4
	mov r4, #4
	mul r4, r7, r4
	ldr r5, =-80016
	add r4, r5, r4
	add r5, fp, r4
	str r6, [r5]
	ldr r7, [fp, #-16]
	add r4, r7, #1
	str r4, [fp, #-16]
	b .L150
.L152:
	ldr r5, =0
	str r5, [fp, #-16]
	b .L164
.L153:
	ldr r1, =120020
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L154:
	ldr r1, =120020
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L155:
	b .L152
.L164:
	ldr r6, [fp, #-16]
	ldr r4, addr_N0
	ldr r5, [r4]
	cmp r6, r5
	movlt r7, #1
	movge r7, #0
	blt .L165
	b .L169
.L165:
	ldr r8, [fp, #-16]
	ldr r4, =0
	add r5, r4, r8
	mov r4, #4
	mul r6, r5, r4
	ldr r4, =-80016
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, [r5]
	ldr r5, [fp, #-16]
	ldr r6, =0
	add r7, r6, r5
	mov r5, #4
	mul r5, r7, r5
	ldr r6, =-80016
	add r5, r6, r5
	add r6, fp, r5
	ldr r5, [r6]
	mul r6, r4, r5
	ldr r4, =100
	sdiv r5, r6, r4
	mul r4, r5, r4
	sub r5, r6, r4
	ldr r4, [fp, #-16]
	ldr r6, =0
	add r7, r6, r4
	mov r4, #4
	mul r4, r7, r4
	ldr r6, =-120016
	add r4, r6, r4
	add r6, fp, r4
	ldr r4, [r6]
	add r6, r5, r4
	ldr r4, [fp, #-16]
	ldr r5, =0
	add r7, r5, r4
	mov r4, #4
	mul r4, r7, r4
	ldr r5, =-40016
	add r5, r5, r4
	add r4, fp, r5
	str r6, [r4]
	ldr r7, [fp, #-16]
	add r4, r7, #1
	str r4, [fp, #-16]
	b .L164
	b .F0
.LTORG
addr_N0:
	.word N
.F0:
.L166:
	ldr r5, =0
	str r5, [fp, #-12]
	ldr r6, =0
	str r6, [fp, #-16]
	b .L182
.L167:
	ldr r1, =120020
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L168:
	ldr r1, =120020
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L169:
	b .L166
.L182:
	ldr r8, [fp, #-16]
	ldr r4, addr_N1
	ldr r5, [r4]
	cmp r8, r5
	movlt r6, #1
	movge r6, #0
	blt .L183
	b .L187
.L183:
	ldr r7, [fp, #-16]
	ldr r4, =10
	cmp r7, r4
	movlt r5, #1
	movge r5, #0
	blt .L188
	b .L193
.L184:
	ldr r6, [fp, #-12]
	mov r0, r6
	ldr r1, =120020
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L185:
	ldr r1, =120020
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L186:
	ldr r1, =120020
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L187:
	b .L184
.L188:
	ldr r8, [fp, #-12]
	ldr r4, [fp, #-16]
	ldr r5, =0
	add r6, r5, r4
	mov r4, #4
	mul r4, r6, r4
	ldr r5, =-40016
	add r4, r5, r4
	add r5, fp, r4
	ldr r4, [r5]
	add r5, r8, r4
	ldr r4, =1333
	sdiv r6, r5, r4
	mul r6, r6, r4
	sub r4, r5, r6
	str r4, [fp, #-12]
	ldr r7, [fp, #-12]
	mov r0, r7
	bl putint
	b .L190
.L189:
	ldr r8, [fp, #-16]
	ldr r4, =20
	cmp r8, r4
	movlt r5, #1
	movge r5, #0
	blt .L197
	b .L202
.L190:
	ldr r6, [fp, #-16]
	add r4, r6, #1
	str r4, [fp, #-16]
	b .L182
.L191:
	ldr r1, =120020
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L192:
	ldr r1, =120020
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L193:
	b .L189
.L197:
	ldr r5, addr_N1
	ldr r4, [r5]
	ldr r5, =2
	sdiv r6, r4, r5
	str r6, [fp, #-8]
	b .L204
.L198:
	ldr r7, [fp, #-16]
	ldr r4, =30
	cmp r7, r4
	movlt r5, #1
	movge r5, #0
	blt .L216
	b .L221
.L199:
	b .L190
.L200:
	ldr r1, =120020
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L201:
	ldr r1, =120020
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L202:
	b .L198
.L204:
	ldr r6, [fp, #-8]
	ldr r4, addr_N1
	ldr r5, [r4]
	cmp r6, r5
	movlt r7, #1
	movge r7, #0
	blt .L205
	b .L209
.L205:
	ldr r8, [fp, #-12]
	ldr r4, [fp, #-16]
	ldr r5, =0
	add r6, r5, r4
	mov r4, #4
	mul r4, r6, r4
	ldr r5, =-40016
	add r5, r5, r4
	add r4, fp, r5
	ldr r5, [r4]
	add r4, r8, r5
	ldr r5, [fp, #-8]
	ldr r6, =0
	add r7, r6, r5
	mov r5, #4
	mul r5, r7, r5
	ldr r6, =-120016
	add r6, r6, r5
	add r5, fp, r6
	ldr r6, [r5]
	sub r5, r4, r6
	str r5, [fp, #-12]
	ldr r7, [fp, #-8]
	add r4, r7, #1
	str r4, [fp, #-8]
	b .L204
	b .F1
.LTORG
addr_N1:
	.word N
.F1:
.L206:
	ldr r5, [fp, #-12]
	mov r0, r5
	bl putint
	b .L199
.L207:
	ldr r1, =120020
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L208:
	ldr r1, =120020
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L209:
	b .L206
.L216:
	ldr r6, addr_N2
	ldr r4, [r6]
	ldr r5, =2
	sdiv r6, r4, r5
	str r6, [fp, #-4]
	b .L223
.L217:
	ldr r7, [fp, #-12]
	ldr r4, [fp, #-16]
	ldr r5, =0
	add r6, r5, r4
	mov r4, #4
	mul r4, r6, r4
	ldr r5, =-40016
	add r5, r5, r4
	add r4, fp, r5
	ldr r5, [r4]
	ldr r6, =-120020
	ldr r4, [fp, r6]
	mul r6, r5, r4
	add r4, r7, r6
	ldr r5, =99988
	sdiv r6, r4, r5
	mul r5, r6, r5
	sub r6, r4, r5
	str r6, [fp, #-12]
	b .L218
.L218:
	b .L199
.L219:
	ldr r1, =120020
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L220:
	ldr r1, =120020
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L221:
	b .L217
.L223:
	ldr r7, [fp, #-4]
	ldr r4, addr_N2
	ldr r5, [r4]
	cmp r7, r5
	movlt r6, #1
	movge r6, #0
	blt .L224
	b .L228
.L224:
	ldr r8, [fp, #-4]
	ldr r4, =2233
	cmp r8, r4
	movgt r5, #1
	movle r5, #0
	bgt .L229
	b .L234
.L225:
	ldr r6, [fp, #-12]
	mov r0, r6
	bl putint
	b .L218
.L226:
	ldr r1, =120020
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L227:
	ldr r1, =120020
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L228:
	b .L225
.L229:
	ldr r7, [fp, #-12]
	ldr r4, [fp, #-16]
	ldr r5, =0
	add r6, r5, r4
	mov r4, #4
	mul r4, r6, r4
	ldr r5, =-80016
	add r5, r5, r4
	add r4, fp, r5
	ldr r5, [r4]
	add r4, r7, r5
	ldr r5, [fp, #-4]
	ldr r6, =0
	add r7, r6, r5
	mov r5, #4
	mul r5, r7, r5
	ldr r6, =-120016
	add r5, r6, r5
	add r6, fp, r5
	ldr r5, [r6]
	sub r6, r4, r5
	str r6, [fp, #-12]
	ldr r7, [fp, #-4]
	add r4, r7, #1
	str r4, [fp, #-4]
	b .L231
.L230:
	ldr r5, [fp, #-12]
	ldr r4, [fp, #-16]
	ldr r6, =0
	add r7, r6, r4
	mov r4, #4
	mul r4, r7, r4
	ldr r6, =-120016
	add r6, r6, r4
	add r4, fp, r6
	ldr r6, [r4]
	add r4, r5, r6
	ldr r5, [fp, #-4]
	ldr r6, =0
	add r7, r6, r5
	mov r5, #4
	mul r5, r7, r5
	ldr r6, =-40016
	add r6, r6, r5
	add r5, fp, r6
	ldr r6, [r5]
	add r5, r4, r6
	ldr r4, =13333
	sdiv r6, r5, r4
	mul r4, r6, r4
	sub r6, r5, r4
	str r6, [fp, #-12]
	ldr r7, [fp, #-4]
	add r4, r7, #2
	str r4, [fp, #-4]
	b .L231
	b .F2
.LTORG
addr_N2:
	.word N
.F2:
.L231:
	b .L223
.L232:
	ldr r1, =120020
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L233:
	ldr r1, =120020
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L234:
	b .L230
.L250:
	ldr r1, =120020
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, fp, lr}
	mov fp, sp
	sub sp, sp, #0
.L251:
	mov r0, #9
	bl long_array
	mov r4, r0
	mov r0, r4
	add sp, sp, #0
	pop {r4, fp, lr}
	bx lr
.L252:
	add sp, sp, #0
	pop {r4, fp, lr}
	bx lr

addr_N3:
	.word N
