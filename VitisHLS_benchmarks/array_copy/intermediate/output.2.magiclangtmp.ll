; ModuleID = '/home/bruno/Desktop/benchmarks/array_copy/intermediate/output.1.magiclangtmp.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.global_ctors = appending global [0 x { i32, void ()*, i8* }] zeroinitializer
@.str = private unnamed_addr constant [9 x i8] c"scalar()\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [19 x i8] c"array_copy_taffo.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [33 x i8] c"target('xs') scalar(range(0, 5))\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [34 x i8] c"target('ys') scalar(range(0, 20))\00", section "llvm.metadata"

; Function Attrs: nounwind
define void @array_copy(float* "fpga.decayed.dim.hint"="16" %y, float %alpha) #0 !dbg !9 !fpga.function.pragma !14 !taffo.start !17 !taffo.funinfo !18 {
entry:
  %y.addr = alloca float*, align 8
  %alpha.addr = alloca float, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %fn = alloca float, align 4, !taffo.info !19
  %saved_stack = alloca i8*, align 8
  %tmp_x = alloca float, align 4
  %ys = alloca [16 x float], align 4, !taffo.info !20, !taffo.target !22
  %five = alloca float, align 4, !taffo.info !19
  store float* %y, float** %y.addr, align 8
  call void @llvm.dbg.declare(metadata float** %y.addr, metadata !23, metadata !DIExpression()), !dbg !24
  store float %alpha, float* %alpha.addr, align 4
  call void @llvm.dbg.declare(metadata float* %alpha.addr, metadata !25, metadata !DIExpression()), !dbg !26
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %y, [0 x i8] zeroinitializer, i64 16, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !27
  %0 = bitcast i32* %n to i8*, !dbg !28
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !28
  call void @llvm.dbg.declare(metadata i32* %n, metadata !29, metadata !DIExpression()), !dbg !31
  store i32 16, i32* %n, align 4, !dbg !31
  %1 = bitcast i32* %i to i8*, !dbg !32
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !32
  call void @llvm.dbg.declare(metadata i32* %i, metadata !33, metadata !DIExpression()), !dbg !34
  %2 = bitcast i32* %j to i8*, !dbg !35
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !35
  call void @llvm.dbg.declare(metadata i32* %j, metadata !36, metadata !DIExpression()), !dbg !37
  %3 = bitcast float* %fn to i8*, !dbg !38, !taffo.info !19
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !38, !taffo.info !19
  call void @llvm.dbg.declare(metadata float* %fn, metadata !39, metadata !DIExpression()), !dbg !40
  %fn1 = bitcast float* %fn to i8*, !dbg !38, !taffo.info !19
  %4 = load float, float* %alpha.addr, align 4, !dbg !41
  store float %4, float* %fn, align 4, !dbg !42, !taffo.info !19
  %5 = load i32, i32* %n, align 4, !dbg !43
  %6 = zext i32 %5 to i64, !dbg !44
  %7 = call i8* @llvm.stacksave(), !dbg !44
  store i8* %7, i8** %saved_stack, align 8, !dbg !44
  %vla = alloca float, i64 %6, align 4, !dbg !44, !taffo.info !45, !taffo.target !47
  call void @llvm.dbg.declare(metadata float* %vla, metadata !48, metadata !DIExpression()), !dbg !52
  %vla2 = bitcast float* %vla to i8*, !dbg !44, !taffo.info !19, !taffo.target !47
  %8 = bitcast float* %tmp_x to i8*, !dbg !53
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4, !dbg !53
  call void @llvm.dbg.declare(metadata float* %tmp_x, metadata !54, metadata !DIExpression()), !dbg !55
  br label %VITIS_LOOP_35_1, !dbg !53

VITIS_LOOP_35_1:                                  ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !56
  br label %for.cond, !dbg !58

