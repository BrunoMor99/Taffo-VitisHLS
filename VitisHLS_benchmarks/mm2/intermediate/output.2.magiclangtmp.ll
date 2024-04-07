; ModuleID = '/home/bruno/Desktop/benchmarks/mm2/intermediate/output.1.magiclangtmp.ll'
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
define void @mm2(float* %A, float* %B, float* %C, float* %D, float %alpha, float %beta) #0 !dbg !7 !fpga.function.pragma !13 !taffo.start !16 !taffo.funinfo !17 {
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
  %alphas = alloca float, align 4, !taffo.info !18
  %betas = alloca float, align 4, !taffo.info !18
  %As = alloca float*, align 8, !taffo.info !20, !taffo.target !22
  %Bs = alloca float*, align 8, !taffo.info !20, !taffo.target !23
  %Cs = alloca float*, align 8, !taffo.info !20, !taffo.target !24
  %Ds = alloca float*, align 8, !taffo.info !20, !taffo.target !25
  %tmp = alloca [256 x float], align 4
  %i = alloca i32, align 4, !taffo.info !26
  %j = alloca i32, align 4, !taffo.info !26
  %k = alloca i32, align 4, !taffo.info !26
  store float* %A, float** %A.addr, align 8
  call void @llvm.dbg.declare(metadata float** %A.addr, metadata !27, metadata !DIExpression()), !dbg !28
  store float* %B, float** %B.addr, align 8
  call void @llvm.dbg.declare(metadata float** %B.addr, metadata !29, metadata !DIExpression()), !dbg !30
  store float* %C, float** %C.addr, align 8
  call void @llvm.dbg.declare(metadata float** %C.addr, metadata !31, metadata !DIExpression()), !dbg !32
  store float* %D, float** %D.addr, align 8
  call void @llvm.dbg.declare(metadata float** %D.addr, metadata !33, metadata !DIExpression()), !dbg !34
  store float %alpha, float* %alpha.addr, align 4
  call void @llvm.dbg.declare(metadata float* %alpha.addr, metadata !35, metadata !DIExpression()), !dbg !36
  store float %beta, float* %beta.addr, align 4
  call void @llvm.dbg.declare(metadata float* %beta.addr, metadata !37, metadata !DIExpression()), !dbg !38
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %A, [0 x i8] zeroinitializer, i64 256, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !39
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %B, [0 x i8] zeroinitializer, i64 256, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !40
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %C, [0 x i8] zeroinitializer, i64 256, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !41
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %D, [0 x i8] zeroinitializer, i64 256, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !42
  %0 = bitcast i32* %ni to i8*, !dbg !43
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !43
  call void @llvm.dbg.declare(metadata i32* %ni, metadata !44, metadata !DIExpression()), !dbg !46
  store i32 16, i32* %ni, align 4, !dbg !46
  %1 = bitcast i32* %nj to i8*, !dbg !47
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !47
  call void @llvm.dbg.declare(metadata i32* %nj, metadata !48, metadata !DIExpression()), !dbg !49
  store i32 16, i32* %nj, align 4, !dbg !49
  %2 = bitcast i32* %nk to i8*, !dbg !50
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !50
  call void @llvm.dbg.declare(metadata i32* %nk, metadata !51, metadata !DIExpression()), !dbg !52
  store i32 16, i32* %nk, align 4, !dbg !52
  %3 = bitcast i32* %nl to i8*, !dbg !53
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !53
  call void @llvm.dbg.declare(metadata i32* %nl, metadata !54, metadata !DIExpression()), !dbg !55
  store i32 16, i32* %nl, align 4, !dbg !55
  %4 = bitcast float* %alphas to i8*, !dbg !56, !taffo.info !26
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !56, !taffo.info !26
  call void @llvm.dbg.declare(metadata float* %alphas, metadata !57, metadata !DIExpression()), !dbg !58
  %alphas1 = bitcast float* %alphas to i8*, !dbg !56, !taffo.info !26
  %5 = load float, float* %alpha.addr, align 4, !dbg !59
  store float %5, float* %alphas, align 4, !dbg !60, !taffo.info !26
  %6 = bitcast float* %betas to i8*, !dbg !61, !taffo.info !26
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !61, !taffo.info !26
  call void @llvm.dbg.declare(metadata float* %betas, metadata !62, metadata !DIExpression()), !dbg !63
  %betas2 = bitcast float* %betas to i8*, !dbg !61, !taffo.info !26
  %7 = load float, float* %beta.addr, align 4, !dbg !64
  store float %7, float* %betas, align 4, !dbg !65, !taffo.info !26
  %8 = bitcast float** %As to i8*, !dbg !66, !taffo.info !26, !taffo.target !22
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %8) #4, !dbg !66, !taffo.info !26, !taffo.target !22
  call void @llvm.dbg.declare(metadata float** %As, metadata !67, metadata !DIExpression()), !dbg !68
  %As3 = bitcast float** %As to i8*, !dbg !66, !taffo.info !26, !taffo.target !22
  %9 = load float*, float** %A.addr, align 8, !dbg !69
  store float* %9, float** %As, align 8, !dbg !70, !taffo.info !26, !taffo.target !22
  %10 = bitcast float** %Bs to i8*, !dbg !71, !taffo.info !26, !taffo.target !23
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %10) #4, !dbg !71, !taffo.info !26, !taffo.target !23
  call void @llvm.dbg.declare(metadata float** %Bs, metadata !72, metadata !DIExpression()), !dbg !73
  %Bs4 = bitcast float** %Bs to i8*, !dbg !71, !taffo.info !26, !taffo.target !23
  %11 = load float*, float** %B.addr, align 8, !dbg !74
  store float* %11, float** %Bs, align 8, !dbg !75, !taffo.info !26, !taffo.target !23
  %12 = bitcast float** %Cs to i8*, !dbg !76, !taffo.info !26, !taffo.target !24
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %12) #4, !dbg !76, !taffo.info !26, !taffo.target !24
  call void @llvm.dbg.declare(metadata float** %Cs, metadata !77, metadata !DIExpression()), !dbg !78
  %Cs5 = bitcast float** %Cs to i8*, !dbg !76, !taffo.info !26, !taffo.target !24
  %13 = load float*, float** %C.addr, align 8, !dbg !79
  store float* %13, float** %Cs, align 8, !dbg !80, !taffo.info !26, !taffo.target !24
  %14 = bitcast float** %Ds to i8*, !dbg !81, !taffo.info !26, !taffo.target !25
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %14) #4, !dbg !81, !taffo.info !26, !taffo.target !25
  call void @llvm.dbg.declare(metadata float** %Ds, metadata !82, metadata !DIExpression()), !dbg !83
  %Ds6 = bitcast float** %Ds to i8*, !dbg !81, !taffo.info !26, !taffo.target !25
  %15 = load float*, float** %D.addr, align 8, !dbg !84
  store float* %15, float** %Ds, align 8, !dbg !85, !taffo.info !26, !taffo.target !25
  %16 = bitcast [256 x float]* %tmp to i8*, !dbg !86
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* %16) #4, !dbg !86
  call void @llvm.dbg.declare(metadata [256 x float]* %tmp, metadata !87, metadata !DIExpression()), !dbg !91
  %tmp7 = bitcast [256 x float]* %tmp to i8*, !dbg !86
  call void @llvm.var.annotation(i8* %tmp7, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 46), !dbg !86
  %17 = bitcast i32* %i to i8*, !dbg !92, !taffo.info !26
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #4, !dbg !92, !taffo.info !26
  call void @llvm.dbg.declare(metadata i32* %i, metadata !93, metadata !DIExpression()), !dbg !94
  %i8 = bitcast i32* %i to i8*, !dbg !92, !taffo.info !26
  %18 = bitcast i32* %j to i8*, !dbg !95, !taffo.info !26
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #4, !dbg !95, !taffo.info !26
  call void @llvm.dbg.declare(metadata i32* %j, metadata !96, metadata !DIExpression()), !dbg !97
  %j9 = bitcast i32* %j to i8*, !dbg !95, !taffo.info !26
  %19 = bitcast i32* %k to i8*, !dbg !98, !taffo.info !26
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #4, !dbg !98, !taffo.info !26
  call void @llvm.dbg.declare(metadata i32* %k, metadata !99, metadata !DIExpression()), !dbg !100
  %k10 = bitcast i32* %k to i8*, !dbg !98, !taffo.info !26
  br label %VITIS_LOOP_53_1, !dbg !98

