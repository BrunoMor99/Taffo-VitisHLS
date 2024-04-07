	.text
	.file	"llvm-link"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function mm
.LCPI0_0:
	.long	1258291200              # float 8388608
.LCPI0_1:
	.long	1207959552              # float 131072
.LCPI0_2:
	.long	1084227584              # float 5
.LCPI0_3:
	.long	1077936128              # float 3
.LCPI0_4:
	.long	1317011456              # float 1.07374182E+9
.LCPI0_5:
	.long	1308622848              # float 536870912
	.text
	.globl	mm
	.p2align	4, 0x90
	.type	mm,@function
mm:                                     # @mm
.Lfunc_begin0:
	.file	1 "/home/bruno/Desktop/benchmarks/gemm_large" "gemm_taffoin.c"
	.loc	1 42 0                  # gemm_taffoin.c:42:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$3004, %rsp             # imm = 0xBBC
	movss	%xmm0, -4(%rbp)
.Ltmp0:
	.loc	1 44 9 prologue_end     # gemm_taffoin.c:44:9
	movl	$16, -8(%rbp)
	.loc	1 45 9                  # gemm_taffoin.c:45:9
	movl	$16, -12(%rbp)
	.loc	1 46 9                  # gemm_taffoin.c:46:9
	movl	$16, -16(%rbp)
# %bb.1:                                # %VITIS_LOOP_52_1
.Ltmp1:
	.loc	1 52 29                 # gemm_taffoin.c:52:29
	movl	$0, -20(%rbp)
.LBB0_2:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
.Ltmp2:
	.loc	1 52 34 is_stmt 0       # gemm_taffoin.c:52:34
	movl	-20(%rbp), %eax
	.loc	1 52 36                 # gemm_taffoin.c:52:36
	cmpl	-8(%rbp), %eax
.Ltmp3:
	.loc	1 52 22                 # gemm_taffoin.c:52:22
	jge	.LBB0_10
# %bb.3:                                # %for.body
                                        #   in Loop: Header=BB0_2 Depth=1
.Ltmp4:
	.loc	1 52 46                 # gemm_taffoin.c:52:46
	jmp	.LBB0_4
.LBB0_4:                                # %VITIS_LOOP_53_2
                                        #   in Loop: Header=BB0_2 Depth=1
.Ltmp5:
	.loc	1 53 33 is_stmt 1       # gemm_taffoin.c:53:33
	movl	$0, -24(%rbp)
.LBB0_5:                                # %for.cond4
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp6:
	.loc	1 53 38 is_stmt 0       # gemm_taffoin.c:53:38
	movl	-24(%rbp), %eax
	.loc	1 53 40                 # gemm_taffoin.c:53:40
	cmpl	-16(%rbp), %eax
.Ltmp7:
	.loc	1 53 26                 # gemm_taffoin.c:53:26
	jge	.LBB0_8
# %bb.6:                                # %for.body6
                                        #   in Loop: Header=BB0_5 Depth=2
