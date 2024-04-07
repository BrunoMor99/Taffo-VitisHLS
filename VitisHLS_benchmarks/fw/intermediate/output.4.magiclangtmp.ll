; ModuleID = '/home/bruno/Desktop/benchmarks/fw/intermediate/output.3.magiclangtmp.ll'
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
  %path = alloca [256 x float], align 4, !taffo.info !30, !taffo.target !33
  %tmpa = alloca float, align 4, !taffo.info !34
  %tmpb = alloca float, align 4, !taffo.info !34
  %cond = alloca i32, align 4, !taffo.info !37
  %0 = bitcast i32* %n to i8*, !dbg !39
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #3, !dbg !39
  call void @llvm.dbg.declare(metadata i32* %n, metadata !40, metadata !DIExpression()), !dbg !42
  store i32 16, i32* %n, align 4, !dbg !42
  %1 = bitcast i32* %i to i8*, !dbg !43, !taffo.info !28
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #3, !dbg !43, !taffo.info !44
  call void @llvm.dbg.declare(metadata i32* %i, metadata !45, metadata !DIExpression()), !dbg !46
  %i1 = bitcast i32* %i to i8*, !dbg !43, !taffo.info !28
  %2 = bitcast i32* %j to i8*, !dbg !47, !taffo.info !28
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #3, !dbg !47, !taffo.info !44
  call void @llvm.dbg.declare(metadata i32* %j, metadata !48, metadata !DIExpression()), !dbg !49
  %j2 = bitcast i32* %j to i8*, !dbg !47, !taffo.info !28
  %3 = bitcast i32* %k to i8*, !dbg !50, !taffo.info !28
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #3, !dbg !50, !taffo.info !44
  call void @llvm.dbg.declare(metadata i32* %k, metadata !51, metadata !DIExpression()), !dbg !52
  %k3 = bitcast i32* %k to i8*, !dbg !50, !taffo.info !28
  %4 = bitcast [256 x float]* %path to i8*, !dbg !53, !taffo.info !54, !taffo.target !33
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* %4) #3, !dbg !53, !taffo.info !44, !taffo.target !33
  call void @llvm.dbg.declare(metadata [256 x float]* %path, metadata !55, metadata !DIExpression()), !dbg !60
  %path4 = bitcast [256 x float]* %path to i8*, !dbg !53, !taffo.info !54, !taffo.target !33
  br label %VITIS_LOOP_30_1, !dbg !53

VITIS_LOOP_30_1:                                  ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !61, !taffo.info !44
  br label %for.cond, !dbg !63

for.cond:                                         ; preds = %for.inc27, %VITIS_LOOP_30_1
  %5 = load i32, i32* %i, align 4, !dbg !64, !taffo.info !66
  %6 = load i32, i32* %n, align 4, !dbg !68, !taffo.info !26
  %cmp = icmp slt i32 %5, %6, !dbg !69, !taffo.info !70
  br i1 %cmp, label %for.body, label %for.end29, !dbg !71, !taffo.info !44

for.body:                                         ; preds = %for.cond
  br label %VITIS_LOOP_31_2, !dbg !72

VITIS_LOOP_31_2:                                  ; preds = %for.body
  store i32 0, i32* %j, align 4, !dbg !73, !taffo.info !44
  br label %for.cond5, !dbg !76

for.cond5:                                        ; preds = %for.inc, %VITIS_LOOP_31_2
  %7 = load i32, i32* %j, align 4, !dbg !77, !taffo.info !79
  %8 = load i32, i32* %n, align 4, !dbg !81, !taffo.info !26
  %cmp6 = icmp slt i32 %7, %8, !dbg !82, !taffo.info !70
  br i1 %cmp6, label %for.body7, label %for.end, !dbg !83, !taffo.info !44

for.body7:                                        ; preds = %for.cond5
  %9 = load i32, i32* %i, align 4, !dbg !84, !taffo.info !28
  %10 = load i32, i32* %j, align 4, !dbg !86, !taffo.info !28
  %mul = mul nsw i32 %9, %10, !dbg !87, !taffo.info !88
  %rem = srem i32 %mul, 7, !dbg !90, !taffo.info !91
  %add = add nsw i32 %rem, 1, !dbg !93, !taffo.info !94
  %conv = sitofp i32 %add to float, !dbg !84, !taffo.info !96
  %11 = load i32, i32* %i, align 4, !dbg !98, !taffo.info !28
  %12 = load i32, i32* %n, align 4, !dbg !99, !taffo.info !26
  %mul8 = mul nsw i32 %11, %12, !dbg !100, !taffo.info !88
  %13 = load i32, i32* %j, align 4, !dbg !101, !taffo.info !28
  %add9 = add nsw i32 %mul8, %13, !dbg !102, !taffo.info !103
  %idxprom = sext i32 %add9 to i64, !dbg !105, !taffo.info !103
  %arrayidx = getelementptr inbounds [256 x float], [256 x float]* %path, i64 0, i64 %idxprom, !dbg !105, !taffo.info !30, !taffo.target !33
  store float %conv, float* %arrayidx, align 4, !dbg !106, !taffo.info !44, !taffo.target !33
  %14 = load i32, i32* %i, align 4, !dbg !107, !taffo.info !28
  %15 = load i32, i32* %j, align 4, !dbg !109, !taffo.info !28
  %add10 = add nsw i32 %14, %15, !dbg !110, !taffo.info !111
  %rem11 = srem i32 %add10, 13, !dbg !113, !taffo.info !114
  %cmp12 = icmp eq i32 %rem11, 0, !dbg !116, !taffo.info !70
  br i1 %cmp12, label %if.then, label %lor.lhs.false, !dbg !117, !taffo.info !44

