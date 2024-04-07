; ModuleID = '/home/bruno/Desktop/benchmarks/mm3/intermediate/output.1.magiclangtmp.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.global_ctors = appending global [0 x { i32, void ()*, i8* }] zeroinitializer
@.str = private unnamed_addr constant [37 x i8] c"target('A') scalar(range(-100, 100))\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [12 x i8] c"mm3_taffo.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [37 x i8] c"target('B') scalar(range(-100, 100))\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [37 x i8] c"target('C') scalar(range(-100, 100))\00", section "llvm.metadata"
@.str.4 = private unnamed_addr constant [37 x i8] c"target('D') scalar(range(-100, 100))\00", section "llvm.metadata"
@.str.5 = private unnamed_addr constant [41 x i8] c"target('E') scalar(range(-16384, 16384))\00", section "llvm.metadata"
@.str.6 = private unnamed_addr constant [41 x i8] c"target('F') scalar(range(-16384, 16384))\00", section "llvm.metadata"
@.str.7 = private unnamed_addr constant [41 x i8] c"target('G') scalar(range(-16384, 16384))\00", section "llvm.metadata"
@.str.8 = private unnamed_addr constant [9 x i8] c"scalar()\00", section "llvm.metadata"

; Function Attrs: nounwind
define void @mm3(float* %A, float* %B, float* %C, float* %D, float* %E, float* %F, float* %G) #0 !dbg !7 !fpga.function.pragma !13 !taffo.start !16 !taffo.funinfo !17 {
entry:
  %A.addr = alloca float*, align 8
  %B.addr = alloca float*, align 8
  %C.addr = alloca float*, align 8
  %D.addr = alloca float*, align 8
  %E.addr = alloca float*, align 8
  %F.addr = alloca float*, align 8
  %G.addr = alloca float*, align 8
  %ni = alloca i32, align 4
  %nj = alloca i32, align 4
  %nk = alloca i32, align 4
  %nl = alloca i32, align 4
  %nm = alloca i32, align 4
  %As = alloca float*, align 8, !taffo.target !18, !taffo.info !19
  %Bs = alloca float*, align 8, !taffo.target !21, !taffo.info !19
  %Cs = alloca float*, align 8, !taffo.target !22, !taffo.info !19
  %Ds = alloca float*, align 8, !taffo.target !23, !taffo.info !19
  %Es = alloca float*, align 8, !taffo.target !24, !taffo.info !25
  %Fs = alloca float*, align 8, !taffo.target !27, !taffo.info !25
  %Gs = alloca float*, align 8, !taffo.target !28, !taffo.info !25
  %i = alloca i32, align 4, !taffo.info !29
  %j = alloca i32, align 4, !taffo.info !29
  %k = alloca i32, align 4, !taffo.info !29
  store float* %A, float** %A.addr, align 8
  call void @llvm.dbg.declare(metadata float** %A.addr, metadata !30, metadata !DIExpression()), !dbg !31
  store float* %B, float** %B.addr, align 8
  call void @llvm.dbg.declare(metadata float** %B.addr, metadata !32, metadata !DIExpression()), !dbg !33
  store float* %C, float** %C.addr, align 8
  call void @llvm.dbg.declare(metadata float** %C.addr, metadata !34, metadata !DIExpression()), !dbg !35
  store float* %D, float** %D.addr, align 8
  call void @llvm.dbg.declare(metadata float** %D.addr, metadata !36, metadata !DIExpression()), !dbg !37
  store float* %E, float** %E.addr, align 8
  call void @llvm.dbg.declare(metadata float** %E.addr, metadata !38, metadata !DIExpression()), !dbg !39
  store float* %F, float** %F.addr, align 8
  call void @llvm.dbg.declare(metadata float** %F.addr, metadata !40, metadata !DIExpression()), !dbg !41
  store float* %G, float** %G.addr, align 8
  call void @llvm.dbg.declare(metadata float** %G.addr, metadata !42, metadata !DIExpression()), !dbg !43
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %A, [0 x i8] zeroinitializer, i64 256, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !44
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %B, [0 x i8] zeroinitializer, i64 256, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !45
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %C, [0 x i8] zeroinitializer, i64 256, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !46
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %D, [0 x i8] zeroinitializer, i64 256, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !47
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %E, [0 x i8] zeroinitializer, i64 256, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !48
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %F, [0 x i8] zeroinitializer, i64 256, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !49
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %G, [0 x i8] zeroinitializer, i64 256, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !50
  %0 = bitcast i32* %ni to i8*, !dbg !51
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !51
  call void @llvm.dbg.declare(metadata i32* %ni, metadata !52, metadata !DIExpression()), !dbg !54
  store i32 16, i32* %ni, align 4, !dbg !54
  %1 = bitcast i32* %nj to i8*, !dbg !55
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !55
  call void @llvm.dbg.declare(metadata i32* %nj, metadata !56, metadata !DIExpression()), !dbg !57
  store i32 16, i32* %nj, align 4, !dbg !57
  %2 = bitcast i32* %nk to i8*, !dbg !58
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !58
  call void @llvm.dbg.declare(metadata i32* %nk, metadata !59, metadata !DIExpression()), !dbg !60
  store i32 16, i32* %nk, align 4, !dbg !60
  %3 = bitcast i32* %nl to i8*, !dbg !61
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !61
  call void @llvm.dbg.declare(metadata i32* %nl, metadata !62, metadata !DIExpression()), !dbg !63
  store i32 16, i32* %nl, align 4, !dbg !63
  %4 = bitcast i32* %nm to i8*, !dbg !64
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !64
  call void @llvm.dbg.declare(metadata i32* %nm, metadata !65, metadata !DIExpression()), !dbg !66
  store i32 16, i32* %nm, align 4, !dbg !66
  %5 = bitcast float** %As to i8*, !dbg !67, !taffo.target !18, !taffo.info !29
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %5) #4, !dbg !67, !taffo.target !18, !taffo.info !29
  call void @llvm.dbg.declare(metadata float** %As, metadata !68, metadata !DIExpression()), !dbg !69
  %As1 = bitcast float** %As to i8*, !dbg !67, !taffo.target !18, !taffo.info !29
  %6 = load float*, float** %A.addr, align 8, !dbg !70
  store float* %6, float** %As, align 8, !dbg !71, !taffo.target !18, !taffo.info !29
  %7 = bitcast float** %Bs to i8*, !dbg !72, !taffo.target !21, !taffo.info !29
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %7) #4, !dbg !72, !taffo.target !21, !taffo.info !29
  call void @llvm.dbg.declare(metadata float** %Bs, metadata !73, metadata !DIExpression()), !dbg !74
  %Bs2 = bitcast float** %Bs to i8*, !dbg !72, !taffo.target !21, !taffo.info !29
  %8 = load float*, float** %B.addr, align 8, !dbg !75
  store float* %8, float** %Bs, align 8, !dbg !76, !taffo.target !21, !taffo.info !29
  %9 = bitcast float** %Cs to i8*, !dbg !77, !taffo.target !22, !taffo.info !29
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %9) #4, !dbg !77, !taffo.target !22, !taffo.info !29
  call void @llvm.dbg.declare(metadata float** %Cs, metadata !78, metadata !DIExpression()), !dbg !79
  %Cs3 = bitcast float** %Cs to i8*, !dbg !77, !taffo.target !22, !taffo.info !29
  %10 = load float*, float** %C.addr, align 8, !dbg !80
  store float* %10, float** %Cs, align 8, !dbg !81, !taffo.target !22, !taffo.info !29
  %11 = bitcast float** %Ds to i8*, !dbg !82, !taffo.target !23, !taffo.info !29
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %11) #4, !dbg !82, !taffo.target !23, !taffo.info !29
  call void @llvm.dbg.declare(metadata float** %Ds, metadata !83, metadata !DIExpression()), !dbg !84
  %Ds4 = bitcast float** %Ds to i8*, !dbg !82, !taffo.target !23, !taffo.info !29
  %12 = load float*, float** %D.addr, align 8, !dbg !85
  store float* %12, float** %Ds, align 8, !dbg !86, !taffo.target !23, !taffo.info !29
  %13 = bitcast float** %Es to i8*, !dbg !87, !taffo.target !24, !taffo.info !29
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %13) #4, !dbg !87, !taffo.target !24, !taffo.info !29
  call void @llvm.dbg.declare(metadata float** %Es, metadata !88, metadata !DIExpression()), !dbg !89
  %Es5 = bitcast float** %Es to i8*, !dbg !87, !taffo.target !24, !taffo.info !29
  %14 = load float*, float** %E.addr, align 8, !dbg !90
  store float* %14, float** %Es, align 8, !dbg !91, !taffo.target !24, !taffo.info !29
  %15 = bitcast float** %Fs to i8*, !dbg !92, !taffo.target !27, !taffo.info !29
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %15) #4, !dbg !92, !taffo.target !27, !taffo.info !29
  call void @llvm.dbg.declare(metadata float** %Fs, metadata !93, metadata !DIExpression()), !dbg !94
  %Fs6 = bitcast float** %Fs to i8*, !dbg !92, !taffo.target !27, !taffo.info !29
  %16 = load float*, float** %F.addr, align 8, !dbg !95
  store float* %16, float** %Fs, align 8, !dbg !96, !taffo.target !27, !taffo.info !29
  %17 = bitcast float** %Gs to i8*, !dbg !97, !taffo.target !28, !taffo.info !29
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %17) #4, !dbg !97, !taffo.target !28, !taffo.info !29
  call void @llvm.dbg.declare(metadata float** %Gs, metadata !98, metadata !DIExpression()), !dbg !99
  %Gs7 = bitcast float** %Gs to i8*, !dbg !97, !taffo.target !28, !taffo.info !29
  %18 = load float*, float** %G.addr, align 8, !dbg !100
  store float* %18, float** %Gs, align 8, !dbg !101, !taffo.target !28, !taffo.info !29
  %19 = bitcast i32* %i to i8*, !dbg !102, !taffo.info !29
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #4, !dbg !102, !taffo.info !29
  call void @llvm.dbg.declare(metadata i32* %i, metadata !103, metadata !DIExpression()), !dbg !104
  %i8 = bitcast i32* %i to i8*, !dbg !102, !taffo.info !29
  %20 = bitcast i32* %j to i8*, !dbg !105, !taffo.info !29
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %20) #4, !dbg !105, !taffo.info !29
  call void @llvm.dbg.declare(metadata i32* %j, metadata !106, metadata !DIExpression()), !dbg !107
  %j9 = bitcast i32* %j to i8*, !dbg !105, !taffo.info !29
  %21 = bitcast i32* %k to i8*, !dbg !108, !taffo.info !29
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %21) #4, !dbg !108, !taffo.info !29
  call void @llvm.dbg.declare(metadata i32* %k, metadata !109, metadata !DIExpression()), !dbg !110
  %k10 = bitcast i32* %k to i8*, !dbg !108, !taffo.info !29
  br label %VITIS_LOOP_63_1, !dbg !108

