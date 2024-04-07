; ModuleID = '/home/bruno/Desktop/benchmarks/syr2k/intermediate/output.3.magiclangtmp.ll'
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
  %alphas = alloca float, align 4, !taffo.info !29
  %betas = alloca float, align 4, !taffo.info !29
  %As = alloca float*, align 8, !taffo.info !32, !taffo.target !35
  %Bs = alloca float*, align 8, !taffo.info !32, !taffo.target !36
  %Cs = alloca float*, align 8, !taffo.info !32, !taffo.target !37
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
  %2 = bitcast float* %alphas to i8*, !dbg !62, !taffo.info !63
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !62, !taffo.info !64
  call void @llvm.dbg.declare(metadata float* %alphas, metadata !65, metadata !DIExpression()), !dbg !66
  %alphas1 = bitcast float* %alphas to i8*, !dbg !62, !taffo.info !63
  %3 = load float, float* %alpha.addr, align 4, !dbg !67
  store float %3, float* %alphas, align 4, !dbg !68, !taffo.info !64
  %4 = bitcast float* %betas to i8*, !dbg !69, !taffo.info !63
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !69, !taffo.info !64
  call void @llvm.dbg.declare(metadata float* %betas, metadata !70, metadata !DIExpression()), !dbg !71
  %betas2 = bitcast float* %betas to i8*, !dbg !69, !taffo.info !63
  %5 = load float, float* %beta.addr, align 4, !dbg !72
  store float %5, float* %betas, align 4, !dbg !73, !taffo.info !64
  %6 = bitcast float** %As to i8*, !dbg !74, !taffo.info !75, !taffo.target !35
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %6) #4, !dbg !74, !taffo.info !64, !taffo.target !35
  call void @llvm.dbg.declare(metadata float** %As, metadata !76, metadata !DIExpression()), !dbg !77
  %As3 = bitcast float** %As to i8*, !dbg !74, !taffo.info !75, !taffo.target !35
  %7 = load float*, float** %A.addr, align 8, !dbg !78
  store float* %7, float** %As, align 8, !dbg !79, !taffo.info !64, !taffo.target !35
  %8 = bitcast float** %Bs to i8*, !dbg !80, !taffo.info !75, !taffo.target !36
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %8) #4, !dbg !80, !taffo.info !64, !taffo.target !36
  call void @llvm.dbg.declare(metadata float** %Bs, metadata !81, metadata !DIExpression()), !dbg !82
  %Bs4 = bitcast float** %Bs to i8*, !dbg !80, !taffo.info !75, !taffo.target !36
  %9 = load float*, float** %B.addr, align 8, !dbg !83
  store float* %9, float** %Bs, align 8, !dbg !84, !taffo.info !64, !taffo.target !36
  %10 = bitcast float** %Cs to i8*, !dbg !85, !taffo.info !75, !taffo.target !37
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %10) #4, !dbg !85, !taffo.info !64, !taffo.target !37
  call void @llvm.dbg.declare(metadata float** %Cs, metadata !86, metadata !DIExpression()), !dbg !87
  %Cs5 = bitcast float** %Cs to i8*, !dbg !85, !taffo.info !75, !taffo.target !37
  %11 = load float*, float** %C.addr, align 8, !dbg !88, !taffo.info !1
  store float* %11, float** %Cs, align 8, !dbg !89, !taffo.info !64, !taffo.target !37
  %12 = bitcast i32* %i to i8*, !dbg !90, !taffo.info !64
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #4, !dbg !90, !taffo.info !64
  call void @llvm.dbg.declare(metadata i32* %i, metadata !91, metadata !DIExpression()), !dbg !92
  %i6 = bitcast i32* %i to i8*, !dbg !90, !taffo.info !64
  %13 = bitcast i32* %j to i8*, !dbg !93, !taffo.info !64
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #4, !dbg !93, !taffo.info !64
  call void @llvm.dbg.declare(metadata i32* %j, metadata !94, metadata !DIExpression()), !dbg !95
  %j7 = bitcast i32* %j to i8*, !dbg !93, !taffo.info !64
  %14 = bitcast i32* %k to i8*, !dbg !96, !taffo.info !64
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #4, !dbg !96, !taffo.info !64
  call void @llvm.dbg.declare(metadata i32* %k, metadata !97, metadata !DIExpression()), !dbg !98
  %k8 = bitcast i32* %k to i8*, !dbg !96, !taffo.info !64
  br label %VITIS_LOOP_46_1, !dbg !96

