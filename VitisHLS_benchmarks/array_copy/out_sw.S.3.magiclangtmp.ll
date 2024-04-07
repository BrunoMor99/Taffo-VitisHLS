; ModuleID = 'out_sw.S.2.magiclangtmp.ll'
source_filename = "array_copy_taffo.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [34 x i8] c"target('xs') scalar(range(5, 10))\00", section "llvm.metadata", !taffo.info !0
@.str.1 = private unnamed_addr constant [19 x i8] c"array_copy_taffo.c\00", section "llvm.metadata", !taffo.info !2
@.str.2 = private unnamed_addr constant [34 x i8] c"target('ys') scalar(range(5, 10))\00", section "llvm.metadata", !taffo.info !2
@.str.3 = private unnamed_addr constant [9 x i8] c"scalar()\00", section "llvm.metadata", !taffo.info !4
@.str.4 = private unnamed_addr constant [5 x i8] c"%f \0A\00", align 1, !taffo.info !6

; Function Attrs: noinline nounwind uwtable
define dso_local void @array_copy(float*, float*, float*) #0 !taffo.start !10 !taffo.funinfo !11 {
  %4 = alloca float*, align 8, !taffo.info !12
  %5 = alloca float*, align 8, !taffo.info !14
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4, !taffo.info !16
  %8 = alloca i32, align 4, !taffo.info !18
  %9 = alloca i32, align 4
  %10 = alloca float*, align 8, !taffo.target !20, !taffo.info !21
  %11 = alloca [16 x float], align 16, !taffo.target !23, !taffo.info !21
  %12 = alloca float, align 4, !taffo.info !24
  store float* %0, float** %4, align 8
  store float* %1, float** %5, align 8
  store float* %2, float** %6, align 8
  store i32 16, i32* %7, align 4
  %13 = bitcast float** %10 to i8*, !taffo.target !20, !taffo.info !21
  %14 = bitcast [16 x float]* %11 to i8*, !taffo.target !23, !taffo.info !21
  %15 = bitcast float* %12 to i8*, !taffo.info !26
  store float 5.000000e+00, float* %12, align 4, !taffo.info !26
  %16 = load float*, float** %4, align 8, !taffo.info !12
  store float* %16, float** %10, align 8, !taffo.target !20, !taffo.info !26
  store i32 0, i32* %8, align 4
  br label %17

; <label>:17:                                     ; preds = %31, %3
  %18 = load i32, i32* %8, align 4, !taffo.info !18
  %19 = icmp slt i32 %18, 16, !taffo.info !12
  br i1 %19, label %20, label %34

; <label>:20:                                     ; preds = %17
  %21 = load float*, float** %10, align 8, !taffo.target !20, !taffo.info !27
  %22 = load i32, i32* %8, align 4, !taffo.info !18
  %23 = sext i32 %22 to i64, !taffo.info !29
  %24 = getelementptr inbounds float, float* %21, i64 %23, !taffo.target !20, !taffo.info !27
  %25 = load float, float* %24, align 4, !taffo.target !20, !taffo.info !27
  %26 = load float, float* %12, align 4, !taffo.info !24
  %27 = fmul float %25, %26, !taffo.info !24
  %28 = load i32, i32* %8, align 4, !taffo.info !18
  %29 = sext i32 %28 to i64, !taffo.info !29
  %30 = getelementptr inbounds [16 x float], [16 x float]* %11, i64 0, i64 %29, !taffo.target !23, !taffo.info !24
  store float %27, float* %30, align 4, !taffo.target !23, !taffo.info !26
  br label %31

; <label>:31:                                     ; preds = %20
  %32 = load i32, i32* %8, align 4, !taffo.info !18
  %33 = add nsw i32 %32, 1, !taffo.info !31
  store i32 %33, i32* %8, align 4
  br label %17

; <label>:34:                                     ; preds = %17
  store i32 0, i32* %8, align 4
  br label %35

; <label>:35:                                     ; preds = %47, %34
  %36 = load i32, i32* %8, align 4, !taffo.info !18
  %37 = icmp slt i32 %36, 16, !taffo.info !12
  br i1 %37, label %38, label %50

; <label>:38:                                     ; preds = %35
  %39 = load i32, i32* %8, align 4, !taffo.info !18
  %40 = sext i32 %39 to i64, !taffo.info !33
  %41 = getelementptr inbounds [16 x float], [16 x float]* %11, i64 0, i64 %40, !taffo.target !23, !taffo.info !24
  %42 = load float, float* %41, align 4, !taffo.target !23, !taffo.info !35
  %43 = load float*, float** %5, align 8, !taffo.info !14
  %44 = load i32, i32* %8, align 4, !taffo.info !18
  %45 = sext i32 %44 to i64, !taffo.info !33
  %46 = getelementptr inbounds float, float* %43, i64 %45, !taffo.info !14
  store float %42, float* %46, align 4, !taffo.target !23, !taffo.info !26
  br label %47

