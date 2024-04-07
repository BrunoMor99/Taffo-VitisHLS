; ModuleID = '/home/bruno/Desktop/benchmarks/doitgen/proj_doitgen/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
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
define void @doitgen(float* %A, float* %C, float* %sum) #0 !dbg !7 !fpga.function.pragma !13 {
entry:
  %A.addr = alloca float*, align 8
  %C.addr = alloca float*, align 8
  %sum.addr = alloca float*, align 8
  %nr = alloca i32, align 4
  %nq = alloca i32, align 4
  %np = alloca i32, align 4
  %r = alloca i32, align 4
  %q = alloca i32, align 4
  %p = alloca i32, align 4
  %s = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %As = alloca float*, align 8
  %sums = alloca float*, align 8
  %Cs = alloca float*, align 8
  store float* %A, float** %A.addr, align 8
  call void @llvm.dbg.declare(metadata float** %A.addr, metadata !16, metadata !DIExpression()), !dbg !17
  store float* %C, float** %C.addr, align 8
  call void @llvm.dbg.declare(metadata float** %C.addr, metadata !18, metadata !DIExpression()), !dbg !19
  store float* %sum, float** %sum.addr, align 8
  call void @llvm.dbg.declare(metadata float** %sum.addr, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %A, [0 x i8] zeroinitializer, i64 4096, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !22
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %C, [0 x i8] zeroinitializer, i64 256, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !23
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %sum, [0 x i8] zeroinitializer, i64 16, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !24
  call void @llvm.sideeffect() #5 [ "xlx_array_partition"(float* %A, i32 1, i32 4, i32 1, i1 false) ], !dbg !25
  call void @llvm.sideeffect() #5 [ "xlx_array_partition"(float* %C, i32 1, i32 4, i32 1, i1 false) ], !dbg !26
  %0 = bitcast i32* %nr to i8*, !dbg !27
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !27
  call void @llvm.dbg.declare(metadata i32* %nr, metadata !28, metadata !DIExpression()), !dbg !30
  store i32 16, i32* %nr, align 4, !dbg !30
  %1 = bitcast i32* %nq to i8*, !dbg !31
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !31
  call void @llvm.dbg.declare(metadata i32* %nq, metadata !32, metadata !DIExpression()), !dbg !33
  store i32 16, i32* %nq, align 4, !dbg !33
  %2 = bitcast i32* %np to i8*, !dbg !34
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !34
  call void @llvm.dbg.declare(metadata i32* %np, metadata !35, metadata !DIExpression()), !dbg !36
  store i32 16, i32* %np, align 4, !dbg !36
  %3 = bitcast i32* %r to i8*, !dbg !37
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !37
  call void @llvm.dbg.declare(metadata i32* %r, metadata !38, metadata !DIExpression()), !dbg !39
  %r1 = bitcast i32* %r to i8*, !dbg !37
  call void @llvm.var.annotation(i8* %r1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 34), !dbg !37
  %4 = bitcast i32* %q to i8*, !dbg !40
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !40
  call void @llvm.dbg.declare(metadata i32* %q, metadata !41, metadata !DIExpression()), !dbg !42
  %q2 = bitcast i32* %q to i8*, !dbg !40
  call void @llvm.var.annotation(i8* %q2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 35), !dbg !40
  %5 = bitcast i32* %p to i8*, !dbg !43
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !43
  call void @llvm.dbg.declare(metadata i32* %p, metadata !44, metadata !DIExpression()), !dbg !45
  %p3 = bitcast i32* %p to i8*, !dbg !43
  call void @llvm.var.annotation(i8* %p3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 36), !dbg !43
  %6 = bitcast i32* %s to i8*, !dbg !46
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !46
  call void @llvm.dbg.declare(metadata i32* %s, metadata !47, metadata !DIExpression()), !dbg !48
  %s4 = bitcast i32* %s to i8*, !dbg !46
  call void @llvm.var.annotation(i8* %s4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 37), !dbg !46
  %7 = bitcast i32* %i to i8*, !dbg !49
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4, !dbg !49
  call void @llvm.dbg.declare(metadata i32* %i, metadata !50, metadata !DIExpression()), !dbg !51
  %i5 = bitcast i32* %i to i8*, !dbg !49
  call void @llvm.var.annotation(i8* %i5, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 39), !dbg !49
  %8 = bitcast i32* %j to i8*, !dbg !52
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4, !dbg !52
  call void @llvm.dbg.declare(metadata i32* %j, metadata !53, metadata !DIExpression()), !dbg !54
  %j6 = bitcast i32* %j to i8*, !dbg !52
  call void @llvm.var.annotation(i8* %j6, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 40), !dbg !52
  %9 = bitcast i32* %k to i8*, !dbg !55
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #4, !dbg !55
  call void @llvm.dbg.declare(metadata i32* %k, metadata !56, metadata !DIExpression()), !dbg !57
  %k7 = bitcast i32* %k to i8*, !dbg !55
  call void @llvm.var.annotation(i8* %k7, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 41), !dbg !55
  %10 = bitcast float** %As to i8*, !dbg !58
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %10) #4, !dbg !58
  call void @llvm.dbg.declare(metadata float** %As, metadata !59, metadata !DIExpression()), !dbg !60
  %As8 = bitcast float** %As to i8*, !dbg !58
  call void @llvm.var.annotation(i8* %As8, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 42), !dbg !58
  %11 = load float*, float** %A.addr, align 8, !dbg !61
  store float* %11, float** %As, align 8, !dbg !62
  %12 = bitcast float** %sums to i8*, !dbg !63
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %12) #4, !dbg !63
  call void @llvm.dbg.declare(metadata float** %sums, metadata !64, metadata !DIExpression()), !dbg !65
  %sums9 = bitcast float** %sums to i8*, !dbg !63
  call void @llvm.var.annotation(i8* %sums9, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 44), !dbg !63
  %13 = load float*, float** %sum.addr, align 8, !dbg !66
  store float* %13, float** %sums, align 8, !dbg !67
  %14 = bitcast float** %Cs to i8*, !dbg !68
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %14) #4, !dbg !68
  call void @llvm.dbg.declare(metadata float** %Cs, metadata !69, metadata !DIExpression()), !dbg !70
  %Cs10 = bitcast float** %Cs to i8*, !dbg !68
  call void @llvm.var.annotation(i8* %Cs10, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 46), !dbg !68
  %15 = load float*, float** %C.addr, align 8, !dbg !71
  store float* %15, float** %Cs, align 8, !dbg !72
  br label %VITIS_LOOP_50_1, !dbg !73

