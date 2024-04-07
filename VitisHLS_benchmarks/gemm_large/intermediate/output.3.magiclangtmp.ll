; ModuleID = '/home/bruno/Desktop/benchmarks/gemm_large/intermediate/output.2.magiclangtmp.ll'
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
  %B = alloca [256 x float], align 4, !taffo.info !33
  %D = alloca [256 x float], align 4, !taffo.info !34, !taffo.target !36
  %alpha = alloca float, align 4, !taffo.info !37
  %beta = alloca float, align 4, !taffo.info !39
  %fg = alloca float, align 4, !taffo.info !34
  %tmp = alloca float, align 4, !taffo.info !34
  %sum = alloca float, align 4, !taffo.info !41
  %z = alloca float, align 4, !taffo.info !43
  %ii = alloca i32, align 4, !taffo.info !45
  %jj = alloca i32, align 4, !taffo.info !45
  store float %gamma, float* %gamma.addr, align 4
  call void @llvm.dbg.declare(metadata float* %gamma.addr, metadata !47, metadata !DIExpression()), !dbg !48
  %0 = bitcast i32* %ni to i8*, !dbg !49
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #3, !dbg !49
  call void @llvm.dbg.declare(metadata i32* %ni, metadata !50, metadata !DIExpression()), !dbg !52
  store i32 16, i32* %ni, align 4, !dbg !52
  %1 = bitcast i32* %nj to i8*, !dbg !53
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #3, !dbg !53
  call void @llvm.dbg.declare(metadata i32* %nj, metadata !54, metadata !DIExpression()), !dbg !55
  store i32 16, i32* %nj, align 4, !dbg !55
  %2 = bitcast i32* %nk to i8*, !dbg !56
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #3, !dbg !56
  call void @llvm.dbg.declare(metadata i32* %nk, metadata !57, metadata !DIExpression()), !dbg !58
  store i32 16, i32* %nk, align 4, !dbg !58
  %3 = bitcast i32* %i to i8*, !dbg !59
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #3, !dbg !59
  call void @llvm.dbg.declare(metadata i32* %i, metadata !60, metadata !DIExpression()), !dbg !61
  %4 = bitcast i32* %j to i8*, !dbg !59
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #3, !dbg !59
  call void @llvm.dbg.declare(metadata i32* %j, metadata !62, metadata !DIExpression()), !dbg !63
  %5 = bitcast i32* %k to i8*, !dbg !59
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #3, !dbg !59
  call void @llvm.dbg.declare(metadata i32* %k, metadata !64, metadata !DIExpression()), !dbg !65
  %6 = bitcast [256 x float]* %A to i8*, !dbg !66, !taffo.info !67
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* %6) #3, !dbg !66, !taffo.info !67
  call void @llvm.dbg.declare(metadata [256 x float]* %A, metadata !68, metadata !DIExpression()), !dbg !72
  %A1 = bitcast [256 x float]* %A to i8*, !dbg !66, !taffo.info !67
  %7 = bitcast [256 x float]* %B to i8*, !dbg !73, !taffo.info !67
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* %7) #3, !dbg !73, !taffo.info !67
  call void @llvm.dbg.declare(metadata [256 x float]* %B, metadata !74, metadata !DIExpression()), !dbg !75
  %B2 = bitcast [256 x float]* %B to i8*, !dbg !73, !taffo.info !67
  %8 = bitcast [256 x float]* %D to i8*, !dbg !76, !taffo.info !34, !taffo.target !36
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* %8) #3, !dbg !76, !taffo.info !67, !taffo.target !36
  call void @llvm.dbg.declare(metadata [256 x float]* %D, metadata !77, metadata !DIExpression()), !dbg !78
  %D3 = bitcast [256 x float]* %D to i8*, !dbg !76, !taffo.info !34, !taffo.target !36
  br label %VITIS_LOOP_52_1, !dbg !76

VITIS_LOOP_52_1:                                  ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !79
  br label %for.cond, !dbg !81

for.cond:                                         ; preds = %for.inc11, %VITIS_LOOP_52_1
  %9 = load i32, i32* %i, align 4, !dbg !82, !taffo.info !27
  %10 = load i32, i32* %ni, align 4, !dbg !84, !taffo.info !25
  %cmp = icmp slt i32 %9, %10, !dbg !85, !taffo.info !86
  br i1 %cmp, label %for.body, label %for.end13, !dbg !88

for.body:                                         ; preds = %for.cond
  br label %VITIS_LOOP_53_2, !dbg !89

VITIS_LOOP_53_2:                                  ; preds = %for.body
  store i32 0, i32* %j, align 4, !dbg !90
  br label %for.cond4, !dbg !93

for.cond4:                                        ; preds = %for.inc, %VITIS_LOOP_53_2
  %11 = load i32, i32* %j, align 4, !dbg !94, !taffo.info !27
  %12 = load i32, i32* %nk, align 4, !dbg !96, !taffo.info !25
  %cmp5 = icmp slt i32 %11, %12, !dbg !97, !taffo.info !86
  br i1 %cmp5, label %for.body6, label %for.end, !dbg !98

for.body6:                                        ; preds = %for.cond4
  %13 = load i32, i32* %i, align 4, !dbg !99, !taffo.info !27
  %14 = load i32, i32* %j, align 4, !dbg !101, !taffo.info !27
  %mul = mul nsw i32 %13, %14, !dbg !102, !taffo.info !1
  %add = add nsw i32 %mul, 1, !dbg !103, !taffo.info !86
  %15 = load i32, i32* %ni, align 4, !dbg !104, !taffo.info !25
  %rem = srem i32 %add, %15, !dbg !105, !taffo.info !106
  %conv = sitofp i32 %rem to float, !dbg !108, !taffo.info !106
  %mul7 = fmul float 5.000000e+00, %conv, !dbg !109, !taffo.info !110
  %16 = load i32, i32* %ni, align 4, !dbg !112, !taffo.info !25
  %conv8 = sitofp i32 %16 to float, !dbg !112, !taffo.info !25
  %div = fdiv float %mul7, %conv8, !dbg !113, !taffo.info !114
  %17 = load i32, i32* %i, align 4, !dbg !115, !taffo.info !27
  %18 = load i32, i32* %nk, align 4, !dbg !116, !taffo.info !25
  %mul9 = mul nsw i32 %17, %18, !dbg !117, !taffo.info !1
  %19 = load i32, i32* %j, align 4, !dbg !118, !taffo.info !27
  %add10 = add nsw i32 %mul9, %19, !dbg !119, !taffo.info !1
  %idxprom = sext i32 %add10 to i64, !dbg !120, !taffo.info !1
  %arrayidx = getelementptr inbounds [256 x float], [256 x float]* %A, i64 0, i64 %idxprom, !dbg !120, !taffo.info !31
  store float %div, float* %arrayidx, align 4, !dbg !121, !taffo.info !67
  br label %for.inc, !dbg !122

for.inc:                                          ; preds = %for.body6
  %20 = load i32, i32* %j, align 4, !dbg !123, !taffo.info !27
  %inc = add nsw i32 %20, 1, !dbg !123, !taffo.info !86
  store i32 %inc, i32* %j, align 4, !dbg !123
  br label %for.cond4, !dbg !124, !llvm.loop !125

for.end:                                          ; preds = %for.cond4
  br label %for.inc11, !dbg !128

