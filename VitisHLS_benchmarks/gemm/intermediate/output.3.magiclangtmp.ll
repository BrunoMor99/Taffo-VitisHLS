; ModuleID = '/home/bruno/Desktop/benchmarks/gemm/intermediate/output.2.magiclangtmp.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.global_ctors = appending global [0 x { i32, void ()*, i8* }] zeroinitializer, !taffo.structinfo !0
@.str = private unnamed_addr constant [9 x i8] c"scalar()\00", section "llvm.metadata", !taffo.info !3
@.str.1 = private unnamed_addr constant [15 x i8] c"gemm_taffoin.c\00", section "llvm.metadata", !taffo.info !5
@.str.2 = private unnamed_addr constant [35 x i8] c"target('D') scalar(range(-16, 16))\00", section "llvm.metadata", !taffo.info !5
@.str.3 = private unnamed_addr constant [21 x i8] c"scalar(range(0, 16))\00", section "llvm.metadata", !taffo.info !3
@.str.4 = private unnamed_addr constant [23 x i8] c"scalar(range(-16, 16))\00", section "llvm.metadata", !taffo.info !3
@.str.5 = private unnamed_addr constant [25 x i8] c"scalar(range(-100, 100))\00", section "llvm.metadata", !taffo.info !3
@.str.6 = private unnamed_addr constant [21 x i8] c"scalar(range(0, 32))\00", section "llvm.metadata", !taffo.info !3

; Function Attrs: nounwind
define float @mm(float %gamma) #0 !dbg !16 !fpga.function.pragma !20 !taffo.start !23 !taffo.funinfo !24 {
entry:
  %gamma.addr = alloca float, align 4
  %ni = alloca i32, align 4, !taffo.info !25
  %nj = alloca i32, align 4, !taffo.info !25
  %nk = alloca i32, align 4, !taffo.info !25
  %nl = alloca i32, align 4, !taffo.info !25
  %A = alloca [1024 x float], align 4, !taffo.info !27
  %B = alloca [1024 x float], align 4, !taffo.info !29
  %D = alloca [1024 x float], align 4, !taffo.info !31, !taffo.target !33
  %i = alloca i32, align 4, !taffo.info !34
  %j = alloca i32, align 4, !taffo.info !34
  %alpha = alloca float, align 4, !taffo.info !36
  %beta = alloca float, align 4, !taffo.info !38
  %fg = alloca float, align 4, !taffo.info !31
  %tmp = alloca [1024 x float], align 4, !taffo.info !31
  %sum = alloca float, align 4, !taffo.info !40
  %ii = alloca i32, align 4, !taffo.info !42
  %jj = alloca i32, align 4, !taffo.info !42
  %k = alloca i32, align 4, !taffo.info !42
  %z = alloca float, align 4, !taffo.info !40
  store float %gamma, float* %gamma.addr, align 4
  call void @llvm.dbg.declare(metadata float* %gamma.addr, metadata !44, metadata !DIExpression()), !dbg !45
  %0 = bitcast i32* %ni to i8*, !dbg !46
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #3, !dbg !46
  call void @llvm.dbg.declare(metadata i32* %ni, metadata !47, metadata !DIExpression()), !dbg !49
  store i32 32, i32* %ni, align 4, !dbg !49
  %1 = bitcast i32* %nj to i8*, !dbg !50
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #3, !dbg !50
  call void @llvm.dbg.declare(metadata i32* %nj, metadata !51, metadata !DIExpression()), !dbg !52
  store i32 32, i32* %nj, align 4, !dbg !52
  %2 = bitcast i32* %nk to i8*, !dbg !53
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #3, !dbg !53
  call void @llvm.dbg.declare(metadata i32* %nk, metadata !54, metadata !DIExpression()), !dbg !55
  store i32 32, i32* %nk, align 4, !dbg !55
  %3 = bitcast i32* %nl to i8*, !dbg !56
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #3, !dbg !56
  call void @llvm.dbg.declare(metadata i32* %nl, metadata !57, metadata !DIExpression()), !dbg !58
  store i32 32, i32* %nl, align 4, !dbg !58
  %4 = bitcast [1024 x float]* %A to i8*, !dbg !59, !taffo.info !60
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* %4) #3, !dbg !59, !taffo.info !60
  call void @llvm.dbg.declare(metadata [1024 x float]* %A, metadata !61, metadata !DIExpression()), !dbg !65
  %A1 = bitcast [1024 x float]* %A to i8*, !dbg !59, !taffo.info !60
  %5 = bitcast [1024 x float]* %B to i8*, !dbg !66, !taffo.info !60
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* %5) #3, !dbg !66, !taffo.info !60
  call void @llvm.dbg.declare(metadata [1024 x float]* %B, metadata !67, metadata !DIExpression()), !dbg !68
  %B2 = bitcast [1024 x float]* %B to i8*, !dbg !66, !taffo.info !60
  %6 = bitcast [1024 x float]* %D to i8*, !dbg !69, !taffo.info !31, !taffo.target !33
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* %6) #3, !dbg !69, !taffo.info !60, !taffo.target !33
  call void @llvm.dbg.declare(metadata [1024 x float]* %D, metadata !70, metadata !DIExpression()), !dbg !71
  %D3 = bitcast [1024 x float]* %D to i8*, !dbg !69, !taffo.info !31, !taffo.target !33
  %7 = bitcast i32* %i to i8*, !dbg !72, !taffo.info !34
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #3, !dbg !72, !taffo.info !60
  call void @llvm.dbg.declare(metadata i32* %i, metadata !73, metadata !DIExpression()), !dbg !74
  %i4 = bitcast i32* %i to i8*, !dbg !72, !taffo.info !34
  %8 = bitcast i32* %j to i8*, !dbg !75, !taffo.info !34
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3, !dbg !75, !taffo.info !60
  call void @llvm.dbg.declare(metadata i32* %j, metadata !76, metadata !DIExpression()), !dbg !77
  %j5 = bitcast i32* %j to i8*, !dbg !75, !taffo.info !34
  br label %VITIS_LOOP_54_1, !dbg !75

VITIS_LOOP_54_1:                                  ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !78, !taffo.info !60
  br label %for.cond, !dbg !80

for.cond:                                         ; preds = %for.inc13, %VITIS_LOOP_54_1
  %9 = load i32, i32* %i, align 4, !dbg !81, !taffo.info !83
  %10 = load i32, i32* %ni, align 4, !dbg !85, !taffo.info !25
  %cmp = icmp slt i32 %9, %10, !dbg !86, !taffo.info !87
  br i1 %cmp, label %for.body, label %for.end15, !dbg !89, !taffo.info !60

for.body:                                         ; preds = %for.cond
  br label %VITIS_LOOP_55_2, !dbg !89

VITIS_LOOP_55_2:                                  ; preds = %for.body
  store i32 0, i32* %j, align 4, !dbg !90, !taffo.info !60
  br label %for.cond6, !dbg !92

for.cond6:                                        ; preds = %for.inc, %VITIS_LOOP_55_2
  %11 = load i32, i32* %j, align 4, !dbg !93, !taffo.info !83
  %12 = load i32, i32* %nk, align 4, !dbg !95, !taffo.info !25
  %cmp7 = icmp slt i32 %11, %12, !dbg !96, !taffo.info !87
  br i1 %cmp7, label %for.body8, label %for.end, !dbg !97, !taffo.info !60

