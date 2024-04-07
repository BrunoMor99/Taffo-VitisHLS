; ModuleID = '/home/bruno/Desktop/benchmarks/array_copy/intermediate/output.4.magiclangtmp.ll'
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
  %ys.u5_27fixp = alloca [16 x i32], align 4, !taffo.info !35, !taffo.target !38
  %five.u3_29fixp = alloca i32, align 4, !taffo.info !39
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
  %4 = load float, float* %alpha.addr, align 4, !dbg !60
  store float %4, float* %fn, align 4, !dbg !61, !taffo.info !34
  %5 = load i32, i32* %n, align 4, !dbg !62, !taffo.info !30
  %6 = zext i32 %5 to i64, !dbg !63, !taffo.info !30
  %7 = call i8* @llvm.stacksave(), !dbg !63
  store i8* %7, i8** %saved_stack, align 8, !dbg !63
  %vla.u3_29fixp = alloca i32, i64 %6, align 4, !dbg !63, !taffo.info !64, !taffo.target !66
  call void @llvm.dbg.declare(metadata !11, metadata !67, metadata !DIExpression()), !dbg !71
  %8 = bitcast float* %tmp_x to i8*, !dbg !72
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4, !dbg !72
  call void @llvm.dbg.declare(metadata float* %tmp_x, metadata !73, metadata !DIExpression()), !dbg !74
  br label %VITIS_LOOP_35_1, !dbg !72

VITIS_LOOP_35_1:                                  ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !75
  br label %for.cond, !dbg !77

for.cond:                                         ; preds = %for.inc, %VITIS_LOOP_35_1
  %9 = load i32, i32* %i, align 4, !dbg !78, !taffo.info !32
  %cmp = icmp slt i32 %9, 16, !dbg !80, !taffo.info !81
  br i1 %cmp, label %for.body, label %for.end, !dbg !83

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4, !dbg !84, !taffo.info !32
  %conv = sitofp i32 %10 to float, !dbg !84, !taffo.info !1
  %11 = load float, float* %fn, align 4, !dbg !86, !taffo.info !34
  %div = fdiv float %conv, %11, !dbg !87, !taffo.info !34
  store float %div, float* %tmp_x, align 4, !dbg !88, !taffo.info !34
  %12 = load float, float* %tmp_x, align 4, !dbg !89
  %13 = fmul float 0x41C0000000000000, %12, !dbg !90, !taffo.info !32
  %14 = fptoui float %13 to i32, !dbg !90, !taffo.info !32
  %15 = load i32, i32* %i, align 4, !dbg !90, !taffo.info !32
  %idxprom = sext i32 %15 to i64, !dbg !91, !taffo.info !1
  %arrayidx.u3_29fixp = getelementptr inbounds i32, i32* %vla.u3_29fixp, i64 %idxprom, !dbg !91, !taffo.info !92, !taffo.target !66
  store i32 %14, i32* %arrayidx.u3_29fixp, align 4, !dbg !93, !taffo.info !34, !taffo.target !66
  br label %for.inc, !dbg !94

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4, !dbg !95, !taffo.info !32
  %inc = add nsw i32 %16, 1, !dbg !95, !taffo.info !81
  store i32 %inc, i32* %i, align 4, !dbg !95
  br label %for.cond, !dbg !96, !llvm.loop !97

