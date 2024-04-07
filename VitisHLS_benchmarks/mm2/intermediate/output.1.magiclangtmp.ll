; ModuleID = '/home/bruno/Desktop/benchmarks/mm2/proj_mm2/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.global_ctors = appending global [0 x { i32, void ()*, i8* }] zeroinitializer
@.str = private unnamed_addr constant [20 x i8] c"scalar(range(0, 5))\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [12 x i8] c"mm2_taffo.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [41 x i8] c"target('A') scalar(range(-16384, 16384))\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [41 x i8] c"target('B') scalar(range(-16384, 16384))\00", section "llvm.metadata"
@.str.4 = private unnamed_addr constant [41 x i8] c"target('C') scalar(range(-16384, 16384))\00", section "llvm.metadata"
@.str.5 = private unnamed_addr constant [41 x i8] c"target('D') scalar(range(-16384, 16384))\00", section "llvm.metadata"
@.str.6 = private unnamed_addr constant [44 x i8] c"tartget('tmp') scalar(range(-16384, 16384))\00", section "llvm.metadata"
@.str.7 = private unnamed_addr constant [9 x i8] c"scalar()\00", section "llvm.metadata"

; Function Attrs: nounwind
define void @mm2(float* %A, float* %B, float* %C, float* %D, float %alpha, float %beta) #0 !dbg !7 !fpga.function.pragma !13 {
entry:
  %A.addr = alloca float*, align 8
  %B.addr = alloca float*, align 8
  %C.addr = alloca float*, align 8
  %D.addr = alloca float*, align 8
  %alpha.addr = alloca float, align 4
  %beta.addr = alloca float, align 4
  %ni = alloca i32, align 4
  %nj = alloca i32, align 4
  %nk = alloca i32, align 4
  %nl = alloca i32, align 4
  %alphas = alloca float, align 4
  %betas = alloca float, align 4
  %As = alloca float*, align 8
  %Bs = alloca float*, align 8
  %Cs = alloca float*, align 8
  %Ds = alloca float*, align 8
  %tmp = alloca [256 x float], align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store float* %A, float** %A.addr, align 8
  call void @llvm.dbg.declare(metadata float** %A.addr, metadata !16, metadata !DIExpression()), !dbg !17
  store float* %B, float** %B.addr, align 8
  call void @llvm.dbg.declare(metadata float** %B.addr, metadata !18, metadata !DIExpression()), !dbg !19
  store float* %C, float** %C.addr, align 8
  call void @llvm.dbg.declare(metadata float** %C.addr, metadata !20, metadata !DIExpression()), !dbg !21
  store float* %D, float** %D.addr, align 8
  call void @llvm.dbg.declare(metadata float** %D.addr, metadata !22, metadata !DIExpression()), !dbg !23
  store float %alpha, float* %alpha.addr, align 4
  call void @llvm.dbg.declare(metadata float* %alpha.addr, metadata !24, metadata !DIExpression()), !dbg !25
  store float %beta, float* %beta.addr, align 4
  call void @llvm.dbg.declare(metadata float* %beta.addr, metadata !26, metadata !DIExpression()), !dbg !27
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %A, [0 x i8] zeroinitializer, i64 256, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !28
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %B, [0 x i8] zeroinitializer, i64 256, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !29
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %C, [0 x i8] zeroinitializer, i64 256, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !30
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %D, [0 x i8] zeroinitializer, i64 256, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !31
  %0 = bitcast i32* %ni to i8*, !dbg !32
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !32
  call void @llvm.dbg.declare(metadata i32* %ni, metadata !33, metadata !DIExpression()), !dbg !35
  store i32 16, i32* %ni, align 4, !dbg !35
  %1 = bitcast i32* %nj to i8*, !dbg !36
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !36
  call void @llvm.dbg.declare(metadata i32* %nj, metadata !37, metadata !DIExpression()), !dbg !38
  store i32 16, i32* %nj, align 4, !dbg !38
  %2 = bitcast i32* %nk to i8*, !dbg !39
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !39
  call void @llvm.dbg.declare(metadata i32* %nk, metadata !40, metadata !DIExpression()), !dbg !41
  store i32 16, i32* %nk, align 4, !dbg !41
  %3 = bitcast i32* %nl to i8*, !dbg !42
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !42
  call void @llvm.dbg.declare(metadata i32* %nl, metadata !43, metadata !DIExpression()), !dbg !44
  store i32 16, i32* %nl, align 4, !dbg !44
  %4 = bitcast float* %alphas to i8*, !dbg !45
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !45
  call void @llvm.dbg.declare(metadata float* %alphas, metadata !46, metadata !DIExpression()), !dbg !47
  %alphas1 = bitcast float* %alphas to i8*, !dbg !45
  call void @llvm.var.annotation(i8* %alphas1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 33), !dbg !45
  %5 = load float, float* %alpha.addr, align 4, !dbg !48
  store float %5, float* %alphas, align 4, !dbg !49
  %6 = bitcast float* %betas to i8*, !dbg !50
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !50
  call void @llvm.dbg.declare(metadata float* %betas, metadata !51, metadata !DIExpression()), !dbg !52
  %betas2 = bitcast float* %betas to i8*, !dbg !50
  call void @llvm.var.annotation(i8* %betas2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 35), !dbg !50
  %7 = load float, float* %beta.addr, align 4, !dbg !53
  store float %7, float* %betas, align 4, !dbg !54
  %8 = bitcast float** %As to i8*, !dbg !55
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %8) #4, !dbg !55
  call void @llvm.dbg.declare(metadata float** %As, metadata !56, metadata !DIExpression()), !dbg !57
  %As3 = bitcast float** %As to i8*, !dbg !55
  call void @llvm.var.annotation(i8* %As3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 38), !dbg !55
  %9 = load float*, float** %A.addr, align 8, !dbg !58
  store float* %9, float** %As, align 8, !dbg !59
  %10 = bitcast float** %Bs to i8*, !dbg !60
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %10) #4, !dbg !60
  call void @llvm.dbg.declare(metadata float** %Bs, metadata !61, metadata !DIExpression()), !dbg !62
  %Bs4 = bitcast float** %Bs to i8*, !dbg !60
  call void @llvm.var.annotation(i8* %Bs4, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 40), !dbg !60
  %11 = load float*, float** %B.addr, align 8, !dbg !63
  store float* %11, float** %Bs, align 8, !dbg !64
  %12 = bitcast float** %Cs to i8*, !dbg !65
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %12) #4, !dbg !65
  call void @llvm.dbg.declare(metadata float** %Cs, metadata !66, metadata !DIExpression()), !dbg !67
  %Cs5 = bitcast float** %Cs to i8*, !dbg !65
  call void @llvm.var.annotation(i8* %Cs5, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 42), !dbg !65
  %13 = load float*, float** %C.addr, align 8, !dbg !68
  store float* %13, float** %Cs, align 8, !dbg !69
  %14 = bitcast float** %Ds to i8*, !dbg !70
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %14) #4, !dbg !70
  call void @llvm.dbg.declare(metadata float** %Ds, metadata !71, metadata !DIExpression()), !dbg !72
  %Ds6 = bitcast float** %Ds to i8*, !dbg !70
  call void @llvm.var.annotation(i8* %Ds6, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 44), !dbg !70
  %15 = load float*, float** %D.addr, align 8, !dbg !73
  store float* %15, float** %Ds, align 8, !dbg !74
  %16 = bitcast [256 x float]* %tmp to i8*, !dbg !75
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* %16) #4, !dbg !75
  call void @llvm.dbg.declare(metadata [256 x float]* %tmp, metadata !76, metadata !DIExpression()), !dbg !80
  %tmp7 = bitcast [256 x float]* %tmp to i8*, !dbg !75
  call void @llvm.var.annotation(i8* %tmp7, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 46), !dbg !75
  %17 = bitcast i32* %i to i8*, !dbg !81
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #4, !dbg !81
  call void @llvm.dbg.declare(metadata i32* %i, metadata !82, metadata !DIExpression()), !dbg !83
  %i8 = bitcast i32* %i to i8*, !dbg !81
  call void @llvm.var.annotation(i8* %i8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 48), !dbg !81
  %18 = bitcast i32* %j to i8*, !dbg !84
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #4, !dbg !84
  call void @llvm.dbg.declare(metadata i32* %j, metadata !85, metadata !DIExpression()), !dbg !86
  %j9 = bitcast i32* %j to i8*, !dbg !84
  call void @llvm.var.annotation(i8* %j9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 49), !dbg !84
  %19 = bitcast i32* %k to i8*, !dbg !87
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #4, !dbg !87
  call void @llvm.dbg.declare(metadata i32* %k, metadata !88, metadata !DIExpression()), !dbg !89
  %k10 = bitcast i32* %k to i8*, !dbg !87
  call void @llvm.var.annotation(i8* %k10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 50), !dbg !87
  br label %VITIS_LOOP_53_1, !dbg !87