for.body8:                                        ; preds = %for.cond6
  %13 = load i32, i32* %i, align 4, !dbg !98, !taffo.info !34
  %14 = load i32, i32* %j, align 4, !dbg !99, !taffo.info !34
  %mul = mul nsw i32 %13, %14, !dbg !100, !taffo.info !101
  %add = add nsw i32 %mul, 1, !dbg !103, !taffo.info !104
  %15 = load i32, i32* %ni, align 4, !dbg !106, !taffo.info !25
  %rem = srem i32 %add, %15, !dbg !107, !taffo.info !42
  %conv = sitofp i32 %rem to float, !dbg !108, !taffo.info !42
  %mul9 = fmul float 5.000000e+00, %conv, !dbg !109, !taffo.info !110
  %16 = load i32, i32* %ni, align 4, !dbg !112, !taffo.info !25
  %conv10 = sitofp i32 %16 to float, !dbg !112, !taffo.info !25
  %div = fdiv float %mul9, %conv10, !dbg !113, !taffo.info !27
  %17 = load i32, i32* %i, align 4, !dbg !114, !taffo.info !34
  %18 = load i32, i32* %nk, align 4, !dbg !115, !taffo.info !25
  %mul11 = mul nsw i32 %17, %18, !dbg !116, !taffo.info !117
  %19 = load i32, i32* %j, align 4, !dbg !119, !taffo.info !34
  %add12 = add nsw i32 %mul11, %19, !dbg !120, !taffo.info !121
  %idxprom = sext i32 %add12 to i64, !dbg !123, !taffo.info !121
  %arrayidx = getelementptr inbounds [1024 x float], [1024 x float]* %A, i64 0, i64 %idxprom, !dbg !123, !taffo.info !27
  store float %div, float* %arrayidx, align 4, !dbg !124, !taffo.info !60
  br label %for.inc, !dbg !123

for.inc:                                          ; preds = %for.body8
  %20 = load i32, i32* %j, align 4, !dbg !125, !taffo.info !34
  %inc = add nsw i32 %20, 1, !dbg !125, !taffo.info !126
  store i32 %inc, i32* %j, align 4, !dbg !125, !taffo.info !60
  br label %for.cond6, !dbg !128, !llvm.loop !129

for.end:                                          ; preds = %for.cond6
  br label %for.inc13, !dbg !130

for.inc13:                                        ; preds = %for.end
  %21 = load i32, i32* %i, align 4, !dbg !132, !taffo.info !34
  %inc14 = add nsw i32 %21, 1, !dbg !132, !taffo.info !126
  store i32 %inc14, i32* %i, align 4, !dbg !132, !taffo.info !60
  br label %for.cond, !dbg !133, !llvm.loop !134

for.end15:                                        ; preds = %for.cond
  br label %VITIS_LOOP_57_3, !dbg !135

VITIS_LOOP_57_3:                                  ; preds = %for.end15
  store i32 0, i32* %i, align 4, !dbg !137, !taffo.info !60
  br label %for.cond16, !dbg !139

for.cond16:                                       ; preds = %for.inc36, %VITIS_LOOP_57_3
  %22 = load i32, i32* %i, align 4, !dbg !140, !taffo.info !83
  %23 = load i32, i32* %nk, align 4, !dbg !142, !taffo.info !25
  %cmp17 = icmp slt i32 %22, %23, !dbg !143, !taffo.info !87
  br i1 %cmp17, label %for.body18, label %for.end38, !dbg !144, !taffo.info !60

for.body18:                                       ; preds = %for.cond16
  br label %VITIS_LOOP_58_4, !dbg !144

VITIS_LOOP_58_4:                                  ; preds = %for.body18
  store i32 0, i32* %j, align 4, !dbg !145, !taffo.info !60
  br label %for.cond19, !dbg !147

for.cond19:                                       ; preds = %for.inc33, %VITIS_LOOP_58_4
  %24 = load i32, i32* %j, align 4, !dbg !148, !taffo.info !83
  %25 = load i32, i32* %nj, align 4, !dbg !150, !taffo.info !25
  %cmp20 = icmp slt i32 %24, %25, !dbg !151, !taffo.info !87
  br i1 %cmp20, label %for.body21, label %for.end35, !dbg !152, !taffo.info !60

for.body21:                                       ; preds = %for.cond19
  %26 = load i32, i32* %i, align 4, !dbg !153, !taffo.info !83
  %27 = load i32, i32* %j, align 4, !dbg !154, !taffo.info !34
  %add22 = add nsw i32 %27, 1, !dbg !155, !taffo.info !126
  %mul23 = mul nsw i32 %26, %add22, !dbg !156, !taffo.info !157
  %28 = load i32, i32* %nj, align 4, !dbg !159, !taffo.info !25
  %rem24 = srem i32 %mul23, %28, !dbg !160, !taffo.info !42
  %conv25 = sitofp i32 %rem24 to float, !dbg !161, !taffo.info !42
  %mul26 = fmul float 3.000000e+00, %conv25, !dbg !162, !taffo.info !163
  %29 = load i32, i32* %nj, align 4, !dbg !165, !taffo.info !25
  %conv27 = sitofp i32 %29 to float, !dbg !165, !taffo.info !25
  %div28 = fdiv float %mul26, %conv27, !dbg !166, !taffo.info !29
  %30 = load i32, i32* %i, align 4, !dbg !167, !taffo.info !83
  %31 = load i32, i32* %nj, align 4, !dbg !168, !taffo.info !25
  %mul29 = mul nsw i32 %30, %31, !dbg !169, !taffo.info !170
  %32 = load i32, i32* %j, align 4, !dbg !172, !taffo.info !34
  %add30 = add nsw i32 %mul29, %32, !dbg !173, !taffo.info !174
  %idxprom31 = sext i32 %add30 to i64, !dbg !176, !taffo.info !174
  %arrayidx32 = getelementptr inbounds [1024 x float], [1024 x float]* %B, i64 0, i64 %idxprom31, !dbg !176, !taffo.info !29
  store float %div28, float* %arrayidx32, align 4, !dbg !177, !taffo.info !60
  br label %for.inc33, !dbg !176

for.inc33:                                        ; preds = %for.body21
  %33 = load i32, i32* %j, align 4, !dbg !178, !taffo.info !34
  %inc34 = add nsw i32 %33, 1, !dbg !178, !taffo.info !126
  store i32 %inc34, i32* %j, align 4, !dbg !178, !taffo.info !60
  br label %for.cond19, !dbg !179, !llvm.loop !180

for.end35:                                        ; preds = %for.cond19
  br label %for.inc36, !dbg !181

for.inc36:                                        ; preds = %for.end35
  %34 = load i32, i32* %i, align 4, !dbg !183, !taffo.info !34
  %inc37 = add nsw i32 %34, 1, !dbg !183, !taffo.info !126
  store i32 %inc37, i32* %i, align 4, !dbg !183, !taffo.info !60
  br label %for.cond16, !dbg !184, !llvm.loop !185

for.end38:                                        ; preds = %for.cond16
  br label %VITIS_LOOP_60_5, !dbg !186

VITIS_LOOP_60_5:                                  ; preds = %for.end38
  store i32 0, i32* %i, align 4, !dbg !188, !taffo.info !60
  br label %for.cond39, !dbg !190

for.cond39:                                       ; preds = %for.inc59, %VITIS_LOOP_60_5
  %35 = load i32, i32* %i, align 4, !dbg !191, !taffo.info !83
  %36 = load i32, i32* %ni, align 4, !dbg !193, !taffo.info !25
  %cmp40 = icmp slt i32 %35, %36, !dbg !194, !taffo.info !87
  br i1 %cmp40, label %for.body41, label %for.end61, !dbg !195, !taffo.info !60

for.body41:                                       ; preds = %for.cond39
  br label %VITIS_LOOP_61_6, !dbg !195

VITIS_LOOP_61_6:                                  ; preds = %for.body41
  store i32 0, i32* %j, align 4, !dbg !196, !taffo.info !60
  br label %for.cond42, !dbg !198

for.cond42:                                       ; preds = %for.inc56, %VITIS_LOOP_61_6
  %37 = load i32, i32* %j, align 4, !dbg !199, !taffo.info !83
  %38 = load i32, i32* %nl, align 4, !dbg !201, !taffo.info !25
  %cmp43 = icmp slt i32 %37, %38, !dbg !202, !taffo.info !87
  br i1 %cmp43, label %for.body44, label %for.end58, !dbg !203, !taffo.info !60

