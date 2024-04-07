; ModuleID = 'out.4.magiclangtmp.ll'
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
  %s14_18fixp4 = alloca i32*, align 8, !taffo.info !21, !taffo.target !24
  %s14_18fixp = alloca i32, align 4, !taffo.info !21
  %9 = alloca i32, align 4, !taffo.info !25
  %10 = alloca i32, align 4, !taffo.info !25
  %u5_27fixp6 = alloca i32, align 4, !taffo.info !27
  %u5_27fixp = alloca i32, align 4, !taffo.info !27
  %u3_29fixp = alloca i32, align 4, !taffo.info !29
  %u0_32fixp = alloca i32, align 4, !taffo.info !32
  %u1_31fixp = alloca i32, align 4, !taffo.info !34
  store float* %0, float** %4, align 8
  store float* %1, float** %5, align 8
  store float* %2, float** %6, align 8
  store i32 16, i32* %7, align 4
  store i32 16, i32* %8, align 4
  %11 = load float*, float** %4, align 8
  %12 = bitcast float* %11 to i32*
  store i32* %12, i32** %s14_18fixp4, align 8, !taffo.info !37, !taffo.target !24
  %13 = load i32, i32* %8, align 4, !taffo.info !19
  %14 = shl i32 %13, 27, !taffo.info !19
  store i32 %14, i32* %u5_27fixp6, align 4, !taffo.info !37
  %15 = load i32, i32* %7, align 4, !taffo.info !19
  %16 = shl i32 %15, 27, !taffo.info !19
  store i32 %16, i32* %u5_27fixp, align 4, !taffo.info !37
  store i32 -1610612736, i32* %u3_29fixp, align 4, !taffo.info !37
  store i32 0, i32* %u0_32fixp, align 4, !taffo.info !37
  store i32 -2147483648, i32* %u1_31fixp, align 4, !taffo.info !37
  store i32 0, i32* %9, align 4, !taffo.info !37
  br label %17

; <label>:17:                                     ; preds = %32, %3
  %18 = load i32, i32* %9, align 4, !taffo.info !38
  %19 = icmp slt i32 %18, 16, !taffo.info !40
  br i1 %19, label %20, label %35, !taffo.info !37

; <label>:20:                                     ; preds = %17
  %u1_31fixp11 = load i32, i32* %u1_31fixp, align 4, !taffo.info !42
  %21 = lshr i32 %u1_31fixp11, 1, !taffo.info !42
  %22 = load i32, i32* %9, align 4, !taffo.info !25
  %u5_27fixp3 = shl i32 %22, 27, !taffo.info !44
  %23 = zext i32 %u5_27fixp3 to i64, !taffo.info !44
  %24 = shl i64 %23, 27, !taffo.info !44
  %u5_27fixp15 = load i32, i32* %u5_27fixp6, align 4, !taffo.info !27
  %25 = zext i32 %u5_27fixp15 to i64, !taffo.info !27
  %26 = udiv i64 %24, %25, !taffo.info !45
  %27 = shl i64 %26, 3, !taffo.info !45
  %u2_30fixp18 = trunc i64 %27 to i32, !taffo.info !47
  %u2_30fixp21 = add i32 %21, %u2_30fixp18, !taffo.info !48
  %28 = load float*, float** %5, align 8, !taffo.info !15
  %29 = load i32, i32* %9, align 4, !taffo.info !25
  %30 = sext i32 %29 to i64, !taffo.info !25
  %31 = getelementptr inbounds float, float* %28, i64 %30, !taffo.info !48
  %.haxfixp.u2_30fixp = bitcast float* %31 to i32*, !taffo.info !48
  store i32 %u2_30fixp21, i32* %.haxfixp.u2_30fixp, align 4, !taffo.info !37
  br label %32

; <label>:32:                                     ; preds = %20
  %33 = load i32, i32* %9, align 4, !taffo.info !25
  %34 = add nsw i32 %33, 1, !taffo.info !49
  store i32 %34, i32* %9, align 4, !taffo.info !37
  br label %17

; <label>:35:                                     ; preds = %17
  store i32 0, i32* %9, align 4, !taffo.info !37
  br label %36

; <label>:36:                                     ; preds = %49, %35
  %37 = load i32, i32* %9, align 4, !taffo.info !38
  %38 = icmp slt i32 %37, 16, !taffo.info !40
  br i1 %38, label %39, label %52, !taffo.info !37

; <label>:39:                                     ; preds = %36
  store i32 0, i32* %10, align 4, !taffo.info !37
  br label %40

; <label>:40:                                     ; preds = %45, %39
  %41 = load i32, i32* %10, align 4, !taffo.info !38
  %42 = load i32, i32* %8, align 4, !taffo.info !19
  %43 = icmp slt i32 %41, %42, !taffo.info !40
  br i1 %43, label %44, label %48, !taffo.info !37

; <label>:44:                                     ; preds = %40
  br label %45

; <label>:45:                                     ; preds = %44
  %46 = load i32, i32* %10, align 4, !taffo.info !25
  %47 = add nsw i32 %46, 1, !taffo.info !49
  store i32 %47, i32* %10, align 4, !taffo.info !37
  br label %40

; <label>:48:                                     ; preds = %40
  br label %49

; <label>:49:                                     ; preds = %48
  %50 = load i32, i32* %9, align 4, !taffo.info !25
  %51 = add nsw i32 %50, 1, !taffo.info !49
  store i32 %51, i32* %9, align 4, !taffo.info !37
  br label %36

; <label>:52:                                     ; preds = %36
  store i32 0, i32* %9, align 4, !taffo.info !37
  br label %53

; <label>:53:                                     ; preds = %57, %52
  %54 = load i32, i32* %9, align 4, !taffo.info !38
  %55 = icmp slt i32 %54, 16, !taffo.info !40
  br i1 %55, label %56, label %60, !taffo.info !37

