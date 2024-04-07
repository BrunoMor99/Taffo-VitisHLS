; ModuleID = '/home/bruno/Desktop/benchmarks/syr2k/intermediate/output.4.magiclangtmp.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.global_ctors = appending global [0 x { i32, void ()*, i8* }] zeroinitializer, !taffo.structinfo !0
@.str = private unnamed_addr constant [20 x i8] c"scalar(range(0, 5))\00", section "llvm.metadata", !taffo.info !3
@.str.1 = private unnamed_addr constant [14 x i8] c"syr2k_taffo.c\00", section "llvm.metadata", !taffo.info !5
@.str.2 = private unnamed_addr constant [41 x i8] c"target('A') scalar(range(-16384, 16384))\00", section "llvm.metadata", !taffo.info !7
@.str.3 = private unnamed_addr constant [41 x i8] c"target('B') scalar(range(-16384, 16384))\00", section "llvm.metadata", !taffo.info !7
@.str.4 = private unnamed_addr constant [41 x i8] c"target('C') scalar(range(-16384, 16384))\00", section "llvm.metadata", !taffo.info !7
@.str.5 = private unnamed_addr constant [9 x i8] c"scalar()\00", section "llvm.metadata", !taffo.info !3

; Function Attrs: nounwind
define void @syr2k(float* %A, float* %B, float* %C, float %alpha, float %beta) #0 !dbg !16 !fpga.function.pragma !22 !taffo.start !25 !taffo.funinfo !26 {
entry:
  %A.addr = alloca float*, align 8
  %B.addr = alloca float*, align 8
  %C.addr = alloca float*, align 8, !taffo.info !1
  %alpha.addr = alloca float, align 4
  %beta.addr = alloca float, align 4
  %n = alloca i32, align 4, !taffo.info !27
  %m = alloca i32, align 4, !taffo.info !27
  %alphas.u3_29fixp = alloca i32, align 4, !taffo.info !29
  %betas.u3_29fixp = alloca i32, align 4, !taffo.info !29
  %As.s16_16fixp = alloca i32*, align 8, !taffo.info !32, !taffo.target !35
  %Bs.s16_16fixp = alloca i32*, align 8, !taffo.info !32, !taffo.target !36
  %Cs.s16_16fixp = alloca i32*, align 8, !taffo.info !32, !taffo.target !37
  %i = alloca i32, align 4, !taffo.info !38
  %j = alloca i32, align 4, !taffo.info !40
  %k = alloca i32, align 4, !taffo.info !38
  store float* %A, float** %A.addr, align 8
  call void @llvm.dbg.declare(metadata float** %A.addr, metadata !42, metadata !DIExpression()), !dbg !43
  store float* %B, float** %B.addr, align 8
  call void @llvm.dbg.declare(metadata float** %B.addr, metadata !44, metadata !DIExpression()), !dbg !45
  store float* %C, float** %C.addr, align 8
  call void @llvm.dbg.declare(metadata float** %C.addr, metadata !46, metadata !DIExpression()), !dbg !47
  store float %alpha, float* %alpha.addr, align 4
  call void @llvm.dbg.declare(metadata float* %alpha.addr, metadata !48, metadata !DIExpression()), !dbg !49
  store float %beta, float* %beta.addr, align 4
  call void @llvm.dbg.declare(metadata float* %beta.addr, metadata !50, metadata !DIExpression()), !dbg !51
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %A, [0 x i8] zeroinitializer, i64 256, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !52
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %B, [0 x i8] zeroinitializer, i64 256, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !53
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %C, [0 x i8] zeroinitializer, i64 256, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !54
  %0 = bitcast i32* %n to i8*, !dbg !55
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !55
  call void @llvm.dbg.declare(metadata i32* %n, metadata !56, metadata !DIExpression()), !dbg !58
  store i32 16, i32* %n, align 4, !dbg !58
  %1 = bitcast i32* %m to i8*, !dbg !59
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !59
  call void @llvm.dbg.declare(metadata i32* %m, metadata !60, metadata !DIExpression()), !dbg !61
  store i32 16, i32* %m, align 4, !dbg !61
  %2 = bitcast i32* %alphas.u3_29fixp to i8*, !dbg !62, !taffo.info !63
  %3 = bitcast i8* %2 to i8*, !taffo.info !63
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !62, !taffo.info !64
  call void @llvm.dbg.declare(metadata !11, metadata !65, metadata !DIExpression()), !dbg !66
  %4 = load float, float* %alpha.addr, align 4, !dbg !67
  %5 = fmul float 0x41C0000000000000, %4, !dbg !68, !taffo.info !64
  %6 = fptoui float %5 to i32, !dbg !68, !taffo.info !64
  store i32 %6, i32* %alphas.u3_29fixp, align 4, !dbg !68, !taffo.info !64
  %7 = bitcast i32* %betas.u3_29fixp to i8*, !dbg !69, !taffo.info !63
  %8 = bitcast i8* %7 to i8*, !taffo.info !63
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4, !dbg !69, !taffo.info !64
  call void @llvm.dbg.declare(metadata !11, metadata !70, metadata !DIExpression()), !dbg !71
  %9 = load float, float* %beta.addr, align 4, !dbg !72
  %10 = fmul float 0x41C0000000000000, %9, !dbg !73, !taffo.info !64
  %11 = fptoui float %10 to i32, !dbg !73, !taffo.info !64
  store i32 %11, i32* %betas.u3_29fixp, align 4, !dbg !73, !taffo.info !64
  %12 = bitcast i32** %As.s16_16fixp to i8*, !dbg !74, !taffo.info !75, !taffo.target !35
  %13 = bitcast i8* %12 to i8*, !taffo.info !75, !taffo.target !35
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %13) #4, !dbg !74, !taffo.info !64, !taffo.target !35
  call void @llvm.dbg.declare(metadata !11, metadata !76, metadata !DIExpression()), !dbg !77
  %14 = load float*, float** %A.addr, align 8, !dbg !78
  %15 = bitcast float* %14 to i32*
  store i32* %15, i32** %As.s16_16fixp, align 8, !dbg !79, !taffo.info !64, !taffo.target !35
  %16 = bitcast i32** %Bs.s16_16fixp to i8*, !dbg !80, !taffo.info !75, !taffo.target !36
  %17 = bitcast i8* %16 to i8*, !taffo.info !75, !taffo.target !36
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %17) #4, !dbg !80, !taffo.info !64, !taffo.target !36
  call void @llvm.dbg.declare(metadata !11, metadata !81, metadata !DIExpression()), !dbg !82
  %18 = load float*, float** %B.addr, align 8, !dbg !83
  %19 = bitcast float* %18 to i32*
  store i32* %19, i32** %Bs.s16_16fixp, align 8, !dbg !84, !taffo.info !64, !taffo.target !36
  %20 = bitcast i32** %Cs.s16_16fixp to i8*, !dbg !85, !taffo.info !75, !taffo.target !37
  %21 = bitcast i8* %20 to i8*, !taffo.info !75, !taffo.target !37
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %21) #4, !dbg !85, !taffo.info !64, !taffo.target !37
  call void @llvm.dbg.declare(metadata !11, metadata !86, metadata !DIExpression()), !dbg !87
  %22 = load float*, float** %C.addr, align 8, !dbg !88, !taffo.info !1
  %23 = bitcast float* %22 to i32*, !taffo.info !1
  store i32* %23, i32** %Cs.s16_16fixp, align 8, !dbg !89, !taffo.info !64, !taffo.target !37
  %24 = bitcast i32* %i to i8*, !dbg !90, !taffo.info !64
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %24) #4, !dbg !90, !taffo.info !64
  call void @llvm.dbg.declare(metadata i32* %i, metadata !91, metadata !DIExpression()), !dbg !92
  %25 = bitcast i32* %j to i8*, !dbg !93, !taffo.info !64
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %25) #4, !dbg !93, !taffo.info !64
  call void @llvm.dbg.declare(metadata i32* %j, metadata !94, metadata !DIExpression()), !dbg !95
  %26 = bitcast i32* %k to i8*, !dbg !96, !taffo.info !64
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %26) #4, !dbg !96, !taffo.info !64
  call void @llvm.dbg.declare(metadata i32* %k, metadata !97, metadata !DIExpression()), !dbg !98
  br label %VITIS_LOOP_46_1, !dbg !96

