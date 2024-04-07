; ModuleID = 'out_sw.S.4.magiclangtmp.ll'
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
  %u4_28fixp = alloca i32*, align 8, !taffo.info !20, !taffo.target !23
  %u4_28fixp1 = alloca [16 x i32], align 16, !taffo.info !20, !taffo.target !24
  %u3_29fixp = alloca i32, align 4, !taffo.info !25
  store float* %0, float** %4, align 8
  store float* %1, float** %5, align 8
  store float* %2, float** %6, align 8
  store i32 16, i32* %7, align 4
  store i32 -1610612736, i32* %u3_29fixp, align 4, !taffo.info !28
  %9 = load float*, float** %4, align 8, !taffo.info !12
  %10 = bitcast float* %9 to i32*, !taffo.info !12
  store i32* %10, i32** %u4_28fixp, align 8, !taffo.info !28, !taffo.target !23
  store i32 0, i32* %8, align 4
  br label %11

; <label>:11:                                     ; preds = %23, %3
  %12 = load i32, i32* %8, align 4, !taffo.info !18
  %13 = icmp slt i32 %12, 16, !taffo.info !12
  br i1 %13, label %14, label %26

; <label>:14:                                     ; preds = %11
  %u4_28fixp2 = load i32*, i32** %u4_28fixp, align 8, !taffo.info !29, !taffo.target !23
  %15 = load i32, i32* %8, align 4, !taffo.info !18
  %16 = sext i32 %15 to i64, !taffo.info !31
  %u4_28fixp6 = getelementptr inbounds i32, i32* %u4_28fixp2, i64 %16, !taffo.info !29, !taffo.target !23
  %u4_28fixp8 = load i32, i32* %u4_28fixp6, align 4, !taffo.info !29, !taffo.target !23
  %u3_29fixp5 = load i32, i32* %u3_29fixp, align 4, !taffo.info !33
  %17 = zext i32 %u4_28fixp8 to i64, !taffo.info !29, !taffo.target !23
  %18 = zext i32 %u3_29fixp5 to i64, !taffo.info !33
  %19 = mul i64 %17, %18, !taffo.info !34, !taffo.target !23
  %20 = lshr i64 %19, 29, !taffo.info !34, !taffo.target !23
  %u4_28fixp9 = trunc i64 %20 to i32, !taffo.info !33, !taffo.target !23
  %21 = load i32, i32* %8, align 4, !taffo.info !18
  %22 = sext i32 %21 to i64, !taffo.info !31
  %u4_28fixp4 = getelementptr inbounds [16 x i32], [16 x i32]* %u4_28fixp1, i64 0, i64 %22, !taffo.info !25, !taffo.target !24
  store i32 %u4_28fixp9, i32* %u4_28fixp4, align 4, !taffo.info !28, !taffo.target !24
  br label %23

; <label>:23:                                     ; preds = %14
  %24 = load i32, i32* %8, align 4, !taffo.info !18
  %25 = add nsw i32 %24, 1, !taffo.info !36
  store i32 %25, i32* %8, align 4
  br label %11

; <label>:26:                                     ; preds = %11
  store i32 0, i32* %8, align 4
  br label %27

; <label>:27:                                     ; preds = %39, %26
  %28 = load i32, i32* %8, align 4, !taffo.info !18
  %29 = icmp slt i32 %28, 16, !taffo.info !12
  br i1 %29, label %30, label %42

; <label>:30:                                     ; preds = %27
  %31 = load i32, i32* %8, align 4, !taffo.info !18
  %32 = sext i32 %31 to i64, !taffo.info !38
  %u4_28fixp3 = getelementptr inbounds [16 x i32], [16 x i32]* %u4_28fixp1, i64 0, i64 %32, !taffo.info !25, !taffo.target !24
  %u4_28fixp7 = load i32, i32* %u4_28fixp3, align 4, !taffo.info !40, !taffo.target !24
  %33 = uitofp i32 %u4_28fixp7 to float, !taffo.info !40, !taffo.target !24
  %34 = fdiv float %33, 0x41B0000000000000, !taffo.info !40, !taffo.target !24
  %35 = load float*, float** %5, align 8, !taffo.info !14
  %36 = load i32, i32* %8, align 4, !taffo.info !18
  %37 = sext i32 %36 to i64, !taffo.info !38
  %38 = getelementptr inbounds float, float* %35, i64 %37, !taffo.info !14
  store float %34, float* %38, align 4, !taffo.info !28, !taffo.target !24
  br label %39

