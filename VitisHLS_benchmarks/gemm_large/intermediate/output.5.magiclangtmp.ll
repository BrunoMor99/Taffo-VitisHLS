; ModuleID = '/home/bruno/Desktop/benchmarks/gemm_large/intermediate/output.4.magiclangtmp.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.global_ctors = appending global [0 x { i32, void ()*, i8* }] zeroinitializer, !taffo.structinfo !0
@.str = private unnamed_addr constant [9 x i8] c"scalar()\00", section "llvm.metadata", !taffo.info !3
@.str.1 = private unnamed_addr constant [15 x i8] c"gemm_taffoin.c\00", section "llvm.metadata", !taffo.info !5
@.str.2 = private unnamed_addr constant [37 x i8] c"target('D') scalar(range(-160, 160))\00", section "llvm.metadata", !taffo.info !5
@.str.3 = private unnamed_addr constant [25 x i8] c"scalar(range(-160, 160))\00", section "llvm.metadata", !taffo.info !3
@.str.4 = private unnamed_addr constant [25 x i8] c"scalar(range(-100, 100))\00", section "llvm.metadata", !taffo.info !3
@.str.5 = private unnamed_addr constant [25 x i8] c"scalar(range(-200, 200))\00", section "llvm.metadata", !taffo.info !3

; Function Attrs: nounwind
define float @mm(float %gamma) #0 !dbg !16 !fpga.function.pragma !20 !taffo.start !23 !taffo.funinfo !24 {
entry:
  %gamma.addr = alloca float, align 4
  %ni = alloca i32, align 4, !taffo.info !25
  %nj = alloca i32, align 4, !taffo.info !25
  %nk = alloca i32, align 4, !taffo.info !25
  %i = alloca i32, align 4, !taffo.info !27
  %j = alloca i32, align 4, !taffo.info !27
  %k = alloca i32, align 4, !taffo.info !29
  %A.u3_29fixp = alloca [256 x i32], align 4, !taffo.info !31
  %B.u2_30fixp = alloca [256 x i32], align 4, !taffo.info !34
  %D.s9_23fixp = alloca [256 x i32], align 4, !taffo.info !36, !taffo.target !39
  %alpha.u2_30fixp = alloca i32, align 4, !taffo.info !40
  %beta.u2_30fixp = alloca i32, align 4, !taffo.info !42
  %fg.s9_23fixp = alloca i32, align 4, !taffo.info !36
  %tmp.s9_23fixp = alloca i32, align 4, !taffo.info !36
  %sum.s8_24fixp = alloca i32, align 4, !taffo.info !44
  %z.s9_23fixp = alloca i32, align 4, !taffo.info !47
  %ii = alloca i32, align 4, !taffo.info !49
  %jj = alloca i32, align 4, !taffo.info !49
  store float %gamma, float* %gamma.addr, align 4
  call void @llvm.dbg.declare(metadata float* %gamma.addr, metadata !51, metadata !DIExpression()), !dbg !52
  %0 = bitcast i32* %ni to i8*, !dbg !53
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #3, !dbg !53
  call void @llvm.dbg.declare(metadata i32* %ni, metadata !54, metadata !DIExpression()), !dbg !56
  store i32 16, i32* %ni, align 4, !dbg !56
  %1 = bitcast i32* %nj to i8*, !dbg !57
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #3, !dbg !57
  call void @llvm.dbg.declare(metadata i32* %nj, metadata !58, metadata !DIExpression()), !dbg !59
  store i32 16, i32* %nj, align 4, !dbg !59
  %2 = bitcast i32* %nk to i8*, !dbg !60
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #3, !dbg !60
  call void @llvm.dbg.declare(metadata i32* %nk, metadata !61, metadata !DIExpression()), !dbg !62
  store i32 16, i32* %nk, align 4, !dbg !62
  %3 = bitcast i32* %i to i8*, !dbg !63
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #3, !dbg !63
  call void @llvm.dbg.declare(metadata i32* %i, metadata !64, metadata !DIExpression()), !dbg !65
  %4 = bitcast i32* %j to i8*, !dbg !63
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #3, !dbg !63
  call void @llvm.dbg.declare(metadata i32* %j, metadata !66, metadata !DIExpression()), !dbg !67
  %5 = bitcast i32* %k to i8*, !dbg !63
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #3, !dbg !63
  call void @llvm.dbg.declare(metadata i32* %k, metadata !68, metadata !DIExpression()), !dbg !69
  %6 = bitcast [256 x i32]* %A.u3_29fixp to i8*, !dbg !70, !taffo.info !71
  %7 = bitcast i8* %6 to i8*, !taffo.info !71
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* %7) #3, !dbg !70, !taffo.info !72
  call void @llvm.dbg.declare(metadata !9, metadata !73, metadata !DIExpression()), !dbg !77
  %8 = bitcast [256 x i32]* %B.u2_30fixp to i8*, !dbg !78, !taffo.info !79
  %9 = bitcast i8* %8 to i8*, !taffo.info !79
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* %9) #3, !dbg !78, !taffo.info !72
  call void @llvm.dbg.declare(metadata !9, metadata !80, metadata !DIExpression()), !dbg !81
  %10 = bitcast [256 x i32]* %D.s9_23fixp to i8*, !dbg !82, !taffo.info !83, !taffo.target !39
  %11 = bitcast i8* %10 to i8*, !taffo.info !83, !taffo.target !39
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* %11) #3, !dbg !82, !taffo.info !72, !taffo.target !39
  call void @llvm.dbg.declare(metadata !9, metadata !84, metadata !DIExpression()), !dbg !85
  br label %VITIS_LOOP_52_1, !dbg !82

VITIS_LOOP_52_1:                                  ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !86
  br label %for.cond, !dbg !88

for.cond:                                         ; preds = %for.inc11, %VITIS_LOOP_52_1
  %12 = load i32, i32* %i, align 4, !dbg !89, !taffo.info !27
  %13 = load i32, i32* %ni, align 4, !dbg !91, !taffo.info !25
  %cmp = icmp slt i32 %12, %13, !dbg !92, !taffo.info !93
  br i1 %cmp, label %for.body, label %for.end13, !dbg !95

for.body:                                         ; preds = %for.cond
  br label %VITIS_LOOP_53_2, !dbg !96

VITIS_LOOP_53_2:                                  ; preds = %for.body
  store i32 0, i32* %j, align 4, !dbg !97
  br label %for.cond4, !dbg !100

for.cond4:                                        ; preds = %for.inc, %VITIS_LOOP_53_2
  %14 = load i32, i32* %j, align 4, !dbg !101, !taffo.info !27
  %15 = load i32, i32* %nk, align 4, !dbg !103, !taffo.info !25
  %cmp5 = icmp slt i32 %14, %15, !dbg !104, !taffo.info !93
  br i1 %cmp5, label %for.body6, label %for.end, !dbg !105

for.body6:                                        ; preds = %for.cond4
  %16 = load i32, i32* %i, align 4, !dbg !106, !taffo.info !27
  %17 = load i32, i32* %j, align 4, !dbg !108, !taffo.info !27
  %mul = mul nsw i32 %16, %17, !dbg !109, !taffo.info !1
  %add = add nsw i32 %mul, 1, !dbg !110, !taffo.info !93
  %18 = load i32, i32* %ni, align 4, !dbg !111, !taffo.info !25
  %rem = srem i32 %add, %18, !dbg !112, !taffo.info !113
  %conv = sitofp i32 %rem to float, !dbg !115, !taffo.info !113
  %mul7 = fmul float 5.000000e+00, %conv, !dbg !116, !taffo.info !117
  %19 = load i32, i32* %ni, align 4, !dbg !119, !taffo.info !25
  %conv8 = sitofp i32 %19 to float, !dbg !119, !taffo.info !25
  %div = fdiv float %mul7, %conv8, !dbg !120, !taffo.info !121
  %20 = fmul float 0x41C0000000000000, %div, !dbg !122, !taffo.info !121
  %21 = fptoui float %20 to i32, !dbg !122, !taffo.info !121
  %22 = load i32, i32* %i, align 4, !dbg !122, !taffo.info !27
  %23 = load i32, i32* %nk, align 4, !dbg !123, !taffo.info !25
  %mul9 = mul nsw i32 %22, %23, !dbg !124, !taffo.info !1
  %24 = load i32, i32* %j, align 4, !dbg !125, !taffo.info !27
  %add10 = add nsw i32 %mul9, %24, !dbg !126, !taffo.info !1
  %idxprom = sext i32 %add10 to i64, !dbg !127, !taffo.info !1
  %arrayidx.u3_29fixp = getelementptr inbounds [256 x i32], [256 x i32]* %A.u3_29fixp, i64 0, i64 %idxprom, !dbg !127, !taffo.info !31
  store i32 %21, i32* %arrayidx.u3_29fixp, align 4, !dbg !128, !taffo.info !72
  br label %for.inc, !dbg !129

