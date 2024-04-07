; ModuleID = '/home/bruno/Desktop/benchmarks/mm2/intermediate/output.3.magiclangtmp.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.global_ctors = appending global [0 x { i32, void ()*, i8* }] zeroinitializer, !taffo.structinfo !0
@.str = private unnamed_addr constant [20 x i8] c"scalar(range(0, 5))\00", section "llvm.metadata", !taffo.info !3
@.str.1 = private unnamed_addr constant [12 x i8] c"mm2_taffo.c\00", section "llvm.metadata", !taffo.info !5
@.str.2 = private unnamed_addr constant [41 x i8] c"target('A') scalar(range(-16384, 16384))\00", section "llvm.metadata", !taffo.info !5
@.str.3 = private unnamed_addr constant [41 x i8] c"target('B') scalar(range(-16384, 16384))\00", section "llvm.metadata", !taffo.info !5
@.str.4 = private unnamed_addr constant [41 x i8] c"target('C') scalar(range(-16384, 16384))\00", section "llvm.metadata", !taffo.info !5
@.str.5 = private unnamed_addr constant [41 x i8] c"target('D') scalar(range(-16384, 16384))\00", section "llvm.metadata", !taffo.info !5
@.str.6 = private unnamed_addr constant [44 x i8] c"tartget('tmp') scalar(range(-16384, 16384))\00", section "llvm.metadata", !taffo.info !5
@.str.7 = private unnamed_addr constant [9 x i8] c"scalar()\00", section "llvm.metadata", !taffo.info !3

; Function Attrs: nounwind
define void @mm2(float* %A, float* %B, float* %C, float* %D, float %alpha, float %beta) #0 !dbg !14 !fpga.function.pragma !20 !taffo.start !23 !taffo.funinfo !24 {
entry:
  %A.addr = alloca float*, align 8
  %B.addr = alloca float*, align 8
  %C.addr = alloca float*, align 8
  %D.addr = alloca float*, align 8, !taffo.info !1
  %alpha.addr = alloca float, align 4
  %beta.addr = alloca float, align 4
  %ni = alloca i32, align 4, !taffo.info !25
  %nj = alloca i32, align 4, !taffo.info !25
  %nk = alloca i32, align 4, !taffo.info !25
  %nl = alloca i32, align 4, !taffo.info !25
  %alphas = alloca float, align 4, !taffo.info !27
  %betas = alloca float, align 4, !taffo.info !27
  %As = alloca float*, align 8, !taffo.info !30, !taffo.target !33
  %Bs = alloca float*, align 8, !taffo.info !30, !taffo.target !34
  %Cs = alloca float*, align 8, !taffo.info !30, !taffo.target !35
  %Ds = alloca float*, align 8, !taffo.info !30, !taffo.target !36
  %tmp = alloca [256 x float], align 4, !taffo.info !1
  %i = alloca i32, align 4, !taffo.info !37
  %j = alloca i32, align 4, !taffo.info !37
  %k = alloca i32, align 4, !taffo.info !37
  store float* %A, float** %A.addr, align 8
  call void @llvm.dbg.declare(metadata float** %A.addr, metadata !39, metadata !DIExpression()), !dbg !40
  store float* %B, float** %B.addr, align 8
  call void @llvm.dbg.declare(metadata float** %B.addr, metadata !41, metadata !DIExpression()), !dbg !42
  store float* %C, float** %C.addr, align 8
  call void @llvm.dbg.declare(metadata float** %C.addr, metadata !43, metadata !DIExpression()), !dbg !44
  store float* %D, float** %D.addr, align 8
  call void @llvm.dbg.declare(metadata float** %D.addr, metadata !45, metadata !DIExpression()), !dbg !46
  store float %alpha, float* %alpha.addr, align 4
  call void @llvm.dbg.declare(metadata float* %alpha.addr, metadata !47, metadata !DIExpression()), !dbg !48
  store float %beta, float* %beta.addr, align 4
  call void @llvm.dbg.declare(metadata float* %beta.addr, metadata !49, metadata !DIExpression()), !dbg !50
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %A, [0 x i8] zeroinitializer, i64 256, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !51
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %B, [0 x i8] zeroinitializer, i64 256, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !52
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %C, [0 x i8] zeroinitializer, i64 256, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !53
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %D, [0 x i8] zeroinitializer, i64 256, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !54
  %0 = bitcast i32* %ni to i8*, !dbg !55
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !55
  call void @llvm.dbg.declare(metadata i32* %ni, metadata !56, metadata !DIExpression()), !dbg !58
  store i32 16, i32* %ni, align 4, !dbg !58
  %1 = bitcast i32* %nj to i8*, !dbg !59
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !59
  call void @llvm.dbg.declare(metadata i32* %nj, metadata !60, metadata !DIExpression()), !dbg !61
  store i32 16, i32* %nj, align 4, !dbg !61
  %2 = bitcast i32* %nk to i8*, !dbg !62
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !62
  call void @llvm.dbg.declare(metadata i32* %nk, metadata !63, metadata !DIExpression()), !dbg !64
  store i32 16, i32* %nk, align 4, !dbg !64
  %3 = bitcast i32* %nl to i8*, !dbg !65
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !65
  call void @llvm.dbg.declare(metadata i32* %nl, metadata !66, metadata !DIExpression()), !dbg !67
  store i32 16, i32* %nl, align 4, !dbg !67
  %4 = bitcast float* %alphas to i8*, !dbg !68, !taffo.info !69
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !68, !taffo.info !70
  call void @llvm.dbg.declare(metadata float* %alphas, metadata !71, metadata !DIExpression()), !dbg !72
  %alphas1 = bitcast float* %alphas to i8*, !dbg !68, !taffo.info !69
  %5 = load float, float* %alpha.addr, align 4, !dbg !73
  store float %5, float* %alphas, align 4, !dbg !74, !taffo.info !70
  %6 = bitcast float* %betas to i8*, !dbg !75, !taffo.info !69
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !75, !taffo.info !70
  call void @llvm.dbg.declare(metadata float* %betas, metadata !76, metadata !DIExpression()), !dbg !77
  %betas2 = bitcast float* %betas to i8*, !dbg !75, !taffo.info !69
  %7 = load float, float* %beta.addr, align 4, !dbg !78
  store float %7, float* %betas, align 4, !dbg !79, !taffo.info !70
  %8 = bitcast float** %As to i8*, !dbg !80, !taffo.info !81, !taffo.target !33
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %8) #4, !dbg !80, !taffo.info !70, !taffo.target !33
  call void @llvm.dbg.declare(metadata float** %As, metadata !82, metadata !DIExpression()), !dbg !83
  %As3 = bitcast float** %As to i8*, !dbg !80, !taffo.info !81, !taffo.target !33
  %9 = load float*, float** %A.addr, align 8, !dbg !84
  store float* %9, float** %As, align 8, !dbg !85, !taffo.info !70, !taffo.target !33
  %10 = bitcast float** %Bs to i8*, !dbg !86, !taffo.info !81, !taffo.target !34
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %10) #4, !dbg !86, !taffo.info !70, !taffo.target !34
  call void @llvm.dbg.declare(metadata float** %Bs, metadata !87, metadata !DIExpression()), !dbg !88
  %Bs4 = bitcast float** %Bs to i8*, !dbg !86, !taffo.info !81, !taffo.target !34
  %11 = load float*, float** %B.addr, align 8, !dbg !89
  store float* %11, float** %Bs, align 8, !dbg !90, !taffo.info !70, !taffo.target !34
  %12 = bitcast float** %Cs to i8*, !dbg !91, !taffo.info !81, !taffo.target !35
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %12) #4, !dbg !91, !taffo.info !70, !taffo.target !35
  call void @llvm.dbg.declare(metadata float** %Cs, metadata !92, metadata !DIExpression()), !dbg !93
  %Cs5 = bitcast float** %Cs to i8*, !dbg !91, !taffo.info !81, !taffo.target !35
  %13 = load float*, float** %C.addr, align 8, !dbg !94
  store float* %13, float** %Cs, align 8, !dbg !95, !taffo.info !70, !taffo.target !35
  %14 = bitcast float** %Ds to i8*, !dbg !96, !taffo.info !81, !taffo.target !36
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %14) #4, !dbg !96, !taffo.info !70, !taffo.target !36
  call void @llvm.dbg.declare(metadata float** %Ds, metadata !97, metadata !DIExpression()), !dbg !98
  %Ds6 = bitcast float** %Ds to i8*, !dbg !96, !taffo.info !81, !taffo.target !36
  %15 = load float*, float** %D.addr, align 8, !dbg !99, !taffo.info !1
  store float* %15, float** %Ds, align 8, !dbg !100, !taffo.info !70, !taffo.target !36
  %16 = bitcast [256 x float]* %tmp to i8*, !dbg !101
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* %16) #4, !dbg !101
  call void @llvm.dbg.declare(metadata [256 x float]* %tmp, metadata !102, metadata !DIExpression()), !dbg !106
  %tmp7 = bitcast [256 x float]* %tmp to i8*, !dbg !101
  call void @llvm.var.annotation(i8* %tmp7, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 46), !dbg !101
  %17 = bitcast i32* %i to i8*, !dbg !107, !taffo.info !70
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #4, !dbg !107, !taffo.info !70
  call void @llvm.dbg.declare(metadata i32* %i, metadata !108, metadata !DIExpression()), !dbg !109
  %i8 = bitcast i32* %i to i8*, !dbg !107, !taffo.info !70
  %18 = bitcast i32* %j to i8*, !dbg !110, !taffo.info !70
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #4, !dbg !110, !taffo.info !70
  call void @llvm.dbg.declare(metadata i32* %j, metadata !111, metadata !DIExpression()), !dbg !112
  %j9 = bitcast i32* %j to i8*, !dbg !110, !taffo.info !70
  %19 = bitcast i32* %k to i8*, !dbg !113, !taffo.info !70
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #4, !dbg !113, !taffo.info !70
  call void @llvm.dbg.declare(metadata i32* %k, metadata !114, metadata !DIExpression()), !dbg !115
  %k10 = bitcast i32* %k to i8*, !dbg !113, !taffo.info !70
  br label %VITIS_LOOP_53_1, !dbg !113

