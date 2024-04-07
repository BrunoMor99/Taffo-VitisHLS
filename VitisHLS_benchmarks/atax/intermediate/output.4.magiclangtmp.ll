; ModuleID = '/home/bruno/Desktop/benchmarks/atax/intermediate/output.3.magiclangtmp.ll'
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
  %As = alloca float*, align 8, !taffo.info !34, !taffo.target !37
  %xs = alloca float*, align 8, !taffo.info !34, !taffo.target !38
  %ys = alloca float*, align 8, !taffo.info !34, !taffo.target !39
  %tmp = alloca float, align 4, !taffo.info !34
  %zero = alloca float, align 4, !taffo.info !40
  %i = alloca i32, align 4, !taffo.info !30
  %j = alloca i32, align 4, !taffo.info !42
  %saved_stack = alloca i8*, align 8
  store float* %A, float** %A.addr, align 8
  call void @llvm.dbg.declare(metadata float** %A.addr, metadata !44, metadata !DIExpression()), !dbg !45
  store float* %x, float** %x.addr, align 8
  call void @llvm.dbg.declare(metadata float** %x.addr, metadata !46, metadata !DIExpression()), !dbg !47
  store float* %y, float** %y.addr, align 8
  call void @llvm.dbg.declare(metadata float** %y.addr, metadata !48, metadata !DIExpression()), !dbg !49
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %A, [0 x i8] zeroinitializer, i64 256, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !50
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %x, [0 x i8] zeroinitializer, i64 16, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !51
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %y, [0 x i8] zeroinitializer, i64 16, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !52
  %0 = bitcast i32* %m to i8*, !dbg !53
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !53
  call void @llvm.dbg.declare(metadata i32* %m, metadata !54, metadata !DIExpression()), !dbg !56
  store i32 16, i32* %m, align 4, !dbg !56
  %1 = bitcast i32* %n to i8*, !dbg !57
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !57
  call void @llvm.dbg.declare(metadata i32* %n, metadata !58, metadata !DIExpression()), !dbg !59
  store i32 16, i32* %n, align 4, !dbg !59
  %2 = bitcast float** %As to i8*, !dbg !60, !taffo.info !61, !taffo.target !37
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #4, !dbg !60, !taffo.info !62, !taffo.target !37
  call void @llvm.dbg.declare(metadata float** %As, metadata !63, metadata !DIExpression()), !dbg !64
  %As1 = bitcast float** %As to i8*, !dbg !60, !taffo.info !61, !taffo.target !37
  %3 = load float*, float** %A.addr, align 8, !dbg !65
  store float* %3, float** %As, align 8, !dbg !66, !taffo.info !62, !taffo.target !37
  %4 = bitcast float** %xs to i8*, !dbg !67, !taffo.info !61, !taffo.target !38
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #4, !dbg !67, !taffo.info !62, !taffo.target !38
  call void @llvm.dbg.declare(metadata float** %xs, metadata !68, metadata !DIExpression()), !dbg !69
  %xs2 = bitcast float** %xs to i8*, !dbg !67, !taffo.info !61, !taffo.target !38
  %5 = load float*, float** %x.addr, align 8, !dbg !70
  store float* %5, float** %xs, align 8, !dbg !71, !taffo.info !62, !taffo.target !38
  %6 = bitcast float** %ys to i8*, !dbg !72, !taffo.info !61, !taffo.target !39
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %6) #4, !dbg !72, !taffo.info !62, !taffo.target !39
  call void @llvm.dbg.declare(metadata float** %ys, metadata !73, metadata !DIExpression()), !dbg !74
  %ys3 = bitcast float** %ys to i8*, !dbg !72, !taffo.info !61, !taffo.target !39
  %7 = load float*, float** %y.addr, align 8, !dbg !75, !taffo.info !30
  store float* %7, float** %ys, align 8, !dbg !76, !taffo.info !62, !taffo.target !39
  %8 = bitcast float* %tmp to i8*, !dbg !77, !taffo.info !61
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4, !dbg !77, !taffo.info !62
  call void @llvm.dbg.declare(metadata float* %tmp, metadata !78, metadata !DIExpression()), !dbg !79
  %tmp4 = bitcast float* %tmp to i8*, !dbg !77, !taffo.info !61
  %9 = bitcast float* %zero to i8*, !dbg !80, !taffo.info !81
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #4, !dbg !80, !taffo.info !62
  call void @llvm.dbg.declare(metadata float* %zero, metadata !82, metadata !DIExpression()), !dbg !83
  %zero5 = bitcast float* %zero to i8*, !dbg !80, !taffo.info !81
  store float 0.000000e+00, float* %zero, align 4, !dbg !84, !taffo.info !62
  %10 = bitcast i32* %i to i8*, !dbg !85
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #4, !dbg !85
  call void @llvm.dbg.declare(metadata i32* %i, metadata !86, metadata !DIExpression()), !dbg !87
  %11 = bitcast i32* %j to i8*, !dbg !88
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #4, !dbg !88
  call void @llvm.dbg.declare(metadata i32* %j, metadata !89, metadata !DIExpression()), !dbg !90
  %12 = load i32, i32* %n, align 4, !dbg !91, !taffo.info !32
  %13 = zext i32 %12 to i64, !dbg !92, !taffo.info !32
  %14 = call i8* @llvm.stacksave(), !dbg !92
  store i8* %14, i8** %saved_stack, align 8, !dbg !92
  %vla = alloca float, i64 %13, align 4, !dbg !92, !taffo.info !34, !taffo.target !93
  call void @llvm.dbg.declare(metadata float* %vla, metadata !94, metadata !DIExpression()), !dbg !98
  %vla6 = bitcast float* %vla to i8*, !dbg !92, !taffo.info !61, !taffo.target !93
  br label %VITIS_LOOP_43_1, !dbg !92

