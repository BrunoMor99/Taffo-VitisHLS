; ModuleID = 'out_sw.2.magiclangtmp.ll'
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
  %17 = alloca float, align 4, !taffo.info !18
  %18 = alloca float, align 4, !taffo.info !18
  %19 = alloca float*, align 8, !taffo.info !20
  %20 = alloca float*, align 8, !taffo.info !20
  %21 = alloca float*, align 8, !taffo.info !20
  %22 = alloca float*, align 8, !taffo.info !21, !taffo.target !23
  %23 = alloca [256 x float], align 16, !taffo.info !21
  %24 = alloca i32, align 4, !taffo.info !24
  %25 = alloca i32, align 4, !taffo.info !24
  %26 = alloca i32, align 4, !taffo.info !24
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
  %27 = bitcast float* %17 to i8*, !taffo.info !18
  %28 = load float, float* %11, align 4, !taffo.info !12
  store float %28, float* %17, align 4, !taffo.info !26
  %29 = bitcast float* %18 to i8*, !taffo.info !18
  %30 = load float, float* %12, align 4, !taffo.info !14
  store float %30, float* %18, align 4, !taffo.info !26
  %31 = bitcast float** %19 to i8*, !taffo.info !26
  %32 = load float*, float** %7, align 8, !taffo.info !8
  store float* %32, float** %19, align 8, !taffo.info !26
  %33 = bitcast float** %20 to i8*, !taffo.info !26
  %34 = load float*, float** %8, align 8, !taffo.info !8
  store float* %34, float** %20, align 8, !taffo.info !26
  %35 = bitcast float** %21 to i8*, !taffo.info !26
  %36 = load float*, float** %9, align 8, !taffo.info !8
  store float* %36, float** %21, align 8, !taffo.info !26
  %37 = bitcast float** %22 to i8*, !taffo.info !21, !taffo.target !23
  %38 = load float*, float** %10, align 8, !taffo.info !10
  store float* %38, float** %22, align 8, !taffo.info !26, !taffo.target !23
  %39 = bitcast [256 x float]* %23 to i8*, !taffo.info !21
  %40 = bitcast i32* %24 to i8*, !taffo.info !24
  %41 = bitcast i32* %25 to i8*, !taffo.info !24
  %42 = bitcast i32* %26 to i8*, !taffo.info !24
  store i32 0, i32* %24, align 4, !taffo.info !26
  br label %43

; <label>:43:                                     ; preds = %70, %6
  %44 = load i32, i32* %24, align 4, !taffo.info !27
  %45 = icmp slt i32 %44, 16, !taffo.info !20
  br i1 %45, label %46, label %73, !taffo.info !26

; <label>:46:                                     ; preds = %43
  store i32 0, i32* %25, align 4, !taffo.info !26
  br label %47

; <label>:47:                                     ; preds = %66, %46
  %48 = load i32, i32* %25, align 4, !taffo.info !27
  %49 = icmp slt i32 %48, 16, !taffo.info !20
  br i1 %49, label %50, label %69, !taffo.info !26

; <label>:50:                                     ; preds = %47
  %51 = load i32, i32* %24, align 4, !taffo.info !29
  %52 = load i32, i32* %14, align 4, !taffo.info !16
  %53 = mul nsw i32 %51, %52, !taffo.info !31
  %54 = load i32, i32* %25, align 4, !taffo.info !29
  %55 = add nsw i32 %53, %54, !taffo.info !33
  %56 = sext i32 %55 to i64, !taffo.info !33
  %57 = getelementptr inbounds [256 x float], [256 x float]* %23, i64 0, i64 %56, !taffo.info !35
  store float 0.000000e+00, float* %57, align 4, !taffo.info !26
  store i32 0, i32* %26, align 4, !taffo.info !26
  br label %58

; <label>:58:                                     ; preds = %62, %50
  %59 = load i32, i32* %26, align 4, !taffo.info !29
  %60 = icmp slt i32 %59, 16, !taffo.info !20
  br i1 %60, label %61, label %65, !taffo.info !26

; <label>:61:                                     ; preds = %58
  br label %62

; <label>:62:                                     ; preds = %61
  %63 = load i32, i32* %26, align 4, !taffo.info !37
  %64 = add nsw i32 %63, 1, !taffo.info !39
  store i32 %64, i32* %26, align 4, !taffo.info !26
  br label %58

; <label>:65:                                     ; preds = %58
  br label %66

