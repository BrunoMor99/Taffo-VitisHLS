; ModuleID = '/home/bruno/Desktop/benchmarks/doitgen/intermediate/output.3.magiclangtmp.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.global_ctors = appending global [0 x { i32, void ()*, i8* }] zeroinitializer, !taffo.structinfo !0
@.str = private unnamed_addr constant [21 x i8] c"scalar(range(0, 16))\00", section "llvm.metadata", !taffo.info !3
@.str.1 = private unnamed_addr constant [16 x i8] c"doitgen_taffo.c\00", section "llvm.metadata", !taffo.info !5
@.str.2 = private unnamed_addr constant [36 x i8] c"target('As') scalar(range(-32, 31))\00", section "llvm.metadata", !taffo.info !5
@.str.3 = private unnamed_addr constant [36 x i8] c"target(sums) scalar(range(-32, 31))\00", section "llvm.metadata", !taffo.info !7
@.str.4 = private unnamed_addr constant [36 x i8] c"target('Cs') scalar(range(-32, 31))\00", section "llvm.metadata", !taffo.info !5

; Function Attrs: nounwind
define void @doitgen(float* %A, float* %C, float* %sum) #0 !dbg !16 !fpga.function.pragma !22 !taffo.start !25 !taffo.funinfo !26 {
entry:
  %A.addr = alloca float*, align 8, !taffo.info !1
  %C.addr = alloca float*, align 8
  %sum.addr = alloca float*, align 8, !taffo.info !1
  %nr = alloca i32, align 4, !taffo.info !27
  %nq = alloca i32, align 4, !taffo.info !27
  %np = alloca i32, align 4, !taffo.info !27
  %r = alloca i32, align 4, !taffo.info !29
  %q = alloca i32, align 4, !taffo.info !29
  %p = alloca i32, align 4, !taffo.info !29
  %s = alloca i32, align 4, !taffo.info !29
  %i = alloca i32, align 4, !taffo.info !29
  %j = alloca i32, align 4, !taffo.info !29
  %k = alloca i32, align 4, !taffo.info !29
  %As = alloca float*, align 8, !taffo.info !31, !taffo.target !34
  %sums = alloca float*, align 8, !taffo.info !1
  %Cs = alloca float*, align 8, !taffo.info !31, !taffo.target !35
  store float* %A, float** %A.addr, align 8
  call void @llvm.dbg.declare(metadata float** %A.addr, metadata !36, metadata !DIExpression()), !dbg !37
  store float* %C, float** %C.addr, align 8
  call void @llvm.dbg.declare(metadata float** %C.addr, metadata !38, metadata !DIExpression()), !dbg !39
  store float* %sum, float** %sum.addr, align 8
  call void @llvm.dbg.declare(metadata float** %sum.addr, metadata !40, metadata !DIExpression()), !dbg !41
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %A, [0 x i8] zeroinitializer, i64 4096, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !42
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %C, [0 x i8] zeroinitializer, i64 256, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !43
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %sum, [0 x i8] zeroinitializer, i64 16, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !44
  call void @llvm.sideeffect() #5 [ "xlx_array_partition"(float* %A, i32 1, i32 4, i32 1, i1 false) ], !dbg !45
  call void @llvm.sideeffect() #5 [ "xlx_array_partition"(float* %C, i32 1, i32 4, i32 1, i1 false) ], !dbg !46
  %0 = bitcast i32* %nr to i8*, !dbg !47
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !47
  call void @llvm.dbg.declare(metadata i32* %nr, metadata !48, metadata !DIExpression()), !dbg !50
  store i32 16, i32* %nr, align 4, !dbg !50
  %1 = bitcast i32* %nq to i8*, !dbg !51
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !51
  call void @llvm.dbg.declare(metadata i32* %nq, metadata !52, metadata !DIExpression()), !dbg !53
  store i32 16, i32* %nq, align 4, !dbg !53
  %2 = bitcast i32* %np to i8*, !dbg !54
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !54
  call void @llvm.dbg.declare(metadata i32* %np, metadata !55, metadata !DIExpression()), !dbg !56
  store i32 16, i32* %np, align 4, !dbg !56
  %3 = bitcast i32* %r to i8*, !dbg !57, !taffo.info !29
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !57, !taffo.info !58
  call void @llvm.dbg.declare(metadata i32* %r, metadata !59, metadata !DIExpression()), !dbg !60
  %r1 = bitcast i32* %r to i8*, !dbg !57, !taffo.info !29
  %4 = bitcast i32* %q to i8*, !dbg !61, !taffo.info !29
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !61, !taffo.info !58
  call void @llvm.dbg.declare(metadata i32* %q, metadata !62, metadata !DIExpression()), !dbg !63
  %q2 = bitcast i32* %q to i8*, !dbg !61, !taffo.info !29
  %5 = bitcast i32* %p to i8*, !dbg !64, !taffo.info !29
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !64, !taffo.info !58
  call void @llvm.dbg.declare(metadata i32* %p, metadata !65, metadata !DIExpression()), !dbg !66
  %p3 = bitcast i32* %p to i8*, !dbg !64, !taffo.info !29
  %6 = bitcast i32* %s to i8*, !dbg !67, !taffo.info !29
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !67, !taffo.info !58
  call void @llvm.dbg.declare(metadata i32* %s, metadata !68, metadata !DIExpression()), !dbg !69
  %s4 = bitcast i32* %s to i8*, !dbg !67, !taffo.info !29
  %7 = bitcast i32* %i to i8*, !dbg !70, !taffo.info !29
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4, !dbg !70, !taffo.info !58
  call void @llvm.dbg.declare(metadata i32* %i, metadata !71, metadata !DIExpression()), !dbg !72
  %i5 = bitcast i32* %i to i8*, !dbg !70, !taffo.info !29
  %8 = bitcast i32* %j to i8*, !dbg !73, !taffo.info !29
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4, !dbg !73, !taffo.info !58
  call void @llvm.dbg.declare(metadata i32* %j, metadata !74, metadata !DIExpression()), !dbg !75
  %j6 = bitcast i32* %j to i8*, !dbg !73, !taffo.info !29
  %9 = bitcast i32* %k to i8*, !dbg !76, !taffo.info !29
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #4, !dbg !76, !taffo.info !58
  call void @llvm.dbg.declare(metadata i32* %k, metadata !77, metadata !DIExpression()), !dbg !78
  %k7 = bitcast i32* %k to i8*, !dbg !76, !taffo.info !29
  %10 = bitcast float** %As to i8*, !dbg !79, !taffo.info !80, !taffo.target !34
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %10) #4, !dbg !79, !taffo.info !58, !taffo.target !34
  call void @llvm.dbg.declare(metadata float** %As, metadata !81, metadata !DIExpression()), !dbg !82
  %As8 = bitcast float** %As to i8*, !dbg !79, !taffo.info !80, !taffo.target !34
  %11 = load float*, float** %A.addr, align 8, !dbg !83, !taffo.info !1
  store float* %11, float** %As, align 8, !dbg !84, !taffo.info !58, !taffo.target !34
  %12 = bitcast float** %sums to i8*, !dbg !85
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %12) #4, !dbg !85
  call void @llvm.dbg.declare(metadata float** %sums, metadata !86, metadata !DIExpression()), !dbg !87
  %sums9 = bitcast float** %sums to i8*, !dbg !85
  call void @llvm.var.annotation(i8* %sums9, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 44), !dbg !85
  %13 = load float*, float** %sum.addr, align 8, !dbg !88, !taffo.info !1
  store float* %13, float** %sums, align 8, !dbg !89
  %14 = bitcast float** %Cs to i8*, !dbg !90, !taffo.info !80, !taffo.target !35
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %14) #4, !dbg !90, !taffo.info !58, !taffo.target !35
  call void @llvm.dbg.declare(metadata float** %Cs, metadata !91, metadata !DIExpression()), !dbg !92
  %Cs10 = bitcast float** %Cs to i8*, !dbg !90, !taffo.info !80, !taffo.target !35
  %15 = load float*, float** %C.addr, align 8, !dbg !93
  store float* %15, float** %Cs, align 8, !dbg !94, !taffo.info !58, !taffo.target !35
  br label %VITIS_LOOP_50_1, !dbg !95