VITIS_LOOP_43_1:                                  ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !99
  br label %for.cond, !dbg !101

for.cond:                                         ; preds = %for.inc, %VITIS_LOOP_43_1
  %15 = load i32, i32* %i, align 4, !dbg !102, !taffo.info !30
  %cmp = icmp slt i32 %15, 16, !dbg !104, !taffo.info !105
  br i1 %cmp, label %for.body, label %for.end, !dbg !107

for.body:                                         ; preds = %for.cond
  %16 = load float, float* %zero, align 4, !dbg !108, !taffo.info !40
  %17 = load i32, i32* %i, align 4, !dbg !110, !taffo.info !30
  %idxprom = sext i32 %17 to i64, !dbg !111, !taffo.info !1
  %arrayidx = getelementptr inbounds float, float* %vla, i64 %idxprom, !dbg !111, !taffo.info !40, !taffo.target !93
  store float %16, float* %arrayidx, align 4, !dbg !112, !taffo.info !62
  br label %for.inc, !dbg !113

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4, !dbg !114, !taffo.info !30
  %inc = add nsw i32 %18, 1, !dbg !114, !taffo.info !105
  store i32 %inc, i32* %i, align 4, !dbg !114
  br label %for.cond, !dbg !115, !llvm.loop !116

for.end:                                          ; preds = %for.cond
  br label %VITIS_LOOP_47_2, !dbg !117

VITIS_LOOP_47_2:                                  ; preds = %for.end
  store i32 0, i32* %i, align 4, !dbg !119
  br label %for.cond7, !dbg !121

for.cond7:                                        ; preds = %for.inc37, %VITIS_LOOP_47_2
  %19 = load i32, i32* %i, align 4, !dbg !122, !taffo.info !30
  %cmp8 = icmp slt i32 %19, 16, !dbg !124, !taffo.info !105
  br i1 %cmp8, label %for.body9, label %for.end39, !dbg !125

for.body9:                                        ; preds = %for.cond7
  %20 = load float, float* %zero, align 4, !dbg !126, !taffo.info !40
  store float %20, float* %tmp, align 4, !dbg !128, !taffo.info !62
  br label %VITIS_LOOP_52_3, !dbg !129

