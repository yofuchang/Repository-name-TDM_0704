# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler lfm_tdm_gen_bitset_4ns_4ns_32ns_1s_4_1_1 BINDTYPE {op} TYPE {bitset} IMPL {auto}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler lfm_tdm_gen_LFM_IQ_LUT_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

set axilite_register_dict [dict create]
set port_CTRL {
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict CTRL $port_CTRL


# Native S_AXILite:
if {${::AESL::PGuard_simmodel_gen}} {
	if {[info proc ::AESL_LIB_XILADAPTER::s_axilite_gen] == "::AESL_LIB_XILADAPTER::s_axilite_gen"} {
		eval "::AESL_LIB_XILADAPTER::s_axilite_gen { \
			id 4 \
			corename lfm_tdm_gen_CTRL_axilite \
			name lfm_tdm_gen_CTRL_s_axi \
			ports {$port_CTRL} \
			op interface \
			interrupt_clear_mode TOW \
			interrupt_trigger_type default \
			is_flushable 0 \
			is_datawidth64 0 \
			is_addrwidth64 1 \
		} "
	} else {
		puts "@W \[IMPL-110\] Cannot find AXI Lite interface model in the library. Ignored generation of AXI Lite  interface for 'CTRL'"
	}
}

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler lfm_tdm_gen_CTRL_s_axi BINDTYPE interface TYPE interface_s_axilite
}

# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 5 \
    name m_axis_tx_V_data_V \
    reset_level 0 \
    sync_rst true \
    corename {m_axis_tx} \
    metadata {  } \
    op interface \
    ports { m_axis_tx_TDATA { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'm_axis_tx_V_data_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 6 \
    name m_axis_tx_V_keep_V \
    reset_level 0 \
    sync_rst true \
    corename {m_axis_tx} \
    metadata {  } \
    op interface \
    ports { m_axis_tx_TKEEP { O 4 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'm_axis_tx_V_keep_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 7 \
    name m_axis_tx_V_strb_V \
    reset_level 0 \
    sync_rst true \
    corename {m_axis_tx} \
    metadata {  } \
    op interface \
    ports { m_axis_tx_TSTRB { O 4 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'm_axis_tx_V_strb_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 8 \
    name m_axis_tx_V_last_V \
    reset_level 0 \
    sync_rst true \
    corename {m_axis_tx} \
    metadata {  } \
    op interface \
    ports { m_axis_tx_TVALID { O 1 bit } m_axis_tx_TREADY { I 1 bit } m_axis_tx_TLAST { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'm_axis_tx_V_last_V'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name dbg_lfm_i \
    type other \
    dir O \
    reset_level 0 \
    sync_rst true \
    corename dc_dbg_lfm_i \
    op interface \
    ports { dbg_lfm_i { O 16 vector } dbg_lfm_i_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name dbg_lfm_q \
    type other \
    dir O \
    reset_level 0 \
    sync_rst true \
    corename dc_dbg_lfm_q \
    op interface \
    ports { dbg_lfm_q { O 16 vector } dbg_lfm_q_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name dbg_tx_sel \
    type other \
    dir O \
    reset_level 0 \
    sync_rst true \
    corename dc_dbg_tx_sel \
    op interface \
    ports { dbg_tx_sel { O 2 vector } dbg_tx_sel_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12 \
    name dbg_tx_active \
    type other \
    dir O \
    reset_level 0 \
    sync_rst true \
    corename dc_dbg_tx_active \
    op interface \
    ports { dbg_tx_active { O 4 vector } dbg_tx_active_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13 \
    name dbg_chirp_count \
    type other \
    dir O \
    reset_level 0 \
    sync_rst true \
    corename dc_dbg_chirp_count \
    op interface \
    ports { dbg_chirp_count { O 16 vector } dbg_chirp_count_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14 \
    name dbg_sample_count \
    type other \
    dir O \
    reset_level 0 \
    sync_rst true \
    corename dc_dbg_sample_count \
    op interface \
    ports { dbg_sample_count { O 16 vector } dbg_sample_count_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 15 \
    name dbg_chirp_start \
    type other \
    dir O \
    reset_level 0 \
    sync_rst true \
    corename dc_dbg_chirp_start \
    op interface \
    ports { dbg_chirp_start { O 1 vector } dbg_chirp_start_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 16 \
    name dbg_chirp_end \
    type other \
    dir O \
    reset_level 0 \
    sync_rst true \
    corename dc_dbg_chirp_end \
    op interface \
    ports { dbg_chirp_end { O 1 vector } dbg_chirp_end_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 17 \
    name dbg_enable \
    type other \
    dir O \
    reset_level 0 \
    sync_rst true \
    corename dc_dbg_enable \
    op interface \
    ports { dbg_enable { O 1 vector } dbg_enable_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18 \
    name dbg_state \
    type other \
    dir O \
    reset_level 0 \
    sync_rst true \
    corename dc_dbg_state \
    op interface \
    ports { dbg_state { O 3 vector } dbg_state_ap_vld { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -1 \
    name ${PortName} \
    reset_level 0 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst_n
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -2 \
    name ${PortName} \
    reset_level 0 \
    sync_rst true \
    corename apif_ap_rst_n \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler lfm_tdm_gen_regslice_both BINDTYPE {interface} TYPE {adapter} IMPL {reg_slice}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler lfm_tdm_gen_regslice_both BINDTYPE {interface} TYPE {adapter} IMPL {reg_slice}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler lfm_tdm_gen_regslice_both BINDTYPE {interface} TYPE {adapter} IMPL {reg_slice}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler lfm_tdm_gen_regslice_both BINDTYPE {interface} TYPE {adapter} IMPL {reg_slice}
}


