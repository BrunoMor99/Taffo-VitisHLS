; ModuleID = '/home/bruno/Desktop/benchmarks/mm3/intermediate/output.3.magiclangtmp.ll'
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
  %As = alloca float*, align 8, !taffo.info !27, !taffo.target !30
  %Bs = alloca float*, align 8, !taffo.info !27, !taffo.target !31
  %Cs = alloca float*, align 8, !taffo.info !27, !taffo.target !32
  %Ds = alloca float*, align 8, !taffo.info !27, !taffo.target !33
  %Es = alloca float*, align 8, !taffo.info !34, !taffo.target !37
  %Fs = alloca float*, align 8, !taffo.info !34, !taffo.target !38
  %Gs = alloca float*, align 8, !taffo.info !34, !taffo.target !39
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
  %5 = bitcast float** %As to i8*, !dbg !81, !taffo.info !82, !taffo.target !30
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %5) #4, !dbg !81, !taffo.info !83, !taffo.target !30
  call void @llvm.dbg.declare(metadata float** %As, metadata !84, metadata !DIExpression()), !dbg !85
  %As1 = bitcast float** %As to i8*, !dbg !81, !taffo.info !82, !taffo.target !30
  %6 = load float*, float** %A.addr, align 8, !dbg !86
  store float* %6, float** %As, align 8, !dbg !87, !taffo.info !83, !taffo.target !30
  %7 = bitcast float** %Bs to i8*, !dbg !88, !taffo.info !82, !taffo.target !31
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %7) #4, !dbg !88, !taffo.info !83, !taffo.target !31
  call void @llvm.dbg.declare(metadata float** %Bs, metadata !89, metadata !DIExpression()), !dbg !90
  %Bs2 = bitcast float** %Bs to i8*, !dbg !88, !taffo.info !82, !taffo.target !31
  %8 = load float*, float** %B.addr, align 8, !dbg !91
  store float* %8, float** %Bs, align 8, !dbg !92, !taffo.info !83, !taffo.target !31
  %9 = bitcast float** %Cs to i8*, !dbg !93, !taffo.info !82, !taffo.target !32
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %9) #4, !dbg !93, !taffo.info !83, !taffo.target !32
  call void @llvm.dbg.declare(metadata float** %Cs, metadata !94, metadata !DIExpression()), !dbg !95
  %Cs3 = bitcast float** %Cs to i8*, !dbg !93, !taffo.info !82, !taffo.target !32
  %10 = load float*, float** %C.addr, align 8, !dbg !96
  store float* %10, float** %Cs, align 8, !dbg !97, !taffo.info !83, !taffo.target !32
  %11 = bitcast float** %Ds to i8*, !dbg !98, !taffo.info !82, !taffo.target !33
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %11) #4, !dbg !98, !taffo.info !83, !taffo.target !33
  call void @llvm.dbg.declare(metadata float** %Ds, metadata !99, metadata !DIExpression()), !dbg !100
  %Ds4 = bitcast float** %Ds to i8*, !dbg !98, !taffo.info !82, !taffo.target !33
  %12 = load float*, float** %D.addr, align 8, !dbg !101
  store float* %12, float** %Ds, align 8, !dbg !102, !taffo.info !83, !taffo.target !33
  %13 = bitcast float** %Es to i8*, !dbg !103, !taffo.info !104, !taffo.target !37
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %13) #4, !dbg !103, !taffo.info !83, !taffo.target !37
  call void @llvm.dbg.declare(metadata float** %Es, metadata !105, metadata !DIExpression()), !dbg !106
  %Es5 = bitcast float** %Es to i8*, !dbg !103, !taffo.info !104, !taffo.target !37
  %14 = load float*, float** %E.addr, align 8, !dbg !107, !taffo.info !1
  store float* %14, float** %Es, align 8, !dbg !108, !taffo.info !83, !taffo.target !37
  %15 = bitcast float** %Fs to i8*, !dbg !109, !taffo.info !104, !taffo.target !38
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %15) #4, !dbg !109, !taffo.info !83, !taffo.target !38
  call void @llvm.dbg.declare(metadata float** %Fs, metadata !110, metadata !DIExpression()), !dbg !111
  %Fs6 = bitcast float** %Fs to i8*, !dbg !109, !taffo.info !104, !taffo.target !38
  %16 = load float*, float** %F.addr, align 8, !dbg !112, !taffo.info !1
  store float* %16, float** %Fs, align 8, !dbg !113, !taffo.info !83, !taffo.target !38
  %17 = bitcast float** %Gs to i8*, !dbg !114, !taffo.info !104, !taffo.target !39
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %17) #4, !dbg !114, !taffo.info !83, !taffo.target !39
  call void @llvm.dbg.declare(metadata float** %Gs, metadata !115, metadata !DIExpression()), !dbg !116
  %Gs7 = bitcast float** %Gs to i8*, !dbg !114, !taffo.info !104, !taffo.target !39
  %18 = load float*, float** %G.addr, align 8, !dbg !117, !taffo.info !1
  store float* %18, float** %Gs, align 8, !dbg !118, !taffo.info !83, !taffo.target !39
  %19 = bitcast i32* %i to i8*, !dbg !119, !taffo.info !83
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #4, !dbg !119, !taffo.info !83
  call void @llvm.dbg.declare(metadata i32* %i, metadata !120, metadata !DIExpression()), !dbg !121
  %i8 = bitcast i32* %i to i8*, !dbg !119, !taffo.info !83
  %20 = bitcast i32* %j to i8*, !dbg !122, !taffo.info !83
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %20) #4, !dbg !122, !taffo.info !83
  call void @llvm.dbg.declare(metadata i32* %j, metadata !123, metadata !DIExpression()), !dbg !124
  %j9 = bitcast i32* %j to i8*, !dbg !122, !taffo.info !83
  %21 = bitcast i32* %k to i8*, !dbg !125, !taffo.info !83
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %21) #4, !dbg !125, !taffo.info !83
  call void @llvm.dbg.declare(metadata i32* %k, metadata !126, metadata !DIExpression()), !dbg !127
  %k10 = bitcast i32* %k to i8*, !dbg !125, !taffo.info !83
  br label %VITIS_LOOP_63_1, !dbg !125