for.end:                                          ; preds = %for.cond
  call void @llvm.dbg.declare(metadata !11, metadata !100, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.declare(metadata !11, metadata !105, metadata !DIExpression()), !dbg !106
  store i32 -1610612736, i32* %five.u3_29fixp, align 4, !dbg !107, !taffo.info !34
  br label %VITIS_LOOP_49_2, !dbg !108

VITIS_LOOP_49_2:                                  ; preds = %for.end
  store i32 0, i32* %i, align 4, !dbg !109
  br label %for.cond5, !dbg !111

for.cond5:                                        ; preds = %for.inc14, %VITIS_LOOP_49_2
  %17 = load i32, i32* %i, align 4, !dbg !112, !taffo.info !32
  %cmp6 = icmp slt i32 %17, 16, !dbg !114, !taffo.info !81
  br i1 %cmp6, label %for.body7, label %for.end16, !dbg !115

for.body7:                                        ; preds = %for.cond5
  %18 = load i32, i32* %i, align 4, !dbg !116, !taffo.info !32
  %idxprom8 = sext i32 %18 to i64, !dbg !118, !taffo.info !119
  %arrayidx9.u3_29fixp = getelementptr inbounds i32, i32* %vla.u3_29fixp, i64 %idxprom8, !dbg !118, !taffo.info !92, !taffo.target !66
  %u3_29fixp1 = load i32, i32* %arrayidx9.u3_29fixp, align 4, !dbg !118, !taffo.info !121, !taffo.target !66
  %19 = load i32, i32* %i, align 4, !dbg !123, !taffo.info !32
  %idxprom10 = sext i32 %19 to i64, !dbg !124, !taffo.info !119
  %arrayidx11.u3_29fixp = getelementptr inbounds i32, i32* %vla.u3_29fixp, i64 %idxprom10, !dbg !124, !taffo.info !92, !taffo.target !66
  %u3_29fixp = load i32, i32* %arrayidx11.u3_29fixp, align 4, !dbg !124, !taffo.info !121, !taffo.target !66
  %20 = zext i32 %u3_29fixp1 to i64, !dbg !125, !taffo.info !121, !taffo.target !66
  %21 = zext i32 %u3_29fixp to i64, !dbg !125, !taffo.info !121, !taffo.target !66
  %22 = mul i64 %20, %21, !dbg !125, !taffo.info !126, !taffo.target !66
  %23 = lshr i64 %22, 27, !dbg !125, !taffo.info !126, !taffo.target !66
  %mul.u1_31fixp = trunc i64 %23 to i32, !dbg !128, !taffo.info !121, !taffo.target !66
  %24 = lshr i32 %mul.u1_31fixp, 4, !dbg !125, !taffo.info !121, !taffo.target !66
  %25 = load i32, i32* %i, align 4, !dbg !125, !taffo.info !32
  %idxprom12 = sext i32 %25 to i64, !dbg !129, !taffo.info !119
  %arrayidx13.u5_27fixp = getelementptr inbounds [16 x i32], [16 x i32]* %ys.u5_27fixp, i64 0, i64 %idxprom12, !dbg !129, !taffo.info !121, !taffo.target !38
  store i32 %24, i32* %arrayidx13.u5_27fixp, align 4, !dbg !130, !taffo.info !34, !taffo.target !38
  br label %for.inc14, !dbg !131

for.inc14:                                        ; preds = %for.body7
  %26 = load i32, i32* %i, align 4, !dbg !132, !taffo.info !32
  %inc15 = add nsw i32 %26, 1, !dbg !132, !taffo.info !133
  store i32 %inc15, i32* %i, align 4, !dbg !132
  br label %for.cond5, !dbg !135, !llvm.loop !136

for.end16:                                        ; preds = %for.cond5
  br label %VITIS_LOOP_54_3, !dbg !137

VITIS_LOOP_54_3:                                  ; preds = %for.end16
  store i32 0, i32* %i, align 4, !dbg !139
  br label %for.cond17, !dbg !141

for.cond17:                                       ; preds = %for.inc24, %VITIS_LOOP_54_3
  %27 = load i32, i32* %i, align 4, !dbg !142, !taffo.info !32
  %cmp18 = icmp slt i32 %27, 16, !dbg !144, !taffo.info !81
  br i1 %cmp18, label %for.body19, label %for.end26, !dbg !145

for.body19:                                       ; preds = %for.cond17
  %28 = load i32, i32* %i, align 4, !dbg !146, !taffo.info !32
  %idxprom20 = sext i32 %28 to i64, !dbg !148, !taffo.info !28
  %arrayidx21.u5_27fixp = getelementptr inbounds [16 x i32], [16 x i32]* %ys.u5_27fixp, i64 0, i64 %idxprom20, !dbg !148, !taffo.info !121, !taffo.target !38
  %u5_27fixp = load i32, i32* %arrayidx21.u5_27fixp, align 4, !dbg !148, !taffo.info !149, !taffo.target !38
  %29 = uitofp i32 %u5_27fixp to float, !dbg !151, !taffo.info !149, !taffo.target !38
  %30 = fdiv float %29, 0x41A0000000000000, !dbg !151, !taffo.info !149, !taffo.target !38
  %31 = load float*, float** %y.addr, align 8, !dbg !151, !taffo.info !28
  %32 = load i32, i32* %i, align 4, !dbg !152, !taffo.info !32
  %idxprom22 = sext i32 %32 to i64, !dbg !151, !taffo.info !28
  %arrayidx23 = getelementptr inbounds float, float* %31, i64 %idxprom22, !dbg !151, !taffo.info !28
  store float %30, float* %arrayidx23, align 4, !dbg !153, !taffo.info !34, !taffo.target !38
  br label %for.inc24, !dbg !154

for.inc24:                                        ; preds = %for.body19
  %33 = load i32, i32* %i, align 4, !dbg !155, !taffo.info !32
  %inc25 = add nsw i32 %33, 1, !dbg !155, !taffo.info !156
  store i32 %inc25, i32* %i, align 4, !dbg !155
  br label %for.cond17, !dbg !158, !llvm.loop !159

for.end26:                                        ; preds = %for.cond17
  %34 = bitcast float* %tmp_x to i8*, !dbg !162
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %34) #4, !dbg !162
  %35 = load i8*, i8** %saved_stack, align 8, !dbg !162
  call void @llvm.stackrestore(i8* %35), !dbg !162
  %36 = bitcast float* %fn to i8*, !dbg !162, !taffo.info !34
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #4, !dbg !162, !taffo.info !34
  %37 = bitcast i32* %j to i8*, !dbg !162
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %37) #4, !dbg !162
  %38 = bitcast i32* %i to i8*, !dbg !162, !taffo.info !32
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #4, !dbg !162
  %39 = bitcast i32* %n to i8*, !dbg !162, !taffo.info !30
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #4, !dbg !162
  ret void, !dbg !162
}

