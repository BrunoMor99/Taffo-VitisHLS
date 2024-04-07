; ModuleID = '/home/bruno/Desktop/benchmarks/atax/proj_atax/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.global_ctors = appending global [0 x { i32, void ()*, i8* }] zeroinitializer
@.str = private unnamed_addr constant [35 x i8] c"target('As') scalar(range(1, 400))\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [13 x i8] c"atax_taffo.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [35 x i8] c"target('xs') scalar(range(1, 400))\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [35 x i8] c"target('ys') scalar(range(1, 400))\00", section "llvm.metadata"
@.str.4 = private unnamed_addr constant [22 x i8] c"scalar(range(1, 400))\00", section "llvm.metadata"
@.str.5 = private unnamed_addr constant [9 x i8] c"scalar()\00", section "llvm.metadata"
@.str.6 = private unnamed_addr constant [39 x i8] c"target('y_true') scalar(range(1, 400))\00", section "llvm.metadata"

; Function Attrs: nounwind
define void @atax(float* %A, float* %x, float* %y) #0 !dbg !9 !fpga.function.pragma !14 {
entry:
  %A.addr = alloca float*, align 8
  %x.addr = alloca float*, align 8
  %y.addr = alloca float*, align 8
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %As = alloca float*, align 8
  %xs = alloca float*, align 8
  %ys = alloca float*, align 8
  %tmp = alloca float, align 4
  %zero = alloca float, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  store float* %A, float** %A.addr, align 8
  call void @llvm.dbg.declare(metadata float** %A.addr, metadata !17, metadata !DIExpression()), !dbg !18
  store float* %x, float** %x.addr, align 8
  call void @llvm.dbg.declare(metadata float** %x.addr, metadata !19, metadata !DIExpression()), !dbg !20
  store float* %y, float** %y.addr, align 8
  call void @llvm.dbg.declare(metadata float** %y.addr, metadata !21, metadata !DIExpression()), !dbg !22
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %A, [0 x i8] zeroinitializer, i64 256, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !23
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %x, [0 x i8] zeroinitializer, i64 16, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !24
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %y, [0 x i8] zeroinitializer, i64 16, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !25
  %0 = bitcast i32* %m to i8*, !dbg !26
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !26
  call void @llvm.dbg.declare(metadata i32* %m, metadata !27, metadata !DIExpression()), !dbg !29
  store i32 16, i32* %m, align 4, !dbg !29
  %1 = bitcast i32* %n to i8*, !dbg !30
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !30
  call void @llvm.dbg.declare(metadata i32* %n, metadata !31, metadata !DIExpression()), !dbg !32
  store i32 16, i32* %n, align 4, !dbg !32
  %2 = bitcast float** %As to i8*, !dbg !33
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #4, !dbg !33
  call void @llvm.dbg.declare(metadata float** %As, metadata !34, metadata !DIExpression()), !dbg !35
  %As1 = bitcast float** %As to i8*, !dbg !33
  call void @llvm.var.annotation(i8* %As1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 31), !dbg !33
  %3 = load float*, float** %A.addr, align 8, !dbg !36
  store float* %3, float** %As, align 8, !dbg !37
  %4 = bitcast float** %xs to i8*, !dbg !38
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #4, !dbg !38
  call void @llvm.dbg.declare(metadata float** %xs, metadata !39, metadata !DIExpression()), !dbg !40
  %xs2 = bitcast float** %xs to i8*, !dbg !38
  call void @llvm.var.annotation(i8* %xs2, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 33), !dbg !38
  %5 = load float*, float** %x.addr, align 8, !dbg !41
  store float* %5, float** %xs, align 8, !dbg !42
  %6 = bitcast float** %ys to i8*, !dbg !43
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %6) #4, !dbg !43
  call void @llvm.dbg.declare(metadata float** %ys, metadata !44, metadata !DIExpression()), !dbg !45
  %ys3 = bitcast float** %ys to i8*, !dbg !43
  call void @llvm.var.annotation(i8* %ys3, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 35), !dbg !43
  %7 = load float*, float** %y.addr, align 8, !dbg !46
  store float* %7, float** %ys, align 8, !dbg !47
  %8 = bitcast float* %tmp to i8*, !dbg !48
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4, !dbg !48
  call void @llvm.dbg.declare(metadata float* %tmp, metadata !49, metadata !DIExpression()), !dbg !50
  %tmp4 = bitcast float* %tmp to i8*, !dbg !48
  call void @llvm.var.annotation(i8* %tmp4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 37), !dbg !48
  %9 = bitcast float* %zero to i8*, !dbg !51
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #4, !dbg !51
  call void @llvm.dbg.declare(metadata float* %zero, metadata !52, metadata !DIExpression()), !dbg !53
  %zero5 = bitcast float* %zero to i8*, !dbg !51
  call void @llvm.var.annotation(i8* %zero5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 38), !dbg !51
  store float 0.000000e+00, float* %zero, align 4, !dbg !54
  %10 = bitcast i32* %i to i8*, !dbg !55
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #4, !dbg !55
  call void @llvm.dbg.declare(metadata i32* %i, metadata !56, metadata !DIExpression()), !dbg !57
  %11 = bitcast i32* %j to i8*, !dbg !58
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #4, !dbg !58
  call void @llvm.dbg.declare(metadata i32* %j, metadata !59, metadata !DIExpression()), !dbg !60
  %12 = load i32, i32* %n, align 4, !dbg !61
  %13 = zext i32 %12 to i64, !dbg !62
  %14 = call i8* @llvm.stacksave(), !dbg !62
  store i8* %14, i8** %saved_stack, align 8, !dbg !62
  %vla = alloca float, i64 %13, align 4, !dbg !62
  call void @llvm.dbg.declare(metadata float* %vla, metadata !63, metadata !DIExpression()), !dbg !67
  %vla6 = bitcast float* %vla to i8*, !dbg !62
  call void @llvm.var.annotation(i8* %vla6, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 42), !dbg !62
  br label %VITIS_LOOP_43_1, !dbg !62

