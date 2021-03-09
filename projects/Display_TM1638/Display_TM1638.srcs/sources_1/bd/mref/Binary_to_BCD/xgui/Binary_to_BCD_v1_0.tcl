# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "DECIMAL_DIGITS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "INPUT_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "s_ADD" -parent ${Page_0}
  ipgui::add_param $IPINST -name "s_BCD_DONE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "s_CHECK_DIGIT_INDEX" -parent ${Page_0}
  ipgui::add_param $IPINST -name "s_CHECK_SHIFT_INDEX" -parent ${Page_0}
  ipgui::add_param $IPINST -name "s_IDLE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "s_SHIFT" -parent ${Page_0}


}

proc update_PARAM_VALUE.DECIMAL_DIGITS { PARAM_VALUE.DECIMAL_DIGITS } {
	# Procedure called to update DECIMAL_DIGITS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DECIMAL_DIGITS { PARAM_VALUE.DECIMAL_DIGITS } {
	# Procedure called to validate DECIMAL_DIGITS
	return true
}

proc update_PARAM_VALUE.INPUT_WIDTH { PARAM_VALUE.INPUT_WIDTH } {
	# Procedure called to update INPUT_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.INPUT_WIDTH { PARAM_VALUE.INPUT_WIDTH } {
	# Procedure called to validate INPUT_WIDTH
	return true
}

proc update_PARAM_VALUE.s_ADD { PARAM_VALUE.s_ADD } {
	# Procedure called to update s_ADD when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.s_ADD { PARAM_VALUE.s_ADD } {
	# Procedure called to validate s_ADD
	return true
}

proc update_PARAM_VALUE.s_BCD_DONE { PARAM_VALUE.s_BCD_DONE } {
	# Procedure called to update s_BCD_DONE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.s_BCD_DONE { PARAM_VALUE.s_BCD_DONE } {
	# Procedure called to validate s_BCD_DONE
	return true
}

proc update_PARAM_VALUE.s_CHECK_DIGIT_INDEX { PARAM_VALUE.s_CHECK_DIGIT_INDEX } {
	# Procedure called to update s_CHECK_DIGIT_INDEX when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.s_CHECK_DIGIT_INDEX { PARAM_VALUE.s_CHECK_DIGIT_INDEX } {
	# Procedure called to validate s_CHECK_DIGIT_INDEX
	return true
}

proc update_PARAM_VALUE.s_CHECK_SHIFT_INDEX { PARAM_VALUE.s_CHECK_SHIFT_INDEX } {
	# Procedure called to update s_CHECK_SHIFT_INDEX when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.s_CHECK_SHIFT_INDEX { PARAM_VALUE.s_CHECK_SHIFT_INDEX } {
	# Procedure called to validate s_CHECK_SHIFT_INDEX
	return true
}

proc update_PARAM_VALUE.s_IDLE { PARAM_VALUE.s_IDLE } {
	# Procedure called to update s_IDLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.s_IDLE { PARAM_VALUE.s_IDLE } {
	# Procedure called to validate s_IDLE
	return true
}

proc update_PARAM_VALUE.s_SHIFT { PARAM_VALUE.s_SHIFT } {
	# Procedure called to update s_SHIFT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.s_SHIFT { PARAM_VALUE.s_SHIFT } {
	# Procedure called to validate s_SHIFT
	return true
}


proc update_MODELPARAM_VALUE.INPUT_WIDTH { MODELPARAM_VALUE.INPUT_WIDTH PARAM_VALUE.INPUT_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.INPUT_WIDTH}] ${MODELPARAM_VALUE.INPUT_WIDTH}
}

proc update_MODELPARAM_VALUE.DECIMAL_DIGITS { MODELPARAM_VALUE.DECIMAL_DIGITS PARAM_VALUE.DECIMAL_DIGITS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DECIMAL_DIGITS}] ${MODELPARAM_VALUE.DECIMAL_DIGITS}
}

proc update_MODELPARAM_VALUE.s_IDLE { MODELPARAM_VALUE.s_IDLE PARAM_VALUE.s_IDLE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.s_IDLE}] ${MODELPARAM_VALUE.s_IDLE}
}

proc update_MODELPARAM_VALUE.s_SHIFT { MODELPARAM_VALUE.s_SHIFT PARAM_VALUE.s_SHIFT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.s_SHIFT}] ${MODELPARAM_VALUE.s_SHIFT}
}

proc update_MODELPARAM_VALUE.s_CHECK_SHIFT_INDEX { MODELPARAM_VALUE.s_CHECK_SHIFT_INDEX PARAM_VALUE.s_CHECK_SHIFT_INDEX } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.s_CHECK_SHIFT_INDEX}] ${MODELPARAM_VALUE.s_CHECK_SHIFT_INDEX}
}

proc update_MODELPARAM_VALUE.s_ADD { MODELPARAM_VALUE.s_ADD PARAM_VALUE.s_ADD } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.s_ADD}] ${MODELPARAM_VALUE.s_ADD}
}

proc update_MODELPARAM_VALUE.s_CHECK_DIGIT_INDEX { MODELPARAM_VALUE.s_CHECK_DIGIT_INDEX PARAM_VALUE.s_CHECK_DIGIT_INDEX } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.s_CHECK_DIGIT_INDEX}] ${MODELPARAM_VALUE.s_CHECK_DIGIT_INDEX}
}

proc update_MODELPARAM_VALUE.s_BCD_DONE { MODELPARAM_VALUE.s_BCD_DONE PARAM_VALUE.s_BCD_DONE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.s_BCD_DONE}] ${MODELPARAM_VALUE.s_BCD_DONE}
}

