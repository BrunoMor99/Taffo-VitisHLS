; ModuleID = '/home/bruno/Desktop/benchmarks/syr2k/intermediate/output.1.magiclangtmp.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.global_ctors = appending global [0 x { i32, void ()*, i8* }] zeroinitializer
@.str = private unnamed_addr constant [20 x i8] c"scalar(range(0, 5))\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [14 x i8] c"syr2k_taffo.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [41 x i8] c"target('A') scalar(range(-16384, 16384))\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [41 x i8] c"target('B') scalar(range(-16384, 16384))\00", section "llvm.metadata"
@.str.4 = private unnamed_addr constant [41 x i8] c"target('C') scalar(range(-16384, 16384))\00", section "llvm.metadata"
@.str.5 = private unnamed_addr constant [9 x i8] c"scalar()\00", section "llvm.metadata"

; Function Attrs: nounwind
define void @syr2k(float* %A, float* %B, float* %C, float %alpha, float %beta) #0 !dbg !7 !fpga.function.pragma !13 !taffo.start !16 !taffo.funinfo !17 {
entry:
  %A.addr = alloca float*, align 8
  %B.addr = alloca float*, align 8
  %C.addr = alloca float*, align 8
  %alpha.addr = alloca float, align 4
  %beta.addr = alloca float, align 4
  %n = alloca i32, align 4
  %m = alloca i32, align 4
  %alphas = alloca float, align 4, !taffo.info !18
  %betas = alloca float, align 4, !taffo.info !18
  %As = alloca float*, align 8, !taffo.info !20, !taffo.target !22
  %Bs = alloca float*, align 8, !taffo.info !20, !taffo.target !23
  %Cs = alloca float*, align 8, !taffo.info !20, !taffo.target !24
  %i = alloca i32, align 4, !taffo.info !25
  %j = alloca i32, align 4, !taffo.info !25
  %k = alloca i32, align 4, !taffo.info !25
  store float* %A, float** %A.addr, align 8
  call void @llvm.dbg.declare(metadata float** %A.addr, metadata !26, metadata !DIExpression()), !dbg !27
  store float* %B, float** %B.addr, align 8
  call void @llvm.dbg.declare(metadata float** %B.addr, metadata !28, metadata !DIExpression()), !dbg !29
  store float* %C, float** %C.addr, align 8
  call void @llvm.dbg.declare(metadata float** %C.addr, metadata !30, metadata !DIExpression()), !dbg !31
  store float %alpha, float* %alpha.addr, align 4
  call void @llvm.dbg.declare(metadata float* %alpha.addr, metadata !32, metadata !DIExpression()), !dbg !33
  store float %beta, float* %beta.addr, align 4
  call void @llvm.dbg.declare(metadata float* %beta.addr, metadata !34, metadata !DIExpression()), !dbg !35
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %A, [0 x i8] zeroinitializer, i64 256, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !36
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %B, [0 x i8] zeroinitializer, i64 256, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !37
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %C, [0 x i8] zeroinitializer, i64 256, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !38
  %0 = bitcast i32* %n to i8*, !dbg !39
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !39
  call void @llvm.dbg.declare(metadata i32* %n, metadata !40, metadata !DIExpression()), !dbg !42
  store i32 16, i32* %n, align 4, !dbg !42
  %1 = bitcast i32* %m to i8*, !dbg !43
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !43
  call void @llvm.dbg.declare(metadata i32* %m, metadata !44, metadata !DIExpression()), !dbg !45
  store i32 16, i32* %m, align 4, !dbg !45
  %2 = bitcast float* %alphas to i8*, !dbg !46, !taffo.info !25
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !46, !taffo.info !25
  call void @llvm.dbg.declare(metadata float* %alphas, metadata !47, metadata !DIExpression()), !dbg !48
  %alphas1 = bitcast float* %alphas to i8*, !dbg !46, !taffo.info !25
  %3 = load float, float* %alpha.addr, align 4, !dbg !49
  store float %3, float* %alphas, align 4, !dbg !50, !taffo.info !25
  %4 = bitcast float* %betas to i8*, !dbg !51, !taffo.info !25
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !51, !taffo.info !25
  call void @llvm.dbg.declare(metadata float* %betas, metadata !52, metadata !DIExpression()), !dbg !53
  %betas2 = bitcast float* %betas to i8*, !dbg !51, !taffo.info !25
  %5 = load float, float* %beta.addr, align 4, !dbg !54
  store float %5, float* %betas, align 4, !dbg !55, !taffo.info !25
  %6 = bitcast float** %As to i8*, !dbg !56, !taffo.info !25, !taffo.target !22
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %6) #4, !dbg !56, !taffo.info !25, !taffo.target !22
  call void @llvm.dbg.declare(metadata float** %As, metadata !57, metadata !DIExpression()), !dbg !58
  %As3 = bitcast float** %As to i8*, !dbg !56, !taffo.info !25, !taffo.target !22
  %7 = load float*, float** %A.addr, align 8, !dbg !59
  store float* %7, float** %As, align 8, !dbg !60, !taffo.info !25, !taffo.target !22
  %8 = bitcast float** %Bs to i8*, !dbg !61, !taffo.info !25, !taffo.target !23
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %8) #4, !dbg !61, !taffo.info !25, !taffo.target !23
  call void @llvm.dbg.declare(metadata float** %Bs, metadata !62, metadata !DIExpression()), !dbg !63
  %Bs4 = bitcast float** %Bs to i8*, !dbg !61, !taffo.info !25, !taffo.target !23
  %9 = load float*, float** %B.addr, align 8, !dbg !64
  store float* %9, float** %Bs, align 8, !dbg !65, !taffo.info !25, !taffo.target !23
  %10 = bitcast float** %Cs to i8*, !dbg !66, !taffo.info !25, !taffo.target !24
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %10) #4, !dbg !66, !taffo.info !25, !taffo.target !24
  call void @llvm.dbg.declare(metadata float** %Cs, metadata !67, metadata !DIExpression()), !dbg !68
  %Cs5 = bitcast float** %Cs to i8*, !dbg !66, !taffo.info !25, !taffo.target !24
  %11 = load float*, float** %C.addr, align 8, !dbg !69
  store float* %11, float** %Cs, align 8, !dbg !70, !taffo.info !25, !taffo.target !24
  %12 = bitcast i32* %i to i8*, !dbg !71, !taffo.info !25
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #4, !dbg !71, !taffo.info !25
  call void @llvm.dbg.declare(metadata i32* %i, metadata !72, metadata !DIExpression()), !dbg !73
  %i6 = bitcast i32* %i to i8*, !dbg !71, !taffo.info !25
  %13 = bitcast i32* %j to i8*, !dbg !74, !taffo.info !25
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #4, !dbg !74, !taffo.info !25
  call void @llvm.dbg.declare(metadata i32* %j, metadata !75, metadata !DIExpression()), !dbg !76
  %j7 = bitcast i32* %j to i8*, !dbg !74, !taffo.info !25
  %14 = bitcast i32* %k to i8*, !dbg !77, !taffo.info !25
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #4, !dbg !77, !taffo.info !25
  call void @llvm.dbg.declare(metadata i32* %k, metadata !78, metadata !DIExpression()), !dbg !79
  %k8 = bitcast i32* %k to i8*, !dbg !77, !taffo.info !25
  br label %VITIS_LOOP_46_1, !dbg !77