VITIS_LOOP_50_1:                                  ; preds = %entry
  store i32 0, i32* %r, align 4, !dbg !74
  br label %for.cond, !dbg !76

for.cond:                                         ; preds = %for.inc52, %VITIS_LOOP_50_1
  %16 = load i32, i32* %r, align 4, !dbg !77
  %cmp = icmp slt i32 %16, 16, !dbg !79
  br i1 %cmp, label %for.body, label %for.end54, !dbg !80

for.body:                                         ; preds = %for.cond
  br label %VITIS_LOOP_52_2, !dbg !81

VITIS_LOOP_52_2:                                  ; preds = %for.body
  store i32 0, i32* %q, align 4, !dbg !82
  br label %for.cond11, !dbg !85

for.cond11:                                       ; preds = %for.inc49, %VITIS_LOOP_52_2
  %17 = load i32, i32* %q, align 4, !dbg !86
  %cmp12 = icmp slt i32 %17, 16, !dbg !88
  br i1 %cmp12, label %for.body13, label %for.end51, !dbg !89

for.body13:                                       ; preds = %for.cond11
  br label %VITIS_LOOP_54_3, !dbg !90

VITIS_LOOP_54_3:                                  ; preds = %for.body13
  store i32 0, i32* %p, align 4, !dbg !91
  br label %for.cond14, !dbg !94

for.cond14:                                       ; preds = %for.inc32, %VITIS_LOOP_54_3
  %18 = load i32, i32* %p, align 4, !dbg !95
  %cmp15 = icmp slt i32 %18, 16, !dbg !97
  br i1 %cmp15, label %for.body16, label %for.end34, !dbg !98

for.body16:                                       ; preds = %for.cond14
  %19 = load float*, float** %sums, align 8, !dbg !99
  %20 = load i32, i32* %p, align 4, !dbg !101
  %idxprom = sext i32 %20 to i64, !dbg !99
  %arrayidx = getelementptr inbounds float, float* %19, i64 %idxprom, !dbg !99
  store float 0.000000e+00, float* %arrayidx, align 4, !dbg !102
  br label %VITIS_LOOP_57_4, !dbg !99

