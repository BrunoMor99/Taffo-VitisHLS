; ModuleID = 'out.2.magiclangtmp.ll'
source_filename = "atax_taffo.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [39 x i8] c"target('A') scalar(range(-4096, 4096))\00", section "llvm.metadata", !taffo.info !0
@.str.1 = private unnamed_addr constant [13 x i8] c"atax_taffo.c\00", section "llvm.metadata", !taffo.info !2
@.str.2 = private unnamed_addr constant [27 x i8] c"scalar(range(-4096, 4096))\00", section "llvm.metadata", !taffo.info !4
@.str.3 = private unnamed_addr constant [21 x i8] c"scalar(range(0, 16))\00", section "llvm.metadata", !taffo.info !4
@.str.4 = private unnamed_addr constant [9 x i8] c"scalar()\00", section "llvm.metadata", !taffo.info !4
@.str.5 = private unnamed_addr constant [5 x i8] c"%f \0A\00", align 1, !taffo.info !6
@.str.6 = private unnamed_addr constant [39 x i8] c"target('x') scalar(range(-4096, 4096))\00", section "llvm.metadata", !taffo.info !2
@.str.7 = private unnamed_addr constant [39 x i8] c"target('y') scalar(range(-4096, 4096))\00", section "llvm.metadata", !taffo.info !8

; Function Attrs: noinline nounwind uwtable
define dso_local void @atax(float*, float*, float*) #0 !taffo.start !12 !taffo.equivalentChild !13 !taffo.funinfo !14 {
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8, !taffo.info !15
  %6 = alloca float*, align 8, !taffo.info !17
  %7 = alloca i32, align 4, !taffo.info !19
  %8 = alloca i32, align 4, !taffo.info !19
  %9 = alloca float*, align 8, !taffo.target !21, !taffo.info !22
  %10 = alloca float, align 4, !taffo.info !22
  %11 = alloca i32, align 4, !taffo.info !24
  %12 = alloca i32, align 4, !taffo.info !24
  %13 = alloca float, align 4, !taffo.info !26
  %14 = alloca float, align 4, !taffo.info !26
  %15 = alloca float, align 4, !taffo.info !27
  %16 = alloca float, align 4, !taffo.info !29
  %17 = alloca float, align 4, !taffo.info !30
  store float* %0, float** %4, align 8
  store float* %1, float** %5, align 8
  store float* %2, float** %6, align 8
  store i32 16, i32* %7, align 4
  store i32 16, i32* %8, align 4
  %18 = bitcast float** %9 to i8*, !taffo.target !21, !taffo.info !22
  %19 = load float*, float** %4, align 8
  store float* %19, float** %9, align 8, !taffo.target !21, !taffo.info !32
  %20 = bitcast float* %10 to i8*, !taffo.info !22
  %21 = bitcast i32* %11 to i8*, !taffo.info !24
  %22 = bitcast i32* %12 to i8*, !taffo.info !24
  %23 = bitcast float* %13 to i8*, !taffo.info !32
  %24 = load i32, i32* %8, align 4, !taffo.info !19
  %25 = sitofp i32 %24 to float, !taffo.info !19
  store float %25, float* %13, align 4, !taffo.info !32
  %26 = bitcast float* %14 to i8*, !taffo.info !32
  %27 = load i32, i32* %7, align 4, !taffo.info !19
  %28 = sitofp i32 %27 to float, !taffo.info !19
  store float %28, float* %14, align 4, !taffo.info !32
  %29 = bitcast float* %15 to i8*, !taffo.info !32
  store float 5.000000e+00, float* %15, align 4, !taffo.info !32
  %30 = bitcast float* %16 to i8*, !taffo.info !32
  store float 0.000000e+00, float* %16, align 4, !taffo.info !32
  %31 = bitcast float* %17 to i8*, !taffo.info !32
  store float 1.000000e+00, float* %17, align 4, !taffo.info !32
  store i32 0, i32* %11, align 4, !taffo.info !32
  br label %32

; <label>:32:                                     ; preds = %46, %3
  %33 = load i32, i32* %11, align 4, !taffo.info !33
  %34 = icmp slt i32 %33, 16, !taffo.info !35
  br i1 %34, label %35, label %49, !taffo.info !32

; <label>:35:                                     ; preds = %32
  %36 = load float, float* %17, align 4, !taffo.info !30
  %37 = load i32, i32* %11, align 4, !taffo.info !24
  %38 = sitofp i32 %37 to float, !taffo.info !24
  %39 = load float, float* %13, align 4, !taffo.info !26
  %40 = fdiv float %38, %39, !taffo.info !35
  %41 = fadd float %36, %40, !taffo.info !37
  %42 = load float*, float** %5, align 8, !taffo.info !15
  %43 = load i32, i32* %11, align 4, !taffo.info !24
  %44 = sext i32 %43 to i64, !taffo.info !24
  %45 = getelementptr inbounds float, float* %42, i64 %44, !taffo.info !37
  store float %41, float* %45, align 4, !taffo.info !32
  br label %46

