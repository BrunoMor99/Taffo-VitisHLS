; ModuleID = '/home/bruno/Desktop/benchmarks/mm2/intermediate/output.4.magiclangtmp.ll'
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
  %alphas.u3_29fixp = alloca i32, align 4, !taffo.info !27
  %betas.u3_29fixp = alloca i32, align 4, !taffo.info !27
  %As.s16_16fixp = alloca i32*, align 8, !taffo.info !30, !taffo.target !33
  %Bs.s16_16fixp = alloca i32*, align 8, !taffo.info !30, !taffo.target !34
  %Cs.s16_16fixp = alloca i32*, align 8, !taffo.info !30, !taffo.target !35
  %Ds.s16_16fixp = alloca i32*, align 8, !taffo.info !30, !taffo.target !36
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
  %4 = bitcast i32* %alphas.u3_29fixp to i8*, !dbg !68, !taffo.info !69
  %5 = bitcast i8* %4 to i8*, !taffo.info !69
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !68, !taffo.info !70
  call void @llvm.dbg.declare(metadata !9, metadata !71, metadata !DIExpression()), !dbg !72
  %6 = load float, float* %alpha.addr, align 4, !dbg !73
  %7 = fmul float 0x41C0000000000000, %6, !dbg !74, !taffo.info !70
  %8 = fptoui float %7 to i32, !dbg !74, !taffo.info !70
  store i32 %8, i32* %alphas.u3_29fixp, align 4, !dbg !74, !taffo.info !70
  %9 = bitcast i32* %betas.u3_29fixp to i8*, !dbg !75, !taffo.info !69
  %10 = bitcast i8* %9 to i8*, !taffo.info !69
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #4, !dbg !75, !taffo.info !70
  call void @llvm.dbg.declare(metadata !9, metadata !76, metadata !DIExpression()), !dbg !77
  %11 = load float, float* %beta.addr, align 4, !dbg !78
  %12 = fmul float 0x41C0000000000000, %11, !dbg !79, !taffo.info !70
  %13 = fptoui float %12 to i32, !dbg !79, !taffo.info !70
  store i32 %13, i32* %betas.u3_29fixp, align 4, !dbg !79, !taffo.info !70
  %14 = bitcast i32** %As.s16_16fixp to i8*, !dbg !80, !taffo.info !81, !taffo.target !33
  %15 = bitcast i8* %14 to i8*, !taffo.info !81, !taffo.target !33
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %15) #4, !dbg !80, !taffo.info !70, !taffo.target !33
  call void @llvm.dbg.declare(metadata !9, metadata !82, metadata !DIExpression()), !dbg !83
  %16 = load float*, float** %A.addr, align 8, !dbg !84
  %17 = bitcast float* %16 to i32*
  store i32* %17, i32** %As.s16_16fixp, align 8, !dbg !85, !taffo.info !70, !taffo.target !33
  %18 = bitcast i32** %Bs.s16_16fixp to i8*, !dbg !86, !taffo.info !81, !taffo.target !34
  %19 = bitcast i8* %18 to i8*, !taffo.info !81, !taffo.target !34
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %19) #4, !dbg !86, !taffo.info !70, !taffo.target !34
  call void @llvm.dbg.declare(metadata !9, metadata !87, metadata !DIExpression()), !dbg !88
  %20 = load float*, float** %B.addr, align 8, !dbg !89
  %21 = bitcast float* %20 to i32*
  store i32* %21, i32** %Bs.s16_16fixp, align 8, !dbg !90, !taffo.info !70, !taffo.target !34
  %22 = bitcast i32** %Cs.s16_16fixp to i8*, !dbg !91, !taffo.info !81, !taffo.target !35
  %23 = bitcast i8* %22 to i8*, !taffo.info !81, !taffo.target !35
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %23) #4, !dbg !91, !taffo.info !70, !taffo.target !35
  call void @llvm.dbg.declare(metadata !9, metadata !92, metadata !DIExpression()), !dbg !93
  %24 = load float*, float** %C.addr, align 8, !dbg !94
  %25 = bitcast float* %24 to i32*
  store i32* %25, i32** %Cs.s16_16fixp, align 8, !dbg !95, !taffo.info !70, !taffo.target !35
  %26 = bitcast i32** %Ds.s16_16fixp to i8*, !dbg !96, !taffo.info !81, !taffo.target !36
  %27 = bitcast i8* %26 to i8*, !taffo.info !81, !taffo.target !36
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %27) #4, !dbg !96, !taffo.info !70, !taffo.target !36
  call void @llvm.dbg.declare(metadata !9, metadata !97, metadata !DIExpression()), !dbg !98
  %28 = load float*, float** %D.addr, align 8, !dbg !99, !taffo.info !1
  %29 = bitcast float* %28 to i32*, !taffo.info !1
  store i32* %29, i32** %Ds.s16_16fixp, align 8, !dbg !100, !taffo.info !70, !taffo.target !36
  %30 = bitcast [256 x float]* %tmp to i8*, !dbg !101
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* %30) #4, !dbg !101
  call void @llvm.dbg.declare(metadata [256 x float]* %tmp, metadata !102, metadata !DIExpression()), !dbg !106
  %tmp7 = bitcast [256 x float]* %tmp to i8*, !dbg !101
  %31 = bitcast i32* %i to i8*, !dbg !107, !taffo.info !70
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %31) #4, !dbg !107, !taffo.info !70
  call void @llvm.dbg.declare(metadata i32* %i, metadata !108, metadata !DIExpression()), !dbg !109
  %32 = bitcast i32* %j to i8*, !dbg !110, !taffo.info !70
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %32) #4, !dbg !110, !taffo.info !70
  call void @llvm.dbg.declare(metadata i32* %j, metadata !111, metadata !DIExpression()), !dbg !112
  %33 = bitcast i32* %k to i8*, !dbg !113, !taffo.info !70
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %33) #4, !dbg !113, !taffo.info !70
  call void @llvm.dbg.declare(metadata i32* %k, metadata !114, metadata !DIExpression()), !dbg !115
  br label %VITIS_LOOP_53_1, !dbg !113

