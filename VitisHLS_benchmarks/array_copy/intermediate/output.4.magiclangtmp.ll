; ModuleID = '/home/bruno/Desktop/benchmarks/array_copy/intermediate/output.3.magiclangtmp.ll'
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
  %ys = alloca [16 x float], align 4, !taffo.info !35, !taffo.target !38
  %five = alloca float, align 4, !taffo.info !39
  store float* %y, float** %y.addr, align 8
  call void @llvm.dbg.declare(metadata float** %y.addr, metadata !42, metadata !DIExpression()), !dbg !43
  store float %alpha, float* %alpha.addr, align 4
  call void @llvm.dbg.declare(metadata float* %alpha.addr, metadata !44, metadata !DIExpression()), !dbg !45
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %y, [0 x i8] zeroinitializer, i64 16, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !46
  %0 = bitcast i32* %n to i8*, !dbg !47
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !47
  call void @llvm.dbg.declare(metadata i32* %n, metadata !48, metadata !DIExpression()), !dbg !50
  store i32 16, i32* %n, align 4, !dbg !50
  %1 = bitcast i32* %i to i8*, !dbg !51
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !51
  call void @llvm.dbg.declare(metadata i32* %i, metadata !52, metadata !DIExpression()), !dbg !53
  %2 = bitcast i32* %j to i8*, !dbg !54
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !54
  call void @llvm.dbg.declare(metadata i32* %j, metadata !55, metadata !DIExpression()), !dbg !56
  %3 = bitcast float* %fn to i8*, !dbg !57, !taffo.info !34
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !57, !taffo.info !34
  call void @llvm.dbg.declare(metadata float* %fn, metadata !58, metadata !DIExpression()), !dbg !59
  %fn1 = bitcast float* %fn to i8*, !dbg !57, !taffo.info !34
  %4 = load float, float* %alpha.addr, align 4, !dbg !60
  store float %4, float* %fn, align 4, !dbg !61, !taffo.info !34
  %5 = load i32, i32* %n, align 4, !dbg !62, !taffo.info !30
  %6 = zext i32 %5 to i64, !dbg !63, !taffo.info !30
  %7 = call i8* @llvm.stacksave(), !dbg !63
  store i8* %7, i8** %saved_stack, align 8, !dbg !63
  %vla = alloca float, i64 %6, align 4, !dbg !63, !taffo.info !64, !taffo.target !66
  call void @llvm.dbg.declare(metadata float* %vla, metadata !67, metadata !DIExpression()), !dbg !71
  %vla2 = bitcast float* %vla to i8*, !dbg !63, !taffo.info !72, !taffo.target !66
  %8 = bitcast float* %tmp_x to i8*, !dbg !73
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4, !dbg !73
  call void @llvm.dbg.declare(metadata float* %tmp_x, metadata !74, metadata !DIExpression()), !dbg !75
  br label %VITIS_LOOP_35_1, !dbg !73

VITIS_LOOP_35_1:                                  ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !76
  br label %for.cond, !dbg !78

for.cond:                                         ; preds = %for.inc, %VITIS_LOOP_35_1
  %9 = load i32, i32* %i, align 4, !dbg !79, !taffo.info !32
  %cmp = icmp slt i32 %9, 16, !dbg !81, !taffo.info !82
  br i1 %cmp, label %for.body, label %for.end, !dbg !84

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4, !dbg !85, !taffo.info !32
  %conv = sitofp i32 %10 to float, !dbg !85, !taffo.info !1
  %11 = load float, float* %fn, align 4, !dbg !87, !taffo.info !34
  %div = fdiv float %conv, %11, !dbg !88, !taffo.info !34
  store float %div, float* %tmp_x, align 4, !dbg !89, !taffo.info !34
  %12 = load float, float* %tmp_x, align 4, !dbg !90
  %13 = load i32, i32* %i, align 4, !dbg !91, !taffo.info !32
  %idxprom = sext i32 %13 to i64, !dbg !92, !taffo.info !1
  %arrayidx = getelementptr inbounds float, float* %vla, i64 %idxprom, !dbg !92, !taffo.info !72, !taffo.target !66
  store float %12, float* %arrayidx, align 4, !dbg !93, !taffo.info !34, !taffo.target !66
  br label %for.inc, !dbg !94

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4, !dbg !95, !taffo.info !32
  %inc = add nsw i32 %14, 1, !dbg !95, !taffo.info !82
  store i32 %inc, i32* %i, align 4, !dbg !95
  br label %for.cond, !dbg !96, !llvm.loop !97