VITIS_LOOP_52_3:                                  ; preds = %for.body9
  store i32 0, i32* %j, align 4, !dbg !130
  br label %for.cond10, !dbg !132

for.cond10:                                       ; preds = %for.inc19, %VITIS_LOOP_52_3
  %21 = load i32, i32* %j, align 4, !dbg !133, !taffo.info !42
  %cmp11 = icmp slt i32 %21, 16, !dbg !135, !taffo.info !105
  br i1 %cmp11, label %for.body12, label %for.end21, !dbg !136

for.body12:                                       ; preds = %for.cond10
  %22 = load float, float* %tmp, align 4, !dbg !137, !taffo.info !139
  %23 = load float*, float** %As, align 8, !dbg !141, !taffo.info !34, !taffo.target !37
  %24 = load i32, i32* %i, align 4, !dbg !142, !taffo.info !30
  %mul = mul nsw i32 %24, 16, !dbg !143, !taffo.info !144
  %25 = load i32, i32* %j, align 4, !dbg !146, !taffo.info !42
  %add = add nsw i32 %mul, %25, !dbg !147, !taffo.info !144
  %idxprom13 = sext i32 %add to i64, !dbg !141, !taffo.info !144
  %arrayidx14 = getelementptr inbounds float, float* %23, i64 %idxprom13, !dbg !141, !taffo.info !34, !taffo.target !37
  %26 = load float, float* %arrayidx14, align 4, !dbg !141, !taffo.info !139, !taffo.target !37
  %27 = load float*, float** %xs, align 8, !dbg !148, !taffo.info !34, !taffo.target !38
  %28 = load i32, i32* %j, align 4, !dbg !149, !taffo.info !42
  %idxprom15 = sext i32 %28 to i64, !dbg !148, !taffo.info !1
  %arrayidx16 = getelementptr inbounds float, float* %27, i64 %idxprom15, !dbg !148, !taffo.info !34, !taffo.target !38
  %29 = load float, float* %arrayidx16, align 4, !dbg !148, !taffo.info !139, !taffo.target !38
  %mul17 = fmul float %26, %29, !dbg !150, !taffo.info !40, !taffo.target !37
  %add18 = fadd float %22, %mul17, !dbg !151, !taffo.info !139
  store float %add18, float* %tmp, align 4, !dbg !152, !taffo.info !62
  br label %for.inc19, !dbg !153

for.inc19:                                        ; preds = %for.body12
  %30 = load i32, i32* %j, align 4, !dbg !154, !taffo.info !42
  %inc20 = add nsw i32 %30, 1, !dbg !154, !taffo.info !105
  store i32 %inc20, i32* %j, align 4, !dbg !154
  br label %for.cond10, !dbg !155, !llvm.loop !156

for.end21:                                        ; preds = %for.cond10
  br label %VITIS_LOOP_56_4, !dbg !157

VITIS_LOOP_56_4:                                  ; preds = %for.end21
  store i32 0, i32* %j, align 4, !dbg !159
  br label %for.cond22, !dbg !161

for.cond22:                                       ; preds = %for.inc34, %VITIS_LOOP_56_4
  %31 = load i32, i32* %j, align 4, !dbg !162, !taffo.info !42
  %cmp23 = icmp slt i32 %31, 16, !dbg !164, !taffo.info !105
  br i1 %cmp23, label %for.body24, label %for.end36, !dbg !165

