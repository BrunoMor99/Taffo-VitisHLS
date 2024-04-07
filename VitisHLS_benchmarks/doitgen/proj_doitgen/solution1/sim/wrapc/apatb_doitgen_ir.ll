; ModuleID = '/home/bruno/Desktop/benchmarks/doitgen/proj_doitgen/solution1/.autopilot/db/a.g.ld.6.user.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #0

; Function Attrs: noinline
define void @apatb_doitgen_ir(float* noalias nonnull %A, float* noalias nonnull %C, float* noalias nocapture nonnull %sum) local_unnamed_addr #1 {
entry:
  %malloccall_0 = call i8* @malloc(i64 4096)
  %malloccall_1 = call i8* @malloc(i64 4096)
  %malloccall_2 = call i8* @malloc(i64 4096)
  %malloccall_3 = call i8* @malloc(i64 4096)
  %A_copy_0 = bitcast i8* %malloccall_0 to [1024 x float]*
  %A_copy_1 = bitcast i8* %malloccall_1 to [1024 x float]*
  %A_copy_2 = bitcast i8* %malloccall_2 to [1024 x float]*
  %A_copy_3 = bitcast i8* %malloccall_3 to [1024 x float]*
  %C_copy_0 = alloca [64 x float], align 512
  %C_copy_1 = alloca [64 x float], align 512
  %C_copy_2 = alloca [64 x float], align 512
  %C_copy_3 = alloca [64 x float], align 512
  %sum_copy = alloca [16 x float], align 512
  %0 = bitcast float* %A to [4096 x float]*
  %1 = bitcast float* %C to [256 x float]*
  %2 = bitcast float* %sum to [16 x float]*
  call void @copy_in([4096 x float]* nonnull %0, [1024 x float]* %A_copy_0, [1024 x float]* %A_copy_1, [1024 x float]* %A_copy_2, [1024 x float]* %A_copy_3, [256 x float]* nonnull %1, [64 x float]* nonnull align 512 %C_copy_0, [64 x float]* nonnull align 512 %C_copy_1, [64 x float]* nonnull align 512 %C_copy_2, [64 x float]* nonnull align 512 %C_copy_3, [16 x float]* nonnull %2, [16 x float]* nonnull align 512 %sum_copy)
  %_0 = getelementptr [1024 x float], [1024 x float]* %A_copy_0, i32 0, i32 0
  %_1 = getelementptr [1024 x float], [1024 x float]* %A_copy_1, i32 0, i32 0
  %_2 = getelementptr [1024 x float], [1024 x float]* %A_copy_2, i32 0, i32 0
  %_3 = getelementptr [1024 x float], [1024 x float]* %A_copy_3, i32 0, i32 0
  %C_copy.gep_0 = getelementptr [64 x float], [64 x float]* %C_copy_0, i64 0, i32 0
  %C_copy.gep_1 = getelementptr [64 x float], [64 x float]* %C_copy_1, i64 0, i32 0
  %C_copy.gep_2 = getelementptr [64 x float], [64 x float]* %C_copy_2, i64 0, i32 0
  %C_copy.gep_3 = getelementptr [64 x float], [64 x float]* %C_copy_3, i64 0, i32 0
  %3 = getelementptr inbounds [16 x float], [16 x float]* %sum_copy, i32 0, i32 0
  call void @llvm.sideeffect() #6 [ "xlx_array_partition"(float* %_0, i32 998, i32 1, i32 0, i1 false) ]
  call void @llvm.sideeffect() #6 [ "xlx_array_partition"(float* %_1, i32 998, i32 1, i32 0, i1 false) ]
  call void @llvm.sideeffect() #6 [ "xlx_array_partition"(float* %_2, i32 998, i32 1, i32 0, i1 false) ]
  call void @llvm.sideeffect() #6 [ "xlx_array_partition"(float* %_3, i32 998, i32 1, i32 0, i1 false) ]
  call void @llvm.sideeffect() #6 [ "xlx_array_partition"(float* %C_copy.gep_0, i32 998, i32 1, i32 0, i1 false) ]
  call void @llvm.sideeffect() #6 [ "xlx_array_partition"(float* %C_copy.gep_1, i32 998, i32 1, i32 0, i1 false) ]
  call void @llvm.sideeffect() #6 [ "xlx_array_partition"(float* %C_copy.gep_2, i32 998, i32 1, i32 0, i1 false) ]
  call void @llvm.sideeffect() #6 [ "xlx_array_partition"(float* %C_copy.gep_3, i32 998, i32 1, i32 0, i1 false) ]
  call void @apatb_doitgen_hw(float* %_0, float* %C_copy.gep_0, float* %3)
  call void @copy_back([4096 x float]* %0, [1024 x float]* %A_copy_0, [1024 x float]* %A_copy_1, [1024 x float]* %A_copy_2, [1024 x float]* %A_copy_3, [256 x float]* %1, [64 x float]* %C_copy_0, [64 x float]* %C_copy_1, [64 x float]* %C_copy_2, [64 x float]* %C_copy_3, [16 x float]* %2, [16 x float]* %sum_copy)
  call void @free(i8* %malloccall_0)
  call void @free(i8* %malloccall_1)
  call void @free(i8* %malloccall_2)
  call void @free(i8* %malloccall_3)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

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

