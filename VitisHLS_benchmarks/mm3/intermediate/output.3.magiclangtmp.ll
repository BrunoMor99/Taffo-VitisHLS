; ModuleID = '/home/bruno/Desktop/benchmarks/mm3/intermediate/output.2.magiclangtmp.ll'
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
  %As = alloca float*, align 8, !taffo.target !27, !taffo.info !28
  %Bs = alloca float*, align 8, !taffo.target !30, !taffo.info !28
  %Cs = alloca float*, align 8, !taffo.target !31, !taffo.info !28
  %Ds = alloca float*, align 8, !taffo.target !32, !taffo.info !28
  %Es = alloca float*, align 8, !taffo.target !33, !taffo.info !34
  %Fs = alloca float*, align 8, !taffo.target !36, !taffo.info !34
  %Gs = alloca float*, align 8, !taffo.target !37, !taffo.info !34
  %i = alloca i32, align 4, !taffo.info !38
  %j = alloca i32, align 4, !taffo.info !40
  %k = alloca i32, align 4, !taffo.info !38
  store float* %A, float** %A.addr, align 8
  call void @llvm.dbg.declare(metadata float** %A.addr, metadata !42, metadata !DIExpression()), !dbg !43
  store float* %B, float** %B.addr, align 8
  call void @llvm.dbg.declare(metadata float** %B.addr, metadata !44, metadata !DIExpression()), !dbg !45
  store float* %C, float** %C.addr, align 8
  call void @llvm.dbg.declare(metadata float** %C.addr, metadata !46, metadata !DIExpression()), !dbg !47
  store float* %D, float** %D.addr, align 8
  call void @llvm.dbg.declare(metadata float** %D.addr, metadata !48, metadata !DIExpression()), !dbg !49
  store float* %E, float** %E.addr, align 8
  call void @llvm.dbg.declare(metadata float** %E.addr, metadata !50, metadata !DIExpression()), !dbg !51
  store float* %F, float** %F.addr, align 8
  call void @llvm.dbg.declare(metadata float** %F.addr, metadata !52, metadata !DIExpression()), !dbg !53
  store float* %G, float** %G.addr, align 8
  call void @llvm.dbg.declare(metadata float** %G.addr, metadata !54, metadata !DIExpression()), !dbg !55
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %A, [0 x i8] zeroinitializer, i64 256, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !56
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %B, [0 x i8] zeroinitializer, i64 256, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !57
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %C, [0 x i8] zeroinitializer, i64 256, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !58
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %D, [0 x i8] zeroinitializer, i64 256, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !59
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %E, [0 x i8] zeroinitializer, i64 256, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !60
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %F, [0 x i8] zeroinitializer, i64 256, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !61
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %G, [0 x i8] zeroinitializer, i64 256, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !62
  %0 = bitcast i32* %ni to i8*, !dbg !63
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !63
  call void @llvm.dbg.declare(metadata i32* %ni, metadata !64, metadata !DIExpression()), !dbg !66
  store i32 16, i32* %ni, align 4, !dbg !66
  %1 = bitcast i32* %nj to i8*, !dbg !67
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !67
  call void @llvm.dbg.declare(metadata i32* %nj, metadata !68, metadata !DIExpression()), !dbg !69
  store i32 16, i32* %nj, align 4, !dbg !69
  %2 = bitcast i32* %nk to i8*, !dbg !70
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !70
  call void @llvm.dbg.declare(metadata i32* %nk, metadata !71, metadata !DIExpression()), !dbg !72
  store i32 16, i32* %nk, align 4, !dbg !72
  %3 = bitcast i32* %nl to i8*, !dbg !73
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !73
  call void @llvm.dbg.declare(metadata i32* %nl, metadata !74, metadata !DIExpression()), !dbg !75
  store i32 16, i32* %nl, align 4, !dbg !75
  %4 = bitcast i32* %nm to i8*, !dbg !76
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !76
  call void @llvm.dbg.declare(metadata i32* %nm, metadata !77, metadata !DIExpression()), !dbg !78
  store i32 16, i32* %nm, align 4, !dbg !78
  %5 = bitcast float** %As to i8*, !dbg !79, !taffo.target !27, !taffo.info !28
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %5) #4, !dbg !79, !taffo.target !27, !taffo.info !80
  call void @llvm.dbg.declare(metadata float** %As, metadata !81, metadata !DIExpression()), !dbg !82
  %As1 = bitcast float** %As to i8*, !dbg !79, !taffo.target !27, !taffo.info !28
  %6 = load float*, float** %A.addr, align 8, !dbg !83
  store float* %6, float** %As, align 8, !dbg !84, !taffo.target !27, !taffo.info !80
  %7 = bitcast float** %Bs to i8*, !dbg !85, !taffo.target !30, !taffo.info !28
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %7) #4, !dbg !85, !taffo.target !30, !taffo.info !80
  call void @llvm.dbg.declare(metadata float** %Bs, metadata !86, metadata !DIExpression()), !dbg !87
  %Bs2 = bitcast float** %Bs to i8*, !dbg !85, !taffo.target !30, !taffo.info !28
  %8 = load float*, float** %B.addr, align 8, !dbg !88
  store float* %8, float** %Bs, align 8, !dbg !89, !taffo.target !30, !taffo.info !80
  %9 = bitcast float** %Cs to i8*, !dbg !90, !taffo.target !31, !taffo.info !28
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %9) #4, !dbg !90, !taffo.target !31, !taffo.info !80
  call void @llvm.dbg.declare(metadata float** %Cs, metadata !91, metadata !DIExpression()), !dbg !92
  %Cs3 = bitcast float** %Cs to i8*, !dbg !90, !taffo.target !31, !taffo.info !28
  %10 = load float*, float** %C.addr, align 8, !dbg !93
  store float* %10, float** %Cs, align 8, !dbg !94, !taffo.target !31, !taffo.info !80
  %11 = bitcast float** %Ds to i8*, !dbg !95, !taffo.target !32, !taffo.info !28
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %11) #4, !dbg !95, !taffo.target !32, !taffo.info !80
  call void @llvm.dbg.declare(metadata float** %Ds, metadata !96, metadata !DIExpression()), !dbg !97
  %Ds4 = bitcast float** %Ds to i8*, !dbg !95, !taffo.target !32, !taffo.info !28
  %12 = load float*, float** %D.addr, align 8, !dbg !98
  store float* %12, float** %Ds, align 8, !dbg !99, !taffo.target !32, !taffo.info !80
  %13 = bitcast float** %Es to i8*, !dbg !100, !taffo.target !33, !taffo.info !34
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %13) #4, !dbg !100, !taffo.target !33, !taffo.info !80
  call void @llvm.dbg.declare(metadata float** %Es, metadata !101, metadata !DIExpression()), !dbg !102
  %Es5 = bitcast float** %Es to i8*, !dbg !100, !taffo.target !33, !taffo.info !34
  %14 = load float*, float** %E.addr, align 8, !dbg !103, !taffo.info !1
  store float* %14, float** %Es, align 8, !dbg !104, !taffo.target !33, !taffo.info !80
  %15 = bitcast float** %Fs to i8*, !dbg !105, !taffo.target !36, !taffo.info !34
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %15) #4, !dbg !105, !taffo.target !36, !taffo.info !80
  call void @llvm.dbg.declare(metadata float** %Fs, metadata !106, metadata !DIExpression()), !dbg !107
  %Fs6 = bitcast float** %Fs to i8*, !dbg !105, !taffo.target !36, !taffo.info !34
  %16 = load float*, float** %F.addr, align 8, !dbg !108, !taffo.info !1
  store float* %16, float** %Fs, align 8, !dbg !109, !taffo.target !36, !taffo.info !80
  %17 = bitcast float** %Gs to i8*, !dbg !110, !taffo.target !37, !taffo.info !34
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %17) #4, !dbg !110, !taffo.target !37, !taffo.info !80
  call void @llvm.dbg.declare(metadata float** %Gs, metadata !111, metadata !DIExpression()), !dbg !112
  %Gs7 = bitcast float** %Gs to i8*, !dbg !110, !taffo.target !37, !taffo.info !34
  %18 = load float*, float** %G.addr, align 8, !dbg !113, !taffo.info !1
  store float* %18, float** %Gs, align 8, !dbg !114, !taffo.target !37, !taffo.info !80
  %19 = bitcast i32* %i to i8*, !dbg !115, !taffo.info !80
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #4, !dbg !115, !taffo.info !80
  call void @llvm.dbg.declare(metadata i32* %i, metadata !116, metadata !DIExpression()), !dbg !117
  %i8 = bitcast i32* %i to i8*, !dbg !115, !taffo.info !80
  %20 = bitcast i32* %j to i8*, !dbg !118, !taffo.info !80
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %20) #4, !dbg !118, !taffo.info !80
  call void @llvm.dbg.declare(metadata i32* %j, metadata !119, metadata !DIExpression()), !dbg !120
  %j9 = bitcast i32* %j to i8*, !dbg !118, !taffo.info !80
  %21 = bitcast i32* %k to i8*, !dbg !121, !taffo.info !80
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %21) #4, !dbg !121, !taffo.info !80
  call void @llvm.dbg.declare(metadata i32* %k, metadata !122, metadata !DIExpression()), !dbg !123
  %k10 = bitcast i32* %k to i8*, !dbg !121, !taffo.info !80
  br label %VITIS_LOOP_63_1, !dbg !121

