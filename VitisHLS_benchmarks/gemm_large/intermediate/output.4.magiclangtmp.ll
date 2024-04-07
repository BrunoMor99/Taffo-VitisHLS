; ModuleID = '/home/bruno/Desktop/benchmarks/gemm_large/intermediate/output.3.magiclangtmp.ll'
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
  %A = alloca [256 x float], align 4, !taffo.info !31
  %B = alloca [256 x float], align 4, !taffo.info !34
  %D = alloca [256 x float], align 4, !taffo.info !36, !taffo.target !39
  %alpha = alloca float, align 4, !taffo.info !40
  %beta = alloca float, align 4, !taffo.info !42
  %fg = alloca float, align 4, !taffo.info !36
  %tmp = alloca float, align 4, !taffo.info !36
  %sum = alloca float, align 4, !taffo.info !44
  %z = alloca float, align 4, !taffo.info !47
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
  %6 = bitcast [256 x float]* %A to i8*, !dbg !70, !taffo.info !71
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* %6) #3, !dbg !70, !taffo.info !72
  call void @llvm.dbg.declare(metadata [256 x float]* %A, metadata !73, metadata !DIExpression()), !dbg !77
  %A1 = bitcast [256 x float]* %A to i8*, !dbg !70, !taffo.info !71
  %7 = bitcast [256 x float]* %B to i8*, !dbg !78, !taffo.info !79
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* %7) #3, !dbg !78, !taffo.info !72
  call void @llvm.dbg.declare(metadata [256 x float]* %B, metadata !80, metadata !DIExpression()), !dbg !81
  %B2 = bitcast [256 x float]* %B to i8*, !dbg !78, !taffo.info !79
  %8 = bitcast [256 x float]* %D to i8*, !dbg !82, !taffo.info !83, !taffo.target !39
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* %8) #3, !dbg !82, !taffo.info !72, !taffo.target !39
  call void @llvm.dbg.declare(metadata [256 x float]* %D, metadata !84, metadata !DIExpression()), !dbg !85
  %D3 = bitcast [256 x float]* %D to i8*, !dbg !82, !taffo.info !83, !taffo.target !39
  br label %VITIS_LOOP_52_1, !dbg !82

VITIS_LOOP_52_1:                                  ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !86
  br label %for.cond, !dbg !88

for.cond:                                         ; preds = %for.inc11, %VITIS_LOOP_52_1
  %9 = load i32, i32* %i, align 4, !dbg !89, !taffo.info !27
  %10 = load i32, i32* %ni, align 4, !dbg !91, !taffo.info !25
  %cmp = icmp slt i32 %9, %10, !dbg !92, !taffo.info !93
  br i1 %cmp, label %for.body, label %for.end13, !dbg !95

for.body:                                         ; preds = %for.cond
  br label %VITIS_LOOP_53_2, !dbg !96

VITIS_LOOP_53_2:                                  ; preds = %for.body
  store i32 0, i32* %j, align 4, !dbg !97
  br label %for.cond4, !dbg !100

for.cond4:                                        ; preds = %for.inc, %VITIS_LOOP_53_2
  %11 = load i32, i32* %j, align 4, !dbg !101, !taffo.info !27
  %12 = load i32, i32* %nk, align 4, !dbg !103, !taffo.info !25
  %cmp5 = icmp slt i32 %11, %12, !dbg !104, !taffo.info !93
  br i1 %cmp5, label %for.body6, label %for.end, !dbg !105

for.body6:                                        ; preds = %for.cond4
  %13 = load i32, i32* %i, align 4, !dbg !106, !taffo.info !27
  %14 = load i32, i32* %j, align 4, !dbg !108, !taffo.info !27
  %mul = mul nsw i32 %13, %14, !dbg !109, !taffo.info !1
  %add = add nsw i32 %mul, 1, !dbg !110, !taffo.info !93
  %15 = load i32, i32* %ni, align 4, !dbg !111, !taffo.info !25
  %rem = srem i32 %add, %15, !dbg !112, !taffo.info !113
  %conv = sitofp i32 %rem to float, !dbg !115, !taffo.info !113
  %mul7 = fmul float 5.000000e+00, %conv, !dbg !116, !taffo.info !117
  %16 = load i32, i32* %ni, align 4, !dbg !119, !taffo.info !25
  %conv8 = sitofp i32 %16 to float, !dbg !119, !taffo.info !25
  %div = fdiv float %mul7, %conv8, !dbg !120, !taffo.info !121
  %17 = load i32, i32* %i, align 4, !dbg !122, !taffo.info !27
  %18 = load i32, i32* %nk, align 4, !dbg !123, !taffo.info !25
  %mul9 = mul nsw i32 %17, %18, !dbg !124, !taffo.info !1
  %19 = load i32, i32* %j, align 4, !dbg !125, !taffo.info !27
  %add10 = add nsw i32 %mul9, %19, !dbg !126, !taffo.info !1
  %idxprom = sext i32 %add10 to i64, !dbg !127, !taffo.info !1
  %arrayidx = getelementptr inbounds [256 x float], [256 x float]* %A, i64 0, i64 %idxprom, !dbg !127, !taffo.info !31
  store float %div, float* %arrayidx, align 4, !dbg !128, !taffo.info !72
  br label %for.inc, !dbg !129

for.inc:                                          ; preds = %for.body6
  %20 = load i32, i32* %j, align 4, !dbg !130, !taffo.info !27
  %inc = add nsw i32 %20, 1, !dbg !130, !taffo.info !93
  store i32 %inc, i32* %j, align 4, !dbg !130
  br label %for.cond4, !dbg !131, !llvm.loop !132

