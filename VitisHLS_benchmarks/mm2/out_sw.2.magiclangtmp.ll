; ModuleID = 'out_sw.1.magiclangtmp.ll'
source_filename = "mm2_taffo.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"scalar(range(0, 5))\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [12 x i8] c"mm2_taffo.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [9 x i8] c"scalar()\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [42 x i8] c"target('Ds') scalar(range(-16384, 16384))\00", section "llvm.metadata"
@.str.4 = private unnamed_addr constant [29 x i8] c"scalar(range(-16384, 16384))\00", section "llvm.metadata"
@.str.5 = private unnamed_addr constant [21 x i8] c"scalar(range(0, 16))\00", section "llvm.metadata"

; Function Attrs: noinline nounwind uwtable
define dso_local void @mm2(float*, float*, float*, float*, float, float) #0 !taffo.start !2 !taffo.funinfo !3 {
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca float, align 4, !taffo.info !4
  %18 = alloca float, align 4, !taffo.info !4
  %19 = alloca float*, align 8, !taffo.info !6
  %20 = alloca float*, align 8, !taffo.info !6
  %21 = alloca float*, align 8, !taffo.info !6
  %22 = alloca float*, align 8, !taffo.info !7, !taffo.target !9
  %23 = alloca [256 x float], align 16, !taffo.info !7
  %24 = alloca i32, align 4, !taffo.info !10
  %25 = alloca i32, align 4, !taffo.info !10
  %26 = alloca i32, align 4, !taffo.info !10
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
  %27 = bitcast float* %17 to i8*, !taffo.info !6
  %28 = load float, float* %11, align 4
  store float %28, float* %17, align 4, !taffo.info !6
  %29 = bitcast float* %18 to i8*, !taffo.info !6
  %30 = load float, float* %12, align 4
  store float %30, float* %18, align 4, !taffo.info !6
  %31 = bitcast float** %19 to i8*, !taffo.info !6
  %32 = load float*, float** %7, align 8
  store float* %32, float** %19, align 8, !taffo.info !6
  %33 = bitcast float** %20 to i8*, !taffo.info !6
  %34 = load float*, float** %8, align 8
  store float* %34, float** %20, align 8, !taffo.info !6
  %35 = bitcast float** %21 to i8*, !taffo.info !6
  %36 = load float*, float** %9, align 8
  store float* %36, float** %21, align 8, !taffo.info !6
  %37 = bitcast float** %22 to i8*, !taffo.info !6, !taffo.target !9
  %38 = load float*, float** %10, align 8
  store float* %38, float** %22, align 8, !taffo.info !6, !taffo.target !9
  %39 = bitcast [256 x float]* %23 to i8*, !taffo.info !6
  %40 = bitcast i32* %24 to i8*, !taffo.info !6
  %41 = bitcast i32* %25 to i8*, !taffo.info !6
  %42 = bitcast i32* %26 to i8*, !taffo.info !6
  store i32 0, i32* %24, align 4, !taffo.info !6
  br label %43

; <label>:43:                                     ; preds = %70, %6
  %44 = load i32, i32* %24, align 4, !taffo.info !6
  %45 = icmp slt i32 %44, 16, !taffo.info !6
  br i1 %45, label %46, label %73, !taffo.info !6

; <label>:46:                                     ; preds = %43
  store i32 0, i32* %25, align 4, !taffo.info !6
  br label %47

; <label>:47:                                     ; preds = %66, %46
  %48 = load i32, i32* %25, align 4, !taffo.info !6
  %49 = icmp slt i32 %48, 16, !taffo.info !6
  br i1 %49, label %50, label %69, !taffo.info !6

; <label>:50:                                     ; preds = %47
  %51 = load i32, i32* %24, align 4, !taffo.info !6
  %52 = load i32, i32* %14, align 4
  %53 = mul nsw i32 %51, %52, !taffo.info !6
  %54 = load i32, i32* %25, align 4, !taffo.info !6
  %55 = add nsw i32 %53, %54, !taffo.info !6
  %56 = sext i32 %55 to i64, !taffo.info !6
  %57 = getelementptr inbounds [256 x float], [256 x float]* %23, i64 0, i64 %56, !taffo.info !6
  store float 0.000000e+00, float* %57, align 4, !taffo.info !6
  store i32 0, i32* %26, align 4, !taffo.info !6
  br label %58

; <label>:58:                                     ; preds = %62, %50
  %59 = load i32, i32* %26, align 4, !taffo.info !6
  %60 = icmp slt i32 %59, 16, !taffo.info !6
  br i1 %60, label %61, label %65, !taffo.info !6

; <label>:61:                                     ; preds = %58
  br label %62

