; ModuleID = 'atax_taffo.c'
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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @atax(float*, float*, float*) #0 {
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store float* %0, float** %4, align 8
  store float* %1, float** %5, align 8
  store float* %2, float** %6, align 8
  store i32 16, i32* %7, align 4
  store i32 16, i32* %8, align 4
  %15 = bitcast float** %9 to i8*
  call void @llvm.var.annotation(i8* %15, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 31)
  %16 = load float*, float** %4, align 8
  store float* %16, float** %9, align 8
  %17 = bitcast float** %10 to i8*
  call void @llvm.var.annotation(i8* %17, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 33)
  %18 = load float*, float** %5, align 8
  store float* %18, float** %10, align 8
  %19 = bitcast float* %11 to i8*
  call void @llvm.var.annotation(i8* %19, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 35)
  %20 = bitcast float* %12 to i8*
  call void @llvm.var.annotation(i8* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 36)
  store float 0.000000e+00, float* %12, align 4
  %21 = bitcast i32* %13 to i8*
  call void @llvm.var.annotation(i8* %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 38)
  %22 = bitcast i32* %14 to i8*
  call void @llvm.var.annotation(i8* %22, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 39)
  store i32 0, i32* %13, align 4
  br label %23

; <label>:23:                                     ; preds = %80, %3
  %24 = load i32, i32* %13, align 4
  %25 = icmp slt i32 %24, 16
  br i1 %25, label %26, label %83

; <label>:26:                                     ; preds = %23
  %27 = load float, float* %12, align 4
  store float %27, float* %11, align 4
  store i32 0, i32* %14, align 4
  br label %28

; <label>:28:                                     ; preds = %48, %26
  %29 = load i32, i32* %14, align 4
  %30 = icmp slt i32 %29, 16
  br i1 %30, label %31, label %51

; <label>:31:                                     ; preds = %28
  %32 = load float, float* %11, align 4
  %33 = load float*, float** %9, align 8
  %34 = load i32, i32* %13, align 4
  %35 = mul nsw i32 %34, 16
  %36 = load i32, i32* %14, align 4
  %37 = add nsw i32 %35, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds float, float* %33, i64 %38
  %40 = load float, float* %39, align 4
  %41 = load float*, float** %10, align 8
  %42 = load i32, i32* %14, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds float, float* %41, i64 %43
  %45 = load float, float* %44, align 4
  %46 = fmul float %40, %45
  %47 = fadd float %32, %46
  store float %47, float* %11, align 4
  br label %48

; <label>:48:                                     ; preds = %31
  %49 = load i32, i32* %14, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %14, align 4
  br label %28

; <label>:51:                                     ; preds = %28
  store i32 0, i32* %14, align 4
  br label %52

; <label>:52:                                     ; preds = %76, %51
  %53 = load i32, i32* %14, align 4
  %54 = icmp slt i32 %53, 16
  br i1 %54, label %55, label %79

; <label>:55:                                     ; preds = %52
  %56 = load float*, float** %6, align 8
  %57 = load i32, i32* %14, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds float, float* %56, i64 %58
  %60 = load float, float* %59, align 4
  %61 = load float*, float** %9, align 8
  %62 = load i32, i32* %13, align 4
  %63 = mul nsw i32 %62, 16
  %64 = load i32, i32* %14, align 4
  %65 = add nsw i32 %63, %64
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds float, float* %61, i64 %66
  %68 = load float, float* %67, align 4
  %69 = load float, float* %11, align 4
  %70 = fmul float %68, %69
  %71 = fadd float %60, %70
  %72 = load float*, float** %6, align 8
  %73 = load i32, i32* %14, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds float, float* %72, i64 %74
  store float %71, float* %75, align 4
  br label %76

; <label>:76:                                     ; preds = %55
  %77 = load i32, i32* %14, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %14, align 4
  br label %52

; <label>:79:                                     ; preds = %52
  br label %80

; <label>:80:                                     ; preds = %79
  %81 = load i32, i32* %13, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %13, align 4
  br label %23

; <label>:83:                                     ; preds = %23
  ret void
}

