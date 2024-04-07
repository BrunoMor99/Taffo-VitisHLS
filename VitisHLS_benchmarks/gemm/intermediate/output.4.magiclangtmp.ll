; ModuleID = '/home/bruno/Desktop/benchmarks/gemm/intermediate/output.3.magiclangtmp.ll'
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
  %B = alloca [1024 x float], align 4, !taffo.info !30
  %D = alloca [1024 x float], align 4, !taffo.info !33, !taffo.target !36
  %i = alloca i32, align 4, !taffo.info !37
  %j = alloca i32, align 4, !taffo.info !37
  %alpha = alloca float, align 4, !taffo.info !39
  %beta = alloca float, align 4, !taffo.info !41
  %fg = alloca float, align 4, !taffo.info !33
  %tmp = alloca [1024 x float], align 4, !taffo.info !33
  %sum = alloca float, align 4, !taffo.info !43
  %ii = alloca i32, align 4, !taffo.info !46
  %jj = alloca i32, align 4, !taffo.info !46
  %k = alloca i32, align 4, !taffo.info !46
  %z = alloca float, align 4, !taffo.info !43
  store float %gamma, float* %gamma.addr, align 4
  call void @llvm.dbg.declare(metadata float* %gamma.addr, metadata !48, metadata !DIExpression()), !dbg !49
  %0 = bitcast i32* %ni to i8*, !dbg !50
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #3, !dbg !50
  call void @llvm.dbg.declare(metadata i32* %ni, metadata !51, metadata !DIExpression()), !dbg !53
  store i32 32, i32* %ni, align 4, !dbg !53
  %1 = bitcast i32* %nj to i8*, !dbg !54
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #3, !dbg !54
  call void @llvm.dbg.declare(metadata i32* %nj, metadata !55, metadata !DIExpression()), !dbg !56
  store i32 32, i32* %nj, align 4, !dbg !56
  %2 = bitcast i32* %nk to i8*, !dbg !57
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #3, !dbg !57
  call void @llvm.dbg.declare(metadata i32* %nk, metadata !58, metadata !DIExpression()), !dbg !59
  store i32 32, i32* %nk, align 4, !dbg !59
  %3 = bitcast i32* %nl to i8*, !dbg !60
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #3, !dbg !60
  call void @llvm.dbg.declare(metadata i32* %nl, metadata !61, metadata !DIExpression()), !dbg !62
  store i32 32, i32* %nl, align 4, !dbg !62
  %4 = bitcast [1024 x float]* %A to i8*, !dbg !63, !taffo.info !64
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* %4) #3, !dbg !63, !taffo.info !65
  call void @llvm.dbg.declare(metadata [1024 x float]* %A, metadata !66, metadata !DIExpression()), !dbg !70
  %A1 = bitcast [1024 x float]* %A to i8*, !dbg !63, !taffo.info !64
  %5 = bitcast [1024 x float]* %B to i8*, !dbg !71, !taffo.info !72
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* %5) #3, !dbg !71, !taffo.info !65
  call void @llvm.dbg.declare(metadata [1024 x float]* %B, metadata !73, metadata !DIExpression()), !dbg !74
  %B2 = bitcast [1024 x float]* %B to i8*, !dbg !71, !taffo.info !72
  %6 = bitcast [1024 x float]* %D to i8*, !dbg !75, !taffo.info !76, !taffo.target !36
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* %6) #3, !dbg !75, !taffo.info !65, !taffo.target !36
  call void @llvm.dbg.declare(metadata [1024 x float]* %D, metadata !77, metadata !DIExpression()), !dbg !78
  %D3 = bitcast [1024 x float]* %D to i8*, !dbg !75, !taffo.info !76, !taffo.target !36
  %7 = bitcast i32* %i to i8*, !dbg !79, !taffo.info !37
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #3, !dbg !79, !taffo.info !65
  call void @llvm.dbg.declare(metadata i32* %i, metadata !80, metadata !DIExpression()), !dbg !81
  %i4 = bitcast i32* %i to i8*, !dbg !79, !taffo.info !37
  %8 = bitcast i32* %j to i8*, !dbg !82, !taffo.info !37
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3, !dbg !82, !taffo.info !65
  call void @llvm.dbg.declare(metadata i32* %j, metadata !83, metadata !DIExpression()), !dbg !84
  %j5 = bitcast i32* %j to i8*, !dbg !82, !taffo.info !37
  br label %VITIS_LOOP_54_1, !dbg !82

VITIS_LOOP_54_1:                                  ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !85, !taffo.info !65
  br label %for.cond, !dbg !87

for.cond:                                         ; preds = %for.inc13, %VITIS_LOOP_54_1
  %9 = load i32, i32* %i, align 4, !dbg !88, !taffo.info !90
  %10 = load i32, i32* %ni, align 4, !dbg !92, !taffo.info !25
  %cmp = icmp slt i32 %9, %10, !dbg !93, !taffo.info !94
  br i1 %cmp, label %for.body, label %for.end15, !dbg !96, !taffo.info !65

for.body:                                         ; preds = %for.cond
  br label %VITIS_LOOP_55_2, !dbg !96

VITIS_LOOP_55_2:                                  ; preds = %for.body
  store i32 0, i32* %j, align 4, !dbg !97, !taffo.info !65
  br label %for.cond6, !dbg !99

for.cond6:                                        ; preds = %for.inc, %VITIS_LOOP_55_2
  %11 = load i32, i32* %j, align 4, !dbg !100, !taffo.info !90
  %12 = load i32, i32* %nk, align 4, !dbg !102, !taffo.info !25
  %cmp7 = icmp slt i32 %11, %12, !dbg !103, !taffo.info !94
  br i1 %cmp7, label %for.body8, label %for.end, !dbg !104, !taffo.info !65

for.body8:                                        ; preds = %for.cond6
  %13 = load i32, i32* %i, align 4, !dbg !105, !taffo.info !37
  %14 = load i32, i32* %j, align 4, !dbg !106, !taffo.info !37
  %mul = mul nsw i32 %13, %14, !dbg !107, !taffo.info !108
  %add = add nsw i32 %mul, 1, !dbg !110, !taffo.info !111
  %15 = load i32, i32* %ni, align 4, !dbg !113, !taffo.info !25
  %rem = srem i32 %add, %15, !dbg !114, !taffo.info !46
  %conv = sitofp i32 %rem to float, !dbg !115, !taffo.info !116
  %mul9 = fmul float 5.000000e+00, %conv, !dbg !118, !taffo.info !119
  %16 = load i32, i32* %ni, align 4, !dbg !121, !taffo.info !25
  %conv10 = sitofp i32 %16 to float, !dbg !121, !taffo.info !25
  %div = fdiv float %mul9, %conv10, !dbg !122, !taffo.info !27
  %17 = load i32, i32* %i, align 4, !dbg !123, !taffo.info !37
  %18 = load i32, i32* %nk, align 4, !dbg !124, !taffo.info !25
  %mul11 = mul nsw i32 %17, %18, !dbg !125, !taffo.info !126
  %19 = load i32, i32* %j, align 4, !dbg !128, !taffo.info !37
  %add12 = add nsw i32 %mul11, %19, !dbg !129, !taffo.info !130
  %idxprom = sext i32 %add12 to i64, !dbg !132, !taffo.info !130
  %arrayidx = getelementptr inbounds [1024 x float], [1024 x float]* %A, i64 0, i64 %idxprom, !dbg !132, !taffo.info !27
  store float %div, float* %arrayidx, align 4, !dbg !133, !taffo.info !65
  br label %for.inc, !dbg !132

for.inc:                                          ; preds = %for.body8
  %20 = load i32, i32* %j, align 4, !dbg !134, !taffo.info !37
  %inc = add nsw i32 %20, 1, !dbg !134, !taffo.info !135
  store i32 %inc, i32* %j, align 4, !dbg !134, !taffo.info !65
  br label %for.cond6, !dbg !137, !llvm.loop !138

for.end:                                          ; preds = %for.cond6
  br label %for.inc13, !dbg !139

for.inc13:                                        ; preds = %for.end
  %21 = load i32, i32* %i, align 4, !dbg !141, !taffo.info !37
  %inc14 = add nsw i32 %21, 1, !dbg !141, !taffo.info !135
  store i32 %inc14, i32* %i, align 4, !dbg !141, !taffo.info !65
  br label %for.cond, !dbg !142, !llvm.loop !143

for.end15:                                        ; preds = %for.cond
  br label %VITIS_LOOP_57_3, !dbg !144

VITIS_LOOP_57_3:                                  ; preds = %for.end15
  store i32 0, i32* %i, align 4, !dbg !146, !taffo.info !65
  br label %for.cond16, !dbg !148

for.cond16:                                       ; preds = %for.inc36, %VITIS_LOOP_57_3
  %22 = load i32, i32* %i, align 4, !dbg !149, !taffo.info !90
  %23 = load i32, i32* %nk, align 4, !dbg !151, !taffo.info !25
  %cmp17 = icmp slt i32 %22, %23, !dbg !152, !taffo.info !94
  br i1 %cmp17, label %for.body18, label %for.end38, !dbg !153, !taffo.info !65

for.body18:                                       ; preds = %for.cond16
  br label %VITIS_LOOP_58_4, !dbg !153

VITIS_LOOP_58_4:                                  ; preds = %for.body18
  store i32 0, i32* %j, align 4, !dbg !154, !taffo.info !65
  br label %for.cond19, !dbg !156

for.cond19:                                       ; preds = %for.inc33, %VITIS_LOOP_58_4
  %24 = load i32, i32* %j, align 4, !dbg !157, !taffo.info !90
  %25 = load i32, i32* %nj, align 4, !dbg !159, !taffo.info !25
  %cmp20 = icmp slt i32 %24, %25, !dbg !160, !taffo.info !94
  br i1 %cmp20, label %for.body21, label %for.end35, !dbg !161, !taffo.info !65

for.body21:                                       ; preds = %for.cond19
  %26 = load i32, i32* %i, align 4, !dbg !162, !taffo.info !90
  %27 = load i32, i32* %j, align 4, !dbg !163, !taffo.info !37
  %add22 = add nsw i32 %27, 1, !dbg !164, !taffo.info !135
  %mul23 = mul nsw i32 %26, %add22, !dbg !165, !taffo.info !166
  %28 = load i32, i32* %nj, align 4, !dbg !168, !taffo.info !25
  %rem24 = srem i32 %mul23, %28, !dbg !169, !taffo.info !46
  %conv25 = sitofp i32 %rem24 to float, !dbg !170, !taffo.info !171
  %mul26 = fmul float 3.000000e+00, %conv25, !dbg !173, !taffo.info !174
  %29 = load i32, i32* %nj, align 4, !dbg !176, !taffo.info !25
  %conv27 = sitofp i32 %29 to float, !dbg !176, !taffo.info !25
  %div28 = fdiv float %mul26, %conv27, !dbg !177, !taffo.info !30
  %30 = load i32, i32* %i, align 4, !dbg !178, !taffo.info !90
  %31 = load i32, i32* %nj, align 4, !dbg !179, !taffo.info !25
  %mul29 = mul nsw i32 %30, %31, !dbg !180, !taffo.info !181
  %32 = load i32, i32* %j, align 4, !dbg !183, !taffo.info !37
  %add30 = add nsw i32 %mul29, %32, !dbg !184, !taffo.info !185
  %idxprom31 = sext i32 %add30 to i64, !dbg !187, !taffo.info !185
  %arrayidx32 = getelementptr inbounds [1024 x float], [1024 x float]* %B, i64 0, i64 %idxprom31, !dbg !187, !taffo.info !30
  store float %div28, float* %arrayidx32, align 4, !dbg !188, !taffo.info !65
  br label %for.inc33, !dbg !187

for.inc33:                                        ; preds = %for.body21
  %33 = load i32, i32* %j, align 4, !dbg !189, !taffo.info !37
  %inc34 = add nsw i32 %33, 1, !dbg !189, !taffo.info !135
  store i32 %inc34, i32* %j, align 4, !dbg !189, !taffo.info !65
  br label %for.cond19, !dbg !190, !llvm.loop !191

for.end35:                                        ; preds = %for.cond19
  br label %for.inc36, !dbg !192

for.inc36:                                        ; preds = %for.end35
  %34 = load i32, i32* %i, align 4, !dbg !194, !taffo.info !37
  %inc37 = add nsw i32 %34, 1, !dbg !194, !taffo.info !135
  store i32 %inc37, i32* %i, align 4, !dbg !194, !taffo.info !65
  br label %for.cond16, !dbg !195, !llvm.loop !196

for.end38:                                        ; preds = %for.cond16
  br label %VITIS_LOOP_60_5, !dbg !197

VITIS_LOOP_60_5:                                  ; preds = %for.end38
  store i32 0, i32* %i, align 4, !dbg !199, !taffo.info !65
  br label %for.cond39, !dbg !201

for.cond39:                                       ; preds = %for.inc59, %VITIS_LOOP_60_5
  %35 = load i32, i32* %i, align 4, !dbg !202, !taffo.info !90
  %36 = load i32, i32* %ni, align 4, !dbg !204, !taffo.info !25
  %cmp40 = icmp slt i32 %35, %36, !dbg !205, !taffo.info !94
  br i1 %cmp40, label %for.body41, label %for.end61, !dbg !206, !taffo.info !65

for.body41:                                       ; preds = %for.cond39
  br label %VITIS_LOOP_61_6, !dbg !206

VITIS_LOOP_61_6:                                  ; preds = %for.body41
  store i32 0, i32* %j, align 4, !dbg !207, !taffo.info !65
  br label %for.cond42, !dbg !209

for.cond42:                                       ; preds = %for.inc56, %VITIS_LOOP_61_6
  %37 = load i32, i32* %j, align 4, !dbg !210, !taffo.info !90
  %38 = load i32, i32* %nl, align 4, !dbg !212, !taffo.info !25
  %cmp43 = icmp slt i32 %37, %38, !dbg !213, !taffo.info !94
  br i1 %cmp43, label %for.body44, label %for.end58, !dbg !214, !taffo.info !65

for.body44:                                       ; preds = %for.cond42
  %39 = load i32, i32* %i, align 4, !dbg !215, !taffo.info !90
  %40 = load i32, i32* %j, align 4, !dbg !216, !taffo.info !37
  %add45 = add nsw i32 %40, 2, !dbg !217, !taffo.info !218
  %mul46 = mul nsw i32 %39, %add45, !dbg !220, !taffo.info !221
  %41 = load i32, i32* %nk, align 4, !dbg !223, !taffo.info !25
  %rem47 = srem i32 %mul46, %41, !dbg !224, !taffo.info !46
  %conv48 = sitofp i32 %rem47 to float, !dbg !225, !taffo.info !116
  %mul49 = fmul float 5.000000e+00, %conv48, !dbg !226, !taffo.info !119
  %42 = load i32, i32* %nk, align 4, !dbg !227, !taffo.info !25
  %conv50 = sitofp i32 %42 to float, !dbg !227, !taffo.info !25
  %div51 = fdiv float %mul49, %conv50, !dbg !228, !taffo.info !27
  %43 = load i32, i32* %i, align 4, !dbg !229, !taffo.info !90
  %44 = load i32, i32* %nl, align 4, !dbg !230, !taffo.info !25
  %mul52 = mul nsw i32 %43, %44, !dbg !231, !taffo.info !181
  %45 = load i32, i32* %j, align 4, !dbg !232, !taffo.info !37
  %add53 = add nsw i32 %mul52, %45, !dbg !233, !taffo.info !185
  %idxprom54 = sext i32 %add53 to i64, !dbg !234, !taffo.info !185
  %arrayidx55 = getelementptr inbounds [1024 x float], [1024 x float]* %D, i64 0, i64 %idxprom54, !dbg !234, !taffo.info !235, !taffo.target !36
  store float %div51, float* %arrayidx55, align 4, !dbg !238, !taffo.info !65, !taffo.target !36
  br label %for.inc56, !dbg !234

for.inc56:                                        ; preds = %for.body44
  %46 = load i32, i32* %j, align 4, !dbg !239, !taffo.info !37
  %inc57 = add nsw i32 %46, 1, !dbg !239, !taffo.info !135
  store i32 %inc57, i32* %j, align 4, !dbg !239, !taffo.info !65
  br label %for.cond42, !dbg !240, !llvm.loop !241

for.end58:                                        ; preds = %for.cond42
  br label %for.inc59, !dbg !242

for.inc59:                                        ; preds = %for.end58
  %47 = load i32, i32* %i, align 4, !dbg !244, !taffo.info !37
  %inc60 = add nsw i32 %47, 1, !dbg !244, !taffo.info !135
  store i32 %inc60, i32* %i, align 4, !dbg !244, !taffo.info !65
  br label %for.cond39, !dbg !245, !llvm.loop !246

for.end61:                                        ; preds = %for.cond39
  call void @llvm.dbg.declare(metadata float* %alpha, metadata !249, metadata !DIExpression()), !dbg !250
  %alpha62 = bitcast float* %alpha to i8*, !dbg !251, !taffo.info !72
  store float 0x3FF3333340000000, float* %alpha, align 4, !dbg !250, !taffo.info !65
  call void @llvm.dbg.declare(metadata float* %beta, metadata !252, metadata !DIExpression()), !dbg !253
  %beta63 = bitcast float* %beta to i8*, !dbg !254, !taffo.info !72
  store float 1.500000e+00, float* %beta, align 4, !dbg !253, !taffo.info !65
  call void @llvm.dbg.declare(metadata float* %fg, metadata !255, metadata !DIExpression()), !dbg !256
  %fg64 = bitcast float* %fg to i8*, !dbg !257, !taffo.info !76
  %48 = load float, float* %gamma.addr, align 4, !dbg !258
  store float %48, float* %fg, align 4, !dbg !256, !taffo.info !65
  call void @llvm.dbg.declare(metadata [1024 x float]* %tmp, metadata !259, metadata !DIExpression()), !dbg !260
  %tmp65 = bitcast [1024 x float]* %tmp to i8*, !dbg !261, !taffo.info !76
  call void @llvm.dbg.declare(metadata float* %sum, metadata !262, metadata !DIExpression()), !dbg !263
  %sum66 = bitcast float* %sum to i8*, !dbg !264, !taffo.info !265
  store float 0.000000e+00, float* %sum, align 4, !dbg !263, !taffo.info !65
  call void @llvm.dbg.declare(metadata i32* %ii, metadata !266, metadata !DIExpression()), !dbg !267
  %ii67 = bitcast i32* %ii to i8*, !dbg !268, !taffo.info !46
  call void @llvm.dbg.declare(metadata i32* %jj, metadata !269, metadata !DIExpression()), !dbg !270
  %jj68 = bitcast i32* %jj to i8*, !dbg !271, !taffo.info !46
  call void @llvm.dbg.declare(metadata i32* %k, metadata !272, metadata !DIExpression()), !dbg !273
  %k69 = bitcast i32* %k to i8*, !dbg !274, !taffo.info !46
  call void @llvm.dbg.declare(metadata float* %z, metadata !275, metadata !DIExpression()), !dbg !276
  %z70 = bitcast float* %z to i8*, !dbg !277, !taffo.info !265
  br label %VITIS_LOOP_73_7, !dbg !277

VITIS_LOOP_73_7:                                  ; preds = %for.end61
  store i32 0, i32* %ii, align 4, !dbg !278, !taffo.info !65
  br label %for.cond71, !dbg !280

for.cond71:                                       ; preds = %for.inc136, %VITIS_LOOP_73_7
  %49 = load i32, i32* %ii, align 4, !dbg !281, !taffo.info !283
  %cmp72 = icmp slt i32 %49, 32, !dbg !285, !taffo.info !286
  br i1 %cmp72, label %for.body73, label %for.end138, !dbg !288, !taffo.info !65

for.body73:                                       ; preds = %for.cond71
  br label %VITIS_LOOP_75_8, !dbg !289

VITIS_LOOP_75_8:                                  ; preds = %for.body73
  store i32 0, i32* %jj, align 4, !dbg !290, !taffo.info !65
  br label %for.cond74, !dbg !293

for.cond74:                                       ; preds = %for.inc133, %VITIS_LOOP_75_8
  %50 = load i32, i32* %jj, align 4, !dbg !294, !taffo.info !283
  %cmp75 = icmp slt i32 %50, 32, !dbg !296, !taffo.info !286
  br i1 %cmp75, label %for.body76, label %for.end135, !dbg !297, !taffo.info !65

for.body76:                                       ; preds = %for.cond74
  %51 = load i32, i32* %ii, align 4, !dbg !298, !taffo.info !283
  %mul77 = mul nsw i32 %51, 32, !dbg !300, !taffo.info !301
  %52 = load i32, i32* %jj, align 4, !dbg !303, !taffo.info !46
  %add78 = add nsw i32 %mul77, %52, !dbg !304, !taffo.info !305
  %idxprom79 = sext i32 %add78 to i64, !dbg !307, !taffo.info !305
  %arrayidx80 = getelementptr inbounds [1024 x float], [1024 x float]* %tmp, i64 0, i64 %idxprom79, !dbg !307, !taffo.info !308
  store float 0.000000e+00, float* %arrayidx80, align 4, !dbg !311, !taffo.info !65
  br label %VITIS_LOOP_79_9, !dbg !307

VITIS_LOOP_79_9:                                  ; preds = %for.body76
  store i32 0, i32* %k, align 4, !dbg !312, !taffo.info !65
  br label %for.cond81, !dbg !314

for.cond81:                                       ; preds = %for.inc103, %VITIS_LOOP_79_9
  %53 = load i32, i32* %k, align 4, !dbg !315, !taffo.info !283
  %cmp82 = icmp slt i32 %53, 32, !dbg !317, !taffo.info !286
  br i1 %cmp82, label %for.body83, label %for.end105, !dbg !318, !taffo.info !65

