	.text
	.file	"atax_taffo.c"
	.globl	atax                    # -- Begin function atax
	.p2align	4, 0x90
	.type	atax,@function
atax:                                   # @atax
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$16, -28(%rbp)
	movl	$16, -32(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -48(%rbp)
	movl	$0, -56(%rbp)
	movl	$0, -60(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #     Child Loop BB0_7 Depth 2
	cmpl	$16, -60(%rbp)
	jge	.LBB0_12
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-56(%rbp), %eax
	shrl	$14, %eax
	movl	%eax, -52(%rbp)
	movl	$0, -64(%rbp)
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$16, -64(%rbp)
	jge	.LBB0_6
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
	movl	-52(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	-60(%rbp), %edx
	shll	$4, %edx
	addl	-64(%rbp), %edx
	movslq	%edx, %rsi
	movl	(%rcx,%rsi,4), %edx
	movq	-48(%rbp), %rcx
	movslq	-64(%rbp), %rsi
	movl	(%rcx,%rsi,4), %edi
	movslq	%edx, %rcx
	movslq	%edi, %rsi
	imulq	%rsi, %rcx
	shrq	$4, %rcx
	movl	%ecx, %edx
	shrl	$14, %edx
	addl	%edx, %eax
	movl	%eax, -52(%rbp)
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=2
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB0_3
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$0, -64(%rbp)
.LBB0_7:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$16, -64(%rbp)
	jge	.LBB0_10
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=2
	movq	-24(%rbp), %rax
	movslq	-64(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	movq	-40(%rbp), %rax
	movl	-60(%rbp), %esi
	shll	$4, %esi
	addl	-64(%rbp), %esi
	movslq	%esi, %rcx
	movl	(%rax,%rcx,4), %esi
	movl	-52(%rbp), %edi
	movslq	%esi, %rax
	movslq	%edi, %rcx
	imulq	%rcx, %rax
	shrq	$4, %rax
	movl	%eax, %esi
	addl	%esi, %edx
	movq	-24(%rbp), %rax
	movslq	-64(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
# %bb.9:                                #   in Loop: Header=BB0_7 Depth=2
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB0_7
.LBB0_10:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_11
.LBB0_11:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB0_1
.LBB0_12:
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	atax, .Lfunc_end0-atax
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function main
.LCPI1_0:
	.quad	4634204016564240384     # double 64
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
	subq	$160, %rsp
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$16, -20(%rbp)
	movl	$16, -24(%rbp)
	movl	-20(%rbp), %edi
	movl	-24(%rbp), %eax
	imull	%eax, %edi
	movl	%edi, %esi
	movq	%rsp, %rcx
	movq	%rcx, -32(%rbp)
	leaq	15(,%rsi,4), %rcx
	andq	$-16, %rcx
	movq	%rsp, %rdx
	subq	%rcx, %rdx
	movq	%rdx, %rsp
	movq	%rsi, -40(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, %ecx
	leaq	15(,%rcx,4), %rsi
	andq	$-16, %rsi
	movq	%rsp, %r8
	subq	%rsi, %r8
	movq	%r8, %rsp
	movq	%rcx, -48(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, %ecx
	leaq	15(,%rcx,4), %rsi
	andq	$-16, %rsi
	movq	%rsp, %r9
	subq	%rsi, %r9
	movq	%r9, %rsp
	movq	%rcx, -56(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, %ecx
	leaq	15(,%rcx,4), %rsi
	andq	$-16, %rsi
	movq	%rsp, %r10
	subq	%rsi, %r10
	movq	%r10, %rsp
	movq	%rcx, -64(%rbp)
	movl	$-2147483648, -76(%rbp) # imm = 0x80000000
	movl	$-2147483648, -80(%rbp) # imm = 0x80000000
	movl	$-1610612736, -84(%rbp) # imm = 0xA0000000
	movl	$0, -88(%rbp)
	movl	$-2147483648, -92(%rbp) # imm = 0x80000000
	movl	$0, -68(%rbp)
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	movq	%r8, -120(%rbp)         # 8-byte Spill
	movq	%r9, -128(%rbp)         # 8-byte Spill
	movq	%r10, -136(%rbp)        # 8-byte Spill
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$16, -68(%rbp)
	jge	.LBB1_4
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
	movl	-92(%rbp), %eax
	shrl	$1, %eax
	movl	-68(%rbp), %ecx
	shll	$27, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	shlq	$27, %rdx
	movl	-76(%rbp), %ecx
	movl	%ecx, %esi
	movl	%eax, -140(%rbp)        # 4-byte Spill
	movq	%rdx, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	divq	%rsi
	shlq	$3, %rax
	movl	%eax, %ecx
	movl	-140(%rbp), %edi        # 4-byte Reload
	addl	%ecx, %edi
	shrl	$12, %edi
	movl	%edi, -96(%rbp)
	movl	-96(%rbp), %ecx
	movslq	-68(%rbp), %rax
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movl	%ecx, (%rsi,%rax,4)
# %bb.3:                                #   in Loop: Header=BB1_1 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB1_1
.LBB1_4:
	movl	$0, -68(%rbp)
.LBB1_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_7 Depth 2
	cmpl	$16, -68(%rbp)
	jge	.LBB1_12
# %bb.6:                                #   in Loop: Header=BB1_5 Depth=1
	movl	$0, -72(%rbp)
.LBB1_7:                                #   Parent Loop BB1_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-72(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB1_10
# %bb.8:                                #   in Loop: Header=BB1_7 Depth=2
	movl	-68(%rbp), %eax
	addl	-72(%rbp), %eax
	cltd
	idivl	-24(%rbp)
	shll	$27, %edx
	movl	%edx, %edx
	movl	%edx, %ecx
	shlq	$25, %rcx
	movl	-84(%rbp), %edx
	movl	-20(%rbp), %esi
	shll	$25, %esi
	movl	%edx, %edx
	movl	%edx, %edi
	movl	%esi, %edx
	movl	%edx, %r8d
	imulq	%r8, %rdi
	shrq	$29, %rdi
	movl	%edi, %edx
	movl	%edx, %edx
	movl	%edx, %edi
	movq	%rcx, %rax
	xorl	%edx, %edx
                                        # kill: def $rdx killed $edx
	divq	%rdi
	shlq	$4, %rax
	movl	%eax, %esi
	shrl	$13, %esi
	movl	%esi, -100(%rbp)
	movl	-100(%rbp), %esi
	movl	-68(%rbp), %r9d
	imull	-24(%rbp), %r9d
	addl	-72(%rbp), %r9d
	movslq	%r9d, %rax
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
# %bb.9:                                #   in Loop: Header=BB1_7 Depth=2
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	jmp	.LBB1_7
.LBB1_10:                               #   in Loop: Header=BB1_5 Depth=1
	jmp	.LBB1_11
.LBB1_11:                               #   in Loop: Header=BB1_5 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB1_5
.LBB1_12:
	movl	$0, -68(%rbp)
.LBB1_13:                               # =>This Inner Loop Header: Depth=1
	cmpl	$16, -68(%rbp)
	jge	.LBB1_16
# %bb.14:                               #   in Loop: Header=BB1_13 Depth=1
	movl	-88(%rbp), %eax
	shrl	$14, %eax
	movslq	-68(%rbp), %rcx
	movq	-128(%rbp), %rdx        # 8-byte Reload
	movl	%eax, (%rdx,%rcx,4)
	movl	-88(%rbp), %eax
	shrl	$14, %eax
	movslq	-68(%rbp), %rcx
	movq	-136(%rbp), %rsi        # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
# %bb.15:                               #   in Loop: Header=BB1_13 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB1_13
.LBB1_16:
	movl	$0, -68(%rbp)
.LBB1_17:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_19 Depth 2
                                        #     Child Loop BB1_23 Depth 2
	cmpl	$16, -68(%rbp)
	jge	.LBB1_28
# %bb.18:                               #   in Loop: Header=BB1_17 Depth=1
	movl	-88(%rbp), %eax
	shrl	$14, %eax
	movl	%eax, -104(%rbp)
	movl	$0, -72(%rbp)
.LBB1_19:                               #   Parent Loop BB1_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$16, -72(%rbp)
	jge	.LBB1_22
# %bb.20:                               #   in Loop: Header=BB1_19 Depth=2
	movl	-104(%rbp), %eax
	sarl	$12, %eax
	movl	-68(%rbp), %ecx
	shll	$4, %ecx
	addl	-72(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movl	(%rsi,%rdx,4), %ecx
	movslq	-72(%rbp), %rdx
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movl	(%rdi,%rdx,4), %r8d
	movslq	%ecx, %rdx
	movslq	%r8d, %r9
	imulq	%r9, %rdx
	sarq	$30, %rdx
	movl	%edx, %ecx
	addl	%ecx, %eax
	shll	$12, %eax
	movl	%eax, -104(%rbp)
# %bb.21:                               #   in Loop: Header=BB1_19 Depth=2
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	jmp	.LBB1_19
.LBB1_22:                               #   in Loop: Header=BB1_17 Depth=1
	movl	$0, -72(%rbp)
.LBB1_23:                               #   Parent Loop BB1_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$16, -72(%rbp)
	jge	.LBB1_26
# %bb.24:                               #   in Loop: Header=BB1_23 Depth=2
	movslq	-72(%rbp), %rax
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	sarl	$12, %edx
	movl	-68(%rbp), %esi
	shll	$4, %esi
	addl	-72(%rbp), %esi
	movslq	%esi, %rax
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movl	(%rdi,%rax,4), %esi
	movl	-104(%rbp), %r8d
	movslq	%esi, %rax
	movslq	%r8d, %r9
	imulq	%r9, %rax
	sarq	$30, %rax
	movl	%eax, %esi
	addl	%esi, %edx
	shll	$12, %edx
	movslq	-72(%rbp), %rax
	movl	%edx, (%rcx,%rax,4)
# %bb.25:                               #   in Loop: Header=BB1_23 Depth=2
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	jmp	.LBB1_23
.LBB1_26:                               #   in Loop: Header=BB1_17 Depth=1
	jmp	.LBB1_27
.LBB1_27:                               #   in Loop: Header=BB1_17 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB1_17
.LBB1_28:
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	-128(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	atax.1
	movl	$0, -68(%rbp)
.LBB1_29:                               # =>This Inner Loop Header: Depth=1
	cmpl	$16, -68(%rbp)
	jge	.LBB1_32
# %bb.30:                               #   in Loop: Header=BB1_29 Depth=1
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movslq	-68(%rbp), %rax
	movq	-128(%rbp), %rcx        # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	sarl	$12, %edx
	cvtsi2sdl	%edx, %xmm1
	divsd	%xmm0, %xmm1
	movabsq	$.L.str.7, %rdi
	movaps	%xmm1, %xmm0
	movb	$1, %al
	callq	printf
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movslq	-68(%rbp), %rcx
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movl	(%rdi,%rcx,4), %edx
	sarl	$12, %edx
	cvtsi2sdl	%edx, %xmm1
	divsd	%xmm0, %xmm1
	movabsq	$.L.str.7, %rdi
	movaps	%xmm1, %xmm0
	movl	%eax, -144(%rbp)        # 4-byte Spill
	movb	$1, %al
	callq	printf
	movl	%eax, -148(%rbp)        # 4-byte Spill
# %bb.31:                               #   in Loop: Header=BB1_29 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB1_29
.LBB1_32:
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
	.globl	atax.1                  # -- Begin function atax.1
	.p2align	4, 0x90
	.type	atax.1,@function
atax.1:                                 # @atax.1
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$16, -28(%rbp)
	movl	$16, -32(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -48(%rbp)
	movl	$0, -56(%rbp)
	movl	$0, -60(%rbp)
.LBB2_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_3 Depth 2
                                        #     Child Loop BB2_7 Depth 2
	cmpl	$16, -60(%rbp)
	jge	.LBB2_12
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
	movl	-56(%rbp), %eax
	shrl	$14, %eax
	movl	%eax, -52(%rbp)
	movl	$0, -64(%rbp)
.LBB2_3:                                #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$16, -64(%rbp)
	jge	.LBB2_6
# %bb.4:                                #   in Loop: Header=BB2_3 Depth=2
	movl	-52(%rbp), %eax
	sarl	$12, %eax
	movq	-40(%rbp), %rcx
	movl	-60(%rbp), %edx
	shll	$4, %edx
	addl	-64(%rbp), %edx
	movslq	%edx, %rsi
	movl	(%rcx,%rsi,4), %edx
	movq	-48(%rbp), %rcx
	movslq	-64(%rbp), %rsi
	movl	(%rcx,%rsi,4), %edi
	movslq	%edx, %rcx
	movslq	%edi, %rsi
	imulq	%rsi, %rcx
	sarq	$30, %rcx
	movl	%ecx, %edx
	addl	%edx, %eax
	shll	$12, %eax
	movl	%eax, -52(%rbp)
# %bb.5:                                #   in Loop: Header=BB2_3 Depth=2
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB2_3
.LBB2_6:                                #   in Loop: Header=BB2_1 Depth=1
	movl	$0, -64(%rbp)
.LBB2_7:                                #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$16, -64(%rbp)
	jge	.LBB2_10
# %bb.8:                                #   in Loop: Header=BB2_7 Depth=2
	movq	-24(%rbp), %rax
	movslq	-64(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	sarl	$12, %edx
	movq	-40(%rbp), %rax
	movl	-60(%rbp), %esi
	shll	$4, %esi
	addl	-64(%rbp), %esi
	movslq	%esi, %rcx
	movl	(%rax,%rcx,4), %esi
	movl	-52(%rbp), %edi
	movslq	%esi, %rax
	movslq	%edi, %rcx
	imulq	%rcx, %rax
	sarq	$30, %rax
	movl	%eax, %esi
	addl	%esi, %edx
	shll	$12, %edx
	movq	-24(%rbp), %rax
	movslq	-64(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
# %bb.9:                                #   in Loop: Header=BB2_7 Depth=2
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB2_7
.LBB2_10:                               #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_11
.LBB2_11:                               #   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB2_1
.LBB2_12:
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	atax.1, .Lfunc_end2-atax.1
	.cfi_endproc
                                        # -- End function
	.type	.L.str.7,@object        # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"%f \n"
	.size	.L.str.7, 5


	.ident	"clang version 8.0.0 (tags/RELEASE_800/final)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym printf
	.addrsig_sym atax.1
