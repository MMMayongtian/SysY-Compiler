.arch armv5t
 @ comm section save global variable without initialization
 .comm a, 24
 .comm n, 4 @global variables
 .comm c, 4
 .text
 .align 2
 @ rodata section save constant
 .section .rodata
 .align 2
 _str0:
 .ascii "%d %d\000"
 .align 2
 _str1:
 .ascii "n = %d"
 .align 2
 _str2:
 .ascii "%c is a Letter!"

 @ text section code
 @ do you know the difference between `bx` and `bl`?
 @ and if max function is non-leaf, what should we do with the `lr` register?
 .text
 .align 2
 .global main
 main:
 push {fp, lr}
 add fp, sp, #4
 ldr r2, _bridge        @ r2 = &c
 ldr r1, _bridge+4      @ r1 = &n
 ldr r0, _bridge+8      @ *r0 = "%d %d\000"
 bl __isoc99_scanf      @ scanf("%d %d", &n, &c)

 ldr r3, _bridge+4      @ r3 = &n
 ldr r2, [r3]           @ r2 = n
@ n = n * 2
 movs    r1, #2
 mul r1, r2, r1
 movs    r2, r1
@ n = n + 5 
 movs    r1, #5
 add r1, r2, r1
 movs    r2, r1
@ n = n - 3
 movs    r1, #3
 sub     r1, r2, r1
 movs r2, r1

 str r2, [r3]

 movs r1, r2
 ldr r0, _bridge+16 @ *r0 = "n = %d"
 bl printf @ printf("n = %d", n);

 mov r0, #0

 pop {fp, pc} @ return 0

 _bridge:
 .word c
 .word n
 .word _str0
 .word _str1
 .word _str2

 .section .note.GNU-stack,"",%progbits @ do you know what's the use of this :-)