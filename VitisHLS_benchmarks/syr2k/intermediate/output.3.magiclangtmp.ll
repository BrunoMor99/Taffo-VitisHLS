; ModuleID = '/home/bruno/Desktop/benchmarks/syr2k/intermediate/output.2.magiclangtmp.ll'
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
  %As = alloca float*, align 8, !taffo.info !31, !taffo.target !33
  %Bs = alloca float*, align 8, !taffo.info !31, !taffo.target !34
  %Cs = alloca float*, align 8, !taffo.info !31, !taffo.target !35
  %i = alloca i32, align 4, !taffo.info !36
  %j = alloca i32, align 4, !taffo.info !38
  %k = alloca i32, align 4, !taffo.info !36
  store float* %A, float** %A.addr, align 8
  call void @llvm.dbg.declare(metadata float** %A.addr, metadata !40, metadata !DIExpression()), !dbg !41
  store float* %B, float** %B.addr, align 8
  call void @llvm.dbg.declare(metadata float** %B.addr, metadata !42, metadata !DIExpression()), !dbg !43
  store float* %C, float** %C.addr, align 8
  call void @llvm.dbg.declare(metadata float** %C.addr, metadata !44, metadata !DIExpression()), !dbg !45
  store float %alpha, float* %alpha.addr, align 4
  call void @llvm.dbg.declare(metadata float* %alpha.addr, metadata !46, metadata !DIExpression()), !dbg !47
  store float %beta, float* %beta.addr, align 4
  call void @llvm.dbg.declare(metadata float* %beta.addr, metadata !48, metadata !DIExpression()), !dbg !49
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %A, [0 x i8] zeroinitializer, i64 256, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !50
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %B, [0 x i8] zeroinitializer, i64 256, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !51
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %C, [0 x i8] zeroinitializer, i64 256, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !52
  %0 = bitcast i32* %n to i8*, !dbg !53
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !53
  call void @llvm.dbg.declare(metadata i32* %n, metadata !54, metadata !DIExpression()), !dbg !56
  store i32 16, i32* %n, align 4, !dbg !56
  %1 = bitcast i32* %m to i8*, !dbg !57
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !57
  call void @llvm.dbg.declare(metadata i32* %m, metadata !58, metadata !DIExpression()), !dbg !59
  store i32 16, i32* %m, align 4, !dbg !59
  %2 = bitcast float* %alphas to i8*, !dbg !60, !taffo.info !29
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !60, !taffo.info !61
  call void @llvm.dbg.declare(metadata float* %alphas, metadata !62, metadata !DIExpression()), !dbg !63
  %alphas1 = bitcast float* %alphas to i8*, !dbg !60, !taffo.info !29
  %3 = load float, float* %alpha.addr, align 4, !dbg !64
  store float %3, float* %alphas, align 4, !dbg !65, !taffo.info !61
  %4 = bitcast float* %betas to i8*, !dbg !66, !taffo.info !29
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !66, !taffo.info !61
  call void @llvm.dbg.declare(metadata float* %betas, metadata !67, metadata !DIExpression()), !dbg !68
  %betas2 = bitcast float* %betas to i8*, !dbg !66, !taffo.info !29
  %5 = load float, float* %beta.addr, align 4, !dbg !69
  store float %5, float* %betas, align 4, !dbg !70, !taffo.info !61
  %6 = bitcast float** %As to i8*, !dbg !71, !taffo.info !31, !taffo.target !33
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %6) #4, !dbg !71, !taffo.info !61, !taffo.target !33
  call void @llvm.dbg.declare(metadata float** %As, metadata !72, metadata !DIExpression()), !dbg !73
  %As3 = bitcast float** %As to i8*, !dbg !71, !taffo.info !31, !taffo.target !33
  %7 = load float*, float** %A.addr, align 8, !dbg !74
  store float* %7, float** %As, align 8, !dbg !75, !taffo.info !61, !taffo.target !33
  %8 = bitcast float** %Bs to i8*, !dbg !76, !taffo.info !31, !taffo.target !34
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %8) #4, !dbg !76, !taffo.info !61, !taffo.target !34
  call void @llvm.dbg.declare(metadata float** %Bs, metadata !77, metadata !DIExpression()), !dbg !78
  %Bs4 = bitcast float** %Bs to i8*, !dbg !76, !taffo.info !31, !taffo.target !34
  %9 = load float*, float** %B.addr, align 8, !dbg !79
  store float* %9, float** %Bs, align 8, !dbg !80, !taffo.info !61, !taffo.target !34
  %10 = bitcast float** %Cs to i8*, !dbg !81, !taffo.info !31, !taffo.target !35
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %10) #4, !dbg !81, !taffo.info !61, !taffo.target !35
  call void @llvm.dbg.declare(metadata float** %Cs, metadata !82, metadata !DIExpression()), !dbg !83
  %Cs5 = bitcast float** %Cs to i8*, !dbg !81, !taffo.info !31, !taffo.target !35
  %11 = load float*, float** %C.addr, align 8, !dbg !84, !taffo.info !1
  store float* %11, float** %Cs, align 8, !dbg !85, !taffo.info !61, !taffo.target !35
  %12 = bitcast i32* %i to i8*, !dbg !86, !taffo.info !61
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #4, !dbg !86, !taffo.info !61
  call void @llvm.dbg.declare(metadata i32* %i, metadata !87, metadata !DIExpression()), !dbg !88
  %i6 = bitcast i32* %i to i8*, !dbg !86, !taffo.info !61
  %13 = bitcast i32* %j to i8*, !dbg !89, !taffo.info !61
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #4, !dbg !89, !taffo.info !61
  call void @llvm.dbg.declare(metadata i32* %j, metadata !90, metadata !DIExpression()), !dbg !91
  %j7 = bitcast i32* %j to i8*, !dbg !89, !taffo.info !61
  %14 = bitcast i32* %k to i8*, !dbg !92, !taffo.info !61
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #4, !dbg !92, !taffo.info !61
  call void @llvm.dbg.declare(metadata i32* %k, metadata !93, metadata !DIExpression()), !dbg !94
  %k8 = bitcast i32* %k to i8*, !dbg !92, !taffo.info !61
  br label %VITIS_LOOP_46_1, !dbg !92

