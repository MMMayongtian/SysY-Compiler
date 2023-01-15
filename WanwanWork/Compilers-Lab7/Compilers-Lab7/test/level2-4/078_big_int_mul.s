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
	push {r4, r5, r6, r7, r8, r10, fp, lr}
	mov fp, sp
	ldr r4, =548
	sub sp, sp, r4
.L129:
	mov r10, #0
	mov r4, #4
	mul r5, r10, r4
	ldr r4, =-528
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, =1
	str r4, [r6]
	add r4, r6, #4
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
	mul r4, r6, r4
	mov r5, #-160
	add r4, r5, r4
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
	ldr r4, =-548
	ldr r5, [fp, r4]
	ldr r6, =-368
	ldr r4, [fp, r6]
	cmp r5, r4
	movlt r7, #1
	movge r7, #0
	blt .L146
	b .L150
.L146:
	ldr r4, =-548
	ldr r8, [fp, r4]
	mov r4, #4
	mul r5, r8, r4
	ldr r4, =-528
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, [r6]
	ldr r6, =-548
	ldr r5, [fp, r6]
	mov r6, #4
	mul r5, r5, r6
	ldr r6, =-360
	add r6, r6, r5
	add r5, fp, r6
	str r4, [r5]
	ldr r7, =-548
	ldr r4, [fp, r7]
	add r5, r4, #1
	ldr r4, =-548
	str r5, [fp, r4]
	b .L145
.L147:
	ldr r6, =0
	ldr r4, =-548
	str r6, [fp, r4]
	b .L152
.L148:
	ldr r1, =548
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L149:
	ldr r1, =548
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L150:
	b .L147
.L152:
	ldr r4, =-548
	ldr r5, [fp, r4]
	ldr r6, =-364
	ldr r4, [fp, r6]
	cmp r5, r4
	movlt r7, #1
	movge r7, #0
	blt .L153
	b .L157
.L153:
	ldr r4, =-548
	ldr r8, [fp, r4]
	mov r4, #4
	mul r5, r8, r4
	ldr r4, =-448
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, [r6]
	ldr r6, =-548
	ldr r5, [fp, r6]
	mov r6, #4
	mul r5, r5, r6
	ldr r6, =-260
	add r6, r6, r5
	add r5, fp, r6
	str r4, [r5]
	ldr r4, =-548
	ldr r7, [fp, r4]
	add r4, r7, #1
	ldr r5, =-548
	str r4, [fp, r5]
	b .L152
.L154:
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
	b .L159
.L155:
	ldr r1, =548
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L156:
	ldr r1, =548
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L157:
	b .L154
.L159:
	ldr r4, =-548
	ldr r5, [fp, r4]
	ldr r6, =-536
	ldr r4, [fp, r6]
	cmp r5, r4
	movle r7, #1
	movgt r7, #0
	ble .L160
	b .L164
.L160:
	ldr r4, =-548
	ldr r8, [fp, r4]
	mov r4, #4
	mul r5, r8, r4
	mov r4, #-160
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, =0
	str r4, [r6]
	ldr r5, =-548
	ldr r4, [fp, r5]
	add r5, r4, #1
	ldr r4, =-548
	str r5, [fp, r4]
	b .L159
.L161:
	ldr r6, =0
	ldr r4, =-532
	str r6, [fp, r4]
	ldr r4, =-364
	ldr r5, [fp, r4]
	sub r4, r5, #1
	ldr r5, =-548
	str r4, [fp, r5]
	b .L165
.L162:
	ldr r1, =548
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L163:
	ldr r1, =548
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L164:
	b .L161
.L165:
	ldr r4, =-548
	ldr r6, [fp, r4]
	ldr r4, =0
	sub r5, r4, #1
	cmp r6, r5
	movgt r7, #1
	movle r7, #0
	bgt .L166
	b .L170
.L166:
	ldr r4, =-548
	ldr r8, [fp, r4]
	mov r4, #4
	mul r5, r8, r4
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
	b .L172
