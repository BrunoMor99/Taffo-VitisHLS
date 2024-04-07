	.text
	.file	"llvm-link"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function fw
.LCPI0_0:
	.quad	4697254411347427328     # double 1048576
	.text
	.globl	fw
	.p2align	4, 0x90
	.type	fw,@function
fw:                                     # @fw
.Lfunc_begin0:
	.file	1 "/home/bruno/Desktop/benchmarks/fw" "fw_taffo.c"
	.loc	1 21 0                  # fw_taffo.c:21:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$1056, %rsp             # imm = 0x420
.Ltmp0:
	.loc	1 23 7 prologue_end     # fw_taffo.c:23:7
	movl	$16, -4(%rbp)
# %bb.1:                                # %VITIS_LOOP_30_1
.Ltmp1:
	.loc	1 30 27                 # fw_taffo.c:30:27
	movl	$0, -8(%rbp)
.LBB0_2:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
.Ltmp2:
	.loc	1 30 32 is_stmt 0       # fw_taffo.c:30:32
	movl	-8(%rbp), %eax
	.loc	1 30 34                 # fw_taffo.c:30:34
	cmpl	-4(%rbp), %eax
.Ltmp3:
	.loc	1 30 20                 # fw_taffo.c:30:20
	jge	.LBB0_14
# %bb.3:                                # %for.body
                                        #   in Loop: Header=BB0_2 Depth=1
.Ltmp4:
	.loc	1 30 43                 # fw_taffo.c:30:43
	jmp	.LBB0_4
.LBB0_4:                                # %VITIS_LOOP_31_2
                                        #   in Loop: Header=BB0_2 Depth=1
.Ltmp5:
	.loc	1 31 29 is_stmt 1       # fw_taffo.c:31:29
	movl	$0, -12(%rbp)
.LBB0_5:                                # %for.cond5
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp6:
	.loc	1 31 34 is_stmt 0       # fw_taffo.c:31:34
	movl	-12(%rbp), %eax
	.loc	1 31 36                 # fw_taffo.c:31:36
	cmpl	-4(%rbp), %eax
.Ltmp7:
	.loc	1 31 22                 # fw_taffo.c:31:22
	jge	.LBB0_12
# %bb.6:                                # %for.body7
                                        #   in Loop: Header=BB0_5 Depth=2
.Ltmp8:
	.loc	1 32 21 is_stmt 1       # fw_taffo.c:32:21
	movl	-8(%rbp), %eax
	.loc	1 32 22 is_stmt 0       # fw_taffo.c:32:22
	imull	-12(%rbp), %eax
	.loc	1 32 24                 # fw_taffo.c:32:24
	cltd
	movl	$7, %ecx
	idivl	%ecx
	.loc	1 32 26                 # fw_taffo.c:32:26
	addl	$1, %edx
	.loc	1 32 21                 # fw_taffo.c:32:21
	shll	$27, %edx
	sarl	$7, %edx
	.loc	1 32 12                 # fw_taffo.c:32:12
	movl	-8(%rbp), %ecx
	.loc	1 32 13                 # fw_taffo.c:32:13
	imull	-4(%rbp), %ecx
	.loc	1 32 15                 # fw_taffo.c:32:15
	addl	-12(%rbp), %ecx
	.loc	1 32 7                  # fw_taffo.c:32:7
	movslq	%ecx, %rsi
	.loc	1 32 19                 # fw_taffo.c:32:19
	movl	%edx, -1040(%rbp,%rsi,4)
.Ltmp9:
	.loc	1 33 12 is_stmt 1       # fw_taffo.c:33:12
	movl	-8(%rbp), %ecx
	.loc	1 33 13 is_stmt 0       # fw_taffo.c:33:13
	addl	-12(%rbp), %ecx
	.loc	1 33 16                 # fw_taffo.c:33:16
	movl	%ecx, %eax
	cltd
	movl	$13, %ecx
	idivl	%ecx
	.loc	1 33 20                 # fw_taffo.c:33:20
	cmpl	$0, %edx
	.loc	1 33 25                 # fw_taffo.c:33:25
	je	.LBB0_9