VITIS_LOOP_43_1:                                  ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !68
  br label %for.cond, !dbg !70

for.cond:                                         ; preds = %for.inc, %VITIS_LOOP_43_1
  %15 = load i32, i32* %i, align 4, !dbg !71
  %cmp = icmp slt i32 %15, 16, !dbg !73
  br i1 %cmp, label %for.body, label %for.end, !dbg !74

for.body:                                         ; preds = %for.cond
  %16 = load float, float* %zero, align 4, !dbg !75
  %17 = load i32, i32* %i, align 4, !dbg !77
  %idxprom = sext i32 %17 to i64, !dbg !78
  %arrayidx = getelementptr inbounds float, float* %vla, i64 %idxprom, !dbg !78
  store float %16, float* %arrayidx, align 4, !dbg !79
  br label %for.inc, !dbg !80

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4, !dbg !81
  %inc = add nsw i32 %18, 1, !dbg !81
  store i32 %inc, i32* %i, align 4, !dbg !81
  br label %for.cond, !dbg !82, !llvm.loop !83

for.end:                                          ; preds = %for.cond
  br label %VITIS_LOOP_47_2, !dbg !84

VITIS_LOOP_47_2:                                  ; preds = %for.end
  store i32 0, i32* %i, align 4, !dbg !86
  br label %for.cond7, !dbg !88

for.cond7:                                        ; preds = %for.inc37, %VITIS_LOOP_47_2
  %19 = load i32, i32* %i, align 4, !dbg !89
  %cmp8 = icmp slt i32 %19, 16, !dbg !91
  br i1 %cmp8, label %for.body9, label %for.end39, !dbg !92

for.body9:                                        ; preds = %for.cond7
  %20 = load float, float* %zero, align 4, !dbg !93
  store float %20, float* %tmp, align 4, !dbg !95
  br label %VITIS_LOOP_52_3, !dbg !96

