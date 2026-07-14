set SynModuleInfo {
  {SRCNAME lfm_tdm_gen MODELNAME lfm_tdm_gen RTLNAME lfm_tdm_gen IS_TOP 1
    SUBMODULES {
      {MODELNAME lfm_tdm_gen_bitset_4ns_4ns_32ns_1s_4_1_1 RTLNAME lfm_tdm_gen_bitset_4ns_4ns_32ns_1s_4_1_1 BINDTYPE op TYPE bitset IMPL auto}
      {MODELNAME lfm_tdm_gen_LFM_IQ_LUT_ROM_AUTO_1R RTLNAME lfm_tdm_gen_LFM_IQ_LUT_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME lfm_tdm_gen_CTRL_s_axi RTLNAME lfm_tdm_gen_CTRL_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME lfm_tdm_gen_regslice_both RTLNAME lfm_tdm_gen_regslice_both BINDTYPE interface TYPE adapter IMPL reg_slice}
    }
  }
}
