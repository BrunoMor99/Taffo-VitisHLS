; ModuleID = '/home/bruno/Desktop/benchmarks/covariance/proj_covariance/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.global_ctors = appending global [0 x { i32, void ()*, i8* }] zeroinitializer
@.str = private unnamed_addr constant [21 x i8] c"scalar(range(0, 16))\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [19 x i8] c"covariance_taffo.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [23 x i8] c"scalar(range(2, 3000))\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [16 x i8] c"scalar(range())\00", section "llvm.metadata"
@.str.4 = private unnamed_addr constant [23 x i8] c"scalar(range(1, 3000))\00", section "llvm.metadata"
@.str.5 = private unnamed_addr constant [9 x i8] c"scalar()\00", section "llvm.metadata"
@.str.6 = private unnamed_addr constant [47 x i8] c"target('cov') scalar(range(-2097152, 2097151))\00", section "llvm.metadata"
@.str.7 = private unnamed_addr constant [25 x i8] c"scalar(range(-300, 300))\00", section "llvm.metadata"

; Function Attrs: nounwind
define void @covariance(float* %data, float* %cov, float* %mean) #0 !dbg !9 !fpga.function.pragma !14 {
entry:
  %data.addr = alloca float*, align 8
  %cov.addr = alloca float*, align 8
  %mean.addr = alloca float*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %n = alloca i32, align 4
  %m = alloca i32, align 4
  %float_n = alloca float, align 4
  %onedotzero = alloca float, align 4
  %q = alloca float, align 4
  %datas = alloca float*, align 8
  %covs = alloca float*, align 8
  %means = alloca float*, align 8
  %sum = alloca float, align 4
  store float* %data, float** %data.addr, align 8
  call void @llvm.dbg.declare(metadata float** %data.addr, metadata !17, metadata !DIExpression()), !dbg !18
  store float* %cov, float** %cov.addr, align 8
  call void @llvm.dbg.declare(metadata float** %cov.addr, metadata !19, metadata !DIExpression()), !dbg !20
  store float* %mean, float** %mean.addr, align 8
  call void @llvm.dbg.declare(metadata float** %mean.addr, metadata !21, metadata !DIExpression()), !dbg !22
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %data, [0 x i8] zeroinitializer, i64 256, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !23
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %cov, [0 x i8] zeroinitializer, i64 256, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !24
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %mean, [0 x i8] zeroinitializer, i64 16, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !25
  %0 = bitcast i32* %i to i8*, !dbg !26
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !26
  call void @llvm.dbg.declare(metadata i32* %i, metadata !27, metadata !DIExpression()), !dbg !29
  %i1 = bitcast i32* %i to i8*, !dbg !26
  call void @llvm.var.annotation(i8* %i1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i32 23), !dbg !26
  %1 = bitcast i32* %j to i8*, !dbg !30
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !30
  call void @llvm.dbg.declare(metadata i32* %j, metadata !31, metadata !DIExpression()), !dbg !32
  %j2 = bitcast i32* %j to i8*, !dbg !30
  call void @llvm.var.annotation(i8* %j2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i32 24), !dbg !30
  %2 = bitcast i32* %k to i8*, !dbg !33
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !33
  call void @llvm.dbg.declare(metadata i32* %k, metadata !34, metadata !DIExpression()), !dbg !35
  %k3 = bitcast i32* %k to i8*, !dbg !33
  call void @llvm.var.annotation(i8* %k3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i32 25), !dbg !33
  %3 = bitcast i32* %n to i8*, !dbg !36
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !36
  call void @llvm.dbg.declare(metadata i32* %n, metadata !37, metadata !DIExpression()), !dbg !38
  store i32 16, i32* %n, align 4, !dbg !38
  %4 = bitcast i32* %m to i8*, !dbg !39
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !39
  call void @llvm.dbg.declare(metadata i32* %m, metadata !40, metadata !DIExpression()), !dbg !41
  store i32 16, i32* %m, align 4, !dbg !41
  %5 = bitcast float* %float_n to i8*, !dbg !42
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !42
  call void @llvm.dbg.declare(metadata float* %float_n, metadata !43, metadata !DIExpression()), !dbg !44
  %float_n4 = bitcast float* %float_n to i8*, !dbg !42
  call void @llvm.var.annotation(i8* %float_n4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i32 28), !dbg !42
  %6 = bitcast float* %onedotzero to i8*, !dbg !45
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !45
  call void @llvm.dbg.declare(metadata float* %onedotzero, metadata !46, metadata !DIExpression()), !dbg !47
  %onedotzero5 = bitcast float* %onedotzero to i8*, !dbg !45
  call void @llvm.var.annotation(i8* %onedotzero5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i32 29), !dbg !45
  store float 1.000000e+00, float* %onedotzero, align 4, !dbg !48
  %7 = load i32, i32* %n, align 4, !dbg !49
  %conv = sitofp i32 %7 to float, !dbg !49
  store float %conv, float* %float_n, align 4, !dbg !50
  %8 = bitcast float* %q to i8*, !dbg !51
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4, !dbg !51
  call void @llvm.dbg.declare(metadata float* %q, metadata !52, metadata !DIExpression()), !dbg !53
  %q6 = bitcast float* %q to i8*, !dbg !51
  call void @llvm.var.annotation(i8* %q6, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i32 32), !dbg !51
  %9 = load float, float* %float_n, align 4, !dbg !54
  %10 = load float, float* %onedotzero, align 4, !dbg !55
  %sub = fsub float %9, %10, !dbg !56
  store float %sub, float* %q, align 4, !dbg !57
  %11 = bitcast float** %datas to i8*, !dbg !58
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %11) #4, !dbg !58
  call void @llvm.dbg.declare(metadata float** %datas, metadata !59, metadata !DIExpression()), !dbg !60
  %datas7 = bitcast float** %datas to i8*, !dbg !58
  call void @llvm.var.annotation(i8* %datas7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i32 34), !dbg !58
  %12 = load float*, float** %data.addr, align 8, !dbg !61
  store float* %12, float** %datas, align 8, !dbg !62
  %13 = bitcast float** %covs to i8*, !dbg !63
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %13) #4, !dbg !63
  call void @llvm.dbg.declare(metadata float** %covs, metadata !64, metadata !DIExpression()), !dbg !65
  %covs8 = bitcast float** %covs to i8*, !dbg !63
  call void @llvm.var.annotation(i8* %covs8, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i32 36), !dbg !63
  %14 = load float*, float** %cov.addr, align 8, !dbg !66
  store float* %14, float** %covs, align 8, !dbg !67
  %15 = bitcast float** %means to i8*, !dbg !68
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %15) #4, !dbg !68
  call void @llvm.dbg.declare(metadata float** %means, metadata !69, metadata !DIExpression()), !dbg !70
  %means9 = bitcast float** %means to i8*, !dbg !68
  call void @llvm.var.annotation(i8* %means9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i32 38), !dbg !68
  %16 = load float*, float** %mean.addr, align 8, !dbg !71
  store float* %16, float** %means, align 8, !dbg !72
  %17 = bitcast float* %sum to i8*, !dbg !73
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #4, !dbg !73
  call void @llvm.dbg.declare(metadata float* %sum, metadata !74, metadata !DIExpression()), !dbg !75
  %sum10 = bitcast float* %sum to i8*, !dbg !73
  call void @llvm.var.annotation(i8* %sum10, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i32 40), !dbg !73
  store float 0.000000e+00, float* %sum, align 4, !dbg !75
  br label %VITIS_LOOP_41_1, !dbg !73

