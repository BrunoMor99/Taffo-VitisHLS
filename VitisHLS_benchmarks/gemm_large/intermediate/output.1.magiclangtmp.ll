; ModuleID = '/home/bruno/Desktop/benchmarks/gemm_large/proj_gemm/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.global_ctors = appending global [0 x { i32, void ()*, i8* }] zeroinitializer
@.str = private unnamed_addr constant [9 x i8] c"scalar()\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [15 x i8] c"gemm_taffoin.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [37 x i8] c"target('D') scalar(range(-160, 160))\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [25 x i8] c"scalar(range(-160, 160))\00", section "llvm.metadata"
@.str.4 = private unnamed_addr constant [25 x i8] c"scalar(range(-100, 100))\00", section "llvm.metadata"
@.str.5 = private unnamed_addr constant [25 x i8] c"scalar(range(-200, 200))\00", section "llvm.metadata"

; Function Attrs: nounwind
define float @mm(float %gamma) #0 !dbg !9 !fpga.function.pragma !13 {
entry:
  %gamma.addr = alloca float, align 4
  %ni = alloca i32, align 4
  %nj = alloca i32, align 4
  %nk = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %A = alloca [256 x float], align 4
  %B = alloca [256 x float], align 4
  %D = alloca [256 x float], align 4
  %alpha = alloca float, align 4
  %beta = alloca float, align 4
  %fg = alloca float, align 4
  %tmp = alloca float, align 4
  %sum = alloca float, align 4
  %z = alloca float, align 4
  %ii = alloca i32, align 4
  %jj = alloca i32, align 4
  store float %gamma, float* %gamma.addr, align 4
  call void @llvm.dbg.declare(metadata float* %gamma.addr, metadata !16, metadata !DIExpression()), !dbg !17
  %0 = bitcast i32* %ni to i8*, !dbg !18
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #3, !dbg !18
  call void @llvm.dbg.declare(metadata i32* %ni, metadata !19, metadata !DIExpression()), !dbg !21
  store i32 16, i32* %ni, align 4, !dbg !21
  %1 = bitcast i32* %nj to i8*, !dbg !22
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #3, !dbg !22
  call void @llvm.dbg.declare(metadata i32* %nj, metadata !23, metadata !DIExpression()), !dbg !24
  store i32 16, i32* %nj, align 4, !dbg !24
  %2 = bitcast i32* %nk to i8*, !dbg !25
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #3, !dbg !25
  call void @llvm.dbg.declare(metadata i32* %nk, metadata !26, metadata !DIExpression()), !dbg !27
  store i32 16, i32* %nk, align 4, !dbg !27
  %3 = bitcast i32* %i to i8*, !dbg !28
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #3, !dbg !28
  call void @llvm.dbg.declare(metadata i32* %i, metadata !29, metadata !DIExpression()), !dbg !30
  %4 = bitcast i32* %j to i8*, !dbg !28
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #3, !dbg !28
  call void @llvm.dbg.declare(metadata i32* %j, metadata !31, metadata !DIExpression()), !dbg !32
  %5 = bitcast i32* %k to i8*, !dbg !28
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #3, !dbg !28
  call void @llvm.dbg.declare(metadata i32* %k, metadata !33, metadata !DIExpression()), !dbg !34
  %6 = bitcast [256 x float]* %A to i8*, !dbg !35
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* %6) #3, !dbg !35
  call void @llvm.dbg.declare(metadata [256 x float]* %A, metadata !36, metadata !DIExpression()), !dbg !40
  %A1 = bitcast [256 x float]* %A to i8*, !dbg !35
  call void @llvm.var.annotation(i8* %A1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 48), !dbg !35
  %7 = bitcast [256 x float]* %B to i8*, !dbg !41
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* %7) #3, !dbg !41
  call void @llvm.dbg.declare(metadata [256 x float]* %B, metadata !42, metadata !DIExpression()), !dbg !43
  %B2 = bitcast [256 x float]* %B to i8*, !dbg !41
  call void @llvm.var.annotation(i8* %B2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 49), !dbg !41
  %8 = bitcast [256 x float]* %D to i8*, !dbg !44
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* %8) #3, !dbg !44
  call void @llvm.dbg.declare(metadata [256 x float]* %D, metadata !45, metadata !DIExpression()), !dbg !46
  %D3 = bitcast [256 x float]* %D to i8*, !dbg !44
  call void @llvm.var.annotation(i8* %D3, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 50), !dbg !44
  br label %VITIS_LOOP_52_1, !dbg !44

VITIS_LOOP_52_1:                                  ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !47
  br label %for.cond, !dbg !49

for.cond:                                         ; preds = %for.inc11, %VITIS_LOOP_52_1
  %9 = load i32, i32* %i, align 4, !dbg !50
  %10 = load i32, i32* %ni, align 4, !dbg !52
  %cmp = icmp slt i32 %9, %10, !dbg !53
  br i1 %cmp, label %for.body, label %for.end13, !dbg !54

for.body:                                         ; preds = %for.cond
  br label %VITIS_LOOP_53_2, !dbg !55

VITIS_LOOP_53_2:                                  ; preds = %for.body
  store i32 0, i32* %j, align 4, !dbg !56
  br label %for.cond4, !dbg !59

for.cond4:                                        ; preds = %for.inc, %VITIS_LOOP_53_2
  %11 = load i32, i32* %j, align 4, !dbg !60
  %12 = load i32, i32* %nk, align 4, !dbg !62
  %cmp5 = icmp slt i32 %11, %12, !dbg !63
  br i1 %cmp5, label %for.body6, label %for.end, !dbg !64

for.body6:                                        ; preds = %for.cond4
  %13 = load i32, i32* %i, align 4, !dbg !65
  %14 = load i32, i32* %j, align 4, !dbg !67
  %mul = mul nsw i32 %13, %14, !dbg !68
  %add = add nsw i32 %mul, 1, !dbg !69
  %15 = load i32, i32* %ni, align 4, !dbg !70
  %rem = srem i32 %add, %15, !dbg !71
  %conv = sitofp i32 %rem to float, !dbg !72
  %mul7 = fmul float 5.000000e+00, %conv, !dbg !73
  %16 = load i32, i32* %ni, align 4, !dbg !74
  %conv8 = sitofp i32 %16 to float, !dbg !74
  %div = fdiv float %mul7, %conv8, !dbg !75
  %17 = load i32, i32* %i, align 4, !dbg !76
  %18 = load i32, i32* %nk, align 4, !dbg !77
  %mul9 = mul nsw i32 %17, %18, !dbg !78
  %19 = load i32, i32* %j, align 4, !dbg !79
  %add10 = add nsw i32 %mul9, %19, !dbg !80
  %idxprom = sext i32 %add10 to i64, !dbg !81
  %arrayidx = getelementptr inbounds [256 x float], [256 x float]* %A, i64 0, i64 %idxprom, !dbg !81
  store float %div, float* %arrayidx, align 4, !dbg !82
  br label %for.inc, !dbg !83