VITIS_LOOP_50_1:                                  ; preds = %entry
  store i32 0, i32* %r, align 4, !dbg !96, !taffo.info !58
  br label %for.cond, !dbg !98

for.cond:                                         ; preds = %for.inc52, %VITIS_LOOP_50_1
  %16 = load i32, i32* %r, align 4, !dbg !99, !taffo.info !101
  %cmp = icmp slt i32 %16, 16, !dbg !103, !taffo.info !104
  br i1 %cmp, label %for.body, label %for.end54, !dbg !106, !taffo.info !58

for.body:                                         ; preds = %for.cond
  br label %VITIS_LOOP_52_2, !dbg !107

VITIS_LOOP_52_2:                                  ; preds = %for.body
  store i32 0, i32* %q, align 4, !dbg !108, !taffo.info !58
  br label %for.cond11, !dbg !111

for.cond11:                                       ; preds = %for.inc49, %VITIS_LOOP_52_2
  %17 = load i32, i32* %q, align 4, !dbg !112, !taffo.info !101
  %cmp12 = icmp slt i32 %17, 16, !dbg !114, !taffo.info !104
  br i1 %cmp12, label %for.body13, label %for.end51, !dbg !115, !taffo.info !58

for.body13:                                       ; preds = %for.cond11
  br label %VITIS_LOOP_54_3, !dbg !116

