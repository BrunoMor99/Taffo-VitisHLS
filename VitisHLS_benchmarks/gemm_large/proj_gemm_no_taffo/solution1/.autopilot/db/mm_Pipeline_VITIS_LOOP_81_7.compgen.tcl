# This script segment is generated automatically by AutoPilot

set name mm_fadd_32ns_32ns_32_2_full_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fadd} IMPL {fulldsp} LATENCY 1 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler mm_mm_Pipeline_VITIS_LOOP_81_7_A_0_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler mm_mm_Pipeline_VITIS_LOOP_81_7_A_1_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler mm_mm_Pipeline_VITIS_LOOP_81_7_A_2_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler mm_mm_Pipeline_VITIS_LOOP_81_7_A_3_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler mm_mm_Pipeline_VITIS_LOOP_81_7_A_4_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler mm_mm_Pipeline_VITIS_LOOP_81_7_A_5_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler mm_mm_Pipeline_VITIS_LOOP_81_7_A_6_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler mm_mm_Pipeline_VITIS_LOOP_81_7_A_7_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 647 \
    name D_15 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename D_15 \
    op interface \
    ports { D_15_address0 { O 4 vector } D_15_ce0 { O 1 bit } D_15_we0 { O 1 bit } D_15_d0 { O 32 vector } D_15_address1 { O 4 vector } D_15_ce1 { O 1 bit } D_15_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'D_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 648 \
    name D_14 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename D_14 \
    op interface \
    ports { D_14_address0 { O 4 vector } D_14_ce0 { O 1 bit } D_14_we0 { O 1 bit } D_14_d0 { O 32 vector } D_14_address1 { O 4 vector } D_14_ce1 { O 1 bit } D_14_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'D_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 649 \
    name D_13 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename D_13 \
    op interface \
    ports { D_13_address0 { O 4 vector } D_13_ce0 { O 1 bit } D_13_we0 { O 1 bit } D_13_d0 { O 32 vector } D_13_address1 { O 4 vector } D_13_ce1 { O 1 bit } D_13_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'D_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 650 \
    name D_12 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename D_12 \
    op interface \
    ports { D_12_address0 { O 4 vector } D_12_ce0 { O 1 bit } D_12_we0 { O 1 bit } D_12_d0 { O 32 vector } D_12_address1 { O 4 vector } D_12_ce1 { O 1 bit } D_12_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'D_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 651 \
    name D_11 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename D_11 \
    op interface \
    ports { D_11_address0 { O 4 vector } D_11_ce0 { O 1 bit } D_11_we0 { O 1 bit } D_11_d0 { O 32 vector } D_11_address1 { O 4 vector } D_11_ce1 { O 1 bit } D_11_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'D_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 652 \
    name D_10 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename D_10 \
    op interface \
    ports { D_10_address0 { O 4 vector } D_10_ce0 { O 1 bit } D_10_we0 { O 1 bit } D_10_d0 { O 32 vector } D_10_address1 { O 4 vector } D_10_ce1 { O 1 bit } D_10_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'D_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 653 \
    name D_9 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename D_9 \
    op interface \
    ports { D_9_address0 { O 4 vector } D_9_ce0 { O 1 bit } D_9_we0 { O 1 bit } D_9_d0 { O 32 vector } D_9_address1 { O 4 vector } D_9_ce1 { O 1 bit } D_9_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'D_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 654 \
    name D_8 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename D_8 \
    op interface \
    ports { D_8_address0 { O 4 vector } D_8_ce0 { O 1 bit } D_8_we0 { O 1 bit } D_8_d0 { O 32 vector } D_8_address1 { O 4 vector } D_8_ce1 { O 1 bit } D_8_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'D_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 655 \
    name D_7 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename D_7 \
    op interface \
    ports { D_7_address0 { O 4 vector } D_7_ce0 { O 1 bit } D_7_we0 { O 1 bit } D_7_d0 { O 32 vector } D_7_address1 { O 4 vector } D_7_ce1 { O 1 bit } D_7_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'D_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 656 \
    name D_6 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename D_6 \
    op interface \
    ports { D_6_address0 { O 4 vector } D_6_ce0 { O 1 bit } D_6_we0 { O 1 bit } D_6_d0 { O 32 vector } D_6_address1 { O 4 vector } D_6_ce1 { O 1 bit } D_6_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'D_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 657 \
    name D_5 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename D_5 \
    op interface \
    ports { D_5_address0 { O 4 vector } D_5_ce0 { O 1 bit } D_5_we0 { O 1 bit } D_5_d0 { O 32 vector } D_5_address1 { O 4 vector } D_5_ce1 { O 1 bit } D_5_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'D_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 658 \
    name D_4 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename D_4 \
    op interface \
    ports { D_4_address0 { O 4 vector } D_4_ce0 { O 1 bit } D_4_we0 { O 1 bit } D_4_d0 { O 32 vector } D_4_address1 { O 4 vector } D_4_ce1 { O 1 bit } D_4_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'D_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 659 \
    name D_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename D_3 \
    op interface \
    ports { D_3_address0 { O 4 vector } D_3_ce0 { O 1 bit } D_3_we0 { O 1 bit } D_3_d0 { O 32 vector } D_3_address1 { O 4 vector } D_3_ce1 { O 1 bit } D_3_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'D_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 660 \
    name D_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename D_2 \
    op interface \
    ports { D_2_address0 { O 4 vector } D_2_ce0 { O 1 bit } D_2_we0 { O 1 bit } D_2_d0 { O 32 vector } D_2_address1 { O 4 vector } D_2_ce1 { O 1 bit } D_2_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'D_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 661 \
    name D_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename D_1 \
    op interface \
    ports { D_1_address0 { O 4 vector } D_1_ce0 { O 1 bit } D_1_we0 { O 1 bit } D_1_d0 { O 32 vector } D_1_address1 { O 4 vector } D_1_ce1 { O 1 bit } D_1_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'D_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 662 \
    name D \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename D \
    op interface \
    ports { D_address0 { O 4 vector } D_ce0 { O 1 bit } D_we0 { O 1 bit } D_d0 { O 32 vector } D_address1 { O 4 vector } D_ce1 { O 1 bit } D_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'D'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName mm_flow_control_loop_pipe_sequential_init_U
set CompName mm_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix mm_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


