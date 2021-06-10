set_property -dict {PACKAGE_PIN E3 IOSTANDARD LVCMOS33} [get_ports clk]
create_clock -period 10.000 -name sys_clk_pin -waveform {0.000 5.000} -add [get_ports clk]

set_property PACKAGE_PIN F15 [get_ports eth_rx_clk]
set_property IOSTANDARD LVCMOS33 [get_ports eth_rx_clk]
set_property PACKAGE_PIN G16 [get_ports eth_rxdv]
set_property IOSTANDARD LVCMOS33 [get_ports eth_rxdv]
set_property PACKAGE_PIN H16 [get_ports eth_tx_clk]
set_property IOSTANDARD LVCMOS33 [get_ports eth_tx_clk]
set_property PACKAGE_PIN D18 [get_ports {eth_rx_data[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {eth_rx_data[0]}]
set_property PACKAGE_PIN E17 [get_ports {eth_rx_data[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {eth_rx_data[1]}]
set_property PACKAGE_PIN E18 [get_ports {eth_rx_data[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {eth_rx_data[2]}]
set_property PACKAGE_PIN G17 [get_ports {eth_rx_data[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {eth_rx_data[3]}]

set_property PACKAGE_PIN H15 [get_ports eth_tx_en]
set_property IOSTANDARD LVCMOS33 [get_ports eth_tx_en]

set_property PACKAGE_PIN H14 [get_ports {eth_tx_data[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {eth_tx_data[0]}]
set_property PACKAGE_PIN J14 [get_ports {eth_tx_data[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {eth_tx_data[1]}]
set_property PACKAGE_PIN J13 [get_ports {eth_tx_data[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {eth_tx_data[2]}]
set_property PACKAGE_PIN H17 [get_ports {eth_tx_data[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {eth_tx_data[3]}]

set_property PACKAGE_PIN C16 [get_ports eth_rst_n]
set_property IOSTANDARD LVCMOS33 [get_ports eth_rst_n]

set_property PACKAGE_PIN K13 [get_ports eth_mdio]
set_property IOSTANDARD LVCMOS33 [get_ports eth_mdio]

set_property PACKAGE_PIN F16 [get_ports {eth_mdc[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {eth_mdc[0]}]

set_property PACKAGE_PIN G14 [get_ports {eth_crs[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {eth_crs[0]}]

set_property PACKAGE_PIN D17 [get_ports {eth_col[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {eth_col[0]}]

set_property PACKAGE_PIN G18 [get_ports eth_ref_clk]
set_property IOSTANDARD LVCMOS33 [get_ports eth_ref_clk]

set_property PACKAGE_PIN C2 [get_ports rst_n]
set_property IOSTANDARD LVCMOS33 [get_ports rst_n]


