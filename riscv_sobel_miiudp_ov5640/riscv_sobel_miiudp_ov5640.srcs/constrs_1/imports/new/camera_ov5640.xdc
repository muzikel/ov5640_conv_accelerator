#set UnusedPin
set_property BITSTREAM.CONFIG.UNUSEDPIN Pullnone [current_design]






set_property PACKAGE_PIN A18 [get_ports camera_pwdn]
set_property IOSTANDARD LVCMOS33 [get_ports camera_pwdn]
#…„œÒÕ∑£®∞Â‘ÿΩ”ø⁄)
set_property PACKAGE_PIN B11 [get_ports camera_rst_n]
set_property IOSTANDARD LVCMOS33 [get_ports camera_rst_n]
set_property PACKAGE_PIN K15 [get_ports {camera_data[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {camera_data[0]}]
set_property PACKAGE_PIN J15 [get_ports {camera_data[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {camera_data[1]}]
set_property PACKAGE_PIN C15 [get_ports {camera_data[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {camera_data[2]}]
set_property PACKAGE_PIN D15 [get_ports {camera_data[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {camera_data[3]}]
set_property PACKAGE_PIN E16 [get_ports {camera_data[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {camera_data[4]}]
set_property PACKAGE_PIN E15 [get_ports {camera_data[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {camera_data[5]}]
set_property PACKAGE_PIN J17 [get_ports {camera_data[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {camera_data[6]}]
set_property PACKAGE_PIN K16 [get_ports {camera_data[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {camera_data[7]}]
set_property PACKAGE_PIN D12 [get_ports camera_xclk]
set_property IOSTANDARD LVCMOS33 [get_ports camera_xclk]
set_property PACKAGE_PIN J18 [get_ports {camera_pclk[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {camera_pclk[0]}]
set_property PACKAGE_PIN A11 [get_ports camera_href]
set_property IOSTANDARD LVCMOS33 [get_ports camera_href]
set_property PACKAGE_PIN B18 [get_ports camera_vsync]
set_property IOSTANDARD LVCMOS33 [get_ports camera_vsync]
set_property PACKAGE_PIN G13 [get_ports camera_sda]
set_property IOSTANDARD LVCMOS33 [get_ports camera_sda]
set_property PULLUP true [get_ports camera_sda]
set_property PACKAGE_PIN D13 [get_ports camera_scl]
set_property IOSTANDARD LVCMOS33 [get_ports camera_scl]
set_property PULLUP true [get_ports camera_scl]

set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets {camera_pclk_IBUF[0]}]


