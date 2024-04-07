; ModuleID = 'out_sw.S.4.magiclangtmp.ll'
source_filename = "atax_taffo.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [39 x i8] c"target('A') scalar(range(-4096, 4096))\00", section "llvm.metadata", !taffo.info !0
@.str.1 = private unnamed_addr constant [13 x i8] c"atax_taffo.c\00", section "llvm.metadata", !taffo.info !2
@.str.2 = private unnamed_addr constant [39 x i8] c"target('x') scalar(range(-4096, 4096))\00", section "llvm.metadata", !taffo.info !2
@.str.3 = private unnamed_addr constant [27 x i8] c"scalar(range(-4096, 4096))\00", section "llvm.metadata", !taffo.info !4
@.str.4 = private unnamed_addr constant [9 x i8] c"scalar()\00", section "llvm.metadata", !taffo.info !4
@.str.5 = private unnamed_addr constant [21 x i8] c"scalar(range(0, 16))\00", section "llvm.metadata", !taffo.info !4
@.str.6 = private unnamed_addr constant [39 x i8] c"target('y') scalar(range(-4096, 4096))\00", section "llvm.metadata", !taffo.info !6
@.str.7 = private unnamed_addr constant [5 x i8] c"%f \0A\00", align 1, !taffo.info !8

; Function Attrs: noinline nounwind uwtable
define dso_local void @atax(float*, float*, float*) #0 !taffo.start !12 !taffo.equivalentChild !13 !taffo.funinfo !14 {
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8, !taffo.info !15
  %7 = alloca i32, align 4, !taffo.info !17
  %8 = alloca i32, align 4, !taffo.info !17
  %s14_18fixp1 = alloca i32*, align 8, !taffo.info !19, !taffo.target !22
  %s14_18fixp3 = alloca i32*, align 8, !taffo.info !19, !taffo.target !23
  %s14_18fixp = alloca i32, align 4, !taffo.info !19
  %u0_32fixp = alloca i32, align 4, !taffo.info !24
  %9 = alloca i32, align 4, !taffo.info !26
  %10 = alloca i32, align 4, !taffo.info !26
  store float* %0, float** %4, align 8
  store float* %1, float** %5, align 8
  store float* %2, float** %6, align 8
  store i32 16, i32* %7, align 4
  store i32 16, i32* %8, align 4
  %11 = load float*, float** %4, align 8
  %12 = bitcast float* %11 to i32*
  store i32* %12, i32** %s14_18fixp1, align 8, !taffo.info !28, !taffo.target !22
  %13 = load float*, float** %5, align 8
  %14 = bitcast float* %13 to i32*
  store i32* %14, i32** %s14_18fixp3, align 8, !taffo.info !28, !taffo.target !23
  store i32 0, i32* %u0_32fixp, align 4, !taffo.info !28
  store i32 0, i32* %9, align 4, !taffo.info !28
  br label %15

; <label>:15:                                     ; preds = %65, %3
  %16 = load i32, i32* %9, align 4, !taffo.info !29
  %17 = icmp slt i32 %16, 16, !taffo.info !31
  br i1 %17, label %18, label %68, !taffo.info !28

; <label>:18:                                     ; preds = %15
  %u0_32fixp6 = load i32, i32* %u0_32fixp, align 4, !taffo.info !24
  %19 = lshr i32 %u0_32fixp6, 14, !taffo.info !24
  store i32 %19, i32* %s14_18fixp, align 4, !taffo.info !28
  store i32 0, i32* %10, align 4, !taffo.info !28
  br label %20

; <label>:20:                                     ; preds = %36, %18
  %21 = load i32, i32* %10, align 4, !taffo.info !29
  %22 = icmp slt i32 %21, 16, !taffo.info !31
  br i1 %22, label %23, label %39, !taffo.info !28

; <label>:23:                                     ; preds = %20
  %s14_18fixp5 = load i32, i32* %s14_18fixp, align 4, !taffo.info !19
  %s14_18fixp8 = load i32*, i32** %s14_18fixp1, align 8, !taffo.info !19, !taffo.target !22
  %24 = load i32, i32* %9, align 4, !taffo.info !26
  %25 = mul nsw i32 %24, 16, !taffo.info !33
  %26 = load i32, i32* %10, align 4, !taffo.info !26
  %27 = add nsw i32 %25, %26, !taffo.info !35
  %28 = sext i32 %27 to i64, !taffo.info !35
  %s14_18fixp12 = getelementptr inbounds i32, i32* %s14_18fixp8, i64 %28, !taffo.info !19, !taffo.target !22
  %s14_18fixp15 = load i32, i32* %s14_18fixp12, align 4, !taffo.info !19, !taffo.target !22
  %s14_18fixp10 = load i32*, i32** %s14_18fixp3, align 8, !taffo.info !19, !taffo.target !23
  %29 = load i32, i32* %10, align 4, !taffo.info !26
  %30 = sext i32 %29 to i64, !taffo.info !26
  %s14_18fixp13 = getelementptr inbounds i32, i32* %s14_18fixp10, i64 %30, !taffo.info !19, !taffo.target !23
  %s14_18fixp16 = load i32, i32* %s14_18fixp13, align 4, !taffo.info !19, !taffo.target !23
  %31 = sext i32 %s14_18fixp15 to i64, !taffo.info !19, !taffo.target !22
  %32 = sext i32 %s14_18fixp16 to i64, !taffo.info !19, !taffo.target !23
  %33 = mul i64 %31, %32, !taffo.info !37, !taffo.target !23
  %34 = lshr i64 %33, 4, !taffo.info !37, !taffo.target !23
  %u0_32fixp18 = trunc i64 %34 to i32, !taffo.info !24, !taffo.target !22
  %35 = lshr i32 %u0_32fixp18, 14, !taffo.info !24, !taffo.target !22
  %s14_18fixp20 = add i32 %s14_18fixp5, %35, !taffo.info !19
  store i32 %s14_18fixp20, i32* %s14_18fixp, align 4, !taffo.info !28
  br label %36