for.end:                                          ; preds = %for.cond4
  br label %for.inc11, !dbg !135

for.inc11:                                        ; preds = %for.end
  %21 = load i32, i32* %i, align 4, !dbg !136, !taffo.info !27
  %inc12 = add nsw i32 %21, 1, !dbg !136, !taffo.info !93
  store i32 %inc12, i32* %i, align 4, !dbg !136
  br label %for.cond, !dbg !137, !llvm.loop !138

for.end13:                                        ; preds = %for.cond
  br label %VITIS_LOOP_57_3, !dbg !139

VITIS_LOOP_57_3:                                  ; preds = %for.end13
  store i32 0, i32* %i, align 4, !dbg !141
  br label %for.cond14, !dbg !143

for.cond14:                                       ; preds = %for.inc34, %VITIS_LOOP_57_3
  %22 = load i32, i32* %i, align 4, !dbg !144, !taffo.info !27
  %23 = load i32, i32* %nk, align 4, !dbg !146, !taffo.info !25
  %cmp15 = icmp slt i32 %22, %23, !dbg !147, !taffo.info !93
  br i1 %cmp15, label %for.body16, label %for.end36, !dbg !148

for.body16:                                       ; preds = %for.cond14
  br label %VITIS_LOOP_58_4, !dbg !149

VITIS_LOOP_58_4:                                  ; preds = %for.body16
  store i32 0, i32* %j, align 4, !dbg !150
  br label %for.cond17, !dbg !153

for.cond17:                                       ; preds = %for.inc31, %VITIS_LOOP_58_4
  %24 = load i32, i32* %j, align 4, !dbg !154, !taffo.info !27
  %25 = load i32, i32* %nj, align 4, !dbg !156, !taffo.info !25
  %cmp18 = icmp slt i32 %24, %25, !dbg !157, !taffo.info !93
  br i1 %cmp18, label %for.body19, label %for.end33, !dbg !158

for.body19:                                       ; preds = %for.cond17
  %26 = load i32, i32* %i, align 4, !dbg !159, !taffo.info !27
  %27 = load i32, i32* %j, align 4, !dbg !161, !taffo.info !27
  %add20 = add nsw i32 %27, 1, !dbg !162, !taffo.info !163
  %mul21 = mul nsw i32 %26, %add20, !dbg !165, !taffo.info !166
  %28 = load i32, i32* %nj, align 4, !dbg !168, !taffo.info !25
  %rem22 = srem i32 %mul21, %28, !dbg !169, !taffo.info !113
  %conv23 = sitofp i32 %rem22 to float, !dbg !170, !taffo.info !113
  %mul24 = fmul float 3.000000e+00, %conv23, !dbg !171, !taffo.info !172
  %29 = load i32, i32* %nj, align 4, !dbg !174, !taffo.info !25
  %conv25 = sitofp i32 %29 to float, !dbg !174, !taffo.info !25
  %div26 = fdiv float %mul24, %conv25, !dbg !175, !taffo.info !27
  %30 = load i32, i32* %i, align 4, !dbg !176, !taffo.info !27
  %31 = load i32, i32* %nj, align 4, !dbg !177, !taffo.info !25
  %mul27 = mul nsw i32 %30, %31, !dbg !178, !taffo.info !179
  %32 = load i32, i32* %j, align 4, !dbg !181, !taffo.info !27
  %add28 = add nsw i32 %mul27, %32, !dbg !182, !taffo.info !183
  %idxprom29 = sext i32 %add28 to i64, !dbg !185, !taffo.info !183
  %arrayidx30 = getelementptr inbounds [256 x float], [256 x float]* %B, i64 0, i64 %idxprom29, !dbg !185, !taffo.info !34
  store float %div26, float* %arrayidx30, align 4, !dbg !186, !taffo.info !72
  br label %for.inc31, !dbg !187

for.inc31:                                        ; preds = %for.body19
  %33 = load i32, i32* %j, align 4, !dbg !188, !taffo.info !27
  %inc32 = add nsw i32 %33, 1, !dbg !188, !taffo.info !163
  store i32 %inc32, i32* %j, align 4, !dbg !188
  br label %for.cond17, !dbg !189, !llvm.loop !190

for.end33:                                        ; preds = %for.cond17
  br label %for.inc34, !dbg !193

for.inc34:                                        ; preds = %for.end33
  %34 = load i32, i32* %i, align 4, !dbg !194, !taffo.info !27
  %inc35 = add nsw i32 %34, 1, !dbg !194, !taffo.info !163
  store i32 %inc35, i32* %i, align 4, !dbg !194
  br label %for.cond14, !dbg !195, !llvm.loop !196

for.end36:                                        ; preds = %for.cond14
  br label %VITIS_LOOP_62_5, !dbg !197

VITIS_LOOP_62_5:                                  ; preds = %for.end36
  store i32 0, i32* %i, align 4, !dbg !199
  br label %for.cond37, !dbg !201

for.cond37:                                       ; preds = %for.inc57, %VITIS_LOOP_62_5
  %35 = load i32, i32* %i, align 4, !dbg !202, !taffo.info !27
  %36 = load i32, i32* %ni, align 4, !dbg !204, !taffo.info !25
  %cmp38 = icmp slt i32 %35, %36, !dbg !205, !taffo.info !93
  br i1 %cmp38, label %for.body39, label %for.end59, !dbg !206

for.body39:                                       ; preds = %for.cond37
  br label %VITIS_LOOP_63_6, !dbg !207

