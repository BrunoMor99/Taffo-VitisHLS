; ModuleID = '/home/bruno/Desktop/benchmarks/covariance/intermediate/output.1.magiclangtmp.ll'
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
define void @covariance(float* %data, float* %cov, float* %mean) #0 !dbg !9 !fpga.function.pragma !14 !taffo.start !17 !taffo.funinfo !18 {
entry:
  %data.addr = alloca float*, align 8
  %cov.addr = alloca float*, align 8
  %mean.addr = alloca float*, align 8
  %i = alloca i32, align 4, !taffo.info !19
  %j = alloca i32, align 4, !taffo.info !19
  %k = alloca i32, align 4, !taffo.info !19
  %n = alloca i32, align 4
  %m = alloca i32, align 4
  %float_n = alloca float, align 4, !taffo.info !21
  %onedotzero = alloca float, align 4
  %q = alloca float, align 4, !taffo.info !23
  %datas = alloca float*, align 8, !taffo.info !25
  %covs = alloca float*, align 8, !taffo.info !26, !taffo.target !28
  %means = alloca float*, align 8, !taffo.info !25
  %sum = alloca float, align 4, !taffo.info !29
  store float* %data, float** %data.addr, align 8
  call void @llvm.dbg.declare(metadata float** %data.addr, metadata !31, metadata !DIExpression()), !dbg !32
  store float* %cov, float** %cov.addr, align 8
  call void @llvm.dbg.declare(metadata float** %cov.addr, metadata !33, metadata !DIExpression()), !dbg !34
  store float* %mean, float** %mean.addr, align 8
  call void @llvm.dbg.declare(metadata float** %mean.addr, metadata !35, metadata !DIExpression()), !dbg !36
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %data, [0 x i8] zeroinitializer, i64 256, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !37
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %cov, [0 x i8] zeroinitializer, i64 256, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !38
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %mean, [0 x i8] zeroinitializer, i64 16, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !39
  %0 = bitcast i32* %i to i8*, !dbg !40, !taffo.info !25
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !40, !taffo.info !25
  call void @llvm.dbg.declare(metadata i32* %i, metadata !41, metadata !DIExpression()), !dbg !43
  %i1 = bitcast i32* %i to i8*, !dbg !40, !taffo.info !25
  %1 = bitcast i32* %j to i8*, !dbg !44, !taffo.info !25
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !44, !taffo.info !25
  call void @llvm.dbg.declare(metadata i32* %j, metadata !45, metadata !DIExpression()), !dbg !46
  %j2 = bitcast i32* %j to i8*, !dbg !44, !taffo.info !25
  %2 = bitcast i32* %k to i8*, !dbg !47, !taffo.info !25
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !47, !taffo.info !25
  call void @llvm.dbg.declare(metadata i32* %k, metadata !48, metadata !DIExpression()), !dbg !49
  %k3 = bitcast i32* %k to i8*, !dbg !47, !taffo.info !25
  %3 = bitcast i32* %n to i8*, !dbg !50
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !50
  call void @llvm.dbg.declare(metadata i32* %n, metadata !51, metadata !DIExpression()), !dbg !52
  store i32 16, i32* %n, align 4, !dbg !52
  %4 = bitcast i32* %m to i8*, !dbg !53
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !53
  call void @llvm.dbg.declare(metadata i32* %m, metadata !54, metadata !DIExpression()), !dbg !55
  store i32 16, i32* %m, align 4, !dbg !55
  %5 = bitcast float* %float_n to i8*, !dbg !56, !taffo.info !25
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !56, !taffo.info !25
  call void @llvm.dbg.declare(metadata float* %float_n, metadata !57, metadata !DIExpression()), !dbg !58
  %float_n4 = bitcast float* %float_n to i8*, !dbg !56, !taffo.info !25
  %6 = bitcast float* %onedotzero to i8*, !dbg !59
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !59
  call void @llvm.dbg.declare(metadata float* %onedotzero, metadata !60, metadata !DIExpression()), !dbg !61
  %onedotzero5 = bitcast float* %onedotzero to i8*, !dbg !59
  call void @llvm.var.annotation(i8* %onedotzero5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i32 29), !dbg !59
  store float 1.000000e+00, float* %onedotzero, align 4, !dbg !62
  %7 = load i32, i32* %n, align 4, !dbg !63
  %conv = sitofp i32 %7 to float, !dbg !63
  store float %conv, float* %float_n, align 4, !dbg !64, !taffo.info !25
  %8 = bitcast float* %q to i8*, !dbg !65, !taffo.info !25
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4, !dbg !65, !taffo.info !25
  call void @llvm.dbg.declare(metadata float* %q, metadata !66, metadata !DIExpression()), !dbg !67
  %q6 = bitcast float* %q to i8*, !dbg !65, !taffo.info !25
  %9 = load float, float* %float_n, align 4, !dbg !68, !taffo.info !25
  %10 = load float, float* %onedotzero, align 4, !dbg !69
  %sub = fsub float %9, %10, !dbg !70, !taffo.info !25
  store float %sub, float* %q, align 4, !dbg !71, !taffo.info !25
  %11 = bitcast float** %datas to i8*, !dbg !72, !taffo.info !25
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %11) #4, !dbg !72, !taffo.info !25
  call void @llvm.dbg.declare(metadata float** %datas, metadata !73, metadata !DIExpression()), !dbg !74
  %datas7 = bitcast float** %datas to i8*, !dbg !72, !taffo.info !25
  %12 = load float*, float** %data.addr, align 8, !dbg !75
  store float* %12, float** %datas, align 8, !dbg !76, !taffo.info !25
  %13 = bitcast float** %covs to i8*, !dbg !77, !taffo.info !25, !taffo.target !28
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %13) #4, !dbg !77, !taffo.info !25, !taffo.target !28
  call void @llvm.dbg.declare(metadata float** %covs, metadata !78, metadata !DIExpression()), !dbg !79
  %covs8 = bitcast float** %covs to i8*, !dbg !77, !taffo.info !25, !taffo.target !28
  %14 = load float*, float** %cov.addr, align 8, !dbg !80
  store float* %14, float** %covs, align 8, !dbg !81, !taffo.info !25, !taffo.target !28
  %15 = bitcast float** %means to i8*, !dbg !82, !taffo.info !25
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %15) #4, !dbg !82, !taffo.info !25
  call void @llvm.dbg.declare(metadata float** %means, metadata !83, metadata !DIExpression()), !dbg !84
  %means9 = bitcast float** %means to i8*, !dbg !82, !taffo.info !25
  %16 = load float*, float** %mean.addr, align 8, !dbg !85
  store float* %16, float** %means, align 8, !dbg !86, !taffo.info !25
  %17 = bitcast float* %sum to i8*, !dbg !87, !taffo.info !25
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #4, !dbg !87, !taffo.info !25
  call void @llvm.dbg.declare(metadata float* %sum, metadata !88, metadata !DIExpression()), !dbg !89
  %sum10 = bitcast float* %sum to i8*, !dbg !87, !taffo.info !25
  store float 0.000000e+00, float* %sum, align 4, !dbg !89, !taffo.info !25
  br label %VITIS_LOOP_41_1, !dbg !87

