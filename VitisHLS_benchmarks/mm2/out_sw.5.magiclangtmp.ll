; ModuleID = 'out_sw.4.magiclangtmp.ll'
source_filename = "mm2_taffo.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"scalar(range(0, 5))\00", section "llvm.metadata", !taffo.info !0
@.str.1 = private unnamed_addr constant [12 x i8] c"mm2_taffo.c\00", section "llvm.metadata", !taffo.info !2
@.str.2 = private unnamed_addr constant [9 x i8] c"scalar()\00", section "llvm.metadata", !taffo.info !0
@.str.3 = private unnamed_addr constant [42 x i8] c"target('Ds') scalar(range(-16384, 16384))\00", section "llvm.metadata", !taffo.info !2
@.str.4 = private unnamed_addr constant [29 x i8] c"scalar(range(-16384, 16384))\00", section "llvm.metadata", !taffo.info !0
@.str.5 = private unnamed_addr constant [21 x i8] c"scalar(range(0, 16))\00", section "llvm.metadata", !taffo.info !0

; Function Attrs: noinline nounwind uwtable
define dso_local void @mm2(float*, float*, float*, float*, float, float) #0 !taffo.start !6 !taffo.funinfo !7 {
  %7 = alloca float*, align 8, !taffo.info !8
  %8 = alloca float*, align 8, !taffo.info !8
  %9 = alloca float*, align 8, !taffo.info !8
  %10 = alloca float*, align 8, !taffo.info !10
  %11 = alloca float, align 4, !taffo.info !12
  %12 = alloca float, align 4, !taffo.info !14
  %13 = alloca i32, align 4, !taffo.info !16
  %14 = alloca i32, align 4, !taffo.info !16
  %15 = alloca i32, align 4, !taffo.info !16
  %16 = alloca i32, align 4, !taffo.info !16
  %u3_29fixp = alloca i32, align 4, !taffo.info !18
  %u3_29fixp1 = alloca i32, align 4, !taffo.info !18
  %u1_31fixp = alloca i32*, align 8, !taffo.info !21
  %u1_31fixp2 = alloca i32*, align 8, !taffo.info !21
  %u1_31fixp3 = alloca i32*, align 8, !taffo.info !21
  %s16_16fixp = alloca i32*, align 8, !taffo.info !23, !taffo.target !26
  %s16_16fixp4 = alloca [256 x i32], align 16, !taffo.info !23
  %17 = alloca i32, align 4, !taffo.info !27
  %18 = alloca i32, align 4, !taffo.info !27
  %19 = alloca i32, align 4, !taffo.info !27
  store float* %0, float** %7, align 8
  store float* %1, float** %8, align 8
  store float* %2, float** %9, align 8
  store float* %3, float** %10, align 8
  store float %4, float* %11, align 4
  store float %5, float* %12, align 4
  store i32 16, i32* %13, align 4
  store i32 16, i32* %14, align 4
  store i32 16, i32* %15, align 4
  store i32 16, i32* %16, align 4
  %20 = load float, float* %11, align 4, !taffo.info !12
  %21 = fmul float 0x41C0000000000000, %20, !taffo.info !12
  %22 = fptoui float %21 to i32, !taffo.info !12
  store i32 %22, i32* %u3_29fixp, align 4, !taffo.info !29
  %23 = load float, float* %12, align 4, !taffo.info !14
  %24 = fmul float 0x41C0000000000000, %23, !taffo.info !14
  %25 = fptoui float %24 to i32, !taffo.info !14
  store i32 %25, i32* %u3_29fixp1, align 4, !taffo.info !29
  %26 = load float*, float** %7, align 8, !taffo.info !8
  %27 = bitcast float* %26 to i32*, !taffo.info !8
  store i32* %27, i32** %u1_31fixp, align 8, !taffo.info !29
  %28 = load float*, float** %8, align 8, !taffo.info !8
  %29 = bitcast float* %28 to i32*, !taffo.info !8
  store i32* %29, i32** %u1_31fixp2, align 8, !taffo.info !29
  %30 = load float*, float** %9, align 8, !taffo.info !8
  %31 = bitcast float* %30 to i32*, !taffo.info !8
  store i32* %31, i32** %u1_31fixp3, align 8, !taffo.info !29
  %32 = load float*, float** %10, align 8, !taffo.info !10
  %33 = bitcast float* %32 to i32*, !taffo.info !10
  store i32* %33, i32** %s16_16fixp, align 8, !taffo.info !29, !taffo.target !26
  store i32 0, i32* %17, align 4, !taffo.info !29
  br label %34

