set SynModuleInfo {
  {SRCNAME doitgen_Pipeline_VITIS_LOOP_50_1 MODELNAME doitgen_Pipeline_VITIS_LOOP_50_1 RTLNAME doitgen_doitgen_Pipeline_VITIS_LOOP_50_1
    SUBMODULES {
      {MODELNAME doitgen_fadd_32ns_32ns_32_2_full_dsp_1 RTLNAME doitgen_fadd_32ns_32ns_32_2_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME doitgen_fmul_32ns_32ns_32_2_max_dsp_1 RTLNAME doitgen_fmul_32ns_32ns_32_2_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME doitgen MODELNAME doitgen RTLNAME doitgen IS_TOP 1
    SUBMODULES {
      {MODELNAME doitgen_gmem_0_m_axi RTLNAME doitgen_gmem_0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME doitgen_gmem_m_axi RTLNAME doitgen_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME doitgen_control_s_axi RTLNAME doitgen_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
