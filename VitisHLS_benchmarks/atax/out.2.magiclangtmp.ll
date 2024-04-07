; ModuleID = 'out.1.magiclangtmp.ll'
source_filename = "atax_taffo.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [39 x i8] c"target('A') scalar(range(-4096, 4096))\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [13 x i8] c"atax_taffo.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [27 x i8] c"scalar(range(-4096, 4096))\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [21 x i8] c"scalar(range(0, 16))\00", section "llvm.metadata"
@.str.4 = private unnamed_addr constant [9 x i8] c"scalar()\00", section "llvm.metadata"
@.str.5 = private unnamed_addr constant [5 x i8] c"%f \0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"target('x') scalar(range(-4096, 4096))\00", section "llvm.metadata"
@.str.7 = private unnamed_addr constant [39 x i8] c"target('y') scalar(range(-4096, 4096))\00", section "llvm.metadata"

; Function Attrs: noinline nounwind uwtable
define dso_local void @atax(float*, float*, float*) #0 !taffo.start !2 !taffo.equivalentChild !3 !taffo.funinfo !4 {
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float*, align 8, !taffo.target !5, !taffo.info !6
  %10 = alloca float, align 4, !taffo.info !6
  %11 = alloca i32, align 4, !taffo.info !8
  %12 = alloca i32, align 4, !taffo.info !8
  %13 = alloca float, align 4, !taffo.info !10
  %14 = alloca float, align 4, !taffo.info !10
  %15 = alloca float, align 4, !taffo.info !10
  %16 = alloca float, align 4, !taffo.info !10
  %17 = alloca float, align 4, !taffo.info !10
  store float* %0, float** %4, align 8
  store float* %1, float** %5, align 8
  store float* %2, float** %6, align 8
  store i32 16, i32* %7, align 4
  store i32 16, i32* %8, align 4
  %18 = bitcast float** %9 to i8*, !taffo.target !5, !taffo.info !10
  %19 = load float*, float** %4, align 8
  store float* %19, float** %9, align 8, !taffo.target !5, !taffo.info !10
  %20 = bitcast float* %10 to i8*, !taffo.info !10
  %21 = bitcast i32* %11 to i8*, !taffo.info !10
  %22 = bitcast i32* %12 to i8*, !taffo.info !10
  %23 = bitcast float* %13 to i8*, !taffo.info !10
  %24 = load i32, i32* %8, align 4
  %25 = sitofp i32 %24 to float
  store float %25, float* %13, align 4, !taffo.info !10
  %26 = bitcast float* %14 to i8*, !taffo.info !10
  %27 = load i32, i32* %7, align 4
  %28 = sitofp i32 %27 to float
  store float %28, float* %14, align 4, !taffo.info !10
  %29 = bitcast float* %15 to i8*, !taffo.info !10
  store float 5.000000e+00, float* %15, align 4, !taffo.info !10
  %30 = bitcast float* %16 to i8*, !taffo.info !10
  store float 0.000000e+00, float* %16, align 4, !taffo.info !10
  %31 = bitcast float* %17 to i8*, !taffo.info !10
  store float 1.000000e+00, float* %17, align 4, !taffo.info !10
  store i32 0, i32* %11, align 4, !taffo.info !10
  br label %32

; <label>:32:                                     ; preds = %46, %3
  %33 = load i32, i32* %11, align 4, !taffo.info !10
  %34 = icmp slt i32 %33, 16, !taffo.info !10
  br i1 %34, label %35, label %49, !taffo.info !10

; <label>:35:                                     ; preds = %32
  %36 = load float, float* %17, align 4, !taffo.info !10
  %37 = load i32, i32* %11, align 4, !taffo.info !10
  %38 = sitofp i32 %37 to float, !taffo.info !10
  %39 = load float, float* %13, align 4, !taffo.info !10
  %40 = fdiv float %38, %39, !taffo.info !10
  %41 = fadd float %36, %40, !taffo.info !10
  %42 = load float*, float** %5, align 8
  %43 = load i32, i32* %11, align 4, !taffo.info !10
  %44 = sext i32 %43 to i64, !taffo.info !10
  %45 = getelementptr inbounds float, float* %42, i64 %44, !taffo.info !10
  store float %41, float* %45, align 4, !taffo.info !10
  br label %46