VITIS_LOOP_41_1:                                  ; preds = %entry
  store i32 0, i32* %j, align 4, !dbg !90, !taffo.info !25
  br label %for.cond, !dbg !92

for.cond:                                         ; preds = %for.inc19, %VITIS_LOOP_41_1
  %18 = load i32, i32* %j, align 4, !dbg !93, !taffo.info !25
  %cmp = icmp slt i32 %18, 16, !dbg !95, !taffo.info !25
  br i1 %cmp, label %for.body, label %for.end21, !dbg !96, !taffo.info !25

for.body:                                         ; preds = %for.cond
  br label %VITIS_LOOP_44_2, !dbg !97

VITIS_LOOP_44_2:                                  ; preds = %for.body
  store i32 0, i32* %i, align 4, !dbg !98, !taffo.info !25
  br label %for.cond11, !dbg !101

for.cond11:                                       ; preds = %for.inc, %VITIS_LOOP_44_2
  %19 = load i32, i32* %i, align 4, !dbg !102, !taffo.info !25
  %cmp12 = icmp slt i32 %19, 16, !dbg !104, !taffo.info !25
  br i1 %cmp12, label %for.body13, label %for.end, !dbg !105, !taffo.info !25

for.body13:                                       ; preds = %for.cond11
  %20 = load float*, float** %datas, align 8, !dbg !106, !taffo.info !25
  %21 = load i32, i32* %i, align 4, !dbg !108, !taffo.info !25
  %22 = load i32, i32* %m, align 4, !dbg !109
  %mul = mul nsw i32 %21, %22, !dbg !110, !taffo.info !25
  %23 = load i32, i32* %j, align 4, !dbg !111, !taffo.info !25
  %add = add nsw i32 %mul, %23, !dbg !112, !taffo.info !25
  %idxprom = sext i32 %add to i64, !dbg !106, !taffo.info !25
  %arrayidx = getelementptr inbounds float, float* %20, i64 %idxprom, !dbg !106, !taffo.info !25
  %24 = load float, float* %arrayidx, align 4, !dbg !106, !taffo.info !25
  %25 = load float*, float** %means, align 8, !dbg !113, !taffo.info !25
  %26 = load i32, i32* %j, align 4, !dbg !114, !taffo.info !25
  %idxprom14 = sext i32 %26 to i64, !dbg !113, !taffo.info !25
  %arrayidx15 = getelementptr inbounds float, float* %25, i64 %idxprom14, !dbg !113, !taffo.info !25
  %27 = load float, float* %arrayidx15, align 4, !dbg !115, !taffo.info !25
  %add16 = fadd float %27, %24, !dbg !115, !taffo.info !25
  store float %add16, float* %arrayidx15, align 4, !dbg !115, !taffo.info !25
  br label %for.inc, !dbg !116

for.inc:                                          ; preds = %for.body13
  %28 = load i32, i32* %i, align 4, !dbg !117, !taffo.info !25
  %inc = add nsw i32 %28, 1, !dbg !117, !taffo.info !25
  store i32 %inc, i32* %i, align 4, !dbg !117, !taffo.info !25
  br label %for.cond11, !dbg !118, !llvm.loop !119

for.end:                                          ; preds = %for.cond11
  %29 = load float, float* %float_n, align 4, !dbg !122, !taffo.info !25
  %30 = load float*, float** %means, align 8, !dbg !123, !taffo.info !25
  %31 = load i32, i32* %j, align 4, !dbg !124, !taffo.info !25
  %idxprom17 = sext i32 %31 to i64, !dbg !123, !taffo.info !25
  %arrayidx18 = getelementptr inbounds float, float* %30, i64 %idxprom17, !dbg !123, !taffo.info !25
  %32 = load float, float* %arrayidx18, align 4, !dbg !125, !taffo.info !25
  %div = fdiv float %32, %29, !dbg !125, !taffo.info !25
  store float %div, float* %arrayidx18, align 4, !dbg !125, !taffo.info !25
  br label %for.inc19, !dbg !126

