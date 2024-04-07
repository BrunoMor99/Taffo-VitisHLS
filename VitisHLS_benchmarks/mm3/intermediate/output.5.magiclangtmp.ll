; ModuleID = '/home/bruno/Desktop/benchmarks/mm3/intermediate/output.4.magiclangtmp.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.global_ctors = appending global [0 x { i32, void ()*, i8* }] zeroinitializer, !taffo.structinfo !0
@.str = private unnamed_addr constant [37 x i8] c"target('A') scalar(range(-100, 100))\00", section "llvm.metadata", !taffo.info !3
@.str.1 = private unnamed_addr constant [12 x i8] c"mm3_taffo.c\00", section "llvm.metadata", !taffo.info !3
@.str.2 = private unnamed_addr constant [37 x i8] c"target('B') scalar(range(-100, 100))\00", section "llvm.metadata", !taffo.info !3
@.str.3 = private unnamed_addr constant [37 x i8] c"target('C') scalar(range(-100, 100))\00", section "llvm.metadata", !taffo.info !3
@.str.4 = private unnamed_addr constant [37 x i8] c"target('D') scalar(range(-100, 100))\00", section "llvm.metadata", !taffo.info !3
@.str.5 = private unnamed_addr constant [41 x i8] c"target('E') scalar(range(-16384, 16384))\00", section "llvm.metadata", !taffo.info !3
@.str.6 = private unnamed_addr constant [41 x i8] c"target('F') scalar(range(-16384, 16384))\00", section "llvm.metadata", !taffo.info !3
@.str.7 = private unnamed_addr constant [41 x i8] c"target('G') scalar(range(-16384, 16384))\00", section "llvm.metadata", !taffo.info !3
@.str.8 = private unnamed_addr constant [9 x i8] c"scalar()\00", section "llvm.metadata", !taffo.info !5

; Function Attrs: nounwind
define void @mm3(float* %A, float* %B, float* %C, float* %D, float* %E, float* %F, float* %G) #0 !dbg !14 !fpga.function.pragma !20 !taffo.start !23 !taffo.funinfo !24 {
entry:
  %A.addr = alloca float*, align 8
  %B.addr = alloca float*, align 8
  %C.addr = alloca float*, align 8
  %D.addr = alloca float*, align 8
  %E.addr = alloca float*, align 8, !taffo.info !1
  %F.addr = alloca float*, align 8, !taffo.info !1
  %G.addr = alloca float*, align 8, !taffo.info !1
  %ni = alloca i32, align 4, !taffo.info !25
  %nj = alloca i32, align 4, !taffo.info !25
  %nk = alloca i32, align 4, !taffo.info !25
  %nl = alloca i32, align 4, !taffo.info !25
  %nm = alloca i32, align 4, !taffo.info !25
  %As.s8_24fixp = alloca i32*, align 8, !taffo.info !27, !taffo.target !30
  %Bs.s8_24fixp = alloca i32*, align 8, !taffo.info !27, !taffo.target !31
  %Cs.s8_24fixp = alloca i32*, align 8, !taffo.info !27, !taffo.target !32
  %Ds.s8_24fixp = alloca i32*, align 8, !taffo.info !27, !taffo.target !33
  %Es.s16_16fixp = alloca i32*, align 8, !taffo.info !34, !taffo.target !37
  %Fs.s16_16fixp = alloca i32*, align 8, !taffo.info !34, !taffo.target !38
  %Gs.s16_16fixp = alloca i32*, align 8, !taffo.info !34, !taffo.target !39
  %i = alloca i32, align 4, !taffo.info !40
  %j = alloca i32, align 4, !taffo.info !42
  %k = alloca i32, align 4, !taffo.info !40
  store float* %A, float** %A.addr, align 8
  call void @llvm.dbg.declare(metadata float** %A.addr, metadata !44, metadata !DIExpression()), !dbg !45
  store float* %B, float** %B.addr, align 8
  call void @llvm.dbg.declare(metadata float** %B.addr, metadata !46, metadata !DIExpression()), !dbg !47
  store float* %C, float** %C.addr, align 8
  call void @llvm.dbg.declare(metadata float** %C.addr, metadata !48, metadata !DIExpression()), !dbg !49
  store float* %D, float** %D.addr, align 8
  call void @llvm.dbg.declare(metadata float** %D.addr, metadata !50, metadata !DIExpression()), !dbg !51
  store float* %E, float** %E.addr, align 8
  call void @llvm.dbg.declare(metadata float** %E.addr, metadata !52, metadata !DIExpression()), !dbg !53
  store float* %F, float** %F.addr, align 8
  call void @llvm.dbg.declare(metadata float** %F.addr, metadata !54, metadata !DIExpression()), !dbg !55
  store float* %G, float** %G.addr, align 8
  call void @llvm.dbg.declare(metadata float** %G.addr, metadata !56, metadata !DIExpression()), !dbg !57
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %A, [0 x i8] zeroinitializer, i64 256, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !58
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %B, [0 x i8] zeroinitializer, i64 256, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !59
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %C, [0 x i8] zeroinitializer, i64 256, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !60
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %D, [0 x i8] zeroinitializer, i64 256, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !61
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %E, [0 x i8] zeroinitializer, i64 256, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !62
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %F, [0 x i8] zeroinitializer, i64 256, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !63
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %G, [0 x i8] zeroinitializer, i64 256, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !64
  %0 = bitcast i32* %ni to i8*, !dbg !65
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !65
  call void @llvm.dbg.declare(metadata i32* %ni, metadata !66, metadata !DIExpression()), !dbg !68
  store i32 16, i32* %ni, align 4, !dbg !68
  %1 = bitcast i32* %nj to i8*, !dbg !69
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !69
  call void @llvm.dbg.declare(metadata i32* %nj, metadata !70, metadata !DIExpression()), !dbg !71
  store i32 16, i32* %nj, align 4, !dbg !71
  %2 = bitcast i32* %nk to i8*, !dbg !72
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !72
  call void @llvm.dbg.declare(metadata i32* %nk, metadata !73, metadata !DIExpression()), !dbg !74
  store i32 16, i32* %nk, align 4, !dbg !74
  %3 = bitcast i32* %nl to i8*, !dbg !75
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !75
  call void @llvm.dbg.declare(metadata i32* %nl, metadata !76, metadata !DIExpression()), !dbg !77
  store i32 16, i32* %nl, align 4, !dbg !77
  %4 = bitcast i32* %nm to i8*, !dbg !78
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !78
  call void @llvm.dbg.declare(metadata i32* %nm, metadata !79, metadata !DIExpression()), !dbg !80
  store i32 16, i32* %nm, align 4, !dbg !80
  %5 = bitcast i32** %As.s8_24fixp to i8*, !dbg !81, !taffo.info !82, !taffo.target !30
  %6 = bitcast i8* %5 to i8*, !taffo.info !82, !taffo.target !30
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %6) #4, !dbg !81, !taffo.info !83, !taffo.target !30
  call void @llvm.dbg.declare(metadata !9, metadata !84, metadata !DIExpression()), !dbg !85
  %7 = load float*, float** %A.addr, align 8, !dbg !86
  %8 = bitcast float* %7 to i32*
  store i32* %8, i32** %As.s8_24fixp, align 8, !dbg !87, !taffo.info !83, !taffo.target !30
  %9 = bitcast i32** %Bs.s8_24fixp to i8*, !dbg !88, !taffo.info !82, !taffo.target !31
  %10 = bitcast i8* %9 to i8*, !taffo.info !82, !taffo.target !31
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %10) #4, !dbg !88, !taffo.info !83, !taffo.target !31
  call void @llvm.dbg.declare(metadata !9, metadata !89, metadata !DIExpression()), !dbg !90
  %11 = load float*, float** %B.addr, align 8, !dbg !91
  %12 = bitcast float* %11 to i32*
  store i32* %12, i32** %Bs.s8_24fixp, align 8, !dbg !92, !taffo.info !83, !taffo.target !31
  %13 = bitcast i32** %Cs.s8_24fixp to i8*, !dbg !93, !taffo.info !82, !taffo.target !32
  %14 = bitcast i8* %13 to i8*, !taffo.info !82, !taffo.target !32
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %14) #4, !dbg !93, !taffo.info !83, !taffo.target !32
  call void @llvm.dbg.declare(metadata !9, metadata !94, metadata !DIExpression()), !dbg !95
  %15 = load float*, float** %C.addr, align 8, !dbg !96
  %16 = bitcast float* %15 to i32*
  store i32* %16, i32** %Cs.s8_24fixp, align 8, !dbg !97, !taffo.info !83, !taffo.target !32
  %17 = bitcast i32** %Ds.s8_24fixp to i8*, !dbg !98, !taffo.info !82, !taffo.target !33
  %18 = bitcast i8* %17 to i8*, !taffo.info !82, !taffo.target !33
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %18) #4, !dbg !98, !taffo.info !83, !taffo.target !33
  call void @llvm.dbg.declare(metadata !9, metadata !99, metadata !DIExpression()), !dbg !100
  %19 = load float*, float** %D.addr, align 8, !dbg !101
  %20 = bitcast float* %19 to i32*
  store i32* %20, i32** %Ds.s8_24fixp, align 8, !dbg !102, !taffo.info !83, !taffo.target !33
  %21 = bitcast i32** %Es.s16_16fixp to i8*, !dbg !103, !taffo.info !104, !taffo.target !37
  %22 = bitcast i8* %21 to i8*, !taffo.info !104, !taffo.target !37
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %22) #4, !dbg !103, !taffo.info !83, !taffo.target !37
  call void @llvm.dbg.declare(metadata !9, metadata !105, metadata !DIExpression()), !dbg !106
  %23 = load float*, float** %E.addr, align 8, !dbg !107, !taffo.info !1
  %24 = bitcast float* %23 to i32*, !taffo.info !1
  store i32* %24, i32** %Es.s16_16fixp, align 8, !dbg !108, !taffo.info !83, !taffo.target !37
  %25 = bitcast i32** %Fs.s16_16fixp to i8*, !dbg !109, !taffo.info !104, !taffo.target !38
  %26 = bitcast i8* %25 to i8*, !taffo.info !104, !taffo.target !38
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %26) #4, !dbg !109, !taffo.info !83, !taffo.target !38
  call void @llvm.dbg.declare(metadata !9, metadata !110, metadata !DIExpression()), !dbg !111
  %27 = load float*, float** %F.addr, align 8, !dbg !112, !taffo.info !1
  %28 = bitcast float* %27 to i32*, !taffo.info !1
  store i32* %28, i32** %Fs.s16_16fixp, align 8, !dbg !113, !taffo.info !83, !taffo.target !38
  %29 = bitcast i32** %Gs.s16_16fixp to i8*, !dbg !114, !taffo.info !104, !taffo.target !39
  %30 = bitcast i8* %29 to i8*, !taffo.info !104, !taffo.target !39
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %30) #4, !dbg !114, !taffo.info !83, !taffo.target !39
  call void @llvm.dbg.declare(metadata !9, metadata !115, metadata !DIExpression()), !dbg !116
  %31 = load float*, float** %G.addr, align 8, !dbg !117, !taffo.info !1
  %32 = bitcast float* %31 to i32*, !taffo.info !1
  store i32* %32, i32** %Gs.s16_16fixp, align 8, !dbg !118, !taffo.info !83, !taffo.target !39
  %33 = bitcast i32* %i to i8*, !dbg !119, !taffo.info !83
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %33) #4, !dbg !119, !taffo.info !83
  call void @llvm.dbg.declare(metadata i32* %i, metadata !120, metadata !DIExpression()), !dbg !121
  %34 = bitcast i32* %j to i8*, !dbg !122, !taffo.info !83
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %34) #4, !dbg !122, !taffo.info !83
  call void @llvm.dbg.declare(metadata i32* %j, metadata !123, metadata !DIExpression()), !dbg !124
  %35 = bitcast i32* %k to i8*, !dbg !125, !taffo.info !83
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %35) #4, !dbg !125, !taffo.info !83
  call void @llvm.dbg.declare(metadata i32* %k, metadata !126, metadata !DIExpression()), !dbg !127
  br label %VITIS_LOOP_63_1, !dbg !125

