; ModuleID = '/home/bruno/Desktop/benchmarks/doitgen/intermediate/output.2.magiclangtmp.ll'
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
  %As = alloca float*, align 8, !taffo.info !31, !taffo.target !33
  %sums = alloca float*, align 8, !taffo.info !1
  %Cs = alloca float*, align 8, !taffo.info !31, !taffo.target !34
  store float* %A, float** %A.addr, align 8
  call void @llvm.dbg.declare(metadata float** %A.addr, metadata !35, metadata !DIExpression()), !dbg !36
  store float* %C, float** %C.addr, align 8
  call void @llvm.dbg.declare(metadata float** %C.addr, metadata !37, metadata !DIExpression()), !dbg !38
  store float* %sum, float** %sum.addr, align 8
  call void @llvm.dbg.declare(metadata float** %sum.addr, metadata !39, metadata !DIExpression()), !dbg !40
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %A, [0 x i8] zeroinitializer, i64 4096, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !41
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %C, [0 x i8] zeroinitializer, i64 256, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !42
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %sum, [0 x i8] zeroinitializer, i64 16, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !43
  call void @llvm.sideeffect() #5 [ "xlx_array_partition"(float* %A, i32 1, i32 4, i32 1, i1 false) ], !dbg !44
  call void @llvm.sideeffect() #5 [ "xlx_array_partition"(float* %C, i32 1, i32 4, i32 1, i1 false) ], !dbg !45
  %0 = bitcast i32* %nr to i8*, !dbg !46
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !46
  call void @llvm.dbg.declare(metadata i32* %nr, metadata !47, metadata !DIExpression()), !dbg !49
  store i32 16, i32* %nr, align 4, !dbg !49
  %1 = bitcast i32* %nq to i8*, !dbg !50
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !50
  call void @llvm.dbg.declare(metadata i32* %nq, metadata !51, metadata !DIExpression()), !dbg !52
  store i32 16, i32* %nq, align 4, !dbg !52
  %2 = bitcast i32* %np to i8*, !dbg !53
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !53
  call void @llvm.dbg.declare(metadata i32* %np, metadata !54, metadata !DIExpression()), !dbg !55
  store i32 16, i32* %np, align 4, !dbg !55
  %3 = bitcast i32* %r to i8*, !dbg !56, !taffo.info !29
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !56, !taffo.info !57
  call void @llvm.dbg.declare(metadata i32* %r, metadata !58, metadata !DIExpression()), !dbg !59
  %r1 = bitcast i32* %r to i8*, !dbg !56, !taffo.info !29
  %4 = bitcast i32* %q to i8*, !dbg !60, !taffo.info !29
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !60, !taffo.info !57
  call void @llvm.dbg.declare(metadata i32* %q, metadata !61, metadata !DIExpression()), !dbg !62
  %q2 = bitcast i32* %q to i8*, !dbg !60, !taffo.info !29
  %5 = bitcast i32* %p to i8*, !dbg !63, !taffo.info !29
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !63, !taffo.info !57
  call void @llvm.dbg.declare(metadata i32* %p, metadata !64, metadata !DIExpression()), !dbg !65
  %p3 = bitcast i32* %p to i8*, !dbg !63, !taffo.info !29
  %6 = bitcast i32* %s to i8*, !dbg !66, !taffo.info !29
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !66, !taffo.info !57
  call void @llvm.dbg.declare(metadata i32* %s, metadata !67, metadata !DIExpression()), !dbg !68
  %s4 = bitcast i32* %s to i8*, !dbg !66, !taffo.info !29
  %7 = bitcast i32* %i to i8*, !dbg !69, !taffo.info !29
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4, !dbg !69, !taffo.info !57
  call void @llvm.dbg.declare(metadata i32* %i, metadata !70, metadata !DIExpression()), !dbg !71
  %i5 = bitcast i32* %i to i8*, !dbg !69, !taffo.info !29
  %8 = bitcast i32* %j to i8*, !dbg !72, !taffo.info !29
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4, !dbg !72, !taffo.info !57
  call void @llvm.dbg.declare(metadata i32* %j, metadata !73, metadata !DIExpression()), !dbg !74
  %j6 = bitcast i32* %j to i8*, !dbg !72, !taffo.info !29
  %9 = bitcast i32* %k to i8*, !dbg !75, !taffo.info !29
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #4, !dbg !75, !taffo.info !57
  call void @llvm.dbg.declare(metadata i32* %k, metadata !76, metadata !DIExpression()), !dbg !77
  %k7 = bitcast i32* %k to i8*, !dbg !75, !taffo.info !29
  %10 = bitcast float** %As to i8*, !dbg !78, !taffo.info !31, !taffo.target !33
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %10) #4, !dbg !78, !taffo.info !57, !taffo.target !33
  call void @llvm.dbg.declare(metadata float** %As, metadata !79, metadata !DIExpression()), !dbg !80
  %As8 = bitcast float** %As to i8*, !dbg !78, !taffo.info !31, !taffo.target !33
  %11 = load float*, float** %A.addr, align 8, !dbg !81, !taffo.info !1
  store float* %11, float** %As, align 8, !dbg !82, !taffo.info !57, !taffo.target !33
  %12 = bitcast float** %sums to i8*, !dbg !83
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %12) #4, !dbg !83
  call void @llvm.dbg.declare(metadata float** %sums, metadata !84, metadata !DIExpression()), !dbg !85
  %sums9 = bitcast float** %sums to i8*, !dbg !83
  call void @llvm.var.annotation(i8* %sums9, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 44), !dbg !83
  %13 = load float*, float** %sum.addr, align 8, !dbg !86, !taffo.info !1
  store float* %13, float** %sums, align 8, !dbg !87
  %14 = bitcast float** %Cs to i8*, !dbg !88, !taffo.info !31, !taffo.target !34
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %14) #4, !dbg !88, !taffo.info !57, !taffo.target !34
  call void @llvm.dbg.declare(metadata float** %Cs, metadata !89, metadata !DIExpression()), !dbg !90
  %Cs10 = bitcast float** %Cs to i8*, !dbg !88, !taffo.info !31, !taffo.target !34
  %15 = load float*, float** %C.addr, align 8, !dbg !91
  store float* %15, float** %Cs, align 8, !dbg !92, !taffo.info !57, !taffo.target !34
  br label %VITIS_LOOP_50_1, !dbg !93