VITIS_LOOP_53_1:                                  ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !116, !taffo.info !70
  br label %for.cond, !dbg !118

for.cond:                                         ; preds = %for.inc35, %VITIS_LOOP_53_1
  %34 = load i32, i32* %i, align 4, !dbg !119, !taffo.info !37
  %cmp = icmp slt i32 %34, 16, !dbg !121, !taffo.info !122
  br i1 %cmp, label %for.body, label %for.end37, !dbg !124, !taffo.info !70

for.body:                                         ; preds = %for.cond
  br label %VITIS_LOOP_55_2, !dbg !125

VITIS_LOOP_55_2:                                  ; preds = %for.body
  store i32 0, i32* %j, align 4, !dbg !126, !taffo.info !70
  br label %for.cond11, !dbg !129

for.cond11:                                       ; preds = %for.inc32, %VITIS_LOOP_55_2
  %35 = load i32, i32* %j, align 4, !dbg !130, !taffo.info !37
  %cmp12 = icmp slt i32 %35, 16, !dbg !132, !taffo.info !122
  br i1 %cmp12, label %for.body13, label %for.end34, !dbg !133, !taffo.info !70

for.body13:                                       ; preds = %for.cond11
  %36 = load i32, i32* %i, align 4, !dbg !134, !taffo.info !37
  %37 = load i32, i32* %nj, align 4, !dbg !136, !taffo.info !25
  %mul = mul nsw i32 %36, %37, !dbg !137, !taffo.info !138
  %38 = load i32, i32* %j, align 4, !dbg !139, !taffo.info !37
  %add = add nsw i32 %mul, %38, !dbg !140, !taffo.info !138
  %idxprom = sext i32 %add to i64, !dbg !141, !taffo.info !138
  %arrayidx = getelementptr inbounds [256 x float], [256 x float]* %tmp, i64 0, i64 %idxprom, !dbg !141, !taffo.info !142
  %arrayidx.haxfixp.u0_32fixp = bitcast float* %arrayidx to i32*, !dbg !141, !taffo.info !142
  store i32 0, i32* %arrayidx.haxfixp.u0_32fixp, align 4, !dbg !144, !taffo.info !70
  br label %VITIS_LOOP_58_3, !dbg !141

VITIS_LOOP_58_3:                                  ; preds = %for.body13
  store i32 0, i32* %k, align 4, !dbg !145, !taffo.info !70
  br label %for.cond14, !dbg !147

for.cond14:                                       ; preds = %for.inc, %VITIS_LOOP_58_3
  %39 = load i32, i32* %k, align 4, !dbg !148, !taffo.info !37
  %cmp15 = icmp slt i32 %39, 16, !dbg !150, !taffo.info !122
  br i1 %cmp15, label %for.body16, label %for.end, !dbg !151, !taffo.info !70