VITIS_LOOP_57_4:                                  ; preds = %for.body16
  store i32 0, i32* %s, align 4, !dbg !103
  br label %for.cond17, !dbg !105

for.cond17:                                       ; preds = %for.inc, %VITIS_LOOP_57_4
  %21 = load i32, i32* %s, align 4, !dbg !106
  %cmp18 = icmp slt i32 %21, 16, !dbg !108
  br i1 %cmp18, label %for.body19, label %for.end, !dbg !109

for.body19:                                       ; preds = %for.cond17
  %22 = load float*, float** %As, align 8, !dbg !110
  %23 = load i32, i32* %r, align 4, !dbg !112
  %24 = load i32, i32* %nq, align 4, !dbg !113
  %mul = mul nsw i32 %23, %24, !dbg !114
  %25 = load i32, i32* %q, align 4, !dbg !115
  %26 = load i32, i32* %np, align 4, !dbg !116
  %mul20 = mul nsw i32 %25, %26, !dbg !117
  %add = add nsw i32 %mul, %mul20, !dbg !118
  %27 = load i32, i32* %s, align 4, !dbg !119
  %add21 = add nsw i32 %add, %27, !dbg !120
  %idxprom22 = sext i32 %add21 to i64, !dbg !110
  %arrayidx23 = getelementptr inbounds float, float* %22, i64 %idxprom22, !dbg !110
  %28 = load float, float* %arrayidx23, align 4, !dbg !110
  %29 = load float*, float** %Cs, align 8, !dbg !121
  %30 = load i32, i32* %s, align 4, !dbg !122
  %mul24 = mul nsw i32 %30, 16, !dbg !123
  %31 = load i32, i32* %p, align 4, !dbg !124
  %add25 = add nsw i32 %mul24, %31, !dbg !125
  %idxprom26 = sext i32 %add25 to i64, !dbg !121
  %arrayidx27 = getelementptr inbounds float, float* %29, i64 %idxprom26, !dbg !121
  %32 = load float, float* %arrayidx27, align 4, !dbg !121
  %mul28 = fmul float %28, %32, !dbg !126
  %33 = load float*, float** %sums, align 8, !dbg !127
  %34 = load i32, i32* %p, align 4, !dbg !128
  %idxprom29 = sext i32 %34 to i64, !dbg !127
  %arrayidx30 = getelementptr inbounds float, float* %33, i64 %idxprom29, !dbg !127
  %35 = load float, float* %arrayidx30, align 4, !dbg !129
  %add31 = fadd float %35, %mul28, !dbg !129
  store float %add31, float* %arrayidx30, align 4, !dbg !129
  br label %for.inc, !dbg !130

for.inc:                                          ; preds = %for.body19
  %36 = load i32, i32* %s, align 4, !dbg !131
  %inc = add nsw i32 %36, 1, !dbg !131
  store i32 %inc, i32* %s, align 4, !dbg !131
  br label %for.cond17, !dbg !132, !llvm.loop !133

for.end:                                          ; preds = %for.cond17
  br label %for.inc32, !dbg !138

for.inc32:                                        ; preds = %for.end
  %37 = load i32, i32* %p, align 4, !dbg !139
  %inc33 = add nsw i32 %37, 1, !dbg !139
  store i32 %inc33, i32* %p, align 4, !dbg !139
  br label %for.cond14, !dbg !140, !llvm.loop !141

for.end34:                                        ; preds = %for.cond14
  br label %VITIS_LOOP_64_5, !dbg !142

VITIS_LOOP_64_5:                                  ; preds = %for.end34
  store i32 0, i32* %p, align 4, !dbg !146
  br label %for.cond35, !dbg !148

for.cond35:                                       ; preds = %for.inc46, %VITIS_LOOP_64_5
  %38 = load i32, i32* %p, align 4, !dbg !149
  %cmp36 = icmp slt i32 %38, 16, !dbg !151
  br i1 %cmp36, label %for.body37, label %for.end48, !dbg !152

