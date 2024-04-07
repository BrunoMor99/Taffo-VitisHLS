# This script segment is generated automatically by AutoPilot

set name doitgen_mul_32s_32s_50_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
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
    id 4098 \
    name gmem \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem \
    op interface \
    ports { m_axi_gmem_AWVALID { O 1 bit } m_axi_gmem_AWREADY { I 1 bit } m_axi_gmem_AWADDR { O 64 vector } m_axi_gmem_AWID { O 1 vector } m_axi_gmem_AWLEN { O 32 vector } m_axi_gmem_AWSIZE { O 3 vector } m_axi_gmem_AWBURST { O 2 vector } m_axi_gmem_AWLOCK { O 2 vector } m_axi_gmem_AWCACHE { O 4 vector } m_axi_gmem_AWPROT { O 3 vector } m_axi_gmem_AWQOS { O 4 vector } m_axi_gmem_AWREGION { O 4 vector } m_axi_gmem_AWUSER { O 1 vector } m_axi_gmem_WVALID { O 1 bit } m_axi_gmem_WREADY { I 1 bit } m_axi_gmem_WDATA { O 32 vector } m_axi_gmem_WSTRB { O 4 vector } m_axi_gmem_WLAST { O 1 bit } m_axi_gmem_WID { O 1 vector } m_axi_gmem_WUSER { O 1 vector } m_axi_gmem_ARVALID { O 1 bit } m_axi_gmem_ARREADY { I 1 bit } m_axi_gmem_ARADDR { O 64 vector } m_axi_gmem_ARID { O 1 vector } m_axi_gmem_ARLEN { O 32 vector } m_axi_gmem_ARSIZE { O 3 vector } m_axi_gmem_ARBURST { O 2 vector } m_axi_gmem_ARLOCK { O 2 vector } m_axi_gmem_ARCACHE { O 4 vector } m_axi_gmem_ARPROT { O 3 vector } m_axi_gmem_ARQOS { O 4 vector } m_axi_gmem_ARREGION { O 4 vector } m_axi_gmem_ARUSER { O 1 vector } m_axi_gmem_RVALID { I 1 bit } m_axi_gmem_RREADY { O 1 bit } m_axi_gmem_RDATA { I 32 vector } m_axi_gmem_RLAST { I 1 bit } m_axi_gmem_RID { I 1 vector } m_axi_gmem_RFIFONUM { I 9 vector } m_axi_gmem_RUSER { I 1 vector } m_axi_gmem_RRESP { I 2 vector } m_axi_gmem_BVALID { I 1 bit } m_axi_gmem_BREADY { O 1 bit } m_axi_gmem_BRESP { I 2 vector } m_axi_gmem_BID { I 1 vector } m_axi_gmem_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4099 \
    name A \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A \
    op interface \
    ports { A { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4100 \
    name gmem_addr_read_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_cast \
    op interface \
    ports { gmem_addr_read_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4101 \
    name gmem_addr_read_16_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_16_cast \
    op interface \
    ports { gmem_addr_read_16_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4102 \
    name gmem_addr_read_32_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_32_cast \
    op interface \
    ports { gmem_addr_read_32_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4103 \
    name gmem_addr_read_48_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_48_cast \
    op interface \
    ports { gmem_addr_read_48_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4104 \
    name gmem_addr_read_64_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_64_cast \
    op interface \
    ports { gmem_addr_read_64_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4105 \
    name gmem_addr_read_80_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_80_cast \
    op interface \
    ports { gmem_addr_read_80_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4106 \
    name gmem_addr_read_96_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_96_cast \
    op interface \
    ports { gmem_addr_read_96_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4107 \
    name gmem_addr_read_112_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_112_cast \
    op interface \
    ports { gmem_addr_read_112_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4108 \
    name gmem_addr_read_128_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_128_cast \
    op interface \
    ports { gmem_addr_read_128_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4109 \
    name gmem_addr_read_144_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_144_cast \
    op interface \
    ports { gmem_addr_read_144_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4110 \
    name gmem_addr_read_160_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_160_cast \
    op interface \
    ports { gmem_addr_read_160_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4111 \
    name gmem_addr_read_176_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_176_cast \
    op interface \
    ports { gmem_addr_read_176_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4112 \
    name gmem_addr_read_192_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_192_cast \
    op interface \
    ports { gmem_addr_read_192_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4113 \
    name gmem_addr_read_208_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_208_cast \
    op interface \
    ports { gmem_addr_read_208_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4114 \
    name gmem_addr_read_224_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_224_cast \
    op interface \
    ports { gmem_addr_read_224_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4115 \
    name gmem_addr_read_240_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_240_cast \
    op interface \
    ports { gmem_addr_read_240_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4116 \
    name gmem_addr_read_1_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_1_cast \
    op interface \
    ports { gmem_addr_read_1_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4117 \
    name gmem_addr_read_17_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_17_cast \
    op interface \
    ports { gmem_addr_read_17_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4118 \
    name gmem_addr_read_33_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_33_cast \
    op interface \
    ports { gmem_addr_read_33_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4119 \
    name gmem_addr_read_49_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_49_cast \
    op interface \
    ports { gmem_addr_read_49_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4120 \
    name gmem_addr_read_65_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_65_cast \
    op interface \
    ports { gmem_addr_read_65_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4121 \
    name gmem_addr_read_81_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_81_cast \
    op interface \
    ports { gmem_addr_read_81_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4122 \
    name gmem_addr_read_97_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_97_cast \
    op interface \
    ports { gmem_addr_read_97_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4123 \
    name gmem_addr_read_113_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_113_cast \
    op interface \
    ports { gmem_addr_read_113_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4124 \
    name gmem_addr_read_129_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_129_cast \
    op interface \
    ports { gmem_addr_read_129_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4125 \
    name gmem_addr_read_145_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_145_cast \
    op interface \
    ports { gmem_addr_read_145_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4126 \
    name gmem_addr_read_161_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_161_cast \
    op interface \
    ports { gmem_addr_read_161_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4127 \
    name gmem_addr_read_177_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_177_cast \
    op interface \
    ports { gmem_addr_read_177_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4128 \
    name gmem_addr_read_193_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_193_cast \
    op interface \
    ports { gmem_addr_read_193_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4129 \
    name gmem_addr_read_209_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_209_cast \
    op interface \
    ports { gmem_addr_read_209_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4130 \
    name gmem_addr_read_225_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_225_cast \
    op interface \
    ports { gmem_addr_read_225_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4131 \
    name gmem_addr_read_241_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_241_cast \
    op interface \
    ports { gmem_addr_read_241_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4132 \
    name gmem_addr_read_2_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_2_cast \
    op interface \
    ports { gmem_addr_read_2_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4133 \
    name gmem_addr_read_18_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_18_cast \
    op interface \
    ports { gmem_addr_read_18_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4134 \
    name gmem_addr_read_34_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_34_cast \
    op interface \
    ports { gmem_addr_read_34_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4135 \
    name gmem_addr_read_50_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_50_cast \
    op interface \
    ports { gmem_addr_read_50_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4136 \
    name gmem_addr_read_66_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_66_cast \
    op interface \
    ports { gmem_addr_read_66_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4137 \
    name gmem_addr_read_82_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_82_cast \
    op interface \
    ports { gmem_addr_read_82_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4138 \
    name gmem_addr_read_98_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_98_cast \
    op interface \
    ports { gmem_addr_read_98_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4139 \
    name gmem_addr_read_114_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_114_cast \
    op interface \
    ports { gmem_addr_read_114_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4140 \
    name gmem_addr_read_130_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_130_cast \
    op interface \
    ports { gmem_addr_read_130_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4141 \
    name gmem_addr_read_146_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_146_cast \
    op interface \
    ports { gmem_addr_read_146_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4142 \
    name gmem_addr_read_162_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_162_cast \
    op interface \
    ports { gmem_addr_read_162_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4143 \
    name gmem_addr_read_178_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_178_cast \
    op interface \
    ports { gmem_addr_read_178_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4144 \
    name gmem_addr_read_194_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_194_cast \
    op interface \
    ports { gmem_addr_read_194_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4145 \
    name gmem_addr_read_210_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_210_cast \
    op interface \
    ports { gmem_addr_read_210_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4146 \
    name gmem_addr_read_226_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_226_cast \
    op interface \
    ports { gmem_addr_read_226_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4147 \
    name gmem_addr_read_242_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_242_cast \
    op interface \
    ports { gmem_addr_read_242_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4148 \
    name gmem_addr_read_3_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_3_cast \
    op interface \
    ports { gmem_addr_read_3_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4149 \
    name gmem_addr_read_19_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_19_cast \
    op interface \
    ports { gmem_addr_read_19_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4150 \
    name gmem_addr_read_35_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_35_cast \
    op interface \
    ports { gmem_addr_read_35_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4151 \
    name gmem_addr_read_51_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_51_cast \
    op interface \
    ports { gmem_addr_read_51_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4152 \
    name gmem_addr_read_67_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_67_cast \
    op interface \
    ports { gmem_addr_read_67_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4153 \
    name gmem_addr_read_83_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_83_cast \
    op interface \
    ports { gmem_addr_read_83_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4154 \
    name gmem_addr_read_99_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_99_cast \
    op interface \
    ports { gmem_addr_read_99_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4155 \
    name gmem_addr_read_115_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_115_cast \
    op interface \
    ports { gmem_addr_read_115_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4156 \
    name gmem_addr_read_131_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_131_cast \
    op interface \
    ports { gmem_addr_read_131_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4157 \
    name gmem_addr_read_147_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_147_cast \
    op interface \
    ports { gmem_addr_read_147_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4158 \
    name gmem_addr_read_163_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_163_cast \
    op interface \
    ports { gmem_addr_read_163_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4159 \
    name gmem_addr_read_179_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_179_cast \
    op interface \
    ports { gmem_addr_read_179_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4160 \
    name gmem_addr_read_195_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_195_cast \
    op interface \
    ports { gmem_addr_read_195_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4161 \
    name gmem_addr_read_211_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_211_cast \
    op interface \
    ports { gmem_addr_read_211_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4162 \
    name gmem_addr_read_227_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_227_cast \
    op interface \
    ports { gmem_addr_read_227_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4163 \
    name gmem_addr_read_243_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_243_cast \
    op interface \
    ports { gmem_addr_read_243_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4164 \
    name gmem_addr_read_4_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_4_cast \
    op interface \
    ports { gmem_addr_read_4_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4165 \
    name gmem_addr_read_20_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_20_cast \
    op interface \
    ports { gmem_addr_read_20_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4166 \
    name gmem_addr_read_36_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_36_cast \
    op interface \
    ports { gmem_addr_read_36_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4167 \
    name gmem_addr_read_52_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_52_cast \
    op interface \
    ports { gmem_addr_read_52_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4168 \
    name gmem_addr_read_68_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_68_cast \
    op interface \
    ports { gmem_addr_read_68_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4169 \
    name gmem_addr_read_84_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_84_cast \
    op interface \
    ports { gmem_addr_read_84_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4170 \
    name gmem_addr_read_100_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_100_cast \
    op interface \
    ports { gmem_addr_read_100_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4171 \
    name gmem_addr_read_116_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_116_cast \
    op interface \
    ports { gmem_addr_read_116_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4172 \
    name gmem_addr_read_132_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_132_cast \
    op interface \
    ports { gmem_addr_read_132_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4173 \
    name gmem_addr_read_148_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_148_cast \
    op interface \
    ports { gmem_addr_read_148_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4174 \
    name gmem_addr_read_164_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_164_cast \
    op interface \
    ports { gmem_addr_read_164_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4175 \
    name gmem_addr_read_180_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_180_cast \
    op interface \
    ports { gmem_addr_read_180_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4176 \
    name gmem_addr_read_196_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_196_cast \
    op interface \
    ports { gmem_addr_read_196_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4177 \
    name gmem_addr_read_212_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_212_cast \
    op interface \
    ports { gmem_addr_read_212_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4178 \
    name gmem_addr_read_228_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_228_cast \
    op interface \
    ports { gmem_addr_read_228_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4179 \
    name gmem_addr_read_244_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_244_cast \
    op interface \
    ports { gmem_addr_read_244_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4180 \
    name gmem_addr_read_5_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_5_cast \
    op interface \
    ports { gmem_addr_read_5_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4181 \
    name gmem_addr_read_21_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_21_cast \
    op interface \
    ports { gmem_addr_read_21_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4182 \
    name gmem_addr_read_37_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_37_cast \
    op interface \
    ports { gmem_addr_read_37_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4183 \
    name gmem_addr_read_53_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_53_cast \
    op interface \
    ports { gmem_addr_read_53_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4184 \
    name gmem_addr_read_69_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_69_cast \
    op interface \
    ports { gmem_addr_read_69_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4185 \
    name gmem_addr_read_85_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_85_cast \
    op interface \
    ports { gmem_addr_read_85_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4186 \
    name gmem_addr_read_101_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_101_cast \
    op interface \
    ports { gmem_addr_read_101_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4187 \
    name gmem_addr_read_117_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_117_cast \
    op interface \
    ports { gmem_addr_read_117_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4188 \
    name gmem_addr_read_133_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_133_cast \
    op interface \
    ports { gmem_addr_read_133_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4189 \
    name gmem_addr_read_149_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_149_cast \
    op interface \
    ports { gmem_addr_read_149_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4190 \
    name gmem_addr_read_165_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_165_cast \
    op interface \
    ports { gmem_addr_read_165_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4191 \
    name gmem_addr_read_181_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_181_cast \
    op interface \
    ports { gmem_addr_read_181_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4192 \
    name gmem_addr_read_197_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_197_cast \
    op interface \
    ports { gmem_addr_read_197_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4193 \
    name gmem_addr_read_213_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_213_cast \
    op interface \
    ports { gmem_addr_read_213_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4194 \
    name gmem_addr_read_229_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_229_cast \
    op interface \
    ports { gmem_addr_read_229_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4195 \
    name gmem_addr_read_245_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_245_cast \
    op interface \
    ports { gmem_addr_read_245_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4196 \
    name gmem_addr_read_6_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_6_cast \
    op interface \
    ports { gmem_addr_read_6_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4197 \
    name gmem_addr_read_22_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_22_cast \
    op interface \
    ports { gmem_addr_read_22_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4198 \
    name gmem_addr_read_38_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_38_cast \
    op interface \
    ports { gmem_addr_read_38_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4199 \
    name gmem_addr_read_54_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_54_cast \
    op interface \
    ports { gmem_addr_read_54_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4200 \
    name gmem_addr_read_70_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_70_cast \
    op interface \
    ports { gmem_addr_read_70_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4201 \
    name gmem_addr_read_86_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_86_cast \
    op interface \
    ports { gmem_addr_read_86_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4202 \
    name gmem_addr_read_102_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_102_cast \
    op interface \
    ports { gmem_addr_read_102_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4203 \
    name gmem_addr_read_118_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_118_cast \
    op interface \
    ports { gmem_addr_read_118_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4204 \
    name gmem_addr_read_134_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_134_cast \
    op interface \
    ports { gmem_addr_read_134_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4205 \
    name gmem_addr_read_150_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_150_cast \
    op interface \
    ports { gmem_addr_read_150_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4206 \
    name gmem_addr_read_166_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_166_cast \
    op interface \
    ports { gmem_addr_read_166_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4207 \
    name gmem_addr_read_182_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_182_cast \
    op interface \
    ports { gmem_addr_read_182_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4208 \
    name gmem_addr_read_198_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_198_cast \
    op interface \
    ports { gmem_addr_read_198_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4209 \
    name gmem_addr_read_214_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_214_cast \
    op interface \
    ports { gmem_addr_read_214_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4210 \
    name gmem_addr_read_230_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_230_cast \
    op interface \
    ports { gmem_addr_read_230_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4211 \
    name gmem_addr_read_246_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_246_cast \
    op interface \
    ports { gmem_addr_read_246_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4212 \
    name gmem_addr_read_7_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_7_cast \
    op interface \
    ports { gmem_addr_read_7_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4213 \
    name gmem_addr_read_23_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_23_cast \
    op interface \
    ports { gmem_addr_read_23_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4214 \
    name gmem_addr_read_39_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_39_cast \
    op interface \
    ports { gmem_addr_read_39_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4215 \
    name gmem_addr_read_55_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_55_cast \
    op interface \
    ports { gmem_addr_read_55_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4216 \
    name gmem_addr_read_71_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_71_cast \
    op interface \
    ports { gmem_addr_read_71_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4217 \
    name gmem_addr_read_87_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_87_cast \
    op interface \
    ports { gmem_addr_read_87_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4218 \
    name gmem_addr_read_103_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_103_cast \
    op interface \
    ports { gmem_addr_read_103_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4219 \
    name gmem_addr_read_119_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_119_cast \
    op interface \
    ports { gmem_addr_read_119_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4220 \
    name gmem_addr_read_135_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_135_cast \
    op interface \
    ports { gmem_addr_read_135_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4221 \
    name gmem_addr_read_151_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_151_cast \
    op interface \
    ports { gmem_addr_read_151_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4222 \
    name gmem_addr_read_167_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_167_cast \
    op interface \
    ports { gmem_addr_read_167_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4223 \
    name gmem_addr_read_183_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_183_cast \
    op interface \
    ports { gmem_addr_read_183_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4224 \
    name gmem_addr_read_199_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_199_cast \
    op interface \
    ports { gmem_addr_read_199_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4225 \
    name gmem_addr_read_215_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_215_cast \
    op interface \
    ports { gmem_addr_read_215_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4226 \
    name gmem_addr_read_231_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_231_cast \
    op interface \
    ports { gmem_addr_read_231_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4227 \
    name gmem_addr_read_247_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_247_cast \
    op interface \
    ports { gmem_addr_read_247_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4228 \
    name gmem_addr_read_8_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_8_cast \
    op interface \
    ports { gmem_addr_read_8_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4229 \
    name gmem_addr_read_24_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_24_cast \
    op interface \
    ports { gmem_addr_read_24_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4230 \
    name gmem_addr_read_40_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_40_cast \
    op interface \
    ports { gmem_addr_read_40_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4231 \
    name gmem_addr_read_56_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_56_cast \
    op interface \
    ports { gmem_addr_read_56_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4232 \
    name gmem_addr_read_72_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_72_cast \
    op interface \
    ports { gmem_addr_read_72_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4233 \
    name gmem_addr_read_88_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_88_cast \
    op interface \
    ports { gmem_addr_read_88_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4234 \
    name gmem_addr_read_104_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_104_cast \
    op interface \
    ports { gmem_addr_read_104_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4235 \
    name gmem_addr_read_120_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_120_cast \
    op interface \
    ports { gmem_addr_read_120_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4236 \
    name gmem_addr_read_136_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_136_cast \
    op interface \
    ports { gmem_addr_read_136_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4237 \
    name gmem_addr_read_152_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_152_cast \
    op interface \
    ports { gmem_addr_read_152_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4238 \
    name gmem_addr_read_168_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_168_cast \
    op interface \
    ports { gmem_addr_read_168_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4239 \
    name gmem_addr_read_184_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_184_cast \
    op interface \
    ports { gmem_addr_read_184_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4240 \
    name gmem_addr_read_200_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_200_cast \
    op interface \
    ports { gmem_addr_read_200_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4241 \
    name gmem_addr_read_216_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_216_cast \
    op interface \
    ports { gmem_addr_read_216_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4242 \
    name gmem_addr_read_232_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_232_cast \
    op interface \
    ports { gmem_addr_read_232_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4243 \
    name gmem_addr_read_248_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_248_cast \
    op interface \
    ports { gmem_addr_read_248_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4244 \
    name gmem_addr_read_9_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_9_cast \
    op interface \
    ports { gmem_addr_read_9_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4245 \
    name gmem_addr_read_25_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_25_cast \
    op interface \
    ports { gmem_addr_read_25_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4246 \
    name gmem_addr_read_41_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_41_cast \
    op interface \
    ports { gmem_addr_read_41_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4247 \
    name gmem_addr_read_57_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_57_cast \
    op interface \
    ports { gmem_addr_read_57_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4248 \
    name gmem_addr_read_73_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_73_cast \
    op interface \
    ports { gmem_addr_read_73_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4249 \
    name gmem_addr_read_89_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_89_cast \
    op interface \
    ports { gmem_addr_read_89_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4250 \
    name gmem_addr_read_105_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_105_cast \
    op interface \
    ports { gmem_addr_read_105_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4251 \
    name gmem_addr_read_121_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_121_cast \
    op interface \
    ports { gmem_addr_read_121_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4252 \
    name gmem_addr_read_137_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_137_cast \
    op interface \
    ports { gmem_addr_read_137_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4253 \
    name gmem_addr_read_153_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_153_cast \
    op interface \
    ports { gmem_addr_read_153_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4254 \
    name gmem_addr_read_169_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_169_cast \
    op interface \
    ports { gmem_addr_read_169_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4255 \
    name gmem_addr_read_185_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_185_cast \
    op interface \
    ports { gmem_addr_read_185_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4256 \
    name gmem_addr_read_201_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_201_cast \
    op interface \
    ports { gmem_addr_read_201_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4257 \
    name gmem_addr_read_217_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_217_cast \
    op interface \
    ports { gmem_addr_read_217_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4258 \
    name gmem_addr_read_233_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_233_cast \
    op interface \
    ports { gmem_addr_read_233_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4259 \
    name gmem_addr_read_249_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_249_cast \
    op interface \
    ports { gmem_addr_read_249_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4260 \
    name gmem_addr_read_10_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_10_cast \
    op interface \
    ports { gmem_addr_read_10_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4261 \
    name gmem_addr_read_26_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_26_cast \
    op interface \
    ports { gmem_addr_read_26_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4262 \
    name gmem_addr_read_42_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_42_cast \
    op interface \
    ports { gmem_addr_read_42_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4263 \
    name gmem_addr_read_58_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_58_cast \
    op interface \
    ports { gmem_addr_read_58_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4264 \
    name gmem_addr_read_74_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_74_cast \
    op interface \
    ports { gmem_addr_read_74_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4265 \
    name gmem_addr_read_90_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_90_cast \
    op interface \
    ports { gmem_addr_read_90_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4266 \
    name gmem_addr_read_106_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_106_cast \
    op interface \
    ports { gmem_addr_read_106_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4267 \
    name gmem_addr_read_122_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_122_cast \
    op interface \
    ports { gmem_addr_read_122_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4268 \
    name gmem_addr_read_138_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_138_cast \
    op interface \
    ports { gmem_addr_read_138_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4269 \
    name gmem_addr_read_154_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_154_cast \
    op interface \
    ports { gmem_addr_read_154_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4270 \
    name gmem_addr_read_170_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_170_cast \
    op interface \
    ports { gmem_addr_read_170_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4271 \
    name gmem_addr_read_186_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_186_cast \
    op interface \
    ports { gmem_addr_read_186_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4272 \
    name gmem_addr_read_202_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_202_cast \
    op interface \
    ports { gmem_addr_read_202_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4273 \
    name gmem_addr_read_218_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_218_cast \
    op interface \
    ports { gmem_addr_read_218_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4274 \
    name gmem_addr_read_234_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_234_cast \
    op interface \
    ports { gmem_addr_read_234_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4275 \
    name gmem_addr_read_250_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_250_cast \
    op interface \
    ports { gmem_addr_read_250_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4276 \
    name gmem_addr_read_11_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_11_cast \
    op interface \
    ports { gmem_addr_read_11_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4277 \
    name gmem_addr_read_27_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_27_cast \
    op interface \
    ports { gmem_addr_read_27_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4278 \
    name gmem_addr_read_43_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_43_cast \
    op interface \
    ports { gmem_addr_read_43_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4279 \
    name gmem_addr_read_59_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_59_cast \
    op interface \
    ports { gmem_addr_read_59_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4280 \
    name gmem_addr_read_75_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_75_cast \
    op interface \
    ports { gmem_addr_read_75_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4281 \
    name gmem_addr_read_91_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_91_cast \
    op interface \
    ports { gmem_addr_read_91_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4282 \
    name gmem_addr_read_107_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_107_cast \
    op interface \
    ports { gmem_addr_read_107_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4283 \
    name gmem_addr_read_123_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_123_cast \
    op interface \
    ports { gmem_addr_read_123_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4284 \
    name gmem_addr_read_139_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_139_cast \
    op interface \
    ports { gmem_addr_read_139_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4285 \
    name gmem_addr_read_155_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_155_cast \
    op interface \
    ports { gmem_addr_read_155_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4286 \
    name gmem_addr_read_171_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_171_cast \
    op interface \
    ports { gmem_addr_read_171_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4287 \
    name gmem_addr_read_187_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_187_cast \
    op interface \
    ports { gmem_addr_read_187_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4288 \
    name gmem_addr_read_203_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_203_cast \
    op interface \
    ports { gmem_addr_read_203_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4289 \
    name gmem_addr_read_219_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_219_cast \
    op interface \
    ports { gmem_addr_read_219_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4290 \
    name gmem_addr_read_235_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_235_cast \
    op interface \
    ports { gmem_addr_read_235_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4291 \
    name gmem_addr_read_251_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_251_cast \
    op interface \
    ports { gmem_addr_read_251_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4292 \
    name gmem_addr_read_12_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_12_cast \
    op interface \
    ports { gmem_addr_read_12_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4293 \
    name gmem_addr_read_28_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_28_cast \
    op interface \
    ports { gmem_addr_read_28_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4294 \
    name gmem_addr_read_44_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_44_cast \
    op interface \
    ports { gmem_addr_read_44_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4295 \
    name gmem_addr_read_60_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_60_cast \
    op interface \
    ports { gmem_addr_read_60_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4296 \
    name gmem_addr_read_76_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_76_cast \
    op interface \
    ports { gmem_addr_read_76_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4297 \
    name gmem_addr_read_92_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_92_cast \
    op interface \
    ports { gmem_addr_read_92_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4298 \
    name gmem_addr_read_108_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_108_cast \
    op interface \
    ports { gmem_addr_read_108_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4299 \
    name gmem_addr_read_124_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_124_cast \
    op interface \
    ports { gmem_addr_read_124_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4300 \
    name gmem_addr_read_140_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_140_cast \
    op interface \
    ports { gmem_addr_read_140_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4301 \
    name gmem_addr_read_156_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_156_cast \
    op interface \
    ports { gmem_addr_read_156_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4302 \
    name gmem_addr_read_172_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_172_cast \
    op interface \
    ports { gmem_addr_read_172_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4303 \
    name gmem_addr_read_188_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_188_cast \
    op interface \
    ports { gmem_addr_read_188_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4304 \
    name gmem_addr_read_204_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_204_cast \
    op interface \
    ports { gmem_addr_read_204_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4305 \
    name gmem_addr_read_220_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_220_cast \
    op interface \
    ports { gmem_addr_read_220_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4306 \
    name gmem_addr_read_236_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_236_cast \
    op interface \
    ports { gmem_addr_read_236_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4307 \
    name gmem_addr_read_252_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_252_cast \
    op interface \
    ports { gmem_addr_read_252_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4308 \
    name gmem_addr_read_13_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_13_cast \
    op interface \
    ports { gmem_addr_read_13_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4309 \
    name gmem_addr_read_29_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_29_cast \
    op interface \
    ports { gmem_addr_read_29_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4310 \
    name gmem_addr_read_45_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_45_cast \
    op interface \
    ports { gmem_addr_read_45_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4311 \
    name gmem_addr_read_61_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_61_cast \
    op interface \
    ports { gmem_addr_read_61_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4312 \
    name gmem_addr_read_77_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_77_cast \
    op interface \
    ports { gmem_addr_read_77_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4313 \
    name gmem_addr_read_93_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_93_cast \
    op interface \
    ports { gmem_addr_read_93_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4314 \
    name gmem_addr_read_109_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_109_cast \
    op interface \
    ports { gmem_addr_read_109_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4315 \
    name gmem_addr_read_125_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_125_cast \
    op interface \
    ports { gmem_addr_read_125_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4316 \
    name gmem_addr_read_141_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_141_cast \
    op interface \
    ports { gmem_addr_read_141_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4317 \
    name gmem_addr_read_157_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_157_cast \
    op interface \
    ports { gmem_addr_read_157_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4318 \
    name gmem_addr_read_173_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_173_cast \
    op interface \
    ports { gmem_addr_read_173_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4319 \
    name gmem_addr_read_189_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_189_cast \
    op interface \
    ports { gmem_addr_read_189_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4320 \
    name gmem_addr_read_205_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_205_cast \
    op interface \
    ports { gmem_addr_read_205_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4321 \
    name gmem_addr_read_221_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_221_cast \
    op interface \
    ports { gmem_addr_read_221_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4322 \
    name gmem_addr_read_237_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_237_cast \
    op interface \
    ports { gmem_addr_read_237_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4323 \
    name gmem_addr_read_253_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_253_cast \
    op interface \
    ports { gmem_addr_read_253_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4324 \
    name gmem_addr_read_14_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_14_cast \
    op interface \
    ports { gmem_addr_read_14_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4325 \
    name gmem_addr_read_30_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_30_cast \
    op interface \
    ports { gmem_addr_read_30_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4326 \
    name gmem_addr_read_46_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_46_cast \
    op interface \
    ports { gmem_addr_read_46_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4327 \
    name gmem_addr_read_62_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_62_cast \
    op interface \
    ports { gmem_addr_read_62_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4328 \
    name gmem_addr_read_78_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_78_cast \
    op interface \
    ports { gmem_addr_read_78_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4329 \
    name gmem_addr_read_94_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_94_cast \
    op interface \
    ports { gmem_addr_read_94_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4330 \
    name gmem_addr_read_110_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_110_cast \
    op interface \
    ports { gmem_addr_read_110_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4331 \
    name gmem_addr_read_126_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_126_cast \
    op interface \
    ports { gmem_addr_read_126_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4332 \
    name gmem_addr_read_142_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_142_cast \
    op interface \
    ports { gmem_addr_read_142_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4333 \
    name gmem_addr_read_158_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_158_cast \
    op interface \
    ports { gmem_addr_read_158_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4334 \
    name gmem_addr_read_174_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_174_cast \
    op interface \
    ports { gmem_addr_read_174_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4335 \
    name gmem_addr_read_190_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_190_cast \
    op interface \
    ports { gmem_addr_read_190_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4336 \
    name gmem_addr_read_206_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_206_cast \
    op interface \
    ports { gmem_addr_read_206_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4337 \
    name gmem_addr_read_222_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_222_cast \
    op interface \
    ports { gmem_addr_read_222_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4338 \
    name gmem_addr_read_238_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_238_cast \
    op interface \
    ports { gmem_addr_read_238_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4339 \
    name gmem_addr_read_254_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_254_cast \
    op interface \
    ports { gmem_addr_read_254_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4340 \
    name gmem_addr_read_15_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_15_cast \
    op interface \
    ports { gmem_addr_read_15_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4341 \
    name gmem_addr_read_31_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_31_cast \
    op interface \
    ports { gmem_addr_read_31_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4342 \
    name gmem_addr_read_47_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_47_cast \
    op interface \
    ports { gmem_addr_read_47_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4343 \
    name gmem_addr_read_63_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_63_cast \
    op interface \
    ports { gmem_addr_read_63_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4344 \
    name gmem_addr_read_79_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_79_cast \
    op interface \
    ports { gmem_addr_read_79_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4345 \
    name gmem_addr_read_95_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_95_cast \
    op interface \
    ports { gmem_addr_read_95_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4346 \
    name gmem_addr_read_111_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_111_cast \
    op interface \
    ports { gmem_addr_read_111_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4347 \
    name gmem_addr_read_127_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_127_cast \
    op interface \
    ports { gmem_addr_read_127_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4348 \
    name gmem_addr_read_143_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_143_cast \
    op interface \
    ports { gmem_addr_read_143_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4349 \
    name gmem_addr_read_159_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_159_cast \
    op interface \
    ports { gmem_addr_read_159_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4350 \
    name gmem_addr_read_175_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_175_cast \
    op interface \
    ports { gmem_addr_read_175_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4351 \
    name gmem_addr_read_191_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_191_cast \
    op interface \
    ports { gmem_addr_read_191_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4352 \
    name gmem_addr_read_207_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_207_cast \
    op interface \
    ports { gmem_addr_read_207_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4353 \
    name gmem_addr_read_223_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_223_cast \
    op interface \
    ports { gmem_addr_read_223_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4354 \
    name gmem_addr_read_239_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_239_cast \
    op interface \
    ports { gmem_addr_read_239_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4355 \
    name gmem_addr_read_255_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_addr_read_255_cast \
    op interface \
    ports { gmem_addr_read_255_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4356 \
    name add31_u0_32fixp_15_15126_phi_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add31_u0_32fixp_15_15126_phi_out \
    op interface \
    ports { add31_u0_32fixp_15_15126_phi_out { O 32 vector } add31_u0_32fixp_15_15126_phi_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4357 \
    name add31_u0_32fixp_15_1_15_phi_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add31_u0_32fixp_15_1_15_phi_out \
    op interface \
    ports { add31_u0_32fixp_15_1_15_phi_out { O 32 vector } add31_u0_32fixp_15_1_15_phi_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4358 \
    name add31_u0_32fixp_15_2_15_phi_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add31_u0_32fixp_15_2_15_phi_out \
    op interface \
    ports { add31_u0_32fixp_15_2_15_phi_out { O 32 vector } add31_u0_32fixp_15_2_15_phi_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4359 \
    name add31_u0_32fixp_15_3_15_phi_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add31_u0_32fixp_15_3_15_phi_out \
    op interface \
    ports { add31_u0_32fixp_15_3_15_phi_out { O 32 vector } add31_u0_32fixp_15_3_15_phi_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4360 \
    name add31_u0_32fixp_15_4_15_phi_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add31_u0_32fixp_15_4_15_phi_out \
    op interface \
    ports { add31_u0_32fixp_15_4_15_phi_out { O 32 vector } add31_u0_32fixp_15_4_15_phi_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4361 \
    name add31_u0_32fixp_15_5_15_phi_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add31_u0_32fixp_15_5_15_phi_out \
    op interface \
    ports { add31_u0_32fixp_15_5_15_phi_out { O 32 vector } add31_u0_32fixp_15_5_15_phi_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4362 \
    name add31_u0_32fixp_15_6_15_phi_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add31_u0_32fixp_15_6_15_phi_out \
    op interface \
    ports { add31_u0_32fixp_15_6_15_phi_out { O 32 vector } add31_u0_32fixp_15_6_15_phi_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4363 \
    name add31_u0_32fixp_15_7_15_phi_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add31_u0_32fixp_15_7_15_phi_out \
    op interface \
    ports { add31_u0_32fixp_15_7_15_phi_out { O 32 vector } add31_u0_32fixp_15_7_15_phi_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4364 \
    name add31_u0_32fixp_15_8_15_phi_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add31_u0_32fixp_15_8_15_phi_out \
    op interface \
    ports { add31_u0_32fixp_15_8_15_phi_out { O 32 vector } add31_u0_32fixp_15_8_15_phi_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4365 \
    name add31_u0_32fixp_15_9_15_phi_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add31_u0_32fixp_15_9_15_phi_out \
    op interface \
    ports { add31_u0_32fixp_15_9_15_phi_out { O 32 vector } add31_u0_32fixp_15_9_15_phi_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4366 \
    name add31_u0_32fixp_15_10_15_phi_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add31_u0_32fixp_15_10_15_phi_out \
    op interface \
    ports { add31_u0_32fixp_15_10_15_phi_out { O 32 vector } add31_u0_32fixp_15_10_15_phi_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4367 \
    name add31_u0_32fixp_15_11_15_phi_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add31_u0_32fixp_15_11_15_phi_out \
    op interface \
    ports { add31_u0_32fixp_15_11_15_phi_out { O 32 vector } add31_u0_32fixp_15_11_15_phi_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4368 \
    name add31_u0_32fixp_15_12_15_phi_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add31_u0_32fixp_15_12_15_phi_out \
    op interface \
    ports { add31_u0_32fixp_15_12_15_phi_out { O 32 vector } add31_u0_32fixp_15_12_15_phi_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4369 \
    name add31_u0_32fixp_15_13_15_phi_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add31_u0_32fixp_15_13_15_phi_out \
    op interface \
    ports { add31_u0_32fixp_15_13_15_phi_out { O 32 vector } add31_u0_32fixp_15_13_15_phi_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4370 \
    name add31_u0_32fixp_15_14_15_phi_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add31_u0_32fixp_15_14_15_phi_out \
    op interface \
    ports { add31_u0_32fixp_15_14_15_phi_out { O 32 vector } add31_u0_32fixp_15_14_15_phi_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4371 \
    name add31_u0_32fixp_15_15_15_phi_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add31_u0_32fixp_15_15_15_phi_out \
    op interface \
    ports { add31_u0_32fixp_15_15_15_phi_out { O 32 vector } add31_u0_32fixp_15_15_15_phi_out_ap_vld { O 1 bit } } \
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