; <label>:34:                                     ; preds = %60, %6
  %35 = load i32, i32* %17, align 4, !taffo.info !30
  %36 = icmp slt i32 %35, 16, !taffo.info !32
  br i1 %36, label %37, label %63, !taffo.info !29

; <label>:37:                                     ; preds = %34
  store i32 0, i32* %18, align 4, !taffo.info !29
  br label %38

; <label>:38:                                     ; preds = %56, %37
  %39 = load i32, i32* %18, align 4, !taffo.info !30
  %40 = icmp slt i32 %39, 16, !taffo.info !32
  br i1 %40, label %41, label %59, !taffo.info !29

; <label>:41:                                     ; preds = %38
  %42 = load i32, i32* %17, align 4, !taffo.info !33
  %43 = load i32, i32* %14, align 4, !taffo.info !16
  %44 = mul nsw i32 %42, %43, !taffo.info !35
  %45 = load i32, i32* %18, align 4, !taffo.info !33
  %46 = add nsw i32 %44, %45, !taffo.info !37
  %47 = sext i32 %46 to i64, !taffo.info !37
  %s16_16fixp10 = getelementptr inbounds [256 x i32], [256 x i32]* %s16_16fixp4, i64 0, i64 %47, !taffo.info !39
  store i32 0, i32* %s16_16fixp10, align 4, !taffo.info !29
  store i32 0, i32* %19, align 4, !taffo.info !29
  br label %48

; <label>:48:                                     ; preds = %52, %41
  %49 = load i32, i32* %19, align 4, !taffo.info !33
  %50 = icmp slt i32 %49, 16, !taffo.info !32
  br i1 %50, label %51, label %55, !taffo.info !29

; <label>:51:                                     ; preds = %48
  br label %52

; <label>:52:                                     ; preds = %51
  %53 = load i32, i32* %19, align 4, !taffo.info !42
  %54 = add nsw i32 %53, 1, !taffo.info !44
  store i32 %54, i32* %19, align 4, !taffo.info !29
  br label %48

; <label>:55:                                     ; preds = %48
  br label %56

; <label>:56:                                     ; preds = %55
  %57 = load i32, i32* %18, align 4, !taffo.info !33
  %58 = add nsw i32 %57, 1, !taffo.info !46
  store i32 %58, i32* %18, align 4, !taffo.info !29
  br label %38

; <label>:59:                                     ; preds = %38
  br label %60

; <label>:60:                                     ; preds = %59
  %61 = load i32, i32* %17, align 4, !taffo.info !33
  %62 = add nsw i32 %61, 1, !taffo.info !46
  store i32 %62, i32* %17, align 4, !taffo.info !29
  br label %34

; <label>:63:                                     ; preds = %34
  store i32 0, i32* %17, align 4, !taffo.info !29
  br label %64

; <label>:64:                                     ; preds = %119, %63
  %65 = load i32, i32* %17, align 4, !taffo.info !33
  %66 = icmp slt i32 %65, 16, !taffo.info !32
  br i1 %66, label %67, label %122, !taffo.info !29

; <label>:67:                                     ; preds = %64
  store i32 0, i32* %18, align 4, !taffo.info !29
  br label %68

; <label>:68:                                     ; preds = %115, %67
  %69 = load i32, i32* %18, align 4, !taffo.info !30
  %70 = icmp slt i32 %69, 16, !taffo.info !32
  br i1 %70, label %71, label %118, !taffo.info !29