lor.lhs.false:                                    ; preds = %for.body7
  %16 = load i32, i32* %i, align 4, !dbg !118, !taffo.info !66
  %17 = load i32, i32* %j, align 4, !dbg !119, !taffo.info !66
  %add14 = add nsw i32 %16, %17, !dbg !120, !taffo.info !121
  %rem15 = srem i32 %add14, 7, !dbg !123, !taffo.info !91
  %cmp16 = icmp eq i32 %rem15, 0, !dbg !124, !taffo.info !70
  br i1 %cmp16, label %if.then, label %lor.lhs.false18, !dbg !125, !taffo.info !44

lor.lhs.false18:                                  ; preds = %lor.lhs.false
  %18 = load i32, i32* %i, align 4, !dbg !126, !taffo.info !66
  %19 = load i32, i32* %j, align 4, !dbg !127, !taffo.info !66
  %add19 = add nsw i32 %18, %19, !dbg !128, !taffo.info !121
  %rem20 = srem i32 %add19, 11, !dbg !129, !taffo.info !130
  %cmp21 = icmp eq i32 %rem20, 0, !dbg !132, !taffo.info !70
  br i1 %cmp21, label %if.then, label %if.end, !dbg !133, !taffo.info !44

if.then:                                          ; preds = %lor.lhs.false18, %lor.lhs.false, %for.body7
  %20 = load i32, i32* %i, align 4, !dbg !134, !taffo.info !28
  %21 = load i32, i32* %n, align 4, !dbg !135, !taffo.info !26
  %mul23 = mul nsw i32 %20, %21, !dbg !136, !taffo.info !88
  %22 = load i32, i32* %j, align 4, !dbg !137, !taffo.info !28
  %add24 = add nsw i32 %mul23, %22, !dbg !138, !taffo.info !103
  %idxprom25 = sext i32 %add24 to i64, !dbg !139, !taffo.info !103
  %arrayidx26 = getelementptr inbounds [256 x float], [256 x float]* %path, i64 0, i64 %idxprom25, !dbg !139, !taffo.info !30, !taffo.target !33
  store float 9.990000e+02, float* %arrayidx26, align 4, !dbg !140, !taffo.info !44, !taffo.target !33
  br label %if.end, !dbg !139

if.end:                                           ; preds = %if.then, %lor.lhs.false18
  br label %for.inc, !dbg !141

for.inc:                                          ; preds = %if.end
  %23 = load i32, i32* %j, align 4, !dbg !142, !taffo.info !66
  %inc = add nsw i32 %23, 1, !dbg !142, !taffo.info !143
  store i32 %inc, i32* %j, align 4, !dbg !142, !taffo.info !44
  br label %for.cond5, !dbg !145, !llvm.loop !146

for.end:                                          ; preds = %for.cond5
  br label %for.inc27, !dbg !149

for.inc27:                                        ; preds = %for.end
  %24 = load i32, i32* %i, align 4, !dbg !150, !taffo.info !28
  %inc28 = add nsw i32 %24, 1, !dbg !150, !taffo.info !151
  store i32 %inc28, i32* %i, align 4, !dbg !150, !taffo.info !44
  br label %for.cond, !dbg !153, !llvm.loop !154

for.end29:                                        ; preds = %for.cond
  br label %VITIS_LOOP_38_3, !dbg !155

VITIS_LOOP_38_3:                                  ; preds = %for.end29
  store i32 0, i32* %k, align 4, !dbg !157, !taffo.info !44
  br label %for.cond30, !dbg !159

for.cond30:                                       ; preds = %for.inc85, %VITIS_LOOP_38_3
  %25 = load i32, i32* %k, align 4, !dbg !160, !taffo.info !66
  %cmp31 = icmp slt i32 %25, 16, !dbg !162, !taffo.info !70
  br i1 %cmp31, label %for.body32, label %for.end87, !dbg !163, !taffo.info !44

for.body32:                                       ; preds = %for.cond30
  br label %VITIS_LOOP_39_4, !dbg !164

VITIS_LOOP_39_4:                                  ; preds = %for.body32
  store i32 0, i32* %i, align 4, !dbg !165, !taffo.info !44
  br label %for.cond33, !dbg !168

for.cond33:                                       ; preds = %for.inc82, %VITIS_LOOP_39_4
  %26 = load i32, i32* %i, align 4, !dbg !169, !taffo.info !66
  %cmp34 = icmp slt i32 %26, 16, !dbg !171, !taffo.info !70
  br i1 %cmp34, label %for.body35, label %for.end84, !dbg !172, !taffo.info !44

for.body35:                                       ; preds = %for.cond33
  br label %VITIS_LOOP_40_5, !dbg !173

VITIS_LOOP_40_5:                                  ; preds = %for.body35
  store i32 0, i32* %j, align 4, !dbg !174, !taffo.info !44
  br label %for.cond36, !dbg !177

for.cond36:                                       ; preds = %for.inc79, %VITIS_LOOP_40_5
  %27 = load i32, i32* %j, align 4, !dbg !178, !taffo.info !79
  %cmp37 = icmp slt i32 %27, 16, !dbg !180, !taffo.info !70
  br i1 %cmp37, label %for.body38, label %for.end81, !dbg !181, !taffo.info !44

