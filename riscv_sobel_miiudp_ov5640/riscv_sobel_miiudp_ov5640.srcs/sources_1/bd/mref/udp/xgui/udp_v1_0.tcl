# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "BOARD_IP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "BOARD_MAC" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DES_IP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DES_MAC" -parent ${Page_0}


}

proc update_PARAM_VALUE.BOARD_IP { PARAM_VALUE.BOARD_IP } {
	# Procedure called to update BOARD_IP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BOARD_IP { PARAM_VALUE.BOARD_IP } {
	# Procedure called to validate BOARD_IP
	return true
}

proc update_PARAM_VALUE.BOARD_MAC { PARAM_VALUE.BOARD_MAC } {
	# Procedure called to update BOARD_MAC when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BOARD_MAC { PARAM_VALUE.BOARD_MAC } {
	# Procedure called to validate BOARD_MAC
	return true
}

proc update_PARAM_VALUE.DES_IP { PARAM_VALUE.DES_IP } {
	# Procedure called to update DES_IP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DES_IP { PARAM_VALUE.DES_IP } {
	# Procedure called to validate DES_IP
	return true
}

proc update_PARAM_VALUE.DES_MAC { PARAM_VALUE.DES_MAC } {
	# Procedure called to update DES_MAC when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DES_MAC { PARAM_VALUE.DES_MAC } {
	# Procedure called to validate DES_MAC
	return true
}


proc update_MODELPARAM_VALUE.BOARD_MAC { MODELPARAM_VALUE.BOARD_MAC PARAM_VALUE.BOARD_MAC } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BOARD_MAC}] ${MODELPARAM_VALUE.BOARD_MAC}
}

proc update_MODELPARAM_VALUE.BOARD_IP { MODELPARAM_VALUE.BOARD_IP PARAM_VALUE.BOARD_IP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BOARD_IP}] ${MODELPARAM_VALUE.BOARD_IP}
}

proc update_MODELPARAM_VALUE.DES_MAC { MODELPARAM_VALUE.DES_MAC PARAM_VALUE.DES_MAC } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DES_MAC}] ${MODELPARAM_VALUE.DES_MAC}
}

proc update_MODELPARAM_VALUE.DES_IP { MODELPARAM_VALUE.DES_IP PARAM_VALUE.DES_IP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DES_IP}] ${MODELPARAM_VALUE.DES_IP}
}