VITIS_LOOP_46_1:                                  ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !95, !taffo.info !61
  br label %for.cond, !dbg !97

for.cond:                                         ; preds = %for.inc51, %VITIS_LOOP_46_1
  %15 = load i32, i32* %i, align 4, !dbg !98, !taffo.info !36
  %cmp = icmp slt i32 %15, 16, !dbg !100, !taffo.info !101
  br i1 %cmp, label %for.body, label %for.end53, !dbg !103, !taffo.info !61

for.body:                                         ; preds = %for.cond
  br label %VITIS_LOOP_48_2, !dbg !104

VITIS_LOOP_48_2:                                  ; preds = %for.body
  store i32 0, i32* %j, align 4, !dbg !105, !taffo.info !61
  br label %for.cond9, !dbg !108

for.cond9:                                        ; preds = %for.inc, %VITIS_LOOP_48_2
  %16 = load i32, i32* %j, align 4, !dbg !109, !taffo.info !38
  %17 = load i32, i32* %i, align 4, !dbg !111, !taffo.info !36
  %cmp10 = icmp sle i32 %16, %17, !dbg !112, !taffo.info !36
  br i1 %cmp10, label %for.body11, label %for.end, !dbg !113, !taffo.info !61

for.body11:                                       ; preds = %for.cond9
  %18 = load float, float* %betas, align 4, !dbg !114, !taffo.info !29
  %19 = load float*, float** %Cs, align 8, !dbg !116, !taffo.info !31, !taffo.target !35
  %20 = load i32, i32* %i, align 4, !dbg !117, !taffo.info !36
  %21 = load i32, i32* %n, align 4, !dbg !118, !taffo.info !27
  %mul = mul nsw i32 %20, %21, !dbg !119, !taffo.info !120
  %22 = load i32, i32* %j, align 4, !dbg !121, !taffo.info !38
  %add = add nsw i32 %mul, %22, !dbg !122, !taffo.info !120
  %idxprom = sext i32 %add to i64, !dbg !116, !taffo.info !120
  %arrayidx = getelementptr inbounds float, float* %19, i64 %idxprom, !dbg !116, !taffo.info !31, !taffo.target !35
  %23 = load float, float* %arrayidx, align 4, !dbg !123, !taffo.info !31, !taffo.target !35
  %mul12 = fmul float %23, %18, !dbg !123, !taffo.info !120
  store float %mul12, float* %arrayidx, align 4, !dbg !123, !taffo.info !61
  br label %for.inc, !dbg !124