VITIS_LOOP_63_1:                                  ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !128, !taffo.info !83
  br label %for.cond, !dbg !130

for.cond:                                         ; preds = %for.inc34, %VITIS_LOOP_63_1
  %22 = load i32, i32* %i, align 4, !dbg !131, !taffo.info !40
  %23 = load i32, i32* %ni, align 4, !dbg !133, !taffo.info !25
  %cmp = icmp slt i32 %22, %23, !dbg !134, !taffo.info !135
  br i1 %cmp, label %for.body, label %for.end36, !dbg !137, !taffo.info !83

for.body:                                         ; preds = %for.cond
  br label %VITIS_LOOP_65_2, !dbg !138

VITIS_LOOP_65_2:                                  ; preds = %for.body
  store i32 0, i32* %j, align 4, !dbg !139, !taffo.info !83
  br label %for.cond11, !dbg !142

for.cond11:                                       ; preds = %for.inc31, %VITIS_LOOP_65_2
  %24 = load i32, i32* %j, align 4, !dbg !143, !taffo.info !42
  %25 = load i32, i32* %nj, align 4, !dbg !145, !taffo.info !25
  %cmp12 = icmp slt i32 %24, %25, !dbg !146, !taffo.info !135
  br i1 %cmp12, label %for.body13, label %for.end33, !dbg !147, !taffo.info !83

for.body13:                                       ; preds = %for.cond11
  %26 = load float*, float** %Es, align 8, !dbg !148, !taffo.info !34, !taffo.target !37
  %27 = load i32, i32* %i, align 4, !dbg !150, !taffo.info !40
  %28 = load i32, i32* %nj, align 4, !dbg !151, !taffo.info !25
  %mul = mul nsw i32 %27, %28, !dbg !152, !taffo.info !153
  %29 = load i32, i32* %j, align 4, !dbg !154, !taffo.info !42
  %add = add nsw i32 %mul, %29, !dbg !155, !taffo.info !153
  %idxprom = sext i32 %add to i64, !dbg !148, !taffo.info !153
  %arrayidx = getelementptr inbounds float, float* %26, i64 %idxprom, !dbg !148, !taffo.info !34, !taffo.target !37
  store float 0.000000e+00, float* %arrayidx, align 4, !dbg !156, !taffo.info !83, !taffo.target !37
  br label %VITIS_LOOP_68_3, !dbg !148

VITIS_LOOP_68_3:                                  ; preds = %for.body13
  store i32 0, i32* %k, align 4, !dbg !157, !taffo.info !83
  br label %for.cond14, !dbg !159

for.cond14:                                       ; preds = %for.inc, %VITIS_LOOP_68_3
  %30 = load i32, i32* %k, align 4, !dbg !160, !taffo.info !40
  %cmp15 = icmp slt i32 %30, 16, !dbg !162, !taffo.info !135
  br i1 %cmp15, label %for.body16, label %for.end, !dbg !163, !taffo.info !83

for.body16:                                       ; preds = %for.cond14
  %31 = load float*, float** %As, align 8, !dbg !164, !taffo.info !27, !taffo.target !30
  %32 = load i32, i32* %i, align 4, !dbg !166, !taffo.info !40
  %33 = load i32, i32* %nk, align 4, !dbg !167, !taffo.info !25
  %mul17 = mul nsw i32 %32, %33, !dbg !168, !taffo.info !153
  %34 = load i32, i32* %k, align 4, !dbg !169, !taffo.info !40
  %add18 = add nsw i32 %mul17, %34, !dbg !170, !taffo.info !153
  %idxprom19 = sext i32 %add18 to i64, !dbg !164, !taffo.info !153
  %arrayidx20 = getelementptr inbounds float, float* %31, i64 %idxprom19, !dbg !164, !taffo.info !27, !taffo.target !30
  %35 = load float, float* %arrayidx20, align 4, !dbg !164, !taffo.info !27, !taffo.target !30
  %36 = load float*, float** %Bs, align 8, !dbg !171, !taffo.info !27, !taffo.target !31
  %37 = load i32, i32* %k, align 4, !dbg !172, !taffo.info !40
  %38 = load i32, i32* %nj, align 4, !dbg !173, !taffo.info !25
  %mul21 = mul nsw i32 %37, %38, !dbg !174, !taffo.info !153
  %39 = load i32, i32* %j, align 4, !dbg !175, !taffo.info !42
  %add22 = add nsw i32 %mul21, %39, !dbg !176, !taffo.info !153
  %idxprom23 = sext i32 %add22 to i64, !dbg !171, !taffo.info !153
  %arrayidx24 = getelementptr inbounds float, float* %36, i64 %idxprom23, !dbg !171, !taffo.info !27, !taffo.target !31
  %40 = load float, float* %arrayidx24, align 4, !dbg !171, !taffo.info !27, !taffo.target !31
  %mul25 = fmul float %35, %40, !dbg !177, !taffo.info !178, !taffo.target !30
  %41 = load float*, float** %Es, align 8, !dbg !180, !taffo.info !34, !taffo.target !37
  %42 = load i32, i32* %i, align 4, !dbg !181, !taffo.info !40
  %43 = load i32, i32* %nj, align 4, !dbg !182, !taffo.info !25
  %mul26 = mul nsw i32 %42, %43, !dbg !183, !taffo.info !153
  %44 = load i32, i32* %j, align 4, !dbg !184, !taffo.info !42
  %add27 = add nsw i32 %mul26, %44, !dbg !185, !taffo.info !153
  %idxprom28 = sext i32 %add27 to i64, !dbg !180, !taffo.info !153
  %arrayidx29 = getelementptr inbounds float, float* %41, i64 %idxprom28, !dbg !180, !taffo.info !34, !taffo.target !37
  %45 = load float, float* %arrayidx29, align 4, !dbg !186, !taffo.info !34, !taffo.target !37
  %add30 = fadd float %45, %mul25, !dbg !186, !taffo.info !178, !taffo.target !37
  store float %add30, float* %arrayidx29, align 4, !dbg !186, !taffo.info !83, !taffo.target !37
  br label %for.inc, !dbg !187

