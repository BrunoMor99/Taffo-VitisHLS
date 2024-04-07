; ModuleID = '/home/bruno/Desktop/benchmarks/fw/intermediate/output.1.magiclangtmp.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.global_ctors = appending global [0 x { i32, void ()*, i8* }] zeroinitializer
@.str = private unnamed_addr constant [23 x i8] c"scalar(range(-16, 16))\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [11 x i8] c"fw_taffo.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [24 x i8] c"target('path') scalar()\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [9 x i8] c"scalar()\00", section "llvm.metadata"
@.str.4 = private unnamed_addr constant [5 x i8] c"%f \0A\00", align 1

; Function Attrs: nounwind
define void @fw() #0 !dbg !7 !fpga.function.pragma !11 !taffo.start !14 !taffo.funinfo !2 {
entry:
  %n = alloca i32, align 4
  %i = alloca i32, align 4, !taffo.info !15
  %j = alloca i32, align 4, !taffo.info !15
  %k = alloca i32, align 4, !taffo.info !15
  %path = alloca [256 x float], align 4, !taffo.info !17, !taffo.target !18
  %tmpa = alloca float, align 4, !taffo.info !17
  %tmpb = alloca float, align 4, !taffo.info !17
  %cond = alloca i32, align 4
  %0 = bitcast i32* %n to i8*, !dbg !19
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #3, !dbg !19
  call void @llvm.dbg.declare(metadata i32* %n, metadata !20, metadata !DIExpression()), !dbg !22
  store i32 16, i32* %n, align 4, !dbg !22
  %1 = bitcast i32* %i to i8*, !dbg !23, !taffo.info !17
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #3, !dbg !23, !taffo.info !17
  call void @llvm.dbg.declare(metadata i32* %i, metadata !24, metadata !DIExpression()), !dbg !25
  %i1 = bitcast i32* %i to i8*, !dbg !23, !taffo.info !17
  %2 = bitcast i32* %j to i8*, !dbg !26, !taffo.info !17
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #3, !dbg !26, !taffo.info !17
  call void @llvm.dbg.declare(metadata i32* %j, metadata !27, metadata !DIExpression()), !dbg !28
  %j2 = bitcast i32* %j to i8*, !dbg !26, !taffo.info !17
  %3 = bitcast i32* %k to i8*, !dbg !29, !taffo.info !17
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #3, !dbg !29, !taffo.info !17
  call void @llvm.dbg.declare(metadata i32* %k, metadata !30, metadata !DIExpression()), !dbg !31
  %k3 = bitcast i32* %k to i8*, !dbg !29, !taffo.info !17
  %4 = bitcast [256 x float]* %path to i8*, !dbg !32, !taffo.info !17, !taffo.target !18
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* %4) #3, !dbg !32, !taffo.info !17, !taffo.target !18
  call void @llvm.dbg.declare(metadata [256 x float]* %path, metadata !33, metadata !DIExpression()), !dbg !38
  %path4 = bitcast [256 x float]* %path to i8*, !dbg !32, !taffo.info !17, !taffo.target !18
  br label %VITIS_LOOP_30_1, !dbg !32

VITIS_LOOP_30_1:                                  ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !39, !taffo.info !17
  br label %for.cond, !dbg !41

for.cond:                                         ; preds = %for.inc27, %VITIS_LOOP_30_1
  %5 = load i32, i32* %i, align 4, !dbg !42, !taffo.info !17
  %6 = load i32, i32* %n, align 4, !dbg !44
  %cmp = icmp slt i32 %5, %6, !dbg !45, !taffo.info !17
  br i1 %cmp, label %for.body, label %for.end29, !dbg !46, !taffo.info !17

for.body:                                         ; preds = %for.cond
  br label %VITIS_LOOP_31_2, !dbg !47

VITIS_LOOP_31_2:                                  ; preds = %for.body
  store i32 0, i32* %j, align 4, !dbg !48, !taffo.info !17
  br label %for.cond5, !dbg !51

for.cond5:                                        ; preds = %for.inc, %VITIS_LOOP_31_2
  %7 = load i32, i32* %j, align 4, !dbg !52, !taffo.info !17
  %8 = load i32, i32* %n, align 4, !dbg !54
  %cmp6 = icmp slt i32 %7, %8, !dbg !55, !taffo.info !17
  br i1 %cmp6, label %for.body7, label %for.end, !dbg !56, !taffo.info !17