for.inc11:                                        ; preds = %for.end
  %21 = load i32, i32* %i, align 4, !dbg !129, !taffo.info !27
  %inc12 = add nsw i32 %21, 1, !dbg !129, !taffo.info !86
  store i32 %inc12, i32* %i, align 4, !dbg !129
  br label %for.cond, !dbg !130, !llvm.loop !131

for.end13:                                        ; preds = %for.cond
  br label %VITIS_LOOP_57_3, !dbg !132

VITIS_LOOP_57_3:                                  ; preds = %for.end13
  store i32 0, i32* %i, align 4, !dbg !134
  br label %for.cond14, !dbg !136

for.cond14:                                       ; preds = %for.inc34, %VITIS_LOOP_57_3
  %22 = load i32, i32* %i, align 4, !dbg !137, !taffo.info !27
  %23 = load i32, i32* %nk, align 4, !dbg !139, !taffo.info !25
  %cmp15 = icmp slt i32 %22, %23, !dbg !140, !taffo.info !86
  br i1 %cmp15, label %for.body16, label %for.end36, !dbg !141

for.body16:                                       ; preds = %for.cond14
  br label %VITIS_LOOP_58_4, !dbg !142

VITIS_LOOP_58_4:                                  ; preds = %for.body16
  store i32 0, i32* %j, align 4, !dbg !143
  br label %for.cond17, !dbg !146

for.cond17:                                       ; preds = %for.inc31, %VITIS_LOOP_58_4
  %24 = load i32, i32* %j, align 4, !dbg !147, !taffo.info !27
  %25 = load i32, i32* %nj, align 4, !dbg !149, !taffo.info !25
  %cmp18 = icmp slt i32 %24, %25, !dbg !150, !taffo.info !86
  br i1 %cmp18, label %for.body19, label %for.end33, !dbg !151

for.body19:                                       ; preds = %for.cond17
  %26 = load i32, i32* %i, align 4, !dbg !152, !taffo.info !27
  %27 = load i32, i32* %j, align 4, !dbg !154, !taffo.info !27
  %add20 = add nsw i32 %27, 1, !dbg !155, !taffo.info !156
  %mul21 = mul nsw i32 %26, %add20, !dbg !158, !taffo.info !159
  %28 = load i32, i32* %nj, align 4, !dbg !161, !taffo.info !25
  %rem22 = srem i32 %mul21, %28, !dbg !162, !taffo.info !106
  %conv23 = sitofp i32 %rem22 to float, !dbg !163, !taffo.info !106
  %mul24 = fmul float 3.000000e+00, %conv23, !dbg !164, !taffo.info !165
  %29 = load i32, i32* %nj, align 4, !dbg !167, !taffo.info !25
  %conv25 = sitofp i32 %29 to float, !dbg !167, !taffo.info !25
  %div26 = fdiv float %mul24, %conv25, !dbg !168, !taffo.info !27
  %30 = load i32, i32* %i, align 4, !dbg !169, !taffo.info !27
  %31 = load i32, i32* %nj, align 4, !dbg !170, !taffo.info !25
  %mul27 = mul nsw i32 %30, %31, !dbg !171, !taffo.info !172
  %32 = load i32, i32* %j, align 4, !dbg !174, !taffo.info !27
  %add28 = add nsw i32 %mul27, %32, !dbg !175, !taffo.info !176
  %idxprom29 = sext i32 %add28 to i64, !dbg !178, !taffo.info !176
  %arrayidx30 = getelementptr inbounds [256 x float], [256 x float]* %B, i64 0, i64 %idxprom29, !dbg !178, !taffo.info !33
  store float %div26, float* %arrayidx30, align 4, !dbg !179, !taffo.info !67
  br label %for.inc31, !dbg !180

for.inc31:                                        ; preds = %for.body19
  %33 = load i32, i32* %j, align 4, !dbg !181, !taffo.info !27
  %inc32 = add nsw i32 %33, 1, !dbg !181, !taffo.info !156
  store i32 %inc32, i32* %j, align 4, !dbg !181
  br label %for.cond17, !dbg !182, !llvm.loop !183

for.end33:                                        ; preds = %for.cond17
  br label %for.inc34, !dbg !186

for.inc34:                                        ; preds = %for.end33
  %34 = load i32, i32* %i, align 4, !dbg !187, !taffo.info !27
  %inc35 = add nsw i32 %34, 1, !dbg !187, !taffo.info !156
  store i32 %inc35, i32* %i, align 4, !dbg !187
  br label %for.cond14, !dbg !188, !llvm.loop !189

for.end36:                                        ; preds = %for.cond14
  br label %VITIS_LOOP_62_5, !dbg !190

VITIS_LOOP_62_5:                                  ; preds = %for.end36
  store i32 0, i32* %i, align 4, !dbg !192
  br label %for.cond37, !dbg !194

for.cond37:                                       ; preds = %for.inc57, %VITIS_LOOP_62_5
  %35 = load i32, i32* %i, align 4, !dbg !195, !taffo.info !27
  %36 = load i32, i32* %ni, align 4, !dbg !197, !taffo.info !25
  %cmp38 = icmp slt i32 %35, %36, !dbg !198, !taffo.info !86
  br i1 %cmp38, label %for.body39, label %for.end59, !dbg !199

for.body39:                                       ; preds = %for.cond37
  br label %VITIS_LOOP_63_6, !dbg !200

VITIS_LOOP_63_6:                                  ; preds = %for.body39
  store i32 0, i32* %j, align 4, !dbg !201
  br label %for.cond40, !dbg !204

for.cond40:                                       ; preds = %for.inc54, %VITIS_LOOP_63_6
  %37 = load i32, i32* %j, align 4, !dbg !205, !taffo.info !27
  %38 = load i32, i32* %nj, align 4, !dbg !207, !taffo.info !25
  %cmp41 = icmp slt i32 %37, %38, !dbg !208, !taffo.info !86
  br i1 %cmp41, label %for.body42, label %for.end56, !dbg !209

for.body42:                                       ; preds = %for.cond40
  %39 = load i32, i32* %i, align 4, !dbg !210, !taffo.info !27
  %40 = load i32, i32* %j, align 4, !dbg !212, !taffo.info !27
  %add43 = add nsw i32 %40, 2, !dbg !213, !taffo.info !214
  %mul44 = mul nsw i32 %39, %add43, !dbg !216, !taffo.info !217
  %41 = load i32, i32* %nk, align 4, !dbg !219, !taffo.info !25
  %rem45 = srem i32 %mul44, %41, !dbg !220, !taffo.info !106
  %conv46 = sitofp i32 %rem45 to float, !dbg !221, !taffo.info !106
  %mul47 = fmul float 5.000000e+00, %conv46, !dbg !222, !taffo.info !110
  %42 = load i32, i32* %nk, align 4, !dbg !223, !taffo.info !25
  %conv48 = sitofp i32 %42 to float, !dbg !223, !taffo.info !25
  %div49 = fdiv float %mul47, %conv48, !dbg !224, !taffo.info !114
  %43 = load i32, i32* %i, align 4, !dbg !225, !taffo.info !27
  %44 = load i32, i32* %nj, align 4, !dbg !226, !taffo.info !25
  %mul50 = mul nsw i32 %43, %44, !dbg !227, !taffo.info !165
  %45 = load i32, i32* %j, align 4, !dbg !228, !taffo.info !27
  %add51 = add nsw i32 %mul50, %45, !dbg !229, !taffo.info !230
  %idxprom52 = sext i32 %add51 to i64, !dbg !232, !taffo.info !230
  %arrayidx53 = getelementptr inbounds [256 x float], [256 x float]* %D, i64 0, i64 %idxprom52, !dbg !232, !taffo.info !233, !taffo.target !36
  store float %div49, float* %arrayidx53, align 4, !dbg !235, !taffo.info !67, !taffo.target !36
  br label %for.inc54, !dbg !236