for.body16:                                       ; preds = %for.cond14
  %u3_29fixp3 = load i32, i32* %alphas.u3_29fixp, align 4, !dbg !152, !taffo.info !27
  %s16_16fixp2 = load i32*, i32** %As.s16_16fixp, align 8, !dbg !154, !taffo.info !30, !taffo.target !33
  %40 = load i32, i32* %i, align 4, !dbg !155, !taffo.info !37
  %41 = load i32, i32* %nk, align 4, !dbg !156, !taffo.info !25
  %mul17 = mul nsw i32 %40, %41, !dbg !157, !taffo.info !138
  %42 = load i32, i32* %k, align 4, !dbg !158, !taffo.info !37
  %add18 = add nsw i32 %mul17, %42, !dbg !159, !taffo.info !138
  %idxprom19 = sext i32 %add18 to i64, !dbg !154, !taffo.info !138
  %arrayidx20.s16_16fixp = getelementptr inbounds i32, i32* %s16_16fixp2, i64 %idxprom19, !dbg !154, !taffo.info !30, !taffo.target !33
  %s16_16fixp9 = load i32, i32* %arrayidx20.s16_16fixp, align 4, !dbg !154, !taffo.info !30, !taffo.target !33
  %43 = zext i32 %u3_29fixp3 to i64, !dbg !160, !taffo.info !27
  %44 = sext i32 %s16_16fixp9 to i64, !dbg !160, !taffo.info !30, !taffo.target !33
  %45 = mul i64 %43, %44, !dbg !160, !taffo.info !161, !taffo.target !33
  %46 = lshr i64 %45, 13, !dbg !160, !taffo.info !161, !taffo.target !33
  %mul21.u0_32fixp = trunc i64 %46 to i32, !dbg !163, !taffo.info !142, !taffo.target !33
  %s16_16fixp = load i32*, i32** %Bs.s16_16fixp, align 8, !dbg !160, !taffo.info !30, !taffo.target !34
  %47 = load i32, i32* %k, align 4, !dbg !164, !taffo.info !37
  %48 = load i32, i32* %nj, align 4, !dbg !165, !taffo.info !25
  %mul22 = mul nsw i32 %47, %48, !dbg !166, !taffo.info !138
  %49 = load i32, i32* %j, align 4, !dbg !167, !taffo.info !37
  %add23 = add nsw i32 %mul22, %49, !dbg !168, !taffo.info !138
  %idxprom24 = sext i32 %add23 to i64, !dbg !160, !taffo.info !138
  %arrayidx25.s16_16fixp = getelementptr inbounds i32, i32* %s16_16fixp, i64 %idxprom24, !dbg !160, !taffo.info !30, !taffo.target !34
  %s16_16fixp7 = load i32, i32* %arrayidx25.s16_16fixp, align 4, !dbg !160, !taffo.info !30, !taffo.target !34
  %50 = zext i32 %mul21.u0_32fixp to i64, !dbg !169, !taffo.info !142, !taffo.target !33
  %51 = sext i32 %s16_16fixp7 to i64, !dbg !169, !taffo.info !30, !taffo.target !34
  %52 = mul i64 %50, %51, !dbg !169, !taffo.info !170, !taffo.target !34
  %53 = lshr i64 %52, 16, !dbg !169, !taffo.info !170, !taffo.target !34
  %mul26.u0_32fixp = trunc i64 %53 to i32, !dbg !172, !taffo.info !142, !taffo.target !34
  %54 = load i32, i32* %i, align 4, !dbg !169, !taffo.info !37
  %55 = load i32, i32* %nj, align 4, !dbg !173, !taffo.info !25
  %mul27 = mul nsw i32 %54, %55, !dbg !174, !taffo.info !138
  %56 = load i32, i32* %j, align 4, !dbg !175, !taffo.info !37
  %add28 = add nsw i32 %mul27, %56, !dbg !176, !taffo.info !138
  %idxprom29 = sext i32 %add28 to i64, !dbg !177, !taffo.info !138
  %arrayidx30 = getelementptr inbounds [256 x float], [256 x float]* %tmp, i64 0, i64 %idxprom29, !dbg !177, !taffo.info !142
  %arrayidx30.haxfixp.u0_32fixp = bitcast float* %arrayidx30 to i32*, !dbg !177, !taffo.info !142
  %u0_32fixp = load i32, i32* %arrayidx30.haxfixp.u0_32fixp, align 4, !dbg !178, !taffo.info !142
  %add31.u0_32fixp = add i32 %u0_32fixp, %mul26.u0_32fixp, !dbg !178, !taffo.info !142
  store i32 %add31.u0_32fixp, i32* %arrayidx30.haxfixp.u0_32fixp, align 4, !dbg !178, !taffo.info !70
  br label %for.inc, !dbg !179

for.inc:                                          ; preds = %for.body16
  %57 = load i32, i32* %k, align 4, !dbg !180, !taffo.info !37
  %inc = add nsw i32 %57, 1, !dbg !180, !taffo.info !122
  store i32 %inc, i32* %k, align 4, !dbg !180, !taffo.info !70
  br label %for.cond14, !dbg !181, !llvm.loop !182

