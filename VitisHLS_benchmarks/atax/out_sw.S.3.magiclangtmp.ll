; ModuleID = 'out_sw.S.2.magiclangtmp.ll'
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
  %9 = alloca float*, align 8, !taffo.target !19, !taffo.info !20
  %10 = alloca float*, align 8, !taffo.target !22, !taffo.info !20
  %11 = alloca float, align 4, !taffo.info !20
  %12 = alloca float, align 4, !taffo.info !23
  %13 = alloca i32, align 4, !taffo.info !24
  %14 = alloca i32, align 4, !taffo.info !24
  store float* %0, float** %4, align 8
  store float* %1, float** %5, align 8
  store float* %2, float** %6, align 8
  store i32 16, i32* %7, align 4
  store i32 16, i32* %8, align 4
  %15 = bitcast float** %9 to i8*, !taffo.target !19, !taffo.info !20
  %16 = load float*, float** %4, align 8
  store float* %16, float** %9, align 8, !taffo.target !19, !taffo.info !26
  %17 = bitcast float** %10 to i8*, !taffo.target !22, !taffo.info !20
  %18 = load float*, float** %5, align 8
  store float* %18, float** %10, align 8, !taffo.target !22, !taffo.info !26
  %19 = bitcast float* %11 to i8*, !taffo.info !20
  %20 = bitcast float* %12 to i8*, !taffo.info !26
  store float 0.000000e+00, float* %12, align 4, !taffo.info !26
  %21 = bitcast i32* %13 to i8*, !taffo.info !24
  %22 = bitcast i32* %14 to i8*, !taffo.info !24
  store i32 0, i32* %13, align 4, !taffo.info !26
  br label %23

; <label>:23:                                     ; preds = %80, %3
  %24 = load i32, i32* %13, align 4, !taffo.info !27
  %25 = icmp slt i32 %24, 16, !taffo.info !29
  br i1 %25, label %26, label %83, !taffo.info !26

; <label>:26:                                     ; preds = %23
  %27 = load float, float* %12, align 4, !taffo.info !23
  store float %27, float* %11, align 4, !taffo.info !26
  store i32 0, i32* %14, align 4, !taffo.info !26
  br label %28

; <label>:28:                                     ; preds = %48, %26
  %29 = load i32, i32* %14, align 4, !taffo.info !27
  %30 = icmp slt i32 %29, 16, !taffo.info !29
  br i1 %30, label %31, label %51, !taffo.info !26

; <label>:31:                                     ; preds = %28
  %32 = load float, float* %11, align 4, !taffo.info !20
  %33 = load float*, float** %9, align 8, !taffo.target !19, !taffo.info !20
  %34 = load i32, i32* %13, align 4, !taffo.info !24
  %35 = mul nsw i32 %34, 16, !taffo.info !31
  %36 = load i32, i32* %14, align 4, !taffo.info !24
  %37 = add nsw i32 %35, %36, !taffo.info !33
  %38 = sext i32 %37 to i64, !taffo.info !33
  %39 = getelementptr inbounds float, float* %33, i64 %38, !taffo.target !19, !taffo.info !20
  %40 = load float, float* %39, align 4, !taffo.target !19, !taffo.info !20
  %41 = load float*, float** %10, align 8, !taffo.target !22, !taffo.info !20
  %42 = load i32, i32* %14, align 4, !taffo.info !24
  %43 = sext i32 %42 to i64, !taffo.info !24
  %44 = getelementptr inbounds float, float* %41, i64 %43, !taffo.target !22, !taffo.info !20
  %45 = load float, float* %44, align 4, !taffo.target !22, !taffo.info !20
  %46 = fmul float %40, %45, !taffo.target !19, !taffo.info !23
  %47 = fadd float %32, %46, !taffo.info !20
  store float %47, float* %11, align 4, !taffo.info !26
  br label %48

; <label>:48:                                     ; preds = %31
  %49 = load i32, i32* %14, align 4, !taffo.info !24
  %50 = add nsw i32 %49, 1, !taffo.info !35
  store i32 %50, i32* %14, align 4, !taffo.info !26
  br label %28

; <label>:51:                                     ; preds = %28
  store i32 0, i32* %14, align 4, !taffo.info !26
  br label %52

