# This script segment is generated automatically by AutoPilot

set name mm_fmul_32ns_32ns_32_2_max_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fmul} IMPL {maxdsp} LATENCY 1 ALLOW_PRAGMA 1
}


set name mm_sitofp_32ns_32_2_no_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {sitofp} IMPL {auto} LATENCY 1 ALLOW_PRAGMA 1
}


set name mm_mul_4s_4s_4_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
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
    id 10 \
    name D_s9_23fixp_0 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename D_s9_23fixp_0 \
    op interface \
    ports { D_s9_23fixp_0_address0 { O 4 vector } D_s9_23fixp_0_ce0 { O 1 bit } D_s9_23fixp_0_we0 { O 1 bit } D_s9_23fixp_0_d0 { O 31 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'D_s9_23fixp_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 11 \
    name D_s9_23fixp_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename D_s9_23fixp_1 \
    op interface \
    ports { D_s9_23fixp_1_address0 { O 4 vector } D_s9_23fixp_1_ce0 { O 1 bit } D_s9_23fixp_1_we0 { O 1 bit } D_s9_23fixp_1_d0 { O 31 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'D_s9_23fixp_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 12 \
    name D_s9_23fixp_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename D_s9_23fixp_2 \
    op interface \
    ports { D_s9_23fixp_2_address0 { O 4 vector } D_s9_23fixp_2_ce0 { O 1 bit } D_s9_23fixp_2_we0 { O 1 bit } D_s9_23fixp_2_d0 { O 31 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'D_s9_23fixp_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 13 \
    name D_s9_23fixp_3 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename D_s9_23fixp_3 \
    op interface \
    ports { D_s9_23fixp_3_address0 { O 4 vector } D_s9_23fixp_3_ce0 { O 1 bit } D_s9_23fixp_3_we0 { O 1 bit } D_s9_23fixp_3_d0 { O 31 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'D_s9_23fixp_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 14 \
    name D_s9_23fixp_4 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename D_s9_23fixp_4 \
    op interface \
    ports { D_s9_23fixp_4_address0 { O 4 vector } D_s9_23fixp_4_ce0 { O 1 bit } D_s9_23fixp_4_we0 { O 1 bit } D_s9_23fixp_4_d0 { O 31 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'D_s9_23fixp_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 15 \
    name D_s9_23fixp_5 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename D_s9_23fixp_5 \
    op interface \
    ports { D_s9_23fixp_5_address0 { O 4 vector } D_s9_23fixp_5_ce0 { O 1 bit } D_s9_23fixp_5_we0 { O 1 bit } D_s9_23fixp_5_d0 { O 31 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'D_s9_23fixp_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 16 \
    name D_s9_23fixp_6 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename D_s9_23fixp_6 \
    op interface \
    ports { D_s9_23fixp_6_address0 { O 4 vector } D_s9_23fixp_6_ce0 { O 1 bit } D_s9_23fixp_6_we0 { O 1 bit } D_s9_23fixp_6_d0 { O 31 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'D_s9_23fixp_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 17 \
    name D_s9_23fixp_7 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename D_s9_23fixp_7 \
    op interface \
    ports { D_s9_23fixp_7_address0 { O 4 vector } D_s9_23fixp_7_ce0 { O 1 bit } D_s9_23fixp_7_we0 { O 1 bit } D_s9_23fixp_7_d0 { O 31 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'D_s9_23fixp_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 18 \
    name D_s9_23fixp_8 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename D_s9_23fixp_8 \
    op interface \
    ports { D_s9_23fixp_8_address0 { O 4 vector } D_s9_23fixp_8_ce0 { O 1 bit } D_s9_23fixp_8_we0 { O 1 bit } D_s9_23fixp_8_d0 { O 31 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'D_s9_23fixp_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 19 \
    name D_s9_23fixp_9 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename D_s9_23fixp_9 \
    op interface \
    ports { D_s9_23fixp_9_address0 { O 4 vector } D_s9_23fixp_9_ce0 { O 1 bit } D_s9_23fixp_9_we0 { O 1 bit } D_s9_23fixp_9_d0 { O 31 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'D_s9_23fixp_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 20 \
    name D_s9_23fixp_10 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename D_s9_23fixp_10 \
    op interface \
    ports { D_s9_23fixp_10_address0 { O 4 vector } D_s9_23fixp_10_ce0 { O 1 bit } D_s9_23fixp_10_we0 { O 1 bit } D_s9_23fixp_10_d0 { O 31 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'D_s9_23fixp_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 21 \
    name D_s9_23fixp_11 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename D_s9_23fixp_11 \
    op interface \
    ports { D_s9_23fixp_11_address0 { O 4 vector } D_s9_23fixp_11_ce0 { O 1 bit } D_s9_23fixp_11_we0 { O 1 bit } D_s9_23fixp_11_d0 { O 31 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'D_s9_23fixp_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 22 \
    name D_s9_23fixp_12 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename D_s9_23fixp_12 \
    op interface \
    ports { D_s9_23fixp_12_address0 { O 4 vector } D_s9_23fixp_12_ce0 { O 1 bit } D_s9_23fixp_12_we0 { O 1 bit } D_s9_23fixp_12_d0 { O 31 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'D_s9_23fixp_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 23 \
    name D_s9_23fixp_13 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename D_s9_23fixp_13 \
    op interface \
    ports { D_s9_23fixp_13_address0 { O 4 vector } D_s9_23fixp_13_ce0 { O 1 bit } D_s9_23fixp_13_we0 { O 1 bit } D_s9_23fixp_13_d0 { O 31 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'D_s9_23fixp_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 24 \
    name D_s9_23fixp_14 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename D_s9_23fixp_14 \
    op interface \
    ports { D_s9_23fixp_14_address0 { O 4 vector } D_s9_23fixp_14_ce0 { O 1 bit } D_s9_23fixp_14_we0 { O 1 bit } D_s9_23fixp_14_d0 { O 31 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'D_s9_23fixp_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 25 \
    name D_s9_23fixp_15 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename D_s9_23fixp_15 \
    op interface \
    ports { D_s9_23fixp_15_address0 { O 4 vector } D_s9_23fixp_15_ce0 { O 1 bit } D_s9_23fixp_15_we0 { O 1 bit } D_s9_23fixp_15_d0 { O 31 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'D_s9_23fixp_15'"
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


