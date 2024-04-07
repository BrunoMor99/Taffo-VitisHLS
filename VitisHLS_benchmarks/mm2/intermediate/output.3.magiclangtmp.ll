; ModuleID = '/home/bruno/Desktop/benchmarks/mm2/intermediate/output.2.magiclangtmp.ll'
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
  %As = alloca float*, align 8, !taffo.info !29, !taffo.target !31
  %Bs = alloca float*, align 8, !taffo.info !29, !taffo.target !32
  %Cs = alloca float*, align 8, !taffo.info !29, !taffo.target !33
  %Ds = alloca float*, align 8, !taffo.info !29, !taffo.target !34
  %tmp = alloca [256 x float], align 4, !taffo.info !1
  %i = alloca i32, align 4, !taffo.info !35
  %j = alloca i32, align 4, !taffo.info !35
  %k = alloca i32, align 4, !taffo.info !35
  store float* %A, float** %A.addr, align 8
  call void @llvm.dbg.declare(metadata float** %A.addr, metadata !37, metadata !DIExpression()), !dbg !38
  store float* %B, float** %B.addr, align 8
  call void @llvm.dbg.declare(metadata float** %B.addr, metadata !39, metadata !DIExpression()), !dbg !40
  store float* %C, float** %C.addr, align 8
  call void @llvm.dbg.declare(metadata float** %C.addr, metadata !41, metadata !DIExpression()), !dbg !42
  store float* %D, float** %D.addr, align 8
  call void @llvm.dbg.declare(metadata float** %D.addr, metadata !43, metadata !DIExpression()), !dbg !44
  store float %alpha, float* %alpha.addr, align 4
  call void @llvm.dbg.declare(metadata float* %alpha.addr, metadata !45, metadata !DIExpression()), !dbg !46
  store float %beta, float* %beta.addr, align 4
  call void @llvm.dbg.declare(metadata float* %beta.addr, metadata !47, metadata !DIExpression()), !dbg !48
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %A, [0 x i8] zeroinitializer, i64 256, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !49
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %B, [0 x i8] zeroinitializer, i64 256, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !50
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %C, [0 x i8] zeroinitializer, i64 256, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !51
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %D, [0 x i8] zeroinitializer, i64 256, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !52
  %0 = bitcast i32* %ni to i8*, !dbg !53
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !53
  call void @llvm.dbg.declare(metadata i32* %ni, metadata !54, metadata !DIExpression()), !dbg !56
  store i32 16, i32* %ni, align 4, !dbg !56
  %1 = bitcast i32* %nj to i8*, !dbg !57
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !57
  call void @llvm.dbg.declare(metadata i32* %nj, metadata !58, metadata !DIExpression()), !dbg !59
  store i32 16, i32* %nj, align 4, !dbg !59
  %2 = bitcast i32* %nk to i8*, !dbg !60
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !60
  call void @llvm.dbg.declare(metadata i32* %nk, metadata !61, metadata !DIExpression()), !dbg !62
  store i32 16, i32* %nk, align 4, !dbg !62
  %3 = bitcast i32* %nl to i8*, !dbg !63
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !63
  call void @llvm.dbg.declare(metadata i32* %nl, metadata !64, metadata !DIExpression()), !dbg !65
  store i32 16, i32* %nl, align 4, !dbg !65
  %4 = bitcast float* %alphas to i8*, !dbg !66, !taffo.info !27
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !66, !taffo.info !67
  call void @llvm.dbg.declare(metadata float* %alphas, metadata !68, metadata !DIExpression()), !dbg !69
  %alphas1 = bitcast float* %alphas to i8*, !dbg !66, !taffo.info !27
  %5 = load float, float* %alpha.addr, align 4, !dbg !70
  store float %5, float* %alphas, align 4, !dbg !71, !taffo.info !67
  %6 = bitcast float* %betas to i8*, !dbg !72, !taffo.info !27
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !72, !taffo.info !67
  call void @llvm.dbg.declare(metadata float* %betas, metadata !73, metadata !DIExpression()), !dbg !74
  %betas2 = bitcast float* %betas to i8*, !dbg !72, !taffo.info !27
  %7 = load float, float* %beta.addr, align 4, !dbg !75
  store float %7, float* %betas, align 4, !dbg !76, !taffo.info !67
  %8 = bitcast float** %As to i8*, !dbg !77, !taffo.info !29, !taffo.target !31
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %8) #4, !dbg !77, !taffo.info !67, !taffo.target !31
  call void @llvm.dbg.declare(metadata float** %As, metadata !78, metadata !DIExpression()), !dbg !79
  %As3 = bitcast float** %As to i8*, !dbg !77, !taffo.info !29, !taffo.target !31
  %9 = load float*, float** %A.addr, align 8, !dbg !80
  store float* %9, float** %As, align 8, !dbg !81, !taffo.info !67, !taffo.target !31
  %10 = bitcast float** %Bs to i8*, !dbg !82, !taffo.info !29, !taffo.target !32
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %10) #4, !dbg !82, !taffo.info !67, !taffo.target !32
  call void @llvm.dbg.declare(metadata float** %Bs, metadata !83, metadata !DIExpression()), !dbg !84
  %Bs4 = bitcast float** %Bs to i8*, !dbg !82, !taffo.info !29, !taffo.target !32
  %11 = load float*, float** %B.addr, align 8, !dbg !85
  store float* %11, float** %Bs, align 8, !dbg !86, !taffo.info !67, !taffo.target !32
  %12 = bitcast float** %Cs to i8*, !dbg !87, !taffo.info !29, !taffo.target !33
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %12) #4, !dbg !87, !taffo.info !67, !taffo.target !33
  call void @llvm.dbg.declare(metadata float** %Cs, metadata !88, metadata !DIExpression()), !dbg !89
  %Cs5 = bitcast float** %Cs to i8*, !dbg !87, !taffo.info !29, !taffo.target !33
  %13 = load float*, float** %C.addr, align 8, !dbg !90
  store float* %13, float** %Cs, align 8, !dbg !91, !taffo.info !67, !taffo.target !33
  %14 = bitcast float** %Ds to i8*, !dbg !92, !taffo.info !29, !taffo.target !34
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %14) #4, !dbg !92, !taffo.info !67, !taffo.target !34
  call void @llvm.dbg.declare(metadata float** %Ds, metadata !93, metadata !DIExpression()), !dbg !94
  %Ds6 = bitcast float** %Ds to i8*, !dbg !92, !taffo.info !29, !taffo.target !34
  %15 = load float*, float** %D.addr, align 8, !dbg !95, !taffo.info !1
  store float* %15, float** %Ds, align 8, !dbg !96, !taffo.info !67, !taffo.target !34
  %16 = bitcast [256 x float]* %tmp to i8*, !dbg !97
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* %16) #4, !dbg !97
  call void @llvm.dbg.declare(metadata [256 x float]* %tmp, metadata !98, metadata !DIExpression()), !dbg !102
  %tmp7 = bitcast [256 x float]* %tmp to i8*, !dbg !97
  call void @llvm.var.annotation(i8* %tmp7, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 46), !dbg !97
  %17 = bitcast i32* %i to i8*, !dbg !103, !taffo.info !67
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #4, !dbg !103, !taffo.info !67
  call void @llvm.dbg.declare(metadata i32* %i, metadata !104, metadata !DIExpression()), !dbg !105
  %i8 = bitcast i32* %i to i8*, !dbg !103, !taffo.info !67
  %18 = bitcast i32* %j to i8*, !dbg !106, !taffo.info !67
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #4, !dbg !106, !taffo.info !67
  call void @llvm.dbg.declare(metadata i32* %j, metadata !107, metadata !DIExpression()), !dbg !108
  %j9 = bitcast i32* %j to i8*, !dbg !106, !taffo.info !67
  %19 = bitcast i32* %k to i8*, !dbg !109, !taffo.info !67
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #4, !dbg !109, !taffo.info !67
  call void @llvm.dbg.declare(metadata i32* %k, metadata !110, metadata !DIExpression()), !dbg !111
  %k10 = bitcast i32* %k to i8*, !dbg !109, !taffo.info !67
  br label %VITIS_LOOP_53_1, !dbg !109