; <label>:52:                                     ; preds = %76, %51
  %53 = load i32, i32* %14, align 4, !taffo.info !27
  %54 = icmp slt i32 %53, 16, !taffo.info !29
  br i1 %54, label %55, label %79, !taffo.info !26

; <label>:55:                                     ; preds = %52
  %56 = load float*, float** %6, align 8, !taffo.info !15
  %57 = load i32, i32* %14, align 4, !taffo.info !24
  %58 = sext i32 %57 to i64, !taffo.info !24
  %59 = getelementptr inbounds float, float* %56, i64 %58, !taffo.info !23
  %60 = load float, float* %59, align 4, !taffo.info !23
  %61 = load float*, float** %9, align 8, !taffo.target !19, !taffo.info !20
  %62 = load i32, i32* %13, align 4, !taffo.info !27
  %63 = mul nsw i32 %62, 16, !taffo.info !33
  %64 = load i32, i32* %14, align 4, !taffo.info !24
  %65 = add nsw i32 %63, %64, !taffo.info !37
  %66 = sext i32 %65 to i64, !taffo.info !37
  %67 = getelementptr inbounds float, float* %61, i64 %66, !taffo.target !19, !taffo.info !20
  %68 = load float, float* %67, align 4, !taffo.target !19, !taffo.info !20
  %69 = load float, float* %11, align 4, !taffo.info !20
  %70 = fmul float %68, %69, !taffo.info !39
  %71 = fadd float %60, %70, !taffo.info !23
  %72 = load float*, float** %6, align 8, !taffo.info !15
  %73 = load i32, i32* %14, align 4, !taffo.info !24
  %74 = sext i32 %73 to i64, !taffo.info !24
  %75 = getelementptr inbounds float, float* %72, i64 %74, !taffo.info !23
  store float %71, float* %75, align 4, !taffo.info !26
  br label %76

; <label>:76:                                     ; preds = %55
  %77 = load i32, i32* %14, align 4, !taffo.info !24
  %78 = add nsw i32 %77, 1, !taffo.info !35
  store i32 %78, i32* %14, align 4, !taffo.info !26
  br label %52

; <label>:79:                                     ; preds = %52
  br label %80

; <label>:80:                                     ; preds = %79
  %81 = load i32, i32* %13, align 4, !taffo.info !24
  %82 = add nsw i32 %81, 1, !taffo.info !35
  store i32 %82, i32* %13, align 4, !taffo.info !26
  br label %23

; <label>:83:                                     ; preds = %23
  ret void
}