VITIS_LOOP_50_1:                                  ; preds = %entry
  store i32 0, i32* %r, align 4, !dbg !94, !taffo.info !57
  br label %for.cond, !dbg !96

for.cond:                                         ; preds = %for.inc52, %VITIS_LOOP_50_1
  %16 = load i32, i32* %r, align 4, !dbg !97, !taffo.info !99
  %cmp = icmp slt i32 %16, 16, !dbg !101, !taffo.info !102
  br i1 %cmp, label %for.body, label %for.end54, !dbg !104, !taffo.info !57

for.body:                                         ; preds = %for.cond
  br label %VITIS_LOOP_52_2, !dbg !105

VITIS_LOOP_52_2:                                  ; preds = %for.body
  store i32 0, i32* %q, align 4, !dbg !106, !taffo.info !57
  br label %for.cond11, !dbg !109

for.cond11:                                       ; preds = %for.inc49, %VITIS_LOOP_52_2
  %17 = load i32, i32* %q, align 4, !dbg !110, !taffo.info !99
  %cmp12 = icmp slt i32 %17, 16, !dbg !112, !taffo.info !102
  br i1 %cmp12, label %for.body13, label %for.end51, !dbg !113, !taffo.info !57

for.body13:                                       ; preds = %for.cond11
  br label %VITIS_LOOP_54_3, !dbg !114

VITIS_LOOP_54_3:                                  ; preds = %for.body13
  store i32 0, i32* %p, align 4, !dbg !115, !taffo.info !57
  br label %for.cond14, !dbg !118

for.cond14:                                       ; preds = %for.inc32, %VITIS_LOOP_54_3
  %18 = load i32, i32* %p, align 4, !dbg !119, !taffo.info !99
  %cmp15 = icmp slt i32 %18, 16, !dbg !121, !taffo.info !102
  br i1 %cmp15, label %for.body16, label %for.end34, !dbg !122, !taffo.info !57