# %bb.7:                                # %lor.lhs.false
                                        #   in Loop: Header=BB0_5 Depth=2
	.loc	1 33 29                 # fw_taffo.c:33:29
	movl	-8(%rbp), %eax
	.loc	1 33 30                 # fw_taffo.c:33:30
	addl	-12(%rbp), %eax
	.loc	1 33 33                 # fw_taffo.c:33:33
	cltd
	movl	$7, %ecx
	idivl	%ecx
	.loc	1 33 35                 # fw_taffo.c:33:35
	cmpl	$0, %edx
	.loc	1 33 39                 # fw_taffo.c:33:39
	je	.LBB0_9
# %bb.8:                                # %lor.lhs.false18
                                        #   in Loop: Header=BB0_5 Depth=2
	.loc	1 33 43                 # fw_taffo.c:33:43
	movl	-8(%rbp), %eax
	.loc	1 33 44                 # fw_taffo.c:33:44
	addl	-12(%rbp), %eax
	.loc	1 33 47                 # fw_taffo.c:33:47
	cltd
	movl	$11, %ecx
	idivl	%ecx
	.loc	1 33 51                 # fw_taffo.c:33:51
	cmpl	$0, %edx
.Ltmp10:
	.loc	1 33 11                 # fw_taffo.c:33:11
	jne	.LBB0_10
.LBB0_9:                                # %if.then
                                        #   in Loop: Header=BB0_5 Depth=2
.Ltmp11:
	.loc	1 34 15 is_stmt 1       # fw_taffo.c:34:15
	movl	-8(%rbp), %eax
	.loc	1 34 16 is_stmt 0       # fw_taffo.c:34:16
	imull	-4(%rbp), %eax
	.loc	1 34 18                 # fw_taffo.c:34:18
	addl	-12(%rbp), %eax
	.loc	1 34 10                 # fw_taffo.c:34:10
	movslq	%eax, %rcx
	.loc	1 34 22                 # fw_taffo.c:34:22
	movl	$1047527424, -1040(%rbp,%rcx,4) # imm = 0x3E700000
.Ltmp12:
.LBB0_10:                               # %if.end
                                        #   in Loop: Header=BB0_5 Depth=2
	.loc	1 35 5 is_stmt 1        # fw_taffo.c:35:5
	jmp	.LBB0_11
.Ltmp13:
.LBB0_11:                               # %for.inc
                                        #   in Loop: Header=BB0_5 Depth=2
	.loc	1 31 42                 # fw_taffo.c:31:42
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	.loc	1 31 22 is_stmt 0       # fw_taffo.c:31:22
	jmp	.LBB0_5
.Ltmp14:
.LBB0_12:                               # %for.end
                                        #   in Loop: Header=BB0_2 Depth=1
	.loc	1 36 3 is_stmt 1        # fw_taffo.c:36:3
	jmp	.LBB0_13
.Ltmp15:
.LBB0_13:                               # %for.inc27
                                        #   in Loop: Header=BB0_2 Depth=1
	.loc	1 30 40                 # fw_taffo.c:30:40
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	.loc	1 30 20 is_stmt 0       # fw_taffo.c:30:20
	jmp	.LBB0_2
.Ltmp16:
.LBB0_14:                               # %for.end29
	.loc	1 36 3 is_stmt 1        # fw_taffo.c:36:3
	jmp	.LBB0_15
.Ltmp17:
.LBB0_15:                               # %VITIS_LOOP_38_3
	.loc	1 38 27                 # fw_taffo.c:38:27
	movl	$0, -16(%rbp)
.LBB0_16:                               # %for.cond30
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_19 Depth 2
                                        #       Child Loop BB0_22 Depth 3