.Ltmp8:
	.loc	1 54 39 is_stmt 1       # gemm_taffoin.c:54:39
	movl	-20(%rbp), %eax
	.loc	1 54 41 is_stmt 0       # gemm_taffoin.c:54:41
	movl	-24(%rbp), %ecx
	.loc	1 54 40                 # gemm_taffoin.c:54:40
	imull	%ecx, %eax
	.loc	1 54 42                 # gemm_taffoin.c:54:42
	addl	$1, %eax
	.loc	1 54 48                 # gemm_taffoin.c:54:48
	movl	-8(%rbp), %ecx
	.loc	1 54 46                 # gemm_taffoin.c:54:46
	cltd
	idivl	%ecx
	.loc	1 54 37                 # gemm_taffoin.c:54:37
	cvtsi2ssl	%edx, %xmm0
	movss	.LCPI0_2(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	.loc	1 54 35                 # gemm_taffoin.c:54:35
	mulss	%xmm1, %xmm0
	.loc	1 54 54                 # gemm_taffoin.c:54:54
	cvtsi2ssl	%ecx, %xmm1
	.loc	1 54 52                 # gemm_taffoin.c:54:52
	divss	%xmm1, %xmm0
	movss	.LCPI0_5(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	.loc	1 54 15                 # gemm_taffoin.c:54:15
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %rsi
	movl	%esi, %eax
	movl	-20(%rbp), %ecx
	.loc	1 54 16                 # gemm_taffoin.c:54:16
	imull	-16(%rbp), %ecx
	.loc	1 54 19                 # gemm_taffoin.c:54:19
	addl	-24(%rbp), %ecx
	.loc	1 54 13                 # gemm_taffoin.c:54:13
	movslq	%ecx, %rsi
	.loc	1 54 23                 # gemm_taffoin.c:54:23
	movl	%eax, -1052(%rbp,%rsi,4)
.Ltmp9:
# %bb.7:                                # %for.inc
                                        #   in Loop: Header=BB0_5 Depth=2
	.loc	1 53 47 is_stmt 1       # gemm_taffoin.c:53:47
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	.loc	1 53 26 is_stmt 0       # gemm_taffoin.c:53:26
	jmp	.LBB0_5
.Ltmp10:
.LBB0_8:                                # %for.end
                                        #   in Loop: Header=BB0_2 Depth=1
	.loc	1 56 5 is_stmt 1        # gemm_taffoin.c:56:5
	jmp	.LBB0_9
.Ltmp11:
.LBB0_9:                                # %for.inc11
                                        #   in Loop: Header=BB0_2 Depth=1
	.loc	1 52 43                 # gemm_taffoin.c:52:43
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	.loc	1 52 22 is_stmt 0       # gemm_taffoin.c:52:22
	jmp	.LBB0_2
.Ltmp12:
.LBB0_10:                               # %for.end13
	.loc	1 56 5 is_stmt 1        # gemm_taffoin.c:56:5
	jmp	.LBB0_11
.Ltmp13:
.LBB0_11:                               # %VITIS_LOOP_57_3
	.loc	1 57 29                 # gemm_taffoin.c:57:29
	movl	$0, -20(%rbp)
.LBB0_12:                               # %for.cond14
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
.Ltmp14:
	.loc	1 57 34 is_stmt 0       # gemm_taffoin.c:57:34
	movl	-20(%rbp), %eax
	.loc	1 57 36                 # gemm_taffoin.c:57:36
	cmpl	-16(%rbp), %eax
.Ltmp15:
	.loc	1 57 22                 # gemm_taffoin.c:57:22
	jge	.LBB0_20
# %bb.13:                               # %for.body16
                                        #   in Loop: Header=BB0_12 Depth=1
.Ltmp16:
	.loc	1 57 46                 # gemm_taffoin.c:57:46
	jmp	.LBB0_14
.LBB0_14:                               # %VITIS_LOOP_58_4
                                        #   in Loop: Header=BB0_12 Depth=1
.Ltmp17:
	.loc	1 58 33 is_stmt 1       # gemm_taffoin.c:58:33
	movl	$0, -24(%rbp)
.LBB0_15:                               # %for.cond17
                                        #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp18:
	.loc	1 58 38 is_stmt 0       # gemm_taffoin.c:58:38
	movl	-24(%rbp), %eax
	.loc	1 58 40                 # gemm_taffoin.c:58:40
	cmpl	-12(%rbp), %eax
.Ltmp19:
	.loc	1 58 26                 # gemm_taffoin.c:58:26
	jge	.LBB0_18
# %bb.16:                               # %for.body19
                                        #   in Loop: Header=BB0_15 Depth=2
.Ltmp20:
	.loc	1 59 38 is_stmt 1       # gemm_taffoin.c:59:38
	movl	-20(%rbp), %eax
	.loc	1 59 41 is_stmt 0       # gemm_taffoin.c:59:41
	movl	-24(%rbp), %ecx
	.loc	1 59 42                 # gemm_taffoin.c:59:42
	addl	$1, %ecx
	.loc	1 59 39                 # gemm_taffoin.c:59:39
	imull	%ecx, %eax
	.loc	1 59 48                 # gemm_taffoin.c:59:48
	movl	-12(%rbp), %ecx
	.loc	1 59 46                 # gemm_taffoin.c:59:46
	cltd
	idivl	%ecx
	.loc	1 59 37                 # gemm_taffoin.c:59:37
	cvtsi2ssl	%edx, %xmm0
	movss	.LCPI0_3(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	.loc	1 59 35                 # gemm_taffoin.c:59:35
	mulss	%xmm1, %xmm0
	.loc	1 59 54                 # gemm_taffoin.c:59:54
	cvtsi2ssl	%ecx, %xmm1
	.loc	1 59 52                 # gemm_taffoin.c:59:52
	divss	%xmm1, %xmm0
	movss	.LCPI0_4(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	.loc	1 59 15                 # gemm_taffoin.c:59:15
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %rsi
	movl	%esi, %eax
	movl	-20(%rbp), %ecx
	.loc	1 59 16                 # gemm_taffoin.c:59:16
	imull	-12(%rbp), %ecx
	.loc	1 59 19                 # gemm_taffoin.c:59:19
	addl	-24(%rbp), %ecx
	.loc	1 59 13                 # gemm_taffoin.c:59:13
	movslq	%ecx, %rsi
	.loc	1 59 23                 # gemm_taffoin.c:59:23
	movl	%eax, -2076(%rbp,%rsi,4)
.Ltmp21:
# %bb.17:                               # %for.inc31
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 58 47 is_stmt 1       # gemm_taffoin.c:58:47
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	.loc	1 58 26 is_stmt 0       # gemm_taffoin.c:58:26
	jmp	.LBB0_15
.Ltmp22:
.LBB0_18:                               # %for.end33
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	1 61 5 is_stmt 1        # gemm_taffoin.c:61:5
	jmp	.LBB0_19
.Ltmp23:
.LBB0_19:                               # %for.inc34
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	1 57 43                 # gemm_taffoin.c:57:43
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	.loc	1 57 22 is_stmt 0       # gemm_taffoin.c:57:22
	jmp	.LBB0_12
.Ltmp24:
.LBB0_20:                               # %for.end36
	.loc	1 61 5 is_stmt 1        # gemm_taffoin.c:61:5
	jmp	.LBB0_21
.Ltmp25:
.LBB0_21:                               # %VITIS_LOOP_62_5
	.loc	1 62 29                 # gemm_taffoin.c:62:29
	movl	$0, -20(%rbp)
.LBB0_22:                               # %for.cond37
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_25 Depth 2
.Ltmp26:
	.loc	1 62 34 is_stmt 0       # gemm_taffoin.c:62:34
	movl	-20(%rbp), %eax
	.loc	1 62 36                 # gemm_taffoin.c:62:36
	cmpl	-8(%rbp), %eax
.Ltmp27:
	.loc	1 62 22                 # gemm_taffoin.c:62:22
	jge	.LBB0_30
# %bb.23:                               # %for.body39
                                        #   in Loop: Header=BB0_22 Depth=1
.Ltmp28:
	.loc	1 62 46                 # gemm_taffoin.c:62:46
	jmp	.LBB0_24
.LBB0_24:                               # %VITIS_LOOP_63_6
                                        #   in Loop: Header=BB0_22 Depth=1
.Ltmp29:
	.loc	1 63 33 is_stmt 1       # gemm_taffoin.c:63:33
	movl	$0, -24(%rbp)
.LBB0_25:                               # %for.cond40
                                        #   Parent Loop BB0_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp30:
	.loc	1 63 38 is_stmt 0       # gemm_taffoin.c:63:38
	movl	-24(%rbp), %eax
	.loc	1 63 40                 # gemm_taffoin.c:63:40
	cmpl	-12(%rbp), %eax
.Ltmp31:
	.loc	1 63 26                 # gemm_taffoin.c:63:26
	jge	.LBB0_28
# %bb.26:                               # %for.body42
                                        #   in Loop: Header=BB0_25 Depth=2
	.loc	1 0 26                  # gemm_taffoin.c:0:26
	movss	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI0_2(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
.Ltmp32:
	.loc	1 64 38 is_stmt 1       # gemm_taffoin.c:64:38
	movl	-20(%rbp), %eax
	.loc	1 64 41 is_stmt 0       # gemm_taffoin.c:64:41
	movl	-24(%rbp), %ecx
	.loc	1 64 42                 # gemm_taffoin.c:64:42
	addl	$2, %ecx
	.loc	1 64 39                 # gemm_taffoin.c:64:39
	imull	%ecx, %eax
	.loc	1 64 46                 # gemm_taffoin.c:64:46
	cltd
	idivl	-16(%rbp)
	.loc	1 64 37                 # gemm_taffoin.c:64:37
	cvtsi2ssl	%edx, %xmm2
	.loc	1 64 35                 # gemm_taffoin.c:64:35
	mulss	%xmm2, %xmm1
	.loc	1 64 54                 # gemm_taffoin.c:64:54
	movl	-16(%rbp), %ecx
	cvtsi2ssl	%ecx, %xmm2
	.loc	1 64 52                 # gemm_taffoin.c:64:52
	divss	%xmm2, %xmm1
	.loc	1 64 15                 # gemm_taffoin.c:64:15
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %ecx
	movl	-20(%rbp), %edx
	.loc	1 64 16                 # gemm_taffoin.c:64:16
	imull	-12(%rbp), %edx
	.loc	1 64 19                 # gemm_taffoin.c:64:19
	addl	-24(%rbp), %edx
	.loc	1 64 13                 # gemm_taffoin.c:64:13
	movslq	%edx, %rsi
	.loc	1 64 23                 # gemm_taffoin.c:64:23
	movl	%ecx, -3100(%rbp,%rsi,4)
.Ltmp33:
# %bb.27:                               # %for.inc54
                                        #   in Loop: Header=BB0_25 Depth=2
	.loc	1 63 47 is_stmt 1       # gemm_taffoin.c:63:47
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	.loc	1 63 26 is_stmt 0       # gemm_taffoin.c:63:26
	jmp	.LBB0_25
.Ltmp34:
.LBB0_28:                               # %for.end56
                                        #   in Loop: Header=BB0_22 Depth=1
	.loc	1 66 5 is_stmt 1        # gemm_taffoin.c:66:5
	jmp	.LBB0_29
.Ltmp35:
.LBB0_29:                               # %for.inc57
                                        #   in Loop: Header=BB0_22 Depth=1
	.loc	1 62 43                 # gemm_taffoin.c:62:43
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	.loc	1 62 22 is_stmt 0       # gemm_taffoin.c:62:22
	jmp	.LBB0_22
.Ltmp36:
.LBB0_30:                               # %for.end59
	.loc	1 0 22                  # gemm_taffoin.c:0:22
	movss	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	.loc	1 69 49 is_stmt 1       # gemm_taffoin.c:69:49
	movl	$1288490240, -3104(%rbp) # imm = 0x4CCCCD00
	.loc	1 70 49                 # gemm_taffoin.c:70:49
	movl	$1610612736, -3108(%rbp) # imm = 0x60000000
	.loc	1 71 65                 # gemm_taffoin.c:71:65
	mulss	-4(%rbp), %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, -3112(%rbp)
	.loc	1 72 65                 # gemm_taffoin.c:72:65
	movl	$0, -3116(%rbp)
	.loc	1 73 65                 # gemm_taffoin.c:73:65
	movl	$0, -3120(%rbp)
# %bb.31:                               # %VITIS_LOOP_76_7
.Ltmp37:
	.loc	1 76 30                 # gemm_taffoin.c:76:30
	movl	$0, -3128(%rbp)
.LBB0_32:                               # %for.cond66
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_35 Depth 2
                                        #       Child Loop BB0_38 Depth 3
.Ltmp38:
	.loc	1 76 38 is_stmt 0       # gemm_taffoin.c:76:38
	cmpl	$16, -3128(%rbp)
.Ltmp39:
	.loc	1 76 22                 # gemm_taffoin.c:76:22
	jge	.LBB0_45
# %bb.33:                               # %for.body68
                                        #   in Loop: Header=BB0_32 Depth=1
.Ltmp40:
	.loc	1 76 49                 # gemm_taffoin.c:76:49
	jmp	.LBB0_34
.LBB0_34:                               # %VITIS_LOOP_78_8
                                        #   in Loop: Header=BB0_32 Depth=1
.Ltmp41:
	.loc	1 78 27 is_stmt 1       # gemm_taffoin.c:78:27
	movl	$0, -3132(%rbp)
.LBB0_35:                               # %for.cond69
                                        #   Parent Loop BB0_32 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_38 Depth 3
.Ltmp42:
	.loc	1 78 35 is_stmt 0       # gemm_taffoin.c:78:35
	cmpl	$16, -3132(%rbp)
.Ltmp43:
	.loc	1 78 19                 # gemm_taffoin.c:78:19
	jge	.LBB0_43
# %bb.36:                               # %for.body71
                                        #   in Loop: Header=BB0_35 Depth=2
.Ltmp44:
	.loc	1 81 6 is_stmt 1        # gemm_taffoin.c:81:6
	movl	$0, -3116(%rbp)
# %bb.37:                               # %VITIS_LOOP_82_9
                                        #   in Loop: Header=BB0_35 Depth=2
.Ltmp45:
	.loc	1 82 37                 # gemm_taffoin.c:82:37
	movl	$0, -28(%rbp)
.LBB0_38:                               # %for.cond72
                                        #   Parent Loop BB0_32 Depth=1
                                        #     Parent Loop BB0_35 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
.Ltmp46:
	.loc	1 82 44 is_stmt 0       # gemm_taffoin.c:82:44
	cmpl	$16, -28(%rbp)
.Ltmp47:
	.loc	1 82 30                 # gemm_taffoin.c:82:30
	jge	.LBB0_41
# %bb.39:                               # %for.body74
                                        #   in Loop: Header=BB0_38 Depth=3
.Ltmp48:
	.loc	1 84 8 is_stmt 1        # gemm_taffoin.c:84:8
	movl	-3128(%rbp), %eax
	.loc	1 84 10 is_stmt 0       # gemm_taffoin.c:84:10
	shll	$4, %eax
	.loc	1 84 14                 # gemm_taffoin.c:84:14
	addl	-28(%rbp), %eax
	.loc	1 84 6                  # gemm_taffoin.c:84:6
	movslq	%eax, %rcx
	movl	-1052(%rbp,%rcx,4), %eax
	.loc	1 84 22                 # gemm_taffoin.c:84:22
	movl	-28(%rbp), %edx
	.loc	1 84 23                 # gemm_taffoin.c:84:23
	shll	$4, %edx
	.loc	1 84 27                 # gemm_taffoin.c:84:27
	addl	-3132(%rbp), %edx
	.loc	1 84 20                 # gemm_taffoin.c:84:20
	movslq	%edx, %rcx
	movl	-2076(%rbp,%rcx,4), %edx
	.loc	1 84 34                 # gemm_taffoin.c:84:34
	movl	%eax, %eax
	movl	%eax, %ecx
	movl	%edx, %eax
	movl	%eax, %esi
	imulq	%rsi, %rcx
	shrq	$32, %rcx
	.loc	1 84 18                 # gemm_taffoin.c:84:18
	movl	%ecx, %eax
	.loc	1 84 34                 # gemm_taffoin.c:84:34
	movl	-3104(%rbp), %edx
	.loc	1 84 4                  # gemm_taffoin.c:84:4
	movl	%eax, %eax
	movl	%eax, %ecx
	movl	%edx, %eax
	movl	%eax, %esi
	imulq	%rsi, %rcx
	shrq	$30, %rcx
	.loc	1 84 32                 # gemm_taffoin.c:84:32
	movl	%ecx, %eax
	.loc	1 84 4                  # gemm_taffoin.c:84:4
	shrl	$4, %eax
	movl	%eax, -3124(%rbp)
	.loc	1 85 23 is_stmt 1       # gemm_taffoin.c:85:23
	movl	-3116(%rbp), %eax
	.loc	1 85 29 is_stmt 0       # gemm_taffoin.c:85:29
	sarl	$1, %eax
	movl	-3124(%rbp), %edx
	.loc	1 85 27                 # gemm_taffoin.c:85:27
	sarl	$1, %edx
	addl	%edx, %eax
	.loc	1 85 21                 # gemm_taffoin.c:85:21
	shll	$1, %eax
	movl	%eax, -3116(%rbp)
.Ltmp49:
# %bb.40:                               # %for.inc86
                                        #   in Loop: Header=BB0_38 Depth=3
	.loc	1 82 51 is_stmt 1       # gemm_taffoin.c:82:51
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	.loc	1 82 30 is_stmt 0       # gemm_taffoin.c:82:30
	jmp	.LBB0_38
.Ltmp50:
.LBB0_41:                               # %for.end88
                                        #   in Loop: Header=BB0_35 Depth=2
	.loc	1 87 35 is_stmt 1       # gemm_taffoin.c:87:35
	movl	-3128(%rbp), %eax
	.loc	1 87 37 is_stmt 0       # gemm_taffoin.c:87:37
	shll	$4, %eax
	.loc	1 87 41                 # gemm_taffoin.c:87:41
	addl	-3132(%rbp), %eax
	.loc	1 87 33                 # gemm_taffoin.c:87:33
	movslq	%eax, %rcx
	movl	-3100(%rbp,%rcx,4), %eax
	.loc	1 87 48                 # gemm_taffoin.c:87:48
	movl	-3108(%rbp), %edx
	.loc	1 87 20                 # gemm_taffoin.c:87:20
	movslq	%eax, %rcx
	movl	%edx, %eax
	movl	%eax, %esi
	imulq	%rsi, %rcx
	shrq	$25, %rcx
	.loc	1 87 46                 # gemm_taffoin.c:87:46
	movl	%ecx, %eax
	.loc	1 87 20                 # gemm_taffoin.c:87:20
	shrl	$5, %eax
	movl	-3128(%rbp), %edx
	.loc	1 87 22                 # gemm_taffoin.c:87:22
	shll	$4, %edx
	.loc	1 87 26                 # gemm_taffoin.c:87:26
	addl	-3132(%rbp), %edx
	.loc	1 87 18                 # gemm_taffoin.c:87:18
	movslq	%edx, %rcx
	.loc	1 87 31                 # gemm_taffoin.c:87:31
	movl	%eax, -3100(%rbp,%rcx,4)
	.loc	1 88 35 is_stmt 1       # gemm_taffoin.c:88:35
	movl	-3128(%rbp), %eax
	.loc	1 88 37 is_stmt 0       # gemm_taffoin.c:88:37
	shll	$4, %eax
	.loc	1 88 41                 # gemm_taffoin.c:88:41
	addl	-3132(%rbp), %eax
	.loc	1 88 33                 # gemm_taffoin.c:88:33
	movslq	%eax, %rcx
	movl	-3100(%rbp,%rcx,4), %eax
	.loc	1 88 46                 # gemm_taffoin.c:88:46
	addl	-3116(%rbp), %eax
	.loc	1 88 20                 # gemm_taffoin.c:88:20
	movl	-3128(%rbp), %edx
	.loc	1 88 22                 # gemm_taffoin.c:88:22
	shll	$4, %edx
	.loc	1 88 26                 # gemm_taffoin.c:88:26
	addl	-3132(%rbp), %edx
	.loc	1 88 18                 # gemm_taffoin.c:88:18
	movslq	%edx, %rcx
	.loc	1 88 31                 # gemm_taffoin.c:88:31
	movl	%eax, -3100(%rbp,%rcx,4)
.Ltmp51:
# %bb.42:                               # %for.inc107
                                        #   in Loop: Header=BB0_35 Depth=2
	.loc	1 78 43 is_stmt 1       # gemm_taffoin.c:78:43
	movl	-3132(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -3132(%rbp)
	.loc	1 78 19 is_stmt 0       # gemm_taffoin.c:78:19
	jmp	.LBB0_35
.Ltmp52:
.LBB0_43:                               # %for.end109
                                        #   in Loop: Header=BB0_32 Depth=1
	.loc	1 91 5 is_stmt 1        # gemm_taffoin.c:91:5
	jmp	.LBB0_44
.Ltmp53:
.LBB0_44:                               # %for.inc110
                                        #   in Loop: Header=BB0_32 Depth=1
	.loc	1 76 46                 # gemm_taffoin.c:76:46
	movl	-3128(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -3128(%rbp)
	.loc	1 76 22 is_stmt 0       # gemm_taffoin.c:76:22
	jmp	.LBB0_32
.Ltmp54:
.LBB0_45:                               # %for.end112
	.loc	1 91 5 is_stmt 1        # gemm_taffoin.c:91:5
	jmp	.LBB0_46
.Ltmp55:
.LBB0_46:                               # %VITIS_LOOP_92_10
	.loc	1 92 31                 # gemm_taffoin.c:92:31
	movl	$0, -3128(%rbp)
.LBB0_47:                               # %for.cond113
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_50 Depth 2
.Ltmp56:
	.loc	1 92 39 is_stmt 0       # gemm_taffoin.c:92:39
	cmpl	$16, -3128(%rbp)
.Ltmp57:
	.loc	1 92 23                 # gemm_taffoin.c:92:23
	jge	.LBB0_55
# %bb.48:                               # %for.body115
                                        #   in Loop: Header=BB0_47 Depth=1
.Ltmp58:
	.loc	1 93 5 is_stmt 1        # gemm_taffoin.c:93:5
	jmp	.LBB0_49
.LBB0_49:                               # %VITIS_LOOP_95_11
                                        #   in Loop: Header=BB0_47 Depth=1
.Ltmp59:
	.loc	1 95 28                 # gemm_taffoin.c:95:28
	movl	$0, -3132(%rbp)
.LBB0_50:                               # %for.cond116
                                        #   Parent Loop BB0_47 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp60:
	.loc	1 95 36 is_stmt 0       # gemm_taffoin.c:95:36
	cmpl	$16, -3132(%rbp)
.Ltmp61:
	.loc	1 95 20                 # gemm_taffoin.c:95:20
	jge	.LBB0_53
# %bb.51:                               # %for.body118
                                        #   in Loop: Header=BB0_50 Depth=2
.Ltmp62:
	.loc	1 96 19 is_stmt 1       # gemm_taffoin.c:96:19
	movl	-3128(%rbp), %eax
	.loc	1 96 21 is_stmt 0       # gemm_taffoin.c:96:21
	shll	$4, %eax
	.loc	1 96 25                 # gemm_taffoin.c:96:25
	addl	-3132(%rbp), %eax
	.loc	1 96 17                 # gemm_taffoin.c:96:17
	movslq	%eax, %rcx
	movl	-3100(%rbp,%rcx,4), %eax
	.loc	1 96 14                 # gemm_taffoin.c:96:14
	sarl	$1, %eax
	movl	-3120(%rbp), %edx
	sarl	$2, %edx
	addl	%eax, %edx
	shll	$2, %edx
	movl	%edx, -3120(%rbp)
.Ltmp63:
# %bb.52:                               # %for.inc124
                                        #   in Loop: Header=BB0_50 Depth=2
	.loc	1 95 44 is_stmt 1       # gemm_taffoin.c:95:44
	movl	-3132(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -3132(%rbp)
	.loc	1 95 20 is_stmt 0       # gemm_taffoin.c:95:20
	jmp	.LBB0_50
.Ltmp64:
.LBB0_53:                               # %for.end126
                                        #   in Loop: Header=BB0_47 Depth=1
	.loc	1 98 5 is_stmt 1        # gemm_taffoin.c:98:5
	jmp	.LBB0_54
.Ltmp65:
.LBB0_54:                               # %for.inc127
                                        #   in Loop: Header=BB0_47 Depth=1
	.loc	1 92 47                 # gemm_taffoin.c:92:47
	movl	-3128(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -3128(%rbp)
	.loc	1 92 23 is_stmt 0       # gemm_taffoin.c:92:23
	jmp	.LBB0_47
.Ltmp66:
.LBB0_55:                               # %for.end129
	.loc	1 0 23                  # gemm_taffoin.c:0:23
	movss	.LCPI0_1(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	.loc	1 100 13 is_stmt 1      # gemm_taffoin.c:100:13
	movl	-3120(%rbp), %eax
	.loc	1 100 19 is_stmt 0      # gemm_taffoin.c:100:19
	movl	-3112(%rbp), %ecx
	.loc	1 101 1 is_stmt 1       # gemm_taffoin.c:101:1
	movslq	%eax, %rdx
	movslq	%ecx, %rsi
	imulq	%rsi, %rdx
	sarq	$30, %rdx
	.loc	1 100 17                # gemm_taffoin.c:100:17
	movl	%edx, %eax
	.loc	1 101 1                 # gemm_taffoin.c:101:1
	cvtsi2ssl	%eax, %xmm1
	divss	%xmm0, %xmm1
	.loc	1 100 5                 # gemm_taffoin.c:100:5
	movaps	%xmm1, %xmm0
	addq	$3004, %rsp             # imm = 0xBBC
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp67:
.Lfunc_end0:
	.size	mm, .Lfunc_end0-mm
	.cfi_endproc
                                        # -- End function
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 7.0.0 "  # string offset=0
.Linfo_string1:
	.asciz	"/home/bruno/Desktop/benchmarks/gemm_large/proj_gemm/solution1/.autopilot/db/gemm_taffoin.pp.0.c" # string offset=21
.Linfo_string2:
	.asciz	"/home/bruno/Desktop/benchmarks/gemm_large" # string offset=117
.Linfo_string3:
	.asciz	"float"                 # string offset=159
.Linfo_string4:
	.asciz	"mm"                    # string offset=165
.Linfo_string5:
	.asciz	"gamma"                 # string offset=168
.Linfo_string6:
	.asciz	"ni"                    # string offset=174
.Linfo_string7:
	.asciz	"int"                   # string offset=177
.Linfo_string8:
	.asciz	"nj"                    # string offset=181
.Linfo_string9:
	.asciz	"nk"                    # string offset=184
.Linfo_string10:
	.asciz	"i"                     # string offset=187
.Linfo_string11:
	.asciz	"j"                     # string offset=189
.Linfo_string12:
	.asciz	"k"                     # string offset=191
.Linfo_string13:
	.asciz	"ii"                    # string offset=193
.Linfo_string14:
	.asciz	"jj"                    # string offset=196
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
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
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
	.byte	0                       # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	4                       # DWARF version number
	.long	.debug_abbrev           # Offset Into Abbrev. Section
	.byte	8                       # Address Size (in bytes)
	.byte	1                       # Abbrev [1] 0xb:0xc8 DW_TAG_compile_unit
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
	.byte	3                       # Abbrev [3] 0x31:0x9a DW_TAG_subprogram
	.quad	.Lfunc_begin0           # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0 # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string4          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	41                      # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	42                      # DW_AT_type
                                        # DW_AT_external
	.byte	4                       # Abbrev [4] 0x4a:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	124
	.long	.Linfo_string5          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	41                      # DW_AT_decl_line
	.long	42                      # DW_AT_type
	.byte	5                       # Abbrev [5] 0x58:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string6          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	44                      # DW_AT_decl_line
	.long	203                     # DW_AT_type
	.byte	5                       # Abbrev [5] 0x66:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	116
	.long	.Linfo_string8          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	45                      # DW_AT_decl_line
	.long	203                     # DW_AT_type
	.byte	5                       # Abbrev [5] 0x74:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string9          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	46                      # DW_AT_decl_line
	.long	203                     # DW_AT_type
	.byte	5                       # Abbrev [5] 0x82:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	108
	.long	.Linfo_string10         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	47                      # DW_AT_decl_line
	.long	203                     # DW_AT_type
	.byte	5                       # Abbrev [5] 0x90:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string11         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	47                      # DW_AT_decl_line
	.long	203                     # DW_AT_type
	.byte	5                       # Abbrev [5] 0x9e:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	100
	.long	.Linfo_string12         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	47                      # DW_AT_decl_line
	.long	203                     # DW_AT_type
	.byte	5                       # Abbrev [5] 0xac:0xf DW_TAG_variable
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\310g"
	.long	.Linfo_string13         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	75                      # DW_AT_decl_line
	.long	203                     # DW_AT_type
	.byte	5                       # Abbrev [5] 0xbb:0xf DW_TAG_variable
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\304g"
	.long	.Linfo_string14         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	75                      # DW_AT_decl_line
	.long	203                     # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	2                       # Abbrev [2] 0xcb:0x7 DW_TAG_base_type
	.long	.Linfo_string7          # DW_AT_name
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
	.long	211                     # Compilation Unit Length
	.long	49                      # DIE offset
	.asciz	"mm"                    # External Name
	.long	0                       # End Mark
.LpubNames_end0:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end0-.LpubTypes_begin0 # Length of Public Types Info
.LpubTypes_begin0:
	.short	2                       # DWARF Version
	.long	.Lcu_begin0             # Offset of Compilation Unit Info
	.long	211                     # Compilation Unit Length
	.long	42                      # DIE offset
	.asciz	"float"                 # External Name
	.long	203                     # DIE offset
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
