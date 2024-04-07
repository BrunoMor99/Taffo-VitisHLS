; ModuleID = '/home/bruno/Desktop/benchmarks/atax/intermediate/output.1.magiclangtmp.ll'
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
define void @atax(float* %A, float* %x, float* %y) #0 !dbg !9 !fpga.function.pragma !14 !taffo.start !17 !taffo.funinfo !18 {
entry:
  %A.addr = alloca float*, align 8
  %x.addr = alloca float*, align 8
  %y.addr = alloca float*, align 8
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %As = alloca float*, align 8, !taffo.target !19, !taffo.info !20
  %xs = alloca float*, align 8, !taffo.target !22, !taffo.info !20
  %ys = alloca float*, align 8, !taffo.target !23, !taffo.info !20
  %tmp = alloca float, align 4, !taffo.info !20
  %zero = alloca float, align 4, !taffo.info !24
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  store float* %A, float** %A.addr, align 8
  call void @llvm.dbg.declare(metadata float** %A.addr, metadata !25, metadata !DIExpression()), !dbg !26
  store float* %x, float** %x.addr, align 8
  call void @llvm.dbg.declare(metadata float** %x.addr, metadata !27, metadata !DIExpression()), !dbg !28
  store float* %y, float** %y.addr, align 8
  call void @llvm.dbg.declare(metadata float** %y.addr, metadata !29, metadata !DIExpression()), !dbg !30
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %A, [0 x i8] zeroinitializer, i64 256, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !31
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %x, [0 x i8] zeroinitializer, i64 16, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !32
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %y, [0 x i8] zeroinitializer, i64 16, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !33
  %0 = bitcast i32* %m to i8*, !dbg !34
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !34
  call void @llvm.dbg.declare(metadata i32* %m, metadata !35, metadata !DIExpression()), !dbg !37
  store i32 16, i32* %m, align 4, !dbg !37
  %1 = bitcast i32* %n to i8*, !dbg !38
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !38
  call void @llvm.dbg.declare(metadata i32* %n, metadata !39, metadata !DIExpression()), !dbg !40
  store i32 16, i32* %n, align 4, !dbg !40
  %2 = bitcast float** %As to i8*, !dbg !41, !taffo.target !19, !taffo.info !24
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #4, !dbg !41, !taffo.target !19, !taffo.info !24
  call void @llvm.dbg.declare(metadata float** %As, metadata !42, metadata !DIExpression()), !dbg !43
  %As1 = bitcast float** %As to i8*, !dbg !41, !taffo.target !19, !taffo.info !24
  %3 = load float*, float** %A.addr, align 8, !dbg !44
  store float* %3, float** %As, align 8, !dbg !45, !taffo.target !19, !taffo.info !24
  %4 = bitcast float** %xs to i8*, !dbg !46, !taffo.target !22, !taffo.info !24
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #4, !dbg !46, !taffo.target !22, !taffo.info !24
  call void @llvm.dbg.declare(metadata float** %xs, metadata !47, metadata !DIExpression()), !dbg !48
  %xs2 = bitcast float** %xs to i8*, !dbg !46, !taffo.target !22, !taffo.info !24
  %5 = load float*, float** %x.addr, align 8, !dbg !49
  store float* %5, float** %xs, align 8, !dbg !50, !taffo.target !22, !taffo.info !24
  %6 = bitcast float** %ys to i8*, !dbg !51, !taffo.target !23, !taffo.info !24
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %6) #4, !dbg !51, !taffo.target !23, !taffo.info !24
  call void @llvm.dbg.declare(metadata float** %ys, metadata !52, metadata !DIExpression()), !dbg !53
  %ys3 = bitcast float** %ys to i8*, !dbg !51, !taffo.target !23, !taffo.info !24
  %7 = load float*, float** %y.addr, align 8, !dbg !54
  store float* %7, float** %ys, align 8, !dbg !55, !taffo.target !23, !taffo.info !24
  %8 = bitcast float* %tmp to i8*, !dbg !56, !taffo.info !24
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4, !dbg !56, !taffo.info !24
  call void @llvm.dbg.declare(metadata float* %tmp, metadata !57, metadata !DIExpression()), !dbg !58
  %tmp4 = bitcast float* %tmp to i8*, !dbg !56, !taffo.info !24
  %9 = bitcast float* %zero to i8*, !dbg !59, !taffo.info !24
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #4, !dbg !59, !taffo.info !24
  call void @llvm.dbg.declare(metadata float* %zero, metadata !60, metadata !DIExpression()), !dbg !61
  %zero5 = bitcast float* %zero to i8*, !dbg !59, !taffo.info !24
  store float 0.000000e+00, float* %zero, align 4, !dbg !62, !taffo.info !24
  %10 = bitcast i32* %i to i8*, !dbg !63
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #4, !dbg !63
  call void @llvm.dbg.declare(metadata i32* %i, metadata !64, metadata !DIExpression()), !dbg !65
  %11 = bitcast i32* %j to i8*, !dbg !66
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #4, !dbg !66
  call void @llvm.dbg.declare(metadata i32* %j, metadata !67, metadata !DIExpression()), !dbg !68
  %12 = load i32, i32* %n, align 4, !dbg !69
  %13 = zext i32 %12 to i64, !dbg !70
  %14 = call i8* @llvm.stacksave(), !dbg !70
  store i8* %14, i8** %saved_stack, align 8, !dbg !70
  %vla = alloca float, i64 %13, align 4, !dbg !70, !taffo.target !71, !taffo.info !20
  call void @llvm.dbg.declare(metadata float* %vla, metadata !72, metadata !DIExpression()), !dbg !76
  %vla6 = bitcast float* %vla to i8*, !dbg !70, !taffo.target !71, !taffo.info !24
  br label %VITIS_LOOP_43_1, !dbg !70

