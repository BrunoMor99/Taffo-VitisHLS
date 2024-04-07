	.text
	.file	"llvm-link"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function mm
.LCPI0_0:
	.long	1283457024              # float 67108864
.LCPI0_1:
	.long	1266679808              # float 16777216
	.text
	.globl	mm
	.p2align	4, 0x90
	.type	mm,@function
mm:                                     # @mm
.Lfunc_begin0:
	.file	1 "/home/bruno/Desktop/benchmarks/gemm" "gemm_taffoin.c"
	.loc	1 43 0                  # gemm_taffoin.c:43:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16316, %rsp            # imm = 0x3FBC
	movss	%xmm0, -4(%rbp)
.Ltmp0:
	.loc	1 44 9 prologue_end     # gemm_taffoin.c:44:9
	movl	$32, -8(%rbp)
	.loc	1 45 9                  # gemm_taffoin.c:45:9
	movl	$32, -12(%rbp)
	.loc	1 46 9                  # gemm_taffoin.c:46:9
	movl	$32, -16(%rbp)
	.loc	1 47 9                  # gemm_taffoin.c:47:9
	movl	$32, -20(%rbp)
# %bb.1:                                # %VITIS_LOOP_54_1
.Ltmp1:
	.loc	1 54 29                 # gemm_taffoin.c:54:29
	movl	$0, -12312(%rbp)
.LBB0_2:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
.Ltmp2:
	.loc	1 54 34 is_stmt 0       # gemm_taffoin.c:54:34
	movl	-12312(%rbp), %eax
	.loc	1 54 36                 # gemm_taffoin.c:54:36
	cmpl	-8(%rbp), %eax
.Ltmp3:
	.loc	1 54 22                 # gemm_taffoin.c:54:22
	jge	.LBB0_10
# %bb.3:                                # %for.body
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_4
.LBB0_4:                                # %VITIS_LOOP_55_2
                                        #   in Loop: Header=BB0_2 Depth=1
.Ltmp4:
	.loc	1 55 33 is_stmt 1       # gemm_taffoin.c:55:33
	movl	$0, -12316(%rbp)
.LBB0_5:                                # %for.cond6
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp5:
	.loc	1 55 38 is_stmt 0       # gemm_taffoin.c:55:38
	movl	-12316(%rbp), %eax
	.loc	1 55 40                 # gemm_taffoin.c:55:40
	cmpl	-16(%rbp), %eax
.Ltmp6:
	.loc	1 55 26                 # gemm_taffoin.c:55:26
	jge	.LBB0_8
# %bb.6:                                # %for.body8
                                        #   in Loop: Header=BB0_5 Depth=2
.Ltmp7:
	.loc	1 56 39 is_stmt 1       # gemm_taffoin.c:56:39
	movl	-12312(%rbp), %eax
	.loc	1 56 40 is_stmt 0       # gemm_taffoin.c:56:40
	imull	-12316(%rbp), %eax
	.loc	1 56 42                 # gemm_taffoin.c:56:42
	addl	$1, %eax
	.loc	1 56 46                 # gemm_taffoin.c:56:46
	cltd
	idivl	-8(%rbp)
	.loc	1 56 37                 # gemm_taffoin.c:56:37
	shll	$24, %edx
	.loc	1 56 54                 # gemm_taffoin.c:56:54
	movl	%edx, %edx
	movl	%edx, %ecx
	imulq	$83886080, %rcx, %rcx   # imm = 0x5000000
	shrq	$24, %rcx
	.loc	1 56 35                 # gemm_taffoin.c:56:35
	movl	%ecx, %edx
	.loc	1 56 54                 # gemm_taffoin.c:56:54
	movl	%edx, %edx
	movl	%edx, %ecx
	shlq	$29, %rcx
	movl	-8(%rbp), %edx
	.loc	1 56 52                 # gemm_taffoin.c:56:52
	shll	$29, %edx
	.loc	1 56 15                 # gemm_taffoin.c:56:15
	movl	%edx, %edx
	movl	%edx, %esi
	movq	%rcx, %rax
	xorl	%edx, %edx
                                        # kill: def $rdx killed $edx
	divq	%rsi
	shlq	$5, %rax
	.loc	1 56 52                 # gemm_taffoin.c:56:52
	movl	%eax, %edi
	.loc	1 56 15                 # gemm_taffoin.c:56:15
	movl	-12312(%rbp), %r8d
	.loc	1 56 16                 # gemm_taffoin.c:56:16
	imull	-16(%rbp), %r8d
	.loc	1 56 19                 # gemm_taffoin.c:56:19
	addl	-12316(%rbp), %r8d
	.loc	1 56 13                 # gemm_taffoin.c:56:13
	movslq	%r8d, %rax
	.loc	1 56 23                 # gemm_taffoin.c:56:23
	movl	%edi, -4116(%rbp,%rax,4)