VITIS_LOOP_53_1:                                  ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !116, !taffo.info !70
  br label %for.cond, !dbg !118

for.cond:                                         ; preds = %for.inc35, %VITIS_LOOP_53_1
  %20 = load i32, i32* %i, align 4, !dbg !119, !taffo.info !37
  %cmp = icmp slt i32 %20, 16, !dbg !121, !taffo.info !122
  br i1 %cmp, label %for.body, label %for.end37, !dbg !124, !taffo.info !70

for.body:                                         ; preds = %for.cond
  br label %VITIS_LOOP_55_2, !dbg !125

VITIS_LOOP_55_2:                                  ; preds = %for.body
  store i32 0, i32* %j, align 4, !dbg !126, !taffo.info !70
  br label %for.cond11, !dbg !129

for.cond11:                                       ; preds = %for.inc32, %VITIS_LOOP_55_2
  %21 = load i32, i32* %j, align 4, !dbg !130, !taffo.info !37
  %cmp12 = icmp slt i32 %21, 16, !dbg !132, !taffo.info !122
  br i1 %cmp12, label %for.body13, label %for.end34, !dbg !133, !taffo.info !70

for.body13:                                       ; preds = %for.cond11
  %22 = load i32, i32* %i, align 4, !dbg !134, !taffo.info !37
  %23 = load i32, i32* %nj, align 4, !dbg !136, !taffo.info !25
  %mul = mul nsw i32 %22, %23, !dbg !137, !taffo.info !138
  %24 = load i32, i32* %j, align 4, !dbg !139, !taffo.info !37
  %add = add nsw i32 %mul, %24, !dbg !140, !taffo.info !138
  %idxprom = sext i32 %add to i64, !dbg !141, !taffo.info !138
  %arrayidx = getelementptr inbounds [256 x float], [256 x float]* %tmp, i64 0, i64 %idxprom, !dbg !141, !taffo.info !142
  store float 0.000000e+00, float* %arrayidx, align 4, !dbg !144, !taffo.info !70
  br label %VITIS_LOOP_58_3, !dbg !141

