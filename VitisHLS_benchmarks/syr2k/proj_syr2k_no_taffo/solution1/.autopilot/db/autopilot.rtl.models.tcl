set SynModuleInfo {
  {SRCNAME syr2k_Pipeline_VITIS_LOOP_48_2 MODELNAME syr2k_Pipeline_VITIS_LOOP_48_2 RTLNAME syr2k_syr2k_Pipeline_VITIS_LOOP_48_2
    SUBMODULES {
      {MODELNAME syr2k_flow_control_loop_pipe_sequential_init RTLNAME syr2k_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME syr2k_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME syr2k_Pipeline_VITIS_LOOP_52_3_VITIS_LOOP_54_4 MODELNAME syr2k_Pipeline_VITIS_LOOP_52_3_VITIS_LOOP_54_4 RTLNAME syr2k_syr2k_Pipeline_VITIS_LOOP_52_3_VITIS_LOOP_54_4}
  {SRCNAME syr2k_Pipeline_VITIS_LOOP_48_21 MODELNAME syr2k_Pipeline_VITIS_LOOP_48_21 RTLNAME syr2k_syr2k_Pipeline_VITIS_LOOP_48_21}
  {SRCNAME syr2k_Pipeline_VITIS_LOOP_52_3_VITIS_LOOP_54_42 MODELNAME syr2k_Pipeline_VITIS_LOOP_52_3_VITIS_LOOP_54_42 RTLNAME syr2k_syr2k_Pipeline_VITIS_LOOP_52_3_VITIS_LOOP_54_42}
  {SRCNAME syr2k_Pipeline_VITIS_LOOP_48_23 MODELNAME syr2k_Pipeline_VITIS_LOOP_48_23 RTLNAME syr2k_syr2k_Pipeline_VITIS_LOOP_48_23}
  {SRCNAME syr2k_Pipeline_VITIS_LOOP_52_3_VITIS_LOOP_54_44 MODELNAME syr2k_Pipeline_VITIS_LOOP_52_3_VITIS_LOOP_54_44 RTLNAME syr2k_syr2k_Pipeline_VITIS_LOOP_52_3_VITIS_LOOP_54_44}
  {SRCNAME syr2k_Pipeline_VITIS_LOOP_48_25 MODELNAME syr2k_Pipeline_VITIS_LOOP_48_25 RTLNAME syr2k_syr2k_Pipeline_VITIS_LOOP_48_25}
  {SRCNAME syr2k_Pipeline_VITIS_LOOP_52_3_VITIS_LOOP_54_46 MODELNAME syr2k_Pipeline_VITIS_LOOP_52_3_VITIS_LOOP_54_46 RTLNAME syr2k_syr2k_Pipeline_VITIS_LOOP_52_3_VITIS_LOOP_54_46}
  {SRCNAME syr2k MODELNAME syr2k RTLNAME syr2k IS_TOP 1
    SUBMODULES {
      {MODELNAME syr2k_fmul_32ns_32ns_32_2_max_dsp_1 RTLNAME syr2k_fmul_32ns_32ns_32_2_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME syr2k_fadd_32ns_32ns_32_2_no_dsp_1 RTLNAME syr2k_fadd_32ns_32ns_32_2_no_dsp_1 BINDTYPE op TYPE fadd IMPL fabric LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME syr2k_gmem_m_axi RTLNAME syr2k_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME syr2k_control_s_axi RTLNAME syr2k_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
