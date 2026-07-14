set moduleName lfm_tdm_gen
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 2
set C_modelName {lfm_tdm_gen}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ m_axis_tx_V_data_V int 32 regular {axi_s 1 volatile  { m_axis_tx Data } }  }
	{ m_axis_tx_V_keep_V int 4 regular {axi_s 1 volatile  { m_axis_tx Keep } }  }
	{ m_axis_tx_V_strb_V int 4 regular {axi_s 1 volatile  { m_axis_tx Strb } }  }
	{ m_axis_tx_V_last_V int 1 regular {axi_s 1 volatile  { m_axis_tx Last } }  }
	{ dbg_lfm_i int 16 regular {pointer 1 directio }  }
	{ dbg_lfm_q int 16 regular {pointer 1 directio }  }
	{ dbg_tx_sel int 2 regular {pointer 1 directio }  }
	{ dbg_tx_active int 4 regular {pointer 1 directio }  }
	{ dbg_chirp_count int 16 regular {pointer 1 directio }  }
	{ dbg_sample_count int 16 regular {pointer 1 directio }  }
	{ dbg_chirp_start int 1 regular {pointer 1 directio }  }
	{ dbg_chirp_end int 1 regular {pointer 1 directio }  }
	{ dbg_enable int 1 regular {pointer 1 directio }  }
	{ dbg_state int 3 regular {pointer 1 directio }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "m_axis_tx_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_tx_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_tx_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_tx_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dbg_lfm_i", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dbg_lfm_q", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dbg_tx_sel", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dbg_tx_active", "interface" : "wire", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dbg_chirp_count", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dbg_sample_count", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dbg_chirp_start", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dbg_chirp_end", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dbg_enable", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dbg_state", "interface" : "wire", "bitwidth" : 3, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 46
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axis_tx_TDATA sc_out sc_lv 32 signal 0 } 
	{ m_axis_tx_TVALID sc_out sc_logic 1 outvld 3 } 
	{ m_axis_tx_TREADY sc_in sc_logic 1 outacc 3 } 
	{ m_axis_tx_TKEEP sc_out sc_lv 4 signal 1 } 
	{ m_axis_tx_TSTRB sc_out sc_lv 4 signal 2 } 
	{ m_axis_tx_TLAST sc_out sc_lv 1 signal 3 } 
	{ dbg_lfm_i sc_out sc_lv 16 signal 4 } 
	{ dbg_lfm_i_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ dbg_lfm_q sc_out sc_lv 16 signal 5 } 
	{ dbg_lfm_q_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ dbg_tx_sel sc_out sc_lv 2 signal 6 } 
	{ dbg_tx_sel_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ dbg_tx_active sc_out sc_lv 4 signal 7 } 
	{ dbg_tx_active_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ dbg_chirp_count sc_out sc_lv 16 signal 8 } 
	{ dbg_chirp_count_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ dbg_sample_count sc_out sc_lv 16 signal 9 } 
	{ dbg_sample_count_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ dbg_chirp_start sc_out sc_lv 1 signal 10 } 
	{ dbg_chirp_start_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ dbg_chirp_end sc_out sc_lv 1 signal 11 } 
	{ dbg_chirp_end_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ dbg_enable sc_out sc_lv 1 signal 12 } 
	{ dbg_enable_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ dbg_state sc_out sc_lv 3 signal 13 } 
	{ dbg_state_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ s_axi_CTRL_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_AWADDR sc_in sc_lv 4 signal -1 } 
	{ s_axi_CTRL_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_CTRL_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_CTRL_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_ARADDR sc_in sc_lv 4 signal -1 } 
	{ s_axi_CTRL_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_CTRL_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_CTRL_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_CTRL_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTRL", "role": "AWADDR" },"address":[{"name":"lfm_tdm_gen","role":"start","value":"0","valid_bit":"0"},{"name":"lfm_tdm_gen","role":"continue","value":"0","valid_bit":"4"},{"name":"lfm_tdm_gen","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_CTRL_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "AWVALID" } },
	{ "name": "s_axi_CTRL_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "AWREADY" } },
	{ "name": "s_axi_CTRL_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "WVALID" } },
	{ "name": "s_axi_CTRL_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "WREADY" } },
	{ "name": "s_axi_CTRL_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL", "role": "WDATA" } },
	{ "name": "s_axi_CTRL_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTRL", "role": "WSTRB" } },
	{ "name": "s_axi_CTRL_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTRL", "role": "ARADDR" },"address":[{"name":"lfm_tdm_gen","role":"start","value":"0","valid_bit":"0"},{"name":"lfm_tdm_gen","role":"done","value":"0","valid_bit":"1"},{"name":"lfm_tdm_gen","role":"idle","value":"0","valid_bit":"2"},{"name":"lfm_tdm_gen","role":"ready","value":"0","valid_bit":"3"},{"name":"lfm_tdm_gen","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_CTRL_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "ARVALID" } },
	{ "name": "s_axi_CTRL_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "ARREADY" } },
	{ "name": "s_axi_CTRL_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "RVALID" } },
	{ "name": "s_axi_CTRL_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "RREADY" } },
	{ "name": "s_axi_CTRL_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL", "role": "RDATA" } },
	{ "name": "s_axi_CTRL_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL", "role": "RRESP" } },
	{ "name": "s_axi_CTRL_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "BVALID" } },
	{ "name": "s_axi_CTRL_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "BREADY" } },
	{ "name": "s_axi_CTRL_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axis_tx_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "m_axis_tx_V_data_V", "role": "default" }} , 
 	{ "name": "m_axis_tx_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_tx_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_tx_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_tx_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_tx_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "m_axis_tx_V_keep_V", "role": "default" }} , 
 	{ "name": "m_axis_tx_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "m_axis_tx_V_strb_V", "role": "default" }} , 
 	{ "name": "m_axis_tx_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_tx_V_last_V", "role": "default" }} , 
 	{ "name": "dbg_lfm_i", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "dbg_lfm_i", "role": "default" }} , 
 	{ "name": "dbg_lfm_i_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dbg_lfm_i", "role": "ap_vld" }} , 
 	{ "name": "dbg_lfm_q", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "dbg_lfm_q", "role": "default" }} , 
 	{ "name": "dbg_lfm_q_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dbg_lfm_q", "role": "ap_vld" }} , 
 	{ "name": "dbg_tx_sel", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "dbg_tx_sel", "role": "default" }} , 
 	{ "name": "dbg_tx_sel_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dbg_tx_sel", "role": "ap_vld" }} , 
 	{ "name": "dbg_tx_active", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "dbg_tx_active", "role": "default" }} , 
 	{ "name": "dbg_tx_active_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dbg_tx_active", "role": "ap_vld" }} , 
 	{ "name": "dbg_chirp_count", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "dbg_chirp_count", "role": "default" }} , 
 	{ "name": "dbg_chirp_count_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dbg_chirp_count", "role": "ap_vld" }} , 
 	{ "name": "dbg_sample_count", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "dbg_sample_count", "role": "default" }} , 
 	{ "name": "dbg_sample_count_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dbg_sample_count", "role": "ap_vld" }} , 
 	{ "name": "dbg_chirp_start", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dbg_chirp_start", "role": "default" }} , 
 	{ "name": "dbg_chirp_start_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dbg_chirp_start", "role": "ap_vld" }} , 
 	{ "name": "dbg_chirp_end", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dbg_chirp_end", "role": "default" }} , 
 	{ "name": "dbg_chirp_end_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dbg_chirp_end", "role": "ap_vld" }} , 
 	{ "name": "dbg_enable", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dbg_enable", "role": "default" }} , 
 	{ "name": "dbg_enable_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dbg_enable", "role": "ap_vld" }} , 
 	{ "name": "dbg_state", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "dbg_state", "role": "default" }} , 
 	{ "name": "dbg_state_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dbg_state", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7"],
		"CDFG" : "lfm_tdm_gen",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4099", "EstimateLatencyMax" : "4099",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "m_axis_tx_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_tx",
				"BlockSignal" : [
					{"Name" : "m_axis_tx_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_tx_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_tx"},
			{"Name" : "m_axis_tx_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_tx"},
			{"Name" : "m_axis_tx_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_tx"},
			{"Name" : "dbg_lfm_i", "Type" : "Vld", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dbg_lfm_i_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dbg_lfm_q", "Type" : "Vld", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dbg_lfm_q_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dbg_tx_sel", "Type" : "Vld", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dbg_tx_sel_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dbg_tx_active", "Type" : "Vld", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dbg_tx_active_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dbg_chirp_count", "Type" : "Vld", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dbg_chirp_count_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dbg_sample_count", "Type" : "Vld", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dbg_sample_count_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dbg_chirp_start", "Type" : "Vld", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dbg_chirp_start_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dbg_chirp_end", "Type" : "Vld", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dbg_chirp_end_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dbg_enable", "Type" : "Vld", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dbg_enable_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dbg_state", "Type" : "Vld", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dbg_state_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "LFM_IQ_LUT", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_63_1_VITIS_LOOP_75_2", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "PreState" : ["ap_ST_fsm_state1"], "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "PostState" : ["ap_ST_fsm_state5"]}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.LFM_IQ_LUT_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CTRL_s_axi_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bitset_4ns_4ns_32ns_1s_4_1_1_U1", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_m_axis_tx_V_data_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_m_axis_tx_V_keep_V_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_m_axis_tx_V_strb_V_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_m_axis_tx_V_last_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	lfm_tdm_gen {
		m_axis_tx_V_data_V {Type O LastRead -1 FirstWrite 2}
		m_axis_tx_V_keep_V {Type O LastRead -1 FirstWrite 2}
		m_axis_tx_V_strb_V {Type O LastRead -1 FirstWrite 2}
		m_axis_tx_V_last_V {Type O LastRead -1 FirstWrite 2}
		dbg_lfm_i {Type O LastRead -1 FirstWrite 2}
		dbg_lfm_q {Type O LastRead -1 FirstWrite 2}
		dbg_tx_sel {Type O LastRead -1 FirstWrite 2}
		dbg_tx_active {Type O LastRead -1 FirstWrite 2}
		dbg_chirp_count {Type O LastRead -1 FirstWrite 2}
		dbg_sample_count {Type O LastRead -1 FirstWrite 2}
		dbg_chirp_start {Type O LastRead -1 FirstWrite 2}
		dbg_chirp_end {Type O LastRead -1 FirstWrite 2}
		dbg_enable {Type O LastRead -1 FirstWrite 2}
		dbg_state {Type O LastRead -1 FirstWrite 2}
		LFM_IQ_LUT {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4099", "Max" : "4099"}
	, {"Name" : "Interval", "Min" : "4100", "Max" : "4100"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	m_axis_tx_V_data_V { axis {  { m_axis_tx_TDATA out_data 1 32 } } }
	m_axis_tx_V_keep_V { axis {  { m_axis_tx_TKEEP out_data 1 4 } } }
	m_axis_tx_V_strb_V { axis {  { m_axis_tx_TSTRB out_data 1 4 } } }
	m_axis_tx_V_last_V { axis {  { m_axis_tx_TVALID out_vld 1 1 }  { m_axis_tx_TREADY out_acc 0 1 }  { m_axis_tx_TLAST out_data 1 1 } } }
	dbg_lfm_i { ap_vld {  { dbg_lfm_i out_data 1 16 }  { dbg_lfm_i_ap_vld out_vld 1 1 } } }
	dbg_lfm_q { ap_vld {  { dbg_lfm_q out_data 1 16 }  { dbg_lfm_q_ap_vld out_vld 1 1 } } }
	dbg_tx_sel { ap_vld {  { dbg_tx_sel out_data 1 2 }  { dbg_tx_sel_ap_vld out_vld 1 1 } } }
	dbg_tx_active { ap_vld {  { dbg_tx_active out_data 1 4 }  { dbg_tx_active_ap_vld out_vld 1 1 } } }
	dbg_chirp_count { ap_vld {  { dbg_chirp_count out_data 1 16 }  { dbg_chirp_count_ap_vld out_vld 1 1 } } }
	dbg_sample_count { ap_vld {  { dbg_sample_count out_data 1 16 }  { dbg_sample_count_ap_vld out_vld 1 1 } } }
	dbg_chirp_start { ap_vld {  { dbg_chirp_start out_data 1 1 }  { dbg_chirp_start_ap_vld out_vld 1 1 } } }
	dbg_chirp_end { ap_vld {  { dbg_chirp_end out_data 1 1 }  { dbg_chirp_end_ap_vld out_vld 1 1 } } }
	dbg_enable { ap_vld {  { dbg_enable out_data 1 1 }  { dbg_enable_ap_vld out_vld 1 1 } } }
	dbg_state { ap_vld {  { dbg_state out_data 1 3 }  { dbg_state_ap_vld out_vld 1 1 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
