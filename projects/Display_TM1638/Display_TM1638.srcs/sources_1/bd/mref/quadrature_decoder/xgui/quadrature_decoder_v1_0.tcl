# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "debounce_time" -parent ${Page_0}
  ipgui::add_param $IPINST -name "positions" -parent ${Page_0}
  ipgui::add_param $IPINST -name "set_origin_debounce_time" -parent ${Page_0}


}

proc update_PARAM_VALUE.debounce_time { PARAM_VALUE.debounce_time } {
	# Procedure called to update debounce_time when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.debounce_time { PARAM_VALUE.debounce_time } {
	# Procedure called to validate debounce_time
	return true
}

proc update_PARAM_VALUE.positions { PARAM_VALUE.positions } {
	# Procedure called to update positions when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.positions { PARAM_VALUE.positions } {
	# Procedure called to validate positions
	return true
}

proc update_PARAM_VALUE.set_origin_debounce_time { PARAM_VALUE.set_origin_debounce_time } {
	# Procedure called to update set_origin_debounce_time when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.set_origin_debounce_time { PARAM_VALUE.set_origin_debounce_time } {
	# Procedure called to validate set_origin_debounce_time
	return true
}


proc update_MODELPARAM_VALUE.positions { MODELPARAM_VALUE.positions PARAM_VALUE.positions } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.positions}] ${MODELPARAM_VALUE.positions}
}

proc update_MODELPARAM_VALUE.debounce_time { MODELPARAM_VALUE.debounce_time PARAM_VALUE.debounce_time } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.debounce_time}] ${MODELPARAM_VALUE.debounce_time}
}

proc update_MODELPARAM_VALUE.set_origin_debounce_time { MODELPARAM_VALUE.set_origin_debounce_time PARAM_VALUE.set_origin_debounce_time } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.set_origin_debounce_time}] ${MODELPARAM_VALUE.set_origin_debounce_time}
}