VITIS_LOOP_63_6:                                  ; preds = %for.body39
  store i32 0, i32* %j, align 4, !dbg !208
  br label %for.cond40, !dbg !211

for.cond40:                                       ; preds = %for.inc54, %VITIS_LOOP_63_6
  %37 = load i32, i32* %j, align 4, !dbg !212, !taffo.info !27
  %38 = load i32, i32* %nj, align 4, !dbg !214, !taffo.info !25
  %cmp41 = icmp slt i32 %37, %38, !dbg !215, !taffo.info !93
  br i1 %cmp41, label %for.body42, label %for.end56, !dbg !216

for.body42:                                       ; preds = %for.cond40
  %39 = load i32, i32* %i, align 4, !dbg !217, !taffo.info !27
  %40 = load i32, i32* %j, align 4, !dbg !219, !taffo.info !27
  %add43 = add nsw i32 %40, 2, !dbg !220, !taffo.info !221
  %mul44 = mul nsw i32 %39, %add43, !dbg !223, !taffo.info !224
  %41 = load i32, i32* %nk, align 4, !dbg !226, !taffo.info !25
  %rem45 = srem i32 %mul44, %41, !dbg !227, !taffo.info !113
  %conv46 = sitofp i32 %rem45 to float, !dbg !228, !taffo.info !113
  %mul47 = fmul float 5.000000e+00, %conv46, !dbg !229, !taffo.info !117
  %42 = load i32, i32* %nk, align 4, !dbg !230, !taffo.info !25
  %conv48 = sitofp i32 %42 to float, !dbg !230, !taffo.info !25
  %div49 = fdiv float %mul47, %conv48, !dbg !231, !taffo.info !121
  %43 = load i32, i32* %i, align 4, !dbg !232, !taffo.info !27
  %44 = load i32, i32* %nj, align 4, !dbg !233, !taffo.info !25
  %mul50 = mul nsw i32 %43, %44, !dbg !234, !taffo.info !172
  %45 = load i32, i32* %j, align 4, !dbg !235, !taffo.info !27
  %add51 = add nsw i32 %mul50, %45, !dbg !236, !taffo.info !237
  %idxprom52 = sext i32 %add51 to i64, !dbg !239, !taffo.info !237
  %arrayidx53 = getelementptr inbounds [256 x float], [256 x float]* %D, i64 0, i64 %idxprom52, !dbg !239, !taffo.info !240, !taffo.target !39
  store float %div49, float* %arrayidx53, align 4, !dbg !242, !taffo.info !72, !taffo.target !39
  br label %for.inc54, !dbg !243

for.inc54:                                        ; preds = %for.body42
  %46 = load i32, i32* %j, align 4, !dbg !244, !taffo.info !27
  %inc55 = add nsw i32 %46, 1, !dbg !244, !taffo.info !245
  store i32 %inc55, i32* %j, align 4, !dbg !244
  br label %for.cond40, !dbg !247, !llvm.loop !248

for.end56:                                        ; preds = %for.cond40
  br label %for.inc57, !dbg !251

for.inc57:                                        ; preds = %for.end56
  %47 = load i32, i32* %i, align 4, !dbg !252, !taffo.info !27
  %inc58 = add nsw i32 %47, 1, !dbg !252, !taffo.info !245
  store i32 %inc58, i32* %i, align 4, !dbg !252
  br label %for.cond37, !dbg !253, !llvm.loop !254