; <label>:47:                                     ; preds = %38
  %48 = load i32, i32* %8, align 4, !taffo.info !18
  %49 = add nsw i32 %48, 1, !taffo.info !36
  store i32 %49, i32* %8, align 4
  br label %35

; <label>:50:                                     ; preds = %35
  ret void
}

; Function Attrs: nounwind
declare !taffo.funinfo !38 void @llvm.var.annotation(i8*, i8*, i8*, i32) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32, i8**) #0 !taffo.funinfo !39 {
  %3 = alloca i32, align 4, !taffo.info !40
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4, !taffo.info !16
  %7 = alloca i32, align 4, !taffo.info !16
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8, !taffo.info !16
  %10 = alloca i64, align 8, !taffo.info !16
  %11 = alloca i64, align 8, !taffo.info !16
  %12 = alloca i32, align 4, !taffo.info !18
  %13 = alloca i32, align 4
  %14 = alloca float, align 4, !taffo.info !16
  %15 = alloca float, align 4, !taffo.info !16
  %16 = alloca float, align 4, !taffo.info !42
  %17 = alloca float, align 4, !taffo.info !40
  %18 = alloca float, align 4, !taffo.info !12
  %19 = alloca float, align 4, !taffo.info !12
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 16, i32* %6, align 4
  store i32 16, i32* %7, align 4
  %20 = load i32, i32* %7, align 4, !taffo.info !16
  %21 = zext i32 %20 to i64, !taffo.info !16
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %8, align 8
  %23 = alloca float, i64 %21, align 16, !taffo.info !43
  store i64 %21, i64* %9, align 8
  %24 = load i32, i32* %7, align 4, !taffo.info !16
  %25 = zext i32 %24 to i64, !taffo.info !16
  %26 = alloca float, i64 %25, align 16, !taffo.info !14
  store i64 %25, i64* %10, align 8
  %27 = load i32, i32* %7, align 4, !taffo.info !16
  %28 = zext i32 %27 to i64, !taffo.info !16
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
  %31 = load i32, i32* %12, align 4, !taffo.info !18
  %32 = icmp slt i32 %31, 16, !taffo.info !12
  br i1 %32, label %33, label %47

; <label>:33:                                     ; preds = %30
  %34 = load float, float* %18, align 4, !taffo.info !12
  %35 = load i32, i32* %12, align 4, !taffo.info !18
  %36 = sitofp i32 %35 to float, !taffo.info !40
  %37 = load float, float* %14, align 4, !taffo.info !16
  %38 = fdiv float %36, %37, !taffo.info !40
  %39 = fadd float %34, %38, !taffo.info !12
  store float %39, float* %19, align 4
  %40 = load float, float* %19, align 4, !taffo.info !12
  %41 = load i32, i32* %12, align 4, !taffo.info !18
  %42 = sext i32 %41 to i64, !taffo.info !40
  %43 = getelementptr inbounds float, float* %23, i64 %42, !taffo.info !43
  store float %40, float* %43, align 4
  br label %44

; <label>:44:                                     ; preds = %33
  %45 = load i32, i32* %12, align 4, !taffo.info !18
  %46 = add nsw i32 %45, 1, !taffo.info !12
  store i32 %46, i32* %12, align 4
  br label %30

; <label>:47:                                     ; preds = %30
  store i32 0, i32* %12, align 4
  br label %48

; <label>:48:                                     ; preds = %56, %47
  %49 = load i32, i32* %12, align 4, !taffo.info !18
  %50 = icmp slt i32 %49, 16, !taffo.info !12
  br i1 %50, label %51, label %59

; <label>:51:                                     ; preds = %48
  %52 = load float, float* %17, align 4, !taffo.info !40
  %53 = load i32, i32* %12, align 4, !taffo.info !18
  %54 = sext i32 %53 to i64, !taffo.info !29
  %55 = getelementptr inbounds float, float* %26, i64 %54, !taffo.info !14
  store float %52, float* %55, align 4
  br label %56

; <label>:56:                                     ; preds = %51
  %57 = load i32, i32* %12, align 4, !taffo.info !18
  %58 = add nsw i32 %57, 1, !taffo.info !31
  store i32 %58, i32* %12, align 4
  br label %48

; <label>:59:                                     ; preds = %48
  call void @array_copy(float* %23, float* %26, float* %29)
  store i32 0, i32* %12, align 4
  br label %60

