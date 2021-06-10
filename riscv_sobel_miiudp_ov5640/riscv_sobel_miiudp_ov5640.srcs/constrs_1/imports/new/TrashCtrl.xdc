## Clock signal
set_property -dict {PACKAGE_PIN E3 IOSTANDARD LVCMOS33} [get_ports CLK100MHZ]
create_clock -period 10.000 -name sys_clk_pin -waveform {0.000 5.000} -add [get_ports CLK100MHZ]

set_property PACKAGE_PIN A8 [get_ports Sel]
set_property IOSTANDARD LVCMOS33 [get_ports Sel]

set_property PACKAGE_PIN C9 [get_ports udprst]
set_property IOSTANDARD LVCMOS33 [get_ports udprst]

set_property PACKAGE_PIN H5 [get_ports led]
set_property IOSTANDARD LVCMOS33 [get_ports led]
set_property PACKAGE_PIN B13 [get_ports {gpioA[31]}]
set_property PACKAGE_PIN K1 [get_ports {gpioA[30]}]
set_property PACKAGE_PIN B12 [get_ports {gpioA[29]}]
set_property PACKAGE_PIN G1 [get_ports {gpioA[28]}]
set_property PACKAGE_PIN C12 [get_ports {gpioA[27]}]
set_property PACKAGE_PIN N17 [get_ports {gpioA[26]}]
set_property PACKAGE_PIN H6 [get_ports {gpioA[25]}]
set_property PACKAGE_PIN B14 [get_ports {gpioA[24]}]
set_property PACKAGE_PIN P14 [get_ports {gpioA[23]}]
set_property PACKAGE_PIN G6 [get_ports {gpioA[22]}]
set_property PACKAGE_PIN N14 [get_ports {gpioA[21]}]
set_property PACKAGE_PIN A14 [get_ports {gpioA[20]}]
#UART2:TX
set_property PACKAGE_PIN T18 [get_ports {gpioA[19]}]
#UART2:RX
set_property PACKAGE_PIN R18 [get_ports {gpioA[18]}]
#UART0:TX output
set_property PACKAGE_PIN D10 [get_ports {gpioA[17]}]
#UART0:RX input
set_property PACKAGE_PIN A9 [get_ports {gpioA[16]}]
#I2C0:SDA
set_property PACKAGE_PIN J2 [get_ports {gpioA[15]}]
#I2C0:SCL
set_property PACKAGE_PIN M13 [get_ports {gpioA[14]}]
#QSPI1:DQ3
set_property PACKAGE_PIN R13 [get_ports {gpioA[13]}]
#QSPI1:DQ2
set_property PACKAGE_PIN R12 [get_ports {gpioA[12]}]
#QSPI1:DQ1
set_property PACKAGE_PIN A13 [get_ports {gpioA[11]}]
#QSPI1:DQ0
set_property PACKAGE_PIN G17 [get_ports {gpioA[10]}]
#QSPI1:CS
set_property PACKAGE_PIN M18 [get_ports {gpioA[9]}]
#QSPI1:SCK
set_property PACKAGE_PIN L18 [get_ports {gpioA[8]}]
#PWM1_3
set_property PACKAGE_PIN H4 [get_ports {gpioA[7]}]
#PWM1_2
set_property PACKAGE_PIN R11 [get_ports {gpioA[6]}]
#PWM1_1
set_property PACKAGE_PIN H1 [get_ports {gpioA[5]}]
#PWM1_0
set_property PACKAGE_PIN J4 [get_ports {gpioA[4]}]
#PWM0_3
set_property PACKAGE_PIN G4 [get_ports {gpioA[3]}]
#PWM0_2
set_property PACKAGE_PIN J3 [get_ports {gpioA[2]}]
#PWM0_1
set_property PACKAGE_PIN F6 [get_ports {gpioA[1]}]
#PWM0_0
set_property PACKAGE_PIN G3 [get_ports {gpioA[0]}]
set_property PACKAGE_PIN P18 [get_ports {gpioB[31]}]
set_property PACKAGE_PIN M16 [get_ports {gpioB[30]}]
set_property PACKAGE_PIN M17 [get_ports {gpioB[29]}]
set_property PACKAGE_PIN N15 [get_ports {gpioB[28]}]
set_property PACKAGE_PIN N16 [get_ports {gpioB[27]}]
set_property PACKAGE_PIN P17 [get_ports {gpioB[26]}]
set_property PACKAGE_PIN R17 [get_ports {gpioB[25]}]
set_property PACKAGE_PIN P15 [get_ports {gpioB[24]}]
set_property PACKAGE_PIN R15 [get_ports {gpioB[23]}]
set_property PACKAGE_PIN F14 [get_ports {gpioB[22]}]
set_property PACKAGE_PIN F13 [get_ports {gpioB[21]}]
set_property PACKAGE_PIN R16 [get_ports {gpioB[20]}]
set_property PACKAGE_PIN T16 [get_ports {gpioB[19]}]
set_property PACKAGE_PIN K2 [get_ports {gpioB[18]}]
#UART1:TX
set_property PACKAGE_PIN V16 [get_ports {gpioB[17]}]
#UART1:RX
set_property PACKAGE_PIN U17 [get_ports {gpioB[16]}]
#I2C1:SDA
set_property PACKAGE_PIN U18 [get_ports {gpioB[15]}]
#I2C1:SCL
set_property PACKAGE_PIN F18 [get_ports {gpioB[14]}]
#QSPI2:DQ3
set_property PACKAGE_PIN V17 [get_ports {gpioB[13]}]
#QSPI2:DQ2
set_property PACKAGE_PIN F1 [get_ports {gpioB[12]}]
#QSPI2:DQ1
set_property PACKAGE_PIN U11 [get_ports {gpioB[11]}]
#QSPI2:DQ0
set_property PACKAGE_PIN U12 [get_ports {gpioB[10]}]
#QSPI2:CS
set_property PACKAGE_PIN V12 [get_ports {gpioB[9]}]
#QSPI2:SCK
set_property PACKAGE_PIN V10 [get_ports {gpioB[8]}]
#PWM3_3
set_property PACKAGE_PIN V11 [get_ports {gpioB[7]}]
#PWM3_2
set_property PACKAGE_PIN U14 [get_ports {gpioB[6]}]
#PWM3_1
set_property PACKAGE_PIN V14 [get_ports {gpioB[5]}]
#PWM3_0
set_property PACKAGE_PIN T13 [get_ports {gpioB[4]}]
#PWM2_3
set_property PACKAGE_PIN U13 [get_ports {gpioB[3]}]
#PWM2_2
set_property PACKAGE_PIN E1 [get_ports {gpioB[2]}]
#PWM2_1
set_property PACKAGE_PIN C11 [get_ports {gpioB[1]}]
#PWM2_0
set_property PACKAGE_PIN R10 [get_ports {gpioB[0]}]

