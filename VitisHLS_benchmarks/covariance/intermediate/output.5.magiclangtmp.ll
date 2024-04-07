; ModuleID = '/home/bruno/Desktop/benchmarks/covariance/intermediate/output.4.magiclangtmp.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.global_ctors = appending global [0 x { i32, void ()*, i8* }] zeroinitializer, !taffo.structinfo !0
@.str = private unnamed_addr constant [21 x i8] c"scalar(range(0, 16))\00", section "llvm.metadata", !taffo.info !3
@.str.1 = private unnamed_addr constant [19 x i8] c"covariance_taffo.c\00", section "llvm.metadata", !taffo.info !5
@.str.2 = private unnamed_addr constant [23 x i8] c"scalar(range(2, 3000))\00", section "llvm.metadata", !taffo.info !3
@.str.3 = private unnamed_addr constant [16 x i8] c"scalar(range())\00", section "llvm.metadata", !taffo.info !3
@.str.4 = private unnamed_addr constant [23 x i8] c"scalar(range(1, 3000))\00", section "llvm.metadata", !taffo.info !3
@.str.5 = private unnamed_addr constant [9 x i8] c"scalar()\00", section "llvm.metadata", !taffo.info !3
@.str.6 = private unnamed_addr constant [47 x i8] c"target('cov') scalar(range(-2097152, 2097151))\00", section "llvm.metadata", !taffo.info !5
@.str.7 = private unnamed_addr constant [25 x i8] c"scalar(range(-300, 300))\00", section "llvm.metadata", !taffo.info !3

; Function Attrs: nounwind
define void @covariance(float* %data, float* %cov, float* %mean) #0 !dbg !16 !fpga.function.pragma !21 !taffo.start !24 !taffo.funinfo !25 {
entry:
  %data.addr = alloca float*, align 8, !taffo.info !26
  %cov.addr = alloca float*, align 8, !taffo.info !28
  %mean.addr = alloca float*, align 8, !taffo.info !30
  %i = alloca i32, align 4, !taffo.info !32
  %j = alloca i32, align 4, !taffo.info !32
  %k = alloca i32, align 4, !taffo.info !32
  %n = alloca i32, align 4, !taffo.info !34
  %m = alloca i32, align 4, !taffo.info !34
  %float_n.u12_20fixp = alloca i32, align 4, !taffo.info !36
  %onedotzero = alloca float, align 4, !taffo.info !39
  %q.u12_20fixp = alloca i32, align 4, !taffo.info !41
  %datas.s5_27fixp = alloca i32*, align 8, !taffo.info !43
  %covs.s23_9fixp = alloca i32*, align 8, !taffo.info !45, !taffo.target !48
  %means.u4_28fixp = alloca i32*, align 8, !taffo.info !49
  %sum.s10_22fixp = alloca i32, align 4, !taffo.info !51
  store float* %data, float** %data.addr, align 8
  call void @llvm.dbg.declare(metadata float** %data.addr, metadata !54, metadata !DIExpression()), !dbg !55
  store float* %cov, float** %cov.addr, align 8
  call void @llvm.dbg.declare(metadata float** %cov.addr, metadata !56, metadata !DIExpression()), !dbg !57
  store float* %mean, float** %mean.addr, align 8
  call void @llvm.dbg.declare(metadata float** %mean.addr, metadata !58, metadata !DIExpression()), !dbg !59
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %data, [0 x i8] zeroinitializer, i64 256, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !60
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %cov, [0 x i8] zeroinitializer, i64 256, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !61
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %mean, [0 x i8] zeroinitializer, i64 16, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !62
  %0 = bitcast i32* %i to i8*, !dbg !63, !taffo.info !32
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !63, !taffo.info !64
  call void @llvm.dbg.declare(metadata i32* %i, metadata !65, metadata !DIExpression()), !dbg !67
  %1 = bitcast i32* %j to i8*, !dbg !68, !taffo.info !32
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !68, !taffo.info !64
  call void @llvm.dbg.declare(metadata i32* %j, metadata !69, metadata !DIExpression()), !dbg !70
  %2 = bitcast i32* %k to i8*, !dbg !71, !taffo.info !32
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !71, !taffo.info !64
  call void @llvm.dbg.declare(metadata i32* %k, metadata !72, metadata !DIExpression()), !dbg !73
  %3 = bitcast i32* %n to i8*, !dbg !74
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !74
  call void @llvm.dbg.declare(metadata i32* %n, metadata !75, metadata !DIExpression()), !dbg !76
  store i32 16, i32* %n, align 4, !dbg !76
  %4 = bitcast i32* %m to i8*, !dbg !77
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !77
  call void @llvm.dbg.declare(metadata i32* %m, metadata !78, metadata !DIExpression()), !dbg !79
  store i32 16, i32* %m, align 4, !dbg !79
  %5 = bitcast i32* %float_n.u12_20fixp to i8*, !dbg !80, !taffo.info !81
  %6 = bitcast i8* %5 to i8*, !taffo.info !81
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !80, !taffo.info !64
  call void @llvm.dbg.declare(metadata !9, metadata !82, metadata !DIExpression()), !dbg !83
  %7 = bitcast float* %onedotzero to i8*, !dbg !84
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4, !dbg !84
  call void @llvm.dbg.declare(metadata float* %onedotzero, metadata !85, metadata !DIExpression()), !dbg !86
  %onedotzero5 = bitcast float* %onedotzero to i8*, !dbg !84
  store float 1.000000e+00, float* %onedotzero, align 4, !dbg !87
  %8 = load i32, i32* %n, align 4, !dbg !88, !taffo.info !34
  %9 = shl i32 %8, 20, !dbg !89, !taffo.info !34
  store i32 %9, i32* %float_n.u12_20fixp, align 4, !dbg !89, !taffo.info !64
  %10 = bitcast i32* %q.u12_20fixp to i8*, !dbg !90, !taffo.info !81
  %11 = bitcast i8* %10 to i8*, !taffo.info !81
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #4, !dbg !90, !taffo.info !64
  call void @llvm.dbg.declare(metadata !9, metadata !91, metadata !DIExpression()), !dbg !92
  %u12_20fixp4 = load i32, i32* %float_n.u12_20fixp, align 4, !dbg !93, !taffo.info !36
  %12 = load float, float* %onedotzero, align 4, !dbg !94, !taffo.info !39
  %13 = fmul float 0x4130000000000000, %12, !dbg !95, !taffo.info !39
  %14 = fptoui float %13 to i32, !dbg !95, !taffo.info !39
  %sub.u12_20fixp = sub i32 %u12_20fixp4, %14, !dbg !95, !taffo.info !96
  store i32 %sub.u12_20fixp, i32* %q.u12_20fixp, align 4, !dbg !98, !taffo.info !64
  %15 = bitcast i32** %datas.s5_27fixp to i8*, !dbg !99, !taffo.info !100
  %16 = bitcast i8* %15 to i8*, !taffo.info !100
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %16) #4, !dbg !99, !taffo.info !64
  call void @llvm.dbg.declare(metadata !9, metadata !101, metadata !DIExpression()), !dbg !102
  %17 = load float*, float** %data.addr, align 8, !dbg !103, !taffo.info !26
  %18 = bitcast float* %17 to i32*, !taffo.info !26
  store i32* %18, i32** %datas.s5_27fixp, align 8, !dbg !104, !taffo.info !64
  %19 = bitcast i32** %covs.s23_9fixp to i8*, !dbg !105, !taffo.info !106, !taffo.target !48
  %20 = bitcast i8* %19 to i8*, !taffo.info !106, !taffo.target !48
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %20) #4, !dbg !105, !taffo.info !64, !taffo.target !48
  call void @llvm.dbg.declare(metadata !9, metadata !107, metadata !DIExpression()), !dbg !108
  %21 = load float*, float** %cov.addr, align 8, !dbg !109, !taffo.info !28
  %22 = bitcast float* %21 to i32*, !taffo.info !28
  store i32* %22, i32** %covs.s23_9fixp, align 8, !dbg !110, !taffo.info !64, !taffo.target !48
  %23 = bitcast i32** %means.u4_28fixp to i8*, !dbg !111, !taffo.info !112
  %24 = bitcast i8* %23 to i8*, !taffo.info !112
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %24) #4, !dbg !111, !taffo.info !64
  call void @llvm.dbg.declare(metadata !9, metadata !113, metadata !DIExpression()), !dbg !114
  %25 = load float*, float** %mean.addr, align 8, !dbg !115, !taffo.info !30
  %26 = bitcast float* %25 to i32*, !taffo.info !30
  store i32* %26, i32** %means.u4_28fixp, align 8, !dbg !116, !taffo.info !64
  %27 = bitcast i32* %sum.s10_22fixp to i8*, !dbg !117, !taffo.info !118
  %28 = bitcast i8* %27 to i8*, !taffo.info !118
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %28) #4, !dbg !117, !taffo.info !64
  call void @llvm.dbg.declare(metadata !9, metadata !119, metadata !DIExpression()), !dbg !120
  store i32 0, i32* %sum.s10_22fixp, align 4, !dbg !120, !taffo.info !64
  br label %VITIS_LOOP_41_1, !dbg !117