; <label>:36:                                     ; preds = %23
  %37 = load i32, i32* %10, align 4, !taffo.info !26
  %38 = add nsw i32 %37, 1, !taffo.info !39
  store i32 %38, i32* %10, align 4, !taffo.info !28
  br label %20

; <label>:39:                                     ; preds = %20
  store i32 0, i32* %10, align 4, !taffo.info !28
  br label %40

; <label>:40:                                     ; preds = %61, %39
  %41 = load i32, i32* %10, align 4, !taffo.info !29
  %42 = icmp slt i32 %41, 16, !taffo.info !31
  br i1 %42, label %43, label %64, !taffo.info !28

; <label>:43:                                     ; preds = %40
  %44 = load float*, float** %6, align 8, !taffo.info !15
  %45 = load i32, i32* %10, align 4, !taffo.info !26
  %46 = sext i32 %45 to i64, !taffo.info !26
  %47 = getelementptr inbounds float, float* %44, i64 %46, !taffo.info !24
  %.haxfixp.u0_32fixp2 = bitcast float* %47 to i32*, !taffo.info !24
  %u0_32fixp9 = load i32, i32* %.haxfixp.u0_32fixp2, align 4, !taffo.info !24
  %s14_18fixp7 = load i32*, i32** %s14_18fixp1, align 8, !taffo.info !19, !taffo.target !22
  %48 = load i32, i32* %9, align 4, !taffo.info !29
  %49 = mul nsw i32 %48, 16, !taffo.info !35
  %50 = load i32, i32* %10, align 4, !taffo.info !26
  %51 = add nsw i32 %49, %50, !taffo.info !41
  %52 = sext i32 %51 to i64, !taffo.info !41
  %s14_18fixp11 = getelementptr inbounds i32, i32* %s14_18fixp7, i64 %52, !taffo.info !19, !taffo.target !22
  %s14_18fixp14 = load i32, i32* %s14_18fixp11, align 4, !taffo.info !19, !taffo.target !22
  %s14_18fixp4 = load i32, i32* %s14_18fixp, align 4, !taffo.info !19
  %53 = sext i32 %s14_18fixp14 to i64, !taffo.info !19, !taffo.target !22
  %54 = sext i32 %s14_18fixp4 to i64, !taffo.info !19
  %55 = mul i64 %53, %54, !taffo.info !37, !taffo.target !22
  %56 = lshr i64 %55, 4, !taffo.info !37, !taffo.target !22
  %u0_32fixp17 = trunc i64 %56 to i32, !taffo.info !43, !taffo.target !22
  %u0_32fixp19 = add i32 %u0_32fixp9, %u0_32fixp17, !taffo.info !24
  %57 = load float*, float** %6, align 8, !taffo.info !15
  %58 = load i32, i32* %10, align 4, !taffo.info !26
  %59 = sext i32 %58 to i64, !taffo.info !26
  %60 = getelementptr inbounds float, float* %57, i64 %59, !taffo.info !24
  %.haxfixp.u0_32fixp = bitcast float* %60 to i32*, !taffo.info !24
  store i32 %u0_32fixp19, i32* %.haxfixp.u0_32fixp, align 4, !taffo.info !28
  br label %61

; <label>:61:                                     ; preds = %43
  %62 = load i32, i32* %10, align 4, !taffo.info !26
  %63 = add nsw i32 %62, 1, !taffo.info !39
  store i32 %63, i32* %10, align 4, !taffo.info !28
  br label %40

; <label>:64:                                     ; preds = %40
  br label %65

; <label>:65:                                     ; preds = %64
  %66 = load i32, i32* %9, align 4, !taffo.info !26
  %67 = add nsw i32 %66, 1, !taffo.info !39
  store i32 %67, i32* %9, align 4, !taffo.info !28
  br label %15

; <label>:68:                                     ; preds = %15
  ret void
}