for.body7:                                        ; preds = %for.cond5
  %9 = load i32, i32* %i, align 4, !dbg !57, !taffo.info !17
  %10 = load i32, i32* %j, align 4, !dbg !59, !taffo.info !17
  %mul = mul nsw i32 %9, %10, !dbg !60, !taffo.info !17
  %rem = srem i32 %mul, 7, !dbg !61, !taffo.info !17
  %add = add nsw i32 %rem, 1, !dbg !62, !taffo.info !17
  %conv = sitofp i32 %add to float, !dbg !57, !taffo.info !17
  %11 = load i32, i32* %i, align 4, !dbg !63, !taffo.info !17
  %12 = load i32, i32* %n, align 4, !dbg !64
  %mul8 = mul nsw i32 %11, %12, !dbg !65, !taffo.info !17
  %13 = load i32, i32* %j, align 4, !dbg !66, !taffo.info !17
  %add9 = add nsw i32 %mul8, %13, !dbg !67, !taffo.info !17
  %idxprom = sext i32 %add9 to i64, !dbg !68, !taffo.info !17
  %arrayidx = getelementptr inbounds [256 x float], [256 x float]* %path, i64 0, i64 %idxprom, !dbg !68, !taffo.info !17, !taffo.target !18
  store float %conv, float* %arrayidx, align 4, !dbg !69, !taffo.info !17, !taffo.target !18
  %14 = load i32, i32* %i, align 4, !dbg !70, !taffo.info !17
  %15 = load i32, i32* %j, align 4, !dbg !72, !taffo.info !17
  %add10 = add nsw i32 %14, %15, !dbg !73, !taffo.info !17
  %rem11 = srem i32 %add10, 13, !dbg !74, !taffo.info !17
  %cmp12 = icmp eq i32 %rem11, 0, !dbg !75, !taffo.info !17
  br i1 %cmp12, label %if.then, label %lor.lhs.false, !dbg !76, !taffo.info !17

lor.lhs.false:                                    ; preds = %for.body7
  %16 = load i32, i32* %i, align 4, !dbg !77, !taffo.info !17
  %17 = load i32, i32* %j, align 4, !dbg !78, !taffo.info !17
  %add14 = add nsw i32 %16, %17, !dbg !79, !taffo.info !17
  %rem15 = srem i32 %add14, 7, !dbg !80, !taffo.info !17
  %cmp16 = icmp eq i32 %rem15, 0, !dbg !81, !taffo.info !17
  br i1 %cmp16, label %if.then, label %lor.lhs.false18, !dbg !82, !taffo.info !17

lor.lhs.false18:                                  ; preds = %lor.lhs.false
  %18 = load i32, i32* %i, align 4, !dbg !83, !taffo.info !17
  %19 = load i32, i32* %j, align 4, !dbg !84, !taffo.info !17
  %add19 = add nsw i32 %18, %19, !dbg !85, !taffo.info !17
  %rem20 = srem i32 %add19, 11, !dbg !86, !taffo.info !17
  %cmp21 = icmp eq i32 %rem20, 0, !dbg !87, !taffo.info !17
  br i1 %cmp21, label %if.then, label %if.end, !dbg !88, !taffo.info !17

if.then:                                          ; preds = %lor.lhs.false18, %lor.lhs.false, %for.body7
  %20 = load i32, i32* %i, align 4, !dbg !89, !taffo.info !17
  %21 = load i32, i32* %n, align 4, !dbg !90
  %mul23 = mul nsw i32 %20, %21, !dbg !91, !taffo.info !17
  %22 = load i32, i32* %j, align 4, !dbg !92, !taffo.info !17
  %add24 = add nsw i32 %mul23, %22, !dbg !93, !taffo.info !17
  %idxprom25 = sext i32 %add24 to i64, !dbg !94, !taffo.info !17
  %arrayidx26 = getelementptr inbounds [256 x float], [256 x float]* %path, i64 0, i64 %idxprom25, !dbg !94, !taffo.info !17, !taffo.target !18
  store float 9.990000e+02, float* %arrayidx26, align 4, !dbg !95, !taffo.info !17, !taffo.target !18
  br label %if.end, !dbg !94

if.end:                                           ; preds = %if.then, %lor.lhs.false18
  br label %for.inc, !dbg !96

for.inc:                                          ; preds = %if.end
  %23 = load i32, i32* %j, align 4, !dbg !97, !taffo.info !17
  %inc = add nsw i32 %23, 1, !dbg !97, !taffo.info !17
  store i32 %inc, i32* %j, align 4, !dbg !97, !taffo.info !17
  br label %for.cond5, !dbg !98, !llvm.loop !99

for.end:                                          ; preds = %for.cond5
  br label %for.inc27, !dbg !102

for.inc27:                                        ; preds = %for.end
  %24 = load i32, i32* %i, align 4, !dbg !103, !taffo.info !17
  %inc28 = add nsw i32 %24, 1, !dbg !103, !taffo.info !17
  store i32 %inc28, i32* %i, align 4, !dbg !103, !taffo.info !17
  br label %for.cond, !dbg !104, !llvm.loop !105

for.end29:                                        ; preds = %for.cond
  br label %VITIS_LOOP_38_3, !dbg !106

VITIS_LOOP_38_3:                                  ; preds = %for.end29
  store i32 0, i32* %k, align 4, !dbg !108, !taffo.info !17
  br label %for.cond30, !dbg !110

for.cond30:                                       ; preds = %for.inc85, %VITIS_LOOP_38_3
  %25 = load i32, i32* %k, align 4, !dbg !111, !taffo.info !17
  %cmp31 = icmp slt i32 %25, 16, !dbg !113, !taffo.info !17
  br i1 %cmp31, label %for.body32, label %for.end87, !dbg !114, !taffo.info !17

for.body32:                                       ; preds = %for.cond30
  br label %VITIS_LOOP_39_4, !dbg !115

VITIS_LOOP_39_4:                                  ; preds = %for.body32
  store i32 0, i32* %i, align 4, !dbg !116, !taffo.info !17
  br label %for.cond33, !dbg !119