; <label>:71:                                     ; preds = %68
  %u3_29fixp5 = load i32, i32* %u3_29fixp1, align 4, !taffo.info !18
  %s16_16fixp8 = load i32*, i32** %s16_16fixp, align 8, !taffo.info !23, !taffo.target !26
  %72 = load i32, i32* %17, align 4, !taffo.info !42
  %73 = load i32, i32* %16, align 4, !taffo.info !16
  %74 = mul nsw i32 %72, %73, !taffo.info !48
  %75 = load i32, i32* %18, align 4, !taffo.info !33
  %76 = add nsw i32 %74, %75, !taffo.info !50
  %77 = sext i32 %76 to i64, !taffo.info !50
  %s16_16fixp13 = getelementptr inbounds i32, i32* %s16_16fixp8, i64 %77, !taffo.info !23, !taffo.target !26
  %s16_16fixp17 = load i32, i32* %s16_16fixp13, align 4, !taffo.info !23, !taffo.target !26
  %78 = sext i32 %s16_16fixp17 to i64, !taffo.info !23, !taffo.target !26
  %79 = zext i32 %u3_29fixp5 to i64, !taffo.info !18
  %80 = mul i64 %78, %79, !taffo.info !52, !taffo.target !26
  %81 = lshr i64 %80, 20, !taffo.info !52, !taffo.target !26
  %u7_25fixp = trunc i64 %81 to i32, !taffo.info !54, !taffo.target !26
  %82 = lshr i32 %u7_25fixp, 9, !taffo.info !54, !taffo.target !26
  store i32 %82, i32* %s16_16fixp13, align 4, !taffo.info !29
  store i32 0, i32* %19, align 4, !taffo.info !29
  br label %83

; <label>:83:                                     ; preds = %111, %71
  %84 = load i32, i32* %19, align 4, !taffo.info !30
  %85 = icmp slt i32 %84, 16, !taffo.info !32
  br i1 %85, label %86, label %114, !taffo.info !29

; <label>:86:                                     ; preds = %83
  %87 = load i32, i32* %17, align 4, !taffo.info !33
  %88 = load i32, i32* %14, align 4, !taffo.info !16
  %89 = mul nsw i32 %87, %88, !taffo.info !35
  %90 = load i32, i32* %19, align 4, !taffo.info !33
  %91 = add nsw i32 %89, %90, !taffo.info !37
  %92 = sext i32 %91 to i64, !taffo.info !37
  %s16_16fixp9 = getelementptr inbounds [256 x i32], [256 x i32]* %s16_16fixp4, i64 0, i64 %92, !taffo.info !39
  %s16_16fixp14 = load i32, i32* %s16_16fixp9, align 4, !taffo.info !57
  %u1_31fixp6 = load i32*, i32** %u1_31fixp3, align 8, !taffo.info !21
  %93 = load i32, i32* %19, align 4, !taffo.info !33
  %94 = load i32, i32* %16, align 4, !taffo.info !16
  %95 = mul nsw i32 %93, %94, !taffo.info !35
  %96 = load i32, i32* %18, align 4, !taffo.info !33
  %97 = add nsw i32 %95, %96, !taffo.info !37
  %98 = sext i32 %97 to i64, !taffo.info !37
  %u1_31fixp11 = getelementptr inbounds i32, i32* %u1_31fixp6, i64 %98, !taffo.info !21
  %u1_31fixp15 = load i32, i32* %u1_31fixp11, align 4, !taffo.info !59
  %99 = sext i32 %s16_16fixp14 to i64, !taffo.info !57
  %100 = zext i32 %u1_31fixp15 to i64, !taffo.info !59
  %101 = mul i64 %99, %100, !taffo.info !60
  %102 = lshr i64 %101, 24, !taffo.info !60
  %u9_23fixp = trunc i64 %102 to i32, !taffo.info !61
  %s16_16fixp7 = load i32*, i32** %s16_16fixp, align 8, !taffo.info !23, !taffo.target !26
  %103 = load i32, i32* %17, align 4, !taffo.info !33
  %104 = load i32, i32* %16, align 4, !taffo.info !16
  %105 = mul nsw i32 %103, %104, !taffo.info !35
  %106 = load i32, i32* %18, align 4, !taffo.info !33
  %107 = add nsw i32 %105, %106, !taffo.info !37
  %108 = sext i32 %107 to i64, !taffo.info !37
  %s16_16fixp12 = getelementptr inbounds i32, i32* %s16_16fixp7, i64 %108, !taffo.info !23, !taffo.target !26
  %s16_16fixp16 = load i32, i32* %s16_16fixp12, align 4, !taffo.info !23, !taffo.target !26
  %109 = shl i32 %s16_16fixp16, 7, !taffo.info !23, !taffo.target !26
  %u9_23fixp18 = add i32 %109, %u9_23fixp, !taffo.info !64, !taffo.target !26
  %110 = lshr i32 %u9_23fixp18, 7, !taffo.info !64, !taffo.target !26
  store i32 %110, i32* %s16_16fixp12, align 4, !taffo.info !29, !taffo.target !26
  br label %111