for.body44:                                       ; preds = %for.cond42
  %39 = load i32, i32* %i, align 4, !dbg !204, !taffo.info !83
  %40 = load i32, i32* %j, align 4, !dbg !205, !taffo.info !34
  %add45 = add nsw i32 %40, 2, !dbg !206, !taffo.info !207
  %mul46 = mul nsw i32 %39, %add45, !dbg !209, !taffo.info !210
  %41 = load i32, i32* %nk, align 4, !dbg !212, !taffo.info !25
  %rem47 = srem i32 %mul46, %41, !dbg !213, !taffo.info !42
  %conv48 = sitofp i32 %rem47 to float, !dbg !214, !taffo.info !42
  %mul49 = fmul float 5.000000e+00, %conv48, !dbg !215, !taffo.info !110
  %42 = load i32, i32* %nk, align 4, !dbg !216, !taffo.info !25
  %conv50 = sitofp i32 %42 to float, !dbg !216, !taffo.info !25
  %div51 = fdiv float %mul49, %conv50, !dbg !217, !taffo.info !27
  %43 = load i32, i32* %i, align 4, !dbg !218, !taffo.info !83
  %44 = load i32, i32* %nl, align 4, !dbg !219, !taffo.info !25
  %mul52 = mul nsw i32 %43, %44, !dbg !220, !taffo.info !170
  %45 = load i32, i32* %j, align 4, !dbg !221, !taffo.info !34
  %add53 = add nsw i32 %mul52, %45, !dbg !222, !taffo.info !174
  %idxprom54 = sext i32 %add53 to i64, !dbg !223, !taffo.info !174
  %arrayidx55 = getelementptr inbounds [1024 x float], [1024 x float]* %D, i64 0, i64 %idxprom54, !dbg !223, !taffo.info !224, !taffo.target !33
  store float %div51, float* %arrayidx55, align 4, !dbg !226, !taffo.info !60, !taffo.target !33
  br label %for.inc56, !dbg !223

for.inc56:                                        ; preds = %for.body44
  %46 = load i32, i32* %j, align 4, !dbg !227, !taffo.info !34
  %inc57 = add nsw i32 %46, 1, !dbg !227, !taffo.info !126
  store i32 %inc57, i32* %j, align 4, !dbg !227, !taffo.info !60
  br label %for.cond42, !dbg !228, !llvm.loop !229

for.end58:                                        ; preds = %for.cond42
  br label %for.inc59, !dbg !230

for.inc59:                                        ; preds = %for.end58
  %47 = load i32, i32* %i, align 4, !dbg !232, !taffo.info !34
  %inc60 = add nsw i32 %47, 1, !dbg !232, !taffo.info !126
  store i32 %inc60, i32* %i, align 4, !dbg !232, !taffo.info !60
  br label %for.cond39, !dbg !233, !llvm.loop !234

for.end61:                                        ; preds = %for.cond39
  call void @llvm.dbg.declare(metadata float* %alpha, metadata !237, metadata !DIExpression()), !dbg !238
  %alpha62 = bitcast float* %alpha to i8*, !dbg !239, !taffo.info !60
  store float 0x3FF3333340000000, float* %alpha, align 4, !dbg !238, !taffo.info !60
  call void @llvm.dbg.declare(metadata float* %beta, metadata !240, metadata !DIExpression()), !dbg !241
  %beta63 = bitcast float* %beta to i8*, !dbg !242, !taffo.info !60
  store float 1.500000e+00, float* %beta, align 4, !dbg !241, !taffo.info !60
  call void @llvm.dbg.declare(metadata float* %fg, metadata !243, metadata !DIExpression()), !dbg !244
  %fg64 = bitcast float* %fg to i8*, !dbg !245, !taffo.info !31
  %48 = load float, float* %gamma.addr, align 4, !dbg !246
  store float %48, float* %fg, align 4, !dbg !244, !taffo.info !60
  call void @llvm.dbg.declare(metadata [1024 x float]* %tmp, metadata !247, metadata !DIExpression()), !dbg !248
  %tmp65 = bitcast [1024 x float]* %tmp to i8*, !dbg !249, !taffo.info !31
  call void @llvm.dbg.declare(metadata float* %sum, metadata !250, metadata !DIExpression()), !dbg !251
  %sum66 = bitcast float* %sum to i8*, !dbg !252, !taffo.info !40
  store float 0.000000e+00, float* %sum, align 4, !dbg !251, !taffo.info !60
  call void @llvm.dbg.declare(metadata i32* %ii, metadata !253, metadata !DIExpression()), !dbg !254
  %ii67 = bitcast i32* %ii to i8*, !dbg !255, !taffo.info !42
  call void @llvm.dbg.declare(metadata i32* %jj, metadata !256, metadata !DIExpression()), !dbg !257
  %jj68 = bitcast i32* %jj to i8*, !dbg !258, !taffo.info !42
  call void @llvm.dbg.declare(metadata i32* %k, metadata !259, metadata !DIExpression()), !dbg !260
  %k69 = bitcast i32* %k to i8*, !dbg !261, !taffo.info !42
  call void @llvm.dbg.declare(metadata float* %z, metadata !262, metadata !DIExpression()), !dbg !263
  %z70 = bitcast float* %z to i8*, !dbg !264, !taffo.info !40
  br label %VITIS_LOOP_73_7, !dbg !264

VITIS_LOOP_73_7:                                  ; preds = %for.end61
  store i32 0, i32* %ii, align 4, !dbg !265, !taffo.info !60
  br label %for.cond71, !dbg !267

for.cond71:                                       ; preds = %for.inc136, %VITIS_LOOP_73_7
  %49 = load i32, i32* %ii, align 4, !dbg !268, !taffo.info !270
  %cmp72 = icmp slt i32 %49, 32, !dbg !272, !taffo.info !273
  br i1 %cmp72, label %for.body73, label %for.end138, !dbg !275, !taffo.info !60

for.body73:                                       ; preds = %for.cond71
  br label %VITIS_LOOP_75_8, !dbg !276

VITIS_LOOP_75_8:                                  ; preds = %for.body73
  store i32 0, i32* %jj, align 4, !dbg !277, !taffo.info !60
  br label %for.cond74, !dbg !280

for.cond74:                                       ; preds = %for.inc133, %VITIS_LOOP_75_8
  %50 = load i32, i32* %jj, align 4, !dbg !281, !taffo.info !270
  %cmp75 = icmp slt i32 %50, 32, !dbg !283, !taffo.info !273
  br i1 %cmp75, label %for.body76, label %for.end135, !dbg !284, !taffo.info !60

for.body76:                                       ; preds = %for.cond74
  %51 = load i32, i32* %ii, align 4, !dbg !285, !taffo.info !270
  %mul77 = mul nsw i32 %51, 32, !dbg !287, !taffo.info !288
  %52 = load i32, i32* %jj, align 4, !dbg !290, !taffo.info !42
  %add78 = add nsw i32 %mul77, %52, !dbg !291, !taffo.info !292
  %idxprom79 = sext i32 %add78 to i64, !dbg !294, !taffo.info !292
  %arrayidx80 = getelementptr inbounds [1024 x float], [1024 x float]* %tmp, i64 0, i64 %idxprom79, !dbg !294, !taffo.info !295
  store float 0.000000e+00, float* %arrayidx80, align 4, !dbg !297, !taffo.info !60
  br label %VITIS_LOOP_79_9, !dbg !294

VITIS_LOOP_79_9:                                  ; preds = %for.body76
  store i32 0, i32* %k, align 4, !dbg !298, !taffo.info !60
  br label %for.cond81, !dbg !300

for.cond81:                                       ; preds = %for.inc103, %VITIS_LOOP_79_9
  %53 = load i32, i32* %k, align 4, !dbg !301, !taffo.info !270
  %cmp82 = icmp slt i32 %53, 32, !dbg !303, !taffo.info !273
  br i1 %cmp82, label %for.body83, label %for.end105, !dbg !304, !taffo.info !60

