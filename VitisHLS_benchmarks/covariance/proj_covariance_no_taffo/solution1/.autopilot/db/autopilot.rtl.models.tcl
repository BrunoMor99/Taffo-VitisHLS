set SynModuleInfo {
  {SRCNAME covariance_Pipeline_VITIS_LOOP_50_1 MODELNAME covariance_Pipeline_VITIS_LOOP_50_1 RTLNAME covariance_covariance_Pipeline_VITIS_LOOP_50_1
    SUBMODULES {
      {MODELNAME covariance_flow_control_loop_pipe_sequential_init RTLNAME covariance_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME covariance_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME covariance_Pipeline_VITIS_LOOP_60_3_VITIS_LOOP_62_4 MODELNAME covariance_Pipeline_VITIS_LOOP_60_3_VITIS_LOOP_62_4 RTLNAME covariance_covariance_Pipeline_VITIS_LOOP_60_3_VITIS_LOOP_62_4}
  {SRCNAME covariance_Pipeline_VITIS_LOOP_70_6 MODELNAME covariance_Pipeline_VITIS_LOOP_70_6 RTLNAME covariance_covariance_Pipeline_VITIS_LOOP_70_6
    SUBMODULES {
      {MODELNAME covariance_fdiv_32ns_32ns_32_6_no_dsp_1 RTLNAME covariance_fdiv_32ns_32ns_32_6_no_dsp_1 BINDTYPE op TYPE fdiv IMPL fabric LATENCY 5 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME covariance MODELNAME covariance RTLNAME covariance IS_TOP 1
    SUBMODULES {
      {MODELNAME covariance_faddfsub_32ns_32ns_32_2_full_dsp_1 RTLNAME covariance_faddfsub_32ns_32ns_32_2_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME covariance_fmul_32ns_32ns_32_2_max_dsp_1 RTLNAME covariance_fmul_32ns_32ns_32_2_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME covariance_gmem_m_axi RTLNAME covariance_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME covariance_control_s_axi RTLNAME covariance_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