VITIS_LOOP_54_3:                                  ; preds = %for.body13
  store i32 0, i32* %p, align 4, !dbg !117, !taffo.info !58
  br label %for.cond14, !dbg !120

for.cond14:                                       ; preds = %for.inc32, %VITIS_LOOP_54_3
  %18 = load i32, i32* %p, align 4, !dbg !121, !taffo.info !101
  %cmp15 = icmp slt i32 %18, 16, !dbg !123, !taffo.info !104
  br i1 %cmp15, label %for.body16, label %for.end34, !dbg !124, !taffo.info !58

for.body16:                                       ; preds = %for.cond14
  %19 = load float*, float** %sums, align 8, !dbg !125, !taffo.info !1
  %20 = load i32, i32* %p, align 4, !dbg !127, !taffo.info !29
  %idxprom = sext i32 %20 to i64, !dbg !125, !taffo.info !29
  %arrayidx = getelementptr inbounds float, float* %19, i64 %idxprom, !dbg !125, !taffo.info !128
  store float 0.000000e+00, float* %arrayidx, align 4, !dbg !130, !taffo.info !58
  br label %VITIS_LOOP_57_4, !dbg !125

VITIS_LOOP_57_4:                                  ; preds = %for.body16
  store i32 0, i32* %s, align 4, !dbg !131, !taffo.info !58
  br label %for.cond17, !dbg !133

for.cond17:                                       ; preds = %for.inc, %VITIS_LOOP_57_4
  %21 = load i32, i32* %s, align 4, !dbg !134, !taffo.info !101
  %cmp18 = icmp slt i32 %21, 16, !dbg !136, !taffo.info !104
  br i1 %cmp18, label %for.body19, label %for.end, !dbg !137, !taffo.info !58

for.body19:                                       ; preds = %for.cond17
  %22 = load float*, float** %As, align 8, !dbg !138, !taffo.info !31, !taffo.target !34
  %23 = load i32, i32* %r, align 4, !dbg !140, !taffo.info !29
  %24 = load i32, i32* %nq, align 4, !dbg !141, !taffo.info !27
  %mul = mul nsw i32 %23, %24, !dbg !142, !taffo.info !143
  %25 = load i32, i32* %q, align 4, !dbg !145, !taffo.info !29
  %26 = load i32, i32* %np, align 4, !dbg !146, !taffo.info !27
  %mul20 = mul nsw i32 %25, %26, !dbg !147, !taffo.info !143
  %add = add nsw i32 %mul, %mul20, !dbg !148, !taffo.info !149
  %27 = load i32, i32* %s, align 4, !dbg !151, !taffo.info !29
  %add21 = add nsw i32 %add, %27, !dbg !152, !taffo.info !153
  %idxprom22 = sext i32 %add21 to i64, !dbg !138, !taffo.info !153
  %arrayidx23 = getelementptr inbounds float, float* %22, i64 %idxprom22, !dbg !138, !taffo.info !31, !taffo.target !34
  %28 = load float, float* %arrayidx23, align 4, !dbg !138, !taffo.info !31, !taffo.target !34
  %29 = load float*, float** %Cs, align 8, !dbg !155, !taffo.info !31, !taffo.target !35
  %30 = load i32, i32* %s, align 4, !dbg !156, !taffo.info !29
  %mul24 = mul nsw i32 %30, 16, !dbg !157, !taffo.info !143
  %31 = load i32, i32* %p, align 4, !dbg !158, !taffo.info !29
  %add25 = add nsw i32 %mul24, %31, !dbg !159, !taffo.info !160
  %idxprom26 = sext i32 %add25 to i64, !dbg !155, !taffo.info !160
  %arrayidx27 = getelementptr inbounds float, float* %29, i64 %idxprom26, !dbg !155, !taffo.info !31, !taffo.target !35
  %32 = load float, float* %arrayidx27, align 4, !dbg !155, !taffo.info !31, !taffo.target !35
  %mul28 = fmul float %28, %32, !dbg !162, !taffo.info !128, !taffo.target !34
  %33 = load float*, float** %sums, align 8, !dbg !163, !taffo.info !1
  %34 = load i32, i32* %p, align 4, !dbg !164, !taffo.info !29
  %idxprom29 = sext i32 %34 to i64, !dbg !163, !taffo.info !29
  %arrayidx30 = getelementptr inbounds float, float* %33, i64 %idxprom29, !dbg !163, !taffo.info !128
  %35 = load float, float* %arrayidx30, align 4, !dbg !165, !taffo.info !128
  %add31 = fadd float %35, %mul28, !dbg !165, !taffo.info !128
  store float %add31, float* %arrayidx30, align 4, !dbg !165, !taffo.info !58
  br label %for.inc, !dbg !166