for.end:                                          ; preds = %for.cond
  call void @llvm.dbg.declare(metadata [16 x float]* %ys, metadata !100, metadata !DIExpression()), !dbg !104
  %ys3 = bitcast [16 x float]* %ys to i8*, !dbg !105, !taffo.info !106, !taffo.target !38
  call void @llvm.dbg.declare(metadata float* %five, metadata !107, metadata !DIExpression()), !dbg !108
  %five4 = bitcast float* %five to i8*, !dbg !109, !taffo.info !72
  store float 5.000000e+00, float* %five, align 4, !dbg !110, !taffo.info !34
  br label %VITIS_LOOP_49_2, !dbg !111

VITIS_LOOP_49_2:                                  ; preds = %for.end
  store i32 0, i32* %i, align 4, !dbg !112
  br label %for.cond5, !dbg !114

for.cond5:                                        ; preds = %for.inc14, %VITIS_LOOP_49_2
  %15 = load i32, i32* %i, align 4, !dbg !115, !taffo.info !32
  %cmp6 = icmp slt i32 %15, 16, !dbg !117, !taffo.info !82
  br i1 %cmp6, label %for.body7, label %for.end16, !dbg !118

for.body7:                                        ; preds = %for.cond5
  %16 = load i32, i32* %i, align 4, !dbg !119, !taffo.info !32
  %idxprom8 = sext i32 %16 to i64, !dbg !121, !taffo.info !122
  %arrayidx9 = getelementptr inbounds float, float* %vla, i64 %idxprom8, !dbg !121, !taffo.info !72, !taffo.target !66
  %17 = load float, float* %arrayidx9, align 4, !dbg !121, !taffo.info !124, !taffo.target !66
  %18 = load i32, i32* %i, align 4, !dbg !126, !taffo.info !32
  %idxprom10 = sext i32 %18 to i64, !dbg !127, !taffo.info !122
  %arrayidx11 = getelementptr inbounds float, float* %vla, i64 %idxprom10, !dbg !127, !taffo.info !72, !taffo.target !66
  %19 = load float, float* %arrayidx11, align 4, !dbg !127, !taffo.info !124, !taffo.target !66
  %mul = fmul float %17, %19, !dbg !128, !taffo.info !124, !taffo.target !66
  %20 = load i32, i32* %i, align 4, !dbg !129, !taffo.info !32
  %idxprom12 = sext i32 %20 to i64, !dbg !130, !taffo.info !122
  %arrayidx13 = getelementptr inbounds [16 x float], [16 x float]* %ys, i64 0, i64 %idxprom12, !dbg !130, !taffo.info !124, !taffo.target !38
  store float %mul, float* %arrayidx13, align 4, !dbg !131, !taffo.info !34, !taffo.target !38
  br label %for.inc14, !dbg !132

for.inc14:                                        ; preds = %for.body7
  %21 = load i32, i32* %i, align 4, !dbg !133, !taffo.info !32
  %inc15 = add nsw i32 %21, 1, !dbg !133, !taffo.info !134
  store i32 %inc15, i32* %i, align 4, !dbg !133
  br label %for.cond5, !dbg !136, !llvm.loop !137

for.end16:                                        ; preds = %for.cond5
  br label %VITIS_LOOP_54_3, !dbg !138

VITIS_LOOP_54_3:                                  ; preds = %for.end16
  store i32 0, i32* %i, align 4, !dbg !140
  br label %for.cond17, !dbg !142

for.cond17:                                       ; preds = %for.inc24, %VITIS_LOOP_54_3
  %22 = load i32, i32* %i, align 4, !dbg !143, !taffo.info !32
  %cmp18 = icmp slt i32 %22, 16, !dbg !145, !taffo.info !82
  br i1 %cmp18, label %for.body19, label %for.end26, !dbg !146

