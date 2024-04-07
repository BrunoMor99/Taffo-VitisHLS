	.text
	.file	"llvm-link"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function syr2k
.LCPI0_0:
	.long	1308622848              # float 536870912
	.text
	.globl	syr2k
	.p2align	4, 0x90
	.type	syr2k,@function
syr2k:                                  # @syr2k
.Lfunc_begin0:
	.file	1 "/home/bruno/Desktop/benchmarks/syr2k" "syr2k_taffo.c"
	.loc	1 21 0                  # syr2k_taffo.c:21:0
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
	movss	%xmm0, -28(%rbp)
	movss	%xmm1, -32(%rbp)
.Ltmp0:
	.loc	1 26 6 prologue_end     # syr2k_taffo.c:26:6
	movl	$16, -36(%rbp)
	.loc	1 27 7                  # syr2k_taffo.c:27:7
	movl	$16, -40(%rbp)
	.loc	1 29 12                 # syr2k_taffo.c:29:12
	movss	-28(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	.loc	1 29 10 is_stmt 0       # syr2k_taffo.c:29:10
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %rdx
	movl	%edx, %eax
	movl	%eax, -44(%rbp)
	.loc	1 31 9 is_stmt 1        # syr2k_taffo.c:31:9
	movss	-32(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	.loc	1 31 8 is_stmt 0        # syr2k_taffo.c:31:8
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %rdx
	movl	%edx, %eax
	movl	%eax, -48(%rbp)
	.loc	1 34 8 is_stmt 1        # syr2k_taffo.c:34:8
	movq	-8(%rbp), %rdx
	.loc	1 34 6 is_stmt 0        # syr2k_taffo.c:34:6
	movq	%rdx, -56(%rbp)
	.loc	1 36 8 is_stmt 1        # syr2k_taffo.c:36:8
	movq	-16(%rbp), %rdx
	.loc	1 36 6 is_stmt 0        # syr2k_taffo.c:36:6
	movq	%rdx, -64(%rbp)
	.loc	1 38 8 is_stmt 1        # syr2k_taffo.c:38:8
	movq	-24(%rbp), %rdx
	.loc	1 38 6 is_stmt 0        # syr2k_taffo.c:38:6
	movq	%rdx, -72(%rbp)
# %bb.1:                                # %VITIS_LOOP_46_1
.Ltmp1:
	.loc	1 46 27 is_stmt 1       # syr2k_taffo.c:46:27
	movl	$0, -76(%rbp)
.LBB0_2:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
                                        #     Child Loop BB0_10 Depth 2
                                        #       Child Loop BB0_13 Depth 3
.Ltmp2:
	.loc	1 46 34 is_stmt 0       # syr2k_taffo.c:46:34
	cmpl	$16, -76(%rbp)
.Ltmp3:
	.loc	1 46 20                 # syr2k_taffo.c:46:20
	jge	.LBB0_20
# %bb.3:                                # %for.body
                                        #   in Loop: Header=BB0_2 Depth=1
.Ltmp4:
	.loc	1 46 45                 # syr2k_taffo.c:46:45
	jmp	.LBB0_4
.LBB0_4:                                # %VITIS_LOOP_48_2
                                        #   in Loop: Header=BB0_2 Depth=1
.Ltmp5:
	.loc	1 48 26 is_stmt 1       # syr2k_taffo.c:48:26
	movl	$0, -80(%rbp)
.LBB0_5:                                # %for.cond9
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp6:
	.loc	1 48 31 is_stmt 0       # syr2k_taffo.c:48:31
	movl	-80(%rbp), %eax
	.loc	1 48 33                 # syr2k_taffo.c:48:33
	cmpl	-76(%rbp), %eax
.Ltmp7:
	.loc	1 48 19                 # syr2k_taffo.c:48:19
	jg	.LBB0_8
# %bb.6:                                # %for.body11
                                        #   in Loop: Header=BB0_5 Depth=2
.Ltmp8:
	.loc	1 50 17 is_stmt 1       # syr2k_taffo.c:50:17
	movl	-48(%rbp), %eax
	.loc	1 50 2 is_stmt 0        # syr2k_taffo.c:50:2
	movq	-72(%rbp), %rcx
	.loc	1 50 5                  # syr2k_taffo.c:50:5
	movl	-76(%rbp), %edx
	.loc	1 50 6                  # syr2k_taffo.c:50:6
	imull	-36(%rbp), %edx
	.loc	1 50 9                  # syr2k_taffo.c:50:9
	addl	-80(%rbp), %edx
	.loc	1 50 2                  # syr2k_taffo.c:50:2
	movslq	%edx, %rsi
	.loc	1 50 14                 # syr2k_taffo.c:50:14
	movslq	(%rcx,%rsi,4), %rdi
	movl	%eax, %eax
	movl	%eax, %r8d
	imulq	%r8, %rdi
	shrq	$13, %rdi
	movl	%edi, %eax
	shrl	$16, %eax
	movl	%eax, (%rcx,%rsi,4)
.Ltmp9:
# %bb.7:                                # %for.inc
                                        #   in Loop: Header=BB0_5 Depth=2
	.loc	1 48 40 is_stmt 1       # syr2k_taffo.c:48:40
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	.loc	1 48 19 is_stmt 0       # syr2k_taffo.c:48:19
	jmp	.LBB0_5
.Ltmp10:
.LBB0_8:                                # %for.end
                                        #   in Loop: Header=BB0_2 Depth=1
	.loc	1 51 5 is_stmt 1        # syr2k_taffo.c:51:5
	jmp	.LBB0_9
.Ltmp11:
.LBB0_9:                                # %VITIS_LOOP_52_3
                                        #   in Loop: Header=BB0_2 Depth=1
	.loc	1 52 29                 # syr2k_taffo.c:52:29
	movl	$0, -84(%rbp)
.LBB0_10:                               # %for.cond13
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_13 Depth 3
.Ltmp12:
	.loc	1 52 36 is_stmt 0       # syr2k_taffo.c:52:36
	cmpl	$16, -84(%rbp)
.Ltmp13:
	.loc	1 52 22                 # syr2k_taffo.c:52:22
	jge	.LBB0_18
# %bb.11:                               # %for.body15
                                        #   in Loop: Header=BB0_10 Depth=2
.Ltmp14:
	.loc	1 52 46                 # syr2k_taffo.c:52:46
	jmp	.LBB0_12
.LBB0_12:                               # %VITIS_LOOP_54_4
                                        #   in Loop: Header=BB0_10 Depth=2
.Ltmp15:
	.loc	1 54 26 is_stmt 1       # syr2k_taffo.c:54:26
	movl	$0, -80(%rbp)
.LBB0_13:                               # %for.cond16
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
.Ltmp16:
	.loc	1 54 31 is_stmt 0       # syr2k_taffo.c:54:31
	movl	-80(%rbp), %eax
	.loc	1 54 33                 # syr2k_taffo.c:54:33
	cmpl	-76(%rbp), %eax
.Ltmp17:
	.loc	1 54 19                 # syr2k_taffo.c:54:19
	jg	.LBB0_16
# %bb.14:                               # %for.body18
                                        #   in Loop: Header=BB0_13 Depth=3
.Ltmp18:
	.loc	1 57 15 is_stmt 1       # syr2k_taffo.c:57:15
	movq	-56(%rbp), %rax
	.loc	1 57 18 is_stmt 0       # syr2k_taffo.c:57:18
	movl	-80(%rbp), %ecx
	.loc	1 57 19                 # syr2k_taffo.c:57:19
	imull	-40(%rbp), %ecx
	.loc	1 57 21                 # syr2k_taffo.c:57:21
	addl	-84(%rbp), %ecx
	.loc	1 57 15                 # syr2k_taffo.c:57:15
	movslq	%ecx, %rdx
	movl	(%rax,%rdx,4), %ecx
	.loc	1 57 25                 # syr2k_taffo.c:57:25
	movl	-44(%rbp), %esi
	.loc	1 57 32                 # syr2k_taffo.c:57:32
	movslq	%ecx, %rax
	movl	%esi, %ecx
	movl	%ecx, %edx
	imulq	%rdx, %rax
	shrq	$13, %rax
	.loc	1 57 24                 # syr2k_taffo.c:57:24
	movl	%eax, %ecx
	.loc	1 57 32                 # syr2k_taffo.c:57:32
	movq	-64(%rbp), %rax
	.loc	1 57 35                 # syr2k_taffo.c:57:35
	movl	-76(%rbp), %esi
	.loc	1 57 36                 # syr2k_taffo.c:57:36
	imull	-40(%rbp), %esi
	.loc	1 57 38                 # syr2k_taffo.c:57:38
	addl	-84(%rbp), %esi
	.loc	1 57 32                 # syr2k_taffo.c:57:32
	movslq	%esi, %rdx
	movl	(%rax,%rdx,4), %esi
	.loc	1 57 44                 # syr2k_taffo.c:57:44
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movslq	%esi, %rdx
	imulq	%rdx, %rax
	shrq	$16, %rax
	.loc	1 57 31                 # syr2k_taffo.c:57:31
	movl	%eax, %ecx
	.loc	1 57 44                 # syr2k_taffo.c:57:44
	movq	-64(%rbp), %rax
	.loc	1 57 47                 # syr2k_taffo.c:57:47
	movl	-80(%rbp), %esi
	.loc	1 57 48                 # syr2k_taffo.c:57:48
	imull	-40(%rbp), %esi
	.loc	1 57 50                 # syr2k_taffo.c:57:50
	addl	-84(%rbp), %esi
	.loc	1 57 44                 # syr2k_taffo.c:57:44
	movslq	%esi, %rdx
	movl	(%rax,%rdx,4), %esi
	.loc	1 57 54                 # syr2k_taffo.c:57:54
	movl	-44(%rbp), %edi
	.loc	1 57 61                 # syr2k_taffo.c:57:61
	movslq	%esi, %rax
	movl	%edi, %esi
	movl	%esi, %edx
	imulq	%rdx, %rax
	shrq	$13, %rax
	.loc	1 57 53                 # syr2k_taffo.c:57:53
	movl	%eax, %esi
	.loc	1 57 61                 # syr2k_taffo.c:57:61
	movq	-56(%rbp), %rax
	.loc	1 57 64                 # syr2k_taffo.c:57:64
	movl	-76(%rbp), %edi
	.loc	1 57 65                 # syr2k_taffo.c:57:65
	imull	-40(%rbp), %edi
	.loc	1 57 67                 # syr2k_taffo.c:57:67
	addl	-84(%rbp), %edi
	.loc	1 57 61                 # syr2k_taffo.c:57:61
	movslq	%edi, %rdx
	movl	(%rax,%rdx,4), %edi
	.loc	1 57 42                 # syr2k_taffo.c:57:42
	movl	%esi, %esi
	movl	%esi, %eax
	movslq	%edi, %rdx
	imulq	%rdx, %rax
	shrq	$16, %rax
	.loc	1 57 60                 # syr2k_taffo.c:57:60
	movl	%eax, %esi
	.loc	1 57 42                 # syr2k_taffo.c:57:42
	addl	%esi, %ecx
	.loc	1 57 2                  # syr2k_taffo.c:57:2
	movq	-72(%rbp), %rax
	.loc	1 57 5                  # syr2k_taffo.c:57:5
	movl	-76(%rbp), %esi
	.loc	1 57 6                  # syr2k_taffo.c:57:6
	imull	-36(%rbp), %esi
	.loc	1 57 8                  # syr2k_taffo.c:57:8
	addl	-80(%rbp), %esi
	.loc	1 57 2                  # syr2k_taffo.c:57:2
	movslq	%esi, %rdx
	.loc	1 57 12                 # syr2k_taffo.c:57:12
	movl	(%rax,%rdx,4), %esi
	shll	$16, %esi
	addl	%ecx, %esi
	shrl	$16, %esi
	movl	%esi, (%rax,%rdx,4)
.Ltmp19:
# %bb.15:                               # %for.inc45
                                        #   in Loop: Header=BB0_13 Depth=3
	.loc	1 54 40 is_stmt 1       # syr2k_taffo.c:54:40
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	.loc	1 54 19 is_stmt 0       # syr2k_taffo.c:54:19
	jmp	.LBB0_13
.Ltmp20:
.LBB0_16:                               # %for.end47
                                        #   in Loop: Header=BB0_10 Depth=2
	.loc	1 59 5 is_stmt 1        # syr2k_taffo.c:59:5
	jmp	.LBB0_17
.Ltmp21:
.LBB0_17:                               # %for.inc48
                                        #   in Loop: Header=BB0_10 Depth=2
	.loc	1 52 43                 # syr2k_taffo.c:52:43
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	.loc	1 52 22 is_stmt 0       # syr2k_taffo.c:52:22
	jmp	.LBB0_10
.Ltmp22:
.LBB0_18:                               # %for.end50
                                        #   in Loop: Header=BB0_2 Depth=1
	.loc	1 60 3 is_stmt 1        # syr2k_taffo.c:60:3
	jmp	.LBB0_19
.Ltmp23:
.LBB0_19:                               # %for.inc51
                                        #   in Loop: Header=BB0_2 Depth=1
	.loc	1 46 41                 # syr2k_taffo.c:46:41
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	.loc	1 46 20 is_stmt 0       # syr2k_taffo.c:46:20
	jmp	.LBB0_2
.Ltmp24:
.LBB0_20:                               # %for.end53
	.loc	1 64 1 is_stmt 1        # syr2k_taffo.c:64:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp25:
.Lfunc_end0:
	.size	syr2k, .Lfunc_end0-syr2k
	.cfi_endproc
                                        # -- End function
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 7.0.0 "  # string offset=0
.Linfo_string1:
	.asciz	"/home/bruno/Desktop/benchmarks/syr2k/proj_syr2k/solution1/.autopilot/db/syr2k_taffo.pp.0.c" # string offset=21
.Linfo_string2:
	.asciz	"/home/bruno/Desktop/benchmarks/syr2k" # string offset=112
.Linfo_string3:
	.asciz	"syr2k"                 # string offset=149
.Linfo_string4:
	.asciz	"A"                     # string offset=155
.Linfo_string5:
	.asciz	"float"                 # string offset=157
.Linfo_string6:
	.asciz	"B"                     # string offset=163
.Linfo_string7:
	.asciz	"C"                     # string offset=165
.Linfo_string8:
	.asciz	"alpha"                 # string offset=167
.Linfo_string9:
	.asciz	"beta"                  # string offset=173
.Linfo_string10:
	.asciz	"n"                     # string offset=178
.Linfo_string11:
	.asciz	"int"                   # string offset=180
.Linfo_string12:
	.asciz	"m"                     # string offset=184
.Linfo_string13:
	.asciz	"i"                     # string offset=186
.Linfo_string14:
	.asciz	"j"                     # string offset=188
.Linfo_string15:
	.asciz	"k"                     # string offset=190
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
	.byte	1                       # Abbrev [1] 0xb:0xd8 DW_TAG_compile_unit
	.long	.Linfo_string0          # DW_AT_producer
	.short	12                      # DW_AT_language
	.long	.Linfo_string1          # DW_AT_name
	.long	.Lline_table_start0     # DW_AT_stmt_list
	.long	.Linfo_string2          # DW_AT_comp_dir
                                        # DW_AT_GNU_pubnames
	.quad	.Lfunc_begin0           # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0 # DW_AT_high_pc
	.byte	2                       # Abbrev [2] 0x2a:0xa5 DW_TAG_subprogram
	.quad	.Lfunc_begin0           # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0 # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string3          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	20                      # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	3                       # Abbrev [3] 0x3f:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string4          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	20                      # DW_AT_decl_line
	.long	207                     # DW_AT_type
	.byte	3                       # Abbrev [3] 0x4d:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string6          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	20                      # DW_AT_decl_line
	.long	207                     # DW_AT_type
	.byte	3                       # Abbrev [3] 0x5b:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string7          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	20                      # DW_AT_decl_line
	.long	207                     # DW_AT_type
	.byte	3                       # Abbrev [3] 0x69:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	100
	.long	.Linfo_string8          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	20                      # DW_AT_decl_line
	.long	212                     # DW_AT_type
	.byte	3                       # Abbrev [3] 0x77:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string9          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	20                      # DW_AT_decl_line
	.long	212                     # DW_AT_type
	.byte	4                       # Abbrev [4] 0x85:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	92
	.long	.Linfo_string10         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	26                      # DW_AT_decl_line
	.long	219                     # DW_AT_type
	.byte	4                       # Abbrev [4] 0x93:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	88
	.long	.Linfo_string12         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	27                      # DW_AT_decl_line
	.long	219                     # DW_AT_type
	.byte	4                       # Abbrev [4] 0xa1:0xf DW_TAG_variable
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\264\177"
	.long	.Linfo_string13         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	41                      # DW_AT_decl_line
	.long	219                     # DW_AT_type
	.byte	4                       # Abbrev [4] 0xb0:0xf DW_TAG_variable
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\260\177"
	.long	.Linfo_string14         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	42                      # DW_AT_decl_line
	.long	219                     # DW_AT_type
	.byte	4                       # Abbrev [4] 0xbf:0xf DW_TAG_variable
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\254\177"
	.long	.Linfo_string15         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	43                      # DW_AT_decl_line
	.long	219                     # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	5                       # Abbrev [5] 0xcf:0x5 DW_TAG_pointer_type
	.long	212                     # DW_AT_type
	.byte	6                       # Abbrev [6] 0xd4:0x7 DW_TAG_base_type
	.long	.Linfo_string5          # DW_AT_name
	.byte	4                       # DW_AT_encoding
	.byte	4                       # DW_AT_byte_size
	.byte	6                       # Abbrev [6] 0xdb:0x7 DW_TAG_base_type
	.long	.Linfo_string11         # DW_AT_name
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
	.long	227                     # Compilation Unit Length
	.long	42                      # DIE offset
	.asciz	"syr2k"                 # External Name
	.long	0                       # End Mark
.LpubNames_end0:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end0-.LpubTypes_begin0 # Length of Public Types Info
.LpubTypes_begin0:
	.short	2                       # DWARF Version
	.long	.Lcu_begin0             # Offset of Compilation Unit Info
	.long	227                     # Compilation Unit Length
	.long	212                     # DIE offset
	.asciz	"float"                 # External Name
	.long	219                     # DIE offset
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
