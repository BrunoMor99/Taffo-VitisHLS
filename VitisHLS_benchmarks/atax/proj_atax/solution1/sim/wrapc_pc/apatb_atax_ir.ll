; ModuleID = '/home/bruno/Desktop/benchmarks/atax/proj_atax/solution1/.autopilot/db/a.g.ld.6.user.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define void @apatb_atax_ir(float* noalias nonnull %A, float* noalias nonnull %x, float* noalias nonnull %y) local_unnamed_addr #0 {
entry:
  %A_copy = alloca [256 x float], align 512
  %x_copy = alloca [16 x float], align 512
  %y_copy = alloca [16 x float], align 512
  %0 = bitcast float* %A to [256 x float]*
  %1 = bitcast float* %x to [16 x float]*
  %2 = bitcast float* %y to [16 x float]*
  call fastcc void @copy_in([256 x float]* nonnull %0, [256 x float]* nonnull align 512 %A_copy, [16 x float]* nonnull %1, [16 x float]* nonnull align 512 %x_copy, [16 x float]* nonnull %2, [16 x float]* nonnull align 512 %y_copy)
  %3 = getelementptr inbounds [256 x float], [256 x float]* %A_copy, i32 0, i32 0
  %4 = getelementptr inbounds [16 x float], [16 x float]* %x_copy, i32 0, i32 0
  %5 = getelementptr inbounds [16 x float], [16 x float]* %y_copy, i32 0, i32 0
  call void @apatb_atax_hw(float* %3, float* %4, float* %5)
  call void @copy_back([256 x float]* %0, [256 x float]* %A_copy, [16 x float]* %1, [16 x float]* %x_copy, [16 x float]* %2, [16 x float]* %y_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([256 x float]* noalias readonly, [256 x float]* noalias align 512, [16 x float]* noalias readonly, [16 x float]* noalias align 512, [16 x float]* noalias readonly, [16 x float]* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a256f32([256 x float]* align 512 %1, [256 x float]* %0)
  call fastcc void @onebyonecpy_hls.p0a16f32([16 x float]* align 512 %3, [16 x float]* %2)
  call fastcc void @onebyonecpy_hls.p0a16f32([16 x float]* align 512 %5, [16 x float]* %4)
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
define internal fastcc void @onebyonecpy_hls.p0a16f32([16 x float]* noalias align 512, [16 x float]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [16 x float]* %0, null
  %3 = icmp eq [16 x float]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [16 x float], [16 x float]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [16 x float], [16 x float]* %1, i64 0, i64 %for.loop.idx1
  %5 = load float, float* %src.addr, align 4
  store float %5, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 16
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([256 x float]* noalias, [256 x float]* noalias readonly align 512, [16 x float]* noalias, [16 x float]* noalias readonly align 512, [16 x float]* noalias, [16 x float]* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a256f32([256 x float]* %0, [256 x float]* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0a16f32([16 x float]* %2, [16 x float]* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0a16f32([16 x float]* %4, [16 x float]* align 512 %5)
  ret void
}

declare void @apatb_atax_hw(float*, float*, float*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([256 x float]* noalias, [256 x float]* noalias readonly align 512, [16 x float]* noalias, [16 x float]* noalias readonly align 512, [16 x float]* noalias, [16 x float]* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a256f32([256 x float]* %0, [256 x float]* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0a16f32([16 x float]* %2, [16 x float]* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0a16f32([16 x float]* %4, [16 x float]* align 512 %5)
  ret void
}

define void @atax_hw_stub_wrapper(float*, float*, float*) #4 {
entry:
  %3 = bitcast float* %0 to [256 x float]*
  %4 = bitcast float* %1 to [16 x float]*
  %5 = bitcast float* %2 to [16 x float]*
  call void @copy_out([256 x float]* null, [256 x float]* %3, [16 x float]* null, [16 x float]* %4, [16 x float]* null, [16 x float]* %5)
  %6 = bitcast [256 x float]* %3 to float*
  %7 = bitcast [16 x float]* %4 to float*
  %8 = bitcast [16 x float]* %5 to float*
  call void @atax_hw_stub(float* %6, float* %7, float* %8)
  call void @copy_in([256 x float]* null, [256 x float]* %3, [16 x float]* null, [16 x float]* %4, [16 x float]* null, [16 x float]* %5)
  ret void
}

declare void @atax_hw_stub(float*, float*, float*)

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
