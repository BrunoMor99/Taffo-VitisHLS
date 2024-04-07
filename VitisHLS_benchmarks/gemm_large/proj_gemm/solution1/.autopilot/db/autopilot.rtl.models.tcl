set SynModuleInfo {
  {SRCNAME mm_Pipeline_VITIS_LOOP_62_5_VITIS_LOOP_63_6 MODELNAME mm_Pipeline_VITIS_LOOP_62_5_VITIS_LOOP_63_6 RTLNAME mm_mm_Pipeline_VITIS_LOOP_62_5_VITIS_LOOP_63_6
    SUBMODULES {
      {MODELNAME mm_fmul_32ns_32ns_32_2_max_dsp_1 RTLNAME mm_fmul_32ns_32ns_32_2_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME mm_sitofp_32ns_32_2_no_dsp_1 RTLNAME mm_sitofp_32ns_32_2_no_dsp_1 BINDTYPE op TYPE sitofp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME mm_mul_4s_4s_4_1_1 RTLNAME mm_mul_4s_4s_4_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME mm_flow_control_loop_pipe_sequential_init RTLNAME mm_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME mm_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME mm_Pipeline_VITIS_LOOP_76_7 MODELNAME mm_Pipeline_VITIS_LOOP_76_7 RTLNAME mm_mm_Pipeline_VITIS_LOOP_76_7
    SUBMODULES {
      {MODELNAME mm_mul_32ns_32ns_62_1_1 RTLNAME mm_mul_32ns_32ns_62_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME mm_mul_30ns_32ns_60_1_1 RTLNAME mm_mul_30ns_32ns_60_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME mm_mul_31ns_32ns_61_1_1 RTLNAME mm_mul_31ns_32ns_61_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME mm_mul_32ns_33ns_64_1_1 RTLNAME mm_mul_32ns_33ns_64_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME mm_mul_32ns_32ns_63_1_1 RTLNAME mm_mul_32ns_32ns_63_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME mm_mul_31ns_32ns_62_1_1 RTLNAME mm_mul_31ns_32ns_62_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME mm_mm_Pipeline_VITIS_LOOP_76_7_A_u3_29fixp_1_ROM_AUTO_1R RTLNAME mm_mm_Pipeline_VITIS_LOOP_76_7_A_u3_29fixp_1_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME mm_mm_Pipeline_VITIS_LOOP_76_7_A_u3_29fixp_2_ROM_AUTO_1R RTLNAME mm_mm_Pipeline_VITIS_LOOP_76_7_A_u3_29fixp_2_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME mm_mm_Pipeline_VITIS_LOOP_76_7_A_u3_29fixp_3_ROM_AUTO_1R RTLNAME mm_mm_Pipeline_VITIS_LOOP_76_7_A_u3_29fixp_3_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME mm_mm_Pipeline_VITIS_LOOP_76_7_A_u3_29fixp_4_ROM_AUTO_1R RTLNAME mm_mm_Pipeline_VITIS_LOOP_76_7_A_u3_29fixp_4_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME mm_mm_Pipeline_VITIS_LOOP_76_7_A_u3_29fixp_5_ROM_AUTO_1R RTLNAME mm_mm_Pipeline_VITIS_LOOP_76_7_A_u3_29fixp_5_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME mm_mm_Pipeline_VITIS_LOOP_76_7_A_u3_29fixp_6_ROM_AUTO_1R RTLNAME mm_mm_Pipeline_VITIS_LOOP_76_7_A_u3_29fixp_6_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME mm_mm_Pipeline_VITIS_LOOP_76_7_A_u3_29fixp_7_ROM_AUTO_1R RTLNAME mm_mm_Pipeline_VITIS_LOOP_76_7_A_u3_29fixp_7_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME mm_mm_Pipeline_VITIS_LOOP_76_7_A_u3_29fixp_0_ROM_AUTO_1R RTLNAME mm_mm_Pipeline_VITIS_LOOP_76_7_A_u3_29fixp_0_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME mm_Pipeline_VITIS_LOOP_92_10 MODELNAME mm_Pipeline_VITIS_LOOP_92_10 RTLNAME mm_mm_Pipeline_VITIS_LOOP_92_10}
  {SRCNAME mm MODELNAME mm RTLNAME mm IS_TOP 1
    SUBMODULES {
      {MODELNAME mm_fptosi_32ns_32_2_no_dsp_1 RTLNAME mm_fptosi_32ns_32_2_no_dsp_1 BINDTYPE op TYPE fptosi IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME mm_mul_32s_32s_62_1_1 RTLNAME mm_mul_32s_32s_62_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME mm_D_s9_23fixp_0_RAM_AUTO_1R1W RTLNAME mm_D_s9_23fixp_0_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
}