; Function Attrs: nounwind
declare !taffo.funinfo !41 void @llvm.var.annotation(i8*, i8*, i8*, i32) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32, i8**) #0 !taffo.start !12 !taffo.funinfo !42 {
  %3 = alloca i32, align 4, !taffo.info !15
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4, !taffo.info !17
  %7 = alloca i32, align 4, !taffo.info !17
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8, !taffo.info !43
  %10 = alloca i64, align 8, !taffo.info !17
  %11 = alloca i64, align 8, !taffo.info !17
  %12 = alloca i64, align 8, !taffo.info !17
  %13 = alloca i32, align 4, !taffo.info !24
  %14 = alloca i32, align 4, !taffo.info !24
  %15 = alloca float, align 4, !taffo.info !45
  %16 = alloca float, align 4, !taffo.info !45
  %17 = alloca float, align 4, !taffo.info !46
  %18 = alloca float, align 4, !taffo.info !23
  %19 = alloca float, align 4, !taffo.info !48
  %20 = alloca float, align 4, !taffo.info !20
  %21 = alloca float, align 4, !taffo.info !20
  %22 = alloca float, align 4, !taffo.info !20
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 16, i32* %6, align 4
  store i32 16, i32* %7, align 4
  %23 = load i32, i32* %6, align 4, !taffo.info !17
  %24 = load i32, i32* %7, align 4, !taffo.info !17
  %25 = mul nsw i32 %23, %24, !taffo.info !43
  %26 = zext i32 %25 to i64, !taffo.info !43
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %8, align 8
  %28 = alloca float, i64 %26, align 16, !taffo.target !19, !taffo.info !20
  store i64 %26, i64* %9, align 8
  %29 = bitcast float* %28 to i8*, !taffo.target !19, !taffo.info !20
  %30 = load i32, i32* %7, align 4, !taffo.info !17
  %31 = zext i32 %30 to i64, !taffo.info !17
  %32 = alloca float, i64 %31, align 16, !taffo.target !22, !taffo.info !20
  store i64 %31, i64* %10, align 8
  %33 = bitcast float* %32 to i8*, !taffo.target !22, !taffo.info !20
  %34 = load i32, i32* %7, align 4, !taffo.info !17
  %35 = zext i32 %34 to i64, !taffo.info !17
  %36 = alloca float, i64 %35, align 16, !taffo.target !50, !taffo.info !20
  store i64 %35, i64* %11, align 8
  %37 = bitcast float* %36 to i8*, !taffo.target !50, !taffo.info !20
  %38 = load i32, i32* %7, align 4, !taffo.info !17
  %39 = zext i32 %38 to i64, !taffo.info !17
  %40 = alloca float, i64 %39, align 16, !taffo.target !50, !taffo.info !20
  store i64 %39, i64* %12, align 8
  %41 = bitcast float* %40 to i8*, !taffo.target !50, !taffo.info !20
  %42 = bitcast i32* %13 to i8*, !taffo.info !24
  %43 = bitcast i32* %14 to i8*, !taffo.info !24
  %44 = bitcast float* %15 to i8*, !taffo.info !26
  store float 1.600000e+01, float* %15, align 4, !taffo.info !26
  %45 = bitcast float* %16 to i8*, !taffo.info !26
  store float 1.600000e+01, float* %16, align 4, !taffo.info !26
  %46 = bitcast float* %17 to i8*, !taffo.info !26
  store float 5.000000e+00, float* %17, align 4, !taffo.info !26
  %47 = bitcast float* %18 to i8*, !taffo.info !26
  store float 0.000000e+00, float* %18, align 4, !taffo.info !26
  %48 = bitcast float* %19 to i8*, !taffo.info !26
  store float 1.000000e+00, float* %19, align 4, !taffo.info !26
  %49 = bitcast float* %20 to i8*, !taffo.info !20
  %50 = bitcast float* %21 to i8*, !taffo.info !20
  store i32 0, i32* %13, align 4, !taffo.info !26
  br label %51

; <label>:51:                                     ; preds = %65, %2
  %52 = load i32, i32* %13, align 4, !taffo.info !27
  %53 = icmp slt i32 %52, 16, !taffo.info !29
  br i1 %53, label %54, label %68, !taffo.info !26

; <label>:54:                                     ; preds = %51
  %55 = load float, float* %19, align 4, !taffo.info !48
  %56 = load i32, i32* %13, align 4, !taffo.info !24
  %57 = sitofp i32 %56 to float, !taffo.info !24
  %58 = load float, float* %15, align 4, !taffo.info !45
  %59 = fdiv float %57, %58, !taffo.info !29
  %60 = fadd float %55, %59, !taffo.info !51
  store float %60, float* %20, align 4, !taffo.info !26
  %61 = load float, float* %20, align 4, !taffo.info !20
  %62 = load i32, i32* %13, align 4, !taffo.info !24
  %63 = sext i32 %62 to i64, !taffo.info !24
  %64 = getelementptr inbounds float, float* %32, i64 %63, !taffo.target !22, !taffo.info !20
  store float %61, float* %64, align 4, !taffo.target !22, !taffo.info !26
  br label %65

; <label>:65:                                     ; preds = %54
  %66 = load i32, i32* %13, align 4, !taffo.info !24
  %67 = add nsw i32 %66, 1, !taffo.info !35
  store i32 %67, i32* %13, align 4, !taffo.info !26
  br label %51

; <label>:68:                                     ; preds = %51
  store i32 0, i32* %13, align 4, !taffo.info !26
  br label %69

; <label>:69:                                     ; preds = %101, %68
  %70 = load i32, i32* %13, align 4, !taffo.info !27
  %71 = icmp slt i32 %70, 16, !taffo.info !29
  br i1 %71, label %72, label %104, !taffo.info !26

; <label>:72:                                     ; preds = %69
  store i32 0, i32* %14, align 4, !taffo.info !26
  br label %73