VITIS_LOOP_53_1:                                  ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !101, !taffo.info !26
  br label %for.cond, !dbg !103

for.cond:                                         ; preds = %for.inc35, %VITIS_LOOP_53_1
  %20 = load i32, i32* %i, align 4, !dbg !104, !taffo.info !26
  %cmp = icmp slt i32 %20, 16, !dbg !106, !taffo.info !26
  br i1 %cmp, label %for.body, label %for.end37, !dbg !107, !taffo.info !26

for.body:                                         ; preds = %for.cond
  br label %VITIS_LOOP_55_2, !dbg !108

VITIS_LOOP_55_2:                                  ; preds = %for.body
  store i32 0, i32* %j, align 4, !dbg !109, !taffo.info !26
  br label %for.cond11, !dbg !112

for.cond11:                                       ; preds = %for.inc32, %VITIS_LOOP_55_2
  %21 = load i32, i32* %j, align 4, !dbg !113, !taffo.info !26
  %cmp12 = icmp slt i32 %21, 16, !dbg !115, !taffo.info !26
  br i1 %cmp12, label %for.body13, label %for.end34, !dbg !116, !taffo.info !26

for.body13:                                       ; preds = %for.cond11
  %22 = load i32, i32* %i, align 4, !dbg !117, !taffo.info !26
  %23 = load i32, i32* %nj, align 4, !dbg !119
  %mul = mul nsw i32 %22, %23, !dbg !120, !taffo.info !26
  %24 = load i32, i32* %j, align 4, !dbg !121, !taffo.info !26
  %add = add nsw i32 %mul, %24, !dbg !122, !taffo.info !26
  %idxprom = sext i32 %add to i64, !dbg !123, !taffo.info !26
  %arrayidx = getelementptr inbounds [256 x float], [256 x float]* %tmp, i64 0, i64 %idxprom, !dbg !123, !taffo.info !26
  store float 0.000000e+00, float* %arrayidx, align 4, !dbg !124, !taffo.info !26
  br label %VITIS_LOOP_58_3, !dbg !123