; <label>:66:                                     ; preds = %65
  %67 = load i32, i32* %25, align 4, !taffo.info !29
  %68 = add nsw i32 %67, 1, !taffo.info !41
  store i32 %68, i32* %25, align 4, !taffo.info !26
  br label %47

; <label>:69:                                     ; preds = %47
  br label %70

; <label>:70:                                     ; preds = %69
  %71 = load i32, i32* %24, align 4, !taffo.info !29
  %72 = add nsw i32 %71, 1, !taffo.info !41
  store i32 %72, i32* %24, align 4, !taffo.info !26
  br label %43

; <label>:73:                                     ; preds = %43
  store i32 0, i32* %24, align 4, !taffo.info !26
  br label %74

; <label>:74:                                     ; preds = %133, %73
  %75 = load i32, i32* %24, align 4, !taffo.info !29
  %76 = icmp slt i32 %75, 16, !taffo.info !20
  br i1 %76, label %77, label %136, !taffo.info !26

; <label>:77:                                     ; preds = %74
  store i32 0, i32* %25, align 4, !taffo.info !26
  br label %78

; <label>:78:                                     ; preds = %129, %77
  %79 = load i32, i32* %25, align 4, !taffo.info !27
  %80 = icmp slt i32 %79, 16, !taffo.info !20
  br i1 %80, label %81, label %132, !taffo.info !26

; <label>:81:                                     ; preds = %78
  %82 = load float, float* %18, align 4, !taffo.info !18
  %83 = load float*, float** %22, align 8, !taffo.info !21, !taffo.target !23
  %84 = load i32, i32* %24, align 4, !taffo.info !37
  %85 = load i32, i32* %16, align 4, !taffo.info !16
  %86 = mul nsw i32 %84, %85, !taffo.info !43
  %87 = load i32, i32* %25, align 4, !taffo.info !29
  %88 = add nsw i32 %86, %87, !taffo.info !45
  %89 = sext i32 %88 to i64, !taffo.info !45
  %90 = getelementptr inbounds float, float* %83, i64 %89, !taffo.info !21, !taffo.target !23
  %91 = load float, float* %90, align 4, !taffo.info !21, !taffo.target !23
  %92 = fmul float %91, %82, !taffo.info !47
  store float %92, float* %90, align 4, !taffo.info !26
  store i32 0, i32* %26, align 4, !taffo.info !26
  br label %93

; <label>:93:                                     ; preds = %125, %81
  %94 = load i32, i32* %26, align 4, !taffo.info !27
  %95 = icmp slt i32 %94, 16, !taffo.info !20
  br i1 %95, label %96, label %128, !taffo.info !26

; <label>:96:                                     ; preds = %93
  %97 = load i32, i32* %24, align 4, !taffo.info !29
  %98 = load i32, i32* %14, align 4, !taffo.info !16
  %99 = mul nsw i32 %97, %98, !taffo.info !31
  %100 = load i32, i32* %26, align 4, !taffo.info !29
  %101 = add nsw i32 %99, %100, !taffo.info !33
  %102 = sext i32 %101 to i64, !taffo.info !33
  %103 = getelementptr inbounds [256 x float], [256 x float]* %23, i64 0, i64 %102, !taffo.info !35
  %104 = load float, float* %103, align 4, !taffo.info !27
  %105 = load float*, float** %21, align 8, !taffo.info !20
  %106 = load i32, i32* %26, align 4, !taffo.info !29
  %107 = load i32, i32* %16, align 4, !taffo.info !16
  %108 = mul nsw i32 %106, %107, !taffo.info !31
  %109 = load i32, i32* %25, align 4, !taffo.info !29
  %110 = add nsw i32 %108, %109, !taffo.info !33
  %111 = sext i32 %110 to i64, !taffo.info !33
  %112 = getelementptr inbounds float, float* %105, i64 %111, !taffo.info !20
  %113 = load float, float* %112, align 4, !taffo.info !29
  %114 = fmul float %104, %113, !taffo.info !49
  %115 = load float*, float** %22, align 8, !taffo.info !21, !taffo.target !23
  %116 = load i32, i32* %24, align 4, !taffo.info !29
  %117 = load i32, i32* %16, align 4, !taffo.info !16
  %118 = mul nsw i32 %116, %117, !taffo.info !31
  %119 = load i32, i32* %25, align 4, !taffo.info !29
  %120 = add nsw i32 %118, %119, !taffo.info !33
  %121 = sext i32 %120 to i64, !taffo.info !33
  %122 = getelementptr inbounds float, float* %115, i64 %121, !taffo.info !21, !taffo.target !23
  %123 = load float, float* %122, align 4, !taffo.info !21, !taffo.target !23
  %124 = fadd float %123, %114, !taffo.info !51, !taffo.target !23
  store float %124, float* %122, align 4, !taffo.info !26, !taffo.target !23
  br label %125