; <label>:73:                                     ; preds = %97, %72
  %74 = load i32, i32* %14, align 4, !taffo.info !27
  %75 = load i32, i32* %7, align 4, !taffo.info !17
  %76 = icmp slt i32 %74, %75, !taffo.info !29
  br i1 %76, label %77, label %100, !taffo.info !26

; <label>:77:                                     ; preds = %73
  %78 = load i32, i32* %13, align 4, !taffo.info !24
  %79 = load i32, i32* %14, align 4, !taffo.info !24
  %80 = add nsw i32 %78, %79, !taffo.info !53
  %81 = load i32, i32* %7, align 4, !taffo.info !17
  %82 = srem i32 %80, %81, !taffo.info !24
  %83 = sitofp i32 %82 to float, !taffo.info !24
  %84 = load float, float* %17, align 4, !taffo.info !46
  %85 = load i32, i32* %6, align 4, !taffo.info !17
  %86 = sitofp i32 %85 to float, !taffo.info !17
  %87 = fmul float %84, %86, !taffo.info !55
  %88 = fdiv float %83, %87, !taffo.info !57
  store float %88, float* %21, align 4, !taffo.info !26
  %89 = load float, float* %21, align 4, !taffo.info !20
  %90 = load i32, i32* %13, align 4, !taffo.info !24
  %91 = load i32, i32* %7, align 4, !taffo.info !17
  %92 = mul nsw i32 %90, %91, !taffo.info !31
  %93 = load i32, i32* %14, align 4, !taffo.info !24
  %94 = add nsw i32 %92, %93, !taffo.info !33
  %95 = sext i32 %94 to i64, !taffo.info !33
  %96 = getelementptr inbounds float, float* %28, i64 %95, !taffo.target !19, !taffo.info !20
  store float %89, float* %96, align 4, !taffo.target !19, !taffo.info !26
  br label %97

; <label>:97:                                     ; preds = %77
  %98 = load i32, i32* %14, align 4, !taffo.info !24
  %99 = add nsw i32 %98, 1, !taffo.info !35
  store i32 %99, i32* %14, align 4, !taffo.info !26
  br label %73

; <label>:100:                                    ; preds = %73
  br label %101

; <label>:101:                                    ; preds = %100
  %102 = load i32, i32* %13, align 4, !taffo.info !24
  %103 = add nsw i32 %102, 1, !taffo.info !35
  store i32 %103, i32* %13, align 4, !taffo.info !26
  br label %69

; <label>:104:                                    ; preds = %69
  store i32 0, i32* %13, align 4, !taffo.info !26
  br label %105

; <label>:105:                                    ; preds = %117, %104
  %106 = load i32, i32* %13, align 4, !taffo.info !27
  %107 = icmp slt i32 %106, 16, !taffo.info !29
  br i1 %107, label %108, label %120, !taffo.info !26

; <label>:108:                                    ; preds = %105
  %109 = load float, float* %18, align 4, !taffo.info !23
  %110 = load i32, i32* %13, align 4, !taffo.info !24
  %111 = sext i32 %110 to i64, !taffo.info !24
  %112 = getelementptr inbounds float, float* %36, i64 %111, !taffo.target !50, !taffo.info !59
  store float %109, float* %112, align 4, !taffo.target !50, !taffo.info !26
  %113 = load float, float* %18, align 4, !taffo.info !23
  %114 = load i32, i32* %13, align 4, !taffo.info !24
  %115 = sext i32 %114 to i64, !taffo.info !24
  %116 = getelementptr inbounds float, float* %40, i64 %115, !taffo.target !50, !taffo.info !59
  store float %113, float* %116, align 4, !taffo.target !50, !taffo.info !26
  br label %117

; <label>:117:                                    ; preds = %108
  %118 = load i32, i32* %13, align 4, !taffo.info !24
  %119 = add nsw i32 %118, 1, !taffo.info !35
  store i32 %119, i32* %13, align 4, !taffo.info !26
  br label %105

; <label>:120:                                    ; preds = %105
  %121 = bitcast float* %22 to i8*, !taffo.info !20
  store i32 0, i32* %13, align 4, !taffo.info !26
  br label %122

