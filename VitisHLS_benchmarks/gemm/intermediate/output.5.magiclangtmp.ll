; ModuleID = '/home/bruno/Desktop/benchmarks/gemm/intermediate/output.4.magiclangtmp.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.global_ctors = appending global [0 x { i32, void ()*, i8* }] zeroinitializer, !taffo.structinfo !0
@.str = private unnamed_addr constant [9 x i8] c"scalar()\00", section "llvm.metadata", !taffo.info !3
@.str.1 = private unnamed_addr constant [15 x i8] c"gemm_taffoin.c\00", section "llvm.metadata", !taffo.info !5
@.str.2 = private unnamed_addr constant [35 x i8] c"target('D') scalar(range(-16, 16))\00", section "llvm.metadata", !taffo.info !5
@.str.3 = private unnamed_addr constant [21 x i8] c"scalar(range(0, 16))\00", section "llvm.metadata", !taffo.info !3
@.str.4 = private unnamed_addr constant [23 x i8] c"scalar(range(-16, 16))\00", section "llvm.metadata", !taffo.info !3
@.str.5 = private unnamed_addr constant [25 x i8] c"scalar(range(-100, 100))\00", section "llvm.metadata", !taffo.info !3
@.str.6 = private unnamed_addr constant [21 x i8] c"scalar(range(0, 32))\00", section "llvm.metadata", !taffo.info !3

; Function Attrs: nounwind
define float @mm(float %gamma) #0 !dbg !16 !fpga.function.pragma !20 !taffo.start !23 !taffo.funinfo !24 {
entry:
  %gamma.addr = alloca float, align 4
  %ni = alloca i32, align 4, !taffo.info !25
  %nj = alloca i32, align 4, !taffo.info !25
  %nk = alloca i32, align 4, !taffo.info !25
  %nl = alloca i32, align 4, !taffo.info !25
  %A.u3_29fixp = alloca [1024 x i32], align 4, !taffo.info !27
  %B.u2_30fixp = alloca [1024 x i32], align 4, !taffo.info !30
  %D.s6_26fixp = alloca [1024 x i32], align 4, !taffo.info !33, !taffo.target !36
  %i = alloca i32, align 4, !taffo.info !37
  %j = alloca i32, align 4, !taffo.info !37
  %alpha.u2_30fixp = alloca i32, align 4, !taffo.info !39
  %beta.u2_30fixp = alloca i32, align 4, !taffo.info !41
  %fg.s6_26fixp = alloca i32, align 4, !taffo.info !33
  %tmp.s6_26fixp = alloca [1024 x i32], align 4, !taffo.info !33
  %sum.s8_24fixp = alloca i32, align 4, !taffo.info !43
  %ii = alloca i32, align 4, !taffo.info !46
  %jj = alloca i32, align 4, !taffo.info !46
  %k = alloca i32, align 4, !taffo.info !46
  %z.s8_24fixp = alloca i32, align 4, !taffo.info !43
  store float %gamma, float* %gamma.addr, align 4
  call void @llvm.dbg.declare(metadata float* %gamma.addr, metadata !48, metadata !DIExpression()), !dbg !49
  %0 = bitcast i32* %ni to i8*, !dbg !50
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #3, !dbg !50
  call void @llvm.dbg.declare(metadata i32* %ni, metadata !51, metadata !DIExpression()), !dbg !53
  store i32 32, i32* %ni, align 4, !dbg !53
  %1 = bitcast i32* %nj to i8*, !dbg !54
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #3, !dbg !54
  call void @llvm.dbg.declare(metadata i32* %nj, metadata !55, metadata !DIExpression()), !dbg !56
  store i32 32, i32* %nj, align 4, !dbg !56
  %2 = bitcast i32* %nk to i8*, !dbg !57
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #3, !dbg !57
  call void @llvm.dbg.declare(metadata i32* %nk, metadata !58, metadata !DIExpression()), !dbg !59
  store i32 32, i32* %nk, align 4, !dbg !59
  %3 = bitcast i32* %nl to i8*, !dbg !60
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #3, !dbg !60
  call void @llvm.dbg.declare(metadata i32* %nl, metadata !61, metadata !DIExpression()), !dbg !62
  store i32 32, i32* %nl, align 4, !dbg !62
  %4 = bitcast [1024 x i32]* %A.u3_29fixp to i8*, !dbg !63, !taffo.info !64
  %5 = bitcast i8* %4 to i8*, !taffo.info !64
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* %5) #3, !dbg !63, !taffo.info !65
  call void @llvm.dbg.declare(metadata !9, metadata !66, metadata !DIExpression()), !dbg !70
  %6 = bitcast [1024 x i32]* %B.u2_30fixp to i8*, !dbg !71, !taffo.info !72
  %7 = bitcast i8* %6 to i8*, !taffo.info !72
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* %7) #3, !dbg !71, !taffo.info !65
  call void @llvm.dbg.declare(metadata !9, metadata !73, metadata !DIExpression()), !dbg !74
  %8 = bitcast [1024 x i32]* %D.s6_26fixp to i8*, !dbg !75, !taffo.info !76, !taffo.target !36
  %9 = bitcast i8* %8 to i8*, !taffo.info !76, !taffo.target !36
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* %9) #3, !dbg !75, !taffo.info !65, !taffo.target !36
  call void @llvm.dbg.declare(metadata !9, metadata !77, metadata !DIExpression()), !dbg !78
  %10 = bitcast i32* %i to i8*, !dbg !79, !taffo.info !37
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3, !dbg !79, !taffo.info !65
  call void @llvm.dbg.declare(metadata i32* %i, metadata !80, metadata !DIExpression()), !dbg !81
  %11 = bitcast i32* %j to i8*, !dbg !82, !taffo.info !37
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #3, !dbg !82, !taffo.info !65
  call void @llvm.dbg.declare(metadata i32* %j, metadata !83, metadata !DIExpression()), !dbg !84
  br label %VITIS_LOOP_54_1, !dbg !82

VITIS_LOOP_54_1:                                  ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !85, !taffo.info !65
  br label %for.cond, !dbg !87

for.cond:                                         ; preds = %for.inc13, %VITIS_LOOP_54_1
  %12 = load i32, i32* %i, align 4, !dbg !88, !taffo.info !90
  %13 = load i32, i32* %ni, align 4, !dbg !92, !taffo.info !25
  %cmp = icmp slt i32 %12, %13, !dbg !93, !taffo.info !94
  br i1 %cmp, label %for.body, label %for.end15, !dbg !96, !taffo.info !65

for.body:                                         ; preds = %for.cond
  br label %VITIS_LOOP_55_2, !dbg !96

VITIS_LOOP_55_2:                                  ; preds = %for.body
  store i32 0, i32* %j, align 4, !dbg !97, !taffo.info !65
  br label %for.cond6, !dbg !99

for.cond6:                                        ; preds = %for.inc, %VITIS_LOOP_55_2
  %14 = load i32, i32* %j, align 4, !dbg !100, !taffo.info !90
  %15 = load i32, i32* %nk, align 4, !dbg !102, !taffo.info !25
  %cmp7 = icmp slt i32 %14, %15, !dbg !103, !taffo.info !94
  br i1 %cmp7, label %for.body8, label %for.end, !dbg !104, !taffo.info !65

for.body8:                                        ; preds = %for.cond6
  %16 = load i32, i32* %i, align 4, !dbg !105, !taffo.info !37
  %17 = load i32, i32* %j, align 4, !dbg !106, !taffo.info !37
  %mul = mul nsw i32 %16, %17, !dbg !107, !taffo.info !108
  %add = add nsw i32 %mul, 1, !dbg !110, !taffo.info !111
  %18 = load i32, i32* %ni, align 4, !dbg !113, !taffo.info !25
  %rem = srem i32 %add, %18, !dbg !114, !taffo.info !46
  %conv.u8_24fixp = shl i32 %rem, 24, !dbg !115, !taffo.info !116
  %19 = zext i32 %conv.u8_24fixp to i64, !dbg !118, !taffo.info !116
  %20 = mul i64 83886080, %19, !dbg !118, !taffo.info !119
  %21 = lshr i64 %20, 24, !dbg !118, !taffo.info !119
  %mul9.u8_24fixp = trunc i64 %21 to i32, !dbg !121, !taffo.info !122
  %22 = zext i32 %mul9.u8_24fixp to i64, !dbg !118, !taffo.info !122
  %23 = shl i64 %22, 29, !dbg !118, !taffo.info !122
  %24 = load i32, i32* %ni, align 4, !dbg !118, !taffo.info !25
  %25 = shl i32 %24, 29, !dbg !124, !taffo.info !25
  %26 = zext i32 %25 to i64, !dbg !125, !taffo.info !25
  %27 = udiv i64 %23, %26, !dbg !125, !taffo.info !126
  %28 = shl i64 %27, 5, !dbg !125, !taffo.info !126
  %div.u3_29fixp = trunc i64 %28 to i32, !dbg !124, !taffo.info !27
  %29 = load i32, i32* %i, align 4, !dbg !125, !taffo.info !37
  %30 = load i32, i32* %nk, align 4, !dbg !127, !taffo.info !25
  %mul11 = mul nsw i32 %29, %30, !dbg !128, !taffo.info !129
  %31 = load i32, i32* %j, align 4, !dbg !131, !taffo.info !37
  %add12 = add nsw i32 %mul11, %31, !dbg !132, !taffo.info !133
  %idxprom = sext i32 %add12 to i64, !dbg !135, !taffo.info !133
  %arrayidx.u3_29fixp = getelementptr inbounds [1024 x i32], [1024 x i32]* %A.u3_29fixp, i64 0, i64 %idxprom, !dbg !135, !taffo.info !27
  store i32 %div.u3_29fixp, i32* %arrayidx.u3_29fixp, align 4, !dbg !136, !taffo.info !65
  br label %for.inc, !dbg !135