for.body37:                                       ; preds = %for.cond35
  %39 = load float*, float** %sums, align 8, !dbg !153
  %40 = load i32, i32* %p, align 4, !dbg !155
  %idxprom38 = sext i32 %40 to i64, !dbg !153
  %arrayidx39 = getelementptr inbounds float, float* %39, i64 %idxprom38, !dbg !153
  %41 = load float, float* %arrayidx39, align 4, !dbg !153
  %42 = load float*, float** %As, align 8, !dbg !156
  %43 = load i32, i32* %r, align 4, !dbg !157
  %44 = load i32, i32* %nq, align 4, !dbg !158
  %mul40 = mul nsw i32 %43, %44, !dbg !159
  %45 = load i32, i32* %q, align 4, !dbg !160
  %46 = load i32, i32* %np, align 4, !dbg !161
  %mul41 = mul nsw i32 %45, %46, !dbg !162
  %add42 = add nsw i32 %mul40, %mul41, !dbg !163
  %47 = load i32, i32* %p, align 4, !dbg !164
  %add43 = add nsw i32 %add42, %47, !dbg !165
  %idxprom44 = sext i32 %add43 to i64, !dbg !156
  %arrayidx45 = getelementptr inbounds float, float* %42, i64 %idxprom44, !dbg !156
  store float %41, float* %arrayidx45, align 4, !dbg !166
  br label %for.inc46, !dbg !167

for.inc46:                                        ; preds = %for.body37
  %48 = load i32, i32* %p, align 4, !dbg !168
  %inc47 = add nsw i32 %48, 1, !dbg !168
  store i32 %inc47, i32* %p, align 4, !dbg !168
  br label %for.cond35, !dbg !169, !llvm.loop !170

for.end48:                                        ; preds = %for.cond35
  br label %for.inc49, !dbg !175

for.inc49:                                        ; preds = %for.end48
  %49 = load i32, i32* %q, align 4, !dbg !176
  %inc50 = add nsw i32 %49, 1, !dbg !176
  store i32 %inc50, i32* %q, align 4, !dbg !176
  br label %for.cond11, !dbg !177, !llvm.loop !178

for.end51:                                        ; preds = %for.cond11
  br label %for.inc52, !dbg !183

for.inc52:                                        ; preds = %for.end51
  %50 = load i32, i32* %r, align 4, !dbg !184
  %inc53 = add nsw i32 %50, 1, !dbg !184
  store i32 %inc53, i32* %r, align 4, !dbg !184
  br label %for.cond, !dbg !185, !llvm.loop !186