; <label>:46:                                     ; preds = %35
  %47 = load i32, i32* %11, align 4, !taffo.info !24
  %48 = add nsw i32 %47, 1, !taffo.info !38
  store i32 %48, i32* %11, align 4, !taffo.info !32
  br label %32

; <label>:49:                                     ; preds = %32
  store i32 0, i32* %11, align 4, !taffo.info !32
  br label %50

; <label>:50:                                     ; preds = %63, %49
  %51 = load i32, i32* %11, align 4, !taffo.info !33
  %52 = icmp slt i32 %51, 16, !taffo.info !35
  br i1 %52, label %53, label %66, !taffo.info !32

; <label>:53:                                     ; preds = %50
  store i32 0, i32* %12, align 4, !taffo.info !32
  br label %54

; <label>:54:                                     ; preds = %59, %53
  %55 = load i32, i32* %12, align 4, !taffo.info !33
  %56 = load i32, i32* %8, align 4, !taffo.info !19
  %57 = icmp slt i32 %55, %56, !taffo.info !35
  br i1 %57, label %58, label %62, !taffo.info !32

; <label>:58:                                     ; preds = %54
  br label %59

; <label>:59:                                     ; preds = %58
  %60 = load i32, i32* %12, align 4, !taffo.info !24
  %61 = add nsw i32 %60, 1, !taffo.info !38
  store i32 %61, i32* %12, align 4, !taffo.info !32
  br label %54

; <label>:62:                                     ; preds = %54
  br label %63

; <label>:63:                                     ; preds = %62
  %64 = load i32, i32* %11, align 4, !taffo.info !24
  %65 = add nsw i32 %64, 1, !taffo.info !38
  store i32 %65, i32* %11, align 4, !taffo.info !32
  br label %50

; <label>:66:                                     ; preds = %50
  store i32 0, i32* %11, align 4, !taffo.info !32
  br label %67

; <label>:67:                                     ; preds = %71, %66
  %68 = load i32, i32* %11, align 4, !taffo.info !33
  %69 = icmp slt i32 %68, 16, !taffo.info !35
  br i1 %69, label %70, label %74, !taffo.info !32

; <label>:70:                                     ; preds = %67
  br label %71

; <label>:71:                                     ; preds = %70
  %72 = load i32, i32* %11, align 4, !taffo.info !24
  %73 = add nsw i32 %72, 1, !taffo.info !38
  store i32 %73, i32* %11, align 4, !taffo.info !32
  br label %67

; <label>:74:                                     ; preds = %67
  store i32 0, i32* %11, align 4, !taffo.info !32
  br label %75

; <label>:75:                                     ; preds = %132, %74
  %76 = load i32, i32* %11, align 4, !taffo.info !40
  %77 = icmp slt i32 %76, 16, !taffo.info !35
  br i1 %77, label %78, label %135, !taffo.info !32

; <label>:78:                                     ; preds = %75
  %79 = load float, float* %16, align 4, !taffo.info !29
  store float %79, float* %10, align 4, !taffo.info !32
  store i32 0, i32* %12, align 4, !taffo.info !32
  br label %80

; <label>:80:                                     ; preds = %100, %78
  %81 = load i32, i32* %12, align 4, !taffo.info !33
  %82 = icmp slt i32 %81, 16, !taffo.info !35
  br i1 %82, label %83, label %103, !taffo.info !32

; <label>:83:                                     ; preds = %80
  %84 = load float, float* %10, align 4, !taffo.info !22
  %85 = load float*, float** %9, align 8, !taffo.target !21, !taffo.info !22
  %86 = load i32, i32* %11, align 4, !taffo.info !24
  %87 = mul nsw i32 %86, 16, !taffo.info !42
  %88 = load i32, i32* %12, align 4, !taffo.info !24
  %89 = add nsw i32 %87, %88, !taffo.info !44
  %90 = sext i32 %89 to i64, !taffo.info !44
  %91 = getelementptr inbounds float, float* %85, i64 %90, !taffo.target !21, !taffo.info !22
  %92 = load float, float* %91, align 4, !taffo.target !21, !taffo.info !22
  %93 = load float*, float** %5, align 8, !taffo.info !15
  %94 = load i32, i32* %12, align 4, !taffo.info !24
  %95 = sext i32 %94 to i64, !taffo.info !24
  %96 = getelementptr inbounds float, float* %93, i64 %95, !taffo.info !37
  %97 = load float, float* %96, align 4, !taffo.info !46
  %98 = fmul float %92, %97, !taffo.target !21, !taffo.info !29
  %99 = fadd float %84, %98, !taffo.info !22
  store float %99, float* %10, align 4, !taffo.info !32
  br label %100

; <label>:100:                                    ; preds = %83
  %101 = load i32, i32* %12, align 4, !taffo.info !24
  %102 = add nsw i32 %101, 1, !taffo.info !38
  store i32 %102, i32* %12, align 4, !taffo.info !32
  br label %80

; <label>:103:                                    ; preds = %80
  store i32 0, i32* %12, align 4, !taffo.info !32
  br label %104