declare void @free(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a4096f32.2.3([1024 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.0" %_0, [1024 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.1" %_1, [1024 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.2" %_2, [1024 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.3" %_3, [4096 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") #2 {
entry:
  %1 = icmp eq [1024 x float]* %_0, null
  %2 = icmp eq [4096 x float]* %0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %dst.addr.exit, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %dst.addr.exit ]
  %4 = udiv i64 %for.loop.idx1, 1024
  %5 = urem i64 %for.loop.idx1, 1024
  %dst.addr_0 = getelementptr [1024 x float], [1024 x float]* %_0, i64 0, i64 %5
  %dst.addr_1 = getelementptr [1024 x float], [1024 x float]* %_1, i64 0, i64 %5
  %dst.addr_2 = getelementptr [1024 x float], [1024 x float]* %_2, i64 0, i64 %5
  %dst.addr_3 = getelementptr [1024 x float], [1024 x float]* %_3, i64 0, i64 %5
  %src.addr = getelementptr [4096 x float], [4096 x float]* %0, i64 0, i64 %for.loop.idx1
  %6 = load float, float* %src.addr, align 4
  %7 = trunc i64 %4 to i2
  switch i2 %7, label %dst.addr.case.3 [
    i2 0, label %dst.addr.case.0
    i2 1, label %dst.addr.case.1
    i2 -2, label %dst.addr.case.2
  ]

dst.addr.case.0:                                  ; preds = %for.loop
  store float %6, float* %dst.addr_0, align 4
  br label %dst.addr.exit

dst.addr.case.1:                                  ; preds = %for.loop
  store float %6, float* %dst.addr_1, align 4
  br label %dst.addr.exit

dst.addr.case.2:                                  ; preds = %for.loop
  store float %6, float* %dst.addr_2, align 4
  br label %dst.addr.exit

dst.addr.case.3:                                  ; preds = %for.loop
  store float %6, float* %dst.addr_3, align 4
  br label %dst.addr.exit

dst.addr.exit:                                    ; preds = %dst.addr.case.3, %dst.addr.case.2, %dst.addr.case.1, %dst.addr.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 4096
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %dst.addr.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a256f32.4.5([64 x float]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.0" %_0, [64 x float]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.1" %_1, [64 x float]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.2" %_2, [64 x float]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.3" %_3, [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") #2 {
entry:
  %1 = icmp eq [64 x float]* %_0, null
  %2 = icmp eq [256 x float]* %0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %dst.addr.exit, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %dst.addr.exit ]
  %4 = udiv i64 %for.loop.idx1, 64
  %5 = urem i64 %for.loop.idx1, 64
  %dst.addr_0 = getelementptr [64 x float], [64 x float]* %_0, i64 0, i64 %5
  %dst.addr_1 = getelementptr [64 x float], [64 x float]* %_1, i64 0, i64 %5
  %dst.addr_2 = getelementptr [64 x float], [64 x float]* %_2, i64 0, i64 %5
  %dst.addr_3 = getelementptr [64 x float], [64 x float]* %_3, i64 0, i64 %5
  %src.addr = getelementptr [256 x float], [256 x float]* %0, i64 0, i64 %for.loop.idx1
  %6 = load float, float* %src.addr, align 4
  %7 = trunc i64 %4 to i2
  switch i2 %7, label %dst.addr.case.3 [
    i2 0, label %dst.addr.case.0
    i2 1, label %dst.addr.case.1
    i2 -2, label %dst.addr.case.2
  ]

dst.addr.case.0:                                  ; preds = %for.loop
  store float %6, float* %dst.addr_0, align 4
  br label %dst.addr.exit

dst.addr.case.1:                                  ; preds = %for.loop
  store float %6, float* %dst.addr_1, align 4
  br label %dst.addr.exit

dst.addr.case.2:                                  ; preds = %for.loop
  store float %6, float* %dst.addr_2, align 4
  br label %dst.addr.exit

dst.addr.case.3:                                  ; preds = %for.loop
  store float %6, float* %dst.addr_3, align 4
  br label %dst.addr.exit

dst.addr.exit:                                    ; preds = %dst.addr.case.3, %dst.addr.case.2, %dst.addr.case.1, %dst.addr.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 256
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %dst.addr.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_in([4096 x float]* noalias readonly "orig.arg.no"="0", [1024 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %_0, [1024 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1" %_1, [1024 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.2" %_2, [1024 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.3" %_3, [256 x float]* noalias readonly "orig.arg.no"="2", [64 x float]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.0" %_01, [64 x float]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.1" %_12, [64 x float]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.2" %_23, [64 x float]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.3" %_34, [16 x float]* noalias readonly "orig.arg.no"="4", [16 x float]* noalias align 512 "orig.arg.no"="5") #3 {
entry:
  call void @onebyonecpy_hls.p0a4096f32.2.3([1024 x float]* %_0, [1024 x float]* %_1, [1024 x float]* %_2, [1024 x float]* %_3, [4096 x float]* %0)
  call void @onebyonecpy_hls.p0a256f32.4.5([64 x float]* align 512 %_01, [64 x float]* align 512 %_12, [64 x float]* align 512 %_23, [64 x float]* align 512 %_34, [256 x float]* %1)
  call fastcc void @onebyonecpy_hls.p0a16f32([16 x float]* align 512 %3, [16 x float]* %2)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a4096f32.8.9([4096 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", [1024 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %_0, [1024 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1" %_1, [1024 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.2" %_2, [1024 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.3" %_3) #2 {
entry:
  %1 = icmp eq [4096 x float]* %0, null
  %2 = icmp eq [1024 x float]* %_0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %src.addr.exit, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %src.addr.exit ]
  %dst.addr = getelementptr [4096 x float], [4096 x float]* %0, i64 0, i64 %for.loop.idx1
  %4 = udiv i64 %for.loop.idx1, 1024
  %5 = urem i64 %for.loop.idx1, 1024
  %src.addr_0 = getelementptr [1024 x float], [1024 x float]* %_0, i64 0, i64 %5
  %src.addr_1 = getelementptr [1024 x float], [1024 x float]* %_1, i64 0, i64 %5
  %src.addr_2 = getelementptr [1024 x float], [1024 x float]* %_2, i64 0, i64 %5
  %src.addr_3 = getelementptr [1024 x float], [1024 x float]* %_3, i64 0, i64 %5
  %6 = trunc i64 %4 to i2
  switch i2 %6, label %src.addr.case.3 [
    i2 0, label %src.addr.case.0
    i2 1, label %src.addr.case.1
    i2 -2, label %src.addr.case.2
  ]

src.addr.case.0:                                  ; preds = %for.loop
  %_01 = load float, float* %src.addr_0, align 4
  br label %src.addr.exit

src.addr.case.1:                                  ; preds = %for.loop
  %_12 = load float, float* %src.addr_1, align 4
  br label %src.addr.exit

src.addr.case.2:                                  ; preds = %for.loop
  %_23 = load float, float* %src.addr_2, align 4
  br label %src.addr.exit

src.addr.case.3:                                  ; preds = %for.loop
  %_34 = load float, float* %src.addr_3, align 4
  br label %src.addr.exit

src.addr.exit:                                    ; preds = %src.addr.case.3, %src.addr.case.2, %src.addr.case.1, %src.addr.case.0
  %7 = phi float [ %_01, %src.addr.case.0 ], [ %_12, %src.addr.case.1 ], [ %_23, %src.addr.case.2 ], [ %_34, %src.addr.case.3 ]
  store float %7, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 4096
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %src.addr.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a256f32.10.11([256 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", [64 x float]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %_0, [64 x float]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1" %_1, [64 x float]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.2" %_2, [64 x float]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.3" %_3) #2 {
entry:
  %1 = icmp eq [256 x float]* %0, null
  %2 = icmp eq [64 x float]* %_0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %src.addr.exit, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %src.addr.exit ]
  %dst.addr = getelementptr [256 x float], [256 x float]* %0, i64 0, i64 %for.loop.idx1
  %4 = udiv i64 %for.loop.idx1, 64
  %5 = urem i64 %for.loop.idx1, 64
  %src.addr_0 = getelementptr [64 x float], [64 x float]* %_0, i64 0, i64 %5
  %src.addr_1 = getelementptr [64 x float], [64 x float]* %_1, i64 0, i64 %5
  %src.addr_2 = getelementptr [64 x float], [64 x float]* %_2, i64 0, i64 %5
  %src.addr_3 = getelementptr [64 x float], [64 x float]* %_3, i64 0, i64 %5
  %6 = trunc i64 %4 to i2
  switch i2 %6, label %src.addr.case.3 [
    i2 0, label %src.addr.case.0
    i2 1, label %src.addr.case.1
    i2 -2, label %src.addr.case.2
  ]

src.addr.case.0:                                  ; preds = %for.loop
  %_01 = load float, float* %src.addr_0, align 4
  br label %src.addr.exit

src.addr.case.1:                                  ; preds = %for.loop
  %_12 = load float, float* %src.addr_1, align 4
  br label %src.addr.exit

src.addr.case.2:                                  ; preds = %for.loop
  %_23 = load float, float* %src.addr_2, align 4
  br label %src.addr.exit

src.addr.case.3:                                  ; preds = %for.loop
  %_34 = load float, float* %src.addr_3, align 4
  br label %src.addr.exit

src.addr.exit:                                    ; preds = %src.addr.case.3, %src.addr.case.2, %src.addr.case.1, %src.addr.case.0
  %7 = phi float [ %_01, %src.addr.case.0 ], [ %_12, %src.addr.case.1 ], [ %_23, %src.addr.case.2 ], [ %_34, %src.addr.case.3 ]
  store float %7, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 256
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %src.addr.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_out([4096 x float]* noalias "orig.arg.no"="0", [1024 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %_0, [1024 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1" %_1, [1024 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.2" %_2, [1024 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.3" %_3, [256 x float]* noalias "orig.arg.no"="2", [64 x float]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.0" %_01, [64 x float]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.1" %_12, [64 x float]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.2" %_23, [64 x float]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.3" %_34, [16 x float]* noalias "orig.arg.no"="4", [16 x float]* noalias readonly align 512 "orig.arg.no"="5") #4 {
entry:
  call void @onebyonecpy_hls.p0a4096f32.8.9([4096 x float]* %0, [1024 x float]* %_0, [1024 x float]* %_1, [1024 x float]* %_2, [1024 x float]* %_3)
  call void @onebyonecpy_hls.p0a256f32.10.11([256 x float]* %1, [64 x float]* align 512 %_01, [64 x float]* align 512 %_12, [64 x float]* align 512 %_23, [64 x float]* align 512 %_34)
  call fastcc void @onebyonecpy_hls.p0a16f32([16 x float]* %2, [16 x float]* align 512 %3)
  ret void
}

declare void @apatb_doitgen_hw(float*, float*, float*)

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_back([4096 x float]* noalias "orig.arg.no"="0", [1024 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %_0, [1024 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1" %_1, [1024 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.2" %_2, [1024 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.3" %_3, [256 x float]* noalias "orig.arg.no"="2", [64 x float]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.0" %_01, [64 x float]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.1" %_12, [64 x float]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.2" %_23, [64 x float]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.3" %_34, [16 x float]* noalias "orig.arg.no"="4", [16 x float]* noalias readonly align 512 "orig.arg.no"="5") #4 {
entry:
  call void @onebyonecpy_hls.p0a4096f32.8.9([4096 x float]* %0, [1024 x float]* %_0, [1024 x float]* %_1, [1024 x float]* %_2, [1024 x float]* %_3)
  call void @onebyonecpy_hls.p0a256f32.10.11([256 x float]* %1, [64 x float]* align 512 %_01, [64 x float]* align 512 %_12, [64 x float]* align 512 %_23, [64 x float]* align 512 %_34)
  call fastcc void @onebyonecpy_hls.p0a16f32([16 x float]* %2, [16 x float]* align 512 %3)
  ret void
}

define void @doitgen_hw_stub_wrapper(float*, float*, float*) #5 {
entry:
  %malloccall = tail call i8* @malloc(i64 16384)
  %3 = bitcast i8* %malloccall to [4096 x float]*
  %4 = alloca [256 x float]
  %5 = bitcast float* %0 to [1024 x float]*
  %6 = bitcast float* %1 to [64 x float]*
  %7 = bitcast float* %2 to [16 x float]*
  call void @copy_out([4096 x float]* %3, [1024 x float]* %5, [1024 x float]* null, [1024 x float]* null, [1024 x float]* null, [256 x float]* %4, [64 x float]* %6, [64 x float]* null, [64 x float]* null, [64 x float]* null, [16 x float]* null, [16 x float]* %7)
  %8 = bitcast [4096 x float]* %3 to float*
  %9 = bitcast [256 x float]* %4 to float*
  %10 = bitcast [16 x float]* %7 to float*
  call void @doitgen_hw_stub(float* %8, float* %9, float* %10)
  call void @copy_in([4096 x float]* %3, [1024 x float]* %5, [1024 x float]* null, [1024 x float]* null, [1024 x float]* null, [256 x float]* %4, [64 x float]* %6, [64 x float]* null, [64 x float]* null, [64 x float]* null, [16 x float]* null, [16 x float]* %7)
  ret void
}

declare void @doitgen_hw_stub(float*, float*, float*)

attributes #0 = { inaccessiblememonly nounwind }
attributes #1 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #4 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #5 = { "fpga.wrapper.func"="stub" }
attributes #6 = { inaccessiblememonly nounwind "xlx.source"="user" }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 0}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