; <label>:125:                                    ; preds = %96
  %126 = load i32, i32* %26, align 4, !taffo.info !29
  %127 = add nsw i32 %126, 1, !taffo.info !41
  store i32 %127, i32* %26, align 4, !taffo.info !26
  br label %93

; <label>:128:                                    ; preds = %93
  br label %129

; <label>:129:                                    ; preds = %128
  %130 = load i32, i32* %25, align 4, !taffo.info !29
  %131 = add nsw i32 %130, 1, !taffo.info !41
  store i32 %131, i32* %25, align 4, !taffo.info !26
  br label %78

; <label>:132:                                    ; preds = %78
  br label %133

; <label>:133:                                    ; preds = %132
  %134 = load i32, i32* %24, align 4, !taffo.info !37
  %135 = add nsw i32 %134, 1, !taffo.info !39
  store i32 %135, i32* %24, align 4, !taffo.info !26
  br label %74

; <label>:136:                                    ; preds = %74
  ret void
}

; Function Attrs: nounwind
declare !taffo.funinfo !52 void @llvm.var.annotation(i8*, i8*, i8*, i32) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32, i8**) #0 !taffo.funinfo !53 {
  %3 = alloca i32, align 4, !taffo.info !54
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
  %15 = alloca [256 x float], align 16, !taffo.info !55
  %16 = alloca i32, align 4, !taffo.info !56
  %17 = alloca i32, align 4, !taffo.info !56
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
  %20 = load i32, i32* %16, align 4, !taffo.info !56
  %21 = load i32, i32* %6, align 4, !taffo.info !16
  %22 = icmp slt i32 %20, %21, !taffo.info !58
  br i1 %22, label %23, label %52

; <label>:23:                                     ; preds = %19
  store i32 0, i32* %17, align 4
  br label %24

; <label>:24:                                     ; preds = %45, %23
  %25 = load i32, i32* %17, align 4, !taffo.info !56
  %26 = load i32, i32* %8, align 4, !taffo.info !16
  %27 = icmp slt i32 %25, %26, !taffo.info !58
  br i1 %27, label %28, label %48

; <label>:28:                                     ; preds = %24
  %29 = load i32, i32* %16, align 4, !taffo.info !56
  %30 = load i32, i32* %17, align 4, !taffo.info !56
  %31 = mul nsw i32 %29, %30, !taffo.info !54
  %32 = add nsw i32 %31, 1, !taffo.info !58
  %33 = load i32, i32* %6, align 4, !taffo.info !16
  %34 = srem i32 %32, %33, !taffo.info !60
  %35 = load i32, i32* %6, align 4, !taffo.info !16
  %36 = sdiv i32 %34, %35, !taffo.info !8
  %37 = sitofp i32 %36 to float, !taffo.info !8
  %38 = load i32, i32* %16, align 4, !taffo.info !56
  %39 = load i32, i32* %8, align 4, !taffo.info !16
  %40 = mul nsw i32 %38, %39, !taffo.info !54
  %41 = load i32, i32* %17, align 4, !taffo.info !56
  %42 = add nsw i32 %40, %41, !taffo.info !54
  %43 = sext i32 %42 to i64, !taffo.info !54
  %44 = getelementptr inbounds [256 x float], [256 x float]* %12, i64 0, i64 %43, !taffo.info !8
  store float %37, float* %44, align 4
  br label %45

; <label>:45:                                     ; preds = %28
  %46 = load i32, i32* %17, align 4, !taffo.info !56
  %47 = add nsw i32 %46, 1, !taffo.info !58
  store i32 %47, i32* %17, align 4
  br label %24

; <label>:48:                                     ; preds = %24
  br label %49

; <label>:49:                                     ; preds = %48
  %50 = load i32, i32* %16, align 4, !taffo.info !56
  %51 = add nsw i32 %50, 1, !taffo.info !58
  store i32 %51, i32* %16, align 4
  br label %19