for.end:                                          ; preds = %for.cond14
  br label %for.inc32, !dbg !185

for.inc32:                                        ; preds = %for.end
  %58 = load i32, i32* %j, align 4, !dbg !186, !taffo.info !37
  %inc33 = add nsw i32 %58, 1, !dbg !186, !taffo.info !122
  store i32 %inc33, i32* %j, align 4, !dbg !186, !taffo.info !70
  br label %for.cond11, !dbg !187, !llvm.loop !188

for.end34:                                        ; preds = %for.cond11
  br label %for.inc35, !dbg !191

for.inc35:                                        ; preds = %for.end34
  %59 = load i32, i32* %i, align 4, !dbg !192, !taffo.info !37
  %inc36 = add nsw i32 %59, 1, !dbg !192, !taffo.info !122
  store i32 %inc36, i32* %i, align 4, !dbg !192, !taffo.info !70
  br label %for.cond, !dbg !193, !llvm.loop !194

for.end37:                                        ; preds = %for.cond
  br label %VITIS_LOOP_65_4, !dbg !195

VITIS_LOOP_65_4:                                  ; preds = %for.end37
  store i32 0, i32* %i, align 4, !dbg !197, !taffo.info !70
  br label %for.cond38, !dbg !199

for.cond38:                                       ; preds = %for.inc72, %VITIS_LOOP_65_4
  %60 = load i32, i32* %i, align 4, !dbg !200, !taffo.info !37
  %cmp39 = icmp slt i32 %60, 16, !dbg !202, !taffo.info !122
  br i1 %cmp39, label %for.body40, label %for.end74, !dbg !203, !taffo.info !70

for.body40:                                       ; preds = %for.cond38
  br label %VITIS_LOOP_67_5, !dbg !204

VITIS_LOOP_67_5:                                  ; preds = %for.body40
  store i32 0, i32* %j, align 4, !dbg !205, !taffo.info !70
  br label %for.cond41, !dbg !208

for.cond41:                                       ; preds = %for.inc69, %VITIS_LOOP_67_5
  %61 = load i32, i32* %j, align 4, !dbg !209, !taffo.info !37
  %cmp42 = icmp slt i32 %61, 16, !dbg !211, !taffo.info !122
  br i1 %cmp42, label %for.body43, label %for.end71, !dbg !212, !taffo.info !70

for.body43:                                       ; preds = %for.cond41
  %u3_29fixp = load i32, i32* %betas.u3_29fixp, align 4, !dbg !213, !taffo.info !27
  %s16_16fixp5 = load i32*, i32** %Ds.s16_16fixp, align 8, !dbg !215, !taffo.info !30, !taffo.target !36
  %62 = load i32, i32* %i, align 4, !dbg !216, !taffo.info !37
  %63 = load i32, i32* %nl, align 4, !dbg !217, !taffo.info !25
  %mul44 = mul nsw i32 %62, %63, !dbg !218, !taffo.info !219
  %64 = load i32, i32* %j, align 4, !dbg !221, !taffo.info !37
  %add45 = add nsw i32 %mul44, %64, !dbg !222, !taffo.info !223
  %idxprom46 = sext i32 %add45 to i64, !dbg !215, !taffo.info !223
  %arrayidx47.s16_16fixp = getelementptr inbounds i32, i32* %s16_16fixp5, i64 %idxprom46, !dbg !215, !taffo.info !30, !taffo.target !36
  %s16_16fixp11 = load i32, i32* %arrayidx47.s16_16fixp, align 4, !dbg !225, !taffo.info !30, !taffo.target !36
  %65 = sext i32 %s16_16fixp11 to i64, !dbg !225, !taffo.info !30, !taffo.target !36
  %66 = zext i32 %u3_29fixp to i64, !dbg !225, !taffo.info !27
  %67 = mul i64 %65, %66, !dbg !225, !taffo.info !226, !taffo.target !36
  %68 = lshr i64 %67, 13, !dbg !225, !taffo.info !226, !taffo.target !36
  %mul48.u0_32fixp = trunc i64 %68 to i32, !dbg !225, !taffo.info !142, !taffo.target !36
  %69 = lshr i32 %mul48.u0_32fixp, 16, !dbg !225, !taffo.info !142, !taffo.target !36
  store i32 %69, i32* %arrayidx47.s16_16fixp, align 4, !dbg !225, !taffo.info !70
  br label %VITIS_LOOP_70_6, !dbg !215

VITIS_LOOP_70_6:                                  ; preds = %for.body43
  store i32 0, i32* %k, align 4, !dbg !228, !taffo.info !70
  br label %for.cond49, !dbg !230