VITIS_LOOP_46_1:                                  ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !80, !taffo.info !25
  br label %for.cond, !dbg !82

for.cond:                                         ; preds = %for.inc51, %VITIS_LOOP_46_1
  %15 = load i32, i32* %i, align 4, !dbg !83, !taffo.info !25
  %cmp = icmp slt i32 %15, 16, !dbg !85, !taffo.info !25
  br i1 %cmp, label %for.body, label %for.end53, !dbg !86, !taffo.info !25

for.body:                                         ; preds = %for.cond
  br label %VITIS_LOOP_48_2, !dbg !87

VITIS_LOOP_48_2:                                  ; preds = %for.body
  store i32 0, i32* %j, align 4, !dbg !88, !taffo.info !25
  br label %for.cond9, !dbg !91

for.cond9:                                        ; preds = %for.inc, %VITIS_LOOP_48_2
  %16 = load i32, i32* %j, align 4, !dbg !92, !taffo.info !25
  %17 = load i32, i32* %i, align 4, !dbg !94, !taffo.info !25
  %cmp10 = icmp sle i32 %16, %17, !dbg !95, !taffo.info !25
  br i1 %cmp10, label %for.body11, label %for.end, !dbg !96, !taffo.info !25

for.body11:                                       ; preds = %for.cond9
  %18 = load float, float* %betas, align 4, !dbg !97, !taffo.info !25
  %19 = load float*, float** %Cs, align 8, !dbg !99, !taffo.info !25, !taffo.target !24
  %20 = load i32, i32* %i, align 4, !dbg !100, !taffo.info !25
  %21 = load i32, i32* %n, align 4, !dbg !101
  %mul = mul nsw i32 %20, %21, !dbg !102, !taffo.info !25
  %22 = load i32, i32* %j, align 4, !dbg !103, !taffo.info !25
  %add = add nsw i32 %mul, %22, !dbg !104, !taffo.info !25
  %idxprom = sext i32 %add to i64, !dbg !99, !taffo.info !25
  %arrayidx = getelementptr inbounds float, float* %19, i64 %idxprom, !dbg !99, !taffo.info !25, !taffo.target !24
  %23 = load float, float* %arrayidx, align 4, !dbg !105, !taffo.info !25, !taffo.target !24
  %mul12 = fmul float %23, %18, !dbg !105, !taffo.info !25
  store float %mul12, float* %arrayidx, align 4, !dbg !105, !taffo.info !25
  br label %for.inc, !dbg !106

