	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global e
	.align 4
	.size e, 1024
e:
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.global book
	.align 4
	.size book, 64
book:
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.global dis
	.align 4
	.size dis, 64
dis:
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
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
	.global m
	.align 4
	.size m, 4
m:
	.word 0
	.global v1
	.align 4
	.size v1, 4
v1:
	.word 0
	.global v2
	.align 4
	.size v2, 4
v2:
	.word 0
	.global w
	.align 4
	.size w, 4
w:
	.word 0
	.section .rodata
	.global INF
	.align 4
	.size INF, 4
INF:
	.word 65535
	.text
	.global Dijkstra
	.type Dijkstra , %function
Dijkstra:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #24
.L140:
	ldr r10, =1
	str r10, [fp, #-24]
	b .L143
.L143:
	ldr r9, [fp, #-24]
	ldr r4, addr_n0
	ldr r5, [r4]
	cmp r9, r5
	movle r6, #1
	movgt r6, #0
	ble .L144
	b .L148
.L144:
	mov r7, #1
	mov r4, #64
	mul r6, r7, r4
	ldr r4, addr_e0
	add r5, r4, r6
	ldr r4, [fp, #-24]
	mov r6, #4
	mul r6, r4, r6
	add r4, r5, r6
	ldr r5, [r4]
	ldr r4, [fp, #-24]
	mov r6, #4
	mul r6, r4, r6
	ldr r7, addr_dis0
	add r4, r7, r6
	str r5, [r4]
	ldr r8, [fp, #-24]
	mov r4, #4
	mul r4, r8, r4
	ldr r6, addr_book0
	add r5, r6, r4
	ldr r4, =0
	str r4, [r5]
	ldr r6, [fp, #-24]
	add r4, r6, #1
	str r4, [fp, #-24]
	b .L143
.L145:
	mov r5, #1
	mov r4, #4
	mul r4, r5, r4
	ldr r5, addr_book0
	add r6, r5, r4
	ldr r4, =1
	str r4, [r6]
	ldr r5, =1
	str r5, [fp, #-24]
	b .L151
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
.L151:
	ldr r7, [fp, #-24]
	ldr r4, addr_n0
	ldr r5, [r4]
	sub r4, r5, #1
	cmp r7, r4
	movle r6, #1
	movgt r6, #0
	ble .L152
	b .L156
.L152:
	ldr r8, addr_INF0
	ldr r4, [r8]
	str r4, [fp, #-16]
	ldr r5, =0
	str r5, [fp, #-12]
	ldr r6, =1
	str r6, [fp, #-8]
	b .L160
.L153:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L154:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L155:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L156:
	b .L153
.L160:
	ldr r7, [fp, #-8]
	ldr r4, addr_n0
	ldr r5, [r4]
	cmp r7, r5
	movle r6, #1
	movgt r6, #0
	ble .L161
	b .L165
.L161:
	ldr r8, [fp, #-16]
	ldr r4, [fp, #-8]
	mov r5, #4
	mul r5, r4, r5
	ldr r6, addr_dis0
	add r4, r6, r5
	ldr r5, [r4]
	cmp r8, r5
	movgt r6, #1
	movle r6, #0
	bgt .L168
	b .L172
.L162:
	ldr r7, [fp, #-12]
	mov r4, #4
	mul r4, r7, r4
	ldr r6, addr_book0
	add r5, r6, r4
	ldr r4, =1
	str r4, [r5]
	ldr r6, =1
	str r6, [fp, #-4]
	b .L179
.L163:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L164:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L165:
	b .L162
.L166:
	ldr r7, [fp, #-8]
	mov r4, #4
	mul r6, r7, r4
	ldr r4, addr_dis0
	add r5, r4, r6
	ldr r4, [r5]
	str r4, [fp, #-16]
	ldr r6, [fp, #-8]
	str r6, [fp, #-12]
	b .L167
.L167:
	ldr r7, [fp, #-8]
	add r4, r7, #1
	str r4, [fp, #-8]
	b .L160
.L168:
	ldr r5, [fp, #-8]
	mov r4, #4
	mul r5, r5, r4
	ldr r4, addr_book0
	add r6, r4, r5
	ldr r4, [r6]
	cmp r4, #0
	beq .L166
	b .L176
.L170:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L171:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L172:
	b .L167
.L174:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L175:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L176:
	b .L167
.L179:
	ldr r5, [fp, #-4]
	ldr r4, addr_n0
	ldr r6, [r4]
	cmp r5, r6
	movle r7, #1
	movgt r7, #0
	ble .L180
	b .L184
.L180:
	ldr r8, [fp, #-12]
	mov r4, #64
	mul r4, r8, r4
	ldr r6, addr_e0
	add r5, r6, r4
	ldr r4, [fp, #-4]
	mov r6, #4
	mul r6, r4, r6
	add r4, r5, r6
	ldr r5, [r4]
	ldr r4, addr_INF0
	ldr r6, [r4]
	cmp r5, r6
	movlt r7, #1
	movge r7, #0
	blt .L185
	b .L191
.L181:
	ldr r8, [fp, #-24]
	add r4, r8, #1
	str r4, [fp, #-24]
	b .L151
.L182:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L183:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L184:
	b .L181
.L185:
	ldr r5, [fp, #-4]
	mov r4, #4
	mul r4, r5, r4
	ldr r6, addr_dis0
	add r5, r6, r4
	ldr r4, [r5]
	ldr r5, [fp, #-12]
	mov r6, #4
	mul r6, r5, r6
	ldr r7, addr_dis0
	add r5, r7, r6
	ldr r6, [r5]
	ldr r5, [fp, #-12]
	mov r7, #64
	mul r5, r5, r7
	ldr r7, addr_e0
	add r8, r7, r5
	ldr r5, [fp, #-4]
	mov r7, #4
	mul r7, r5, r7
	add r5, r8, r7
	ldr r7, [r5]
	add r5, r6, r7
	cmp r4, r5
	movgt r8, #1
	movle r8, #0
	bgt .L192
	b .L200
	b .F0
.LTORG
addr_INF0:
	.word INF
addr_e0:
	.word e
addr_book0:
	.word book
addr_dis0:
	.word dis
addr_n0:
	.word n
addr_m0:
	.word m
addr_v10:
	.word v1
addr_v20:
	.word v2
addr_w0:
	.word w
.F0:
.L186:
	ldr r9, [fp, #-4]
	add r4, r9, #1
	str r4, [fp, #-4]
	b .L179
.L189:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L190:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L191:
	b .L186
.L192:
	ldr r5, [fp, #-12]
	mov r4, #4
	mul r5, r5, r4
	ldr r6, addr_dis1
	add r4, r6, r5
	ldr r5, [r4]
	ldr r4, [fp, #-12]
	mov r6, #64
	mul r6, r4, r6
	ldr r7, addr_e1
	add r4, r7, r6
	ldr r6, [fp, #-4]
	mov r7, #4
	mul r7, r6, r7
	add r6, r4, r7
	ldr r4, [r6]
	add r6, r5, r4
	ldr r4, [fp, #-4]
	mov r5, #4
	mul r5, r4, r5
	ldr r7, addr_dis1
	add r4, r7, r5
	str r6, [r4]
	b .L193
.L193:
	b .L186
.L198:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L199:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L200:
	b .L193

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L204:
	bl getint
	mov r10, r0
	ldr r4, addr_n1
	str r10, [r4]
	bl getint
	mov r5, r0
	ldr r4, addr_m1
	str r5, [r4]
	ldr r6, =1
	str r6, [fp, #-16]
	b .L206
.L206:
	ldr r7, [fp, #-16]
	ldr r4, addr_n1
	ldr r5, [r4]
	cmp r7, r5
	movle r6, #1
	movgt r6, #0
	ble .L207
	b .L211
.L207:
	ldr r8, =1
	str r8, [fp, #-12]
	b .L213
.L208:
	ldr r9, =1
	str r9, [fp, #-16]
	b .L227
.L209:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L210:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L211:
	b .L208
.L213:
	ldr r10, [fp, #-12]
	ldr r4, addr_n1
	ldr r5, [r4]
	cmp r10, r5
	movle r6, #1
	movgt r6, #0
	ble .L214
	b .L218
.L214:
	ldr r7, [fp, #-16]
	ldr r4, [fp, #-12]
	cmp r7, r4
	beq .L219
	b .L224
.L215:
	ldr r5, [fp, #-16]
	add r4, r5, #1
	str r4, [fp, #-16]
	b .L206
.L216:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L217:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L218:
	b .L215
.L219:
	ldr r6, [fp, #-16]
	mov r4, #64
	mul r4, r6, r4
	ldr r6, addr_e1
	add r5, r6, r4
	ldr r4, [fp, #-12]
	mov r6, #4
	mul r6, r4, r6
	add r4, r5, r6
	ldr r5, =0
	str r5, [r4]
	b .L221
.L220:
	ldr r6, addr_INF1
	ldr r4, [r6]
	ldr r5, [fp, #-16]
	mov r6, #64
	mul r6, r5, r6
	ldr r7, addr_e1
	add r5, r7, r6
	ldr r6, [fp, #-12]
	mov r7, #4
	mul r6, r6, r7
	add r7, r5, r6
	str r4, [r7]
	b .L221
.L221:
	ldr r8, [fp, #-12]
	add r4, r8, #1
	str r4, [fp, #-12]
	b .L213
.L222:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L223:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L224:
	b .L220
.L227:
	ldr r5, [fp, #-16]
	ldr r4, addr_m1
	ldr r6, [r4]
	cmp r5, r6
	movle r7, #1
	movgt r7, #0
	ble .L228
	b .L232
.L228:
	bl getint
	mov r8, r0
	str r8, [fp, #-8]
	bl getint
	mov r9, r0
	str r9, [fp, #-4]
	bl getint
	mov r10, r0
	ldr r4, [fp, #-8]
	mov r5, #64
	mul r5, r4, r5
	ldr r6, addr_e1
	add r4, r6, r5
	ldr r5, [fp, #-4]
	mov r6, #4
	mul r6, r5, r6
	add r5, r4, r6
	str r10, [r5]
	ldr r7, [fp, #-16]
	add r4, r7, #1
	str r4, [fp, #-16]
	b .L227
.L229:
	bl Dijkstra
	ldr r5, =1
	str r5, [fp, #-16]
	b .L236
.L230:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L231:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L232:
	b .L229
.L236:
	ldr r6, [fp, #-16]
	ldr r4, addr_n1
	ldr r5, [r4]
	cmp r6, r5
	movle r7, #1
	movgt r7, #0
	ble .L237
	b .L241
.L237:
	ldr r8, [fp, #-16]
	mov r4, #4
	mul r4, r8, r4
	ldr r6, addr_dis1
	add r5, r6, r4
	ldr r4, [r5]
	mov r0, r4
	bl putint
	mov r0, #32
	bl putch
	ldr r6, [fp, #-16]
	add r4, r6, #1
	str r4, [fp, #-16]
	b .L236
.L238:
	mov r0, #10
	bl putch
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L239:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L240:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L241:
	b .L238
.L243:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

addr_INF1:
	.word INF
addr_e1:
	.word e
addr_book1:
	.word book
addr_dis1:
	.word dis
addr_n1:
	.word n
addr_m1:
	.word m
addr_v11:
	.word v1
addr_v21:
	.word v2
addr_w1:
	.word w