VITIS_LOOP_58_3:                                  ; preds = %for.body13
  store i32 0, i32* %k, align 4, !dbg !125, !taffo.info !26
  br label %for.cond14, !dbg !127

for.cond14:                                       ; preds = %for.inc, %VITIS_LOOP_58_3
  %25 = load i32, i32* %k, align 4, !dbg !128, !taffo.info !26
  %cmp15 = icmp slt i32 %25, 16, !dbg !130, !taffo.info !26
  br i1 %cmp15, label %for.body16, label %for.end, !dbg !131, !taffo.info !26

for.body16:                                       ; preds = %for.cond14
  %26 = load float, float* %alphas, align 4, !dbg !132, !taffo.info !26
  %27 = load float*, float** %As, align 8, !dbg !134, !taffo.info !26, !taffo.target !22
  %28 = load i32, i32* %i, align 4, !dbg !135, !taffo.info !26
  %29 = load i32, i32* %nk, align 4, !dbg !136
  %mul17 = mul nsw i32 %28, %29, !dbg !137, !taffo.info !26
  %30 = load i32, i32* %k, align 4, !dbg !138, !taffo.info !26
  %add18 = add nsw i32 %mul17, %30, !dbg !139, !taffo.info !26
  %idxprom19 = sext i32 %add18 to i64, !dbg !134, !taffo.info !26
  %arrayidx20 = getelementptr inbounds float, float* %27, i64 %idxprom19, !dbg !134, !taffo.info !26, !taffo.target !22
  %31 = load float, float* %arrayidx20, align 4, !dbg !134, !taffo.info !26, !taffo.target !22
  %mul21 = fmul float %26, %31, !dbg !140, !taffo.info !26
  %32 = load float*, float** %Bs, align 8, !dbg !141, !taffo.info !26, !taffo.target !23
  %33 = load i32, i32* %k, align 4, !dbg !142, !taffo.info !26
  %34 = load i32, i32* %nj, align 4, !dbg !143
  %mul22 = mul nsw i32 %33, %34, !dbg !144, !taffo.info !26
  %35 = load i32, i32* %j, align 4, !dbg !145, !taffo.info !26
  %add23 = add nsw i32 %mul22, %35, !dbg !146, !taffo.info !26
  %idxprom24 = sext i32 %add23 to i64, !dbg !141, !taffo.info !26
  %arrayidx25 = getelementptr inbounds float, float* %32, i64 %idxprom24, !dbg !141, !taffo.info !26, !taffo.target !23
  %36 = load float, float* %arrayidx25, align 4, !dbg !141, !taffo.info !26, !taffo.target !23
  %mul26 = fmul float %mul21, %36, !dbg !147, !taffo.info !26
  %37 = load i32, i32* %i, align 4, !dbg !148, !taffo.info !26
  %38 = load i32, i32* %nj, align 4, !dbg !149
  %mul27 = mul nsw i32 %37, %38, !dbg !150, !taffo.info !26
  %39 = load i32, i32* %j, align 4, !dbg !151, !taffo.info !26
  %add28 = add nsw i32 %mul27, %39, !dbg !152, !taffo.info !26
  %idxprom29 = sext i32 %add28 to i64, !dbg !153, !taffo.info !26
  %arrayidx30 = getelementptr inbounds [256 x float], [256 x float]* %tmp, i64 0, i64 %idxprom29, !dbg !153, !taffo.info !26
  %40 = load float, float* %arrayidx30, align 4, !dbg !154, !taffo.info !26
  %add31 = fadd float %40, %mul26, !dbg !154, !taffo.info !26
  store float %add31, float* %arrayidx30, align 4, !dbg !154, !taffo.info !26
  br label %for.inc, !dbg !155

for.inc:                                          ; preds = %for.body16
  %41 = load i32, i32* %k, align 4, !dbg !156, !taffo.info !26
  %inc = add nsw i32 %41, 1, !dbg !156, !taffo.info !26
  store i32 %inc, i32* %k, align 4, !dbg !156, !taffo.info !26
  br label %for.cond14, !dbg !157, !llvm.loop !158

for.end:                                          ; preds = %for.cond14
  br label %for.inc32, !dbg !161

for.inc32:                                        ; preds = %for.end
  %42 = load i32, i32* %j, align 4, !dbg !162, !taffo.info !26
  %inc33 = add nsw i32 %42, 1, !dbg !162, !taffo.info !26
  store i32 %inc33, i32* %j, align 4, !dbg !162, !taffo.info !26
  br label %for.cond11, !dbg !163, !llvm.loop !164

for.end34:                                        ; preds = %for.cond11
  br label %for.inc35, !dbg !167

for.inc35:                                        ; preds = %for.end34
  %43 = load i32, i32* %i, align 4, !dbg !168, !taffo.info !26
  %inc36 = add nsw i32 %43, 1, !dbg !168, !taffo.info !26
  store i32 %inc36, i32* %i, align 4, !dbg !168, !taffo.info !26
  br label %for.cond, !dbg !169, !llvm.loop !170

for.end37:                                        ; preds = %for.cond
  br label %VITIS_LOOP_65_4, !dbg !171

VITIS_LOOP_65_4:                                  ; preds = %for.end37
  store i32 0, i32* %i, align 4, !dbg !173, !taffo.info !26
  br label %for.cond38, !dbg !175

