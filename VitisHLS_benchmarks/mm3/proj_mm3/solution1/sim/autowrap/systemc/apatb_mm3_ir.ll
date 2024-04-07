; ModuleID = '/home/bruno/Desktop/benchmarks/mm3/proj_mm3/solution1/.autopilot/db/a.g.ld.6.user.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define void @apatb_mm3_ir(float* noalias nonnull %A, float* noalias nonnull %B, float* noalias nonnull %C, float* noalias nonnull %D, float* noalias nonnull %E, float* noalias nonnull %F, float* noalias nonnull %G) local_unnamed_addr #0 {
entry:
  %A_copy = alloca [256 x float], align 512
  %B_copy = alloca [256 x float], align 512
  %C_copy = alloca [256 x float], align 512
  %D_copy = alloca [256 x float], align 512
  %E_copy = alloca [256 x float], align 512
  %F_copy = alloca [256 x float], align 512
  %G_copy = alloca [256 x float], align 512
  %0 = bitcast float* %A to [256 x float]*
  %1 = bitcast float* %B to [256 x float]*
  %2 = bitcast float* %C to [256 x float]*
  %3 = bitcast float* %D to [256 x float]*
  %4 = bitcast float* %E to [256 x float]*
  %5 = bitcast float* %F to [256 x float]*
  %6 = bitcast float* %G to [256 x float]*
  call fastcc void @copy_in([256 x float]* nonnull %0, [256 x float]* nonnull align 512 %A_copy, [256 x float]* nonnull %1, [256 x float]* nonnull align 512 %B_copy, [256 x float]* nonnull %2, [256 x float]* nonnull align 512 %C_copy, [256 x float]* nonnull %3, [256 x float]* nonnull align 512 %D_copy, [256 x float]* nonnull %4, [256 x float]* nonnull align 512 %E_copy, [256 x float]* nonnull %5, [256 x float]* nonnull align 512 %F_copy, [256 x float]* nonnull %6, [256 x float]* nonnull align 512 %G_copy)
  %7 = getelementptr inbounds [256 x float], [256 x float]* %A_copy, i32 0, i32 0
  %8 = getelementptr inbounds [256 x float], [256 x float]* %B_copy, i32 0, i32 0
  %9 = getelementptr inbounds [256 x float], [256 x float]* %C_copy, i32 0, i32 0
  %10 = getelementptr inbounds [256 x float], [256 x float]* %D_copy, i32 0, i32 0
  %11 = getelementptr inbounds [256 x float], [256 x float]* %E_copy, i32 0, i32 0
  %12 = getelementptr inbounds [256 x float], [256 x float]* %F_copy, i32 0, i32 0
  %13 = getelementptr inbounds [256 x float], [256 x float]* %G_copy, i32 0, i32 0
  call void @apatb_mm3_hw(float* %7, float* %8, float* %9, float* %10, float* %11, float* %12, float* %13)
  call void @copy_back([256 x float]* %0, [256 x float]* %A_copy, [256 x float]* %1, [256 x float]* %B_copy, [256 x float]* %2, [256 x float]* %C_copy, [256 x float]* %3, [256 x float]* %D_copy, [256 x float]* %4, [256 x float]* %E_copy, [256 x float]* %5, [256 x float]* %F_copy, [256 x float]* %6, [256 x float]* %G_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([256 x float]* noalias readonly, [256 x float]* noalias align 512, [256 x float]* noalias readonly, [256 x float]* noalias align 512, [256 x float]* noalias readonly, [256 x float]* noalias align 512, [256 x float]* noalias readonly, [256 x float]* noalias align 512, [256 x float]* noalias readonly, [256 x float]* noalias align 512, [256 x float]* noalias readonly, [256 x float]* noalias align 512, [256 x float]* noalias readonly, [256 x float]* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a256f32([256 x float]* align 512 %1, [256 x float]* %0)
  call fastcc void @onebyonecpy_hls.p0a256f32([256 x float]* align 512 %3, [256 x float]* %2)
  call fastcc void @onebyonecpy_hls.p0a256f32([256 x float]* align 512 %5, [256 x float]* %4)
  call fastcc void @onebyonecpy_hls.p0a256f32([256 x float]* align 512 %7, [256 x float]* %6)
  call fastcc void @onebyonecpy_hls.p0a256f32([256 x float]* align 512 %9, [256 x float]* %8)
  call fastcc void @onebyonecpy_hls.p0a256f32([256 x float]* align 512 %11, [256 x float]* %10)
  call fastcc void @onebyonecpy_hls.p0a256f32([256 x float]* align 512 %13, [256 x float]* %12)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a256f32([256 x float]* noalias align 512, [256 x float]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [256 x float]* %0, null
  %3 = icmp eq [256 x float]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [256 x float], [256 x float]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [256 x float], [256 x float]* %1, i64 0, i64 %for.loop.idx1
  %5 = load float, float* %src.addr, align 4
  store float %5, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 256
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([256 x float]* noalias, [256 x float]* noalias readonly align 512, [256 x float]* noalias, [256 x float]* noalias readonly align 512, [256 x float]* noalias, [256 x float]* noalias readonly align 512, [256 x float]* noalias, [256 x float]* noalias readonly align 512, [256 x float]* noalias, [256 x float]* noalias readonly align 512, [256 x float]* noalias, [256 x float]* noalias readonly align 512, [256 x float]* noalias, [256 x float]* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a256f32([256 x float]* %0, [256 x float]* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0a256f32([256 x float]* %2, [256 x float]* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0a256f32([256 x float]* %4, [256 x float]* align 512 %5)
  call fastcc void @onebyonecpy_hls.p0a256f32([256 x float]* %6, [256 x float]* align 512 %7)
  call fastcc void @onebyonecpy_hls.p0a256f32([256 x float]* %8, [256 x float]* align 512 %9)
  call fastcc void @onebyonecpy_hls.p0a256f32([256 x float]* %10, [256 x float]* align 512 %11)
  call fastcc void @onebyonecpy_hls.p0a256f32([256 x float]* %12, [256 x float]* align 512 %13)
  ret void
}

declare void @apatb_mm3_hw(float*, float*, float*, float*, float*, float*, float*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([256 x float]* noalias, [256 x float]* noalias readonly align 512, [256 x float]* noalias, [256 x float]* noalias readonly align 512, [256 x float]* noalias, [256 x float]* noalias readonly align 512, [256 x float]* noalias, [256 x float]* noalias readonly align 512, [256 x float]* noalias, [256 x float]* noalias readonly align 512, [256 x float]* noalias, [256 x float]* noalias readonly align 512, [256 x float]* noalias, [256 x float]* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a256f32([256 x float]* %0, [256 x float]* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0a256f32([256 x float]* %2, [256 x float]* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0a256f32([256 x float]* %4, [256 x float]* align 512 %5)
  call fastcc void @onebyonecpy_hls.p0a256f32([256 x float]* %6, [256 x float]* align 512 %7)
  call fastcc void @onebyonecpy_hls.p0a256f32([256 x float]* %8, [256 x float]* align 512 %9)
  call fastcc void @onebyonecpy_hls.p0a256f32([256 x float]* %10, [256 x float]* align 512 %11)
  call fastcc void @onebyonecpy_hls.p0a256f32([256 x float]* %12, [256 x float]* align 512 %13)
  ret void
}

define void @mm3_hw_stub_wrapper(float*, float*, float*, float*, float*, float*, float*) #4 {
entry:
  %7 = bitcast float* %0 to [256 x float]*
  %8 = bitcast float* %1 to [256 x float]*
  %9 = bitcast float* %2 to [256 x float]*
  %10 = bitcast float* %3 to [256 x float]*
  %11 = bitcast float* %4 to [256 x float]*
  %12 = bitcast float* %5 to [256 x float]*
  %13 = bitcast float* %6 to [256 x float]*
  call void @copy_out([256 x float]* null, [256 x float]* %7, [256 x float]* null, [256 x float]* %8, [256 x float]* null, [256 x float]* %9, [256 x float]* null, [256 x float]* %10, [256 x float]* null, [256 x float]* %11, [256 x float]* null, [256 x float]* %12, [256 x float]* null, [256 x float]* %13)
  %14 = bitcast [256 x float]* %7 to float*
  %15 = bitcast [256 x float]* %8 to float*
  %16 = bitcast [256 x float]* %9 to float*
  %17 = bitcast [256 x float]* %10 to float*
  %18 = bitcast [256 x float]* %11 to float*
  %19 = bitcast [256 x float]* %12 to float*
  %20 = bitcast [256 x float]* %13 to float*
  call void @mm3_hw_stub(float* %14, float* %15, float* %16, float* %17, float* %18, float* %19, float* %20)
  call void @copy_in([256 x float]* null, [256 x float]* %7, [256 x float]* null, [256 x float]* %8, [256 x float]* null, [256 x float]* %9, [256 x float]* null, [256 x float]* %10, [256 x float]* null, [256 x float]* %11, [256 x float]* null, [256 x float]* %12, [256 x float]* null, [256 x float]* %13)
  ret void
}

declare void @mm3_hw_stub(float*, float*, float*, float*, float*, float*, float*)

attributes #0 = { inaccessiblemem_or_argmemonly noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #4 = { "fpga.wrapper.func"="stub" }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 0}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