for.body16:                                       ; preds = %for.cond14
  %19 = load float*, float** %sums, align 8, !dbg !123, !taffo.info !1
  %20 = load i32, i32* %p, align 4, !dbg !125, !taffo.info !29
  %idxprom = sext i32 %20 to i64, !dbg !123, !taffo.info !29
  %arrayidx = getelementptr inbounds float, float* %19, i64 %idxprom, !dbg !123, !taffo.info !126
  store float 0.000000e+00, float* %arrayidx, align 4, !dbg !127, !taffo.info !57
  br label %VITIS_LOOP_57_4, !dbg !123

VITIS_LOOP_57_4:                                  ; preds = %for.body16
  store i32 0, i32* %s, align 4, !dbg !128, !taffo.info !57
  br label %for.cond17, !dbg !130

for.cond17:                                       ; preds = %for.inc, %VITIS_LOOP_57_4
  %21 = load i32, i32* %s, align 4, !dbg !131, !taffo.info !99
  %cmp18 = icmp slt i32 %21, 16, !dbg !133, !taffo.info !102
  br i1 %cmp18, label %for.body19, label %for.end, !dbg !134, !taffo.info !57

for.body19:                                       ; preds = %for.cond17
  %22 = load float*, float** %As, align 8, !dbg !135, !taffo.info !31, !taffo.target !33
  %23 = load i32, i32* %r, align 4, !dbg !137, !taffo.info !29
  %24 = load i32, i32* %nq, align 4, !dbg !138, !taffo.info !27
  %mul = mul nsw i32 %23, %24, !dbg !139, !taffo.info !140
  %25 = load i32, i32* %q, align 4, !dbg !142, !taffo.info !29
  %26 = load i32, i32* %np, align 4, !dbg !143, !taffo.info !27
  %mul20 = mul nsw i32 %25, %26, !dbg !144, !taffo.info !140
  %add = add nsw i32 %mul, %mul20, !dbg !145, !taffo.info !146
  %27 = load i32, i32* %s, align 4, !dbg !148, !taffo.info !29
  %add21 = add nsw i32 %add, %27, !dbg !149, !taffo.info !150
  %idxprom22 = sext i32 %add21 to i64, !dbg !135, !taffo.info !150
  %arrayidx23 = getelementptr inbounds float, float* %22, i64 %idxprom22, !dbg !135, !taffo.info !31, !taffo.target !33
  %28 = load float, float* %arrayidx23, align 4, !dbg !135, !taffo.info !31, !taffo.target !33
  %29 = load float*, float** %Cs, align 8, !dbg !152, !taffo.info !31, !taffo.target !34
  %30 = load i32, i32* %s, align 4, !dbg !153, !taffo.info !29
  %mul24 = mul nsw i32 %30, 16, !dbg !154, !taffo.info !140
  %31 = load i32, i32* %p, align 4, !dbg !155, !taffo.info !29
  %add25 = add nsw i32 %mul24, %31, !dbg !156, !taffo.info !157
  %idxprom26 = sext i32 %add25 to i64, !dbg !152, !taffo.info !157
  %arrayidx27 = getelementptr inbounds float, float* %29, i64 %idxprom26, !dbg !152, !taffo.info !31, !taffo.target !34
  %32 = load float, float* %arrayidx27, align 4, !dbg !152, !taffo.info !31, !taffo.target !34
  %mul28 = fmul float %28, %32, !dbg !159, !taffo.info !126, !taffo.target !33
  %33 = load float*, float** %sums, align 8, !dbg !160, !taffo.info !1
  %34 = load i32, i32* %p, align 4, !dbg !161, !taffo.info !29
  %idxprom29 = sext i32 %34 to i64, !dbg !160, !taffo.info !29
  %arrayidx30 = getelementptr inbounds float, float* %33, i64 %idxprom29, !dbg !160, !taffo.info !126
  %35 = load float, float* %arrayidx30, align 4, !dbg !162, !taffo.info !126
  %add31 = fadd float %35, %mul28, !dbg !162, !taffo.info !126
  store float %add31, float* %arrayidx30, align 4, !dbg !162, !taffo.info !57
  br label %for.inc, !dbg !163

for.inc:                                          ; preds = %for.body19
  %36 = load i32, i32* %s, align 4, !dbg !164, !taffo.info !29
  %inc = add nsw i32 %36, 1, !dbg !164, !taffo.info !165
  store i32 %inc, i32* %s, align 4, !dbg !164, !taffo.info !57
  br label %for.cond17, !dbg !167, !llvm.loop !168

for.end:                                          ; preds = %for.cond17
  br label %for.inc32, !dbg !173

