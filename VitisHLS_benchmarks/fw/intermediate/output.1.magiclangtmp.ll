; ModuleID = '/home/bruno/Desktop/benchmarks/fw/proj_fw/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.global_ctors = appending global [0 x { i32, void ()*, i8* }] zeroinitializer
@.str = private unnamed_addr constant [23 x i8] c"scalar(range(-16, 16))\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [11 x i8] c"fw_taffo.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [24 x i8] c"target('path') scalar()\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [9 x i8] c"scalar()\00", section "llvm.metadata"
@.str.4 = private unnamed_addr constant [5 x i8] c"%f \0A\00", align 1

; Function Attrs: nounwind
define void @fw() #0 !dbg !7 !fpga.function.pragma !11 {
entry:
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %path = alloca [256 x float], align 4
  %tmpa = alloca float, align 4
  %tmpb = alloca float, align 4
  %cond = alloca i32, align 4
  %0 = bitcast i32* %n to i8*, !dbg !14
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #3, !dbg !14
  call void @llvm.dbg.declare(metadata i32* %n, metadata !15, metadata !DIExpression()), !dbg !17
  store i32 16, i32* %n, align 4, !dbg !17
  %1 = bitcast i32* %i to i8*, !dbg !18
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #3, !dbg !18
  call void @llvm.dbg.declare(metadata i32* %i, metadata !19, metadata !DIExpression()), !dbg !20
  %i1 = bitcast i32* %i to i8*, !dbg !18
  call void @llvm.var.annotation(i8* %i1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 24), !dbg !18
  %2 = bitcast i32* %j to i8*, !dbg !21
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #3, !dbg !21
  call void @llvm.dbg.declare(metadata i32* %j, metadata !22, metadata !DIExpression()), !dbg !23
  %j2 = bitcast i32* %j to i8*, !dbg !21
  call void @llvm.var.annotation(i8* %j2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 25), !dbg !21
  %3 = bitcast i32* %k to i8*, !dbg !24
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #3, !dbg !24
  call void @llvm.dbg.declare(metadata i32* %k, metadata !25, metadata !DIExpression()), !dbg !26
  %k3 = bitcast i32* %k to i8*, !dbg !24
  call void @llvm.var.annotation(i8* %k3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 26), !dbg !24
  %4 = bitcast [256 x float]* %path to i8*, !dbg !27
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* %4) #3, !dbg !27
  call void @llvm.dbg.declare(metadata [256 x float]* %path, metadata !28, metadata !DIExpression()), !dbg !33
  %path4 = bitcast [256 x float]* %path to i8*, !dbg !27
  call void @llvm.var.annotation(i8* %path4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 28), !dbg !27
  br label %VITIS_LOOP_30_1, !dbg !27

VITIS_LOOP_30_1:                                  ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !34
  br label %for.cond, !dbg !36

for.cond:                                         ; preds = %for.inc27, %VITIS_LOOP_30_1
  %5 = load i32, i32* %i, align 4, !dbg !37
  %6 = load i32, i32* %n, align 4, !dbg !39
  %cmp = icmp slt i32 %5, %6, !dbg !40
  br i1 %cmp, label %for.body, label %for.end29, !dbg !41

for.body:                                         ; preds = %for.cond
  br label %VITIS_LOOP_31_2, !dbg !42

VITIS_LOOP_31_2:                                  ; preds = %for.body
  store i32 0, i32* %j, align 4, !dbg !43
  br label %for.cond5, !dbg !46

for.cond5:                                        ; preds = %for.inc, %VITIS_LOOP_31_2
  %7 = load i32, i32* %j, align 4, !dbg !47
  %8 = load i32, i32* %n, align 4, !dbg !49
  %cmp6 = icmp slt i32 %7, %8, !dbg !50
  br i1 %cmp6, label %for.body7, label %for.end, !dbg !51

for.body7:                                        ; preds = %for.cond5
  %9 = load i32, i32* %i, align 4, !dbg !52
  %10 = load i32, i32* %j, align 4, !dbg !54
  %mul = mul nsw i32 %9, %10, !dbg !55
  %rem = srem i32 %mul, 7, !dbg !56
  %add = add nsw i32 %rem, 1, !dbg !57
  %conv = sitofp i32 %add to float, !dbg !52
  %11 = load i32, i32* %i, align 4, !dbg !58
  %12 = load i32, i32* %n, align 4, !dbg !59
  %mul8 = mul nsw i32 %11, %12, !dbg !60
  %13 = load i32, i32* %j, align 4, !dbg !61
  %add9 = add nsw i32 %mul8, %13, !dbg !62
  %idxprom = sext i32 %add9 to i64, !dbg !63
  %arrayidx = getelementptr inbounds [256 x float], [256 x float]* %path, i64 0, i64 %idxprom, !dbg !63
  store float %conv, float* %arrayidx, align 4, !dbg !64
  %14 = load i32, i32* %i, align 4, !dbg !65
  %15 = load i32, i32* %j, align 4, !dbg !67
  %add10 = add nsw i32 %14, %15, !dbg !68
  %rem11 = srem i32 %add10, 13, !dbg !69
  %cmp12 = icmp eq i32 %rem11, 0, !dbg !70
  br i1 %cmp12, label %if.then, label %lor.lhs.false, !dbg !71