for.inc:                                          ; preds = %for.body11
  %24 = load i32, i32* %j, align 4, !dbg !125, !taffo.info !38
  %inc = add nsw i32 %24, 1, !dbg !125, !taffo.info !101
  store i32 %inc, i32* %j, align 4, !dbg !125, !taffo.info !61
  br label %for.cond9, !dbg !126, !llvm.loop !127

for.end:                                          ; preds = %for.cond9
  br label %VITIS_LOOP_52_3, !dbg !128

VITIS_LOOP_52_3:                                  ; preds = %for.end
  store i32 0, i32* %k, align 4, !dbg !132, !taffo.info !61
  br label %for.cond13, !dbg !134

for.cond13:                                       ; preds = %for.inc48, %VITIS_LOOP_52_3
  %25 = load i32, i32* %k, align 4, !dbg !135, !taffo.info !36
  %cmp14 = icmp slt i32 %25, 16, !dbg !137, !taffo.info !101
  br i1 %cmp14, label %for.body15, label %for.end50, !dbg !138, !taffo.info !61

for.body15:                                       ; preds = %for.cond13
  br label %VITIS_LOOP_54_4, !dbg !139

VITIS_LOOP_54_4:                                  ; preds = %for.body15
  store i32 0, i32* %j, align 4, !dbg !140, !taffo.info !61
  br label %for.cond16, !dbg !143

for.cond16:                                       ; preds = %for.inc45, %VITIS_LOOP_54_4
  %26 = load i32, i32* %j, align 4, !dbg !144, !taffo.info !38
  %27 = load i32, i32* %i, align 4, !dbg !146, !taffo.info !36
  %cmp17 = icmp sle i32 %26, %27, !dbg !147, !taffo.info !36
  br i1 %cmp17, label %for.body18, label %for.end47, !dbg !148, !taffo.info !61