for.body38:                                       ; preds = %for.cond36
  %28 = bitcast float* %tmpa to i8*, !dbg !182, !taffo.info !184
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %28) #3, !dbg !182, !taffo.info !44
  call void @llvm.dbg.declare(metadata float* %tmpa, metadata !185, metadata !DIExpression()), !dbg !186
  %tmpa39 = bitcast float* %tmpa to i8*, !dbg !182, !taffo.info !184
  %29 = load i32, i32* %i, align 4, !dbg !187, !taffo.info !66
  %30 = load i32, i32* %n, align 4, !dbg !188, !taffo.info !26
  %mul40 = mul nsw i32 %29, %30, !dbg !189, !taffo.info !190
  %31 = load i32, i32* %k, align 4, !dbg !192, !taffo.info !66
  %add41 = add nsw i32 %mul40, %31, !dbg !193, !taffo.info !194
  %idxprom42 = sext i32 %add41 to i64, !dbg !196, !taffo.info !194
  %arrayidx43 = getelementptr inbounds [256 x float], [256 x float]* %path, i64 0, i64 %idxprom42, !dbg !196, !taffo.info !30, !taffo.target !33
  %32 = load float, float* %arrayidx43, align 4, !dbg !196, !taffo.info !30, !taffo.target !33
  store float %32, float* %tmpa, align 4, !dbg !186, !taffo.info !44
  %33 = bitcast float* %tmpb to i8*, !dbg !197, !taffo.info !184
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %33) #3, !dbg !197, !taffo.info !44
  call void @llvm.dbg.declare(metadata float* %tmpb, metadata !198, metadata !DIExpression()), !dbg !199
  %tmpb44 = bitcast float* %tmpb to i8*, !dbg !197, !taffo.info !184
  %34 = load i32, i32* %k, align 4, !dbg !200, !taffo.info !66
  %35 = load i32, i32* %n, align 4, !dbg !201, !taffo.info !26
  %mul45 = mul nsw i32 %34, %35, !dbg !202, !taffo.info !190
  %36 = load i32, i32* %j, align 4, !dbg !203, !taffo.info !28
  %add46 = add nsw i32 %mul45, %36, !dbg !204, !taffo.info !205
  %idxprom47 = sext i32 %add46 to i64, !dbg !207, !taffo.info !205
  %arrayidx48 = getelementptr inbounds [256 x float], [256 x float]* %path, i64 0, i64 %idxprom47, !dbg !207, !taffo.info !30, !taffo.target !33
  %37 = load float, float* %arrayidx48, align 4, !dbg !207, !taffo.info !30, !taffo.target !33
  store float %37, float* %tmpb, align 4, !dbg !199, !taffo.info !44
  %38 = bitcast i32* %cond to i8*, !dbg !208
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %38) #3, !dbg !208
  call void @llvm.dbg.declare(metadata i32* %cond, metadata !209, metadata !DIExpression()), !dbg !210
  %39 = load i32, i32* %i, align 4, !dbg !211, !taffo.info !66
  %40 = load i32, i32* %n, align 4, !dbg !212, !taffo.info !26
  %mul49 = mul nsw i32 %39, %40, !dbg !213, !taffo.info !190
  %41 = load i32, i32* %j, align 4, !dbg !214, !taffo.info !28
  %add50 = add nsw i32 %mul49, %41, !dbg !215, !taffo.info !205
  %idxprom51 = sext i32 %add50 to i64, !dbg !216, !taffo.info !205
  %arrayidx52 = getelementptr inbounds [256 x float], [256 x float]* %path, i64 0, i64 %idxprom51, !dbg !216, !taffo.info !30, !taffo.target !33
  %42 = load float, float* %arrayidx52, align 4, !dbg !216, !taffo.info !30, !taffo.target !33
  %43 = load i32, i32* %i, align 4, !dbg !217, !taffo.info !66
  %44 = load i32, i32* %n, align 4, !dbg !218, !taffo.info !26
  %mul53 = mul nsw i32 %43, %44, !dbg !219, !taffo.info !190
  %45 = load i32, i32* %k, align 4, !dbg !220, !taffo.info !66
  %add54 = add nsw i32 %mul53, %45, !dbg !221, !taffo.info !194
  %idxprom55 = sext i32 %add54 to i64, !dbg !222, !taffo.info !194
  %arrayidx56 = getelementptr inbounds [256 x float], [256 x float]* %path, i64 0, i64 %idxprom55, !dbg !222, !taffo.info !30, !taffo.target !33
  %46 = load float, float* %arrayidx56, align 4, !dbg !222, !taffo.info !30, !taffo.target !33
  %47 = load i32, i32* %k, align 4, !dbg !223, !taffo.info !66
  %48 = load i32, i32* %n, align 4, !dbg !224, !taffo.info !26
  %mul57 = mul nsw i32 %47, %48, !dbg !225, !taffo.info !190
  %49 = load i32, i32* %j, align 4, !dbg !226, !taffo.info !28
  %add58 = add nsw i32 %mul57, %49, !dbg !227, !taffo.info !205
  %idxprom59 = sext i32 %add58 to i64, !dbg !228, !taffo.info !205
  %arrayidx60 = getelementptr inbounds [256 x float], [256 x float]* %path, i64 0, i64 %idxprom59, !dbg !228, !taffo.info !30, !taffo.target !33
  %50 = load float, float* %arrayidx60, align 4, !dbg !228, !taffo.info !30, !taffo.target !33
  %add61 = fadd float %46, %50, !dbg !229, !taffo.info !230, !taffo.target !33
  %cmp62 = fcmp olt float %42, %add61, !dbg !232, !taffo.info !54, !taffo.target !33
  %conv63 = zext i1 %cmp62 to i32, !dbg !216, !taffo.info !54, !taffo.target !33
  store i32 %conv63, i32* %cond, align 4, !dbg !210, !taffo.info !44, !taffo.target !33
  %51 = load i32, i32* %cond, align 4, !dbg !233, !taffo.info !37
  %tobool = icmp ne i32 %51, 0, !dbg !233, !taffo.info !37
  br i1 %tobool, label %if.then64, label %if.else, !dbg !235