VITIS_LOOP_63_1:                                  ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !111, !taffo.info !29
  br label %for.cond, !dbg !113

for.cond:                                         ; preds = %for.inc34, %VITIS_LOOP_63_1
  %22 = load i32, i32* %i, align 4, !dbg !114, !taffo.info !29
  %23 = load i32, i32* %ni, align 4, !dbg !116
  %cmp = icmp slt i32 %22, %23, !dbg !117, !taffo.info !29
  br i1 %cmp, label %for.body, label %for.end36, !dbg !118, !taffo.info !29

for.body:                                         ; preds = %for.cond
  br label %VITIS_LOOP_65_2, !dbg !119

VITIS_LOOP_65_2:                                  ; preds = %for.body
  store i32 0, i32* %j, align 4, !dbg !120, !taffo.info !29
  br label %for.cond11, !dbg !123

for.cond11:                                       ; preds = %for.inc31, %VITIS_LOOP_65_2
  %24 = load i32, i32* %j, align 4, !dbg !124, !taffo.info !29
  %25 = load i32, i32* %nj, align 4, !dbg !126
  %cmp12 = icmp slt i32 %24, %25, !dbg !127, !taffo.info !29
  br i1 %cmp12, label %for.body13, label %for.end33, !dbg !128, !taffo.info !29

for.body13:                                       ; preds = %for.cond11
  %26 = load float*, float** %Es, align 8, !dbg !129, !taffo.target !24, !taffo.info !29
  %27 = load i32, i32* %i, align 4, !dbg !131, !taffo.info !29
  %28 = load i32, i32* %nj, align 4, !dbg !132
  %mul = mul nsw i32 %27, %28, !dbg !133, !taffo.info !29
  %29 = load i32, i32* %j, align 4, !dbg !134, !taffo.info !29
  %add = add nsw i32 %mul, %29, !dbg !135, !taffo.info !29
  %idxprom = sext i32 %add to i64, !dbg !129, !taffo.info !29
  %arrayidx = getelementptr inbounds float, float* %26, i64 %idxprom, !dbg !129, !taffo.target !24, !taffo.info !29
  store float 0.000000e+00, float* %arrayidx, align 4, !dbg !136, !taffo.target !24, !taffo.info !29
  br label %VITIS_LOOP_68_3, !dbg !129

VITIS_LOOP_68_3:                                  ; preds = %for.body13
  store i32 0, i32* %k, align 4, !dbg !137, !taffo.info !29
  br label %for.cond14, !dbg !139

for.cond14:                                       ; preds = %for.inc, %VITIS_LOOP_68_3
  %30 = load i32, i32* %k, align 4, !dbg !140, !taffo.info !29
  %cmp15 = icmp slt i32 %30, 16, !dbg !142, !taffo.info !29
  br i1 %cmp15, label %for.body16, label %for.end, !dbg !143, !taffo.info !29