; <label>:46:                                     ; preds = %35
  %47 = load i32, i32* %11, align 4, !taffo.info !10
  %48 = add nsw i32 %47, 1, !taffo.info !10
  store i32 %48, i32* %11, align 4, !taffo.info !10
  br label %32

; <label>:49:                                     ; preds = %32
  store i32 0, i32* %11, align 4, !taffo.info !10
  br label %50

; <label>:50:                                     ; preds = %63, %49
  %51 = load i32, i32* %11, align 4, !taffo.info !10
  %52 = icmp slt i32 %51, 16, !taffo.info !10
  br i1 %52, label %53, label %66, !taffo.info !10

; <label>:53:                                     ; preds = %50
  store i32 0, i32* %12, align 4, !taffo.info !10
  br label %54

; <label>:54:                                     ; preds = %59, %53
  %55 = load i32, i32* %12, align 4, !taffo.info !10
  %56 = load i32, i32* %8, align 4
  %57 = icmp slt i32 %55, %56, !taffo.info !10
  br i1 %57, label %58, label %62, !taffo.info !10

; <label>:58:                                     ; preds = %54
  br label %59

; <label>:59:                                     ; preds = %58
  %60 = load i32, i32* %12, align 4, !taffo.info !10
  %61 = add nsw i32 %60, 1, !taffo.info !10
  store i32 %61, i32* %12, align 4, !taffo.info !10
  br label %54

; <label>:62:                                     ; preds = %54
  br label %63

; <label>:63:                                     ; preds = %62
  %64 = load i32, i32* %11, align 4, !taffo.info !10
  %65 = add nsw i32 %64, 1, !taffo.info !10
  store i32 %65, i32* %11, align 4, !taffo.info !10
  br label %50

; <label>:66:                                     ; preds = %50
  store i32 0, i32* %11, align 4, !taffo.info !10
  br label %67

; <label>:67:                                     ; preds = %71, %66
  %68 = load i32, i32* %11, align 4, !taffo.info !10
  %69 = icmp slt i32 %68, 16, !taffo.info !10
  br i1 %69, label %70, label %74, !taffo.info !10

; <label>:70:                                     ; preds = %67
  br label %71

; <label>:71:                                     ; preds = %70
  %72 = load i32, i32* %11, align 4, !taffo.info !10
  %73 = add nsw i32 %72, 1, !taffo.info !10
  store i32 %73, i32* %11, align 4, !taffo.info !10
  br label %67

; <label>:74:                                     ; preds = %67
  store i32 0, i32* %11, align 4, !taffo.info !10
  br label %75

; <label>:75:                                     ; preds = %132, %74
  %76 = load i32, i32* %11, align 4, !taffo.info !10
  %77 = icmp slt i32 %76, 16, !taffo.info !10
  br i1 %77, label %78, label %135, !taffo.info !10

; <label>:78:                                     ; preds = %75
  %79 = load float, float* %16, align 4, !taffo.info !10
  store float %79, float* %10, align 4, !taffo.info !10
  store i32 0, i32* %12, align 4, !taffo.info !10
  br label %80

; <label>:80:                                     ; preds = %100, %78
  %81 = load i32, i32* %12, align 4, !taffo.info !10
  %82 = icmp slt i32 %81, 16, !taffo.info !10
  br i1 %82, label %83, label %103, !taffo.info !10

; <label>:83:                                     ; preds = %80
  %84 = load float, float* %10, align 4, !taffo.info !10
  %85 = load float*, float** %9, align 8, !taffo.target !5, !taffo.info !10
  %86 = load i32, i32* %11, align 4, !taffo.info !10
  %87 = mul nsw i32 %86, 16, !taffo.info !10
  %88 = load i32, i32* %12, align 4, !taffo.info !10
  %89 = add nsw i32 %87, %88, !taffo.info !10
  %90 = sext i32 %89 to i64, !taffo.info !10
  %91 = getelementptr inbounds float, float* %85, i64 %90, !taffo.target !5, !taffo.info !10
  %92 = load float, float* %91, align 4, !taffo.target !5, !taffo.info !10
  %93 = load float*, float** %5, align 8
  %94 = load i32, i32* %12, align 4, !taffo.info !10
  %95 = sext i32 %94 to i64, !taffo.info !10
  %96 = getelementptr inbounds float, float* %93, i64 %95, !taffo.info !10
  %97 = load float, float* %96, align 4, !taffo.info !10
  %98 = fmul float %92, %97, !taffo.target !5, !taffo.info !10
  %99 = fadd float %84, %98, !taffo.info !10
  store float %99, float* %10, align 4, !taffo.info !10
  br label %100