VITIS_LOOP_41_1:                                  ; preds = %entry
  store i32 0, i32* %j, align 4, !dbg !76
  br label %for.cond, !dbg !78

for.cond:                                         ; preds = %for.inc19, %VITIS_LOOP_41_1
  %18 = load i32, i32* %j, align 4, !dbg !79
  %cmp = icmp slt i32 %18, 16, !dbg !81
  br i1 %cmp, label %for.body, label %for.end21, !dbg !82

for.body:                                         ; preds = %for.cond
  br label %VITIS_LOOP_44_2, !dbg !83

VITIS_LOOP_44_2:                                  ; preds = %for.body
  store i32 0, i32* %i, align 4, !dbg !84
  br label %for.cond11, !dbg !87

for.cond11:                                       ; preds = %for.inc, %VITIS_LOOP_44_2
  %19 = load i32, i32* %i, align 4, !dbg !88
  %cmp12 = icmp slt i32 %19, 16, !dbg !90
  br i1 %cmp12, label %for.body13, label %for.end, !dbg !91

for.body13:                                       ; preds = %for.cond11
  %20 = load float*, float** %datas, align 8, !dbg !92
  %21 = load i32, i32* %i, align 4, !dbg !94
  %22 = load i32, i32* %m, align 4, !dbg !95
  %mul = mul nsw i32 %21, %22, !dbg !96
  %23 = load i32, i32* %j, align 4, !dbg !97
  %add = add nsw i32 %mul, %23, !dbg !98
  %idxprom = sext i32 %add to i64, !dbg !92
  %arrayidx = getelementptr inbounds float, float* %20, i64 %idxprom, !dbg !92
  %24 = load float, float* %arrayidx, align 4, !dbg !92
  %25 = load float*, float** %means, align 8, !dbg !99
  %26 = load i32, i32* %j, align 4, !dbg !100
  %idxprom14 = sext i32 %26 to i64, !dbg !99
  %arrayidx15 = getelementptr inbounds float, float* %25, i64 %idxprom14, !dbg !99
  %27 = load float, float* %arrayidx15, align 4, !dbg !101
  %add16 = fadd float %27, %24, !dbg !101
  store float %add16, float* %arrayidx15, align 4, !dbg !101
  br label %for.inc, !dbg !102

for.inc:                                          ; preds = %for.body13
  %28 = load i32, i32* %i, align 4, !dbg !103
  %inc = add nsw i32 %28, 1, !dbg !103
  store i32 %inc, i32* %i, align 4, !dbg !103
  br label %for.cond11, !dbg !104, !llvm.loop !105