for.body24:                                       ; preds = %for.cond22
  %32 = load i32, i32* %j, align 4, !dbg !166, !taffo.info !42
  %idxprom25 = sext i32 %32 to i64, !dbg !168, !taffo.info !169
  %arrayidx26 = getelementptr inbounds float, float* %vla, i64 %idxprom25, !dbg !168, !taffo.info !40, !taffo.target !93
  %33 = load float, float* %arrayidx26, align 4, !dbg !168, !taffo.info !40, !taffo.target !93
  %34 = load float*, float** %As, align 8, !dbg !171, !taffo.info !34, !taffo.target !37
  %35 = load i32, i32* %i, align 4, !dbg !172, !taffo.info !30
  %mul27 = mul nsw i32 %35, 16, !dbg !173, !taffo.info !174
  %36 = load i32, i32* %j, align 4, !dbg !176, !taffo.info !42
  %add28 = add nsw i32 %mul27, %36, !dbg !177, !taffo.info !178
  %idxprom29 = sext i32 %add28 to i64, !dbg !171, !taffo.info !178
  %arrayidx30 = getelementptr inbounds float, float* %34, i64 %idxprom29, !dbg !171, !taffo.info !34, !taffo.target !37
  %37 = load float, float* %arrayidx30, align 4, !dbg !171, !taffo.info !139, !taffo.target !37
  %add31 = fadd float %33, %37, !dbg !180, !taffo.info !40, !taffo.target !93
  %38 = load i32, i32* %j, align 4, !dbg !181, !taffo.info !42
  %idxprom32 = sext i32 %38 to i64, !dbg !182, !taffo.info !169
  %arrayidx33 = getelementptr inbounds float, float* %vla, i64 %idxprom32, !dbg !182, !taffo.info !40, !taffo.target !93
  store float %add31, float* %arrayidx33, align 4, !dbg !183, !taffo.info !62, !taffo.target !93
  br label %for.inc34, !dbg !184

for.inc34:                                        ; preds = %for.body24
  %39 = load i32, i32* %j, align 4, !dbg !185, !taffo.info !42
  %inc35 = add nsw i32 %39, 1, !dbg !185, !taffo.info !186
  store i32 %inc35, i32* %j, align 4, !dbg !185
  br label %for.cond22, !dbg !188, !llvm.loop !189

for.end36:                                        ; preds = %for.cond22
  br label %for.inc37, !dbg !192

for.inc37:                                        ; preds = %for.end36
  %40 = load i32, i32* %i, align 4, !dbg !193, !taffo.info !30
  %inc38 = add nsw i32 %40, 1, !dbg !193, !taffo.info !186
  store i32 %inc38, i32* %i, align 4, !dbg !193
  br label %for.cond7, !dbg !194, !llvm.loop !195

for.end39:                                        ; preds = %for.cond7
  br label %VITIS_LOOP_63_5, !dbg !196

VITIS_LOOP_63_5:                                  ; preds = %for.end39
  store i32 0, i32* %j, align 4, !dbg !198
  br label %for.cond40, !dbg !200

for.cond40:                                       ; preds = %for.inc47, %VITIS_LOOP_63_5
  %41 = load i32, i32* %j, align 4, !dbg !201, !taffo.info !42
  %cmp41 = icmp slt i32 %41, 16, !dbg !203, !taffo.info !105
  br i1 %cmp41, label %for.body42, label %for.end49, !dbg !204

for.body42:                                       ; preds = %for.cond40
  %42 = load i32, i32* %j, align 4, !dbg !205, !taffo.info !42
  %idxprom43 = sext i32 %42 to i64, !dbg !207, !taffo.info !30
  %arrayidx44 = getelementptr inbounds float, float* %vla, i64 %idxprom43, !dbg !207, !taffo.info !40, !taffo.target !93
  %43 = load float, float* %arrayidx44, align 4, !dbg !207, !taffo.info !208, !taffo.target !93
  %44 = load float*, float** %y.addr, align 8, !dbg !210, !taffo.info !30
  %45 = load i32, i32* %j, align 4, !dbg !211, !taffo.info !42
  %idxprom45 = sext i32 %45 to i64, !dbg !210, !taffo.info !30
  %arrayidx46 = getelementptr inbounds float, float* %44, i64 %idxprom45, !dbg !210, !taffo.info !30
  store float %43, float* %arrayidx46, align 4, !dbg !212, !taffo.info !62, !taffo.target !93
  br label %for.inc47, !dbg !213