VITIS_LOOP_53_1:                                  ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !90
  br label %for.cond, !dbg !92

for.cond:                                         ; preds = %for.inc35, %VITIS_LOOP_53_1
  %20 = load i32, i32* %i, align 4, !dbg !93
  %cmp = icmp slt i32 %20, 16, !dbg !95
  br i1 %cmp, label %for.body, label %for.end37, !dbg !96

for.body:                                         ; preds = %for.cond
  br label %VITIS_LOOP_55_2, !dbg !97

VITIS_LOOP_55_2:                                  ; preds = %for.body
  store i32 0, i32* %j, align 4, !dbg !98
  br label %for.cond11, !dbg !101

for.cond11:                                       ; preds = %for.inc32, %VITIS_LOOP_55_2
  %21 = load i32, i32* %j, align 4, !dbg !102
  %cmp12 = icmp slt i32 %21, 16, !dbg !104
  br i1 %cmp12, label %for.body13, label %for.end34, !dbg !105

for.body13:                                       ; preds = %for.cond11
  %22 = load i32, i32* %i, align 4, !dbg !106
  %23 = load i32, i32* %nj, align 4, !dbg !108
  %mul = mul nsw i32 %22, %23, !dbg !109
  %24 = load i32, i32* %j, align 4, !dbg !110
  %add = add nsw i32 %mul, %24, !dbg !111
  %idxprom = sext i32 %add to i64, !dbg !112
  %arrayidx = getelementptr inbounds [256 x float], [256 x float]* %tmp, i64 0, i64 %idxprom, !dbg !112
  store float 0.000000e+00, float* %arrayidx, align 4, !dbg !113
  br label %VITIS_LOOP_58_3, !dbg !112