.Ltmp18:
	.loc	1 38 34 is_stmt 0       # fw_taffo.c:38:34
	cmpl	$16, -16(%rbp)
.Ltmp19:
	.loc	1 38 20                 # fw_taffo.c:38:20
	jge	.LBB0_32
# %bb.17:                               # %for.body32
                                        #   in Loop: Header=BB0_16 Depth=1
.Ltmp20:
	.loc	1 38 44                 # fw_taffo.c:38:44
	jmp	.LBB0_18
.LBB0_18:                               # %VITIS_LOOP_39_4
                                        #   in Loop: Header=BB0_16 Depth=1
.Ltmp21:
	.loc	1 39 30 is_stmt 1       # fw_taffo.c:39:30
	movl	$0, -8(%rbp)
.LBB0_19:                               # %for.cond33
                                        #   Parent Loop BB0_16 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_22 Depth 3
.Ltmp22:
	.loc	1 39 37 is_stmt 0       # fw_taffo.c:39:37
	cmpl	$16, -8(%rbp)
.Ltmp23:
	.loc	1 39 24                 # fw_taffo.c:39:24
	jge	.LBB0_30
# %bb.20:                               # %for.body35
                                        #   in Loop: Header=BB0_19 Depth=2
.Ltmp24:
	.loc	1 39 47                 # fw_taffo.c:39:47
	jmp	.LBB0_21
.LBB0_21:                               # %VITIS_LOOP_40_5
                                        #   in Loop: Header=BB0_19 Depth=2
.Ltmp25:
	.loc	1 40 33 is_stmt 1       # fw_taffo.c:40:33
	movl	$0, -12(%rbp)
.LBB0_22:                               # %for.cond36
                                        #   Parent Loop BB0_16 Depth=1
                                        #     Parent Loop BB0_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
.Ltmp26:
	.loc	1 40 40 is_stmt 0       # fw_taffo.c:40:40
	cmpl	$16, -12(%rbp)
.Ltmp27:
	.loc	1 40 26                 # fw_taffo.c:40:26
	jge	.LBB0_28
# %bb.23:                               # %for.body38
                                        #   in Loop: Header=BB0_22 Depth=3
.Ltmp28:
	.loc	1 41 67 is_stmt 1       # fw_taffo.c:41:67
	movl	-8(%rbp), %eax
	.loc	1 41 68 is_stmt 0       # fw_taffo.c:41:68
	imull	-4(%rbp), %eax
	.loc	1 41 70                 # fw_taffo.c:41:70
	addl	-16(%rbp), %eax
	.loc	1 41 62                 # fw_taffo.c:41:62
	movslq	%eax, %rcx
	movl	-1040(%rbp,%rcx,4), %eax
	.loc	1 41 55                 # fw_taffo.c:41:55
	shll	$1, %eax
	movl	%eax, -1044(%rbp)
	.loc	1 42 67 is_stmt 1       # fw_taffo.c:42:67
	movl	-16(%rbp), %eax
	.loc	1 42 68 is_stmt 0       # fw_taffo.c:42:68
	imull	-4(%rbp), %eax
	.loc	1 42 70                 # fw_taffo.c:42:70
	addl	-12(%rbp), %eax
	.loc	1 42 62                 # fw_taffo.c:42:62
	movslq	%eax, %rcx
	movl	-1040(%rbp,%rcx,4), %eax
	.loc	1 42 55                 # fw_taffo.c:42:55
	shll	$1, %eax
	movl	%eax, -1048(%rbp)
	.loc	1 43 27 is_stmt 1       # fw_taffo.c:43:27
	movl	-8(%rbp), %eax
	.loc	1 43 28 is_stmt 0       # fw_taffo.c:43:28
	imull	-4(%rbp), %eax
	.loc	1 43 30                 # fw_taffo.c:43:30
	addl	-12(%rbp), %eax
	.loc	1 43 22                 # fw_taffo.c:43:22
	movslq	%eax, %rcx
	movl	-1040(%rbp,%rcx,4), %eax
	.loc	1 43 41                 # fw_taffo.c:43:41
	movl	-8(%rbp), %edx
	.loc	1 43 42                 # fw_taffo.c:43:42
	imull	-4(%rbp), %edx
	.loc	1 43 44                 # fw_taffo.c:43:44
	addl	-16(%rbp), %edx
	.loc	1 43 36                 # fw_taffo.c:43:36
	movslq	%edx, %rcx
	movl	-1040(%rbp,%rcx,4), %edx
	.loc	1 43 55                 # fw_taffo.c:43:55
	movl	-16(%rbp), %esi
	.loc	1 43 56                 # fw_taffo.c:43:56
	imull	-4(%rbp), %esi
	.loc	1 43 58                 # fw_taffo.c:43:58
	addl	-12(%rbp), %esi
	.loc	1 43 50                 # fw_taffo.c:43:50
	movslq	%esi, %rcx
	.loc	1 43 48                 # fw_taffo.c:43:48
	addl	-1040(%rbp,%rcx,4), %edx
	.loc	1 43 34                 # fw_taffo.c:43:34
	cmpl	%edx, %eax
	setl	%dil
	.loc	1 43 22                 # fw_taffo.c:43:22
	andb	$1, %dil
	movzbl	%dil, %eax
	.loc	1 43 15                 # fw_taffo.c:43:15
	movl	%eax, -1052(%rbp)