VITIS_LOOP_52_3:                                  ; preds = %for.body9
  store i32 0, i32* %j, align 4, !dbg !97
  br label %for.cond10, !dbg !99

for.cond10:                                       ; preds = %for.inc19, %VITIS_LOOP_52_3
  %21 = load i32, i32* %j, align 4, !dbg !100
  %cmp11 = icmp slt i32 %21, 16, !dbg !102
  br i1 %cmp11, label %for.body12, label %for.end21, !dbg !103

for.body12:                                       ; preds = %for.cond10
  %22 = load float, float* %tmp, align 4, !dbg !104
  %23 = load float*, float** %As, align 8, !dbg !106
  %24 = load i32, i32* %i, align 4, !dbg !107
  %mul = mul nsw i32 %24, 16, !dbg !108
  %25 = load i32, i32* %j, align 4, !dbg !109
  %add = add nsw i32 %mul, %25, !dbg !110
  %idxprom13 = sext i32 %add to i64, !dbg !106
  %arrayidx14 = getelementptr inbounds float, float* %23, i64 %idxprom13, !dbg !106
  %26 = load float, float* %arrayidx14, align 4, !dbg !106
  %27 = load float*, float** %xs, align 8, !dbg !111
  %28 = load i32, i32* %j, align 4, !dbg !112
  %idxprom15 = sext i32 %28 to i64, !dbg !111
  %arrayidx16 = getelementptr inbounds float, float* %27, i64 %idxprom15, !dbg !111
  %29 = load float, float* %arrayidx16, align 4, !dbg !111
  %mul17 = fmul float %26, %29, !dbg !113
  %add18 = fadd float %22, %mul17, !dbg !114
  store float %add18, float* %tmp, align 4, !dbg !115
  br label %for.inc19, !dbg !116

for.inc19:                                        ; preds = %for.body12
  %30 = load i32, i32* %j, align 4, !dbg !117
  %inc20 = add nsw i32 %30, 1, !dbg !117
  store i32 %inc20, i32* %j, align 4, !dbg !117
  br label %for.cond10, !dbg !118, !llvm.loop !119

for.end21:                                        ; preds = %for.cond10
  br label %VITIS_LOOP_56_4, !dbg !120

VITIS_LOOP_56_4:                                  ; preds = %for.end21
  store i32 0, i32* %j, align 4, !dbg !122
  br label %for.cond22, !dbg !124

for.cond22:                                       ; preds = %for.inc34, %VITIS_LOOP_56_4
  %31 = load i32, i32* %j, align 4, !dbg !125
  %cmp23 = icmp slt i32 %31, 16, !dbg !127
  br i1 %cmp23, label %for.body24, label %for.end36, !dbg !128

for.body24:                                       ; preds = %for.cond22
  %32 = load i32, i32* %j, align 4, !dbg !129
  %idxprom25 = sext i32 %32 to i64, !dbg !131
  %arrayidx26 = getelementptr inbounds float, float* %vla, i64 %idxprom25, !dbg !131
  %33 = load float, float* %arrayidx26, align 4, !dbg !131
  %34 = load float*, float** %As, align 8, !dbg !132
  %35 = load i32, i32* %i, align 4, !dbg !133
  %mul27 = mul nsw i32 %35, 16, !dbg !134
  %36 = load i32, i32* %j, align 4, !dbg !135
  %add28 = add nsw i32 %mul27, %36, !dbg !136
  %idxprom29 = sext i32 %add28 to i64, !dbg !132
  %arrayidx30 = getelementptr inbounds float, float* %34, i64 %idxprom29, !dbg !132
  %37 = load float, float* %arrayidx30, align 4, !dbg !132
  %add31 = fadd float %33, %37, !dbg !137
  %38 = load i32, i32* %j, align 4, !dbg !138
  %idxprom32 = sext i32 %38 to i64, !dbg !139
  %arrayidx33 = getelementptr inbounds float, float* %vla, i64 %idxprom32, !dbg !139
  store float %add31, float* %arrayidx33, align 4, !dbg !140
  br label %for.inc34, !dbg !141