VITIS_LOOP_63_1:                                  ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !128, !taffo.info !83
  br label %for.cond, !dbg !130

for.cond:                                         ; preds = %for.inc34, %VITIS_LOOP_63_1
  %36 = load i32, i32* %i, align 4, !dbg !131, !taffo.info !40
  %37 = load i32, i32* %ni, align 4, !dbg !133, !taffo.info !25
  %cmp = icmp slt i32 %36, %37, !dbg !134, !taffo.info !135
  br i1 %cmp, label %for.body, label %for.end36, !dbg !137, !taffo.info !83

for.body:                                         ; preds = %for.cond
  br label %VITIS_LOOP_65_2, !dbg !138

VITIS_LOOP_65_2:                                  ; preds = %for.body
  store i32 0, i32* %j, align 4, !dbg !139, !taffo.info !83
  br label %for.cond11, !dbg !142

for.cond11:                                       ; preds = %for.inc31, %VITIS_LOOP_65_2
  %38 = load i32, i32* %j, align 4, !dbg !143, !taffo.info !42
  %39 = load i32, i32* %nj, align 4, !dbg !145, !taffo.info !25
  %cmp12 = icmp slt i32 %38, %39, !dbg !146, !taffo.info !135
  br i1 %cmp12, label %for.body13, label %for.end33, !dbg !147, !taffo.info !83

for.body13:                                       ; preds = %for.cond11
  %s16_16fixp2 = load i32*, i32** %Es.s16_16fixp, align 8, !dbg !148, !taffo.info !34, !taffo.target !37
  %40 = load i32, i32* %i, align 4, !dbg !150, !taffo.info !40
  %41 = load i32, i32* %nj, align 4, !dbg !151, !taffo.info !25
  %mul = mul nsw i32 %40, %41, !dbg !152, !taffo.info !153
  %42 = load i32, i32* %j, align 4, !dbg !154, !taffo.info !42
  %add = add nsw i32 %mul, %42, !dbg !155, !taffo.info !153
  %idxprom = sext i32 %add to i64, !dbg !148, !taffo.info !153
  %arrayidx.s16_16fixp = getelementptr inbounds i32, i32* %s16_16fixp2, i64 %idxprom, !dbg !148, !taffo.info !34, !taffo.target !37
  store i32 0, i32* %arrayidx.s16_16fixp, align 4, !dbg !156, !taffo.info !83, !taffo.target !37
  br label %VITIS_LOOP_68_3, !dbg !148

VITIS_LOOP_68_3:                                  ; preds = %for.body13
  store i32 0, i32* %k, align 4, !dbg !157, !taffo.info !83
  br label %for.cond14, !dbg !159

for.cond14:                                       ; preds = %for.inc, %VITIS_LOOP_68_3
  %43 = load i32, i32* %k, align 4, !dbg !160, !taffo.info !40
  %cmp15 = icmp slt i32 %43, 16, !dbg !162, !taffo.info !135
  br i1 %cmp15, label %for.body16, label %for.end, !dbg !163, !taffo.info !83

