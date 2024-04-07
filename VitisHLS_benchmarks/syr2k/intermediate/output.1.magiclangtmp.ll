; ModuleID = '/home/bruno/Desktop/benchmarks/syr2k/proj_syr2k/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
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
define void @syr2k(float* %A, float* %B, float* %C, float %alpha, float %beta) #0 !dbg !7 !fpga.function.pragma !13 {
entry:
  %A.addr = alloca float*, align 8
  %B.addr = alloca float*, align 8
  %C.addr = alloca float*, align 8
  %alpha.addr = alloca float, align 4
  %beta.addr = alloca float, align 4
  %n = alloca i32, align 4
  %m = alloca i32, align 4
  %alphas = alloca float, align 4
  %betas = alloca float, align 4
  %As = alloca float*, align 8
  %Bs = alloca float*, align 8
  %Cs = alloca float*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store float* %A, float** %A.addr, align 8
  call void @llvm.dbg.declare(metadata float** %A.addr, metadata !16, metadata !DIExpression()), !dbg !17
  store float* %B, float** %B.addr, align 8
  call void @llvm.dbg.declare(metadata float** %B.addr, metadata !18, metadata !DIExpression()), !dbg !19
  store float* %C, float** %C.addr, align 8
  call void @llvm.dbg.declare(metadata float** %C.addr, metadata !20, metadata !DIExpression()), !dbg !21
  store float %alpha, float* %alpha.addr, align 4
  call void @llvm.dbg.declare(metadata float* %alpha.addr, metadata !22, metadata !DIExpression()), !dbg !23
  store float %beta, float* %beta.addr, align 4
  call void @llvm.dbg.declare(metadata float* %beta.addr, metadata !24, metadata !DIExpression()), !dbg !25
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %A, [0 x i8] zeroinitializer, i64 256, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !26
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %B, [0 x i8] zeroinitializer, i64 256, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !27
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %C, [0 x i8] zeroinitializer, i64 256, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !28
  %0 = bitcast i32* %n to i8*, !dbg !29
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !29
  call void @llvm.dbg.declare(metadata i32* %n, metadata !30, metadata !DIExpression()), !dbg !32
  store i32 16, i32* %n, align 4, !dbg !32
  %1 = bitcast i32* %m to i8*, !dbg !33
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !33
  call void @llvm.dbg.declare(metadata i32* %m, metadata !34, metadata !DIExpression()), !dbg !35
  store i32 16, i32* %m, align 4, !dbg !35
  %2 = bitcast float* %alphas to i8*, !dbg !36
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !36
  call void @llvm.dbg.declare(metadata float* %alphas, metadata !37, metadata !DIExpression()), !dbg !38
  %alphas1 = bitcast float* %alphas to i8*, !dbg !36
  call void @llvm.var.annotation(i8* %alphas1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 28), !dbg !36
  %3 = load float, float* %alpha.addr, align 4, !dbg !39
  store float %3, float* %alphas, align 4, !dbg !40
  %4 = bitcast float* %betas to i8*, !dbg !41
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !41
  call void @llvm.dbg.declare(metadata float* %betas, metadata !42, metadata !DIExpression()), !dbg !43
  %betas2 = bitcast float* %betas to i8*, !dbg !41
  call void @llvm.var.annotation(i8* %betas2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 30), !dbg !41
  %5 = load float, float* %beta.addr, align 4, !dbg !44
  store float %5, float* %betas, align 4, !dbg !45
  %6 = bitcast float** %As to i8*, !dbg !46
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %6) #4, !dbg !46
  call void @llvm.dbg.declare(metadata float** %As, metadata !47, metadata !DIExpression()), !dbg !48
  %As3 = bitcast float** %As to i8*, !dbg !46
  call void @llvm.var.annotation(i8* %As3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 33), !dbg !46
  %7 = load float*, float** %A.addr, align 8, !dbg !49
  store float* %7, float** %As, align 8, !dbg !50
  %8 = bitcast float** %Bs to i8*, !dbg !51
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %8) #4, !dbg !51
  call void @llvm.dbg.declare(metadata float** %Bs, metadata !52, metadata !DIExpression()), !dbg !53
  %Bs4 = bitcast float** %Bs to i8*, !dbg !51
  call void @llvm.var.annotation(i8* %Bs4, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 35), !dbg !51
  %9 = load float*, float** %B.addr, align 8, !dbg !54
  store float* %9, float** %Bs, align 8, !dbg !55
  %10 = bitcast float** %Cs to i8*, !dbg !56
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %10) #4, !dbg !56
  call void @llvm.dbg.declare(metadata float** %Cs, metadata !57, metadata !DIExpression()), !dbg !58
  %Cs5 = bitcast float** %Cs to i8*, !dbg !56
  call void @llvm.var.annotation(i8* %Cs5, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 37), !dbg !56
  %11 = load float*, float** %C.addr, align 8, !dbg !59
  store float* %11, float** %Cs, align 8, !dbg !60
  %12 = bitcast i32* %i to i8*, !dbg !61
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #4, !dbg !61
  call void @llvm.dbg.declare(metadata i32* %i, metadata !62, metadata !DIExpression()), !dbg !63
  %i6 = bitcast i32* %i to i8*, !dbg !61
  call void @llvm.var.annotation(i8* %i6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 41), !dbg !61
  %13 = bitcast i32* %j to i8*, !dbg !64
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #4, !dbg !64
  call void @llvm.dbg.declare(metadata i32* %j, metadata !65, metadata !DIExpression()), !dbg !66
  %j7 = bitcast i32* %j to i8*, !dbg !64
  call void @llvm.var.annotation(i8* %j7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 42), !dbg !64
  %14 = bitcast i32* %k to i8*, !dbg !67
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #4, !dbg !67
  call void @llvm.dbg.declare(metadata i32* %k, metadata !68, metadata !DIExpression()), !dbg !69
  %k8 = bitcast i32* %k to i8*, !dbg !67
  call void @llvm.var.annotation(i8* %k8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 43), !dbg !67
  br label %VITIS_LOOP_46_1, !dbg !67