; <label>:122:                                    ; preds = %174, %120
  %123 = load i32, i32* %13, align 4, !taffo.info !27
  %124 = icmp slt i32 %123, 16, !taffo.info !29
  br i1 %124, label %125, label %177, !taffo.info !26

; <label>:125:                                    ; preds = %122
  %126 = load float, float* %18, align 4, !taffo.info !23
  store float %126, float* %22, align 4, !taffo.info !26
  store i32 0, i32* %14, align 4, !taffo.info !26
  br label %127

; <label>:127:                                    ; preds = %145, %125
  %128 = load i32, i32* %14, align 4, !taffo.info !27
  %129 = icmp slt i32 %128, 16, !taffo.info !29
  br i1 %129, label %130, label %148, !taffo.info !26

; <label>:130:                                    ; preds = %127
  %131 = load float, float* %22, align 4, !taffo.info !20
  %132 = load i32, i32* %13, align 4, !taffo.info !24
  %133 = mul nsw i32 %132, 16, !taffo.info !31
  %134 = load i32, i32* %14, align 4, !taffo.info !24
  %135 = add nsw i32 %133, %134, !taffo.info !33
  %136 = sext i32 %135 to i64, !taffo.info !33
  %137 = getelementptr inbounds float, float* %28, i64 %136, !taffo.target !19, !taffo.info !20
  %138 = load float, float* %137, align 4, !taffo.target !19, !taffo.info !20
  %139 = load i32, i32* %14, align 4, !taffo.info !24
  %140 = sext i32 %139 to i64, !taffo.info !24
  %141 = getelementptr inbounds float, float* %32, i64 %140, !taffo.target !22, !taffo.info !20
  %142 = load float, float* %141, align 4, !taffo.target !22, !taffo.info !20
  %143 = fmul float %138, %142, !taffo.target !19, !taffo.info !59
  %144 = fadd float %131, %143, !taffo.info !61
  store float %144, float* %22, align 4, !taffo.info !26
  br label %145

; <label>:145:                                    ; preds = %130
  %146 = load i32, i32* %14, align 4, !taffo.info !24
  %147 = add nsw i32 %146, 1, !taffo.info !35
  store i32 %147, i32* %14, align 4, !taffo.info !26
  br label %127

; <label>:148:                                    ; preds = %127
  store i32 0, i32* %14, align 4, !taffo.info !26
  br label %149

; <label>:149:                                    ; preds = %170, %148
  %150 = load i32, i32* %14, align 4, !taffo.info !27
  %151 = icmp slt i32 %150, 16, !taffo.info !29
  br i1 %151, label %152, label %173, !taffo.info !26

; <label>:152:                                    ; preds = %149
  %153 = load i32, i32* %14, align 4, !taffo.info !24
  %154 = sext i32 %153 to i64, !taffo.info !24
  %155 = getelementptr inbounds float, float* %40, i64 %154, !taffo.target !50, !taffo.info !59
  %156 = load float, float* %155, align 4, !taffo.target !50, !taffo.info !59
  %157 = load i32, i32* %13, align 4, !taffo.info !24
  %158 = mul nsw i32 %157, 16, !taffo.info !31
  %159 = load i32, i32* %14, align 4, !taffo.info !24
  %160 = add nsw i32 %158, %159, !taffo.info !33
  %161 = sext i32 %160 to i64, !taffo.info !33
  %162 = getelementptr inbounds float, float* %28, i64 %161, !taffo.target !19, !taffo.info !20
  %163 = load float, float* %162, align 4, !taffo.target !19, !taffo.info !20
  %164 = load float, float* %22, align 4, !taffo.info !20
  %165 = fmul float %163, %164, !taffo.info !59
  %166 = fadd float %156, %165, !taffo.target !50, !taffo.info !59
  %167 = load i32, i32* %14, align 4, !taffo.info !24
  %168 = sext i32 %167 to i64, !taffo.info !24
  %169 = getelementptr inbounds float, float* %40, i64 %168, !taffo.target !50, !taffo.info !59
  store float %166, float* %169, align 4, !taffo.target !50, !taffo.info !26
  br label %170

; <label>:170:                                    ; preds = %152
  %171 = load i32, i32* %14, align 4, !taffo.info !24
  %172 = add nsw i32 %171, 1, !taffo.info !35
  store i32 %172, i32* %14, align 4, !taffo.info !26
  br label %149