VITIS_LOOP_46_1:                                  ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !99, !taffo.info !64
  br label %for.cond, !dbg !101

for.cond:                                         ; preds = %for.inc51, %VITIS_LOOP_46_1
  %27 = load i32, i32* %i, align 4, !dbg !102, !taffo.info !38
  %cmp = icmp slt i32 %27, 16, !dbg !104, !taffo.info !105
  br i1 %cmp, label %for.body, label %for.end53, !dbg !107, !taffo.info !64

for.body:                                         ; preds = %for.cond
  br label %VITIS_LOOP_48_2, !dbg !108

VITIS_LOOP_48_2:                                  ; preds = %for.body
  store i32 0, i32* %j, align 4, !dbg !109, !taffo.info !64
  br label %for.cond9, !dbg !112

for.cond9:                                        ; preds = %for.inc, %VITIS_LOOP_48_2
  %28 = load i32, i32* %j, align 4, !dbg !113, !taffo.info !40
  %29 = load i32, i32* %i, align 4, !dbg !115, !taffo.info !38
  %cmp10 = icmp sle i32 %28, %29, !dbg !116, !taffo.info !38
  br i1 %cmp10, label %for.body11, label %for.end, !dbg !117, !taffo.info !64

for.body11:                                       ; preds = %for.cond9
  %u3_29fixp3 = load i32, i32* %betas.u3_29fixp, align 4, !dbg !118, !taffo.info !29
  %s16_16fixp7 = load i32*, i32** %Cs.s16_16fixp, align 8, !dbg !120, !taffo.info !32, !taffo.target !37
  %30 = load i32, i32* %i, align 4, !dbg !121, !taffo.info !38
  %31 = load i32, i32* %n, align 4, !dbg !122, !taffo.info !27
  %mul = mul nsw i32 %30, %31, !dbg !123, !taffo.info !124
  %32 = load i32, i32* %j, align 4, !dbg !125, !taffo.info !40
  %add = add nsw i32 %mul, %32, !dbg !126, !taffo.info !124
  %idxprom = sext i32 %add to i64, !dbg !120, !taffo.info !124
  %arrayidx.s16_16fixp = getelementptr inbounds i32, i32* %s16_16fixp7, i64 %idxprom, !dbg !120, !taffo.info !32, !taffo.target !37
  %s16_16fixp13 = load i32, i32* %arrayidx.s16_16fixp, align 4, !dbg !127, !taffo.info !32, !taffo.target !37
  %33 = sext i32 %s16_16fixp13 to i64, !dbg !127, !taffo.info !32, !taffo.target !37
  %34 = zext i32 %u3_29fixp3 to i64, !dbg !127, !taffo.info !29
  %35 = mul i64 %33, %34, !dbg !127, !taffo.info !128, !taffo.target !37
  %36 = lshr i64 %35, 13, !dbg !127, !taffo.info !128, !taffo.target !37
  %mul12.u0_32fixp = trunc i64 %36 to i32, !dbg !127, !taffo.info !130, !taffo.target !37
  %37 = lshr i32 %mul12.u0_32fixp, 16, !dbg !127, !taffo.info !130, !taffo.target !37
  store i32 %37, i32* %arrayidx.s16_16fixp, align 4, !dbg !127, !taffo.info !64
  br label %for.inc, !dbg !132

