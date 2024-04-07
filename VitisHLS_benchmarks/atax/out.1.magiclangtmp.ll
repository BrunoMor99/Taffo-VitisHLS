; ModuleID = 'atax_taffo.c'
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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @atax(float*, float*, float*) #0 {
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float*, align 8
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  store float* %0, float** %4, align 8
  store float* %1, float** %5, align 8
  store float* %2, float** %6, align 8
  store i32 16, i32* %7, align 4
  store i32 16, i32* %8, align 4
  %18 = bitcast float** %9 to i8*
  call void @llvm.var.annotation(i8* %18, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 30)
  %19 = load float*, float** %4, align 8
  store float* %19, float** %9, align 8
  %20 = bitcast float* %10 to i8*
  call void @llvm.var.annotation(i8* %20, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 32)
  %21 = bitcast i32* %11 to i8*
  call void @llvm.var.annotation(i8* %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 33)
  %22 = bitcast i32* %12 to i8*
  call void @llvm.var.annotation(i8* %22, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 34)
  %23 = bitcast float* %13 to i8*
  call void @llvm.var.annotation(i8* %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 35)
  %24 = load i32, i32* %8, align 4
  %25 = sitofp i32 %24 to float
  store float %25, float* %13, align 4
  %26 = bitcast float* %14 to i8*
  call void @llvm.var.annotation(i8* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 37)
  %27 = load i32, i32* %7, align 4
  %28 = sitofp i32 %27 to float
  store float %28, float* %14, align 4
  %29 = bitcast float* %15 to i8*
  call void @llvm.var.annotation(i8* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 39)
  store float 5.000000e+00, float* %15, align 4
  %30 = bitcast float* %16 to i8*
  call void @llvm.var.annotation(i8* %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 41)
  store float 0.000000e+00, float* %16, align 4
  %31 = bitcast float* %17 to i8*
  call void @llvm.var.annotation(i8* %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 43)
  store float 1.000000e+00, float* %17, align 4
  store i32 0, i32* %11, align 4
  br label %32

; <label>:32:                                     ; preds = %46, %3
  %33 = load i32, i32* %11, align 4
  %34 = icmp slt i32 %33, 16
  br i1 %34, label %35, label %49

; <label>:35:                                     ; preds = %32
  %36 = load float, float* %17, align 4
  %37 = load i32, i32* %11, align 4
  %38 = sitofp i32 %37 to float
  %39 = load float, float* %13, align 4
  %40 = fdiv float %38, %39
  %41 = fadd float %36, %40
  %42 = load float*, float** %5, align 8
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds float, float* %42, i64 %44
  store float %41, float* %45, align 4
  br label %46

; <label>:46:                                     ; preds = %35
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %11, align 4
  br label %32

; <label>:49:                                     ; preds = %32
  store i32 0, i32* %11, align 4
  br label %50

; <label>:50:                                     ; preds = %63, %49
  %51 = load i32, i32* %11, align 4
  %52 = icmp slt i32 %51, 16
  br i1 %52, label %53, label %66

; <label>:53:                                     ; preds = %50
  store i32 0, i32* %12, align 4
  br label %54

; <label>:54:                                     ; preds = %59, %53
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %62

; <label>:58:                                     ; preds = %54
  br label %59

; <label>:59:                                     ; preds = %58
  %60 = load i32, i32* %12, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %12, align 4
  br label %54

; <label>:62:                                     ; preds = %54
  br label %63

; <label>:63:                                     ; preds = %62
  %64 = load i32, i32* %11, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %11, align 4
  br label %50

; <label>:66:                                     ; preds = %50
  store i32 0, i32* %11, align 4
  br label %67

; <label>:67:                                     ; preds = %71, %66
  %68 = load i32, i32* %11, align 4
  %69 = icmp slt i32 %68, 16
  br i1 %69, label %70, label %74

; <label>:70:                                     ; preds = %67
  br label %71

; <label>:71:                                     ; preds = %70
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %11, align 4
  br label %67

; <label>:74:                                     ; preds = %67
  store i32 0, i32* %11, align 4
  br label %75

; <label>:75:                                     ; preds = %132, %74
  %76 = load i32, i32* %11, align 4
  %77 = icmp slt i32 %76, 16
  br i1 %77, label %78, label %135

