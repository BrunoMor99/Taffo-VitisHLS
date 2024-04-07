; ModuleID = '/home/bruno/Desktop/benchmarks/covariance/intermediate/output.3.magiclangtmp.ll'
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
  %onedotzero = alloca float, align 4, !taffo.info !39
  %q = alloca float, align 4, !taffo.info !41
  %datas = alloca float*, align 8, !taffo.info !43
  %covs = alloca float*, align 8, !taffo.info !45, !taffo.target !48
  %means = alloca float*, align 8, !taffo.info !49
  %sum = alloca float, align 4, !taffo.info !51
  store float* %data, float** %data.addr, align 8
  call void @llvm.dbg.declare(metadata float** %data.addr, metadata !54, metadata !DIExpression()), !dbg !55
  store float* %cov, float** %cov.addr, align 8
  call void @llvm.dbg.declare(metadata float** %cov.addr, metadata !56, metadata !DIExpression()), !dbg !57
  store float* %mean, float** %mean.addr, align 8
  call void @llvm.dbg.declare(metadata float** %mean.addr, metadata !58, metadata !DIExpression()), !dbg !59
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %data, [0 x i8] zeroinitializer, i64 256, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !60
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %cov, [0 x i8] zeroinitializer, i64 256, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !61
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %mean, [0 x i8] zeroinitializer, i64 16, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !62
  %0 = bitcast i32* %i to i8*, !dbg !63, !taffo.info !32
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !63, !taffo.info !64
  call void @llvm.dbg.declare(metadata i32* %i, metadata !65, metadata !DIExpression()), !dbg !67
  %i1 = bitcast i32* %i to i8*, !dbg !63, !taffo.info !32
  %1 = bitcast i32* %j to i8*, !dbg !68, !taffo.info !32
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !68, !taffo.info !64
  call void @llvm.dbg.declare(metadata i32* %j, metadata !69, metadata !DIExpression()), !dbg !70
  %j2 = bitcast i32* %j to i8*, !dbg !68, !taffo.info !32
  %2 = bitcast i32* %k to i8*, !dbg !71, !taffo.info !32
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !71, !taffo.info !64
  call void @llvm.dbg.declare(metadata i32* %k, metadata !72, metadata !DIExpression()), !dbg !73
  %k3 = bitcast i32* %k to i8*, !dbg !71, !taffo.info !32
  %3 = bitcast i32* %n to i8*, !dbg !74
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !74
  call void @llvm.dbg.declare(metadata i32* %n, metadata !75, metadata !DIExpression()), !dbg !76
  store i32 16, i32* %n, align 4, !dbg !76
  %4 = bitcast i32* %m to i8*, !dbg !77
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !77
  call void @llvm.dbg.declare(metadata i32* %m, metadata !78, metadata !DIExpression()), !dbg !79
  store i32 16, i32* %m, align 4, !dbg !79
  %5 = bitcast float* %float_n to i8*, !dbg !80, !taffo.info !81
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !80, !taffo.info !64
  call void @llvm.dbg.declare(metadata float* %float_n, metadata !82, metadata !DIExpression()), !dbg !83
  %float_n4 = bitcast float* %float_n to i8*, !dbg !80, !taffo.info !81
  %6 = bitcast float* %onedotzero to i8*, !dbg !84
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !84
  call void @llvm.dbg.declare(metadata float* %onedotzero, metadata !85, metadata !DIExpression()), !dbg !86
  %onedotzero5 = bitcast float* %onedotzero to i8*, !dbg !84
  call void @llvm.var.annotation(i8* %onedotzero5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i32 29), !dbg !84
  store float 1.000000e+00, float* %onedotzero, align 4, !dbg !87
  %7 = load i32, i32* %n, align 4, !dbg !88, !taffo.info !34
  %conv = sitofp i32 %7 to float, !dbg !88, !taffo.info !34
  store float %conv, float* %float_n, align 4, !dbg !89, !taffo.info !64
  %8 = bitcast float* %q to i8*, !dbg !90, !taffo.info !81
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4, !dbg !90, !taffo.info !64
  call void @llvm.dbg.declare(metadata float* %q, metadata !91, metadata !DIExpression()), !dbg !92
  %q6 = bitcast float* %q to i8*, !dbg !90, !taffo.info !81
  %9 = load float, float* %float_n, align 4, !dbg !93, !taffo.info !36
  %10 = load float, float* %onedotzero, align 4, !dbg !94, !taffo.info !39
  %sub = fsub float %9, %10, !dbg !95, !taffo.info !96
  store float %sub, float* %q, align 4, !dbg !98, !taffo.info !64
  %11 = bitcast float** %datas to i8*, !dbg !99, !taffo.info !100
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %11) #4, !dbg !99, !taffo.info !64
  call void @llvm.dbg.declare(metadata float** %datas, metadata !101, metadata !DIExpression()), !dbg !102
  %datas7 = bitcast float** %datas to i8*, !dbg !99, !taffo.info !100
  %12 = load float*, float** %data.addr, align 8, !dbg !103, !taffo.info !26
  store float* %12, float** %datas, align 8, !dbg !104, !taffo.info !64
  %13 = bitcast float** %covs to i8*, !dbg !105, !taffo.info !106, !taffo.target !48
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %13) #4, !dbg !105, !taffo.info !64, !taffo.target !48
  call void @llvm.dbg.declare(metadata float** %covs, metadata !107, metadata !DIExpression()), !dbg !108
  %covs8 = bitcast float** %covs to i8*, !dbg !105, !taffo.info !106, !taffo.target !48
  %14 = load float*, float** %cov.addr, align 8, !dbg !109, !taffo.info !28
  store float* %14, float** %covs, align 8, !dbg !110, !taffo.info !64, !taffo.target !48
  %15 = bitcast float** %means to i8*, !dbg !111, !taffo.info !112
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %15) #4, !dbg !111, !taffo.info !64
  call void @llvm.dbg.declare(metadata float** %means, metadata !113, metadata !DIExpression()), !dbg !114
  %means9 = bitcast float** %means to i8*, !dbg !111, !taffo.info !112
  %16 = load float*, float** %mean.addr, align 8, !dbg !115, !taffo.info !30
  store float* %16, float** %means, align 8, !dbg !116, !taffo.info !64
  %17 = bitcast float* %sum to i8*, !dbg !117, !taffo.info !118
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #4, !dbg !117, !taffo.info !64
  call void @llvm.dbg.declare(metadata float* %sum, metadata !119, metadata !DIExpression()), !dbg !120
  %sum10 = bitcast float* %sum to i8*, !dbg !117, !taffo.info !118
  store float 0.000000e+00, float* %sum, align 4, !dbg !120, !taffo.info !64
  br label %VITIS_LOOP_41_1, !dbg !117