VITIS_LOOP_53_1:                                  ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !112, !taffo.info !67
  br label %for.cond, !dbg !114

for.cond:                                         ; preds = %for.inc35, %VITIS_LOOP_53_1
  %20 = load i32, i32* %i, align 4, !dbg !115, !taffo.info !35
  %cmp = icmp slt i32 %20, 16, !dbg !117, !taffo.info !118
  br i1 %cmp, label %for.body, label %for.end37, !dbg !120, !taffo.info !67

for.body:                                         ; preds = %for.cond
  br label %VITIS_LOOP_55_2, !dbg !121

VITIS_LOOP_55_2:                                  ; preds = %for.body
  store i32 0, i32* %j, align 4, !dbg !122, !taffo.info !67
  br label %for.cond11, !dbg !125

for.cond11:                                       ; preds = %for.inc32, %VITIS_LOOP_55_2
  %21 = load i32, i32* %j, align 4, !dbg !126, !taffo.info !35
  %cmp12 = icmp slt i32 %21, 16, !dbg !128, !taffo.info !118
  br i1 %cmp12, label %for.body13, label %for.end34, !dbg !129, !taffo.info !67

for.body13:                                       ; preds = %for.cond11
  %22 = load i32, i32* %i, align 4, !dbg !130, !taffo.info !35
  %23 = load i32, i32* %nj, align 4, !dbg !132, !taffo.info !25
  %mul = mul nsw i32 %22, %23, !dbg !133, !taffo.info !134
  %24 = load i32, i32* %j, align 4, !dbg !135, !taffo.info !35
  %add = add nsw i32 %mul, %24, !dbg !136, !taffo.info !134
  %idxprom = sext i32 %add to i64, !dbg !137, !taffo.info !134
  %arrayidx = getelementptr inbounds [256 x float], [256 x float]* %tmp, i64 0, i64 %idxprom, !dbg !137, !taffo.info !134
  store float 0.000000e+00, float* %arrayidx, align 4, !dbg !138, !taffo.info !67
  br label %VITIS_LOOP_58_3, !dbg !137

VITIS_LOOP_58_3:                                  ; preds = %for.body13
  store i32 0, i32* %k, align 4, !dbg !139, !taffo.info !67
  br label %for.cond14, !dbg !141

for.cond14:                                       ; preds = %for.inc, %VITIS_LOOP_58_3
  %25 = load i32, i32* %k, align 4, !dbg !142, !taffo.info !35
  %cmp15 = icmp slt i32 %25, 16, !dbg !144, !taffo.info !118
  br i1 %cmp15, label %for.body16, label %for.end, !dbg !145, !taffo.info !67

