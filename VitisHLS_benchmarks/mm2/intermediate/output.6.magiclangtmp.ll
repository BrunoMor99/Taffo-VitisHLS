	.text
	.file	"llvm-link"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function mm2
.LCPI0_0:
	.long	1308622848              # float 536870912
	.text
	.globl	mm2
	.p2align	4, 0x90
	.type	mm2,@function
mm2:                                    # @mm2
.Lfunc_begin0:
	.file	1 "/home/bruno/Desktop/benchmarks/mm2" "mm2_taffo.c"
	.loc	1 24 0                  # mm2_taffo.c:24:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:                                # %entry
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
.Ltmp0:
	.loc	1 29 6 prologue_end     # mm2_taffo.c:29:6
	movl	$16, -44(%rbp)
	.loc	1 30 7                  # mm2_taffo.c:30:7
	movl	$16, -48(%rbp)
	.loc	1 31 7                  # mm2_taffo.c:31:7
	movl	$16, -52(%rbp)
	.loc	1 32 7                  # mm2_taffo.c:32:7
	movl	$16, -56(%rbp)
	.loc	1 34 12                 # mm2_taffo.c:34:12
	movss	-36(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	.loc	1 34 10 is_stmt 0       # mm2_taffo.c:34:10
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %rcx
	movl	%ecx, %eax
	movl	%eax, -60(%rbp)
	.loc	1 36 9 is_stmt 1        # mm2_taffo.c:36:9
	movss	-40(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	.loc	1 36 8 is_stmt 0        # mm2_taffo.c:36:8
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %rcx
	movl	%ecx, %eax
	movl	%eax, -64(%rbp)
	.loc	1 39 8 is_stmt 1        # mm2_taffo.c:39:8
	movq	-8(%rbp), %rcx
	.loc	1 39 6 is_stmt 0        # mm2_taffo.c:39:6
	movq	%rcx, -72(%rbp)
	.loc	1 41 8 is_stmt 1        # mm2_taffo.c:41:8
	movq	-16(%rbp), %rcx
	.loc	1 41 6 is_stmt 0        # mm2_taffo.c:41:6
	movq	%rcx, -80(%rbp)
	.loc	1 43 8 is_stmt 1        # mm2_taffo.c:43:8
	movq	-24(%rbp), %rcx
	.loc	1 43 6 is_stmt 0        # mm2_taffo.c:43:6
	movq	%rcx, -88(%rbp)
	.loc	1 45 8 is_stmt 1        # mm2_taffo.c:45:8
	movq	-32(%rbp), %rcx
	.loc	1 45 6 is_stmt 0        # mm2_taffo.c:45:6
	movq	%rcx, -96(%rbp)
# %bb.1:                                # %VITIS_LOOP_53_1
.Ltmp1:
	.loc	1 53 27 is_stmt 1       # mm2_taffo.c:53:27
	movl	$0, -1124(%rbp)
.LBB0_2:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
                                        #       Child Loop BB0_8 Depth 3
.Ltmp2:
	.loc	1 53 34 is_stmt 0       # mm2_taffo.c:53:34
	cmpl	$16, -1124(%rbp)
.Ltmp3:
	.loc	1 53 20                 # mm2_taffo.c:53:20
	jge	.LBB0_15
# %bb.3:                                # %for.body
                                        #   in Loop: Header=BB0_2 Depth=1
.Ltmp4:
	.loc	1 53 44                 # mm2_taffo.c:53:44
	jmp	.LBB0_4
.LBB0_4:                                # %VITIS_LOOP_55_2
                                        #   in Loop: Header=BB0_2 Depth=1
.Ltmp5:
	.loc	1 55 29 is_stmt 1       # mm2_taffo.c:55:29
	movl	$0, -1128(%rbp)
.LBB0_5:                                # %for.cond11
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_8 Depth 3
.Ltmp6:
	.loc	1 55 36 is_stmt 0       # mm2_taffo.c:55:36
	cmpl	$16, -1128(%rbp)
.Ltmp7:
	.loc	1 55 22                 # mm2_taffo.c:55:22
	jge	.LBB0_13
# %bb.6:                                # %for.body13
                                        #   in Loop: Header=BB0_5 Depth=2
.Ltmp8:
	.loc	1 57 10 is_stmt 1       # mm2_taffo.c:57:10
	movl	-1124(%rbp), %eax
	.loc	1 57 11 is_stmt 0       # mm2_taffo.c:57:11
	imull	-48(%rbp), %eax
	.loc	1 57 14                 # mm2_taffo.c:57:14
	addl	-1128(%rbp), %eax
	.loc	1 57 6                  # mm2_taffo.c:57:6
	movslq	%eax, %rcx
	.loc	1 57 18                 # mm2_taffo.c:57:18
	movl	$0, -1120(%rbp,%rcx,4)
# %bb.7:                                # %VITIS_LOOP_58_3
                                        #   in Loop: Header=BB0_5 Depth=2
.Ltmp9:
	.loc	1 58 30 is_stmt 1       # mm2_taffo.c:58:30
	movl	$0, -1132(%rbp)
.LBB0_8:                                # %for.cond14
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
.Ltmp10:
	.loc	1 58 37 is_stmt 0       # mm2_taffo.c:58:37
	cmpl	$16, -1132(%rbp)
.Ltmp11:
	.loc	1 58 23                 # mm2_taffo.c:58:23
	jge	.LBB0_11
# %bb.9:                                # %for.body16
                                        #   in Loop: Header=BB0_8 Depth=3
.Ltmp12:
	.loc	1 60 24 is_stmt 1       # mm2_taffo.c:60:24
	movl	-60(%rbp), %eax
	.loc	1 60 33 is_stmt 0       # mm2_taffo.c:60:33
	movq	-72(%rbp), %rcx
	.loc	1 60 36                 # mm2_taffo.c:60:36
	movl	-1124(%rbp), %edx
	.loc	1 60 37                 # mm2_taffo.c:60:37
	imull	-52(%rbp), %edx
	.loc	1 60 40                 # mm2_taffo.c:60:40
	addl	-1132(%rbp), %edx
	.loc	1 60 33                 # mm2_taffo.c:60:33
	movslq	%edx, %rsi
	movl	(%rcx,%rsi,4), %edx
	.loc	1 60 46                 # mm2_taffo.c:60:46
	movl	%eax, %eax
	movl	%eax, %ecx
	movslq	%edx, %rsi
	imulq	%rsi, %rcx
	shrq	$13, %rcx
	.loc	1 60 31                 # mm2_taffo.c:60:31
	movl	%ecx, %eax
	.loc	1 60 46                 # mm2_taffo.c:60:46
	movq	-80(%rbp), %rcx
	.loc	1 60 49                 # mm2_taffo.c:60:49
	movl	-1132(%rbp), %edx
	.loc	1 60 50                 # mm2_taffo.c:60:50
	imull	-48(%rbp), %edx
	.loc	1 60 53                 # mm2_taffo.c:60:53
	addl	-1128(%rbp), %edx
	.loc	1 60 46                 # mm2_taffo.c:60:46
	movslq	%edx, %rsi
	movl	(%rcx,%rsi,4), %edx
	.loc	1 60 13                 # mm2_taffo.c:60:13
	movl	%eax, %eax
	movl	%eax, %ecx
	movslq	%edx, %rsi
	imulq	%rsi, %rcx
	shrq	$16, %rcx
	.loc	1 60 44                 # mm2_taffo.c:60:44
	movl	%ecx, %eax
	.loc	1 60 13                 # mm2_taffo.c:60:13
	movl	-1124(%rbp), %edx
	.loc	1 60 14                 # mm2_taffo.c:60:14
	imull	-48(%rbp), %edx
	.loc	1 60 17                 # mm2_taffo.c:60:17
	addl	-1128(%rbp), %edx
	.loc	1 60 9                  # mm2_taffo.c:60:9
	movslq	%edx, %rcx
	.loc	1 60 21                 # mm2_taffo.c:60:21
	addl	-1120(%rbp,%rcx,4), %eax
	movl	%eax, -1120(%rbp,%rcx,4)
.Ltmp13:
# %bb.10:                               # %for.inc
                                        #   in Loop: Header=BB0_8 Depth=3
	.loc	1 58 43 is_stmt 1       # mm2_taffo.c:58:43
	movl	-1132(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1132(%rbp)
	.loc	1 58 23 is_stmt 0       # mm2_taffo.c:58:23
	jmp	.LBB0_8
.Ltmp14:
.LBB0_11:                               # %for.end
                                        #   in Loop: Header=BB0_5 Depth=2
	.loc	1 62 5 is_stmt 1        # mm2_taffo.c:62:5
	jmp	.LBB0_12
.Ltmp15:
.LBB0_12:                               # %for.inc32
                                        #   in Loop: Header=BB0_5 Depth=2
	.loc	1 55 43                 # mm2_taffo.c:55:43
	movl	-1128(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1128(%rbp)
	.loc	1 55 22 is_stmt 0       # mm2_taffo.c:55:22
	jmp	.LBB0_5
.Ltmp16:
.LBB0_13:                               # %for.end34
                                        #   in Loop: Header=BB0_2 Depth=1
	.loc	1 63 3 is_stmt 1        # mm2_taffo.c:63:3
	jmp	.LBB0_14
.Ltmp17:
.LBB0_14:                               # %for.inc35
                                        #   in Loop: Header=BB0_2 Depth=1
	.loc	1 53 41                 # mm2_taffo.c:53:41
	movl	-1124(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1124(%rbp)
	.loc	1 53 20 is_stmt 0       # mm2_taffo.c:53:20
	jmp	.LBB0_2
.Ltmp18:
.LBB0_15:                               # %for.end37
	.loc	1 63 3 is_stmt 1        # mm2_taffo.c:63:3
	jmp	.LBB0_16
.Ltmp19:
.LBB0_16:                               # %VITIS_LOOP_65_4
	.loc	1 65 27                 # mm2_taffo.c:65:27
	movl	$0, -1124(%rbp)
.LBB0_17:                               # %for.cond38
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_20 Depth 2
                                        #       Child Loop BB0_23 Depth 3
.Ltmp20:
	.loc	1 65 34 is_stmt 0       # mm2_taffo.c:65:34
	cmpl	$16, -1124(%rbp)
.Ltmp21:
	.loc	1 65 20                 # mm2_taffo.c:65:20
	jge	.LBB0_30
# %bb.18:                               # %for.body40
                                        #   in Loop: Header=BB0_17 Depth=1
.Ltmp22:
	.loc	1 65 44                 # mm2_taffo.c:65:44
	jmp	.LBB0_19
.LBB0_19:                               # %VITIS_LOOP_67_5
                                        #   in Loop: Header=BB0_17 Depth=1
.Ltmp23:
	.loc	1 67 29 is_stmt 1       # mm2_taffo.c:67:29
	movl	$0, -1128(%rbp)
.LBB0_20:                               # %for.cond41
                                        #   Parent Loop BB0_17 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_23 Depth 3
.Ltmp24:
	.loc	1 67 36 is_stmt 0       # mm2_taffo.c:67:36
	cmpl	$16, -1128(%rbp)
.Ltmp25:
	.loc	1 67 22                 # mm2_taffo.c:67:22
	jge	.LBB0_28
# %bb.21:                               # %for.body43
                                        #   in Loop: Header=BB0_20 Depth=2
.Ltmp26:
	.loc	1 69 16 is_stmt 1       # mm2_taffo.c:69:16
	movl	-64(%rbp), %eax
	.loc	1 69 2 is_stmt 0        # mm2_taffo.c:69:2
	movq	-96(%rbp), %rcx
	.loc	1 69 5                  # mm2_taffo.c:69:5
	movl	-1124(%rbp), %edx
	.loc	1 69 6                  # mm2_taffo.c:69:6
	imull	-56(%rbp), %edx
	.loc	1 69 9                  # mm2_taffo.c:69:9
	addl	-1128(%rbp), %edx
	.loc	1 69 2                  # mm2_taffo.c:69:2
	movslq	%edx, %rsi
	.loc	1 69 13                 # mm2_taffo.c:69:13
	movslq	(%rcx,%rsi,4), %rdi
	movl	%eax, %eax
	movl	%eax, %r8d
	imulq	%r8, %rdi
	shrq	$13, %rdi
	movl	%edi, %eax
	shrl	$16, %eax
	movl	%eax, (%rcx,%rsi,4)
# %bb.22:                               # %VITIS_LOOP_70_6
                                        #   in Loop: Header=BB0_20 Depth=2
.Ltmp27:
	.loc	1 70 26 is_stmt 1       # mm2_taffo.c:70:26
	movl	$0, -1132(%rbp)
.LBB0_23:                               # %for.cond49
                                        #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
.Ltmp28:
	.loc	1 70 33 is_stmt 0       # mm2_taffo.c:70:33
	cmpl	$16, -1132(%rbp)
.Ltmp29:
	.loc	1 70 19                 # mm2_taffo.c:70:19
	jge	.LBB0_26
# %bb.24:                               # %for.body51
                                        #   in Loop: Header=BB0_23 Depth=3
.Ltmp30:
	.loc	1 72 28 is_stmt 1       # mm2_taffo.c:72:28
	movl	-1124(%rbp), %eax
	.loc	1 72 29 is_stmt 0       # mm2_taffo.c:72:29
	imull	-48(%rbp), %eax
	.loc	1 72 32                 # mm2_taffo.c:72:32
	addl	-1132(%rbp), %eax
	.loc	1 72 24                 # mm2_taffo.c:72:24
	movslq	%eax, %rcx
	movl	-1120(%rbp,%rcx,4), %eax
	.loc	1 72 38                 # mm2_taffo.c:72:38
	movq	-88(%rbp), %rcx
	.loc	1 72 41                 # mm2_taffo.c:72:41
	movl	-1132(%rbp), %edx
	.loc	1 72 42                 # mm2_taffo.c:72:42
	imull	-56(%rbp), %edx
	.loc	1 72 45                 # mm2_taffo.c:72:45
	addl	-1128(%rbp), %edx
	.loc	1 72 38                 # mm2_taffo.c:72:38
	movslq	%edx, %rsi
	movl	(%rcx,%rsi,4), %edx
	.loc	1 72 10                 # mm2_taffo.c:72:10
	movl	%eax, %eax
	movl	%eax, %ecx
	movslq	%edx, %rsi
	imulq	%rsi, %rcx
	shrq	$16, %rcx
	.loc	1 72 36                 # mm2_taffo.c:72:36
	movl	%ecx, %eax
	.loc	1 72 10                 # mm2_taffo.c:72:10
	movq	-96(%rbp), %rcx
	.loc	1 72 13                 # mm2_taffo.c:72:13
	movl	-1124(%rbp), %edx
	.loc	1 72 14                 # mm2_taffo.c:72:14
	imull	-56(%rbp), %edx
	.loc	1 72 17                 # mm2_taffo.c:72:17
	addl	-1128(%rbp), %edx
	.loc	1 72 10                 # mm2_taffo.c:72:10
	movslq	%edx, %rsi
	.loc	1 72 21                 # mm2_taffo.c:72:21
	movl	(%rcx,%rsi,4), %edx
	shll	$16, %edx
	addl	%eax, %edx
	shrl	$16, %edx
	movl	%edx, (%rcx,%rsi,4)
.Ltmp31:
# %bb.25:                               # %for.inc66
                                        #   in Loop: Header=BB0_23 Depth=3
	.loc	1 70 39 is_stmt 1       # mm2_taffo.c:70:39
	movl	-1132(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1132(%rbp)
	.loc	1 70 19 is_stmt 0       # mm2_taffo.c:70:19
	jmp	.LBB0_23
.Ltmp32:
.LBB0_26:                               # %for.end68
                                        #   in Loop: Header=BB0_20 Depth=2
	.loc	1 74 5 is_stmt 1        # mm2_taffo.c:74:5
	jmp	.LBB0_27
.Ltmp33:
.LBB0_27:                               # %for.inc69
                                        #   in Loop: Header=BB0_20 Depth=2
	.loc	1 67 43                 # mm2_taffo.c:67:43
	movl	-1128(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1128(%rbp)
	.loc	1 67 22 is_stmt 0       # mm2_taffo.c:67:22
	jmp	.LBB0_20
.Ltmp34:
.LBB0_28:                               # %for.end71
                                        #   in Loop: Header=BB0_17 Depth=1
	.loc	1 75 3 is_stmt 1        # mm2_taffo.c:75:3
	jmp	.LBB0_29
.Ltmp35:
.LBB0_29:                               # %for.inc72
                                        #   in Loop: Header=BB0_17 Depth=1
	.loc	1 65 41                 # mm2_taffo.c:65:41
	movl	-1124(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1124(%rbp)
	.loc	1 65 20 is_stmt 0       # mm2_taffo.c:65:20
	jmp	.LBB0_17
.Ltmp36:
.LBB0_30:                               # %for.end74
	.loc	1 77 1 is_stmt 1        # mm2_taffo.c:77:1
	addq	$1008, %rsp             # imm = 0x3F0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp37:
.Lfunc_end0:
	.size	mm2, .Lfunc_end0-mm2
	.cfi_endproc
                                        # -- End function
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 7.0.0 "  # string offset=0
.Linfo_string1:
	.asciz	"/home/bruno/Desktop/benchmarks/mm2/proj_mm2/solution1/.autopilot/db/mm2_taffo.pp.0.c" # string offset=21
.Linfo_string2:
	.asciz	"/home/bruno/Desktop/benchmarks/mm2" # string offset=106
.Linfo_string3:
	.asciz	"mm2"                   # string offset=141
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
	.asciz	"alpha"                 # string offset=159
.Linfo_string10:
	.asciz	"beta"                  # string offset=165
.Linfo_string11:
	.asciz	"ni"                    # string offset=170
.Linfo_string12:
	.asciz	"int"                   # string offset=173
.Linfo_string13:
	.asciz	"nj"                    # string offset=177
.Linfo_string14:
	.asciz	"nk"                    # string offset=180
.Linfo_string15:
	.asciz	"nl"                    # string offset=183
.Linfo_string16:
	.asciz	"tmp"                   # string offset=186
.Linfo_string17:
	.asciz	"__ARRAY_SIZE_TYPE__"   # string offset=190
.Linfo_string18:
	.asciz	"i"                     # string offset=210
.Linfo_string19:
	.asciz	"j"                     # string offset=212
.Linfo_string20:
	.asciz	"k"                     # string offset=214
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
	.byte	7                       # Abbreviation Code
	.byte	1                       # DW_TAG_array_type
	.byte	1                       # DW_CHILDREN_yes
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	8                       # Abbreviation Code
	.byte	33                      # DW_TAG_subrange_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	55                      # DW_AT_count
	.byte	5                       # DW_FORM_data2
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	9                       # Abbreviation Code
	.byte	36                      # DW_TAG_base_type
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	11                      # DW_AT_byte_size
	.byte	11                      # DW_FORM_data1
	.byte	62                      # DW_AT_encoding
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
	.byte	1                       # Abbrev [1] 0xb:0x125 DW_TAG_compile_unit
	.long	.Linfo_string0          # DW_AT_producer
	.short	12                      # DW_AT_language
	.long	.Linfo_string1          # DW_AT_name
	.long	.Lline_table_start0     # DW_AT_stmt_list
	.long	.Linfo_string2          # DW_AT_comp_dir
                                        # DW_AT_GNU_pubnames
	.quad	.Lfunc_begin0           # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0 # DW_AT_high_pc
	.byte	2                       # Abbrev [2] 0x2a:0xde DW_TAG_subprogram
	.quad	.Lfunc_begin0           # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0 # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string3          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	23                      # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	3                       # Abbrev [3] 0x3f:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string4          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	23                      # DW_AT_decl_line
	.long	264                     # DW_AT_type
	.byte	3                       # Abbrev [3] 0x4d:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string6          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	23                      # DW_AT_decl_line
	.long	264                     # DW_AT_type
	.byte	3                       # Abbrev [3] 0x5b:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string7          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	23                      # DW_AT_decl_line
	.long	264                     # DW_AT_type
	.byte	3                       # Abbrev [3] 0x69:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string8          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	23                      # DW_AT_decl_line
	.long	264                     # DW_AT_type
	.byte	3                       # Abbrev [3] 0x77:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	92
	.long	.Linfo_string9          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	23                      # DW_AT_decl_line
	.long	269                     # DW_AT_type
	.byte	3                       # Abbrev [3] 0x85:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	88
	.long	.Linfo_string10         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	23                      # DW_AT_decl_line
	.long	269                     # DW_AT_type
	.byte	4                       # Abbrev [4] 0x93:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	84
	.long	.Linfo_string11         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	29                      # DW_AT_decl_line
	.long	276                     # DW_AT_type
	.byte	4                       # Abbrev [4] 0xa1:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	80
	.long	.Linfo_string13         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	30                      # DW_AT_decl_line
	.long	276                     # DW_AT_type
	.byte	4                       # Abbrev [4] 0xaf:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	76
	.long	.Linfo_string14         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	31                      # DW_AT_decl_line
	.long	276                     # DW_AT_type
	.byte	4                       # Abbrev [4] 0xbd:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	72
	.long	.Linfo_string15         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	32                      # DW_AT_decl_line
	.long	276                     # DW_AT_type
	.byte	4                       # Abbrev [4] 0xcb:0xf DW_TAG_variable
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\240w"
	.long	.Linfo_string16         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	46                      # DW_AT_decl_line
	.long	283                     # DW_AT_type
	.byte	4                       # Abbrev [4] 0xda:0xf DW_TAG_variable
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\234w"
	.long	.Linfo_string18         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	48                      # DW_AT_decl_line
	.long	276                     # DW_AT_type
	.byte	4                       # Abbrev [4] 0xe9:0xf DW_TAG_variable
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\230w"
	.long	.Linfo_string19         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	49                      # DW_AT_decl_line
	.long	276                     # DW_AT_type
	.byte	4                       # Abbrev [4] 0xf8:0xf DW_TAG_variable
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\224w"
	.long	.Linfo_string20         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	50                      # DW_AT_decl_line
	.long	276                     # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	5                       # Abbrev [5] 0x108:0x5 DW_TAG_pointer_type
	.long	269                     # DW_AT_type
	.byte	6                       # Abbrev [6] 0x10d:0x7 DW_TAG_base_type
	.long	.Linfo_string5          # DW_AT_name
	.byte	4                       # DW_AT_encoding
	.byte	4                       # DW_AT_byte_size
	.byte	6                       # Abbrev [6] 0x114:0x7 DW_TAG_base_type
	.long	.Linfo_string12         # DW_AT_name
	.byte	5                       # DW_AT_encoding
	.byte	4                       # DW_AT_byte_size
	.byte	7                       # Abbrev [7] 0x11b:0xd DW_TAG_array_type
	.long	269                     # DW_AT_type
	.byte	8                       # Abbrev [8] 0x120:0x7 DW_TAG_subrange_type
	.long	296                     # DW_AT_type
	.short	256                     # DW_AT_count
	.byte	0                       # End Of Children Mark
	.byte	9                       # Abbrev [9] 0x128:0x7 DW_TAG_base_type
	.long	.Linfo_string17         # DW_AT_name
	.byte	8                       # DW_AT_byte_size
	.byte	7                       # DW_AT_encoding
	.byte	0                       # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_macinfo,"",@progbits
	.byte	0                       # End Of Macro List Mark
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end0-.LpubNames_begin0 # Length of Public Names Info
.LpubNames_begin0:
	.short	2                       # DWARF Version
	.long	.Lcu_begin0             # Offset of Compilation Unit Info
	.long	304                     # Compilation Unit Length
	.long	42                      # DIE offset
	.asciz	"mm2"                   # External Name
	.long	0                       # End Mark
.LpubNames_end0:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end0-.LpubTypes_begin0 # Length of Public Types Info
.LpubTypes_begin0:
	.short	2                       # DWARF Version
	.long	.Lcu_begin0             # Offset of Compilation Unit Info
	.long	304                     # Compilation Unit Length
	.long	269                     # DIE offset
	.asciz	"float"                 # External Name
	.long	276                     # DIE offset
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
