; ModuleID = '/home/bruno/Desktop/benchmarks/vector_scalar/proj_vs_1/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.global_ctors = appending global [0 x { i32, void ()*, i8* }] zeroinitializer
@.str = private unnamed_addr constant [20 x i8] c"initialized arrays\0A\00", align 1

; Function Attrs: nounwind
define i32 @vs(float* %A, float %alpha) #0 !dbg !9 !fpga.function.pragma !15 {
entry:
  %A.addr = alloca float*, align 8
  %alpha.addr = alloca float, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  store float* %A, float** %A.addr, align 8
  call void @llvm.dbg.declare(metadata float** %A.addr, metadata !18, metadata !DIExpression()), !dbg !19
  store float %alpha, float* %alpha.addr, align 4
  call void @llvm.dbg.declare(metadata float* %alpha.addr, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.sideeffect() #5 [ "xlx_array_partition"(float* %A, i32 2, i32 0, i32 1, i1 false) ], !dbg !22
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %A, [0 x i8] zeroinitializer, i64 64, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !23
  %0 = bitcast i32* %n to i8*, !dbg !24
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #6, !dbg !24
  call void @llvm.dbg.declare(metadata i32* %n, metadata !25, metadata !DIExpression()), !dbg !26
  store i32 64, i32* %n, align 4, !dbg !26
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0)), !dbg !27
  %1 = bitcast i32* %i to i8*, !dbg !28
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #6, !dbg !28
  call void @llvm.dbg.declare(metadata i32* %i, metadata !29, metadata !DIExpression()), !dbg !30
  br label %VITIS_LOOP_48_1, !dbg !28

VITIS_LOOP_48_1:                                  ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !31
  br label %for.cond, !dbg !33

for.cond:                                         ; preds = %for.inc, %VITIS_LOOP_48_1
  %2 = load i32, i32* %i, align 4, !dbg !34
  %cmp = icmp slt i32 %2, 64, !dbg !36
  br i1 %cmp, label %for.body, label %for.end, !dbg !37

for.body:                                         ; preds = %for.cond
  %3 = load float*, float** %A.addr, align 8, !dbg !38
  %4 = load i32, i32* %i, align 4, !dbg !40
  %idxprom = sext i32 %4 to i64, !dbg !38
  %arrayidx = getelementptr inbounds float, float* %3, i64 %idxprom, !dbg !38
  %5 = load float, float* %arrayidx, align 4, !dbg !38
  %6 = load float, float* %alpha.addr, align 4, !dbg !41
  %mul = fmul float %5, %6, !dbg !42
  %7 = load float*, float** %A.addr, align 8, !dbg !43
  %8 = load i32, i32* %i, align 4, !dbg !44
  %idxprom1 = sext i32 %8 to i64, !dbg !43
  %arrayidx2 = getelementptr inbounds float, float* %7, i64 %idxprom1, !dbg !43
  store float %mul, float* %arrayidx2, align 4, !dbg !45
  br label %for.inc, !dbg !46

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !dbg !47
  %inc = add nsw i32 %9, 1, !dbg !47
  store i32 %inc, i32* %i, align 4, !dbg !47
  br label %for.cond, !dbg !48, !llvm.loop !49

for.end:                                          ; preds = %for.cond
  %10 = bitcast i32* %i to i8*, !dbg !54
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %10) #6, !dbg !54
  %11 = bitcast i32* %n to i8*, !dbg !54
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #6, !dbg !54
  ret i32 0, !dbg !55
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #3

declare i32 @printf(i8*, ...) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #3

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.top.func"="vs" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { inaccessiblememonly nounwind }
attributes #3 = { argmemonly nounwind }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="0" "xlx.source"="user" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.ident = !{!5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5}
!llvm.module.flags = !{!6, !7, !8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/home/bruno/Desktop/benchmarks/vector_scalar/proj_vs_1/solution1/.autopilot/db/vs.pp.0.c", directory: "/home/bruno/Desktop/benchmarks/vector_scalar")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!5 = !{!"clang version 7.0.0 "}
!6 = !{i32 2, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = distinct !DISubprogram(name: "vs", scope: !10, file: !10, line: 38, type: !11, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DIFile(filename: "vs.c", directory: "/home/bruno/Desktop/benchmarks/vector_scalar")
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !14, !4}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!15 = !{!16}
!16 = !{!"fpga.top", !"user", !17}
!17 = !DILocation(line: 38, column: 16, scope: !9)
!18 = !DILocalVariable(name: "A", arg: 1, scope: !9, file: !10, line: 38, type: !14)
!19 = !DILocation(line: 38, column: 51, scope: !9)
!20 = !DILocalVariable(name: "alpha", arg: 2, scope: !9, file: !10, line: 38, type: !4)
!21 = !DILocation(line: 38, column: 62, scope: !9)
!22 = !DILocation(line: 40, column: 9, scope: !9)
!23 = !DILocation(line: 41, column: 9, scope: !9)
!24 = !DILocation(line: 43, column: 2, scope: !9)
!25 = !DILocalVariable(name: "n", scope: !9, file: !10, line: 43, type: !13)
!26 = !DILocation(line: 43, column: 6, scope: !9)
!27 = !DILocation(line: 45, column: 5, scope: !9)
!28 = !DILocation(line: 46, column: 5, scope: !9)
!29 = !DILocalVariable(name: "i", scope: !9, file: !10, line: 46, type: !13)
!30 = !DILocation(line: 46, column: 9, scope: !9)
!31 = !DILocation(line: 48, column: 29, scope: !32)
!32 = distinct !DILexicalBlock(scope: !9, file: !10, line: 48, column: 22)
!33 = !DILocation(line: 48, column: 27, scope: !32)
!34 = !DILocation(line: 48, column: 34, scope: !35)
!35 = distinct !DILexicalBlock(scope: !32, file: !10, line: 48, column: 22)
!36 = !DILocation(line: 48, column: 36, scope: !35)
!37 = !DILocation(line: 48, column: 22, scope: !32)
!38 = !DILocation(line: 51, column: 9, scope: !39)
!39 = distinct !DILexicalBlock(scope: !35, file: !10, line: 49, column: 5)
!40 = !DILocation(line: 51, column: 11, scope: !39)
!41 = !DILocation(line: 51, column: 14, scope: !39)
!42 = !DILocation(line: 51, column: 13, scope: !39)
!43 = !DILocation(line: 51, column: 2, scope: !39)
!44 = !DILocation(line: 51, column: 4, scope: !39)
!45 = !DILocation(line: 51, column: 7, scope: !39)
!46 = !DILocation(line: 52, column: 5, scope: !39)
!47 = !DILocation(line: 48, column: 43, scope: !35)
!48 = !DILocation(line: 48, column: 22, scope: !35)
!49 = distinct !{!49, !37, !50, !51, !53}
!50 = !DILocation(line: 52, column: 5, scope: !32)
!51 = !{!"llvm.loop.unroll.full", !"user", !52}
!52 = !DILocation(line: 50, column: 9, scope: !32)
!53 = !{!"llvm.loop.name", !"VITIS_LOOP_48_1"}
!54 = !DILocation(line: 55, column: 1, scope: !9)
!55 = !DILocation(line: 54, column: 5, scope: !9)