for.end54:                                        ; preds = %for.cond
  %51 = bitcast float** %Cs to i8*, !dbg !191
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %51) #4, !dbg !191
  %52 = bitcast float** %sums to i8*, !dbg !191
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %52) #4, !dbg !191
  %53 = bitcast float** %As to i8*, !dbg !191
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %53) #4, !dbg !191
  %54 = bitcast i32* %k to i8*, !dbg !191
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %54) #4, !dbg !191
  %55 = bitcast i32* %j to i8*, !dbg !191
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %55) #4, !dbg !191
  %56 = bitcast i32* %i to i8*, !dbg !191
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %56) #4, !dbg !191
  %57 = bitcast i32* %s to i8*, !dbg !191
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %57) #4, !dbg !191
  %58 = bitcast i32* %p to i8*, !dbg !191
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %58) #4, !dbg !191
  %59 = bitcast i32* %q to i8*, !dbg !191
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %59) #4, !dbg !191
  %60 = bitcast i32* %r to i8*, !dbg !191
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %60) #4, !dbg !191
  %61 = bitcast i32* %np to i8*, !dbg !191
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %61) #4, !dbg !191
  %62 = bitcast i32* %nq to i8*, !dbg !191
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %62) #4, !dbg !191
  %63 = bitcast i32* %nr to i8*, !dbg !191
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %63) #4, !dbg !191
  ret void, !dbg !191
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.var.annotation(i8*, i8*, i8*, i32) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #3

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
!16 = !DILocalVariable(name: "A", arg: 1, scope: !7, file: !8, line: 24, type: !11)
!17 = !DILocation(line: 24, column: 63, scope: !7)
!18 = !DILocalVariable(name: "C", arg: 2, scope: !7, file: !8, line: 24, type: !11)
!19 = !DILocation(line: 24, column: 74, scope: !7)
!20 = !DILocalVariable(name: "sum", arg: 3, scope: !7, file: !8, line: 24, type: !11)
!21 = !DILocation(line: 24, column: 84, scope: !7)
!22 = !DILocation(line: 26, column: 9, scope: !7)
!23 = !DILocation(line: 27, column: 9, scope: !7)
!24 = !DILocation(line: 28, column: 9, scope: !7)
!25 = !DILocation(line: 29, column: 9, scope: !7)
!26 = !DILocation(line: 30, column: 9, scope: !7)
!27 = !DILocation(line: 31, column: 2, scope: !7)
!28 = !DILocalVariable(name: "nr", scope: !7, file: !8, line: 31, type: !29)
!29 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!30 = !DILocation(line: 31, column: 6, scope: !7)
!31 = !DILocation(line: 32, column: 3, scope: !7)
!32 = !DILocalVariable(name: "nq", scope: !7, file: !8, line: 32, type: !29)
!33 = !DILocation(line: 32, column: 7, scope: !7)
!34 = !DILocation(line: 33, column: 3, scope: !7)
!35 = !DILocalVariable(name: "np", scope: !7, file: !8, line: 33, type: !29)
!36 = !DILocation(line: 33, column: 7, scope: !7)
!37 = !DILocation(line: 34, column: 4, scope: !7)
!38 = !DILocalVariable(name: "r", scope: !7, file: !8, line: 34, type: !29)
!39 = !DILocation(line: 34, column: 8, scope: !7)
!40 = !DILocation(line: 35, column: 3, scope: !7)
!41 = !DILocalVariable(name: "q", scope: !7, file: !8, line: 35, type: !29)
!42 = !DILocation(line: 35, column: 7, scope: !7)
!43 = !DILocation(line: 36, column: 3, scope: !7)
!44 = !DILocalVariable(name: "p", scope: !7, file: !8, line: 36, type: !29)
!45 = !DILocation(line: 36, column: 7, scope: !7)
!46 = !DILocation(line: 37, column: 3, scope: !7)
!47 = !DILocalVariable(name: "s", scope: !7, file: !8, line: 37, type: !29)
!48 = !DILocation(line: 37, column: 7, scope: !7)
!49 = !DILocation(line: 39, column: 3, scope: !7)
!50 = !DILocalVariable(name: "i", scope: !7, file: !8, line: 39, type: !29)
!51 = !DILocation(line: 39, column: 7, scope: !7)
!52 = !DILocation(line: 40, column: 3, scope: !7)
!53 = !DILocalVariable(name: "j", scope: !7, file: !8, line: 40, type: !29)
!54 = !DILocation(line: 40, column: 7, scope: !7)
!55 = !DILocation(line: 41, column: 3, scope: !7)
!56 = !DILocalVariable(name: "k", scope: !7, file: !8, line: 41, type: !29)
!57 = !DILocation(line: 41, column: 7, scope: !7)
!58 = !DILocation(line: 42, column: 3, scope: !7)
!59 = !DILocalVariable(name: "As", scope: !7, file: !8, line: 42, type: !11)
!60 = !DILocation(line: 42, column: 10, scope: !7)
!61 = !DILocation(line: 43, column: 8, scope: !7)
!62 = !DILocation(line: 43, column: 6, scope: !7)
!63 = !DILocation(line: 44, column: 3, scope: !7)
!64 = !DILocalVariable(name: "sums", scope: !7, file: !8, line: 44, type: !11)
!65 = !DILocation(line: 44, column: 10, scope: !7)
!66 = !DILocation(line: 45, column: 10, scope: !7)
!67 = !DILocation(line: 45, column: 8, scope: !7)
!68 = !DILocation(line: 46, column: 3, scope: !7)
!69 = !DILocalVariable(name: "Cs", scope: !7, file: !8, line: 46, type: !11)
!70 = !DILocation(line: 46, column: 10, scope: !7)
!71 = !DILocation(line: 47, column: 8, scope: !7)
!72 = !DILocation(line: 47, column: 6, scope: !7)
!73 = !DILocation(line: 47, column: 3, scope: !7)
!74 = !DILocation(line: 50, column: 27, scope: !75)
!75 = distinct !DILexicalBlock(scope: !7, file: !8, line: 50, column: 20)
!76 = !DILocation(line: 50, column: 25, scope: !75)
!77 = !DILocation(line: 50, column: 32, scope: !78)
!78 = distinct !DILexicalBlock(scope: !75, file: !8, line: 50, column: 20)
!79 = !DILocation(line: 50, column: 34, scope: !78)
!80 = !DILocation(line: 50, column: 20, scope: !75)
!81 = !DILocation(line: 50, column: 44, scope: !78)
!82 = !DILocation(line: 52, column: 26, scope: !83)
!83 = distinct !DILexicalBlock(scope: !84, file: !8, line: 52, column: 19)
!84 = distinct !DILexicalBlock(scope: !78, file: !8, line: 50, column: 44)
!85 = !DILocation(line: 52, column: 24, scope: !83)
!86 = !DILocation(line: 52, column: 31, scope: !87)
!87 = distinct !DILexicalBlock(scope: !83, file: !8, line: 52, column: 19)
!88 = !DILocation(line: 52, column: 33, scope: !87)
!89 = !DILocation(line: 52, column: 19, scope: !83)
!90 = !DILocation(line: 52, column: 44, scope: !87)
!91 = !DILocation(line: 54, column: 26, scope: !92)
!92 = distinct !DILexicalBlock(scope: !93, file: !8, line: 54, column: 19)
!93 = distinct !DILexicalBlock(scope: !87, file: !8, line: 52, column: 44)
!94 = !DILocation(line: 54, column: 24, scope: !92)
!95 = !DILocation(line: 54, column: 31, scope: !96)
!96 = distinct !DILexicalBlock(scope: !92, file: !8, line: 54, column: 19)
!97 = !DILocation(line: 54, column: 33, scope: !96)
!98 = !DILocation(line: 54, column: 19, scope: !92)
!99 = !DILocation(line: 56, column: 2, scope: !100)
!100 = distinct !DILexicalBlock(scope: !96, file: !8, line: 54, column: 44)
!101 = !DILocation(line: 56, column: 7, scope: !100)
!102 = !DILocation(line: 56, column: 10, scope: !100)
!103 = !DILocation(line: 57, column: 30, scope: !104)
!104 = distinct !DILexicalBlock(scope: !100, file: !8, line: 57, column: 23)
!105 = !DILocation(line: 57, column: 28, scope: !104)
!106 = !DILocation(line: 57, column: 35, scope: !107)
!107 = distinct !DILexicalBlock(scope: !104, file: !8, line: 57, column: 23)
!108 = !DILocation(line: 57, column: 37, scope: !107)
!109 = !DILocation(line: 57, column: 23, scope: !104)
!110 = !DILocation(line: 59, column: 13, scope: !111)
!111 = distinct !DILexicalBlock(scope: !107, file: !8, line: 57, column: 47)
!112 = !DILocation(line: 59, column: 16, scope: !111)
!113 = !DILocation(line: 59, column: 18, scope: !111)
!114 = !DILocation(line: 59, column: 17, scope: !111)
!115 = !DILocation(line: 59, column: 21, scope: !111)
!116 = !DILocation(line: 59, column: 23, scope: !111)
!117 = !DILocation(line: 59, column: 22, scope: !111)
!118 = !DILocation(line: 59, column: 20, scope: !111)
!119 = !DILocation(line: 59, column: 26, scope: !111)
!120 = !DILocation(line: 59, column: 25, scope: !111)
!121 = !DILocation(line: 59, column: 31, scope: !111)
!122 = !DILocation(line: 59, column: 34, scope: !111)
!123 = !DILocation(line: 59, column: 36, scope: !111)
!124 = !DILocation(line: 59, column: 43, scope: !111)
!125 = !DILocation(line: 59, column: 41, scope: !111)
!126 = !DILocation(line: 59, column: 29, scope: !111)
!127 = !DILocation(line: 59, column: 2, scope: !111)
!128 = !DILocation(line: 59, column: 7, scope: !111)
!129 = !DILocation(line: 59, column: 10, scope: !111)
!130 = !DILocation(line: 60, column: 9, scope: !111)
!131 = !DILocation(line: 57, column: 44, scope: !107)
!132 = !DILocation(line: 57, column: 23, scope: !107)
!133 = distinct !{!133, !109, !134, !135, !137}
!134 = !DILocation(line: 60, column: 9, scope: !104)
!135 = !{!"llvm.loop.pipeline.enable", i32 1, i1 false, i8 -1, !"user", !136}
!136 = !DILocation(line: 58, column: 9, scope: !104)
!137 = !{!"llvm.loop.name", !"VITIS_LOOP_57_4"}
!138 = !DILocation(line: 61, column: 7, scope: !100)
!139 = !DILocation(line: 54, column: 40, scope: !96)
!140 = !DILocation(line: 54, column: 19, scope: !96)
!141 = distinct !{!141, !98, !142, !143, !145}
!142 = !DILocation(line: 61, column: 7, scope: !92)
!143 = !{!"llvm.loop.unroll.count", i32 8, !"user", !144}
!144 = !DILocation(line: 55, column: 9, scope: !92)
!145 = !{!"llvm.loop.name", !"VITIS_LOOP_54_3"}
!146 = !DILocation(line: 64, column: 31, scope: !147)
!147 = distinct !DILexicalBlock(scope: !93, file: !8, line: 64, column: 24)
!148 = !DILocation(line: 64, column: 29, scope: !147)
!149 = !DILocation(line: 64, column: 36, scope: !150)
!150 = distinct !DILexicalBlock(scope: !147, file: !8, line: 64, column: 24)
!151 = !DILocation(line: 64, column: 38, scope: !150)
!152 = !DILocation(line: 64, column: 24, scope: !147)
!153 = !DILocation(line: 66, column: 20, scope: !154)
!154 = distinct !DILexicalBlock(scope: !150, file: !8, line: 64, column: 48)
!155 = !DILocation(line: 66, column: 25, scope: !154)
!156 = !DILocation(line: 66, column: 2, scope: !154)
!157 = !DILocation(line: 66, column: 5, scope: !154)
!158 = !DILocation(line: 66, column: 7, scope: !154)
!159 = !DILocation(line: 66, column: 6, scope: !154)
!160 = !DILocation(line: 66, column: 10, scope: !154)
!161 = !DILocation(line: 66, column: 12, scope: !154)
!162 = !DILocation(line: 66, column: 11, scope: !154)
!163 = !DILocation(line: 66, column: 9, scope: !154)
!164 = !DILocation(line: 66, column: 15, scope: !154)
!165 = !DILocation(line: 66, column: 14, scope: !154)
!166 = !DILocation(line: 66, column: 18, scope: !154)
!167 = !DILocation(line: 67, column: 8, scope: !154)
!168 = !DILocation(line: 64, column: 45, scope: !150)
!169 = !DILocation(line: 64, column: 24, scope: !150)
!170 = distinct !{!170, !152, !171, !172, !174}
!171 = !DILocation(line: 67, column: 8, scope: !147)
!172 = !{!"llvm.loop.unroll.count", i32 8, !"user", !173}
!173 = !DILocation(line: 65, column: 9, scope: !147)
!174 = !{!"llvm.loop.name", !"VITIS_LOOP_64_5"}
!175 = !DILocation(line: 68, column: 5, scope: !93)
!176 = !DILocation(line: 52, column: 40, scope: !87)
!177 = !DILocation(line: 52, column: 19, scope: !87)
!178 = distinct !{!178, !89, !179, !180, !182}
!179 = !DILocation(line: 68, column: 5, scope: !83)
!180 = !{!"llvm.loop.pipeline.enable", i32 1, i1 false, i8 -1, !"user", !181}
!181 = !DILocation(line: 53, column: 9, scope: !83)
!182 = !{!"llvm.loop.name", !"VITIS_LOOP_52_2"}
!183 = !DILocation(line: 69, column: 4, scope: !84)
!184 = !DILocation(line: 50, column: 41, scope: !78)
!185 = !DILocation(line: 50, column: 20, scope: !78)
!186 = distinct !{!186, !80, !187, !188, !190}
!187 = !DILocation(line: 69, column: 4, scope: !75)
!188 = !{!"llvm.loop.pipeline.enable", i32 1, i1 false, i8 -1, !"user", !189}
!189 = !DILocation(line: 51, column: 9, scope: !75)
!190 = !{!"llvm.loop.name", !"VITIS_LOOP_50_1"}
!191 = !DILocation(line: 72, column: 1, scope: !7)
