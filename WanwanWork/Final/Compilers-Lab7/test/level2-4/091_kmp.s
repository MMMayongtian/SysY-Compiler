	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global get_next
	.type get_next , %function
get_next:
	push {r4, r5, r6, r7, r8, r9, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L99:
	str r0, [fp, #-16]
	str r1, [fp, #-12]
	ldr r4, =0
	sub r5, r4, #1
	ldr r4, [fp, #-12]
	ldr r6, =0
	add r7, r6, #0
	mov r6, #4
	mul r7, r7, r6
	add r6, r4, r7
	str r5, [r6]
	ldr r8, =0
	str r8, [fp, #-8]
	ldr r9, =0
	sub r4, r9, #1
	str r4, [fp, #-4]
	b .L107
.L107:
	ldr r5, [fp, #-16]
	ldr r4, [fp, #-8]
	ldr r6, =0
	add r7, r6, r4
	mov r4, #4
	mul r4, r7, r4
	add r6, r5, r4
	ldr r4, [r6]
	ldr r5, =0
	cmp r4, r5
	movne r6, #1
	moveq r6, #0
	bne .L108
	b .L115
.L108:
	ldr r7, [fp, #-4]
	ldr r4, =0
	sub r5, r4, #1
	cmp r7, r5
	moveq r6, #1
	movne r6, #0
	beq .L117
	b .L123
.L109:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L114:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L115:
	b .L109
.L116:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L117:
	ldr r8, [fp, #-4]
	add r4, r8, #1
	str r4, [fp, #-4]
	ldr r5, [fp, #-8]
	add r4, r5, #1
	str r4, [fp, #-8]
	ldr r6, [fp, #-4]
	ldr r4, [fp, #-12]
	ldr r5, [fp, #-8]
	ldr r7, =0
	add r8, r7, r5
	mov r5, #4
	mul r7, r8, r5
	add r5, r4, r7
	str r6, [r5]
	b .L119
.L118:
	ldr r8, [fp, #-12]
	ldr r4, [fp, #-4]
	ldr r5, =0
	add r6, r5, r4
	mov r4, #4
	mul r5, r6, r4
	add r4, r8, r5
	ldr r5, [r4]
	str r5, [fp, #-4]
	b .L119
.L119:
	b .L107
.L120:
	ldr r6, [fp, #-16]
	ldr r4, [fp, #-8]
	ldr r5, =0
	add r7, r5, r4
	mov r4, #4
	mul r5, r7, r4
	add r4, r6, r5
	ldr r5, [r4]
	ldr r4, [fp, #-16]
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, r6
	mov r6, #4
	mul r7, r8, r6
	add r6, r4, r7
	ldr r4, [r6]
	cmp r5, r4
	moveq r7, #1
	movne r7, #0
	beq .L117
	b .L134
.L121:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L122:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L123:
	b .L120
.L132:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L133:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L134:
	b .L118

	.global KMP
	.type KMP , %function
KMP:
	push {r4, r5, r6, r7, r8, r9, fp, lr}
	mov fp, sp
	ldr r4, =16400
	sub sp, sp, r4
.L142:
	ldr r4, =-16400
	str r0, [fp, r4]
	ldr r5, =-16396
	str r1, [fp, r5]
	ldr r6, =-16400
	ldr r4, [fp, r6]
	mov r5, #0
	mov r6, #4
	mul r5, r5, r6
	ldr r6, =-16392
	add r6, r6, r5
	add r5, fp, r6
	mov r0, r4
	mov r1, r5
	bl get_next
	ldr r7, =0
	str r7, [fp, #-8]
	ldr r8, =0
	str r8, [fp, #-4]
	b .L149
.L149:
	ldr r4, =-16396
	ldr r9, [fp, r4]
	ldr r4, [fp, #-4]
	ldr r5, =0
	add r6, r5, r4
	mov r4, #4
	mul r5, r6, r4
	add r4, r9, r5
	ldr r5, [r4]
	ldr r4, =0
	cmp r5, r4
	movne r6, #1
	moveq r6, #0
	bne .L150
	b .L157
.L150:
	ldr r4, =-16400
	ldr r7, [fp, r4]
	ldr r4, [fp, #-8]
	ldr r5, =0
	add r6, r5, r4
	mov r4, #4
	mul r5, r6, r4
	add r4, r7, r5
	ldr r5, [r4]
	ldr r6, =-16396
	ldr r4, [fp, r6]
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, r6
	mov r6, #4
	mul r7, r8, r6
	add r6, r4, r7
	ldr r4, [r6]
	cmp r5, r4
	moveq r7, #1
	movne r7, #0
	beq .L159
	b .L172
.L151:
	ldr r8, =0
	sub r4, r8, #1
	mov r0, r4
	ldr r1, =16400
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L156:
	ldr r1, =16400
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L157:
	b .L151
.L158:
	ldr r1, =16400
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L159:
	ldr r5, [fp, #-8]
	add r4, r5, #1
	str r4, [fp, #-8]
	ldr r6, [fp, #-4]
	add r4, r6, #1
	str r4, [fp, #-4]
	ldr r4, =-16400
	ldr r5, [fp, r4]
	ldr r4, [fp, #-8]
	ldr r6, =0
	add r7, r6, r4
	mov r4, #4
	mul r6, r7, r4
	add r4, r5, r6
	ldr r5, [r4]
	ldr r4, =0
	cmp r5, r4
	movne r6, #1
	moveq r6, #0
	moveq r7, #1
	movne r7, #0
	ldr r4, =0
	cmp r7, r4
	movne r5, #1
	moveq r5, #0
	bne .L173
	b .L181
.L160:
	ldr r6, [fp, #-8]
	ldr r4, =0
	add r5, r4, r6
	mov r4, #4
	mul r6, r5, r4
	ldr r4, =-16392
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, [r5]
	str r4, [fp, #-8]
	ldr r6, [fp, #-8]
	ldr r4, =0
	sub r5, r4, #1
	cmp r6, r5
	moveq r7, #1
	movne r7, #0
	beq .L187
	b .L191
.L161:
	b .L149
.L170:
	ldr r1, =16400
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
	b .F0
.LTORG
.F0:
.L171:
	ldr r1, =16400
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L172:
	b .L160
.L173:
	ldr r8, [fp, #-4]
	mov r0, r8
	ldr r1, =16400
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L174:
	b .L161
.L180:
	ldr r1, =16400
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L181:
	b .L174
.L182:
	ldr r1, =16400
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L183:
	b .L174
.L187:
	ldr r9, [fp, #-8]
	add r4, r9, #1
	str r4, [fp, #-8]
	ldr r5, [fp, #-4]
	add r4, r5, #1
	str r4, [fp, #-4]
	b .L188
.L188:
	b .L161
.L189:
	ldr r1, =16400
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L190:
	ldr r1, =16400
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L191:
	b .L188
.L192:
	ldr r1, =16400
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr

	.global read_str
	.type read_str , %function
read_str:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L193:
	str r0, [fp, #-8]
	ldr r4, =0
	str r4, [fp, #-4]
	b .L196
.L196:
	ldr r5, =1
	ldr r4, =0
	cmp r5, r4
	movne r6, #1
	moveq r6, #0
	bne .L197
	b .L200
.L197:
	bl getch
	mov r7, r0
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-4]
	ldr r6, =0
	add r8, r6, r5
	mov r5, #4
	mul r6, r8, r5
	add r5, r4, r6
	str r7, [r5]
	ldr r8, [fp, #-8]
	ldr r4, [fp, #-4]
	ldr r5, =0
	add r6, r5, r4
	mov r4, #4
	mul r5, r6, r4
	add r4, r8, r5
	ldr r5, [r4]
	ldr r4, =10
	cmp r5, r4
	moveq r6, #1
	movne r6, #0
	beq .L205
	b .L213
.L198:
	ldr r7, [fp, #-8]
	ldr r4, [fp, #-4]
	ldr r5, =0
	add r6, r5, r4
	mov r4, #4
	mul r5, r6, r4
	add r4, r7, r5
	ldr r5, =0
	str r5, [r4]
	ldr r6, [fp, #-4]
	mov r0, r6
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L199:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L200:
	b .L198
.L201:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L205:
	b .L198
.L206:
	ldr r7, [fp, #-4]
	add r4, r7, #1
	str r4, [fp, #-4]
	b .L196
.L211:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L212:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L213:
	b .L206
.L214:
	b .L206
.L218:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	ldr r4, =32768
	sub sp, sp, r4
.L219:
	mov r4, #0
	mov r5, #4
	mul r6, r4, r5
	ldr r4, =-32768
	add r5, r4, r6
	add r4, fp, r5
	mov r0, r4
	bl read_str
	mov r6, r0
	mov r7, #0
	mov r4, #4
	mul r5, r7, r4
	ldr r4, =-16384
	add r6, r4, r5
	add r4, fp, r6
	mov r0, r4
	bl read_str
	mov r5, r0
	mov r7, #0
	mov r4, #4
	mul r5, r7, r4
	ldr r4, =-32768
	add r4, r4, r5
	add r6, fp, r4
	mov r4, #0
	mov r5, #4
	mul r4, r4, r5
	ldr r5, =-16384
	add r5, r5, r4
	add r4, fp, r5
	mov r0, r6
	mov r1, r4
	bl KMP
	mov r7, r0
	mov r0, r7
	bl putint
	mov r0, #10
	bl putch
	ldr r8, =0
	mov r0, r8
	ldr r1, =32768
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L222:
	ldr r1, =32768
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr

