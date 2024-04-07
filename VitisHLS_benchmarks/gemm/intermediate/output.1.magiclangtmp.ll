; ModuleID = '/home/bruno/Desktop/benchmarks/gemm/proj_gemm/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
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
define float @mm(float %gamma) #0 !dbg !9 !fpga.function.pragma !13 {
entry:
  %gamma.addr = alloca float, align 4
  %ni = alloca i32, align 4
  %nj = alloca i32, align 4
  %nk = alloca i32, align 4
  %nl = alloca i32, align 4
  %A = alloca [1024 x float], align 4
  %B = alloca [1024 x float], align 4
  %D = alloca [1024 x float], align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %alpha = alloca float, align 4
  %beta = alloca float, align 4
  %fg = alloca float, align 4
  %tmp = alloca [1024 x float], align 4
  %sum = alloca float, align 4
  %ii = alloca i32, align 4
  %jj = alloca i32, align 4
  %k = alloca i32, align 4
  %z = alloca float, align 4
  store float %gamma, float* %gamma.addr, align 4
  call void @llvm.dbg.declare(metadata float* %gamma.addr, metadata !16, metadata !DIExpression()), !dbg !17
  %0 = bitcast i32* %ni to i8*, !dbg !18
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #3, !dbg !18
  call void @llvm.dbg.declare(metadata i32* %ni, metadata !19, metadata !DIExpression()), !dbg !21
  store i32 32, i32* %ni, align 4, !dbg !21
  %1 = bitcast i32* %nj to i8*, !dbg !22
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #3, !dbg !22
  call void @llvm.dbg.declare(metadata i32* %nj, metadata !23, metadata !DIExpression()), !dbg !24
  store i32 32, i32* %nj, align 4, !dbg !24
  %2 = bitcast i32* %nk to i8*, !dbg !25
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #3, !dbg !25
  call void @llvm.dbg.declare(metadata i32* %nk, metadata !26, metadata !DIExpression()), !dbg !27
  store i32 32, i32* %nk, align 4, !dbg !27
  %3 = bitcast i32* %nl to i8*, !dbg !28
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #3, !dbg !28
  call void @llvm.dbg.declare(metadata i32* %nl, metadata !29, metadata !DIExpression()), !dbg !30
  store i32 32, i32* %nl, align 4, !dbg !30
  %4 = bitcast [1024 x float]* %A to i8*, !dbg !31
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* %4) #3, !dbg !31
  call void @llvm.dbg.declare(metadata [1024 x float]* %A, metadata !32, metadata !DIExpression()), !dbg !36
  %A1 = bitcast [1024 x float]* %A to i8*, !dbg !31
  call void @llvm.var.annotation(i8* %A1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 49), !dbg !31
  %5 = bitcast [1024 x float]* %B to i8*, !dbg !37
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* %5) #3, !dbg !37
  call void @llvm.dbg.declare(metadata [1024 x float]* %B, metadata !38, metadata !DIExpression()), !dbg !39
  %B2 = bitcast [1024 x float]* %B to i8*, !dbg !37
  call void @llvm.var.annotation(i8* %B2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 50), !dbg !37
  %6 = bitcast [1024 x float]* %D to i8*, !dbg !40
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* %6) #3, !dbg !40
  call void @llvm.dbg.declare(metadata [1024 x float]* %D, metadata !41, metadata !DIExpression()), !dbg !42
  %D3 = bitcast [1024 x float]* %D to i8*, !dbg !40
  call void @llvm.var.annotation(i8* %D3, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 51), !dbg !40
  %7 = bitcast i32* %i to i8*, !dbg !43
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #3, !dbg !43
  call void @llvm.dbg.declare(metadata i32* %i, metadata !44, metadata !DIExpression()), !dbg !45
  %i4 = bitcast i32* %i to i8*, !dbg !43
  call void @llvm.var.annotation(i8* %i4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 52), !dbg !43
  %8 = bitcast i32* %j to i8*, !dbg !46
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3, !dbg !46
  call void @llvm.dbg.declare(metadata i32* %j, metadata !47, metadata !DIExpression()), !dbg !48
  %j5 = bitcast i32* %j to i8*, !dbg !46
  call void @llvm.var.annotation(i8* %j5, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 53), !dbg !46
  br label %VITIS_LOOP_54_1, !dbg !46

VITIS_LOOP_54_1:                                  ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !49
  br label %for.cond, !dbg !51

for.cond:                                         ; preds = %for.inc13, %VITIS_LOOP_54_1
  %9 = load i32, i32* %i, align 4, !dbg !52
  %10 = load i32, i32* %ni, align 4, !dbg !54
  %cmp = icmp slt i32 %9, %10, !dbg !55
  br i1 %cmp, label %for.body, label %for.end15, !dbg !56

for.body:                                         ; preds = %for.cond
  br label %VITIS_LOOP_55_2, !dbg !56

VITIS_LOOP_55_2:                                  ; preds = %for.body
  store i32 0, i32* %j, align 4, !dbg !57
  br label %for.cond6, !dbg !59

for.cond6:                                        ; preds = %for.inc, %VITIS_LOOP_55_2
  %11 = load i32, i32* %j, align 4, !dbg !60
  %12 = load i32, i32* %nk, align 4, !dbg !62
  %cmp7 = icmp slt i32 %11, %12, !dbg !63
  br i1 %cmp7, label %for.body8, label %for.end, !dbg !64

for.body8:                                        ; preds = %for.cond6
  %13 = load i32, i32* %i, align 4, !dbg !65
  %14 = load i32, i32* %j, align 4, !dbg !66
  %mul = mul nsw i32 %13, %14, !dbg !67
  %add = add nsw i32 %mul, 1, !dbg !68
  %15 = load i32, i32* %ni, align 4, !dbg !69
  %rem = srem i32 %add, %15, !dbg !70
  %conv = sitofp i32 %rem to float, !dbg !71
  %mul9 = fmul float 5.000000e+00, %conv, !dbg !72
  %16 = load i32, i32* %ni, align 4, !dbg !73
  %conv10 = sitofp i32 %16 to float, !dbg !73
  %div = fdiv float %mul9, %conv10, !dbg !74
  %17 = load i32, i32* %i, align 4, !dbg !75
  %18 = load i32, i32* %nk, align 4, !dbg !76
  %mul11 = mul nsw i32 %17, %18, !dbg !77
  %19 = load i32, i32* %j, align 4, !dbg !78
  %add12 = add nsw i32 %mul11, %19, !dbg !79
  %idxprom = sext i32 %add12 to i64, !dbg !80
  %arrayidx = getelementptr inbounds [1024 x float], [1024 x float]* %A, i64 0, i64 %idxprom, !dbg !80
  store float %div, float* %arrayidx, align 4, !dbg !81
  br label %for.inc, !dbg !80