VITIS_LOOP_43_1:                                  ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !77
  br label %for.cond, !dbg !79

for.cond:                                         ; preds = %for.inc, %VITIS_LOOP_43_1
  %15 = load i32, i32* %i, align 4, !dbg !80
  %cmp = icmp slt i32 %15, 16, !dbg !82
  br i1 %cmp, label %for.body, label %for.end, !dbg !83

for.body:                                         ; preds = %for.cond
  %16 = load float, float* %zero, align 4, !dbg !84, !taffo.info !24
  %17 = load i32, i32* %i, align 4, !dbg !86
  %idxprom = sext i32 %17 to i64, !dbg !87
  %arrayidx = getelementptr inbounds float, float* %vla, i64 %idxprom, !dbg !87, !taffo.target !71, !taffo.info !24
  store float %16, float* %arrayidx, align 4, !dbg !88, !taffo.info !24
  br label %for.inc, !dbg !89

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4, !dbg !90
  %inc = add nsw i32 %18, 1, !dbg !90
  store i32 %inc, i32* %i, align 4, !dbg !90
  br label %for.cond, !dbg !91, !llvm.loop !92

for.end:                                          ; preds = %for.cond
  br label %VITIS_LOOP_47_2, !dbg !93

VITIS_LOOP_47_2:                                  ; preds = %for.end
  store i32 0, i32* %i, align 4, !dbg !95
  br label %for.cond7, !dbg !97

for.cond7:                                        ; preds = %for.inc37, %VITIS_LOOP_47_2
  %19 = load i32, i32* %i, align 4, !dbg !98
  %cmp8 = icmp slt i32 %19, 16, !dbg !100
  br i1 %cmp8, label %for.body9, label %for.end39, !dbg !101

for.body9:                                        ; preds = %for.cond7
  %20 = load float, float* %zero, align 4, !dbg !102, !taffo.info !24
  store float %20, float* %tmp, align 4, !dbg !104, !taffo.info !24
  br label %VITIS_LOOP_52_3, !dbg !105

VITIS_LOOP_52_3:                                  ; preds = %for.body9
  store i32 0, i32* %j, align 4, !dbg !106
  br label %for.cond10, !dbg !108

for.cond10:                                       ; preds = %for.inc19, %VITIS_LOOP_52_3
  %21 = load i32, i32* %j, align 4, !dbg !109
  %cmp11 = icmp slt i32 %21, 16, !dbg !111
  br i1 %cmp11, label %for.body12, label %for.end21, !dbg !112