for.inc:                                          ; preds = %for.body11
  %24 = load i32, i32* %j, align 4, !dbg !107, !taffo.info !25
  %inc = add nsw i32 %24, 1, !dbg !107, !taffo.info !25
  store i32 %inc, i32* %j, align 4, !dbg !107, !taffo.info !25
  br label %for.cond9, !dbg !108, !llvm.loop !109

for.end:                                          ; preds = %for.cond9
  br label %VITIS_LOOP_52_3, !dbg !110

VITIS_LOOP_52_3:                                  ; preds = %for.end
  store i32 0, i32* %k, align 4, !dbg !114, !taffo.info !25
  br label %for.cond13, !dbg !116

for.cond13:                                       ; preds = %for.inc48, %VITIS_LOOP_52_3
  %25 = load i32, i32* %k, align 4, !dbg !117, !taffo.info !25
  %cmp14 = icmp slt i32 %25, 16, !dbg !119, !taffo.info !25
  br i1 %cmp14, label %for.body15, label %for.end50, !dbg !120, !taffo.info !25

for.body15:                                       ; preds = %for.cond13
  br label %VITIS_LOOP_54_4, !dbg !121

VITIS_LOOP_54_4:                                  ; preds = %for.body15
  store i32 0, i32* %j, align 4, !dbg !122, !taffo.info !25
  br label %for.cond16, !dbg !125

for.cond16:                                       ; preds = %for.inc45, %VITIS_LOOP_54_4
  %26 = load i32, i32* %j, align 4, !dbg !126, !taffo.info !25
  %27 = load i32, i32* %i, align 4, !dbg !128, !taffo.info !25
  %cmp17 = icmp sle i32 %26, %27, !dbg !129, !taffo.info !25
  br i1 %cmp17, label %for.body18, label %for.end47, !dbg !130, !taffo.info !25

