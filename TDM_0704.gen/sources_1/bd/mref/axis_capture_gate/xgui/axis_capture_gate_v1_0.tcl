# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "FRAME_SAMPLES" -parent ${Page_0}
  ipgui::add_param $IPINST -name "RX_DELAY_SAMPLES" -parent ${Page_0}


}

proc update_PARAM_VALUE.DATA_WIDTH { PARAM_VALUE.DATA_WIDTH } {
	# Procedure called to update DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DATA_WIDTH { PARAM_VALUE.DATA_WIDTH } {
	# Procedure called to validate DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.FRAME_SAMPLES { PARAM_VALUE.FRAME_SAMPLES } {
	# Procedure called to update FRAME_SAMPLES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FRAME_SAMPLES { PARAM_VALUE.FRAME_SAMPLES } {
	# Procedure called to validate FRAME_SAMPLES
	return true
}

proc update_PARAM_VALUE.RX_DELAY_SAMPLES { PARAM_VALUE.RX_DELAY_SAMPLES } {
	# Procedure called to update RX_DELAY_SAMPLES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RX_DELAY_SAMPLES { PARAM_VALUE.RX_DELAY_SAMPLES } {
	# Procedure called to validate RX_DELAY_SAMPLES
	return true
}


proc update_MODELPARAM_VALUE.DATA_WIDTH { MODELPARAM_VALUE.DATA_WIDTH PARAM_VALUE.DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DATA_WIDTH}] ${MODELPARAM_VALUE.DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.FRAME_SAMPLES { MODELPARAM_VALUE.FRAME_SAMPLES PARAM_VALUE.FRAME_SAMPLES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FRAME_SAMPLES}] ${MODELPARAM_VALUE.FRAME_SAMPLES}
}

proc update_MODELPARAM_VALUE.RX_DELAY_SAMPLES { MODELPARAM_VALUE.RX_DELAY_SAMPLES PARAM_VALUE.RX_DELAY_SAMPLES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RX_DELAY_SAMPLES}] ${MODELPARAM_VALUE.RX_DELAY_SAMPLES}
}