VITIS_LOOP_58_3:                                  ; preds = %for.body13
  store i32 0, i32* %k, align 4, !dbg !145, !taffo.info !70
  br label %for.cond14, !dbg !147

for.cond14:                                       ; preds = %for.inc, %VITIS_LOOP_58_3
  %25 = load i32, i32* %k, align 4, !dbg !148, !taffo.info !37
  %cmp15 = icmp slt i32 %25, 16, !dbg !150, !taffo.info !122
  br i1 %cmp15, label %for.body16, label %for.end, !dbg !151, !taffo.info !70

for.body16:                                       ; preds = %for.cond14
  %26 = load float, float* %alphas, align 4, !dbg !152, !taffo.info !27
  %27 = load float*, float** %As, align 8, !dbg !154, !taffo.info !30, !taffo.target !33
  %28 = load i32, i32* %i, align 4, !dbg !155, !taffo.info !37
  %29 = load i32, i32* %nk, align 4, !dbg !156, !taffo.info !25
  %mul17 = mul nsw i32 %28, %29, !dbg !157, !taffo.info !138
  %30 = load i32, i32* %k, align 4, !dbg !158, !taffo.info !37
  %add18 = add nsw i32 %mul17, %30, !dbg !159, !taffo.info !138
  %idxprom19 = sext i32 %add18 to i64, !dbg !154, !taffo.info !138
  %arrayidx20 = getelementptr inbounds float, float* %27, i64 %idxprom19, !dbg !154, !taffo.info !30, !taffo.target !33
  %31 = load float, float* %arrayidx20, align 4, !dbg !154, !taffo.info !30, !taffo.target !33
  %mul21 = fmul float %26, %31, !dbg !160, !taffo.info !142
  %32 = load float*, float** %Bs, align 8, !dbg !161, !taffo.info !30, !taffo.target !34
  %33 = load i32, i32* %k, align 4, !dbg !162, !taffo.info !37
  %34 = load i32, i32* %nj, align 4, !dbg !163, !taffo.info !25
  %mul22 = mul nsw i32 %33, %34, !dbg !164, !taffo.info !138
  %35 = load i32, i32* %j, align 4, !dbg !165, !taffo.info !37
  %add23 = add nsw i32 %mul22, %35, !dbg !166, !taffo.info !138
  %idxprom24 = sext i32 %add23 to i64, !dbg !161, !taffo.info !138
  %arrayidx25 = getelementptr inbounds float, float* %32, i64 %idxprom24, !dbg !161, !taffo.info !30, !taffo.target !34
  %36 = load float, float* %arrayidx25, align 4, !dbg !161, !taffo.info !30, !taffo.target !34
  %mul26 = fmul float %mul21, %36, !dbg !167, !taffo.info !142
  %37 = load i32, i32* %i, align 4, !dbg !168, !taffo.info !37
  %38 = load i32, i32* %nj, align 4, !dbg !169, !taffo.info !25
  %mul27 = mul nsw i32 %37, %38, !dbg !170, !taffo.info !138
  %39 = load i32, i32* %j, align 4, !dbg !171, !taffo.info !37
  %add28 = add nsw i32 %mul27, %39, !dbg !172, !taffo.info !138
  %idxprom29 = sext i32 %add28 to i64, !dbg !173, !taffo.info !138
  %arrayidx30 = getelementptr inbounds [256 x float], [256 x float]* %tmp, i64 0, i64 %idxprom29, !dbg !173, !taffo.info !142
  %40 = load float, float* %arrayidx30, align 4, !dbg !174, !taffo.info !142
  %add31 = fadd float %40, %mul26, !dbg !174, !taffo.info !142
  store float %add31, float* %arrayidx30, align 4, !dbg !174, !taffo.info !70
  br label %for.inc, !dbg !175

for.inc:                                          ; preds = %for.body16
  %41 = load i32, i32* %k, align 4, !dbg !176, !taffo.info !37
  %inc = add nsw i32 %41, 1, !dbg !176, !taffo.info !122
  store i32 %inc, i32* %k, align 4, !dbg !176, !taffo.info !70
  br label %for.cond14, !dbg !177, !llvm.loop !178

for.end:                                          ; preds = %for.cond14
  br label %for.inc32, !dbg !181

for.inc32:                                        ; preds = %for.end
  %42 = load i32, i32* %j, align 4, !dbg !182, !taffo.info !37
  %inc33 = add nsw i32 %42, 1, !dbg !182, !taffo.info !122
  store i32 %inc33, i32* %j, align 4, !dbg !182, !taffo.info !70
  br label %for.cond11, !dbg !183, !llvm.loop !184

for.end34:                                        ; preds = %for.cond11
  br label %for.inc35, !dbg !187

for.inc35:                                        ; preds = %for.end34
  %43 = load i32, i32* %i, align 4, !dbg !188, !taffo.info !37
  %inc36 = add nsw i32 %43, 1, !dbg !188, !taffo.info !122
  store i32 %inc36, i32* %i, align 4, !dbg !188, !taffo.info !70
  br label %for.cond, !dbg !189, !llvm.loop !190

for.end37:                                        ; preds = %for.cond
  br label %VITIS_LOOP_65_4, !dbg !191

VITIS_LOOP_65_4:                                  ; preds = %for.end37
  store i32 0, i32* %i, align 4, !dbg !193, !taffo.info !70
  br label %for.cond38, !dbg !195