for.inc19:                                        ; preds = %for.end
  %33 = load i32, i32* %j, align 4, !dbg !127, !taffo.info !25
  %inc20 = add nsw i32 %33, 1, !dbg !127, !taffo.info !25
  store i32 %inc20, i32* %j, align 4, !dbg !127, !taffo.info !25
  br label %for.cond, !dbg !128, !llvm.loop !129

for.end21:                                        ; preds = %for.cond
  br label %VITIS_LOOP_51_3, !dbg !130

VITIS_LOOP_51_3:                                  ; preds = %for.end21
  store i32 0, i32* %i, align 4, !dbg !132, !taffo.info !25
  br label %for.cond22, !dbg !134

for.cond22:                                       ; preds = %for.inc38, %VITIS_LOOP_51_3
  %34 = load i32, i32* %i, align 4, !dbg !135, !taffo.info !25
  %cmp23 = icmp slt i32 %34, 16, !dbg !137, !taffo.info !25
  br i1 %cmp23, label %for.body24, label %for.end40, !dbg !138, !taffo.info !25

for.body24:                                       ; preds = %for.cond22
  br label %VITIS_LOOP_53_4, !dbg !139

VITIS_LOOP_53_4:                                  ; preds = %for.body24
  store i32 0, i32* %j, align 4, !dbg !140, !taffo.info !25
  br label %for.cond25, !dbg !143

for.cond25:                                       ; preds = %for.inc35, %VITIS_LOOP_53_4
  %35 = load i32, i32* %j, align 4, !dbg !144, !taffo.info !25
  %cmp26 = icmp slt i32 %35, 16, !dbg !146, !taffo.info !25
  br i1 %cmp26, label %for.body27, label %for.end37, !dbg !147, !taffo.info !25

for.body27:                                       ; preds = %for.cond25
  %36 = load float*, float** %means, align 8, !dbg !148, !taffo.info !25
  %37 = load i32, i32* %j, align 4, !dbg !150, !taffo.info !25
  %idxprom28 = sext i32 %37 to i64, !dbg !148, !taffo.info !25
  %arrayidx29 = getelementptr inbounds float, float* %36, i64 %idxprom28, !dbg !148, !taffo.info !25
  %38 = load float, float* %arrayidx29, align 4, !dbg !148, !taffo.info !25
  %39 = load float*, float** %datas, align 8, !dbg !151, !taffo.info !25
  %40 = load i32, i32* %i, align 4, !dbg !152, !taffo.info !25
  %41 = load i32, i32* %m, align 4, !dbg !153
  %mul30 = mul nsw i32 %40, %41, !dbg !154, !taffo.info !25
  %42 = load i32, i32* %j, align 4, !dbg !155, !taffo.info !25
  %add31 = add nsw i32 %mul30, %42, !dbg !156, !taffo.info !25
  %idxprom32 = sext i32 %add31 to i64, !dbg !151, !taffo.info !25
  %arrayidx33 = getelementptr inbounds float, float* %39, i64 %idxprom32, !dbg !151, !taffo.info !25
  %43 = load float, float* %arrayidx33, align 4, !dbg !157, !taffo.info !25
  %sub34 = fsub float %43, %38, !dbg !157, !taffo.info !25
  store float %sub34, float* %arrayidx33, align 4, !dbg !157, !taffo.info !25
  br label %for.inc35, !dbg !158

for.inc35:                                        ; preds = %for.body27
  %44 = load i32, i32* %j, align 4, !dbg !159, !taffo.info !25
  %inc36 = add nsw i32 %44, 1, !dbg !159, !taffo.info !25
  store i32 %inc36, i32* %j, align 4, !dbg !159, !taffo.info !25
  br label %for.cond25, !dbg !160, !llvm.loop !161

for.end37:                                        ; preds = %for.cond25
  br label %for.inc38, !dbg !164

for.inc38:                                        ; preds = %for.end37
  %45 = load i32, i32* %i, align 4, !dbg !165, !taffo.info !25
  %inc39 = add nsw i32 %45, 1, !dbg !165, !taffo.info !25
  store i32 %inc39, i32* %i, align 4, !dbg !165, !taffo.info !25
  br label %for.cond22, !dbg !166, !llvm.loop !167

for.end40:                                        ; preds = %for.cond22
  br label %VITIS_LOOP_58_5, !dbg !168

VITIS_LOOP_58_5:                                  ; preds = %for.end40
  store i32 0, i32* %i, align 4, !dbg !170, !taffo.info !25
  br label %for.cond41, !dbg !172

for.cond41:                                       ; preds = %for.inc83, %VITIS_LOOP_58_5
  %46 = load i32, i32* %i, align 4, !dbg !173, !taffo.info !25
  %cmp42 = icmp slt i32 %46, 16, !dbg !175, !taffo.info !25
  br i1 %cmp42, label %for.body43, label %for.end85, !dbg !176, !taffo.info !25

for.body43:                                       ; preds = %for.cond41
  br label %VITIS_LOOP_60_6, !dbg !177

VITIS_LOOP_60_6:                                  ; preds = %for.body43
  %47 = load i32, i32* %i, align 4, !dbg !178, !taffo.info !25
  store i32 %47, i32* %j, align 4, !dbg !181, !taffo.info !25
  br label %for.cond44, !dbg !182