lor.lhs.false:                                    ; preds = %for.body7
  %16 = load i32, i32* %i, align 4, !dbg !72
  %17 = load i32, i32* %j, align 4, !dbg !73
  %add14 = add nsw i32 %16, %17, !dbg !74
  %rem15 = srem i32 %add14, 7, !dbg !75
  %cmp16 = icmp eq i32 %rem15, 0, !dbg !76
  br i1 %cmp16, label %if.then, label %lor.lhs.false18, !dbg !77

lor.lhs.false18:                                  ; preds = %lor.lhs.false
  %18 = load i32, i32* %i, align 4, !dbg !78
  %19 = load i32, i32* %j, align 4, !dbg !79
  %add19 = add nsw i32 %18, %19, !dbg !80
  %rem20 = srem i32 %add19, 11, !dbg !81
  %cmp21 = icmp eq i32 %rem20, 0, !dbg !82
  br i1 %cmp21, label %if.then, label %if.end, !dbg !83

if.then:                                          ; preds = %lor.lhs.false18, %lor.lhs.false, %for.body7
  %20 = load i32, i32* %i, align 4, !dbg !84
  %21 = load i32, i32* %n, align 4, !dbg !85
  %mul23 = mul nsw i32 %20, %21, !dbg !86
  %22 = load i32, i32* %j, align 4, !dbg !87
  %add24 = add nsw i32 %mul23, %22, !dbg !88
  %idxprom25 = sext i32 %add24 to i64, !dbg !89
  %arrayidx26 = getelementptr inbounds [256 x float], [256 x float]* %path, i64 0, i64 %idxprom25, !dbg !89
  store float 9.990000e+02, float* %arrayidx26, align 4, !dbg !90
  br label %if.end, !dbg !89

if.end:                                           ; preds = %if.then, %lor.lhs.false18
  br label %for.inc, !dbg !91

for.inc:                                          ; preds = %if.end
  %23 = load i32, i32* %j, align 4, !dbg !92
  %inc = add nsw i32 %23, 1, !dbg !92
  store i32 %inc, i32* %j, align 4, !dbg !92
  br label %for.cond5, !dbg !93, !llvm.loop !94

for.end:                                          ; preds = %for.cond5
  br label %for.inc27, !dbg !97

for.inc27:                                        ; preds = %for.end
  %24 = load i32, i32* %i, align 4, !dbg !98
  %inc28 = add nsw i32 %24, 1, !dbg !98
  store i32 %inc28, i32* %i, align 4, !dbg !98
  br label %for.cond, !dbg !99, !llvm.loop !100

for.end29:                                        ; preds = %for.cond
  br label %VITIS_LOOP_38_3, !dbg !101

VITIS_LOOP_38_3:                                  ; preds = %for.end29
  store i32 0, i32* %k, align 4, !dbg !103
  br label %for.cond30, !dbg !105

for.cond30:                                       ; preds = %for.inc85, %VITIS_LOOP_38_3
  %25 = load i32, i32* %k, align 4, !dbg !106
  %cmp31 = icmp slt i32 %25, 16, !dbg !108
  br i1 %cmp31, label %for.body32, label %for.end87, !dbg !109

for.body32:                                       ; preds = %for.cond30
  br label %VITIS_LOOP_39_4, !dbg !110

VITIS_LOOP_39_4:                                  ; preds = %for.body32
  store i32 0, i32* %i, align 4, !dbg !111
  br label %for.cond33, !dbg !114

for.cond33:                                       ; preds = %for.inc82, %VITIS_LOOP_39_4
  %26 = load i32, i32* %i, align 4, !dbg !115
  %cmp34 = icmp slt i32 %26, 16, !dbg !117
  br i1 %cmp34, label %for.body35, label %for.end84, !dbg !118

for.body35:                                       ; preds = %for.cond33
  br label %VITIS_LOOP_40_5, !dbg !119

VITIS_LOOP_40_5:                                  ; preds = %for.body35
  store i32 0, i32* %j, align 4, !dbg !120
  br label %for.cond36, !dbg !123