for.inc:                                          ; preds = %for.body16
  %46 = load i32, i32* %k, align 4, !dbg !188, !taffo.info !40
  %inc = add nsw i32 %46, 1, !dbg !188, !taffo.info !135
  store i32 %inc, i32* %k, align 4, !dbg !188, !taffo.info !83
  br label %for.cond14, !dbg !189, !llvm.loop !190

for.end:                                          ; preds = %for.cond14
  br label %for.inc31, !dbg !193

for.inc31:                                        ; preds = %for.end
  %47 = load i32, i32* %j, align 4, !dbg !194, !taffo.info !42
  %inc32 = add nsw i32 %47, 1, !dbg !194, !taffo.info !195
  store i32 %inc32, i32* %j, align 4, !dbg !194, !taffo.info !83
  br label %for.cond11, !dbg !197, !llvm.loop !198

for.end33:                                        ; preds = %for.cond11
  br label %for.inc34, !dbg !201

for.inc34:                                        ; preds = %for.end33
  %48 = load i32, i32* %i, align 4, !dbg !202, !taffo.info !40
  %inc35 = add nsw i32 %48, 1, !dbg !202, !taffo.info !135
  store i32 %inc35, i32* %i, align 4, !dbg !202, !taffo.info !83
  br label %for.cond, !dbg !203, !llvm.loop !204

for.end36:                                        ; preds = %for.cond
  br label %VITIS_LOOP_75_4, !dbg !205

VITIS_LOOP_75_4:                                  ; preds = %for.end36
  store i32 0, i32* %i, align 4, !dbg !207, !taffo.info !83
  br label %for.cond37, !dbg !209

for.cond37:                                       ; preds = %for.inc70, %VITIS_LOOP_75_4
  %49 = load i32, i32* %i, align 4, !dbg !210, !taffo.info !40
  %50 = load i32, i32* %nj, align 4, !dbg !212, !taffo.info !25
  %cmp38 = icmp slt i32 %49, %50, !dbg !213, !taffo.info !135
  br i1 %cmp38, label %for.body39, label %for.end72, !dbg !214, !taffo.info !83

for.body39:                                       ; preds = %for.cond37
  br label %VITIS_LOOP_77_5, !dbg !215

VITIS_LOOP_77_5:                                  ; preds = %for.body39
  store i32 0, i32* %j, align 4, !dbg !216, !taffo.info !83
  br label %for.cond40, !dbg !219

for.cond40:                                       ; preds = %for.inc67, %VITIS_LOOP_77_5
  %51 = load i32, i32* %j, align 4, !dbg !220, !taffo.info !42
  %52 = load i32, i32* %nl, align 4, !dbg !222, !taffo.info !25
  %cmp41 = icmp slt i32 %51, %52, !dbg !223, !taffo.info !135
  br i1 %cmp41, label %for.body42, label %for.end69, !dbg !224, !taffo.info !83

for.body42:                                       ; preds = %for.cond40
  %53 = load float*, float** %Fs, align 8, !dbg !225, !taffo.info !34, !taffo.target !38
  %54 = load i32, i32* %i, align 4, !dbg !227, !taffo.info !40
  %55 = load i32, i32* %nl, align 4, !dbg !228, !taffo.info !25
  %mul43 = mul nsw i32 %54, %55, !dbg !229, !taffo.info !230
  %56 = load i32, i32* %j, align 4, !dbg !232, !taffo.info !42
  %add44 = add nsw i32 %mul43, %56, !dbg !233, !taffo.info !234
  %idxprom45 = sext i32 %add44 to i64, !dbg !225, !taffo.info !234
  %arrayidx46 = getelementptr inbounds float, float* %53, i64 %idxprom45, !dbg !225, !taffo.info !34, !taffo.target !38
  store float 0.000000e+00, float* %arrayidx46, align 4, !dbg !236, !taffo.info !83, !taffo.target !38
  br label %VITIS_LOOP_80_6, !dbg !225

VITIS_LOOP_80_6:                                  ; preds = %for.body42
  store i32 0, i32* %k, align 4, !dbg !237, !taffo.info !83
  br label %for.cond47, !dbg !239

for.cond47:                                       ; preds = %for.inc64, %VITIS_LOOP_80_6
  %57 = load i32, i32* %k, align 4, !dbg !240, !taffo.info !40
  %cmp48 = icmp slt i32 %57, 16, !dbg !242, !taffo.info !135
  br i1 %cmp48, label %for.body49, label %for.end66, !dbg !243, !taffo.info !83

