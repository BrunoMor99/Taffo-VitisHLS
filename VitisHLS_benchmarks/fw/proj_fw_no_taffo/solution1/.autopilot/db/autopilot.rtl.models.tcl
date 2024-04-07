set SynModuleInfo {
  {SRCNAME fw_Pipeline_VITIS_LOOP_30_1_VITIS_LOOP_31_2 MODELNAME fw_Pipeline_VITIS_LOOP_30_1_VITIS_LOOP_31_2 RTLNAME fw_fw_Pipeline_VITIS_LOOP_30_1_VITIS_LOOP_31_2
    SUBMODULES {
      {MODELNAME fw_sitofp_32ns_32_2_no_dsp_1 RTLNAME fw_sitofp_32ns_32_2_no_dsp_1 BINDTYPE op TYPE sitofp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME fw_mul_5ns_5ns_8_1_1 RTLNAME fw_mul_5ns_5ns_8_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME fw_urem_8ns_4ns_3_12_1 RTLNAME fw_urem_8ns_4ns_3_12_1 BINDTYPE op TYPE urem IMPL auto LATENCY 11 ALLOW_PRAGMA 1}
      {MODELNAME fw_urem_5ns_5ns_4_9_1 RTLNAME fw_urem_5ns_5ns_4_9_1 BINDTYPE op TYPE urem IMPL auto LATENCY 8 ALLOW_PRAGMA 1}
      {MODELNAME fw_urem_5ns_4ns_3_9_1 RTLNAME fw_urem_5ns_4ns_3_9_1 BINDTYPE op TYPE urem IMPL auto LATENCY 8 ALLOW_PRAGMA 1}
      {MODELNAME fw_flow_control_loop_pipe_sequential_init RTLNAME fw_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME fw_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME fw_Pipeline_VITIS_LOOP_38_3_VITIS_LOOP_39_4_VITIS_LOOP_40_5 MODELNAME fw_Pipeline_VITIS_LOOP_38_3_VITIS_LOOP_39_4_VITIS_LOOP_40_5 RTLNAME fw_fw_Pipeline_VITIS_LOOP_38_3_VITIS_LOOP_39_4_VITIS_LOOP_40_5
    SUBMODULES {
      {MODELNAME fw_fadd_32ns_32ns_32_2_full_dsp_1 RTLNAME fw_fadd_32ns_32ns_32_2_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME fw_fcmp_32ns_32ns_1_1_no_dsp_1 RTLNAME fw_fcmp_32ns_32ns_1_1_no_dsp_1 BINDTYPE op TYPE fcmp IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME fw MODELNAME fw RTLNAME fw IS_TOP 1
    SUBMODULES {
      {MODELNAME fw_path_RAM_1WNR_AUTO_1R1W RTLNAME fw_path_RAM_1WNR_AUTO_1R1W BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
}
