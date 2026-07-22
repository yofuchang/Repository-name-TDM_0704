set moduleName adc_packetizer
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 2
set C_modelName {adc_packetizer}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ s_axis_adc int 16 regular {axi_s 0 volatile  { s_axis_adc Data } }  }
	{ m_axis_dma_V_data_V int 32 regular {axi_s 1 volatile  { m_axis_dma Data } }  }
	{ m_axis_dma_V_keep_V int 4 regular {axi_s 1 volatile  { m_axis_dma Keep } }  }
	{ m_axis_dma_V_strb_V int 4 regular {axi_s 1 volatile  { m_axis_dma Strb } }  }
	{ m_axis_dma_V_last_V int 1 regular {axi_s 1 volatile  { m_axis_dma Last } }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "s_axis_adc", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "m_axis_dma_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_dma_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_dma_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_dma_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 11
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ s_axis_adc_TDATA sc_in sc_lv 16 signal 0 } 
	{ s_axis_adc_TVALID sc_in sc_logic 1 invld 0 } 
	{ s_axis_adc_TREADY sc_out sc_logic 1 inacc 0 } 
	{ m_axis_dma_TDATA sc_out sc_lv 32 signal 1 } 
	{ m_axis_dma_TVALID sc_out sc_logic 1 outvld 4 } 
	{ m_axis_dma_TREADY sc_in sc_logic 1 outacc 4 } 
	{ m_axis_dma_TKEEP sc_out sc_lv 4 signal 2 } 
	{ m_axis_dma_TSTRB sc_out sc_lv 4 signal 3 } 
	{ m_axis_dma_TLAST sc_out sc_lv 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "s_axis_adc_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "s_axis_adc", "role": "TDATA" }} , 
 	{ "name": "s_axis_adc_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_adc", "role": "TVALID" }} , 
 	{ "name": "s_axis_adc_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_adc", "role": "TREADY" }} , 
 	{ "name": "m_axis_dma_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "m_axis_dma_V_data_V", "role": "default" }} , 
 	{ "name": "m_axis_dma_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_dma_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_dma_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_dma_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_dma_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "m_axis_dma_V_keep_V", "role": "default" }} , 
 	{ "name": "m_axis_dma_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "m_axis_dma_V_strb_V", "role": "default" }} , 
 	{ "name": "m_axis_dma_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_dma_V_last_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "adc_packetizer",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "s_axis_adc", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "s_axis_adc_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_dma_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_dma",
				"BlockSignal" : [
					{"Name" : "m_axis_dma_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_dma_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_dma"},
			{"Name" : "m_axis_dma_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_dma"},
			{"Name" : "m_axis_dma_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_dma"},
			{"Name" : "sample_count", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_s_axis_adc_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_m_axis_dma_V_data_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_m_axis_dma_V_keep_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_m_axis_dma_V_strb_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_m_axis_dma_V_last_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	adc_packetizer {
		s_axis_adc {Type I LastRead 0 FirstWrite -1}
		m_axis_dma_V_data_V {Type O LastRead -1 FirstWrite 0}
		m_axis_dma_V_keep_V {Type O LastRead -1 FirstWrite 0}
		m_axis_dma_V_strb_V {Type O LastRead -1 FirstWrite 0}
		m_axis_dma_V_last_V {Type O LastRead -1 FirstWrite 0}
		sample_count {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	s_axis_adc { axis {  { s_axis_adc_TDATA in_data 0 16 }  { s_axis_adc_TVALID in_vld 0 1 }  { s_axis_adc_TREADY in_acc 1 1 } } }
	m_axis_dma_V_data_V { axis {  { m_axis_dma_TDATA out_data 1 32 } } }
	m_axis_dma_V_keep_V { axis {  { m_axis_dma_TKEEP out_data 1 4 } } }
	m_axis_dma_V_strb_V { axis {  { m_axis_dma_TSTRB out_data 1 4 } } }
	m_axis_dma_V_last_V { axis {  { m_axis_dma_TVALID out_vld 1 1 }  { m_axis_dma_TREADY out_acc 0 1 }  { m_axis_dma_TLAST out_data 1 1 } } }
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