for.inc:                                          ; preds = %for.body8
  %32 = load i32, i32* %j, align 4, !dbg !137, !taffo.info !37
  %inc = add nsw i32 %32, 1, !dbg !137, !taffo.info !138
  store i32 %inc, i32* %j, align 4, !dbg !137, !taffo.info !65
  br label %for.cond6, !dbg !140, !llvm.loop !141

for.end:                                          ; preds = %for.cond6
  br label %for.inc13, !dbg !142

for.inc13:                                        ; preds = %for.end
  %33 = load i32, i32* %i, align 4, !dbg !144, !taffo.info !37
  %inc14 = add nsw i32 %33, 1, !dbg !144, !taffo.info !138
  store i32 %inc14, i32* %i, align 4, !dbg !144, !taffo.info !65
  br label %for.cond, !dbg !145, !llvm.loop !146

for.end15:                                        ; preds = %for.cond
  br label %VITIS_LOOP_57_3, !dbg !147

VITIS_LOOP_57_3:                                  ; preds = %for.end15
  store i32 0, i32* %i, align 4, !dbg !149, !taffo.info !65
  br label %for.cond16, !dbg !151

for.cond16:                                       ; preds = %for.inc36, %VITIS_LOOP_57_3
  %34 = load i32, i32* %i, align 4, !dbg !152, !taffo.info !90
  %35 = load i32, i32* %nk, align 4, !dbg !154, !taffo.info !25
  %cmp17 = icmp slt i32 %34, %35, !dbg !155, !taffo.info !94
  br i1 %cmp17, label %for.body18, label %for.end38, !dbg !156, !taffo.info !65

for.body18:                                       ; preds = %for.cond16
  br label %VITIS_LOOP_58_4, !dbg !156

VITIS_LOOP_58_4:                                  ; preds = %for.body18
  store i32 0, i32* %j, align 4, !dbg !157, !taffo.info !65
  br label %for.cond19, !dbg !159

for.cond19:                                       ; preds = %for.inc33, %VITIS_LOOP_58_4
  %36 = load i32, i32* %j, align 4, !dbg !160, !taffo.info !90
  %37 = load i32, i32* %nj, align 4, !dbg !162, !taffo.info !25
  %cmp20 = icmp slt i32 %36, %37, !dbg !163, !taffo.info !94
  br i1 %cmp20, label %for.body21, label %for.end35, !dbg !164, !taffo.info !65

for.body21:                                       ; preds = %for.cond19
  %38 = load i32, i32* %i, align 4, !dbg !165, !taffo.info !90
  %39 = load i32, i32* %j, align 4, !dbg !166, !taffo.info !37
  %add22 = add nsw i32 %39, 1, !dbg !167, !taffo.info !138
  %mul23 = mul nsw i32 %38, %add22, !dbg !168, !taffo.info !169
  %40 = load i32, i32* %nj, align 4, !dbg !171, !taffo.info !25
  %rem24 = srem i32 %mul23, %40, !dbg !172, !taffo.info !46
  %conv25.u7_25fixp = shl i32 %rem24, 25, !dbg !173, !taffo.info !174
  %41 = zext i32 %conv25.u7_25fixp to i64, !dbg !176, !taffo.info !174
  %42 = mul i64 100663296, %41, !dbg !176, !taffo.info !177
  %43 = lshr i64 %42, 25, !dbg !176, !taffo.info !177
  %mul26.u7_25fixp = trunc i64 %43 to i32, !dbg !179, !taffo.info !180
  %44 = zext i32 %mul26.u7_25fixp to i64, !dbg !176, !taffo.info !180
  %45 = shl i64 %44, 30, !dbg !176, !taffo.info !180
  %46 = load i32, i32* %nj, align 4, !dbg !176, !taffo.info !25
  %47 = shl i32 %46, 30, !dbg !182, !taffo.info !25
  %48 = zext i32 %47 to i64, !dbg !183, !taffo.info !25
  %49 = udiv i64 %45, %48, !dbg !183, !taffo.info !184
  %50 = shl i64 %49, 5, !dbg !183, !taffo.info !184
  %div28.u2_30fixp = trunc i64 %50 to i32, !dbg !182, !taffo.info !30
  %51 = load i32, i32* %i, align 4, !dbg !183, !taffo.info !90
  %52 = load i32, i32* %nj, align 4, !dbg !185, !taffo.info !25
  %mul29 = mul nsw i32 %51, %52, !dbg !186, !taffo.info !187
  %53 = load i32, i32* %j, align 4, !dbg !189, !taffo.info !37
  %add30 = add nsw i32 %mul29, %53, !dbg !190, !taffo.info !191
  %idxprom31 = sext i32 %add30 to i64, !dbg !193, !taffo.info !191
  %arrayidx32.u2_30fixp = getelementptr inbounds [1024 x i32], [1024 x i32]* %B.u2_30fixp, i64 0, i64 %idxprom31, !dbg !193, !taffo.info !30
  store i32 %div28.u2_30fixp, i32* %arrayidx32.u2_30fixp, align 4, !dbg !194, !taffo.info !65
  br label %for.inc33, !dbg !193

for.inc33:                                        ; preds = %for.body21
  %54 = load i32, i32* %j, align 4, !dbg !195, !taffo.info !37
  %inc34 = add nsw i32 %54, 1, !dbg !195, !taffo.info !138
  store i32 %inc34, i32* %j, align 4, !dbg !195, !taffo.info !65
  br label %for.cond19, !dbg !196, !llvm.loop !197

for.end35:                                        ; preds = %for.cond19
  br label %for.inc36, !dbg !198

for.inc36:                                        ; preds = %for.end35
  %55 = load i32, i32* %i, align 4, !dbg !200, !taffo.info !37
  %inc37 = add nsw i32 %55, 1, !dbg !200, !taffo.info !138
  store i32 %inc37, i32* %i, align 4, !dbg !200, !taffo.info !65
  br label %for.cond16, !dbg !201, !llvm.loop !202

for.end38:                                        ; preds = %for.cond16
  br label %VITIS_LOOP_60_5, !dbg !203

VITIS_LOOP_60_5:                                  ; preds = %for.end38
  store i32 0, i32* %i, align 4, !dbg !205, !taffo.info !65
  br label %for.cond39, !dbg !207

for.cond39:                                       ; preds = %for.inc59, %VITIS_LOOP_60_5
  %56 = load i32, i32* %i, align 4, !dbg !208, !taffo.info !90
  %57 = load i32, i32* %ni, align 4, !dbg !210, !taffo.info !25
  %cmp40 = icmp slt i32 %56, %57, !dbg !211, !taffo.info !94
  br i1 %cmp40, label %for.body41, label %for.end61, !dbg !212, !taffo.info !65

for.body41:                                       ; preds = %for.cond39
  br label %VITIS_LOOP_61_6, !dbg !212

VITIS_LOOP_61_6:                                  ; preds = %for.body41
  store i32 0, i32* %j, align 4, !dbg !213, !taffo.info !65
  br label %for.cond42, !dbg !215

for.cond42:                                       ; preds = %for.inc56, %VITIS_LOOP_61_6
  %58 = load i32, i32* %j, align 4, !dbg !216, !taffo.info !90
  %59 = load i32, i32* %nl, align 4, !dbg !218, !taffo.info !25
  %cmp43 = icmp slt i32 %58, %59, !dbg !219, !taffo.info !94
  br i1 %cmp43, label %for.body44, label %for.end58, !dbg !220, !taffo.info !65