for.body83:                                       ; preds = %for.cond81
  %54 = load i32, i32* %ii, align 4, !dbg !305, !taffo.info !270
  %mul84 = mul nsw i32 %54, 32, !dbg !307, !taffo.info !288
  %55 = load i32, i32* %k, align 4, !dbg !308, !taffo.info !42
  %add85 = add nsw i32 %mul84, %55, !dbg !309, !taffo.info !292
  %idxprom86 = sext i32 %add85 to i64, !dbg !310, !taffo.info !292
  %arrayidx87 = getelementptr inbounds [1024 x float], [1024 x float]* %A, i64 0, i64 %idxprom86, !dbg !310, !taffo.info !27
  %56 = load float, float* %arrayidx87, align 4, !dbg !310, !taffo.info !83
  %57 = load i32, i32* %k, align 4, !dbg !311, !taffo.info !42
  %mul88 = mul nsw i32 %57, 32, !dbg !312, !taffo.info !313
  %58 = load i32, i32* %jj, align 4, !dbg !315, !taffo.info !270
  %add89 = add nsw i32 %mul88, %58, !dbg !316, !taffo.info !317
  %idxprom90 = sext i32 %add89 to i64, !dbg !319, !taffo.info !317
  %arrayidx91 = getelementptr inbounds [1024 x float], [1024 x float]* %B, i64 0, i64 %idxprom90, !dbg !319, !taffo.info !29
  %59 = load float, float* %arrayidx91, align 4, !dbg !319, !taffo.info !83
  %mul92 = fmul float %56, %59, !dbg !320, !taffo.info !157
  %60 = load float, float* %alpha, align 4, !dbg !321, !taffo.info !36
  %mul93 = fmul float %mul92, %60, !dbg !322, !taffo.info !323
  store float %mul93, float* %z, align 4, !dbg !325, !taffo.info !60
  %61 = load i32, i32* %ii, align 4, !dbg !326, !taffo.info !270
  %mul94 = mul nsw i32 %61, 32, !dbg !327, !taffo.info !288
  %62 = load i32, i32* %jj, align 4, !dbg !328, !taffo.info !270
  %add95 = add nsw i32 %mul94, %62, !dbg !329, !taffo.info !330
  %idxprom96 = sext i32 %add95 to i64, !dbg !332, !taffo.info !330
  %arrayidx97 = getelementptr inbounds [1024 x float], [1024 x float]* %tmp, i64 0, i64 %idxprom96, !dbg !332, !taffo.info !295
  %63 = load float, float* %arrayidx97, align 4, !dbg !332, !taffo.info !295
  %64 = load float, float* %z, align 4, !dbg !333, !taffo.info !295
  %add98 = fadd float %63, %64, !dbg !334, !taffo.info !295
  %65 = load i32, i32* %ii, align 4, !dbg !335, !taffo.info !270
  %mul99 = mul nsw i32 %65, 32, !dbg !336, !taffo.info !288
  %66 = load i32, i32* %jj, align 4, !dbg !337, !taffo.info !270
  %add100 = add nsw i32 %mul99, %66, !dbg !338, !taffo.info !330
  %idxprom101 = sext i32 %add100 to i64, !dbg !339, !taffo.info !330
  %arrayidx102 = getelementptr inbounds [1024 x float], [1024 x float]* %tmp, i64 0, i64 %idxprom101, !dbg !339, !taffo.info !295
  store float %add98, float* %arrayidx102, align 4, !dbg !340, !taffo.info !60
  br label %for.inc103, !dbg !341

for.inc103:                                       ; preds = %for.body83
  %67 = load i32, i32* %k, align 4, !dbg !342, !taffo.info !42
  %inc104 = add nsw i32 %67, 1, !dbg !342, !taffo.info !343
  store i32 %inc104, i32* %k, align 4, !dbg !342, !taffo.info !60
  br label %for.cond81, !dbg !345, !llvm.loop !346

for.end105:                                       ; preds = %for.cond81
  %68 = load i32, i32* %ii, align 4, !dbg !349, !taffo.info !270
  %mul106 = mul nsw i32 %68, 32, !dbg !350, !taffo.info !288
  %69 = load i32, i32* %jj, align 4, !dbg !351, !taffo.info !42
  %add107 = add nsw i32 %mul106, %69, !dbg !352, !taffo.info !292
  %idxprom108 = sext i32 %add107 to i64, !dbg !353, !taffo.info !292
  %arrayidx109 = getelementptr inbounds [1024 x float], [1024 x float]* %D, i64 0, i64 %idxprom108, !dbg !353, !taffo.info !224, !taffo.target !33
  %70 = load float, float* %arrayidx109, align 4, !dbg !353, !taffo.info !224, !taffo.target !33
  %71 = load float, float* %beta, align 4, !dbg !354, !taffo.info !38
  %mul110 = fmul float %70, %71, !dbg !355, !taffo.info !224
  %72 = load i32, i32* %ii, align 4, !dbg !356, !taffo.info !270
  %mul111 = mul nsw i32 %72, 32, !dbg !357, !taffo.info !288
  %73 = load i32, i32* %jj, align 4, !dbg !358, !taffo.info !42
  %add112 = add nsw i32 %mul111, %73, !dbg !359, !taffo.info !292
  %idxprom113 = sext i32 %add112 to i64, !dbg !360, !taffo.info !292
  %arrayidx114 = getelementptr inbounds [1024 x float], [1024 x float]* %D, i64 0, i64 %idxprom113, !dbg !360, !taffo.info !224, !taffo.target !33
  store float %mul110, float* %arrayidx114, align 4, !dbg !361, !taffo.info !60, !taffo.target !33
  %74 = load i32, i32* %ii, align 4, !dbg !362, !taffo.info !270
  %mul115 = mul nsw i32 %74, 32, !dbg !363, !taffo.info !288
  %75 = load i32, i32* %jj, align 4, !dbg !364, !taffo.info !42
  %add116 = add nsw i32 %mul115, %75, !dbg !365, !taffo.info !292
  %idxprom117 = sext i32 %add116 to i64, !dbg !366, !taffo.info !292
  %arrayidx118 = getelementptr inbounds [1024 x float], [1024 x float]* %D, i64 0, i64 %idxprom117, !dbg !366, !taffo.info !224, !taffo.target !33
  %76 = load float, float* %arrayidx118, align 4, !dbg !366, !taffo.info !224, !taffo.target !33
  %77 = load i32, i32* %ii, align 4, !dbg !367, !taffo.info !270
  %mul119 = mul nsw i32 %77, 32, !dbg !368, !taffo.info !288
  %78 = load i32, i32* %jj, align 4, !dbg !369, !taffo.info !42
  %add120 = add nsw i32 %mul119, %78, !dbg !370, !taffo.info !292
  %idxprom121 = sext i32 %add120 to i64, !dbg !371, !taffo.info !292
  %arrayidx122 = getelementptr inbounds [1024 x float], [1024 x float]* %tmp, i64 0, i64 %idxprom121, !dbg !371, !taffo.info !295
  %79 = load float, float* %arrayidx122, align 4, !dbg !371, !taffo.info !295
  %add123 = fadd float %76, %79, !dbg !372, !taffo.info !224, !taffo.target !33
  %80 = load i32, i32* %ii, align 4, !dbg !373, !taffo.info !270
  %mul124 = mul nsw i32 %80, 32, !dbg !374, !taffo.info !288
  %81 = load i32, i32* %jj, align 4, !dbg !375, !taffo.info !42
  %add125 = add nsw i32 %mul124, %81, !dbg !376, !taffo.info !292
  %idxprom126 = sext i32 %add125 to i64, !dbg !377, !taffo.info !292
  %arrayidx127 = getelementptr inbounds [1024 x float], [1024 x float]* %D, i64 0, i64 %idxprom126, !dbg !377, !taffo.info !224, !taffo.target !33
  store float %add123, float* %arrayidx127, align 4, !dbg !378, !taffo.info !60, !taffo.target !33
  %82 = load i32, i32* %ii, align 4, !dbg !379, !taffo.info !270
  %mul128 = mul nsw i32 %82, 32, !dbg !380, !taffo.info !288
  %83 = load i32, i32* %jj, align 4, !dbg !381, !taffo.info !42
  %add129 = add nsw i32 %mul128, %83, !dbg !382, !taffo.info !292
  %idxprom130 = sext i32 %add129 to i64, !dbg !383, !taffo.info !292
  %arrayidx131 = getelementptr inbounds [1024 x float], [1024 x float]* %D, i64 0, i64 %idxprom130, !dbg !383, !taffo.info !224, !taffo.target !33
  %84 = load float, float* %arrayidx131, align 4, !dbg !383, !taffo.info !224, !taffo.target !33
  %85 = load float, float* %sum, align 4, !dbg !384, !taffo.info !40
  %add132 = fadd float %85, %84, !dbg !384, !taffo.info !385
  store float %add132, float* %sum, align 4, !dbg !384, !taffo.info !60
  br label %for.inc133, !dbg !387