VITIS_LOOP_41_1:                                  ; preds = %entry
  store i32 0, i32* %j, align 4, !dbg !121, !taffo.info !64
  br label %for.cond, !dbg !123

for.cond:                                         ; preds = %for.inc19, %VITIS_LOOP_41_1
  %18 = load i32, i32* %j, align 4, !dbg !124, !taffo.info !126
  %cmp = icmp slt i32 %18, 16, !dbg !128, !taffo.info !129
  br i1 %cmp, label %for.body, label %for.end21, !dbg !131, !taffo.info !64

for.body:                                         ; preds = %for.cond
  br label %VITIS_LOOP_44_2, !dbg !132

VITIS_LOOP_44_2:                                  ; preds = %for.body
  store i32 0, i32* %i, align 4, !dbg !133, !taffo.info !64
  br label %for.cond11, !dbg !136

for.cond11:                                       ; preds = %for.inc, %VITIS_LOOP_44_2
  %19 = load i32, i32* %i, align 4, !dbg !137, !taffo.info !126
  %cmp12 = icmp slt i32 %19, 16, !dbg !139, !taffo.info !129
  br i1 %cmp12, label %for.body13, label %for.end, !dbg !140, !taffo.info !64

for.body13:                                       ; preds = %for.cond11
  %20 = load float*, float** %datas, align 8, !dbg !141, !taffo.info !43
  %21 = load i32, i32* %i, align 4, !dbg !143, !taffo.info !32
  %22 = load i32, i32* %m, align 4, !dbg !144, !taffo.info !34
  %mul = mul nsw i32 %21, %22, !dbg !145, !taffo.info !146
  %23 = load i32, i32* %j, align 4, !dbg !148, !taffo.info !32
  %add = add nsw i32 %mul, %23, !dbg !149, !taffo.info !150
  %idxprom = sext i32 %add to i64, !dbg !141, !taffo.info !150
  %arrayidx = getelementptr inbounds float, float* %20, i64 %idxprom, !dbg !141, !taffo.info !43
  %24 = load float, float* %arrayidx, align 4, !dbg !141, !taffo.info !43
  %25 = load float*, float** %means, align 8, !dbg !152, !taffo.info !49
  %26 = load i32, i32* %j, align 4, !dbg !153, !taffo.info !32
  %idxprom14 = sext i32 %26 to i64, !dbg !152, !taffo.info !32
  %arrayidx15 = getelementptr inbounds float, float* %25, i64 %idxprom14, !dbg !152, !taffo.info !49
  %27 = load float, float* %arrayidx15, align 4, !dbg !154, !taffo.info !49
  %add16 = fadd float %27, %24, !dbg !154, !taffo.info !155
  store float %add16, float* %arrayidx15, align 4, !dbg !154, !taffo.info !64
  br label %for.inc, !dbg !157

for.inc:                                          ; preds = %for.body13
  %28 = load i32, i32* %i, align 4, !dbg !158, !taffo.info !32
  %inc = add nsw i32 %28, 1, !dbg !158, !taffo.info !159
  store i32 %inc, i32* %i, align 4, !dbg !158, !taffo.info !64
  br label %for.cond11, !dbg !161, !llvm.loop !162

for.end:                                          ; preds = %for.cond11
  %29 = load float, float* %float_n, align 4, !dbg !165, !taffo.info !36
  %30 = load float*, float** %means, align 8, !dbg !166, !taffo.info !49
  %31 = load i32, i32* %j, align 4, !dbg !167, !taffo.info !126
  %idxprom17 = sext i32 %31 to i64, !dbg !166, !taffo.info !126
  %arrayidx18 = getelementptr inbounds float, float* %30, i64 %idxprom17, !dbg !166, !taffo.info !49
  %32 = load float, float* %arrayidx18, align 4, !dbg !168, !taffo.info !169
  %div = fdiv float %32, %29, !dbg !168, !taffo.info !171
  store float %div, float* %arrayidx18, align 4, !dbg !168, !taffo.info !64
  br label %for.inc19, !dbg !172

for.inc19:                                        ; preds = %for.end
  %33 = load i32, i32* %j, align 4, !dbg !173, !taffo.info !32
  %inc20 = add nsw i32 %33, 1, !dbg !173, !taffo.info !159
  store i32 %inc20, i32* %j, align 4, !dbg !173, !taffo.info !64
  br label %for.cond, !dbg !174, !llvm.loop !175

for.end21:                                        ; preds = %for.cond
  br label %VITIS_LOOP_51_3, !dbg !176

VITIS_LOOP_51_3:                                  ; preds = %for.end21
  store i32 0, i32* %i, align 4, !dbg !178, !taffo.info !64
  br label %for.cond22, !dbg !180