VITIS_LOOP_58_3:                                  ; preds = %for.body13
  store i32 0, i32* %k, align 4, !dbg !114
  br label %for.cond14, !dbg !116

for.cond14:                                       ; preds = %for.inc, %VITIS_LOOP_58_3
  %25 = load i32, i32* %k, align 4, !dbg !117
  %cmp15 = icmp slt i32 %25, 16, !dbg !119
  br i1 %cmp15, label %for.body16, label %for.end, !dbg !120

for.body16:                                       ; preds = %for.cond14
  %26 = load float, float* %alphas, align 4, !dbg !121
  %27 = load float*, float** %As, align 8, !dbg !123
  %28 = load i32, i32* %i, align 4, !dbg !124
  %29 = load i32, i32* %nk, align 4, !dbg !125
  %mul17 = mul nsw i32 %28, %29, !dbg !126
  %30 = load i32, i32* %k, align 4, !dbg !127
  %add18 = add nsw i32 %mul17, %30, !dbg !128
  %idxprom19 = sext i32 %add18 to i64, !dbg !123
  %arrayidx20 = getelementptr inbounds float, float* %27, i64 %idxprom19, !dbg !123
  %31 = load float, float* %arrayidx20, align 4, !dbg !123
  %mul21 = fmul float %26, %31, !dbg !129
  %32 = load float*, float** %Bs, align 8, !dbg !130
  %33 = load i32, i32* %k, align 4, !dbg !131
  %34 = load i32, i32* %nj, align 4, !dbg !132
  %mul22 = mul nsw i32 %33, %34, !dbg !133
  %35 = load i32, i32* %j, align 4, !dbg !134
  %add23 = add nsw i32 %mul22, %35, !dbg !135
  %idxprom24 = sext i32 %add23 to i64, !dbg !130
  %arrayidx25 = getelementptr inbounds float, float* %32, i64 %idxprom24, !dbg !130
  %36 = load float, float* %arrayidx25, align 4, !dbg !130
  %mul26 = fmul float %mul21, %36, !dbg !136
  %37 = load i32, i32* %i, align 4, !dbg !137
  %38 = load i32, i32* %nj, align 4, !dbg !138
  %mul27 = mul nsw i32 %37, %38, !dbg !139
  %39 = load i32, i32* %j, align 4, !dbg !140
  %add28 = add nsw i32 %mul27, %39, !dbg !141
  %idxprom29 = sext i32 %add28 to i64, !dbg !142
  %arrayidx30 = getelementptr inbounds [256 x float], [256 x float]* %tmp, i64 0, i64 %idxprom29, !dbg !142
  %40 = load float, float* %arrayidx30, align 4, !dbg !143
  %add31 = fadd float %40, %mul26, !dbg !143
  store float %add31, float* %arrayidx30, align 4, !dbg !143
  br label %for.inc, !dbg !144

for.inc:                                          ; preds = %for.body16
  %41 = load i32, i32* %k, align 4, !dbg !145
  %inc = add nsw i32 %41, 1, !dbg !145
  store i32 %inc, i32* %k, align 4, !dbg !145
  br label %for.cond14, !dbg !146, !llvm.loop !147

for.end:                                          ; preds = %for.cond14
  br label %for.inc32, !dbg !150

for.inc32:                                        ; preds = %for.end
  %42 = load i32, i32* %j, align 4, !dbg !151
  %inc33 = add nsw i32 %42, 1, !dbg !151
  store i32 %inc33, i32* %j, align 4, !dbg !151
  br label %for.cond11, !dbg !152, !llvm.loop !153

for.end34:                                        ; preds = %for.cond11
  br label %for.inc35, !dbg !156

for.inc35:                                        ; preds = %for.end34
  %43 = load i32, i32* %i, align 4, !dbg !157
  %inc36 = add nsw i32 %43, 1, !dbg !157
  store i32 %inc36, i32* %i, align 4, !dbg !157
  br label %for.cond, !dbg !158, !llvm.loop !159

for.end37:                                        ; preds = %for.cond
  br label %VITIS_LOOP_65_4, !dbg !160