; <label>:111:                                    ; preds = %86
  %112 = load i32, i32* %19, align 4, !taffo.info !33
  %113 = add nsw i32 %112, 1, !taffo.info !46
  store i32 %113, i32* %19, align 4, !taffo.info !29
  br label %83

; <label>:114:                                    ; preds = %83
  br label %115

; <label>:115:                                    ; preds = %114
  %116 = load i32, i32* %18, align 4, !taffo.info !33
  %117 = add nsw i32 %116, 1, !taffo.info !46
  store i32 %117, i32* %18, align 4, !taffo.info !29
  br label %68

; <label>:118:                                    ; preds = %68
  br label %119

; <label>:119:                                    ; preds = %118
  %120 = load i32, i32* %17, align 4, !taffo.info !42
  %121 = add nsw i32 %120, 1, !taffo.info !44
  store i32 %121, i32* %17, align 4, !taffo.info !29
  br label %64

; <label>:122:                                    ; preds = %64
  ret void
}

; Function Attrs: nounwind
declare !taffo.funinfo !65 void @llvm.var.annotation(i8*, i8*, i8*, i32) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32, i8**) #0 !taffo.funinfo !66 {
  %3 = alloca i32, align 4, !taffo.info !67
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4, !taffo.info !16
  %7 = alloca i32, align 4, !taffo.info !16
  %8 = alloca i32, align 4, !taffo.info !16
  %9 = alloca i32, align 4, !taffo.info !16
  %10 = alloca float, align 4, !taffo.info !12
  %11 = alloca float, align 4, !taffo.info !14
  %12 = alloca [256 x float], align 16, !taffo.info !8
  %13 = alloca [256 x float], align 16, !taffo.info !8
  %14 = alloca [256 x float], align 16, !taffo.info !8
  %15 = alloca [256 x float], align 16, !taffo.info !68
  %16 = alloca i32, align 4, !taffo.info !69
  %17 = alloca i32, align 4, !taffo.info !69
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 16, i32* %6, align 4
  store i32 16, i32* %7, align 4
  store i32 16, i32* %8, align 4
  store i32 16, i32* %9, align 4
  store float 1.500000e+00, float* %10, align 4
  store float 0x3FF3333340000000, float* %11, align 4
  store i32 0, i32* %16, align 4
  br label %18

; <label>:18:                                     ; preds = %48, %2
  %19 = load i32, i32* %16, align 4, !taffo.info !69
  %20 = load i32, i32* %6, align 4, !taffo.info !16
  %21 = icmp slt i32 %19, %20, !taffo.info !71
  br i1 %21, label %22, label %51

; <label>:22:                                     ; preds = %18
  store i32 0, i32* %17, align 4
  br label %23

; <label>:23:                                     ; preds = %44, %22
  %24 = load i32, i32* %17, align 4, !taffo.info !69
  %25 = load i32, i32* %8, align 4, !taffo.info !16
  %26 = icmp slt i32 %24, %25, !taffo.info !71
  br i1 %26, label %27, label %47