for.inc:                                          ; preds = %for.body11
  %38 = load i32, i32* %j, align 4, !dbg !133, !taffo.info !40
  %inc = add nsw i32 %38, 1, !dbg !133, !taffo.info !105
  store i32 %inc, i32* %j, align 4, !dbg !133, !taffo.info !64
  br label %for.cond9, !dbg !134, !llvm.loop !135

for.end:                                          ; preds = %for.cond9
  br label %VITIS_LOOP_52_3, !dbg !136

VITIS_LOOP_52_3:                                  ; preds = %for.end
  store i32 0, i32* %k, align 4, !dbg !140, !taffo.info !64
  br label %for.cond13, !dbg !142

for.cond13:                                       ; preds = %for.inc48, %VITIS_LOOP_52_3
  %39 = load i32, i32* %k, align 4, !dbg !143, !taffo.info !38
  %cmp14 = icmp slt i32 %39, 16, !dbg !145, !taffo.info !105
  br i1 %cmp14, label %for.body15, label %for.end50, !dbg !146, !taffo.info !64

for.body15:                                       ; preds = %for.cond13
  br label %VITIS_LOOP_54_4, !dbg !147

VITIS_LOOP_54_4:                                  ; preds = %for.body15
  store i32 0, i32* %j, align 4, !dbg !148, !taffo.info !64
  br label %for.cond16, !dbg !151

for.cond16:                                       ; preds = %for.inc45, %VITIS_LOOP_54_4
  %40 = load i32, i32* %j, align 4, !dbg !152, !taffo.info !40
  %41 = load i32, i32* %i, align 4, !dbg !154, !taffo.info !38
  %cmp17 = icmp sle i32 %40, %41, !dbg !155, !taffo.info !38
  br i1 %cmp17, label %for.body18, label %for.end47, !dbg !156, !taffo.info !64

