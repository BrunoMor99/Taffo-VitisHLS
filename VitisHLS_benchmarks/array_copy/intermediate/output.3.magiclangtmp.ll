; ModuleID = '/home/bruno/Desktop/benchmarks/array_copy/intermediate/output.2.magiclangtmp.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.global_ctors = appending global [0 x { i32, void ()*, i8* }] zeroinitializer, !taffo.structinfo !0
@.str = private unnamed_addr constant [9 x i8] c"scalar()\00", section "llvm.metadata", !taffo.info !3
@.str.1 = private unnamed_addr constant [19 x i8] c"array_copy_taffo.c\00", section "llvm.metadata", !taffo.info !5
@.str.2 = private unnamed_addr constant [33 x i8] c"target('xs') scalar(range(0, 5))\00", section "llvm.metadata", !taffo.info !7
@.str.3 = private unnamed_addr constant [34 x i8] c"target('ys') scalar(range(0, 20))\00", section "llvm.metadata", !taffo.info !5

; Function Attrs: nounwind
define void @array_copy(float* "fpga.decayed.dim.hint"="16" %y, float %alpha) #0 !dbg !18 !fpga.function.pragma !23 !taffo.start !26 !taffo.funinfo !27 {
entry:
  %y.addr = alloca float*, align 8, !taffo.info !28
  %alpha.addr = alloca float, align 4
  %n = alloca i32, align 4, !taffo.info !30
  %i = alloca i32, align 4, !taffo.info !32
  %j = alloca i32, align 4
  %fn = alloca float, align 4, !taffo.info !34
  %saved_stack = alloca i8*, align 8
  %tmp_x = alloca float, align 4
  %ys = alloca [16 x float], align 4, !taffo.info !35, !taffo.target !37
  %five = alloca float, align 4, !taffo.info !38
  store float* %y, float** %y.addr, align 8
  call void @llvm.dbg.declare(metadata float** %y.addr, metadata !40, metadata !DIExpression()), !dbg !41
  store float %alpha, float* %alpha.addr, align 4
  call void @llvm.dbg.declare(metadata float* %alpha.addr, metadata !42, metadata !DIExpression()), !dbg !43
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %y, [0 x i8] zeroinitializer, i64 16, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !44
  %0 = bitcast i32* %n to i8*, !dbg !45
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !45
  call void @llvm.dbg.declare(metadata i32* %n, metadata !46, metadata !DIExpression()), !dbg !48
  store i32 16, i32* %n, align 4, !dbg !48
  %1 = bitcast i32* %i to i8*, !dbg !49
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !49
  call void @llvm.dbg.declare(metadata i32* %i, metadata !50, metadata !DIExpression()), !dbg !51
  %2 = bitcast i32* %j to i8*, !dbg !52
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !52
  call void @llvm.dbg.declare(metadata i32* %j, metadata !53, metadata !DIExpression()), !dbg !54
  %3 = bitcast float* %fn to i8*, !dbg !55, !taffo.info !34
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !55, !taffo.info !34
  call void @llvm.dbg.declare(metadata float* %fn, metadata !56, metadata !DIExpression()), !dbg !57
  %fn1 = bitcast float* %fn to i8*, !dbg !55, !taffo.info !34
  %4 = load float, float* %alpha.addr, align 4, !dbg !58
  store float %4, float* %fn, align 4, !dbg !59, !taffo.info !34
  %5 = load i32, i32* %n, align 4, !dbg !60, !taffo.info !30
  %6 = zext i32 %5 to i64, !dbg !61, !taffo.info !30
  %7 = call i8* @llvm.stacksave(), !dbg !61
  store i8* %7, i8** %saved_stack, align 8, !dbg !61
  %vla = alloca float, i64 %6, align 4, !dbg !61, !taffo.info !62, !taffo.target !64
  call void @llvm.dbg.declare(metadata float* %vla, metadata !65, metadata !DIExpression()), !dbg !69
  %vla2 = bitcast float* %vla to i8*, !dbg !61, !taffo.info !62, !taffo.target !64
  %8 = bitcast float* %tmp_x to i8*, !dbg !70
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4, !dbg !70
  call void @llvm.dbg.declare(metadata float* %tmp_x, metadata !71, metadata !DIExpression()), !dbg !72
  br label %VITIS_LOOP_35_1, !dbg !70