for.cond36:                                       ; preds = %for.inc79, %VITIS_LOOP_40_5
  %27 = load i32, i32* %j, align 4, !dbg !124
  %cmp37 = icmp slt i32 %27, 16, !dbg !126
  br i1 %cmp37, label %for.body38, label %for.end81, !dbg !127

for.body38:                                       ; preds = %for.cond36
  %28 = bitcast float* %tmpa to i8*, !dbg !128
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %28) #3, !dbg !128
  call void @llvm.dbg.declare(metadata float* %tmpa, metadata !130, metadata !DIExpression()), !dbg !131
  %tmpa39 = bitcast float* %tmpa to i8*, !dbg !128
  call void @llvm.var.annotation(i8* %tmpa39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 41), !dbg !128
  %29 = load i32, i32* %i, align 4, !dbg !132
  %30 = load i32, i32* %n, align 4, !dbg !133
  %mul40 = mul nsw i32 %29, %30, !dbg !134
  %31 = load i32, i32* %k, align 4, !dbg !135
  %add41 = add nsw i32 %mul40, %31, !dbg !136
  %idxprom42 = sext i32 %add41 to i64, !dbg !137
  %arrayidx43 = getelementptr inbounds [256 x float], [256 x float]* %path, i64 0, i64 %idxprom42, !dbg !137
  %32 = load float, float* %arrayidx43, align 4, !dbg !137
  store float %32, float* %tmpa, align 4, !dbg !131
  %33 = bitcast float* %tmpb to i8*, !dbg !138
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %33) #3, !dbg !138
  call void @llvm.dbg.declare(metadata float* %tmpb, metadata !139, metadata !DIExpression()), !dbg !140
  %tmpb44 = bitcast float* %tmpb to i8*, !dbg !138
  call void @llvm.var.annotation(i8* %tmpb44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 42), !dbg !138
  %34 = load i32, i32* %k, align 4, !dbg !141
  %35 = load i32, i32* %n, align 4, !dbg !142
  %mul45 = mul nsw i32 %34, %35, !dbg !143
  %36 = load i32, i32* %j, align 4, !dbg !144
  %add46 = add nsw i32 %mul45, %36, !dbg !145
  %idxprom47 = sext i32 %add46 to i64, !dbg !146
  %arrayidx48 = getelementptr inbounds [256 x float], [256 x float]* %path, i64 0, i64 %idxprom47, !dbg !146
  %37 = load float, float* %arrayidx48, align 4, !dbg !146
  store float %37, float* %tmpb, align 4, !dbg !140
  %38 = bitcast i32* %cond to i8*, !dbg !147
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %38) #3, !dbg !147
  call void @llvm.dbg.declare(metadata i32* %cond, metadata !148, metadata !DIExpression()), !dbg !149
  %39 = load i32, i32* %i, align 4, !dbg !150
  %40 = load i32, i32* %n, align 4, !dbg !151
  %mul49 = mul nsw i32 %39, %40, !dbg !152
  %41 = load i32, i32* %j, align 4, !dbg !153
  %add50 = add nsw i32 %mul49, %41, !dbg !154
  %idxprom51 = sext i32 %add50 to i64, !dbg !155
  %arrayidx52 = getelementptr inbounds [256 x float], [256 x float]* %path, i64 0, i64 %idxprom51, !dbg !155
  %42 = load float, float* %arrayidx52, align 4, !dbg !155
  %43 = load i32, i32* %i, align 4, !dbg !156
  %44 = load i32, i32* %n, align 4, !dbg !157
  %mul53 = mul nsw i32 %43, %44, !dbg !158
  %45 = load i32, i32* %k, align 4, !dbg !159
  %add54 = add nsw i32 %mul53, %45, !dbg !160
  %idxprom55 = sext i32 %add54 to i64, !dbg !161
  %arrayidx56 = getelementptr inbounds [256 x float], [256 x float]* %path, i64 0, i64 %idxprom55, !dbg !161
  %46 = load float, float* %arrayidx56, align 4, !dbg !161
  %47 = load i32, i32* %k, align 4, !dbg !162
  %48 = load i32, i32* %n, align 4, !dbg !163
  %mul57 = mul nsw i32 %47, %48, !dbg !164
  %49 = load i32, i32* %j, align 4, !dbg !165
  %add58 = add nsw i32 %mul57, %49, !dbg !166
  %idxprom59 = sext i32 %add58 to i64, !dbg !167
  %arrayidx60 = getelementptr inbounds [256 x float], [256 x float]* %path, i64 0, i64 %idxprom59, !dbg !167
  %50 = load float, float* %arrayidx60, align 4, !dbg !167
  %add61 = fadd float %46, %50, !dbg !168
  %cmp62 = fcmp olt float %42, %add61, !dbg !169
  %conv63 = zext i1 %cmp62 to i32, !dbg !155
  store i32 %conv63, i32* %cond, align 4, !dbg !149
  %51 = load i32, i32* %cond, align 4, !dbg !170
  %tobool = icmp ne i32 %51, 0, !dbg !170
  br i1 %tobool, label %if.then64, label %if.else, !dbg !172

