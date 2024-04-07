; ModuleID = '/home/bruno/Desktop/benchmarks/mm3/proj_mm3/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
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
define void @mm3(float* %A, float* %B, float* %C, float* %D, float* %E, float* %F, float* %G) #0 !dbg !7 !fpga.function.pragma !13 {
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
  %As = alloca float*, align 8
  %Bs = alloca float*, align 8
  %Cs = alloca float*, align 8
  %Ds = alloca float*, align 8
  %Es = alloca float*, align 8
  %Fs = alloca float*, align 8
  %Gs = alloca float*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store float* %A, float** %A.addr, align 8
  call void @llvm.dbg.declare(metadata float** %A.addr, metadata !16, metadata !DIExpression()), !dbg !17
  store float* %B, float** %B.addr, align 8
  call void @llvm.dbg.declare(metadata float** %B.addr, metadata !18, metadata !DIExpression()), !dbg !19
  store float* %C, float** %C.addr, align 8
  call void @llvm.dbg.declare(metadata float** %C.addr, metadata !20, metadata !DIExpression()), !dbg !21
  store float* %D, float** %D.addr, align 8
  call void @llvm.dbg.declare(metadata float** %D.addr, metadata !22, metadata !DIExpression()), !dbg !23
  store float* %E, float** %E.addr, align 8
  call void @llvm.dbg.declare(metadata float** %E.addr, metadata !24, metadata !DIExpression()), !dbg !25
  store float* %F, float** %F.addr, align 8
  call void @llvm.dbg.declare(metadata float** %F.addr, metadata !26, metadata !DIExpression()), !dbg !27
  store float* %G, float** %G.addr, align 8
  call void @llvm.dbg.declare(metadata float** %G.addr, metadata !28, metadata !DIExpression()), !dbg !29
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %A, [0 x i8] zeroinitializer, i64 256, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !30
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %B, [0 x i8] zeroinitializer, i64 256, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !31
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %C, [0 x i8] zeroinitializer, i64 256, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !32
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %D, [0 x i8] zeroinitializer, i64 256, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !33
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %E, [0 x i8] zeroinitializer, i64 256, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !34
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %F, [0 x i8] zeroinitializer, i64 256, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !35
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %G, [0 x i8] zeroinitializer, i64 256, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !36
  %0 = bitcast i32* %ni to i8*, !dbg !37
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !37
  call void @llvm.dbg.declare(metadata i32* %ni, metadata !38, metadata !DIExpression()), !dbg !40
  store i32 16, i32* %ni, align 4, !dbg !40
  %1 = bitcast i32* %nj to i8*, !dbg !41
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !41
  call void @llvm.dbg.declare(metadata i32* %nj, metadata !42, metadata !DIExpression()), !dbg !43
  store i32 16, i32* %nj, align 4, !dbg !43
  %2 = bitcast i32* %nk to i8*, !dbg !44
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !44
  call void @llvm.dbg.declare(metadata i32* %nk, metadata !45, metadata !DIExpression()), !dbg !46
  store i32 16, i32* %nk, align 4, !dbg !46
  %3 = bitcast i32* %nl to i8*, !dbg !47
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !47
  call void @llvm.dbg.declare(metadata i32* %nl, metadata !48, metadata !DIExpression()), !dbg !49
  store i32 16, i32* %nl, align 4, !dbg !49
  %4 = bitcast i32* %nm to i8*, !dbg !50
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !50
  call void @llvm.dbg.declare(metadata i32* %nm, metadata !51, metadata !DIExpression()), !dbg !52
  store i32 16, i32* %nm, align 4, !dbg !52
  %5 = bitcast float** %As to i8*, !dbg !53
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %5) #4, !dbg !53
  call void @llvm.dbg.declare(metadata float** %As, metadata !54, metadata !DIExpression()), !dbg !55
  %As1 = bitcast float** %As to i8*, !dbg !53
  call void @llvm.var.annotation(i8* %As1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 42), !dbg !53
  %6 = load float*, float** %A.addr, align 8, !dbg !56
  store float* %6, float** %As, align 8, !dbg !57
  %7 = bitcast float** %Bs to i8*, !dbg !58
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %7) #4, !dbg !58
  call void @llvm.dbg.declare(metadata float** %Bs, metadata !59, metadata !DIExpression()), !dbg !60
  %Bs2 = bitcast float** %Bs to i8*, !dbg !58
  call void @llvm.var.annotation(i8* %Bs2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 44), !dbg !58
  %8 = load float*, float** %B.addr, align 8, !dbg !61
  store float* %8, float** %Bs, align 8, !dbg !62
  %9 = bitcast float** %Cs to i8*, !dbg !63
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %9) #4, !dbg !63
  call void @llvm.dbg.declare(metadata float** %Cs, metadata !64, metadata !DIExpression()), !dbg !65
  %Cs3 = bitcast float** %Cs to i8*, !dbg !63
  call void @llvm.var.annotation(i8* %Cs3, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 46), !dbg !63
  %10 = load float*, float** %C.addr, align 8, !dbg !66
  store float* %10, float** %Cs, align 8, !dbg !67
  %11 = bitcast float** %Ds to i8*, !dbg !68
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %11) #4, !dbg !68
  call void @llvm.dbg.declare(metadata float** %Ds, metadata !69, metadata !DIExpression()), !dbg !70
  %Ds4 = bitcast float** %Ds to i8*, !dbg !68
  call void @llvm.var.annotation(i8* %Ds4, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 48), !dbg !68
  %12 = load float*, float** %D.addr, align 8, !dbg !71
  store float* %12, float** %Ds, align 8, !dbg !72
  %13 = bitcast float** %Es to i8*, !dbg !73
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %13) #4, !dbg !73
  call void @llvm.dbg.declare(metadata float** %Es, metadata !74, metadata !DIExpression()), !dbg !75
  %Es5 = bitcast float** %Es to i8*, !dbg !73
  call void @llvm.var.annotation(i8* %Es5, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 50), !dbg !73
  %14 = load float*, float** %E.addr, align 8, !dbg !76
  store float* %14, float** %Es, align 8, !dbg !77
  %15 = bitcast float** %Fs to i8*, !dbg !78
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %15) #4, !dbg !78
  call void @llvm.dbg.declare(metadata float** %Fs, metadata !79, metadata !DIExpression()), !dbg !80
  %Fs6 = bitcast float** %Fs to i8*, !dbg !78
  call void @llvm.var.annotation(i8* %Fs6, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 52), !dbg !78
  %16 = load float*, float** %F.addr, align 8, !dbg !81
  store float* %16, float** %Fs, align 8, !dbg !82
  %17 = bitcast float** %Gs to i8*, !dbg !83
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %17) #4, !dbg !83
  call void @llvm.dbg.declare(metadata float** %Gs, metadata !84, metadata !DIExpression()), !dbg !85
  %Gs7 = bitcast float** %Gs to i8*, !dbg !83
  call void @llvm.var.annotation(i8* %Gs7, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 54), !dbg !83
  %18 = load float*, float** %G.addr, align 8, !dbg !86
  store float* %18, float** %Gs, align 8, !dbg !87
  %19 = bitcast i32* %i to i8*, !dbg !88
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #4, !dbg !88
  call void @llvm.dbg.declare(metadata i32* %i, metadata !89, metadata !DIExpression()), !dbg !90
  %i8 = bitcast i32* %i to i8*, !dbg !88
  call void @llvm.var.annotation(i8* %i8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 57), !dbg !88
  %20 = bitcast i32* %j to i8*, !dbg !91
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %20) #4, !dbg !91
  call void @llvm.dbg.declare(metadata i32* %j, metadata !92, metadata !DIExpression()), !dbg !93
  %j9 = bitcast i32* %j to i8*, !dbg !91
  call void @llvm.var.annotation(i8* %j9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 58), !dbg !91
  %21 = bitcast i32* %k to i8*, !dbg !94
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %21) #4, !dbg !94
  call void @llvm.dbg.declare(metadata i32* %k, metadata !95, metadata !DIExpression()), !dbg !96
  %k10 = bitcast i32* %k to i8*, !dbg !94
  call void @llvm.var.annotation(i8* %k10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 59), !dbg !94
  br label %VITIS_LOOP_63_1, !dbg !94