# %bb.7:                                # %for.inc
                                        #   in Loop: Header=BB0_5 Depth=2
	.loc	1 55 47 is_stmt 1       # gemm_taffoin.c:55:47
	movl	-12316(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12316(%rbp)
	.loc	1 55 26 is_stmt 0       # gemm_taffoin.c:55:26
	jmp	.LBB0_5
.Ltmp8:
.LBB0_8:                                # %for.end
                                        #   in Loop: Header=BB0_2 Depth=1
	.loc	1 56 54 is_stmt 1       # gemm_taffoin.c:56:54
	jmp	.LBB0_9
.Ltmp9:
.LBB0_9:                                # %for.inc13
                                        #   in Loop: Header=BB0_2 Depth=1
	.loc	1 54 43                 # gemm_taffoin.c:54:43
	movl	-12312(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12312(%rbp)
	.loc	1 54 22 is_stmt 0       # gemm_taffoin.c:54:22
	jmp	.LBB0_2
.Ltmp10:
.LBB0_10:                               # %for.end15
	.loc	1 56 54 is_stmt 1       # gemm_taffoin.c:56:54
	jmp	.LBB0_11
.Ltmp11:
.LBB0_11:                               # %VITIS_LOOP_57_3
	.loc	1 57 29                 # gemm_taffoin.c:57:29
	movl	$0, -12312(%rbp)
.LBB0_12:                               # %for.cond16
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
.Ltmp12:
	.loc	1 57 34 is_stmt 0       # gemm_taffoin.c:57:34
	movl	-12312(%rbp), %eax
	.loc	1 57 36                 # gemm_taffoin.c:57:36
	cmpl	-16(%rbp), %eax
.Ltmp13:
	.loc	1 57 22                 # gemm_taffoin.c:57:22
	jge	.LBB0_20
# %bb.13:                               # %for.body18
                                        #   in Loop: Header=BB0_12 Depth=1
	jmp	.LBB0_14
.LBB0_14:                               # %VITIS_LOOP_58_4
                                        #   in Loop: Header=BB0_12 Depth=1
.Ltmp14:
	.loc	1 58 33 is_stmt 1       # gemm_taffoin.c:58:33
	movl	$0, -12316(%rbp)
.LBB0_15:                               # %for.cond19
                                        #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp15:
	.loc	1 58 38 is_stmt 0       # gemm_taffoin.c:58:38
	movl	-12316(%rbp), %eax
	.loc	1 58 40                 # gemm_taffoin.c:58:40
	cmpl	-12(%rbp), %eax
.Ltmp16:
	.loc	1 58 26                 # gemm_taffoin.c:58:26
	jge	.LBB0_18
# %bb.16:                               # %for.body21
                                        #   in Loop: Header=BB0_15 Depth=2
.Ltmp17:
	.loc	1 59 38 is_stmt 1       # gemm_taffoin.c:59:38
	movl	-12312(%rbp), %eax
	.loc	1 59 41 is_stmt 0       # gemm_taffoin.c:59:41
	movl	-12316(%rbp), %ecx
	.loc	1 59 42                 # gemm_taffoin.c:59:42
	addl	$1, %ecx
	.loc	1 59 39                 # gemm_taffoin.c:59:39
	imull	%ecx, %eax
	.loc	1 59 46                 # gemm_taffoin.c:59:46
	cltd
	idivl	-12(%rbp)
	.loc	1 59 37                 # gemm_taffoin.c:59:37
	shll	$25, %edx
	.loc	1 59 54                 # gemm_taffoin.c:59:54
	movl	%edx, %ecx
	movl	%ecx, %esi
	imulq	$100663296, %rsi, %rsi  # imm = 0x6000000
	shrq	$25, %rsi
	.loc	1 59 35                 # gemm_taffoin.c:59:35
	movl	%esi, %ecx
	.loc	1 59 54                 # gemm_taffoin.c:59:54
	movl	%ecx, %ecx
	movl	%ecx, %esi
	shlq	$30, %rsi
	movl	-12(%rbp), %ecx
	.loc	1 59 52                 # gemm_taffoin.c:59:52
	shll	$30, %ecx
	.loc	1 59 15                 # gemm_taffoin.c:59:15
	movl	%ecx, %ecx
	movl	%ecx, %edi
	movq	%rsi, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	divq	%rdi
	shlq	$5, %rax
	.loc	1 59 52                 # gemm_taffoin.c:59:52
	movl	%eax, %ecx
	.loc	1 59 15                 # gemm_taffoin.c:59:15
	movl	-12312(%rbp), %r8d
	.loc	1 59 16                 # gemm_taffoin.c:59:16
	imull	-12(%rbp), %r8d
	.loc	1 59 19                 # gemm_taffoin.c:59:19
	addl	-12316(%rbp), %r8d
	.loc	1 59 13                 # gemm_taffoin.c:59:13
	movslq	%r8d, %rax
	.loc	1 59 23                 # gemm_taffoin.c:59:23
	movl	%ecx, -8212(%rbp,%rax,4)
# %bb.17:                               # %for.inc33
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 58 47 is_stmt 1       # gemm_taffoin.c:58:47
	movl	-12316(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12316(%rbp)
	.loc	1 58 26 is_stmt 0       # gemm_taffoin.c:58:26
	jmp	.LBB0_15
.Ltmp18:
.LBB0_18:                               # %for.end35
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	1 59 54 is_stmt 1       # gemm_taffoin.c:59:54
	jmp	.LBB0_19
.Ltmp19:
.LBB0_19:                               # %for.inc36
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	1 57 43                 # gemm_taffoin.c:57:43
	movl	-12312(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12312(%rbp)
	.loc	1 57 22 is_stmt 0       # gemm_taffoin.c:57:22
	jmp	.LBB0_12
.Ltmp20:
.LBB0_20:                               # %for.end38
	.loc	1 59 54 is_stmt 1       # gemm_taffoin.c:59:54
	jmp	.LBB0_21
.Ltmp21:
.LBB0_21:                               # %VITIS_LOOP_60_5
	.loc	1 60 29                 # gemm_taffoin.c:60:29
	movl	$0, -12312(%rbp)
.LBB0_22:                               # %for.cond39
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_25 Depth 2
.Ltmp22:
	.loc	1 60 34 is_stmt 0       # gemm_taffoin.c:60:34
	movl	-12312(%rbp), %eax
	.loc	1 60 36                 # gemm_taffoin.c:60:36
	cmpl	-8(%rbp), %eax
.Ltmp23:
	.loc	1 60 22                 # gemm_taffoin.c:60:22
	jge	.LBB0_30
# %bb.23:                               # %for.body41
                                        #   in Loop: Header=BB0_22 Depth=1
	jmp	.LBB0_24
.LBB0_24:                               # %VITIS_LOOP_61_6
                                        #   in Loop: Header=BB0_22 Depth=1
.Ltmp24:
	.loc	1 61 33 is_stmt 1       # gemm_taffoin.c:61:33
	movl	$0, -12316(%rbp)
.LBB0_25:                               # %for.cond42
                                        #   Parent Loop BB0_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp25:
	.loc	1 61 38 is_stmt 0       # gemm_taffoin.c:61:38
	movl	-12316(%rbp), %eax
	.loc	1 61 40                 # gemm_taffoin.c:61:40
	cmpl	-20(%rbp), %eax
.Ltmp26:
	.loc	1 61 26                 # gemm_taffoin.c:61:26
	jge	.LBB0_28
# %bb.26:                               # %for.body44
                                        #   in Loop: Header=BB0_25 Depth=2
.Ltmp27:
	.loc	1 62 38 is_stmt 1       # gemm_taffoin.c:62:38
	movl	-12312(%rbp), %eax
	.loc	1 62 41 is_stmt 0       # gemm_taffoin.c:62:41
	movl	-12316(%rbp), %ecx
	.loc	1 62 42                 # gemm_taffoin.c:62:42
	addl	$2, %ecx
	.loc	1 62 39                 # gemm_taffoin.c:62:39
	imull	%ecx, %eax
	.loc	1 62 46                 # gemm_taffoin.c:62:46
	cltd
	idivl	-16(%rbp)
	.loc	1 62 37                 # gemm_taffoin.c:62:37
	shll	$24, %edx
	.loc	1 62 54                 # gemm_taffoin.c:62:54
	movl	%edx, %ecx
	movl	%ecx, %esi
	imulq	$83886080, %rsi, %rsi   # imm = 0x5000000
	shrq	$24, %rsi
	.loc	1 62 35                 # gemm_taffoin.c:62:35
	movl	%esi, %ecx
	.loc	1 62 54                 # gemm_taffoin.c:62:54
	movl	%ecx, %ecx
	movl	%ecx, %esi
	shlq	$29, %rsi
	movl	-16(%rbp), %ecx
	.loc	1 62 52                 # gemm_taffoin.c:62:52
	shll	$29, %ecx
	.loc	1 62 15                 # gemm_taffoin.c:62:15
	movl	%ecx, %ecx
	movl	%ecx, %edi
	movq	%rsi, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	divq	%rdi
	shlq	$5, %rax
	.loc	1 62 52                 # gemm_taffoin.c:62:52
	movl	%eax, %ecx
	.loc	1 62 15                 # gemm_taffoin.c:62:15
	shrl	$3, %ecx
	movl	-12312(%rbp), %r8d
	.loc	1 62 16                 # gemm_taffoin.c:62:16
	imull	-20(%rbp), %r8d
	.loc	1 62 19                 # gemm_taffoin.c:62:19
	addl	-12316(%rbp), %r8d
	.loc	1 62 13                 # gemm_taffoin.c:62:13
	movslq	%r8d, %rax
	.loc	1 62 23                 # gemm_taffoin.c:62:23
	movl	%ecx, -12308(%rbp,%rax,4)
# %bb.27:                               # %for.inc56
                                        #   in Loop: Header=BB0_25 Depth=2
	.loc	1 61 47 is_stmt 1       # gemm_taffoin.c:61:47
	movl	-12316(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12316(%rbp)
	.loc	1 61 26 is_stmt 0       # gemm_taffoin.c:61:26
	jmp	.LBB0_25
.Ltmp28:
.LBB0_28:                               # %for.end58
                                        #   in Loop: Header=BB0_22 Depth=1
	.loc	1 62 54 is_stmt 1       # gemm_taffoin.c:62:54
	jmp	.LBB0_29
.Ltmp29:
.LBB0_29:                               # %for.inc59
                                        #   in Loop: Header=BB0_22 Depth=1
	.loc	1 60 43                 # gemm_taffoin.c:60:43
	movl	-12312(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12312(%rbp)
	.loc	1 60 22 is_stmt 0       # gemm_taffoin.c:60:22
	jmp	.LBB0_22
.Ltmp30:
.LBB0_30:                               # %for.end61
	.loc	1 0 22                  # gemm_taffoin.c:0:22
	movss	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	.loc	1 63 49 is_stmt 1       # gemm_taffoin.c:63:49
	movl	$1288490240, -12320(%rbp) # imm = 0x4CCCCD00
	.loc	1 64 49                 # gemm_taffoin.c:64:49
	movl	$1610612736, -12324(%rbp) # imm = 0x60000000
	.loc	1 65 63                 # gemm_taffoin.c:65:63
	mulss	-4(%rbp), %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, -12328(%rbp)
	.loc	1 67 65                 # gemm_taffoin.c:67:65
	movl	$0, -16428(%rbp)
# %bb.31:                               # %VITIS_LOOP_73_7
.Ltmp31:
	.loc	1 73 30                 # gemm_taffoin.c:73:30
	movl	$0, -16432(%rbp)
.LBB0_32:                               # %for.cond71
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_35 Depth 2
                                        #       Child Loop BB0_38 Depth 3
.Ltmp32:
	.loc	1 73 38 is_stmt 0       # gemm_taffoin.c:73:38
	cmpl	$32, -16432(%rbp)
.Ltmp33:
	.loc	1 73 22                 # gemm_taffoin.c:73:22
	jge	.LBB0_45
# %bb.33:                               # %for.body73
                                        #   in Loop: Header=BB0_32 Depth=1
.Ltmp34:
	.loc	1 74 5 is_stmt 1        # gemm_taffoin.c:74:5
	jmp	.LBB0_34
.LBB0_34:                               # %VITIS_LOOP_75_8
                                        #   in Loop: Header=BB0_32 Depth=1
.Ltmp35:
	.loc	1 75 34                 # gemm_taffoin.c:75:34
	movl	$0, -16436(%rbp)
.LBB0_35:                               # %for.cond74
                                        #   Parent Loop BB0_32 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_38 Depth 3
.Ltmp36:
	.loc	1 75 42 is_stmt 0       # gemm_taffoin.c:75:42
	cmpl	$32, -16436(%rbp)
.Ltmp37:
	.loc	1 75 26                 # gemm_taffoin.c:75:26
	jge	.LBB0_43
# %bb.36:                               # %for.body76
                                        #   in Loop: Header=BB0_35 Depth=2
.Ltmp38:
	.loc	1 78 6 is_stmt 1        # gemm_taffoin.c:78:6
	movl	-16432(%rbp), %eax
	.loc	1 78 8 is_stmt 0        # gemm_taffoin.c:78:8
	shll	$5, %eax
	.loc	1 78 12                 # gemm_taffoin.c:78:12
	addl	-16436(%rbp), %eax
	.loc	1 78 2                  # gemm_taffoin.c:78:2
	movslq	%eax, %rcx
	.loc	1 78 17                 # gemm_taffoin.c:78:17
	movl	$0, -16424(%rbp,%rcx,4)
# %bb.37:                               # %VITIS_LOOP_79_9
                                        #   in Loop: Header=BB0_35 Depth=2
.Ltmp39:
	.loc	1 79 37 is_stmt 1       # gemm_taffoin.c:79:37
	movl	$0, -16440(%rbp)
.LBB0_38:                               # %for.cond81
                                        #   Parent Loop BB0_32 Depth=1
                                        #     Parent Loop BB0_35 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
.Ltmp40:
	.loc	1 79 44 is_stmt 0       # gemm_taffoin.c:79:44
	cmpl	$32, -16440(%rbp)
.Ltmp41:
	.loc	1 79 30                 # gemm_taffoin.c:79:30
	jge	.LBB0_41
# %bb.39:                               # %for.body83
                                        #   in Loop: Header=BB0_38 Depth=3
.Ltmp42:
	.loc	1 80 23 is_stmt 1       # gemm_taffoin.c:80:23
	movl	-16432(%rbp), %eax
	.loc	1 80 25 is_stmt 0       # gemm_taffoin.c:80:25
	shll	$5, %eax
	.loc	1 80 29                 # gemm_taffoin.c:80:29
	addl	-16440(%rbp), %eax
	.loc	1 80 21                 # gemm_taffoin.c:80:21
	movslq	%eax, %rcx
	movl	-4116(%rbp,%rcx,4), %eax
	.loc	1 80 37                 # gemm_taffoin.c:80:37
	movl	-16440(%rbp), %edx
	.loc	1 80 38                 # gemm_taffoin.c:80:38
	shll	$5, %edx
	.loc	1 80 42                 # gemm_taffoin.c:80:42
	addl	-16436(%rbp), %edx
	.loc	1 80 35                 # gemm_taffoin.c:80:35
	movslq	%edx, %rcx
	movl	-8212(%rbp,%rcx,4), %edx
	.loc	1 80 49                 # gemm_taffoin.c:80:49
	movl	%eax, %eax
	movl	%eax, %ecx
	movl	%edx, %eax
	movl	%eax, %esi
	imulq	%rsi, %rcx
	shrq	$36, %rcx
	.loc	1 80 33                 # gemm_taffoin.c:80:33
	movl	%ecx, %eax
	.loc	1 80 49                 # gemm_taffoin.c:80:49
	movl	-12320(%rbp), %edx
	.loc	1 80 19                 # gemm_taffoin.c:80:19
	movl	%eax, %eax
	movl	%eax, %ecx
	movl	%edx, %eax
	movl	%eax, %esi
	imulq	%rsi, %rcx
	shrq	$30, %rcx
	.loc	1 80 47                 # gemm_taffoin.c:80:47
	movl	%ecx, %eax
	.loc	1 80 19                 # gemm_taffoin.c:80:19
	shll	$1, %eax
	movl	%eax, -16444(%rbp)
	.loc	1 81 38 is_stmt 1       # gemm_taffoin.c:81:38
	movl	-16432(%rbp), %eax
	.loc	1 81 40 is_stmt 0       # gemm_taffoin.c:81:40
	shll	$5, %eax
	.loc	1 81 44                 # gemm_taffoin.c:81:44
	addl	-16436(%rbp), %eax
	.loc	1 81 34                 # gemm_taffoin.c:81:34
	movslq	%eax, %rcx
	movl	-16424(%rbp,%rcx,4), %eax
	.loc	1 81 51                 # gemm_taffoin.c:81:51
	sarl	$4, %eax
	movl	-16444(%rbp), %edx
	.loc	1 81 49                 # gemm_taffoin.c:81:49
	sarl	$2, %edx
	addl	%edx, %eax
	.loc	1 81 21                 # gemm_taffoin.c:81:21
	shll	$4, %eax
	movl	-16432(%rbp), %edx
	.loc	1 81 23                 # gemm_taffoin.c:81:23
	shll	$5, %edx
	.loc	1 81 27                 # gemm_taffoin.c:81:27
	addl	-16436(%rbp), %edx
	.loc	1 81 17                 # gemm_taffoin.c:81:17
	movslq	%edx, %rcx
	.loc	1 81 32                 # gemm_taffoin.c:81:32
	movl	%eax, -16424(%rbp,%rcx,4)
.Ltmp43:
# %bb.40:                               # %for.inc103
                                        #   in Loop: Header=BB0_38 Depth=3
	.loc	1 79 51 is_stmt 1       # gemm_taffoin.c:79:51
	movl	-16440(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16440(%rbp)
	.loc	1 79 30 is_stmt 0       # gemm_taffoin.c:79:30
	jmp	.LBB0_38
.Ltmp44:
.LBB0_41:                               # %for.end105
                                        #   in Loop: Header=BB0_35 Depth=2
	.loc	1 83 35 is_stmt 1       # gemm_taffoin.c:83:35
	movl	-16432(%rbp), %eax
	.loc	1 83 37 is_stmt 0       # gemm_taffoin.c:83:37
	shll	$5, %eax
	.loc	1 83 41                 # gemm_taffoin.c:83:41
	addl	-16436(%rbp), %eax
	.loc	1 83 33                 # gemm_taffoin.c:83:33
	movslq	%eax, %rcx
	movl	-12308(%rbp,%rcx,4), %eax
	.loc	1 83 48                 # gemm_taffoin.c:83:48
	movl	-12324(%rbp), %edx
	.loc	1 83 20                 # gemm_taffoin.c:83:20
	movslq	%eax, %rcx
	movl	%edx, %eax
	movl	%eax, %esi
	imulq	%rsi, %rcx
	shrq	$28, %rcx
	.loc	1 83 46                 # gemm_taffoin.c:83:46
	movl	%ecx, %eax
	.loc	1 83 20                 # gemm_taffoin.c:83:20
	shrl	$2, %eax
	movl	-16432(%rbp), %edx
	.loc	1 83 22                 # gemm_taffoin.c:83:22
	shll	$5, %edx
	.loc	1 83 26                 # gemm_taffoin.c:83:26
	addl	-16436(%rbp), %edx
	.loc	1 83 18                 # gemm_taffoin.c:83:18
	movslq	%edx, %rcx
	.loc	1 83 31                 # gemm_taffoin.c:83:31
	movl	%eax, -12308(%rbp,%rcx,4)
	.loc	1 84 35 is_stmt 1       # gemm_taffoin.c:84:35
	movl	-16432(%rbp), %eax
	.loc	1 84 37 is_stmt 0       # gemm_taffoin.c:84:37
	shll	$5, %eax
	.loc	1 84 41                 # gemm_taffoin.c:84:41
	addl	-16436(%rbp), %eax
	.loc	1 84 33                 # gemm_taffoin.c:84:33
	movslq	%eax, %rcx
	movl	-12308(%rbp,%rcx,4), %eax
	.loc	1 84 52                 # gemm_taffoin.c:84:52
	shll	$2, %eax
	movl	-16432(%rbp), %edx
	.loc	1 84 54                 # gemm_taffoin.c:84:54
	shll	$5, %edx
	.loc	1 84 58                 # gemm_taffoin.c:84:58
	addl	-16436(%rbp), %edx
	.loc	1 84 48                 # gemm_taffoin.c:84:48
	movslq	%edx, %rcx
	movl	-16424(%rbp,%rcx,4), %edx
	.loc	1 84 46                 # gemm_taffoin.c:84:46
	shll	$2, %edx
	addl	%edx, %eax
	.loc	1 84 20                 # gemm_taffoin.c:84:20
	shrl	$2, %eax
	movl	-16432(%rbp), %edx
	.loc	1 84 22                 # gemm_taffoin.c:84:22
	shll	$5, %edx
	.loc	1 84 26                 # gemm_taffoin.c:84:26
	addl	-16436(%rbp), %edx
	.loc	1 84 18                 # gemm_taffoin.c:84:18
	movslq	%edx, %rcx
	.loc	1 84 31                 # gemm_taffoin.c:84:31
	movl	%eax, -12308(%rbp,%rcx,4)
	.loc	1 85 27 is_stmt 1       # gemm_taffoin.c:85:27
	movl	-16432(%rbp), %eax
	.loc	1 85 29 is_stmt 0       # gemm_taffoin.c:85:29
	shll	$5, %eax
	.loc	1 85 33                 # gemm_taffoin.c:85:33
	addl	-16436(%rbp), %eax
	.loc	1 85 25                 # gemm_taffoin.c:85:25
	movslq	%eax, %rcx
	movl	-12308(%rbp,%rcx,4), %eax
	.loc	1 85 22                 # gemm_taffoin.c:85:22
	sarl	$2, %eax
	addl	-16428(%rbp), %eax
	movl	%eax, -16428(%rbp)
.Ltmp45:
# %bb.42:                               # %for.inc133
                                        #   in Loop: Header=BB0_35 Depth=2
	.loc	1 75 50 is_stmt 1       # gemm_taffoin.c:75:50
	movl	-16436(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16436(%rbp)
	.loc	1 75 26 is_stmt 0       # gemm_taffoin.c:75:26
	jmp	.LBB0_35
.Ltmp46:
.LBB0_43:                               # %for.end135
                                        #   in Loop: Header=BB0_32 Depth=1
	.loc	1 87 5 is_stmt 1        # gemm_taffoin.c:87:5
	jmp	.LBB0_44
.Ltmp47:
.LBB0_44:                               # %for.inc136
                                        #   in Loop: Header=BB0_32 Depth=1
	.loc	1 73 46                 # gemm_taffoin.c:73:46
	movl	-16432(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16432(%rbp)
	.loc	1 73 22 is_stmt 0       # gemm_taffoin.c:73:22
	jmp	.LBB0_32
.Ltmp48:
.LBB0_45:                               # %for.end138
	.loc	1 0 22                  # gemm_taffoin.c:0:22
	movss	.LCPI0_1(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	.loc	1 92 12 is_stmt 1       # gemm_taffoin.c:92:12
	movl	-16428(%rbp), %eax
	.loc	1 92 16 is_stmt 0       # gemm_taffoin.c:92:16
	movaps	%xmm0, %xmm1
	mulss	-4(%rbp), %xmm1
	cvttss2si	%xmm1, %ecx
	.loc	1 93 1 is_stmt 1        # gemm_taffoin.c:93:1
	movslq	%eax, %rdx
	movslq	%ecx, %rsi
	imulq	%rsi, %rdx
	sarq	$24, %rdx
	.loc	1 92 16                 # gemm_taffoin.c:92:16
	movl	%edx, %eax
	.loc	1 93 1                  # gemm_taffoin.c:93:1
	cvtsi2ssl	%eax, %xmm1
	divss	%xmm0, %xmm1
	.loc	1 92 5                  # gemm_taffoin.c:92:5
	movaps	%xmm1, %xmm0
	addq	$16316, %rsp            # imm = 0x3FBC
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp49:
.Lfunc_end0:
	.size	mm, .Lfunc_end0-mm
	.cfi_endproc
                                        # -- End function
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 7.0.0 "  # string offset=0
.Linfo_string1:
	.asciz	"/home/bruno/Desktop/benchmarks/gemm/proj_gemm/solution1/.autopilot/db/gemm_taffoin.pp.0.c" # string offset=21
.Linfo_string2:
	.asciz	"/home/bruno/Desktop/benchmarks/gemm" # string offset=111
.Linfo_string3:
	.asciz	"float"                 # string offset=147
.Linfo_string4:
	.asciz	"mm"                    # string offset=153
.Linfo_string5:
	.asciz	"gamma"                 # string offset=156
.Linfo_string6:
	.asciz	"ni"                    # string offset=162
.Linfo_string7:
	.asciz	"int"                   # string offset=165
.Linfo_string8:
	.asciz	"nj"                    # string offset=169
.Linfo_string9:
	.asciz	"nk"                    # string offset=172
.Linfo_string10:
	.asciz	"nl"                    # string offset=175
.Linfo_string11:
	.asciz	"i"                     # string offset=178
.Linfo_string12:
	.asciz	"j"                     # string offset=180
.Linfo_string13:
	.asciz	"ii"                    # string offset=182
.Linfo_string14:
	.asciz	"jj"                    # string offset=185
.Linfo_string15:
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
	.byte	1                       # Abbrev [1] 0xb:0xde DW_TAG_compile_unit
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
	.byte	3                       # Abbrev [3] 0x31:0xb0 DW_TAG_subprogram
	.quad	.Lfunc_begin0           # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0 # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string4          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	42                      # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	42                      # DW_AT_type
                                        # DW_AT_external
	.byte	4                       # Abbrev [4] 0x4a:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	124
	.long	.Linfo_string5          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	42                      # DW_AT_decl_line
	.long	42                      # DW_AT_type
	.byte	5                       # Abbrev [5] 0x58:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string6          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	44                      # DW_AT_decl_line
	.long	225                     # DW_AT_type
	.byte	5                       # Abbrev [5] 0x66:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	116
	.long	.Linfo_string8          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	45                      # DW_AT_decl_line
	.long	225                     # DW_AT_type
	.byte	5                       # Abbrev [5] 0x74:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string9          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	46                      # DW_AT_decl_line
	.long	225                     # DW_AT_type
	.byte	5                       # Abbrev [5] 0x82:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	108
	.long	.Linfo_string10         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	47                      # DW_AT_decl_line
	.long	225                     # DW_AT_type
	.byte	5                       # Abbrev [5] 0x90:0x10 DW_TAG_variable
	.byte	4                       # DW_AT_location
	.byte	145
	.ascii	"\350\237\177"
	.long	.Linfo_string11         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	52                      # DW_AT_decl_line
	.long	225                     # DW_AT_type
	.byte	5                       # Abbrev [5] 0xa0:0x10 DW_TAG_variable
	.byte	4                       # DW_AT_location
	.byte	145
	.ascii	"\344\237\177"
	.long	.Linfo_string12         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	53                      # DW_AT_decl_line
	.long	225                     # DW_AT_type
	.byte	5                       # Abbrev [5] 0xb0:0x10 DW_TAG_variable
	.byte	4                       # DW_AT_location
	.byte	145
	.ascii	"\320\377~"
	.long	.Linfo_string13         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	69                      # DW_AT_decl_line
	.long	225                     # DW_AT_type
	.byte	5                       # Abbrev [5] 0xc0:0x10 DW_TAG_variable
	.byte	4                       # DW_AT_location
	.byte	145
	.ascii	"\314\377~"
	.long	.Linfo_string14         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	70                      # DW_AT_decl_line
	.long	225                     # DW_AT_type
	.byte	5                       # Abbrev [5] 0xd0:0x10 DW_TAG_variable
	.byte	4                       # DW_AT_location
	.byte	145
	.ascii	"\310\377~"
	.long	.Linfo_string15         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	71                      # DW_AT_decl_line
	.long	225                     # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	2                       # Abbrev [2] 0xe1:0x7 DW_TAG_base_type
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
	.long	233                     # Compilation Unit Length
	.long	49                      # DIE offset
	.asciz	"mm"                    # External Name
	.long	0                       # End Mark
.LpubNames_end0:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end0-.LpubTypes_begin0 # Length of Public Types Info
.LpubTypes_begin0:
	.short	2                       # DWARF Version
	.long	.Lcu_begin0             # Offset of Compilation Unit Info
	.long	233                     # Compilation Unit Length
	.long	42                      # DIE offset
	.asciz	"float"                 # External Name
	.long	225                     # DIE offset
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