; <label>:78:                                     ; preds = %75
  %79 = load float, float* %16, align 4
  store float %79, float* %10, align 4
  store i32 0, i32* %12, align 4
  br label %80

; <label>:80:                                     ; preds = %100, %78
  %81 = load i32, i32* %12, align 4
  %82 = icmp slt i32 %81, 16
  br i1 %82, label %83, label %103

; <label>:83:                                     ; preds = %80
  %84 = load float, float* %10, align 4
  %85 = load float*, float** %9, align 8
  %86 = load i32, i32* %11, align 4
  %87 = mul nsw i32 %86, 16
  %88 = load i32, i32* %12, align 4
  %89 = add nsw i32 %87, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds float, float* %85, i64 %90
  %92 = load float, float* %91, align 4
  %93 = load float*, float** %5, align 8
  %94 = load i32, i32* %12, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds float, float* %93, i64 %95
  %97 = load float, float* %96, align 4
  %98 = fmul float %92, %97
  %99 = fadd float %84, %98
  store float %99, float* %10, align 4
  br label %100

; <label>:100:                                    ; preds = %83
  %101 = load i32, i32* %12, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %12, align 4
  br label %80

; <label>:103:                                    ; preds = %80
  store i32 0, i32* %12, align 4
  br label %104

; <label>:104:                                    ; preds = %128, %103
  %105 = load i32, i32* %12, align 4
  %106 = icmp slt i32 %105, 16
  br i1 %106, label %107, label %131

; <label>:107:                                    ; preds = %104
  %108 = load float*, float** %6, align 8
  %109 = load i32, i32* %12, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds float, float* %108, i64 %110
  %112 = load float, float* %111, align 4
  %113 = load float*, float** %9, align 8
  %114 = load i32, i32* %11, align 4
  %115 = mul nsw i32 %114, 16
  %116 = load i32, i32* %12, align 4
  %117 = add nsw i32 %115, %116
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds float, float* %113, i64 %118
  %120 = load float, float* %119, align 4
  %121 = load float, float* %10, align 4
  %122 = fmul float %120, %121
  %123 = fadd float %112, %122
  %124 = load float*, float** %6, align 8
  %125 = load i32, i32* %12, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds float, float* %124, i64 %126
  store float %123, float* %127, align 4
  br label %128

; <label>:128:                                    ; preds = %107
  %129 = load i32, i32* %12, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %12, align 4
  br label %104

; <label>:131:                                    ; preds = %104
  br label %132

; <label>:132:                                    ; preds = %131
  %133 = load i32, i32* %11, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %11, align 4
  br label %75

; <label>:135:                                    ; preds = %75
  store i32 0, i32* %12, align 4
  br label %136

; <label>:136:                                    ; preds = %147, %135
  %137 = load i32, i32* %12, align 4
  %138 = icmp slt i32 %137, 16
  br i1 %138, label %139, label %150

; <label>:139:                                    ; preds = %136
  %140 = load float*, float** %6, align 8
  %141 = load i32, i32* %11, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds float, float* %140, i64 %142
  %144 = load float, float* %143, align 4
  %145 = fpext float %144 to double
  %146 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), double %145)
  br label %147

; <label>:147:                                    ; preds = %139
  %148 = load i32, i32* %12, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %12, align 4
  br label %136

; <label>:150:                                    ; preds = %136
  ret void
}

