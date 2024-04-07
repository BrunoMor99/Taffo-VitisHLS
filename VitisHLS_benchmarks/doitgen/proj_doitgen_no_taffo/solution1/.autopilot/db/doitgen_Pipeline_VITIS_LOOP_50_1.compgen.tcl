# This script segment is generated automatically by AutoPilot

set name doitgen_fadd_32ns_32ns_32_2_full_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fadd} IMPL {fulldsp} LATENCY 1 ALLOW_PRAGMA 1
}


set name doitgen_fmul_32ns_32ns_32_2_max_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fmul} IMPL {maxdsp} LATENCY 1 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 99 \
    name gmem_0 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_0 \
    op interface \
    ports { m_axi_gmem_0_AWVALID { O 1 bit } m_axi_gmem_0_AWREADY { I 1 bit } m_axi_gmem_0_AWADDR { O 64 vector } m_axi_gmem_0_AWID { O 1 vector } m_axi_gmem_0_AWLEN { O 32 vector } m_axi_gmem_0_AWSIZE { O 3 vector } m_axi_gmem_0_AWBURST { O 2 vector } m_axi_gmem_0_AWLOCK { O 2 vector } m_axi_gmem_0_AWCACHE { O 4 vector } m_axi_gmem_0_AWPROT { O 3 vector } m_axi_gmem_0_AWQOS { O 4 vector } m_axi_gmem_0_AWREGION { O 4 vector } m_axi_gmem_0_AWUSER { O 1 vector } m_axi_gmem_0_WVALID { O 1 bit } m_axi_gmem_0_WREADY { I 1 bit } m_axi_gmem_0_WDATA { O 32 vector } m_axi_gmem_0_WSTRB { O 4 vector } m_axi_gmem_0_WLAST { O 1 bit } m_axi_gmem_0_WID { O 1 vector } m_axi_gmem_0_WUSER { O 1 vector } m_axi_gmem_0_ARVALID { O 1 bit } m_axi_gmem_0_ARREADY { I 1 bit } m_axi_gmem_0_ARADDR { O 64 vector } m_axi_gmem_0_ARID { O 1 vector } m_axi_gmem_0_ARLEN { O 32 vector } m_axi_gmem_0_ARSIZE { O 3 vector } m_axi_gmem_0_ARBURST { O 2 vector } m_axi_gmem_0_ARLOCK { O 2 vector } m_axi_gmem_0_ARCACHE { O 4 vector } m_axi_gmem_0_ARPROT { O 3 vector } m_axi_gmem_0_ARQOS { O 4 vector } m_axi_gmem_0_ARREGION { O 4 vector } m_axi_gmem_0_ARUSER { O 1 vector } m_axi_gmem_0_RVALID { I 1 bit } m_axi_gmem_0_RREADY { O 1 bit } m_axi_gmem_0_RDATA { I 32 vector } m_axi_gmem_0_RLAST { I 1 bit } m_axi_gmem_0_RID { I 1 vector } m_axi_gmem_0_RFIFONUM { I 9 vector } m_axi_gmem_0_RUSER { I 1 vector } m_axi_gmem_0_RRESP { I 2 vector } m_axi_gmem_0_BVALID { I 1 bit } m_axi_gmem_0_BREADY { O 1 bit } m_axi_gmem_0_BRESP { I 2 vector } m_axi_gmem_0_BID { I 1 vector } m_axi_gmem_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 100 \
    name A_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A_0 \
    op interface \
    ports { A_0 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 101 \
    name empty_19 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_19 \
    op interface \
    ports { empty_19 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 102 \
    name empty_20 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_20 \
    op interface \
    ports { empty_20 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 103 \
    name empty_21 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_21 \
    op interface \
    ports { empty_21 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 104 \
    name empty_22 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_22 \
    op interface \
    ports { empty_22 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 105 \
    name empty_23 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_23 \
    op interface \
    ports { empty_23 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 106 \
    name empty_24 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_24 \
    op interface \
    ports { empty_24 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 107 \
    name empty_25 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_25 \
    op interface \
    ports { empty_25 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 108 \
    name empty_26 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_26 \
    op interface \
    ports { empty_26 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 109 \
    name empty_27 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_27 \
    op interface \
    ports { empty_27 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 110 \
    name empty_28 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_28 \
    op interface \
    ports { empty_28 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 111 \
    name empty_29 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_29 \
    op interface \
    ports { empty_29 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 112 \
    name empty_30 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_30 \
    op interface \
    ports { empty_30 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 113 \
    name empty_31 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_31 \
    op interface \
    ports { empty_31 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 114 \
    name empty_32 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_32 \
    op interface \
    ports { empty_32 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 115 \
    name empty_33 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_33 \
    op interface \
    ports { empty_33 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 116 \
    name empty_34 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_34 \
    op interface \
    ports { empty_34 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 117 \
    name empty_35 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_35 \
    op interface \
    ports { empty_35 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 118 \
    name empty_36 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_36 \
    op interface \
    ports { empty_36 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 119 \
    name empty_37 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_37 \
    op interface \
    ports { empty_37 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 120 \
    name empty_38 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_38 \
    op interface \
    ports { empty_38 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 121 \
    name empty_39 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_39 \
    op interface \
    ports { empty_39 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 122 \
    name empty_40 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_40 \
    op interface \
    ports { empty_40 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 123 \
    name empty_41 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_41 \
    op interface \
    ports { empty_41 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 124 \
    name empty_42 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_42 \
    op interface \
    ports { empty_42 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 125 \
    name empty_43 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_43 \
    op interface \
    ports { empty_43 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 126 \
    name empty_44 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_44 \
    op interface \
    ports { empty_44 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 127 \
    name empty_45 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_45 \
    op interface \
    ports { empty_45 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 128 \
    name empty_46 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_46 \
    op interface \
    ports { empty_46 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 129 \
    name empty_47 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_47 \
    op interface \
    ports { empty_47 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 130 \
    name empty_48 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_48 \
    op interface \
    ports { empty_48 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 131 \
    name empty_49 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_49 \
    op interface \
    ports { empty_49 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 132 \
    name empty_50 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_50 \
    op interface \
    ports { empty_50 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 133 \
    name empty_51 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_51 \
    op interface \
    ports { empty_51 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 134 \
    name empty_52 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_52 \
    op interface \
    ports { empty_52 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 135 \
    name empty_53 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_53 \
    op interface \
    ports { empty_53 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 136 \
    name empty_54 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_54 \
    op interface \
    ports { empty_54 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 137 \
    name empty_55 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_55 \
    op interface \
    ports { empty_55 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 138 \
    name empty_56 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_56 \
    op interface \
    ports { empty_56 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 139 \
    name empty_57 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_57 \
    op interface \
    ports { empty_57 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 140 \
    name empty_58 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_58 \
    op interface \
    ports { empty_58 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 141 \
    name empty_59 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_59 \
    op interface \
    ports { empty_59 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 142 \
    name empty_60 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_60 \
    op interface \
    ports { empty_60 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 143 \
    name empty_61 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_61 \
    op interface \
    ports { empty_61 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 144 \
    name empty_62 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_62 \
    op interface \
    ports { empty_62 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 145 \
    name empty_63 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_63 \
    op interface \
    ports { empty_63 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 146 \
    name empty_64 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_64 \
    op interface \
    ports { empty_64 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 147 \
    name empty_65 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_65 \
    op interface \
    ports { empty_65 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 148 \
    name empty_66 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_66 \
    op interface \
    ports { empty_66 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 149 \
    name empty_67 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_67 \
    op interface \
    ports { empty_67 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 150 \
    name empty_68 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_68 \
    op interface \
    ports { empty_68 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 151 \
    name empty_69 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_69 \
    op interface \
    ports { empty_69 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 152 \
    name empty_70 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_70 \
    op interface \
    ports { empty_70 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 153 \
    name empty_71 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_71 \
    op interface \
    ports { empty_71 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 154 \
    name empty_72 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_72 \
    op interface \
    ports { empty_72 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 155 \
    name empty_73 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_73 \
    op interface \
    ports { empty_73 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 156 \
    name empty_74 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_74 \
    op interface \
    ports { empty_74 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 157 \
    name empty_75 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_75 \
    op interface \
    ports { empty_75 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 158 \
    name empty_76 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_76 \
    op interface \
    ports { empty_76 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 159 \
    name empty_77 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_77 \
    op interface \
    ports { empty_77 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 160 \
    name empty_78 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_78 \
    op interface \
    ports { empty_78 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 161 \
    name empty_79 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_79 \
    op interface \
    ports { empty_79 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 162 \
    name empty_80 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_80 \
    op interface \
    ports { empty_80 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 163 \
    name empty_81 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_81 \
    op interface \
    ports { empty_81 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 164 \
    name empty_82 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_82 \
    op interface \
    ports { empty_82 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 165 \
    name empty_83 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_83 \
    op interface \
    ports { empty_83 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 166 \
    name empty_84 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_84 \
    op interface \
    ports { empty_84 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 167 \
    name empty_85 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_85 \
    op interface \
    ports { empty_85 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 168 \
    name empty_86 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_86 \
    op interface \
    ports { empty_86 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 169 \
    name empty_87 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_87 \
    op interface \
    ports { empty_87 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 170 \
    name empty_88 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_88 \
    op interface \
    ports { empty_88 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 171 \
    name empty_89 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_89 \
    op interface \
    ports { empty_89 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 172 \
    name empty_90 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_90 \
    op interface \
    ports { empty_90 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 173 \
    name empty_91 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_91 \
    op interface \
    ports { empty_91 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 174 \
    name empty_92 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_92 \
    op interface \
    ports { empty_92 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 175 \
    name empty_93 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_93 \
    op interface \
    ports { empty_93 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 176 \
    name empty_94 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_94 \
    op interface \
    ports { empty_94 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 177 \
    name empty_95 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_95 \
    op interface \
    ports { empty_95 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 178 \
    name empty_96 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_96 \
    op interface \
    ports { empty_96 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 179 \
    name empty_97 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_97 \
    op interface \
    ports { empty_97 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 180 \
    name empty_98 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_98 \
    op interface \
    ports { empty_98 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 181 \
    name empty_99 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_99 \
    op interface \
    ports { empty_99 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 182 \
    name empty_100 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_100 \
    op interface \
    ports { empty_100 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 183 \
    name empty_101 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_101 \
    op interface \
    ports { empty_101 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 184 \
    name empty_102 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_102 \
    op interface \
    ports { empty_102 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 185 \
    name empty_103 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_103 \
    op interface \
    ports { empty_103 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 186 \
    name empty_104 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_104 \
    op interface \
    ports { empty_104 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 187 \
    name empty_105 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_105 \
    op interface \
    ports { empty_105 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 188 \
    name empty_106 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_106 \
    op interface \
    ports { empty_106 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 189 \
    name empty_107 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_107 \
    op interface \
    ports { empty_107 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 190 \
    name empty_108 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_108 \
    op interface \
    ports { empty_108 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 191 \
    name empty_109 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_109 \
    op interface \
    ports { empty_109 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 192 \
    name empty_110 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_110 \
    op interface \
    ports { empty_110 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 193 \
    name empty_111 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_111 \
    op interface \
    ports { empty_111 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 194 \
    name empty_112 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_112 \
    op interface \
    ports { empty_112 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 195 \
    name empty_113 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_113 \
    op interface \
    ports { empty_113 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 196 \
    name empty_114 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_114 \
    op interface \
    ports { empty_114 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 197 \
    name empty_115 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_115 \
    op interface \
    ports { empty_115 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 198 \
    name empty_116 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_116 \
    op interface \
    ports { empty_116 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 199 \
    name empty_117 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_117 \
    op interface \
    ports { empty_117 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 200 \
    name empty_118 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_118 \
    op interface \
    ports { empty_118 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 201 \
    name empty_119 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_119 \
    op interface \
    ports { empty_119 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 202 \
    name empty_120 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_120 \
    op interface \
    ports { empty_120 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 203 \
    name empty_121 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_121 \
    op interface \
    ports { empty_121 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 204 \
    name empty_122 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_122 \
    op interface \
    ports { empty_122 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 205 \
    name empty_123 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_123 \
    op interface \
    ports { empty_123 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 206 \
    name empty_124 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_124 \
    op interface \
    ports { empty_124 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 207 \
    name empty_125 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_125 \
    op interface \
    ports { empty_125 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 208 \
    name empty_126 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_126 \
    op interface \
    ports { empty_126 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 209 \
    name empty_127 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_127 \
    op interface \
    ports { empty_127 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 210 \
    name empty_128 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_128 \
    op interface \
    ports { empty_128 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 211 \
    name empty_129 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_129 \
    op interface \
    ports { empty_129 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 212 \
    name empty_130 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_130 \
    op interface \
    ports { empty_130 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 213 \
    name empty_131 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_131 \
    op interface \
    ports { empty_131 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 214 \
    name empty_132 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_132 \
    op interface \
    ports { empty_132 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 215 \
    name empty_133 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_133 \
    op interface \
    ports { empty_133 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 216 \
    name empty_134 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_134 \
    op interface \
    ports { empty_134 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 217 \
    name empty_135 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_135 \
    op interface \
    ports { empty_135 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 218 \
    name empty_136 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_136 \
    op interface \
    ports { empty_136 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 219 \
    name empty_137 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_137 \
    op interface \
    ports { empty_137 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 220 \
    name empty_138 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_138 \
    op interface \
    ports { empty_138 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 221 \
    name empty_139 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_139 \
    op interface \
    ports { empty_139 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 222 \
    name empty_140 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_140 \
    op interface \
    ports { empty_140 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 223 \
    name empty_141 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_141 \
    op interface \
    ports { empty_141 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 224 \
    name empty_142 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_142 \
    op interface \
    ports { empty_142 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 225 \
    name empty_143 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_143 \
    op interface \
    ports { empty_143 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 226 \
    name empty_144 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_144 \
    op interface \
    ports { empty_144 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 227 \
    name empty_145 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_145 \
    op interface \
    ports { empty_145 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 228 \
    name empty_146 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_146 \
    op interface \
    ports { empty_146 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 229 \
    name empty_147 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_147 \
    op interface \
    ports { empty_147 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 230 \
    name empty_148 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_148 \
    op interface \
    ports { empty_148 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 231 \
    name empty_149 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_149 \
    op interface \
    ports { empty_149 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 232 \
    name empty_150 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_150 \
    op interface \
    ports { empty_150 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 233 \
    name empty_151 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_151 \
    op interface \
    ports { empty_151 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 234 \
    name empty_152 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_152 \
    op interface \
    ports { empty_152 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 235 \
    name empty_153 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_153 \
    op interface \
    ports { empty_153 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 236 \
    name empty_154 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_154 \
    op interface \
    ports { empty_154 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 237 \
    name empty_155 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_155 \
    op interface \
    ports { empty_155 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 238 \
    name empty_156 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_156 \
    op interface \
    ports { empty_156 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 239 \
    name empty_157 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_157 \
    op interface \
    ports { empty_157 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 240 \
    name empty_158 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_158 \
    op interface \
    ports { empty_158 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 241 \
    name empty_159 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_159 \
    op interface \
    ports { empty_159 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 242 \
    name empty_160 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_160 \
    op interface \
    ports { empty_160 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 243 \
    name empty_161 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_161 \
    op interface \
    ports { empty_161 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 244 \
    name empty_162 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_162 \
    op interface \
    ports { empty_162 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 245 \
    name empty_163 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_163 \
    op interface \
    ports { empty_163 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 246 \
    name empty_164 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_164 \
    op interface \
    ports { empty_164 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 247 \
    name empty_165 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_165 \
    op interface \
    ports { empty_165 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 248 \
    name empty_166 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_166 \
    op interface \
    ports { empty_166 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 249 \
    name empty_167 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_167 \
    op interface \
    ports { empty_167 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 250 \
    name empty_168 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_168 \
    op interface \
    ports { empty_168 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 251 \
    name empty_169 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_169 \
    op interface \
    ports { empty_169 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 252 \
    name empty_170 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_170 \
    op interface \
    ports { empty_170 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 253 \
    name empty_171 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_171 \
    op interface \
    ports { empty_171 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 254 \
    name empty_172 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_172 \
    op interface \
    ports { empty_172 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 255 \
    name empty_173 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_173 \
    op interface \
    ports { empty_173 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 256 \
    name empty_174 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_174 \
    op interface \
    ports { empty_174 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 257 \
    name empty_175 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_175 \
    op interface \
    ports { empty_175 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 258 \
    name empty_176 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_176 \
    op interface \
    ports { empty_176 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 259 \
    name empty_177 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_177 \
    op interface \
    ports { empty_177 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 260 \
    name empty_178 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_178 \
    op interface \
    ports { empty_178 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 261 \
    name empty_179 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_179 \
    op interface \
    ports { empty_179 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 262 \
    name empty_180 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_180 \
    op interface \
    ports { empty_180 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 263 \
    name empty_181 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_181 \
    op interface \
    ports { empty_181 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 264 \
    name empty_182 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_182 \
    op interface \
    ports { empty_182 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 265 \
    name empty_183 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_183 \
    op interface \
    ports { empty_183 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 266 \
    name empty_184 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_184 \
    op interface \
    ports { empty_184 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 267 \
    name empty_185 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_185 \
    op interface \
    ports { empty_185 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 268 \
    name empty_186 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_186 \
    op interface \
    ports { empty_186 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 269 \
    name empty_187 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_187 \
    op interface \
    ports { empty_187 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 270 \
    name empty_188 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_188 \
    op interface \
    ports { empty_188 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 271 \
    name empty_189 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_189 \
    op interface \
    ports { empty_189 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 272 \
    name empty_190 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_190 \
    op interface \
    ports { empty_190 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 273 \
    name empty_191 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_191 \
    op interface \
    ports { empty_191 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 274 \
    name empty_192 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_192 \
    op interface \
    ports { empty_192 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 275 \
    name empty_193 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_193 \
    op interface \
    ports { empty_193 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 276 \
    name empty_194 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_194 \
    op interface \
    ports { empty_194 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 277 \
    name empty_195 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_195 \
    op interface \
    ports { empty_195 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 278 \
    name empty_196 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_196 \
    op interface \
    ports { empty_196 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 279 \
    name empty_197 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_197 \
    op interface \
    ports { empty_197 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 280 \
    name empty_198 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_198 \
    op interface \
    ports { empty_198 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 281 \
    name empty_199 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_199 \
    op interface \
    ports { empty_199 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 282 \
    name empty_200 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_200 \
    op interface \
    ports { empty_200 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 283 \
    name empty_201 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_201 \
    op interface \
    ports { empty_201 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 284 \
    name empty_202 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_202 \
    op interface \
    ports { empty_202 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 285 \
    name empty_203 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_203 \
    op interface \
    ports { empty_203 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 286 \
    name empty_204 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_204 \
    op interface \
    ports { empty_204 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 287 \
    name empty_205 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_205 \
    op interface \
    ports { empty_205 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 288 \
    name empty_206 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_206 \
    op interface \
    ports { empty_206 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 289 \
    name empty_207 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_207 \
    op interface \
    ports { empty_207 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 290 \
    name empty_208 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_208 \
    op interface \
    ports { empty_208 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 291 \
    name empty_209 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_209 \
    op interface \
    ports { empty_209 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 292 \
    name empty_210 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_210 \
    op interface \
    ports { empty_210 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 293 \
    name empty_211 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_211 \
    op interface \
    ports { empty_211 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 294 \
    name empty_212 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_212 \
    op interface \
    ports { empty_212 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 295 \
    name empty_213 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_213 \
    op interface \
    ports { empty_213 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 296 \
    name empty_214 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_214 \
    op interface \
    ports { empty_214 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 297 \
    name empty_215 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_215 \
    op interface \
    ports { empty_215 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 298 \
    name empty_216 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_216 \
    op interface \
    ports { empty_216 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 299 \
    name empty_217 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_217 \
    op interface \
    ports { empty_217 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 300 \
    name empty_218 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_218 \
    op interface \
    ports { empty_218 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 301 \
    name empty_219 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_219 \
    op interface \
    ports { empty_219 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 302 \
    name empty_220 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_220 \
    op interface \
    ports { empty_220 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 303 \
    name empty_221 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_221 \
    op interface \
    ports { empty_221 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 304 \
    name empty_222 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_222 \
    op interface \
    ports { empty_222 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 305 \
    name empty_223 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_223 \
    op interface \
    ports { empty_223 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 306 \
    name empty_224 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_224 \
    op interface \
    ports { empty_224 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 307 \
    name empty_225 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_225 \
    op interface \
    ports { empty_225 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 308 \
    name empty_226 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_226 \
    op interface \
    ports { empty_226 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 309 \
    name empty_227 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_227 \
    op interface \
    ports { empty_227 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 310 \
    name empty_228 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_228 \
    op interface \
    ports { empty_228 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 311 \
    name empty_229 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_229 \
    op interface \
    ports { empty_229 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 312 \
    name empty_230 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_230 \
    op interface \
    ports { empty_230 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 313 \
    name empty_231 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_231 \
    op interface \
    ports { empty_231 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 314 \
    name empty_232 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_232 \
    op interface \
    ports { empty_232 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 315 \
    name empty_233 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_233 \
    op interface \
    ports { empty_233 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 316 \
    name empty_234 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_234 \
    op interface \
    ports { empty_234 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 317 \
    name empty_235 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_235 \
    op interface \
    ports { empty_235 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 318 \
    name empty_236 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_236 \
    op interface \
    ports { empty_236 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 319 \
    name empty_237 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_237 \
    op interface \
    ports { empty_237 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 320 \
    name empty_238 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_238 \
    op interface \
    ports { empty_238 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 321 \
    name empty_239 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_239 \
    op interface \
    ports { empty_239 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 322 \
    name empty_240 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_240 \
    op interface \
    ports { empty_240 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 323 \
    name empty_241 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_241 \
    op interface \
    ports { empty_241 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 324 \
    name empty_242 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_242 \
    op interface \
    ports { empty_242 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 325 \
    name empty_243 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_243 \
    op interface \
    ports { empty_243 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 326 \
    name empty_244 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_244 \
    op interface \
    ports { empty_244 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 327 \
    name empty_245 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_245 \
    op interface \
    ports { empty_245 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 328 \
    name empty_246 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_246 \
    op interface \
    ports { empty_246 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 329 \
    name empty_247 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_247 \
    op interface \
    ports { empty_247 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 330 \
    name empty_248 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_248 \
    op interface \
    ports { empty_248 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 331 \
    name empty_249 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_249 \
    op interface \
    ports { empty_249 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 332 \
    name empty_250 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_250 \
    op interface \
    ports { empty_250 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 333 \
    name empty_251 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_251 \
    op interface \
    ports { empty_251 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 334 \
    name empty_252 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_252 \
    op interface \
    ports { empty_252 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 335 \
    name empty_253 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_253 \
    op interface \
    ports { empty_253 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 336 \
    name empty_254 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_254 \
    op interface \
    ports { empty_254 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 337 \
    name empty_255 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_255 \
    op interface \
    ports { empty_255 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 338 \
    name empty_256 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_256 \
    op interface \
    ports { empty_256 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 339 \
    name empty_257 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_257 \
    op interface \
    ports { empty_257 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 340 \
    name empty_258 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_258 \
    op interface \
    ports { empty_258 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 341 \
    name empty_259 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_259 \
    op interface \
    ports { empty_259 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 342 \
    name empty_260 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_260 \
    op interface \
    ports { empty_260 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 343 \
    name empty_261 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_261 \
    op interface \
    ports { empty_261 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 344 \
    name empty_262 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_262 \
    op interface \
    ports { empty_262 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 345 \
    name empty_263 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_263 \
    op interface \
    ports { empty_263 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 346 \
    name empty_264 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_264 \
    op interface \
    ports { empty_264 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 347 \
    name empty_265 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_265 \
    op interface \
    ports { empty_265 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 348 \
    name empty_266 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_266 \
    op interface \
    ports { empty_266 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 349 \
    name empty_267 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_267 \
    op interface \
    ports { empty_267 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 350 \
    name empty_268 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_268 \
    op interface \
    ports { empty_268 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 351 \
    name empty_269 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_269 \
    op interface \
    ports { empty_269 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 352 \
    name empty_270 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_270 \
    op interface \
    ports { empty_270 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 353 \
    name empty_271 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_271 \
    op interface \
    ports { empty_271 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 354 \
    name empty_272 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_272 \
    op interface \
    ports { empty_272 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 355 \
    name empty_273 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_273 \
    op interface \
    ports { empty_273 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 356 \
    name empty \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty \
    op interface \
    ports { empty { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 357 \
    name p_phi_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_phi_out \
    op interface \
    ports { p_phi_out { O 32 vector } p_phi_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 358 \
    name p_phi340_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_phi340_out \
    op interface \
    ports { p_phi340_out { O 32 vector } p_phi340_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 359 \
    name p_phi341_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_phi341_out \
    op interface \
    ports { p_phi341_out { O 32 vector } p_phi341_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 360 \
    name p_phi342_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_phi342_out \
    op interface \
    ports { p_phi342_out { O 32 vector } p_phi342_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 361 \
    name p_phi343_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_phi343_out \
    op interface \
    ports { p_phi343_out { O 32 vector } p_phi343_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 362 \
    name p_phi344_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_phi344_out \
    op interface \
    ports { p_phi344_out { O 32 vector } p_phi344_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 363 \
    name p_phi345_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_phi345_out \
    op interface \
    ports { p_phi345_out { O 32 vector } p_phi345_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 364 \
    name p_phi346_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_phi346_out \
    op interface \
    ports { p_phi346_out { O 32 vector } p_phi346_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 365 \
    name p_phi347_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_phi347_out \
    op interface \
    ports { p_phi347_out { O 32 vector } p_phi347_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 366 \
    name p_phi348_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_phi348_out \
    op interface \
    ports { p_phi348_out { O 32 vector } p_phi348_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 367 \
    name p_phi349_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_phi349_out \
    op interface \
    ports { p_phi349_out { O 32 vector } p_phi349_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 368 \
    name p_phi350_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_phi350_out \
    op interface \
    ports { p_phi350_out { O 32 vector } p_phi350_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 369 \
    name p_phi351_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_phi351_out \
    op interface \
    ports { p_phi351_out { O 32 vector } p_phi351_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 370 \
    name p_phi352_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_phi352_out \
    op interface \
    ports { p_phi352_out { O 32 vector } p_phi352_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 371 \
    name p_phi353_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_phi353_out \
    op interface \
    ports { p_phi353_out { O 32 vector } p_phi353_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 372 \
    name p_phi354_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_phi354_out \
    op interface \
    ports { p_phi354_out { O 32 vector } p_phi354_out_ap_vld { O 1 bit } } \
} "
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