VITIS_LOOP_46_1:                                  ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !99, !taffo.info !64
  br label %for.cond, !dbg !101

for.cond:                                         ; preds = %for.inc51, %VITIS_LOOP_46_1
  %15 = load i32, i32* %i, align 4, !dbg !102, !taffo.info !38
  %cmp = icmp slt i32 %15, 16, !dbg !104, !taffo.info !105
  br i1 %cmp, label %for.body, label %for.end53, !dbg !107, !taffo.info !64

for.body:                                         ; preds = %for.cond
  br label %VITIS_LOOP_48_2, !dbg !108

VITIS_LOOP_48_2:                                  ; preds = %for.body
  store i32 0, i32* %j, align 4, !dbg !109, !taffo.info !64
  br label %for.cond9, !dbg !112

for.cond9:                                        ; preds = %for.inc, %VITIS_LOOP_48_2
  %16 = load i32, i32* %j, align 4, !dbg !113, !taffo.info !40
  %17 = load i32, i32* %i, align 4, !dbg !115, !taffo.info !38
  %cmp10 = icmp sle i32 %16, %17, !dbg !116, !taffo.info !38
  br i1 %cmp10, label %for.body11, label %for.end, !dbg !117, !taffo.info !64

for.body11:                                       ; preds = %for.cond9
  %18 = load float, float* %betas, align 4, !dbg !118, !taffo.info !29
  %19 = load float*, float** %Cs, align 8, !dbg !120, !taffo.info !32, !taffo.target !37
  %20 = load i32, i32* %i, align 4, !dbg !121, !taffo.info !38
  %21 = load i32, i32* %n, align 4, !dbg !122, !taffo.info !27
  %mul = mul nsw i32 %20, %21, !dbg !123, !taffo.info !124
  %22 = load i32, i32* %j, align 4, !dbg !125, !taffo.info !40
  %add = add nsw i32 %mul, %22, !dbg !126, !taffo.info !124
  %idxprom = sext i32 %add to i64, !dbg !120, !taffo.info !124
  %arrayidx = getelementptr inbounds float, float* %19, i64 %idxprom, !dbg !120, !taffo.info !32, !taffo.target !37
  %23 = load float, float* %arrayidx, align 4, !dbg !127, !taffo.info !32, !taffo.target !37
  %mul12 = fmul float %23, %18, !dbg !127, !taffo.info !128
  store float %mul12, float* %arrayidx, align 4, !dbg !127, !taffo.info !64
  br label %for.inc, !dbg !130

for.inc:                                          ; preds = %for.body11
  %24 = load i32, i32* %j, align 4, !dbg !131, !taffo.info !40
  %inc = add nsw i32 %24, 1, !dbg !131, !taffo.info !105
  store i32 %inc, i32* %j, align 4, !dbg !131, !taffo.info !64
  br label %for.cond9, !dbg !132, !llvm.loop !133

for.end:                                          ; preds = %for.cond9
  br label %VITIS_LOOP_52_3, !dbg !134

VITIS_LOOP_52_3:                                  ; preds = %for.end
  store i32 0, i32* %k, align 4, !dbg !138, !taffo.info !64
  br label %for.cond13, !dbg !140

for.cond13:                                       ; preds = %for.inc48, %VITIS_LOOP_52_3
  %25 = load i32, i32* %k, align 4, !dbg !141, !taffo.info !38
  %cmp14 = icmp slt i32 %25, 16, !dbg !143, !taffo.info !105
  br i1 %cmp14, label %for.body15, label %for.end50, !dbg !144, !taffo.info !64

for.body15:                                       ; preds = %for.cond13
  br label %VITIS_LOOP_54_4, !dbg !145

VITIS_LOOP_54_4:                                  ; preds = %for.body15
  store i32 0, i32* %j, align 4, !dbg !146, !taffo.info !64
  br label %for.cond16, !dbg !149