; <label>:56:                                     ; preds = %53
  br label %57

; <label>:57:                                     ; preds = %56
  %58 = load i32, i32* %9, align 4, !taffo.info !25
  %59 = add nsw i32 %58, 1, !taffo.info !49
  store i32 %59, i32* %9, align 4, !taffo.info !37
  br label %53

; <label>:60:                                     ; preds = %53
  store i32 0, i32* %9, align 4, !taffo.info !37
  br label %61

; <label>:61:                                     ; preds = %113, %60
  %62 = load i32, i32* %9, align 4, !taffo.info !51
  %63 = icmp slt i32 %62, 16, !taffo.info !40
  br i1 %63, label %64, label %116, !taffo.info !37

; <label>:64:                                     ; preds = %61
  %u0_32fixp12 = load i32, i32* %u0_32fixp, align 4, !taffo.info !32
  %65 = lshr i32 %u0_32fixp12, 14, !taffo.info !32
  store i32 %65, i32* %s14_18fixp, align 4, !taffo.info !37
  store i32 0, i32* %10, align 4, !taffo.info !37
  br label %66

; <label>:66:                                     ; preds = %84, %64
  %67 = load i32, i32* %10, align 4, !taffo.info !38
  %68 = icmp slt i32 %67, 16, !taffo.info !40
  br i1 %68, label %69, label %87, !taffo.info !37

; <label>:69:                                     ; preds = %66
  %s14_18fixp9 = load i32, i32* %s14_18fixp, align 4, !taffo.info !21
  %s14_18fixp14 = load i32*, i32** %s14_18fixp4, align 8, !taffo.info !21, !taffo.target !24
  %70 = load i32, i32* %9, align 4, !taffo.info !25
  %71 = mul nsw i32 %70, 16, !taffo.info !53
  %72 = load i32, i32* %10, align 4, !taffo.info !25
  %73 = add nsw i32 %71, %72, !taffo.info !55
  %74 = sext i32 %73 to i64, !taffo.info !55
  %s14_18fixp17 = getelementptr inbounds i32, i32* %s14_18fixp14, i64 %74, !taffo.info !21, !taffo.target !24
  %s14_18fixp20 = load i32, i32* %s14_18fixp17, align 4, !taffo.info !21, !taffo.target !24
  %75 = load float*, float** %5, align 8, !taffo.info !15
  %76 = load i32, i32* %10, align 4, !taffo.info !25
  %77 = sext i32 %76 to i64, !taffo.info !25
  %78 = getelementptr inbounds float, float* %75, i64 %77, !taffo.info !48
  %.haxfixp.u2_30fixp2 = bitcast float* %78 to i32*, !taffo.info !48
  %u2_30fixp = load i32, i32* %.haxfixp.u2_30fixp2, align 4, !taffo.info !57
  %79 = sext i32 %s14_18fixp20 to i64, !taffo.info !21, !taffo.target !24
  %80 = zext i32 %u2_30fixp to i64, !taffo.info !57
  %81 = mul i64 %79, %80, !taffo.info !59, !taffo.target !24
  %82 = lshr i64 %81, 18, !taffo.info !59, !taffo.target !24
  %u2_30fixp23 = trunc i64 %82 to i32, !taffo.info !61, !taffo.target !24
  %83 = lshr i32 %u2_30fixp23, 12, !taffo.info !61, !taffo.target !24
  %s14_18fixp25 = add i32 %s14_18fixp9, %83, !taffo.info !21
  store i32 %s14_18fixp25, i32* %s14_18fixp, align 4, !taffo.info !37
  br label %84

; <label>:84:                                     ; preds = %69
  %85 = load i32, i32* %10, align 4, !taffo.info !25
  %86 = add nsw i32 %85, 1, !taffo.info !49
  store i32 %86, i32* %10, align 4, !taffo.info !37
  br label %66

; <label>:87:                                     ; preds = %66
  store i32 0, i32* %10, align 4, !taffo.info !37
  br label %88

; <label>:88:                                     ; preds = %109, %87
  %89 = load i32, i32* %10, align 4, !taffo.info !38
  %90 = icmp slt i32 %89, 16, !taffo.info !40
  br i1 %90, label %91, label %112, !taffo.info !37

; <label>:91:                                     ; preds = %88
  %92 = load float*, float** %6, align 8, !taffo.info !17
  %93 = load i32, i32* %10, align 4, !taffo.info !25
  %94 = sext i32 %93 to i64, !taffo.info !25
  %95 = getelementptr inbounds float, float* %92, i64 %94, !taffo.info !32
  %.haxfixp.u0_32fixp1 = bitcast float* %95 to i32*, !taffo.info !32
  %u0_32fixp10 = load i32, i32* %.haxfixp.u0_32fixp1, align 4, !taffo.info !32
  %s14_18fixp13 = load i32*, i32** %s14_18fixp4, align 8, !taffo.info !21, !taffo.target !24
  %96 = load i32, i32* %9, align 4, !taffo.info !25
  %97 = mul nsw i32 %96, 16, !taffo.info !53
  %98 = load i32, i32* %10, align 4, !taffo.info !25
  %99 = add nsw i32 %97, %98, !taffo.info !55
  %100 = sext i32 %99 to i64, !taffo.info !55
  %s14_18fixp16 = getelementptr inbounds i32, i32* %s14_18fixp13, i64 %100, !taffo.info !21, !taffo.target !24
  %s14_18fixp19 = load i32, i32* %s14_18fixp16, align 4, !taffo.info !21, !taffo.target !24
  %s14_18fixp8 = load i32, i32* %s14_18fixp, align 4, !taffo.info !21
  %101 = sext i32 %s14_18fixp19 to i64, !taffo.info !21, !taffo.target !24
  %102 = sext i32 %s14_18fixp8 to i64, !taffo.info !21
  %103 = mul i64 %101, %102, !taffo.info !62, !taffo.target !24
  %104 = lshr i64 %103, 4, !taffo.info !62, !taffo.target !24
  %u0_32fixp22 = trunc i64 %104 to i32, !taffo.info !63, !taffo.target !24
  %u0_32fixp24 = add i32 %u0_32fixp10, %u0_32fixp22, !taffo.info !32
  %105 = load float*, float** %6, align 8, !taffo.info !17
  %106 = load i32, i32* %10, align 4, !taffo.info !25
  %107 = sext i32 %106 to i64, !taffo.info !25
  %108 = getelementptr inbounds float, float* %105, i64 %107, !taffo.info !32
  %.haxfixp.u0_32fixp5 = bitcast float* %108 to i32*, !taffo.info !32
  store i32 %u0_32fixp24, i32* %.haxfixp.u0_32fixp5, align 4, !taffo.info !37
  br label %109