VITIS_LOOP_41_1:                                  ; preds = %entry
  store i32 0, i32* %j, align 4, !dbg !121, !taffo.info !64
  br label %for.cond, !dbg !123

for.cond:                                         ; preds = %for.inc19, %VITIS_LOOP_41_1
  %29 = load i32, i32* %j, align 4, !dbg !124, !taffo.info !126
  %cmp = icmp slt i32 %29, 16, !dbg !128, !taffo.info !129
  br i1 %cmp, label %for.body, label %for.end21, !dbg !131, !taffo.info !64

for.body:                                         ; preds = %for.cond
  br label %VITIS_LOOP_44_2, !dbg !132

VITIS_LOOP_44_2:                                  ; preds = %for.body
  store i32 0, i32* %i, align 4, !dbg !133, !taffo.info !64
  br label %for.cond11, !dbg !136

for.cond11:                                       ; preds = %for.inc, %VITIS_LOOP_44_2
  %30 = load i32, i32* %i, align 4, !dbg !137, !taffo.info !126
  %cmp12 = icmp slt i32 %30, 16, !dbg !139, !taffo.info !129
  br i1 %cmp12, label %for.body13, label %for.end, !dbg !140, !taffo.info !64

for.body13:                                       ; preds = %for.cond11
  %s5_27fixp3 = load i32*, i32** %datas.s5_27fixp, align 8, !dbg !141, !taffo.info !43
  %31 = load i32, i32* %i, align 4, !dbg !143, !taffo.info !32
  %32 = load i32, i32* %m, align 4, !dbg !144, !taffo.info !34
  %mul = mul nsw i32 %31, %32, !dbg !145, !taffo.info !146
  %33 = load i32, i32* %j, align 4, !dbg !148, !taffo.info !32
  %add = add nsw i32 %mul, %33, !dbg !149, !taffo.info !150
  %idxprom = sext i32 %add to i64, !dbg !141, !taffo.info !150
  %arrayidx.s5_27fixp = getelementptr inbounds i32, i32* %s5_27fixp3, i64 %idxprom, !dbg !141, !taffo.info !43
  %s5_27fixp13 = load i32, i32* %arrayidx.s5_27fixp, align 4, !dbg !141, !taffo.info !43
  %34 = shl i32 %s5_27fixp13, 5, !dbg !152, !taffo.info !43
  %u4_28fixp7 = load i32*, i32** %means.u4_28fixp, align 8, !dbg !152, !taffo.info !49
  %35 = load i32, i32* %j, align 4, !dbg !153, !taffo.info !32
  %idxprom14 = sext i32 %35 to i64, !dbg !152, !taffo.info !32
  %arrayidx15.u4_28fixp = getelementptr inbounds i32, i32* %u4_28fixp7, i64 %idxprom14, !dbg !152, !taffo.info !49
  %u4_28fixp16 = load i32, i32* %arrayidx15.u4_28fixp, align 4, !dbg !154, !taffo.info !49
  %36 = shl i32 %u4_28fixp16, 4, !dbg !154, !taffo.info !49
  %add16.u0_32fixp = add i32 %36, %34, !dbg !154, !taffo.info !155
  %37 = lshr i32 %add16.u0_32fixp, 4, !dbg !154, !taffo.info !155
  store i32 %37, i32* %arrayidx15.u4_28fixp, align 4, !dbg !154, !taffo.info !64
  br label %for.inc, !dbg !157

for.inc:                                          ; preds = %for.body13
  %38 = load i32, i32* %i, align 4, !dbg !158, !taffo.info !32
  %inc = add nsw i32 %38, 1, !dbg !158, !taffo.info !159
  store i32 %inc, i32* %i, align 4, !dbg !158, !taffo.info !64
  br label %for.cond11, !dbg !161, !llvm.loop !162

for.end:                                          ; preds = %for.cond11
  %u12_20fixp = load i32, i32* %float_n.u12_20fixp, align 4, !dbg !165, !taffo.info !36
  %u4_28fixp6 = load i32*, i32** %means.u4_28fixp, align 8, !dbg !166, !taffo.info !49
  %39 = load i32, i32* %j, align 4, !dbg !167, !taffo.info !126
  %idxprom17 = sext i32 %39 to i64, !dbg !166, !taffo.info !126
  %arrayidx18.u4_28fixp = getelementptr inbounds i32, i32* %u4_28fixp6, i64 %idxprom17, !dbg !166, !taffo.info !49
  %u4_28fixp15 = load i32, i32* %arrayidx18.u4_28fixp, align 4, !dbg !168, !taffo.info !169
  %40 = zext i32 %u4_28fixp15 to i64, !dbg !168, !taffo.info !169
  %41 = shl i64 %40, 20, !dbg !168, !taffo.info !169
  %42 = zext i32 %u12_20fixp to i64, !dbg !168, !taffo.info !36
  %43 = udiv i64 %41, %42, !dbg !168, !taffo.info !171
  %44 = lshr i64 %43, 1, !dbg !168, !taffo.info !171
  %div.u5_27fixp = trunc i64 %44 to i32, !dbg !168, !taffo.info !173
  %45 = shl i32 %div.u5_27fixp, 1, !dbg !168, !taffo.info !173
  store i32 %45, i32* %arrayidx18.u4_28fixp, align 4, !dbg !168, !taffo.info !64
  br label %for.inc19, !dbg !174

