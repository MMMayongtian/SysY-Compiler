	.text
	.file	"SysY.ll"
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	movl	$0, -8(%rsp)
	movl	$2, -20(%rsp)
	movl	$1, -16(%rsp)
	.p2align	4, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-20(%rsp), %eax
	cmpl	-12(%rsp), %eax
	jg	.LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-20(%rsp), %eax
	movl	-16(%rsp), %ecx
	imull	%eax, %ecx
	movl	%ecx, -16(%rsp)
	incl	%eax
	movl	%eax, -20(%rsp)
	jmp	.LBB0_1
.LBB0_3:
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%d%d"
	.size	.L.str, 5

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Hello World %d\n"
	.size	.L.str.1, 16

	.section	".note.GNU-stack","",@progbits