; <label>:27:                                     ; preds = %23
  %28 = load i32, i32* %16, align 4, !taffo.info !69
  %29 = load i32, i32* %17, align 4, !taffo.info !69
  %30 = mul nsw i32 %28, %29, !taffo.info !67
  %31 = add nsw i32 %30, 1, !taffo.info !71
  %32 = load i32, i32* %6, align 4, !taffo.info !16
  %33 = srem i32 %31, %32, !taffo.info !73
  %34 = load i32, i32* %6, align 4, !taffo.info !16
  %35 = sdiv i32 %33, %34, !taffo.info !8
  %36 = sitofp i32 %35 to float, !taffo.info !8
  %37 = load i32, i32* %16, align 4, !taffo.info !69
  %38 = load i32, i32* %8, align 4, !taffo.info !16
  %39 = mul nsw i32 %37, %38, !taffo.info !67
  %40 = load i32, i32* %17, align 4, !taffo.info !69
  %41 = add nsw i32 %39, %40, !taffo.info !67
  %42 = sext i32 %41 to i64, !taffo.info !67
  %43 = getelementptr inbounds [256 x float], [256 x float]* %12, i64 0, i64 %42, !taffo.info !8
  store float %36, float* %43, align 4
  br label %44

; <label>:44:                                     ; preds = %27
  %45 = load i32, i32* %17, align 4, !taffo.info !69
  %46 = add nsw i32 %45, 1, !taffo.info !71
  store i32 %46, i32* %17, align 4
  br label %23

; <label>:47:                                     ; preds = %23
  br label %48

; <label>:48:                                     ; preds = %47
  %49 = load i32, i32* %16, align 4, !taffo.info !69
  %50 = add nsw i32 %49, 1, !taffo.info !71
  store i32 %50, i32* %16, align 4
  br label %18

; <label>:51:                                     ; preds = %18
  store i32 0, i32* %16, align 4
  br label %52

; <label>:52:                                     ; preds = %82, %51
  %53 = load i32, i32* %16, align 4, !taffo.info !69
  %54 = load i32, i32* %8, align 4, !taffo.info !16
  %55 = icmp slt i32 %53, %54, !taffo.info !71
  br i1 %55, label %56, label %85

; <label>:56:                                     ; preds = %52
  store i32 0, i32* %17, align 4
  br label %57

; <label>:57:                                     ; preds = %78, %56
  %58 = load i32, i32* %17, align 4, !taffo.info !69
  %59 = load i32, i32* %7, align 4, !taffo.info !16
  %60 = icmp slt i32 %58, %59, !taffo.info !71
  br i1 %60, label %61, label %81

; <label>:61:                                     ; preds = %57
  %62 = load i32, i32* %16, align 4, !taffo.info !69
  %63 = load i32, i32* %17, align 4, !taffo.info !69
  %64 = add nsw i32 %63, 1, !taffo.info !74
  %65 = mul nsw i32 %62, %64, !taffo.info !69
  %66 = load i32, i32* %7, align 4, !taffo.info !16
  %67 = srem i32 %65, %66, !taffo.info !73
  %68 = load i32, i32* %7, align 4, !taffo.info !16
  %69 = sdiv i32 %67, %68, !taffo.info !8
  %70 = sitofp i32 %69 to float, !taffo.info !8
  %71 = load i32, i32* %16, align 4, !taffo.info !69
  %72 = load i32, i32* %7, align 4, !taffo.info !16
  %73 = mul nsw i32 %71, %72, !taffo.info !76
  %74 = load i32, i32* %17, align 4, !taffo.info !69
  %75 = add nsw i32 %73, %74, !taffo.info !78
  %76 = sext i32 %75 to i64, !taffo.info !78
  %77 = getelementptr inbounds [256 x float], [256 x float]* %13, i64 0, i64 %76, !taffo.info !8
  store float %70, float* %77, align 4
  br label %78

; <label>:78:                                     ; preds = %61
  %79 = load i32, i32* %17, align 4, !taffo.info !69
  %80 = add nsw i32 %79, 1, !taffo.info !74
  store i32 %80, i32* %17, align 4
  br label %57

; <label>:81:                                     ; preds = %57
  br label %82

; <label>:82:                                     ; preds = %81
  %83 = load i32, i32* %16, align 4, !taffo.info !69
  %84 = add nsw i32 %83, 1, !taffo.info !74
  store i32 %84, i32* %16, align 4
  br label %52

; <label>:85:                                     ; preds = %52
  store i32 0, i32* %16, align 4
  br label %86