for.body83:                                       ; preds = %for.cond81
  %54 = load i32, i32* %ii, align 4, !dbg !319, !taffo.info !283
  %mul84 = mul nsw i32 %54, 32, !dbg !321, !taffo.info !301
  %55 = load i32, i32* %k, align 4, !dbg !322, !taffo.info !46
  %add85 = add nsw i32 %mul84, %55, !dbg !323, !taffo.info !305
  %idxprom86 = sext i32 %add85 to i64, !dbg !324, !taffo.info !305
  %arrayidx87 = getelementptr inbounds [1024 x float], [1024 x float]* %A, i64 0, i64 %idxprom86, !dbg !324, !taffo.info !27
  %56 = load float, float* %arrayidx87, align 4, !dbg !324, !taffo.info !325
  %57 = load i32, i32* %k, align 4, !dbg !327, !taffo.info !46
  %mul88 = mul nsw i32 %57, 32, !dbg !328, !taffo.info !329
  %58 = load i32, i32* %jj, align 4, !dbg !331, !taffo.info !283
  %add89 = add nsw i32 %mul88, %58, !dbg !332, !taffo.info !333
  %idxprom90 = sext i32 %add89 to i64, !dbg !335, !taffo.info !333
  %arrayidx91 = getelementptr inbounds [1024 x float], [1024 x float]* %B, i64 0, i64 %idxprom90, !dbg !335, !taffo.info !30
  %59 = load float, float* %arrayidx91, align 4, !dbg !335, !taffo.info !325
  %mul92 = fmul float %56, %59, !dbg !336, !taffo.info !337
  %60 = load float, float* %alpha, align 4, !dbg !339, !taffo.info !39
  %mul93 = fmul float %mul92, %60, !dbg !340, !taffo.info !341
  store float %mul93, float* %z, align 4, !dbg !343, !taffo.info !65
  %61 = load i32, i32* %ii, align 4, !dbg !344, !taffo.info !283
  %mul94 = mul nsw i32 %61, 32, !dbg !345, !taffo.info !301
  %62 = load i32, i32* %jj, align 4, !dbg !346, !taffo.info !283
  %add95 = add nsw i32 %mul94, %62, !dbg !347, !taffo.info !348
  %idxprom96 = sext i32 %add95 to i64, !dbg !350, !taffo.info !348
  %arrayidx97 = getelementptr inbounds [1024 x float], [1024 x float]* %tmp, i64 0, i64 %idxprom96, !dbg !350, !taffo.info !308
  %63 = load float, float* %arrayidx97, align 4, !dbg !350, !taffo.info !308
  %64 = load float, float* %z, align 4, !dbg !351, !taffo.info !308
  %add98 = fadd float %63, %64, !dbg !352, !taffo.info !308
  %65 = load i32, i32* %ii, align 4, !dbg !353, !taffo.info !283
  %mul99 = mul nsw i32 %65, 32, !dbg !354, !taffo.info !301
  %66 = load i32, i32* %jj, align 4, !dbg !355, !taffo.info !283
  %add100 = add nsw i32 %mul99, %66, !dbg !356, !taffo.info !348
  %idxprom101 = sext i32 %add100 to i64, !dbg !357, !taffo.info !348
  %arrayidx102 = getelementptr inbounds [1024 x float], [1024 x float]* %tmp, i64 0, i64 %idxprom101, !dbg !357, !taffo.info !308
  store float %add98, float* %arrayidx102, align 4, !dbg !358, !taffo.info !65
  br label %for.inc103, !dbg !359

for.inc103:                                       ; preds = %for.body83
  %67 = load i32, i32* %k, align 4, !dbg !360, !taffo.info !46
  %inc104 = add nsw i32 %67, 1, !dbg !360, !taffo.info !361
  store i32 %inc104, i32* %k, align 4, !dbg !360, !taffo.info !65
  br label %for.cond81, !dbg !363, !llvm.loop !364

for.end105:                                       ; preds = %for.cond81
  %68 = load i32, i32* %ii, align 4, !dbg !367, !taffo.info !283
  %mul106 = mul nsw i32 %68, 32, !dbg !368, !taffo.info !301
  %69 = load i32, i32* %jj, align 4, !dbg !369, !taffo.info !46
  %add107 = add nsw i32 %mul106, %69, !dbg !370, !taffo.info !305
  %idxprom108 = sext i32 %add107 to i64, !dbg !371, !taffo.info !305
  %arrayidx109 = getelementptr inbounds [1024 x float], [1024 x float]* %D, i64 0, i64 %idxprom108, !dbg !371, !taffo.info !235, !taffo.target !36
  %70 = load float, float* %arrayidx109, align 4, !dbg !371, !taffo.info !235, !taffo.target !36
  %71 = load float, float* %beta, align 4, !dbg !372, !taffo.info !373
  %mul110 = fmul float %70, %71, !dbg !374, !taffo.info !235
  %72 = load i32, i32* %ii, align 4, !dbg !375, !taffo.info !283
  %mul111 = mul nsw i32 %72, 32, !dbg !376, !taffo.info !301
  %73 = load i32, i32* %jj, align 4, !dbg !377, !taffo.info !46
  %add112 = add nsw i32 %mul111, %73, !dbg !378, !taffo.info !305
  %idxprom113 = sext i32 %add112 to i64, !dbg !379, !taffo.info !305
  %arrayidx114 = getelementptr inbounds [1024 x float], [1024 x float]* %D, i64 0, i64 %idxprom113, !dbg !379, !taffo.info !235, !taffo.target !36
  store float %mul110, float* %arrayidx114, align 4, !dbg !380, !taffo.info !65, !taffo.target !36
  %74 = load i32, i32* %ii, align 4, !dbg !381, !taffo.info !283
  %mul115 = mul nsw i32 %74, 32, !dbg !382, !taffo.info !301
  %75 = load i32, i32* %jj, align 4, !dbg !383, !taffo.info !46
  %add116 = add nsw i32 %mul115, %75, !dbg !384, !taffo.info !305
  %idxprom117 = sext i32 %add116 to i64, !dbg !385, !taffo.info !305
  %arrayidx118 = getelementptr inbounds [1024 x float], [1024 x float]* %D, i64 0, i64 %idxprom117, !dbg !385, !taffo.info !235, !taffo.target !36
  %76 = load float, float* %arrayidx118, align 4, !dbg !385, !taffo.info !235, !taffo.target !36
  %77 = load i32, i32* %ii, align 4, !dbg !386, !taffo.info !283
  %mul119 = mul nsw i32 %77, 32, !dbg !387, !taffo.info !301
  %78 = load i32, i32* %jj, align 4, !dbg !388, !taffo.info !46
  %add120 = add nsw i32 %mul119, %78, !dbg !389, !taffo.info !305
  %idxprom121 = sext i32 %add120 to i64, !dbg !390, !taffo.info !305
  %arrayidx122 = getelementptr inbounds [1024 x float], [1024 x float]* %tmp, i64 0, i64 %idxprom121, !dbg !390, !taffo.info !308
  %79 = load float, float* %arrayidx122, align 4, !dbg !390, !taffo.info !308
  %add123 = fadd float %76, %79, !dbg !391, !taffo.info !235, !taffo.target !36
  %80 = load i32, i32* %ii, align 4, !dbg !392, !taffo.info !283
  %mul124 = mul nsw i32 %80, 32, !dbg !393, !taffo.info !301
  %81 = load i32, i32* %jj, align 4, !dbg !394, !taffo.info !46
  %add125 = add nsw i32 %mul124, %81, !dbg !395, !taffo.info !305
  %idxprom126 = sext i32 %add125 to i64, !dbg !396, !taffo.info !305
  %arrayidx127 = getelementptr inbounds [1024 x float], [1024 x float]* %D, i64 0, i64 %idxprom126, !dbg !396, !taffo.info !235, !taffo.target !36
  store float %add123, float* %arrayidx127, align 4, !dbg !397, !taffo.info !65, !taffo.target !36
  %82 = load i32, i32* %ii, align 4, !dbg !398, !taffo.info !283
  %mul128 = mul nsw i32 %82, 32, !dbg !399, !taffo.info !301
  %83 = load i32, i32* %jj, align 4, !dbg !400, !taffo.info !46
  %add129 = add nsw i32 %mul128, %83, !dbg !401, !taffo.info !305
  %idxprom130 = sext i32 %add129 to i64, !dbg !402, !taffo.info !305
  %arrayidx131 = getelementptr inbounds [1024 x float], [1024 x float]* %D, i64 0, i64 %idxprom130, !dbg !402, !taffo.info !235, !taffo.target !36
  %84 = load float, float* %arrayidx131, align 4, !dbg !402, !taffo.info !235, !taffo.target !36
  %85 = load float, float* %sum, align 4, !dbg !403, !taffo.info !43
  %add132 = fadd float %85, %84, !dbg !403, !taffo.info !404
  store float %add132, float* %sum, align 4, !dbg !403, !taffo.info !65
  br label %for.inc133, !dbg !406

