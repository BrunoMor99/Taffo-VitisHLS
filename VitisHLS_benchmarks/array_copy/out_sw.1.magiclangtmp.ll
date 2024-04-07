; ModuleID = 'array_copy_taffo.c'
source_filename = "array_copy_taffo.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [34 x i8] c"target('xs') scalar(range(0, 12))\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [19 x i8] c"array_copy_taffo.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [34 x i8] c"target('ys') scalar(range(0, 12))\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [9 x i8] c"scalar()\00", section "llvm.metadata"
@.str.4 = private unnamed_addr constant [5 x i8] c"%f \0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @array_copy(float*, float*, float*) #0 {
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [16 x float], align 16
  %11 = alloca [16 x float], align 16
  %12 = alloca float, align 4
  store float* %0, float** %4, align 8
  store float* %1, float** %5, align 8
  store float* %2, float** %6, align 8
  store i32 16, i32* %7, align 4
  %13 = bitcast [16 x float]* %10 to i8*
  call void @llvm.var.annotation(i8* %13, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i32 32)
  %14 = bitcast [16 x float]* %11 to i8*
  call void @llvm.var.annotation(i8* %14, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i32 33)
  %15 = bitcast float* %12 to i8*
  call void @llvm.var.annotation(i8* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i32 34)
  store float 5.000000e+00, float* %12, align 4
  br label %16

; <label>:16:                                     ; preds = %3
  store i32 0, i32* %8, align 4
  br label %17

; <label>:17:                                     ; preds = %29, %16
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 16
  br i1 %19, label %20, label %32

; <label>:20:                                     ; preds = %17
  %21 = load float*, float** %4, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds float, float* %21, i64 %23
  %25 = load float, float* %24, align 4
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [16 x float], [16 x float]* %10, i64 0, i64 %27
  store float %25, float* %28, align 4
  br label %29

; <label>:29:                                     ; preds = %20
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %8, align 4
  br label %17

; <label>:32:                                     ; preds = %17
  store i32 0, i32* %8, align 4
  br label %33

; <label>:33:                                     ; preds = %46, %32
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 16
  br i1 %35, label %36, label %49

; <label>:36:                                     ; preds = %33
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [16 x float], [16 x float]* %10, i64 0, i64 %38
  %40 = load float, float* %39, align 4
  %41 = load float, float* %12, align 4
  %42 = fmul float %40, %41
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [16 x float], [16 x float]* %11, i64 0, i64 %44
  store float %42, float* %45, align 4
  br label %46

; <label>:46:                                     ; preds = %36
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %8, align 4
  br label %33

; <label>:49:                                     ; preds = %33
  store i32 0, i32* %8, align 4
  br label %50

; <label>:50:                                     ; preds = %62, %49
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %51, 16
  br i1 %52, label %53, label %65

; <label>:53:                                     ; preds = %50
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [16 x float], [16 x float]* %11, i64 0, i64 %55
  %57 = load float, float* %56, align 4
  %58 = load float*, float** %5, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds float, float* %58, i64 %60
  store float %57, float* %61, align 4
  br label %62

; <label>:62:                                     ; preds = %53
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %8, align 4
  br label %50

; <label>:65:                                     ; preds = %50
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
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 16, i32* %6, align 4
  store i32 16, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %8, align 8
  %23 = alloca float, i64 %21, align 16
  store i64 %21, i64* %9, align 8
  %24 = load i32, i32* %7, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca float, i64 %25, align 16
  store i64 %25, i64* %10, align 8
  %27 = load i32, i32* %7, align 4
  %28 = zext i32 %27 to i64
  %29 = alloca float, i64 %28, align 16
  store i64 %28, i64* %11, align 8
  store float 1.600000e+01, float* %14, align 4
  store float 1.600000e+01, float* %15, align 4
  store float 5.000000e+00, float* %16, align 4
  store float 0.000000e+00, float* %17, align 4
  store float 1.000000e+00, float* %18, align 4
  store i32 0, i32* %12, align 4
  br label %30

; <label>:30:                                     ; preds = %44, %2
  %31 = load i32, i32* %12, align 4
  %32 = icmp slt i32 %31, 16
  br i1 %32, label %33, label %47

; <label>:33:                                     ; preds = %30
  %34 = load float, float* %18, align 4
  %35 = load i32, i32* %12, align 4
  %36 = sitofp i32 %35 to float
  %37 = load float, float* %14, align 4
  %38 = fdiv float %36, %37
  %39 = fadd float %34, %38
  store float %39, float* %19, align 4
  %40 = load float, float* %19, align 4
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds float, float* %23, i64 %42
  store float %40, float* %43, align 4
  br label %44

; <label>:44:                                     ; preds = %33
  %45 = load i32, i32* %12, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %12, align 4
  br label %30

; <label>:47:                                     ; preds = %30
  store i32 0, i32* %12, align 4
  br label %48

; <label>:48:                                     ; preds = %56, %47
  %49 = load i32, i32* %12, align 4
  %50 = icmp slt i32 %49, 16
  br i1 %50, label %51, label %59

; <label>:51:                                     ; preds = %48
  %52 = load float, float* %17, align 4
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds float, float* %26, i64 %54
  store float %52, float* %55, align 4
  br label %56

; <label>:56:                                     ; preds = %51
  %57 = load i32, i32* %12, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %12, align 4
  br label %48

; <label>:59:                                     ; preds = %48
  call void @array_copy(float* %23, float* %26, float* %29)
  store i32 0, i32* %12, align 4
  br label %60

; <label>:60:                                     ; preds = %78, %59
  %61 = load i32, i32* %12, align 4
  %62 = icmp slt i32 %61, 16
  br i1 %62, label %63, label %81

; <label>:63:                                     ; preds = %60
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds float, float* %26, i64 %65
  %67 = load float, float* %66, align 4
  %68 = fpext float %67 to double
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), double %68)
  %70 = load i32, i32* %12, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds float, float* %23, i64 %71
  %73 = load float, float* %72, align 4
  %74 = load float, float* %16, align 4
  %75 = fmul float %73, %74
  %76 = fpext float %75 to double
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), double %76)
  br label %78

; <label>:78:                                     ; preds = %63
  %79 = load i32, i32* %12, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %12, align 4
  br label %60

; <label>:81:                                     ; preds = %60
  store i32 0, i32* %3, align 4
  %82 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %82)
  %83 = load i32, i32* %3, align 4
  ret i32 %83
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