VITIS_LOOP_63_1:                                  ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !97
  br label %for.cond, !dbg !99

for.cond:                                         ; preds = %for.inc34, %VITIS_LOOP_63_1
  %22 = load i32, i32* %i, align 4, !dbg !100
  %23 = load i32, i32* %ni, align 4, !dbg !102
  %cmp = icmp slt i32 %22, %23, !dbg !103
  br i1 %cmp, label %for.body, label %for.end36, !dbg !104

for.body:                                         ; preds = %for.cond
  br label %VITIS_LOOP_65_2, !dbg !105

VITIS_LOOP_65_2:                                  ; preds = %for.body
  store i32 0, i32* %j, align 4, !dbg !106
  br label %for.cond11, !dbg !109

for.cond11:                                       ; preds = %for.inc31, %VITIS_LOOP_65_2
  %24 = load i32, i32* %j, align 4, !dbg !110
  %25 = load i32, i32* %nj, align 4, !dbg !112
  %cmp12 = icmp slt i32 %24, %25, !dbg !113
  br i1 %cmp12, label %for.body13, label %for.end33, !dbg !114

for.body13:                                       ; preds = %for.cond11
  %26 = load float*, float** %Es, align 8, !dbg !115
  %27 = load i32, i32* %i, align 4, !dbg !117
  %28 = load i32, i32* %nj, align 4, !dbg !118
  %mul = mul nsw i32 %27, %28, !dbg !119
  %29 = load i32, i32* %j, align 4, !dbg !120
  %add = add nsw i32 %mul, %29, !dbg !121
  %idxprom = sext i32 %add to i64, !dbg !115
  %arrayidx = getelementptr inbounds float, float* %26, i64 %idxprom, !dbg !115
  store float 0.000000e+00, float* %arrayidx, align 4, !dbg !122
  br label %VITIS_LOOP_68_3, !dbg !115

VITIS_LOOP_68_3:                                  ; preds = %for.body13
  store i32 0, i32* %k, align 4, !dbg !123
  br label %for.cond14, !dbg !125

for.cond14:                                       ; preds = %for.inc, %VITIS_LOOP_68_3
  %30 = load i32, i32* %k, align 4, !dbg !126
  %cmp15 = icmp slt i32 %30, 16, !dbg !128
  br i1 %cmp15, label %for.body16, label %for.end, !dbg !129

for.body16:                                       ; preds = %for.cond14
  %31 = load float*, float** %As, align 8, !dbg !130
  %32 = load i32, i32* %i, align 4, !dbg !132
  %33 = load i32, i32* %nk, align 4, !dbg !133
  %mul17 = mul nsw i32 %32, %33, !dbg !134
  %34 = load i32, i32* %k, align 4, !dbg !135
  %add18 = add nsw i32 %mul17, %34, !dbg !136
  %idxprom19 = sext i32 %add18 to i64, !dbg !130
  %arrayidx20 = getelementptr inbounds float, float* %31, i64 %idxprom19, !dbg !130
  %35 = load float, float* %arrayidx20, align 4, !dbg !130
  %36 = load float*, float** %Bs, align 8, !dbg !137
  %37 = load i32, i32* %k, align 4, !dbg !138
  %38 = load i32, i32* %nj, align 4, !dbg !139
  %mul21 = mul nsw i32 %37, %38, !dbg !140
  %39 = load i32, i32* %j, align 4, !dbg !141
  %add22 = add nsw i32 %mul21, %39, !dbg !142
  %idxprom23 = sext i32 %add22 to i64, !dbg !137
  %arrayidx24 = getelementptr inbounds float, float* %36, i64 %idxprom23, !dbg !137
  %40 = load float, float* %arrayidx24, align 4, !dbg !137
  %mul25 = fmul float %35, %40, !dbg !143
  %41 = load float*, float** %Es, align 8, !dbg !144
  %42 = load i32, i32* %i, align 4, !dbg !145
  %43 = load i32, i32* %nj, align 4, !dbg !146
  %mul26 = mul nsw i32 %42, %43, !dbg !147
  %44 = load i32, i32* %j, align 4, !dbg !148
  %add27 = add nsw i32 %mul26, %44, !dbg !149
  %idxprom28 = sext i32 %add27 to i64, !dbg !144
  %arrayidx29 = getelementptr inbounds float, float* %41, i64 %idxprom28, !dbg !144
  %45 = load float, float* %arrayidx29, align 4, !dbg !150
  %add30 = fadd float %45, %mul25, !dbg !150
  store float %add30, float* %arrayidx29, align 4, !dbg !150
  br label %for.inc, !dbg !151