for.inc:                                          ; preds = %for.body19
  %36 = load i32, i32* %s, align 4, !dbg !167, !taffo.info !29
  %inc = add nsw i32 %36, 1, !dbg !167, !taffo.info !168
  store i32 %inc, i32* %s, align 4, !dbg !167, !taffo.info !58
  br label %for.cond17, !dbg !170, !llvm.loop !171

for.end:                                          ; preds = %for.cond17
  br label %for.inc32, !dbg !176

for.inc32:                                        ; preds = %for.end
  %37 = load i32, i32* %p, align 4, !dbg !177, !taffo.info !29
  %inc33 = add nsw i32 %37, 1, !dbg !177, !taffo.info !168
  store i32 %inc33, i32* %p, align 4, !dbg !177, !taffo.info !58
  br label %for.cond14, !dbg !178, !llvm.loop !179

for.end34:                                        ; preds = %for.cond14
  br label %VITIS_LOOP_64_5, !dbg !180

VITIS_LOOP_64_5:                                  ; preds = %for.end34
  store i32 0, i32* %p, align 4, !dbg !184, !taffo.info !58
  br label %for.cond35, !dbg !186

for.cond35:                                       ; preds = %for.inc46, %VITIS_LOOP_64_5
  %38 = load i32, i32* %p, align 4, !dbg !187, !taffo.info !101
  %cmp36 = icmp slt i32 %38, 16, !dbg !189, !taffo.info !104
  br i1 %cmp36, label %for.body37, label %for.end48, !dbg !190, !taffo.info !58

for.body37:                                       ; preds = %for.cond35
  %39 = load float*, float** %sums, align 8, !dbg !191, !taffo.info !1
  %40 = load i32, i32* %p, align 4, !dbg !193, !taffo.info !29
  %idxprom38 = sext i32 %40 to i64, !dbg !191, !taffo.info !29
  %arrayidx39 = getelementptr inbounds float, float* %39, i64 %idxprom38, !dbg !191, !taffo.info !128
  %41 = load float, float* %arrayidx39, align 4, !dbg !191, !taffo.info !128
  %42 = load float*, float** %As, align 8, !dbg !194, !taffo.info !31, !taffo.target !34
  %43 = load i32, i32* %r, align 4, !dbg !195, !taffo.info !101
  %44 = load i32, i32* %nq, align 4, !dbg !196, !taffo.info !27
  %mul40 = mul nsw i32 %43, %44, !dbg !197, !taffo.info !160
  %45 = load i32, i32* %q, align 4, !dbg !198, !taffo.info !101
  %46 = load i32, i32* %np, align 4, !dbg !199, !taffo.info !27
  %mul41 = mul nsw i32 %45, %46, !dbg !200, !taffo.info !160
  %add42 = add nsw i32 %mul40, %mul41, !dbg !201, !taffo.info !202
  %47 = load i32, i32* %p, align 4, !dbg !204, !taffo.info !29
  %add43 = add nsw i32 %add42, %47, !dbg !205, !taffo.info !206
  %idxprom44 = sext i32 %add43 to i64, !dbg !194, !taffo.info !206
  %arrayidx45 = getelementptr inbounds float, float* %42, i64 %idxprom44, !dbg !194, !taffo.info !31, !taffo.target !34
  store float %41, float* %arrayidx45, align 4, !dbg !208, !taffo.info !58, !taffo.target !34
  br label %for.inc46, !dbg !209

for.inc46:                                        ; preds = %for.body37
  %48 = load i32, i32* %p, align 4, !dbg !210, !taffo.info !29
  %inc47 = add nsw i32 %48, 1, !dbg !210, !taffo.info !168
  store i32 %inc47, i32* %p, align 4, !dbg !210, !taffo.info !58
  br label %for.cond35, !dbg !211, !llvm.loop !212

for.end48:                                        ; preds = %for.cond35
  br label %for.inc49, !dbg !217

for.inc49:                                        ; preds = %for.end48
  %49 = load i32, i32* %q, align 4, !dbg !218, !taffo.info !29
  %inc50 = add nsw i32 %49, 1, !dbg !218, !taffo.info !168
  store i32 %inc50, i32* %q, align 4, !dbg !218, !taffo.info !58
  br label %for.cond11, !dbg !219, !llvm.loop !220

for.end51:                                        ; preds = %for.cond11
  br label %for.inc52, !dbg !225

for.inc52:                                        ; preds = %for.end51
  %50 = load i32, i32* %r, align 4, !dbg !226, !taffo.info !29
  %inc53 = add nsw i32 %50, 1, !dbg !226, !taffo.info !168
  store i32 %inc53, i32* %r, align 4, !dbg !226, !taffo.info !58
  br label %for.cond, !dbg !227, !llvm.loop !228