for.cond33:                                       ; preds = %for.inc82, %VITIS_LOOP_39_4
  %26 = load i32, i32* %i, align 4, !dbg !120, !taffo.info !17
  %cmp34 = icmp slt i32 %26, 16, !dbg !122, !taffo.info !17
  br i1 %cmp34, label %for.body35, label %for.end84, !dbg !123, !taffo.info !17

for.body35:                                       ; preds = %for.cond33
  br label %VITIS_LOOP_40_5, !dbg !124

VITIS_LOOP_40_5:                                  ; preds = %for.body35
  store i32 0, i32* %j, align 4, !dbg !125, !taffo.info !17
  br label %for.cond36, !dbg !128

for.cond36:                                       ; preds = %for.inc79, %VITIS_LOOP_40_5
  %27 = load i32, i32* %j, align 4, !dbg !129, !taffo.info !17
  %cmp37 = icmp slt i32 %27, 16, !dbg !131, !taffo.info !17
  br i1 %cmp37, label %for.body38, label %for.end81, !dbg !132, !taffo.info !17

for.body38:                                       ; preds = %for.cond36
  %28 = bitcast float* %tmpa to i8*, !dbg !133, !taffo.info !17
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %28) #3, !dbg !133, !taffo.info !17
  call void @llvm.dbg.declare(metadata float* %tmpa, metadata !135, metadata !DIExpression()), !dbg !136
  %tmpa39 = bitcast float* %tmpa to i8*, !dbg !133, !taffo.info !17
  %29 = load i32, i32* %i, align 4, !dbg !137, !taffo.info !17
  %30 = load i32, i32* %n, align 4, !dbg !138
  %mul40 = mul nsw i32 %29, %30, !dbg !139, !taffo.info !17
  %31 = load i32, i32* %k, align 4, !dbg !140, !taffo.info !17
  %add41 = add nsw i32 %mul40, %31, !dbg !141, !taffo.info !17
  %idxprom42 = sext i32 %add41 to i64, !dbg !142, !taffo.info !17
  %arrayidx43 = getelementptr inbounds [256 x float], [256 x float]* %path, i64 0, i64 %idxprom42, !dbg !142, !taffo.info !17, !taffo.target !18
  %32 = load float, float* %arrayidx43, align 4, !dbg !142, !taffo.info !17, !taffo.target !18
  store float %32, float* %tmpa, align 4, !dbg !136, !taffo.info !17
  %33 = bitcast float* %tmpb to i8*, !dbg !143, !taffo.info !17
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %33) #3, !dbg !143, !taffo.info !17
  call void @llvm.dbg.declare(metadata float* %tmpb, metadata !144, metadata !DIExpression()), !dbg !145
  %tmpb44 = bitcast float* %tmpb to i8*, !dbg !143, !taffo.info !17
  %34 = load i32, i32* %k, align 4, !dbg !146, !taffo.info !17
  %35 = load i32, i32* %n, align 4, !dbg !147
  %mul45 = mul nsw i32 %34, %35, !dbg !148, !taffo.info !17
  %36 = load i32, i32* %j, align 4, !dbg !149, !taffo.info !17
  %add46 = add nsw i32 %mul45, %36, !dbg !150, !taffo.info !17
  %idxprom47 = sext i32 %add46 to i64, !dbg !151, !taffo.info !17
  %arrayidx48 = getelementptr inbounds [256 x float], [256 x float]* %path, i64 0, i64 %idxprom47, !dbg !151, !taffo.info !17, !taffo.target !18
  %37 = load float, float* %arrayidx48, align 4, !dbg !151, !taffo.info !17, !taffo.target !18
  store float %37, float* %tmpb, align 4, !dbg !145, !taffo.info !17
  %38 = bitcast i32* %cond to i8*, !dbg !152
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %38) #3, !dbg !152
  call void @llvm.dbg.declare(metadata i32* %cond, metadata !153, metadata !DIExpression()), !dbg !154
  %39 = load i32, i32* %i, align 4, !dbg !155, !taffo.info !17
  %40 = load i32, i32* %n, align 4, !dbg !156
  %mul49 = mul nsw i32 %39, %40, !dbg !157, !taffo.info !17
  %41 = load i32, i32* %j, align 4, !dbg !158, !taffo.info !17
  %add50 = add nsw i32 %mul49, %41, !dbg !159, !taffo.info !17
  %idxprom51 = sext i32 %add50 to i64, !dbg !160, !taffo.info !17
  %arrayidx52 = getelementptr inbounds [256 x float], [256 x float]* %path, i64 0, i64 %idxprom51, !dbg !160, !taffo.info !17, !taffo.target !18
  %42 = load float, float* %arrayidx52, align 4, !dbg !160, !taffo.info !17, !taffo.target !18
  %43 = load i32, i32* %i, align 4, !dbg !161, !taffo.info !17
  %44 = load i32, i32* %n, align 4, !dbg !162
  %mul53 = mul nsw i32 %43, %44, !dbg !163, !taffo.info !17
  %45 = load i32, i32* %k, align 4, !dbg !164, !taffo.info !17
  %add54 = add nsw i32 %mul53, %45, !dbg !165, !taffo.info !17
  %idxprom55 = sext i32 %add54 to i64, !dbg !166, !taffo.info !17
  %arrayidx56 = getelementptr inbounds [256 x float], [256 x float]* %path, i64 0, i64 %idxprom55, !dbg !166, !taffo.info !17, !taffo.target !18
  %46 = load float, float* %arrayidx56, align 4, !dbg !166, !taffo.info !17, !taffo.target !18
  %47 = load i32, i32* %k, align 4, !dbg !167, !taffo.info !17
  %48 = load i32, i32* %n, align 4, !dbg !168
  %mul57 = mul nsw i32 %47, %48, !dbg !169, !taffo.info !17
  %49 = load i32, i32* %j, align 4, !dbg !170, !taffo.info !17
  %add58 = add nsw i32 %mul57, %49, !dbg !171, !taffo.info !17
  %idxprom59 = sext i32 %add58 to i64, !dbg !172, !taffo.info !17
  %arrayidx60 = getelementptr inbounds [256 x float], [256 x float]* %path, i64 0, i64 %idxprom59, !dbg !172, !taffo.info !17, !taffo.target !18
  %50 = load float, float* %arrayidx60, align 4, !dbg !172, !taffo.info !17, !taffo.target !18
  %add61 = fadd float %46, %50, !dbg !173, !taffo.info !17, !taffo.target !18
  %cmp62 = fcmp olt float %42, %add61, !dbg !174, !taffo.info !17, !taffo.target !18
  %conv63 = zext i1 %cmp62 to i32, !dbg !160, !taffo.info !17, !taffo.target !18
  store i32 %conv63, i32* %cond, align 4, !dbg !154, !taffo.info !17, !taffo.target !18
  %51 = load i32, i32* %cond, align 4, !dbg !175
  %tobool = icmp ne i32 %51, 0, !dbg !175
  br i1 %tobool, label %if.then64, label %if.else, !dbg !177