for.inc19:                                        ; preds = %for.end
  %46 = load i32, i32* %j, align 4, !dbg !175, !taffo.info !32
  %inc20 = add nsw i32 %46, 1, !dbg !175, !taffo.info !159
  store i32 %inc20, i32* %j, align 4, !dbg !175, !taffo.info !64
  br label %for.cond, !dbg !176, !llvm.loop !177

for.end21:                                        ; preds = %for.cond
  br label %VITIS_LOOP_51_3, !dbg !178

VITIS_LOOP_51_3:                                  ; preds = %for.end21
  store i32 0, i32* %i, align 4, !dbg !180, !taffo.info !64
  br label %for.cond22, !dbg !182

for.cond22:                                       ; preds = %for.inc38, %VITIS_LOOP_51_3
  %47 = load i32, i32* %i, align 4, !dbg !183, !taffo.info !126
  %cmp23 = icmp slt i32 %47, 16, !dbg !185, !taffo.info !129
  br i1 %cmp23, label %for.body24, label %for.end40, !dbg !186, !taffo.info !64

for.body24:                                       ; preds = %for.cond22
  br label %VITIS_LOOP_53_4, !dbg !187

VITIS_LOOP_53_4:                                  ; preds = %for.body24
  store i32 0, i32* %j, align 4, !dbg !188, !taffo.info !64
  br label %for.cond25, !dbg !191

for.cond25:                                       ; preds = %for.inc35, %VITIS_LOOP_53_4
  %48 = load i32, i32* %j, align 4, !dbg !192, !taffo.info !194
  %cmp26 = icmp slt i32 %48, 16, !dbg !196, !taffo.info !129
  br i1 %cmp26, label %for.body27, label %for.end37, !dbg !197, !taffo.info !64

for.body27:                                       ; preds = %for.cond25
  %u4_28fixp = load i32*, i32** %means.u4_28fixp, align 8, !dbg !198, !taffo.info !49
  %49 = load i32, i32* %j, align 4, !dbg !200, !taffo.info !32
  %idxprom28 = sext i32 %49 to i64, !dbg !198, !taffo.info !32
  %arrayidx29.u4_28fixp = getelementptr inbounds i32, i32* %u4_28fixp, i64 %idxprom28, !dbg !198, !taffo.info !49
  %u4_28fixp14 = load i32, i32* %arrayidx29.u4_28fixp, align 4, !dbg !198, !taffo.info !201
  %50 = lshr i32 %u4_28fixp14, 2, !dbg !203, !taffo.info !201
  %s5_27fixp2 = load i32*, i32** %datas.s5_27fixp, align 8, !dbg !203, !taffo.info !43
  %51 = load i32, i32* %i, align 4, !dbg !204, !taffo.info !32
  %52 = load i32, i32* %m, align 4, !dbg !205, !taffo.info !34
  %mul30 = mul nsw i32 %51, %52, !dbg !206, !taffo.info !146
  %53 = load i32, i32* %j, align 4, !dbg !207, !taffo.info !32
  %add31 = add nsw i32 %mul30, %53, !dbg !208, !taffo.info !150
  %idxprom32 = sext i32 %add31 to i64, !dbg !203, !taffo.info !150
  %arrayidx33.s5_27fixp = getelementptr inbounds i32, i32* %s5_27fixp2, i64 %idxprom32, !dbg !203, !taffo.info !43
  %s5_27fixp12 = load i32, i32* %arrayidx33.s5_27fixp, align 4, !dbg !209, !taffo.info !210
  %54 = ashr i32 %s5_27fixp12, 1, !dbg !209, !taffo.info !210
  %sub34.s6_26fixp = sub i32 %54, %50, !dbg !209, !taffo.info !210
  %55 = shl i32 %sub34.s6_26fixp, 1, !dbg !209, !taffo.info !210
  store i32 %55, i32* %arrayidx33.s5_27fixp, align 4, !dbg !209, !taffo.info !64
  br label %for.inc35, !dbg !211

for.inc35:                                        ; preds = %for.body27
  %56 = load i32, i32* %j, align 4, !dbg !212, !taffo.info !213
  %inc36 = add nsw i32 %56, 1, !dbg !212, !taffo.info !194
  store i32 %inc36, i32* %j, align 4, !dbg !212, !taffo.info !64
  br label %for.cond25, !dbg !215, !llvm.loop !216

for.end37:                                        ; preds = %for.cond25
  br label %for.inc38, !dbg !219

for.inc38:                                        ; preds = %for.end37
  %57 = load i32, i32* %i, align 4, !dbg !220, !taffo.info !32
  %inc39 = add nsw i32 %57, 1, !dbg !220, !taffo.info !159
  store i32 %inc39, i32* %i, align 4, !dbg !220, !taffo.info !64
  br label %for.cond22, !dbg !221, !llvm.loop !222

for.end40:                                        ; preds = %for.cond22
  br label %VITIS_LOOP_58_5, !dbg !223

VITIS_LOOP_58_5:                                  ; preds = %for.end40
  store i32 0, i32* %i, align 4, !dbg !225, !taffo.info !64
  br label %for.cond41, !dbg !227

for.cond41:                                       ; preds = %for.inc83, %VITIS_LOOP_58_5
  %58 = load i32, i32* %i, align 4, !dbg !228, !taffo.info !126
  %cmp42 = icmp slt i32 %58, 16, !dbg !230, !taffo.info !129
  br i1 %cmp42, label %for.body43, label %for.end85, !dbg !231, !taffo.info !64

for.body43:                                       ; preds = %for.cond41
  br label %VITIS_LOOP_60_6, !dbg !232

VITIS_LOOP_60_6:                                  ; preds = %for.body43
  %59 = load i32, i32* %i, align 4, !dbg !233, !taffo.info !32
  store i32 %59, i32* %j, align 4, !dbg !236, !taffo.info !64
  br label %for.cond44, !dbg !237

for.cond44:                                       ; preds = %for.inc80, %VITIS_LOOP_60_6
  %60 = load i32, i32* %j, align 4, !dbg !238, !taffo.info !126
  %cmp45 = icmp slt i32 %60, 16, !dbg !240, !taffo.info !129
  br i1 %cmp45, label %for.body46, label %for.end82, !dbg !241, !taffo.info !64

for.body46:                                       ; preds = %for.cond44
  br label %VITIS_LOOP_63_7, !dbg !242

VITIS_LOOP_63_7:                                  ; preds = %for.body46
  store i32 0, i32* %k, align 4, !dbg !243, !taffo.info !64
  br label %for.cond47, !dbg !246