; Function Attrs: nounwind
declare !taffo.funinfo !45 void @llvm.var.annotation(i8*, i8*, i8*, i32) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32, i8**) #0 !taffo.start !12 !taffo.funinfo !46 {
  %3 = alloca i32, align 4, !taffo.info !15
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4, !taffo.info !17
  %7 = alloca i32, align 4, !taffo.info !17
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8, !taffo.info !47
  %10 = alloca i64, align 8, !taffo.info !17
  %11 = alloca i64, align 8, !taffo.info !17
  %12 = alloca i64, align 8, !taffo.info !17
  %13 = alloca i32, align 4, !taffo.info !26
  %14 = alloca i32, align 4, !taffo.info !26
  %u5_27fixp6 = alloca i32, align 4, !taffo.info !49
  %u5_27fixp7 = alloca i32, align 4, !taffo.info !49
  %u3_29fixp = alloca i32, align 4, !taffo.info !51
  %u0_32fixp = alloca i32, align 4, !taffo.info !24
  %u1_31fixp = alloca i32, align 4, !taffo.info !54
  %s14_18fixp2 = alloca i32, align 4, !taffo.info !19
  %s14_18fixp3 = alloca i32, align 4, !taffo.info !19
  %s14_18fixp4 = alloca i32, align 4, !taffo.info !19
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 16, i32* %6, align 4
  store i32 16, i32* %7, align 4
  %15 = load i32, i32* %6, align 4, !taffo.info !17
  %16 = load i32, i32* %7, align 4, !taffo.info !17
  %17 = mul nsw i32 %15, %16, !taffo.info !47
  %18 = zext i32 %17 to i64, !taffo.info !47
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %8, align 8
  %s14_18fixp5 = alloca i32, i64 %18, align 16, !taffo.info !19, !taffo.target !22
  store i64 %18, i64* %9, align 8
  %20 = load i32, i32* %7, align 4, !taffo.info !17
  %21 = zext i32 %20 to i64, !taffo.info !17
  %s14_18fixp1 = alloca i32, i64 %21, align 16, !taffo.info !19, !taffo.target !23
  store i64 %21, i64* %10, align 8
  %22 = load i32, i32* %7, align 4, !taffo.info !17
  %23 = zext i32 %22 to i64, !taffo.info !17
  %s14_18fixp = alloca i32, i64 %23, align 16, !taffo.info !19, !taffo.target !57
  store i64 %23, i64* %11, align 8
  %24 = load i32, i32* %7, align 4, !taffo.info !17
  %25 = zext i32 %24 to i64, !taffo.info !17
  %s14_18fixp8 = alloca i32, i64 %25, align 16, !taffo.info !19, !taffo.target !57
  store i64 %25, i64* %12, align 8
  store i32 -2147483648, i32* %u5_27fixp6, align 4, !taffo.info !28
  store i32 -2147483648, i32* %u5_27fixp7, align 4, !taffo.info !28
  store i32 -1610612736, i32* %u3_29fixp, align 4, !taffo.info !28
  store i32 0, i32* %u0_32fixp, align 4, !taffo.info !28
  store i32 -2147483648, i32* %u1_31fixp, align 4, !taffo.info !28
  store i32 0, i32* %13, align 4, !taffo.info !28
  br label %26

; <label>:26:                                     ; preds = %40, %2
  %27 = load i32, i32* %13, align 4, !taffo.info !29
  %28 = icmp slt i32 %27, 16, !taffo.info !31
  br i1 %28, label %29, label %43, !taffo.info !28

; <label>:29:                                     ; preds = %26
  %u1_31fixp13 = load i32, i32* %u1_31fixp, align 4, !taffo.info !58
  %30 = lshr i32 %u1_31fixp13, 1, !taffo.info !58
  %31 = load i32, i32* %13, align 4, !taffo.info !26
  %u5_27fixp9 = shl i32 %31, 27, !taffo.info !60
  %32 = zext i32 %u5_27fixp9 to i64, !taffo.info !60
  %33 = shl i64 %32, 27, !taffo.info !60
  %u5_27fixp26 = load i32, i32* %u5_27fixp6, align 4, !taffo.info !49
  %34 = zext i32 %u5_27fixp26 to i64, !taffo.info !49
  %35 = udiv i64 %33, %34, !taffo.info !61
  %36 = shl i64 %35, 3, !taffo.info !61
  %u2_30fixp = trunc i64 %36 to i32, !taffo.info !63
  %u2_30fixp40 = add i32 %30, %u2_30fixp, !taffo.info !64
  %37 = lshr i32 %u2_30fixp40, 12, !taffo.info !64
  store i32 %37, i32* %s14_18fixp2, align 4, !taffo.info !28
  %s14_18fixp19 = load i32, i32* %s14_18fixp2, align 4, !taffo.info !19
  %38 = load i32, i32* %13, align 4, !taffo.info !26
  %39 = sext i32 %38 to i64, !taffo.info !26
  %s14_18fixp18 = getelementptr inbounds i32, i32* %s14_18fixp1, i64 %39, !taffo.info !19, !taffo.target !23
  store i32 %s14_18fixp19, i32* %s14_18fixp18, align 4, !taffo.info !28, !taffo.target !23
  br label %40

; <label>:40:                                     ; preds = %29
  %41 = load i32, i32* %13, align 4, !taffo.info !26
  %42 = add nsw i32 %41, 1, !taffo.info !39
  store i32 %42, i32* %13, align 4, !taffo.info !28
  br label %26

; <label>:43:                                     ; preds = %26
  store i32 0, i32* %13, align 4, !taffo.info !28
  br label %44

; <label>:44:                                     ; preds = %80, %43
  %45 = load i32, i32* %13, align 4, !taffo.info !29
  %46 = icmp slt i32 %45, 16, !taffo.info !31
  br i1 %46, label %47, label %83, !taffo.info !28

; <label>:47:                                     ; preds = %44
  store i32 0, i32* %14, align 4, !taffo.info !28
  br label %48

; <label>:48:                                     ; preds = %76, %47
  %49 = load i32, i32* %14, align 4, !taffo.info !29
  %50 = load i32, i32* %7, align 4, !taffo.info !17
  %51 = icmp slt i32 %49, %50, !taffo.info !31
  br i1 %51, label %52, label %79, !taffo.info !28

