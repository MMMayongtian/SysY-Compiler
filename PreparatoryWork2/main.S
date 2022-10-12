	.arch armv5t

@ comm section  
	.comm n, 4 @ global variables
	.comm globla_var, 4 @ global variables
	.text
	.align 2
@ text section code
	.global mul
	mul: @ int mul(int a, int b)
	str fp, [sp, #-4]! @ sp = sp - 4, push fp
	mov fp, sp
	sub sp, sp, #12 @ allocate space for local variable
	str r0, [fp, #-8] @ r0 = [fp, #-8] = a
	str r1, [fp, #-12] @ r1 = [fp, #-12] = b
	mul r0, r1, r0 @ r0 = r1 * r0 = a * b
	add sp, fp, #0 @ release the stack frame of function mul
	ldr fp, [sp], #4 @ post-index mode, pop fp, sp = sp + 4
	bx lr @ recover sp fp pc
_str0:
	.ascii "\012\000" 
	.align 2
	.global main

main:
	push {fp, lr}
	add fp, sp, #4
	bl getint(PLT) 		@ n = getint()

@ while statement	
.L1:
	mov r1, #6
	cmp r0, r1	
	blt .L2				@ if n < 6 go to .L2
	bl getint(PLT) 		@ n = getint()
	b .L1

@ for statement to Calculating factorial
.L2: 					@ Initialize the variables
	mov r5, r0			@ r5 = n
	mov r2, r0     		@ r2 = n
	mov r1, #1			@ r1 = i = 1
	mov r0, #1     		@ r0 = global_var = 1

.L3:					@ for cycle block
	cmp r2, r1     		@ compare i and n
	blt .L4				@ if i > n go to .L4
	bl mul				@ call mul(global,i)
	add r1, #1     		@ i++
	b .L3				@ go for

@ Arithmetic operations
.L4:
	mov r2, #4
	mul r2, r0, r2 		@ global_var = global_var * 4
	mov r0, r2

	mov r2, #2
	add r2, r0, r2 		@ global_var = global_var + 4
	mov r0, r2

	mov r2, #1
	orr r2, r0, r2 		@ global_var = global_var | 4
	mov r0, r2

@ if statement and Logical operations
	mov r3, r0			@ r3 = global_var
	cmp r3, #64			
	ble .L5 			@ if global_var <= 64 go to .L5(Enters the else block)
	cmp r3, #90			
	ble .L6				@ if global_var <= 90 go to .L6 (Enters the if block)
.L5:
	cmp	r3, #96
	ble	.L7				@ if global_var <= 96 go to .L7 (Enter the else block)
	cmp	r3, #122		
	bgt	.L7				@ if global_var >122 go to .L7 (Enter the else block)

.L6: 					@ if block	
	bl	putch(PLT)
	b .L8
.L7:					@ else block
	bl	putf(PLT)
.L8: 
	ldr r0, _bridge+8
	bl	putf(PLT)
	mov r0, #0
	pop {fp, pc} 		@ return 0
	_bridge:
	.word globla_var
	.word n
	.word _str0
	.section .note.GNU-stack,"",%progbits @ do you know what's the use of this :-)