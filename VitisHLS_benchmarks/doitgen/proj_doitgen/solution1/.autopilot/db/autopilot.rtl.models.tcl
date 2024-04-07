set SynModuleInfo {
  {SRCNAME doitgen_Pipeline_VITIS_LOOP_50_1 MODELNAME doitgen_Pipeline_VITIS_LOOP_50_1 RTLNAME doitgen_doitgen_Pipeline_VITIS_LOOP_50_1
    SUBMODULES {
      {MODELNAME doitgen_mul_32s_32s_50_1_1 RTLNAME doitgen_mul_32s_32s_50_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME doitgen MODELNAME doitgen RTLNAME doitgen IS_TOP 1
    SUBMODULES {
      {MODELNAME doitgen_gmem_m_axi RTLNAME doitgen_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME doitgen_control_s_axi RTLNAME doitgen_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
