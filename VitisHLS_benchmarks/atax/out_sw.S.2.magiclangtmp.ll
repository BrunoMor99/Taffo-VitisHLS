; ModuleID = 'out_sw.S.1.magiclangtmp.ll'
source_filename = "atax_taffo.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [39 x i8] c"target('A') scalar(range(-4096, 4096))\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [13 x i8] c"atax_taffo.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [39 x i8] c"target('x') scalar(range(-4096, 4096))\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [27 x i8] c"scalar(range(-4096, 4096))\00", section "llvm.metadata"
@.str.4 = private unnamed_addr constant [9 x i8] c"scalar()\00", section "llvm.metadata"
@.str.5 = private unnamed_addr constant [21 x i8] c"scalar(range(0, 16))\00", section "llvm.metadata"
@.str.6 = private unnamed_addr constant [39 x i8] c"target('y') scalar(range(-4096, 4096))\00", section "llvm.metadata"
@.str.7 = private unnamed_addr constant [5 x i8] c"%f \0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @atax(float*, float*, float*) #0 !taffo.start !2 !taffo.equivalentChild !3 !taffo.funinfo !4 {
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float*, align 8, !taffo.target !5, !taffo.info !6
  %10 = alloca float*, align 8, !taffo.target !8, !taffo.info !6
  %11 = alloca float, align 4, !taffo.info !6
  %12 = alloca float, align 4, !taffo.info !9
  %13 = alloca i32, align 4, !taffo.info !10
  %14 = alloca i32, align 4, !taffo.info !10
  store float* %0, float** %4, align 8
  store float* %1, float** %5, align 8
  store float* %2, float** %6, align 8
  store i32 16, i32* %7, align 4
  store i32 16, i32* %8, align 4
  %15 = bitcast float** %9 to i8*, !taffo.target !5, !taffo.info !9
  %16 = load float*, float** %4, align 8
  store float* %16, float** %9, align 8, !taffo.target !5, !taffo.info !9
  %17 = bitcast float** %10 to i8*, !taffo.target !8, !taffo.info !9
  %18 = load float*, float** %5, align 8
  store float* %18, float** %10, align 8, !taffo.target !8, !taffo.info !9
  %19 = bitcast float* %11 to i8*, !taffo.info !9
  %20 = bitcast float* %12 to i8*, !taffo.info !9
  store float 0.000000e+00, float* %12, align 4, !taffo.info !9
  %21 = bitcast i32* %13 to i8*, !taffo.info !9
  %22 = bitcast i32* %14 to i8*, !taffo.info !9
  store i32 0, i32* %13, align 4, !taffo.info !9
  br label %23

; <label>:23:                                     ; preds = %80, %3
  %24 = load i32, i32* %13, align 4, !taffo.info !9
  %25 = icmp slt i32 %24, 16, !taffo.info !9
  br i1 %25, label %26, label %83, !taffo.info !9

; <label>:26:                                     ; preds = %23
  %27 = load float, float* %12, align 4, !taffo.info !9
  store float %27, float* %11, align 4, !taffo.info !9
  store i32 0, i32* %14, align 4, !taffo.info !9
  br label %28

; <label>:28:                                     ; preds = %48, %26
  %29 = load i32, i32* %14, align 4, !taffo.info !9
  %30 = icmp slt i32 %29, 16, !taffo.info !9
  br i1 %30, label %31, label %51, !taffo.info !9