; <label>:104:                                    ; preds = %128, %103
  %105 = load i32, i32* %12, align 4, !taffo.info !33
  %106 = icmp slt i32 %105, 16, !taffo.info !35
  br i1 %106, label %107, label %131, !taffo.info !32

; <label>:107:                                    ; preds = %104
  %108 = load float*, float** %6, align 8, !taffo.info !17
  %109 = load i32, i32* %12, align 4, !taffo.info !24
  %110 = sext i32 %109 to i64, !taffo.info !24
  %111 = getelementptr inbounds float, float* %108, i64 %110, !taffo.info !29
  %112 = load float, float* %111, align 4, !taffo.info !29
  %113 = load float*, float** %9, align 8, !taffo.target !21, !taffo.info !22
  %114 = load i32, i32* %11, align 4, !taffo.info !24
  %115 = mul nsw i32 %114, 16, !taffo.info !42
  %116 = load i32, i32* %12, align 4, !taffo.info !24
  %117 = add nsw i32 %115, %116, !taffo.info !44
  %118 = sext i32 %117 to i64, !taffo.info !44
  %119 = getelementptr inbounds float, float* %113, i64 %118, !taffo.target !21, !taffo.info !22
  %120 = load float, float* %119, align 4, !taffo.target !21, !taffo.info !22
  %121 = load float, float* %10, align 4, !taffo.info !22
  %122 = fmul float %120, %121, !taffo.info !48
  %123 = fadd float %112, %122, !taffo.info !29
  %124 = load float*, float** %6, align 8, !taffo.info !17
  %125 = load i32, i32* %12, align 4, !taffo.info !24
  %126 = sext i32 %125 to i64, !taffo.info !24
  %127 = getelementptr inbounds float, float* %124, i64 %126, !taffo.info !29
  store float %123, float* %127, align 4, !taffo.info !32
  br label %128

; <label>:128:                                    ; preds = %107
  %129 = load i32, i32* %12, align 4, !taffo.info !24
  %130 = add nsw i32 %129, 1, !taffo.info !38
  store i32 %130, i32* %12, align 4, !taffo.info !32
  br label %104

; <label>:131:                                    ; preds = %104
  br label %132

; <label>:132:                                    ; preds = %131
  %133 = load i32, i32* %11, align 4, !taffo.info !33
  %134 = add nsw i32 %133, 1, !taffo.info !50
  store i32 %134, i32* %11, align 4, !taffo.info !32
  br label %75

; <label>:135:                                    ; preds = %75
  store i32 0, i32* %12, align 4, !taffo.info !32
  br label %136

; <label>:136:                                    ; preds = %147, %135
  %137 = load i32, i32* %12, align 4, !taffo.info !33
  %138 = icmp slt i32 %137, 16, !taffo.info !35
  br i1 %138, label %139, label %150, !taffo.info !32

; <label>:139:                                    ; preds = %136
  %140 = load float*, float** %6, align 8, !taffo.info !17
  %141 = load i32, i32* %11, align 4, !taffo.info !24
  %142 = sext i32 %141 to i64, !taffo.info !24
  %143 = getelementptr inbounds float, float* %140, i64 %142, !taffo.info !29
  %144 = load float, float* %143, align 4, !taffo.info !29
  %145 = fpext float %144 to double, !taffo.info !29
  %146 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), double %145), !taffo.info !32
  br label %147

; <label>:147:                                    ; preds = %139
  %148 = load i32, i32* %12, align 4, !taffo.info !24
  %149 = add nsw i32 %148, 1, !taffo.info !38
  store i32 %149, i32* %12, align 4, !taffo.info !32
  br label %136

; <label>:150:                                    ; preds = %136
  ret void
}

; Function Attrs: nounwind
declare !taffo.funinfo !52 void @llvm.var.annotation(i8*, i8*, i8*, i32) #1