for.body49:                                       ; preds = %for.cond47
  %58 = load float*, float** %Cs, align 8, !dbg !244, !taffo.info !27, !taffo.target !32
  %59 = load i32, i32* %i, align 4, !dbg !246, !taffo.info !40
  %60 = load i32, i32* %nm, align 4, !dbg !247, !taffo.info !25
  %mul50 = mul nsw i32 %59, %60, !dbg !248, !taffo.info !230
  %61 = load i32, i32* %k, align 4, !dbg !249, !taffo.info !40
  %add51 = add nsw i32 %mul50, %61, !dbg !250, !taffo.info !251
  %idxprom52 = sext i32 %add51 to i64, !dbg !244, !taffo.info !251
  %arrayidx53 = getelementptr inbounds float, float* %58, i64 %idxprom52, !dbg !244, !taffo.info !27, !taffo.target !32
  %62 = load float, float* %arrayidx53, align 4, !dbg !244, !taffo.info !27, !taffo.target !32
  %63 = load float*, float** %Ds, align 8, !dbg !253, !taffo.info !27, !taffo.target !33
  %64 = load i32, i32* %k, align 4, !dbg !254, !taffo.info !40
  %65 = load i32, i32* %nl, align 4, !dbg !255, !taffo.info !25
  %mul54 = mul nsw i32 %64, %65, !dbg !256, !taffo.info !257
  %66 = load i32, i32* %j, align 4, !dbg !259, !taffo.info !42
  %add55 = add nsw i32 %mul54, %66, !dbg !260, !taffo.info !261
  %idxprom56 = sext i32 %add55 to i64, !dbg !253, !taffo.info !261
  %arrayidx57 = getelementptr inbounds float, float* %63, i64 %idxprom56, !dbg !253, !taffo.info !27, !taffo.target !33
  %67 = load float, float* %arrayidx57, align 4, !dbg !253, !taffo.info !27, !taffo.target !33
  %mul58 = fmul float %62, %67, !dbg !263, !taffo.info !178, !taffo.target !32
  %68 = load float*, float** %Fs, align 8, !dbg !264, !taffo.info !34, !taffo.target !38
  %69 = load i32, i32* %i, align 4, !dbg !265, !taffo.info !40
  %70 = load i32, i32* %nl, align 4, !dbg !266, !taffo.info !25
  %mul59 = mul nsw i32 %69, %70, !dbg !267, !taffo.info !230
  %71 = load i32, i32* %j, align 4, !dbg !268, !taffo.info !42
  %add60 = add nsw i32 %mul59, %71, !dbg !269, !taffo.info !270
  %idxprom61 = sext i32 %add60 to i64, !dbg !264, !taffo.info !270
  %arrayidx62 = getelementptr inbounds float, float* %68, i64 %idxprom61, !dbg !264, !taffo.info !34, !taffo.target !38
  %72 = load float, float* %arrayidx62, align 4, !dbg !272, !taffo.info !34, !taffo.target !38
  %add63 = fadd float %72, %mul58, !dbg !272, !taffo.info !178, !taffo.target !38
  store float %add63, float* %arrayidx62, align 4, !dbg !272, !taffo.info !83, !taffo.target !38
  br label %for.inc64, !dbg !273

for.inc64:                                        ; preds = %for.body49
  %73 = load i32, i32* %k, align 4, !dbg !274, !taffo.info !40
  %inc65 = add nsw i32 %73, 1, !dbg !274, !taffo.info !195
  store i32 %inc65, i32* %k, align 4, !dbg !274, !taffo.info !83
  br label %for.cond47, !dbg !275, !llvm.loop !276

for.end66:                                        ; preds = %for.cond47
  br label %for.inc67, !dbg !279

for.inc67:                                        ; preds = %for.end66
  %74 = load i32, i32* %j, align 4, !dbg !280, !taffo.info !42
  %inc68 = add nsw i32 %74, 1, !dbg !280, !taffo.info !281
  store i32 %inc68, i32* %j, align 4, !dbg !280, !taffo.info !83
  br label %for.cond40, !dbg !283, !llvm.loop !284

for.end69:                                        ; preds = %for.cond40
  br label %for.inc70, !dbg !287

for.inc70:                                        ; preds = %for.end69
  %75 = load i32, i32* %i, align 4, !dbg !288, !taffo.info !40
  %inc71 = add nsw i32 %75, 1, !dbg !288, !taffo.info !195
  store i32 %inc71, i32* %i, align 4, !dbg !288, !taffo.info !83
  br label %for.cond37, !dbg !289, !llvm.loop !290

for.end72:                                        ; preds = %for.cond37
  br label %VITIS_LOOP_88_7, !dbg !291

VITIS_LOOP_88_7:                                  ; preds = %for.end72
  store i32 0, i32* %i, align 4, !dbg !293, !taffo.info !83
  br label %for.cond73, !dbg !295

for.cond73:                                       ; preds = %for.inc106, %VITIS_LOOP_88_7
  %76 = load i32, i32* %i, align 4, !dbg !296, !taffo.info !40
  %cmp74 = icmp slt i32 %76, 16, !dbg !298, !taffo.info !135
  br i1 %cmp74, label %for.body75, label %for.end108, !dbg !299, !taffo.info !83

for.body75:                                       ; preds = %for.cond73
  br label %VITIS_LOOP_90_8, !dbg !300

VITIS_LOOP_90_8:                                  ; preds = %for.body75
  store i32 0, i32* %j, align 4, !dbg !301, !taffo.info !83
  br label %for.cond76, !dbg !304

for.cond76:                                       ; preds = %for.inc103, %VITIS_LOOP_90_8
  %77 = load i32, i32* %j, align 4, !dbg !305, !taffo.info !42
  %cmp77 = icmp slt i32 %77, 16, !dbg !307, !taffo.info !135
  br i1 %cmp77, label %for.body78, label %for.end105, !dbg !308, !taffo.info !83

for.body78:                                       ; preds = %for.cond76
  %78 = load float*, float** %Gs, align 8, !dbg !309, !taffo.info !34, !taffo.target !39
  %79 = load i32, i32* %i, align 4, !dbg !311, !taffo.info !40
  %80 = load i32, i32* %nl, align 4, !dbg !312, !taffo.info !25
  %mul79 = mul nsw i32 %79, %80, !dbg !313, !taffo.info !314
  %81 = load i32, i32* %j, align 4, !dbg !316, !taffo.info !42
  %add80 = add nsw i32 %mul79, %81, !dbg !317, !taffo.info !318
  %idxprom81 = sext i32 %add80 to i64, !dbg !309, !taffo.info !318
  %arrayidx82 = getelementptr inbounds float, float* %78, i64 %idxprom81, !dbg !309, !taffo.info !34, !taffo.target !39
  store float 0.000000e+00, float* %arrayidx82, align 4, !dbg !320, !taffo.info !83, !taffo.target !39
  br label %VITIS_LOOP_93_9, !dbg !309