for.body16:                                       ; preds = %for.cond14
  %s8_24fixp10 = load i32*, i32** %As.s8_24fixp, align 8, !dbg !164, !taffo.info !27, !taffo.target !30
  %44 = load i32, i32* %i, align 4, !dbg !166, !taffo.info !40
  %45 = load i32, i32* %nk, align 4, !dbg !167, !taffo.info !25
  %mul17 = mul nsw i32 %44, %45, !dbg !168, !taffo.info !153
  %46 = load i32, i32* %k, align 4, !dbg !169, !taffo.info !40
  %add18 = add nsw i32 %mul17, %46, !dbg !170, !taffo.info !153
  %idxprom19 = sext i32 %add18 to i64, !dbg !164, !taffo.info !153
  %arrayidx20.s8_24fixp = getelementptr inbounds i32, i32* %s8_24fixp10, i64 %idxprom19, !dbg !164, !taffo.info !27, !taffo.target !30
  %s8_24fixp19 = load i32, i32* %arrayidx20.s8_24fixp, align 4, !dbg !164, !taffo.info !27, !taffo.target !30
  %s8_24fixp9 = load i32*, i32** %Bs.s8_24fixp, align 8, !dbg !171, !taffo.info !27, !taffo.target !31
  %47 = load i32, i32* %k, align 4, !dbg !172, !taffo.info !40
  %48 = load i32, i32* %nj, align 4, !dbg !173, !taffo.info !25
  %mul21 = mul nsw i32 %47, %48, !dbg !174, !taffo.info !153
  %49 = load i32, i32* %j, align 4, !dbg !175, !taffo.info !42
  %add22 = add nsw i32 %mul21, %49, !dbg !176, !taffo.info !153
  %idxprom23 = sext i32 %add22 to i64, !dbg !171, !taffo.info !153
  %arrayidx24.s8_24fixp = getelementptr inbounds i32, i32* %s8_24fixp9, i64 %idxprom23, !dbg !171, !taffo.info !27, !taffo.target !31
  %s8_24fixp18 = load i32, i32* %arrayidx24.s8_24fixp, align 4, !dbg !171, !taffo.info !27, !taffo.target !31
  %50 = sext i32 %s8_24fixp19 to i64, !dbg !177, !taffo.info !27, !taffo.target !30
  %51 = sext i32 %s8_24fixp18 to i64, !dbg !177, !taffo.info !27, !taffo.target !31
  %52 = mul i64 %50, %51, !dbg !177, !taffo.info !178, !taffo.target !31
  %53 = lshr i64 %52, 16, !dbg !177, !taffo.info !178, !taffo.target !31
  %mul25.u0_32fixp = trunc i64 %53 to i32, !dbg !180, !taffo.info !181, !taffo.target !30
  %s16_16fixp1 = load i32*, i32** %Es.s16_16fixp, align 8, !dbg !177, !taffo.info !34, !taffo.target !37
  %54 = load i32, i32* %i, align 4, !dbg !183, !taffo.info !40
  %55 = load i32, i32* %nj, align 4, !dbg !184, !taffo.info !25
  %mul26 = mul nsw i32 %54, %55, !dbg !185, !taffo.info !153
  %56 = load i32, i32* %j, align 4, !dbg !186, !taffo.info !42
  %add27 = add nsw i32 %mul26, %56, !dbg !187, !taffo.info !153
  %idxprom28 = sext i32 %add27 to i64, !dbg !177, !taffo.info !153
  %arrayidx29.s16_16fixp = getelementptr inbounds i32, i32* %s16_16fixp1, i64 %idxprom28, !dbg !177, !taffo.info !34, !taffo.target !37
  %s16_16fixp12 = load i32, i32* %arrayidx29.s16_16fixp, align 4, !dbg !188, !taffo.info !34, !taffo.target !37
  %57 = shl i32 %s16_16fixp12, 16, !dbg !188, !taffo.info !34, !taffo.target !37
  %add30.u0_32fixp = add i32 %57, %mul25.u0_32fixp, !dbg !188, !taffo.info !181, !taffo.target !37
  %58 = lshr i32 %add30.u0_32fixp, 16, !dbg !188, !taffo.info !181, !taffo.target !37
  store i32 %58, i32* %arrayidx29.s16_16fixp, align 4, !dbg !188, !taffo.info !83, !taffo.target !37
  br label %for.inc, !dbg !189

for.inc:                                          ; preds = %for.body16
  %59 = load i32, i32* %k, align 4, !dbg !190, !taffo.info !40
  %inc = add nsw i32 %59, 1, !dbg !190, !taffo.info !135
  store i32 %inc, i32* %k, align 4, !dbg !190, !taffo.info !83
  br label %for.cond14, !dbg !191, !llvm.loop !192

for.end:                                          ; preds = %for.cond14
  br label %for.inc31, !dbg !195

for.inc31:                                        ; preds = %for.end
  %60 = load i32, i32* %j, align 4, !dbg !196, !taffo.info !42
  %inc32 = add nsw i32 %60, 1, !dbg !196, !taffo.info !197
  store i32 %inc32, i32* %j, align 4, !dbg !196, !taffo.info !83
  br label %for.cond11, !dbg !199, !llvm.loop !200

for.end33:                                        ; preds = %for.cond11
  br label %for.inc34, !dbg !203

for.inc34:                                        ; preds = %for.end33
  %61 = load i32, i32* %i, align 4, !dbg !204, !taffo.info !40
  %inc35 = add nsw i32 %61, 1, !dbg !204, !taffo.info !135
  store i32 %inc35, i32* %i, align 4, !dbg !204, !taffo.info !83
  br label %for.cond, !dbg !205, !llvm.loop !206

for.end36:                                        ; preds = %for.cond
  br label %VITIS_LOOP_75_4, !dbg !207

VITIS_LOOP_75_4:                                  ; preds = %for.end36
  store i32 0, i32* %i, align 4, !dbg !209, !taffo.info !83
  br label %for.cond37, !dbg !211

for.cond37:                                       ; preds = %for.inc70, %VITIS_LOOP_75_4
  %62 = load i32, i32* %i, align 4, !dbg !212, !taffo.info !40
  %63 = load i32, i32* %nj, align 4, !dbg !214, !taffo.info !25
  %cmp38 = icmp slt i32 %62, %63, !dbg !215, !taffo.info !135
  br i1 %cmp38, label %for.body39, label %for.end72, !dbg !216, !taffo.info !83

for.body39:                                       ; preds = %for.cond37
  br label %VITIS_LOOP_77_5, !dbg !217

VITIS_LOOP_77_5:                                  ; preds = %for.body39
  store i32 0, i32* %j, align 4, !dbg !218, !taffo.info !83
  br label %for.cond40, !dbg !221

for.cond40:                                       ; preds = %for.inc67, %VITIS_LOOP_77_5
  %64 = load i32, i32* %j, align 4, !dbg !222, !taffo.info !42
  %65 = load i32, i32* %nl, align 4, !dbg !224, !taffo.info !25
  %cmp41 = icmp slt i32 %64, %65, !dbg !225, !taffo.info !135
  br i1 %cmp41, label %for.body42, label %for.end69, !dbg !226, !taffo.info !83

for.body42:                                       ; preds = %for.cond40
  %s16_16fixp5 = load i32*, i32** %Fs.s16_16fixp, align 8, !dbg !227, !taffo.info !34, !taffo.target !38
  %66 = load i32, i32* %i, align 4, !dbg !229, !taffo.info !40
  %67 = load i32, i32* %nl, align 4, !dbg !230, !taffo.info !25
  %mul43 = mul nsw i32 %66, %67, !dbg !231, !taffo.info !232
  %68 = load i32, i32* %j, align 4, !dbg !234, !taffo.info !42
  %add44 = add nsw i32 %mul43, %68, !dbg !235, !taffo.info !236
  %idxprom45 = sext i32 %add44 to i64, !dbg !227, !taffo.info !236
  %arrayidx46.s16_16fixp = getelementptr inbounds i32, i32* %s16_16fixp5, i64 %idxprom45, !dbg !227, !taffo.info !34, !taffo.target !38
  store i32 0, i32* %arrayidx46.s16_16fixp, align 4, !dbg !238, !taffo.info !83, !taffo.target !38
  br label %VITIS_LOOP_80_6, !dbg !227

VITIS_LOOP_80_6:                                  ; preds = %for.body42
  store i32 0, i32* %k, align 4, !dbg !239, !taffo.info !83
  br label %for.cond47, !dbg !241

for.cond47:                                       ; preds = %for.inc64, %VITIS_LOOP_80_6
  %69 = load i32, i32* %k, align 4, !dbg !242, !taffo.info !40
  %cmp48 = icmp slt i32 %69, 16, !dbg !244, !taffo.info !135
  br i1 %cmp48, label %for.body49, label %for.end66, !dbg !245, !taffo.info !83