for.body44:                                       ; preds = %for.cond42
  %60 = load i32, i32* %i, align 4, !dbg !221, !taffo.info !90
  %61 = load i32, i32* %j, align 4, !dbg !222, !taffo.info !37
  %add45 = add nsw i32 %61, 2, !dbg !223, !taffo.info !224
  %mul46 = mul nsw i32 %60, %add45, !dbg !226, !taffo.info !227
  %62 = load i32, i32* %nk, align 4, !dbg !229, !taffo.info !25
  %rem47 = srem i32 %mul46, %62, !dbg !230, !taffo.info !46
  %conv48.u8_24fixp = shl i32 %rem47, 24, !dbg !231, !taffo.info !116
  %63 = zext i32 %conv48.u8_24fixp to i64, !dbg !232, !taffo.info !116
  %64 = mul i64 83886080, %63, !dbg !232, !taffo.info !119
  %65 = lshr i64 %64, 24, !dbg !232, !taffo.info !119
  %mul49.u8_24fixp = trunc i64 %65 to i32, !dbg !233, !taffo.info !122
  %66 = zext i32 %mul49.u8_24fixp to i64, !dbg !232, !taffo.info !122
  %67 = shl i64 %66, 29, !dbg !232, !taffo.info !122
  %68 = load i32, i32* %nk, align 4, !dbg !232, !taffo.info !25
  %69 = shl i32 %68, 29, !dbg !234, !taffo.info !25
  %70 = zext i32 %69 to i64, !dbg !235, !taffo.info !25
  %71 = udiv i64 %67, %70, !dbg !235, !taffo.info !126
  %72 = shl i64 %71, 5, !dbg !235, !taffo.info !126
  %div51.u3_29fixp = trunc i64 %72 to i32, !dbg !234, !taffo.info !27
  %73 = lshr i32 %div51.u3_29fixp, 3, !dbg !235, !taffo.info !27
  %74 = load i32, i32* %i, align 4, !dbg !235, !taffo.info !90
  %75 = load i32, i32* %nl, align 4, !dbg !236, !taffo.info !25
  %mul52 = mul nsw i32 %74, %75, !dbg !237, !taffo.info !187
  %76 = load i32, i32* %j, align 4, !dbg !238, !taffo.info !37
  %add53 = add nsw i32 %mul52, %76, !dbg !239, !taffo.info !191
  %idxprom54 = sext i32 %add53 to i64, !dbg !240, !taffo.info !191
  %arrayidx55.s6_26fixp = getelementptr inbounds [1024 x i32], [1024 x i32]* %D.s6_26fixp, i64 0, i64 %idxprom54, !dbg !240, !taffo.info !241, !taffo.target !36
  store i32 %73, i32* %arrayidx55.s6_26fixp, align 4, !dbg !244, !taffo.info !65, !taffo.target !36
  br label %for.inc56, !dbg !240

for.inc56:                                        ; preds = %for.body44
  %77 = load i32, i32* %j, align 4, !dbg !245, !taffo.info !37
  %inc57 = add nsw i32 %77, 1, !dbg !245, !taffo.info !138
  store i32 %inc57, i32* %j, align 4, !dbg !245, !taffo.info !65
  br label %for.cond42, !dbg !246, !llvm.loop !247

for.end58:                                        ; preds = %for.cond42
  br label %for.inc59, !dbg !248

for.inc59:                                        ; preds = %for.end58
  %78 = load i32, i32* %i, align 4, !dbg !250, !taffo.info !37
  %inc60 = add nsw i32 %78, 1, !dbg !250, !taffo.info !138
  store i32 %inc60, i32* %i, align 4, !dbg !250, !taffo.info !65
  br label %for.cond39, !dbg !251, !llvm.loop !252