VITIS_LOOP_46_1:                                  ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !70
  br label %for.cond, !dbg !72

for.cond:                                         ; preds = %for.inc51, %VITIS_LOOP_46_1
  %15 = load i32, i32* %i, align 4, !dbg !73
  %cmp = icmp slt i32 %15, 16, !dbg !75
  br i1 %cmp, label %for.body, label %for.end53, !dbg !76

for.body:                                         ; preds = %for.cond
  br label %VITIS_LOOP_48_2, !dbg !77

VITIS_LOOP_48_2:                                  ; preds = %for.body
  store i32 0, i32* %j, align 4, !dbg !78
  br label %for.cond9, !dbg !81

for.cond9:                                        ; preds = %for.inc, %VITIS_LOOP_48_2
  %16 = load i32, i32* %j, align 4, !dbg !82
  %17 = load i32, i32* %i, align 4, !dbg !84
  %cmp10 = icmp sle i32 %16, %17, !dbg !85
  br i1 %cmp10, label %for.body11, label %for.end, !dbg !86

for.body11:                                       ; preds = %for.cond9
  %18 = load float, float* %betas, align 4, !dbg !87
  %19 = load float*, float** %Cs, align 8, !dbg !89
  %20 = load i32, i32* %i, align 4, !dbg !90
  %21 = load i32, i32* %n, align 4, !dbg !91
  %mul = mul nsw i32 %20, %21, !dbg !92
  %22 = load i32, i32* %j, align 4, !dbg !93
  %add = add nsw i32 %mul, %22, !dbg !94
  %idxprom = sext i32 %add to i64, !dbg !89
  %arrayidx = getelementptr inbounds float, float* %19, i64 %idxprom, !dbg !89
  %23 = load float, float* %arrayidx, align 4, !dbg !95
  %mul12 = fmul float %23, %18, !dbg !95
  store float %mul12, float* %arrayidx, align 4, !dbg !95
  br label %for.inc, !dbg !96