for.inc:                                          ; preds = %for.body6
  %20 = load i32, i32* %j, align 4, !dbg !84
  %inc = add nsw i32 %20, 1, !dbg !84
  store i32 %inc, i32* %j, align 4, !dbg !84
  br label %for.cond4, !dbg !85, !llvm.loop !86

for.end:                                          ; preds = %for.cond4
  br label %for.inc11, !dbg !89

for.inc11:                                        ; preds = %for.end
  %21 = load i32, i32* %i, align 4, !dbg !90
  %inc12 = add nsw i32 %21, 1, !dbg !90
  store i32 %inc12, i32* %i, align 4, !dbg !90
  br label %for.cond, !dbg !91, !llvm.loop !92

for.end13:                                        ; preds = %for.cond
  br label %VITIS_LOOP_57_3, !dbg !93

VITIS_LOOP_57_3:                                  ; preds = %for.end13
  store i32 0, i32* %i, align 4, !dbg !95
  br label %for.cond14, !dbg !97

for.cond14:                                       ; preds = %for.inc34, %VITIS_LOOP_57_3
  %22 = load i32, i32* %i, align 4, !dbg !98
  %23 = load i32, i32* %nk, align 4, !dbg !100
  %cmp15 = icmp slt i32 %22, %23, !dbg !101
  br i1 %cmp15, label %for.body16, label %for.end36, !dbg !102

for.body16:                                       ; preds = %for.cond14
  br label %VITIS_LOOP_58_4, !dbg !103

VITIS_LOOP_58_4:                                  ; preds = %for.body16
  store i32 0, i32* %j, align 4, !dbg !104
  br label %for.cond17, !dbg !107

for.cond17:                                       ; preds = %for.inc31, %VITIS_LOOP_58_4
  %24 = load i32, i32* %j, align 4, !dbg !108
  %25 = load i32, i32* %nj, align 4, !dbg !110
  %cmp18 = icmp slt i32 %24, %25, !dbg !111
  br i1 %cmp18, label %for.body19, label %for.end33, !dbg !112

for.body19:                                       ; preds = %for.cond17
  %26 = load i32, i32* %i, align 4, !dbg !113
  %27 = load i32, i32* %j, align 4, !dbg !115
  %add20 = add nsw i32 %27, 1, !dbg !116
  %mul21 = mul nsw i32 %26, %add20, !dbg !117
  %28 = load i32, i32* %nj, align 4, !dbg !118
  %rem22 = srem i32 %mul21, %28, !dbg !119
  %conv23 = sitofp i32 %rem22 to float, !dbg !120
  %mul24 = fmul float 3.000000e+00, %conv23, !dbg !121
  %29 = load i32, i32* %nj, align 4, !dbg !122
  %conv25 = sitofp i32 %29 to float, !dbg !122
  %div26 = fdiv float %mul24, %conv25, !dbg !123
  %30 = load i32, i32* %i, align 4, !dbg !124
  %31 = load i32, i32* %nj, align 4, !dbg !125
  %mul27 = mul nsw i32 %30, %31, !dbg !126
  %32 = load i32, i32* %j, align 4, !dbg !127
  %add28 = add nsw i32 %mul27, %32, !dbg !128
  %idxprom29 = sext i32 %add28 to i64, !dbg !129
  %arrayidx30 = getelementptr inbounds [256 x float], [256 x float]* %B, i64 0, i64 %idxprom29, !dbg !129
  store float %div26, float* %arrayidx30, align 4, !dbg !130
  br label %for.inc31, !dbg !131

for.inc31:                                        ; preds = %for.body19
  %33 = load i32, i32* %j, align 4, !dbg !132
  %inc32 = add nsw i32 %33, 1, !dbg !132
  store i32 %inc32, i32* %j, align 4, !dbg !132
  br label %for.cond17, !dbg !133, !llvm.loop !134

for.end33:                                        ; preds = %for.cond17
  br label %for.inc34, !dbg !137

for.inc34:                                        ; preds = %for.end33
  %34 = load i32, i32* %i, align 4, !dbg !138
  %inc35 = add nsw i32 %34, 1, !dbg !138
  store i32 %inc35, i32* %i, align 4, !dbg !138
  br label %for.cond14, !dbg !139, !llvm.loop !140

for.end36:                                        ; preds = %for.cond14
  br label %VITIS_LOOP_62_5, !dbg !141

VITIS_LOOP_62_5:                                  ; preds = %for.end36
  store i32 0, i32* %i, align 4, !dbg !143
  br label %for.cond37, !dbg !145

for.cond37:                                       ; preds = %for.inc57, %VITIS_LOOP_62_5
  %35 = load i32, i32* %i, align 4, !dbg !146
  %36 = load i32, i32* %ni, align 4, !dbg !148
  %cmp38 = icmp slt i32 %35, %36, !dbg !149
  br i1 %cmp38, label %for.body39, label %for.end59, !dbg !150

for.body39:                                       ; preds = %for.cond37
  br label %VITIS_LOOP_63_6, !dbg !151

VITIS_LOOP_63_6:                                  ; preds = %for.body39
  store i32 0, i32* %j, align 4, !dbg !152
  br label %for.cond40, !dbg !155

for.cond40:                                       ; preds = %for.inc54, %VITIS_LOOP_63_6
  %37 = load i32, i32* %j, align 4, !dbg !156
  %38 = load i32, i32* %nj, align 4, !dbg !158
  %cmp41 = icmp slt i32 %37, %38, !dbg !159
  br i1 %cmp41, label %for.body42, label %for.end56, !dbg !160