for.cond:                                         ; preds = %for.inc, %VITIS_LOOP_35_1
  %9 = load i32, i32* %i, align 4, !dbg !59
  %cmp = icmp slt i32 %9, 16, !dbg !61
  br i1 %cmp, label %for.body, label %for.end, !dbg !62

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4, !dbg !63
  %conv = sitofp i32 %10 to float, !dbg !63
  %11 = load float, float* %fn, align 4, !dbg !65, !taffo.info !19
  %div = fdiv float %conv, %11, !dbg !66, !taffo.info !19
  store float %div, float* %tmp_x, align 4, !dbg !67, !taffo.info !19
  %12 = load float, float* %tmp_x, align 4, !dbg !68
  %13 = load i32, i32* %i, align 4, !dbg !69
  %idxprom = sext i32 %13 to i64, !dbg !70
  %arrayidx = getelementptr inbounds float, float* %vla, i64 %idxprom, !dbg !70, !taffo.info !19, !taffo.target !47
  store float %12, float* %arrayidx, align 4, !dbg !71, !taffo.info !19, !taffo.target !47
  br label %for.inc, !dbg !72

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4, !dbg !73
  %inc = add nsw i32 %14, 1, !dbg !73
  store i32 %inc, i32* %i, align 4, !dbg !73
  br label %for.cond, !dbg !74, !llvm.loop !75

for.end:                                          ; preds = %for.cond
  call void @llvm.dbg.declare(metadata [16 x float]* %ys, metadata !78, metadata !DIExpression()), !dbg !82
  %ys3 = bitcast [16 x float]* %ys to i8*, !dbg !83, !taffo.info !19, !taffo.target !22
  call void @llvm.dbg.declare(metadata float* %five, metadata !84, metadata !DIExpression()), !dbg !85
  %five4 = bitcast float* %five to i8*, !dbg !86, !taffo.info !19
  store float 5.000000e+00, float* %five, align 4, !dbg !87, !taffo.info !19
  br label %VITIS_LOOP_49_2, !dbg !88

VITIS_LOOP_49_2:                                  ; preds = %for.end
  store i32 0, i32* %i, align 4, !dbg !89
  br label %for.cond5, !dbg !91

for.cond5:                                        ; preds = %for.inc14, %VITIS_LOOP_49_2
  %15 = load i32, i32* %i, align 4, !dbg !92
  %cmp6 = icmp slt i32 %15, 16, !dbg !94
  br i1 %cmp6, label %for.body7, label %for.end16, !dbg !95

for.body7:                                        ; preds = %for.cond5
  %16 = load i32, i32* %i, align 4, !dbg !96
  %idxprom8 = sext i32 %16 to i64, !dbg !98
  %arrayidx9 = getelementptr inbounds float, float* %vla, i64 %idxprom8, !dbg !98, !taffo.info !19, !taffo.target !47
  %17 = load float, float* %arrayidx9, align 4, !dbg !98, !taffo.info !19, !taffo.target !47
  %18 = load i32, i32* %i, align 4, !dbg !99
  %idxprom10 = sext i32 %18 to i64, !dbg !100
  %arrayidx11 = getelementptr inbounds float, float* %vla, i64 %idxprom10, !dbg !100, !taffo.info !19, !taffo.target !47
  %19 = load float, float* %arrayidx11, align 4, !dbg !100, !taffo.info !19, !taffo.target !47
  %mul = fmul float %17, %19, !dbg !101, !taffo.info !19, !taffo.target !47
  %20 = load i32, i32* %i, align 4, !dbg !102
  %idxprom12 = sext i32 %20 to i64, !dbg !103
  %arrayidx13 = getelementptr inbounds [16 x float], [16 x float]* %ys, i64 0, i64 %idxprom12, !dbg !103, !taffo.info !19, !taffo.target !22
  store float %mul, float* %arrayidx13, align 4, !dbg !104, !taffo.info !19, !taffo.target !22
  br label %for.inc14, !dbg !105

for.inc14:                                        ; preds = %for.body7
  %21 = load i32, i32* %i, align 4, !dbg !106
  %inc15 = add nsw i32 %21, 1, !dbg !106
  store i32 %inc15, i32* %i, align 4, !dbg !106
  br label %for.cond5, !dbg !107, !llvm.loop !108

for.end16:                                        ; preds = %for.cond5
  br label %VITIS_LOOP_54_3, !dbg !109