for.inc:                                          ; preds = %for.body6
  %25 = load i32, i32* %j, align 4, !dbg !130, !taffo.info !27
  %inc = add nsw i32 %25, 1, !dbg !130, !taffo.info !93
  store i32 %inc, i32* %j, align 4, !dbg !130
  br label %for.cond4, !dbg !131, !llvm.loop !132

for.end:                                          ; preds = %for.cond4
  br label %for.inc11, !dbg !135

for.inc11:                                        ; preds = %for.end
  %26 = load i32, i32* %i, align 4, !dbg !136, !taffo.info !27
  %inc12 = add nsw i32 %26, 1, !dbg !136, !taffo.info !93
  store i32 %inc12, i32* %i, align 4, !dbg !136
  br label %for.cond, !dbg !137, !llvm.loop !138

for.end13:                                        ; preds = %for.cond
  br label %VITIS_LOOP_57_3, !dbg !139

VITIS_LOOP_57_3:                                  ; preds = %for.end13
  store i32 0, i32* %i, align 4, !dbg !141
  br label %for.cond14, !dbg !143

for.cond14:                                       ; preds = %for.inc34, %VITIS_LOOP_57_3
  %27 = load i32, i32* %i, align 4, !dbg !144, !taffo.info !27
  %28 = load i32, i32* %nk, align 4, !dbg !146, !taffo.info !25
  %cmp15 = icmp slt i32 %27, %28, !dbg !147, !taffo.info !93
  br i1 %cmp15, label %for.body16, label %for.end36, !dbg !148

for.body16:                                       ; preds = %for.cond14
  br label %VITIS_LOOP_58_4, !dbg !149

VITIS_LOOP_58_4:                                  ; preds = %for.body16
  store i32 0, i32* %j, align 4, !dbg !150
  br label %for.cond17, !dbg !153

for.cond17:                                       ; preds = %for.inc31, %VITIS_LOOP_58_4
  %29 = load i32, i32* %j, align 4, !dbg !154, !taffo.info !27
  %30 = load i32, i32* %nj, align 4, !dbg !156, !taffo.info !25
  %cmp18 = icmp slt i32 %29, %30, !dbg !157, !taffo.info !93
  br i1 %cmp18, label %for.body19, label %for.end33, !dbg !158

for.body19:                                       ; preds = %for.cond17
  %31 = load i32, i32* %i, align 4, !dbg !159, !taffo.info !27
  %32 = load i32, i32* %j, align 4, !dbg !161, !taffo.info !27
  %add20 = add nsw i32 %32, 1, !dbg !162, !taffo.info !163
  %mul21 = mul nsw i32 %31, %add20, !dbg !165, !taffo.info !166
  %33 = load i32, i32* %nj, align 4, !dbg !168, !taffo.info !25
  %rem22 = srem i32 %mul21, %33, !dbg !169, !taffo.info !113
  %conv23 = sitofp i32 %rem22 to float, !dbg !170, !taffo.info !113
  %mul24 = fmul float 3.000000e+00, %conv23, !dbg !171, !taffo.info !172
  %34 = load i32, i32* %nj, align 4, !dbg !174, !taffo.info !25
  %conv25 = sitofp i32 %34 to float, !dbg !174, !taffo.info !25
  %div26 = fdiv float %mul24, %conv25, !dbg !175, !taffo.info !27
  %35 = fmul float 0x41D0000000000000, %div26, !dbg !176, !taffo.info !27
  %36 = fptoui float %35 to i32, !dbg !176, !taffo.info !27
  %37 = load i32, i32* %i, align 4, !dbg !176, !taffo.info !27
  %38 = load i32, i32* %nj, align 4, !dbg !177, !taffo.info !25
  %mul27 = mul nsw i32 %37, %38, !dbg !178, !taffo.info !179
  %39 = load i32, i32* %j, align 4, !dbg !181, !taffo.info !27
  %add28 = add nsw i32 %mul27, %39, !dbg !182, !taffo.info !183
  %idxprom29 = sext i32 %add28 to i64, !dbg !185, !taffo.info !183
  %arrayidx30.u2_30fixp = getelementptr inbounds [256 x i32], [256 x i32]* %B.u2_30fixp, i64 0, i64 %idxprom29, !dbg !185, !taffo.info !34
  store i32 %36, i32* %arrayidx30.u2_30fixp, align 4, !dbg !186, !taffo.info !72
  br label %for.inc31, !dbg !187

for.inc31:                                        ; preds = %for.body19
  %40 = load i32, i32* %j, align 4, !dbg !188, !taffo.info !27
  %inc32 = add nsw i32 %40, 1, !dbg !188, !taffo.info !163
  store i32 %inc32, i32* %j, align 4, !dbg !188
  br label %for.cond17, !dbg !189, !llvm.loop !190

for.end33:                                        ; preds = %for.cond17
  br label %for.inc34, !dbg !193

for.inc34:                                        ; preds = %for.end33
  %41 = load i32, i32* %i, align 4, !dbg !194, !taffo.info !27
  %inc35 = add nsw i32 %41, 1, !dbg !194, !taffo.info !163
  store i32 %inc35, i32* %i, align 4, !dbg !194
  br label %for.cond14, !dbg !195, !llvm.loop !196

for.end36:                                        ; preds = %for.cond14
  br label %VITIS_LOOP_62_5, !dbg !197

VITIS_LOOP_62_5:                                  ; preds = %for.end36
  store i32 0, i32* %i, align 4, !dbg !199
  br label %for.cond37, !dbg !201

for.cond37:                                       ; preds = %for.inc57, %VITIS_LOOP_62_5
  %42 = load i32, i32* %i, align 4, !dbg !202, !taffo.info !27
  %43 = load i32, i32* %ni, align 4, !dbg !204, !taffo.info !25
  %cmp38 = icmp slt i32 %42, %43, !dbg !205, !taffo.info !93
  br i1 %cmp38, label %for.body39, label %for.end59, !dbg !206

for.body39:                                       ; preds = %for.cond37
  br label %VITIS_LOOP_63_6, !dbg !207

VITIS_LOOP_63_6:                                  ; preds = %for.body39
  store i32 0, i32* %j, align 4, !dbg !208
  br label %for.cond40, !dbg !211

for.cond40:                                       ; preds = %for.inc54, %VITIS_LOOP_63_6
  %44 = load i32, i32* %j, align 4, !dbg !212, !taffo.info !27
  %45 = load i32, i32* %nj, align 4, !dbg !214, !taffo.info !25
  %cmp41 = icmp slt i32 %44, %45, !dbg !215, !taffo.info !93
  br i1 %cmp41, label %for.body42, label %for.end56, !dbg !216

for.body42:                                       ; preds = %for.cond40
  %46 = load i32, i32* %i, align 4, !dbg !217, !taffo.info !27
  %47 = load i32, i32* %j, align 4, !dbg !219, !taffo.info !27
  %add43 = add nsw i32 %47, 2, !dbg !220, !taffo.info !221
  %mul44 = mul nsw i32 %46, %add43, !dbg !223, !taffo.info !224
  %48 = load i32, i32* %nk, align 4, !dbg !226, !taffo.info !25
  %rem45 = srem i32 %mul44, %48, !dbg !227, !taffo.info !113
  %conv46 = sitofp i32 %rem45 to float, !dbg !228, !taffo.info !113
  %mul47 = fmul float 5.000000e+00, %conv46, !dbg !229, !taffo.info !117
  %49 = load i32, i32* %nk, align 4, !dbg !230, !taffo.info !25
  %conv48 = sitofp i32 %49 to float, !dbg !230, !taffo.info !25
  %div49 = fdiv float %mul47, %conv48, !dbg !231, !taffo.info !121
  %50 = fmul float 0x4160000000000000, %div49, !dbg !232, !taffo.info !121
  %51 = fptosi float %50 to i32, !dbg !232, !taffo.info !121
  %52 = load i32, i32* %i, align 4, !dbg !232, !taffo.info !27
  %53 = load i32, i32* %nj, align 4, !dbg !233, !taffo.info !25
  %mul50 = mul nsw i32 %52, %53, !dbg !234, !taffo.info !172
  %54 = load i32, i32* %j, align 4, !dbg !235, !taffo.info !27
  %add51 = add nsw i32 %mul50, %54, !dbg !236, !taffo.info !237
  %idxprom52 = sext i32 %add51 to i64, !dbg !239, !taffo.info !237
  %arrayidx53.s9_23fixp = getelementptr inbounds [256 x i32], [256 x i32]* %D.s9_23fixp, i64 0, i64 %idxprom52, !dbg !239, !taffo.info !240, !taffo.target !39
  store i32 %51, i32* %arrayidx53.s9_23fixp, align 4, !dbg !242, !taffo.info !72, !taffo.target !39
  br label %for.inc54, !dbg !243