for.inc:                                          ; preds = %for.body11
  %24 = load i32, i32* %j, align 4, !dbg !97
  %inc = add nsw i32 %24, 1, !dbg !97
  store i32 %inc, i32* %j, align 4, !dbg !97
  br label %for.cond9, !dbg !98, !llvm.loop !99

for.end:                                          ; preds = %for.cond9
  br label %VITIS_LOOP_52_3, !dbg !100

VITIS_LOOP_52_3:                                  ; preds = %for.end
  store i32 0, i32* %k, align 4, !dbg !104
  br label %for.cond13, !dbg !106

for.cond13:                                       ; preds = %for.inc48, %VITIS_LOOP_52_3
  %25 = load i32, i32* %k, align 4, !dbg !107
  %cmp14 = icmp slt i32 %25, 16, !dbg !109
  br i1 %cmp14, label %for.body15, label %for.end50, !dbg !110

for.body15:                                       ; preds = %for.cond13
  br label %VITIS_LOOP_54_4, !dbg !111

VITIS_LOOP_54_4:                                  ; preds = %for.body15
  store i32 0, i32* %j, align 4, !dbg !112
  br label %for.cond16, !dbg !115

for.cond16:                                       ; preds = %for.inc45, %VITIS_LOOP_54_4
  %26 = load i32, i32* %j, align 4, !dbg !116
  %27 = load i32, i32* %i, align 4, !dbg !118
  %cmp17 = icmp sle i32 %26, %27, !dbg !119
  br i1 %cmp17, label %for.body18, label %for.end47, !dbg !120

for.body18:                                       ; preds = %for.cond16
  %28 = load float*, float** %As, align 8, !dbg !121
  %29 = load i32, i32* %j, align 4, !dbg !123
  %30 = load i32, i32* %m, align 4, !dbg !124
  %mul19 = mul nsw i32 %29, %30, !dbg !125
  %31 = load i32, i32* %k, align 4, !dbg !126
  %add20 = add nsw i32 %mul19, %31, !dbg !127
  %idxprom21 = sext i32 %add20 to i64, !dbg !121
  %arrayidx22 = getelementptr inbounds float, float* %28, i64 %idxprom21, !dbg !121
  %32 = load float, float* %arrayidx22, align 4, !dbg !121
  %33 = load float, float* %alphas, align 4, !dbg !128
  %mul23 = fmul float %32, %33, !dbg !129
  %34 = load float*, float** %Bs, align 8, !dbg !130
  %35 = load i32, i32* %i, align 4, !dbg !131
  %36 = load i32, i32* %m, align 4, !dbg !132
  %mul24 = mul nsw i32 %35, %36, !dbg !133
  %37 = load i32, i32* %k, align 4, !dbg !134
  %add25 = add nsw i32 %mul24, %37, !dbg !135
  %idxprom26 = sext i32 %add25 to i64, !dbg !130
  %arrayidx27 = getelementptr inbounds float, float* %34, i64 %idxprom26, !dbg !130
  %38 = load float, float* %arrayidx27, align 4, !dbg !130
  %mul28 = fmul float %mul23, %38, !dbg !136
  %39 = load float*, float** %Bs, align 8, !dbg !137
  %40 = load i32, i32* %j, align 4, !dbg !138
  %41 = load i32, i32* %m, align 4, !dbg !139
  %mul29 = mul nsw i32 %40, %41, !dbg !140
  %42 = load i32, i32* %k, align 4, !dbg !141
  %add30 = add nsw i32 %mul29, %42, !dbg !142
  %idxprom31 = sext i32 %add30 to i64, !dbg !137
  %arrayidx32 = getelementptr inbounds float, float* %39, i64 %idxprom31, !dbg !137
  %43 = load float, float* %arrayidx32, align 4, !dbg !137
  %44 = load float, float* %alphas, align 4, !dbg !143
  %mul33 = fmul float %43, %44, !dbg !144
  %45 = load float*, float** %As, align 8, !dbg !145
  %46 = load i32, i32* %i, align 4, !dbg !146
  %47 = load i32, i32* %m, align 4, !dbg !147
  %mul34 = mul nsw i32 %46, %47, !dbg !148
  %48 = load i32, i32* %k, align 4, !dbg !149
  %add35 = add nsw i32 %mul34, %48, !dbg !150
  %idxprom36 = sext i32 %add35 to i64, !dbg !145
  %arrayidx37 = getelementptr inbounds float, float* %45, i64 %idxprom36, !dbg !145
  %49 = load float, float* %arrayidx37, align 4, !dbg !145
  %mul38 = fmul float %mul33, %49, !dbg !151
  %add39 = fadd float %mul28, %mul38, !dbg !152
  %50 = load float*, float** %Cs, align 8, !dbg !153
  %51 = load i32, i32* %i, align 4, !dbg !154
  %52 = load i32, i32* %n, align 4, !dbg !155
  %mul40 = mul nsw i32 %51, %52, !dbg !156
  %53 = load i32, i32* %j, align 4, !dbg !157
  %add41 = add nsw i32 %mul40, %53, !dbg !158
  %idxprom42 = sext i32 %add41 to i64, !dbg !153
  %arrayidx43 = getelementptr inbounds float, float* %50, i64 %idxprom42, !dbg !153
  %54 = load float, float* %arrayidx43, align 4, !dbg !159
  %add44 = fadd float %54, %add39, !dbg !159
  store float %add44, float* %arrayidx43, align 4, !dbg !159
  br label %for.inc45, !dbg !160