for.body16:                                       ; preds = %for.cond14
  %31 = load float*, float** %As, align 8, !dbg !144, !taffo.target !18, !taffo.info !29
  %32 = load i32, i32* %i, align 4, !dbg !146, !taffo.info !29
  %33 = load i32, i32* %nk, align 4, !dbg !147
  %mul17 = mul nsw i32 %32, %33, !dbg !148, !taffo.info !29
  %34 = load i32, i32* %k, align 4, !dbg !149, !taffo.info !29
  %add18 = add nsw i32 %mul17, %34, !dbg !150, !taffo.info !29
  %idxprom19 = sext i32 %add18 to i64, !dbg !144, !taffo.info !29
  %arrayidx20 = getelementptr inbounds float, float* %31, i64 %idxprom19, !dbg !144, !taffo.target !18, !taffo.info !29
  %35 = load float, float* %arrayidx20, align 4, !dbg !144, !taffo.target !18, !taffo.info !29
  %36 = load float*, float** %Bs, align 8, !dbg !151, !taffo.target !21, !taffo.info !29
  %37 = load i32, i32* %k, align 4, !dbg !152, !taffo.info !29
  %38 = load i32, i32* %nj, align 4, !dbg !153
  %mul21 = mul nsw i32 %37, %38, !dbg !154, !taffo.info !29
  %39 = load i32, i32* %j, align 4, !dbg !155, !taffo.info !29
  %add22 = add nsw i32 %mul21, %39, !dbg !156, !taffo.info !29
  %idxprom23 = sext i32 %add22 to i64, !dbg !151, !taffo.info !29
  %arrayidx24 = getelementptr inbounds float, float* %36, i64 %idxprom23, !dbg !151, !taffo.target !21, !taffo.info !29
  %40 = load float, float* %arrayidx24, align 4, !dbg !151, !taffo.target !21, !taffo.info !29
  %mul25 = fmul float %35, %40, !dbg !157, !taffo.target !18, !taffo.info !29
  %41 = load float*, float** %Es, align 8, !dbg !158, !taffo.target !24, !taffo.info !29
  %42 = load i32, i32* %i, align 4, !dbg !159, !taffo.info !29
  %43 = load i32, i32* %nj, align 4, !dbg !160
  %mul26 = mul nsw i32 %42, %43, !dbg !161, !taffo.info !29
  %44 = load i32, i32* %j, align 4, !dbg !162, !taffo.info !29
  %add27 = add nsw i32 %mul26, %44, !dbg !163, !taffo.info !29
  %idxprom28 = sext i32 %add27 to i64, !dbg !158, !taffo.info !29
  %arrayidx29 = getelementptr inbounds float, float* %41, i64 %idxprom28, !dbg !158, !taffo.target !24, !taffo.info !29
  %45 = load float, float* %arrayidx29, align 4, !dbg !164, !taffo.target !24, !taffo.info !29
  %add30 = fadd float %45, %mul25, !dbg !164, !taffo.target !24, !taffo.info !29
  store float %add30, float* %arrayidx29, align 4, !dbg !164, !taffo.target !24, !taffo.info !29
  br label %for.inc, !dbg !165

for.inc:                                          ; preds = %for.body16
  %46 = load i32, i32* %k, align 4, !dbg !166, !taffo.info !29
  %inc = add nsw i32 %46, 1, !dbg !166, !taffo.info !29
  store i32 %inc, i32* %k, align 4, !dbg !166, !taffo.info !29
  br label %for.cond14, !dbg !167, !llvm.loop !168

for.end:                                          ; preds = %for.cond14
  br label %for.inc31, !dbg !171

for.inc31:                                        ; preds = %for.end
  %47 = load i32, i32* %j, align 4, !dbg !172, !taffo.info !29
  %inc32 = add nsw i32 %47, 1, !dbg !172, !taffo.info !29
  store i32 %inc32, i32* %j, align 4, !dbg !172, !taffo.info !29
  br label %for.cond11, !dbg !173, !llvm.loop !174

for.end33:                                        ; preds = %for.cond11
  br label %for.inc34, !dbg !177

for.inc34:                                        ; preds = %for.end33
  %48 = load i32, i32* %i, align 4, !dbg !178, !taffo.info !29
  %inc35 = add nsw i32 %48, 1, !dbg !178, !taffo.info !29
  store i32 %inc35, i32* %i, align 4, !dbg !178, !taffo.info !29
  br label %for.cond, !dbg !179, !llvm.loop !180

for.end36:                                        ; preds = %for.cond
  br label %VITIS_LOOP_75_4, !dbg !181

VITIS_LOOP_75_4:                                  ; preds = %for.end36
  store i32 0, i32* %i, align 4, !dbg !183, !taffo.info !29
  br label %for.cond37, !dbg !185

for.cond37:                                       ; preds = %for.inc70, %VITIS_LOOP_75_4
  %49 = load i32, i32* %i, align 4, !dbg !186, !taffo.info !29
  %50 = load i32, i32* %nj, align 4, !dbg !188
  %cmp38 = icmp slt i32 %49, %50, !dbg !189, !taffo.info !29
  br i1 %cmp38, label %for.body39, label %for.end72, !dbg !190, !taffo.info !29

for.body39:                                       ; preds = %for.cond37
  br label %VITIS_LOOP_77_5, !dbg !191

VITIS_LOOP_77_5:                                  ; preds = %for.body39
  store i32 0, i32* %j, align 4, !dbg !192, !taffo.info !29
  br label %for.cond40, !dbg !195

for.cond40:                                       ; preds = %for.inc67, %VITIS_LOOP_77_5
  %51 = load i32, i32* %j, align 4, !dbg !196, !taffo.info !29
  %52 = load i32, i32* %nl, align 4, !dbg !198
  %cmp41 = icmp slt i32 %51, %52, !dbg !199, !taffo.info !29
  br i1 %cmp41, label %for.body42, label %for.end69, !dbg !200, !taffo.info !29

for.body42:                                       ; preds = %for.cond40
  %53 = load float*, float** %Fs, align 8, !dbg !201, !taffo.target !27, !taffo.info !29
  %54 = load i32, i32* %i, align 4, !dbg !203, !taffo.info !29
  %55 = load i32, i32* %nl, align 4, !dbg !204
  %mul43 = mul nsw i32 %54, %55, !dbg !205, !taffo.info !29
  %56 = load i32, i32* %j, align 4, !dbg !206, !taffo.info !29
  %add44 = add nsw i32 %mul43, %56, !dbg !207, !taffo.info !29
  %idxprom45 = sext i32 %add44 to i64, !dbg !201, !taffo.info !29
  %arrayidx46 = getelementptr inbounds float, float* %53, i64 %idxprom45, !dbg !201, !taffo.target !27, !taffo.info !29
  store float 0.000000e+00, float* %arrayidx46, align 4, !dbg !208, !taffo.target !27, !taffo.info !29
  br label %VITIS_LOOP_80_6, !dbg !201

VITIS_LOOP_80_6:                                  ; preds = %for.body42
  store i32 0, i32* %k, align 4, !dbg !209, !taffo.info !29
  br label %for.cond47, !dbg !211

for.cond47:                                       ; preds = %for.inc64, %VITIS_LOOP_80_6
  %57 = load i32, i32* %k, align 4, !dbg !212, !taffo.info !29
  %cmp48 = icmp slt i32 %57, 16, !dbg !214, !taffo.info !29
  br i1 %cmp48, label %for.body49, label %for.end66, !dbg !215, !taffo.info !29