for.body18:                                       ; preds = %for.cond16
  %28 = load float*, float** %As, align 8, !dbg !131, !taffo.info !25, !taffo.target !22
  %29 = load i32, i32* %j, align 4, !dbg !133, !taffo.info !25
  %30 = load i32, i32* %m, align 4, !dbg !134
  %mul19 = mul nsw i32 %29, %30, !dbg !135, !taffo.info !25
  %31 = load i32, i32* %k, align 4, !dbg !136, !taffo.info !25
  %add20 = add nsw i32 %mul19, %31, !dbg !137, !taffo.info !25
  %idxprom21 = sext i32 %add20 to i64, !dbg !131, !taffo.info !25
  %arrayidx22 = getelementptr inbounds float, float* %28, i64 %idxprom21, !dbg !131, !taffo.info !25, !taffo.target !22
  %32 = load float, float* %arrayidx22, align 4, !dbg !131, !taffo.info !25, !taffo.target !22
  %33 = load float, float* %alphas, align 4, !dbg !138, !taffo.info !25
  %mul23 = fmul float %32, %33, !dbg !139, !taffo.info !25
  %34 = load float*, float** %Bs, align 8, !dbg !140, !taffo.info !25, !taffo.target !23
  %35 = load i32, i32* %i, align 4, !dbg !141, !taffo.info !25
  %36 = load i32, i32* %m, align 4, !dbg !142
  %mul24 = mul nsw i32 %35, %36, !dbg !143, !taffo.info !25
  %37 = load i32, i32* %k, align 4, !dbg !144, !taffo.info !25
  %add25 = add nsw i32 %mul24, %37, !dbg !145, !taffo.info !25
  %idxprom26 = sext i32 %add25 to i64, !dbg !140, !taffo.info !25
  %arrayidx27 = getelementptr inbounds float, float* %34, i64 %idxprom26, !dbg !140, !taffo.info !25, !taffo.target !23
  %38 = load float, float* %arrayidx27, align 4, !dbg !140, !taffo.info !25, !taffo.target !23
  %mul28 = fmul float %mul23, %38, !dbg !146, !taffo.info !25
  %39 = load float*, float** %Bs, align 8, !dbg !147, !taffo.info !25, !taffo.target !23
  %40 = load i32, i32* %j, align 4, !dbg !148, !taffo.info !25
  %41 = load i32, i32* %m, align 4, !dbg !149
  %mul29 = mul nsw i32 %40, %41, !dbg !150, !taffo.info !25
  %42 = load i32, i32* %k, align 4, !dbg !151, !taffo.info !25
  %add30 = add nsw i32 %mul29, %42, !dbg !152, !taffo.info !25
  %idxprom31 = sext i32 %add30 to i64, !dbg !147, !taffo.info !25
  %arrayidx32 = getelementptr inbounds float, float* %39, i64 %idxprom31, !dbg !147, !taffo.info !25, !taffo.target !23
  %43 = load float, float* %arrayidx32, align 4, !dbg !147, !taffo.info !25, !taffo.target !23
  %44 = load float, float* %alphas, align 4, !dbg !153, !taffo.info !25
  %mul33 = fmul float %43, %44, !dbg !154, !taffo.info !25
  %45 = load float*, float** %As, align 8, !dbg !155, !taffo.info !25, !taffo.target !22
  %46 = load i32, i32* %i, align 4, !dbg !156, !taffo.info !25
  %47 = load i32, i32* %m, align 4, !dbg !157
  %mul34 = mul nsw i32 %46, %47, !dbg !158, !taffo.info !25
  %48 = load i32, i32* %k, align 4, !dbg !159, !taffo.info !25
  %add35 = add nsw i32 %mul34, %48, !dbg !160, !taffo.info !25
  %idxprom36 = sext i32 %add35 to i64, !dbg !155, !taffo.info !25
  %arrayidx37 = getelementptr inbounds float, float* %45, i64 %idxprom36, !dbg !155, !taffo.info !25, !taffo.target !22
  %49 = load float, float* %arrayidx37, align 4, !dbg !155, !taffo.info !25, !taffo.target !22
  %mul38 = fmul float %mul33, %49, !dbg !161, !taffo.info !25
  %add39 = fadd float %mul28, %mul38, !dbg !162, !taffo.info !25
  %50 = load float*, float** %Cs, align 8, !dbg !163, !taffo.info !25, !taffo.target !24
  %51 = load i32, i32* %i, align 4, !dbg !164, !taffo.info !25
  %52 = load i32, i32* %n, align 4, !dbg !165
  %mul40 = mul nsw i32 %51, %52, !dbg !166, !taffo.info !25
  %53 = load i32, i32* %j, align 4, !dbg !167, !taffo.info !25
  %add41 = add nsw i32 %mul40, %53, !dbg !168, !taffo.info !25
  %idxprom42 = sext i32 %add41 to i64, !dbg !163, !taffo.info !25
  %arrayidx43 = getelementptr inbounds float, float* %50, i64 %idxprom42, !dbg !163, !taffo.info !25, !taffo.target !24
  %54 = load float, float* %arrayidx43, align 4, !dbg !169, !taffo.info !25, !taffo.target !24
  %add44 = fadd float %54, %add39, !dbg !169, !taffo.info !25, !taffo.target !24
  store float %add44, float* %arrayidx43, align 4, !dbg !169, !taffo.info !25, !taffo.target !24
  br label %for.inc45, !dbg !170

for.inc45:                                        ; preds = %for.body18
  %55 = load i32, i32* %j, align 4, !dbg !171, !taffo.info !25
  %inc46 = add nsw i32 %55, 1, !dbg !171, !taffo.info !25
  store i32 %inc46, i32* %j, align 4, !dbg !171, !taffo.info !25
  br label %for.cond16, !dbg !172, !llvm.loop !173