for.cond49:                                       ; preds = %for.inc66, %VITIS_LOOP_70_6
  %70 = load i32, i32* %k, align 4, !dbg !231, !taffo.info !37
  %cmp50 = icmp slt i32 %70, 16, !dbg !233, !taffo.info !122
  br i1 %cmp50, label %for.body51, label %for.end68, !dbg !234, !taffo.info !70

for.body51:                                       ; preds = %for.cond49
  %71 = load i32, i32* %i, align 4, !dbg !235, !taffo.info !37
  %72 = load i32, i32* %nj, align 4, !dbg !237, !taffo.info !25
  %mul52 = mul nsw i32 %71, %72, !dbg !238, !taffo.info !219
  %73 = load i32, i32* %k, align 4, !dbg !239, !taffo.info !37
  %add53 = add nsw i32 %mul52, %73, !dbg !240, !taffo.info !223
  %idxprom54 = sext i32 %add53 to i64, !dbg !241, !taffo.info !223
  %arrayidx55 = getelementptr inbounds [256 x float], [256 x float]* %tmp, i64 0, i64 %idxprom54, !dbg !241, !taffo.info !142
  %arrayidx55.haxfixp.u0_32fixp = bitcast float* %arrayidx55 to i32*, !dbg !241, !taffo.info !142
  %u0_32fixp6 = load i32, i32* %arrayidx55.haxfixp.u0_32fixp, align 4, !dbg !241, !taffo.info !142
  %s16_16fixp1 = load i32*, i32** %Cs.s16_16fixp, align 8, !dbg !242, !taffo.info !30, !taffo.target !35
  %74 = load i32, i32* %k, align 4, !dbg !243, !taffo.info !37
  %75 = load i32, i32* %nl, align 4, !dbg !244, !taffo.info !25
  %mul56 = mul nsw i32 %74, %75, !dbg !245, !taffo.info !246
  %76 = load i32, i32* %j, align 4, !dbg !248, !taffo.info !37
  %add57 = add nsw i32 %mul56, %76, !dbg !249, !taffo.info !250
  %idxprom58 = sext i32 %add57 to i64, !dbg !242, !taffo.info !250
  %arrayidx59.s16_16fixp = getelementptr inbounds i32, i32* %s16_16fixp1, i64 %idxprom58, !dbg !242, !taffo.info !30, !taffo.target !35
  %s16_16fixp8 = load i32, i32* %arrayidx59.s16_16fixp, align 4, !dbg !242, !taffo.info !30, !taffo.target !35
  %77 = zext i32 %u0_32fixp6 to i64, !dbg !252, !taffo.info !142
  %78 = sext i32 %s16_16fixp8 to i64, !dbg !252, !taffo.info !30, !taffo.target !35
  %79 = mul i64 %77, %78, !dbg !252, !taffo.info !170, !taffo.target !35
  %80 = lshr i64 %79, 16, !dbg !252, !taffo.info !170, !taffo.target !35
  %mul60.u0_32fixp = trunc i64 %80 to i32, !dbg !253, !taffo.info !142, !taffo.target !35
  %s16_16fixp4 = load i32*, i32** %Ds.s16_16fixp, align 8, !dbg !252, !taffo.info !30, !taffo.target !36
  %81 = load i32, i32* %i, align 4, !dbg !254, !taffo.info !37
  %82 = load i32, i32* %nl, align 4, !dbg !255, !taffo.info !25
  %mul61 = mul nsw i32 %81, %82, !dbg !256, !taffo.info !219
  %83 = load i32, i32* %j, align 4, !dbg !257, !taffo.info !37
  %add62 = add nsw i32 %mul61, %83, !dbg !258, !taffo.info !259
  %idxprom63 = sext i32 %add62 to i64, !dbg !252, !taffo.info !259
  %arrayidx64.s16_16fixp = getelementptr inbounds i32, i32* %s16_16fixp4, i64 %idxprom63, !dbg !252, !taffo.info !30, !taffo.target !36
  %s16_16fixp10 = load i32, i32* %arrayidx64.s16_16fixp, align 4, !dbg !261, !taffo.info !30, !taffo.target !36
  %84 = shl i32 %s16_16fixp10, 16, !dbg !261, !taffo.info !30, !taffo.target !36
  %add65.u0_32fixp = add i32 %84, %mul60.u0_32fixp, !dbg !261, !taffo.info !142, !taffo.target !36
  %85 = lshr i32 %add65.u0_32fixp, 16, !dbg !261, !taffo.info !142, !taffo.target !36
  store i32 %85, i32* %arrayidx64.s16_16fixp, align 4, !dbg !261, !taffo.info !70, !taffo.target !36
  br label %for.inc66, !dbg !262