for.inc54:                                        ; preds = %for.body42
  %46 = load i32, i32* %j, align 4, !dbg !237, !taffo.info !27
  %inc55 = add nsw i32 %46, 1, !dbg !237, !taffo.info !238
  store i32 %inc55, i32* %j, align 4, !dbg !237
  br label %for.cond40, !dbg !240, !llvm.loop !241

for.end56:                                        ; preds = %for.cond40
  br label %for.inc57, !dbg !244

for.inc57:                                        ; preds = %for.end56
  %47 = load i32, i32* %i, align 4, !dbg !245, !taffo.info !27
  %inc58 = add nsw i32 %47, 1, !dbg !245, !taffo.info !238
  store i32 %inc58, i32* %i, align 4, !dbg !245
  br label %for.cond37, !dbg !246, !llvm.loop !247

for.end59:                                        ; preds = %for.cond37
  call void @llvm.dbg.declare(metadata float* %alpha, metadata !250, metadata !DIExpression()), !dbg !251
  %alpha60 = bitcast float* %alpha to i8*, !dbg !252, !taffo.info !67
  store float 0x3FF3333340000000, float* %alpha, align 4, !dbg !251, !taffo.info !67
  call void @llvm.dbg.declare(metadata float* %beta, metadata !253, metadata !DIExpression()), !dbg !254
  %beta61 = bitcast float* %beta to i8*, !dbg !255, !taffo.info !67
  store float 1.500000e+00, float* %beta, align 4, !dbg !254, !taffo.info !67
  call void @llvm.dbg.declare(metadata float* %fg, metadata !256, metadata !DIExpression()), !dbg !257
  %fg62 = bitcast float* %fg to i8*, !dbg !258, !taffo.info !34
  %48 = load float, float* %gamma.addr, align 4, !dbg !259
  store float %48, float* %fg, align 4, !dbg !257, !taffo.info !67
  call void @llvm.dbg.declare(metadata float* %tmp, metadata !260, metadata !DIExpression()), !dbg !261
  %tmp63 = bitcast float* %tmp to i8*, !dbg !262, !taffo.info !34
  store float 0.000000e+00, float* %tmp, align 4, !dbg !261, !taffo.info !67
  call void @llvm.dbg.declare(metadata float* %sum, metadata !263, metadata !DIExpression()), !dbg !264
  %sum64 = bitcast float* %sum to i8*, !dbg !265, !taffo.info !41
  store float 0.000000e+00, float* %sum, align 4, !dbg !264, !taffo.info !67
  call void @llvm.dbg.declare(metadata float* %z, metadata !266, metadata !DIExpression()), !dbg !267
  %z65 = bitcast float* %z to i8*, !dbg !268, !taffo.info !43
  call void @llvm.dbg.declare(metadata i32* %ii, metadata !269, metadata !DIExpression()), !dbg !270
  call void @llvm.dbg.declare(metadata i32* %jj, metadata !271, metadata !DIExpression()), !dbg !272
  br label %VITIS_LOOP_76_7, !dbg !273

VITIS_LOOP_76_7:                                  ; preds = %for.end59
  store i32 0, i32* %ii, align 4, !dbg !274
  br label %for.cond66, !dbg !276

for.cond66:                                       ; preds = %for.inc110, %VITIS_LOOP_76_7
  %49 = load i32, i32* %ii, align 4, !dbg !277, !taffo.info !45
  %cmp67 = icmp slt i32 %49, 16, !dbg !279, !taffo.info !86
  br i1 %cmp67, label %for.body68, label %for.end112, !dbg !280

for.body68:                                       ; preds = %for.cond66
  br label %VITIS_LOOP_78_8, !dbg !281

VITIS_LOOP_78_8:                                  ; preds = %for.body68
  store i32 0, i32* %jj, align 4, !dbg !282
  br label %for.cond69, !dbg !285

for.cond69:                                       ; preds = %for.inc107, %VITIS_LOOP_78_8
  %50 = load i32, i32* %jj, align 4, !dbg !286, !taffo.info !45
  %cmp70 = icmp slt i32 %50, 16, !dbg !288, !taffo.info !86
  br i1 %cmp70, label %for.body71, label %for.end109, !dbg !289

for.body71:                                       ; preds = %for.cond69
  store float 0.000000e+00, float* %tmp, align 4, !dbg !290, !taffo.info !67
  br label %VITIS_LOOP_82_9, !dbg !292

VITIS_LOOP_82_9:                                  ; preds = %for.body71
  store i32 0, i32* %k, align 4, !dbg !293
  br label %for.cond72, !dbg !295

for.cond72:                                       ; preds = %for.inc86, %VITIS_LOOP_82_9
  %51 = load i32, i32* %k, align 4, !dbg !296, !taffo.info !29
  %cmp73 = icmp slt i32 %51, 16, !dbg !298, !taffo.info !86
  br i1 %cmp73, label %for.body74, label %for.end88, !dbg !299

for.body74:                                       ; preds = %for.cond72
  %52 = load i32, i32* %ii, align 4, !dbg !300, !taffo.info !45
  %mul75 = mul nsw i32 %52, 16, !dbg !302, !taffo.info !106
  %53 = load i32, i32* %k, align 4, !dbg !303, !taffo.info !29
  %add76 = add nsw i32 %mul75, %53, !dbg !304, !taffo.info !106
  %idxprom77 = sext i32 %add76 to i64, !dbg !305, !taffo.info !106
  %arrayidx78 = getelementptr inbounds [256 x float], [256 x float]* %A, i64 0, i64 %idxprom77, !dbg !305, !taffo.info !31
  %54 = load float, float* %arrayidx78, align 4, !dbg !305, !taffo.info !31
  %55 = load i32, i32* %k, align 4, !dbg !306, !taffo.info !29
  %mul79 = mul nsw i32 %55, 16, !dbg !307, !taffo.info !1
  %56 = load i32, i32* %jj, align 4, !dbg !308, !taffo.info !45
  %add80 = add nsw i32 %mul79, %56, !dbg !309, !taffo.info !29
  %idxprom81 = sext i32 %add80 to i64, !dbg !310, !taffo.info !29
  %arrayidx82 = getelementptr inbounds [256 x float], [256 x float]* %B, i64 0, i64 %idxprom81, !dbg !310, !taffo.info !33
  %57 = load float, float* %arrayidx82, align 4, !dbg !310, !taffo.info !33
  %mul83 = fmul float %54, %57, !dbg !311, !taffo.info !312
  %58 = load float, float* %alpha, align 4, !dbg !314, !taffo.info !37
  %mul84 = fmul float %mul83, %58, !dbg !315, !taffo.info !316
  store float %mul84, float* %z, align 4, !dbg !318, !taffo.info !67
  %59 = load float, float* %tmp, align 4, !dbg !319, !taffo.info !34
  %60 = load float, float* %z, align 4, !dbg !320, !taffo.info !43
  %add85 = fadd float %59, %60, !dbg !321, !taffo.info !322
  store float %add85, float* %tmp, align 4, !dbg !324, !taffo.info !67
  br label %for.inc86, !dbg !325

for.inc86:                                        ; preds = %for.body74
  %61 = load i32, i32* %k, align 4, !dbg !326, !taffo.info !29
  %inc87 = add nsw i32 %61, 1, !dbg !326, !taffo.info !86
  store i32 %inc87, i32* %k, align 4, !dbg !326
  br label %for.cond72, !dbg !327, !llvm.loop !328