VITIS_LOOP_63_1:                                  ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !124, !taffo.info !80
  br label %for.cond, !dbg !126

for.cond:                                         ; preds = %for.inc34, %VITIS_LOOP_63_1
  %22 = load i32, i32* %i, align 4, !dbg !127, !taffo.info !38
  %23 = load i32, i32* %ni, align 4, !dbg !129, !taffo.info !25
  %cmp = icmp slt i32 %22, %23, !dbg !130, !taffo.info !131
  br i1 %cmp, label %for.body, label %for.end36, !dbg !133, !taffo.info !80

for.body:                                         ; preds = %for.cond
  br label %VITIS_LOOP_65_2, !dbg !134

VITIS_LOOP_65_2:                                  ; preds = %for.body
  store i32 0, i32* %j, align 4, !dbg !135, !taffo.info !80
  br label %for.cond11, !dbg !138

for.cond11:                                       ; preds = %for.inc31, %VITIS_LOOP_65_2
  %24 = load i32, i32* %j, align 4, !dbg !139, !taffo.info !40
  %25 = load i32, i32* %nj, align 4, !dbg !141, !taffo.info !25
  %cmp12 = icmp slt i32 %24, %25, !dbg !142, !taffo.info !131
  br i1 %cmp12, label %for.body13, label %for.end33, !dbg !143, !taffo.info !80

for.body13:                                       ; preds = %for.cond11
  %26 = load float*, float** %Es, align 8, !dbg !144, !taffo.target !33, !taffo.info !34
  %27 = load i32, i32* %i, align 4, !dbg !146, !taffo.info !38
  %28 = load i32, i32* %nj, align 4, !dbg !147, !taffo.info !25
  %mul = mul nsw i32 %27, %28, !dbg !148, !taffo.info !149
  %29 = load i32, i32* %j, align 4, !dbg !150, !taffo.info !40
  %add = add nsw i32 %mul, %29, !dbg !151, !taffo.info !149
  %idxprom = sext i32 %add to i64, !dbg !144, !taffo.info !149
  %arrayidx = getelementptr inbounds float, float* %26, i64 %idxprom, !dbg !144, !taffo.target !33, !taffo.info !34
  store float 0.000000e+00, float* %arrayidx, align 4, !dbg !152, !taffo.target !33, !taffo.info !80
  br label %VITIS_LOOP_68_3, !dbg !144

VITIS_LOOP_68_3:                                  ; preds = %for.body13
  store i32 0, i32* %k, align 4, !dbg !153, !taffo.info !80
  br label %for.cond14, !dbg !155

for.cond14:                                       ; preds = %for.inc, %VITIS_LOOP_68_3
  %30 = load i32, i32* %k, align 4, !dbg !156, !taffo.info !38
  %cmp15 = icmp slt i32 %30, 16, !dbg !158, !taffo.info !131
  br i1 %cmp15, label %for.body16, label %for.end, !dbg !159, !taffo.info !80

for.body16:                                       ; preds = %for.cond14
  %31 = load float*, float** %As, align 8, !dbg !160, !taffo.target !27, !taffo.info !28
  %32 = load i32, i32* %i, align 4, !dbg !162, !taffo.info !38
  %33 = load i32, i32* %nk, align 4, !dbg !163, !taffo.info !25
  %mul17 = mul nsw i32 %32, %33, !dbg !164, !taffo.info !149
  %34 = load i32, i32* %k, align 4, !dbg !165, !taffo.info !38
  %add18 = add nsw i32 %mul17, %34, !dbg !166, !taffo.info !149
  %idxprom19 = sext i32 %add18 to i64, !dbg !160, !taffo.info !149
  %arrayidx20 = getelementptr inbounds float, float* %31, i64 %idxprom19, !dbg !160, !taffo.target !27, !taffo.info !28
  %35 = load float, float* %arrayidx20, align 4, !dbg !160, !taffo.target !27, !taffo.info !28
  %36 = load float*, float** %Bs, align 8, !dbg !167, !taffo.target !30, !taffo.info !28
  %37 = load i32, i32* %k, align 4, !dbg !168, !taffo.info !38
  %38 = load i32, i32* %nj, align 4, !dbg !169, !taffo.info !25
  %mul21 = mul nsw i32 %37, %38, !dbg !170, !taffo.info !149
  %39 = load i32, i32* %j, align 4, !dbg !171, !taffo.info !40
  %add22 = add nsw i32 %mul21, %39, !dbg !172, !taffo.info !149
  %idxprom23 = sext i32 %add22 to i64, !dbg !167, !taffo.info !149
  %arrayidx24 = getelementptr inbounds float, float* %36, i64 %idxprom23, !dbg !167, !taffo.target !30, !taffo.info !28
  %40 = load float, float* %arrayidx24, align 4, !dbg !167, !taffo.target !30, !taffo.info !28
  %mul25 = fmul float %35, %40, !dbg !173, !taffo.target !27, !taffo.info !149
  %41 = load float*, float** %Es, align 8, !dbg !174, !taffo.target !33, !taffo.info !34
  %42 = load i32, i32* %i, align 4, !dbg !175, !taffo.info !38
  %43 = load i32, i32* %nj, align 4, !dbg !176, !taffo.info !25
  %mul26 = mul nsw i32 %42, %43, !dbg !177, !taffo.info !149
  %44 = load i32, i32* %j, align 4, !dbg !178, !taffo.info !40
  %add27 = add nsw i32 %mul26, %44, !dbg !179, !taffo.info !149
  %idxprom28 = sext i32 %add27 to i64, !dbg !174, !taffo.info !149
  %arrayidx29 = getelementptr inbounds float, float* %41, i64 %idxprom28, !dbg !174, !taffo.target !33, !taffo.info !34
  %45 = load float, float* %arrayidx29, align 4, !dbg !180, !taffo.target !33, !taffo.info !34
  %add30 = fadd float %45, %mul25, !dbg !180, !taffo.target !33, !taffo.info !149
  store float %add30, float* %arrayidx29, align 4, !dbg !180, !taffo.target !33, !taffo.info !80
  br label %for.inc, !dbg !181

