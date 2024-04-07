; ModuleID = '/home/bruno/Desktop/benchmarks/doitgen/intermediate/output.1.magiclangtmp.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.global_ctors = appending global [0 x { i32, void ()*, i8* }] zeroinitializer
@.str = private unnamed_addr constant [21 x i8] c"scalar(range(0, 16))\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [16 x i8] c"doitgen_taffo.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [36 x i8] c"target('As') scalar(range(-32, 31))\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [36 x i8] c"target(sums) scalar(range(-32, 31))\00", section "llvm.metadata"
@.str.4 = private unnamed_addr constant [36 x i8] c"target('Cs') scalar(range(-32, 31))\00", section "llvm.metadata"

; Function Attrs: nounwind
define void @doitgen(float* %A, float* %C, float* %sum) #0 !dbg !7 !fpga.function.pragma !13 !taffo.start !16 !taffo.funinfo !17 {
entry:
  %A.addr = alloca float*, align 8
  %C.addr = alloca float*, align 8
  %sum.addr = alloca float*, align 8
  %nr = alloca i32, align 4
  %nq = alloca i32, align 4
  %np = alloca i32, align 4
  %r = alloca i32, align 4, !taffo.info !18
  %q = alloca i32, align 4, !taffo.info !18
  %p = alloca i32, align 4, !taffo.info !18
  %s = alloca i32, align 4, !taffo.info !18
  %i = alloca i32, align 4, !taffo.info !18
  %j = alloca i32, align 4, !taffo.info !18
  %k = alloca i32, align 4, !taffo.info !18
  %As = alloca float*, align 8, !taffo.info !20, !taffo.target !22
  %sums = alloca float*, align 8
  %Cs = alloca float*, align 8, !taffo.info !20, !taffo.target !23
  store float* %A, float** %A.addr, align 8
  call void @llvm.dbg.declare(metadata float** %A.addr, metadata !24, metadata !DIExpression()), !dbg !25
  store float* %C, float** %C.addr, align 8
  call void @llvm.dbg.declare(metadata float** %C.addr, metadata !26, metadata !DIExpression()), !dbg !27
  store float* %sum, float** %sum.addr, align 8
  call void @llvm.dbg.declare(metadata float** %sum.addr, metadata !28, metadata !DIExpression()), !dbg !29
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %A, [0 x i8] zeroinitializer, i64 4096, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !30
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %C, [0 x i8] zeroinitializer, i64 256, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !31
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %sum, [0 x i8] zeroinitializer, i64 16, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !32
  call void @llvm.sideeffect() #5 [ "xlx_array_partition"(float* %A, i32 1, i32 4, i32 1, i1 false) ], !dbg !33
  call void @llvm.sideeffect() #5 [ "xlx_array_partition"(float* %C, i32 1, i32 4, i32 1, i1 false) ], !dbg !34
  %0 = bitcast i32* %nr to i8*, !dbg !35
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !35
  call void @llvm.dbg.declare(metadata i32* %nr, metadata !36, metadata !DIExpression()), !dbg !38
  store i32 16, i32* %nr, align 4, !dbg !38
  %1 = bitcast i32* %nq to i8*, !dbg !39
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !39
  call void @llvm.dbg.declare(metadata i32* %nq, metadata !40, metadata !DIExpression()), !dbg !41
  store i32 16, i32* %nq, align 4, !dbg !41
  %2 = bitcast i32* %np to i8*, !dbg !42
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !42
  call void @llvm.dbg.declare(metadata i32* %np, metadata !43, metadata !DIExpression()), !dbg !44
  store i32 16, i32* %np, align 4, !dbg !44
  %3 = bitcast i32* %r to i8*, !dbg !45, !taffo.info !46
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !45, !taffo.info !46
  call void @llvm.dbg.declare(metadata i32* %r, metadata !47, metadata !DIExpression()), !dbg !48
  %r1 = bitcast i32* %r to i8*, !dbg !45, !taffo.info !46
  %4 = bitcast i32* %q to i8*, !dbg !49, !taffo.info !46
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !49, !taffo.info !46
  call void @llvm.dbg.declare(metadata i32* %q, metadata !50, metadata !DIExpression()), !dbg !51
  %q2 = bitcast i32* %q to i8*, !dbg !49, !taffo.info !46
  %5 = bitcast i32* %p to i8*, !dbg !52, !taffo.info !46
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !52, !taffo.info !46
  call void @llvm.dbg.declare(metadata i32* %p, metadata !53, metadata !DIExpression()), !dbg !54
  %p3 = bitcast i32* %p to i8*, !dbg !52, !taffo.info !46
  %6 = bitcast i32* %s to i8*, !dbg !55, !taffo.info !46
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !55, !taffo.info !46
  call void @llvm.dbg.declare(metadata i32* %s, metadata !56, metadata !DIExpression()), !dbg !57
  %s4 = bitcast i32* %s to i8*, !dbg !55, !taffo.info !46
  %7 = bitcast i32* %i to i8*, !dbg !58, !taffo.info !46
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4, !dbg !58, !taffo.info !46
  call void @llvm.dbg.declare(metadata i32* %i, metadata !59, metadata !DIExpression()), !dbg !60
  %i5 = bitcast i32* %i to i8*, !dbg !58, !taffo.info !46
  %8 = bitcast i32* %j to i8*, !dbg !61, !taffo.info !46
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4, !dbg !61, !taffo.info !46
  call void @llvm.dbg.declare(metadata i32* %j, metadata !62, metadata !DIExpression()), !dbg !63
  %j6 = bitcast i32* %j to i8*, !dbg !61, !taffo.info !46
  %9 = bitcast i32* %k to i8*, !dbg !64, !taffo.info !46
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #4, !dbg !64, !taffo.info !46
  call void @llvm.dbg.declare(metadata i32* %k, metadata !65, metadata !DIExpression()), !dbg !66
  %k7 = bitcast i32* %k to i8*, !dbg !64, !taffo.info !46
  %10 = bitcast float** %As to i8*, !dbg !67, !taffo.info !46, !taffo.target !22
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %10) #4, !dbg !67, !taffo.info !46, !taffo.target !22
  call void @llvm.dbg.declare(metadata float** %As, metadata !68, metadata !DIExpression()), !dbg !69
  %As8 = bitcast float** %As to i8*, !dbg !67, !taffo.info !46, !taffo.target !22
  %11 = load float*, float** %A.addr, align 8, !dbg !70
  store float* %11, float** %As, align 8, !dbg !71, !taffo.info !46, !taffo.target !22
  %12 = bitcast float** %sums to i8*, !dbg !72
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %12) #4, !dbg !72
  call void @llvm.dbg.declare(metadata float** %sums, metadata !73, metadata !DIExpression()), !dbg !74
  %sums9 = bitcast float** %sums to i8*, !dbg !72
  call void @llvm.var.annotation(i8* %sums9, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 44), !dbg !72
  %13 = load float*, float** %sum.addr, align 8, !dbg !75
  store float* %13, float** %sums, align 8, !dbg !76
  %14 = bitcast float** %Cs to i8*, !dbg !77, !taffo.info !46, !taffo.target !23
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %14) #4, !dbg !77, !taffo.info !46, !taffo.target !23
  call void @llvm.dbg.declare(metadata float** %Cs, metadata !78, metadata !DIExpression()), !dbg !79
  %Cs10 = bitcast float** %Cs to i8*, !dbg !77, !taffo.info !46, !taffo.target !23
  %15 = load float*, float** %C.addr, align 8, !dbg !80
  store float* %15, float** %Cs, align 8, !dbg !81, !taffo.info !46, !taffo.target !23
  br label %VITIS_LOOP_50_1, !dbg !82

