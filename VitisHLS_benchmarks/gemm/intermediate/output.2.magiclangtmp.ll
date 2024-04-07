; ModuleID = '/home/bruno/Desktop/benchmarks/gemm/intermediate/output.1.magiclangtmp.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.global_ctors = appending global [0 x { i32, void ()*, i8* }] zeroinitializer
@.str = private unnamed_addr constant [9 x i8] c"scalar()\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [15 x i8] c"gemm_taffoin.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [35 x i8] c"target('D') scalar(range(-16, 16))\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [21 x i8] c"scalar(range(0, 16))\00", section "llvm.metadata"
@.str.4 = private unnamed_addr constant [23 x i8] c"scalar(range(-16, 16))\00", section "llvm.metadata"
@.str.5 = private unnamed_addr constant [25 x i8] c"scalar(range(-100, 100))\00", section "llvm.metadata"
@.str.6 = private unnamed_addr constant [21 x i8] c"scalar(range(0, 32))\00", section "llvm.metadata"

; Function Attrs: nounwind
define float @mm(float %gamma) #0 !dbg !9 !fpga.function.pragma !13 !taffo.start !16 !taffo.funinfo !17 {
entry:
  %gamma.addr = alloca float, align 4
  %ni = alloca i32, align 4
  %nj = alloca i32, align 4
  %nk = alloca i32, align 4
  %nl = alloca i32, align 4
  %A = alloca [1024 x float], align 4, !taffo.info !18
  %B = alloca [1024 x float], align 4, !taffo.info !18
  %D = alloca [1024 x float], align 4, !taffo.info !19, !taffo.target !21
  %i = alloca i32, align 4, !taffo.info !22
  %j = alloca i32, align 4, !taffo.info !22
  %alpha = alloca float, align 4, !taffo.info !18
  %beta = alloca float, align 4, !taffo.info !18
  %fg = alloca float, align 4, !taffo.info !19
  %tmp = alloca [1024 x float], align 4, !taffo.info !19
  %sum = alloca float, align 4, !taffo.info !24
  %ii = alloca i32, align 4, !taffo.info !26
  %jj = alloca i32, align 4, !taffo.info !26
  %k = alloca i32, align 4, !taffo.info !26
  %z = alloca float, align 4, !taffo.info !24
  store float %gamma, float* %gamma.addr, align 4
  call void @llvm.dbg.declare(metadata float* %gamma.addr, metadata !28, metadata !DIExpression()), !dbg !29
  %0 = bitcast i32* %ni to i8*, !dbg !30
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #3, !dbg !30
  call void @llvm.dbg.declare(metadata i32* %ni, metadata !31, metadata !DIExpression()), !dbg !33
  store i32 32, i32* %ni, align 4, !dbg !33
  %1 = bitcast i32* %nj to i8*, !dbg !34
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #3, !dbg !34
  call void @llvm.dbg.declare(metadata i32* %nj, metadata !35, metadata !DIExpression()), !dbg !36
  store i32 32, i32* %nj, align 4, !dbg !36
  %2 = bitcast i32* %nk to i8*, !dbg !37
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #3, !dbg !37
  call void @llvm.dbg.declare(metadata i32* %nk, metadata !38, metadata !DIExpression()), !dbg !39
  store i32 32, i32* %nk, align 4, !dbg !39
  %3 = bitcast i32* %nl to i8*, !dbg !40
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #3, !dbg !40
  call void @llvm.dbg.declare(metadata i32* %nl, metadata !41, metadata !DIExpression()), !dbg !42
  store i32 32, i32* %nl, align 4, !dbg !42
  %4 = bitcast [1024 x float]* %A to i8*, !dbg !43, !taffo.info !18
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* %4) #3, !dbg !43, !taffo.info !18
  call void @llvm.dbg.declare(metadata [1024 x float]* %A, metadata !44, metadata !DIExpression()), !dbg !48
  %A1 = bitcast [1024 x float]* %A to i8*, !dbg !43, !taffo.info !18
  %5 = bitcast [1024 x float]* %B to i8*, !dbg !49, !taffo.info !18
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* %5) #3, !dbg !49, !taffo.info !18
  call void @llvm.dbg.declare(metadata [1024 x float]* %B, metadata !50, metadata !DIExpression()), !dbg !51
  %B2 = bitcast [1024 x float]* %B to i8*, !dbg !49, !taffo.info !18
  %6 = bitcast [1024 x float]* %D to i8*, !dbg !52, !taffo.info !18, !taffo.target !21
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* %6) #3, !dbg !52, !taffo.info !18, !taffo.target !21
  call void @llvm.dbg.declare(metadata [1024 x float]* %D, metadata !53, metadata !DIExpression()), !dbg !54
  %D3 = bitcast [1024 x float]* %D to i8*, !dbg !52, !taffo.info !18, !taffo.target !21
  %7 = bitcast i32* %i to i8*, !dbg !55, !taffo.info !18
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #3, !dbg !55, !taffo.info !18
  call void @llvm.dbg.declare(metadata i32* %i, metadata !56, metadata !DIExpression()), !dbg !57
  %i4 = bitcast i32* %i to i8*, !dbg !55, !taffo.info !18
  %8 = bitcast i32* %j to i8*, !dbg !58, !taffo.info !18
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3, !dbg !58, !taffo.info !18
  call void @llvm.dbg.declare(metadata i32* %j, metadata !59, metadata !DIExpression()), !dbg !60
  %j5 = bitcast i32* %j to i8*, !dbg !58, !taffo.info !18
  br label %VITIS_LOOP_54_1, !dbg !58

VITIS_LOOP_54_1:                                  ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !61, !taffo.info !18
  br label %for.cond, !dbg !63

for.cond:                                         ; preds = %for.inc13, %VITIS_LOOP_54_1
  %9 = load i32, i32* %i, align 4, !dbg !64, !taffo.info !18
  %10 = load i32, i32* %ni, align 4, !dbg !66
  %cmp = icmp slt i32 %9, %10, !dbg !67, !taffo.info !18
  br i1 %cmp, label %for.body, label %for.end15, !dbg !68, !taffo.info !18

for.body:                                         ; preds = %for.cond
  br label %VITIS_LOOP_55_2, !dbg !68

VITIS_LOOP_55_2:                                  ; preds = %for.body
  store i32 0, i32* %j, align 4, !dbg !69, !taffo.info !18
  br label %for.cond6, !dbg !71

for.cond6:                                        ; preds = %for.inc, %VITIS_LOOP_55_2
  %11 = load i32, i32* %j, align 4, !dbg !72, !taffo.info !18
  %12 = load i32, i32* %nk, align 4, !dbg !74
  %cmp7 = icmp slt i32 %11, %12, !dbg !75, !taffo.info !18
  br i1 %cmp7, label %for.body8, label %for.end, !dbg !76, !taffo.info !18