for.end:                                          ; preds = %for.cond11
  %29 = load float, float* %float_n, align 4, !dbg !108
  %30 = load float*, float** %means, align 8, !dbg !109
  %31 = load i32, i32* %j, align 4, !dbg !110
  %idxprom17 = sext i32 %31 to i64, !dbg !109
  %arrayidx18 = getelementptr inbounds float, float* %30, i64 %idxprom17, !dbg !109
  %32 = load float, float* %arrayidx18, align 4, !dbg !111
  %div = fdiv float %32, %29, !dbg !111
  store float %div, float* %arrayidx18, align 4, !dbg !111
  br label %for.inc19, !dbg !112

for.inc19:                                        ; preds = %for.end
  %33 = load i32, i32* %j, align 4, !dbg !113
  %inc20 = add nsw i32 %33, 1, !dbg !113
  store i32 %inc20, i32* %j, align 4, !dbg !113
  br label %for.cond, !dbg !114, !llvm.loop !115

for.end21:                                        ; preds = %for.cond
  br label %VITIS_LOOP_51_3, !dbg !116

VITIS_LOOP_51_3:                                  ; preds = %for.end21
  store i32 0, i32* %i, align 4, !dbg !118
  br label %for.cond22, !dbg !120

for.cond22:                                       ; preds = %for.inc38, %VITIS_LOOP_51_3
  %34 = load i32, i32* %i, align 4, !dbg !121
  %cmp23 = icmp slt i32 %34, 16, !dbg !123
  br i1 %cmp23, label %for.body24, label %for.end40, !dbg !124

for.body24:                                       ; preds = %for.cond22
  br label %VITIS_LOOP_53_4, !dbg !125

VITIS_LOOP_53_4:                                  ; preds = %for.body24
  store i32 0, i32* %j, align 4, !dbg !126
  br label %for.cond25, !dbg !129

for.cond25:                                       ; preds = %for.inc35, %VITIS_LOOP_53_4
  %35 = load i32, i32* %j, align 4, !dbg !130
  %cmp26 = icmp slt i32 %35, 16, !dbg !132
  br i1 %cmp26, label %for.body27, label %for.end37, !dbg !133

for.body27:                                       ; preds = %for.cond25
  %36 = load float*, float** %means, align 8, !dbg !134
  %37 = load i32, i32* %j, align 4, !dbg !136
  %idxprom28 = sext i32 %37 to i64, !dbg !134
  %arrayidx29 = getelementptr inbounds float, float* %36, i64 %idxprom28, !dbg !134
  %38 = load float, float* %arrayidx29, align 4, !dbg !134
  %39 = load float*, float** %datas, align 8, !dbg !137
  %40 = load i32, i32* %i, align 4, !dbg !138
  %41 = load i32, i32* %m, align 4, !dbg !139
  %mul30 = mul nsw i32 %40, %41, !dbg !140
  %42 = load i32, i32* %j, align 4, !dbg !141
  %add31 = add nsw i32 %mul30, %42, !dbg !142
  %idxprom32 = sext i32 %add31 to i64, !dbg !137
  %arrayidx33 = getelementptr inbounds float, float* %39, i64 %idxprom32, !dbg !137
  %43 = load float, float* %arrayidx33, align 4, !dbg !143
  %sub34 = fsub float %43, %38, !dbg !143
  store float %sub34, float* %arrayidx33, align 4, !dbg !143
  br label %for.inc35, !dbg !144

for.inc35:                                        ; preds = %for.body27
  %44 = load i32, i32* %j, align 4, !dbg !145
  %inc36 = add nsw i32 %44, 1, !dbg !145
  store i32 %inc36, i32* %j, align 4, !dbg !145
  br label %for.cond25, !dbg !146, !llvm.loop !147

for.end37:                                        ; preds = %for.cond25
  br label %for.inc38, !dbg !150

for.inc38:                                        ; preds = %for.end37
  %45 = load i32, i32* %i, align 4, !dbg !151
  %inc39 = add nsw i32 %45, 1, !dbg !151
  store i32 %inc39, i32* %i, align 4, !dbg !151
  br label %for.cond22, !dbg !152, !llvm.loop !153

for.end40:                                        ; preds = %for.cond22
  br label %VITIS_LOOP_58_5, !dbg !154

VITIS_LOOP_58_5:                                  ; preds = %for.end40
  store i32 0, i32* %i, align 4, !dbg !156
  br label %for.cond41, !dbg !158

for.cond41:                                       ; preds = %for.inc83, %VITIS_LOOP_58_5
  %46 = load i32, i32* %i, align 4, !dbg !159
  %cmp42 = icmp slt i32 %46, 16, !dbg !161
  br i1 %cmp42, label %for.body43, label %for.end85, !dbg !162

for.body43:                                       ; preds = %for.cond41
  br label %VITIS_LOOP_60_6, !dbg !163

VITIS_LOOP_60_6:                                  ; preds = %for.body43
  %47 = load i32, i32* %i, align 4, !dbg !164
  store i32 %47, i32* %j, align 4, !dbg !167
  br label %for.cond44, !dbg !168