for.body49:                                       ; preds = %for.cond47
  %s8_24fixp6 = load i32*, i32** %Cs.s8_24fixp, align 8, !dbg !246, !taffo.info !27, !taffo.target !32
  %70 = load i32, i32* %i, align 4, !dbg !248, !taffo.info !40
  %71 = load i32, i32* %nm, align 4, !dbg !249, !taffo.info !25
  %mul50 = mul nsw i32 %70, %71, !dbg !250, !taffo.info !232
  %72 = load i32, i32* %k, align 4, !dbg !251, !taffo.info !40
  %add51 = add nsw i32 %mul50, %72, !dbg !252, !taffo.info !253
  %idxprom52 = sext i32 %add51 to i64, !dbg !246, !taffo.info !253
  %arrayidx53.s8_24fixp = getelementptr inbounds i32, i32* %s8_24fixp6, i64 %idxprom52, !dbg !246, !taffo.info !27, !taffo.target !32
  %s8_24fixp16 = load i32, i32* %arrayidx53.s8_24fixp, align 4, !dbg !246, !taffo.info !27, !taffo.target !32
  %s8_24fixp = load i32*, i32** %Ds.s8_24fixp, align 8, !dbg !255, !taffo.info !27, !taffo.target !33
  %73 = load i32, i32* %k, align 4, !dbg !256, !taffo.info !40
  %74 = load i32, i32* %nl, align 4, !dbg !257, !taffo.info !25
  %mul54 = mul nsw i32 %73, %74, !dbg !258, !taffo.info !259
  %75 = load i32, i32* %j, align 4, !dbg !261, !taffo.info !42
  %add55 = add nsw i32 %mul54, %75, !dbg !262, !taffo.info !263
  %idxprom56 = sext i32 %add55 to i64, !dbg !255, !taffo.info !263
  %arrayidx57.s8_24fixp = getelementptr inbounds i32, i32* %s8_24fixp, i64 %idxprom56, !dbg !255, !taffo.info !27, !taffo.target !33
  %s8_24fixp15 = load i32, i32* %arrayidx57.s8_24fixp, align 4, !dbg !255, !taffo.info !27, !taffo.target !33
  %76 = sext i32 %s8_24fixp16 to i64, !dbg !265, !taffo.info !27, !taffo.target !32
  %77 = sext i32 %s8_24fixp15 to i64, !dbg !265, !taffo.info !27, !taffo.target !33
  %78 = mul i64 %76, %77, !dbg !265, !taffo.info !178, !taffo.target !33
  %79 = lshr i64 %78, 16, !dbg !265, !taffo.info !178, !taffo.target !33
  %mul58.u0_32fixp = trunc i64 %79 to i32, !dbg !266, !taffo.info !181, !taffo.target !32
  %s16_16fixp4 = load i32*, i32** %Fs.s16_16fixp, align 8, !dbg !265, !taffo.info !34, !taffo.target !38
  %80 = load i32, i32* %i, align 4, !dbg !267, !taffo.info !40
  %81 = load i32, i32* %nl, align 4, !dbg !268, !taffo.info !25
  %mul59 = mul nsw i32 %80, %81, !dbg !269, !taffo.info !232
  %82 = load i32, i32* %j, align 4, !dbg !270, !taffo.info !42
  %add60 = add nsw i32 %mul59, %82, !dbg !271, !taffo.info !272
  %idxprom61 = sext i32 %add60 to i64, !dbg !265, !taffo.info !272
  %arrayidx62.s16_16fixp = getelementptr inbounds i32, i32* %s16_16fixp4, i64 %idxprom61, !dbg !265, !taffo.info !34, !taffo.target !38
  %s16_16fixp14 = load i32, i32* %arrayidx62.s16_16fixp, align 4, !dbg !274, !taffo.info !34, !taffo.target !38
  %83 = shl i32 %s16_16fixp14, 16, !dbg !274, !taffo.info !34, !taffo.target !38
  %add63.u0_32fixp = add i32 %83, %mul58.u0_32fixp, !dbg !274, !taffo.info !181, !taffo.target !38
  %84 = lshr i32 %add63.u0_32fixp, 16, !dbg !274, !taffo.info !181, !taffo.target !38
  store i32 %84, i32* %arrayidx62.s16_16fixp, align 4, !dbg !274, !taffo.info !83, !taffo.target !38
  br label %for.inc64, !dbg !275

for.inc64:                                        ; preds = %for.body49
  %85 = load i32, i32* %k, align 4, !dbg !276, !taffo.info !40
  %inc65 = add nsw i32 %85, 1, !dbg !276, !taffo.info !197
  store i32 %inc65, i32* %k, align 4, !dbg !276, !taffo.info !83
  br label %for.cond47, !dbg !277, !llvm.loop !278

for.end66:                                        ; preds = %for.cond47
  br label %for.inc67, !dbg !281

for.inc67:                                        ; preds = %for.end66
  %86 = load i32, i32* %j, align 4, !dbg !282, !taffo.info !42
  %inc68 = add nsw i32 %86, 1, !dbg !282, !taffo.info !283
  store i32 %inc68, i32* %j, align 4, !dbg !282, !taffo.info !83
  br label %for.cond40, !dbg !285, !llvm.loop !286

for.end69:                                        ; preds = %for.cond40
  br label %for.inc70, !dbg !289

for.inc70:                                        ; preds = %for.end69
  %87 = load i32, i32* %i, align 4, !dbg !290, !taffo.info !40
  %inc71 = add nsw i32 %87, 1, !dbg !290, !taffo.info !197
  store i32 %inc71, i32* %i, align 4, !dbg !290, !taffo.info !83
  br label %for.cond37, !dbg !291, !llvm.loop !292

for.end72:                                        ; preds = %for.cond37
  br label %VITIS_LOOP_88_7, !dbg !293

VITIS_LOOP_88_7:                                  ; preds = %for.end72
  store i32 0, i32* %i, align 4, !dbg !295, !taffo.info !83
  br label %for.cond73, !dbg !297

for.cond73:                                       ; preds = %for.inc106, %VITIS_LOOP_88_7
  %88 = load i32, i32* %i, align 4, !dbg !298, !taffo.info !40
  %cmp74 = icmp slt i32 %88, 16, !dbg !300, !taffo.info !135
  br i1 %cmp74, label %for.body75, label %for.end108, !dbg !301, !taffo.info !83

for.body75:                                       ; preds = %for.cond73
  br label %VITIS_LOOP_90_8, !dbg !302

VITIS_LOOP_90_8:                                  ; preds = %for.body75
  store i32 0, i32* %j, align 4, !dbg !303, !taffo.info !83
  br label %for.cond76, !dbg !306

for.cond76:                                       ; preds = %for.inc103, %VITIS_LOOP_90_8
  %89 = load i32, i32* %j, align 4, !dbg !307, !taffo.info !42
  %cmp77 = icmp slt i32 %89, 16, !dbg !309, !taffo.info !135
  br i1 %cmp77, label %for.body78, label %for.end105, !dbg !310, !taffo.info !83

for.body78:                                       ; preds = %for.cond76
  %s16_16fixp8 = load i32*, i32** %Gs.s16_16fixp, align 8, !dbg !311, !taffo.info !34, !taffo.target !39
  %90 = load i32, i32* %i, align 4, !dbg !313, !taffo.info !40
  %91 = load i32, i32* %nl, align 4, !dbg !314, !taffo.info !25
  %mul79 = mul nsw i32 %90, %91, !dbg !315, !taffo.info !316
  %92 = load i32, i32* %j, align 4, !dbg !318, !taffo.info !42
  %add80 = add nsw i32 %mul79, %92, !dbg !319, !taffo.info !320
  %idxprom81 = sext i32 %add80 to i64, !dbg !311, !taffo.info !320
  %arrayidx82.s16_16fixp = getelementptr inbounds i32, i32* %s16_16fixp8, i64 %idxprom81, !dbg !311, !taffo.info !34, !taffo.target !39
  store i32 0, i32* %arrayidx82.s16_16fixp, align 4, !dbg !322, !taffo.info !83, !taffo.target !39
  br label %VITIS_LOOP_93_9, !dbg !311

VITIS_LOOP_93_9:                                  ; preds = %for.body78
  store i32 0, i32* %k, align 4, !dbg !323, !taffo.info !83
  br label %for.cond83, !dbg !325

for.cond83:                                       ; preds = %for.inc100, %VITIS_LOOP_93_9
  %93 = load i32, i32* %k, align 4, !dbg !326, !taffo.info !40
  %cmp84 = icmp slt i32 %93, 16, !dbg !328, !taffo.info !135
  br i1 %cmp84, label %for.body85, label %for.end102, !dbg !329, !taffo.info !83