for.cond47:                                       ; preds = %for.inc64, %VITIS_LOOP_63_7
  %61 = load i32, i32* %k, align 4, !dbg !247, !taffo.info !126
  %cmp48 = icmp slt i32 %61, 16, !dbg !249, !taffo.info !129
  br i1 %cmp48, label %for.body49, label %for.end66, !dbg !250, !taffo.info !64

for.body49:                                       ; preds = %for.cond47
  %s5_27fixp1 = load i32*, i32** %datas.s5_27fixp, align 8, !dbg !251, !taffo.info !43
  %62 = load i32, i32* %k, align 4, !dbg !253, !taffo.info !32
  %63 = load i32, i32* %m, align 4, !dbg !254, !taffo.info !34
  %mul50 = mul nsw i32 %62, %63, !dbg !255, !taffo.info !146
  %64 = load i32, i32* %j, align 4, !dbg !256, !taffo.info !32
  %add51 = add nsw i32 %mul50, %64, !dbg !257, !taffo.info !150
  %idxprom52 = sext i32 %add51 to i64, !dbg !251, !taffo.info !150
  %arrayidx53.s5_27fixp = getelementptr inbounds i32, i32* %s5_27fixp1, i64 %idxprom52, !dbg !251, !taffo.info !43
  %s5_27fixp11 = load i32, i32* %arrayidx53.s5_27fixp, align 4, !dbg !251, !taffo.info !43
  %s5_27fixp = load i32*, i32** %datas.s5_27fixp, align 8, !dbg !258, !taffo.info !43
  %65 = load i32, i32* %k, align 4, !dbg !259, !taffo.info !32
  %66 = load i32, i32* %m, align 4, !dbg !260, !taffo.info !34
  %mul54 = mul nsw i32 %65, %66, !dbg !261, !taffo.info !146
  %67 = load i32, i32* %j, align 4, !dbg !262, !taffo.info !32
  %add55 = add nsw i32 %mul54, %67, !dbg !263, !taffo.info !150
  %idxprom56 = sext i32 %add55 to i64, !dbg !258, !taffo.info !150
  %arrayidx57.s5_27fixp = getelementptr inbounds i32, i32* %s5_27fixp, i64 %idxprom56, !dbg !258, !taffo.info !43
  %s5_27fixp10 = load i32, i32* %arrayidx57.s5_27fixp, align 4, !dbg !258, !taffo.info !43
  %68 = sext i32 %s5_27fixp11 to i64, !dbg !264, !taffo.info !43
  %69 = sext i32 %s5_27fixp10 to i64, !dbg !264, !taffo.info !43
  %70 = mul i64 %68, %69, !dbg !264, !taffo.info !265
  %71 = lshr i64 %70, 29, !dbg !264, !taffo.info !265
  %mul58.u7_25fixp = trunc i64 %71 to i32, !dbg !267, !taffo.info !268
  %s23_9fixp8 = load i32*, i32** %covs.s23_9fixp, align 8, !dbg !264, !taffo.info !45, !taffo.target !48
  %72 = load i32, i32* %i, align 4, !dbg !270, !taffo.info !32
  %73 = load i32, i32* %m, align 4, !dbg !271, !taffo.info !34
  %mul59 = mul nsw i32 %72, %73, !dbg !272, !taffo.info !146
  %74 = load i32, i32* %j, align 4, !dbg !273, !taffo.info !32
  %add60 = add nsw i32 %mul59, %74, !dbg !274, !taffo.info !150
  %idxprom61 = sext i32 %add60 to i64, !dbg !264, !taffo.info !150
  %arrayidx62.s23_9fixp = getelementptr inbounds i32, i32* %s23_9fixp8, i64 %idxprom61, !dbg !264, !taffo.info !45, !taffo.target !48
  %s23_9fixp17 = load i32, i32* %arrayidx62.s23_9fixp, align 4, !dbg !275, !taffo.info !45, !taffo.target !48
  %75 = shl i32 %s23_9fixp17, 16, !dbg !275, !taffo.info !45, !taffo.target !48
  %add63.u7_25fixp = add i32 %75, %mul58.u7_25fixp, !dbg !275, !taffo.info !268, !taffo.target !48
  %76 = lshr i32 %add63.u7_25fixp, 16, !dbg !275, !taffo.info !268, !taffo.target !48
  store i32 %76, i32* %arrayidx62.s23_9fixp, align 4, !dbg !275, !taffo.info !64, !taffo.target !48
  br label %for.inc64, !dbg !276

for.inc64:                                        ; preds = %for.body49
  %77 = load i32, i32* %k, align 4, !dbg !277, !taffo.info !32
  %inc65 = add nsw i32 %77, 1, !dbg !277, !taffo.info !159
  store i32 %inc65, i32* %k, align 4, !dbg !277, !taffo.info !64
  br label %for.cond47, !dbg !278, !llvm.loop !279

for.end66:                                        ; preds = %for.cond47
  %u12_20fixp5 = load i32, i32* %q.u12_20fixp, align 4, !dbg !282, !taffo.info !41
  %78 = load float*, float** %cov.addr, align 8, !dbg !283, !taffo.info !284
  %79 = load i32, i32* %i, align 4, !dbg !285, !taffo.info !32
  %80 = load i32, i32* %m, align 4, !dbg !286, !taffo.info !34
  %mul67 = mul nsw i32 %79, %80, !dbg !287, !taffo.info !146
  %81 = load i32, i32* %j, align 4, !dbg !288, !taffo.info !32
  %add68 = add nsw i32 %mul67, %81, !dbg !289, !taffo.info !150
  %idxprom69 = sext i32 %add68 to i64, !dbg !283, !taffo.info !150
  %arrayidx70 = getelementptr inbounds float, float* %78, i64 %idxprom69, !dbg !283, !taffo.info !45
  %arrayidx70.haxfixp.s23_9fixp = bitcast float* %arrayidx70 to i32*, !dbg !283, !taffo.info !45
  %s23_9fixp = load i32, i32* %arrayidx70.haxfixp.s23_9fixp, align 4, !dbg !290, !taffo.info !45
  %82 = zext i32 %s23_9fixp to i64, !dbg !290, !taffo.info !45
  %83 = shl i64 %82, 20, !dbg !290, !taffo.info !45
  %84 = zext i32 %u12_20fixp5 to i64, !dbg !290, !taffo.info !41
  %85 = udiv i64 %83, %84, !dbg !290, !taffo.info !291
  %86 = shl i64 %85, 23, !dbg !290, !taffo.info !291
  %div71.u0_32fixp = trunc i64 %86 to i32, !dbg !290, !taffo.info !155
  %87 = lshr i32 %div71.u0_32fixp, 23, !dbg !290, !taffo.info !155
  store i32 %87, i32* %arrayidx70.haxfixp.s23_9fixp, align 4, !dbg !290, !taffo.info !64
  %88 = load float*, float** %cov.addr, align 8, !dbg !293, !taffo.info !284
  %89 = load i32, i32* %i, align 4, !dbg !294, !taffo.info !32
  %90 = load i32, i32* %m, align 4, !dbg !295, !taffo.info !34
  %mul72 = mul nsw i32 %89, %90, !dbg !296, !taffo.info !146
  %91 = load i32, i32* %j, align 4, !dbg !297, !taffo.info !32
  %add73 = add nsw i32 %mul72, %91, !dbg !298, !taffo.info !150
  %idxprom74 = sext i32 %add73 to i64, !dbg !293, !taffo.info !150
  %arrayidx75 = getelementptr inbounds float, float* %88, i64 %idxprom74, !dbg !293, !taffo.info !45
  %arrayidx75.haxfixp.s23_9fixp = bitcast float* %arrayidx75 to i32*, !dbg !293, !taffo.info !45
  %s23_9fixp9 = load i32, i32* %arrayidx75.haxfixp.s23_9fixp, align 4, !dbg !293, !taffo.info !45
  %92 = load float*, float** %cov.addr, align 8, !dbg !299, !taffo.info !284
  %93 = load i32, i32* %j, align 4, !dbg !300, !taffo.info !32
  %94 = load i32, i32* %m, align 4, !dbg !301, !taffo.info !34
  %mul76 = mul nsw i32 %93, %94, !dbg !302, !taffo.info !146
  %95 = load i32, i32* %i, align 4, !dbg !303, !taffo.info !32
  %add77 = add nsw i32 %mul76, %95, !dbg !304, !taffo.info !150
  %idxprom78 = sext i32 %add77 to i64, !dbg !299, !taffo.info !150
  %arrayidx79 = getelementptr inbounds float, float* %92, i64 %idxprom78, !dbg !299, !taffo.info !45
  %arrayidx79.haxfixp.s23_9fixp = bitcast float* %arrayidx79 to i32*, !dbg !299, !taffo.info !45
  store i32 %s23_9fixp9, i32* %arrayidx79.haxfixp.s23_9fixp, align 4, !dbg !305, !taffo.info !64
  br label %for.inc80, !dbg !306