; <label>:62:                                     ; preds = %61
  %63 = load i32, i32* %26, align 4, !taffo.info !6
  %64 = add nsw i32 %63, 1, !taffo.info !6
  store i32 %64, i32* %26, align 4, !taffo.info !6
  br label %58

; <label>:65:                                     ; preds = %58
  br label %66

; <label>:66:                                     ; preds = %65
  %67 = load i32, i32* %25, align 4, !taffo.info !6
  %68 = add nsw i32 %67, 1, !taffo.info !6
  store i32 %68, i32* %25, align 4, !taffo.info !6
  br label %47

; <label>:69:                                     ; preds = %47
  br label %70

; <label>:70:                                     ; preds = %69
  %71 = load i32, i32* %24, align 4, !taffo.info !6
  %72 = add nsw i32 %71, 1, !taffo.info !6
  store i32 %72, i32* %24, align 4, !taffo.info !6
  br label %43

; <label>:73:                                     ; preds = %43
  store i32 0, i32* %24, align 4, !taffo.info !6
  br label %74

; <label>:74:                                     ; preds = %133, %73
  %75 = load i32, i32* %24, align 4, !taffo.info !6
  %76 = icmp slt i32 %75, 16, !taffo.info !6
  br i1 %76, label %77, label %136, !taffo.info !6

; <label>:77:                                     ; preds = %74
  store i32 0, i32* %25, align 4, !taffo.info !6
  br label %78

; <label>:78:                                     ; preds = %129, %77
  %79 = load i32, i32* %25, align 4, !taffo.info !6
  %80 = icmp slt i32 %79, 16, !taffo.info !6
  br i1 %80, label %81, label %132, !taffo.info !6

; <label>:81:                                     ; preds = %78
  %82 = load float, float* %18, align 4, !taffo.info !6
  %83 = load float*, float** %22, align 8, !taffo.info !6, !taffo.target !9
  %84 = load i32, i32* %24, align 4, !taffo.info !6
  %85 = load i32, i32* %16, align 4
  %86 = mul nsw i32 %84, %85, !taffo.info !6
  %87 = load i32, i32* %25, align 4, !taffo.info !6
  %88 = add nsw i32 %86, %87, !taffo.info !6
  %89 = sext i32 %88 to i64, !taffo.info !6
  %90 = getelementptr inbounds float, float* %83, i64 %89, !taffo.info !6, !taffo.target !9
  %91 = load float, float* %90, align 4, !taffo.info !6, !taffo.target !9
  %92 = fmul float %91, %82, !taffo.info !6
  store float %92, float* %90, align 4, !taffo.info !6
  store i32 0, i32* %26, align 4, !taffo.info !6
  br label %93

; <label>:93:                                     ; preds = %125, %81
  %94 = load i32, i32* %26, align 4, !taffo.info !6
  %95 = icmp slt i32 %94, 16, !taffo.info !6
  br i1 %95, label %96, label %128, !taffo.info !6

; <label>:96:                                     ; preds = %93
  %97 = load i32, i32* %24, align 4, !taffo.info !6
  %98 = load i32, i32* %14, align 4
  %99 = mul nsw i32 %97, %98, !taffo.info !6
  %100 = load i32, i32* %26, align 4, !taffo.info !6
  %101 = add nsw i32 %99, %100, !taffo.info !6
  %102 = sext i32 %101 to i64, !taffo.info !6
  %103 = getelementptr inbounds [256 x float], [256 x float]* %23, i64 0, i64 %102, !taffo.info !6
  %104 = load float, float* %103, align 4, !taffo.info !6
  %105 = load float*, float** %21, align 8, !taffo.info !6
  %106 = load i32, i32* %26, align 4, !taffo.info !6
  %107 = load i32, i32* %16, align 4
  %108 = mul nsw i32 %106, %107, !taffo.info !6
  %109 = load i32, i32* %25, align 4, !taffo.info !6
  %110 = add nsw i32 %108, %109, !taffo.info !6
  %111 = sext i32 %110 to i64, !taffo.info !6
  %112 = getelementptr inbounds float, float* %105, i64 %111, !taffo.info !6
  %113 = load float, float* %112, align 4, !taffo.info !6
  %114 = fmul float %104, %113, !taffo.info !6
  %115 = load float*, float** %22, align 8, !taffo.info !6, !taffo.target !9
  %116 = load i32, i32* %24, align 4, !taffo.info !6
  %117 = load i32, i32* %16, align 4
  %118 = mul nsw i32 %116, %117, !taffo.info !6
  %119 = load i32, i32* %25, align 4, !taffo.info !6
  %120 = add nsw i32 %118, %119, !taffo.info !6
  %121 = sext i32 %120 to i64, !taffo.info !6
  %122 = getelementptr inbounds float, float* %115, i64 %121, !taffo.info !6, !taffo.target !9
  %123 = load float, float* %122, align 4, !taffo.info !6, !taffo.target !9
  %124 = fadd float %123, %114, !taffo.info !6, !taffo.target !9
  store float %124, float* %122, align 4, !taffo.info !6, !taffo.target !9
  br label %125