for.body16:                                       ; preds = %for.cond14
  %26 = load float, float* %alphas, align 4, !dbg !146, !taffo.info !27
  %27 = load float*, float** %As, align 8, !dbg !148, !taffo.info !29, !taffo.target !31
  %28 = load i32, i32* %i, align 4, !dbg !149, !taffo.info !35
  %29 = load i32, i32* %nk, align 4, !dbg !150, !taffo.info !25
  %mul17 = mul nsw i32 %28, %29, !dbg !151, !taffo.info !134
  %30 = load i32, i32* %k, align 4, !dbg !152, !taffo.info !35
  %add18 = add nsw i32 %mul17, %30, !dbg !153, !taffo.info !134
  %idxprom19 = sext i32 %add18 to i64, !dbg !148, !taffo.info !134
  %arrayidx20 = getelementptr inbounds float, float* %27, i64 %idxprom19, !dbg !148, !taffo.info !29, !taffo.target !31
  %31 = load float, float* %arrayidx20, align 4, !dbg !148, !taffo.info !29, !taffo.target !31
  %mul21 = fmul float %26, %31, !dbg !154, !taffo.info !134
  %32 = load float*, float** %Bs, align 8, !dbg !155, !taffo.info !29, !taffo.target !32
  %33 = load i32, i32* %k, align 4, !dbg !156, !taffo.info !35
  %34 = load i32, i32* %nj, align 4, !dbg !157, !taffo.info !25
  %mul22 = mul nsw i32 %33, %34, !dbg !158, !taffo.info !134
  %35 = load i32, i32* %j, align 4, !dbg !159, !taffo.info !35
  %add23 = add nsw i32 %mul22, %35, !dbg !160, !taffo.info !134
  %idxprom24 = sext i32 %add23 to i64, !dbg !155, !taffo.info !134
  %arrayidx25 = getelementptr inbounds float, float* %32, i64 %idxprom24, !dbg !155, !taffo.info !29, !taffo.target !32
  %36 = load float, float* %arrayidx25, align 4, !dbg !155, !taffo.info !29, !taffo.target !32
  %mul26 = fmul float %mul21, %36, !dbg !161, !taffo.info !134
  %37 = load i32, i32* %i, align 4, !dbg !162, !taffo.info !35
  %38 = load i32, i32* %nj, align 4, !dbg !163, !taffo.info !25
  %mul27 = mul nsw i32 %37, %38, !dbg !164, !taffo.info !134
  %39 = load i32, i32* %j, align 4, !dbg !165, !taffo.info !35
  %add28 = add nsw i32 %mul27, %39, !dbg !166, !taffo.info !134
  %idxprom29 = sext i32 %add28 to i64, !dbg !167, !taffo.info !134
  %arrayidx30 = getelementptr inbounds [256 x float], [256 x float]* %tmp, i64 0, i64 %idxprom29, !dbg !167, !taffo.info !134
  %40 = load float, float* %arrayidx30, align 4, !dbg !168, !taffo.info !134
  %add31 = fadd float %40, %mul26, !dbg !168, !taffo.info !134
  store float %add31, float* %arrayidx30, align 4, !dbg !168, !taffo.info !67
  br label %for.inc, !dbg !169

for.inc:                                          ; preds = %for.body16
  %41 = load i32, i32* %k, align 4, !dbg !170, !taffo.info !35
  %inc = add nsw i32 %41, 1, !dbg !170, !taffo.info !118
  store i32 %inc, i32* %k, align 4, !dbg !170, !taffo.info !67
  br label %for.cond14, !dbg !171, !llvm.loop !172

for.end:                                          ; preds = %for.cond14
  br label %for.inc32, !dbg !175

for.inc32:                                        ; preds = %for.end
  %42 = load i32, i32* %j, align 4, !dbg !176, !taffo.info !35
  %inc33 = add nsw i32 %42, 1, !dbg !176, !taffo.info !118
  store i32 %inc33, i32* %j, align 4, !dbg !176, !taffo.info !67
  br label %for.cond11, !dbg !177, !llvm.loop !178

for.end34:                                        ; preds = %for.cond11
  br label %for.inc35, !dbg !181

for.inc35:                                        ; preds = %for.end34
  %43 = load i32, i32* %i, align 4, !dbg !182, !taffo.info !35
  %inc36 = add nsw i32 %43, 1, !dbg !182, !taffo.info !118
  store i32 %inc36, i32* %i, align 4, !dbg !182, !taffo.info !67
  br label %for.cond, !dbg !183, !llvm.loop !184

for.end37:                                        ; preds = %for.cond
  br label %VITIS_LOOP_65_4, !dbg !185

VITIS_LOOP_65_4:                                  ; preds = %for.end37
  store i32 0, i32* %i, align 4, !dbg !187, !taffo.info !67
  br label %for.cond38, !dbg !189

for.cond38:                                       ; preds = %for.inc72, %VITIS_LOOP_65_4
  %44 = load i32, i32* %i, align 4, !dbg !190, !taffo.info !35
  %cmp39 = icmp slt i32 %44, 16, !dbg !192, !taffo.info !118
  br i1 %cmp39, label %for.body40, label %for.end74, !dbg !193, !taffo.info !67

for.body40:                                       ; preds = %for.cond38
  br label %VITIS_LOOP_67_5, !dbg !194

VITIS_LOOP_67_5:                                  ; preds = %for.body40
  store i32 0, i32* %j, align 4, !dbg !195, !taffo.info !67
  br label %for.cond41, !dbg !198