.Ltmp29:
	.loc	1 44 15 is_stmt 1       # fw_taffo.c:44:15
	cmpl	$0, -1052(%rbp)
.Ltmp30:
	.loc	1 44 15 is_stmt 0       # fw_taffo.c:44:15
	je	.LBB0_25
# %bb.24:                               # %if.then64
                                        #   in Loop: Header=BB0_22 Depth=3
.Ltmp31:
	.loc	1 45 32 is_stmt 1       # fw_taffo.c:45:32
	movl	-8(%rbp), %eax
	.loc	1 45 33 is_stmt 0       # fw_taffo.c:45:33
	imull	-4(%rbp), %eax
	.loc	1 45 35                 # fw_taffo.c:45:35
	addl	-12(%rbp), %eax
	.loc	1 45 27                 # fw_taffo.c:45:27
	movslq	%eax, %rcx
	movl	-1040(%rbp,%rcx,4), %eax
	.loc	1 45 18                 # fw_taffo.c:45:18
	movl	-8(%rbp), %edx
	.loc	1 45 19                 # fw_taffo.c:45:19
	imull	-4(%rbp), %edx
	.loc	1 45 21                 # fw_taffo.c:45:21
	addl	-12(%rbp), %edx
	.loc	1 45 13                 # fw_taffo.c:45:13
	movslq	%edx, %rcx
	.loc	1 45 25                 # fw_taffo.c:45:25
	movl	%eax, -1040(%rbp,%rcx,4)
	.loc	1 46 11 is_stmt 1       # fw_taffo.c:46:11
	jmp	.LBB0_26
.Ltmp32:
.LBB0_25:                               # %if.else
                                        #   in Loop: Header=BB0_22 Depth=3
	.loc	1 47 27                 # fw_taffo.c:47:27
	movl	-1044(%rbp), %eax
	.loc	1 47 34 is_stmt 0       # fw_taffo.c:47:34
	sarl	$1, %eax
	movl	-1048(%rbp), %ecx
	.loc	1 47 32                 # fw_taffo.c:47:32
	sarl	$1, %ecx
	addl	%ecx, %eax
	.loc	1 47 18                 # fw_taffo.c:47:18
	movl	-8(%rbp), %ecx
	.loc	1 47 19                 # fw_taffo.c:47:19
	imull	-4(%rbp), %ecx
	.loc	1 47 21                 # fw_taffo.c:47:21
	addl	-12(%rbp), %ecx
	.loc	1 47 13                 # fw_taffo.c:47:13
	movslq	%ecx, %rdx
	.loc	1 47 25                 # fw_taffo.c:47:25
	movl	%eax, -1040(%rbp,%rdx,4)