; <label>:31:                                     ; preds = %28
  %32 = load float, float* %11, align 4, !taffo.info !9
  %33 = load float*, float** %9, align 8, !taffo.target !5, !taffo.info !9
  %34 = load i32, i32* %13, align 4, !taffo.info !9
  %35 = mul nsw i32 %34, 16, !taffo.info !9
  %36 = load i32, i32* %14, align 4, !taffo.info !9
  %37 = add nsw i32 %35, %36, !taffo.info !9
  %38 = sext i32 %37 to i64, !taffo.info !9
  %39 = getelementptr inbounds float, float* %33, i64 %38, !taffo.target !5, !taffo.info !9
  %40 = load float, float* %39, align 4, !taffo.target !5, !taffo.info !9
  %41 = load float*, float** %10, align 8, !taffo.target !8, !taffo.info !9
  %42 = load i32, i32* %14, align 4, !taffo.info !9
  %43 = sext i32 %42 to i64, !taffo.info !9
  %44 = getelementptr inbounds float, float* %41, i64 %43, !taffo.target !8, !taffo.info !9
  %45 = load float, float* %44, align 4, !taffo.target !8, !taffo.info !9
  %46 = fmul float %40, %45, !taffo.target !5, !taffo.info !9
  %47 = fadd float %32, %46, !taffo.info !9
  store float %47, float* %11, align 4, !taffo.info !9
  br label %48

; <label>:48:                                     ; preds = %31
  %49 = load i32, i32* %14, align 4, !taffo.info !9
  %50 = add nsw i32 %49, 1, !taffo.info !9
  store i32 %50, i32* %14, align 4, !taffo.info !9
  br label %28

; <label>:51:                                     ; preds = %28
  store i32 0, i32* %14, align 4, !taffo.info !9
  br label %52

; <label>:52:                                     ; preds = %76, %51
  %53 = load i32, i32* %14, align 4, !taffo.info !9
  %54 = icmp slt i32 %53, 16, !taffo.info !9
  br i1 %54, label %55, label %79, !taffo.info !9

; <label>:55:                                     ; preds = %52
  %56 = load float*, float** %6, align 8
  %57 = load i32, i32* %14, align 4, !taffo.info !9
  %58 = sext i32 %57 to i64, !taffo.info !9
  %59 = getelementptr inbounds float, float* %56, i64 %58, !taffo.info !9
  %60 = load float, float* %59, align 4, !taffo.info !9
  %61 = load float*, float** %9, align 8, !taffo.target !5, !taffo.info !9
  %62 = load i32, i32* %13, align 4, !taffo.info !9
  %63 = mul nsw i32 %62, 16, !taffo.info !9
  %64 = load i32, i32* %14, align 4, !taffo.info !9
  %65 = add nsw i32 %63, %64, !taffo.info !9
  %66 = sext i32 %65 to i64, !taffo.info !9
  %67 = getelementptr inbounds float, float* %61, i64 %66, !taffo.target !5, !taffo.info !9
  %68 = load float, float* %67, align 4, !taffo.target !5, !taffo.info !9
  %69 = load float, float* %11, align 4, !taffo.info !9
  %70 = fmul float %68, %69, !taffo.info !9
  %71 = fadd float %60, %70, !taffo.info !9
  %72 = load float*, float** %6, align 8
  %73 = load i32, i32* %14, align 4, !taffo.info !9
  %74 = sext i32 %73 to i64, !taffo.info !9
  %75 = getelementptr inbounds float, float* %72, i64 %74, !taffo.info !9
  store float %71, float* %75, align 4, !taffo.info !9
  br label %76

; <label>:76:                                     ; preds = %55
  %77 = load i32, i32* %14, align 4, !taffo.info !9
  %78 = add nsw i32 %77, 1, !taffo.info !9
  store i32 %78, i32* %14, align 4, !taffo.info !9
  br label %52

; <label>:79:                                     ; preds = %52
  br label %80

; <label>:80:                                     ; preds = %79
  %81 = load i32, i32* %13, align 4, !taffo.info !9
  %82 = add nsw i32 %81, 1, !taffo.info !9
  store i32 %82, i32* %13, align 4, !taffo.info !9
  br label %23

; <label>:83:                                     ; preds = %23
  ret void
}