for.inc:                                          ; preds = %for.body16
  %46 = load i32, i32* %k, align 4, !dbg !182, !taffo.info !38
  %inc = add nsw i32 %46, 1, !dbg !182, !taffo.info !131
  store i32 %inc, i32* %k, align 4, !dbg !182, !taffo.info !80
  br label %for.cond14, !dbg !183, !llvm.loop !184

for.end:                                          ; preds = %for.cond14
  br label %for.inc31, !dbg !187

for.inc31:                                        ; preds = %for.end
  %47 = load i32, i32* %j, align 4, !dbg !188, !taffo.info !40
  %inc32 = add nsw i32 %47, 1, !dbg !188, !taffo.info !189
  store i32 %inc32, i32* %j, align 4, !dbg !188, !taffo.info !80
  br label %for.cond11, !dbg !191, !llvm.loop !192

for.end33:                                        ; preds = %for.cond11
  br label %for.inc34, !dbg !195

for.inc34:                                        ; preds = %for.end33
  %48 = load i32, i32* %i, align 4, !dbg !196, !taffo.info !38
  %inc35 = add nsw i32 %48, 1, !dbg !196, !taffo.info !131
  store i32 %inc35, i32* %i, align 4, !dbg !196, !taffo.info !80
  br label %for.cond, !dbg !197, !llvm.loop !198

for.end36:                                        ; preds = %for.cond
  br label %VITIS_LOOP_75_4, !dbg !199

VITIS_LOOP_75_4:                                  ; preds = %for.end36
  store i32 0, i32* %i, align 4, !dbg !201, !taffo.info !80
  br label %for.cond37, !dbg !203

for.cond37:                                       ; preds = %for.inc70, %VITIS_LOOP_75_4
  %49 = load i32, i32* %i, align 4, !dbg !204, !taffo.info !38
  %50 = load i32, i32* %nj, align 4, !dbg !206, !taffo.info !25
  %cmp38 = icmp slt i32 %49, %50, !dbg !207, !taffo.info !131
  br i1 %cmp38, label %for.body39, label %for.end72, !dbg !208, !taffo.info !80

for.body39:                                       ; preds = %for.cond37
  br label %VITIS_LOOP_77_5, !dbg !209

VITIS_LOOP_77_5:                                  ; preds = %for.body39
  store i32 0, i32* %j, align 4, !dbg !210, !taffo.info !80
  br label %for.cond40, !dbg !213

for.cond40:                                       ; preds = %for.inc67, %VITIS_LOOP_77_5
  %51 = load i32, i32* %j, align 4, !dbg !214, !taffo.info !40
  %52 = load i32, i32* %nl, align 4, !dbg !216, !taffo.info !25
  %cmp41 = icmp slt i32 %51, %52, !dbg !217, !taffo.info !131
  br i1 %cmp41, label %for.body42, label %for.end69, !dbg !218, !taffo.info !80

for.body42:                                       ; preds = %for.cond40
  %53 = load float*, float** %Fs, align 8, !dbg !219, !taffo.target !36, !taffo.info !34
  %54 = load i32, i32* %i, align 4, !dbg !221, !taffo.info !38
  %55 = load i32, i32* %nl, align 4, !dbg !222, !taffo.info !25
  %mul43 = mul nsw i32 %54, %55, !dbg !223, !taffo.info !224
  %56 = load i32, i32* %j, align 4, !dbg !226, !taffo.info !40
  %add44 = add nsw i32 %mul43, %56, !dbg !227, !taffo.info !228
  %idxprom45 = sext i32 %add44 to i64, !dbg !219, !taffo.info !228
  %arrayidx46 = getelementptr inbounds float, float* %53, i64 %idxprom45, !dbg !219, !taffo.target !36, !taffo.info !34
  store float 0.000000e+00, float* %arrayidx46, align 4, !dbg !230, !taffo.target !36, !taffo.info !80
  br label %VITIS_LOOP_80_6, !dbg !219

VITIS_LOOP_80_6:                                  ; preds = %for.body42
  store i32 0, i32* %k, align 4, !dbg !231, !taffo.info !80
  br label %for.cond47, !dbg !233

for.cond47:                                       ; preds = %for.inc64, %VITIS_LOOP_80_6
  %57 = load i32, i32* %k, align 4, !dbg !234, !taffo.info !38
  %cmp48 = icmp slt i32 %57, 16, !dbg !236, !taffo.info !131
  br i1 %cmp48, label %for.body49, label %for.end66, !dbg !237, !taffo.info !80

for.body49:                                       ; preds = %for.cond47
  %58 = load float*, float** %Cs, align 8, !dbg !238, !taffo.target !31, !taffo.info !28
  %59 = load i32, i32* %i, align 4, !dbg !240, !taffo.info !38
  %60 = load i32, i32* %nm, align 4, !dbg !241, !taffo.info !25
  %mul50 = mul nsw i32 %59, %60, !dbg !242, !taffo.info !224
  %61 = load i32, i32* %k, align 4, !dbg !243, !taffo.info !38
  %add51 = add nsw i32 %mul50, %61, !dbg !244, !taffo.info !245
  %idxprom52 = sext i32 %add51 to i64, !dbg !238, !taffo.info !245
  %arrayidx53 = getelementptr inbounds float, float* %58, i64 %idxprom52, !dbg !238, !taffo.target !31, !taffo.info !28
  %62 = load float, float* %arrayidx53, align 4, !dbg !238, !taffo.target !31, !taffo.info !28
  %63 = load float*, float** %Ds, align 8, !dbg !247, !taffo.target !32, !taffo.info !28
  %64 = load i32, i32* %k, align 4, !dbg !248, !taffo.info !38
  %65 = load i32, i32* %nl, align 4, !dbg !249, !taffo.info !25
  %mul54 = mul nsw i32 %64, %65, !dbg !250, !taffo.info !251
  %66 = load i32, i32* %j, align 4, !dbg !253, !taffo.info !40
  %add55 = add nsw i32 %mul54, %66, !dbg !254, !taffo.info !255
  %idxprom56 = sext i32 %add55 to i64, !dbg !247, !taffo.info !255
  %arrayidx57 = getelementptr inbounds float, float* %63, i64 %idxprom56, !dbg !247, !taffo.target !32, !taffo.info !28
  %67 = load float, float* %arrayidx57, align 4, !dbg !247, !taffo.target !32, !taffo.info !28
  %mul58 = fmul float %62, %67, !dbg !257, !taffo.target !31, !taffo.info !149
  %68 = load float*, float** %Fs, align 8, !dbg !258, !taffo.target !36, !taffo.info !34
  %69 = load i32, i32* %i, align 4, !dbg !259, !taffo.info !38
  %70 = load i32, i32* %nl, align 4, !dbg !260, !taffo.info !25
  %mul59 = mul nsw i32 %69, %70, !dbg !261, !taffo.info !224
  %71 = load i32, i32* %j, align 4, !dbg !262, !taffo.info !40
  %add60 = add nsw i32 %mul59, %71, !dbg !263, !taffo.info !264
  %idxprom61 = sext i32 %add60 to i64, !dbg !258, !taffo.info !264
  %arrayidx62 = getelementptr inbounds float, float* %68, i64 %idxprom61, !dbg !258, !taffo.target !36, !taffo.info !34
  %72 = load float, float* %arrayidx62, align 4, !dbg !266, !taffo.target !36, !taffo.info !34
  %add63 = fadd float %72, %mul58, !dbg !266, !taffo.target !36, !taffo.info !149
  store float %add63, float* %arrayidx62, align 4, !dbg !266, !taffo.target !36, !taffo.info !80
  br label %for.inc64, !dbg !267