VITIS_LOOP_50_1:                                  ; preds = %entry
  store i32 0, i32* %r, align 4, !dbg !83, !taffo.info !46
  br label %for.cond, !dbg !85

for.cond:                                         ; preds = %for.inc52, %VITIS_LOOP_50_1
  %16 = load i32, i32* %r, align 4, !dbg !86, !taffo.info !46
  %cmp = icmp slt i32 %16, 16, !dbg !88, !taffo.info !46
  br i1 %cmp, label %for.body, label %for.end54, !dbg !89, !taffo.info !46

for.body:                                         ; preds = %for.cond
  br label %VITIS_LOOP_52_2, !dbg !90

VITIS_LOOP_52_2:                                  ; preds = %for.body
  store i32 0, i32* %q, align 4, !dbg !91, !taffo.info !46
  br label %for.cond11, !dbg !94

for.cond11:                                       ; preds = %for.inc49, %VITIS_LOOP_52_2
  %17 = load i32, i32* %q, align 4, !dbg !95, !taffo.info !46
  %cmp12 = icmp slt i32 %17, 16, !dbg !97, !taffo.info !46
  br i1 %cmp12, label %for.body13, label %for.end51, !dbg !98, !taffo.info !46

for.body13:                                       ; preds = %for.cond11
  br label %VITIS_LOOP_54_3, !dbg !99