for.inc66:                                        ; preds = %for.body51
  %86 = load i32, i32* %k, align 4, !dbg !263, !taffo.info !37
  %inc67 = add nsw i32 %86, 1, !dbg !263, !taffo.info !264
  store i32 %inc67, i32* %k, align 4, !dbg !263, !taffo.info !70
  br label %for.cond49, !dbg !266, !llvm.loop !267

for.end68:                                        ; preds = %for.cond49
  br label %for.inc69, !dbg !270

for.inc69:                                        ; preds = %for.end68
  %87 = load i32, i32* %j, align 4, !dbg !271, !taffo.info !37
  %inc70 = add nsw i32 %87, 1, !dbg !271, !taffo.info !264
  store i32 %inc70, i32* %j, align 4, !dbg !271, !taffo.info !70
  br label %for.cond41, !dbg !272, !llvm.loop !273

for.end71:                                        ; preds = %for.cond41
  br label %for.inc72, !dbg !276

for.inc72:                                        ; preds = %for.end71
  %88 = load i32, i32* %i, align 4, !dbg !277, !taffo.info !37
  %inc73 = add nsw i32 %88, 1, !dbg !277, !taffo.info !264
  store i32 %inc73, i32* %i, align 4, !dbg !277, !taffo.info !70
  br label %for.cond38, !dbg !278, !llvm.loop !279

for.end74:                                        ; preds = %for.cond38
  %89 = bitcast i32* %k to i8*, !dbg !282, !taffo.info !283
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %89) #4, !dbg !282, !taffo.info !70
  %90 = bitcast i32* %j to i8*, !dbg !282, !taffo.info !283
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %90) #4, !dbg !282, !taffo.info !70
  %91 = bitcast i32* %i to i8*, !dbg !282, !taffo.info !37
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %91) #4, !dbg !282, !taffo.info !70
  %92 = bitcast [256 x float]* %tmp to i8*, !dbg !282, !taffo.info !1
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* %92) #4, !dbg !282
  %93 = bitcast i32** %Ds.s16_16fixp to i8*, !dbg !282, !taffo.info !81, !taffo.target !36
  %94 = bitcast i8* %93 to i8*, !taffo.info !81, !taffo.target !36
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %94) #4, !dbg !282, !taffo.info !70, !taffo.target !36
  %95 = bitcast i32** %Cs.s16_16fixp to i8*, !dbg !282, !taffo.info !81, !taffo.target !35
  %96 = bitcast i8* %95 to i8*, !taffo.info !81, !taffo.target !35
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %96) #4, !dbg !282, !taffo.info !70, !taffo.target !35
  %97 = bitcast i32** %Bs.s16_16fixp to i8*, !dbg !282, !taffo.info !81, !taffo.target !34
  %98 = bitcast i8* %97 to i8*, !taffo.info !81, !taffo.target !34
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %98) #4, !dbg !282, !taffo.info !70, !taffo.target !34
  %99 = bitcast i32** %As.s16_16fixp to i8*, !dbg !282, !taffo.info !81, !taffo.target !33
  %100 = bitcast i8* %99 to i8*, !taffo.info !81, !taffo.target !33
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %100) #4, !dbg !282, !taffo.info !70, !taffo.target !33
  %101 = bitcast i32* %betas.u3_29fixp to i8*, !dbg !282, !taffo.info !69
  %102 = bitcast i8* %101 to i8*, !taffo.info !69
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %102) #4, !dbg !282, !taffo.info !70
  %103 = bitcast i32* %alphas.u3_29fixp to i8*, !dbg !282, !taffo.info !69
  %104 = bitcast i8* %103 to i8*, !taffo.info !69
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %104) #4, !dbg !282, !taffo.info !70
  %105 = bitcast i32* %nl to i8*, !dbg !282, !taffo.info !25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %105) #4, !dbg !282
  %106 = bitcast i32* %nk to i8*, !dbg !282, !taffo.info !25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %106) #4, !dbg !282
  %107 = bitcast i32* %nj to i8*, !dbg !282, !taffo.info !25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %107) #4, !dbg !282
  %108 = bitcast i32* %ni to i8*, !dbg !282, !taffo.info !25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %108) #4, !dbg !282
  ret void, !dbg !282
}

; Function Attrs: nounwind readnone speculatable
declare !taffo.funinfo !285 void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: inaccessiblememonly nounwind
declare !taffo.funinfo !9 void @llvm.sideeffect() #2

; Function Attrs: argmemonly nounwind
declare !taffo.funinfo !286 void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare !taffo.funinfo !287 void @llvm.var.annotation(i8*, i8*, i8*, i32) #4