if.then64:                                        ; preds = %for.body38
  %52 = load i32, i32* %i, align 4, !dbg !236, !taffo.info !66
  %53 = load i32, i32* %n, align 4, !dbg !238, !taffo.info !26
  %mul65 = mul nsw i32 %52, %53, !dbg !239, !taffo.info !190
  %54 = load i32, i32* %j, align 4, !dbg !240, !taffo.info !66
  %add66 = add nsw i32 %mul65, %54, !dbg !241, !taffo.info !194
  %idxprom67 = sext i32 %add66 to i64, !dbg !242, !taffo.info !194
  %arrayidx68 = getelementptr inbounds [256 x float], [256 x float]* %path, i64 0, i64 %idxprom67, !dbg !242, !taffo.info !30, !taffo.target !33
  %55 = load float, float* %arrayidx68, align 4, !dbg !242, !taffo.info !30, !taffo.target !33
  %56 = load i32, i32* %i, align 4, !dbg !243, !taffo.info !66
  %57 = load i32, i32* %n, align 4, !dbg !244, !taffo.info !26
  %mul69 = mul nsw i32 %56, %57, !dbg !245, !taffo.info !190
  %58 = load i32, i32* %j, align 4, !dbg !246, !taffo.info !66
  %add70 = add nsw i32 %mul69, %58, !dbg !247, !taffo.info !194
  %idxprom71 = sext i32 %add70 to i64, !dbg !248, !taffo.info !194
  %arrayidx72 = getelementptr inbounds [256 x float], [256 x float]* %path, i64 0, i64 %idxprom71, !dbg !248, !taffo.info !30, !taffo.target !33
  store float %55, float* %arrayidx72, align 4, !dbg !249, !taffo.info !44, !taffo.target !33
  br label %if.end78, !dbg !250

if.else:                                          ; preds = %for.body38
  %59 = load float, float* %tmpa, align 4, !dbg !251, !taffo.info !253
  %60 = load float, float* %tmpb, align 4, !dbg !254, !taffo.info !253
  %add73 = fadd float %59, %60, !dbg !255, !taffo.info !230
  %61 = load i32, i32* %i, align 4, !dbg !256, !taffo.info !66
  %62 = load i32, i32* %n, align 4, !dbg !257, !taffo.info !26
  %mul74 = mul nsw i32 %61, %62, !dbg !258, !taffo.info !190
  %63 = load i32, i32* %j, align 4, !dbg !259, !taffo.info !28
  %add75 = add nsw i32 %mul74, %63, !dbg !260, !taffo.info !205
  %idxprom76 = sext i32 %add75 to i64, !dbg !261, !taffo.info !205
  %arrayidx77 = getelementptr inbounds [256 x float], [256 x float]* %path, i64 0, i64 %idxprom76, !dbg !261, !taffo.info !30, !taffo.target !33
  store float %add73, float* %arrayidx77, align 4, !dbg !262, !taffo.info !44, !taffo.target !33
  br label %if.end78

if.end78:                                         ; preds = %if.else, %if.then64
  %64 = bitcast i32* %cond to i8*, !dbg !263, !taffo.info !37
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %64) #3, !dbg !263
  %65 = bitcast float* %tmpb to i8*, !dbg !263, !taffo.info !184
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %65) #3, !dbg !263, !taffo.info !44
  %66 = bitcast float* %tmpa to i8*, !dbg !263, !taffo.info !184
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %66) #3, !dbg !263, !taffo.info !44
  br label %for.inc79, !dbg !264

for.inc79:                                        ; preds = %if.end78
  %67 = load i32, i32* %j, align 4, !dbg !265, !taffo.info !66
  %inc80 = add nsw i32 %67, 1, !dbg !265, !taffo.info !143
  store i32 %inc80, i32* %j, align 4, !dbg !265, !taffo.info !44
  br label %for.cond36, !dbg !266, !llvm.loop !267

for.end81:                                        ; preds = %for.cond36
  br label %for.inc82, !dbg !270

for.inc82:                                        ; preds = %for.end81
  %68 = load i32, i32* %i, align 4, !dbg !271, !taffo.info !28
  %inc83 = add nsw i32 %68, 1, !dbg !271, !taffo.info !151
  store i32 %inc83, i32* %i, align 4, !dbg !271, !taffo.info !44
  br label %for.cond33, !dbg !272, !llvm.loop !273

for.end84:                                        ; preds = %for.cond33
  br label %for.inc85, !dbg !276

for.inc85:                                        ; preds = %for.end84
  %69 = load i32, i32* %k, align 4, !dbg !277, !taffo.info !28
  %inc86 = add nsw i32 %69, 1, !dbg !277, !taffo.info !151
  store i32 %inc86, i32* %k, align 4, !dbg !277, !taffo.info !44
  br label %for.cond30, !dbg !278, !llvm.loop !279

for.end87:                                        ; preds = %for.cond30
  br label %VITIS_LOOP_53_6, !dbg !280