for.body85:                                       ; preds = %for.cond83
  %s16_16fixp = load i32*, i32** %Es.s16_16fixp, align 8, !dbg !330, !taffo.info !34, !taffo.target !37
  %94 = load i32, i32* %i, align 4, !dbg !332, !taffo.info !40
  %95 = load i32, i32* %nj, align 4, !dbg !333, !taffo.info !25
  %mul86 = mul nsw i32 %94, %95, !dbg !334, !taffo.info !316
  %96 = load i32, i32* %k, align 4, !dbg !335, !taffo.info !40
  %add87 = add nsw i32 %mul86, %96, !dbg !336, !taffo.info !337
  %idxprom88 = sext i32 %add87 to i64, !dbg !330, !taffo.info !337
  %arrayidx89.s16_16fixp = getelementptr inbounds i32, i32* %s16_16fixp, i64 %idxprom88, !dbg !330, !taffo.info !34, !taffo.target !37
  %s16_16fixp11 = load i32, i32* %arrayidx89.s16_16fixp, align 4, !dbg !330, !taffo.info !34, !taffo.target !37
  %s16_16fixp3 = load i32*, i32** %Fs.s16_16fixp, align 8, !dbg !339, !taffo.info !34, !taffo.target !38
  %97 = load i32, i32* %k, align 4, !dbg !340, !taffo.info !40
  %98 = load i32, i32* %nl, align 4, !dbg !341, !taffo.info !25
  %mul90 = mul nsw i32 %97, %98, !dbg !342, !taffo.info !232
  %99 = load i32, i32* %j, align 4, !dbg !343, !taffo.info !42
  %add91 = add nsw i32 %mul90, %99, !dbg !344, !taffo.info !345
  %idxprom92 = sext i32 %add91 to i64, !dbg !339, !taffo.info !345
  %arrayidx93.s16_16fixp = getelementptr inbounds i32, i32* %s16_16fixp3, i64 %idxprom92, !dbg !339, !taffo.info !34, !taffo.target !38
  %s16_16fixp13 = load i32, i32* %arrayidx93.s16_16fixp, align 4, !dbg !339, !taffo.info !34, !taffo.target !38
  %100 = sext i32 %s16_16fixp11 to i64, !dbg !347, !taffo.info !34, !taffo.target !37
  %101 = sext i32 %s16_16fixp13 to i64, !dbg !347, !taffo.info !34, !taffo.target !38
  %102 = mul i64 %100, %101, !dbg !347, !taffo.info !348, !taffo.target !38
  %mul94.u0_32fixp = trunc i64 %102 to i32, !dbg !350, !taffo.info !181, !taffo.target !37
  %s16_16fixp7 = load i32*, i32** %Gs.s16_16fixp, align 8, !dbg !347, !taffo.info !34, !taffo.target !39
  %103 = load i32, i32* %i, align 4, !dbg !351, !taffo.info !40
  %104 = load i32, i32* %nl, align 4, !dbg !352, !taffo.info !25
  %mul95 = mul nsw i32 %103, %104, !dbg !353, !taffo.info !316
  %105 = load i32, i32* %j, align 4, !dbg !354, !taffo.info !42
  %add96 = add nsw i32 %mul95, %105, !dbg !355, !taffo.info !356
  %idxprom97 = sext i32 %add96 to i64, !dbg !347, !taffo.info !356
  %arrayidx98.s16_16fixp = getelementptr inbounds i32, i32* %s16_16fixp7, i64 %idxprom97, !dbg !347, !taffo.info !34, !taffo.target !39
  %s16_16fixp17 = load i32, i32* %arrayidx98.s16_16fixp, align 4, !dbg !358, !taffo.info !34, !taffo.target !39
  %106 = shl i32 %s16_16fixp17, 16, !dbg !358, !taffo.info !34, !taffo.target !39
  %add99.u0_32fixp = add i32 %106, %mul94.u0_32fixp, !dbg !358, !taffo.info !181, !taffo.target !39
  %107 = lshr i32 %add99.u0_32fixp, 16, !dbg !358, !taffo.info !181, !taffo.target !39
  store i32 %107, i32* %arrayidx98.s16_16fixp, align 4, !dbg !358, !taffo.info !83, !taffo.target !39
  br label %for.inc100, !dbg !359

for.inc100:                                       ; preds = %for.body85
  %108 = load i32, i32* %k, align 4, !dbg !360, !taffo.info !40
  %inc101 = add nsw i32 %108, 1, !dbg !360, !taffo.info !283
  store i32 %inc101, i32* %k, align 4, !dbg !360, !taffo.info !83
  br label %for.cond83, !dbg !361, !llvm.loop !362

for.end102:                                       ; preds = %for.cond83
  br label %for.inc103, !dbg !365

for.inc103:                                       ; preds = %for.end102
  %109 = load i32, i32* %j, align 4, !dbg !366, !taffo.info !42
  %inc104 = add nsw i32 %109, 1, !dbg !366, !taffo.info !367
  store i32 %inc104, i32* %j, align 4, !dbg !366, !taffo.info !83
  br label %for.cond76, !dbg !369, !llvm.loop !370

for.end105:                                       ; preds = %for.cond76
  br label %for.inc106, !dbg !373

for.inc106:                                       ; preds = %for.end105
  %110 = load i32, i32* %i, align 4, !dbg !374, !taffo.info !40
  %inc107 = add nsw i32 %110, 1, !dbg !374, !taffo.info !283
  store i32 %inc107, i32* %i, align 4, !dbg !374, !taffo.info !83
  br label %for.cond73, !dbg !375, !llvm.loop !376

for.end108:                                       ; preds = %for.cond73
  %111 = bitcast i32* %k to i8*, !dbg !379, !taffo.info !380
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %111) #4, !dbg !379, !taffo.info !83
  %112 = bitcast i32* %j to i8*, !dbg !379, !taffo.info !40
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %112) #4, !dbg !379, !taffo.info !83
  %113 = bitcast i32* %i to i8*, !dbg !379, !taffo.info !40
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %113) #4, !dbg !379, !taffo.info !83
  %114 = bitcast i32** %Gs.s16_16fixp to i8*, !dbg !379, !taffo.info !104, !taffo.target !39
  %115 = bitcast i8* %114 to i8*, !taffo.info !104, !taffo.target !39
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %115) #4, !dbg !379, !taffo.info !83, !taffo.target !39
  %116 = bitcast i32** %Fs.s16_16fixp to i8*, !dbg !379, !taffo.info !104, !taffo.target !38
  %117 = bitcast i8* %116 to i8*, !taffo.info !104, !taffo.target !38
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %117) #4, !dbg !379, !taffo.info !83, !taffo.target !38
  %118 = bitcast i32** %Es.s16_16fixp to i8*, !dbg !379, !taffo.info !104, !taffo.target !37
  %119 = bitcast i8* %118 to i8*, !taffo.info !104, !taffo.target !37
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %119) #4, !dbg !379, !taffo.info !83, !taffo.target !37
  %120 = bitcast i32** %Ds.s8_24fixp to i8*, !dbg !379, !taffo.info !82, !taffo.target !33
  %121 = bitcast i8* %120 to i8*, !taffo.info !82, !taffo.target !33
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %121) #4, !dbg !379, !taffo.info !83, !taffo.target !33
  %122 = bitcast i32** %Cs.s8_24fixp to i8*, !dbg !379, !taffo.info !82, !taffo.target !32
  %123 = bitcast i8* %122 to i8*, !taffo.info !82, !taffo.target !32
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %123) #4, !dbg !379, !taffo.info !83, !taffo.target !32
  %124 = bitcast i32** %Bs.s8_24fixp to i8*, !dbg !379, !taffo.info !82, !taffo.target !31
  %125 = bitcast i8* %124 to i8*, !taffo.info !82, !taffo.target !31
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %125) #4, !dbg !379, !taffo.info !83, !taffo.target !31
  %126 = bitcast i32** %As.s8_24fixp to i8*, !dbg !379, !taffo.info !82, !taffo.target !30
  %127 = bitcast i8* %126 to i8*, !taffo.info !82, !taffo.target !30
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %127) #4, !dbg !379, !taffo.info !83, !taffo.target !30
  %128 = bitcast i32* %nm to i8*, !dbg !379, !taffo.info !25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %128) #4, !dbg !379
  %129 = bitcast i32* %nl to i8*, !dbg !379, !taffo.info !25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %129) #4, !dbg !379
  %130 = bitcast i32* %nk to i8*, !dbg !379, !taffo.info !25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %130) #4, !dbg !379
  %131 = bitcast i32* %nj to i8*, !dbg !379, !taffo.info !25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %131) #4, !dbg !379
  %132 = bitcast i32* %ni to i8*, !dbg !379, !taffo.info !25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %132) #4, !dbg !379
  ret void, !dbg !379
}

; Function Attrs: nounwind readnone speculatable
declare !taffo.funinfo !382 void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: inaccessiblememonly nounwind
declare !taffo.funinfo !9 void @llvm.sideeffect() #2

; Function Attrs: argmemonly nounwind
declare !taffo.funinfo !383 void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare !taffo.funinfo !384 void @llvm.var.annotation(i8*, i8*, i8*, i32) #4