; <label>:39:                                     ; preds = %30
  %40 = load i32, i32* %8, align 4, !taffo.info !18
  %41 = add nsw i32 %40, 1, !taffo.info !41
  store i32 %41, i32* %8, align 4
  br label %27

; <label>:42:                                     ; preds = %27
  ret void
}

; Function Attrs: nounwind
declare !taffo.funinfo !43 void @llvm.var.annotation(i8*, i8*, i8*, i32) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32, i8**) #0 !taffo.funinfo !44 {
  %3 = alloca i32, align 4, !taffo.info !45
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4, !taffo.info !16
  %7 = alloca i32, align 4, !taffo.info !16
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8, !taffo.info !16
  %10 = alloca i64, align 8, !taffo.info !16
  %11 = alloca i64, align 8, !taffo.info !16
  %12 = alloca i32, align 4, !taffo.info !18
  %13 = alloca float, align 4, !taffo.info !16
  %14 = alloca float, align 4, !taffo.info !16
  %15 = alloca float, align 4, !taffo.info !47
  %16 = alloca float, align 4, !taffo.info !45
  %17 = alloca float, align 4, !taffo.info !12
  %18 = alloca float, align 4, !taffo.info !12
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 16, i32* %6, align 4
  store i32 16, i32* %7, align 4
  %19 = load i32, i32* %7, align 4, !taffo.info !16
  %20 = zext i32 %19 to i64, !taffo.info !16
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %8, align 8
  %22 = alloca float, i64 %20, align 16, !taffo.info !48
  store i64 %20, i64* %9, align 8
  %23 = load i32, i32* %7, align 4, !taffo.info !16
  %24 = zext i32 %23 to i64, !taffo.info !16
  %25 = alloca float, i64 %24, align 16, !taffo.info !14
  store i64 %24, i64* %10, align 8
  %26 = load i32, i32* %7, align 4, !taffo.info !16
  %27 = zext i32 %26 to i64, !taffo.info !16
  %28 = alloca float, i64 %27, align 16
  store i64 %27, i64* %11, align 8
  store float 1.600000e+01, float* %13, align 4
  store float 1.600000e+01, float* %14, align 4
  store float 5.000000e+00, float* %15, align 4
  store float 0.000000e+00, float* %16, align 4
  store float 1.000000e+00, float* %17, align 4
  store i32 0, i32* %12, align 4
  br label %29

; <label>:29:                                     ; preds = %43, %2
  %30 = load i32, i32* %12, align 4, !taffo.info !18
  %31 = icmp slt i32 %30, 16, !taffo.info !12
  br i1 %31, label %32, label %46

; <label>:32:                                     ; preds = %29
  %33 = load float, float* %17, align 4, !taffo.info !12
  %34 = load i32, i32* %12, align 4, !taffo.info !18
  %35 = sitofp i32 %34 to float, !taffo.info !45
  %36 = load float, float* %13, align 4, !taffo.info !16
  %37 = fdiv float %35, %36, !taffo.info !45
  %38 = fadd float %33, %37, !taffo.info !12
  store float %38, float* %18, align 4
  %39 = load float, float* %18, align 4, !taffo.info !12
  %40 = load i32, i32* %12, align 4, !taffo.info !18
  %41 = sext i32 %40 to i64, !taffo.info !45
  %42 = getelementptr inbounds float, float* %22, i64 %41, !taffo.info !48
  store float %39, float* %42, align 4
  br label %43

; <label>:43:                                     ; preds = %32
  %44 = load i32, i32* %12, align 4, !taffo.info !18
  %45 = add nsw i32 %44, 1, !taffo.info !12
  store i32 %45, i32* %12, align 4
  br label %29

; <label>:46:                                     ; preds = %29
  store i32 0, i32* %12, align 4
  br label %47

; <label>:47:                                     ; preds = %55, %46
  %48 = load i32, i32* %12, align 4, !taffo.info !18
  %49 = icmp slt i32 %48, 16, !taffo.info !12
  br i1 %49, label %50, label %58