for.cond16:                                       ; preds = %for.inc45, %VITIS_LOOP_54_4
  %26 = load i32, i32* %j, align 4, !dbg !150, !taffo.info !40
  %27 = load i32, i32* %i, align 4, !dbg !152, !taffo.info !38
  %cmp17 = icmp sle i32 %26, %27, !dbg !153, !taffo.info !38
  br i1 %cmp17, label %for.body18, label %for.end47, !dbg !154, !taffo.info !64

for.body18:                                       ; preds = %for.cond16
  %28 = load float*, float** %As, align 8, !dbg !155, !taffo.info !32, !taffo.target !35
  %29 = load i32, i32* %j, align 4, !dbg !157, !taffo.info !40
  %30 = load i32, i32* %m, align 4, !dbg !158, !taffo.info !27
  %mul19 = mul nsw i32 %29, %30, !dbg !159, !taffo.info !160
  %31 = load i32, i32* %k, align 4, !dbg !162, !taffo.info !38
  %add20 = add nsw i32 %mul19, %31, !dbg !163, !taffo.info !164
  %idxprom21 = sext i32 %add20 to i64, !dbg !155, !taffo.info !164
  %arrayidx22 = getelementptr inbounds float, float* %28, i64 %idxprom21, !dbg !155, !taffo.info !32, !taffo.target !35
  %32 = load float, float* %arrayidx22, align 4, !dbg !155, !taffo.info !32, !taffo.target !35
  %33 = load float, float* %alphas, align 4, !dbg !166, !taffo.info !29
  %mul23 = fmul float %32, %33, !dbg !167, !taffo.info !128
  %34 = load float*, float** %Bs, align 8, !dbg !168, !taffo.info !32, !taffo.target !36
  %35 = load i32, i32* %i, align 4, !dbg !169, !taffo.info !38
  %36 = load i32, i32* %m, align 4, !dbg !170, !taffo.info !27
  %mul24 = mul nsw i32 %35, %36, !dbg !171, !taffo.info !160
  %37 = load i32, i32* %k, align 4, !dbg !172, !taffo.info !38
  %add25 = add nsw i32 %mul24, %37, !dbg !173, !taffo.info !164
  %idxprom26 = sext i32 %add25 to i64, !dbg !168, !taffo.info !164
  %arrayidx27 = getelementptr inbounds float, float* %34, i64 %idxprom26, !dbg !168, !taffo.info !32, !taffo.target !36
  %38 = load float, float* %arrayidx27, align 4, !dbg !168, !taffo.info !32, !taffo.target !36
  %mul28 = fmul float %mul23, %38, !dbg !174, !taffo.info !128
  %39 = load float*, float** %Bs, align 8, !dbg !175, !taffo.info !32, !taffo.target !36
  %40 = load i32, i32* %j, align 4, !dbg !176, !taffo.info !40
  %41 = load i32, i32* %m, align 4, !dbg !177, !taffo.info !27
  %mul29 = mul nsw i32 %40, %41, !dbg !178, !taffo.info !160
  %42 = load i32, i32* %k, align 4, !dbg !179, !taffo.info !38
  %add30 = add nsw i32 %mul29, %42, !dbg !180, !taffo.info !164
  %idxprom31 = sext i32 %add30 to i64, !dbg !175, !taffo.info !164
  %arrayidx32 = getelementptr inbounds float, float* %39, i64 %idxprom31, !dbg !175, !taffo.info !32, !taffo.target !36
  %43 = load float, float* %arrayidx32, align 4, !dbg !175, !taffo.info !32, !taffo.target !36
  %44 = load float, float* %alphas, align 4, !dbg !181, !taffo.info !29
  %mul33 = fmul float %43, %44, !dbg !182, !taffo.info !128
  %45 = load float*, float** %As, align 8, !dbg !183, !taffo.info !32, !taffo.target !35
  %46 = load i32, i32* %i, align 4, !dbg !184, !taffo.info !38
  %47 = load i32, i32* %m, align 4, !dbg !185, !taffo.info !27
  %mul34 = mul nsw i32 %46, %47, !dbg !186, !taffo.info !160
  %48 = load i32, i32* %k, align 4, !dbg !187, !taffo.info !38
  %add35 = add nsw i32 %mul34, %48, !dbg !188, !taffo.info !164
  %idxprom36 = sext i32 %add35 to i64, !dbg !183, !taffo.info !164
  %arrayidx37 = getelementptr inbounds float, float* %45, i64 %idxprom36, !dbg !183, !taffo.info !32, !taffo.target !35
  %49 = load float, float* %arrayidx37, align 4, !dbg !183, !taffo.info !32, !taffo.target !35
  %mul38 = fmul float %mul33, %49, !dbg !189, !taffo.info !128
  %add39 = fadd float %mul28, %mul38, !dbg !190, !taffo.info !128
  %50 = load float*, float** %Cs, align 8, !dbg !191, !taffo.info !32, !taffo.target !37
  %51 = load i32, i32* %i, align 4, !dbg !192, !taffo.info !38
  %52 = load i32, i32* %n, align 4, !dbg !193, !taffo.info !27
  %mul40 = mul nsw i32 %51, %52, !dbg !194, !taffo.info !160
  %53 = load i32, i32* %j, align 4, !dbg !195, !taffo.info !40
  %add41 = add nsw i32 %mul40, %53, !dbg !196, !taffo.info !164
  %idxprom42 = sext i32 %add41 to i64, !dbg !191, !taffo.info !164
  %arrayidx43 = getelementptr inbounds float, float* %50, i64 %idxprom42, !dbg !191, !taffo.info !32, !taffo.target !37
  %54 = load float, float* %arrayidx43, align 4, !dbg !197, !taffo.info !32, !taffo.target !37
  %add44 = fadd float %54, %add39, !dbg !197, !taffo.info !128, !taffo.target !37
  store float %add44, float* %arrayidx43, align 4, !dbg !197, !taffo.info !64, !taffo.target !37
  br label %for.inc45, !dbg !198