for.body8:                                        ; preds = %for.cond6
  %13 = load i32, i32* %i, align 4, !dbg !77, !taffo.info !18
  %14 = load i32, i32* %j, align 4, !dbg !78, !taffo.info !18
  %mul = mul nsw i32 %13, %14, !dbg !79, !taffo.info !18
  %add = add nsw i32 %mul, 1, !dbg !80, !taffo.info !18
  %15 = load i32, i32* %ni, align 4, !dbg !81
  %rem = srem i32 %add, %15, !dbg !82, !taffo.info !18
  %conv = sitofp i32 %rem to float, !dbg !83, !taffo.info !18
  %mul9 = fmul float 5.000000e+00, %conv, !dbg !84, !taffo.info !18
  %16 = load i32, i32* %ni, align 4, !dbg !85
  %conv10 = sitofp i32 %16 to float, !dbg !85
  %div = fdiv float %mul9, %conv10, !dbg !86, !taffo.info !18
  %17 = load i32, i32* %i, align 4, !dbg !87, !taffo.info !18
  %18 = load i32, i32* %nk, align 4, !dbg !88
  %mul11 = mul nsw i32 %17, %18, !dbg !89, !taffo.info !18
  %19 = load i32, i32* %j, align 4, !dbg !90, !taffo.info !18
  %add12 = add nsw i32 %mul11, %19, !dbg !91, !taffo.info !18
  %idxprom = sext i32 %add12 to i64, !dbg !92, !taffo.info !18
  %arrayidx = getelementptr inbounds [1024 x float], [1024 x float]* %A, i64 0, i64 %idxprom, !dbg !92, !taffo.info !18
  store float %div, float* %arrayidx, align 4, !dbg !93, !taffo.info !18
  br label %for.inc, !dbg !92

for.inc:                                          ; preds = %for.body8
  %20 = load i32, i32* %j, align 4, !dbg !94, !taffo.info !18
  %inc = add nsw i32 %20, 1, !dbg !94, !taffo.info !18
  store i32 %inc, i32* %j, align 4, !dbg !94, !taffo.info !18
  br label %for.cond6, !dbg !95, !llvm.loop !96

for.end:                                          ; preds = %for.cond6
  br label %for.inc13, !dbg !97

for.inc13:                                        ; preds = %for.end
  %21 = load i32, i32* %i, align 4, !dbg !99, !taffo.info !18
  %inc14 = add nsw i32 %21, 1, !dbg !99, !taffo.info !18
  store i32 %inc14, i32* %i, align 4, !dbg !99, !taffo.info !18
  br label %for.cond, !dbg !100, !llvm.loop !101

for.end15:                                        ; preds = %for.cond
  br label %VITIS_LOOP_57_3, !dbg !102

VITIS_LOOP_57_3:                                  ; preds = %for.end15
  store i32 0, i32* %i, align 4, !dbg !104, !taffo.info !18
  br label %for.cond16, !dbg !106

for.cond16:                                       ; preds = %for.inc36, %VITIS_LOOP_57_3
  %22 = load i32, i32* %i, align 4, !dbg !107, !taffo.info !18
  %23 = load i32, i32* %nk, align 4, !dbg !109
  %cmp17 = icmp slt i32 %22, %23, !dbg !110, !taffo.info !18
  br i1 %cmp17, label %for.body18, label %for.end38, !dbg !111, !taffo.info !18

for.body18:                                       ; preds = %for.cond16
  br label %VITIS_LOOP_58_4, !dbg !111

VITIS_LOOP_58_4:                                  ; preds = %for.body18
  store i32 0, i32* %j, align 4, !dbg !112, !taffo.info !18
  br label %for.cond19, !dbg !114

for.cond19:                                       ; preds = %for.inc33, %VITIS_LOOP_58_4
  %24 = load i32, i32* %j, align 4, !dbg !115, !taffo.info !18
  %25 = load i32, i32* %nj, align 4, !dbg !117
  %cmp20 = icmp slt i32 %24, %25, !dbg !118, !taffo.info !18
  br i1 %cmp20, label %for.body21, label %for.end35, !dbg !119, !taffo.info !18

for.body21:                                       ; preds = %for.cond19
  %26 = load i32, i32* %i, align 4, !dbg !120, !taffo.info !18
  %27 = load i32, i32* %j, align 4, !dbg !121, !taffo.info !18
  %add22 = add nsw i32 %27, 1, !dbg !122, !taffo.info !18
  %mul23 = mul nsw i32 %26, %add22, !dbg !123, !taffo.info !18
  %28 = load i32, i32* %nj, align 4, !dbg !124
  %rem24 = srem i32 %mul23, %28, !dbg !125, !taffo.info !18
  %conv25 = sitofp i32 %rem24 to float, !dbg !126, !taffo.info !18
  %mul26 = fmul float 3.000000e+00, %conv25, !dbg !127, !taffo.info !18
  %29 = load i32, i32* %nj, align 4, !dbg !128
  %conv27 = sitofp i32 %29 to float, !dbg !128
  %div28 = fdiv float %mul26, %conv27, !dbg !129, !taffo.info !18
  %30 = load i32, i32* %i, align 4, !dbg !130, !taffo.info !18
  %31 = load i32, i32* %nj, align 4, !dbg !131
  %mul29 = mul nsw i32 %30, %31, !dbg !132, !taffo.info !18
  %32 = load i32, i32* %j, align 4, !dbg !133, !taffo.info !18
  %add30 = add nsw i32 %mul29, %32, !dbg !134, !taffo.info !18
  %idxprom31 = sext i32 %add30 to i64, !dbg !135, !taffo.info !18
  %arrayidx32 = getelementptr inbounds [1024 x float], [1024 x float]* %B, i64 0, i64 %idxprom31, !dbg !135, !taffo.info !18
  store float %div28, float* %arrayidx32, align 4, !dbg !136, !taffo.info !18
  br label %for.inc33, !dbg !135

for.inc33:                                        ; preds = %for.body21
  %33 = load i32, i32* %j, align 4, !dbg !137, !taffo.info !18
  %inc34 = add nsw i32 %33, 1, !dbg !137, !taffo.info !18
  store i32 %inc34, i32* %j, align 4, !dbg !137, !taffo.info !18
  br label %for.cond19, !dbg !138, !llvm.loop !139

for.end35:                                        ; preds = %for.cond19
  br label %for.inc36, !dbg !140

for.inc36:                                        ; preds = %for.end35
  %34 = load i32, i32* %i, align 4, !dbg !142, !taffo.info !18
  %inc37 = add nsw i32 %34, 1, !dbg !142, !taffo.info !18
  store i32 %inc37, i32* %i, align 4, !dbg !142, !taffo.info !18
  br label %for.cond16, !dbg !143, !llvm.loop !144

for.end38:                                        ; preds = %for.cond16
  br label %VITIS_LOOP_60_5, !dbg !145

VITIS_LOOP_60_5:                                  ; preds = %for.end38
  store i32 0, i32* %i, align 4, !dbg !147, !taffo.info !18
  br label %for.cond39, !dbg !149

for.cond39:                                       ; preds = %for.inc59, %VITIS_LOOP_60_5
  %35 = load i32, i32* %i, align 4, !dbg !150, !taffo.info !18
  %36 = load i32, i32* %ni, align 4, !dbg !152
  %cmp40 = icmp slt i32 %35, %36, !dbg !153, !taffo.info !18
  br i1 %cmp40, label %for.body41, label %for.end61, !dbg !154, !taffo.info !18

for.body41:                                       ; preds = %for.cond39
  br label %VITIS_LOOP_61_6, !dbg !154

VITIS_LOOP_61_6:                                  ; preds = %for.body41
  store i32 0, i32* %j, align 4, !dbg !155, !taffo.info !18
  br label %for.cond42, !dbg !157