for.inc:                                          ; preds = %for.body8
  %20 = load i32, i32* %j, align 4, !dbg !82
  %inc = add nsw i32 %20, 1, !dbg !82
  store i32 %inc, i32* %j, align 4, !dbg !82
  br label %for.cond6, !dbg !83, !llvm.loop !84

for.end:                                          ; preds = %for.cond6
  br label %for.inc13, !dbg !85

for.inc13:                                        ; preds = %for.end
  %21 = load i32, i32* %i, align 4, !dbg !87
  %inc14 = add nsw i32 %21, 1, !dbg !87
  store i32 %inc14, i32* %i, align 4, !dbg !87
  br label %for.cond, !dbg !88, !llvm.loop !89

for.end15:                                        ; preds = %for.cond
  br label %VITIS_LOOP_57_3, !dbg !90

VITIS_LOOP_57_3:                                  ; preds = %for.end15
  store i32 0, i32* %i, align 4, !dbg !92
  br label %for.cond16, !dbg !94

for.cond16:                                       ; preds = %for.inc36, %VITIS_LOOP_57_3
  %22 = load i32, i32* %i, align 4, !dbg !95
  %23 = load i32, i32* %nk, align 4, !dbg !97
  %cmp17 = icmp slt i32 %22, %23, !dbg !98
  br i1 %cmp17, label %for.body18, label %for.end38, !dbg !99

for.body18:                                       ; preds = %for.cond16
  br label %VITIS_LOOP_58_4, !dbg !99

VITIS_LOOP_58_4:                                  ; preds = %for.body18
  store i32 0, i32* %j, align 4, !dbg !100
  br label %for.cond19, !dbg !102

for.cond19:                                       ; preds = %for.inc33, %VITIS_LOOP_58_4
  %24 = load i32, i32* %j, align 4, !dbg !103
  %25 = load i32, i32* %nj, align 4, !dbg !105
  %cmp20 = icmp slt i32 %24, %25, !dbg !106
  br i1 %cmp20, label %for.body21, label %for.end35, !dbg !107

for.body21:                                       ; preds = %for.cond19
  %26 = load i32, i32* %i, align 4, !dbg !108
  %27 = load i32, i32* %j, align 4, !dbg !109
  %add22 = add nsw i32 %27, 1, !dbg !110
  %mul23 = mul nsw i32 %26, %add22, !dbg !111
  %28 = load i32, i32* %nj, align 4, !dbg !112
  %rem24 = srem i32 %mul23, %28, !dbg !113
  %conv25 = sitofp i32 %rem24 to float, !dbg !114
  %mul26 = fmul float 3.000000e+00, %conv25, !dbg !115
  %29 = load i32, i32* %nj, align 4, !dbg !116
  %conv27 = sitofp i32 %29 to float, !dbg !116
  %div28 = fdiv float %mul26, %conv27, !dbg !117
  %30 = load i32, i32* %i, align 4, !dbg !118
  %31 = load i32, i32* %nj, align 4, !dbg !119
  %mul29 = mul nsw i32 %30, %31, !dbg !120
  %32 = load i32, i32* %j, align 4, !dbg !121
  %add30 = add nsw i32 %mul29, %32, !dbg !122
  %idxprom31 = sext i32 %add30 to i64, !dbg !123
  %arrayidx32 = getelementptr inbounds [1024 x float], [1024 x float]* %B, i64 0, i64 %idxprom31, !dbg !123
  store float %div28, float* %arrayidx32, align 4, !dbg !124
  br label %for.inc33, !dbg !123

for.inc33:                                        ; preds = %for.body21
  %33 = load i32, i32* %j, align 4, !dbg !125
  %inc34 = add nsw i32 %33, 1, !dbg !125
  store i32 %inc34, i32* %j, align 4, !dbg !125
  br label %for.cond19, !dbg !126, !llvm.loop !127

for.end35:                                        ; preds = %for.cond19
  br label %for.inc36, !dbg !128

for.inc36:                                        ; preds = %for.end35
  %34 = load i32, i32* %i, align 4, !dbg !130
  %inc37 = add nsw i32 %34, 1, !dbg !130
  store i32 %inc37, i32* %i, align 4, !dbg !130
  br label %for.cond16, !dbg !131, !llvm.loop !132

for.end38:                                        ; preds = %for.cond16
  br label %VITIS_LOOP_60_5, !dbg !133

VITIS_LOOP_60_5:                                  ; preds = %for.end38
  store i32 0, i32* %i, align 4, !dbg !135
  br label %for.cond39, !dbg !137

for.cond39:                                       ; preds = %for.inc59, %VITIS_LOOP_60_5
  %35 = load i32, i32* %i, align 4, !dbg !138
  %36 = load i32, i32* %ni, align 4, !dbg !140
  %cmp40 = icmp slt i32 %35, %36, !dbg !141
  br i1 %cmp40, label %for.body41, label %for.end61, !dbg !142

for.body41:                                       ; preds = %for.cond39
  br label %VITIS_LOOP_61_6, !dbg !142

VITIS_LOOP_61_6:                                  ; preds = %for.body41
  store i32 0, i32* %j, align 4, !dbg !143
  br label %for.cond42, !dbg !145

for.cond42:                                       ; preds = %for.inc56, %VITIS_LOOP_61_6
  %37 = load i32, i32* %j, align 4, !dbg !146
  %38 = load i32, i32* %nl, align 4, !dbg !148
  %cmp43 = icmp slt i32 %37, %38, !dbg !149
  br i1 %cmp43, label %for.body44, label %for.end58, !dbg !150