if.then64:                                        ; preds = %for.body38
  %52 = load i32, i32* %i, align 4, !dbg !178, !taffo.info !17
  %53 = load i32, i32* %n, align 4, !dbg !180
  %mul65 = mul nsw i32 %52, %53, !dbg !181, !taffo.info !17
  %54 = load i32, i32* %j, align 4, !dbg !182, !taffo.info !17
  %add66 = add nsw i32 %mul65, %54, !dbg !183, !taffo.info !17
  %idxprom67 = sext i32 %add66 to i64, !dbg !184, !taffo.info !17
  %arrayidx68 = getelementptr inbounds [256 x float], [256 x float]* %path, i64 0, i64 %idxprom67, !dbg !184, !taffo.info !17, !taffo.target !18
  %55 = load float, float* %arrayidx68, align 4, !dbg !184, !taffo.info !17, !taffo.target !18
  %56 = load i32, i32* %i, align 4, !dbg !185, !taffo.info !17
  %57 = load i32, i32* %n, align 4, !dbg !186
  %mul69 = mul nsw i32 %56, %57, !dbg !187, !taffo.info !17
  %58 = load i32, i32* %j, align 4, !dbg !188, !taffo.info !17
  %add70 = add nsw i32 %mul69, %58, !dbg !189, !taffo.info !17
  %idxprom71 = sext i32 %add70 to i64, !dbg !190, !taffo.info !17
  %arrayidx72 = getelementptr inbounds [256 x float], [256 x float]* %path, i64 0, i64 %idxprom71, !dbg !190, !taffo.info !17, !taffo.target !18
  store float %55, float* %arrayidx72, align 4, !dbg !191, !taffo.info !17, !taffo.target !18
  br label %if.end78, !dbg !192

if.else:                                          ; preds = %for.body38
  %59 = load float, float* %tmpa, align 4, !dbg !193, !taffo.info !17
  %60 = load float, float* %tmpb, align 4, !dbg !195, !taffo.info !17
  %add73 = fadd float %59, %60, !dbg !196, !taffo.info !17
  %61 = load i32, i32* %i, align 4, !dbg !197, !taffo.info !17
  %62 = load i32, i32* %n, align 4, !dbg !198
  %mul74 = mul nsw i32 %61, %62, !dbg !199, !taffo.info !17
  %63 = load i32, i32* %j, align 4, !dbg !200, !taffo.info !17
  %add75 = add nsw i32 %mul74, %63, !dbg !201, !taffo.info !17
  %idxprom76 = sext i32 %add75 to i64, !dbg !202, !taffo.info !17
  %arrayidx77 = getelementptr inbounds [256 x float], [256 x float]* %path, i64 0, i64 %idxprom76, !dbg !202, !taffo.info !17, !taffo.target !18
  store float %add73, float* %arrayidx77, align 4, !dbg !203, !taffo.info !17, !taffo.target !18
  br label %if.end78

if.end78:                                         ; preds = %if.else, %if.then64
  %64 = bitcast i32* %cond to i8*, !dbg !204
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %64) #3, !dbg !204
  %65 = bitcast float* %tmpb to i8*, !dbg !204, !taffo.info !17
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %65) #3, !dbg !204, !taffo.info !17
  %66 = bitcast float* %tmpa to i8*, !dbg !204, !taffo.info !17
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %66) #3, !dbg !204, !taffo.info !17
  br label %for.inc79, !dbg !205

for.inc79:                                        ; preds = %if.end78
  %67 = load i32, i32* %j, align 4, !dbg !206, !taffo.info !17
  %inc80 = add nsw i32 %67, 1, !dbg !206, !taffo.info !17
  store i32 %inc80, i32* %j, align 4, !dbg !206, !taffo.info !17
  br label %for.cond36, !dbg !207, !llvm.loop !208

