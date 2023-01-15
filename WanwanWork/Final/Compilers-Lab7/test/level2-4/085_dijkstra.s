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
	push {r4, r5, r6, r7, r8, r9, fp, lr}
	mov fp, sp
	sub sp, sp, #24
.L140:
	ldr r4, =1
	str r4, [fp, #-24]
	b .L143
.L143:
	ldr r5, [fp, #-24]
	ldr r4, addr_n0
	ldr r6, [r4]
	cmp r5, r6
	movle r7, #1
	movgt r7, #0
	ble .L144
	b .L148
.L144:
	ldr r8, =0
	add r4, r8, #1
	add r5, r4, #1
	add r4, r5, #1
	add r5, r4, #1
	add r4, r5, #1
	add r5, r4, #1
	add r4, r5, #1
	add r5, r4, #1
	add r4, r5, #1
	add r5, r4, #1
	add r4, r5, #1
	add r5, r4, #1
	add r4, r5, #1
	add r5, r4, #1
	add r4, r5, #1
	add r5, r4, #1
	add r4, r5, v17
	mov r5, #4
	mul r4, r4, r5
	ldr r5, addr_e0
	add r6, r5, r4
	ldr r4, [r6]
	ldr r5, [fp, #-24]
	ldr r6, =0
	add r7, r6, r5
	mov r5, #4
	mul r7, r7, r5
	ldr r6, addr_dis0
	add r5, r6, r7
	str r4, [r5]
	ldr r8, [fp, #-24]
	ldr r4, =0
	add r5, r4, r8
	mov r4, #4
	mul r4, r5, r4
	ldr r5, addr_book0
	add r6, r5, r4
	ldr r4, =0
	str r4, [r6]
	ldr r5, [fp, #-24]
	add r4, r5, #1
	str r4, [fp, #-24]
	b .L143
.L145:
	ldr r6, =0
	add r4, r6, #1
	mov r5, #4
	mul r5, r4, r5
	ldr r4, addr_book0
	add r6, r4, r5
	ldr r4, =1
	str r4, [r6]
	ldr r5, =1
	str r5, [fp, #-24]
	b .L158
.L146:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L147:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L148:
	b .L145
.L158:
	ldr r7, [fp, #-24]
	ldr r4, addr_n0
	ldr r5, [r4]
	sub r4, r5, #1
	cmp r7, r4
	movle r6, #1
	movgt r6, #0
	ble .L159
	b .L163
.L159:
	ldr r8, addr_INF0
	ldr r4, [r8]
	str r4, [fp, #-16]
	ldr r5, =0
	str r5, [fp, #-12]
	ldr r6, =1
	str r6, [fp, #-8]
	b .L167
.L160:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L161:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L162:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L163:
	b .L160
.L167:
	ldr r7, [fp, #-8]
	ldr r4, addr_n0
	ldr r5, [r4]
	cmp r7, r5
	movle r6, #1
	movgt r6, #0
	ble .L168
	b .L172
.L168:
	ldr r8, [fp, #-16]
	ldr r4, [fp, #-8]
	ldr r5, =0
	add r6, r5, r4
	mov r4, #4
	mul r5, r6, r4
	ldr r6, addr_dis0
	add r4, r6, r5
	ldr r5, [r4]
	cmp r8, r5
	movgt r6, #1
	movle r6, #0
	bgt .L175
	b .L181
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
.L169:
	ldr r7, [fp, #-12]
	ldr r4, =0
	add r5, r4, r7
	mov r4, #4
	mul r4, r5, r4
	ldr r5, addr_book1
	add r6, r5, r4
	ldr r4, =1
	str r4, [r6]
	ldr r5, =1
	str r5, [fp, #-4]
	b .L194
.L170:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L171:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L172:
	b .L169
.L173:
	ldr r7, [fp, #-8]
	ldr r4, =0
	add r5, r4, r7
	mov r4, #4
	mul r4, r5, r4
	ldr r5, addr_dis1
	add r6, r5, r4
	ldr r4, [r6]
	str r4, [fp, #-16]
	ldr r5, [fp, #-8]
	str r5, [fp, #-12]
	b .L174
.L174:
	ldr r7, [fp, #-8]
	add r4, r7, #1
	str r4, [fp, #-8]
	b .L167
.L175:
	ldr r5, [fp, #-8]
	ldr r4, =0
	add r6, r4, r5
	mov r4, #4
	mul r4, r6, r4
	ldr r6, addr_book1
	add r5, r6, r4
	ldr r4, [r5]
	ldr r5, =0
	cmp r4, r5
	moveq r6, #1
	movne r6, #0
	beq .L173
	b .L187
.L179:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L180:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L181:
	b .L174
.L185:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L186:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L187:
	b .L174
.L194:
	ldr r7, [fp, #-4]
	ldr r4, addr_n1
	ldr r5, [r4]
	cmp r7, r5
	movle r6, #1
	movgt r6, #0
	ble .L195
	b .L199
.L195:
	ldr r8, [fp, #-12]
	ldr r4, =0
	add r5, r4, r8
	add r4, r5, r8
	add r5, r4, r8
	add r4, r5, r8
	add r5, r4, r8
	add r4, r5, r8
	add r5, r4, r8
	add r4, r5, r8
	add r5, r4, r8
	add r4, r5, r8
	add r5, r4, r8
	add r4, r5, r8
	add r5, r4, r8
	add r4, r5, r8
	add r5, r4, r8
	add r4, r5, r8
	ldr r5, [fp, #-12]
	add r5, r4, v60
	mov r4, #4
	mul r6, r5, r4
	ldr r4, addr_e1
	add r5, r4, r6
	ldr r4, [r5]
	ldr r5, addr_INF1
	ldr r6, [r5]
	cmp r4, r6
	movlt r7, #1
	movge r7, #0
	blt .L200
	b .L207
.L196:
	ldr r8, [fp, #-24]
	add r4, r8, #1
	str r4, [fp, #-24]
	b .L158
.L197:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L198:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L199:
	b .L196
.L200:
	ldr r5, [fp, #-4]
	ldr r4, =0
	add r6, r4, r5
	mov r4, #4
	mul r6, r6, r4
	ldr r4, addr_dis1
	add r5, r4, r6
	ldr r4, [r5]
	ldr r5, [fp, #-12]
	ldr r6, =0
	add r7, r6, r5
	mov r5, #4
	mul r6, r7, r5
	ldr r7, addr_dis1
	add r5, r7, r6
	ldr r6, [r5]
	ldr r5, [fp, #-12]
	ldr r7, =0
	add r8, r7, r5
	add r7, r8, r5
	add r8, r7, r5
	add r7, r8, r5
	add r8, r7, r5
	add r7, r8, r5
	add r8, r7, r5
	add r7, r8, r5
	add r8, r7, r5
	add r7, r8, r5
	add r8, r7, r5
	add r7, r8, r5
	add r8, r7, r5
	add r7, r8, r5
	add r8, r7, r5
	add r7, r8, r5
	ldr r5, [fp, #-12]
	add r5, r7, v69
	mov r7, #4
	mul r7, r5, r7
	ldr r8, addr_e1
	add r5, r8, r7
	ldr r7, [r5]
	add r5, r6, r7
	cmp r4, r5
	movgt r8, #1
	movle r8, #0
	bgt .L208
	b .L221
	b .F1
.LTORG
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
.F1:
.L201:
	ldr r9, [fp, #-4]
	add r4, r9, #1
	str r4, [fp, #-4]
	b .L194
.L205:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L206:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L207:
	b .L201
.L208:
	ldr r5, [fp, #-12]
	ldr r4, =0
	add r6, r4, r5
	mov r4, #4
	mul r4, r6, r4
	ldr r6, addr_dis2
	add r5, r6, r4
	ldr r4, [r5]
	ldr r5, [fp, #-12]
	ldr r6, =0
	add r7, r6, r5
	add r6, r7, r5
	add r7, r6, r5
	add r6, r7, r5
	add r7, r6, r5
	add r6, r7, r5
	add r7, r6, r5
	add r6, r7, r5
	add r7, r6, r5
	add r6, r7, r5
	add r7, r6, r5
	add r6, r7, r5
	add r7, r6, r5
	add r6, r7, r5
	add r7, r6, r5
	add r6, r7, r5
	ldr r5, [fp, #-12]
	add r5, r6, v78
	mov r6, #4
	mul r6, r5, r6
	ldr r7, addr_e2
	add r5, r7, r6
	ldr r6, [r5]
	add r5, r4, r6
	ldr r4, [fp, #-4]
	ldr r6, =0
	add r7, r6, r4
	mov r4, #4
	mul r6, r7, r4
	ldr r7, addr_dis2
	add r4, r7, r6
	str r5, [r4]
	b .L209
.L209:
	b .L201
.L219:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L220:
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L221:
	b .L209

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L230:
	bl getint
	mov r4, r0
	ldr r5, addr_n2
	str r4, [r5]
	bl getint
	mov r6, r0
	ldr r4, addr_m2
	str r6, [r4]
	ldr r5, =1
	str r5, [fp, #-16]
	b .L232
.L232:
	ldr r7, [fp, #-16]
	ldr r4, addr_n2
	ldr r5, [r4]
	cmp r7, r5
	movle r6, #1
	movgt r6, #0
	ble .L233
	b .L237
.L233:
	ldr r8, =1
	str r8, [fp, #-12]
	b .L239
.L234:
	ldr r9, =1
	str r9, [fp, #-16]
	b .L255
.L235:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L236:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L237:
	b .L234
.L239:
	ldr r10, [fp, #-12]
	ldr r4, addr_n2
	ldr r5, [r4]
	cmp r10, r5
	movle r6, #1
	movgt r6, #0
	ble .L240
	b .L244
.L240:
	ldr r7, [fp, #-16]
	ldr r4, [fp, #-12]
	cmp r7, r4
	moveq r5, #1
	movne r5, #0
	beq .L245
	b .L250
.L241:
	ldr r6, [fp, #-16]
	add r4, r6, #1
	str r4, [fp, #-16]
	b .L232
.L242:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L243:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L244:
	b .L241
.L245:
	ldr r5, [fp, #-16]
	ldr r4, =0
	add r6, r4, r5
	add r4, r6, r5
	add r6, r4, r5
	add r4, r6, r5
	add r6, r4, r5
	add r4, r6, r5
	add r6, r4, r5
	add r4, r6, r5
	add r6, r4, r5
	add r4, r6, r5
	add r6, r4, r5
	add r4, r6, r5
	add r6, r4, r5
	add r4, r6, r5
	add r6, r4, r5
	add r4, r6, r5
	ldr r5, [fp, #-16]
	add r5, r4, v104
	mov r4, #4
	mul r4, r5, r4
	ldr r5, addr_e2
	add r6, r5, r4
	ldr r4, =0
	str r4, [r6]
	b .L247
.L246:
	ldr r5, addr_INF2
	ldr r4, [r5]
	ldr r5, [fp, #-16]
	ldr r6, =0
	add r7, r6, r5
	add r6, r7, r5
	add r7, r6, r5
	add r6, r7, r5
	add r7, r6, r5
	add r6, r7, r5
	add r7, r6, r5
	add r6, r7, r5
	add r7, r6, r5
	add r6, r7, r5
	add r7, r6, r5
	add r6, r7, r5
	add r7, r6, r5
	add r6, r7, r5
	add r7, r6, r5
	add r6, r7, r5
	ldr r5, [fp, #-16]
	add r5, r6, v107
	mov r6, #4
	mul r6, r5, r6
	ldr r7, addr_e2
	add r5, r7, r6
	str r4, [r5]
	b .L247
.L247:
	ldr r8, [fp, #-12]
	add r4, r8, #1
	str r4, [fp, #-12]
	b .L239
.L248:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L249:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
	b .F2
.LTORG
addr_INF2:
	.word INF
addr_e2:
	.word e
addr_book2:
	.word book
addr_dis2:
	.word dis
addr_n2:
	.word n
addr_m2:
	.word m
addr_v12:
	.word v1
addr_v22:
	.word v2
addr_w2:
	.word w
.F2:
.L250:
	b .L246
.L255:
	ldr r5, [fp, #-16]
	ldr r4, addr_m3
	ldr r6, [r4]
	cmp r5, r6
	movle r7, #1
	movgt r7, #0
	ble .L256
	b .L260
.L256:
	bl getint
	mov r8, r0
	str r8, [fp, #-8]
	bl getint
	mov r9, r0
	str r9, [fp, #-4]
	bl getint
	mov r10, r0
	ldr r4, [fp, #-8]
	ldr r5, =0
	add r6, r5, r4
	add r5, r6, r4
	add r6, r5, r4
	add r5, r6, r4
	add r6, r5, r4
	add r5, r6, r4
	add r6, r5, r4
	add r5, r6, r4
	add r6, r5, r4
	add r5, r6, r4
	add r6, r5, r4
	add r5, r6, r4
	add r6, r5, r4
	add r5, r6, r4
	add r6, r5, r4
	add r5, r6, r4
	ldr r4, [fp, #-8]
	add r4, r5, v125
	mov r5, #4
	mul r5, r4, r5
	ldr r6, addr_e3
	add r4, r6, r5
	str r10, [r4]
	ldr r7, [fp, #-16]
	add r4, r7, #1
	str r4, [fp, #-16]
	b .L255
.L257:
	bl Dijkstra
	ldr r5, =1
	str r5, [fp, #-16]
	b .L265
.L258:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L259:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L260:
	b .L257
.L265:
	ldr r6, [fp, #-16]
	ldr r4, addr_n3
	ldr r5, [r4]
	cmp r6, r5
	movle r7, #1
	movgt r7, #0
	ble .L266
	b .L270
.L266:
	ldr r8, [fp, #-16]
	ldr r4, =0
	add r5, r4, r8
	mov r4, #4
	mul r4, r5, r4
	ldr r5, addr_dis3
	add r6, r5, r4
	ldr r4, [r6]
	mov r0, r4
	bl putint
	mov r0, #32
	bl putch
	ldr r5, [fp, #-16]
	add r4, r5, #1
	str r4, [fp, #-16]
	b .L265
.L267:
	mov r0, #10
	bl putch
	ldr r6, =0
	mov r0, r6
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L268:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L269:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L270:
	b .L267
.L274:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

addr_INF3:
	.word INF
addr_e3:
	.word e
addr_book3:
	.word book
addr_dis3:
	.word dis
addr_n3:
	.word n
addr_m3:
	.word m
addr_v13:
	.word v1
addr_v23:
	.word v2
addr_w3:
	.word w