; Function Attrs: nounwind readnone speculatable
declare !taffo.funinfo !163 void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: inaccessiblememonly nounwind
declare !taffo.funinfo !11 void @llvm.sideeffect() #2

; Function Attrs: argmemonly nounwind
declare !taffo.funinfo !164 void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare !taffo.funinfo !165 void @llvm.var.annotation(i8*, i8*, i8*, i32) #4

; Function Attrs: nounwind
declare !taffo.funinfo !11 i8* @llvm.stacksave() #4

; Function Attrs: argmemonly nounwind
declare !taffo.funinfo !164 void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare !taffo.funinfo !166 void @llvm.stackrestore(i8*) #4

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
!16 = !{i32 2, !"Debug Info Version", i32 0}
!17 = !{i32 1, !"wchar_size", i32 4}
!18 = distinct !DISubprogram(name: "array_copy", scope: !19, file: !19, line: 24, type: !20, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !11)
!19 = !DIFile(filename: "array_copy_taffo.c", directory: "/home/bruno/Desktop/benchmarks/array_copy")
!20 = !DISubroutineType(types: !21)
!21 = !{null, !22, !13}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!23 = !{!24}
!24 = !{!"user"}
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
!72 = !DILocation(line: 33, column: 5, scope: !18)
!73 = !DILocalVariable(name: "tmp_x", scope: !18, file: !19, line: 33, type: !13)
!74 = !DILocation(line: 33, column: 11, scope: !18)
!75 = !DILocation(line: 35, column: 29, scope: !76)
!76 = distinct !DILexicalBlock(scope: !18, file: !19, line: 35, column: 22)
!77 = !DILocation(line: 35, column: 27, scope: !76)
!78 = !DILocation(line: 35, column: 34, scope: !79)
!79 = distinct !DILexicalBlock(scope: !76, file: !19, line: 35, column: 22)
!80 = !DILocation(line: 35, column: 36, scope: !79)
!81 = !{i1 false, !82, i1 false, i1 false}
!82 = !{double 1.000000e+00, double 1.000000e+00}
!83 = !DILocation(line: 35, column: 22, scope: !76)
!84 = !DILocation(line: 36, column: 15, scope: !85)
!85 = distinct !DILexicalBlock(scope: !79, file: !19, line: 35, column: 46)
!86 = !DILocation(line: 36, column: 19, scope: !85)
!87 = !DILocation(line: 36, column: 17, scope: !85)
!88 = !DILocation(line: 36, column: 12, scope: !85)
!89 = !DILocation(line: 37, column: 16, scope: !85)
!90 = !DILocation(line: 37, column: 11, scope: !85)
!91 = !DILocation(line: 37, column: 9, scope: !85)
!92 = !{!40, i1 false, i1 false, i1 true}
!93 = !DILocation(line: 37, column: 14, scope: !85)
!94 = !DILocation(line: 38, column: 5, scope: !85)
!95 = !DILocation(line: 35, column: 43, scope: !79)
!96 = !DILocation(line: 35, column: 22, scope: !79)
!97 = distinct !{!97, !83, !98, !99}
!98 = !DILocation(line: 38, column: 5, scope: !76)
!99 = !{!"llvm.loop.name", !"VITIS_LOOP_35_1"}
!100 = !DILocalVariable(name: "ys", scope: !18, file: !19, line: 40, type: !101)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 512, elements: !102)
!102 = !{!103}
!103 = !DISubrange(count: 16)
!104 = !DILocation(line: 40, column: 11, scope: !18)
!105 = !DILocalVariable(name: "five", scope: !18, file: !19, line: 41, type: !13)
!106 = !DILocation(line: 41, column: 49, scope: !18)
!107 = !DILocation(line: 42, column: 10, scope: !18)
!108 = !DILocation(line: 42, column: 5, scope: !18)
!109 = !DILocation(line: 49, column: 29, scope: !110)
!110 = distinct !DILexicalBlock(scope: !18, file: !19, line: 49, column: 22)
!111 = !DILocation(line: 49, column: 27, scope: !110)
!112 = !DILocation(line: 49, column: 34, scope: !113)
!113 = distinct !DILexicalBlock(scope: !110, file: !19, line: 49, column: 22)
!114 = !DILocation(line: 49, column: 36, scope: !113)
!115 = !DILocation(line: 49, column: 22, scope: !110)
!116 = !DILocation(line: 51, column: 15, scope: !117)
!117 = distinct !DILexicalBlock(scope: !113, file: !19, line: 50, column: 5)
!118 = !DILocation(line: 51, column: 13, scope: !117)
!119 = !{i1 false, !120, i1 false, i1 false}
!120 = !{double 0.000000e+00, double 1.000000e+00}
!121 = !{!122, !120, i1 false, i1 true}
!122 = !{!"fixp", i32 32, i32 31}
!123 = !DILocation(line: 51, column: 20, scope: !117)
!124 = !DILocation(line: 51, column: 18, scope: !117)
!125 = !DILocation(line: 51, column: 8, scope: !117)
!126 = !{!127, !120, i1 false}
!127 = !{!"fixp", i32 64, i32 29}
!128 = !DILocation(line: 51, column: 17, scope: !117)
!129 = !DILocation(line: 51, column: 5, scope: !117)
!130 = !DILocation(line: 51, column: 11, scope: !117)
!131 = !DILocation(line: 52, column: 5, scope: !117)
!132 = !DILocation(line: 49, column: 43, scope: !113)
!133 = !{i1 false, !134, i1 false, i1 false}
!134 = !{double 1.000000e+00, double 2.000000e+00}
!135 = !DILocation(line: 49, column: 22, scope: !113)
!136 = distinct !{!136, !115, !137, !138}
!137 = !DILocation(line: 52, column: 5, scope: !110)
!138 = !{!"llvm.loop.name", !"VITIS_LOOP_49_2"}
!139 = !DILocation(line: 54, column: 29, scope: !140)
!140 = distinct !DILexicalBlock(scope: !18, file: !19, line: 54, column: 22)
!141 = !DILocation(line: 54, column: 27, scope: !140)
!142 = !DILocation(line: 54, column: 34, scope: !143)
!143 = distinct !DILexicalBlock(scope: !140, file: !19, line: 54, column: 22)
!144 = !DILocation(line: 54, column: 36, scope: !143)
!145 = !DILocation(line: 54, column: 22, scope: !140)
!146 = !DILocation(line: 56, column: 22, scope: !147)
!147 = distinct !DILexicalBlock(scope: !143, file: !19, line: 55, column: 5)
!148 = !DILocation(line: 56, column: 19, scope: !147)
!149 = !{!150, !29, i1 false, i1 true}
!150 = !{!"fixp", i32 32, i32 30}
!151 = !DILocation(line: 56, column: 5, scope: !147)
!152 = !DILocation(line: 56, column: 7, scope: !147)
!153 = !DILocation(line: 56, column: 10, scope: !147)
!154 = !DILocation(line: 57, column: 5, scope: !147)
!155 = !DILocation(line: 54, column: 43, scope: !143)
!156 = !{i1 false, !157, i1 false, i1 false}
!157 = !{double 1.000000e+00, double 3.000000e+00}
!158 = !DILocation(line: 54, column: 22, scope: !143)
!159 = distinct !{!159, !145, !160, !161}
!160 = !DILocation(line: 57, column: 5, scope: !140)
!161 = !{!"llvm.loop.name", !"VITIS_LOOP_54_3"}
!162 = !DILocation(line: 58, column: 1, scope: !18)
!163 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!164 = !{i32 0, i1 false, i32 0, i1 false}
!165 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!166 = !{i32 0, i1 false}