for.end47:                                        ; preds = %for.cond16
  br label %for.inc48, !dbg !178

for.inc48:                                        ; preds = %for.end47
  %56 = load i32, i32* %k, align 4, !dbg !179, !taffo.info !25
  %inc49 = add nsw i32 %56, 1, !dbg !179, !taffo.info !25
  store i32 %inc49, i32* %k, align 4, !dbg !179, !taffo.info !25
  br label %for.cond13, !dbg !180, !llvm.loop !181

for.end50:                                        ; preds = %for.cond13
  br label %for.inc51, !dbg !186

for.inc51:                                        ; preds = %for.end50
  %57 = load i32, i32* %i, align 4, !dbg !187, !taffo.info !25
  %inc52 = add nsw i32 %57, 1, !dbg !187, !taffo.info !25
  store i32 %inc52, i32* %i, align 4, !dbg !187, !taffo.info !25
  br label %for.cond, !dbg !188, !llvm.loop !189

for.end53:                                        ; preds = %for.cond
  %58 = bitcast i32* %k to i8*, !dbg !194, !taffo.info !25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %58) #4, !dbg !194, !taffo.info !25
  %59 = bitcast i32* %j to i8*, !dbg !194, !taffo.info !25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %59) #4, !dbg !194, !taffo.info !25
  %60 = bitcast i32* %i to i8*, !dbg !194, !taffo.info !25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %60) #4, !dbg !194, !taffo.info !25
  %61 = bitcast float** %Cs to i8*, !dbg !194, !taffo.info !25, !taffo.target !24
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %61) #4, !dbg !194, !taffo.info !25, !taffo.target !24
  %62 = bitcast float** %Bs to i8*, !dbg !194, !taffo.info !25, !taffo.target !23
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %62) #4, !dbg !194, !taffo.info !25, !taffo.target !23
  %63 = bitcast float** %As to i8*, !dbg !194, !taffo.info !25, !taffo.target !22
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %63) #4, !dbg !194, !taffo.info !25, !taffo.target !22
  %64 = bitcast float* %betas to i8*, !dbg !194, !taffo.info !25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %64) #4, !dbg !194, !taffo.info !25
  %65 = bitcast float* %alphas to i8*, !dbg !194, !taffo.info !25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %65) #4, !dbg !194, !taffo.info !25
  %66 = bitcast i32* %m to i8*, !dbg !194
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %66) #4, !dbg !194
  %67 = bitcast i32* %n to i8*, !dbg !194
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %67) #4, !dbg !194
  ret void, !dbg !194
}

; Function Attrs: nounwind readnone speculatable
declare !taffo.funinfo !195 void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: inaccessiblememonly nounwind
declare !taffo.funinfo !2 void @llvm.sideeffect() #2

; Function Attrs: argmemonly nounwind
declare !taffo.funinfo !196 void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare !taffo.funinfo !197 void @llvm.var.annotation(i8*, i8*, i8*, i32) #4

; Function Attrs: argmemonly nounwind
declare !taffo.funinfo !196 void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #3

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.top.func"="syr2k" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { inaccessiblememonly nounwind }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind }
attributes #5 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="0" "xlx.source"="user" }