for.inc64:                                        ; preds = %for.body49
  %73 = load i32, i32* %k, align 4, !dbg !268, !taffo.info !38
  %inc65 = add nsw i32 %73, 1, !dbg !268, !taffo.info !189
  store i32 %inc65, i32* %k, align 4, !dbg !268, !taffo.info !80
  br label %for.cond47, !dbg !269, !llvm.loop !270

for.end66:                                        ; preds = %for.cond47
  br label %for.inc67, !dbg !273

for.inc67:                                        ; preds = %for.end66
  %74 = load i32, i32* %j, align 4, !dbg !274, !taffo.info !40
  %inc68 = add nsw i32 %74, 1, !dbg !274, !taffo.info !275
  store i32 %inc68, i32* %j, align 4, !dbg !274, !taffo.info !80
  br label %for.cond40, !dbg !277, !llvm.loop !278

for.end69:                                        ; preds = %for.cond40
  br label %for.inc70, !dbg !281

for.inc70:                                        ; preds = %for.end69
  %75 = load i32, i32* %i, align 4, !dbg !282, !taffo.info !38
  %inc71 = add nsw i32 %75, 1, !dbg !282, !taffo.info !189
  store i32 %inc71, i32* %i, align 4, !dbg !282, !taffo.info !80
  br label %for.cond37, !dbg !283, !llvm.loop !284

for.end72:                                        ; preds = %for.cond37
  br label %VITIS_LOOP_88_7, !dbg !285

VITIS_LOOP_88_7:                                  ; preds = %for.end72
  store i32 0, i32* %i, align 4, !dbg !287, !taffo.info !80
  br label %for.cond73, !dbg !289

for.cond73:                                       ; preds = %for.inc106, %VITIS_LOOP_88_7
  %76 = load i32, i32* %i, align 4, !dbg !290, !taffo.info !38
  %cmp74 = icmp slt i32 %76, 16, !dbg !292, !taffo.info !131
  br i1 %cmp74, label %for.body75, label %for.end108, !dbg !293, !taffo.info !80

for.body75:                                       ; preds = %for.cond73
  br label %VITIS_LOOP_90_8, !dbg !294

VITIS_LOOP_90_8:                                  ; preds = %for.body75
  store i32 0, i32* %j, align 4, !dbg !295, !taffo.info !80
  br label %for.cond76, !dbg !298

for.cond76:                                       ; preds = %for.inc103, %VITIS_LOOP_90_8
  %77 = load i32, i32* %j, align 4, !dbg !299, !taffo.info !40
  %cmp77 = icmp slt i32 %77, 16, !dbg !301, !taffo.info !131
  br i1 %cmp77, label %for.body78, label %for.end105, !dbg !302, !taffo.info !80

for.body78:                                       ; preds = %for.cond76
  %78 = load float*, float** %Gs, align 8, !dbg !303, !taffo.target !37, !taffo.info !34
  %79 = load i32, i32* %i, align 4, !dbg !305, !taffo.info !38
  %80 = load i32, i32* %nl, align 4, !dbg !306, !taffo.info !25
  %mul79 = mul nsw i32 %79, %80, !dbg !307, !taffo.info !308
  %81 = load i32, i32* %j, align 4, !dbg !310, !taffo.info !40
  %add80 = add nsw i32 %mul79, %81, !dbg !311, !taffo.info !312
  %idxprom81 = sext i32 %add80 to i64, !dbg !303, !taffo.info !312
  %arrayidx82 = getelementptr inbounds float, float* %78, i64 %idxprom81, !dbg !303, !taffo.target !37, !taffo.info !34
  store float 0.000000e+00, float* %arrayidx82, align 4, !dbg !314, !taffo.target !37, !taffo.info !80
  br label %VITIS_LOOP_93_9, !dbg !303

VITIS_LOOP_93_9:                                  ; preds = %for.body78
  store i32 0, i32* %k, align 4, !dbg !315, !taffo.info !80
  br label %for.cond83, !dbg !317

for.cond83:                                       ; preds = %for.inc100, %VITIS_LOOP_93_9
  %82 = load i32, i32* %k, align 4, !dbg !318, !taffo.info !38
  %cmp84 = icmp slt i32 %82, 16, !dbg !320, !taffo.info !131
  br i1 %cmp84, label %for.body85, label %for.end102, !dbg !321, !taffo.info !80

for.body85:                                       ; preds = %for.cond83
  %83 = load float*, float** %Es, align 8, !dbg !322, !taffo.target !33, !taffo.info !34
  %84 = load i32, i32* %i, align 4, !dbg !324, !taffo.info !38
  %85 = load i32, i32* %nj, align 4, !dbg !325, !taffo.info !25
  %mul86 = mul nsw i32 %84, %85, !dbg !326, !taffo.info !308
  %86 = load i32, i32* %k, align 4, !dbg !327, !taffo.info !38
  %add87 = add nsw i32 %mul86, %86, !dbg !328, !taffo.info !329
  %idxprom88 = sext i32 %add87 to i64, !dbg !322, !taffo.info !329
  %arrayidx89 = getelementptr inbounds float, float* %83, i64 %idxprom88, !dbg !322, !taffo.target !33, !taffo.info !34
  %87 = load float, float* %arrayidx89, align 4, !dbg !322, !taffo.target !33, !taffo.info !34
  %88 = load float*, float** %Fs, align 8, !dbg !331, !taffo.target !36, !taffo.info !34
  %89 = load i32, i32* %k, align 4, !dbg !332, !taffo.info !38
  %90 = load i32, i32* %nl, align 4, !dbg !333, !taffo.info !25
  %mul90 = mul nsw i32 %89, %90, !dbg !334, !taffo.info !224
  %91 = load i32, i32* %j, align 4, !dbg !335, !taffo.info !40
  %add91 = add nsw i32 %mul90, %91, !dbg !336, !taffo.info !337
  %idxprom92 = sext i32 %add91 to i64, !dbg !331, !taffo.info !337
  %arrayidx93 = getelementptr inbounds float, float* %88, i64 %idxprom92, !dbg !331, !taffo.target !36, !taffo.info !34
  %92 = load float, float* %arrayidx93, align 4, !dbg !331, !taffo.target !36, !taffo.info !34
  %mul94 = fmul float %87, %92, !dbg !339, !taffo.target !33, !taffo.info !149
  %93 = load float*, float** %Gs, align 8, !dbg !340, !taffo.target !37, !taffo.info !34
  %94 = load i32, i32* %i, align 4, !dbg !341, !taffo.info !38
  %95 = load i32, i32* %nl, align 4, !dbg !342, !taffo.info !25
  %mul95 = mul nsw i32 %94, %95, !dbg !343, !taffo.info !308
  %96 = load i32, i32* %j, align 4, !dbg !344, !taffo.info !40
  %add96 = add nsw i32 %mul95, %96, !dbg !345, !taffo.info !346
  %idxprom97 = sext i32 %add96 to i64, !dbg !340, !taffo.info !346
  %arrayidx98 = getelementptr inbounds float, float* %93, i64 %idxprom97, !dbg !340, !taffo.target !37, !taffo.info !34
  %97 = load float, float* %arrayidx98, align 4, !dbg !348, !taffo.target !37, !taffo.info !34
  %add99 = fadd float %97, %mul94, !dbg !348, !taffo.target !37, !taffo.info !149
  store float %add99, float* %arrayidx98, align 4, !dbg !348, !taffo.target !37, !taffo.info !80
  br label %for.inc100, !dbg !349