; <label>:100:                                    ; preds = %83
  %101 = load i32, i32* %12, align 4, !taffo.info !10
  %102 = add nsw i32 %101, 1, !taffo.info !10
  store i32 %102, i32* %12, align 4, !taffo.info !10
  br label %80

; <label>:103:                                    ; preds = %80
  store i32 0, i32* %12, align 4, !taffo.info !10
  br label %104

; <label>:104:                                    ; preds = %128, %103
  %105 = load i32, i32* %12, align 4, !taffo.info !10
  %106 = icmp slt i32 %105, 16, !taffo.info !10
  br i1 %106, label %107, label %131, !taffo.info !10

; <label>:107:                                    ; preds = %104
  %108 = load float*, float** %6, align 8
  %109 = load i32, i32* %12, align 4, !taffo.info !10
  %110 = sext i32 %109 to i64, !taffo.info !10
  %111 = getelementptr inbounds float, float* %108, i64 %110, !taffo.info !10
  %112 = load float, float* %111, align 4, !taffo.info !10
  %113 = load float*, float** %9, align 8, !taffo.target !5, !taffo.info !10
  %114 = load i32, i32* %11, align 4, !taffo.info !10
  %115 = mul nsw i32 %114, 16, !taffo.info !10
  %116 = load i32, i32* %12, align 4, !taffo.info !10
  %117 = add nsw i32 %115, %116, !taffo.info !10
  %118 = sext i32 %117 to i64, !taffo.info !10
  %119 = getelementptr inbounds float, float* %113, i64 %118, !taffo.target !5, !taffo.info !10
  %120 = load float, float* %119, align 4, !taffo.target !5, !taffo.info !10
  %121 = load float, float* %10, align 4, !taffo.info !10
  %122 = fmul float %120, %121, !taffo.info !10
  %123 = fadd float %112, %122, !taffo.info !10
  %124 = load float*, float** %6, align 8
  %125 = load i32, i32* %12, align 4, !taffo.info !10
  %126 = sext i32 %125 to i64, !taffo.info !10
  %127 = getelementptr inbounds float, float* %124, i64 %126, !taffo.info !10
  store float %123, float* %127, align 4, !taffo.info !10
  br label %128

; <label>:128:                                    ; preds = %107
  %129 = load i32, i32* %12, align 4, !taffo.info !10
  %130 = add nsw i32 %129, 1, !taffo.info !10
  store i32 %130, i32* %12, align 4, !taffo.info !10
  br label %104

; <label>:131:                                    ; preds = %104
  br label %132

; <label>:132:                                    ; preds = %131
  %133 = load i32, i32* %11, align 4, !taffo.info !10
  %134 = add nsw i32 %133, 1, !taffo.info !10
  store i32 %134, i32* %11, align 4, !taffo.info !10
  br label %75

; <label>:135:                                    ; preds = %75
  store i32 0, i32* %12, align 4, !taffo.info !10
  br label %136

; <label>:136:                                    ; preds = %147, %135
  %137 = load i32, i32* %12, align 4, !taffo.info !10
  %138 = icmp slt i32 %137, 16, !taffo.info !10
  br i1 %138, label %139, label %150, !taffo.info !10

; <label>:139:                                    ; preds = %136
  %140 = load float*, float** %6, align 8
  %141 = load i32, i32* %11, align 4, !taffo.info !10
  %142 = sext i32 %141 to i64, !taffo.info !10
  %143 = getelementptr inbounds float, float* %140, i64 %142, !taffo.info !10
  %144 = load float, float* %143, align 4, !taffo.info !10
  %145 = fpext float %144 to double, !taffo.info !10
  %146 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), double %145), !taffo.info !10
  br label %147

; <label>:147:                                    ; preds = %139
  %148 = load i32, i32* %12, align 4, !taffo.info !10
  %149 = add nsw i32 %148, 1, !taffo.info !10
  store i32 %149, i32* %12, align 4, !taffo.info !10
  br label %136

