# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "ARAMWIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DRAMWIDTH" -parent ${Page_0}


}

proc update_PARAM_VALUE.ARAMWIDTH { PARAM_VALUE.ARAMWIDTH } {
	# Procedure called to update ARAMWIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ARAMWIDTH { PARAM_VALUE.ARAMWIDTH } {
	# Procedure called to validate ARAMWIDTH
	return true
}

proc update_PARAM_VALUE.DRAMWIDTH { PARAM_VALUE.DRAMWIDTH } {
	# Procedure called to update DRAMWIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DRAMWIDTH { PARAM_VALUE.DRAMWIDTH } {
	# Procedure called to validate DRAMWIDTH
	return true
}


proc update_MODELPARAM_VALUE.DRAMWIDTH { MODELPARAM_VALUE.DRAMWIDTH PARAM_VALUE.DRAMWIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DRAMWIDTH}] ${MODELPARAM_VALUE.DRAMWIDTH}
}

proc update_MODELPARAM_VALUE.ARAMWIDTH { MODELPARAM_VALUE.ARAMWIDTH PARAM_VALUE.ARAMWIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ARAMWIDTH}] ${MODELPARAM_VALUE.ARAMWIDTH}
}