VITIS_LOOP_54_3:                                  ; preds = %for.body13
  store i32 0, i32* %p, align 4, !dbg !100, !taffo.info !46
  br label %for.cond14, !dbg !103

for.cond14:                                       ; preds = %for.inc32, %VITIS_LOOP_54_3
  %18 = load i32, i32* %p, align 4, !dbg !104, !taffo.info !46
  %cmp15 = icmp slt i32 %18, 16, !dbg !106, !taffo.info !46
  br i1 %cmp15, label %for.body16, label %for.end34, !dbg !107, !taffo.info !46

for.body16:                                       ; preds = %for.cond14
  %19 = load float*, float** %sums, align 8, !dbg !108
  %20 = load i32, i32* %p, align 4, !dbg !110, !taffo.info !46
  %idxprom = sext i32 %20 to i64, !dbg !108, !taffo.info !46
  %arrayidx = getelementptr inbounds float, float* %19, i64 %idxprom, !dbg !108, !taffo.info !46
  store float 0.000000e+00, float* %arrayidx, align 4, !dbg !111, !taffo.info !46
  br label %VITIS_LOOP_57_4, !dbg !108

VITIS_LOOP_57_4:                                  ; preds = %for.body16
  store i32 0, i32* %s, align 4, !dbg !112, !taffo.info !46
  br label %for.cond17, !dbg !114

for.cond17:                                       ; preds = %for.inc, %VITIS_LOOP_57_4
  %21 = load i32, i32* %s, align 4, !dbg !115, !taffo.info !46
  %cmp18 = icmp slt i32 %21, 16, !dbg !117, !taffo.info !46
  br i1 %cmp18, label %for.body19, label %for.end, !dbg !118, !taffo.info !46

for.body19:                                       ; preds = %for.cond17
  %22 = load float*, float** %As, align 8, !dbg !119, !taffo.info !46, !taffo.target !22
  %23 = load i32, i32* %r, align 4, !dbg !121, !taffo.info !46
  %24 = load i32, i32* %nq, align 4, !dbg !122
  %mul = mul nsw i32 %23, %24, !dbg !123, !taffo.info !46
  %25 = load i32, i32* %q, align 4, !dbg !124, !taffo.info !46
  %26 = load i32, i32* %np, align 4, !dbg !125
  %mul20 = mul nsw i32 %25, %26, !dbg !126, !taffo.info !46
  %add = add nsw i32 %mul, %mul20, !dbg !127, !taffo.info !46
  %27 = load i32, i32* %s, align 4, !dbg !128, !taffo.info !46
  %add21 = add nsw i32 %add, %27, !dbg !129, !taffo.info !46
  %idxprom22 = sext i32 %add21 to i64, !dbg !119, !taffo.info !46
  %arrayidx23 = getelementptr inbounds float, float* %22, i64 %idxprom22, !dbg !119, !taffo.info !46, !taffo.target !22
  %28 = load float, float* %arrayidx23, align 4, !dbg !119, !taffo.info !46, !taffo.target !22
  %29 = load float*, float** %Cs, align 8, !dbg !130, !taffo.info !46, !taffo.target !23
  %30 = load i32, i32* %s, align 4, !dbg !131, !taffo.info !46
  %mul24 = mul nsw i32 %30, 16, !dbg !132, !taffo.info !46
  %31 = load i32, i32* %p, align 4, !dbg !133, !taffo.info !46
  %add25 = add nsw i32 %mul24, %31, !dbg !134, !taffo.info !46
  %idxprom26 = sext i32 %add25 to i64, !dbg !130, !taffo.info !46
  %arrayidx27 = getelementptr inbounds float, float* %29, i64 %idxprom26, !dbg !130, !taffo.info !46, !taffo.target !23
  %32 = load float, float* %arrayidx27, align 4, !dbg !130, !taffo.info !46, !taffo.target !23
  %mul28 = fmul float %28, %32, !dbg !135, !taffo.info !46, !taffo.target !22
  %33 = load float*, float** %sums, align 8, !dbg !136
  %34 = load i32, i32* %p, align 4, !dbg !137, !taffo.info !46
  %idxprom29 = sext i32 %34 to i64, !dbg !136, !taffo.info !46
  %arrayidx30 = getelementptr inbounds float, float* %33, i64 %idxprom29, !dbg !136, !taffo.info !46
  %35 = load float, float* %arrayidx30, align 4, !dbg !138, !taffo.info !46
  %add31 = fadd float %35, %mul28, !dbg !138, !taffo.info !46
  store float %add31, float* %arrayidx30, align 4, !dbg !138, !taffo.info !46
  br label %for.inc, !dbg !139