for.end81:                                        ; preds = %for.cond36
  br label %for.inc82, !dbg !211

for.inc82:                                        ; preds = %for.end81
  %68 = load i32, i32* %i, align 4, !dbg !212, !taffo.info !17
  %inc83 = add nsw i32 %68, 1, !dbg !212, !taffo.info !17
  store i32 %inc83, i32* %i, align 4, !dbg !212, !taffo.info !17
  br label %for.cond33, !dbg !213, !llvm.loop !214

for.end84:                                        ; preds = %for.cond33
  br label %for.inc85, !dbg !217

for.inc85:                                        ; preds = %for.end84
  %69 = load i32, i32* %k, align 4, !dbg !218, !taffo.info !17
  %inc86 = add nsw i32 %69, 1, !dbg !218, !taffo.info !17
  store i32 %inc86, i32* %k, align 4, !dbg !218, !taffo.info !17
  br label %for.cond30, !dbg !219, !llvm.loop !220

for.end87:                                        ; preds = %for.cond30
  br label %VITIS_LOOP_53_6, !dbg !221

VITIS_LOOP_53_6:                                  ; preds = %for.end87
  store i32 0, i32* %i, align 4, !dbg !223, !taffo.info !17
  br label %for.cond88, !dbg !225

for.cond88:                                       ; preds = %for.inc94, %VITIS_LOOP_53_6
  %70 = load i32, i32* %i, align 4, !dbg !226, !taffo.info !17
  %cmp89 = icmp slt i32 %70, 256, !dbg !228, !taffo.info !17
  br i1 %cmp89, label %for.body90, label %for.end96, !dbg !229, !taffo.info !17

for.body90:                                       ; preds = %for.cond88
  %71 = load i32, i32* %i, align 4, !dbg !230, !taffo.info !17
  %idxprom91 = sext i32 %71 to i64, !dbg !232, !taffo.info !17
  %arrayidx92 = getelementptr inbounds [256 x float], [256 x float]* %path, i64 0, i64 %idxprom91, !dbg !232, !taffo.info !17, !taffo.target !18
  %72 = load float, float* %arrayidx92, align 4, !dbg !232, !taffo.info !17, !taffo.target !18
  %conv93 = fpext float %72 to double, !dbg !232, !taffo.info !17, !taffo.target !18
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), double %conv93), !dbg !233, !taffo.info !17, !taffo.target !18
  br label %for.inc94, !dbg !234

for.inc94:                                        ; preds = %for.body90
  %73 = load i32, i32* %i, align 4, !dbg !235, !taffo.info !17
  %inc95 = add nsw i32 %73, 1, !dbg !235, !taffo.info !17
  store i32 %inc95, i32* %i, align 4, !dbg !235, !taffo.info !17
  br label %for.cond88, !dbg !236, !llvm.loop !237

for.end96:                                        ; preds = %for.cond88
  %74 = bitcast [256 x float]* %path to i8*, !dbg !240, !taffo.info !17, !taffo.target !18
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* %74) #3, !dbg !240, !taffo.info !17, !taffo.target !18
  %75 = bitcast i32* %k to i8*, !dbg !240, !taffo.info !17
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %75) #3, !dbg !240, !taffo.info !17
  %76 = bitcast i32* %j to i8*, !dbg !240, !taffo.info !17
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %76) #3, !dbg !240, !taffo.info !17
  %77 = bitcast i32* %i to i8*, !dbg !240, !taffo.info !17
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %77) #3, !dbg !240, !taffo.info !17
  %78 = bitcast i32* %n to i8*, !dbg !240
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %78) #3, !dbg !240
  ret void, !dbg !240
}

; Function Attrs: argmemonly nounwind
declare !taffo.funinfo !241 void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable
declare !taffo.funinfo !242 void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind
declare !taffo.funinfo !243 void @llvm.var.annotation(i8*, i8*, i8*, i32) #3

; Function Attrs: argmemonly nounwind
declare !taffo.funinfo !241 void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

