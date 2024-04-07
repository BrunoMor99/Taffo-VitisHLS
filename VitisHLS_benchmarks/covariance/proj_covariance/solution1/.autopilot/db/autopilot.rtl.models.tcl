set SynModuleInfo {
  {SRCNAME covariance_Pipeline_VITIS_LOOP_41_1 MODELNAME covariance_Pipeline_VITIS_LOOP_41_1 RTLNAME covariance_covariance_Pipeline_VITIS_LOOP_41_1
    SUBMODULES {
      {MODELNAME covariance_flow_control_loop_pipe_sequential_init RTLNAME covariance_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME covariance_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME covariance_Pipeline_VITIS_LOOP_51_3_VITIS_LOOP_53_4 MODELNAME covariance_Pipeline_VITIS_LOOP_51_3_VITIS_LOOP_53_4 RTLNAME covariance_covariance_Pipeline_VITIS_LOOP_51_3_VITIS_LOOP_53_4}
  {SRCNAME covariance_Pipeline_VITIS_LOOP_60_6 MODELNAME covariance_Pipeline_VITIS_LOOP_60_6 RTLNAME covariance_covariance_Pipeline_VITIS_LOOP_60_6
    SUBMODULES {
      {MODELNAME covariance_mul_32s_32s_61_1_1 RTLNAME covariance_mul_32s_32s_61_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME covariance_mul_36ns_38ns_69_1_1 RTLNAME covariance_mul_36ns_38ns_69_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME covariance MODELNAME covariance RTLNAME covariance IS_TOP 1
    SUBMODULES {
      {MODELNAME covariance_gmem_m_axi RTLNAME covariance_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME covariance_control_s_axi RTLNAME covariance_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