; <label>:125:                                    ; preds = %96
  %126 = load i32, i32* %26, align 4, !taffo.info !6
  %127 = add nsw i32 %126, 1, !taffo.info !6
  store i32 %127, i32* %26, align 4, !taffo.info !6
  br label %93

; <label>:128:                                    ; preds = %93
  br label %129

; <label>:129:                                    ; preds = %128
  %130 = load i32, i32* %25, align 4, !taffo.info !6
  %131 = add nsw i32 %130, 1, !taffo.info !6
  store i32 %131, i32* %25, align 4, !taffo.info !6
  br label %78

; <label>:132:                                    ; preds = %78
  br label %133

; <label>:133:                                    ; preds = %132
  %134 = load i32, i32* %24, align 4, !taffo.info !6
  %135 = add nsw i32 %134, 1, !taffo.info !6
  store i32 %135, i32* %24, align 4, !taffo.info !6
  br label %74

; <label>:136:                                    ; preds = %74
  ret void
}

; Function Attrs: nounwind
declare !taffo.funinfo !12 void @llvm.var.annotation(i8*, i8*, i8*, i32) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32, i8**) #0 !taffo.funinfo !13 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca [256 x float], align 16
  %13 = alloca [256 x float], align 16
  %14 = alloca [256 x float], align 16
  %15 = alloca [256 x float], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
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
  br label %19

; <label>:19:                                     ; preds = %49, %2
  %20 = load i32, i32* %16, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %52

; <label>:23:                                     ; preds = %19
  store i32 0, i32* %17, align 4
  br label %24

; <label>:24:                                     ; preds = %45, %23
  %25 = load i32, i32* %17, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %48

; <label>:28:                                     ; preds = %24
  %29 = load i32, i32* %16, align 4
  %30 = load i32, i32* %17, align 4
  %31 = mul nsw i32 %29, %30
  %32 = add nsw i32 %31, 1
  %33 = load i32, i32* %6, align 4
  %34 = srem i32 %32, %33
  %35 = load i32, i32* %6, align 4
  %36 = sdiv i32 %34, %35
  %37 = sitofp i32 %36 to float
  %38 = load i32, i32* %16, align 4
  %39 = load i32, i32* %8, align 4
  %40 = mul nsw i32 %38, %39
  %41 = load i32, i32* %17, align 4
  %42 = add nsw i32 %40, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [256 x float], [256 x float]* %12, i64 0, i64 %43
  store float %37, float* %44, align 4
  br label %45

; <label>:45:                                     ; preds = %28
  %46 = load i32, i32* %17, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %17, align 4
  br label %24

; <label>:48:                                     ; preds = %24
  br label %49

; <label>:49:                                     ; preds = %48
  %50 = load i32, i32* %16, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %16, align 4
  br label %19

; <label>:52:                                     ; preds = %19
  store i32 0, i32* %16, align 4
  br label %53

; <label>:53:                                     ; preds = %83, %52
  %54 = load i32, i32* %16, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %86

; <label>:57:                                     ; preds = %53
  store i32 0, i32* %17, align 4
  br label %58

; <label>:58:                                     ; preds = %79, %57
  %59 = load i32, i32* %17, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %82

; <label>:62:                                     ; preds = %58
  %63 = load i32, i32* %16, align 4
  %64 = load i32, i32* %17, align 4
  %65 = add nsw i32 %64, 1
  %66 = mul nsw i32 %63, %65
  %67 = load i32, i32* %7, align 4
  %68 = srem i32 %66, %67
  %69 = load i32, i32* %7, align 4
  %70 = sdiv i32 %68, %69
  %71 = sitofp i32 %70 to float
  %72 = load i32, i32* %16, align 4
  %73 = load i32, i32* %7, align 4
  %74 = mul nsw i32 %72, %73
  %75 = load i32, i32* %17, align 4
  %76 = add nsw i32 %74, %75
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [256 x float], [256 x float]* %13, i64 0, i64 %77
  store float %71, float* %78, align 4
  br label %79

; <label>:79:                                     ; preds = %62
  %80 = load i32, i32* %17, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %17, align 4
  br label %58