for.inc54:                                        ; preds = %for.body42
  %55 = load i32, i32* %j, align 4, !dbg !244, !taffo.info !27
  %inc55 = add nsw i32 %55, 1, !dbg !244, !taffo.info !245
  store i32 %inc55, i32* %j, align 4, !dbg !244
  br label %for.cond40, !dbg !247, !llvm.loop !248

for.end56:                                        ; preds = %for.cond40
  br label %for.inc57, !dbg !251

for.inc57:                                        ; preds = %for.end56
  %56 = load i32, i32* %i, align 4, !dbg !252, !taffo.info !27
  %inc58 = add nsw i32 %56, 1, !dbg !252, !taffo.info !245
  store i32 %inc58, i32* %i, align 4, !dbg !252
  br label %for.cond37, !dbg !253, !llvm.loop !254

for.end59:                                        ; preds = %for.cond37
  call void @llvm.dbg.declare(metadata !9, metadata !257, metadata !DIExpression()), !dbg !258
  store i32 1288490240, i32* %alpha.u2_30fixp, align 4, !dbg !258, !taffo.info !72
  call void @llvm.dbg.declare(metadata !9, metadata !259, metadata !DIExpression()), !dbg !260
  store i32 1610612736, i32* %beta.u2_30fixp, align 4, !dbg !260, !taffo.info !72
  call void @llvm.dbg.declare(metadata !9, metadata !261, metadata !DIExpression()), !dbg !262
  %57 = load float, float* %gamma.addr, align 4, !dbg !263
  %58 = fmul float 0x4160000000000000, %57, !dbg !262, !taffo.info !72
  %59 = fptosi float %58 to i32, !dbg !262, !taffo.info !72
  store i32 %59, i32* %fg.s9_23fixp, align 4, !dbg !262, !taffo.info !72
  call void @llvm.dbg.declare(metadata !9, metadata !264, metadata !DIExpression()), !dbg !265
  store i32 0, i32* %tmp.s9_23fixp, align 4, !dbg !265, !taffo.info !72
  call void @llvm.dbg.declare(metadata !9, metadata !266, metadata !DIExpression()), !dbg !267
  store i32 0, i32* %sum.s8_24fixp, align 4, !dbg !267, !taffo.info !72
  call void @llvm.dbg.declare(metadata !9, metadata !268, metadata !DIExpression()), !dbg !269
  call void @llvm.dbg.declare(metadata i32* %ii, metadata !270, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.declare(metadata i32* %jj, metadata !272, metadata !DIExpression()), !dbg !273
  br label %VITIS_LOOP_76_7, !dbg !274

VITIS_LOOP_76_7:                                  ; preds = %for.end59
  store i32 0, i32* %ii, align 4, !dbg !275
  br label %for.cond66, !dbg !277

for.cond66:                                       ; preds = %for.inc110, %VITIS_LOOP_76_7
  %60 = load i32, i32* %ii, align 4, !dbg !278, !taffo.info !49
  %cmp67 = icmp slt i32 %60, 16, !dbg !280, !taffo.info !93
  br i1 %cmp67, label %for.body68, label %for.end112, !dbg !281

for.body68:                                       ; preds = %for.cond66
  br label %VITIS_LOOP_78_8, !dbg !282

VITIS_LOOP_78_8:                                  ; preds = %for.body68
  store i32 0, i32* %jj, align 4, !dbg !283
  br label %for.cond69, !dbg !286

for.cond69:                                       ; preds = %for.inc107, %VITIS_LOOP_78_8
  %61 = load i32, i32* %jj, align 4, !dbg !287, !taffo.info !49
  %cmp70 = icmp slt i32 %61, 16, !dbg !289, !taffo.info !93
  br i1 %cmp70, label %for.body71, label %for.end109, !dbg !290

for.body71:                                       ; preds = %for.cond69
  store i32 0, i32* %tmp.s9_23fixp, align 4, !dbg !291, !taffo.info !72
  br label %VITIS_LOOP_82_9, !dbg !293

VITIS_LOOP_82_9:                                  ; preds = %for.body71
  store i32 0, i32* %k, align 4, !dbg !294
  br label %for.cond72, !dbg !296

for.cond72:                                       ; preds = %for.inc86, %VITIS_LOOP_82_9
  %62 = load i32, i32* %k, align 4, !dbg !297, !taffo.info !29
  %cmp73 = icmp slt i32 %62, 16, !dbg !299, !taffo.info !93
  br i1 %cmp73, label %for.body74, label %for.end88, !dbg !300

for.body74:                                       ; preds = %for.cond72
  %63 = load i32, i32* %ii, align 4, !dbg !301, !taffo.info !49
  %mul75 = mul nsw i32 %63, 16, !dbg !303, !taffo.info !113
  %64 = load i32, i32* %k, align 4, !dbg !304, !taffo.info !29
  %add76 = add nsw i32 %mul75, %64, !dbg !305, !taffo.info !113
  %idxprom77 = sext i32 %add76 to i64, !dbg !306, !taffo.info !113
  %arrayidx78.u3_29fixp = getelementptr inbounds [256 x i32], [256 x i32]* %A.u3_29fixp, i64 0, i64 %idxprom77, !dbg !306, !taffo.info !31
  %u3_29fixp = load i32, i32* %arrayidx78.u3_29fixp, align 4, !dbg !306, !taffo.info !307
  %65 = load i32, i32* %k, align 4, !dbg !309, !taffo.info !29
  %mul79 = mul nsw i32 %65, 16, !dbg !310, !taffo.info !1
  %66 = load i32, i32* %jj, align 4, !dbg !311, !taffo.info !49
  %add80 = add nsw i32 %mul79, %66, !dbg !312, !taffo.info !29
  %idxprom81 = sext i32 %add80 to i64, !dbg !313, !taffo.info !29
  %arrayidx82.u2_30fixp = getelementptr inbounds [256 x i32], [256 x i32]* %B.u2_30fixp, i64 0, i64 %idxprom81, !dbg !313, !taffo.info !34
  %u2_30fixp6 = load i32, i32* %arrayidx82.u2_30fixp, align 4, !dbg !313, !taffo.info !314
  %67 = zext i32 %u3_29fixp to i64, !dbg !315, !taffo.info !307
  %68 = zext i32 %u2_30fixp6 to i64, !dbg !315, !taffo.info !314
  %69 = mul i64 %67, %68, !dbg !315, !taffo.info !316
  %70 = lshr i64 %69, 32, !dbg !315, !taffo.info !316
  %mul83.u5_27fixp = trunc i64 %70 to i32, !dbg !318, !taffo.info !319
  %u2_30fixp = load i32, i32* %alpha.u2_30fixp, align 4, !dbg !315, !taffo.info !40
  %71 = zext i32 %mul83.u5_27fixp to i64, !dbg !321, !taffo.info !319
  %72 = zext i32 %u2_30fixp to i64, !dbg !321, !taffo.info !40
  %73 = mul i64 %71, %72, !dbg !321, !taffo.info !322
  %74 = lshr i64 %73, 30, !dbg !321, !taffo.info !322
  %mul84.u5_27fixp = trunc i64 %74 to i32, !dbg !324, !taffo.info !325
  %75 = lshr i32 %mul84.u5_27fixp, 4, !dbg !321, !taffo.info !325
  store i32 %75, i32* %z.s9_23fixp, align 4, !dbg !321, !taffo.info !72
  %s9_23fixp2 = load i32, i32* %tmp.s9_23fixp, align 4, !dbg !327, !taffo.info !328
  %76 = ashr i32 %s9_23fixp2, 1, !dbg !330, !taffo.info !328
  %s9_23fixp4 = load i32, i32* %z.s9_23fixp, align 4, !dbg !330, !taffo.info !331
  %77 = ashr i32 %s9_23fixp4, 1, !dbg !332, !taffo.info !331
  %add85.s10_22fixp = add i32 %76, %77, !dbg !332, !taffo.info !333
  %78 = shl i32 %add85.s10_22fixp, 1, !dbg !335, !taffo.info !333
  store i32 %78, i32* %tmp.s9_23fixp, align 4, !dbg !335, !taffo.info !72
  br label %for.inc86, !dbg !336

for.inc86:                                        ; preds = %for.body74
  %79 = load i32, i32* %k, align 4, !dbg !337, !taffo.info !29
  %inc87 = add nsw i32 %79, 1, !dbg !337, !taffo.info !93
  store i32 %inc87, i32* %k, align 4, !dbg !337
  br label %for.cond72, !dbg !338, !llvm.loop !339

for.end88:                                        ; preds = %for.cond72
  %80 = load i32, i32* %ii, align 4, !dbg !344, !taffo.info !49
  %mul89 = mul nsw i32 %80, 16, !dbg !345, !taffo.info !113
  %81 = load i32, i32* %jj, align 4, !dbg !346, !taffo.info !49
  %add90 = add nsw i32 %mul89, %81, !dbg !347, !taffo.info !113
  %idxprom91 = sext i32 %add90 to i64, !dbg !348, !taffo.info !113
  %arrayidx92.s9_23fixp = getelementptr inbounds [256 x i32], [256 x i32]* %D.s9_23fixp, i64 0, i64 %idxprom91, !dbg !348, !taffo.info !240, !taffo.target !39
  %s9_23fixp9 = load i32, i32* %arrayidx92.s9_23fixp, align 4, !dbg !348, !taffo.info !240, !taffo.target !39
  %u2_30fixp5 = load i32, i32* %beta.u2_30fixp, align 4, !dbg !349, !taffo.info !350
  %82 = sext i32 %s9_23fixp9 to i64, !dbg !352, !taffo.info !240, !taffo.target !39
  %83 = zext i32 %u2_30fixp5 to i64, !dbg !352, !taffo.info !350
  %84 = mul i64 %82, %83, !dbg !352, !taffo.info !353, !taffo.target !39
  %85 = lshr i64 %84, 25, !dbg !352, !taffo.info !353, !taffo.target !39
  %mul93.u4_28fixp = trunc i64 %85 to i32, !dbg !355, !taffo.info !356, !taffo.target !39
  %86 = lshr i32 %mul93.u4_28fixp, 5, !dbg !352, !taffo.info !356, !taffo.target !39
  %87 = load i32, i32* %ii, align 4, !dbg !352, !taffo.info !49
  %mul94 = mul nsw i32 %87, 16, !dbg !358, !taffo.info !113
  %88 = load i32, i32* %jj, align 4, !dbg !359, !taffo.info !49
  %add95 = add nsw i32 %mul94, %88, !dbg !360, !taffo.info !113
  %idxprom96 = sext i32 %add95 to i64, !dbg !361, !taffo.info !113
  %arrayidx97.s9_23fixp = getelementptr inbounds [256 x i32], [256 x i32]* %D.s9_23fixp, i64 0, i64 %idxprom96, !dbg !361, !taffo.info !240, !taffo.target !39
  store i32 %86, i32* %arrayidx97.s9_23fixp, align 4, !dbg !362, !taffo.info !72, !taffo.target !39
  %89 = load i32, i32* %ii, align 4, !dbg !363, !taffo.info !49
  %mul98 = mul nsw i32 %89, 16, !dbg !364, !taffo.info !113
  %90 = load i32, i32* %jj, align 4, !dbg !365, !taffo.info !49
  %add99 = add nsw i32 %mul98, %90, !dbg !366, !taffo.info !113
  %idxprom100 = sext i32 %add99 to i64, !dbg !367, !taffo.info !113
  %arrayidx101.s9_23fixp = getelementptr inbounds [256 x i32], [256 x i32]* %D.s9_23fixp, i64 0, i64 %idxprom100, !dbg !367, !taffo.info !240, !taffo.target !39
  %s9_23fixp8 = load i32, i32* %arrayidx101.s9_23fixp, align 4, !dbg !367, !taffo.info !240, !taffo.target !39
  %s9_23fixp = load i32, i32* %tmp.s9_23fixp, align 4, !dbg !368, !taffo.info !36
  %add102.s9_23fixp = add i32 %s9_23fixp8, %s9_23fixp, !dbg !369, !taffo.info !240
  %91 = load i32, i32* %ii, align 4, !dbg !370, !taffo.info !49
  %mul103 = mul nsw i32 %91, 16, !dbg !371, !taffo.info !113
  %92 = load i32, i32* %jj, align 4, !dbg !372, !taffo.info !49
  %add104 = add nsw i32 %mul103, %92, !dbg !373, !taffo.info !113
  %idxprom105 = sext i32 %add104 to i64, !dbg !374, !taffo.info !113
  %arrayidx106.s9_23fixp = getelementptr inbounds [256 x i32], [256 x i32]* %D.s9_23fixp, i64 0, i64 %idxprom105, !dbg !374, !taffo.info !240, !taffo.target !39
  store i32 %add102.s9_23fixp, i32* %arrayidx106.s9_23fixp, align 4, !dbg !375, !taffo.info !72, !taffo.target !39
  br label %for.inc107, !dbg !376

for.inc107:                                       ; preds = %for.end88
  %93 = load i32, i32* %jj, align 4, !dbg !377, !taffo.info !49
  %inc108 = add nsw i32 %93, 1, !dbg !377, !taffo.info !93
  store i32 %inc108, i32* %jj, align 4, !dbg !377
  br label %for.cond69, !dbg !378, !llvm.loop !379

for.end109:                                       ; preds = %for.cond69
  br label %for.inc110, !dbg !384

for.inc110:                                       ; preds = %for.end109
  %94 = load i32, i32* %ii, align 4, !dbg !385, !taffo.info !49
  %inc111 = add nsw i32 %94, 1, !dbg !385, !taffo.info !93
  store i32 %inc111, i32* %ii, align 4, !dbg !385
  br label %for.cond66, !dbg !386, !llvm.loop !387

for.end112:                                       ; preds = %for.cond66
  br label %VITIS_LOOP_92_10, !dbg !388

VITIS_LOOP_92_10:                                 ; preds = %for.end112
  store i32 0, i32* %ii, align 4, !dbg !392
  br label %for.cond113, !dbg !394

for.cond113:                                      ; preds = %for.inc127, %VITIS_LOOP_92_10
  %95 = load i32, i32* %ii, align 4, !dbg !395, !taffo.info !49
  %cmp114 = icmp slt i32 %95, 16, !dbg !397, !taffo.info !93
  br i1 %cmp114, label %for.body115, label %for.end129, !dbg !398

for.body115:                                      ; preds = %for.cond113
  br label %VITIS_LOOP_95_11, !dbg !399

VITIS_LOOP_95_11:                                 ; preds = %for.body115
  store i32 0, i32* %jj, align 4, !dbg !400
  br label %for.cond116, !dbg !403

for.cond116:                                      ; preds = %for.inc124, %VITIS_LOOP_95_11
  %96 = load i32, i32* %jj, align 4, !dbg !404, !taffo.info !49
  %cmp117 = icmp slt i32 %96, 16, !dbg !406, !taffo.info !93
  br i1 %cmp117, label %for.body118, label %for.end126, !dbg !407

for.body118:                                      ; preds = %for.cond116
  %97 = load i32, i32* %ii, align 4, !dbg !408, !taffo.info !49
  %mul119 = mul nsw i32 %97, 16, !dbg !410, !taffo.info !179
  %98 = load i32, i32* %jj, align 4, !dbg !411, !taffo.info !49
  %add120 = add nsw i32 %mul119, %98, !dbg !412, !taffo.info !183
  %idxprom121 = sext i32 %add120 to i64, !dbg !413, !taffo.info !183
  %arrayidx122.s9_23fixp = getelementptr inbounds [256 x i32], [256 x i32]* %D.s9_23fixp, i64 0, i64 %idxprom121, !dbg !413, !taffo.info !240, !taffo.target !39
  %s9_23fixp7 = load i32, i32* %arrayidx122.s9_23fixp, align 4, !dbg !413, !taffo.info !414, !taffo.target !39
  %99 = ashr i32 %s9_23fixp7, 1, !dbg !415, !taffo.info !414, !taffo.target !39
  %s8_24fixp1 = load i32, i32* %sum.s8_24fixp, align 4, !dbg !415, !taffo.info !416
  %100 = ashr i32 %s8_24fixp1, 2, !dbg !415, !taffo.info !416
  %add123.s10_22fixp = add i32 %100, %99, !dbg !415, !taffo.info !417
  %101 = shl i32 %add123.s10_22fixp, 2, !dbg !415, !taffo.info !417
  store i32 %101, i32* %sum.s8_24fixp, align 4, !dbg !415, !taffo.info !72
  br label %for.inc124, !dbg !419

for.inc124:                                       ; preds = %for.body118
  %102 = load i32, i32* %jj, align 4, !dbg !420, !taffo.info !49
  %inc125 = add nsw i32 %102, 1, !dbg !420, !taffo.info !163
  store i32 %inc125, i32* %jj, align 4, !dbg !420
  br label %for.cond116, !dbg !421, !llvm.loop !422

for.end126:                                       ; preds = %for.cond116
  br label %for.inc127, !dbg !425

for.inc127:                                       ; preds = %for.end126
  %103 = load i32, i32* %ii, align 4, !dbg !426, !taffo.info !49
  %inc128 = add nsw i32 %103, 1, !dbg !426, !taffo.info !163
  store i32 %inc128, i32* %ii, align 4, !dbg !426
  br label %for.cond113, !dbg !427, !llvm.loop !428

for.end129:                                       ; preds = %for.cond113
  %s8_24fixp = load i32, i32* %sum.s8_24fixp, align 4, !dbg !433, !taffo.info !44
  %s9_23fixp3 = load i32, i32* %fg.s9_23fixp, align 4, !dbg !434, !taffo.info !36
  %104 = sext i32 %s8_24fixp to i64, !dbg !435, !taffo.info !44
  %105 = sext i32 %s9_23fixp3 to i64, !dbg !435, !taffo.info !36
  %106 = mul i64 %104, %105, !dbg !435, !taffo.info !436
  %107 = ashr i64 %106, 30, !dbg !435, !taffo.info !436
  %mul130.s15_17fixp = trunc i64 %107 to i32, !dbg !438, !taffo.info !439
  %108 = sitofp i32 %mul130.s15_17fixp to float, !dbg !435, !taffo.info !439
  %109 = fdiv float %108, 1.310720e+05, !dbg !435, !taffo.info !439
  %110 = bitcast [256 x i32]* %D.s9_23fixp to i8*, !dbg !435, !taffo.info !83, !taffo.target !39
  %111 = bitcast i8* %110 to i8*, !taffo.info !83, !taffo.target !39
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* %111) #3, !dbg !435, !taffo.info !72, !taffo.target !39
  %112 = bitcast [256 x i32]* %B.u2_30fixp to i8*, !dbg !435, !taffo.info !79
  %113 = bitcast i8* %112 to i8*, !taffo.info !79
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* %113) #3, !dbg !435, !taffo.info !72
  %114 = bitcast [256 x i32]* %A.u3_29fixp to i8*, !dbg !435, !taffo.info !71
  %115 = bitcast i8* %114 to i8*, !taffo.info !71
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* %115) #3, !dbg !435, !taffo.info !72
  %116 = bitcast i32* %k to i8*, !dbg !435, !taffo.info !29
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %116) #3, !dbg !435
  %117 = bitcast i32* %j to i8*, !dbg !435, !taffo.info !27
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %117) #3, !dbg !435
  %118 = bitcast i32* %i to i8*, !dbg !435, !taffo.info !27
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %118) #3, !dbg !435
  %119 = bitcast i32* %nk to i8*, !dbg !435, !taffo.info !25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %119) #3, !dbg !435
  %120 = bitcast i32* %nj to i8*, !dbg !435, !taffo.info !25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %120) #3, !dbg !435
  %121 = bitcast i32* %ni to i8*, !dbg !435, !taffo.info !25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %121) #3, !dbg !435
  ret float %109, !dbg !442, !taffo.info !443
}