for.cond42:                                       ; preds = %for.inc56, %VITIS_LOOP_61_6
  %37 = load i32, i32* %j, align 4, !dbg !158, !taffo.info !18
  %38 = load i32, i32* %nl, align 4, !dbg !160
  %cmp43 = icmp slt i32 %37, %38, !dbg !161, !taffo.info !18
  br i1 %cmp43, label %for.body44, label %for.end58, !dbg !162, !taffo.info !18

for.body44:                                       ; preds = %for.cond42
  %39 = load i32, i32* %i, align 4, !dbg !163, !taffo.info !18
  %40 = load i32, i32* %j, align 4, !dbg !164, !taffo.info !18
  %add45 = add nsw i32 %40, 2, !dbg !165, !taffo.info !18
  %mul46 = mul nsw i32 %39, %add45, !dbg !166, !taffo.info !18
  %41 = load i32, i32* %nk, align 4, !dbg !167
  %rem47 = srem i32 %mul46, %41, !dbg !168, !taffo.info !18
  %conv48 = sitofp i32 %rem47 to float, !dbg !169, !taffo.info !18
  %mul49 = fmul float 5.000000e+00, %conv48, !dbg !170, !taffo.info !18
  %42 = load i32, i32* %nk, align 4, !dbg !171
  %conv50 = sitofp i32 %42 to float, !dbg !171
  %div51 = fdiv float %mul49, %conv50, !dbg !172, !taffo.info !18
  %43 = load i32, i32* %i, align 4, !dbg !173, !taffo.info !18
  %44 = load i32, i32* %nl, align 4, !dbg !174
  %mul52 = mul nsw i32 %43, %44, !dbg !175, !taffo.info !18
  %45 = load i32, i32* %j, align 4, !dbg !176, !taffo.info !18
  %add53 = add nsw i32 %mul52, %45, !dbg !177, !taffo.info !18
  %idxprom54 = sext i32 %add53 to i64, !dbg !178, !taffo.info !18
  %arrayidx55 = getelementptr inbounds [1024 x float], [1024 x float]* %D, i64 0, i64 %idxprom54, !dbg !178, !taffo.info !18, !taffo.target !21
  store float %div51, float* %arrayidx55, align 4, !dbg !179, !taffo.info !18, !taffo.target !21
  br label %for.inc56, !dbg !178

for.inc56:                                        ; preds = %for.body44
  %46 = load i32, i32* %j, align 4, !dbg !180, !taffo.info !18
  %inc57 = add nsw i32 %46, 1, !dbg !180, !taffo.info !18
  store i32 %inc57, i32* %j, align 4, !dbg !180, !taffo.info !18
  br label %for.cond42, !dbg !181, !llvm.loop !182

for.end58:                                        ; preds = %for.cond42
  br label %for.inc59, !dbg !183

for.inc59:                                        ; preds = %for.end58
  %47 = load i32, i32* %i, align 4, !dbg !185, !taffo.info !18
  %inc60 = add nsw i32 %47, 1, !dbg !185, !taffo.info !18
  store i32 %inc60, i32* %i, align 4, !dbg !185, !taffo.info !18
  br label %for.cond39, !dbg !186, !llvm.loop !187

for.end61:                                        ; preds = %for.cond39
  call void @llvm.dbg.declare(metadata float* %alpha, metadata !190, metadata !DIExpression()), !dbg !191
  %alpha62 = bitcast float* %alpha to i8*, !dbg !192, !taffo.info !18
  store float 0x3FF3333340000000, float* %alpha, align 4, !dbg !191, !taffo.info !18
  call void @llvm.dbg.declare(metadata float* %beta, metadata !193, metadata !DIExpression()), !dbg !194
  %beta63 = bitcast float* %beta to i8*, !dbg !195, !taffo.info !18
  store float 1.500000e+00, float* %beta, align 4, !dbg !194, !taffo.info !18
  call void @llvm.dbg.declare(metadata float* %fg, metadata !196, metadata !DIExpression()), !dbg !197
  %fg64 = bitcast float* %fg to i8*, !dbg !198, !taffo.info !18
  %48 = load float, float* %gamma.addr, align 4, !dbg !199
  store float %48, float* %fg, align 4, !dbg !197, !taffo.info !18
  call void @llvm.dbg.declare(metadata [1024 x float]* %tmp, metadata !200, metadata !DIExpression()), !dbg !201
  %tmp65 = bitcast [1024 x float]* %tmp to i8*, !dbg !202, !taffo.info !18
  call void @llvm.dbg.declare(metadata float* %sum, metadata !203, metadata !DIExpression()), !dbg !204
  %sum66 = bitcast float* %sum to i8*, !dbg !205, !taffo.info !18
  store float 0.000000e+00, float* %sum, align 4, !dbg !204, !taffo.info !18
  call void @llvm.dbg.declare(metadata i32* %ii, metadata !206, metadata !DIExpression()), !dbg !207
  %ii67 = bitcast i32* %ii to i8*, !dbg !208, !taffo.info !18
  call void @llvm.dbg.declare(metadata i32* %jj, metadata !209, metadata !DIExpression()), !dbg !210
  %jj68 = bitcast i32* %jj to i8*, !dbg !211, !taffo.info !18
  call void @llvm.dbg.declare(metadata i32* %k, metadata !212, metadata !DIExpression()), !dbg !213
  %k69 = bitcast i32* %k to i8*, !dbg !214, !taffo.info !18
  call void @llvm.dbg.declare(metadata float* %z, metadata !215, metadata !DIExpression()), !dbg !216
  %z70 = bitcast float* %z to i8*, !dbg !217, !taffo.info !18
  br label %VITIS_LOOP_73_7, !dbg !217

VITIS_LOOP_73_7:                                  ; preds = %for.end61
  store i32 0, i32* %ii, align 4, !dbg !218, !taffo.info !18
  br label %for.cond71, !dbg !220

for.cond71:                                       ; preds = %for.inc136, %VITIS_LOOP_73_7
  %49 = load i32, i32* %ii, align 4, !dbg !221, !taffo.info !18
  %cmp72 = icmp slt i32 %49, 32, !dbg !223, !taffo.info !18
  br i1 %cmp72, label %for.body73, label %for.end138, !dbg !224, !taffo.info !18

for.body73:                                       ; preds = %for.cond71
  br label %VITIS_LOOP_75_8, !dbg !225

VITIS_LOOP_75_8:                                  ; preds = %for.body73
  store i32 0, i32* %jj, align 4, !dbg !226, !taffo.info !18
  br label %for.cond74, !dbg !229

for.cond74:                                       ; preds = %for.inc133, %VITIS_LOOP_75_8
  %50 = load i32, i32* %jj, align 4, !dbg !230, !taffo.info !18
  %cmp75 = icmp slt i32 %50, 32, !dbg !232, !taffo.info !18
  br i1 %cmp75, label %for.body76, label %for.end135, !dbg !233, !taffo.info !18