.L167:
	mov r6, #0
	mov r4, #4
	mul r5, r6, r4
	mov r4, #-160
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, [r6]
	cmp r4, #0
	bne .L187
	b .L192
.L168:
	ldr r1, =548
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L169:
	ldr r1, =548
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L170:
	b .L167
.L172:
	ldr r4, =-544
	ldr r5, [fp, r4]
	ldr r4, =0
	sub r6, r4, #1
	cmp r5, r6
	movgt r7, #1
	movle r7, #0
	bgt .L173
	b .L177
.L173:
	ldr r4, =-536
	ldr r8, [fp, r4]
	mov r4, #4
	mul r5, r8, r4
	mov r4, #-160
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, [r6]
	ldr r6, =-540
	ldr r5, [fp, r6]
	ldr r6, =-544
	ldr r7, [fp, r6]
	mov r6, #4
	mul r6, r7, r6
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
	cmp r6, #10
	movge r5, #1
	movlt r5, #0
	bge .L180
	b .L185
	b .F1
.LTORG
addr_len1:
	.word len
.F1:
.L174:
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
	b .L165
.L175:
	ldr r1, =548
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L176:
	ldr r1, =548
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L177:
	b .L174
.L180:
	ldr r4, =-532
	ldr r6, [fp, r4]
	ldr r5, =-536
	ldr r4, [fp, r5]
	mov r5, #4
	mul r4, r4, r5
	mov r5, #-160
	add r5, r5, r4
	add r4, fp, r5
	str r6, [r4]
	ldr r4, =-536
	ldr r7, [fp, r4]
	sub r4, r7, #1
	mov r5, #4
	mul r6, r4, r5
	mov r4, #-160
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, [r5]
	ldr r6, =-532
	ldr r5, [fp, r6]
	ldr r6, =10
	sdiv r7, r5, r6
	add r5, r4, r7
	ldr r6, =-536
	ldr r4, [fp, r6]
	sub r6, r4, #1
	mov r4, #4
	mul r4, r6, r4
	mov r6, #-160
	add r4, r6, r4
	add r6, fp, r4
	str r5, [r6]
	b .L182
.L181:
	ldr r4, =-532
	ldr r7, [fp, r4]
	ldr r5, =-536
	ldr r4, [fp, r5]
	mov r5, #4
	mul r4, r4, r5
	mov r5, #-160
	add r4, r5, r4
	add r5, fp, r4
	str r7, [r5]
	b .L182
.L182:
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
	b .L172
.L183:
	ldr r1, =548
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L184:
	ldr r1, =548
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L185:
	b .L181
.L187:
	mov r6, #0
	mov r4, #4
	mul r4, r6, r4
	mov r5, #-160
	add r4, r5, r4
	add r6, fp, r4
	ldr r4, [r6]
	mov r0, r4
	bl putint
	b .L188
.L188:
	ldr r5, =1
	ldr r4, =-548
	str r5, [fp, r4]
	b .L194
.L190:
	ldr r1, =548
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L191:
	ldr r1, =548
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L192:
	b .L188
.L194:
	ldr r4, =-548
	ldr r6, [fp, r4]
	ldr r5, =-368
	ldr r4, [fp, r5]
	ldr r7, =-364
	ldr r5, [fp, r7]
	add r7, r4, r5
	sub r4, r7, #1
	cmp r6, r4
	movle r5, #1
	movgt r5, #0
	ble .L195
	b .L199
.L195:
	ldr r4, =-548
	ldr r8, [fp, r4]
	mov r4, #4
	mul r5, r8, r4
	mov r4, #-160
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, [r6]
	mov r0, r4
	bl putint
	ldr r4, =-548
	ldr r5, [fp, r4]
	add r4, r5, #1
	ldr r5, =-548
	str r4, [fp, r5]
	b .L194
.L196:
	mov r0, #0
	ldr r1, =548
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L197:
	ldr r1, =548
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L198:
	ldr r1, =548
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L199:
	b .L196
.L201:
	ldr r1, =548
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr

addr_len2:
	.word len