; <label>:109:                                    ; preds = %91
  %110 = load i32, i32* %10, align 4, !taffo.info !25
  %111 = add nsw i32 %110, 1, !taffo.info !49
  store i32 %111, i32* %10, align 4, !taffo.info !37
  br label %88

; <label>:112:                                    ; preds = %88
  br label %113

; <label>:113:                                    ; preds = %112
  %114 = load i32, i32* %9, align 4, !taffo.info !38
  %115 = add nsw i32 %114, 1, !taffo.info !65
  store i32 %115, i32* %9, align 4, !taffo.info !37
  br label %61

; <label>:116:                                    ; preds = %61
  store i32 0, i32* %10, align 4, !taffo.info !37
  br label %117

; <label>:117:                                    ; preds = %127, %116
  %118 = load i32, i32* %10, align 4, !taffo.info !38
  %119 = icmp slt i32 %118, 16, !taffo.info !40
  br i1 %119, label %120, label %130, !taffo.info !37

; <label>:120:                                    ; preds = %117
  %121 = load float*, float** %6, align 8, !taffo.info !17
  %122 = load i32, i32* %9, align 4, !taffo.info !25
  %123 = sext i32 %122 to i64, !taffo.info !25
  %124 = getelementptr inbounds float, float* %121, i64 %123, !taffo.info !32
  %.haxfixp.u0_32fixp = bitcast float* %124 to i32*, !taffo.info !32
  %u0_32fixp7.u0_32fixp = load i32, i32* %.haxfixp.u0_32fixp, align 4, !taffo.info !32
  %125 = uitofp i32 %u0_32fixp7.u0_32fixp to double, !taffo.info !32
  %126 = fdiv double %125, 0x41F0000000000000, !taffo.info !32
  %.flt = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), double %126), !taffo.info !67
  br label %127

; <label>:127:                                    ; preds = %120
  %128 = load i32, i32* %10, align 4, !taffo.info !25
  %129 = add nsw i32 %128, 1, !taffo.info !49
  store i32 %129, i32* %10, align 4, !taffo.info !37
  br label %117

; <label>:130:                                    ; preds = %117
  ret void
}

; Function Attrs: nounwind
declare !taffo.funinfo !68 void @llvm.var.annotation(i8*, i8*, i8*, i32) #1

declare !taffo.funinfo !69 dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32, i8**) #0 !taffo.start !12 !taffo.funinfo !70 {
  %3 = alloca i32, align 4, !taffo.info !17
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4, !taffo.info !19
  %7 = alloca i32, align 4, !taffo.info !19
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8, !taffo.info !71
  %10 = alloca i64, align 8, !taffo.info !19
  %11 = alloca i64, align 8, !taffo.info !19
  %12 = alloca i32, align 4, !taffo.info !25
  %13 = alloca i32, align 4, !taffo.info !25
  %u5_27fixp1 = alloca i32, align 4, !taffo.info !27
  %u5_27fixp = alloca i32, align 4, !taffo.info !27
  %u3_29fixp = alloca i32, align 4, !taffo.info !29
  %u0_32fixp = alloca i32, align 4, !taffo.info !32
  %u1_31fixp = alloca i32, align 4, !taffo.info !34
  %s14_18fixp3 = alloca i32, align 4, !taffo.info !21
  %s14_18fixp5 = alloca i32, align 4, !taffo.info !21
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 16, i32* %6, align 4
  store i32 16, i32* %7, align 4
  %14 = load i32, i32* %6, align 4, !taffo.info !19
  %15 = load i32, i32* %7, align 4, !taffo.info !19
  %16 = mul nsw i32 %14, %15, !taffo.info !71
  %17 = zext i32 %16 to i64, !taffo.info !71
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %8, align 8
  %s14_18fixp = alloca i32, i64 %17, align 16, !taffo.info !21, !taffo.target !24
  store i64 %17, i64* %9, align 8
  %19 = load i32, i32* %7, align 4, !taffo.info !19
  %20 = zext i32 %19 to i64, !taffo.info !19
  %s14_18fixp4 = alloca i32, i64 %20, align 16, !taffo.info !21, !taffo.target !73
  store i64 %20, i64* %10, align 8
  %21 = load i32, i32* %7, align 4, !taffo.info !19
  %22 = zext i32 %21 to i64, !taffo.info !19
  %s14_18fixp2 = alloca i32, i64 %22, align 16, !taffo.info !21, !taffo.target !74
  store i64 %22, i64* %11, align 8
  store i32 -2147483648, i32* %u5_27fixp1, align 4, !taffo.info !37
  store i32 -2147483648, i32* %u5_27fixp, align 4, !taffo.info !37
  store i32 -1610612736, i32* %u3_29fixp, align 4, !taffo.info !37
  store i32 0, i32* %u0_32fixp, align 4, !taffo.info !37
  store i32 -2147483648, i32* %u1_31fixp, align 4, !taffo.info !37
  store i32 0, i32* %12, align 4, !taffo.info !37
  br label %23