for.cond44:                                       ; preds = %for.inc80, %VITIS_LOOP_60_6
  %48 = load i32, i32* %j, align 4, !dbg !183, !taffo.info !25
  %cmp45 = icmp slt i32 %48, 16, !dbg !185, !taffo.info !25
  br i1 %cmp45, label %for.body46, label %for.end82, !dbg !186, !taffo.info !25

for.body46:                                       ; preds = %for.cond44
  br label %VITIS_LOOP_63_7, !dbg !187

VITIS_LOOP_63_7:                                  ; preds = %for.body46
  store i32 0, i32* %k, align 4, !dbg !188, !taffo.info !25
  br label %for.cond47, !dbg !191

for.cond47:                                       ; preds = %for.inc64, %VITIS_LOOP_63_7
  %49 = load i32, i32* %k, align 4, !dbg !192, !taffo.info !25
  %cmp48 = icmp slt i32 %49, 16, !dbg !194, !taffo.info !25
  br i1 %cmp48, label %for.body49, label %for.end66, !dbg !195, !taffo.info !25

for.body49:                                       ; preds = %for.cond47
  %50 = load float*, float** %datas, align 8, !dbg !196, !taffo.info !25
  %51 = load i32, i32* %k, align 4, !dbg !198, !taffo.info !25
  %52 = load i32, i32* %m, align 4, !dbg !199
  %mul50 = mul nsw i32 %51, %52, !dbg !200, !taffo.info !25
  %53 = load i32, i32* %j, align 4, !dbg !201, !taffo.info !25
  %add51 = add nsw i32 %mul50, %53, !dbg !202, !taffo.info !25
  %idxprom52 = sext i32 %add51 to i64, !dbg !196, !taffo.info !25
  %arrayidx53 = getelementptr inbounds float, float* %50, i64 %idxprom52, !dbg !196, !taffo.info !25
  %54 = load float, float* %arrayidx53, align 4, !dbg !196, !taffo.info !25
  %55 = load float*, float** %datas, align 8, !dbg !203, !taffo.info !25
  %56 = load i32, i32* %k, align 4, !dbg !204, !taffo.info !25
  %57 = load i32, i32* %m, align 4, !dbg !205
  %mul54 = mul nsw i32 %56, %57, !dbg !206, !taffo.info !25
  %58 = load i32, i32* %j, align 4, !dbg !207, !taffo.info !25
  %add55 = add nsw i32 %mul54, %58, !dbg !208, !taffo.info !25
  %idxprom56 = sext i32 %add55 to i64, !dbg !203, !taffo.info !25
  %arrayidx57 = getelementptr inbounds float, float* %55, i64 %idxprom56, !dbg !203, !taffo.info !25
  %59 = load float, float* %arrayidx57, align 4, !dbg !203, !taffo.info !25
  %mul58 = fmul float %54, %59, !dbg !209, !taffo.info !25
  %60 = load float*, float** %covs, align 8, !dbg !210, !taffo.info !25, !taffo.target !28
  %61 = load i32, i32* %i, align 4, !dbg !211, !taffo.info !25
  %62 = load i32, i32* %m, align 4, !dbg !212
  %mul59 = mul nsw i32 %61, %62, !dbg !213, !taffo.info !25
  %63 = load i32, i32* %j, align 4, !dbg !214, !taffo.info !25
  %add60 = add nsw i32 %mul59, %63, !dbg !215, !taffo.info !25
  %idxprom61 = sext i32 %add60 to i64, !dbg !210, !taffo.info !25
  %arrayidx62 = getelementptr inbounds float, float* %60, i64 %idxprom61, !dbg !210, !taffo.info !25, !taffo.target !28
  %64 = load float, float* %arrayidx62, align 4, !dbg !216, !taffo.info !25, !taffo.target !28
  %add63 = fadd float %64, %mul58, !dbg !216, !taffo.info !25, !taffo.target !28
  store float %add63, float* %arrayidx62, align 4, !dbg !216, !taffo.info !25, !taffo.target !28
  br label %for.inc64, !dbg !217

for.inc64:                                        ; preds = %for.body49
  %65 = load i32, i32* %k, align 4, !dbg !218, !taffo.info !25
  %inc65 = add nsw i32 %65, 1, !dbg !218, !taffo.info !25
  store i32 %inc65, i32* %k, align 4, !dbg !218, !taffo.info !25
  br label %for.cond47, !dbg !219, !llvm.loop !220

for.end66:                                        ; preds = %for.cond47
  %66 = load float, float* %q, align 4, !dbg !223, !taffo.info !25
  %67 = load float*, float** %cov.addr, align 8, !dbg !224
  %68 = load i32, i32* %i, align 4, !dbg !225, !taffo.info !25
  %69 = load i32, i32* %m, align 4, !dbg !226
  %mul67 = mul nsw i32 %68, %69, !dbg !227, !taffo.info !25
  %70 = load i32, i32* %j, align 4, !dbg !228, !taffo.info !25
  %add68 = add nsw i32 %mul67, %70, !dbg !229, !taffo.info !25
  %idxprom69 = sext i32 %add68 to i64, !dbg !224, !taffo.info !25
  %arrayidx70 = getelementptr inbounds float, float* %67, i64 %idxprom69, !dbg !224, !taffo.info !25
  %71 = load float, float* %arrayidx70, align 4, !dbg !230, !taffo.info !25
  %div71 = fdiv float %71, %66, !dbg !230, !taffo.info !25
  store float %div71, float* %arrayidx70, align 4, !dbg !230, !taffo.info !25
  %72 = load float*, float** %cov.addr, align 8, !dbg !231
  %73 = load i32, i32* %i, align 4, !dbg !232, !taffo.info !25
  %74 = load i32, i32* %m, align 4, !dbg !233
  %mul72 = mul nsw i32 %73, %74, !dbg !234, !taffo.info !25
  %75 = load i32, i32* %j, align 4, !dbg !235, !taffo.info !25
  %add73 = add nsw i32 %mul72, %75, !dbg !236, !taffo.info !25
  %idxprom74 = sext i32 %add73 to i64, !dbg !231, !taffo.info !25
  %arrayidx75 = getelementptr inbounds float, float* %72, i64 %idxprom74, !dbg !231, !taffo.info !25
  %76 = load float, float* %arrayidx75, align 4, !dbg !231, !taffo.info !25
  %77 = load float*, float** %cov.addr, align 8, !dbg !237
  %78 = load i32, i32* %j, align 4, !dbg !238, !taffo.info !25
  %79 = load i32, i32* %m, align 4, !dbg !239
  %mul76 = mul nsw i32 %78, %79, !dbg !240, !taffo.info !25
  %80 = load i32, i32* %i, align 4, !dbg !241, !taffo.info !25
  %add77 = add nsw i32 %mul76, %80, !dbg !242, !taffo.info !25
  %idxprom78 = sext i32 %add77 to i64, !dbg !237, !taffo.info !25
  %arrayidx79 = getelementptr inbounds float, float* %77, i64 %idxprom78, !dbg !237, !taffo.info !25
  store float %76, float* %arrayidx79, align 4, !dbg !243, !taffo.info !25
  br label %for.inc80, !dbg !244

for.inc80:                                        ; preds = %for.end66
  %81 = load i32, i32* %j, align 4, !dbg !245, !taffo.info !25
  %inc81 = add nsw i32 %81, 1, !dbg !245, !taffo.info !25
  store i32 %inc81, i32* %j, align 4, !dbg !245, !taffo.info !25
  br label %for.cond44, !dbg !246, !llvm.loop !247

for.end82:                                        ; preds = %for.cond44
  br label %for.inc83, !dbg !250

for.inc83:                                        ; preds = %for.end82
  %82 = load i32, i32* %i, align 4, !dbg !251, !taffo.info !25
  %inc84 = add nsw i32 %82, 1, !dbg !251, !taffo.info !25
  store i32 %inc84, i32* %i, align 4, !dbg !251, !taffo.info !25
  br label %for.cond41, !dbg !252, !llvm.loop !253

for.end85:                                        ; preds = %for.cond41
  %83 = bitcast float* %sum to i8*, !dbg !256, !taffo.info !25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %83) #4, !dbg !256, !taffo.info !25
  %84 = bitcast float** %means to i8*, !dbg !256, !taffo.info !25
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %84) #4, !dbg !256, !taffo.info !25
  %85 = bitcast float** %covs to i8*, !dbg !256, !taffo.info !25, !taffo.target !28
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %85) #4, !dbg !256, !taffo.info !25, !taffo.target !28
  %86 = bitcast float** %datas to i8*, !dbg !256, !taffo.info !25
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %86) #4, !dbg !256, !taffo.info !25
  %87 = bitcast float* %q to i8*, !dbg !256, !taffo.info !25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %87) #4, !dbg !256, !taffo.info !25
  %88 = bitcast float* %onedotzero to i8*, !dbg !256
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %88) #4, !dbg !256
  %89 = bitcast float* %float_n to i8*, !dbg !256, !taffo.info !25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %89) #4, !dbg !256, !taffo.info !25
  %90 = bitcast i32* %m to i8*, !dbg !256
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %90) #4, !dbg !256
  %91 = bitcast i32* %n to i8*, !dbg !256
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %91) #4, !dbg !256
  %92 = bitcast i32* %k to i8*, !dbg !256, !taffo.info !25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %92) #4, !dbg !256, !taffo.info !25
  %93 = bitcast i32* %j to i8*, !dbg !256, !taffo.info !25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %93) #4, !dbg !256, !taffo.info !25
  %94 = bitcast i32* %i to i8*, !dbg !256, !taffo.info !25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %94) #4, !dbg !256, !taffo.info !25
  ret void, !dbg !256
}

; Function Attrs: nounwind readnone speculatable
declare !taffo.funinfo !18 void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: inaccessiblememonly nounwind
declare !taffo.funinfo !2 void @llvm.sideeffect() #2

; Function Attrs: argmemonly nounwind
declare !taffo.funinfo !257 void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare !taffo.funinfo !258 void @llvm.var.annotation(i8*, i8*, i8*, i32) #4