for.inc133:                                       ; preds = %for.end105
  %86 = load i32, i32* %jj, align 4, !dbg !388, !taffo.info !42
  %inc134 = add nsw i32 %86, 1, !dbg !388, !taffo.info !343
  store i32 %inc134, i32* %jj, align 4, !dbg !388, !taffo.info !60
  br label %for.cond74, !dbg !389, !llvm.loop !390

for.end135:                                       ; preds = %for.cond74
  br label %for.inc136, !dbg !395

for.inc136:                                       ; preds = %for.end135
  %87 = load i32, i32* %ii, align 4, !dbg !396, !taffo.info !42
  %inc137 = add nsw i32 %87, 1, !dbg !396, !taffo.info !343
  store i32 %inc137, i32* %ii, align 4, !dbg !396, !taffo.info !60
  br label %for.cond71, !dbg !397, !llvm.loop !398

for.end138:                                       ; preds = %for.cond71
  %88 = load float, float* %sum, align 4, !dbg !401, !taffo.info !40
  %89 = load float, float* %gamma.addr, align 4, !dbg !402
  %mul139 = fmul float %88, %89, !dbg !403, !taffo.info !60
  %90 = bitcast i32* %j to i8*, !dbg !404, !taffo.info !34
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %90) #3, !dbg !404, !taffo.info !60
  %91 = bitcast i32* %i to i8*, !dbg !404, !taffo.info !34
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %91) #3, !dbg !404, !taffo.info !60
  %92 = bitcast [1024 x float]* %D to i8*, !dbg !404, !taffo.info !31, !taffo.target !33
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* %92) #3, !dbg !404, !taffo.info !60, !taffo.target !33
  %93 = bitcast [1024 x float]* %B to i8*, !dbg !404, !taffo.info !29
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* %93) #3, !dbg !404, !taffo.info !60
  %94 = bitcast [1024 x float]* %A to i8*, !dbg !404, !taffo.info !27
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* %94) #3, !dbg !404, !taffo.info !60
  %95 = bitcast i32* %nl to i8*, !dbg !404, !taffo.info !25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %95) #3, !dbg !404
  %96 = bitcast i32* %nk to i8*, !dbg !404, !taffo.info !25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %96) #3, !dbg !404
  %97 = bitcast i32* %nj to i8*, !dbg !404, !taffo.info !25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %97) #3, !dbg !404
  %98 = bitcast i32* %ni to i8*, !dbg !404, !taffo.info !25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %98) #3, !dbg !404
  ret float %mul139, !dbg !405, !taffo.info !60
}

; Function Attrs: nounwind readnone speculatable
declare !taffo.funinfo !406 void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare !taffo.funinfo !407 void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare !taffo.funinfo !408 void @llvm.var.annotation(i8*, i8*, i8*, i32) #3

