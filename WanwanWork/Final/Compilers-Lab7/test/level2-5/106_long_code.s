	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global n
	.align 4
	.size n, 4
n:
	.word 0
	.text
	.global bubblesort
	.type bubblesort , %function
bubblesort:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L531:
	str r0, [fp, #-16]
	ldr r4, =0
	str r4, [fp, #-12]
	b .L535
.L535:
	ldr r5, [fp, #-12]
	ldr r4, addr_n0
	ldr r6, [r4]
	sub r4, r6, #1
	cmp r5, r4
	movlt r7, #1
	movge r7, #0
	blt .L536
	b .L540
.L536:
	ldr r8, =0
	str r8, [fp, #-8]
	b .L541
.L537:
	ldr r9, =0
	mov r0, r9
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L538:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L539:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L540:
	b .L537
.L541:
	ldr r10, [fp, #-8]
	ldr r4, addr_n0
	ldr r5, [r4]
	ldr r4, [fp, #-12]
	sub r6, r5, r4
	sub r4, r6, #1
	cmp r10, r4
	movlt r5, #1
	movge r5, #0
	blt .L542
	b .L546
.L542:
	ldr r7, [fp, #-16]
	ldr r4, [fp, #-8]
	ldr r5, =0
	add r6, r5, r4
	mov r4, #4
	mul r5, r6, r4
	add r4, r7, r5
	ldr r5, [r4]
	ldr r4, [fp, #-16]
	ldr r6, [fp, #-8]
	add r7, r6, #1
	ldr r6, =0
	add r8, r6, r7
	mov r6, #4
	mul r7, r8, r6
	add r6, r4, r7
	ldr r4, [r6]
	cmp r5, r4
	movgt r7, #1
	movle r7, #0
	bgt .L547
	b .L559
.L543:
	ldr r8, [fp, #-12]
	add r4, r8, #1
	str r4, [fp, #-12]
	b .L535
.L544:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L545:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L546:
	b .L543
.L547:
	ldr r5, [fp, #-16]
	ldr r4, [fp, #-8]
	add r6, r4, #1
	ldr r4, =0
	add r7, r4, r6
	mov r4, #4
	mul r6, r7, r4
	add r4, r5, r6
	ldr r5, [r4]
	str r5, [fp, #-4]
	ldr r6, [fp, #-16]
	ldr r4, [fp, #-8]
	ldr r5, =0
	add r7, r5, r4
	mov r4, #4
	mul r5, r7, r4
	add r4, r6, r5
	ldr r5, [r4]
	ldr r4, [fp, #-16]
	ldr r6, [fp, #-8]
	add r7, r6, #1
	ldr r6, =0
	add r8, r6, r7
	mov r6, #4
	mul r7, r8, r6
	add r6, r4, r7
	str r5, [r6]
	ldr r8, [fp, #-4]
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-8]
	ldr r6, =0
	add r7, r6, r5
	mov r5, #4
	mul r6, r7, r5
	add r5, r4, r6
	str r8, [r5]
	b .L548
.L548:
	ldr r7, [fp, #-8]
	add r4, r7, #1
	str r4, [fp, #-8]
	b .L541
.L557:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L558:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L559:
	b .L548
.L575:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
	b .F0
.LTORG
addr_n0:
	.word n
.F0:

	.global insertsort
	.type insertsort , %function
insertsort:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L576:
	str r0, [fp, #-16]
	ldr r4, =1
	str r4, [fp, #-12]
	b .L579
.L579:
	ldr r5, [fp, #-12]
	ldr r4, addr_n1
	ldr r6, [r4]
	cmp r5, r6
	movlt r7, #1
	movge r7, #0
	blt .L580
	b .L584
.L580:
	ldr r8, [fp, #-16]
	ldr r4, [fp, #-12]
	ldr r5, =0
	add r6, r5, r4
	mov r4, #4
	mul r5, r6, r4
	add r4, r8, r5
	ldr r5, [r4]
	str r5, [fp, #-8]
	ldr r6, [fp, #-12]
	sub r4, r6, #1
	str r4, [fp, #-4]
	b .L591
.L581:
	ldr r5, =0
	mov r0, r5
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L582:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L583:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L584:
	b .L581
.L591:
	ldr r7, [fp, #-4]
	ldr r4, =0
	sub r5, r4, #1
	cmp r7, r5
	movgt r6, #1
	movle r6, #0
	bgt .L594
	b .L597
.L592:
	ldr r8, [fp, #-16]
	ldr r4, [fp, #-4]
	ldr r5, =0
	add r6, r5, r4
	mov r4, #4
	mul r5, r6, r4
	add r4, r8, r5
	ldr r5, [r4]
	ldr r4, [fp, #-16]
	ldr r6, [fp, #-4]
	add r7, r6, #1
	ldr r6, =0
	add r8, r6, r7
	mov r6, #4
	mul r7, r8, r6
	add r6, r4, r7
	str r5, [r6]
	ldr r8, [fp, #-4]
	sub r4, r8, #1
	str r4, [fp, #-4]
	b .L591
.L593:
	ldr r5, [fp, #-8]
	ldr r4, [fp, #-16]
	ldr r6, [fp, #-4]
	add r7, r6, #1
	ldr r6, =0
	add r8, r6, r7
	mov r6, #4
	mul r7, r8, r6
	add r6, r4, r7
	str r5, [r6]
	ldr r8, [fp, #-12]
	add r4, r8, #1
	str r4, [fp, #-12]
	b .L579
.L594:
	ldr r5, [fp, #-8]
	ldr r4, [fp, #-16]
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, r6
	mov r6, #4
	mul r7, r8, r6
	add r6, r4, r7
	ldr r4, [r6]
	cmp r5, r4
	movlt r7, #1
	movge r7, #0
	blt .L592
	b .L604
.L595:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L596:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L597:
	b .L593
.L602:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L603:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L604:
	b .L593
.L615:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr

	.global QuickSort
	.type QuickSort , %function
QuickSort:
	push {r4, r5, r6, r7, r8, r9, fp, lr}
	mov fp, sp
	sub sp, sp, #28
.L616:
	str r0, [fp, #-28]
	str r1, [fp, #-24]
	str r2, [fp, #-20]
	ldr r4, [fp, #-24]
	ldr r5, [fp, #-20]
	cmp r4, r5
	movlt r6, #1
	movge r6, #0
	blt .L620
	b .L624
.L620:
	ldr r7, [fp, #-24]
	str r7, [fp, #-16]
	ldr r8, [fp, #-20]
	str r8, [fp, #-12]
	ldr r9, [fp, #-28]
	ldr r4, [fp, #-24]
	ldr r5, =0
	add r6, r5, r4
	mov r4, #4
	mul r5, r6, r4
	add r4, r9, r5
	ldr r5, [r4]
	str r5, [fp, #-8]
	b .L632
.L621:
	ldr r6, =0
	mov r0, r6
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L622:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L623:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L624:
	b .L621
.L632:
	ldr r7, [fp, #-16]
	ldr r4, [fp, #-12]
	cmp r7, r4
	movlt r5, #1
	movge r5, #0
	blt .L633
	b .L637
.L633:
	b .L638
.L634:
	ldr r6, [fp, #-8]
	ldr r4, [fp, #-28]
	ldr r5, [fp, #-16]
	ldr r7, =0
	add r8, r7, r5
	mov r5, #4
	mul r7, r8, r5
	add r5, r4, r7
	str r6, [r5]
	ldr r8, [fp, #-16]
	sub r4, r8, #1
	str r4, [fp, #-4]
	ldr r5, [fp, #-28]
	ldr r4, [fp, #-24]
	ldr r6, [fp, #-4]
	mov r0, r5
	mov r1, r4
	mov r2, r6
	bl QuickSort
	mov r7, r0
	str r7, [fp, #-4]
	ldr r8, [fp, #-16]
	add r4, r8, #1
	str r4, [fp, #-4]
	ldr r5, [fp, #-28]
	ldr r4, [fp, #-4]
	ldr r6, [fp, #-20]
	mov r0, r5
	mov r1, r4
	mov r2, r6
	bl QuickSort
	mov r7, r0
	str r7, [fp, #-4]
	b .L621
.L635:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L636:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L637:
	b .L634
.L638:
	ldr r8, [fp, #-16]
	ldr r4, [fp, #-12]
	cmp r8, r4
	movlt r5, #1
	movge r5, #0
	blt .L641
	b .L644
.L639:
	ldr r6, [fp, #-12]
	sub r4, r6, #1
	str r4, [fp, #-12]
	b .L638
.L640:
	ldr r5, [fp, #-16]
	ldr r4, [fp, #-12]
	cmp r5, r4
	movlt r6, #1
	movge r6, #0
	blt .L652
	b .L656
.L641:
	ldr r7, [fp, #-28]
	ldr r4, [fp, #-12]
	ldr r5, =0
	add r6, r5, r4
	mov r4, #4
	mul r5, r6, r4
	add r4, r7, r5
	ldr r5, [r4]
	ldr r4, [fp, #-8]
	sub r6, r4, #1
	cmp r5, r6
	movgt r7, #1
	movle r7, #0
	bgt .L639
	b .L651
.L642:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
	b .F1
.LTORG
addr_n1:
	.word n
.F1:
.L643:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L644:
	b .L640
.L649:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L650:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L651:
	b .L640
.L652:
	ldr r8, [fp, #-28]
	ldr r4, [fp, #-12]
	ldr r5, =0
	add r6, r5, r4
	mov r4, #4
	mul r5, r6, r4
	add r4, r8, r5
	ldr r5, [r4]
	ldr r4, [fp, #-28]
	ldr r6, [fp, #-16]
	ldr r7, =0
	add r8, r7, r6
	mov r6, #4
	mul r7, r8, r6
	add r6, r4, r7
	str r5, [r6]
	ldr r8, [fp, #-16]
	add r4, r8, #1
	str r4, [fp, #-16]
	b .L653
.L653:
	b .L664
.L654:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L655:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L656:
	b .L653
.L664:
	ldr r5, [fp, #-16]
	ldr r4, [fp, #-12]
	cmp r5, r4
	movlt r6, #1
	movge r6, #0
	blt .L667
	b .L670
.L665:
	ldr r7, [fp, #-16]
	add r4, r7, #1
	str r4, [fp, #-16]
	b .L664
.L666:
	ldr r5, [fp, #-16]
	ldr r4, [fp, #-12]
	cmp r5, r4
	movlt r6, #1
	movge r6, #0
	blt .L678
	b .L682
.L667:
	ldr r7, [fp, #-28]
	ldr r4, [fp, #-16]
	ldr r5, =0
	add r6, r5, r4
	mov r4, #4
	mul r5, r6, r4
	add r4, r7, r5
	ldr r5, [r4]
	ldr r4, [fp, #-8]
	cmp r5, r4
	movlt r6, #1
	movge r6, #0
	blt .L665
	b .L677
.L668:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L669:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L670:
	b .L666
.L675:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L676:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L677:
	b .L666
.L678:
	ldr r7, [fp, #-28]
	ldr r4, [fp, #-16]
	ldr r5, =0
	add r6, r5, r4
	mov r4, #4
	mul r5, r6, r4
	add r4, r7, r5
	ldr r5, [r4]
	ldr r4, [fp, #-28]
	ldr r6, [fp, #-12]
	ldr r7, =0
	add r8, r7, r6
	mov r6, #4
	mul r7, r8, r6
	add r6, r4, r7
	str r5, [r6]
	ldr r8, [fp, #-12]
	sub r4, r8, #1
	str r4, [fp, #-12]
	b .L679
.L679:
	b .L632
.L680:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L681:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L682:
	b .L679
.L696:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr

	.global getMid
	.type getMid , %function
getMid:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L697:
	str r0, [fp, #-8]
	ldr r4, addr_n2
	ldr r5, [r4]
	ldr r4, =2
	sdiv r6, r5, r4
	mul r4, r6, r4
	sub r6, r5, r4
	ldr r4, =0
	cmp r6, r4
	moveq r5, #1
	movne r5, #0
	beq .L700
	b .L705
.L700:
	ldr r7, addr_n2
	ldr r4, [r7]
	ldr r5, =2
	sdiv r6, r4, r5
	str r6, [fp, #-4]
	ldr r7, [fp, #-8]
	ldr r4, [fp, #-4]
	ldr r5, =0
	add r6, r5, r4
	mov r4, #4
	mul r5, r6, r4
	add r4, r7, r5
	ldr r5, [r4]
	ldr r4, [fp, #-8]
	ldr r6, [fp, #-4]
	sub r7, r6, #1
	ldr r6, =0
	add r8, r6, r7
	mov r6, #4
	mul r7, r8, r6
	add r6, r4, r7
	ldr r4, [r6]
	add r6, r5, r4
	ldr r4, =2
	sdiv r5, r6, r4
	mov r0, r5
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L701:
	ldr r7, addr_n2
	ldr r4, [r7]
	ldr r5, =2
	sdiv r6, r4, r5
	str r6, [fp, #-4]
	ldr r7, [fp, #-8]
	ldr r4, [fp, #-4]
	ldr r5, =0
	add r6, r5, r4
	mov r4, #4
	mul r5, r6, r4
	add r4, r7, r5
	ldr r5, [r4]
	mov r0, r5
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L702:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L703:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L704:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L705:
	b .L701
.L706:
	b .L702
.L715:
	b .L702

	.global getMost
	.type getMost , %function
getMost:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	ldr r4, =4020
	sub sp, sp, r4
.L720:
	ldr r4, =-4020
	str r0, [fp, r4]
	ldr r5, =0
	str r5, [fp, #-16]
	b .L724
.L724:
	ldr r6, [fp, #-16]
	ldr r4, =1000
	cmp r6, r4
	movlt r5, #1
	movge r5, #0
	blt .L725
	b .L729
.L725:
	ldr r7, [fp, #-16]
	ldr r4, =0
	add r5, r4, r7
	mov r4, #4
	mul r4, r5, r4
	ldr r6, =-4016
	add r5, r6, r4
	add r4, fp, r5
	ldr r5, =0
	str r5, [r4]
	ldr r6, [fp, #-16]
	add r4, r6, #1
	str r4, [fp, #-16]
	b .L724
.L726:
	ldr r5, =0
	str r5, [fp, #-16]
	ldr r7, =0
	str r7, [fp, #-12]
	b .L734
.L727:
	ldr r1, =4020
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L728:
	ldr r1, =4020
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L729:
	b .L726
.L734:
	ldr r8, [fp, #-16]
	ldr r4, addr_n2
	ldr r5, [r4]
	cmp r8, r5
	movlt r6, #1
	movge r6, #0
	blt .L735
	b .L739
.L735:
	ldr r4, =-4020
	ldr r7, [fp, r4]
	ldr r4, [fp, #-16]
	ldr r5, =0
	add r6, r5, r4
	mov r4, #4
	mul r5, r6, r4
	add r4, r7, r5
	ldr r5, [r4]
	str r5, [fp, #-4]
	ldr r6, [fp, #-4]
	ldr r4, =0
	add r5, r4, r6
	mov r4, #4
	mul r4, r5, r4
	ldr r6, =-4016
	add r5, r6, r4
	add r4, fp, r5
	ldr r5, [r4]
	add r4, r5, #1
	ldr r5, [fp, #-4]
	ldr r6, =0
	add r7, r6, r5
	mov r5, #4
	mul r5, r7, r5
	ldr r6, =-4016
	add r5, r6, r5
	add r6, fp, r5
	str r4, [r6]
	ldr r7, [fp, #-4]
	ldr r4, =0
	add r5, r4, r7
	mov r4, #4
	mul r4, r5, r4
	ldr r6, =-4016
	add r4, r6, r4
	add r5, fp, r4
	ldr r4, [r5]
	ldr r5, [fp, #-12]
	cmp r4, r5
	movgt r6, #1
	movle r6, #0
	bgt .L750
	b .L757
.L736:
	ldr r7, [fp, #-8]
	mov r0, r7
	ldr r1, =4020
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L737:
	ldr r1, =4020
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L738:
	ldr r1, =4020
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L739:
	b .L736
.L750:
	ldr r8, [fp, #-4]
	ldr r4, =0
	add r5, r4, r8
	mov r4, #4
	mul r6, r5, r4
	ldr r4, =-4016
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, [r5]
	str r4, [fp, #-12]
	ldr r6, [fp, #-4]
	str r6, [fp, #-8]
	b .L751
.L751:
	ldr r7, [fp, #-16]
	add r4, r7, #1
	str r4, [fp, #-16]
	b .L734
	b .F2
.LTORG
addr_n2:
	.word n
.F2:
.L755:
	ldr r1, =4020
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L756:
	ldr r1, =4020
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L757:
	b .L751
.L761:
	ldr r1, =4020
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr

	.global revert
	.type revert , %function
revert:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L762:
	str r0, [fp, #-16]
	ldr r4, =0
	str r4, [fp, #-8]
	ldr r5, =0
	str r5, [fp, #-4]
	b .L767
.L767:
	ldr r6, [fp, #-8]
	ldr r4, [fp, #-4]
	cmp r6, r4
	movlt r5, #1
	movge r5, #0
	blt .L768
	b .L772
.L768:
	ldr r7, [fp, #-16]
	ldr r4, [fp, #-8]
	ldr r5, =0
	add r6, r5, r4
	mov r4, #4
	mul r5, r6, r4
	add r4, r7, r5
	ldr r5, [r4]
	str r5, [fp, #-12]
	ldr r6, [fp, #-16]
	ldr r4, [fp, #-4]
	ldr r5, =0
	add r7, r5, r4
	mov r4, #4
	mul r5, r7, r4
	add r4, r6, r5
	ldr r5, [r4]
	ldr r4, [fp, #-16]
	ldr r6, [fp, #-8]
	ldr r7, =0
	add r8, r7, r6
	mov r6, #4
	mul r7, r8, r6
	add r6, r4, r7
	str r5, [r6]
	ldr r8, [fp, #-12]
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-4]
	ldr r6, =0
	add r7, r6, r5
	mov r5, #4
	mul r6, r7, r5
	add r5, r4, r6
	str r8, [r5]
	ldr r7, [fp, #-8]
	add r4, r7, #1
	str r4, [fp, #-8]
	ldr r5, [fp, #-4]
	sub r4, r5, #1
	str r4, [fp, #-4]
	b .L767
.L769:
	ldr r6, =0
	mov r0, r6
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L770:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L771:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L772:
	b .L769
.L787:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr

	.global arrCopy
	.type arrCopy , %function
arrCopy:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #12
.L788:
	str r0, [fp, #-12]
	str r1, [fp, #-8]
	ldr r4, =0
	str r4, [fp, #-4]
	b .L792
.L792:
	ldr r5, [fp, #-4]
	ldr r4, addr_n3
	ldr r6, [r4]
	cmp r5, r6
	movlt r7, #1
	movge r7, #0
	blt .L793
	b .L797
.L793:
	ldr r8, [fp, #-12]
	ldr r4, [fp, #-4]
	ldr r5, =0
	add r6, r5, r4
	mov r4, #4
	mul r4, r6, r4
	add r5, r8, r4
	ldr r4, [r5]
	ldr r5, [fp, #-8]
	ldr r6, [fp, #-4]
	ldr r7, =0
	add r8, r7, r6
	mov r6, #4
	mul r7, r8, r6
	add r6, r5, r7
	str r4, [r6]
	ldr r8, [fp, #-4]
	add r4, r8, #1
	str r4, [fp, #-4]
	b .L792
.L794:
	ldr r5, =0
	mov r0, r5
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L795:
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L796:
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L797:
	b .L794
.L805:
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr

	.global calSum
	.type calSum , %function
calSum:
	push {r4, r5, r6, r7, r8, r9, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L806:
	str r0, [fp, #-16]
	str r1, [fp, #-12]
	ldr r4, =0
	str r4, [fp, #-8]
	ldr r5, =0
	str r5, [fp, #-4]
	b .L811
.L811:
	ldr r6, [fp, #-4]
	ldr r4, addr_n3
	ldr r5, [r4]
	cmp r6, r5
	movlt r7, #1
	movge r7, #0
	blt .L812
	b .L816
.L812:
	ldr r8, [fp, #-8]
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-4]
	ldr r6, =0
	add r7, r6, r5
	mov r5, #4
	mul r6, r7, r5
	add r5, r4, r6
	ldr r4, [r5]
	add r5, r8, r4
	str r5, [fp, #-8]
	ldr r6, [fp, #-4]
	ldr r4, [fp, #-12]
	sdiv r5, r6, r4
	mul r4, r5, r4
	sub r5, r6, r4
	ldr r4, [fp, #-12]
	sub r6, r4, #1
	cmp r5, r6
	movne r7, #1
	moveq r7, #0
	bne .L821
	b .L826
.L813:
	ldr r8, =0
	mov r0, r8
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L814:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L815:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L816:
	b .L813
.L821:
	ldr r9, [fp, #-16]
	ldr r4, [fp, #-4]
	ldr r5, =0
	add r6, r5, r4
	mov r4, #4
	mul r5, r6, r4
	add r4, r9, r5
	ldr r5, =0
	str r5, [r4]
	b .L823
.L822:
	ldr r6, [fp, #-8]
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-4]
	ldr r7, =0
	add r8, r7, r5
	mov r5, #4
	mul r7, r8, r5
	add r5, r4, r7
	str r6, [r5]
	ldr r8, =0
	str r8, [fp, #-8]
	b .L823
.L823:
	ldr r9, [fp, #-4]
	add r4, r9, #1
	str r4, [fp, #-4]
	b .L811
.L824:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L825:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L826:
	b .L822
.L833:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr

	.global avgPooling
	.type avgPooling , %function
avgPooling:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #20
.L834:
	str r0, [fp, #-20]
	str r1, [fp, #-16]
	ldr r4, =0
	str r4, [fp, #-8]
	ldr r5, =0
	str r5, [fp, #-12]
	b .L840
.L840:
	ldr r6, [fp, #-8]
	ldr r4, addr_n3
	ldr r5, [r4]
	cmp r6, r5
	movlt r7, #1
	movge r7, #0
	blt .L841
	b .L845
.L841:
	ldr r8, [fp, #-8]
	ldr r4, [fp, #-16]
	sub r5, r4, #1
	cmp r8, r5
	movlt r6, #1
	movge r6, #0
	blt .L846
	b .L851
.L842:
	ldr r7, addr_n3
	ldr r4, [r7]
	ldr r5, [fp, #-16]
	sub r6, r4, r5
	add r4, r6, #1
	str r4, [fp, #-8]
	b .L880
.L843:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L844:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L845:
	b .L842
.L846:
	ldr r5, [fp, #-12]
	ldr r4, [fp, #-20]
	ldr r6, [fp, #-8]
	ldr r7, =0
	add r8, r7, r6
	mov r6, #4
	mul r7, r8, r6
	add r6, r4, r7
	ldr r4, [r6]
	add r6, r5, r4
	str r6, [fp, #-12]
	b .L848
.L847:
	ldr r7, [fp, #-8]
	ldr r4, [fp, #-16]
	sub r5, r4, #1
	cmp r7, r5
	moveq r6, #1
	movne r6, #0
	beq .L856
	b .L861
.L848:
	ldr r8, [fp, #-8]
	add r4, r8, #1
	str r4, [fp, #-8]
	b .L840
.L849:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L850:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L851:
	b .L847
.L856:
	ldr r5, [fp, #-20]
	ldr r4, =0
	add r6, r4, #0
	mov r4, #4
	mul r6, r6, r4
	add r4, r5, r6
	ldr r5, [r4]
	str r5, [fp, #-4]
	ldr r6, [fp, #-12]
	ldr r4, [fp, #-16]
	sdiv r5, r6, r4
	ldr r4, [fp, #-20]
	ldr r6, =0
	add r7, r6, #0
	mov r6, #4
	mul r7, r7, r6
	add r6, r4, r7
	str r5, [r6]
	b .L858
.L857:
	ldr r8, [fp, #-12]
	ldr r4, [fp, #-20]
	ldr r5, [fp, #-8]
	ldr r6, =0
	add r7, r6, r5
	mov r5, #4
	mul r5, r7, r5
	add r6, r4, r5
	ldr r4, [r6]
	add r5, r8, r4
	ldr r4, [fp, #-4]
	sub r6, r5, r4
	str r6, [fp, #-12]
	ldr r7, [fp, #-20]
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-16]
	sub r6, r4, r5
	add r4, r6, #1
	ldr r5, =0
	add r6, r5, r4
	mov r4, #4
	mul r5, r6, r4
	add r4, r7, r5
	ldr r5, [r4]
	str r5, [fp, #-4]
	ldr r6, [fp, #-12]
	ldr r4, [fp, #-16]
	sdiv r5, r6, r4
	ldr r4, [fp, #-20]
	ldr r6, [fp, #-8]
	ldr r7, [fp, #-16]
	sub r8, r6, r7
	add r6, r8, #1
	ldr r7, =0
	add r8, r7, r6
	mov r6, #4
	mul r7, r8, r6
	add r6, r4, r7
	str r5, [r6]
	b .L858
	b .F3
.LTORG
addr_n3:
	.word n
.F3:
.L858:
	b .L848
.L859:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L860:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L861:
	b .L857
.L880:
	ldr r8, [fp, #-8]
	ldr r4, addr_n4
	ldr r5, [r4]
	cmp r8, r5
	movlt r6, #1
	movge r6, #0
	blt .L881
	b .L885
.L881:
	ldr r7, [fp, #-20]
	ldr r4, [fp, #-8]
	ldr r5, =0
	add r6, r5, r4
	mov r4, #4
	mul r5, r6, r4
	add r4, r7, r5
	ldr r5, =0
	str r5, [r4]
	ldr r6, [fp, #-8]
	add r4, r6, #1
	str r4, [fp, #-8]
	b .L880
.L882:
	ldr r5, =0
	mov r0, r5
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L883:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L884:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L885:
	b .L882
.L889:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	ldr r4, =264
	sub sp, sp, r4
.L890:
	ldr r4, =32
	ldr r5, addr_n4
	str r4, [r5]
	ldr r6, =0
	add r4, r6, #0
	mov r5, #4
	mul r6, r4, r5
	ldr r4, =-264
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =7
	str r4, [r5]
	ldr r6, =0
	add r4, r6, #1
	mov r5, #4
	mul r6, r4, r5
	ldr r4, =-264
	add r5, r4, r6
	add r4, fp, r5
	ldr r5, =23
	str r5, [r4]
	ldr r6, =0
	add r4, r6, #2
	mov r5, #4
	mul r6, r4, r5
	ldr r4, =-264
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =89
	str r4, [r5]
	ldr r6, =0
	add r4, r6, #3
	mov r5, #4
	mul r6, r4, r5
	ldr r4, =-264
	add r5, r4, r6
	add r4, fp, r5
	ldr r5, =26
	str r5, [r4]
	ldr r6, =0
	add r4, r6, #4
	mov r5, #4
	mul r6, r4, r5
	ldr r4, =-264
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =282
	str r4, [r5]
	ldr r6, =0
	add r4, r6, #5
	mov r5, #4
	mul r6, r4, r5
	ldr r4, =-264
	add r5, r4, r6
	add r4, fp, r5
	ldr r5, =254
	str r5, [r4]
	ldr r6, =0
	add r4, r6, #6
	mov r5, #4
	mul r6, r4, r5
	ldr r4, =-264
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =27
	str r4, [r5]
	ldr r6, =0
	add r4, r6, #7
	mov r5, #4
	mul r6, r4, r5
	ldr r4, =-264
	add r5, r4, r6
	add r4, fp, r5
	ldr r5, =5
	str r5, [r4]
	ldr r6, =0
	add r4, r6, #8
	mov r5, #4
	mul r6, r4, r5
	ldr r4, =-264
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =83
	str r4, [r5]
	ldr r6, =0
	add r4, r6, #9
	mov r5, #4
	mul r6, r4, r5
	ldr r4, =-264
	add r5, r4, r6
	add r4, fp, r5
	ldr r5, =273
	str r5, [r4]
	ldr r6, =0
	add r4, r6, #10
	mov r5, #4
	mul r6, r4, r5
	ldr r4, =-264
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =574
	str r4, [r5]
	ldr r6, =0
	add r4, r6, #11
	mov r5, #4
	mul r6, r4, r5
	ldr r4, =-264
	add r5, r4, r6
	add r4, fp, r5
	ldr r5, =905
	str r5, [r4]
	ldr r6, =0
	add r4, r6, #12
	mov r5, #4
	mul r6, r4, r5
	ldr r4, =-264
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =354
	str r4, [r5]
	ldr r6, =0
	add r4, r6, #13
	mov r5, #4
	mul r6, r4, r5
	ldr r4, =-264
	add r5, r4, r6
	add r4, fp, r5
	ldr r5, =657
	str r5, [r4]
	ldr r6, =0
	add r4, r6, #14
	mov r5, #4
	mul r4, r4, r5
	ldr r6, =-264
	add r5, r6, r4
	add r4, fp, r5
	ldr r5, =935
	str r5, [r4]
	ldr r6, =0
	add r4, r6, #15
	mov r5, #4
	mul r6, r4, r5
	ldr r4, =-264
	add r5, r4, r6
	add r4, fp, r5
	ldr r5, =264
	str r5, [r4]
	ldr r6, =0
	add r4, r6, #16
	mov r5, #4
	mul r6, r4, r5
	ldr r4, =-264
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =639
	str r4, [r5]
	ldr r6, =0
	add r4, r6, #17
	mov r5, #4
	mul r4, r4, r5
	ldr r6, =-264
	add r5, r6, r4
	add r4, fp, r5
	ldr r5, =459
	str r5, [r4]
	ldr r6, =0
	add r4, r6, #18
	mov r5, #4
	mul r6, r4, r5
	ldr r4, =-264
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =29
	str r4, [r5]
	ldr r6, =0
	add r4, r6, #19
	mov r5, #4
	mul r6, r4, r5
	ldr r4, =-264
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =68
	str r4, [r5]
	ldr r6, =0
	add r4, r6, #20
	mov r5, #4
	mul r6, r4, r5
	ldr r4, =-264
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =929
	str r4, [r5]
	ldr r6, =0
	add r4, r6, #21
	mov r5, #4
	mul r6, r4, r5
	ldr r4, =-264
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =756
	str r4, [r5]
	ldr r6, =0
	add r4, r6, #22
	mov r5, #4
	mul r6, r4, r5
	ldr r4, =-264
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =452
	str r4, [r5]
	ldr r6, =0
	add r4, r6, #23
	mov r5, #4
	mul r6, r4, r5
	ldr r4, =-264
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =279
	str r4, [r5]
	ldr r6, =0
	add r4, r6, #24
	mov r5, #4
	mul r6, r4, r5
	ldr r4, =-264
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =58
	str r4, [r5]
	ldr r6, =0
	add r4, r6, #25
	mov r5, #4
	mul r6, r4, r5
	ldr r4, =-264
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =87
	str r4, [r5]
	ldr r6, =0
	add r4, r6, #26
	mov r5, #4
	mul r6, r4, r5
	ldr r4, =-264
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =96
	str r4, [r5]
	ldr r6, =0
	add r4, r6, #27
	mov r5, #4
	mul r6, r4, r5
	ldr r4, =-264
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =36
	str r4, [r5]
	ldr r6, =0
	add r4, r6, #28
	mov r5, #4
	mul r6, r4, r5
	ldr r4, =-264
	add r5, r4, r6
	add r4, fp, r5
	ldr r5, =39
	str r5, [r4]
	ldr r6, =0
	add r4, r6, #29
	mov r5, #4
	mul r6, r4, r5
	ldr r4, =-264
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =28
	str r4, [r5]
	ldr r6, =0
	add r4, r6, #30
	mov r5, #4
	mul r6, r4, r5
	ldr r4, =-264
	add r5, r4, r6
	add r4, fp, r5
	ldr r5, =1
	str r5, [r4]
	ldr r6, =0
	add r4, r6, #31
	mov r5, #4
	mul r6, r4, r5
	ldr r4, =-264
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =290
	str r4, [r5]
	mov r6, #0
	mov r4, #4
	mul r5, r6, r4
	ldr r4, =-264
	add r4, r4, r5
	add r6, fp, r4
	mov r4, #0
	mov r5, #4
	mul r4, r4, r5
	b .B0
.LTORG
addr_n4:
	.word n
.B0:
	mov r5, #-136
	add r5, r5, r4
	add r4, fp, r5
	mov r0, r6
	mov r1, r4
	bl arrCopy
	mov r7, r0
	str r7, [fp, #-8]
	mov r8, #0
	mov r4, #4
	mul r5, r8, r4
	mov r4, #-136
	add r4, r4, r5
	add r6, fp, r4
	mov r0, r6
	bl revert
	mov r5, r0
	str r5, [fp, #-8]
	ldr r7, =0
	str r7, [fp, #-4]
	b .L959
	b .F5
.LTORG
addr_n5:
	.word n
.F5:
.L959:
	ldr r8, [fp, #-4]
	ldr r4, =32
	cmp r8, r4
	movlt r5, #1
	movge r5, #0
	blt .L960
	b .L964
.L960:
	ldr r6, [fp, #-4]
	ldr r4, =0
	add r5, r4, r6
	mov r4, #4
	mul r6, r5, r4
	mov r4, #-136
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, [r5]
	str r4, [fp, #-8]
	ldr r6, [fp, #-8]
	mov r0, r6
	bl putint
	ldr r7, [fp, #-4]
	add r4, r7, #1
	str r4, [fp, #-4]
	b .L959
.L961:
	mov r5, #0
	mov r4, #4
	mul r6, r5, r4
	mov r4, #-136
	add r5, r4, r6
	add r4, fp, r5
	mov r0, r4
	bl bubblesort
	mov r6, r0
	str r6, [fp, #-8]
	ldr r7, =0
	str r7, [fp, #-4]
	b .L968
.L962:
	ldr r1, =264
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L963:
	ldr r1, =264
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L964:
	b .L961
.L968:
	ldr r8, [fp, #-4]
	ldr r4, =32
	cmp r8, r4
	movlt r5, #1
	movge r5, #0
	blt .L969
	b .L973
.L969:
	ldr r6, [fp, #-4]
	ldr r4, =0
	add r5, r4, r6
	mov r4, #4
	mul r6, r5, r4
	mov r4, #-136
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, [r5]
	str r4, [fp, #-8]
	ldr r6, [fp, #-8]
	mov r0, r6
	bl putint
	ldr r7, [fp, #-4]
	add r4, r7, #1
	str r4, [fp, #-4]
	b .L968
.L970:
	mov r5, #0
	mov r4, #4
	mul r6, r5, r4
	mov r4, #-136
	add r4, r4, r6
	add r5, fp, r4
	mov r0, r5
	bl getMid
	mov r6, r0
	str r6, [fp, #-8]
	ldr r7, [fp, #-8]
	mov r0, r7
	bl putint
	mov r8, #0
	mov r4, #4
	mul r5, r8, r4
	mov r4, #-136
	add r6, r4, r5
	add r4, fp, r6
	mov r0, r4
	bl getMost
	mov r5, r0
	str r5, [fp, #-8]
	ldr r7, [fp, #-8]
	mov r0, r7
	bl putint
	mov r8, #0
	mov r4, #4
	mul r5, r8, r4
	ldr r4, =-264
	add r4, r4, r5
	add r6, fp, r4
	mov r4, #0
	mov r5, #4
	mul r4, r4, r5
	mov r5, #-136
	add r5, r5, r4
	add r4, fp, r5
	mov r0, r6
	mov r1, r4
	bl arrCopy
	mov r7, r0
	str r7, [fp, #-8]
	mov r8, #0
	mov r4, #4
	mul r5, r8, r4
	mov r4, #-136
	add r6, r4, r5
	add r4, fp, r6
	mov r0, r4
	bl bubblesort
	mov r5, r0
	str r5, [fp, #-8]
	ldr r7, =0
	str r7, [fp, #-4]
	b .L977
	b .F6
.LTORG
addr_n6:
	.word n
.F6:
.L971:
	ldr r1, =264
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L972:
	ldr r1, =264
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L973:
	b .L970
.L977:
	ldr r8, [fp, #-4]
	ldr r4, =32
	cmp r8, r4
	movlt r5, #1
	movge r5, #0
	blt .L978
	b .L982
.L978:
	ldr r6, [fp, #-4]
	ldr r4, =0
	add r5, r4, r6
	mov r4, #4
	mul r6, r5, r4
	mov r4, #-136
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, [r5]
	str r4, [fp, #-8]
	ldr r6, [fp, #-8]
	mov r0, r6
	bl putint
	ldr r7, [fp, #-4]
	add r4, r7, #1
	str r4, [fp, #-4]
	b .L977
.L979:
	mov r5, #0
	mov r4, #4
	mul r6, r5, r4
	ldr r4, =-264
	add r4, r4, r6
	add r5, fp, r4
	mov r4, #0
	mov r6, #4
	mul r4, r4, r6
	mov r6, #-136
	add r6, r6, r4
	add r4, fp, r6
	mov r0, r5
	mov r1, r4
	bl arrCopy
	mov r7, r0
	str r7, [fp, #-8]
	mov r8, #0
	mov r4, #4
	mul r5, r8, r4
	mov r4, #-136
	add r4, r4, r5
	add r6, fp, r4
	mov r0, r6
	bl insertsort
	mov r5, r0
	str r5, [fp, #-8]
	ldr r7, =0
	str r7, [fp, #-4]
	b .L986
.L980:
	ldr r1, =264
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L981:
	ldr r1, =264
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L982:
	b .L979
.L986:
	ldr r8, [fp, #-4]
	ldr r4, =32
	cmp r8, r4
	movlt r5, #1
	movge r5, #0
	blt .L987
	b .L991
.L987:
	ldr r6, [fp, #-4]
	ldr r4, =0
	add r5, r4, r6
	mov r4, #4
	mul r6, r5, r4
	mov r4, #-136
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, [r5]
	str r4, [fp, #-8]
	ldr r6, [fp, #-8]
	mov r0, r6
	bl putint
	ldr r7, [fp, #-4]
	add r4, r7, #1
	str r4, [fp, #-4]
	b .L986
.L988:
	mov r5, #0
	mov r4, #4
	mul r6, r5, r4
	ldr r4, =-264
	add r5, r4, r6
	add r4, fp, r5
	mov r5, #0
	mov r6, #4
	mul r5, r5, r6
	mov r6, #-136
	add r6, r6, r5
	add r5, fp, r6
	mov r0, r4
	mov r1, r5
	bl arrCopy
	mov r7, r0
	str r7, [fp, #-8]
	ldr r8, =0
	str r8, [fp, #-4]
	ldr r9, =31
	str r9, [fp, #-8]
	mov r10, #0
	mov r4, #4
	mul r5, r10, r4
	mov r4, #-136
	add r6, r4, r5
	add r4, fp, r6
	ldr r5, [fp, #-4]
	ldr r6, [fp, #-8]
	mov r0, r4
	mov r1, r5
	mov r2, r6
	bl QuickSort
	mov r7, r0
	str r7, [fp, #-8]
	b .L995
	b .F7
.LTORG
addr_n7:
	.word n
.F7:
.L989:
	ldr r1, =264
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L990:
	ldr r1, =264
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L991:
	b .L988
.L995:
	ldr r8, [fp, #-4]
	ldr r4, =32
	cmp r8, r4
	movlt r5, #1
	movge r5, #0
	blt .L996
	b .L1000
.L996:
	ldr r6, [fp, #-4]
	ldr r4, =0
	add r5, r4, r6
	mov r4, #4
	mul r6, r5, r4
	mov r4, #-136
	add r5, r4, r6
	add r4, fp, r5
	ldr r5, [r4]
	str r5, [fp, #-8]
	ldr r6, [fp, #-8]
	mov r0, r6
	bl putint
	ldr r7, [fp, #-4]
	add r4, r7, #1
	str r4, [fp, #-4]
	b .L995
.L997:
	mov r5, #0
	mov r4, #4
	mul r6, r5, r4
	ldr r4, =-264
	add r4, r4, r6
	add r5, fp, r4
	mov r4, #0
	mov r6, #4
	mul r6, r4, r6
	mov r4, #-136
	add r6, r4, r6
	add r4, fp, r6
	mov r0, r5
	mov r1, r4
	bl arrCopy
	mov r7, r0
	str r7, [fp, #-8]
	mov r8, #0
	mov r4, #4
	mul r5, r8, r4
	mov r4, #-136
	add r6, r4, r5
	add r4, fp, r6
	mov r0, r4
	mov r1, #4
	bl calSum
	mov r5, r0
	str r5, [fp, #-8]
	ldr r7, =0
	str r7, [fp, #-4]
	b .L1004
.L998:
	ldr r1, =264
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L999:
	ldr r1, =264
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L1000:
	b .L997
.L1004:
	ldr r8, [fp, #-4]
	ldr r4, =32
	cmp r8, r4
	movlt r5, #1
	movge r5, #0
	blt .L1005
	b .L1009
.L1005:
	ldr r6, [fp, #-4]
	ldr r4, =0
	add r5, r4, r6
	mov r4, #4
	mul r6, r5, r4
	mov r4, #-136
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, [r5]
	str r4, [fp, #-8]
	ldr r6, [fp, #-8]
	mov r0, r6
	bl putint
	ldr r7, [fp, #-4]
	add r4, r7, #1
	str r4, [fp, #-4]
	b .L1004
.L1006:
	mov r5, #0
	mov r4, #4
	mul r6, r5, r4
	ldr r4, =-264
	add r5, r4, r6
	add r4, fp, r5
	mov r5, #0
	mov r6, #4
	mul r5, r5, r6
	mov r6, #-136
	add r6, r6, r5
	add r5, fp, r6
	mov r0, r4
	mov r1, r5
	bl arrCopy
	mov r7, r0
	str r7, [fp, #-8]
	mov r8, #0
	mov r4, #4
	mul r5, r8, r4
	mov r4, #-136
	add r4, r4, r5
	add r6, fp, r4
	mov r0, r6
	mov r1, #3
	bl avgPooling
	mov r5, r0
	str r5, [fp, #-8]
	ldr r7, =0
	str r7, [fp, #-4]
	b .L1013
	b .F8
.LTORG
addr_n8:
	.word n
.F8:
.L1007:
	ldr r1, =264
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L1008:
	ldr r1, =264
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L1009:
	b .L1006
.L1013:
	ldr r8, [fp, #-4]
	ldr r4, =32
	cmp r8, r4
	movlt r5, #1
	movge r5, #0
	blt .L1014
	b .L1018
.L1014:
	ldr r6, [fp, #-4]
	ldr r4, =0
	add r5, r4, r6
	mov r4, #4
	mul r6, r5, r4
	mov r4, #-136
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, [r5]
	str r4, [fp, #-8]
	ldr r6, [fp, #-8]
	mov r0, r6
	bl putint
	ldr r7, [fp, #-4]
	add r4, r7, #1
	str r4, [fp, #-4]
	b .L1013
.L1015:
	ldr r5, =0
	mov r0, r5
	ldr r1, =264
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L1016:
	ldr r1, =264
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L1017:
	ldr r1, =264
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L1018:
	b .L1015
.L1022:
	ldr r1, =264
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

addr_n9:
	.word n