for.body42:                                       ; preds = %for.cond40
  %39 = load i32, i32* %i, align 4, !dbg !161
  %40 = load i32, i32* %j, align 4, !dbg !163
  %add43 = add nsw i32 %40, 2, !dbg !164
  %mul44 = mul nsw i32 %39, %add43, !dbg !165
  %41 = load i32, i32* %nk, align 4, !dbg !166
  %rem45 = srem i32 %mul44, %41, !dbg !167
  %conv46 = sitofp i32 %rem45 to float, !dbg !168
  %mul47 = fmul float 5.000000e+00, %conv46, !dbg !169
  %42 = load i32, i32* %nk, align 4, !dbg !170
  %conv48 = sitofp i32 %42 to float, !dbg !170
  %div49 = fdiv float %mul47, %conv48, !dbg !171
  %43 = load i32, i32* %i, align 4, !dbg !172
  %44 = load i32, i32* %nj, align 4, !dbg !173
  %mul50 = mul nsw i32 %43, %44, !dbg !174
  %45 = load i32, i32* %j, align 4, !dbg !175
  %add51 = add nsw i32 %mul50, %45, !dbg !176
  %idxprom52 = sext i32 %add51 to i64, !dbg !177
  %arrayidx53 = getelementptr inbounds [256 x float], [256 x float]* %D, i64 0, i64 %idxprom52, !dbg !177
  store float %div49, float* %arrayidx53, align 4, !dbg !178
  br label %for.inc54, !dbg !179

for.inc54:                                        ; preds = %for.body42
  %46 = load i32, i32* %j, align 4, !dbg !180
  %inc55 = add nsw i32 %46, 1, !dbg !180
  store i32 %inc55, i32* %j, align 4, !dbg !180
  br label %for.cond40, !dbg !181, !llvm.loop !182

for.end56:                                        ; preds = %for.cond40
  br label %for.inc57, !dbg !185

for.inc57:                                        ; preds = %for.end56
  %47 = load i32, i32* %i, align 4, !dbg !186
  %inc58 = add nsw i32 %47, 1, !dbg !186
  store i32 %inc58, i32* %i, align 4, !dbg !186
  br label %for.cond37, !dbg !187, !llvm.loop !188

for.end59:                                        ; preds = %for.cond37
  call void @llvm.dbg.declare(metadata float* %alpha, metadata !191, metadata !DIExpression()), !dbg !192
  %alpha60 = bitcast float* %alpha to i8*, !dbg !193
  call void @llvm.var.annotation(i8* %alpha60, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 69), !dbg !193
  store float 0x3FF3333340000000, float* %alpha, align 4, !dbg !192
  call void @llvm.dbg.declare(metadata float* %beta, metadata !194, metadata !DIExpression()), !dbg !195
  %beta61 = bitcast float* %beta to i8*, !dbg !196
  call void @llvm.var.annotation(i8* %beta61, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 70), !dbg !196
  store float 1.500000e+00, float* %beta, align 4, !dbg !195
  call void @llvm.dbg.declare(metadata float* %fg, metadata !197, metadata !DIExpression()), !dbg !198
  %fg62 = bitcast float* %fg to i8*, !dbg !199
  call void @llvm.var.annotation(i8* %fg62, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 71), !dbg !199
  %48 = load float, float* %gamma.addr, align 4, !dbg !200
  store float %48, float* %fg, align 4, !dbg !198
  call void @llvm.dbg.declare(metadata float* %tmp, metadata !201, metadata !DIExpression()), !dbg !202
  %tmp63 = bitcast float* %tmp to i8*, !dbg !203
  call void @llvm.var.annotation(i8* %tmp63, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 72), !dbg !203
  store float 0.000000e+00, float* %tmp, align 4, !dbg !202
  call void @llvm.dbg.declare(metadata float* %sum, metadata !204, metadata !DIExpression()), !dbg !205
  %sum64 = bitcast float* %sum to i8*, !dbg !206
  call void @llvm.var.annotation(i8* %sum64, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 73), !dbg !206
  store float 0.000000e+00, float* %sum, align 4, !dbg !205
  call void @llvm.dbg.declare(metadata float* %z, metadata !207, metadata !DIExpression()), !dbg !208
  %z65 = bitcast float* %z to i8*, !dbg !209
  call void @llvm.var.annotation(i8* %z65, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 74), !dbg !209
  call void @llvm.dbg.declare(metadata i32* %ii, metadata !210, metadata !DIExpression()), !dbg !211
  call void @llvm.dbg.declare(metadata i32* %jj, metadata !212, metadata !DIExpression()), !dbg !213
  br label %VITIS_LOOP_76_7, !dbg !214

VITIS_LOOP_76_7:                                  ; preds = %for.end59
  store i32 0, i32* %ii, align 4, !dbg !215
  br label %for.cond66, !dbg !217

for.cond66:                                       ; preds = %for.inc110, %VITIS_LOOP_76_7
  %49 = load i32, i32* %ii, align 4, !dbg !218
  %cmp67 = icmp slt i32 %49, 16, !dbg !220
  br i1 %cmp67, label %for.body68, label %for.end112, !dbg !221

for.body68:                                       ; preds = %for.cond66
  br label %VITIS_LOOP_78_8, !dbg !222

VITIS_LOOP_78_8:                                  ; preds = %for.body68
  store i32 0, i32* %jj, align 4, !dbg !223
  br label %for.cond69, !dbg !226

for.cond69:                                       ; preds = %for.inc107, %VITIS_LOOP_78_8
  %50 = load i32, i32* %jj, align 4, !dbg !227
  %cmp70 = icmp slt i32 %50, 16, !dbg !229
  br i1 %cmp70, label %for.body71, label %for.end109, !dbg !230

for.body71:                                       ; preds = %for.cond69
  store float 0.000000e+00, float* %tmp, align 4, !dbg !231
  br label %VITIS_LOOP_82_9, !dbg !233

VITIS_LOOP_82_9:                                  ; preds = %for.body71
  store i32 0, i32* %k, align 4, !dbg !234
  br label %for.cond72, !dbg !236

for.cond72:                                       ; preds = %for.inc86, %VITIS_LOOP_82_9
  %51 = load i32, i32* %k, align 4, !dbg !237
  %cmp73 = icmp slt i32 %51, 16, !dbg !239
  br i1 %cmp73, label %for.body74, label %for.end88, !dbg !240

