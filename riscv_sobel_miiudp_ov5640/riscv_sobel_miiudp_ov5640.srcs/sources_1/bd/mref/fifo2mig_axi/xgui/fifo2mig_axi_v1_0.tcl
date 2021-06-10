# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "AXI_ID" -parent ${Page_0}
  ipgui::add_param $IPINST -name "AXI_LEN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "RD_DDR_ADDR_BEGIN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "RD_DDR_ADDR_END" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WR_DDR_ADDR_BEGIN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WR_DDR_ADDR_END" -parent ${Page_0}


}

proc update_PARAM_VALUE.AXI_ID { PARAM_VALUE.AXI_ID } {
	# Procedure called to update AXI_ID when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXI_ID { PARAM_VALUE.AXI_ID } {
	# Procedure called to validate AXI_ID
	return true
}

proc update_PARAM_VALUE.AXI_LEN { PARAM_VALUE.AXI_LEN } {
	# Procedure called to update AXI_LEN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXI_LEN { PARAM_VALUE.AXI_LEN } {
	# Procedure called to validate AXI_LEN
	return true
}

proc update_PARAM_VALUE.RD_DDR_ADDR_BEGIN { PARAM_VALUE.RD_DDR_ADDR_BEGIN } {
	# Procedure called to update RD_DDR_ADDR_BEGIN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RD_DDR_ADDR_BEGIN { PARAM_VALUE.RD_DDR_ADDR_BEGIN } {
	# Procedure called to validate RD_DDR_ADDR_BEGIN
	return true
}

proc update_PARAM_VALUE.RD_DDR_ADDR_END { PARAM_VALUE.RD_DDR_ADDR_END } {
	# Procedure called to update RD_DDR_ADDR_END when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RD_DDR_ADDR_END { PARAM_VALUE.RD_DDR_ADDR_END } {
	# Procedure called to validate RD_DDR_ADDR_END
	return true
}

proc update_PARAM_VALUE.WR_DDR_ADDR_BEGIN { PARAM_VALUE.WR_DDR_ADDR_BEGIN } {
	# Procedure called to update WR_DDR_ADDR_BEGIN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WR_DDR_ADDR_BEGIN { PARAM_VALUE.WR_DDR_ADDR_BEGIN } {
	# Procedure called to validate WR_DDR_ADDR_BEGIN
	return true
}

proc update_PARAM_VALUE.WR_DDR_ADDR_END { PARAM_VALUE.WR_DDR_ADDR_END } {
	# Procedure called to update WR_DDR_ADDR_END when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WR_DDR_ADDR_END { PARAM_VALUE.WR_DDR_ADDR_END } {
	# Procedure called to validate WR_DDR_ADDR_END
	return true
}


proc update_MODELPARAM_VALUE.WR_DDR_ADDR_BEGIN { MODELPARAM_VALUE.WR_DDR_ADDR_BEGIN PARAM_VALUE.WR_DDR_ADDR_BEGIN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WR_DDR_ADDR_BEGIN}] ${MODELPARAM_VALUE.WR_DDR_ADDR_BEGIN}
}

proc update_MODELPARAM_VALUE.WR_DDR_ADDR_END { MODELPARAM_VALUE.WR_DDR_ADDR_END PARAM_VALUE.WR_DDR_ADDR_END } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WR_DDR_ADDR_END}] ${MODELPARAM_VALUE.WR_DDR_ADDR_END}
}

proc update_MODELPARAM_VALUE.RD_DDR_ADDR_BEGIN { MODELPARAM_VALUE.RD_DDR_ADDR_BEGIN PARAM_VALUE.RD_DDR_ADDR_BEGIN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RD_DDR_ADDR_BEGIN}] ${MODELPARAM_VALUE.RD_DDR_ADDR_BEGIN}
}

proc update_MODELPARAM_VALUE.RD_DDR_ADDR_END { MODELPARAM_VALUE.RD_DDR_ADDR_END PARAM_VALUE.RD_DDR_ADDR_END } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RD_DDR_ADDR_END}] ${MODELPARAM_VALUE.RD_DDR_ADDR_END}
}

proc update_MODELPARAM_VALUE.AXI_ID { MODELPARAM_VALUE.AXI_ID PARAM_VALUE.AXI_ID } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXI_ID}] ${MODELPARAM_VALUE.AXI_ID}
}

proc update_MODELPARAM_VALUE.AXI_LEN { MODELPARAM_VALUE.AXI_LEN PARAM_VALUE.AXI_LEN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXI_LEN}] ${MODELPARAM_VALUE.AXI_LEN}
}