VITIS_LOOP_93_9:                                  ; preds = %for.body78
  store i32 0, i32* %k, align 4, !dbg !321, !taffo.info !83
  br label %for.cond83, !dbg !323

for.cond83:                                       ; preds = %for.inc100, %VITIS_LOOP_93_9
  %82 = load i32, i32* %k, align 4, !dbg !324, !taffo.info !40
  %cmp84 = icmp slt i32 %82, 16, !dbg !326, !taffo.info !135
  br i1 %cmp84, label %for.body85, label %for.end102, !dbg !327, !taffo.info !83

for.body85:                                       ; preds = %for.cond83
  %83 = load float*, float** %Es, align 8, !dbg !328, !taffo.info !34, !taffo.target !37
  %84 = load i32, i32* %i, align 4, !dbg !330, !taffo.info !40
  %85 = load i32, i32* %nj, align 4, !dbg !331, !taffo.info !25
  %mul86 = mul nsw i32 %84, %85, !dbg !332, !taffo.info !314
  %86 = load i32, i32* %k, align 4, !dbg !333, !taffo.info !40
  %add87 = add nsw i32 %mul86, %86, !dbg !334, !taffo.info !335
  %idxprom88 = sext i32 %add87 to i64, !dbg !328, !taffo.info !335
  %arrayidx89 = getelementptr inbounds float, float* %83, i64 %idxprom88, !dbg !328, !taffo.info !34, !taffo.target !37
  %87 = load float, float* %arrayidx89, align 4, !dbg !328, !taffo.info !34, !taffo.target !37
  %88 = load float*, float** %Fs, align 8, !dbg !337, !taffo.info !34, !taffo.target !38
  %89 = load i32, i32* %k, align 4, !dbg !338, !taffo.info !40
  %90 = load i32, i32* %nl, align 4, !dbg !339, !taffo.info !25
  %mul90 = mul nsw i32 %89, %90, !dbg !340, !taffo.info !230
  %91 = load i32, i32* %j, align 4, !dbg !341, !taffo.info !42
  %add91 = add nsw i32 %mul90, %91, !dbg !342, !taffo.info !343
  %idxprom92 = sext i32 %add91 to i64, !dbg !337, !taffo.info !343
  %arrayidx93 = getelementptr inbounds float, float* %88, i64 %idxprom92, !dbg !337, !taffo.info !34, !taffo.target !38
  %92 = load float, float* %arrayidx93, align 4, !dbg !337, !taffo.info !34, !taffo.target !38
  %mul94 = fmul float %87, %92, !dbg !345, !taffo.info !178, !taffo.target !37
  %93 = load float*, float** %Gs, align 8, !dbg !346, !taffo.info !34, !taffo.target !39
  %94 = load i32, i32* %i, align 4, !dbg !347, !taffo.info !40
  %95 = load i32, i32* %nl, align 4, !dbg !348, !taffo.info !25
  %mul95 = mul nsw i32 %94, %95, !dbg !349, !taffo.info !314
  %96 = load i32, i32* %j, align 4, !dbg !350, !taffo.info !42
  %add96 = add nsw i32 %mul95, %96, !dbg !351, !taffo.info !352
  %idxprom97 = sext i32 %add96 to i64, !dbg !346, !taffo.info !352
  %arrayidx98 = getelementptr inbounds float, float* %93, i64 %idxprom97, !dbg !346, !taffo.info !34, !taffo.target !39
  %97 = load float, float* %arrayidx98, align 4, !dbg !354, !taffo.info !34, !taffo.target !39
  %add99 = fadd float %97, %mul94, !dbg !354, !taffo.info !178, !taffo.target !39
  store float %add99, float* %arrayidx98, align 4, !dbg !354, !taffo.info !83, !taffo.target !39
  br label %for.inc100, !dbg !355

for.inc100:                                       ; preds = %for.body85
  %98 = load i32, i32* %k, align 4, !dbg !356, !taffo.info !40
  %inc101 = add nsw i32 %98, 1, !dbg !356, !taffo.info !281
  store i32 %inc101, i32* %k, align 4, !dbg !356, !taffo.info !83
  br label %for.cond83, !dbg !357, !llvm.loop !358

for.end102:                                       ; preds = %for.cond83
  br label %for.inc103, !dbg !361

for.inc103:                                       ; preds = %for.end102
  %99 = load i32, i32* %j, align 4, !dbg !362, !taffo.info !42
  %inc104 = add nsw i32 %99, 1, !dbg !362, !taffo.info !363
  store i32 %inc104, i32* %j, align 4, !dbg !362, !taffo.info !83
  br label %for.cond76, !dbg !365, !llvm.loop !366

for.end105:                                       ; preds = %for.cond76
  br label %for.inc106, !dbg !369

for.inc106:                                       ; preds = %for.end105
  %100 = load i32, i32* %i, align 4, !dbg !370, !taffo.info !40
  %inc107 = add nsw i32 %100, 1, !dbg !370, !taffo.info !281
  store i32 %inc107, i32* %i, align 4, !dbg !370, !taffo.info !83
  br label %for.cond73, !dbg !371, !llvm.loop !372