for.inc:                                          ; preds = %for.body16
  %46 = load i32, i32* %k, align 4, !dbg !152
  %inc = add nsw i32 %46, 1, !dbg !152
  store i32 %inc, i32* %k, align 4, !dbg !152
  br label %for.cond14, !dbg !153, !llvm.loop !154

for.end:                                          ; preds = %for.cond14
  br label %for.inc31, !dbg !157

for.inc31:                                        ; preds = %for.end
  %47 = load i32, i32* %j, align 4, !dbg !158
  %inc32 = add nsw i32 %47, 1, !dbg !158
  store i32 %inc32, i32* %j, align 4, !dbg !158
  br label %for.cond11, !dbg !159, !llvm.loop !160

for.end33:                                        ; preds = %for.cond11
  br label %for.inc34, !dbg !163

for.inc34:                                        ; preds = %for.end33
  %48 = load i32, i32* %i, align 4, !dbg !164
  %inc35 = add nsw i32 %48, 1, !dbg !164
  store i32 %inc35, i32* %i, align 4, !dbg !164
  br label %for.cond, !dbg !165, !llvm.loop !166

for.end36:                                        ; preds = %for.cond
  br label %VITIS_LOOP_75_4, !dbg !167

VITIS_LOOP_75_4:                                  ; preds = %for.end36
  store i32 0, i32* %i, align 4, !dbg !169
  br label %for.cond37, !dbg !171

for.cond37:                                       ; preds = %for.inc70, %VITIS_LOOP_75_4
  %49 = load i32, i32* %i, align 4, !dbg !172
  %50 = load i32, i32* %nj, align 4, !dbg !174
  %cmp38 = icmp slt i32 %49, %50, !dbg !175
  br i1 %cmp38, label %for.body39, label %for.end72, !dbg !176

for.body39:                                       ; preds = %for.cond37
  br label %VITIS_LOOP_77_5, !dbg !177

VITIS_LOOP_77_5:                                  ; preds = %for.body39
  store i32 0, i32* %j, align 4, !dbg !178
  br label %for.cond40, !dbg !181

for.cond40:                                       ; preds = %for.inc67, %VITIS_LOOP_77_5
  %51 = load i32, i32* %j, align 4, !dbg !182
  %52 = load i32, i32* %nl, align 4, !dbg !184
  %cmp41 = icmp slt i32 %51, %52, !dbg !185
  br i1 %cmp41, label %for.body42, label %for.end69, !dbg !186

for.body42:                                       ; preds = %for.cond40
  %53 = load float*, float** %Fs, align 8, !dbg !187
  %54 = load i32, i32* %i, align 4, !dbg !189
  %55 = load i32, i32* %nl, align 4, !dbg !190
  %mul43 = mul nsw i32 %54, %55, !dbg !191
  %56 = load i32, i32* %j, align 4, !dbg !192
  %add44 = add nsw i32 %mul43, %56, !dbg !193
  %idxprom45 = sext i32 %add44 to i64, !dbg !187
  %arrayidx46 = getelementptr inbounds float, float* %53, i64 %idxprom45, !dbg !187
  store float 0.000000e+00, float* %arrayidx46, align 4, !dbg !194
  br label %VITIS_LOOP_80_6, !dbg !187

VITIS_LOOP_80_6:                                  ; preds = %for.body42
  store i32 0, i32* %k, align 4, !dbg !195
  br label %for.cond47, !dbg !197

for.cond47:                                       ; preds = %for.inc64, %VITIS_LOOP_80_6
  %57 = load i32, i32* %k, align 4, !dbg !198
  %cmp48 = icmp slt i32 %57, 16, !dbg !200
  br i1 %cmp48, label %for.body49, label %for.end66, !dbg !201

for.body49:                                       ; preds = %for.cond47
  %58 = load float*, float** %Cs, align 8, !dbg !202
  %59 = load i32, i32* %i, align 4, !dbg !204
  %60 = load i32, i32* %nm, align 4, !dbg !205
  %mul50 = mul nsw i32 %59, %60, !dbg !206
  %61 = load i32, i32* %k, align 4, !dbg !207
  %add51 = add nsw i32 %mul50, %61, !dbg !208
  %idxprom52 = sext i32 %add51 to i64, !dbg !202
  %arrayidx53 = getelementptr inbounds float, float* %58, i64 %idxprom52, !dbg !202
  %62 = load float, float* %arrayidx53, align 4, !dbg !202
  %63 = load float*, float** %Ds, align 8, !dbg !209
  %64 = load i32, i32* %k, align 4, !dbg !210
  %65 = load i32, i32* %nl, align 4, !dbg !211
  %mul54 = mul nsw i32 %64, %65, !dbg !212
  %66 = load i32, i32* %j, align 4, !dbg !213
  %add55 = add nsw i32 %mul54, %66, !dbg !214
  %idxprom56 = sext i32 %add55 to i64, !dbg !209
  %arrayidx57 = getelementptr inbounds float, float* %63, i64 %idxprom56, !dbg !209
  %67 = load float, float* %arrayidx57, align 4, !dbg !209
  %mul58 = fmul float %62, %67, !dbg !215
  %68 = load float*, float** %Fs, align 8, !dbg !216
  %69 = load i32, i32* %i, align 4, !dbg !217
  %70 = load i32, i32* %nl, align 4, !dbg !218
  %mul59 = mul nsw i32 %69, %70, !dbg !219
  %71 = load i32, i32* %j, align 4, !dbg !220
  %add60 = add nsw i32 %mul59, %71, !dbg !221
  %idxprom61 = sext i32 %add60 to i64, !dbg !216
  %arrayidx62 = getelementptr inbounds float, float* %68, i64 %idxprom61, !dbg !216
  %72 = load float, float* %arrayidx62, align 4, !dbg !222
  %add63 = fadd float %72, %mul58, !dbg !222
  store float %add63, float* %arrayidx62, align 4, !dbg !222
  br label %for.inc64, !dbg !223