; <label>:60:                                     ; preds = %78, %59
  %61 = load i32, i32* %12, align 4, !taffo.info !18
  %62 = icmp slt i32 %61, 16, !taffo.info !12
  br i1 %62, label %63, label %81

; <label>:63:                                     ; preds = %60
  %64 = load i32, i32* %12, align 4, !taffo.info !18
  %65 = sext i32 %64 to i64, !taffo.info !33
  %66 = getelementptr inbounds float, float* %26, i64 %65, !taffo.info !14
  %67 = load float, float* %66, align 4, !taffo.info !14
  %68 = fpext float %67 to double, !taffo.info !14
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), double %68)
  %70 = load i32, i32* %12, align 4, !taffo.info !18
  %71 = sext i32 %70 to i64, !taffo.info !33
  %72 = getelementptr inbounds float, float* %23, i64 %71, !taffo.info !43
  %73 = load float, float* %72, align 4, !taffo.info !43
  %74 = load float, float* %16, align 4, !taffo.info !42
  %75 = fmul float %73, %74, !taffo.info !42
  %76 = fpext float %75 to double, !taffo.info !42
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), double %76)
  br label %78

; <label>:78:                                     ; preds = %63
  %79 = load i32, i32* %12, align 4, !taffo.info !18
  %80 = add nsw i32 %79, 1, !taffo.info !36
  store i32 %80, i32* %12, align 4
  br label %60

; <label>:81:                                     ; preds = %60
  store i32 0, i32* %3, align 4
  %82 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %82)
  %83 = load i32, i32* %3, align 4, !taffo.info !40
  ret i32 %83, !taffo.info !40
}

; Function Attrs: nounwind
declare !taffo.funinfo !44 i8* @llvm.stacksave() #1

declare !taffo.funinfo !45 dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare !taffo.funinfo !45 void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!8}
!llvm.ident = !{!9}

!0 = !{i1 false, !1, i1 false, i1 false}
!1 = !{double 0.000000e+00, double 1.200000e+02}
!2 = !{i1 false, !3, i1 false, i1 false}
!3 = !{double 0.000000e+00, double 1.210000e+02}
!4 = !{i1 false, !5, i1 false, i1 false}
!5 = !{double 0.000000e+00, double 1.150000e+02}
!6 = !{i1 false, !7, i1 false, i1 false}
!7 = !{double 0.000000e+00, double 1.020000e+02}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 8.0.0 (tags/RELEASE_800/final)"}
!10 = !{i1 true}
!11 = !{i32 1, !12, i32 1, !14, i32 0, i1 false}
!12 = !{i1 false, !13, i1 false, i1 false}
!13 = !{double 1.000000e+00, double 1.000000e+00}
!14 = !{i1 false, !15, i1 false, i1 false}
!15 = !{double 0.000000e+00, double 5.000000e+00}
!16 = !{i1 false, !17, i1 false, i1 false}
!17 = !{double 1.600000e+01, double 1.600000e+01}
!18 = !{i1 false, !19, i1 false, i1 false}
!19 = !{double 0.000000e+00, double 3.000000e+00}
!20 = !{!"xs"}
!21 = !{i1 false, !22, i1 false, i1 true}
!22 = !{double 5.000000e+00, double 1.000000e+01}
!23 = !{!"ys"}
!24 = !{i1 false, !25, i1 false, i1 true}
!25 = !{double 5.000000e+00, double 5.000000e+00}
!26 = !{i1 false, i1 false, i1 false, i1 true}
!27 = !{i1 false, !28, i1 false, i1 true}
!28 = !{double 1.000000e+00, double 1.000000e+01}
!29 = !{i1 false, !30, i1 false, i1 false}
!30 = !{double 0.000000e+00, double 1.000000e+00}
!31 = !{i1 false, !32, i1 false, i1 false}
!32 = !{double 1.000000e+00, double 2.000000e+00}
!33 = !{i1 false, !34, i1 false, i1 false}
!34 = !{double 0.000000e+00, double 2.000000e+00}
!35 = !{i1 false, !15, i1 false, i1 true}
!36 = !{i1 false, !37, i1 false, i1 false}
!37 = !{double 1.000000e+00, double 3.000000e+00}
!38 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!39 = !{i32 0, i1 false, i32 0, i1 false}
!40 = !{i1 false, !41, i1 false, i1 false}
!41 = !{double 0.000000e+00, double 0.000000e+00}
!42 = !{i1 false, !25, i1 false, i1 false}
!43 = !{i1 false, !28, i1 false, i1 false}
!44 = !{}
!45 = !{i32 0, i1 false}