for.inc32:                                        ; preds = %for.end
  %37 = load i32, i32* %p, align 4, !dbg !174, !taffo.info !29
  %inc33 = add nsw i32 %37, 1, !dbg !174, !taffo.info !165
  store i32 %inc33, i32* %p, align 4, !dbg !174, !taffo.info !57
  br label %for.cond14, !dbg !175, !llvm.loop !176

for.end34:                                        ; preds = %for.cond14
  br label %VITIS_LOOP_64_5, !dbg !177

VITIS_LOOP_64_5:                                  ; preds = %for.end34
  store i32 0, i32* %p, align 4, !dbg !181, !taffo.info !57
  br label %for.cond35, !dbg !183

for.cond35:                                       ; preds = %for.inc46, %VITIS_LOOP_64_5
  %38 = load i32, i32* %p, align 4, !dbg !184, !taffo.info !99
  %cmp36 = icmp slt i32 %38, 16, !dbg !186, !taffo.info !102
  br i1 %cmp36, label %for.body37, label %for.end48, !dbg !187, !taffo.info !57

for.body37:                                       ; preds = %for.cond35
  %39 = load float*, float** %sums, align 8, !dbg !188, !taffo.info !1
  %40 = load i32, i32* %p, align 4, !dbg !190, !taffo.info !29
  %idxprom38 = sext i32 %40 to i64, !dbg !188, !taffo.info !29
  %arrayidx39 = getelementptr inbounds float, float* %39, i64 %idxprom38, !dbg !188, !taffo.info !126
  %41 = load float, float* %arrayidx39, align 4, !dbg !188, !taffo.info !126
  %42 = load float*, float** %As, align 8, !dbg !191, !taffo.info !31, !taffo.target !33
  %43 = load i32, i32* %r, align 4, !dbg !192, !taffo.info !99
  %44 = load i32, i32* %nq, align 4, !dbg !193, !taffo.info !27
  %mul40 = mul nsw i32 %43, %44, !dbg !194, !taffo.info !157
  %45 = load i32, i32* %q, align 4, !dbg !195, !taffo.info !99
  %46 = load i32, i32* %np, align 4, !dbg !196, !taffo.info !27
  %mul41 = mul nsw i32 %45, %46, !dbg !197, !taffo.info !157
  %add42 = add nsw i32 %mul40, %mul41, !dbg !198, !taffo.info !199
  %47 = load i32, i32* %p, align 4, !dbg !201, !taffo.info !29
  %add43 = add nsw i32 %add42, %47, !dbg !202, !taffo.info !203
  %idxprom44 = sext i32 %add43 to i64, !dbg !191, !taffo.info !203
  %arrayidx45 = getelementptr inbounds float, float* %42, i64 %idxprom44, !dbg !191, !taffo.info !31, !taffo.target !33
  store float %41, float* %arrayidx45, align 4, !dbg !205, !taffo.info !57, !taffo.target !33
  br label %for.inc46, !dbg !206

for.inc46:                                        ; preds = %for.body37
  %48 = load i32, i32* %p, align 4, !dbg !207, !taffo.info !29
  %inc47 = add nsw i32 %48, 1, !dbg !207, !taffo.info !165
  store i32 %inc47, i32* %p, align 4, !dbg !207, !taffo.info !57
  br label %for.cond35, !dbg !208, !llvm.loop !209

for.end48:                                        ; preds = %for.cond35
  br label %for.inc49, !dbg !214

for.inc49:                                        ; preds = %for.end48
  %49 = load i32, i32* %q, align 4, !dbg !215, !taffo.info !29
  %inc50 = add nsw i32 %49, 1, !dbg !215, !taffo.info !165
  store i32 %inc50, i32* %q, align 4, !dbg !215, !taffo.info !57
  br label %for.cond11, !dbg !216, !llvm.loop !217

for.end51:                                        ; preds = %for.cond11
  br label %for.inc52, !dbg !222

for.inc52:                                        ; preds = %for.end51
  %50 = load i32, i32* %r, align 4, !dbg !223, !taffo.info !29
  %inc53 = add nsw i32 %50, 1, !dbg !223, !taffo.info !165
  store i32 %inc53, i32* %r, align 4, !dbg !223, !taffo.info !57
  br label %for.cond, !dbg !224, !llvm.loop !225