for.inc64:                                        ; preds = %for.body49
  %73 = load i32, i32* %k, align 4, !dbg !224
  %inc65 = add nsw i32 %73, 1, !dbg !224
  store i32 %inc65, i32* %k, align 4, !dbg !224
  br label %for.cond47, !dbg !225, !llvm.loop !226

for.end66:                                        ; preds = %for.cond47
  br label %for.inc67, !dbg !229

for.inc67:                                        ; preds = %for.end66
  %74 = load i32, i32* %j, align 4, !dbg !230
  %inc68 = add nsw i32 %74, 1, !dbg !230
  store i32 %inc68, i32* %j, align 4, !dbg !230
  br label %for.cond40, !dbg !231, !llvm.loop !232

for.end69:                                        ; preds = %for.cond40
  br label %for.inc70, !dbg !235

for.inc70:                                        ; preds = %for.end69
  %75 = load i32, i32* %i, align 4, !dbg !236
  %inc71 = add nsw i32 %75, 1, !dbg !236
  store i32 %inc71, i32* %i, align 4, !dbg !236
  br label %for.cond37, !dbg !237, !llvm.loop !238

for.end72:                                        ; preds = %for.cond37
  br label %VITIS_LOOP_88_7, !dbg !239

VITIS_LOOP_88_7:                                  ; preds = %for.end72
  store i32 0, i32* %i, align 4, !dbg !241
  br label %for.cond73, !dbg !243

for.cond73:                                       ; preds = %for.inc106, %VITIS_LOOP_88_7
  %76 = load i32, i32* %i, align 4, !dbg !244
  %cmp74 = icmp slt i32 %76, 16, !dbg !246
  br i1 %cmp74, label %for.body75, label %for.end108, !dbg !247

for.body75:                                       ; preds = %for.cond73
  br label %VITIS_LOOP_90_8, !dbg !248

VITIS_LOOP_90_8:                                  ; preds = %for.body75
  store i32 0, i32* %j, align 4, !dbg !249
  br label %for.cond76, !dbg !252

for.cond76:                                       ; preds = %for.inc103, %VITIS_LOOP_90_8
  %77 = load i32, i32* %j, align 4, !dbg !253
  %cmp77 = icmp slt i32 %77, 16, !dbg !255
  br i1 %cmp77, label %for.body78, label %for.end105, !dbg !256

for.body78:                                       ; preds = %for.cond76
  %78 = load float*, float** %Gs, align 8, !dbg !257
  %79 = load i32, i32* %i, align 4, !dbg !259
  %80 = load i32, i32* %nl, align 4, !dbg !260
  %mul79 = mul nsw i32 %79, %80, !dbg !261
  %81 = load i32, i32* %j, align 4, !dbg !262
  %add80 = add nsw i32 %mul79, %81, !dbg !263
  %idxprom81 = sext i32 %add80 to i64, !dbg !257
  %arrayidx82 = getelementptr inbounds float, float* %78, i64 %idxprom81, !dbg !257
  store float 0.000000e+00, float* %arrayidx82, align 4, !dbg !264
  br label %VITIS_LOOP_93_9, !dbg !257

VITIS_LOOP_93_9:                                  ; preds = %for.body78
  store i32 0, i32* %k, align 4, !dbg !265
  br label %for.cond83, !dbg !267

for.cond83:                                       ; preds = %for.inc100, %VITIS_LOOP_93_9
  %82 = load i32, i32* %k, align 4, !dbg !268
  %cmp84 = icmp slt i32 %82, 16, !dbg !270
  br i1 %cmp84, label %for.body85, label %for.end102, !dbg !271

for.body85:                                       ; preds = %for.cond83
  %83 = load float*, float** %Es, align 8, !dbg !272
  %84 = load i32, i32* %i, align 4, !dbg !274
  %85 = load i32, i32* %nj, align 4, !dbg !275
  %mul86 = mul nsw i32 %84, %85, !dbg !276
  %86 = load i32, i32* %k, align 4, !dbg !277
  %add87 = add nsw i32 %mul86, %86, !dbg !278
  %idxprom88 = sext i32 %add87 to i64, !dbg !272
  %arrayidx89 = getelementptr inbounds float, float* %83, i64 %idxprom88, !dbg !272
  %87 = load float, float* %arrayidx89, align 4, !dbg !272
  %88 = load float*, float** %Fs, align 8, !dbg !279
  %89 = load i32, i32* %k, align 4, !dbg !280
  %90 = load i32, i32* %nl, align 4, !dbg !281
  %mul90 = mul nsw i32 %89, %90, !dbg !282
  %91 = load i32, i32* %j, align 4, !dbg !283
  %add91 = add nsw i32 %mul90, %91, !dbg !284
  %idxprom92 = sext i32 %add91 to i64, !dbg !279
  %arrayidx93 = getelementptr inbounds float, float* %88, i64 %idxprom92, !dbg !279
  %92 = load float, float* %arrayidx93, align 4, !dbg !279
  %mul94 = fmul float %87, %92, !dbg !285
  %93 = load float*, float** %Gs, align 8, !dbg !286
  %94 = load i32, i32* %i, align 4, !dbg !287
  %95 = load i32, i32* %nl, align 4, !dbg !288
  %mul95 = mul nsw i32 %94, %95, !dbg !289
  %96 = load i32, i32* %j, align 4, !dbg !290
  %add96 = add nsw i32 %mul95, %96, !dbg !291
  %idxprom97 = sext i32 %add96 to i64, !dbg !286
  %arrayidx98 = getelementptr inbounds float, float* %93, i64 %idxprom97, !dbg !286
  %97 = load float, float* %arrayidx98, align 4, !dbg !292
  %add99 = fadd float %97, %mul94, !dbg !292
  store float %add99, float* %arrayidx98, align 4, !dbg !292
  br label %for.inc100, !dbg !293