for.body18:                                       ; preds = %for.cond16
  %s16_16fixp2 = load i32*, i32** %As.s16_16fixp, align 8, !dbg !157, !taffo.info !32, !taffo.target !35
  %42 = load i32, i32* %j, align 4, !dbg !159, !taffo.info !40
  %43 = load i32, i32* %m, align 4, !dbg !160, !taffo.info !27
  %mul19 = mul nsw i32 %42, %43, !dbg !161, !taffo.info !162
  %44 = load i32, i32* %k, align 4, !dbg !164, !taffo.info !38
  %add20 = add nsw i32 %mul19, %44, !dbg !165, !taffo.info !166
  %idxprom21 = sext i32 %add20 to i64, !dbg !157, !taffo.info !166
  %arrayidx22.s16_16fixp = getelementptr inbounds i32, i32* %s16_16fixp2, i64 %idxprom21, !dbg !157, !taffo.info !32, !taffo.target !35
  %s16_16fixp9 = load i32, i32* %arrayidx22.s16_16fixp, align 4, !dbg !157, !taffo.info !32, !taffo.target !35
  %u3_29fixp1 = load i32, i32* %alphas.u3_29fixp, align 4, !dbg !168, !taffo.info !29
  %45 = sext i32 %s16_16fixp9 to i64, !dbg !169, !taffo.info !32, !taffo.target !35
  %46 = zext i32 %u3_29fixp1 to i64, !dbg !169, !taffo.info !29
  %47 = mul i64 %45, %46, !dbg !169, !taffo.info !128, !taffo.target !35
  %48 = lshr i64 %47, 13, !dbg !169, !taffo.info !128, !taffo.target !35
  %mul23.u0_32fixp = trunc i64 %48 to i32, !dbg !170, !taffo.info !130, !taffo.target !35
  %s16_16fixp5 = load i32*, i32** %Bs.s16_16fixp, align 8, !dbg !169, !taffo.info !32, !taffo.target !36
  %49 = load i32, i32* %i, align 4, !dbg !171, !taffo.info !38
  %50 = load i32, i32* %m, align 4, !dbg !172, !taffo.info !27
  %mul24 = mul nsw i32 %49, %50, !dbg !173, !taffo.info !162
  %51 = load i32, i32* %k, align 4, !dbg !174, !taffo.info !38
  %add25 = add nsw i32 %mul24, %51, !dbg !175, !taffo.info !166
  %idxprom26 = sext i32 %add25 to i64, !dbg !169, !taffo.info !166
  %arrayidx27.s16_16fixp = getelementptr inbounds i32, i32* %s16_16fixp5, i64 %idxprom26, !dbg !169, !taffo.info !32, !taffo.target !36
  %s16_16fixp11 = load i32, i32* %arrayidx27.s16_16fixp, align 4, !dbg !169, !taffo.info !32, !taffo.target !36
  %52 = zext i32 %mul23.u0_32fixp to i64, !dbg !176, !taffo.info !130, !taffo.target !35
  %53 = sext i32 %s16_16fixp11 to i64, !dbg !176, !taffo.info !32, !taffo.target !36
  %54 = mul i64 %52, %53, !dbg !176, !taffo.info !177, !taffo.target !36
  %55 = lshr i64 %54, 16, !dbg !176, !taffo.info !177, !taffo.target !36
  %mul28.u0_32fixp = trunc i64 %55 to i32, !dbg !179, !taffo.info !130, !taffo.target !36
  %s16_16fixp4 = load i32*, i32** %Bs.s16_16fixp, align 8, !dbg !176, !taffo.info !32, !taffo.target !36
  %56 = load i32, i32* %j, align 4, !dbg !180, !taffo.info !40
  %57 = load i32, i32* %m, align 4, !dbg !181, !taffo.info !27
  %mul29 = mul nsw i32 %56, %57, !dbg !182, !taffo.info !162
  %58 = load i32, i32* %k, align 4, !dbg !183, !taffo.info !38
  %add30 = add nsw i32 %mul29, %58, !dbg !184, !taffo.info !166
  %idxprom31 = sext i32 %add30 to i64, !dbg !176, !taffo.info !166
  %arrayidx32.s16_16fixp = getelementptr inbounds i32, i32* %s16_16fixp4, i64 %idxprom31, !dbg !176, !taffo.info !32, !taffo.target !36
  %s16_16fixp10 = load i32, i32* %arrayidx32.s16_16fixp, align 4, !dbg !176, !taffo.info !32, !taffo.target !36
  %u3_29fixp = load i32, i32* %alphas.u3_29fixp, align 4, !dbg !185, !taffo.info !29
  %59 = sext i32 %s16_16fixp10 to i64, !dbg !186, !taffo.info !32, !taffo.target !36
  %60 = zext i32 %u3_29fixp to i64, !dbg !186, !taffo.info !29
  %61 = mul i64 %59, %60, !dbg !186, !taffo.info !128, !taffo.target !36
  %62 = lshr i64 %61, 13, !dbg !186, !taffo.info !128, !taffo.target !36
  %mul33.u0_32fixp = trunc i64 %62 to i32, !dbg !187, !taffo.info !130, !taffo.target !36
  %s16_16fixp = load i32*, i32** %As.s16_16fixp, align 8, !dbg !186, !taffo.info !32, !taffo.target !35
  %63 = load i32, i32* %i, align 4, !dbg !188, !taffo.info !38
  %64 = load i32, i32* %m, align 4, !dbg !189, !taffo.info !27
  %mul34 = mul nsw i32 %63, %64, !dbg !190, !taffo.info !162
  %65 = load i32, i32* %k, align 4, !dbg !191, !taffo.info !38
  %add35 = add nsw i32 %mul34, %65, !dbg !192, !taffo.info !166
  %idxprom36 = sext i32 %add35 to i64, !dbg !186, !taffo.info !166
  %arrayidx37.s16_16fixp = getelementptr inbounds i32, i32* %s16_16fixp, i64 %idxprom36, !dbg !186, !taffo.info !32, !taffo.target !35
  %s16_16fixp8 = load i32, i32* %arrayidx37.s16_16fixp, align 4, !dbg !186, !taffo.info !32, !taffo.target !35
  %66 = zext i32 %mul33.u0_32fixp to i64, !dbg !193, !taffo.info !130, !taffo.target !36
  %67 = sext i32 %s16_16fixp8 to i64, !dbg !193, !taffo.info !32, !taffo.target !35
  %68 = mul i64 %66, %67, !dbg !193, !taffo.info !177, !taffo.target !35
  %69 = lshr i64 %68, 16, !dbg !193, !taffo.info !177, !taffo.target !35
  %mul38.u0_32fixp = trunc i64 %69 to i32, !dbg !194, !taffo.info !130, !taffo.target !35
  %add39.u0_32fixp = add i32 %mul28.u0_32fixp, %mul38.u0_32fixp, !dbg !193, !taffo.info !130
  %s16_16fixp6 = load i32*, i32** %Cs.s16_16fixp, align 8, !dbg !195, !taffo.info !32, !taffo.target !37
  %70 = load i32, i32* %i, align 4, !dbg !196, !taffo.info !38
  %71 = load i32, i32* %n, align 4, !dbg !197, !taffo.info !27
  %mul40 = mul nsw i32 %70, %71, !dbg !198, !taffo.info !162
  %72 = load i32, i32* %j, align 4, !dbg !199, !taffo.info !40
  %add41 = add nsw i32 %mul40, %72, !dbg !200, !taffo.info !166
  %idxprom42 = sext i32 %add41 to i64, !dbg !195, !taffo.info !166
  %arrayidx43.s16_16fixp = getelementptr inbounds i32, i32* %s16_16fixp6, i64 %idxprom42, !dbg !195, !taffo.info !32, !taffo.target !37
  %s16_16fixp12 = load i32, i32* %arrayidx43.s16_16fixp, align 4, !dbg !201, !taffo.info !32, !taffo.target !37
  %73 = shl i32 %s16_16fixp12, 16, !dbg !201, !taffo.info !32, !taffo.target !37
  %add44.u0_32fixp = add i32 %73, %add39.u0_32fixp, !dbg !201, !taffo.info !130, !taffo.target !37
  %74 = lshr i32 %add44.u0_32fixp, 16, !dbg !201, !taffo.info !130, !taffo.target !37
  store i32 %74, i32* %arrayidx43.s16_16fixp, align 4, !dbg !201, !taffo.info !64, !taffo.target !37
  br label %for.inc45, !dbg !202