for.cond22:                                       ; preds = %for.inc38, %VITIS_LOOP_51_3
  %34 = load i32, i32* %i, align 4, !dbg !181, !taffo.info !126
  %cmp23 = icmp slt i32 %34, 16, !dbg !183, !taffo.info !129
  br i1 %cmp23, label %for.body24, label %for.end40, !dbg !184, !taffo.info !64

for.body24:                                       ; preds = %for.cond22
  br label %VITIS_LOOP_53_4, !dbg !185

VITIS_LOOP_53_4:                                  ; preds = %for.body24
  store i32 0, i32* %j, align 4, !dbg !186, !taffo.info !64
  br label %for.cond25, !dbg !189

for.cond25:                                       ; preds = %for.inc35, %VITIS_LOOP_53_4
  %35 = load i32, i32* %j, align 4, !dbg !190, !taffo.info !192
  %cmp26 = icmp slt i32 %35, 16, !dbg !194, !taffo.info !129
  br i1 %cmp26, label %for.body27, label %for.end37, !dbg !195, !taffo.info !64

for.body27:                                       ; preds = %for.cond25
  %36 = load float*, float** %means, align 8, !dbg !196, !taffo.info !49
  %37 = load i32, i32* %j, align 4, !dbg !198, !taffo.info !32
  %idxprom28 = sext i32 %37 to i64, !dbg !196, !taffo.info !32
  %arrayidx29 = getelementptr inbounds float, float* %36, i64 %idxprom28, !dbg !196, !taffo.info !49
  %38 = load float, float* %arrayidx29, align 4, !dbg !196, !taffo.info !199
  %39 = load float*, float** %datas, align 8, !dbg !201, !taffo.info !43
  %40 = load i32, i32* %i, align 4, !dbg !202, !taffo.info !32
  %41 = load i32, i32* %m, align 4, !dbg !203, !taffo.info !34
  %mul30 = mul nsw i32 %40, %41, !dbg !204, !taffo.info !146
  %42 = load i32, i32* %j, align 4, !dbg !205, !taffo.info !32
  %add31 = add nsw i32 %mul30, %42, !dbg !206, !taffo.info !150
  %idxprom32 = sext i32 %add31 to i64, !dbg !201, !taffo.info !150
  %arrayidx33 = getelementptr inbounds float, float* %39, i64 %idxprom32, !dbg !201, !taffo.info !43
  %43 = load float, float* %arrayidx33, align 4, !dbg !207, !taffo.info !208
  %sub34 = fsub float %43, %38, !dbg !207, !taffo.info !208
  store float %sub34, float* %arrayidx33, align 4, !dbg !207, !taffo.info !64
  br label %for.inc35, !dbg !209

for.inc35:                                        ; preds = %for.body27
  %44 = load i32, i32* %j, align 4, !dbg !210, !taffo.info !211
  %inc36 = add nsw i32 %44, 1, !dbg !210, !taffo.info !192
  store i32 %inc36, i32* %j, align 4, !dbg !210, !taffo.info !64
  br label %for.cond25, !dbg !213, !llvm.loop !214

for.end37:                                        ; preds = %for.cond25
  br label %for.inc38, !dbg !217

for.inc38:                                        ; preds = %for.end37
  %45 = load i32, i32* %i, align 4, !dbg !218, !taffo.info !32
  %inc39 = add nsw i32 %45, 1, !dbg !218, !taffo.info !159
  store i32 %inc39, i32* %i, align 4, !dbg !218, !taffo.info !64
  br label %for.cond22, !dbg !219, !llvm.loop !220

for.end40:                                        ; preds = %for.cond22
  br label %VITIS_LOOP_58_5, !dbg !221

VITIS_LOOP_58_5:                                  ; preds = %for.end40
  store i32 0, i32* %i, align 4, !dbg !223, !taffo.info !64
  br label %for.cond41, !dbg !225

for.cond41:                                       ; preds = %for.inc83, %VITIS_LOOP_58_5
  %46 = load i32, i32* %i, align 4, !dbg !226, !taffo.info !126
  %cmp42 = icmp slt i32 %46, 16, !dbg !228, !taffo.info !129
  br i1 %cmp42, label %for.body43, label %for.end85, !dbg !229, !taffo.info !64

for.body43:                                       ; preds = %for.cond41
  br label %VITIS_LOOP_60_6, !dbg !230

VITIS_LOOP_60_6:                                  ; preds = %for.body43
  %47 = load i32, i32* %i, align 4, !dbg !231, !taffo.info !32
  store i32 %47, i32* %j, align 4, !dbg !234, !taffo.info !64
  br label %for.cond44, !dbg !235

for.cond44:                                       ; preds = %for.inc80, %VITIS_LOOP_60_6
  %48 = load i32, i32* %j, align 4, !dbg !236, !taffo.info !126
  %cmp45 = icmp slt i32 %48, 16, !dbg !238, !taffo.info !129
  br i1 %cmp45, label %for.body46, label %for.end82, !dbg !239, !taffo.info !64

for.body46:                                       ; preds = %for.cond44
  br label %VITIS_LOOP_63_7, !dbg !240

VITIS_LOOP_63_7:                                  ; preds = %for.body46
  store i32 0, i32* %k, align 4, !dbg !241, !taffo.info !64
  br label %for.cond47, !dbg !244

for.cond47:                                       ; preds = %for.inc64, %VITIS_LOOP_63_7
  %49 = load i32, i32* %k, align 4, !dbg !245, !taffo.info !126
  %cmp48 = icmp slt i32 %49, 16, !dbg !247, !taffo.info !129
  br i1 %cmp48, label %for.body49, label %for.end66, !dbg !248, !taffo.info !64