declare !taffo.funinfo !53 dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32, i8**) #0 !taffo.start !12 !taffo.funinfo !54 {
  %3 = alloca i32, align 4, !taffo.info !17
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4, !taffo.info !19
  %7 = alloca i32, align 4, !taffo.info !19
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8, !taffo.info !55
  %10 = alloca i64, align 8, !taffo.info !19
  %11 = alloca i64, align 8, !taffo.info !19
  %12 = alloca i32, align 4, !taffo.info !24
  %13 = alloca i32, align 4, !taffo.info !24
  %14 = alloca float, align 4, !taffo.info !26
  %15 = alloca float, align 4, !taffo.info !26
  %16 = alloca float, align 4, !taffo.info !27
  %17 = alloca float, align 4, !taffo.info !29
  %18 = alloca float, align 4, !taffo.info !30
  %19 = alloca float, align 4, !taffo.info !22
  %20 = alloca float, align 4, !taffo.info !22
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 16, i32* %6, align 4
  store i32 16, i32* %7, align 4
  %21 = load i32, i32* %6, align 4, !taffo.info !19
  %22 = load i32, i32* %7, align 4, !taffo.info !19
  %23 = mul nsw i32 %21, %22, !taffo.info !55
  %24 = zext i32 %23 to i64, !taffo.info !55
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %8, align 8
  %26 = alloca float, i64 %24, align 16, !taffo.target !21, !taffo.info !22
  store i64 %24, i64* %9, align 8
  %27 = bitcast float* %26 to i8*, !taffo.target !21, !taffo.info !22
  %28 = load i32, i32* %7, align 4, !taffo.info !19
  %29 = zext i32 %28 to i64, !taffo.info !19
  %30 = alloca float, i64 %29, align 16, !taffo.target !57, !taffo.info !22
  store i64 %29, i64* %10, align 8
  %31 = bitcast float* %30 to i8*, !taffo.target !57, !taffo.info !22
  %32 = load i32, i32* %7, align 4, !taffo.info !19
  %33 = zext i32 %32 to i64, !taffo.info !19
  %34 = alloca float, i64 %33, align 16, !taffo.target !58, !taffo.info !22
  store i64 %33, i64* %11, align 8
  %35 = bitcast float* %34 to i8*, !taffo.target !58, !taffo.info !22
  %36 = bitcast i32* %12 to i8*, !taffo.info !24
  %37 = bitcast i32* %13 to i8*, !taffo.info !24
  %38 = bitcast float* %14 to i8*, !taffo.info !32
  store float 1.600000e+01, float* %14, align 4, !taffo.info !32
  %39 = bitcast float* %15 to i8*, !taffo.info !32
  store float 1.600000e+01, float* %15, align 4, !taffo.info !32
  %40 = bitcast float* %16 to i8*, !taffo.info !32
  store float 5.000000e+00, float* %16, align 4, !taffo.info !32
  %41 = bitcast float* %17 to i8*, !taffo.info !32
  store float 0.000000e+00, float* %17, align 4, !taffo.info !32
  %42 = bitcast float* %18 to i8*, !taffo.info !32
  store float 1.000000e+00, float* %18, align 4, !taffo.info !32
  %43 = bitcast float* %19 to i8*, !taffo.info !22
  %44 = bitcast float* %20 to i8*, !taffo.info !22
  store i32 0, i32* %12, align 4, !taffo.info !32
  br label %45

; <label>:45:                                     ; preds = %54, %2
  %46 = load i32, i32* %12, align 4, !taffo.info !33
  %47 = icmp slt i32 %46, 16, !taffo.info !35
  br i1 %47, label %48, label %57, !taffo.info !32

; <label>:48:                                     ; preds = %45
  %49 = load float, float* %18, align 4, !taffo.info !30
  store float %49, float* %19, align 4, !taffo.info !32
  %50 = load float, float* %19, align 4, !taffo.info !22
  %51 = load i32, i32* %12, align 4, !taffo.info !24
  %52 = sext i32 %51 to i64, !taffo.info !24
  %53 = getelementptr inbounds float, float* %30, i64 %52, !taffo.target !57, !taffo.info !22
  store float %50, float* %53, align 4, !taffo.target !57, !taffo.info !32
  br label %54

; <label>:54:                                     ; preds = %48
  %55 = load i32, i32* %12, align 4, !taffo.info !24
  %56 = add nsw i32 %55, 1, !taffo.info !38
  store i32 %56, i32* %12, align 4, !taffo.info !32
  br label %45

; <label>:57:                                     ; preds = %45
  store i32 0, i32* %12, align 4, !taffo.info !32
  br label %58

; <label>:58:                                     ; preds = %88, %57
  %59 = load i32, i32* %12, align 4, !taffo.info !33
  %60 = icmp slt i32 %59, 16, !taffo.info !35
  br i1 %60, label %61, label %91, !taffo.info !32

; <label>:61:                                     ; preds = %58
  store i32 0, i32* %13, align 4, !taffo.info !32
  br label %62

; <label>:62:                                     ; preds = %84, %61
  %63 = load i32, i32* %13, align 4, !taffo.info !33
  %64 = load i32, i32* %7, align 4, !taffo.info !19
  %65 = icmp slt i32 %63, %64, !taffo.info !35
  br i1 %65, label %66, label %87, !taffo.info !32

; <label>:66:                                     ; preds = %62
  %67 = load i32, i32* %12, align 4, !taffo.info !24
  %68 = load i32, i32* %13, align 4, !taffo.info !24
  %69 = add nsw i32 %67, %68, !taffo.info !59
  %70 = sitofp i32 %69 to float, !taffo.info !59
  %71 = load float, float* %16, align 4, !taffo.info !27
  %72 = load i32, i32* %6, align 4, !taffo.info !19
  %73 = sitofp i32 %72 to float, !taffo.info !19
  %74 = fmul float %71, %73, !taffo.info !61
  %75 = fdiv float %70, %74, !taffo.info !63
  store float %75, float* %20, align 4, !taffo.info !32
  %76 = load float, float* %20, align 4, !taffo.info !22
  %77 = load i32, i32* %12, align 4, !taffo.info !24
  %78 = load i32, i32* %7, align 4, !taffo.info !19
  %79 = mul nsw i32 %77, %78, !taffo.info !42
  %80 = load i32, i32* %13, align 4, !taffo.info !24
  %81 = add nsw i32 %79, %80, !taffo.info !44
  %82 = sext i32 %81 to i64, !taffo.info !44
  %83 = getelementptr inbounds float, float* %26, i64 %82, !taffo.target !21, !taffo.info !22
  store float %76, float* %83, align 4, !taffo.target !21, !taffo.info !32
  br label %84