; <label>:52:                                     ; preds = %48
  %53 = load i32, i32* %13, align 4, !taffo.info !26
  %54 = load i32, i32* %14, align 4, !taffo.info !26
  %55 = add nsw i32 %53, %54, !taffo.info !66
  %56 = load i32, i32* %7, align 4, !taffo.info !17
  %57 = srem i32 %55, %56, !taffo.info !26
  %u5_27fixp = shl i32 %57, 27, !taffo.info !60
  %58 = zext i32 %u5_27fixp to i64, !taffo.info !60
  %59 = shl i64 %58, 25, !taffo.info !60
  %u3_29fixp10 = load i32, i32* %u3_29fixp, align 4, !taffo.info !51
  %60 = load i32, i32* %6, align 4, !taffo.info !17
  %61 = shl i32 %60, 25, !taffo.info !17
  %62 = zext i32 %u3_29fixp10 to i64, !taffo.info !51
  %63 = zext i32 %61 to i64, !taffo.info !17
  %64 = mul i64 %62, %63, !taffo.info !68
  %65 = lshr i64 %64, 29, !taffo.info !68
  %u7_25fixp = trunc i64 %65 to i32, !taffo.info !70
  %66 = zext i32 %u7_25fixp to i64, !taffo.info !70
  %67 = udiv i64 %59, %66, !taffo.info !73
  %68 = shl i64 %67, 4, !taffo.info !73
  %u1_31fixp37 = trunc i64 %68 to i32, !taffo.info !74
  %69 = lshr i32 %u1_31fixp37, 13, !taffo.info !74
  store i32 %69, i32* %s14_18fixp3, align 4, !taffo.info !28
  %s14_18fixp20 = load i32, i32* %s14_18fixp3, align 4, !taffo.info !19
  %70 = load i32, i32* %13, align 4, !taffo.info !26
  %71 = load i32, i32* %7, align 4, !taffo.info !17
  %72 = mul nsw i32 %70, %71, !taffo.info !33
  %73 = load i32, i32* %14, align 4, !taffo.info !26
  %74 = add nsw i32 %72, %73, !taffo.info !35
  %75 = sext i32 %74 to i64, !taffo.info !35
  %s14_18fixp25 = getelementptr inbounds i32, i32* %s14_18fixp5, i64 %75, !taffo.info !19, !taffo.target !22
  store i32 %s14_18fixp20, i32* %s14_18fixp25, align 4, !taffo.info !28, !taffo.target !22
  br label %76

; <label>:76:                                     ; preds = %52
  %77 = load i32, i32* %14, align 4, !taffo.info !26
  %78 = add nsw i32 %77, 1, !taffo.info !39
  store i32 %78, i32* %14, align 4, !taffo.info !28
  br label %48

; <label>:79:                                     ; preds = %48
  br label %80

; <label>:80:                                     ; preds = %79
  %81 = load i32, i32* %13, align 4, !taffo.info !26
  %82 = add nsw i32 %81, 1, !taffo.info !39
  store i32 %82, i32* %13, align 4, !taffo.info !28
  br label %44

; <label>:83:                                     ; preds = %44
  store i32 0, i32* %13, align 4, !taffo.info !28
  br label %84

; <label>:84:                                     ; preds = %94, %83
  %85 = load i32, i32* %13, align 4, !taffo.info !29
  %86 = icmp slt i32 %85, 16, !taffo.info !31
  br i1 %86, label %87, label %97, !taffo.info !28

; <label>:87:                                     ; preds = %84
  %u0_32fixp16 = load i32, i32* %u0_32fixp, align 4, !taffo.info !24
  %88 = lshr i32 %u0_32fixp16, 14, !taffo.info !24
  %89 = load i32, i32* %13, align 4, !taffo.info !26
  %90 = sext i32 %89 to i64, !taffo.info !26
  %s14_18fixp12 = getelementptr inbounds i32, i32* %s14_18fixp, i64 %90, !taffo.info !76, !taffo.target !57
  store i32 %88, i32* %s14_18fixp12, align 4, !taffo.info !28, !taffo.target !57
  %u0_32fixp15 = load i32, i32* %u0_32fixp, align 4, !taffo.info !24
  %91 = lshr i32 %u0_32fixp15, 14, !taffo.info !24
  %92 = load i32, i32* %13, align 4, !taffo.info !26
  %93 = sext i32 %92 to i64, !taffo.info !26
  %s14_18fixp30 = getelementptr inbounds i32, i32* %s14_18fixp8, i64 %93, !taffo.info !76, !taffo.target !57
  store i32 %91, i32* %s14_18fixp30, align 4, !taffo.info !28, !taffo.target !57
  br label %94

; <label>:94:                                     ; preds = %87
  %95 = load i32, i32* %13, align 4, !taffo.info !26
  %96 = add nsw i32 %95, 1, !taffo.info !39
  store i32 %96, i32* %13, align 4, !taffo.info !28
  br label %84

; <label>:97:                                     ; preds = %84
  store i32 0, i32* %13, align 4, !taffo.info !28
  br label %98

; <label>:98:                                     ; preds = %147, %97
  %99 = load i32, i32* %13, align 4, !taffo.info !29
  %100 = icmp slt i32 %99, 16, !taffo.info !31
  br i1 %100, label %101, label %150, !taffo.info !28

; <label>:101:                                    ; preds = %98
  %u0_32fixp14 = load i32, i32* %u0_32fixp, align 4, !taffo.info !24
  %102 = lshr i32 %u0_32fixp14, 14, !taffo.info !24
  store i32 %102, i32* %s14_18fixp4, align 4, !taffo.info !28
  store i32 0, i32* %14, align 4, !taffo.info !28
  br label %103

; <label>:103:                                    ; preds = %120, %101
  %104 = load i32, i32* %14, align 4, !taffo.info !29
  %105 = icmp slt i32 %104, 16, !taffo.info !31
  br i1 %105, label %106, label %123, !taffo.info !28

