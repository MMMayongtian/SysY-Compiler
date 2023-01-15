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
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	ldr r4, =120020
	sub sp, sp, r4
.L136:
	ldr r10, =-120020
	str r0, [fp, r10]
	ldr r9, =0
	str r9, [fp, #-16]
	b .L142
.L142:
	ldr r8, [fp, #-16]
	ldr r4, addr_N0
	ldr r5, [r4]
	cmp r8, r5
	movlt r6, #1
	movge r6, #0
	blt .L143
	b .L147
.L143:
	ldr r7, [fp, #-16]
	ldr r4, [fp, #-16]
	mul r5, r7, r4
	ldr r4, =10
	sdiv r6, r5, r4
	mul r4, r6, r4
	sub r6, r5, r4
	ldr r4, [fp, #-16]
	mov r5, #4
	mul r5, r4, r5
	ldr r4, =-120016
	add r4, r4, r5
	add r5, fp, r4
	str r6, [r5]
	ldr r7, [fp, #-16]
	add r4, r7, #1
	str r4, [fp, #-16]
	b .L142
.L144:
	ldr r5, =0
	str r5, [fp, #-16]
	b .L148
.L145:
	ldr r1, =120020
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L146:
	ldr r1, =120020
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L147:
	b .L144
.L148:
	ldr r6, [fp, #-16]
	ldr r4, addr_N0
	ldr r5, [r4]
	cmp r6, r5
	movlt r7, #1
	movge r7, #0
	blt .L149
	b .L153
.L149:
	ldr r8, [fp, #-16]
	mov r4, #4
	mul r4, r8, r4
	ldr r5, =-120016
	add r4, r5, r4
	add r6, fp, r4
	ldr r4, [r6]
	ldr r5, [fp, #-16]
	mov r6, #4
	mul r5, r5, r6
	ldr r6, =-120016
	add r6, r6, r5
	add r5, fp, r6
	ldr r6, [r5]
	mul r5, r4, r6
	ldr r4, =10
	sdiv r6, r5, r4
	mul r4, r6, r4
	sub r6, r5, r4
	ldr r4, [fp, #-16]
	mov r5, #4
	mul r4, r4, r5
	ldr r5, =-80016
	add r5, r5, r4
	add r4, fp, r5
	str r6, [r4]
	ldr r7, [fp, #-16]
	add r4, r7, #1
	str r4, [fp, #-16]
	b .L148
.L150:
	ldr r5, =0
	str r5, [fp, #-16]
	b .L156
.L151:
	ldr r1, =120020
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L152:
	ldr r1, =120020
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L153:
	b .L150
.L156:
	ldr r6, [fp, #-16]
	ldr r4, addr_N0
	ldr r5, [r4]
	cmp r6, r5
	movlt r7, #1
	movge r7, #0
	blt .L157
	b .L161
.L157:
	ldr r8, [fp, #-16]
	mov r4, #4
	mul r5, r8, r4
	ldr r4, =-80016
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, [r6]
	ldr r5, [fp, #-16]
	mov r6, #4
	mul r5, r5, r6
	ldr r6, =-80016
	add r6, r6, r5
	add r5, fp, r6
	ldr r6, [r5]
	mul r5, r4, r6
	ldr r4, =100
	sdiv r6, r5, r4
	mul r4, r6, r4
	sub r6, r5, r4
	ldr r4, [fp, #-16]
	mov r5, #4
	mul r4, r4, r5
	ldr r5, =-120016
	add r5, r5, r4
	add r4, fp, r5
	ldr r5, [r4]
	add r4, r6, r5
	ldr r5, [fp, #-16]
	mov r6, #4
	mul r5, r5, r6
	ldr r6, =-40016
	add r6, r6, r5
	add r5, fp, r6
	str r4, [r5]
	ldr r7, [fp, #-16]
	add r4, r7, #1
	str r4, [fp, #-16]
	b .L156
.L158:
	ldr r5, =0
	str r5, [fp, #-12]
	ldr r6, =0
	str r6, [fp, #-16]
	b .L166
.L159:
	ldr r1, =120020
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L160:
	ldr r1, =120020
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L161:
	b .L158
.L166:
	ldr r8, [fp, #-16]
	ldr r4, addr_N0
	ldr r5, [r4]
	cmp r8, r5
	movlt r6, #1
	movge r6, #0
	blt .L167
	b .L171
.L167:
	ldr r7, [fp, #-16]
	cmp r7, #10
	movlt r9, #1
	movge r9, #0
	blt .L172
	b .L177
.L168:
	ldr r10, [fp, #-12]
	mov r0, r10
	ldr r1, =120020
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L169:
	ldr r1, =120020
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L170:
	ldr r1, =120020
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L171:
	b .L168
.L172:
	ldr r4, [fp, #-12]
	ldr r5, [fp, #-16]
	mov r6, #4
	mul r5, r5, r6
	ldr r6, =-40016
	add r6, r6, r5
	add r5, fp, r6
	ldr r6, [r5]
	add r5, r4, r6
	ldr r4, =1333
	sdiv r6, r5, r4
	mul r6, r6, r4
	sub r4, r5, r6
	str r4, [fp, #-12]
	ldr r7, [fp, #-12]
	mov r0, r7
	bl putint
	b .L174
.L173:
	ldr r8, [fp, #-16]
	cmp r8, #20
	movlt r9, #1
	movge r9, #0
	blt .L179
	b .L184
.L174:
	ldr r10, [fp, #-16]
	add r4, r10, #1
	str r4, [fp, #-16]
	b .L166
.L175:
	ldr r1, =120020
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L176:
	ldr r1, =120020
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L177:
	b .L173
.L179:
	ldr r5, addr_N0
	ldr r4, [r5]
	ldr r5, =2
	sdiv r6, r4, r5
	str r6, [fp, #-8]
	b .L186
	b .F0
.LTORG
addr_N0:
	.word N
.F0:
.L180:
	ldr r7, [fp, #-16]
	cmp r7, #30
	movlt r8, #1
	movge r8, #0
	blt .L194
	b .L199
.L181:
	b .L174
.L182:
	ldr r1, =120020
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L183:
	ldr r1, =120020
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L184:
	b .L180
.L186:
	ldr r9, [fp, #-8]
	ldr r4, addr_N1
	ldr r5, [r4]
	cmp r9, r5
	movlt r6, #1
	movge r6, #0
	blt .L187
	b .L191
.L187:
	ldr r7, [fp, #-12]
	ldr r4, [fp, #-16]
	mov r5, #4
	mul r4, r4, r5
	ldr r5, =-40016
	add r5, r5, r4
	add r4, fp, r5
	ldr r5, [r4]
	add r4, r7, r5
	ldr r5, [fp, #-8]
	mov r6, #4
	mul r5, r5, r6
	ldr r6, =-120016
	add r5, r6, r5
	add r6, fp, r5
	ldr r5, [r6]
	sub r6, r4, r5
	str r6, [fp, #-12]
	ldr r7, [fp, #-8]
	add r4, r7, #1
	str r4, [fp, #-8]
	b .L186
.L188:
	ldr r5, [fp, #-12]
	mov r0, r5
	bl putint
	b .L181
.L189:
	ldr r1, =120020
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L190:
	ldr r1, =120020
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L191:
	b .L188
.L194:
	ldr r6, addr_N1
	ldr r4, [r6]
	ldr r5, =2
	sdiv r6, r4, r5
	str r6, [fp, #-4]
	b .L201
.L195:
	ldr r7, [fp, #-12]
	ldr r4, [fp, #-16]
	mov r5, #4
	mul r4, r4, r5
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
	mul r6, r6, r5
	sub r5, r4, r6
	str r5, [fp, #-12]
	b .L196
.L196:
	b .L181
.L197:
	ldr r1, =120020
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L198:
	ldr r1, =120020
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L199:
	b .L195
.L201:
	ldr r7, [fp, #-4]
	ldr r4, addr_N1
	ldr r5, [r4]
	cmp r7, r5
	movlt r6, #1
	movge r6, #0
	blt .L202
	b .L206
.L202:
	ldr r8, [fp, #-4]
	ldr r4, =2233
	cmp r8, r4
	movgt r5, #1
	movle r5, #0
	bgt .L207
	b .L212
.L203:
	ldr r6, [fp, #-12]
	mov r0, r6
	bl putint
	b .L196
.L204:
	ldr r1, =120020
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L205:
	ldr r1, =120020
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L206:
	b .L203
.L207:
	ldr r7, [fp, #-12]
	ldr r4, [fp, #-16]
	mov r5, #4
	mul r4, r4, r5
	ldr r5, =-80016
	add r5, r5, r4
	add r4, fp, r5
	ldr r5, [r4]
	add r4, r7, r5
	ldr r5, [fp, #-4]
	mov r6, #4
	mul r5, r5, r6
	ldr r6, =-120016
	add r6, r6, r5
	add r5, fp, r6
	ldr r6, [r5]
	sub r5, r4, r6
	str r5, [fp, #-12]
	ldr r7, [fp, #-4]
	add r4, r7, #1
	str r4, [fp, #-4]
	b .L209
.L208:
	ldr r5, [fp, #-12]
	ldr r4, [fp, #-16]
	mov r6, #4
	mul r6, r4, r6
	ldr r4, =-120016
	add r4, r4, r6
	add r6, fp, r4
	ldr r4, [r6]
	add r6, r5, r4
	ldr r4, [fp, #-4]
	mov r5, #4
	mul r4, r4, r5
	ldr r5, =-40016
	add r5, r5, r4
	add r4, fp, r5
	ldr r5, [r4]
	add r4, r6, r5
	ldr r5, =13333
	sdiv r6, r4, r5
	mul r5, r6, r5
	sub r6, r4, r5
	str r6, [fp, #-12]
	ldr r7, [fp, #-4]
	add r4, r7, #2
	str r4, [fp, #-4]
	b .L209
.L209:
	b .L201
.L210:
	ldr r1, =120020
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L211:
	ldr r1, =120020
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L212:
	b .L208
.L218:
	ldr r1, =120020
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r10, fp, lr}
	mov fp, sp
	sub sp, sp, #0
.L219:
	mov r0, #9
	bl long_array
	mov r10, r0
	mov r0, r10
	add sp, sp, #0
	pop {r10, fp, lr}
	bx lr
.L220:
	add sp, sp, #0
	pop {r10, fp, lr}
	bx lr

addr_N1:
	.word N