for.cond41:                                       ; preds = %for.inc69, %VITIS_LOOP_67_5
  %45 = load i32, i32* %j, align 4, !dbg !199, !taffo.info !35
  %cmp42 = icmp slt i32 %45, 16, !dbg !201, !taffo.info !118
  br i1 %cmp42, label %for.body43, label %for.end71, !dbg !202, !taffo.info !67

for.body43:                                       ; preds = %for.cond41
  %46 = load float, float* %betas, align 4, !dbg !203, !taffo.info !27
  %47 = load float*, float** %Ds, align 8, !dbg !205, !taffo.info !29, !taffo.target !34
  %48 = load i32, i32* %i, align 4, !dbg !206, !taffo.info !35
  %49 = load i32, i32* %nl, align 4, !dbg !207, !taffo.info !25
  %mul44 = mul nsw i32 %48, %49, !dbg !208, !taffo.info !209
  %50 = load i32, i32* %j, align 4, !dbg !211, !taffo.info !35
  %add45 = add nsw i32 %mul44, %50, !dbg !212, !taffo.info !213
  %idxprom46 = sext i32 %add45 to i64, !dbg !205, !taffo.info !213
  %arrayidx47 = getelementptr inbounds float, float* %47, i64 %idxprom46, !dbg !205, !taffo.info !29, !taffo.target !34
  %51 = load float, float* %arrayidx47, align 4, !dbg !215, !taffo.info !29, !taffo.target !34
  %mul48 = fmul float %51, %46, !dbg !215, !taffo.info !134
  store float %mul48, float* %arrayidx47, align 4, !dbg !215, !taffo.info !67
  br label %VITIS_LOOP_70_6, !dbg !205

VITIS_LOOP_70_6:                                  ; preds = %for.body43
  store i32 0, i32* %k, align 4, !dbg !216, !taffo.info !67
  br label %for.cond49, !dbg !218

for.cond49:                                       ; preds = %for.inc66, %VITIS_LOOP_70_6
  %52 = load i32, i32* %k, align 4, !dbg !219, !taffo.info !35
  %cmp50 = icmp slt i32 %52, 16, !dbg !221, !taffo.info !118
  br i1 %cmp50, label %for.body51, label %for.end68, !dbg !222, !taffo.info !67

for.body51:                                       ; preds = %for.cond49
  %53 = load i32, i32* %i, align 4, !dbg !223, !taffo.info !35
  %54 = load i32, i32* %nj, align 4, !dbg !225, !taffo.info !25
  %mul52 = mul nsw i32 %53, %54, !dbg !226, !taffo.info !209
  %55 = load i32, i32* %k, align 4, !dbg !227, !taffo.info !35
  %add53 = add nsw i32 %mul52, %55, !dbg !228, !taffo.info !213
  %idxprom54 = sext i32 %add53 to i64, !dbg !229, !taffo.info !213
  %arrayidx55 = getelementptr inbounds [256 x float], [256 x float]* %tmp, i64 0, i64 %idxprom54, !dbg !229, !taffo.info !134
  %56 = load float, float* %arrayidx55, align 4, !dbg !229, !taffo.info !134
  %57 = load float*, float** %Cs, align 8, !dbg !230, !taffo.info !29, !taffo.target !33
  %58 = load i32, i32* %k, align 4, !dbg !231, !taffo.info !35
  %59 = load i32, i32* %nl, align 4, !dbg !232, !taffo.info !25
  %mul56 = mul nsw i32 %58, %59, !dbg !233, !taffo.info !234
  %60 = load i32, i32* %j, align 4, !dbg !236, !taffo.info !35
  %add57 = add nsw i32 %mul56, %60, !dbg !237, !taffo.info !238
  %idxprom58 = sext i32 %add57 to i64, !dbg !230, !taffo.info !238
  %arrayidx59 = getelementptr inbounds float, float* %57, i64 %idxprom58, !dbg !230, !taffo.info !29, !taffo.target !33
  %61 = load float, float* %arrayidx59, align 4, !dbg !230, !taffo.info !29, !taffo.target !33
  %mul60 = fmul float %56, %61, !dbg !240, !taffo.info !134, !taffo.target !33
  %62 = load float*, float** %Ds, align 8, !dbg !241, !taffo.info !29, !taffo.target !34
  %63 = load i32, i32* %i, align 4, !dbg !242, !taffo.info !35
  %64 = load i32, i32* %nl, align 4, !dbg !243, !taffo.info !25
  %mul61 = mul nsw i32 %63, %64, !dbg !244, !taffo.info !209
  %65 = load i32, i32* %j, align 4, !dbg !245, !taffo.info !35
  %add62 = add nsw i32 %mul61, %65, !dbg !246, !taffo.info !247
  %idxprom63 = sext i32 %add62 to i64, !dbg !241, !taffo.info !247
  %arrayidx64 = getelementptr inbounds float, float* %62, i64 %idxprom63, !dbg !241, !taffo.info !29, !taffo.target !34
  %66 = load float, float* %arrayidx64, align 4, !dbg !249, !taffo.info !29, !taffo.target !34
  %add65 = fadd float %66, %mul60, !dbg !249, !taffo.info !134, !taffo.target !34
  store float %add65, float* %arrayidx64, align 4, !dbg !249, !taffo.info !67, !taffo.target !34
  br label %for.inc66, !dbg !250