; <label>:50:                                     ; preds = %47
  %51 = load float, float* %16, align 4, !taffo.info !45
  %52 = load i32, i32* %12, align 4, !taffo.info !18
  %53 = sext i32 %52 to i64, !taffo.info !31
  %54 = getelementptr inbounds float, float* %25, i64 %53, !taffo.info !14
  store float %51, float* %54, align 4
  br label %55

; <label>:55:                                     ; preds = %50
  %56 = load i32, i32* %12, align 4, !taffo.info !18
  %57 = add nsw i32 %56, 1, !taffo.info !36
  store i32 %57, i32* %12, align 4
  br label %47

; <label>:58:                                     ; preds = %47
  call void @array_copy(float* %22, float* %25, float* %28)
  store i32 0, i32* %12, align 4
  br label %59

; <label>:59:                                     ; preds = %77, %58
  %60 = load i32, i32* %12, align 4, !taffo.info !18
  %61 = icmp slt i32 %60, 16, !taffo.info !12
  br i1 %61, label %62, label %80

; <label>:62:                                     ; preds = %59
  %63 = load i32, i32* %12, align 4, !taffo.info !18
  %64 = sext i32 %63 to i64, !taffo.info !38
  %65 = getelementptr inbounds float, float* %25, i64 %64, !taffo.info !14
  %66 = load float, float* %65, align 4, !taffo.info !14
  %67 = fpext float %66 to double, !taffo.info !14
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), double %67)
  %69 = load i32, i32* %12, align 4, !taffo.info !18
  %70 = sext i32 %69 to i64, !taffo.info !38
  %71 = getelementptr inbounds float, float* %22, i64 %70, !taffo.info !48
  %72 = load float, float* %71, align 4, !taffo.info !48
  %73 = load float, float* %15, align 4, !taffo.info !47
  %74 = fmul float %72, %73, !taffo.info !47
  %75 = fpext float %74 to double, !taffo.info !47
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), double %75)
  br label %77

; <label>:77:                                     ; preds = %62
  %78 = load i32, i32* %12, align 4, !taffo.info !18
  %79 = add nsw i32 %78, 1, !taffo.info !41
  store i32 %79, i32* %12, align 4
  br label %59

; <label>:80:                                     ; preds = %59
  store i32 0, i32* %3, align 4
  %81 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %81)
  %82 = load i32, i32* %3, align 4, !taffo.info !45
  ret i32 %82, !taffo.info !45
}

; Function Attrs: nounwind
declare !taffo.funinfo !49 i8* @llvm.stacksave() #1

declare !taffo.funinfo !50 dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare !taffo.funinfo !50 void @llvm.stackrestore(i8*) #1

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
!20 = !{!21, !22, i1 false, i1 true}
!21 = !{!"fixp", i32 32, i32 28}
!22 = !{double 5.000000e+00, double 1.000000e+01}
!23 = !{!"xs"}
!24 = !{!"ys"}
!25 = !{!26, !27, i1 false, i1 true}
!26 = !{!"fixp", i32 32, i32 29}
!27 = !{double 5.000000e+00, double 5.000000e+00}
!28 = !{i1 false, i1 false, i1 false, i1 true}
!29 = !{!21, !30, i1 false, i1 true}
!30 = !{double 1.000000e+00, double 1.000000e+01}
!31 = !{i1 false, !32, i1 false, i1 false}
!32 = !{double 0.000000e+00, double 1.000000e+00}
!33 = !{!21, !27, i1 false, i1 true}
!34 = !{!35, !27, i1 false}
!35 = !{!"fixp", i32 64, i32 28}
!36 = !{i1 false, !37, i1 false, i1 false}
!37 = !{double 1.000000e+00, double 2.000000e+00}
!38 = !{i1 false, !39, i1 false, i1 false}
!39 = !{double 0.000000e+00, double 2.000000e+00}
!40 = !{!26, !15, i1 false, i1 true}
!41 = !{i1 false, !42, i1 false, i1 false}
!42 = !{double 1.000000e+00, double 3.000000e+00}
!43 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!44 = !{i32 0, i1 false, i32 0, i1 false}
!45 = !{i1 false, !46, i1 false, i1 false}
!46 = !{double 0.000000e+00, double 0.000000e+00}
!47 = !{i1 false, !27, i1 false, i1 false}
!48 = !{i1 false, !30, i1 false, i1 false}
!49 = !{}
!50 = !{i32 0, i1 false}