; <label>:86:                                     ; preds = %117, %85
  %87 = load i32, i32* %16, align 4, !taffo.info !69
  %88 = load i32, i32* %7, align 4, !taffo.info !16
  %89 = icmp slt i32 %87, %88, !taffo.info !71
  br i1 %89, label %90, label %120

; <label>:90:                                     ; preds = %86
  store i32 0, i32* %17, align 4
  br label %91

; <label>:91:                                     ; preds = %113, %90
  %92 = load i32, i32* %17, align 4, !taffo.info !69
  %93 = load i32, i32* %9, align 4, !taffo.info !16
  %94 = icmp slt i32 %92, %93, !taffo.info !71
  br i1 %94, label %95, label %116

; <label>:95:                                     ; preds = %91
  %96 = load i32, i32* %16, align 4, !taffo.info !69
  %97 = load i32, i32* %17, align 4, !taffo.info !69
  %98 = add nsw i32 %97, 3, !taffo.info !80
  %99 = mul nsw i32 %96, %98, !taffo.info !82
  %100 = add nsw i32 %99, 1, !taffo.info !84
  %101 = load i32, i32* %9, align 4, !taffo.info !16
  %102 = srem i32 %100, %101, !taffo.info !73
  %103 = load i32, i32* %9, align 4, !taffo.info !16
  %104 = sdiv i32 %102, %103, !taffo.info !8
  %105 = sitofp i32 %104 to float, !taffo.info !8
  %106 = load i32, i32* %16, align 4, !taffo.info !69
  %107 = load i32, i32* %9, align 4, !taffo.info !16
  %108 = mul nsw i32 %106, %107, !taffo.info !86
  %109 = load i32, i32* %17, align 4, !taffo.info !69
  %110 = add nsw i32 %108, %109, !taffo.info !88
  %111 = sext i32 %110 to i64, !taffo.info !88
  %112 = getelementptr inbounds [256 x float], [256 x float]* %14, i64 0, i64 %111, !taffo.info !8
  store float %105, float* %112, align 4
  br label %113

; <label>:113:                                    ; preds = %95
  %114 = load i32, i32* %17, align 4, !taffo.info !69
  %115 = add nsw i32 %114, 1, !taffo.info !90
  store i32 %115, i32* %17, align 4
  br label %91

; <label>:116:                                    ; preds = %91
  br label %117

; <label>:117:                                    ; preds = %116
  %118 = load i32, i32* %16, align 4, !taffo.info !69
  %119 = add nsw i32 %118, 1, !taffo.info !90
  store i32 %119, i32* %16, align 4
  br label %86

; <label>:120:                                    ; preds = %86
  store i32 0, i32* %16, align 4
  br label %121

; <label>:121:                                    ; preds = %151, %120
  %122 = load i32, i32* %16, align 4, !taffo.info !69
  %123 = load i32, i32* %6, align 4, !taffo.info !16
  %124 = icmp slt i32 %122, %123, !taffo.info !71
  br i1 %124, label %125, label %154

; <label>:125:                                    ; preds = %121
  store i32 0, i32* %17, align 4
  br label %126

; <label>:126:                                    ; preds = %147, %125
  %127 = load i32, i32* %17, align 4, !taffo.info !69
  %128 = load i32, i32* %9, align 4, !taffo.info !16
  %129 = icmp slt i32 %127, %128, !taffo.info !71
  br i1 %129, label %130, label %150

; <label>:130:                                    ; preds = %126
  %131 = load i32, i32* %16, align 4, !taffo.info !69
  %132 = load i32, i32* %17, align 4, !taffo.info !69
  %133 = add nsw i32 %132, 2, !taffo.info !92
  %134 = mul nsw i32 %131, %133, !taffo.info !94
  %135 = load i32, i32* %8, align 4, !taffo.info !16
  %136 = srem i32 %134, %135, !taffo.info !73
  %137 = load i32, i32* %8, align 4, !taffo.info !16
  %138 = sdiv i32 %136, %137, !taffo.info !8
  %139 = sitofp i32 %138 to float, !taffo.info !8
  %140 = load i32, i32* %16, align 4, !taffo.info !69
  %141 = load i32, i32* %9, align 4, !taffo.info !16
  %142 = mul nsw i32 %140, %141, !taffo.info !96
  %143 = load i32, i32* %17, align 4, !taffo.info !69
  %144 = add nsw i32 %142, %143, !taffo.info !98
  %145 = sext i32 %144 to i64, !taffo.info !98
  %146 = getelementptr inbounds [256 x float], [256 x float]* %15, i64 0, i64 %145, !taffo.info !68
  store float %139, float* %146, align 4
  br label %147

