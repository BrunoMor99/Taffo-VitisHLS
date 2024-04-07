	.text
	.file	"mm2_taffo.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function mm2
.LCPI0_0:
	.long	1308622848              # float 536870912
	.text
	.globl	mm2
	.p2align	4, 0x90
	.type	mm2,@function
mm2:                                    # @mm2
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$1008, %rsp             # imm = 0x3F0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movss	%xmm0, -36(%rbp)
	movss	%xmm1, -40(%rbp)
	movl	$16, -44(%rbp)
	movl	$16, -48(%rbp)
	movl	$16, -52(%rbp)
	movl	$16, -56(%rbp)
	movss	-36(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %rcx
	movl	%ecx, %eax
	movl	%eax, -60(%rbp)
	movss	-40(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %rcx
	movl	%ecx, %eax
	movl	%eax, -64(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -72(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -80(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, -88(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movl	$0, -1124(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #       Child Loop BB0_5 Depth 3
	cmpl	$16, -1124(%rbp)
	jge	.LBB0_12
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$0, -1128(%rbp)
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_5 Depth 3
	cmpl	$16, -1128(%rbp)
	jge	.LBB0_10
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
	movl	-1124(%rbp), %eax
	imull	-48(%rbp), %eax
	addl	-1128(%rbp), %eax
	movslq	%eax, %rcx
	movl	$0, -1120(%rbp,%rcx,4)
	movl	$0, -1132(%rbp)
.LBB0_5:                                #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$16, -1132(%rbp)
	jge	.LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=3
	jmp	.LBB0_7
.LBB0_7:                                #   in Loop: Header=BB0_5 Depth=3
	movl	-1132(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1132(%rbp)
	jmp	.LBB0_5
.LBB0_8:                                #   in Loop: Header=BB0_3 Depth=2
	jmp	.LBB0_9
.LBB0_9:                                #   in Loop: Header=BB0_3 Depth=2
	movl	-1128(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1128(%rbp)
	jmp	.LBB0_3
.LBB0_10:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_11
.LBB0_11:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-1124(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1124(%rbp)
	jmp	.LBB0_1
.LBB0_12:
	movl	$0, -1124(%rbp)
.LBB0_13:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
                                        #       Child Loop BB0_17 Depth 3
	cmpl	$16, -1124(%rbp)
	jge	.LBB0_24
# %bb.14:                               #   in Loop: Header=BB0_13 Depth=1
	movl	$0, -1128(%rbp)
.LBB0_15:                               #   Parent Loop BB0_13 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_17 Depth 3
	cmpl	$16, -1128(%rbp)
	jge	.LBB0_22
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=2
	movl	-64(%rbp), %eax
	movq	-96(%rbp), %rcx
	movl	-1124(%rbp), %edx
	imull	-56(%rbp), %edx
	addl	-1128(%rbp), %edx
	movslq	%edx, %rsi
	movslq	(%rcx,%rsi,4), %rdi
	movl	%eax, %eax
	movl	%eax, %r8d
	imulq	%r8, %rdi
	shrq	$20, %rdi
	movl	%edi, %eax
	shrl	$9, %eax
	movl	%eax, (%rcx,%rsi,4)
	movl	$0, -1132(%rbp)
.LBB0_17:                               #   Parent Loop BB0_13 Depth=1
                                        #     Parent Loop BB0_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$16, -1132(%rbp)
	jge	.LBB0_20
# %bb.18:                               #   in Loop: Header=BB0_17 Depth=3
	movl	-1124(%rbp), %eax
	imull	-48(%rbp), %eax
	addl	-1132(%rbp), %eax
	movslq	%eax, %rcx
	movl	-1120(%rbp,%rcx,4), %eax
	movq	-88(%rbp), %rcx
	movl	-1132(%rbp), %edx
	imull	-56(%rbp), %edx
	addl	-1128(%rbp), %edx
	movslq	%edx, %rsi
	movl	(%rcx,%rsi,4), %edx
	movslq	%eax, %rcx
	movl	%edx, %eax
	movl	%eax, %esi
	imulq	%rsi, %rcx
	shrq	$24, %rcx
	movl	%ecx, %eax
	movq	-96(%rbp), %rcx
	movl	-1124(%rbp), %edx
	imull	-56(%rbp), %edx
	addl	-1128(%rbp), %edx
	movslq	%edx, %rsi
	movl	(%rcx,%rsi,4), %edx
	shll	$7, %edx
	addl	%eax, %edx
	shrl	$7, %edx
	movl	%edx, (%rcx,%rsi,4)
# %bb.19:                               #   in Loop: Header=BB0_17 Depth=3
	movl	-1132(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1132(%rbp)
	jmp	.LBB0_17
.LBB0_20:                               #   in Loop: Header=BB0_15 Depth=2
	jmp	.LBB0_21
.LBB0_21:                               #   in Loop: Header=BB0_15 Depth=2
	movl	-1128(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1128(%rbp)
	jmp	.LBB0_15
.LBB0_22:                               #   in Loop: Header=BB0_13 Depth=1
	jmp	.LBB0_23
.LBB0_23:                               #   in Loop: Header=BB0_13 Depth=1
	movl	-1124(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1124(%rbp)
	jmp	.LBB0_13
.LBB0_24:
	addq	$1008, %rsp             # imm = 0x3F0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	mm2, .Lfunc_end0-mm2
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function main
.LCPI1_0:
	.long	1067030938              # float 1.20000005
.LCPI1_1:
	.long	1069547520              # float 1.5
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$4160, %rsp             # imm = 0x1040
	movss	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$16, -20(%rbp)
	movl	$16, -24(%rbp)
	movl	$16, -28(%rbp)
	movl	$16, -32(%rbp)
	movss	%xmm1, -36(%rbp)
	movss	%xmm0, -40(%rbp)
	movl	$0, -4148(%rbp)
.LBB1_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_3 Depth 2
	movl	-4148(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB1_8
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
	movl	$0, -4152(%rbp)
.LBB1_3:                                #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-4152(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB1_6
# %bb.4:                                #   in Loop: Header=BB1_3 Depth=2
	movl	-4148(%rbp), %eax
	imull	-4152(%rbp), %eax
	addl	$1, %eax
	cltd
	idivl	-20(%rbp)
	movl	%edx, %eax
	cltd
	idivl	-20(%rbp)
	cvtsi2ssl	%eax, %xmm0
	movl	-4148(%rbp), %eax
	imull	-28(%rbp), %eax
	addl	-4152(%rbp), %eax
	movslq	%eax, %rcx
	movss	%xmm0, -1072(%rbp,%rcx,4)
# %bb.5:                                #   in Loop: Header=BB1_3 Depth=2
	movl	-4152(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4152(%rbp)
	jmp	.LBB1_3
.LBB1_6:                                #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_7
.LBB1_7:                                #   in Loop: Header=BB1_1 Depth=1
	movl	-4148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4148(%rbp)
	jmp	.LBB1_1
.LBB1_8:
	movl	$0, -4148(%rbp)
.LBB1_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_11 Depth 2
	movl	-4148(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB1_16
# %bb.10:                               #   in Loop: Header=BB1_9 Depth=1
	movl	$0, -4152(%rbp)
.LBB1_11:                               #   Parent Loop BB1_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-4152(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB1_14
# %bb.12:                               #   in Loop: Header=BB1_11 Depth=2
	movl	-4148(%rbp), %eax
	movl	-4152(%rbp), %ecx
	addl	$1, %ecx
	imull	%ecx, %eax
	cltd
	idivl	-24(%rbp)
	movl	%edx, %eax
	cltd
	idivl	-24(%rbp)
	cvtsi2ssl	%eax, %xmm0
	movl	-4148(%rbp), %eax
	imull	-24(%rbp), %eax
	addl	-4152(%rbp), %eax
	movslq	%eax, %rsi
	movss	%xmm0, -2096(%rbp,%rsi,4)
# %bb.13:                               #   in Loop: Header=BB1_11 Depth=2
	movl	-4152(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4152(%rbp)
	jmp	.LBB1_11
.LBB1_14:                               #   in Loop: Header=BB1_9 Depth=1
	jmp	.LBB1_15
.LBB1_15:                               #   in Loop: Header=BB1_9 Depth=1
	movl	-4148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4148(%rbp)
	jmp	.LBB1_9
.LBB1_16:
	movl	$0, -4148(%rbp)
.LBB1_17:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_19 Depth 2
	movl	-4148(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB1_24
# %bb.18:                               #   in Loop: Header=BB1_17 Depth=1
	movl	$0, -4152(%rbp)
.LBB1_19:                               #   Parent Loop BB1_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-4152(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB1_22
# %bb.20:                               #   in Loop: Header=BB1_19 Depth=2
	movl	-4148(%rbp), %eax
	movl	-4152(%rbp), %ecx
	addl	$3, %ecx
	imull	%ecx, %eax
	addl	$1, %eax
	cltd
	idivl	-32(%rbp)
	movl	%edx, %eax
	cltd
	idivl	-32(%rbp)
	cvtsi2ssl	%eax, %xmm0
	movl	-4148(%rbp), %eax
	imull	-32(%rbp), %eax
	addl	-4152(%rbp), %eax
	movslq	%eax, %rsi
	movss	%xmm0, -3120(%rbp,%rsi,4)
# %bb.21:                               #   in Loop: Header=BB1_19 Depth=2
	movl	-4152(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4152(%rbp)
	jmp	.LBB1_19
.LBB1_22:                               #   in Loop: Header=BB1_17 Depth=1
	jmp	.LBB1_23
.LBB1_23:                               #   in Loop: Header=BB1_17 Depth=1
	movl	-4148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4148(%rbp)
	jmp	.LBB1_17
.LBB1_24:
	movl	$0, -4148(%rbp)
.LBB1_25:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_27 Depth 2
	movl	-4148(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB1_32
# %bb.26:                               #   in Loop: Header=BB1_25 Depth=1
	movl	$0, -4152(%rbp)
.LBB1_27:                               #   Parent Loop BB1_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-4152(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB1_30
# %bb.28:                               #   in Loop: Header=BB1_27 Depth=2
	movl	-4148(%rbp), %eax
	movl	-4152(%rbp), %ecx
	addl	$2, %ecx
	imull	%ecx, %eax
	cltd
	idivl	-28(%rbp)
	movl	%edx, %eax
	cltd
	idivl	-28(%rbp)
	cvtsi2ssl	%eax, %xmm0
	movl	-4148(%rbp), %eax
	imull	-32(%rbp), %eax
	addl	-4152(%rbp), %eax
	movslq	%eax, %rsi
	movss	%xmm0, -4144(%rbp,%rsi,4)
# %bb.29:                               #   in Loop: Header=BB1_27 Depth=2
	movl	-4152(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4152(%rbp)
	jmp	.LBB1_27
.LBB1_30:                               #   in Loop: Header=BB1_25 Depth=1
	jmp	.LBB1_31
.LBB1_31:                               #   in Loop: Header=BB1_25 Depth=1
	movl	-4148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4148(%rbp)
	jmp	.LBB1_25
.LBB1_32:
	leaq	-4144(%rbp), %rcx
	leaq	-3120(%rbp), %rdx
	leaq	-2096(%rbp), %rsi
	leaq	-1072(%rbp), %rdi
	movss	-36(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	-40(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	callq	mm2
	xorl	%eax, %eax
	addq	$4160, %rsp             # imm = 0x1040
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function

	.ident	"clang version 8.0.0 (tags/RELEASE_800/final)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym mm2