for.body49:                                       ; preds = %for.cond47
  %58 = load float*, float** %Cs, align 8, !dbg !216, !taffo.target !22, !taffo.info !29
  %59 = load i32, i32* %i, align 4, !dbg !218, !taffo.info !29
  %60 = load i32, i32* %nm, align 4, !dbg !219
  %mul50 = mul nsw i32 %59, %60, !dbg !220, !taffo.info !29
  %61 = load i32, i32* %k, align 4, !dbg !221, !taffo.info !29
  %add51 = add nsw i32 %mul50, %61, !dbg !222, !taffo.info !29
  %idxprom52 = sext i32 %add51 to i64, !dbg !216, !taffo.info !29
  %arrayidx53 = getelementptr inbounds float, float* %58, i64 %idxprom52, !dbg !216, !taffo.target !22, !taffo.info !29
  %62 = load float, float* %arrayidx53, align 4, !dbg !216, !taffo.target !22, !taffo.info !29
  %63 = load float*, float** %Ds, align 8, !dbg !223, !taffo.target !23, !taffo.info !29
  %64 = load i32, i32* %k, align 4, !dbg !224, !taffo.info !29
  %65 = load i32, i32* %nl, align 4, !dbg !225
  %mul54 = mul nsw i32 %64, %65, !dbg !226, !taffo.info !29
  %66 = load i32, i32* %j, align 4, !dbg !227, !taffo.info !29
  %add55 = add nsw i32 %mul54, %66, !dbg !228, !taffo.info !29
  %idxprom56 = sext i32 %add55 to i64, !dbg !223, !taffo.info !29
  %arrayidx57 = getelementptr inbounds float, float* %63, i64 %idxprom56, !dbg !223, !taffo.target !23, !taffo.info !29
  %67 = load float, float* %arrayidx57, align 4, !dbg !223, !taffo.target !23, !taffo.info !29
  %mul58 = fmul float %62, %67, !dbg !229, !taffo.target !22, !taffo.info !29
  %68 = load float*, float** %Fs, align 8, !dbg !230, !taffo.target !27, !taffo.info !29
  %69 = load i32, i32* %i, align 4, !dbg !231, !taffo.info !29
  %70 = load i32, i32* %nl, align 4, !dbg !232
  %mul59 = mul nsw i32 %69, %70, !dbg !233, !taffo.info !29
  %71 = load i32, i32* %j, align 4, !dbg !234, !taffo.info !29
  %add60 = add nsw i32 %mul59, %71, !dbg !235, !taffo.info !29
  %idxprom61 = sext i32 %add60 to i64, !dbg !230, !taffo.info !29
  %arrayidx62 = getelementptr inbounds float, float* %68, i64 %idxprom61, !dbg !230, !taffo.target !27, !taffo.info !29
  %72 = load float, float* %arrayidx62, align 4, !dbg !236, !taffo.target !27, !taffo.info !29
  %add63 = fadd float %72, %mul58, !dbg !236, !taffo.target !27, !taffo.info !29
  store float %add63, float* %arrayidx62, align 4, !dbg !236, !taffo.target !27, !taffo.info !29
  br label %for.inc64, !dbg !237

for.inc64:                                        ; preds = %for.body49
  %73 = load i32, i32* %k, align 4, !dbg !238, !taffo.info !29
  %inc65 = add nsw i32 %73, 1, !dbg !238, !taffo.info !29
  store i32 %inc65, i32* %k, align 4, !dbg !238, !taffo.info !29
  br label %for.cond47, !dbg !239, !llvm.loop !240

for.end66:                                        ; preds = %for.cond47
  br label %for.inc67, !dbg !243

for.inc67:                                        ; preds = %for.end66
  %74 = load i32, i32* %j, align 4, !dbg !244, !taffo.info !29
  %inc68 = add nsw i32 %74, 1, !dbg !244, !taffo.info !29
  store i32 %inc68, i32* %j, align 4, !dbg !244, !taffo.info !29
  br label %for.cond40, !dbg !245, !llvm.loop !246

for.end69:                                        ; preds = %for.cond40
  br label %for.inc70, !dbg !249

for.inc70:                                        ; preds = %for.end69
  %75 = load i32, i32* %i, align 4, !dbg !250, !taffo.info !29
  %inc71 = add nsw i32 %75, 1, !dbg !250, !taffo.info !29
  store i32 %inc71, i32* %i, align 4, !dbg !250, !taffo.info !29
  br label %for.cond37, !dbg !251, !llvm.loop !252

for.end72:                                        ; preds = %for.cond37
  br label %VITIS_LOOP_88_7, !dbg !253

VITIS_LOOP_88_7:                                  ; preds = %for.end72
  store i32 0, i32* %i, align 4, !dbg !255, !taffo.info !29
  br label %for.cond73, !dbg !257

for.cond73:                                       ; preds = %for.inc106, %VITIS_LOOP_88_7
  %76 = load i32, i32* %i, align 4, !dbg !258, !taffo.info !29
  %cmp74 = icmp slt i32 %76, 16, !dbg !260, !taffo.info !29
  br i1 %cmp74, label %for.body75, label %for.end108, !dbg !261, !taffo.info !29

for.body75:                                       ; preds = %for.cond73
  br label %VITIS_LOOP_90_8, !dbg !262

VITIS_LOOP_90_8:                                  ; preds = %for.body75
  store i32 0, i32* %j, align 4, !dbg !263, !taffo.info !29
  br label %for.cond76, !dbg !266

for.cond76:                                       ; preds = %for.inc103, %VITIS_LOOP_90_8
  %77 = load i32, i32* %j, align 4, !dbg !267, !taffo.info !29
  %cmp77 = icmp slt i32 %77, 16, !dbg !269, !taffo.info !29
  br i1 %cmp77, label %for.body78, label %for.end105, !dbg !270, !taffo.info !29

for.body78:                                       ; preds = %for.cond76
  %78 = load float*, float** %Gs, align 8, !dbg !271, !taffo.target !28, !taffo.info !29
  %79 = load i32, i32* %i, align 4, !dbg !273, !taffo.info !29
  %80 = load i32, i32* %nl, align 4, !dbg !274
  %mul79 = mul nsw i32 %79, %80, !dbg !275, !taffo.info !29
  %81 = load i32, i32* %j, align 4, !dbg !276, !taffo.info !29
  %add80 = add nsw i32 %mul79, %81, !dbg !277, !taffo.info !29
  %idxprom81 = sext i32 %add80 to i64, !dbg !271, !taffo.info !29
  %arrayidx82 = getelementptr inbounds float, float* %78, i64 %idxprom81, !dbg !271, !taffo.target !28, !taffo.info !29
  store float 0.000000e+00, float* %arrayidx82, align 4, !dbg !278, !taffo.target !28, !taffo.info !29
  br label %VITIS_LOOP_93_9, !dbg !271

VITIS_LOOP_93_9:                                  ; preds = %for.body78
  store i32 0, i32* %k, align 4, !dbg !279, !taffo.info !29
  br label %for.cond83, !dbg !281

for.cond83:                                       ; preds = %for.inc100, %VITIS_LOOP_93_9
  %82 = load i32, i32* %k, align 4, !dbg !282, !taffo.info !29
  %cmp84 = icmp slt i32 %82, 16, !dbg !284, !taffo.info !29
  br i1 %cmp84, label %for.body85, label %for.end102, !dbg !285, !taffo.info !29