for.end59:                                        ; preds = %for.cond37
  call void @llvm.dbg.declare(metadata float* %alpha, metadata !257, metadata !DIExpression()), !dbg !258
  %alpha60 = bitcast float* %alpha to i8*, !dbg !259, !taffo.info !79
  store float 0x3FF3333340000000, float* %alpha, align 4, !dbg !258, !taffo.info !72
  call void @llvm.dbg.declare(metadata float* %beta, metadata !260, metadata !DIExpression()), !dbg !261
  %beta61 = bitcast float* %beta to i8*, !dbg !262, !taffo.info !79
  store float 1.500000e+00, float* %beta, align 4, !dbg !261, !taffo.info !72
  call void @llvm.dbg.declare(metadata float* %fg, metadata !263, metadata !DIExpression()), !dbg !264
  %fg62 = bitcast float* %fg to i8*, !dbg !265, !taffo.info !83
  %48 = load float, float* %gamma.addr, align 4, !dbg !266
  store float %48, float* %fg, align 4, !dbg !264, !taffo.info !72
  call void @llvm.dbg.declare(metadata float* %tmp, metadata !267, metadata !DIExpression()), !dbg !268
  %tmp63 = bitcast float* %tmp to i8*, !dbg !269, !taffo.info !83
  store float 0.000000e+00, float* %tmp, align 4, !dbg !268, !taffo.info !72
  call void @llvm.dbg.declare(metadata float* %sum, metadata !270, metadata !DIExpression()), !dbg !271
  %sum64 = bitcast float* %sum to i8*, !dbg !272, !taffo.info !273
  store float 0.000000e+00, float* %sum, align 4, !dbg !271, !taffo.info !72
  call void @llvm.dbg.declare(metadata float* %z, metadata !274, metadata !DIExpression()), !dbg !275
  %z65 = bitcast float* %z to i8*, !dbg !276, !taffo.info !83
  call void @llvm.dbg.declare(metadata i32* %ii, metadata !277, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.declare(metadata i32* %jj, metadata !279, metadata !DIExpression()), !dbg !280
  br label %VITIS_LOOP_76_7, !dbg !281

VITIS_LOOP_76_7:                                  ; preds = %for.end59
  store i32 0, i32* %ii, align 4, !dbg !282
  br label %for.cond66, !dbg !284

for.cond66:                                       ; preds = %for.inc110, %VITIS_LOOP_76_7
  %49 = load i32, i32* %ii, align 4, !dbg !285, !taffo.info !49
  %cmp67 = icmp slt i32 %49, 16, !dbg !287, !taffo.info !93
  br i1 %cmp67, label %for.body68, label %for.end112, !dbg !288

for.body68:                                       ; preds = %for.cond66
  br label %VITIS_LOOP_78_8, !dbg !289

VITIS_LOOP_78_8:                                  ; preds = %for.body68
  store i32 0, i32* %jj, align 4, !dbg !290
  br label %for.cond69, !dbg !293

for.cond69:                                       ; preds = %for.inc107, %VITIS_LOOP_78_8
  %50 = load i32, i32* %jj, align 4, !dbg !294, !taffo.info !49
  %cmp70 = icmp slt i32 %50, 16, !dbg !296, !taffo.info !93
  br i1 %cmp70, label %for.body71, label %for.end109, !dbg !297

for.body71:                                       ; preds = %for.cond69
  store float 0.000000e+00, float* %tmp, align 4, !dbg !298, !taffo.info !72
  br label %VITIS_LOOP_82_9, !dbg !300

VITIS_LOOP_82_9:                                  ; preds = %for.body71
  store i32 0, i32* %k, align 4, !dbg !301
  br label %for.cond72, !dbg !303

for.cond72:                                       ; preds = %for.inc86, %VITIS_LOOP_82_9
  %51 = load i32, i32* %k, align 4, !dbg !304, !taffo.info !29
  %cmp73 = icmp slt i32 %51, 16, !dbg !306, !taffo.info !93
  br i1 %cmp73, label %for.body74, label %for.end88, !dbg !307

for.body74:                                       ; preds = %for.cond72
  %52 = load i32, i32* %ii, align 4, !dbg !308, !taffo.info !49
  %mul75 = mul nsw i32 %52, 16, !dbg !310, !taffo.info !113
  %53 = load i32, i32* %k, align 4, !dbg !311, !taffo.info !29
  %add76 = add nsw i32 %mul75, %53, !dbg !312, !taffo.info !113
  %idxprom77 = sext i32 %add76 to i64, !dbg !313, !taffo.info !113
  %arrayidx78 = getelementptr inbounds [256 x float], [256 x float]* %A, i64 0, i64 %idxprom77, !dbg !313, !taffo.info !31
  %54 = load float, float* %arrayidx78, align 4, !dbg !313, !taffo.info !314
  %55 = load i32, i32* %k, align 4, !dbg !316, !taffo.info !29
  %mul79 = mul nsw i32 %55, 16, !dbg !317, !taffo.info !1
  %56 = load i32, i32* %jj, align 4, !dbg !318, !taffo.info !49
  %add80 = add nsw i32 %mul79, %56, !dbg !319, !taffo.info !29
  %idxprom81 = sext i32 %add80 to i64, !dbg !320, !taffo.info !29
  %arrayidx82 = getelementptr inbounds [256 x float], [256 x float]* %B, i64 0, i64 %idxprom81, !dbg !320, !taffo.info !34
  %57 = load float, float* %arrayidx82, align 4, !dbg !320, !taffo.info !321
  %mul83 = fmul float %54, %57, !dbg !322, !taffo.info !323
  %58 = load float, float* %alpha, align 4, !dbg !325, !taffo.info !40
  %mul84 = fmul float %mul83, %58, !dbg !326, !taffo.info !327
  store float %mul84, float* %z, align 4, !dbg !329, !taffo.info !72
  %59 = load float, float* %tmp, align 4, !dbg !330, !taffo.info !331
  %60 = load float, float* %z, align 4, !dbg !333, !taffo.info !334
  %add85 = fadd float %59, %60, !dbg !335, !taffo.info !336
  store float %add85, float* %tmp, align 4, !dbg !338, !taffo.info !72
  br label %for.inc86, !dbg !339

for.inc86:                                        ; preds = %for.body74
  %61 = load i32, i32* %k, align 4, !dbg !340, !taffo.info !29
  %inc87 = add nsw i32 %61, 1, !dbg !340, !taffo.info !93
  store i32 %inc87, i32* %k, align 4, !dbg !340
  br label %for.cond72, !dbg !341, !llvm.loop !342

for.end88:                                        ; preds = %for.cond72
  %62 = load i32, i32* %ii, align 4, !dbg !347, !taffo.info !49
  %mul89 = mul nsw i32 %62, 16, !dbg !348, !taffo.info !113
  %63 = load i32, i32* %jj, align 4, !dbg !349, !taffo.info !49
  %add90 = add nsw i32 %mul89, %63, !dbg !350, !taffo.info !113
  %idxprom91 = sext i32 %add90 to i64, !dbg !351, !taffo.info !113
  %arrayidx92 = getelementptr inbounds [256 x float], [256 x float]* %D, i64 0, i64 %idxprom91, !dbg !351, !taffo.info !240, !taffo.target !39
  %64 = load float, float* %arrayidx92, align 4, !dbg !351, !taffo.info !240, !taffo.target !39
  %65 = load float, float* %beta, align 4, !dbg !352, !taffo.info !353
  %mul93 = fmul float %64, %65, !dbg !355, !taffo.info !356
  %66 = load i32, i32* %ii, align 4, !dbg !358, !taffo.info !49
  %mul94 = mul nsw i32 %66, 16, !dbg !359, !taffo.info !113
  %67 = load i32, i32* %jj, align 4, !dbg !360, !taffo.info !49
  %add95 = add nsw i32 %mul94, %67, !dbg !361, !taffo.info !113
  %idxprom96 = sext i32 %add95 to i64, !dbg !362, !taffo.info !113
  %arrayidx97 = getelementptr inbounds [256 x float], [256 x float]* %D, i64 0, i64 %idxprom96, !dbg !362, !taffo.info !240, !taffo.target !39
  store float %mul93, float* %arrayidx97, align 4, !dbg !363, !taffo.info !72, !taffo.target !39
  %68 = load i32, i32* %ii, align 4, !dbg !364, !taffo.info !49
  %mul98 = mul nsw i32 %68, 16, !dbg !365, !taffo.info !113
  %69 = load i32, i32* %jj, align 4, !dbg !366, !taffo.info !49
  %add99 = add nsw i32 %mul98, %69, !dbg !367, !taffo.info !113
  %idxprom100 = sext i32 %add99 to i64, !dbg !368, !taffo.info !113
  %arrayidx101 = getelementptr inbounds [256 x float], [256 x float]* %D, i64 0, i64 %idxprom100, !dbg !368, !taffo.info !240, !taffo.target !39
  %70 = load float, float* %arrayidx101, align 4, !dbg !368, !taffo.info !240, !taffo.target !39
  %71 = load float, float* %tmp, align 4, !dbg !369, !taffo.info !36
  %add102 = fadd float %70, %71, !dbg !370, !taffo.info !240
  %72 = load i32, i32* %ii, align 4, !dbg !371, !taffo.info !49
  %mul103 = mul nsw i32 %72, 16, !dbg !372, !taffo.info !113
  %73 = load i32, i32* %jj, align 4, !dbg !373, !taffo.info !49
  %add104 = add nsw i32 %mul103, %73, !dbg !374, !taffo.info !113
  %idxprom105 = sext i32 %add104 to i64, !dbg !375, !taffo.info !113
  %arrayidx106 = getelementptr inbounds [256 x float], [256 x float]* %D, i64 0, i64 %idxprom105, !dbg !375, !taffo.info !240, !taffo.target !39
  store float %add102, float* %arrayidx106, align 4, !dbg !376, !taffo.info !72, !taffo.target !39
  br label %for.inc107, !dbg !377

for.inc107:                                       ; preds = %for.end88
  %74 = load i32, i32* %jj, align 4, !dbg !378, !taffo.info !49
  %inc108 = add nsw i32 %74, 1, !dbg !378, !taffo.info !93
  store i32 %inc108, i32* %jj, align 4, !dbg !378
  br label %for.cond69, !dbg !379, !llvm.loop !380

for.end109:                                       ; preds = %for.cond69
  br label %for.inc110, !dbg !385

for.inc110:                                       ; preds = %for.end109
  %75 = load i32, i32* %ii, align 4, !dbg !386, !taffo.info !49
  %inc111 = add nsw i32 %75, 1, !dbg !386, !taffo.info !93
  store i32 %inc111, i32* %ii, align 4, !dbg !386
  br label %for.cond66, !dbg !387, !llvm.loop !388

for.end112:                                       ; preds = %for.cond66
  br label %VITIS_LOOP_92_10, !dbg !389

VITIS_LOOP_92_10:                                 ; preds = %for.end112
  store i32 0, i32* %ii, align 4, !dbg !393
  br label %for.cond113, !dbg !395

for.cond113:                                      ; preds = %for.inc127, %VITIS_LOOP_92_10
  %76 = load i32, i32* %ii, align 4, !dbg !396, !taffo.info !49
  %cmp114 = icmp slt i32 %76, 16, !dbg !398, !taffo.info !93
  br i1 %cmp114, label %for.body115, label %for.end129, !dbg !399

for.body115:                                      ; preds = %for.cond113
  br label %VITIS_LOOP_95_11, !dbg !400

VITIS_LOOP_95_11:                                 ; preds = %for.body115
  store i32 0, i32* %jj, align 4, !dbg !401
  br label %for.cond116, !dbg !404

for.cond116:                                      ; preds = %for.inc124, %VITIS_LOOP_95_11
  %77 = load i32, i32* %jj, align 4, !dbg !405, !taffo.info !49
  %cmp117 = icmp slt i32 %77, 16, !dbg !407, !taffo.info !93
  br i1 %cmp117, label %for.body118, label %for.end126, !dbg !408

for.body118:                                      ; preds = %for.cond116
  %78 = load i32, i32* %ii, align 4, !dbg !409, !taffo.info !49
  %mul119 = mul nsw i32 %78, 16, !dbg !411, !taffo.info !179
  %79 = load i32, i32* %jj, align 4, !dbg !412, !taffo.info !49
  %add120 = add nsw i32 %mul119, %79, !dbg !413, !taffo.info !183
  %idxprom121 = sext i32 %add120 to i64, !dbg !414, !taffo.info !183
  %arrayidx122 = getelementptr inbounds [256 x float], [256 x float]* %D, i64 0, i64 %idxprom121, !dbg !414, !taffo.info !240, !taffo.target !39
  %80 = load float, float* %arrayidx122, align 4, !dbg !414, !taffo.info !415, !taffo.target !39
  %81 = load float, float* %sum, align 4, !dbg !416, !taffo.info !417
  %add123 = fadd float %81, %80, !dbg !416, !taffo.info !418
  store float %add123, float* %sum, align 4, !dbg !416, !taffo.info !72
  br label %for.inc124, !dbg !420

for.inc124:                                       ; preds = %for.body118
  %82 = load i32, i32* %jj, align 4, !dbg !421, !taffo.info !49
  %inc125 = add nsw i32 %82, 1, !dbg !421, !taffo.info !163
  store i32 %inc125, i32* %jj, align 4, !dbg !421
  br label %for.cond116, !dbg !422, !llvm.loop !423

for.end126:                                       ; preds = %for.cond116
  br label %for.inc127, !dbg !426

for.inc127:                                       ; preds = %for.end126
  %83 = load i32, i32* %ii, align 4, !dbg !427, !taffo.info !49
  %inc128 = add nsw i32 %83, 1, !dbg !427, !taffo.info !163
  store i32 %inc128, i32* %ii, align 4, !dbg !427
  br label %for.cond113, !dbg !428, !llvm.loop !429

for.end129:                                       ; preds = %for.cond113
  %84 = load float, float* %sum, align 4, !dbg !434, !taffo.info !44
  %85 = load float, float* %fg, align 4, !dbg !435, !taffo.info !36
  %mul130 = fmul float %84, %85, !dbg !436, !taffo.info !437
  %86 = bitcast [256 x float]* %D to i8*, !dbg !440, !taffo.info !83, !taffo.target !39
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* %86) #3, !dbg !440, !taffo.info !72, !taffo.target !39
  %87 = bitcast [256 x float]* %B to i8*, !dbg !440, !taffo.info !79
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* %87) #3, !dbg !440, !taffo.info !72
  %88 = bitcast [256 x float]* %A to i8*, !dbg !440, !taffo.info !71
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* %88) #3, !dbg !440, !taffo.info !72
  %89 = bitcast i32* %k to i8*, !dbg !440, !taffo.info !29
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %89) #3, !dbg !440
  %90 = bitcast i32* %j to i8*, !dbg !440, !taffo.info !27
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %90) #3, !dbg !440
  %91 = bitcast i32* %i to i8*, !dbg !440, !taffo.info !27
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %91) #3, !dbg !440
  %92 = bitcast i32* %nk to i8*, !dbg !440, !taffo.info !25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %92) #3, !dbg !440
  %93 = bitcast i32* %nj to i8*, !dbg !440, !taffo.info !25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %93) #3, !dbg !440
  %94 = bitcast i32* %ni to i8*, !dbg !440, !taffo.info !25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %94) #3, !dbg !440
  ret float %mul130, !dbg !441, !taffo.info !442
}