for.cond38:                                       ; preds = %for.inc72, %VITIS_LOOP_65_4
  %44 = load i32, i32* %i, align 4, !dbg !176, !taffo.info !26
  %cmp39 = icmp slt i32 %44, 16, !dbg !178, !taffo.info !26
  br i1 %cmp39, label %for.body40, label %for.end74, !dbg !179, !taffo.info !26

for.body40:                                       ; preds = %for.cond38
  br label %VITIS_LOOP_67_5, !dbg !180

VITIS_LOOP_67_5:                                  ; preds = %for.body40
  store i32 0, i32* %j, align 4, !dbg !181, !taffo.info !26
  br label %for.cond41, !dbg !184

for.cond41:                                       ; preds = %for.inc69, %VITIS_LOOP_67_5
  %45 = load i32, i32* %j, align 4, !dbg !185, !taffo.info !26
  %cmp42 = icmp slt i32 %45, 16, !dbg !187, !taffo.info !26
  br i1 %cmp42, label %for.body43, label %for.end71, !dbg !188, !taffo.info !26

for.body43:                                       ; preds = %for.cond41
  %46 = load float, float* %betas, align 4, !dbg !189, !taffo.info !26
  %47 = load float*, float** %Ds, align 8, !dbg !191, !taffo.info !26, !taffo.target !25
  %48 = load i32, i32* %i, align 4, !dbg !192, !taffo.info !26
  %49 = load i32, i32* %nl, align 4, !dbg !193
  %mul44 = mul nsw i32 %48, %49, !dbg !194, !taffo.info !26
  %50 = load i32, i32* %j, align 4, !dbg !195, !taffo.info !26
  %add45 = add nsw i32 %mul44, %50, !dbg !196, !taffo.info !26
  %idxprom46 = sext i32 %add45 to i64, !dbg !191, !taffo.info !26
  %arrayidx47 = getelementptr inbounds float, float* %47, i64 %idxprom46, !dbg !191, !taffo.info !26, !taffo.target !25
  %51 = load float, float* %arrayidx47, align 4, !dbg !197, !taffo.info !26, !taffo.target !25
  %mul48 = fmul float %51, %46, !dbg !197, !taffo.info !26
  store float %mul48, float* %arrayidx47, align 4, !dbg !197, !taffo.info !26
  br label %VITIS_LOOP_70_6, !dbg !191

VITIS_LOOP_70_6:                                  ; preds = %for.body43
  store i32 0, i32* %k, align 4, !dbg !198, !taffo.info !26
  br label %for.cond49, !dbg !200

for.cond49:                                       ; preds = %for.inc66, %VITIS_LOOP_70_6
  %52 = load i32, i32* %k, align 4, !dbg !201, !taffo.info !26
  %cmp50 = icmp slt i32 %52, 16, !dbg !203, !taffo.info !26
  br i1 %cmp50, label %for.body51, label %for.end68, !dbg !204, !taffo.info !26

for.body51:                                       ; preds = %for.cond49
  %53 = load i32, i32* %i, align 4, !dbg !205, !taffo.info !26
  %54 = load i32, i32* %nj, align 4, !dbg !207
  %mul52 = mul nsw i32 %53, %54, !dbg !208, !taffo.info !26
  %55 = load i32, i32* %k, align 4, !dbg !209, !taffo.info !26
  %add53 = add nsw i32 %mul52, %55, !dbg !210, !taffo.info !26
  %idxprom54 = sext i32 %add53 to i64, !dbg !211, !taffo.info !26
  %arrayidx55 = getelementptr inbounds [256 x float], [256 x float]* %tmp, i64 0, i64 %idxprom54, !dbg !211, !taffo.info !26
  %56 = load float, float* %arrayidx55, align 4, !dbg !211, !taffo.info !26
  %57 = load float*, float** %Cs, align 8, !dbg !212, !taffo.info !26, !taffo.target !24
  %58 = load i32, i32* %k, align 4, !dbg !213, !taffo.info !26
  %59 = load i32, i32* %nl, align 4, !dbg !214
  %mul56 = mul nsw i32 %58, %59, !dbg !215, !taffo.info !26
  %60 = load i32, i32* %j, align 4, !dbg !216, !taffo.info !26
  %add57 = add nsw i32 %mul56, %60, !dbg !217, !taffo.info !26
  %idxprom58 = sext i32 %add57 to i64, !dbg !212, !taffo.info !26
  %arrayidx59 = getelementptr inbounds float, float* %57, i64 %idxprom58, !dbg !212, !taffo.info !26, !taffo.target !24
  %61 = load float, float* %arrayidx59, align 4, !dbg !212, !taffo.info !26, !taffo.target !24
  %mul60 = fmul float %56, %61, !dbg !218, !taffo.info !26, !taffo.target !24
  %62 = load float*, float** %Ds, align 8, !dbg !219, !taffo.info !26, !taffo.target !25
  %63 = load i32, i32* %i, align 4, !dbg !220, !taffo.info !26
  %64 = load i32, i32* %nl, align 4, !dbg !221
  %mul61 = mul nsw i32 %63, %64, !dbg !222, !taffo.info !26
  %65 = load i32, i32* %j, align 4, !dbg !223, !taffo.info !26
  %add62 = add nsw i32 %mul61, %65, !dbg !224, !taffo.info !26
  %idxprom63 = sext i32 %add62 to i64, !dbg !219, !taffo.info !26
  %arrayidx64 = getelementptr inbounds float, float* %62, i64 %idxprom63, !dbg !219, !taffo.info !26, !taffo.target !25
  %66 = load float, float* %arrayidx64, align 4, !dbg !225, !taffo.info !26, !taffo.target !25
  %add65 = fadd float %66, %mul60, !dbg !225, !taffo.info !26, !taffo.target !25
  store float %add65, float* %arrayidx64, align 4, !dbg !225, !taffo.info !26, !taffo.target !25
  br label %for.inc66, !dbg !226