for.end61:                                        ; preds = %for.cond39
  call void @llvm.dbg.declare(metadata !9, metadata !255, metadata !DIExpression()), !dbg !256
  store i32 1288490240, i32* %alpha.u2_30fixp, align 4, !dbg !256, !taffo.info !65
  call void @llvm.dbg.declare(metadata !9, metadata !257, metadata !DIExpression()), !dbg !258
  store i32 1610612736, i32* %beta.u2_30fixp, align 4, !dbg !258, !taffo.info !65
  call void @llvm.dbg.declare(metadata !9, metadata !259, metadata !DIExpression()), !dbg !260
  %79 = load float, float* %gamma.addr, align 4, !dbg !261
  %80 = fmul float 0x4190000000000000, %79, !dbg !260, !taffo.info !65
  %81 = fptosi float %80 to i32, !dbg !260, !taffo.info !65
  store i32 %81, i32* %fg.s6_26fixp, align 4, !dbg !260, !taffo.info !65
  call void @llvm.dbg.declare(metadata !9, metadata !262, metadata !DIExpression()), !dbg !263
  call void @llvm.dbg.declare(metadata !9, metadata !264, metadata !DIExpression()), !dbg !265
  store i32 0, i32* %sum.s8_24fixp, align 4, !dbg !265, !taffo.info !65
  call void @llvm.dbg.declare(metadata i32* %ii, metadata !266, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.declare(metadata i32* %jj, metadata !268, metadata !DIExpression()), !dbg !269
  call void @llvm.dbg.declare(metadata i32* %k, metadata !270, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.declare(metadata !9, metadata !272, metadata !DIExpression()), !dbg !273
  br label %VITIS_LOOP_73_7, !dbg !274

VITIS_LOOP_73_7:                                  ; preds = %for.end61
  store i32 0, i32* %ii, align 4, !dbg !275, !taffo.info !65
  br label %for.cond71, !dbg !277

for.cond71:                                       ; preds = %for.inc136, %VITIS_LOOP_73_7
  %82 = load i32, i32* %ii, align 4, !dbg !278, !taffo.info !280
  %cmp72 = icmp slt i32 %82, 32, !dbg !282, !taffo.info !283
  br i1 %cmp72, label %for.body73, label %for.end138, !dbg !285, !taffo.info !65

for.body73:                                       ; preds = %for.cond71
  br label %VITIS_LOOP_75_8, !dbg !286

VITIS_LOOP_75_8:                                  ; preds = %for.body73
  store i32 0, i32* %jj, align 4, !dbg !287, !taffo.info !65
  br label %for.cond74, !dbg !290

for.cond74:                                       ; preds = %for.inc133, %VITIS_LOOP_75_8
  %83 = load i32, i32* %jj, align 4, !dbg !291, !taffo.info !280
  %cmp75 = icmp slt i32 %83, 32, !dbg !293, !taffo.info !283
  br i1 %cmp75, label %for.body76, label %for.end135, !dbg !294, !taffo.info !65

for.body76:                                       ; preds = %for.cond74
  %84 = load i32, i32* %ii, align 4, !dbg !295, !taffo.info !280
  %mul77 = mul nsw i32 %84, 32, !dbg !297, !taffo.info !298
  %85 = load i32, i32* %jj, align 4, !dbg !300, !taffo.info !46
  %add78 = add nsw i32 %mul77, %85, !dbg !301, !taffo.info !302
  %idxprom79 = sext i32 %add78 to i64, !dbg !304, !taffo.info !302
  %arrayidx80.s6_26fixp = getelementptr inbounds [1024 x i32], [1024 x i32]* %tmp.s6_26fixp, i64 0, i64 %idxprom79, !dbg !304, !taffo.info !305
  store i32 0, i32* %arrayidx80.s6_26fixp, align 4, !dbg !308, !taffo.info !65
  br label %VITIS_LOOP_79_9, !dbg !304

VITIS_LOOP_79_9:                                  ; preds = %for.body76
  store i32 0, i32* %k, align 4, !dbg !309, !taffo.info !65
  br label %for.cond81, !dbg !311

for.cond81:                                       ; preds = %for.inc103, %VITIS_LOOP_79_9
  %86 = load i32, i32* %k, align 4, !dbg !312, !taffo.info !280
  %cmp82 = icmp slt i32 %86, 32, !dbg !314, !taffo.info !283
  br i1 %cmp82, label %for.body83, label %for.end105, !dbg !315, !taffo.info !65

for.body83:                                       ; preds = %for.cond81
  %87 = load i32, i32* %ii, align 4, !dbg !316, !taffo.info !280
  %mul84 = mul nsw i32 %87, 32, !dbg !318, !taffo.info !298
  %88 = load i32, i32* %k, align 4, !dbg !319, !taffo.info !46
  %add85 = add nsw i32 %mul84, %88, !dbg !320, !taffo.info !302
  %idxprom86 = sext i32 %add85 to i64, !dbg !321, !taffo.info !302
  %arrayidx87.u3_29fixp = getelementptr inbounds [1024 x i32], [1024 x i32]* %A.u3_29fixp, i64 0, i64 %idxprom86, !dbg !321, !taffo.info !27
  %u3_29fixp = load i32, i32* %arrayidx87.u3_29fixp, align 4, !dbg !321, !taffo.info !322
  %89 = load i32, i32* %k, align 4, !dbg !324, !taffo.info !46
  %mul88 = mul nsw i32 %89, 32, !dbg !325, !taffo.info !326
  %90 = load i32, i32* %jj, align 4, !dbg !328, !taffo.info !280
  %add89 = add nsw i32 %mul88, %90, !dbg !329, !taffo.info !330
  %idxprom90 = sext i32 %add89 to i64, !dbg !332, !taffo.info !330
  %arrayidx91.u2_30fixp = getelementptr inbounds [1024 x i32], [1024 x i32]* %B.u2_30fixp, i64 0, i64 %idxprom90, !dbg !332, !taffo.info !30
  %u2_30fixp4 = load i32, i32* %arrayidx91.u2_30fixp, align 4, !dbg !332, !taffo.info !322
  %91 = zext i32 %u3_29fixp to i64, !dbg !333, !taffo.info !322
  %92 = zext i32 %u2_30fixp4 to i64, !dbg !333, !taffo.info !322
  %93 = mul i64 %91, %92, !dbg !333, !taffo.info !334
  %94 = lshr i64 %93, 36, !dbg !333, !taffo.info !334
  %mul92.u9_23fixp = trunc i64 %94 to i32, !dbg !336, !taffo.info !337
  %u2_30fixp1 = load i32, i32* %alpha.u2_30fixp, align 4, !dbg !333, !taffo.info !39
  %95 = zext i32 %mul92.u9_23fixp to i64, !dbg !339, !taffo.info !337
  %96 = zext i32 %u2_30fixp1 to i64, !dbg !339, !taffo.info !39
  %97 = mul i64 %95, %96, !dbg !339, !taffo.info !340
  %98 = lshr i64 %97, 30, !dbg !339, !taffo.info !340
  %mul93.u9_23fixp = trunc i64 %98 to i32, !dbg !342, !taffo.info !343
  %99 = shl i32 %mul93.u9_23fixp, 1, !dbg !339, !taffo.info !343
  store i32 %99, i32* %z.s8_24fixp, align 4, !dbg !339, !taffo.info !65
  %100 = load i32, i32* %ii, align 4, !dbg !345, !taffo.info !280
  %mul94 = mul nsw i32 %100, 32, !dbg !346, !taffo.info !298
  %101 = load i32, i32* %jj, align 4, !dbg !347, !taffo.info !280
  %add95 = add nsw i32 %mul94, %101, !dbg !348, !taffo.info !349
  %idxprom96 = sext i32 %add95 to i64, !dbg !351, !taffo.info !349
  %arrayidx97.s6_26fixp = getelementptr inbounds [1024 x i32], [1024 x i32]* %tmp.s6_26fixp, i64 0, i64 %idxprom96, !dbg !351, !taffo.info !305
  %s6_26fixp5 = load i32, i32* %arrayidx97.s6_26fixp, align 4, !dbg !351, !taffo.info !305
  %102 = ashr i32 %s6_26fixp5, 4, !dbg !352, !taffo.info !305
  %s8_24fixp = load i32, i32* %z.s8_24fixp, align 4, !dbg !352, !taffo.info !305
  %103 = ashr i32 %s8_24fixp, 2, !dbg !353, !taffo.info !305
  %add98.s10_22fixp = add i32 %102, %103, !dbg !353, !taffo.info !305
  %104 = shl i32 %add98.s10_22fixp, 4, !dbg !354, !taffo.info !305
  %105 = load i32, i32* %ii, align 4, !dbg !354, !taffo.info !280
  %mul99 = mul nsw i32 %105, 32, !dbg !355, !taffo.info !298
  %106 = load i32, i32* %jj, align 4, !dbg !356, !taffo.info !280
  %add100 = add nsw i32 %mul99, %106, !dbg !357, !taffo.info !349
  %idxprom101 = sext i32 %add100 to i64, !dbg !358, !taffo.info !349
  %arrayidx102.s6_26fixp = getelementptr inbounds [1024 x i32], [1024 x i32]* %tmp.s6_26fixp, i64 0, i64 %idxprom101, !dbg !358, !taffo.info !305
  store i32 %104, i32* %arrayidx102.s6_26fixp, align 4, !dbg !359, !taffo.info !65
  br label %for.inc103, !dbg !360

for.inc103:                                       ; preds = %for.body83
  %107 = load i32, i32* %k, align 4, !dbg !361, !taffo.info !46
  %inc104 = add nsw i32 %107, 1, !dbg !361, !taffo.info !362
  store i32 %inc104, i32* %k, align 4, !dbg !361, !taffo.info !65
  br label %for.cond81, !dbg !364, !llvm.loop !365

for.end105:                                       ; preds = %for.cond81
  %108 = load i32, i32* %ii, align 4, !dbg !368, !taffo.info !280
  %mul106 = mul nsw i32 %108, 32, !dbg !369, !taffo.info !298
  %109 = load i32, i32* %jj, align 4, !dbg !370, !taffo.info !46
  %add107 = add nsw i32 %mul106, %109, !dbg !371, !taffo.info !302
  %idxprom108 = sext i32 %add107 to i64, !dbg !372, !taffo.info !302
  %arrayidx109.s6_26fixp = getelementptr inbounds [1024 x i32], [1024 x i32]* %D.s6_26fixp, i64 0, i64 %idxprom108, !dbg !372, !taffo.info !241, !taffo.target !36
  %s6_26fixp8 = load i32, i32* %arrayidx109.s6_26fixp, align 4, !dbg !372, !taffo.info !241, !taffo.target !36
  %u2_30fixp = load i32, i32* %beta.u2_30fixp, align 4, !dbg !373, !taffo.info !374
  %110 = sext i32 %s6_26fixp8 to i64, !dbg !375, !taffo.info !241, !taffo.target !36
  %111 = zext i32 %u2_30fixp to i64, !dbg !375, !taffo.info !374
  %112 = mul i64 %110, %111, !dbg !375, !taffo.info !376, !taffo.target !36
  %113 = lshr i64 %112, 28, !dbg !375, !taffo.info !376, !taffo.target !36
  %mul110.u4_28fixp = trunc i64 %113 to i32, !dbg !378, !taffo.info !241, !taffo.target !36
  %114 = lshr i32 %mul110.u4_28fixp, 2, !dbg !375, !taffo.info !241, !taffo.target !36
  %115 = load i32, i32* %ii, align 4, !dbg !375, !taffo.info !280
  %mul111 = mul nsw i32 %115, 32, !dbg !379, !taffo.info !298
  %116 = load i32, i32* %jj, align 4, !dbg !380, !taffo.info !46
  %add112 = add nsw i32 %mul111, %116, !dbg !381, !taffo.info !302
  %idxprom113 = sext i32 %add112 to i64, !dbg !382, !taffo.info !302
  %arrayidx114.s6_26fixp = getelementptr inbounds [1024 x i32], [1024 x i32]* %D.s6_26fixp, i64 0, i64 %idxprom113, !dbg !382, !taffo.info !241, !taffo.target !36
  store i32 %114, i32* %arrayidx114.s6_26fixp, align 4, !dbg !383, !taffo.info !65, !taffo.target !36
  %117 = load i32, i32* %ii, align 4, !dbg !384, !taffo.info !280
  %mul115 = mul nsw i32 %117, 32, !dbg !385, !taffo.info !298
  %118 = load i32, i32* %jj, align 4, !dbg !386, !taffo.info !46
  %add116 = add nsw i32 %mul115, %118, !dbg !387, !taffo.info !302
  %idxprom117 = sext i32 %add116 to i64, !dbg !388, !taffo.info !302
  %arrayidx118.s6_26fixp = getelementptr inbounds [1024 x i32], [1024 x i32]* %D.s6_26fixp, i64 0, i64 %idxprom117, !dbg !388, !taffo.info !241, !taffo.target !36
  %s6_26fixp7 = load i32, i32* %arrayidx118.s6_26fixp, align 4, !dbg !388, !taffo.info !241, !taffo.target !36
  %119 = shl i32 %s6_26fixp7, 2, !dbg !389, !taffo.info !241, !taffo.target !36
  %120 = load i32, i32* %ii, align 4, !dbg !389, !taffo.info !280
  %mul119 = mul nsw i32 %120, 32, !dbg !390, !taffo.info !298
  %121 = load i32, i32* %jj, align 4, !dbg !391, !taffo.info !46
  %add120 = add nsw i32 %mul119, %121, !dbg !392, !taffo.info !302
  %idxprom121 = sext i32 %add120 to i64, !dbg !393, !taffo.info !302
  %arrayidx122.s6_26fixp = getelementptr inbounds [1024 x i32], [1024 x i32]* %tmp.s6_26fixp, i64 0, i64 %idxprom121, !dbg !393, !taffo.info !305
  %s6_26fixp = load i32, i32* %arrayidx122.s6_26fixp, align 4, !dbg !393, !taffo.info !305
  %122 = shl i32 %s6_26fixp, 2, !dbg !394, !taffo.info !305
  %add123.u4_28fixp = add i32 %119, %122, !dbg !394, !taffo.info !241, !taffo.target !36
  %123 = lshr i32 %add123.u4_28fixp, 2, !dbg !395, !taffo.info !241, !taffo.target !36
  %124 = load i32, i32* %ii, align 4, !dbg !395, !taffo.info !280
  %mul124 = mul nsw i32 %124, 32, !dbg !396, !taffo.info !298
  %125 = load i32, i32* %jj, align 4, !dbg !397, !taffo.info !46
  %add125 = add nsw i32 %mul124, %125, !dbg !398, !taffo.info !302
  %idxprom126 = sext i32 %add125 to i64, !dbg !399, !taffo.info !302
  %arrayidx127.s6_26fixp = getelementptr inbounds [1024 x i32], [1024 x i32]* %D.s6_26fixp, i64 0, i64 %idxprom126, !dbg !399, !taffo.info !241, !taffo.target !36
  store i32 %123, i32* %arrayidx127.s6_26fixp, align 4, !dbg !400, !taffo.info !65, !taffo.target !36
  %126 = load i32, i32* %ii, align 4, !dbg !401, !taffo.info !280
  %mul128 = mul nsw i32 %126, 32, !dbg !402, !taffo.info !298
  %127 = load i32, i32* %jj, align 4, !dbg !403, !taffo.info !46
  %add129 = add nsw i32 %mul128, %127, !dbg !404, !taffo.info !302
  %idxprom130 = sext i32 %add129 to i64, !dbg !405, !taffo.info !302
  %arrayidx131.s6_26fixp = getelementptr inbounds [1024 x i32], [1024 x i32]* %D.s6_26fixp, i64 0, i64 %idxprom130, !dbg !405, !taffo.info !241, !taffo.target !36
  %s6_26fixp6 = load i32, i32* %arrayidx131.s6_26fixp, align 4, !dbg !405, !taffo.info !241, !taffo.target !36
  %128 = ashr i32 %s6_26fixp6, 2, !dbg !406, !taffo.info !241, !taffo.target !36
  %s8_24fixp3 = load i32, i32* %sum.s8_24fixp, align 4, !dbg !406, !taffo.info !43
  %add132.s8_24fixp = add i32 %s8_24fixp3, %128, !dbg !406, !taffo.info !407
  store i32 %add132.s8_24fixp, i32* %sum.s8_24fixp, align 4, !dbg !406, !taffo.info !65
  br label %for.inc133, !dbg !409

for.inc133:                                       ; preds = %for.end105
  %129 = load i32, i32* %jj, align 4, !dbg !410, !taffo.info !46
  %inc134 = add nsw i32 %129, 1, !dbg !410, !taffo.info !362
  store i32 %inc134, i32* %jj, align 4, !dbg !410, !taffo.info !65
  br label %for.cond74, !dbg !411, !llvm.loop !412

for.end135:                                       ; preds = %for.cond74
  br label %for.inc136, !dbg !417

for.inc136:                                       ; preds = %for.end135
  %130 = load i32, i32* %ii, align 4, !dbg !418, !taffo.info !46
  %inc137 = add nsw i32 %130, 1, !dbg !418, !taffo.info !362
  store i32 %inc137, i32* %ii, align 4, !dbg !418, !taffo.info !65
  br label %for.cond71, !dbg !419, !llvm.loop !420

for.end138:                                       ; preds = %for.cond71
  %s8_24fixp2 = load i32, i32* %sum.s8_24fixp, align 4, !dbg !423, !taffo.info !43
  %131 = load float, float* %gamma.addr, align 4, !dbg !424
  %132 = fmul float 0x4170000000000000, %131, !dbg !425, !taffo.info !426
  %133 = fptosi float %132 to i32, !dbg !425, !taffo.info !426
  %134 = sext i32 %s8_24fixp2 to i64, !dbg !427, !taffo.info !43
  %135 = sext i32 %133 to i64, !dbg !427, !taffo.info !426
  %136 = mul i64 %134, %135, !dbg !427, !taffo.info !428
  %137 = ashr i64 %136, 24, !dbg !427, !taffo.info !428
  %mul139.s8_24fixp = trunc i64 %137 to i32, !dbg !425, !taffo.info !426
  %138 = sitofp i32 %mul139.s8_24fixp to float, !dbg !427, !taffo.info !426
  %139 = fdiv float %138, 0x4170000000000000, !dbg !427, !taffo.info !426
  %140 = bitcast i32* %j to i8*, !dbg !427, !taffo.info !37
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %140) #3, !dbg !427, !taffo.info !65
  %141 = bitcast i32* %i to i8*, !dbg !427, !taffo.info !37
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %141) #3, !dbg !427, !taffo.info !65
  %142 = bitcast [1024 x i32]* %D.s6_26fixp to i8*, !dbg !427, !taffo.info !76, !taffo.target !36
  %143 = bitcast i8* %142 to i8*, !taffo.info !76, !taffo.target !36
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* %143) #3, !dbg !427, !taffo.info !65, !taffo.target !36
  %144 = bitcast [1024 x i32]* %B.u2_30fixp to i8*, !dbg !427, !taffo.info !72
  %145 = bitcast i8* %144 to i8*, !taffo.info !72
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* %145) #3, !dbg !427, !taffo.info !65
  %146 = bitcast [1024 x i32]* %A.u3_29fixp to i8*, !dbg !427, !taffo.info !64
  %147 = bitcast i8* %146 to i8*, !taffo.info !64
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* %147) #3, !dbg !427, !taffo.info !65
  %148 = bitcast i32* %nl to i8*, !dbg !427, !taffo.info !25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %148) #3, !dbg !427
  %149 = bitcast i32* %nk to i8*, !dbg !427, !taffo.info !25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %149) #3, !dbg !427
  %150 = bitcast i32* %nj to i8*, !dbg !427, !taffo.info !25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %150) #3, !dbg !427
  %151 = bitcast i32* %ni to i8*, !dbg !427, !taffo.info !25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %151) #3, !dbg !427
  ret float %139, !dbg !430, !taffo.info !65
}