; <label>:84:                                     ; preds = %66
  %85 = load i32, i32* %13, align 4, !taffo.info !24
  %86 = add nsw i32 %85, 1, !taffo.info !38
  store i32 %86, i32* %13, align 4, !taffo.info !32
  br label %62

; <label>:87:                                     ; preds = %62
  br label %88

; <label>:88:                                     ; preds = %87
  %89 = load i32, i32* %12, align 4, !taffo.info !24
  %90 = add nsw i32 %89, 1, !taffo.info !38
  store i32 %90, i32* %12, align 4, !taffo.info !32
  br label %58

; <label>:91:                                     ; preds = %58
  store i32 0, i32* %13, align 4, !taffo.info !32
  br label %92

; <label>:92:                                     ; preds = %102, %91
  %93 = load i32, i32* %13, align 4, !taffo.info !33
  %94 = icmp slt i32 %93, 256, !taffo.info !30
  br i1 %94, label %95, label %105, !taffo.info !32

; <label>:95:                                     ; preds = %92
  %96 = load i32, i32* %13, align 4, !taffo.info !24
  %97 = sext i32 %96 to i64, !taffo.info !24
  %98 = getelementptr inbounds float, float* %26, i64 %97, !taffo.target !21, !taffo.info !22
  %99 = load float, float* %98, align 4, !taffo.target !21, !taffo.info !22
  %100 = fpext float %99 to double, !taffo.target !21, !taffo.info !22
  %101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), double %100), !taffo.target !21, !taffo.info !32
  br label %102

; <label>:102:                                    ; preds = %95
  %103 = load i32, i32* %13, align 4, !taffo.info !24
  %104 = add nsw i32 %103, 1, !taffo.info !38
  store i32 %104, i32* %13, align 4, !taffo.info !32
  br label %92

; <label>:105:                                    ; preds = %92
  call void @atax.1(float* %26, float* %30, float* %34), !taffo.target !21, !taffo.info !32, !taffo.originalCall !65
  store i32 0, i32* %3, align 4
  %106 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %106)
  %107 = load i32, i32* %3, align 4, !taffo.info !17
  ret i32 %107, !taffo.info !17
}

; Function Attrs: nounwind
declare !taffo.funinfo !66 i8* @llvm.stacksave() #1