if.then64:                                        ; preds = %for.body38
  %52 = load i32, i32* %i, align 4, !dbg !173
  %53 = load i32, i32* %n, align 4, !dbg !175
  %mul65 = mul nsw i32 %52, %53, !dbg !176
  %54 = load i32, i32* %j, align 4, !dbg !177
  %add66 = add nsw i32 %mul65, %54, !dbg !178
  %idxprom67 = sext i32 %add66 to i64, !dbg !179
  %arrayidx68 = getelementptr inbounds [256 x float], [256 x float]* %path, i64 0, i64 %idxprom67, !dbg !179
  %55 = load float, float* %arrayidx68, align 4, !dbg !179
  %56 = load i32, i32* %i, align 4, !dbg !180
  %57 = load i32, i32* %n, align 4, !dbg !181
  %mul69 = mul nsw i32 %56, %57, !dbg !182
  %58 = load i32, i32* %j, align 4, !dbg !183
  %add70 = add nsw i32 %mul69, %58, !dbg !184
  %idxprom71 = sext i32 %add70 to i64, !dbg !185
  %arrayidx72 = getelementptr inbounds [256 x float], [256 x float]* %path, i64 0, i64 %idxprom71, !dbg !185
  store float %55, float* %arrayidx72, align 4, !dbg !186
  br label %if.end78, !dbg !187

if.else:                                          ; preds = %for.body38
  %59 = load float, float* %tmpa, align 4, !dbg !188
  %60 = load float, float* %tmpb, align 4, !dbg !190
  %add73 = fadd float %59, %60, !dbg !191
  %61 = load i32, i32* %i, align 4, !dbg !192
  %62 = load i32, i32* %n, align 4, !dbg !193
  %mul74 = mul nsw i32 %61, %62, !dbg !194
  %63 = load i32, i32* %j, align 4, !dbg !195
  %add75 = add nsw i32 %mul74, %63, !dbg !196
  %idxprom76 = sext i32 %add75 to i64, !dbg !197
  %arrayidx77 = getelementptr inbounds [256 x float], [256 x float]* %path, i64 0, i64 %idxprom76, !dbg !197
  store float %add73, float* %arrayidx77, align 4, !dbg !198
  br label %if.end78

if.end78:                                         ; preds = %if.else, %if.then64
  %64 = bitcast i32* %cond to i8*, !dbg !199
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %64) #3, !dbg !199
  %65 = bitcast float* %tmpb to i8*, !dbg !199
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %65) #3, !dbg !199
  %66 = bitcast float* %tmpa to i8*, !dbg !199
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %66) #3, !dbg !199
  br label %for.inc79, !dbg !200

for.inc79:                                        ; preds = %if.end78
  %67 = load i32, i32* %j, align 4, !dbg !201
  %inc80 = add nsw i32 %67, 1, !dbg !201
  store i32 %inc80, i32* %j, align 4, !dbg !201
  br label %for.cond36, !dbg !202, !llvm.loop !203

for.end81:                                        ; preds = %for.cond36
  br label %for.inc82, !dbg !206

for.inc82:                                        ; preds = %for.end81
  %68 = load i32, i32* %i, align 4, !dbg !207
  %inc83 = add nsw i32 %68, 1, !dbg !207
  store i32 %inc83, i32* %i, align 4, !dbg !207
  br label %for.cond33, !dbg !208, !llvm.loop !209

for.end84:                                        ; preds = %for.cond33
  br label %for.inc85, !dbg !212

for.inc85:                                        ; preds = %for.end84
  %69 = load i32, i32* %k, align 4, !dbg !213
  %inc86 = add nsw i32 %69, 1, !dbg !213
  store i32 %inc86, i32* %k, align 4, !dbg !213
  br label %for.cond30, !dbg !214, !llvm.loop !215

for.end87:                                        ; preds = %for.cond30
  br label %VITIS_LOOP_53_6, !dbg !216

VITIS_LOOP_53_6:                                  ; preds = %for.end87
  store i32 0, i32* %i, align 4, !dbg !218
  br label %for.cond88, !dbg !220