VITIS_LOOP_53_6:                                  ; preds = %for.end87
  store i32 0, i32* %i, align 4, !dbg !282, !taffo.info !44
  br label %for.cond88, !dbg !284

for.cond88:                                       ; preds = %for.inc94, %VITIS_LOOP_53_6
  %70 = load i32, i32* %i, align 4, !dbg !285, !taffo.info !66
  %cmp89 = icmp slt i32 %70, 256, !dbg !287, !taffo.info !288
  br i1 %cmp89, label %for.body90, label %for.end96, !dbg !290, !taffo.info !44

for.body90:                                       ; preds = %for.cond88
  %71 = load i32, i32* %i, align 4, !dbg !291, !taffo.info !28
  %idxprom91 = sext i32 %71 to i64, !dbg !293, !taffo.info !28
  %arrayidx92 = getelementptr inbounds [256 x float], [256 x float]* %path, i64 0, i64 %idxprom91, !dbg !293, !taffo.info !30, !taffo.target !33
  %72 = load float, float* %arrayidx92, align 4, !dbg !293, !taffo.info !30, !taffo.target !33
  %conv93 = fpext float %72 to double, !dbg !293, !taffo.info !30, !taffo.target !33
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), double %conv93), !dbg !294, !taffo.info !54, !taffo.target !33
  br label %for.inc94, !dbg !295

for.inc94:                                        ; preds = %for.body90
  %73 = load i32, i32* %i, align 4, !dbg !296, !taffo.info !28
  %inc95 = add nsw i32 %73, 1, !dbg !296, !taffo.info !151
  store i32 %inc95, i32* %i, align 4, !dbg !296, !taffo.info !44
  br label %for.cond88, !dbg !297, !llvm.loop !298

for.end96:                                        ; preds = %for.cond88
  %74 = bitcast [256 x float]* %path to i8*, !dbg !301, !taffo.info !54, !taffo.target !33
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* %74) #3, !dbg !301, !taffo.info !44, !taffo.target !33
  %75 = bitcast i32* %k to i8*, !dbg !301, !taffo.info !28
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %75) #3, !dbg !301, !taffo.info !44
  %76 = bitcast i32* %j to i8*, !dbg !301, !taffo.info !28
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %76) #3, !dbg !301, !taffo.info !44
  %77 = bitcast i32* %i to i8*, !dbg !301, !taffo.info !28
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %77) #3, !dbg !301, !taffo.info !44
  %78 = bitcast i32* %n to i8*, !dbg !301, !taffo.info !26
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %78) #3, !dbg !301
  ret void, !dbg !301
}

; Function Attrs: argmemonly nounwind
declare !taffo.funinfo !302 void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable
declare !taffo.funinfo !303 void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind
declare !taffo.funinfo !304 void @llvm.var.annotation(i8*, i8*, i8*, i32) #3

; Function Attrs: argmemonly nounwind
declare !taffo.funinfo !302 void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