; <label>:106:                                    ; preds = %103
  %s14_18fixp22 = load i32, i32* %s14_18fixp4, align 4, !taffo.info !19
  %107 = ashr i32 %s14_18fixp22, 12, !taffo.info !19
  %108 = load i32, i32* %13, align 4, !taffo.info !26
  %109 = mul nsw i32 %108, 16, !taffo.info !33
  %110 = load i32, i32* %14, align 4, !taffo.info !26
  %111 = add nsw i32 %109, %110, !taffo.info !35
  %112 = sext i32 %111 to i64, !taffo.info !35
  %s14_18fixp24 = getelementptr inbounds i32, i32* %s14_18fixp5, i64 %112, !taffo.info !19, !taffo.target !22
  %s14_18fixp34 = load i32, i32* %s14_18fixp24, align 4, !taffo.info !19, !taffo.target !22
  %113 = load i32, i32* %14, align 4, !taffo.info !26
  %114 = sext i32 %113 to i64, !taffo.info !26
  %s14_18fixp17 = getelementptr inbounds i32, i32* %s14_18fixp1, i64 %114, !taffo.info !19, !taffo.target !23
  %s14_18fixp32 = load i32, i32* %s14_18fixp17, align 4, !taffo.info !19, !taffo.target !23
  %115 = sext i32 %s14_18fixp34 to i64, !taffo.info !19, !taffo.target !22
  %116 = sext i32 %s14_18fixp32 to i64, !taffo.info !19, !taffo.target !23
  %117 = mul i64 %115, %116, !taffo.info !79, !taffo.target !23
  %118 = ashr i64 %117, 30, !taffo.info !79, !taffo.target !23
  %s26_6fixp39 = trunc i64 %118 to i32, !taffo.info !76, !taffo.target !22
  %s26_6fixp43 = add i32 %107, %s26_6fixp39, !taffo.info !81
  %119 = shl i32 %s26_6fixp43, 12, !taffo.info !81
  store i32 %119, i32* %s14_18fixp4, align 4, !taffo.info !28
  br label %120

; <label>:120:                                    ; preds = %106
  %121 = load i32, i32* %14, align 4, !taffo.info !26
  %122 = add nsw i32 %121, 1, !taffo.info !39
  store i32 %122, i32* %14, align 4, !taffo.info !28
  br label %103

; <label>:123:                                    ; preds = %103
  store i32 0, i32* %14, align 4, !taffo.info !28
  br label %124

; <label>:124:                                    ; preds = %143, %123
  %125 = load i32, i32* %14, align 4, !taffo.info !29
  %126 = icmp slt i32 %125, 16, !taffo.info !31
  br i1 %126, label %127, label %146, !taffo.info !28

; <label>:127:                                    ; preds = %124
  %128 = load i32, i32* %14, align 4, !taffo.info !26
  %129 = sext i32 %128 to i64, !taffo.info !26
  %s14_18fixp29 = getelementptr inbounds i32, i32* %s14_18fixp8, i64 %129, !taffo.info !76, !taffo.target !57
  %s14_18fixp36 = load i32, i32* %s14_18fixp29, align 4, !taffo.info !76, !taffo.target !57
  %130 = ashr i32 %s14_18fixp36, 12, !taffo.info !76, !taffo.target !57
  %131 = load i32, i32* %13, align 4, !taffo.info !26
  %132 = mul nsw i32 %131, 16, !taffo.info !33
  %133 = load i32, i32* %14, align 4, !taffo.info !26
  %134 = add nsw i32 %132, %133, !taffo.info !35
  %135 = sext i32 %134 to i64, !taffo.info !35
  %s14_18fixp23 = getelementptr inbounds i32, i32* %s14_18fixp5, i64 %135, !taffo.info !19, !taffo.target !22
  %s14_18fixp33 = load i32, i32* %s14_18fixp23, align 4, !taffo.info !19, !taffo.target !22
  %s14_18fixp21 = load i32, i32* %s14_18fixp4, align 4, !taffo.info !19
  %136 = sext i32 %s14_18fixp33 to i64, !taffo.info !19, !taffo.target !22
  %137 = sext i32 %s14_18fixp21 to i64, !taffo.info !19
  %138 = mul i64 %136, %137, !taffo.info !79, !taffo.target !22
  %139 = ashr i64 %138, 30, !taffo.info !79, !taffo.target !22
  %s26_6fixp38 = trunc i64 %139 to i32, !taffo.info !76, !taffo.target !22
  %s26_6fixp42 = add i32 %130, %s26_6fixp38, !taffo.info !76, !taffo.target !57
  %140 = shl i32 %s26_6fixp42, 12, !taffo.info !76, !taffo.target !57
  %141 = load i32, i32* %14, align 4, !taffo.info !26
  %142 = sext i32 %141 to i64, !taffo.info !26
  %s14_18fixp28 = getelementptr inbounds i32, i32* %s14_18fixp8, i64 %142, !taffo.info !76, !taffo.target !57
  store i32 %140, i32* %s14_18fixp28, align 4, !taffo.info !28, !taffo.target !57
  br label %143

; <label>:143:                                    ; preds = %127
  %144 = load i32, i32* %14, align 4, !taffo.info !26
  %145 = add nsw i32 %144, 1, !taffo.info !39
  store i32 %145, i32* %14, align 4, !taffo.info !28
  br label %124

; <label>:146:                                    ; preds = %124
  br label %147

; <label>:147:                                    ; preds = %146
  %148 = load i32, i32* %13, align 4, !taffo.info !26
  %149 = add nsw i32 %148, 1, !taffo.info !39
  store i32 %149, i32* %13, align 4, !taffo.info !28
  br label %98

; <label>:150:                                    ; preds = %98
  %151 = bitcast i32* %s14_18fixp5 to float*, !taffo.info !19, !taffo.target !22
  %152 = bitcast i32* %s14_18fixp1 to float*, !taffo.info !19, !taffo.target !23
  %153 = bitcast i32* %s14_18fixp to float*, !taffo.info !19, !taffo.target !57
  call void @atax.1(float* %151, float* %152, float* %153), !taffo.info !28, !taffo.target !22, !taffo.originalCall !83
  store i32 0, i32* %13, align 4, !taffo.info !28
  br label %154