for.body44:                                       ; preds = %for.cond42
  %39 = load i32, i32* %i, align 4, !dbg !151
  %40 = load i32, i32* %j, align 4, !dbg !152
  %add45 = add nsw i32 %40, 2, !dbg !153
  %mul46 = mul nsw i32 %39, %add45, !dbg !154
  %41 = load i32, i32* %nk, align 4, !dbg !155
  %rem47 = srem i32 %mul46, %41, !dbg !156
  %conv48 = sitofp i32 %rem47 to float, !dbg !157
  %mul49 = fmul float 5.000000e+00, %conv48, !dbg !158
  %42 = load i32, i32* %nk, align 4, !dbg !159
  %conv50 = sitofp i32 %42 to float, !dbg !159
  %div51 = fdiv float %mul49, %conv50, !dbg !160
  %43 = load i32, i32* %i, align 4, !dbg !161
  %44 = load i32, i32* %nl, align 4, !dbg !162
  %mul52 = mul nsw i32 %43, %44, !dbg !163
  %45 = load i32, i32* %j, align 4, !dbg !164
  %add53 = add nsw i32 %mul52, %45, !dbg !165
  %idxprom54 = sext i32 %add53 to i64, !dbg !166
  %arrayidx55 = getelementptr inbounds [1024 x float], [1024 x float]* %D, i64 0, i64 %idxprom54, !dbg !166
  store float %div51, float* %arrayidx55, align 4, !dbg !167
  br label %for.inc56, !dbg !166

for.inc56:                                        ; preds = %for.body44
  %46 = load i32, i32* %j, align 4, !dbg !168
  %inc57 = add nsw i32 %46, 1, !dbg !168
  store i32 %inc57, i32* %j, align 4, !dbg !168
  br label %for.cond42, !dbg !169, !llvm.loop !170

for.end58:                                        ; preds = %for.cond42
  br label %for.inc59, !dbg !171

for.inc59:                                        ; preds = %for.end58
  %47 = load i32, i32* %i, align 4, !dbg !173
  %inc60 = add nsw i32 %47, 1, !dbg !173
  store i32 %inc60, i32* %i, align 4, !dbg !173
  br label %for.cond39, !dbg !174, !llvm.loop !175

for.end61:                                        ; preds = %for.cond39
  call void @llvm.dbg.declare(metadata float* %alpha, metadata !178, metadata !DIExpression()), !dbg !179
  %alpha62 = bitcast float* %alpha to i8*, !dbg !180
  call void @llvm.var.annotation(i8* %alpha62, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 63), !dbg !180
  store float 0x3FF3333340000000, float* %alpha, align 4, !dbg !179
  call void @llvm.dbg.declare(metadata float* %beta, metadata !181, metadata !DIExpression()), !dbg !182
  %beta63 = bitcast float* %beta to i8*, !dbg !183
  call void @llvm.var.annotation(i8* %beta63, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 64), !dbg !183
  store float 1.500000e+00, float* %beta, align 4, !dbg !182
  call void @llvm.dbg.declare(metadata float* %fg, metadata !184, metadata !DIExpression()), !dbg !185
  %fg64 = bitcast float* %fg to i8*, !dbg !186
  call void @llvm.var.annotation(i8* %fg64, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 65), !dbg !186
  %48 = load float, float* %gamma.addr, align 4, !dbg !187
  store float %48, float* %fg, align 4, !dbg !185
  call void @llvm.dbg.declare(metadata [1024 x float]* %tmp, metadata !188, metadata !DIExpression()), !dbg !189
  %tmp65 = bitcast [1024 x float]* %tmp to i8*, !dbg !190
  call void @llvm.var.annotation(i8* %tmp65, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 66), !dbg !190
  call void @llvm.dbg.declare(metadata float* %sum, metadata !191, metadata !DIExpression()), !dbg !192
  %sum66 = bitcast float* %sum to i8*, !dbg !193
  call void @llvm.var.annotation(i8* %sum66, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 67), !dbg !193
  store float 0.000000e+00, float* %sum, align 4, !dbg !192
  call void @llvm.dbg.declare(metadata i32* %ii, metadata !194, metadata !DIExpression()), !dbg !195
  %ii67 = bitcast i32* %ii to i8*, !dbg !196
  call void @llvm.var.annotation(i8* %ii67, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 69), !dbg !196
  call void @llvm.dbg.declare(metadata i32* %jj, metadata !197, metadata !DIExpression()), !dbg !198
  %jj68 = bitcast i32* %jj to i8*, !dbg !199
  call void @llvm.var.annotation(i8* %jj68, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 70), !dbg !199
  call void @llvm.dbg.declare(metadata i32* %k, metadata !200, metadata !DIExpression()), !dbg !201
  %k69 = bitcast i32* %k to i8*, !dbg !202
  call void @llvm.var.annotation(i8* %k69, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 71), !dbg !202
  call void @llvm.dbg.declare(metadata float* %z, metadata !203, metadata !DIExpression()), !dbg !204
  %z70 = bitcast float* %z to i8*, !dbg !205
  call void @llvm.var.annotation(i8* %z70, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 72), !dbg !205
  br label %VITIS_LOOP_73_7, !dbg !205

VITIS_LOOP_73_7:                                  ; preds = %for.end61
  store i32 0, i32* %ii, align 4, !dbg !206
  br label %for.cond71, !dbg !208

for.cond71:                                       ; preds = %for.inc136, %VITIS_LOOP_73_7
  %49 = load i32, i32* %ii, align 4, !dbg !209
  %cmp72 = icmp slt i32 %49, 32, !dbg !211
  br i1 %cmp72, label %for.body73, label %for.end138, !dbg !212

for.body73:                                       ; preds = %for.cond71
  br label %VITIS_LOOP_75_8, !dbg !213

VITIS_LOOP_75_8:                                  ; preds = %for.body73
  store i32 0, i32* %jj, align 4, !dbg !214
  br label %for.cond74, !dbg !217

for.cond74:                                       ; preds = %for.inc133, %VITIS_LOOP_75_8
  %50 = load i32, i32* %jj, align 4, !dbg !218
  %cmp75 = icmp slt i32 %50, 32, !dbg !220
  br i1 %cmp75, label %for.body76, label %for.end135, !dbg !221

for.body76:                                       ; preds = %for.cond74
  %51 = load i32, i32* %ii, align 4, !dbg !222
  %mul77 = mul nsw i32 %51, 32, !dbg !224
  %52 = load i32, i32* %jj, align 4, !dbg !225
  %add78 = add nsw i32 %mul77, %52, !dbg !226
  %idxprom79 = sext i32 %add78 to i64, !dbg !227
  %arrayidx80 = getelementptr inbounds [1024 x float], [1024 x float]* %tmp, i64 0, i64 %idxprom79, !dbg !227
  store float 0.000000e+00, float* %arrayidx80, align 4, !dbg !228
  br label %VITIS_LOOP_79_9, !dbg !227