; <label>:82:                                     ; preds = %58
  br label %83

; <label>:83:                                     ; preds = %82
  %84 = load i32, i32* %16, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %16, align 4
  br label %53

; <label>:86:                                     ; preds = %53
  store i32 0, i32* %16, align 4
  br label %87

; <label>:87:                                     ; preds = %118, %86
  %88 = load i32, i32* %16, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %121

; <label>:91:                                     ; preds = %87
  store i32 0, i32* %17, align 4
  br label %92

; <label>:92:                                     ; preds = %114, %91
  %93 = load i32, i32* %17, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %117

; <label>:96:                                     ; preds = %92
  %97 = load i32, i32* %16, align 4
  %98 = load i32, i32* %17, align 4
  %99 = add nsw i32 %98, 3
  %100 = mul nsw i32 %97, %99
  %101 = add nsw i32 %100, 1
  %102 = load i32, i32* %9, align 4
  %103 = srem i32 %101, %102
  %104 = load i32, i32* %9, align 4
  %105 = sdiv i32 %103, %104
  %106 = sitofp i32 %105 to float
  %107 = load i32, i32* %16, align 4
  %108 = load i32, i32* %9, align 4
  %109 = mul nsw i32 %107, %108
  %110 = load i32, i32* %17, align 4
  %111 = add nsw i32 %109, %110
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [256 x float], [256 x float]* %14, i64 0, i64 %112
  store float %106, float* %113, align 4
  br label %114

; <label>:114:                                    ; preds = %96
  %115 = load i32, i32* %17, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %17, align 4
  br label %92

; <label>:117:                                    ; preds = %92
  br label %118

; <label>:118:                                    ; preds = %117
  %119 = load i32, i32* %16, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %16, align 4
  br label %87

; <label>:121:                                    ; preds = %87
  store i32 0, i32* %16, align 4
  br label %122

; <label>:122:                                    ; preds = %152, %121
  %123 = load i32, i32* %16, align 4
  %124 = load i32, i32* %6, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %155

; <label>:126:                                    ; preds = %122
  store i32 0, i32* %17, align 4
  br label %127

; <label>:127:                                    ; preds = %148, %126
  %128 = load i32, i32* %17, align 4
  %129 = load i32, i32* %9, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %151

; <label>:131:                                    ; preds = %127
  %132 = load i32, i32* %16, align 4
  %133 = load i32, i32* %17, align 4
  %134 = add nsw i32 %133, 2
  %135 = mul nsw i32 %132, %134
  %136 = load i32, i32* %8, align 4
  %137 = srem i32 %135, %136
  %138 = load i32, i32* %8, align 4
  %139 = sdiv i32 %137, %138
  %140 = sitofp i32 %139 to float
  %141 = load i32, i32* %16, align 4
  %142 = load i32, i32* %9, align 4
  %143 = mul nsw i32 %141, %142
  %144 = load i32, i32* %17, align 4
  %145 = add nsw i32 %143, %144
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [256 x float], [256 x float]* %15, i64 0, i64 %146
  store float %140, float* %147, align 4
  br label %148

; <label>:148:                                    ; preds = %131
  %149 = load i32, i32* %17, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %17, align 4
  br label %127

; <label>:151:                                    ; preds = %127
  br label %152

; <label>:152:                                    ; preds = %151
  %153 = load i32, i32* %16, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %16, align 4
  br label %122

; <label>:155:                                    ; preds = %122
  %156 = getelementptr inbounds [256 x float], [256 x float]* %12, i32 0, i32 0
  %157 = getelementptr inbounds [256 x float], [256 x float]* %13, i32 0, i32 0
  %158 = getelementptr inbounds [256 x float], [256 x float]* %14, i32 0, i32 0
  %159 = getelementptr inbounds [256 x float], [256 x float]* %15, i32 0, i32 0
  %160 = load float, float* %10, align 4
  %161 = load float, float* %11, align 4
  call void @mm2(float* %156, float* %157, float* %158, float* %159, float %160, float %161)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 8.0.0 (tags/RELEASE_800/final)"}
!2 = !{i1 true}
!3 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!4 = !{i1 false, !5, i1 false, i1 true}
!5 = !{double 0.000000e+00, double 5.000000e+00}
!6 = !{i1 false, i1 false, i1 false, i1 true}
!7 = !{i1 false, !8, i1 false, i1 true}
!8 = !{double -1.638400e+04, double 1.638400e+04}
!9 = !{!"Ds"}
!10 = !{i1 false, !11, i1 false, i1 true}
!11 = !{double 0.000000e+00, double 1.600000e+01}
!12 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!13 = !{i32 0, i1 false, i32 0, i1 false}