for.inc34:                                        ; preds = %for.body24
  %39 = load i32, i32* %j, align 4, !dbg !142
  %inc35 = add nsw i32 %39, 1, !dbg !142
  store i32 %inc35, i32* %j, align 4, !dbg !142
  br label %for.cond22, !dbg !143, !llvm.loop !144

for.end36:                                        ; preds = %for.cond22
  br label %for.inc37, !dbg !147

for.inc37:                                        ; preds = %for.end36
  %40 = load i32, i32* %i, align 4, !dbg !148
  %inc38 = add nsw i32 %40, 1, !dbg !148
  store i32 %inc38, i32* %i, align 4, !dbg !148
  br label %for.cond7, !dbg !149, !llvm.loop !150

for.end39:                                        ; preds = %for.cond7
  br label %VITIS_LOOP_63_5, !dbg !151

VITIS_LOOP_63_5:                                  ; preds = %for.end39
  store i32 0, i32* %j, align 4, !dbg !153
  br label %for.cond40, !dbg !155

for.cond40:                                       ; preds = %for.inc47, %VITIS_LOOP_63_5
  %41 = load i32, i32* %j, align 4, !dbg !156
  %cmp41 = icmp slt i32 %41, 16, !dbg !158
  br i1 %cmp41, label %for.body42, label %for.end49, !dbg !159

for.body42:                                       ; preds = %for.cond40
  %42 = load i32, i32* %j, align 4, !dbg !160
  %idxprom43 = sext i32 %42 to i64, !dbg !162
  %arrayidx44 = getelementptr inbounds float, float* %vla, i64 %idxprom43, !dbg !162
  %43 = load float, float* %arrayidx44, align 4, !dbg !162
  %44 = load float*, float** %y.addr, align 8, !dbg !163
  %45 = load i32, i32* %j, align 4, !dbg !164
  %idxprom45 = sext i32 %45 to i64, !dbg !163
  %arrayidx46 = getelementptr inbounds float, float* %44, i64 %idxprom45, !dbg !163
  store float %43, float* %arrayidx46, align 4, !dbg !165
  br label %for.inc47, !dbg !166

for.inc47:                                        ; preds = %for.body42
  %46 = load i32, i32* %j, align 4, !dbg !167
  %inc48 = add nsw i32 %46, 1, !dbg !167
  store i32 %inc48, i32* %j, align 4, !dbg !167
  br label %for.cond40, !dbg !168, !llvm.loop !169

for.end49:                                        ; preds = %for.cond40
  %47 = load i8*, i8** %saved_stack, align 8, !dbg !172
  call void @llvm.stackrestore(i8* %47), !dbg !172
  %48 = bitcast i32* %j to i8*, !dbg !172
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %48) #4, !dbg !172
  %49 = bitcast i32* %i to i8*, !dbg !172
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %49) #4, !dbg !172
  %50 = bitcast float* %zero to i8*, !dbg !172
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %50) #4, !dbg !172
  %51 = bitcast float* %tmp to i8*, !dbg !172
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %51) #4, !dbg !172
  %52 = bitcast float** %ys to i8*, !dbg !172
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %52) #4, !dbg !172
  %53 = bitcast float** %xs to i8*, !dbg !172
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %53) #4, !dbg !172
  %54 = bitcast float** %As to i8*, !dbg !172
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %54) #4, !dbg !172
  %55 = bitcast i32* %n to i8*, !dbg !172
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %55) #4, !dbg !172
  %56 = bitcast i32* %m to i8*, !dbg !172
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %56) #4, !dbg !172
  ret void, !dbg !172
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.var.annotation(i8*, i8*, i8*, i32) #4

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #4

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #3

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.top.func"="atax" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { inaccessiblememonly nounwind }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind }
attributes #5 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="0" "xlx.source"="user" }