for.inc47:                                        ; preds = %for.body42
  %46 = load i32, i32* %j, align 4, !dbg !214, !taffo.info !42
  %inc48 = add nsw i32 %46, 1, !dbg !214, !taffo.info !215
  store i32 %inc48, i32* %j, align 4, !dbg !214
  br label %for.cond40, !dbg !217, !llvm.loop !218

for.end49:                                        ; preds = %for.cond40
  %47 = load i8*, i8** %saved_stack, align 8, !dbg !221
  call void @llvm.stackrestore(i8* %47), !dbg !221
  %48 = bitcast i32* %j to i8*, !dbg !221, !taffo.info !42
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %48) #4, !dbg !221
  %49 = bitcast i32* %i to i8*, !dbg !221, !taffo.info !30
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %49) #4, !dbg !221
  %50 = bitcast float* %zero to i8*, !dbg !221, !taffo.info !81
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %50) #4, !dbg !221, !taffo.info !62
  %51 = bitcast float* %tmp to i8*, !dbg !221, !taffo.info !61
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %51) #4, !dbg !221, !taffo.info !62
  %52 = bitcast float** %ys to i8*, !dbg !221, !taffo.info !61, !taffo.target !39
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %52) #4, !dbg !221, !taffo.info !62, !taffo.target !39
  %53 = bitcast float** %xs to i8*, !dbg !221, !taffo.info !61, !taffo.target !38
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %53) #4, !dbg !221, !taffo.info !62, !taffo.target !38
  %54 = bitcast float** %As to i8*, !dbg !221, !taffo.info !61, !taffo.target !37
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %54) #4, !dbg !221, !taffo.info !62, !taffo.target !37
  %55 = bitcast i32* %n to i8*, !dbg !221, !taffo.info !32
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %55) #4, !dbg !221
  %56 = bitcast i32* %m to i8*, !dbg !221, !taffo.info !32
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %56) #4, !dbg !221
  ret void, !dbg !221
}

; Function Attrs: nounwind readnone speculatable
declare !taffo.funinfo !222 void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: inaccessiblememonly nounwind
declare !taffo.funinfo !13 void @llvm.sideeffect() #2

; Function Attrs: argmemonly nounwind
declare !taffo.funinfo !223 void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare !taffo.funinfo !224 void @llvm.var.annotation(i8*, i8*, i8*, i32) #4

; Function Attrs: nounwind
declare !taffo.funinfo !13 i8* @llvm.stacksave() #4

; Function Attrs: nounwind
declare !taffo.funinfo !225 void @llvm.stackrestore(i8*) #4