; Function Attrs: nounwind readnone speculatable
declare !taffo.funinfo !444 void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare !taffo.funinfo !445 void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare !taffo.funinfo !446 void @llvm.var.annotation(i8*, i8*, i8*, i32) #3

; Function Attrs: argmemonly nounwind
declare !taffo.funinfo !445 void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.top.func"="mm" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!7}
!llvm.ident = !{!12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12}
!llvm.module.flags = !{!13, !14, !15}

!0 = !{!1, !1, !1}
!1 = !{i1 false, !2, i1 false, i1 false}
!2 = !{double 0.000000e+00, double 0.000000e+00}
!3 = !{i1 false, !4, i1 false, i1 false}
!4 = !{double 0.000000e+00, double 1.150000e+02}
!5 = !{i1 false, !6, i1 false, i1 false}
!6 = !{double 0.000000e+00, double 1.160000e+02}
!7 = distinct !DICompileUnit(language: DW_LANG_C99, file: !8, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !9, retainedTypes: !10)
!8 = !DIFile(filename: "/home/bruno/Desktop/benchmarks/gemm_large/proj_gemm/solution1/.autopilot/db/gemm_taffoin.pp.0.c", directory: "/home/bruno/Desktop/benchmarks/gemm_large")
!9 = !{}
!10 = !{!11}
!11 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!12 = !{!"clang version 7.0.0 "}
!13 = !{i32 2, !"Dwarf Version", i32 4}
!14 = !{i32 2, !"Debug Info Version", i32 0}
!15 = !{i32 1, !"wchar_size", i32 4}
!16 = distinct !DISubprogram(name: "mm", scope: !17, file: !17, line: 41, type: !18, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!17 = !DIFile(filename: "gemm_taffoin.c", directory: "/home/bruno/Desktop/benchmarks/gemm_large")
!18 = !DISubroutineType(types: !19)
!19 = !{!11, !11}
!20 = !{!21}
!21 = !{!"user"}
!22 = !DILocation(line: 41, column: 16, scope: !16)
!23 = !{i1 true}
!24 = !{i32 0, i1 false}
!25 = !{i1 false, !26, i1 false, i1 false}
!26 = !{double 1.600000e+01, double 1.600000e+01}
!27 = !{i1 false, !28, i1 false, i1 false}
!28 = !{double 0.000000e+00, double 3.000000e+00}
!29 = !{i1 false, !30, i1 false, i1 false}
!30 = !{double 0.000000e+00, double 1.000000e+00}
!31 = !{!32, !33, i1 false, i1 true}
!32 = !{!"fixp", i32 32, i32 29}
!33 = !{double 0.000000e+00, double 5.000000e+00}
!34 = !{!35, !28, i1 false, i1 true}
!35 = !{!"fixp", i32 32, i32 30}
!36 = !{!37, !38, i1 false, i1 true}
!37 = !{!"fixp", i32 -32, i32 23}
!38 = !{double -1.600000e+02, double 1.600000e+02}
!39 = !{!"D"}
!40 = !{!35, !41, i1 false, i1 true}
!41 = !{double 0x3FF3333340000000, double 0x3FF3333340000000}
!42 = !{!35, !43, i1 false, i1 true}
!43 = !{double 1.500000e+00, double 1.500000e+00}
!44 = !{!45, !46, i1 false, i1 true}
!45 = !{!"fixp", i32 -32, i32 24}
!46 = !{double -1.000000e+02, double 1.000000e+02}
!47 = !{!37, !48, i1 false, i1 true}
!48 = !{double -2.000000e+02, double 2.000000e+02}
!49 = !{i1 false, !50, i1 false, i1 false}
!50 = !{double 0.000000e+00, double 2.000000e+00}
!51 = !DILocalVariable(name: "gamma", arg: 1, scope: !16, file: !17, line: 41, type: !11)
!52 = !DILocation(line: 41, column: 53, scope: !16)
!53 = !DILocation(line: 44, column: 5, scope: !16)
!54 = !DILocalVariable(name: "ni", scope: !16, file: !17, line: 44, type: !55)
!55 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!56 = !DILocation(line: 44, column: 9, scope: !16)
!57 = !DILocation(line: 45, column: 5, scope: !16)
!58 = !DILocalVariable(name: "nj", scope: !16, file: !17, line: 45, type: !55)
!59 = !DILocation(line: 45, column: 9, scope: !16)
!60 = !DILocation(line: 46, column: 5, scope: !16)
!61 = !DILocalVariable(name: "nk", scope: !16, file: !17, line: 46, type: !55)
!62 = !DILocation(line: 46, column: 9, scope: !16)
!63 = !DILocation(line: 47, column: 5, scope: !16)
!64 = !DILocalVariable(name: "i", scope: !16, file: !17, line: 47, type: !55)
!65 = !DILocation(line: 47, column: 9, scope: !16)
!66 = !DILocalVariable(name: "j", scope: !16, file: !17, line: 47, type: !55)
!67 = !DILocation(line: 47, column: 12, scope: !16)
!68 = !DILocalVariable(name: "k", scope: !16, file: !17, line: 47, type: !55)
!69 = !DILocation(line: 47, column: 15, scope: !16)
!70 = !DILocation(line: 48, column: 5, scope: !16)
!71 = !{!32, i1 false, i1 false, i1 true}
!72 = !{i1 false, i1 false, i1 false, i1 true}
!73 = !DILocalVariable(name: "A", scope: !16, file: !17, line: 48, type: !74)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 8192, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 256)
!77 = !DILocation(line: 48, column: 11, scope: !16)
!78 = !DILocation(line: 49, column: 5, scope: !16)
!79 = !{!35, i1 false, i1 false, i1 true}
!80 = !DILocalVariable(name: "B", scope: !16, file: !17, line: 49, type: !74)
!81 = !DILocation(line: 49, column: 11, scope: !16)
!82 = !DILocation(line: 50, column: 5, scope: !16)
!83 = !{!37, i1 false, i1 false, i1 true}
!84 = !DILocalVariable(name: "D", scope: !16, file: !17, line: 50, type: !74)
!85 = !DILocation(line: 50, column: 11, scope: !16)
!86 = !DILocation(line: 52, column: 29, scope: !87)
!87 = distinct !DILexicalBlock(scope: !16, file: !17, line: 52, column: 22)
!88 = !DILocation(line: 52, column: 27, scope: !87)
!89 = !DILocation(line: 52, column: 34, scope: !90)
!90 = distinct !DILexicalBlock(scope: !87, file: !17, line: 52, column: 22)
!91 = !DILocation(line: 52, column: 38, scope: !90)
!92 = !DILocation(line: 52, column: 36, scope: !90)
!93 = !{i1 false, !94, i1 false, i1 false}
!94 = !{double 1.000000e+00, double 1.000000e+00}
!95 = !DILocation(line: 52, column: 22, scope: !87)
!96 = !DILocation(line: 52, column: 46, scope: !90)
!97 = !DILocation(line: 53, column: 33, scope: !98)
!98 = distinct !DILexicalBlock(scope: !99, file: !17, line: 53, column: 26)
!99 = distinct !DILexicalBlock(scope: !90, file: !17, line: 52, column: 46)
!100 = !DILocation(line: 53, column: 31, scope: !98)
!101 = !DILocation(line: 53, column: 38, scope: !102)
!102 = distinct !DILexicalBlock(scope: !98, file: !17, line: 53, column: 26)
!103 = !DILocation(line: 53, column: 42, scope: !102)
!104 = !DILocation(line: 53, column: 40, scope: !102)
!105 = !DILocation(line: 53, column: 26, scope: !98)
!106 = !DILocation(line: 54, column: 39, scope: !107)
!107 = distinct !DILexicalBlock(scope: !102, file: !17, line: 53, column: 50)
!108 = !DILocation(line: 54, column: 41, scope: !107)
!109 = !DILocation(line: 54, column: 40, scope: !107)
!110 = !DILocation(line: 54, column: 42, scope: !107)
!111 = !DILocation(line: 54, column: 48, scope: !107)
!112 = !DILocation(line: 54, column: 46, scope: !107)
!113 = !{i1 false, !114, i1 false, i1 false}
!114 = !{double 0.000000e+00, double 1.600000e+01}
!115 = !DILocation(line: 54, column: 37, scope: !107)
!116 = !DILocation(line: 54, column: 35, scope: !107)
!117 = !{i1 false, !118, i1 false, i1 false}
!118 = !{double 0.000000e+00, double 8.000000e+01}
!119 = !DILocation(line: 54, column: 54, scope: !107)
!120 = !DILocation(line: 54, column: 52, scope: !107)
!121 = !{i1 false, !33, i1 false, i1 false}
!122 = !DILocation(line: 54, column: 15, scope: !107)
!123 = !DILocation(line: 54, column: 17, scope: !107)
!124 = !DILocation(line: 54, column: 16, scope: !107)
!125 = !DILocation(line: 54, column: 20, scope: !107)
!126 = !DILocation(line: 54, column: 19, scope: !107)
!127 = !DILocation(line: 54, column: 13, scope: !107)
!128 = !DILocation(line: 54, column: 23, scope: !107)
!129 = !DILocation(line: 55, column: 13, scope: !107)
!130 = !DILocation(line: 53, column: 47, scope: !102)
!131 = !DILocation(line: 53, column: 26, scope: !102)
!132 = distinct !{!132, !105, !133, !134}
!133 = !DILocation(line: 55, column: 13, scope: !98)
!134 = !{!"llvm.loop.name", !"VITIS_LOOP_53_2"}
!135 = !DILocation(line: 56, column: 5, scope: !99)
!136 = !DILocation(line: 52, column: 43, scope: !90)
!137 = !DILocation(line: 52, column: 22, scope: !90)
!138 = distinct !{!138, !95, !139, !140}
!139 = !DILocation(line: 56, column: 5, scope: !87)
!140 = !{!"llvm.loop.name", !"VITIS_LOOP_52_1"}
!141 = !DILocation(line: 57, column: 29, scope: !142)
!142 = distinct !DILexicalBlock(scope: !16, file: !17, line: 57, column: 22)
!143 = !DILocation(line: 57, column: 27, scope: !142)
!144 = !DILocation(line: 57, column: 34, scope: !145)
!145 = distinct !DILexicalBlock(scope: !142, file: !17, line: 57, column: 22)
!146 = !DILocation(line: 57, column: 38, scope: !145)
!147 = !DILocation(line: 57, column: 36, scope: !145)
!148 = !DILocation(line: 57, column: 22, scope: !142)
!149 = !DILocation(line: 57, column: 46, scope: !145)
!150 = !DILocation(line: 58, column: 33, scope: !151)
!151 = distinct !DILexicalBlock(scope: !152, file: !17, line: 58, column: 26)
!152 = distinct !DILexicalBlock(scope: !145, file: !17, line: 57, column: 46)
!153 = !DILocation(line: 58, column: 31, scope: !151)
!154 = !DILocation(line: 58, column: 38, scope: !155)
!155 = distinct !DILexicalBlock(scope: !151, file: !17, line: 58, column: 26)
!156 = !DILocation(line: 58, column: 42, scope: !155)
!157 = !DILocation(line: 58, column: 40, scope: !155)
!158 = !DILocation(line: 58, column: 26, scope: !151)
!159 = !DILocation(line: 59, column: 38, scope: !160)
!160 = distinct !DILexicalBlock(scope: !155, file: !17, line: 58, column: 50)
!161 = !DILocation(line: 59, column: 41, scope: !160)
!162 = !DILocation(line: 59, column: 42, scope: !160)
!163 = !{i1 false, !164, i1 false, i1 false}
!164 = !{double 1.000000e+00, double 2.000000e+00}
!165 = !DILocation(line: 59, column: 39, scope: !160)
!166 = !{i1 false, !167, i1 false, i1 false}
!167 = !{double 0.000000e+00, double 4.000000e+00}
!168 = !DILocation(line: 59, column: 48, scope: !160)
!169 = !DILocation(line: 59, column: 46, scope: !160)
!170 = !DILocation(line: 59, column: 37, scope: !160)
!171 = !DILocation(line: 59, column: 35, scope: !160)
!172 = !{i1 false, !173, i1 false, i1 false}
!173 = !{double 0.000000e+00, double 4.800000e+01}
!174 = !DILocation(line: 59, column: 54, scope: !160)
!175 = !DILocation(line: 59, column: 52, scope: !160)
!176 = !DILocation(line: 59, column: 15, scope: !160)
!177 = !DILocation(line: 59, column: 17, scope: !160)
!178 = !DILocation(line: 59, column: 16, scope: !160)
!179 = !{i1 false, !180, i1 false, i1 false}
!180 = !{double 0.000000e+00, double 3.200000e+01}
!181 = !DILocation(line: 59, column: 20, scope: !160)
!182 = !DILocation(line: 59, column: 19, scope: !160)
!183 = !{i1 false, !184, i1 false, i1 false}
!184 = !{double 0.000000e+00, double 3.300000e+01}
!185 = !DILocation(line: 59, column: 13, scope: !160)
!186 = !DILocation(line: 59, column: 23, scope: !160)
!187 = !DILocation(line: 60, column: 9, scope: !160)
!188 = !DILocation(line: 58, column: 47, scope: !155)
!189 = !DILocation(line: 58, column: 26, scope: !155)
!190 = distinct !{!190, !158, !191, !192}
!191 = !DILocation(line: 60, column: 9, scope: !151)
!192 = !{!"llvm.loop.name", !"VITIS_LOOP_58_4"}
!193 = !DILocation(line: 61, column: 5, scope: !152)
!194 = !DILocation(line: 57, column: 43, scope: !145)
!195 = !DILocation(line: 57, column: 22, scope: !145)
!196 = distinct !{!196, !148, !197, !198}
!197 = !DILocation(line: 61, column: 5, scope: !142)
!198 = !{!"llvm.loop.name", !"VITIS_LOOP_57_3"}
!199 = !DILocation(line: 62, column: 29, scope: !200)
!200 = distinct !DILexicalBlock(scope: !16, file: !17, line: 62, column: 22)
!201 = !DILocation(line: 62, column: 27, scope: !200)
!202 = !DILocation(line: 62, column: 34, scope: !203)
!203 = distinct !DILexicalBlock(scope: !200, file: !17, line: 62, column: 22)
!204 = !DILocation(line: 62, column: 38, scope: !203)
!205 = !DILocation(line: 62, column: 36, scope: !203)
!206 = !DILocation(line: 62, column: 22, scope: !200)
!207 = !DILocation(line: 62, column: 46, scope: !203)
!208 = !DILocation(line: 63, column: 33, scope: !209)
!209 = distinct !DILexicalBlock(scope: !210, file: !17, line: 63, column: 26)
!210 = distinct !DILexicalBlock(scope: !203, file: !17, line: 62, column: 46)
!211 = !DILocation(line: 63, column: 31, scope: !209)
!212 = !DILocation(line: 63, column: 38, scope: !213)
!213 = distinct !DILexicalBlock(scope: !209, file: !17, line: 63, column: 26)
!214 = !DILocation(line: 63, column: 42, scope: !213)
!215 = !DILocation(line: 63, column: 40, scope: !213)
!216 = !DILocation(line: 63, column: 26, scope: !209)
!217 = !DILocation(line: 64, column: 38, scope: !218)
!218 = distinct !DILexicalBlock(scope: !213, file: !17, line: 63, column: 50)
!219 = !DILocation(line: 64, column: 41, scope: !218)
!220 = !DILocation(line: 64, column: 42, scope: !218)
!221 = !{i1 false, !222, i1 false, i1 false}
!222 = !{double 2.000000e+00, double 4.000000e+00}
!223 = !DILocation(line: 64, column: 39, scope: !218)
!224 = !{i1 false, !225, i1 false, i1 false}
!225 = !{double 0.000000e+00, double 1.200000e+01}
!226 = !DILocation(line: 64, column: 48, scope: !218)
!227 = !DILocation(line: 64, column: 46, scope: !218)
!228 = !DILocation(line: 64, column: 37, scope: !218)
!229 = !DILocation(line: 64, column: 35, scope: !218)
!230 = !DILocation(line: 64, column: 54, scope: !218)
!231 = !DILocation(line: 64, column: 52, scope: !218)
!232 = !DILocation(line: 64, column: 15, scope: !218)
!233 = !DILocation(line: 64, column: 17, scope: !218)
!234 = !DILocation(line: 64, column: 16, scope: !218)
!235 = !DILocation(line: 64, column: 20, scope: !218)
!236 = !DILocation(line: 64, column: 19, scope: !218)
!237 = !{i1 false, !238, i1 false, i1 false}
!238 = !{double 0.000000e+00, double 5.000000e+01}
!239 = !DILocation(line: 64, column: 13, scope: !218)
!240 = !{!37, !241, i1 false, i1 true}
!241 = !{double -1.600000e+02, double 1.675000e+02}
!242 = !DILocation(line: 64, column: 23, scope: !218)
!243 = !DILocation(line: 65, column: 9, scope: !218)
!244 = !DILocation(line: 63, column: 47, scope: !213)
!245 = !{i1 false, !246, i1 false, i1 false}
!246 = !{double 1.000000e+00, double 3.000000e+00}
!247 = !DILocation(line: 63, column: 26, scope: !213)
!248 = distinct !{!248, !216, !249, !250}
!249 = !DILocation(line: 65, column: 9, scope: !209)
!250 = !{!"llvm.loop.name", !"VITIS_LOOP_63_6"}
!251 = !DILocation(line: 66, column: 5, scope: !210)
!252 = !DILocation(line: 62, column: 43, scope: !203)
!253 = !DILocation(line: 62, column: 22, scope: !203)
!254 = distinct !{!254, !206, !255, !256}
!255 = !DILocation(line: 66, column: 5, scope: !200)
!256 = !{!"llvm.loop.name", !"VITIS_LOOP_62_5"}
!257 = !DILocalVariable(name: "alpha", scope: !16, file: !17, line: 69, type: !11)
!258 = !DILocation(line: 69, column: 49, scope: !16)
!259 = !DILocalVariable(name: "beta", scope: !16, file: !17, line: 70, type: !11)
!260 = !DILocation(line: 70, column: 49, scope: !16)
!261 = !DILocalVariable(name: "fg", scope: !16, file: !17, line: 71, type: !11)
!262 = !DILocation(line: 71, column: 65, scope: !16)
!263 = !DILocation(line: 71, column: 70, scope: !16)
!264 = !DILocalVariable(name: "tmp", scope: !16, file: !17, line: 72, type: !11)
!265 = !DILocation(line: 72, column: 65, scope: !16)
!266 = !DILocalVariable(name: "sum", scope: !16, file: !17, line: 73, type: !11)
!267 = !DILocation(line: 73, column: 65, scope: !16)
!268 = !DILocalVariable(name: "z", scope: !16, file: !17, line: 74, type: !11)
!269 = !DILocation(line: 74, column: 11, scope: !16)
!270 = !DILocalVariable(name: "ii", scope: !16, file: !17, line: 75, type: !55)
!271 = !DILocation(line: 75, column: 9, scope: !16)
!272 = !DILocalVariable(name: "jj", scope: !16, file: !17, line: 75, type: !55)
!273 = !DILocation(line: 75, column: 13, scope: !16)
!274 = !DILocation(line: 75, column: 5, scope: !16)
!275 = !DILocation(line: 76, column: 30, scope: !276)
!276 = distinct !DILexicalBlock(scope: !16, file: !17, line: 76, column: 22)
!277 = !DILocation(line: 76, column: 27, scope: !276)
!278 = !DILocation(line: 76, column: 35, scope: !279)
!279 = distinct !DILexicalBlock(scope: !276, file: !17, line: 76, column: 22)
!280 = !DILocation(line: 76, column: 38, scope: !279)
!281 = !DILocation(line: 76, column: 22, scope: !276)
!282 = !DILocation(line: 76, column: 49, scope: !279)
!283 = !DILocation(line: 78, column: 27, scope: !284)
!284 = distinct !DILexicalBlock(scope: !285, file: !17, line: 78, column: 19)
!285 = distinct !DILexicalBlock(scope: !279, file: !17, line: 76, column: 49)
!286 = !DILocation(line: 78, column: 24, scope: !284)
!287 = !DILocation(line: 78, column: 32, scope: !288)
!288 = distinct !DILexicalBlock(scope: !284, file: !17, line: 78, column: 19)
!289 = !DILocation(line: 78, column: 35, scope: !288)
!290 = !DILocation(line: 78, column: 19, scope: !284)
!291 = !DILocation(line: 81, column: 6, scope: !292)
!292 = distinct !DILexicalBlock(scope: !288, file: !17, line: 79, column: 9)
!293 = !DILocation(line: 81, column: 2, scope: !292)
!294 = !DILocation(line: 82, column: 37, scope: !295)
!295 = distinct !DILexicalBlock(scope: !292, file: !17, line: 82, column: 30)
!296 = !DILocation(line: 82, column: 35, scope: !295)
!297 = !DILocation(line: 82, column: 42, scope: !298)
!298 = distinct !DILexicalBlock(scope: !295, file: !17, line: 82, column: 30)
!299 = !DILocation(line: 82, column: 44, scope: !298)
!300 = !DILocation(line: 82, column: 30, scope: !295)
!301 = !DILocation(line: 84, column: 8, scope: !302)
!302 = distinct !DILexicalBlock(scope: !298, file: !17, line: 82, column: 54)
!303 = !DILocation(line: 84, column: 10, scope: !302)
!304 = !DILocation(line: 84, column: 15, scope: !302)
!305 = !DILocation(line: 84, column: 14, scope: !302)
!306 = !DILocation(line: 84, column: 6, scope: !302)
!307 = !{!308, !33, i1 false, i1 true}
!308 = !{!"fixp", i32 32, i32 27}
!309 = !DILocation(line: 84, column: 22, scope: !302)
!310 = !DILocation(line: 84, column: 23, scope: !302)
!311 = !DILocation(line: 84, column: 28, scope: !302)
!312 = !DILocation(line: 84, column: 27, scope: !302)
!313 = !DILocation(line: 84, column: 20, scope: !302)
!314 = !{!308, !28, i1 false, i1 true}
!315 = !DILocation(line: 84, column: 34, scope: !302)
!316 = !{!317, !28, i1 false}
!317 = !{!"fixp", i32 64, i32 29}
!318 = !DILocation(line: 84, column: 18, scope: !302)
!319 = !{!308, !320, i1 false, i1 true}
!320 = !{double 0.000000e+00, double 1.500000e+01}
!321 = !DILocation(line: 84, column: 4, scope: !302)
!322 = !{!323, !41, i1 false}
!323 = !{!"fixp", i32 64, i32 27}
!324 = !DILocation(line: 84, column: 32, scope: !302)
!325 = !{!308, !326, i1 false, i1 true}
!326 = !{double 0.000000e+00, double 0x403200000C000000}
!327 = !DILocation(line: 85, column: 23, scope: !302)
!328 = !{!329, !38, i1 false, i1 true}
!329 = !{!"fixp", i32 -32, i32 22}
!330 = !DILocation(line: 85, column: 29, scope: !302)
!331 = !{!329, !48, i1 false, i1 true}
!332 = !DILocation(line: 85, column: 27, scope: !302)
!333 = !{!329, !334, i1 false, i1 true}
!334 = !{double -3.600000e+02, double 3.600000e+02}
!335 = !DILocation(line: 85, column: 21, scope: !302)
!336 = !DILocation(line: 86, column: 13, scope: !302)
!337 = !DILocation(line: 82, column: 51, scope: !298)
!338 = !DILocation(line: 82, column: 30, scope: !298)
!339 = distinct !{!339, !300, !340, !341, !343}
!340 = !DILocation(line: 86, column: 13, scope: !295)
!341 = !{!"llvm.loop.pipeline.enable", i32 1, i1 false, i8 -1, !"user"}
!342 = !DILocation(line: 83, column: 9, scope: !295)
!343 = !{!"llvm.loop.name", !"VITIS_LOOP_82_9"}
!344 = !DILocation(line: 87, column: 35, scope: !292)
!345 = !DILocation(line: 87, column: 37, scope: !292)
!346 = !DILocation(line: 87, column: 42, scope: !292)
!347 = !DILocation(line: 87, column: 41, scope: !292)
!348 = !DILocation(line: 87, column: 33, scope: !292)
!349 = !DILocation(line: 87, column: 48, scope: !292)
!350 = !{!351, !43, i1 false, i1 true}
!351 = !{!"fixp", i32 32, i32 28}
!352 = !DILocation(line: 87, column: 20, scope: !292)
!353 = !{!354, !43, i1 false}
!354 = !{!"fixp", i32 64, i32 23}
!355 = !DILocation(line: 87, column: 46, scope: !292)
!356 = !{!351, !357, i1 false, i1 true}
!357 = !{double 0.000000e+00, double 7.500000e+00}
!358 = !DILocation(line: 87, column: 22, scope: !292)
!359 = !DILocation(line: 87, column: 27, scope: !292)
!360 = !DILocation(line: 87, column: 26, scope: !292)
!361 = !DILocation(line: 87, column: 18, scope: !292)
!362 = !DILocation(line: 87, column: 31, scope: !292)
!363 = !DILocation(line: 88, column: 35, scope: !292)
!364 = !DILocation(line: 88, column: 37, scope: !292)
!365 = !DILocation(line: 88, column: 42, scope: !292)
!366 = !DILocation(line: 88, column: 41, scope: !292)
!367 = !DILocation(line: 88, column: 33, scope: !292)
!368 = !DILocation(line: 88, column: 48, scope: !292)
!369 = !DILocation(line: 88, column: 46, scope: !292)
!370 = !DILocation(line: 88, column: 20, scope: !292)
!371 = !DILocation(line: 88, column: 22, scope: !292)
!372 = !DILocation(line: 88, column: 27, scope: !292)
!373 = !DILocation(line: 88, column: 26, scope: !292)
!374 = !DILocation(line: 88, column: 18, scope: !292)
!375 = !DILocation(line: 88, column: 31, scope: !292)
!376 = !DILocation(line: 90, column: 9, scope: !292)
!377 = !DILocation(line: 78, column: 43, scope: !288)
!378 = !DILocation(line: 78, column: 19, scope: !288)
!379 = distinct !{!379, !290, !380, !381, !383}
!380 = !DILocation(line: 90, column: 9, scope: !284)
!381 = !{!"llvm.loop.unroll.count", i32 4, !"user"}
!382 = !DILocation(line: 80, column: 9, scope: !284)
!383 = !{!"llvm.loop.name", !"VITIS_LOOP_78_8"}
!384 = !DILocation(line: 91, column: 5, scope: !285)
!385 = !DILocation(line: 76, column: 46, scope: !279)
!386 = !DILocation(line: 76, column: 22, scope: !279)
!387 = distinct !{!387, !281, !388, !389, !391}
!388 = !DILocation(line: 91, column: 5, scope: !276)
!389 = !{!"llvm.loop.pipeline.enable", i32 1, i1 false, i8 -1, !"user"}
!390 = !DILocation(line: 77, column: 9, scope: !276)
!391 = !{!"llvm.loop.name", !"VITIS_LOOP_76_7"}
!392 = !DILocation(line: 92, column: 31, scope: !393)
!393 = distinct !DILexicalBlock(scope: !16, file: !17, line: 92, column: 23)
!394 = !DILocation(line: 92, column: 28, scope: !393)
!395 = !DILocation(line: 92, column: 36, scope: !396)
!396 = distinct !DILexicalBlock(scope: !393, file: !17, line: 92, column: 23)
!397 = !DILocation(line: 92, column: 39, scope: !396)
!398 = !DILocation(line: 92, column: 23, scope: !393)
!399 = !DILocation(line: 93, column: 5, scope: !396)
!400 = !DILocation(line: 95, column: 28, scope: !401)
!401 = distinct !DILexicalBlock(scope: !402, file: !17, line: 95, column: 20)
!402 = distinct !DILexicalBlock(scope: !396, file: !17, line: 93, column: 5)
!403 = !DILocation(line: 95, column: 25, scope: !401)
!404 = !DILocation(line: 95, column: 33, scope: !405)
!405 = distinct !DILexicalBlock(scope: !401, file: !17, line: 95, column: 20)
!406 = !DILocation(line: 95, column: 36, scope: !405)
!407 = !DILocation(line: 95, column: 20, scope: !401)
!408 = !DILocation(line: 96, column: 19, scope: !409)
!409 = distinct !DILexicalBlock(scope: !405, file: !17, line: 95, column: 47)
!410 = !DILocation(line: 96, column: 21, scope: !409)
!411 = !DILocation(line: 96, column: 26, scope: !409)
!412 = !DILocation(line: 96, column: 25, scope: !409)
!413 = !DILocation(line: 96, column: 17, scope: !409)
!414 = !{!329, !241, i1 false, i1 true}
!415 = !DILocation(line: 96, column: 14, scope: !409)
!416 = !{!329, !46, i1 false, i1 true}
!417 = !{!329, !418, i1 false, i1 true}
!418 = !{double -2.600000e+02, double 2.675000e+02}
!419 = !DILocation(line: 97, column: 9, scope: !409)
!420 = !DILocation(line: 95, column: 44, scope: !405)
!421 = !DILocation(line: 95, column: 20, scope: !405)
!422 = distinct !{!422, !407, !423, !424}
!423 = !DILocation(line: 97, column: 9, scope: !401)
!424 = !{!"llvm.loop.name", !"VITIS_LOOP_95_11"}
!425 = !DILocation(line: 98, column: 5, scope: !402)
!426 = !DILocation(line: 92, column: 47, scope: !396)
!427 = !DILocation(line: 92, column: 23, scope: !396)
!428 = distinct !{!428, !398, !429, !430, !432}
!429 = !DILocation(line: 98, column: 5, scope: !393)
!430 = !{!"llvm.loop.pipeline.enable", i32 1, i1 false, i8 -1, !"user"}
!431 = !DILocation(line: 94, column: 9, scope: !393)
!432 = !{!"llvm.loop.name", !"VITIS_LOOP_92_10"}
!433 = !DILocation(line: 100, column: 13, scope: !16)
!434 = !DILocation(line: 100, column: 19, scope: !16)
!435 = !DILocation(line: 101, column: 1, scope: !16)
!436 = !{!437, !38, i1 false}
!437 = !{!"fixp", i32 -64, i32 24}
!438 = !DILocation(line: 100, column: 17, scope: !16)
!439 = !{!440, !441, i1 false, i1 true}
!440 = !{!"fixp", i32 -32, i32 17}
!441 = !{double -1.600000e+04, double 1.600000e+04}
!442 = !DILocation(line: 100, column: 5, scope: !16)
!443 = !{i1 false, !441, i1 false, i1 true}
!444 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!445 = !{i32 0, i1 false, i32 0, i1 false}
!446 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