for.inc45:                                        ; preds = %for.body18
  %55 = load i32, i32* %j, align 4, !dbg !199, !taffo.info !40
  %inc46 = add nsw i32 %55, 1, !dbg !199, !taffo.info !200
  store i32 %inc46, i32* %j, align 4, !dbg !199, !taffo.info !64
  br label %for.cond16, !dbg !202, !llvm.loop !203

for.end47:                                        ; preds = %for.cond16
  br label %for.inc48, !dbg !208

for.inc48:                                        ; preds = %for.end47
  %56 = load i32, i32* %k, align 4, !dbg !209, !taffo.info !38
  %inc49 = add nsw i32 %56, 1, !dbg !209, !taffo.info !105
  store i32 %inc49, i32* %k, align 4, !dbg !209, !taffo.info !64
  br label %for.cond13, !dbg !210, !llvm.loop !211

for.end50:                                        ; preds = %for.cond13
  br label %for.inc51, !dbg !216

for.inc51:                                        ; preds = %for.end50
  %57 = load i32, i32* %i, align 4, !dbg !217, !taffo.info !38
  %inc52 = add nsw i32 %57, 1, !dbg !217, !taffo.info !105
  store i32 %inc52, i32* %i, align 4, !dbg !217, !taffo.info !64
  br label %for.cond, !dbg !218, !llvm.loop !219

for.end53:                                        ; preds = %for.cond
  %58 = bitcast i32* %k to i8*, !dbg !224, !taffo.info !124
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %58) #4, !dbg !224, !taffo.info !64
  %59 = bitcast i32* %j to i8*, !dbg !224, !taffo.info !38
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %59) #4, !dbg !224, !taffo.info !64
  %60 = bitcast i32* %i to i8*, !dbg !224, !taffo.info !38
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %60) #4, !dbg !224, !taffo.info !64
  %61 = bitcast float** %Cs to i8*, !dbg !224, !taffo.info !75, !taffo.target !37
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %61) #4, !dbg !224, !taffo.info !64, !taffo.target !37
  %62 = bitcast float** %Bs to i8*, !dbg !224, !taffo.info !75, !taffo.target !36
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %62) #4, !dbg !224, !taffo.info !64, !taffo.target !36
  %63 = bitcast float** %As to i8*, !dbg !224, !taffo.info !75, !taffo.target !35
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %63) #4, !dbg !224, !taffo.info !64, !taffo.target !35
  %64 = bitcast float* %betas to i8*, !dbg !224, !taffo.info !63
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %64) #4, !dbg !224, !taffo.info !64
  %65 = bitcast float* %alphas to i8*, !dbg !224, !taffo.info !63
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %65) #4, !dbg !224, !taffo.info !64
  %66 = bitcast i32* %m to i8*, !dbg !224, !taffo.info !27
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %66) #4, !dbg !224
  %67 = bitcast i32* %n to i8*, !dbg !224, !taffo.info !27
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %67) #4, !dbg !224
  ret void, !dbg !224
}