for.inc66:                                        ; preds = %for.body51
  %67 = load i32, i32* %k, align 4, !dbg !251, !taffo.info !35
  %inc67 = add nsw i32 %67, 1, !dbg !251, !taffo.info !252
  store i32 %inc67, i32* %k, align 4, !dbg !251, !taffo.info !67
  br label %for.cond49, !dbg !254, !llvm.loop !255

for.end68:                                        ; preds = %for.cond49
  br label %for.inc69, !dbg !258

for.inc69:                                        ; preds = %for.end68
  %68 = load i32, i32* %j, align 4, !dbg !259, !taffo.info !35
  %inc70 = add nsw i32 %68, 1, !dbg !259, !taffo.info !252
  store i32 %inc70, i32* %j, align 4, !dbg !259, !taffo.info !67
  br label %for.cond41, !dbg !260, !llvm.loop !261

for.end71:                                        ; preds = %for.cond41
  br label %for.inc72, !dbg !264

for.inc72:                                        ; preds = %for.end71
  %69 = load i32, i32* %i, align 4, !dbg !265, !taffo.info !35
  %inc73 = add nsw i32 %69, 1, !dbg !265, !taffo.info !252
  store i32 %inc73, i32* %i, align 4, !dbg !265, !taffo.info !67
  br label %for.cond38, !dbg !266, !llvm.loop !267

for.end74:                                        ; preds = %for.cond38
  %70 = bitcast i32* %k to i8*, !dbg !270, !taffo.info !271
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %70) #4, !dbg !270, !taffo.info !67
  %71 = bitcast i32* %j to i8*, !dbg !270, !taffo.info !271
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %71) #4, !dbg !270, !taffo.info !67
  %72 = bitcast i32* %i to i8*, !dbg !270, !taffo.info !35
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %72) #4, !dbg !270, !taffo.info !67
  %73 = bitcast [256 x float]* %tmp to i8*, !dbg !270, !taffo.info !1
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* %73) #4, !dbg !270
  %74 = bitcast float** %Ds to i8*, !dbg !270, !taffo.info !29, !taffo.target !34
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %74) #4, !dbg !270, !taffo.info !67, !taffo.target !34
  %75 = bitcast float** %Cs to i8*, !dbg !270, !taffo.info !29, !taffo.target !33
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %75) #4, !dbg !270, !taffo.info !67, !taffo.target !33
  %76 = bitcast float** %Bs to i8*, !dbg !270, !taffo.info !29, !taffo.target !32
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %76) #4, !dbg !270, !taffo.info !67, !taffo.target !32
  %77 = bitcast float** %As to i8*, !dbg !270, !taffo.info !29, !taffo.target !31
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %77) #4, !dbg !270, !taffo.info !67, !taffo.target !31
  %78 = bitcast float* %betas to i8*, !dbg !270, !taffo.info !27
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %78) #4, !dbg !270, !taffo.info !67
  %79 = bitcast float* %alphas to i8*, !dbg !270, !taffo.info !27
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %79) #4, !dbg !270, !taffo.info !67
  %80 = bitcast i32* %nl to i8*, !dbg !270, !taffo.info !25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %80) #4, !dbg !270
  %81 = bitcast i32* %nk to i8*, !dbg !270, !taffo.info !25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %81) #4, !dbg !270
  %82 = bitcast i32* %nj to i8*, !dbg !270, !taffo.info !25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %82) #4, !dbg !270
  %83 = bitcast i32* %ni to i8*, !dbg !270, !taffo.info !25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %83) #4, !dbg !270
  ret void, !dbg !270
}

; Function Attrs: nounwind readnone speculatable
declare !taffo.funinfo !273 void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: inaccessiblememonly nounwind
declare !taffo.funinfo !9 void @llvm.sideeffect() #2

; Function Attrs: argmemonly nounwind
declare !taffo.funinfo !274 void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare !taffo.funinfo !275 void @llvm.var.annotation(i8*, i8*, i8*, i32) #4