; Function Attrs: nounwind
declare !taffo.funinfo !12 void @llvm.var.annotation(i8*, i8*, i8*, i32) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32, i8**) #0 !taffo.start !2 !taffo.funinfo !13 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4, !taffo.info !10
  %14 = alloca i32, align 4, !taffo.info !10
  %15 = alloca float, align 4, !taffo.info !9
  %16 = alloca float, align 4, !taffo.info !9
  %17 = alloca float, align 4, !taffo.info !9
  %18 = alloca float, align 4, !taffo.info !9
  %19 = alloca float, align 4, !taffo.info !9
  %20 = alloca float, align 4, !taffo.info !6
  %21 = alloca float, align 4, !taffo.info !6
  %22 = alloca float, align 4, !taffo.info !6
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 16, i32* %6, align 4
  store i32 16, i32* %7, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = mul nsw i32 %23, %24
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %8, align 8
  %28 = alloca float, i64 %26, align 16, !taffo.target !5, !taffo.info !6
  store i64 %26, i64* %9, align 8
  %29 = bitcast float* %28 to i8*, !taffo.target !5, !taffo.info !9
  %30 = load i32, i32* %7, align 4
  %31 = zext i32 %30 to i64
  %32 = alloca float, i64 %31, align 16, !taffo.target !8, !taffo.info !6
  store i64 %31, i64* %10, align 8
  %33 = bitcast float* %32 to i8*, !taffo.target !8, !taffo.info !9
  %34 = load i32, i32* %7, align 4
  %35 = zext i32 %34 to i64
  %36 = alloca float, i64 %35, align 16, !taffo.target !14, !taffo.info !6
  store i64 %35, i64* %11, align 8
  %37 = bitcast float* %36 to i8*, !taffo.target !14, !taffo.info !9
  %38 = load i32, i32* %7, align 4
  %39 = zext i32 %38 to i64
  %40 = alloca float, i64 %39, align 16, !taffo.target !14, !taffo.info !6
  store i64 %39, i64* %12, align 8
  %41 = bitcast float* %40 to i8*, !taffo.target !14, !taffo.info !9
  %42 = bitcast i32* %13 to i8*, !taffo.info !9
  %43 = bitcast i32* %14 to i8*, !taffo.info !9
  %44 = bitcast float* %15 to i8*, !taffo.info !9
  store float 1.600000e+01, float* %15, align 4, !taffo.info !9
  %45 = bitcast float* %16 to i8*, !taffo.info !9
  store float 1.600000e+01, float* %16, align 4, !taffo.info !9
  %46 = bitcast float* %17 to i8*, !taffo.info !9
  store float 5.000000e+00, float* %17, align 4, !taffo.info !9
  %47 = bitcast float* %18 to i8*, !taffo.info !9
  store float 0.000000e+00, float* %18, align 4, !taffo.info !9
  %48 = bitcast float* %19 to i8*, !taffo.info !9
  store float 1.000000e+00, float* %19, align 4, !taffo.info !9
  %49 = bitcast float* %20 to i8*, !taffo.info !9
  %50 = bitcast float* %21 to i8*, !taffo.info !9
  store i32 0, i32* %13, align 4, !taffo.info !9
  br label %51

; <label>:51:                                     ; preds = %65, %2
  %52 = load i32, i32* %13, align 4, !taffo.info !9
  %53 = icmp slt i32 %52, 16, !taffo.info !9
  br i1 %53, label %54, label %68, !taffo.info !9

; <label>:54:                                     ; preds = %51
  %55 = load float, float* %19, align 4, !taffo.info !9
  %56 = load i32, i32* %13, align 4, !taffo.info !9
  %57 = sitofp i32 %56 to float, !taffo.info !9
  %58 = load float, float* %15, align 4, !taffo.info !9
  %59 = fdiv float %57, %58, !taffo.info !9
  %60 = fadd float %55, %59, !taffo.info !9
  store float %60, float* %20, align 4, !taffo.info !9
  %61 = load float, float* %20, align 4, !taffo.info !9
  %62 = load i32, i32* %13, align 4, !taffo.info !9
  %63 = sext i32 %62 to i64, !taffo.info !9
  %64 = getelementptr inbounds float, float* %32, i64 %63, !taffo.target !8, !taffo.info !9
  store float %61, float* %64, align 4, !taffo.target !8, !taffo.info !9
  br label %65