for.inc100:                                       ; preds = %for.body85
  %98 = load i32, i32* %k, align 4, !dbg !350, !taffo.info !38
  %inc101 = add nsw i32 %98, 1, !dbg !350, !taffo.info !275
  store i32 %inc101, i32* %k, align 4, !dbg !350, !taffo.info !80
  br label %for.cond83, !dbg !351, !llvm.loop !352

for.end102:                                       ; preds = %for.cond83
  br label %for.inc103, !dbg !355

for.inc103:                                       ; preds = %for.end102
  %99 = load i32, i32* %j, align 4, !dbg !356, !taffo.info !40
  %inc104 = add nsw i32 %99, 1, !dbg !356, !taffo.info !357
  store i32 %inc104, i32* %j, align 4, !dbg !356, !taffo.info !80
  br label %for.cond76, !dbg !359, !llvm.loop !360

for.end105:                                       ; preds = %for.cond76
  br label %for.inc106, !dbg !363

for.inc106:                                       ; preds = %for.end105
  %100 = load i32, i32* %i, align 4, !dbg !364, !taffo.info !38
  %inc107 = add nsw i32 %100, 1, !dbg !364, !taffo.info !275
  store i32 %inc107, i32* %i, align 4, !dbg !364, !taffo.info !80
  br label %for.cond73, !dbg !365, !llvm.loop !366

for.end108:                                       ; preds = %for.cond73
  %101 = bitcast i32* %k to i8*, !dbg !369, !taffo.info !370
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %101) #4, !dbg !369, !taffo.info !80
  %102 = bitcast i32* %j to i8*, !dbg !369, !taffo.info !38
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %102) #4, !dbg !369, !taffo.info !80
  %103 = bitcast i32* %i to i8*, !dbg !369, !taffo.info !38
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %103) #4, !dbg !369, !taffo.info !80
  %104 = bitcast float** %Gs to i8*, !dbg !369, !taffo.target !37, !taffo.info !34
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %104) #4, !dbg !369, !taffo.target !37, !taffo.info !80
  %105 = bitcast float** %Fs to i8*, !dbg !369, !taffo.target !36, !taffo.info !34
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %105) #4, !dbg !369, !taffo.target !36, !taffo.info !80
  %106 = bitcast float** %Es to i8*, !dbg !369, !taffo.target !33, !taffo.info !34
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %106) #4, !dbg !369, !taffo.target !33, !taffo.info !80
  %107 = bitcast float** %Ds to i8*, !dbg !369, !taffo.target !32, !taffo.info !28
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %107) #4, !dbg !369, !taffo.target !32, !taffo.info !80
  %108 = bitcast float** %Cs to i8*, !dbg !369, !taffo.target !31, !taffo.info !28
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %108) #4, !dbg !369, !taffo.target !31, !taffo.info !80
  %109 = bitcast float** %Bs to i8*, !dbg !369, !taffo.target !30, !taffo.info !28
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %109) #4, !dbg !369, !taffo.target !30, !taffo.info !80
  %110 = bitcast float** %As to i8*, !dbg !369, !taffo.target !27, !taffo.info !28
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %110) #4, !dbg !369, !taffo.target !27, !taffo.info !80
  %111 = bitcast i32* %nm to i8*, !dbg !369, !taffo.info !25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %111) #4, !dbg !369
  %112 = bitcast i32* %nl to i8*, !dbg !369, !taffo.info !25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %112) #4, !dbg !369
  %113 = bitcast i32* %nk to i8*, !dbg !369, !taffo.info !25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %113) #4, !dbg !369
  %114 = bitcast i32* %nj to i8*, !dbg !369, !taffo.info !25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %114) #4, !dbg !369
  %115 = bitcast i32* %ni to i8*, !dbg !369, !taffo.info !25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %115) #4, !dbg !369
  ret void, !dbg !369
}

; Function Attrs: nounwind readnone speculatable
declare !taffo.funinfo !372 void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: inaccessiblememonly nounwind
declare !taffo.funinfo !9 void @llvm.sideeffect() #2

; Function Attrs: argmemonly nounwind
declare !taffo.funinfo !373 void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare !taffo.funinfo !374 void @llvm.var.annotation(i8*, i8*, i8*, i32) #4