VITIS_LOOP_65_4:                                  ; preds = %for.end37
  store i32 0, i32* %i, align 4, !dbg !162
  br label %for.cond38, !dbg !164

for.cond38:                                       ; preds = %for.inc72, %VITIS_LOOP_65_4
  %44 = load i32, i32* %i, align 4, !dbg !165
  %cmp39 = icmp slt i32 %44, 16, !dbg !167
  br i1 %cmp39, label %for.body40, label %for.end74, !dbg !168

for.body40:                                       ; preds = %for.cond38
  br label %VITIS_LOOP_67_5, !dbg !169

VITIS_LOOP_67_5:                                  ; preds = %for.body40
  store i32 0, i32* %j, align 4, !dbg !170
  br label %for.cond41, !dbg !173

for.cond41:                                       ; preds = %for.inc69, %VITIS_LOOP_67_5
  %45 = load i32, i32* %j, align 4, !dbg !174
  %cmp42 = icmp slt i32 %45, 16, !dbg !176
  br i1 %cmp42, label %for.body43, label %for.end71, !dbg !177

for.body43:                                       ; preds = %for.cond41
  %46 = load float, float* %betas, align 4, !dbg !178
  %47 = load float*, float** %Ds, align 8, !dbg !180
  %48 = load i32, i32* %i, align 4, !dbg !181
  %49 = load i32, i32* %nl, align 4, !dbg !182
  %mul44 = mul nsw i32 %48, %49, !dbg !183
  %50 = load i32, i32* %j, align 4, !dbg !184
  %add45 = add nsw i32 %mul44, %50, !dbg !185
  %idxprom46 = sext i32 %add45 to i64, !dbg !180
  %arrayidx47 = getelementptr inbounds float, float* %47, i64 %idxprom46, !dbg !180
  %51 = load float, float* %arrayidx47, align 4, !dbg !186
  %mul48 = fmul float %51, %46, !dbg !186
  store float %mul48, float* %arrayidx47, align 4, !dbg !186
  br label %VITIS_LOOP_70_6, !dbg !180

VITIS_LOOP_70_6:                                  ; preds = %for.body43
  store i32 0, i32* %k, align 4, !dbg !187
  br label %for.cond49, !dbg !189

for.cond49:                                       ; preds = %for.inc66, %VITIS_LOOP_70_6
  %52 = load i32, i32* %k, align 4, !dbg !190
  %cmp50 = icmp slt i32 %52, 16, !dbg !192
  br i1 %cmp50, label %for.body51, label %for.end68, !dbg !193

for.body51:                                       ; preds = %for.cond49
  %53 = load i32, i32* %i, align 4, !dbg !194
  %54 = load i32, i32* %nj, align 4, !dbg !196
  %mul52 = mul nsw i32 %53, %54, !dbg !197
  %55 = load i32, i32* %k, align 4, !dbg !198
  %add53 = add nsw i32 %mul52, %55, !dbg !199
  %idxprom54 = sext i32 %add53 to i64, !dbg !200
  %arrayidx55 = getelementptr inbounds [256 x float], [256 x float]* %tmp, i64 0, i64 %idxprom54, !dbg !200
  %56 = load float, float* %arrayidx55, align 4, !dbg !200
  %57 = load float*, float** %Cs, align 8, !dbg !201
  %58 = load i32, i32* %k, align 4, !dbg !202
  %59 = load i32, i32* %nl, align 4, !dbg !203
  %mul56 = mul nsw i32 %58, %59, !dbg !204
  %60 = load i32, i32* %j, align 4, !dbg !205
  %add57 = add nsw i32 %mul56, %60, !dbg !206
  %idxprom58 = sext i32 %add57 to i64, !dbg !201
  %arrayidx59 = getelementptr inbounds float, float* %57, i64 %idxprom58, !dbg !201
  %61 = load float, float* %arrayidx59, align 4, !dbg !201
  %mul60 = fmul float %56, %61, !dbg !207
  %62 = load float*, float** %Ds, align 8, !dbg !208
  %63 = load i32, i32* %i, align 4, !dbg !209
  %64 = load i32, i32* %nl, align 4, !dbg !210
  %mul61 = mul nsw i32 %63, %64, !dbg !211
  %65 = load i32, i32* %j, align 4, !dbg !212
  %add62 = add nsw i32 %mul61, %65, !dbg !213
  %idxprom63 = sext i32 %add62 to i64, !dbg !208
  %arrayidx64 = getelementptr inbounds float, float* %62, i64 %idxprom63, !dbg !208
  %66 = load float, float* %arrayidx64, align 4, !dbg !214
  %add65 = fadd float %66, %mul60, !dbg !214
  store float %add65, float* %arrayidx64, align 4, !dbg !214
  br label %for.inc66, !dbg !215