for.end54:                                        ; preds = %for.cond
  %51 = bitcast float** %Cs to i8*, !dbg !233, !taffo.info !80, !taffo.target !35
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %51) #4, !dbg !233, !taffo.info !58, !taffo.target !35
  %52 = bitcast float** %sums to i8*, !dbg !233, !taffo.info !1
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %52) #4, !dbg !233
  %53 = bitcast float** %As to i8*, !dbg !233, !taffo.info !80, !taffo.target !34
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %53) #4, !dbg !233, !taffo.info !58, !taffo.target !34
  %54 = bitcast i32* %k to i8*, !dbg !233, !taffo.info !29
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %54) #4, !dbg !233, !taffo.info !58
  %55 = bitcast i32* %j to i8*, !dbg !233, !taffo.info !29
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %55) #4, !dbg !233, !taffo.info !58
  %56 = bitcast i32* %i to i8*, !dbg !233, !taffo.info !29
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %56) #4, !dbg !233, !taffo.info !58
  %57 = bitcast i32* %s to i8*, !dbg !233, !taffo.info !29
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %57) #4, !dbg !233, !taffo.info !58
  %58 = bitcast i32* %p to i8*, !dbg !233, !taffo.info !29
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %58) #4, !dbg !233, !taffo.info !58
  %59 = bitcast i32* %q to i8*, !dbg !233, !taffo.info !29
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %59) #4, !dbg !233, !taffo.info !58
  %60 = bitcast i32* %r to i8*, !dbg !233, !taffo.info !29
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %60) #4, !dbg !233, !taffo.info !58
  %61 = bitcast i32* %np to i8*, !dbg !233, !taffo.info !27
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %61) #4, !dbg !233
  %62 = bitcast i32* %nq to i8*, !dbg !233, !taffo.info !27
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %62) #4, !dbg !233
  %63 = bitcast i32* %nr to i8*, !dbg !233, !taffo.info !27
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %63) #4, !dbg !233
  ret void, !dbg !233
}

; Function Attrs: nounwind readnone speculatable
declare !taffo.funinfo !234 void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: inaccessiblememonly nounwind
declare !taffo.funinfo !11 void @llvm.sideeffect() #2

; Function Attrs: argmemonly nounwind
declare !taffo.funinfo !235 void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare !taffo.funinfo !236 void @llvm.var.annotation(i8*, i8*, i8*, i32) #4

