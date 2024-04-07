; ModuleID = 'input.bc'
source_filename = "gemm_taffoin.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"scalar()\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [15 x i8] c"gemm_taffoin.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [35 x i8] c"target('D') scalar(range(-16, 16))\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [21 x i8] c"scalar(range(0, 16))\00", section "llvm.metadata"
@.str.4 = private unnamed_addr constant [23 x i8] c"scalar(range(-16, 16))\00", section "llvm.metadata"
@.str.5 = private unnamed_addr constant [25 x i8] c"scalar(range(-100, 100))\00", section "llvm.metadata"
@.str.6 = private unnamed_addr constant [21 x i8] c"scalar(range(0, 32))\00", section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @mm(float) #0 {
  %2 = alloca float, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [1024 x float], align 16
  %8 = alloca [1024 x float], align 16
  %9 = alloca [1024 x float], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca [1024 x float], align 16
  %16 = alloca float, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca float, align 4
  store float %0, float* %2, align 4
  store i32 32, i32* %3, align 4
  store i32 32, i32* %4, align 4
  store i32 32, i32* %5, align 4
  store i32 32, i32* %6, align 4
  %21 = bitcast [1024 x float]* %7 to i8*
  call void @llvm.var.annotation(i8* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 52)
  %22 = bitcast [1024 x float]* %8 to i8*
  call void @llvm.var.annotation(i8* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 53)
  %23 = bitcast [1024 x float]* %9 to i8*
  call void @llvm.var.annotation(i8* %23, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 54)
  %24 = bitcast i32* %10 to i8*
  call void @llvm.var.annotation(i8* %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 57)
  %25 = bitcast i32* %11 to i8*
  call void @llvm.var.annotation(i8* %25, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 58)
  store i32 0, i32* %10, align 4
  br label %26

; <label>:26:                                     ; preds = %58, %1
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %3, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %61

; <label>:30:                                     ; preds = %26
  store i32 0, i32* %11, align 4
  br label %31

; <label>:31:                                     ; preds = %54, %30
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %57

; <label>:35:                                     ; preds = %31
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %11, align 4
  %38 = mul nsw i32 %36, %37
  %39 = add nsw i32 %38, 1
  %40 = load i32, i32* %3, align 4
  %41 = srem i32 %39, %40
  %42 = sitofp i32 %41 to float
  %43 = fmul float 5.000000e+00, %42
  %44 = load i32, i32* %3, align 4
  %45 = sitofp i32 %44 to float
  %46 = fdiv float %43, %45
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %5, align 4
  %49 = mul nsw i32 %47, %48
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %49, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [1024 x float], [1024 x float]* %7, i64 0, i64 %52
  store float %46, float* %53, align 4
  br label %54

; <label>:54:                                     ; preds = %35
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %11, align 4
  br label %31

; <label>:57:                                     ; preds = %31
  br label %58

; <label>:58:                                     ; preds = %57
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %10, align 4
  br label %26

; <label>:61:                                     ; preds = %26
  store i32 0, i32* %10, align 4
  br label %62

; <label>:62:                                     ; preds = %94, %61
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %97

; <label>:66:                                     ; preds = %62
  store i32 0, i32* %11, align 4
  br label %67

; <label>:67:                                     ; preds = %90, %66
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %93

; <label>:71:                                     ; preds = %67
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %11, align 4
  %74 = add nsw i32 %73, 1
  %75 = mul nsw i32 %72, %74
  %76 = load i32, i32* %4, align 4
  %77 = srem i32 %75, %76
  %78 = sitofp i32 %77 to float
  %79 = fmul float 3.000000e+00, %78
  %80 = load i32, i32* %4, align 4
  %81 = sitofp i32 %80 to float
  %82 = fdiv float %79, %81
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %4, align 4
  %85 = mul nsw i32 %83, %84
  %86 = load i32, i32* %11, align 4
  %87 = add nsw i32 %85, %86
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [1024 x float], [1024 x float]* %8, i64 0, i64 %88
  store float %82, float* %89, align 4
  br label %90

; <label>:90:                                     ; preds = %71
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %11, align 4
  br label %67

; <label>:93:                                     ; preds = %67
  br label %94

; <label>:94:                                     ; preds = %93
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %10, align 4
  br label %62

; <label>:97:                                     ; preds = %62
  store i32 0, i32* %10, align 4
  br label %98