for.cond88:                                       ; preds = %for.inc94, %VITIS_LOOP_53_6
  %70 = load i32, i32* %i, align 4, !dbg !221
  %cmp89 = icmp slt i32 %70, 256, !dbg !223
  br i1 %cmp89, label %for.body90, label %for.end96, !dbg !224

for.body90:                                       ; preds = %for.cond88
  %71 = load i32, i32* %i, align 4, !dbg !225
  %idxprom91 = sext i32 %71 to i64, !dbg !227
  %arrayidx92 = getelementptr inbounds [256 x float], [256 x float]* %path, i64 0, i64 %idxprom91, !dbg !227
  %72 = load float, float* %arrayidx92, align 4, !dbg !227
  %conv93 = fpext float %72 to double, !dbg !227
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), double %conv93), !dbg !228
  br label %for.inc94, !dbg !229

for.inc94:                                        ; preds = %for.body90
  %73 = load i32, i32* %i, align 4, !dbg !230
  %inc95 = add nsw i32 %73, 1, !dbg !230
  store i32 %inc95, i32* %i, align 4, !dbg !230
  br label %for.cond88, !dbg !231, !llvm.loop !232

for.end96:                                        ; preds = %for.cond88
  %74 = bitcast [256 x float]* %path to i8*, !dbg !235
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* %74) #3, !dbg !235
  %75 = bitcast i32* %k to i8*, !dbg !235
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %75) #3, !dbg !235
  %76 = bitcast i32* %j to i8*, !dbg !235
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %76) #3, !dbg !235
  %77 = bitcast i32* %i to i8*, !dbg !235
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %77) #3, !dbg !235
  %78 = bitcast i32* %n to i8*, !dbg !235
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %78) #3, !dbg !235
  ret void, !dbg !235
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind
declare void @llvm.var.annotation(i8*, i8*, i8*, i32) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