for.inc66:                                        ; preds = %for.body51
  %67 = load i32, i32* %k, align 4, !dbg !227, !taffo.info !26
  %inc67 = add nsw i32 %67, 1, !dbg !227, !taffo.info !26
  store i32 %inc67, i32* %k, align 4, !dbg !227, !taffo.info !26
  br label %for.cond49, !dbg !228, !llvm.loop !229

for.end68:                                        ; preds = %for.cond49
  br label %for.inc69, !dbg !232

for.inc69:                                        ; preds = %for.end68
  %68 = load i32, i32* %j, align 4, !dbg !233, !taffo.info !26
  %inc70 = add nsw i32 %68, 1, !dbg !233, !taffo.info !26
  store i32 %inc70, i32* %j, align 4, !dbg !233, !taffo.info !26
  br label %for.cond41, !dbg !234, !llvm.loop !235

for.end71:                                        ; preds = %for.cond41
  br label %for.inc72, !dbg !238

for.inc72:                                        ; preds = %for.end71
  %69 = load i32, i32* %i, align 4, !dbg !239, !taffo.info !26
  %inc73 = add nsw i32 %69, 1, !dbg !239, !taffo.info !26
  store i32 %inc73, i32* %i, align 4, !dbg !239, !taffo.info !26
  br label %for.cond38, !dbg !240, !llvm.loop !241

for.end74:                                        ; preds = %for.cond38
  %70 = bitcast i32* %k to i8*, !dbg !244, !taffo.info !26
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %70) #4, !dbg !244, !taffo.info !26
  %71 = bitcast i32* %j to i8*, !dbg !244, !taffo.info !26
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %71) #4, !dbg !244, !taffo.info !26
  %72 = bitcast i32* %i to i8*, !dbg !244, !taffo.info !26
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %72) #4, !dbg !244, !taffo.info !26
  %73 = bitcast [256 x float]* %tmp to i8*, !dbg !244
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* %73) #4, !dbg !244
  %74 = bitcast float** %Ds to i8*, !dbg !244, !taffo.info !26, !taffo.target !25
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %74) #4, !dbg !244, !taffo.info !26, !taffo.target !25
  %75 = bitcast float** %Cs to i8*, !dbg !244, !taffo.info !26, !taffo.target !24
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %75) #4, !dbg !244, !taffo.info !26, !taffo.target !24
  %76 = bitcast float** %Bs to i8*, !dbg !244, !taffo.info !26, !taffo.target !23
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %76) #4, !dbg !244, !taffo.info !26, !taffo.target !23
  %77 = bitcast float** %As to i8*, !dbg !244, !taffo.info !26, !taffo.target !22
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %77) #4, !dbg !244, !taffo.info !26, !taffo.target !22
  %78 = bitcast float* %betas to i8*, !dbg !244, !taffo.info !26
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %78) #4, !dbg !244, !taffo.info !26
  %79 = bitcast float* %alphas to i8*, !dbg !244, !taffo.info !26
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %79) #4, !dbg !244, !taffo.info !26
  %80 = bitcast i32* %nl to i8*, !dbg !244
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %80) #4, !dbg !244
  %81 = bitcast i32* %nk to i8*, !dbg !244
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %81) #4, !dbg !244
  %82 = bitcast i32* %nj to i8*, !dbg !244
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %82) #4, !dbg !244
  %83 = bitcast i32* %ni to i8*, !dbg !244
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %83) #4, !dbg !244
  ret void, !dbg !244
}

; Function Attrs: nounwind readnone speculatable
declare !taffo.funinfo !245 void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: inaccessiblememonly nounwind
declare !taffo.funinfo !2 void @llvm.sideeffect() #2

; Function Attrs: argmemonly nounwind
declare !taffo.funinfo !246 void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare !taffo.funinfo !247 void @llvm.var.annotation(i8*, i8*, i8*, i32) #4

