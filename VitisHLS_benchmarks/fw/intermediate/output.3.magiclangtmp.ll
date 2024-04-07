; ModuleID = '/home/bruno/Desktop/benchmarks/fw/intermediate/output.2.magiclangtmp.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.global_ctors = appending global [0 x { i32, void ()*, i8* }] zeroinitializer, !taffo.structinfo !0
@.str = private unnamed_addr constant [23 x i8] c"scalar(range(-16, 16))\00", section "llvm.metadata", !taffo.info !3
@.str.1 = private unnamed_addr constant [11 x i8] c"fw_taffo.c\00", section "llvm.metadata", !taffo.info !5
@.str.2 = private unnamed_addr constant [24 x i8] c"target('path') scalar()\00", section "llvm.metadata", !taffo.info !7
@.str.3 = private unnamed_addr constant [9 x i8] c"scalar()\00", section "llvm.metadata", !taffo.info !3
@.str.4 = private unnamed_addr constant [5 x i8] c"%f \0A\00", align 1, !taffo.info !9

; Function Attrs: nounwind
define void @fw() #0 !dbg !18 !fpga.function.pragma !22 !taffo.start !25 !taffo.funinfo !13 {
entry:
  %n = alloca i32, align 4, !taffo.info !26
  %i = alloca i32, align 4, !taffo.info !28
  %j = alloca i32, align 4, !taffo.info !28
  %k = alloca i32, align 4, !taffo.info !28
  %path = alloca [256 x float], align 4, !taffo.info !30, !taffo.target !32
  %tmpa = alloca float, align 4, !taffo.info !33
  %tmpb = alloca float, align 4, !taffo.info !33
  %cond = alloca i32, align 4, !taffo.info !35
  %0 = bitcast i32* %n to i8*, !dbg !37
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #3, !dbg !37
  call void @llvm.dbg.declare(metadata i32* %n, metadata !38, metadata !DIExpression()), !dbg !40
  store i32 16, i32* %n, align 4, !dbg !40
  %1 = bitcast i32* %i to i8*, !dbg !41, !taffo.info !28
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #3, !dbg !41, !taffo.info !42
  call void @llvm.dbg.declare(metadata i32* %i, metadata !43, metadata !DIExpression()), !dbg !44
  %i1 = bitcast i32* %i to i8*, !dbg !41, !taffo.info !28
  %2 = bitcast i32* %j to i8*, !dbg !45, !taffo.info !28
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #3, !dbg !45, !taffo.info !42
  call void @llvm.dbg.declare(metadata i32* %j, metadata !46, metadata !DIExpression()), !dbg !47
  %j2 = bitcast i32* %j to i8*, !dbg !45, !taffo.info !28
  %3 = bitcast i32* %k to i8*, !dbg !48, !taffo.info !28
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #3, !dbg !48, !taffo.info !42
  call void @llvm.dbg.declare(metadata i32* %k, metadata !49, metadata !DIExpression()), !dbg !50
  %k3 = bitcast i32* %k to i8*, !dbg !48, !taffo.info !28
  %4 = bitcast [256 x float]* %path to i8*, !dbg !51, !taffo.info !42, !taffo.target !32
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* %4) #3, !dbg !51, !taffo.info !42, !taffo.target !32
  call void @llvm.dbg.declare(metadata [256 x float]* %path, metadata !52, metadata !DIExpression()), !dbg !57
  %path4 = bitcast [256 x float]* %path to i8*, !dbg !51, !taffo.info !42, !taffo.target !32
  br label %VITIS_LOOP_30_1, !dbg !51

VITIS_LOOP_30_1:                                  ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !58, !taffo.info !42
  br label %for.cond, !dbg !60

for.cond:                                         ; preds = %for.inc27, %VITIS_LOOP_30_1
  %5 = load i32, i32* %i, align 4, !dbg !61, !taffo.info !63
  %6 = load i32, i32* %n, align 4, !dbg !65, !taffo.info !26
  %cmp = icmp slt i32 %5, %6, !dbg !66, !taffo.info !67
  br i1 %cmp, label %for.body, label %for.end29, !dbg !68, !taffo.info !42

for.body:                                         ; preds = %for.cond
  br label %VITIS_LOOP_31_2, !dbg !69

VITIS_LOOP_31_2:                                  ; preds = %for.body
  store i32 0, i32* %j, align 4, !dbg !70, !taffo.info !42
  br label %for.cond5, !dbg !73

for.cond5:                                        ; preds = %for.inc, %VITIS_LOOP_31_2
  %7 = load i32, i32* %j, align 4, !dbg !74, !taffo.info !76
  %8 = load i32, i32* %n, align 4, !dbg !78, !taffo.info !26
  %cmp6 = icmp slt i32 %7, %8, !dbg !79, !taffo.info !67
  br i1 %cmp6, label %for.body7, label %for.end, !dbg !80, !taffo.info !42

for.body7:                                        ; preds = %for.cond5
  %9 = load i32, i32* %i, align 4, !dbg !81, !taffo.info !28
  %10 = load i32, i32* %j, align 4, !dbg !83, !taffo.info !28
  %mul = mul nsw i32 %9, %10, !dbg !84, !taffo.info !85
  %rem = srem i32 %mul, 7, !dbg !87, !taffo.info !88
  %add = add nsw i32 %rem, 1, !dbg !90, !taffo.info !91
  %conv = sitofp i32 %add to float, !dbg !81, !taffo.info !91
  %11 = load i32, i32* %i, align 4, !dbg !93, !taffo.info !28
  %12 = load i32, i32* %n, align 4, !dbg !94, !taffo.info !26
  %mul8 = mul nsw i32 %11, %12, !dbg !95, !taffo.info !85
  %13 = load i32, i32* %j, align 4, !dbg !96, !taffo.info !28
  %add9 = add nsw i32 %mul8, %13, !dbg !97, !taffo.info !98
  %idxprom = sext i32 %add9 to i64, !dbg !100, !taffo.info !98
  %arrayidx = getelementptr inbounds [256 x float], [256 x float]* %path, i64 0, i64 %idxprom, !dbg !100, !taffo.info !30, !taffo.target !32
  store float %conv, float* %arrayidx, align 4, !dbg !101, !taffo.info !42, !taffo.target !32
  %14 = load i32, i32* %i, align 4, !dbg !102, !taffo.info !28
  %15 = load i32, i32* %j, align 4, !dbg !104, !taffo.info !28
  %add10 = add nsw i32 %14, %15, !dbg !105, !taffo.info !106
  %rem11 = srem i32 %add10, 13, !dbg !108, !taffo.info !109
  %cmp12 = icmp eq i32 %rem11, 0, !dbg !111, !taffo.info !67
  br i1 %cmp12, label %if.then, label %lor.lhs.false, !dbg !112, !taffo.info !42