; <label>:52:                                     ; preds = %19
  store i32 0, i32* %16, align 4
  br label %53

; <label>:53:                                     ; preds = %83, %52
  %54 = load i32, i32* %16, align 4, !taffo.info !56
  %55 = load i32, i32* %8, align 4, !taffo.info !16
  %56 = icmp slt i32 %54, %55, !taffo.info !58
  br i1 %56, label %57, label %86

; <label>:57:                                     ; preds = %53
  store i32 0, i32* %17, align 4
  br label %58

; <label>:58:                                     ; preds = %79, %57
  %59 = load i32, i32* %17, align 4, !taffo.info !56
  %60 = load i32, i32* %7, align 4, !taffo.info !16
  %61 = icmp slt i32 %59, %60, !taffo.info !58
  br i1 %61, label %62, label %82

; <label>:62:                                     ; preds = %58
  %63 = load i32, i32* %16, align 4, !taffo.info !56
  %64 = load i32, i32* %17, align 4, !taffo.info !56
  %65 = add nsw i32 %64, 1, !taffo.info !61
  %66 = mul nsw i32 %63, %65, !taffo.info !56
  %67 = load i32, i32* %7, align 4, !taffo.info !16
  %68 = srem i32 %66, %67, !taffo.info !60
  %69 = load i32, i32* %7, align 4, !taffo.info !16
  %70 = sdiv i32 %68, %69, !taffo.info !8
  %71 = sitofp i32 %70 to float, !taffo.info !8
  %72 = load i32, i32* %16, align 4, !taffo.info !56
  %73 = load i32, i32* %7, align 4, !taffo.info !16
  %74 = mul nsw i32 %72, %73, !taffo.info !63
  %75 = load i32, i32* %17, align 4, !taffo.info !56
  %76 = add nsw i32 %74, %75, !taffo.info !65
  %77 = sext i32 %76 to i64, !taffo.info !65
  %78 = getelementptr inbounds [256 x float], [256 x float]* %13, i64 0, i64 %77, !taffo.info !8
  store float %71, float* %78, align 4
  br label %79

; <label>:79:                                     ; preds = %62
  %80 = load i32, i32* %17, align 4, !taffo.info !56
  %81 = add nsw i32 %80, 1, !taffo.info !61
  store i32 %81, i32* %17, align 4
  br label %58

; <label>:82:                                     ; preds = %58
  br label %83

; <label>:83:                                     ; preds = %82
  %84 = load i32, i32* %16, align 4, !taffo.info !56
  %85 = add nsw i32 %84, 1, !taffo.info !61
  store i32 %85, i32* %16, align 4
  br label %53

; <label>:86:                                     ; preds = %53
  store i32 0, i32* %16, align 4
  br label %87

; <label>:87:                                     ; preds = %118, %86
  %88 = load i32, i32* %16, align 4, !taffo.info !56
  %89 = load i32, i32* %7, align 4, !taffo.info !16
  %90 = icmp slt i32 %88, %89, !taffo.info !58
  br i1 %90, label %91, label %121

; <label>:91:                                     ; preds = %87
  store i32 0, i32* %17, align 4
  br label %92

; <label>:92:                                     ; preds = %114, %91
  %93 = load i32, i32* %17, align 4, !taffo.info !56
  %94 = load i32, i32* %9, align 4, !taffo.info !16
  %95 = icmp slt i32 %93, %94, !taffo.info !58
  br i1 %95, label %96, label %117

; <label>:96:                                     ; preds = %92
  %97 = load i32, i32* %16, align 4, !taffo.info !56
  %98 = load i32, i32* %17, align 4, !taffo.info !56
  %99 = add nsw i32 %98, 3, !taffo.info !67
  %100 = mul nsw i32 %97, %99, !taffo.info !69
  %101 = add nsw i32 %100, 1, !taffo.info !71
  %102 = load i32, i32* %9, align 4, !taffo.info !16
  %103 = srem i32 %101, %102, !taffo.info !60
  %104 = load i32, i32* %9, align 4, !taffo.info !16
  %105 = sdiv i32 %103, %104, !taffo.info !8
  %106 = sitofp i32 %105 to float, !taffo.info !8
  %107 = load i32, i32* %16, align 4, !taffo.info !56
  %108 = load i32, i32* %9, align 4, !taffo.info !16
  %109 = mul nsw i32 %107, %108, !taffo.info !73
  %110 = load i32, i32* %17, align 4, !taffo.info !56
  %111 = add nsw i32 %109, %110, !taffo.info !75
  %112 = sext i32 %111 to i64, !taffo.info !75
  %113 = getelementptr inbounds [256 x float], [256 x float]* %14, i64 0, i64 %112, !taffo.info !8
  store float %106, float* %113, align 4
  br label %114