for.body18:                                       ; preds = %for.cond16
  %28 = load float*, float** %As, align 8, !dbg !149, !taffo.info !31, !taffo.target !33
  %29 = load i32, i32* %j, align 4, !dbg !151, !taffo.info !38
  %30 = load i32, i32* %m, align 4, !dbg !152, !taffo.info !27
  %mul19 = mul nsw i32 %29, %30, !dbg !153, !taffo.info !154
  %31 = load i32, i32* %k, align 4, !dbg !156, !taffo.info !36
  %add20 = add nsw i32 %mul19, %31, !dbg !157, !taffo.info !158
  %idxprom21 = sext i32 %add20 to i64, !dbg !149, !taffo.info !158
  %arrayidx22 = getelementptr inbounds float, float* %28, i64 %idxprom21, !dbg !149, !taffo.info !31, !taffo.target !33
  %32 = load float, float* %arrayidx22, align 4, !dbg !149, !taffo.info !31, !taffo.target !33
  %33 = load float, float* %alphas, align 4, !dbg !160, !taffo.info !29
  %mul23 = fmul float %32, %33, !dbg !161, !taffo.info !120
  %34 = load float*, float** %Bs, align 8, !dbg !162, !taffo.info !31, !taffo.target !34
  %35 = load i32, i32* %i, align 4, !dbg !163, !taffo.info !36
  %36 = load i32, i32* %m, align 4, !dbg !164, !taffo.info !27
  %mul24 = mul nsw i32 %35, %36, !dbg !165, !taffo.info !154
  %37 = load i32, i32* %k, align 4, !dbg !166, !taffo.info !36
  %add25 = add nsw i32 %mul24, %37, !dbg !167, !taffo.info !158
  %idxprom26 = sext i32 %add25 to i64, !dbg !162, !taffo.info !158
  %arrayidx27 = getelementptr inbounds float, float* %34, i64 %idxprom26, !dbg !162, !taffo.info !31, !taffo.target !34
  %38 = load float, float* %arrayidx27, align 4, !dbg !162, !taffo.info !31, !taffo.target !34
  %mul28 = fmul float %mul23, %38, !dbg !168, !taffo.info !120
  %39 = load float*, float** %Bs, align 8, !dbg !169, !taffo.info !31, !taffo.target !34
  %40 = load i32, i32* %j, align 4, !dbg !170, !taffo.info !38
  %41 = load i32, i32* %m, align 4, !dbg !171, !taffo.info !27
  %mul29 = mul nsw i32 %40, %41, !dbg !172, !taffo.info !154
  %42 = load i32, i32* %k, align 4, !dbg !173, !taffo.info !36
  %add30 = add nsw i32 %mul29, %42, !dbg !174, !taffo.info !158
  %idxprom31 = sext i32 %add30 to i64, !dbg !169, !taffo.info !158
  %arrayidx32 = getelementptr inbounds float, float* %39, i64 %idxprom31, !dbg !169, !taffo.info !31, !taffo.target !34
  %43 = load float, float* %arrayidx32, align 4, !dbg !169, !taffo.info !31, !taffo.target !34
  %44 = load float, float* %alphas, align 4, !dbg !175, !taffo.info !29
  %mul33 = fmul float %43, %44, !dbg !176, !taffo.info !120
  %45 = load float*, float** %As, align 8, !dbg !177, !taffo.info !31, !taffo.target !33
  %46 = load i32, i32* %i, align 4, !dbg !178, !taffo.info !36
  %47 = load i32, i32* %m, align 4, !dbg !179, !taffo.info !27
  %mul34 = mul nsw i32 %46, %47, !dbg !180, !taffo.info !154
  %48 = load i32, i32* %k, align 4, !dbg !181, !taffo.info !36
  %add35 = add nsw i32 %mul34, %48, !dbg !182, !taffo.info !158
  %idxprom36 = sext i32 %add35 to i64, !dbg !177, !taffo.info !158
  %arrayidx37 = getelementptr inbounds float, float* %45, i64 %idxprom36, !dbg !177, !taffo.info !31, !taffo.target !33
  %49 = load float, float* %arrayidx37, align 4, !dbg !177, !taffo.info !31, !taffo.target !33
  %mul38 = fmul float %mul33, %49, !dbg !183, !taffo.info !120
  %add39 = fadd float %mul28, %mul38, !dbg !184, !taffo.info !120
  %50 = load float*, float** %Cs, align 8, !dbg !185, !taffo.info !31, !taffo.target !35
  %51 = load i32, i32* %i, align 4, !dbg !186, !taffo.info !36
  %52 = load i32, i32* %n, align 4, !dbg !187, !taffo.info !27
  %mul40 = mul nsw i32 %51, %52, !dbg !188, !taffo.info !154
  %53 = load i32, i32* %j, align 4, !dbg !189, !taffo.info !38
  %add41 = add nsw i32 %mul40, %53, !dbg !190, !taffo.info !158
  %idxprom42 = sext i32 %add41 to i64, !dbg !185, !taffo.info !158
  %arrayidx43 = getelementptr inbounds float, float* %50, i64 %idxprom42, !dbg !185, !taffo.info !31, !taffo.target !35
  %54 = load float, float* %arrayidx43, align 4, !dbg !191, !taffo.info !31, !taffo.target !35
  %add44 = fadd float %54, %add39, !dbg !191, !taffo.info !120, !taffo.target !35
  store float %add44, float* %arrayidx43, align 4, !dbg !191, !taffo.info !61, !taffo.target !35
  br label %for.inc45, !dbg !192

for.inc45:                                        ; preds = %for.body18
  %55 = load i32, i32* %j, align 4, !dbg !193, !taffo.info !38
  %inc46 = add nsw i32 %55, 1, !dbg !193, !taffo.info !194
  store i32 %inc46, i32* %j, align 4, !dbg !193, !taffo.info !61
  br label %for.cond16, !dbg !196, !llvm.loop !197

for.end47:                                        ; preds = %for.cond16
  br label %for.inc48, !dbg !202