for.inc80:                                        ; preds = %for.end66
  %96 = load i32, i32* %j, align 4, !dbg !307, !taffo.info !32
  %inc81 = add nsw i32 %96, 1, !dbg !307, !taffo.info !159
  store i32 %inc81, i32* %j, align 4, !dbg !307, !taffo.info !64
  br label %for.cond44, !dbg !308, !llvm.loop !309

for.end82:                                        ; preds = %for.cond44
  br label %for.inc83, !dbg !312

for.inc83:                                        ; preds = %for.end82
  %97 = load i32, i32* %i, align 4, !dbg !313, !taffo.info !32
  %inc84 = add nsw i32 %97, 1, !dbg !313, !taffo.info !159
  store i32 %inc84, i32* %i, align 4, !dbg !313, !taffo.info !64
  br label %for.cond41, !dbg !314, !llvm.loop !315

for.end85:                                        ; preds = %for.cond41
  %98 = bitcast i32* %sum.s10_22fixp to i8*, !dbg !318, !taffo.info !118
  %99 = bitcast i8* %98 to i8*, !taffo.info !118
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %99) #4, !dbg !318, !taffo.info !64
  %100 = bitcast i32** %means.u4_28fixp to i8*, !dbg !318, !taffo.info !112
  %101 = bitcast i8* %100 to i8*, !taffo.info !112
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %101) #4, !dbg !318, !taffo.info !64
  %102 = bitcast i32** %covs.s23_9fixp to i8*, !dbg !318, !taffo.info !106, !taffo.target !48
  %103 = bitcast i8* %102 to i8*, !taffo.info !106, !taffo.target !48
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %103) #4, !dbg !318, !taffo.info !64, !taffo.target !48
  %104 = bitcast i32** %datas.s5_27fixp to i8*, !dbg !318, !taffo.info !100
  %105 = bitcast i8* %104 to i8*, !taffo.info !100
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %105) #4, !dbg !318, !taffo.info !64
  %106 = bitcast i32* %q.u12_20fixp to i8*, !dbg !318, !taffo.info !81
  %107 = bitcast i8* %106 to i8*, !taffo.info !81
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %107) #4, !dbg !318, !taffo.info !64
  %108 = bitcast float* %onedotzero to i8*, !dbg !318, !taffo.info !39
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %108) #4, !dbg !318
  %109 = bitcast i32* %float_n.u12_20fixp to i8*, !dbg !318, !taffo.info !81
  %110 = bitcast i8* %109 to i8*, !taffo.info !81
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %110) #4, !dbg !318, !taffo.info !64
  %111 = bitcast i32* %m to i8*, !dbg !318, !taffo.info !34
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %111) #4, !dbg !318
  %112 = bitcast i32* %n to i8*, !dbg !318, !taffo.info !34
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %112) #4, !dbg !318
  %113 = bitcast i32* %k to i8*, !dbg !318, !taffo.info !32
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %113) #4, !dbg !318, !taffo.info !64
  %114 = bitcast i32* %j to i8*, !dbg !318, !taffo.info !32
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %114) #4, !dbg !318, !taffo.info !64
  %115 = bitcast i32* %i to i8*, !dbg !318, !taffo.info !32
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %115) #4, !dbg !318, !taffo.info !64
  ret void, !dbg !318
}

; Function Attrs: nounwind readnone speculatable
declare !taffo.funinfo !319 void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: inaccessiblememonly nounwind
declare !taffo.funinfo !9 void @llvm.sideeffect() #2

; Function Attrs: argmemonly nounwind
declare !taffo.funinfo !320 void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare !taffo.funinfo !321 void @llvm.var.annotation(i8*, i8*, i8*, i32) #4

; Function Attrs: argmemonly nounwind
declare !taffo.funinfo !320 void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #3

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.top.func"="covariance" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { inaccessiblememonly nounwind }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind }
attributes #5 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="0" "xlx.source"="user" }

!llvm.dbg.cu = !{!7}
!llvm.ident = !{!12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12}
!llvm.module.flags = !{!13, !14, !15}