declare i32 @printf(i8*, ...) #4

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.top.func"="fw" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nounwind }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.ident = !{!3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3}
!llvm.module.flags = !{!4, !5, !6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/home/bruno/Desktop/benchmarks/fw/proj_fw/solution1/.autopilot/db/fw_taffo.pp.0.c", directory: "/home/bruno/Desktop/benchmarks/fw")
!2 = !{}
!3 = !{!"clang version 7.0.0 "}
!4 = !{i32 2, !"Dwarf Version", i32 4}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = distinct !DISubprogram(name: "fw", scope: !8, file: !8, line: 21, type: !9, scopeLine: 21, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DIFile(filename: "fw_taffo.c", directory: "/home/bruno/Desktop/benchmarks/fw")
!9 = !DISubroutineType(types: !10)
!10 = !{null}
!11 = !{!12}
!12 = !{!"fpga.top", !"user", !13}
!13 = !DILocation(line: 21, column: 16, scope: !7)
!14 = !DILocation(line: 23, column: 3, scope: !7)
!15 = !DILocalVariable(name: "n", scope: !7, file: !8, line: 23, type: !16)
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !DILocation(line: 23, column: 7, scope: !7)
!18 = !DILocation(line: 24, column: 3, scope: !7)
!19 = !DILocalVariable(name: "i", scope: !7, file: !8, line: 24, type: !16)
!20 = !DILocation(line: 24, column: 7, scope: !7)
!21 = !DILocation(line: 25, column: 3, scope: !7)
!22 = !DILocalVariable(name: "j", scope: !7, file: !8, line: 25, type: !16)
!23 = !DILocation(line: 25, column: 7, scope: !7)
!24 = !DILocation(line: 26, column: 3, scope: !7)
!25 = !DILocalVariable(name: "k", scope: !7, file: !8, line: 26, type: !16)
!26 = !DILocation(line: 26, column: 7, scope: !7)
!27 = !DILocation(line: 28, column: 3, scope: !7)
!28 = !DILocalVariable(name: "path", scope: !7, file: !8, line: 28, type: !29)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 8192, elements: !31)
!30 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!31 = !{!32}
!32 = !DISubrange(count: 256)
!33 = !DILocation(line: 28, column: 9, scope: !7)
!34 = !DILocation(line: 30, column: 27, scope: !35)
!35 = distinct !DILexicalBlock(scope: !7, file: !8, line: 30, column: 20)
!36 = !DILocation(line: 30, column: 25, scope: !35)
!37 = !DILocation(line: 30, column: 32, scope: !38)
!38 = distinct !DILexicalBlock(scope: !35, file: !8, line: 30, column: 20)
!39 = !DILocation(line: 30, column: 36, scope: !38)
!40 = !DILocation(line: 30, column: 34, scope: !38)
!41 = !DILocation(line: 30, column: 20, scope: !35)
!42 = !DILocation(line: 30, column: 43, scope: !38)
!43 = !DILocation(line: 31, column: 29, scope: !44)
!44 = distinct !DILexicalBlock(scope: !45, file: !8, line: 31, column: 22)
!45 = distinct !DILexicalBlock(scope: !38, file: !8, line: 30, column: 43)
!46 = !DILocation(line: 31, column: 27, scope: !44)
!47 = !DILocation(line: 31, column: 34, scope: !48)
!48 = distinct !DILexicalBlock(scope: !44, file: !8, line: 31, column: 22)
!49 = !DILocation(line: 31, column: 38, scope: !48)
!50 = !DILocation(line: 31, column: 36, scope: !48)
!51 = !DILocation(line: 31, column: 22, scope: !44)
!52 = !DILocation(line: 32, column: 21, scope: !53)
!53 = distinct !DILexicalBlock(scope: !48, file: !8, line: 31, column: 46)
!54 = !DILocation(line: 32, column: 23, scope: !53)
!55 = !DILocation(line: 32, column: 22, scope: !53)
!56 = !DILocation(line: 32, column: 24, scope: !53)
!57 = !DILocation(line: 32, column: 26, scope: !53)
!58 = !DILocation(line: 32, column: 12, scope: !53)
!59 = !DILocation(line: 32, column: 14, scope: !53)
!60 = !DILocation(line: 32, column: 13, scope: !53)
!61 = !DILocation(line: 32, column: 16, scope: !53)
!62 = !DILocation(line: 32, column: 15, scope: !53)
!63 = !DILocation(line: 32, column: 7, scope: !53)
!64 = !DILocation(line: 32, column: 19, scope: !53)
!65 = !DILocation(line: 33, column: 12, scope: !66)
!66 = distinct !DILexicalBlock(scope: !53, file: !8, line: 33, column: 11)
!67 = !DILocation(line: 33, column: 14, scope: !66)
!68 = !DILocation(line: 33, column: 13, scope: !66)
!69 = !DILocation(line: 33, column: 16, scope: !66)
!70 = !DILocation(line: 33, column: 20, scope: !66)
!71 = !DILocation(line: 33, column: 25, scope: !66)
!72 = !DILocation(line: 33, column: 29, scope: !66)
!73 = !DILocation(line: 33, column: 31, scope: !66)
!74 = !DILocation(line: 33, column: 30, scope: !66)
!75 = !DILocation(line: 33, column: 33, scope: !66)
!76 = !DILocation(line: 33, column: 35, scope: !66)
!77 = !DILocation(line: 33, column: 39, scope: !66)
!78 = !DILocation(line: 33, column: 43, scope: !66)
!79 = !DILocation(line: 33, column: 45, scope: !66)
!80 = !DILocation(line: 33, column: 44, scope: !66)
!81 = !DILocation(line: 33, column: 47, scope: !66)
!82 = !DILocation(line: 33, column: 51, scope: !66)
!83 = !DILocation(line: 33, column: 11, scope: !53)
!84 = !DILocation(line: 34, column: 15, scope: !66)
!85 = !DILocation(line: 34, column: 17, scope: !66)
!86 = !DILocation(line: 34, column: 16, scope: !66)
!87 = !DILocation(line: 34, column: 19, scope: !66)
!88 = !DILocation(line: 34, column: 18, scope: !66)
!89 = !DILocation(line: 34, column: 10, scope: !66)
!90 = !DILocation(line: 34, column: 22, scope: !66)
!91 = !DILocation(line: 35, column: 5, scope: !53)
!92 = !DILocation(line: 31, column: 42, scope: !48)
!93 = !DILocation(line: 31, column: 22, scope: !48)
!94 = distinct !{!94, !51, !95, !96}
!95 = !DILocation(line: 35, column: 5, scope: !44)
!96 = !{!"llvm.loop.name", !"VITIS_LOOP_31_2"}
!97 = !DILocation(line: 36, column: 3, scope: !45)
!98 = !DILocation(line: 30, column: 40, scope: !38)
!99 = !DILocation(line: 30, column: 20, scope: !38)
!100 = distinct !{!100, !41, !101, !102}
!101 = !DILocation(line: 36, column: 3, scope: !35)
!102 = !{!"llvm.loop.name", !"VITIS_LOOP_30_1"}
!103 = !DILocation(line: 38, column: 27, scope: !104)
!104 = distinct !DILexicalBlock(scope: !7, file: !8, line: 38, column: 20)
!105 = !DILocation(line: 38, column: 25, scope: !104)
!106 = !DILocation(line: 38, column: 32, scope: !107)
!107 = distinct !DILexicalBlock(scope: !104, file: !8, line: 38, column: 20)
!108 = !DILocation(line: 38, column: 34, scope: !107)
!109 = !DILocation(line: 38, column: 20, scope: !104)
!110 = !DILocation(line: 38, column: 44, scope: !107)
!111 = !DILocation(line: 39, column: 30, scope: !112)
!112 = distinct !DILexicalBlock(scope: !113, file: !8, line: 39, column: 24)
!113 = distinct !DILexicalBlock(scope: !107, file: !8, line: 38, column: 44)
!114 = !DILocation(line: 39, column: 28, scope: !112)
!115 = !DILocation(line: 39, column: 35, scope: !116)
!116 = distinct !DILexicalBlock(scope: !112, file: !8, line: 39, column: 24)
!117 = !DILocation(line: 39, column: 37, scope: !116)
!118 = !DILocation(line: 39, column: 24, scope: !112)
!119 = !DILocation(line: 39, column: 47, scope: !116)
!120 = !DILocation(line: 40, column: 33, scope: !121)
!121 = distinct !DILexicalBlock(scope: !122, file: !8, line: 40, column: 26)
!122 = distinct !DILexicalBlock(scope: !116, file: !8, line: 39, column: 47)
!123 = !DILocation(line: 40, column: 31, scope: !121)
!124 = !DILocation(line: 40, column: 38, scope: !125)
!125 = distinct !DILexicalBlock(scope: !121, file: !8, line: 40, column: 26)
!126 = !DILocation(line: 40, column: 40, scope: !125)
!127 = !DILocation(line: 40, column: 26, scope: !121)
!128 = !DILocation(line: 41, column: 11, scope: !129)
!129 = distinct !DILexicalBlock(scope: !125, file: !8, line: 40, column: 51)
!130 = !DILocalVariable(name: "tmpa", scope: !129, file: !8, line: 41, type: !30)
!131 = !DILocation(line: 41, column: 55, scope: !129)
!132 = !DILocation(line: 41, column: 67, scope: !129)
!133 = !DILocation(line: 41, column: 69, scope: !129)
!134 = !DILocation(line: 41, column: 68, scope: !129)
!135 = !DILocation(line: 41, column: 71, scope: !129)
!136 = !DILocation(line: 41, column: 70, scope: !129)
!137 = !DILocation(line: 41, column: 62, scope: !129)
!138 = !DILocation(line: 42, column: 11, scope: !129)
!139 = !DILocalVariable(name: "tmpb", scope: !129, file: !8, line: 42, type: !30)
!140 = !DILocation(line: 42, column: 55, scope: !129)
!141 = !DILocation(line: 42, column: 67, scope: !129)
!142 = !DILocation(line: 42, column: 69, scope: !129)
!143 = !DILocation(line: 42, column: 68, scope: !129)
!144 = !DILocation(line: 42, column: 71, scope: !129)
!145 = !DILocation(line: 42, column: 70, scope: !129)
!146 = !DILocation(line: 42, column: 62, scope: !129)
!147 = !DILocation(line: 43, column: 11, scope: !129)
!148 = !DILocalVariable(name: "cond", scope: !129, file: !8, line: 43, type: !16)
!149 = !DILocation(line: 43, column: 15, scope: !129)
!150 = !DILocation(line: 43, column: 27, scope: !129)
!151 = !DILocation(line: 43, column: 29, scope: !129)
!152 = !DILocation(line: 43, column: 28, scope: !129)
!153 = !DILocation(line: 43, column: 31, scope: !129)
!154 = !DILocation(line: 43, column: 30, scope: !129)
!155 = !DILocation(line: 43, column: 22, scope: !129)
!156 = !DILocation(line: 43, column: 41, scope: !129)
!157 = !DILocation(line: 43, column: 43, scope: !129)
!158 = !DILocation(line: 43, column: 42, scope: !129)
!159 = !DILocation(line: 43, column: 45, scope: !129)
!160 = !DILocation(line: 43, column: 44, scope: !129)
!161 = !DILocation(line: 43, column: 36, scope: !129)
!162 = !DILocation(line: 43, column: 55, scope: !129)
!163 = !DILocation(line: 43, column: 57, scope: !129)
!164 = !DILocation(line: 43, column: 56, scope: !129)
!165 = !DILocation(line: 43, column: 59, scope: !129)
!166 = !DILocation(line: 43, column: 58, scope: !129)
!167 = !DILocation(line: 43, column: 50, scope: !129)
!168 = !DILocation(line: 43, column: 48, scope: !129)
!169 = !DILocation(line: 43, column: 34, scope: !129)
!170 = !DILocation(line: 44, column: 15, scope: !171)
!171 = distinct !DILexicalBlock(scope: !129, file: !8, line: 44, column: 15)
!172 = !DILocation(line: 44, column: 15, scope: !129)
!173 = !DILocation(line: 45, column: 32, scope: !174)
!174 = distinct !DILexicalBlock(scope: !171, file: !8, line: 44, column: 21)
!175 = !DILocation(line: 45, column: 34, scope: !174)
!176 = !DILocation(line: 45, column: 33, scope: !174)
!177 = !DILocation(line: 45, column: 36, scope: !174)
!178 = !DILocation(line: 45, column: 35, scope: !174)
!179 = !DILocation(line: 45, column: 27, scope: !174)
!180 = !DILocation(line: 45, column: 18, scope: !174)
!181 = !DILocation(line: 45, column: 20, scope: !174)
!182 = !DILocation(line: 45, column: 19, scope: !174)
!183 = !DILocation(line: 45, column: 22, scope: !174)
!184 = !DILocation(line: 45, column: 21, scope: !174)
!185 = !DILocation(line: 45, column: 13, scope: !174)
!186 = !DILocation(line: 45, column: 25, scope: !174)
!187 = !DILocation(line: 46, column: 11, scope: !174)
!188 = !DILocation(line: 47, column: 27, scope: !189)
!189 = distinct !DILexicalBlock(scope: !171, file: !8, line: 46, column: 18)
!190 = !DILocation(line: 47, column: 34, scope: !189)
!191 = !DILocation(line: 47, column: 32, scope: !189)
!192 = !DILocation(line: 47, column: 18, scope: !189)
!193 = !DILocation(line: 47, column: 20, scope: !189)
!194 = !DILocation(line: 47, column: 19, scope: !189)
!195 = !DILocation(line: 47, column: 22, scope: !189)
!196 = !DILocation(line: 47, column: 21, scope: !189)
!197 = !DILocation(line: 47, column: 13, scope: !189)
!198 = !DILocation(line: 47, column: 25, scope: !189)
!199 = !DILocation(line: 49, column: 9, scope: !125)
!200 = !DILocation(line: 49, column: 9, scope: !129)
!201 = !DILocation(line: 40, column: 47, scope: !125)
!202 = !DILocation(line: 40, column: 26, scope: !125)
!203 = distinct !{!203, !127, !204, !205}
!204 = !DILocation(line: 49, column: 9, scope: !121)
!205 = !{!"llvm.loop.name", !"VITIS_LOOP_40_5"}
!206 = !DILocation(line: 50, column: 8, scope: !122)
!207 = !DILocation(line: 39, column: 44, scope: !116)
!208 = !DILocation(line: 39, column: 24, scope: !116)
!209 = distinct !{!209, !118, !210, !211}
!210 = !DILocation(line: 50, column: 8, scope: !112)
!211 = !{!"llvm.loop.name", !"VITIS_LOOP_39_4"}
!212 = !DILocation(line: 51, column: 3, scope: !113)
!213 = !DILocation(line: 38, column: 41, scope: !107)
!214 = !DILocation(line: 38, column: 20, scope: !107)
!215 = distinct !{!215, !109, !216, !217}
!216 = !DILocation(line: 51, column: 3, scope: !104)
!217 = !{!"llvm.loop.name", !"VITIS_LOOP_38_3"}
!218 = !DILocation(line: 53, column: 27, scope: !219)
!219 = distinct !DILexicalBlock(scope: !7, file: !8, line: 53, column: 20)
!220 = !DILocation(line: 53, column: 25, scope: !219)
!221 = !DILocation(line: 53, column: 32, scope: !222)
!222 = distinct !DILexicalBlock(scope: !219, file: !8, line: 53, column: 20)
!223 = !DILocation(line: 53, column: 34, scope: !222)
!224 = !DILocation(line: 53, column: 20, scope: !219)
!225 = !DILocation(line: 54, column: 26, scope: !226)
!226 = distinct !DILexicalBlock(scope: !222, file: !8, line: 53, column: 47)
!227 = !DILocation(line: 54, column: 21, scope: !226)
!228 = !DILocation(line: 54, column: 5, scope: !226)
!229 = !DILocation(line: 55, column: 3, scope: !226)
!230 = !DILocation(line: 53, column: 44, scope: !222)
!231 = !DILocation(line: 53, column: 20, scope: !222)
!232 = distinct !{!232, !224, !233, !234}
!233 = !DILocation(line: 55, column: 3, scope: !219)
!234 = !{!"llvm.loop.name", !"VITIS_LOOP_53_6"}
!235 = !DILocation(line: 57, column: 1, scope: !7)