for.body19:                                       ; preds = %for.cond17
  %23 = load i32, i32* %i, align 4, !dbg !147, !taffo.info !32
  %idxprom20 = sext i32 %23 to i64, !dbg !149, !taffo.info !28
  %arrayidx21 = getelementptr inbounds [16 x float], [16 x float]* %ys, i64 0, i64 %idxprom20, !dbg !149, !taffo.info !124, !taffo.target !38
  %24 = load float, float* %arrayidx21, align 4, !dbg !149, !taffo.info !150, !taffo.target !38
  %25 = load float*, float** %y.addr, align 8, !dbg !152, !taffo.info !28
  %26 = load i32, i32* %i, align 4, !dbg !153, !taffo.info !32
  %idxprom22 = sext i32 %26 to i64, !dbg !152, !taffo.info !28
  %arrayidx23 = getelementptr inbounds float, float* %25, i64 %idxprom22, !dbg !152, !taffo.info !28
  store float %24, float* %arrayidx23, align 4, !dbg !154, !taffo.info !34, !taffo.target !38
  br label %for.inc24, !dbg !155

for.inc24:                                        ; preds = %for.body19
  %27 = load i32, i32* %i, align 4, !dbg !156, !taffo.info !32
  %inc25 = add nsw i32 %27, 1, !dbg !156, !taffo.info !157
  store i32 %inc25, i32* %i, align 4, !dbg !156
  br label %for.cond17, !dbg !159, !llvm.loop !160

for.end26:                                        ; preds = %for.cond17
  %28 = bitcast float* %tmp_x to i8*, !dbg !163
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #4, !dbg !163
  %29 = load i8*, i8** %saved_stack, align 8, !dbg !163
  call void @llvm.stackrestore(i8* %29), !dbg !163
  %30 = bitcast float* %fn to i8*, !dbg !163, !taffo.info !34
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %30) #4, !dbg !163, !taffo.info !34
  %31 = bitcast i32* %j to i8*, !dbg !163
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %31) #4, !dbg !163
  %32 = bitcast i32* %i to i8*, !dbg !163, !taffo.info !32
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %32) #4, !dbg !163
  %33 = bitcast i32* %n to i8*, !dbg !163, !taffo.info !30
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %33) #4, !dbg !163
  ret void, !dbg !163
}

; Function Attrs: nounwind readnone speculatable
declare !taffo.funinfo !164 void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: inaccessiblememonly nounwind
declare !taffo.funinfo !11 void @llvm.sideeffect() #2

; Function Attrs: argmemonly nounwind
declare !taffo.funinfo !165 void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare !taffo.funinfo !166 void @llvm.var.annotation(i8*, i8*, i8*, i32) #4

; Function Attrs: nounwind
declare !taffo.funinfo !11 i8* @llvm.stacksave() #4