for.end54:                                        ; preds = %for.cond
  %51 = bitcast float** %Cs to i8*, !dbg !230, !taffo.info !31, !taffo.target !34
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %51) #4, !dbg !230, !taffo.info !57, !taffo.target !34
  %52 = bitcast float** %sums to i8*, !dbg !230, !taffo.info !1
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %52) #4, !dbg !230
  %53 = bitcast float** %As to i8*, !dbg !230, !taffo.info !31, !taffo.target !33
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %53) #4, !dbg !230, !taffo.info !57, !taffo.target !33
  %54 = bitcast i32* %k to i8*, !dbg !230, !taffo.info !29
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %54) #4, !dbg !230, !taffo.info !57
  %55 = bitcast i32* %j to i8*, !dbg !230, !taffo.info !29
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %55) #4, !dbg !230, !taffo.info !57
  %56 = bitcast i32* %i to i8*, !dbg !230, !taffo.info !29
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %56) #4, !dbg !230, !taffo.info !57
  %57 = bitcast i32* %s to i8*, !dbg !230, !taffo.info !29
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %57) #4, !dbg !230, !taffo.info !57
  %58 = bitcast i32* %p to i8*, !dbg !230, !taffo.info !29
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %58) #4, !dbg !230, !taffo.info !57
  %59 = bitcast i32* %q to i8*, !dbg !230, !taffo.info !29
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %59) #4, !dbg !230, !taffo.info !57
  %60 = bitcast i32* %r to i8*, !dbg !230, !taffo.info !29
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %60) #4, !dbg !230, !taffo.info !57
  %61 = bitcast i32* %np to i8*, !dbg !230, !taffo.info !27
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %61) #4, !dbg !230
  %62 = bitcast i32* %nq to i8*, !dbg !230, !taffo.info !27
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %62) #4, !dbg !230
  %63 = bitcast i32* %nr to i8*, !dbg !230, !taffo.info !27
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %63) #4, !dbg !230
  ret void, !dbg !230
}

; Function Attrs: nounwind readnone speculatable
declare !taffo.funinfo !231 void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: inaccessiblememonly nounwind
declare !taffo.funinfo !11 void @llvm.sideeffect() #2

; Function Attrs: argmemonly nounwind
declare !taffo.funinfo !232 void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare !taffo.funinfo !233 void @llvm.var.annotation(i8*, i8*, i8*, i32) #4

