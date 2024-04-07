; ModuleID = '/home/bruno/Desktop/benchmarks/vector_scalar/intermediate/output.3.magiclangtmp.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.global_ctors = appending global [0 x { i32, void ()*, i8* }] zeroinitializer, !taffo.structinfo !0
@.str = private unnamed_addr constant [20 x i8] c"initialized arrays\0A\00", align 1, !taffo.info !3

; Function Attrs: nounwind
define i32 @vs(float* %A, float %alpha) #0 !dbg !14 !fpga.function.pragma !20 !taffo.funinfo !23 {
entry:
  %A.addr = alloca float*, align 8
  %alpha.addr = alloca float, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  store float* %A, float** %A.addr, align 8
  call void @llvm.dbg.declare(metadata float** %A.addr, metadata !24, metadata !DIExpression()), !dbg !25
  store float %alpha, float* %alpha.addr, align 4
  call void @llvm.dbg.declare(metadata float* %alpha.addr, metadata !26, metadata !DIExpression()), !dbg !27
  call void @llvm.sideeffect() #5 [ "xlx_array_partition"(float* %A, i32 2, i32 0, i32 1, i1 false) ], !dbg !28
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(float* %A, [0 x i8] zeroinitializer, i64 64, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !29
  %0 = bitcast i32* %n to i8*, !dbg !30
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #6, !dbg !30
  call void @llvm.dbg.declare(metadata i32* %n, metadata !31, metadata !DIExpression()), !dbg !32
  store i32 64, i32* %n, align 4, !dbg !32
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0)), !dbg !33
  %1 = bitcast i32* %i to i8*, !dbg !34
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #6, !dbg !34
  call void @llvm.dbg.declare(metadata i32* %i, metadata !35, metadata !DIExpression()), !dbg !36
  br label %VITIS_LOOP_48_1, !dbg !34

VITIS_LOOP_48_1:                                  ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !37
  br label %for.cond, !dbg !39

for.cond:                                         ; preds = %for.inc, %VITIS_LOOP_48_1
  %2 = load i32, i32* %i, align 4, !dbg !40
  %cmp = icmp slt i32 %2, 64, !dbg !42
  br i1 %cmp, label %for.body, label %for.end, !dbg !43

for.body:                                         ; preds = %for.cond
  %3 = load float*, float** %A.addr, align 8, !dbg !44
  %4 = load i32, i32* %i, align 4, !dbg !46
  %idxprom = sext i32 %4 to i64, !dbg !44
  %arrayidx = getelementptr inbounds float, float* %3, i64 %idxprom, !dbg !44
  %5 = load float, float* %arrayidx, align 4, !dbg !44
  %6 = load float, float* %alpha.addr, align 4, !dbg !47
  %mul = fmul float %5, %6, !dbg !48
  %7 = load float*, float** %A.addr, align 8, !dbg !49
  %8 = load i32, i32* %i, align 4, !dbg !50
  %idxprom1 = sext i32 %8 to i64, !dbg !49
  %arrayidx2 = getelementptr inbounds float, float* %7, i64 %idxprom1, !dbg !49
  store float %mul, float* %arrayidx2, align 4, !dbg !51
  br label %for.inc, !dbg !52

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !dbg !53
  %inc = add nsw i32 %9, 1, !dbg !53
  store i32 %inc, i32* %i, align 4, !dbg !53
  br label %for.cond, !dbg !54, !llvm.loop !55

for.end:                                          ; preds = %for.cond
  %10 = bitcast i32* %i to i8*, !dbg !60
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %10) #6, !dbg !60
  %11 = bitcast i32* %n to i8*, !dbg !60
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #6, !dbg !60
  ret i32 0, !dbg !61
}

; Function Attrs: nounwind readnone speculatable
declare !taffo.funinfo !62 void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: inaccessiblememonly nounwind
declare !taffo.funinfo !7 void @llvm.sideeffect() #2

; Function Attrs: argmemonly nounwind
declare !taffo.funinfo !23 void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #3

declare !taffo.funinfo !63 i32 @printf(i8*, ...) #4

; Function Attrs: argmemonly nounwind
declare !taffo.funinfo !23 void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #3

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.top.func"="vs" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { inaccessiblememonly nounwind }
attributes #3 = { argmemonly nounwind }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="0" "xlx.source"="user" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!5}
!llvm.ident = !{!10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10}
!llvm.module.flags = !{!11, !12, !13}