lor.lhs.false:                                    ; preds = %for.body7
  %16 = load i32, i32* %i, align 4, !dbg !113, !taffo.info !63
  %17 = load i32, i32* %j, align 4, !dbg !114, !taffo.info !63
  %add14 = add nsw i32 %16, %17, !dbg !115, !taffo.info !116
  %rem15 = srem i32 %add14, 7, !dbg !118, !taffo.info !88
  %cmp16 = icmp eq i32 %rem15, 0, !dbg !119, !taffo.info !67
  br i1 %cmp16, label %if.then, label %lor.lhs.false18, !dbg !120, !taffo.info !42

lor.lhs.false18:                                  ; preds = %lor.lhs.false
  %18 = load i32, i32* %i, align 4, !dbg !121, !taffo.info !63
  %19 = load i32, i32* %j, align 4, !dbg !122, !taffo.info !63
  %add19 = add nsw i32 %18, %19, !dbg !123, !taffo.info !116
  %rem20 = srem i32 %add19, 11, !dbg !124, !taffo.info !125
  %cmp21 = icmp eq i32 %rem20, 0, !dbg !127, !taffo.info !67
  br i1 %cmp21, label %if.then, label %if.end, !dbg !128, !taffo.info !42

if.then:                                          ; preds = %lor.lhs.false18, %lor.lhs.false, %for.body7
  %20 = load i32, i32* %i, align 4, !dbg !129, !taffo.info !28
  %21 = load i32, i32* %n, align 4, !dbg !130, !taffo.info !26
  %mul23 = mul nsw i32 %20, %21, !dbg !131, !taffo.info !85
  %22 = load i32, i32* %j, align 4, !dbg !132, !taffo.info !28
  %add24 = add nsw i32 %mul23, %22, !dbg !133, !taffo.info !98
  %idxprom25 = sext i32 %add24 to i64, !dbg !134, !taffo.info !98
  %arrayidx26 = getelementptr inbounds [256 x float], [256 x float]* %path, i64 0, i64 %idxprom25, !dbg !134, !taffo.info !30, !taffo.target !32
  store float 9.990000e+02, float* %arrayidx26, align 4, !dbg !135, !taffo.info !42, !taffo.target !32
  br label %if.end, !dbg !134

if.end:                                           ; preds = %if.then, %lor.lhs.false18
  br label %for.inc, !dbg !136

for.inc:                                          ; preds = %if.end
  %23 = load i32, i32* %j, align 4, !dbg !137, !taffo.info !63
  %inc = add nsw i32 %23, 1, !dbg !137, !taffo.info !138
  store i32 %inc, i32* %j, align 4, !dbg !137, !taffo.info !42
  br label %for.cond5, !dbg !140, !llvm.loop !141

for.end:                                          ; preds = %for.cond5
  br label %for.inc27, !dbg !144

for.inc27:                                        ; preds = %for.end
  %24 = load i32, i32* %i, align 4, !dbg !145, !taffo.info !28
  %inc28 = add nsw i32 %24, 1, !dbg !145, !taffo.info !146
  store i32 %inc28, i32* %i, align 4, !dbg !145, !taffo.info !42
  br label %for.cond, !dbg !148, !llvm.loop !149

for.end29:                                        ; preds = %for.cond
  br label %VITIS_LOOP_38_3, !dbg !150

VITIS_LOOP_38_3:                                  ; preds = %for.end29
  store i32 0, i32* %k, align 4, !dbg !152, !taffo.info !42
  br label %for.cond30, !dbg !154

for.cond30:                                       ; preds = %for.inc85, %VITIS_LOOP_38_3
  %25 = load i32, i32* %k, align 4, !dbg !155, !taffo.info !63
  %cmp31 = icmp slt i32 %25, 16, !dbg !157, !taffo.info !67
  br i1 %cmp31, label %for.body32, label %for.end87, !dbg !158, !taffo.info !42

for.body32:                                       ; preds = %for.cond30
  br label %VITIS_LOOP_39_4, !dbg !159

VITIS_LOOP_39_4:                                  ; preds = %for.body32
  store i32 0, i32* %i, align 4, !dbg !160, !taffo.info !42
  br label %for.cond33, !dbg !163

for.cond33:                                       ; preds = %for.inc82, %VITIS_LOOP_39_4
  %26 = load i32, i32* %i, align 4, !dbg !164, !taffo.info !63
  %cmp34 = icmp slt i32 %26, 16, !dbg !166, !taffo.info !67
  br i1 %cmp34, label %for.body35, label %for.end84, !dbg !167, !taffo.info !42

for.body35:                                       ; preds = %for.cond33
  br label %VITIS_LOOP_40_5, !dbg !168

VITIS_LOOP_40_5:                                  ; preds = %for.body35
  store i32 0, i32* %j, align 4, !dbg !169, !taffo.info !42
  br label %for.cond36, !dbg !172