; <label>:114:                                    ; preds = %96
  %115 = load i32, i32* %17, align 4, !taffo.info !56
  %116 = add nsw i32 %115, 1, !taffo.info !77
  store i32 %116, i32* %17, align 4
  br label %92

; <label>:117:                                    ; preds = %92
  br label %118

; <label>:118:                                    ; preds = %117
  %119 = load i32, i32* %16, align 4, !taffo.info !56
  %120 = add nsw i32 %119, 1, !taffo.info !77
  store i32 %120, i32* %16, align 4
  br label %87

; <label>:121:                                    ; preds = %87
  store i32 0, i32* %16, align 4
  br label %122

; <label>:122:                                    ; preds = %152, %121
  %123 = load i32, i32* %16, align 4, !taffo.info !56
  %124 = load i32, i32* %6, align 4, !taffo.info !16
  %125 = icmp slt i32 %123, %124, !taffo.info !58
  br i1 %125, label %126, label %155

; <label>:126:                                    ; preds = %122
  store i32 0, i32* %17, align 4
  br label %127

; <label>:127:                                    ; preds = %148, %126
  %128 = load i32, i32* %17, align 4, !taffo.info !56
  %129 = load i32, i32* %9, align 4, !taffo.info !16
  %130 = icmp slt i32 %128, %129, !taffo.info !58
  br i1 %130, label %131, label %151

; <label>:131:                                    ; preds = %127
  %132 = load i32, i32* %16, align 4, !taffo.info !56
  %133 = load i32, i32* %17, align 4, !taffo.info !56
  %134 = add nsw i32 %133, 2, !taffo.info !79
  %135 = mul nsw i32 %132, %134, !taffo.info !81
  %136 = load i32, i32* %8, align 4, !taffo.info !16
  %137 = srem i32 %135, %136, !taffo.info !60
  %138 = load i32, i32* %8, align 4, !taffo.info !16
  %139 = sdiv i32 %137, %138, !taffo.info !8
  %140 = sitofp i32 %139 to float, !taffo.info !8
  %141 = load i32, i32* %16, align 4, !taffo.info !56
  %142 = load i32, i32* %9, align 4, !taffo.info !16
  %143 = mul nsw i32 %141, %142, !taffo.info !83
  %144 = load i32, i32* %17, align 4, !taffo.info !56
  %145 = add nsw i32 %143, %144, !taffo.info !85
  %146 = sext i32 %145 to i64, !taffo.info !85
  %147 = getelementptr inbounds [256 x float], [256 x float]* %15, i64 0, i64 %146, !taffo.info !55
  store float %140, float* %147, align 4
  br label %148

; <label>:148:                                    ; preds = %131
  %149 = load i32, i32* %17, align 4, !taffo.info !56
  %150 = add nsw i32 %149, 1, !taffo.info !87
  store i32 %150, i32* %17, align 4
  br label %127

; <label>:151:                                    ; preds = %127
  br label %152

; <label>:152:                                    ; preds = %151
  %153 = load i32, i32* %16, align 4, !taffo.info !56
  %154 = add nsw i32 %153, 1, !taffo.info !87
  store i32 %154, i32* %16, align 4
  br label %122