for.inc48:                                        ; preds = %for.end47
  %56 = load i32, i32* %k, align 4, !dbg !203, !taffo.info !36
  %inc49 = add nsw i32 %56, 1, !dbg !203, !taffo.info !101
  store i32 %inc49, i32* %k, align 4, !dbg !203, !taffo.info !61
  br label %for.cond13, !dbg !204, !llvm.loop !205

for.end50:                                        ; preds = %for.cond13
  br label %for.inc51, !dbg !210

for.inc51:                                        ; preds = %for.end50
  %57 = load i32, i32* %i, align 4, !dbg !211, !taffo.info !36
  %inc52 = add nsw i32 %57, 1, !dbg !211, !taffo.info !101
  store i32 %inc52, i32* %i, align 4, !dbg !211, !taffo.info !61
  br label %for.cond, !dbg !212, !llvm.loop !213

for.end53:                                        ; preds = %for.cond
  %58 = bitcast i32* %k to i8*, !dbg !218, !taffo.info !120
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %58) #4, !dbg !218, !taffo.info !61
  %59 = bitcast i32* %j to i8*, !dbg !218, !taffo.info !36
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %59) #4, !dbg !218, !taffo.info !61
  %60 = bitcast i32* %i to i8*, !dbg !218, !taffo.info !36
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %60) #4, !dbg !218, !taffo.info !61
  %61 = bitcast float** %Cs to i8*, !dbg !218, !taffo.info !31, !taffo.target !35
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %61) #4, !dbg !218, !taffo.info !61, !taffo.target !35
  %62 = bitcast float** %Bs to i8*, !dbg !218, !taffo.info !31, !taffo.target !34
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %62) #4, !dbg !218, !taffo.info !61, !taffo.target !34
  %63 = bitcast float** %As to i8*, !dbg !218, !taffo.info !31, !taffo.target !33
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %63) #4, !dbg !218, !taffo.info !61, !taffo.target !33
  %64 = bitcast float* %betas to i8*, !dbg !218, !taffo.info !29
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %64) #4, !dbg !218, !taffo.info !61
  %65 = bitcast float* %alphas to i8*, !dbg !218, !taffo.info !29
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %65) #4, !dbg !218, !taffo.info !61
  %66 = bitcast i32* %m to i8*, !dbg !218, !taffo.info !27
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %66) #4, !dbg !218
  %67 = bitcast i32* %n to i8*, !dbg !218, !taffo.info !27
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %67) #4, !dbg !218
  ret void, !dbg !218
}

; Function Attrs: nounwind readnone speculatable
declare !taffo.funinfo !219 void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: inaccessiblememonly nounwind
declare !taffo.funinfo !11 void @llvm.sideeffect() #2

; Function Attrs: argmemonly nounwind
declare !taffo.funinfo !220 void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare !taffo.funinfo !221 void @llvm.var.annotation(i8*, i8*, i8*, i32) #4