VITIS_LOOP_54_3:                                  ; preds = %for.end16
  store i32 0, i32* %i, align 4, !dbg !111
  br label %for.cond17, !dbg !113

for.cond17:                                       ; preds = %for.inc24, %VITIS_LOOP_54_3
  %22 = load i32, i32* %i, align 4, !dbg !114
  %cmp18 = icmp slt i32 %22, 16, !dbg !116
  br i1 %cmp18, label %for.body19, label %for.end26, !dbg !117

for.body19:                                       ; preds = %for.cond17
  %23 = load i32, i32* %i, align 4, !dbg !118
  %idxprom20 = sext i32 %23 to i64, !dbg !120
  %arrayidx21 = getelementptr inbounds [16 x float], [16 x float]* %ys, i64 0, i64 %idxprom20, !dbg !120, !taffo.info !19, !taffo.target !22
  %24 = load float, float* %arrayidx21, align 4, !dbg !120, !taffo.info !19, !taffo.target !22
  %25 = load float*, float** %y.addr, align 8, !dbg !121
  %26 = load i32, i32* %i, align 4, !dbg !122
  %idxprom22 = sext i32 %26 to i64, !dbg !121
  %arrayidx23 = getelementptr inbounds float, float* %25, i64 %idxprom22, !dbg !121
  store float %24, float* %arrayidx23, align 4, !dbg !123, !taffo.info !19, !taffo.target !22
  br label %for.inc24, !dbg !124

for.inc24:                                        ; preds = %for.body19
  %27 = load i32, i32* %i, align 4, !dbg !125
  %inc25 = add nsw i32 %27, 1, !dbg !125
  store i32 %inc25, i32* %i, align 4, !dbg !125
  br label %for.cond17, !dbg !126, !llvm.loop !127

for.end26:                                        ; preds = %for.cond17
  %28 = bitcast float* %tmp_x to i8*, !dbg !130
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #4, !dbg !130
  %29 = load i8*, i8** %saved_stack, align 8, !dbg !130
  call void @llvm.stackrestore(i8* %29), !dbg !130
  %30 = bitcast float* %fn to i8*, !dbg !130, !taffo.info !19
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %30) #4, !dbg !130, !taffo.info !19
  %31 = bitcast i32* %j to i8*, !dbg !130
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %31) #4, !dbg !130
  %32 = bitcast i32* %i to i8*, !dbg !130
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %32) #4, !dbg !130
  %33 = bitcast i32* %n to i8*, !dbg !130
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %33) #4, !dbg !130
  ret void, !dbg !130
}

; Function Attrs: nounwind readnone speculatable
declare !taffo.funinfo !131 void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: inaccessiblememonly nounwind
declare !taffo.funinfo !2 void @llvm.sideeffect() #2

; Function Attrs: argmemonly nounwind
declare !taffo.funinfo !18 void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare !taffo.funinfo !132 void @llvm.var.annotation(i8*, i8*, i8*, i32) #4

; Function Attrs: nounwind
declare !taffo.funinfo !2 i8* @llvm.stacksave() #4

; Function Attrs: argmemonly nounwind
declare !taffo.funinfo !18 void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare !taffo.funinfo !133 void @llvm.stackrestore(i8*) #4

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.top.func"="array_copy" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { inaccessiblememonly nounwind }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind }
attributes #5 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="512" "xlx.source"="user" }

