; ModuleID = '/home/bruno/Desktop/benchmarks/atax/intermediate/output.2.magiclangtmp.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.global_ctors = appending global [0 x { i32, void ()*, i8* }] zeroinitializer, !taffo.structinfo !0
@.str = private unnamed_addr constant [35 x i8] c"target('As') scalar(range(1, 400))\00", section "llvm.metadata", !taffo.info !3
@.str.1 = private unnamed_addr constant [13 x i8] c"atax_taffo.c\00", section "llvm.metadata", !taffo.info !5
@.str.2 = private unnamed_addr constant [35 x i8] c"target('xs') scalar(range(1, 400))\00", section "llvm.metadata", !taffo.info !5
@.str.3 = private unnamed_addr constant [35 x i8] c"target('ys') scalar(range(1, 400))\00", section "llvm.metadata", !taffo.info !7
@.str.4 = private unnamed_addr constant [22 x i8] c"scalar(range(1, 400))\00", section "llvm.metadata", !taffo.info !9
@.str.5 = private unnamed_addr constant [9 x i8] c"scalar()\00", section "llvm.metadata", !taffo.info !9
@.str.6 = private unnamed_addr constant [39 x i8] c"target('y_true') scalar(range(1, 400))\00", section "llvm.metadata", !taffo.info !7

; Function Attrs: nounwind
define void @atax(float* %A, float* %x, float* %y) #0 !dbg !20 !fpga.function.pragma !25 !taffo.start !28 !taffo.funinfo !29 {
entry:
  %A.addr = alloca float*, align 8
  %x.addr = alloca float*, align 8
  %y.addr = alloca float*, align 8, !taffo.info !30
  %m = alloca i32, align 4, !taffo.info !32
  %n = alloca i32, align 4, !taffo.info !32
  %As = alloca float*, align 8, !taffo.target !34, !taffo.info !35
  %xs = alloca float*, align 8, !taffo.target !37, !taffo.info !35
  %ys = alloca float*, align 8, !taffo.target !38, !taffo.info !35
  %tmp = alloca float, align 4, !taffo.info !35
  %zero = alloca float, align 4, !taffo.info !39
  %i = alloca i32, align 4, !taffo.info !30
  %j = alloca i32, align 4, !taffo.info !40
  %saved_stack = alloca i8*, align 8
  store float* %A, float** %A.addr, align 8
  call void @llvm.dbg.declare(metadata float** %A.addr, metadata !42, metadata !DIExpression()), !dbg !43
  store float* %x, float** %x.addr, align 8
  call void @llvm.dbg.declare(metadata float** %x.addr, metadata !44, metadata !DIExpression()), !dbg !45
  store float* %y, float** %y.addr, align 8
  call void @llvm.dbg.declare(metadata float** %y.addr, metadata !46, metadata !DIExpression()), !dbg !47
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %A, [0 x i8] zeroinitializer, i64 256, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !48
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %x, [0 x i8] zeroinitializer, i64 16, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !49
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %y, [0 x i8] zeroinitializer, i64 16, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !50
  %0 = bitcast i32* %m to i8*, !dbg !51
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !51
  call void @llvm.dbg.declare(metadata i32* %m, metadata !52, metadata !DIExpression()), !dbg !54
  store i32 16, i32* %m, align 4, !dbg !54
  %1 = bitcast i32* %n to i8*, !dbg !55
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !55
  call void @llvm.dbg.declare(metadata i32* %n, metadata !56, metadata !DIExpression()), !dbg !57
  store i32 16, i32* %n, align 4, !dbg !57
  %2 = bitcast float** %As to i8*, !dbg !58, !taffo.target !34, !taffo.info !35
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #4, !dbg !58, !taffo.target !34, !taffo.info !59
  call void @llvm.dbg.declare(metadata float** %As, metadata !60, metadata !DIExpression()), !dbg !61
  %As1 = bitcast float** %As to i8*, !dbg !58, !taffo.target !34, !taffo.info !35
  %3 = load float*, float** %A.addr, align 8, !dbg !62
  store float* %3, float** %As, align 8, !dbg !63, !taffo.target !34, !taffo.info !59
  %4 = bitcast float** %xs to i8*, !dbg !64, !taffo.target !37, !taffo.info !35
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #4, !dbg !64, !taffo.target !37, !taffo.info !59
  call void @llvm.dbg.declare(metadata float** %xs, metadata !65, metadata !DIExpression()), !dbg !66
  %xs2 = bitcast float** %xs to i8*, !dbg !64, !taffo.target !37, !taffo.info !35
  %5 = load float*, float** %x.addr, align 8, !dbg !67
  store float* %5, float** %xs, align 8, !dbg !68, !taffo.target !37, !taffo.info !59
  %6 = bitcast float** %ys to i8*, !dbg !69, !taffo.target !38, !taffo.info !35
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %6) #4, !dbg !69, !taffo.target !38, !taffo.info !59
  call void @llvm.dbg.declare(metadata float** %ys, metadata !70, metadata !DIExpression()), !dbg !71
  %ys3 = bitcast float** %ys to i8*, !dbg !69, !taffo.target !38, !taffo.info !35
  %7 = load float*, float** %y.addr, align 8, !dbg !72, !taffo.info !30
  store float* %7, float** %ys, align 8, !dbg !73, !taffo.target !38, !taffo.info !59
  %8 = bitcast float* %tmp to i8*, !dbg !74, !taffo.info !35
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4, !dbg !74, !taffo.info !59
  call void @llvm.dbg.declare(metadata float* %tmp, metadata !75, metadata !DIExpression()), !dbg !76
  %tmp4 = bitcast float* %tmp to i8*, !dbg !74, !taffo.info !35
  %9 = bitcast float* %zero to i8*, !dbg !77, !taffo.info !59
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #4, !dbg !77, !taffo.info !59
  call void @llvm.dbg.declare(metadata float* %zero, metadata !78, metadata !DIExpression()), !dbg !79
  %zero5 = bitcast float* %zero to i8*, !dbg !77, !taffo.info !59
  store float 0.000000e+00, float* %zero, align 4, !dbg !80, !taffo.info !59
  %10 = bitcast i32* %i to i8*, !dbg !81
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #4, !dbg !81
  call void @llvm.dbg.declare(metadata i32* %i, metadata !82, metadata !DIExpression()), !dbg !83
  %11 = bitcast i32* %j to i8*, !dbg !84
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #4, !dbg !84
  call void @llvm.dbg.declare(metadata i32* %j, metadata !85, metadata !DIExpression()), !dbg !86
  %12 = load i32, i32* %n, align 4, !dbg !87, !taffo.info !32
  %13 = zext i32 %12 to i64, !dbg !88, !taffo.info !32
  %14 = call i8* @llvm.stacksave(), !dbg !88
  store i8* %14, i8** %saved_stack, align 8, !dbg !88
  %vla = alloca float, i64 %13, align 4, !dbg !88, !taffo.target !89, !taffo.info !35
  call void @llvm.dbg.declare(metadata float* %vla, metadata !90, metadata !DIExpression()), !dbg !94
  %vla6 = bitcast float* %vla to i8*, !dbg !88, !taffo.target !89, !taffo.info !35
  br label %VITIS_LOOP_43_1, !dbg !88