; <label>:154:                                    ; preds = %166, %150
  %155 = load i32, i32* %13, align 4, !taffo.info !29
  %156 = icmp slt i32 %155, 16, !taffo.info !31
  br i1 %156, label %157, label %169, !taffo.info !28

; <label>:157:                                    ; preds = %154
  %158 = load i32, i32* %13, align 4, !taffo.info !26
  %159 = sext i32 %158 to i64, !taffo.info !26
  %s14_18fixp11 = getelementptr inbounds i32, i32* %s14_18fixp, i64 %159, !taffo.info !76, !taffo.target !57
  %s14_18fixp31 = load i32, i32* %s14_18fixp11, align 4, !taffo.info !76, !taffo.target !57
  %s26_6fixp = ashr i32 %s14_18fixp31, 12, !taffo.info !76, !taffo.target !57
  %160 = sitofp i32 %s26_6fixp to double, !taffo.info !76, !taffo.target !57
  %161 = fdiv double %160, 6.400000e+01, !taffo.info !76, !taffo.target !57
  %.flt = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), double %161), !taffo.info !84, !taffo.target !57
  %162 = load i32, i32* %13, align 4, !taffo.info !26
  %163 = sext i32 %162 to i64, !taffo.info !26
  %s14_18fixp27 = getelementptr inbounds i32, i32* %s14_18fixp8, i64 %163, !taffo.info !76, !taffo.target !57
  %s14_18fixp35 = load i32, i32* %s14_18fixp27, align 4, !taffo.info !76, !taffo.target !57
  %s26_6fixp41 = ashr i32 %s14_18fixp35, 12, !taffo.info !76, !taffo.target !57
  %164 = sitofp i32 %s26_6fixp41 to double, !taffo.info !76, !taffo.target !57
  %165 = fdiv double %164, 6.400000e+01, !taffo.info !76, !taffo.target !57
  %.flt44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), double %165), !taffo.info !84, !taffo.target !57
  br label %166

; <label>:166:                                    ; preds = %157
  %167 = load i32, i32* %13, align 4, !taffo.info !26
  %168 = add nsw i32 %167, 1, !taffo.info !39
  store i32 %168, i32* %13, align 4, !taffo.info !28
  br label %154

; <label>:169:                                    ; preds = %154
  store i32 0, i32* %3, align 4
  %170 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %170)
  %171 = load i32, i32* %3, align 4, !taffo.info !15
  ret i32 %171, !taffo.info !15
}

; Function Attrs: nounwind
declare !taffo.funinfo !85 i8* @llvm.stacksave() #1