; Function Attrs: nounwind
declare void @llvm.var.annotation(i8*, i8*, i8*, i32) #1

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
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
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
  %28 = alloca float, i64 %26, align 16
  store i64 %26, i64* %9, align 8
  %29 = bitcast float* %28 to i8*
  call void @llvm.var.annotation(i8* %29, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 65)
  %30 = load i32, i32* %7, align 4
  %31 = zext i32 %30 to i64
  %32 = alloca float, i64 %31, align 16
  store i64 %31, i64* %10, align 8
  %33 = bitcast float* %32 to i8*
  call void @llvm.var.annotation(i8* %33, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 66)
  %34 = load i32, i32* %7, align 4
  %35 = zext i32 %34 to i64
  %36 = alloca float, i64 %35, align 16
  store i64 %35, i64* %11, align 8
  %37 = bitcast float* %36 to i8*
  call void @llvm.var.annotation(i8* %37, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 67)
  %38 = load i32, i32* %7, align 4
  %39 = zext i32 %38 to i64
  %40 = alloca float, i64 %39, align 16
  store i64 %39, i64* %12, align 8
  %41 = bitcast float* %40 to i8*
  call void @llvm.var.annotation(i8* %41, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 68)
  %42 = bitcast i32* %13 to i8*
  call void @llvm.var.annotation(i8* %42, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 70)
  %43 = bitcast i32* %14 to i8*
  call void @llvm.var.annotation(i8* %43, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 71)
  %44 = bitcast float* %15 to i8*
  call void @llvm.var.annotation(i8* %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 72)
  store float 1.600000e+01, float* %15, align 4
  %45 = bitcast float* %16 to i8*
  call void @llvm.var.annotation(i8* %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 74)
  store float 1.600000e+01, float* %16, align 4
  %46 = bitcast float* %17 to i8*
  call void @llvm.var.annotation(i8* %46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 76)
  store float 5.000000e+00, float* %17, align 4
  %47 = bitcast float* %18 to i8*
  call void @llvm.var.annotation(i8* %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 78)
  store float 0.000000e+00, float* %18, align 4
  %48 = bitcast float* %19 to i8*
  call void @llvm.var.annotation(i8* %48, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 80)
  store float 1.000000e+00, float* %19, align 4
  %49 = bitcast float* %20 to i8*
  call void @llvm.var.annotation(i8* %49, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 83)
  %50 = bitcast float* %21 to i8*
  call void @llvm.var.annotation(i8* %50, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 84)
  store i32 0, i32* %13, align 4
  br label %51

; <label>:51:                                     ; preds = %65, %2
  %52 = load i32, i32* %13, align 4
  %53 = icmp slt i32 %52, 16
  br i1 %53, label %54, label %68

; <label>:54:                                     ; preds = %51
  %55 = load float, float* %19, align 4
  %56 = load i32, i32* %13, align 4
  %57 = sitofp i32 %56 to float
  %58 = load float, float* %15, align 4
  %59 = fdiv float %57, %58
  %60 = fadd float %55, %59
  store float %60, float* %20, align 4
  %61 = load float, float* %20, align 4
  %62 = load i32, i32* %13, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds float, float* %32, i64 %63
  store float %61, float* %64, align 4
  br label %65

; <label>:65:                                     ; preds = %54
  %66 = load i32, i32* %13, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %13, align 4
  br label %51

; <label>:68:                                     ; preds = %51
  store i32 0, i32* %13, align 4
  br label %69

; <label>:69:                                     ; preds = %101, %68
  %70 = load i32, i32* %13, align 4
  %71 = icmp slt i32 %70, 16
  br i1 %71, label %72, label %104

; <label>:72:                                     ; preds = %69
  store i32 0, i32* %14, align 4
  br label %73

; <label>:73:                                     ; preds = %97, %72
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %100

; <label>:77:                                     ; preds = %73
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %14, align 4
  %80 = add nsw i32 %78, %79
  %81 = load i32, i32* %7, align 4
  %82 = srem i32 %80, %81
  %83 = sitofp i32 %82 to float
  %84 = load float, float* %17, align 4
  %85 = load i32, i32* %6, align 4
  %86 = sitofp i32 %85 to float
  %87 = fmul float %84, %86
  %88 = fdiv float %83, %87
  store float %88, float* %21, align 4
  %89 = load float, float* %21, align 4
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* %7, align 4
  %92 = mul nsw i32 %90, %91
  %93 = load i32, i32* %14, align 4
  %94 = add nsw i32 %92, %93
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds float, float* %28, i64 %95
  store float %89, float* %96, align 4
  br label %97

; <label>:97:                                     ; preds = %77
  %98 = load i32, i32* %14, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %14, align 4
  br label %73

; <label>:100:                                    ; preds = %73
  br label %101

; <label>:101:                                    ; preds = %100
  %102 = load i32, i32* %13, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %13, align 4
  br label %69

; <label>:104:                                    ; preds = %69
  store i32 0, i32* %13, align 4
  br label %105