for.inc:                                          ; preds = %for.body19
  %36 = load i32, i32* %s, align 4, !dbg !140, !taffo.info !46
  %inc = add nsw i32 %36, 1, !dbg !140, !taffo.info !46
  store i32 %inc, i32* %s, align 4, !dbg !140, !taffo.info !46
  br label %for.cond17, !dbg !141, !llvm.loop !142

for.end:                                          ; preds = %for.cond17
  br label %for.inc32, !dbg !147

for.inc32:                                        ; preds = %for.end
  %37 = load i32, i32* %p, align 4, !dbg !148, !taffo.info !46
  %inc33 = add nsw i32 %37, 1, !dbg !148, !taffo.info !46
  store i32 %inc33, i32* %p, align 4, !dbg !148, !taffo.info !46
  br label %for.cond14, !dbg !149, !llvm.loop !150

for.end34:                                        ; preds = %for.cond14
  br label %VITIS_LOOP_64_5, !dbg !151

VITIS_LOOP_64_5:                                  ; preds = %for.end34
  store i32 0, i32* %p, align 4, !dbg !155, !taffo.info !46
  br label %for.cond35, !dbg !157

for.cond35:                                       ; preds = %for.inc46, %VITIS_LOOP_64_5
  %38 = load i32, i32* %p, align 4, !dbg !158, !taffo.info !46
  %cmp36 = icmp slt i32 %38, 16, !dbg !160, !taffo.info !46
  br i1 %cmp36, label %for.body37, label %for.end48, !dbg !161, !taffo.info !46

for.body37:                                       ; preds = %for.cond35
  %39 = load float*, float** %sums, align 8, !dbg !162
  %40 = load i32, i32* %p, align 4, !dbg !164, !taffo.info !46
  %idxprom38 = sext i32 %40 to i64, !dbg !162, !taffo.info !46
  %arrayidx39 = getelementptr inbounds float, float* %39, i64 %idxprom38, !dbg !162, !taffo.info !46
  %41 = load float, float* %arrayidx39, align 4, !dbg !162, !taffo.info !46
  %42 = load float*, float** %As, align 8, !dbg !165, !taffo.info !46, !taffo.target !22
  %43 = load i32, i32* %r, align 4, !dbg !166, !taffo.info !46
  %44 = load i32, i32* %nq, align 4, !dbg !167
  %mul40 = mul nsw i32 %43, %44, !dbg !168, !taffo.info !46
  %45 = load i32, i32* %q, align 4, !dbg !169, !taffo.info !46
  %46 = load i32, i32* %np, align 4, !dbg !170
  %mul41 = mul nsw i32 %45, %46, !dbg !171, !taffo.info !46
  %add42 = add nsw i32 %mul40, %mul41, !dbg !172, !taffo.info !46
  %47 = load i32, i32* %p, align 4, !dbg !173, !taffo.info !46
  %add43 = add nsw i32 %add42, %47, !dbg !174, !taffo.info !46
  %idxprom44 = sext i32 %add43 to i64, !dbg !165, !taffo.info !46
  %arrayidx45 = getelementptr inbounds float, float* %42, i64 %idxprom44, !dbg !165, !taffo.info !46, !taffo.target !22
  store float %41, float* %arrayidx45, align 4, !dbg !175, !taffo.info !46, !taffo.target !22
  br label %for.inc46, !dbg !176

for.inc46:                                        ; preds = %for.body37
  %48 = load i32, i32* %p, align 4, !dbg !177, !taffo.info !46
  %inc47 = add nsw i32 %48, 1, !dbg !177, !taffo.info !46
  store i32 %inc47, i32* %p, align 4, !dbg !177, !taffo.info !46
  br label %for.cond35, !dbg !178, !llvm.loop !179

for.end48:                                        ; preds = %for.cond35
  br label %for.inc49, !dbg !184

for.inc49:                                        ; preds = %for.end48
  %49 = load i32, i32* %q, align 4, !dbg !185, !taffo.info !46
  %inc50 = add nsw i32 %49, 1, !dbg !185, !taffo.info !46
  store i32 %inc50, i32* %q, align 4, !dbg !185, !taffo.info !46
  br label %for.cond11, !dbg !186, !llvm.loop !187

