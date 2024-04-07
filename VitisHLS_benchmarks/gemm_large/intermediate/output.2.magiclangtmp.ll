; ModuleID = '/home/bruno/Desktop/benchmarks/gemm_large/intermediate/output.1.magiclangtmp.ll'
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
define float @mm(float %gamma) #0 !dbg !9 !fpga.function.pragma !13 !taffo.start !16 !taffo.funinfo !17 {
entry:
  %gamma.addr = alloca float, align 4
  %ni = alloca i32, align 4
  %nj = alloca i32, align 4
  %nk = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %A = alloca [256 x float], align 4, !taffo.info !18
  %B = alloca [256 x float], align 4, !taffo.info !18
  %D = alloca [256 x float], align 4, !taffo.info !19, !taffo.target !21
  %alpha = alloca float, align 4, !taffo.info !18
  %beta = alloca float, align 4, !taffo.info !18
  %fg = alloca float, align 4, !taffo.info !19
  %tmp = alloca float, align 4, !taffo.info !19
  %sum = alloca float, align 4, !taffo.info !22
  %z = alloca float, align 4, !taffo.info !24
  %ii = alloca i32, align 4
  %jj = alloca i32, align 4
  store float %gamma, float* %gamma.addr, align 4
  call void @llvm.dbg.declare(metadata float* %gamma.addr, metadata !26, metadata !DIExpression()), !dbg !27
  %0 = bitcast i32* %ni to i8*, !dbg !28
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #3, !dbg !28
  call void @llvm.dbg.declare(metadata i32* %ni, metadata !29, metadata !DIExpression()), !dbg !31
  store i32 16, i32* %ni, align 4, !dbg !31
  %1 = bitcast i32* %nj to i8*, !dbg !32
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #3, !dbg !32
  call void @llvm.dbg.declare(metadata i32* %nj, metadata !33, metadata !DIExpression()), !dbg !34
  store i32 16, i32* %nj, align 4, !dbg !34
  %2 = bitcast i32* %nk to i8*, !dbg !35
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #3, !dbg !35
  call void @llvm.dbg.declare(metadata i32* %nk, metadata !36, metadata !DIExpression()), !dbg !37
  store i32 16, i32* %nk, align 4, !dbg !37
  %3 = bitcast i32* %i to i8*, !dbg !38
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #3, !dbg !38
  call void @llvm.dbg.declare(metadata i32* %i, metadata !39, metadata !DIExpression()), !dbg !40
  %4 = bitcast i32* %j to i8*, !dbg !38
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #3, !dbg !38
  call void @llvm.dbg.declare(metadata i32* %j, metadata !41, metadata !DIExpression()), !dbg !42
  %5 = bitcast i32* %k to i8*, !dbg !38
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #3, !dbg !38
  call void @llvm.dbg.declare(metadata i32* %k, metadata !43, metadata !DIExpression()), !dbg !44
  %6 = bitcast [256 x float]* %A to i8*, !dbg !45, !taffo.info !18
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* %6) #3, !dbg !45, !taffo.info !18
  call void @llvm.dbg.declare(metadata [256 x float]* %A, metadata !46, metadata !DIExpression()), !dbg !50
  %A1 = bitcast [256 x float]* %A to i8*, !dbg !45, !taffo.info !18
  %7 = bitcast [256 x float]* %B to i8*, !dbg !51, !taffo.info !18
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* %7) #3, !dbg !51, !taffo.info !18
  call void @llvm.dbg.declare(metadata [256 x float]* %B, metadata !52, metadata !DIExpression()), !dbg !53
  %B2 = bitcast [256 x float]* %B to i8*, !dbg !51, !taffo.info !18
  %8 = bitcast [256 x float]* %D to i8*, !dbg !54, !taffo.info !18, !taffo.target !21
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* %8) #3, !dbg !54, !taffo.info !18, !taffo.target !21
  call void @llvm.dbg.declare(metadata [256 x float]* %D, metadata !55, metadata !DIExpression()), !dbg !56
  %D3 = bitcast [256 x float]* %D to i8*, !dbg !54, !taffo.info !18, !taffo.target !21
  br label %VITIS_LOOP_52_1, !dbg !54

VITIS_LOOP_52_1:                                  ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !57
  br label %for.cond, !dbg !59

for.cond:                                         ; preds = %for.inc11, %VITIS_LOOP_52_1
  %9 = load i32, i32* %i, align 4, !dbg !60
  %10 = load i32, i32* %ni, align 4, !dbg !62
  %cmp = icmp slt i32 %9, %10, !dbg !63
  br i1 %cmp, label %for.body, label %for.end13, !dbg !64

for.body:                                         ; preds = %for.cond
  br label %VITIS_LOOP_53_2, !dbg !65

VITIS_LOOP_53_2:                                  ; preds = %for.body
  store i32 0, i32* %j, align 4, !dbg !66
  br label %for.cond4, !dbg !69

for.cond4:                                        ; preds = %for.inc, %VITIS_LOOP_53_2
  %11 = load i32, i32* %j, align 4, !dbg !70
  %12 = load i32, i32* %nk, align 4, !dbg !72
  %cmp5 = icmp slt i32 %11, %12, !dbg !73
  br i1 %cmp5, label %for.body6, label %for.end, !dbg !74

for.body6:                                        ; preds = %for.cond4
  %13 = load i32, i32* %i, align 4, !dbg !75
  %14 = load i32, i32* %j, align 4, !dbg !77
  %mul = mul nsw i32 %13, %14, !dbg !78
  %add = add nsw i32 %mul, 1, !dbg !79
  %15 = load i32, i32* %ni, align 4, !dbg !80
  %rem = srem i32 %add, %15, !dbg !81
  %conv = sitofp i32 %rem to float, !dbg !82
  %mul7 = fmul float 5.000000e+00, %conv, !dbg !83
  %16 = load i32, i32* %ni, align 4, !dbg !84
  %conv8 = sitofp i32 %16 to float, !dbg !84
  %div = fdiv float %mul7, %conv8, !dbg !85
  %17 = load i32, i32* %i, align 4, !dbg !86
  %18 = load i32, i32* %nk, align 4, !dbg !87
  %mul9 = mul nsw i32 %17, %18, !dbg !88
  %19 = load i32, i32* %j, align 4, !dbg !89
  %add10 = add nsw i32 %mul9, %19, !dbg !90
  %idxprom = sext i32 %add10 to i64, !dbg !91
  %arrayidx = getelementptr inbounds [256 x float], [256 x float]* %A, i64 0, i64 %idxprom, !dbg !91, !taffo.info !18
  store float %div, float* %arrayidx, align 4, !dbg !92, !taffo.info !18
  br label %for.inc, !dbg !93