!llvm.dbg.cu = !{!0}
!llvm.ident = !{!5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5}
!llvm.module.flags = !{!6, !7, !8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/home/bruno/Desktop/benchmarks/array_copy/proj_array_copy/solution1/.autopilot/db/array_copy_taffo.pp.0.c", directory: "/home/bruno/Desktop/benchmarks/array_copy")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!5 = !{!"clang version 7.0.0 "}
!6 = !{i32 2, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = distinct !DISubprogram(name: "array_copy", scope: !10, file: !10, line: 24, type: !11, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DIFile(filename: "array_copy_taffo.c", directory: "/home/bruno/Desktop/benchmarks/array_copy")
!11 = !DISubroutineType(types: !12)
!12 = !{null, !13, !4}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!14 = !{!15}
!15 = !{!"fpga.top", !"user", !16}
!16 = !DILocation(line: 24, column: 16, scope: !9)
!17 = !{i1 true}
!18 = !{i32 0, i1 false, i32 0, i1 false}
!19 = !{i1 false, i1 false, i1 false, i1 true}
!20 = !{i1 false, !21, i1 false, i1 true}
!21 = !{double 0.000000e+00, double 2.000000e+01}
!22 = !{!"ys"}
!23 = !DILocalVariable(name: "y", arg: 1, scope: !9, file: !10, line: 24, type: !13)
!24 = !DILocation(line: 24, column: 68, scope: !9)
!25 = !DILocalVariable(name: "alpha", arg: 2, scope: !9, file: !10, line: 24, type: !4)
!26 = !DILocation(line: 24, column: 81, scope: !9)
!27 = !DILocation(line: 26, column: 9, scope: !9)
!28 = !DILocation(line: 27, column: 2, scope: !9)
!29 = !DILocalVariable(name: "n", scope: !9, file: !10, line: 27, type: !30)
!30 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!31 = !DILocation(line: 27, column: 6, scope: !9)
!32 = !DILocation(line: 28, column: 5, scope: !9)
!33 = !DILocalVariable(name: "i", scope: !9, file: !10, line: 28, type: !30)
!34 = !DILocation(line: 28, column: 9, scope: !9)
!35 = !DILocation(line: 29, column: 5, scope: !9)
!36 = !DILocalVariable(name: "j", scope: !9, file: !10, line: 29, type: !30)
!37 = !DILocation(line: 29, column: 9, scope: !9)
!38 = !DILocation(line: 30, column: 5, scope: !9)
!39 = !DILocalVariable(name: "fn", scope: !9, file: !10, line: 30, type: !4)
!40 = !DILocation(line: 30, column: 49, scope: !9)
!41 = !DILocation(line: 31, column: 10, scope: !9)
!42 = !DILocation(line: 31, column: 8, scope: !9)
!43 = !DILocation(line: 32, column: 13, scope: !9)
!44 = !DILocation(line: 32, column: 5, scope: !9)
!45 = !{i1 false, !46, i1 false, i1 true}
!46 = !{double 0.000000e+00, double 5.000000e+00}
!47 = !{!"xs"}
!48 = !DILocalVariable(name: "x", scope: !9, file: !10, line: 32, type: !49)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: -1)
!52 = !DILocation(line: 32, column: 11, scope: !9)
!53 = !DILocation(line: 33, column: 5, scope: !9)
!54 = !DILocalVariable(name: "tmp_x", scope: !9, file: !10, line: 33, type: !4)
!55 = !DILocation(line: 33, column: 11, scope: !9)
!56 = !DILocation(line: 35, column: 29, scope: !57)
!57 = distinct !DILexicalBlock(scope: !9, file: !10, line: 35, column: 22)
!58 = !DILocation(line: 35, column: 27, scope: !57)
!59 = !DILocation(line: 35, column: 34, scope: !60)
!60 = distinct !DILexicalBlock(scope: !57, file: !10, line: 35, column: 22)
!61 = !DILocation(line: 35, column: 36, scope: !60)
!62 = !DILocation(line: 35, column: 22, scope: !57)
!63 = !DILocation(line: 36, column: 15, scope: !64)
!64 = distinct !DILexicalBlock(scope: !60, file: !10, line: 35, column: 46)
!65 = !DILocation(line: 36, column: 19, scope: !64)
!66 = !DILocation(line: 36, column: 17, scope: !64)
!67 = !DILocation(line: 36, column: 12, scope: !64)
!68 = !DILocation(line: 37, column: 16, scope: !64)
!69 = !DILocation(line: 37, column: 11, scope: !64)
!70 = !DILocation(line: 37, column: 9, scope: !64)
!71 = !DILocation(line: 37, column: 14, scope: !64)
!72 = !DILocation(line: 38, column: 5, scope: !64)
!73 = !DILocation(line: 35, column: 43, scope: !60)
!74 = !DILocation(line: 35, column: 22, scope: !60)
!75 = distinct !{!75, !62, !76, !77}
!76 = !DILocation(line: 38, column: 5, scope: !57)
!77 = !{!"llvm.loop.name", !"VITIS_LOOP_35_1"}
!78 = !DILocalVariable(name: "ys", scope: !9, file: !10, line: 40, type: !79)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 16)
!82 = !DILocation(line: 40, column: 11, scope: !9)
!83 = !DILocation(line: 40, column: 5, scope: !9)
!84 = !DILocalVariable(name: "five", scope: !9, file: !10, line: 41, type: !4)
!85 = !DILocation(line: 41, column: 49, scope: !9)
!86 = !DILocation(line: 41, column: 5, scope: !9)
!87 = !DILocation(line: 42, column: 10, scope: !9)
!88 = !DILocation(line: 42, column: 5, scope: !9)
!89 = !DILocation(line: 49, column: 29, scope: !90)
!90 = distinct !DILexicalBlock(scope: !9, file: !10, line: 49, column: 22)
!91 = !DILocation(line: 49, column: 27, scope: !90)
!92 = !DILocation(line: 49, column: 34, scope: !93)
!93 = distinct !DILexicalBlock(scope: !90, file: !10, line: 49, column: 22)
!94 = !DILocation(line: 49, column: 36, scope: !93)
!95 = !DILocation(line: 49, column: 22, scope: !90)
!96 = !DILocation(line: 51, column: 15, scope: !97)
!97 = distinct !DILexicalBlock(scope: !93, file: !10, line: 50, column: 5)
!98 = !DILocation(line: 51, column: 13, scope: !97)
!99 = !DILocation(line: 51, column: 20, scope: !97)
!100 = !DILocation(line: 51, column: 18, scope: !97)
!101 = !DILocation(line: 51, column: 17, scope: !97)
!102 = !DILocation(line: 51, column: 8, scope: !97)
!103 = !DILocation(line: 51, column: 5, scope: !97)
!104 = !DILocation(line: 51, column: 11, scope: !97)
!105 = !DILocation(line: 52, column: 5, scope: !97)
!106 = !DILocation(line: 49, column: 43, scope: !93)
!107 = !DILocation(line: 49, column: 22, scope: !93)
!108 = distinct !{!108, !95, !109, !110}
!109 = !DILocation(line: 52, column: 5, scope: !90)
!110 = !{!"llvm.loop.name", !"VITIS_LOOP_49_2"}
!111 = !DILocation(line: 54, column: 29, scope: !112)
!112 = distinct !DILexicalBlock(scope: !9, file: !10, line: 54, column: 22)
!113 = !DILocation(line: 54, column: 27, scope: !112)
!114 = !DILocation(line: 54, column: 34, scope: !115)
!115 = distinct !DILexicalBlock(scope: !112, file: !10, line: 54, column: 22)
!116 = !DILocation(line: 54, column: 36, scope: !115)
!117 = !DILocation(line: 54, column: 22, scope: !112)
!118 = !DILocation(line: 56, column: 22, scope: !119)
!119 = distinct !DILexicalBlock(scope: !115, file: !10, line: 55, column: 5)
!120 = !DILocation(line: 56, column: 19, scope: !119)
!121 = !DILocation(line: 56, column: 5, scope: !119)
!122 = !DILocation(line: 56, column: 7, scope: !119)
!123 = !DILocation(line: 56, column: 10, scope: !119)
!124 = !DILocation(line: 57, column: 5, scope: !119)
!125 = !DILocation(line: 54, column: 43, scope: !115)
!126 = !DILocation(line: 54, column: 22, scope: !115)
!127 = distinct !{!127, !117, !128, !129}
!128 = !DILocation(line: 57, column: 5, scope: !112)
!129 = !{!"llvm.loop.name", !"VITIS_LOOP_54_3"}
!130 = !DILocation(line: 58, column: 1, scope: !9)
!131 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!132 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!133 = !{i32 0, i1 false}
