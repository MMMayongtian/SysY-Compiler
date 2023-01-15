	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global get_next
	.type get_next , %function
get_next:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L99:
	str r0, [fp, #-16]
	str r1, [fp, #-12]
	ldr r10, =0
	sub r4, r10, #1
	ldr r5, [fp, #-12]
	mov r6, #0
	mov r7, #4
	mul r7, r6, r7
	add r6, r5, r7
	str r4, [r6]
	ldr r8, =0
	str r8, [fp, #-8]
	ldr r9, =0
	sub r4, r9, #1
	str r4, [fp, #-4]
	b .L105
.L105:
	ldr r5, [fp, #-16]
	ldr r4, [fp, #-8]
	mov r6, #4
	mul r6, r4, r6
	add r4, r5, r6
	ldr r5, [r4]
	cmp r5, #0
	bne .L106
	b .L111
.L106:
	ldr r6, [fp, #-4]
	ldr r4, =0
	sub r5, r4, #1
	cmp r6, r5
	beq .L113
	b .L119
.L107:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L110:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L111:
	b .L107
.L112:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L113:
	ldr r7, [fp, #-4]
	add r4, r7, #1
	str r4, [fp, #-4]
	ldr r5, [fp, #-8]
	add r4, r5, #1
	str r4, [fp, #-8]
	ldr r6, [fp, #-4]
	ldr r4, [fp, #-12]
	ldr r5, [fp, #-8]
	mov r7, #4
	mul r7, r5, r7
	add r5, r4, r7
	str r6, [r5]
	b .L115
.L114:
	ldr r8, [fp, #-12]
	ldr r4, [fp, #-4]
	mov r5, #4
	mul r5, r4, r5
	add r4, r8, r5
	ldr r5, [r4]
	str r5, [fp, #-4]
	b .L115
.L115:
	b .L105
.L116:
	ldr r6, [fp, #-16]
	ldr r4, [fp, #-8]
	mov r5, #4
	mul r5, r4, r5
	add r4, r6, r5
	ldr r5, [r4]
	ldr r4, [fp, #-16]
	ldr r6, [fp, #-4]
	mov r7, #4
	mul r7, r6, r7
	add r6, r4, r7
	ldr r4, [r6]
	cmp r5, r4
	beq .L113
	b .L126
.L117:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L118:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L119:
	b .L116
.L124:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L125:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L126:
	b .L114

	.global KMP
	.type KMP , %function
KMP:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	ldr r4, =16400
	sub sp, sp, r4
.L130:
	ldr r10, =-16400
	str r0, [fp, r10]
	ldr r9, =-16396
	str r1, [fp, r9]
	ldr r8, =-16400
	ldr r4, [fp, r8]
	mov r5, #0
	mov r6, #4
	mul r6, r5, r6
	ldr r5, =-16392
	add r5, r5, r6
	add r6, fp, r5
	mov r0, r4
	mov r1, r6
	bl get_next
	ldr r7, =0
	str r7, [fp, #-8]
	ldr r8, =0
	str r8, [fp, #-4]
	b .L137
.L137:
	ldr r4, =-16396
	ldr r9, [fp, r4]
	ldr r4, [fp, #-4]
	mov r5, #4
	mul r5, r4, r5
	add r4, r9, r5
	ldr r5, [r4]
	cmp r5, #0
	bne .L138
	b .L143
.L138:
	ldr r4, =-16400
	ldr r6, [fp, r4]
	ldr r4, [fp, #-8]
	mov r5, #4
	mul r5, r4, r5
	add r4, r6, r5
	ldr r5, [r4]
	ldr r6, =-16396
	ldr r4, [fp, r6]
	ldr r6, [fp, #-4]
	mov r7, #4
	mul r6, r6, r7
	add r7, r4, r6
	ldr r4, [r7]
	cmp r5, r4
	beq .L145
	b .L154
.L139:
	ldr r6, =0
	sub r4, r6, #1
	mov r0, r4
	ldr r1, =16400
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L142:
	ldr r1, =16400
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L143:
	b .L139
.L144:
	ldr r1, =16400
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L145:
	ldr r5, [fp, #-8]
	add r4, r5, #1
	str r4, [fp, #-8]
	ldr r6, [fp, #-4]
	add r4, r6, #1
	str r4, [fp, #-4]
	ldr r4, =-16400
	ldr r5, [fp, r4]
	ldr r4, [fp, #-8]
	mov r6, #4
	mul r6, r4, r6
	add r4, r5, r6
	ldr r5, [r4]
	cmp r5, #0
	moveq r6, #1
	movne r6, #0
	cmp r6, #0
	bne .L155
	b .L161
.L146:
	ldr r7, [fp, #-8]
	mov r4, #4
	mul r5, r7, r4
	ldr r4, =-16392
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, [r6]
	str r4, [fp, #-8]
	ldr r5, [fp, #-8]
	ldr r4, =0
	sub r6, r4, #1
	cmp r5, r6
	beq .L165
	b .L169
.L147:
	b .L137
.L152:
	ldr r1, =16400
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L153:
	ldr r1, =16400
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L154:
	b .L146
.L155:
	ldr r7, [fp, #-4]
	mov r0, r7
	ldr r1, =16400
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L156:
	b .L147
.L160:
	ldr r1, =16400
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L161:
	b .L156
.L162:
	ldr r1, =16400
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L163:
	b .L156
.L165:
	ldr r8, [fp, #-8]
	add r4, r8, #1
	str r4, [fp, #-8]
	ldr r5, [fp, #-4]
	add r4, r5, #1
	str r4, [fp, #-4]
	b .L166
.L166:
	b .L147
.L167:
	ldr r1, =16400
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L168:
	ldr r1, =16400
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L169:
	b .L166
.L170:
	ldr r1, =16400
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global read_str
	.type read_str , %function
read_str:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L171:
	str r0, [fp, #-8]
	ldr r10, =0
	str r10, [fp, #-4]
	b .L174
.L174:
	ldr r9, =1
	cmp r9, #0
	bne .L175
	b .L178
.L175:
	bl getch
	mov r8, r0
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-4]
	mov r6, #4
	mul r6, r5, r6
	add r5, r4, r6
	str r8, [r5]
	ldr r7, [fp, #-8]
	ldr r4, [fp, #-4]
	mov r5, #4
	mul r5, r4, r5
	add r4, r7, r5
	ldr r5, [r4]
	cmp r5, #10
	beq .L181
	b .L187
.L176:
	ldr r6, [fp, #-8]
	ldr r4, [fp, #-4]
	mov r5, #4
	mul r5, r4, r5
	add r4, r6, r5
	ldr r5, =0
	str r5, [r4]
	ldr r6, [fp, #-4]
	mov r0, r6
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L177:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L178:
	b .L176
.L179:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L181:
	b .L176
.L182:
	ldr r7, [fp, #-4]
	add r4, r7, #1
	str r4, [fp, #-4]
	b .L174
.L185:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L186:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L187:
	b .L182
.L188:
	b .L182
.L190:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r10, fp, lr}
	mov fp, sp
	ldr r4, =32768
	sub sp, sp, r4
.L191:
	mov r10, #0
	mov r4, #4
	mul r5, r10, r4
	ldr r4, =-32768
	add r6, r4, r5
	add r4, fp, r6
	mov r0, r4
	bl read_str
	mov r5, r0
	mov r7, #0
	mov r4, #4
	mul r5, r7, r4
	ldr r4, =-16384
	add r4, r4, r5
	add r6, fp, r4
	mov r0, r6
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
	mov r0, #0
	ldr r1, =32768
	add sp, sp, r1
	pop {r4, r5, r6, r7, r10, fp, lr}
	bx lr
.L194:
	ldr r1, =32768
	add sp, sp, r1
	pop {r4, r5, r6, r7, r10, fp, lr}
	bx lr