for.inc133:                                       ; preds = %for.end105
  %86 = load i32, i32* %jj, align 4, !dbg !407, !taffo.info !46
  %inc134 = add nsw i32 %86, 1, !dbg !407, !taffo.info !361
  store i32 %inc134, i32* %jj, align 4, !dbg !407, !taffo.info !65
  br label %for.cond74, !dbg !408, !llvm.loop !409

for.end135:                                       ; preds = %for.cond74
  br label %for.inc136, !dbg !414

for.inc136:                                       ; preds = %for.end135
  %87 = load i32, i32* %ii, align 4, !dbg !415, !taffo.info !46
  %inc137 = add nsw i32 %87, 1, !dbg !415, !taffo.info !361
  store i32 %inc137, i32* %ii, align 4, !dbg !415, !taffo.info !65
  br label %for.cond71, !dbg !416, !llvm.loop !417

for.end138:                                       ; preds = %for.cond71
  %88 = load float, float* %sum, align 4, !dbg !420, !taffo.info !43
  %89 = load float, float* %gamma.addr, align 4, !dbg !421
  %mul139 = fmul float %88, %89, !dbg !422, !taffo.info !265
  %90 = bitcast i32* %j to i8*, !dbg !423, !taffo.info !37
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %90) #3, !dbg !423, !taffo.info !65
  %91 = bitcast i32* %i to i8*, !dbg !423, !taffo.info !37
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %91) #3, !dbg !423, !taffo.info !65
  %92 = bitcast [1024 x float]* %D to i8*, !dbg !423, !taffo.info !76, !taffo.target !36
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* %92) #3, !dbg !423, !taffo.info !65, !taffo.target !36
  %93 = bitcast [1024 x float]* %B to i8*, !dbg !423, !taffo.info !72
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* %93) #3, !dbg !423, !taffo.info !65
  %94 = bitcast [1024 x float]* %A to i8*, !dbg !423, !taffo.info !64
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* %94) #3, !dbg !423, !taffo.info !65
  %95 = bitcast i32* %nl to i8*, !dbg !423, !taffo.info !25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %95) #3, !dbg !423
  %96 = bitcast i32* %nk to i8*, !dbg !423, !taffo.info !25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %96) #3, !dbg !423
  %97 = bitcast i32* %nj to i8*, !dbg !423, !taffo.info !25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %97) #3, !dbg !423
  %98 = bitcast i32* %ni to i8*, !dbg !423, !taffo.info !25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %98) #3, !dbg !423
  ret float %mul139, !dbg !424, !taffo.info !65
}

; Function Attrs: nounwind readnone speculatable
declare !taffo.funinfo !425 void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare !taffo.funinfo !426 void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare !taffo.funinfo !427 void @llvm.var.annotation(i8*, i8*, i8*, i32) #3