; <label>:23:                                     ; preds = %30, %2
  %24 = load i32, i32* %12, align 4, !taffo.info !38
  %25 = icmp slt i32 %24, 16, !taffo.info !40
  br i1 %25, label %26, label %33, !taffo.info !37

; <label>:26:                                     ; preds = %23
  %u1_31fixp6 = load i32, i32* %u1_31fixp, align 4, !taffo.info !34
  %27 = lshr i32 %u1_31fixp6, 13, !taffo.info !34
  store i32 %27, i32* %s14_18fixp3, align 4, !taffo.info !37
  %s14_18fixp10 = load i32, i32* %s14_18fixp3, align 4, !taffo.info !21
  %28 = load i32, i32* %12, align 4, !taffo.info !25
  %29 = sext i32 %28 to i64, !taffo.info !25
  %s14_18fixp11 = getelementptr inbounds i32, i32* %s14_18fixp4, i64 %29, !taffo.info !21, !taffo.target !73
  store i32 %s14_18fixp10, i32* %s14_18fixp11, align 4, !taffo.info !37, !taffo.target !73
  br label %30

; <label>:30:                                     ; preds = %26
  %31 = load i32, i32* %12, align 4, !taffo.info !25
  %32 = add nsw i32 %31, 1, !taffo.info !49
  store i32 %32, i32* %12, align 4, !taffo.info !37
  br label %23

; <label>:33:                                     ; preds = %23
  store i32 0, i32* %12, align 4, !taffo.info !37
  br label %34

; <label>:34:                                     ; preds = %68, %33
  %35 = load i32, i32* %12, align 4, !taffo.info !38
  %36 = icmp slt i32 %35, 16, !taffo.info !40
  br i1 %36, label %37, label %71, !taffo.info !37

; <label>:37:                                     ; preds = %34
  store i32 0, i32* %13, align 4, !taffo.info !37
  br label %38

; <label>:38:                                     ; preds = %64, %37
  %39 = load i32, i32* %13, align 4, !taffo.info !38
  %40 = load i32, i32* %7, align 4, !taffo.info !19
  %41 = icmp slt i32 %39, %40, !taffo.info !40
  br i1 %41, label %42, label %67, !taffo.info !37

; <label>:42:                                     ; preds = %38
  %43 = load i32, i32* %12, align 4, !taffo.info !25
  %44 = load i32, i32* %13, align 4, !taffo.info !25
  %45 = add nsw i32 %43, %44, !taffo.info !75
  %u6_26fixp = shl i32 %45, 26, !taffo.info !77
  %46 = zext i32 %u6_26fixp to i64, !taffo.info !77
  %47 = shl i64 %46, 25, !taffo.info !77
  %u3_29fixp7 = load i32, i32* %u3_29fixp, align 4, !taffo.info !29
  %48 = load i32, i32* %6, align 4, !taffo.info !19
  %49 = shl i32 %48, 25, !taffo.info !19
  %50 = zext i32 %u3_29fixp7 to i64, !taffo.info !29
  %51 = zext i32 %49 to i64, !taffo.info !19
  %52 = mul i64 %50, %51, !taffo.info !79
  %53 = lshr i64 %52, 29, !taffo.info !79
  %u7_25fixp = trunc i64 %53 to i32, !taffo.info !81
  %54 = zext i32 %u7_25fixp to i64, !taffo.info !81
  %55 = udiv i64 %47, %54, !taffo.info !84
  %56 = shl i64 %55, 5, !taffo.info !84
  %u1_31fixp14 = trunc i64 %56 to i32, !taffo.info !86
  %57 = lshr i32 %u1_31fixp14, 13, !taffo.info !86
  store i32 %57, i32* %s14_18fixp5, align 4, !taffo.info !37
  %s14_18fixp12 = load i32, i32* %s14_18fixp5, align 4, !taffo.info !21
  %58 = load i32, i32* %12, align 4, !taffo.info !25
  %59 = load i32, i32* %7, align 4, !taffo.info !19
  %60 = mul nsw i32 %58, %59, !taffo.info !53
  %61 = load i32, i32* %13, align 4, !taffo.info !25
  %62 = add nsw i32 %60, %61, !taffo.info !55
  %63 = sext i32 %62 to i64, !taffo.info !55
  %s14_18fixp9 = getelementptr inbounds i32, i32* %s14_18fixp, i64 %63, !taffo.info !21, !taffo.target !24
  store i32 %s14_18fixp12, i32* %s14_18fixp9, align 4, !taffo.info !37, !taffo.target !24
  br label %64

; <label>:64:                                     ; preds = %42
  %65 = load i32, i32* %13, align 4, !taffo.info !25
  %66 = add nsw i32 %65, 1, !taffo.info !49
  store i32 %66, i32* %13, align 4, !taffo.info !37
  br label %38

; <label>:67:                                     ; preds = %38
  br label %68

; <label>:68:                                     ; preds = %67
  %69 = load i32, i32* %12, align 4, !taffo.info !25
  %70 = add nsw i32 %69, 1, !taffo.info !49
  store i32 %70, i32* %12, align 4, !taffo.info !37
  br label %34

; <label>:71:                                     ; preds = %34
  store i32 0, i32* %13, align 4, !taffo.info !37
  br label %72

; <label>:72:                                     ; preds = %80, %71
  %73 = load i32, i32* %13, align 4, !taffo.info !38
  %74 = icmp slt i32 %73, 256, !taffo.info !88
  br i1 %74, label %75, label %83, !taffo.info !37

