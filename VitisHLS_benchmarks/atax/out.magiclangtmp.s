	.text
	.file	"atax_taffo.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function atax
.LCPI0_0:
	.quad	4751297606875873280     # double 4294967296
	.text
	.globl	atax
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$16, -28(%rbp)
	movl	$16, -32(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	movl	-32(%rbp), %eax
	shll	$27, %eax
	movl	%eax, -56(%rbp)
	movl	-28(%rbp), %eax
	shll	$27, %eax
	movl	%eax, -60(%rbp)
	movl	$-1610612736, -64(%rbp) # imm = 0xA0000000
	movl	$0, -68(%rbp)
	movl	$-2147483648, -72(%rbp) # imm = 0x80000000
	movl	$0, -48(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$16, -48(%rbp)
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-72(%rbp), %eax
	shrl	$1, %eax
	movl	-48(%rbp), %ecx
	shll	$27, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	shlq	$27, %rdx
	movl	-56(%rbp), %ecx
	movl	%ecx, %esi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	movq	%rdx, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	divq	%rsi
	shlq	$3, %rax
	movl	%eax, %ecx
	movl	-76(%rbp), %edi         # 4-byte Reload
	addl	%ecx, %edi
	movq	-16(%rbp), %rax
	movslq	-48(%rbp), %rsi
	movl	%edi, (%rax,%rsi,4)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movl	$0, -48(%rbp)
.LBB0_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_7 Depth 2
	cmpl	$16, -48(%rbp)
	jge	.LBB0_12
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	movl	$0, -52(%rbp)
.LBB0_7:                                #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-52(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB0_10
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=2
	jmp	.LBB0_9
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=2
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB0_7
.LBB0_10:                               #   in Loop: Header=BB0_5 Depth=1
	jmp	.LBB0_11
.LBB0_11:                               #   in Loop: Header=BB0_5 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB0_5
.LBB0_12:
	movl	$0, -48(%rbp)
.LBB0_13:                               # =>This Inner Loop Header: Depth=1
	cmpl	$16, -48(%rbp)
	jge	.LBB0_16
# %bb.14:                               #   in Loop: Header=BB0_13 Depth=1
	jmp	.LBB0_15
.LBB0_15:                               #   in Loop: Header=BB0_13 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB0_13
.LBB0_16:
	movl	$0, -48(%rbp)
.LBB0_17:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_19 Depth 2
                                        #     Child Loop BB0_23 Depth 2
	cmpl	$16, -48(%rbp)
	jge	.LBB0_28
# %bb.18:                               #   in Loop: Header=BB0_17 Depth=1
	movl	-68(%rbp), %eax
	shrl	$14, %eax
	movl	%eax, -44(%rbp)
	movl	$0, -52(%rbp)
.LBB0_19:                               #   Parent Loop BB0_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$16, -52(%rbp)
	jge	.LBB0_22
# %bb.20:                               #   in Loop: Header=BB0_19 Depth=2
	movl	-44(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	-48(%rbp), %edx
	shll	$4, %edx
	addl	-52(%rbp), %edx
	movslq	%edx, %rsi
	movl	(%rcx,%rsi,4), %edx
	movq	-16(%rbp), %rcx
	movslq	-52(%rbp), %rsi
	movl	(%rcx,%rsi,4), %edi
	movslq	%edx, %rcx
	movl	%edi, %edx
	movl	%edx, %esi
	imulq	%rsi, %rcx
	shrq	$18, %rcx
	movl	%ecx, %edx
	shrl	$12, %edx
	addl	%edx, %eax
	movl	%eax, -44(%rbp)
# %bb.21:                               #   in Loop: Header=BB0_19 Depth=2
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB0_19
.LBB0_22:                               #   in Loop: Header=BB0_17 Depth=1
	movl	$0, -52(%rbp)
.LBB0_23:                               #   Parent Loop BB0_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$16, -52(%rbp)
	jge	.LBB0_26
# %bb.24:                               #   in Loop: Header=BB0_23 Depth=2
	movq	-24(%rbp), %rax
	movslq	-52(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	movq	-40(%rbp), %rax
	movl	-48(%rbp), %esi
	shll	$4, %esi
	addl	-52(%rbp), %esi
	movslq	%esi, %rcx
	movl	(%rax,%rcx,4), %esi
	movl	-44(%rbp), %edi
	movslq	%esi, %rax
	movslq	%edi, %rcx
	imulq	%rcx, %rax
	shrq	$4, %rax
	movl	%eax, %esi
	addl	%esi, %edx
	movq	-24(%rbp), %rax
	movslq	-52(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
# %bb.25:                               #   in Loop: Header=BB0_23 Depth=2
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB0_23
.LBB0_26:                               #   in Loop: Header=BB0_17 Depth=1
	jmp	.LBB0_27
.LBB0_27:                               #   in Loop: Header=BB0_17 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB0_17
.LBB0_28:
	movl	$0, -52(%rbp)
.LBB0_29:                               # =>This Inner Loop Header: Depth=1
	cmpl	$16, -52(%rbp)
	jge	.LBB0_32
# %bb.30:                               #   in Loop: Header=BB0_29 Depth=1
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movslq	-48(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	movl	%edx, %eax
	cvtsi2sdq	%rax, %xmm1
	divsd	%xmm0, %xmm1
	movabsq	$.L.str.5, %rdi
	movaps	%xmm1, %xmm0
	movb	$1, %al
	callq	printf
	movl	%eax, -80(%rbp)         # 4-byte Spill
# %bb.31:                               #   in Loop: Header=BB0_29 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB0_29
.LBB0_32:
	addq	$80, %rsp
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
	.quad	4688247212092686336     # double 262144
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
	movl	$-2147483648, -68(%rbp) # imm = 0x80000000
	movl	$-2147483648, -72(%rbp) # imm = 0x80000000
	movl	$-1610612736, -76(%rbp) # imm = 0xA0000000
	movl	$0, -80(%rbp)
	movl	$-2147483648, -84(%rbp) # imm = 0x80000000
	movl	$0, -60(%rbp)
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movq	%r8, -112(%rbp)         # 8-byte Spill
	movq	%r9, -120(%rbp)         # 8-byte Spill
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$16, -60(%rbp)
	jge	.LBB1_4
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
	movl	-84(%rbp), %eax
	shrl	$13, %eax
	movl	%eax, -88(%rbp)
	movl	-88(%rbp), %eax
	movslq	-60(%rbp), %rcx
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movl	%eax, (%rdx,%rcx,4)
# %bb.3:                                #   in Loop: Header=BB1_1 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB1_1
.LBB1_4:
	movl	$0, -60(%rbp)
.LBB1_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_7 Depth 2
	cmpl	$16, -60(%rbp)
	jge	.LBB1_12
# %bb.6:                                #   in Loop: Header=BB1_5 Depth=1
	movl	$0, -64(%rbp)
.LBB1_7:                                #   Parent Loop BB1_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-64(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB1_10
# %bb.8:                                #   in Loop: Header=BB1_7 Depth=2
	movl	-60(%rbp), %eax
	addl	-64(%rbp), %eax
	shll	$26, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	shlq	$25, %rcx
	movl	-76(%rbp), %eax
	movl	-20(%rbp), %edx
	shll	$25, %edx
	movl	%eax, %eax
	movl	%eax, %esi
	movl	%edx, %eax
	movl	%eax, %edi
	imulq	%rdi, %rsi
	shrq	$29, %rsi
	movl	%esi, %eax
	movl	%eax, %eax
	movl	%eax, %esi
	movq	%rcx, %rax
	xorl	%edx, %edx
                                        # kill: def $rdx killed $edx
	divq	%rsi
	shlq	$5, %rax
	movl	%eax, %r8d
	shrl	$13, %r8d
	movl	%r8d, -92(%rbp)
	movl	-92(%rbp), %r8d
	movl	-60(%rbp), %r9d
	imull	-24(%rbp), %r9d
	addl	-64(%rbp), %r9d
	movslq	%r9d, %rax
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movl	%r8d, (%rcx,%rax,4)
# %bb.9:                                #   in Loop: Header=BB1_7 Depth=2
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB1_7
.LBB1_10:                               #   in Loop: Header=BB1_5 Depth=1
	jmp	.LBB1_11
.LBB1_11:                               #   in Loop: Header=BB1_5 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB1_5
.LBB1_12:
	movl	$0, -64(%rbp)
.LBB1_13:                               # =>This Inner Loop Header: Depth=1
	cmpl	$256, -64(%rbp)         # imm = 0x100
	jge	.LBB1_16
# %bb.14:                               #   in Loop: Header=BB1_13 Depth=1
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movslq	-64(%rbp), %rax
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	cvtsi2sdl	%edx, %xmm1
	divsd	%xmm0, %xmm1
	movabsq	$.L.str.5, %rdi
	movaps	%xmm1, %xmm0
	movb	$1, %al
	callq	printf
	movl	%eax, -124(%rbp)        # 4-byte Spill
# %bb.15:                               #   in Loop: Header=BB1_13 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB1_13
.LBB1_16:
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	atax.1
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
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function atax.1
.LCPI2_0:
	.quad	4634204016564240384     # double 64
	.text
	.globl	atax.1
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$16, -28(%rbp)
	movl	$16, -32(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	movl	-32(%rbp), %eax
	shll	$27, %eax
	movl	%eax, -56(%rbp)
	movl	-28(%rbp), %eax
	shll	$27, %eax
	movl	%eax, -60(%rbp)
	movl	$-1610612736, -64(%rbp) # imm = 0xA0000000
	movl	$0, -68(%rbp)
	movl	$-2147483648, -72(%rbp) # imm = 0x80000000
	movl	$0, -48(%rbp)
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$16, -48(%rbp)
	jge	.LBB2_4
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
	movl	-72(%rbp), %eax
	shrl	$1, %eax
	movl	-48(%rbp), %ecx
	shll	$27, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	shlq	$27, %rdx
	movl	-56(%rbp), %ecx
	movl	%ecx, %esi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	movq	%rdx, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	divq	%rsi
	shlq	$3, %rax
	movl	%eax, %ecx
	movl	-76(%rbp), %edi         # 4-byte Reload
	addl	%ecx, %edi
	shrl	$12, %edi
	movq	-16(%rbp), %rax
	movslq	-48(%rbp), %rsi
	movl	%edi, (%rax,%rsi,4)
# %bb.3:                                #   in Loop: Header=BB2_1 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB2_1
.LBB2_4:
	movl	$0, -48(%rbp)
.LBB2_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_7 Depth 2
	cmpl	$16, -48(%rbp)
	jge	.LBB2_12
# %bb.6:                                #   in Loop: Header=BB2_5 Depth=1
	movl	$0, -52(%rbp)
.LBB2_7:                                #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-52(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB2_10
# %bb.8:                                #   in Loop: Header=BB2_7 Depth=2
	jmp	.LBB2_9
.LBB2_9:                                #   in Loop: Header=BB2_7 Depth=2
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB2_7
.LBB2_10:                               #   in Loop: Header=BB2_5 Depth=1
	jmp	.LBB2_11
.LBB2_11:                               #   in Loop: Header=BB2_5 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB2_5
.LBB2_12:
	movl	$0, -48(%rbp)
.LBB2_13:                               # =>This Inner Loop Header: Depth=1
	cmpl	$16, -48(%rbp)
	jge	.LBB2_16
# %bb.14:                               #   in Loop: Header=BB2_13 Depth=1
	jmp	.LBB2_15
.LBB2_15:                               #   in Loop: Header=BB2_13 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB2_13
.LBB2_16:
	movl	$0, -48(%rbp)
.LBB2_17:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_19 Depth 2
                                        #     Child Loop BB2_23 Depth 2
	cmpl	$16, -48(%rbp)
	jge	.LBB2_28
# %bb.18:                               #   in Loop: Header=BB2_17 Depth=1
	movl	-68(%rbp), %eax
	shrl	$14, %eax
	movl	%eax, -44(%rbp)
	movl	$0, -52(%rbp)
.LBB2_19:                               #   Parent Loop BB2_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$16, -52(%rbp)
	jge	.LBB2_22
# %bb.20:                               #   in Loop: Header=BB2_19 Depth=2
	movl	-44(%rbp), %eax
	sarl	$12, %eax
	movq	-40(%rbp), %rcx
	movl	-48(%rbp), %edx
	shll	$4, %edx
	addl	-52(%rbp), %edx
	movslq	%edx, %rsi
	movl	(%rcx,%rsi,4), %edx
	movq	-16(%rbp), %rcx
	movslq	-52(%rbp), %rsi
	movl	(%rcx,%rsi,4), %edi
	movslq	%edx, %rcx
	movslq	%edi, %rsi
	imulq	%rsi, %rcx
	sarq	$30, %rcx
	movl	%ecx, %edx
	addl	%edx, %eax
	shll	$12, %eax
	movl	%eax, -44(%rbp)
# %bb.21:                               #   in Loop: Header=BB2_19 Depth=2
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB2_19
.LBB2_22:                               #   in Loop: Header=BB2_17 Depth=1
	movl	$0, -52(%rbp)
.LBB2_23:                               #   Parent Loop BB2_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$16, -52(%rbp)
	jge	.LBB2_26
# %bb.24:                               #   in Loop: Header=BB2_23 Depth=2
	movq	-24(%rbp), %rax
	movslq	-52(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	sarl	$12, %edx
	movq	-40(%rbp), %rax
	movl	-48(%rbp), %esi
	shll	$4, %esi
	addl	-52(%rbp), %esi
	movslq	%esi, %rcx
	movl	(%rax,%rcx,4), %esi
	movl	-44(%rbp), %edi
	movslq	%esi, %rax
	movslq	%edi, %rcx
	imulq	%rcx, %rax
	sarq	$30, %rax
	movl	%eax, %esi
	addl	%esi, %edx
	shll	$12, %edx
	movq	-24(%rbp), %rax
	movslq	-52(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
# %bb.25:                               #   in Loop: Header=BB2_23 Depth=2
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB2_23
.LBB2_26:                               #   in Loop: Header=BB2_17 Depth=1
	jmp	.LBB2_27
.LBB2_27:                               #   in Loop: Header=BB2_17 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB2_17
.LBB2_28:
	movl	$0, -52(%rbp)
.LBB2_29:                               # =>This Inner Loop Header: Depth=1
	cmpl	$16, -52(%rbp)
	jge	.LBB2_32
# %bb.30:                               #   in Loop: Header=BB2_29 Depth=1
	movsd	.LCPI2_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movslq	-48(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	sarl	$12, %edx
	cvtsi2sdl	%edx, %xmm1
	divsd	%xmm0, %xmm1
	movabsq	$.L.str.5, %rdi
	movaps	%xmm1, %xmm0
	movb	$1, %al
	callq	printf
	movl	%eax, -80(%rbp)         # 4-byte Spill
# %bb.31:                               #   in Loop: Header=BB2_29 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB2_29
.LBB2_32:
	addq	$80, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	atax.1, .Lfunc_end2-atax.1
	.cfi_endproc
                                        # -- End function
	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"%f \n"
	.size	.L.str.5, 5


	.ident	"clang version 8.0.0 (tags/RELEASE_800/final)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym printf
	.addrsig_sym atax.1