; Function Attrs: argmemonly nounwind
declare !taffo.funinfo !235 void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #3

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.top.func"="doitgen" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!6 = !{double 0.000000e+00, double 1.160000e+02}
!7 = !{i1 false, !8, i1 false, i1 false}
!8 = !{double 0.000000e+00, double 1.170000e+02}
!9 = distinct !DICompileUnit(language: DW_LANG_C99, file: !10, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11)
!10 = !DIFile(filename: "/home/bruno/Desktop/benchmarks/doitgen/proj_doitgen/solution1/.autopilot/db/doitgen_taffo.pp.0.c", directory: "/home/bruno/Desktop/benchmarks/doitgen")
!11 = !{}
!12 = !{!"clang version 7.0.0 "}
!13 = !{i32 2, !"Dwarf Version", i32 4}
!14 = !{i32 2, !"Debug Info Version", i32 3}
!15 = !{i32 1, !"wchar_size", i32 4}
!16 = distinct !DISubprogram(name: "doitgen", scope: !17, file: !17, line: 24, type: !18, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !11)
!17 = !DIFile(filename: "doitgen_taffo.c", directory: "/home/bruno/Desktop/benchmarks/doitgen")
!18 = !DISubroutineType(types: !19)
!19 = !{null, !20, !20, !20}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!22 = !{!23}
!23 = !{!"fpga.top", !"user", !24}
!24 = !DILocation(line: 24, column: 16, scope: !16)
!25 = !{i1 true}
!26 = !{i32 1, !1, i32 0, i1 false, i32 1, !1}
!27 = !{i1 false, !28, i1 false, i1 false}
!28 = !{double 1.600000e+01, double 1.600000e+01}
!29 = !{i1 false, !30, i1 false, i1 true}
!30 = !{double 0.000000e+00, double 1.600000e+01}
!31 = !{!32, !33, i1 false, i1 true}
!32 = !{!"fixp", i32 -32, i32 25}
!33 = !{double -3.200000e+01, double 3.100000e+01}
!34 = !{!"As"}
!35 = !{!"Cs"}
!36 = !DILocalVariable(name: "A", arg: 1, scope: !16, file: !17, line: 24, type: !20)
!37 = !DILocation(line: 24, column: 63, scope: !16)
!38 = !DILocalVariable(name: "C", arg: 2, scope: !16, file: !17, line: 24, type: !20)
!39 = !DILocation(line: 24, column: 74, scope: !16)
!40 = !DILocalVariable(name: "sum", arg: 3, scope: !16, file: !17, line: 24, type: !20)
!41 = !DILocation(line: 24, column: 84, scope: !16)
!42 = !DILocation(line: 26, column: 9, scope: !16)
!43 = !DILocation(line: 27, column: 9, scope: !16)
!44 = !DILocation(line: 28, column: 9, scope: !16)
!45 = !DILocation(line: 29, column: 9, scope: !16)
!46 = !DILocation(line: 30, column: 9, scope: !16)
!47 = !DILocation(line: 31, column: 2, scope: !16)
!48 = !DILocalVariable(name: "nr", scope: !16, file: !17, line: 31, type: !49)
!49 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!50 = !DILocation(line: 31, column: 6, scope: !16)
!51 = !DILocation(line: 32, column: 3, scope: !16)
!52 = !DILocalVariable(name: "nq", scope: !16, file: !17, line: 32, type: !49)
!53 = !DILocation(line: 32, column: 7, scope: !16)
!54 = !DILocation(line: 33, column: 3, scope: !16)
!55 = !DILocalVariable(name: "np", scope: !16, file: !17, line: 33, type: !49)
!56 = !DILocation(line: 33, column: 7, scope: !16)
!57 = !DILocation(line: 34, column: 4, scope: !16)
!58 = !{i1 false, i1 false, i1 false, i1 true}
!59 = !DILocalVariable(name: "r", scope: !16, file: !17, line: 34, type: !49)
!60 = !DILocation(line: 34, column: 8, scope: !16)
!61 = !DILocation(line: 35, column: 3, scope: !16)
!62 = !DILocalVariable(name: "q", scope: !16, file: !17, line: 35, type: !49)
!63 = !DILocation(line: 35, column: 7, scope: !16)
!64 = !DILocation(line: 36, column: 3, scope: !16)
!65 = !DILocalVariable(name: "p", scope: !16, file: !17, line: 36, type: !49)
!66 = !DILocation(line: 36, column: 7, scope: !16)
!67 = !DILocation(line: 37, column: 3, scope: !16)
!68 = !DILocalVariable(name: "s", scope: !16, file: !17, line: 37, type: !49)
!69 = !DILocation(line: 37, column: 7, scope: !16)
!70 = !DILocation(line: 39, column: 3, scope: !16)
!71 = !DILocalVariable(name: "i", scope: !16, file: !17, line: 39, type: !49)
!72 = !DILocation(line: 39, column: 7, scope: !16)
!73 = !DILocation(line: 40, column: 3, scope: !16)
!74 = !DILocalVariable(name: "j", scope: !16, file: !17, line: 40, type: !49)
!75 = !DILocation(line: 40, column: 7, scope: !16)
!76 = !DILocation(line: 41, column: 3, scope: !16)
!77 = !DILocalVariable(name: "k", scope: !16, file: !17, line: 41, type: !49)
!78 = !DILocation(line: 41, column: 7, scope: !16)
!79 = !DILocation(line: 42, column: 3, scope: !16)
!80 = !{!32, i1 false, i1 false, i1 true}
!81 = !DILocalVariable(name: "As", scope: !16, file: !17, line: 42, type: !20)
!82 = !DILocation(line: 42, column: 10, scope: !16)
!83 = !DILocation(line: 43, column: 8, scope: !16)
!84 = !DILocation(line: 43, column: 6, scope: !16)
!85 = !DILocation(line: 44, column: 3, scope: !16)
!86 = !DILocalVariable(name: "sums", scope: !16, file: !17, line: 44, type: !20)
!87 = !DILocation(line: 44, column: 10, scope: !16)
!88 = !DILocation(line: 45, column: 10, scope: !16)
!89 = !DILocation(line: 45, column: 8, scope: !16)
!90 = !DILocation(line: 46, column: 3, scope: !16)
!91 = !DILocalVariable(name: "Cs", scope: !16, file: !17, line: 46, type: !20)
!92 = !DILocation(line: 46, column: 10, scope: !16)
!93 = !DILocation(line: 47, column: 8, scope: !16)
!94 = !DILocation(line: 47, column: 6, scope: !16)
!95 = !DILocation(line: 47, column: 3, scope: !16)
!96 = !DILocation(line: 50, column: 27, scope: !97)
!97 = distinct !DILexicalBlock(scope: !16, file: !17, line: 50, column: 20)
!98 = !DILocation(line: 50, column: 25, scope: !97)
!99 = !DILocation(line: 50, column: 32, scope: !100)
!100 = distinct !DILexicalBlock(scope: !97, file: !17, line: 50, column: 20)
!101 = !{i1 false, !102, i1 false, i1 true}
!102 = !{double 0.000000e+00, double 1.700000e+01}
!103 = !DILocation(line: 50, column: 34, scope: !100)
!104 = !{i1 false, !105, i1 false, i1 true}
!105 = !{double 0.000000e+00, double 1.000000e+00}
!106 = !DILocation(line: 50, column: 20, scope: !97)
!107 = !DILocation(line: 50, column: 44, scope: !100)
!108 = !DILocation(line: 52, column: 26, scope: !109)
!109 = distinct !DILexicalBlock(scope: !110, file: !17, line: 52, column: 19)
!110 = distinct !DILexicalBlock(scope: !100, file: !17, line: 50, column: 44)
!111 = !DILocation(line: 52, column: 24, scope: !109)
!112 = !DILocation(line: 52, column: 31, scope: !113)
!113 = distinct !DILexicalBlock(scope: !109, file: !17, line: 52, column: 19)
!114 = !DILocation(line: 52, column: 33, scope: !113)
!115 = !DILocation(line: 52, column: 19, scope: !109)
!116 = !DILocation(line: 52, column: 44, scope: !113)
!117 = !DILocation(line: 54, column: 26, scope: !118)
!118 = distinct !DILexicalBlock(scope: !119, file: !17, line: 54, column: 19)
!119 = distinct !DILexicalBlock(scope: !113, file: !17, line: 52, column: 44)
!120 = !DILocation(line: 54, column: 24, scope: !118)
!121 = !DILocation(line: 54, column: 31, scope: !122)
!122 = distinct !DILexicalBlock(scope: !118, file: !17, line: 54, column: 19)
!123 = !DILocation(line: 54, column: 33, scope: !122)
!124 = !DILocation(line: 54, column: 19, scope: !118)
!125 = !DILocation(line: 56, column: 2, scope: !126)
!126 = distinct !DILexicalBlock(scope: !122, file: !17, line: 54, column: 44)
!127 = !DILocation(line: 56, column: 7, scope: !126)
!128 = !{!129, !2, i1 false, i1 true}
!129 = !{!"fixp", i32 32, i32 32}
!130 = !DILocation(line: 56, column: 10, scope: !126)
!131 = !DILocation(line: 57, column: 30, scope: !132)
!132 = distinct !DILexicalBlock(scope: !126, file: !17, line: 57, column: 23)
!133 = !DILocation(line: 57, column: 28, scope: !132)
!134 = !DILocation(line: 57, column: 35, scope: !135)
!135 = distinct !DILexicalBlock(scope: !132, file: !17, line: 57, column: 23)
!136 = !DILocation(line: 57, column: 37, scope: !135)
!137 = !DILocation(line: 57, column: 23, scope: !132)
!138 = !DILocation(line: 59, column: 13, scope: !139)
!139 = distinct !DILexicalBlock(scope: !135, file: !17, line: 57, column: 47)
!140 = !DILocation(line: 59, column: 16, scope: !139)
!141 = !DILocation(line: 59, column: 18, scope: !139)
!142 = !DILocation(line: 59, column: 17, scope: !139)
!143 = !{i1 false, !144, i1 false, i1 true}
!144 = !{double 0.000000e+00, double 2.560000e+02}
!145 = !DILocation(line: 59, column: 21, scope: !139)
!146 = !DILocation(line: 59, column: 23, scope: !139)
!147 = !DILocation(line: 59, column: 22, scope: !139)
!148 = !DILocation(line: 59, column: 20, scope: !139)
!149 = !{i1 false, !150, i1 false, i1 true}
!150 = !{double 0.000000e+00, double 5.120000e+02}
!151 = !DILocation(line: 59, column: 26, scope: !139)
!152 = !DILocation(line: 59, column: 25, scope: !139)
!153 = !{i1 false, !154, i1 false, i1 true}
!154 = !{double 0.000000e+00, double 5.280000e+02}
!155 = !DILocation(line: 59, column: 31, scope: !139)
!156 = !DILocation(line: 59, column: 34, scope: !139)
!157 = !DILocation(line: 59, column: 36, scope: !139)
!158 = !DILocation(line: 59, column: 43, scope: !139)
!159 = !DILocation(line: 59, column: 41, scope: !139)
!160 = !{i1 false, !161, i1 false, i1 true}
!161 = !{double 0.000000e+00, double 2.720000e+02}
!162 = !DILocation(line: 59, column: 29, scope: !139)
!163 = !DILocation(line: 59, column: 2, scope: !139)
!164 = !DILocation(line: 59, column: 7, scope: !139)
!165 = !DILocation(line: 59, column: 10, scope: !139)
!166 = !DILocation(line: 60, column: 9, scope: !139)
!167 = !DILocation(line: 57, column: 44, scope: !135)
!168 = !{i1 false, !169, i1 false, i1 true}
!169 = !{double 1.000000e+00, double 1.700000e+01}
!170 = !DILocation(line: 57, column: 23, scope: !135)
!171 = distinct !{!171, !137, !172, !173, !175}
!172 = !DILocation(line: 60, column: 9, scope: !132)
!173 = !{!"llvm.loop.pipeline.enable", i32 1, i1 false, i8 -1, !"user", !174}
!174 = !DILocation(line: 58, column: 9, scope: !132)
!175 = !{!"llvm.loop.name", !"VITIS_LOOP_57_4"}
!176 = !DILocation(line: 61, column: 7, scope: !126)
!177 = !DILocation(line: 54, column: 40, scope: !122)
!178 = !DILocation(line: 54, column: 19, scope: !122)
!179 = distinct !{!179, !124, !180, !181, !183}
!180 = !DILocation(line: 61, column: 7, scope: !118)
!181 = !{!"llvm.loop.unroll.count", i32 8, !"user", !182}
!182 = !DILocation(line: 55, column: 9, scope: !118)
!183 = !{!"llvm.loop.name", !"VITIS_LOOP_54_3"}
!184 = !DILocation(line: 64, column: 31, scope: !185)
!185 = distinct !DILexicalBlock(scope: !119, file: !17, line: 64, column: 24)
!186 = !DILocation(line: 64, column: 29, scope: !185)
!187 = !DILocation(line: 64, column: 36, scope: !188)
!188 = distinct !DILexicalBlock(scope: !185, file: !17, line: 64, column: 24)
!189 = !DILocation(line: 64, column: 38, scope: !188)
!190 = !DILocation(line: 64, column: 24, scope: !185)
!191 = !DILocation(line: 66, column: 20, scope: !192)
!192 = distinct !DILexicalBlock(scope: !188, file: !17, line: 64, column: 48)
!193 = !DILocation(line: 66, column: 25, scope: !192)
!194 = !DILocation(line: 66, column: 2, scope: !192)
!195 = !DILocation(line: 66, column: 5, scope: !192)
!196 = !DILocation(line: 66, column: 7, scope: !192)
!197 = !DILocation(line: 66, column: 6, scope: !192)
!198 = !DILocation(line: 66, column: 10, scope: !192)
!199 = !DILocation(line: 66, column: 12, scope: !192)
!200 = !DILocation(line: 66, column: 11, scope: !192)
!201 = !DILocation(line: 66, column: 9, scope: !192)
!202 = !{i1 false, !203, i1 false, i1 true}
!203 = !{double 0.000000e+00, double 5.440000e+02}
!204 = !DILocation(line: 66, column: 15, scope: !192)
!205 = !DILocation(line: 66, column: 14, scope: !192)
!206 = !{i1 false, !207, i1 false, i1 true}
!207 = !{double 0.000000e+00, double 5.600000e+02}
!208 = !DILocation(line: 66, column: 18, scope: !192)
!209 = !DILocation(line: 67, column: 8, scope: !192)
!210 = !DILocation(line: 64, column: 45, scope: !188)
!211 = !DILocation(line: 64, column: 24, scope: !188)
!212 = distinct !{!212, !190, !213, !214, !216}
!213 = !DILocation(line: 67, column: 8, scope: !185)
!214 = !{!"llvm.loop.unroll.count", i32 8, !"user", !215}
!215 = !DILocation(line: 65, column: 9, scope: !185)
!216 = !{!"llvm.loop.name", !"VITIS_LOOP_64_5"}
!217 = !DILocation(line: 68, column: 5, scope: !119)
!218 = !DILocation(line: 52, column: 40, scope: !113)
!219 = !DILocation(line: 52, column: 19, scope: !113)
!220 = distinct !{!220, !115, !221, !222, !224}
!221 = !DILocation(line: 68, column: 5, scope: !109)
!222 = !{!"llvm.loop.pipeline.enable", i32 1, i1 false, i8 -1, !"user", !223}
!223 = !DILocation(line: 53, column: 9, scope: !109)
!224 = !{!"llvm.loop.name", !"VITIS_LOOP_52_2"}
!225 = !DILocation(line: 69, column: 4, scope: !110)
!226 = !DILocation(line: 50, column: 41, scope: !100)
!227 = !DILocation(line: 50, column: 20, scope: !100)
!228 = distinct !{!228, !106, !229, !230, !232}
!229 = !DILocation(line: 69, column: 4, scope: !97)
!230 = !{!"llvm.loop.pipeline.enable", i32 1, i1 false, i8 -1, !"user", !231}
!231 = !DILocation(line: 51, column: 9, scope: !97)
!232 = !{!"llvm.loop.name", !"VITIS_LOOP_50_1"}
!233 = !DILocation(line: 72, column: 1, scope: !16)
!234 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!235 = !{i32 0, i1 false, i32 0, i1 false}
!236 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