declare !taffo.funinfo !305 i32 @printf(i8*, ...) #4

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
!30 = !{!31, !32, i1 false, i1 true}
!31 = !{!"fixp", i32 -32, i32 20}
!32 = !{double -1.500000e+01, double 1.998000e+03}
!33 = !{!"path"}
!34 = !{!35, !36, i1 false, i1 true}
!35 = !{!"fixp", i32 -32, i32 21}
!36 = !{double -6.000000e+00, double 9.990000e+02}
!37 = !{i1 false, !38, i1 false, i1 false}
!38 = !{double 0.000000e+00, double 1.000000e+00}
!39 = !DILocation(line: 23, column: 3, scope: !18)
!40 = !DILocalVariable(name: "n", scope: !18, file: !19, line: 23, type: !41)
!41 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!42 = !DILocation(line: 23, column: 7, scope: !18)
!43 = !DILocation(line: 24, column: 3, scope: !18)
!44 = !{i1 false, i1 false, i1 false, i1 true}
!45 = !DILocalVariable(name: "i", scope: !18, file: !19, line: 24, type: !41)
!46 = !DILocation(line: 24, column: 7, scope: !18)
!47 = !DILocation(line: 25, column: 3, scope: !18)
!48 = !DILocalVariable(name: "j", scope: !18, file: !19, line: 25, type: !41)
!49 = !DILocation(line: 25, column: 7, scope: !18)
!50 = !DILocation(line: 26, column: 3, scope: !18)
!51 = !DILocalVariable(name: "k", scope: !18, file: !19, line: 26, type: !41)
!52 = !DILocation(line: 26, column: 7, scope: !18)
!53 = !DILocation(line: 28, column: 3, scope: !18)
!54 = !{!31, i1 false, i1 false, i1 true}
!55 = !DILocalVariable(name: "path", scope: !18, file: !19, line: 28, type: !56)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 8192, elements: !58)
!57 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!58 = !{!59}
!59 = !DISubrange(count: 256)
!60 = !DILocation(line: 28, column: 9, scope: !18)
!61 = !DILocation(line: 30, column: 27, scope: !62)
!62 = distinct !DILexicalBlock(scope: !18, file: !19, line: 30, column: 20)
!63 = !DILocation(line: 30, column: 25, scope: !62)
!64 = !DILocation(line: 30, column: 32, scope: !65)
!65 = distinct !DILexicalBlock(scope: !62, file: !19, line: 30, column: 20)
!66 = !{i1 false, !67, i1 false, i1 true}
!67 = !{double -1.600000e+01, double 1.700000e+01}
!68 = !DILocation(line: 30, column: 36, scope: !65)
!69 = !DILocation(line: 30, column: 34, scope: !65)
!70 = !{i1 false, !38, i1 false, i1 true}
!71 = !DILocation(line: 30, column: 20, scope: !62)
!72 = !DILocation(line: 30, column: 43, scope: !65)
!73 = !DILocation(line: 31, column: 29, scope: !74)
!74 = distinct !DILexicalBlock(scope: !75, file: !19, line: 31, column: 22)
!75 = distinct !DILexicalBlock(scope: !65, file: !19, line: 30, column: 43)
!76 = !DILocation(line: 31, column: 27, scope: !74)
!77 = !DILocation(line: 31, column: 34, scope: !78)
!78 = distinct !DILexicalBlock(scope: !74, file: !19, line: 31, column: 22)
!79 = !{i1 false, !80, i1 false, i1 true}
!80 = !{double -1.600000e+01, double 1.800000e+01}
!81 = !DILocation(line: 31, column: 38, scope: !78)
!82 = !DILocation(line: 31, column: 36, scope: !78)
!83 = !DILocation(line: 31, column: 22, scope: !74)
!84 = !DILocation(line: 32, column: 21, scope: !85)
!85 = distinct !DILexicalBlock(scope: !78, file: !19, line: 31, column: 46)
!86 = !DILocation(line: 32, column: 23, scope: !85)
!87 = !DILocation(line: 32, column: 22, scope: !85)
!88 = !{i1 false, !89, i1 false, i1 true}
!89 = !{double -2.560000e+02, double 2.560000e+02}
!90 = !DILocation(line: 32, column: 24, scope: !85)
!91 = !{i1 false, !92, i1 false, i1 true}
!92 = !{double -7.000000e+00, double 7.000000e+00}
!93 = !DILocation(line: 32, column: 26, scope: !85)
!94 = !{i1 false, !95, i1 false, i1 true}
!95 = !{double -6.000000e+00, double 8.000000e+00}
!96 = !{!97, !95, i1 false, i1 true}
!97 = !{!"fixp", i32 -32, i32 27}
!98 = !DILocation(line: 32, column: 12, scope: !85)
!99 = !DILocation(line: 32, column: 14, scope: !85)
!100 = !DILocation(line: 32, column: 13, scope: !85)
!101 = !DILocation(line: 32, column: 16, scope: !85)
!102 = !DILocation(line: 32, column: 15, scope: !85)
!103 = !{i1 false, !104, i1 false, i1 true}
!104 = !{double -2.720000e+02, double 2.720000e+02}
!105 = !DILocation(line: 32, column: 7, scope: !85)
!106 = !DILocation(line: 32, column: 19, scope: !85)
!107 = !DILocation(line: 33, column: 12, scope: !108)
!108 = distinct !DILexicalBlock(scope: !85, file: !19, line: 33, column: 11)
!109 = !DILocation(line: 33, column: 14, scope: !108)
!110 = !DILocation(line: 33, column: 13, scope: !108)
!111 = !{i1 false, !112, i1 false, i1 true}
!112 = !{double -3.200000e+01, double 3.200000e+01}
!113 = !DILocation(line: 33, column: 16, scope: !108)
!114 = !{i1 false, !115, i1 false, i1 true}
!115 = !{double -1.300000e+01, double 1.300000e+01}
!116 = !DILocation(line: 33, column: 20, scope: !108)
!117 = !DILocation(line: 33, column: 25, scope: !108)
!118 = !DILocation(line: 33, column: 29, scope: !108)
!119 = !DILocation(line: 33, column: 31, scope: !108)
!120 = !DILocation(line: 33, column: 30, scope: !108)
!121 = !{i1 false, !122, i1 false, i1 true}
!122 = !{double -3.200000e+01, double 3.400000e+01}
!123 = !DILocation(line: 33, column: 33, scope: !108)
!124 = !DILocation(line: 33, column: 35, scope: !108)
!125 = !DILocation(line: 33, column: 39, scope: !108)
!126 = !DILocation(line: 33, column: 43, scope: !108)
!127 = !DILocation(line: 33, column: 45, scope: !108)
!128 = !DILocation(line: 33, column: 44, scope: !108)
!129 = !DILocation(line: 33, column: 47, scope: !108)
!130 = !{i1 false, !131, i1 false, i1 true}
!131 = !{double -1.100000e+01, double 1.100000e+01}
!132 = !DILocation(line: 33, column: 51, scope: !108)
!133 = !DILocation(line: 33, column: 11, scope: !85)
!134 = !DILocation(line: 34, column: 15, scope: !108)
!135 = !DILocation(line: 34, column: 17, scope: !108)
!136 = !DILocation(line: 34, column: 16, scope: !108)
!137 = !DILocation(line: 34, column: 19, scope: !108)
!138 = !DILocation(line: 34, column: 18, scope: !108)
!139 = !DILocation(line: 34, column: 10, scope: !108)
!140 = !DILocation(line: 34, column: 22, scope: !108)
!141 = !DILocation(line: 35, column: 5, scope: !85)
!142 = !DILocation(line: 31, column: 42, scope: !78)
!143 = !{i1 false, !144, i1 false, i1 true}
!144 = !{double -1.500000e+01, double 1.800000e+01}
!145 = !DILocation(line: 31, column: 22, scope: !78)
!146 = distinct !{!146, !83, !147, !148}
!147 = !DILocation(line: 35, column: 5, scope: !74)
!148 = !{!"llvm.loop.name", !"VITIS_LOOP_31_2"}
!149 = !DILocation(line: 36, column: 3, scope: !75)
!150 = !DILocation(line: 30, column: 40, scope: !65)
!151 = !{i1 false, !152, i1 false, i1 true}
!152 = !{double -1.500000e+01, double 1.700000e+01}
!153 = !DILocation(line: 30, column: 20, scope: !65)
!154 = distinct !{!154, !71, !155, !156}
!155 = !DILocation(line: 36, column: 3, scope: !62)
!156 = !{!"llvm.loop.name", !"VITIS_LOOP_30_1"}
!157 = !DILocation(line: 38, column: 27, scope: !158)
!158 = distinct !DILexicalBlock(scope: !18, file: !19, line: 38, column: 20)
!159 = !DILocation(line: 38, column: 25, scope: !158)
!160 = !DILocation(line: 38, column: 32, scope: !161)
!161 = distinct !DILexicalBlock(scope: !158, file: !19, line: 38, column: 20)
!162 = !DILocation(line: 38, column: 34, scope: !161)
!163 = !DILocation(line: 38, column: 20, scope: !158)
!164 = !DILocation(line: 38, column: 44, scope: !161)
!165 = !DILocation(line: 39, column: 30, scope: !166)
!166 = distinct !DILexicalBlock(scope: !167, file: !19, line: 39, column: 24)
!167 = distinct !DILexicalBlock(scope: !161, file: !19, line: 38, column: 44)
!168 = !DILocation(line: 39, column: 28, scope: !166)
!169 = !DILocation(line: 39, column: 35, scope: !170)
!170 = distinct !DILexicalBlock(scope: !166, file: !19, line: 39, column: 24)
!171 = !DILocation(line: 39, column: 37, scope: !170)
!172 = !DILocation(line: 39, column: 24, scope: !166)
!173 = !DILocation(line: 39, column: 47, scope: !170)
!174 = !DILocation(line: 40, column: 33, scope: !175)
!175 = distinct !DILexicalBlock(scope: !176, file: !19, line: 40, column: 26)
!176 = distinct !DILexicalBlock(scope: !170, file: !19, line: 39, column: 47)
!177 = !DILocation(line: 40, column: 31, scope: !175)
!178 = !DILocation(line: 40, column: 38, scope: !179)
!179 = distinct !DILexicalBlock(scope: !175, file: !19, line: 40, column: 26)
!180 = !DILocation(line: 40, column: 40, scope: !179)
!181 = !DILocation(line: 40, column: 26, scope: !175)
!182 = !DILocation(line: 41, column: 11, scope: !183)
!183 = distinct !DILexicalBlock(scope: !179, file: !19, line: 40, column: 51)
!184 = !{!35, i1 false, i1 false, i1 true}
!185 = !DILocalVariable(name: "tmpa", scope: !183, file: !19, line: 41, type: !57)
!186 = !DILocation(line: 41, column: 55, scope: !183)
!187 = !DILocation(line: 41, column: 67, scope: !183)
!188 = !DILocation(line: 41, column: 69, scope: !183)
!189 = !DILocation(line: 41, column: 68, scope: !183)
!190 = !{i1 false, !191, i1 false, i1 true}
!191 = !{double -2.560000e+02, double 2.720000e+02}
!192 = !DILocation(line: 41, column: 71, scope: !183)
!193 = !DILocation(line: 41, column: 70, scope: !183)
!194 = !{i1 false, !195, i1 false, i1 true}
!195 = !{double -2.720000e+02, double 2.890000e+02}
!196 = !DILocation(line: 41, column: 62, scope: !183)
!197 = !DILocation(line: 42, column: 11, scope: !183)
!198 = !DILocalVariable(name: "tmpb", scope: !183, file: !19, line: 42, type: !57)
!199 = !DILocation(line: 42, column: 55, scope: !183)
!200 = !DILocation(line: 42, column: 67, scope: !183)
!201 = !DILocation(line: 42, column: 69, scope: !183)
!202 = !DILocation(line: 42, column: 68, scope: !183)
!203 = !DILocation(line: 42, column: 71, scope: !183)
!204 = !DILocation(line: 42, column: 70, scope: !183)
!205 = !{i1 false, !206, i1 false, i1 true}
!206 = !{double -2.720000e+02, double 2.880000e+02}
!207 = !DILocation(line: 42, column: 62, scope: !183)
!208 = !DILocation(line: 43, column: 11, scope: !183)
!209 = !DILocalVariable(name: "cond", scope: !183, file: !19, line: 43, type: !41)
!210 = !DILocation(line: 43, column: 15, scope: !183)
!211 = !DILocation(line: 43, column: 27, scope: !183)
!212 = !DILocation(line: 43, column: 29, scope: !183)
!213 = !DILocation(line: 43, column: 28, scope: !183)
!214 = !DILocation(line: 43, column: 31, scope: !183)
!215 = !DILocation(line: 43, column: 30, scope: !183)
!216 = !DILocation(line: 43, column: 22, scope: !183)
!217 = !DILocation(line: 43, column: 41, scope: !183)
!218 = !DILocation(line: 43, column: 43, scope: !183)
!219 = !DILocation(line: 43, column: 42, scope: !183)
!220 = !DILocation(line: 43, column: 45, scope: !183)
!221 = !DILocation(line: 43, column: 44, scope: !183)
!222 = !DILocation(line: 43, column: 36, scope: !183)
!223 = !DILocation(line: 43, column: 55, scope: !183)
!224 = !DILocation(line: 43, column: 57, scope: !183)
!225 = !DILocation(line: 43, column: 56, scope: !183)
!226 = !DILocation(line: 43, column: 59, scope: !183)
!227 = !DILocation(line: 43, column: 58, scope: !183)
!228 = !DILocation(line: 43, column: 50, scope: !183)
!229 = !DILocation(line: 43, column: 48, scope: !183)
!230 = !{!31, !231, i1 false, i1 true}
!231 = !{double -1.200000e+01, double 1.998000e+03}
!232 = !DILocation(line: 43, column: 34, scope: !183)
!233 = !DILocation(line: 44, column: 15, scope: !234)
!234 = distinct !DILexicalBlock(scope: !183, file: !19, line: 44, column: 15)
!235 = !DILocation(line: 44, column: 15, scope: !183)
!236 = !DILocation(line: 45, column: 32, scope: !237)
!237 = distinct !DILexicalBlock(scope: !234, file: !19, line: 44, column: 21)
!238 = !DILocation(line: 45, column: 34, scope: !237)
!239 = !DILocation(line: 45, column: 33, scope: !237)
!240 = !DILocation(line: 45, column: 36, scope: !237)
!241 = !DILocation(line: 45, column: 35, scope: !237)
!242 = !DILocation(line: 45, column: 27, scope: !237)
!243 = !DILocation(line: 45, column: 18, scope: !237)
!244 = !DILocation(line: 45, column: 20, scope: !237)
!245 = !DILocation(line: 45, column: 19, scope: !237)
!246 = !DILocation(line: 45, column: 22, scope: !237)
!247 = !DILocation(line: 45, column: 21, scope: !237)
!248 = !DILocation(line: 45, column: 13, scope: !237)
!249 = !DILocation(line: 45, column: 25, scope: !237)
!250 = !DILocation(line: 46, column: 11, scope: !237)
!251 = !DILocation(line: 47, column: 27, scope: !252)
!252 = distinct !DILexicalBlock(scope: !234, file: !19, line: 46, column: 18)
!253 = !{!31, !36, i1 false, i1 true}
!254 = !DILocation(line: 47, column: 34, scope: !252)
!255 = !DILocation(line: 47, column: 32, scope: !252)
!256 = !DILocation(line: 47, column: 18, scope: !252)
!257 = !DILocation(line: 47, column: 20, scope: !252)
!258 = !DILocation(line: 47, column: 19, scope: !252)
!259 = !DILocation(line: 47, column: 22, scope: !252)
!260 = !DILocation(line: 47, column: 21, scope: !252)
!261 = !DILocation(line: 47, column: 13, scope: !252)
!262 = !DILocation(line: 47, column: 25, scope: !252)
!263 = !DILocation(line: 49, column: 9, scope: !179)
!264 = !DILocation(line: 49, column: 9, scope: !183)
!265 = !DILocation(line: 40, column: 47, scope: !179)
!266 = !DILocation(line: 40, column: 26, scope: !179)
!267 = distinct !{!267, !181, !268, !269}
!268 = !DILocation(line: 49, column: 9, scope: !175)
!269 = !{!"llvm.loop.name", !"VITIS_LOOP_40_5"}
!270 = !DILocation(line: 50, column: 8, scope: !176)
!271 = !DILocation(line: 39, column: 44, scope: !170)
!272 = !DILocation(line: 39, column: 24, scope: !170)
!273 = distinct !{!273, !172, !274, !275}
!274 = !DILocation(line: 50, column: 8, scope: !166)
!275 = !{!"llvm.loop.name", !"VITIS_LOOP_39_4"}
!276 = !DILocation(line: 51, column: 3, scope: !167)
!277 = !DILocation(line: 38, column: 41, scope: !161)
!278 = !DILocation(line: 38, column: 20, scope: !161)
!279 = distinct !{!279, !163, !280, !281}
!280 = !DILocation(line: 51, column: 3, scope: !158)
!281 = !{!"llvm.loop.name", !"VITIS_LOOP_38_3"}
!282 = !DILocation(line: 53, column: 27, scope: !283)
!283 = distinct !DILexicalBlock(scope: !18, file: !19, line: 53, column: 20)
!284 = !DILocation(line: 53, column: 25, scope: !283)
!285 = !DILocation(line: 53, column: 32, scope: !286)
!286 = distinct !DILexicalBlock(scope: !283, file: !19, line: 53, column: 20)
!287 = !DILocation(line: 53, column: 34, scope: !286)
!288 = !{i1 false, !289, i1 false, i1 true}
!289 = !{double 1.000000e+00, double 1.000000e+00}
!290 = !DILocation(line: 53, column: 20, scope: !283)
!291 = !DILocation(line: 54, column: 26, scope: !292)
!292 = distinct !DILexicalBlock(scope: !286, file: !19, line: 53, column: 47)
!293 = !DILocation(line: 54, column: 21, scope: !292)
!294 = !DILocation(line: 54, column: 5, scope: !292)
!295 = !DILocation(line: 55, column: 3, scope: !292)
!296 = !DILocation(line: 53, column: 44, scope: !286)
!297 = !DILocation(line: 53, column: 20, scope: !286)
!298 = distinct !{!298, !290, !299, !300}
!299 = !DILocation(line: 55, column: 3, scope: !283)
!300 = !{!"llvm.loop.name", !"VITIS_LOOP_53_6"}
!301 = !DILocation(line: 57, column: 1, scope: !18)
!302 = !{i32 0, i1 false, i32 0, i1 false}
!303 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!304 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!305 = !{i32 0, i1 false}