; Function Attrs: argmemonly nounwind
declare !taffo.funinfo !223 void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #3

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
!34 = !{!35, !36, i1 false, i1 true}
!35 = !{!"fixp", i32 32, i32 23}
!36 = !{double 1.000000e+00, double 4.000000e+02}
!37 = !{!"As"}
!38 = !{!"xs"}
!39 = !{!"ys"}
!40 = !{!41, !2, i1 false, i1 true}
!41 = !{!"fixp", i32 32, i32 32}
!42 = !{i1 false, !43, i1 false, i1 false}
!43 = !{double 0.000000e+00, double 3.000000e+00}
!44 = !DILocalVariable(name: "A", arg: 1, scope: !20, file: !21, line: 24, type: !24)
!45 = !DILocation(line: 24, column: 57, scope: !20)
!46 = !DILocalVariable(name: "x", arg: 2, scope: !20, file: !21, line: 24, type: !24)
!47 = !DILocation(line: 24, column: 67, scope: !20)
!48 = !DILocalVariable(name: "y", arg: 3, scope: !20, file: !21, line: 24, type: !24)
!49 = !DILocation(line: 24, column: 77, scope: !20)
!50 = !DILocation(line: 26, column: 9, scope: !20)
!51 = !DILocation(line: 27, column: 9, scope: !20)
!52 = !DILocation(line: 28, column: 9, scope: !20)
!53 = !DILocation(line: 29, column: 2, scope: !20)
!54 = !DILocalVariable(name: "m", scope: !20, file: !21, line: 29, type: !55)
!55 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!56 = !DILocation(line: 29, column: 6, scope: !20)
!57 = !DILocation(line: 30, column: 5, scope: !20)
!58 = !DILocalVariable(name: "n", scope: !20, file: !21, line: 30, type: !55)
!59 = !DILocation(line: 30, column: 9, scope: !20)
!60 = !DILocation(line: 31, column: 5, scope: !20)
!61 = !{!35, i1 false, i1 false, i1 true}
!62 = !{i1 false, i1 false, i1 false, i1 true}
!63 = !DILocalVariable(name: "As", scope: !20, file: !21, line: 31, type: !24)
!64 = !DILocation(line: 31, column: 12, scope: !20)
!65 = !DILocation(line: 32, column: 10, scope: !20)
!66 = !DILocation(line: 32, column: 8, scope: !20)
!67 = !DILocation(line: 33, column: 5, scope: !20)
!68 = !DILocalVariable(name: "xs", scope: !20, file: !21, line: 33, type: !24)
!69 = !DILocation(line: 33, column: 12, scope: !20)
!70 = !DILocation(line: 34, column: 10, scope: !20)
!71 = !DILocation(line: 34, column: 8, scope: !20)
!72 = !DILocation(line: 35, column: 5, scope: !20)
!73 = !DILocalVariable(name: "ys", scope: !20, file: !21, line: 35, type: !24)
!74 = !DILocation(line: 35, column: 12, scope: !20)
!75 = !DILocation(line: 36, column: 10, scope: !20)
!76 = !DILocation(line: 36, column: 8, scope: !20)
!77 = !DILocation(line: 37, column: 5, scope: !20)
!78 = !DILocalVariable(name: "tmp", scope: !20, file: !21, line: 37, type: !15)
!79 = !DILocation(line: 37, column: 11, scope: !20)
!80 = !DILocation(line: 38, column: 5, scope: !20)
!81 = !{!41, i1 false, i1 false, i1 true}
!82 = !DILocalVariable(name: "zero", scope: !20, file: !21, line: 38, type: !15)
!83 = !DILocation(line: 38, column: 49, scope: !20)
!84 = !DILocation(line: 39, column: 10, scope: !20)
!85 = !DILocation(line: 40, column: 5, scope: !20)
!86 = !DILocalVariable(name: "i", scope: !20, file: !21, line: 40, type: !55)
!87 = !DILocation(line: 40, column: 9, scope: !20)
!88 = !DILocation(line: 41, column: 5, scope: !20)
!89 = !DILocalVariable(name: "j", scope: !20, file: !21, line: 41, type: !55)
!90 = !DILocation(line: 41, column: 9, scope: !20)
!91 = !DILocation(line: 42, column: 18, scope: !20)
!92 = !DILocation(line: 42, column: 5, scope: !20)
!93 = !{!"y_true"}
!94 = !DILocalVariable(name: "y_true", scope: !20, file: !21, line: 42, type: !95)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: -1)
!98 = !DILocation(line: 42, column: 11, scope: !20)
!99 = !DILocation(line: 43, column: 29, scope: !100)
!100 = distinct !DILexicalBlock(scope: !20, file: !21, line: 43, column: 22)
!101 = !DILocation(line: 43, column: 27, scope: !100)
!102 = !DILocation(line: 43, column: 34, scope: !103)
!103 = distinct !DILexicalBlock(scope: !100, file: !21, line: 43, column: 22)
!104 = !DILocation(line: 43, column: 36, scope: !103)
!105 = !{i1 false, !106, i1 false, i1 false}
!106 = !{double 1.000000e+00, double 1.000000e+00}
!107 = !DILocation(line: 43, column: 22, scope: !100)
!108 = !DILocation(line: 44, column: 21, scope: !109)
!109 = distinct !DILexicalBlock(scope: !103, file: !21, line: 43, column: 46)
!110 = !DILocation(line: 44, column: 16, scope: !109)
!111 = !DILocation(line: 44, column: 9, scope: !109)
!112 = !DILocation(line: 44, column: 19, scope: !109)
!113 = !DILocation(line: 45, column: 5, scope: !109)
!114 = !DILocation(line: 43, column: 43, scope: !103)
!115 = !DILocation(line: 43, column: 22, scope: !103)
!116 = distinct !{!116, !107, !117, !118}
!117 = !DILocation(line: 45, column: 5, scope: !100)
!118 = !{!"llvm.loop.name", !"VITIS_LOOP_43_1"}
!119 = !DILocation(line: 47, column: 29, scope: !120)
!120 = distinct !DILexicalBlock(scope: !20, file: !21, line: 47, column: 22)
!121 = !DILocation(line: 47, column: 27, scope: !120)
!122 = !DILocation(line: 47, column: 34, scope: !123)
!123 = distinct !DILexicalBlock(scope: !120, file: !21, line: 47, column: 22)
!124 = !DILocation(line: 47, column: 36, scope: !123)
!125 = !DILocation(line: 47, column: 22, scope: !120)
!126 = !DILocation(line: 50, column: 13, scope: !127)
!127 = distinct !DILexicalBlock(scope: !123, file: !21, line: 48, column: 5)
!128 = !DILocation(line: 50, column: 11, scope: !127)
!129 = !DILocation(line: 50, column: 7, scope: !127)
!130 = !DILocation(line: 52, column: 31, scope: !131)
!131 = distinct !DILexicalBlock(scope: !127, file: !21, line: 52, column: 24)
!132 = !DILocation(line: 52, column: 29, scope: !131)
!133 = !DILocation(line: 52, column: 36, scope: !134)
!134 = distinct !DILexicalBlock(scope: !131, file: !21, line: 52, column: 24)
!135 = !DILocation(line: 52, column: 38, scope: !134)
!136 = !DILocation(line: 52, column: 24, scope: !131)
!137 = !DILocation(line: 54, column: 15, scope: !138)
!138 = distinct !DILexicalBlock(scope: !134, file: !21, line: 52, column: 48)
!139 = !{!35, !140, i1 false, i1 true}
!140 = !{double 0.000000e+00, double 4.000000e+02}
!141 = !DILocation(line: 54, column: 21, scope: !138)
!142 = !DILocation(line: 54, column: 24, scope: !138)
!143 = !DILocation(line: 54, column: 25, scope: !138)
!144 = !{i1 false, !145, i1 false, i1 false}
!145 = !{double 0.000000e+00, double 1.600000e+01}
!146 = !DILocation(line: 54, column: 30, scope: !138)
!147 = !DILocation(line: 54, column: 29, scope: !138)
!148 = !DILocation(line: 54, column: 35, scope: !138)
!149 = !DILocation(line: 54, column: 38, scope: !138)
!150 = !DILocation(line: 54, column: 33, scope: !138)
!151 = !DILocation(line: 54, column: 19, scope: !138)
!152 = !DILocation(line: 54, column: 13, scope: !138)
!153 = !DILocation(line: 55, column: 7, scope: !138)
!154 = !DILocation(line: 52, column: 45, scope: !134)
!155 = !DILocation(line: 52, column: 24, scope: !134)
!156 = distinct !{!156, !136, !157, !158}
!157 = !DILocation(line: 55, column: 7, scope: !131)
!158 = !{!"llvm.loop.name", !"VITIS_LOOP_52_3"}
!159 = !DILocation(line: 56, column: 31, scope: !160)
!160 = distinct !DILexicalBlock(scope: !127, file: !21, line: 56, column: 24)
!161 = !DILocation(line: 56, column: 29, scope: !160)
!162 = !DILocation(line: 56, column: 36, scope: !163)
!163 = distinct !DILexicalBlock(scope: !160, file: !21, line: 56, column: 24)
!164 = !DILocation(line: 56, column: 38, scope: !163)
!165 = !DILocation(line: 56, column: 24, scope: !160)
!166 = !DILocation(line: 59, column: 28, scope: !167)
!167 = distinct !DILexicalBlock(scope: !163, file: !21, line: 56, column: 48)
!168 = !DILocation(line: 59, column: 21, scope: !167)
!169 = !{i1 false, !170, i1 false, i1 false}
!170 = !{double 0.000000e+00, double 1.000000e+00}
!171 = !DILocation(line: 59, column: 33, scope: !167)
!172 = !DILocation(line: 59, column: 36, scope: !167)
!173 = !DILocation(line: 59, column: 37, scope: !167)
!174 = !{i1 false, !175, i1 false, i1 false}
!175 = !{double 0.000000e+00, double 3.200000e+01}
!176 = !DILocation(line: 59, column: 42, scope: !167)
!177 = !DILocation(line: 59, column: 41, scope: !167)
!178 = !{i1 false, !179, i1 false, i1 false}
!179 = !{double 0.000000e+00, double 3.300000e+01}
!180 = !DILocation(line: 59, column: 31, scope: !167)
!181 = !DILocation(line: 59, column: 16, scope: !167)
!182 = !DILocation(line: 59, column: 9, scope: !167)
!183 = !DILocation(line: 59, column: 19, scope: !167)
!184 = !DILocation(line: 60, column: 7, scope: !167)
!185 = !DILocation(line: 56, column: 45, scope: !163)
!186 = !{i1 false, !187, i1 false, i1 false}
!187 = !{double 1.000000e+00, double 2.000000e+00}
!188 = !DILocation(line: 56, column: 24, scope: !163)
!189 = distinct !{!189, !165, !190, !191}
!190 = !DILocation(line: 60, column: 7, scope: !160)
!191 = !{!"llvm.loop.name", !"VITIS_LOOP_56_4"}
!192 = !DILocation(line: 61, column: 5, scope: !127)
!193 = !DILocation(line: 47, column: 43, scope: !123)
!194 = !DILocation(line: 47, column: 22, scope: !123)
!195 = distinct !{!195, !125, !196, !197}
!196 = !DILocation(line: 61, column: 5, scope: !120)
!197 = !{!"llvm.loop.name", !"VITIS_LOOP_47_2"}
!198 = !DILocation(line: 63, column: 29, scope: !199)
!199 = distinct !DILexicalBlock(scope: !20, file: !21, line: 63, column: 22)
!200 = !DILocation(line: 63, column: 27, scope: !199)
!201 = !DILocation(line: 63, column: 34, scope: !202)
!202 = distinct !DILexicalBlock(scope: !199, file: !21, line: 63, column: 22)
!203 = !DILocation(line: 63, column: 36, scope: !202)
!204 = !DILocation(line: 63, column: 22, scope: !199)
!205 = !DILocation(line: 64, column: 30, scope: !206)
!206 = distinct !DILexicalBlock(scope: !202, file: !21, line: 63, column: 46)
!207 = !DILocation(line: 64, column: 23, scope: !206)
!208 = !{!209, !31, i1 false, i1 true}
!209 = !{!"fixp", i32 32, i32 30}
!210 = !DILocation(line: 64, column: 9, scope: !206)
!211 = !DILocation(line: 64, column: 11, scope: !206)
!212 = !DILocation(line: 64, column: 14, scope: !206)
!213 = !DILocation(line: 65, column: 7, scope: !206)
!214 = !DILocation(line: 63, column: 43, scope: !202)
!215 = !{i1 false, !216, i1 false, i1 false}
!216 = !{double 1.000000e+00, double 3.000000e+00}
!217 = !DILocation(line: 63, column: 22, scope: !202)
!218 = distinct !{!218, !204, !219, !220}
!219 = !DILocation(line: 65, column: 7, scope: !199)
!220 = !{!"llvm.loop.name", !"VITIS_LOOP_63_5"}
!221 = !DILocation(line: 66, column: 1, scope: !20)
!222 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!223 = !{i32 0, i1 false, i32 0, i1 false}
!224 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!225 = !{i32 0, i1 false}