!0 = !{!1, !1, !1}
!1 = !{i1 false, !2, i1 false, i1 false}
!2 = !{double 0.000000e+00, double 0.000000e+00}
!3 = !{i1 false, !4, i1 false, i1 false}
!4 = !{double 0.000000e+00, double 1.220000e+02}
!5 = distinct !DICompileUnit(language: DW_LANG_C99, file: !6, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !7, retainedTypes: !8)
!6 = !DIFile(filename: "/home/bruno/Desktop/benchmarks/vector_scalar/proj_vs_1/solution1/.autopilot/db/vs.pp.0.c", directory: "/home/bruno/Desktop/benchmarks/vector_scalar")
!7 = !{}
!8 = !{!9}
!9 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!10 = !{!"clang version 7.0.0 "}
!11 = !{i32 2, !"Dwarf Version", i32 4}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"wchar_size", i32 4}
!14 = distinct !DISubprogram(name: "vs", scope: !15, file: !15, line: 38, type: !16, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !5, retainedNodes: !7)
!15 = !DIFile(filename: "vs.c", directory: "/home/bruno/Desktop/benchmarks/vector_scalar")
!16 = !DISubroutineType(types: !17)
!17 = !{!18, !19, !9}
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!20 = !{!21}
!21 = !{!"fpga.top", !"user", !22}
!22 = !DILocation(line: 38, column: 16, scope: !14)
!23 = !{i32 0, i1 false, i32 0, i1 false}
!24 = !DILocalVariable(name: "A", arg: 1, scope: !14, file: !15, line: 38, type: !19)
!25 = !DILocation(line: 38, column: 51, scope: !14)
!26 = !DILocalVariable(name: "alpha", arg: 2, scope: !14, file: !15, line: 38, type: !9)
!27 = !DILocation(line: 38, column: 62, scope: !14)
!28 = !DILocation(line: 40, column: 9, scope: !14)
!29 = !DILocation(line: 41, column: 9, scope: !14)
!30 = !DILocation(line: 43, column: 2, scope: !14)
!31 = !DILocalVariable(name: "n", scope: !14, file: !15, line: 43, type: !18)
!32 = !DILocation(line: 43, column: 6, scope: !14)
!33 = !DILocation(line: 45, column: 5, scope: !14)
!34 = !DILocation(line: 46, column: 5, scope: !14)
!35 = !DILocalVariable(name: "i", scope: !14, file: !15, line: 46, type: !18)
!36 = !DILocation(line: 46, column: 9, scope: !14)
!37 = !DILocation(line: 48, column: 29, scope: !38)
!38 = distinct !DILexicalBlock(scope: !14, file: !15, line: 48, column: 22)
!39 = !DILocation(line: 48, column: 27, scope: !38)
!40 = !DILocation(line: 48, column: 34, scope: !41)
!41 = distinct !DILexicalBlock(scope: !38, file: !15, line: 48, column: 22)
!42 = !DILocation(line: 48, column: 36, scope: !41)
!43 = !DILocation(line: 48, column: 22, scope: !38)
!44 = !DILocation(line: 51, column: 9, scope: !45)
!45 = distinct !DILexicalBlock(scope: !41, file: !15, line: 49, column: 5)
!46 = !DILocation(line: 51, column: 11, scope: !45)
!47 = !DILocation(line: 51, column: 14, scope: !45)
!48 = !DILocation(line: 51, column: 13, scope: !45)
!49 = !DILocation(line: 51, column: 2, scope: !45)
!50 = !DILocation(line: 51, column: 4, scope: !45)
!51 = !DILocation(line: 51, column: 7, scope: !45)
!52 = !DILocation(line: 52, column: 5, scope: !45)
!53 = !DILocation(line: 48, column: 43, scope: !41)
!54 = !DILocation(line: 48, column: 22, scope: !41)
!55 = distinct !{!55, !43, !56, !57, !59}
!56 = !DILocation(line: 52, column: 5, scope: !38)
!57 = !{!"llvm.loop.unroll.full", !"user", !58}
!58 = !DILocation(line: 50, column: 9, scope: !38)
!59 = !{!"llvm.loop.name", !"VITIS_LOOP_48_1"}
!60 = !DILocation(line: 55, column: 1, scope: !14)
!61 = !DILocation(line: 54, column: 5, scope: !14)
!62 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!63 = !{i32 0, i1 false}