; <label>:65:                                     ; preds = %54
  %66 = load i32, i32* %13, align 4, !taffo.info !9
  %67 = add nsw i32 %66, 1, !taffo.info !9
  store i32 %67, i32* %13, align 4, !taffo.info !9
  br label %51

; <label>:68:                                     ; preds = %51
  store i32 0, i32* %13, align 4, !taffo.info !9
  br label %69

; <label>:69:                                     ; preds = %101, %68
  %70 = load i32, i32* %13, align 4, !taffo.info !9
  %71 = icmp slt i32 %70, 16, !taffo.info !9
  br i1 %71, label %72, label %104, !taffo.info !9

; <label>:72:                                     ; preds = %69
  store i32 0, i32* %14, align 4, !taffo.info !9
  br label %73

; <label>:73:                                     ; preds = %97, %72
  %74 = load i32, i32* %14, align 4, !taffo.info !9
  %75 = load i32, i32* %7, align 4
  %76 = icmp slt i32 %74, %75, !taffo.info !9
  br i1 %76, label %77, label %100, !taffo.info !9

; <label>:77:                                     ; preds = %73
  %78 = load i32, i32* %13, align 4, !taffo.info !9
  %79 = load i32, i32* %14, align 4, !taffo.info !9
  %80 = add nsw i32 %78, %79, !taffo.info !9
  %81 = load i32, i32* %7, align 4
  %82 = srem i32 %80, %81, !taffo.info !9
  %83 = sitofp i32 %82 to float, !taffo.info !9
  %84 = load float, float* %17, align 4, !taffo.info !9
  %85 = load i32, i32* %6, align 4
  %86 = sitofp i32 %85 to float
  %87 = fmul float %84, %86, !taffo.info !9
  %88 = fdiv float %83, %87, !taffo.info !9
  store float %88, float* %21, align 4, !taffo.info !9
  %89 = load float, float* %21, align 4, !taffo.info !9
  %90 = load i32, i32* %13, align 4, !taffo.info !9
  %91 = load i32, i32* %7, align 4
  %92 = mul nsw i32 %90, %91, !taffo.info !9
  %93 = load i32, i32* %14, align 4, !taffo.info !9
  %94 = add nsw i32 %92, %93, !taffo.info !9
  %95 = sext i32 %94 to i64, !taffo.info !9
  %96 = getelementptr inbounds float, float* %28, i64 %95, !taffo.target !5, !taffo.info !9
  store float %89, float* %96, align 4, !taffo.target !5, !taffo.info !9
  br label %97

; <label>:97:                                     ; preds = %77
  %98 = load i32, i32* %14, align 4, !taffo.info !9
  %99 = add nsw i32 %98, 1, !taffo.info !9
  store i32 %99, i32* %14, align 4, !taffo.info !9
  br label %73

; <label>:100:                                    ; preds = %73
  br label %101

; <label>:101:                                    ; preds = %100
  %102 = load i32, i32* %13, align 4, !taffo.info !9
  %103 = add nsw i32 %102, 1, !taffo.info !9
  store i32 %103, i32* %13, align 4, !taffo.info !9
  br label %69

; <label>:104:                                    ; preds = %69
  store i32 0, i32* %13, align 4, !taffo.info !9
  br label %105

; <label>:105:                                    ; preds = %117, %104
  %106 = load i32, i32* %13, align 4, !taffo.info !9
  %107 = icmp slt i32 %106, 16, !taffo.info !9
  br i1 %107, label %108, label %120, !taffo.info !9