for.body85:                                       ; preds = %for.cond83
  %83 = load float*, float** %Es, align 8, !dbg !286, !taffo.target !24, !taffo.info !29
  %84 = load i32, i32* %i, align 4, !dbg !288, !taffo.info !29
  %85 = load i32, i32* %nj, align 4, !dbg !289
  %mul86 = mul nsw i32 %84, %85, !dbg !290, !taffo.info !29
  %86 = load i32, i32* %k, align 4, !dbg !291, !taffo.info !29
  %add87 = add nsw i32 %mul86, %86, !dbg !292, !taffo.info !29
  %idxprom88 = sext i32 %add87 to i64, !dbg !286, !taffo.info !29
  %arrayidx89 = getelementptr inbounds float, float* %83, i64 %idxprom88, !dbg !286, !taffo.target !24, !taffo.info !29
  %87 = load float, float* %arrayidx89, align 4, !dbg !286, !taffo.target !24, !taffo.info !29
  %88 = load float*, float** %Fs, align 8, !dbg !293, !taffo.target !27, !taffo.info !29
  %89 = load i32, i32* %k, align 4, !dbg !294, !taffo.info !29
  %90 = load i32, i32* %nl, align 4, !dbg !295
  %mul90 = mul nsw i32 %89, %90, !dbg !296, !taffo.info !29
  %91 = load i32, i32* %j, align 4, !dbg !297, !taffo.info !29
  %add91 = add nsw i32 %mul90, %91, !dbg !298, !taffo.info !29
  %idxprom92 = sext i32 %add91 to i64, !dbg !293, !taffo.info !29
  %arrayidx93 = getelementptr inbounds float, float* %88, i64 %idxprom92, !dbg !293, !taffo.target !27, !taffo.info !29
  %92 = load float, float* %arrayidx93, align 4, !dbg !293, !taffo.target !27, !taffo.info !29
  %mul94 = fmul float %87, %92, !dbg !299, !taffo.target !24, !taffo.info !29
  %93 = load float*, float** %Gs, align 8, !dbg !300, !taffo.target !28, !taffo.info !29
  %94 = load i32, i32* %i, align 4, !dbg !301, !taffo.info !29
  %95 = load i32, i32* %nl, align 4, !dbg !302
  %mul95 = mul nsw i32 %94, %95, !dbg !303, !taffo.info !29
  %96 = load i32, i32* %j, align 4, !dbg !304, !taffo.info !29
  %add96 = add nsw i32 %mul95, %96, !dbg !305, !taffo.info !29
  %idxprom97 = sext i32 %add96 to i64, !dbg !300, !taffo.info !29
  %arrayidx98 = getelementptr inbounds float, float* %93, i64 %idxprom97, !dbg !300, !taffo.target !28, !taffo.info !29
  %97 = load float, float* %arrayidx98, align 4, !dbg !306, !taffo.target !28, !taffo.info !29
  %add99 = fadd float %97, %mul94, !dbg !306, !taffo.target !28, !taffo.info !29
  store float %add99, float* %arrayidx98, align 4, !dbg !306, !taffo.target !28, !taffo.info !29
  br label %for.inc100, !dbg !307

for.inc100:                                       ; preds = %for.body85
  %98 = load i32, i32* %k, align 4, !dbg !308, !taffo.info !29
  %inc101 = add nsw i32 %98, 1, !dbg !308, !taffo.info !29
  store i32 %inc101, i32* %k, align 4, !dbg !308, !taffo.info !29
  br label %for.cond83, !dbg !309, !llvm.loop !310

for.end102:                                       ; preds = %for.cond83
  br label %for.inc103, !dbg !313

for.inc103:                                       ; preds = %for.end102
  %99 = load i32, i32* %j, align 4, !dbg !314, !taffo.info !29
  %inc104 = add nsw i32 %99, 1, !dbg !314, !taffo.info !29
  store i32 %inc104, i32* %j, align 4, !dbg !314, !taffo.info !29
  br label %for.cond76, !dbg !315, !llvm.loop !316

for.end105:                                       ; preds = %for.cond76
  br label %for.inc106, !dbg !319

for.inc106:                                       ; preds = %for.end105
  %100 = load i32, i32* %i, align 4, !dbg !320, !taffo.info !29
  %inc107 = add nsw i32 %100, 1, !dbg !320, !taffo.info !29
  store i32 %inc107, i32* %i, align 4, !dbg !320, !taffo.info !29
  br label %for.cond73, !dbg !321, !llvm.loop !322

for.end108:                                       ; preds = %for.cond73
  %101 = bitcast i32* %k to i8*, !dbg !325, !taffo.info !29
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %101) #4, !dbg !325, !taffo.info !29
  %102 = bitcast i32* %j to i8*, !dbg !325, !taffo.info !29
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %102) #4, !dbg !325, !taffo.info !29
  %103 = bitcast i32* %i to i8*, !dbg !325, !taffo.info !29
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %103) #4, !dbg !325, !taffo.info !29
  %104 = bitcast float** %Gs to i8*, !dbg !325, !taffo.target !28, !taffo.info !29
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %104) #4, !dbg !325, !taffo.target !28, !taffo.info !29
  %105 = bitcast float** %Fs to i8*, !dbg !325, !taffo.target !27, !taffo.info !29
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %105) #4, !dbg !325, !taffo.target !27, !taffo.info !29
  %106 = bitcast float** %Es to i8*, !dbg !325, !taffo.target !24, !taffo.info !29
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %106) #4, !dbg !325, !taffo.target !24, !taffo.info !29
  %107 = bitcast float** %Ds to i8*, !dbg !325, !taffo.target !23, !taffo.info !29
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %107) #4, !dbg !325, !taffo.target !23, !taffo.info !29
  %108 = bitcast float** %Cs to i8*, !dbg !325, !taffo.target !22, !taffo.info !29
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %108) #4, !dbg !325, !taffo.target !22, !taffo.info !29
  %109 = bitcast float** %Bs to i8*, !dbg !325, !taffo.target !21, !taffo.info !29
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %109) #4, !dbg !325, !taffo.target !21, !taffo.info !29
  %110 = bitcast float** %As to i8*, !dbg !325, !taffo.target !18, !taffo.info !29
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %110) #4, !dbg !325, !taffo.target !18, !taffo.info !29
  %111 = bitcast i32* %nm to i8*, !dbg !325
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %111) #4, !dbg !325
  %112 = bitcast i32* %nl to i8*, !dbg !325
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %112) #4, !dbg !325
  %113 = bitcast i32* %nk to i8*, !dbg !325
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %113) #4, !dbg !325
  %114 = bitcast i32* %nj to i8*, !dbg !325
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %114) #4, !dbg !325
  %115 = bitcast i32* %ni to i8*, !dbg !325
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %115) #4, !dbg !325
  ret void, !dbg !325
}

; Function Attrs: nounwind readnone speculatable
declare !taffo.funinfo !326 void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: inaccessiblememonly nounwind
declare !taffo.funinfo !2 void @llvm.sideeffect() #2

; Function Attrs: argmemonly nounwind
declare !taffo.funinfo !327 void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare !taffo.funinfo !328 void @llvm.var.annotation(i8*, i8*, i8*, i32) #4

; Function Attrs: argmemonly nounwind
declare !taffo.funinfo !327 void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #3

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.top.func"="mm3" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { inaccessiblememonly nounwind }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind }
attributes #5 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="0" "xlx.source"="user" }