; <label>:150:                                    ; preds = %136
  ret void
}

; Function Attrs: nounwind
declare !taffo.funinfo !11 void @llvm.var.annotation(i8*, i8*, i8*, i32) #1

declare !taffo.funinfo !12 dso_local i32 @printf(i8*, ...) #2

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
  %12 = alloca i32, align 4, !taffo.info !8
  %13 = alloca i32, align 4, !taffo.info !8
  %14 = alloca float, align 4, !taffo.info !10
  %15 = alloca float, align 4, !taffo.info !10
  %16 = alloca float, align 4, !taffo.info !10
  %17 = alloca float, align 4, !taffo.info !10
  %18 = alloca float, align 4, !taffo.info !10
  %19 = alloca float, align 4, !taffo.info !6
  %20 = alloca float, align 4, !taffo.info !6
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 16, i32* %6, align 4
  store i32 16, i32* %7, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = mul nsw i32 %21, %22
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %8, align 8
  %26 = alloca float, i64 %24, align 16, !taffo.target !5, !taffo.info !6
  store i64 %24, i64* %9, align 8
  %27 = bitcast float* %26 to i8*, !taffo.target !5, !taffo.info !10
  %28 = load i32, i32* %7, align 4
  %29 = zext i32 %28 to i64
  %30 = alloca float, i64 %29, align 16, !taffo.target !14, !taffo.info !6
  store i64 %29, i64* %10, align 8
  %31 = bitcast float* %30 to i8*, !taffo.target !14, !taffo.info !10
  %32 = load i32, i32* %7, align 4
  %33 = zext i32 %32 to i64
  %34 = alloca float, i64 %33, align 16, !taffo.target !15, !taffo.info !6
  store i64 %33, i64* %11, align 8
  %35 = bitcast float* %34 to i8*, !taffo.target !15, !taffo.info !10
  %36 = bitcast i32* %12 to i8*, !taffo.info !10
  %37 = bitcast i32* %13 to i8*, !taffo.info !10
  %38 = bitcast float* %14 to i8*, !taffo.info !10
  store float 1.600000e+01, float* %14, align 4, !taffo.info !10
  %39 = bitcast float* %15 to i8*, !taffo.info !10
  store float 1.600000e+01, float* %15, align 4, !taffo.info !10
  %40 = bitcast float* %16 to i8*, !taffo.info !10
  store float 5.000000e+00, float* %16, align 4, !taffo.info !10
  %41 = bitcast float* %17 to i8*, !taffo.info !10
  store float 0.000000e+00, float* %17, align 4, !taffo.info !10
  %42 = bitcast float* %18 to i8*, !taffo.info !10
  store float 1.000000e+00, float* %18, align 4, !taffo.info !10
  %43 = bitcast float* %19 to i8*, !taffo.info !10
  %44 = bitcast float* %20 to i8*, !taffo.info !10
  store i32 0, i32* %12, align 4, !taffo.info !10
  br label %45

; <label>:45:                                     ; preds = %54, %2
  %46 = load i32, i32* %12, align 4, !taffo.info !10
  %47 = icmp slt i32 %46, 16, !taffo.info !10
  br i1 %47, label %48, label %57, !taffo.info !10

; <label>:48:                                     ; preds = %45
  %49 = load float, float* %18, align 4, !taffo.info !10
  store float %49, float* %19, align 4, !taffo.info !10
  %50 = load float, float* %19, align 4, !taffo.info !10
  %51 = load i32, i32* %12, align 4, !taffo.info !10
  %52 = sext i32 %51 to i64, !taffo.info !10
  %53 = getelementptr inbounds float, float* %30, i64 %52, !taffo.target !14, !taffo.info !10
  store float %50, float* %53, align 4, !taffo.target !14, !taffo.info !10
  br label %54

; <label>:54:                                     ; preds = %48
  %55 = load i32, i32* %12, align 4, !taffo.info !10
  %56 = add nsw i32 %55, 1, !taffo.info !10
  store i32 %56, i32* %12, align 4, !taffo.info !10
  br label %45

; <label>:57:                                     ; preds = %45
  store i32 0, i32* %12, align 4, !taffo.info !10
  br label %58