; <label>:147:                                    ; preds = %130
  %148 = load i32, i32* %17, align 4, !taffo.info !69
  %149 = add nsw i32 %148, 1, !taffo.info !100
  store i32 %149, i32* %17, align 4
  br label %126

; <label>:150:                                    ; preds = %126
  br label %151

; <label>:151:                                    ; preds = %150
  %152 = load i32, i32* %16, align 4, !taffo.info !69
  %153 = add nsw i32 %152, 1, !taffo.info !100
  store i32 %153, i32* %16, align 4
  br label %121

; <label>:154:                                    ; preds = %121
  %155 = getelementptr inbounds [256 x float], [256 x float]* %12, i32 0, i32 0, !taffo.info !8
  %156 = getelementptr inbounds [256 x float], [256 x float]* %13, i32 0, i32 0, !taffo.info !8
  %157 = getelementptr inbounds [256 x float], [256 x float]* %14, i32 0, i32 0, !taffo.info !8
  %158 = getelementptr inbounds [256 x float], [256 x float]* %15, i32 0, i32 0, !taffo.info !68
  %159 = load float, float* %10, align 4, !taffo.info !12
  %160 = load float, float* %11, align 4, !taffo.info !14
  call void @mm2(float* %155, float* %156, float* %157, float* %158, float %159, float %160)
  ret i32 0, !taffo.info !67
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!4}
!llvm.ident = !{!5}

