	.text
	.file	"llvm-link"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function covariance
.LCPI0_0:
	.long	1233125376              # float 1048576
	.text
	.globl	covariance
	.p2align	4, 0x90
	.type	covariance,@function
covariance:                             # @covariance
.Lfunc_begin0:
	.file	1 "/home/bruno/Desktop/benchmarks/covariance" "covariance_taffo.c"
	.loc	1 19 0                  # covariance_taffo.c:19:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
.Ltmp0:
	.loc	1 26 7 prologue_end     # covariance_taffo.c:26:7
	movl	$16, -40(%rbp)
	.loc	1 27 7                  # covariance_taffo.c:27:7
	movl	$16, -44(%rbp)
	.loc	1 30 14                 # covariance_taffo.c:30:14
	movl	$1065353216, -52(%rbp)  # imm = 0x3F800000
	.loc	1 31 13                 # covariance_taffo.c:31:13
	movl	-40(%rbp), %eax
	.loc	1 31 11 is_stmt 0       # covariance_taffo.c:31:11
	shll	$20, %eax
	movl	%eax, -48(%rbp)
	.loc	1 33 7 is_stmt 1        # covariance_taffo.c:33:7
	movl	-48(%rbp), %eax
	.loc	1 33 17 is_stmt 0       # covariance_taffo.c:33:17
	movss	-52(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	.loc	1 33 15                 # covariance_taffo.c:33:15
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %rdx
	movl	%edx, %ecx
	subl	%ecx, %eax
	.loc	1 33 5                  # covariance_taffo.c:33:5
	movl	%eax, -56(%rbp)
	.loc	1 35 13 is_stmt 1       # covariance_taffo.c:35:13
	movq	-8(%rbp), %rdx
	.loc	1 35 11 is_stmt 0       # covariance_taffo.c:35:11
	movq	%rdx, -64(%rbp)
	.loc	1 37 12 is_stmt 1       # covariance_taffo.c:37:12
	movq	-16(%rbp), %rdx
	.loc	1 37 10 is_stmt 0       # covariance_taffo.c:37:10
	movq	%rdx, -72(%rbp)
	.loc	1 39 13 is_stmt 1       # covariance_taffo.c:39:13
	movq	-24(%rbp), %rdx
	.loc	1 39 11 is_stmt 0       # covariance_taffo.c:39:11
	movq	%rdx, -80(%rbp)
	.loc	1 40 64 is_stmt 1       # covariance_taffo.c:40:64
	movl	$0, -84(%rbp)
# %bb.1:                                # %VITIS_LOOP_41_1
.Ltmp1:
	.loc	1 41 28                 # covariance_taffo.c:41:28
	movl	$0, -32(%rbp)
.LBB0_2:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
.Ltmp2:
	.loc	1 41 35 is_stmt 0       # covariance_taffo.c:41:35
	cmpl	$16, -32(%rbp)
.Ltmp3:
	.loc	1 41 21                 # covariance_taffo.c:41:21
	jge	.LBB0_10
# %bb.3:                                # %for.body
                                        #   in Loop: Header=BB0_2 Depth=1
.Ltmp4:
	.loc	1 42 5 is_stmt 1        # covariance_taffo.c:42:5
	jmp	.LBB0_4
.LBB0_4:                                # %VITIS_LOOP_44_2
                                        #   in Loop: Header=BB0_2 Depth=1
.Ltmp5:
	.loc	1 44 31                 # covariance_taffo.c:44:31
	movl	$0, -28(%rbp)
.LBB0_5:                                # %for.cond11
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp6:
	.loc	1 44 38 is_stmt 0       # covariance_taffo.c:44:38
	cmpl	$16, -28(%rbp)
.Ltmp7:
	.loc	1 44 24                 # covariance_taffo.c:44:24
	jge	.LBB0_8
# %bb.6:                                # %for.body13
                                        #   in Loop: Header=BB0_5 Depth=2
.Ltmp8:
	.loc	1 46 21 is_stmt 1       # covariance_taffo.c:46:21
	movq	-64(%rbp), %rax
	.loc	1 46 27 is_stmt 0       # covariance_taffo.c:46:27
	movl	-28(%rbp), %ecx
	.loc	1 46 28                 # covariance_taffo.c:46:28
	imull	-44(%rbp), %ecx
	.loc	1 46 30                 # covariance_taffo.c:46:30
	addl	-32(%rbp), %ecx
	.loc	1 46 21                 # covariance_taffo.c:46:21
	movslq	%ecx, %rdx
	movl	(%rax,%rdx,4), %ecx
	.loc	1 46 9                  # covariance_taffo.c:46:9
	shll	$5, %ecx
	movq	-80(%rbp), %rax
	movslq	-32(%rbp), %rdx
	.loc	1 46 18                 # covariance_taffo.c:46:18
	movl	(%rax,%rdx,4), %esi
	shll	$4, %esi
	addl	%ecx, %esi
	shrl	$4, %esi
	movl	%esi, (%rax,%rdx,4)
.Ltmp9:
# %bb.7:                                # %for.inc
                                        #   in Loop: Header=BB0_5 Depth=2
	.loc	1 44 45 is_stmt 1       # covariance_taffo.c:44:45
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	.loc	1 44 24 is_stmt 0       # covariance_taffo.c:44:24
	jmp	.LBB0_5
.Ltmp10:
.LBB0_8:                                # %for.end
                                        #   in Loop: Header=BB0_2 Depth=1
	.loc	1 48 19 is_stmt 1       # covariance_taffo.c:48:19
	movl	-48(%rbp), %eax
	.loc	1 48 7 is_stmt 0        # covariance_taffo.c:48:7
	movq	-80(%rbp), %rcx
	movslq	-32(%rbp), %rdx
	.loc	1 48 16                 # covariance_taffo.c:48:16
	movl	(%rcx,%rdx,4), %esi
	movl	%esi, %edi
	shlq	$20, %rdi
	movl	%eax, %eax
	movl	%eax, %r8d
	movq	%rdi, %rax
	xorl	%esi, %esi
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movl	%esi, %edx
	divq	%r8
	shrq	$1, %rax
	movl	%eax, %esi
	shll	$1, %esi
	movq	-96(%rbp), %rax         # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
.Ltmp11:
# %bb.9:                                # %for.inc19
                                        #   in Loop: Header=BB0_2 Depth=1
	.loc	1 41 42 is_stmt 1       # covariance_taffo.c:41:42
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	.loc	1 41 21 is_stmt 0       # covariance_taffo.c:41:21
	jmp	.LBB0_2
.Ltmp12:
.LBB0_10:                               # %for.end21
	.loc	1 49 5 is_stmt 1        # covariance_taffo.c:49:5
	jmp	.LBB0_11
.Ltmp13:
.LBB0_11:                               # %VITIS_LOOP_51_3
	.loc	1 51 27                 # covariance_taffo.c:51:27
	movl	$0, -28(%rbp)
.LBB0_12:                               # %for.cond22
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
.Ltmp14:
	.loc	1 51 34 is_stmt 0       # covariance_taffo.c:51:34
	cmpl	$16, -28(%rbp)
.Ltmp15:
	.loc	1 51 20                 # covariance_taffo.c:51:20
	jge	.LBB0_20
# %bb.13:                               # %for.body24
                                        #   in Loop: Header=BB0_12 Depth=1
.Ltmp16:
	.loc	1 51 44                 # covariance_taffo.c:51:44
	jmp	.LBB0_14
.LBB0_14:                               # %VITIS_LOOP_53_4
                                        #   in Loop: Header=BB0_12 Depth=1
.Ltmp17:
	.loc	1 53 29 is_stmt 1       # covariance_taffo.c:53:29
	movl	$0, -32(%rbp)
.LBB0_15:                               # %for.cond25
                                        #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp18:
	.loc	1 53 36 is_stmt 0       # covariance_taffo.c:53:36
	cmpl	$16, -32(%rbp)
.Ltmp19:
	.loc	1 53 22                 # covariance_taffo.c:53:22
	jge	.LBB0_18
# %bb.16:                               # %for.body27
                                        #   in Loop: Header=BB0_15 Depth=2
.Ltmp20:
	.loc	1 55 23 is_stmt 1       # covariance_taffo.c:55:23
	movq	-80(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	.loc	1 55 7 is_stmt 0        # covariance_taffo.c:55:7
	shrl	$2, %edx
	movq	-64(%rbp), %rax
	.loc	1 55 13                 # covariance_taffo.c:55:13
	movl	-28(%rbp), %esi
	.loc	1 55 14                 # covariance_taffo.c:55:14
	imull	-44(%rbp), %esi
	.loc	1 55 16                 # covariance_taffo.c:55:16
	addl	-32(%rbp), %esi
	.loc	1 55 7                  # covariance_taffo.c:55:7
	movslq	%esi, %rcx
	.loc	1 55 20                 # covariance_taffo.c:55:20
	movl	(%rax,%rcx,4), %esi
	sarl	$1, %esi
	subl	%edx, %esi
	shll	$1, %esi
	movl	%esi, (%rax,%rcx,4)
.Ltmp21:
# %bb.17:                               # %for.inc35
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 53 43 is_stmt 1       # covariance_taffo.c:53:43
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	.loc	1 53 22 is_stmt 0       # covariance_taffo.c:53:22
	jmp	.LBB0_15
.Ltmp22:
.LBB0_18:                               # %for.end37
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	1 57 7 is_stmt 1        # covariance_taffo.c:57:7
	jmp	.LBB0_19
.Ltmp23:
.LBB0_19:                               # %for.inc38
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	1 51 41                 # covariance_taffo.c:51:41
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	.loc	1 51 20 is_stmt 0       # covariance_taffo.c:51:20
	jmp	.LBB0_12
.Ltmp24:
.LBB0_20:                               # %for.end40
	.loc	1 57 7 is_stmt 1        # covariance_taffo.c:57:7
	jmp	.LBB0_21
.Ltmp25:
.LBB0_21:                               # %VITIS_LOOP_58_5
	.loc	1 58 27                 # covariance_taffo.c:58:27
	movl	$0, -28(%rbp)
.LBB0_22:                               # %for.cond41
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_25 Depth 2
                                        #       Child Loop BB0_28 Depth 3
.Ltmp26:
	.loc	1 58 34 is_stmt 0       # covariance_taffo.c:58:34
	cmpl	$16, -28(%rbp)
.Ltmp27:
	.loc	1 58 20                 # covariance_taffo.c:58:20
	jge	.LBB0_35
# %bb.23:                               # %for.body43
                                        #   in Loop: Header=BB0_22 Depth=1
.Ltmp28:
	.loc	1 58 44                 # covariance_taffo.c:58:44
	jmp	.LBB0_24
.LBB0_24:                               # %VITIS_LOOP_60_6
                                        #   in Loop: Header=BB0_22 Depth=1
.Ltmp29:
	.loc	1 60 31 is_stmt 1       # covariance_taffo.c:60:31
	movl	-28(%rbp), %eax
	.loc	1 60 29 is_stmt 0       # covariance_taffo.c:60:29
	movl	%eax, -32(%rbp)
.LBB0_25:                               # %for.cond44
                                        #   Parent Loop BB0_22 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_28 Depth 3
.Ltmp30:
	.loc	1 60 36                 # covariance_taffo.c:60:36
	cmpl	$16, -32(%rbp)
.Ltmp31:
	.loc	1 60 22                 # covariance_taffo.c:60:22
	jge	.LBB0_33
# %bb.26:                               # %for.body46
                                        #   in Loop: Header=BB0_25 Depth=2
.Ltmp32:
	.loc	1 61 7 is_stmt 1        # covariance_taffo.c:61:7
	jmp	.LBB0_27
.LBB0_27:                               # %VITIS_LOOP_63_7
                                        #   in Loop: Header=BB0_25 Depth=2
.Ltmp33:
	.loc	1 63 33                 # covariance_taffo.c:63:33
	movl	$0, -36(%rbp)
.LBB0_28:                               # %for.cond47
                                        #   Parent Loop BB0_22 Depth=1
                                        #     Parent Loop BB0_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
.Ltmp34:
	.loc	1 63 40 is_stmt 0       # covariance_taffo.c:63:40
	cmpl	$16, -36(%rbp)
.Ltmp35:
	.loc	1 63 26                 # covariance_taffo.c:63:26
	jge	.LBB0_31
# %bb.29:                               # %for.body49
                                        #   in Loop: Header=BB0_28 Depth=3
.Ltmp36:
	.loc	1 65 19 is_stmt 1       # covariance_taffo.c:65:19
	movq	-64(%rbp), %rax
	.loc	1 65 25 is_stmt 0       # covariance_taffo.c:65:25
	movl	-36(%rbp), %ecx
	.loc	1 65 26                 # covariance_taffo.c:65:26
	imull	-44(%rbp), %ecx
	.loc	1 65 28                 # covariance_taffo.c:65:28
	addl	-32(%rbp), %ecx
	.loc	1 65 19                 # covariance_taffo.c:65:19
	movslq	%ecx, %rdx
	movl	(%rax,%rdx,4), %ecx
	.loc	1 65 34                 # covariance_taffo.c:65:34
	movq	-64(%rbp), %rax
	.loc	1 65 40                 # covariance_taffo.c:65:40
	movl	-36(%rbp), %esi
	.loc	1 65 41                 # covariance_taffo.c:65:41
	imull	-44(%rbp), %esi
	.loc	1 65 43                 # covariance_taffo.c:65:43
	addl	-32(%rbp), %esi
	.loc	1 65 34                 # covariance_taffo.c:65:34
	movslq	%esi, %rdx
	movl	(%rax,%rdx,4), %esi
	.loc	1 65 4                  # covariance_taffo.c:65:4
	movslq	%ecx, %rax
	movslq	%esi, %rdx
	imulq	%rdx, %rax
	shrq	$29, %rax
	.loc	1 65 32                 # covariance_taffo.c:65:32
	movl	%eax, %ecx
	.loc	1 65 4                  # covariance_taffo.c:65:4
	movq	-72(%rbp), %rax
	.loc	1 65 9                  # covariance_taffo.c:65:9
	movl	-28(%rbp), %esi
	.loc	1 65 10                 # covariance_taffo.c:65:10
	imull	-44(%rbp), %esi
	.loc	1 65 12                 # covariance_taffo.c:65:12
	addl	-32(%rbp), %esi
	.loc	1 65 4                  # covariance_taffo.c:65:4
	movslq	%esi, %rdx
	.loc	1 65 16                 # covariance_taffo.c:65:16
	movl	(%rax,%rdx,4), %esi
	shll	$16, %esi
	addl	%ecx, %esi
	shrl	$16, %esi
	movl	%esi, (%rax,%rdx,4)
.Ltmp37:
# %bb.30:                               # %for.inc64
                                        #   in Loop: Header=BB0_28 Depth=3
	.loc	1 63 47 is_stmt 1       # covariance_taffo.c:63:47
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	.loc	1 63 26 is_stmt 0       # covariance_taffo.c:63:26
	jmp	.LBB0_28
.Ltmp38:
.LBB0_31:                               # %for.end66
                                        #   in Loop: Header=BB0_25 Depth=2
	.loc	1 67 23 is_stmt 1       # covariance_taffo.c:67:23
	movl	-56(%rbp), %eax
	.loc	1 67 9 is_stmt 0        # covariance_taffo.c:67:9
	movq	-16(%rbp), %rcx
	.loc	1 67 13                 # covariance_taffo.c:67:13
	movl	-28(%rbp), %edx
	.loc	1 67 14                 # covariance_taffo.c:67:14
	imull	-44(%rbp), %edx
	.loc	1 67 16                 # covariance_taffo.c:67:16
	addl	-32(%rbp), %edx
	.loc	1 67 9                  # covariance_taffo.c:67:9
	movslq	%edx, %rsi
	.loc	1 67 20                 # covariance_taffo.c:67:20
	movl	(%rcx,%rsi,4), %edx
	movl	%edx, %edi
	shlq	$20, %rdi
	movl	%eax, %eax
	movl	%eax, %r8d
	movq	%rdi, %rax
	xorl	%edx, %edx
                                        # kill: def $rdx killed $edx
	divq	%r8
	shlq	$23, %rax
	movl	%eax, %r9d
	shrl	$23, %r9d
	movl	%r9d, (%rcx,%rsi,4)
	.loc	1 68 22 is_stmt 1       # covariance_taffo.c:68:22
	movq	-16(%rbp), %rax
	.loc	1 68 26 is_stmt 0       # covariance_taffo.c:68:26
	movl	-28(%rbp), %r9d
	.loc	1 68 27                 # covariance_taffo.c:68:27
	imull	-44(%rbp), %r9d
	.loc	1 68 29                 # covariance_taffo.c:68:29
	addl	-32(%rbp), %r9d
	.loc	1 68 22                 # covariance_taffo.c:68:22
	movslq	%r9d, %rcx
	movl	(%rax,%rcx,4), %r9d
	.loc	1 68 9                  # covariance_taffo.c:68:9
	movq	-16(%rbp), %rax
	.loc	1 68 13                 # covariance_taffo.c:68:13
	movl	-32(%rbp), %r10d
	.loc	1 68 14                 # covariance_taffo.c:68:14
	imull	-44(%rbp), %r10d
	.loc	1 68 16                 # covariance_taffo.c:68:16
	addl	-28(%rbp), %r10d
	.loc	1 68 9                  # covariance_taffo.c:68:9
	movslq	%r10d, %rcx
	.loc	1 68 20                 # covariance_taffo.c:68:20
	movl	%r9d, (%rax,%rcx,4)
.Ltmp39:
# %bb.32:                               # %for.inc80
                                        #   in Loop: Header=BB0_25 Depth=2
	.loc	1 60 43 is_stmt 1       # covariance_taffo.c:60:43
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	.loc	1 60 22 is_stmt 0       # covariance_taffo.c:60:22
	jmp	.LBB0_25
.Ltmp40:
.LBB0_33:                               # %for.end82
                                        #   in Loop: Header=BB0_22 Depth=1
	.loc	1 70 2 is_stmt 1        # covariance_taffo.c:70:2
	jmp	.LBB0_34
.Ltmp41:
.LBB0_34:                               # %for.inc83
                                        #   in Loop: Header=BB0_22 Depth=1
	.loc	1 58 41                 # covariance_taffo.c:58:41
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	.loc	1 58 20 is_stmt 0       # covariance_taffo.c:58:20
	jmp	.LBB0_22
.Ltmp42:
.LBB0_35:                               # %for.end85
	.loc	1 71 1 is_stmt 1        # covariance_taffo.c:71:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp43:
.Lfunc_end0:
	.size	covariance, .Lfunc_end0-covariance
	.cfi_endproc
                                        # -- End function
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 7.0.0 "  # string offset=0
.Linfo_string1:
	.asciz	"/home/bruno/Desktop/benchmarks/covariance/proj_covariance/solution1/.autopilot/db/covariance_taffo.pp.0.c" # string offset=21
.Linfo_string2:
	.asciz	"/home/bruno/Desktop/benchmarks/covariance" # string offset=127
.Linfo_string3:
	.asciz	"float"                 # string offset=169
.Linfo_string4:
	.asciz	"covariance"            # string offset=175
.Linfo_string5:
	.asciz	"data"                  # string offset=186
.Linfo_string6:
	.asciz	"cov"                   # string offset=191
.Linfo_string7:
	.asciz	"mean"                  # string offset=195
.Linfo_string8:
	.asciz	"i"                     # string offset=200
.Linfo_string9:
	.asciz	"int"                   # string offset=202
.Linfo_string10:
	.asciz	"j"                     # string offset=206
.Linfo_string11:
	.asciz	"k"                     # string offset=208
.Linfo_string12:
	.asciz	"n"                     # string offset=210
.Linfo_string13:
	.asciz	"m"                     # string offset=212
.Linfo_string14:
	.asciz	"onedotzero"            # string offset=214
	.section	.debug_abbrev,"",@progbits
	.byte	1                       # Abbreviation Code
	.byte	17                      # DW_TAG_compile_unit
	.byte	1                       # DW_CHILDREN_yes
	.byte	37                      # DW_AT_producer
	.byte	14                      # DW_FORM_strp
	.byte	19                      # DW_AT_language
	.byte	5                       # DW_FORM_data2
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	16                      # DW_AT_stmt_list
	.byte	23                      # DW_FORM_sec_offset
	.byte	27                      # DW_AT_comp_dir
	.byte	14                      # DW_FORM_strp
	.ascii	"\264B"                 # DW_AT_GNU_pubnames
	.byte	25                      # DW_FORM_flag_present
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	6                       # DW_FORM_data4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	2                       # Abbreviation Code
	.byte	36                      # DW_TAG_base_type
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	62                      # DW_AT_encoding
	.byte	11                      # DW_FORM_data1
	.byte	11                      # DW_AT_byte_size
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	3                       # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	6                       # DW_FORM_data4
	.byte	64                      # DW_AT_frame_base
	.byte	24                      # DW_FORM_exprloc
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	39                      # DW_AT_prototyped
	.byte	25                      # DW_FORM_flag_present
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	4                       # Abbreviation Code
	.byte	5                       # DW_TAG_formal_parameter
	.byte	0                       # DW_CHILDREN_no
	.byte	2                       # DW_AT_location
	.byte	24                      # DW_FORM_exprloc
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	5                       # Abbreviation Code
	.byte	52                      # DW_TAG_variable
	.byte	0                       # DW_CHILDREN_no
	.byte	2                       # DW_AT_location
	.byte	24                      # DW_FORM_exprloc
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	6                       # Abbreviation Code
	.byte	15                      # DW_TAG_pointer_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	0                       # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	4                       # DWARF version number
	.long	.debug_abbrev           # Offset Into Abbrev. Section
	.byte	8                       # Address Size (in bytes)
	.byte	1                       # Abbrev [1] 0xb:0xc7 DW_TAG_compile_unit
	.long	.Linfo_string0          # DW_AT_producer
	.short	12                      # DW_AT_language
	.long	.Linfo_string1          # DW_AT_name
	.long	.Lline_table_start0     # DW_AT_stmt_list
	.long	.Linfo_string2          # DW_AT_comp_dir
                                        # DW_AT_GNU_pubnames
	.quad	.Lfunc_begin0           # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0 # DW_AT_high_pc
	.byte	2                       # Abbrev [2] 0x2a:0x7 DW_TAG_base_type
	.long	.Linfo_string3          # DW_AT_name
	.byte	4                       # DW_AT_encoding
	.byte	4                       # DW_AT_byte_size
	.byte	3                       # Abbrev [3] 0x31:0x94 DW_TAG_subprogram
	.quad	.Lfunc_begin0           # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0 # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string4          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	18                      # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	4                       # Abbrev [4] 0x46:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string5          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	18                      # DW_AT_decl_line
	.long	197                     # DW_AT_type
	.byte	4                       # Abbrev [4] 0x54:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string6          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	18                      # DW_AT_decl_line
	.long	197                     # DW_AT_type
	.byte	4                       # Abbrev [4] 0x62:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string7          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	18                      # DW_AT_decl_line
	.long	197                     # DW_AT_type
	.byte	5                       # Abbrev [5] 0x70:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	100
	.long	.Linfo_string8          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	23                      # DW_AT_decl_line
	.long	202                     # DW_AT_type
	.byte	5                       # Abbrev [5] 0x7e:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string10         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	24                      # DW_AT_decl_line
	.long	202                     # DW_AT_type
	.byte	5                       # Abbrev [5] 0x8c:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	92
	.long	.Linfo_string11         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	25                      # DW_AT_decl_line
	.long	202                     # DW_AT_type
	.byte	5                       # Abbrev [5] 0x9a:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	88
	.long	.Linfo_string12         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	26                      # DW_AT_decl_line
	.long	202                     # DW_AT_type
	.byte	5                       # Abbrev [5] 0xa8:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	84
	.long	.Linfo_string13         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	27                      # DW_AT_decl_line
	.long	202                     # DW_AT_type
	.byte	5                       # Abbrev [5] 0xb6:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	76
	.long	.Linfo_string14         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	29                      # DW_AT_decl_line
	.long	42                      # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	6                       # Abbrev [6] 0xc5:0x5 DW_TAG_pointer_type
	.long	42                      # DW_AT_type
	.byte	2                       # Abbrev [2] 0xca:0x7 DW_TAG_base_type
	.long	.Linfo_string9          # DW_AT_name
	.byte	5                       # DW_AT_encoding
	.byte	4                       # DW_AT_byte_size
	.byte	0                       # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_macinfo,"",@progbits
	.byte	0                       # End Of Macro List Mark
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end0-.LpubNames_begin0 # Length of Public Names Info
.LpubNames_begin0:
	.short	2                       # DWARF Version
	.long	.Lcu_begin0             # Offset of Compilation Unit Info
	.long	210                     # Compilation Unit Length
	.long	49                      # DIE offset
	.asciz	"covariance"            # External Name
	.long	0                       # End Mark
.LpubNames_end0:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end0-.LpubTypes_begin0 # Length of Public Types Info
.LpubTypes_begin0:
	.short	2                       # DWARF Version
	.long	.Lcu_begin0             # Offset of Compilation Unit Info
	.long	210                     # Compilation Unit Length
	.long	42                      # DIE offset
	.asciz	"float"                 # External Name
	.long	202                     # DIE offset
	.asciz	"int"                   # External Name
	.long	0                       # End Mark
.LpubTypes_end0:

	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.ident	"clang version 7.0.0 "
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.section	.debug_line,"",@progbits
.Lline_table_start0:
