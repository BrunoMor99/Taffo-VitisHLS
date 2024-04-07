; ModuleID = '/home/bruno/Desktop/benchmarks/covariance/intermediate/output.2.magiclangtmp.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.global_ctors = appending global [0 x { i32, void ()*, i8* }] zeroinitializer, !taffo.structinfo !0
@.str = private unnamed_addr constant [21 x i8] c"scalar(range(0, 16))\00", section "llvm.metadata", !taffo.info !3
@.str.1 = private unnamed_addr constant [19 x i8] c"covariance_taffo.c\00", section "llvm.metadata", !taffo.info !5
@.str.2 = private unnamed_addr constant [23 x i8] c"scalar(range(2, 3000))\00", section "llvm.metadata", !taffo.info !3
@.str.3 = private unnamed_addr constant [16 x i8] c"scalar(range())\00", section "llvm.metadata", !taffo.info !3
@.str.4 = private unnamed_addr constant [23 x i8] c"scalar(range(1, 3000))\00", section "llvm.metadata", !taffo.info !3
@.str.5 = private unnamed_addr constant [9 x i8] c"scalar()\00", section "llvm.metadata", !taffo.info !3
@.str.6 = private unnamed_addr constant [47 x i8] c"target('cov') scalar(range(-2097152, 2097151))\00", section "llvm.metadata", !taffo.info !5
@.str.7 = private unnamed_addr constant [25 x i8] c"scalar(range(-300, 300))\00", section "llvm.metadata", !taffo.info !3

; Function Attrs: nounwind
define void @covariance(float* %data, float* %cov, float* %mean) #0 !dbg !16 !fpga.function.pragma !21 !taffo.start !24 !taffo.funinfo !25 {
entry:
  %data.addr = alloca float*, align 8, !taffo.info !26
  %cov.addr = alloca float*, align 8, !taffo.info !28
  %mean.addr = alloca float*, align 8, !taffo.info !30
  %i = alloca i32, align 4, !taffo.info !32
  %j = alloca i32, align 4, !taffo.info !32
  %k = alloca i32, align 4, !taffo.info !32
  %n = alloca i32, align 4, !taffo.info !34
  %m = alloca i32, align 4, !taffo.info !34
  %float_n = alloca float, align 4, !taffo.info !36
  %onedotzero = alloca float, align 4, !taffo.info !38
  %q = alloca float, align 4, !taffo.info !40
  %datas = alloca float*, align 8, !taffo.info !42
  %covs = alloca float*, align 8, !taffo.info !43, !taffo.target !45
  %means = alloca float*, align 8, !taffo.info !46
  %sum = alloca float, align 4, !taffo.info !47
  store float* %data, float** %data.addr, align 8
  call void @llvm.dbg.declare(metadata float** %data.addr, metadata !49, metadata !DIExpression()), !dbg !50
  store float* %cov, float** %cov.addr, align 8
  call void @llvm.dbg.declare(metadata float** %cov.addr, metadata !51, metadata !DIExpression()), !dbg !52
  store float* %mean, float** %mean.addr, align 8
  call void @llvm.dbg.declare(metadata float** %mean.addr, metadata !53, metadata !DIExpression()), !dbg !54
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %data, [0 x i8] zeroinitializer, i64 256, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !55
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %cov, [0 x i8] zeroinitializer, i64 256, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !56
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %mean, [0 x i8] zeroinitializer, i64 16, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !57
  %0 = bitcast i32* %i to i8*, !dbg !58, !taffo.info !32
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !58, !taffo.info !59
  call void @llvm.dbg.declare(metadata i32* %i, metadata !60, metadata !DIExpression()), !dbg !62
  %i1 = bitcast i32* %i to i8*, !dbg !58, !taffo.info !32
  %1 = bitcast i32* %j to i8*, !dbg !63, !taffo.info !32
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !63, !taffo.info !59
  call void @llvm.dbg.declare(metadata i32* %j, metadata !64, metadata !DIExpression()), !dbg !65
  %j2 = bitcast i32* %j to i8*, !dbg !63, !taffo.info !32
  %2 = bitcast i32* %k to i8*, !dbg !66, !taffo.info !32
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !66, !taffo.info !59
  call void @llvm.dbg.declare(metadata i32* %k, metadata !67, metadata !DIExpression()), !dbg !68
  %k3 = bitcast i32* %k to i8*, !dbg !66, !taffo.info !32
  %3 = bitcast i32* %n to i8*, !dbg !69
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !69
  call void @llvm.dbg.declare(metadata i32* %n, metadata !70, metadata !DIExpression()), !dbg !71
  store i32 16, i32* %n, align 4, !dbg !71
  %4 = bitcast i32* %m to i8*, !dbg !72
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !72
  call void @llvm.dbg.declare(metadata i32* %m, metadata !73, metadata !DIExpression()), !dbg !74
  store i32 16, i32* %m, align 4, !dbg !74
  %5 = bitcast float* %float_n to i8*, !dbg !75, !taffo.info !36
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !75, !taffo.info !59
  call void @llvm.dbg.declare(metadata float* %float_n, metadata !76, metadata !DIExpression()), !dbg !77
  %float_n4 = bitcast float* %float_n to i8*, !dbg !75, !taffo.info !36
  %6 = bitcast float* %onedotzero to i8*, !dbg !78
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !78
  call void @llvm.dbg.declare(metadata float* %onedotzero, metadata !79, metadata !DIExpression()), !dbg !80
  %onedotzero5 = bitcast float* %onedotzero to i8*, !dbg !78
  call void @llvm.var.annotation(i8* %onedotzero5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i32 29), !dbg !78
  store float 1.000000e+00, float* %onedotzero, align 4, !dbg !81
  %7 = load i32, i32* %n, align 4, !dbg !82, !taffo.info !34
  %conv = sitofp i32 %7 to float, !dbg !82, !taffo.info !34
  store float %conv, float* %float_n, align 4, !dbg !83, !taffo.info !59
  %8 = bitcast float* %q to i8*, !dbg !84, !taffo.info !40
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4, !dbg !84, !taffo.info !59
  call void @llvm.dbg.declare(metadata float* %q, metadata !85, metadata !DIExpression()), !dbg !86
  %q6 = bitcast float* %q to i8*, !dbg !84, !taffo.info !40
  %9 = load float, float* %float_n, align 4, !dbg !87, !taffo.info !36
  %10 = load float, float* %onedotzero, align 4, !dbg !88, !taffo.info !38
  %sub = fsub float %9, %10, !dbg !89, !taffo.info !90
  store float %sub, float* %q, align 4, !dbg !92, !taffo.info !59
  %11 = bitcast float** %datas to i8*, !dbg !93, !taffo.info !59
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %11) #4, !dbg !93, !taffo.info !59
  call void @llvm.dbg.declare(metadata float** %datas, metadata !94, metadata !DIExpression()), !dbg !95
  %datas7 = bitcast float** %datas to i8*, !dbg !93, !taffo.info !59
  %12 = load float*, float** %data.addr, align 8, !dbg !96, !taffo.info !26
  store float* %12, float** %datas, align 8, !dbg !97, !taffo.info !59
  %13 = bitcast float** %covs to i8*, !dbg !98, !taffo.info !43, !taffo.target !45
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %13) #4, !dbg !98, !taffo.info !59, !taffo.target !45
  call void @llvm.dbg.declare(metadata float** %covs, metadata !99, metadata !DIExpression()), !dbg !100
  %covs8 = bitcast float** %covs to i8*, !dbg !98, !taffo.info !43, !taffo.target !45
  %14 = load float*, float** %cov.addr, align 8, !dbg !101, !taffo.info !28
  store float* %14, float** %covs, align 8, !dbg !102, !taffo.info !59, !taffo.target !45
  %15 = bitcast float** %means to i8*, !dbg !103, !taffo.info !59
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %15) #4, !dbg !103, !taffo.info !59
  call void @llvm.dbg.declare(metadata float** %means, metadata !104, metadata !DIExpression()), !dbg !105
  %means9 = bitcast float** %means to i8*, !dbg !103, !taffo.info !59
  %16 = load float*, float** %mean.addr, align 8, !dbg !106, !taffo.info !30
  store float* %16, float** %means, align 8, !dbg !107, !taffo.info !59
  %17 = bitcast float* %sum to i8*, !dbg !108, !taffo.info !47
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #4, !dbg !108, !taffo.info !59
  call void @llvm.dbg.declare(metadata float* %sum, metadata !109, metadata !DIExpression()), !dbg !110
  %sum10 = bitcast float* %sum to i8*, !dbg !108, !taffo.info !47
  store float 0.000000e+00, float* %sum, align 4, !dbg !110, !taffo.info !59
  br label %VITIS_LOOP_41_1, !dbg !108

VITIS_LOOP_41_1:                                  ; preds = %entry
  store i32 0, i32* %j, align 4, !dbg !111, !taffo.info !59
  br label %for.cond, !dbg !113

for.cond:                                         ; preds = %for.inc19, %VITIS_LOOP_41_1
  %18 = load i32, i32* %j, align 4, !dbg !114, !taffo.info !116
  %cmp = icmp slt i32 %18, 16, !dbg !118, !taffo.info !119
  br i1 %cmp, label %for.body, label %for.end21, !dbg !121, !taffo.info !59

for.body:                                         ; preds = %for.cond
  br label %VITIS_LOOP_44_2, !dbg !122

VITIS_LOOP_44_2:                                  ; preds = %for.body
  store i32 0, i32* %i, align 4, !dbg !123, !taffo.info !59
  br label %for.cond11, !dbg !126

for.cond11:                                       ; preds = %for.inc, %VITIS_LOOP_44_2
  %19 = load i32, i32* %i, align 4, !dbg !127, !taffo.info !116
  %cmp12 = icmp slt i32 %19, 16, !dbg !129, !taffo.info !119
  br i1 %cmp12, label %for.body13, label %for.end, !dbg !130, !taffo.info !59

for.body13:                                       ; preds = %for.cond11
  %20 = load float*, float** %datas, align 8, !dbg !131, !taffo.info !42
  %21 = load i32, i32* %i, align 4, !dbg !133, !taffo.info !32
  %22 = load i32, i32* %m, align 4, !dbg !134, !taffo.info !34
  %mul = mul nsw i32 %21, %22, !dbg !135, !taffo.info !136
  %23 = load i32, i32* %j, align 4, !dbg !138, !taffo.info !32
  %add = add nsw i32 %mul, %23, !dbg !139, !taffo.info !140
  %idxprom = sext i32 %add to i64, !dbg !131, !taffo.info !140
  %arrayidx = getelementptr inbounds float, float* %20, i64 %idxprom, !dbg !131, !taffo.info !42
  %24 = load float, float* %arrayidx, align 4, !dbg !131, !taffo.info !42
  %25 = load float*, float** %means, align 8, !dbg !142, !taffo.info !46
  %26 = load i32, i32* %j, align 4, !dbg !143, !taffo.info !32
  %idxprom14 = sext i32 %26 to i64, !dbg !142, !taffo.info !32
  %arrayidx15 = getelementptr inbounds float, float* %25, i64 %idxprom14, !dbg !142, !taffo.info !46
  %27 = load float, float* %arrayidx15, align 4, !dbg !144, !taffo.info !46
  %add16 = fadd float %27, %24, !dbg !144, !taffo.info !145
  store float %add16, float* %arrayidx15, align 4, !dbg !144, !taffo.info !59
  br label %for.inc, !dbg !146

for.inc:                                          ; preds = %for.body13
  %28 = load i32, i32* %i, align 4, !dbg !147, !taffo.info !32
  %inc = add nsw i32 %28, 1, !dbg !147, !taffo.info !148
  store i32 %inc, i32* %i, align 4, !dbg !147, !taffo.info !59
  br label %for.cond11, !dbg !150, !llvm.loop !151

for.end:                                          ; preds = %for.cond11
  %29 = load float, float* %float_n, align 4, !dbg !154, !taffo.info !36
  %30 = load float*, float** %means, align 8, !dbg !155, !taffo.info !46
  %31 = load i32, i32* %j, align 4, !dbg !156, !taffo.info !116
  %idxprom17 = sext i32 %31 to i64, !dbg !155, !taffo.info !116
  %arrayidx18 = getelementptr inbounds float, float* %30, i64 %idxprom17, !dbg !155, !taffo.info !46
  %32 = load float, float* %arrayidx18, align 4, !dbg !157, !taffo.info !116
  %div = fdiv float %32, %29, !dbg !157, !taffo.info !46
  store float %div, float* %arrayidx18, align 4, !dbg !157, !taffo.info !59
  br label %for.inc19, !dbg !158

for.inc19:                                        ; preds = %for.end
  %33 = load i32, i32* %j, align 4, !dbg !159, !taffo.info !32
  %inc20 = add nsw i32 %33, 1, !dbg !159, !taffo.info !148
  store i32 %inc20, i32* %j, align 4, !dbg !159, !taffo.info !59
  br label %for.cond, !dbg !160, !llvm.loop !161

for.end21:                                        ; preds = %for.cond
  br label %VITIS_LOOP_51_3, !dbg !162

VITIS_LOOP_51_3:                                  ; preds = %for.end21
  store i32 0, i32* %i, align 4, !dbg !164, !taffo.info !59
  br label %for.cond22, !dbg !166

for.cond22:                                       ; preds = %for.inc38, %VITIS_LOOP_51_3
  %34 = load i32, i32* %i, align 4, !dbg !167, !taffo.info !116
  %cmp23 = icmp slt i32 %34, 16, !dbg !169, !taffo.info !119
  br i1 %cmp23, label %for.body24, label %for.end40, !dbg !170, !taffo.info !59

for.body24:                                       ; preds = %for.cond22
  br label %VITIS_LOOP_53_4, !dbg !171

VITIS_LOOP_53_4:                                  ; preds = %for.body24
  store i32 0, i32* %j, align 4, !dbg !172, !taffo.info !59
  br label %for.cond25, !dbg !175

for.cond25:                                       ; preds = %for.inc35, %VITIS_LOOP_53_4
  %35 = load i32, i32* %j, align 4, !dbg !176, !taffo.info !178
  %cmp26 = icmp slt i32 %35, 16, !dbg !180, !taffo.info !119
  br i1 %cmp26, label %for.body27, label %for.end37, !dbg !181, !taffo.info !59

for.body27:                                       ; preds = %for.cond25
  %36 = load float*, float** %means, align 8, !dbg !182, !taffo.info !46
  %37 = load i32, i32* %j, align 4, !dbg !184, !taffo.info !32
  %idxprom28 = sext i32 %37 to i64, !dbg !182, !taffo.info !32
  %arrayidx29 = getelementptr inbounds float, float* %36, i64 %idxprom28, !dbg !182, !taffo.info !46
  %38 = load float, float* %arrayidx29, align 4, !dbg !182, !taffo.info !46
  %39 = load float*, float** %datas, align 8, !dbg !185, !taffo.info !42
  %40 = load i32, i32* %i, align 4, !dbg !186, !taffo.info !32
  %41 = load i32, i32* %m, align 4, !dbg !187, !taffo.info !34
  %mul30 = mul nsw i32 %40, %41, !dbg !188, !taffo.info !136
  %42 = load i32, i32* %j, align 4, !dbg !189, !taffo.info !32
  %add31 = add nsw i32 %mul30, %42, !dbg !190, !taffo.info !140
  %idxprom32 = sext i32 %add31 to i64, !dbg !185, !taffo.info !140
  %arrayidx33 = getelementptr inbounds float, float* %39, i64 %idxprom32, !dbg !185, !taffo.info !42
  %43 = load float, float* %arrayidx33, align 4, !dbg !191, !taffo.info !42
  %sub34 = fsub float %43, %38, !dbg !191, !taffo.info !42
  store float %sub34, float* %arrayidx33, align 4, !dbg !191, !taffo.info !59
  br label %for.inc35, !dbg !192

for.inc35:                                        ; preds = %for.body27
  %44 = load i32, i32* %j, align 4, !dbg !193, !taffo.info !194
  %inc36 = add nsw i32 %44, 1, !dbg !193, !taffo.info !178
  store i32 %inc36, i32* %j, align 4, !dbg !193, !taffo.info !59
  br label %for.cond25, !dbg !196, !llvm.loop !197

for.end37:                                        ; preds = %for.cond25
  br label %for.inc38, !dbg !200

for.inc38:                                        ; preds = %for.end37
  %45 = load i32, i32* %i, align 4, !dbg !201, !taffo.info !32
  %inc39 = add nsw i32 %45, 1, !dbg !201, !taffo.info !148
  store i32 %inc39, i32* %i, align 4, !dbg !201, !taffo.info !59
  br label %for.cond22, !dbg !202, !llvm.loop !203

for.end40:                                        ; preds = %for.cond22
  br label %VITIS_LOOP_58_5, !dbg !204

VITIS_LOOP_58_5:                                  ; preds = %for.end40
  store i32 0, i32* %i, align 4, !dbg !206, !taffo.info !59
  br label %for.cond41, !dbg !208

for.cond41:                                       ; preds = %for.inc83, %VITIS_LOOP_58_5
  %46 = load i32, i32* %i, align 4, !dbg !209, !taffo.info !116
  %cmp42 = icmp slt i32 %46, 16, !dbg !211, !taffo.info !119
  br i1 %cmp42, label %for.body43, label %for.end85, !dbg !212, !taffo.info !59

for.body43:                                       ; preds = %for.cond41
  br label %VITIS_LOOP_60_6, !dbg !213

VITIS_LOOP_60_6:                                  ; preds = %for.body43
  %47 = load i32, i32* %i, align 4, !dbg !214, !taffo.info !32
  store i32 %47, i32* %j, align 4, !dbg !217, !taffo.info !59
  br label %for.cond44, !dbg !218

for.cond44:                                       ; preds = %for.inc80, %VITIS_LOOP_60_6
  %48 = load i32, i32* %j, align 4, !dbg !219, !taffo.info !116
  %cmp45 = icmp slt i32 %48, 16, !dbg !221, !taffo.info !119
  br i1 %cmp45, label %for.body46, label %for.end82, !dbg !222, !taffo.info !59

for.body46:                                       ; preds = %for.cond44
  br label %VITIS_LOOP_63_7, !dbg !223

VITIS_LOOP_63_7:                                  ; preds = %for.body46
  store i32 0, i32* %k, align 4, !dbg !224, !taffo.info !59
  br label %for.cond47, !dbg !227

for.cond47:                                       ; preds = %for.inc64, %VITIS_LOOP_63_7
  %49 = load i32, i32* %k, align 4, !dbg !228, !taffo.info !116
  %cmp48 = icmp slt i32 %49, 16, !dbg !230, !taffo.info !119
  br i1 %cmp48, label %for.body49, label %for.end66, !dbg !231, !taffo.info !59

for.body49:                                       ; preds = %for.cond47
  %50 = load float*, float** %datas, align 8, !dbg !232, !taffo.info !42
  %51 = load i32, i32* %k, align 4, !dbg !234, !taffo.info !32
  %52 = load i32, i32* %m, align 4, !dbg !235, !taffo.info !34
  %mul50 = mul nsw i32 %51, %52, !dbg !236, !taffo.info !136
  %53 = load i32, i32* %j, align 4, !dbg !237, !taffo.info !32
  %add51 = add nsw i32 %mul50, %53, !dbg !238, !taffo.info !140
  %idxprom52 = sext i32 %add51 to i64, !dbg !232, !taffo.info !140
  %arrayidx53 = getelementptr inbounds float, float* %50, i64 %idxprom52, !dbg !232, !taffo.info !42
  %54 = load float, float* %arrayidx53, align 4, !dbg !232, !taffo.info !42
  %55 = load float*, float** %datas, align 8, !dbg !239, !taffo.info !42
  %56 = load i32, i32* %k, align 4, !dbg !240, !taffo.info !32
  %57 = load i32, i32* %m, align 4, !dbg !241, !taffo.info !34
  %mul54 = mul nsw i32 %56, %57, !dbg !242, !taffo.info !136
  %58 = load i32, i32* %j, align 4, !dbg !243, !taffo.info !32
  %add55 = add nsw i32 %mul54, %58, !dbg !244, !taffo.info !140
  %idxprom56 = sext i32 %add55 to i64, !dbg !239, !taffo.info !140
  %arrayidx57 = getelementptr inbounds float, float* %55, i64 %idxprom56, !dbg !239, !taffo.info !42
  %59 = load float, float* %arrayidx57, align 4, !dbg !239, !taffo.info !42
  %mul58 = fmul float %54, %59, !dbg !245, !taffo.info !246
  %60 = load float*, float** %covs, align 8, !dbg !247, !taffo.info !43, !taffo.target !45
  %61 = load i32, i32* %i, align 4, !dbg !248, !taffo.info !32
  %62 = load i32, i32* %m, align 4, !dbg !249, !taffo.info !34
  %mul59 = mul nsw i32 %61, %62, !dbg !250, !taffo.info !136
  %63 = load i32, i32* %j, align 4, !dbg !251, !taffo.info !32
  %add60 = add nsw i32 %mul59, %63, !dbg !252, !taffo.info !140
  %idxprom61 = sext i32 %add60 to i64, !dbg !247, !taffo.info !140
  %arrayidx62 = getelementptr inbounds float, float* %60, i64 %idxprom61, !dbg !247, !taffo.info !43, !taffo.target !45
  %64 = load float, float* %arrayidx62, align 4, !dbg !253, !taffo.info !43, !taffo.target !45
  %add63 = fadd float %64, %mul58, !dbg !253, !taffo.info !246, !taffo.target !45
  store float %add63, float* %arrayidx62, align 4, !dbg !253, !taffo.info !59, !taffo.target !45
  br label %for.inc64, !dbg !254

for.inc64:                                        ; preds = %for.body49
  %65 = load i32, i32* %k, align 4, !dbg !255, !taffo.info !32
  %inc65 = add nsw i32 %65, 1, !dbg !255, !taffo.info !148
  store i32 %inc65, i32* %k, align 4, !dbg !255, !taffo.info !59
  br label %for.cond47, !dbg !256, !llvm.loop !257

for.end66:                                        ; preds = %for.cond47
  %66 = load float, float* %q, align 4, !dbg !260, !taffo.info !40
  %67 = load float*, float** %cov.addr, align 8, !dbg !261, !taffo.info !262
  %68 = load i32, i32* %i, align 4, !dbg !263, !taffo.info !32
  %69 = load i32, i32* %m, align 4, !dbg !264, !taffo.info !34
  %mul67 = mul nsw i32 %68, %69, !dbg !265, !taffo.info !136
  %70 = load i32, i32* %j, align 4, !dbg !266, !taffo.info !32
  %add68 = add nsw i32 %mul67, %70, !dbg !267, !taffo.info !140
  %idxprom69 = sext i32 %add68 to i64, !dbg !261, !taffo.info !140
  %arrayidx70 = getelementptr inbounds float, float* %67, i64 %idxprom69, !dbg !261, !taffo.info !43
  %71 = load float, float* %arrayidx70, align 4, !dbg !268, !taffo.info !43
  %div71 = fdiv float %71, %66, !dbg !268, !taffo.info !145
  store float %div71, float* %arrayidx70, align 4, !dbg !268, !taffo.info !59
  %72 = load float*, float** %cov.addr, align 8, !dbg !269, !taffo.info !262
  %73 = load i32, i32* %i, align 4, !dbg !270, !taffo.info !32
  %74 = load i32, i32* %m, align 4, !dbg !271, !taffo.info !34
  %mul72 = mul nsw i32 %73, %74, !dbg !272, !taffo.info !136
  %75 = load i32, i32* %j, align 4, !dbg !273, !taffo.info !32
  %add73 = add nsw i32 %mul72, %75, !dbg !274, !taffo.info !140
  %idxprom74 = sext i32 %add73 to i64, !dbg !269, !taffo.info !140
  %arrayidx75 = getelementptr inbounds float, float* %72, i64 %idxprom74, !dbg !269, !taffo.info !43
  %76 = load float, float* %arrayidx75, align 4, !dbg !269, !taffo.info !43
  %77 = load float*, float** %cov.addr, align 8, !dbg !275, !taffo.info !262
  %78 = load i32, i32* %j, align 4, !dbg !276, !taffo.info !32
  %79 = load i32, i32* %m, align 4, !dbg !277, !taffo.info !34
  %mul76 = mul nsw i32 %78, %79, !dbg !278, !taffo.info !136
  %80 = load i32, i32* %i, align 4, !dbg !279, !taffo.info !32
  %add77 = add nsw i32 %mul76, %80, !dbg !280, !taffo.info !140
  %idxprom78 = sext i32 %add77 to i64, !dbg !275, !taffo.info !140
  %arrayidx79 = getelementptr inbounds float, float* %77, i64 %idxprom78, !dbg !275, !taffo.info !43
  store float %76, float* %arrayidx79, align 4, !dbg !281, !taffo.info !59
  br label %for.inc80, !dbg !282