; <label>:75:                                     ; preds = %72
  %76 = load i32, i32* %13, align 4, !taffo.info !25
  %77 = sext i32 %76 to i64, !taffo.info !25
  %s14_18fixp8 = getelementptr inbounds i32, i32* %s14_18fixp, i64 %77, !taffo.info !21, !taffo.target !24
  %s14_18fixp13.s14_18fixp = load i32, i32* %s14_18fixp8, align 4, !taffo.info !21, !taffo.target !24
  %78 = sitofp i32 %s14_18fixp13.s14_18fixp to double, !taffo.info !21, !taffo.target !24
  %79 = fdiv double %78, 2.621440e+05, !taffo.info !21, !taffo.target !24
  %.flt = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), double %79), !taffo.info !89, !taffo.target !24
  br label %80

; <label>:80:                                     ; preds = %75
  %81 = load i32, i32* %13, align 4, !taffo.info !25
  %82 = add nsw i32 %81, 1, !taffo.info !49
  store i32 %82, i32* %13, align 4, !taffo.info !37
  br label %72

; <label>:83:                                     ; preds = %72
  %84 = bitcast i32* %s14_18fixp to float*, !taffo.info !21, !taffo.target !24
  %85 = bitcast i32* %s14_18fixp4 to float*, !taffo.info !21, !taffo.target !73
  %86 = bitcast i32* %s14_18fixp2 to float*, !taffo.info !21, !taffo.target !74
  call void @atax.1(float* %84, float* %85, float* %86), !taffo.info !37, !taffo.target !24, !taffo.originalCall !90
  store i32 0, i32* %3, align 4
  %87 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %87)
  %88 = load i32, i32* %3, align 4, !taffo.info !17
  ret i32 %88, !taffo.info !17
}

; Function Attrs: nounwind
declare !taffo.funinfo !91 i8* @llvm.stacksave() #1