; Function Attrs: argmemonly nounwind
declare !taffo.funinfo !426 void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

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
!27 = !{!28, !29, i1 false, i1 true}
!28 = !{!"fixp", i32 32, i32 29}
!29 = !{double 0.000000e+00, double 5.000000e+00}
!30 = !{!31, !32, i1 false, i1 true}
!31 = !{!"fixp", i32 32, i32 30}
!32 = !{double 0.000000e+00, double 3.000000e+00}
!33 = !{!34, !35, i1 false, i1 true}
!34 = !{!"fixp", i32 -32, i32 26}
!35 = !{double -1.600000e+01, double 1.600000e+01}
!36 = !{!"D"}
!37 = !{i1 false, !38, i1 false, i1 true}
!38 = !{double 0.000000e+00, double 1.600000e+01}
!39 = !{!31, !40, i1 false, i1 true}
!40 = !{double 0x3FF3333340000000, double 0x3FF3333340000000}
!41 = !{!31, !42, i1 false, i1 true}
!42 = !{double 1.500000e+00, double 1.500000e+00}
!43 = !{!44, !45, i1 false, i1 true}
!44 = !{!"fixp", i32 -32, i32 24}
!45 = !{double -1.000000e+02, double 1.000000e+02}
!46 = !{i1 false, !47, i1 false, i1 true}
!47 = !{double 0.000000e+00, double 3.200000e+01}
!48 = !DILocalVariable(name: "gamma", arg: 1, scope: !16, file: !17, line: 42, type: !11)
!49 = !DILocation(line: 42, column: 53, scope: !16)
!50 = !DILocation(line: 44, column: 5, scope: !16)
!51 = !DILocalVariable(name: "ni", scope: !16, file: !17, line: 44, type: !52)
!52 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!53 = !DILocation(line: 44, column: 9, scope: !16)
!54 = !DILocation(line: 45, column: 5, scope: !16)
!55 = !DILocalVariable(name: "nj", scope: !16, file: !17, line: 45, type: !52)
!56 = !DILocation(line: 45, column: 9, scope: !16)
!57 = !DILocation(line: 46, column: 5, scope: !16)
!58 = !DILocalVariable(name: "nk", scope: !16, file: !17, line: 46, type: !52)
!59 = !DILocation(line: 46, column: 9, scope: !16)
!60 = !DILocation(line: 47, column: 5, scope: !16)
!61 = !DILocalVariable(name: "nl", scope: !16, file: !17, line: 47, type: !52)
!62 = !DILocation(line: 47, column: 9, scope: !16)
!63 = !DILocation(line: 49, column: 5, scope: !16)
!64 = !{!28, i1 false, i1 false, i1 true}
!65 = !{i1 false, i1 false, i1 false, i1 true}
!66 = !DILocalVariable(name: "A", scope: !16, file: !17, line: 49, type: !67)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 32768, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 1024)
!70 = !DILocation(line: 49, column: 11, scope: !16)
!71 = !DILocation(line: 50, column: 5, scope: !16)
!72 = !{!31, i1 false, i1 false, i1 true}
!73 = !DILocalVariable(name: "B", scope: !16, file: !17, line: 50, type: !67)
!74 = !DILocation(line: 50, column: 11, scope: !16)
!75 = !DILocation(line: 51, column: 5, scope: !16)
!76 = !{!34, i1 false, i1 false, i1 true}
!77 = !DILocalVariable(name: "D", scope: !16, file: !17, line: 51, type: !67)
!78 = !DILocation(line: 51, column: 11, scope: !16)
!79 = !DILocation(line: 52, column: 5, scope: !16)
!80 = !DILocalVariable(name: "i", scope: !16, file: !17, line: 52, type: !52)
!81 = !DILocation(line: 52, column: 9, scope: !16)
!82 = !DILocation(line: 53, column: 5, scope: !16)
!83 = !DILocalVariable(name: "j", scope: !16, file: !17, line: 53, type: !52)
!84 = !DILocation(line: 53, column: 9, scope: !16)
!85 = !DILocation(line: 54, column: 29, scope: !86)
!86 = distinct !DILexicalBlock(scope: !16, file: !17, line: 54, column: 22)
!87 = !DILocation(line: 54, column: 27, scope: !86)
!88 = !DILocation(line: 54, column: 34, scope: !89)
!89 = distinct !DILexicalBlock(scope: !86, file: !17, line: 54, column: 22)
!90 = !{i1 false, !91, i1 false, i1 true}
!91 = !{double 0.000000e+00, double 1.700000e+01}
!92 = !DILocation(line: 54, column: 38, scope: !89)
!93 = !DILocation(line: 54, column: 36, scope: !89)
!94 = !{i1 false, !95, i1 false, i1 true}
!95 = !{double 1.000000e+00, double 1.000000e+00}
!96 = !DILocation(line: 54, column: 22, scope: !86)
!97 = !DILocation(line: 55, column: 33, scope: !98)
!98 = distinct !DILexicalBlock(scope: !89, file: !17, line: 55, column: 26)
!99 = !DILocation(line: 55, column: 31, scope: !98)
!100 = !DILocation(line: 55, column: 38, scope: !101)
!101 = distinct !DILexicalBlock(scope: !98, file: !17, line: 55, column: 26)
!102 = !DILocation(line: 55, column: 42, scope: !101)
!103 = !DILocation(line: 55, column: 40, scope: !101)
!104 = !DILocation(line: 55, column: 26, scope: !98)
!105 = !DILocation(line: 56, column: 39, scope: !101)
!106 = !DILocation(line: 56, column: 41, scope: !101)
!107 = !DILocation(line: 56, column: 40, scope: !101)
!108 = !{i1 false, !109, i1 false, i1 true}
!109 = !{double 0.000000e+00, double 2.560000e+02}
!110 = !DILocation(line: 56, column: 42, scope: !101)
!111 = !{i1 false, !112, i1 false, i1 true}
!112 = !{double 1.000000e+00, double 2.570000e+02}
!113 = !DILocation(line: 56, column: 48, scope: !101)
!114 = !DILocation(line: 56, column: 46, scope: !101)
!115 = !DILocation(line: 56, column: 37, scope: !101)
!116 = !{!117, !47, i1 false, i1 true}
!117 = !{!"fixp", i32 32, i32 24}
!118 = !DILocation(line: 56, column: 35, scope: !101)
!119 = !{!117, !120, i1 false, i1 true}
!120 = !{double 0.000000e+00, double 1.600000e+02}
!121 = !DILocation(line: 56, column: 54, scope: !101)
!122 = !DILocation(line: 56, column: 52, scope: !101)
!123 = !DILocation(line: 56, column: 15, scope: !101)
!124 = !DILocation(line: 56, column: 17, scope: !101)
!125 = !DILocation(line: 56, column: 16, scope: !101)
!126 = !{i1 false, !127, i1 false, i1 true}
!127 = !{double 0.000000e+00, double 5.120000e+02}
!128 = !DILocation(line: 56, column: 20, scope: !101)
!129 = !DILocation(line: 56, column: 19, scope: !101)
!130 = !{i1 false, !131, i1 false, i1 true}
!131 = !{double 0.000000e+00, double 5.280000e+02}
!132 = !DILocation(line: 56, column: 13, scope: !101)
!133 = !DILocation(line: 56, column: 23, scope: !101)
!134 = !DILocation(line: 55, column: 47, scope: !101)
!135 = !{i1 false, !136, i1 false, i1 true}
!136 = !{double 1.000000e+00, double 1.700000e+01}
!137 = !DILocation(line: 55, column: 26, scope: !101)
!138 = distinct !{!138, !104, !139, !140}
!139 = !DILocation(line: 56, column: 54, scope: !98)
!140 = !{!"llvm.loop.name", !"VITIS_LOOP_55_2"}
!141 = !DILocation(line: 54, column: 43, scope: !89)
!142 = !DILocation(line: 54, column: 22, scope: !89)
!143 = distinct !{!143, !96, !144, !145}
!144 = !DILocation(line: 56, column: 54, scope: !86)
!145 = !{!"llvm.loop.name", !"VITIS_LOOP_54_1"}
!146 = !DILocation(line: 57, column: 29, scope: !147)
!147 = distinct !DILexicalBlock(scope: !16, file: !17, line: 57, column: 22)
!148 = !DILocation(line: 57, column: 27, scope: !147)
!149 = !DILocation(line: 57, column: 34, scope: !150)
!150 = distinct !DILexicalBlock(scope: !147, file: !17, line: 57, column: 22)
!151 = !DILocation(line: 57, column: 38, scope: !150)
!152 = !DILocation(line: 57, column: 36, scope: !150)
!153 = !DILocation(line: 57, column: 22, scope: !147)
!154 = !DILocation(line: 58, column: 33, scope: !155)
!155 = distinct !DILexicalBlock(scope: !150, file: !17, line: 58, column: 26)
!156 = !DILocation(line: 58, column: 31, scope: !155)
!157 = !DILocation(line: 58, column: 38, scope: !158)
!158 = distinct !DILexicalBlock(scope: !155, file: !17, line: 58, column: 26)
!159 = !DILocation(line: 58, column: 42, scope: !158)
!160 = !DILocation(line: 58, column: 40, scope: !158)
!161 = !DILocation(line: 58, column: 26, scope: !155)
!162 = !DILocation(line: 59, column: 38, scope: !158)
!163 = !DILocation(line: 59, column: 41, scope: !158)
!164 = !DILocation(line: 59, column: 42, scope: !158)
!165 = !DILocation(line: 59, column: 39, scope: !158)
!166 = !{i1 false, !167, i1 false, i1 true}
!167 = !{double 0.000000e+00, double 2.890000e+02}
!168 = !DILocation(line: 59, column: 48, scope: !158)
!169 = !DILocation(line: 59, column: 46, scope: !158)
!170 = !DILocation(line: 59, column: 37, scope: !158)
!171 = !{!172, !47, i1 false, i1 true}
!172 = !{!"fixp", i32 32, i32 25}
!173 = !DILocation(line: 59, column: 35, scope: !158)
!174 = !{!172, !175, i1 false, i1 true}
!175 = !{double 0.000000e+00, double 9.600000e+01}
!176 = !DILocation(line: 59, column: 54, scope: !158)
!177 = !DILocation(line: 59, column: 52, scope: !158)
!178 = !DILocation(line: 59, column: 15, scope: !158)
!179 = !DILocation(line: 59, column: 17, scope: !158)
!180 = !DILocation(line: 59, column: 16, scope: !158)
!181 = !{i1 false, !182, i1 false, i1 true}
!182 = !{double 0.000000e+00, double 5.440000e+02}
!183 = !DILocation(line: 59, column: 20, scope: !158)
!184 = !DILocation(line: 59, column: 19, scope: !158)
!185 = !{i1 false, !186, i1 false, i1 true}
!186 = !{double 0.000000e+00, double 5.600000e+02}
!187 = !DILocation(line: 59, column: 13, scope: !158)
!188 = !DILocation(line: 59, column: 23, scope: !158)
!189 = !DILocation(line: 58, column: 47, scope: !158)
!190 = !DILocation(line: 58, column: 26, scope: !158)
!191 = distinct !{!191, !161, !192, !193}
!192 = !DILocation(line: 59, column: 54, scope: !155)
!193 = !{!"llvm.loop.name", !"VITIS_LOOP_58_4"}
!194 = !DILocation(line: 57, column: 43, scope: !150)
!195 = !DILocation(line: 57, column: 22, scope: !150)
!196 = distinct !{!196, !153, !197, !198}
!197 = !DILocation(line: 59, column: 54, scope: !147)
!198 = !{!"llvm.loop.name", !"VITIS_LOOP_57_3"}
!199 = !DILocation(line: 60, column: 29, scope: !200)
!200 = distinct !DILexicalBlock(scope: !16, file: !17, line: 60, column: 22)
!201 = !DILocation(line: 60, column: 27, scope: !200)
!202 = !DILocation(line: 60, column: 34, scope: !203)
!203 = distinct !DILexicalBlock(scope: !200, file: !17, line: 60, column: 22)
!204 = !DILocation(line: 60, column: 38, scope: !203)
!205 = !DILocation(line: 60, column: 36, scope: !203)
!206 = !DILocation(line: 60, column: 22, scope: !200)
!207 = !DILocation(line: 61, column: 33, scope: !208)
!208 = distinct !DILexicalBlock(scope: !203, file: !17, line: 61, column: 26)
!209 = !DILocation(line: 61, column: 31, scope: !208)
!210 = !DILocation(line: 61, column: 38, scope: !211)
!211 = distinct !DILexicalBlock(scope: !208, file: !17, line: 61, column: 26)
!212 = !DILocation(line: 61, column: 42, scope: !211)
!213 = !DILocation(line: 61, column: 40, scope: !211)
!214 = !DILocation(line: 61, column: 26, scope: !208)
!215 = !DILocation(line: 62, column: 38, scope: !211)
!216 = !DILocation(line: 62, column: 41, scope: !211)
!217 = !DILocation(line: 62, column: 42, scope: !211)
!218 = !{i1 false, !219, i1 false, i1 true}
!219 = !{double 2.000000e+00, double 1.800000e+01}
!220 = !DILocation(line: 62, column: 39, scope: !211)
!221 = !{i1 false, !222, i1 false, i1 true}
!222 = !{double 0.000000e+00, double 3.060000e+02}
!223 = !DILocation(line: 62, column: 48, scope: !211)
!224 = !DILocation(line: 62, column: 46, scope: !211)
!225 = !DILocation(line: 62, column: 37, scope: !211)
!226 = !DILocation(line: 62, column: 35, scope: !211)
!227 = !DILocation(line: 62, column: 54, scope: !211)
!228 = !DILocation(line: 62, column: 52, scope: !211)
!229 = !DILocation(line: 62, column: 15, scope: !211)
!230 = !DILocation(line: 62, column: 17, scope: !211)
!231 = !DILocation(line: 62, column: 16, scope: !211)
!232 = !DILocation(line: 62, column: 20, scope: !211)
!233 = !DILocation(line: 62, column: 19, scope: !211)
!234 = !DILocation(line: 62, column: 13, scope: !211)
!235 = !{!236, !237, i1 false, i1 true}
!236 = !{!"fixp", i32 32, i32 28}
!237 = !{double 0.000000e+00, double 7.500000e+00}
!238 = !DILocation(line: 62, column: 23, scope: !211)
!239 = !DILocation(line: 61, column: 47, scope: !211)
!240 = !DILocation(line: 61, column: 26, scope: !211)
!241 = distinct !{!241, !214, !242, !243}
!242 = !DILocation(line: 62, column: 54, scope: !208)
!243 = !{!"llvm.loop.name", !"VITIS_LOOP_61_6"}
!244 = !DILocation(line: 60, column: 43, scope: !203)
!245 = !DILocation(line: 60, column: 22, scope: !203)
!246 = distinct !{!246, !206, !247, !248}
!247 = !DILocation(line: 62, column: 54, scope: !200)
!248 = !{!"llvm.loop.name", !"VITIS_LOOP_60_5"}
!249 = !DILocalVariable(name: "alpha", scope: !16, file: !17, line: 63, type: !11)
!250 = !DILocation(line: 63, column: 49, scope: !16)
!251 = !DILocation(line: 63, column: 5, scope: !16)
!252 = !DILocalVariable(name: "beta", scope: !16, file: !17, line: 64, type: !11)
!253 = !DILocation(line: 64, column: 49, scope: !16)
!254 = !DILocation(line: 64, column: 5, scope: !16)
!255 = !DILocalVariable(name: "fg", scope: !16, file: !17, line: 65, type: !11)
!256 = !DILocation(line: 65, column: 63, scope: !16)
!257 = !DILocation(line: 65, column: 5, scope: !16)
!258 = !DILocation(line: 65, column: 68, scope: !16)
!259 = !DILocalVariable(name: "tmp", scope: !16, file: !17, line: 66, type: !67)
!260 = !DILocation(line: 66, column: 11, scope: !16)
!261 = !DILocation(line: 66, column: 5, scope: !16)
!262 = !DILocalVariable(name: "sum", scope: !16, file: !17, line: 67, type: !11)
!263 = !DILocation(line: 67, column: 65, scope: !16)
!264 = !DILocation(line: 67, column: 5, scope: !16)
!265 = !{!44, i1 false, i1 false, i1 true}
!266 = !DILocalVariable(name: "ii", scope: !16, file: !17, line: 69, type: !52)
!267 = !DILocation(line: 69, column: 9, scope: !16)
!268 = !DILocation(line: 69, column: 5, scope: !16)
!269 = !DILocalVariable(name: "jj", scope: !16, file: !17, line: 70, type: !52)
!270 = !DILocation(line: 70, column: 9, scope: !16)
!271 = !DILocation(line: 70, column: 5, scope: !16)
!272 = !DILocalVariable(name: "k", scope: !16, file: !17, line: 71, type: !52)
!273 = !DILocation(line: 71, column: 9, scope: !16)
!274 = !DILocation(line: 71, column: 5, scope: !16)
!275 = !DILocalVariable(name: "z", scope: !16, file: !17, line: 72, type: !11)
!276 = !DILocation(line: 72, column: 11, scope: !16)
!277 = !DILocation(line: 72, column: 5, scope: !16)
!278 = !DILocation(line: 73, column: 30, scope: !279)
!279 = distinct !DILexicalBlock(scope: !16, file: !17, line: 73, column: 22)
!280 = !DILocation(line: 73, column: 27, scope: !279)
!281 = !DILocation(line: 73, column: 35, scope: !282)
!282 = distinct !DILexicalBlock(scope: !279, file: !17, line: 73, column: 22)
!283 = !{i1 false, !284, i1 false, i1 true}
!284 = !{double 0.000000e+00, double 3.300000e+01}
!285 = !DILocation(line: 73, column: 38, scope: !282)
!286 = !{i1 false, !287, i1 false, i1 true}
!287 = !{double 0.000000e+00, double 1.000000e+00}
!288 = !DILocation(line: 73, column: 22, scope: !279)
!289 = !DILocation(line: 74, column: 5, scope: !282)
!290 = !DILocation(line: 75, column: 34, scope: !291)
!291 = distinct !DILexicalBlock(scope: !292, file: !17, line: 75, column: 26)
!292 = distinct !DILexicalBlock(scope: !282, file: !17, line: 74, column: 5)
!293 = !DILocation(line: 75, column: 31, scope: !291)
!294 = !DILocation(line: 75, column: 39, scope: !295)
!295 = distinct !DILexicalBlock(scope: !291, file: !17, line: 75, column: 26)
!296 = !DILocation(line: 75, column: 42, scope: !295)
!297 = !DILocation(line: 75, column: 26, scope: !291)
!298 = !DILocation(line: 78, column: 6, scope: !299)
!299 = distinct !DILexicalBlock(scope: !295, file: !17, line: 76, column: 9)
!300 = !DILocation(line: 78, column: 8, scope: !299)
!301 = !{i1 false, !302, i1 false, i1 true}
!302 = !{double 0.000000e+00, double 1.056000e+03}
!303 = !DILocation(line: 78, column: 13, scope: !299)
!304 = !DILocation(line: 78, column: 12, scope: !299)
!305 = !{i1 false, !306, i1 false, i1 true}
!306 = !{double 0.000000e+00, double 1.088000e+03}
!307 = !DILocation(line: 78, column: 2, scope: !299)
!308 = !{!309, !310, i1 false, i1 true}
!309 = !{!"fixp", i32 -32, i32 22}
!310 = !{double -1.000000e+02, double 0x4075ACCCDB400000}
!311 = !DILocation(line: 78, column: 17, scope: !299)
!312 = !DILocation(line: 79, column: 37, scope: !313)
!313 = distinct !DILexicalBlock(scope: !299, file: !17, line: 79, column: 30)
!314 = !DILocation(line: 79, column: 35, scope: !313)
!315 = !DILocation(line: 79, column: 42, scope: !316)
!316 = distinct !DILexicalBlock(scope: !313, file: !17, line: 79, column: 30)
!317 = !DILocation(line: 79, column: 44, scope: !316)
!318 = !DILocation(line: 79, column: 30, scope: !313)
!319 = !DILocation(line: 80, column: 23, scope: !320)
!320 = distinct !DILexicalBlock(scope: !316, file: !17, line: 79, column: 54)
!321 = !DILocation(line: 80, column: 25, scope: !320)
!322 = !DILocation(line: 80, column: 30, scope: !320)
!323 = !DILocation(line: 80, column: 29, scope: !320)
!324 = !DILocation(line: 80, column: 21, scope: !320)
!325 = !{!326, !91, i1 false, i1 true}
!326 = !{!"fixp", i32 32, i32 27}
!327 = !DILocation(line: 80, column: 37, scope: !320)
!328 = !DILocation(line: 80, column: 38, scope: !320)
!329 = !{i1 false, !330, i1 false, i1 true}
!330 = !{double 0.000000e+00, double 1.024000e+03}
!331 = !DILocation(line: 80, column: 43, scope: !320)
!332 = !DILocation(line: 80, column: 42, scope: !320)
!333 = !{i1 false, !334, i1 false, i1 true}
!334 = !{double 0.000000e+00, double 1.057000e+03}
!335 = !DILocation(line: 80, column: 35, scope: !320)
!336 = !DILocation(line: 80, column: 33, scope: !320)
!337 = !{!338, !167, i1 false, i1 true}
!338 = !{!"fixp", i32 32, i32 23}
!339 = !DILocation(line: 80, column: 49, scope: !320)
!340 = !DILocation(line: 80, column: 47, scope: !320)
!341 = !{!338, !342, i1 false, i1 true}
!342 = !{double 0.000000e+00, double 0x4075ACCCDB400000}
!343 = !DILocation(line: 80, column: 19, scope: !320)
!344 = !DILocation(line: 81, column: 38, scope: !320)
!345 = !DILocation(line: 81, column: 40, scope: !320)
!346 = !DILocation(line: 81, column: 45, scope: !320)
!347 = !DILocation(line: 81, column: 44, scope: !320)
!348 = !{i1 false, !349, i1 false, i1 true}
!349 = !{double 0.000000e+00, double 1.089000e+03}
!350 = !DILocation(line: 81, column: 34, scope: !320)
!351 = !DILocation(line: 81, column: 51, scope: !320)
!352 = !DILocation(line: 81, column: 49, scope: !320)
!353 = !DILocation(line: 81, column: 21, scope: !320)
!354 = !DILocation(line: 81, column: 23, scope: !320)
!355 = !DILocation(line: 81, column: 28, scope: !320)
!356 = !DILocation(line: 81, column: 27, scope: !320)
!357 = !DILocation(line: 81, column: 17, scope: !320)
!358 = !DILocation(line: 81, column: 32, scope: !320)
!359 = !DILocation(line: 82, column: 13, scope: !320)
!360 = !DILocation(line: 79, column: 51, scope: !316)
!361 = !{i1 false, !362, i1 false, i1 true}
!362 = !{double 1.000000e+00, double 3.300000e+01}
!363 = !DILocation(line: 79, column: 30, scope: !316)
!364 = distinct !{!364, !318, !365, !366}
!365 = !DILocation(line: 82, column: 13, scope: !313)
!366 = !{!"llvm.loop.name", !"VITIS_LOOP_79_9"}
!367 = !DILocation(line: 83, column: 35, scope: !299)
!368 = !DILocation(line: 83, column: 37, scope: !299)
!369 = !DILocation(line: 83, column: 42, scope: !299)
!370 = !DILocation(line: 83, column: 41, scope: !299)
!371 = !DILocation(line: 83, column: 33, scope: !299)
!372 = !DILocation(line: 83, column: 48, scope: !299)
!373 = !{!236, !42, i1 false, i1 true}
!374 = !DILocation(line: 83, column: 46, scope: !299)
!375 = !DILocation(line: 83, column: 20, scope: !299)
!376 = !DILocation(line: 83, column: 22, scope: !299)
!377 = !DILocation(line: 83, column: 27, scope: !299)
!378 = !DILocation(line: 83, column: 26, scope: !299)
!379 = !DILocation(line: 83, column: 18, scope: !299)
!380 = !DILocation(line: 83, column: 31, scope: !299)
!381 = !DILocation(line: 84, column: 35, scope: !299)
!382 = !DILocation(line: 84, column: 37, scope: !299)
!383 = !DILocation(line: 84, column: 42, scope: !299)
!384 = !DILocation(line: 84, column: 41, scope: !299)
!385 = !DILocation(line: 84, column: 33, scope: !299)
!386 = !DILocation(line: 84, column: 52, scope: !299)
!387 = !DILocation(line: 84, column: 54, scope: !299)
!388 = !DILocation(line: 84, column: 59, scope: !299)
!389 = !DILocation(line: 84, column: 58, scope: !299)
!390 = !DILocation(line: 84, column: 48, scope: !299)
!391 = !DILocation(line: 84, column: 46, scope: !299)
!392 = !DILocation(line: 84, column: 20, scope: !299)
!393 = !DILocation(line: 84, column: 22, scope: !299)
!394 = !DILocation(line: 84, column: 27, scope: !299)
!395 = !DILocation(line: 84, column: 26, scope: !299)
!396 = !DILocation(line: 84, column: 18, scope: !299)
!397 = !DILocation(line: 84, column: 31, scope: !299)
!398 = !DILocation(line: 85, column: 27, scope: !299)
!399 = !DILocation(line: 85, column: 29, scope: !299)
!400 = !DILocation(line: 85, column: 34, scope: !299)
!401 = !DILocation(line: 85, column: 33, scope: !299)
!402 = !DILocation(line: 85, column: 25, scope: !299)
!403 = !DILocation(line: 85, column: 22, scope: !299)
!404 = !{!44, !405, i1 false, i1 true}
!405 = !{double -1.000000e+02, double 1.075000e+02}
!406 = !DILocation(line: 86, column: 9, scope: !299)
!407 = !DILocation(line: 75, column: 50, scope: !295)
!408 = !DILocation(line: 75, column: 26, scope: !295)
!409 = distinct !{!409, !297, !410, !411, !413}
!410 = !DILocation(line: 86, column: 9, scope: !291)
!411 = !{!"llvm.loop.pipeline.enable", i32 1, i1 false, i8 -1, !"user", !412}
!412 = !DILocation(line: 77, column: 9, scope: !291)
!413 = !{!"llvm.loop.name", !"VITIS_LOOP_75_8"}
!414 = !DILocation(line: 87, column: 5, scope: !292)
!415 = !DILocation(line: 73, column: 46, scope: !282)
!416 = !DILocation(line: 73, column: 22, scope: !282)
!417 = distinct !{!417, !288, !418, !419}
!418 = !DILocation(line: 87, column: 5, scope: !279)
!419 = !{!"llvm.loop.name", !"VITIS_LOOP_73_7"}
!420 = !DILocation(line: 92, column: 12, scope: !16)
!421 = !DILocation(line: 92, column: 18, scope: !16)
!422 = !DILocation(line: 92, column: 16, scope: !16)
!423 = !DILocation(line: 93, column: 1, scope: !16)
!424 = !DILocation(line: 92, column: 5, scope: !16)
!425 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!426 = !{i32 0, i1 false, i32 0, i1 false}
!427 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