; <label>:155:                                    ; preds = %122
  %156 = getelementptr inbounds [256 x float], [256 x float]* %12, i32 0, i32 0, !taffo.info !8
  %157 = getelementptr inbounds [256 x float], [256 x float]* %13, i32 0, i32 0, !taffo.info !8
  %158 = getelementptr inbounds [256 x float], [256 x float]* %14, i32 0, i32 0, !taffo.info !8
  %159 = getelementptr inbounds [256 x float], [256 x float]* %15, i32 0, i32 0, !taffo.info !55
  %160 = load float, float* %10, align 4, !taffo.info !12
  %161 = load float, float* %11, align 4, !taffo.info !14
  call void @mm2(float* %156, float* %157, float* %158, float* %159, float %160, float %161)
  ret i32 0, !taffo.info !54
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
!18 = !{i1 false, !19, i1 false, i1 true}
!19 = !{double 0.000000e+00, double 5.000000e+00}
!20 = !{i1 false, !9, i1 false, i1 true}
!21 = !{i1 false, !22, i1 false, i1 true}
!22 = !{double -1.638400e+04, double 1.638400e+04}
!23 = !{!"Ds"}
!24 = !{i1 false, !25, i1 false, i1 true}
!25 = !{double 0.000000e+00, double 1.600000e+01}
!26 = !{i1 false, i1 false, i1 false, i1 true}
!27 = !{i1 false, !28, i1 false, i1 true}
!28 = !{double 0.000000e+00, double 1.900000e+01}
!29 = !{i1 false, !30, i1 false, i1 true}
!30 = !{double 0.000000e+00, double 1.800000e+01}
!31 = !{i1 false, !32, i1 false, i1 true}
!32 = !{double 0.000000e+00, double 2.880000e+02}
!33 = !{i1 false, !34, i1 false, i1 true}
!34 = !{double 0.000000e+00, double 3.060000e+02}
!35 = !{i1 false, !36, i1 false, i1 true}
!36 = !{double 0.000000e+00, double 0.000000e+00}
!37 = !{i1 false, !38, i1 false, i1 true}
!38 = !{double 0.000000e+00, double 1.700000e+01}
!39 = !{i1 false, !40, i1 false, i1 true}
!40 = !{double 1.000000e+00, double 1.800000e+01}
!41 = !{i1 false, !42, i1 false, i1 true}
!42 = !{double 1.000000e+00, double 1.900000e+01}
!43 = !{i1 false, !44, i1 false, i1 true}
!44 = !{double 0.000000e+00, double 2.720000e+02}
!45 = !{i1 false, !46, i1 false, i1 true}
!46 = !{double 0.000000e+00, double 2.900000e+02}
!47 = !{i1 false, !48, i1 false, i1 true}
!48 = !{double 0.000000e+00, double 9.000000e+01}
!49 = !{i1 false, !50, i1 false, i1 true}
!50 = !{double 0.000000e+00, double 3.420000e+02}
!51 = !{i1 false, !11, i1 false, i1 true}
!52 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!53 = !{i32 0, i1 false, i32 0, i1 false}
!54 = !{i1 false, !36, i1 false, i1 false}
!55 = !{i1 false, !22, i1 false, i1 false}
!56 = !{i1 false, !57, i1 false, i1 false}
!57 = !{double 0.000000e+00, double 4.000000e+00}
!58 = !{i1 false, !59, i1 false, i1 false}
!59 = !{double 1.000000e+00, double 1.000000e+00}
!60 = !{i1 false, !25, i1 false, i1 false}
!61 = !{i1 false, !62, i1 false, i1 false}
!62 = !{double 1.000000e+00, double 2.000000e+00}
!63 = !{i1 false, !64, i1 false, i1 false}
!64 = !{double 0.000000e+00, double 3.200000e+01}
!65 = !{i1 false, !66, i1 false, i1 false}
!66 = !{double 0.000000e+00, double 3.300000e+01}
!67 = !{i1 false, !68, i1 false, i1 false}
!68 = !{double 3.000000e+00, double 5.000000e+00}
!69 = !{i1 false, !70, i1 false, i1 false}
!70 = !{double 0.000000e+00, double 1.500000e+01}
!71 = !{i1 false, !72, i1 false, i1 false}
!72 = !{double 1.000000e+00, double 1.600000e+01}
!73 = !{i1 false, !74, i1 false, i1 false}
!74 = !{double 0.000000e+00, double 4.800000e+01}
!75 = !{i1 false, !76, i1 false, i1 false}
!76 = !{double 0.000000e+00, double 5.000000e+01}
!77 = !{i1 false, !78, i1 false, i1 false}
!78 = !{double 1.000000e+00, double 3.000000e+00}
!79 = !{i1 false, !80, i1 false, i1 false}
!80 = !{double 2.000000e+00, double 5.000000e+00}
!81 = !{i1 false, !82, i1 false, i1 false}
!82 = !{double 0.000000e+00, double 2.000000e+01}
!83 = !{i1 false, !84, i1 false, i1 false}
!84 = !{double 0.000000e+00, double 6.400000e+01}
!85 = !{i1 false, !86, i1 false, i1 false}
!86 = !{double 0.000000e+00, double 6.700000e+01}
!87 = !{i1 false, !88, i1 false, i1 false}
!88 = !{double 1.000000e+00, double 4.000000e+00}