for.inc80:                                        ; preds = %for.end66
  %81 = load i32, i32* %j, align 4, !dbg !283, !taffo.info !32
  %inc81 = add nsw i32 %81, 1, !dbg !283, !taffo.info !148
  store i32 %inc81, i32* %j, align 4, !dbg !283, !taffo.info !59
  br label %for.cond44, !dbg !284, !llvm.loop !285

for.end82:                                        ; preds = %for.cond44
  br label %for.inc83, !dbg !288

for.inc83:                                        ; preds = %for.end82
  %82 = load i32, i32* %i, align 4, !dbg !289, !taffo.info !32
  %inc84 = add nsw i32 %82, 1, !dbg !289, !taffo.info !148
  store i32 %inc84, i32* %i, align 4, !dbg !289, !taffo.info !59
  br label %for.cond41, !dbg !290, !llvm.loop !291

for.end85:                                        ; preds = %for.cond41
  %83 = bitcast float* %sum to i8*, !dbg !294, !taffo.info !47
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %83) #4, !dbg !294, !taffo.info !59
  %84 = bitcast float** %means to i8*, !dbg !294, !taffo.info !46
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %84) #4, !dbg !294, !taffo.info !59
  %85 = bitcast float** %covs to i8*, !dbg !294, !taffo.info !43, !taffo.target !45
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %85) #4, !dbg !294, !taffo.info !59, !taffo.target !45
  %86 = bitcast float** %datas to i8*, !dbg !294, !taffo.info !42
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %86) #4, !dbg !294, !taffo.info !59
  %87 = bitcast float* %q to i8*, !dbg !294, !taffo.info !40
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %87) #4, !dbg !294, !taffo.info !59
  %88 = bitcast float* %onedotzero to i8*, !dbg !294, !taffo.info !38
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %88) #4, !dbg !294
  %89 = bitcast float* %float_n to i8*, !dbg !294, !taffo.info !36
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %89) #4, !dbg !294, !taffo.info !59
  %90 = bitcast i32* %m to i8*, !dbg !294, !taffo.info !34
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %90) #4, !dbg !294
  %91 = bitcast i32* %n to i8*, !dbg !294, !taffo.info !34
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %91) #4, !dbg !294
  %92 = bitcast i32* %k to i8*, !dbg !294, !taffo.info !32
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %92) #4, !dbg !294, !taffo.info !59
  %93 = bitcast i32* %j to i8*, !dbg !294, !taffo.info !32
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %93) #4, !dbg !294, !taffo.info !59
  %94 = bitcast i32* %i to i8*, !dbg !294, !taffo.info !32
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %94) #4, !dbg !294, !taffo.info !59
  ret void, !dbg !294
}

; Function Attrs: nounwind readnone speculatable
declare !taffo.funinfo !295 void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: inaccessiblememonly nounwind
declare !taffo.funinfo !9 void @llvm.sideeffect() #2

; Function Attrs: argmemonly nounwind
declare !taffo.funinfo !296 void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare !taffo.funinfo !297 void @llvm.var.annotation(i8*, i8*, i8*, i32) #4

; Function Attrs: argmemonly nounwind
declare !taffo.funinfo !296 void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #3

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.top.func"="covariance" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { inaccessiblememonly nounwind }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind }
attributes #5 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="0" "xlx.source"="user" }

!llvm.dbg.cu = !{!7}
!llvm.ident = !{!12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12}
!llvm.module.flags = !{!13, !14, !15}

