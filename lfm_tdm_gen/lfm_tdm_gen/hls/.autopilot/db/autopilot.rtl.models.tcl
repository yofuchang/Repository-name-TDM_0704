set SynModuleInfo {
  {SRCNAME lfm_tdm_gen MODELNAME lfm_tdm_gen RTLNAME lfm_tdm_gen IS_TOP 1
    SUBMODULES {
      {MODELNAME lfm_tdm_gen_urem_3ns_3ns_3_7_1 RTLNAME lfm_tdm_gen_urem_3ns_3ns_3_7_1 BINDTYPE op TYPE urem IMPL auto LATENCY 6 ALLOW_PRAGMA 1}
      {MODELNAME lfm_tdm_gen_mac_muladd_10ns_3ns_10ns_12_4_1 RTLNAME lfm_tdm_gen_mac_muladd_10ns_3ns_10ns_12_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME lfm_tdm_gen_CTRL_s_axi RTLNAME lfm_tdm_gen_CTRL_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME lfm_tdm_gen_regslice_both RTLNAME lfm_tdm_gen_regslice_both BINDTYPE interface TYPE adapter IMPL reg_slice}
      {MODELNAME lfm_tdm_gen_flow_control_loop_pipe RTLNAME lfm_tdm_gen_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME lfm_tdm_gen_flow_control_loop_pipe_U}
    }
  }
}