VITIS_LOOP_35_1:                                  ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !73
  br label %for.cond, !dbg !75

for.cond:                                         ; preds = %for.inc, %VITIS_LOOP_35_1
  %9 = load i32, i32* %i, align 4, !dbg !76, !taffo.info !32
  %cmp = icmp slt i32 %9, 16, !dbg !78, !taffo.info !79
  br i1 %cmp, label %for.body, label %for.end, !dbg !81

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4, !dbg !82, !taffo.info !32
  %conv = sitofp i32 %10 to float, !dbg !82, !taffo.info !1
  %11 = load float, float* %fn, align 4, !dbg !84, !taffo.info !34
  %div = fdiv float %conv, %11, !dbg !85, !taffo.info !34
  store float %div, float* %tmp_x, align 4, !dbg !86, !taffo.info !34
  %12 = load float, float* %tmp_x, align 4, !dbg !87
  %13 = load i32, i32* %i, align 4, !dbg !88, !taffo.info !32
  %idxprom = sext i32 %13 to i64, !dbg !89, !taffo.info !1
  %arrayidx = getelementptr inbounds float, float* %vla, i64 %idxprom, !dbg !89, !taffo.info !34, !taffo.target !64
  store float %12, float* %arrayidx, align 4, !dbg !90, !taffo.info !34, !taffo.target !64
  br label %for.inc, !dbg !91

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4, !dbg !92, !taffo.info !32
  %inc = add nsw i32 %14, 1, !dbg !92, !taffo.info !79
  store i32 %inc, i32* %i, align 4, !dbg !92
  br label %for.cond, !dbg !93, !llvm.loop !94

for.end:                                          ; preds = %for.cond
  call void @llvm.dbg.declare(metadata [16 x float]* %ys, metadata !97, metadata !DIExpression()), !dbg !101
  %ys3 = bitcast [16 x float]* %ys to i8*, !dbg !102, !taffo.info !35, !taffo.target !37
  call void @llvm.dbg.declare(metadata float* %five, metadata !103, metadata !DIExpression()), !dbg !104
  %five4 = bitcast float* %five to i8*, !dbg !105, !taffo.info !34
  store float 5.000000e+00, float* %five, align 4, !dbg !106, !taffo.info !34
  br label %VITIS_LOOP_49_2, !dbg !107

VITIS_LOOP_49_2:                                  ; preds = %for.end
  store i32 0, i32* %i, align 4, !dbg !108
  br label %for.cond5, !dbg !110

for.cond5:                                        ; preds = %for.inc14, %VITIS_LOOP_49_2
  %15 = load i32, i32* %i, align 4, !dbg !111, !taffo.info !32
  %cmp6 = icmp slt i32 %15, 16, !dbg !113, !taffo.info !79
  br i1 %cmp6, label %for.body7, label %for.end16, !dbg !114

for.body7:                                        ; preds = %for.cond5
  %16 = load i32, i32* %i, align 4, !dbg !115, !taffo.info !32
  %idxprom8 = sext i32 %16 to i64, !dbg !117, !taffo.info !118
  %arrayidx9 = getelementptr inbounds float, float* %vla, i64 %idxprom8, !dbg !117, !taffo.info !34, !taffo.target !64
  %17 = load float, float* %arrayidx9, align 4, !dbg !117, !taffo.info !120, !taffo.target !64
  %18 = load i32, i32* %i, align 4, !dbg !121, !taffo.info !32
  %idxprom10 = sext i32 %18 to i64, !dbg !122, !taffo.info !118
  %arrayidx11 = getelementptr inbounds float, float* %vla, i64 %idxprom10, !dbg !122, !taffo.info !34, !taffo.target !64
  %19 = load float, float* %arrayidx11, align 4, !dbg !122, !taffo.info !120, !taffo.target !64
  %mul = fmul float %17, %19, !dbg !123, !taffo.info !120, !taffo.target !64
  %20 = load i32, i32* %i, align 4, !dbg !124, !taffo.info !32
  %idxprom12 = sext i32 %20 to i64, !dbg !125, !taffo.info !118
  %arrayidx13 = getelementptr inbounds [16 x float], [16 x float]* %ys, i64 0, i64 %idxprom12, !dbg !125, !taffo.info !120, !taffo.target !37
  store float %mul, float* %arrayidx13, align 4, !dbg !126, !taffo.info !34, !taffo.target !37
  br label %for.inc14, !dbg !127