for.body74:                                       ; preds = %for.cond72
  %52 = load i32, i32* %ii, align 4, !dbg !241
  %mul75 = mul nsw i32 %52, 16, !dbg !243
  %53 = load i32, i32* %k, align 4, !dbg !244
  %add76 = add nsw i32 %mul75, %53, !dbg !245
  %idxprom77 = sext i32 %add76 to i64, !dbg !246
  %arrayidx78 = getelementptr inbounds [256 x float], [256 x float]* %A, i64 0, i64 %idxprom77, !dbg !246
  %54 = load float, float* %arrayidx78, align 4, !dbg !246
  %55 = load i32, i32* %k, align 4, !dbg !247
  %mul79 = mul nsw i32 %55, 16, !dbg !248
  %56 = load i32, i32* %jj, align 4, !dbg !249
  %add80 = add nsw i32 %mul79, %56, !dbg !250
  %idxprom81 = sext i32 %add80 to i64, !dbg !251
  %arrayidx82 = getelementptr inbounds [256 x float], [256 x float]* %B, i64 0, i64 %idxprom81, !dbg !251
  %57 = load float, float* %arrayidx82, align 4, !dbg !251
  %mul83 = fmul float %54, %57, !dbg !252
  %58 = load float, float* %alpha, align 4, !dbg !253
  %mul84 = fmul float %mul83, %58, !dbg !254
  store float %mul84, float* %z, align 4, !dbg !255
  %59 = load float, float* %tmp, align 4, !dbg !256
  %60 = load float, float* %z, align 4, !dbg !257
  %add85 = fadd float %59, %60, !dbg !258
  store float %add85, float* %tmp, align 4, !dbg !259
  br label %for.inc86, !dbg !260

for.inc86:                                        ; preds = %for.body74
  %61 = load i32, i32* %k, align 4, !dbg !261
  %inc87 = add nsw i32 %61, 1, !dbg !261
  store i32 %inc87, i32* %k, align 4, !dbg !261
  br label %for.cond72, !dbg !262, !llvm.loop !263

for.end88:                                        ; preds = %for.cond72
  %62 = load i32, i32* %ii, align 4, !dbg !268
  %mul89 = mul nsw i32 %62, 16, !dbg !269
  %63 = load i32, i32* %jj, align 4, !dbg !270
  %add90 = add nsw i32 %mul89, %63, !dbg !271
  %idxprom91 = sext i32 %add90 to i64, !dbg !272
  %arrayidx92 = getelementptr inbounds [256 x float], [256 x float]* %D, i64 0, i64 %idxprom91, !dbg !272
  %64 = load float, float* %arrayidx92, align 4, !dbg !272
  %65 = load float, float* %beta, align 4, !dbg !273
  %mul93 = fmul float %64, %65, !dbg !274
  %66 = load i32, i32* %ii, align 4, !dbg !275
  %mul94 = mul nsw i32 %66, 16, !dbg !276
  %67 = load i32, i32* %jj, align 4, !dbg !277
  %add95 = add nsw i32 %mul94, %67, !dbg !278
  %idxprom96 = sext i32 %add95 to i64, !dbg !279
  %arrayidx97 = getelementptr inbounds [256 x float], [256 x float]* %D, i64 0, i64 %idxprom96, !dbg !279
  store float %mul93, float* %arrayidx97, align 4, !dbg !280
  %68 = load i32, i32* %ii, align 4, !dbg !281
  %mul98 = mul nsw i32 %68, 16, !dbg !282
  %69 = load i32, i32* %jj, align 4, !dbg !283
  %add99 = add nsw i32 %mul98, %69, !dbg !284
  %idxprom100 = sext i32 %add99 to i64, !dbg !285
  %arrayidx101 = getelementptr inbounds [256 x float], [256 x float]* %D, i64 0, i64 %idxprom100, !dbg !285
  %70 = load float, float* %arrayidx101, align 4, !dbg !285
  %71 = load float, float* %tmp, align 4, !dbg !286
  %add102 = fadd float %70, %71, !dbg !287
  %72 = load i32, i32* %ii, align 4, !dbg !288
  %mul103 = mul nsw i32 %72, 16, !dbg !289
  %73 = load i32, i32* %jj, align 4, !dbg !290
  %add104 = add nsw i32 %mul103, %73, !dbg !291
  %idxprom105 = sext i32 %add104 to i64, !dbg !292
  %arrayidx106 = getelementptr inbounds [256 x float], [256 x float]* %D, i64 0, i64 %idxprom105, !dbg !292
  store float %add102, float* %arrayidx106, align 4, !dbg !293
  br label %for.inc107, !dbg !294

for.inc107:                                       ; preds = %for.end88
  %74 = load i32, i32* %jj, align 4, !dbg !295
  %inc108 = add nsw i32 %74, 1, !dbg !295
  store i32 %inc108, i32* %jj, align 4, !dbg !295
  br label %for.cond69, !dbg !296, !llvm.loop !297

for.end109:                                       ; preds = %for.cond69
  br label %for.inc110, !dbg !302

for.inc110:                                       ; preds = %for.end109
  %75 = load i32, i32* %ii, align 4, !dbg !303
  %inc111 = add nsw i32 %75, 1, !dbg !303
  store i32 %inc111, i32* %ii, align 4, !dbg !303
  br label %for.cond66, !dbg !304, !llvm.loop !305

for.end112:                                       ; preds = %for.cond66
  br label %VITIS_LOOP_92_10, !dbg !306

VITIS_LOOP_92_10:                                 ; preds = %for.end112
  store i32 0, i32* %ii, align 4, !dbg !310
  br label %for.cond113, !dbg !312

for.cond113:                                      ; preds = %for.inc127, %VITIS_LOOP_92_10
  %76 = load i32, i32* %ii, align 4, !dbg !313
  %cmp114 = icmp slt i32 %76, 16, !dbg !315
  br i1 %cmp114, label %for.body115, label %for.end129, !dbg !316

for.body115:                                      ; preds = %for.cond113
  br label %VITIS_LOOP_95_11, !dbg !317

VITIS_LOOP_95_11:                                 ; preds = %for.body115
  store i32 0, i32* %jj, align 4, !dbg !318
  br label %for.cond116, !dbg !321

for.cond116:                                      ; preds = %for.inc124, %VITIS_LOOP_95_11
  %77 = load i32, i32* %jj, align 4, !dbg !322
  %cmp117 = icmp slt i32 %77, 16, !dbg !324
  br i1 %cmp117, label %for.body118, label %for.end126, !dbg !325

for.body118:                                      ; preds = %for.cond116
  %78 = load i32, i32* %ii, align 4, !dbg !326
  %mul119 = mul nsw i32 %78, 16, !dbg !328
  %79 = load i32, i32* %jj, align 4, !dbg !329
  %add120 = add nsw i32 %mul119, %79, !dbg !330
  %idxprom121 = sext i32 %add120 to i64, !dbg !331
  %arrayidx122 = getelementptr inbounds [256 x float], [256 x float]* %D, i64 0, i64 %idxprom121, !dbg !331
  %80 = load float, float* %arrayidx122, align 4, !dbg !331
  %81 = load float, float* %sum, align 4, !dbg !332
  %add123 = fadd float %81, %80, !dbg !332
  store float %add123, float* %sum, align 4, !dbg !332
  br label %for.inc124, !dbg !333