declare !taffo.funinfo !244 i32 @printf(i8*, ...) #4

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.top.func"="fw" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nounwind }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.ident = !{!3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3}
!llvm.module.flags = !{!4, !5, !6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/home/bruno/Desktop/benchmarks/fw/proj_fw/solution1/.autopilot/db/fw_taffo.pp.0.c", directory: "/home/bruno/Desktop/benchmarks/fw")
!2 = !{}
!3 = !{!"clang version 7.0.0 "}
!4 = !{i32 2, !"Dwarf Version", i32 4}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = distinct !DISubprogram(name: "fw", scope: !8, file: !8, line: 21, type: !9, scopeLine: 21, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DIFile(filename: "fw_taffo.c", directory: "/home/bruno/Desktop/benchmarks/fw")
!9 = !DISubroutineType(types: !10)
!10 = !{null}
!11 = !{!12}
!12 = !{!"fpga.top", !"user", !13}
!13 = !DILocation(line: 21, column: 16, scope: !7)
!14 = !{i1 true}
!15 = !{i1 false, !16, i1 false, i1 true}
!16 = !{double -1.600000e+01, double 1.600000e+01}
!17 = !{i1 false, i1 false, i1 false, i1 true}
!18 = !{!"path"}
!19 = !DILocation(line: 23, column: 3, scope: !7)
!20 = !DILocalVariable(name: "n", scope: !7, file: !8, line: 23, type: !21)
!21 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!22 = !DILocation(line: 23, column: 7, scope: !7)
!23 = !DILocation(line: 24, column: 3, scope: !7)
!24 = !DILocalVariable(name: "i", scope: !7, file: !8, line: 24, type: !21)
!25 = !DILocation(line: 24, column: 7, scope: !7)
!26 = !DILocation(line: 25, column: 3, scope: !7)
!27 = !DILocalVariable(name: "j", scope: !7, file: !8, line: 25, type: !21)
!28 = !DILocation(line: 25, column: 7, scope: !7)
!29 = !DILocation(line: 26, column: 3, scope: !7)
!30 = !DILocalVariable(name: "k", scope: !7, file: !8, line: 26, type: !21)
!31 = !DILocation(line: 26, column: 7, scope: !7)
!32 = !DILocation(line: 28, column: 3, scope: !7)
!33 = !DILocalVariable(name: "path", scope: !7, file: !8, line: 28, type: !34)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 8192, elements: !36)
!35 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!36 = !{!37}
!37 = !DISubrange(count: 256)
!38 = !DILocation(line: 28, column: 9, scope: !7)
!39 = !DILocation(line: 30, column: 27, scope: !40)
!40 = distinct !DILexicalBlock(scope: !7, file: !8, line: 30, column: 20)
!41 = !DILocation(line: 30, column: 25, scope: !40)
!42 = !DILocation(line: 30, column: 32, scope: !43)
!43 = distinct !DILexicalBlock(scope: !40, file: !8, line: 30, column: 20)
!44 = !DILocation(line: 30, column: 36, scope: !43)
!45 = !DILocation(line: 30, column: 34, scope: !43)
!46 = !DILocation(line: 30, column: 20, scope: !40)
!47 = !DILocation(line: 30, column: 43, scope: !43)
!48 = !DILocation(line: 31, column: 29, scope: !49)
!49 = distinct !DILexicalBlock(scope: !50, file: !8, line: 31, column: 22)
!50 = distinct !DILexicalBlock(scope: !43, file: !8, line: 30, column: 43)
!51 = !DILocation(line: 31, column: 27, scope: !49)
!52 = !DILocation(line: 31, column: 34, scope: !53)
!53 = distinct !DILexicalBlock(scope: !49, file: !8, line: 31, column: 22)
!54 = !DILocation(line: 31, column: 38, scope: !53)
!55 = !DILocation(line: 31, column: 36, scope: !53)
!56 = !DILocation(line: 31, column: 22, scope: !49)
!57 = !DILocation(line: 32, column: 21, scope: !58)
!58 = distinct !DILexicalBlock(scope: !53, file: !8, line: 31, column: 46)
!59 = !DILocation(line: 32, column: 23, scope: !58)
!60 = !DILocation(line: 32, column: 22, scope: !58)
!61 = !DILocation(line: 32, column: 24, scope: !58)
!62 = !DILocation(line: 32, column: 26, scope: !58)
!63 = !DILocation(line: 32, column: 12, scope: !58)
!64 = !DILocation(line: 32, column: 14, scope: !58)
!65 = !DILocation(line: 32, column: 13, scope: !58)
!66 = !DILocation(line: 32, column: 16, scope: !58)
!67 = !DILocation(line: 32, column: 15, scope: !58)
!68 = !DILocation(line: 32, column: 7, scope: !58)
!69 = !DILocation(line: 32, column: 19, scope: !58)
!70 = !DILocation(line: 33, column: 12, scope: !71)
!71 = distinct !DILexicalBlock(scope: !58, file: !8, line: 33, column: 11)
!72 = !DILocation(line: 33, column: 14, scope: !71)
!73 = !DILocation(line: 33, column: 13, scope: !71)
!74 = !DILocation(line: 33, column: 16, scope: !71)
!75 = !DILocation(line: 33, column: 20, scope: !71)
!76 = !DILocation(line: 33, column: 25, scope: !71)
!77 = !DILocation(line: 33, column: 29, scope: !71)
!78 = !DILocation(line: 33, column: 31, scope: !71)
!79 = !DILocation(line: 33, column: 30, scope: !71)
!80 = !DILocation(line: 33, column: 33, scope: !71)
!81 = !DILocation(line: 33, column: 35, scope: !71)
!82 = !DILocation(line: 33, column: 39, scope: !71)
!83 = !DILocation(line: 33, column: 43, scope: !71)
!84 = !DILocation(line: 33, column: 45, scope: !71)
!85 = !DILocation(line: 33, column: 44, scope: !71)
!86 = !DILocation(line: 33, column: 47, scope: !71)
!87 = !DILocation(line: 33, column: 51, scope: !71)
!88 = !DILocation(line: 33, column: 11, scope: !58)
!89 = !DILocation(line: 34, column: 15, scope: !71)
!90 = !DILocation(line: 34, column: 17, scope: !71)
!91 = !DILocation(line: 34, column: 16, scope: !71)
!92 = !DILocation(line: 34, column: 19, scope: !71)
!93 = !DILocation(line: 34, column: 18, scope: !71)
!94 = !DILocation(line: 34, column: 10, scope: !71)
!95 = !DILocation(line: 34, column: 22, scope: !71)
!96 = !DILocation(line: 35, column: 5, scope: !58)
!97 = !DILocation(line: 31, column: 42, scope: !53)
!98 = !DILocation(line: 31, column: 22, scope: !53)
!99 = distinct !{!99, !56, !100, !101}
!100 = !DILocation(line: 35, column: 5, scope: !49)
!101 = !{!"llvm.loop.name", !"VITIS_LOOP_31_2"}
!102 = !DILocation(line: 36, column: 3, scope: !50)
!103 = !DILocation(line: 30, column: 40, scope: !43)
!104 = !DILocation(line: 30, column: 20, scope: !43)
!105 = distinct !{!105, !46, !106, !107}
!106 = !DILocation(line: 36, column: 3, scope: !40)
!107 = !{!"llvm.loop.name", !"VITIS_LOOP_30_1"}
!108 = !DILocation(line: 38, column: 27, scope: !109)
!109 = distinct !DILexicalBlock(scope: !7, file: !8, line: 38, column: 20)
!110 = !DILocation(line: 38, column: 25, scope: !109)
!111 = !DILocation(line: 38, column: 32, scope: !112)
!112 = distinct !DILexicalBlock(scope: !109, file: !8, line: 38, column: 20)
!113 = !DILocation(line: 38, column: 34, scope: !112)
!114 = !DILocation(line: 38, column: 20, scope: !109)
!115 = !DILocation(line: 38, column: 44, scope: !112)
!116 = !DILocation(line: 39, column: 30, scope: !117)
!117 = distinct !DILexicalBlock(scope: !118, file: !8, line: 39, column: 24)
!118 = distinct !DILexicalBlock(scope: !112, file: !8, line: 38, column: 44)
!119 = !DILocation(line: 39, column: 28, scope: !117)
!120 = !DILocation(line: 39, column: 35, scope: !121)
!121 = distinct !DILexicalBlock(scope: !117, file: !8, line: 39, column: 24)
!122 = !DILocation(line: 39, column: 37, scope: !121)
!123 = !DILocation(line: 39, column: 24, scope: !117)
!124 = !DILocation(line: 39, column: 47, scope: !121)
!125 = !DILocation(line: 40, column: 33, scope: !126)
!126 = distinct !DILexicalBlock(scope: !127, file: !8, line: 40, column: 26)
!127 = distinct !DILexicalBlock(scope: !121, file: !8, line: 39, column: 47)
!128 = !DILocation(line: 40, column: 31, scope: !126)
!129 = !DILocation(line: 40, column: 38, scope: !130)
!130 = distinct !DILexicalBlock(scope: !126, file: !8, line: 40, column: 26)
!131 = !DILocation(line: 40, column: 40, scope: !130)
!132 = !DILocation(line: 40, column: 26, scope: !126)
!133 = !DILocation(line: 41, column: 11, scope: !134)
!134 = distinct !DILexicalBlock(scope: !130, file: !8, line: 40, column: 51)
!135 = !DILocalVariable(name: "tmpa", scope: !134, file: !8, line: 41, type: !35)
!136 = !DILocation(line: 41, column: 55, scope: !134)
!137 = !DILocation(line: 41, column: 67, scope: !134)
!138 = !DILocation(line: 41, column: 69, scope: !134)
!139 = !DILocation(line: 41, column: 68, scope: !134)
!140 = !DILocation(line: 41, column: 71, scope: !134)
!141 = !DILocation(line: 41, column: 70, scope: !134)
!142 = !DILocation(line: 41, column: 62, scope: !134)
!143 = !DILocation(line: 42, column: 11, scope: !134)
!144 = !DILocalVariable(name: "tmpb", scope: !134, file: !8, line: 42, type: !35)
!145 = !DILocation(line: 42, column: 55, scope: !134)
!146 = !DILocation(line: 42, column: 67, scope: !134)
!147 = !DILocation(line: 42, column: 69, scope: !134)
!148 = !DILocation(line: 42, column: 68, scope: !134)
!149 = !DILocation(line: 42, column: 71, scope: !134)
!150 = !DILocation(line: 42, column: 70, scope: !134)
!151 = !DILocation(line: 42, column: 62, scope: !134)
!152 = !DILocation(line: 43, column: 11, scope: !134)
!153 = !DILocalVariable(name: "cond", scope: !134, file: !8, line: 43, type: !21)
!154 = !DILocation(line: 43, column: 15, scope: !134)
!155 = !DILocation(line: 43, column: 27, scope: !134)
!156 = !DILocation(line: 43, column: 29, scope: !134)
!157 = !DILocation(line: 43, column: 28, scope: !134)
!158 = !DILocation(line: 43, column: 31, scope: !134)
!159 = !DILocation(line: 43, column: 30, scope: !134)
!160 = !DILocation(line: 43, column: 22, scope: !134)
!161 = !DILocation(line: 43, column: 41, scope: !134)
!162 = !DILocation(line: 43, column: 43, scope: !134)
!163 = !DILocation(line: 43, column: 42, scope: !134)
!164 = !DILocation(line: 43, column: 45, scope: !134)
!165 = !DILocation(line: 43, column: 44, scope: !134)
!166 = !DILocation(line: 43, column: 36, scope: !134)
!167 = !DILocation(line: 43, column: 55, scope: !134)
!168 = !DILocation(line: 43, column: 57, scope: !134)
!169 = !DILocation(line: 43, column: 56, scope: !134)
!170 = !DILocation(line: 43, column: 59, scope: !134)
!171 = !DILocation(line: 43, column: 58, scope: !134)
!172 = !DILocation(line: 43, column: 50, scope: !134)
!173 = !DILocation(line: 43, column: 48, scope: !134)
!174 = !DILocation(line: 43, column: 34, scope: !134)
!175 = !DILocation(line: 44, column: 15, scope: !176)
!176 = distinct !DILexicalBlock(scope: !134, file: !8, line: 44, column: 15)
!177 = !DILocation(line: 44, column: 15, scope: !134)
!178 = !DILocation(line: 45, column: 32, scope: !179)
!179 = distinct !DILexicalBlock(scope: !176, file: !8, line: 44, column: 21)
!180 = !DILocation(line: 45, column: 34, scope: !179)
!181 = !DILocation(line: 45, column: 33, scope: !179)
!182 = !DILocation(line: 45, column: 36, scope: !179)
!183 = !DILocation(line: 45, column: 35, scope: !179)
!184 = !DILocation(line: 45, column: 27, scope: !179)
!185 = !DILocation(line: 45, column: 18, scope: !179)
!186 = !DILocation(line: 45, column: 20, scope: !179)
!187 = !DILocation(line: 45, column: 19, scope: !179)
!188 = !DILocation(line: 45, column: 22, scope: !179)
!189 = !DILocation(line: 45, column: 21, scope: !179)
!190 = !DILocation(line: 45, column: 13, scope: !179)
!191 = !DILocation(line: 45, column: 25, scope: !179)
!192 = !DILocation(line: 46, column: 11, scope: !179)
!193 = !DILocation(line: 47, column: 27, scope: !194)
!194 = distinct !DILexicalBlock(scope: !176, file: !8, line: 46, column: 18)
!195 = !DILocation(line: 47, column: 34, scope: !194)
!196 = !DILocation(line: 47, column: 32, scope: !194)
!197 = !DILocation(line: 47, column: 18, scope: !194)
!198 = !DILocation(line: 47, column: 20, scope: !194)
!199 = !DILocation(line: 47, column: 19, scope: !194)
!200 = !DILocation(line: 47, column: 22, scope: !194)
!201 = !DILocation(line: 47, column: 21, scope: !194)
!202 = !DILocation(line: 47, column: 13, scope: !194)
!203 = !DILocation(line: 47, column: 25, scope: !194)
!204 = !DILocation(line: 49, column: 9, scope: !130)
!205 = !DILocation(line: 49, column: 9, scope: !134)
!206 = !DILocation(line: 40, column: 47, scope: !130)
!207 = !DILocation(line: 40, column: 26, scope: !130)
!208 = distinct !{!208, !132, !209, !210}
!209 = !DILocation(line: 49, column: 9, scope: !126)
!210 = !{!"llvm.loop.name", !"VITIS_LOOP_40_5"}
!211 = !DILocation(line: 50, column: 8, scope: !127)
!212 = !DILocation(line: 39, column: 44, scope: !121)
!213 = !DILocation(line: 39, column: 24, scope: !121)
!214 = distinct !{!214, !123, !215, !216}
!215 = !DILocation(line: 50, column: 8, scope: !117)
!216 = !{!"llvm.loop.name", !"VITIS_LOOP_39_4"}
!217 = !DILocation(line: 51, column: 3, scope: !118)
!218 = !DILocation(line: 38, column: 41, scope: !112)
!219 = !DILocation(line: 38, column: 20, scope: !112)
!220 = distinct !{!220, !114, !221, !222}
!221 = !DILocation(line: 51, column: 3, scope: !109)
!222 = !{!"llvm.loop.name", !"VITIS_LOOP_38_3"}
!223 = !DILocation(line: 53, column: 27, scope: !224)
!224 = distinct !DILexicalBlock(scope: !7, file: !8, line: 53, column: 20)
!225 = !DILocation(line: 53, column: 25, scope: !224)
!226 = !DILocation(line: 53, column: 32, scope: !227)
!227 = distinct !DILexicalBlock(scope: !224, file: !8, line: 53, column: 20)
!228 = !DILocation(line: 53, column: 34, scope: !227)
!229 = !DILocation(line: 53, column: 20, scope: !224)
!230 = !DILocation(line: 54, column: 26, scope: !231)
!231 = distinct !DILexicalBlock(scope: !227, file: !8, line: 53, column: 47)
!232 = !DILocation(line: 54, column: 21, scope: !231)
!233 = !DILocation(line: 54, column: 5, scope: !231)
!234 = !DILocation(line: 55, column: 3, scope: !231)
!235 = !DILocation(line: 53, column: 44, scope: !227)
!236 = !DILocation(line: 53, column: 20, scope: !227)
!237 = distinct !{!237, !229, !238, !239}
!238 = !DILocation(line: 55, column: 3, scope: !224)
!239 = !{!"llvm.loop.name", !"VITIS_LOOP_53_6"}
!240 = !DILocation(line: 57, column: 1, scope: !7)
!241 = !{i32 0, i1 false, i32 0, i1 false}
!242 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!243 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!244 = !{i32 0, i1 false}