; Function Attrs: nounwind
declare !taffo.funinfo !69 void @llvm.stackrestore(i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @atax.1(float*, float*, float*) #0 !taffo.start !12 !taffo.funinfo !92 !taffo.sourceFunction !90 {
  %s14_18fixp4 = alloca i32*, align 8, !taffo.info !21
  %s14_18fixp = alloca i32*, align 8, !taffo.info !21
  %s14_18fixp3 = alloca i32*, align 8, !taffo.info !21
  %4 = alloca i32, align 4, !taffo.info !19
  %5 = alloca i32, align 4, !taffo.info !19
  %s14_18fixp5 = alloca i32*, align 8, !taffo.info !21, !taffo.target !24
  %s14_18fixp6 = alloca i32, align 4, !taffo.info !21
  %6 = alloca i32, align 4, !taffo.info !25
  %7 = alloca i32, align 4, !taffo.info !25
  %u5_27fixp = alloca i32, align 4, !taffo.info !27
  %u5_27fixp2 = alloca i32, align 4, !taffo.info !27
  %u3_29fixp = alloca i32, align 4, !taffo.info !29
  %u0_32fixp = alloca i32, align 4, !taffo.info !32
  %u1_31fixp = alloca i32, align 4, !taffo.info !34
  %8 = bitcast float* %0 to i32*
  store i32* %8, i32** %s14_18fixp4, align 8, !taffo.info !37
  %9 = bitcast float* %1 to i32*
  store i32* %9, i32** %s14_18fixp, align 8, !taffo.info !37
  %10 = bitcast float* %2 to i32*
  store i32* %10, i32** %s14_18fixp3, align 8, !taffo.info !37
  store i32 16, i32* %4, align 4
  store i32 16, i32* %5, align 4
  %s14_18fixp15 = load i32*, i32** %s14_18fixp4, align 8, !taffo.info !21
  store i32* %s14_18fixp15, i32** %s14_18fixp5, align 8, !taffo.info !37, !taffo.target !24
  %11 = load i32, i32* %5, align 4, !taffo.info !19
  %12 = shl i32 %11, 27, !taffo.info !19
  store i32 %12, i32* %u5_27fixp, align 4, !taffo.info !37
  %13 = load i32, i32* %4, align 4, !taffo.info !19
  %14 = shl i32 %13, 27, !taffo.info !19
  store i32 %14, i32* %u5_27fixp2, align 4, !taffo.info !37
  store i32 -1610612736, i32* %u3_29fixp, align 4, !taffo.info !37
  store i32 0, i32* %u0_32fixp, align 4, !taffo.info !37
  store i32 -2147483648, i32* %u1_31fixp, align 4, !taffo.info !37
  store i32 0, i32* %6, align 4, !taffo.info !37
  br label %15

; <label>:15:                                     ; preds = %29, %3
  %16 = load i32, i32* %6, align 4, !taffo.info !38
  %17 = icmp slt i32 %16, 16, !taffo.info !40
  br i1 %17, label %18, label %32, !taffo.info !37

; <label>:18:                                     ; preds = %15
  %u1_31fixp8 = load i32, i32* %u1_31fixp, align 4, !taffo.info !42
  %19 = lshr i32 %u1_31fixp8, 1, !taffo.info !42
  %20 = load i32, i32* %6, align 4, !taffo.info !38
  %u5_27fixp1 = shl i32 %20, 27, !taffo.info !96
  %21 = zext i32 %u5_27fixp1 to i64, !taffo.info !96
  %22 = shl i64 %21, 27, !taffo.info !96
  %u5_27fixp9 = load i32, i32* %u5_27fixp, align 4, !taffo.info !27
  %23 = zext i32 %u5_27fixp9 to i64, !taffo.info !27
  %24 = udiv i64 %22, %23, !taffo.info !45
  %25 = shl i64 %24, 3, !taffo.info !45
  %u2_30fixp = trunc i64 %25 to i32, !taffo.info !97
  %u2_30fixp27 = add i32 %19, %u2_30fixp, !taffo.info !99
  %26 = lshr i32 %u2_30fixp27, 12, !taffo.info !99
  %s14_18fixp11 = load i32*, i32** %s14_18fixp, align 8, !taffo.info !21
  %27 = load i32, i32* %6, align 4, !taffo.info !38
  %28 = sext i32 %27 to i64, !taffo.info !38
  %s14_18fixp21 = getelementptr inbounds i32, i32* %s14_18fixp11, i64 %28, !taffo.info !21
  store i32 %26, i32* %s14_18fixp21, align 4, !taffo.info !37
  br label %29

; <label>:29:                                     ; preds = %18
  %30 = load i32, i32* %6, align 4, !taffo.info !25
  %31 = add nsw i32 %30, 1, !taffo.info !49
  store i32 %31, i32* %6, align 4, !taffo.info !37
  br label %15

; <label>:32:                                     ; preds = %15
  store i32 0, i32* %6, align 4, !taffo.info !37
  br label %33

; <label>:33:                                     ; preds = %46, %32
  %34 = load i32, i32* %6, align 4, !taffo.info !51
  %35 = icmp slt i32 %34, 16, !taffo.info !40
  br i1 %35, label %36, label %49, !taffo.info !37

; <label>:36:                                     ; preds = %33
  store i32 0, i32* %7, align 4, !taffo.info !37
  br label %37

; <label>:37:                                     ; preds = %42, %36
  %38 = load i32, i32* %7, align 4, !taffo.info !51
  %39 = load i32, i32* %5, align 4, !taffo.info !19
  %40 = icmp slt i32 %38, %39, !taffo.info !40
  br i1 %40, label %41, label %45, !taffo.info !37

; <label>:41:                                     ; preds = %37
  br label %42

; <label>:42:                                     ; preds = %41
  %43 = load i32, i32* %7, align 4, !taffo.info !38
  %44 = add nsw i32 %43, 1, !taffo.info !65
  store i32 %44, i32* %7, align 4, !taffo.info !37
  br label %37

; <label>:45:                                     ; preds = %37
  br label %46

; <label>:46:                                     ; preds = %45
  %47 = load i32, i32* %6, align 4, !taffo.info !38
  %48 = add nsw i32 %47, 1, !taffo.info !65
  store i32 %48, i32* %6, align 4, !taffo.info !37
  br label %33

; <label>:49:                                     ; preds = %33
  store i32 0, i32* %6, align 4, !taffo.info !37
  br label %50

; <label>:50:                                     ; preds = %54, %49
  %51 = load i32, i32* %6, align 4, !taffo.info !51
  %52 = icmp slt i32 %51, 16, !taffo.info !40
  br i1 %52, label %53, label %57, !taffo.info !37

; <label>:53:                                     ; preds = %50
  br label %54

; <label>:54:                                     ; preds = %53
  %55 = load i32, i32* %6, align 4, !taffo.info !38
  %56 = add nsw i32 %55, 1, !taffo.info !65
  store i32 %56, i32* %6, align 4, !taffo.info !37
  br label %50

; <label>:57:                                     ; preds = %50
  store i32 0, i32* %6, align 4, !taffo.info !37
  br label %58

; <label>:58:                                     ; preds = %107, %57
  %59 = load i32, i32* %6, align 4, !taffo.info !101
  %60 = icmp slt i32 %59, 16, !taffo.info !40
  br i1 %60, label %61, label %110, !taffo.info !37

; <label>:61:                                     ; preds = %58
  %u0_32fixp7 = load i32, i32* %u0_32fixp, align 4, !taffo.info !32
  %62 = lshr i32 %u0_32fixp7, 14, !taffo.info !32
  store i32 %62, i32* %s14_18fixp6, align 4, !taffo.info !37
  store i32 0, i32* %7, align 4, !taffo.info !37
  br label %63

; <label>:63:                                     ; preds = %80, %61
  %64 = load i32, i32* %7, align 4, !taffo.info !51
  %65 = icmp slt i32 %64, 16, !taffo.info !40
  br i1 %65, label %66, label %83, !taffo.info !37

; <label>:66:                                     ; preds = %63
  %s14_18fixp19 = load i32, i32* %s14_18fixp6, align 4, !taffo.info !21
  %67 = ashr i32 %s14_18fixp19, 12, !taffo.info !21
  %s14_18fixp17 = load i32*, i32** %s14_18fixp5, align 8, !taffo.info !21, !taffo.target !24
  %68 = load i32, i32* %6, align 4, !taffo.info !51
  %69 = mul nsw i32 %68, 16, !taffo.info !103
  %70 = load i32, i32* %7, align 4, !taffo.info !38
  %71 = add nsw i32 %69, %70, !taffo.info !105
  %72 = sext i32 %71 to i64, !taffo.info !105
  %s14_18fixp26 = getelementptr inbounds i32, i32* %s14_18fixp17, i64 %72, !taffo.info !21, !taffo.target !24
  %s14_18fixp32 = load i32, i32* %s14_18fixp26, align 4, !taffo.info !21, !taffo.target !24
  %s14_18fixp10 = load i32*, i32** %s14_18fixp, align 8, !taffo.info !21
  %73 = load i32, i32* %7, align 4, !taffo.info !38
  %74 = sext i32 %73 to i64, !taffo.info !38
  %s14_18fixp20 = getelementptr inbounds i32, i32* %s14_18fixp10, i64 %74, !taffo.info !21
  %s14_18fixp28 = load i32, i32* %s14_18fixp20, align 4, !taffo.info !21
  %75 = sext i32 %s14_18fixp32 to i64, !taffo.info !21, !taffo.target !24
  %76 = sext i32 %s14_18fixp28 to i64, !taffo.info !21
  %77 = mul i64 %75, %76, !taffo.info !107, !taffo.target !24
  %78 = ashr i64 %77, 30, !taffo.info !107, !taffo.target !24
  %s26_6fixp34 = trunc i64 %78 to i32, !taffo.info !109, !taffo.target !24
  %s26_6fixp36 = add i32 %67, %s26_6fixp34, !taffo.info !111
  %79 = shl i32 %s26_6fixp36, 12, !taffo.info !111
  store i32 %79, i32* %s14_18fixp6, align 4, !taffo.info !37
  br label %80

; <label>:80:                                     ; preds = %66
  %81 = load i32, i32* %7, align 4, !taffo.info !38
  %82 = add nsw i32 %81, 1, !taffo.info !65
  store i32 %82, i32* %7, align 4, !taffo.info !37
  br label %63

; <label>:83:                                     ; preds = %63
  store i32 0, i32* %7, align 4, !taffo.info !37
  br label %84

; <label>:84:                                     ; preds = %103, %83
  %85 = load i32, i32* %7, align 4, !taffo.info !113
  %86 = icmp slt i32 %85, 16, !taffo.info !40
  br i1 %86, label %87, label %106, !taffo.info !37

; <label>:87:                                     ; preds = %84
  %s14_18fixp14 = load i32*, i32** %s14_18fixp3, align 8, !taffo.info !93
  %88 = load i32, i32* %7, align 4, !taffo.info !38
  %89 = sext i32 %88 to i64, !taffo.info !38
  %s14_18fixp24 = getelementptr inbounds i32, i32* %s14_18fixp14, i64 %89, !taffo.info !93
  %s14_18fixp30 = load i32, i32* %s14_18fixp24, align 4, !taffo.info !93
  %90 = ashr i32 %s14_18fixp30, 12, !taffo.info !93
  %s14_18fixp16 = load i32*, i32** %s14_18fixp5, align 8, !taffo.info !21, !taffo.target !24
  %91 = load i32, i32* %6, align 4, !taffo.info !38
  %92 = mul nsw i32 %91, 16, !taffo.info !55
  %93 = load i32, i32* %7, align 4, !taffo.info !38
  %94 = add nsw i32 %92, %93, !taffo.info !115
  %95 = sext i32 %94 to i64, !taffo.info !115
  %s14_18fixp25 = getelementptr inbounds i32, i32* %s14_18fixp16, i64 %95, !taffo.info !21, !taffo.target !24
  %s14_18fixp31 = load i32, i32* %s14_18fixp25, align 4, !taffo.info !21, !taffo.target !24
  %s14_18fixp18 = load i32, i32* %s14_18fixp6, align 4, !taffo.info !21
  %96 = sext i32 %s14_18fixp31 to i64, !taffo.info !21, !taffo.target !24
  %97 = sext i32 %s14_18fixp18 to i64, !taffo.info !21
  %98 = mul i64 %96, %97, !taffo.info !107, !taffo.target !24
  %99 = ashr i64 %98, 30, !taffo.info !107, !taffo.target !24
  %s26_6fixp33 = trunc i64 %99 to i32, !taffo.info !109, !taffo.target !24
  %s26_6fixp35 = add i32 %90, %s26_6fixp33, !taffo.info !93
  %100 = shl i32 %s26_6fixp35, 12, !taffo.info !93
  %s14_18fixp13 = load i32*, i32** %s14_18fixp3, align 8, !taffo.info !93
  %101 = load i32, i32* %7, align 4, !taffo.info !38
  %102 = sext i32 %101 to i64, !taffo.info !38
  %s14_18fixp23 = getelementptr inbounds i32, i32* %s14_18fixp13, i64 %102, !taffo.info !93
  store i32 %100, i32* %s14_18fixp23, align 4, !taffo.info !37
  br label %103

; <label>:103:                                    ; preds = %87
  %104 = load i32, i32* %7, align 4, !taffo.info !117
  %105 = add nsw i32 %104, 1, !taffo.info !113
  store i32 %105, i32* %7, align 4, !taffo.info !37
  br label %84

; <label>:106:                                    ; preds = %84
  br label %107

; <label>:107:                                    ; preds = %106
  %108 = load i32, i32* %6, align 4, !taffo.info !113
  %109 = add nsw i32 %108, 1, !taffo.info !101
  store i32 %109, i32* %6, align 4, !taffo.info !37
  br label %58

; <label>:110:                                    ; preds = %58
  store i32 0, i32* %7, align 4, !taffo.info !37
  br label %111

; <label>:111:                                    ; preds = %119, %110
  %112 = load i32, i32* %7, align 4, !taffo.info !38
  %113 = icmp slt i32 %112, 16, !taffo.info !40
  br i1 %113, label %114, label %122, !taffo.info !37

; <label>:114:                                    ; preds = %111
  %s14_18fixp12 = load i32*, i32** %s14_18fixp3, align 8, !taffo.info !93
  %115 = load i32, i32* %6, align 4, !taffo.info !38
  %116 = sext i32 %115 to i64, !taffo.info !38
  %s14_18fixp22 = getelementptr inbounds i32, i32* %s14_18fixp12, i64 %116, !taffo.info !93
  %s14_18fixp29 = load i32, i32* %s14_18fixp22, align 4, !taffo.info !93
  %s26_6fixp = ashr i32 %s14_18fixp29, 12, !taffo.info !93
  %117 = sitofp i32 %s26_6fixp to double, !taffo.info !93
  %118 = fdiv double %117, 6.400000e+01, !taffo.info !93
  %.flt = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), double %118), !taffo.info !118
  br label %119