for.end88:                                        ; preds = %for.cond72
  %62 = load i32, i32* %ii, align 4, !dbg !333, !taffo.info !45
  %mul89 = mul nsw i32 %62, 16, !dbg !334, !taffo.info !106
  %63 = load i32, i32* %jj, align 4, !dbg !335, !taffo.info !45
  %add90 = add nsw i32 %mul89, %63, !dbg !336, !taffo.info !106
  %idxprom91 = sext i32 %add90 to i64, !dbg !337, !taffo.info !106
  %arrayidx92 = getelementptr inbounds [256 x float], [256 x float]* %D, i64 0, i64 %idxprom91, !dbg !337, !taffo.info !233, !taffo.target !36
  %64 = load float, float* %arrayidx92, align 4, !dbg !337, !taffo.info !233, !taffo.target !36
  %65 = load float, float* %beta, align 4, !dbg !338, !taffo.info !39
  %mul93 = fmul float %64, %65, !dbg !339, !taffo.info !340
  %66 = load i32, i32* %ii, align 4, !dbg !342, !taffo.info !45
  %mul94 = mul nsw i32 %66, 16, !dbg !343, !taffo.info !106
  %67 = load i32, i32* %jj, align 4, !dbg !344, !taffo.info !45
  %add95 = add nsw i32 %mul94, %67, !dbg !345, !taffo.info !106
  %idxprom96 = sext i32 %add95 to i64, !dbg !346, !taffo.info !106
  %arrayidx97 = getelementptr inbounds [256 x float], [256 x float]* %D, i64 0, i64 %idxprom96, !dbg !346, !taffo.info !233, !taffo.target !36
  store float %mul93, float* %arrayidx97, align 4, !dbg !347, !taffo.info !67, !taffo.target !36
  %68 = load i32, i32* %ii, align 4, !dbg !348, !taffo.info !45
  %mul98 = mul nsw i32 %68, 16, !dbg !349, !taffo.info !106
  %69 = load i32, i32* %jj, align 4, !dbg !350, !taffo.info !45
  %add99 = add nsw i32 %mul98, %69, !dbg !351, !taffo.info !106
  %idxprom100 = sext i32 %add99 to i64, !dbg !352, !taffo.info !106
  %arrayidx101 = getelementptr inbounds [256 x float], [256 x float]* %D, i64 0, i64 %idxprom100, !dbg !352, !taffo.info !233, !taffo.target !36
  %70 = load float, float* %arrayidx101, align 4, !dbg !352, !taffo.info !233, !taffo.target !36
  %71 = load float, float* %tmp, align 4, !dbg !353, !taffo.info !34
  %add102 = fadd float %70, %71, !dbg !354, !taffo.info !233
  %72 = load i32, i32* %ii, align 4, !dbg !355, !taffo.info !45
  %mul103 = mul nsw i32 %72, 16, !dbg !356, !taffo.info !106
  %73 = load i32, i32* %jj, align 4, !dbg !357, !taffo.info !45
  %add104 = add nsw i32 %mul103, %73, !dbg !358, !taffo.info !106
  %idxprom105 = sext i32 %add104 to i64, !dbg !359, !taffo.info !106
  %arrayidx106 = getelementptr inbounds [256 x float], [256 x float]* %D, i64 0, i64 %idxprom105, !dbg !359, !taffo.info !233, !taffo.target !36
  store float %add102, float* %arrayidx106, align 4, !dbg !360, !taffo.info !67, !taffo.target !36
  br label %for.inc107, !dbg !361

for.inc107:                                       ; preds = %for.end88
  %74 = load i32, i32* %jj, align 4, !dbg !362, !taffo.info !45
  %inc108 = add nsw i32 %74, 1, !dbg !362, !taffo.info !86
  store i32 %inc108, i32* %jj, align 4, !dbg !362
  br label %for.cond69, !dbg !363, !llvm.loop !364

for.end109:                                       ; preds = %for.cond69
  br label %for.inc110, !dbg !369

for.inc110:                                       ; preds = %for.end109
  %75 = load i32, i32* %ii, align 4, !dbg !370, !taffo.info !45
  %inc111 = add nsw i32 %75, 1, !dbg !370, !taffo.info !86
  store i32 %inc111, i32* %ii, align 4, !dbg !370
  br label %for.cond66, !dbg !371, !llvm.loop !372

for.end112:                                       ; preds = %for.cond66
  br label %VITIS_LOOP_92_10, !dbg !373

VITIS_LOOP_92_10:                                 ; preds = %for.end112
  store i32 0, i32* %ii, align 4, !dbg !377
  br label %for.cond113, !dbg !379

for.cond113:                                      ; preds = %for.inc127, %VITIS_LOOP_92_10
  %76 = load i32, i32* %ii, align 4, !dbg !380, !taffo.info !45
  %cmp114 = icmp slt i32 %76, 16, !dbg !382, !taffo.info !86
  br i1 %cmp114, label %for.body115, label %for.end129, !dbg !383

for.body115:                                      ; preds = %for.cond113
  br label %VITIS_LOOP_95_11, !dbg !384

VITIS_LOOP_95_11:                                 ; preds = %for.body115
  store i32 0, i32* %jj, align 4, !dbg !385
  br label %for.cond116, !dbg !388

for.cond116:                                      ; preds = %for.inc124, %VITIS_LOOP_95_11
  %77 = load i32, i32* %jj, align 4, !dbg !389, !taffo.info !45
  %cmp117 = icmp slt i32 %77, 16, !dbg !391, !taffo.info !86
  br i1 %cmp117, label %for.body118, label %for.end126, !dbg !392

for.body118:                                      ; preds = %for.cond116
  %78 = load i32, i32* %ii, align 4, !dbg !393, !taffo.info !45
  %mul119 = mul nsw i32 %78, 16, !dbg !395, !taffo.info !172
  %79 = load i32, i32* %jj, align 4, !dbg !396, !taffo.info !45
  %add120 = add nsw i32 %mul119, %79, !dbg !397, !taffo.info !176
  %idxprom121 = sext i32 %add120 to i64, !dbg !398, !taffo.info !176
  %arrayidx122 = getelementptr inbounds [256 x float], [256 x float]* %D, i64 0, i64 %idxprom121, !dbg !398, !taffo.info !233, !taffo.target !36
  %80 = load float, float* %arrayidx122, align 4, !dbg !398, !taffo.info !233, !taffo.target !36
  %81 = load float, float* %sum, align 4, !dbg !399, !taffo.info !41
  %add123 = fadd float %81, %80, !dbg !399, !taffo.info !400
  store float %add123, float* %sum, align 4, !dbg !399, !taffo.info !67
  br label %for.inc124, !dbg !402

for.inc124:                                       ; preds = %for.body118
  %82 = load i32, i32* %jj, align 4, !dbg !403, !taffo.info !45
  %inc125 = add nsw i32 %82, 1, !dbg !403, !taffo.info !156
  store i32 %inc125, i32* %jj, align 4, !dbg !403
  br label %for.cond116, !dbg !404, !llvm.loop !405

for.end126:                                       ; preds = %for.cond116
  br label %for.inc127, !dbg !408

for.inc127:                                       ; preds = %for.end126
  %83 = load i32, i32* %ii, align 4, !dbg !409, !taffo.info !45
  %inc128 = add nsw i32 %83, 1, !dbg !409, !taffo.info !156
  store i32 %inc128, i32* %ii, align 4, !dbg !409
  br label %for.cond113, !dbg !410, !llvm.loop !411