; <label>:173:                                    ; preds = %149
  br label %174

; <label>:174:                                    ; preds = %173
  %175 = load i32, i32* %13, align 4, !taffo.info !24
  %176 = add nsw i32 %175, 1, !taffo.info !35
  store i32 %176, i32* %13, align 4, !taffo.info !26
  br label %122

; <label>:177:                                    ; preds = %122
  call void @atax.1(float* %28, float* %32, float* %36), !taffo.target !19, !taffo.info !26, !taffo.originalCall !63
  store i32 0, i32* %13, align 4, !taffo.info !26
  br label %178

; <label>:178:                                    ; preds = %194, %177
  %179 = load i32, i32* %13, align 4, !taffo.info !27
  %180 = icmp slt i32 %179, 16, !taffo.info !29
  br i1 %180, label %181, label %197, !taffo.info !26

; <label>:181:                                    ; preds = %178
  %182 = load i32, i32* %13, align 4, !taffo.info !24
  %183 = sext i32 %182 to i64, !taffo.info !24
  %184 = getelementptr inbounds float, float* %36, i64 %183, !taffo.target !50, !taffo.info !59
  %185 = load float, float* %184, align 4, !taffo.target !50, !taffo.info !59
  %186 = fpext float %185 to double, !taffo.target !50, !taffo.info !59
  %187 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), double %186), !taffo.target !50, !taffo.info !26
  %188 = load i32, i32* %13, align 4, !taffo.info !24
  %189 = sext i32 %188 to i64, !taffo.info !24
  %190 = getelementptr inbounds float, float* %40, i64 %189, !taffo.target !50, !taffo.info !59
  %191 = load float, float* %190, align 4, !taffo.target !50, !taffo.info !59
  %192 = fpext float %191 to double, !taffo.target !50, !taffo.info !59
  %193 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), double %192), !taffo.target !50, !taffo.info !26
  br label %194

; <label>:194:                                    ; preds = %181
  %195 = load i32, i32* %13, align 4, !taffo.info !24
  %196 = add nsw i32 %195, 1, !taffo.info !35
  store i32 %196, i32* %13, align 4, !taffo.info !26
  br label %178

; <label>:197:                                    ; preds = %178
  store i32 0, i32* %3, align 4
  %198 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %198)
  %199 = load i32, i32* %3, align 4, !taffo.info !15
  ret i32 %199, !taffo.info !15
}

; Function Attrs: nounwind
declare !taffo.funinfo !64 i8* @llvm.stacksave() #1