for.body49:                                       ; preds = %for.cond47
  %50 = load float*, float** %datas, align 8, !dbg !249, !taffo.info !43
  %51 = load i32, i32* %k, align 4, !dbg !251, !taffo.info !32
  %52 = load i32, i32* %m, align 4, !dbg !252, !taffo.info !34
  %mul50 = mul nsw i32 %51, %52, !dbg !253, !taffo.info !146
  %53 = load i32, i32* %j, align 4, !dbg !254, !taffo.info !32
  %add51 = add nsw i32 %mul50, %53, !dbg !255, !taffo.info !150
  %idxprom52 = sext i32 %add51 to i64, !dbg !249, !taffo.info !150
  %arrayidx53 = getelementptr inbounds float, float* %50, i64 %idxprom52, !dbg !249, !taffo.info !43
  %54 = load float, float* %arrayidx53, align 4, !dbg !249, !taffo.info !43
  %55 = load float*, float** %datas, align 8, !dbg !256, !taffo.info !43
  %56 = load i32, i32* %k, align 4, !dbg !257, !taffo.info !32
  %57 = load i32, i32* %m, align 4, !dbg !258, !taffo.info !34
  %mul54 = mul nsw i32 %56, %57, !dbg !259, !taffo.info !146
  %58 = load i32, i32* %j, align 4, !dbg !260, !taffo.info !32
  %add55 = add nsw i32 %mul54, %58, !dbg !261, !taffo.info !150
  %idxprom56 = sext i32 %add55 to i64, !dbg !256, !taffo.info !150
  %arrayidx57 = getelementptr inbounds float, float* %55, i64 %idxprom56, !dbg !256, !taffo.info !43
  %59 = load float, float* %arrayidx57, align 4, !dbg !256, !taffo.info !43
  %mul58 = fmul float %54, %59, !dbg !262, !taffo.info !263
  %60 = load float*, float** %covs, align 8, !dbg !265, !taffo.info !45, !taffo.target !48
  %61 = load i32, i32* %i, align 4, !dbg !266, !taffo.info !32
  %62 = load i32, i32* %m, align 4, !dbg !267, !taffo.info !34
  %mul59 = mul nsw i32 %61, %62, !dbg !268, !taffo.info !146
  %63 = load i32, i32* %j, align 4, !dbg !269, !taffo.info !32
  %add60 = add nsw i32 %mul59, %63, !dbg !270, !taffo.info !150
  %idxprom61 = sext i32 %add60 to i64, !dbg !265, !taffo.info !150
  %arrayidx62 = getelementptr inbounds float, float* %60, i64 %idxprom61, !dbg !265, !taffo.info !45, !taffo.target !48
  %64 = load float, float* %arrayidx62, align 4, !dbg !271, !taffo.info !45, !taffo.target !48
  %add63 = fadd float %64, %mul58, !dbg !271, !taffo.info !263, !taffo.target !48
  store float %add63, float* %arrayidx62, align 4, !dbg !271, !taffo.info !64, !taffo.target !48
  br label %for.inc64, !dbg !272

for.inc64:                                        ; preds = %for.body49
  %65 = load i32, i32* %k, align 4, !dbg !273, !taffo.info !32
  %inc65 = add nsw i32 %65, 1, !dbg !273, !taffo.info !159
  store i32 %inc65, i32* %k, align 4, !dbg !273, !taffo.info !64
  br label %for.cond47, !dbg !274, !llvm.loop !275

for.end66:                                        ; preds = %for.cond47
  %66 = load float, float* %q, align 4, !dbg !278, !taffo.info !41
  %67 = load float*, float** %cov.addr, align 8, !dbg !279, !taffo.info !280
  %68 = load i32, i32* %i, align 4, !dbg !281, !taffo.info !32
  %69 = load i32, i32* %m, align 4, !dbg !282, !taffo.info !34
  %mul67 = mul nsw i32 %68, %69, !dbg !283, !taffo.info !146
  %70 = load i32, i32* %j, align 4, !dbg !284, !taffo.info !32
  %add68 = add nsw i32 %mul67, %70, !dbg !285, !taffo.info !150
  %idxprom69 = sext i32 %add68 to i64, !dbg !279, !taffo.info !150
  %arrayidx70 = getelementptr inbounds float, float* %67, i64 %idxprom69, !dbg !279, !taffo.info !45
  %71 = load float, float* %arrayidx70, align 4, !dbg !286, !taffo.info !45
  %div71 = fdiv float %71, %66, !dbg !286, !taffo.info !155
  store float %div71, float* %arrayidx70, align 4, !dbg !286, !taffo.info !64
  %72 = load float*, float** %cov.addr, align 8, !dbg !287, !taffo.info !280
  %73 = load i32, i32* %i, align 4, !dbg !288, !taffo.info !32
  %74 = load i32, i32* %m, align 4, !dbg !289, !taffo.info !34
  %mul72 = mul nsw i32 %73, %74, !dbg !290, !taffo.info !146
  %75 = load i32, i32* %j, align 4, !dbg !291, !taffo.info !32
  %add73 = add nsw i32 %mul72, %75, !dbg !292, !taffo.info !150
  %idxprom74 = sext i32 %add73 to i64, !dbg !287, !taffo.info !150
  %arrayidx75 = getelementptr inbounds float, float* %72, i64 %idxprom74, !dbg !287, !taffo.info !45
  %76 = load float, float* %arrayidx75, align 4, !dbg !287, !taffo.info !45
  %77 = load float*, float** %cov.addr, align 8, !dbg !293, !taffo.info !280
  %78 = load i32, i32* %j, align 4, !dbg !294, !taffo.info !32
  %79 = load i32, i32* %m, align 4, !dbg !295, !taffo.info !34
  %mul76 = mul nsw i32 %78, %79, !dbg !296, !taffo.info !146
  %80 = load i32, i32* %i, align 4, !dbg !297, !taffo.info !32
  %add77 = add nsw i32 %mul76, %80, !dbg !298, !taffo.info !150
  %idxprom78 = sext i32 %add77 to i64, !dbg !293, !taffo.info !150
  %arrayidx79 = getelementptr inbounds float, float* %77, i64 %idxprom78, !dbg !293, !taffo.info !45
  store float %76, float* %arrayidx79, align 4, !dbg !299, !taffo.info !64
  br label %for.inc80, !dbg !300