; Function Attrs: argmemonly nounwind
declare !taffo.funinfo !274 void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #3

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
!27 = !{i1 false, !28, i1 false, i1 true}
!28 = !{double 0.000000e+00, double 5.000000e+00}
!29 = !{i1 false, !30, i1 false, i1 true}
!30 = !{double -1.638400e+04, double 1.638400e+04}
!31 = !{!"A"}
!32 = !{!"B"}
!33 = !{!"C"}
!34 = !{!"D"}
!35 = !{i1 false, !36, i1 false, i1 true}
!36 = !{double 0.000000e+00, double 2.000000e+00}
!37 = !DILocalVariable(name: "A", arg: 1, scope: !14, file: !15, line: 23, type: !18)
!38 = !DILocation(line: 23, column: 55, scope: !14)
!39 = !DILocalVariable(name: "B", arg: 2, scope: !14, file: !15, line: 23, type: !18)
!40 = !DILocation(line: 23, column: 65, scope: !14)
!41 = !DILocalVariable(name: "C", arg: 3, scope: !14, file: !15, line: 23, type: !18)
!42 = !DILocation(line: 23, column: 75, scope: !14)
!43 = !DILocalVariable(name: "D", arg: 4, scope: !14, file: !15, line: 23, type: !18)
!44 = !DILocation(line: 23, column: 85, scope: !14)
!45 = !DILocalVariable(name: "alpha", arg: 5, scope: !14, file: !15, line: 23, type: !19)
!46 = !DILocation(line: 23, column: 94, scope: !14)
!47 = !DILocalVariable(name: "beta", arg: 6, scope: !14, file: !15, line: 23, type: !19)
!48 = !DILocation(line: 23, column: 107, scope: !14)
!49 = !DILocation(line: 25, column: 9, scope: !14)
!50 = !DILocation(line: 26, column: 9, scope: !14)
!51 = !DILocation(line: 27, column: 9, scope: !14)
!52 = !DILocation(line: 28, column: 9, scope: !14)
!53 = !DILocation(line: 29, column: 2, scope: !14)
!54 = !DILocalVariable(name: "ni", scope: !14, file: !15, line: 29, type: !55)
!55 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!56 = !DILocation(line: 29, column: 6, scope: !14)
!57 = !DILocation(line: 30, column: 3, scope: !14)
!58 = !DILocalVariable(name: "nj", scope: !14, file: !15, line: 30, type: !55)
!59 = !DILocation(line: 30, column: 7, scope: !14)
!60 = !DILocation(line: 31, column: 3, scope: !14)
!61 = !DILocalVariable(name: "nk", scope: !14, file: !15, line: 31, type: !55)
!62 = !DILocation(line: 31, column: 7, scope: !14)
!63 = !DILocation(line: 32, column: 3, scope: !14)
!64 = !DILocalVariable(name: "nl", scope: !14, file: !15, line: 32, type: !55)
!65 = !DILocation(line: 32, column: 7, scope: !14)
!66 = !DILocation(line: 33, column: 3, scope: !14)
!67 = !{i1 false, i1 false, i1 false, i1 true}
!68 = !DILocalVariable(name: "alphas", scope: !14, file: !15, line: 33, type: !19)
!69 = !DILocation(line: 33, column: 9, scope: !14)
!70 = !DILocation(line: 34, column: 12, scope: !14)
!71 = !DILocation(line: 34, column: 10, scope: !14)
!72 = !DILocation(line: 35, column: 3, scope: !14)
!73 = !DILocalVariable(name: "betas", scope: !14, file: !15, line: 35, type: !19)
!74 = !DILocation(line: 35, column: 9, scope: !14)
!75 = !DILocation(line: 36, column: 9, scope: !14)
!76 = !DILocation(line: 36, column: 8, scope: !14)
!77 = !DILocation(line: 38, column: 3, scope: !14)
!78 = !DILocalVariable(name: "As", scope: !14, file: !15, line: 38, type: !18)
!79 = !DILocation(line: 38, column: 10, scope: !14)
!80 = !DILocation(line: 39, column: 8, scope: !14)
!81 = !DILocation(line: 39, column: 6, scope: !14)
!82 = !DILocation(line: 40, column: 3, scope: !14)
!83 = !DILocalVariable(name: "Bs", scope: !14, file: !15, line: 40, type: !18)
!84 = !DILocation(line: 40, column: 10, scope: !14)
!85 = !DILocation(line: 41, column: 8, scope: !14)
!86 = !DILocation(line: 41, column: 6, scope: !14)
!87 = !DILocation(line: 42, column: 3, scope: !14)
!88 = !DILocalVariable(name: "Cs", scope: !14, file: !15, line: 42, type: !18)
!89 = !DILocation(line: 42, column: 10, scope: !14)
!90 = !DILocation(line: 43, column: 8, scope: !14)
!91 = !DILocation(line: 43, column: 6, scope: !14)
!92 = !DILocation(line: 44, column: 3, scope: !14)
!93 = !DILocalVariable(name: "Ds", scope: !14, file: !15, line: 44, type: !18)
!94 = !DILocation(line: 44, column: 10, scope: !14)
!95 = !DILocation(line: 45, column: 8, scope: !14)
!96 = !DILocation(line: 45, column: 6, scope: !14)
!97 = !DILocation(line: 46, column: 3, scope: !14)
!98 = !DILocalVariable(name: "tmp", scope: !14, file: !15, line: 46, type: !99)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 8192, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 256)
!102 = !DILocation(line: 46, column: 9, scope: !14)
!103 = !DILocation(line: 48, column: 3, scope: !14)
!104 = !DILocalVariable(name: "i", scope: !14, file: !15, line: 48, type: !55)
!105 = !DILocation(line: 48, column: 7, scope: !14)
!106 = !DILocation(line: 49, column: 3, scope: !14)
!107 = !DILocalVariable(name: "j", scope: !14, file: !15, line: 49, type: !55)
!108 = !DILocation(line: 49, column: 7, scope: !14)
!109 = !DILocation(line: 50, column: 3, scope: !14)
!110 = !DILocalVariable(name: "k", scope: !14, file: !15, line: 50, type: !55)
!111 = !DILocation(line: 50, column: 7, scope: !14)
!112 = !DILocation(line: 53, column: 27, scope: !113)
!113 = distinct !DILexicalBlock(scope: !14, file: !15, line: 53, column: 20)
!114 = !DILocation(line: 53, column: 25, scope: !113)
!115 = !DILocation(line: 53, column: 32, scope: !116)
!116 = distinct !DILexicalBlock(scope: !113, file: !15, line: 53, column: 20)
!117 = !DILocation(line: 53, column: 34, scope: !116)
!118 = !{i1 false, !119, i1 false, i1 true}
!119 = !{double 1.000000e+00, double 1.000000e+00}
!120 = !DILocation(line: 53, column: 20, scope: !113)
!121 = !DILocation(line: 53, column: 44, scope: !116)
!122 = !DILocation(line: 55, column: 29, scope: !123)
!123 = distinct !DILexicalBlock(scope: !124, file: !15, line: 55, column: 22)
!124 = distinct !DILexicalBlock(scope: !116, file: !15, line: 53, column: 44)
!125 = !DILocation(line: 55, column: 27, scope: !123)
!126 = !DILocation(line: 55, column: 34, scope: !127)
!127 = distinct !DILexicalBlock(scope: !123, file: !15, line: 55, column: 22)
!128 = !DILocation(line: 55, column: 36, scope: !127)
!129 = !DILocation(line: 55, column: 22, scope: !123)
!130 = !DILocation(line: 57, column: 10, scope: !131)
!131 = distinct !DILexicalBlock(scope: !127, file: !15, line: 55, column: 46)
!132 = !DILocation(line: 57, column: 12, scope: !131)
!133 = !DILocation(line: 57, column: 11, scope: !131)
!134 = !{i1 false, !2, i1 false, i1 true}
!135 = !DILocation(line: 57, column: 15, scope: !131)
!136 = !DILocation(line: 57, column: 14, scope: !131)
!137 = !DILocation(line: 57, column: 6, scope: !131)
!138 = !DILocation(line: 57, column: 18, scope: !131)
!139 = !DILocation(line: 58, column: 30, scope: !140)
!140 = distinct !DILexicalBlock(scope: !131, file: !15, line: 58, column: 23)
!141 = !DILocation(line: 58, column: 28, scope: !140)
!142 = !DILocation(line: 58, column: 35, scope: !143)
!143 = distinct !DILexicalBlock(scope: !140, file: !15, line: 58, column: 23)
!144 = !DILocation(line: 58, column: 37, scope: !143)
!145 = !DILocation(line: 58, column: 23, scope: !140)
!146 = !DILocation(line: 60, column: 24, scope: !147)
!147 = distinct !DILexicalBlock(scope: !143, file: !15, line: 58, column: 47)
!148 = !DILocation(line: 60, column: 33, scope: !147)
!149 = !DILocation(line: 60, column: 36, scope: !147)
!150 = !DILocation(line: 60, column: 38, scope: !147)
!151 = !DILocation(line: 60, column: 37, scope: !147)
!152 = !DILocation(line: 60, column: 41, scope: !147)
!153 = !DILocation(line: 60, column: 40, scope: !147)
!154 = !DILocation(line: 60, column: 31, scope: !147)
!155 = !DILocation(line: 60, column: 46, scope: !147)
!156 = !DILocation(line: 60, column: 49, scope: !147)
!157 = !DILocation(line: 60, column: 51, scope: !147)
!158 = !DILocation(line: 60, column: 50, scope: !147)
!159 = !DILocation(line: 60, column: 54, scope: !147)
!160 = !DILocation(line: 60, column: 53, scope: !147)
!161 = !DILocation(line: 60, column: 44, scope: !147)
!162 = !DILocation(line: 60, column: 13, scope: !147)
!163 = !DILocation(line: 60, column: 15, scope: !147)
!164 = !DILocation(line: 60, column: 14, scope: !147)
!165 = !DILocation(line: 60, column: 18, scope: !147)
!166 = !DILocation(line: 60, column: 17, scope: !147)
!167 = !DILocation(line: 60, column: 9, scope: !147)
!168 = !DILocation(line: 60, column: 21, scope: !147)
!169 = !DILocation(line: 61, column: 9, scope: !147)
!170 = !DILocation(line: 58, column: 43, scope: !143)
!171 = !DILocation(line: 58, column: 23, scope: !143)
!172 = distinct !{!172, !145, !173, !174}
!173 = !DILocation(line: 61, column: 9, scope: !140)
!174 = !{!"llvm.loop.name", !"VITIS_LOOP_58_3"}
!175 = !DILocation(line: 62, column: 5, scope: !131)
!176 = !DILocation(line: 55, column: 43, scope: !127)
!177 = !DILocation(line: 55, column: 22, scope: !127)
!178 = distinct !{!178, !129, !179, !180}
!179 = !DILocation(line: 62, column: 5, scope: !123)
!180 = !{!"llvm.loop.name", !"VITIS_LOOP_55_2"}
!181 = !DILocation(line: 63, column: 3, scope: !124)
!182 = !DILocation(line: 53, column: 41, scope: !116)
!183 = !DILocation(line: 53, column: 20, scope: !116)
!184 = distinct !{!184, !120, !185, !186}
!185 = !DILocation(line: 63, column: 3, scope: !113)
!186 = !{!"llvm.loop.name", !"VITIS_LOOP_53_1"}
!187 = !DILocation(line: 65, column: 27, scope: !188)
!188 = distinct !DILexicalBlock(scope: !14, file: !15, line: 65, column: 20)
!189 = !DILocation(line: 65, column: 25, scope: !188)
!190 = !DILocation(line: 65, column: 32, scope: !191)
!191 = distinct !DILexicalBlock(scope: !188, file: !15, line: 65, column: 20)
!192 = !DILocation(line: 65, column: 34, scope: !191)
!193 = !DILocation(line: 65, column: 20, scope: !188)
!194 = !DILocation(line: 65, column: 44, scope: !191)
!195 = !DILocation(line: 67, column: 29, scope: !196)
!196 = distinct !DILexicalBlock(scope: !197, file: !15, line: 67, column: 22)
!197 = distinct !DILexicalBlock(scope: !191, file: !15, line: 65, column: 44)
!198 = !DILocation(line: 67, column: 27, scope: !196)
!199 = !DILocation(line: 67, column: 34, scope: !200)
!200 = distinct !DILexicalBlock(scope: !196, file: !15, line: 67, column: 22)
!201 = !DILocation(line: 67, column: 36, scope: !200)
!202 = !DILocation(line: 67, column: 22, scope: !196)
!203 = !DILocation(line: 69, column: 16, scope: !204)
!204 = distinct !DILexicalBlock(scope: !200, file: !15, line: 67, column: 46)
!205 = !DILocation(line: 69, column: 2, scope: !204)
!206 = !DILocation(line: 69, column: 5, scope: !204)
!207 = !DILocation(line: 69, column: 7, scope: !204)
!208 = !DILocation(line: 69, column: 6, scope: !204)
!209 = !{i1 false, !210, i1 false, i1 true}
!210 = !{double 0.000000e+00, double 3.200000e+01}
!211 = !DILocation(line: 69, column: 10, scope: !204)
!212 = !DILocation(line: 69, column: 9, scope: !204)
!213 = !{i1 false, !214, i1 false, i1 true}
!214 = !{double 0.000000e+00, double 3.300000e+01}
!215 = !DILocation(line: 69, column: 13, scope: !204)
!216 = !DILocation(line: 70, column: 26, scope: !217)
!217 = distinct !DILexicalBlock(scope: !204, file: !15, line: 70, column: 19)
!218 = !DILocation(line: 70, column: 24, scope: !217)
!219 = !DILocation(line: 70, column: 31, scope: !220)
!220 = distinct !DILexicalBlock(scope: !217, file: !15, line: 70, column: 19)
!221 = !DILocation(line: 70, column: 33, scope: !220)
!222 = !DILocation(line: 70, column: 19, scope: !217)
!223 = !DILocation(line: 72, column: 28, scope: !224)
!224 = distinct !DILexicalBlock(scope: !220, file: !15, line: 70, column: 43)
!225 = !DILocation(line: 72, column: 30, scope: !224)
!226 = !DILocation(line: 72, column: 29, scope: !224)
!227 = !DILocation(line: 72, column: 33, scope: !224)
!228 = !DILocation(line: 72, column: 32, scope: !224)
!229 = !DILocation(line: 72, column: 24, scope: !224)
!230 = !DILocation(line: 72, column: 38, scope: !224)
!231 = !DILocation(line: 72, column: 41, scope: !224)
!232 = !DILocation(line: 72, column: 43, scope: !224)
!233 = !DILocation(line: 72, column: 42, scope: !224)
!234 = !{i1 false, !235, i1 false, i1 true}
!235 = !{double 0.000000e+00, double 1.600000e+01}
!236 = !DILocation(line: 72, column: 46, scope: !224)
!237 = !DILocation(line: 72, column: 45, scope: !224)
!238 = !{i1 false, !239, i1 false, i1 true}
!239 = !{double 0.000000e+00, double 1.800000e+01}
!240 = !DILocation(line: 72, column: 36, scope: !224)
!241 = !DILocation(line: 72, column: 10, scope: !224)
!242 = !DILocation(line: 72, column: 13, scope: !224)
!243 = !DILocation(line: 72, column: 15, scope: !224)
!244 = !DILocation(line: 72, column: 14, scope: !224)
!245 = !DILocation(line: 72, column: 18, scope: !224)
!246 = !DILocation(line: 72, column: 17, scope: !224)
!247 = !{i1 false, !248, i1 false, i1 true}
!248 = !{double 0.000000e+00, double 3.400000e+01}
!249 = !DILocation(line: 72, column: 21, scope: !224)
!250 = !DILocation(line: 73, column: 9, scope: !224)
!251 = !DILocation(line: 70, column: 39, scope: !220)
!252 = !{i1 false, !253, i1 false, i1 true}
!253 = !{double 1.000000e+00, double 2.000000e+00}
!254 = !DILocation(line: 70, column: 19, scope: !220)
!255 = distinct !{!255, !222, !256, !257}
!256 = !DILocation(line: 73, column: 9, scope: !217)
!257 = !{!"llvm.loop.name", !"VITIS_LOOP_70_6"}
!258 = !DILocation(line: 74, column: 5, scope: !204)
!259 = !DILocation(line: 67, column: 43, scope: !200)
!260 = !DILocation(line: 67, column: 22, scope: !200)
!261 = distinct !{!261, !202, !262, !263}
!262 = !DILocation(line: 74, column: 5, scope: !196)
!263 = !{!"llvm.loop.name", !"VITIS_LOOP_67_5"}
!264 = !DILocation(line: 75, column: 3, scope: !197)
!265 = !DILocation(line: 65, column: 41, scope: !191)
!266 = !DILocation(line: 65, column: 20, scope: !191)
!267 = distinct !{!267, !193, !268, !269}
!268 = !DILocation(line: 75, column: 3, scope: !188)
!269 = !{!"llvm.loop.name", !"VITIS_LOOP_65_4"}
!270 = !DILocation(line: 77, column: 1, scope: !14)
!271 = !{i1 false, !272, i1 false, i1 true}
!272 = !{double 0.000000e+00, double 1.000000e+00}
!273 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!274 = !{i32 0, i1 false, i32 0, i1 false}
!275 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