; <label>:108:                                    ; preds = %105
  %109 = load float, float* %18, align 4, !taffo.info !9
  %110 = load i32, i32* %13, align 4, !taffo.info !9
  %111 = sext i32 %110 to i64, !taffo.info !9
  %112 = getelementptr inbounds float, float* %36, i64 %111, !taffo.target !14, !taffo.info !9
  store float %109, float* %112, align 4, !taffo.target !14, !taffo.info !9
  %113 = load float, float* %18, align 4, !taffo.info !9
  %114 = load i32, i32* %13, align 4, !taffo.info !9
  %115 = sext i32 %114 to i64, !taffo.info !9
  %116 = getelementptr inbounds float, float* %40, i64 %115, !taffo.target !14, !taffo.info !9
  store float %113, float* %116, align 4, !taffo.target !14, !taffo.info !9
  br label %117

; <label>:117:                                    ; preds = %108
  %118 = load i32, i32* %13, align 4, !taffo.info !9
  %119 = add nsw i32 %118, 1, !taffo.info !9
  store i32 %119, i32* %13, align 4, !taffo.info !9
  br label %105

; <label>:120:                                    ; preds = %105
  %121 = bitcast float* %22 to i8*, !taffo.info !9
  store i32 0, i32* %13, align 4, !taffo.info !9
  br label %122

; <label>:122:                                    ; preds = %174, %120
  %123 = load i32, i32* %13, align 4, !taffo.info !9
  %124 = icmp slt i32 %123, 16, !taffo.info !9
  br i1 %124, label %125, label %177, !taffo.info !9

; <label>:125:                                    ; preds = %122
  %126 = load float, float* %18, align 4, !taffo.info !9
  store float %126, float* %22, align 4, !taffo.info !9
  store i32 0, i32* %14, align 4, !taffo.info !9
  br label %127

; <label>:127:                                    ; preds = %145, %125
  %128 = load i32, i32* %14, align 4, !taffo.info !9
  %129 = icmp slt i32 %128, 16, !taffo.info !9
  br i1 %129, label %130, label %148, !taffo.info !9

; <label>:130:                                    ; preds = %127
  %131 = load float, float* %22, align 4, !taffo.info !9
  %132 = load i32, i32* %13, align 4, !taffo.info !9
  %133 = mul nsw i32 %132, 16, !taffo.info !9
  %134 = load i32, i32* %14, align 4, !taffo.info !9
  %135 = add nsw i32 %133, %134, !taffo.info !9
  %136 = sext i32 %135 to i64, !taffo.info !9
  %137 = getelementptr inbounds float, float* %28, i64 %136, !taffo.target !5, !taffo.info !9
  %138 = load float, float* %137, align 4, !taffo.target !5, !taffo.info !9
  %139 = load i32, i32* %14, align 4, !taffo.info !9
  %140 = sext i32 %139 to i64, !taffo.info !9
  %141 = getelementptr inbounds float, float* %32, i64 %140, !taffo.target !8, !taffo.info !9
  %142 = load float, float* %141, align 4, !taffo.target !8, !taffo.info !9
  %143 = fmul float %138, %142, !taffo.target !5, !taffo.info !9
  %144 = fadd float %131, %143, !taffo.info !9
  store float %144, float* %22, align 4, !taffo.info !9
  br label %145

; <label>:145:                                    ; preds = %130
  %146 = load i32, i32* %14, align 4, !taffo.info !9
  %147 = add nsw i32 %146, 1, !taffo.info !9
  store i32 %147, i32* %14, align 4, !taffo.info !9
  br label %127

; <label>:148:                                    ; preds = %127
  store i32 0, i32* %14, align 4, !taffo.info !9
  br label %149

; <label>:149:                                    ; preds = %170, %148
  %150 = load i32, i32* %14, align 4, !taffo.info !9
  %151 = icmp slt i32 %150, 16, !taffo.info !9
  br i1 %151, label %152, label %173, !taffo.info !9