for.inc80:                                        ; preds = %for.end66
  %81 = load i32, i32* %j, align 4, !dbg !301, !taffo.info !32
  %inc81 = add nsw i32 %81, 1, !dbg !301, !taffo.info !159
  store i32 %inc81, i32* %j, align 4, !dbg !301, !taffo.info !64
  br label %for.cond44, !dbg !302, !llvm.loop !303

for.end82:                                        ; preds = %for.cond44
  br label %for.inc83, !dbg !306

for.inc83:                                        ; preds = %for.end82
  %82 = load i32, i32* %i, align 4, !dbg !307, !taffo.info !32
  %inc84 = add nsw i32 %82, 1, !dbg !307, !taffo.info !159
  store i32 %inc84, i32* %i, align 4, !dbg !307, !taffo.info !64
  br label %for.cond41, !dbg !308, !llvm.loop !309

for.end85:                                        ; preds = %for.cond41
  %83 = bitcast float* %sum to i8*, !dbg !312, !taffo.info !118
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %83) #4, !dbg !312, !taffo.info !64
  %84 = bitcast float** %means to i8*, !dbg !312, !taffo.info !112
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %84) #4, !dbg !312, !taffo.info !64
  %85 = bitcast float** %covs to i8*, !dbg !312, !taffo.info !106, !taffo.target !48
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %85) #4, !dbg !312, !taffo.info !64, !taffo.target !48
  %86 = bitcast float** %datas to i8*, !dbg !312, !taffo.info !100
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %86) #4, !dbg !312, !taffo.info !64
  %87 = bitcast float* %q to i8*, !dbg !312, !taffo.info !81
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %87) #4, !dbg !312, !taffo.info !64
  %88 = bitcast float* %onedotzero to i8*, !dbg !312, !taffo.info !39
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %88) #4, !dbg !312
  %89 = bitcast float* %float_n to i8*, !dbg !312, !taffo.info !81
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %89) #4, !dbg !312, !taffo.info !64
  %90 = bitcast i32* %m to i8*, !dbg !312, !taffo.info !34
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %90) #4, !dbg !312
  %91 = bitcast i32* %n to i8*, !dbg !312, !taffo.info !34
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %91) #4, !dbg !312
  %92 = bitcast i32* %k to i8*, !dbg !312, !taffo.info !32
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %92) #4, !dbg !312, !taffo.info !64
  %93 = bitcast i32* %j to i8*, !dbg !312, !taffo.info !32
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %93) #4, !dbg !312, !taffo.info !64
  %94 = bitcast i32* %i to i8*, !dbg !312, !taffo.info !32
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %94) #4, !dbg !312, !taffo.info !64
  ret void, !dbg !312
}

; Function Attrs: nounwind readnone speculatable
declare !taffo.funinfo !313 void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: inaccessiblememonly nounwind
declare !taffo.funinfo !9 void @llvm.sideeffect() #2

; Function Attrs: argmemonly nounwind
declare !taffo.funinfo !314 void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare !taffo.funinfo !315 void @llvm.var.annotation(i8*, i8*, i8*, i32) #4

