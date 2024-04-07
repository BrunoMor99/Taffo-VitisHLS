set SynModuleInfo {
  {SRCNAME mm_Pipeline_VITIS_LOOP_60_5_VITIS_LOOP_61_6 MODELNAME mm_Pipeline_VITIS_LOOP_60_5_VITIS_LOOP_61_6 RTLNAME mm_mm_Pipeline_VITIS_LOOP_60_5_VITIS_LOOP_61_6
    SUBMODULES {
      {MODELNAME mm_flow_control_loop_pipe_sequential_init RTLNAME mm_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME mm_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME mm_Pipeline_VITIS_LOOP_73_7_VITIS_LOOP_75_8 MODELNAME mm_Pipeline_VITIS_LOOP_73_7_VITIS_LOOP_75_8 RTLNAME mm_mm_Pipeline_VITIS_LOOP_73_7_VITIS_LOOP_75_8}
  {SRCNAME mm MODELNAME mm RTLNAME mm IS_TOP 1
    SUBMODULES {
      {MODELNAME mm_fmul_32ns_32ns_32_2_max_dsp_1 RTLNAME mm_fmul_32ns_32ns_32_2_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME mm_fptosi_32ns_32_2_no_dsp_1 RTLNAME mm_fptosi_32ns_32_2_no_dsp_1 BINDTYPE op TYPE fptosi IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME mm_sitofp_32ns_32_2_no_dsp_1 RTLNAME mm_sitofp_32ns_32_2_no_dsp_1 BINDTYPE op TYPE sitofp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME mm_mul_32s_32s_56_1_1 RTLNAME mm_mul_32s_32s_56_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME mm_D_s6_26fixp_RAM_AUTO_1R1W RTLNAME mm_D_s6_26fixp_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
}