for.cond44:                                       ; preds = %for.inc80, %VITIS_LOOP_60_6
  %48 = load i32, i32* %j, align 4, !dbg !169
  %cmp45 = icmp slt i32 %48, 16, !dbg !171
  br i1 %cmp45, label %for.body46, label %for.end82, !dbg !172

for.body46:                                       ; preds = %for.cond44
  br label %VITIS_LOOP_63_7, !dbg !173

VITIS_LOOP_63_7:                                  ; preds = %for.body46
  store i32 0, i32* %k, align 4, !dbg !174
  br label %for.cond47, !dbg !177

for.cond47:                                       ; preds = %for.inc64, %VITIS_LOOP_63_7
  %49 = load i32, i32* %k, align 4, !dbg !178
  %cmp48 = icmp slt i32 %49, 16, !dbg !180
  br i1 %cmp48, label %for.body49, label %for.end66, !dbg !181

for.body49:                                       ; preds = %for.cond47
  %50 = load float*, float** %datas, align 8, !dbg !182
  %51 = load i32, i32* %k, align 4, !dbg !184
  %52 = load i32, i32* %m, align 4, !dbg !185
  %mul50 = mul nsw i32 %51, %52, !dbg !186
  %53 = load i32, i32* %j, align 4, !dbg !187
  %add51 = add nsw i32 %mul50, %53, !dbg !188
  %idxprom52 = sext i32 %add51 to i64, !dbg !182
  %arrayidx53 = getelementptr inbounds float, float* %50, i64 %idxprom52, !dbg !182
  %54 = load float, float* %arrayidx53, align 4, !dbg !182
  %55 = load float*, float** %datas, align 8, !dbg !189
  %56 = load i32, i32* %k, align 4, !dbg !190
  %57 = load i32, i32* %m, align 4, !dbg !191
  %mul54 = mul nsw i32 %56, %57, !dbg !192
  %58 = load i32, i32* %j, align 4, !dbg !193
  %add55 = add nsw i32 %mul54, %58, !dbg !194
  %idxprom56 = sext i32 %add55 to i64, !dbg !189
  %arrayidx57 = getelementptr inbounds float, float* %55, i64 %idxprom56, !dbg !189
  %59 = load float, float* %arrayidx57, align 4, !dbg !189
  %mul58 = fmul float %54, %59, !dbg !195
  %60 = load float*, float** %covs, align 8, !dbg !196
  %61 = load i32, i32* %i, align 4, !dbg !197
  %62 = load i32, i32* %m, align 4, !dbg !198
  %mul59 = mul nsw i32 %61, %62, !dbg !199
  %63 = load i32, i32* %j, align 4, !dbg !200
  %add60 = add nsw i32 %mul59, %63, !dbg !201
  %idxprom61 = sext i32 %add60 to i64, !dbg !196
  %arrayidx62 = getelementptr inbounds float, float* %60, i64 %idxprom61, !dbg !196
  %64 = load float, float* %arrayidx62, align 4, !dbg !202
  %add63 = fadd float %64, %mul58, !dbg !202
  store float %add63, float* %arrayidx62, align 4, !dbg !202
  br label %for.inc64, !dbg !203

for.inc64:                                        ; preds = %for.body49
  %65 = load i32, i32* %k, align 4, !dbg !204
  %inc65 = add nsw i32 %65, 1, !dbg !204
  store i32 %inc65, i32* %k, align 4, !dbg !204
  br label %for.cond47, !dbg !205, !llvm.loop !206

for.end66:                                        ; preds = %for.cond47
  %66 = load float, float* %q, align 4, !dbg !209
  %67 = load float*, float** %cov.addr, align 8, !dbg !210
  %68 = load i32, i32* %i, align 4, !dbg !211
  %69 = load i32, i32* %m, align 4, !dbg !212
  %mul67 = mul nsw i32 %68, %69, !dbg !213
  %70 = load i32, i32* %j, align 4, !dbg !214
  %add68 = add nsw i32 %mul67, %70, !dbg !215
  %idxprom69 = sext i32 %add68 to i64, !dbg !210
  %arrayidx70 = getelementptr inbounds float, float* %67, i64 %idxprom69, !dbg !210
  %71 = load float, float* %arrayidx70, align 4, !dbg !216
  %div71 = fdiv float %71, %66, !dbg !216
  store float %div71, float* %arrayidx70, align 4, !dbg !216
  %72 = load float*, float** %cov.addr, align 8, !dbg !217
  %73 = load i32, i32* %i, align 4, !dbg !218
  %74 = load i32, i32* %m, align 4, !dbg !219
  %mul72 = mul nsw i32 %73, %74, !dbg !220
  %75 = load i32, i32* %j, align 4, !dbg !221
  %add73 = add nsw i32 %mul72, %75, !dbg !222
  %idxprom74 = sext i32 %add73 to i64, !dbg !217
  %arrayidx75 = getelementptr inbounds float, float* %72, i64 %idxprom74, !dbg !217
  %76 = load float, float* %arrayidx75, align 4, !dbg !217
  %77 = load float*, float** %cov.addr, align 8, !dbg !223
  %78 = load i32, i32* %j, align 4, !dbg !224
  %79 = load i32, i32* %m, align 4, !dbg !225
  %mul76 = mul nsw i32 %78, %79, !dbg !226
  %80 = load i32, i32* %i, align 4, !dbg !227
  %add77 = add nsw i32 %mul76, %80, !dbg !228
  %idxprom78 = sext i32 %add77 to i64, !dbg !223
  %arrayidx79 = getelementptr inbounds float, float* %77, i64 %idxprom78, !dbg !223
  store float %76, float* %arrayidx79, align 4, !dbg !229
  br label %for.inc80, !dbg !230