; Function Attrs: argmemonly nounwind
declare !taffo.funinfo !220 void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #3

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
!29 = !{i1 false, !30, i1 false, i1 true}
!30 = !{double 0.000000e+00, double 5.000000e+00}
!31 = !{i1 false, !32, i1 false, i1 true}
!32 = !{double -1.638400e+04, double 1.638400e+04}
!33 = !{!"A"}
!34 = !{!"B"}
!35 = !{!"C"}
!36 = !{i1 false, !37, i1 false, i1 true}
!37 = !{double 0.000000e+00, double 1.000000e+00}
!38 = !{i1 false, !39, i1 false, i1 true}
!39 = !{double 0.000000e+00, double 2.000000e+00}
!40 = !DILocalVariable(name: "A", arg: 1, scope: !16, file: !17, line: 20, type: !20)
!41 = !DILocation(line: 20, column: 59, scope: !16)
!42 = !DILocalVariable(name: "B", arg: 2, scope: !16, file: !17, line: 20, type: !20)
!43 = !DILocation(line: 20, column: 69, scope: !16)
!44 = !DILocalVariable(name: "C", arg: 3, scope: !16, file: !17, line: 20, type: !20)
!45 = !DILocation(line: 20, column: 79, scope: !16)
!46 = !DILocalVariable(name: "alpha", arg: 4, scope: !16, file: !17, line: 20, type: !21)
!47 = !DILocation(line: 20, column: 88, scope: !16)
!48 = !DILocalVariable(name: "beta", arg: 5, scope: !16, file: !17, line: 20, type: !21)
!49 = !DILocation(line: 20, column: 101, scope: !16)
!50 = !DILocation(line: 23, column: 9, scope: !16)
!51 = !DILocation(line: 24, column: 9, scope: !16)
!52 = !DILocation(line: 25, column: 9, scope: !16)
!53 = !DILocation(line: 26, column: 2, scope: !16)
!54 = !DILocalVariable(name: "n", scope: !16, file: !17, line: 26, type: !55)
!55 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!56 = !DILocation(line: 26, column: 6, scope: !16)
!57 = !DILocation(line: 27, column: 3, scope: !16)
!58 = !DILocalVariable(name: "m", scope: !16, file: !17, line: 27, type: !55)
!59 = !DILocation(line: 27, column: 7, scope: !16)
!60 = !DILocation(line: 28, column: 3, scope: !16)
!61 = !{i1 false, i1 false, i1 false, i1 true}
!62 = !DILocalVariable(name: "alphas", scope: !16, file: !17, line: 28, type: !21)
!63 = !DILocation(line: 28, column: 9, scope: !16)
!64 = !DILocation(line: 29, column: 12, scope: !16)
!65 = !DILocation(line: 29, column: 10, scope: !16)
!66 = !DILocation(line: 30, column: 3, scope: !16)
!67 = !DILocalVariable(name: "betas", scope: !16, file: !17, line: 30, type: !21)
!68 = !DILocation(line: 30, column: 9, scope: !16)
!69 = !DILocation(line: 31, column: 9, scope: !16)
!70 = !DILocation(line: 31, column: 8, scope: !16)
!71 = !DILocation(line: 33, column: 3, scope: !16)
!72 = !DILocalVariable(name: "As", scope: !16, file: !17, line: 33, type: !20)
!73 = !DILocation(line: 33, column: 10, scope: !16)
!74 = !DILocation(line: 34, column: 8, scope: !16)
!75 = !DILocation(line: 34, column: 6, scope: !16)
!76 = !DILocation(line: 35, column: 3, scope: !16)
!77 = !DILocalVariable(name: "Bs", scope: !16, file: !17, line: 35, type: !20)
!78 = !DILocation(line: 35, column: 10, scope: !16)
!79 = !DILocation(line: 36, column: 8, scope: !16)
!80 = !DILocation(line: 36, column: 6, scope: !16)
!81 = !DILocation(line: 37, column: 3, scope: !16)
!82 = !DILocalVariable(name: "Cs", scope: !16, file: !17, line: 37, type: !20)
!83 = !DILocation(line: 37, column: 10, scope: !16)
!84 = !DILocation(line: 38, column: 8, scope: !16)
!85 = !DILocation(line: 38, column: 6, scope: !16)
!86 = !DILocation(line: 41, column: 3, scope: !16)
!87 = !DILocalVariable(name: "i", scope: !16, file: !17, line: 41, type: !55)
!88 = !DILocation(line: 41, column: 7, scope: !16)
!89 = !DILocation(line: 42, column: 3, scope: !16)
!90 = !DILocalVariable(name: "j", scope: !16, file: !17, line: 42, type: !55)
!91 = !DILocation(line: 42, column: 7, scope: !16)
!92 = !DILocation(line: 43, column: 3, scope: !16)
!93 = !DILocalVariable(name: "k", scope: !16, file: !17, line: 43, type: !55)
!94 = !DILocation(line: 43, column: 7, scope: !16)
!95 = !DILocation(line: 46, column: 27, scope: !96)
!96 = distinct !DILexicalBlock(scope: !16, file: !17, line: 46, column: 20)
!97 = !DILocation(line: 46, column: 25, scope: !96)
!98 = !DILocation(line: 46, column: 32, scope: !99)
!99 = distinct !DILexicalBlock(scope: !96, file: !17, line: 46, column: 20)
!100 = !DILocation(line: 46, column: 34, scope: !99)
!101 = !{i1 false, !102, i1 false, i1 true}
!102 = !{double 1.000000e+00, double 1.000000e+00}
!103 = !DILocation(line: 46, column: 20, scope: !96)
!104 = !DILocation(line: 46, column: 45, scope: !99)
!105 = !DILocation(line: 48, column: 26, scope: !106)
!106 = distinct !DILexicalBlock(scope: !107, file: !17, line: 48, column: 19)
!107 = distinct !DILexicalBlock(scope: !99, file: !17, line: 46, column: 45)
!108 = !DILocation(line: 48, column: 24, scope: !106)
!109 = !DILocation(line: 48, column: 31, scope: !110)
!110 = distinct !DILexicalBlock(scope: !106, file: !17, line: 48, column: 19)
!111 = !DILocation(line: 48, column: 36, scope: !110)
!112 = !DILocation(line: 48, column: 33, scope: !110)
!113 = !DILocation(line: 48, column: 19, scope: !106)
!114 = !DILocation(line: 50, column: 17, scope: !115)
!115 = distinct !DILexicalBlock(scope: !110, file: !17, line: 48, column: 43)
!116 = !DILocation(line: 50, column: 2, scope: !115)
!117 = !DILocation(line: 50, column: 5, scope: !115)
!118 = !DILocation(line: 50, column: 7, scope: !115)
!119 = !DILocation(line: 50, column: 6, scope: !115)
!120 = !{i1 false, !2, i1 false, i1 true}
!121 = !DILocation(line: 50, column: 11, scope: !115)
!122 = !DILocation(line: 50, column: 9, scope: !115)
!123 = !DILocation(line: 50, column: 14, scope: !115)
!124 = !DILocation(line: 51, column: 5, scope: !115)
!125 = !DILocation(line: 48, column: 40, scope: !110)
!126 = !DILocation(line: 48, column: 19, scope: !110)
!127 = distinct !{!127, !113, !128, !129, !131}
!128 = !DILocation(line: 51, column: 5, scope: !106)
!129 = !{!"llvm.loop.pipeline.enable", i32 1, i1 false, i8 -1, !"user", !130}
!130 = !DILocation(line: 49, column: 9, scope: !106)
!131 = !{!"llvm.loop.name", !"VITIS_LOOP_48_2"}
!132 = !DILocation(line: 52, column: 29, scope: !133)
!133 = distinct !DILexicalBlock(scope: !107, file: !17, line: 52, column: 22)
!134 = !DILocation(line: 52, column: 27, scope: !133)
!135 = !DILocation(line: 52, column: 34, scope: !136)
!136 = distinct !DILexicalBlock(scope: !133, file: !17, line: 52, column: 22)
!137 = !DILocation(line: 52, column: 36, scope: !136)
!138 = !DILocation(line: 52, column: 22, scope: !133)
!139 = !DILocation(line: 52, column: 46, scope: !136)
!140 = !DILocation(line: 54, column: 26, scope: !141)
!141 = distinct !DILexicalBlock(scope: !142, file: !17, line: 54, column: 19)
!142 = distinct !DILexicalBlock(scope: !136, file: !17, line: 52, column: 46)
!143 = !DILocation(line: 54, column: 24, scope: !141)
!144 = !DILocation(line: 54, column: 31, scope: !145)
!145 = distinct !DILexicalBlock(scope: !141, file: !17, line: 54, column: 19)
!146 = !DILocation(line: 54, column: 36, scope: !145)
!147 = !DILocation(line: 54, column: 33, scope: !145)
!148 = !DILocation(line: 54, column: 19, scope: !141)
!149 = !DILocation(line: 57, column: 15, scope: !150)
!150 = distinct !DILexicalBlock(scope: !145, file: !17, line: 55, column: 2)
!151 = !DILocation(line: 57, column: 18, scope: !150)
!152 = !DILocation(line: 57, column: 20, scope: !150)
!153 = !DILocation(line: 57, column: 19, scope: !150)
!154 = !{i1 false, !155, i1 false, i1 true}
!155 = !{double 0.000000e+00, double 1.600000e+01}
!156 = !DILocation(line: 57, column: 22, scope: !150)
!157 = !DILocation(line: 57, column: 21, scope: !150)
!158 = !{i1 false, !159, i1 false, i1 true}
!159 = !{double 0.000000e+00, double 1.700000e+01}
!160 = !DILocation(line: 57, column: 25, scope: !150)
!161 = !DILocation(line: 57, column: 24, scope: !150)
!162 = !DILocation(line: 57, column: 32, scope: !150)
!163 = !DILocation(line: 57, column: 35, scope: !150)
!164 = !DILocation(line: 57, column: 37, scope: !150)
!165 = !DILocation(line: 57, column: 36, scope: !150)
!166 = !DILocation(line: 57, column: 39, scope: !150)
!167 = !DILocation(line: 57, column: 38, scope: !150)
!168 = !DILocation(line: 57, column: 31, scope: !150)
!169 = !DILocation(line: 57, column: 44, scope: !150)
!170 = !DILocation(line: 57, column: 47, scope: !150)
!171 = !DILocation(line: 57, column: 49, scope: !150)
!172 = !DILocation(line: 57, column: 48, scope: !150)
!173 = !DILocation(line: 57, column: 51, scope: !150)
!174 = !DILocation(line: 57, column: 50, scope: !150)
!175 = !DILocation(line: 57, column: 54, scope: !150)
!176 = !DILocation(line: 57, column: 53, scope: !150)
!177 = !DILocation(line: 57, column: 61, scope: !150)
!178 = !DILocation(line: 57, column: 64, scope: !150)
!179 = !DILocation(line: 57, column: 66, scope: !150)
!180 = !DILocation(line: 57, column: 65, scope: !150)
!181 = !DILocation(line: 57, column: 68, scope: !150)
!182 = !DILocation(line: 57, column: 67, scope: !150)
!183 = !DILocation(line: 57, column: 60, scope: !150)
!184 = !DILocation(line: 57, column: 42, scope: !150)
!185 = !DILocation(line: 57, column: 2, scope: !150)
!186 = !DILocation(line: 57, column: 5, scope: !150)
!187 = !DILocation(line: 57, column: 7, scope: !150)
!188 = !DILocation(line: 57, column: 6, scope: !150)
!189 = !DILocation(line: 57, column: 9, scope: !150)
!190 = !DILocation(line: 57, column: 8, scope: !150)
!191 = !DILocation(line: 57, column: 12, scope: !150)
!192 = !DILocation(line: 58, column: 2, scope: !150)
!193 = !DILocation(line: 54, column: 40, scope: !145)
!194 = !{i1 false, !195, i1 false, i1 true}
!195 = !{double 1.000000e+00, double 2.000000e+00}
!196 = !DILocation(line: 54, column: 19, scope: !145)
!197 = distinct !{!197, !148, !198, !199, !201}
!198 = !DILocation(line: 58, column: 2, scope: !141)
!199 = !{!"llvm.loop.pipeline.enable", i32 1, i1 false, i8 -1, !"user", !200}
!200 = !DILocation(line: 56, column: 9, scope: !141)
!201 = !{!"llvm.loop.name", !"VITIS_LOOP_54_4"}
!202 = !DILocation(line: 59, column: 5, scope: !142)
!203 = !DILocation(line: 52, column: 43, scope: !136)
!204 = !DILocation(line: 52, column: 22, scope: !136)
!205 = distinct !{!205, !138, !206, !207, !209}
!206 = !DILocation(line: 59, column: 5, scope: !133)
!207 = !{!"llvm.loop.pipeline.enable", i32 1, i1 false, i8 -1, !"user", !208}
!208 = !DILocation(line: 53, column: 9, scope: !133)
!209 = !{!"llvm.loop.name", !"VITIS_LOOP_52_3"}
!210 = !DILocation(line: 60, column: 3, scope: !107)
!211 = !DILocation(line: 46, column: 41, scope: !99)
!212 = !DILocation(line: 46, column: 20, scope: !99)
!213 = distinct !{!213, !103, !214, !215, !217}
!214 = !DILocation(line: 60, column: 3, scope: !96)
!215 = !{!"llvm.loop.unroll.count", i32 4, !"user", !216}
!216 = !DILocation(line: 47, column: 9, scope: !96)
!217 = !{!"llvm.loop.name", !"VITIS_LOOP_46_1"}
!218 = !DILocation(line: 64, column: 1, scope: !16)
!219 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!220 = !{i32 0, i1 false, i32 0, i1 false}
!221 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