for.inc:                                          ; preds = %for.body6
  %20 = load i32, i32* %j, align 4, !dbg !94
  %inc = add nsw i32 %20, 1, !dbg !94
  store i32 %inc, i32* %j, align 4, !dbg !94
  br label %for.cond4, !dbg !95, !llvm.loop !96

for.end:                                          ; preds = %for.cond4
  br label %for.inc11, !dbg !99

for.inc11:                                        ; preds = %for.end
  %21 = load i32, i32* %i, align 4, !dbg !100
  %inc12 = add nsw i32 %21, 1, !dbg !100
  store i32 %inc12, i32* %i, align 4, !dbg !100
  br label %for.cond, !dbg !101, !llvm.loop !102

for.end13:                                        ; preds = %for.cond
  br label %VITIS_LOOP_57_3, !dbg !103

VITIS_LOOP_57_3:                                  ; preds = %for.end13
  store i32 0, i32* %i, align 4, !dbg !105
  br label %for.cond14, !dbg !107

for.cond14:                                       ; preds = %for.inc34, %VITIS_LOOP_57_3
  %22 = load i32, i32* %i, align 4, !dbg !108
  %23 = load i32, i32* %nk, align 4, !dbg !110
  %cmp15 = icmp slt i32 %22, %23, !dbg !111
  br i1 %cmp15, label %for.body16, label %for.end36, !dbg !112

for.body16:                                       ; preds = %for.cond14
  br label %VITIS_LOOP_58_4, !dbg !113

VITIS_LOOP_58_4:                                  ; preds = %for.body16
  store i32 0, i32* %j, align 4, !dbg !114
  br label %for.cond17, !dbg !117

for.cond17:                                       ; preds = %for.inc31, %VITIS_LOOP_58_4
  %24 = load i32, i32* %j, align 4, !dbg !118
  %25 = load i32, i32* %nj, align 4, !dbg !120
  %cmp18 = icmp slt i32 %24, %25, !dbg !121
  br i1 %cmp18, label %for.body19, label %for.end33, !dbg !122

for.body19:                                       ; preds = %for.cond17
  %26 = load i32, i32* %i, align 4, !dbg !123
  %27 = load i32, i32* %j, align 4, !dbg !125
  %add20 = add nsw i32 %27, 1, !dbg !126
  %mul21 = mul nsw i32 %26, %add20, !dbg !127
  %28 = load i32, i32* %nj, align 4, !dbg !128
  %rem22 = srem i32 %mul21, %28, !dbg !129
  %conv23 = sitofp i32 %rem22 to float, !dbg !130
  %mul24 = fmul float 3.000000e+00, %conv23, !dbg !131
  %29 = load i32, i32* %nj, align 4, !dbg !132
  %conv25 = sitofp i32 %29 to float, !dbg !132
  %div26 = fdiv float %mul24, %conv25, !dbg !133
  %30 = load i32, i32* %i, align 4, !dbg !134
  %31 = load i32, i32* %nj, align 4, !dbg !135
  %mul27 = mul nsw i32 %30, %31, !dbg !136
  %32 = load i32, i32* %j, align 4, !dbg !137
  %add28 = add nsw i32 %mul27, %32, !dbg !138
  %idxprom29 = sext i32 %add28 to i64, !dbg !139
  %arrayidx30 = getelementptr inbounds [256 x float], [256 x float]* %B, i64 0, i64 %idxprom29, !dbg !139, !taffo.info !18
  store float %div26, float* %arrayidx30, align 4, !dbg !140, !taffo.info !18
  br label %for.inc31, !dbg !141

for.inc31:                                        ; preds = %for.body19
  %33 = load i32, i32* %j, align 4, !dbg !142
  %inc32 = add nsw i32 %33, 1, !dbg !142
  store i32 %inc32, i32* %j, align 4, !dbg !142
  br label %for.cond17, !dbg !143, !llvm.loop !144

for.end33:                                        ; preds = %for.cond17
  br label %for.inc34, !dbg !147

for.inc34:                                        ; preds = %for.end33
  %34 = load i32, i32* %i, align 4, !dbg !148
  %inc35 = add nsw i32 %34, 1, !dbg !148
  store i32 %inc35, i32* %i, align 4, !dbg !148
  br label %for.cond14, !dbg !149, !llvm.loop !150

for.end36:                                        ; preds = %for.cond14
  br label %VITIS_LOOP_62_5, !dbg !151

VITIS_LOOP_62_5:                                  ; preds = %for.end36
  store i32 0, i32* %i, align 4, !dbg !153
  br label %for.cond37, !dbg !155

for.cond37:                                       ; preds = %for.inc57, %VITIS_LOOP_62_5
  %35 = load i32, i32* %i, align 4, !dbg !156
  %36 = load i32, i32* %ni, align 4, !dbg !158
  %cmp38 = icmp slt i32 %35, %36, !dbg !159
  br i1 %cmp38, label %for.body39, label %for.end59, !dbg !160

for.body39:                                       ; preds = %for.cond37
  br label %VITIS_LOOP_63_6, !dbg !161

VITIS_LOOP_63_6:                                  ; preds = %for.body39
  store i32 0, i32* %j, align 4, !dbg !162
  br label %for.cond40, !dbg !165

for.cond40:                                       ; preds = %for.inc54, %VITIS_LOOP_63_6
  %37 = load i32, i32* %j, align 4, !dbg !166
  %38 = load i32, i32* %nj, align 4, !dbg !168
  %cmp41 = icmp slt i32 %37, %38, !dbg !169
  br i1 %cmp41, label %for.body42, label %for.end56, !dbg !170

for.body42:                                       ; preds = %for.cond40
  %39 = load i32, i32* %i, align 4, !dbg !171
  %40 = load i32, i32* %j, align 4, !dbg !173
  %add43 = add nsw i32 %40, 2, !dbg !174
  %mul44 = mul nsw i32 %39, %add43, !dbg !175
  %41 = load i32, i32* %nk, align 4, !dbg !176
  %rem45 = srem i32 %mul44, %41, !dbg !177
  %conv46 = sitofp i32 %rem45 to float, !dbg !178
  %mul47 = fmul float 5.000000e+00, %conv46, !dbg !179
  %42 = load i32, i32* %nk, align 4, !dbg !180
  %conv48 = sitofp i32 %42 to float, !dbg !180
  %div49 = fdiv float %mul47, %conv48, !dbg !181
  %43 = load i32, i32* %i, align 4, !dbg !182
  %44 = load i32, i32* %nj, align 4, !dbg !183
  %mul50 = mul nsw i32 %43, %44, !dbg !184
  %45 = load i32, i32* %j, align 4, !dbg !185
  %add51 = add nsw i32 %mul50, %45, !dbg !186
  %idxprom52 = sext i32 %add51 to i64, !dbg !187
  %arrayidx53 = getelementptr inbounds [256 x float], [256 x float]* %D, i64 0, i64 %idxprom52, !dbg !187, !taffo.info !18, !taffo.target !21
  store float %div49, float* %arrayidx53, align 4, !dbg !188, !taffo.info !18, !taffo.target !21
  br label %for.inc54, !dbg !189