declare !taffo.funinfo !86 dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare !taffo.funinfo !86 void @llvm.stackrestore(i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @atax.1(float*, float*, float*) #0 !taffo.start !12 !taffo.funinfo !87 !taffo.sourceFunction !83 {
  %s14_18fixp = alloca i32*, align 8, !taffo.info !19
  %s14_18fixp5 = alloca i32*, align 8, !taffo.info !19
  %s14_18fixp4 = alloca i32*, align 8, !taffo.info !19
  %4 = alloca i32, align 4, !taffo.info !17
  %5 = alloca i32, align 4, !taffo.info !17
  %s14_18fixp3 = alloca i32*, align 8, !taffo.info !19, !taffo.target !22
  %s14_18fixp2 = alloca i32*, align 8, !taffo.info !19, !taffo.target !23
  %s14_18fixp1 = alloca i32, align 4, !taffo.info !19
  %u0_32fixp = alloca i32, align 4, !taffo.info !24
  %6 = alloca i32, align 4, !taffo.info !26
  %7 = alloca i32, align 4, !taffo.info !26
  %8 = bitcast float* %0 to i32*
  store i32* %8, i32** %s14_18fixp, align 8, !taffo.info !28
  %9 = bitcast float* %1 to i32*
  store i32* %9, i32** %s14_18fixp5, align 8, !taffo.info !28
  %10 = bitcast float* %2 to i32*
  store i32* %10, i32** %s14_18fixp4, align 8, !taffo.info !28
  store i32 16, i32* %4, align 4
  store i32 16, i32* %5, align 4
  %s14_18fixp6 = load i32*, i32** %s14_18fixp, align 8, !taffo.info !19
  store i32* %s14_18fixp6, i32** %s14_18fixp3, align 8, !taffo.info !28, !taffo.target !22
  %s14_18fixp15 = load i32*, i32** %s14_18fixp5, align 8, !taffo.info !19
  store i32* %s14_18fixp15, i32** %s14_18fixp2, align 8, !taffo.info !28, !taffo.target !23
  store i32 0, i32* %u0_32fixp, align 4, !taffo.info !28
  store i32 0, i32* %6, align 4, !taffo.info !28
  br label %11

; <label>:11:                                     ; preds = %60, %3
  %12 = load i32, i32* %6, align 4, !taffo.info !29
  %13 = icmp slt i32 %12, 16, !taffo.info !31
  br i1 %13, label %14, label %63, !taffo.info !28

; <label>:14:                                     ; preds = %11
  %u0_32fixp9 = load i32, i32* %u0_32fixp, align 4, !taffo.info !24
  %15 = lshr i32 %u0_32fixp9, 14, !taffo.info !24
  store i32 %15, i32* %s14_18fixp1, align 4, !taffo.info !28
  store i32 0, i32* %7, align 4, !taffo.info !28
  br label %16

; <label>:16:                                     ; preds = %33, %14
  %17 = load i32, i32* %7, align 4, !taffo.info !29
  %18 = icmp slt i32 %17, 16, !taffo.info !31
  br i1 %18, label %19, label %36, !taffo.info !28

; <label>:19:                                     ; preds = %16
  %s14_18fixp8 = load i32, i32* %s14_18fixp1, align 4, !taffo.info !19
  %20 = ashr i32 %s14_18fixp8, 12, !taffo.info !19
  %s14_18fixp12 = load i32*, i32** %s14_18fixp3, align 8, !taffo.info !19, !taffo.target !22
  %21 = load i32, i32* %6, align 4, !taffo.info !26
  %22 = mul nsw i32 %21, 16, !taffo.info !33
  %23 = load i32, i32* %7, align 4, !taffo.info !26
  %24 = add nsw i32 %22, %23, !taffo.info !35
  %25 = sext i32 %24 to i64, !taffo.info !35
  %s14_18fixp18 = getelementptr inbounds i32, i32* %s14_18fixp12, i64 %25, !taffo.info !19, !taffo.target !22
  %s14_18fixp23 = load i32, i32* %s14_18fixp18, align 4, !taffo.info !19, !taffo.target !22
  %s14_18fixp10 = load i32*, i32** %s14_18fixp2, align 8, !taffo.info !19, !taffo.target !23
  %26 = load i32, i32* %7, align 4, !taffo.info !26
  %27 = sext i32 %26 to i64, !taffo.info !26
  %s14_18fixp16 = getelementptr inbounds i32, i32* %s14_18fixp10, i64 %27, !taffo.info !19, !taffo.target !23
  %s14_18fixp21 = load i32, i32* %s14_18fixp16, align 4, !taffo.info !19, !taffo.target !23
  %28 = sext i32 %s14_18fixp23 to i64, !taffo.info !19, !taffo.target !22
  %29 = sext i32 %s14_18fixp21 to i64, !taffo.info !19, !taffo.target !23
  %30 = mul i64 %28, %29, !taffo.info !79, !taffo.target !23
  %31 = ashr i64 %30, 30, !taffo.info !79, !taffo.target !23
  %s26_6fixp25 = trunc i64 %31 to i32, !taffo.info !76, !taffo.target !22
  %s26_6fixp27 = add i32 %20, %s26_6fixp25, !taffo.info !81
  %32 = shl i32 %s26_6fixp27, 12, !taffo.info !81
  store i32 %32, i32* %s14_18fixp1, align 4, !taffo.info !28
  br label %33

; <label>:33:                                     ; preds = %19
  %34 = load i32, i32* %7, align 4, !taffo.info !26
  %35 = add nsw i32 %34, 1, !taffo.info !39
  store i32 %35, i32* %7, align 4, !taffo.info !28
  br label %16

; <label>:36:                                     ; preds = %16
  store i32 0, i32* %7, align 4, !taffo.info !28
  br label %37

; <label>:37:                                     ; preds = %56, %36
  %38 = load i32, i32* %7, align 4, !taffo.info !29
  %39 = icmp slt i32 %38, 16, !taffo.info !31
  br i1 %39, label %40, label %59, !taffo.info !28

; <label>:40:                                     ; preds = %37
  %s14_18fixp14 = load i32*, i32** %s14_18fixp4, align 8, !taffo.info !76
  %41 = load i32, i32* %7, align 4, !taffo.info !26
  %42 = sext i32 %41 to i64, !taffo.info !26
  %s14_18fixp20 = getelementptr inbounds i32, i32* %s14_18fixp14, i64 %42, !taffo.info !76
  %s14_18fixp24 = load i32, i32* %s14_18fixp20, align 4, !taffo.info !76
  %43 = ashr i32 %s14_18fixp24, 12, !taffo.info !76
  %s14_18fixp11 = load i32*, i32** %s14_18fixp3, align 8, !taffo.info !19, !taffo.target !22
  %44 = load i32, i32* %6, align 4, !taffo.info !29
  %45 = mul nsw i32 %44, 16, !taffo.info !35
  %46 = load i32, i32* %7, align 4, !taffo.info !26
  %47 = add nsw i32 %45, %46, !taffo.info !41
  %48 = sext i32 %47 to i64, !taffo.info !41
  %s14_18fixp17 = getelementptr inbounds i32, i32* %s14_18fixp11, i64 %48, !taffo.info !19, !taffo.target !22
  %s14_18fixp22 = load i32, i32* %s14_18fixp17, align 4, !taffo.info !19, !taffo.target !22
  %s14_18fixp7 = load i32, i32* %s14_18fixp1, align 4, !taffo.info !19
  %49 = sext i32 %s14_18fixp22 to i64, !taffo.info !19, !taffo.target !22
  %50 = sext i32 %s14_18fixp7 to i64, !taffo.info !19
  %51 = mul i64 %49, %50, !taffo.info !79, !taffo.target !22
  %52 = ashr i64 %51, 30, !taffo.info !79, !taffo.target !22
  %s26_6fixp = trunc i64 %52 to i32, !taffo.info !76, !taffo.target !22
  %s26_6fixp26 = add i32 %43, %s26_6fixp, !taffo.info !76
  %53 = shl i32 %s26_6fixp26, 12, !taffo.info !76
  %s14_18fixp13 = load i32*, i32** %s14_18fixp4, align 8, !taffo.info !76
  %54 = load i32, i32* %7, align 4, !taffo.info !26
  %55 = sext i32 %54 to i64, !taffo.info !26
  %s14_18fixp19 = getelementptr inbounds i32, i32* %s14_18fixp13, i64 %55, !taffo.info !76
  store i32 %53, i32* %s14_18fixp19, align 4, !taffo.info !28
  br label %56

; <label>:56:                                     ; preds = %40
  %57 = load i32, i32* %7, align 4, !taffo.info !26
  %58 = add nsw i32 %57, 1, !taffo.info !39
  store i32 %58, i32* %7, align 4, !taffo.info !28
  br label %37

; <label>:59:                                     ; preds = %37
  br label %60

; <label>:60:                                     ; preds = %59
  %61 = load i32, i32* %6, align 4, !taffo.info !26
  %62 = add nsw i32 %61, 1, !taffo.info !39
  store i32 %62, i32* %6, align 4, !taffo.info !28
  br label %11

; <label>:63:                                     ; preds = %11
  ret void
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!10}
!llvm.ident = !{!11}