for.end129:                                       ; preds = %for.cond113
  %84 = load float, float* %sum, align 4, !dbg !416, !taffo.info !41
  %85 = load float, float* %fg, align 4, !dbg !417, !taffo.info !34
  %mul130 = fmul float %84, %85, !dbg !418, !taffo.info !419
  %86 = bitcast [256 x float]* %D to i8*, !dbg !421, !taffo.info !34, !taffo.target !36
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* %86) #3, !dbg !421, !taffo.info !67, !taffo.target !36
  %87 = bitcast [256 x float]* %B to i8*, !dbg !421, !taffo.info !33
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* %87) #3, !dbg !421, !taffo.info !67
  %88 = bitcast [256 x float]* %A to i8*, !dbg !421, !taffo.info !31
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* %88) #3, !dbg !421, !taffo.info !67
  %89 = bitcast i32* %k to i8*, !dbg !421, !taffo.info !29
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %89) #3, !dbg !421
  %90 = bitcast i32* %j to i8*, !dbg !421, !taffo.info !27
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %90) #3, !dbg !421
  %91 = bitcast i32* %i to i8*, !dbg !421, !taffo.info !27
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %91) #3, !dbg !421
  %92 = bitcast i32* %nk to i8*, !dbg !421, !taffo.info !25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %92) #3, !dbg !421
  %93 = bitcast i32* %nj to i8*, !dbg !421, !taffo.info !25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %93) #3, !dbg !421
  %94 = bitcast i32* %ni to i8*, !dbg !421, !taffo.info !25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %94) #3, !dbg !421
  ret float %mul130, !dbg !422, !taffo.info !419
}

; Function Attrs: nounwind readnone speculatable
declare !taffo.funinfo !423 void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare !taffo.funinfo !424 void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare !taffo.funinfo !425 void @llvm.var.annotation(i8*, i8*, i8*, i32) #3