; Function Attrs: argmemonly nounwind
declare !taffo.funinfo !314 void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #3

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
!36 = !{!37, !38, i1 false, i1 true}
!37 = !{!"fixp", i32 32, i32 20}
!38 = !{double 2.000000e+00, double 3.000000e+03}
!39 = !{i1 false, !40, i1 false, i1 false}
!40 = !{double 1.000000e+00, double 1.000000e+00}
!41 = !{!37, !42, i1 false, i1 true}
!42 = !{double 1.000000e+00, double 3.000000e+03}
!43 = !{!44, !27, i1 false, i1 true}
!44 = !{!"fixp", i32 -32, i32 27}
!45 = !{!46, !47, i1 false, i1 true}
!46 = !{!"fixp", i32 -32, i32 9}
!47 = !{double 0xC140000000000000, double 0x413FFFFF00000000}
!48 = !{!"cov"}
!49 = !{!50, !31, i1 false, i1 true}
!50 = !{!"fixp", i32 32, i32 28}
!51 = !{!52, !53, i1 false, i1 true}
!52 = !{!"fixp", i32 -32, i32 22}
!53 = !{double -3.000000e+02, double 3.000000e+02}
!54 = !DILocalVariable(name: "data", arg: 1, scope: !16, file: !17, line: 18, type: !20)
!55 = !DILocation(line: 18, column: 69, scope: !16)
!56 = !DILocalVariable(name: "cov", arg: 2, scope: !16, file: !17, line: 18, type: !20)
!57 = !DILocation(line: 18, column: 82, scope: !16)
!58 = !DILocalVariable(name: "mean", arg: 3, scope: !16, file: !17, line: 18, type: !20)
!59 = !DILocation(line: 18, column: 94, scope: !16)
!60 = !DILocation(line: 20, column: 9, scope: !16)
!61 = !DILocation(line: 21, column: 9, scope: !16)
!62 = !DILocation(line: 22, column: 9, scope: !16)
!63 = !DILocation(line: 23, column: 1, scope: !16)
!64 = !{i1 false, i1 false, i1 false, i1 true}
!65 = !DILocalVariable(name: "i", scope: !16, file: !17, line: 23, type: !66)
!66 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!67 = !DILocation(line: 23, column: 55, scope: !16)
!68 = !DILocation(line: 24, column: 1, scope: !16)
!69 = !DILocalVariable(name: "j", scope: !16, file: !17, line: 24, type: !66)
!70 = !DILocation(line: 24, column: 55, scope: !16)
!71 = !DILocation(line: 25, column: 1, scope: !16)
!72 = !DILocalVariable(name: "k", scope: !16, file: !17, line: 25, type: !66)
!73 = !DILocation(line: 25, column: 55, scope: !16)
!74 = !DILocation(line: 26, column: 3, scope: !16)
!75 = !DILocalVariable(name: "n", scope: !16, file: !17, line: 26, type: !66)
!76 = !DILocation(line: 26, column: 7, scope: !16)
!77 = !DILocation(line: 27, column: 3, scope: !16)
!78 = !DILocalVariable(name: "m", scope: !16, file: !17, line: 27, type: !66)
!79 = !DILocation(line: 27, column: 7, scope: !16)
!80 = !DILocation(line: 28, column: 3, scope: !16)
!81 = !{!37, i1 false, i1 false, i1 true}
!82 = !DILocalVariable(name: "float_n", scope: !16, file: !17, line: 28, type: !11)
!83 = !DILocation(line: 28, column: 61, scope: !16)
!84 = !DILocation(line: 29, column: 3, scope: !16)
!85 = !DILocalVariable(name: "onedotzero", scope: !16, file: !17, line: 29, type: !11)
!86 = !DILocation(line: 29, column: 54, scope: !16)
!87 = !DILocation(line: 30, column: 14, scope: !16)
!88 = !DILocation(line: 31, column: 13, scope: !16)
!89 = !DILocation(line: 31, column: 11, scope: !16)
!90 = !DILocation(line: 32, column: 3, scope: !16)
!91 = !DILocalVariable(name: "q", scope: !16, file: !17, line: 32, type: !11)
!92 = !DILocation(line: 32, column: 61, scope: !16)
!93 = !DILocation(line: 33, column: 7, scope: !16)
!94 = !DILocation(line: 33, column: 17, scope: !16)
!95 = !DILocation(line: 33, column: 15, scope: !16)
!96 = !{!37, !97, i1 false, i1 true}
!97 = !{double 1.000000e+00, double 2.999000e+03}
!98 = !DILocation(line: 33, column: 5, scope: !16)
!99 = !DILocation(line: 34, column: 5, scope: !16)
!100 = !{!44, i1 false, i1 false, i1 true}
!101 = !DILocalVariable(name: "datas", scope: !16, file: !17, line: 34, type: !20)
!102 = !DILocation(line: 34, column: 12, scope: !16)
!103 = !DILocation(line: 35, column: 13, scope: !16)
!104 = !DILocation(line: 35, column: 11, scope: !16)
!105 = !DILocation(line: 36, column: 5, scope: !16)
!106 = !{!46, i1 false, i1 false, i1 true}
!107 = !DILocalVariable(name: "covs", scope: !16, file: !17, line: 36, type: !20)
!108 = !DILocation(line: 36, column: 12, scope: !16)
!109 = !DILocation(line: 37, column: 12, scope: !16)
!110 = !DILocation(line: 37, column: 10, scope: !16)
!111 = !DILocation(line: 38, column: 5, scope: !16)
!112 = !{!50, i1 false, i1 false, i1 true}
!113 = !DILocalVariable(name: "means", scope: !16, file: !17, line: 38, type: !20)
!114 = !DILocation(line: 38, column: 12, scope: !16)
!115 = !DILocation(line: 39, column: 13, scope: !16)
!116 = !DILocation(line: 39, column: 11, scope: !16)
!117 = !DILocation(line: 40, column: 5, scope: !16)
!118 = !{!52, i1 false, i1 false, i1 true}
!119 = !DILocalVariable(name: "sum", scope: !16, file: !17, line: 40, type: !11)
!120 = !DILocation(line: 40, column: 64, scope: !16)
!121 = !DILocation(line: 41, column: 28, scope: !122)
!122 = distinct !DILexicalBlock(scope: !16, file: !17, line: 41, column: 21)
!123 = !DILocation(line: 41, column: 26, scope: !122)
!124 = !DILocation(line: 41, column: 33, scope: !125)
!125 = distinct !DILexicalBlock(scope: !122, file: !17, line: 41, column: 21)
!126 = !{i1 false, !127, i1 false, i1 true}
!127 = !{double 0.000000e+00, double 1.700000e+01}
!128 = !DILocation(line: 41, column: 35, scope: !125)
!129 = !{i1 false, !130, i1 false, i1 true}
!130 = !{double 0.000000e+00, double 1.000000e+00}
!131 = !DILocation(line: 41, column: 21, scope: !122)
!132 = !DILocation(line: 42, column: 5, scope: !125)
!133 = !DILocation(line: 44, column: 31, scope: !134)
!134 = distinct !DILexicalBlock(scope: !135, file: !17, line: 44, column: 24)
!135 = distinct !DILexicalBlock(scope: !125, file: !17, line: 42, column: 5)
!136 = !DILocation(line: 44, column: 29, scope: !134)
!137 = !DILocation(line: 44, column: 36, scope: !138)
!138 = distinct !DILexicalBlock(scope: !134, file: !17, line: 44, column: 24)
!139 = !DILocation(line: 44, column: 38, scope: !138)
!140 = !DILocation(line: 44, column: 24, scope: !134)
!141 = !DILocation(line: 46, column: 21, scope: !142)
!142 = distinct !DILexicalBlock(scope: !138, file: !17, line: 44, column: 48)
!143 = !DILocation(line: 46, column: 27, scope: !142)
!144 = !DILocation(line: 46, column: 29, scope: !142)
!145 = !DILocation(line: 46, column: 28, scope: !142)
!146 = !{i1 false, !147, i1 false, i1 true}
!147 = !{double 0.000000e+00, double 2.560000e+02}
!148 = !DILocation(line: 46, column: 31, scope: !142)
!149 = !DILocation(line: 46, column: 30, scope: !142)
!150 = !{i1 false, !151, i1 false, i1 true}
!151 = !{double 0.000000e+00, double 2.720000e+02}
!152 = !DILocation(line: 46, column: 9, scope: !142)
!153 = !DILocation(line: 46, column: 15, scope: !142)
!154 = !DILocation(line: 46, column: 18, scope: !142)
!155 = !{!156, !2, i1 false, i1 true}
!156 = !{!"fixp", i32 32, i32 32}
!157 = !DILocation(line: 47, column: 9, scope: !142)
!158 = !DILocation(line: 44, column: 45, scope: !138)
!159 = !{i1 false, !160, i1 false, i1 true}
!160 = !{double 1.000000e+00, double 1.700000e+01}
!161 = !DILocation(line: 44, column: 24, scope: !138)
!162 = distinct !{!162, !140, !163, !164}
!163 = !DILocation(line: 47, column: 9, scope: !134)
!164 = !{!"llvm.loop.name", !"VITIS_LOOP_44_2"}
!165 = !DILocation(line: 48, column: 19, scope: !135)
!166 = !DILocation(line: 48, column: 7, scope: !135)
!167 = !DILocation(line: 48, column: 13, scope: !135)
!168 = !DILocation(line: 48, column: 16, scope: !135)
!169 = !{!170, !127, i1 false, i1 true}
!170 = !{!"fixp", i32 32, i32 27}
!171 = !{!170, !31, i1 false, i1 true}
!172 = !DILocation(line: 49, column: 5, scope: !135)
!173 = !DILocation(line: 41, column: 42, scope: !125)
!174 = !DILocation(line: 41, column: 21, scope: !125)
!175 = distinct !{!175, !131, !176, !177}
!176 = !DILocation(line: 49, column: 5, scope: !122)
!177 = !{!"llvm.loop.name", !"VITIS_LOOP_41_1"}
!178 = !DILocation(line: 51, column: 27, scope: !179)
!179 = distinct !DILexicalBlock(scope: !16, file: !17, line: 51, column: 20)
!180 = !DILocation(line: 51, column: 25, scope: !179)
!181 = !DILocation(line: 51, column: 32, scope: !182)
!182 = distinct !DILexicalBlock(scope: !179, file: !17, line: 51, column: 20)
!183 = !DILocation(line: 51, column: 34, scope: !182)
!184 = !DILocation(line: 51, column: 20, scope: !179)
!185 = !DILocation(line: 51, column: 44, scope: !182)
!186 = !DILocation(line: 53, column: 29, scope: !187)
!187 = distinct !DILexicalBlock(scope: !188, file: !17, line: 53, column: 22)
!188 = distinct !DILexicalBlock(scope: !182, file: !17, line: 51, column: 44)
!189 = !DILocation(line: 53, column: 27, scope: !187)
!190 = !DILocation(line: 53, column: 34, scope: !191)
!191 = distinct !DILexicalBlock(scope: !187, file: !17, line: 53, column: 22)
!192 = !{i1 false, !193, i1 false, i1 true}
!193 = !{double -7.500000e+00, double 1.700000e+01}
!194 = !DILocation(line: 53, column: 36, scope: !191)
!195 = !DILocation(line: 53, column: 22, scope: !187)
!196 = !DILocation(line: 55, column: 23, scope: !197)
!197 = distinct !DILexicalBlock(scope: !191, file: !17, line: 53, column: 46)
!198 = !DILocation(line: 55, column: 29, scope: !197)
!199 = !{!200, !31, i1 false, i1 true}
!200 = !{!"fixp", i32 -32, i32 26}
!201 = !DILocation(line: 55, column: 7, scope: !197)
!202 = !DILocation(line: 55, column: 13, scope: !197)
!203 = !DILocation(line: 55, column: 15, scope: !197)
!204 = !DILocation(line: 55, column: 14, scope: !197)
!205 = !DILocation(line: 55, column: 17, scope: !197)
!206 = !DILocation(line: 55, column: 16, scope: !197)
!207 = !DILocation(line: 55, column: 20, scope: !197)
!208 = !{!200, !27, i1 false, i1 true}
!209 = !DILocation(line: 56, column: 7, scope: !197)
!210 = !DILocation(line: 53, column: 43, scope: !191)
!211 = !{i1 false, !212, i1 false, i1 true}
!212 = !{double -8.500000e+00, double 1.600000e+01}
!213 = !DILocation(line: 53, column: 22, scope: !191)
!214 = distinct !{!214, !195, !215, !216}
!215 = !DILocation(line: 56, column: 7, scope: !187)
!216 = !{!"llvm.loop.name", !"VITIS_LOOP_53_4"}
!217 = !DILocation(line: 57, column: 7, scope: !188)
!218 = !DILocation(line: 51, column: 41, scope: !182)
!219 = !DILocation(line: 51, column: 20, scope: !182)
!220 = distinct !{!220, !184, !221, !222}
!221 = !DILocation(line: 57, column: 7, scope: !179)
!222 = !{!"llvm.loop.name", !"VITIS_LOOP_51_3"}
!223 = !DILocation(line: 58, column: 27, scope: !224)
!224 = distinct !DILexicalBlock(scope: !16, file: !17, line: 58, column: 20)
!225 = !DILocation(line: 58, column: 25, scope: !224)
!226 = !DILocation(line: 58, column: 32, scope: !227)
!227 = distinct !DILexicalBlock(scope: !224, file: !17, line: 58, column: 20)
!228 = !DILocation(line: 58, column: 34, scope: !227)
!229 = !DILocation(line: 58, column: 20, scope: !224)
!230 = !DILocation(line: 58, column: 44, scope: !227)
!231 = !DILocation(line: 60, column: 31, scope: !232)
!232 = distinct !DILexicalBlock(scope: !233, file: !17, line: 60, column: 22)
!233 = distinct !DILexicalBlock(scope: !227, file: !17, line: 58, column: 44)
!234 = !DILocation(line: 60, column: 29, scope: !232)
!235 = !DILocation(line: 60, column: 27, scope: !232)
!236 = !DILocation(line: 60, column: 34, scope: !237)
!237 = distinct !DILexicalBlock(scope: !232, file: !17, line: 60, column: 22)
!238 = !DILocation(line: 60, column: 36, scope: !237)
!239 = !DILocation(line: 60, column: 22, scope: !232)
!240 = !DILocation(line: 61, column: 7, scope: !237)
!241 = !DILocation(line: 63, column: 33, scope: !242)
!242 = distinct !DILexicalBlock(scope: !243, file: !17, line: 63, column: 26)
!243 = distinct !DILexicalBlock(scope: !237, file: !17, line: 61, column: 7)
!244 = !DILocation(line: 63, column: 31, scope: !242)
!245 = !DILocation(line: 63, column: 38, scope: !246)
!246 = distinct !DILexicalBlock(scope: !242, file: !17, line: 63, column: 26)
!247 = !DILocation(line: 63, column: 40, scope: !246)
!248 = !DILocation(line: 63, column: 26, scope: !242)
!249 = !DILocation(line: 65, column: 19, scope: !250)
!250 = distinct !DILexicalBlock(scope: !246, file: !17, line: 63, column: 50)
!251 = !DILocation(line: 65, column: 25, scope: !250)
!252 = !DILocation(line: 65, column: 27, scope: !250)
!253 = !DILocation(line: 65, column: 26, scope: !250)
!254 = !DILocation(line: 65, column: 29, scope: !250)
!255 = !DILocation(line: 65, column: 28, scope: !250)
!256 = !DILocation(line: 65, column: 34, scope: !250)
!257 = !DILocation(line: 65, column: 40, scope: !250)
!258 = !DILocation(line: 65, column: 42, scope: !250)
!259 = !DILocation(line: 65, column: 41, scope: !250)
!260 = !DILocation(line: 65, column: 44, scope: !250)
!261 = !DILocation(line: 65, column: 43, scope: !250)
!262 = !DILocation(line: 65, column: 32, scope: !250)
!263 = !{!264, !29, i1 false, i1 true}
!264 = !{!"fixp", i32 32, i32 25}
!265 = !DILocation(line: 65, column: 4, scope: !250)
!266 = !DILocation(line: 65, column: 9, scope: !250)
!267 = !DILocation(line: 65, column: 11, scope: !250)
!268 = !DILocation(line: 65, column: 10, scope: !250)
!269 = !DILocation(line: 65, column: 13, scope: !250)
!270 = !DILocation(line: 65, column: 12, scope: !250)
!271 = !DILocation(line: 65, column: 16, scope: !250)
!272 = !DILocation(line: 66, column: 4, scope: !250)
!273 = !DILocation(line: 63, column: 47, scope: !246)
!274 = !DILocation(line: 63, column: 26, scope: !246)
!275 = distinct !{!275, !248, !276, !277}
!276 = !DILocation(line: 66, column: 4, scope: !242)
!277 = !{!"llvm.loop.name", !"VITIS_LOOP_63_7"}
!278 = !DILocation(line: 67, column: 23, scope: !243)
!279 = !DILocation(line: 67, column: 9, scope: !243)
!280 = !{i1 false, !47, i1 false, i1 false}
!281 = !DILocation(line: 67, column: 13, scope: !243)
!282 = !DILocation(line: 67, column: 15, scope: !243)
!283 = !DILocation(line: 67, column: 14, scope: !243)
!284 = !DILocation(line: 67, column: 17, scope: !243)
!285 = !DILocation(line: 67, column: 16, scope: !243)
!286 = !DILocation(line: 67, column: 20, scope: !243)
!287 = !DILocation(line: 68, column: 22, scope: !243)
!288 = !DILocation(line: 68, column: 26, scope: !243)
!289 = !DILocation(line: 68, column: 28, scope: !243)
!290 = !DILocation(line: 68, column: 27, scope: !243)
!291 = !DILocation(line: 68, column: 30, scope: !243)
!292 = !DILocation(line: 68, column: 29, scope: !243)
!293 = !DILocation(line: 68, column: 9, scope: !243)
!294 = !DILocation(line: 68, column: 13, scope: !243)
!295 = !DILocation(line: 68, column: 15, scope: !243)
!296 = !DILocation(line: 68, column: 14, scope: !243)
!297 = !DILocation(line: 68, column: 17, scope: !243)
!298 = !DILocation(line: 68, column: 16, scope: !243)
!299 = !DILocation(line: 68, column: 20, scope: !243)
!300 = !DILocation(line: 69, column: 7, scope: !243)
!301 = !DILocation(line: 60, column: 43, scope: !237)
!302 = !DILocation(line: 60, column: 22, scope: !237)
!303 = distinct !{!303, !239, !304, !305}
!304 = !DILocation(line: 69, column: 7, scope: !232)
!305 = !{!"llvm.loop.name", !"VITIS_LOOP_60_6"}
!306 = !DILocation(line: 70, column: 2, scope: !233)
!307 = !DILocation(line: 58, column: 41, scope: !227)
!308 = !DILocation(line: 58, column: 20, scope: !227)
!309 = distinct !{!309, !229, !310, !311}
!310 = !DILocation(line: 70, column: 2, scope: !224)
!311 = !{!"llvm.loop.name", !"VITIS_LOOP_58_5"}
!312 = !DILocation(line: 71, column: 1, scope: !16)
!313 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!314 = !{i32 0, i1 false, i32 0, i1 false}
!315 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