!0 = !{i1 false, !1, i1 false, i1 false}
!1 = !{double 0.000000e+00, double 1.160000e+02}
!2 = !{i1 false, !3, i1 false, i1 false}
!3 = !{double 0.000000e+00, double 1.200000e+02}
!4 = !{i1 false, !5, i1 false, i1 false}
!5 = !{double 0.000000e+00, double 1.150000e+02}
!6 = !{i1 false, !7, i1 false, i1 false}
!7 = !{double 0.000000e+00, double 1.210000e+02}
!8 = !{i1 false, !9, i1 false, i1 false}
!9 = !{double 0.000000e+00, double 1.020000e+02}
!10 = !{i32 1, !"wchar_size", i32 4}
!11 = !{!"clang version 8.0.0 (tags/RELEASE_800/final)"}
!12 = !{i1 true}
!13 = !{void (float*, float*, float*)* @atax.1}
!14 = !{i32 0, i1 false, i32 0, i1 false, i32 1, !15}
!15 = !{i1 false, !16, i1 false, i1 false}
!16 = !{double 0.000000e+00, double 0.000000e+00}
!17 = !{i1 false, !18, i1 false, i1 false}
!18 = !{double 1.600000e+01, double 1.600000e+01}
!19 = !{!20, !21, i1 false, i1 true}
!20 = !{!"fixp", i32 -32, i32 18}
!21 = !{double -4.096000e+03, double 4.096000e+03}
!22 = !{!"A"}
!23 = !{!"x"}
!24 = !{!25, !16, i1 false, i1 true}
!25 = !{!"fixp", i32 32, i32 32}
!26 = !{i1 false, !27, i1 false, i1 true}
!27 = !{double 0.000000e+00, double 1.600000e+01}
!28 = !{i1 false, i1 false, i1 false, i1 true}
!29 = !{i1 false, !30, i1 false, i1 true}
!30 = !{double 0.000000e+00, double 1.700000e+01}
!31 = !{i1 false, !32, i1 false, i1 true}
!32 = !{double 0.000000e+00, double 1.000000e+00}
!33 = !{i1 false, !34, i1 false, i1 true}
!34 = !{double 0.000000e+00, double 2.560000e+02}
!35 = !{i1 false, !36, i1 false, i1 true}
!36 = !{double 0.000000e+00, double 2.720000e+02}
!37 = !{!38, !21, i1 false}
!38 = !{!"fixp", i32 64, i32 18}
!39 = !{i1 false, !40, i1 false, i1 true}
!40 = !{double 1.000000e+00, double 1.700000e+01}
!41 = !{i1 false, !42, i1 false, i1 true}
!42 = !{double 0.000000e+00, double 2.880000e+02}
!43 = !{!25, !44, i1 false, i1 true}
!44 = !{double -0.000000e+00, double -0.000000e+00}
!45 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!46 = !{i32 0, i1 false, i32 0, i1 false}
!47 = !{i1 false, !48, i1 false, i1 false}
!48 = !{double 2.560000e+02, double 2.560000e+02}
!49 = !{!50, !18, i1 false, i1 true}
!50 = !{!"fixp", i32 32, i32 27}
!51 = !{!52, !53, i1 false, i1 true}
!52 = !{!"fixp", i32 32, i32 29}
!53 = !{double 5.000000e+00, double 5.000000e+00}
!54 = !{!55, !56, i1 false, i1 true}
!55 = !{!"fixp", i32 32, i32 31}
!56 = !{double 1.000000e+00, double 1.000000e+00}
!57 = !{!"y"}
!58 = !{!59, !56, i1 false, i1 true}
!59 = !{!"fixp", i32 32, i32 30}
!60 = !{!50, !27, i1 false, i1 true}
!61 = !{!62, !18, i1 false}
!62 = !{!"fixp", i32 64, i32 27}
!63 = !{!59, !32, i1 false, i1 true}
!64 = !{!59, !65, i1 false, i1 true}
!65 = !{double 1.000000e+00, double 2.000000e+00}
!66 = !{i1 false, !67, i1 false, i1 true}
!67 = !{double 0.000000e+00, double 3.200000e+01}
!68 = !{!69, !18, i1 false}
!69 = !{!"fixp", i32 64, i32 29}
!70 = !{!71, !72, i1 false, i1 true}
!71 = !{!"fixp", i32 32, i32 25}
!72 = !{double 8.000000e+01, double 8.000000e+01}
!73 = !{!62, !72, i1 false}
!74 = !{!55, !75, i1 false, i1 true}
!75 = !{double 0.000000e+00, double 2.000000e-01}
!76 = !{!77, !78, i1 false, i1 true}
!77 = !{!"fixp", i32 -32, i32 6}
!78 = !{double 0xC170000000000000, double 0x4170000000000000}
!79 = !{!80, !21, i1 false}
!80 = !{!"fixp", i32 -64, i32 18}
!81 = !{!77, !82, i1 false, i1 true}
!82 = !{double 0xC170010000000000, double 0x4170010000000000}
!83 = !{void (float*, float*, float*)* @atax}
!84 = !{!77, i1 false, i1 false, i1 true}
!85 = !{}
!86 = !{i32 0, i1 false}
!87 = !{i32 1, !19, i32 1, !19, i32 1, !76}