for.inc66:                                        ; preds = %for.body51
  %67 = load i32, i32* %k, align 4, !dbg !216
  %inc67 = add nsw i32 %67, 1, !dbg !216
  store i32 %inc67, i32* %k, align 4, !dbg !216
  br label %for.cond49, !dbg !217, !llvm.loop !218

for.end68:                                        ; preds = %for.cond49
  br label %for.inc69, !dbg !221

for.inc69:                                        ; preds = %for.end68
  %68 = load i32, i32* %j, align 4, !dbg !222
  %inc70 = add nsw i32 %68, 1, !dbg !222
  store i32 %inc70, i32* %j, align 4, !dbg !222
  br label %for.cond41, !dbg !223, !llvm.loop !224

for.end71:                                        ; preds = %for.cond41
  br label %for.inc72, !dbg !227

for.inc72:                                        ; preds = %for.end71
  %69 = load i32, i32* %i, align 4, !dbg !228
  %inc73 = add nsw i32 %69, 1, !dbg !228
  store i32 %inc73, i32* %i, align 4, !dbg !228
  br label %for.cond38, !dbg !229, !llvm.loop !230

for.end74:                                        ; preds = %for.cond38
  %70 = bitcast i32* %k to i8*, !dbg !233
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %70) #4, !dbg !233
  %71 = bitcast i32* %j to i8*, !dbg !233
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %71) #4, !dbg !233
  %72 = bitcast i32* %i to i8*, !dbg !233
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %72) #4, !dbg !233
  %73 = bitcast [256 x float]* %tmp to i8*, !dbg !233
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* %73) #4, !dbg !233
  %74 = bitcast float** %Ds to i8*, !dbg !233
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %74) #4, !dbg !233
  %75 = bitcast float** %Cs to i8*, !dbg !233
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %75) #4, !dbg !233
  %76 = bitcast float** %Bs to i8*, !dbg !233
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %76) #4, !dbg !233
  %77 = bitcast float** %As to i8*, !dbg !233
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %77) #4, !dbg !233
  %78 = bitcast float* %betas to i8*, !dbg !233
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %78) #4, !dbg !233
  %79 = bitcast float* %alphas to i8*, !dbg !233
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %79) #4, !dbg !233
  %80 = bitcast i32* %nl to i8*, !dbg !233
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %80) #4, !dbg !233
  %81 = bitcast i32* %nk to i8*, !dbg !233
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %81) #4, !dbg !233
  %82 = bitcast i32* %nj to i8*, !dbg !233
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %82) #4, !dbg !233
  %83 = bitcast i32* %ni to i8*, !dbg !233
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %83) #4, !dbg !233
  ret void, !dbg !233
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.var.annotation(i8*, i8*, i8*, i32) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #3

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.top.func"="mm2" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { inaccessiblememonly nounwind }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind }
attributes #5 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="0" "xlx.source"="user" }