; <label>:105:                                    ; preds = %117, %104
  %106 = load i32, i32* %13, align 4
  %107 = icmp slt i32 %106, 16
  br i1 %107, label %108, label %120

; <label>:108:                                    ; preds = %105
  %109 = load float, float* %18, align 4
  %110 = load i32, i32* %13, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds float, float* %36, i64 %111
  store float %109, float* %112, align 4
  %113 = load float, float* %18, align 4
  %114 = load i32, i32* %13, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds float, float* %40, i64 %115
  store float %113, float* %116, align 4
  br label %117

; <label>:117:                                    ; preds = %108
  %118 = load i32, i32* %13, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %13, align 4
  br label %105

; <label>:120:                                    ; preds = %105
  %121 = bitcast float* %22 to i8*
  call void @llvm.var.annotation(i8* %121, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 103)
  store i32 0, i32* %13, align 4
  br label %122

; <label>:122:                                    ; preds = %174, %120
  %123 = load i32, i32* %13, align 4
  %124 = icmp slt i32 %123, 16
  br i1 %124, label %125, label %177

; <label>:125:                                    ; preds = %122
  %126 = load float, float* %18, align 4
  store float %126, float* %22, align 4
  store i32 0, i32* %14, align 4
  br label %127

; <label>:127:                                    ; preds = %145, %125
  %128 = load i32, i32* %14, align 4
  %129 = icmp slt i32 %128, 16
  br i1 %129, label %130, label %148

; <label>:130:                                    ; preds = %127
  %131 = load float, float* %22, align 4
  %132 = load i32, i32* %13, align 4
  %133 = mul nsw i32 %132, 16
  %134 = load i32, i32* %14, align 4
  %135 = add nsw i32 %133, %134
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds float, float* %28, i64 %136
  %138 = load float, float* %137, align 4
  %139 = load i32, i32* %14, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds float, float* %32, i64 %140
  %142 = load float, float* %141, align 4
  %143 = fmul float %138, %142
  %144 = fadd float %131, %143
  store float %144, float* %22, align 4
  br label %145

; <label>:145:                                    ; preds = %130
  %146 = load i32, i32* %14, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %14, align 4
  br label %127

; <label>:148:                                    ; preds = %127
  store i32 0, i32* %14, align 4
  br label %149

; <label>:149:                                    ; preds = %170, %148
  %150 = load i32, i32* %14, align 4
  %151 = icmp slt i32 %150, 16
  br i1 %151, label %152, label %173

; <label>:152:                                    ; preds = %149
  %153 = load i32, i32* %14, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds float, float* %40, i64 %154
  %156 = load float, float* %155, align 4
  %157 = load i32, i32* %13, align 4
  %158 = mul nsw i32 %157, 16
  %159 = load i32, i32* %14, align 4
  %160 = add nsw i32 %158, %159
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds float, float* %28, i64 %161
  %163 = load float, float* %162, align 4
  %164 = load float, float* %22, align 4
  %165 = fmul float %163, %164
  %166 = fadd float %156, %165
  %167 = load i32, i32* %14, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds float, float* %40, i64 %168
  store float %166, float* %169, align 4
  br label %170

; <label>:170:                                    ; preds = %152
  %171 = load i32, i32* %14, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %14, align 4
  br label %149

; <label>:173:                                    ; preds = %149
  br label %174

; <label>:174:                                    ; preds = %173
  %175 = load i32, i32* %13, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %13, align 4
  br label %122

; <label>:177:                                    ; preds = %122
  call void @atax(float* %28, float* %32, float* %36)
  store i32 0, i32* %13, align 4
  br label %178

; <label>:178:                                    ; preds = %194, %177
  %179 = load i32, i32* %13, align 4
  %180 = icmp slt i32 %179, 16
  br i1 %180, label %181, label %197

; <label>:181:                                    ; preds = %178
  %182 = load i32, i32* %13, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds float, float* %36, i64 %183
  %185 = load float, float* %184, align 4
  %186 = fpext float %185 to double
  %187 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), double %186)
  %188 = load i32, i32* %13, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds float, float* %40, i64 %189
  %191 = load float, float* %190, align 4
  %192 = fpext float %191 to double
  %193 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), double %192)
  br label %194

; <label>:194:                                    ; preds = %181
  %195 = load i32, i32* %13, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %13, align 4
  br label %178

; <label>:197:                                    ; preds = %178
  store i32 0, i32* %3, align 4
  %198 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %198)
  %199 = load i32, i32* %3, align 4
  ret i32 %199
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 8.0.0 (tags/RELEASE_800/final)"}