for.end51:                                        ; preds = %for.cond11
  br label %for.inc52, !dbg !192

for.inc52:                                        ; preds = %for.end51
  %50 = load i32, i32* %r, align 4, !dbg !193, !taffo.info !46
  %inc53 = add nsw i32 %50, 1, !dbg !193, !taffo.info !46
  store i32 %inc53, i32* %r, align 4, !dbg !193, !taffo.info !46
  br label %for.cond, !dbg !194, !llvm.loop !195

for.end54:                                        ; preds = %for.cond
  %51 = bitcast float** %Cs to i8*, !dbg !200, !taffo.info !46, !taffo.target !23
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %51) #4, !dbg !200, !taffo.info !46, !taffo.target !23
  %52 = bitcast float** %sums to i8*, !dbg !200
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %52) #4, !dbg !200
  %53 = bitcast float** %As to i8*, !dbg !200, !taffo.info !46, !taffo.target !22
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %53) #4, !dbg !200, !taffo.info !46, !taffo.target !22
  %54 = bitcast i32* %k to i8*, !dbg !200, !taffo.info !46
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %54) #4, !dbg !200, !taffo.info !46
  %55 = bitcast i32* %j to i8*, !dbg !200, !taffo.info !46
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %55) #4, !dbg !200, !taffo.info !46
  %56 = bitcast i32* %i to i8*, !dbg !200, !taffo.info !46
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %56) #4, !dbg !200, !taffo.info !46
  %57 = bitcast i32* %s to i8*, !dbg !200, !taffo.info !46
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %57) #4, !dbg !200, !taffo.info !46
  %58 = bitcast i32* %p to i8*, !dbg !200, !taffo.info !46
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %58) #4, !dbg !200, !taffo.info !46
  %59 = bitcast i32* %q to i8*, !dbg !200, !taffo.info !46
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %59) #4, !dbg !200, !taffo.info !46
  %60 = bitcast i32* %r to i8*, !dbg !200, !taffo.info !46
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %60) #4, !dbg !200, !taffo.info !46
  %61 = bitcast i32* %np to i8*, !dbg !200
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %61) #4, !dbg !200
  %62 = bitcast i32* %nq to i8*, !dbg !200
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %62) #4, !dbg !200
  %63 = bitcast i32* %nr to i8*, !dbg !200
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %63) #4, !dbg !200
  ret void, !dbg !200
}

; Function Attrs: nounwind readnone speculatable
declare !taffo.funinfo !17 void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: inaccessiblememonly nounwind
declare !taffo.funinfo !2 void @llvm.sideeffect() #2

; Function Attrs: argmemonly nounwind
declare !taffo.funinfo !201 void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare !taffo.funinfo !202 void @llvm.var.annotation(i8*, i8*, i8*, i32) #4

; Function Attrs: argmemonly nounwind
declare !taffo.funinfo !201 void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #3

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.top.func"="doitgen" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { inaccessiblememonly nounwind }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind }
attributes #5 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="0" "xlx.source"="user" }

