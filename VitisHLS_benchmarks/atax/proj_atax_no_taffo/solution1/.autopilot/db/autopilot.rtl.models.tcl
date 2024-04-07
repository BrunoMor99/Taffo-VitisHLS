set SynModuleInfo {
  {SRCNAME atax_Pipeline_VITIS_LOOP_48_1 MODELNAME atax_Pipeline_VITIS_LOOP_48_1 RTLNAME atax_atax_Pipeline_VITIS_LOOP_48_1
    SUBMODULES {
      {MODELNAME atax_fadd_32ns_32ns_32_2_full_dsp_1 RTLNAME atax_fadd_32ns_32ns_32_2_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME atax_fmul_32ns_32ns_32_2_max_dsp_1 RTLNAME atax_fmul_32ns_32ns_32_2_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME atax_flow_control_loop_pipe_sequential_init RTLNAME atax_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME atax_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME atax MODELNAME atax RTLNAME atax IS_TOP 1
    SUBMODULES {
      {MODELNAME atax_gmem_m_axi RTLNAME atax_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME atax_control_s_axi RTLNAME atax_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