for.body76:                                       ; preds = %for.cond74
  %51 = load i32, i32* %ii, align 4, !dbg !234, !taffo.info !18
  %mul77 = mul nsw i32 %51, 32, !dbg !236, !taffo.info !18
  %52 = load i32, i32* %jj, align 4, !dbg !237, !taffo.info !18
  %add78 = add nsw i32 %mul77, %52, !dbg !238, !taffo.info !18
  %idxprom79 = sext i32 %add78 to i64, !dbg !239, !taffo.info !18
  %arrayidx80 = getelementptr inbounds [1024 x float], [1024 x float]* %tmp, i64 0, i64 %idxprom79, !dbg !239, !taffo.info !18
  store float 0.000000e+00, float* %arrayidx80, align 4, !dbg !240, !taffo.info !18
  br label %VITIS_LOOP_79_9, !dbg !239

VITIS_LOOP_79_9:                                  ; preds = %for.body76
  store i32 0, i32* %k, align 4, !dbg !241, !taffo.info !18
  br label %for.cond81, !dbg !243

for.cond81:                                       ; preds = %for.inc103, %VITIS_LOOP_79_9
  %53 = load i32, i32* %k, align 4, !dbg !244, !taffo.info !18
  %cmp82 = icmp slt i32 %53, 32, !dbg !246, !taffo.info !18
  br i1 %cmp82, label %for.body83, label %for.end105, !dbg !247, !taffo.info !18

for.body83:                                       ; preds = %for.cond81
  %54 = load i32, i32* %ii, align 4, !dbg !248, !taffo.info !18
  %mul84 = mul nsw i32 %54, 32, !dbg !250, !taffo.info !18
  %55 = load i32, i32* %k, align 4, !dbg !251, !taffo.info !18
  %add85 = add nsw i32 %mul84, %55, !dbg !252, !taffo.info !18
  %idxprom86 = sext i32 %add85 to i64, !dbg !253, !taffo.info !18
  %arrayidx87 = getelementptr inbounds [1024 x float], [1024 x float]* %A, i64 0, i64 %idxprom86, !dbg !253, !taffo.info !18
  %56 = load float, float* %arrayidx87, align 4, !dbg !253, !taffo.info !18
  %57 = load i32, i32* %k, align 4, !dbg !254, !taffo.info !18
  %mul88 = mul nsw i32 %57, 32, !dbg !255, !taffo.info !18
  %58 = load i32, i32* %jj, align 4, !dbg !256, !taffo.info !18
  %add89 = add nsw i32 %mul88, %58, !dbg !257, !taffo.info !18
  %idxprom90 = sext i32 %add89 to i64, !dbg !258, !taffo.info !18
  %arrayidx91 = getelementptr inbounds [1024 x float], [1024 x float]* %B, i64 0, i64 %idxprom90, !dbg !258, !taffo.info !18
  %59 = load float, float* %arrayidx91, align 4, !dbg !258, !taffo.info !18
  %mul92 = fmul float %56, %59, !dbg !259, !taffo.info !18
  %60 = load float, float* %alpha, align 4, !dbg !260, !taffo.info !18
  %mul93 = fmul float %mul92, %60, !dbg !261, !taffo.info !18
  store float %mul93, float* %z, align 4, !dbg !262, !taffo.info !18
  %61 = load i32, i32* %ii, align 4, !dbg !263, !taffo.info !18
  %mul94 = mul nsw i32 %61, 32, !dbg !264, !taffo.info !18
  %62 = load i32, i32* %jj, align 4, !dbg !265, !taffo.info !18
  %add95 = add nsw i32 %mul94, %62, !dbg !266, !taffo.info !18
  %idxprom96 = sext i32 %add95 to i64, !dbg !267, !taffo.info !18
  %arrayidx97 = getelementptr inbounds [1024 x float], [1024 x float]* %tmp, i64 0, i64 %idxprom96, !dbg !267, !taffo.info !18
  %63 = load float, float* %arrayidx97, align 4, !dbg !267, !taffo.info !18
  %64 = load float, float* %z, align 4, !dbg !268, !taffo.info !18
  %add98 = fadd float %63, %64, !dbg !269, !taffo.info !18
  %65 = load i32, i32* %ii, align 4, !dbg !270, !taffo.info !18
  %mul99 = mul nsw i32 %65, 32, !dbg !271, !taffo.info !18
  %66 = load i32, i32* %jj, align 4, !dbg !272, !taffo.info !18
  %add100 = add nsw i32 %mul99, %66, !dbg !273, !taffo.info !18
  %idxprom101 = sext i32 %add100 to i64, !dbg !274, !taffo.info !18
  %arrayidx102 = getelementptr inbounds [1024 x float], [1024 x float]* %tmp, i64 0, i64 %idxprom101, !dbg !274, !taffo.info !18
  store float %add98, float* %arrayidx102, align 4, !dbg !275, !taffo.info !18
  br label %for.inc103, !dbg !276

for.inc103:                                       ; preds = %for.body83
  %67 = load i32, i32* %k, align 4, !dbg !277, !taffo.info !18
  %inc104 = add nsw i32 %67, 1, !dbg !277, !taffo.info !18
  store i32 %inc104, i32* %k, align 4, !dbg !277, !taffo.info !18
  br label %for.cond81, !dbg !278, !llvm.loop !279