for.inc54:                                        ; preds = %for.body42
  %46 = load i32, i32* %j, align 4, !dbg !190
  %inc55 = add nsw i32 %46, 1, !dbg !190
  store i32 %inc55, i32* %j, align 4, !dbg !190
  br label %for.cond40, !dbg !191, !llvm.loop !192

for.end56:                                        ; preds = %for.cond40
  br label %for.inc57, !dbg !195

for.inc57:                                        ; preds = %for.end56
  %47 = load i32, i32* %i, align 4, !dbg !196
  %inc58 = add nsw i32 %47, 1, !dbg !196
  store i32 %inc58, i32* %i, align 4, !dbg !196
  br label %for.cond37, !dbg !197, !llvm.loop !198

for.end59:                                        ; preds = %for.cond37
  call void @llvm.dbg.declare(metadata float* %alpha, metadata !201, metadata !DIExpression()), !dbg !202
  %alpha60 = bitcast float* %alpha to i8*, !dbg !203, !taffo.info !18
  store float 0x3FF3333340000000, float* %alpha, align 4, !dbg !202, !taffo.info !18
  call void @llvm.dbg.declare(metadata float* %beta, metadata !204, metadata !DIExpression()), !dbg !205
  %beta61 = bitcast float* %beta to i8*, !dbg !206, !taffo.info !18
  store float 1.500000e+00, float* %beta, align 4, !dbg !205, !taffo.info !18
  call void @llvm.dbg.declare(metadata float* %fg, metadata !207, metadata !DIExpression()), !dbg !208
  %fg62 = bitcast float* %fg to i8*, !dbg !209, !taffo.info !18
  %48 = load float, float* %gamma.addr, align 4, !dbg !210
  store float %48, float* %fg, align 4, !dbg !208, !taffo.info !18
  call void @llvm.dbg.declare(metadata float* %tmp, metadata !211, metadata !DIExpression()), !dbg !212
  %tmp63 = bitcast float* %tmp to i8*, !dbg !213, !taffo.info !18
  store float 0.000000e+00, float* %tmp, align 4, !dbg !212, !taffo.info !18
  call void @llvm.dbg.declare(metadata float* %sum, metadata !214, metadata !DIExpression()), !dbg !215
  %sum64 = bitcast float* %sum to i8*, !dbg !216, !taffo.info !18
  store float 0.000000e+00, float* %sum, align 4, !dbg !215, !taffo.info !18
  call void @llvm.dbg.declare(metadata float* %z, metadata !217, metadata !DIExpression()), !dbg !218
  %z65 = bitcast float* %z to i8*, !dbg !219, !taffo.info !18
  call void @llvm.dbg.declare(metadata i32* %ii, metadata !220, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.declare(metadata i32* %jj, metadata !222, metadata !DIExpression()), !dbg !223
  br label %VITIS_LOOP_76_7, !dbg !224

VITIS_LOOP_76_7:                                  ; preds = %for.end59
  store i32 0, i32* %ii, align 4, !dbg !225
  br label %for.cond66, !dbg !227

for.cond66:                                       ; preds = %for.inc110, %VITIS_LOOP_76_7
  %49 = load i32, i32* %ii, align 4, !dbg !228
  %cmp67 = icmp slt i32 %49, 16, !dbg !230
  br i1 %cmp67, label %for.body68, label %for.end112, !dbg !231

for.body68:                                       ; preds = %for.cond66
  br label %VITIS_LOOP_78_8, !dbg !232

VITIS_LOOP_78_8:                                  ; preds = %for.body68
  store i32 0, i32* %jj, align 4, !dbg !233
  br label %for.cond69, !dbg !236

for.cond69:                                       ; preds = %for.inc107, %VITIS_LOOP_78_8
  %50 = load i32, i32* %jj, align 4, !dbg !237
  %cmp70 = icmp slt i32 %50, 16, !dbg !239
  br i1 %cmp70, label %for.body71, label %for.end109, !dbg !240

for.body71:                                       ; preds = %for.cond69
  store float 0.000000e+00, float* %tmp, align 4, !dbg !241, !taffo.info !18
  br label %VITIS_LOOP_82_9, !dbg !243

VITIS_LOOP_82_9:                                  ; preds = %for.body71
  store i32 0, i32* %k, align 4, !dbg !244
  br label %for.cond72, !dbg !246

for.cond72:                                       ; preds = %for.inc86, %VITIS_LOOP_82_9
  %51 = load i32, i32* %k, align 4, !dbg !247
  %cmp73 = icmp slt i32 %51, 16, !dbg !249
  br i1 %cmp73, label %for.body74, label %for.end88, !dbg !250

for.body74:                                       ; preds = %for.cond72
  %52 = load i32, i32* %ii, align 4, !dbg !251
  %mul75 = mul nsw i32 %52, 16, !dbg !253
  %53 = load i32, i32* %k, align 4, !dbg !254
  %add76 = add nsw i32 %mul75, %53, !dbg !255
  %idxprom77 = sext i32 %add76 to i64, !dbg !256
  %arrayidx78 = getelementptr inbounds [256 x float], [256 x float]* %A, i64 0, i64 %idxprom77, !dbg !256, !taffo.info !18
  %54 = load float, float* %arrayidx78, align 4, !dbg !256, !taffo.info !18
  %55 = load i32, i32* %k, align 4, !dbg !257
  %mul79 = mul nsw i32 %55, 16, !dbg !258
  %56 = load i32, i32* %jj, align 4, !dbg !259
  %add80 = add nsw i32 %mul79, %56, !dbg !260
  %idxprom81 = sext i32 %add80 to i64, !dbg !261
  %arrayidx82 = getelementptr inbounds [256 x float], [256 x float]* %B, i64 0, i64 %idxprom81, !dbg !261, !taffo.info !18
  %57 = load float, float* %arrayidx82, align 4, !dbg !261, !taffo.info !18
  %mul83 = fmul float %54, %57, !dbg !262, !taffo.info !18
  %58 = load float, float* %alpha, align 4, !dbg !263, !taffo.info !18
  %mul84 = fmul float %mul83, %58, !dbg !264, !taffo.info !18
  store float %mul84, float* %z, align 4, !dbg !265, !taffo.info !18
  %59 = load float, float* %tmp, align 4, !dbg !266, !taffo.info !18
  %60 = load float, float* %z, align 4, !dbg !267, !taffo.info !18
  %add85 = fadd float %59, %60, !dbg !268, !taffo.info !18
  store float %add85, float* %tmp, align 4, !dbg !269, !taffo.info !18
  br label %for.inc86, !dbg !270

for.inc86:                                        ; preds = %for.body74
  %61 = load i32, i32* %k, align 4, !dbg !271
  %inc87 = add nsw i32 %61, 1, !dbg !271
  store i32 %inc87, i32* %k, align 4, !dbg !271
  br label %for.cond72, !dbg !272, !llvm.loop !273

for.end88:                                        ; preds = %for.cond72
  %62 = load i32, i32* %ii, align 4, !dbg !278
  %mul89 = mul nsw i32 %62, 16, !dbg !279
  %63 = load i32, i32* %jj, align 4, !dbg !280
  %add90 = add nsw i32 %mul89, %63, !dbg !281
  %idxprom91 = sext i32 %add90 to i64, !dbg !282
  %arrayidx92 = getelementptr inbounds [256 x float], [256 x float]* %D, i64 0, i64 %idxprom91, !dbg !282, !taffo.info !18, !taffo.target !21
  %64 = load float, float* %arrayidx92, align 4, !dbg !282, !taffo.info !18, !taffo.target !21
  %65 = load float, float* %beta, align 4, !dbg !283, !taffo.info !18
  %mul93 = fmul float %64, %65, !dbg !284, !taffo.info !18
  %66 = load i32, i32* %ii, align 4, !dbg !285
  %mul94 = mul nsw i32 %66, 16, !dbg !286
  %67 = load i32, i32* %jj, align 4, !dbg !287
  %add95 = add nsw i32 %mul94, %67, !dbg !288
  %idxprom96 = sext i32 %add95 to i64, !dbg !289
  %arrayidx97 = getelementptr inbounds [256 x float], [256 x float]* %D, i64 0, i64 %idxprom96, !dbg !289, !taffo.info !18, !taffo.target !21
  store float %mul93, float* %arrayidx97, align 4, !dbg !290, !taffo.info !18, !taffo.target !21
  %68 = load i32, i32* %ii, align 4, !dbg !291
  %mul98 = mul nsw i32 %68, 16, !dbg !292
  %69 = load i32, i32* %jj, align 4, !dbg !293
  %add99 = add nsw i32 %mul98, %69, !dbg !294
  %idxprom100 = sext i32 %add99 to i64, !dbg !295
  %arrayidx101 = getelementptr inbounds [256 x float], [256 x float]* %D, i64 0, i64 %idxprom100, !dbg !295, !taffo.info !18, !taffo.target !21
  %70 = load float, float* %arrayidx101, align 4, !dbg !295, !taffo.info !18, !taffo.target !21
  %71 = load float, float* %tmp, align 4, !dbg !296, !taffo.info !18
  %add102 = fadd float %70, %71, !dbg !297, !taffo.info !18
  %72 = load i32, i32* %ii, align 4, !dbg !298
  %mul103 = mul nsw i32 %72, 16, !dbg !299
  %73 = load i32, i32* %jj, align 4, !dbg !300
  %add104 = add nsw i32 %mul103, %73, !dbg !301
  %idxprom105 = sext i32 %add104 to i64, !dbg !302
  %arrayidx106 = getelementptr inbounds [256 x float], [256 x float]* %D, i64 0, i64 %idxprom105, !dbg !302, !taffo.info !18, !taffo.target !21
  store float %add102, float* %arrayidx106, align 4, !dbg !303, !taffo.info !18, !taffo.target !21
  br label %for.inc107, !dbg !304

for.inc107:                                       ; preds = %for.end88
  %74 = load i32, i32* %jj, align 4, !dbg !305
  %inc108 = add nsw i32 %74, 1, !dbg !305
  store i32 %inc108, i32* %jj, align 4, !dbg !305
  br label %for.cond69, !dbg !306, !llvm.loop !307

for.end109:                                       ; preds = %for.cond69
  br label %for.inc110, !dbg !312

for.inc110:                                       ; preds = %for.end109
  %75 = load i32, i32* %ii, align 4, !dbg !313
  %inc111 = add nsw i32 %75, 1, !dbg !313
  store i32 %inc111, i32* %ii, align 4, !dbg !313
  br label %for.cond66, !dbg !314, !llvm.loop !315

for.end112:                                       ; preds = %for.cond66
  br label %VITIS_LOOP_92_10, !dbg !316

VITIS_LOOP_92_10:                                 ; preds = %for.end112
  store i32 0, i32* %ii, align 4, !dbg !320
  br label %for.cond113, !dbg !322

for.cond113:                                      ; preds = %for.inc127, %VITIS_LOOP_92_10
  %76 = load i32, i32* %ii, align 4, !dbg !323
  %cmp114 = icmp slt i32 %76, 16, !dbg !325
  br i1 %cmp114, label %for.body115, label %for.end129, !dbg !326

for.body115:                                      ; preds = %for.cond113
  br label %VITIS_LOOP_95_11, !dbg !327

VITIS_LOOP_95_11:                                 ; preds = %for.body115
  store i32 0, i32* %jj, align 4, !dbg !328
  br label %for.cond116, !dbg !331

for.cond116:                                      ; preds = %for.inc124, %VITIS_LOOP_95_11
  %77 = load i32, i32* %jj, align 4, !dbg !332
  %cmp117 = icmp slt i32 %77, 16, !dbg !334
  br i1 %cmp117, label %for.body118, label %for.end126, !dbg !335

for.body118:                                      ; preds = %for.cond116
  %78 = load i32, i32* %ii, align 4, !dbg !336
  %mul119 = mul nsw i32 %78, 16, !dbg !338
  %79 = load i32, i32* %jj, align 4, !dbg !339
  %add120 = add nsw i32 %mul119, %79, !dbg !340
  %idxprom121 = sext i32 %add120 to i64, !dbg !341
  %arrayidx122 = getelementptr inbounds [256 x float], [256 x float]* %D, i64 0, i64 %idxprom121, !dbg !341, !taffo.info !18, !taffo.target !21
  %80 = load float, float* %arrayidx122, align 4, !dbg !341, !taffo.info !18, !taffo.target !21
  %81 = load float, float* %sum, align 4, !dbg !342, !taffo.info !18
  %add123 = fadd float %81, %80, !dbg !342, !taffo.info !18
  store float %add123, float* %sum, align 4, !dbg !342, !taffo.info !18
  br label %for.inc124, !dbg !343

for.inc124:                                       ; preds = %for.body118
  %82 = load i32, i32* %jj, align 4, !dbg !344
  %inc125 = add nsw i32 %82, 1, !dbg !344
  store i32 %inc125, i32* %jj, align 4, !dbg !344
  br label %for.cond116, !dbg !345, !llvm.loop !346

for.end126:                                       ; preds = %for.cond116
  br label %for.inc127, !dbg !349

for.inc127:                                       ; preds = %for.end126
  %83 = load i32, i32* %ii, align 4, !dbg !350
  %inc128 = add nsw i32 %83, 1, !dbg !350
  store i32 %inc128, i32* %ii, align 4, !dbg !350
  br label %for.cond113, !dbg !351, !llvm.loop !352

for.end129:                                       ; preds = %for.cond113
  %84 = load float, float* %sum, align 4, !dbg !357, !taffo.info !18
  %85 = load float, float* %fg, align 4, !dbg !358, !taffo.info !18
  %mul130 = fmul float %84, %85, !dbg !359, !taffo.info !18
  %86 = bitcast [256 x float]* %D to i8*, !dbg !360, !taffo.info !18, !taffo.target !21
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* %86) #3, !dbg !360, !taffo.info !18, !taffo.target !21
  %87 = bitcast [256 x float]* %B to i8*, !dbg !360, !taffo.info !18
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* %87) #3, !dbg !360, !taffo.info !18
  %88 = bitcast [256 x float]* %A to i8*, !dbg !360, !taffo.info !18
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* %88) #3, !dbg !360, !taffo.info !18
  %89 = bitcast i32* %k to i8*, !dbg !360
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %89) #3, !dbg !360
  %90 = bitcast i32* %j to i8*, !dbg !360
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %90) #3, !dbg !360
  %91 = bitcast i32* %i to i8*, !dbg !360
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %91) #3, !dbg !360
  %92 = bitcast i32* %nk to i8*, !dbg !360
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %92) #3, !dbg !360
  %93 = bitcast i32* %nj to i8*, !dbg !360
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %93) #3, !dbg !360
  %94 = bitcast i32* %ni to i8*, !dbg !360
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %94) #3, !dbg !360
  ret float %mul130, !dbg !361, !taffo.info !18
}