#Dedicated QSPI interface
#output wire qspi0_cs,
#output wire qspi0_sck,
#inout wire [3:0] qspi0_dq,
set_property -dict {PACKAGE_PIN L16 IOSTANDARD LVCMOS33 IOB TRUE} [get_ports qspi0_sck]
#create_clock -add -name qspi_sck_pin -period 20.00 -waveform {0 10}    [get_ports { qspi0_sck }];
set_property -dict {PACKAGE_PIN L13 IOSTANDARD LVCMOS33 IOB TRUE} [get_ports qspi0_cs]
#IO_L6P_T0_FCS_B_14 Sch=qspi_cs
set_property IOB TRUE [get_ports {qspi0_dq[0]}]
set_property PACKAGE_PIN K17 [get_ports {qspi0_dq[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {qspi0_dq[0]}]
set_property PULLUP true [get_ports {qspi0_dq[0]}]
#IO_L1P_T0_D00_MOSI_14 Sch=qspi_dq[0]
set_property IOB TRUE [get_ports {qspi0_dq[1]}]
set_property PACKAGE_PIN K18 [get_ports {qspi0_dq[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {qspi0_dq[1]}]
set_property PULLUP true [get_ports {qspi0_dq[1]}]
#IO_L1N_T0_D01_DIN_14 Sch=qspi_dq[1]
set_property IOB TRUE [get_ports {qspi0_dq[2]}]
set_property PACKAGE_PIN L14 [get_ports {qspi0_dq[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {qspi0_dq[2]}]
set_property PULLUP true [get_ports {qspi0_dq[2]}]
#IO_L2P_T0_D02_14 Sch=qspi_dq[2]
set_property IOB TRUE [get_ports {qspi0_dq[3]}]
set_property PACKAGE_PIN M14 [get_ports {qspi0_dq[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {qspi0_dq[3]}]
set_property PULLUP true [get_ports {qspi0_dq[3]}]
#IO_L2N_T0_D03_14 Sch=qspi_dq[3]

set_property PACKAGE_PIN C2 [get_ports mcu_rst]
#MCU JTAG define
#JD3
set_property PACKAGE_PIN F4 [get_ports mcu_TCK]
#JD1
set_property PACKAGE_PIN D4 [get_ports mcu_TDO]
#JD8
set_property PACKAGE_PIN D2 [get_ports mcu_TMS]
#JD7
set_property PACKAGE_PIN E2 [get_ports mcu_TDI]
set_property IOSTANDARD LVCMOS33 [get_ports mcu_TDO]
set_property IOSTANDARD LVCMOS33 [get_ports mcu_TCK]
set_property IOSTANDARD LVCMOS33 [get_ports mcu_TDI]
set_property IOSTANDARD LVCMOS33 [get_ports mcu_TMS]
set_property KEEPER true [get_ports mcu_TMS]
#PMU
set_property PACKAGE_PIN D9 [get_ports mcu_wakeup]
#LED5
set_property PACKAGE_PIN J5 [get_ports pmu_paden]
#LED6
set_property PACKAGE_PIN T9 [get_ports pmu_padrst]

set_property IOSTANDARD LVCMOS33 [get_ports {gpioA[31]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioA[30]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioA[29]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioA[28]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioA[27]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioA[26]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioA[25]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioA[24]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioA[23]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioA[22]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioA[21]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioA[20]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioA[19]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioA[18]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioA[17]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioA[16]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioA[15]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioA[14]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioA[13]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioA[12]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioA[11]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioA[10]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioA[9]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioA[8]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioA[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioA[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioA[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioA[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioA[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioA[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioA[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioA[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioB[31]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioB[30]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioB[29]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioB[28]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioB[27]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioB[26]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioB[25]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioB[24]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioB[23]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioB[22]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioB[21]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioB[20]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioB[19]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioB[18]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioB[17]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioB[16]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioB[15]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioB[14]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioB[13]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioB[12]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioB[11]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioB[10]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioB[9]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioB[8]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioB[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioB[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioB[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioB[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioB[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioB[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioB[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioB[0]}]

set_property IOSTANDARD LVCMOS33 [get_ports mcu_rst]
set_property IOSTANDARD LVCMOS33 [get_ports mcu_wakeup]

set_property IOSTANDARD LVCMOS33 [get_ports pmu_paden]
set_property IOSTANDARD LVCMOS33 [get_ports pmu_padrst]