; <label>:58:                                     ; preds = %88, %57
  %59 = load i32, i32* %12, align 4, !taffo.info !10
  %60 = icmp slt i32 %59, 16, !taffo.info !10
  br i1 %60, label %61, label %91, !taffo.info !10

; <label>:61:                                     ; preds = %58
  store i32 0, i32* %13, align 4, !taffo.info !10
  br label %62

; <label>:62:                                     ; preds = %84, %61
  %63 = load i32, i32* %13, align 4, !taffo.info !10
  %64 = load i32, i32* %7, align 4
  %65 = icmp slt i32 %63, %64, !taffo.info !10
  br i1 %65, label %66, label %87, !taffo.info !10

; <label>:66:                                     ; preds = %62
  %67 = load i32, i32* %12, align 4, !taffo.info !10
  %68 = load i32, i32* %13, align 4, !taffo.info !10
  %69 = add nsw i32 %67, %68, !taffo.info !10
  %70 = sitofp i32 %69 to float, !taffo.info !10
  %71 = load float, float* %16, align 4, !taffo.info !10
  %72 = load i32, i32* %6, align 4
  %73 = sitofp i32 %72 to float
  %74 = fmul float %71, %73, !taffo.info !10
  %75 = fdiv float %70, %74, !taffo.info !10
  store float %75, float* %20, align 4, !taffo.info !10
  %76 = load float, float* %20, align 4, !taffo.info !10
  %77 = load i32, i32* %12, align 4, !taffo.info !10
  %78 = load i32, i32* %7, align 4
  %79 = mul nsw i32 %77, %78, !taffo.info !10
  %80 = load i32, i32* %13, align 4, !taffo.info !10
  %81 = add nsw i32 %79, %80, !taffo.info !10
  %82 = sext i32 %81 to i64, !taffo.info !10
  %83 = getelementptr inbounds float, float* %26, i64 %82, !taffo.target !5, !taffo.info !10
  store float %76, float* %83, align 4, !taffo.target !5, !taffo.info !10
  br label %84

; <label>:84:                                     ; preds = %66
  %85 = load i32, i32* %13, align 4, !taffo.info !10
  %86 = add nsw i32 %85, 1, !taffo.info !10
  store i32 %86, i32* %13, align 4, !taffo.info !10
  br label %62

; <label>:87:                                     ; preds = %62
  br label %88

; <label>:88:                                     ; preds = %87
  %89 = load i32, i32* %12, align 4, !taffo.info !10
  %90 = add nsw i32 %89, 1, !taffo.info !10
  store i32 %90, i32* %12, align 4, !taffo.info !10
  br label %58

; <label>:91:                                     ; preds = %58
  store i32 0, i32* %13, align 4, !taffo.info !10
  br label %92

; <label>:92:                                     ; preds = %102, %91
  %93 = load i32, i32* %13, align 4, !taffo.info !10
  %94 = icmp slt i32 %93, 256, !taffo.info !10
  br i1 %94, label %95, label %105, !taffo.info !10

; <label>:95:                                     ; preds = %92
  %96 = load i32, i32* %13, align 4, !taffo.info !10
  %97 = sext i32 %96 to i64, !taffo.info !10
  %98 = getelementptr inbounds float, float* %26, i64 %97, !taffo.target !5, !taffo.info !10
  %99 = load float, float* %98, align 4, !taffo.target !5, !taffo.info !10
  %100 = fpext float %99 to double, !taffo.target !5, !taffo.info !10
  %101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), double %100), !taffo.target !5, !taffo.info !10
  br label %102

; <label>:102:                                    ; preds = %95
  %103 = load i32, i32* %13, align 4, !taffo.info !10
  %104 = add nsw i32 %103, 1, !taffo.info !10
  store i32 %104, i32* %13, align 4, !taffo.info !10
  br label %92

; <label>:105:                                    ; preds = %92
  call void @atax.1(float* %26, float* %30, float* %34), !taffo.target !5, !taffo.info !10, !taffo.originalCall !16
  store i32 0, i32* %3, align 4
  %106 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %106)
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

; Function Attrs: nounwind
declare !taffo.funinfo !17 i8* @llvm.stacksave() #1

