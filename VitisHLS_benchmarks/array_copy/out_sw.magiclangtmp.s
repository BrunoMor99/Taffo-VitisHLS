	.text
	.file	"array_copy_taffo.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function array_copy
.LCPI0_0:
	.long	1300234240              # float 268435456
	.text
	.globl	array_copy
	.p2align	4, 0x90
	.type	array_copy,@function
array_copy:                             # @array_copy
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$16, -28(%rbp)
	movl	$-1610612736, -164(%rbp) # imm = 0xA0000000
# %bb.1:
	movl	$0, -32(%rbp)
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	cmpl	$16, -32(%rbp)
	jge	.LBB0_5
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	movq	-8(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %rax
	movl	%eax, %edx
	movslq	-32(%rbp), %rax
	movl	%edx, -96(%rbp,%rax,4)
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB0_2
.LBB0_5:
	movl	$0, -32(%rbp)
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	cmpl	$16, -32(%rbp)
	jge	.LBB0_9
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=1
	movslq	-32(%rbp), %rax
	movl	-96(%rbp,%rax,4), %ecx
	movl	-164(%rbp), %edx
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movl	%edx, %ecx
	movl	%ecx, %esi
	imulq	%rsi, %rax
	shrq	$29, %rax
	movl	%eax, %ecx
	movslq	-32(%rbp), %rax
	movl	%ecx, -160(%rbp,%rax,4)
# %bb.8:                                #   in Loop: Header=BB0_6 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB0_6
.LBB0_9:
	movl	$0, -32(%rbp)
.LBB0_10:                               # =>This Inner Loop Header: Depth=1
	cmpl	$16, -32(%rbp)
	jge	.LBB0_13
# %bb.11:                               #   in Loop: Header=BB0_10 Depth=1
	movss	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movslq	-32(%rbp), %rax
	movl	-160(%rbp,%rax,4), %ecx
	movl	%ecx, %eax
	cvtsi2ssq	%rax, %xmm1
	divss	%xmm0, %xmm1
	movq	-16(%rbp), %rax
	movslq	-32(%rbp), %rdx
	movss	%xmm1, (%rax,%rdx,4)
# %bb.12:                               #   in Loop: Header=BB0_10 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB0_10
.LBB0_13:
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	array_copy, .Lfunc_end0-array_copy
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function main
.LCPI1_0:
	.long	1065353216              # float 1
.LCPI1_1:
	.long	1084227584              # float 5
.LCPI1_2:
	.long	1098907648              # float 16
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
	subq	$128, %rsp
	movss	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI1_2(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$16, -20(%rbp)
	movl	$16, -24(%rbp)
	movl	-24(%rbp), %edi
	movl	%edi, %esi
	movq	%rsp, %rax
	movq	%rax, -32(%rbp)
	leaq	15(,%rsi,4), %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rsi, -40(%rbp)
	movl	-24(%rbp), %edi
	movl	%edi, %eax
	leaq	15(,%rax,4), %rsi
	andq	$-16, %rsi
	movq	%rsp, %rdx
	subq	%rsi, %rdx
	movq	%rdx, %rsp
	movq	%rax, -48(%rbp)
	movl	-24(%rbp), %edi
	movl	%edi, %eax
	leaq	15(,%rax,4), %rsi
	andq	$-16, %rsi
	movq	%rsp, %r8
	subq	%rsi, %r8
	movq	%r8, %rsp
	movq	%rax, -56(%rbp)
	movss	%xmm2, -64(%rbp)
	movss	%xmm2, -68(%rbp)
	movss	%xmm1, -72(%rbp)
	xorps	%xmm1, %xmm1
	movss	%xmm1, -76(%rbp)
	movss	%xmm0, -80(%rbp)
	movl	$0, -60(%rbp)
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movq	%r8, -112(%rbp)         # 8-byte Spill
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$16, -60(%rbp)
	jge	.LBB1_4
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
	movss	-80(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movl	-60(%rbp), %eax
	cvtsi2ssl	%eax, %xmm1
	divss	-64(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -84(%rbp)
	movss	-84(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movslq	-60(%rbp), %rcx
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movss	%xmm0, (%rdx,%rcx,4)
# %bb.3:                                #   in Loop: Header=BB1_1 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB1_1
.LBB1_4:
	movl	$0, -60(%rbp)
.LBB1_5:                                # =>This Inner Loop Header: Depth=1
	cmpl	$16, -60(%rbp)
	jge	.LBB1_8
# %bb.6:                                #   in Loop: Header=BB1_5 Depth=1
	movss	-76(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movslq	-60(%rbp), %rax
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movss	%xmm0, (%rcx,%rax,4)
# %bb.7:                                #   in Loop: Header=BB1_5 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB1_5
.LBB1_8:
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	-112(%rbp), %rdx        # 8-byte Reload
	callq	array_copy
	movl	$0, -60(%rbp)
.LBB1_9:                                # =>This Inner Loop Header: Depth=1
	cmpl	$16, -60(%rbp)
	jge	.LBB1_12
# %bb.10:                               #   in Loop: Header=BB1_9 Depth=1
	movslq	-60(%rbp), %rax
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movss	(%rcx,%rax,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movabsq	$.L.str.4, %rdi
	movb	$1, %al
	callq	printf
	movslq	-60(%rbp), %rcx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movss	(%rdi,%rcx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	mulss	-72(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movabsq	$.L.str.4, %rdi
	movl	%eax, -116(%rbp)        # 4-byte Spill
	movb	$1, %al
	callq	printf
	movl	%eax, -120(%rbp)        # 4-byte Spill
# %bb.11:                               #   in Loop: Header=BB1_9 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB1_9
.LBB1_12:
	movl	$0, -4(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rsp
	movl	-4(%rbp), %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"%f \n"
	.size	.L.str.4, 5


	.ident	"clang version 8.0.0 (tags/RELEASE_800/final)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym array_copy
	.addrsig_sym printf