; Function Attrs: nounwind readnone speculatable
declare !taffo.funinfo !431 void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare !taffo.funinfo !432 void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare !taffo.funinfo !433 void @llvm.var.annotation(i8*, i8*, i8*, i32) #3

; Function Attrs: argmemonly nounwind
declare !taffo.funinfo !432 void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.top.func"="mm" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!7}
!llvm.ident = !{!12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12}
!llvm.module.flags = !{!13, !14, !15}

!0 = !{!1, !1, !1}
!1 = !{i1 false, !2, i1 false, i1 false}
!2 = !{double 0.000000e+00, double 0.000000e+00}
!3 = !{i1 false, !4, i1 false, i1 false}
!4 = !{double 0.000000e+00, double 1.150000e+02}
!5 = !{i1 false, !6, i1 false, i1 false}
!6 = !{double 0.000000e+00, double 1.160000e+02}
!7 = distinct !DICompileUnit(language: DW_LANG_C99, file: !8, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !9, retainedTypes: !10)
!8 = !DIFile(filename: "/home/bruno/Desktop/benchmarks/gemm/proj_gemm/solution1/.autopilot/db/gemm_taffoin.pp.0.c", directory: "/home/bruno/Desktop/benchmarks/gemm")
!9 = !{}
!10 = !{!11}
!11 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!12 = !{!"clang version 7.0.0 "}
!13 = !{i32 2, !"Dwarf Version", i32 4}
!14 = !{i32 2, !"Debug Info Version", i32 0}
!15 = !{i32 1, !"wchar_size", i32 4}
!16 = distinct !DISubprogram(name: "mm", scope: !17, file: !17, line: 42, type: !18, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!17 = !DIFile(filename: "gemm_taffoin.c", directory: "/home/bruno/Desktop/benchmarks/gemm")
!18 = !DISubroutineType(types: !19)
!19 = !{!11, !11}
!20 = !{!21}
!21 = !{!"user"}
!22 = !DILocation(line: 42, column: 16, scope: !16)
!23 = !{i1 true}
!24 = !{i32 0, i1 false}
!25 = !{i1 false, !26, i1 false, i1 false}
!26 = !{double 3.200000e+01, double 3.200000e+01}
!27 = !{!28, !29, i1 false, i1 true}
!28 = !{!"fixp", i32 32, i32 29}
!29 = !{double 0.000000e+00, double 5.000000e+00}
!30 = !{!31, !32, i1 false, i1 true}
!31 = !{!"fixp", i32 32, i32 30}
!32 = !{double 0.000000e+00, double 3.000000e+00}
!33 = !{!34, !35, i1 false, i1 true}
!34 = !{!"fixp", i32 -32, i32 26}
!35 = !{double -1.600000e+01, double 1.600000e+01}
!36 = !{!"D"}
!37 = !{i1 false, !38, i1 false, i1 true}
!38 = !{double 0.000000e+00, double 1.600000e+01}
!39 = !{!31, !40, i1 false, i1 true}
!40 = !{double 0x3FF3333340000000, double 0x3FF3333340000000}
!41 = !{!31, !42, i1 false, i1 true}
!42 = !{double 1.500000e+00, double 1.500000e+00}
!43 = !{!44, !45, i1 false, i1 true}
!44 = !{!"fixp", i32 -32, i32 24}
!45 = !{double -1.000000e+02, double 1.000000e+02}
!46 = !{i1 false, !47, i1 false, i1 true}
!47 = !{double 0.000000e+00, double 3.200000e+01}
!48 = !DILocalVariable(name: "gamma", arg: 1, scope: !16, file: !17, line: 42, type: !11)
!49 = !DILocation(line: 42, column: 53, scope: !16)
!50 = !DILocation(line: 44, column: 5, scope: !16)
!51 = !DILocalVariable(name: "ni", scope: !16, file: !17, line: 44, type: !52)
!52 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!53 = !DILocation(line: 44, column: 9, scope: !16)
!54 = !DILocation(line: 45, column: 5, scope: !16)
!55 = !DILocalVariable(name: "nj", scope: !16, file: !17, line: 45, type: !52)
!56 = !DILocation(line: 45, column: 9, scope: !16)
!57 = !DILocation(line: 46, column: 5, scope: !16)
!58 = !DILocalVariable(name: "nk", scope: !16, file: !17, line: 46, type: !52)
!59 = !DILocation(line: 46, column: 9, scope: !16)
!60 = !DILocation(line: 47, column: 5, scope: !16)
!61 = !DILocalVariable(name: "nl", scope: !16, file: !17, line: 47, type: !52)
!62 = !DILocation(line: 47, column: 9, scope: !16)
!63 = !DILocation(line: 49, column: 5, scope: !16)
!64 = !{!28, i1 false, i1 false, i1 true}
!65 = !{i1 false, i1 false, i1 false, i1 true}
!66 = !DILocalVariable(name: "A", scope: !16, file: !17, line: 49, type: !67)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 32768, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 1024)
!70 = !DILocation(line: 49, column: 11, scope: !16)
!71 = !DILocation(line: 50, column: 5, scope: !16)
!72 = !{!31, i1 false, i1 false, i1 true}
!73 = !DILocalVariable(name: "B", scope: !16, file: !17, line: 50, type: !67)
!74 = !DILocation(line: 50, column: 11, scope: !16)
!75 = !DILocation(line: 51, column: 5, scope: !16)
!76 = !{!34, i1 false, i1 false, i1 true}
!77 = !DILocalVariable(name: "D", scope: !16, file: !17, line: 51, type: !67)
!78 = !DILocation(line: 51, column: 11, scope: !16)
!79 = !DILocation(line: 52, column: 5, scope: !16)
!80 = !DILocalVariable(name: "i", scope: !16, file: !17, line: 52, type: !52)
!81 = !DILocation(line: 52, column: 9, scope: !16)
!82 = !DILocation(line: 53, column: 5, scope: !16)
!83 = !DILocalVariable(name: "j", scope: !16, file: !17, line: 53, type: !52)
!84 = !DILocation(line: 53, column: 9, scope: !16)
!85 = !DILocation(line: 54, column: 29, scope: !86)
!86 = distinct !DILexicalBlock(scope: !16, file: !17, line: 54, column: 22)
!87 = !DILocation(line: 54, column: 27, scope: !86)
!88 = !DILocation(line: 54, column: 34, scope: !89)
!89 = distinct !DILexicalBlock(scope: !86, file: !17, line: 54, column: 22)
!90 = !{i1 false, !91, i1 false, i1 true}
!91 = !{double 0.000000e+00, double 1.700000e+01}
!92 = !DILocation(line: 54, column: 38, scope: !89)
!93 = !DILocation(line: 54, column: 36, scope: !89)
!94 = !{i1 false, !95, i1 false, i1 true}
!95 = !{double 1.000000e+00, double 1.000000e+00}
!96 = !DILocation(line: 54, column: 22, scope: !86)
!97 = !DILocation(line: 55, column: 33, scope: !98)
!98 = distinct !DILexicalBlock(scope: !89, file: !17, line: 55, column: 26)
!99 = !DILocation(line: 55, column: 31, scope: !98)
!100 = !DILocation(line: 55, column: 38, scope: !101)
!101 = distinct !DILexicalBlock(scope: !98, file: !17, line: 55, column: 26)
!102 = !DILocation(line: 55, column: 42, scope: !101)
!103 = !DILocation(line: 55, column: 40, scope: !101)
!104 = !DILocation(line: 55, column: 26, scope: !98)
!105 = !DILocation(line: 56, column: 39, scope: !101)
!106 = !DILocation(line: 56, column: 41, scope: !101)
!107 = !DILocation(line: 56, column: 40, scope: !101)
!108 = !{i1 false, !109, i1 false, i1 true}
!109 = !{double 0.000000e+00, double 2.560000e+02}
!110 = !DILocation(line: 56, column: 42, scope: !101)
!111 = !{i1 false, !112, i1 false, i1 true}
!112 = !{double 1.000000e+00, double 2.570000e+02}
!113 = !DILocation(line: 56, column: 48, scope: !101)
!114 = !DILocation(line: 56, column: 46, scope: !101)
!115 = !DILocation(line: 56, column: 37, scope: !101)
!116 = !{!117, !47, i1 false, i1 true}
!117 = !{!"fixp", i32 32, i32 24}
!118 = !DILocation(line: 56, column: 54, scope: !101)
!119 = !{!120, !47, i1 false}
!120 = !{!"fixp", i32 64, i32 24}
!121 = !DILocation(line: 56, column: 35, scope: !101)
!122 = !{!117, !123, i1 false, i1 true}
!123 = !{double 0.000000e+00, double 1.600000e+02}
!124 = !DILocation(line: 56, column: 52, scope: !101)
!125 = !DILocation(line: 56, column: 15, scope: !101)
!126 = !{!120, !26, i1 false}
!127 = !DILocation(line: 56, column: 17, scope: !101)
!128 = !DILocation(line: 56, column: 16, scope: !101)
!129 = !{i1 false, !130, i1 false, i1 true}
!130 = !{double 0.000000e+00, double 5.120000e+02}
!131 = !DILocation(line: 56, column: 20, scope: !101)
!132 = !DILocation(line: 56, column: 19, scope: !101)
!133 = !{i1 false, !134, i1 false, i1 true}
!134 = !{double 0.000000e+00, double 5.280000e+02}
!135 = !DILocation(line: 56, column: 13, scope: !101)
!136 = !DILocation(line: 56, column: 23, scope: !101)
!137 = !DILocation(line: 55, column: 47, scope: !101)
!138 = !{i1 false, !139, i1 false, i1 true}
!139 = !{double 1.000000e+00, double 1.700000e+01}
!140 = !DILocation(line: 55, column: 26, scope: !101)
!141 = distinct !{!141, !104, !142, !143}
!142 = !DILocation(line: 56, column: 54, scope: !98)
!143 = !{!"llvm.loop.name", !"VITIS_LOOP_55_2"}
!144 = !DILocation(line: 54, column: 43, scope: !89)
!145 = !DILocation(line: 54, column: 22, scope: !89)
!146 = distinct !{!146, !96, !147, !148}
!147 = !DILocation(line: 56, column: 54, scope: !86)
!148 = !{!"llvm.loop.name", !"VITIS_LOOP_54_1"}
!149 = !DILocation(line: 57, column: 29, scope: !150)
!150 = distinct !DILexicalBlock(scope: !16, file: !17, line: 57, column: 22)
!151 = !DILocation(line: 57, column: 27, scope: !150)
!152 = !DILocation(line: 57, column: 34, scope: !153)
!153 = distinct !DILexicalBlock(scope: !150, file: !17, line: 57, column: 22)
!154 = !DILocation(line: 57, column: 38, scope: !153)
!155 = !DILocation(line: 57, column: 36, scope: !153)
!156 = !DILocation(line: 57, column: 22, scope: !150)
!157 = !DILocation(line: 58, column: 33, scope: !158)
!158 = distinct !DILexicalBlock(scope: !153, file: !17, line: 58, column: 26)
!159 = !DILocation(line: 58, column: 31, scope: !158)
!160 = !DILocation(line: 58, column: 38, scope: !161)
!161 = distinct !DILexicalBlock(scope: !158, file: !17, line: 58, column: 26)
!162 = !DILocation(line: 58, column: 42, scope: !161)
!163 = !DILocation(line: 58, column: 40, scope: !161)
!164 = !DILocation(line: 58, column: 26, scope: !158)
!165 = !DILocation(line: 59, column: 38, scope: !161)
!166 = !DILocation(line: 59, column: 41, scope: !161)
!167 = !DILocation(line: 59, column: 42, scope: !161)
!168 = !DILocation(line: 59, column: 39, scope: !161)
!169 = !{i1 false, !170, i1 false, i1 true}
!170 = !{double 0.000000e+00, double 2.890000e+02}
!171 = !DILocation(line: 59, column: 48, scope: !161)
!172 = !DILocation(line: 59, column: 46, scope: !161)
!173 = !DILocation(line: 59, column: 37, scope: !161)
!174 = !{!175, !47, i1 false, i1 true}
!175 = !{!"fixp", i32 32, i32 25}
!176 = !DILocation(line: 59, column: 54, scope: !161)
!177 = !{!178, !47, i1 false}
!178 = !{!"fixp", i32 64, i32 25}
!179 = !DILocation(line: 59, column: 35, scope: !161)
!180 = !{!175, !181, i1 false, i1 true}
!181 = !{double 0.000000e+00, double 9.600000e+01}
!182 = !DILocation(line: 59, column: 52, scope: !161)
!183 = !DILocation(line: 59, column: 15, scope: !161)
!184 = !{!178, !26, i1 false}
!185 = !DILocation(line: 59, column: 17, scope: !161)
!186 = !DILocation(line: 59, column: 16, scope: !161)
!187 = !{i1 false, !188, i1 false, i1 true}
!188 = !{double 0.000000e+00, double 5.440000e+02}
!189 = !DILocation(line: 59, column: 20, scope: !161)
!190 = !DILocation(line: 59, column: 19, scope: !161)
!191 = !{i1 false, !192, i1 false, i1 true}
!192 = !{double 0.000000e+00, double 5.600000e+02}
!193 = !DILocation(line: 59, column: 13, scope: !161)
!194 = !DILocation(line: 59, column: 23, scope: !161)
!195 = !DILocation(line: 58, column: 47, scope: !161)
!196 = !DILocation(line: 58, column: 26, scope: !161)
!197 = distinct !{!197, !164, !198, !199}
!198 = !DILocation(line: 59, column: 54, scope: !158)
!199 = !{!"llvm.loop.name", !"VITIS_LOOP_58_4"}
!200 = !DILocation(line: 57, column: 43, scope: !153)
!201 = !DILocation(line: 57, column: 22, scope: !153)
!202 = distinct !{!202, !156, !203, !204}
!203 = !DILocation(line: 59, column: 54, scope: !150)
!204 = !{!"llvm.loop.name", !"VITIS_LOOP_57_3"}
!205 = !DILocation(line: 60, column: 29, scope: !206)
!206 = distinct !DILexicalBlock(scope: !16, file: !17, line: 60, column: 22)
!207 = !DILocation(line: 60, column: 27, scope: !206)
!208 = !DILocation(line: 60, column: 34, scope: !209)
!209 = distinct !DILexicalBlock(scope: !206, file: !17, line: 60, column: 22)
!210 = !DILocation(line: 60, column: 38, scope: !209)
!211 = !DILocation(line: 60, column: 36, scope: !209)
!212 = !DILocation(line: 60, column: 22, scope: !206)
!213 = !DILocation(line: 61, column: 33, scope: !214)
!214 = distinct !DILexicalBlock(scope: !209, file: !17, line: 61, column: 26)
!215 = !DILocation(line: 61, column: 31, scope: !214)
!216 = !DILocation(line: 61, column: 38, scope: !217)
!217 = distinct !DILexicalBlock(scope: !214, file: !17, line: 61, column: 26)
!218 = !DILocation(line: 61, column: 42, scope: !217)
!219 = !DILocation(line: 61, column: 40, scope: !217)
!220 = !DILocation(line: 61, column: 26, scope: !214)
!221 = !DILocation(line: 62, column: 38, scope: !217)
!222 = !DILocation(line: 62, column: 41, scope: !217)
!223 = !DILocation(line: 62, column: 42, scope: !217)
!224 = !{i1 false, !225, i1 false, i1 true}
!225 = !{double 2.000000e+00, double 1.800000e+01}
!226 = !DILocation(line: 62, column: 39, scope: !217)
!227 = !{i1 false, !228, i1 false, i1 true}
!228 = !{double 0.000000e+00, double 3.060000e+02}
!229 = !DILocation(line: 62, column: 48, scope: !217)
!230 = !DILocation(line: 62, column: 46, scope: !217)
!231 = !DILocation(line: 62, column: 37, scope: !217)
!232 = !DILocation(line: 62, column: 54, scope: !217)
!233 = !DILocation(line: 62, column: 35, scope: !217)
!234 = !DILocation(line: 62, column: 52, scope: !217)
!235 = !DILocation(line: 62, column: 15, scope: !217)
!236 = !DILocation(line: 62, column: 17, scope: !217)
!237 = !DILocation(line: 62, column: 16, scope: !217)
!238 = !DILocation(line: 62, column: 20, scope: !217)
!239 = !DILocation(line: 62, column: 19, scope: !217)
!240 = !DILocation(line: 62, column: 13, scope: !217)
!241 = !{!242, !243, i1 false, i1 true}
!242 = !{!"fixp", i32 32, i32 28}
!243 = !{double 0.000000e+00, double 7.500000e+00}
!244 = !DILocation(line: 62, column: 23, scope: !217)
!245 = !DILocation(line: 61, column: 47, scope: !217)
!246 = !DILocation(line: 61, column: 26, scope: !217)
!247 = distinct !{!247, !220, !248, !249}
!248 = !DILocation(line: 62, column: 54, scope: !214)
!249 = !{!"llvm.loop.name", !"VITIS_LOOP_61_6"}
!250 = !DILocation(line: 60, column: 43, scope: !209)
!251 = !DILocation(line: 60, column: 22, scope: !209)
!252 = distinct !{!252, !212, !253, !254}
!253 = !DILocation(line: 62, column: 54, scope: !206)
!254 = !{!"llvm.loop.name", !"VITIS_LOOP_60_5"}
!255 = !DILocalVariable(name: "alpha", scope: !16, file: !17, line: 63, type: !11)
!256 = !DILocation(line: 63, column: 49, scope: !16)
!257 = !DILocalVariable(name: "beta", scope: !16, file: !17, line: 64, type: !11)
!258 = !DILocation(line: 64, column: 49, scope: !16)
!259 = !DILocalVariable(name: "fg", scope: !16, file: !17, line: 65, type: !11)
!260 = !DILocation(line: 65, column: 63, scope: !16)
!261 = !DILocation(line: 65, column: 68, scope: !16)
!262 = !DILocalVariable(name: "tmp", scope: !16, file: !17, line: 66, type: !67)
!263 = !DILocation(line: 66, column: 11, scope: !16)
!264 = !DILocalVariable(name: "sum", scope: !16, file: !17, line: 67, type: !11)
!265 = !DILocation(line: 67, column: 65, scope: !16)
!266 = !DILocalVariable(name: "ii", scope: !16, file: !17, line: 69, type: !52)
!267 = !DILocation(line: 69, column: 9, scope: !16)
!268 = !DILocalVariable(name: "jj", scope: !16, file: !17, line: 70, type: !52)
!269 = !DILocation(line: 70, column: 9, scope: !16)
!270 = !DILocalVariable(name: "k", scope: !16, file: !17, line: 71, type: !52)
!271 = !DILocation(line: 71, column: 9, scope: !16)
!272 = !DILocalVariable(name: "z", scope: !16, file: !17, line: 72, type: !11)
!273 = !DILocation(line: 72, column: 11, scope: !16)
!274 = !DILocation(line: 72, column: 5, scope: !16)
!275 = !DILocation(line: 73, column: 30, scope: !276)
!276 = distinct !DILexicalBlock(scope: !16, file: !17, line: 73, column: 22)
!277 = !DILocation(line: 73, column: 27, scope: !276)
!278 = !DILocation(line: 73, column: 35, scope: !279)
!279 = distinct !DILexicalBlock(scope: !276, file: !17, line: 73, column: 22)
!280 = !{i1 false, !281, i1 false, i1 true}
!281 = !{double 0.000000e+00, double 3.300000e+01}
!282 = !DILocation(line: 73, column: 38, scope: !279)
!283 = !{i1 false, !284, i1 false, i1 true}
!284 = !{double 0.000000e+00, double 1.000000e+00}
!285 = !DILocation(line: 73, column: 22, scope: !276)
!286 = !DILocation(line: 74, column: 5, scope: !279)
!287 = !DILocation(line: 75, column: 34, scope: !288)
!288 = distinct !DILexicalBlock(scope: !289, file: !17, line: 75, column: 26)
!289 = distinct !DILexicalBlock(scope: !279, file: !17, line: 74, column: 5)
!290 = !DILocation(line: 75, column: 31, scope: !288)
!291 = !DILocation(line: 75, column: 39, scope: !292)
!292 = distinct !DILexicalBlock(scope: !288, file: !17, line: 75, column: 26)
!293 = !DILocation(line: 75, column: 42, scope: !292)
!294 = !DILocation(line: 75, column: 26, scope: !288)
!295 = !DILocation(line: 78, column: 6, scope: !296)
!296 = distinct !DILexicalBlock(scope: !292, file: !17, line: 76, column: 9)
!297 = !DILocation(line: 78, column: 8, scope: !296)
!298 = !{i1 false, !299, i1 false, i1 true}
!299 = !{double 0.000000e+00, double 1.056000e+03}
!300 = !DILocation(line: 78, column: 13, scope: !296)
!301 = !DILocation(line: 78, column: 12, scope: !296)
!302 = !{i1 false, !303, i1 false, i1 true}
!303 = !{double 0.000000e+00, double 1.088000e+03}
!304 = !DILocation(line: 78, column: 2, scope: !296)
!305 = !{!306, !307, i1 false, i1 true}
!306 = !{!"fixp", i32 -32, i32 22}
!307 = !{double -1.000000e+02, double 0x4075ACCCDB400000}
!308 = !DILocation(line: 78, column: 17, scope: !296)
!309 = !DILocation(line: 79, column: 37, scope: !310)
!310 = distinct !DILexicalBlock(scope: !296, file: !17, line: 79, column: 30)
!311 = !DILocation(line: 79, column: 35, scope: !310)
!312 = !DILocation(line: 79, column: 42, scope: !313)
!313 = distinct !DILexicalBlock(scope: !310, file: !17, line: 79, column: 30)
!314 = !DILocation(line: 79, column: 44, scope: !313)
!315 = !DILocation(line: 79, column: 30, scope: !310)
!316 = !DILocation(line: 80, column: 23, scope: !317)
!317 = distinct !DILexicalBlock(scope: !313, file: !17, line: 79, column: 54)
!318 = !DILocation(line: 80, column: 25, scope: !317)
!319 = !DILocation(line: 80, column: 30, scope: !317)
!320 = !DILocation(line: 80, column: 29, scope: !317)
!321 = !DILocation(line: 80, column: 21, scope: !317)
!322 = !{!323, !91, i1 false, i1 true}
!323 = !{!"fixp", i32 32, i32 27}
!324 = !DILocation(line: 80, column: 37, scope: !317)
!325 = !DILocation(line: 80, column: 38, scope: !317)
!326 = !{i1 false, !327, i1 false, i1 true}
!327 = !{double 0.000000e+00, double 1.024000e+03}
!328 = !DILocation(line: 80, column: 43, scope: !317)
!329 = !DILocation(line: 80, column: 42, scope: !317)
!330 = !{i1 false, !331, i1 false, i1 true}
!331 = !{double 0.000000e+00, double 1.057000e+03}
!332 = !DILocation(line: 80, column: 35, scope: !317)
!333 = !DILocation(line: 80, column: 49, scope: !317)
!334 = !{!335, !91, i1 false}
!335 = !{!"fixp", i32 64, i32 29}
!336 = !DILocation(line: 80, column: 33, scope: !317)
!337 = !{!338, !170, i1 false, i1 true}
!338 = !{!"fixp", i32 32, i32 23}
!339 = !DILocation(line: 80, column: 19, scope: !317)
!340 = !{!341, !40, i1 false}
!341 = !{!"fixp", i32 64, i32 23}
!342 = !DILocation(line: 80, column: 47, scope: !317)
!343 = !{!338, !344, i1 false, i1 true}
!344 = !{double 0.000000e+00, double 0x4075ACCCDB400000}
!345 = !DILocation(line: 81, column: 38, scope: !317)
!346 = !DILocation(line: 81, column: 40, scope: !317)
!347 = !DILocation(line: 81, column: 45, scope: !317)
!348 = !DILocation(line: 81, column: 44, scope: !317)
!349 = !{i1 false, !350, i1 false, i1 true}
!350 = !{double 0.000000e+00, double 1.089000e+03}
!351 = !DILocation(line: 81, column: 34, scope: !317)
!352 = !DILocation(line: 81, column: 51, scope: !317)
!353 = !DILocation(line: 81, column: 49, scope: !317)
!354 = !DILocation(line: 81, column: 21, scope: !317)
!355 = !DILocation(line: 81, column: 23, scope: !317)
!356 = !DILocation(line: 81, column: 28, scope: !317)
!357 = !DILocation(line: 81, column: 27, scope: !317)
!358 = !DILocation(line: 81, column: 17, scope: !317)
!359 = !DILocation(line: 81, column: 32, scope: !317)
!360 = !DILocation(line: 82, column: 13, scope: !317)
!361 = !DILocation(line: 79, column: 51, scope: !313)
!362 = !{i1 false, !363, i1 false, i1 true}
!363 = !{double 1.000000e+00, double 3.300000e+01}
!364 = !DILocation(line: 79, column: 30, scope: !313)
!365 = distinct !{!365, !315, !366, !367}
!366 = !DILocation(line: 82, column: 13, scope: !310)
!367 = !{!"llvm.loop.name", !"VITIS_LOOP_79_9"}
!368 = !DILocation(line: 83, column: 35, scope: !296)
!369 = !DILocation(line: 83, column: 37, scope: !296)
!370 = !DILocation(line: 83, column: 42, scope: !296)
!371 = !DILocation(line: 83, column: 41, scope: !296)
!372 = !DILocation(line: 83, column: 33, scope: !296)
!373 = !DILocation(line: 83, column: 48, scope: !296)
!374 = !{!242, !42, i1 false, i1 true}
!375 = !DILocation(line: 83, column: 20, scope: !296)
!376 = !{!377, !42, i1 false}
!377 = !{!"fixp", i32 64, i32 26}
!378 = !DILocation(line: 83, column: 46, scope: !296)
!379 = !DILocation(line: 83, column: 22, scope: !296)
!380 = !DILocation(line: 83, column: 27, scope: !296)
!381 = !DILocation(line: 83, column: 26, scope: !296)
!382 = !DILocation(line: 83, column: 18, scope: !296)
!383 = !DILocation(line: 83, column: 31, scope: !296)
!384 = !DILocation(line: 84, column: 35, scope: !296)
!385 = !DILocation(line: 84, column: 37, scope: !296)
!386 = !DILocation(line: 84, column: 42, scope: !296)
!387 = !DILocation(line: 84, column: 41, scope: !296)
!388 = !DILocation(line: 84, column: 33, scope: !296)
!389 = !DILocation(line: 84, column: 52, scope: !296)
!390 = !DILocation(line: 84, column: 54, scope: !296)
!391 = !DILocation(line: 84, column: 59, scope: !296)
!392 = !DILocation(line: 84, column: 58, scope: !296)
!393 = !DILocation(line: 84, column: 48, scope: !296)
!394 = !DILocation(line: 84, column: 46, scope: !296)
!395 = !DILocation(line: 84, column: 20, scope: !296)
!396 = !DILocation(line: 84, column: 22, scope: !296)
!397 = !DILocation(line: 84, column: 27, scope: !296)
!398 = !DILocation(line: 84, column: 26, scope: !296)
!399 = !DILocation(line: 84, column: 18, scope: !296)
!400 = !DILocation(line: 84, column: 31, scope: !296)
!401 = !DILocation(line: 85, column: 27, scope: !296)
!402 = !DILocation(line: 85, column: 29, scope: !296)
!403 = !DILocation(line: 85, column: 34, scope: !296)
!404 = !DILocation(line: 85, column: 33, scope: !296)
!405 = !DILocation(line: 85, column: 25, scope: !296)
!406 = !DILocation(line: 85, column: 22, scope: !296)
!407 = !{!44, !408, i1 false, i1 true}
!408 = !{double -1.000000e+02, double 1.075000e+02}
!409 = !DILocation(line: 86, column: 9, scope: !296)
!410 = !DILocation(line: 75, column: 50, scope: !292)
!411 = !DILocation(line: 75, column: 26, scope: !292)
!412 = distinct !{!412, !294, !413, !414, !416}
!413 = !DILocation(line: 86, column: 9, scope: !288)
!414 = !{!"llvm.loop.pipeline.enable", i32 1, i1 false, i8 -1, !"user"}
!415 = !DILocation(line: 77, column: 9, scope: !288)
!416 = !{!"llvm.loop.name", !"VITIS_LOOP_75_8"}
!417 = !DILocation(line: 87, column: 5, scope: !289)
!418 = !DILocation(line: 73, column: 46, scope: !279)
!419 = !DILocation(line: 73, column: 22, scope: !279)
!420 = distinct !{!420, !285, !421, !422}
!421 = !DILocation(line: 87, column: 5, scope: !276)
!422 = !{!"llvm.loop.name", !"VITIS_LOOP_73_7"}
!423 = !DILocation(line: 92, column: 12, scope: !16)
!424 = !DILocation(line: 92, column: 18, scope: !16)
!425 = !DILocation(line: 92, column: 16, scope: !16)
!426 = !{!44, i1 false, i1 false, i1 true}
!427 = !DILocation(line: 93, column: 1, scope: !16)
!428 = !{!429, i1 false, i1 false}
!429 = !{!"fixp", i32 -64, i32 24}
!430 = !DILocation(line: 92, column: 5, scope: !16)
!431 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!432 = !{i32 0, i1 false, i32 0, i1 false}
!433 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