; Function Attrs: argmemonly nounwind
declare !taffo.funinfo !373 void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #3

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
!27 = !{!"A"}
!28 = !{i1 false, !29, i1 false, i1 true}
!29 = !{double -1.000000e+02, double 1.000000e+02}
!30 = !{!"B"}
!31 = !{!"C"}
!32 = !{!"D"}
!33 = !{!"E"}
!34 = !{i1 false, !35, i1 false, i1 true}
!35 = !{double -1.638400e+04, double 1.638400e+04}
!36 = !{!"F"}
!37 = !{!"G"}
!38 = !{i1 false, !39, i1 false, i1 true}
!39 = !{double 0.000000e+00, double 3.000000e+00}
!40 = !{i1 false, !41, i1 false, i1 true}
!41 = !{double 0.000000e+00, double 4.000000e+00}
!42 = !DILocalVariable(name: "A", arg: 1, scope: !14, file: !15, line: 26, type: !18)
!43 = !DILocation(line: 26, column: 55, scope: !14)
!44 = !DILocalVariable(name: "B", arg: 2, scope: !14, file: !15, line: 26, type: !18)
!45 = !DILocation(line: 26, column: 65, scope: !14)
!46 = !DILocalVariable(name: "C", arg: 3, scope: !14, file: !15, line: 26, type: !18)
!47 = !DILocation(line: 26, column: 75, scope: !14)
!48 = !DILocalVariable(name: "D", arg: 4, scope: !14, file: !15, line: 26, type: !18)
!49 = !DILocation(line: 26, column: 85, scope: !14)
!50 = !DILocalVariable(name: "E", arg: 5, scope: !14, file: !15, line: 26, type: !18)
!51 = !DILocation(line: 26, column: 95, scope: !14)
!52 = !DILocalVariable(name: "F", arg: 6, scope: !14, file: !15, line: 26, type: !18)
!53 = !DILocation(line: 26, column: 105, scope: !14)
!54 = !DILocalVariable(name: "G", arg: 7, scope: !14, file: !15, line: 26, type: !18)
!55 = !DILocation(line: 26, column: 115, scope: !14)
!56 = !DILocation(line: 28, column: 9, scope: !14)
!57 = !DILocation(line: 29, column: 9, scope: !14)
!58 = !DILocation(line: 30, column: 9, scope: !14)
!59 = !DILocation(line: 31, column: 9, scope: !14)
!60 = !DILocation(line: 32, column: 9, scope: !14)
!61 = !DILocation(line: 33, column: 9, scope: !14)
!62 = !DILocation(line: 34, column: 9, scope: !14)
!63 = !DILocation(line: 36, column: 2, scope: !14)
!64 = !DILocalVariable(name: "ni", scope: !14, file: !15, line: 36, type: !65)
!65 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!66 = !DILocation(line: 36, column: 6, scope: !14)
!67 = !DILocation(line: 37, column: 3, scope: !14)
!68 = !DILocalVariable(name: "nj", scope: !14, file: !15, line: 37, type: !65)
!69 = !DILocation(line: 37, column: 7, scope: !14)
!70 = !DILocation(line: 38, column: 3, scope: !14)
!71 = !DILocalVariable(name: "nk", scope: !14, file: !15, line: 38, type: !65)
!72 = !DILocation(line: 38, column: 7, scope: !14)
!73 = !DILocation(line: 39, column: 3, scope: !14)
!74 = !DILocalVariable(name: "nl", scope: !14, file: !15, line: 39, type: !65)
!75 = !DILocation(line: 39, column: 7, scope: !14)
!76 = !DILocation(line: 40, column: 3, scope: !14)
!77 = !DILocalVariable(name: "nm", scope: !14, file: !15, line: 40, type: !65)
!78 = !DILocation(line: 40, column: 7, scope: !14)
!79 = !DILocation(line: 42, column: 3, scope: !14)
!80 = !{i1 false, i1 false, i1 false, i1 true}
!81 = !DILocalVariable(name: "As", scope: !14, file: !15, line: 42, type: !18)
!82 = !DILocation(line: 42, column: 10, scope: !14)
!83 = !DILocation(line: 43, column: 8, scope: !14)
!84 = !DILocation(line: 43, column: 6, scope: !14)
!85 = !DILocation(line: 44, column: 3, scope: !14)
!86 = !DILocalVariable(name: "Bs", scope: !14, file: !15, line: 44, type: !18)
!87 = !DILocation(line: 44, column: 10, scope: !14)
!88 = !DILocation(line: 45, column: 8, scope: !14)
!89 = !DILocation(line: 45, column: 6, scope: !14)
!90 = !DILocation(line: 46, column: 3, scope: !14)
!91 = !DILocalVariable(name: "Cs", scope: !14, file: !15, line: 46, type: !18)
!92 = !DILocation(line: 46, column: 10, scope: !14)
!93 = !DILocation(line: 47, column: 8, scope: !14)
!94 = !DILocation(line: 47, column: 6, scope: !14)
!95 = !DILocation(line: 48, column: 3, scope: !14)
!96 = !DILocalVariable(name: "Ds", scope: !14, file: !15, line: 48, type: !18)
!97 = !DILocation(line: 48, column: 10, scope: !14)
!98 = !DILocation(line: 49, column: 8, scope: !14)
!99 = !DILocation(line: 49, column: 6, scope: !14)
!100 = !DILocation(line: 50, column: 3, scope: !14)
!101 = !DILocalVariable(name: "Es", scope: !14, file: !15, line: 50, type: !18)
!102 = !DILocation(line: 50, column: 10, scope: !14)
!103 = !DILocation(line: 51, column: 8, scope: !14)
!104 = !DILocation(line: 51, column: 6, scope: !14)
!105 = !DILocation(line: 52, column: 3, scope: !14)
!106 = !DILocalVariable(name: "Fs", scope: !14, file: !15, line: 52, type: !18)
!107 = !DILocation(line: 52, column: 10, scope: !14)
!108 = !DILocation(line: 53, column: 8, scope: !14)
!109 = !DILocation(line: 53, column: 6, scope: !14)
!110 = !DILocation(line: 54, column: 3, scope: !14)
!111 = !DILocalVariable(name: "Gs", scope: !14, file: !15, line: 54, type: !18)
!112 = !DILocation(line: 54, column: 10, scope: !14)
!113 = !DILocation(line: 55, column: 8, scope: !14)
!114 = !DILocation(line: 55, column: 6, scope: !14)
!115 = !DILocation(line: 57, column: 3, scope: !14)
!116 = !DILocalVariable(name: "i", scope: !14, file: !15, line: 57, type: !65)
!117 = !DILocation(line: 57, column: 7, scope: !14)
!118 = !DILocation(line: 58, column: 3, scope: !14)
!119 = !DILocalVariable(name: "j", scope: !14, file: !15, line: 58, type: !65)
!120 = !DILocation(line: 58, column: 7, scope: !14)
!121 = !DILocation(line: 59, column: 3, scope: !14)
!122 = !DILocalVariable(name: "k", scope: !14, file: !15, line: 59, type: !65)
!123 = !DILocation(line: 59, column: 7, scope: !14)
!124 = !DILocation(line: 63, column: 27, scope: !125)
!125 = distinct !DILexicalBlock(scope: !14, file: !15, line: 63, column: 20)
!126 = !DILocation(line: 63, column: 25, scope: !125)
!127 = !DILocation(line: 63, column: 32, scope: !128)
!128 = distinct !DILexicalBlock(scope: !125, file: !15, line: 63, column: 20)
!129 = !DILocation(line: 63, column: 36, scope: !128)
!130 = !DILocation(line: 63, column: 34, scope: !128)
!131 = !{i1 false, !132, i1 false, i1 true}
!132 = !{double 1.000000e+00, double 1.000000e+00}
!133 = !DILocation(line: 63, column: 20, scope: !125)
!134 = !DILocation(line: 63, column: 44, scope: !128)
!135 = !DILocation(line: 65, column: 29, scope: !136)
!136 = distinct !DILexicalBlock(scope: !137, file: !15, line: 65, column: 22)
!137 = distinct !DILexicalBlock(scope: !128, file: !15, line: 63, column: 44)
!138 = !DILocation(line: 65, column: 27, scope: !136)
!139 = !DILocation(line: 65, column: 34, scope: !140)
!140 = distinct !DILexicalBlock(scope: !136, file: !15, line: 65, column: 22)
!141 = !DILocation(line: 65, column: 38, scope: !140)
!142 = !DILocation(line: 65, column: 36, scope: !140)
!143 = !DILocation(line: 65, column: 22, scope: !136)
!144 = !DILocation(line: 67, column: 6, scope: !145)
!145 = distinct !DILexicalBlock(scope: !140, file: !15, line: 65, column: 46)
!146 = !DILocation(line: 67, column: 9, scope: !145)
!147 = !DILocation(line: 67, column: 11, scope: !145)
!148 = !DILocation(line: 67, column: 10, scope: !145)
!149 = !{i1 false, !2, i1 false, i1 true}
!150 = !DILocation(line: 67, column: 14, scope: !145)
!151 = !DILocation(line: 67, column: 13, scope: !145)
!152 = !DILocation(line: 67, column: 17, scope: !145)
!153 = !DILocation(line: 68, column: 30, scope: !154)
!154 = distinct !DILexicalBlock(scope: !145, file: !15, line: 68, column: 23)
!155 = !DILocation(line: 68, column: 28, scope: !154)
!156 = !DILocation(line: 68, column: 35, scope: !157)
!157 = distinct !DILexicalBlock(scope: !154, file: !15, line: 68, column: 23)
!158 = !DILocation(line: 68, column: 37, scope: !157)
!159 = !DILocation(line: 68, column: 23, scope: !154)
!160 = !DILocation(line: 70, column: 24, scope: !161)
!161 = distinct !DILexicalBlock(scope: !157, file: !15, line: 68, column: 47)
!162 = !DILocation(line: 70, column: 27, scope: !161)
!163 = !DILocation(line: 70, column: 29, scope: !161)
!164 = !DILocation(line: 70, column: 28, scope: !161)
!165 = !DILocation(line: 70, column: 32, scope: !161)
!166 = !DILocation(line: 70, column: 31, scope: !161)
!167 = !DILocation(line: 70, column: 37, scope: !161)
!168 = !DILocation(line: 70, column: 40, scope: !161)
!169 = !DILocation(line: 70, column: 42, scope: !161)
!170 = !DILocation(line: 70, column: 41, scope: !161)
!171 = !DILocation(line: 70, column: 45, scope: !161)
!172 = !DILocation(line: 70, column: 44, scope: !161)
!173 = !DILocation(line: 70, column: 35, scope: !161)
!174 = !DILocation(line: 70, column: 10, scope: !161)
!175 = !DILocation(line: 70, column: 13, scope: !161)
!176 = !DILocation(line: 70, column: 15, scope: !161)
!177 = !DILocation(line: 70, column: 14, scope: !161)
!178 = !DILocation(line: 70, column: 18, scope: !161)
!179 = !DILocation(line: 70, column: 17, scope: !161)
!180 = !DILocation(line: 70, column: 21, scope: !161)
!181 = !DILocation(line: 71, column: 9, scope: !161)
!182 = !DILocation(line: 68, column: 43, scope: !157)
!183 = !DILocation(line: 68, column: 23, scope: !157)
!184 = distinct !{!184, !159, !185, !186}
!185 = !DILocation(line: 71, column: 9, scope: !154)
!186 = !{!"llvm.loop.name", !"VITIS_LOOP_68_3"}
!187 = !DILocation(line: 72, column: 5, scope: !145)
!188 = !DILocation(line: 65, column: 43, scope: !140)
!189 = !{i1 false, !190, i1 false, i1 true}
!190 = !{double 1.000000e+00, double 2.000000e+00}
!191 = !DILocation(line: 65, column: 22, scope: !140)
!192 = distinct !{!192, !143, !193, !194}
!193 = !DILocation(line: 72, column: 5, scope: !136)
!194 = !{!"llvm.loop.name", !"VITIS_LOOP_65_2"}
!195 = !DILocation(line: 73, column: 4, scope: !137)
!196 = !DILocation(line: 63, column: 41, scope: !128)
!197 = !DILocation(line: 63, column: 20, scope: !128)
!198 = distinct !{!198, !133, !199, !200}
!199 = !DILocation(line: 73, column: 4, scope: !125)
!200 = !{!"llvm.loop.name", !"VITIS_LOOP_63_1"}
!201 = !DILocation(line: 75, column: 27, scope: !202)
!202 = distinct !DILexicalBlock(scope: !14, file: !15, line: 75, column: 20)
!203 = !DILocation(line: 75, column: 25, scope: !202)
!204 = !DILocation(line: 75, column: 32, scope: !205)
!205 = distinct !DILexicalBlock(scope: !202, file: !15, line: 75, column: 20)
!206 = !DILocation(line: 75, column: 36, scope: !205)
!207 = !DILocation(line: 75, column: 34, scope: !205)
!208 = !DILocation(line: 75, column: 20, scope: !202)
!209 = !DILocation(line: 75, column: 44, scope: !205)
!210 = !DILocation(line: 77, column: 29, scope: !211)
!211 = distinct !DILexicalBlock(scope: !212, file: !15, line: 77, column: 22)
!212 = distinct !DILexicalBlock(scope: !205, file: !15, line: 75, column: 44)
!213 = !DILocation(line: 77, column: 27, scope: !211)
!214 = !DILocation(line: 77, column: 34, scope: !215)
!215 = distinct !DILexicalBlock(scope: !211, file: !15, line: 77, column: 22)
!216 = !DILocation(line: 77, column: 38, scope: !215)
!217 = !DILocation(line: 77, column: 36, scope: !215)
!218 = !DILocation(line: 77, column: 22, scope: !211)
!219 = !DILocation(line: 79, column: 6, scope: !220)
!220 = distinct !DILexicalBlock(scope: !215, file: !15, line: 77, column: 46)
!221 = !DILocation(line: 79, column: 9, scope: !220)
!222 = !DILocation(line: 79, column: 11, scope: !220)
!223 = !DILocation(line: 79, column: 10, scope: !220)
!224 = !{i1 false, !225, i1 false, i1 true}
!225 = !{double 0.000000e+00, double 3.200000e+01}
!226 = !DILocation(line: 79, column: 14, scope: !220)
!227 = !DILocation(line: 79, column: 13, scope: !220)
!228 = !{i1 false, !229, i1 false, i1 true}
!229 = !{double 0.000000e+00, double 3.400000e+01}
!230 = !DILocation(line: 79, column: 17, scope: !220)
!231 = !DILocation(line: 80, column: 30, scope: !232)
!232 = distinct !DILexicalBlock(scope: !220, file: !15, line: 80, column: 23)
!233 = !DILocation(line: 80, column: 28, scope: !232)
!234 = !DILocation(line: 80, column: 35, scope: !235)
!235 = distinct !DILexicalBlock(scope: !232, file: !15, line: 80, column: 23)
!236 = !DILocation(line: 80, column: 37, scope: !235)
!237 = !DILocation(line: 80, column: 23, scope: !232)
!238 = !DILocation(line: 82, column: 24, scope: !239)
!239 = distinct !DILexicalBlock(scope: !235, file: !15, line: 80, column: 47)
!240 = !DILocation(line: 82, column: 27, scope: !239)
!241 = !DILocation(line: 82, column: 29, scope: !239)
!242 = !DILocation(line: 82, column: 28, scope: !239)
!243 = !DILocation(line: 82, column: 32, scope: !239)
!244 = !DILocation(line: 82, column: 31, scope: !239)
!245 = !{i1 false, !246, i1 false, i1 true}
!246 = !{double 0.000000e+00, double 3.300000e+01}
!247 = !DILocation(line: 82, column: 37, scope: !239)
!248 = !DILocation(line: 82, column: 40, scope: !239)
!249 = !DILocation(line: 82, column: 42, scope: !239)
!250 = !DILocation(line: 82, column: 41, scope: !239)
!251 = !{i1 false, !252, i1 false, i1 true}
!252 = !{double 0.000000e+00, double 1.600000e+01}
!253 = !DILocation(line: 82, column: 45, scope: !239)
!254 = !DILocation(line: 82, column: 44, scope: !239)
!255 = !{i1 false, !256, i1 false, i1 true}
!256 = !{double 0.000000e+00, double 1.900000e+01}
!257 = !DILocation(line: 82, column: 35, scope: !239)
!258 = !DILocation(line: 82, column: 10, scope: !239)
!259 = !DILocation(line: 82, column: 13, scope: !239)
!260 = !DILocation(line: 82, column: 15, scope: !239)
!261 = !DILocation(line: 82, column: 14, scope: !239)
!262 = !DILocation(line: 82, column: 18, scope: !239)
!263 = !DILocation(line: 82, column: 17, scope: !239)
!264 = !{i1 false, !265, i1 false, i1 true}
!265 = !{double 0.000000e+00, double 3.500000e+01}
!266 = !DILocation(line: 82, column: 21, scope: !239)
!267 = !DILocation(line: 83, column: 9, scope: !239)
!268 = !DILocation(line: 80, column: 43, scope: !235)
!269 = !DILocation(line: 80, column: 23, scope: !235)
!270 = distinct !{!270, !237, !271, !272}
!271 = !DILocation(line: 83, column: 9, scope: !232)
!272 = !{!"llvm.loop.name", !"VITIS_LOOP_80_6"}
!273 = !DILocation(line: 84, column: 5, scope: !220)
!274 = !DILocation(line: 77, column: 43, scope: !215)
!275 = !{i1 false, !276, i1 false, i1 true}
!276 = !{double 1.000000e+00, double 3.000000e+00}
!277 = !DILocation(line: 77, column: 22, scope: !215)
!278 = distinct !{!278, !218, !279, !280}
!279 = !DILocation(line: 84, column: 5, scope: !211)
!280 = !{!"llvm.loop.name", !"VITIS_LOOP_77_5"}
!281 = !DILocation(line: 85, column: 4, scope: !212)
!282 = !DILocation(line: 75, column: 41, scope: !205)
!283 = !DILocation(line: 75, column: 20, scope: !205)
!284 = distinct !{!284, !208, !285, !286}
!285 = !DILocation(line: 85, column: 4, scope: !202)
!286 = !{!"llvm.loop.name", !"VITIS_LOOP_75_4"}
!287 = !DILocation(line: 88, column: 27, scope: !288)
!288 = distinct !DILexicalBlock(scope: !14, file: !15, line: 88, column: 20)
!289 = !DILocation(line: 88, column: 25, scope: !288)
!290 = !DILocation(line: 88, column: 32, scope: !291)
!291 = distinct !DILexicalBlock(scope: !288, file: !15, line: 88, column: 20)
!292 = !DILocation(line: 88, column: 34, scope: !291)
!293 = !DILocation(line: 88, column: 20, scope: !288)
!294 = !DILocation(line: 88, column: 44, scope: !291)
!295 = !DILocation(line: 90, column: 29, scope: !296)
!296 = distinct !DILexicalBlock(scope: !297, file: !15, line: 90, column: 22)
!297 = distinct !DILexicalBlock(scope: !291, file: !15, line: 88, column: 44)
!298 = !DILocation(line: 90, column: 27, scope: !296)
!299 = !DILocation(line: 90, column: 34, scope: !300)
!300 = distinct !DILexicalBlock(scope: !296, file: !15, line: 90, column: 22)
!301 = !DILocation(line: 90, column: 36, scope: !300)
!302 = !DILocation(line: 90, column: 22, scope: !296)
!303 = !DILocation(line: 92, column: 6, scope: !304)
!304 = distinct !DILexicalBlock(scope: !300, file: !15, line: 90, column: 46)
!305 = !DILocation(line: 92, column: 9, scope: !304)
!306 = !DILocation(line: 92, column: 11, scope: !304)
!307 = !DILocation(line: 92, column: 10, scope: !304)
!308 = !{i1 false, !309, i1 false, i1 true}
!309 = !{double 0.000000e+00, double 4.800000e+01}
!310 = !DILocation(line: 92, column: 14, scope: !304)
!311 = !DILocation(line: 92, column: 13, scope: !304)
!312 = !{i1 false, !313, i1 false, i1 true}
!313 = !{double 0.000000e+00, double 5.100000e+01}
!314 = !DILocation(line: 92, column: 17, scope: !304)
!315 = !DILocation(line: 93, column: 30, scope: !316)
!316 = distinct !DILexicalBlock(scope: !304, file: !15, line: 93, column: 23)
!317 = !DILocation(line: 93, column: 28, scope: !316)
!318 = !DILocation(line: 93, column: 35, scope: !319)
!319 = distinct !DILexicalBlock(scope: !316, file: !15, line: 93, column: 23)
!320 = !DILocation(line: 93, column: 37, scope: !319)
!321 = !DILocation(line: 93, column: 23, scope: !316)
!322 = !DILocation(line: 95, column: 24, scope: !323)
!323 = distinct !DILexicalBlock(scope: !319, file: !15, line: 93, column: 47)
!324 = !DILocation(line: 95, column: 27, scope: !323)
!325 = !DILocation(line: 95, column: 29, scope: !323)
!326 = !DILocation(line: 95, column: 28, scope: !323)
!327 = !DILocation(line: 95, column: 32, scope: !323)
!328 = !DILocation(line: 95, column: 31, scope: !323)
!329 = !{i1 false, !330, i1 false, i1 true}
!330 = !{double 0.000000e+00, double 5.000000e+01}
!331 = !DILocation(line: 95, column: 37, scope: !323)
!332 = !DILocation(line: 95, column: 40, scope: !323)
!333 = !DILocation(line: 95, column: 42, scope: !323)
!334 = !DILocation(line: 95, column: 41, scope: !323)
!335 = !DILocation(line: 95, column: 45, scope: !323)
!336 = !DILocation(line: 95, column: 44, scope: !323)
!337 = !{i1 false, !338, i1 false, i1 true}
!338 = !{double 0.000000e+00, double 3.600000e+01}
!339 = !DILocation(line: 95, column: 35, scope: !323)
!340 = !DILocation(line: 95, column: 10, scope: !323)
!341 = !DILocation(line: 95, column: 13, scope: !323)
!342 = !DILocation(line: 95, column: 15, scope: !323)
!343 = !DILocation(line: 95, column: 14, scope: !323)
!344 = !DILocation(line: 95, column: 18, scope: !323)
!345 = !DILocation(line: 95, column: 17, scope: !323)
!346 = !{i1 false, !347, i1 false, i1 true}
!347 = !{double 0.000000e+00, double 5.200000e+01}
!348 = !DILocation(line: 95, column: 21, scope: !323)
!349 = !DILocation(line: 96, column: 9, scope: !323)
!350 = !DILocation(line: 93, column: 43, scope: !319)
!351 = !DILocation(line: 93, column: 23, scope: !319)
!352 = distinct !{!352, !321, !353, !354}
!353 = !DILocation(line: 96, column: 9, scope: !316)
!354 = !{!"llvm.loop.name", !"VITIS_LOOP_93_9"}
!355 = !DILocation(line: 97, column: 5, scope: !304)
!356 = !DILocation(line: 90, column: 43, scope: !300)
!357 = !{i1 false, !358, i1 false, i1 true}
!358 = !{double 1.000000e+00, double 4.000000e+00}
!359 = !DILocation(line: 90, column: 22, scope: !300)
!360 = distinct !{!360, !302, !361, !362}
!361 = !DILocation(line: 97, column: 5, scope: !296)
!362 = !{!"llvm.loop.name", !"VITIS_LOOP_90_8"}
!363 = !DILocation(line: 98, column: 3, scope: !297)
!364 = !DILocation(line: 88, column: 41, scope: !291)
!365 = !DILocation(line: 88, column: 20, scope: !291)
!366 = distinct !{!366, !293, !367, !368}
!367 = !DILocation(line: 98, column: 3, scope: !288)
!368 = !{!"llvm.loop.name", !"VITIS_LOOP_88_7"}
!369 = !DILocation(line: 99, column: 1, scope: !14)
!370 = !{i1 false, !371, i1 false, i1 true}
!371 = !{double 0.000000e+00, double 2.000000e+00}
!372 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!373 = !{i32 0, i1 false, i32 0, i1 false}
!374 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