for.end108:                                       ; preds = %for.cond73
  %101 = bitcast i32* %k to i8*, !dbg !375, !taffo.info !376
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %101) #4, !dbg !375, !taffo.info !83
  %102 = bitcast i32* %j to i8*, !dbg !375, !taffo.info !40
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %102) #4, !dbg !375, !taffo.info !83
  %103 = bitcast i32* %i to i8*, !dbg !375, !taffo.info !40
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %103) #4, !dbg !375, !taffo.info !83
  %104 = bitcast float** %Gs to i8*, !dbg !375, !taffo.info !104, !taffo.target !39
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %104) #4, !dbg !375, !taffo.info !83, !taffo.target !39
  %105 = bitcast float** %Fs to i8*, !dbg !375, !taffo.info !104, !taffo.target !38
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %105) #4, !dbg !375, !taffo.info !83, !taffo.target !38
  %106 = bitcast float** %Es to i8*, !dbg !375, !taffo.info !104, !taffo.target !37
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %106) #4, !dbg !375, !taffo.info !83, !taffo.target !37
  %107 = bitcast float** %Ds to i8*, !dbg !375, !taffo.info !82, !taffo.target !33
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %107) #4, !dbg !375, !taffo.info !83, !taffo.target !33
  %108 = bitcast float** %Cs to i8*, !dbg !375, !taffo.info !82, !taffo.target !32
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %108) #4, !dbg !375, !taffo.info !83, !taffo.target !32
  %109 = bitcast float** %Bs to i8*, !dbg !375, !taffo.info !82, !taffo.target !31
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %109) #4, !dbg !375, !taffo.info !83, !taffo.target !31
  %110 = bitcast float** %As to i8*, !dbg !375, !taffo.info !82, !taffo.target !30
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %110) #4, !dbg !375, !taffo.info !83, !taffo.target !30
  %111 = bitcast i32* %nm to i8*, !dbg !375, !taffo.info !25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %111) #4, !dbg !375
  %112 = bitcast i32* %nl to i8*, !dbg !375, !taffo.info !25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %112) #4, !dbg !375
  %113 = bitcast i32* %nk to i8*, !dbg !375, !taffo.info !25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %113) #4, !dbg !375
  %114 = bitcast i32* %nj to i8*, !dbg !375, !taffo.info !25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %114) #4, !dbg !375
  %115 = bitcast i32* %ni to i8*, !dbg !375, !taffo.info !25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %115) #4, !dbg !375
  ret void, !dbg !375
}

; Function Attrs: nounwind readnone speculatable
declare !taffo.funinfo !378 void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: inaccessiblememonly nounwind
declare !taffo.funinfo !9 void @llvm.sideeffect() #2

; Function Attrs: argmemonly nounwind
declare !taffo.funinfo !379 void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare !taffo.funinfo !380 void @llvm.var.annotation(i8*, i8*, i8*, i32) #4