for.cond38:                                       ; preds = %for.inc72, %VITIS_LOOP_65_4
  %44 = load i32, i32* %i, align 4, !dbg !196, !taffo.info !37
  %cmp39 = icmp slt i32 %44, 16, !dbg !198, !taffo.info !122
  br i1 %cmp39, label %for.body40, label %for.end74, !dbg !199, !taffo.info !70

for.body40:                                       ; preds = %for.cond38
  br label %VITIS_LOOP_67_5, !dbg !200

VITIS_LOOP_67_5:                                  ; preds = %for.body40
  store i32 0, i32* %j, align 4, !dbg !201, !taffo.info !70
  br label %for.cond41, !dbg !204

for.cond41:                                       ; preds = %for.inc69, %VITIS_LOOP_67_5
  %45 = load i32, i32* %j, align 4, !dbg !205, !taffo.info !37
  %cmp42 = icmp slt i32 %45, 16, !dbg !207, !taffo.info !122
  br i1 %cmp42, label %for.body43, label %for.end71, !dbg !208, !taffo.info !70

for.body43:                                       ; preds = %for.cond41
  %46 = load float, float* %betas, align 4, !dbg !209, !taffo.info !27
  %47 = load float*, float** %Ds, align 8, !dbg !211, !taffo.info !30, !taffo.target !36
  %48 = load i32, i32* %i, align 4, !dbg !212, !taffo.info !37
  %49 = load i32, i32* %nl, align 4, !dbg !213, !taffo.info !25
  %mul44 = mul nsw i32 %48, %49, !dbg !214, !taffo.info !215
  %50 = load i32, i32* %j, align 4, !dbg !217, !taffo.info !37
  %add45 = add nsw i32 %mul44, %50, !dbg !218, !taffo.info !219
  %idxprom46 = sext i32 %add45 to i64, !dbg !211, !taffo.info !219
  %arrayidx47 = getelementptr inbounds float, float* %47, i64 %idxprom46, !dbg !211, !taffo.info !30, !taffo.target !36
  %51 = load float, float* %arrayidx47, align 4, !dbg !221, !taffo.info !30, !taffo.target !36
  %mul48 = fmul float %51, %46, !dbg !221, !taffo.info !142
  store float %mul48, float* %arrayidx47, align 4, !dbg !221, !taffo.info !70
  br label %VITIS_LOOP_70_6, !dbg !211

VITIS_LOOP_70_6:                                  ; preds = %for.body43
  store i32 0, i32* %k, align 4, !dbg !222, !taffo.info !70
  br label %for.cond49, !dbg !224

for.cond49:                                       ; preds = %for.inc66, %VITIS_LOOP_70_6
  %52 = load i32, i32* %k, align 4, !dbg !225, !taffo.info !37
  %cmp50 = icmp slt i32 %52, 16, !dbg !227, !taffo.info !122
  br i1 %cmp50, label %for.body51, label %for.end68, !dbg !228, !taffo.info !70

for.body51:                                       ; preds = %for.cond49
  %53 = load i32, i32* %i, align 4, !dbg !229, !taffo.info !37
  %54 = load i32, i32* %nj, align 4, !dbg !231, !taffo.info !25
  %mul52 = mul nsw i32 %53, %54, !dbg !232, !taffo.info !215
  %55 = load i32, i32* %k, align 4, !dbg !233, !taffo.info !37
  %add53 = add nsw i32 %mul52, %55, !dbg !234, !taffo.info !219
  %idxprom54 = sext i32 %add53 to i64, !dbg !235, !taffo.info !219
  %arrayidx55 = getelementptr inbounds [256 x float], [256 x float]* %tmp, i64 0, i64 %idxprom54, !dbg !235, !taffo.info !142
  %56 = load float, float* %arrayidx55, align 4, !dbg !235, !taffo.info !142
  %57 = load float*, float** %Cs, align 8, !dbg !236, !taffo.info !30, !taffo.target !35
  %58 = load i32, i32* %k, align 4, !dbg !237, !taffo.info !37
  %59 = load i32, i32* %nl, align 4, !dbg !238, !taffo.info !25
  %mul56 = mul nsw i32 %58, %59, !dbg !239, !taffo.info !240
  %60 = load i32, i32* %j, align 4, !dbg !242, !taffo.info !37
  %add57 = add nsw i32 %mul56, %60, !dbg !243, !taffo.info !244
  %idxprom58 = sext i32 %add57 to i64, !dbg !236, !taffo.info !244
  %arrayidx59 = getelementptr inbounds float, float* %57, i64 %idxprom58, !dbg !236, !taffo.info !30, !taffo.target !35
  %61 = load float, float* %arrayidx59, align 4, !dbg !236, !taffo.info !30, !taffo.target !35
  %mul60 = fmul float %56, %61, !dbg !246, !taffo.info !142, !taffo.target !35
  %62 = load float*, float** %Ds, align 8, !dbg !247, !taffo.info !30, !taffo.target !36
  %63 = load i32, i32* %i, align 4, !dbg !248, !taffo.info !37
  %64 = load i32, i32* %nl, align 4, !dbg !249, !taffo.info !25
  %mul61 = mul nsw i32 %63, %64, !dbg !250, !taffo.info !215
  %65 = load i32, i32* %j, align 4, !dbg !251, !taffo.info !37
  %add62 = add nsw i32 %mul61, %65, !dbg !252, !taffo.info !253
  %idxprom63 = sext i32 %add62 to i64, !dbg !247, !taffo.info !253
  %arrayidx64 = getelementptr inbounds float, float* %62, i64 %idxprom63, !dbg !247, !taffo.info !30, !taffo.target !36
  %66 = load float, float* %arrayidx64, align 4, !dbg !255, !taffo.info !30, !taffo.target !36
  %add65 = fadd float %66, %mul60, !dbg !255, !taffo.info !142, !taffo.target !36
  store float %add65, float* %arrayidx64, align 4, !dbg !255, !taffo.info !70, !taffo.target !36
  br label %for.inc66, !dbg !256