for.cond36:                                       ; preds = %for.inc79, %VITIS_LOOP_40_5
  %27 = load i32, i32* %j, align 4, !dbg !173, !taffo.info !76
  %cmp37 = icmp slt i32 %27, 16, !dbg !175, !taffo.info !67
  br i1 %cmp37, label %for.body38, label %for.end81, !dbg !176, !taffo.info !42

for.body38:                                       ; preds = %for.cond36
  %28 = bitcast float* %tmpa to i8*, !dbg !177, !taffo.info !42
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %28) #3, !dbg !177, !taffo.info !42
  call void @llvm.dbg.declare(metadata float* %tmpa, metadata !179, metadata !DIExpression()), !dbg !180
  %tmpa39 = bitcast float* %tmpa to i8*, !dbg !177, !taffo.info !42
  %29 = load i32, i32* %i, align 4, !dbg !181, !taffo.info !63
  %30 = load i32, i32* %n, align 4, !dbg !182, !taffo.info !26
  %mul40 = mul nsw i32 %29, %30, !dbg !183, !taffo.info !184
  %31 = load i32, i32* %k, align 4, !dbg !186, !taffo.info !63
  %add41 = add nsw i32 %mul40, %31, !dbg !187, !taffo.info !188
  %idxprom42 = sext i32 %add41 to i64, !dbg !190, !taffo.info !188
  %arrayidx43 = getelementptr inbounds [256 x float], [256 x float]* %path, i64 0, i64 %idxprom42, !dbg !190, !taffo.info !30, !taffo.target !32
  %32 = load float, float* %arrayidx43, align 4, !dbg !190, !taffo.info !30, !taffo.target !32
  store float %32, float* %tmpa, align 4, !dbg !180, !taffo.info !42
  %33 = bitcast float* %tmpb to i8*, !dbg !191, !taffo.info !42
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %33) #3, !dbg !191, !taffo.info !42
  call void @llvm.dbg.declare(metadata float* %tmpb, metadata !192, metadata !DIExpression()), !dbg !193
  %tmpb44 = bitcast float* %tmpb to i8*, !dbg !191, !taffo.info !42
  %34 = load i32, i32* %k, align 4, !dbg !194, !taffo.info !63
  %35 = load i32, i32* %n, align 4, !dbg !195, !taffo.info !26
  %mul45 = mul nsw i32 %34, %35, !dbg !196, !taffo.info !184
  %36 = load i32, i32* %j, align 4, !dbg !197, !taffo.info !28
  %add46 = add nsw i32 %mul45, %36, !dbg !198, !taffo.info !199
  %idxprom47 = sext i32 %add46 to i64, !dbg !201, !taffo.info !199
  %arrayidx48 = getelementptr inbounds [256 x float], [256 x float]* %path, i64 0, i64 %idxprom47, !dbg !201, !taffo.info !30, !taffo.target !32
  %37 = load float, float* %arrayidx48, align 4, !dbg !201, !taffo.info !30, !taffo.target !32
  store float %37, float* %tmpb, align 4, !dbg !193, !taffo.info !42
  %38 = bitcast i32* %cond to i8*, !dbg !202
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %38) #3, !dbg !202
  call void @llvm.dbg.declare(metadata i32* %cond, metadata !203, metadata !DIExpression()), !dbg !204
  %39 = load i32, i32* %i, align 4, !dbg !205, !taffo.info !63
  %40 = load i32, i32* %n, align 4, !dbg !206, !taffo.info !26
  %mul49 = mul nsw i32 %39, %40, !dbg !207, !taffo.info !184
  %41 = load i32, i32* %j, align 4, !dbg !208, !taffo.info !28
  %add50 = add nsw i32 %mul49, %41, !dbg !209, !taffo.info !199
  %idxprom51 = sext i32 %add50 to i64, !dbg !210, !taffo.info !199
  %arrayidx52 = getelementptr inbounds [256 x float], [256 x float]* %path, i64 0, i64 %idxprom51, !dbg !210, !taffo.info !30, !taffo.target !32
  %42 = load float, float* %arrayidx52, align 4, !dbg !210, !taffo.info !30, !taffo.target !32
  %43 = load i32, i32* %i, align 4, !dbg !211, !taffo.info !63
  %44 = load i32, i32* %n, align 4, !dbg !212, !taffo.info !26
  %mul53 = mul nsw i32 %43, %44, !dbg !213, !taffo.info !184
  %45 = load i32, i32* %k, align 4, !dbg !214, !taffo.info !63
  %add54 = add nsw i32 %mul53, %45, !dbg !215, !taffo.info !188
  %idxprom55 = sext i32 %add54 to i64, !dbg !216, !taffo.info !188
  %arrayidx56 = getelementptr inbounds [256 x float], [256 x float]* %path, i64 0, i64 %idxprom55, !dbg !216, !taffo.info !30, !taffo.target !32
  %46 = load float, float* %arrayidx56, align 4, !dbg !216, !taffo.info !30, !taffo.target !32
  %47 = load i32, i32* %k, align 4, !dbg !217, !taffo.info !63
  %48 = load i32, i32* %n, align 4, !dbg !218, !taffo.info !26
  %mul57 = mul nsw i32 %47, %48, !dbg !219, !taffo.info !184
  %49 = load i32, i32* %j, align 4, !dbg !220, !taffo.info !28
  %add58 = add nsw i32 %mul57, %49, !dbg !221, !taffo.info !199
  %idxprom59 = sext i32 %add58 to i64, !dbg !222, !taffo.info !199
  %arrayidx60 = getelementptr inbounds [256 x float], [256 x float]* %path, i64 0, i64 %idxprom59, !dbg !222, !taffo.info !30, !taffo.target !32
  %50 = load float, float* %arrayidx60, align 4, !dbg !222, !taffo.info !30, !taffo.target !32
  %add61 = fadd float %46, %50, !dbg !223, !taffo.info !224, !taffo.target !32
  %cmp62 = fcmp olt float %42, %add61, !dbg !226, !taffo.info !67, !taffo.target !32
  %conv63 = zext i1 %cmp62 to i32, !dbg !210, !taffo.info !67, !taffo.target !32
  store i32 %conv63, i32* %cond, align 4, !dbg !204, !taffo.info !42, !taffo.target !32
  %51 = load i32, i32* %cond, align 4, !dbg !227, !taffo.info !35
  %tobool = icmp ne i32 %51, 0, !dbg !227, !taffo.info !35
  br i1 %tobool, label %if.then64, label %if.else, !dbg !229