for.inc14:                                        ; preds = %for.body7
  %21 = load i32, i32* %i, align 4, !dbg !128, !taffo.info !32
  %inc15 = add nsw i32 %21, 1, !dbg !128, !taffo.info !129
  store i32 %inc15, i32* %i, align 4, !dbg !128
  br label %for.cond5, !dbg !131, !llvm.loop !132

for.end16:                                        ; preds = %for.cond5
  br label %VITIS_LOOP_54_3, !dbg !133

VITIS_LOOP_54_3:                                  ; preds = %for.end16
  store i32 0, i32* %i, align 4, !dbg !135
  br label %for.cond17, !dbg !137

for.cond17:                                       ; preds = %for.inc24, %VITIS_LOOP_54_3
  %22 = load i32, i32* %i, align 4, !dbg !138, !taffo.info !32
  %cmp18 = icmp slt i32 %22, 16, !dbg !140, !taffo.info !79
  br i1 %cmp18, label %for.body19, label %for.end26, !dbg !141

for.body19:                                       ; preds = %for.cond17
  %23 = load i32, i32* %i, align 4, !dbg !142, !taffo.info !32
  %idxprom20 = sext i32 %23 to i64, !dbg !144, !taffo.info !28
  %arrayidx21 = getelementptr inbounds [16 x float], [16 x float]* %ys, i64 0, i64 %idxprom20, !dbg !144, !taffo.info !120, !taffo.target !37
  %24 = load float, float* %arrayidx21, align 4, !dbg !144, !taffo.info !145, !taffo.target !37
  %25 = load float*, float** %y.addr, align 8, !dbg !146, !taffo.info !28
  %26 = load i32, i32* %i, align 4, !dbg !147, !taffo.info !32
  %idxprom22 = sext i32 %26 to i64, !dbg !146, !taffo.info !28
  %arrayidx23 = getelementptr inbounds float, float* %25, i64 %idxprom22, !dbg !146, !taffo.info !28
  store float %24, float* %arrayidx23, align 4, !dbg !148, !taffo.info !34, !taffo.target !37
  br label %for.inc24, !dbg !149

for.inc24:                                        ; preds = %for.body19
  %27 = load i32, i32* %i, align 4, !dbg !150, !taffo.info !32
  %inc25 = add nsw i32 %27, 1, !dbg !150, !taffo.info !151
  store i32 %inc25, i32* %i, align 4, !dbg !150
  br label %for.cond17, !dbg !153, !llvm.loop !154

for.end26:                                        ; preds = %for.cond17
  %28 = bitcast float* %tmp_x to i8*, !dbg !157
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #4, !dbg !157
  %29 = load i8*, i8** %saved_stack, align 8, !dbg !157
  call void @llvm.stackrestore(i8* %29), !dbg !157
  %30 = bitcast float* %fn to i8*, !dbg !157, !taffo.info !34
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %30) #4, !dbg !157, !taffo.info !34
  %31 = bitcast i32* %j to i8*, !dbg !157
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %31) #4, !dbg !157
  %32 = bitcast i32* %i to i8*, !dbg !157, !taffo.info !32
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %32) #4, !dbg !157
  %33 = bitcast i32* %n to i8*, !dbg !157, !taffo.info !30
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %33) #4, !dbg !157
  ret void, !dbg !157
}