; Function Attrs: argmemonly nounwind
declare !taffo.funinfo !424 void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

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
!31 = !{i1 false, !32, i1 false, i1 true}
!32 = !{double 0.000000e+00, double 5.000000e+00}
!33 = !{i1 false, !28, i1 false, i1 true}
!34 = !{i1 false, !35, i1 false, i1 true}
!35 = !{double -1.600000e+02, double 1.600000e+02}
!36 = !{!"D"}
!37 = !{i1 false, !38, i1 false, i1 true}
!38 = !{double 0x3FF3333340000000, double 0x3FF3333340000000}
!39 = !{i1 false, !40, i1 false, i1 true}
!40 = !{double 1.500000e+00, double 1.500000e+00}
!41 = !{i1 false, !42, i1 false, i1 true}
!42 = !{double -1.000000e+02, double 1.000000e+02}
!43 = !{i1 false, !44, i1 false, i1 true}
!44 = !{double -2.000000e+02, double 2.000000e+02}
!45 = !{i1 false, !46, i1 false, i1 false}
!46 = !{double 0.000000e+00, double 2.000000e+00}
!47 = !DILocalVariable(name: "gamma", arg: 1, scope: !16, file: !17, line: 41, type: !11)
!48 = !DILocation(line: 41, column: 53, scope: !16)
!49 = !DILocation(line: 44, column: 5, scope: !16)
!50 = !DILocalVariable(name: "ni", scope: !16, file: !17, line: 44, type: !51)
!51 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!52 = !DILocation(line: 44, column: 9, scope: !16)
!53 = !DILocation(line: 45, column: 5, scope: !16)
!54 = !DILocalVariable(name: "nj", scope: !16, file: !17, line: 45, type: !51)
!55 = !DILocation(line: 45, column: 9, scope: !16)
!56 = !DILocation(line: 46, column: 5, scope: !16)
!57 = !DILocalVariable(name: "nk", scope: !16, file: !17, line: 46, type: !51)
!58 = !DILocation(line: 46, column: 9, scope: !16)
!59 = !DILocation(line: 47, column: 5, scope: !16)
!60 = !DILocalVariable(name: "i", scope: !16, file: !17, line: 47, type: !51)
!61 = !DILocation(line: 47, column: 9, scope: !16)
!62 = !DILocalVariable(name: "j", scope: !16, file: !17, line: 47, type: !51)
!63 = !DILocation(line: 47, column: 12, scope: !16)
!64 = !DILocalVariable(name: "k", scope: !16, file: !17, line: 47, type: !51)
!65 = !DILocation(line: 47, column: 15, scope: !16)
!66 = !DILocation(line: 48, column: 5, scope: !16)
!67 = !{i1 false, i1 false, i1 false, i1 true}
!68 = !DILocalVariable(name: "A", scope: !16, file: !17, line: 48, type: !69)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 8192, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 256)
!72 = !DILocation(line: 48, column: 11, scope: !16)
!73 = !DILocation(line: 49, column: 5, scope: !16)
!74 = !DILocalVariable(name: "B", scope: !16, file: !17, line: 49, type: !69)
!75 = !DILocation(line: 49, column: 11, scope: !16)
!76 = !DILocation(line: 50, column: 5, scope: !16)
!77 = !DILocalVariable(name: "D", scope: !16, file: !17, line: 50, type: !69)
!78 = !DILocation(line: 50, column: 11, scope: !16)
!79 = !DILocation(line: 52, column: 29, scope: !80)
!80 = distinct !DILexicalBlock(scope: !16, file: !17, line: 52, column: 22)
!81 = !DILocation(line: 52, column: 27, scope: !80)
!82 = !DILocation(line: 52, column: 34, scope: !83)
!83 = distinct !DILexicalBlock(scope: !80, file: !17, line: 52, column: 22)
!84 = !DILocation(line: 52, column: 38, scope: !83)
!85 = !DILocation(line: 52, column: 36, scope: !83)
!86 = !{i1 false, !87, i1 false, i1 false}
!87 = !{double 1.000000e+00, double 1.000000e+00}
!88 = !DILocation(line: 52, column: 22, scope: !80)
!89 = !DILocation(line: 52, column: 46, scope: !83)
!90 = !DILocation(line: 53, column: 33, scope: !91)
!91 = distinct !DILexicalBlock(scope: !92, file: !17, line: 53, column: 26)
!92 = distinct !DILexicalBlock(scope: !83, file: !17, line: 52, column: 46)
!93 = !DILocation(line: 53, column: 31, scope: !91)
!94 = !DILocation(line: 53, column: 38, scope: !95)
!95 = distinct !DILexicalBlock(scope: !91, file: !17, line: 53, column: 26)
!96 = !DILocation(line: 53, column: 42, scope: !95)
!97 = !DILocation(line: 53, column: 40, scope: !95)
!98 = !DILocation(line: 53, column: 26, scope: !91)
!99 = !DILocation(line: 54, column: 39, scope: !100)
!100 = distinct !DILexicalBlock(scope: !95, file: !17, line: 53, column: 50)
!101 = !DILocation(line: 54, column: 41, scope: !100)
!102 = !DILocation(line: 54, column: 40, scope: !100)
!103 = !DILocation(line: 54, column: 42, scope: !100)
!104 = !DILocation(line: 54, column: 48, scope: !100)
!105 = !DILocation(line: 54, column: 46, scope: !100)
!106 = !{i1 false, !107, i1 false, i1 false}
!107 = !{double 0.000000e+00, double 1.600000e+01}
!108 = !DILocation(line: 54, column: 37, scope: !100)
!109 = !DILocation(line: 54, column: 35, scope: !100)
!110 = !{i1 false, !111, i1 false, i1 false}
!111 = !{double 0.000000e+00, double 8.000000e+01}
!112 = !DILocation(line: 54, column: 54, scope: !100)
!113 = !DILocation(line: 54, column: 52, scope: !100)
!114 = !{i1 false, !32, i1 false, i1 false}
!115 = !DILocation(line: 54, column: 15, scope: !100)
!116 = !DILocation(line: 54, column: 17, scope: !100)
!117 = !DILocation(line: 54, column: 16, scope: !100)
!118 = !DILocation(line: 54, column: 20, scope: !100)
!119 = !DILocation(line: 54, column: 19, scope: !100)
!120 = !DILocation(line: 54, column: 13, scope: !100)
!121 = !DILocation(line: 54, column: 23, scope: !100)
!122 = !DILocation(line: 55, column: 13, scope: !100)
!123 = !DILocation(line: 53, column: 47, scope: !95)
!124 = !DILocation(line: 53, column: 26, scope: !95)
!125 = distinct !{!125, !98, !126, !127}
!126 = !DILocation(line: 55, column: 13, scope: !91)
!127 = !{!"llvm.loop.name", !"VITIS_LOOP_53_2"}
!128 = !DILocation(line: 56, column: 5, scope: !92)
!129 = !DILocation(line: 52, column: 43, scope: !83)
!130 = !DILocation(line: 52, column: 22, scope: !83)
!131 = distinct !{!131, !88, !132, !133}
!132 = !DILocation(line: 56, column: 5, scope: !80)
!133 = !{!"llvm.loop.name", !"VITIS_LOOP_52_1"}
!134 = !DILocation(line: 57, column: 29, scope: !135)
!135 = distinct !DILexicalBlock(scope: !16, file: !17, line: 57, column: 22)
!136 = !DILocation(line: 57, column: 27, scope: !135)
!137 = !DILocation(line: 57, column: 34, scope: !138)
!138 = distinct !DILexicalBlock(scope: !135, file: !17, line: 57, column: 22)
!139 = !DILocation(line: 57, column: 38, scope: !138)
!140 = !DILocation(line: 57, column: 36, scope: !138)
!141 = !DILocation(line: 57, column: 22, scope: !135)
!142 = !DILocation(line: 57, column: 46, scope: !138)
!143 = !DILocation(line: 58, column: 33, scope: !144)
!144 = distinct !DILexicalBlock(scope: !145, file: !17, line: 58, column: 26)
!145 = distinct !DILexicalBlock(scope: !138, file: !17, line: 57, column: 46)
!146 = !DILocation(line: 58, column: 31, scope: !144)
!147 = !DILocation(line: 58, column: 38, scope: !148)
!148 = distinct !DILexicalBlock(scope: !144, file: !17, line: 58, column: 26)
!149 = !DILocation(line: 58, column: 42, scope: !148)
!150 = !DILocation(line: 58, column: 40, scope: !148)
!151 = !DILocation(line: 58, column: 26, scope: !144)
!152 = !DILocation(line: 59, column: 38, scope: !153)
!153 = distinct !DILexicalBlock(scope: !148, file: !17, line: 58, column: 50)
!154 = !DILocation(line: 59, column: 41, scope: !153)
!155 = !DILocation(line: 59, column: 42, scope: !153)
!156 = !{i1 false, !157, i1 false, i1 false}
!157 = !{double 1.000000e+00, double 2.000000e+00}
!158 = !DILocation(line: 59, column: 39, scope: !153)
!159 = !{i1 false, !160, i1 false, i1 false}
!160 = !{double 0.000000e+00, double 4.000000e+00}
!161 = !DILocation(line: 59, column: 48, scope: !153)
!162 = !DILocation(line: 59, column: 46, scope: !153)
!163 = !DILocation(line: 59, column: 37, scope: !153)
!164 = !DILocation(line: 59, column: 35, scope: !153)
!165 = !{i1 false, !166, i1 false, i1 false}
!166 = !{double 0.000000e+00, double 4.800000e+01}
!167 = !DILocation(line: 59, column: 54, scope: !153)
!168 = !DILocation(line: 59, column: 52, scope: !153)
!169 = !DILocation(line: 59, column: 15, scope: !153)
!170 = !DILocation(line: 59, column: 17, scope: !153)
!171 = !DILocation(line: 59, column: 16, scope: !153)
!172 = !{i1 false, !173, i1 false, i1 false}
!173 = !{double 0.000000e+00, double 3.200000e+01}
!174 = !DILocation(line: 59, column: 20, scope: !153)
!175 = !DILocation(line: 59, column: 19, scope: !153)
!176 = !{i1 false, !177, i1 false, i1 false}
!177 = !{double 0.000000e+00, double 3.300000e+01}
!178 = !DILocation(line: 59, column: 13, scope: !153)
!179 = !DILocation(line: 59, column: 23, scope: !153)
!180 = !DILocation(line: 60, column: 9, scope: !153)
!181 = !DILocation(line: 58, column: 47, scope: !148)
!182 = !DILocation(line: 58, column: 26, scope: !148)
!183 = distinct !{!183, !151, !184, !185}
!184 = !DILocation(line: 60, column: 9, scope: !144)
!185 = !{!"llvm.loop.name", !"VITIS_LOOP_58_4"}
!186 = !DILocation(line: 61, column: 5, scope: !145)
!187 = !DILocation(line: 57, column: 43, scope: !138)
!188 = !DILocation(line: 57, column: 22, scope: !138)
!189 = distinct !{!189, !141, !190, !191}
!190 = !DILocation(line: 61, column: 5, scope: !135)
!191 = !{!"llvm.loop.name", !"VITIS_LOOP_57_3"}
!192 = !DILocation(line: 62, column: 29, scope: !193)
!193 = distinct !DILexicalBlock(scope: !16, file: !17, line: 62, column: 22)
!194 = !DILocation(line: 62, column: 27, scope: !193)
!195 = !DILocation(line: 62, column: 34, scope: !196)
!196 = distinct !DILexicalBlock(scope: !193, file: !17, line: 62, column: 22)
!197 = !DILocation(line: 62, column: 38, scope: !196)
!198 = !DILocation(line: 62, column: 36, scope: !196)
!199 = !DILocation(line: 62, column: 22, scope: !193)
!200 = !DILocation(line: 62, column: 46, scope: !196)
!201 = !DILocation(line: 63, column: 33, scope: !202)
!202 = distinct !DILexicalBlock(scope: !203, file: !17, line: 63, column: 26)
!203 = distinct !DILexicalBlock(scope: !196, file: !17, line: 62, column: 46)
!204 = !DILocation(line: 63, column: 31, scope: !202)
!205 = !DILocation(line: 63, column: 38, scope: !206)
!206 = distinct !DILexicalBlock(scope: !202, file: !17, line: 63, column: 26)
!207 = !DILocation(line: 63, column: 42, scope: !206)
!208 = !DILocation(line: 63, column: 40, scope: !206)
!209 = !DILocation(line: 63, column: 26, scope: !202)
!210 = !DILocation(line: 64, column: 38, scope: !211)
!211 = distinct !DILexicalBlock(scope: !206, file: !17, line: 63, column: 50)
!212 = !DILocation(line: 64, column: 41, scope: !211)
!213 = !DILocation(line: 64, column: 42, scope: !211)
!214 = !{i1 false, !215, i1 false, i1 false}
!215 = !{double 2.000000e+00, double 4.000000e+00}
!216 = !DILocation(line: 64, column: 39, scope: !211)
!217 = !{i1 false, !218, i1 false, i1 false}
!218 = !{double 0.000000e+00, double 1.200000e+01}
!219 = !DILocation(line: 64, column: 48, scope: !211)
!220 = !DILocation(line: 64, column: 46, scope: !211)
!221 = !DILocation(line: 64, column: 37, scope: !211)
!222 = !DILocation(line: 64, column: 35, scope: !211)
!223 = !DILocation(line: 64, column: 54, scope: !211)
!224 = !DILocation(line: 64, column: 52, scope: !211)
!225 = !DILocation(line: 64, column: 15, scope: !211)
!226 = !DILocation(line: 64, column: 17, scope: !211)
!227 = !DILocation(line: 64, column: 16, scope: !211)
!228 = !DILocation(line: 64, column: 20, scope: !211)
!229 = !DILocation(line: 64, column: 19, scope: !211)
!230 = !{i1 false, !231, i1 false, i1 false}
!231 = !{double 0.000000e+00, double 5.000000e+01}
!232 = !DILocation(line: 64, column: 13, scope: !211)
!233 = !{i1 false, !234, i1 false, i1 true}
!234 = !{double -1.600000e+02, double 1.675000e+02}
!235 = !DILocation(line: 64, column: 23, scope: !211)
!236 = !DILocation(line: 65, column: 9, scope: !211)
!237 = !DILocation(line: 63, column: 47, scope: !206)
!238 = !{i1 false, !239, i1 false, i1 false}
!239 = !{double 1.000000e+00, double 3.000000e+00}
!240 = !DILocation(line: 63, column: 26, scope: !206)
!241 = distinct !{!241, !209, !242, !243}
!242 = !DILocation(line: 65, column: 9, scope: !202)
!243 = !{!"llvm.loop.name", !"VITIS_LOOP_63_6"}
!244 = !DILocation(line: 66, column: 5, scope: !203)
!245 = !DILocation(line: 62, column: 43, scope: !196)
!246 = !DILocation(line: 62, column: 22, scope: !196)
!247 = distinct !{!247, !199, !248, !249}
!248 = !DILocation(line: 66, column: 5, scope: !193)
!249 = !{!"llvm.loop.name", !"VITIS_LOOP_62_5"}
!250 = !DILocalVariable(name: "alpha", scope: !16, file: !17, line: 69, type: !11)
!251 = !DILocation(line: 69, column: 49, scope: !16)
!252 = !DILocation(line: 69, column: 5, scope: !16)
!253 = !DILocalVariable(name: "beta", scope: !16, file: !17, line: 70, type: !11)
!254 = !DILocation(line: 70, column: 49, scope: !16)
!255 = !DILocation(line: 70, column: 5, scope: !16)
!256 = !DILocalVariable(name: "fg", scope: !16, file: !17, line: 71, type: !11)
!257 = !DILocation(line: 71, column: 65, scope: !16)
!258 = !DILocation(line: 71, column: 5, scope: !16)
!259 = !DILocation(line: 71, column: 70, scope: !16)
!260 = !DILocalVariable(name: "tmp", scope: !16, file: !17, line: 72, type: !11)
!261 = !DILocation(line: 72, column: 65, scope: !16)
!262 = !DILocation(line: 72, column: 5, scope: !16)
!263 = !DILocalVariable(name: "sum", scope: !16, file: !17, line: 73, type: !11)
!264 = !DILocation(line: 73, column: 65, scope: !16)
!265 = !DILocation(line: 73, column: 5, scope: !16)
!266 = !DILocalVariable(name: "z", scope: !16, file: !17, line: 74, type: !11)
!267 = !DILocation(line: 74, column: 11, scope: !16)
!268 = !DILocation(line: 74, column: 5, scope: !16)
!269 = !DILocalVariable(name: "ii", scope: !16, file: !17, line: 75, type: !51)
!270 = !DILocation(line: 75, column: 9, scope: !16)
!271 = !DILocalVariable(name: "jj", scope: !16, file: !17, line: 75, type: !51)
!272 = !DILocation(line: 75, column: 13, scope: !16)
!273 = !DILocation(line: 75, column: 5, scope: !16)
!274 = !DILocation(line: 76, column: 30, scope: !275)
!275 = distinct !DILexicalBlock(scope: !16, file: !17, line: 76, column: 22)
!276 = !DILocation(line: 76, column: 27, scope: !275)
!277 = !DILocation(line: 76, column: 35, scope: !278)
!278 = distinct !DILexicalBlock(scope: !275, file: !17, line: 76, column: 22)
!279 = !DILocation(line: 76, column: 38, scope: !278)
!280 = !DILocation(line: 76, column: 22, scope: !275)
!281 = !DILocation(line: 76, column: 49, scope: !278)
!282 = !DILocation(line: 78, column: 27, scope: !283)
!283 = distinct !DILexicalBlock(scope: !284, file: !17, line: 78, column: 19)
!284 = distinct !DILexicalBlock(scope: !278, file: !17, line: 76, column: 49)
!285 = !DILocation(line: 78, column: 24, scope: !283)
!286 = !DILocation(line: 78, column: 32, scope: !287)
!287 = distinct !DILexicalBlock(scope: !283, file: !17, line: 78, column: 19)
!288 = !DILocation(line: 78, column: 35, scope: !287)
!289 = !DILocation(line: 78, column: 19, scope: !283)
!290 = !DILocation(line: 81, column: 6, scope: !291)
!291 = distinct !DILexicalBlock(scope: !287, file: !17, line: 79, column: 9)
!292 = !DILocation(line: 81, column: 2, scope: !291)
!293 = !DILocation(line: 82, column: 37, scope: !294)
!294 = distinct !DILexicalBlock(scope: !291, file: !17, line: 82, column: 30)
!295 = !DILocation(line: 82, column: 35, scope: !294)
!296 = !DILocation(line: 82, column: 42, scope: !297)
!297 = distinct !DILexicalBlock(scope: !294, file: !17, line: 82, column: 30)
!298 = !DILocation(line: 82, column: 44, scope: !297)
!299 = !DILocation(line: 82, column: 30, scope: !294)
!300 = !DILocation(line: 84, column: 8, scope: !301)
!301 = distinct !DILexicalBlock(scope: !297, file: !17, line: 82, column: 54)
!302 = !DILocation(line: 84, column: 10, scope: !301)
!303 = !DILocation(line: 84, column: 15, scope: !301)
!304 = !DILocation(line: 84, column: 14, scope: !301)
!305 = !DILocation(line: 84, column: 6, scope: !301)
!306 = !DILocation(line: 84, column: 22, scope: !301)
!307 = !DILocation(line: 84, column: 23, scope: !301)
!308 = !DILocation(line: 84, column: 28, scope: !301)
!309 = !DILocation(line: 84, column: 27, scope: !301)
!310 = !DILocation(line: 84, column: 20, scope: !301)
!311 = !DILocation(line: 84, column: 18, scope: !301)
!312 = !{i1 false, !313, i1 false, i1 true}
!313 = !{double 0.000000e+00, double 1.500000e+01}
!314 = !DILocation(line: 84, column: 34, scope: !301)
!315 = !DILocation(line: 84, column: 32, scope: !301)
!316 = !{i1 false, !317, i1 false, i1 true}
!317 = !{double 0.000000e+00, double 0x403200000C000000}
!318 = !DILocation(line: 84, column: 4, scope: !301)
!319 = !DILocation(line: 85, column: 23, scope: !301)
!320 = !DILocation(line: 85, column: 29, scope: !301)
!321 = !DILocation(line: 85, column: 27, scope: !301)
!322 = !{i1 false, !323, i1 false, i1 true}
!323 = !{double -3.600000e+02, double 3.600000e+02}
!324 = !DILocation(line: 85, column: 21, scope: !301)
!325 = !DILocation(line: 86, column: 13, scope: !301)
!326 = !DILocation(line: 82, column: 51, scope: !297)
!327 = !DILocation(line: 82, column: 30, scope: !297)
!328 = distinct !{!328, !299, !329, !330, !332}
!329 = !DILocation(line: 86, column: 13, scope: !294)
!330 = !{!"llvm.loop.pipeline.enable", i32 1, i1 false, i8 -1, !"user", !331}
!331 = !DILocation(line: 83, column: 9, scope: !294)
!332 = !{!"llvm.loop.name", !"VITIS_LOOP_82_9"}
!333 = !DILocation(line: 87, column: 35, scope: !291)
!334 = !DILocation(line: 87, column: 37, scope: !291)
!335 = !DILocation(line: 87, column: 42, scope: !291)
!336 = !DILocation(line: 87, column: 41, scope: !291)
!337 = !DILocation(line: 87, column: 33, scope: !291)
!338 = !DILocation(line: 87, column: 48, scope: !291)
!339 = !DILocation(line: 87, column: 46, scope: !291)
!340 = !{i1 false, !341, i1 false, i1 true}
!341 = !{double 0.000000e+00, double 7.500000e+00}
!342 = !DILocation(line: 87, column: 20, scope: !291)
!343 = !DILocation(line: 87, column: 22, scope: !291)
!344 = !DILocation(line: 87, column: 27, scope: !291)
!345 = !DILocation(line: 87, column: 26, scope: !291)
!346 = !DILocation(line: 87, column: 18, scope: !291)
!347 = !DILocation(line: 87, column: 31, scope: !291)
!348 = !DILocation(line: 88, column: 35, scope: !291)
!349 = !DILocation(line: 88, column: 37, scope: !291)
!350 = !DILocation(line: 88, column: 42, scope: !291)
!351 = !DILocation(line: 88, column: 41, scope: !291)
!352 = !DILocation(line: 88, column: 33, scope: !291)
!353 = !DILocation(line: 88, column: 48, scope: !291)
!354 = !DILocation(line: 88, column: 46, scope: !291)
!355 = !DILocation(line: 88, column: 20, scope: !291)
!356 = !DILocation(line: 88, column: 22, scope: !291)
!357 = !DILocation(line: 88, column: 27, scope: !291)
!358 = !DILocation(line: 88, column: 26, scope: !291)
!359 = !DILocation(line: 88, column: 18, scope: !291)
!360 = !DILocation(line: 88, column: 31, scope: !291)
!361 = !DILocation(line: 90, column: 9, scope: !291)
!362 = !DILocation(line: 78, column: 43, scope: !287)
!363 = !DILocation(line: 78, column: 19, scope: !287)
!364 = distinct !{!364, !289, !365, !366, !368}
!365 = !DILocation(line: 90, column: 9, scope: !283)
!366 = !{!"llvm.loop.unroll.count", i32 4, !"user", !367}
!367 = !DILocation(line: 80, column: 9, scope: !283)
!368 = !{!"llvm.loop.name", !"VITIS_LOOP_78_8"}
!369 = !DILocation(line: 91, column: 5, scope: !284)
!370 = !DILocation(line: 76, column: 46, scope: !278)
!371 = !DILocation(line: 76, column: 22, scope: !278)
!372 = distinct !{!372, !280, !373, !374, !376}
!373 = !DILocation(line: 91, column: 5, scope: !275)
!374 = !{!"llvm.loop.pipeline.enable", i32 1, i1 false, i8 -1, !"user", !375}
!375 = !DILocation(line: 77, column: 9, scope: !275)
!376 = !{!"llvm.loop.name", !"VITIS_LOOP_76_7"}
!377 = !DILocation(line: 92, column: 31, scope: !378)
!378 = distinct !DILexicalBlock(scope: !16, file: !17, line: 92, column: 23)
!379 = !DILocation(line: 92, column: 28, scope: !378)
!380 = !DILocation(line: 92, column: 36, scope: !381)
!381 = distinct !DILexicalBlock(scope: !378, file: !17, line: 92, column: 23)
!382 = !DILocation(line: 92, column: 39, scope: !381)
!383 = !DILocation(line: 92, column: 23, scope: !378)
!384 = !DILocation(line: 93, column: 5, scope: !381)
!385 = !DILocation(line: 95, column: 28, scope: !386)
!386 = distinct !DILexicalBlock(scope: !387, file: !17, line: 95, column: 20)
!387 = distinct !DILexicalBlock(scope: !381, file: !17, line: 93, column: 5)
!388 = !DILocation(line: 95, column: 25, scope: !386)
!389 = !DILocation(line: 95, column: 33, scope: !390)
!390 = distinct !DILexicalBlock(scope: !386, file: !17, line: 95, column: 20)
!391 = !DILocation(line: 95, column: 36, scope: !390)
!392 = !DILocation(line: 95, column: 20, scope: !386)
!393 = !DILocation(line: 96, column: 19, scope: !394)
!394 = distinct !DILexicalBlock(scope: !390, file: !17, line: 95, column: 47)
!395 = !DILocation(line: 96, column: 21, scope: !394)
!396 = !DILocation(line: 96, column: 26, scope: !394)
!397 = !DILocation(line: 96, column: 25, scope: !394)
!398 = !DILocation(line: 96, column: 17, scope: !394)
!399 = !DILocation(line: 96, column: 14, scope: !394)
!400 = !{i1 false, !401, i1 false, i1 true}
!401 = !{double -2.600000e+02, double 2.675000e+02}
!402 = !DILocation(line: 97, column: 9, scope: !394)
!403 = !DILocation(line: 95, column: 44, scope: !390)
!404 = !DILocation(line: 95, column: 20, scope: !390)
!405 = distinct !{!405, !392, !406, !407}
!406 = !DILocation(line: 97, column: 9, scope: !386)
!407 = !{!"llvm.loop.name", !"VITIS_LOOP_95_11"}
!408 = !DILocation(line: 98, column: 5, scope: !387)
!409 = !DILocation(line: 92, column: 47, scope: !381)
!410 = !DILocation(line: 92, column: 23, scope: !381)
!411 = distinct !{!411, !383, !412, !413, !415}
!412 = !DILocation(line: 98, column: 5, scope: !378)
!413 = !{!"llvm.loop.pipeline.enable", i32 1, i1 false, i8 -1, !"user", !414}
!414 = !DILocation(line: 94, column: 9, scope: !378)
!415 = !{!"llvm.loop.name", !"VITIS_LOOP_92_10"}
!416 = !DILocation(line: 100, column: 13, scope: !16)
!417 = !DILocation(line: 100, column: 19, scope: !16)
!418 = !DILocation(line: 100, column: 17, scope: !16)
!419 = !{i1 false, !420, i1 false, i1 true}
!420 = !{double -1.600000e+04, double 1.600000e+04}
!421 = !DILocation(line: 101, column: 1, scope: !16)
!422 = !DILocation(line: 100, column: 5, scope: !16)
!423 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!424 = !{i32 0, i1 false, i32 0, i1 false}
!425 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
