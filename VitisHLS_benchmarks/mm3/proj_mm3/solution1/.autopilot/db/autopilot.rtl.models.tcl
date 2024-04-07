set SynModuleInfo {
  {SRCNAME mm3_Pipeline_VITIS_LOOP_63_1_VITIS_LOOP_65_2 MODELNAME mm3_Pipeline_VITIS_LOOP_63_1_VITIS_LOOP_65_2 RTLNAME mm3_mm3_Pipeline_VITIS_LOOP_63_1_VITIS_LOOP_65_2
    SUBMODULES {
      {MODELNAME mm3_mul_32s_32s_48_1_1 RTLNAME mm3_mul_32s_32s_48_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME mm3_flow_control_loop_pipe_sequential_init RTLNAME mm3_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME mm3_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME mm3_Pipeline_VITIS_LOOP_75_4_VITIS_LOOP_77_5 MODELNAME mm3_Pipeline_VITIS_LOOP_75_4_VITIS_LOOP_77_5 RTLNAME mm3_mm3_Pipeline_VITIS_LOOP_75_4_VITIS_LOOP_77_5}
  {SRCNAME mm3_Pipeline_VITIS_LOOP_88_7_VITIS_LOOP_90_8 MODELNAME mm3_Pipeline_VITIS_LOOP_88_7_VITIS_LOOP_90_8 RTLNAME mm3_mm3_Pipeline_VITIS_LOOP_88_7_VITIS_LOOP_90_8
    SUBMODULES {
      {MODELNAME mm3_mul_32s_32s_32_1_1 RTLNAME mm3_mul_32s_32s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME mm3 MODELNAME mm3 RTLNAME mm3 IS_TOP 1
    SUBMODULES {
      {MODELNAME mm3_gmem_m_axi RTLNAME mm3_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME mm3_control_s_axi RTLNAME mm3_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