; Function Attrs: nounwind readnone speculatable
declare !taffo.funinfo !362 void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare !taffo.funinfo !363 void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare !taffo.funinfo !364 void @llvm.var.annotation(i8*, i8*, i8*, i32) #3

; Function Attrs: argmemonly nounwind
declare !taffo.funinfo !363 void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

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
!16 = !{i1 true}
!17 = !{i32 0, i1 false}
!18 = !{i1 false, i1 false, i1 false, i1 true}
!19 = !{i1 false, !20, i1 false, i1 true}
!20 = !{double -1.600000e+02, double 1.600000e+02}
!21 = !{!"D"}
!22 = !{i1 false, !23, i1 false, i1 true}
!23 = !{double -1.000000e+02, double 1.000000e+02}
!24 = !{i1 false, !25, i1 false, i1 true}
!25 = !{double -2.000000e+02, double 2.000000e+02}
!26 = !DILocalVariable(name: "gamma", arg: 1, scope: !9, file: !10, line: 41, type: !4)
!27 = !DILocation(line: 41, column: 53, scope: !9)
!28 = !DILocation(line: 44, column: 5, scope: !9)
!29 = !DILocalVariable(name: "ni", scope: !9, file: !10, line: 44, type: !30)
!30 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!31 = !DILocation(line: 44, column: 9, scope: !9)
!32 = !DILocation(line: 45, column: 5, scope: !9)
!33 = !DILocalVariable(name: "nj", scope: !9, file: !10, line: 45, type: !30)
!34 = !DILocation(line: 45, column: 9, scope: !9)
!35 = !DILocation(line: 46, column: 5, scope: !9)
!36 = !DILocalVariable(name: "nk", scope: !9, file: !10, line: 46, type: !30)
!37 = !DILocation(line: 46, column: 9, scope: !9)
!38 = !DILocation(line: 47, column: 5, scope: !9)
!39 = !DILocalVariable(name: "i", scope: !9, file: !10, line: 47, type: !30)
!40 = !DILocation(line: 47, column: 9, scope: !9)
!41 = !DILocalVariable(name: "j", scope: !9, file: !10, line: 47, type: !30)
!42 = !DILocation(line: 47, column: 12, scope: !9)
!43 = !DILocalVariable(name: "k", scope: !9, file: !10, line: 47, type: !30)
!44 = !DILocation(line: 47, column: 15, scope: !9)
!45 = !DILocation(line: 48, column: 5, scope: !9)
!46 = !DILocalVariable(name: "A", scope: !9, file: !10, line: 48, type: !47)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !48)
!48 = !{!49}
!49 = !DISubrange(count: 256)
!50 = !DILocation(line: 48, column: 11, scope: !9)
!51 = !DILocation(line: 49, column: 5, scope: !9)
!52 = !DILocalVariable(name: "B", scope: !9, file: !10, line: 49, type: !47)
!53 = !DILocation(line: 49, column: 11, scope: !9)
!54 = !DILocation(line: 50, column: 5, scope: !9)
!55 = !DILocalVariable(name: "D", scope: !9, file: !10, line: 50, type: !47)
!56 = !DILocation(line: 50, column: 11, scope: !9)
!57 = !DILocation(line: 52, column: 29, scope: !58)
!58 = distinct !DILexicalBlock(scope: !9, file: !10, line: 52, column: 22)
!59 = !DILocation(line: 52, column: 27, scope: !58)
!60 = !DILocation(line: 52, column: 34, scope: !61)
!61 = distinct !DILexicalBlock(scope: !58, file: !10, line: 52, column: 22)
!62 = !DILocation(line: 52, column: 38, scope: !61)
!63 = !DILocation(line: 52, column: 36, scope: !61)
!64 = !DILocation(line: 52, column: 22, scope: !58)
!65 = !DILocation(line: 52, column: 46, scope: !61)
!66 = !DILocation(line: 53, column: 33, scope: !67)
!67 = distinct !DILexicalBlock(scope: !68, file: !10, line: 53, column: 26)
!68 = distinct !DILexicalBlock(scope: !61, file: !10, line: 52, column: 46)
!69 = !DILocation(line: 53, column: 31, scope: !67)
!70 = !DILocation(line: 53, column: 38, scope: !71)
!71 = distinct !DILexicalBlock(scope: !67, file: !10, line: 53, column: 26)
!72 = !DILocation(line: 53, column: 42, scope: !71)
!73 = !DILocation(line: 53, column: 40, scope: !71)
!74 = !DILocation(line: 53, column: 26, scope: !67)
!75 = !DILocation(line: 54, column: 39, scope: !76)
!76 = distinct !DILexicalBlock(scope: !71, file: !10, line: 53, column: 50)
!77 = !DILocation(line: 54, column: 41, scope: !76)
!78 = !DILocation(line: 54, column: 40, scope: !76)
!79 = !DILocation(line: 54, column: 42, scope: !76)
!80 = !DILocation(line: 54, column: 48, scope: !76)
!81 = !DILocation(line: 54, column: 46, scope: !76)
!82 = !DILocation(line: 54, column: 37, scope: !76)
!83 = !DILocation(line: 54, column: 35, scope: !76)
!84 = !DILocation(line: 54, column: 54, scope: !76)
!85 = !DILocation(line: 54, column: 52, scope: !76)
!86 = !DILocation(line: 54, column: 15, scope: !76)
!87 = !DILocation(line: 54, column: 17, scope: !76)
!88 = !DILocation(line: 54, column: 16, scope: !76)
!89 = !DILocation(line: 54, column: 20, scope: !76)
!90 = !DILocation(line: 54, column: 19, scope: !76)
!91 = !DILocation(line: 54, column: 13, scope: !76)
!92 = !DILocation(line: 54, column: 23, scope: !76)
!93 = !DILocation(line: 55, column: 13, scope: !76)
!94 = !DILocation(line: 53, column: 47, scope: !71)
!95 = !DILocation(line: 53, column: 26, scope: !71)
!96 = distinct !{!96, !74, !97, !98}
!97 = !DILocation(line: 55, column: 13, scope: !67)
!98 = !{!"llvm.loop.name", !"VITIS_LOOP_53_2"}
!99 = !DILocation(line: 56, column: 5, scope: !68)
!100 = !DILocation(line: 52, column: 43, scope: !61)
!101 = !DILocation(line: 52, column: 22, scope: !61)
!102 = distinct !{!102, !64, !103, !104}
!103 = !DILocation(line: 56, column: 5, scope: !58)
!104 = !{!"llvm.loop.name", !"VITIS_LOOP_52_1"}
!105 = !DILocation(line: 57, column: 29, scope: !106)
!106 = distinct !DILexicalBlock(scope: !9, file: !10, line: 57, column: 22)
!107 = !DILocation(line: 57, column: 27, scope: !106)
!108 = !DILocation(line: 57, column: 34, scope: !109)
!109 = distinct !DILexicalBlock(scope: !106, file: !10, line: 57, column: 22)
!110 = !DILocation(line: 57, column: 38, scope: !109)
!111 = !DILocation(line: 57, column: 36, scope: !109)
!112 = !DILocation(line: 57, column: 22, scope: !106)
!113 = !DILocation(line: 57, column: 46, scope: !109)
!114 = !DILocation(line: 58, column: 33, scope: !115)
!115 = distinct !DILexicalBlock(scope: !116, file: !10, line: 58, column: 26)
!116 = distinct !DILexicalBlock(scope: !109, file: !10, line: 57, column: 46)
!117 = !DILocation(line: 58, column: 31, scope: !115)
!118 = !DILocation(line: 58, column: 38, scope: !119)
!119 = distinct !DILexicalBlock(scope: !115, file: !10, line: 58, column: 26)
!120 = !DILocation(line: 58, column: 42, scope: !119)
!121 = !DILocation(line: 58, column: 40, scope: !119)
!122 = !DILocation(line: 58, column: 26, scope: !115)
!123 = !DILocation(line: 59, column: 38, scope: !124)
!124 = distinct !DILexicalBlock(scope: !119, file: !10, line: 58, column: 50)
!125 = !DILocation(line: 59, column: 41, scope: !124)
!126 = !DILocation(line: 59, column: 42, scope: !124)
!127 = !DILocation(line: 59, column: 39, scope: !124)
!128 = !DILocation(line: 59, column: 48, scope: !124)
!129 = !DILocation(line: 59, column: 46, scope: !124)
!130 = !DILocation(line: 59, column: 37, scope: !124)
!131 = !DILocation(line: 59, column: 35, scope: !124)
!132 = !DILocation(line: 59, column: 54, scope: !124)
!133 = !DILocation(line: 59, column: 52, scope: !124)
!134 = !DILocation(line: 59, column: 15, scope: !124)
!135 = !DILocation(line: 59, column: 17, scope: !124)
!136 = !DILocation(line: 59, column: 16, scope: !124)
!137 = !DILocation(line: 59, column: 20, scope: !124)
!138 = !DILocation(line: 59, column: 19, scope: !124)
!139 = !DILocation(line: 59, column: 13, scope: !124)
!140 = !DILocation(line: 59, column: 23, scope: !124)
!141 = !DILocation(line: 60, column: 9, scope: !124)
!142 = !DILocation(line: 58, column: 47, scope: !119)
!143 = !DILocation(line: 58, column: 26, scope: !119)
!144 = distinct !{!144, !122, !145, !146}
!145 = !DILocation(line: 60, column: 9, scope: !115)
!146 = !{!"llvm.loop.name", !"VITIS_LOOP_58_4"}
!147 = !DILocation(line: 61, column: 5, scope: !116)
!148 = !DILocation(line: 57, column: 43, scope: !109)
!149 = !DILocation(line: 57, column: 22, scope: !109)
!150 = distinct !{!150, !112, !151, !152}
!151 = !DILocation(line: 61, column: 5, scope: !106)
!152 = !{!"llvm.loop.name", !"VITIS_LOOP_57_3"}
!153 = !DILocation(line: 62, column: 29, scope: !154)
!154 = distinct !DILexicalBlock(scope: !9, file: !10, line: 62, column: 22)
!155 = !DILocation(line: 62, column: 27, scope: !154)
!156 = !DILocation(line: 62, column: 34, scope: !157)
!157 = distinct !DILexicalBlock(scope: !154, file: !10, line: 62, column: 22)
!158 = !DILocation(line: 62, column: 38, scope: !157)
!159 = !DILocation(line: 62, column: 36, scope: !157)
!160 = !DILocation(line: 62, column: 22, scope: !154)
!161 = !DILocation(line: 62, column: 46, scope: !157)
!162 = !DILocation(line: 63, column: 33, scope: !163)
!163 = distinct !DILexicalBlock(scope: !164, file: !10, line: 63, column: 26)
!164 = distinct !DILexicalBlock(scope: !157, file: !10, line: 62, column: 46)
!165 = !DILocation(line: 63, column: 31, scope: !163)
!166 = !DILocation(line: 63, column: 38, scope: !167)
!167 = distinct !DILexicalBlock(scope: !163, file: !10, line: 63, column: 26)
!168 = !DILocation(line: 63, column: 42, scope: !167)
!169 = !DILocation(line: 63, column: 40, scope: !167)
!170 = !DILocation(line: 63, column: 26, scope: !163)
!171 = !DILocation(line: 64, column: 38, scope: !172)
!172 = distinct !DILexicalBlock(scope: !167, file: !10, line: 63, column: 50)
!173 = !DILocation(line: 64, column: 41, scope: !172)
!174 = !DILocation(line: 64, column: 42, scope: !172)
!175 = !DILocation(line: 64, column: 39, scope: !172)
!176 = !DILocation(line: 64, column: 48, scope: !172)
!177 = !DILocation(line: 64, column: 46, scope: !172)
!178 = !DILocation(line: 64, column: 37, scope: !172)
!179 = !DILocation(line: 64, column: 35, scope: !172)
!180 = !DILocation(line: 64, column: 54, scope: !172)
!181 = !DILocation(line: 64, column: 52, scope: !172)
!182 = !DILocation(line: 64, column: 15, scope: !172)
!183 = !DILocation(line: 64, column: 17, scope: !172)
!184 = !DILocation(line: 64, column: 16, scope: !172)
!185 = !DILocation(line: 64, column: 20, scope: !172)
!186 = !DILocation(line: 64, column: 19, scope: !172)
!187 = !DILocation(line: 64, column: 13, scope: !172)
!188 = !DILocation(line: 64, column: 23, scope: !172)
!189 = !DILocation(line: 65, column: 9, scope: !172)
!190 = !DILocation(line: 63, column: 47, scope: !167)
!191 = !DILocation(line: 63, column: 26, scope: !167)
!192 = distinct !{!192, !170, !193, !194}
!193 = !DILocation(line: 65, column: 9, scope: !163)
!194 = !{!"llvm.loop.name", !"VITIS_LOOP_63_6"}
!195 = !DILocation(line: 66, column: 5, scope: !164)
!196 = !DILocation(line: 62, column: 43, scope: !157)
!197 = !DILocation(line: 62, column: 22, scope: !157)
!198 = distinct !{!198, !160, !199, !200}
!199 = !DILocation(line: 66, column: 5, scope: !154)
!200 = !{!"llvm.loop.name", !"VITIS_LOOP_62_5"}
!201 = !DILocalVariable(name: "alpha", scope: !9, file: !10, line: 69, type: !4)
!202 = !DILocation(line: 69, column: 49, scope: !9)
!203 = !DILocation(line: 69, column: 5, scope: !9)
!204 = !DILocalVariable(name: "beta", scope: !9, file: !10, line: 70, type: !4)
!205 = !DILocation(line: 70, column: 49, scope: !9)
!206 = !DILocation(line: 70, column: 5, scope: !9)
!207 = !DILocalVariable(name: "fg", scope: !9, file: !10, line: 71, type: !4)
!208 = !DILocation(line: 71, column: 65, scope: !9)
!209 = !DILocation(line: 71, column: 5, scope: !9)
!210 = !DILocation(line: 71, column: 70, scope: !9)
!211 = !DILocalVariable(name: "tmp", scope: !9, file: !10, line: 72, type: !4)
!212 = !DILocation(line: 72, column: 65, scope: !9)
!213 = !DILocation(line: 72, column: 5, scope: !9)
!214 = !DILocalVariable(name: "sum", scope: !9, file: !10, line: 73, type: !4)
!215 = !DILocation(line: 73, column: 65, scope: !9)
!216 = !DILocation(line: 73, column: 5, scope: !9)
!217 = !DILocalVariable(name: "z", scope: !9, file: !10, line: 74, type: !4)
!218 = !DILocation(line: 74, column: 11, scope: !9)
!219 = !DILocation(line: 74, column: 5, scope: !9)
!220 = !DILocalVariable(name: "ii", scope: !9, file: !10, line: 75, type: !30)
!221 = !DILocation(line: 75, column: 9, scope: !9)
!222 = !DILocalVariable(name: "jj", scope: !9, file: !10, line: 75, type: !30)
!223 = !DILocation(line: 75, column: 13, scope: !9)
!224 = !DILocation(line: 75, column: 5, scope: !9)
!225 = !DILocation(line: 76, column: 30, scope: !226)
!226 = distinct !DILexicalBlock(scope: !9, file: !10, line: 76, column: 22)
!227 = !DILocation(line: 76, column: 27, scope: !226)
!228 = !DILocation(line: 76, column: 35, scope: !229)
!229 = distinct !DILexicalBlock(scope: !226, file: !10, line: 76, column: 22)
!230 = !DILocation(line: 76, column: 38, scope: !229)
!231 = !DILocation(line: 76, column: 22, scope: !226)
!232 = !DILocation(line: 76, column: 49, scope: !229)
!233 = !DILocation(line: 78, column: 27, scope: !234)
!234 = distinct !DILexicalBlock(scope: !235, file: !10, line: 78, column: 19)
!235 = distinct !DILexicalBlock(scope: !229, file: !10, line: 76, column: 49)
!236 = !DILocation(line: 78, column: 24, scope: !234)
!237 = !DILocation(line: 78, column: 32, scope: !238)
!238 = distinct !DILexicalBlock(scope: !234, file: !10, line: 78, column: 19)
!239 = !DILocation(line: 78, column: 35, scope: !238)
!240 = !DILocation(line: 78, column: 19, scope: !234)
!241 = !DILocation(line: 81, column: 6, scope: !242)
!242 = distinct !DILexicalBlock(scope: !238, file: !10, line: 79, column: 9)
!243 = !DILocation(line: 81, column: 2, scope: !242)
!244 = !DILocation(line: 82, column: 37, scope: !245)
!245 = distinct !DILexicalBlock(scope: !242, file: !10, line: 82, column: 30)
!246 = !DILocation(line: 82, column: 35, scope: !245)
!247 = !DILocation(line: 82, column: 42, scope: !248)
!248 = distinct !DILexicalBlock(scope: !245, file: !10, line: 82, column: 30)
!249 = !DILocation(line: 82, column: 44, scope: !248)
!250 = !DILocation(line: 82, column: 30, scope: !245)
!251 = !DILocation(line: 84, column: 8, scope: !252)
!252 = distinct !DILexicalBlock(scope: !248, file: !10, line: 82, column: 54)
!253 = !DILocation(line: 84, column: 10, scope: !252)
!254 = !DILocation(line: 84, column: 15, scope: !252)
!255 = !DILocation(line: 84, column: 14, scope: !252)
!256 = !DILocation(line: 84, column: 6, scope: !252)
!257 = !DILocation(line: 84, column: 22, scope: !252)
!258 = !DILocation(line: 84, column: 23, scope: !252)
!259 = !DILocation(line: 84, column: 28, scope: !252)
!260 = !DILocation(line: 84, column: 27, scope: !252)
!261 = !DILocation(line: 84, column: 20, scope: !252)
!262 = !DILocation(line: 84, column: 18, scope: !252)
!263 = !DILocation(line: 84, column: 34, scope: !252)
!264 = !DILocation(line: 84, column: 32, scope: !252)
!265 = !DILocation(line: 84, column: 4, scope: !252)
!266 = !DILocation(line: 85, column: 23, scope: !252)
!267 = !DILocation(line: 85, column: 29, scope: !252)
!268 = !DILocation(line: 85, column: 27, scope: !252)
!269 = !DILocation(line: 85, column: 21, scope: !252)
!270 = !DILocation(line: 86, column: 13, scope: !252)
!271 = !DILocation(line: 82, column: 51, scope: !248)
!272 = !DILocation(line: 82, column: 30, scope: !248)
!273 = distinct !{!273, !250, !274, !275, !277}
!274 = !DILocation(line: 86, column: 13, scope: !245)
!275 = !{!"llvm.loop.pipeline.enable", i32 1, i1 false, i8 -1, !"user", !276}
!276 = !DILocation(line: 83, column: 9, scope: !245)
!277 = !{!"llvm.loop.name", !"VITIS_LOOP_82_9"}
!278 = !DILocation(line: 87, column: 35, scope: !242)
!279 = !DILocation(line: 87, column: 37, scope: !242)
!280 = !DILocation(line: 87, column: 42, scope: !242)
!281 = !DILocation(line: 87, column: 41, scope: !242)
!282 = !DILocation(line: 87, column: 33, scope: !242)
!283 = !DILocation(line: 87, column: 48, scope: !242)
!284 = !DILocation(line: 87, column: 46, scope: !242)
!285 = !DILocation(line: 87, column: 20, scope: !242)
!286 = !DILocation(line: 87, column: 22, scope: !242)
!287 = !DILocation(line: 87, column: 27, scope: !242)
!288 = !DILocation(line: 87, column: 26, scope: !242)
!289 = !DILocation(line: 87, column: 18, scope: !242)
!290 = !DILocation(line: 87, column: 31, scope: !242)
!291 = !DILocation(line: 88, column: 35, scope: !242)
!292 = !DILocation(line: 88, column: 37, scope: !242)
!293 = !DILocation(line: 88, column: 42, scope: !242)
!294 = !DILocation(line: 88, column: 41, scope: !242)
!295 = !DILocation(line: 88, column: 33, scope: !242)
!296 = !DILocation(line: 88, column: 48, scope: !242)
!297 = !DILocation(line: 88, column: 46, scope: !242)
!298 = !DILocation(line: 88, column: 20, scope: !242)
!299 = !DILocation(line: 88, column: 22, scope: !242)
!300 = !DILocation(line: 88, column: 27, scope: !242)
!301 = !DILocation(line: 88, column: 26, scope: !242)
!302 = !DILocation(line: 88, column: 18, scope: !242)
!303 = !DILocation(line: 88, column: 31, scope: !242)
!304 = !DILocation(line: 90, column: 9, scope: !242)
!305 = !DILocation(line: 78, column: 43, scope: !238)
!306 = !DILocation(line: 78, column: 19, scope: !238)
!307 = distinct !{!307, !240, !308, !309, !311}
!308 = !DILocation(line: 90, column: 9, scope: !234)
!309 = !{!"llvm.loop.unroll.count", i32 4, !"user", !310}
!310 = !DILocation(line: 80, column: 9, scope: !234)
!311 = !{!"llvm.loop.name", !"VITIS_LOOP_78_8"}
!312 = !DILocation(line: 91, column: 5, scope: !235)
!313 = !DILocation(line: 76, column: 46, scope: !229)
!314 = !DILocation(line: 76, column: 22, scope: !229)
!315 = distinct !{!315, !231, !316, !317, !319}
!316 = !DILocation(line: 91, column: 5, scope: !226)
!317 = !{!"llvm.loop.pipeline.enable", i32 1, i1 false, i8 -1, !"user", !318}
!318 = !DILocation(line: 77, column: 9, scope: !226)
!319 = !{!"llvm.loop.name", !"VITIS_LOOP_76_7"}
!320 = !DILocation(line: 92, column: 31, scope: !321)
!321 = distinct !DILexicalBlock(scope: !9, file: !10, line: 92, column: 23)
!322 = !DILocation(line: 92, column: 28, scope: !321)
!323 = !DILocation(line: 92, column: 36, scope: !324)
!324 = distinct !DILexicalBlock(scope: !321, file: !10, line: 92, column: 23)
!325 = !DILocation(line: 92, column: 39, scope: !324)
!326 = !DILocation(line: 92, column: 23, scope: !321)
!327 = !DILocation(line: 93, column: 5, scope: !324)
!328 = !DILocation(line: 95, column: 28, scope: !329)
!329 = distinct !DILexicalBlock(scope: !330, file: !10, line: 95, column: 20)
!330 = distinct !DILexicalBlock(scope: !324, file: !10, line: 93, column: 5)
!331 = !DILocation(line: 95, column: 25, scope: !329)
!332 = !DILocation(line: 95, column: 33, scope: !333)
!333 = distinct !DILexicalBlock(scope: !329, file: !10, line: 95, column: 20)
!334 = !DILocation(line: 95, column: 36, scope: !333)
!335 = !DILocation(line: 95, column: 20, scope: !329)
!336 = !DILocation(line: 96, column: 19, scope: !337)
!337 = distinct !DILexicalBlock(scope: !333, file: !10, line: 95, column: 47)
!338 = !DILocation(line: 96, column: 21, scope: !337)
!339 = !DILocation(line: 96, column: 26, scope: !337)
!340 = !DILocation(line: 96, column: 25, scope: !337)
!341 = !DILocation(line: 96, column: 17, scope: !337)
!342 = !DILocation(line: 96, column: 14, scope: !337)
!343 = !DILocation(line: 97, column: 9, scope: !337)
!344 = !DILocation(line: 95, column: 44, scope: !333)
!345 = !DILocation(line: 95, column: 20, scope: !333)
!346 = distinct !{!346, !335, !347, !348}
!347 = !DILocation(line: 97, column: 9, scope: !329)
!348 = !{!"llvm.loop.name", !"VITIS_LOOP_95_11"}
!349 = !DILocation(line: 98, column: 5, scope: !330)
!350 = !DILocation(line: 92, column: 47, scope: !324)
!351 = !DILocation(line: 92, column: 23, scope: !324)
!352 = distinct !{!352, !326, !353, !354, !356}
!353 = !DILocation(line: 98, column: 5, scope: !321)
!354 = !{!"llvm.loop.pipeline.enable", i32 1, i1 false, i8 -1, !"user", !355}
!355 = !DILocation(line: 94, column: 9, scope: !321)
!356 = !{!"llvm.loop.name", !"VITIS_LOOP_92_10"}
!357 = !DILocation(line: 100, column: 13, scope: !9)
!358 = !DILocation(line: 100, column: 19, scope: !9)
!359 = !DILocation(line: 100, column: 17, scope: !9)
!360 = !DILocation(line: 101, column: 1, scope: !9)
!361 = !DILocation(line: 100, column: 5, scope: !9)
!362 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!363 = !{i32 0, i1 false, i32 0, i1 false}
!364 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