VITIS_LOOP_43_1:                                  ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !95
  br label %for.cond, !dbg !97

for.cond:                                         ; preds = %for.inc, %VITIS_LOOP_43_1
  %15 = load i32, i32* %i, align 4, !dbg !98, !taffo.info !30
  %cmp = icmp slt i32 %15, 16, !dbg !100, !taffo.info !101
  br i1 %cmp, label %for.body, label %for.end, !dbg !103

for.body:                                         ; preds = %for.cond
  %16 = load float, float* %zero, align 4, !dbg !104, !taffo.info !39
  %17 = load i32, i32* %i, align 4, !dbg !106, !taffo.info !30
  %idxprom = sext i32 %17 to i64, !dbg !107, !taffo.info !1
  %arrayidx = getelementptr inbounds float, float* %vla, i64 %idxprom, !dbg !107, !taffo.target !89, !taffo.info !39
  store float %16, float* %arrayidx, align 4, !dbg !108, !taffo.info !59
  br label %for.inc, !dbg !109

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4, !dbg !110, !taffo.info !30
  %inc = add nsw i32 %18, 1, !dbg !110, !taffo.info !101
  store i32 %inc, i32* %i, align 4, !dbg !110
  br label %for.cond, !dbg !111, !llvm.loop !112

for.end:                                          ; preds = %for.cond
  br label %VITIS_LOOP_47_2, !dbg !113

VITIS_LOOP_47_2:                                  ; preds = %for.end
  store i32 0, i32* %i, align 4, !dbg !115
  br label %for.cond7, !dbg !117