; Function Attrs: nounwind readnone speculatable
declare !taffo.funinfo !225 void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: inaccessiblememonly nounwind
declare !taffo.funinfo !11 void @llvm.sideeffect() #2

; Function Attrs: argmemonly nounwind
declare !taffo.funinfo !226 void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare !taffo.funinfo !227 void @llvm.var.annotation(i8*, i8*, i8*, i32) #4

; Function Attrs: argmemonly nounwind
declare !taffo.funinfo !226 void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #3

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
!14 = !{i32 2, !"Debug Info Version", i32 3}
!15 = !{i32 1, !"wchar_size", i32 4}
!16 = distinct !DISubprogram(name: "syr2k", scope: !17, file: !17, line: 20, type: !18, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !11)
!17 = !DIFile(filename: "syr2k_taffo.c", directory: "/home/bruno/Desktop/benchmarks/syr2k")
!18 = !DISubroutineType(types: !19)
!19 = !{null, !20, !20, !20, !21, !21}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!22 = !{!23}
!23 = !{!"fpga.top", !"user", !24}
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
!128 = !{!129, !2, i1 false, i1 true}
!129 = !{!"fixp", i32 32, i32 32}
!130 = !DILocation(line: 51, column: 5, scope: !119)
!131 = !DILocation(line: 48, column: 40, scope: !114)
!132 = !DILocation(line: 48, column: 19, scope: !114)
!133 = distinct !{!133, !117, !134, !135, !137}
!134 = !DILocation(line: 51, column: 5, scope: !110)
!135 = !{!"llvm.loop.pipeline.enable", i32 1, i1 false, i8 -1, !"user", !136}
!136 = !DILocation(line: 49, column: 9, scope: !110)
!137 = !{!"llvm.loop.name", !"VITIS_LOOP_48_2"}
!138 = !DILocation(line: 52, column: 29, scope: !139)
!139 = distinct !DILexicalBlock(scope: !111, file: !17, line: 52, column: 22)
!140 = !DILocation(line: 52, column: 27, scope: !139)
!141 = !DILocation(line: 52, column: 34, scope: !142)
!142 = distinct !DILexicalBlock(scope: !139, file: !17, line: 52, column: 22)
!143 = !DILocation(line: 52, column: 36, scope: !142)
!144 = !DILocation(line: 52, column: 22, scope: !139)
!145 = !DILocation(line: 52, column: 46, scope: !142)
!146 = !DILocation(line: 54, column: 26, scope: !147)
!147 = distinct !DILexicalBlock(scope: !148, file: !17, line: 54, column: 19)
!148 = distinct !DILexicalBlock(scope: !142, file: !17, line: 52, column: 46)
!149 = !DILocation(line: 54, column: 24, scope: !147)
!150 = !DILocation(line: 54, column: 31, scope: !151)
!151 = distinct !DILexicalBlock(scope: !147, file: !17, line: 54, column: 19)
!152 = !DILocation(line: 54, column: 36, scope: !151)
!153 = !DILocation(line: 54, column: 33, scope: !151)
!154 = !DILocation(line: 54, column: 19, scope: !147)
!155 = !DILocation(line: 57, column: 15, scope: !156)
!156 = distinct !DILexicalBlock(scope: !151, file: !17, line: 55, column: 2)
!157 = !DILocation(line: 57, column: 18, scope: !156)
!158 = !DILocation(line: 57, column: 20, scope: !156)
!159 = !DILocation(line: 57, column: 19, scope: !156)
!160 = !{i1 false, !161, i1 false, i1 true}
!161 = !{double 0.000000e+00, double 1.600000e+01}
!162 = !DILocation(line: 57, column: 22, scope: !156)
!163 = !DILocation(line: 57, column: 21, scope: !156)
!164 = !{i1 false, !165, i1 false, i1 true}
!165 = !{double 0.000000e+00, double 1.700000e+01}
!166 = !DILocation(line: 57, column: 25, scope: !156)
!167 = !DILocation(line: 57, column: 24, scope: !156)
!168 = !DILocation(line: 57, column: 32, scope: !156)
!169 = !DILocation(line: 57, column: 35, scope: !156)
!170 = !DILocation(line: 57, column: 37, scope: !156)
!171 = !DILocation(line: 57, column: 36, scope: !156)
!172 = !DILocation(line: 57, column: 39, scope: !156)
!173 = !DILocation(line: 57, column: 38, scope: !156)
!174 = !DILocation(line: 57, column: 31, scope: !156)
!175 = !DILocation(line: 57, column: 44, scope: !156)
!176 = !DILocation(line: 57, column: 47, scope: !156)
!177 = !DILocation(line: 57, column: 49, scope: !156)
!178 = !DILocation(line: 57, column: 48, scope: !156)
!179 = !DILocation(line: 57, column: 51, scope: !156)
!180 = !DILocation(line: 57, column: 50, scope: !156)
!181 = !DILocation(line: 57, column: 54, scope: !156)
!182 = !DILocation(line: 57, column: 53, scope: !156)
!183 = !DILocation(line: 57, column: 61, scope: !156)
!184 = !DILocation(line: 57, column: 64, scope: !156)
!185 = !DILocation(line: 57, column: 66, scope: !156)
!186 = !DILocation(line: 57, column: 65, scope: !156)
!187 = !DILocation(line: 57, column: 68, scope: !156)
!188 = !DILocation(line: 57, column: 67, scope: !156)
!189 = !DILocation(line: 57, column: 60, scope: !156)
!190 = !DILocation(line: 57, column: 42, scope: !156)
!191 = !DILocation(line: 57, column: 2, scope: !156)
!192 = !DILocation(line: 57, column: 5, scope: !156)
!193 = !DILocation(line: 57, column: 7, scope: !156)
!194 = !DILocation(line: 57, column: 6, scope: !156)
!195 = !DILocation(line: 57, column: 9, scope: !156)
!196 = !DILocation(line: 57, column: 8, scope: !156)
!197 = !DILocation(line: 57, column: 12, scope: !156)
!198 = !DILocation(line: 58, column: 2, scope: !156)
!199 = !DILocation(line: 54, column: 40, scope: !151)
!200 = !{i1 false, !201, i1 false, i1 true}
!201 = !{double 1.000000e+00, double 2.000000e+00}
!202 = !DILocation(line: 54, column: 19, scope: !151)
!203 = distinct !{!203, !154, !204, !205, !207}
!204 = !DILocation(line: 58, column: 2, scope: !147)
!205 = !{!"llvm.loop.pipeline.enable", i32 1, i1 false, i8 -1, !"user", !206}
!206 = !DILocation(line: 56, column: 9, scope: !147)
!207 = !{!"llvm.loop.name", !"VITIS_LOOP_54_4"}
!208 = !DILocation(line: 59, column: 5, scope: !148)
!209 = !DILocation(line: 52, column: 43, scope: !142)
!210 = !DILocation(line: 52, column: 22, scope: !142)
!211 = distinct !{!211, !144, !212, !213, !215}
!212 = !DILocation(line: 59, column: 5, scope: !139)
!213 = !{!"llvm.loop.pipeline.enable", i32 1, i1 false, i8 -1, !"user", !214}
!214 = !DILocation(line: 53, column: 9, scope: !139)
!215 = !{!"llvm.loop.name", !"VITIS_LOOP_52_3"}
!216 = !DILocation(line: 60, column: 3, scope: !111)
!217 = !DILocation(line: 46, column: 41, scope: !103)
!218 = !DILocation(line: 46, column: 20, scope: !103)
!219 = distinct !{!219, !107, !220, !221, !223}
!220 = !DILocation(line: 60, column: 3, scope: !100)
!221 = !{!"llvm.loop.unroll.count", i32 4, !"user", !222}
!222 = !DILocation(line: 47, column: 9, scope: !100)
!223 = !{!"llvm.loop.name", !"VITIS_LOOP_46_1"}
!224 = !DILocation(line: 64, column: 1, scope: !16)
!225 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!226 = !{i32 0, i1 false, i32 0, i1 false}
!227 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