!0 = !{!1, !1, !1}
!1 = !{i1 false, !2, i1 false, i1 false}
!2 = !{double 0.000000e+00, double 0.000000e+00}
!3 = !{i1 false, !4, i1 false, i1 false}
!4 = !{double 0.000000e+00, double 1.150000e+02}
!5 = !{i1 false, !6, i1 false, i1 false}
!6 = !{double 0.000000e+00, double 1.180000e+02}
!7 = distinct !DICompileUnit(language: DW_LANG_C99, file: !8, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !9, retainedTypes: !10)
!8 = !DIFile(filename: "/home/bruno/Desktop/benchmarks/covariance/proj_covariance/solution1/.autopilot/db/covariance_taffo.pp.0.c", directory: "/home/bruno/Desktop/benchmarks/covariance")
!9 = !{}
!10 = !{!11}
!11 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!12 = !{!"clang version 7.0.0 "}
!13 = !{i32 2, !"Dwarf Version", i32 4}
!14 = !{i32 2, !"Debug Info Version", i32 0}
!15 = !{i32 1, !"wchar_size", i32 4}
!16 = distinct !DISubprogram(name: "covariance", scope: !17, file: !17, line: 18, type: !18, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!17 = !DIFile(filename: "covariance_taffo.c", directory: "/home/bruno/Desktop/benchmarks/covariance")
!18 = !DISubroutineType(types: !19)
!19 = !{null, !20, !20, !20}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!21 = !{!22}
!22 = !{!"user"}
!23 = !DILocation(line: 18, column: 16, scope: !16)
!24 = !{i1 true}
!25 = !{i32 1, !26, i32 1, !28, i32 1, !30}
!26 = !{i1 false, !27, i1 false, i1 false}
!27 = !{double -8.500000e+00, double 0.000000e+00}
!28 = !{i1 false, !29, i1 false, i1 false}
!29 = !{double 0.000000e+00, double 7.225000e+01}
!30 = !{i1 false, !31, i1 false, i1 false}
!31 = !{double 0.000000e+00, double 8.500000e+00}
!32 = !{i1 false, !33, i1 false, i1 true}
!33 = !{double 0.000000e+00, double 1.600000e+01}
!34 = !{i1 false, !35, i1 false, i1 false}
!35 = !{double 1.600000e+01, double 1.600000e+01}
!36 = !{!37, !38, i1 false, i1 true}
!37 = !{!"fixp", i32 32, i32 20}
!38 = !{double 2.000000e+00, double 3.000000e+03}
!39 = !{i1 false, !40, i1 false, i1 false}
!40 = !{double 1.000000e+00, double 1.000000e+00}
!41 = !{!37, !42, i1 false, i1 true}
!42 = !{double 1.000000e+00, double 3.000000e+03}
!43 = !{!44, !27, i1 false, i1 true}
!44 = !{!"fixp", i32 -32, i32 27}
!45 = !{!46, !47, i1 false, i1 true}
!46 = !{!"fixp", i32 -32, i32 9}
!47 = !{double 0xC140000000000000, double 0x413FFFFF00000000}
!48 = !{!"cov"}
!49 = !{!50, !31, i1 false, i1 true}
!50 = !{!"fixp", i32 32, i32 28}
!51 = !{!52, !53, i1 false, i1 true}
!52 = !{!"fixp", i32 -32, i32 22}
!53 = !{double -3.000000e+02, double 3.000000e+02}
!54 = !DILocalVariable(name: "data", arg: 1, scope: !16, file: !17, line: 18, type: !20)
!55 = !DILocation(line: 18, column: 69, scope: !16)
!56 = !DILocalVariable(name: "cov", arg: 2, scope: !16, file: !17, line: 18, type: !20)
!57 = !DILocation(line: 18, column: 82, scope: !16)
!58 = !DILocalVariable(name: "mean", arg: 3, scope: !16, file: !17, line: 18, type: !20)
!59 = !DILocation(line: 18, column: 94, scope: !16)
!60 = !DILocation(line: 20, column: 9, scope: !16)
!61 = !DILocation(line: 21, column: 9, scope: !16)
!62 = !DILocation(line: 22, column: 9, scope: !16)
!63 = !DILocation(line: 23, column: 1, scope: !16)
!64 = !{i1 false, i1 false, i1 false, i1 true}
!65 = !DILocalVariable(name: "i", scope: !16, file: !17, line: 23, type: !66)
!66 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!67 = !DILocation(line: 23, column: 55, scope: !16)
!68 = !DILocation(line: 24, column: 1, scope: !16)
!69 = !DILocalVariable(name: "j", scope: !16, file: !17, line: 24, type: !66)
!70 = !DILocation(line: 24, column: 55, scope: !16)
!71 = !DILocation(line: 25, column: 1, scope: !16)
!72 = !DILocalVariable(name: "k", scope: !16, file: !17, line: 25, type: !66)
!73 = !DILocation(line: 25, column: 55, scope: !16)
!74 = !DILocation(line: 26, column: 3, scope: !16)
!75 = !DILocalVariable(name: "n", scope: !16, file: !17, line: 26, type: !66)
!76 = !DILocation(line: 26, column: 7, scope: !16)
!77 = !DILocation(line: 27, column: 3, scope: !16)
!78 = !DILocalVariable(name: "m", scope: !16, file: !17, line: 27, type: !66)
!79 = !DILocation(line: 27, column: 7, scope: !16)
!80 = !DILocation(line: 28, column: 3, scope: !16)
!81 = !{!37, i1 false, i1 false, i1 true}
!82 = !DILocalVariable(name: "float_n", scope: !16, file: !17, line: 28, type: !11)
!83 = !DILocation(line: 28, column: 61, scope: !16)
!84 = !DILocation(line: 29, column: 3, scope: !16)
!85 = !DILocalVariable(name: "onedotzero", scope: !16, file: !17, line: 29, type: !11)
!86 = !DILocation(line: 29, column: 54, scope: !16)
!87 = !DILocation(line: 30, column: 14, scope: !16)
!88 = !DILocation(line: 31, column: 13, scope: !16)
!89 = !DILocation(line: 31, column: 11, scope: !16)
!90 = !DILocation(line: 32, column: 3, scope: !16)
!91 = !DILocalVariable(name: "q", scope: !16, file: !17, line: 32, type: !11)
!92 = !DILocation(line: 32, column: 61, scope: !16)
!93 = !DILocation(line: 33, column: 7, scope: !16)
!94 = !DILocation(line: 33, column: 17, scope: !16)
!95 = !DILocation(line: 33, column: 15, scope: !16)
!96 = !{!37, !97, i1 false, i1 true}
!97 = !{double 1.000000e+00, double 2.999000e+03}
!98 = !DILocation(line: 33, column: 5, scope: !16)
!99 = !DILocation(line: 34, column: 5, scope: !16)
!100 = !{!44, i1 false, i1 false, i1 true}
!101 = !DILocalVariable(name: "datas", scope: !16, file: !17, line: 34, type: !20)
!102 = !DILocation(line: 34, column: 12, scope: !16)
!103 = !DILocation(line: 35, column: 13, scope: !16)
!104 = !DILocation(line: 35, column: 11, scope: !16)
!105 = !DILocation(line: 36, column: 5, scope: !16)
!106 = !{!46, i1 false, i1 false, i1 true}
!107 = !DILocalVariable(name: "covs", scope: !16, file: !17, line: 36, type: !20)
!108 = !DILocation(line: 36, column: 12, scope: !16)
!109 = !DILocation(line: 37, column: 12, scope: !16)
!110 = !DILocation(line: 37, column: 10, scope: !16)
!111 = !DILocation(line: 38, column: 5, scope: !16)
!112 = !{!50, i1 false, i1 false, i1 true}
!113 = !DILocalVariable(name: "means", scope: !16, file: !17, line: 38, type: !20)
!114 = !DILocation(line: 38, column: 12, scope: !16)
!115 = !DILocation(line: 39, column: 13, scope: !16)
!116 = !DILocation(line: 39, column: 11, scope: !16)
!117 = !DILocation(line: 40, column: 5, scope: !16)
!118 = !{!52, i1 false, i1 false, i1 true}
!119 = !DILocalVariable(name: "sum", scope: !16, file: !17, line: 40, type: !11)
!120 = !DILocation(line: 40, column: 64, scope: !16)
!121 = !DILocation(line: 41, column: 28, scope: !122)
!122 = distinct !DILexicalBlock(scope: !16, file: !17, line: 41, column: 21)
!123 = !DILocation(line: 41, column: 26, scope: !122)
!124 = !DILocation(line: 41, column: 33, scope: !125)
!125 = distinct !DILexicalBlock(scope: !122, file: !17, line: 41, column: 21)
!126 = !{i1 false, !127, i1 false, i1 true}
!127 = !{double 0.000000e+00, double 1.700000e+01}
!128 = !DILocation(line: 41, column: 35, scope: !125)
!129 = !{i1 false, !130, i1 false, i1 true}
!130 = !{double 0.000000e+00, double 1.000000e+00}
!131 = !DILocation(line: 41, column: 21, scope: !122)
!132 = !DILocation(line: 42, column: 5, scope: !125)
!133 = !DILocation(line: 44, column: 31, scope: !134)
!134 = distinct !DILexicalBlock(scope: !135, file: !17, line: 44, column: 24)
!135 = distinct !DILexicalBlock(scope: !125, file: !17, line: 42, column: 5)
!136 = !DILocation(line: 44, column: 29, scope: !134)
!137 = !DILocation(line: 44, column: 36, scope: !138)
!138 = distinct !DILexicalBlock(scope: !134, file: !17, line: 44, column: 24)
!139 = !DILocation(line: 44, column: 38, scope: !138)
!140 = !DILocation(line: 44, column: 24, scope: !134)
!141 = !DILocation(line: 46, column: 21, scope: !142)
!142 = distinct !DILexicalBlock(scope: !138, file: !17, line: 44, column: 48)
!143 = !DILocation(line: 46, column: 27, scope: !142)
!144 = !DILocation(line: 46, column: 29, scope: !142)
!145 = !DILocation(line: 46, column: 28, scope: !142)
!146 = !{i1 false, !147, i1 false, i1 true}
!147 = !{double 0.000000e+00, double 2.560000e+02}
!148 = !DILocation(line: 46, column: 31, scope: !142)
!149 = !DILocation(line: 46, column: 30, scope: !142)
!150 = !{i1 false, !151, i1 false, i1 true}
!151 = !{double 0.000000e+00, double 2.720000e+02}
!152 = !DILocation(line: 46, column: 9, scope: !142)
!153 = !DILocation(line: 46, column: 15, scope: !142)
!154 = !DILocation(line: 46, column: 18, scope: !142)
!155 = !{!156, !2, i1 false, i1 true}
!156 = !{!"fixp", i32 32, i32 32}
!157 = !DILocation(line: 47, column: 9, scope: !142)
!158 = !DILocation(line: 44, column: 45, scope: !138)
!159 = !{i1 false, !160, i1 false, i1 true}
!160 = !{double 1.000000e+00, double 1.700000e+01}
!161 = !DILocation(line: 44, column: 24, scope: !138)
!162 = distinct !{!162, !140, !163, !164}
!163 = !DILocation(line: 47, column: 9, scope: !134)
!164 = !{!"llvm.loop.name", !"VITIS_LOOP_44_2"}
!165 = !DILocation(line: 48, column: 19, scope: !135)
!166 = !DILocation(line: 48, column: 7, scope: !135)
!167 = !DILocation(line: 48, column: 13, scope: !135)
!168 = !DILocation(line: 48, column: 16, scope: !135)
!169 = !{!170, !127, i1 false, i1 true}
!170 = !{!"fixp", i32 32, i32 27}
!171 = !{!172, !38, i1 false}
!172 = !{!"fixp", i32 64, i32 28}
!173 = !{!170, !31, i1 false, i1 true}
!174 = !DILocation(line: 49, column: 5, scope: !135)
!175 = !DILocation(line: 41, column: 42, scope: !125)
!176 = !DILocation(line: 41, column: 21, scope: !125)
!177 = distinct !{!177, !131, !178, !179}
!178 = !DILocation(line: 49, column: 5, scope: !122)
!179 = !{!"llvm.loop.name", !"VITIS_LOOP_41_1"}
!180 = !DILocation(line: 51, column: 27, scope: !181)
!181 = distinct !DILexicalBlock(scope: !16, file: !17, line: 51, column: 20)
!182 = !DILocation(line: 51, column: 25, scope: !181)
!183 = !DILocation(line: 51, column: 32, scope: !184)
!184 = distinct !DILexicalBlock(scope: !181, file: !17, line: 51, column: 20)
!185 = !DILocation(line: 51, column: 34, scope: !184)
!186 = !DILocation(line: 51, column: 20, scope: !181)
!187 = !DILocation(line: 51, column: 44, scope: !184)
!188 = !DILocation(line: 53, column: 29, scope: !189)
!189 = distinct !DILexicalBlock(scope: !190, file: !17, line: 53, column: 22)
!190 = distinct !DILexicalBlock(scope: !184, file: !17, line: 51, column: 44)
!191 = !DILocation(line: 53, column: 27, scope: !189)
!192 = !DILocation(line: 53, column: 34, scope: !193)
!193 = distinct !DILexicalBlock(scope: !189, file: !17, line: 53, column: 22)
!194 = !{i1 false, !195, i1 false, i1 true}
!195 = !{double -7.500000e+00, double 1.700000e+01}
!196 = !DILocation(line: 53, column: 36, scope: !193)
!197 = !DILocation(line: 53, column: 22, scope: !189)
!198 = !DILocation(line: 55, column: 23, scope: !199)
!199 = distinct !DILexicalBlock(scope: !193, file: !17, line: 53, column: 46)
!200 = !DILocation(line: 55, column: 29, scope: !199)
!201 = !{!202, !31, i1 false, i1 true}
!202 = !{!"fixp", i32 -32, i32 26}
!203 = !DILocation(line: 55, column: 7, scope: !199)
!204 = !DILocation(line: 55, column: 13, scope: !199)
!205 = !DILocation(line: 55, column: 15, scope: !199)
!206 = !DILocation(line: 55, column: 14, scope: !199)
!207 = !DILocation(line: 55, column: 17, scope: !199)
!208 = !DILocation(line: 55, column: 16, scope: !199)
!209 = !DILocation(line: 55, column: 20, scope: !199)
!210 = !{!202, !27, i1 false, i1 true}
!211 = !DILocation(line: 56, column: 7, scope: !199)
!212 = !DILocation(line: 53, column: 43, scope: !193)
!213 = !{i1 false, !214, i1 false, i1 true}
!214 = !{double -8.500000e+00, double 1.600000e+01}
!215 = !DILocation(line: 53, column: 22, scope: !193)
!216 = distinct !{!216, !197, !217, !218}
!217 = !DILocation(line: 56, column: 7, scope: !189)
!218 = !{!"llvm.loop.name", !"VITIS_LOOP_53_4"}
!219 = !DILocation(line: 57, column: 7, scope: !190)
!220 = !DILocation(line: 51, column: 41, scope: !184)
!221 = !DILocation(line: 51, column: 20, scope: !184)
!222 = distinct !{!222, !186, !223, !224}
!223 = !DILocation(line: 57, column: 7, scope: !181)
!224 = !{!"llvm.loop.name", !"VITIS_LOOP_51_3"}
!225 = !DILocation(line: 58, column: 27, scope: !226)
!226 = distinct !DILexicalBlock(scope: !16, file: !17, line: 58, column: 20)
!227 = !DILocation(line: 58, column: 25, scope: !226)
!228 = !DILocation(line: 58, column: 32, scope: !229)
!229 = distinct !DILexicalBlock(scope: !226, file: !17, line: 58, column: 20)
!230 = !DILocation(line: 58, column: 34, scope: !229)
!231 = !DILocation(line: 58, column: 20, scope: !226)
!232 = !DILocation(line: 58, column: 44, scope: !229)
!233 = !DILocation(line: 60, column: 31, scope: !234)
!234 = distinct !DILexicalBlock(scope: !235, file: !17, line: 60, column: 22)
!235 = distinct !DILexicalBlock(scope: !229, file: !17, line: 58, column: 44)
!236 = !DILocation(line: 60, column: 29, scope: !234)
!237 = !DILocation(line: 60, column: 27, scope: !234)
!238 = !DILocation(line: 60, column: 34, scope: !239)
!239 = distinct !DILexicalBlock(scope: !234, file: !17, line: 60, column: 22)
!240 = !DILocation(line: 60, column: 36, scope: !239)
!241 = !DILocation(line: 60, column: 22, scope: !234)
!242 = !DILocation(line: 61, column: 7, scope: !239)
!243 = !DILocation(line: 63, column: 33, scope: !244)
!244 = distinct !DILexicalBlock(scope: !245, file: !17, line: 63, column: 26)
!245 = distinct !DILexicalBlock(scope: !239, file: !17, line: 61, column: 7)
!246 = !DILocation(line: 63, column: 31, scope: !244)
!247 = !DILocation(line: 63, column: 38, scope: !248)
!248 = distinct !DILexicalBlock(scope: !244, file: !17, line: 63, column: 26)
!249 = !DILocation(line: 63, column: 40, scope: !248)
!250 = !DILocation(line: 63, column: 26, scope: !244)
!251 = !DILocation(line: 65, column: 19, scope: !252)
!252 = distinct !DILexicalBlock(scope: !248, file: !17, line: 63, column: 50)
!253 = !DILocation(line: 65, column: 25, scope: !252)
!254 = !DILocation(line: 65, column: 27, scope: !252)
!255 = !DILocation(line: 65, column: 26, scope: !252)
!256 = !DILocation(line: 65, column: 29, scope: !252)
!257 = !DILocation(line: 65, column: 28, scope: !252)
!258 = !DILocation(line: 65, column: 34, scope: !252)
!259 = !DILocation(line: 65, column: 40, scope: !252)
!260 = !DILocation(line: 65, column: 42, scope: !252)
!261 = !DILocation(line: 65, column: 41, scope: !252)
!262 = !DILocation(line: 65, column: 44, scope: !252)
!263 = !DILocation(line: 65, column: 43, scope: !252)
!264 = !DILocation(line: 65, column: 4, scope: !252)
!265 = !{!266, !27, i1 false}
!266 = !{!"fixp", i32 64, i32 27}
!267 = !DILocation(line: 65, column: 32, scope: !252)
!268 = !{!269, !29, i1 false, i1 true}
!269 = !{!"fixp", i32 32, i32 25}
!270 = !DILocation(line: 65, column: 9, scope: !252)
!271 = !DILocation(line: 65, column: 11, scope: !252)
!272 = !DILocation(line: 65, column: 10, scope: !252)
!273 = !DILocation(line: 65, column: 13, scope: !252)
!274 = !DILocation(line: 65, column: 12, scope: !252)
!275 = !DILocation(line: 65, column: 16, scope: !252)
!276 = !DILocation(line: 66, column: 4, scope: !252)
!277 = !DILocation(line: 63, column: 47, scope: !248)
!278 = !DILocation(line: 63, column: 26, scope: !248)
!279 = distinct !{!279, !250, !280, !281}
!280 = !DILocation(line: 66, column: 4, scope: !244)
!281 = !{!"llvm.loop.name", !"VITIS_LOOP_63_7"}
!282 = !DILocation(line: 67, column: 23, scope: !245)
!283 = !DILocation(line: 67, column: 9, scope: !245)
!284 = !{i1 false, !47, i1 false, i1 false}
!285 = !DILocation(line: 67, column: 13, scope: !245)
!286 = !DILocation(line: 67, column: 15, scope: !245)
!287 = !DILocation(line: 67, column: 14, scope: !245)
!288 = !DILocation(line: 67, column: 17, scope: !245)
!289 = !DILocation(line: 67, column: 16, scope: !245)
!290 = !DILocation(line: 67, column: 20, scope: !245)
!291 = !{!292, !42, i1 false}
!292 = !{!"fixp", i32 64, i32 9}
!293 = !DILocation(line: 68, column: 22, scope: !245)
!294 = !DILocation(line: 68, column: 26, scope: !245)
!295 = !DILocation(line: 68, column: 28, scope: !245)
!296 = !DILocation(line: 68, column: 27, scope: !245)
!297 = !DILocation(line: 68, column: 30, scope: !245)
!298 = !DILocation(line: 68, column: 29, scope: !245)
!299 = !DILocation(line: 68, column: 9, scope: !245)
!300 = !DILocation(line: 68, column: 13, scope: !245)
!301 = !DILocation(line: 68, column: 15, scope: !245)
!302 = !DILocation(line: 68, column: 14, scope: !245)
!303 = !DILocation(line: 68, column: 17, scope: !245)
!304 = !DILocation(line: 68, column: 16, scope: !245)
!305 = !DILocation(line: 68, column: 20, scope: !245)
!306 = !DILocation(line: 69, column: 7, scope: !245)
!307 = !DILocation(line: 60, column: 43, scope: !239)
!308 = !DILocation(line: 60, column: 22, scope: !239)
!309 = distinct !{!309, !241, !310, !311}
!310 = !DILocation(line: 69, column: 7, scope: !234)
!311 = !{!"llvm.loop.name", !"VITIS_LOOP_60_6"}
!312 = !DILocation(line: 70, column: 2, scope: !235)
!313 = !DILocation(line: 58, column: 41, scope: !229)
!314 = !DILocation(line: 58, column: 20, scope: !229)
!315 = distinct !{!315, !231, !316, !317}
!316 = !DILocation(line: 70, column: 2, scope: !226)
!317 = !{!"llvm.loop.name", !"VITIS_LOOP_58_5"}
!318 = !DILocation(line: 71, column: 1, scope: !16)
!319 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!320 = !{i32 0, i1 false, i32 0, i1 false}
!321 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