; Function Attrs: nounwind readnone speculatable
declare !taffo.funinfo !158 void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: inaccessiblememonly nounwind
declare !taffo.funinfo !11 void @llvm.sideeffect() #2

; Function Attrs: argmemonly nounwind
declare !taffo.funinfo !159 void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare !taffo.funinfo !160 void @llvm.var.annotation(i8*, i8*, i8*, i32) #4

; Function Attrs: nounwind
declare !taffo.funinfo !11 i8* @llvm.stacksave() #4

; Function Attrs: argmemonly nounwind
declare !taffo.funinfo !159 void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare !taffo.funinfo !161 void @llvm.stackrestore(i8*) #4

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.top.func"="array_copy" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { inaccessiblememonly nounwind }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind }
attributes #5 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="512" "xlx.source"="user" }

!llvm.dbg.cu = !{!9}
!llvm.ident = !{!14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14, !14}
!llvm.module.flags = !{!15, !16, !17}

!0 = !{!1, !1, !1}
!1 = !{i1 false, !2, i1 false, i1 false}
!2 = !{double 0.000000e+00, double 0.000000e+00}
!3 = !{i1 false, !4, i1 false, i1 false}
!4 = !{double 0.000000e+00, double 1.150000e+02}
!5 = !{i1 false, !6, i1 false, i1 false}
!6 = !{double 0.000000e+00, double 1.210000e+02}
!7 = !{i1 false, !8, i1 false, i1 false}
!8 = !{double 0.000000e+00, double 1.200000e+02}
!9 = distinct !DICompileUnit(language: DW_LANG_C99, file: !10, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !12)
!10 = !DIFile(filename: "/home/bruno/Desktop/benchmarks/array_copy/proj_array_copy/solution1/.autopilot/db/array_copy_taffo.pp.0.c", directory: "/home/bruno/Desktop/benchmarks/array_copy")
!11 = !{}
!12 = !{!13}
!13 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!14 = !{!"clang version 7.0.0 "}
!15 = !{i32 2, !"Dwarf Version", i32 4}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{i32 1, !"wchar_size", i32 4}
!18 = distinct !DISubprogram(name: "array_copy", scope: !19, file: !19, line: 24, type: !20, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !11)
!19 = !DIFile(filename: "array_copy_taffo.c", directory: "/home/bruno/Desktop/benchmarks/array_copy")
!20 = !DISubroutineType(types: !21)
!21 = !{null, !22, !13}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!23 = !{!24}
!24 = !{!"fpga.top", !"user", !25}
!25 = !DILocation(line: 24, column: 16, scope: !18)
!26 = !{i1 true}
!27 = !{i32 1, !28, i32 0, i1 false}
!28 = !{i1 false, !29, i1 false, i1 false}
!29 = !{double 0.000000e+00, double 2.000000e+00}
!30 = !{i1 false, !31, i1 false, i1 false}
!31 = !{double 1.600000e+01, double 1.600000e+01}
!32 = !{i1 false, !33, i1 false, i1 false}
!33 = !{double 0.000000e+00, double 3.000000e+00}
!34 = !{i1 false, i1 false, i1 false, i1 true}
!35 = !{i1 false, !36, i1 false, i1 true}
!36 = !{double 0.000000e+00, double 2.000000e+01}
!37 = !{!"ys"}
!38 = !{i1 false, !39, i1 false, i1 true}
!39 = !{double 5.000000e+00, double 5.000000e+00}
!40 = !DILocalVariable(name: "y", arg: 1, scope: !18, file: !19, line: 24, type: !22)
!41 = !DILocation(line: 24, column: 68, scope: !18)
!42 = !DILocalVariable(name: "alpha", arg: 2, scope: !18, file: !19, line: 24, type: !13)
!43 = !DILocation(line: 24, column: 81, scope: !18)
!44 = !DILocation(line: 26, column: 9, scope: !18)
!45 = !DILocation(line: 27, column: 2, scope: !18)
!46 = !DILocalVariable(name: "n", scope: !18, file: !19, line: 27, type: !47)
!47 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!48 = !DILocation(line: 27, column: 6, scope: !18)
!49 = !DILocation(line: 28, column: 5, scope: !18)
!50 = !DILocalVariable(name: "i", scope: !18, file: !19, line: 28, type: !47)
!51 = !DILocation(line: 28, column: 9, scope: !18)
!52 = !DILocation(line: 29, column: 5, scope: !18)
!53 = !DILocalVariable(name: "j", scope: !18, file: !19, line: 29, type: !47)
!54 = !DILocation(line: 29, column: 9, scope: !18)
!55 = !DILocation(line: 30, column: 5, scope: !18)
!56 = !DILocalVariable(name: "fn", scope: !18, file: !19, line: 30, type: !13)
!57 = !DILocation(line: 30, column: 49, scope: !18)
!58 = !DILocation(line: 31, column: 10, scope: !18)
!59 = !DILocation(line: 31, column: 8, scope: !18)
!60 = !DILocation(line: 32, column: 13, scope: !18)
!61 = !DILocation(line: 32, column: 5, scope: !18)
!62 = !{i1 false, !63, i1 false, i1 true}
!63 = !{double 0.000000e+00, double 5.000000e+00}
!64 = !{!"xs"}
!65 = !DILocalVariable(name: "x", scope: !18, file: !19, line: 32, type: !66)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: -1)
!69 = !DILocation(line: 32, column: 11, scope: !18)
!70 = !DILocation(line: 33, column: 5, scope: !18)
!71 = !DILocalVariable(name: "tmp_x", scope: !18, file: !19, line: 33, type: !13)
!72 = !DILocation(line: 33, column: 11, scope: !18)
!73 = !DILocation(line: 35, column: 29, scope: !74)
!74 = distinct !DILexicalBlock(scope: !18, file: !19, line: 35, column: 22)
!75 = !DILocation(line: 35, column: 27, scope: !74)
!76 = !DILocation(line: 35, column: 34, scope: !77)
!77 = distinct !DILexicalBlock(scope: !74, file: !19, line: 35, column: 22)
!78 = !DILocation(line: 35, column: 36, scope: !77)
!79 = !{i1 false, !80, i1 false, i1 false}
!80 = !{double 1.000000e+00, double 1.000000e+00}
!81 = !DILocation(line: 35, column: 22, scope: !74)
!82 = !DILocation(line: 36, column: 15, scope: !83)
!83 = distinct !DILexicalBlock(scope: !77, file: !19, line: 35, column: 46)
!84 = !DILocation(line: 36, column: 19, scope: !83)
!85 = !DILocation(line: 36, column: 17, scope: !83)
!86 = !DILocation(line: 36, column: 12, scope: !83)
!87 = !DILocation(line: 37, column: 16, scope: !83)
!88 = !DILocation(line: 37, column: 11, scope: !83)
!89 = !DILocation(line: 37, column: 9, scope: !83)
!90 = !DILocation(line: 37, column: 14, scope: !83)
!91 = !DILocation(line: 38, column: 5, scope: !83)
!92 = !DILocation(line: 35, column: 43, scope: !77)
!93 = !DILocation(line: 35, column: 22, scope: !77)
!94 = distinct !{!94, !81, !95, !96}
!95 = !DILocation(line: 38, column: 5, scope: !74)
!96 = !{!"llvm.loop.name", !"VITIS_LOOP_35_1"}
!97 = !DILocalVariable(name: "ys", scope: !18, file: !19, line: 40, type: !98)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 512, elements: !99)
!99 = !{!100}
!100 = !DISubrange(count: 16)
!101 = !DILocation(line: 40, column: 11, scope: !18)
!102 = !DILocation(line: 40, column: 5, scope: !18)
!103 = !DILocalVariable(name: "five", scope: !18, file: !19, line: 41, type: !13)
!104 = !DILocation(line: 41, column: 49, scope: !18)
!105 = !DILocation(line: 41, column: 5, scope: !18)
!106 = !DILocation(line: 42, column: 10, scope: !18)
!107 = !DILocation(line: 42, column: 5, scope: !18)
!108 = !DILocation(line: 49, column: 29, scope: !109)
!109 = distinct !DILexicalBlock(scope: !18, file: !19, line: 49, column: 22)
!110 = !DILocation(line: 49, column: 27, scope: !109)
!111 = !DILocation(line: 49, column: 34, scope: !112)
!112 = distinct !DILexicalBlock(scope: !109, file: !19, line: 49, column: 22)
!113 = !DILocation(line: 49, column: 36, scope: !112)
!114 = !DILocation(line: 49, column: 22, scope: !109)
!115 = !DILocation(line: 51, column: 15, scope: !116)
!116 = distinct !DILexicalBlock(scope: !112, file: !19, line: 50, column: 5)
!117 = !DILocation(line: 51, column: 13, scope: !116)
!118 = !{i1 false, !119, i1 false, i1 false}
!119 = !{double 0.000000e+00, double 1.000000e+00}
!120 = !{i1 false, !119, i1 false, i1 true}
!121 = !DILocation(line: 51, column: 20, scope: !116)
!122 = !DILocation(line: 51, column: 18, scope: !116)
!123 = !DILocation(line: 51, column: 17, scope: !116)
!124 = !DILocation(line: 51, column: 8, scope: !116)
!125 = !DILocation(line: 51, column: 5, scope: !116)
!126 = !DILocation(line: 51, column: 11, scope: !116)
!127 = !DILocation(line: 52, column: 5, scope: !116)
!128 = !DILocation(line: 49, column: 43, scope: !112)
!129 = !{i1 false, !130, i1 false, i1 false}
!130 = !{double 1.000000e+00, double 2.000000e+00}
!131 = !DILocation(line: 49, column: 22, scope: !112)
!132 = distinct !{!132, !114, !133, !134}
!133 = !DILocation(line: 52, column: 5, scope: !109)
!134 = !{!"llvm.loop.name", !"VITIS_LOOP_49_2"}
!135 = !DILocation(line: 54, column: 29, scope: !136)
!136 = distinct !DILexicalBlock(scope: !18, file: !19, line: 54, column: 22)
!137 = !DILocation(line: 54, column: 27, scope: !136)
!138 = !DILocation(line: 54, column: 34, scope: !139)
!139 = distinct !DILexicalBlock(scope: !136, file: !19, line: 54, column: 22)
!140 = !DILocation(line: 54, column: 36, scope: !139)
!141 = !DILocation(line: 54, column: 22, scope: !136)
!142 = !DILocation(line: 56, column: 22, scope: !143)
!143 = distinct !DILexicalBlock(scope: !139, file: !19, line: 55, column: 5)
!144 = !DILocation(line: 56, column: 19, scope: !143)
!145 = !{i1 false, !29, i1 false, i1 true}
!146 = !DILocation(line: 56, column: 5, scope: !143)
!147 = !DILocation(line: 56, column: 7, scope: !143)
!148 = !DILocation(line: 56, column: 10, scope: !143)
!149 = !DILocation(line: 57, column: 5, scope: !143)
!150 = !DILocation(line: 54, column: 43, scope: !139)
!151 = !{i1 false, !152, i1 false, i1 false}
!152 = !{double 1.000000e+00, double 3.000000e+00}
!153 = !DILocation(line: 54, column: 22, scope: !139)
!154 = distinct !{!154, !141, !155, !156}
!155 = !DILocation(line: 57, column: 5, scope: !136)
!156 = !{!"llvm.loop.name", !"VITIS_LOOP_54_3"}
!157 = !DILocation(line: 58, column: 1, scope: !18)
!158 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!159 = !{i32 0, i1 false, i32 0, i1 false}
!160 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!161 = !{i32 0, i1 false}