; <label>:98:                                     ; preds = %130, %97
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* %3, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %133

; <label>:102:                                    ; preds = %98
  store i32 0, i32* %11, align 4
  br label %103

; <label>:103:                                    ; preds = %126, %102
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* %6, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %129

; <label>:107:                                    ; preds = %103
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* %11, align 4
  %110 = add nsw i32 %109, 2
  %111 = mul nsw i32 %108, %110
  %112 = load i32, i32* %5, align 4
  %113 = srem i32 %111, %112
  %114 = sitofp i32 %113 to float
  %115 = fmul float 5.000000e+00, %114
  %116 = load i32, i32* %5, align 4
  %117 = sitofp i32 %116 to float
  %118 = fdiv float %115, %117
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* %6, align 4
  %121 = mul nsw i32 %119, %120
  %122 = load i32, i32* %11, align 4
  %123 = add nsw i32 %121, %122
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [1024 x float], [1024 x float]* %9, i64 0, i64 %124
  store float %118, float* %125, align 4
  br label %126

; <label>:126:                                    ; preds = %107
  %127 = load i32, i32* %11, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %11, align 4
  br label %103

; <label>:129:                                    ; preds = %103
  br label %130

; <label>:130:                                    ; preds = %129
  %131 = load i32, i32* %10, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %10, align 4
  br label %98

; <label>:133:                                    ; preds = %98
  %134 = bitcast float* %12 to i8*
  call void @llvm.var.annotation(i8* %134, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 71)
  store float 0x3FF3333340000000, float* %12, align 4
  %135 = bitcast float* %13 to i8*
  call void @llvm.var.annotation(i8* %135, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 72)
  store float 1.500000e+00, float* %13, align 4
  %136 = bitcast float* %14 to i8*
  call void @llvm.var.annotation(i8* %136, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 73)
  %137 = load float, float* %2, align 4
  store float %137, float* %14, align 4
  %138 = bitcast [1024 x float]* %15 to i8*
  call void @llvm.var.annotation(i8* %138, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 74)
  %139 = bitcast float* %16 to i8*
  call void @llvm.var.annotation(i8* %139, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 75)
  store float 0.000000e+00, float* %16, align 4
  %140 = bitcast i32* %17 to i8*
  call void @llvm.var.annotation(i8* %140, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 78)
  %141 = bitcast i32* %18 to i8*
  call void @llvm.var.annotation(i8* %141, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 79)
  %142 = bitcast i32* %19 to i8*
  call void @llvm.var.annotation(i8* %142, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 80)
  %143 = bitcast float* %20 to i8*
  call void @llvm.var.annotation(i8* %143, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 81)
  store i32 0, i32* %17, align 4
  br label %144

; <label>:144:                                    ; preds = %247, %133
  %145 = load i32, i32* %17, align 4
  %146 = icmp slt i32 %145, 32
  br i1 %146, label %147, label %250

; <label>:147:                                    ; preds = %144
  store i32 0, i32* %18, align 4
  br label %148

; <label>:148:                                    ; preds = %243, %147
  %149 = load i32, i32* %18, align 4
  %150 = icmp slt i32 %149, 32
  br i1 %150, label %151, label %246

; <label>:151:                                    ; preds = %148
  %152 = load i32, i32* %17, align 4
  %153 = mul nsw i32 %152, 32
  %154 = load i32, i32* %18, align 4
  %155 = add nsw i32 %153, %154
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [1024 x float], [1024 x float]* %15, i64 0, i64 %156
  store float 0.000000e+00, float* %157, align 4
  store i32 0, i32* %19, align 4
  br label %158

; <label>:158:                                    ; preds = %194, %151
  %159 = load i32, i32* %19, align 4
  %160 = icmp slt i32 %159, 32
  br i1 %160, label %161, label %197

