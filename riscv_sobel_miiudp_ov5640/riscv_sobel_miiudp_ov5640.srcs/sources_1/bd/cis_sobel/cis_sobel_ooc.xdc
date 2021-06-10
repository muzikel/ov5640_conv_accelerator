################################################################################

# This XDC is used only for OOC mode of synthesis, implementation
# This constraints file contains default clock frequencies to be used during
# out-of-context flows such as OOC Synthesis and Hierarchical Designs.
# This constraints file is not used in normal top-down synthesis (default flow
# of Vivado)
################################################################################
create_clock -name camera_pclk -period 10 [get_ports camera_pclk]
create_clock -name eth_tx_clk -period 10 [get_ports eth_tx_clk]
create_clock -name clk -period 10 [get_ports clk]
create_clock -name eth_rx_clk -period 10 [get_ports eth_rx_clk]

################################################################################