if.then64:                                        ; preds = %for.body38
  %52 = load i32, i32* %i, align 4, !dbg !230, !taffo.info !63
  %53 = load i32, i32* %n, align 4, !dbg !232, !taffo.info !26
  %mul65 = mul nsw i32 %52, %53, !dbg !233, !taffo.info !184
  %54 = load i32, i32* %j, align 4, !dbg !234, !taffo.info !63
  %add66 = add nsw i32 %mul65, %54, !dbg !235, !taffo.info !188
  %idxprom67 = sext i32 %add66 to i64, !dbg !236, !taffo.info !188
  %arrayidx68 = getelementptr inbounds [256 x float], [256 x float]* %path, i64 0, i64 %idxprom67, !dbg !236, !taffo.info !30, !taffo.target !32
  %55 = load float, float* %arrayidx68, align 4, !dbg !236, !taffo.info !30, !taffo.target !32
  %56 = load i32, i32* %i, align 4, !dbg !237, !taffo.info !63
  %57 = load i32, i32* %n, align 4, !dbg !238, !taffo.info !26
  %mul69 = mul nsw i32 %56, %57, !dbg !239, !taffo.info !184
  %58 = load i32, i32* %j, align 4, !dbg !240, !taffo.info !63
  %add70 = add nsw i32 %mul69, %58, !dbg !241, !taffo.info !188
  %idxprom71 = sext i32 %add70 to i64, !dbg !242, !taffo.info !188
  %arrayidx72 = getelementptr inbounds [256 x float], [256 x float]* %path, i64 0, i64 %idxprom71, !dbg !242, !taffo.info !30, !taffo.target !32
  store float %55, float* %arrayidx72, align 4, !dbg !243, !taffo.info !42, !taffo.target !32
  br label %if.end78, !dbg !244

if.else:                                          ; preds = %for.body38
  %59 = load float, float* %tmpa, align 4, !dbg !245, !taffo.info !33
  %60 = load float, float* %tmpb, align 4, !dbg !247, !taffo.info !33
  %add73 = fadd float %59, %60, !dbg !248, !taffo.info !224
  %61 = load i32, i32* %i, align 4, !dbg !249, !taffo.info !63
  %62 = load i32, i32* %n, align 4, !dbg !250, !taffo.info !26
  %mul74 = mul nsw i32 %61, %62, !dbg !251, !taffo.info !184
  %63 = load i32, i32* %j, align 4, !dbg !252, !taffo.info !28
  %add75 = add nsw i32 %mul74, %63, !dbg !253, !taffo.info !199
  %idxprom76 = sext i32 %add75 to i64, !dbg !254, !taffo.info !199
  %arrayidx77 = getelementptr inbounds [256 x float], [256 x float]* %path, i64 0, i64 %idxprom76, !dbg !254, !taffo.info !30, !taffo.target !32
  store float %add73, float* %arrayidx77, align 4, !dbg !255, !taffo.info !42, !taffo.target !32
  br label %if.end78

if.end78:                                         ; preds = %if.else, %if.then64
  %64 = bitcast i32* %cond to i8*, !dbg !256, !taffo.info !35
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %64) #3, !dbg !256
  %65 = bitcast float* %tmpb to i8*, !dbg !256, !taffo.info !33
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %65) #3, !dbg !256, !taffo.info !42
  %66 = bitcast float* %tmpa to i8*, !dbg !256, !taffo.info !33
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %66) #3, !dbg !256, !taffo.info !42
  br label %for.inc79, !dbg !257

for.inc79:                                        ; preds = %if.end78
  %67 = load i32, i32* %j, align 4, !dbg !258, !taffo.info !63
  %inc80 = add nsw i32 %67, 1, !dbg !258, !taffo.info !138
  store i32 %inc80, i32* %j, align 4, !dbg !258, !taffo.info !42
  br label %for.cond36, !dbg !259, !llvm.loop !260

for.end81:                                        ; preds = %for.cond36
  br label %for.inc82, !dbg !263

for.inc82:                                        ; preds = %for.end81
  %68 = load i32, i32* %i, align 4, !dbg !264, !taffo.info !28
  %inc83 = add nsw i32 %68, 1, !dbg !264, !taffo.info !146
  store i32 %inc83, i32* %i, align 4, !dbg !264, !taffo.info !42
  br label %for.cond33, !dbg !265, !llvm.loop !266

for.end84:                                        ; preds = %for.cond33
  br label %for.inc85, !dbg !269

for.inc85:                                        ; preds = %for.end84
  %69 = load i32, i32* %k, align 4, !dbg !270, !taffo.info !28
  %inc86 = add nsw i32 %69, 1, !dbg !270, !taffo.info !146
  store i32 %inc86, i32* %k, align 4, !dbg !270, !taffo.info !42
  br label %for.cond30, !dbg !271, !llvm.loop !272

for.end87:                                        ; preds = %for.cond30
  br label %VITIS_LOOP_53_6, !dbg !273

VITIS_LOOP_53_6:                                  ; preds = %for.end87
  store i32 0, i32* %i, align 4, !dbg !275, !taffo.info !42
  br label %for.cond88, !dbg !277