for.inc45:                                        ; preds = %for.body18
  %55 = load i32, i32* %j, align 4, !dbg !161
  %inc46 = add nsw i32 %55, 1, !dbg !161
  store i32 %inc46, i32* %j, align 4, !dbg !161
  br label %for.cond16, !dbg !162, !llvm.loop !163

for.end47:                                        ; preds = %for.cond16
  br label %for.inc48, !dbg !168

for.inc48:                                        ; preds = %for.end47
  %56 = load i32, i32* %k, align 4, !dbg !169
  %inc49 = add nsw i32 %56, 1, !dbg !169
  store i32 %inc49, i32* %k, align 4, !dbg !169
  br label %for.cond13, !dbg !170, !llvm.loop !171

for.end50:                                        ; preds = %for.cond13
  br label %for.inc51, !dbg !176

for.inc51:                                        ; preds = %for.end50
  %57 = load i32, i32* %i, align 4, !dbg !177
  %inc52 = add nsw i32 %57, 1, !dbg !177
  store i32 %inc52, i32* %i, align 4, !dbg !177
  br label %for.cond, !dbg !178, !llvm.loop !179

for.end53:                                        ; preds = %for.cond
  %58 = bitcast i32* %k to i8*, !dbg !184
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %58) #4, !dbg !184
  %59 = bitcast i32* %j to i8*, !dbg !184
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %59) #4, !dbg !184
  %60 = bitcast i32* %i to i8*, !dbg !184
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %60) #4, !dbg !184
  %61 = bitcast float** %Cs to i8*, !dbg !184
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %61) #4, !dbg !184
  %62 = bitcast float** %Bs to i8*, !dbg !184
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %62) #4, !dbg !184
  %63 = bitcast float** %As to i8*, !dbg !184
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %63) #4, !dbg !184
  %64 = bitcast float* %betas to i8*, !dbg !184
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %64) #4, !dbg !184
  %65 = bitcast float* %alphas to i8*, !dbg !184
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %65) #4, !dbg !184
  %66 = bitcast i32* %m to i8*, !dbg !184
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %66) #4, !dbg !184
  %67 = bitcast i32* %n to i8*, !dbg !184
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %67) #4, !dbg !184
  ret void, !dbg !184
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
!16 = !DILocalVariable(name: "A", arg: 1, scope: !7, file: !8, line: 20, type: !11)
!17 = !DILocation(line: 20, column: 59, scope: !7)
!18 = !DILocalVariable(name: "B", arg: 2, scope: !7, file: !8, line: 20, type: !11)
!19 = !DILocation(line: 20, column: 69, scope: !7)
!20 = !DILocalVariable(name: "C", arg: 3, scope: !7, file: !8, line: 20, type: !11)
!21 = !DILocation(line: 20, column: 79, scope: !7)
!22 = !DILocalVariable(name: "alpha", arg: 4, scope: !7, file: !8, line: 20, type: !12)
!23 = !DILocation(line: 20, column: 88, scope: !7)
!24 = !DILocalVariable(name: "beta", arg: 5, scope: !7, file: !8, line: 20, type: !12)
!25 = !DILocation(line: 20, column: 101, scope: !7)
!26 = !DILocation(line: 23, column: 9, scope: !7)
!27 = !DILocation(line: 24, column: 9, scope: !7)
!28 = !DILocation(line: 25, column: 9, scope: !7)
!29 = !DILocation(line: 26, column: 2, scope: !7)
!30 = !DILocalVariable(name: "n", scope: !7, file: !8, line: 26, type: !31)
!31 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!32 = !DILocation(line: 26, column: 6, scope: !7)
!33 = !DILocation(line: 27, column: 3, scope: !7)
!34 = !DILocalVariable(name: "m", scope: !7, file: !8, line: 27, type: !31)
!35 = !DILocation(line: 27, column: 7, scope: !7)
!36 = !DILocation(line: 28, column: 3, scope: !7)
!37 = !DILocalVariable(name: "alphas", scope: !7, file: !8, line: 28, type: !12)
!38 = !DILocation(line: 28, column: 9, scope: !7)
!39 = !DILocation(line: 29, column: 12, scope: !7)
!40 = !DILocation(line: 29, column: 10, scope: !7)
!41 = !DILocation(line: 30, column: 3, scope: !7)
!42 = !DILocalVariable(name: "betas", scope: !7, file: !8, line: 30, type: !12)
!43 = !DILocation(line: 30, column: 9, scope: !7)
!44 = !DILocation(line: 31, column: 9, scope: !7)
!45 = !DILocation(line: 31, column: 8, scope: !7)
!46 = !DILocation(line: 33, column: 3, scope: !7)
!47 = !DILocalVariable(name: "As", scope: !7, file: !8, line: 33, type: !11)
!48 = !DILocation(line: 33, column: 10, scope: !7)
!49 = !DILocation(line: 34, column: 8, scope: !7)
!50 = !DILocation(line: 34, column: 6, scope: !7)
!51 = !DILocation(line: 35, column: 3, scope: !7)
!52 = !DILocalVariable(name: "Bs", scope: !7, file: !8, line: 35, type: !11)
!53 = !DILocation(line: 35, column: 10, scope: !7)
!54 = !DILocation(line: 36, column: 8, scope: !7)
!55 = !DILocation(line: 36, column: 6, scope: !7)
!56 = !DILocation(line: 37, column: 3, scope: !7)
!57 = !DILocalVariable(name: "Cs", scope: !7, file: !8, line: 37, type: !11)
!58 = !DILocation(line: 37, column: 10, scope: !7)
!59 = !DILocation(line: 38, column: 8, scope: !7)
!60 = !DILocation(line: 38, column: 6, scope: !7)
!61 = !DILocation(line: 41, column: 3, scope: !7)
!62 = !DILocalVariable(name: "i", scope: !7, file: !8, line: 41, type: !31)
!63 = !DILocation(line: 41, column: 7, scope: !7)
!64 = !DILocation(line: 42, column: 3, scope: !7)
!65 = !DILocalVariable(name: "j", scope: !7, file: !8, line: 42, type: !31)
!66 = !DILocation(line: 42, column: 7, scope: !7)
!67 = !DILocation(line: 43, column: 3, scope: !7)
!68 = !DILocalVariable(name: "k", scope: !7, file: !8, line: 43, type: !31)
!69 = !DILocation(line: 43, column: 7, scope: !7)
!70 = !DILocation(line: 46, column: 27, scope: !71)
!71 = distinct !DILexicalBlock(scope: !7, file: !8, line: 46, column: 20)
!72 = !DILocation(line: 46, column: 25, scope: !71)
!73 = !DILocation(line: 46, column: 32, scope: !74)
!74 = distinct !DILexicalBlock(scope: !71, file: !8, line: 46, column: 20)
!75 = !DILocation(line: 46, column: 34, scope: !74)
!76 = !DILocation(line: 46, column: 20, scope: !71)
!77 = !DILocation(line: 46, column: 45, scope: !74)
!78 = !DILocation(line: 48, column: 26, scope: !79)
!79 = distinct !DILexicalBlock(scope: !80, file: !8, line: 48, column: 19)
!80 = distinct !DILexicalBlock(scope: !74, file: !8, line: 46, column: 45)
!81 = !DILocation(line: 48, column: 24, scope: !79)
!82 = !DILocation(line: 48, column: 31, scope: !83)
!83 = distinct !DILexicalBlock(scope: !79, file: !8, line: 48, column: 19)
!84 = !DILocation(line: 48, column: 36, scope: !83)
!85 = !DILocation(line: 48, column: 33, scope: !83)
!86 = !DILocation(line: 48, column: 19, scope: !79)
!87 = !DILocation(line: 50, column: 17, scope: !88)
!88 = distinct !DILexicalBlock(scope: !83, file: !8, line: 48, column: 43)
!89 = !DILocation(line: 50, column: 2, scope: !88)
!90 = !DILocation(line: 50, column: 5, scope: !88)
!91 = !DILocation(line: 50, column: 7, scope: !88)
!92 = !DILocation(line: 50, column: 6, scope: !88)
!93 = !DILocation(line: 50, column: 11, scope: !88)
!94 = !DILocation(line: 50, column: 9, scope: !88)
!95 = !DILocation(line: 50, column: 14, scope: !88)
!96 = !DILocation(line: 51, column: 5, scope: !88)
!97 = !DILocation(line: 48, column: 40, scope: !83)
!98 = !DILocation(line: 48, column: 19, scope: !83)
!99 = distinct !{!99, !86, !100, !101, !103}
!100 = !DILocation(line: 51, column: 5, scope: !79)
!101 = !{!"llvm.loop.pipeline.enable", i32 1, i1 false, i8 -1, !"user", !102}
!102 = !DILocation(line: 49, column: 9, scope: !79)
!103 = !{!"llvm.loop.name", !"VITIS_LOOP_48_2"}
!104 = !DILocation(line: 52, column: 29, scope: !105)
!105 = distinct !DILexicalBlock(scope: !80, file: !8, line: 52, column: 22)
!106 = !DILocation(line: 52, column: 27, scope: !105)
!107 = !DILocation(line: 52, column: 34, scope: !108)
!108 = distinct !DILexicalBlock(scope: !105, file: !8, line: 52, column: 22)
!109 = !DILocation(line: 52, column: 36, scope: !108)
!110 = !DILocation(line: 52, column: 22, scope: !105)
!111 = !DILocation(line: 52, column: 46, scope: !108)
!112 = !DILocation(line: 54, column: 26, scope: !113)
!113 = distinct !DILexicalBlock(scope: !114, file: !8, line: 54, column: 19)
!114 = distinct !DILexicalBlock(scope: !108, file: !8, line: 52, column: 46)
!115 = !DILocation(line: 54, column: 24, scope: !113)
!116 = !DILocation(line: 54, column: 31, scope: !117)
!117 = distinct !DILexicalBlock(scope: !113, file: !8, line: 54, column: 19)
!118 = !DILocation(line: 54, column: 36, scope: !117)
!119 = !DILocation(line: 54, column: 33, scope: !117)
!120 = !DILocation(line: 54, column: 19, scope: !113)
!121 = !DILocation(line: 57, column: 15, scope: !122)
!122 = distinct !DILexicalBlock(scope: !117, file: !8, line: 55, column: 2)
!123 = !DILocation(line: 57, column: 18, scope: !122)
!124 = !DILocation(line: 57, column: 20, scope: !122)
!125 = !DILocation(line: 57, column: 19, scope: !122)
!126 = !DILocation(line: 57, column: 22, scope: !122)
!127 = !DILocation(line: 57, column: 21, scope: !122)
!128 = !DILocation(line: 57, column: 25, scope: !122)
!129 = !DILocation(line: 57, column: 24, scope: !122)
!130 = !DILocation(line: 57, column: 32, scope: !122)
!131 = !DILocation(line: 57, column: 35, scope: !122)
!132 = !DILocation(line: 57, column: 37, scope: !122)
!133 = !DILocation(line: 57, column: 36, scope: !122)
!134 = !DILocation(line: 57, column: 39, scope: !122)
!135 = !DILocation(line: 57, column: 38, scope: !122)
!136 = !DILocation(line: 57, column: 31, scope: !122)
!137 = !DILocation(line: 57, column: 44, scope: !122)
!138 = !DILocation(line: 57, column: 47, scope: !122)
!139 = !DILocation(line: 57, column: 49, scope: !122)
!140 = !DILocation(line: 57, column: 48, scope: !122)
!141 = !DILocation(line: 57, column: 51, scope: !122)
!142 = !DILocation(line: 57, column: 50, scope: !122)
!143 = !DILocation(line: 57, column: 54, scope: !122)
!144 = !DILocation(line: 57, column: 53, scope: !122)
!145 = !DILocation(line: 57, column: 61, scope: !122)
!146 = !DILocation(line: 57, column: 64, scope: !122)
!147 = !DILocation(line: 57, column: 66, scope: !122)
!148 = !DILocation(line: 57, column: 65, scope: !122)
!149 = !DILocation(line: 57, column: 68, scope: !122)
!150 = !DILocation(line: 57, column: 67, scope: !122)
!151 = !DILocation(line: 57, column: 60, scope: !122)
!152 = !DILocation(line: 57, column: 42, scope: !122)
!153 = !DILocation(line: 57, column: 2, scope: !122)
!154 = !DILocation(line: 57, column: 5, scope: !122)
!155 = !DILocation(line: 57, column: 7, scope: !122)
!156 = !DILocation(line: 57, column: 6, scope: !122)
!157 = !DILocation(line: 57, column: 9, scope: !122)
!158 = !DILocation(line: 57, column: 8, scope: !122)
!159 = !DILocation(line: 57, column: 12, scope: !122)
!160 = !DILocation(line: 58, column: 2, scope: !122)
!161 = !DILocation(line: 54, column: 40, scope: !117)
!162 = !DILocation(line: 54, column: 19, scope: !117)
!163 = distinct !{!163, !120, !164, !165, !167}
!164 = !DILocation(line: 58, column: 2, scope: !113)
!165 = !{!"llvm.loop.pipeline.enable", i32 1, i1 false, i8 -1, !"user", !166}
!166 = !DILocation(line: 56, column: 9, scope: !113)
!167 = !{!"llvm.loop.name", !"VITIS_LOOP_54_4"}
!168 = !DILocation(line: 59, column: 5, scope: !114)
!169 = !DILocation(line: 52, column: 43, scope: !108)
!170 = !DILocation(line: 52, column: 22, scope: !108)
!171 = distinct !{!171, !110, !172, !173, !175}
!172 = !DILocation(line: 59, column: 5, scope: !105)
!173 = !{!"llvm.loop.pipeline.enable", i32 1, i1 false, i8 -1, !"user", !174}
!174 = !DILocation(line: 53, column: 9, scope: !105)
!175 = !{!"llvm.loop.name", !"VITIS_LOOP_52_3"}
!176 = !DILocation(line: 60, column: 3, scope: !80)
!177 = !DILocation(line: 46, column: 41, scope: !74)
!178 = !DILocation(line: 46, column: 20, scope: !74)
!179 = distinct !{!179, !76, !180, !181, !183}
!180 = !DILocation(line: 60, column: 3, scope: !71)
!181 = !{!"llvm.loop.unroll.count", i32 4, !"user", !182}
!182 = !DILocation(line: 47, column: 9, scope: !71)
!183 = !{!"llvm.loop.name", !"VITIS_LOOP_46_1"}
!184 = !DILocation(line: 64, column: 1, scope: !7)