for.inc45:                                        ; preds = %for.body18
  %75 = load i32, i32* %j, align 4, !dbg !203, !taffo.info !40
  %inc46 = add nsw i32 %75, 1, !dbg !203, !taffo.info !204
  store i32 %inc46, i32* %j, align 4, !dbg !203, !taffo.info !64
  br label %for.cond16, !dbg !206, !llvm.loop !207

for.end47:                                        ; preds = %for.cond16
  br label %for.inc48, !dbg !212

for.inc48:                                        ; preds = %for.end47
  %76 = load i32, i32* %k, align 4, !dbg !213, !taffo.info !38
  %inc49 = add nsw i32 %76, 1, !dbg !213, !taffo.info !105
  store i32 %inc49, i32* %k, align 4, !dbg !213, !taffo.info !64
  br label %for.cond13, !dbg !214, !llvm.loop !215

for.end50:                                        ; preds = %for.cond13
  br label %for.inc51, !dbg !220

for.inc51:                                        ; preds = %for.end50
  %77 = load i32, i32* %i, align 4, !dbg !221, !taffo.info !38
  %inc52 = add nsw i32 %77, 1, !dbg !221, !taffo.info !105
  store i32 %inc52, i32* %i, align 4, !dbg !221, !taffo.info !64
  br label %for.cond, !dbg !222, !llvm.loop !223

for.end53:                                        ; preds = %for.cond
  %78 = bitcast i32* %k to i8*, !dbg !228, !taffo.info !124
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %78) #4, !dbg !228, !taffo.info !64
  %79 = bitcast i32* %j to i8*, !dbg !228, !taffo.info !38
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %79) #4, !dbg !228, !taffo.info !64
  %80 = bitcast i32* %i to i8*, !dbg !228, !taffo.info !38
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %80) #4, !dbg !228, !taffo.info !64
  %81 = bitcast i32** %Cs.s16_16fixp to i8*, !dbg !228, !taffo.info !75, !taffo.target !37
  %82 = bitcast i8* %81 to i8*, !taffo.info !75, !taffo.target !37
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %82) #4, !dbg !228, !taffo.info !64, !taffo.target !37
  %83 = bitcast i32** %Bs.s16_16fixp to i8*, !dbg !228, !taffo.info !75, !taffo.target !36
  %84 = bitcast i8* %83 to i8*, !taffo.info !75, !taffo.target !36
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %84) #4, !dbg !228, !taffo.info !64, !taffo.target !36
  %85 = bitcast i32** %As.s16_16fixp to i8*, !dbg !228, !taffo.info !75, !taffo.target !35
  %86 = bitcast i8* %85 to i8*, !taffo.info !75, !taffo.target !35
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %86) #4, !dbg !228, !taffo.info !64, !taffo.target !35
  %87 = bitcast i32* %betas.u3_29fixp to i8*, !dbg !228, !taffo.info !63
  %88 = bitcast i8* %87 to i8*, !taffo.info !63
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %88) #4, !dbg !228, !taffo.info !64
  %89 = bitcast i32* %alphas.u3_29fixp to i8*, !dbg !228, !taffo.info !63
  %90 = bitcast i8* %89 to i8*, !taffo.info !63
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %90) #4, !dbg !228, !taffo.info !64
  %91 = bitcast i32* %m to i8*, !dbg !228, !taffo.info !27
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %91) #4, !dbg !228
  %92 = bitcast i32* %n to i8*, !dbg !228, !taffo.info !27
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %92) #4, !dbg !228
  ret void, !dbg !228
}

; Function Attrs: nounwind readnone speculatable
declare !taffo.funinfo !229 void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: inaccessiblememonly nounwind
declare !taffo.funinfo !11 void @llvm.sideeffect() #2

; Function Attrs: argmemonly nounwind
declare !taffo.funinfo !230 void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare !taffo.funinfo !231 void @llvm.var.annotation(i8*, i8*, i8*, i32) #4

; Function Attrs: argmemonly nounwind
declare !taffo.funinfo !230 void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #3

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.top.func"="syr2k" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { inaccessiblememonly nounwind }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind }
attributes #5 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="0" "xlx.source"="user" }

!llvm.dbg.cu = !{!9}
!llvm.ident = !{!12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12}
!llvm.module.flags = !{!13, !14, !15}