for.cond88:                                       ; preds = %for.inc94, %VITIS_LOOP_53_6
  %70 = load i32, i32* %i, align 4, !dbg !278, !taffo.info !63
  %cmp89 = icmp slt i32 %70, 256, !dbg !280, !taffo.info !281
  br i1 %cmp89, label %for.body90, label %for.end96, !dbg !283, !taffo.info !42

for.body90:                                       ; preds = %for.cond88
  %71 = load i32, i32* %i, align 4, !dbg !284, !taffo.info !28
  %idxprom91 = sext i32 %71 to i64, !dbg !286, !taffo.info !28
  %arrayidx92 = getelementptr inbounds [256 x float], [256 x float]* %path, i64 0, i64 %idxprom91, !dbg !286, !taffo.info !30, !taffo.target !32
  %72 = load float, float* %arrayidx92, align 4, !dbg !286, !taffo.info !30, !taffo.target !32
  %conv93 = fpext float %72 to double, !dbg !286, !taffo.info !30, !taffo.target !32
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), double %conv93), !dbg !287, !taffo.info !42, !taffo.target !32
  br label %for.inc94, !dbg !288

for.inc94:                                        ; preds = %for.body90
  %73 = load i32, i32* %i, align 4, !dbg !289, !taffo.info !28
  %inc95 = add nsw i32 %73, 1, !dbg !289, !taffo.info !146
  store i32 %inc95, i32* %i, align 4, !dbg !289, !taffo.info !42
  br label %for.cond88, !dbg !290, !llvm.loop !291

for.end96:                                        ; preds = %for.cond88
  %74 = bitcast [256 x float]* %path to i8*, !dbg !294, !taffo.info !30, !taffo.target !32
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* %74) #3, !dbg !294, !taffo.info !42, !taffo.target !32
  %75 = bitcast i32* %k to i8*, !dbg !294, !taffo.info !28
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %75) #3, !dbg !294, !taffo.info !42
  %76 = bitcast i32* %j to i8*, !dbg !294, !taffo.info !28
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %76) #3, !dbg !294, !taffo.info !42
  %77 = bitcast i32* %i to i8*, !dbg !294, !taffo.info !28
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %77) #3, !dbg !294, !taffo.info !42
  %78 = bitcast i32* %n to i8*, !dbg !294, !taffo.info !26
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %78) #3, !dbg !294
  ret void, !dbg !294
}

; Function Attrs: argmemonly nounwind
declare !taffo.funinfo !295 void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable
declare !taffo.funinfo !296 void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind
declare !taffo.funinfo !297 void @llvm.var.annotation(i8*, i8*, i8*, i32) #3

; Function Attrs: argmemonly nounwind
declare !taffo.funinfo !295 void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

declare !taffo.funinfo !298 i32 @printf(i8*, ...) #4

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.top.func"="fw" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nounwind }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!11}
!llvm.ident = !{!14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14}
!llvm.module.flags = !{!15, !16, !17}

