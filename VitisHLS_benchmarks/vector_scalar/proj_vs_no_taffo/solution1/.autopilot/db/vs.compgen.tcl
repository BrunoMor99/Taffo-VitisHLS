# This script segment is generated automatically by AutoPilot

set name vs_fmul_32ns_32ns_32_3_max_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fmul} IMPL {maxdsp} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler vs_gmem_0_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

set axilite_register_dict [dict create]
set port_control {
A_0 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 16
	offset_end 27
}
}
dict set axilite_register_dict control $port_control


# Native S_AXILite:
if {${::AESL::PGuard_simmodel_gen}} {
	if {[info proc ::AESL_LIB_XILADAPTER::s_axilite_gen] == "::AESL_LIB_XILADAPTER::s_axilite_gen"} {
		eval "::AESL_LIB_XILADAPTER::s_axilite_gen { \
			id 66 \
			corename vs_control_axilite \
			name vs_control_s_axi \
			ports {$port_control} \
			op interface \
			interrupt_clear_mode TOW \
			interrupt_trigger_type default \
			is_flushable 0 \
			is_datawidth64 0 \
			is_addrwidth64 1 \
		} "
	} else {
		puts "@W \[IMPL-110\] Cannot find AXI Lite interface model in the library. Ignored generation of AXI Lite  interface for 'control'"
	}
}

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler vs_control_s_axi BINDTYPE interface TYPE interface_s_axilite
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 68 \
    name A_1 \
    type other \
    dir IO \
    reset_level 0 \
    sync_rst true \
    corename dc_A_1 \
    op interface \
    ports { A_1_i { I 32 vector } A_1_o { O 32 vector } A_1_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 69 \
    name A_2 \
    type other \
    dir IO \
    reset_level 0 \
    sync_rst true \
    corename dc_A_2 \
    op interface \
    ports { A_2_i { I 32 vector } A_2_o { O 32 vector } A_2_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 70 \
    name A_3 \
    type other \
    dir IO \
    reset_level 0 \
    sync_rst true \
    corename dc_A_3 \
    op interface \
    ports { A_3_i { I 32 vector } A_3_o { O 32 vector } A_3_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 71 \
    name A_4 \
    type other \
    dir IO \
    reset_level 0 \
    sync_rst true \
    corename dc_A_4 \
    op interface \
    ports { A_4_i { I 32 vector } A_4_o { O 32 vector } A_4_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 72 \
    name A_5 \
    type other \
    dir IO \
    reset_level 0 \
    sync_rst true \
    corename dc_A_5 \
    op interface \
    ports { A_5_i { I 32 vector } A_5_o { O 32 vector } A_5_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 73 \
    name A_6 \
    type other \
    dir IO \
    reset_level 0 \
    sync_rst true \
    corename dc_A_6 \
    op interface \
    ports { A_6_i { I 32 vector } A_6_o { O 32 vector } A_6_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 74 \
    name A_7 \
    type other \
    dir IO \
    reset_level 0 \
    sync_rst true \
    corename dc_A_7 \
    op interface \
    ports { A_7_i { I 32 vector } A_7_o { O 32 vector } A_7_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 75 \
    name A_8 \
    type other \
    dir IO \
    reset_level 0 \
    sync_rst true \
    corename dc_A_8 \
    op interface \
    ports { A_8_i { I 32 vector } A_8_o { O 32 vector } A_8_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 76 \
    name A_9 \
    type other \
    dir IO \
    reset_level 0 \
    sync_rst true \
    corename dc_A_9 \
    op interface \
    ports { A_9_i { I 32 vector } A_9_o { O 32 vector } A_9_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 77 \
    name A_10 \
    type other \
    dir IO \
    reset_level 0 \
    sync_rst true \
    corename dc_A_10 \
    op interface \
    ports { A_10_i { I 32 vector } A_10_o { O 32 vector } A_10_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 78 \
    name A_11 \
    type other \
    dir IO \
    reset_level 0 \
    sync_rst true \
    corename dc_A_11 \
    op interface \
    ports { A_11_i { I 32 vector } A_11_o { O 32 vector } A_11_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 79 \
    name A_12 \
    type other \
    dir IO \
    reset_level 0 \
    sync_rst true \
    corename dc_A_12 \
    op interface \
    ports { A_12_i { I 32 vector } A_12_o { O 32 vector } A_12_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 80 \
    name A_13 \
    type other \
    dir IO \
    reset_level 0 \
    sync_rst true \
    corename dc_A_13 \
    op interface \
    ports { A_13_i { I 32 vector } A_13_o { O 32 vector } A_13_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 81 \
    name A_14 \
    type other \
    dir IO \
    reset_level 0 \
    sync_rst true \
    corename dc_A_14 \
    op interface \
    ports { A_14_i { I 32 vector } A_14_o { O 32 vector } A_14_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 82 \
    name A_15 \
    type other \
    dir IO \
    reset_level 0 \
    sync_rst true \
    corename dc_A_15 \
    op interface \
    ports { A_15_i { I 32 vector } A_15_o { O 32 vector } A_15_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 83 \
    name A_16 \
    type other \
    dir IO \
    reset_level 0 \
    sync_rst true \
    corename dc_A_16 \
    op interface \
    ports { A_16_i { I 32 vector } A_16_o { O 32 vector } A_16_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 84 \
    name A_17 \
    type other \
    dir IO \
    reset_level 0 \
    sync_rst true \
    corename dc_A_17 \
    op interface \
    ports { A_17_i { I 32 vector } A_17_o { O 32 vector } A_17_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 85 \
    name A_18 \
    type other \
    dir IO \
    reset_level 0 \
    sync_rst true \
    corename dc_A_18 \
    op interface \
    ports { A_18_i { I 32 vector } A_18_o { O 32 vector } A_18_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 86 \
    name A_19 \
    type other \
    dir IO \
    reset_level 0 \
    sync_rst true \
    corename dc_A_19 \
    op interface \
    ports { A_19_i { I 32 vector } A_19_o { O 32 vector } A_19_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 87 \
    name A_20 \
    type other \
    dir IO \
    reset_level 0 \
    sync_rst true \
    corename dc_A_20 \
    op interface \
    ports { A_20_i { I 32 vector } A_20_o { O 32 vector } A_20_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 88 \
    name A_21 \
    type other \
    dir IO \
    reset_level 0 \
    sync_rst true \
    corename dc_A_21 \
    op interface \
    ports { A_21_i { I 32 vector } A_21_o { O 32 vector } A_21_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 89 \
    name A_22 \
    type other \
    dir IO \
    reset_level 0 \
    sync_rst true \
    corename dc_A_22 \
    op interface \
    ports { A_22_i { I 32 vector } A_22_o { O 32 vector } A_22_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 90 \
    name A_23 \
    type other \
    dir IO \
    reset_level 0 \
    sync_rst true \
    corename dc_A_23 \
    op interface \
    ports { A_23_i { I 32 vector } A_23_o { O 32 vector } A_23_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 91 \
    name A_24 \
    type other \
    dir IO \
    reset_level 0 \
    sync_rst true \
    corename dc_A_24 \
    op interface \
    ports { A_24_i { I 32 vector } A_24_o { O 32 vector } A_24_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 92 \
    name A_25 \
    type other \
    dir IO \
    reset_level 0 \
    sync_rst true \
    corename dc_A_25 \
    op interface \
    ports { A_25_i { I 32 vector } A_25_o { O 32 vector } A_25_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 93 \
    name A_26 \
    type other \
    dir IO \
    reset_level 0 \
    sync_rst true \
    corename dc_A_26 \
    op interface \
    ports { A_26_i { I 32 vector } A_26_o { O 32 vector } A_26_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 94 \
    name A_27 \
    type other \
    dir IO \
    reset_level 0 \
    sync_rst true \
    corename dc_A_27 \
    op interface \
    ports { A_27_i { I 32 vector } A_27_o { O 32 vector } A_27_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 95 \
    name A_28 \
    type other \
    dir IO \
    reset_level 0 \
    sync_rst true \
    corename dc_A_28 \
    op interface \
    ports { A_28_i { I 32 vector } A_28_o { O 32 vector } A_28_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 96 \
    name A_29 \
    type other \
    dir IO \
    reset_level 0 \
    sync_rst true \
    corename dc_A_29 \
    op interface \
    ports { A_29_i { I 32 vector } A_29_o { O 32 vector } A_29_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 97 \
    name A_30 \
    type other \
    dir IO \
    reset_level 0 \
    sync_rst true \
    corename dc_A_30 \
    op interface \
    ports { A_30_i { I 32 vector } A_30_o { O 32 vector } A_30_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 98 \
    name A_31 \
    type other \
    dir IO \
    reset_level 0 \
    sync_rst true \
    corename dc_A_31 \
    op interface \
    ports { A_31_i { I 32 vector } A_31_o { O 32 vector } A_31_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 99 \
    name A_32 \
    type other \
    dir IO \
    reset_level 0 \
    sync_rst true \
    corename dc_A_32 \
    op interface \
    ports { A_32_i { I 32 vector } A_32_o { O 32 vector } A_32_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 100 \
    name A_33 \
    type other \
    dir IO \
    reset_level 0 \
    sync_rst true \
    corename dc_A_33 \
    op interface \
    ports { A_33_i { I 32 vector } A_33_o { O 32 vector } A_33_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 101 \
    name A_34 \
    type other \
    dir IO \
    reset_level 0 \
    sync_rst true \
    corename dc_A_34 \
    op interface \
    ports { A_34_i { I 32 vector } A_34_o { O 32 vector } A_34_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 102 \
    name A_35 \
    type other \
    dir IO \
    reset_level 0 \
    sync_rst true \
    corename dc_A_35 \
    op interface \
    ports { A_35_i { I 32 vector } A_35_o { O 32 vector } A_35_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 103 \
    name A_36 \
    type other \
    dir IO \
    reset_level 0 \
    sync_rst true \
    corename dc_A_36 \
    op interface \
    ports { A_36_i { I 32 vector } A_36_o { O 32 vector } A_36_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 104 \
    name A_37 \
    type other \
    dir IO \
    reset_level 0 \
    sync_rst true \
    corename dc_A_37 \
    op interface \
    ports { A_37_i { I 32 vector } A_37_o { O 32 vector } A_37_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 105 \
    name A_38 \
    type other \
    dir IO \
    reset_level 0 \
    sync_rst true \
    corename dc_A_38 \
    op interface \
    ports { A_38_i { I 32 vector } A_38_o { O 32 vector } A_38_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 106 \
    name A_39 \
    type other \
    dir IO \
    reset_level 0 \
    sync_rst true \
    corename dc_A_39 \
    op interface \
    ports { A_39_i { I 32 vector } A_39_o { O 32 vector } A_39_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 107 \
    name A_40 \
    type other \
    dir IO \
    reset_level 0 \
    sync_rst true \
    corename dc_A_40 \
    op interface \
    ports { A_40_i { I 32 vector } A_40_o { O 32 vector } A_40_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 108 \
    name A_41 \
    type other \
    dir IO \
    reset_level 0 \
    sync_rst true \
    corename dc_A_41 \
    op interface \
    ports { A_41_i { I 32 vector } A_41_o { O 32 vector } A_41_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 109 \
    name A_42 \
    type other \
    dir IO \
    reset_level 0 \
    sync_rst true \
    corename dc_A_42 \
    op interface \
    ports { A_42_i { I 32 vector } A_42_o { O 32 vector } A_42_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 110 \
    name A_43 \
    type other \
    dir IO \
    reset_level 0 \
    sync_rst true \
    corename dc_A_43 \
    op interface \
    ports { A_43_i { I 32 vector } A_43_o { O 32 vector } A_43_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 111 \
    name A_44 \
    type other \
    dir IO \
    reset_level 0 \
    sync_rst true \
    corename dc_A_44 \
    op interface \
    ports { A_44_i { I 32 vector } A_44_o { O 32 vector } A_44_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 112 \
    name A_45 \
    type other \
    dir IO \
    reset_level 0 \
    sync_rst true \
    corename dc_A_45 \
    op interface \
    ports { A_45_i { I 32 vector } A_45_o { O 32 vector } A_45_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 113 \
    name A_46 \
    type other \
    dir IO \
    reset_level 0 \
    sync_rst true \
    corename dc_A_46 \
    op interface \
    ports { A_46_i { I 32 vector } A_46_o { O 32 vector } A_46_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 114 \
    name A_47 \
    type other \
    dir IO \
    reset_level 0 \
    sync_rst true \
    corename dc_A_47 \
    op interface \
    ports { A_47_i { I 32 vector } A_47_o { O 32 vector } A_47_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 115 \
    name A_48 \
    type other \
    dir IO \
    reset_level 0 \
    sync_rst true \
    corename dc_A_48 \
    op interface \
    ports { A_48_i { I 32 vector } A_48_o { O 32 vector } A_48_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 116 \
    name A_49 \
    type other \
    dir IO \
    reset_level 0 \
    sync_rst true \
    corename dc_A_49 \
    op interface \
    ports { A_49_i { I 32 vector } A_49_o { O 32 vector } A_49_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 117 \
    name A_50 \
    type other \
    dir IO \
    reset_level 0 \
    sync_rst true \
    corename dc_A_50 \
    op interface \
    ports { A_50_i { I 32 vector } A_50_o { O 32 vector } A_50_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 118 \
    name A_51 \
    type other \
    dir IO \
    reset_level 0 \
    sync_rst true \
    corename dc_A_51 \
    op interface \
    ports { A_51_i { I 32 vector } A_51_o { O 32 vector } A_51_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 119 \
    name A_52 \
    type other \
    dir IO \
    reset_level 0 \
    sync_rst true \
    corename dc_A_52 \
    op interface \
    ports { A_52_i { I 32 vector } A_52_o { O 32 vector } A_52_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 120 \
    name A_53 \
    type other \
    dir IO \
    reset_level 0 \
    sync_rst true \
    corename dc_A_53 \
    op interface \
    ports { A_53_i { I 32 vector } A_53_o { O 32 vector } A_53_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 121 \
    name A_54 \
    type other \
    dir IO \
    reset_level 0 \
    sync_rst true \
    corename dc_A_54 \
    op interface \
    ports { A_54_i { I 32 vector } A_54_o { O 32 vector } A_54_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 122 \
    name A_55 \
    type other \
    dir IO \
    reset_level 0 \
    sync_rst true \
    corename dc_A_55 \
    op interface \
    ports { A_55_i { I 32 vector } A_55_o { O 32 vector } A_55_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 123 \
    name A_56 \
    type other \
    dir IO \
    reset_level 0 \
    sync_rst true \
    corename dc_A_56 \
    op interface \
    ports { A_56_i { I 32 vector } A_56_o { O 32 vector } A_56_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 124 \
    name A_57 \
    type other \
    dir IO \
    reset_level 0 \
    sync_rst true \
    corename dc_A_57 \
    op interface \
    ports { A_57_i { I 32 vector } A_57_o { O 32 vector } A_57_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 125 \
    name A_58 \
    type other \
    dir IO \
    reset_level 0 \
    sync_rst true \
    corename dc_A_58 \
    op interface \
    ports { A_58_i { I 32 vector } A_58_o { O 32 vector } A_58_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 126 \
    name A_59 \
    type other \
    dir IO \
    reset_level 0 \
    sync_rst true \
    corename dc_A_59 \
    op interface \
    ports { A_59_i { I 32 vector } A_59_o { O 32 vector } A_59_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 127 \
    name A_60 \
    type other \
    dir IO \
    reset_level 0 \
    sync_rst true \
    corename dc_A_60 \
    op interface \
    ports { A_60_i { I 32 vector } A_60_o { O 32 vector } A_60_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 128 \
    name A_61 \
    type other \
    dir IO \
    reset_level 0 \
    sync_rst true \
    corename dc_A_61 \
    op interface \
    ports { A_61_i { I 32 vector } A_61_o { O 32 vector } A_61_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 129 \
    name A_62 \
    type other \
    dir IO \
    reset_level 0 \
    sync_rst true \
    corename dc_A_62 \
    op interface \
    ports { A_62_i { I 32 vector } A_62_o { O 32 vector } A_62_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 130 \
    name A_63 \
    type other \
    dir IO \
    reset_level 0 \
    sync_rst true \
    corename dc_A_63 \
    op interface \
    ports { A_63_i { I 32 vector } A_63_o { O 32 vector } A_63_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 131 \
    name alpha \
    type other \
    dir I \
    reset_level 0 \
    sync_rst true \
    corename dc_alpha \
    op interface \
    ports { alpha { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 0 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -2 \
    name ap_return \
    type ap_return \
    reset_level 0 \
    sync_rst true \
    corename ap_return \
    op interface \
    ports { ap_return { O 32 vector } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -3 \
    name ${PortName} \
    reset_level 0 \
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
set PortName ap_rst_n
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -4 \
    name ${PortName} \
    reset_level 0 \
    sync_rst true \
    corename apif_ap_rst_n \
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