; Function Attrs: argmemonly nounwind
declare !taffo.funinfo !232 void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #3

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
!31 = !{i1 false, !32, i1 false, i1 true}
!32 = !{double -3.200000e+01, double 3.100000e+01}
!33 = !{!"As"}
!34 = !{!"Cs"}
!35 = !DILocalVariable(name: "A", arg: 1, scope: !16, file: !17, line: 24, type: !20)
!36 = !DILocation(line: 24, column: 63, scope: !16)
!37 = !DILocalVariable(name: "C", arg: 2, scope: !16, file: !17, line: 24, type: !20)
!38 = !DILocation(line: 24, column: 74, scope: !16)
!39 = !DILocalVariable(name: "sum", arg: 3, scope: !16, file: !17, line: 24, type: !20)
!40 = !DILocation(line: 24, column: 84, scope: !16)
!41 = !DILocation(line: 26, column: 9, scope: !16)
!42 = !DILocation(line: 27, column: 9, scope: !16)
!43 = !DILocation(line: 28, column: 9, scope: !16)
!44 = !DILocation(line: 29, column: 9, scope: !16)
!45 = !DILocation(line: 30, column: 9, scope: !16)
!46 = !DILocation(line: 31, column: 2, scope: !16)
!47 = !DILocalVariable(name: "nr", scope: !16, file: !17, line: 31, type: !48)
!48 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!49 = !DILocation(line: 31, column: 6, scope: !16)
!50 = !DILocation(line: 32, column: 3, scope: !16)
!51 = !DILocalVariable(name: "nq", scope: !16, file: !17, line: 32, type: !48)
!52 = !DILocation(line: 32, column: 7, scope: !16)
!53 = !DILocation(line: 33, column: 3, scope: !16)
!54 = !DILocalVariable(name: "np", scope: !16, file: !17, line: 33, type: !48)
!55 = !DILocation(line: 33, column: 7, scope: !16)
!56 = !DILocation(line: 34, column: 4, scope: !16)
!57 = !{i1 false, i1 false, i1 false, i1 true}
!58 = !DILocalVariable(name: "r", scope: !16, file: !17, line: 34, type: !48)
!59 = !DILocation(line: 34, column: 8, scope: !16)
!60 = !DILocation(line: 35, column: 3, scope: !16)
!61 = !DILocalVariable(name: "q", scope: !16, file: !17, line: 35, type: !48)
!62 = !DILocation(line: 35, column: 7, scope: !16)
!63 = !DILocation(line: 36, column: 3, scope: !16)
!64 = !DILocalVariable(name: "p", scope: !16, file: !17, line: 36, type: !48)
!65 = !DILocation(line: 36, column: 7, scope: !16)
!66 = !DILocation(line: 37, column: 3, scope: !16)
!67 = !DILocalVariable(name: "s", scope: !16, file: !17, line: 37, type: !48)
!68 = !DILocation(line: 37, column: 7, scope: !16)
!69 = !DILocation(line: 39, column: 3, scope: !16)
!70 = !DILocalVariable(name: "i", scope: !16, file: !17, line: 39, type: !48)
!71 = !DILocation(line: 39, column: 7, scope: !16)
!72 = !DILocation(line: 40, column: 3, scope: !16)
!73 = !DILocalVariable(name: "j", scope: !16, file: !17, line: 40, type: !48)
!74 = !DILocation(line: 40, column: 7, scope: !16)
!75 = !DILocation(line: 41, column: 3, scope: !16)
!76 = !DILocalVariable(name: "k", scope: !16, file: !17, line: 41, type: !48)
!77 = !DILocation(line: 41, column: 7, scope: !16)
!78 = !DILocation(line: 42, column: 3, scope: !16)
!79 = !DILocalVariable(name: "As", scope: !16, file: !17, line: 42, type: !20)
!80 = !DILocation(line: 42, column: 10, scope: !16)
!81 = !DILocation(line: 43, column: 8, scope: !16)
!82 = !DILocation(line: 43, column: 6, scope: !16)
!83 = !DILocation(line: 44, column: 3, scope: !16)
!84 = !DILocalVariable(name: "sums", scope: !16, file: !17, line: 44, type: !20)
!85 = !DILocation(line: 44, column: 10, scope: !16)
!86 = !DILocation(line: 45, column: 10, scope: !16)
!87 = !DILocation(line: 45, column: 8, scope: !16)
!88 = !DILocation(line: 46, column: 3, scope: !16)
!89 = !DILocalVariable(name: "Cs", scope: !16, file: !17, line: 46, type: !20)
!90 = !DILocation(line: 46, column: 10, scope: !16)
!91 = !DILocation(line: 47, column: 8, scope: !16)
!92 = !DILocation(line: 47, column: 6, scope: !16)
!93 = !DILocation(line: 47, column: 3, scope: !16)
!94 = !DILocation(line: 50, column: 27, scope: !95)
!95 = distinct !DILexicalBlock(scope: !16, file: !17, line: 50, column: 20)
!96 = !DILocation(line: 50, column: 25, scope: !95)
!97 = !DILocation(line: 50, column: 32, scope: !98)
!98 = distinct !DILexicalBlock(scope: !95, file: !17, line: 50, column: 20)
!99 = !{i1 false, !100, i1 false, i1 true}
!100 = !{double 0.000000e+00, double 1.700000e+01}
!101 = !DILocation(line: 50, column: 34, scope: !98)
!102 = !{i1 false, !103, i1 false, i1 true}
!103 = !{double 0.000000e+00, double 1.000000e+00}
!104 = !DILocation(line: 50, column: 20, scope: !95)
!105 = !DILocation(line: 50, column: 44, scope: !98)
!106 = !DILocation(line: 52, column: 26, scope: !107)
!107 = distinct !DILexicalBlock(scope: !108, file: !17, line: 52, column: 19)
!108 = distinct !DILexicalBlock(scope: !98, file: !17, line: 50, column: 44)
!109 = !DILocation(line: 52, column: 24, scope: !107)
!110 = !DILocation(line: 52, column: 31, scope: !111)
!111 = distinct !DILexicalBlock(scope: !107, file: !17, line: 52, column: 19)
!112 = !DILocation(line: 52, column: 33, scope: !111)
!113 = !DILocation(line: 52, column: 19, scope: !107)
!114 = !DILocation(line: 52, column: 44, scope: !111)
!115 = !DILocation(line: 54, column: 26, scope: !116)
!116 = distinct !DILexicalBlock(scope: !117, file: !17, line: 54, column: 19)
!117 = distinct !DILexicalBlock(scope: !111, file: !17, line: 52, column: 44)
!118 = !DILocation(line: 54, column: 24, scope: !116)
!119 = !DILocation(line: 54, column: 31, scope: !120)
!120 = distinct !DILexicalBlock(scope: !116, file: !17, line: 54, column: 19)
!121 = !DILocation(line: 54, column: 33, scope: !120)
!122 = !DILocation(line: 54, column: 19, scope: !116)
!123 = !DILocation(line: 56, column: 2, scope: !124)
!124 = distinct !DILexicalBlock(scope: !120, file: !17, line: 54, column: 44)
!125 = !DILocation(line: 56, column: 7, scope: !124)
!126 = !{i1 false, !2, i1 false, i1 true}
!127 = !DILocation(line: 56, column: 10, scope: !124)
!128 = !DILocation(line: 57, column: 30, scope: !129)
!129 = distinct !DILexicalBlock(scope: !124, file: !17, line: 57, column: 23)
!130 = !DILocation(line: 57, column: 28, scope: !129)
!131 = !DILocation(line: 57, column: 35, scope: !132)
!132 = distinct !DILexicalBlock(scope: !129, file: !17, line: 57, column: 23)
!133 = !DILocation(line: 57, column: 37, scope: !132)
!134 = !DILocation(line: 57, column: 23, scope: !129)
!135 = !DILocation(line: 59, column: 13, scope: !136)
!136 = distinct !DILexicalBlock(scope: !132, file: !17, line: 57, column: 47)
!137 = !DILocation(line: 59, column: 16, scope: !136)
!138 = !DILocation(line: 59, column: 18, scope: !136)
!139 = !DILocation(line: 59, column: 17, scope: !136)
!140 = !{i1 false, !141, i1 false, i1 true}
!141 = !{double 0.000000e+00, double 2.560000e+02}
!142 = !DILocation(line: 59, column: 21, scope: !136)
!143 = !DILocation(line: 59, column: 23, scope: !136)
!144 = !DILocation(line: 59, column: 22, scope: !136)
!145 = !DILocation(line: 59, column: 20, scope: !136)
!146 = !{i1 false, !147, i1 false, i1 true}
!147 = !{double 0.000000e+00, double 5.120000e+02}
!148 = !DILocation(line: 59, column: 26, scope: !136)
!149 = !DILocation(line: 59, column: 25, scope: !136)
!150 = !{i1 false, !151, i1 false, i1 true}
!151 = !{double 0.000000e+00, double 5.280000e+02}
!152 = !DILocation(line: 59, column: 31, scope: !136)
!153 = !DILocation(line: 59, column: 34, scope: !136)
!154 = !DILocation(line: 59, column: 36, scope: !136)
!155 = !DILocation(line: 59, column: 43, scope: !136)
!156 = !DILocation(line: 59, column: 41, scope: !136)
!157 = !{i1 false, !158, i1 false, i1 true}
!158 = !{double 0.000000e+00, double 2.720000e+02}
!159 = !DILocation(line: 59, column: 29, scope: !136)
!160 = !DILocation(line: 59, column: 2, scope: !136)
!161 = !DILocation(line: 59, column: 7, scope: !136)
!162 = !DILocation(line: 59, column: 10, scope: !136)
!163 = !DILocation(line: 60, column: 9, scope: !136)
!164 = !DILocation(line: 57, column: 44, scope: !132)
!165 = !{i1 false, !166, i1 false, i1 true}
!166 = !{double 1.000000e+00, double 1.700000e+01}
!167 = !DILocation(line: 57, column: 23, scope: !132)
!168 = distinct !{!168, !134, !169, !170, !172}
!169 = !DILocation(line: 60, column: 9, scope: !129)
!170 = !{!"llvm.loop.pipeline.enable", i32 1, i1 false, i8 -1, !"user", !171}
!171 = !DILocation(line: 58, column: 9, scope: !129)
!172 = !{!"llvm.loop.name", !"VITIS_LOOP_57_4"}
!173 = !DILocation(line: 61, column: 7, scope: !124)
!174 = !DILocation(line: 54, column: 40, scope: !120)
!175 = !DILocation(line: 54, column: 19, scope: !120)
!176 = distinct !{!176, !122, !177, !178, !180}
!177 = !DILocation(line: 61, column: 7, scope: !116)
!178 = !{!"llvm.loop.unroll.count", i32 8, !"user", !179}
!179 = !DILocation(line: 55, column: 9, scope: !116)
!180 = !{!"llvm.loop.name", !"VITIS_LOOP_54_3"}
!181 = !DILocation(line: 64, column: 31, scope: !182)
!182 = distinct !DILexicalBlock(scope: !117, file: !17, line: 64, column: 24)
!183 = !DILocation(line: 64, column: 29, scope: !182)
!184 = !DILocation(line: 64, column: 36, scope: !185)
!185 = distinct !DILexicalBlock(scope: !182, file: !17, line: 64, column: 24)
!186 = !DILocation(line: 64, column: 38, scope: !185)
!187 = !DILocation(line: 64, column: 24, scope: !182)
!188 = !DILocation(line: 66, column: 20, scope: !189)
!189 = distinct !DILexicalBlock(scope: !185, file: !17, line: 64, column: 48)
!190 = !DILocation(line: 66, column: 25, scope: !189)
!191 = !DILocation(line: 66, column: 2, scope: !189)
!192 = !DILocation(line: 66, column: 5, scope: !189)
!193 = !DILocation(line: 66, column: 7, scope: !189)
!194 = !DILocation(line: 66, column: 6, scope: !189)
!195 = !DILocation(line: 66, column: 10, scope: !189)
!196 = !DILocation(line: 66, column: 12, scope: !189)
!197 = !DILocation(line: 66, column: 11, scope: !189)
!198 = !DILocation(line: 66, column: 9, scope: !189)
!199 = !{i1 false, !200, i1 false, i1 true}
!200 = !{double 0.000000e+00, double 5.440000e+02}
!201 = !DILocation(line: 66, column: 15, scope: !189)
!202 = !DILocation(line: 66, column: 14, scope: !189)
!203 = !{i1 false, !204, i1 false, i1 true}
!204 = !{double 0.000000e+00, double 5.600000e+02}
!205 = !DILocation(line: 66, column: 18, scope: !189)
!206 = !DILocation(line: 67, column: 8, scope: !189)
!207 = !DILocation(line: 64, column: 45, scope: !185)
!208 = !DILocation(line: 64, column: 24, scope: !185)
!209 = distinct !{!209, !187, !210, !211, !213}
!210 = !DILocation(line: 67, column: 8, scope: !182)
!211 = !{!"llvm.loop.unroll.count", i32 8, !"user", !212}
!212 = !DILocation(line: 65, column: 9, scope: !182)
!213 = !{!"llvm.loop.name", !"VITIS_LOOP_64_5"}
!214 = !DILocation(line: 68, column: 5, scope: !117)
!215 = !DILocation(line: 52, column: 40, scope: !111)
!216 = !DILocation(line: 52, column: 19, scope: !111)
!217 = distinct !{!217, !113, !218, !219, !221}
!218 = !DILocation(line: 68, column: 5, scope: !107)
!219 = !{!"llvm.loop.pipeline.enable", i32 1, i1 false, i8 -1, !"user", !220}
!220 = !DILocation(line: 53, column: 9, scope: !107)
!221 = !{!"llvm.loop.name", !"VITIS_LOOP_52_2"}
!222 = !DILocation(line: 69, column: 4, scope: !108)
!223 = !DILocation(line: 50, column: 41, scope: !98)
!224 = !DILocation(line: 50, column: 20, scope: !98)
!225 = distinct !{!225, !104, !226, !227, !229}
!226 = !DILocation(line: 69, column: 4, scope: !95)
!227 = !{!"llvm.loop.pipeline.enable", i32 1, i1 false, i8 -1, !"user", !228}
!228 = !DILocation(line: 51, column: 9, scope: !95)
!229 = !{!"llvm.loop.name", !"VITIS_LOOP_50_1"}
!230 = !DILocation(line: 72, column: 1, scope: !16)
!231 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!232 = !{i32 0, i1 false, i32 0, i1 false}
!233 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