!0 = !{!1, !1, !1}
!1 = !{i1 false, !2, i1 false, i1 false}
!2 = !{double 0.000000e+00, double 0.000000e+00}
!3 = !{i1 false, !4, i1 false, i1 false}
!4 = !{double 0.000000e+00, double 1.150000e+02}
!5 = !{i1 false, !6, i1 false, i1 false}
!6 = !{double 0.000000e+00, double 1.210000e+02}
!7 = !{i1 false, !8, i1 false, i1 false}
!8 = !{double 0.000000e+00, double 1.160000e+02}
!9 = distinct !DICompileUnit(language: DW_LANG_C99, file: !10, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11)
!10 = !DIFile(filename: "/home/bruno/Desktop/benchmarks/syr2k/proj_syr2k/solution1/.autopilot/db/syr2k_taffo.pp.0.c", directory: "/home/bruno/Desktop/benchmarks/syr2k")
!11 = !{}
!12 = !{!"clang version 7.0.0 "}
!13 = !{i32 2, !"Dwarf Version", i32 4}
!14 = !{i32 2, !"Debug Info Version", i32 0}
!15 = !{i32 1, !"wchar_size", i32 4}
!16 = distinct !DISubprogram(name: "syr2k", scope: !17, file: !17, line: 20, type: !18, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !11)
!17 = !DIFile(filename: "syr2k_taffo.c", directory: "/home/bruno/Desktop/benchmarks/syr2k")
!18 = !DISubroutineType(types: !19)
!19 = !{null, !20, !20, !20, !21, !21}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!22 = !{!23}
!23 = !{!"user"}
!24 = !DILocation(line: 20, column: 16, scope: !16)
!25 = !{i1 true}
!26 = !{i32 0, i1 false, i32 0, i1 false, i32 1, !1, i32 0, i1 false, i32 0, i1 false}
!27 = !{i1 false, !28, i1 false, i1 false}
!28 = !{double 1.600000e+01, double 1.600000e+01}
!29 = !{!30, !31, i1 false, i1 true}
!30 = !{!"fixp", i32 32, i32 29}
!31 = !{double 0.000000e+00, double 5.000000e+00}
!32 = !{!33, !34, i1 false, i1 true}
!33 = !{!"fixp", i32 -32, i32 16}
!34 = !{double -1.638400e+04, double 1.638400e+04}
!35 = !{!"A"}
!36 = !{!"B"}
!37 = !{!"C"}
!38 = !{i1 false, !39, i1 false, i1 true}
!39 = !{double 0.000000e+00, double 1.000000e+00}
!40 = !{i1 false, !41, i1 false, i1 true}
!41 = !{double 0.000000e+00, double 2.000000e+00}
!42 = !DILocalVariable(name: "A", arg: 1, scope: !16, file: !17, line: 20, type: !20)
!43 = !DILocation(line: 20, column: 59, scope: !16)
!44 = !DILocalVariable(name: "B", arg: 2, scope: !16, file: !17, line: 20, type: !20)
!45 = !DILocation(line: 20, column: 69, scope: !16)
!46 = !DILocalVariable(name: "C", arg: 3, scope: !16, file: !17, line: 20, type: !20)
!47 = !DILocation(line: 20, column: 79, scope: !16)
!48 = !DILocalVariable(name: "alpha", arg: 4, scope: !16, file: !17, line: 20, type: !21)
!49 = !DILocation(line: 20, column: 88, scope: !16)
!50 = !DILocalVariable(name: "beta", arg: 5, scope: !16, file: !17, line: 20, type: !21)
!51 = !DILocation(line: 20, column: 101, scope: !16)
!52 = !DILocation(line: 23, column: 9, scope: !16)
!53 = !DILocation(line: 24, column: 9, scope: !16)
!54 = !DILocation(line: 25, column: 9, scope: !16)
!55 = !DILocation(line: 26, column: 2, scope: !16)
!56 = !DILocalVariable(name: "n", scope: !16, file: !17, line: 26, type: !57)
!57 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!58 = !DILocation(line: 26, column: 6, scope: !16)
!59 = !DILocation(line: 27, column: 3, scope: !16)
!60 = !DILocalVariable(name: "m", scope: !16, file: !17, line: 27, type: !57)
!61 = !DILocation(line: 27, column: 7, scope: !16)
!62 = !DILocation(line: 28, column: 3, scope: !16)
!63 = !{!30, i1 false, i1 false, i1 true}
!64 = !{i1 false, i1 false, i1 false, i1 true}
!65 = !DILocalVariable(name: "alphas", scope: !16, file: !17, line: 28, type: !21)
!66 = !DILocation(line: 28, column: 9, scope: !16)
!67 = !DILocation(line: 29, column: 12, scope: !16)
!68 = !DILocation(line: 29, column: 10, scope: !16)
!69 = !DILocation(line: 30, column: 3, scope: !16)
!70 = !DILocalVariable(name: "betas", scope: !16, file: !17, line: 30, type: !21)
!71 = !DILocation(line: 30, column: 9, scope: !16)
!72 = !DILocation(line: 31, column: 9, scope: !16)
!73 = !DILocation(line: 31, column: 8, scope: !16)
!74 = !DILocation(line: 33, column: 3, scope: !16)
!75 = !{!33, i1 false, i1 false, i1 true}
!76 = !DILocalVariable(name: "As", scope: !16, file: !17, line: 33, type: !20)
!77 = !DILocation(line: 33, column: 10, scope: !16)
!78 = !DILocation(line: 34, column: 8, scope: !16)
!79 = !DILocation(line: 34, column: 6, scope: !16)
!80 = !DILocation(line: 35, column: 3, scope: !16)
!81 = !DILocalVariable(name: "Bs", scope: !16, file: !17, line: 35, type: !20)
!82 = !DILocation(line: 35, column: 10, scope: !16)
!83 = !DILocation(line: 36, column: 8, scope: !16)
!84 = !DILocation(line: 36, column: 6, scope: !16)
!85 = !DILocation(line: 37, column: 3, scope: !16)
!86 = !DILocalVariable(name: "Cs", scope: !16, file: !17, line: 37, type: !20)
!87 = !DILocation(line: 37, column: 10, scope: !16)
!88 = !DILocation(line: 38, column: 8, scope: !16)
!89 = !DILocation(line: 38, column: 6, scope: !16)
!90 = !DILocation(line: 41, column: 3, scope: !16)
!91 = !DILocalVariable(name: "i", scope: !16, file: !17, line: 41, type: !57)
!92 = !DILocation(line: 41, column: 7, scope: !16)
!93 = !DILocation(line: 42, column: 3, scope: !16)
!94 = !DILocalVariable(name: "j", scope: !16, file: !17, line: 42, type: !57)
!95 = !DILocation(line: 42, column: 7, scope: !16)
!96 = !DILocation(line: 43, column: 3, scope: !16)
!97 = !DILocalVariable(name: "k", scope: !16, file: !17, line: 43, type: !57)
!98 = !DILocation(line: 43, column: 7, scope: !16)
!99 = !DILocation(line: 46, column: 27, scope: !100)
!100 = distinct !DILexicalBlock(scope: !16, file: !17, line: 46, column: 20)
!101 = !DILocation(line: 46, column: 25, scope: !100)
!102 = !DILocation(line: 46, column: 32, scope: !103)
!103 = distinct !DILexicalBlock(scope: !100, file: !17, line: 46, column: 20)
!104 = !DILocation(line: 46, column: 34, scope: !103)
!105 = !{i1 false, !106, i1 false, i1 true}
!106 = !{double 1.000000e+00, double 1.000000e+00}
!107 = !DILocation(line: 46, column: 20, scope: !100)
!108 = !DILocation(line: 46, column: 45, scope: !103)
!109 = !DILocation(line: 48, column: 26, scope: !110)
!110 = distinct !DILexicalBlock(scope: !111, file: !17, line: 48, column: 19)
!111 = distinct !DILexicalBlock(scope: !103, file: !17, line: 46, column: 45)
!112 = !DILocation(line: 48, column: 24, scope: !110)
!113 = !DILocation(line: 48, column: 31, scope: !114)
!114 = distinct !DILexicalBlock(scope: !110, file: !17, line: 48, column: 19)
!115 = !DILocation(line: 48, column: 36, scope: !114)
!116 = !DILocation(line: 48, column: 33, scope: !114)
!117 = !DILocation(line: 48, column: 19, scope: !110)
!118 = !DILocation(line: 50, column: 17, scope: !119)
!119 = distinct !DILexicalBlock(scope: !114, file: !17, line: 48, column: 43)
!120 = !DILocation(line: 50, column: 2, scope: !119)
!121 = !DILocation(line: 50, column: 5, scope: !119)
!122 = !DILocation(line: 50, column: 7, scope: !119)
!123 = !DILocation(line: 50, column: 6, scope: !119)
!124 = !{i1 false, !2, i1 false, i1 true}
!125 = !DILocation(line: 50, column: 11, scope: !119)
!126 = !DILocation(line: 50, column: 9, scope: !119)
!127 = !DILocation(line: 50, column: 14, scope: !119)
!128 = !{!129, !31, i1 false}
!129 = !{!"fixp", i32 64, i32 16}
!130 = !{!131, !2, i1 false, i1 true}
!131 = !{!"fixp", i32 32, i32 32}
!132 = !DILocation(line: 51, column: 5, scope: !119)
!133 = !DILocation(line: 48, column: 40, scope: !114)
!134 = !DILocation(line: 48, column: 19, scope: !114)
!135 = distinct !{!135, !117, !136, !137, !139}
!136 = !DILocation(line: 51, column: 5, scope: !110)
!137 = !{!"llvm.loop.pipeline.enable", i32 1, i1 false, i8 -1, !"user"}
!138 = !DILocation(line: 49, column: 9, scope: !110)
!139 = !{!"llvm.loop.name", !"VITIS_LOOP_48_2"}
!140 = !DILocation(line: 52, column: 29, scope: !141)
!141 = distinct !DILexicalBlock(scope: !111, file: !17, line: 52, column: 22)
!142 = !DILocation(line: 52, column: 27, scope: !141)
!143 = !DILocation(line: 52, column: 34, scope: !144)
!144 = distinct !DILexicalBlock(scope: !141, file: !17, line: 52, column: 22)
!145 = !DILocation(line: 52, column: 36, scope: !144)
!146 = !DILocation(line: 52, column: 22, scope: !141)
!147 = !DILocation(line: 52, column: 46, scope: !144)
!148 = !DILocation(line: 54, column: 26, scope: !149)
!149 = distinct !DILexicalBlock(scope: !150, file: !17, line: 54, column: 19)
!150 = distinct !DILexicalBlock(scope: !144, file: !17, line: 52, column: 46)
!151 = !DILocation(line: 54, column: 24, scope: !149)
!152 = !DILocation(line: 54, column: 31, scope: !153)
!153 = distinct !DILexicalBlock(scope: !149, file: !17, line: 54, column: 19)
!154 = !DILocation(line: 54, column: 36, scope: !153)
!155 = !DILocation(line: 54, column: 33, scope: !153)
!156 = !DILocation(line: 54, column: 19, scope: !149)
!157 = !DILocation(line: 57, column: 15, scope: !158)
!158 = distinct !DILexicalBlock(scope: !153, file: !17, line: 55, column: 2)
!159 = !DILocation(line: 57, column: 18, scope: !158)
!160 = !DILocation(line: 57, column: 20, scope: !158)
!161 = !DILocation(line: 57, column: 19, scope: !158)
!162 = !{i1 false, !163, i1 false, i1 true}
!163 = !{double 0.000000e+00, double 1.600000e+01}
!164 = !DILocation(line: 57, column: 22, scope: !158)
!165 = !DILocation(line: 57, column: 21, scope: !158)
!166 = !{i1 false, !167, i1 false, i1 true}
!167 = !{double 0.000000e+00, double 1.700000e+01}
!168 = !DILocation(line: 57, column: 25, scope: !158)
!169 = !DILocation(line: 57, column: 32, scope: !158)
!170 = !DILocation(line: 57, column: 24, scope: !158)
!171 = !DILocation(line: 57, column: 35, scope: !158)
!172 = !DILocation(line: 57, column: 37, scope: !158)
!173 = !DILocation(line: 57, column: 36, scope: !158)
!174 = !DILocation(line: 57, column: 39, scope: !158)
!175 = !DILocation(line: 57, column: 38, scope: !158)
!176 = !DILocation(line: 57, column: 44, scope: !158)
!177 = !{!178, !34, i1 false}
!178 = !{!"fixp", i32 64, i32 32}
!179 = !DILocation(line: 57, column: 31, scope: !158)
!180 = !DILocation(line: 57, column: 47, scope: !158)
!181 = !DILocation(line: 57, column: 49, scope: !158)
!182 = !DILocation(line: 57, column: 48, scope: !158)
!183 = !DILocation(line: 57, column: 51, scope: !158)
!184 = !DILocation(line: 57, column: 50, scope: !158)
!185 = !DILocation(line: 57, column: 54, scope: !158)
!186 = !DILocation(line: 57, column: 61, scope: !158)
!187 = !DILocation(line: 57, column: 53, scope: !158)
!188 = !DILocation(line: 57, column: 64, scope: !158)
!189 = !DILocation(line: 57, column: 66, scope: !158)
!190 = !DILocation(line: 57, column: 65, scope: !158)
!191 = !DILocation(line: 57, column: 68, scope: !158)
!192 = !DILocation(line: 57, column: 67, scope: !158)
!193 = !DILocation(line: 57, column: 42, scope: !158)
!194 = !DILocation(line: 57, column: 60, scope: !158)
!195 = !DILocation(line: 57, column: 2, scope: !158)
!196 = !DILocation(line: 57, column: 5, scope: !158)
!197 = !DILocation(line: 57, column: 7, scope: !158)
!198 = !DILocation(line: 57, column: 6, scope: !158)
!199 = !DILocation(line: 57, column: 9, scope: !158)
!200 = !DILocation(line: 57, column: 8, scope: !158)
!201 = !DILocation(line: 57, column: 12, scope: !158)
!202 = !DILocation(line: 58, column: 2, scope: !158)
!203 = !DILocation(line: 54, column: 40, scope: !153)
!204 = !{i1 false, !205, i1 false, i1 true}
!205 = !{double 1.000000e+00, double 2.000000e+00}
!206 = !DILocation(line: 54, column: 19, scope: !153)
!207 = distinct !{!207, !156, !208, !209, !211}
!208 = !DILocation(line: 58, column: 2, scope: !149)
!209 = !{!"llvm.loop.pipeline.enable", i32 1, i1 false, i8 -1, !"user"}
!210 = !DILocation(line: 56, column: 9, scope: !149)
!211 = !{!"llvm.loop.name", !"VITIS_LOOP_54_4"}
!212 = !DILocation(line: 59, column: 5, scope: !150)
!213 = !DILocation(line: 52, column: 43, scope: !144)
!214 = !DILocation(line: 52, column: 22, scope: !144)
!215 = distinct !{!215, !146, !216, !217, !219}
!216 = !DILocation(line: 59, column: 5, scope: !141)
!217 = !{!"llvm.loop.pipeline.enable", i32 1, i1 false, i8 -1, !"user"}
!218 = !DILocation(line: 53, column: 9, scope: !141)
!219 = !{!"llvm.loop.name", !"VITIS_LOOP_52_3"}
!220 = !DILocation(line: 60, column: 3, scope: !111)
!221 = !DILocation(line: 46, column: 41, scope: !103)
!222 = !DILocation(line: 46, column: 20, scope: !103)
!223 = distinct !{!223, !107, !224, !225, !227}
!224 = !DILocation(line: 60, column: 3, scope: !100)
!225 = !{!"llvm.loop.unroll.count", i32 4, !"user"}
!226 = !DILocation(line: 47, column: 9, scope: !100)
!227 = !{!"llvm.loop.name", !"VITIS_LOOP_46_1"}
!228 = !DILocation(line: 64, column: 1, scope: !16)
!229 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!230 = !{i32 0, i1 false, i32 0, i1 false}
!231 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