; Function Attrs: nounwind readnone speculatable
declare !taffo.funinfo !443 void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare !taffo.funinfo !444 void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare !taffo.funinfo !445 void @llvm.var.annotation(i8*, i8*, i8*, i32) #3

; Function Attrs: argmemonly nounwind
declare !taffo.funinfo !444 void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

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
!14 = !{i32 2, !"Debug Info Version", i32 3}
!15 = !{i32 1, !"wchar_size", i32 4}
!16 = distinct !DISubprogram(name: "mm", scope: !17, file: !17, line: 41, type: !18, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!17 = !DIFile(filename: "gemm_taffoin.c", directory: "/home/bruno/Desktop/benchmarks/gemm_large")
!18 = !DISubroutineType(types: !19)
!19 = !{!11, !11}
!20 = !{!21}
!21 = !{!"fpga.top", !"user", !22}
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
!259 = !DILocation(line: 69, column: 5, scope: !16)
!260 = !DILocalVariable(name: "beta", scope: !16, file: !17, line: 70, type: !11)
!261 = !DILocation(line: 70, column: 49, scope: !16)
!262 = !DILocation(line: 70, column: 5, scope: !16)
!263 = !DILocalVariable(name: "fg", scope: !16, file: !17, line: 71, type: !11)
!264 = !DILocation(line: 71, column: 65, scope: !16)
!265 = !DILocation(line: 71, column: 5, scope: !16)
!266 = !DILocation(line: 71, column: 70, scope: !16)
!267 = !DILocalVariable(name: "tmp", scope: !16, file: !17, line: 72, type: !11)
!268 = !DILocation(line: 72, column: 65, scope: !16)
!269 = !DILocation(line: 72, column: 5, scope: !16)
!270 = !DILocalVariable(name: "sum", scope: !16, file: !17, line: 73, type: !11)
!271 = !DILocation(line: 73, column: 65, scope: !16)
!272 = !DILocation(line: 73, column: 5, scope: !16)
!273 = !{!45, i1 false, i1 false, i1 true}
!274 = !DILocalVariable(name: "z", scope: !16, file: !17, line: 74, type: !11)
!275 = !DILocation(line: 74, column: 11, scope: !16)
!276 = !DILocation(line: 74, column: 5, scope: !16)
!277 = !DILocalVariable(name: "ii", scope: !16, file: !17, line: 75, type: !55)
!278 = !DILocation(line: 75, column: 9, scope: !16)
!279 = !DILocalVariable(name: "jj", scope: !16, file: !17, line: 75, type: !55)
!280 = !DILocation(line: 75, column: 13, scope: !16)
!281 = !DILocation(line: 75, column: 5, scope: !16)
!282 = !DILocation(line: 76, column: 30, scope: !283)
!283 = distinct !DILexicalBlock(scope: !16, file: !17, line: 76, column: 22)
!284 = !DILocation(line: 76, column: 27, scope: !283)
!285 = !DILocation(line: 76, column: 35, scope: !286)
!286 = distinct !DILexicalBlock(scope: !283, file: !17, line: 76, column: 22)
!287 = !DILocation(line: 76, column: 38, scope: !286)
!288 = !DILocation(line: 76, column: 22, scope: !283)
!289 = !DILocation(line: 76, column: 49, scope: !286)
!290 = !DILocation(line: 78, column: 27, scope: !291)
!291 = distinct !DILexicalBlock(scope: !292, file: !17, line: 78, column: 19)
!292 = distinct !DILexicalBlock(scope: !286, file: !17, line: 76, column: 49)
!293 = !DILocation(line: 78, column: 24, scope: !291)
!294 = !DILocation(line: 78, column: 32, scope: !295)
!295 = distinct !DILexicalBlock(scope: !291, file: !17, line: 78, column: 19)
!296 = !DILocation(line: 78, column: 35, scope: !295)
!297 = !DILocation(line: 78, column: 19, scope: !291)
!298 = !DILocation(line: 81, column: 6, scope: !299)
!299 = distinct !DILexicalBlock(scope: !295, file: !17, line: 79, column: 9)
!300 = !DILocation(line: 81, column: 2, scope: !299)
!301 = !DILocation(line: 82, column: 37, scope: !302)
!302 = distinct !DILexicalBlock(scope: !299, file: !17, line: 82, column: 30)
!303 = !DILocation(line: 82, column: 35, scope: !302)
!304 = !DILocation(line: 82, column: 42, scope: !305)
!305 = distinct !DILexicalBlock(scope: !302, file: !17, line: 82, column: 30)
!306 = !DILocation(line: 82, column: 44, scope: !305)
!307 = !DILocation(line: 82, column: 30, scope: !302)
!308 = !DILocation(line: 84, column: 8, scope: !309)
!309 = distinct !DILexicalBlock(scope: !305, file: !17, line: 82, column: 54)
!310 = !DILocation(line: 84, column: 10, scope: !309)
!311 = !DILocation(line: 84, column: 15, scope: !309)
!312 = !DILocation(line: 84, column: 14, scope: !309)
!313 = !DILocation(line: 84, column: 6, scope: !309)
!314 = !{!315, !33, i1 false, i1 true}
!315 = !{!"fixp", i32 32, i32 27}
!316 = !DILocation(line: 84, column: 22, scope: !309)
!317 = !DILocation(line: 84, column: 23, scope: !309)
!318 = !DILocation(line: 84, column: 28, scope: !309)
!319 = !DILocation(line: 84, column: 27, scope: !309)
!320 = !DILocation(line: 84, column: 20, scope: !309)
!321 = !{!315, !28, i1 false, i1 true}
!322 = !DILocation(line: 84, column: 18, scope: !309)
!323 = !{!315, !324, i1 false, i1 true}
!324 = !{double 0.000000e+00, double 1.500000e+01}
!325 = !DILocation(line: 84, column: 34, scope: !309)
!326 = !DILocation(line: 84, column: 32, scope: !309)
!327 = !{!315, !328, i1 false, i1 true}
!328 = !{double 0.000000e+00, double 0x403200000C000000}
!329 = !DILocation(line: 84, column: 4, scope: !309)
!330 = !DILocation(line: 85, column: 23, scope: !309)
!331 = !{!332, !38, i1 false, i1 true}
!332 = !{!"fixp", i32 -32, i32 22}
!333 = !DILocation(line: 85, column: 29, scope: !309)
!334 = !{!332, !48, i1 false, i1 true}
!335 = !DILocation(line: 85, column: 27, scope: !309)
!336 = !{!332, !337, i1 false, i1 true}
!337 = !{double -3.600000e+02, double 3.600000e+02}
!338 = !DILocation(line: 85, column: 21, scope: !309)
!339 = !DILocation(line: 86, column: 13, scope: !309)
!340 = !DILocation(line: 82, column: 51, scope: !305)
!341 = !DILocation(line: 82, column: 30, scope: !305)
!342 = distinct !{!342, !307, !343, !344, !346}
!343 = !DILocation(line: 86, column: 13, scope: !302)
!344 = !{!"llvm.loop.pipeline.enable", i32 1, i1 false, i8 -1, !"user", !345}
!345 = !DILocation(line: 83, column: 9, scope: !302)
!346 = !{!"llvm.loop.name", !"VITIS_LOOP_82_9"}
!347 = !DILocation(line: 87, column: 35, scope: !299)
!348 = !DILocation(line: 87, column: 37, scope: !299)
!349 = !DILocation(line: 87, column: 42, scope: !299)
!350 = !DILocation(line: 87, column: 41, scope: !299)
!351 = !DILocation(line: 87, column: 33, scope: !299)
!352 = !DILocation(line: 87, column: 48, scope: !299)
!353 = !{!354, !43, i1 false, i1 true}
!354 = !{!"fixp", i32 32, i32 28}
!355 = !DILocation(line: 87, column: 46, scope: !299)
!356 = !{!354, !357, i1 false, i1 true}
!357 = !{double 0.000000e+00, double 7.500000e+00}
!358 = !DILocation(line: 87, column: 20, scope: !299)
!359 = !DILocation(line: 87, column: 22, scope: !299)
!360 = !DILocation(line: 87, column: 27, scope: !299)
!361 = !DILocation(line: 87, column: 26, scope: !299)
!362 = !DILocation(line: 87, column: 18, scope: !299)
!363 = !DILocation(line: 87, column: 31, scope: !299)
!364 = !DILocation(line: 88, column: 35, scope: !299)
!365 = !DILocation(line: 88, column: 37, scope: !299)
!366 = !DILocation(line: 88, column: 42, scope: !299)
!367 = !DILocation(line: 88, column: 41, scope: !299)
!368 = !DILocation(line: 88, column: 33, scope: !299)
!369 = !DILocation(line: 88, column: 48, scope: !299)
!370 = !DILocation(line: 88, column: 46, scope: !299)
!371 = !DILocation(line: 88, column: 20, scope: !299)
!372 = !DILocation(line: 88, column: 22, scope: !299)
!373 = !DILocation(line: 88, column: 27, scope: !299)
!374 = !DILocation(line: 88, column: 26, scope: !299)
!375 = !DILocation(line: 88, column: 18, scope: !299)
!376 = !DILocation(line: 88, column: 31, scope: !299)
!377 = !DILocation(line: 90, column: 9, scope: !299)
!378 = !DILocation(line: 78, column: 43, scope: !295)
!379 = !DILocation(line: 78, column: 19, scope: !295)
!380 = distinct !{!380, !297, !381, !382, !384}
!381 = !DILocation(line: 90, column: 9, scope: !291)
!382 = !{!"llvm.loop.unroll.count", i32 4, !"user", !383}
!383 = !DILocation(line: 80, column: 9, scope: !291)
!384 = !{!"llvm.loop.name", !"VITIS_LOOP_78_8"}
!385 = !DILocation(line: 91, column: 5, scope: !292)
!386 = !DILocation(line: 76, column: 46, scope: !286)
!387 = !DILocation(line: 76, column: 22, scope: !286)
!388 = distinct !{!388, !288, !389, !390, !392}
!389 = !DILocation(line: 91, column: 5, scope: !283)
!390 = !{!"llvm.loop.pipeline.enable", i32 1, i1 false, i8 -1, !"user", !391}
!391 = !DILocation(line: 77, column: 9, scope: !283)
!392 = !{!"llvm.loop.name", !"VITIS_LOOP_76_7"}
!393 = !DILocation(line: 92, column: 31, scope: !394)
!394 = distinct !DILexicalBlock(scope: !16, file: !17, line: 92, column: 23)
!395 = !DILocation(line: 92, column: 28, scope: !394)
!396 = !DILocation(line: 92, column: 36, scope: !397)
!397 = distinct !DILexicalBlock(scope: !394, file: !17, line: 92, column: 23)
!398 = !DILocation(line: 92, column: 39, scope: !397)
!399 = !DILocation(line: 92, column: 23, scope: !394)
!400 = !DILocation(line: 93, column: 5, scope: !397)
!401 = !DILocation(line: 95, column: 28, scope: !402)
!402 = distinct !DILexicalBlock(scope: !403, file: !17, line: 95, column: 20)
!403 = distinct !DILexicalBlock(scope: !397, file: !17, line: 93, column: 5)
!404 = !DILocation(line: 95, column: 25, scope: !402)
!405 = !DILocation(line: 95, column: 33, scope: !406)
!406 = distinct !DILexicalBlock(scope: !402, file: !17, line: 95, column: 20)
!407 = !DILocation(line: 95, column: 36, scope: !406)
!408 = !DILocation(line: 95, column: 20, scope: !402)
!409 = !DILocation(line: 96, column: 19, scope: !410)
!410 = distinct !DILexicalBlock(scope: !406, file: !17, line: 95, column: 47)
!411 = !DILocation(line: 96, column: 21, scope: !410)
!412 = !DILocation(line: 96, column: 26, scope: !410)
!413 = !DILocation(line: 96, column: 25, scope: !410)
!414 = !DILocation(line: 96, column: 17, scope: !410)
!415 = !{!332, !241, i1 false, i1 true}
!416 = !DILocation(line: 96, column: 14, scope: !410)
!417 = !{!332, !46, i1 false, i1 true}
!418 = !{!332, !419, i1 false, i1 true}
!419 = !{double -2.600000e+02, double 2.675000e+02}
!420 = !DILocation(line: 97, column: 9, scope: !410)
!421 = !DILocation(line: 95, column: 44, scope: !406)
!422 = !DILocation(line: 95, column: 20, scope: !406)
!423 = distinct !{!423, !408, !424, !425}
!424 = !DILocation(line: 97, column: 9, scope: !402)
!425 = !{!"llvm.loop.name", !"VITIS_LOOP_95_11"}
!426 = !DILocation(line: 98, column: 5, scope: !403)
!427 = !DILocation(line: 92, column: 47, scope: !397)
!428 = !DILocation(line: 92, column: 23, scope: !397)
!429 = distinct !{!429, !399, !430, !431, !433}
!430 = !DILocation(line: 98, column: 5, scope: !394)
!431 = !{!"llvm.loop.pipeline.enable", i32 1, i1 false, i8 -1, !"user", !432}
!432 = !DILocation(line: 94, column: 9, scope: !394)
!433 = !{!"llvm.loop.name", !"VITIS_LOOP_92_10"}
!434 = !DILocation(line: 100, column: 13, scope: !16)
!435 = !DILocation(line: 100, column: 19, scope: !16)
!436 = !DILocation(line: 100, column: 17, scope: !16)
!437 = !{!438, !439, i1 false, i1 true}
!438 = !{!"fixp", i32 -32, i32 17}
!439 = !{double -1.600000e+04, double 1.600000e+04}
!440 = !DILocation(line: 101, column: 1, scope: !16)
!441 = !DILocation(line: 100, column: 5, scope: !16)
!442 = !{i1 false, !439, i1 false, i1 true}
!443 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!444 = !{i32 0, i1 false, i32 0, i1 false}
!445 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