!llvm.dbg.cu = !{!0}
!llvm.ident = !{!3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3}
!llvm.module.flags = !{!4, !5, !6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/home/bruno/Desktop/benchmarks/syr2k/proj_syr2k/solution1/.autopilot/db/syr2k_taffo.pp.0.c", directory: "/home/bruno/Desktop/benchmarks/syr2k")
!2 = !{}
!3 = !{!"clang version 7.0.0 "}
!4 = !{i32 2, !"Dwarf Version", i32 4}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = distinct !DISubprogram(name: "syr2k", scope: !8, file: !8, line: 20, type: !9, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DIFile(filename: "syr2k_taffo.c", directory: "/home/bruno/Desktop/benchmarks/syr2k")
!9 = !DISubroutineType(types: !10)
!10 = !{null, !11, !11, !11, !12, !12}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!13 = !{!14}
!14 = !{!"fpga.top", !"user", !15}
!15 = !DILocation(line: 20, column: 16, scope: !7)
!16 = !{i1 true}
!17 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!18 = !{i1 false, !19, i1 false, i1 true}
!19 = !{double 0.000000e+00, double 5.000000e+00}
!20 = !{i1 false, !21, i1 false, i1 true}
!21 = !{double -1.638400e+04, double 1.638400e+04}
!22 = !{!"A"}
!23 = !{!"B"}
!24 = !{!"C"}
!25 = !{i1 false, i1 false, i1 false, i1 true}
!26 = !DILocalVariable(name: "A", arg: 1, scope: !7, file: !8, line: 20, type: !11)
!27 = !DILocation(line: 20, column: 59, scope: !7)
!28 = !DILocalVariable(name: "B", arg: 2, scope: !7, file: !8, line: 20, type: !11)
!29 = !DILocation(line: 20, column: 69, scope: !7)
!30 = !DILocalVariable(name: "C", arg: 3, scope: !7, file: !8, line: 20, type: !11)
!31 = !DILocation(line: 20, column: 79, scope: !7)
!32 = !DILocalVariable(name: "alpha", arg: 4, scope: !7, file: !8, line: 20, type: !12)
!33 = !DILocation(line: 20, column: 88, scope: !7)
!34 = !DILocalVariable(name: "beta", arg: 5, scope: !7, file: !8, line: 20, type: !12)
!35 = !DILocation(line: 20, column: 101, scope: !7)
!36 = !DILocation(line: 23, column: 9, scope: !7)
!37 = !DILocation(line: 24, column: 9, scope: !7)
!38 = !DILocation(line: 25, column: 9, scope: !7)
!39 = !DILocation(line: 26, column: 2, scope: !7)
!40 = !DILocalVariable(name: "n", scope: !7, file: !8, line: 26, type: !41)
!41 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!42 = !DILocation(line: 26, column: 6, scope: !7)
!43 = !DILocation(line: 27, column: 3, scope: !7)
!44 = !DILocalVariable(name: "m", scope: !7, file: !8, line: 27, type: !41)
!45 = !DILocation(line: 27, column: 7, scope: !7)
!46 = !DILocation(line: 28, column: 3, scope: !7)
!47 = !DILocalVariable(name: "alphas", scope: !7, file: !8, line: 28, type: !12)
!48 = !DILocation(line: 28, column: 9, scope: !7)
!49 = !DILocation(line: 29, column: 12, scope: !7)
!50 = !DILocation(line: 29, column: 10, scope: !7)
!51 = !DILocation(line: 30, column: 3, scope: !7)
!52 = !DILocalVariable(name: "betas", scope: !7, file: !8, line: 30, type: !12)
!53 = !DILocation(line: 30, column: 9, scope: !7)
!54 = !DILocation(line: 31, column: 9, scope: !7)
!55 = !DILocation(line: 31, column: 8, scope: !7)
!56 = !DILocation(line: 33, column: 3, scope: !7)
!57 = !DILocalVariable(name: "As", scope: !7, file: !8, line: 33, type: !11)
!58 = !DILocation(line: 33, column: 10, scope: !7)
!59 = !DILocation(line: 34, column: 8, scope: !7)
!60 = !DILocation(line: 34, column: 6, scope: !7)
!61 = !DILocation(line: 35, column: 3, scope: !7)
!62 = !DILocalVariable(name: "Bs", scope: !7, file: !8, line: 35, type: !11)
!63 = !DILocation(line: 35, column: 10, scope: !7)
!64 = !DILocation(line: 36, column: 8, scope: !7)
!65 = !DILocation(line: 36, column: 6, scope: !7)
!66 = !DILocation(line: 37, column: 3, scope: !7)
!67 = !DILocalVariable(name: "Cs", scope: !7, file: !8, line: 37, type: !11)
!68 = !DILocation(line: 37, column: 10, scope: !7)
!69 = !DILocation(line: 38, column: 8, scope: !7)
!70 = !DILocation(line: 38, column: 6, scope: !7)
!71 = !DILocation(line: 41, column: 3, scope: !7)
!72 = !DILocalVariable(name: "i", scope: !7, file: !8, line: 41, type: !41)
!73 = !DILocation(line: 41, column: 7, scope: !7)
!74 = !DILocation(line: 42, column: 3, scope: !7)
!75 = !DILocalVariable(name: "j", scope: !7, file: !8, line: 42, type: !41)
!76 = !DILocation(line: 42, column: 7, scope: !7)
!77 = !DILocation(line: 43, column: 3, scope: !7)
!78 = !DILocalVariable(name: "k", scope: !7, file: !8, line: 43, type: !41)
!79 = !DILocation(line: 43, column: 7, scope: !7)
!80 = !DILocation(line: 46, column: 27, scope: !81)
!81 = distinct !DILexicalBlock(scope: !7, file: !8, line: 46, column: 20)
!82 = !DILocation(line: 46, column: 25, scope: !81)
!83 = !DILocation(line: 46, column: 32, scope: !84)
!84 = distinct !DILexicalBlock(scope: !81, file: !8, line: 46, column: 20)
!85 = !DILocation(line: 46, column: 34, scope: !84)
!86 = !DILocation(line: 46, column: 20, scope: !81)
!87 = !DILocation(line: 46, column: 45, scope: !84)
!88 = !DILocation(line: 48, column: 26, scope: !89)
!89 = distinct !DILexicalBlock(scope: !90, file: !8, line: 48, column: 19)
!90 = distinct !DILexicalBlock(scope: !84, file: !8, line: 46, column: 45)
!91 = !DILocation(line: 48, column: 24, scope: !89)
!92 = !DILocation(line: 48, column: 31, scope: !93)
!93 = distinct !DILexicalBlock(scope: !89, file: !8, line: 48, column: 19)
!94 = !DILocation(line: 48, column: 36, scope: !93)
!95 = !DILocation(line: 48, column: 33, scope: !93)
!96 = !DILocation(line: 48, column: 19, scope: !89)
!97 = !DILocation(line: 50, column: 17, scope: !98)
!98 = distinct !DILexicalBlock(scope: !93, file: !8, line: 48, column: 43)
!99 = !DILocation(line: 50, column: 2, scope: !98)
!100 = !DILocation(line: 50, column: 5, scope: !98)
!101 = !DILocation(line: 50, column: 7, scope: !98)
!102 = !DILocation(line: 50, column: 6, scope: !98)
!103 = !DILocation(line: 50, column: 11, scope: !98)
!104 = !DILocation(line: 50, column: 9, scope: !98)
!105 = !DILocation(line: 50, column: 14, scope: !98)
!106 = !DILocation(line: 51, column: 5, scope: !98)
!107 = !DILocation(line: 48, column: 40, scope: !93)
!108 = !DILocation(line: 48, column: 19, scope: !93)
!109 = distinct !{!109, !96, !110, !111, !113}
!110 = !DILocation(line: 51, column: 5, scope: !89)
!111 = !{!"llvm.loop.pipeline.enable", i32 1, i1 false, i8 -1, !"user", !112}
!112 = !DILocation(line: 49, column: 9, scope: !89)
!113 = !{!"llvm.loop.name", !"VITIS_LOOP_48_2"}
!114 = !DILocation(line: 52, column: 29, scope: !115)
!115 = distinct !DILexicalBlock(scope: !90, file: !8, line: 52, column: 22)
!116 = !DILocation(line: 52, column: 27, scope: !115)
!117 = !DILocation(line: 52, column: 34, scope: !118)
!118 = distinct !DILexicalBlock(scope: !115, file: !8, line: 52, column: 22)
!119 = !DILocation(line: 52, column: 36, scope: !118)
!120 = !DILocation(line: 52, column: 22, scope: !115)
!121 = !DILocation(line: 52, column: 46, scope: !118)
!122 = !DILocation(line: 54, column: 26, scope: !123)
!123 = distinct !DILexicalBlock(scope: !124, file: !8, line: 54, column: 19)
!124 = distinct !DILexicalBlock(scope: !118, file: !8, line: 52, column: 46)
!125 = !DILocation(line: 54, column: 24, scope: !123)
!126 = !DILocation(line: 54, column: 31, scope: !127)
!127 = distinct !DILexicalBlock(scope: !123, file: !8, line: 54, column: 19)
!128 = !DILocation(line: 54, column: 36, scope: !127)
!129 = !DILocation(line: 54, column: 33, scope: !127)
!130 = !DILocation(line: 54, column: 19, scope: !123)
!131 = !DILocation(line: 57, column: 15, scope: !132)
!132 = distinct !DILexicalBlock(scope: !127, file: !8, line: 55, column: 2)
!133 = !DILocation(line: 57, column: 18, scope: !132)
!134 = !DILocation(line: 57, column: 20, scope: !132)
!135 = !DILocation(line: 57, column: 19, scope: !132)
!136 = !DILocation(line: 57, column: 22, scope: !132)
!137 = !DILocation(line: 57, column: 21, scope: !132)
!138 = !DILocation(line: 57, column: 25, scope: !132)
!139 = !DILocation(line: 57, column: 24, scope: !132)
!140 = !DILocation(line: 57, column: 32, scope: !132)
!141 = !DILocation(line: 57, column: 35, scope: !132)
!142 = !DILocation(line: 57, column: 37, scope: !132)
!143 = !DILocation(line: 57, column: 36, scope: !132)
!144 = !DILocation(line: 57, column: 39, scope: !132)
!145 = !DILocation(line: 57, column: 38, scope: !132)
!146 = !DILocation(line: 57, column: 31, scope: !132)
!147 = !DILocation(line: 57, column: 44, scope: !132)
!148 = !DILocation(line: 57, column: 47, scope: !132)
!149 = !DILocation(line: 57, column: 49, scope: !132)
!150 = !DILocation(line: 57, column: 48, scope: !132)
!151 = !DILocation(line: 57, column: 51, scope: !132)
!152 = !DILocation(line: 57, column: 50, scope: !132)
!153 = !DILocation(line: 57, column: 54, scope: !132)
!154 = !DILocation(line: 57, column: 53, scope: !132)
!155 = !DILocation(line: 57, column: 61, scope: !132)
!156 = !DILocation(line: 57, column: 64, scope: !132)
!157 = !DILocation(line: 57, column: 66, scope: !132)
!158 = !DILocation(line: 57, column: 65, scope: !132)
!159 = !DILocation(line: 57, column: 68, scope: !132)
!160 = !DILocation(line: 57, column: 67, scope: !132)
!161 = !DILocation(line: 57, column: 60, scope: !132)
!162 = !DILocation(line: 57, column: 42, scope: !132)
!163 = !DILocation(line: 57, column: 2, scope: !132)
!164 = !DILocation(line: 57, column: 5, scope: !132)
!165 = !DILocation(line: 57, column: 7, scope: !132)
!166 = !DILocation(line: 57, column: 6, scope: !132)
!167 = !DILocation(line: 57, column: 9, scope: !132)
!168 = !DILocation(line: 57, column: 8, scope: !132)
!169 = !DILocation(line: 57, column: 12, scope: !132)
!170 = !DILocation(line: 58, column: 2, scope: !132)
!171 = !DILocation(line: 54, column: 40, scope: !127)
!172 = !DILocation(line: 54, column: 19, scope: !127)
!173 = distinct !{!173, !130, !174, !175, !177}
!174 = !DILocation(line: 58, column: 2, scope: !123)
!175 = !{!"llvm.loop.pipeline.enable", i32 1, i1 false, i8 -1, !"user", !176}
!176 = !DILocation(line: 56, column: 9, scope: !123)
!177 = !{!"llvm.loop.name", !"VITIS_LOOP_54_4"}
!178 = !DILocation(line: 59, column: 5, scope: !124)
!179 = !DILocation(line: 52, column: 43, scope: !118)
!180 = !DILocation(line: 52, column: 22, scope: !118)
!181 = distinct !{!181, !120, !182, !183, !185}
!182 = !DILocation(line: 59, column: 5, scope: !115)
!183 = !{!"llvm.loop.pipeline.enable", i32 1, i1 false, i8 -1, !"user", !184}
!184 = !DILocation(line: 53, column: 9, scope: !115)
!185 = !{!"llvm.loop.name", !"VITIS_LOOP_52_3"}
!186 = !DILocation(line: 60, column: 3, scope: !90)
!187 = !DILocation(line: 46, column: 41, scope: !84)
!188 = !DILocation(line: 46, column: 20, scope: !84)
!189 = distinct !{!189, !86, !190, !191, !193}
!190 = !DILocation(line: 60, column: 3, scope: !81)
!191 = !{!"llvm.loop.unroll.count", i32 4, !"user", !192}
!192 = !DILocation(line: 47, column: 9, scope: !81)
!193 = !{!"llvm.loop.name", !"VITIS_LOOP_46_1"}
!194 = !DILocation(line: 64, column: 1, scope: !7)
!195 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!196 = !{i32 0, i1 false, i32 0, i1 false}
!197 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