for.inc80:                                        ; preds = %for.end66
  %81 = load i32, i32* %j, align 4, !dbg !231
  %inc81 = add nsw i32 %81, 1, !dbg !231
  store i32 %inc81, i32* %j, align 4, !dbg !231
  br label %for.cond44, !dbg !232, !llvm.loop !233

for.end82:                                        ; preds = %for.cond44
  br label %for.inc83, !dbg !236

for.inc83:                                        ; preds = %for.end82
  %82 = load i32, i32* %i, align 4, !dbg !237
  %inc84 = add nsw i32 %82, 1, !dbg !237
  store i32 %inc84, i32* %i, align 4, !dbg !237
  br label %for.cond41, !dbg !238, !llvm.loop !239

for.end85:                                        ; preds = %for.cond41
  %83 = bitcast float* %sum to i8*, !dbg !242
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %83) #4, !dbg !242
  %84 = bitcast float** %means to i8*, !dbg !242
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %84) #4, !dbg !242
  %85 = bitcast float** %covs to i8*, !dbg !242
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %85) #4, !dbg !242
  %86 = bitcast float** %datas to i8*, !dbg !242
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %86) #4, !dbg !242
  %87 = bitcast float* %q to i8*, !dbg !242
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %87) #4, !dbg !242
  %88 = bitcast float* %onedotzero to i8*, !dbg !242
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %88) #4, !dbg !242
  %89 = bitcast float* %float_n to i8*, !dbg !242
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %89) #4, !dbg !242
  %90 = bitcast i32* %m to i8*, !dbg !242
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %90) #4, !dbg !242
  %91 = bitcast i32* %n to i8*, !dbg !242
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %91) #4, !dbg !242
  %92 = bitcast i32* %k to i8*, !dbg !242
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %92) #4, !dbg !242
  %93 = bitcast i32* %j to i8*, !dbg !242
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %93) #4, !dbg !242
  %94 = bitcast i32* %i to i8*, !dbg !242
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %94) #4, !dbg !242
  ret void, !dbg !242
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

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.top.func"="covariance" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { inaccessiblememonly nounwind }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind }
attributes #5 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="0" "xlx.source"="user" }