for.cond7:                                        ; preds = %for.inc37, %VITIS_LOOP_47_2
  %19 = load i32, i32* %i, align 4, !dbg !118, !taffo.info !30
  %cmp8 = icmp slt i32 %19, 16, !dbg !120, !taffo.info !101
  br i1 %cmp8, label %for.body9, label %for.end39, !dbg !121

for.body9:                                        ; preds = %for.cond7
  %20 = load float, float* %zero, align 4, !dbg !122, !taffo.info !39
  store float %20, float* %tmp, align 4, !dbg !124, !taffo.info !59
  br label %VITIS_LOOP_52_3, !dbg !125

VITIS_LOOP_52_3:                                  ; preds = %for.body9
  store i32 0, i32* %j, align 4, !dbg !126
  br label %for.cond10, !dbg !128

for.cond10:                                       ; preds = %for.inc19, %VITIS_LOOP_52_3
  %21 = load i32, i32* %j, align 4, !dbg !129, !taffo.info !40
  %cmp11 = icmp slt i32 %21, 16, !dbg !131, !taffo.info !101
  br i1 %cmp11, label %for.body12, label %for.end21, !dbg !132

for.body12:                                       ; preds = %for.cond10
  %22 = load float, float* %tmp, align 4, !dbg !133, !taffo.info !135
  %23 = load float*, float** %As, align 8, !dbg !137, !taffo.target !34, !taffo.info !35
  %24 = load i32, i32* %i, align 4, !dbg !138, !taffo.info !30
  %mul = mul nsw i32 %24, 16, !dbg !139, !taffo.info !140
  %25 = load i32, i32* %j, align 4, !dbg !142, !taffo.info !40
  %add = add nsw i32 %mul, %25, !dbg !143, !taffo.info !140
  %idxprom13 = sext i32 %add to i64, !dbg !137, !taffo.info !140
  %arrayidx14 = getelementptr inbounds float, float* %23, i64 %idxprom13, !dbg !137, !taffo.target !34, !taffo.info !35
  %26 = load float, float* %arrayidx14, align 4, !dbg !137, !taffo.target !34, !taffo.info !135
  %27 = load float*, float** %xs, align 8, !dbg !144, !taffo.target !37, !taffo.info !35
  %28 = load i32, i32* %j, align 4, !dbg !145, !taffo.info !40
  %idxprom15 = sext i32 %28 to i64, !dbg !144, !taffo.info !1
  %arrayidx16 = getelementptr inbounds float, float* %27, i64 %idxprom15, !dbg !144, !taffo.target !37, !taffo.info !35
  %29 = load float, float* %arrayidx16, align 4, !dbg !144, !taffo.target !37, !taffo.info !135
  %mul17 = fmul float %26, %29, !dbg !146, !taffo.target !34, !taffo.info !39
  %add18 = fadd float %22, %mul17, !dbg !147, !taffo.info !135
  store float %add18, float* %tmp, align 4, !dbg !148, !taffo.info !59
  br label %for.inc19, !dbg !149

for.inc19:                                        ; preds = %for.body12
  %30 = load i32, i32* %j, align 4, !dbg !150, !taffo.info !40
  %inc20 = add nsw i32 %30, 1, !dbg !150, !taffo.info !101
  store i32 %inc20, i32* %j, align 4, !dbg !150
  br label %for.cond10, !dbg !151, !llvm.loop !152

for.end21:                                        ; preds = %for.cond10
  br label %VITIS_LOOP_56_4, !dbg !153

VITIS_LOOP_56_4:                                  ; preds = %for.end21
  store i32 0, i32* %j, align 4, !dbg !155
  br label %for.cond22, !dbg !157

for.cond22:                                       ; preds = %for.inc34, %VITIS_LOOP_56_4
  %31 = load i32, i32* %j, align 4, !dbg !158, !taffo.info !40
  %cmp23 = icmp slt i32 %31, 16, !dbg !160, !taffo.info !101
  br i1 %cmp23, label %for.body24, label %for.end36, !dbg !161