; Function Attrs: nounwind
declare void @llvm.var.annotation(i8*, i8*, i8*, i32) #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
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
  %26 = alloca float, i64 %24, align 16
  store i64 %24, i64* %9, align 8
  %27 = bitcast float* %26 to i8*
  call void @llvm.var.annotation(i8* %27, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 90)
  %28 = load i32, i32* %7, align 4
  %29 = zext i32 %28 to i64
  %30 = alloca float, i64 %29, align 16
  store i64 %29, i64* %10, align 8
  %31 = bitcast float* %30 to i8*
  call void @llvm.var.annotation(i8* %31, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 91)
  %32 = load i32, i32* %7, align 4
  %33 = zext i32 %32 to i64
  %34 = alloca float, i64 %33, align 16
  store i64 %33, i64* %11, align 8
  %35 = bitcast float* %34 to i8*
  call void @llvm.var.annotation(i8* %35, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 92)
  %36 = bitcast i32* %12 to i8*
  call void @llvm.var.annotation(i8* %36, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 94)
  %37 = bitcast i32* %13 to i8*
  call void @llvm.var.annotation(i8* %37, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 95)
  %38 = bitcast float* %14 to i8*
  call void @llvm.var.annotation(i8* %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 96)
  store float 1.600000e+01, float* %14, align 4
  %39 = bitcast float* %15 to i8*
  call void @llvm.var.annotation(i8* %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 98)
  store float 1.600000e+01, float* %15, align 4
  %40 = bitcast float* %16 to i8*
  call void @llvm.var.annotation(i8* %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 100)
  store float 5.000000e+00, float* %16, align 4
  %41 = bitcast float* %17 to i8*
  call void @llvm.var.annotation(i8* %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 102)
  store float 0.000000e+00, float* %17, align 4
  %42 = bitcast float* %18 to i8*
  call void @llvm.var.annotation(i8* %42, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 104)
  store float 1.000000e+00, float* %18, align 4
  %43 = bitcast float* %19 to i8*
  call void @llvm.var.annotation(i8* %43, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 107)
  %44 = bitcast float* %20 to i8*
  call void @llvm.var.annotation(i8* %44, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 108)
  store i32 0, i32* %12, align 4
  br label %45

; <label>:45:                                     ; preds = %54, %2
  %46 = load i32, i32* %12, align 4
  %47 = icmp slt i32 %46, 16
  br i1 %47, label %48, label %57

; <label>:48:                                     ; preds = %45
  %49 = load float, float* %18, align 4
  store float %49, float* %19, align 4
  %50 = load float, float* %19, align 4
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds float, float* %30, i64 %52
  store float %50, float* %53, align 4
  br label %54

; <label>:54:                                     ; preds = %48
  %55 = load i32, i32* %12, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %12, align 4
  br label %45

; <label>:57:                                     ; preds = %45
  store i32 0, i32* %12, align 4
  br label %58

; <label>:58:                                     ; preds = %88, %57
  %59 = load i32, i32* %12, align 4
  %60 = icmp slt i32 %59, 16
  br i1 %60, label %61, label %91

; <label>:61:                                     ; preds = %58
  store i32 0, i32* %13, align 4
  br label %62

; <label>:62:                                     ; preds = %84, %61
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %87

; <label>:66:                                     ; preds = %62
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %13, align 4
  %69 = add nsw i32 %67, %68
  %70 = sitofp i32 %69 to float
  %71 = load float, float* %16, align 4
  %72 = load i32, i32* %6, align 4
  %73 = sitofp i32 %72 to float
  %74 = fmul float %71, %73
  %75 = fdiv float %70, %74
  store float %75, float* %20, align 4
  %76 = load float, float* %20, align 4
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %7, align 4
  %79 = mul nsw i32 %77, %78
  %80 = load i32, i32* %13, align 4
  %81 = add nsw i32 %79, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds float, float* %26, i64 %82
  store float %76, float* %83, align 4
  br label %84

; <label>:84:                                     ; preds = %66
  %85 = load i32, i32* %13, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %13, align 4
  br label %62

; <label>:87:                                     ; preds = %62
  br label %88

; <label>:88:                                     ; preds = %87
  %89 = load i32, i32* %12, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %12, align 4
  br label %58

; <label>:91:                                     ; preds = %58
  store i32 0, i32* %13, align 4
  br label %92

; <label>:92:                                     ; preds = %102, %91
  %93 = load i32, i32* %13, align 4
  %94 = icmp slt i32 %93, 256
  br i1 %94, label %95, label %105

; <label>:95:                                     ; preds = %92
  %96 = load i32, i32* %13, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds float, float* %26, i64 %97
  %99 = load float, float* %98, align 4
  %100 = fpext float %99 to double
  %101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), double %100)
  br label %102

; <label>:102:                                    ; preds = %95
  %103 = load i32, i32* %13, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %13, align 4
  br label %92

; <label>:105:                                    ; preds = %92
  call void @atax(float* %26, float* %30, float* %34)
  store i32 0, i32* %3, align 4
  %106 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %106)
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 8.0.0 (tags/RELEASE_800/final)"}