for.body12:                                       ; preds = %for.cond10
  %22 = load float, float* %tmp, align 4, !dbg !113, !taffo.info !24
  %23 = load float*, float** %As, align 8, !dbg !115, !taffo.target !19, !taffo.info !24
  %24 = load i32, i32* %i, align 4, !dbg !116
  %mul = mul nsw i32 %24, 16, !dbg !117
  %25 = load i32, i32* %j, align 4, !dbg !118
  %add = add nsw i32 %mul, %25, !dbg !119
  %idxprom13 = sext i32 %add to i64, !dbg !115
  %arrayidx14 = getelementptr inbounds float, float* %23, i64 %idxprom13, !dbg !115, !taffo.target !19, !taffo.info !24
  %26 = load float, float* %arrayidx14, align 4, !dbg !115, !taffo.target !19, !taffo.info !24
  %27 = load float*, float** %xs, align 8, !dbg !120, !taffo.target !22, !taffo.info !24
  %28 = load i32, i32* %j, align 4, !dbg !121
  %idxprom15 = sext i32 %28 to i64, !dbg !120
  %arrayidx16 = getelementptr inbounds float, float* %27, i64 %idxprom15, !dbg !120, !taffo.target !22, !taffo.info !24
  %29 = load float, float* %arrayidx16, align 4, !dbg !120, !taffo.target !22, !taffo.info !24
  %mul17 = fmul float %26, %29, !dbg !122, !taffo.target !19, !taffo.info !24
  %add18 = fadd float %22, %mul17, !dbg !123, !taffo.info !24
  store float %add18, float* %tmp, align 4, !dbg !124, !taffo.info !24
  br label %for.inc19, !dbg !125

for.inc19:                                        ; preds = %for.body12
  %30 = load i32, i32* %j, align 4, !dbg !126
  %inc20 = add nsw i32 %30, 1, !dbg !126
  store i32 %inc20, i32* %j, align 4, !dbg !126
  br label %for.cond10, !dbg !127, !llvm.loop !128

for.end21:                                        ; preds = %for.cond10
  br label %VITIS_LOOP_56_4, !dbg !129

VITIS_LOOP_56_4:                                  ; preds = %for.end21
  store i32 0, i32* %j, align 4, !dbg !131
  br label %for.cond22, !dbg !133

for.cond22:                                       ; preds = %for.inc34, %VITIS_LOOP_56_4
  %31 = load i32, i32* %j, align 4, !dbg !134
  %cmp23 = icmp slt i32 %31, 16, !dbg !136
  br i1 %cmp23, label %for.body24, label %for.end36, !dbg !137

for.body24:                                       ; preds = %for.cond22
  %32 = load i32, i32* %j, align 4, !dbg !138
  %idxprom25 = sext i32 %32 to i64, !dbg !140
  %arrayidx26 = getelementptr inbounds float, float* %vla, i64 %idxprom25, !dbg !140, !taffo.target !71, !taffo.info !24
  %33 = load float, float* %arrayidx26, align 4, !dbg !140, !taffo.target !71, !taffo.info !24
  %34 = load float*, float** %As, align 8, !dbg !141, !taffo.target !19, !taffo.info !24
  %35 = load i32, i32* %i, align 4, !dbg !142
  %mul27 = mul nsw i32 %35, 16, !dbg !143
  %36 = load i32, i32* %j, align 4, !dbg !144
  %add28 = add nsw i32 %mul27, %36, !dbg !145
  %idxprom29 = sext i32 %add28 to i64, !dbg !141
  %arrayidx30 = getelementptr inbounds float, float* %34, i64 %idxprom29, !dbg !141, !taffo.target !19, !taffo.info !24
  %37 = load float, float* %arrayidx30, align 4, !dbg !141, !taffo.target !19, !taffo.info !24
  %add31 = fadd float %33, %37, !dbg !146, !taffo.target !71, !taffo.info !24
  %38 = load i32, i32* %j, align 4, !dbg !147
  %idxprom32 = sext i32 %38 to i64, !dbg !148
  %arrayidx33 = getelementptr inbounds float, float* %vla, i64 %idxprom32, !dbg !148, !taffo.target !71, !taffo.info !24
  store float %add31, float* %arrayidx33, align 4, !dbg !149, !taffo.target !71, !taffo.info !24
  br label %for.inc34, !dbg !150

