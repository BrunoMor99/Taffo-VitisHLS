set SynModuleInfo {
  {SRCNAME vs MODELNAME vs RTLNAME vs IS_TOP 1
    SUBMODULES {
      {MODELNAME vs_fmul_32ns_32ns_32_3_max_dsp_1 RTLNAME vs_fmul_32ns_32ns_32_3_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME vs_gmem_0_m_axi RTLNAME vs_gmem_0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME vs_control_s_axi RTLNAME vs_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