for.inc100:                                       ; preds = %for.body85
  %98 = load i32, i32* %k, align 4, !dbg !294
  %inc101 = add nsw i32 %98, 1, !dbg !294
  store i32 %inc101, i32* %k, align 4, !dbg !294
  br label %for.cond83, !dbg !295, !llvm.loop !296

for.end102:                                       ; preds = %for.cond83
  br label %for.inc103, !dbg !299

for.inc103:                                       ; preds = %for.end102
  %99 = load i32, i32* %j, align 4, !dbg !300
  %inc104 = add nsw i32 %99, 1, !dbg !300
  store i32 %inc104, i32* %j, align 4, !dbg !300
  br label %for.cond76, !dbg !301, !llvm.loop !302

for.end105:                                       ; preds = %for.cond76
  br label %for.inc106, !dbg !305

for.inc106:                                       ; preds = %for.end105
  %100 = load i32, i32* %i, align 4, !dbg !306
  %inc107 = add nsw i32 %100, 1, !dbg !306
  store i32 %inc107, i32* %i, align 4, !dbg !306
  br label %for.cond73, !dbg !307, !llvm.loop !308

for.end108:                                       ; preds = %for.cond73
  %101 = bitcast i32* %k to i8*, !dbg !311
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %101) #4, !dbg !311
  %102 = bitcast i32* %j to i8*, !dbg !311
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %102) #4, !dbg !311
  %103 = bitcast i32* %i to i8*, !dbg !311
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %103) #4, !dbg !311
  %104 = bitcast float** %Gs to i8*, !dbg !311
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %104) #4, !dbg !311
  %105 = bitcast float** %Fs to i8*, !dbg !311
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %105) #4, !dbg !311
  %106 = bitcast float** %Es to i8*, !dbg !311
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %106) #4, !dbg !311
  %107 = bitcast float** %Ds to i8*, !dbg !311
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %107) #4, !dbg !311
  %108 = bitcast float** %Cs to i8*, !dbg !311
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %108) #4, !dbg !311
  %109 = bitcast float** %Bs to i8*, !dbg !311
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %109) #4, !dbg !311
  %110 = bitcast float** %As to i8*, !dbg !311
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %110) #4, !dbg !311
  %111 = bitcast i32* %nm to i8*, !dbg !311
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %111) #4, !dbg !311
  %112 = bitcast i32* %nl to i8*, !dbg !311
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %112) #4, !dbg !311
  %113 = bitcast i32* %nk to i8*, !dbg !311
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %113) #4, !dbg !311
  %114 = bitcast i32* %nj to i8*, !dbg !311
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %114) #4, !dbg !311
  %115 = bitcast i32* %ni to i8*, !dbg !311
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %115) #4, !dbg !311
  ret void, !dbg !311
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
!16 = !DILocalVariable(name: "A", arg: 1, scope: !7, file: !8, line: 26, type: !11)
!17 = !DILocation(line: 26, column: 55, scope: !7)
!18 = !DILocalVariable(name: "B", arg: 2, scope: !7, file: !8, line: 26, type: !11)
!19 = !DILocation(line: 26, column: 65, scope: !7)
!20 = !DILocalVariable(name: "C", arg: 3, scope: !7, file: !8, line: 26, type: !11)
!21 = !DILocation(line: 26, column: 75, scope: !7)
!22 = !DILocalVariable(name: "D", arg: 4, scope: !7, file: !8, line: 26, type: !11)
!23 = !DILocation(line: 26, column: 85, scope: !7)
!24 = !DILocalVariable(name: "E", arg: 5, scope: !7, file: !8, line: 26, type: !11)
!25 = !DILocation(line: 26, column: 95, scope: !7)
!26 = !DILocalVariable(name: "F", arg: 6, scope: !7, file: !8, line: 26, type: !11)
!27 = !DILocation(line: 26, column: 105, scope: !7)
!28 = !DILocalVariable(name: "G", arg: 7, scope: !7, file: !8, line: 26, type: !11)
!29 = !DILocation(line: 26, column: 115, scope: !7)
!30 = !DILocation(line: 28, column: 9, scope: !7)
!31 = !DILocation(line: 29, column: 9, scope: !7)
!32 = !DILocation(line: 30, column: 9, scope: !7)
!33 = !DILocation(line: 31, column: 9, scope: !7)
!34 = !DILocation(line: 32, column: 9, scope: !7)
!35 = !DILocation(line: 33, column: 9, scope: !7)
!36 = !DILocation(line: 34, column: 9, scope: !7)
!37 = !DILocation(line: 36, column: 2, scope: !7)
!38 = !DILocalVariable(name: "ni", scope: !7, file: !8, line: 36, type: !39)
!39 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!40 = !DILocation(line: 36, column: 6, scope: !7)
!41 = !DILocation(line: 37, column: 3, scope: !7)
!42 = !DILocalVariable(name: "nj", scope: !7, file: !8, line: 37, type: !39)
!43 = !DILocation(line: 37, column: 7, scope: !7)
!44 = !DILocation(line: 38, column: 3, scope: !7)
!45 = !DILocalVariable(name: "nk", scope: !7, file: !8, line: 38, type: !39)
!46 = !DILocation(line: 38, column: 7, scope: !7)
!47 = !DILocation(line: 39, column: 3, scope: !7)
!48 = !DILocalVariable(name: "nl", scope: !7, file: !8, line: 39, type: !39)
!49 = !DILocation(line: 39, column: 7, scope: !7)
!50 = !DILocation(line: 40, column: 3, scope: !7)
!51 = !DILocalVariable(name: "nm", scope: !7, file: !8, line: 40, type: !39)
!52 = !DILocation(line: 40, column: 7, scope: !7)
!53 = !DILocation(line: 42, column: 3, scope: !7)
!54 = !DILocalVariable(name: "As", scope: !7, file: !8, line: 42, type: !11)
!55 = !DILocation(line: 42, column: 10, scope: !7)
!56 = !DILocation(line: 43, column: 8, scope: !7)
!57 = !DILocation(line: 43, column: 6, scope: !7)
!58 = !DILocation(line: 44, column: 3, scope: !7)
!59 = !DILocalVariable(name: "Bs", scope: !7, file: !8, line: 44, type: !11)
!60 = !DILocation(line: 44, column: 10, scope: !7)
!61 = !DILocation(line: 45, column: 8, scope: !7)
!62 = !DILocation(line: 45, column: 6, scope: !7)
!63 = !DILocation(line: 46, column: 3, scope: !7)
!64 = !DILocalVariable(name: "Cs", scope: !7, file: !8, line: 46, type: !11)
!65 = !DILocation(line: 46, column: 10, scope: !7)
!66 = !DILocation(line: 47, column: 8, scope: !7)
!67 = !DILocation(line: 47, column: 6, scope: !7)
!68 = !DILocation(line: 48, column: 3, scope: !7)
!69 = !DILocalVariable(name: "Ds", scope: !7, file: !8, line: 48, type: !11)
!70 = !DILocation(line: 48, column: 10, scope: !7)
!71 = !DILocation(line: 49, column: 8, scope: !7)
!72 = !DILocation(line: 49, column: 6, scope: !7)
!73 = !DILocation(line: 50, column: 3, scope: !7)
!74 = !DILocalVariable(name: "Es", scope: !7, file: !8, line: 50, type: !11)
!75 = !DILocation(line: 50, column: 10, scope: !7)
!76 = !DILocation(line: 51, column: 8, scope: !7)
!77 = !DILocation(line: 51, column: 6, scope: !7)
!78 = !DILocation(line: 52, column: 3, scope: !7)
!79 = !DILocalVariable(name: "Fs", scope: !7, file: !8, line: 52, type: !11)
!80 = !DILocation(line: 52, column: 10, scope: !7)
!81 = !DILocation(line: 53, column: 8, scope: !7)
!82 = !DILocation(line: 53, column: 6, scope: !7)
!83 = !DILocation(line: 54, column: 3, scope: !7)
!84 = !DILocalVariable(name: "Gs", scope: !7, file: !8, line: 54, type: !11)
!85 = !DILocation(line: 54, column: 10, scope: !7)
!86 = !DILocation(line: 55, column: 8, scope: !7)
!87 = !DILocation(line: 55, column: 6, scope: !7)
!88 = !DILocation(line: 57, column: 3, scope: !7)
!89 = !DILocalVariable(name: "i", scope: !7, file: !8, line: 57, type: !39)
!90 = !DILocation(line: 57, column: 7, scope: !7)
!91 = !DILocation(line: 58, column: 3, scope: !7)
!92 = !DILocalVariable(name: "j", scope: !7, file: !8, line: 58, type: !39)
!93 = !DILocation(line: 58, column: 7, scope: !7)
!94 = !DILocation(line: 59, column: 3, scope: !7)
!95 = !DILocalVariable(name: "k", scope: !7, file: !8, line: 59, type: !39)
!96 = !DILocation(line: 59, column: 7, scope: !7)
!97 = !DILocation(line: 63, column: 27, scope: !98)
!98 = distinct !DILexicalBlock(scope: !7, file: !8, line: 63, column: 20)
!99 = !DILocation(line: 63, column: 25, scope: !98)
!100 = !DILocation(line: 63, column: 32, scope: !101)
!101 = distinct !DILexicalBlock(scope: !98, file: !8, line: 63, column: 20)
!102 = !DILocation(line: 63, column: 36, scope: !101)
!103 = !DILocation(line: 63, column: 34, scope: !101)
!104 = !DILocation(line: 63, column: 20, scope: !98)
!105 = !DILocation(line: 63, column: 44, scope: !101)
!106 = !DILocation(line: 65, column: 29, scope: !107)
!107 = distinct !DILexicalBlock(scope: !108, file: !8, line: 65, column: 22)
!108 = distinct !DILexicalBlock(scope: !101, file: !8, line: 63, column: 44)
!109 = !DILocation(line: 65, column: 27, scope: !107)
!110 = !DILocation(line: 65, column: 34, scope: !111)
!111 = distinct !DILexicalBlock(scope: !107, file: !8, line: 65, column: 22)
!112 = !DILocation(line: 65, column: 38, scope: !111)
!113 = !DILocation(line: 65, column: 36, scope: !111)
!114 = !DILocation(line: 65, column: 22, scope: !107)
!115 = !DILocation(line: 67, column: 6, scope: !116)
!116 = distinct !DILexicalBlock(scope: !111, file: !8, line: 65, column: 46)
!117 = !DILocation(line: 67, column: 9, scope: !116)
!118 = !DILocation(line: 67, column: 11, scope: !116)
!119 = !DILocation(line: 67, column: 10, scope: !116)
!120 = !DILocation(line: 67, column: 14, scope: !116)
!121 = !DILocation(line: 67, column: 13, scope: !116)
!122 = !DILocation(line: 67, column: 17, scope: !116)
!123 = !DILocation(line: 68, column: 30, scope: !124)
!124 = distinct !DILexicalBlock(scope: !116, file: !8, line: 68, column: 23)
!125 = !DILocation(line: 68, column: 28, scope: !124)
!126 = !DILocation(line: 68, column: 35, scope: !127)
!127 = distinct !DILexicalBlock(scope: !124, file: !8, line: 68, column: 23)
!128 = !DILocation(line: 68, column: 37, scope: !127)
!129 = !DILocation(line: 68, column: 23, scope: !124)
!130 = !DILocation(line: 70, column: 24, scope: !131)
!131 = distinct !DILexicalBlock(scope: !127, file: !8, line: 68, column: 47)
!132 = !DILocation(line: 70, column: 27, scope: !131)
!133 = !DILocation(line: 70, column: 29, scope: !131)
!134 = !DILocation(line: 70, column: 28, scope: !131)
!135 = !DILocation(line: 70, column: 32, scope: !131)
!136 = !DILocation(line: 70, column: 31, scope: !131)
!137 = !DILocation(line: 70, column: 37, scope: !131)
!138 = !DILocation(line: 70, column: 40, scope: !131)
!139 = !DILocation(line: 70, column: 42, scope: !131)
!140 = !DILocation(line: 70, column: 41, scope: !131)
!141 = !DILocation(line: 70, column: 45, scope: !131)
!142 = !DILocation(line: 70, column: 44, scope: !131)
!143 = !DILocation(line: 70, column: 35, scope: !131)
!144 = !DILocation(line: 70, column: 10, scope: !131)
!145 = !DILocation(line: 70, column: 13, scope: !131)
!146 = !DILocation(line: 70, column: 15, scope: !131)
!147 = !DILocation(line: 70, column: 14, scope: !131)
!148 = !DILocation(line: 70, column: 18, scope: !131)
!149 = !DILocation(line: 70, column: 17, scope: !131)
!150 = !DILocation(line: 70, column: 21, scope: !131)
!151 = !DILocation(line: 71, column: 9, scope: !131)
!152 = !DILocation(line: 68, column: 43, scope: !127)
!153 = !DILocation(line: 68, column: 23, scope: !127)
!154 = distinct !{!154, !129, !155, !156}
!155 = !DILocation(line: 71, column: 9, scope: !124)
!156 = !{!"llvm.loop.name", !"VITIS_LOOP_68_3"}
!157 = !DILocation(line: 72, column: 5, scope: !116)
!158 = !DILocation(line: 65, column: 43, scope: !111)
!159 = !DILocation(line: 65, column: 22, scope: !111)
!160 = distinct !{!160, !114, !161, !162}
!161 = !DILocation(line: 72, column: 5, scope: !107)
!162 = !{!"llvm.loop.name", !"VITIS_LOOP_65_2"}
!163 = !DILocation(line: 73, column: 4, scope: !108)
!164 = !DILocation(line: 63, column: 41, scope: !101)
!165 = !DILocation(line: 63, column: 20, scope: !101)
!166 = distinct !{!166, !104, !167, !168}
!167 = !DILocation(line: 73, column: 4, scope: !98)
!168 = !{!"llvm.loop.name", !"VITIS_LOOP_63_1"}
!169 = !DILocation(line: 75, column: 27, scope: !170)
!170 = distinct !DILexicalBlock(scope: !7, file: !8, line: 75, column: 20)
!171 = !DILocation(line: 75, column: 25, scope: !170)
!172 = !DILocation(line: 75, column: 32, scope: !173)
!173 = distinct !DILexicalBlock(scope: !170, file: !8, line: 75, column: 20)
!174 = !DILocation(line: 75, column: 36, scope: !173)
!175 = !DILocation(line: 75, column: 34, scope: !173)
!176 = !DILocation(line: 75, column: 20, scope: !170)
!177 = !DILocation(line: 75, column: 44, scope: !173)
!178 = !DILocation(line: 77, column: 29, scope: !179)
!179 = distinct !DILexicalBlock(scope: !180, file: !8, line: 77, column: 22)
!180 = distinct !DILexicalBlock(scope: !173, file: !8, line: 75, column: 44)
!181 = !DILocation(line: 77, column: 27, scope: !179)
!182 = !DILocation(line: 77, column: 34, scope: !183)
!183 = distinct !DILexicalBlock(scope: !179, file: !8, line: 77, column: 22)
!184 = !DILocation(line: 77, column: 38, scope: !183)
!185 = !DILocation(line: 77, column: 36, scope: !183)
!186 = !DILocation(line: 77, column: 22, scope: !179)
!187 = !DILocation(line: 79, column: 6, scope: !188)
!188 = distinct !DILexicalBlock(scope: !183, file: !8, line: 77, column: 46)
!189 = !DILocation(line: 79, column: 9, scope: !188)
!190 = !DILocation(line: 79, column: 11, scope: !188)
!191 = !DILocation(line: 79, column: 10, scope: !188)
!192 = !DILocation(line: 79, column: 14, scope: !188)
!193 = !DILocation(line: 79, column: 13, scope: !188)
!194 = !DILocation(line: 79, column: 17, scope: !188)
!195 = !DILocation(line: 80, column: 30, scope: !196)
!196 = distinct !DILexicalBlock(scope: !188, file: !8, line: 80, column: 23)
!197 = !DILocation(line: 80, column: 28, scope: !196)
!198 = !DILocation(line: 80, column: 35, scope: !199)
!199 = distinct !DILexicalBlock(scope: !196, file: !8, line: 80, column: 23)
!200 = !DILocation(line: 80, column: 37, scope: !199)
!201 = !DILocation(line: 80, column: 23, scope: !196)
!202 = !DILocation(line: 82, column: 24, scope: !203)
!203 = distinct !DILexicalBlock(scope: !199, file: !8, line: 80, column: 47)
!204 = !DILocation(line: 82, column: 27, scope: !203)
!205 = !DILocation(line: 82, column: 29, scope: !203)
!206 = !DILocation(line: 82, column: 28, scope: !203)
!207 = !DILocation(line: 82, column: 32, scope: !203)
!208 = !DILocation(line: 82, column: 31, scope: !203)
!209 = !DILocation(line: 82, column: 37, scope: !203)
!210 = !DILocation(line: 82, column: 40, scope: !203)
!211 = !DILocation(line: 82, column: 42, scope: !203)
!212 = !DILocation(line: 82, column: 41, scope: !203)
!213 = !DILocation(line: 82, column: 45, scope: !203)
!214 = !DILocation(line: 82, column: 44, scope: !203)
!215 = !DILocation(line: 82, column: 35, scope: !203)
!216 = !DILocation(line: 82, column: 10, scope: !203)
!217 = !DILocation(line: 82, column: 13, scope: !203)
!218 = !DILocation(line: 82, column: 15, scope: !203)
!219 = !DILocation(line: 82, column: 14, scope: !203)
!220 = !DILocation(line: 82, column: 18, scope: !203)
!221 = !DILocation(line: 82, column: 17, scope: !203)
!222 = !DILocation(line: 82, column: 21, scope: !203)
!223 = !DILocation(line: 83, column: 9, scope: !203)
!224 = !DILocation(line: 80, column: 43, scope: !199)
!225 = !DILocation(line: 80, column: 23, scope: !199)
!226 = distinct !{!226, !201, !227, !228}
!227 = !DILocation(line: 83, column: 9, scope: !196)
!228 = !{!"llvm.loop.name", !"VITIS_LOOP_80_6"}
!229 = !DILocation(line: 84, column: 5, scope: !188)
!230 = !DILocation(line: 77, column: 43, scope: !183)
!231 = !DILocation(line: 77, column: 22, scope: !183)
!232 = distinct !{!232, !186, !233, !234}
!233 = !DILocation(line: 84, column: 5, scope: !179)
!234 = !{!"llvm.loop.name", !"VITIS_LOOP_77_5"}
!235 = !DILocation(line: 85, column: 4, scope: !180)
!236 = !DILocation(line: 75, column: 41, scope: !173)
!237 = !DILocation(line: 75, column: 20, scope: !173)
!238 = distinct !{!238, !176, !239, !240}
!239 = !DILocation(line: 85, column: 4, scope: !170)
!240 = !{!"llvm.loop.name", !"VITIS_LOOP_75_4"}
!241 = !DILocation(line: 88, column: 27, scope: !242)
!242 = distinct !DILexicalBlock(scope: !7, file: !8, line: 88, column: 20)
!243 = !DILocation(line: 88, column: 25, scope: !242)
!244 = !DILocation(line: 88, column: 32, scope: !245)
!245 = distinct !DILexicalBlock(scope: !242, file: !8, line: 88, column: 20)
!246 = !DILocation(line: 88, column: 34, scope: !245)
!247 = !DILocation(line: 88, column: 20, scope: !242)
!248 = !DILocation(line: 88, column: 44, scope: !245)
!249 = !DILocation(line: 90, column: 29, scope: !250)
!250 = distinct !DILexicalBlock(scope: !251, file: !8, line: 90, column: 22)
!251 = distinct !DILexicalBlock(scope: !245, file: !8, line: 88, column: 44)
!252 = !DILocation(line: 90, column: 27, scope: !250)
!253 = !DILocation(line: 90, column: 34, scope: !254)
!254 = distinct !DILexicalBlock(scope: !250, file: !8, line: 90, column: 22)
!255 = !DILocation(line: 90, column: 36, scope: !254)
!256 = !DILocation(line: 90, column: 22, scope: !250)
!257 = !DILocation(line: 92, column: 6, scope: !258)
!258 = distinct !DILexicalBlock(scope: !254, file: !8, line: 90, column: 46)
!259 = !DILocation(line: 92, column: 9, scope: !258)
!260 = !DILocation(line: 92, column: 11, scope: !258)
!261 = !DILocation(line: 92, column: 10, scope: !258)
!262 = !DILocation(line: 92, column: 14, scope: !258)
!263 = !DILocation(line: 92, column: 13, scope: !258)
!264 = !DILocation(line: 92, column: 17, scope: !258)
!265 = !DILocation(line: 93, column: 30, scope: !266)
!266 = distinct !DILexicalBlock(scope: !258, file: !8, line: 93, column: 23)
!267 = !DILocation(line: 93, column: 28, scope: !266)
!268 = !DILocation(line: 93, column: 35, scope: !269)
!269 = distinct !DILexicalBlock(scope: !266, file: !8, line: 93, column: 23)
!270 = !DILocation(line: 93, column: 37, scope: !269)
!271 = !DILocation(line: 93, column: 23, scope: !266)
!272 = !DILocation(line: 95, column: 24, scope: !273)
!273 = distinct !DILexicalBlock(scope: !269, file: !8, line: 93, column: 47)
!274 = !DILocation(line: 95, column: 27, scope: !273)
!275 = !DILocation(line: 95, column: 29, scope: !273)
!276 = !DILocation(line: 95, column: 28, scope: !273)
!277 = !DILocation(line: 95, column: 32, scope: !273)
!278 = !DILocation(line: 95, column: 31, scope: !273)
!279 = !DILocation(line: 95, column: 37, scope: !273)
!280 = !DILocation(line: 95, column: 40, scope: !273)
!281 = !DILocation(line: 95, column: 42, scope: !273)
!282 = !DILocation(line: 95, column: 41, scope: !273)
!283 = !DILocation(line: 95, column: 45, scope: !273)
!284 = !DILocation(line: 95, column: 44, scope: !273)
!285 = !DILocation(line: 95, column: 35, scope: !273)
!286 = !DILocation(line: 95, column: 10, scope: !273)
!287 = !DILocation(line: 95, column: 13, scope: !273)
!288 = !DILocation(line: 95, column: 15, scope: !273)
!289 = !DILocation(line: 95, column: 14, scope: !273)
!290 = !DILocation(line: 95, column: 18, scope: !273)
!291 = !DILocation(line: 95, column: 17, scope: !273)
!292 = !DILocation(line: 95, column: 21, scope: !273)
!293 = !DILocation(line: 96, column: 9, scope: !273)
!294 = !DILocation(line: 93, column: 43, scope: !269)
!295 = !DILocation(line: 93, column: 23, scope: !269)
!296 = distinct !{!296, !271, !297, !298}
!297 = !DILocation(line: 96, column: 9, scope: !266)
!298 = !{!"llvm.loop.name", !"VITIS_LOOP_93_9"}
!299 = !DILocation(line: 97, column: 5, scope: !258)
!300 = !DILocation(line: 90, column: 43, scope: !254)
!301 = !DILocation(line: 90, column: 22, scope: !254)
!302 = distinct !{!302, !256, !303, !304}
!303 = !DILocation(line: 97, column: 5, scope: !250)
!304 = !{!"llvm.loop.name", !"VITIS_LOOP_90_8"}
!305 = !DILocation(line: 98, column: 3, scope: !251)
!306 = !DILocation(line: 88, column: 41, scope: !245)
!307 = !DILocation(line: 88, column: 20, scope: !245)
!308 = distinct !{!308, !247, !309, !310}
!309 = !DILocation(line: 98, column: 3, scope: !242)
!310 = !{!"llvm.loop.name", !"VITIS_LOOP_88_7"}
!311 = !DILocation(line: 99, column: 1, scope: !7)