.Ltmp33:
.LBB0_26:                               # %if.end78
                                        #   in Loop: Header=BB0_22 Depth=3
# %bb.27:                               # %for.inc79
                                        #   in Loop: Header=BB0_22 Depth=3
	.loc	1 40 47 is_stmt 1       # fw_taffo.c:40:47
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	.loc	1 40 26 is_stmt 0       # fw_taffo.c:40:26
	jmp	.LBB0_22
.Ltmp34:
.LBB0_28:                               # %for.end81
                                        #   in Loop: Header=BB0_19 Depth=2
	.loc	1 50 8 is_stmt 1        # fw_taffo.c:50:8
	jmp	.LBB0_29
.Ltmp35:
.LBB0_29:                               # %for.inc82
                                        #   in Loop: Header=BB0_19 Depth=2
	.loc	1 39 44                 # fw_taffo.c:39:44
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	.loc	1 39 24 is_stmt 0       # fw_taffo.c:39:24
	jmp	.LBB0_19
.Ltmp36:
.LBB0_30:                               # %for.end84
                                        #   in Loop: Header=BB0_16 Depth=1
	.loc	1 51 3 is_stmt 1        # fw_taffo.c:51:3
	jmp	.LBB0_31
.Ltmp37:
.LBB0_31:                               # %for.inc85
                                        #   in Loop: Header=BB0_16 Depth=1
	.loc	1 38 41                 # fw_taffo.c:38:41
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	.loc	1 38 20 is_stmt 0       # fw_taffo.c:38:20
	jmp	.LBB0_16
.Ltmp38:
.LBB0_32:                               # %for.end87
	.loc	1 51 3 is_stmt 1        # fw_taffo.c:51:3
	jmp	.LBB0_33
.Ltmp39:
.LBB0_33:                               # %VITIS_LOOP_53_6
	.loc	1 53 27                 # fw_taffo.c:53:27
	movl	$0, -8(%rbp)
.LBB0_34:                               # %for.cond88
                                        # =>This Inner Loop Header: Depth=1
.Ltmp40:
	.loc	1 53 34 is_stmt 0       # fw_taffo.c:53:34
	cmpl	$256, -8(%rbp)          # imm = 0x100
.Ltmp41:
	.loc	1 53 20                 # fw_taffo.c:53:20
	jge	.LBB0_37