declare !taffo.funinfo !65 dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare !taffo.funinfo !65 void @llvm.stackrestore(i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @atax.1(float*, float*, float*) #0 !taffo.start !12 !taffo.funinfo !66 !taffo.sourceFunction !63 {
  %4 = alloca float*, align 8, !taffo.info !20
  %5 = alloca float*, align 8, !taffo.info !20
  %6 = alloca float*, align 8, !taffo.info !20
  %7 = alloca i32, align 4, !taffo.info !17
  %8 = alloca i32, align 4, !taffo.info !17
  %9 = alloca float*, align 8, !taffo.target !19, !taffo.info !20
  %10 = alloca float*, align 8, !taffo.target !22, !taffo.info !20
  %11 = alloca float, align 4, !taffo.info !20
  %12 = alloca float, align 4, !taffo.info !23
  %13 = alloca i32, align 4, !taffo.info !24
  %14 = alloca i32, align 4, !taffo.info !24
  store float* %0, float** %4, align 8, !taffo.info !26
  store float* %1, float** %5, align 8, !taffo.info !26
  store float* %2, float** %6, align 8, !taffo.info !26
  store i32 16, i32* %7, align 4
  store i32 16, i32* %8, align 4
  %15 = bitcast float** %9 to i8*, !taffo.target !19, !taffo.info !20
  %16 = load float*, float** %4, align 8, !taffo.info !20
  store float* %16, float** %9, align 8, !taffo.target !19, !taffo.info !26
  %17 = bitcast float** %10 to i8*, !taffo.target !22, !taffo.info !20
  %18 = load float*, float** %5, align 8, !taffo.info !20
  store float* %18, float** %10, align 8, !taffo.target !22, !taffo.info !26
  %19 = bitcast float* %11 to i8*, !taffo.info !20
  %20 = bitcast float* %12 to i8*, !taffo.info !26
  store float 0.000000e+00, float* %12, align 4, !taffo.info !26
  %21 = bitcast i32* %13 to i8*, !taffo.info !24
  %22 = bitcast i32* %14 to i8*, !taffo.info !24
  store i32 0, i32* %13, align 4, !taffo.info !26
  br label %23

; <label>:23:                                     ; preds = %80, %3
  %24 = load i32, i32* %13, align 4, !taffo.info !27
  %25 = icmp slt i32 %24, 16, !taffo.info !29
  br i1 %25, label %26, label %83, !taffo.info !26

; <label>:26:                                     ; preds = %23
  %27 = load float, float* %12, align 4, !taffo.info !23
  store float %27, float* %11, align 4, !taffo.info !26
  store i32 0, i32* %14, align 4, !taffo.info !26
  br label %28

; <label>:28:                                     ; preds = %48, %26
  %29 = load i32, i32* %14, align 4, !taffo.info !27
  %30 = icmp slt i32 %29, 16, !taffo.info !29
  br i1 %30, label %31, label %51, !taffo.info !26

; <label>:31:                                     ; preds = %28
  %32 = load float, float* %11, align 4, !taffo.info !20
  %33 = load float*, float** %9, align 8, !taffo.target !19, !taffo.info !20
  %34 = load i32, i32* %13, align 4, !taffo.info !24
  %35 = mul nsw i32 %34, 16, !taffo.info !31
  %36 = load i32, i32* %14, align 4, !taffo.info !24
  %37 = add nsw i32 %35, %36, !taffo.info !33
  %38 = sext i32 %37 to i64, !taffo.info !33
  %39 = getelementptr inbounds float, float* %33, i64 %38, !taffo.target !19, !taffo.info !20
  %40 = load float, float* %39, align 4, !taffo.target !19, !taffo.info !20
  %41 = load float*, float** %10, align 8, !taffo.target !22, !taffo.info !20
  %42 = load i32, i32* %14, align 4, !taffo.info !24
  %43 = sext i32 %42 to i64, !taffo.info !24
  %44 = getelementptr inbounds float, float* %41, i64 %43, !taffo.target !22, !taffo.info !20
  %45 = load float, float* %44, align 4, !taffo.target !22, !taffo.info !20
  %46 = fmul float %40, %45, !taffo.target !19, !taffo.info !59
  %47 = fadd float %32, %46, !taffo.info !61
  store float %47, float* %11, align 4, !taffo.info !26
  br label %48

; <label>:48:                                     ; preds = %31
  %49 = load i32, i32* %14, align 4, !taffo.info !24
  %50 = add nsw i32 %49, 1, !taffo.info !35
  store i32 %50, i32* %14, align 4, !taffo.info !26
  br label %28

; <label>:51:                                     ; preds = %28
  store i32 0, i32* %14, align 4, !taffo.info !26
  br label %52

; <label>:52:                                     ; preds = %76, %51
  %53 = load i32, i32* %14, align 4, !taffo.info !27
  %54 = icmp slt i32 %53, 16, !taffo.info !29
  br i1 %54, label %55, label %79, !taffo.info !26

; <label>:55:                                     ; preds = %52
  %56 = load float*, float** %6, align 8, !taffo.info !59
  %57 = load i32, i32* %14, align 4, !taffo.info !24
  %58 = sext i32 %57 to i64, !taffo.info !24
  %59 = getelementptr inbounds float, float* %56, i64 %58, !taffo.info !59
  %60 = load float, float* %59, align 4, !taffo.info !59
  %61 = load float*, float** %9, align 8, !taffo.target !19, !taffo.info !20
  %62 = load i32, i32* %13, align 4, !taffo.info !27
  %63 = mul nsw i32 %62, 16, !taffo.info !33
  %64 = load i32, i32* %14, align 4, !taffo.info !24
  %65 = add nsw i32 %63, %64, !taffo.info !37
  %66 = sext i32 %65 to i64, !taffo.info !37
  %67 = getelementptr inbounds float, float* %61, i64 %66, !taffo.target !19, !taffo.info !20
  %68 = load float, float* %67, align 4, !taffo.target !19, !taffo.info !20
  %69 = load float, float* %11, align 4, !taffo.info !20
  %70 = fmul float %68, %69, !taffo.info !59
  %71 = fadd float %60, %70, !taffo.info !59
  %72 = load float*, float** %6, align 8, !taffo.info !59
  %73 = load i32, i32* %14, align 4, !taffo.info !24
  %74 = sext i32 %73 to i64, !taffo.info !24
  %75 = getelementptr inbounds float, float* %72, i64 %74, !taffo.info !59
  store float %71, float* %75, align 4, !taffo.info !26
  br label %76

; <label>:76:                                     ; preds = %55
  %77 = load i32, i32* %14, align 4, !taffo.info !24
  %78 = add nsw i32 %77, 1, !taffo.info !35
  store i32 %78, i32* %14, align 4, !taffo.info !26
  br label %52

; <label>:79:                                     ; preds = %52
  br label %80

; <label>:80:                                     ; preds = %79
  %81 = load i32, i32* %13, align 4, !taffo.info !24
  %82 = add nsw i32 %81, 1, !taffo.info !35
  store i32 %82, i32* %13, align 4, !taffo.info !26
  br label %23

; <label>:83:                                     ; preds = %23
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
!19 = !{!"A"}
!20 = !{i1 false, !21, i1 false, i1 true}
!21 = !{double -4.096000e+03, double 4.096000e+03}
!22 = !{!"x"}
!23 = !{i1 false, !16, i1 false, i1 true}
!24 = !{i1 false, !25, i1 false, i1 true}
!25 = !{double 0.000000e+00, double 1.600000e+01}
!26 = !{i1 false, i1 false, i1 false, i1 true}
!27 = !{i1 false, !28, i1 false, i1 true}
!28 = !{double 0.000000e+00, double 1.700000e+01}
!29 = !{i1 false, !30, i1 false, i1 true}
!30 = !{double 0.000000e+00, double 1.000000e+00}
!31 = !{i1 false, !32, i1 false, i1 true}
!32 = !{double 0.000000e+00, double 2.560000e+02}
!33 = !{i1 false, !34, i1 false, i1 true}
!34 = !{double 0.000000e+00, double 2.720000e+02}
!35 = !{i1 false, !36, i1 false, i1 true}
!36 = !{double 1.000000e+00, double 1.700000e+01}
!37 = !{i1 false, !38, i1 false, i1 true}
!38 = !{double 0.000000e+00, double 2.880000e+02}
!39 = !{i1 false, !40, i1 false, i1 true}
!40 = !{double -0.000000e+00, double -0.000000e+00}
!41 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!42 = !{i32 0, i1 false, i32 0, i1 false}
!43 = !{i1 false, !44, i1 false, i1 false}
!44 = !{double 2.560000e+02, double 2.560000e+02}
!45 = !{i1 false, !18, i1 false, i1 true}
!46 = !{i1 false, !47, i1 false, i1 true}
!47 = !{double 5.000000e+00, double 5.000000e+00}
!48 = !{i1 false, !49, i1 false, i1 true}
!49 = !{double 1.000000e+00, double 1.000000e+00}
!50 = !{!"y"}
!51 = !{i1 false, !52, i1 false, i1 true}
!52 = !{double 1.000000e+00, double 2.000000e+00}
!53 = !{i1 false, !54, i1 false, i1 true}
!54 = !{double 0.000000e+00, double 3.200000e+01}
!55 = !{i1 false, !56, i1 false, i1 true}
!56 = !{double 8.000000e+01, double 8.000000e+01}
!57 = !{i1 false, !58, i1 false, i1 true}
!58 = !{double 0.000000e+00, double 2.000000e-01}
!59 = !{i1 false, !60, i1 false, i1 true}
!60 = !{double 0xC170000000000000, double 0x4170000000000000}
!61 = !{i1 false, !62, i1 false, i1 true}
!62 = !{double 0xC170010000000000, double 0x4170010000000000}
!63 = !{void (float*, float*, float*)* @atax}
!64 = !{}
!65 = !{i32 0, i1 false}
!66 = !{i32 1, !20, i32 1, !20, i32 1, !59}
