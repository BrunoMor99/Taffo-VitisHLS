	.text
	.file	"llvm-link"
	.globl	mm3                     # -- Begin function mm3
	.p2align	4, 0x90
	.type	mm3,@function
mm3:                                    # @mm3
.Lfunc_begin0:
	.file	1 "/home/bruno/Desktop/benchmarks/mm3" "mm3_taffo.c"
	.loc	1 27 0                  # mm3_taffo.c:27:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$24, %rsp
	movq	16(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
.Ltmp0:
	.loc	1 36 6 prologue_end     # mm3_taffo.c:36:6
	movl	$16, -52(%rbp)
	.loc	1 37 7                  # mm3_taffo.c:37:7
	movl	$16, -56(%rbp)
	.loc	1 38 7                  # mm3_taffo.c:38:7
	movl	$16, -60(%rbp)
	.loc	1 39 7                  # mm3_taffo.c:39:7
	movl	$16, -64(%rbp)
	.loc	1 40 7                  # mm3_taffo.c:40:7
	movl	$16, -68(%rbp)
	.loc	1 43 8                  # mm3_taffo.c:43:8
	movq	-8(%rbp), %rcx
	.loc	1 43 6 is_stmt 0        # mm3_taffo.c:43:6
	movq	%rcx, -80(%rbp)
	.loc	1 45 8 is_stmt 1        # mm3_taffo.c:45:8
	movq	-16(%rbp), %rcx
	.loc	1 45 6 is_stmt 0        # mm3_taffo.c:45:6
	movq	%rcx, -88(%rbp)
	.loc	1 47 8 is_stmt 1        # mm3_taffo.c:47:8
	movq	-24(%rbp), %rcx
	.loc	1 47 6 is_stmt 0        # mm3_taffo.c:47:6
	movq	%rcx, -96(%rbp)
	.loc	1 49 8 is_stmt 1        # mm3_taffo.c:49:8
	movq	-32(%rbp), %rcx
	.loc	1 49 6 is_stmt 0        # mm3_taffo.c:49:6
	movq	%rcx, -104(%rbp)
	.loc	1 51 8 is_stmt 1        # mm3_taffo.c:51:8
	movq	-40(%rbp), %rcx
	.loc	1 51 6 is_stmt 0        # mm3_taffo.c:51:6
	movq	%rcx, -112(%rbp)
	.loc	1 53 8 is_stmt 1        # mm3_taffo.c:53:8
	movq	-48(%rbp), %rcx
	.loc	1 53 6 is_stmt 0        # mm3_taffo.c:53:6
	movq	%rcx, -120(%rbp)
	.loc	1 55 8 is_stmt 1        # mm3_taffo.c:55:8
	movq	16(%rbp), %rcx
	.loc	1 55 6 is_stmt 0        # mm3_taffo.c:55:6
	movq	%rcx, -128(%rbp)
	movq	%rax, -152(%rbp)        # 8-byte Spill
# %bb.1:                                # %VITIS_LOOP_63_1
.Ltmp1:
	.loc	1 63 27 is_stmt 1       # mm3_taffo.c:63:27
	movl	$0, -132(%rbp)
.LBB0_2:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
                                        #       Child Loop BB0_8 Depth 3
.Ltmp2:
	.loc	1 63 32 is_stmt 0       # mm3_taffo.c:63:32
	movl	-132(%rbp), %eax
	.loc	1 63 34                 # mm3_taffo.c:63:34
	cmpl	-52(%rbp), %eax
.Ltmp3:
	.loc	1 63 20                 # mm3_taffo.c:63:20
	jge	.LBB0_15
# %bb.3:                                # %for.body
                                        #   in Loop: Header=BB0_2 Depth=1
.Ltmp4:
	.loc	1 63 44                 # mm3_taffo.c:63:44
	jmp	.LBB0_4
.LBB0_4:                                # %VITIS_LOOP_65_2
                                        #   in Loop: Header=BB0_2 Depth=1
.Ltmp5:
	.loc	1 65 29 is_stmt 1       # mm3_taffo.c:65:29
	movl	$0, -136(%rbp)
.LBB0_5:                                # %for.cond11
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_8 Depth 3
.Ltmp6:
	.loc	1 65 34 is_stmt 0       # mm3_taffo.c:65:34
	movl	-136(%rbp), %eax
	.loc	1 65 36                 # mm3_taffo.c:65:36
	cmpl	-56(%rbp), %eax
.Ltmp7:
	.loc	1 65 22                 # mm3_taffo.c:65:22
	jge	.LBB0_13
# %bb.6:                                # %for.body13
                                        #   in Loop: Header=BB0_5 Depth=2
.Ltmp8:
	.loc	1 67 6 is_stmt 1        # mm3_taffo.c:67:6
	movq	-112(%rbp), %rax
	.loc	1 67 9 is_stmt 0        # mm3_taffo.c:67:9
	movl	-132(%rbp), %ecx
	.loc	1 67 10                 # mm3_taffo.c:67:10
	imull	-56(%rbp), %ecx
	.loc	1 67 13                 # mm3_taffo.c:67:13
	addl	-136(%rbp), %ecx
	.loc	1 67 6                  # mm3_taffo.c:67:6
	movslq	%ecx, %rdx
	.loc	1 67 17                 # mm3_taffo.c:67:17
	movl	$0, (%rax,%rdx,4)
# %bb.7:                                # %VITIS_LOOP_68_3
                                        #   in Loop: Header=BB0_5 Depth=2
.Ltmp9:
	.loc	1 68 30 is_stmt 1       # mm3_taffo.c:68:30
	movl	$0, -140(%rbp)
.LBB0_8:                                # %for.cond14
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
.Ltmp10:
	.loc	1 68 37 is_stmt 0       # mm3_taffo.c:68:37
	cmpl	$16, -140(%rbp)
.Ltmp11:
	.loc	1 68 23                 # mm3_taffo.c:68:23
	jge	.LBB0_11
# %bb.9:                                # %for.body16
                                        #   in Loop: Header=BB0_8 Depth=3
.Ltmp12:
	.loc	1 70 24 is_stmt 1       # mm3_taffo.c:70:24
	movq	-80(%rbp), %rax
	.loc	1 70 27 is_stmt 0       # mm3_taffo.c:70:27
	movl	-132(%rbp), %ecx
	.loc	1 70 28                 # mm3_taffo.c:70:28
	imull	-60(%rbp), %ecx
	.loc	1 70 31                 # mm3_taffo.c:70:31
	addl	-140(%rbp), %ecx
	.loc	1 70 24                 # mm3_taffo.c:70:24
	movslq	%ecx, %rdx
	movl	(%rax,%rdx,4), %ecx
	.loc	1 70 37                 # mm3_taffo.c:70:37
	movq	-88(%rbp), %rax
	.loc	1 70 40                 # mm3_taffo.c:70:40
	movl	-140(%rbp), %esi
	.loc	1 70 41                 # mm3_taffo.c:70:41
	imull	-56(%rbp), %esi
	.loc	1 70 44                 # mm3_taffo.c:70:44
	addl	-136(%rbp), %esi
	.loc	1 70 37                 # mm3_taffo.c:70:37
	movslq	%esi, %rdx
	movl	(%rax,%rdx,4), %esi
	.loc	1 70 10                 # mm3_taffo.c:70:10
	movslq	%ecx, %rax
	movslq	%esi, %rdx
	imulq	%rdx, %rax
	shrq	$16, %rax
	.loc	1 70 35                 # mm3_taffo.c:70:35
	movl	%eax, %ecx
	.loc	1 70 10                 # mm3_taffo.c:70:10
	movq	-112(%rbp), %rax
	.loc	1 70 13                 # mm3_taffo.c:70:13
	movl	-132(%rbp), %esi
	.loc	1 70 14                 # mm3_taffo.c:70:14
	imull	-56(%rbp), %esi
	.loc	1 70 17                 # mm3_taffo.c:70:17
	addl	-136(%rbp), %esi
	.loc	1 70 10                 # mm3_taffo.c:70:10
	movslq	%esi, %rdx
	.loc	1 70 21                 # mm3_taffo.c:70:21
	movl	(%rax,%rdx,4), %esi
	shll	$16, %esi
	addl	%ecx, %esi
	shrl	$16, %esi
	movl	%esi, (%rax,%rdx,4)
.Ltmp13:
# %bb.10:                               # %for.inc
                                        #   in Loop: Header=BB0_8 Depth=3
	.loc	1 68 43 is_stmt 1       # mm3_taffo.c:68:43
	movl	-140(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -140(%rbp)
	.loc	1 68 23 is_stmt 0       # mm3_taffo.c:68:23
	jmp	.LBB0_8
.Ltmp14:
.LBB0_11:                               # %for.end
                                        #   in Loop: Header=BB0_5 Depth=2
	.loc	1 72 5 is_stmt 1        # mm3_taffo.c:72:5
	jmp	.LBB0_12
.Ltmp15:
.LBB0_12:                               # %for.inc31
                                        #   in Loop: Header=BB0_5 Depth=2
	.loc	1 65 43                 # mm3_taffo.c:65:43
	movl	-136(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -136(%rbp)
	.loc	1 65 22 is_stmt 0       # mm3_taffo.c:65:22
	jmp	.LBB0_5
.Ltmp16:
.LBB0_13:                               # %for.end33
                                        #   in Loop: Header=BB0_2 Depth=1
	.loc	1 73 4 is_stmt 1        # mm3_taffo.c:73:4
	jmp	.LBB0_14
.Ltmp17:
.LBB0_14:                               # %for.inc34
                                        #   in Loop: Header=BB0_2 Depth=1
	.loc	1 63 41                 # mm3_taffo.c:63:41
	movl	-132(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -132(%rbp)
	.loc	1 63 20 is_stmt 0       # mm3_taffo.c:63:20
	jmp	.LBB0_2
.Ltmp18:
.LBB0_15:                               # %for.end36
	.loc	1 73 4 is_stmt 1        # mm3_taffo.c:73:4
	jmp	.LBB0_16
.Ltmp19:
.LBB0_16:                               # %VITIS_LOOP_75_4
	.loc	1 75 27                 # mm3_taffo.c:75:27
	movl	$0, -132(%rbp)
.LBB0_17:                               # %for.cond37
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_20 Depth 2
                                        #       Child Loop BB0_23 Depth 3
.Ltmp20:
	.loc	1 75 32 is_stmt 0       # mm3_taffo.c:75:32
	movl	-132(%rbp), %eax
	.loc	1 75 34                 # mm3_taffo.c:75:34
	cmpl	-56(%rbp), %eax
.Ltmp21:
	.loc	1 75 20                 # mm3_taffo.c:75:20
	jge	.LBB0_30
# %bb.18:                               # %for.body39
                                        #   in Loop: Header=BB0_17 Depth=1
.Ltmp22:
	.loc	1 75 44                 # mm3_taffo.c:75:44
	jmp	.LBB0_19
.LBB0_19:                               # %VITIS_LOOP_77_5
                                        #   in Loop: Header=BB0_17 Depth=1
.Ltmp23:
	.loc	1 77 29 is_stmt 1       # mm3_taffo.c:77:29
	movl	$0, -136(%rbp)
.LBB0_20:                               # %for.cond40
                                        #   Parent Loop BB0_17 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_23 Depth 3
.Ltmp24:
	.loc	1 77 34 is_stmt 0       # mm3_taffo.c:77:34
	movl	-136(%rbp), %eax
	.loc	1 77 36                 # mm3_taffo.c:77:36
	cmpl	-64(%rbp), %eax
.Ltmp25:
	.loc	1 77 22                 # mm3_taffo.c:77:22
	jge	.LBB0_28
# %bb.21:                               # %for.body42
                                        #   in Loop: Header=BB0_20 Depth=2
.Ltmp26:
	.loc	1 79 6 is_stmt 1        # mm3_taffo.c:79:6
	movq	-120(%rbp), %rax
	.loc	1 79 9 is_stmt 0        # mm3_taffo.c:79:9
	movl	-132(%rbp), %ecx
	.loc	1 79 10                 # mm3_taffo.c:79:10
	imull	-64(%rbp), %ecx
	.loc	1 79 13                 # mm3_taffo.c:79:13
	addl	-136(%rbp), %ecx
	.loc	1 79 6                  # mm3_taffo.c:79:6
	movslq	%ecx, %rdx
	.loc	1 79 17                 # mm3_taffo.c:79:17
	movl	$0, (%rax,%rdx,4)
# %bb.22:                               # %VITIS_LOOP_80_6
                                        #   in Loop: Header=BB0_20 Depth=2
.Ltmp27:
	.loc	1 80 30 is_stmt 1       # mm3_taffo.c:80:30
	movl	$0, -140(%rbp)
.LBB0_23:                               # %for.cond47
                                        #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
.Ltmp28:
	.loc	1 80 37 is_stmt 0       # mm3_taffo.c:80:37
	cmpl	$16, -140(%rbp)
.Ltmp29:
	.loc	1 80 23                 # mm3_taffo.c:80:23
	jge	.LBB0_26
# %bb.24:                               # %for.body49
                                        #   in Loop: Header=BB0_23 Depth=3
.Ltmp30:
	.loc	1 82 24 is_stmt 1       # mm3_taffo.c:82:24
	movq	-96(%rbp), %rax
	.loc	1 82 27 is_stmt 0       # mm3_taffo.c:82:27
	movl	-132(%rbp), %ecx
	.loc	1 82 28                 # mm3_taffo.c:82:28
	imull	-68(%rbp), %ecx
	.loc	1 82 31                 # mm3_taffo.c:82:31
	addl	-140(%rbp), %ecx
	.loc	1 82 24                 # mm3_taffo.c:82:24
	movslq	%ecx, %rdx
	movl	(%rax,%rdx,4), %ecx
	.loc	1 82 37                 # mm3_taffo.c:82:37
	movq	-104(%rbp), %rax
	.loc	1 82 40                 # mm3_taffo.c:82:40
	movl	-140(%rbp), %esi
	.loc	1 82 41                 # mm3_taffo.c:82:41
	imull	-64(%rbp), %esi
	.loc	1 82 44                 # mm3_taffo.c:82:44
	addl	-136(%rbp), %esi
	.loc	1 82 37                 # mm3_taffo.c:82:37
	movslq	%esi, %rdx
	movl	(%rax,%rdx,4), %esi
	.loc	1 82 10                 # mm3_taffo.c:82:10
	movslq	%ecx, %rax
	movslq	%esi, %rdx
	imulq	%rdx, %rax
	shrq	$16, %rax
	.loc	1 82 35                 # mm3_taffo.c:82:35
	movl	%eax, %ecx
	.loc	1 82 10                 # mm3_taffo.c:82:10
	movq	-120(%rbp), %rax
	.loc	1 82 13                 # mm3_taffo.c:82:13
	movl	-132(%rbp), %esi
	.loc	1 82 14                 # mm3_taffo.c:82:14
	imull	-64(%rbp), %esi
	.loc	1 82 17                 # mm3_taffo.c:82:17
	addl	-136(%rbp), %esi
	.loc	1 82 10                 # mm3_taffo.c:82:10
	movslq	%esi, %rdx
	.loc	1 82 21                 # mm3_taffo.c:82:21
	movl	(%rax,%rdx,4), %esi
	shll	$16, %esi
	addl	%ecx, %esi
	shrl	$16, %esi
	movl	%esi, (%rax,%rdx,4)
.Ltmp31:
# %bb.25:                               # %for.inc64
                                        #   in Loop: Header=BB0_23 Depth=3
	.loc	1 80 43 is_stmt 1       # mm3_taffo.c:80:43
	movl	-140(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -140(%rbp)
	.loc	1 80 23 is_stmt 0       # mm3_taffo.c:80:23
	jmp	.LBB0_23
.Ltmp32:
.LBB0_26:                               # %for.end66
                                        #   in Loop: Header=BB0_20 Depth=2
	.loc	1 84 5 is_stmt 1        # mm3_taffo.c:84:5
	jmp	.LBB0_27
.Ltmp33:
.LBB0_27:                               # %for.inc67
                                        #   in Loop: Header=BB0_20 Depth=2
	.loc	1 77 43                 # mm3_taffo.c:77:43
	movl	-136(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -136(%rbp)
	.loc	1 77 22 is_stmt 0       # mm3_taffo.c:77:22
	jmp	.LBB0_20
.Ltmp34:
.LBB0_28:                               # %for.end69
                                        #   in Loop: Header=BB0_17 Depth=1
	.loc	1 85 4 is_stmt 1        # mm3_taffo.c:85:4
	jmp	.LBB0_29
.Ltmp35:
.LBB0_29:                               # %for.inc70
                                        #   in Loop: Header=BB0_17 Depth=1
	.loc	1 75 41                 # mm3_taffo.c:75:41
	movl	-132(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -132(%rbp)
	.loc	1 75 20 is_stmt 0       # mm3_taffo.c:75:20
	jmp	.LBB0_17
.Ltmp36:
.LBB0_30:                               # %for.end72
	.loc	1 85 4 is_stmt 1        # mm3_taffo.c:85:4
	jmp	.LBB0_31
.Ltmp37:
.LBB0_31:                               # %VITIS_LOOP_88_7
	.loc	1 88 27                 # mm3_taffo.c:88:27
	movl	$0, -132(%rbp)
.LBB0_32:                               # %for.cond73
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_35 Depth 2
                                        #       Child Loop BB0_38 Depth 3
.Ltmp38:
	.loc	1 88 34 is_stmt 0       # mm3_taffo.c:88:34
	cmpl	$16, -132(%rbp)
.Ltmp39:
	.loc	1 88 20                 # mm3_taffo.c:88:20
	jge	.LBB0_45
# %bb.33:                               # %for.body75
                                        #   in Loop: Header=BB0_32 Depth=1
.Ltmp40:
	.loc	1 88 44                 # mm3_taffo.c:88:44
	jmp	.LBB0_34
.LBB0_34:                               # %VITIS_LOOP_90_8
                                        #   in Loop: Header=BB0_32 Depth=1
.Ltmp41:
	.loc	1 90 29 is_stmt 1       # mm3_taffo.c:90:29
	movl	$0, -136(%rbp)
.LBB0_35:                               # %for.cond76
                                        #   Parent Loop BB0_32 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_38 Depth 3
.Ltmp42:
	.loc	1 90 36 is_stmt 0       # mm3_taffo.c:90:36
	cmpl	$16, -136(%rbp)
.Ltmp43:
	.loc	1 90 22                 # mm3_taffo.c:90:22
	jge	.LBB0_43
# %bb.36:                               # %for.body78
                                        #   in Loop: Header=BB0_35 Depth=2
.Ltmp44:
	.loc	1 92 6 is_stmt 1        # mm3_taffo.c:92:6
	movq	-128(%rbp), %rax
	.loc	1 92 9 is_stmt 0        # mm3_taffo.c:92:9
	movl	-132(%rbp), %ecx
	.loc	1 92 10                 # mm3_taffo.c:92:10
	imull	-64(%rbp), %ecx
	.loc	1 92 13                 # mm3_taffo.c:92:13
	addl	-136(%rbp), %ecx
	.loc	1 92 6                  # mm3_taffo.c:92:6
	movslq	%ecx, %rdx
	.loc	1 92 17                 # mm3_taffo.c:92:17
	movl	$0, (%rax,%rdx,4)
# %bb.37:                               # %VITIS_LOOP_93_9
                                        #   in Loop: Header=BB0_35 Depth=2
.Ltmp45:
	.loc	1 93 30 is_stmt 1       # mm3_taffo.c:93:30
	movl	$0, -140(%rbp)
.LBB0_38:                               # %for.cond83
                                        #   Parent Loop BB0_32 Depth=1
                                        #     Parent Loop BB0_35 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
.Ltmp46:
	.loc	1 93 37 is_stmt 0       # mm3_taffo.c:93:37
	cmpl	$16, -140(%rbp)
.Ltmp47:
	.loc	1 93 23                 # mm3_taffo.c:93:23
	jge	.LBB0_41
# %bb.39:                               # %for.body85
                                        #   in Loop: Header=BB0_38 Depth=3
.Ltmp48:
	.loc	1 95 24 is_stmt 1       # mm3_taffo.c:95:24
	movq	-112(%rbp), %rax
	.loc	1 95 27 is_stmt 0       # mm3_taffo.c:95:27
	movl	-132(%rbp), %ecx
	.loc	1 95 28                 # mm3_taffo.c:95:28
	imull	-56(%rbp), %ecx
	.loc	1 95 31                 # mm3_taffo.c:95:31
	addl	-140(%rbp), %ecx
	.loc	1 95 24                 # mm3_taffo.c:95:24
	movslq	%ecx, %rdx
	movl	(%rax,%rdx,4), %ecx
	.loc	1 95 37                 # mm3_taffo.c:95:37
	movq	-120(%rbp), %rax
	.loc	1 95 40                 # mm3_taffo.c:95:40
	movl	-140(%rbp), %esi
	.loc	1 95 41                 # mm3_taffo.c:95:41
	imull	-64(%rbp), %esi
	.loc	1 95 44                 # mm3_taffo.c:95:44
	addl	-136(%rbp), %esi
	.loc	1 95 37                 # mm3_taffo.c:95:37
	movslq	%esi, %rdx
	movl	(%rax,%rdx,4), %esi
	.loc	1 95 10                 # mm3_taffo.c:95:10
	movslq	%ecx, %rax
	movslq	%esi, %rdx
	imulq	%rdx, %rax
	.loc	1 95 35                 # mm3_taffo.c:95:35
	movl	%eax, %ecx
	.loc	1 95 10                 # mm3_taffo.c:95:10
	movq	-128(%rbp), %rax
	.loc	1 95 13                 # mm3_taffo.c:95:13
	movl	-132(%rbp), %esi
	.loc	1 95 14                 # mm3_taffo.c:95:14
	imull	-64(%rbp), %esi
	.loc	1 95 17                 # mm3_taffo.c:95:17
	addl	-136(%rbp), %esi
	.loc	1 95 10                 # mm3_taffo.c:95:10
	movslq	%esi, %rdx
	.loc	1 95 21                 # mm3_taffo.c:95:21
	movl	(%rax,%rdx,4), %esi
	shll	$16, %esi
	addl	%ecx, %esi
	shrl	$16, %esi
	movl	%esi, (%rax,%rdx,4)
.Ltmp49:
# %bb.40:                               # %for.inc100
                                        #   in Loop: Header=BB0_38 Depth=3
	.loc	1 93 43 is_stmt 1       # mm3_taffo.c:93:43
	movl	-140(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -140(%rbp)
	.loc	1 93 23 is_stmt 0       # mm3_taffo.c:93:23
	jmp	.LBB0_38
.Ltmp50:
.LBB0_41:                               # %for.end102
                                        #   in Loop: Header=BB0_35 Depth=2
	.loc	1 97 5 is_stmt 1        # mm3_taffo.c:97:5
	jmp	.LBB0_42
.Ltmp51:
.LBB0_42:                               # %for.inc103
                                        #   in Loop: Header=BB0_35 Depth=2
	.loc	1 90 43                 # mm3_taffo.c:90:43
	movl	-136(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -136(%rbp)
	.loc	1 90 22 is_stmt 0       # mm3_taffo.c:90:22
	jmp	.LBB0_35
.Ltmp52:
.LBB0_43:                               # %for.end105
                                        #   in Loop: Header=BB0_32 Depth=1
	.loc	1 98 3 is_stmt 1        # mm3_taffo.c:98:3
	jmp	.LBB0_44
.Ltmp53:
.LBB0_44:                               # %for.inc106
                                        #   in Loop: Header=BB0_32 Depth=1
	.loc	1 88 41                 # mm3_taffo.c:88:41
	movl	-132(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -132(%rbp)
	.loc	1 88 20 is_stmt 0       # mm3_taffo.c:88:20
	jmp	.LBB0_32
.Ltmp54:
.LBB0_45:                               # %for.end108
	.loc	1 99 1 is_stmt 1        # mm3_taffo.c:99:1
	addq	$24, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp55:
.Lfunc_end0:
	.size	mm3, .Lfunc_end0-mm3
	.cfi_endproc
                                        # -- End function
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 7.0.0 "  # string offset=0
.Linfo_string1:
	.asciz	"/home/bruno/Desktop/benchmarks/mm3/proj_mm3/solution1/.autopilot/db/mm3_taffo.pp.0.c" # string offset=21
.Linfo_string2:
	.asciz	"/home/bruno/Desktop/benchmarks/mm3" # string offset=106
.Linfo_string3:
	.asciz	"mm3"                   # string offset=141
.Linfo_string4:
	.asciz	"A"                     # string offset=145
.Linfo_string5:
	.asciz	"float"                 # string offset=147
.Linfo_string6:
	.asciz	"B"                     # string offset=153
.Linfo_string7:
	.asciz	"C"                     # string offset=155
.Linfo_string8:
	.asciz	"D"                     # string offset=157
.Linfo_string9:
	.asciz	"E"                     # string offset=159
.Linfo_string10:
	.asciz	"F"                     # string offset=161
.Linfo_string11:
	.asciz	"G"                     # string offset=163
.Linfo_string12:
	.asciz	"ni"                    # string offset=165
.Linfo_string13:
	.asciz	"int"                   # string offset=168
.Linfo_string14:
	.asciz	"nj"                    # string offset=172
.Linfo_string15:
	.asciz	"nk"                    # string offset=175
.Linfo_string16:
	.asciz	"nl"                    # string offset=178
.Linfo_string17:
	.asciz	"nm"                    # string offset=181
.Linfo_string18:
	.asciz	"i"                     # string offset=184
.Linfo_string19:
	.asciz	"j"                     # string offset=186
.Linfo_string20:
	.asciz	"k"                     # string offset=188
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
	.byte	3                       # Abbreviation Code
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
	.byte	4                       # Abbreviation Code
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
	.byte	5                       # Abbreviation Code
	.byte	15                      # DW_TAG_pointer_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	6                       # Abbreviation Code
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
	.byte	0                       # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	4                       # DWARF version number
	.long	.debug_abbrev           # Offset Into Abbrev. Section
	.byte	8                       # Address Size (in bytes)
	.byte	1                       # Abbrev [1] 0xb:0x11f DW_TAG_compile_unit
	.long	.Linfo_string0          # DW_AT_producer
	.short	12                      # DW_AT_language
	.long	.Linfo_string1          # DW_AT_name
	.long	.Lline_table_start0     # DW_AT_stmt_list
	.long	.Linfo_string2          # DW_AT_comp_dir
                                        # DW_AT_GNU_pubnames
	.quad	.Lfunc_begin0           # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0 # DW_AT_high_pc
	.byte	2                       # Abbrev [2] 0x2a:0xec DW_TAG_subprogram
	.quad	.Lfunc_begin0           # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0 # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string3          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	26                      # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	3                       # Abbrev [3] 0x3f:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string4          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	26                      # DW_AT_decl_line
	.long	278                     # DW_AT_type
	.byte	3                       # Abbrev [3] 0x4d:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string6          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	26                      # DW_AT_decl_line
	.long	278                     # DW_AT_type
	.byte	3                       # Abbrev [3] 0x5b:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string7          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	26                      # DW_AT_decl_line
	.long	278                     # DW_AT_type
	.byte	3                       # Abbrev [3] 0x69:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string8          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	26                      # DW_AT_decl_line
	.long	278                     # DW_AT_type
	.byte	3                       # Abbrev [3] 0x77:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	88
	.long	.Linfo_string9          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	26                      # DW_AT_decl_line
	.long	278                     # DW_AT_type
	.byte	3                       # Abbrev [3] 0x85:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	80
	.long	.Linfo_string10         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	26                      # DW_AT_decl_line
	.long	278                     # DW_AT_type
	.byte	3                       # Abbrev [3] 0x93:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	16
	.long	.Linfo_string11         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	26                      # DW_AT_decl_line
	.long	278                     # DW_AT_type
	.byte	4                       # Abbrev [4] 0xa1:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	76
	.long	.Linfo_string12         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	36                      # DW_AT_decl_line
	.long	290                     # DW_AT_type
	.byte	4                       # Abbrev [4] 0xaf:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	72
	.long	.Linfo_string14         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	37                      # DW_AT_decl_line
	.long	290                     # DW_AT_type
	.byte	4                       # Abbrev [4] 0xbd:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	68
	.long	.Linfo_string15         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	38                      # DW_AT_decl_line
	.long	290                     # DW_AT_type
	.byte	4                       # Abbrev [4] 0xcb:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	64
	.long	.Linfo_string16         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	39                      # DW_AT_decl_line
	.long	290                     # DW_AT_type
	.byte	4                       # Abbrev [4] 0xd9:0xf DW_TAG_variable
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\274\177"
	.long	.Linfo_string17         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	40                      # DW_AT_decl_line
	.long	290                     # DW_AT_type
	.byte	4                       # Abbrev [4] 0xe8:0xf DW_TAG_variable
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\374~"
	.long	.Linfo_string18         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	57                      # DW_AT_decl_line
	.long	290                     # DW_AT_type
	.byte	4                       # Abbrev [4] 0xf7:0xf DW_TAG_variable
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\370~"
	.long	.Linfo_string19         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	58                      # DW_AT_decl_line
	.long	290                     # DW_AT_type
	.byte	4                       # Abbrev [4] 0x106:0xf DW_TAG_variable
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\364~"
	.long	.Linfo_string20         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	59                      # DW_AT_decl_line
	.long	290                     # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	5                       # Abbrev [5] 0x116:0x5 DW_TAG_pointer_type
	.long	283                     # DW_AT_type
	.byte	6                       # Abbrev [6] 0x11b:0x7 DW_TAG_base_type
	.long	.Linfo_string5          # DW_AT_name
	.byte	4                       # DW_AT_encoding
	.byte	4                       # DW_AT_byte_size
	.byte	6                       # Abbrev [6] 0x122:0x7 DW_TAG_base_type
	.long	.Linfo_string13         # DW_AT_name
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
	.long	298                     # Compilation Unit Length
	.long	42                      # DIE offset
	.asciz	"mm3"                   # External Name
	.long	0                       # End Mark
.LpubNames_end0:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end0-.LpubTypes_begin0 # Length of Public Types Info
.LpubTypes_begin0:
	.short	2                       # DWARF Version
	.long	.Lcu_begin0             # Offset of Compilation Unit Info
	.long	298                     # Compilation Unit Length
	.long	283                     # DIE offset
	.asciz	"float"                 # External Name
	.long	290                     # DIE offset
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