# %bb.35:                               # %for.body90
                                        #   in Loop: Header=BB0_34 Depth=1
	.loc	1 0 20                  # fw_taffo.c:0:20
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
.Ltmp42:
	.loc	1 54 21 is_stmt 1       # fw_taffo.c:54:21
	movslq	-8(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	cvtsi2sdl	%ecx, %xmm1
	divsd	%xmm0, %xmm1
	.loc	1 54 5 is_stmt 0        # fw_taffo.c:54:5
	movabsq	$.L.str.4, %rdi
	movaps	%xmm1, %xmm0
	movb	$1, %al
	callq	printf
	movl	%eax, -1056(%rbp)       # 4-byte Spill
.Ltmp43:
# %bb.36:                               # %for.inc94
                                        #   in Loop: Header=BB0_34 Depth=1
	.loc	1 53 44 is_stmt 1       # fw_taffo.c:53:44
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	.loc	1 53 20 is_stmt 0       # fw_taffo.c:53:20
	jmp	.LBB0_34
.Ltmp44:
.LBB0_37:                               # %for.end96
	.loc	1 57 1 is_stmt 1        # fw_taffo.c:57:1
	addq	$1056, %rsp             # imm = 0x420
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp45:
.Lfunc_end0:
	.size	fw, .Lfunc_end0-fw
	.cfi_endproc
                                        # -- End function
	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"%f \n"
	.size	.L.str.4, 5

	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 7.0.0 "  # string offset=0
.Linfo_string1:
	.asciz	"/home/bruno/Desktop/benchmarks/fw/proj_fw/solution1/.autopilot/db/fw_taffo.pp.0.c" # string offset=21
.Linfo_string2:
	.asciz	"/home/bruno/Desktop/benchmarks/fw" # string offset=103
.Linfo_string3:
	.asciz	"fw"                    # string offset=137
.Linfo_string4:
	.asciz	"n"                     # string offset=140
.Linfo_string5:
	.asciz	"int"                   # string offset=142
.Linfo_string6:
	.asciz	"i"                     # string offset=146
.Linfo_string7:
	.asciz	"j"                     # string offset=148
.Linfo_string8:
	.asciz	"k"                     # string offset=150
.Linfo_string9:
	.asciz	"cond"                  # string offset=152
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
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	3                       # Abbreviation Code
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
	.byte	4                       # Abbreviation Code
	.byte	11                      # DW_TAG_lexical_block
	.byte	1                       # DW_CHILDREN_yes
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	6                       # DW_FORM_data4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	5                       # Abbreviation Code
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
	.byte	1                       # Abbrev [1] 0xb:0x92 DW_TAG_compile_unit
	.long	.Linfo_string0          # DW_AT_producer
	.short	12                      # DW_AT_language
	.long	.Linfo_string1          # DW_AT_name
	.long	.Lline_table_start0     # DW_AT_stmt_list
	.long	.Linfo_string2          # DW_AT_comp_dir
                                        # DW_AT_GNU_pubnames
	.quad	.Lfunc_begin0           # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0 # DW_AT_high_pc
	.byte	2                       # Abbrev [2] 0x2a:0x6b DW_TAG_subprogram
	.quad	.Lfunc_begin0           # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0 # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string3          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	21                      # DW_AT_decl_line
                                        # DW_AT_external
	.byte	3                       # Abbrev [3] 0x3f:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	124
	.long	.Linfo_string4          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	23                      # DW_AT_decl_line
	.long	149                     # DW_AT_type
	.byte	3                       # Abbrev [3] 0x4d:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string6          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	24                      # DW_AT_decl_line
	.long	149                     # DW_AT_type
	.byte	3                       # Abbrev [3] 0x5b:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	116
	.long	.Linfo_string7          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	25                      # DW_AT_decl_line
	.long	149                     # DW_AT_type
	.byte	3                       # Abbrev [3] 0x69:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string8          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	26                      # DW_AT_decl_line
	.long	149                     # DW_AT_type
	.byte	4                       # Abbrev [4] 0x77:0x1d DW_TAG_lexical_block
	.quad	.Ltmp28                 # DW_AT_low_pc
	.long	.Ltmp33-.Ltmp28         # DW_AT_high_pc
	.byte	3                       # Abbrev [3] 0x84:0xf DW_TAG_variable
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\344w"
	.long	.Linfo_string9          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	43                      # DW_AT_decl_line
	.long	149                     # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	5                       # Abbrev [5] 0x95:0x7 DW_TAG_base_type
	.long	.Linfo_string5          # DW_AT_name
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
	.long	157                     # Compilation Unit Length
	.long	42                      # DIE offset
	.asciz	"fw"                    # External Name
	.long	0                       # End Mark
.LpubNames_end0:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end0-.LpubTypes_begin0 # Length of Public Types Info
.LpubTypes_begin0:
	.short	2                       # DWARF Version
	.long	.Lcu_begin0             # Offset of Compilation Unit Info
	.long	157                     # Compilation Unit Length
	.long	149                     # DIE offset
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
	.addrsig_sym printf
	.section	.debug_line,"",@progbits
.Lline_table_start0:
