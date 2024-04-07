set SynModuleInfo {
  {SRCNAME mm2_Pipeline_VITIS_LOOP_53_1_VITIS_LOOP_55_2 MODELNAME mm2_Pipeline_VITIS_LOOP_53_1_VITIS_LOOP_55_2 RTLNAME mm2_mm2_Pipeline_VITIS_LOOP_53_1_VITIS_LOOP_55_2
    SUBMODULES {
      {MODELNAME mm2_flow_control_loop_pipe_sequential_init RTLNAME mm2_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME mm2_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME mm2_Pipeline_VITIS_LOOP_65_4_VITIS_LOOP_67_5 MODELNAME mm2_Pipeline_VITIS_LOOP_65_4_VITIS_LOOP_67_5 RTLNAME mm2_mm2_Pipeline_VITIS_LOOP_65_4_VITIS_LOOP_67_5}
  {SRCNAME mm2 MODELNAME mm2 RTLNAME mm2 IS_TOP 1
    SUBMODULES {
      {MODELNAME mm2_fadd_32ns_32ns_32_2_full_dsp_1 RTLNAME mm2_fadd_32ns_32ns_32_2_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME mm2_fmul_32ns_32ns_32_2_max_dsp_1 RTLNAME mm2_fmul_32ns_32ns_32_2_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME mm2_tmp_RAM_1WNR_AUTO_1R1W RTLNAME mm2_tmp_RAM_1WNR_AUTO_1R1W BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME mm2_gmem_m_axi RTLNAME mm2_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME mm2_control_s_axi RTLNAME mm2_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