; <label>:119:                                    ; preds = %114
  %120 = load i32, i32* %7, align 4, !taffo.info !25
  %121 = add nsw i32 %120, 1, !taffo.info !49
  store i32 %121, i32* %7, align 4, !taffo.info !37
  br label %111

; <label>:122:                                    ; preds = %111
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
!21 = !{!22, !23, i1 false, i1 true}
!22 = !{!"fixp", i32 -32, i32 18}
!23 = !{double -4.096000e+03, double 4.096000e+03}
!24 = !{!"A"}
!25 = !{i1 false, !26, i1 false, i1 true}
!26 = !{double 0.000000e+00, double 1.600000e+01}
!27 = !{!28, !20, i1 false, i1 true}
!28 = !{!"fixp", i32 32, i32 27}
!29 = !{!30, !31, i1 false, i1 true}
!30 = !{!"fixp", i32 32, i32 29}
!31 = !{double 5.000000e+00, double 5.000000e+00}
!32 = !{!33, !18, i1 false, i1 true}
!33 = !{!"fixp", i32 32, i32 32}
!34 = !{!35, !36, i1 false, i1 true}
!35 = !{!"fixp", i32 32, i32 31}
!36 = !{double 1.000000e+00, double 1.000000e+00}
!37 = !{i1 false, i1 false, i1 false, i1 true}
!38 = !{i1 false, !39, i1 false, i1 true}
!39 = !{double 0.000000e+00, double 1.700000e+01}
!40 = !{i1 false, !41, i1 false, i1 true}
!41 = !{double 0.000000e+00, double 1.000000e+00}
!42 = !{!43, !36, i1 false, i1 true}
!43 = !{!"fixp", i32 32, i32 30}
!44 = !{!28, !26, i1 false, i1 true}
!45 = !{!46, !20, i1 false}
!46 = !{!"fixp", i32 64, i32 27}
!47 = !{!43, !41, i1 false, i1 true}
!48 = !{!43, !16, i1 false, i1 true}
!49 = !{i1 false, !50, i1 false, i1 true}
!50 = !{double 1.000000e+00, double 1.700000e+01}
!51 = !{i1 false, !52, i1 false, i1 true}
!52 = !{double 0.000000e+00, double 1.800000e+01}
!53 = !{i1 false, !54, i1 false, i1 true}
!54 = !{double 0.000000e+00, double 2.560000e+02}
!55 = !{i1 false, !56, i1 false, i1 true}
!56 = !{double 0.000000e+00, double 2.720000e+02}
!57 = !{!43, !58, i1 false, i1 true}
!58 = !{double 0.000000e+00, double 2.000000e+00}
!59 = !{!60, !58, i1 false}
!60 = !{!"fixp", i32 64, i32 18}
!61 = !{!43, !18, i1 false, i1 true}
!62 = !{!60, !23, i1 false}
!63 = !{!33, !64, i1 false, i1 true}
!64 = !{double -0.000000e+00, double -0.000000e+00}
!65 = !{i1 false, !66, i1 false, i1 true}
!66 = !{double 1.000000e+00, double 1.800000e+01}
!67 = !{!33, i1 false, i1 false, i1 true}
!68 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!69 = !{i32 0, i1 false}
!70 = !{i32 0, i1 false, i32 0, i1 false}
!71 = !{i1 false, !72, i1 false, i1 false}
!72 = !{double 2.560000e+02, double 2.560000e+02}
!73 = !{!"x"}
!74 = !{!"y"}
!75 = !{i1 false, !76, i1 false, i1 true}
!76 = !{double 0.000000e+00, double 3.200000e+01}
!77 = !{!78, !76, i1 false, i1 true}
!78 = !{!"fixp", i32 32, i32 26}
!79 = !{!80, !20, i1 false}
!80 = !{!"fixp", i32 64, i32 29}
!81 = !{!82, !83, i1 false, i1 true}
!82 = !{!"fixp", i32 32, i32 25}
!83 = !{double 8.000000e+01, double 8.000000e+01}
!84 = !{!85, !83, i1 false}
!85 = !{!"fixp", i32 64, i32 26}
!86 = !{!35, !87, i1 false, i1 true}
!87 = !{double 0.000000e+00, double 4.000000e-01}
!88 = !{i1 false, !36, i1 false, i1 true}
!89 = !{!22, i1 false, i1 false, i1 true}
!90 = !{void (float*, float*, float*)* @atax}
!91 = !{}
!92 = !{i32 1, !21, i32 1, !21, i32 1, !93}
!93 = !{!94, !95, i1 false, i1 true}
!94 = !{!"fixp", i32 -32, i32 6}
!95 = !{double 0xC170000000000000, double 0x4170000110000000}
!96 = !{!28, !39, i1 false, i1 true}
!97 = !{!43, !98, i1 false, i1 true}
!98 = !{double 0.000000e+00, double 1.062500e+00}
!99 = !{!43, !100, i1 false, i1 true}
!100 = !{double 1.000000e+00, double 2.062500e+00}
!101 = !{i1 false, !102, i1 false, i1 true}
!102 = !{double 0xC16FFFFFC0000000, double 0x4170000130000000}
!103 = !{i1 false, !104, i1 false, i1 true}
!104 = !{double 0.000000e+00, double 2.880000e+02}
!105 = !{i1 false, !106, i1 false, i1 true}
!106 = !{double 0.000000e+00, double 3.050000e+02}
!107 = !{!108, !23, i1 false}
!108 = !{!"fixp", i32 -64, i32 18}
!109 = !{!94, !110, i1 false, i1 true}
!110 = !{double 0xC170000000000000, double 0x4170000000000000}
!111 = !{!94, !112, i1 false, i1 true}
!112 = !{double 0xC170010000000000, double 0x4170010000000000}
!113 = !{i1 false, !114, i1 false, i1 true}
!114 = !{double 0xC16FFFFFE0000000, double 0x4170000120000000}
!115 = !{i1 false, !116, i1 false, i1 true}
!116 = !{double 0.000000e+00, double 2.890000e+02}
!117 = !{i1 false, !95, i1 false, i1 true}
!118 = !{!94, i1 false, i1 false, i1 true}