VITIS_LOOP_79_9:                                  ; preds = %for.body76
  store i32 0, i32* %k, align 4, !dbg !229
  br label %for.cond81, !dbg !231

for.cond81:                                       ; preds = %for.inc103, %VITIS_LOOP_79_9
  %53 = load i32, i32* %k, align 4, !dbg !232
  %cmp82 = icmp slt i32 %53, 32, !dbg !234
  br i1 %cmp82, label %for.body83, label %for.end105, !dbg !235

for.body83:                                       ; preds = %for.cond81
  %54 = load i32, i32* %ii, align 4, !dbg !236
  %mul84 = mul nsw i32 %54, 32, !dbg !238
  %55 = load i32, i32* %k, align 4, !dbg !239
  %add85 = add nsw i32 %mul84, %55, !dbg !240
  %idxprom86 = sext i32 %add85 to i64, !dbg !241
  %arrayidx87 = getelementptr inbounds [1024 x float], [1024 x float]* %A, i64 0, i64 %idxprom86, !dbg !241
  %56 = load float, float* %arrayidx87, align 4, !dbg !241
  %57 = load i32, i32* %k, align 4, !dbg !242
  %mul88 = mul nsw i32 %57, 32, !dbg !243
  %58 = load i32, i32* %jj, align 4, !dbg !244
  %add89 = add nsw i32 %mul88, %58, !dbg !245
  %idxprom90 = sext i32 %add89 to i64, !dbg !246
  %arrayidx91 = getelementptr inbounds [1024 x float], [1024 x float]* %B, i64 0, i64 %idxprom90, !dbg !246
  %59 = load float, float* %arrayidx91, align 4, !dbg !246
  %mul92 = fmul float %56, %59, !dbg !247
  %60 = load float, float* %alpha, align 4, !dbg !248
  %mul93 = fmul float %mul92, %60, !dbg !249
  store float %mul93, float* %z, align 4, !dbg !250
  %61 = load i32, i32* %ii, align 4, !dbg !251
  %mul94 = mul nsw i32 %61, 32, !dbg !252
  %62 = load i32, i32* %jj, align 4, !dbg !253
  %add95 = add nsw i32 %mul94, %62, !dbg !254
  %idxprom96 = sext i32 %add95 to i64, !dbg !255
  %arrayidx97 = getelementptr inbounds [1024 x float], [1024 x float]* %tmp, i64 0, i64 %idxprom96, !dbg !255
  %63 = load float, float* %arrayidx97, align 4, !dbg !255
  %64 = load float, float* %z, align 4, !dbg !256
  %add98 = fadd float %63, %64, !dbg !257
  %65 = load i32, i32* %ii, align 4, !dbg !258
  %mul99 = mul nsw i32 %65, 32, !dbg !259
  %66 = load i32, i32* %jj, align 4, !dbg !260
  %add100 = add nsw i32 %mul99, %66, !dbg !261
  %idxprom101 = sext i32 %add100 to i64, !dbg !262
  %arrayidx102 = getelementptr inbounds [1024 x float], [1024 x float]* %tmp, i64 0, i64 %idxprom101, !dbg !262
  store float %add98, float* %arrayidx102, align 4, !dbg !263
  br label %for.inc103, !dbg !264

for.inc103:                                       ; preds = %for.body83
  %67 = load i32, i32* %k, align 4, !dbg !265
  %inc104 = add nsw i32 %67, 1, !dbg !265
  store i32 %inc104, i32* %k, align 4, !dbg !265
  br label %for.cond81, !dbg !266, !llvm.loop !267

for.end105:                                       ; preds = %for.cond81
  %68 = load i32, i32* %ii, align 4, !dbg !270
  %mul106 = mul nsw i32 %68, 32, !dbg !271
  %69 = load i32, i32* %jj, align 4, !dbg !272
  %add107 = add nsw i32 %mul106, %69, !dbg !273
  %idxprom108 = sext i32 %add107 to i64, !dbg !274
  %arrayidx109 = getelementptr inbounds [1024 x float], [1024 x float]* %D, i64 0, i64 %idxprom108, !dbg !274
  %70 = load float, float* %arrayidx109, align 4, !dbg !274
  %71 = load float, float* %beta, align 4, !dbg !275
  %mul110 = fmul float %70, %71, !dbg !276
  %72 = load i32, i32* %ii, align 4, !dbg !277
  %mul111 = mul nsw i32 %72, 32, !dbg !278
  %73 = load i32, i32* %jj, align 4, !dbg !279
  %add112 = add nsw i32 %mul111, %73, !dbg !280
  %idxprom113 = sext i32 %add112 to i64, !dbg !281
  %arrayidx114 = getelementptr inbounds [1024 x float], [1024 x float]* %D, i64 0, i64 %idxprom113, !dbg !281
  store float %mul110, float* %arrayidx114, align 4, !dbg !282
  %74 = load i32, i32* %ii, align 4, !dbg !283
  %mul115 = mul nsw i32 %74, 32, !dbg !284
  %75 = load i32, i32* %jj, align 4, !dbg !285
  %add116 = add nsw i32 %mul115, %75, !dbg !286
  %idxprom117 = sext i32 %add116 to i64, !dbg !287
  %arrayidx118 = getelementptr inbounds [1024 x float], [1024 x float]* %D, i64 0, i64 %idxprom117, !dbg !287
  %76 = load float, float* %arrayidx118, align 4, !dbg !287
  %77 = load i32, i32* %ii, align 4, !dbg !288
  %mul119 = mul nsw i32 %77, 32, !dbg !289
  %78 = load i32, i32* %jj, align 4, !dbg !290
  %add120 = add nsw i32 %mul119, %78, !dbg !291
  %idxprom121 = sext i32 %add120 to i64, !dbg !292
  %arrayidx122 = getelementptr inbounds [1024 x float], [1024 x float]* %tmp, i64 0, i64 %idxprom121, !dbg !292
  %79 = load float, float* %arrayidx122, align 4, !dbg !292
  %add123 = fadd float %76, %79, !dbg !293
  %80 = load i32, i32* %ii, align 4, !dbg !294
  %mul124 = mul nsw i32 %80, 32, !dbg !295
  %81 = load i32, i32* %jj, align 4, !dbg !296
  %add125 = add nsw i32 %mul124, %81, !dbg !297
  %idxprom126 = sext i32 %add125 to i64, !dbg !298
  %arrayidx127 = getelementptr inbounds [1024 x float], [1024 x float]* %D, i64 0, i64 %idxprom126, !dbg !298
  store float %add123, float* %arrayidx127, align 4, !dbg !299
  %82 = load i32, i32* %ii, align 4, !dbg !300
  %mul128 = mul nsw i32 %82, 32, !dbg !301
  %83 = load i32, i32* %jj, align 4, !dbg !302
  %add129 = add nsw i32 %mul128, %83, !dbg !303
  %idxprom130 = sext i32 %add129 to i64, !dbg !304
  %arrayidx131 = getelementptr inbounds [1024 x float], [1024 x float]* %D, i64 0, i64 %idxprom130, !dbg !304
  %84 = load float, float* %arrayidx131, align 4, !dbg !304
  %85 = load float, float* %sum, align 4, !dbg !305
  %add132 = fadd float %85, %84, !dbg !305
  store float %add132, float* %sum, align 4, !dbg !305
  br label %for.inc133, !dbg !306