; Function Attrs: argmemonly nounwind
declare !taffo.funinfo !286 void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #3

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
!12 = !{i32 2, !"Debug Info Version", i32 0}
!13 = !{i32 1, !"wchar_size", i32 4}
!14 = distinct !DISubprogram(name: "mm2", scope: !15, file: !15, line: 23, type: !16, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!15 = !DIFile(filename: "mm2_taffo.c", directory: "/home/bruno/Desktop/benchmarks/mm2")
!16 = !DISubroutineType(types: !17)
!17 = !{null, !18, !18, !18, !18, !19, !19}
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!20 = !{!21}
!21 = !{!"user"}
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
!160 = !DILocation(line: 60, column: 46, scope: !153)
!161 = !{!162, !32, i1 false}
!162 = !{!"fixp", i32 64, i32 29}
!163 = !DILocation(line: 60, column: 31, scope: !153)
!164 = !DILocation(line: 60, column: 49, scope: !153)
!165 = !DILocation(line: 60, column: 51, scope: !153)
!166 = !DILocation(line: 60, column: 50, scope: !153)
!167 = !DILocation(line: 60, column: 54, scope: !153)
!168 = !DILocation(line: 60, column: 53, scope: !153)
!169 = !DILocation(line: 60, column: 13, scope: !153)
!170 = !{!171, !32, i1 false}
!171 = !{!"fixp", i32 64, i32 32}
!172 = !DILocation(line: 60, column: 44, scope: !153)
!173 = !DILocation(line: 60, column: 15, scope: !153)
!174 = !DILocation(line: 60, column: 14, scope: !153)
!175 = !DILocation(line: 60, column: 18, scope: !153)
!176 = !DILocation(line: 60, column: 17, scope: !153)
!177 = !DILocation(line: 60, column: 9, scope: !153)
!178 = !DILocation(line: 60, column: 21, scope: !153)
!179 = !DILocation(line: 61, column: 9, scope: !153)
!180 = !DILocation(line: 58, column: 43, scope: !149)
!181 = !DILocation(line: 58, column: 23, scope: !149)
!182 = distinct !{!182, !151, !183, !184}
!183 = !DILocation(line: 61, column: 9, scope: !146)
!184 = !{!"llvm.loop.name", !"VITIS_LOOP_58_3"}
!185 = !DILocation(line: 62, column: 5, scope: !135)
!186 = !DILocation(line: 55, column: 43, scope: !131)
!187 = !DILocation(line: 55, column: 22, scope: !131)
!188 = distinct !{!188, !133, !189, !190}
!189 = !DILocation(line: 62, column: 5, scope: !127)
!190 = !{!"llvm.loop.name", !"VITIS_LOOP_55_2"}
!191 = !DILocation(line: 63, column: 3, scope: !128)
!192 = !DILocation(line: 53, column: 41, scope: !120)
!193 = !DILocation(line: 53, column: 20, scope: !120)
!194 = distinct !{!194, !124, !195, !196}
!195 = !DILocation(line: 63, column: 3, scope: !117)
!196 = !{!"llvm.loop.name", !"VITIS_LOOP_53_1"}
!197 = !DILocation(line: 65, column: 27, scope: !198)
!198 = distinct !DILexicalBlock(scope: !14, file: !15, line: 65, column: 20)
!199 = !DILocation(line: 65, column: 25, scope: !198)
!200 = !DILocation(line: 65, column: 32, scope: !201)
!201 = distinct !DILexicalBlock(scope: !198, file: !15, line: 65, column: 20)
!202 = !DILocation(line: 65, column: 34, scope: !201)
!203 = !DILocation(line: 65, column: 20, scope: !198)
!204 = !DILocation(line: 65, column: 44, scope: !201)
!205 = !DILocation(line: 67, column: 29, scope: !206)
!206 = distinct !DILexicalBlock(scope: !207, file: !15, line: 67, column: 22)
!207 = distinct !DILexicalBlock(scope: !201, file: !15, line: 65, column: 44)
!208 = !DILocation(line: 67, column: 27, scope: !206)
!209 = !DILocation(line: 67, column: 34, scope: !210)
!210 = distinct !DILexicalBlock(scope: !206, file: !15, line: 67, column: 22)
!211 = !DILocation(line: 67, column: 36, scope: !210)
!212 = !DILocation(line: 67, column: 22, scope: !206)
!213 = !DILocation(line: 69, column: 16, scope: !214)
!214 = distinct !DILexicalBlock(scope: !210, file: !15, line: 67, column: 46)
!215 = !DILocation(line: 69, column: 2, scope: !214)
!216 = !DILocation(line: 69, column: 5, scope: !214)
!217 = !DILocation(line: 69, column: 7, scope: !214)
!218 = !DILocation(line: 69, column: 6, scope: !214)
!219 = !{i1 false, !220, i1 false, i1 true}
!220 = !{double 0.000000e+00, double 3.200000e+01}
!221 = !DILocation(line: 69, column: 10, scope: !214)
!222 = !DILocation(line: 69, column: 9, scope: !214)
!223 = !{i1 false, !224, i1 false, i1 true}
!224 = !{double 0.000000e+00, double 3.300000e+01}
!225 = !DILocation(line: 69, column: 13, scope: !214)
!226 = !{!227, !29, i1 false}
!227 = !{!"fixp", i32 64, i32 16}
!228 = !DILocation(line: 70, column: 26, scope: !229)
!229 = distinct !DILexicalBlock(scope: !214, file: !15, line: 70, column: 19)
!230 = !DILocation(line: 70, column: 24, scope: !229)
!231 = !DILocation(line: 70, column: 31, scope: !232)
!232 = distinct !DILexicalBlock(scope: !229, file: !15, line: 70, column: 19)
!233 = !DILocation(line: 70, column: 33, scope: !232)
!234 = !DILocation(line: 70, column: 19, scope: !229)
!235 = !DILocation(line: 72, column: 28, scope: !236)
!236 = distinct !DILexicalBlock(scope: !232, file: !15, line: 70, column: 43)
!237 = !DILocation(line: 72, column: 30, scope: !236)
!238 = !DILocation(line: 72, column: 29, scope: !236)
!239 = !DILocation(line: 72, column: 33, scope: !236)
!240 = !DILocation(line: 72, column: 32, scope: !236)
!241 = !DILocation(line: 72, column: 24, scope: !236)
!242 = !DILocation(line: 72, column: 38, scope: !236)
!243 = !DILocation(line: 72, column: 41, scope: !236)
!244 = !DILocation(line: 72, column: 43, scope: !236)
!245 = !DILocation(line: 72, column: 42, scope: !236)
!246 = !{i1 false, !247, i1 false, i1 true}
!247 = !{double 0.000000e+00, double 1.600000e+01}
!248 = !DILocation(line: 72, column: 46, scope: !236)
!249 = !DILocation(line: 72, column: 45, scope: !236)
!250 = !{i1 false, !251, i1 false, i1 true}
!251 = !{double 0.000000e+00, double 1.800000e+01}
!252 = !DILocation(line: 72, column: 10, scope: !236)
!253 = !DILocation(line: 72, column: 36, scope: !236)
!254 = !DILocation(line: 72, column: 13, scope: !236)
!255 = !DILocation(line: 72, column: 15, scope: !236)
!256 = !DILocation(line: 72, column: 14, scope: !236)
!257 = !DILocation(line: 72, column: 18, scope: !236)
!258 = !DILocation(line: 72, column: 17, scope: !236)
!259 = !{i1 false, !260, i1 false, i1 true}
!260 = !{double 0.000000e+00, double 3.400000e+01}
!261 = !DILocation(line: 72, column: 21, scope: !236)
!262 = !DILocation(line: 73, column: 9, scope: !236)
!263 = !DILocation(line: 70, column: 39, scope: !232)
!264 = !{i1 false, !265, i1 false, i1 true}
!265 = !{double 1.000000e+00, double 2.000000e+00}
!266 = !DILocation(line: 70, column: 19, scope: !232)
!267 = distinct !{!267, !234, !268, !269}
!268 = !DILocation(line: 73, column: 9, scope: !229)
!269 = !{!"llvm.loop.name", !"VITIS_LOOP_70_6"}
!270 = !DILocation(line: 74, column: 5, scope: !214)
!271 = !DILocation(line: 67, column: 43, scope: !210)
!272 = !DILocation(line: 67, column: 22, scope: !210)
!273 = distinct !{!273, !212, !274, !275}
!274 = !DILocation(line: 74, column: 5, scope: !206)
!275 = !{!"llvm.loop.name", !"VITIS_LOOP_67_5"}
!276 = !DILocation(line: 75, column: 3, scope: !207)
!277 = !DILocation(line: 65, column: 41, scope: !201)
!278 = !DILocation(line: 65, column: 20, scope: !201)
!279 = distinct !{!279, !203, !280, !281}
!280 = !DILocation(line: 75, column: 3, scope: !198)
!281 = !{!"llvm.loop.name", !"VITIS_LOOP_65_4"}
!282 = !DILocation(line: 77, column: 1, scope: !14)
!283 = !{i1 false, !284, i1 false, i1 true}
!284 = !{double 0.000000e+00, double 1.000000e+00}
!285 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!286 = !{i32 0, i1 false, i32 0, i1 false}
!287 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
