; ModuleID = '/home/bruno/Desktop/benchmarks/vector_scalar/proj_vs_no_taffo/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: noinline
define i32 @apatb_vs_ir(float* noalias nocapture nonnull %A, float %alpha) local_unnamed_addr #0 {
entry:
  %A_copy_0 = alloca float, align 512
  %A_copy_1 = alloca float, align 512
  %A_copy_2 = alloca float, align 512
  %A_copy_3 = alloca float, align 512
  %A_copy_4 = alloca float, align 512
  %A_copy_5 = alloca float, align 512
  %A_copy_6 = alloca float, align 512
  %A_copy_7 = alloca float, align 512
  %A_copy_8 = alloca float, align 512
  %A_copy_9 = alloca float, align 512
  %A_copy_10 = alloca float, align 512
  %A_copy_11 = alloca float, align 512
  %A_copy_12 = alloca float, align 512
  %A_copy_13 = alloca float, align 512
  %A_copy_14 = alloca float, align 512
  %A_copy_15 = alloca float, align 512
  %A_copy_16 = alloca float, align 512
  %A_copy_17 = alloca float, align 512
  %A_copy_18 = alloca float, align 512
  %A_copy_19 = alloca float, align 512
  %A_copy_20 = alloca float, align 512
  %A_copy_21 = alloca float, align 512
  %A_copy_22 = alloca float, align 512
  %A_copy_23 = alloca float, align 512
  %A_copy_24 = alloca float, align 512
  %A_copy_25 = alloca float, align 512
  %A_copy_26 = alloca float, align 512
  %A_copy_27 = alloca float, align 512
  %A_copy_28 = alloca float, align 512
  %A_copy_29 = alloca float, align 512
  %A_copy_30 = alloca float, align 512
  %A_copy_31 = alloca float, align 512
  %A_copy_32 = alloca float, align 512
  %A_copy_33 = alloca float, align 512
  %A_copy_34 = alloca float, align 512
  %A_copy_35 = alloca float, align 512
  %A_copy_36 = alloca float, align 512
  %A_copy_37 = alloca float, align 512
  %A_copy_38 = alloca float, align 512
  %A_copy_39 = alloca float, align 512
  %A_copy_40 = alloca float, align 512
  %A_copy_41 = alloca float, align 512
  %A_copy_42 = alloca float, align 512
  %A_copy_43 = alloca float, align 512
  %A_copy_44 = alloca float, align 512
  %A_copy_45 = alloca float, align 512
  %A_copy_46 = alloca float, align 512
  %A_copy_47 = alloca float, align 512
  %A_copy_48 = alloca float, align 512
  %A_copy_49 = alloca float, align 512
  %A_copy_50 = alloca float, align 512
  %A_copy_51 = alloca float, align 512
  %A_copy_52 = alloca float, align 512
  %A_copy_53 = alloca float, align 512
  %A_copy_54 = alloca float, align 512
  %A_copy_55 = alloca float, align 512
  %A_copy_56 = alloca float, align 512
  %A_copy_57 = alloca float, align 512
  %A_copy_58 = alloca float, align 512
  %A_copy_59 = alloca float, align 512
  %A_copy_60 = alloca float, align 512
  %A_copy_61 = alloca float, align 512
  %A_copy_62 = alloca float, align 512
  %A_copy_63 = alloca float, align 512
  %0 = bitcast float* %A to [64 x float]*
  call void @copy_in([64 x float]* nonnull %0, float* nonnull align 512 %A_copy_0, float* nonnull align 512 %A_copy_1, float* nonnull align 512 %A_copy_2, float* nonnull align 512 %A_copy_3, float* nonnull align 512 %A_copy_4, float* nonnull align 512 %A_copy_5, float* nonnull align 512 %A_copy_6, float* nonnull align 512 %A_copy_7, float* nonnull align 512 %A_copy_8, float* nonnull align 512 %A_copy_9, float* nonnull align 512 %A_copy_10, float* nonnull align 512 %A_copy_11, float* nonnull align 512 %A_copy_12, float* nonnull align 512 %A_copy_13, float* nonnull align 512 %A_copy_14, float* nonnull align 512 %A_copy_15, float* nonnull align 512 %A_copy_16, float* nonnull align 512 %A_copy_17, float* nonnull align 512 %A_copy_18, float* nonnull align 512 %A_copy_19, float* nonnull align 512 %A_copy_20, float* nonnull align 512 %A_copy_21, float* nonnull align 512 %A_copy_22, float* nonnull align 512 %A_copy_23, float* nonnull align 512 %A_copy_24, float* nonnull align 512 %A_copy_25, float* nonnull align 512 %A_copy_26, float* nonnull align 512 %A_copy_27, float* nonnull align 512 %A_copy_28, float* nonnull align 512 %A_copy_29, float* nonnull align 512 %A_copy_30, float* nonnull align 512 %A_copy_31, float* nonnull align 512 %A_copy_32, float* nonnull align 512 %A_copy_33, float* nonnull align 512 %A_copy_34, float* nonnull align 512 %A_copy_35, float* nonnull align 512 %A_copy_36, float* nonnull align 512 %A_copy_37, float* nonnull align 512 %A_copy_38, float* nonnull align 512 %A_copy_39, float* nonnull align 512 %A_copy_40, float* nonnull align 512 %A_copy_41, float* nonnull align 512 %A_copy_42, float* nonnull align 512 %A_copy_43, float* nonnull align 512 %A_copy_44, float* nonnull align 512 %A_copy_45, float* nonnull align 512 %A_copy_46, float* nonnull align 512 %A_copy_47, float* nonnull align 512 %A_copy_48, float* nonnull align 512 %A_copy_49, float* nonnull align 512 %A_copy_50, float* nonnull align 512 %A_copy_51, float* nonnull align 512 %A_copy_52, float* nonnull align 512 %A_copy_53, float* nonnull align 512 %A_copy_54, float* nonnull align 512 %A_copy_55, float* nonnull align 512 %A_copy_56, float* nonnull align 512 %A_copy_57, float* nonnull align 512 %A_copy_58, float* nonnull align 512 %A_copy_59, float* nonnull align 512 %A_copy_60, float* nonnull align 512 %A_copy_61, float* nonnull align 512 %A_copy_62, float* nonnull align 512 %A_copy_63)
  %1 = call i32 @apatb_vs_hw(float* %A_copy_0, float* %A_copy_1, float* %A_copy_2, float* %A_copy_3, float* %A_copy_4, float* %A_copy_5, float* %A_copy_6, float* %A_copy_7, float* %A_copy_8, float* %A_copy_9, float* %A_copy_10, float* %A_copy_11, float* %A_copy_12, float* %A_copy_13, float* %A_copy_14, float* %A_copy_15, float* %A_copy_16, float* %A_copy_17, float* %A_copy_18, float* %A_copy_19, float* %A_copy_20, float* %A_copy_21, float* %A_copy_22, float* %A_copy_23, float* %A_copy_24, float* %A_copy_25, float* %A_copy_26, float* %A_copy_27, float* %A_copy_28, float* %A_copy_29, float* %A_copy_30, float* %A_copy_31, float* %A_copy_32, float* %A_copy_33, float* %A_copy_34, float* %A_copy_35, float* %A_copy_36, float* %A_copy_37, float* %A_copy_38, float* %A_copy_39, float* %A_copy_40, float* %A_copy_41, float* %A_copy_42, float* %A_copy_43, float* %A_copy_44, float* %A_copy_45, float* %A_copy_46, float* %A_copy_47, float* %A_copy_48, float* %A_copy_49, float* %A_copy_50, float* %A_copy_51, float* %A_copy_52, float* %A_copy_53, float* %A_copy_54, float* %A_copy_55, float* %A_copy_56, float* %A_copy_57, float* %A_copy_58, float* %A_copy_59, float* %A_copy_60, float* %A_copy_61, float* %A_copy_62, float* %A_copy_63, float %alpha)
  call void @copy_back([64 x float]* %0, float* %A_copy_0, float* %A_copy_1, float* %A_copy_2, float* %A_copy_3, float* %A_copy_4, float* %A_copy_5, float* %A_copy_6, float* %A_copy_7, float* %A_copy_8, float* %A_copy_9, float* %A_copy_10, float* %A_copy_11, float* %A_copy_12, float* %A_copy_13, float* %A_copy_14, float* %A_copy_15, float* %A_copy_16, float* %A_copy_17, float* %A_copy_18, float* %A_copy_19, float* %A_copy_20, float* %A_copy_21, float* %A_copy_22, float* %A_copy_23, float* %A_copy_24, float* %A_copy_25, float* %A_copy_26, float* %A_copy_27, float* %A_copy_28, float* %A_copy_29, float* %A_copy_30, float* %A_copy_31, float* %A_copy_32, float* %A_copy_33, float* %A_copy_34, float* %A_copy_35, float* %A_copy_36, float* %A_copy_37, float* %A_copy_38, float* %A_copy_39, float* %A_copy_40, float* %A_copy_41, float* %A_copy_42, float* %A_copy_43, float* %A_copy_44, float* %A_copy_45, float* %A_copy_46, float* %A_copy_47, float* %A_copy_48, float* %A_copy_49, float* %A_copy_50, float* %A_copy_51, float* %A_copy_52, float* %A_copy_53, float* %A_copy_54, float* %A_copy_55, float* %A_copy_56, float* %A_copy_57, float* %A_copy_58, float* %A_copy_59, float* %A_copy_60, float* %A_copy_61, float* %A_copy_62, float* %A_copy_63)
  ret i32 %1
}

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a64f32.3.4(float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.0" %_0, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.1" %_1, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.2" %_2, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.3" %_3, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.4" %_4, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.5" %_5, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.6" %_6, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.7" %_7, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.8" %_8, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.9" %_9, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.10" %_10, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.11" %_11, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.12" %_12, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.13" %_13, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.14" %_14, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.15" %_15, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.16" %_16, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.17" %_17, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.18" %_18, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.19" %_19, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.20" %_20, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.21" %_21, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.22" %_22, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.23" %_23, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.24" %_24, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.25" %_25, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.26" %_26, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.27" %_27, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.28" %_28, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.29" %_29, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.30" %_30, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.31" %_31, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.32" %_32, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.33" %_33, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.34" %_34, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.35" %_35, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.36" %_36, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.37" %_37, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.38" %_38, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.39" %_39, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.40" %_40, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.41" %_41, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.42" %_42, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.43" %_43, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.44" %_44, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.45" %_45, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.46" %_46, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.47" %_47, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.48" %_48, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.49" %_49, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.50" %_50, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.51" %_51, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.52" %_52, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.53" %_53, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.54" %_54, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.55" %_55, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.56" %_56, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.57" %_57, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.58" %_58, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.59" %_59, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.60" %_60, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.61" %_61, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.62" %_62, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.63" %_63, [64 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") #1 {
entry:
  %1 = icmp eq float* %_0, null
  %2 = icmp eq [64 x float]* %0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %dst.addr.exit, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %dst.addr.exit ]
  %src.addr = getelementptr [64 x float], [64 x float]* %0, i64 0, i64 %for.loop.idx1
  %4 = load float, float* %src.addr, align 4
  %5 = trunc i64 %for.loop.idx1 to i6
  switch i6 %5, label %dst.addr.case.63 [
    i6 0, label %dst.addr.case.0
    i6 1, label %dst.addr.case.1
    i6 2, label %dst.addr.case.2
    i6 3, label %dst.addr.case.3
    i6 4, label %dst.addr.case.4
    i6 5, label %dst.addr.case.5
    i6 6, label %dst.addr.case.6
    i6 7, label %dst.addr.case.7
    i6 8, label %dst.addr.case.8
    i6 9, label %dst.addr.case.9
    i6 10, label %dst.addr.case.10
    i6 11, label %dst.addr.case.11
    i6 12, label %dst.addr.case.12
    i6 13, label %dst.addr.case.13
    i6 14, label %dst.addr.case.14
    i6 15, label %dst.addr.case.15
    i6 16, label %dst.addr.case.16
    i6 17, label %dst.addr.case.17
    i6 18, label %dst.addr.case.18
    i6 19, label %dst.addr.case.19
    i6 20, label %dst.addr.case.20
    i6 21, label %dst.addr.case.21
    i6 22, label %dst.addr.case.22
    i6 23, label %dst.addr.case.23
    i6 24, label %dst.addr.case.24
    i6 25, label %dst.addr.case.25
    i6 26, label %dst.addr.case.26
    i6 27, label %dst.addr.case.27
    i6 28, label %dst.addr.case.28
    i6 29, label %dst.addr.case.29
    i6 30, label %dst.addr.case.30
    i6 31, label %dst.addr.case.31
    i6 -32, label %dst.addr.case.32
    i6 -31, label %dst.addr.case.33
    i6 -30, label %dst.addr.case.34
    i6 -29, label %dst.addr.case.35
    i6 -28, label %dst.addr.case.36
    i6 -27, label %dst.addr.case.37
    i6 -26, label %dst.addr.case.38
    i6 -25, label %dst.addr.case.39
    i6 -24, label %dst.addr.case.40
    i6 -23, label %dst.addr.case.41
    i6 -22, label %dst.addr.case.42
    i6 -21, label %dst.addr.case.43
    i6 -20, label %dst.addr.case.44
    i6 -19, label %dst.addr.case.45
    i6 -18, label %dst.addr.case.46
    i6 -17, label %dst.addr.case.47
    i6 -16, label %dst.addr.case.48
    i6 -15, label %dst.addr.case.49
    i6 -14, label %dst.addr.case.50
    i6 -13, label %dst.addr.case.51
    i6 -12, label %dst.addr.case.52
    i6 -11, label %dst.addr.case.53
    i6 -10, label %dst.addr.case.54
    i6 -9, label %dst.addr.case.55
    i6 -8, label %dst.addr.case.56
    i6 -7, label %dst.addr.case.57
    i6 -6, label %dst.addr.case.58
    i6 -5, label %dst.addr.case.59
    i6 -4, label %dst.addr.case.60
    i6 -3, label %dst.addr.case.61
    i6 -2, label %dst.addr.case.62
  ]

dst.addr.case.0:                                  ; preds = %for.loop
  store float %4, float* %_0, align 512
  br label %dst.addr.exit

dst.addr.case.1:                                  ; preds = %for.loop
  store float %4, float* %_1, align 512
  br label %dst.addr.exit

dst.addr.case.2:                                  ; preds = %for.loop
  store float %4, float* %_2, align 512
  br label %dst.addr.exit

dst.addr.case.3:                                  ; preds = %for.loop
  store float %4, float* %_3, align 512
  br label %dst.addr.exit

dst.addr.case.4:                                  ; preds = %for.loop
  store float %4, float* %_4, align 512
  br label %dst.addr.exit

dst.addr.case.5:                                  ; preds = %for.loop
  store float %4, float* %_5, align 512
  br label %dst.addr.exit

dst.addr.case.6:                                  ; preds = %for.loop
  store float %4, float* %_6, align 512
  br label %dst.addr.exit

dst.addr.case.7:                                  ; preds = %for.loop
  store float %4, float* %_7, align 512
  br label %dst.addr.exit

dst.addr.case.8:                                  ; preds = %for.loop
  store float %4, float* %_8, align 512
  br label %dst.addr.exit

dst.addr.case.9:                                  ; preds = %for.loop
  store float %4, float* %_9, align 512
  br label %dst.addr.exit

dst.addr.case.10:                                 ; preds = %for.loop
  store float %4, float* %_10, align 512
  br label %dst.addr.exit

dst.addr.case.11:                                 ; preds = %for.loop
  store float %4, float* %_11, align 512
  br label %dst.addr.exit

dst.addr.case.12:                                 ; preds = %for.loop
  store float %4, float* %_12, align 512
  br label %dst.addr.exit

dst.addr.case.13:                                 ; preds = %for.loop
  store float %4, float* %_13, align 512
  br label %dst.addr.exit

dst.addr.case.14:                                 ; preds = %for.loop
  store float %4, float* %_14, align 512
  br label %dst.addr.exit

dst.addr.case.15:                                 ; preds = %for.loop
  store float %4, float* %_15, align 512
  br label %dst.addr.exit

dst.addr.case.16:                                 ; preds = %for.loop
  store float %4, float* %_16, align 512
  br label %dst.addr.exit

dst.addr.case.17:                                 ; preds = %for.loop
  store float %4, float* %_17, align 512
  br label %dst.addr.exit

dst.addr.case.18:                                 ; preds = %for.loop
  store float %4, float* %_18, align 512
  br label %dst.addr.exit

dst.addr.case.19:                                 ; preds = %for.loop
  store float %4, float* %_19, align 512
  br label %dst.addr.exit

dst.addr.case.20:                                 ; preds = %for.loop
  store float %4, float* %_20, align 512
  br label %dst.addr.exit

dst.addr.case.21:                                 ; preds = %for.loop
  store float %4, float* %_21, align 512
  br label %dst.addr.exit

dst.addr.case.22:                                 ; preds = %for.loop
  store float %4, float* %_22, align 512
  br label %dst.addr.exit

dst.addr.case.23:                                 ; preds = %for.loop
  store float %4, float* %_23, align 512
  br label %dst.addr.exit

dst.addr.case.24:                                 ; preds = %for.loop
  store float %4, float* %_24, align 512
  br label %dst.addr.exit

dst.addr.case.25:                                 ; preds = %for.loop
  store float %4, float* %_25, align 512
  br label %dst.addr.exit

dst.addr.case.26:                                 ; preds = %for.loop
  store float %4, float* %_26, align 512
  br label %dst.addr.exit

dst.addr.case.27:                                 ; preds = %for.loop
  store float %4, float* %_27, align 512
  br label %dst.addr.exit

dst.addr.case.28:                                 ; preds = %for.loop
  store float %4, float* %_28, align 512
  br label %dst.addr.exit

dst.addr.case.29:                                 ; preds = %for.loop
  store float %4, float* %_29, align 512
  br label %dst.addr.exit

dst.addr.case.30:                                 ; preds = %for.loop
  store float %4, float* %_30, align 512
  br label %dst.addr.exit

dst.addr.case.31:                                 ; preds = %for.loop
  store float %4, float* %_31, align 512
  br label %dst.addr.exit

dst.addr.case.32:                                 ; preds = %for.loop
  store float %4, float* %_32, align 512
  br label %dst.addr.exit

dst.addr.case.33:                                 ; preds = %for.loop
  store float %4, float* %_33, align 512
  br label %dst.addr.exit

dst.addr.case.34:                                 ; preds = %for.loop
  store float %4, float* %_34, align 512
  br label %dst.addr.exit

dst.addr.case.35:                                 ; preds = %for.loop
  store float %4, float* %_35, align 512
  br label %dst.addr.exit

dst.addr.case.36:                                 ; preds = %for.loop
  store float %4, float* %_36, align 512
  br label %dst.addr.exit

dst.addr.case.37:                                 ; preds = %for.loop
  store float %4, float* %_37, align 512
  br label %dst.addr.exit

dst.addr.case.38:                                 ; preds = %for.loop
  store float %4, float* %_38, align 512
  br label %dst.addr.exit

dst.addr.case.39:                                 ; preds = %for.loop
  store float %4, float* %_39, align 512
  br label %dst.addr.exit

dst.addr.case.40:                                 ; preds = %for.loop
  store float %4, float* %_40, align 512
  br label %dst.addr.exit

dst.addr.case.41:                                 ; preds = %for.loop
  store float %4, float* %_41, align 512
  br label %dst.addr.exit

dst.addr.case.42:                                 ; preds = %for.loop
  store float %4, float* %_42, align 512
  br label %dst.addr.exit

dst.addr.case.43:                                 ; preds = %for.loop
  store float %4, float* %_43, align 512
  br label %dst.addr.exit

dst.addr.case.44:                                 ; preds = %for.loop
  store float %4, float* %_44, align 512
  br label %dst.addr.exit

dst.addr.case.45:                                 ; preds = %for.loop
  store float %4, float* %_45, align 512
  br label %dst.addr.exit

dst.addr.case.46:                                 ; preds = %for.loop
  store float %4, float* %_46, align 512
  br label %dst.addr.exit

dst.addr.case.47:                                 ; preds = %for.loop
  store float %4, float* %_47, align 512
  br label %dst.addr.exit

dst.addr.case.48:                                 ; preds = %for.loop
  store float %4, float* %_48, align 512
  br label %dst.addr.exit

dst.addr.case.49:                                 ; preds = %for.loop
  store float %4, float* %_49, align 512
  br label %dst.addr.exit

dst.addr.case.50:                                 ; preds = %for.loop
  store float %4, float* %_50, align 512
  br label %dst.addr.exit

dst.addr.case.51:                                 ; preds = %for.loop
  store float %4, float* %_51, align 512
  br label %dst.addr.exit

dst.addr.case.52:                                 ; preds = %for.loop
  store float %4, float* %_52, align 512
  br label %dst.addr.exit

dst.addr.case.53:                                 ; preds = %for.loop
  store float %4, float* %_53, align 512
  br label %dst.addr.exit

dst.addr.case.54:                                 ; preds = %for.loop
  store float %4, float* %_54, align 512
  br label %dst.addr.exit

dst.addr.case.55:                                 ; preds = %for.loop
  store float %4, float* %_55, align 512
  br label %dst.addr.exit

dst.addr.case.56:                                 ; preds = %for.loop
  store float %4, float* %_56, align 512
  br label %dst.addr.exit

dst.addr.case.57:                                 ; preds = %for.loop
  store float %4, float* %_57, align 512
  br label %dst.addr.exit

dst.addr.case.58:                                 ; preds = %for.loop
  store float %4, float* %_58, align 512
  br label %dst.addr.exit

dst.addr.case.59:                                 ; preds = %for.loop
  store float %4, float* %_59, align 512
  br label %dst.addr.exit

dst.addr.case.60:                                 ; preds = %for.loop
  store float %4, float* %_60, align 512
  br label %dst.addr.exit

dst.addr.case.61:                                 ; preds = %for.loop
  store float %4, float* %_61, align 512
  br label %dst.addr.exit

dst.addr.case.62:                                 ; preds = %for.loop
  store float %4, float* %_62, align 512
  br label %dst.addr.exit

dst.addr.case.63:                                 ; preds = %for.loop
  store float %4, float* %_63, align 512
  br label %dst.addr.exit

dst.addr.exit:                                    ; preds = %dst.addr.case.63, %dst.addr.case.62, %dst.addr.case.61, %dst.addr.case.60, %dst.addr.case.59, %dst.addr.case.58, %dst.addr.case.57, %dst.addr.case.56, %dst.addr.case.55, %dst.addr.case.54, %dst.addr.case.53, %dst.addr.case.52, %dst.addr.case.51, %dst.addr.case.50, %dst.addr.case.49, %dst.addr.case.48, %dst.addr.case.47, %dst.addr.case.46, %dst.addr.case.45, %dst.addr.case.44, %dst.addr.case.43, %dst.addr.case.42, %dst.addr.case.41, %dst.addr.case.40, %dst.addr.case.39, %dst.addr.case.38, %dst.addr.case.37, %dst.addr.case.36, %dst.addr.case.35, %dst.addr.case.34, %dst.addr.case.33, %dst.addr.case.32, %dst.addr.case.31, %dst.addr.case.30, %dst.addr.case.29, %dst.addr.case.28, %dst.addr.case.27, %dst.addr.case.26, %dst.addr.case.25, %dst.addr.case.24, %dst.addr.case.23, %dst.addr.case.22, %dst.addr.case.21, %dst.addr.case.20, %dst.addr.case.19, %dst.addr.case.18, %dst.addr.case.17, %dst.addr.case.16, %dst.addr.case.15, %dst.addr.case.14, %dst.addr.case.13, %dst.addr.case.12, %dst.addr.case.11, %dst.addr.case.10, %dst.addr.case.9, %dst.addr.case.8, %dst.addr.case.7, %dst.addr.case.6, %dst.addr.case.5, %dst.addr.case.4, %dst.addr.case.3, %dst.addr.case.2, %dst.addr.case.1, %dst.addr.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 64
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %dst.addr.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_in([64 x float]* noalias readonly "orig.arg.no"="0", float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %_0, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1" %_1, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.2" %_2, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.3" %_3, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.4" %_4, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.5" %_5, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.6" %_6, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.7" %_7, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.8" %_8, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.9" %_9, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.10" %_10, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.11" %_11, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.12" %_12, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.13" %_13, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.14" %_14, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.15" %_15, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.16" %_16, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.17" %_17, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.18" %_18, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.19" %_19, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.20" %_20, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.21" %_21, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.22" %_22, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.23" %_23, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.24" %_24, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.25" %_25, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.26" %_26, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.27" %_27, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.28" %_28, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.29" %_29, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.30" %_30, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.31" %_31, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.32" %_32, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.33" %_33, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.34" %_34, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.35" %_35, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.36" %_36, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.37" %_37, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.38" %_38, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.39" %_39, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.40" %_40, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.41" %_41, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.42" %_42, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.43" %_43, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.44" %_44, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.45" %_45, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.46" %_46, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.47" %_47, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.48" %_48, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.49" %_49, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.50" %_50, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.51" %_51, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.52" %_52, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.53" %_53, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.54" %_54, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.55" %_55, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.56" %_56, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.57" %_57, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.58" %_58, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.59" %_59, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.60" %_60, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.61" %_61, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.62" %_62, float* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.63" %_63) #2 {
entry:
  call void @onebyonecpy_hls.p0a64f32.3.4(float* align 512 %_0, float* align 512 %_1, float* align 512 %_2, float* align 512 %_3, float* align 512 %_4, float* align 512 %_5, float* align 512 %_6, float* align 512 %_7, float* align 512 %_8, float* align 512 %_9, float* align 512 %_10, float* align 512 %_11, float* align 512 %_12, float* align 512 %_13, float* align 512 %_14, float* align 512 %_15, float* align 512 %_16, float* align 512 %_17, float* align 512 %_18, float* align 512 %_19, float* align 512 %_20, float* align 512 %_21, float* align 512 %_22, float* align 512 %_23, float* align 512 %_24, float* align 512 %_25, float* align 512 %_26, float* align 512 %_27, float* align 512 %_28, float* align 512 %_29, float* align 512 %_30, float* align 512 %_31, float* align 512 %_32, float* align 512 %_33, float* align 512 %_34, float* align 512 %_35, float* align 512 %_36, float* align 512 %_37, float* align 512 %_38, float* align 512 %_39, float* align 512 %_40, float* align 512 %_41, float* align 512 %_42, float* align 512 %_43, float* align 512 %_44, float* align 512 %_45, float* align 512 %_46, float* align 512 %_47, float* align 512 %_48, float* align 512 %_49, float* align 512 %_50, float* align 512 %_51, float* align 512 %_52, float* align 512 %_53, float* align 512 %_54, float* align 512 %_55, float* align 512 %_56, float* align 512 %_57, float* align 512 %_58, float* align 512 %_59, float* align 512 %_60, float* align 512 %_61, float* align 512 %_62, float* align 512 %_63, [64 x float]* %0)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a64f32.9.10([64 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %_0, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1" %_1, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.2" %_2, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.3" %_3, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.4" %_4, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.5" %_5, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.6" %_6, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.7" %_7, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.8" %_8, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.9" %_9, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.10" %_10, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.11" %_11, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.12" %_12, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.13" %_13, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.14" %_14, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.15" %_15, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.16" %_16, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.17" %_17, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.18" %_18, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.19" %_19, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.20" %_20, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.21" %_21, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.22" %_22, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.23" %_23, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.24" %_24, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.25" %_25, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.26" %_26, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.27" %_27, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.28" %_28, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.29" %_29, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.30" %_30, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.31" %_31, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.32" %_32, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.33" %_33, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.34" %_34, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.35" %_35, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.36" %_36, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.37" %_37, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.38" %_38, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.39" %_39, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.40" %_40, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.41" %_41, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.42" %_42, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.43" %_43, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.44" %_44, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.45" %_45, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.46" %_46, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.47" %_47, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.48" %_48, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.49" %_49, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.50" %_50, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.51" %_51, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.52" %_52, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.53" %_53, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.54" %_54, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.55" %_55, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.56" %_56, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.57" %_57, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.58" %_58, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.59" %_59, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.60" %_60, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.61" %_61, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.62" %_62, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.63" %_63) #1 {
entry:
  %1 = icmp eq [64 x float]* %0, null
  %2 = icmp eq float* %_0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %src.addr.exit, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %src.addr.exit ]
  %dst.addr = getelementptr [64 x float], [64 x float]* %0, i64 0, i64 %for.loop.idx1
  %4 = trunc i64 %for.loop.idx1 to i6
  switch i6 %4, label %src.addr.case.63 [
    i6 0, label %src.addr.case.0
    i6 1, label %src.addr.case.1
    i6 2, label %src.addr.case.2
    i6 3, label %src.addr.case.3
    i6 4, label %src.addr.case.4
    i6 5, label %src.addr.case.5
    i6 6, label %src.addr.case.6
    i6 7, label %src.addr.case.7
    i6 8, label %src.addr.case.8
    i6 9, label %src.addr.case.9
    i6 10, label %src.addr.case.10
    i6 11, label %src.addr.case.11
    i6 12, label %src.addr.case.12
    i6 13, label %src.addr.case.13
    i6 14, label %src.addr.case.14
    i6 15, label %src.addr.case.15
    i6 16, label %src.addr.case.16
    i6 17, label %src.addr.case.17
    i6 18, label %src.addr.case.18
    i6 19, label %src.addr.case.19
    i6 20, label %src.addr.case.20
    i6 21, label %src.addr.case.21
    i6 22, label %src.addr.case.22
    i6 23, label %src.addr.case.23
    i6 24, label %src.addr.case.24
    i6 25, label %src.addr.case.25
    i6 26, label %src.addr.case.26
    i6 27, label %src.addr.case.27
    i6 28, label %src.addr.case.28
    i6 29, label %src.addr.case.29
    i6 30, label %src.addr.case.30
    i6 31, label %src.addr.case.31
    i6 -32, label %src.addr.case.32
    i6 -31, label %src.addr.case.33
    i6 -30, label %src.addr.case.34
    i6 -29, label %src.addr.case.35
    i6 -28, label %src.addr.case.36
    i6 -27, label %src.addr.case.37
    i6 -26, label %src.addr.case.38
    i6 -25, label %src.addr.case.39
    i6 -24, label %src.addr.case.40
    i6 -23, label %src.addr.case.41
    i6 -22, label %src.addr.case.42
    i6 -21, label %src.addr.case.43
    i6 -20, label %src.addr.case.44
    i6 -19, label %src.addr.case.45
    i6 -18, label %src.addr.case.46
    i6 -17, label %src.addr.case.47
    i6 -16, label %src.addr.case.48
    i6 -15, label %src.addr.case.49
    i6 -14, label %src.addr.case.50
    i6 -13, label %src.addr.case.51
    i6 -12, label %src.addr.case.52
    i6 -11, label %src.addr.case.53
    i6 -10, label %src.addr.case.54
    i6 -9, label %src.addr.case.55
    i6 -8, label %src.addr.case.56
    i6 -7, label %src.addr.case.57
    i6 -6, label %src.addr.case.58
    i6 -5, label %src.addr.case.59
    i6 -4, label %src.addr.case.60
    i6 -3, label %src.addr.case.61
    i6 -2, label %src.addr.case.62
  ]

src.addr.case.0:                                  ; preds = %for.loop
  %_01 = load float, float* %_0, align 512
  br label %src.addr.exit

src.addr.case.1:                                  ; preds = %for.loop
  %_110 = load float, float* %_1, align 512
  br label %src.addr.exit

src.addr.case.2:                                  ; preds = %for.loop
  %_211 = load float, float* %_2, align 512
  br label %src.addr.exit

src.addr.case.3:                                  ; preds = %for.loop
  %_312 = load float, float* %_3, align 512
  br label %src.addr.exit

src.addr.case.4:                                  ; preds = %for.loop
  %_413 = load float, float* %_4, align 512
  br label %src.addr.exit

src.addr.case.5:                                  ; preds = %for.loop
  %_514 = load float, float* %_5, align 512
  br label %src.addr.exit

src.addr.case.6:                                  ; preds = %for.loop
  %_615 = load float, float* %_6, align 512
  br label %src.addr.exit

src.addr.case.7:                                  ; preds = %for.loop
  %_716 = load float, float* %_7, align 512
  br label %src.addr.exit

src.addr.case.8:                                  ; preds = %for.loop
  %_817 = load float, float* %_8, align 512
  br label %src.addr.exit

src.addr.case.9:                                  ; preds = %for.loop
  %_918 = load float, float* %_9, align 512
  br label %src.addr.exit

src.addr.case.10:                                 ; preds = %for.loop
  %_1019 = load float, float* %_10, align 512
  br label %src.addr.exit

src.addr.case.11:                                 ; preds = %for.loop
  %_1120 = load float, float* %_11, align 512
  br label %src.addr.exit

src.addr.case.12:                                 ; preds = %for.loop
  %_1221 = load float, float* %_12, align 512
  br label %src.addr.exit

src.addr.case.13:                                 ; preds = %for.loop
  %_1322 = load float, float* %_13, align 512
  br label %src.addr.exit

src.addr.case.14:                                 ; preds = %for.loop
  %_1423 = load float, float* %_14, align 512
  br label %src.addr.exit

src.addr.case.15:                                 ; preds = %for.loop
  %_1524 = load float, float* %_15, align 512
  br label %src.addr.exit

src.addr.case.16:                                 ; preds = %for.loop
  %_1625 = load float, float* %_16, align 512
  br label %src.addr.exit

src.addr.case.17:                                 ; preds = %for.loop
  %_1726 = load float, float* %_17, align 512
  br label %src.addr.exit

src.addr.case.18:                                 ; preds = %for.loop
  %_1827 = load float, float* %_18, align 512
  br label %src.addr.exit

src.addr.case.19:                                 ; preds = %for.loop
  %_1928 = load float, float* %_19, align 512
  br label %src.addr.exit

src.addr.case.20:                                 ; preds = %for.loop
  %_2029 = load float, float* %_20, align 512
  br label %src.addr.exit

src.addr.case.21:                                 ; preds = %for.loop
  %_2130 = load float, float* %_21, align 512
  br label %src.addr.exit

src.addr.case.22:                                 ; preds = %for.loop
  %_2231 = load float, float* %_22, align 512
  br label %src.addr.exit

src.addr.case.23:                                 ; preds = %for.loop
  %_2332 = load float, float* %_23, align 512
  br label %src.addr.exit

src.addr.case.24:                                 ; preds = %for.loop
  %_2433 = load float, float* %_24, align 512
  br label %src.addr.exit

src.addr.case.25:                                 ; preds = %for.loop
  %_2534 = load float, float* %_25, align 512
  br label %src.addr.exit

src.addr.case.26:                                 ; preds = %for.loop
  %_2635 = load float, float* %_26, align 512
  br label %src.addr.exit

src.addr.case.27:                                 ; preds = %for.loop
  %_2736 = load float, float* %_27, align 512
  br label %src.addr.exit

src.addr.case.28:                                 ; preds = %for.loop
  %_2837 = load float, float* %_28, align 512
  br label %src.addr.exit

src.addr.case.29:                                 ; preds = %for.loop
  %_2938 = load float, float* %_29, align 512
  br label %src.addr.exit

src.addr.case.30:                                 ; preds = %for.loop
  %_3039 = load float, float* %_30, align 512
  br label %src.addr.exit

src.addr.case.31:                                 ; preds = %for.loop
  %_3140 = load float, float* %_31, align 512
  br label %src.addr.exit

src.addr.case.32:                                 ; preds = %for.loop
  %_3241 = load float, float* %_32, align 512
  br label %src.addr.exit

src.addr.case.33:                                 ; preds = %for.loop
  %_3342 = load float, float* %_33, align 512
  br label %src.addr.exit

src.addr.case.34:                                 ; preds = %for.loop
  %_3443 = load float, float* %_34, align 512
  br label %src.addr.exit

src.addr.case.35:                                 ; preds = %for.loop
  %_3544 = load float, float* %_35, align 512
  br label %src.addr.exit

src.addr.case.36:                                 ; preds = %for.loop
  %_3645 = load float, float* %_36, align 512
  br label %src.addr.exit

src.addr.case.37:                                 ; preds = %for.loop
  %_3746 = load float, float* %_37, align 512
  br label %src.addr.exit

src.addr.case.38:                                 ; preds = %for.loop
  %_3847 = load float, float* %_38, align 512
  br label %src.addr.exit

src.addr.case.39:                                 ; preds = %for.loop
  %_3948 = load float, float* %_39, align 512
  br label %src.addr.exit

src.addr.case.40:                                 ; preds = %for.loop
  %_4049 = load float, float* %_40, align 512
  br label %src.addr.exit

src.addr.case.41:                                 ; preds = %for.loop
  %_4150 = load float, float* %_41, align 512
  br label %src.addr.exit

src.addr.case.42:                                 ; preds = %for.loop
  %_4251 = load float, float* %_42, align 512
  br label %src.addr.exit

src.addr.case.43:                                 ; preds = %for.loop
  %_4352 = load float, float* %_43, align 512
  br label %src.addr.exit

src.addr.case.44:                                 ; preds = %for.loop
  %_4453 = load float, float* %_44, align 512
  br label %src.addr.exit

src.addr.case.45:                                 ; preds = %for.loop
  %_4554 = load float, float* %_45, align 512
  br label %src.addr.exit

src.addr.case.46:                                 ; preds = %for.loop
  %_4655 = load float, float* %_46, align 512
  br label %src.addr.exit

src.addr.case.47:                                 ; preds = %for.loop
  %_4756 = load float, float* %_47, align 512
  br label %src.addr.exit

src.addr.case.48:                                 ; preds = %for.loop
  %_4857 = load float, float* %_48, align 512
  br label %src.addr.exit

src.addr.case.49:                                 ; preds = %for.loop
  %_4958 = load float, float* %_49, align 512
  br label %src.addr.exit

src.addr.case.50:                                 ; preds = %for.loop
  %_5059 = load float, float* %_50, align 512
  br label %src.addr.exit

src.addr.case.51:                                 ; preds = %for.loop
  %_5160 = load float, float* %_51, align 512
  br label %src.addr.exit

src.addr.case.52:                                 ; preds = %for.loop
  %_5261 = load float, float* %_52, align 512
  br label %src.addr.exit

src.addr.case.53:                                 ; preds = %for.loop
  %_5362 = load float, float* %_53, align 512
  br label %src.addr.exit

src.addr.case.54:                                 ; preds = %for.loop
  %_5463 = load float, float* %_54, align 512
  br label %src.addr.exit

src.addr.case.55:                                 ; preds = %for.loop
  %_5564 = load float, float* %_55, align 512
  br label %src.addr.exit

src.addr.case.56:                                 ; preds = %for.loop
  %_5665 = load float, float* %_56, align 512
  br label %src.addr.exit

src.addr.case.57:                                 ; preds = %for.loop
  %_5766 = load float, float* %_57, align 512
  br label %src.addr.exit

src.addr.case.58:                                 ; preds = %for.loop
  %_5867 = load float, float* %_58, align 512
  br label %src.addr.exit

src.addr.case.59:                                 ; preds = %for.loop
  %_5968 = load float, float* %_59, align 512
  br label %src.addr.exit

src.addr.case.60:                                 ; preds = %for.loop
  %_6069 = load float, float* %_60, align 512
  br label %src.addr.exit

src.addr.case.61:                                 ; preds = %for.loop
  %_6170 = load float, float* %_61, align 512
  br label %src.addr.exit

src.addr.case.62:                                 ; preds = %for.loop
  %_6271 = load float, float* %_62, align 512
  br label %src.addr.exit

src.addr.case.63:                                 ; preds = %for.loop
  %_6372 = load float, float* %_63, align 512
  br label %src.addr.exit

src.addr.exit:                                    ; preds = %src.addr.case.63, %src.addr.case.62, %src.addr.case.61, %src.addr.case.60, %src.addr.case.59, %src.addr.case.58, %src.addr.case.57, %src.addr.case.56, %src.addr.case.55, %src.addr.case.54, %src.addr.case.53, %src.addr.case.52, %src.addr.case.51, %src.addr.case.50, %src.addr.case.49, %src.addr.case.48, %src.addr.case.47, %src.addr.case.46, %src.addr.case.45, %src.addr.case.44, %src.addr.case.43, %src.addr.case.42, %src.addr.case.41, %src.addr.case.40, %src.addr.case.39, %src.addr.case.38, %src.addr.case.37, %src.addr.case.36, %src.addr.case.35, %src.addr.case.34, %src.addr.case.33, %src.addr.case.32, %src.addr.case.31, %src.addr.case.30, %src.addr.case.29, %src.addr.case.28, %src.addr.case.27, %src.addr.case.26, %src.addr.case.25, %src.addr.case.24, %src.addr.case.23, %src.addr.case.22, %src.addr.case.21, %src.addr.case.20, %src.addr.case.19, %src.addr.case.18, %src.addr.case.17, %src.addr.case.16, %src.addr.case.15, %src.addr.case.14, %src.addr.case.13, %src.addr.case.12, %src.addr.case.11, %src.addr.case.10, %src.addr.case.9, %src.addr.case.8, %src.addr.case.7, %src.addr.case.6, %src.addr.case.5, %src.addr.case.4, %src.addr.case.3, %src.addr.case.2, %src.addr.case.1, %src.addr.case.0
  %5 = phi float [ %_01, %src.addr.case.0 ], [ %_110, %src.addr.case.1 ], [ %_211, %src.addr.case.2 ], [ %_312, %src.addr.case.3 ], [ %_413, %src.addr.case.4 ], [ %_514, %src.addr.case.5 ], [ %_615, %src.addr.case.6 ], [ %_716, %src.addr.case.7 ], [ %_817, %src.addr.case.8 ], [ %_918, %src.addr.case.9 ], [ %_1019, %src.addr.case.10 ], [ %_1120, %src.addr.case.11 ], [ %_1221, %src.addr.case.12 ], [ %_1322, %src.addr.case.13 ], [ %_1423, %src.addr.case.14 ], [ %_1524, %src.addr.case.15 ], [ %_1625, %src.addr.case.16 ], [ %_1726, %src.addr.case.17 ], [ %_1827, %src.addr.case.18 ], [ %_1928, %src.addr.case.19 ], [ %_2029, %src.addr.case.20 ], [ %_2130, %src.addr.case.21 ], [ %_2231, %src.addr.case.22 ], [ %_2332, %src.addr.case.23 ], [ %_2433, %src.addr.case.24 ], [ %_2534, %src.addr.case.25 ], [ %_2635, %src.addr.case.26 ], [ %_2736, %src.addr.case.27 ], [ %_2837, %src.addr.case.28 ], [ %_2938, %src.addr.case.29 ], [ %_3039, %src.addr.case.30 ], [ %_3140, %src.addr.case.31 ], [ %_3241, %src.addr.case.32 ], [ %_3342, %src.addr.case.33 ], [ %_3443, %src.addr.case.34 ], [ %_3544, %src.addr.case.35 ], [ %_3645, %src.addr.case.36 ], [ %_3746, %src.addr.case.37 ], [ %_3847, %src.addr.case.38 ], [ %_3948, %src.addr.case.39 ], [ %_4049, %src.addr.case.40 ], [ %_4150, %src.addr.case.41 ], [ %_4251, %src.addr.case.42 ], [ %_4352, %src.addr.case.43 ], [ %_4453, %src.addr.case.44 ], [ %_4554, %src.addr.case.45 ], [ %_4655, %src.addr.case.46 ], [ %_4756, %src.addr.case.47 ], [ %_4857, %src.addr.case.48 ], [ %_4958, %src.addr.case.49 ], [ %_5059, %src.addr.case.50 ], [ %_5160, %src.addr.case.51 ], [ %_5261, %src.addr.case.52 ], [ %_5362, %src.addr.case.53 ], [ %_5463, %src.addr.case.54 ], [ %_5564, %src.addr.case.55 ], [ %_5665, %src.addr.case.56 ], [ %_5766, %src.addr.case.57 ], [ %_5867, %src.addr.case.58 ], [ %_5968, %src.addr.case.59 ], [ %_6069, %src.addr.case.60 ], [ %_6170, %src.addr.case.61 ], [ %_6271, %src.addr.case.62 ], [ %_6372, %src.addr.case.63 ]
  store float %5, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 64
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %src.addr.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_out([64 x float]* noalias "orig.arg.no"="0", float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %_0, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1" %_1, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.2" %_2, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.3" %_3, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.4" %_4, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.5" %_5, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.6" %_6, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.7" %_7, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.8" %_8, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.9" %_9, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.10" %_10, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.11" %_11, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.12" %_12, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.13" %_13, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.14" %_14, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.15" %_15, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.16" %_16, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.17" %_17, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.18" %_18, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.19" %_19, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.20" %_20, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.21" %_21, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.22" %_22, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.23" %_23, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.24" %_24, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.25" %_25, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.26" %_26, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.27" %_27, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.28" %_28, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.29" %_29, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.30" %_30, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.31" %_31, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.32" %_32, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.33" %_33, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.34" %_34, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.35" %_35, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.36" %_36, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.37" %_37, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.38" %_38, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.39" %_39, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.40" %_40, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.41" %_41, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.42" %_42, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.43" %_43, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.44" %_44, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.45" %_45, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.46" %_46, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.47" %_47, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.48" %_48, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.49" %_49, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.50" %_50, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.51" %_51, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.52" %_52, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.53" %_53, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.54" %_54, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.55" %_55, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.56" %_56, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.57" %_57, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.58" %_58, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.59" %_59, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.60" %_60, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.61" %_61, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.62" %_62, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.63" %_63) #3 {
entry:
  call void @onebyonecpy_hls.p0a64f32.9.10([64 x float]* %0, float* align 512 %_0, float* align 512 %_1, float* align 512 %_2, float* align 512 %_3, float* align 512 %_4, float* align 512 %_5, float* align 512 %_6, float* align 512 %_7, float* align 512 %_8, float* align 512 %_9, float* align 512 %_10, float* align 512 %_11, float* align 512 %_12, float* align 512 %_13, float* align 512 %_14, float* align 512 %_15, float* align 512 %_16, float* align 512 %_17, float* align 512 %_18, float* align 512 %_19, float* align 512 %_20, float* align 512 %_21, float* align 512 %_22, float* align 512 %_23, float* align 512 %_24, float* align 512 %_25, float* align 512 %_26, float* align 512 %_27, float* align 512 %_28, float* align 512 %_29, float* align 512 %_30, float* align 512 %_31, float* align 512 %_32, float* align 512 %_33, float* align 512 %_34, float* align 512 %_35, float* align 512 %_36, float* align 512 %_37, float* align 512 %_38, float* align 512 %_39, float* align 512 %_40, float* align 512 %_41, float* align 512 %_42, float* align 512 %_43, float* align 512 %_44, float* align 512 %_45, float* align 512 %_46, float* align 512 %_47, float* align 512 %_48, float* align 512 %_49, float* align 512 %_50, float* align 512 %_51, float* align 512 %_52, float* align 512 %_53, float* align 512 %_54, float* align 512 %_55, float* align 512 %_56, float* align 512 %_57, float* align 512 %_58, float* align 512 %_59, float* align 512 %_60, float* align 512 %_61, float* align 512 %_62, float* align 512 %_63)
  ret void
}

declare i32 @apatb_vs_hw(float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float)

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_back([64 x float]* noalias "orig.arg.no"="0", float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %_0, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1" %_1, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.2" %_2, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.3" %_3, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.4" %_4, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.5" %_5, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.6" %_6, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.7" %_7, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.8" %_8, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.9" %_9, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.10" %_10, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.11" %_11, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.12" %_12, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.13" %_13, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.14" %_14, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.15" %_15, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.16" %_16, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.17" %_17, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.18" %_18, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.19" %_19, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.20" %_20, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.21" %_21, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.22" %_22, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.23" %_23, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.24" %_24, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.25" %_25, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.26" %_26, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.27" %_27, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.28" %_28, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.29" %_29, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.30" %_30, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.31" %_31, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.32" %_32, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.33" %_33, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.34" %_34, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.35" %_35, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.36" %_36, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.37" %_37, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.38" %_38, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.39" %_39, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.40" %_40, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.41" %_41, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.42" %_42, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.43" %_43, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.44" %_44, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.45" %_45, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.46" %_46, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.47" %_47, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.48" %_48, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.49" %_49, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.50" %_50, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.51" %_51, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.52" %_52, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.53" %_53, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.54" %_54, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.55" %_55, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.56" %_56, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.57" %_57, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.58" %_58, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.59" %_59, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.60" %_60, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.61" %_61, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.62" %_62, float* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.63" %_63) #3 {
entry:
  call void @onebyonecpy_hls.p0a64f32.9.10([64 x float]* %0, float* align 512 %_0, float* align 512 %_1, float* align 512 %_2, float* align 512 %_3, float* align 512 %_4, float* align 512 %_5, float* align 512 %_6, float* align 512 %_7, float* align 512 %_8, float* align 512 %_9, float* align 512 %_10, float* align 512 %_11, float* align 512 %_12, float* align 512 %_13, float* align 512 %_14, float* align 512 %_15, float* align 512 %_16, float* align 512 %_17, float* align 512 %_18, float* align 512 %_19, float* align 512 %_20, float* align 512 %_21, float* align 512 %_22, float* align 512 %_23, float* align 512 %_24, float* align 512 %_25, float* align 512 %_26, float* align 512 %_27, float* align 512 %_28, float* align 512 %_29, float* align 512 %_30, float* align 512 %_31, float* align 512 %_32, float* align 512 %_33, float* align 512 %_34, float* align 512 %_35, float* align 512 %_36, float* align 512 %_37, float* align 512 %_38, float* align 512 %_39, float* align 512 %_40, float* align 512 %_41, float* align 512 %_42, float* align 512 %_43, float* align 512 %_44, float* align 512 %_45, float* align 512 %_46, float* align 512 %_47, float* align 512 %_48, float* align 512 %_49, float* align 512 %_50, float* align 512 %_51, float* align 512 %_52, float* align 512 %_53, float* align 512 %_54, float* align 512 %_55, float* align 512 %_56, float* align 512 %_57, float* align 512 %_58, float* align 512 %_59, float* align 512 %_60, float* align 512 %_61, float* align 512 %_62, float* align 512 %_63)
  ret void
}

define i32 @vs_hw_stub_wrapper(float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float) #4 {
entry:
  %65 = alloca [64 x float]
  call void @copy_out([64 x float]* %65, float* %0, float* %1, float* %2, float* %3, float* %4, float* %5, float* %6, float* %7, float* %8, float* %9, float* %10, float* %11, float* %12, float* %13, float* %14, float* %15, float* %16, float* %17, float* %18, float* %19, float* %20, float* %21, float* %22, float* %23, float* %24, float* %25, float* %26, float* %27, float* %28, float* %29, float* %30, float* %31, float* %32, float* %33, float* %34, float* %35, float* %36, float* %37, float* %38, float* %39, float* %40, float* %41, float* %42, float* %43, float* %44, float* %45, float* %46, float* %47, float* %48, float* %49, float* %50, float* %51, float* %52, float* %53, float* %54, float* %55, float* %56, float* %57, float* %58, float* %59, float* %60, float* %61, float* %62, float* %63)
  %66 = bitcast [64 x float]* %65 to float*
  %67 = call i32 @vs_hw_stub(float* %66, float %64)
  call void @copy_in([64 x float]* %65, float* %0, float* %1, float* %2, float* %3, float* %4, float* %5, float* %6, float* %7, float* %8, float* %9, float* %10, float* %11, float* %12, float* %13, float* %14, float* %15, float* %16, float* %17, float* %18, float* %19, float* %20, float* %21, float* %22, float* %23, float* %24, float* %25, float* %26, float* %27, float* %28, float* %29, float* %30, float* %31, float* %32, float* %33, float* %34, float* %35, float* %36, float* %37, float* %38, float* %39, float* %40, float* %41, float* %42, float* %43, float* %44, float* %45, float* %46, float* %47, float* %48, float* %49, float* %50, float* %51, float* %52, float* %53, float* %54, float* %55, float* %56, float* %57, float* %58, float* %59, float* %60, float* %61, float* %62, float* %63)
  ret i32 %67
}

declare i32 @vs_hw_stub(float*, float)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #4 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}
!datalayout.transforms.on.top = !{!5}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = !{!6, !8, !10}
!6 = !{!7}
!7 = !{!"0", [64 x float]* null}
!8 = !{!9}
!9 = !{!"array_partition", !"type=Complete", !"dim=1"}
!10 = !{!11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74}
!11 = !{!"0.0", float* null}
!12 = !{!"0.1", float* null}
!13 = !{!"0.2", float* null}
!14 = !{!"0.3", float* null}
!15 = !{!"0.4", float* null}
!16 = !{!"0.5", float* null}
!17 = !{!"0.6", float* null}
!18 = !{!"0.7", float* null}
!19 = !{!"0.8", float* null}
!20 = !{!"0.9", float* null}
!21 = !{!"0.10", float* null}
!22 = !{!"0.11", float* null}
!23 = !{!"0.12", float* null}
!24 = !{!"0.13", float* null}
!25 = !{!"0.14", float* null}
!26 = !{!"0.15", float* null}
!27 = !{!"0.16", float* null}
!28 = !{!"0.17", float* null}
!29 = !{!"0.18", float* null}
!30 = !{!"0.19", float* null}
!31 = !{!"0.20", float* null}
!32 = !{!"0.21", float* null}
!33 = !{!"0.22", float* null}
!34 = !{!"0.23", float* null}
!35 = !{!"0.24", float* null}
!36 = !{!"0.25", float* null}
!37 = !{!"0.26", float* null}
!38 = !{!"0.27", float* null}
!39 = !{!"0.28", float* null}
!40 = !{!"0.29", float* null}
!41 = !{!"0.30", float* null}
!42 = !{!"0.31", float* null}
!43 = !{!"0.32", float* null}
!44 = !{!"0.33", float* null}
!45 = !{!"0.34", float* null}
!46 = !{!"0.35", float* null}
!47 = !{!"0.36", float* null}
!48 = !{!"0.37", float* null}
!49 = !{!"0.38", float* null}
!50 = !{!"0.39", float* null}
!51 = !{!"0.40", float* null}
!52 = !{!"0.41", float* null}
!53 = !{!"0.42", float* null}
!54 = !{!"0.43", float* null}
!55 = !{!"0.44", float* null}
!56 = !{!"0.45", float* null}
!57 = !{!"0.46", float* null}
!58 = !{!"0.47", float* null}
!59 = !{!"0.48", float* null}
!60 = !{!"0.49", float* null}
!61 = !{!"0.50", float* null}
!62 = !{!"0.51", float* null}
!63 = !{!"0.52", float* null}
!64 = !{!"0.53", float* null}
!65 = !{!"0.54", float* null}
!66 = !{!"0.55", float* null}
!67 = !{!"0.56", float* null}
!68 = !{!"0.57", float* null}
!69 = !{!"0.58", float* null}
!70 = !{!"0.59", float* null}
!71 = !{!"0.60", float* null}
!72 = !{!"0.61", float* null}
!73 = !{!"0.62", float* null}
!74 = !{!"0.63", float* null}