for.end105:                                       ; preds = %for.cond81
  %68 = load i32, i32* %ii, align 4, !dbg !282, !taffo.info !18
  %mul106 = mul nsw i32 %68, 32, !dbg !283, !taffo.info !18
  %69 = load i32, i32* %jj, align 4, !dbg !284, !taffo.info !18
  %add107 = add nsw i32 %mul106, %69, !dbg !285, !taffo.info !18
  %idxprom108 = sext i32 %add107 to i64, !dbg !286, !taffo.info !18
  %arrayidx109 = getelementptr inbounds [1024 x float], [1024 x float]* %D, i64 0, i64 %idxprom108, !dbg !286, !taffo.info !18, !taffo.target !21
  %70 = load float, float* %arrayidx109, align 4, !dbg !286, !taffo.info !18, !taffo.target !21
  %71 = load float, float* %beta, align 4, !dbg !287, !taffo.info !18
  %mul110 = fmul float %70, %71, !dbg !288, !taffo.info !18
  %72 = load i32, i32* %ii, align 4, !dbg !289, !taffo.info !18
  %mul111 = mul nsw i32 %72, 32, !dbg !290, !taffo.info !18
  %73 = load i32, i32* %jj, align 4, !dbg !291, !taffo.info !18
  %add112 = add nsw i32 %mul111, %73, !dbg !292, !taffo.info !18
  %idxprom113 = sext i32 %add112 to i64, !dbg !293, !taffo.info !18
  %arrayidx114 = getelementptr inbounds [1024 x float], [1024 x float]* %D, i64 0, i64 %idxprom113, !dbg !293, !taffo.info !18, !taffo.target !21
  store float %mul110, float* %arrayidx114, align 4, !dbg !294, !taffo.info !18, !taffo.target !21
  %74 = load i32, i32* %ii, align 4, !dbg !295, !taffo.info !18
  %mul115 = mul nsw i32 %74, 32, !dbg !296, !taffo.info !18
  %75 = load i32, i32* %jj, align 4, !dbg !297, !taffo.info !18
  %add116 = add nsw i32 %mul115, %75, !dbg !298, !taffo.info !18
  %idxprom117 = sext i32 %add116 to i64, !dbg !299, !taffo.info !18
  %arrayidx118 = getelementptr inbounds [1024 x float], [1024 x float]* %D, i64 0, i64 %idxprom117, !dbg !299, !taffo.info !18, !taffo.target !21
  %76 = load float, float* %arrayidx118, align 4, !dbg !299, !taffo.info !18, !taffo.target !21
  %77 = load i32, i32* %ii, align 4, !dbg !300, !taffo.info !18
  %mul119 = mul nsw i32 %77, 32, !dbg !301, !taffo.info !18
  %78 = load i32, i32* %jj, align 4, !dbg !302, !taffo.info !18
  %add120 = add nsw i32 %mul119, %78, !dbg !303, !taffo.info !18
  %idxprom121 = sext i32 %add120 to i64, !dbg !304, !taffo.info !18
  %arrayidx122 = getelementptr inbounds [1024 x float], [1024 x float]* %tmp, i64 0, i64 %idxprom121, !dbg !304, !taffo.info !18
  %79 = load float, float* %arrayidx122, align 4, !dbg !304, !taffo.info !18
  %add123 = fadd float %76, %79, !dbg !305, !taffo.info !18, !taffo.target !21
  %80 = load i32, i32* %ii, align 4, !dbg !306, !taffo.info !18
  %mul124 = mul nsw i32 %80, 32, !dbg !307, !taffo.info !18
  %81 = load i32, i32* %jj, align 4, !dbg !308, !taffo.info !18
  %add125 = add nsw i32 %mul124, %81, !dbg !309, !taffo.info !18
  %idxprom126 = sext i32 %add125 to i64, !dbg !310, !taffo.info !18
  %arrayidx127 = getelementptr inbounds [1024 x float], [1024 x float]* %D, i64 0, i64 %idxprom126, !dbg !310, !taffo.info !18, !taffo.target !21
  store float %add123, float* %arrayidx127, align 4, !dbg !311, !taffo.info !18, !taffo.target !21
  %82 = load i32, i32* %ii, align 4, !dbg !312, !taffo.info !18
  %mul128 = mul nsw i32 %82, 32, !dbg !313, !taffo.info !18
  %83 = load i32, i32* %jj, align 4, !dbg !314, !taffo.info !18
  %add129 = add nsw i32 %mul128, %83, !dbg !315, !taffo.info !18
  %idxprom130 = sext i32 %add129 to i64, !dbg !316, !taffo.info !18
  %arrayidx131 = getelementptr inbounds [1024 x float], [1024 x float]* %D, i64 0, i64 %idxprom130, !dbg !316, !taffo.info !18, !taffo.target !21
  %84 = load float, float* %arrayidx131, align 4, !dbg !316, !taffo.info !18, !taffo.target !21
  %85 = load float, float* %sum, align 4, !dbg !317, !taffo.info !18
  %add132 = fadd float %85, %84, !dbg !317, !taffo.info !18
  store float %add132, float* %sum, align 4, !dbg !317, !taffo.info !18
  br label %for.inc133, !dbg !318

for.inc133:                                       ; preds = %for.end105
  %86 = load i32, i32* %jj, align 4, !dbg !319, !taffo.info !18
  %inc134 = add nsw i32 %86, 1, !dbg !319, !taffo.info !18
  store i32 %inc134, i32* %jj, align 4, !dbg !319, !taffo.info !18
  br label %for.cond74, !dbg !320, !llvm.loop !321

for.end135:                                       ; preds = %for.cond74
  br label %for.inc136, !dbg !326

for.inc136:                                       ; preds = %for.end135
  %87 = load i32, i32* %ii, align 4, !dbg !327, !taffo.info !18
  %inc137 = add nsw i32 %87, 1, !dbg !327, !taffo.info !18
  store i32 %inc137, i32* %ii, align 4, !dbg !327, !taffo.info !18
  br label %for.cond71, !dbg !328, !llvm.loop !329

for.end138:                                       ; preds = %for.cond71
  %88 = load float, float* %sum, align 4, !dbg !332, !taffo.info !18
  %89 = load float, float* %gamma.addr, align 4, !dbg !333
  %mul139 = fmul float %88, %89, !dbg !334, !taffo.info !18
  %90 = bitcast i32* %j to i8*, !dbg !335, !taffo.info !18
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %90) #3, !dbg !335, !taffo.info !18
  %91 = bitcast i32* %i to i8*, !dbg !335, !taffo.info !18
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %91) #3, !dbg !335, !taffo.info !18
  %92 = bitcast [1024 x float]* %D to i8*, !dbg !335, !taffo.info !18, !taffo.target !21
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* %92) #3, !dbg !335, !taffo.info !18, !taffo.target !21
  %93 = bitcast [1024 x float]* %B to i8*, !dbg !335, !taffo.info !18
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* %93) #3, !dbg !335, !taffo.info !18
  %94 = bitcast [1024 x float]* %A to i8*, !dbg !335, !taffo.info !18
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* %94) #3, !dbg !335, !taffo.info !18
  %95 = bitcast i32* %nl to i8*, !dbg !335
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %95) #3, !dbg !335
  %96 = bitcast i32* %nk to i8*, !dbg !335
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %96) #3, !dbg !335
  %97 = bitcast i32* %nj to i8*, !dbg !335
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %97) #3, !dbg !335
  %98 = bitcast i32* %ni to i8*, !dbg !335
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %98) #3, !dbg !335
  ret float %mul139, !dbg !336, !taffo.info !18
}

; Function Attrs: nounwind readnone speculatable
declare !taffo.funinfo !337 void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare !taffo.funinfo !338 void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare !taffo.funinfo !339 void @llvm.var.annotation(i8*, i8*, i8*, i32) #3