; Function Attrs: argmemonly nounwind
declare !taffo.funinfo !383 void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #3

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.top.func"="mm3" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!4 = !{double 0.000000e+00, double 1.160000e+02}
!5 = !{i1 false, !6, i1 false, i1 false}
!6 = !{double 0.000000e+00, double 1.150000e+02}
!7 = distinct !DICompileUnit(language: DW_LANG_C99, file: !8, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !9)
!8 = !DIFile(filename: "/home/bruno/Desktop/benchmarks/mm3/proj_mm3/solution1/.autopilot/db/mm3_taffo.pp.0.c", directory: "/home/bruno/Desktop/benchmarks/mm3")
!9 = !{}
!10 = !{!"clang version 7.0.0 "}
!11 = !{i32 2, !"Dwarf Version", i32 4}
!12 = !{i32 2, !"Debug Info Version", i32 0}
!13 = !{i32 1, !"wchar_size", i32 4}
!14 = distinct !DISubprogram(name: "mm3", scope: !15, file: !15, line: 26, type: !16, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!15 = !DIFile(filename: "mm3_taffo.c", directory: "/home/bruno/Desktop/benchmarks/mm3")
!16 = !DISubroutineType(types: !17)
!17 = !{null, !18, !18, !18, !18, !18, !18, !18}
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!20 = !{!21}
!21 = !{!"user"}
!22 = !DILocation(line: 26, column: 16, scope: !14)
!23 = !{i1 true}
!24 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 1, !1, i32 1, !1, i32 1, !1}
!25 = !{i1 false, !26, i1 false, i1 false}
!26 = !{double 1.600000e+01, double 1.600000e+01}
!27 = !{!28, !29, i1 false, i1 true}
!28 = !{!"fixp", i32 -32, i32 24}
!29 = !{double -1.000000e+02, double 1.000000e+02}
!30 = !{!"A"}
!31 = !{!"B"}
!32 = !{!"C"}
!33 = !{!"D"}
!34 = !{!35, !36, i1 false, i1 true}
!35 = !{!"fixp", i32 -32, i32 16}
!36 = !{double -1.638400e+04, double 1.638400e+04}
!37 = !{!"E"}
!38 = !{!"F"}
!39 = !{!"G"}
!40 = !{i1 false, !41, i1 false, i1 true}
!41 = !{double 0.000000e+00, double 3.000000e+00}
!42 = !{i1 false, !43, i1 false, i1 true}
!43 = !{double 0.000000e+00, double 4.000000e+00}
!44 = !DILocalVariable(name: "A", arg: 1, scope: !14, file: !15, line: 26, type: !18)
!45 = !DILocation(line: 26, column: 55, scope: !14)
!46 = !DILocalVariable(name: "B", arg: 2, scope: !14, file: !15, line: 26, type: !18)
!47 = !DILocation(line: 26, column: 65, scope: !14)
!48 = !DILocalVariable(name: "C", arg: 3, scope: !14, file: !15, line: 26, type: !18)
!49 = !DILocation(line: 26, column: 75, scope: !14)
!50 = !DILocalVariable(name: "D", arg: 4, scope: !14, file: !15, line: 26, type: !18)
!51 = !DILocation(line: 26, column: 85, scope: !14)
!52 = !DILocalVariable(name: "E", arg: 5, scope: !14, file: !15, line: 26, type: !18)
!53 = !DILocation(line: 26, column: 95, scope: !14)
!54 = !DILocalVariable(name: "F", arg: 6, scope: !14, file: !15, line: 26, type: !18)
!55 = !DILocation(line: 26, column: 105, scope: !14)
!56 = !DILocalVariable(name: "G", arg: 7, scope: !14, file: !15, line: 26, type: !18)
!57 = !DILocation(line: 26, column: 115, scope: !14)
!58 = !DILocation(line: 28, column: 9, scope: !14)
!59 = !DILocation(line: 29, column: 9, scope: !14)
!60 = !DILocation(line: 30, column: 9, scope: !14)
!61 = !DILocation(line: 31, column: 9, scope: !14)
!62 = !DILocation(line: 32, column: 9, scope: !14)
!63 = !DILocation(line: 33, column: 9, scope: !14)
!64 = !DILocation(line: 34, column: 9, scope: !14)
!65 = !DILocation(line: 36, column: 2, scope: !14)
!66 = !DILocalVariable(name: "ni", scope: !14, file: !15, line: 36, type: !67)
!67 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!68 = !DILocation(line: 36, column: 6, scope: !14)
!69 = !DILocation(line: 37, column: 3, scope: !14)
!70 = !DILocalVariable(name: "nj", scope: !14, file: !15, line: 37, type: !67)
!71 = !DILocation(line: 37, column: 7, scope: !14)
!72 = !DILocation(line: 38, column: 3, scope: !14)
!73 = !DILocalVariable(name: "nk", scope: !14, file: !15, line: 38, type: !67)
!74 = !DILocation(line: 38, column: 7, scope: !14)
!75 = !DILocation(line: 39, column: 3, scope: !14)
!76 = !DILocalVariable(name: "nl", scope: !14, file: !15, line: 39, type: !67)
!77 = !DILocation(line: 39, column: 7, scope: !14)
!78 = !DILocation(line: 40, column: 3, scope: !14)
!79 = !DILocalVariable(name: "nm", scope: !14, file: !15, line: 40, type: !67)
!80 = !DILocation(line: 40, column: 7, scope: !14)
!81 = !DILocation(line: 42, column: 3, scope: !14)
!82 = !{!28, i1 false, i1 false, i1 true}
!83 = !{i1 false, i1 false, i1 false, i1 true}
!84 = !DILocalVariable(name: "As", scope: !14, file: !15, line: 42, type: !18)
!85 = !DILocation(line: 42, column: 10, scope: !14)
!86 = !DILocation(line: 43, column: 8, scope: !14)
!87 = !DILocation(line: 43, column: 6, scope: !14)
!88 = !DILocation(line: 44, column: 3, scope: !14)
!89 = !DILocalVariable(name: "Bs", scope: !14, file: !15, line: 44, type: !18)
!90 = !DILocation(line: 44, column: 10, scope: !14)
!91 = !DILocation(line: 45, column: 8, scope: !14)
!92 = !DILocation(line: 45, column: 6, scope: !14)
!93 = !DILocation(line: 46, column: 3, scope: !14)
!94 = !DILocalVariable(name: "Cs", scope: !14, file: !15, line: 46, type: !18)
!95 = !DILocation(line: 46, column: 10, scope: !14)
!96 = !DILocation(line: 47, column: 8, scope: !14)
!97 = !DILocation(line: 47, column: 6, scope: !14)
!98 = !DILocation(line: 48, column: 3, scope: !14)
!99 = !DILocalVariable(name: "Ds", scope: !14, file: !15, line: 48, type: !18)
!100 = !DILocation(line: 48, column: 10, scope: !14)
!101 = !DILocation(line: 49, column: 8, scope: !14)
!102 = !DILocation(line: 49, column: 6, scope: !14)
!103 = !DILocation(line: 50, column: 3, scope: !14)
!104 = !{!35, i1 false, i1 false, i1 true}
!105 = !DILocalVariable(name: "Es", scope: !14, file: !15, line: 50, type: !18)
!106 = !DILocation(line: 50, column: 10, scope: !14)
!107 = !DILocation(line: 51, column: 8, scope: !14)
!108 = !DILocation(line: 51, column: 6, scope: !14)
!109 = !DILocation(line: 52, column: 3, scope: !14)
!110 = !DILocalVariable(name: "Fs", scope: !14, file: !15, line: 52, type: !18)
!111 = !DILocation(line: 52, column: 10, scope: !14)
!112 = !DILocation(line: 53, column: 8, scope: !14)
!113 = !DILocation(line: 53, column: 6, scope: !14)
!114 = !DILocation(line: 54, column: 3, scope: !14)
!115 = !DILocalVariable(name: "Gs", scope: !14, file: !15, line: 54, type: !18)
!116 = !DILocation(line: 54, column: 10, scope: !14)
!117 = !DILocation(line: 55, column: 8, scope: !14)
!118 = !DILocation(line: 55, column: 6, scope: !14)
!119 = !DILocation(line: 57, column: 3, scope: !14)
!120 = !DILocalVariable(name: "i", scope: !14, file: !15, line: 57, type: !67)
!121 = !DILocation(line: 57, column: 7, scope: !14)
!122 = !DILocation(line: 58, column: 3, scope: !14)
!123 = !DILocalVariable(name: "j", scope: !14, file: !15, line: 58, type: !67)
!124 = !DILocation(line: 58, column: 7, scope: !14)
!125 = !DILocation(line: 59, column: 3, scope: !14)
!126 = !DILocalVariable(name: "k", scope: !14, file: !15, line: 59, type: !67)
!127 = !DILocation(line: 59, column: 7, scope: !14)
!128 = !DILocation(line: 63, column: 27, scope: !129)
!129 = distinct !DILexicalBlock(scope: !14, file: !15, line: 63, column: 20)
!130 = !DILocation(line: 63, column: 25, scope: !129)
!131 = !DILocation(line: 63, column: 32, scope: !132)
!132 = distinct !DILexicalBlock(scope: !129, file: !15, line: 63, column: 20)
!133 = !DILocation(line: 63, column: 36, scope: !132)
!134 = !DILocation(line: 63, column: 34, scope: !132)
!135 = !{i1 false, !136, i1 false, i1 true}
!136 = !{double 1.000000e+00, double 1.000000e+00}
!137 = !DILocation(line: 63, column: 20, scope: !129)
!138 = !DILocation(line: 63, column: 44, scope: !132)
!139 = !DILocation(line: 65, column: 29, scope: !140)
!140 = distinct !DILexicalBlock(scope: !141, file: !15, line: 65, column: 22)
!141 = distinct !DILexicalBlock(scope: !132, file: !15, line: 63, column: 44)
!142 = !DILocation(line: 65, column: 27, scope: !140)
!143 = !DILocation(line: 65, column: 34, scope: !144)
!144 = distinct !DILexicalBlock(scope: !140, file: !15, line: 65, column: 22)
!145 = !DILocation(line: 65, column: 38, scope: !144)
!146 = !DILocation(line: 65, column: 36, scope: !144)
!147 = !DILocation(line: 65, column: 22, scope: !140)
!148 = !DILocation(line: 67, column: 6, scope: !149)
!149 = distinct !DILexicalBlock(scope: !144, file: !15, line: 65, column: 46)
!150 = !DILocation(line: 67, column: 9, scope: !149)
!151 = !DILocation(line: 67, column: 11, scope: !149)
!152 = !DILocation(line: 67, column: 10, scope: !149)
!153 = !{i1 false, !2, i1 false, i1 true}
!154 = !DILocation(line: 67, column: 14, scope: !149)
!155 = !DILocation(line: 67, column: 13, scope: !149)
!156 = !DILocation(line: 67, column: 17, scope: !149)
!157 = !DILocation(line: 68, column: 30, scope: !158)
!158 = distinct !DILexicalBlock(scope: !149, file: !15, line: 68, column: 23)
!159 = !DILocation(line: 68, column: 28, scope: !158)
!160 = !DILocation(line: 68, column: 35, scope: !161)
!161 = distinct !DILexicalBlock(scope: !158, file: !15, line: 68, column: 23)
!162 = !DILocation(line: 68, column: 37, scope: !161)
!163 = !DILocation(line: 68, column: 23, scope: !158)
!164 = !DILocation(line: 70, column: 24, scope: !165)
!165 = distinct !DILexicalBlock(scope: !161, file: !15, line: 68, column: 47)
!166 = !DILocation(line: 70, column: 27, scope: !165)
!167 = !DILocation(line: 70, column: 29, scope: !165)
!168 = !DILocation(line: 70, column: 28, scope: !165)
!169 = !DILocation(line: 70, column: 32, scope: !165)
!170 = !DILocation(line: 70, column: 31, scope: !165)
!171 = !DILocation(line: 70, column: 37, scope: !165)
!172 = !DILocation(line: 70, column: 40, scope: !165)
!173 = !DILocation(line: 70, column: 42, scope: !165)
!174 = !DILocation(line: 70, column: 41, scope: !165)
!175 = !DILocation(line: 70, column: 45, scope: !165)
!176 = !DILocation(line: 70, column: 44, scope: !165)
!177 = !DILocation(line: 70, column: 10, scope: !165)
!178 = !{!179, !29, i1 false}
!179 = !{!"fixp", i32 64, i32 24}
!180 = !DILocation(line: 70, column: 35, scope: !165)
!181 = !{!182, !2, i1 false, i1 true}
!182 = !{!"fixp", i32 32, i32 32}
!183 = !DILocation(line: 70, column: 13, scope: !165)
!184 = !DILocation(line: 70, column: 15, scope: !165)
!185 = !DILocation(line: 70, column: 14, scope: !165)
!186 = !DILocation(line: 70, column: 18, scope: !165)
!187 = !DILocation(line: 70, column: 17, scope: !165)
!188 = !DILocation(line: 70, column: 21, scope: !165)
!189 = !DILocation(line: 71, column: 9, scope: !165)
!190 = !DILocation(line: 68, column: 43, scope: !161)
!191 = !DILocation(line: 68, column: 23, scope: !161)
!192 = distinct !{!192, !163, !193, !194}
!193 = !DILocation(line: 71, column: 9, scope: !158)
!194 = !{!"llvm.loop.name", !"VITIS_LOOP_68_3"}
!195 = !DILocation(line: 72, column: 5, scope: !149)
!196 = !DILocation(line: 65, column: 43, scope: !144)
!197 = !{i1 false, !198, i1 false, i1 true}
!198 = !{double 1.000000e+00, double 2.000000e+00}
!199 = !DILocation(line: 65, column: 22, scope: !144)
!200 = distinct !{!200, !147, !201, !202}
!201 = !DILocation(line: 72, column: 5, scope: !140)
!202 = !{!"llvm.loop.name", !"VITIS_LOOP_65_2"}
!203 = !DILocation(line: 73, column: 4, scope: !141)
!204 = !DILocation(line: 63, column: 41, scope: !132)
!205 = !DILocation(line: 63, column: 20, scope: !132)
!206 = distinct !{!206, !137, !207, !208}
!207 = !DILocation(line: 73, column: 4, scope: !129)
!208 = !{!"llvm.loop.name", !"VITIS_LOOP_63_1"}
!209 = !DILocation(line: 75, column: 27, scope: !210)
!210 = distinct !DILexicalBlock(scope: !14, file: !15, line: 75, column: 20)
!211 = !DILocation(line: 75, column: 25, scope: !210)
!212 = !DILocation(line: 75, column: 32, scope: !213)
!213 = distinct !DILexicalBlock(scope: !210, file: !15, line: 75, column: 20)
!214 = !DILocation(line: 75, column: 36, scope: !213)
!215 = !DILocation(line: 75, column: 34, scope: !213)
!216 = !DILocation(line: 75, column: 20, scope: !210)
!217 = !DILocation(line: 75, column: 44, scope: !213)
!218 = !DILocation(line: 77, column: 29, scope: !219)
!219 = distinct !DILexicalBlock(scope: !220, file: !15, line: 77, column: 22)
!220 = distinct !DILexicalBlock(scope: !213, file: !15, line: 75, column: 44)
!221 = !DILocation(line: 77, column: 27, scope: !219)
!222 = !DILocation(line: 77, column: 34, scope: !223)
!223 = distinct !DILexicalBlock(scope: !219, file: !15, line: 77, column: 22)
!224 = !DILocation(line: 77, column: 38, scope: !223)
!225 = !DILocation(line: 77, column: 36, scope: !223)
!226 = !DILocation(line: 77, column: 22, scope: !219)
!227 = !DILocation(line: 79, column: 6, scope: !228)
!228 = distinct !DILexicalBlock(scope: !223, file: !15, line: 77, column: 46)
!229 = !DILocation(line: 79, column: 9, scope: !228)
!230 = !DILocation(line: 79, column: 11, scope: !228)
!231 = !DILocation(line: 79, column: 10, scope: !228)
!232 = !{i1 false, !233, i1 false, i1 true}
!233 = !{double 0.000000e+00, double 3.200000e+01}
!234 = !DILocation(line: 79, column: 14, scope: !228)
!235 = !DILocation(line: 79, column: 13, scope: !228)
!236 = !{i1 false, !237, i1 false, i1 true}
!237 = !{double 0.000000e+00, double 3.400000e+01}
!238 = !DILocation(line: 79, column: 17, scope: !228)
!239 = !DILocation(line: 80, column: 30, scope: !240)
!240 = distinct !DILexicalBlock(scope: !228, file: !15, line: 80, column: 23)
!241 = !DILocation(line: 80, column: 28, scope: !240)
!242 = !DILocation(line: 80, column: 35, scope: !243)
!243 = distinct !DILexicalBlock(scope: !240, file: !15, line: 80, column: 23)
!244 = !DILocation(line: 80, column: 37, scope: !243)
!245 = !DILocation(line: 80, column: 23, scope: !240)
!246 = !DILocation(line: 82, column: 24, scope: !247)
!247 = distinct !DILexicalBlock(scope: !243, file: !15, line: 80, column: 47)
!248 = !DILocation(line: 82, column: 27, scope: !247)
!249 = !DILocation(line: 82, column: 29, scope: !247)
!250 = !DILocation(line: 82, column: 28, scope: !247)
!251 = !DILocation(line: 82, column: 32, scope: !247)
!252 = !DILocation(line: 82, column: 31, scope: !247)
!253 = !{i1 false, !254, i1 false, i1 true}
!254 = !{double 0.000000e+00, double 3.300000e+01}
!255 = !DILocation(line: 82, column: 37, scope: !247)
!256 = !DILocation(line: 82, column: 40, scope: !247)
!257 = !DILocation(line: 82, column: 42, scope: !247)
!258 = !DILocation(line: 82, column: 41, scope: !247)
!259 = !{i1 false, !260, i1 false, i1 true}
!260 = !{double 0.000000e+00, double 1.600000e+01}
!261 = !DILocation(line: 82, column: 45, scope: !247)
!262 = !DILocation(line: 82, column: 44, scope: !247)
!263 = !{i1 false, !264, i1 false, i1 true}
!264 = !{double 0.000000e+00, double 1.900000e+01}
!265 = !DILocation(line: 82, column: 10, scope: !247)
!266 = !DILocation(line: 82, column: 35, scope: !247)
!267 = !DILocation(line: 82, column: 13, scope: !247)
!268 = !DILocation(line: 82, column: 15, scope: !247)
!269 = !DILocation(line: 82, column: 14, scope: !247)
!270 = !DILocation(line: 82, column: 18, scope: !247)
!271 = !DILocation(line: 82, column: 17, scope: !247)
!272 = !{i1 false, !273, i1 false, i1 true}
!273 = !{double 0.000000e+00, double 3.500000e+01}
!274 = !DILocation(line: 82, column: 21, scope: !247)
!275 = !DILocation(line: 83, column: 9, scope: !247)
!276 = !DILocation(line: 80, column: 43, scope: !243)
!277 = !DILocation(line: 80, column: 23, scope: !243)
!278 = distinct !{!278, !245, !279, !280}
!279 = !DILocation(line: 83, column: 9, scope: !240)
!280 = !{!"llvm.loop.name", !"VITIS_LOOP_80_6"}
!281 = !DILocation(line: 84, column: 5, scope: !228)
!282 = !DILocation(line: 77, column: 43, scope: !223)
!283 = !{i1 false, !284, i1 false, i1 true}
!284 = !{double 1.000000e+00, double 3.000000e+00}
!285 = !DILocation(line: 77, column: 22, scope: !223)
!286 = distinct !{!286, !226, !287, !288}
!287 = !DILocation(line: 84, column: 5, scope: !219)
!288 = !{!"llvm.loop.name", !"VITIS_LOOP_77_5"}
!289 = !DILocation(line: 85, column: 4, scope: !220)
!290 = !DILocation(line: 75, column: 41, scope: !213)
!291 = !DILocation(line: 75, column: 20, scope: !213)
!292 = distinct !{!292, !216, !293, !294}
!293 = !DILocation(line: 85, column: 4, scope: !210)
!294 = !{!"llvm.loop.name", !"VITIS_LOOP_75_4"}
!295 = !DILocation(line: 88, column: 27, scope: !296)
!296 = distinct !DILexicalBlock(scope: !14, file: !15, line: 88, column: 20)
!297 = !DILocation(line: 88, column: 25, scope: !296)
!298 = !DILocation(line: 88, column: 32, scope: !299)
!299 = distinct !DILexicalBlock(scope: !296, file: !15, line: 88, column: 20)
!300 = !DILocation(line: 88, column: 34, scope: !299)
!301 = !DILocation(line: 88, column: 20, scope: !296)
!302 = !DILocation(line: 88, column: 44, scope: !299)
!303 = !DILocation(line: 90, column: 29, scope: !304)
!304 = distinct !DILexicalBlock(scope: !305, file: !15, line: 90, column: 22)
!305 = distinct !DILexicalBlock(scope: !299, file: !15, line: 88, column: 44)
!306 = !DILocation(line: 90, column: 27, scope: !304)
!307 = !DILocation(line: 90, column: 34, scope: !308)
!308 = distinct !DILexicalBlock(scope: !304, file: !15, line: 90, column: 22)
!309 = !DILocation(line: 90, column: 36, scope: !308)
!310 = !DILocation(line: 90, column: 22, scope: !304)
!311 = !DILocation(line: 92, column: 6, scope: !312)
!312 = distinct !DILexicalBlock(scope: !308, file: !15, line: 90, column: 46)
!313 = !DILocation(line: 92, column: 9, scope: !312)
!314 = !DILocation(line: 92, column: 11, scope: !312)
!315 = !DILocation(line: 92, column: 10, scope: !312)
!316 = !{i1 false, !317, i1 false, i1 true}
!317 = !{double 0.000000e+00, double 4.800000e+01}
!318 = !DILocation(line: 92, column: 14, scope: !312)
!319 = !DILocation(line: 92, column: 13, scope: !312)
!320 = !{i1 false, !321, i1 false, i1 true}
!321 = !{double 0.000000e+00, double 5.100000e+01}
!322 = !DILocation(line: 92, column: 17, scope: !312)
!323 = !DILocation(line: 93, column: 30, scope: !324)
!324 = distinct !DILexicalBlock(scope: !312, file: !15, line: 93, column: 23)
!325 = !DILocation(line: 93, column: 28, scope: !324)
!326 = !DILocation(line: 93, column: 35, scope: !327)
!327 = distinct !DILexicalBlock(scope: !324, file: !15, line: 93, column: 23)
!328 = !DILocation(line: 93, column: 37, scope: !327)
!329 = !DILocation(line: 93, column: 23, scope: !324)
!330 = !DILocation(line: 95, column: 24, scope: !331)
!331 = distinct !DILexicalBlock(scope: !327, file: !15, line: 93, column: 47)
!332 = !DILocation(line: 95, column: 27, scope: !331)
!333 = !DILocation(line: 95, column: 29, scope: !331)
!334 = !DILocation(line: 95, column: 28, scope: !331)
!335 = !DILocation(line: 95, column: 32, scope: !331)
!336 = !DILocation(line: 95, column: 31, scope: !331)
!337 = !{i1 false, !338, i1 false, i1 true}
!338 = !{double 0.000000e+00, double 5.000000e+01}
!339 = !DILocation(line: 95, column: 37, scope: !331)
!340 = !DILocation(line: 95, column: 40, scope: !331)
!341 = !DILocation(line: 95, column: 42, scope: !331)
!342 = !DILocation(line: 95, column: 41, scope: !331)
!343 = !DILocation(line: 95, column: 45, scope: !331)
!344 = !DILocation(line: 95, column: 44, scope: !331)
!345 = !{i1 false, !346, i1 false, i1 true}
!346 = !{double 0.000000e+00, double 3.600000e+01}
!347 = !DILocation(line: 95, column: 10, scope: !331)
!348 = !{!349, !36, i1 false}
!349 = !{!"fixp", i32 64, i32 16}
!350 = !DILocation(line: 95, column: 35, scope: !331)
!351 = !DILocation(line: 95, column: 13, scope: !331)
!352 = !DILocation(line: 95, column: 15, scope: !331)
!353 = !DILocation(line: 95, column: 14, scope: !331)
!354 = !DILocation(line: 95, column: 18, scope: !331)
!355 = !DILocation(line: 95, column: 17, scope: !331)
!356 = !{i1 false, !357, i1 false, i1 true}
!357 = !{double 0.000000e+00, double 5.200000e+01}
!358 = !DILocation(line: 95, column: 21, scope: !331)
!359 = !DILocation(line: 96, column: 9, scope: !331)
!360 = !DILocation(line: 93, column: 43, scope: !327)
!361 = !DILocation(line: 93, column: 23, scope: !327)
!362 = distinct !{!362, !329, !363, !364}
!363 = !DILocation(line: 96, column: 9, scope: !324)
!364 = !{!"llvm.loop.name", !"VITIS_LOOP_93_9"}
!365 = !DILocation(line: 97, column: 5, scope: !312)
!366 = !DILocation(line: 90, column: 43, scope: !308)
!367 = !{i1 false, !368, i1 false, i1 true}
!368 = !{double 1.000000e+00, double 4.000000e+00}
!369 = !DILocation(line: 90, column: 22, scope: !308)
!370 = distinct !{!370, !310, !371, !372}
!371 = !DILocation(line: 97, column: 5, scope: !304)
!372 = !{!"llvm.loop.name", !"VITIS_LOOP_90_8"}
!373 = !DILocation(line: 98, column: 3, scope: !305)
!374 = !DILocation(line: 88, column: 41, scope: !299)
!375 = !DILocation(line: 88, column: 20, scope: !299)
!376 = distinct !{!376, !301, !377, !378}
!377 = !DILocation(line: 98, column: 3, scope: !296)
!378 = !{!"llvm.loop.name", !"VITIS_LOOP_88_7"}
!379 = !DILocation(line: 99, column: 1, scope: !14)
!380 = !{i1 false, !381, i1 false, i1 true}
!381 = !{double 0.000000e+00, double 2.000000e+00}
!382 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!383 = !{i32 0, i1 false, i32 0, i1 false}
!384 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