for.inc124:                                       ; preds = %for.body118
  %82 = load i32, i32* %jj, align 4, !dbg !334
  %inc125 = add nsw i32 %82, 1, !dbg !334
  store i32 %inc125, i32* %jj, align 4, !dbg !334
  br label %for.cond116, !dbg !335, !llvm.loop !336

for.end126:                                       ; preds = %for.cond116
  br label %for.inc127, !dbg !339

for.inc127:                                       ; preds = %for.end126
  %83 = load i32, i32* %ii, align 4, !dbg !340
  %inc128 = add nsw i32 %83, 1, !dbg !340
  store i32 %inc128, i32* %ii, align 4, !dbg !340
  br label %for.cond113, !dbg !341, !llvm.loop !342

for.end129:                                       ; preds = %for.cond113
  %84 = load float, float* %sum, align 4, !dbg !347
  %85 = load float, float* %fg, align 4, !dbg !348
  %mul130 = fmul float %84, %85, !dbg !349
  %86 = bitcast [256 x float]* %D to i8*, !dbg !350
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* %86) #3, !dbg !350
  %87 = bitcast [256 x float]* %B to i8*, !dbg !350
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* %87) #3, !dbg !350
  %88 = bitcast [256 x float]* %A to i8*, !dbg !350
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* %88) #3, !dbg !350
  %89 = bitcast i32* %k to i8*, !dbg !350
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %89) #3, !dbg !350
  %90 = bitcast i32* %j to i8*, !dbg !350
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %90) #3, !dbg !350
  %91 = bitcast i32* %i to i8*, !dbg !350
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %91) #3, !dbg !350
  %92 = bitcast i32* %nk to i8*, !dbg !350
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %92) #3, !dbg !350
  %93 = bitcast i32* %nj to i8*, !dbg !350
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %93) #3, !dbg !350
  %94 = bitcast i32* %ni to i8*, !dbg !350
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %94) #3, !dbg !350
  ret float %mul130, !dbg !351
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
!1 = !DIFile(filename: "/home/bruno/Desktop/benchmarks/gemm_large/proj_gemm/solution1/.autopilot/db/gemm_taffoin.pp.0.c", directory: "/home/bruno/Desktop/benchmarks/gemm_large")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!5 = !{!"clang version 7.0.0 "}
!6 = !{i32 2, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = distinct !DISubprogram(name: "mm", scope: !10, file: !10, line: 41, type: !11, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DIFile(filename: "gemm_taffoin.c", directory: "/home/bruno/Desktop/benchmarks/gemm_large")
!11 = !DISubroutineType(types: !12)
!12 = !{!4, !4}
!13 = !{!14}
!14 = !{!"fpga.top", !"user", !15}
!15 = !DILocation(line: 41, column: 16, scope: !9)
!16 = !DILocalVariable(name: "gamma", arg: 1, scope: !9, file: !10, line: 41, type: !4)
!17 = !DILocation(line: 41, column: 53, scope: !9)
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
!29 = !DILocalVariable(name: "i", scope: !9, file: !10, line: 47, type: !20)
!30 = !DILocation(line: 47, column: 9, scope: !9)
!31 = !DILocalVariable(name: "j", scope: !9, file: !10, line: 47, type: !20)
!32 = !DILocation(line: 47, column: 12, scope: !9)
!33 = !DILocalVariable(name: "k", scope: !9, file: !10, line: 47, type: !20)
!34 = !DILocation(line: 47, column: 15, scope: !9)
!35 = !DILocation(line: 48, column: 5, scope: !9)
!36 = !DILocalVariable(name: "A", scope: !9, file: !10, line: 48, type: !37)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !38)
!38 = !{!39}
!39 = !DISubrange(count: 256)
!40 = !DILocation(line: 48, column: 11, scope: !9)
!41 = !DILocation(line: 49, column: 5, scope: !9)
!42 = !DILocalVariable(name: "B", scope: !9, file: !10, line: 49, type: !37)
!43 = !DILocation(line: 49, column: 11, scope: !9)
!44 = !DILocation(line: 50, column: 5, scope: !9)
!45 = !DILocalVariable(name: "D", scope: !9, file: !10, line: 50, type: !37)
!46 = !DILocation(line: 50, column: 11, scope: !9)
!47 = !DILocation(line: 52, column: 29, scope: !48)
!48 = distinct !DILexicalBlock(scope: !9, file: !10, line: 52, column: 22)
!49 = !DILocation(line: 52, column: 27, scope: !48)
!50 = !DILocation(line: 52, column: 34, scope: !51)
!51 = distinct !DILexicalBlock(scope: !48, file: !10, line: 52, column: 22)
!52 = !DILocation(line: 52, column: 38, scope: !51)
!53 = !DILocation(line: 52, column: 36, scope: !51)
!54 = !DILocation(line: 52, column: 22, scope: !48)
!55 = !DILocation(line: 52, column: 46, scope: !51)
!56 = !DILocation(line: 53, column: 33, scope: !57)
!57 = distinct !DILexicalBlock(scope: !58, file: !10, line: 53, column: 26)
!58 = distinct !DILexicalBlock(scope: !51, file: !10, line: 52, column: 46)
!59 = !DILocation(line: 53, column: 31, scope: !57)
!60 = !DILocation(line: 53, column: 38, scope: !61)
!61 = distinct !DILexicalBlock(scope: !57, file: !10, line: 53, column: 26)
!62 = !DILocation(line: 53, column: 42, scope: !61)
!63 = !DILocation(line: 53, column: 40, scope: !61)
!64 = !DILocation(line: 53, column: 26, scope: !57)
!65 = !DILocation(line: 54, column: 39, scope: !66)
!66 = distinct !DILexicalBlock(scope: !61, file: !10, line: 53, column: 50)
!67 = !DILocation(line: 54, column: 41, scope: !66)
!68 = !DILocation(line: 54, column: 40, scope: !66)
!69 = !DILocation(line: 54, column: 42, scope: !66)
!70 = !DILocation(line: 54, column: 48, scope: !66)
!71 = !DILocation(line: 54, column: 46, scope: !66)
!72 = !DILocation(line: 54, column: 37, scope: !66)
!73 = !DILocation(line: 54, column: 35, scope: !66)
!74 = !DILocation(line: 54, column: 54, scope: !66)
!75 = !DILocation(line: 54, column: 52, scope: !66)
!76 = !DILocation(line: 54, column: 15, scope: !66)
!77 = !DILocation(line: 54, column: 17, scope: !66)
!78 = !DILocation(line: 54, column: 16, scope: !66)
!79 = !DILocation(line: 54, column: 20, scope: !66)
!80 = !DILocation(line: 54, column: 19, scope: !66)
!81 = !DILocation(line: 54, column: 13, scope: !66)
!82 = !DILocation(line: 54, column: 23, scope: !66)
!83 = !DILocation(line: 55, column: 13, scope: !66)
!84 = !DILocation(line: 53, column: 47, scope: !61)
!85 = !DILocation(line: 53, column: 26, scope: !61)
!86 = distinct !{!86, !64, !87, !88}
!87 = !DILocation(line: 55, column: 13, scope: !57)
!88 = !{!"llvm.loop.name", !"VITIS_LOOP_53_2"}
!89 = !DILocation(line: 56, column: 5, scope: !58)
!90 = !DILocation(line: 52, column: 43, scope: !51)
!91 = !DILocation(line: 52, column: 22, scope: !51)
!92 = distinct !{!92, !54, !93, !94}
!93 = !DILocation(line: 56, column: 5, scope: !48)
!94 = !{!"llvm.loop.name", !"VITIS_LOOP_52_1"}
!95 = !DILocation(line: 57, column: 29, scope: !96)
!96 = distinct !DILexicalBlock(scope: !9, file: !10, line: 57, column: 22)
!97 = !DILocation(line: 57, column: 27, scope: !96)
!98 = !DILocation(line: 57, column: 34, scope: !99)
!99 = distinct !DILexicalBlock(scope: !96, file: !10, line: 57, column: 22)
!100 = !DILocation(line: 57, column: 38, scope: !99)
!101 = !DILocation(line: 57, column: 36, scope: !99)
!102 = !DILocation(line: 57, column: 22, scope: !96)
!103 = !DILocation(line: 57, column: 46, scope: !99)
!104 = !DILocation(line: 58, column: 33, scope: !105)
!105 = distinct !DILexicalBlock(scope: !106, file: !10, line: 58, column: 26)
!106 = distinct !DILexicalBlock(scope: !99, file: !10, line: 57, column: 46)
!107 = !DILocation(line: 58, column: 31, scope: !105)
!108 = !DILocation(line: 58, column: 38, scope: !109)
!109 = distinct !DILexicalBlock(scope: !105, file: !10, line: 58, column: 26)
!110 = !DILocation(line: 58, column: 42, scope: !109)
!111 = !DILocation(line: 58, column: 40, scope: !109)
!112 = !DILocation(line: 58, column: 26, scope: !105)
!113 = !DILocation(line: 59, column: 38, scope: !114)
!114 = distinct !DILexicalBlock(scope: !109, file: !10, line: 58, column: 50)
!115 = !DILocation(line: 59, column: 41, scope: !114)
!116 = !DILocation(line: 59, column: 42, scope: !114)
!117 = !DILocation(line: 59, column: 39, scope: !114)
!118 = !DILocation(line: 59, column: 48, scope: !114)
!119 = !DILocation(line: 59, column: 46, scope: !114)
!120 = !DILocation(line: 59, column: 37, scope: !114)
!121 = !DILocation(line: 59, column: 35, scope: !114)
!122 = !DILocation(line: 59, column: 54, scope: !114)
!123 = !DILocation(line: 59, column: 52, scope: !114)
!124 = !DILocation(line: 59, column: 15, scope: !114)
!125 = !DILocation(line: 59, column: 17, scope: !114)
!126 = !DILocation(line: 59, column: 16, scope: !114)
!127 = !DILocation(line: 59, column: 20, scope: !114)
!128 = !DILocation(line: 59, column: 19, scope: !114)
!129 = !DILocation(line: 59, column: 13, scope: !114)
!130 = !DILocation(line: 59, column: 23, scope: !114)
!131 = !DILocation(line: 60, column: 9, scope: !114)
!132 = !DILocation(line: 58, column: 47, scope: !109)
!133 = !DILocation(line: 58, column: 26, scope: !109)
!134 = distinct !{!134, !112, !135, !136}
!135 = !DILocation(line: 60, column: 9, scope: !105)
!136 = !{!"llvm.loop.name", !"VITIS_LOOP_58_4"}
!137 = !DILocation(line: 61, column: 5, scope: !106)
!138 = !DILocation(line: 57, column: 43, scope: !99)
!139 = !DILocation(line: 57, column: 22, scope: !99)
!140 = distinct !{!140, !102, !141, !142}
!141 = !DILocation(line: 61, column: 5, scope: !96)
!142 = !{!"llvm.loop.name", !"VITIS_LOOP_57_3"}
!143 = !DILocation(line: 62, column: 29, scope: !144)
!144 = distinct !DILexicalBlock(scope: !9, file: !10, line: 62, column: 22)
!145 = !DILocation(line: 62, column: 27, scope: !144)
!146 = !DILocation(line: 62, column: 34, scope: !147)
!147 = distinct !DILexicalBlock(scope: !144, file: !10, line: 62, column: 22)
!148 = !DILocation(line: 62, column: 38, scope: !147)
!149 = !DILocation(line: 62, column: 36, scope: !147)
!150 = !DILocation(line: 62, column: 22, scope: !144)
!151 = !DILocation(line: 62, column: 46, scope: !147)
!152 = !DILocation(line: 63, column: 33, scope: !153)
!153 = distinct !DILexicalBlock(scope: !154, file: !10, line: 63, column: 26)
!154 = distinct !DILexicalBlock(scope: !147, file: !10, line: 62, column: 46)
!155 = !DILocation(line: 63, column: 31, scope: !153)
!156 = !DILocation(line: 63, column: 38, scope: !157)
!157 = distinct !DILexicalBlock(scope: !153, file: !10, line: 63, column: 26)
!158 = !DILocation(line: 63, column: 42, scope: !157)
!159 = !DILocation(line: 63, column: 40, scope: !157)
!160 = !DILocation(line: 63, column: 26, scope: !153)
!161 = !DILocation(line: 64, column: 38, scope: !162)
!162 = distinct !DILexicalBlock(scope: !157, file: !10, line: 63, column: 50)
!163 = !DILocation(line: 64, column: 41, scope: !162)
!164 = !DILocation(line: 64, column: 42, scope: !162)
!165 = !DILocation(line: 64, column: 39, scope: !162)
!166 = !DILocation(line: 64, column: 48, scope: !162)
!167 = !DILocation(line: 64, column: 46, scope: !162)
!168 = !DILocation(line: 64, column: 37, scope: !162)
!169 = !DILocation(line: 64, column: 35, scope: !162)
!170 = !DILocation(line: 64, column: 54, scope: !162)
!171 = !DILocation(line: 64, column: 52, scope: !162)
!172 = !DILocation(line: 64, column: 15, scope: !162)
!173 = !DILocation(line: 64, column: 17, scope: !162)
!174 = !DILocation(line: 64, column: 16, scope: !162)
!175 = !DILocation(line: 64, column: 20, scope: !162)
!176 = !DILocation(line: 64, column: 19, scope: !162)
!177 = !DILocation(line: 64, column: 13, scope: !162)
!178 = !DILocation(line: 64, column: 23, scope: !162)
!179 = !DILocation(line: 65, column: 9, scope: !162)
!180 = !DILocation(line: 63, column: 47, scope: !157)
!181 = !DILocation(line: 63, column: 26, scope: !157)
!182 = distinct !{!182, !160, !183, !184}
!183 = !DILocation(line: 65, column: 9, scope: !153)
!184 = !{!"llvm.loop.name", !"VITIS_LOOP_63_6"}
!185 = !DILocation(line: 66, column: 5, scope: !154)
!186 = !DILocation(line: 62, column: 43, scope: !147)
!187 = !DILocation(line: 62, column: 22, scope: !147)
!188 = distinct !{!188, !150, !189, !190}
!189 = !DILocation(line: 66, column: 5, scope: !144)
!190 = !{!"llvm.loop.name", !"VITIS_LOOP_62_5"}
!191 = !DILocalVariable(name: "alpha", scope: !9, file: !10, line: 69, type: !4)
!192 = !DILocation(line: 69, column: 49, scope: !9)
!193 = !DILocation(line: 69, column: 5, scope: !9)
!194 = !DILocalVariable(name: "beta", scope: !9, file: !10, line: 70, type: !4)
!195 = !DILocation(line: 70, column: 49, scope: !9)
!196 = !DILocation(line: 70, column: 5, scope: !9)
!197 = !DILocalVariable(name: "fg", scope: !9, file: !10, line: 71, type: !4)
!198 = !DILocation(line: 71, column: 65, scope: !9)
!199 = !DILocation(line: 71, column: 5, scope: !9)
!200 = !DILocation(line: 71, column: 70, scope: !9)
!201 = !DILocalVariable(name: "tmp", scope: !9, file: !10, line: 72, type: !4)
!202 = !DILocation(line: 72, column: 65, scope: !9)
!203 = !DILocation(line: 72, column: 5, scope: !9)
!204 = !DILocalVariable(name: "sum", scope: !9, file: !10, line: 73, type: !4)
!205 = !DILocation(line: 73, column: 65, scope: !9)
!206 = !DILocation(line: 73, column: 5, scope: !9)
!207 = !DILocalVariable(name: "z", scope: !9, file: !10, line: 74, type: !4)
!208 = !DILocation(line: 74, column: 11, scope: !9)
!209 = !DILocation(line: 74, column: 5, scope: !9)
!210 = !DILocalVariable(name: "ii", scope: !9, file: !10, line: 75, type: !20)
!211 = !DILocation(line: 75, column: 9, scope: !9)
!212 = !DILocalVariable(name: "jj", scope: !9, file: !10, line: 75, type: !20)
!213 = !DILocation(line: 75, column: 13, scope: !9)
!214 = !DILocation(line: 75, column: 5, scope: !9)
!215 = !DILocation(line: 76, column: 30, scope: !216)
!216 = distinct !DILexicalBlock(scope: !9, file: !10, line: 76, column: 22)
!217 = !DILocation(line: 76, column: 27, scope: !216)
!218 = !DILocation(line: 76, column: 35, scope: !219)
!219 = distinct !DILexicalBlock(scope: !216, file: !10, line: 76, column: 22)
!220 = !DILocation(line: 76, column: 38, scope: !219)
!221 = !DILocation(line: 76, column: 22, scope: !216)
!222 = !DILocation(line: 76, column: 49, scope: !219)
!223 = !DILocation(line: 78, column: 27, scope: !224)
!224 = distinct !DILexicalBlock(scope: !225, file: !10, line: 78, column: 19)
!225 = distinct !DILexicalBlock(scope: !219, file: !10, line: 76, column: 49)
!226 = !DILocation(line: 78, column: 24, scope: !224)
!227 = !DILocation(line: 78, column: 32, scope: !228)
!228 = distinct !DILexicalBlock(scope: !224, file: !10, line: 78, column: 19)
!229 = !DILocation(line: 78, column: 35, scope: !228)
!230 = !DILocation(line: 78, column: 19, scope: !224)
!231 = !DILocation(line: 81, column: 6, scope: !232)
!232 = distinct !DILexicalBlock(scope: !228, file: !10, line: 79, column: 9)
!233 = !DILocation(line: 81, column: 2, scope: !232)
!234 = !DILocation(line: 82, column: 37, scope: !235)
!235 = distinct !DILexicalBlock(scope: !232, file: !10, line: 82, column: 30)
!236 = !DILocation(line: 82, column: 35, scope: !235)
!237 = !DILocation(line: 82, column: 42, scope: !238)
!238 = distinct !DILexicalBlock(scope: !235, file: !10, line: 82, column: 30)
!239 = !DILocation(line: 82, column: 44, scope: !238)
!240 = !DILocation(line: 82, column: 30, scope: !235)
!241 = !DILocation(line: 84, column: 8, scope: !242)
!242 = distinct !DILexicalBlock(scope: !238, file: !10, line: 82, column: 54)
!243 = !DILocation(line: 84, column: 10, scope: !242)
!244 = !DILocation(line: 84, column: 15, scope: !242)
!245 = !DILocation(line: 84, column: 14, scope: !242)
!246 = !DILocation(line: 84, column: 6, scope: !242)
!247 = !DILocation(line: 84, column: 22, scope: !242)
!248 = !DILocation(line: 84, column: 23, scope: !242)
!249 = !DILocation(line: 84, column: 28, scope: !242)
!250 = !DILocation(line: 84, column: 27, scope: !242)
!251 = !DILocation(line: 84, column: 20, scope: !242)
!252 = !DILocation(line: 84, column: 18, scope: !242)
!253 = !DILocation(line: 84, column: 34, scope: !242)
!254 = !DILocation(line: 84, column: 32, scope: !242)
!255 = !DILocation(line: 84, column: 4, scope: !242)
!256 = !DILocation(line: 85, column: 23, scope: !242)
!257 = !DILocation(line: 85, column: 29, scope: !242)
!258 = !DILocation(line: 85, column: 27, scope: !242)
!259 = !DILocation(line: 85, column: 21, scope: !242)
!260 = !DILocation(line: 86, column: 13, scope: !242)
!261 = !DILocation(line: 82, column: 51, scope: !238)
!262 = !DILocation(line: 82, column: 30, scope: !238)
!263 = distinct !{!263, !240, !264, !265, !267}
!264 = !DILocation(line: 86, column: 13, scope: !235)
!265 = !{!"llvm.loop.pipeline.enable", i32 1, i1 false, i8 -1, !"user", !266}
!266 = !DILocation(line: 83, column: 9, scope: !235)
!267 = !{!"llvm.loop.name", !"VITIS_LOOP_82_9"}
!268 = !DILocation(line: 87, column: 35, scope: !232)
!269 = !DILocation(line: 87, column: 37, scope: !232)
!270 = !DILocation(line: 87, column: 42, scope: !232)
!271 = !DILocation(line: 87, column: 41, scope: !232)
!272 = !DILocation(line: 87, column: 33, scope: !232)
!273 = !DILocation(line: 87, column: 48, scope: !232)
!274 = !DILocation(line: 87, column: 46, scope: !232)
!275 = !DILocation(line: 87, column: 20, scope: !232)
!276 = !DILocation(line: 87, column: 22, scope: !232)
!277 = !DILocation(line: 87, column: 27, scope: !232)
!278 = !DILocation(line: 87, column: 26, scope: !232)
!279 = !DILocation(line: 87, column: 18, scope: !232)
!280 = !DILocation(line: 87, column: 31, scope: !232)
!281 = !DILocation(line: 88, column: 35, scope: !232)
!282 = !DILocation(line: 88, column: 37, scope: !232)
!283 = !DILocation(line: 88, column: 42, scope: !232)
!284 = !DILocation(line: 88, column: 41, scope: !232)
!285 = !DILocation(line: 88, column: 33, scope: !232)
!286 = !DILocation(line: 88, column: 48, scope: !232)
!287 = !DILocation(line: 88, column: 46, scope: !232)
!288 = !DILocation(line: 88, column: 20, scope: !232)
!289 = !DILocation(line: 88, column: 22, scope: !232)
!290 = !DILocation(line: 88, column: 27, scope: !232)
!291 = !DILocation(line: 88, column: 26, scope: !232)
!292 = !DILocation(line: 88, column: 18, scope: !232)
!293 = !DILocation(line: 88, column: 31, scope: !232)
!294 = !DILocation(line: 90, column: 9, scope: !232)
!295 = !DILocation(line: 78, column: 43, scope: !228)
!296 = !DILocation(line: 78, column: 19, scope: !228)
!297 = distinct !{!297, !230, !298, !299, !301}
!298 = !DILocation(line: 90, column: 9, scope: !224)
!299 = !{!"llvm.loop.unroll.count", i32 4, !"user", !300}
!300 = !DILocation(line: 80, column: 9, scope: !224)
!301 = !{!"llvm.loop.name", !"VITIS_LOOP_78_8"}
!302 = !DILocation(line: 91, column: 5, scope: !225)
!303 = !DILocation(line: 76, column: 46, scope: !219)
!304 = !DILocation(line: 76, column: 22, scope: !219)
!305 = distinct !{!305, !221, !306, !307, !309}
!306 = !DILocation(line: 91, column: 5, scope: !216)
!307 = !{!"llvm.loop.pipeline.enable", i32 1, i1 false, i8 -1, !"user", !308}
!308 = !DILocation(line: 77, column: 9, scope: !216)
!309 = !{!"llvm.loop.name", !"VITIS_LOOP_76_7"}
!310 = !DILocation(line: 92, column: 31, scope: !311)
!311 = distinct !DILexicalBlock(scope: !9, file: !10, line: 92, column: 23)
!312 = !DILocation(line: 92, column: 28, scope: !311)
!313 = !DILocation(line: 92, column: 36, scope: !314)
!314 = distinct !DILexicalBlock(scope: !311, file: !10, line: 92, column: 23)
!315 = !DILocation(line: 92, column: 39, scope: !314)
!316 = !DILocation(line: 92, column: 23, scope: !311)
!317 = !DILocation(line: 93, column: 5, scope: !314)
!318 = !DILocation(line: 95, column: 28, scope: !319)
!319 = distinct !DILexicalBlock(scope: !320, file: !10, line: 95, column: 20)
!320 = distinct !DILexicalBlock(scope: !314, file: !10, line: 93, column: 5)
!321 = !DILocation(line: 95, column: 25, scope: !319)
!322 = !DILocation(line: 95, column: 33, scope: !323)
!323 = distinct !DILexicalBlock(scope: !319, file: !10, line: 95, column: 20)
!324 = !DILocation(line: 95, column: 36, scope: !323)
!325 = !DILocation(line: 95, column: 20, scope: !319)
!326 = !DILocation(line: 96, column: 19, scope: !327)
!327 = distinct !DILexicalBlock(scope: !323, file: !10, line: 95, column: 47)
!328 = !DILocation(line: 96, column: 21, scope: !327)
!329 = !DILocation(line: 96, column: 26, scope: !327)
!330 = !DILocation(line: 96, column: 25, scope: !327)
!331 = !DILocation(line: 96, column: 17, scope: !327)
!332 = !DILocation(line: 96, column: 14, scope: !327)
!333 = !DILocation(line: 97, column: 9, scope: !327)
!334 = !DILocation(line: 95, column: 44, scope: !323)
!335 = !DILocation(line: 95, column: 20, scope: !323)
!336 = distinct !{!336, !325, !337, !338}
!337 = !DILocation(line: 97, column: 9, scope: !319)
!338 = !{!"llvm.loop.name", !"VITIS_LOOP_95_11"}
!339 = !DILocation(line: 98, column: 5, scope: !320)
!340 = !DILocation(line: 92, column: 47, scope: !314)
!341 = !DILocation(line: 92, column: 23, scope: !314)
!342 = distinct !{!342, !316, !343, !344, !346}
!343 = !DILocation(line: 98, column: 5, scope: !311)
!344 = !{!"llvm.loop.pipeline.enable", i32 1, i1 false, i8 -1, !"user", !345}
!345 = !DILocation(line: 94, column: 9, scope: !311)
!346 = !{!"llvm.loop.name", !"VITIS_LOOP_92_10"}
!347 = !DILocation(line: 100, column: 13, scope: !9)
!348 = !DILocation(line: 100, column: 19, scope: !9)
!349 = !DILocation(line: 100, column: 17, scope: !9)
!350 = !DILocation(line: 101, column: 1, scope: !9)
!351 = !DILocation(line: 100, column: 5, scope: !9)