; Function Attrs: argmemonly nounwind
declare !taffo.funinfo !165 void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare !taffo.funinfo !167 void @llvm.stackrestore(i8*) #4

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
!35 = !{!36, !37, i1 false, i1 true}
!36 = !{!"fixp", i32 32, i32 27}
!37 = !{double 0.000000e+00, double 2.000000e+01}
!38 = !{!"ys"}
!39 = !{!40, !41, i1 false, i1 true}
!40 = !{!"fixp", i32 32, i32 29}
!41 = !{double 5.000000e+00, double 5.000000e+00}
!42 = !DILocalVariable(name: "y", arg: 1, scope: !18, file: !19, line: 24, type: !22)
!43 = !DILocation(line: 24, column: 68, scope: !18)
!44 = !DILocalVariable(name: "alpha", arg: 2, scope: !18, file: !19, line: 24, type: !13)
!45 = !DILocation(line: 24, column: 81, scope: !18)
!46 = !DILocation(line: 26, column: 9, scope: !18)
!47 = !DILocation(line: 27, column: 2, scope: !18)
!48 = !DILocalVariable(name: "n", scope: !18, file: !19, line: 27, type: !49)
!49 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!50 = !DILocation(line: 27, column: 6, scope: !18)
!51 = !DILocation(line: 28, column: 5, scope: !18)
!52 = !DILocalVariable(name: "i", scope: !18, file: !19, line: 28, type: !49)
!53 = !DILocation(line: 28, column: 9, scope: !18)
!54 = !DILocation(line: 29, column: 5, scope: !18)
!55 = !DILocalVariable(name: "j", scope: !18, file: !19, line: 29, type: !49)
!56 = !DILocation(line: 29, column: 9, scope: !18)
!57 = !DILocation(line: 30, column: 5, scope: !18)
!58 = !DILocalVariable(name: "fn", scope: !18, file: !19, line: 30, type: !13)
!59 = !DILocation(line: 30, column: 49, scope: !18)
!60 = !DILocation(line: 31, column: 10, scope: !18)
!61 = !DILocation(line: 31, column: 8, scope: !18)
!62 = !DILocation(line: 32, column: 13, scope: !18)
!63 = !DILocation(line: 32, column: 5, scope: !18)
!64 = !{!40, !65, i1 false, i1 true}
!65 = !{double 0.000000e+00, double 5.000000e+00}
!66 = !{!"xs"}
!67 = !DILocalVariable(name: "x", scope: !18, file: !19, line: 32, type: !68)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, elements: !69)
!69 = !{!70}
!70 = !DISubrange(count: -1)
!71 = !DILocation(line: 32, column: 11, scope: !18)
!72 = !{!40, i1 false, i1 false, i1 true}
!73 = !DILocation(line: 33, column: 5, scope: !18)
!74 = !DILocalVariable(name: "tmp_x", scope: !18, file: !19, line: 33, type: !13)
!75 = !DILocation(line: 33, column: 11, scope: !18)
!76 = !DILocation(line: 35, column: 29, scope: !77)
!77 = distinct !DILexicalBlock(scope: !18, file: !19, line: 35, column: 22)
!78 = !DILocation(line: 35, column: 27, scope: !77)
!79 = !DILocation(line: 35, column: 34, scope: !80)
!80 = distinct !DILexicalBlock(scope: !77, file: !19, line: 35, column: 22)
!81 = !DILocation(line: 35, column: 36, scope: !80)
!82 = !{i1 false, !83, i1 false, i1 false}
!83 = !{double 1.000000e+00, double 1.000000e+00}
!84 = !DILocation(line: 35, column: 22, scope: !77)
!85 = !DILocation(line: 36, column: 15, scope: !86)
!86 = distinct !DILexicalBlock(scope: !80, file: !19, line: 35, column: 46)
!87 = !DILocation(line: 36, column: 19, scope: !86)
!88 = !DILocation(line: 36, column: 17, scope: !86)
!89 = !DILocation(line: 36, column: 12, scope: !86)
!90 = !DILocation(line: 37, column: 16, scope: !86)
!91 = !DILocation(line: 37, column: 11, scope: !86)
!92 = !DILocation(line: 37, column: 9, scope: !86)
!93 = !DILocation(line: 37, column: 14, scope: !86)
!94 = !DILocation(line: 38, column: 5, scope: !86)
!95 = !DILocation(line: 35, column: 43, scope: !80)
!96 = !DILocation(line: 35, column: 22, scope: !80)
!97 = distinct !{!97, !84, !98, !99}
!98 = !DILocation(line: 38, column: 5, scope: !77)
!99 = !{!"llvm.loop.name", !"VITIS_LOOP_35_1"}
!100 = !DILocalVariable(name: "ys", scope: !18, file: !19, line: 40, type: !101)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 512, elements: !102)
!102 = !{!103}
!103 = !DISubrange(count: 16)
!104 = !DILocation(line: 40, column: 11, scope: !18)
!105 = !DILocation(line: 40, column: 5, scope: !18)
!106 = !{!36, i1 false, i1 false, i1 true}
!107 = !DILocalVariable(name: "five", scope: !18, file: !19, line: 41, type: !13)
!108 = !DILocation(line: 41, column: 49, scope: !18)
!109 = !DILocation(line: 41, column: 5, scope: !18)
!110 = !DILocation(line: 42, column: 10, scope: !18)
!111 = !DILocation(line: 42, column: 5, scope: !18)
!112 = !DILocation(line: 49, column: 29, scope: !113)
!113 = distinct !DILexicalBlock(scope: !18, file: !19, line: 49, column: 22)
!114 = !DILocation(line: 49, column: 27, scope: !113)
!115 = !DILocation(line: 49, column: 34, scope: !116)
!116 = distinct !DILexicalBlock(scope: !113, file: !19, line: 49, column: 22)
!117 = !DILocation(line: 49, column: 36, scope: !116)
!118 = !DILocation(line: 49, column: 22, scope: !113)
!119 = !DILocation(line: 51, column: 15, scope: !120)
!120 = distinct !DILexicalBlock(scope: !116, file: !19, line: 50, column: 5)
!121 = !DILocation(line: 51, column: 13, scope: !120)
!122 = !{i1 false, !123, i1 false, i1 false}
!123 = !{double 0.000000e+00, double 1.000000e+00}
!124 = !{!125, !123, i1 false, i1 true}
!125 = !{!"fixp", i32 32, i32 31}
!126 = !DILocation(line: 51, column: 20, scope: !120)
!127 = !DILocation(line: 51, column: 18, scope: !120)
!128 = !DILocation(line: 51, column: 17, scope: !120)
!129 = !DILocation(line: 51, column: 8, scope: !120)
!130 = !DILocation(line: 51, column: 5, scope: !120)
!131 = !DILocation(line: 51, column: 11, scope: !120)
!132 = !DILocation(line: 52, column: 5, scope: !120)
!133 = !DILocation(line: 49, column: 43, scope: !116)
!134 = !{i1 false, !135, i1 false, i1 false}
!135 = !{double 1.000000e+00, double 2.000000e+00}
!136 = !DILocation(line: 49, column: 22, scope: !116)
!137 = distinct !{!137, !118, !138, !139}
!138 = !DILocation(line: 52, column: 5, scope: !113)
!139 = !{!"llvm.loop.name", !"VITIS_LOOP_49_2"}
!140 = !DILocation(line: 54, column: 29, scope: !141)
!141 = distinct !DILexicalBlock(scope: !18, file: !19, line: 54, column: 22)
!142 = !DILocation(line: 54, column: 27, scope: !141)
!143 = !DILocation(line: 54, column: 34, scope: !144)
!144 = distinct !DILexicalBlock(scope: !141, file: !19, line: 54, column: 22)
!145 = !DILocation(line: 54, column: 36, scope: !144)
!146 = !DILocation(line: 54, column: 22, scope: !141)
!147 = !DILocation(line: 56, column: 22, scope: !148)
!148 = distinct !DILexicalBlock(scope: !144, file: !19, line: 55, column: 5)
!149 = !DILocation(line: 56, column: 19, scope: !148)
!150 = !{!151, !29, i1 false, i1 true}
!151 = !{!"fixp", i32 32, i32 30}
!152 = !DILocation(line: 56, column: 5, scope: !148)
!153 = !DILocation(line: 56, column: 7, scope: !148)
!154 = !DILocation(line: 56, column: 10, scope: !148)
!155 = !DILocation(line: 57, column: 5, scope: !148)
!156 = !DILocation(line: 54, column: 43, scope: !144)
!157 = !{i1 false, !158, i1 false, i1 false}
!158 = !{double 1.000000e+00, double 3.000000e+00}
!159 = !DILocation(line: 54, column: 22, scope: !144)
!160 = distinct !{!160, !146, !161, !162}
!161 = !DILocation(line: 57, column: 5, scope: !141)
!162 = !{!"llvm.loop.name", !"VITIS_LOOP_54_3"}
!163 = !DILocation(line: 58, column: 1, scope: !18)
!164 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!165 = !{i32 0, i1 false, i32 0, i1 false}
!166 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!167 = !{i32 0, i1 false}