; Function Attrs: argmemonly nounwind
declare !taffo.funinfo !407 void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

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
!8 = !DIFile(filename: "/home/bruno/Desktop/benchmarks/gemm/proj_gemm/solution1/.autopilot/db/gemm_taffoin.pp.0.c", directory: "/home/bruno/Desktop/benchmarks/gemm")
!9 = !{}
!10 = !{!11}
!11 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!12 = !{!"clang version 7.0.0 "}
!13 = !{i32 2, !"Dwarf Version", i32 4}
!14 = !{i32 2, !"Debug Info Version", i32 3}
!15 = !{i32 1, !"wchar_size", i32 4}
!16 = distinct !DISubprogram(name: "mm", scope: !17, file: !17, line: 42, type: !18, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!17 = !DIFile(filename: "gemm_taffoin.c", directory: "/home/bruno/Desktop/benchmarks/gemm")
!18 = !DISubroutineType(types: !19)
!19 = !{!11, !11}
!20 = !{!21}
!21 = !{!"fpga.top", !"user", !22}
!22 = !DILocation(line: 42, column: 16, scope: !16)
!23 = !{i1 true}
!24 = !{i32 0, i1 false}
!25 = !{i1 false, !26, i1 false, i1 false}
!26 = !{double 3.200000e+01, double 3.200000e+01}
!27 = !{i1 false, !28, i1 false, i1 true}
!28 = !{double 0.000000e+00, double 5.000000e+00}
!29 = !{i1 false, !30, i1 false, i1 true}
!30 = !{double 0.000000e+00, double 3.000000e+00}
!31 = !{i1 false, !32, i1 false, i1 true}
!32 = !{double -1.600000e+01, double 1.600000e+01}
!33 = !{!"D"}
!34 = !{i1 false, !35, i1 false, i1 true}
!35 = !{double 0.000000e+00, double 1.600000e+01}
!36 = !{i1 false, !37, i1 false, i1 true}
!37 = !{double 0x3FF3333340000000, double 0x3FF3333340000000}
!38 = !{i1 false, !39, i1 false, i1 true}
!39 = !{double 1.500000e+00, double 1.500000e+00}
!40 = !{i1 false, !41, i1 false, i1 true}
!41 = !{double -1.000000e+02, double 1.000000e+02}
!42 = !{i1 false, !43, i1 false, i1 true}
!43 = !{double 0.000000e+00, double 3.200000e+01}
!44 = !DILocalVariable(name: "gamma", arg: 1, scope: !16, file: !17, line: 42, type: !11)
!45 = !DILocation(line: 42, column: 53, scope: !16)
!46 = !DILocation(line: 44, column: 5, scope: !16)
!47 = !DILocalVariable(name: "ni", scope: !16, file: !17, line: 44, type: !48)
!48 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!49 = !DILocation(line: 44, column: 9, scope: !16)
!50 = !DILocation(line: 45, column: 5, scope: !16)
!51 = !DILocalVariable(name: "nj", scope: !16, file: !17, line: 45, type: !48)
!52 = !DILocation(line: 45, column: 9, scope: !16)
!53 = !DILocation(line: 46, column: 5, scope: !16)
!54 = !DILocalVariable(name: "nk", scope: !16, file: !17, line: 46, type: !48)
!55 = !DILocation(line: 46, column: 9, scope: !16)
!56 = !DILocation(line: 47, column: 5, scope: !16)
!57 = !DILocalVariable(name: "nl", scope: !16, file: !17, line: 47, type: !48)
!58 = !DILocation(line: 47, column: 9, scope: !16)
!59 = !DILocation(line: 49, column: 5, scope: !16)
!60 = !{i1 false, i1 false, i1 false, i1 true}
!61 = !DILocalVariable(name: "A", scope: !16, file: !17, line: 49, type: !62)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 32768, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 1024)
!65 = !DILocation(line: 49, column: 11, scope: !16)
!66 = !DILocation(line: 50, column: 5, scope: !16)
!67 = !DILocalVariable(name: "B", scope: !16, file: !17, line: 50, type: !62)
!68 = !DILocation(line: 50, column: 11, scope: !16)
!69 = !DILocation(line: 51, column: 5, scope: !16)
!70 = !DILocalVariable(name: "D", scope: !16, file: !17, line: 51, type: !62)
!71 = !DILocation(line: 51, column: 11, scope: !16)
!72 = !DILocation(line: 52, column: 5, scope: !16)
!73 = !DILocalVariable(name: "i", scope: !16, file: !17, line: 52, type: !48)
!74 = !DILocation(line: 52, column: 9, scope: !16)
!75 = !DILocation(line: 53, column: 5, scope: !16)
!76 = !DILocalVariable(name: "j", scope: !16, file: !17, line: 53, type: !48)
!77 = !DILocation(line: 53, column: 9, scope: !16)
!78 = !DILocation(line: 54, column: 29, scope: !79)
!79 = distinct !DILexicalBlock(scope: !16, file: !17, line: 54, column: 22)
!80 = !DILocation(line: 54, column: 27, scope: !79)
!81 = !DILocation(line: 54, column: 34, scope: !82)
!82 = distinct !DILexicalBlock(scope: !79, file: !17, line: 54, column: 22)
!83 = !{i1 false, !84, i1 false, i1 true}
!84 = !{double 0.000000e+00, double 1.700000e+01}
!85 = !DILocation(line: 54, column: 38, scope: !82)
!86 = !DILocation(line: 54, column: 36, scope: !82)
!87 = !{i1 false, !88, i1 false, i1 true}
!88 = !{double 1.000000e+00, double 1.000000e+00}
!89 = !DILocation(line: 54, column: 22, scope: !79)
!90 = !DILocation(line: 55, column: 33, scope: !91)
!91 = distinct !DILexicalBlock(scope: !82, file: !17, line: 55, column: 26)
!92 = !DILocation(line: 55, column: 31, scope: !91)
!93 = !DILocation(line: 55, column: 38, scope: !94)
!94 = distinct !DILexicalBlock(scope: !91, file: !17, line: 55, column: 26)
!95 = !DILocation(line: 55, column: 42, scope: !94)
!96 = !DILocation(line: 55, column: 40, scope: !94)
!97 = !DILocation(line: 55, column: 26, scope: !91)
!98 = !DILocation(line: 56, column: 39, scope: !94)
!99 = !DILocation(line: 56, column: 41, scope: !94)
!100 = !DILocation(line: 56, column: 40, scope: !94)
!101 = !{i1 false, !102, i1 false, i1 true}
!102 = !{double 0.000000e+00, double 2.560000e+02}
!103 = !DILocation(line: 56, column: 42, scope: !94)
!104 = !{i1 false, !105, i1 false, i1 true}
!105 = !{double 1.000000e+00, double 2.570000e+02}
!106 = !DILocation(line: 56, column: 48, scope: !94)
!107 = !DILocation(line: 56, column: 46, scope: !94)
!108 = !DILocation(line: 56, column: 37, scope: !94)
!109 = !DILocation(line: 56, column: 35, scope: !94)
!110 = !{i1 false, !111, i1 false, i1 true}
!111 = !{double 0.000000e+00, double 1.600000e+02}
!112 = !DILocation(line: 56, column: 54, scope: !94)
!113 = !DILocation(line: 56, column: 52, scope: !94)
!114 = !DILocation(line: 56, column: 15, scope: !94)
!115 = !DILocation(line: 56, column: 17, scope: !94)
!116 = !DILocation(line: 56, column: 16, scope: !94)
!117 = !{i1 false, !118, i1 false, i1 true}
!118 = !{double 0.000000e+00, double 5.120000e+02}
!119 = !DILocation(line: 56, column: 20, scope: !94)
!120 = !DILocation(line: 56, column: 19, scope: !94)
!121 = !{i1 false, !122, i1 false, i1 true}
!122 = !{double 0.000000e+00, double 5.280000e+02}
!123 = !DILocation(line: 56, column: 13, scope: !94)
!124 = !DILocation(line: 56, column: 23, scope: !94)
!125 = !DILocation(line: 55, column: 47, scope: !94)
!126 = !{i1 false, !127, i1 false, i1 true}
!127 = !{double 1.000000e+00, double 1.700000e+01}
!128 = !DILocation(line: 55, column: 26, scope: !94)
!129 = distinct !{!129, !97, !130, !131}
!130 = !DILocation(line: 56, column: 54, scope: !91)
!131 = !{!"llvm.loop.name", !"VITIS_LOOP_55_2"}
!132 = !DILocation(line: 54, column: 43, scope: !82)
!133 = !DILocation(line: 54, column: 22, scope: !82)
!134 = distinct !{!134, !89, !135, !136}
!135 = !DILocation(line: 56, column: 54, scope: !79)
!136 = !{!"llvm.loop.name", !"VITIS_LOOP_54_1"}
!137 = !DILocation(line: 57, column: 29, scope: !138)
!138 = distinct !DILexicalBlock(scope: !16, file: !17, line: 57, column: 22)
!139 = !DILocation(line: 57, column: 27, scope: !138)
!140 = !DILocation(line: 57, column: 34, scope: !141)
!141 = distinct !DILexicalBlock(scope: !138, file: !17, line: 57, column: 22)
!142 = !DILocation(line: 57, column: 38, scope: !141)
!143 = !DILocation(line: 57, column: 36, scope: !141)
!144 = !DILocation(line: 57, column: 22, scope: !138)
!145 = !DILocation(line: 58, column: 33, scope: !146)
!146 = distinct !DILexicalBlock(scope: !141, file: !17, line: 58, column: 26)
!147 = !DILocation(line: 58, column: 31, scope: !146)
!148 = !DILocation(line: 58, column: 38, scope: !149)
!149 = distinct !DILexicalBlock(scope: !146, file: !17, line: 58, column: 26)
!150 = !DILocation(line: 58, column: 42, scope: !149)
!151 = !DILocation(line: 58, column: 40, scope: !149)
!152 = !DILocation(line: 58, column: 26, scope: !146)
!153 = !DILocation(line: 59, column: 38, scope: !149)
!154 = !DILocation(line: 59, column: 41, scope: !149)
!155 = !DILocation(line: 59, column: 42, scope: !149)
!156 = !DILocation(line: 59, column: 39, scope: !149)
!157 = !{i1 false, !158, i1 false, i1 true}
!158 = !{double 0.000000e+00, double 2.890000e+02}
!159 = !DILocation(line: 59, column: 48, scope: !149)
!160 = !DILocation(line: 59, column: 46, scope: !149)
!161 = !DILocation(line: 59, column: 37, scope: !149)
!162 = !DILocation(line: 59, column: 35, scope: !149)
!163 = !{i1 false, !164, i1 false, i1 true}
!164 = !{double 0.000000e+00, double 9.600000e+01}
!165 = !DILocation(line: 59, column: 54, scope: !149)
!166 = !DILocation(line: 59, column: 52, scope: !149)
!167 = !DILocation(line: 59, column: 15, scope: !149)
!168 = !DILocation(line: 59, column: 17, scope: !149)
!169 = !DILocation(line: 59, column: 16, scope: !149)
!170 = !{i1 false, !171, i1 false, i1 true}
!171 = !{double 0.000000e+00, double 5.440000e+02}
!172 = !DILocation(line: 59, column: 20, scope: !149)
!173 = !DILocation(line: 59, column: 19, scope: !149)
!174 = !{i1 false, !175, i1 false, i1 true}
!175 = !{double 0.000000e+00, double 5.600000e+02}
!176 = !DILocation(line: 59, column: 13, scope: !149)
!177 = !DILocation(line: 59, column: 23, scope: !149)
!178 = !DILocation(line: 58, column: 47, scope: !149)
!179 = !DILocation(line: 58, column: 26, scope: !149)
!180 = distinct !{!180, !152, !181, !182}
!181 = !DILocation(line: 59, column: 54, scope: !146)
!182 = !{!"llvm.loop.name", !"VITIS_LOOP_58_4"}
!183 = !DILocation(line: 57, column: 43, scope: !141)
!184 = !DILocation(line: 57, column: 22, scope: !141)
!185 = distinct !{!185, !144, !186, !187}
!186 = !DILocation(line: 59, column: 54, scope: !138)
!187 = !{!"llvm.loop.name", !"VITIS_LOOP_57_3"}
!188 = !DILocation(line: 60, column: 29, scope: !189)
!189 = distinct !DILexicalBlock(scope: !16, file: !17, line: 60, column: 22)
!190 = !DILocation(line: 60, column: 27, scope: !189)
!191 = !DILocation(line: 60, column: 34, scope: !192)
!192 = distinct !DILexicalBlock(scope: !189, file: !17, line: 60, column: 22)
!193 = !DILocation(line: 60, column: 38, scope: !192)
!194 = !DILocation(line: 60, column: 36, scope: !192)
!195 = !DILocation(line: 60, column: 22, scope: !189)
!196 = !DILocation(line: 61, column: 33, scope: !197)
!197 = distinct !DILexicalBlock(scope: !192, file: !17, line: 61, column: 26)
!198 = !DILocation(line: 61, column: 31, scope: !197)
!199 = !DILocation(line: 61, column: 38, scope: !200)
!200 = distinct !DILexicalBlock(scope: !197, file: !17, line: 61, column: 26)
!201 = !DILocation(line: 61, column: 42, scope: !200)
!202 = !DILocation(line: 61, column: 40, scope: !200)
!203 = !DILocation(line: 61, column: 26, scope: !197)
!204 = !DILocation(line: 62, column: 38, scope: !200)
!205 = !DILocation(line: 62, column: 41, scope: !200)
!206 = !DILocation(line: 62, column: 42, scope: !200)
!207 = !{i1 false, !208, i1 false, i1 true}
!208 = !{double 2.000000e+00, double 1.800000e+01}
!209 = !DILocation(line: 62, column: 39, scope: !200)
!210 = !{i1 false, !211, i1 false, i1 true}
!211 = !{double 0.000000e+00, double 3.060000e+02}
!212 = !DILocation(line: 62, column: 48, scope: !200)
!213 = !DILocation(line: 62, column: 46, scope: !200)
!214 = !DILocation(line: 62, column: 37, scope: !200)
!215 = !DILocation(line: 62, column: 35, scope: !200)
!216 = !DILocation(line: 62, column: 54, scope: !200)
!217 = !DILocation(line: 62, column: 52, scope: !200)
!218 = !DILocation(line: 62, column: 15, scope: !200)
!219 = !DILocation(line: 62, column: 17, scope: !200)
!220 = !DILocation(line: 62, column: 16, scope: !200)
!221 = !DILocation(line: 62, column: 20, scope: !200)
!222 = !DILocation(line: 62, column: 19, scope: !200)
!223 = !DILocation(line: 62, column: 13, scope: !200)
!224 = !{i1 false, !225, i1 false, i1 true}
!225 = !{double 0.000000e+00, double 7.500000e+00}
!226 = !DILocation(line: 62, column: 23, scope: !200)
!227 = !DILocation(line: 61, column: 47, scope: !200)
!228 = !DILocation(line: 61, column: 26, scope: !200)
!229 = distinct !{!229, !203, !230, !231}
!230 = !DILocation(line: 62, column: 54, scope: !197)
!231 = !{!"llvm.loop.name", !"VITIS_LOOP_61_6"}
!232 = !DILocation(line: 60, column: 43, scope: !192)
!233 = !DILocation(line: 60, column: 22, scope: !192)
!234 = distinct !{!234, !195, !235, !236}
!235 = !DILocation(line: 62, column: 54, scope: !189)
!236 = !{!"llvm.loop.name", !"VITIS_LOOP_60_5"}
!237 = !DILocalVariable(name: "alpha", scope: !16, file: !17, line: 63, type: !11)
!238 = !DILocation(line: 63, column: 49, scope: !16)
!239 = !DILocation(line: 63, column: 5, scope: !16)
!240 = !DILocalVariable(name: "beta", scope: !16, file: !17, line: 64, type: !11)
!241 = !DILocation(line: 64, column: 49, scope: !16)
!242 = !DILocation(line: 64, column: 5, scope: !16)
!243 = !DILocalVariable(name: "fg", scope: !16, file: !17, line: 65, type: !11)
!244 = !DILocation(line: 65, column: 63, scope: !16)
!245 = !DILocation(line: 65, column: 5, scope: !16)
!246 = !DILocation(line: 65, column: 68, scope: !16)
!247 = !DILocalVariable(name: "tmp", scope: !16, file: !17, line: 66, type: !62)
!248 = !DILocation(line: 66, column: 11, scope: !16)
!249 = !DILocation(line: 66, column: 5, scope: !16)
!250 = !DILocalVariable(name: "sum", scope: !16, file: !17, line: 67, type: !11)
!251 = !DILocation(line: 67, column: 65, scope: !16)
!252 = !DILocation(line: 67, column: 5, scope: !16)
!253 = !DILocalVariable(name: "ii", scope: !16, file: !17, line: 69, type: !48)
!254 = !DILocation(line: 69, column: 9, scope: !16)
!255 = !DILocation(line: 69, column: 5, scope: !16)
!256 = !DILocalVariable(name: "jj", scope: !16, file: !17, line: 70, type: !48)
!257 = !DILocation(line: 70, column: 9, scope: !16)
!258 = !DILocation(line: 70, column: 5, scope: !16)
!259 = !DILocalVariable(name: "k", scope: !16, file: !17, line: 71, type: !48)
!260 = !DILocation(line: 71, column: 9, scope: !16)
!261 = !DILocation(line: 71, column: 5, scope: !16)
!262 = !DILocalVariable(name: "z", scope: !16, file: !17, line: 72, type: !11)
!263 = !DILocation(line: 72, column: 11, scope: !16)
!264 = !DILocation(line: 72, column: 5, scope: !16)
!265 = !DILocation(line: 73, column: 30, scope: !266)
!266 = distinct !DILexicalBlock(scope: !16, file: !17, line: 73, column: 22)
!267 = !DILocation(line: 73, column: 27, scope: !266)
!268 = !DILocation(line: 73, column: 35, scope: !269)
!269 = distinct !DILexicalBlock(scope: !266, file: !17, line: 73, column: 22)
!270 = !{i1 false, !271, i1 false, i1 true}
!271 = !{double 0.000000e+00, double 3.300000e+01}
!272 = !DILocation(line: 73, column: 38, scope: !269)
!273 = !{i1 false, !274, i1 false, i1 true}
!274 = !{double 0.000000e+00, double 1.000000e+00}
!275 = !DILocation(line: 73, column: 22, scope: !266)
!276 = !DILocation(line: 74, column: 5, scope: !269)
!277 = !DILocation(line: 75, column: 34, scope: !278)
!278 = distinct !DILexicalBlock(scope: !279, file: !17, line: 75, column: 26)
!279 = distinct !DILexicalBlock(scope: !269, file: !17, line: 74, column: 5)
!280 = !DILocation(line: 75, column: 31, scope: !278)
!281 = !DILocation(line: 75, column: 39, scope: !282)
!282 = distinct !DILexicalBlock(scope: !278, file: !17, line: 75, column: 26)
!283 = !DILocation(line: 75, column: 42, scope: !282)
!284 = !DILocation(line: 75, column: 26, scope: !278)
!285 = !DILocation(line: 78, column: 6, scope: !286)
!286 = distinct !DILexicalBlock(scope: !282, file: !17, line: 76, column: 9)
!287 = !DILocation(line: 78, column: 8, scope: !286)
!288 = !{i1 false, !289, i1 false, i1 true}
!289 = !{double 0.000000e+00, double 1.056000e+03}
!290 = !DILocation(line: 78, column: 13, scope: !286)
!291 = !DILocation(line: 78, column: 12, scope: !286)
!292 = !{i1 false, !293, i1 false, i1 true}
!293 = !{double 0.000000e+00, double 1.088000e+03}
!294 = !DILocation(line: 78, column: 2, scope: !286)
!295 = !{i1 false, !296, i1 false, i1 true}
!296 = !{double -1.000000e+02, double 0x4075ACCCDB400000}
!297 = !DILocation(line: 78, column: 17, scope: !286)
!298 = !DILocation(line: 79, column: 37, scope: !299)
!299 = distinct !DILexicalBlock(scope: !286, file: !17, line: 79, column: 30)
!300 = !DILocation(line: 79, column: 35, scope: !299)
!301 = !DILocation(line: 79, column: 42, scope: !302)
!302 = distinct !DILexicalBlock(scope: !299, file: !17, line: 79, column: 30)
!303 = !DILocation(line: 79, column: 44, scope: !302)
!304 = !DILocation(line: 79, column: 30, scope: !299)
!305 = !DILocation(line: 80, column: 23, scope: !306)
!306 = distinct !DILexicalBlock(scope: !302, file: !17, line: 79, column: 54)
!307 = !DILocation(line: 80, column: 25, scope: !306)
!308 = !DILocation(line: 80, column: 30, scope: !306)
!309 = !DILocation(line: 80, column: 29, scope: !306)
!310 = !DILocation(line: 80, column: 21, scope: !306)
!311 = !DILocation(line: 80, column: 37, scope: !306)
!312 = !DILocation(line: 80, column: 38, scope: !306)
!313 = !{i1 false, !314, i1 false, i1 true}
!314 = !{double 0.000000e+00, double 1.024000e+03}
!315 = !DILocation(line: 80, column: 43, scope: !306)
!316 = !DILocation(line: 80, column: 42, scope: !306)
!317 = !{i1 false, !318, i1 false, i1 true}
!318 = !{double 0.000000e+00, double 1.057000e+03}
!319 = !DILocation(line: 80, column: 35, scope: !306)
!320 = !DILocation(line: 80, column: 33, scope: !306)
!321 = !DILocation(line: 80, column: 49, scope: !306)
!322 = !DILocation(line: 80, column: 47, scope: !306)
!323 = !{i1 false, !324, i1 false, i1 true}
!324 = !{double 0.000000e+00, double 0x4075ACCCDB400000}
!325 = !DILocation(line: 80, column: 19, scope: !306)
!326 = !DILocation(line: 81, column: 38, scope: !306)
!327 = !DILocation(line: 81, column: 40, scope: !306)
!328 = !DILocation(line: 81, column: 45, scope: !306)
!329 = !DILocation(line: 81, column: 44, scope: !306)
!330 = !{i1 false, !331, i1 false, i1 true}
!331 = !{double 0.000000e+00, double 1.089000e+03}
!332 = !DILocation(line: 81, column: 34, scope: !306)
!333 = !DILocation(line: 81, column: 51, scope: !306)
!334 = !DILocation(line: 81, column: 49, scope: !306)
!335 = !DILocation(line: 81, column: 21, scope: !306)
!336 = !DILocation(line: 81, column: 23, scope: !306)
!337 = !DILocation(line: 81, column: 28, scope: !306)
!338 = !DILocation(line: 81, column: 27, scope: !306)
!339 = !DILocation(line: 81, column: 17, scope: !306)
!340 = !DILocation(line: 81, column: 32, scope: !306)
!341 = !DILocation(line: 82, column: 13, scope: !306)
!342 = !DILocation(line: 79, column: 51, scope: !302)
!343 = !{i1 false, !344, i1 false, i1 true}
!344 = !{double 1.000000e+00, double 3.300000e+01}
!345 = !DILocation(line: 79, column: 30, scope: !302)
!346 = distinct !{!346, !304, !347, !348}
!347 = !DILocation(line: 82, column: 13, scope: !299)
!348 = !{!"llvm.loop.name", !"VITIS_LOOP_79_9"}
!349 = !DILocation(line: 83, column: 35, scope: !286)
!350 = !DILocation(line: 83, column: 37, scope: !286)
!351 = !DILocation(line: 83, column: 42, scope: !286)
!352 = !DILocation(line: 83, column: 41, scope: !286)
!353 = !DILocation(line: 83, column: 33, scope: !286)
!354 = !DILocation(line: 83, column: 48, scope: !286)
!355 = !DILocation(line: 83, column: 46, scope: !286)
!356 = !DILocation(line: 83, column: 20, scope: !286)
!357 = !DILocation(line: 83, column: 22, scope: !286)
!358 = !DILocation(line: 83, column: 27, scope: !286)
!359 = !DILocation(line: 83, column: 26, scope: !286)
!360 = !DILocation(line: 83, column: 18, scope: !286)
!361 = !DILocation(line: 83, column: 31, scope: !286)
!362 = !DILocation(line: 84, column: 35, scope: !286)
!363 = !DILocation(line: 84, column: 37, scope: !286)
!364 = !DILocation(line: 84, column: 42, scope: !286)
!365 = !DILocation(line: 84, column: 41, scope: !286)
!366 = !DILocation(line: 84, column: 33, scope: !286)
!367 = !DILocation(line: 84, column: 52, scope: !286)
!368 = !DILocation(line: 84, column: 54, scope: !286)
!369 = !DILocation(line: 84, column: 59, scope: !286)
!370 = !DILocation(line: 84, column: 58, scope: !286)
!371 = !DILocation(line: 84, column: 48, scope: !286)
!372 = !DILocation(line: 84, column: 46, scope: !286)
!373 = !DILocation(line: 84, column: 20, scope: !286)
!374 = !DILocation(line: 84, column: 22, scope: !286)
!375 = !DILocation(line: 84, column: 27, scope: !286)
!376 = !DILocation(line: 84, column: 26, scope: !286)
!377 = !DILocation(line: 84, column: 18, scope: !286)
!378 = !DILocation(line: 84, column: 31, scope: !286)
!379 = !DILocation(line: 85, column: 27, scope: !286)
!380 = !DILocation(line: 85, column: 29, scope: !286)
!381 = !DILocation(line: 85, column: 34, scope: !286)
!382 = !DILocation(line: 85, column: 33, scope: !286)
!383 = !DILocation(line: 85, column: 25, scope: !286)
!384 = !DILocation(line: 85, column: 22, scope: !286)
!385 = !{i1 false, !386, i1 false, i1 true}
!386 = !{double -1.000000e+02, double 1.075000e+02}
!387 = !DILocation(line: 86, column: 9, scope: !286)
!388 = !DILocation(line: 75, column: 50, scope: !282)
!389 = !DILocation(line: 75, column: 26, scope: !282)
!390 = distinct !{!390, !284, !391, !392, !394}
!391 = !DILocation(line: 86, column: 9, scope: !278)
!392 = !{!"llvm.loop.pipeline.enable", i32 1, i1 false, i8 -1, !"user", !393}
!393 = !DILocation(line: 77, column: 9, scope: !278)
!394 = !{!"llvm.loop.name", !"VITIS_LOOP_75_8"}
!395 = !DILocation(line: 87, column: 5, scope: !279)
!396 = !DILocation(line: 73, column: 46, scope: !269)
!397 = !DILocation(line: 73, column: 22, scope: !269)
!398 = distinct !{!398, !275, !399, !400}
!399 = !DILocation(line: 87, column: 5, scope: !266)
!400 = !{!"llvm.loop.name", !"VITIS_LOOP_73_7"}
!401 = !DILocation(line: 92, column: 12, scope: !16)
!402 = !DILocation(line: 92, column: 18, scope: !16)
!403 = !DILocation(line: 92, column: 16, scope: !16)
!404 = !DILocation(line: 93, column: 1, scope: !16)
!405 = !DILocation(line: 92, column: 5, scope: !16)
!406 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!407 = !{i32 0, i1 false, i32 0, i1 false}
!408 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