for.body24:                                       ; preds = %for.cond22
  %32 = load i32, i32* %j, align 4, !dbg !162, !taffo.info !40
  %idxprom25 = sext i32 %32 to i64, !dbg !164, !taffo.info !165
  %arrayidx26 = getelementptr inbounds float, float* %vla, i64 %idxprom25, !dbg !164, !taffo.target !89, !taffo.info !39
  %33 = load float, float* %arrayidx26, align 4, !dbg !164, !taffo.target !89, !taffo.info !39
  %34 = load float*, float** %As, align 8, !dbg !167, !taffo.target !34, !taffo.info !35
  %35 = load i32, i32* %i, align 4, !dbg !168, !taffo.info !30
  %mul27 = mul nsw i32 %35, 16, !dbg !169, !taffo.info !170
  %36 = load i32, i32* %j, align 4, !dbg !172, !taffo.info !40
  %add28 = add nsw i32 %mul27, %36, !dbg !173, !taffo.info !174
  %idxprom29 = sext i32 %add28 to i64, !dbg !167, !taffo.info !174
  %arrayidx30 = getelementptr inbounds float, float* %34, i64 %idxprom29, !dbg !167, !taffo.target !34, !taffo.info !35
  %37 = load float, float* %arrayidx30, align 4, !dbg !167, !taffo.target !34, !taffo.info !135
  %add31 = fadd float %33, %37, !dbg !176, !taffo.target !89, !taffo.info !39
  %38 = load i32, i32* %j, align 4, !dbg !177, !taffo.info !40
  %idxprom32 = sext i32 %38 to i64, !dbg !178, !taffo.info !165
  %arrayidx33 = getelementptr inbounds float, float* %vla, i64 %idxprom32, !dbg !178, !taffo.target !89, !taffo.info !39
  store float %add31, float* %arrayidx33, align 4, !dbg !179, !taffo.target !89, !taffo.info !59
  br label %for.inc34, !dbg !180

for.inc34:                                        ; preds = %for.body24
  %39 = load i32, i32* %j, align 4, !dbg !181, !taffo.info !40
  %inc35 = add nsw i32 %39, 1, !dbg !181, !taffo.info !182
  store i32 %inc35, i32* %j, align 4, !dbg !181
  br label %for.cond22, !dbg !184, !llvm.loop !185

for.end36:                                        ; preds = %for.cond22
  br label %for.inc37, !dbg !188

for.inc37:                                        ; preds = %for.end36
  %40 = load i32, i32* %i, align 4, !dbg !189, !taffo.info !30
  %inc38 = add nsw i32 %40, 1, !dbg !189, !taffo.info !182
  store i32 %inc38, i32* %i, align 4, !dbg !189
  br label %for.cond7, !dbg !190, !llvm.loop !191

for.end39:                                        ; preds = %for.cond7
  br label %VITIS_LOOP_63_5, !dbg !192

VITIS_LOOP_63_5:                                  ; preds = %for.end39
  store i32 0, i32* %j, align 4, !dbg !194
  br label %for.cond40, !dbg !196

for.cond40:                                       ; preds = %for.inc47, %VITIS_LOOP_63_5
  %41 = load i32, i32* %j, align 4, !dbg !197, !taffo.info !40
  %cmp41 = icmp slt i32 %41, 16, !dbg !199, !taffo.info !101
  br i1 %cmp41, label %for.body42, label %for.end49, !dbg !200

for.body42:                                       ; preds = %for.cond40
  %42 = load i32, i32* %j, align 4, !dbg !201, !taffo.info !40
  %idxprom43 = sext i32 %42 to i64, !dbg !203, !taffo.info !30
  %arrayidx44 = getelementptr inbounds float, float* %vla, i64 %idxprom43, !dbg !203, !taffo.target !89, !taffo.info !39
  %43 = load float, float* %arrayidx44, align 4, !dbg !203, !taffo.target !89, !taffo.info !204
  %44 = load float*, float** %y.addr, align 8, !dbg !205, !taffo.info !30
  %45 = load i32, i32* %j, align 4, !dbg !206, !taffo.info !40
  %idxprom45 = sext i32 %45 to i64, !dbg !205, !taffo.info !30
  %arrayidx46 = getelementptr inbounds float, float* %44, i64 %idxprom45, !dbg !205, !taffo.info !30
  store float %43, float* %arrayidx46, align 4, !dbg !207, !taffo.target !89, !taffo.info !59
  br label %for.inc47, !dbg !208

for.inc47:                                        ; preds = %for.body42
  %46 = load i32, i32* %j, align 4, !dbg !209, !taffo.info !40
  %inc48 = add nsw i32 %46, 1, !dbg !209, !taffo.info !210
  store i32 %inc48, i32* %j, align 4, !dbg !209
  br label %for.cond40, !dbg !212, !llvm.loop !213