; Function Attrs: argmemonly nounwind
declare !taffo.funinfo !338 void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.top.func"="mm" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.ident = !{!5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5}
!llvm.module.flags = !{!6, !7, !8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/home/bruno/Desktop/benchmarks/gemm/proj_gemm/solution1/.autopilot/db/gemm_taffoin.pp.0.c", directory: "/home/bruno/Desktop/benchmarks/gemm")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!5 = !{!"clang version 7.0.0 "}
!6 = !{i32 2, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = distinct !DISubprogram(name: "mm", scope: !10, file: !10, line: 42, type: !11, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DIFile(filename: "gemm_taffoin.c", directory: "/home/bruno/Desktop/benchmarks/gemm")
!11 = !DISubroutineType(types: !12)
!12 = !{!4, !4}
!13 = !{!14}
!14 = !{!"fpga.top", !"user", !15}
!15 = !DILocation(line: 42, column: 16, scope: !9)
!16 = !{i1 true}
!17 = !{i32 0, i1 false}
!18 = !{i1 false, i1 false, i1 false, i1 true}
!19 = !{i1 false, !20, i1 false, i1 true}
!20 = !{double -1.600000e+01, double 1.600000e+01}
!21 = !{!"D"}
!22 = !{i1 false, !23, i1 false, i1 true}
!23 = !{double 0.000000e+00, double 1.600000e+01}
!24 = !{i1 false, !25, i1 false, i1 true}
!25 = !{double -1.000000e+02, double 1.000000e+02}
!26 = !{i1 false, !27, i1 false, i1 true}
!27 = !{double 0.000000e+00, double 3.200000e+01}
!28 = !DILocalVariable(name: "gamma", arg: 1, scope: !9, file: !10, line: 42, type: !4)
!29 = !DILocation(line: 42, column: 53, scope: !9)
!30 = !DILocation(line: 44, column: 5, scope: !9)
!31 = !DILocalVariable(name: "ni", scope: !9, file: !10, line: 44, type: !32)
!32 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!33 = !DILocation(line: 44, column: 9, scope: !9)
!34 = !DILocation(line: 45, column: 5, scope: !9)
!35 = !DILocalVariable(name: "nj", scope: !9, file: !10, line: 45, type: !32)
!36 = !DILocation(line: 45, column: 9, scope: !9)
!37 = !DILocation(line: 46, column: 5, scope: !9)
!38 = !DILocalVariable(name: "nk", scope: !9, file: !10, line: 46, type: !32)
!39 = !DILocation(line: 46, column: 9, scope: !9)
!40 = !DILocation(line: 47, column: 5, scope: !9)
!41 = !DILocalVariable(name: "nl", scope: !9, file: !10, line: 47, type: !32)
!42 = !DILocation(line: 47, column: 9, scope: !9)
!43 = !DILocation(line: 49, column: 5, scope: !9)
!44 = !DILocalVariable(name: "A", scope: !9, file: !10, line: 49, type: !45)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32768, elements: !46)
!46 = !{!47}
!47 = !DISubrange(count: 1024)
!48 = !DILocation(line: 49, column: 11, scope: !9)
!49 = !DILocation(line: 50, column: 5, scope: !9)
!50 = !DILocalVariable(name: "B", scope: !9, file: !10, line: 50, type: !45)
!51 = !DILocation(line: 50, column: 11, scope: !9)
!52 = !DILocation(line: 51, column: 5, scope: !9)
!53 = !DILocalVariable(name: "D", scope: !9, file: !10, line: 51, type: !45)
!54 = !DILocation(line: 51, column: 11, scope: !9)
!55 = !DILocation(line: 52, column: 5, scope: !9)
!56 = !DILocalVariable(name: "i", scope: !9, file: !10, line: 52, type: !32)
!57 = !DILocation(line: 52, column: 9, scope: !9)
!58 = !DILocation(line: 53, column: 5, scope: !9)
!59 = !DILocalVariable(name: "j", scope: !9, file: !10, line: 53, type: !32)
!60 = !DILocation(line: 53, column: 9, scope: !9)
!61 = !DILocation(line: 54, column: 29, scope: !62)
!62 = distinct !DILexicalBlock(scope: !9, file: !10, line: 54, column: 22)
!63 = !DILocation(line: 54, column: 27, scope: !62)
!64 = !DILocation(line: 54, column: 34, scope: !65)
!65 = distinct !DILexicalBlock(scope: !62, file: !10, line: 54, column: 22)
!66 = !DILocation(line: 54, column: 38, scope: !65)
!67 = !DILocation(line: 54, column: 36, scope: !65)
!68 = !DILocation(line: 54, column: 22, scope: !62)
!69 = !DILocation(line: 55, column: 33, scope: !70)
!70 = distinct !DILexicalBlock(scope: !65, file: !10, line: 55, column: 26)
!71 = !DILocation(line: 55, column: 31, scope: !70)
!72 = !DILocation(line: 55, column: 38, scope: !73)
!73 = distinct !DILexicalBlock(scope: !70, file: !10, line: 55, column: 26)
!74 = !DILocation(line: 55, column: 42, scope: !73)
!75 = !DILocation(line: 55, column: 40, scope: !73)
!76 = !DILocation(line: 55, column: 26, scope: !70)
!77 = !DILocation(line: 56, column: 39, scope: !73)
!78 = !DILocation(line: 56, column: 41, scope: !73)
!79 = !DILocation(line: 56, column: 40, scope: !73)
!80 = !DILocation(line: 56, column: 42, scope: !73)
!81 = !DILocation(line: 56, column: 48, scope: !73)
!82 = !DILocation(line: 56, column: 46, scope: !73)
!83 = !DILocation(line: 56, column: 37, scope: !73)
!84 = !DILocation(line: 56, column: 35, scope: !73)
!85 = !DILocation(line: 56, column: 54, scope: !73)
!86 = !DILocation(line: 56, column: 52, scope: !73)
!87 = !DILocation(line: 56, column: 15, scope: !73)
!88 = !DILocation(line: 56, column: 17, scope: !73)
!89 = !DILocation(line: 56, column: 16, scope: !73)
!90 = !DILocation(line: 56, column: 20, scope: !73)
!91 = !DILocation(line: 56, column: 19, scope: !73)
!92 = !DILocation(line: 56, column: 13, scope: !73)
!93 = !DILocation(line: 56, column: 23, scope: !73)
!94 = !DILocation(line: 55, column: 47, scope: !73)
!95 = !DILocation(line: 55, column: 26, scope: !73)
!96 = distinct !{!96, !76, !97, !98}
!97 = !DILocation(line: 56, column: 54, scope: !70)
!98 = !{!"llvm.loop.name", !"VITIS_LOOP_55_2"}
!99 = !DILocation(line: 54, column: 43, scope: !65)
!100 = !DILocation(line: 54, column: 22, scope: !65)
!101 = distinct !{!101, !68, !102, !103}
!102 = !DILocation(line: 56, column: 54, scope: !62)
!103 = !{!"llvm.loop.name", !"VITIS_LOOP_54_1"}
!104 = !DILocation(line: 57, column: 29, scope: !105)
!105 = distinct !DILexicalBlock(scope: !9, file: !10, line: 57, column: 22)
!106 = !DILocation(line: 57, column: 27, scope: !105)
!107 = !DILocation(line: 57, column: 34, scope: !108)
!108 = distinct !DILexicalBlock(scope: !105, file: !10, line: 57, column: 22)
!109 = !DILocation(line: 57, column: 38, scope: !108)
!110 = !DILocation(line: 57, column: 36, scope: !108)
!111 = !DILocation(line: 57, column: 22, scope: !105)
!112 = !DILocation(line: 58, column: 33, scope: !113)
!113 = distinct !DILexicalBlock(scope: !108, file: !10, line: 58, column: 26)
!114 = !DILocation(line: 58, column: 31, scope: !113)
!115 = !DILocation(line: 58, column: 38, scope: !116)
!116 = distinct !DILexicalBlock(scope: !113, file: !10, line: 58, column: 26)
!117 = !DILocation(line: 58, column: 42, scope: !116)
!118 = !DILocation(line: 58, column: 40, scope: !116)
!119 = !DILocation(line: 58, column: 26, scope: !113)
!120 = !DILocation(line: 59, column: 38, scope: !116)
!121 = !DILocation(line: 59, column: 41, scope: !116)
!122 = !DILocation(line: 59, column: 42, scope: !116)
!123 = !DILocation(line: 59, column: 39, scope: !116)
!124 = !DILocation(line: 59, column: 48, scope: !116)
!125 = !DILocation(line: 59, column: 46, scope: !116)
!126 = !DILocation(line: 59, column: 37, scope: !116)
!127 = !DILocation(line: 59, column: 35, scope: !116)
!128 = !DILocation(line: 59, column: 54, scope: !116)
!129 = !DILocation(line: 59, column: 52, scope: !116)
!130 = !DILocation(line: 59, column: 15, scope: !116)
!131 = !DILocation(line: 59, column: 17, scope: !116)
!132 = !DILocation(line: 59, column: 16, scope: !116)
!133 = !DILocation(line: 59, column: 20, scope: !116)
!134 = !DILocation(line: 59, column: 19, scope: !116)
!135 = !DILocation(line: 59, column: 13, scope: !116)
!136 = !DILocation(line: 59, column: 23, scope: !116)
!137 = !DILocation(line: 58, column: 47, scope: !116)
!138 = !DILocation(line: 58, column: 26, scope: !116)
!139 = distinct !{!139, !119, !140, !141}
!140 = !DILocation(line: 59, column: 54, scope: !113)
!141 = !{!"llvm.loop.name", !"VITIS_LOOP_58_4"}
!142 = !DILocation(line: 57, column: 43, scope: !108)
!143 = !DILocation(line: 57, column: 22, scope: !108)
!144 = distinct !{!144, !111, !145, !146}
!145 = !DILocation(line: 59, column: 54, scope: !105)
!146 = !{!"llvm.loop.name", !"VITIS_LOOP_57_3"}
!147 = !DILocation(line: 60, column: 29, scope: !148)
!148 = distinct !DILexicalBlock(scope: !9, file: !10, line: 60, column: 22)
!149 = !DILocation(line: 60, column: 27, scope: !148)
!150 = !DILocation(line: 60, column: 34, scope: !151)
!151 = distinct !DILexicalBlock(scope: !148, file: !10, line: 60, column: 22)
!152 = !DILocation(line: 60, column: 38, scope: !151)
!153 = !DILocation(line: 60, column: 36, scope: !151)
!154 = !DILocation(line: 60, column: 22, scope: !148)
!155 = !DILocation(line: 61, column: 33, scope: !156)
!156 = distinct !DILexicalBlock(scope: !151, file: !10, line: 61, column: 26)
!157 = !DILocation(line: 61, column: 31, scope: !156)
!158 = !DILocation(line: 61, column: 38, scope: !159)
!159 = distinct !DILexicalBlock(scope: !156, file: !10, line: 61, column: 26)
!160 = !DILocation(line: 61, column: 42, scope: !159)
!161 = !DILocation(line: 61, column: 40, scope: !159)
!162 = !DILocation(line: 61, column: 26, scope: !156)
!163 = !DILocation(line: 62, column: 38, scope: !159)
!164 = !DILocation(line: 62, column: 41, scope: !159)
!165 = !DILocation(line: 62, column: 42, scope: !159)
!166 = !DILocation(line: 62, column: 39, scope: !159)
!167 = !DILocation(line: 62, column: 48, scope: !159)
!168 = !DILocation(line: 62, column: 46, scope: !159)
!169 = !DILocation(line: 62, column: 37, scope: !159)
!170 = !DILocation(line: 62, column: 35, scope: !159)
!171 = !DILocation(line: 62, column: 54, scope: !159)
!172 = !DILocation(line: 62, column: 52, scope: !159)
!173 = !DILocation(line: 62, column: 15, scope: !159)
!174 = !DILocation(line: 62, column: 17, scope: !159)
!175 = !DILocation(line: 62, column: 16, scope: !159)
!176 = !DILocation(line: 62, column: 20, scope: !159)
!177 = !DILocation(line: 62, column: 19, scope: !159)
!178 = !DILocation(line: 62, column: 13, scope: !159)
!179 = !DILocation(line: 62, column: 23, scope: !159)
!180 = !DILocation(line: 61, column: 47, scope: !159)
!181 = !DILocation(line: 61, column: 26, scope: !159)
!182 = distinct !{!182, !162, !183, !184}
!183 = !DILocation(line: 62, column: 54, scope: !156)
!184 = !{!"llvm.loop.name", !"VITIS_LOOP_61_6"}
!185 = !DILocation(line: 60, column: 43, scope: !151)
!186 = !DILocation(line: 60, column: 22, scope: !151)
!187 = distinct !{!187, !154, !188, !189}
!188 = !DILocation(line: 62, column: 54, scope: !148)
!189 = !{!"llvm.loop.name", !"VITIS_LOOP_60_5"}
!190 = !DILocalVariable(name: "alpha", scope: !9, file: !10, line: 63, type: !4)
!191 = !DILocation(line: 63, column: 49, scope: !9)
!192 = !DILocation(line: 63, column: 5, scope: !9)
!193 = !DILocalVariable(name: "beta", scope: !9, file: !10, line: 64, type: !4)
!194 = !DILocation(line: 64, column: 49, scope: !9)
!195 = !DILocation(line: 64, column: 5, scope: !9)
!196 = !DILocalVariable(name: "fg", scope: !9, file: !10, line: 65, type: !4)
!197 = !DILocation(line: 65, column: 63, scope: !9)
!198 = !DILocation(line: 65, column: 5, scope: !9)
!199 = !DILocation(line: 65, column: 68, scope: !9)
!200 = !DILocalVariable(name: "tmp", scope: !9, file: !10, line: 66, type: !45)
!201 = !DILocation(line: 66, column: 11, scope: !9)
!202 = !DILocation(line: 66, column: 5, scope: !9)
!203 = !DILocalVariable(name: "sum", scope: !9, file: !10, line: 67, type: !4)
!204 = !DILocation(line: 67, column: 65, scope: !9)
!205 = !DILocation(line: 67, column: 5, scope: !9)
!206 = !DILocalVariable(name: "ii", scope: !9, file: !10, line: 69, type: !32)
!207 = !DILocation(line: 69, column: 9, scope: !9)
!208 = !DILocation(line: 69, column: 5, scope: !9)
!209 = !DILocalVariable(name: "jj", scope: !9, file: !10, line: 70, type: !32)
!210 = !DILocation(line: 70, column: 9, scope: !9)
!211 = !DILocation(line: 70, column: 5, scope: !9)
!212 = !DILocalVariable(name: "k", scope: !9, file: !10, line: 71, type: !32)
!213 = !DILocation(line: 71, column: 9, scope: !9)
!214 = !DILocation(line: 71, column: 5, scope: !9)
!215 = !DILocalVariable(name: "z", scope: !9, file: !10, line: 72, type: !4)
!216 = !DILocation(line: 72, column: 11, scope: !9)
!217 = !DILocation(line: 72, column: 5, scope: !9)
!218 = !DILocation(line: 73, column: 30, scope: !219)
!219 = distinct !DILexicalBlock(scope: !9, file: !10, line: 73, column: 22)
!220 = !DILocation(line: 73, column: 27, scope: !219)
!221 = !DILocation(line: 73, column: 35, scope: !222)
!222 = distinct !DILexicalBlock(scope: !219, file: !10, line: 73, column: 22)
!223 = !DILocation(line: 73, column: 38, scope: !222)
!224 = !DILocation(line: 73, column: 22, scope: !219)
!225 = !DILocation(line: 74, column: 5, scope: !222)
!226 = !DILocation(line: 75, column: 34, scope: !227)
!227 = distinct !DILexicalBlock(scope: !228, file: !10, line: 75, column: 26)
!228 = distinct !DILexicalBlock(scope: !222, file: !10, line: 74, column: 5)
!229 = !DILocation(line: 75, column: 31, scope: !227)
!230 = !DILocation(line: 75, column: 39, scope: !231)
!231 = distinct !DILexicalBlock(scope: !227, file: !10, line: 75, column: 26)
!232 = !DILocation(line: 75, column: 42, scope: !231)
!233 = !DILocation(line: 75, column: 26, scope: !227)
!234 = !DILocation(line: 78, column: 6, scope: !235)
!235 = distinct !DILexicalBlock(scope: !231, file: !10, line: 76, column: 9)
!236 = !DILocation(line: 78, column: 8, scope: !235)
!237 = !DILocation(line: 78, column: 13, scope: !235)
!238 = !DILocation(line: 78, column: 12, scope: !235)
!239 = !DILocation(line: 78, column: 2, scope: !235)
!240 = !DILocation(line: 78, column: 17, scope: !235)
!241 = !DILocation(line: 79, column: 37, scope: !242)
!242 = distinct !DILexicalBlock(scope: !235, file: !10, line: 79, column: 30)
!243 = !DILocation(line: 79, column: 35, scope: !242)
!244 = !DILocation(line: 79, column: 42, scope: !245)
!245 = distinct !DILexicalBlock(scope: !242, file: !10, line: 79, column: 30)
!246 = !DILocation(line: 79, column: 44, scope: !245)
!247 = !DILocation(line: 79, column: 30, scope: !242)
!248 = !DILocation(line: 80, column: 23, scope: !249)
!249 = distinct !DILexicalBlock(scope: !245, file: !10, line: 79, column: 54)
!250 = !DILocation(line: 80, column: 25, scope: !249)
!251 = !DILocation(line: 80, column: 30, scope: !249)
!252 = !DILocation(line: 80, column: 29, scope: !249)
!253 = !DILocation(line: 80, column: 21, scope: !249)
!254 = !DILocation(line: 80, column: 37, scope: !249)
!255 = !DILocation(line: 80, column: 38, scope: !249)
!256 = !DILocation(line: 80, column: 43, scope: !249)
!257 = !DILocation(line: 80, column: 42, scope: !249)
!258 = !DILocation(line: 80, column: 35, scope: !249)
!259 = !DILocation(line: 80, column: 33, scope: !249)
!260 = !DILocation(line: 80, column: 49, scope: !249)
!261 = !DILocation(line: 80, column: 47, scope: !249)
!262 = !DILocation(line: 80, column: 19, scope: !249)
!263 = !DILocation(line: 81, column: 38, scope: !249)
!264 = !DILocation(line: 81, column: 40, scope: !249)
!265 = !DILocation(line: 81, column: 45, scope: !249)
!266 = !DILocation(line: 81, column: 44, scope: !249)
!267 = !DILocation(line: 81, column: 34, scope: !249)
!268 = !DILocation(line: 81, column: 51, scope: !249)
!269 = !DILocation(line: 81, column: 49, scope: !249)
!270 = !DILocation(line: 81, column: 21, scope: !249)
!271 = !DILocation(line: 81, column: 23, scope: !249)
!272 = !DILocation(line: 81, column: 28, scope: !249)
!273 = !DILocation(line: 81, column: 27, scope: !249)
!274 = !DILocation(line: 81, column: 17, scope: !249)
!275 = !DILocation(line: 81, column: 32, scope: !249)
!276 = !DILocation(line: 82, column: 13, scope: !249)
!277 = !DILocation(line: 79, column: 51, scope: !245)
!278 = !DILocation(line: 79, column: 30, scope: !245)
!279 = distinct !{!279, !247, !280, !281}
!280 = !DILocation(line: 82, column: 13, scope: !242)
!281 = !{!"llvm.loop.name", !"VITIS_LOOP_79_9"}
!282 = !DILocation(line: 83, column: 35, scope: !235)
!283 = !DILocation(line: 83, column: 37, scope: !235)
!284 = !DILocation(line: 83, column: 42, scope: !235)
!285 = !DILocation(line: 83, column: 41, scope: !235)
!286 = !DILocation(line: 83, column: 33, scope: !235)
!287 = !DILocation(line: 83, column: 48, scope: !235)
!288 = !DILocation(line: 83, column: 46, scope: !235)
!289 = !DILocation(line: 83, column: 20, scope: !235)
!290 = !DILocation(line: 83, column: 22, scope: !235)
!291 = !DILocation(line: 83, column: 27, scope: !235)
!292 = !DILocation(line: 83, column: 26, scope: !235)
!293 = !DILocation(line: 83, column: 18, scope: !235)
!294 = !DILocation(line: 83, column: 31, scope: !235)
!295 = !DILocation(line: 84, column: 35, scope: !235)
!296 = !DILocation(line: 84, column: 37, scope: !235)
!297 = !DILocation(line: 84, column: 42, scope: !235)
!298 = !DILocation(line: 84, column: 41, scope: !235)
!299 = !DILocation(line: 84, column: 33, scope: !235)
!300 = !DILocation(line: 84, column: 52, scope: !235)
!301 = !DILocation(line: 84, column: 54, scope: !235)
!302 = !DILocation(line: 84, column: 59, scope: !235)
!303 = !DILocation(line: 84, column: 58, scope: !235)
!304 = !DILocation(line: 84, column: 48, scope: !235)
!305 = !DILocation(line: 84, column: 46, scope: !235)
!306 = !DILocation(line: 84, column: 20, scope: !235)
!307 = !DILocation(line: 84, column: 22, scope: !235)
!308 = !DILocation(line: 84, column: 27, scope: !235)
!309 = !DILocation(line: 84, column: 26, scope: !235)
!310 = !DILocation(line: 84, column: 18, scope: !235)
!311 = !DILocation(line: 84, column: 31, scope: !235)
!312 = !DILocation(line: 85, column: 27, scope: !235)
!313 = !DILocation(line: 85, column: 29, scope: !235)
!314 = !DILocation(line: 85, column: 34, scope: !235)
!315 = !DILocation(line: 85, column: 33, scope: !235)
!316 = !DILocation(line: 85, column: 25, scope: !235)
!317 = !DILocation(line: 85, column: 22, scope: !235)
!318 = !DILocation(line: 86, column: 9, scope: !235)
!319 = !DILocation(line: 75, column: 50, scope: !231)
!320 = !DILocation(line: 75, column: 26, scope: !231)
!321 = distinct !{!321, !233, !322, !323, !325}
!322 = !DILocation(line: 86, column: 9, scope: !227)
!323 = !{!"llvm.loop.pipeline.enable", i32 1, i1 false, i8 -1, !"user", !324}
!324 = !DILocation(line: 77, column: 9, scope: !227)
!325 = !{!"llvm.loop.name", !"VITIS_LOOP_75_8"}
!326 = !DILocation(line: 87, column: 5, scope: !228)
!327 = !DILocation(line: 73, column: 46, scope: !222)
!328 = !DILocation(line: 73, column: 22, scope: !222)
!329 = distinct !{!329, !224, !330, !331}
!330 = !DILocation(line: 87, column: 5, scope: !219)
!331 = !{!"llvm.loop.name", !"VITIS_LOOP_73_7"}
!332 = !DILocation(line: 92, column: 12, scope: !9)
!333 = !DILocation(line: 92, column: 18, scope: !9)
!334 = !DILocation(line: 92, column: 16, scope: !9)
!335 = !DILocation(line: 93, column: 1, scope: !9)
!336 = !DILocation(line: 92, column: 5, scope: !9)
!337 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!338 = !{i32 0, i1 false, i32 0, i1 false}
!339 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