for.inc34:                                        ; preds = %for.body24
  %39 = load i32, i32* %j, align 4, !dbg !151
  %inc35 = add nsw i32 %39, 1, !dbg !151
  store i32 %inc35, i32* %j, align 4, !dbg !151
  br label %for.cond22, !dbg !152, !llvm.loop !153

for.end36:                                        ; preds = %for.cond22
  br label %for.inc37, !dbg !156

for.inc37:                                        ; preds = %for.end36
  %40 = load i32, i32* %i, align 4, !dbg !157
  %inc38 = add nsw i32 %40, 1, !dbg !157
  store i32 %inc38, i32* %i, align 4, !dbg !157
  br label %for.cond7, !dbg !158, !llvm.loop !159

for.end39:                                        ; preds = %for.cond7
  br label %VITIS_LOOP_63_5, !dbg !160

VITIS_LOOP_63_5:                                  ; preds = %for.end39
  store i32 0, i32* %j, align 4, !dbg !162
  br label %for.cond40, !dbg !164

for.cond40:                                       ; preds = %for.inc47, %VITIS_LOOP_63_5
  %41 = load i32, i32* %j, align 4, !dbg !165
  %cmp41 = icmp slt i32 %41, 16, !dbg !167
  br i1 %cmp41, label %for.body42, label %for.end49, !dbg !168

for.body42:                                       ; preds = %for.cond40
  %42 = load i32, i32* %j, align 4, !dbg !169
  %idxprom43 = sext i32 %42 to i64, !dbg !171
  %arrayidx44 = getelementptr inbounds float, float* %vla, i64 %idxprom43, !dbg !171, !taffo.target !71, !taffo.info !24
  %43 = load float, float* %arrayidx44, align 4, !dbg !171, !taffo.target !71, !taffo.info !24
  %44 = load float*, float** %y.addr, align 8, !dbg !172
  %45 = load i32, i32* %j, align 4, !dbg !173
  %idxprom45 = sext i32 %45 to i64, !dbg !172
  %arrayidx46 = getelementptr inbounds float, float* %44, i64 %idxprom45, !dbg !172
  store float %43, float* %arrayidx46, align 4, !dbg !174, !taffo.target !71, !taffo.info !24
  br label %for.inc47, !dbg !175

for.inc47:                                        ; preds = %for.body42
  %46 = load i32, i32* %j, align 4, !dbg !176
  %inc48 = add nsw i32 %46, 1, !dbg !176
  store i32 %inc48, i32* %j, align 4, !dbg !176
  br label %for.cond40, !dbg !177, !llvm.loop !178

for.end49:                                        ; preds = %for.cond40
  %47 = load i8*, i8** %saved_stack, align 8, !dbg !181
  call void @llvm.stackrestore(i8* %47), !dbg !181
  %48 = bitcast i32* %j to i8*, !dbg !181
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %48) #4, !dbg !181
  %49 = bitcast i32* %i to i8*, !dbg !181
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %49) #4, !dbg !181
  %50 = bitcast float* %zero to i8*, !dbg !181, !taffo.info !24
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %50) #4, !dbg !181, !taffo.info !24
  %51 = bitcast float* %tmp to i8*, !dbg !181, !taffo.info !24
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %51) #4, !dbg !181, !taffo.info !24
  %52 = bitcast float** %ys to i8*, !dbg !181, !taffo.target !23, !taffo.info !24
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %52) #4, !dbg !181, !taffo.target !23, !taffo.info !24
  %53 = bitcast float** %xs to i8*, !dbg !181, !taffo.target !22, !taffo.info !24
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %53) #4, !dbg !181, !taffo.target !22, !taffo.info !24
  %54 = bitcast float** %As to i8*, !dbg !181, !taffo.target !19, !taffo.info !24
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %54) #4, !dbg !181, !taffo.target !19, !taffo.info !24
  %55 = bitcast i32* %n to i8*, !dbg !181
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %55) #4, !dbg !181
  %56 = bitcast i32* %m to i8*, !dbg !181
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %56) #4, !dbg !181
  ret void, !dbg !181
}