!llvm.dbg.cu = !{!0}
!llvm.ident = !{!5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5}
!llvm.module.flags = !{!6, !7, !8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/home/bruno/Desktop/benchmarks/covariance/proj_covariance/solution1/.autopilot/db/covariance_taffo.pp.0.c", directory: "/home/bruno/Desktop/benchmarks/covariance")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!5 = !{!"clang version 7.0.0 "}
!6 = !{i32 2, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = distinct !DISubprogram(name: "covariance", scope: !10, file: !10, line: 18, type: !11, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DIFile(filename: "covariance_taffo.c", directory: "/home/bruno/Desktop/benchmarks/covariance")
!11 = !DISubroutineType(types: !12)
!12 = !{null, !13, !13, !13}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!14 = !{!15}
!15 = !{!"fpga.top", !"user", !16}
!16 = !DILocation(line: 18, column: 16, scope: !9)
!17 = !DILocalVariable(name: "data", arg: 1, scope: !9, file: !10, line: 18, type: !13)
!18 = !DILocation(line: 18, column: 69, scope: !9)
!19 = !DILocalVariable(name: "cov", arg: 2, scope: !9, file: !10, line: 18, type: !13)
!20 = !DILocation(line: 18, column: 82, scope: !9)
!21 = !DILocalVariable(name: "mean", arg: 3, scope: !9, file: !10, line: 18, type: !13)
!22 = !DILocation(line: 18, column: 94, scope: !9)
!23 = !DILocation(line: 20, column: 9, scope: !9)
!24 = !DILocation(line: 21, column: 9, scope: !9)
!25 = !DILocation(line: 22, column: 9, scope: !9)
!26 = !DILocation(line: 23, column: 1, scope: !9)
!27 = !DILocalVariable(name: "i", scope: !9, file: !10, line: 23, type: !28)
!28 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!29 = !DILocation(line: 23, column: 55, scope: !9)
!30 = !DILocation(line: 24, column: 1, scope: !9)
!31 = !DILocalVariable(name: "j", scope: !9, file: !10, line: 24, type: !28)
!32 = !DILocation(line: 24, column: 55, scope: !9)
!33 = !DILocation(line: 25, column: 1, scope: !9)
!34 = !DILocalVariable(name: "k", scope: !9, file: !10, line: 25, type: !28)
!35 = !DILocation(line: 25, column: 55, scope: !9)
!36 = !DILocation(line: 26, column: 3, scope: !9)
!37 = !DILocalVariable(name: "n", scope: !9, file: !10, line: 26, type: !28)
!38 = !DILocation(line: 26, column: 7, scope: !9)
!39 = !DILocation(line: 27, column: 3, scope: !9)
!40 = !DILocalVariable(name: "m", scope: !9, file: !10, line: 27, type: !28)
!41 = !DILocation(line: 27, column: 7, scope: !9)
!42 = !DILocation(line: 28, column: 3, scope: !9)
!43 = !DILocalVariable(name: "float_n", scope: !9, file: !10, line: 28, type: !4)
!44 = !DILocation(line: 28, column: 61, scope: !9)
!45 = !DILocation(line: 29, column: 3, scope: !9)
!46 = !DILocalVariable(name: "onedotzero", scope: !9, file: !10, line: 29, type: !4)
!47 = !DILocation(line: 29, column: 54, scope: !9)
!48 = !DILocation(line: 30, column: 14, scope: !9)
!49 = !DILocation(line: 31, column: 13, scope: !9)
!50 = !DILocation(line: 31, column: 11, scope: !9)
!51 = !DILocation(line: 32, column: 3, scope: !9)
!52 = !DILocalVariable(name: "q", scope: !9, file: !10, line: 32, type: !4)
!53 = !DILocation(line: 32, column: 61, scope: !9)
!54 = !DILocation(line: 33, column: 7, scope: !9)
!55 = !DILocation(line: 33, column: 17, scope: !9)
!56 = !DILocation(line: 33, column: 15, scope: !9)
!57 = !DILocation(line: 33, column: 5, scope: !9)
!58 = !DILocation(line: 34, column: 5, scope: !9)
!59 = !DILocalVariable(name: "datas", scope: !9, file: !10, line: 34, type: !13)
!60 = !DILocation(line: 34, column: 12, scope: !9)
!61 = !DILocation(line: 35, column: 13, scope: !9)
!62 = !DILocation(line: 35, column: 11, scope: !9)
!63 = !DILocation(line: 36, column: 5, scope: !9)
!64 = !DILocalVariable(name: "covs", scope: !9, file: !10, line: 36, type: !13)
!65 = !DILocation(line: 36, column: 12, scope: !9)
!66 = !DILocation(line: 37, column: 12, scope: !9)
!67 = !DILocation(line: 37, column: 10, scope: !9)
!68 = !DILocation(line: 38, column: 5, scope: !9)
!69 = !DILocalVariable(name: "means", scope: !9, file: !10, line: 38, type: !13)
!70 = !DILocation(line: 38, column: 12, scope: !9)
!71 = !DILocation(line: 39, column: 13, scope: !9)
!72 = !DILocation(line: 39, column: 11, scope: !9)
!73 = !DILocation(line: 40, column: 5, scope: !9)
!74 = !DILocalVariable(name: "sum", scope: !9, file: !10, line: 40, type: !4)
!75 = !DILocation(line: 40, column: 64, scope: !9)
!76 = !DILocation(line: 41, column: 28, scope: !77)
!77 = distinct !DILexicalBlock(scope: !9, file: !10, line: 41, column: 21)
!78 = !DILocation(line: 41, column: 26, scope: !77)
!79 = !DILocation(line: 41, column: 33, scope: !80)
!80 = distinct !DILexicalBlock(scope: !77, file: !10, line: 41, column: 21)
!81 = !DILocation(line: 41, column: 35, scope: !80)
!82 = !DILocation(line: 41, column: 21, scope: !77)
!83 = !DILocation(line: 42, column: 5, scope: !80)
!84 = !DILocation(line: 44, column: 31, scope: !85)
!85 = distinct !DILexicalBlock(scope: !86, file: !10, line: 44, column: 24)
!86 = distinct !DILexicalBlock(scope: !80, file: !10, line: 42, column: 5)
!87 = !DILocation(line: 44, column: 29, scope: !85)
!88 = !DILocation(line: 44, column: 36, scope: !89)
!89 = distinct !DILexicalBlock(scope: !85, file: !10, line: 44, column: 24)
!90 = !DILocation(line: 44, column: 38, scope: !89)
!91 = !DILocation(line: 44, column: 24, scope: !85)
!92 = !DILocation(line: 46, column: 21, scope: !93)
!93 = distinct !DILexicalBlock(scope: !89, file: !10, line: 44, column: 48)
!94 = !DILocation(line: 46, column: 27, scope: !93)
!95 = !DILocation(line: 46, column: 29, scope: !93)
!96 = !DILocation(line: 46, column: 28, scope: !93)
!97 = !DILocation(line: 46, column: 31, scope: !93)
!98 = !DILocation(line: 46, column: 30, scope: !93)
!99 = !DILocation(line: 46, column: 9, scope: !93)
!100 = !DILocation(line: 46, column: 15, scope: !93)
!101 = !DILocation(line: 46, column: 18, scope: !93)
!102 = !DILocation(line: 47, column: 9, scope: !93)
!103 = !DILocation(line: 44, column: 45, scope: !89)
!104 = !DILocation(line: 44, column: 24, scope: !89)
!105 = distinct !{!105, !91, !106, !107}
!106 = !DILocation(line: 47, column: 9, scope: !85)
!107 = !{!"llvm.loop.name", !"VITIS_LOOP_44_2"}
!108 = !DILocation(line: 48, column: 19, scope: !86)
!109 = !DILocation(line: 48, column: 7, scope: !86)
!110 = !DILocation(line: 48, column: 13, scope: !86)
!111 = !DILocation(line: 48, column: 16, scope: !86)
!112 = !DILocation(line: 49, column: 5, scope: !86)
!113 = !DILocation(line: 41, column: 42, scope: !80)
!114 = !DILocation(line: 41, column: 21, scope: !80)
!115 = distinct !{!115, !82, !116, !117}
!116 = !DILocation(line: 49, column: 5, scope: !77)
!117 = !{!"llvm.loop.name", !"VITIS_LOOP_41_1"}
!118 = !DILocation(line: 51, column: 27, scope: !119)
!119 = distinct !DILexicalBlock(scope: !9, file: !10, line: 51, column: 20)
!120 = !DILocation(line: 51, column: 25, scope: !119)
!121 = !DILocation(line: 51, column: 32, scope: !122)
!122 = distinct !DILexicalBlock(scope: !119, file: !10, line: 51, column: 20)
!123 = !DILocation(line: 51, column: 34, scope: !122)
!124 = !DILocation(line: 51, column: 20, scope: !119)
!125 = !DILocation(line: 51, column: 44, scope: !122)
!126 = !DILocation(line: 53, column: 29, scope: !127)
!127 = distinct !DILexicalBlock(scope: !128, file: !10, line: 53, column: 22)
!128 = distinct !DILexicalBlock(scope: !122, file: !10, line: 51, column: 44)
!129 = !DILocation(line: 53, column: 27, scope: !127)
!130 = !DILocation(line: 53, column: 34, scope: !131)
!131 = distinct !DILexicalBlock(scope: !127, file: !10, line: 53, column: 22)
!132 = !DILocation(line: 53, column: 36, scope: !131)
!133 = !DILocation(line: 53, column: 22, scope: !127)
!134 = !DILocation(line: 55, column: 23, scope: !135)
!135 = distinct !DILexicalBlock(scope: !131, file: !10, line: 53, column: 46)
!136 = !DILocation(line: 55, column: 29, scope: !135)
!137 = !DILocation(line: 55, column: 7, scope: !135)
!138 = !DILocation(line: 55, column: 13, scope: !135)
!139 = !DILocation(line: 55, column: 15, scope: !135)
!140 = !DILocation(line: 55, column: 14, scope: !135)
!141 = !DILocation(line: 55, column: 17, scope: !135)
!142 = !DILocation(line: 55, column: 16, scope: !135)
!143 = !DILocation(line: 55, column: 20, scope: !135)
!144 = !DILocation(line: 56, column: 7, scope: !135)
!145 = !DILocation(line: 53, column: 43, scope: !131)
!146 = !DILocation(line: 53, column: 22, scope: !131)
!147 = distinct !{!147, !133, !148, !149}
!148 = !DILocation(line: 56, column: 7, scope: !127)
!149 = !{!"llvm.loop.name", !"VITIS_LOOP_53_4"}
!150 = !DILocation(line: 57, column: 7, scope: !128)
!151 = !DILocation(line: 51, column: 41, scope: !122)
!152 = !DILocation(line: 51, column: 20, scope: !122)
!153 = distinct !{!153, !124, !154, !155}
!154 = !DILocation(line: 57, column: 7, scope: !119)
!155 = !{!"llvm.loop.name", !"VITIS_LOOP_51_3"}
!156 = !DILocation(line: 58, column: 27, scope: !157)
!157 = distinct !DILexicalBlock(scope: !9, file: !10, line: 58, column: 20)
!158 = !DILocation(line: 58, column: 25, scope: !157)
!159 = !DILocation(line: 58, column: 32, scope: !160)
!160 = distinct !DILexicalBlock(scope: !157, file: !10, line: 58, column: 20)
!161 = !DILocation(line: 58, column: 34, scope: !160)
!162 = !DILocation(line: 58, column: 20, scope: !157)
!163 = !DILocation(line: 58, column: 44, scope: !160)
!164 = !DILocation(line: 60, column: 31, scope: !165)
!165 = distinct !DILexicalBlock(scope: !166, file: !10, line: 60, column: 22)
!166 = distinct !DILexicalBlock(scope: !160, file: !10, line: 58, column: 44)
!167 = !DILocation(line: 60, column: 29, scope: !165)
!168 = !DILocation(line: 60, column: 27, scope: !165)
!169 = !DILocation(line: 60, column: 34, scope: !170)
!170 = distinct !DILexicalBlock(scope: !165, file: !10, line: 60, column: 22)
!171 = !DILocation(line: 60, column: 36, scope: !170)
!172 = !DILocation(line: 60, column: 22, scope: !165)
!173 = !DILocation(line: 61, column: 7, scope: !170)
!174 = !DILocation(line: 63, column: 33, scope: !175)
!175 = distinct !DILexicalBlock(scope: !176, file: !10, line: 63, column: 26)
!176 = distinct !DILexicalBlock(scope: !170, file: !10, line: 61, column: 7)
!177 = !DILocation(line: 63, column: 31, scope: !175)
!178 = !DILocation(line: 63, column: 38, scope: !179)
!179 = distinct !DILexicalBlock(scope: !175, file: !10, line: 63, column: 26)
!180 = !DILocation(line: 63, column: 40, scope: !179)
!181 = !DILocation(line: 63, column: 26, scope: !175)
!182 = !DILocation(line: 65, column: 19, scope: !183)
!183 = distinct !DILexicalBlock(scope: !179, file: !10, line: 63, column: 50)
!184 = !DILocation(line: 65, column: 25, scope: !183)
!185 = !DILocation(line: 65, column: 27, scope: !183)
!186 = !DILocation(line: 65, column: 26, scope: !183)
!187 = !DILocation(line: 65, column: 29, scope: !183)
!188 = !DILocation(line: 65, column: 28, scope: !183)
!189 = !DILocation(line: 65, column: 34, scope: !183)
!190 = !DILocation(line: 65, column: 40, scope: !183)
!191 = !DILocation(line: 65, column: 42, scope: !183)
!192 = !DILocation(line: 65, column: 41, scope: !183)
!193 = !DILocation(line: 65, column: 44, scope: !183)
!194 = !DILocation(line: 65, column: 43, scope: !183)
!195 = !DILocation(line: 65, column: 32, scope: !183)
!196 = !DILocation(line: 65, column: 4, scope: !183)
!197 = !DILocation(line: 65, column: 9, scope: !183)
!198 = !DILocation(line: 65, column: 11, scope: !183)
!199 = !DILocation(line: 65, column: 10, scope: !183)
!200 = !DILocation(line: 65, column: 13, scope: !183)
!201 = !DILocation(line: 65, column: 12, scope: !183)
!202 = !DILocation(line: 65, column: 16, scope: !183)
!203 = !DILocation(line: 66, column: 4, scope: !183)
!204 = !DILocation(line: 63, column: 47, scope: !179)
!205 = !DILocation(line: 63, column: 26, scope: !179)
!206 = distinct !{!206, !181, !207, !208}
!207 = !DILocation(line: 66, column: 4, scope: !175)
!208 = !{!"llvm.loop.name", !"VITIS_LOOP_63_7"}
!209 = !DILocation(line: 67, column: 23, scope: !176)
!210 = !DILocation(line: 67, column: 9, scope: !176)
!211 = !DILocation(line: 67, column: 13, scope: !176)
!212 = !DILocation(line: 67, column: 15, scope: !176)
!213 = !DILocation(line: 67, column: 14, scope: !176)
!214 = !DILocation(line: 67, column: 17, scope: !176)
!215 = !DILocation(line: 67, column: 16, scope: !176)
!216 = !DILocation(line: 67, column: 20, scope: !176)
!217 = !DILocation(line: 68, column: 22, scope: !176)
!218 = !DILocation(line: 68, column: 26, scope: !176)
!219 = !DILocation(line: 68, column: 28, scope: !176)
!220 = !DILocation(line: 68, column: 27, scope: !176)
!221 = !DILocation(line: 68, column: 30, scope: !176)
!222 = !DILocation(line: 68, column: 29, scope: !176)
!223 = !DILocation(line: 68, column: 9, scope: !176)
!224 = !DILocation(line: 68, column: 13, scope: !176)
!225 = !DILocation(line: 68, column: 15, scope: !176)
!226 = !DILocation(line: 68, column: 14, scope: !176)
!227 = !DILocation(line: 68, column: 17, scope: !176)
!228 = !DILocation(line: 68, column: 16, scope: !176)
!229 = !DILocation(line: 68, column: 20, scope: !176)
!230 = !DILocation(line: 69, column: 7, scope: !176)
!231 = !DILocation(line: 60, column: 43, scope: !170)
!232 = !DILocation(line: 60, column: 22, scope: !170)
!233 = distinct !{!233, !172, !234, !235}
!234 = !DILocation(line: 69, column: 7, scope: !165)
!235 = !{!"llvm.loop.name", !"VITIS_LOOP_60_6"}
!236 = !DILocation(line: 70, column: 2, scope: !166)
!237 = !DILocation(line: 58, column: 41, scope: !160)
!238 = !DILocation(line: 58, column: 20, scope: !160)
!239 = distinct !{!239, !162, !240, !241}
!240 = !DILocation(line: 70, column: 2, scope: !157)
!241 = !{!"llvm.loop.name", !"VITIS_LOOP_58_5"}
!242 = !DILocation(line: 71, column: 1, scope: !9)