; Function Attrs: nounwind
declare !taffo.funinfo !53 void @llvm.stackrestore(i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @atax.1(float*, float*, float*) #0 !taffo.start !12 !taffo.funinfo !67 !taffo.sourceFunction !65 {
  %4 = alloca float*, align 8, !taffo.info !22
  %5 = alloca float*, align 8, !taffo.info !22
  %6 = alloca float*, align 8, !taffo.info !22
  %7 = alloca i32, align 4, !taffo.info !19
  %8 = alloca i32, align 4, !taffo.info !19
  %9 = alloca float*, align 8, !taffo.target !21, !taffo.info !22
  %10 = alloca float, align 4, !taffo.info !22
  %11 = alloca i32, align 4, !taffo.info !24
  %12 = alloca i32, align 4, !taffo.info !24
  %13 = alloca float, align 4, !taffo.info !26
  %14 = alloca float, align 4, !taffo.info !26
  %15 = alloca float, align 4, !taffo.info !27
  %16 = alloca float, align 4, !taffo.info !29
  %17 = alloca float, align 4, !taffo.info !30
  store float* %0, float** %4, align 8, !taffo.info !32
  store float* %1, float** %5, align 8, !taffo.info !32
  store float* %2, float** %6, align 8, !taffo.info !32
  store i32 16, i32* %7, align 4
  store i32 16, i32* %8, align 4
  %18 = bitcast float** %9 to i8*, !taffo.target !21, !taffo.info !22
  %19 = load float*, float** %4, align 8, !taffo.info !22
  store float* %19, float** %9, align 8, !taffo.target !21, !taffo.info !32
  %20 = bitcast float* %10 to i8*, !taffo.info !22
  %21 = bitcast i32* %11 to i8*, !taffo.info !24
  %22 = bitcast i32* %12 to i8*, !taffo.info !24
  %23 = bitcast float* %13 to i8*, !taffo.info !32
  %24 = load i32, i32* %8, align 4, !taffo.info !19
  %25 = sitofp i32 %24 to float, !taffo.info !19
  store float %25, float* %13, align 4, !taffo.info !32
  %26 = bitcast float* %14 to i8*, !taffo.info !32
  %27 = load i32, i32* %7, align 4, !taffo.info !19
  %28 = sitofp i32 %27 to float, !taffo.info !19
  store float %28, float* %14, align 4, !taffo.info !32
  %29 = bitcast float* %15 to i8*, !taffo.info !32
  store float 5.000000e+00, float* %15, align 4, !taffo.info !32
  %30 = bitcast float* %16 to i8*, !taffo.info !32
  store float 0.000000e+00, float* %16, align 4, !taffo.info !32
  %31 = bitcast float* %17 to i8*, !taffo.info !32
  store float 1.000000e+00, float* %17, align 4, !taffo.info !32
  store i32 0, i32* %11, align 4, !taffo.info !32
  br label %32

; <label>:32:                                     ; preds = %46, %3
  %33 = load i32, i32* %11, align 4, !taffo.info !33
  %34 = icmp slt i32 %33, 16, !taffo.info !35
  br i1 %34, label %35, label %49, !taffo.info !32

; <label>:35:                                     ; preds = %32
  %36 = load float, float* %17, align 4, !taffo.info !30
  %37 = load i32, i32* %11, align 4, !taffo.info !33
  %38 = sitofp i32 %37 to float, !taffo.info !33
  %39 = load float, float* %13, align 4, !taffo.info !26
  %40 = fdiv float %38, %39, !taffo.info !70
  %41 = fadd float %36, %40, !taffo.info !72
  %42 = load float*, float** %5, align 8, !taffo.info !22
  %43 = load i32, i32* %11, align 4, !taffo.info !33
  %44 = sext i32 %43 to i64, !taffo.info !33
  %45 = getelementptr inbounds float, float* %42, i64 %44, !taffo.info !22
  store float %41, float* %45, align 4, !taffo.info !32
  br label %46

; <label>:46:                                     ; preds = %35
  %47 = load i32, i32* %11, align 4, !taffo.info !24
  %48 = add nsw i32 %47, 1, !taffo.info !38
  store i32 %48, i32* %11, align 4, !taffo.info !32
  br label %32

; <label>:49:                                     ; preds = %32
  store i32 0, i32* %11, align 4, !taffo.info !32
  br label %50

; <label>:50:                                     ; preds = %63, %49
  %51 = load i32, i32* %11, align 4, !taffo.info !40
  %52 = icmp slt i32 %51, 16, !taffo.info !35
  br i1 %52, label %53, label %66, !taffo.info !32

; <label>:53:                                     ; preds = %50
  store i32 0, i32* %12, align 4, !taffo.info !32
  br label %54

; <label>:54:                                     ; preds = %59, %53
  %55 = load i32, i32* %12, align 4, !taffo.info !40
  %56 = load i32, i32* %8, align 4, !taffo.info !19
  %57 = icmp slt i32 %55, %56, !taffo.info !35
  br i1 %57, label %58, label %62, !taffo.info !32

; <label>:58:                                     ; preds = %54
  br label %59

; <label>:59:                                     ; preds = %58
  %60 = load i32, i32* %12, align 4, !taffo.info !33
  %61 = add nsw i32 %60, 1, !taffo.info !50
  store i32 %61, i32* %12, align 4, !taffo.info !32
  br label %54

; <label>:62:                                     ; preds = %54
  br label %63

; <label>:63:                                     ; preds = %62
  %64 = load i32, i32* %11, align 4, !taffo.info !33
  %65 = add nsw i32 %64, 1, !taffo.info !50
  store i32 %65, i32* %11, align 4, !taffo.info !32
  br label %50

; <label>:66:                                     ; preds = %50
  store i32 0, i32* %11, align 4, !taffo.info !32
  br label %67

; <label>:67:                                     ; preds = %71, %66
  %68 = load i32, i32* %11, align 4, !taffo.info !40
  %69 = icmp slt i32 %68, 16, !taffo.info !35
  br i1 %69, label %70, label %74, !taffo.info !32

; <label>:70:                                     ; preds = %67
  br label %71

; <label>:71:                                     ; preds = %70
  %72 = load i32, i32* %11, align 4, !taffo.info !33
  %73 = add nsw i32 %72, 1, !taffo.info !50
  store i32 %73, i32* %11, align 4, !taffo.info !32
  br label %67

; <label>:74:                                     ; preds = %67
  store i32 0, i32* %11, align 4, !taffo.info !32
  br label %75

; <label>:75:                                     ; preds = %132, %74
  %76 = load i32, i32* %11, align 4, !taffo.info !74
  %77 = icmp slt i32 %76, 16, !taffo.info !35
  br i1 %77, label %78, label %135, !taffo.info !32

; <label>:78:                                     ; preds = %75
  %79 = load float, float* %16, align 4, !taffo.info !29
  store float %79, float* %10, align 4, !taffo.info !32
  store i32 0, i32* %12, align 4, !taffo.info !32
  br label %80

; <label>:80:                                     ; preds = %100, %78
  %81 = load i32, i32* %12, align 4, !taffo.info !40
  %82 = icmp slt i32 %81, 16, !taffo.info !35
  br i1 %82, label %83, label %103, !taffo.info !32

; <label>:83:                                     ; preds = %80
  %84 = load float, float* %10, align 4, !taffo.info !22
  %85 = load float*, float** %9, align 8, !taffo.target !21, !taffo.info !22
  %86 = load i32, i32* %11, align 4, !taffo.info !40
  %87 = mul nsw i32 %86, 16, !taffo.info !76
  %88 = load i32, i32* %12, align 4, !taffo.info !33
  %89 = add nsw i32 %87, %88, !taffo.info !78
  %90 = sext i32 %89 to i64, !taffo.info !78
  %91 = getelementptr inbounds float, float* %85, i64 %90, !taffo.target !21, !taffo.info !22
  %92 = load float, float* %91, align 4, !taffo.target !21, !taffo.info !22
  %93 = load float*, float** %5, align 8, !taffo.info !22
  %94 = load i32, i32* %12, align 4, !taffo.info !33
  %95 = sext i32 %94 to i64, !taffo.info !33
  %96 = getelementptr inbounds float, float* %93, i64 %95, !taffo.info !22
  %97 = load float, float* %96, align 4, !taffo.info !22
  %98 = fmul float %92, %97, !taffo.target !21, !taffo.info !80
  %99 = fadd float %84, %98, !taffo.info !82
  store float %99, float* %10, align 4, !taffo.info !32
  br label %100

; <label>:100:                                    ; preds = %83
  %101 = load i32, i32* %12, align 4, !taffo.info !33
  %102 = add nsw i32 %101, 1, !taffo.info !50
  store i32 %102, i32* %12, align 4, !taffo.info !32
  br label %80

; <label>:103:                                    ; preds = %80
  store i32 0, i32* %12, align 4, !taffo.info !32
  br label %104

; <label>:104:                                    ; preds = %128, %103
  %105 = load i32, i32* %12, align 4, !taffo.info !84
  %106 = icmp slt i32 %105, 16, !taffo.info !35
  br i1 %106, label %107, label %131, !taffo.info !32

; <label>:107:                                    ; preds = %104
  %108 = load float*, float** %6, align 8, !taffo.info !68
  %109 = load i32, i32* %12, align 4, !taffo.info !33
  %110 = sext i32 %109 to i64, !taffo.info !33
  %111 = getelementptr inbounds float, float* %108, i64 %110, !taffo.info !68
  %112 = load float, float* %111, align 4, !taffo.info !68
  %113 = load float*, float** %9, align 8, !taffo.target !21, !taffo.info !22
  %114 = load i32, i32* %11, align 4, !taffo.info !33
  %115 = mul nsw i32 %114, 16, !taffo.info !44
  %116 = load i32, i32* %12, align 4, !taffo.info !33
  %117 = add nsw i32 %115, %116, !taffo.info !86
  %118 = sext i32 %117 to i64, !taffo.info !86
  %119 = getelementptr inbounds float, float* %113, i64 %118, !taffo.target !21, !taffo.info !22
  %120 = load float, float* %119, align 4, !taffo.target !21, !taffo.info !22
  %121 = load float, float* %10, align 4, !taffo.info !22
  %122 = fmul float %120, %121, !taffo.info !80
  %123 = fadd float %112, %122, !taffo.info !68
  %124 = load float*, float** %6, align 8, !taffo.info !68
  %125 = load i32, i32* %12, align 4, !taffo.info !33
  %126 = sext i32 %125 to i64, !taffo.info !33
  %127 = getelementptr inbounds float, float* %124, i64 %126, !taffo.info !68
  store float %123, float* %127, align 4, !taffo.info !32
  br label %128

; <label>:128:                                    ; preds = %107
  %129 = load i32, i32* %12, align 4, !taffo.info !68
  %130 = add nsw i32 %129, 1, !taffo.info !84
  store i32 %130, i32* %12, align 4, !taffo.info !32
  br label %104

; <label>:131:                                    ; preds = %104
  br label %132

; <label>:132:                                    ; preds = %131
  %133 = load i32, i32* %11, align 4, !taffo.info !84
  %134 = add nsw i32 %133, 1, !taffo.info !74
  store i32 %134, i32* %11, align 4, !taffo.info !32
  br label %75

; <label>:135:                                    ; preds = %75
  store i32 0, i32* %12, align 4, !taffo.info !32
  br label %136

; <label>:136:                                    ; preds = %147, %135
  %137 = load i32, i32* %12, align 4, !taffo.info !33
  %138 = icmp slt i32 %137, 16, !taffo.info !35
  br i1 %138, label %139, label %150, !taffo.info !32

; <label>:139:                                    ; preds = %136
  %140 = load float*, float** %6, align 8, !taffo.info !68
  %141 = load i32, i32* %11, align 4, !taffo.info !33
  %142 = sext i32 %141 to i64, !taffo.info !33
  %143 = getelementptr inbounds float, float* %140, i64 %142, !taffo.info !68
  %144 = load float, float* %143, align 4, !taffo.info !68
  %145 = fpext float %144 to double, !taffo.info !68
  %146 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), double %145), !taffo.info !32
  br label %147