; Function Attrs: nounwind readnone speculatable
declare !taffo.funinfo !18 void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: inaccessiblememonly nounwind
declare !taffo.funinfo !2 void @llvm.sideeffect() #2

; Function Attrs: argmemonly nounwind
declare !taffo.funinfo !182 void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare !taffo.funinfo !183 void @llvm.var.annotation(i8*, i8*, i8*, i32) #4

; Function Attrs: nounwind
declare !taffo.funinfo !2 i8* @llvm.stacksave() #4

; Function Attrs: nounwind
declare !taffo.funinfo !184 void @llvm.stackrestore(i8*) #4

; Function Attrs: argmemonly nounwind
declare !taffo.funinfo !182 void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #3

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
!17 = !{i1 true}
!18 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!19 = !{!"As"}
!20 = !{i1 false, !21, i1 false, i1 true}
!21 = !{double 1.000000e+00, double 4.000000e+02}
!22 = !{!"xs"}
!23 = !{!"ys"}
!24 = !{i1 false, i1 false, i1 false, i1 true}
!25 = !DILocalVariable(name: "A", arg: 1, scope: !9, file: !10, line: 24, type: !13)
!26 = !DILocation(line: 24, column: 57, scope: !9)
!27 = !DILocalVariable(name: "x", arg: 2, scope: !9, file: !10, line: 24, type: !13)
!28 = !DILocation(line: 24, column: 67, scope: !9)
!29 = !DILocalVariable(name: "y", arg: 3, scope: !9, file: !10, line: 24, type: !13)
!30 = !DILocation(line: 24, column: 77, scope: !9)
!31 = !DILocation(line: 26, column: 9, scope: !9)
!32 = !DILocation(line: 27, column: 9, scope: !9)
!33 = !DILocation(line: 28, column: 9, scope: !9)
!34 = !DILocation(line: 29, column: 2, scope: !9)
!35 = !DILocalVariable(name: "m", scope: !9, file: !10, line: 29, type: !36)
!36 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!37 = !DILocation(line: 29, column: 6, scope: !9)
!38 = !DILocation(line: 30, column: 5, scope: !9)
!39 = !DILocalVariable(name: "n", scope: !9, file: !10, line: 30, type: !36)
!40 = !DILocation(line: 30, column: 9, scope: !9)
!41 = !DILocation(line: 31, column: 5, scope: !9)
!42 = !DILocalVariable(name: "As", scope: !9, file: !10, line: 31, type: !13)
!43 = !DILocation(line: 31, column: 12, scope: !9)
!44 = !DILocation(line: 32, column: 10, scope: !9)
!45 = !DILocation(line: 32, column: 8, scope: !9)
!46 = !DILocation(line: 33, column: 5, scope: !9)
!47 = !DILocalVariable(name: "xs", scope: !9, file: !10, line: 33, type: !13)
!48 = !DILocation(line: 33, column: 12, scope: !9)
!49 = !DILocation(line: 34, column: 10, scope: !9)
!50 = !DILocation(line: 34, column: 8, scope: !9)
!51 = !DILocation(line: 35, column: 5, scope: !9)
!52 = !DILocalVariable(name: "ys", scope: !9, file: !10, line: 35, type: !13)
!53 = !DILocation(line: 35, column: 12, scope: !9)
!54 = !DILocation(line: 36, column: 10, scope: !9)
!55 = !DILocation(line: 36, column: 8, scope: !9)
!56 = !DILocation(line: 37, column: 5, scope: !9)
!57 = !DILocalVariable(name: "tmp", scope: !9, file: !10, line: 37, type: !4)
!58 = !DILocation(line: 37, column: 11, scope: !9)
!59 = !DILocation(line: 38, column: 5, scope: !9)
!60 = !DILocalVariable(name: "zero", scope: !9, file: !10, line: 38, type: !4)
!61 = !DILocation(line: 38, column: 49, scope: !9)
!62 = !DILocation(line: 39, column: 10, scope: !9)
!63 = !DILocation(line: 40, column: 5, scope: !9)
!64 = !DILocalVariable(name: "i", scope: !9, file: !10, line: 40, type: !36)
!65 = !DILocation(line: 40, column: 9, scope: !9)
!66 = !DILocation(line: 41, column: 5, scope: !9)
!67 = !DILocalVariable(name: "j", scope: !9, file: !10, line: 41, type: !36)
!68 = !DILocation(line: 41, column: 9, scope: !9)
!69 = !DILocation(line: 42, column: 18, scope: !9)
!70 = !DILocation(line: 42, column: 5, scope: !9)
!71 = !{!"y_true"}
!72 = !DILocalVariable(name: "y_true", scope: !9, file: !10, line: 42, type: !73)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !74)
!74 = !{!75}
!75 = !DISubrange(count: -1)
!76 = !DILocation(line: 42, column: 11, scope: !9)
!77 = !DILocation(line: 43, column: 29, scope: !78)
!78 = distinct !DILexicalBlock(scope: !9, file: !10, line: 43, column: 22)
!79 = !DILocation(line: 43, column: 27, scope: !78)
!80 = !DILocation(line: 43, column: 34, scope: !81)
!81 = distinct !DILexicalBlock(scope: !78, file: !10, line: 43, column: 22)
!82 = !DILocation(line: 43, column: 36, scope: !81)
!83 = !DILocation(line: 43, column: 22, scope: !78)
!84 = !DILocation(line: 44, column: 21, scope: !85)
!85 = distinct !DILexicalBlock(scope: !81, file: !10, line: 43, column: 46)
!86 = !DILocation(line: 44, column: 16, scope: !85)
!87 = !DILocation(line: 44, column: 9, scope: !85)
!88 = !DILocation(line: 44, column: 19, scope: !85)
!89 = !DILocation(line: 45, column: 5, scope: !85)
!90 = !DILocation(line: 43, column: 43, scope: !81)
!91 = !DILocation(line: 43, column: 22, scope: !81)
!92 = distinct !{!92, !83, !93, !94}
!93 = !DILocation(line: 45, column: 5, scope: !78)
!94 = !{!"llvm.loop.name", !"VITIS_LOOP_43_1"}
!95 = !DILocation(line: 47, column: 29, scope: !96)
!96 = distinct !DILexicalBlock(scope: !9, file: !10, line: 47, column: 22)
!97 = !DILocation(line: 47, column: 27, scope: !96)
!98 = !DILocation(line: 47, column: 34, scope: !99)
!99 = distinct !DILexicalBlock(scope: !96, file: !10, line: 47, column: 22)
!100 = !DILocation(line: 47, column: 36, scope: !99)
!101 = !DILocation(line: 47, column: 22, scope: !96)
!102 = !DILocation(line: 50, column: 13, scope: !103)
!103 = distinct !DILexicalBlock(scope: !99, file: !10, line: 48, column: 5)
!104 = !DILocation(line: 50, column: 11, scope: !103)
!105 = !DILocation(line: 50, column: 7, scope: !103)
!106 = !DILocation(line: 52, column: 31, scope: !107)
!107 = distinct !DILexicalBlock(scope: !103, file: !10, line: 52, column: 24)
!108 = !DILocation(line: 52, column: 29, scope: !107)
!109 = !DILocation(line: 52, column: 36, scope: !110)
!110 = distinct !DILexicalBlock(scope: !107, file: !10, line: 52, column: 24)
!111 = !DILocation(line: 52, column: 38, scope: !110)
!112 = !DILocation(line: 52, column: 24, scope: !107)
!113 = !DILocation(line: 54, column: 15, scope: !114)
!114 = distinct !DILexicalBlock(scope: !110, file: !10, line: 52, column: 48)
!115 = !DILocation(line: 54, column: 21, scope: !114)
!116 = !DILocation(line: 54, column: 24, scope: !114)
!117 = !DILocation(line: 54, column: 25, scope: !114)
!118 = !DILocation(line: 54, column: 30, scope: !114)
!119 = !DILocation(line: 54, column: 29, scope: !114)
!120 = !DILocation(line: 54, column: 35, scope: !114)
!121 = !DILocation(line: 54, column: 38, scope: !114)
!122 = !DILocation(line: 54, column: 33, scope: !114)
!123 = !DILocation(line: 54, column: 19, scope: !114)
!124 = !DILocation(line: 54, column: 13, scope: !114)
!125 = !DILocation(line: 55, column: 7, scope: !114)
!126 = !DILocation(line: 52, column: 45, scope: !110)
!127 = !DILocation(line: 52, column: 24, scope: !110)
!128 = distinct !{!128, !112, !129, !130}
!129 = !DILocation(line: 55, column: 7, scope: !107)
!130 = !{!"llvm.loop.name", !"VITIS_LOOP_52_3"}
!131 = !DILocation(line: 56, column: 31, scope: !132)
!132 = distinct !DILexicalBlock(scope: !103, file: !10, line: 56, column: 24)
!133 = !DILocation(line: 56, column: 29, scope: !132)
!134 = !DILocation(line: 56, column: 36, scope: !135)
!135 = distinct !DILexicalBlock(scope: !132, file: !10, line: 56, column: 24)
!136 = !DILocation(line: 56, column: 38, scope: !135)
!137 = !DILocation(line: 56, column: 24, scope: !132)
!138 = !DILocation(line: 59, column: 28, scope: !139)
!139 = distinct !DILexicalBlock(scope: !135, file: !10, line: 56, column: 48)
!140 = !DILocation(line: 59, column: 21, scope: !139)
!141 = !DILocation(line: 59, column: 33, scope: !139)
!142 = !DILocation(line: 59, column: 36, scope: !139)
!143 = !DILocation(line: 59, column: 37, scope: !139)
!144 = !DILocation(line: 59, column: 42, scope: !139)
!145 = !DILocation(line: 59, column: 41, scope: !139)
!146 = !DILocation(line: 59, column: 31, scope: !139)
!147 = !DILocation(line: 59, column: 16, scope: !139)
!148 = !DILocation(line: 59, column: 9, scope: !139)
!149 = !DILocation(line: 59, column: 19, scope: !139)
!150 = !DILocation(line: 60, column: 7, scope: !139)
!151 = !DILocation(line: 56, column: 45, scope: !135)
!152 = !DILocation(line: 56, column: 24, scope: !135)
!153 = distinct !{!153, !137, !154, !155}
!154 = !DILocation(line: 60, column: 7, scope: !132)
!155 = !{!"llvm.loop.name", !"VITIS_LOOP_56_4"}
!156 = !DILocation(line: 61, column: 5, scope: !103)
!157 = !DILocation(line: 47, column: 43, scope: !99)
!158 = !DILocation(line: 47, column: 22, scope: !99)
!159 = distinct !{!159, !101, !160, !161}
!160 = !DILocation(line: 61, column: 5, scope: !96)
!161 = !{!"llvm.loop.name", !"VITIS_LOOP_47_2"}
!162 = !DILocation(line: 63, column: 29, scope: !163)
!163 = distinct !DILexicalBlock(scope: !9, file: !10, line: 63, column: 22)
!164 = !DILocation(line: 63, column: 27, scope: !163)
!165 = !DILocation(line: 63, column: 34, scope: !166)
!166 = distinct !DILexicalBlock(scope: !163, file: !10, line: 63, column: 22)
!167 = !DILocation(line: 63, column: 36, scope: !166)
!168 = !DILocation(line: 63, column: 22, scope: !163)
!169 = !DILocation(line: 64, column: 30, scope: !170)
!170 = distinct !DILexicalBlock(scope: !166, file: !10, line: 63, column: 46)
!171 = !DILocation(line: 64, column: 23, scope: !170)
!172 = !DILocation(line: 64, column: 9, scope: !170)
!173 = !DILocation(line: 64, column: 11, scope: !170)
!174 = !DILocation(line: 64, column: 14, scope: !170)
!175 = !DILocation(line: 65, column: 7, scope: !170)
!176 = !DILocation(line: 63, column: 43, scope: !166)
!177 = !DILocation(line: 63, column: 22, scope: !166)
!178 = distinct !{!178, !168, !179, !180}
!179 = !DILocation(line: 65, column: 7, scope: !163)
!180 = !{!"llvm.loop.name", !"VITIS_LOOP_63_5"}
!181 = !DILocation(line: 66, column: 1, scope: !9)
!182 = !{i32 0, i1 false, i32 0, i1 false}
!183 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!184 = !{i32 0, i1 false}