for.inc66:                                        ; preds = %for.body51
  %67 = load i32, i32* %k, align 4, !dbg !257, !taffo.info !37
  %inc67 = add nsw i32 %67, 1, !dbg !257, !taffo.info !258
  store i32 %inc67, i32* %k, align 4, !dbg !257, !taffo.info !70
  br label %for.cond49, !dbg !260, !llvm.loop !261

for.end68:                                        ; preds = %for.cond49
  br label %for.inc69, !dbg !264

for.inc69:                                        ; preds = %for.end68
  %68 = load i32, i32* %j, align 4, !dbg !265, !taffo.info !37
  %inc70 = add nsw i32 %68, 1, !dbg !265, !taffo.info !258
  store i32 %inc70, i32* %j, align 4, !dbg !265, !taffo.info !70
  br label %for.cond41, !dbg !266, !llvm.loop !267

for.end71:                                        ; preds = %for.cond41
  br label %for.inc72, !dbg !270

for.inc72:                                        ; preds = %for.end71
  %69 = load i32, i32* %i, align 4, !dbg !271, !taffo.info !37
  %inc73 = add nsw i32 %69, 1, !dbg !271, !taffo.info !258
  store i32 %inc73, i32* %i, align 4, !dbg !271, !taffo.info !70
  br label %for.cond38, !dbg !272, !llvm.loop !273

for.end74:                                        ; preds = %for.cond38
  %70 = bitcast i32* %k to i8*, !dbg !276, !taffo.info !277
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %70) #4, !dbg !276, !taffo.info !70
  %71 = bitcast i32* %j to i8*, !dbg !276, !taffo.info !277
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %71) #4, !dbg !276, !taffo.info !70
  %72 = bitcast i32* %i to i8*, !dbg !276, !taffo.info !37
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %72) #4, !dbg !276, !taffo.info !70
  %73 = bitcast [256 x float]* %tmp to i8*, !dbg !276, !taffo.info !1
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* %73) #4, !dbg !276
  %74 = bitcast float** %Ds to i8*, !dbg !276, !taffo.info !81, !taffo.target !36
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %74) #4, !dbg !276, !taffo.info !70, !taffo.target !36
  %75 = bitcast float** %Cs to i8*, !dbg !276, !taffo.info !81, !taffo.target !35
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %75) #4, !dbg !276, !taffo.info !70, !taffo.target !35
  %76 = bitcast float** %Bs to i8*, !dbg !276, !taffo.info !81, !taffo.target !34
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %76) #4, !dbg !276, !taffo.info !70, !taffo.target !34
  %77 = bitcast float** %As to i8*, !dbg !276, !taffo.info !81, !taffo.target !33
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %77) #4, !dbg !276, !taffo.info !70, !taffo.target !33
  %78 = bitcast float* %betas to i8*, !dbg !276, !taffo.info !69
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %78) #4, !dbg !276, !taffo.info !70
  %79 = bitcast float* %alphas to i8*, !dbg !276, !taffo.info !69
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %79) #4, !dbg !276, !taffo.info !70
  %80 = bitcast i32* %nl to i8*, !dbg !276, !taffo.info !25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %80) #4, !dbg !276
  %81 = bitcast i32* %nk to i8*, !dbg !276, !taffo.info !25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %81) #4, !dbg !276
  %82 = bitcast i32* %nj to i8*, !dbg !276, !taffo.info !25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %82) #4, !dbg !276
  %83 = bitcast i32* %ni to i8*, !dbg !276, !taffo.info !25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %83) #4, !dbg !276
  ret void, !dbg !276
}

; Function Attrs: nounwind readnone speculatable
declare !taffo.funinfo !279 void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: inaccessiblememonly nounwind
declare !taffo.funinfo !9 void @llvm.sideeffect() #2

; Function Attrs: argmemonly nounwind
declare !taffo.funinfo !280 void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare !taffo.funinfo !281 void @llvm.var.annotation(i8*, i8*, i8*, i32) #4

; Function Attrs: argmemonly nounwind
declare !taffo.funinfo !280 void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #3

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.top.func"="mm2" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { inaccessiblememonly nounwind }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind }
attributes #5 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="0" "xlx.source"="user" }

!llvm.dbg.cu = !{!7}
!llvm.ident = !{!10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10}
!llvm.module.flags = !{!11, !12, !13}