; Function Attrs: nounwind
declare !taffo.funinfo !12 void @llvm.stackrestore(i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @atax.1(float*, float*, float*) #0 !taffo.start !2 !taffo.sourceFunction !16 !taffo.funinfo !18 {
  %4 = alloca float*, align 8, !taffo.info !6
  %5 = alloca float*, align 8, !taffo.info !6
  %6 = alloca float*, align 8, !taffo.info !6
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float*, align 8, !taffo.target !5, !taffo.info !6
  %10 = alloca float, align 4, !taffo.info !6
  %11 = alloca i32, align 4, !taffo.info !8
  %12 = alloca i32, align 4, !taffo.info !8
  %13 = alloca float, align 4, !taffo.info !10
  %14 = alloca float, align 4, !taffo.info !10
  %15 = alloca float, align 4, !taffo.info !10
  %16 = alloca float, align 4, !taffo.info !10
  %17 = alloca float, align 4, !taffo.info !10
  store float* %0, float** %4, align 8, !taffo.info !10
  store float* %1, float** %5, align 8, !taffo.info !10
  store float* %2, float** %6, align 8, !taffo.info !10
  store i32 16, i32* %7, align 4
  store i32 16, i32* %8, align 4
  %18 = bitcast float** %9 to i8*, !taffo.target !5, !taffo.info !10
  %19 = load float*, float** %4, align 8, !taffo.info !10
  store float* %19, float** %9, align 8, !taffo.target !5, !taffo.info !10
  %20 = bitcast float* %10 to i8*, !taffo.info !10
  %21 = bitcast i32* %11 to i8*, !taffo.info !10
  %22 = bitcast i32* %12 to i8*, !taffo.info !10
  %23 = bitcast float* %13 to i8*, !taffo.info !10
  %24 = load i32, i32* %8, align 4
  %25 = sitofp i32 %24 to float
  store float %25, float* %13, align 4, !taffo.info !10
  %26 = bitcast float* %14 to i8*, !taffo.info !10
  %27 = load i32, i32* %7, align 4
  %28 = sitofp i32 %27 to float
  store float %28, float* %14, align 4, !taffo.info !10
  %29 = bitcast float* %15 to i8*, !taffo.info !10
  store float 5.000000e+00, float* %15, align 4, !taffo.info !10
  %30 = bitcast float* %16 to i8*, !taffo.info !10
  store float 0.000000e+00, float* %16, align 4, !taffo.info !10
  %31 = bitcast float* %17 to i8*, !taffo.info !10
  store float 1.000000e+00, float* %17, align 4, !taffo.info !10
  store i32 0, i32* %11, align 4, !taffo.info !10
  br label %32

; <label>:32:                                     ; preds = %46, %3
  %33 = load i32, i32* %11, align 4, !taffo.info !10
  %34 = icmp slt i32 %33, 16, !taffo.info !10
  br i1 %34, label %35, label %49, !taffo.info !10

; <label>:35:                                     ; preds = %32
  %36 = load float, float* %17, align 4, !taffo.info !10
  %37 = load i32, i32* %11, align 4, !taffo.info !10
  %38 = sitofp i32 %37 to float, !taffo.info !10
  %39 = load float, float* %13, align 4, !taffo.info !10
  %40 = fdiv float %38, %39, !taffo.info !10
  %41 = fadd float %36, %40, !taffo.info !10
  %42 = load float*, float** %5, align 8, !taffo.info !10
  %43 = load i32, i32* %11, align 4, !taffo.info !10
  %44 = sext i32 %43 to i64, !taffo.info !10
  %45 = getelementptr inbounds float, float* %42, i64 %44, !taffo.info !10
  store float %41, float* %45, align 4, !taffo.info !10
  br label %46

; <label>:46:                                     ; preds = %35
  %47 = load i32, i32* %11, align 4, !taffo.info !10
  %48 = add nsw i32 %47, 1, !taffo.info !10
  store i32 %48, i32* %11, align 4, !taffo.info !10
  br label %32

; <label>:49:                                     ; preds = %32
  store i32 0, i32* %11, align 4, !taffo.info !10
  br label %50

; <label>:50:                                     ; preds = %63, %49
  %51 = load i32, i32* %11, align 4, !taffo.info !10
  %52 = icmp slt i32 %51, 16, !taffo.info !10
  br i1 %52, label %53, label %66, !taffo.info !10

; <label>:53:                                     ; preds = %50
  store i32 0, i32* %12, align 4, !taffo.info !10
  br label %54

; <label>:54:                                     ; preds = %59, %53
  %55 = load i32, i32* %12, align 4, !taffo.info !10
  %56 = load i32, i32* %8, align 4
  %57 = icmp slt i32 %55, %56, !taffo.info !10
  br i1 %57, label %58, label %62, !taffo.info !10

; <label>:58:                                     ; preds = %54
  br label %59

; <label>:59:                                     ; preds = %58
  %60 = load i32, i32* %12, align 4, !taffo.info !10
  %61 = add nsw i32 %60, 1, !taffo.info !10
  store i32 %61, i32* %12, align 4, !taffo.info !10
  br label %54

; <label>:62:                                     ; preds = %54
  br label %63

; <label>:63:                                     ; preds = %62
  %64 = load i32, i32* %11, align 4, !taffo.info !10
  %65 = add nsw i32 %64, 1, !taffo.info !10
  store i32 %65, i32* %11, align 4, !taffo.info !10
  br label %50

; <label>:66:                                     ; preds = %50
  store i32 0, i32* %11, align 4, !taffo.info !10
  br label %67

; <label>:67:                                     ; preds = %71, %66
  %68 = load i32, i32* %11, align 4, !taffo.info !10
  %69 = icmp slt i32 %68, 16, !taffo.info !10
  br i1 %69, label %70, label %74, !taffo.info !10

; <label>:70:                                     ; preds = %67
  br label %71

; <label>:71:                                     ; preds = %70
  %72 = load i32, i32* %11, align 4, !taffo.info !10
  %73 = add nsw i32 %72, 1, !taffo.info !10
  store i32 %73, i32* %11, align 4, !taffo.info !10
  br label %67

; <label>:74:                                     ; preds = %67
  store i32 0, i32* %11, align 4, !taffo.info !10
  br label %75

; <label>:75:                                     ; preds = %132, %74
  %76 = load i32, i32* %11, align 4, !taffo.info !10
  %77 = icmp slt i32 %76, 16, !taffo.info !10
  br i1 %77, label %78, label %135, !taffo.info !10

; <label>:78:                                     ; preds = %75
  %79 = load float, float* %16, align 4, !taffo.info !10
  store float %79, float* %10, align 4, !taffo.info !10
  store i32 0, i32* %12, align 4, !taffo.info !10
  br label %80

; <label>:80:                                     ; preds = %100, %78
  %81 = load i32, i32* %12, align 4, !taffo.info !10
  %82 = icmp slt i32 %81, 16, !taffo.info !10
  br i1 %82, label %83, label %103, !taffo.info !10

; <label>:83:                                     ; preds = %80
  %84 = load float, float* %10, align 4, !taffo.info !10
  %85 = load float*, float** %9, align 8, !taffo.target !5, !taffo.info !10
  %86 = load i32, i32* %11, align 4, !taffo.info !10
  %87 = mul nsw i32 %86, 16, !taffo.info !10
  %88 = load i32, i32* %12, align 4, !taffo.info !10
  %89 = add nsw i32 %87, %88, !taffo.info !10
  %90 = sext i32 %89 to i64, !taffo.info !10
  %91 = getelementptr inbounds float, float* %85, i64 %90, !taffo.target !5, !taffo.info !10
  %92 = load float, float* %91, align 4, !taffo.target !5, !taffo.info !10
  %93 = load float*, float** %5, align 8, !taffo.info !10
  %94 = load i32, i32* %12, align 4, !taffo.info !10
  %95 = sext i32 %94 to i64, !taffo.info !10
  %96 = getelementptr inbounds float, float* %93, i64 %95, !taffo.info !10
  %97 = load float, float* %96, align 4, !taffo.info !10
  %98 = fmul float %92, %97, !taffo.target !5, !taffo.info !10
  %99 = fadd float %84, %98, !taffo.info !10
  store float %99, float* %10, align 4, !taffo.info !10
  br label %100

; <label>:100:                                    ; preds = %83
  %101 = load i32, i32* %12, align 4, !taffo.info !10
  %102 = add nsw i32 %101, 1, !taffo.info !10
  store i32 %102, i32* %12, align 4, !taffo.info !10
  br label %80

; <label>:103:                                    ; preds = %80
  store i32 0, i32* %12, align 4, !taffo.info !10
  br label %104

; <label>:104:                                    ; preds = %128, %103
  %105 = load i32, i32* %12, align 4, !taffo.info !10
  %106 = icmp slt i32 %105, 16, !taffo.info !10
  br i1 %106, label %107, label %131, !taffo.info !10

; <label>:107:                                    ; preds = %104
  %108 = load float*, float** %6, align 8, !taffo.info !10
  %109 = load i32, i32* %12, align 4, !taffo.info !10
  %110 = sext i32 %109 to i64, !taffo.info !10
  %111 = getelementptr inbounds float, float* %108, i64 %110, !taffo.info !10
  %112 = load float, float* %111, align 4, !taffo.info !10
  %113 = load float*, float** %9, align 8, !taffo.target !5, !taffo.info !10
  %114 = load i32, i32* %11, align 4, !taffo.info !10
  %115 = mul nsw i32 %114, 16, !taffo.info !10
  %116 = load i32, i32* %12, align 4, !taffo.info !10
  %117 = add nsw i32 %115, %116, !taffo.info !10
  %118 = sext i32 %117 to i64, !taffo.info !10
  %119 = getelementptr inbounds float, float* %113, i64 %118, !taffo.target !5, !taffo.info !10
  %120 = load float, float* %119, align 4, !taffo.target !5, !taffo.info !10
  %121 = load float, float* %10, align 4, !taffo.info !10
  %122 = fmul float %120, %121, !taffo.info !10
  %123 = fadd float %112, %122, !taffo.info !10
  %124 = load float*, float** %6, align 8, !taffo.info !10
  %125 = load i32, i32* %12, align 4, !taffo.info !10
  %126 = sext i32 %125 to i64, !taffo.info !10
  %127 = getelementptr inbounds float, float* %124, i64 %126, !taffo.info !10
  store float %123, float* %127, align 4, !taffo.info !10
  br label %128

; <label>:128:                                    ; preds = %107
  %129 = load i32, i32* %12, align 4, !taffo.info !10
  %130 = add nsw i32 %129, 1, !taffo.info !10
  store i32 %130, i32* %12, align 4, !taffo.info !10
  br label %104

; <label>:131:                                    ; preds = %104
  br label %132

; <label>:132:                                    ; preds = %131
  %133 = load i32, i32* %11, align 4, !taffo.info !10
  %134 = add nsw i32 %133, 1, !taffo.info !10
  store i32 %134, i32* %11, align 4, !taffo.info !10
  br label %75

; <label>:135:                                    ; preds = %75
  store i32 0, i32* %12, align 4, !taffo.info !10
  br label %136

; <label>:136:                                    ; preds = %147, %135
  %137 = load i32, i32* %12, align 4, !taffo.info !10
  %138 = icmp slt i32 %137, 16, !taffo.info !10
  br i1 %138, label %139, label %150, !taffo.info !10

; <label>:139:                                    ; preds = %136
  %140 = load float*, float** %6, align 8, !taffo.info !10
  %141 = load i32, i32* %11, align 4, !taffo.info !10
  %142 = sext i32 %141 to i64, !taffo.info !10
  %143 = getelementptr inbounds float, float* %140, i64 %142, !taffo.info !10
  %144 = load float, float* %143, align 4, !taffo.info !10
  %145 = fpext float %144 to double, !taffo.info !10
  %146 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), double %145), !taffo.info !10
  br label %147

; <label>:147:                                    ; preds = %139
  %148 = load i32, i32* %12, align 4, !taffo.info !10
  %149 = add nsw i32 %148, 1, !taffo.info !10
  store i32 %149, i32* %12, align 4, !taffo.info !10
  br label %136

; <label>:150:                                    ; preds = %136
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
!8 = !{i1 false, !9, i1 false, i1 true}
!9 = !{double 0.000000e+00, double 1.600000e+01}
!10 = !{i1 false, i1 false, i1 false, i1 true}
!11 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!12 = !{i32 0, i1 false}
!13 = !{i32 0, i1 false, i32 0, i1 false}
!14 = !{!"x"}
!15 = !{!"y"}
!16 = !{void (float*, float*, float*)* @atax}
!17 = !{}
!18 = !{i32 1, !10, i32 1, !10, i32 1, !10}