!llvm.dbg.cu = !{!0}
!llvm.ident = !{!3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3}
!llvm.module.flags = !{!4, !5, !6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/home/bruno/Desktop/benchmarks/mm2/proj_mm2/solution1/.autopilot/db/mm2_taffo.pp.0.c", directory: "/home/bruno/Desktop/benchmarks/mm2")
!2 = !{}
!3 = !{!"clang version 7.0.0 "}
!4 = !{i32 2, !"Dwarf Version", i32 4}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = distinct !DISubprogram(name: "mm2", scope: !8, file: !8, line: 23, type: !9, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DIFile(filename: "mm2_taffo.c", directory: "/home/bruno/Desktop/benchmarks/mm2")
!9 = !DISubroutineType(types: !10)
!10 = !{null, !11, !11, !11, !11, !12, !12}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!13 = !{!14}
!14 = !{!"fpga.top", !"user", !15}
!15 = !DILocation(line: 23, column: 16, scope: !7)
!16 = !DILocalVariable(name: "A", arg: 1, scope: !7, file: !8, line: 23, type: !11)
!17 = !DILocation(line: 23, column: 55, scope: !7)
!18 = !DILocalVariable(name: "B", arg: 2, scope: !7, file: !8, line: 23, type: !11)
!19 = !DILocation(line: 23, column: 65, scope: !7)
!20 = !DILocalVariable(name: "C", arg: 3, scope: !7, file: !8, line: 23, type: !11)
!21 = !DILocation(line: 23, column: 75, scope: !7)
!22 = !DILocalVariable(name: "D", arg: 4, scope: !7, file: !8, line: 23, type: !11)
!23 = !DILocation(line: 23, column: 85, scope: !7)
!24 = !DILocalVariable(name: "alpha", arg: 5, scope: !7, file: !8, line: 23, type: !12)
!25 = !DILocation(line: 23, column: 94, scope: !7)
!26 = !DILocalVariable(name: "beta", arg: 6, scope: !7, file: !8, line: 23, type: !12)
!27 = !DILocation(line: 23, column: 107, scope: !7)
!28 = !DILocation(line: 25, column: 9, scope: !7)
!29 = !DILocation(line: 26, column: 9, scope: !7)
!30 = !DILocation(line: 27, column: 9, scope: !7)
!31 = !DILocation(line: 28, column: 9, scope: !7)
!32 = !DILocation(line: 29, column: 2, scope: !7)
!33 = !DILocalVariable(name: "ni", scope: !7, file: !8, line: 29, type: !34)
!34 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!35 = !DILocation(line: 29, column: 6, scope: !7)
!36 = !DILocation(line: 30, column: 3, scope: !7)
!37 = !DILocalVariable(name: "nj", scope: !7, file: !8, line: 30, type: !34)
!38 = !DILocation(line: 30, column: 7, scope: !7)
!39 = !DILocation(line: 31, column: 3, scope: !7)
!40 = !DILocalVariable(name: "nk", scope: !7, file: !8, line: 31, type: !34)
!41 = !DILocation(line: 31, column: 7, scope: !7)
!42 = !DILocation(line: 32, column: 3, scope: !7)
!43 = !DILocalVariable(name: "nl", scope: !7, file: !8, line: 32, type: !34)
!44 = !DILocation(line: 32, column: 7, scope: !7)
!45 = !DILocation(line: 33, column: 3, scope: !7)
!46 = !DILocalVariable(name: "alphas", scope: !7, file: !8, line: 33, type: !12)
!47 = !DILocation(line: 33, column: 9, scope: !7)
!48 = !DILocation(line: 34, column: 12, scope: !7)
!49 = !DILocation(line: 34, column: 10, scope: !7)
!50 = !DILocation(line: 35, column: 3, scope: !7)
!51 = !DILocalVariable(name: "betas", scope: !7, file: !8, line: 35, type: !12)
!52 = !DILocation(line: 35, column: 9, scope: !7)
!53 = !DILocation(line: 36, column: 9, scope: !7)
!54 = !DILocation(line: 36, column: 8, scope: !7)
!55 = !DILocation(line: 38, column: 3, scope: !7)
!56 = !DILocalVariable(name: "As", scope: !7, file: !8, line: 38, type: !11)
!57 = !DILocation(line: 38, column: 10, scope: !7)
!58 = !DILocation(line: 39, column: 8, scope: !7)
!59 = !DILocation(line: 39, column: 6, scope: !7)
!60 = !DILocation(line: 40, column: 3, scope: !7)
!61 = !DILocalVariable(name: "Bs", scope: !7, file: !8, line: 40, type: !11)
!62 = !DILocation(line: 40, column: 10, scope: !7)
!63 = !DILocation(line: 41, column: 8, scope: !7)
!64 = !DILocation(line: 41, column: 6, scope: !7)
!65 = !DILocation(line: 42, column: 3, scope: !7)
!66 = !DILocalVariable(name: "Cs", scope: !7, file: !8, line: 42, type: !11)
!67 = !DILocation(line: 42, column: 10, scope: !7)
!68 = !DILocation(line: 43, column: 8, scope: !7)
!69 = !DILocation(line: 43, column: 6, scope: !7)
!70 = !DILocation(line: 44, column: 3, scope: !7)
!71 = !DILocalVariable(name: "Ds", scope: !7, file: !8, line: 44, type: !11)
!72 = !DILocation(line: 44, column: 10, scope: !7)
!73 = !DILocation(line: 45, column: 8, scope: !7)
!74 = !DILocation(line: 45, column: 6, scope: !7)
!75 = !DILocation(line: 46, column: 3, scope: !7)
!76 = !DILocalVariable(name: "tmp", scope: !7, file: !8, line: 46, type: !77)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 8192, elements: !78)
!78 = !{!79}
!79 = !DISubrange(count: 256)
!80 = !DILocation(line: 46, column: 9, scope: !7)
!81 = !DILocation(line: 48, column: 3, scope: !7)
!82 = !DILocalVariable(name: "i", scope: !7, file: !8, line: 48, type: !34)
!83 = !DILocation(line: 48, column: 7, scope: !7)
!84 = !DILocation(line: 49, column: 3, scope: !7)
!85 = !DILocalVariable(name: "j", scope: !7, file: !8, line: 49, type: !34)
!86 = !DILocation(line: 49, column: 7, scope: !7)
!87 = !DILocation(line: 50, column: 3, scope: !7)
!88 = !DILocalVariable(name: "k", scope: !7, file: !8, line: 50, type: !34)
!89 = !DILocation(line: 50, column: 7, scope: !7)
!90 = !DILocation(line: 53, column: 27, scope: !91)
!91 = distinct !DILexicalBlock(scope: !7, file: !8, line: 53, column: 20)
!92 = !DILocation(line: 53, column: 25, scope: !91)
!93 = !DILocation(line: 53, column: 32, scope: !94)
!94 = distinct !DILexicalBlock(scope: !91, file: !8, line: 53, column: 20)
!95 = !DILocation(line: 53, column: 34, scope: !94)
!96 = !DILocation(line: 53, column: 20, scope: !91)
!97 = !DILocation(line: 53, column: 44, scope: !94)
!98 = !DILocation(line: 55, column: 29, scope: !99)
!99 = distinct !DILexicalBlock(scope: !100, file: !8, line: 55, column: 22)
!100 = distinct !DILexicalBlock(scope: !94, file: !8, line: 53, column: 44)
!101 = !DILocation(line: 55, column: 27, scope: !99)
!102 = !DILocation(line: 55, column: 34, scope: !103)
!103 = distinct !DILexicalBlock(scope: !99, file: !8, line: 55, column: 22)
!104 = !DILocation(line: 55, column: 36, scope: !103)
!105 = !DILocation(line: 55, column: 22, scope: !99)
!106 = !DILocation(line: 57, column: 10, scope: !107)
!107 = distinct !DILexicalBlock(scope: !103, file: !8, line: 55, column: 46)
!108 = !DILocation(line: 57, column: 12, scope: !107)
!109 = !DILocation(line: 57, column: 11, scope: !107)
!110 = !DILocation(line: 57, column: 15, scope: !107)
!111 = !DILocation(line: 57, column: 14, scope: !107)
!112 = !DILocation(line: 57, column: 6, scope: !107)
!113 = !DILocation(line: 57, column: 18, scope: !107)
!114 = !DILocation(line: 58, column: 30, scope: !115)
!115 = distinct !DILexicalBlock(scope: !107, file: !8, line: 58, column: 23)
!116 = !DILocation(line: 58, column: 28, scope: !115)
!117 = !DILocation(line: 58, column: 35, scope: !118)
!118 = distinct !DILexicalBlock(scope: !115, file: !8, line: 58, column: 23)
!119 = !DILocation(line: 58, column: 37, scope: !118)
!120 = !DILocation(line: 58, column: 23, scope: !115)
!121 = !DILocation(line: 60, column: 24, scope: !122)
!122 = distinct !DILexicalBlock(scope: !118, file: !8, line: 58, column: 47)
!123 = !DILocation(line: 60, column: 33, scope: !122)
!124 = !DILocation(line: 60, column: 36, scope: !122)
!125 = !DILocation(line: 60, column: 38, scope: !122)
!126 = !DILocation(line: 60, column: 37, scope: !122)
!127 = !DILocation(line: 60, column: 41, scope: !122)
!128 = !DILocation(line: 60, column: 40, scope: !122)
!129 = !DILocation(line: 60, column: 31, scope: !122)
!130 = !DILocation(line: 60, column: 46, scope: !122)
!131 = !DILocation(line: 60, column: 49, scope: !122)
!132 = !DILocation(line: 60, column: 51, scope: !122)
!133 = !DILocation(line: 60, column: 50, scope: !122)
!134 = !DILocation(line: 60, column: 54, scope: !122)
!135 = !DILocation(line: 60, column: 53, scope: !122)
!136 = !DILocation(line: 60, column: 44, scope: !122)
!137 = !DILocation(line: 60, column: 13, scope: !122)
!138 = !DILocation(line: 60, column: 15, scope: !122)
!139 = !DILocation(line: 60, column: 14, scope: !122)
!140 = !DILocation(line: 60, column: 18, scope: !122)
!141 = !DILocation(line: 60, column: 17, scope: !122)
!142 = !DILocation(line: 60, column: 9, scope: !122)
!143 = !DILocation(line: 60, column: 21, scope: !122)
!144 = !DILocation(line: 61, column: 9, scope: !122)
!145 = !DILocation(line: 58, column: 43, scope: !118)
!146 = !DILocation(line: 58, column: 23, scope: !118)
!147 = distinct !{!147, !120, !148, !149}
!148 = !DILocation(line: 61, column: 9, scope: !115)
!149 = !{!"llvm.loop.name", !"VITIS_LOOP_58_3"}
!150 = !DILocation(line: 62, column: 5, scope: !107)
!151 = !DILocation(line: 55, column: 43, scope: !103)
!152 = !DILocation(line: 55, column: 22, scope: !103)
!153 = distinct !{!153, !105, !154, !155}
!154 = !DILocation(line: 62, column: 5, scope: !99)
!155 = !{!"llvm.loop.name", !"VITIS_LOOP_55_2"}
!156 = !DILocation(line: 63, column: 3, scope: !100)
!157 = !DILocation(line: 53, column: 41, scope: !94)
!158 = !DILocation(line: 53, column: 20, scope: !94)
!159 = distinct !{!159, !96, !160, !161}
!160 = !DILocation(line: 63, column: 3, scope: !91)
!161 = !{!"llvm.loop.name", !"VITIS_LOOP_53_1"}
!162 = !DILocation(line: 65, column: 27, scope: !163)
!163 = distinct !DILexicalBlock(scope: !7, file: !8, line: 65, column: 20)
!164 = !DILocation(line: 65, column: 25, scope: !163)
!165 = !DILocation(line: 65, column: 32, scope: !166)
!166 = distinct !DILexicalBlock(scope: !163, file: !8, line: 65, column: 20)
!167 = !DILocation(line: 65, column: 34, scope: !166)
!168 = !DILocation(line: 65, column: 20, scope: !163)
!169 = !DILocation(line: 65, column: 44, scope: !166)
!170 = !DILocation(line: 67, column: 29, scope: !171)
!171 = distinct !DILexicalBlock(scope: !172, file: !8, line: 67, column: 22)
!172 = distinct !DILexicalBlock(scope: !166, file: !8, line: 65, column: 44)
!173 = !DILocation(line: 67, column: 27, scope: !171)
!174 = !DILocation(line: 67, column: 34, scope: !175)
!175 = distinct !DILexicalBlock(scope: !171, file: !8, line: 67, column: 22)
!176 = !DILocation(line: 67, column: 36, scope: !175)
!177 = !DILocation(line: 67, column: 22, scope: !171)
!178 = !DILocation(line: 69, column: 16, scope: !179)
!179 = distinct !DILexicalBlock(scope: !175, file: !8, line: 67, column: 46)
!180 = !DILocation(line: 69, column: 2, scope: !179)
!181 = !DILocation(line: 69, column: 5, scope: !179)
!182 = !DILocation(line: 69, column: 7, scope: !179)
!183 = !DILocation(line: 69, column: 6, scope: !179)
!184 = !DILocation(line: 69, column: 10, scope: !179)
!185 = !DILocation(line: 69, column: 9, scope: !179)
!186 = !DILocation(line: 69, column: 13, scope: !179)
!187 = !DILocation(line: 70, column: 26, scope: !188)
!188 = distinct !DILexicalBlock(scope: !179, file: !8, line: 70, column: 19)
!189 = !DILocation(line: 70, column: 24, scope: !188)
!190 = !DILocation(line: 70, column: 31, scope: !191)
!191 = distinct !DILexicalBlock(scope: !188, file: !8, line: 70, column: 19)
!192 = !DILocation(line: 70, column: 33, scope: !191)
!193 = !DILocation(line: 70, column: 19, scope: !188)
!194 = !DILocation(line: 72, column: 28, scope: !195)
!195 = distinct !DILexicalBlock(scope: !191, file: !8, line: 70, column: 43)
!196 = !DILocation(line: 72, column: 30, scope: !195)
!197 = !DILocation(line: 72, column: 29, scope: !195)
!198 = !DILocation(line: 72, column: 33, scope: !195)
!199 = !DILocation(line: 72, column: 32, scope: !195)
!200 = !DILocation(line: 72, column: 24, scope: !195)
!201 = !DILocation(line: 72, column: 38, scope: !195)
!202 = !DILocation(line: 72, column: 41, scope: !195)
!203 = !DILocation(line: 72, column: 43, scope: !195)
!204 = !DILocation(line: 72, column: 42, scope: !195)
!205 = !DILocation(line: 72, column: 46, scope: !195)
!206 = !DILocation(line: 72, column: 45, scope: !195)
!207 = !DILocation(line: 72, column: 36, scope: !195)
!208 = !DILocation(line: 72, column: 10, scope: !195)
!209 = !DILocation(line: 72, column: 13, scope: !195)
!210 = !DILocation(line: 72, column: 15, scope: !195)
!211 = !DILocation(line: 72, column: 14, scope: !195)
!212 = !DILocation(line: 72, column: 18, scope: !195)
!213 = !DILocation(line: 72, column: 17, scope: !195)
!214 = !DILocation(line: 72, column: 21, scope: !195)
!215 = !DILocation(line: 73, column: 9, scope: !195)
!216 = !DILocation(line: 70, column: 39, scope: !191)
!217 = !DILocation(line: 70, column: 19, scope: !191)
!218 = distinct !{!218, !193, !219, !220}
!219 = !DILocation(line: 73, column: 9, scope: !188)
!220 = !{!"llvm.loop.name", !"VITIS_LOOP_70_6"}
!221 = !DILocation(line: 74, column: 5, scope: !179)
!222 = !DILocation(line: 67, column: 43, scope: !175)
!223 = !DILocation(line: 67, column: 22, scope: !175)
!224 = distinct !{!224, !177, !225, !226}
!225 = !DILocation(line: 74, column: 5, scope: !171)
!226 = !{!"llvm.loop.name", !"VITIS_LOOP_67_5"}
!227 = !DILocation(line: 75, column: 3, scope: !172)
!228 = !DILocation(line: 65, column: 41, scope: !166)
!229 = !DILocation(line: 65, column: 20, scope: !166)
!230 = distinct !{!230, !168, !231, !232}
!231 = !DILocation(line: 75, column: 3, scope: !163)
!232 = !{!"llvm.loop.name", !"VITIS_LOOP_65_4"}
!233 = !DILocation(line: 77, column: 1, scope: !7)