!0 = !{!1, !1, !1}
!1 = !{i1 false, !2, i1 false, i1 false}
!2 = !{double 0.000000e+00, double 0.000000e+00}
!3 = !{i1 false, !4, i1 false, i1 false}
!4 = !{double 0.000000e+00, double 1.150000e+02}
!5 = !{i1 false, !6, i1 false, i1 false}
!6 = !{double 0.000000e+00, double 1.160000e+02}
!7 = distinct !DICompileUnit(language: DW_LANG_C99, file: !8, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !9)
!8 = !DIFile(filename: "/home/bruno/Desktop/benchmarks/mm2/proj_mm2/solution1/.autopilot/db/mm2_taffo.pp.0.c", directory: "/home/bruno/Desktop/benchmarks/mm2")
!9 = !{}
!10 = !{!"clang version 7.0.0 "}
!11 = !{i32 2, !"Dwarf Version", i32 4}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"wchar_size", i32 4}
!14 = distinct !DISubprogram(name: "mm2", scope: !15, file: !15, line: 23, type: !16, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!15 = !DIFile(filename: "mm2_taffo.c", directory: "/home/bruno/Desktop/benchmarks/mm2")
!16 = !DISubroutineType(types: !17)
!17 = !{null, !18, !18, !18, !18, !19, !19}
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!20 = !{!21}
!21 = !{!"fpga.top", !"user", !22}
!22 = !DILocation(line: 23, column: 16, scope: !14)
!23 = !{i1 true}
!24 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 1, !1, i32 0, i1 false, i32 0, i1 false}
!25 = !{i1 false, !26, i1 false, i1 false}
!26 = !{double 1.600000e+01, double 1.600000e+01}
!27 = !{!28, !29, i1 false, i1 true}
!28 = !{!"fixp", i32 32, i32 29}
!29 = !{double 0.000000e+00, double 5.000000e+00}
!30 = !{!31, !32, i1 false, i1 true}
!31 = !{!"fixp", i32 -32, i32 16}
!32 = !{double -1.638400e+04, double 1.638400e+04}
!33 = !{!"A"}
!34 = !{!"B"}
!35 = !{!"C"}
!36 = !{!"D"}
!37 = !{i1 false, !38, i1 false, i1 true}
!38 = !{double 0.000000e+00, double 2.000000e+00}
!39 = !DILocalVariable(name: "A", arg: 1, scope: !14, file: !15, line: 23, type: !18)
!40 = !DILocation(line: 23, column: 55, scope: !14)
!41 = !DILocalVariable(name: "B", arg: 2, scope: !14, file: !15, line: 23, type: !18)
!42 = !DILocation(line: 23, column: 65, scope: !14)
!43 = !DILocalVariable(name: "C", arg: 3, scope: !14, file: !15, line: 23, type: !18)
!44 = !DILocation(line: 23, column: 75, scope: !14)
!45 = !DILocalVariable(name: "D", arg: 4, scope: !14, file: !15, line: 23, type: !18)
!46 = !DILocation(line: 23, column: 85, scope: !14)
!47 = !DILocalVariable(name: "alpha", arg: 5, scope: !14, file: !15, line: 23, type: !19)
!48 = !DILocation(line: 23, column: 94, scope: !14)
!49 = !DILocalVariable(name: "beta", arg: 6, scope: !14, file: !15, line: 23, type: !19)
!50 = !DILocation(line: 23, column: 107, scope: !14)
!51 = !DILocation(line: 25, column: 9, scope: !14)
!52 = !DILocation(line: 26, column: 9, scope: !14)
!53 = !DILocation(line: 27, column: 9, scope: !14)
!54 = !DILocation(line: 28, column: 9, scope: !14)
!55 = !DILocation(line: 29, column: 2, scope: !14)
!56 = !DILocalVariable(name: "ni", scope: !14, file: !15, line: 29, type: !57)
!57 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!58 = !DILocation(line: 29, column: 6, scope: !14)
!59 = !DILocation(line: 30, column: 3, scope: !14)
!60 = !DILocalVariable(name: "nj", scope: !14, file: !15, line: 30, type: !57)
!61 = !DILocation(line: 30, column: 7, scope: !14)
!62 = !DILocation(line: 31, column: 3, scope: !14)
!63 = !DILocalVariable(name: "nk", scope: !14, file: !15, line: 31, type: !57)
!64 = !DILocation(line: 31, column: 7, scope: !14)
!65 = !DILocation(line: 32, column: 3, scope: !14)
!66 = !DILocalVariable(name: "nl", scope: !14, file: !15, line: 32, type: !57)
!67 = !DILocation(line: 32, column: 7, scope: !14)
!68 = !DILocation(line: 33, column: 3, scope: !14)
!69 = !{!28, i1 false, i1 false, i1 true}
!70 = !{i1 false, i1 false, i1 false, i1 true}
!71 = !DILocalVariable(name: "alphas", scope: !14, file: !15, line: 33, type: !19)
!72 = !DILocation(line: 33, column: 9, scope: !14)
!73 = !DILocation(line: 34, column: 12, scope: !14)
!74 = !DILocation(line: 34, column: 10, scope: !14)
!75 = !DILocation(line: 35, column: 3, scope: !14)
!76 = !DILocalVariable(name: "betas", scope: !14, file: !15, line: 35, type: !19)
!77 = !DILocation(line: 35, column: 9, scope: !14)
!78 = !DILocation(line: 36, column: 9, scope: !14)
!79 = !DILocation(line: 36, column: 8, scope: !14)
!80 = !DILocation(line: 38, column: 3, scope: !14)
!81 = !{!31, i1 false, i1 false, i1 true}
!82 = !DILocalVariable(name: "As", scope: !14, file: !15, line: 38, type: !18)
!83 = !DILocation(line: 38, column: 10, scope: !14)
!84 = !DILocation(line: 39, column: 8, scope: !14)
!85 = !DILocation(line: 39, column: 6, scope: !14)
!86 = !DILocation(line: 40, column: 3, scope: !14)
!87 = !DILocalVariable(name: "Bs", scope: !14, file: !15, line: 40, type: !18)
!88 = !DILocation(line: 40, column: 10, scope: !14)
!89 = !DILocation(line: 41, column: 8, scope: !14)
!90 = !DILocation(line: 41, column: 6, scope: !14)
!91 = !DILocation(line: 42, column: 3, scope: !14)
!92 = !DILocalVariable(name: "Cs", scope: !14, file: !15, line: 42, type: !18)
!93 = !DILocation(line: 42, column: 10, scope: !14)
!94 = !DILocation(line: 43, column: 8, scope: !14)
!95 = !DILocation(line: 43, column: 6, scope: !14)
!96 = !DILocation(line: 44, column: 3, scope: !14)
!97 = !DILocalVariable(name: "Ds", scope: !14, file: !15, line: 44, type: !18)
!98 = !DILocation(line: 44, column: 10, scope: !14)
!99 = !DILocation(line: 45, column: 8, scope: !14)
!100 = !DILocation(line: 45, column: 6, scope: !14)
!101 = !DILocation(line: 46, column: 3, scope: !14)
!102 = !DILocalVariable(name: "tmp", scope: !14, file: !15, line: 46, type: !103)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 8192, elements: !104)
!104 = !{!105}
!105 = !DISubrange(count: 256)
!106 = !DILocation(line: 46, column: 9, scope: !14)
!107 = !DILocation(line: 48, column: 3, scope: !14)
!108 = !DILocalVariable(name: "i", scope: !14, file: !15, line: 48, type: !57)
!109 = !DILocation(line: 48, column: 7, scope: !14)
!110 = !DILocation(line: 49, column: 3, scope: !14)
!111 = !DILocalVariable(name: "j", scope: !14, file: !15, line: 49, type: !57)
!112 = !DILocation(line: 49, column: 7, scope: !14)
!113 = !DILocation(line: 50, column: 3, scope: !14)
!114 = !DILocalVariable(name: "k", scope: !14, file: !15, line: 50, type: !57)
!115 = !DILocation(line: 50, column: 7, scope: !14)
!116 = !DILocation(line: 53, column: 27, scope: !117)
!117 = distinct !DILexicalBlock(scope: !14, file: !15, line: 53, column: 20)
!118 = !DILocation(line: 53, column: 25, scope: !117)
!119 = !DILocation(line: 53, column: 32, scope: !120)
!120 = distinct !DILexicalBlock(scope: !117, file: !15, line: 53, column: 20)
!121 = !DILocation(line: 53, column: 34, scope: !120)
!122 = !{i1 false, !123, i1 false, i1 true}
!123 = !{double 1.000000e+00, double 1.000000e+00}
!124 = !DILocation(line: 53, column: 20, scope: !117)
!125 = !DILocation(line: 53, column: 44, scope: !120)
!126 = !DILocation(line: 55, column: 29, scope: !127)
!127 = distinct !DILexicalBlock(scope: !128, file: !15, line: 55, column: 22)
!128 = distinct !DILexicalBlock(scope: !120, file: !15, line: 53, column: 44)
!129 = !DILocation(line: 55, column: 27, scope: !127)
!130 = !DILocation(line: 55, column: 34, scope: !131)
!131 = distinct !DILexicalBlock(scope: !127, file: !15, line: 55, column: 22)
!132 = !DILocation(line: 55, column: 36, scope: !131)
!133 = !DILocation(line: 55, column: 22, scope: !127)
!134 = !DILocation(line: 57, column: 10, scope: !135)
!135 = distinct !DILexicalBlock(scope: !131, file: !15, line: 55, column: 46)
!136 = !DILocation(line: 57, column: 12, scope: !135)
!137 = !DILocation(line: 57, column: 11, scope: !135)
!138 = !{i1 false, !2, i1 false, i1 true}
!139 = !DILocation(line: 57, column: 15, scope: !135)
!140 = !DILocation(line: 57, column: 14, scope: !135)
!141 = !DILocation(line: 57, column: 6, scope: !135)
!142 = !{!143, !2, i1 false, i1 true}
!143 = !{!"fixp", i32 32, i32 32}
!144 = !DILocation(line: 57, column: 18, scope: !135)
!145 = !DILocation(line: 58, column: 30, scope: !146)
!146 = distinct !DILexicalBlock(scope: !135, file: !15, line: 58, column: 23)
!147 = !DILocation(line: 58, column: 28, scope: !146)
!148 = !DILocation(line: 58, column: 35, scope: !149)
!149 = distinct !DILexicalBlock(scope: !146, file: !15, line: 58, column: 23)
!150 = !DILocation(line: 58, column: 37, scope: !149)
!151 = !DILocation(line: 58, column: 23, scope: !146)
!152 = !DILocation(line: 60, column: 24, scope: !153)
!153 = distinct !DILexicalBlock(scope: !149, file: !15, line: 58, column: 47)
!154 = !DILocation(line: 60, column: 33, scope: !153)
!155 = !DILocation(line: 60, column: 36, scope: !153)
!156 = !DILocation(line: 60, column: 38, scope: !153)
!157 = !DILocation(line: 60, column: 37, scope: !153)
!158 = !DILocation(line: 60, column: 41, scope: !153)
!159 = !DILocation(line: 60, column: 40, scope: !153)
!160 = !DILocation(line: 60, column: 31, scope: !153)
!161 = !DILocation(line: 60, column: 46, scope: !153)
!162 = !DILocation(line: 60, column: 49, scope: !153)
!163 = !DILocation(line: 60, column: 51, scope: !153)
!164 = !DILocation(line: 60, column: 50, scope: !153)
!165 = !DILocation(line: 60, column: 54, scope: !153)
!166 = !DILocation(line: 60, column: 53, scope: !153)
!167 = !DILocation(line: 60, column: 44, scope: !153)
!168 = !DILocation(line: 60, column: 13, scope: !153)
!169 = !DILocation(line: 60, column: 15, scope: !153)
!170 = !DILocation(line: 60, column: 14, scope: !153)
!171 = !DILocation(line: 60, column: 18, scope: !153)
!172 = !DILocation(line: 60, column: 17, scope: !153)
!173 = !DILocation(line: 60, column: 9, scope: !153)
!174 = !DILocation(line: 60, column: 21, scope: !153)
!175 = !DILocation(line: 61, column: 9, scope: !153)
!176 = !DILocation(line: 58, column: 43, scope: !149)
!177 = !DILocation(line: 58, column: 23, scope: !149)
!178 = distinct !{!178, !151, !179, !180}
!179 = !DILocation(line: 61, column: 9, scope: !146)
!180 = !{!"llvm.loop.name", !"VITIS_LOOP_58_3"}
!181 = !DILocation(line: 62, column: 5, scope: !135)
!182 = !DILocation(line: 55, column: 43, scope: !131)
!183 = !DILocation(line: 55, column: 22, scope: !131)
!184 = distinct !{!184, !133, !185, !186}
!185 = !DILocation(line: 62, column: 5, scope: !127)
!186 = !{!"llvm.loop.name", !"VITIS_LOOP_55_2"}
!187 = !DILocation(line: 63, column: 3, scope: !128)
!188 = !DILocation(line: 53, column: 41, scope: !120)
!189 = !DILocation(line: 53, column: 20, scope: !120)
!190 = distinct !{!190, !124, !191, !192}
!191 = !DILocation(line: 63, column: 3, scope: !117)
!192 = !{!"llvm.loop.name", !"VITIS_LOOP_53_1"}
!193 = !DILocation(line: 65, column: 27, scope: !194)
!194 = distinct !DILexicalBlock(scope: !14, file: !15, line: 65, column: 20)
!195 = !DILocation(line: 65, column: 25, scope: !194)
!196 = !DILocation(line: 65, column: 32, scope: !197)
!197 = distinct !DILexicalBlock(scope: !194, file: !15, line: 65, column: 20)
!198 = !DILocation(line: 65, column: 34, scope: !197)
!199 = !DILocation(line: 65, column: 20, scope: !194)
!200 = !DILocation(line: 65, column: 44, scope: !197)
!201 = !DILocation(line: 67, column: 29, scope: !202)
!202 = distinct !DILexicalBlock(scope: !203, file: !15, line: 67, column: 22)
!203 = distinct !DILexicalBlock(scope: !197, file: !15, line: 65, column: 44)
!204 = !DILocation(line: 67, column: 27, scope: !202)
!205 = !DILocation(line: 67, column: 34, scope: !206)
!206 = distinct !DILexicalBlock(scope: !202, file: !15, line: 67, column: 22)
!207 = !DILocation(line: 67, column: 36, scope: !206)
!208 = !DILocation(line: 67, column: 22, scope: !202)
!209 = !DILocation(line: 69, column: 16, scope: !210)
!210 = distinct !DILexicalBlock(scope: !206, file: !15, line: 67, column: 46)
!211 = !DILocation(line: 69, column: 2, scope: !210)
!212 = !DILocation(line: 69, column: 5, scope: !210)
!213 = !DILocation(line: 69, column: 7, scope: !210)
!214 = !DILocation(line: 69, column: 6, scope: !210)
!215 = !{i1 false, !216, i1 false, i1 true}
!216 = !{double 0.000000e+00, double 3.200000e+01}
!217 = !DILocation(line: 69, column: 10, scope: !210)
!218 = !DILocation(line: 69, column: 9, scope: !210)
!219 = !{i1 false, !220, i1 false, i1 true}
!220 = !{double 0.000000e+00, double 3.300000e+01}
!221 = !DILocation(line: 69, column: 13, scope: !210)
!222 = !DILocation(line: 70, column: 26, scope: !223)
!223 = distinct !DILexicalBlock(scope: !210, file: !15, line: 70, column: 19)
!224 = !DILocation(line: 70, column: 24, scope: !223)
!225 = !DILocation(line: 70, column: 31, scope: !226)
!226 = distinct !DILexicalBlock(scope: !223, file: !15, line: 70, column: 19)
!227 = !DILocation(line: 70, column: 33, scope: !226)
!228 = !DILocation(line: 70, column: 19, scope: !223)
!229 = !DILocation(line: 72, column: 28, scope: !230)
!230 = distinct !DILexicalBlock(scope: !226, file: !15, line: 70, column: 43)
!231 = !DILocation(line: 72, column: 30, scope: !230)
!232 = !DILocation(line: 72, column: 29, scope: !230)
!233 = !DILocation(line: 72, column: 33, scope: !230)
!234 = !DILocation(line: 72, column: 32, scope: !230)
!235 = !DILocation(line: 72, column: 24, scope: !230)
!236 = !DILocation(line: 72, column: 38, scope: !230)
!237 = !DILocation(line: 72, column: 41, scope: !230)
!238 = !DILocation(line: 72, column: 43, scope: !230)
!239 = !DILocation(line: 72, column: 42, scope: !230)
!240 = !{i1 false, !241, i1 false, i1 true}
!241 = !{double 0.000000e+00, double 1.600000e+01}
!242 = !DILocation(line: 72, column: 46, scope: !230)
!243 = !DILocation(line: 72, column: 45, scope: !230)
!244 = !{i1 false, !245, i1 false, i1 true}
!245 = !{double 0.000000e+00, double 1.800000e+01}
!246 = !DILocation(line: 72, column: 36, scope: !230)
!247 = !DILocation(line: 72, column: 10, scope: !230)
!248 = !DILocation(line: 72, column: 13, scope: !230)
!249 = !DILocation(line: 72, column: 15, scope: !230)
!250 = !DILocation(line: 72, column: 14, scope: !230)
!251 = !DILocation(line: 72, column: 18, scope: !230)
!252 = !DILocation(line: 72, column: 17, scope: !230)
!253 = !{i1 false, !254, i1 false, i1 true}
!254 = !{double 0.000000e+00, double 3.400000e+01}
!255 = !DILocation(line: 72, column: 21, scope: !230)
!256 = !DILocation(line: 73, column: 9, scope: !230)
!257 = !DILocation(line: 70, column: 39, scope: !226)
!258 = !{i1 false, !259, i1 false, i1 true}
!259 = !{double 1.000000e+00, double 2.000000e+00}
!260 = !DILocation(line: 70, column: 19, scope: !226)
!261 = distinct !{!261, !228, !262, !263}
!262 = !DILocation(line: 73, column: 9, scope: !223)
!263 = !{!"llvm.loop.name", !"VITIS_LOOP_70_6"}
!264 = !DILocation(line: 74, column: 5, scope: !210)
!265 = !DILocation(line: 67, column: 43, scope: !206)
!266 = !DILocation(line: 67, column: 22, scope: !206)
!267 = distinct !{!267, !208, !268, !269}
!268 = !DILocation(line: 74, column: 5, scope: !202)
!269 = !{!"llvm.loop.name", !"VITIS_LOOP_67_5"}
!270 = !DILocation(line: 75, column: 3, scope: !203)
!271 = !DILocation(line: 65, column: 41, scope: !197)
!272 = !DILocation(line: 65, column: 20, scope: !197)
!273 = distinct !{!273, !199, !274, !275}
!274 = !DILocation(line: 75, column: 3, scope: !194)
!275 = !{!"llvm.loop.name", !"VITIS_LOOP_65_4"}
!276 = !DILocation(line: 77, column: 1, scope: !14)
!277 = !{i1 false, !278, i1 false, i1 true}
!278 = !{double 0.000000e+00, double 1.000000e+00}
!279 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!280 = !{i32 0, i1 false, i32 0, i1 false}
!281 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