!llvm.dbg.cu = !{!0}
!llvm.ident = !{!3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3}
!llvm.module.flags = !{!4, !5, !6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/home/bruno/Desktop/benchmarks/doitgen/proj_doitgen/solution1/.autopilot/db/doitgen_taffo.pp.0.c", directory: "/home/bruno/Desktop/benchmarks/doitgen")
!2 = !{}
!3 = !{!"clang version 7.0.0 "}
!4 = !{i32 2, !"Dwarf Version", i32 4}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = distinct !DISubprogram(name: "doitgen", scope: !8, file: !8, line: 24, type: !9, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DIFile(filename: "doitgen_taffo.c", directory: "/home/bruno/Desktop/benchmarks/doitgen")
!9 = !DISubroutineType(types: !10)
!10 = !{null, !11, !11, !11}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!13 = !{!14}
!14 = !{!"fpga.top", !"user", !15}
!15 = !DILocation(line: 24, column: 16, scope: !7)
!16 = !{i1 true}
!17 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!18 = !{i1 false, !19, i1 false, i1 true}
!19 = !{double 0.000000e+00, double 1.600000e+01}
!20 = !{i1 false, !21, i1 false, i1 true}
!21 = !{double -3.200000e+01, double 3.100000e+01}
!22 = !{!"As"}
!23 = !{!"Cs"}
!24 = !DILocalVariable(name: "A", arg: 1, scope: !7, file: !8, line: 24, type: !11)
!25 = !DILocation(line: 24, column: 63, scope: !7)
!26 = !DILocalVariable(name: "C", arg: 2, scope: !7, file: !8, line: 24, type: !11)
!27 = !DILocation(line: 24, column: 74, scope: !7)
!28 = !DILocalVariable(name: "sum", arg: 3, scope: !7, file: !8, line: 24, type: !11)
!29 = !DILocation(line: 24, column: 84, scope: !7)
!30 = !DILocation(line: 26, column: 9, scope: !7)
!31 = !DILocation(line: 27, column: 9, scope: !7)
!32 = !DILocation(line: 28, column: 9, scope: !7)
!33 = !DILocation(line: 29, column: 9, scope: !7)
!34 = !DILocation(line: 30, column: 9, scope: !7)
!35 = !DILocation(line: 31, column: 2, scope: !7)
!36 = !DILocalVariable(name: "nr", scope: !7, file: !8, line: 31, type: !37)
!37 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!38 = !DILocation(line: 31, column: 6, scope: !7)
!39 = !DILocation(line: 32, column: 3, scope: !7)
!40 = !DILocalVariable(name: "nq", scope: !7, file: !8, line: 32, type: !37)
!41 = !DILocation(line: 32, column: 7, scope: !7)
!42 = !DILocation(line: 33, column: 3, scope: !7)
!43 = !DILocalVariable(name: "np", scope: !7, file: !8, line: 33, type: !37)
!44 = !DILocation(line: 33, column: 7, scope: !7)
!45 = !DILocation(line: 34, column: 4, scope: !7)
!46 = !{i1 false, i1 false, i1 false, i1 true}
!47 = !DILocalVariable(name: "r", scope: !7, file: !8, line: 34, type: !37)
!48 = !DILocation(line: 34, column: 8, scope: !7)
!49 = !DILocation(line: 35, column: 3, scope: !7)
!50 = !DILocalVariable(name: "q", scope: !7, file: !8, line: 35, type: !37)
!51 = !DILocation(line: 35, column: 7, scope: !7)
!52 = !DILocation(line: 36, column: 3, scope: !7)
!53 = !DILocalVariable(name: "p", scope: !7, file: !8, line: 36, type: !37)
!54 = !DILocation(line: 36, column: 7, scope: !7)
!55 = !DILocation(line: 37, column: 3, scope: !7)
!56 = !DILocalVariable(name: "s", scope: !7, file: !8, line: 37, type: !37)
!57 = !DILocation(line: 37, column: 7, scope: !7)
!58 = !DILocation(line: 39, column: 3, scope: !7)
!59 = !DILocalVariable(name: "i", scope: !7, file: !8, line: 39, type: !37)
!60 = !DILocation(line: 39, column: 7, scope: !7)
!61 = !DILocation(line: 40, column: 3, scope: !7)
!62 = !DILocalVariable(name: "j", scope: !7, file: !8, line: 40, type: !37)
!63 = !DILocation(line: 40, column: 7, scope: !7)
!64 = !DILocation(line: 41, column: 3, scope: !7)
!65 = !DILocalVariable(name: "k", scope: !7, file: !8, line: 41, type: !37)
!66 = !DILocation(line: 41, column: 7, scope: !7)
!67 = !DILocation(line: 42, column: 3, scope: !7)
!68 = !DILocalVariable(name: "As", scope: !7, file: !8, line: 42, type: !11)
!69 = !DILocation(line: 42, column: 10, scope: !7)
!70 = !DILocation(line: 43, column: 8, scope: !7)
!71 = !DILocation(line: 43, column: 6, scope: !7)
!72 = !DILocation(line: 44, column: 3, scope: !7)
!73 = !DILocalVariable(name: "sums", scope: !7, file: !8, line: 44, type: !11)
!74 = !DILocation(line: 44, column: 10, scope: !7)
!75 = !DILocation(line: 45, column: 10, scope: !7)
!76 = !DILocation(line: 45, column: 8, scope: !7)
!77 = !DILocation(line: 46, column: 3, scope: !7)
!78 = !DILocalVariable(name: "Cs", scope: !7, file: !8, line: 46, type: !11)
!79 = !DILocation(line: 46, column: 10, scope: !7)
!80 = !DILocation(line: 47, column: 8, scope: !7)
!81 = !DILocation(line: 47, column: 6, scope: !7)
!82 = !DILocation(line: 47, column: 3, scope: !7)
!83 = !DILocation(line: 50, column: 27, scope: !84)
!84 = distinct !DILexicalBlock(scope: !7, file: !8, line: 50, column: 20)
!85 = !DILocation(line: 50, column: 25, scope: !84)
!86 = !DILocation(line: 50, column: 32, scope: !87)
!87 = distinct !DILexicalBlock(scope: !84, file: !8, line: 50, column: 20)
!88 = !DILocation(line: 50, column: 34, scope: !87)
!89 = !DILocation(line: 50, column: 20, scope: !84)
!90 = !DILocation(line: 50, column: 44, scope: !87)
!91 = !DILocation(line: 52, column: 26, scope: !92)
!92 = distinct !DILexicalBlock(scope: !93, file: !8, line: 52, column: 19)
!93 = distinct !DILexicalBlock(scope: !87, file: !8, line: 50, column: 44)
!94 = !DILocation(line: 52, column: 24, scope: !92)
!95 = !DILocation(line: 52, column: 31, scope: !96)
!96 = distinct !DILexicalBlock(scope: !92, file: !8, line: 52, column: 19)
!97 = !DILocation(line: 52, column: 33, scope: !96)
!98 = !DILocation(line: 52, column: 19, scope: !92)
!99 = !DILocation(line: 52, column: 44, scope: !96)
!100 = !DILocation(line: 54, column: 26, scope: !101)
!101 = distinct !DILexicalBlock(scope: !102, file: !8, line: 54, column: 19)
!102 = distinct !DILexicalBlock(scope: !96, file: !8, line: 52, column: 44)
!103 = !DILocation(line: 54, column: 24, scope: !101)
!104 = !DILocation(line: 54, column: 31, scope: !105)
!105 = distinct !DILexicalBlock(scope: !101, file: !8, line: 54, column: 19)
!106 = !DILocation(line: 54, column: 33, scope: !105)
!107 = !DILocation(line: 54, column: 19, scope: !101)
!108 = !DILocation(line: 56, column: 2, scope: !109)
!109 = distinct !DILexicalBlock(scope: !105, file: !8, line: 54, column: 44)
!110 = !DILocation(line: 56, column: 7, scope: !109)
!111 = !DILocation(line: 56, column: 10, scope: !109)
!112 = !DILocation(line: 57, column: 30, scope: !113)
!113 = distinct !DILexicalBlock(scope: !109, file: !8, line: 57, column: 23)
!114 = !DILocation(line: 57, column: 28, scope: !113)
!115 = !DILocation(line: 57, column: 35, scope: !116)
!116 = distinct !DILexicalBlock(scope: !113, file: !8, line: 57, column: 23)
!117 = !DILocation(line: 57, column: 37, scope: !116)
!118 = !DILocation(line: 57, column: 23, scope: !113)
!119 = !DILocation(line: 59, column: 13, scope: !120)
!120 = distinct !DILexicalBlock(scope: !116, file: !8, line: 57, column: 47)
!121 = !DILocation(line: 59, column: 16, scope: !120)
!122 = !DILocation(line: 59, column: 18, scope: !120)
!123 = !DILocation(line: 59, column: 17, scope: !120)
!124 = !DILocation(line: 59, column: 21, scope: !120)
!125 = !DILocation(line: 59, column: 23, scope: !120)
!126 = !DILocation(line: 59, column: 22, scope: !120)
!127 = !DILocation(line: 59, column: 20, scope: !120)
!128 = !DILocation(line: 59, column: 26, scope: !120)
!129 = !DILocation(line: 59, column: 25, scope: !120)
!130 = !DILocation(line: 59, column: 31, scope: !120)
!131 = !DILocation(line: 59, column: 34, scope: !120)
!132 = !DILocation(line: 59, column: 36, scope: !120)
!133 = !DILocation(line: 59, column: 43, scope: !120)
!134 = !DILocation(line: 59, column: 41, scope: !120)
!135 = !DILocation(line: 59, column: 29, scope: !120)
!136 = !DILocation(line: 59, column: 2, scope: !120)
!137 = !DILocation(line: 59, column: 7, scope: !120)
!138 = !DILocation(line: 59, column: 10, scope: !120)
!139 = !DILocation(line: 60, column: 9, scope: !120)
!140 = !DILocation(line: 57, column: 44, scope: !116)
!141 = !DILocation(line: 57, column: 23, scope: !116)
!142 = distinct !{!142, !118, !143, !144, !146}
!143 = !DILocation(line: 60, column: 9, scope: !113)
!144 = !{!"llvm.loop.pipeline.enable", i32 1, i1 false, i8 -1, !"user", !145}
!145 = !DILocation(line: 58, column: 9, scope: !113)
!146 = !{!"llvm.loop.name", !"VITIS_LOOP_57_4"}
!147 = !DILocation(line: 61, column: 7, scope: !109)
!148 = !DILocation(line: 54, column: 40, scope: !105)
!149 = !DILocation(line: 54, column: 19, scope: !105)
!150 = distinct !{!150, !107, !151, !152, !154}
!151 = !DILocation(line: 61, column: 7, scope: !101)
!152 = !{!"llvm.loop.unroll.count", i32 8, !"user", !153}
!153 = !DILocation(line: 55, column: 9, scope: !101)
!154 = !{!"llvm.loop.name", !"VITIS_LOOP_54_3"}
!155 = !DILocation(line: 64, column: 31, scope: !156)
!156 = distinct !DILexicalBlock(scope: !102, file: !8, line: 64, column: 24)
!157 = !DILocation(line: 64, column: 29, scope: !156)
!158 = !DILocation(line: 64, column: 36, scope: !159)
!159 = distinct !DILexicalBlock(scope: !156, file: !8, line: 64, column: 24)
!160 = !DILocation(line: 64, column: 38, scope: !159)
!161 = !DILocation(line: 64, column: 24, scope: !156)
!162 = !DILocation(line: 66, column: 20, scope: !163)
!163 = distinct !DILexicalBlock(scope: !159, file: !8, line: 64, column: 48)
!164 = !DILocation(line: 66, column: 25, scope: !163)
!165 = !DILocation(line: 66, column: 2, scope: !163)
!166 = !DILocation(line: 66, column: 5, scope: !163)
!167 = !DILocation(line: 66, column: 7, scope: !163)
!168 = !DILocation(line: 66, column: 6, scope: !163)
!169 = !DILocation(line: 66, column: 10, scope: !163)
!170 = !DILocation(line: 66, column: 12, scope: !163)
!171 = !DILocation(line: 66, column: 11, scope: !163)
!172 = !DILocation(line: 66, column: 9, scope: !163)
!173 = !DILocation(line: 66, column: 15, scope: !163)
!174 = !DILocation(line: 66, column: 14, scope: !163)
!175 = !DILocation(line: 66, column: 18, scope: !163)
!176 = !DILocation(line: 67, column: 8, scope: !163)
!177 = !DILocation(line: 64, column: 45, scope: !159)
!178 = !DILocation(line: 64, column: 24, scope: !159)
!179 = distinct !{!179, !161, !180, !181, !183}
!180 = !DILocation(line: 67, column: 8, scope: !156)
!181 = !{!"llvm.loop.unroll.count", i32 8, !"user", !182}
!182 = !DILocation(line: 65, column: 9, scope: !156)
!183 = !{!"llvm.loop.name", !"VITIS_LOOP_64_5"}
!184 = !DILocation(line: 68, column: 5, scope: !102)
!185 = !DILocation(line: 52, column: 40, scope: !96)
!186 = !DILocation(line: 52, column: 19, scope: !96)
!187 = distinct !{!187, !98, !188, !189, !191}
!188 = !DILocation(line: 68, column: 5, scope: !92)
!189 = !{!"llvm.loop.pipeline.enable", i32 1, i1 false, i8 -1, !"user", !190}
!190 = !DILocation(line: 53, column: 9, scope: !92)
!191 = !{!"llvm.loop.name", !"VITIS_LOOP_52_2"}
!192 = !DILocation(line: 69, column: 4, scope: !93)
!193 = !DILocation(line: 50, column: 41, scope: !87)
!194 = !DILocation(line: 50, column: 20, scope: !87)
!195 = distinct !{!195, !89, !196, !197, !199}
!196 = !DILocation(line: 69, column: 4, scope: !84)
!197 = !{!"llvm.loop.pipeline.enable", i32 1, i1 false, i8 -1, !"user", !198}
!198 = !DILocation(line: 51, column: 9, scope: !84)
!199 = !{!"llvm.loop.name", !"VITIS_LOOP_50_1"}
!200 = !DILocation(line: 72, column: 1, scope: !7)
!201 = !{i32 0, i1 false, i32 0, i1 false}
!202 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