for.end49:                                        ; preds = %for.cond40
  %47 = load i8*, i8** %saved_stack, align 8, !dbg !216
  call void @llvm.stackrestore(i8* %47), !dbg !216
  %48 = bitcast i32* %j to i8*, !dbg !216, !taffo.info !40
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %48) #4, !dbg !216
  %49 = bitcast i32* %i to i8*, !dbg !216, !taffo.info !30
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %49) #4, !dbg !216
  %50 = bitcast float* %zero to i8*, !dbg !216, !taffo.info !39
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %50) #4, !dbg !216, !taffo.info !59
  %51 = bitcast float* %tmp to i8*, !dbg !216, !taffo.info !35
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %51) #4, !dbg !216, !taffo.info !59
  %52 = bitcast float** %ys to i8*, !dbg !216, !taffo.target !38, !taffo.info !35
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %52) #4, !dbg !216, !taffo.target !38, !taffo.info !59
  %53 = bitcast float** %xs to i8*, !dbg !216, !taffo.target !37, !taffo.info !35
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %53) #4, !dbg !216, !taffo.target !37, !taffo.info !59
  %54 = bitcast float** %As to i8*, !dbg !216, !taffo.target !34, !taffo.info !35
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %54) #4, !dbg !216, !taffo.target !34, !taffo.info !59
  %55 = bitcast i32* %n to i8*, !dbg !216, !taffo.info !32
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %55) #4, !dbg !216
  %56 = bitcast i32* %m to i8*, !dbg !216, !taffo.info !32
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %56) #4, !dbg !216
  ret void, !dbg !216
}

; Function Attrs: nounwind readnone speculatable
declare !taffo.funinfo !217 void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: inaccessiblememonly nounwind
declare !taffo.funinfo !13 void @llvm.sideeffect() #2

; Function Attrs: argmemonly nounwind
declare !taffo.funinfo !218 void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare !taffo.funinfo !219 void @llvm.var.annotation(i8*, i8*, i8*, i32) #4

; Function Attrs: nounwind
declare !taffo.funinfo !13 i8* @llvm.stacksave() #4

; Function Attrs: nounwind
declare !taffo.funinfo !220 void @llvm.stackrestore(i8*) #4

; Function Attrs: argmemonly nounwind
declare !taffo.funinfo !218 void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #3

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.top.func"="atax" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { inaccessiblememonly nounwind }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind }
attributes #5 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="0" "xlx.source"="user" }

!llvm.dbg.cu = !{!11}
!llvm.ident = !{!16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16}
!llvm.module.flags = !{!17, !18, !19}