!llvm.dbg.cu = !{!0}
!llvm.ident = !{!5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5}
!llvm.module.flags = !{!6, !7, !8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/home/bruno/Desktop/benchmarks/atax/proj_atax/solution1/.autopilot/db/atax_taffo.pp.0.c", directory: "/home/bruno/Desktop/benchmarks/atax")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!5 = !{!"clang version 7.0.0 "}
!6 = !{i32 2, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = distinct !DISubprogram(name: "atax", scope: !10, file: !10, line: 24, type: !11, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DIFile(filename: "atax_taffo.c", directory: "/home/bruno/Desktop/benchmarks/atax")
!11 = !DISubroutineType(types: !12)
!12 = !{null, !13, !13, !13}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!14 = !{!15}
!15 = !{!"fpga.top", !"user", !16}
!16 = !DILocation(line: 24, column: 16, scope: !9)
!17 = !DILocalVariable(name: "A", arg: 1, scope: !9, file: !10, line: 24, type: !13)
!18 = !DILocation(line: 24, column: 57, scope: !9)
!19 = !DILocalVariable(name: "x", arg: 2, scope: !9, file: !10, line: 24, type: !13)
!20 = !DILocation(line: 24, column: 67, scope: !9)
!21 = !DILocalVariable(name: "y", arg: 3, scope: !9, file: !10, line: 24, type: !13)
!22 = !DILocation(line: 24, column: 77, scope: !9)
!23 = !DILocation(line: 26, column: 9, scope: !9)
!24 = !DILocation(line: 27, column: 9, scope: !9)
!25 = !DILocation(line: 28, column: 9, scope: !9)
!26 = !DILocation(line: 29, column: 2, scope: !9)
!27 = !DILocalVariable(name: "m", scope: !9, file: !10, line: 29, type: !28)
!28 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!29 = !DILocation(line: 29, column: 6, scope: !9)
!30 = !DILocation(line: 30, column: 5, scope: !9)
!31 = !DILocalVariable(name: "n", scope: !9, file: !10, line: 30, type: !28)
!32 = !DILocation(line: 30, column: 9, scope: !9)
!33 = !DILocation(line: 31, column: 5, scope: !9)
!34 = !DILocalVariable(name: "As", scope: !9, file: !10, line: 31, type: !13)
!35 = !DILocation(line: 31, column: 12, scope: !9)
!36 = !DILocation(line: 32, column: 10, scope: !9)
!37 = !DILocation(line: 32, column: 8, scope: !9)
!38 = !DILocation(line: 33, column: 5, scope: !9)
!39 = !DILocalVariable(name: "xs", scope: !9, file: !10, line: 33, type: !13)
!40 = !DILocation(line: 33, column: 12, scope: !9)
!41 = !DILocation(line: 34, column: 10, scope: !9)
!42 = !DILocation(line: 34, column: 8, scope: !9)
!43 = !DILocation(line: 35, column: 5, scope: !9)
!44 = !DILocalVariable(name: "ys", scope: !9, file: !10, line: 35, type: !13)
!45 = !DILocation(line: 35, column: 12, scope: !9)
!46 = !DILocation(line: 36, column: 10, scope: !9)
!47 = !DILocation(line: 36, column: 8, scope: !9)
!48 = !DILocation(line: 37, column: 5, scope: !9)
!49 = !DILocalVariable(name: "tmp", scope: !9, file: !10, line: 37, type: !4)
!50 = !DILocation(line: 37, column: 11, scope: !9)
!51 = !DILocation(line: 38, column: 5, scope: !9)
!52 = !DILocalVariable(name: "zero", scope: !9, file: !10, line: 38, type: !4)
!53 = !DILocation(line: 38, column: 49, scope: !9)
!54 = !DILocation(line: 39, column: 10, scope: !9)
!55 = !DILocation(line: 40, column: 5, scope: !9)
!56 = !DILocalVariable(name: "i", scope: !9, file: !10, line: 40, type: !28)
!57 = !DILocation(line: 40, column: 9, scope: !9)
!58 = !DILocation(line: 41, column: 5, scope: !9)
!59 = !DILocalVariable(name: "j", scope: !9, file: !10, line: 41, type: !28)
!60 = !DILocation(line: 41, column: 9, scope: !9)
!61 = !DILocation(line: 42, column: 18, scope: !9)
!62 = !DILocation(line: 42, column: 5, scope: !9)
!63 = !DILocalVariable(name: "y_true", scope: !9, file: !10, line: 42, type: !64)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: -1)
!67 = !DILocation(line: 42, column: 11, scope: !9)
!68 = !DILocation(line: 43, column: 29, scope: !69)
!69 = distinct !DILexicalBlock(scope: !9, file: !10, line: 43, column: 22)
!70 = !DILocation(line: 43, column: 27, scope: !69)
!71 = !DILocation(line: 43, column: 34, scope: !72)
!72 = distinct !DILexicalBlock(scope: !69, file: !10, line: 43, column: 22)
!73 = !DILocation(line: 43, column: 36, scope: !72)
!74 = !DILocation(line: 43, column: 22, scope: !69)
!75 = !DILocation(line: 44, column: 21, scope: !76)
!76 = distinct !DILexicalBlock(scope: !72, file: !10, line: 43, column: 46)
!77 = !DILocation(line: 44, column: 16, scope: !76)
!78 = !DILocation(line: 44, column: 9, scope: !76)
!79 = !DILocation(line: 44, column: 19, scope: !76)
!80 = !DILocation(line: 45, column: 5, scope: !76)
!81 = !DILocation(line: 43, column: 43, scope: !72)
!82 = !DILocation(line: 43, column: 22, scope: !72)
!83 = distinct !{!83, !74, !84, !85}
!84 = !DILocation(line: 45, column: 5, scope: !69)
!85 = !{!"llvm.loop.name", !"VITIS_LOOP_43_1"}
!86 = !DILocation(line: 47, column: 29, scope: !87)
!87 = distinct !DILexicalBlock(scope: !9, file: !10, line: 47, column: 22)
!88 = !DILocation(line: 47, column: 27, scope: !87)
!89 = !DILocation(line: 47, column: 34, scope: !90)
!90 = distinct !DILexicalBlock(scope: !87, file: !10, line: 47, column: 22)
!91 = !DILocation(line: 47, column: 36, scope: !90)
!92 = !DILocation(line: 47, column: 22, scope: !87)
!93 = !DILocation(line: 50, column: 13, scope: !94)
!94 = distinct !DILexicalBlock(scope: !90, file: !10, line: 48, column: 5)
!95 = !DILocation(line: 50, column: 11, scope: !94)
!96 = !DILocation(line: 50, column: 7, scope: !94)
!97 = !DILocation(line: 52, column: 31, scope: !98)
!98 = distinct !DILexicalBlock(scope: !94, file: !10, line: 52, column: 24)
!99 = !DILocation(line: 52, column: 29, scope: !98)
!100 = !DILocation(line: 52, column: 36, scope: !101)
!101 = distinct !DILexicalBlock(scope: !98, file: !10, line: 52, column: 24)
!102 = !DILocation(line: 52, column: 38, scope: !101)
!103 = !DILocation(line: 52, column: 24, scope: !98)
!104 = !DILocation(line: 54, column: 15, scope: !105)
!105 = distinct !DILexicalBlock(scope: !101, file: !10, line: 52, column: 48)
!106 = !DILocation(line: 54, column: 21, scope: !105)
!107 = !DILocation(line: 54, column: 24, scope: !105)
!108 = !DILocation(line: 54, column: 25, scope: !105)
!109 = !DILocation(line: 54, column: 30, scope: !105)
!110 = !DILocation(line: 54, column: 29, scope: !105)
!111 = !DILocation(line: 54, column: 35, scope: !105)
!112 = !DILocation(line: 54, column: 38, scope: !105)
!113 = !DILocation(line: 54, column: 33, scope: !105)
!114 = !DILocation(line: 54, column: 19, scope: !105)
!115 = !DILocation(line: 54, column: 13, scope: !105)
!116 = !DILocation(line: 55, column: 7, scope: !105)
!117 = !DILocation(line: 52, column: 45, scope: !101)
!118 = !DILocation(line: 52, column: 24, scope: !101)
!119 = distinct !{!119, !103, !120, !121}
!120 = !DILocation(line: 55, column: 7, scope: !98)
!121 = !{!"llvm.loop.name", !"VITIS_LOOP_52_3"}
!122 = !DILocation(line: 56, column: 31, scope: !123)
!123 = distinct !DILexicalBlock(scope: !94, file: !10, line: 56, column: 24)
!124 = !DILocation(line: 56, column: 29, scope: !123)
!125 = !DILocation(line: 56, column: 36, scope: !126)
!126 = distinct !DILexicalBlock(scope: !123, file: !10, line: 56, column: 24)
!127 = !DILocation(line: 56, column: 38, scope: !126)
!128 = !DILocation(line: 56, column: 24, scope: !123)
!129 = !DILocation(line: 59, column: 28, scope: !130)
!130 = distinct !DILexicalBlock(scope: !126, file: !10, line: 56, column: 48)
!131 = !DILocation(line: 59, column: 21, scope: !130)
!132 = !DILocation(line: 59, column: 33, scope: !130)
!133 = !DILocation(line: 59, column: 36, scope: !130)
!134 = !DILocation(line: 59, column: 37, scope: !130)
!135 = !DILocation(line: 59, column: 42, scope: !130)
!136 = !DILocation(line: 59, column: 41, scope: !130)
!137 = !DILocation(line: 59, column: 31, scope: !130)
!138 = !DILocation(line: 59, column: 16, scope: !130)
!139 = !DILocation(line: 59, column: 9, scope: !130)
!140 = !DILocation(line: 59, column: 19, scope: !130)
!141 = !DILocation(line: 60, column: 7, scope: !130)
!142 = !DILocation(line: 56, column: 45, scope: !126)
!143 = !DILocation(line: 56, column: 24, scope: !126)
!144 = distinct !{!144, !128, !145, !146}
!145 = !DILocation(line: 60, column: 7, scope: !123)
!146 = !{!"llvm.loop.name", !"VITIS_LOOP_56_4"}
!147 = !DILocation(line: 61, column: 5, scope: !94)
!148 = !DILocation(line: 47, column: 43, scope: !90)
!149 = !DILocation(line: 47, column: 22, scope: !90)
!150 = distinct !{!150, !92, !151, !152}
!151 = !DILocation(line: 61, column: 5, scope: !87)
!152 = !{!"llvm.loop.name", !"VITIS_LOOP_47_2"}
!153 = !DILocation(line: 63, column: 29, scope: !154)
!154 = distinct !DILexicalBlock(scope: !9, file: !10, line: 63, column: 22)
!155 = !DILocation(line: 63, column: 27, scope: !154)
!156 = !DILocation(line: 63, column: 34, scope: !157)
!157 = distinct !DILexicalBlock(scope: !154, file: !10, line: 63, column: 22)
!158 = !DILocation(line: 63, column: 36, scope: !157)
!159 = !DILocation(line: 63, column: 22, scope: !154)
!160 = !DILocation(line: 64, column: 30, scope: !161)
!161 = distinct !DILexicalBlock(scope: !157, file: !10, line: 63, column: 46)
!162 = !DILocation(line: 64, column: 23, scope: !161)
!163 = !DILocation(line: 64, column: 9, scope: !161)
!164 = !DILocation(line: 64, column: 11, scope: !161)
!165 = !DILocation(line: 64, column: 14, scope: !161)
!166 = !DILocation(line: 65, column: 7, scope: !161)
!167 = !DILocation(line: 63, column: 43, scope: !157)
!168 = !DILocation(line: 63, column: 22, scope: !157)
!169 = distinct !{!169, !159, !170, !171}
!170 = !DILocation(line: 65, column: 7, scope: !154)
!171 = !{!"llvm.loop.name", !"VITIS_LOOP_63_5"}
!172 = !DILocation(line: 66, column: 1, scope: !9)