!llvm.dbg.cu = !{!0}
!llvm.ident = !{!3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3}
!llvm.module.flags = !{!4, !5, !6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/home/bruno/Desktop/benchmarks/mm3/proj_mm3/solution1/.autopilot/db/mm3_taffo.pp.0.c", directory: "/home/bruno/Desktop/benchmarks/mm3")
!2 = !{}
!3 = !{!"clang version 7.0.0 "}
!4 = !{i32 2, !"Dwarf Version", i32 4}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = distinct !DISubprogram(name: "mm3", scope: !8, file: !8, line: 26, type: !9, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DIFile(filename: "mm3_taffo.c", directory: "/home/bruno/Desktop/benchmarks/mm3")
!9 = !DISubroutineType(types: !10)
!10 = !{null, !11, !11, !11, !11, !11, !11, !11}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!13 = !{!14}
!14 = !{!"fpga.top", !"user", !15}
!15 = !DILocation(line: 26, column: 16, scope: !7)
!16 = !{i1 true}
!17 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!18 = !{!"A"}
!19 = !{i1 false, !20, i1 false, i1 true}
!20 = !{double -1.000000e+02, double 1.000000e+02}
!21 = !{!"B"}
!22 = !{!"C"}
!23 = !{!"D"}
!24 = !{!"E"}
!25 = !{i1 false, !26, i1 false, i1 true}
!26 = !{double -1.638400e+04, double 1.638400e+04}
!27 = !{!"F"}
!28 = !{!"G"}
!29 = !{i1 false, i1 false, i1 false, i1 true}
!30 = !DILocalVariable(name: "A", arg: 1, scope: !7, file: !8, line: 26, type: !11)
!31 = !DILocation(line: 26, column: 55, scope: !7)
!32 = !DILocalVariable(name: "B", arg: 2, scope: !7, file: !8, line: 26, type: !11)
!33 = !DILocation(line: 26, column: 65, scope: !7)
!34 = !DILocalVariable(name: "C", arg: 3, scope: !7, file: !8, line: 26, type: !11)
!35 = !DILocation(line: 26, column: 75, scope: !7)
!36 = !DILocalVariable(name: "D", arg: 4, scope: !7, file: !8, line: 26, type: !11)
!37 = !DILocation(line: 26, column: 85, scope: !7)
!38 = !DILocalVariable(name: "E", arg: 5, scope: !7, file: !8, line: 26, type: !11)
!39 = !DILocation(line: 26, column: 95, scope: !7)
!40 = !DILocalVariable(name: "F", arg: 6, scope: !7, file: !8, line: 26, type: !11)
!41 = !DILocation(line: 26, column: 105, scope: !7)
!42 = !DILocalVariable(name: "G", arg: 7, scope: !7, file: !8, line: 26, type: !11)
!43 = !DILocation(line: 26, column: 115, scope: !7)
!44 = !DILocation(line: 28, column: 9, scope: !7)
!45 = !DILocation(line: 29, column: 9, scope: !7)
!46 = !DILocation(line: 30, column: 9, scope: !7)
!47 = !DILocation(line: 31, column: 9, scope: !7)
!48 = !DILocation(line: 32, column: 9, scope: !7)
!49 = !DILocation(line: 33, column: 9, scope: !7)
!50 = !DILocation(line: 34, column: 9, scope: !7)
!51 = !DILocation(line: 36, column: 2, scope: !7)
!52 = !DILocalVariable(name: "ni", scope: !7, file: !8, line: 36, type: !53)
!53 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!54 = !DILocation(line: 36, column: 6, scope: !7)
!55 = !DILocation(line: 37, column: 3, scope: !7)
!56 = !DILocalVariable(name: "nj", scope: !7, file: !8, line: 37, type: !53)
!57 = !DILocation(line: 37, column: 7, scope: !7)
!58 = !DILocation(line: 38, column: 3, scope: !7)
!59 = !DILocalVariable(name: "nk", scope: !7, file: !8, line: 38, type: !53)
!60 = !DILocation(line: 38, column: 7, scope: !7)
!61 = !DILocation(line: 39, column: 3, scope: !7)
!62 = !DILocalVariable(name: "nl", scope: !7, file: !8, line: 39, type: !53)
!63 = !DILocation(line: 39, column: 7, scope: !7)
!64 = !DILocation(line: 40, column: 3, scope: !7)
!65 = !DILocalVariable(name: "nm", scope: !7, file: !8, line: 40, type: !53)
!66 = !DILocation(line: 40, column: 7, scope: !7)
!67 = !DILocation(line: 42, column: 3, scope: !7)
!68 = !DILocalVariable(name: "As", scope: !7, file: !8, line: 42, type: !11)
!69 = !DILocation(line: 42, column: 10, scope: !7)
!70 = !DILocation(line: 43, column: 8, scope: !7)
!71 = !DILocation(line: 43, column: 6, scope: !7)
!72 = !DILocation(line: 44, column: 3, scope: !7)
!73 = !DILocalVariable(name: "Bs", scope: !7, file: !8, line: 44, type: !11)
!74 = !DILocation(line: 44, column: 10, scope: !7)
!75 = !DILocation(line: 45, column: 8, scope: !7)
!76 = !DILocation(line: 45, column: 6, scope: !7)
!77 = !DILocation(line: 46, column: 3, scope: !7)
!78 = !DILocalVariable(name: "Cs", scope: !7, file: !8, line: 46, type: !11)
!79 = !DILocation(line: 46, column: 10, scope: !7)
!80 = !DILocation(line: 47, column: 8, scope: !7)
!81 = !DILocation(line: 47, column: 6, scope: !7)
!82 = !DILocation(line: 48, column: 3, scope: !7)
!83 = !DILocalVariable(name: "Ds", scope: !7, file: !8, line: 48, type: !11)
!84 = !DILocation(line: 48, column: 10, scope: !7)
!85 = !DILocation(line: 49, column: 8, scope: !7)
!86 = !DILocation(line: 49, column: 6, scope: !7)
!87 = !DILocation(line: 50, column: 3, scope: !7)
!88 = !DILocalVariable(name: "Es", scope: !7, file: !8, line: 50, type: !11)
!89 = !DILocation(line: 50, column: 10, scope: !7)
!90 = !DILocation(line: 51, column: 8, scope: !7)
!91 = !DILocation(line: 51, column: 6, scope: !7)
!92 = !DILocation(line: 52, column: 3, scope: !7)
!93 = !DILocalVariable(name: "Fs", scope: !7, file: !8, line: 52, type: !11)
!94 = !DILocation(line: 52, column: 10, scope: !7)
!95 = !DILocation(line: 53, column: 8, scope: !7)
!96 = !DILocation(line: 53, column: 6, scope: !7)
!97 = !DILocation(line: 54, column: 3, scope: !7)
!98 = !DILocalVariable(name: "Gs", scope: !7, file: !8, line: 54, type: !11)
!99 = !DILocation(line: 54, column: 10, scope: !7)
!100 = !DILocation(line: 55, column: 8, scope: !7)
!101 = !DILocation(line: 55, column: 6, scope: !7)
!102 = !DILocation(line: 57, column: 3, scope: !7)
!103 = !DILocalVariable(name: "i", scope: !7, file: !8, line: 57, type: !53)
!104 = !DILocation(line: 57, column: 7, scope: !7)
!105 = !DILocation(line: 58, column: 3, scope: !7)
!106 = !DILocalVariable(name: "j", scope: !7, file: !8, line: 58, type: !53)
!107 = !DILocation(line: 58, column: 7, scope: !7)
!108 = !DILocation(line: 59, column: 3, scope: !7)
!109 = !DILocalVariable(name: "k", scope: !7, file: !8, line: 59, type: !53)
!110 = !DILocation(line: 59, column: 7, scope: !7)
!111 = !DILocation(line: 63, column: 27, scope: !112)
!112 = distinct !DILexicalBlock(scope: !7, file: !8, line: 63, column: 20)
!113 = !DILocation(line: 63, column: 25, scope: !112)
!114 = !DILocation(line: 63, column: 32, scope: !115)
!115 = distinct !DILexicalBlock(scope: !112, file: !8, line: 63, column: 20)
!116 = !DILocation(line: 63, column: 36, scope: !115)
!117 = !DILocation(line: 63, column: 34, scope: !115)
!118 = !DILocation(line: 63, column: 20, scope: !112)
!119 = !DILocation(line: 63, column: 44, scope: !115)
!120 = !DILocation(line: 65, column: 29, scope: !121)
!121 = distinct !DILexicalBlock(scope: !122, file: !8, line: 65, column: 22)
!122 = distinct !DILexicalBlock(scope: !115, file: !8, line: 63, column: 44)
!123 = !DILocation(line: 65, column: 27, scope: !121)
!124 = !DILocation(line: 65, column: 34, scope: !125)
!125 = distinct !DILexicalBlock(scope: !121, file: !8, line: 65, column: 22)
!126 = !DILocation(line: 65, column: 38, scope: !125)
!127 = !DILocation(line: 65, column: 36, scope: !125)
!128 = !DILocation(line: 65, column: 22, scope: !121)
!129 = !DILocation(line: 67, column: 6, scope: !130)
!130 = distinct !DILexicalBlock(scope: !125, file: !8, line: 65, column: 46)
!131 = !DILocation(line: 67, column: 9, scope: !130)
!132 = !DILocation(line: 67, column: 11, scope: !130)
!133 = !DILocation(line: 67, column: 10, scope: !130)
!134 = !DILocation(line: 67, column: 14, scope: !130)
!135 = !DILocation(line: 67, column: 13, scope: !130)
!136 = !DILocation(line: 67, column: 17, scope: !130)
!137 = !DILocation(line: 68, column: 30, scope: !138)
!138 = distinct !DILexicalBlock(scope: !130, file: !8, line: 68, column: 23)
!139 = !DILocation(line: 68, column: 28, scope: !138)
!140 = !DILocation(line: 68, column: 35, scope: !141)
!141 = distinct !DILexicalBlock(scope: !138, file: !8, line: 68, column: 23)
!142 = !DILocation(line: 68, column: 37, scope: !141)
!143 = !DILocation(line: 68, column: 23, scope: !138)
!144 = !DILocation(line: 70, column: 24, scope: !145)
!145 = distinct !DILexicalBlock(scope: !141, file: !8, line: 68, column: 47)
!146 = !DILocation(line: 70, column: 27, scope: !145)
!147 = !DILocation(line: 70, column: 29, scope: !145)
!148 = !DILocation(line: 70, column: 28, scope: !145)
!149 = !DILocation(line: 70, column: 32, scope: !145)
!150 = !DILocation(line: 70, column: 31, scope: !145)
!151 = !DILocation(line: 70, column: 37, scope: !145)
!152 = !DILocation(line: 70, column: 40, scope: !145)
!153 = !DILocation(line: 70, column: 42, scope: !145)
!154 = !DILocation(line: 70, column: 41, scope: !145)
!155 = !DILocation(line: 70, column: 45, scope: !145)
!156 = !DILocation(line: 70, column: 44, scope: !145)
!157 = !DILocation(line: 70, column: 35, scope: !145)
!158 = !DILocation(line: 70, column: 10, scope: !145)
!159 = !DILocation(line: 70, column: 13, scope: !145)
!160 = !DILocation(line: 70, column: 15, scope: !145)
!161 = !DILocation(line: 70, column: 14, scope: !145)
!162 = !DILocation(line: 70, column: 18, scope: !145)
!163 = !DILocation(line: 70, column: 17, scope: !145)
!164 = !DILocation(line: 70, column: 21, scope: !145)
!165 = !DILocation(line: 71, column: 9, scope: !145)
!166 = !DILocation(line: 68, column: 43, scope: !141)
!167 = !DILocation(line: 68, column: 23, scope: !141)
!168 = distinct !{!168, !143, !169, !170}
!169 = !DILocation(line: 71, column: 9, scope: !138)
!170 = !{!"llvm.loop.name", !"VITIS_LOOP_68_3"}
!171 = !DILocation(line: 72, column: 5, scope: !130)
!172 = !DILocation(line: 65, column: 43, scope: !125)
!173 = !DILocation(line: 65, column: 22, scope: !125)
!174 = distinct !{!174, !128, !175, !176}
!175 = !DILocation(line: 72, column: 5, scope: !121)
!176 = !{!"llvm.loop.name", !"VITIS_LOOP_65_2"}
!177 = !DILocation(line: 73, column: 4, scope: !122)
!178 = !DILocation(line: 63, column: 41, scope: !115)
!179 = !DILocation(line: 63, column: 20, scope: !115)
!180 = distinct !{!180, !118, !181, !182}
!181 = !DILocation(line: 73, column: 4, scope: !112)
!182 = !{!"llvm.loop.name", !"VITIS_LOOP_63_1"}
!183 = !DILocation(line: 75, column: 27, scope: !184)
!184 = distinct !DILexicalBlock(scope: !7, file: !8, line: 75, column: 20)
!185 = !DILocation(line: 75, column: 25, scope: !184)
!186 = !DILocation(line: 75, column: 32, scope: !187)
!187 = distinct !DILexicalBlock(scope: !184, file: !8, line: 75, column: 20)
!188 = !DILocation(line: 75, column: 36, scope: !187)
!189 = !DILocation(line: 75, column: 34, scope: !187)
!190 = !DILocation(line: 75, column: 20, scope: !184)
!191 = !DILocation(line: 75, column: 44, scope: !187)
!192 = !DILocation(line: 77, column: 29, scope: !193)
!193 = distinct !DILexicalBlock(scope: !194, file: !8, line: 77, column: 22)
!194 = distinct !DILexicalBlock(scope: !187, file: !8, line: 75, column: 44)
!195 = !DILocation(line: 77, column: 27, scope: !193)
!196 = !DILocation(line: 77, column: 34, scope: !197)
!197 = distinct !DILexicalBlock(scope: !193, file: !8, line: 77, column: 22)
!198 = !DILocation(line: 77, column: 38, scope: !197)
!199 = !DILocation(line: 77, column: 36, scope: !197)
!200 = !DILocation(line: 77, column: 22, scope: !193)
!201 = !DILocation(line: 79, column: 6, scope: !202)
!202 = distinct !DILexicalBlock(scope: !197, file: !8, line: 77, column: 46)
!203 = !DILocation(line: 79, column: 9, scope: !202)
!204 = !DILocation(line: 79, column: 11, scope: !202)
!205 = !DILocation(line: 79, column: 10, scope: !202)
!206 = !DILocation(line: 79, column: 14, scope: !202)
!207 = !DILocation(line: 79, column: 13, scope: !202)
!208 = !DILocation(line: 79, column: 17, scope: !202)
!209 = !DILocation(line: 80, column: 30, scope: !210)
!210 = distinct !DILexicalBlock(scope: !202, file: !8, line: 80, column: 23)
!211 = !DILocation(line: 80, column: 28, scope: !210)
!212 = !DILocation(line: 80, column: 35, scope: !213)
!213 = distinct !DILexicalBlock(scope: !210, file: !8, line: 80, column: 23)
!214 = !DILocation(line: 80, column: 37, scope: !213)
!215 = !DILocation(line: 80, column: 23, scope: !210)
!216 = !DILocation(line: 82, column: 24, scope: !217)
!217 = distinct !DILexicalBlock(scope: !213, file: !8, line: 80, column: 47)
!218 = !DILocation(line: 82, column: 27, scope: !217)
!219 = !DILocation(line: 82, column: 29, scope: !217)
!220 = !DILocation(line: 82, column: 28, scope: !217)
!221 = !DILocation(line: 82, column: 32, scope: !217)
!222 = !DILocation(line: 82, column: 31, scope: !217)
!223 = !DILocation(line: 82, column: 37, scope: !217)
!224 = !DILocation(line: 82, column: 40, scope: !217)
!225 = !DILocation(line: 82, column: 42, scope: !217)
!226 = !DILocation(line: 82, column: 41, scope: !217)
!227 = !DILocation(line: 82, column: 45, scope: !217)
!228 = !DILocation(line: 82, column: 44, scope: !217)
!229 = !DILocation(line: 82, column: 35, scope: !217)
!230 = !DILocation(line: 82, column: 10, scope: !217)
!231 = !DILocation(line: 82, column: 13, scope: !217)
!232 = !DILocation(line: 82, column: 15, scope: !217)
!233 = !DILocation(line: 82, column: 14, scope: !217)
!234 = !DILocation(line: 82, column: 18, scope: !217)
!235 = !DILocation(line: 82, column: 17, scope: !217)
!236 = !DILocation(line: 82, column: 21, scope: !217)
!237 = !DILocation(line: 83, column: 9, scope: !217)
!238 = !DILocation(line: 80, column: 43, scope: !213)
!239 = !DILocation(line: 80, column: 23, scope: !213)
!240 = distinct !{!240, !215, !241, !242}
!241 = !DILocation(line: 83, column: 9, scope: !210)
!242 = !{!"llvm.loop.name", !"VITIS_LOOP_80_6"}
!243 = !DILocation(line: 84, column: 5, scope: !202)
!244 = !DILocation(line: 77, column: 43, scope: !197)
!245 = !DILocation(line: 77, column: 22, scope: !197)
!246 = distinct !{!246, !200, !247, !248}
!247 = !DILocation(line: 84, column: 5, scope: !193)
!248 = !{!"llvm.loop.name", !"VITIS_LOOP_77_5"}
!249 = !DILocation(line: 85, column: 4, scope: !194)
!250 = !DILocation(line: 75, column: 41, scope: !187)
!251 = !DILocation(line: 75, column: 20, scope: !187)
!252 = distinct !{!252, !190, !253, !254}
!253 = !DILocation(line: 85, column: 4, scope: !184)
!254 = !{!"llvm.loop.name", !"VITIS_LOOP_75_4"}
!255 = !DILocation(line: 88, column: 27, scope: !256)
!256 = distinct !DILexicalBlock(scope: !7, file: !8, line: 88, column: 20)
!257 = !DILocation(line: 88, column: 25, scope: !256)
!258 = !DILocation(line: 88, column: 32, scope: !259)
!259 = distinct !DILexicalBlock(scope: !256, file: !8, line: 88, column: 20)
!260 = !DILocation(line: 88, column: 34, scope: !259)
!261 = !DILocation(line: 88, column: 20, scope: !256)
!262 = !DILocation(line: 88, column: 44, scope: !259)
!263 = !DILocation(line: 90, column: 29, scope: !264)
!264 = distinct !DILexicalBlock(scope: !265, file: !8, line: 90, column: 22)
!265 = distinct !DILexicalBlock(scope: !259, file: !8, line: 88, column: 44)
!266 = !DILocation(line: 90, column: 27, scope: !264)
!267 = !DILocation(line: 90, column: 34, scope: !268)
!268 = distinct !DILexicalBlock(scope: !264, file: !8, line: 90, column: 22)
!269 = !DILocation(line: 90, column: 36, scope: !268)
!270 = !DILocation(line: 90, column: 22, scope: !264)
!271 = !DILocation(line: 92, column: 6, scope: !272)
!272 = distinct !DILexicalBlock(scope: !268, file: !8, line: 90, column: 46)
!273 = !DILocation(line: 92, column: 9, scope: !272)
!274 = !DILocation(line: 92, column: 11, scope: !272)
!275 = !DILocation(line: 92, column: 10, scope: !272)
!276 = !DILocation(line: 92, column: 14, scope: !272)
!277 = !DILocation(line: 92, column: 13, scope: !272)
!278 = !DILocation(line: 92, column: 17, scope: !272)
!279 = !DILocation(line: 93, column: 30, scope: !280)
!280 = distinct !DILexicalBlock(scope: !272, file: !8, line: 93, column: 23)
!281 = !DILocation(line: 93, column: 28, scope: !280)
!282 = !DILocation(line: 93, column: 35, scope: !283)
!283 = distinct !DILexicalBlock(scope: !280, file: !8, line: 93, column: 23)
!284 = !DILocation(line: 93, column: 37, scope: !283)
!285 = !DILocation(line: 93, column: 23, scope: !280)
!286 = !DILocation(line: 95, column: 24, scope: !287)
!287 = distinct !DILexicalBlock(scope: !283, file: !8, line: 93, column: 47)
!288 = !DILocation(line: 95, column: 27, scope: !287)
!289 = !DILocation(line: 95, column: 29, scope: !287)
!290 = !DILocation(line: 95, column: 28, scope: !287)
!291 = !DILocation(line: 95, column: 32, scope: !287)
!292 = !DILocation(line: 95, column: 31, scope: !287)
!293 = !DILocation(line: 95, column: 37, scope: !287)
!294 = !DILocation(line: 95, column: 40, scope: !287)
!295 = !DILocation(line: 95, column: 42, scope: !287)
!296 = !DILocation(line: 95, column: 41, scope: !287)
!297 = !DILocation(line: 95, column: 45, scope: !287)
!298 = !DILocation(line: 95, column: 44, scope: !287)
!299 = !DILocation(line: 95, column: 35, scope: !287)
!300 = !DILocation(line: 95, column: 10, scope: !287)
!301 = !DILocation(line: 95, column: 13, scope: !287)
!302 = !DILocation(line: 95, column: 15, scope: !287)
!303 = !DILocation(line: 95, column: 14, scope: !287)
!304 = !DILocation(line: 95, column: 18, scope: !287)
!305 = !DILocation(line: 95, column: 17, scope: !287)
!306 = !DILocation(line: 95, column: 21, scope: !287)
!307 = !DILocation(line: 96, column: 9, scope: !287)
!308 = !DILocation(line: 93, column: 43, scope: !283)
!309 = !DILocation(line: 93, column: 23, scope: !283)
!310 = distinct !{!310, !285, !311, !312}
!311 = !DILocation(line: 96, column: 9, scope: !280)
!312 = !{!"llvm.loop.name", !"VITIS_LOOP_93_9"}
!313 = !DILocation(line: 97, column: 5, scope: !272)
!314 = !DILocation(line: 90, column: 43, scope: !268)
!315 = !DILocation(line: 90, column: 22, scope: !268)
!316 = distinct !{!316, !270, !317, !318}
!317 = !DILocation(line: 97, column: 5, scope: !264)
!318 = !{!"llvm.loop.name", !"VITIS_LOOP_90_8"}
!319 = !DILocation(line: 98, column: 3, scope: !265)
!320 = !DILocation(line: 88, column: 41, scope: !259)
!321 = !DILocation(line: 88, column: 20, scope: !259)
!322 = distinct !{!322, !261, !323, !324}
!323 = !DILocation(line: 98, column: 3, scope: !256)
!324 = !{!"llvm.loop.name", !"VITIS_LOOP_88_7"}
!325 = !DILocation(line: 99, column: 1, scope: !7)
!326 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!327 = !{i32 0, i1 false, i32 0, i1 false}
!328 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