; <label>:152:                                    ; preds = %149
  %153 = load i32, i32* %14, align 4, !taffo.info !9
  %154 = sext i32 %153 to i64, !taffo.info !9
  %155 = getelementptr inbounds float, float* %40, i64 %154, !taffo.target !14, !taffo.info !9
  %156 = load float, float* %155, align 4, !taffo.target !14, !taffo.info !9
  %157 = load i32, i32* %13, align 4, !taffo.info !9
  %158 = mul nsw i32 %157, 16, !taffo.info !9
  %159 = load i32, i32* %14, align 4, !taffo.info !9
  %160 = add nsw i32 %158, %159, !taffo.info !9
  %161 = sext i32 %160 to i64, !taffo.info !9
  %162 = getelementptr inbounds float, float* %28, i64 %161, !taffo.target !5, !taffo.info !9
  %163 = load float, float* %162, align 4, !taffo.target !5, !taffo.info !9
  %164 = load float, float* %22, align 4, !taffo.info !9
  %165 = fmul float %163, %164, !taffo.info !9
  %166 = fadd float %156, %165, !taffo.target !14, !taffo.info !9
  %167 = load i32, i32* %14, align 4, !taffo.info !9
  %168 = sext i32 %167 to i64, !taffo.info !9
  %169 = getelementptr inbounds float, float* %40, i64 %168, !taffo.target !14, !taffo.info !9
  store float %166, float* %169, align 4, !taffo.target !14, !taffo.info !9
  br label %170

; <label>:170:                                    ; preds = %152
  %171 = load i32, i32* %14, align 4, !taffo.info !9
  %172 = add nsw i32 %171, 1, !taffo.info !9
  store i32 %172, i32* %14, align 4, !taffo.info !9
  br label %149

; <label>:173:                                    ; preds = %149
  br label %174

; <label>:174:                                    ; preds = %173
  %175 = load i32, i32* %13, align 4, !taffo.info !9
  %176 = add nsw i32 %175, 1, !taffo.info !9
  store i32 %176, i32* %13, align 4, !taffo.info !9
  br label %122

; <label>:177:                                    ; preds = %122
  call void @atax.1(float* %28, float* %32, float* %36), !taffo.target !5, !taffo.info !9, !taffo.originalCall !15
  store i32 0, i32* %13, align 4, !taffo.info !9
  br label %178

; <label>:178:                                    ; preds = %194, %177
  %179 = load i32, i32* %13, align 4, !taffo.info !9
  %180 = icmp slt i32 %179, 16, !taffo.info !9
  br i1 %180, label %181, label %197, !taffo.info !9

; <label>:181:                                    ; preds = %178
  %182 = load i32, i32* %13, align 4, !taffo.info !9
  %183 = sext i32 %182 to i64, !taffo.info !9
  %184 = getelementptr inbounds float, float* %36, i64 %183, !taffo.target !14, !taffo.info !9
  %185 = load float, float* %184, align 4, !taffo.target !14, !taffo.info !9
  %186 = fpext float %185 to double, !taffo.target !14, !taffo.info !9
  %187 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), double %186), !taffo.target !14, !taffo.info !9
  %188 = load i32, i32* %13, align 4, !taffo.info !9
  %189 = sext i32 %188 to i64, !taffo.info !9
  %190 = getelementptr inbounds float, float* %40, i64 %189, !taffo.target !14, !taffo.info !9
  %191 = load float, float* %190, align 4, !taffo.target !14, !taffo.info !9
  %192 = fpext float %191 to double, !taffo.target !14, !taffo.info !9
  %193 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), double %192), !taffo.target !14, !taffo.info !9
  br label %194

; <label>:194:                                    ; preds = %181
  %195 = load i32, i32* %13, align 4, !taffo.info !9
  %196 = add nsw i32 %195, 1, !taffo.info !9
  store i32 %196, i32* %13, align 4, !taffo.info !9
  br label %178

; <label>:197:                                    ; preds = %178
  store i32 0, i32* %3, align 4
  %198 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %198)
  %199 = load i32, i32* %3, align 4
  ret i32 %199
}

; Function Attrs: nounwind
declare !taffo.funinfo !16 i8* @llvm.stacksave() #1