!0 = !{!1, !1, !1}
!1 = !{i1 false, !2, i1 false, i1 false}
!2 = !{double 0.000000e+00, double 0.000000e+00}
!3 = !{i1 false, !4, i1 false, i1 false}
!4 = !{double 0.000000e+00, double 1.150000e+02}
!5 = !{i1 false, !6, i1 false, i1 false}
!6 = !{double 0.000000e+00, double 1.180000e+02}
!7 = distinct !DICompileUnit(language: DW_LANG_C99, file: !8, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !9, retainedTypes: !10)
!8 = !DIFile(filename: "/home/bruno/Desktop/benchmarks/covariance/proj_covariance/solution1/.autopilot/db/covariance_taffo.pp.0.c", directory: "/home/bruno/Desktop/benchmarks/covariance")
!9 = !{}
!10 = !{!11}
!11 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!12 = !{!"clang version 7.0.0 "}
!13 = !{i32 2, !"Dwarf Version", i32 4}
!14 = !{i32 2, !"Debug Info Version", i32 3}
!15 = !{i32 1, !"wchar_size", i32 4}
!16 = distinct !DISubprogram(name: "covariance", scope: !17, file: !17, line: 18, type: !18, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!17 = !DIFile(filename: "covariance_taffo.c", directory: "/home/bruno/Desktop/benchmarks/covariance")
!18 = !DISubroutineType(types: !19)
!19 = !{null, !20, !20, !20}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!21 = !{!22}
!22 = !{!"fpga.top", !"user", !23}
!23 = !DILocation(line: 18, column: 16, scope: !16)
!24 = !{i1 true}
!25 = !{i32 1, !26, i32 1, !28, i32 1, !30}
!26 = !{i1 false, !27, i1 false, i1 false}
!27 = !{double -8.500000e+00, double 0.000000e+00}
!28 = !{i1 false, !29, i1 false, i1 false}
!29 = !{double 0.000000e+00, double 7.225000e+01}
!30 = !{i1 false, !31, i1 false, i1 false}
!31 = !{double 0.000000e+00, double 8.500000e+00}
!32 = !{i1 false, !33, i1 false, i1 true}
!33 = !{double 0.000000e+00, double 1.600000e+01}
!34 = !{i1 false, !35, i1 false, i1 false}
!35 = !{double 1.600000e+01, double 1.600000e+01}
!36 = !{i1 false, !37, i1 false, i1 true}
!37 = !{double 2.000000e+00, double 3.000000e+03}
!38 = !{i1 false, !39, i1 false, i1 false}
!39 = !{double 1.000000e+00, double 1.000000e+00}
!40 = !{i1 false, !41, i1 false, i1 true}
!41 = !{double 1.000000e+00, double 3.000000e+03}
!42 = !{i1 false, !27, i1 false, i1 true}
!43 = !{i1 false, !44, i1 false, i1 true}
!44 = !{double 0xC140000000000000, double 0x413FFFFF00000000}
!45 = !{!"cov"}
!46 = !{i1 false, !31, i1 false, i1 true}
!47 = !{i1 false, !48, i1 false, i1 true}
!48 = !{double -3.000000e+02, double 3.000000e+02}
!49 = !DILocalVariable(name: "data", arg: 1, scope: !16, file: !17, line: 18, type: !20)
!50 = !DILocation(line: 18, column: 69, scope: !16)
!51 = !DILocalVariable(name: "cov", arg: 2, scope: !16, file: !17, line: 18, type: !20)
!52 = !DILocation(line: 18, column: 82, scope: !16)
!53 = !DILocalVariable(name: "mean", arg: 3, scope: !16, file: !17, line: 18, type: !20)
!54 = !DILocation(line: 18, column: 94, scope: !16)
!55 = !DILocation(line: 20, column: 9, scope: !16)
!56 = !DILocation(line: 21, column: 9, scope: !16)
!57 = !DILocation(line: 22, column: 9, scope: !16)
!58 = !DILocation(line: 23, column: 1, scope: !16)
!59 = !{i1 false, i1 false, i1 false, i1 true}
!60 = !DILocalVariable(name: "i", scope: !16, file: !17, line: 23, type: !61)
!61 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!62 = !DILocation(line: 23, column: 55, scope: !16)
!63 = !DILocation(line: 24, column: 1, scope: !16)
!64 = !DILocalVariable(name: "j", scope: !16, file: !17, line: 24, type: !61)
!65 = !DILocation(line: 24, column: 55, scope: !16)
!66 = !DILocation(line: 25, column: 1, scope: !16)
!67 = !DILocalVariable(name: "k", scope: !16, file: !17, line: 25, type: !61)
!68 = !DILocation(line: 25, column: 55, scope: !16)
!69 = !DILocation(line: 26, column: 3, scope: !16)
!70 = !DILocalVariable(name: "n", scope: !16, file: !17, line: 26, type: !61)
!71 = !DILocation(line: 26, column: 7, scope: !16)
!72 = !DILocation(line: 27, column: 3, scope: !16)
!73 = !DILocalVariable(name: "m", scope: !16, file: !17, line: 27, type: !61)
!74 = !DILocation(line: 27, column: 7, scope: !16)
!75 = !DILocation(line: 28, column: 3, scope: !16)
!76 = !DILocalVariable(name: "float_n", scope: !16, file: !17, line: 28, type: !11)
!77 = !DILocation(line: 28, column: 61, scope: !16)
!78 = !DILocation(line: 29, column: 3, scope: !16)
!79 = !DILocalVariable(name: "onedotzero", scope: !16, file: !17, line: 29, type: !11)
!80 = !DILocation(line: 29, column: 54, scope: !16)
!81 = !DILocation(line: 30, column: 14, scope: !16)
!82 = !DILocation(line: 31, column: 13, scope: !16)
!83 = !DILocation(line: 31, column: 11, scope: !16)
!84 = !DILocation(line: 32, column: 3, scope: !16)
!85 = !DILocalVariable(name: "q", scope: !16, file: !17, line: 32, type: !11)
!86 = !DILocation(line: 32, column: 61, scope: !16)
!87 = !DILocation(line: 33, column: 7, scope: !16)
!88 = !DILocation(line: 33, column: 17, scope: !16)
!89 = !DILocation(line: 33, column: 15, scope: !16)
!90 = !{i1 false, !91, i1 false, i1 true}
!91 = !{double 1.000000e+00, double 2.999000e+03}
!92 = !DILocation(line: 33, column: 5, scope: !16)
!93 = !DILocation(line: 34, column: 5, scope: !16)
!94 = !DILocalVariable(name: "datas", scope: !16, file: !17, line: 34, type: !20)
!95 = !DILocation(line: 34, column: 12, scope: !16)
!96 = !DILocation(line: 35, column: 13, scope: !16)
!97 = !DILocation(line: 35, column: 11, scope: !16)
!98 = !DILocation(line: 36, column: 5, scope: !16)
!99 = !DILocalVariable(name: "covs", scope: !16, file: !17, line: 36, type: !20)
!100 = !DILocation(line: 36, column: 12, scope: !16)
!101 = !DILocation(line: 37, column: 12, scope: !16)
!102 = !DILocation(line: 37, column: 10, scope: !16)
!103 = !DILocation(line: 38, column: 5, scope: !16)
!104 = !DILocalVariable(name: "means", scope: !16, file: !17, line: 38, type: !20)
!105 = !DILocation(line: 38, column: 12, scope: !16)
!106 = !DILocation(line: 39, column: 13, scope: !16)
!107 = !DILocation(line: 39, column: 11, scope: !16)
!108 = !DILocation(line: 40, column: 5, scope: !16)
!109 = !DILocalVariable(name: "sum", scope: !16, file: !17, line: 40, type: !11)
!110 = !DILocation(line: 40, column: 64, scope: !16)
!111 = !DILocation(line: 41, column: 28, scope: !112)
!112 = distinct !DILexicalBlock(scope: !16, file: !17, line: 41, column: 21)
!113 = !DILocation(line: 41, column: 26, scope: !112)
!114 = !DILocation(line: 41, column: 33, scope: !115)
!115 = distinct !DILexicalBlock(scope: !112, file: !17, line: 41, column: 21)
!116 = !{i1 false, !117, i1 false, i1 true}
!117 = !{double 0.000000e+00, double 1.700000e+01}
!118 = !DILocation(line: 41, column: 35, scope: !115)
!119 = !{i1 false, !120, i1 false, i1 true}
!120 = !{double 0.000000e+00, double 1.000000e+00}
!121 = !DILocation(line: 41, column: 21, scope: !112)
!122 = !DILocation(line: 42, column: 5, scope: !115)
!123 = !DILocation(line: 44, column: 31, scope: !124)
!124 = distinct !DILexicalBlock(scope: !125, file: !17, line: 44, column: 24)
!125 = distinct !DILexicalBlock(scope: !115, file: !17, line: 42, column: 5)
!126 = !DILocation(line: 44, column: 29, scope: !124)
!127 = !DILocation(line: 44, column: 36, scope: !128)
!128 = distinct !DILexicalBlock(scope: !124, file: !17, line: 44, column: 24)
!129 = !DILocation(line: 44, column: 38, scope: !128)
!130 = !DILocation(line: 44, column: 24, scope: !124)
!131 = !DILocation(line: 46, column: 21, scope: !132)
!132 = distinct !DILexicalBlock(scope: !128, file: !17, line: 44, column: 48)
!133 = !DILocation(line: 46, column: 27, scope: !132)
!134 = !DILocation(line: 46, column: 29, scope: !132)
!135 = !DILocation(line: 46, column: 28, scope: !132)
!136 = !{i1 false, !137, i1 false, i1 true}
!137 = !{double 0.000000e+00, double 2.560000e+02}
!138 = !DILocation(line: 46, column: 31, scope: !132)
!139 = !DILocation(line: 46, column: 30, scope: !132)
!140 = !{i1 false, !141, i1 false, i1 true}
!141 = !{double 0.000000e+00, double 2.720000e+02}
!142 = !DILocation(line: 46, column: 9, scope: !132)
!143 = !DILocation(line: 46, column: 15, scope: !132)
!144 = !DILocation(line: 46, column: 18, scope: !132)
!145 = !{i1 false, !2, i1 false, i1 true}
!146 = !DILocation(line: 47, column: 9, scope: !132)
!147 = !DILocation(line: 44, column: 45, scope: !128)
!148 = !{i1 false, !149, i1 false, i1 true}
!149 = !{double 1.000000e+00, double 1.700000e+01}
!150 = !DILocation(line: 44, column: 24, scope: !128)
!151 = distinct !{!151, !130, !152, !153}
!152 = !DILocation(line: 47, column: 9, scope: !124)
!153 = !{!"llvm.loop.name", !"VITIS_LOOP_44_2"}
!154 = !DILocation(line: 48, column: 19, scope: !125)
!155 = !DILocation(line: 48, column: 7, scope: !125)
!156 = !DILocation(line: 48, column: 13, scope: !125)
!157 = !DILocation(line: 48, column: 16, scope: !125)
!158 = !DILocation(line: 49, column: 5, scope: !125)
!159 = !DILocation(line: 41, column: 42, scope: !115)
!160 = !DILocation(line: 41, column: 21, scope: !115)
!161 = distinct !{!161, !121, !162, !163}
!162 = !DILocation(line: 49, column: 5, scope: !112)
!163 = !{!"llvm.loop.name", !"VITIS_LOOP_41_1"}
!164 = !DILocation(line: 51, column: 27, scope: !165)
!165 = distinct !DILexicalBlock(scope: !16, file: !17, line: 51, column: 20)
!166 = !DILocation(line: 51, column: 25, scope: !165)
!167 = !DILocation(line: 51, column: 32, scope: !168)
!168 = distinct !DILexicalBlock(scope: !165, file: !17, line: 51, column: 20)
!169 = !DILocation(line: 51, column: 34, scope: !168)
!170 = !DILocation(line: 51, column: 20, scope: !165)
!171 = !DILocation(line: 51, column: 44, scope: !168)
!172 = !DILocation(line: 53, column: 29, scope: !173)
!173 = distinct !DILexicalBlock(scope: !174, file: !17, line: 53, column: 22)
!174 = distinct !DILexicalBlock(scope: !168, file: !17, line: 51, column: 44)
!175 = !DILocation(line: 53, column: 27, scope: !173)
!176 = !DILocation(line: 53, column: 34, scope: !177)
!177 = distinct !DILexicalBlock(scope: !173, file: !17, line: 53, column: 22)
!178 = !{i1 false, !179, i1 false, i1 true}
!179 = !{double -7.500000e+00, double 1.700000e+01}
!180 = !DILocation(line: 53, column: 36, scope: !177)
!181 = !DILocation(line: 53, column: 22, scope: !173)
!182 = !DILocation(line: 55, column: 23, scope: !183)
!183 = distinct !DILexicalBlock(scope: !177, file: !17, line: 53, column: 46)
!184 = !DILocation(line: 55, column: 29, scope: !183)
!185 = !DILocation(line: 55, column: 7, scope: !183)
!186 = !DILocation(line: 55, column: 13, scope: !183)
!187 = !DILocation(line: 55, column: 15, scope: !183)
!188 = !DILocation(line: 55, column: 14, scope: !183)
!189 = !DILocation(line: 55, column: 17, scope: !183)
!190 = !DILocation(line: 55, column: 16, scope: !183)
!191 = !DILocation(line: 55, column: 20, scope: !183)
!192 = !DILocation(line: 56, column: 7, scope: !183)
!193 = !DILocation(line: 53, column: 43, scope: !177)
!194 = !{i1 false, !195, i1 false, i1 true}
!195 = !{double -8.500000e+00, double 1.600000e+01}
!196 = !DILocation(line: 53, column: 22, scope: !177)
!197 = distinct !{!197, !181, !198, !199}
!198 = !DILocation(line: 56, column: 7, scope: !173)
!199 = !{!"llvm.loop.name", !"VITIS_LOOP_53_4"}
!200 = !DILocation(line: 57, column: 7, scope: !174)
!201 = !DILocation(line: 51, column: 41, scope: !168)
!202 = !DILocation(line: 51, column: 20, scope: !168)
!203 = distinct !{!203, !170, !204, !205}
!204 = !DILocation(line: 57, column: 7, scope: !165)
!205 = !{!"llvm.loop.name", !"VITIS_LOOP_51_3"}
!206 = !DILocation(line: 58, column: 27, scope: !207)
!207 = distinct !DILexicalBlock(scope: !16, file: !17, line: 58, column: 20)
!208 = !DILocation(line: 58, column: 25, scope: !207)
!209 = !DILocation(line: 58, column: 32, scope: !210)
!210 = distinct !DILexicalBlock(scope: !207, file: !17, line: 58, column: 20)
!211 = !DILocation(line: 58, column: 34, scope: !210)
!212 = !DILocation(line: 58, column: 20, scope: !207)
!213 = !DILocation(line: 58, column: 44, scope: !210)
!214 = !DILocation(line: 60, column: 31, scope: !215)
!215 = distinct !DILexicalBlock(scope: !216, file: !17, line: 60, column: 22)
!216 = distinct !DILexicalBlock(scope: !210, file: !17, line: 58, column: 44)
!217 = !DILocation(line: 60, column: 29, scope: !215)
!218 = !DILocation(line: 60, column: 27, scope: !215)
!219 = !DILocation(line: 60, column: 34, scope: !220)
!220 = distinct !DILexicalBlock(scope: !215, file: !17, line: 60, column: 22)
!221 = !DILocation(line: 60, column: 36, scope: !220)
!222 = !DILocation(line: 60, column: 22, scope: !215)
!223 = !DILocation(line: 61, column: 7, scope: !220)
!224 = !DILocation(line: 63, column: 33, scope: !225)
!225 = distinct !DILexicalBlock(scope: !226, file: !17, line: 63, column: 26)
!226 = distinct !DILexicalBlock(scope: !220, file: !17, line: 61, column: 7)
!227 = !DILocation(line: 63, column: 31, scope: !225)
!228 = !DILocation(line: 63, column: 38, scope: !229)
!229 = distinct !DILexicalBlock(scope: !225, file: !17, line: 63, column: 26)
!230 = !DILocation(line: 63, column: 40, scope: !229)
!231 = !DILocation(line: 63, column: 26, scope: !225)
!232 = !DILocation(line: 65, column: 19, scope: !233)
!233 = distinct !DILexicalBlock(scope: !229, file: !17, line: 63, column: 50)
!234 = !DILocation(line: 65, column: 25, scope: !233)
!235 = !DILocation(line: 65, column: 27, scope: !233)
!236 = !DILocation(line: 65, column: 26, scope: !233)
!237 = !DILocation(line: 65, column: 29, scope: !233)
!238 = !DILocation(line: 65, column: 28, scope: !233)
!239 = !DILocation(line: 65, column: 34, scope: !233)
!240 = !DILocation(line: 65, column: 40, scope: !233)
!241 = !DILocation(line: 65, column: 42, scope: !233)
!242 = !DILocation(line: 65, column: 41, scope: !233)
!243 = !DILocation(line: 65, column: 44, scope: !233)
!244 = !DILocation(line: 65, column: 43, scope: !233)
!245 = !DILocation(line: 65, column: 32, scope: !233)
!246 = !{i1 false, !29, i1 false, i1 true}
!247 = !DILocation(line: 65, column: 4, scope: !233)
!248 = !DILocation(line: 65, column: 9, scope: !233)
!249 = !DILocation(line: 65, column: 11, scope: !233)
!250 = !DILocation(line: 65, column: 10, scope: !233)
!251 = !DILocation(line: 65, column: 13, scope: !233)
!252 = !DILocation(line: 65, column: 12, scope: !233)
!253 = !DILocation(line: 65, column: 16, scope: !233)
!254 = !DILocation(line: 66, column: 4, scope: !233)
!255 = !DILocation(line: 63, column: 47, scope: !229)
!256 = !DILocation(line: 63, column: 26, scope: !229)
!257 = distinct !{!257, !231, !258, !259}
!258 = !DILocation(line: 66, column: 4, scope: !225)
!259 = !{!"llvm.loop.name", !"VITIS_LOOP_63_7"}
!260 = !DILocation(line: 67, column: 23, scope: !226)
!261 = !DILocation(line: 67, column: 9, scope: !226)
!262 = !{i1 false, !44, i1 false, i1 false}
!263 = !DILocation(line: 67, column: 13, scope: !226)
!264 = !DILocation(line: 67, column: 15, scope: !226)
!265 = !DILocation(line: 67, column: 14, scope: !226)
!266 = !DILocation(line: 67, column: 17, scope: !226)
!267 = !DILocation(line: 67, column: 16, scope: !226)
!268 = !DILocation(line: 67, column: 20, scope: !226)
!269 = !DILocation(line: 68, column: 22, scope: !226)
!270 = !DILocation(line: 68, column: 26, scope: !226)
!271 = !DILocation(line: 68, column: 28, scope: !226)
!272 = !DILocation(line: 68, column: 27, scope: !226)
!273 = !DILocation(line: 68, column: 30, scope: !226)
!274 = !DILocation(line: 68, column: 29, scope: !226)
!275 = !DILocation(line: 68, column: 9, scope: !226)
!276 = !DILocation(line: 68, column: 13, scope: !226)
!277 = !DILocation(line: 68, column: 15, scope: !226)
!278 = !DILocation(line: 68, column: 14, scope: !226)
!279 = !DILocation(line: 68, column: 17, scope: !226)
!280 = !DILocation(line: 68, column: 16, scope: !226)
!281 = !DILocation(line: 68, column: 20, scope: !226)
!282 = !DILocation(line: 69, column: 7, scope: !226)
!283 = !DILocation(line: 60, column: 43, scope: !220)
!284 = !DILocation(line: 60, column: 22, scope: !220)
!285 = distinct !{!285, !222, !286, !287}
!286 = !DILocation(line: 69, column: 7, scope: !215)
!287 = !{!"llvm.loop.name", !"VITIS_LOOP_60_6"}
!288 = !DILocation(line: 70, column: 2, scope: !216)
!289 = !DILocation(line: 58, column: 41, scope: !210)
!290 = !DILocation(line: 58, column: 20, scope: !210)
!291 = distinct !{!291, !212, !292, !293}
!292 = !DILocation(line: 70, column: 2, scope: !207)
!293 = !{!"llvm.loop.name", !"VITIS_LOOP_58_5"}
!294 = !DILocation(line: 71, column: 1, scope: !16)
!295 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!296 = !{i32 0, i1 false, i32 0, i1 false}
!297 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