for.inc133:                                       ; preds = %for.end105
  %86 = load i32, i32* %jj, align 4, !dbg !307
  %inc134 = add nsw i32 %86, 1, !dbg !307
  store i32 %inc134, i32* %jj, align 4, !dbg !307
  br label %for.cond74, !dbg !308, !llvm.loop !309

for.end135:                                       ; preds = %for.cond74
  br label %for.inc136, !dbg !314

for.inc136:                                       ; preds = %for.end135
  %87 = load i32, i32* %ii, align 4, !dbg !315
  %inc137 = add nsw i32 %87, 1, !dbg !315
  store i32 %inc137, i32* %ii, align 4, !dbg !315
  br label %for.cond71, !dbg !316, !llvm.loop !317

for.end138:                                       ; preds = %for.cond71
  %88 = load float, float* %sum, align 4, !dbg !320
  %89 = load float, float* %gamma.addr, align 4, !dbg !321
  %mul139 = fmul float %88, %89, !dbg !322
  %90 = bitcast i32* %j to i8*, !dbg !323
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %90) #3, !dbg !323
  %91 = bitcast i32* %i to i8*, !dbg !323
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %91) #3, !dbg !323
  %92 = bitcast [1024 x float]* %D to i8*, !dbg !323
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* %92) #3, !dbg !323
  %93 = bitcast [1024 x float]* %B to i8*, !dbg !323
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* %93) #3, !dbg !323
  %94 = bitcast [1024 x float]* %A to i8*, !dbg !323
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* %94) #3, !dbg !323
  %95 = bitcast i32* %nl to i8*, !dbg !323
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %95) #3, !dbg !323
  %96 = bitcast i32* %nk to i8*, !dbg !323
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %96) #3, !dbg !323
  %97 = bitcast i32* %nj to i8*, !dbg !323
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %97) #3, !dbg !323
  %98 = bitcast i32* %ni to i8*, !dbg !323
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %98) #3, !dbg !323
  ret float %mul139, !dbg !324
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.var.annotation(i8*, i8*, i8*, i32) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

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
!16 = !DILocalVariable(name: "gamma", arg: 1, scope: !9, file: !10, line: 42, type: !4)
!17 = !DILocation(line: 42, column: 53, scope: !9)
!18 = !DILocation(line: 44, column: 5, scope: !9)
!19 = !DILocalVariable(name: "ni", scope: !9, file: !10, line: 44, type: !20)
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !DILocation(line: 44, column: 9, scope: !9)
!22 = !DILocation(line: 45, column: 5, scope: !9)
!23 = !DILocalVariable(name: "nj", scope: !9, file: !10, line: 45, type: !20)
!24 = !DILocation(line: 45, column: 9, scope: !9)
!25 = !DILocation(line: 46, column: 5, scope: !9)
!26 = !DILocalVariable(name: "nk", scope: !9, file: !10, line: 46, type: !20)
!27 = !DILocation(line: 46, column: 9, scope: !9)
!28 = !DILocation(line: 47, column: 5, scope: !9)
!29 = !DILocalVariable(name: "nl", scope: !9, file: !10, line: 47, type: !20)
!30 = !DILocation(line: 47, column: 9, scope: !9)
!31 = !DILocation(line: 49, column: 5, scope: !9)
!32 = !DILocalVariable(name: "A", scope: !9, file: !10, line: 49, type: !33)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32768, elements: !34)
!34 = !{!35}
!35 = !DISubrange(count: 1024)
!36 = !DILocation(line: 49, column: 11, scope: !9)
!37 = !DILocation(line: 50, column: 5, scope: !9)
!38 = !DILocalVariable(name: "B", scope: !9, file: !10, line: 50, type: !33)
!39 = !DILocation(line: 50, column: 11, scope: !9)
!40 = !DILocation(line: 51, column: 5, scope: !9)
!41 = !DILocalVariable(name: "D", scope: !9, file: !10, line: 51, type: !33)
!42 = !DILocation(line: 51, column: 11, scope: !9)
!43 = !DILocation(line: 52, column: 5, scope: !9)
!44 = !DILocalVariable(name: "i", scope: !9, file: !10, line: 52, type: !20)
!45 = !DILocation(line: 52, column: 9, scope: !9)
!46 = !DILocation(line: 53, column: 5, scope: !9)
!47 = !DILocalVariable(name: "j", scope: !9, file: !10, line: 53, type: !20)
!48 = !DILocation(line: 53, column: 9, scope: !9)
!49 = !DILocation(line: 54, column: 29, scope: !50)
!50 = distinct !DILexicalBlock(scope: !9, file: !10, line: 54, column: 22)
!51 = !DILocation(line: 54, column: 27, scope: !50)
!52 = !DILocation(line: 54, column: 34, scope: !53)
!53 = distinct !DILexicalBlock(scope: !50, file: !10, line: 54, column: 22)
!54 = !DILocation(line: 54, column: 38, scope: !53)
!55 = !DILocation(line: 54, column: 36, scope: !53)
!56 = !DILocation(line: 54, column: 22, scope: !50)
!57 = !DILocation(line: 55, column: 33, scope: !58)
!58 = distinct !DILexicalBlock(scope: !53, file: !10, line: 55, column: 26)
!59 = !DILocation(line: 55, column: 31, scope: !58)
!60 = !DILocation(line: 55, column: 38, scope: !61)
!61 = distinct !DILexicalBlock(scope: !58, file: !10, line: 55, column: 26)
!62 = !DILocation(line: 55, column: 42, scope: !61)
!63 = !DILocation(line: 55, column: 40, scope: !61)
!64 = !DILocation(line: 55, column: 26, scope: !58)
!65 = !DILocation(line: 56, column: 39, scope: !61)
!66 = !DILocation(line: 56, column: 41, scope: !61)
!67 = !DILocation(line: 56, column: 40, scope: !61)
!68 = !DILocation(line: 56, column: 42, scope: !61)
!69 = !DILocation(line: 56, column: 48, scope: !61)
!70 = !DILocation(line: 56, column: 46, scope: !61)
!71 = !DILocation(line: 56, column: 37, scope: !61)
!72 = !DILocation(line: 56, column: 35, scope: !61)
!73 = !DILocation(line: 56, column: 54, scope: !61)
!74 = !DILocation(line: 56, column: 52, scope: !61)
!75 = !DILocation(line: 56, column: 15, scope: !61)
!76 = !DILocation(line: 56, column: 17, scope: !61)
!77 = !DILocation(line: 56, column: 16, scope: !61)
!78 = !DILocation(line: 56, column: 20, scope: !61)
!79 = !DILocation(line: 56, column: 19, scope: !61)
!80 = !DILocation(line: 56, column: 13, scope: !61)
!81 = !DILocation(line: 56, column: 23, scope: !61)
!82 = !DILocation(line: 55, column: 47, scope: !61)
!83 = !DILocation(line: 55, column: 26, scope: !61)
!84 = distinct !{!84, !64, !85, !86}
!85 = !DILocation(line: 56, column: 54, scope: !58)
!86 = !{!"llvm.loop.name", !"VITIS_LOOP_55_2"}
!87 = !DILocation(line: 54, column: 43, scope: !53)
!88 = !DILocation(line: 54, column: 22, scope: !53)
!89 = distinct !{!89, !56, !90, !91}
!90 = !DILocation(line: 56, column: 54, scope: !50)
!91 = !{!"llvm.loop.name", !"VITIS_LOOP_54_1"}
!92 = !DILocation(line: 57, column: 29, scope: !93)
!93 = distinct !DILexicalBlock(scope: !9, file: !10, line: 57, column: 22)
!94 = !DILocation(line: 57, column: 27, scope: !93)
!95 = !DILocation(line: 57, column: 34, scope: !96)
!96 = distinct !DILexicalBlock(scope: !93, file: !10, line: 57, column: 22)
!97 = !DILocation(line: 57, column: 38, scope: !96)
!98 = !DILocation(line: 57, column: 36, scope: !96)
!99 = !DILocation(line: 57, column: 22, scope: !93)
!100 = !DILocation(line: 58, column: 33, scope: !101)
!101 = distinct !DILexicalBlock(scope: !96, file: !10, line: 58, column: 26)
!102 = !DILocation(line: 58, column: 31, scope: !101)
!103 = !DILocation(line: 58, column: 38, scope: !104)
!104 = distinct !DILexicalBlock(scope: !101, file: !10, line: 58, column: 26)
!105 = !DILocation(line: 58, column: 42, scope: !104)
!106 = !DILocation(line: 58, column: 40, scope: !104)
!107 = !DILocation(line: 58, column: 26, scope: !101)
!108 = !DILocation(line: 59, column: 38, scope: !104)
!109 = !DILocation(line: 59, column: 41, scope: !104)
!110 = !DILocation(line: 59, column: 42, scope: !104)
!111 = !DILocation(line: 59, column: 39, scope: !104)
!112 = !DILocation(line: 59, column: 48, scope: !104)
!113 = !DILocation(line: 59, column: 46, scope: !104)
!114 = !DILocation(line: 59, column: 37, scope: !104)
!115 = !DILocation(line: 59, column: 35, scope: !104)
!116 = !DILocation(line: 59, column: 54, scope: !104)
!117 = !DILocation(line: 59, column: 52, scope: !104)
!118 = !DILocation(line: 59, column: 15, scope: !104)
!119 = !DILocation(line: 59, column: 17, scope: !104)
!120 = !DILocation(line: 59, column: 16, scope: !104)
!121 = !DILocation(line: 59, column: 20, scope: !104)
!122 = !DILocation(line: 59, column: 19, scope: !104)
!123 = !DILocation(line: 59, column: 13, scope: !104)
!124 = !DILocation(line: 59, column: 23, scope: !104)
!125 = !DILocation(line: 58, column: 47, scope: !104)
!126 = !DILocation(line: 58, column: 26, scope: !104)
!127 = distinct !{!127, !107, !128, !129}
!128 = !DILocation(line: 59, column: 54, scope: !101)
!129 = !{!"llvm.loop.name", !"VITIS_LOOP_58_4"}
!130 = !DILocation(line: 57, column: 43, scope: !96)
!131 = !DILocation(line: 57, column: 22, scope: !96)
!132 = distinct !{!132, !99, !133, !134}
!133 = !DILocation(line: 59, column: 54, scope: !93)
!134 = !{!"llvm.loop.name", !"VITIS_LOOP_57_3"}
!135 = !DILocation(line: 60, column: 29, scope: !136)
!136 = distinct !DILexicalBlock(scope: !9, file: !10, line: 60, column: 22)
!137 = !DILocation(line: 60, column: 27, scope: !136)
!138 = !DILocation(line: 60, column: 34, scope: !139)
!139 = distinct !DILexicalBlock(scope: !136, file: !10, line: 60, column: 22)
!140 = !DILocation(line: 60, column: 38, scope: !139)
!141 = !DILocation(line: 60, column: 36, scope: !139)
!142 = !DILocation(line: 60, column: 22, scope: !136)
!143 = !DILocation(line: 61, column: 33, scope: !144)
!144 = distinct !DILexicalBlock(scope: !139, file: !10, line: 61, column: 26)
!145 = !DILocation(line: 61, column: 31, scope: !144)
!146 = !DILocation(line: 61, column: 38, scope: !147)
!147 = distinct !DILexicalBlock(scope: !144, file: !10, line: 61, column: 26)
!148 = !DILocation(line: 61, column: 42, scope: !147)
!149 = !DILocation(line: 61, column: 40, scope: !147)
!150 = !DILocation(line: 61, column: 26, scope: !144)
!151 = !DILocation(line: 62, column: 38, scope: !147)
!152 = !DILocation(line: 62, column: 41, scope: !147)
!153 = !DILocation(line: 62, column: 42, scope: !147)
!154 = !DILocation(line: 62, column: 39, scope: !147)
!155 = !DILocation(line: 62, column: 48, scope: !147)
!156 = !DILocation(line: 62, column: 46, scope: !147)
!157 = !DILocation(line: 62, column: 37, scope: !147)
!158 = !DILocation(line: 62, column: 35, scope: !147)
!159 = !DILocation(line: 62, column: 54, scope: !147)
!160 = !DILocation(line: 62, column: 52, scope: !147)
!161 = !DILocation(line: 62, column: 15, scope: !147)
!162 = !DILocation(line: 62, column: 17, scope: !147)
!163 = !DILocation(line: 62, column: 16, scope: !147)
!164 = !DILocation(line: 62, column: 20, scope: !147)
!165 = !DILocation(line: 62, column: 19, scope: !147)
!166 = !DILocation(line: 62, column: 13, scope: !147)
!167 = !DILocation(line: 62, column: 23, scope: !147)
!168 = !DILocation(line: 61, column: 47, scope: !147)
!169 = !DILocation(line: 61, column: 26, scope: !147)
!170 = distinct !{!170, !150, !171, !172}
!171 = !DILocation(line: 62, column: 54, scope: !144)
!172 = !{!"llvm.loop.name", !"VITIS_LOOP_61_6"}
!173 = !DILocation(line: 60, column: 43, scope: !139)
!174 = !DILocation(line: 60, column: 22, scope: !139)
!175 = distinct !{!175, !142, !176, !177}
!176 = !DILocation(line: 62, column: 54, scope: !136)
!177 = !{!"llvm.loop.name", !"VITIS_LOOP_60_5"}
!178 = !DILocalVariable(name: "alpha", scope: !9, file: !10, line: 63, type: !4)
!179 = !DILocation(line: 63, column: 49, scope: !9)
!180 = !DILocation(line: 63, column: 5, scope: !9)
!181 = !DILocalVariable(name: "beta", scope: !9, file: !10, line: 64, type: !4)
!182 = !DILocation(line: 64, column: 49, scope: !9)
!183 = !DILocation(line: 64, column: 5, scope: !9)
!184 = !DILocalVariable(name: "fg", scope: !9, file: !10, line: 65, type: !4)
!185 = !DILocation(line: 65, column: 63, scope: !9)
!186 = !DILocation(line: 65, column: 5, scope: !9)
!187 = !DILocation(line: 65, column: 68, scope: !9)
!188 = !DILocalVariable(name: "tmp", scope: !9, file: !10, line: 66, type: !33)
!189 = !DILocation(line: 66, column: 11, scope: !9)
!190 = !DILocation(line: 66, column: 5, scope: !9)
!191 = !DILocalVariable(name: "sum", scope: !9, file: !10, line: 67, type: !4)
!192 = !DILocation(line: 67, column: 65, scope: !9)
!193 = !DILocation(line: 67, column: 5, scope: !9)
!194 = !DILocalVariable(name: "ii", scope: !9, file: !10, line: 69, type: !20)
!195 = !DILocation(line: 69, column: 9, scope: !9)
!196 = !DILocation(line: 69, column: 5, scope: !9)
!197 = !DILocalVariable(name: "jj", scope: !9, file: !10, line: 70, type: !20)
!198 = !DILocation(line: 70, column: 9, scope: !9)
!199 = !DILocation(line: 70, column: 5, scope: !9)
!200 = !DILocalVariable(name: "k", scope: !9, file: !10, line: 71, type: !20)
!201 = !DILocation(line: 71, column: 9, scope: !9)
!202 = !DILocation(line: 71, column: 5, scope: !9)
!203 = !DILocalVariable(name: "z", scope: !9, file: !10, line: 72, type: !4)
!204 = !DILocation(line: 72, column: 11, scope: !9)
!205 = !DILocation(line: 72, column: 5, scope: !9)
!206 = !DILocation(line: 73, column: 30, scope: !207)
!207 = distinct !DILexicalBlock(scope: !9, file: !10, line: 73, column: 22)
!208 = !DILocation(line: 73, column: 27, scope: !207)
!209 = !DILocation(line: 73, column: 35, scope: !210)
!210 = distinct !DILexicalBlock(scope: !207, file: !10, line: 73, column: 22)
!211 = !DILocation(line: 73, column: 38, scope: !210)
!212 = !DILocation(line: 73, column: 22, scope: !207)
!213 = !DILocation(line: 74, column: 5, scope: !210)
!214 = !DILocation(line: 75, column: 34, scope: !215)
!215 = distinct !DILexicalBlock(scope: !216, file: !10, line: 75, column: 26)
!216 = distinct !DILexicalBlock(scope: !210, file: !10, line: 74, column: 5)
!217 = !DILocation(line: 75, column: 31, scope: !215)
!218 = !DILocation(line: 75, column: 39, scope: !219)
!219 = distinct !DILexicalBlock(scope: !215, file: !10, line: 75, column: 26)
!220 = !DILocation(line: 75, column: 42, scope: !219)
!221 = !DILocation(line: 75, column: 26, scope: !215)
!222 = !DILocation(line: 78, column: 6, scope: !223)
!223 = distinct !DILexicalBlock(scope: !219, file: !10, line: 76, column: 9)
!224 = !DILocation(line: 78, column: 8, scope: !223)
!225 = !DILocation(line: 78, column: 13, scope: !223)
!226 = !DILocation(line: 78, column: 12, scope: !223)
!227 = !DILocation(line: 78, column: 2, scope: !223)
!228 = !DILocation(line: 78, column: 17, scope: !223)
!229 = !DILocation(line: 79, column: 37, scope: !230)
!230 = distinct !DILexicalBlock(scope: !223, file: !10, line: 79, column: 30)
!231 = !DILocation(line: 79, column: 35, scope: !230)
!232 = !DILocation(line: 79, column: 42, scope: !233)
!233 = distinct !DILexicalBlock(scope: !230, file: !10, line: 79, column: 30)
!234 = !DILocation(line: 79, column: 44, scope: !233)
!235 = !DILocation(line: 79, column: 30, scope: !230)
!236 = !DILocation(line: 80, column: 23, scope: !237)
!237 = distinct !DILexicalBlock(scope: !233, file: !10, line: 79, column: 54)
!238 = !DILocation(line: 80, column: 25, scope: !237)
!239 = !DILocation(line: 80, column: 30, scope: !237)
!240 = !DILocation(line: 80, column: 29, scope: !237)
!241 = !DILocation(line: 80, column: 21, scope: !237)
!242 = !DILocation(line: 80, column: 37, scope: !237)
!243 = !DILocation(line: 80, column: 38, scope: !237)
!244 = !DILocation(line: 80, column: 43, scope: !237)
!245 = !DILocation(line: 80, column: 42, scope: !237)
!246 = !DILocation(line: 80, column: 35, scope: !237)
!247 = !DILocation(line: 80, column: 33, scope: !237)
!248 = !DILocation(line: 80, column: 49, scope: !237)
!249 = !DILocation(line: 80, column: 47, scope: !237)
!250 = !DILocation(line: 80, column: 19, scope: !237)
!251 = !DILocation(line: 81, column: 38, scope: !237)
!252 = !DILocation(line: 81, column: 40, scope: !237)
!253 = !DILocation(line: 81, column: 45, scope: !237)
!254 = !DILocation(line: 81, column: 44, scope: !237)
!255 = !DILocation(line: 81, column: 34, scope: !237)
!256 = !DILocation(line: 81, column: 51, scope: !237)
!257 = !DILocation(line: 81, column: 49, scope: !237)
!258 = !DILocation(line: 81, column: 21, scope: !237)
!259 = !DILocation(line: 81, column: 23, scope: !237)
!260 = !DILocation(line: 81, column: 28, scope: !237)
!261 = !DILocation(line: 81, column: 27, scope: !237)
!262 = !DILocation(line: 81, column: 17, scope: !237)
!263 = !DILocation(line: 81, column: 32, scope: !237)
!264 = !DILocation(line: 82, column: 13, scope: !237)
!265 = !DILocation(line: 79, column: 51, scope: !233)
!266 = !DILocation(line: 79, column: 30, scope: !233)
!267 = distinct !{!267, !235, !268, !269}
!268 = !DILocation(line: 82, column: 13, scope: !230)
!269 = !{!"llvm.loop.name", !"VITIS_LOOP_79_9"}
!270 = !DILocation(line: 83, column: 35, scope: !223)
!271 = !DILocation(line: 83, column: 37, scope: !223)
!272 = !DILocation(line: 83, column: 42, scope: !223)
!273 = !DILocation(line: 83, column: 41, scope: !223)
!274 = !DILocation(line: 83, column: 33, scope: !223)
!275 = !DILocation(line: 83, column: 48, scope: !223)
!276 = !DILocation(line: 83, column: 46, scope: !223)
!277 = !DILocation(line: 83, column: 20, scope: !223)
!278 = !DILocation(line: 83, column: 22, scope: !223)
!279 = !DILocation(line: 83, column: 27, scope: !223)
!280 = !DILocation(line: 83, column: 26, scope: !223)
!281 = !DILocation(line: 83, column: 18, scope: !223)
!282 = !DILocation(line: 83, column: 31, scope: !223)
!283 = !DILocation(line: 84, column: 35, scope: !223)
!284 = !DILocation(line: 84, column: 37, scope: !223)
!285 = !DILocation(line: 84, column: 42, scope: !223)
!286 = !DILocation(line: 84, column: 41, scope: !223)
!287 = !DILocation(line: 84, column: 33, scope: !223)
!288 = !DILocation(line: 84, column: 52, scope: !223)
!289 = !DILocation(line: 84, column: 54, scope: !223)
!290 = !DILocation(line: 84, column: 59, scope: !223)
!291 = !DILocation(line: 84, column: 58, scope: !223)
!292 = !DILocation(line: 84, column: 48, scope: !223)
!293 = !DILocation(line: 84, column: 46, scope: !223)
!294 = !DILocation(line: 84, column: 20, scope: !223)
!295 = !DILocation(line: 84, column: 22, scope: !223)
!296 = !DILocation(line: 84, column: 27, scope: !223)
!297 = !DILocation(line: 84, column: 26, scope: !223)
!298 = !DILocation(line: 84, column: 18, scope: !223)
!299 = !DILocation(line: 84, column: 31, scope: !223)
!300 = !DILocation(line: 85, column: 27, scope: !223)
!301 = !DILocation(line: 85, column: 29, scope: !223)
!302 = !DILocation(line: 85, column: 34, scope: !223)
!303 = !DILocation(line: 85, column: 33, scope: !223)
!304 = !DILocation(line: 85, column: 25, scope: !223)
!305 = !DILocation(line: 85, column: 22, scope: !223)
!306 = !DILocation(line: 86, column: 9, scope: !223)
!307 = !DILocation(line: 75, column: 50, scope: !219)
!308 = !DILocation(line: 75, column: 26, scope: !219)
!309 = distinct !{!309, !221, !310, !311, !313}
!310 = !DILocation(line: 86, column: 9, scope: !215)
!311 = !{!"llvm.loop.pipeline.enable", i32 1, i1 false, i8 -1, !"user", !312}
!312 = !DILocation(line: 77, column: 9, scope: !215)
!313 = !{!"llvm.loop.name", !"VITIS_LOOP_75_8"}
!314 = !DILocation(line: 87, column: 5, scope: !216)
!315 = !DILocation(line: 73, column: 46, scope: !210)
!316 = !DILocation(line: 73, column: 22, scope: !210)
!317 = distinct !{!317, !212, !318, !319}
!318 = !DILocation(line: 87, column: 5, scope: !207)
!319 = !{!"llvm.loop.name", !"VITIS_LOOP_73_7"}
!320 = !DILocation(line: 92, column: 12, scope: !9)
!321 = !DILocation(line: 92, column: 18, scope: !9)
!322 = !DILocation(line: 92, column: 16, scope: !9)
!323 = !DILocation(line: 93, column: 1, scope: !9)
!324 = !DILocation(line: 92, column: 5, scope: !9)
