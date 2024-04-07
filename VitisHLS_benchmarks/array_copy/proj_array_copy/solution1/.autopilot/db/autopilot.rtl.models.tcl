set SynModuleInfo {
  {SRCNAME array_copy_Pipeline_VITIS_LOOP_35_1 MODELNAME array_copy_Pipeline_VITIS_LOOP_35_1 RTLNAME array_copy_array_copy_Pipeline_VITIS_LOOP_35_1
    SUBMODULES {
      {MODELNAME array_copy_fdiv_32ns_32ns_32_6_no_dsp_1 RTLNAME array_copy_fdiv_32ns_32ns_32_6_no_dsp_1 BINDTYPE op TYPE fdiv IMPL fabric LATENCY 5 ALLOW_PRAGMA 1}
      {MODELNAME array_copy_fptoui_32ns_32_2_no_dsp_1 RTLNAME array_copy_fptoui_32ns_32_2_no_dsp_1 BINDTYPE op TYPE fptoui IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME array_copy_sitofp_32ns_32_2_no_dsp_1 RTLNAME array_copy_sitofp_32ns_32_2_no_dsp_1 BINDTYPE op TYPE sitofp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME array_copy_flow_control_loop_pipe_sequential_init RTLNAME array_copy_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME array_copy_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME array_copy_Pipeline_VITIS_LOOP_49_2 MODELNAME array_copy_Pipeline_VITIS_LOOP_49_2 RTLNAME array_copy_array_copy_Pipeline_VITIS_LOOP_49_2
    SUBMODULES {
      {MODELNAME array_copy_mul_32ns_32ns_59_1_1 RTLNAME array_copy_mul_32ns_32ns_59_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME array_copy_Pipeline_VITIS_LOOP_54_3 MODELNAME array_copy_Pipeline_VITIS_LOOP_54_3 RTLNAME array_copy_array_copy_Pipeline_VITIS_LOOP_54_3
    SUBMODULES {
      {MODELNAME array_copy_uitofp_32ns_32_2_no_dsp_1 RTLNAME array_copy_uitofp_32ns_32_2_no_dsp_1 BINDTYPE op TYPE uitofp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME array_copy MODELNAME array_copy RTLNAME array_copy IS_TOP 1
    SUBMODULES {
      {MODELNAME array_copy_fmul_32ns_32ns_32_2_max_dsp_1 RTLNAME array_copy_fmul_32ns_32ns_32_2_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME array_copy_ys_u5_27fixp_RAM_AUTO_1R1W RTLNAME array_copy_ys_u5_27fixp_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME array_copy_vla_u3_29fixp1_RAM_AUTO_1R1W RTLNAME array_copy_vla_u3_29fixp1_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME array_copy_gmem_m_axi RTLNAME array_copy_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME array_copy_control_s_axi RTLNAME array_copy_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