; <label>:147:                                    ; preds = %139
  %148 = load i32, i32* %12, align 4, !taffo.info !24
  %149 = add nsw i32 %148, 1, !taffo.info !38
  store i32 %149, i32* %12, align 4, !taffo.info !32
  br label %136

; <label>:150:                                    ; preds = %136
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
!7 = !{double 0.000000e+00, double 1.020000e+02}
!8 = !{i1 false, !9, i1 false, i1 false}
!9 = !{double 0.000000e+00, double 1.210000e+02}
!10 = !{i32 1, !"wchar_size", i32 4}
!11 = !{!"clang version 8.0.0 (tags/RELEASE_800/final)"}
!12 = !{i1 true}
!13 = !{void (float*, float*, float*)* @atax.1}
!14 = !{i32 0, i1 false, i32 1, !15, i32 1, !17}
!15 = !{i1 false, !16, i1 false, i1 false}
!16 = !{double 1.000000e+00, double 2.000000e+00}
!17 = !{i1 false, !18, i1 false, i1 false}
!18 = !{double 0.000000e+00, double 0.000000e+00}
!19 = !{i1 false, !20, i1 false, i1 false}
!20 = !{double 1.600000e+01, double 1.600000e+01}
!21 = !{!"A"}
!22 = !{i1 false, !23, i1 false, i1 true}
!23 = !{double -4.096000e+03, double 4.096000e+03}
!24 = !{i1 false, !25, i1 false, i1 true}
!25 = !{double 0.000000e+00, double 1.600000e+01}
!26 = !{i1 false, !20, i1 false, i1 true}
!27 = !{i1 false, !28, i1 false, i1 true}
!28 = !{double 5.000000e+00, double 5.000000e+00}
!29 = !{i1 false, !18, i1 false, i1 true}
!30 = !{i1 false, !31, i1 false, i1 true}
!31 = !{double 1.000000e+00, double 1.000000e+00}
!32 = !{i1 false, i1 false, i1 false, i1 true}
!33 = !{i1 false, !34, i1 false, i1 true}
!34 = !{double 0.000000e+00, double 1.700000e+01}
!35 = !{i1 false, !36, i1 false, i1 true}
!36 = !{double 0.000000e+00, double 1.000000e+00}
!37 = !{i1 false, !16, i1 false, i1 true}
!38 = !{i1 false, !39, i1 false, i1 true}
!39 = !{double 1.000000e+00, double 1.700000e+01}
!40 = !{i1 false, !41, i1 false, i1 true}
!41 = !{double 0.000000e+00, double 1.800000e+01}
!42 = !{i1 false, !43, i1 false, i1 true}
!43 = !{double 0.000000e+00, double 2.560000e+02}
!44 = !{i1 false, !45, i1 false, i1 true}
!45 = !{double 0.000000e+00, double 2.720000e+02}
!46 = !{i1 false, !47, i1 false, i1 true}
!47 = !{double 0.000000e+00, double 2.000000e+00}
!48 = !{i1 false, !49, i1 false, i1 true}
!49 = !{double -0.000000e+00, double -0.000000e+00}
!50 = !{i1 false, !51, i1 false, i1 true}
!51 = !{double 1.000000e+00, double 1.800000e+01}
!52 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!53 = !{i32 0, i1 false}
!54 = !{i32 0, i1 false, i32 0, i1 false}
!55 = !{i1 false, !56, i1 false, i1 false}
!56 = !{double 2.560000e+02, double 2.560000e+02}
!57 = !{!"x"}
!58 = !{!"y"}
!59 = !{i1 false, !60, i1 false, i1 true}
!60 = !{double 0.000000e+00, double 3.200000e+01}
!61 = !{i1 false, !62, i1 false, i1 true}
!62 = !{double 8.000000e+01, double 8.000000e+01}
!63 = !{i1 false, !64, i1 false, i1 true}
!64 = !{double 0.000000e+00, double 4.000000e-01}
!65 = !{void (float*, float*, float*)* @atax}
!66 = !{}
!67 = !{i32 1, !22, i32 1, !22, i32 1, !68}
!68 = !{i1 false, !69, i1 false, i1 true}
!69 = !{double 0xC170000000000000, double 0x4170000110000000}
!70 = !{i1 false, !71, i1 false, i1 true}
!71 = !{double 0.000000e+00, double 1.062500e+00}
!72 = !{i1 false, !73, i1 false, i1 true}
!73 = !{double 1.000000e+00, double 2.062500e+00}
!74 = !{i1 false, !75, i1 false, i1 true}
!75 = !{double 0xC16FFFFFC0000000, double 0x4170000130000000}
!76 = !{i1 false, !77, i1 false, i1 true}
!77 = !{double 0.000000e+00, double 2.880000e+02}
!78 = !{i1 false, !79, i1 false, i1 true}
!79 = !{double 0.000000e+00, double 3.050000e+02}
!80 = !{i1 false, !81, i1 false, i1 true}
!81 = !{double 0xC170000000000000, double 0x4170000000000000}
!82 = !{i1 false, !83, i1 false, i1 true}
!83 = !{double 0xC170010000000000, double 0x4170010000000000}
!84 = !{i1 false, !85, i1 false, i1 true}
!85 = !{double 0xC16FFFFFE0000000, double 0x4170000120000000}
!86 = !{i1 false, !87, i1 false, i1 true}
!87 = !{double 0.000000e+00, double 2.890000e+02}
