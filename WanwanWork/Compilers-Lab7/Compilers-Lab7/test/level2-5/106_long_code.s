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
	ldr r10, =0
	str r10, [fp, #-12]
	b .L535
.L535:
	ldr r9, [fp, #-12]
	ldr r4, addr_n0
	ldr r5, [r4]
	sub r4, r5, #1
	cmp r9, r4
	movlt r6, #1
	movge r6, #0
	blt .L536
	b .L540
.L536:
	ldr r7, =0
	str r7, [fp, #-8]
	b .L541
.L537:
	mov r0, #0
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
	ldr r8, [fp, #-8]
	ldr r4, addr_n0
	ldr r5, [r4]
	ldr r4, [fp, #-12]
	sub r6, r5, r4
	sub r4, r6, #1
	cmp r8, r4
	movlt r5, #1
	movge r5, #0
	blt .L542
	b .L546
.L542:
	ldr r7, [fp, #-16]
	ldr r4, [fp, #-8]
	mov r5, #4
	mul r5, r4, r5
	add r4, r7, r5
	ldr r5, [r4]
	ldr r4, [fp, #-16]
	ldr r6, [fp, #-8]
	add r7, r6, #1
	mov r6, #4
	mul r7, r7, r6
	add r6, r4, r7
	ldr r4, [r6]
	cmp r5, r4
	movgt r7, #1
	movle r7, #0
	bgt .L547
	b .L555
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
	mov r4, #4
	mul r6, r6, r4
	add r4, r5, r6
	ldr r5, [r4]
	str r5, [fp, #-4]
	ldr r6, [fp, #-16]
	ldr r4, [fp, #-8]
	mov r5, #4
	mul r5, r4, r5
	add r4, r6, r5
	ldr r5, [r4]
	ldr r4, [fp, #-16]
	ldr r6, [fp, #-8]
	add r7, r6, #1
	mov r6, #4
	mul r7, r7, r6
	add r6, r4, r7
	str r5, [r6]
	ldr r8, [fp, #-4]
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-8]
	mov r6, #4
	mul r6, r5, r6
	add r5, r4, r6
	str r8, [r5]
	b .L548
.L548:
	ldr r7, [fp, #-8]
	add r4, r7, #1
	str r4, [fp, #-8]
	b .L541
.L553:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L554:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L555:
	b .L548
.L563:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global insertsort
	.type insertsort , %function
insertsort:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L564:
	str r0, [fp, #-16]
	ldr r10, =1
	str r10, [fp, #-12]
	b .L567
.L567:
	ldr r9, [fp, #-12]
	ldr r4, addr_n0
	ldr r5, [r4]
	cmp r9, r5
	movlt r6, #1
	movge r6, #0
	blt .L568
	b .L572
.L568:
	ldr r7, [fp, #-16]
	ldr r4, [fp, #-12]
	mov r5, #4
	mul r5, r4, r5
	add r4, r7, r5
	ldr r5, [r4]
	str r5, [fp, #-8]
	ldr r6, [fp, #-12]
	sub r4, r6, #1
	str r4, [fp, #-4]
	b .L577
.L569:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L570:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L571:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L572:
	b .L569
.L577:
	ldr r5, [fp, #-4]
	ldr r4, =0
	sub r6, r4, #1
	cmp r5, r6
	movgt r7, #1
	movle r7, #0
	bgt .L580
	b .L583
.L578:
	ldr r8, [fp, #-16]
	ldr r4, [fp, #-4]
	mov r5, #4
	mul r5, r4, r5
	add r4, r8, r5
	ldr r5, [r4]
	ldr r4, [fp, #-16]
	ldr r6, [fp, #-4]
	add r7, r6, #1
	mov r6, #4
	mul r7, r7, r6
	add r6, r4, r7
	str r5, [r6]
	ldr r8, [fp, #-4]
	sub r4, r8, #1
	str r4, [fp, #-4]
	b .L577
.L579:
	ldr r5, [fp, #-8]
	ldr r4, [fp, #-16]
	ldr r6, [fp, #-4]
	add r7, r6, #1
	mov r6, #4
	mul r7, r7, r6
	add r6, r4, r7
	str r5, [r6]
	ldr r8, [fp, #-12]
	add r4, r8, #1
	str r4, [fp, #-12]
	b .L567
.L580:
	ldr r5, [fp, #-8]
	ldr r4, [fp, #-16]
	ldr r6, [fp, #-4]
	mov r7, #4
	mul r7, r6, r7
	add r6, r4, r7
	ldr r4, [r6]
	cmp r5, r4
	movlt r7, #1
	movge r7, #0
	blt .L578
	b .L588
.L581:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L582:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L583:
	b .L579
.L586:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L587:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L588:
	b .L579
.L593:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global QuickSort
	.type QuickSort , %function
QuickSort:
	push {r4, r5, r6, r7, r8, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #28
.L594:
	str r0, [fp, #-28]
	str r1, [fp, #-24]
	str r2, [fp, #-20]
	ldr r10, [fp, #-24]
	ldr r4, [fp, #-20]
	cmp r10, r4
	movlt r5, #1
	movge r5, #0
	blt .L598
	b .L602
.L598:
	ldr r6, [fp, #-24]
	str r6, [fp, #-16]
	ldr r7, [fp, #-20]
	str r7, [fp, #-12]
	ldr r8, [fp, #-28]
	ldr r4, [fp, #-24]
	mov r5, #4
	mul r5, r4, r5
	add r4, r8, r5
	ldr r5, [r4]
	str r5, [fp, #-8]
	b .L608
.L599:
	mov r0, #0
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L600:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L601:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L602:
	b .L599
.L608:
	ldr r6, [fp, #-16]
	ldr r4, [fp, #-12]
	cmp r6, r4
	movlt r5, #1
	movge r5, #0
	blt .L609
	b .L613
.L609:
	b .L614
.L610:
	ldr r7, [fp, #-8]
	ldr r4, [fp, #-28]
	ldr r5, [fp, #-16]
	mov r6, #4
	mul r6, r5, r6
	add r5, r4, r6
	str r7, [r5]
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
	b .L599
.L611:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L612:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L613:
	b .L610
.L614:
	ldr r8, [fp, #-16]
	ldr r4, [fp, #-12]
	cmp r8, r4
	movlt r5, #1
	movge r5, #0
	blt .L617
	b .L620
.L615:
	ldr r6, [fp, #-12]
	sub r4, r6, #1
	str r4, [fp, #-12]
	b .L614
.L616:
	ldr r5, [fp, #-16]
	ldr r4, [fp, #-12]
	cmp r5, r4
	movlt r6, #1
	movge r6, #0
	blt .L626
	b .L630
.L617:
	ldr r7, [fp, #-28]
	ldr r4, [fp, #-12]
	mov r5, #4
	mul r5, r4, r5
	add r4, r7, r5
	ldr r5, [r4]
	ldr r4, [fp, #-8]
	sub r6, r4, #1
	cmp r5, r6
	movgt r7, #1
	movle r7, #0
	bgt .L615
	b .L625
.L618:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L619:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L620:
	b .L616
.L623:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L624:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L625:
	b .L616
.L626:
	ldr r8, [fp, #-28]
	ldr r4, [fp, #-12]
	mov r5, #4
	mul r5, r4, r5
	add r4, r8, r5
	ldr r5, [r4]
	ldr r4, [fp, #-28]
	ldr r6, [fp, #-16]
	mov r7, #4
	mul r7, r6, r7
	add r6, r4, r7
	str r5, [r6]
	ldr r8, [fp, #-16]
	add r4, r8, #1
	str r4, [fp, #-16]
	b .L627
.L627:
	b .L634
.L628:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L629:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L630:
	b .L627
.L634:
	ldr r5, [fp, #-16]
	ldr r4, [fp, #-12]
	cmp r5, r4
	movlt r6, #1
	movge r6, #0
	blt .L637
	b .L640
.L635:
	ldr r7, [fp, #-16]
	add r4, r7, #1
	str r4, [fp, #-16]
	b .L634
.L636:
	ldr r5, [fp, #-16]
	ldr r4, [fp, #-12]
	cmp r5, r4
	movlt r6, #1
	movge r6, #0
	blt .L646
	b .L650
.L637:
	ldr r7, [fp, #-28]
	ldr r4, [fp, #-16]
	mov r5, #4
	mul r5, r4, r5
	add r4, r7, r5
	ldr r5, [r4]
	ldr r4, [fp, #-8]
	cmp r5, r4
	movlt r6, #1
	movge r6, #0
	blt .L635
	b .L645
.L638:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L639:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L640:
	b .L636
.L643:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L644:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L645:
	b .L636
.L646:
	ldr r7, [fp, #-28]
	ldr r4, [fp, #-16]
	mov r5, #4
	mul r5, r4, r5
	add r4, r7, r5
	ldr r5, [r4]
	ldr r4, [fp, #-28]
	ldr r6, [fp, #-12]
	mov r7, #4
	mul r7, r6, r7
	add r6, r4, r7
	str r5, [r6]
	ldr r8, [fp, #-12]
	sub r4, r8, #1
	str r4, [fp, #-12]
	b .L647
.L647:
	b .L608
.L648:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L649:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
.L650:
	b .L647
.L658:
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r10, fp, lr}
	bx lr
	b .F0
.LTORG
addr_n0:
	.word n
.F0:

	.global getMid
	.type getMid , %function
getMid:
	push {r4, r5, r6, r7, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L659:
	str r0, [fp, #-8]
	ldr r10, addr_n1
	ldr r4, [r10]
	ldr r5, =2
	sdiv r6, r4, r5
	mul r5, r6, r5
	sub r6, r4, r5
	cmp r6, #0
	beq .L662
	b .L667
.L662:
	ldr r7, addr_n1
	ldr r4, [r7]
	ldr r5, =2
	sdiv r6, r4, r5
	str r6, [fp, #-4]
	ldr r7, [fp, #-8]
	ldr r4, [fp, #-4]
	mov r5, #4
	mul r5, r4, r5
	add r4, r7, r5
	ldr r5, [r4]
	ldr r4, [fp, #-8]
	ldr r6, [fp, #-4]
	sub r7, r6, #1
	mov r6, #4
	mul r6, r7, r6
	add r7, r4, r6
	ldr r4, [r7]
	add r6, r5, r4
	ldr r4, =2
	sdiv r5, r6, r4
	mov r0, r5
	add sp, sp, #8
	pop {r4, r5, r6, r7, r10, fp, lr}
	bx lr
.L663:
	ldr r7, addr_n1
	ldr r4, [r7]
	ldr r5, =2
	sdiv r6, r4, r5
	str r6, [fp, #-4]
	ldr r7, [fp, #-8]
	ldr r4, [fp, #-4]
	mov r5, #4
	mul r5, r4, r5
	add r4, r7, r5
	ldr r5, [r4]
	mov r0, r5
	add sp, sp, #8
	pop {r4, r5, r6, r7, r10, fp, lr}
	bx lr
.L664:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r10, fp, lr}
	bx lr
.L665:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r10, fp, lr}
	bx lr
.L666:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r10, fp, lr}
	bx lr
.L667:
	b .L663
.L668:
	b .L664
.L673:
	b .L664

	.global getMost
	.type getMost , %function
getMost:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	ldr r4, =4020
	sub sp, sp, r4
.L676:
	ldr r10, =-4020
	str r0, [fp, r10]
	ldr r9, =0
	str r9, [fp, #-16]
	b .L680
.L680:
	ldr r8, [fp, #-16]
	ldr r4, =1000
	cmp r8, r4
	movlt r5, #1
	movge r5, #0
	blt .L681
	b .L685
.L681:
	ldr r6, [fp, #-16]
	mov r4, #4
	mul r5, r6, r4
	ldr r4, =-4016
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, =0
	str r4, [r6]
	ldr r5, [fp, #-16]
	add r4, r5, #1
	str r4, [fp, #-16]
	b .L680
.L682:
	ldr r6, =0
	str r6, [fp, #-16]
	ldr r7, =0
	str r7, [fp, #-12]
	b .L688
.L683:
	ldr r1, =4020
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L684:
	ldr r1, =4020
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L685:
	b .L682
.L688:
	ldr r8, [fp, #-16]
	ldr r4, addr_n1
	ldr r5, [r4]
	cmp r8, r5
	movlt r6, #1
	movge r6, #0
	blt .L689
	b .L693
.L689:
	ldr r4, =-4020
	ldr r7, [fp, r4]
	ldr r4, [fp, #-16]
	mov r5, #4
	mul r5, r4, r5
	add r4, r7, r5
	ldr r5, [r4]
	str r5, [fp, #-4]
	ldr r6, [fp, #-4]
	mov r4, #4
	mul r4, r6, r4
	ldr r5, =-4016
	add r6, r5, r4
	add r4, fp, r6
	ldr r5, [r4]
	add r4, r5, #1
	ldr r5, [fp, #-4]
	mov r6, #4
	mul r5, r5, r6
	ldr r6, =-4016
	add r6, r6, r5
	add r5, fp, r6
	str r4, [r5]
	ldr r7, [fp, #-4]
	mov r4, #4
	mul r5, r7, r4
	ldr r4, =-4016
	add r6, r4, r5
	add r4, fp, r6
	ldr r5, [r4]
	ldr r4, [fp, #-12]
	cmp r5, r4
	movgt r6, #1
	movle r6, #0
	bgt .L698
	b .L703
.L690:
	ldr r7, [fp, #-8]
	mov r0, r7
	ldr r1, =4020
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L691:
	ldr r1, =4020
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L692:
	ldr r1, =4020
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L693:
	b .L690
.L698:
	ldr r8, [fp, #-4]
	mov r4, #4
	mul r5, r8, r4
	ldr r4, =-4016
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, [r6]
	str r4, [fp, #-12]
	ldr r5, [fp, #-4]
	str r5, [fp, #-8]
	b .L699
.L699:
	ldr r7, [fp, #-16]
	add r4, r7, #1
	str r4, [fp, #-16]
	b .L688
.L701:
	ldr r1, =4020
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L702:
	ldr r1, =4020
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L703:
	b .L699
.L705:
	ldr r1, =4020
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global revert
	.type revert , %function
revert:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L706:
	str r0, [fp, #-16]
	ldr r10, =0
	str r10, [fp, #-8]
	ldr r9, =0
	str r9, [fp, #-4]
	b .L711
.L711:
	ldr r8, [fp, #-8]
	ldr r4, [fp, #-4]
	cmp r8, r4
	movlt r5, #1
	movge r5, #0
	blt .L712
	b .L716
.L712:
	ldr r6, [fp, #-16]
	ldr r4, [fp, #-8]
	mov r5, #4
	mul r5, r4, r5
	add r4, r6, r5
	ldr r5, [r4]
	str r5, [fp, #-12]
	ldr r6, [fp, #-16]
	ldr r4, [fp, #-4]
	mov r5, #4
	mul r5, r4, r5
	add r4, r6, r5
	ldr r5, [r4]
	ldr r4, [fp, #-16]
	ldr r6, [fp, #-8]
	mov r7, #4
	mul r7, r6, r7
	add r6, r4, r7
	str r5, [r6]
	ldr r8, [fp, #-12]
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-4]
	mov r6, #4
	mul r6, r5, r6
	add r5, r4, r6
	str r8, [r5]
	ldr r7, [fp, #-8]
	add r4, r7, #1
	str r4, [fp, #-8]
	ldr r5, [fp, #-4]
	sub r4, r5, #1
	str r4, [fp, #-4]
	b .L711
.L713:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L714:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L715:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L716:
	b .L713
.L723:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global arrCopy
	.type arrCopy , %function
arrCopy:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #12
.L724:
	str r0, [fp, #-12]
	str r1, [fp, #-8]
	ldr r10, =0
	str r10, [fp, #-4]
	b .L728
.L728:
	ldr r9, [fp, #-4]
	ldr r4, addr_n1
	ldr r5, [r4]
	cmp r9, r5
	movlt r6, #1
	movge r6, #0
	blt .L729
	b .L733
.L729:
	ldr r7, [fp, #-12]
	ldr r4, [fp, #-4]
	mov r5, #4
	mul r4, r4, r5
	add r5, r7, r4
	ldr r4, [r5]
	ldr r5, [fp, #-8]
	ldr r6, [fp, #-4]
	mov r7, #4
	mul r7, r6, r7
	add r6, r5, r7
	str r4, [r6]
	ldr r8, [fp, #-4]
	add r4, r8, #1
	str r4, [fp, #-4]
	b .L728
.L730:
	mov r0, #0
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L731:
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L732:
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L733:
	b .L730
.L737:
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global calSum
	.type calSum , %function
calSum:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L738:
	str r0, [fp, #-16]
	str r1, [fp, #-12]
	ldr r10, =0
	str r10, [fp, #-8]
	ldr r9, =0
	str r9, [fp, #-4]
	b .L743
.L743:
	ldr r8, [fp, #-4]
	ldr r4, addr_n1
	ldr r5, [r4]
	cmp r8, r5
	movlt r6, #1
	movge r6, #0
	blt .L744
	b .L748
.L744:
	ldr r7, [fp, #-8]
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-4]
	mov r6, #4
	mul r6, r5, r6
	add r5, r4, r6
	ldr r4, [r5]
	add r5, r7, r4
	str r5, [fp, #-8]
	ldr r6, [fp, #-4]
	ldr r4, [fp, #-12]
	sdiv r5, r6, r4
	mul r5, r5, r4
	sub r4, r6, r5
	ldr r5, [fp, #-12]
	sub r6, r5, #1
	cmp r4, r6
	bne .L751
	b .L756
.L745:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L746:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L747:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L748:
	b .L745
.L751:
	ldr r7, [fp, #-16]
	ldr r4, [fp, #-4]
	mov r5, #4
	mul r5, r4, r5
	add r4, r7, r5
	ldr r5, =0
	str r5, [r4]
	b .L753
.L752:
	ldr r6, [fp, #-8]
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-4]
	mov r7, #4
	mul r7, r5, r7
	add r5, r4, r7
	str r6, [r5]
	ldr r8, =0
	str r8, [fp, #-8]
	b .L753
.L753:
	ldr r9, [fp, #-4]
	add r4, r9, #1
	str r4, [fp, #-4]
	b .L743
.L754:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L755:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L756:
	b .L752
.L759:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global avgPooling
	.type avgPooling , %function
avgPooling:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #20
.L760:
	str r0, [fp, #-20]
	str r1, [fp, #-16]
	ldr r10, =0
	str r10, [fp, #-8]
	ldr r9, =0
	str r9, [fp, #-12]
	b .L766
.L766:
	ldr r8, [fp, #-8]
	ldr r4, addr_n1
	ldr r5, [r4]
	cmp r8, r5
	movlt r6, #1
	movge r6, #0
	blt .L767
	b .L771
.L767:
	ldr r7, [fp, #-8]
	ldr r4, [fp, #-16]
	sub r5, r4, #1
	cmp r7, r5
	movlt r6, #1
	movge r6, #0
	blt .L772
	b .L777
.L768:
	ldr r8, addr_n1
	ldr r4, [r8]
	ldr r5, [fp, #-16]
	sub r6, r4, r5
	add r4, r6, #1
	str r4, [fp, #-8]
	b .L794
.L769:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L770:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L771:
	b .L768
.L772:
	ldr r5, [fp, #-12]
	ldr r4, [fp, #-20]
	ldr r6, [fp, #-8]
	mov r7, #4
	mul r7, r6, r7
	add r6, r4, r7
	ldr r4, [r6]
	add r6, r5, r4
	str r6, [fp, #-12]
	b .L774
.L773:
	ldr r7, [fp, #-8]
	ldr r4, [fp, #-16]
	sub r5, r4, #1
	cmp r7, r5
	beq .L780
	b .L785
.L774:
	ldr r6, [fp, #-8]
	add r4, r6, #1
	str r4, [fp, #-8]
	b .L766
.L775:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L776:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L777:
	b .L773
.L780:
	ldr r5, [fp, #-20]
	mov r4, #0
	mov r6, #4
	mul r6, r4, r6
	add r4, r5, r6
	ldr r5, [r4]
	str r5, [fp, #-4]
	ldr r6, [fp, #-12]
	ldr r4, [fp, #-16]
	sdiv r5, r6, r4
	ldr r4, [fp, #-20]
	mov r6, #0
	mov r7, #4
	mul r7, r6, r7
	add r6, r4, r7
	str r5, [r6]
	b .L782
.L781:
	ldr r8, [fp, #-12]
	ldr r4, [fp, #-20]
	ldr r5, [fp, #-8]
	mov r6, #4
	mul r5, r5, r6
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
	mov r5, #4
	mul r5, r4, r5
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
	mov r7, #4
	mul r7, r6, r7
	add r6, r4, r7
	str r5, [r6]
	b .L782
.L782:
	b .L774
.L783:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L784:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L785:
	b .L781
.L794:
	ldr r8, [fp, #-8]
	ldr r4, addr_n1
	ldr r5, [r4]
	cmp r8, r5
	movlt r6, #1
	movge r6, #0
	blt .L795
	b .L799
.L795:
	ldr r7, [fp, #-20]
	ldr r4, [fp, #-8]
	mov r5, #4
	mul r5, r4, r5
	add r4, r7, r5
	ldr r5, =0
	str r5, [r4]
	ldr r6, [fp, #-8]
	add r4, r6, #1
	str r4, [fp, #-8]
	b .L794
.L796:
	mov r0, #0
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L797:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L798:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L799:
	b .L796
.L801:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	ldr r4, =264
	sub sp, sp, r4
.L802:
	ldr r10, =32
	ldr r4, addr_n1
	str r10, [r4]
	mov r5, #0
	mov r4, #4
	mul r6, r5, r4
	ldr r4, =-264
	add r5, r4, r6
	add r4, fp, r5
	ldr r5, =7
	str r5, [r4]
	mov r6, #1
	mov r4, #4
	mul r5, r6, r4
	ldr r4, =-264
	add r6, r4, r5
	add r4, fp, r6
	ldr r5, =23
	str r5, [r4]
	mov r6, #2
	mov r4, #4
	mul r5, r6, r4
	ldr r4, =-264
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, =89
	str r4, [r6]
	mov r5, #3
	mov r4, #4
	mul r6, r5, r4
	ldr r4, =-264
	add r5, r4, r6
	add r4, fp, r5
	ldr r5, =26
	str r5, [r4]
	mov r6, #4
	mov r4, #4
	mul r5, r6, r4
	ldr r4, =-264
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, =282
	str r4, [r6]
	mov r5, #5
	mov r4, #4
	mul r6, r5, r4
	ldr r4, =-264
	add r5, r4, r6
	add r4, fp, r5
	ldr r5, =254
	str r5, [r4]
	mov r6, #6
	mov r4, #4
	mul r5, r6, r4
	ldr r4, =-264
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, =27
	str r4, [r6]
	mov r5, #7
	mov r4, #4
	mul r6, r5, r4
	ldr r4, =-264
	add r5, r4, r6
	add r4, fp, r5
	ldr r5, =5
	str r5, [r4]
	mov r6, #8
	mov r4, #4
	mul r5, r6, r4
	ldr r4, =-264
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, =83
	str r4, [r6]
	mov r5, #9
	mov r4, #4
	mul r6, r5, r4
	ldr r4, =-264
	add r5, r4, r6
	add r4, fp, r5
	ldr r5, =273
	str r5, [r4]
	mov r6, #10
	mov r4, #4
	mul r5, r6, r4
	ldr r4, =-264
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, =574
	str r4, [r6]
	mov r5, #11
	mov r4, #4
	mul r6, r5, r4
	ldr r4, =-264
	add r5, r4, r6
	add r4, fp, r5
	ldr r5, =905
	str r5, [r4]
	mov r6, #12
	mov r4, #4
	mul r5, r6, r4
	ldr r4, =-264
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, =354
	str r4, [r6]
	mov r5, #13
	mov r4, #4
	mul r6, r5, r4
	ldr r4, =-264
	add r5, r4, r6
	add r4, fp, r5
	ldr r5, =657
	str r5, [r4]
	mov r6, #14
	mov r4, #4
	mul r5, r6, r4
	ldr r4, =-264
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, =935
	str r4, [r6]
	mov r5, #15
	mov r4, #4
	mul r6, r5, r4
	ldr r4, =-264
	add r5, r4, r6
	add r4, fp, r5
	ldr r5, =264
	str r5, [r4]
	mov r6, #16
	mov r4, #4
	mul r4, r6, r4
	ldr r5, =-264
	add r4, r5, r4
	add r6, fp, r4
	ldr r4, =639
	str r4, [r6]
	mov r5, #17
	mov r4, #4
	mul r6, r5, r4
	ldr r4, =-264
	add r5, r4, r6
	add r4, fp, r5
	ldr r5, =459
	str r5, [r4]
	mov r6, #18
	mov r4, #4
	mul r5, r6, r4
	ldr r4, =-264
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, =29
	str r4, [r6]
	mov r5, #19
	mov r4, #4
	mul r4, r5, r4
	ldr r6, =-264
	add r5, r6, r4
	add r4, fp, r5
	ldr r5, =68
	str r5, [r4]
	mov r6, #20
	mov r4, #4
	mul r5, r6, r4
	ldr r4, =-264
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, =929
	str r4, [r6]
	mov r5, #21
	mov r4, #4
	mul r6, r5, r4
	ldr r4, =-264
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =756
	str r4, [r5]
	mov r6, #22
	mov r4, #4
	mul r4, r6, r4
	ldr r5, =-264
	add r6, r5, r4
	add r4, fp, r6
	ldr r5, =452
	str r5, [r4]
	mov r6, #23
	mov r4, #4
	mul r5, r6, r4
	ldr r4, =-264
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, =279
	str r4, [r6]
	mov r5, #24
	mov r4, #4
	mul r4, r5, r4
	ldr r6, =-264
	add r5, r6, r4
	add r4, fp, r5
	ldr r5, =58
	str r5, [r4]
	mov r6, #25
	mov r4, #4
	mul r5, r6, r4
	ldr r4, =-264
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, =87
	str r4, [r6]
	mov r5, #26
	mov r4, #4
	mul r6, r5, r4
	ldr r4, =-264
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =96
	str r4, [r5]
	mov r6, #27
	mov r4, #4
	mul r5, r6, r4
	ldr r4, =-264
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, =36
	str r4, [r6]
	mov r5, #28
	mov r4, #4
	mul r6, r5, r4
	ldr r4, =-264
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =39
	str r4, [r5]
	mov r6, #29
	mov r4, #4
	mul r5, r6, r4
	ldr r4, =-264
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, =28
	str r4, [r6]
	mov r5, #30
	mov r4, #4
	mul r6, r5, r4
	ldr r4, =-264
	add r4, r4, r6
	add r5, fp, r4
	ldr r4, =1
	str r4, [r5]
	mov r6, #31
	mov r4, #4
	mul r4, r6, r4
	ldr r5, =-264
	add r6, r5, r4
	add r4, fp, r6
	ldr r5, =290
	str r5, [r4]
	mov r6, #0
	mov r4, #4
	mul r4, r6, r4
	ldr r5, =-264
	add r6, r5, r4
	add r4, fp, r6
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
	add r6, r4, r5
	add r4, fp, r6
	mov r0, r4
	bl revert
	mov r5, r0
	str r5, [fp, #-8]
	ldr r7, =0
	str r7, [fp, #-4]
	b .L807
	b .F1
.LTORG
addr_n1:
	.word n
.F1:
.L807:
	ldr r8, [fp, #-4]
	cmp r8, #32
	movlt r9, #1
	movge r9, #0
	blt .L808
	b .L812
.L808:
	ldr r10, [fp, #-4]
	mov r4, #4
	mul r5, r10, r4
	mov r4, #-136
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, [r6]
	str r4, [fp, #-8]
	ldr r5, [fp, #-8]
	mov r0, r5
	bl putint
	ldr r7, [fp, #-4]
	add r4, r7, #1
	str r4, [fp, #-4]
	b .L807
.L809:
	mov r5, #0
	mov r4, #4
	mul r4, r5, r4
	mov r6, #-136
	add r5, r6, r4
	add r4, fp, r5
	mov r0, r4
	bl bubblesort
	mov r6, r0
	str r6, [fp, #-8]
	ldr r7, =0
	str r7, [fp, #-4]
	b .L814
.L810:
	ldr r1, =264
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L811:
	ldr r1, =264
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L812:
	b .L809
.L814:
	ldr r8, [fp, #-4]
	cmp r8, #32
	movlt r9, #1
	movge r9, #0
	blt .L815
	b .L819
.L815:
	ldr r10, [fp, #-4]
	mov r4, #4
	mul r5, r10, r4
	mov r4, #-136
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, [r6]
	str r4, [fp, #-8]
	ldr r5, [fp, #-8]
	mov r0, r5
	bl putint
	ldr r7, [fp, #-4]
	add r4, r7, #1
	str r4, [fp, #-4]
	b .L814
.L816:
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
	add r4, r4, r5
	add r6, fp, r4
	mov r0, r6
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
	add r4, r4, r5
	add r6, fp, r4
	mov r0, r6
	bl bubblesort
	mov r5, r0
	str r5, [fp, #-8]
	ldr r7, =0
	str r7, [fp, #-4]
	b .L821
.L817:
	ldr r1, =264
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L818:
	ldr r1, =264
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L819:
	b .L816
.L821:
	ldr r8, [fp, #-4]
	cmp r8, #32
	movlt r9, #1
	movge r9, #0
	blt .L822
	b .L826
.L822:
	ldr r10, [fp, #-4]
	mov r4, #4
	mul r5, r10, r4
	mov r4, #-136
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, [r6]
	str r4, [fp, #-8]
	ldr r5, [fp, #-8]
	mov r0, r5
	bl putint
	ldr r7, [fp, #-4]
	add r4, r7, #1
	str r4, [fp, #-4]
	b .L821
.L823:
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
	mul r4, r8, r4
	mov r5, #-136
	add r6, r5, r4
	add r4, fp, r6
	mov r0, r4
	bl insertsort
	mov r5, r0
	str r5, [fp, #-8]
	ldr r7, =0
	str r7, [fp, #-4]
	b .L828
.L824:
	ldr r1, =264
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L825:
	ldr r1, =264
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L826:
	b .L823
.L828:
	ldr r8, [fp, #-4]
	cmp r8, #32
	movlt r9, #1
	movge r9, #0
	blt .L829
	b .L833
.L829:
	ldr r10, [fp, #-4]
	mov r4, #4
	mul r5, r10, r4
	mov r4, #-136
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, [r6]
	str r4, [fp, #-8]
	ldr r5, [fp, #-8]
	mov r0, r5
	bl putint
	ldr r7, [fp, #-4]
	add r4, r7, #1
	str r4, [fp, #-4]
	b .L828
.L830:
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
	b .L835
	b .F2
.LTORG
addr_n2:
	.word n
.F2:
.L831:
	ldr r1, =264
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L832:
	ldr r1, =264
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L833:
	b .L830
.L835:
	ldr r8, [fp, #-4]
	cmp r8, #32
	movlt r9, #1
	movge r9, #0
	blt .L836
	b .L840
.L836:
	ldr r10, [fp, #-4]
	mov r4, #4
	mul r5, r10, r4
	mov r4, #-136
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, [r6]
	str r4, [fp, #-8]
	ldr r5, [fp, #-8]
	mov r0, r5
	bl putint
	ldr r7, [fp, #-4]
	add r4, r7, #1
	str r4, [fp, #-4]
	b .L835
.L837:
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
	mov r1, #4
	bl calSum
	mov r5, r0
	str r5, [fp, #-8]
	ldr r7, =0
	str r7, [fp, #-4]
	b .L842
.L838:
	ldr r1, =264
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L839:
	ldr r1, =264
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L840:
	b .L837
.L842:
	ldr r8, [fp, #-4]
	cmp r8, #32
	movlt r9, #1
	movge r9, #0
	blt .L843
	b .L847
.L843:
	ldr r10, [fp, #-4]
	mov r4, #4
	mul r5, r10, r4
	mov r4, #-136
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, [r6]
	str r4, [fp, #-8]
	ldr r5, [fp, #-8]
	mov r0, r5
	bl putint
	ldr r7, [fp, #-4]
	add r4, r7, #1
	str r4, [fp, #-4]
	b .L842
.L844:
	mov r5, #0
	mov r4, #4
	mul r4, r5, r4
	ldr r6, =-264
	add r5, r6, r4
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
	add r6, r4, r5
	add r4, fp, r6
	mov r0, r4
	mov r1, #3
	bl avgPooling
	mov r5, r0
	str r5, [fp, #-8]
	ldr r7, =0
	str r7, [fp, #-4]
	b .L849
.L845:
	ldr r1, =264
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L846:
	ldr r1, =264
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L847:
	b .L844
.L849:
	ldr r8, [fp, #-4]
	cmp r8, #32
	movlt r9, #1
	movge r9, #0
	blt .L850
	b .L854
.L850:
	ldr r10, [fp, #-4]
	mov r4, #4
	mul r5, r10, r4
	mov r4, #-136
	add r4, r4, r5
	add r6, fp, r4
	ldr r4, [r6]
	str r4, [fp, #-8]
	ldr r5, [fp, #-8]
	mov r0, r5
	bl putint
	ldr r7, [fp, #-4]
	add r4, r7, #1
	str r4, [fp, #-4]
	b .L849
.L851:
	mov r0, #0
	ldr r1, =264
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L852:
	ldr r1, =264
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L853:
	ldr r1, =264
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L854:
	b .L851
.L856:
	ldr r1, =264
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

addr_n3:
	.word n
