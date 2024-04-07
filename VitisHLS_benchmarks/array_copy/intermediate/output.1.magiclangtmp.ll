; ModuleID = '/home/bruno/Desktop/benchmarks/array_copy/proj_array_copy/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.global_ctors = appending global [0 x { i32, void ()*, i8* }] zeroinitializer
@.str = private unnamed_addr constant [9 x i8] c"scalar()\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [19 x i8] c"array_copy_taffo.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [33 x i8] c"target('xs') scalar(range(0, 5))\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [34 x i8] c"target('ys') scalar(range(0, 20))\00", section "llvm.metadata"

; Function Attrs: nounwind
define void @array_copy(float* "fpga.decayed.dim.hint"="16" %y, float %alpha) #0 !dbg !9 !fpga.function.pragma !14 {
entry:
  %y.addr = alloca float*, align 8
  %alpha.addr = alloca float, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %fn = alloca float, align 4
  %saved_stack = alloca i8*, align 8
  %tmp_x = alloca float, align 4
  %ys = alloca [16 x float], align 4
  %five = alloca float, align 4
  store float* %y, float** %y.addr, align 8
  call void @llvm.dbg.declare(metadata float** %y.addr, metadata !17, metadata !DIExpression()), !dbg !18
  store float %alpha, float* %alpha.addr, align 4
  call void @llvm.dbg.declare(metadata float* %alpha.addr, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %y, [0 x i8] zeroinitializer, i64 16, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !21
  %0 = bitcast i32* %n to i8*, !dbg !22
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !22
  call void @llvm.dbg.declare(metadata i32* %n, metadata !23, metadata !DIExpression()), !dbg !25
  store i32 16, i32* %n, align 4, !dbg !25
  %1 = bitcast i32* %i to i8*, !dbg !26
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !26
  call void @llvm.dbg.declare(metadata i32* %i, metadata !27, metadata !DIExpression()), !dbg !28
  %2 = bitcast i32* %j to i8*, !dbg !29
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !29
  call void @llvm.dbg.declare(metadata i32* %j, metadata !30, metadata !DIExpression()), !dbg !31
  %3 = bitcast float* %fn to i8*, !dbg !32
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !32
  call void @llvm.dbg.declare(metadata float* %fn, metadata !33, metadata !DIExpression()), !dbg !34
  %fn1 = bitcast float* %fn to i8*, !dbg !32
  call void @llvm.var.annotation(i8* %fn1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i32 30), !dbg !32
  %4 = load float, float* %alpha.addr, align 4, !dbg !35
  store float %4, float* %fn, align 4, !dbg !36
  %5 = load i32, i32* %n, align 4, !dbg !37
  %6 = zext i32 %5 to i64, !dbg !38
  %7 = call i8* @llvm.stacksave(), !dbg !38
  store i8* %7, i8** %saved_stack, align 8, !dbg !38
  %vla = alloca float, i64 %6, align 4, !dbg !38
  call void @llvm.dbg.declare(metadata float* %vla, metadata !39, metadata !DIExpression()), !dbg !43
  %vla2 = bitcast float* %vla to i8*, !dbg !38
  call void @llvm.var.annotation(i8* %vla2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i32 32), !dbg !38
  %8 = bitcast float* %tmp_x to i8*, !dbg !44
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4, !dbg !44
  call void @llvm.dbg.declare(metadata float* %tmp_x, metadata !45, metadata !DIExpression()), !dbg !46
  br label %VITIS_LOOP_35_1, !dbg !44

VITIS_LOOP_35_1:                                  ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !47
  br label %for.cond, !dbg !49

for.cond:                                         ; preds = %for.inc, %VITIS_LOOP_35_1
  %9 = load i32, i32* %i, align 4, !dbg !50
  %cmp = icmp slt i32 %9, 16, !dbg !52
  br i1 %cmp, label %for.body, label %for.end, !dbg !53

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4, !dbg !54
  %conv = sitofp i32 %10 to float, !dbg !54
  %11 = load float, float* %fn, align 4, !dbg !56
  %div = fdiv float %conv, %11, !dbg !57
  store float %div, float* %tmp_x, align 4, !dbg !58
  %12 = load float, float* %tmp_x, align 4, !dbg !59
  %13 = load i32, i32* %i, align 4, !dbg !60
  %idxprom = sext i32 %13 to i64, !dbg !61
  %arrayidx = getelementptr inbounds float, float* %vla, i64 %idxprom, !dbg !61
  store float %12, float* %arrayidx, align 4, !dbg !62
  br label %for.inc, !dbg !63

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4, !dbg !64
  %inc = add nsw i32 %14, 1, !dbg !64
  store i32 %inc, i32* %i, align 4, !dbg !64
  br label %for.cond, !dbg !65, !llvm.loop !66

for.end:                                          ; preds = %for.cond
  call void @llvm.dbg.declare(metadata [16 x float]* %ys, metadata !69, metadata !DIExpression()), !dbg !73
  %ys3 = bitcast [16 x float]* %ys to i8*, !dbg !74
  call void @llvm.var.annotation(i8* %ys3, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i32 40), !dbg !74
  call void @llvm.dbg.declare(metadata float* %five, metadata !75, metadata !DIExpression()), !dbg !76
  %five4 = bitcast float* %five to i8*, !dbg !77
  call void @llvm.var.annotation(i8* %five4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i32 41), !dbg !77
  store float 5.000000e+00, float* %five, align 4, !dbg !78
  br label %VITIS_LOOP_49_2, !dbg !79

VITIS_LOOP_49_2:                                  ; preds = %for.end
  store i32 0, i32* %i, align 4, !dbg !80
  br label %for.cond5, !dbg !82

for.cond5:                                        ; preds = %for.inc14, %VITIS_LOOP_49_2
  %15 = load i32, i32* %i, align 4, !dbg !83
  %cmp6 = icmp slt i32 %15, 16, !dbg !85
  br i1 %cmp6, label %for.body7, label %for.end16, !dbg !86

for.body7:                                        ; preds = %for.cond5
  %16 = load i32, i32* %i, align 4, !dbg !87
  %idxprom8 = sext i32 %16 to i64, !dbg !89
  %arrayidx9 = getelementptr inbounds float, float* %vla, i64 %idxprom8, !dbg !89
  %17 = load float, float* %arrayidx9, align 4, !dbg !89
  %18 = load i32, i32* %i, align 4, !dbg !90
  %idxprom10 = sext i32 %18 to i64, !dbg !91
  %arrayidx11 = getelementptr inbounds float, float* %vla, i64 %idxprom10, !dbg !91
  %19 = load float, float* %arrayidx11, align 4, !dbg !91
  %mul = fmul float %17, %19, !dbg !92
  %20 = load i32, i32* %i, align 4, !dbg !93
  %idxprom12 = sext i32 %20 to i64, !dbg !94
  %arrayidx13 = getelementptr inbounds [16 x float], [16 x float]* %ys, i64 0, i64 %idxprom12, !dbg !94
  store float %mul, float* %arrayidx13, align 4, !dbg !95
  br label %for.inc14, !dbg !96

for.inc14:                                        ; preds = %for.body7
  %21 = load i32, i32* %i, align 4, !dbg !97
  %inc15 = add nsw i32 %21, 1, !dbg !97
  store i32 %inc15, i32* %i, align 4, !dbg !97
  br label %for.cond5, !dbg !98, !llvm.loop !99

for.end16:                                        ; preds = %for.cond5
  br label %VITIS_LOOP_54_3, !dbg !100

VITIS_LOOP_54_3:                                  ; preds = %for.end16
  store i32 0, i32* %i, align 4, !dbg !102
  br label %for.cond17, !dbg !104

for.cond17:                                       ; preds = %for.inc24, %VITIS_LOOP_54_3
  %22 = load i32, i32* %i, align 4, !dbg !105
  %cmp18 = icmp slt i32 %22, 16, !dbg !107
  br i1 %cmp18, label %for.body19, label %for.end26, !dbg !108

for.body19:                                       ; preds = %for.cond17
  %23 = load i32, i32* %i, align 4, !dbg !109
  %idxprom20 = sext i32 %23 to i64, !dbg !111
  %arrayidx21 = getelementptr inbounds [16 x float], [16 x float]* %ys, i64 0, i64 %idxprom20, !dbg !111
  %24 = load float, float* %arrayidx21, align 4, !dbg !111
  %25 = load float*, float** %y.addr, align 8, !dbg !112
  %26 = load i32, i32* %i, align 4, !dbg !113
  %idxprom22 = sext i32 %26 to i64, !dbg !112
  %arrayidx23 = getelementptr inbounds float, float* %25, i64 %idxprom22, !dbg !112
  store float %24, float* %arrayidx23, align 4, !dbg !114
  br label %for.inc24, !dbg !115

for.inc24:                                        ; preds = %for.body19
  %27 = load i32, i32* %i, align 4, !dbg !116
  %inc25 = add nsw i32 %27, 1, !dbg !116
  store i32 %inc25, i32* %i, align 4, !dbg !116
  br label %for.cond17, !dbg !117, !llvm.loop !118

for.end26:                                        ; preds = %for.cond17
  %28 = bitcast float* %tmp_x to i8*, !dbg !121
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #4, !dbg !121
  %29 = load i8*, i8** %saved_stack, align 8, !dbg !121
  call void @llvm.stackrestore(i8* %29), !dbg !121
  %30 = bitcast float* %fn to i8*, !dbg !121
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %30) #4, !dbg !121
  %31 = bitcast i32* %j to i8*, !dbg !121
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %31) #4, !dbg !121
  %32 = bitcast i32* %i to i8*, !dbg !121
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %32) #4, !dbg !121
  %33 = bitcast i32* %n to i8*, !dbg !121
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %33) #4, !dbg !121
  ret void, !dbg !121
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.var.annotation(i8*, i8*, i8*, i32) #4

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #4

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
!17 = !DILocalVariable(name: "y", arg: 1, scope: !9, file: !10, line: 24, type: !13)
!18 = !DILocation(line: 24, column: 68, scope: !9)
!19 = !DILocalVariable(name: "alpha", arg: 2, scope: !9, file: !10, line: 24, type: !4)
!20 = !DILocation(line: 24, column: 81, scope: !9)
!21 = !DILocation(line: 26, column: 9, scope: !9)
!22 = !DILocation(line: 27, column: 2, scope: !9)
!23 = !DILocalVariable(name: "n", scope: !9, file: !10, line: 27, type: !24)
!24 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!25 = !DILocation(line: 27, column: 6, scope: !9)
!26 = !DILocation(line: 28, column: 5, scope: !9)
!27 = !DILocalVariable(name: "i", scope: !9, file: !10, line: 28, type: !24)
!28 = !DILocation(line: 28, column: 9, scope: !9)
!29 = !DILocation(line: 29, column: 5, scope: !9)
!30 = !DILocalVariable(name: "j", scope: !9, file: !10, line: 29, type: !24)
!31 = !DILocation(line: 29, column: 9, scope: !9)
!32 = !DILocation(line: 30, column: 5, scope: !9)
!33 = !DILocalVariable(name: "fn", scope: !9, file: !10, line: 30, type: !4)
!34 = !DILocation(line: 30, column: 49, scope: !9)
!35 = !DILocation(line: 31, column: 10, scope: !9)
!36 = !DILocation(line: 31, column: 8, scope: !9)
!37 = !DILocation(line: 32, column: 13, scope: !9)
!38 = !DILocation(line: 32, column: 5, scope: !9)
!39 = !DILocalVariable(name: "x", scope: !9, file: !10, line: 32, type: !40)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !41)
!41 = !{!42}
!42 = !DISubrange(count: -1)
!43 = !DILocation(line: 32, column: 11, scope: !9)
!44 = !DILocation(line: 33, column: 5, scope: !9)
!45 = !DILocalVariable(name: "tmp_x", scope: !9, file: !10, line: 33, type: !4)
!46 = !DILocation(line: 33, column: 11, scope: !9)
!47 = !DILocation(line: 35, column: 29, scope: !48)
!48 = distinct !DILexicalBlock(scope: !9, file: !10, line: 35, column: 22)
!49 = !DILocation(line: 35, column: 27, scope: !48)
!50 = !DILocation(line: 35, column: 34, scope: !51)
!51 = distinct !DILexicalBlock(scope: !48, file: !10, line: 35, column: 22)
!52 = !DILocation(line: 35, column: 36, scope: !51)
!53 = !DILocation(line: 35, column: 22, scope: !48)
!54 = !DILocation(line: 36, column: 15, scope: !55)
!55 = distinct !DILexicalBlock(scope: !51, file: !10, line: 35, column: 46)
!56 = !DILocation(line: 36, column: 19, scope: !55)
!57 = !DILocation(line: 36, column: 17, scope: !55)
!58 = !DILocation(line: 36, column: 12, scope: !55)
!59 = !DILocation(line: 37, column: 16, scope: !55)
!60 = !DILocation(line: 37, column: 11, scope: !55)
!61 = !DILocation(line: 37, column: 9, scope: !55)
!62 = !DILocation(line: 37, column: 14, scope: !55)
!63 = !DILocation(line: 38, column: 5, scope: !55)
!64 = !DILocation(line: 35, column: 43, scope: !51)
!65 = !DILocation(line: 35, column: 22, scope: !51)
!66 = distinct !{!66, !53, !67, !68}
!67 = !DILocation(line: 38, column: 5, scope: !48)
!68 = !{!"llvm.loop.name", !"VITIS_LOOP_35_1"}
!69 = !DILocalVariable(name: "ys", scope: !9, file: !10, line: 40, type: !70)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 16)
!73 = !DILocation(line: 40, column: 11, scope: !9)
!74 = !DILocation(line: 40, column: 5, scope: !9)
!75 = !DILocalVariable(name: "five", scope: !9, file: !10, line: 41, type: !4)
!76 = !DILocation(line: 41, column: 49, scope: !9)
!77 = !DILocation(line: 41, column: 5, scope: !9)
!78 = !DILocation(line: 42, column: 10, scope: !9)
!79 = !DILocation(line: 42, column: 5, scope: !9)
!80 = !DILocation(line: 49, column: 29, scope: !81)
!81 = distinct !DILexicalBlock(scope: !9, file: !10, line: 49, column: 22)
!82 = !DILocation(line: 49, column: 27, scope: !81)
!83 = !DILocation(line: 49, column: 34, scope: !84)
!84 = distinct !DILexicalBlock(scope: !81, file: !10, line: 49, column: 22)
!85 = !DILocation(line: 49, column: 36, scope: !84)
!86 = !DILocation(line: 49, column: 22, scope: !81)
!87 = !DILocation(line: 51, column: 15, scope: !88)
!88 = distinct !DILexicalBlock(scope: !84, file: !10, line: 50, column: 5)
!89 = !DILocation(line: 51, column: 13, scope: !88)
!90 = !DILocation(line: 51, column: 20, scope: !88)
!91 = !DILocation(line: 51, column: 18, scope: !88)
!92 = !DILocation(line: 51, column: 17, scope: !88)
!93 = !DILocation(line: 51, column: 8, scope: !88)
!94 = !DILocation(line: 51, column: 5, scope: !88)
!95 = !DILocation(line: 51, column: 11, scope: !88)
!96 = !DILocation(line: 52, column: 5, scope: !88)
!97 = !DILocation(line: 49, column: 43, scope: !84)
!98 = !DILocation(line: 49, column: 22, scope: !84)
!99 = distinct !{!99, !86, !100, !101}
!100 = !DILocation(line: 52, column: 5, scope: !81)
!101 = !{!"llvm.loop.name", !"VITIS_LOOP_49_2"}
!102 = !DILocation(line: 54, column: 29, scope: !103)
!103 = distinct !DILexicalBlock(scope: !9, file: !10, line: 54, column: 22)
!104 = !DILocation(line: 54, column: 27, scope: !103)
!105 = !DILocation(line: 54, column: 34, scope: !106)
!106 = distinct !DILexicalBlock(scope: !103, file: !10, line: 54, column: 22)
!107 = !DILocation(line: 54, column: 36, scope: !106)
!108 = !DILocation(line: 54, column: 22, scope: !103)
!109 = !DILocation(line: 56, column: 22, scope: !110)
!110 = distinct !DILexicalBlock(scope: !106, file: !10, line: 55, column: 5)
!111 = !DILocation(line: 56, column: 19, scope: !110)
!112 = !DILocation(line: 56, column: 5, scope: !110)
!113 = !DILocation(line: 56, column: 7, scope: !110)
!114 = !DILocation(line: 56, column: 10, scope: !110)
!115 = !DILocation(line: 57, column: 5, scope: !110)
!116 = !DILocation(line: 54, column: 43, scope: !106)
!117 = !DILocation(line: 54, column: 22, scope: !106)
!118 = distinct !{!118, !108, !119, !120}
!119 = !DILocation(line: 57, column: 5, scope: !103)
!120 = !{!"llvm.loop.name", !"VITIS_LOOP_54_3"}
!121 = !DILocation(line: 58, column: 1, scope: !9)