!0 = !{!1, !1, !1}
!1 = !{i1 false, !2, i1 false, i1 false}
!2 = !{double 0.000000e+00, double 0.000000e+00}
!3 = !{i1 false, !4, i1 false, i1 false}
!4 = !{double 0.000000e+00, double 1.160000e+02}
!5 = !{i1 false, !6, i1 false, i1 false}
!6 = !{double 0.000000e+00, double 1.200000e+02}
!7 = !{i1 false, !8, i1 false, i1 false}
!8 = !{double 0.000000e+00, double 1.210000e+02}
!9 = !{i1 false, !10, i1 false, i1 false}
!10 = !{double 0.000000e+00, double 1.150000e+02}
!11 = distinct !DICompileUnit(language: DW_LANG_C99, file: !12, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !13, retainedTypes: !14)
!12 = !DIFile(filename: "/home/bruno/Desktop/benchmarks/atax/proj_atax/solution1/.autopilot/db/atax_taffo.pp.0.c", directory: "/home/bruno/Desktop/benchmarks/atax")
!13 = !{}
!14 = !{!15}
!15 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!16 = !{!"clang version 7.0.0 "}
!17 = !{i32 2, !"Dwarf Version", i32 4}
!18 = !{i32 2, !"Debug Info Version", i32 3}
!19 = !{i32 1, !"wchar_size", i32 4}
!20 = distinct !DISubprogram(name: "atax", scope: !21, file: !21, line: 24, type: !22, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !13)
!21 = !DIFile(filename: "atax_taffo.c", directory: "/home/bruno/Desktop/benchmarks/atax")
!22 = !DISubroutineType(types: !23)
!23 = !{null, !24, !24, !24}
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!25 = !{!26}
!26 = !{!"fpga.top", !"user", !27}
!27 = !DILocation(line: 24, column: 16, scope: !20)
!28 = !{i1 true}
!29 = !{i32 0, i1 false, i32 0, i1 false, i32 1, !30}
!30 = !{i1 false, !31, i1 false, i1 false}
!31 = !{double 0.000000e+00, double 2.000000e+00}
!32 = !{i1 false, !33, i1 false, i1 false}
!33 = !{double 1.600000e+01, double 1.600000e+01}
!34 = !{!"As"}
!35 = !{i1 false, !36, i1 false, i1 true}
!36 = !{double 1.000000e+00, double 4.000000e+02}
!37 = !{!"xs"}
!38 = !{!"ys"}
!39 = !{i1 false, !2, i1 false, i1 true}
!40 = !{i1 false, !41, i1 false, i1 false}
!41 = !{double 0.000000e+00, double 3.000000e+00}
!42 = !DILocalVariable(name: "A", arg: 1, scope: !20, file: !21, line: 24, type: !24)
!43 = !DILocation(line: 24, column: 57, scope: !20)
!44 = !DILocalVariable(name: "x", arg: 2, scope: !20, file: !21, line: 24, type: !24)
!45 = !DILocation(line: 24, column: 67, scope: !20)
!46 = !DILocalVariable(name: "y", arg: 3, scope: !20, file: !21, line: 24, type: !24)
!47 = !DILocation(line: 24, column: 77, scope: !20)
!48 = !DILocation(line: 26, column: 9, scope: !20)
!49 = !DILocation(line: 27, column: 9, scope: !20)
!50 = !DILocation(line: 28, column: 9, scope: !20)
!51 = !DILocation(line: 29, column: 2, scope: !20)
!52 = !DILocalVariable(name: "m", scope: !20, file: !21, line: 29, type: !53)
!53 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!54 = !DILocation(line: 29, column: 6, scope: !20)
!55 = !DILocation(line: 30, column: 5, scope: !20)
!56 = !DILocalVariable(name: "n", scope: !20, file: !21, line: 30, type: !53)
!57 = !DILocation(line: 30, column: 9, scope: !20)
!58 = !DILocation(line: 31, column: 5, scope: !20)
!59 = !{i1 false, i1 false, i1 false, i1 true}
!60 = !DILocalVariable(name: "As", scope: !20, file: !21, line: 31, type: !24)
!61 = !DILocation(line: 31, column: 12, scope: !20)
!62 = !DILocation(line: 32, column: 10, scope: !20)
!63 = !DILocation(line: 32, column: 8, scope: !20)
!64 = !DILocation(line: 33, column: 5, scope: !20)
!65 = !DILocalVariable(name: "xs", scope: !20, file: !21, line: 33, type: !24)
!66 = !DILocation(line: 33, column: 12, scope: !20)
!67 = !DILocation(line: 34, column: 10, scope: !20)
!68 = !DILocation(line: 34, column: 8, scope: !20)
!69 = !DILocation(line: 35, column: 5, scope: !20)
!70 = !DILocalVariable(name: "ys", scope: !20, file: !21, line: 35, type: !24)
!71 = !DILocation(line: 35, column: 12, scope: !20)
!72 = !DILocation(line: 36, column: 10, scope: !20)
!73 = !DILocation(line: 36, column: 8, scope: !20)
!74 = !DILocation(line: 37, column: 5, scope: !20)
!75 = !DILocalVariable(name: "tmp", scope: !20, file: !21, line: 37, type: !15)
!76 = !DILocation(line: 37, column: 11, scope: !20)
!77 = !DILocation(line: 38, column: 5, scope: !20)
!78 = !DILocalVariable(name: "zero", scope: !20, file: !21, line: 38, type: !15)
!79 = !DILocation(line: 38, column: 49, scope: !20)
!80 = !DILocation(line: 39, column: 10, scope: !20)
!81 = !DILocation(line: 40, column: 5, scope: !20)
!82 = !DILocalVariable(name: "i", scope: !20, file: !21, line: 40, type: !53)
!83 = !DILocation(line: 40, column: 9, scope: !20)
!84 = !DILocation(line: 41, column: 5, scope: !20)
!85 = !DILocalVariable(name: "j", scope: !20, file: !21, line: 41, type: !53)
!86 = !DILocation(line: 41, column: 9, scope: !20)
!87 = !DILocation(line: 42, column: 18, scope: !20)
!88 = !DILocation(line: 42, column: 5, scope: !20)
!89 = !{!"y_true"}
!90 = !DILocalVariable(name: "y_true", scope: !20, file: !21, line: 42, type: !91)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, elements: !92)
!92 = !{!93}
!93 = !DISubrange(count: -1)
!94 = !DILocation(line: 42, column: 11, scope: !20)
!95 = !DILocation(line: 43, column: 29, scope: !96)
!96 = distinct !DILexicalBlock(scope: !20, file: !21, line: 43, column: 22)
!97 = !DILocation(line: 43, column: 27, scope: !96)
!98 = !DILocation(line: 43, column: 34, scope: !99)
!99 = distinct !DILexicalBlock(scope: !96, file: !21, line: 43, column: 22)
!100 = !DILocation(line: 43, column: 36, scope: !99)
!101 = !{i1 false, !102, i1 false, i1 false}
!102 = !{double 1.000000e+00, double 1.000000e+00}
!103 = !DILocation(line: 43, column: 22, scope: !96)
!104 = !DILocation(line: 44, column: 21, scope: !105)
!105 = distinct !DILexicalBlock(scope: !99, file: !21, line: 43, column: 46)
!106 = !DILocation(line: 44, column: 16, scope: !105)
!107 = !DILocation(line: 44, column: 9, scope: !105)
!108 = !DILocation(line: 44, column: 19, scope: !105)
!109 = !DILocation(line: 45, column: 5, scope: !105)
!110 = !DILocation(line: 43, column: 43, scope: !99)
!111 = !DILocation(line: 43, column: 22, scope: !99)
!112 = distinct !{!112, !103, !113, !114}
!113 = !DILocation(line: 45, column: 5, scope: !96)
!114 = !{!"llvm.loop.name", !"VITIS_LOOP_43_1"}
!115 = !DILocation(line: 47, column: 29, scope: !116)
!116 = distinct !DILexicalBlock(scope: !20, file: !21, line: 47, column: 22)
!117 = !DILocation(line: 47, column: 27, scope: !116)
!118 = !DILocation(line: 47, column: 34, scope: !119)
!119 = distinct !DILexicalBlock(scope: !116, file: !21, line: 47, column: 22)
!120 = !DILocation(line: 47, column: 36, scope: !119)
!121 = !DILocation(line: 47, column: 22, scope: !116)
!122 = !DILocation(line: 50, column: 13, scope: !123)
!123 = distinct !DILexicalBlock(scope: !119, file: !21, line: 48, column: 5)
!124 = !DILocation(line: 50, column: 11, scope: !123)
!125 = !DILocation(line: 50, column: 7, scope: !123)
!126 = !DILocation(line: 52, column: 31, scope: !127)
!127 = distinct !DILexicalBlock(scope: !123, file: !21, line: 52, column: 24)
!128 = !DILocation(line: 52, column: 29, scope: !127)
!129 = !DILocation(line: 52, column: 36, scope: !130)
!130 = distinct !DILexicalBlock(scope: !127, file: !21, line: 52, column: 24)
!131 = !DILocation(line: 52, column: 38, scope: !130)
!132 = !DILocation(line: 52, column: 24, scope: !127)
!133 = !DILocation(line: 54, column: 15, scope: !134)
!134 = distinct !DILexicalBlock(scope: !130, file: !21, line: 52, column: 48)
!135 = !{i1 false, !136, i1 false, i1 true}
!136 = !{double 0.000000e+00, double 4.000000e+02}
!137 = !DILocation(line: 54, column: 21, scope: !134)
!138 = !DILocation(line: 54, column: 24, scope: !134)
!139 = !DILocation(line: 54, column: 25, scope: !134)
!140 = !{i1 false, !141, i1 false, i1 false}
!141 = !{double 0.000000e+00, double 1.600000e+01}
!142 = !DILocation(line: 54, column: 30, scope: !134)
!143 = !DILocation(line: 54, column: 29, scope: !134)
!144 = !DILocation(line: 54, column: 35, scope: !134)
!145 = !DILocation(line: 54, column: 38, scope: !134)
!146 = !DILocation(line: 54, column: 33, scope: !134)
!147 = !DILocation(line: 54, column: 19, scope: !134)
!148 = !DILocation(line: 54, column: 13, scope: !134)
!149 = !DILocation(line: 55, column: 7, scope: !134)
!150 = !DILocation(line: 52, column: 45, scope: !130)
!151 = !DILocation(line: 52, column: 24, scope: !130)
!152 = distinct !{!152, !132, !153, !154}
!153 = !DILocation(line: 55, column: 7, scope: !127)
!154 = !{!"llvm.loop.name", !"VITIS_LOOP_52_3"}
!155 = !DILocation(line: 56, column: 31, scope: !156)
!156 = distinct !DILexicalBlock(scope: !123, file: !21, line: 56, column: 24)
!157 = !DILocation(line: 56, column: 29, scope: !156)
!158 = !DILocation(line: 56, column: 36, scope: !159)
!159 = distinct !DILexicalBlock(scope: !156, file: !21, line: 56, column: 24)
!160 = !DILocation(line: 56, column: 38, scope: !159)
!161 = !DILocation(line: 56, column: 24, scope: !156)
!162 = !DILocation(line: 59, column: 28, scope: !163)
!163 = distinct !DILexicalBlock(scope: !159, file: !21, line: 56, column: 48)
!164 = !DILocation(line: 59, column: 21, scope: !163)
!165 = !{i1 false, !166, i1 false, i1 false}
!166 = !{double 0.000000e+00, double 1.000000e+00}
!167 = !DILocation(line: 59, column: 33, scope: !163)
!168 = !DILocation(line: 59, column: 36, scope: !163)
!169 = !DILocation(line: 59, column: 37, scope: !163)
!170 = !{i1 false, !171, i1 false, i1 false}
!171 = !{double 0.000000e+00, double 3.200000e+01}
!172 = !DILocation(line: 59, column: 42, scope: !163)
!173 = !DILocation(line: 59, column: 41, scope: !163)
!174 = !{i1 false, !175, i1 false, i1 false}
!175 = !{double 0.000000e+00, double 3.300000e+01}
!176 = !DILocation(line: 59, column: 31, scope: !163)
!177 = !DILocation(line: 59, column: 16, scope: !163)
!178 = !DILocation(line: 59, column: 9, scope: !163)
!179 = !DILocation(line: 59, column: 19, scope: !163)
!180 = !DILocation(line: 60, column: 7, scope: !163)
!181 = !DILocation(line: 56, column: 45, scope: !159)
!182 = !{i1 false, !183, i1 false, i1 false}
!183 = !{double 1.000000e+00, double 2.000000e+00}
!184 = !DILocation(line: 56, column: 24, scope: !159)
!185 = distinct !{!185, !161, !186, !187}
!186 = !DILocation(line: 60, column: 7, scope: !156)
!187 = !{!"llvm.loop.name", !"VITIS_LOOP_56_4"}
!188 = !DILocation(line: 61, column: 5, scope: !123)
!189 = !DILocation(line: 47, column: 43, scope: !119)
!190 = !DILocation(line: 47, column: 22, scope: !119)
!191 = distinct !{!191, !121, !192, !193}
!192 = !DILocation(line: 61, column: 5, scope: !116)
!193 = !{!"llvm.loop.name", !"VITIS_LOOP_47_2"}
!194 = !DILocation(line: 63, column: 29, scope: !195)
!195 = distinct !DILexicalBlock(scope: !20, file: !21, line: 63, column: 22)
!196 = !DILocation(line: 63, column: 27, scope: !195)
!197 = !DILocation(line: 63, column: 34, scope: !198)
!198 = distinct !DILexicalBlock(scope: !195, file: !21, line: 63, column: 22)
!199 = !DILocation(line: 63, column: 36, scope: !198)
!200 = !DILocation(line: 63, column: 22, scope: !195)
!201 = !DILocation(line: 64, column: 30, scope: !202)
!202 = distinct !DILexicalBlock(scope: !198, file: !21, line: 63, column: 46)
!203 = !DILocation(line: 64, column: 23, scope: !202)
!204 = !{i1 false, !31, i1 false, i1 true}
!205 = !DILocation(line: 64, column: 9, scope: !202)
!206 = !DILocation(line: 64, column: 11, scope: !202)
!207 = !DILocation(line: 64, column: 14, scope: !202)
!208 = !DILocation(line: 65, column: 7, scope: !202)
!209 = !DILocation(line: 63, column: 43, scope: !198)
!210 = !{i1 false, !211, i1 false, i1 false}
!211 = !{double 1.000000e+00, double 3.000000e+00}
!212 = !DILocation(line: 63, column: 22, scope: !198)
!213 = distinct !{!213, !200, !214, !215}
!214 = !DILocation(line: 65, column: 7, scope: !195)
!215 = !{!"llvm.loop.name", !"VITIS_LOOP_63_5"}
!216 = !DILocation(line: 66, column: 1, scope: !20)
!217 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!218 = !{i32 0, i1 false, i32 0, i1 false}
!219 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!220 = !{i32 0, i1 false}