; Function Attrs: argmemonly nounwind
declare !taffo.funinfo !246 void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #3

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
!16 = !{i1 true}
!17 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!18 = !{i1 false, !19, i1 false, i1 true}
!19 = !{double 0.000000e+00, double 5.000000e+00}
!20 = !{i1 false, !21, i1 false, i1 true}
!21 = !{double -1.638400e+04, double 1.638400e+04}
!22 = !{!"A"}
!23 = !{!"B"}
!24 = !{!"C"}
!25 = !{!"D"}
!26 = !{i1 false, i1 false, i1 false, i1 true}
!27 = !DILocalVariable(name: "A", arg: 1, scope: !7, file: !8, line: 23, type: !11)
!28 = !DILocation(line: 23, column: 55, scope: !7)
!29 = !DILocalVariable(name: "B", arg: 2, scope: !7, file: !8, line: 23, type: !11)
!30 = !DILocation(line: 23, column: 65, scope: !7)
!31 = !DILocalVariable(name: "C", arg: 3, scope: !7, file: !8, line: 23, type: !11)
!32 = !DILocation(line: 23, column: 75, scope: !7)
!33 = !DILocalVariable(name: "D", arg: 4, scope: !7, file: !8, line: 23, type: !11)
!34 = !DILocation(line: 23, column: 85, scope: !7)
!35 = !DILocalVariable(name: "alpha", arg: 5, scope: !7, file: !8, line: 23, type: !12)
!36 = !DILocation(line: 23, column: 94, scope: !7)
!37 = !DILocalVariable(name: "beta", arg: 6, scope: !7, file: !8, line: 23, type: !12)
!38 = !DILocation(line: 23, column: 107, scope: !7)
!39 = !DILocation(line: 25, column: 9, scope: !7)
!40 = !DILocation(line: 26, column: 9, scope: !7)
!41 = !DILocation(line: 27, column: 9, scope: !7)
!42 = !DILocation(line: 28, column: 9, scope: !7)
!43 = !DILocation(line: 29, column: 2, scope: !7)
!44 = !DILocalVariable(name: "ni", scope: !7, file: !8, line: 29, type: !45)
!45 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!46 = !DILocation(line: 29, column: 6, scope: !7)
!47 = !DILocation(line: 30, column: 3, scope: !7)
!48 = !DILocalVariable(name: "nj", scope: !7, file: !8, line: 30, type: !45)
!49 = !DILocation(line: 30, column: 7, scope: !7)
!50 = !DILocation(line: 31, column: 3, scope: !7)
!51 = !DILocalVariable(name: "nk", scope: !7, file: !8, line: 31, type: !45)
!52 = !DILocation(line: 31, column: 7, scope: !7)
!53 = !DILocation(line: 32, column: 3, scope: !7)
!54 = !DILocalVariable(name: "nl", scope: !7, file: !8, line: 32, type: !45)
!55 = !DILocation(line: 32, column: 7, scope: !7)
!56 = !DILocation(line: 33, column: 3, scope: !7)
!57 = !DILocalVariable(name: "alphas", scope: !7, file: !8, line: 33, type: !12)
!58 = !DILocation(line: 33, column: 9, scope: !7)
!59 = !DILocation(line: 34, column: 12, scope: !7)
!60 = !DILocation(line: 34, column: 10, scope: !7)
!61 = !DILocation(line: 35, column: 3, scope: !7)
!62 = !DILocalVariable(name: "betas", scope: !7, file: !8, line: 35, type: !12)
!63 = !DILocation(line: 35, column: 9, scope: !7)
!64 = !DILocation(line: 36, column: 9, scope: !7)
!65 = !DILocation(line: 36, column: 8, scope: !7)
!66 = !DILocation(line: 38, column: 3, scope: !7)
!67 = !DILocalVariable(name: "As", scope: !7, file: !8, line: 38, type: !11)
!68 = !DILocation(line: 38, column: 10, scope: !7)
!69 = !DILocation(line: 39, column: 8, scope: !7)
!70 = !DILocation(line: 39, column: 6, scope: !7)
!71 = !DILocation(line: 40, column: 3, scope: !7)
!72 = !DILocalVariable(name: "Bs", scope: !7, file: !8, line: 40, type: !11)
!73 = !DILocation(line: 40, column: 10, scope: !7)
!74 = !DILocation(line: 41, column: 8, scope: !7)
!75 = !DILocation(line: 41, column: 6, scope: !7)
!76 = !DILocation(line: 42, column: 3, scope: !7)
!77 = !DILocalVariable(name: "Cs", scope: !7, file: !8, line: 42, type: !11)
!78 = !DILocation(line: 42, column: 10, scope: !7)
!79 = !DILocation(line: 43, column: 8, scope: !7)
!80 = !DILocation(line: 43, column: 6, scope: !7)
!81 = !DILocation(line: 44, column: 3, scope: !7)
!82 = !DILocalVariable(name: "Ds", scope: !7, file: !8, line: 44, type: !11)
!83 = !DILocation(line: 44, column: 10, scope: !7)
!84 = !DILocation(line: 45, column: 8, scope: !7)
!85 = !DILocation(line: 45, column: 6, scope: !7)
!86 = !DILocation(line: 46, column: 3, scope: !7)
!87 = !DILocalVariable(name: "tmp", scope: !7, file: !8, line: 46, type: !88)
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 8192, elements: !89)
!89 = !{!90}
!90 = !DISubrange(count: 256)
!91 = !DILocation(line: 46, column: 9, scope: !7)
!92 = !DILocation(line: 48, column: 3, scope: !7)
!93 = !DILocalVariable(name: "i", scope: !7, file: !8, line: 48, type: !45)
!94 = !DILocation(line: 48, column: 7, scope: !7)
!95 = !DILocation(line: 49, column: 3, scope: !7)
!96 = !DILocalVariable(name: "j", scope: !7, file: !8, line: 49, type: !45)
!97 = !DILocation(line: 49, column: 7, scope: !7)
!98 = !DILocation(line: 50, column: 3, scope: !7)
!99 = !DILocalVariable(name: "k", scope: !7, file: !8, line: 50, type: !45)
!100 = !DILocation(line: 50, column: 7, scope: !7)
!101 = !DILocation(line: 53, column: 27, scope: !102)
!102 = distinct !DILexicalBlock(scope: !7, file: !8, line: 53, column: 20)
!103 = !DILocation(line: 53, column: 25, scope: !102)
!104 = !DILocation(line: 53, column: 32, scope: !105)
!105 = distinct !DILexicalBlock(scope: !102, file: !8, line: 53, column: 20)
!106 = !DILocation(line: 53, column: 34, scope: !105)
!107 = !DILocation(line: 53, column: 20, scope: !102)
!108 = !DILocation(line: 53, column: 44, scope: !105)
!109 = !DILocation(line: 55, column: 29, scope: !110)
!110 = distinct !DILexicalBlock(scope: !111, file: !8, line: 55, column: 22)
!111 = distinct !DILexicalBlock(scope: !105, file: !8, line: 53, column: 44)
!112 = !DILocation(line: 55, column: 27, scope: !110)
!113 = !DILocation(line: 55, column: 34, scope: !114)
!114 = distinct !DILexicalBlock(scope: !110, file: !8, line: 55, column: 22)
!115 = !DILocation(line: 55, column: 36, scope: !114)
!116 = !DILocation(line: 55, column: 22, scope: !110)
!117 = !DILocation(line: 57, column: 10, scope: !118)
!118 = distinct !DILexicalBlock(scope: !114, file: !8, line: 55, column: 46)
!119 = !DILocation(line: 57, column: 12, scope: !118)
!120 = !DILocation(line: 57, column: 11, scope: !118)
!121 = !DILocation(line: 57, column: 15, scope: !118)
!122 = !DILocation(line: 57, column: 14, scope: !118)
!123 = !DILocation(line: 57, column: 6, scope: !118)
!124 = !DILocation(line: 57, column: 18, scope: !118)
!125 = !DILocation(line: 58, column: 30, scope: !126)
!126 = distinct !DILexicalBlock(scope: !118, file: !8, line: 58, column: 23)
!127 = !DILocation(line: 58, column: 28, scope: !126)
!128 = !DILocation(line: 58, column: 35, scope: !129)
!129 = distinct !DILexicalBlock(scope: !126, file: !8, line: 58, column: 23)
!130 = !DILocation(line: 58, column: 37, scope: !129)
!131 = !DILocation(line: 58, column: 23, scope: !126)
!132 = !DILocation(line: 60, column: 24, scope: !133)
!133 = distinct !DILexicalBlock(scope: !129, file: !8, line: 58, column: 47)
!134 = !DILocation(line: 60, column: 33, scope: !133)
!135 = !DILocation(line: 60, column: 36, scope: !133)
!136 = !DILocation(line: 60, column: 38, scope: !133)
!137 = !DILocation(line: 60, column: 37, scope: !133)
!138 = !DILocation(line: 60, column: 41, scope: !133)
!139 = !DILocation(line: 60, column: 40, scope: !133)
!140 = !DILocation(line: 60, column: 31, scope: !133)
!141 = !DILocation(line: 60, column: 46, scope: !133)
!142 = !DILocation(line: 60, column: 49, scope: !133)
!143 = !DILocation(line: 60, column: 51, scope: !133)
!144 = !DILocation(line: 60, column: 50, scope: !133)
!145 = !DILocation(line: 60, column: 54, scope: !133)
!146 = !DILocation(line: 60, column: 53, scope: !133)
!147 = !DILocation(line: 60, column: 44, scope: !133)
!148 = !DILocation(line: 60, column: 13, scope: !133)
!149 = !DILocation(line: 60, column: 15, scope: !133)
!150 = !DILocation(line: 60, column: 14, scope: !133)
!151 = !DILocation(line: 60, column: 18, scope: !133)
!152 = !DILocation(line: 60, column: 17, scope: !133)
!153 = !DILocation(line: 60, column: 9, scope: !133)
!154 = !DILocation(line: 60, column: 21, scope: !133)
!155 = !DILocation(line: 61, column: 9, scope: !133)
!156 = !DILocation(line: 58, column: 43, scope: !129)
!157 = !DILocation(line: 58, column: 23, scope: !129)
!158 = distinct !{!158, !131, !159, !160}
!159 = !DILocation(line: 61, column: 9, scope: !126)
!160 = !{!"llvm.loop.name", !"VITIS_LOOP_58_3"}
!161 = !DILocation(line: 62, column: 5, scope: !118)
!162 = !DILocation(line: 55, column: 43, scope: !114)
!163 = !DILocation(line: 55, column: 22, scope: !114)
!164 = distinct !{!164, !116, !165, !166}
!165 = !DILocation(line: 62, column: 5, scope: !110)
!166 = !{!"llvm.loop.name", !"VITIS_LOOP_55_2"}
!167 = !DILocation(line: 63, column: 3, scope: !111)
!168 = !DILocation(line: 53, column: 41, scope: !105)
!169 = !DILocation(line: 53, column: 20, scope: !105)
!170 = distinct !{!170, !107, !171, !172}
!171 = !DILocation(line: 63, column: 3, scope: !102)
!172 = !{!"llvm.loop.name", !"VITIS_LOOP_53_1"}
!173 = !DILocation(line: 65, column: 27, scope: !174)
!174 = distinct !DILexicalBlock(scope: !7, file: !8, line: 65, column: 20)
!175 = !DILocation(line: 65, column: 25, scope: !174)
!176 = !DILocation(line: 65, column: 32, scope: !177)
!177 = distinct !DILexicalBlock(scope: !174, file: !8, line: 65, column: 20)
!178 = !DILocation(line: 65, column: 34, scope: !177)
!179 = !DILocation(line: 65, column: 20, scope: !174)
!180 = !DILocation(line: 65, column: 44, scope: !177)
!181 = !DILocation(line: 67, column: 29, scope: !182)
!182 = distinct !DILexicalBlock(scope: !183, file: !8, line: 67, column: 22)
!183 = distinct !DILexicalBlock(scope: !177, file: !8, line: 65, column: 44)
!184 = !DILocation(line: 67, column: 27, scope: !182)
!185 = !DILocation(line: 67, column: 34, scope: !186)
!186 = distinct !DILexicalBlock(scope: !182, file: !8, line: 67, column: 22)
!187 = !DILocation(line: 67, column: 36, scope: !186)
!188 = !DILocation(line: 67, column: 22, scope: !182)
!189 = !DILocation(line: 69, column: 16, scope: !190)
!190 = distinct !DILexicalBlock(scope: !186, file: !8, line: 67, column: 46)
!191 = !DILocation(line: 69, column: 2, scope: !190)
!192 = !DILocation(line: 69, column: 5, scope: !190)
!193 = !DILocation(line: 69, column: 7, scope: !190)
!194 = !DILocation(line: 69, column: 6, scope: !190)
!195 = !DILocation(line: 69, column: 10, scope: !190)
!196 = !DILocation(line: 69, column: 9, scope: !190)
!197 = !DILocation(line: 69, column: 13, scope: !190)
!198 = !DILocation(line: 70, column: 26, scope: !199)
!199 = distinct !DILexicalBlock(scope: !190, file: !8, line: 70, column: 19)
!200 = !DILocation(line: 70, column: 24, scope: !199)
!201 = !DILocation(line: 70, column: 31, scope: !202)
!202 = distinct !DILexicalBlock(scope: !199, file: !8, line: 70, column: 19)
!203 = !DILocation(line: 70, column: 33, scope: !202)
!204 = !DILocation(line: 70, column: 19, scope: !199)
!205 = !DILocation(line: 72, column: 28, scope: !206)
!206 = distinct !DILexicalBlock(scope: !202, file: !8, line: 70, column: 43)
!207 = !DILocation(line: 72, column: 30, scope: !206)
!208 = !DILocation(line: 72, column: 29, scope: !206)
!209 = !DILocation(line: 72, column: 33, scope: !206)
!210 = !DILocation(line: 72, column: 32, scope: !206)
!211 = !DILocation(line: 72, column: 24, scope: !206)
!212 = !DILocation(line: 72, column: 38, scope: !206)
!213 = !DILocation(line: 72, column: 41, scope: !206)
!214 = !DILocation(line: 72, column: 43, scope: !206)
!215 = !DILocation(line: 72, column: 42, scope: !206)
!216 = !DILocation(line: 72, column: 46, scope: !206)
!217 = !DILocation(line: 72, column: 45, scope: !206)
!218 = !DILocation(line: 72, column: 36, scope: !206)
!219 = !DILocation(line: 72, column: 10, scope: !206)
!220 = !DILocation(line: 72, column: 13, scope: !206)
!221 = !DILocation(line: 72, column: 15, scope: !206)
!222 = !DILocation(line: 72, column: 14, scope: !206)
!223 = !DILocation(line: 72, column: 18, scope: !206)
!224 = !DILocation(line: 72, column: 17, scope: !206)
!225 = !DILocation(line: 72, column: 21, scope: !206)
!226 = !DILocation(line: 73, column: 9, scope: !206)
!227 = !DILocation(line: 70, column: 39, scope: !202)
!228 = !DILocation(line: 70, column: 19, scope: !202)
!229 = distinct !{!229, !204, !230, !231}
!230 = !DILocation(line: 73, column: 9, scope: !199)
!231 = !{!"llvm.loop.name", !"VITIS_LOOP_70_6"}
!232 = !DILocation(line: 74, column: 5, scope: !190)
!233 = !DILocation(line: 67, column: 43, scope: !186)
!234 = !DILocation(line: 67, column: 22, scope: !186)
!235 = distinct !{!235, !188, !236, !237}
!236 = !DILocation(line: 74, column: 5, scope: !182)
!237 = !{!"llvm.loop.name", !"VITIS_LOOP_67_5"}
!238 = !DILocation(line: 75, column: 3, scope: !183)
!239 = !DILocation(line: 65, column: 41, scope: !177)
!240 = !DILocation(line: 65, column: 20, scope: !177)
!241 = distinct !{!241, !179, !242, !243}
!242 = !DILocation(line: 75, column: 3, scope: !174)
!243 = !{!"llvm.loop.name", !"VITIS_LOOP_65_4"}
!244 = !DILocation(line: 77, column: 1, scope: !7)
!245 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!246 = !{i32 0, i1 false, i32 0, i1 false}
!247 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