declare !taffo.funinfo !17 dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare !taffo.funinfo !17 void @llvm.stackrestore(i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @atax.1(float*, float*, float*) #0 !taffo.start !2 !taffo.sourceFunction !15 !taffo.funinfo !18 {
  %4 = alloca float*, align 8, !taffo.info !6
  %5 = alloca float*, align 8, !taffo.info !6
  %6 = alloca float*, align 8, !taffo.info !6
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float*, align 8, !taffo.target !5, !taffo.info !6
  %10 = alloca float*, align 8, !taffo.target !8, !taffo.info !6
  %11 = alloca float, align 4, !taffo.info !6
  %12 = alloca float, align 4, !taffo.info !9
  %13 = alloca i32, align 4, !taffo.info !10
  %14 = alloca i32, align 4, !taffo.info !10
  store float* %0, float** %4, align 8, !taffo.info !9
  store float* %1, float** %5, align 8, !taffo.info !9
  store float* %2, float** %6, align 8, !taffo.info !9
  store i32 16, i32* %7, align 4
  store i32 16, i32* %8, align 4
  %15 = bitcast float** %9 to i8*, !taffo.target !5, !taffo.info !9
  %16 = load float*, float** %4, align 8, !taffo.info !9
  store float* %16, float** %9, align 8, !taffo.target !5, !taffo.info !9
  %17 = bitcast float** %10 to i8*, !taffo.target !8, !taffo.info !9
  %18 = load float*, float** %5, align 8, !taffo.info !9
  store float* %18, float** %10, align 8, !taffo.target !8, !taffo.info !9
  %19 = bitcast float* %11 to i8*, !taffo.info !9
  %20 = bitcast float* %12 to i8*, !taffo.info !9
  store float 0.000000e+00, float* %12, align 4, !taffo.info !9
  %21 = bitcast i32* %13 to i8*, !taffo.info !9
  %22 = bitcast i32* %14 to i8*, !taffo.info !9
  store i32 0, i32* %13, align 4, !taffo.info !9
  br label %23

; <label>:23:                                     ; preds = %80, %3
  %24 = load i32, i32* %13, align 4, !taffo.info !9
  %25 = icmp slt i32 %24, 16, !taffo.info !9
  br i1 %25, label %26, label %83, !taffo.info !9

; <label>:26:                                     ; preds = %23
  %27 = load float, float* %12, align 4, !taffo.info !9
  store float %27, float* %11, align 4, !taffo.info !9
  store i32 0, i32* %14, align 4, !taffo.info !9
  br label %28

; <label>:28:                                     ; preds = %48, %26
  %29 = load i32, i32* %14, align 4, !taffo.info !9
  %30 = icmp slt i32 %29, 16, !taffo.info !9
  br i1 %30, label %31, label %51, !taffo.info !9

; <label>:31:                                     ; preds = %28
  %32 = load float, float* %11, align 4, !taffo.info !9
  %33 = load float*, float** %9, align 8, !taffo.target !5, !taffo.info !9
  %34 = load i32, i32* %13, align 4, !taffo.info !9
  %35 = mul nsw i32 %34, 16, !taffo.info !9
  %36 = load i32, i32* %14, align 4, !taffo.info !9
  %37 = add nsw i32 %35, %36, !taffo.info !9
  %38 = sext i32 %37 to i64, !taffo.info !9
  %39 = getelementptr inbounds float, float* %33, i64 %38, !taffo.target !5, !taffo.info !9
  %40 = load float, float* %39, align 4, !taffo.target !5, !taffo.info !9
  %41 = load float*, float** %10, align 8, !taffo.target !8, !taffo.info !9
  %42 = load i32, i32* %14, align 4, !taffo.info !9
  %43 = sext i32 %42 to i64, !taffo.info !9
  %44 = getelementptr inbounds float, float* %41, i64 %43, !taffo.target !8, !taffo.info !9
  %45 = load float, float* %44, align 4, !taffo.target !8, !taffo.info !9
  %46 = fmul float %40, %45, !taffo.target !5, !taffo.info !9
  %47 = fadd float %32, %46, !taffo.info !9
  store float %47, float* %11, align 4, !taffo.info !9
  br label %48

; <label>:48:                                     ; preds = %31
  %49 = load i32, i32* %14, align 4, !taffo.info !9
  %50 = add nsw i32 %49, 1, !taffo.info !9
  store i32 %50, i32* %14, align 4, !taffo.info !9
  br label %28

; <label>:51:                                     ; preds = %28
  store i32 0, i32* %14, align 4, !taffo.info !9
  br label %52

; <label>:52:                                     ; preds = %76, %51
  %53 = load i32, i32* %14, align 4, !taffo.info !9
  %54 = icmp slt i32 %53, 16, !taffo.info !9
  br i1 %54, label %55, label %79, !taffo.info !9

; <label>:55:                                     ; preds = %52
  %56 = load float*, float** %6, align 8, !taffo.info !9
  %57 = load i32, i32* %14, align 4, !taffo.info !9
  %58 = sext i32 %57 to i64, !taffo.info !9
  %59 = getelementptr inbounds float, float* %56, i64 %58, !taffo.info !9
  %60 = load float, float* %59, align 4, !taffo.info !9
  %61 = load float*, float** %9, align 8, !taffo.target !5, !taffo.info !9
  %62 = load i32, i32* %13, align 4, !taffo.info !9
  %63 = mul nsw i32 %62, 16, !taffo.info !9
  %64 = load i32, i32* %14, align 4, !taffo.info !9
  %65 = add nsw i32 %63, %64, !taffo.info !9
  %66 = sext i32 %65 to i64, !taffo.info !9
  %67 = getelementptr inbounds float, float* %61, i64 %66, !taffo.target !5, !taffo.info !9
  %68 = load float, float* %67, align 4, !taffo.target !5, !taffo.info !9
  %69 = load float, float* %11, align 4, !taffo.info !9
  %70 = fmul float %68, %69, !taffo.info !9
  %71 = fadd float %60, %70, !taffo.info !9
  %72 = load float*, float** %6, align 8, !taffo.info !9
  %73 = load i32, i32* %14, align 4, !taffo.info !9
  %74 = sext i32 %73 to i64, !taffo.info !9
  %75 = getelementptr inbounds float, float* %72, i64 %74, !taffo.info !9
  store float %71, float* %75, align 4, !taffo.info !9
  br label %76

; <label>:76:                                     ; preds = %55
  %77 = load i32, i32* %14, align 4, !taffo.info !9
  %78 = add nsw i32 %77, 1, !taffo.info !9
  store i32 %78, i32* %14, align 4, !taffo.info !9
  br label %52

; <label>:79:                                     ; preds = %52
  br label %80

; <label>:80:                                     ; preds = %79
  %81 = load i32, i32* %13, align 4, !taffo.info !9
  %82 = add nsw i32 %81, 1, !taffo.info !9
  store i32 %82, i32* %13, align 4, !taffo.info !9
  br label %23

; <label>:83:                                     ; preds = %23
  ret void
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 8.0.0 (tags/RELEASE_800/final)"}
!2 = !{i1 true}
!3 = !{void (float*, float*, float*)* @atax.1}
!4 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!5 = !{!"A"}
!6 = !{i1 false, !7, i1 false, i1 true}
!7 = !{double -4.096000e+03, double 4.096000e+03}
!8 = !{!"x"}
!9 = !{i1 false, i1 false, i1 false, i1 true}
!10 = !{i1 false, !11, i1 false, i1 true}
!11 = !{double 0.000000e+00, double 1.600000e+01}
!12 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!13 = !{i32 0, i1 false, i32 0, i1 false}
!14 = !{!"y"}
!15 = !{void (float*, float*, float*)* @atax}
!16 = !{}
!17 = !{i32 0, i1 false}
!18 = !{i32 1, !9, i32 1, !9, i32 1, !9}
