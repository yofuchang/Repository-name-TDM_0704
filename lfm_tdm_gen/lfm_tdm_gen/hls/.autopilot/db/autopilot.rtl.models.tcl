set SynModuleInfo {
  {SRCNAME lfm_tdm_gen MODELNAME lfm_tdm_gen RTLNAME lfm_tdm_gen IS_TOP 1
    SUBMODULES {
      {MODELNAME lfm_tdm_gen_LFM_IQ_LUT_ROM_AUTO_1R RTLNAME lfm_tdm_gen_LFM_IQ_LUT_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME lfm_tdm_gen_CTRL_s_axi RTLNAME lfm_tdm_gen_CTRL_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME lfm_tdm_gen_regslice_both RTLNAME lfm_tdm_gen_regslice_both BINDTYPE interface TYPE adapter IMPL reg_slice}
      {MODELNAME lfm_tdm_gen_flow_control_loop_pipe RTLNAME lfm_tdm_gen_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME lfm_tdm_gen_flow_control_loop_pipe_U}
    }
  }
}