; <label>:161:                                    ; preds = %158
  %162 = load i32, i32* %17, align 4
  %163 = mul nsw i32 %162, 32
  %164 = load i32, i32* %19, align 4
  %165 = add nsw i32 %163, %164
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [1024 x float], [1024 x float]* %7, i64 0, i64 %166
  %168 = load float, float* %167, align 4
  %169 = load i32, i32* %19, align 4
  %170 = mul nsw i32 %169, 32
  %171 = load i32, i32* %18, align 4
  %172 = add nsw i32 %170, %171
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [1024 x float], [1024 x float]* %8, i64 0, i64 %173
  %175 = load float, float* %174, align 4
  %176 = fmul float %168, %175
  %177 = load float, float* %12, align 4
  %178 = fmul float %176, %177
  store float %178, float* %20, align 4
  %179 = load i32, i32* %17, align 4
  %180 = mul nsw i32 %179, 32
  %181 = load i32, i32* %18, align 4
  %182 = add nsw i32 %180, %181
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [1024 x float], [1024 x float]* %15, i64 0, i64 %183
  %185 = load float, float* %184, align 4
  %186 = load float, float* %20, align 4
  %187 = fadd float %185, %186
  %188 = load i32, i32* %17, align 4
  %189 = mul nsw i32 %188, 32
  %190 = load i32, i32* %18, align 4
  %191 = add nsw i32 %189, %190
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [1024 x float], [1024 x float]* %15, i64 0, i64 %192
  store float %187, float* %193, align 4
  br label %194

; <label>:194:                                    ; preds = %161
  %195 = load i32, i32* %19, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %19, align 4
  br label %158

; <label>:197:                                    ; preds = %158
  %198 = load i32, i32* %17, align 4
  %199 = mul nsw i32 %198, 32
  %200 = load i32, i32* %18, align 4
  %201 = add nsw i32 %199, %200
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [1024 x float], [1024 x float]* %9, i64 0, i64 %202
  %204 = load float, float* %203, align 4
  %205 = load float, float* %13, align 4
  %206 = fmul float %204, %205
  %207 = load i32, i32* %17, align 4
  %208 = mul nsw i32 %207, 32
  %209 = load i32, i32* %18, align 4
  %210 = add nsw i32 %208, %209
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds [1024 x float], [1024 x float]* %9, i64 0, i64 %211
  store float %206, float* %212, align 4
  %213 = load i32, i32* %17, align 4
  %214 = mul nsw i32 %213, 32
  %215 = load i32, i32* %18, align 4
  %216 = add nsw i32 %214, %215
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds [1024 x float], [1024 x float]* %9, i64 0, i64 %217
  %219 = load float, float* %218, align 4
  %220 = load i32, i32* %17, align 4
  %221 = mul nsw i32 %220, 32
  %222 = load i32, i32* %18, align 4
  %223 = add nsw i32 %221, %222
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds [1024 x float], [1024 x float]* %15, i64 0, i64 %224
  %226 = load float, float* %225, align 4
  %227 = fadd float %219, %226
  %228 = load i32, i32* %17, align 4
  %229 = mul nsw i32 %228, 32
  %230 = load i32, i32* %18, align 4
  %231 = add nsw i32 %229, %230
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds [1024 x float], [1024 x float]* %9, i64 0, i64 %232
  store float %227, float* %233, align 4
  %234 = load i32, i32* %17, align 4
  %235 = mul nsw i32 %234, 32
  %236 = load i32, i32* %18, align 4
  %237 = add nsw i32 %235, %236
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds [1024 x float], [1024 x float]* %9, i64 0, i64 %238
  %240 = load float, float* %239, align 4
  %241 = load float, float* %16, align 4
  %242 = fadd float %241, %240
  store float %242, float* %16, align 4
  br label %243

; <label>:243:                                    ; preds = %197
  %244 = load i32, i32* %18, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %18, align 4
  br label %148

; <label>:246:                                    ; preds = %148
  br label %247

; <label>:247:                                    ; preds = %246
  %248 = load i32, i32* %17, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %17, align 4
  br label %144

; <label>:250:                                    ; preds = %144
  %251 = load float, float* %16, align 4
  %252 = load float, float* %2, align 4
  %253 = fmul float %251, %252
  ret float %253
}

; Function Attrs: nounwind
declare void @llvm.var.annotation(i8*, i8*, i8*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  store i32 0, i32* %1, align 4
  store i32 32, i32* %2, align 4
  store i32 32, i32* %3, align 4
  store i32 32, i32* %4, align 4
  store i32 32, i32* %5, align 4
  %7 = call float @mm(float 6.500000e+00)
  store float %7, float* %6, align 4
  %8 = load float, float* %6, align 4
  %9 = fptosi float %8 to i32
  ret i32 %9
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 8.0.0 (tags/RELEASE_800/final)"}