!0 = !{i1 false, !1, i1 false, i1 false}
!1 = !{double 0.000000e+00, double 1.150000e+02}
!2 = !{i1 false, !3, i1 false, i1 false}
!3 = !{double 0.000000e+00, double 1.160000e+02}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{!"clang version 8.0.0 (tags/RELEASE_800/final)"}
!6 = !{i1 true}
!7 = !{i32 1, !8, i32 1, !8, i32 1, !8, i32 1, !10, i32 1, !12, i32 1, !14}
!8 = !{i1 false, !9, i1 false, i1 false}
!9 = !{double 0.000000e+00, double 1.000000e+00}
!10 = !{i1 false, !11, i1 false, i1 false}
!11 = !{double 0.000000e+00, double 4.320000e+02}
!12 = !{i1 false, !13, i1 false, i1 false}
!13 = !{double 1.500000e+00, double 1.500000e+00}
!14 = !{i1 false, !15, i1 false, i1 false}
!15 = !{double 0x3FF3333340000000, double 0x3FF3333340000000}
!16 = !{i1 false, !17, i1 false, i1 false}
!17 = !{double 1.600000e+01, double 1.600000e+01}
!18 = !{!19, !20, i1 false, i1 true}
!19 = !{!"fixp", i32 32, i32 29}
!20 = !{double 0.000000e+00, double 5.000000e+00}
!21 = !{!22, !9, i1 false, i1 true}
!22 = !{!"fixp", i32 32, i32 31}
!23 = !{!24, !25, i1 false, i1 true}
!24 = !{!"fixp", i32 -32, i32 16}
!25 = !{double -1.638400e+04, double 1.638400e+04}
!26 = !{!"Ds"}
!27 = !{i1 false, !28, i1 false, i1 true}
!28 = !{double 0.000000e+00, double 1.600000e+01}
!29 = !{i1 false, i1 false, i1 false, i1 true}
!30 = !{i1 false, !31, i1 false, i1 true}
!31 = !{double 0.000000e+00, double 1.900000e+01}
!32 = !{i1 false, !9, i1 false, i1 true}
!33 = !{i1 false, !34, i1 false, i1 true}
!34 = !{double 0.000000e+00, double 1.800000e+01}
!35 = !{i1 false, !36, i1 false, i1 true}
!36 = !{double 0.000000e+00, double 2.880000e+02}
!37 = !{i1 false, !38, i1 false, i1 true}
!38 = !{double 0.000000e+00, double 3.060000e+02}
!39 = !{!40, !41, i1 false, i1 true}
!40 = !{!"fixp", i32 32, i32 32}
!41 = !{double 0.000000e+00, double 0.000000e+00}
!42 = !{i1 false, !43, i1 false, i1 true}
!43 = !{double 0.000000e+00, double 1.700000e+01}
!44 = !{i1 false, !45, i1 false, i1 true}
!45 = !{double 1.000000e+00, double 1.800000e+01}
!46 = !{i1 false, !47, i1 false, i1 true}
!47 = !{double 1.000000e+00, double 1.900000e+01}
!48 = !{i1 false, !49, i1 false, i1 true}
!49 = !{double 0.000000e+00, double 2.720000e+02}
!50 = !{i1 false, !51, i1 false, i1 true}
!51 = !{double 0.000000e+00, double 2.900000e+02}
!52 = !{!53, !20, i1 false}
!53 = !{!"fixp", i32 64, i32 16}
!54 = !{!55, !56, i1 false, i1 true}
!55 = !{!"fixp", i32 32, i32 25}
!56 = !{double 0.000000e+00, double 9.000000e+01}
!57 = !{!58, !31, i1 false, i1 true}
!58 = !{!"fixp", i32 32, i32 27}
!59 = !{!58, !34, i1 false, i1 true}
!60 = !{!53, !34, i1 false}
!61 = !{!62, !63, i1 false, i1 true}
!62 = !{!"fixp", i32 32, i32 23}
!63 = !{double 0.000000e+00, double 3.420000e+02}
!64 = !{!62, !11, i1 false, i1 true}
!65 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!66 = !{i32 0, i1 false, i32 0, i1 false}
!67 = !{i1 false, !41, i1 false, i1 false}
!68 = !{i1 false, !25, i1 false, i1 false}
!69 = !{i1 false, !70, i1 false, i1 false}
!70 = !{double 0.000000e+00, double 4.000000e+00}
!71 = !{i1 false, !72, i1 false, i1 false}
!72 = !{double 1.000000e+00, double 1.000000e+00}
!73 = !{i1 false, !28, i1 false, i1 false}
!74 = !{i1 false, !75, i1 false, i1 false}
!75 = !{double 1.000000e+00, double 2.000000e+00}
!76 = !{i1 false, !77, i1 false, i1 false}
!77 = !{double 0.000000e+00, double 3.200000e+01}
!78 = !{i1 false, !79, i1 false, i1 false}
!79 = !{double 0.000000e+00, double 3.300000e+01}
!80 = !{i1 false, !81, i1 false, i1 false}
!81 = !{double 3.000000e+00, double 5.000000e+00}
!82 = !{i1 false, !83, i1 false, i1 false}
!83 = !{double 0.000000e+00, double 1.500000e+01}
!84 = !{i1 false, !85, i1 false, i1 false}
!85 = !{double 1.000000e+00, double 1.600000e+01}
!86 = !{i1 false, !87, i1 false, i1 false}
!87 = !{double 0.000000e+00, double 4.800000e+01}
!88 = !{i1 false, !89, i1 false, i1 false}
!89 = !{double 0.000000e+00, double 5.000000e+01}
!90 = !{i1 false, !91, i1 false, i1 false}
!91 = !{double 1.000000e+00, double 3.000000e+00}
!92 = !{i1 false, !93, i1 false, i1 false}
!93 = !{double 2.000000e+00, double 5.000000e+00}
!94 = !{i1 false, !95, i1 false, i1 false}
!95 = !{double 0.000000e+00, double 2.000000e+01}
!96 = !{i1 false, !97, i1 false, i1 false}
!97 = !{double 0.000000e+00, double 6.400000e+01}
!98 = !{i1 false, !99, i1 false, i1 false}
!99 = !{double 0.000000e+00, double 6.700000e+01}
!100 = !{i1 false, !101, i1 false, i1 false}
!101 = !{double 1.000000e+00, double 4.000000e+00}