!0 = !{!1, !1, !1}
!1 = !{i1 false, !2, i1 false, i1 false}
!2 = !{double 0.000000e+00, double 0.000000e+00}
!3 = !{i1 false, !4, i1 false, i1 false}
!4 = !{double 0.000000e+00, double 1.150000e+02}
!5 = !{i1 false, !6, i1 false, i1 false}
!6 = !{double 0.000000e+00, double 1.190000e+02}
!7 = !{i1 false, !8, i1 false, i1 false}
!8 = !{double 0.000000e+00, double 1.160000e+02}
!9 = !{i1 false, !10, i1 false, i1 false}
!10 = !{double 0.000000e+00, double 1.020000e+02}
!11 = distinct !DICompileUnit(language: DW_LANG_C99, file: !12, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !13)
!12 = !DIFile(filename: "/home/bruno/Desktop/benchmarks/fw/proj_fw/solution1/.autopilot/db/fw_taffo.pp.0.c", directory: "/home/bruno/Desktop/benchmarks/fw")
!13 = !{}
!14 = !{!"clang version 7.0.0 "}
!15 = !{i32 2, !"Dwarf Version", i32 4}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{i32 1, !"wchar_size", i32 4}
!18 = distinct !DISubprogram(name: "fw", scope: !19, file: !19, line: 21, type: !20, scopeLine: 21, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !13)
!19 = !DIFile(filename: "fw_taffo.c", directory: "/home/bruno/Desktop/benchmarks/fw")
!20 = !DISubroutineType(types: !21)
!21 = !{null}
!22 = !{!23}
!23 = !{!"fpga.top", !"user", !24}
!24 = !DILocation(line: 21, column: 16, scope: !18)
!25 = !{i1 true}
!26 = !{i1 false, !27, i1 false, i1 false}
!27 = !{double 1.600000e+01, double 1.600000e+01}
!28 = !{i1 false, !29, i1 false, i1 true}
!29 = !{double -1.600000e+01, double 1.600000e+01}
!30 = !{i1 false, !31, i1 false, i1 true}
!31 = !{double -1.500000e+01, double 1.998000e+03}
!32 = !{!"path"}
!33 = !{i1 false, !34, i1 false, i1 true}
!34 = !{double -6.000000e+00, double 9.990000e+02}
!35 = !{i1 false, !36, i1 false, i1 false}
!36 = !{double 0.000000e+00, double 1.000000e+00}
!37 = !DILocation(line: 23, column: 3, scope: !18)
!38 = !DILocalVariable(name: "n", scope: !18, file: !19, line: 23, type: !39)
!39 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!40 = !DILocation(line: 23, column: 7, scope: !18)
!41 = !DILocation(line: 24, column: 3, scope: !18)
!42 = !{i1 false, i1 false, i1 false, i1 true}
!43 = !DILocalVariable(name: "i", scope: !18, file: !19, line: 24, type: !39)
!44 = !DILocation(line: 24, column: 7, scope: !18)
!45 = !DILocation(line: 25, column: 3, scope: !18)
!46 = !DILocalVariable(name: "j", scope: !18, file: !19, line: 25, type: !39)
!47 = !DILocation(line: 25, column: 7, scope: !18)
!48 = !DILocation(line: 26, column: 3, scope: !18)
!49 = !DILocalVariable(name: "k", scope: !18, file: !19, line: 26, type: !39)
!50 = !DILocation(line: 26, column: 7, scope: !18)
!51 = !DILocation(line: 28, column: 3, scope: !18)
!52 = !DILocalVariable(name: "path", scope: !18, file: !19, line: 28, type: !53)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 8192, elements: !55)
!54 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!55 = !{!56}
!56 = !DISubrange(count: 256)
!57 = !DILocation(line: 28, column: 9, scope: !18)
!58 = !DILocation(line: 30, column: 27, scope: !59)
!59 = distinct !DILexicalBlock(scope: !18, file: !19, line: 30, column: 20)
!60 = !DILocation(line: 30, column: 25, scope: !59)
!61 = !DILocation(line: 30, column: 32, scope: !62)
!62 = distinct !DILexicalBlock(scope: !59, file: !19, line: 30, column: 20)
!63 = !{i1 false, !64, i1 false, i1 true}
!64 = !{double -1.600000e+01, double 1.700000e+01}
!65 = !DILocation(line: 30, column: 36, scope: !62)
!66 = !DILocation(line: 30, column: 34, scope: !62)
!67 = !{i1 false, !36, i1 false, i1 true}
!68 = !DILocation(line: 30, column: 20, scope: !59)
!69 = !DILocation(line: 30, column: 43, scope: !62)
!70 = !DILocation(line: 31, column: 29, scope: !71)
!71 = distinct !DILexicalBlock(scope: !72, file: !19, line: 31, column: 22)
!72 = distinct !DILexicalBlock(scope: !62, file: !19, line: 30, column: 43)
!73 = !DILocation(line: 31, column: 27, scope: !71)
!74 = !DILocation(line: 31, column: 34, scope: !75)
!75 = distinct !DILexicalBlock(scope: !71, file: !19, line: 31, column: 22)
!76 = !{i1 false, !77, i1 false, i1 true}
!77 = !{double -1.600000e+01, double 1.800000e+01}
!78 = !DILocation(line: 31, column: 38, scope: !75)
!79 = !DILocation(line: 31, column: 36, scope: !75)
!80 = !DILocation(line: 31, column: 22, scope: !71)
!81 = !DILocation(line: 32, column: 21, scope: !82)
!82 = distinct !DILexicalBlock(scope: !75, file: !19, line: 31, column: 46)
!83 = !DILocation(line: 32, column: 23, scope: !82)
!84 = !DILocation(line: 32, column: 22, scope: !82)
!85 = !{i1 false, !86, i1 false, i1 true}
!86 = !{double -2.560000e+02, double 2.560000e+02}
!87 = !DILocation(line: 32, column: 24, scope: !82)
!88 = !{i1 false, !89, i1 false, i1 true}
!89 = !{double -7.000000e+00, double 7.000000e+00}
!90 = !DILocation(line: 32, column: 26, scope: !82)
!91 = !{i1 false, !92, i1 false, i1 true}
!92 = !{double -6.000000e+00, double 8.000000e+00}
!93 = !DILocation(line: 32, column: 12, scope: !82)
!94 = !DILocation(line: 32, column: 14, scope: !82)
!95 = !DILocation(line: 32, column: 13, scope: !82)
!96 = !DILocation(line: 32, column: 16, scope: !82)
!97 = !DILocation(line: 32, column: 15, scope: !82)
!98 = !{i1 false, !99, i1 false, i1 true}
!99 = !{double -2.720000e+02, double 2.720000e+02}
!100 = !DILocation(line: 32, column: 7, scope: !82)
!101 = !DILocation(line: 32, column: 19, scope: !82)
!102 = !DILocation(line: 33, column: 12, scope: !103)
!103 = distinct !DILexicalBlock(scope: !82, file: !19, line: 33, column: 11)
!104 = !DILocation(line: 33, column: 14, scope: !103)
!105 = !DILocation(line: 33, column: 13, scope: !103)
!106 = !{i1 false, !107, i1 false, i1 true}
!107 = !{double -3.200000e+01, double 3.200000e+01}
!108 = !DILocation(line: 33, column: 16, scope: !103)
!109 = !{i1 false, !110, i1 false, i1 true}
!110 = !{double -1.300000e+01, double 1.300000e+01}
!111 = !DILocation(line: 33, column: 20, scope: !103)
!112 = !DILocation(line: 33, column: 25, scope: !103)
!113 = !DILocation(line: 33, column: 29, scope: !103)
!114 = !DILocation(line: 33, column: 31, scope: !103)
!115 = !DILocation(line: 33, column: 30, scope: !103)
!116 = !{i1 false, !117, i1 false, i1 true}
!117 = !{double -3.200000e+01, double 3.400000e+01}
!118 = !DILocation(line: 33, column: 33, scope: !103)
!119 = !DILocation(line: 33, column: 35, scope: !103)
!120 = !DILocation(line: 33, column: 39, scope: !103)
!121 = !DILocation(line: 33, column: 43, scope: !103)
!122 = !DILocation(line: 33, column: 45, scope: !103)
!123 = !DILocation(line: 33, column: 44, scope: !103)
!124 = !DILocation(line: 33, column: 47, scope: !103)
!125 = !{i1 false, !126, i1 false, i1 true}
!126 = !{double -1.100000e+01, double 1.100000e+01}
!127 = !DILocation(line: 33, column: 51, scope: !103)
!128 = !DILocation(line: 33, column: 11, scope: !82)
!129 = !DILocation(line: 34, column: 15, scope: !103)
!130 = !DILocation(line: 34, column: 17, scope: !103)
!131 = !DILocation(line: 34, column: 16, scope: !103)
!132 = !DILocation(line: 34, column: 19, scope: !103)
!133 = !DILocation(line: 34, column: 18, scope: !103)
!134 = !DILocation(line: 34, column: 10, scope: !103)
!135 = !DILocation(line: 34, column: 22, scope: !103)
!136 = !DILocation(line: 35, column: 5, scope: !82)
!137 = !DILocation(line: 31, column: 42, scope: !75)
!138 = !{i1 false, !139, i1 false, i1 true}
!139 = !{double -1.500000e+01, double 1.800000e+01}
!140 = !DILocation(line: 31, column: 22, scope: !75)
!141 = distinct !{!141, !80, !142, !143}
!142 = !DILocation(line: 35, column: 5, scope: !71)
!143 = !{!"llvm.loop.name", !"VITIS_LOOP_31_2"}
!144 = !DILocation(line: 36, column: 3, scope: !72)
!145 = !DILocation(line: 30, column: 40, scope: !62)
!146 = !{i1 false, !147, i1 false, i1 true}
!147 = !{double -1.500000e+01, double 1.700000e+01}
!148 = !DILocation(line: 30, column: 20, scope: !62)
!149 = distinct !{!149, !68, !150, !151}
!150 = !DILocation(line: 36, column: 3, scope: !59)
!151 = !{!"llvm.loop.name", !"VITIS_LOOP_30_1"}
!152 = !DILocation(line: 38, column: 27, scope: !153)
!153 = distinct !DILexicalBlock(scope: !18, file: !19, line: 38, column: 20)
!154 = !DILocation(line: 38, column: 25, scope: !153)
!155 = !DILocation(line: 38, column: 32, scope: !156)
!156 = distinct !DILexicalBlock(scope: !153, file: !19, line: 38, column: 20)
!157 = !DILocation(line: 38, column: 34, scope: !156)
!158 = !DILocation(line: 38, column: 20, scope: !153)
!159 = !DILocation(line: 38, column: 44, scope: !156)
!160 = !DILocation(line: 39, column: 30, scope: !161)
!161 = distinct !DILexicalBlock(scope: !162, file: !19, line: 39, column: 24)
!162 = distinct !DILexicalBlock(scope: !156, file: !19, line: 38, column: 44)
!163 = !DILocation(line: 39, column: 28, scope: !161)
!164 = !DILocation(line: 39, column: 35, scope: !165)
!165 = distinct !DILexicalBlock(scope: !161, file: !19, line: 39, column: 24)
!166 = !DILocation(line: 39, column: 37, scope: !165)
!167 = !DILocation(line: 39, column: 24, scope: !161)
!168 = !DILocation(line: 39, column: 47, scope: !165)
!169 = !DILocation(line: 40, column: 33, scope: !170)
!170 = distinct !DILexicalBlock(scope: !171, file: !19, line: 40, column: 26)
!171 = distinct !DILexicalBlock(scope: !165, file: !19, line: 39, column: 47)
!172 = !DILocation(line: 40, column: 31, scope: !170)
!173 = !DILocation(line: 40, column: 38, scope: !174)
!174 = distinct !DILexicalBlock(scope: !170, file: !19, line: 40, column: 26)
!175 = !DILocation(line: 40, column: 40, scope: !174)
!176 = !DILocation(line: 40, column: 26, scope: !170)
!177 = !DILocation(line: 41, column: 11, scope: !178)
!178 = distinct !DILexicalBlock(scope: !174, file: !19, line: 40, column: 51)
!179 = !DILocalVariable(name: "tmpa", scope: !178, file: !19, line: 41, type: !54)
!180 = !DILocation(line: 41, column: 55, scope: !178)
!181 = !DILocation(line: 41, column: 67, scope: !178)
!182 = !DILocation(line: 41, column: 69, scope: !178)
!183 = !DILocation(line: 41, column: 68, scope: !178)
!184 = !{i1 false, !185, i1 false, i1 true}
!185 = !{double -2.560000e+02, double 2.720000e+02}
!186 = !DILocation(line: 41, column: 71, scope: !178)
!187 = !DILocation(line: 41, column: 70, scope: !178)
!188 = !{i1 false, !189, i1 false, i1 true}
!189 = !{double -2.720000e+02, double 2.890000e+02}
!190 = !DILocation(line: 41, column: 62, scope: !178)
!191 = !DILocation(line: 42, column: 11, scope: !178)
!192 = !DILocalVariable(name: "tmpb", scope: !178, file: !19, line: 42, type: !54)
!193 = !DILocation(line: 42, column: 55, scope: !178)
!194 = !DILocation(line: 42, column: 67, scope: !178)
!195 = !DILocation(line: 42, column: 69, scope: !178)
!196 = !DILocation(line: 42, column: 68, scope: !178)
!197 = !DILocation(line: 42, column: 71, scope: !178)
!198 = !DILocation(line: 42, column: 70, scope: !178)
!199 = !{i1 false, !200, i1 false, i1 true}
!200 = !{double -2.720000e+02, double 2.880000e+02}
!201 = !DILocation(line: 42, column: 62, scope: !178)
!202 = !DILocation(line: 43, column: 11, scope: !178)
!203 = !DILocalVariable(name: "cond", scope: !178, file: !19, line: 43, type: !39)
!204 = !DILocation(line: 43, column: 15, scope: !178)
!205 = !DILocation(line: 43, column: 27, scope: !178)
!206 = !DILocation(line: 43, column: 29, scope: !178)
!207 = !DILocation(line: 43, column: 28, scope: !178)
!208 = !DILocation(line: 43, column: 31, scope: !178)
!209 = !DILocation(line: 43, column: 30, scope: !178)
!210 = !DILocation(line: 43, column: 22, scope: !178)
!211 = !DILocation(line: 43, column: 41, scope: !178)
!212 = !DILocation(line: 43, column: 43, scope: !178)
!213 = !DILocation(line: 43, column: 42, scope: !178)
!214 = !DILocation(line: 43, column: 45, scope: !178)
!215 = !DILocation(line: 43, column: 44, scope: !178)
!216 = !DILocation(line: 43, column: 36, scope: !178)
!217 = !DILocation(line: 43, column: 55, scope: !178)
!218 = !DILocation(line: 43, column: 57, scope: !178)
!219 = !DILocation(line: 43, column: 56, scope: !178)
!220 = !DILocation(line: 43, column: 59, scope: !178)
!221 = !DILocation(line: 43, column: 58, scope: !178)
!222 = !DILocation(line: 43, column: 50, scope: !178)
!223 = !DILocation(line: 43, column: 48, scope: !178)
!224 = !{i1 false, !225, i1 false, i1 true}
!225 = !{double -1.200000e+01, double 1.998000e+03}
!226 = !DILocation(line: 43, column: 34, scope: !178)
!227 = !DILocation(line: 44, column: 15, scope: !228)
!228 = distinct !DILexicalBlock(scope: !178, file: !19, line: 44, column: 15)
!229 = !DILocation(line: 44, column: 15, scope: !178)
!230 = !DILocation(line: 45, column: 32, scope: !231)
!231 = distinct !DILexicalBlock(scope: !228, file: !19, line: 44, column: 21)
!232 = !DILocation(line: 45, column: 34, scope: !231)
!233 = !DILocation(line: 45, column: 33, scope: !231)
!234 = !DILocation(line: 45, column: 36, scope: !231)
!235 = !DILocation(line: 45, column: 35, scope: !231)
!236 = !DILocation(line: 45, column: 27, scope: !231)
!237 = !DILocation(line: 45, column: 18, scope: !231)
!238 = !DILocation(line: 45, column: 20, scope: !231)
!239 = !DILocation(line: 45, column: 19, scope: !231)
!240 = !DILocation(line: 45, column: 22, scope: !231)
!241 = !DILocation(line: 45, column: 21, scope: !231)
!242 = !DILocation(line: 45, column: 13, scope: !231)
!243 = !DILocation(line: 45, column: 25, scope: !231)
!244 = !DILocation(line: 46, column: 11, scope: !231)
!245 = !DILocation(line: 47, column: 27, scope: !246)
!246 = distinct !DILexicalBlock(scope: !228, file: !19, line: 46, column: 18)
!247 = !DILocation(line: 47, column: 34, scope: !246)
!248 = !DILocation(line: 47, column: 32, scope: !246)
!249 = !DILocation(line: 47, column: 18, scope: !246)
!250 = !DILocation(line: 47, column: 20, scope: !246)
!251 = !DILocation(line: 47, column: 19, scope: !246)
!252 = !DILocation(line: 47, column: 22, scope: !246)
!253 = !DILocation(line: 47, column: 21, scope: !246)
!254 = !DILocation(line: 47, column: 13, scope: !246)
!255 = !DILocation(line: 47, column: 25, scope: !246)
!256 = !DILocation(line: 49, column: 9, scope: !174)
!257 = !DILocation(line: 49, column: 9, scope: !178)
!258 = !DILocation(line: 40, column: 47, scope: !174)
!259 = !DILocation(line: 40, column: 26, scope: !174)
!260 = distinct !{!260, !176, !261, !262}
!261 = !DILocation(line: 49, column: 9, scope: !170)
!262 = !{!"llvm.loop.name", !"VITIS_LOOP_40_5"}
!263 = !DILocation(line: 50, column: 8, scope: !171)
!264 = !DILocation(line: 39, column: 44, scope: !165)
!265 = !DILocation(line: 39, column: 24, scope: !165)
!266 = distinct !{!266, !167, !267, !268}
!267 = !DILocation(line: 50, column: 8, scope: !161)
!268 = !{!"llvm.loop.name", !"VITIS_LOOP_39_4"}
!269 = !DILocation(line: 51, column: 3, scope: !162)
!270 = !DILocation(line: 38, column: 41, scope: !156)
!271 = !DILocation(line: 38, column: 20, scope: !156)
!272 = distinct !{!272, !158, !273, !274}
!273 = !DILocation(line: 51, column: 3, scope: !153)
!274 = !{!"llvm.loop.name", !"VITIS_LOOP_38_3"}
!275 = !DILocation(line: 53, column: 27, scope: !276)
!276 = distinct !DILexicalBlock(scope: !18, file: !19, line: 53, column: 20)
!277 = !DILocation(line: 53, column: 25, scope: !276)
!278 = !DILocation(line: 53, column: 32, scope: !279)
!279 = distinct !DILexicalBlock(scope: !276, file: !19, line: 53, column: 20)
!280 = !DILocation(line: 53, column: 34, scope: !279)
!281 = !{i1 false, !282, i1 false, i1 true}
!282 = !{double 1.000000e+00, double 1.000000e+00}
!283 = !DILocation(line: 53, column: 20, scope: !276)
!284 = !DILocation(line: 54, column: 26, scope: !285)
!285 = distinct !DILexicalBlock(scope: !279, file: !19, line: 53, column: 47)
!286 = !DILocation(line: 54, column: 21, scope: !285)
!287 = !DILocation(line: 54, column: 5, scope: !285)
!288 = !DILocation(line: 55, column: 3, scope: !285)
!289 = !DILocation(line: 53, column: 44, scope: !279)
!290 = !DILocation(line: 53, column: 20, scope: !279)
!291 = distinct !{!291, !283, !292, !293}
!292 = !DILocation(line: 55, column: 3, scope: !276)
!293 = !{!"llvm.loop.name", !"VITIS_LOOP_53_6"}
!294 = !DILocation(line: 57, column: 1, scope: !18)
!295 = !{i32 0, i1 false, i32 0, i1 false}
!296 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!297 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!298 = !{i32 0, i1 false}