; Function Attrs: argmemonly nounwind
declare !taffo.funinfo !379 void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #3

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
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"wchar_size", i32 4}
!14 = distinct !DISubprogram(name: "mm3", scope: !15, file: !15, line: 26, type: !16, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!15 = !DIFile(filename: "mm3_taffo.c", directory: "/home/bruno/Desktop/benchmarks/mm3")
!16 = !DISubroutineType(types: !17)
!17 = !{null, !18, !18, !18, !18, !18, !18, !18}
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!20 = !{!21}
!21 = !{!"fpga.top", !"user", !22}
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
!177 = !DILocation(line: 70, column: 35, scope: !165)
!178 = !{!179, !2, i1 false, i1 true}
!179 = !{!"fixp", i32 32, i32 32}
!180 = !DILocation(line: 70, column: 10, scope: !165)
!181 = !DILocation(line: 70, column: 13, scope: !165)
!182 = !DILocation(line: 70, column: 15, scope: !165)
!183 = !DILocation(line: 70, column: 14, scope: !165)
!184 = !DILocation(line: 70, column: 18, scope: !165)
!185 = !DILocation(line: 70, column: 17, scope: !165)
!186 = !DILocation(line: 70, column: 21, scope: !165)
!187 = !DILocation(line: 71, column: 9, scope: !165)
!188 = !DILocation(line: 68, column: 43, scope: !161)
!189 = !DILocation(line: 68, column: 23, scope: !161)
!190 = distinct !{!190, !163, !191, !192}
!191 = !DILocation(line: 71, column: 9, scope: !158)
!192 = !{!"llvm.loop.name", !"VITIS_LOOP_68_3"}
!193 = !DILocation(line: 72, column: 5, scope: !149)
!194 = !DILocation(line: 65, column: 43, scope: !144)
!195 = !{i1 false, !196, i1 false, i1 true}
!196 = !{double 1.000000e+00, double 2.000000e+00}
!197 = !DILocation(line: 65, column: 22, scope: !144)
!198 = distinct !{!198, !147, !199, !200}
!199 = !DILocation(line: 72, column: 5, scope: !140)
!200 = !{!"llvm.loop.name", !"VITIS_LOOP_65_2"}
!201 = !DILocation(line: 73, column: 4, scope: !141)
!202 = !DILocation(line: 63, column: 41, scope: !132)
!203 = !DILocation(line: 63, column: 20, scope: !132)
!204 = distinct !{!204, !137, !205, !206}
!205 = !DILocation(line: 73, column: 4, scope: !129)
!206 = !{!"llvm.loop.name", !"VITIS_LOOP_63_1"}
!207 = !DILocation(line: 75, column: 27, scope: !208)
!208 = distinct !DILexicalBlock(scope: !14, file: !15, line: 75, column: 20)
!209 = !DILocation(line: 75, column: 25, scope: !208)
!210 = !DILocation(line: 75, column: 32, scope: !211)
!211 = distinct !DILexicalBlock(scope: !208, file: !15, line: 75, column: 20)
!212 = !DILocation(line: 75, column: 36, scope: !211)
!213 = !DILocation(line: 75, column: 34, scope: !211)
!214 = !DILocation(line: 75, column: 20, scope: !208)
!215 = !DILocation(line: 75, column: 44, scope: !211)
!216 = !DILocation(line: 77, column: 29, scope: !217)
!217 = distinct !DILexicalBlock(scope: !218, file: !15, line: 77, column: 22)
!218 = distinct !DILexicalBlock(scope: !211, file: !15, line: 75, column: 44)
!219 = !DILocation(line: 77, column: 27, scope: !217)
!220 = !DILocation(line: 77, column: 34, scope: !221)
!221 = distinct !DILexicalBlock(scope: !217, file: !15, line: 77, column: 22)
!222 = !DILocation(line: 77, column: 38, scope: !221)
!223 = !DILocation(line: 77, column: 36, scope: !221)
!224 = !DILocation(line: 77, column: 22, scope: !217)
!225 = !DILocation(line: 79, column: 6, scope: !226)
!226 = distinct !DILexicalBlock(scope: !221, file: !15, line: 77, column: 46)
!227 = !DILocation(line: 79, column: 9, scope: !226)
!228 = !DILocation(line: 79, column: 11, scope: !226)
!229 = !DILocation(line: 79, column: 10, scope: !226)
!230 = !{i1 false, !231, i1 false, i1 true}
!231 = !{double 0.000000e+00, double 3.200000e+01}
!232 = !DILocation(line: 79, column: 14, scope: !226)
!233 = !DILocation(line: 79, column: 13, scope: !226)
!234 = !{i1 false, !235, i1 false, i1 true}
!235 = !{double 0.000000e+00, double 3.400000e+01}
!236 = !DILocation(line: 79, column: 17, scope: !226)
!237 = !DILocation(line: 80, column: 30, scope: !238)
!238 = distinct !DILexicalBlock(scope: !226, file: !15, line: 80, column: 23)
!239 = !DILocation(line: 80, column: 28, scope: !238)
!240 = !DILocation(line: 80, column: 35, scope: !241)
!241 = distinct !DILexicalBlock(scope: !238, file: !15, line: 80, column: 23)
!242 = !DILocation(line: 80, column: 37, scope: !241)
!243 = !DILocation(line: 80, column: 23, scope: !238)
!244 = !DILocation(line: 82, column: 24, scope: !245)
!245 = distinct !DILexicalBlock(scope: !241, file: !15, line: 80, column: 47)
!246 = !DILocation(line: 82, column: 27, scope: !245)
!247 = !DILocation(line: 82, column: 29, scope: !245)
!248 = !DILocation(line: 82, column: 28, scope: !245)
!249 = !DILocation(line: 82, column: 32, scope: !245)
!250 = !DILocation(line: 82, column: 31, scope: !245)
!251 = !{i1 false, !252, i1 false, i1 true}
!252 = !{double 0.000000e+00, double 3.300000e+01}
!253 = !DILocation(line: 82, column: 37, scope: !245)
!254 = !DILocation(line: 82, column: 40, scope: !245)
!255 = !DILocation(line: 82, column: 42, scope: !245)
!256 = !DILocation(line: 82, column: 41, scope: !245)
!257 = !{i1 false, !258, i1 false, i1 true}
!258 = !{double 0.000000e+00, double 1.600000e+01}
!259 = !DILocation(line: 82, column: 45, scope: !245)
!260 = !DILocation(line: 82, column: 44, scope: !245)
!261 = !{i1 false, !262, i1 false, i1 true}
!262 = !{double 0.000000e+00, double 1.900000e+01}
!263 = !DILocation(line: 82, column: 35, scope: !245)
!264 = !DILocation(line: 82, column: 10, scope: !245)
!265 = !DILocation(line: 82, column: 13, scope: !245)
!266 = !DILocation(line: 82, column: 15, scope: !245)
!267 = !DILocation(line: 82, column: 14, scope: !245)
!268 = !DILocation(line: 82, column: 18, scope: !245)
!269 = !DILocation(line: 82, column: 17, scope: !245)
!270 = !{i1 false, !271, i1 false, i1 true}
!271 = !{double 0.000000e+00, double 3.500000e+01}
!272 = !DILocation(line: 82, column: 21, scope: !245)
!273 = !DILocation(line: 83, column: 9, scope: !245)
!274 = !DILocation(line: 80, column: 43, scope: !241)
!275 = !DILocation(line: 80, column: 23, scope: !241)
!276 = distinct !{!276, !243, !277, !278}
!277 = !DILocation(line: 83, column: 9, scope: !238)
!278 = !{!"llvm.loop.name", !"VITIS_LOOP_80_6"}
!279 = !DILocation(line: 84, column: 5, scope: !226)
!280 = !DILocation(line: 77, column: 43, scope: !221)
!281 = !{i1 false, !282, i1 false, i1 true}
!282 = !{double 1.000000e+00, double 3.000000e+00}
!283 = !DILocation(line: 77, column: 22, scope: !221)
!284 = distinct !{!284, !224, !285, !286}
!285 = !DILocation(line: 84, column: 5, scope: !217)
!286 = !{!"llvm.loop.name", !"VITIS_LOOP_77_5"}
!287 = !DILocation(line: 85, column: 4, scope: !218)
!288 = !DILocation(line: 75, column: 41, scope: !211)
!289 = !DILocation(line: 75, column: 20, scope: !211)
!290 = distinct !{!290, !214, !291, !292}
!291 = !DILocation(line: 85, column: 4, scope: !208)
!292 = !{!"llvm.loop.name", !"VITIS_LOOP_75_4"}
!293 = !DILocation(line: 88, column: 27, scope: !294)
!294 = distinct !DILexicalBlock(scope: !14, file: !15, line: 88, column: 20)
!295 = !DILocation(line: 88, column: 25, scope: !294)
!296 = !DILocation(line: 88, column: 32, scope: !297)
!297 = distinct !DILexicalBlock(scope: !294, file: !15, line: 88, column: 20)
!298 = !DILocation(line: 88, column: 34, scope: !297)
!299 = !DILocation(line: 88, column: 20, scope: !294)
!300 = !DILocation(line: 88, column: 44, scope: !297)
!301 = !DILocation(line: 90, column: 29, scope: !302)
!302 = distinct !DILexicalBlock(scope: !303, file: !15, line: 90, column: 22)
!303 = distinct !DILexicalBlock(scope: !297, file: !15, line: 88, column: 44)
!304 = !DILocation(line: 90, column: 27, scope: !302)
!305 = !DILocation(line: 90, column: 34, scope: !306)
!306 = distinct !DILexicalBlock(scope: !302, file: !15, line: 90, column: 22)
!307 = !DILocation(line: 90, column: 36, scope: !306)
!308 = !DILocation(line: 90, column: 22, scope: !302)
!309 = !DILocation(line: 92, column: 6, scope: !310)
!310 = distinct !DILexicalBlock(scope: !306, file: !15, line: 90, column: 46)
!311 = !DILocation(line: 92, column: 9, scope: !310)
!312 = !DILocation(line: 92, column: 11, scope: !310)
!313 = !DILocation(line: 92, column: 10, scope: !310)
!314 = !{i1 false, !315, i1 false, i1 true}
!315 = !{double 0.000000e+00, double 4.800000e+01}
!316 = !DILocation(line: 92, column: 14, scope: !310)
!317 = !DILocation(line: 92, column: 13, scope: !310)
!318 = !{i1 false, !319, i1 false, i1 true}
!319 = !{double 0.000000e+00, double 5.100000e+01}
!320 = !DILocation(line: 92, column: 17, scope: !310)
!321 = !DILocation(line: 93, column: 30, scope: !322)
!322 = distinct !DILexicalBlock(scope: !310, file: !15, line: 93, column: 23)
!323 = !DILocation(line: 93, column: 28, scope: !322)
!324 = !DILocation(line: 93, column: 35, scope: !325)
!325 = distinct !DILexicalBlock(scope: !322, file: !15, line: 93, column: 23)
!326 = !DILocation(line: 93, column: 37, scope: !325)
!327 = !DILocation(line: 93, column: 23, scope: !322)
!328 = !DILocation(line: 95, column: 24, scope: !329)
!329 = distinct !DILexicalBlock(scope: !325, file: !15, line: 93, column: 47)
!330 = !DILocation(line: 95, column: 27, scope: !329)
!331 = !DILocation(line: 95, column: 29, scope: !329)
!332 = !DILocation(line: 95, column: 28, scope: !329)
!333 = !DILocation(line: 95, column: 32, scope: !329)
!334 = !DILocation(line: 95, column: 31, scope: !329)
!335 = !{i1 false, !336, i1 false, i1 true}
!336 = !{double 0.000000e+00, double 5.000000e+01}
!337 = !DILocation(line: 95, column: 37, scope: !329)
!338 = !DILocation(line: 95, column: 40, scope: !329)
!339 = !DILocation(line: 95, column: 42, scope: !329)
!340 = !DILocation(line: 95, column: 41, scope: !329)
!341 = !DILocation(line: 95, column: 45, scope: !329)
!342 = !DILocation(line: 95, column: 44, scope: !329)
!343 = !{i1 false, !344, i1 false, i1 true}
!344 = !{double 0.000000e+00, double 3.600000e+01}
!345 = !DILocation(line: 95, column: 35, scope: !329)
!346 = !DILocation(line: 95, column: 10, scope: !329)
!347 = !DILocation(line: 95, column: 13, scope: !329)
!348 = !DILocation(line: 95, column: 15, scope: !329)
!349 = !DILocation(line: 95, column: 14, scope: !329)
!350 = !DILocation(line: 95, column: 18, scope: !329)
!351 = !DILocation(line: 95, column: 17, scope: !329)
!352 = !{i1 false, !353, i1 false, i1 true}
!353 = !{double 0.000000e+00, double 5.200000e+01}
!354 = !DILocation(line: 95, column: 21, scope: !329)
!355 = !DILocation(line: 96, column: 9, scope: !329)
!356 = !DILocation(line: 93, column: 43, scope: !325)
!357 = !DILocation(line: 93, column: 23, scope: !325)
!358 = distinct !{!358, !327, !359, !360}
!359 = !DILocation(line: 96, column: 9, scope: !322)
!360 = !{!"llvm.loop.name", !"VITIS_LOOP_93_9"}
!361 = !DILocation(line: 97, column: 5, scope: !310)
!362 = !DILocation(line: 90, column: 43, scope: !306)
!363 = !{i1 false, !364, i1 false, i1 true}
!364 = !{double 1.000000e+00, double 4.000000e+00}
!365 = !DILocation(line: 90, column: 22, scope: !306)
!366 = distinct !{!366, !308, !367, !368}
!367 = !DILocation(line: 97, column: 5, scope: !302)
!368 = !{!"llvm.loop.name", !"VITIS_LOOP_90_8"}
!369 = !DILocation(line: 98, column: 3, scope: !303)
!370 = !DILocation(line: 88, column: 41, scope: !297)
!371 = !DILocation(line: 88, column: 20, scope: !297)
!372 = distinct !{!372, !299, !373, !374}
!373 = !DILocation(line: 98, column: 3, scope: !294)
!374 = !{!"llvm.loop.name", !"VITIS_LOOP_88_7"}
!375 = !DILocation(line: 99, column: 1, scope: !14)
!376 = !{i1 false, !377, i1 false, i1 true}
!377 = !{double 0.000000e+00, double 2.000000e+00}
!378 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!379 = !{i32 0, i1 false, i32 0, i1 false}
!380 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