; Function Attrs: argmemonly nounwind
declare !taffo.funinfo !257 void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #3

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
!17 = !{i1 true}
!18 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!19 = !{i1 false, !20, i1 false, i1 true}
!20 = !{double 0.000000e+00, double 1.600000e+01}
!21 = !{i1 false, !22, i1 false, i1 true}
!22 = !{double 2.000000e+00, double 3.000000e+03}
!23 = !{i1 false, !24, i1 false, i1 true}
!24 = !{double 1.000000e+00, double 3.000000e+03}
!25 = !{i1 false, i1 false, i1 false, i1 true}
!26 = !{i1 false, !27, i1 false, i1 true}
!27 = !{double 0xC140000000000000, double 0x413FFFFF00000000}
!28 = !{!"cov"}
!29 = !{i1 false, !30, i1 false, i1 true}
!30 = !{double -3.000000e+02, double 3.000000e+02}
!31 = !DILocalVariable(name: "data", arg: 1, scope: !9, file: !10, line: 18, type: !13)
!32 = !DILocation(line: 18, column: 69, scope: !9)
!33 = !DILocalVariable(name: "cov", arg: 2, scope: !9, file: !10, line: 18, type: !13)
!34 = !DILocation(line: 18, column: 82, scope: !9)
!35 = !DILocalVariable(name: "mean", arg: 3, scope: !9, file: !10, line: 18, type: !13)
!36 = !DILocation(line: 18, column: 94, scope: !9)
!37 = !DILocation(line: 20, column: 9, scope: !9)
!38 = !DILocation(line: 21, column: 9, scope: !9)
!39 = !DILocation(line: 22, column: 9, scope: !9)
!40 = !DILocation(line: 23, column: 1, scope: !9)
!41 = !DILocalVariable(name: "i", scope: !9, file: !10, line: 23, type: !42)
!42 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!43 = !DILocation(line: 23, column: 55, scope: !9)
!44 = !DILocation(line: 24, column: 1, scope: !9)
!45 = !DILocalVariable(name: "j", scope: !9, file: !10, line: 24, type: !42)
!46 = !DILocation(line: 24, column: 55, scope: !9)
!47 = !DILocation(line: 25, column: 1, scope: !9)
!48 = !DILocalVariable(name: "k", scope: !9, file: !10, line: 25, type: !42)
!49 = !DILocation(line: 25, column: 55, scope: !9)
!50 = !DILocation(line: 26, column: 3, scope: !9)
!51 = !DILocalVariable(name: "n", scope: !9, file: !10, line: 26, type: !42)
!52 = !DILocation(line: 26, column: 7, scope: !9)
!53 = !DILocation(line: 27, column: 3, scope: !9)
!54 = !DILocalVariable(name: "m", scope: !9, file: !10, line: 27, type: !42)
!55 = !DILocation(line: 27, column: 7, scope: !9)
!56 = !DILocation(line: 28, column: 3, scope: !9)
!57 = !DILocalVariable(name: "float_n", scope: !9, file: !10, line: 28, type: !4)
!58 = !DILocation(line: 28, column: 61, scope: !9)
!59 = !DILocation(line: 29, column: 3, scope: !9)
!60 = !DILocalVariable(name: "onedotzero", scope: !9, file: !10, line: 29, type: !4)
!61 = !DILocation(line: 29, column: 54, scope: !9)
!62 = !DILocation(line: 30, column: 14, scope: !9)
!63 = !DILocation(line: 31, column: 13, scope: !9)
!64 = !DILocation(line: 31, column: 11, scope: !9)
!65 = !DILocation(line: 32, column: 3, scope: !9)
!66 = !DILocalVariable(name: "q", scope: !9, file: !10, line: 32, type: !4)
!67 = !DILocation(line: 32, column: 61, scope: !9)
!68 = !DILocation(line: 33, column: 7, scope: !9)
!69 = !DILocation(line: 33, column: 17, scope: !9)
!70 = !DILocation(line: 33, column: 15, scope: !9)
!71 = !DILocation(line: 33, column: 5, scope: !9)
!72 = !DILocation(line: 34, column: 5, scope: !9)
!73 = !DILocalVariable(name: "datas", scope: !9, file: !10, line: 34, type: !13)
!74 = !DILocation(line: 34, column: 12, scope: !9)
!75 = !DILocation(line: 35, column: 13, scope: !9)
!76 = !DILocation(line: 35, column: 11, scope: !9)
!77 = !DILocation(line: 36, column: 5, scope: !9)
!78 = !DILocalVariable(name: "covs", scope: !9, file: !10, line: 36, type: !13)
!79 = !DILocation(line: 36, column: 12, scope: !9)
!80 = !DILocation(line: 37, column: 12, scope: !9)
!81 = !DILocation(line: 37, column: 10, scope: !9)
!82 = !DILocation(line: 38, column: 5, scope: !9)
!83 = !DILocalVariable(name: "means", scope: !9, file: !10, line: 38, type: !13)
!84 = !DILocation(line: 38, column: 12, scope: !9)
!85 = !DILocation(line: 39, column: 13, scope: !9)
!86 = !DILocation(line: 39, column: 11, scope: !9)
!87 = !DILocation(line: 40, column: 5, scope: !9)
!88 = !DILocalVariable(name: "sum", scope: !9, file: !10, line: 40, type: !4)
!89 = !DILocation(line: 40, column: 64, scope: !9)
!90 = !DILocation(line: 41, column: 28, scope: !91)
!91 = distinct !DILexicalBlock(scope: !9, file: !10, line: 41, column: 21)
!92 = !DILocation(line: 41, column: 26, scope: !91)
!93 = !DILocation(line: 41, column: 33, scope: !94)
!94 = distinct !DILexicalBlock(scope: !91, file: !10, line: 41, column: 21)
!95 = !DILocation(line: 41, column: 35, scope: !94)
!96 = !DILocation(line: 41, column: 21, scope: !91)
!97 = !DILocation(line: 42, column: 5, scope: !94)
!98 = !DILocation(line: 44, column: 31, scope: !99)
!99 = distinct !DILexicalBlock(scope: !100, file: !10, line: 44, column: 24)
!100 = distinct !DILexicalBlock(scope: !94, file: !10, line: 42, column: 5)
!101 = !DILocation(line: 44, column: 29, scope: !99)
!102 = !DILocation(line: 44, column: 36, scope: !103)
!103 = distinct !DILexicalBlock(scope: !99, file: !10, line: 44, column: 24)
!104 = !DILocation(line: 44, column: 38, scope: !103)
!105 = !DILocation(line: 44, column: 24, scope: !99)
!106 = !DILocation(line: 46, column: 21, scope: !107)
!107 = distinct !DILexicalBlock(scope: !103, file: !10, line: 44, column: 48)
!108 = !DILocation(line: 46, column: 27, scope: !107)
!109 = !DILocation(line: 46, column: 29, scope: !107)
!110 = !DILocation(line: 46, column: 28, scope: !107)
!111 = !DILocation(line: 46, column: 31, scope: !107)
!112 = !DILocation(line: 46, column: 30, scope: !107)
!113 = !DILocation(line: 46, column: 9, scope: !107)
!114 = !DILocation(line: 46, column: 15, scope: !107)
!115 = !DILocation(line: 46, column: 18, scope: !107)
!116 = !DILocation(line: 47, column: 9, scope: !107)
!117 = !DILocation(line: 44, column: 45, scope: !103)
!118 = !DILocation(line: 44, column: 24, scope: !103)
!119 = distinct !{!119, !105, !120, !121}
!120 = !DILocation(line: 47, column: 9, scope: !99)
!121 = !{!"llvm.loop.name", !"VITIS_LOOP_44_2"}
!122 = !DILocation(line: 48, column: 19, scope: !100)
!123 = !DILocation(line: 48, column: 7, scope: !100)
!124 = !DILocation(line: 48, column: 13, scope: !100)
!125 = !DILocation(line: 48, column: 16, scope: !100)
!126 = !DILocation(line: 49, column: 5, scope: !100)
!127 = !DILocation(line: 41, column: 42, scope: !94)
!128 = !DILocation(line: 41, column: 21, scope: !94)
!129 = distinct !{!129, !96, !130, !131}
!130 = !DILocation(line: 49, column: 5, scope: !91)
!131 = !{!"llvm.loop.name", !"VITIS_LOOP_41_1"}
!132 = !DILocation(line: 51, column: 27, scope: !133)
!133 = distinct !DILexicalBlock(scope: !9, file: !10, line: 51, column: 20)
!134 = !DILocation(line: 51, column: 25, scope: !133)
!135 = !DILocation(line: 51, column: 32, scope: !136)
!136 = distinct !DILexicalBlock(scope: !133, file: !10, line: 51, column: 20)
!137 = !DILocation(line: 51, column: 34, scope: !136)
!138 = !DILocation(line: 51, column: 20, scope: !133)
!139 = !DILocation(line: 51, column: 44, scope: !136)
!140 = !DILocation(line: 53, column: 29, scope: !141)
!141 = distinct !DILexicalBlock(scope: !142, file: !10, line: 53, column: 22)
!142 = distinct !DILexicalBlock(scope: !136, file: !10, line: 51, column: 44)
!143 = !DILocation(line: 53, column: 27, scope: !141)
!144 = !DILocation(line: 53, column: 34, scope: !145)
!145 = distinct !DILexicalBlock(scope: !141, file: !10, line: 53, column: 22)
!146 = !DILocation(line: 53, column: 36, scope: !145)
!147 = !DILocation(line: 53, column: 22, scope: !141)
!148 = !DILocation(line: 55, column: 23, scope: !149)
!149 = distinct !DILexicalBlock(scope: !145, file: !10, line: 53, column: 46)
!150 = !DILocation(line: 55, column: 29, scope: !149)
!151 = !DILocation(line: 55, column: 7, scope: !149)
!152 = !DILocation(line: 55, column: 13, scope: !149)
!153 = !DILocation(line: 55, column: 15, scope: !149)
!154 = !DILocation(line: 55, column: 14, scope: !149)
!155 = !DILocation(line: 55, column: 17, scope: !149)
!156 = !DILocation(line: 55, column: 16, scope: !149)
!157 = !DILocation(line: 55, column: 20, scope: !149)
!158 = !DILocation(line: 56, column: 7, scope: !149)
!159 = !DILocation(line: 53, column: 43, scope: !145)
!160 = !DILocation(line: 53, column: 22, scope: !145)
!161 = distinct !{!161, !147, !162, !163}
!162 = !DILocation(line: 56, column: 7, scope: !141)
!163 = !{!"llvm.loop.name", !"VITIS_LOOP_53_4"}
!164 = !DILocation(line: 57, column: 7, scope: !142)
!165 = !DILocation(line: 51, column: 41, scope: !136)
!166 = !DILocation(line: 51, column: 20, scope: !136)
!167 = distinct !{!167, !138, !168, !169}
!168 = !DILocation(line: 57, column: 7, scope: !133)
!169 = !{!"llvm.loop.name", !"VITIS_LOOP_51_3"}
!170 = !DILocation(line: 58, column: 27, scope: !171)
!171 = distinct !DILexicalBlock(scope: !9, file: !10, line: 58, column: 20)
!172 = !DILocation(line: 58, column: 25, scope: !171)
!173 = !DILocation(line: 58, column: 32, scope: !174)
!174 = distinct !DILexicalBlock(scope: !171, file: !10, line: 58, column: 20)
!175 = !DILocation(line: 58, column: 34, scope: !174)
!176 = !DILocation(line: 58, column: 20, scope: !171)
!177 = !DILocation(line: 58, column: 44, scope: !174)
!178 = !DILocation(line: 60, column: 31, scope: !179)
!179 = distinct !DILexicalBlock(scope: !180, file: !10, line: 60, column: 22)
!180 = distinct !DILexicalBlock(scope: !174, file: !10, line: 58, column: 44)
!181 = !DILocation(line: 60, column: 29, scope: !179)
!182 = !DILocation(line: 60, column: 27, scope: !179)
!183 = !DILocation(line: 60, column: 34, scope: !184)
!184 = distinct !DILexicalBlock(scope: !179, file: !10, line: 60, column: 22)
!185 = !DILocation(line: 60, column: 36, scope: !184)
!186 = !DILocation(line: 60, column: 22, scope: !179)
!187 = !DILocation(line: 61, column: 7, scope: !184)
!188 = !DILocation(line: 63, column: 33, scope: !189)
!189 = distinct !DILexicalBlock(scope: !190, file: !10, line: 63, column: 26)
!190 = distinct !DILexicalBlock(scope: !184, file: !10, line: 61, column: 7)
!191 = !DILocation(line: 63, column: 31, scope: !189)
!192 = !DILocation(line: 63, column: 38, scope: !193)
!193 = distinct !DILexicalBlock(scope: !189, file: !10, line: 63, column: 26)
!194 = !DILocation(line: 63, column: 40, scope: !193)
!195 = !DILocation(line: 63, column: 26, scope: !189)
!196 = !DILocation(line: 65, column: 19, scope: !197)
!197 = distinct !DILexicalBlock(scope: !193, file: !10, line: 63, column: 50)
!198 = !DILocation(line: 65, column: 25, scope: !197)
!199 = !DILocation(line: 65, column: 27, scope: !197)
!200 = !DILocation(line: 65, column: 26, scope: !197)
!201 = !DILocation(line: 65, column: 29, scope: !197)
!202 = !DILocation(line: 65, column: 28, scope: !197)
!203 = !DILocation(line: 65, column: 34, scope: !197)
!204 = !DILocation(line: 65, column: 40, scope: !197)
!205 = !DILocation(line: 65, column: 42, scope: !197)
!206 = !DILocation(line: 65, column: 41, scope: !197)
!207 = !DILocation(line: 65, column: 44, scope: !197)
!208 = !DILocation(line: 65, column: 43, scope: !197)
!209 = !DILocation(line: 65, column: 32, scope: !197)
!210 = !DILocation(line: 65, column: 4, scope: !197)
!211 = !DILocation(line: 65, column: 9, scope: !197)
!212 = !DILocation(line: 65, column: 11, scope: !197)
!213 = !DILocation(line: 65, column: 10, scope: !197)
!214 = !DILocation(line: 65, column: 13, scope: !197)
!215 = !DILocation(line: 65, column: 12, scope: !197)
!216 = !DILocation(line: 65, column: 16, scope: !197)
!217 = !DILocation(line: 66, column: 4, scope: !197)
!218 = !DILocation(line: 63, column: 47, scope: !193)
!219 = !DILocation(line: 63, column: 26, scope: !193)
!220 = distinct !{!220, !195, !221, !222}
!221 = !DILocation(line: 66, column: 4, scope: !189)
!222 = !{!"llvm.loop.name", !"VITIS_LOOP_63_7"}
!223 = !DILocation(line: 67, column: 23, scope: !190)
!224 = !DILocation(line: 67, column: 9, scope: !190)
!225 = !DILocation(line: 67, column: 13, scope: !190)
!226 = !DILocation(line: 67, column: 15, scope: !190)
!227 = !DILocation(line: 67, column: 14, scope: !190)
!228 = !DILocation(line: 67, column: 17, scope: !190)
!229 = !DILocation(line: 67, column: 16, scope: !190)
!230 = !DILocation(line: 67, column: 20, scope: !190)
!231 = !DILocation(line: 68, column: 22, scope: !190)
!232 = !DILocation(line: 68, column: 26, scope: !190)
!233 = !DILocation(line: 68, column: 28, scope: !190)
!234 = !DILocation(line: 68, column: 27, scope: !190)
!235 = !DILocation(line: 68, column: 30, scope: !190)
!236 = !DILocation(line: 68, column: 29, scope: !190)
!237 = !DILocation(line: 68, column: 9, scope: !190)
!238 = !DILocation(line: 68, column: 13, scope: !190)
!239 = !DILocation(line: 68, column: 15, scope: !190)
!240 = !DILocation(line: 68, column: 14, scope: !190)
!241 = !DILocation(line: 68, column: 17, scope: !190)
!242 = !DILocation(line: 68, column: 16, scope: !190)
!243 = !DILocation(line: 68, column: 20, scope: !190)
!244 = !DILocation(line: 69, column: 7, scope: !190)
!245 = !DILocation(line: 60, column: 43, scope: !184)
!246 = !DILocation(line: 60, column: 22, scope: !184)
!247 = distinct !{!247, !186, !248, !249}
!248 = !DILocation(line: 69, column: 7, scope: !179)
!249 = !{!"llvm.loop.name", !"VITIS_LOOP_60_6"}
!250 = !DILocation(line: 70, column: 2, scope: !180)
!251 = !DILocation(line: 58, column: 41, scope: !174)
!252 = !DILocation(line: 58, column: 20, scope: !174)
!253 = distinct !{!253, !176, !254, !255}
!254 = !DILocation(line: 70, column: 2, scope: !171)
!255 = !{!"llvm.loop.name", !"VITIS_LOOP_58_5"}
!256 = !DILocation(line: 71, column: 1, scope: !9)
!257 = !{i32 0, i1 false, i32 0, i1 false}
!258 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
