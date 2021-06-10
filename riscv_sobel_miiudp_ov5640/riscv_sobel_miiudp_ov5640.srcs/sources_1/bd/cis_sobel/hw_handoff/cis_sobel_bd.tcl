
################################################################
# This is a generated script based on design: cis_sobel
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2019.1
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source cis_sobel_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# DVP_Capture, MUX2IN1, MUX2IN1, MUX2IN1_4bit, clkdivider, fifo2mig_axi, fifo2mig_axi, icb_sobel, img_data_pkt, img_data_pkt, ov5640_rgb565_top, rd_ddr_fifo, rd_ddr_fifo, rd_fifoddr_clr, udp, udp, wr_ddr_fifo, wr_ddr_fifo, wr_fifoddr_clr

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a100tcsg324-1
   set_property BOARD_PART digilentinc.com:arty-a7-100:part0:1.0 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name cis_sobel

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}


##################################################################
# MIG PRJ FILE TCL PROCs
##################################################################

proc write_mig_file_cis_sobel_mig_7series_0_0 { str_mig_prj_filepath } {

   file mkdir [ file dirname "$str_mig_prj_filepath" ]
   set mig_prj_file [open $str_mig_prj_filepath  w+]

   puts $mig_prj_file {ï»?<?xml version="1.0" encoding="UTF-8" standalone="no" ?>}
   puts $mig_prj_file {<Project NoOfControllers="1">}
   puts $mig_prj_file {  <!-- IMPORTANT: This is an internal file that has been generated by the MIG software. Any direct editing or changes made to this file may result in unpredictable behavior or data corruption. It is strongly advised that users do not edit the contents of this file. Re-run the MIG GUI with the required settings if any of the options provided below need to be altered. -->}
   puts $mig_prj_file {  <ModuleName>cis_sobel_mig_7series_0_0</ModuleName>}
   puts $mig_prj_file {  <dci_inouts_inputs>1</dci_inouts_inputs>}
   puts $mig_prj_file {  <dci_inputs>1</dci_inputs>}
   puts $mig_prj_file {  <Debug_En>OFF</Debug_En>}
   puts $mig_prj_file {  <DataDepth_En>1024</DataDepth_En>}
   puts $mig_prj_file {  <LowPower_En>ON</LowPower_En>}
   puts $mig_prj_file {  <XADC_En>Enabled</XADC_En>}
   puts $mig_prj_file {  <TargetFPGA>xc7a100t-csg324/-1</TargetFPGA>}
   puts $mig_prj_file {  <Version>4.2</Version>}
   puts $mig_prj_file {  <SystemClock>No Buffer</SystemClock>}
   puts $mig_prj_file {  <ReferenceClock>Use System Clock</ReferenceClock>}
   puts $mig_prj_file {  <SysResetPolarity>ACTIVE LOW</SysResetPolarity>}
   puts $mig_prj_file {  <BankSelectionFlag>FALSE</BankSelectionFlag>}
   puts $mig_prj_file {  <InternalVref>1</InternalVref>}
   puts $mig_prj_file {  <dci_hr_inouts_inputs>50 Ohms</dci_hr_inouts_inputs>}
   puts $mig_prj_file {  <dci_cascade>0</dci_cascade>}
   puts $mig_prj_file {  <Controller number="0">}
   puts $mig_prj_file {    <MemoryDevice>DDR3_SDRAM/Components/MT41J128M16XX-125</MemoryDevice>}
   puts $mig_prj_file {    <TimePeriod>2500</TimePeriod>}
   puts $mig_prj_file {    <VccAuxIO>1.8V</VccAuxIO>}
   puts $mig_prj_file {    <PHYRatio>4:1</PHYRatio>}
   puts $mig_prj_file {    <InputClkFreq>200</InputClkFreq>}
   puts $mig_prj_file {    <UIExtraClocks>0</UIExtraClocks>}
   puts $mig_prj_file {    <MMCM_VCO>800</MMCM_VCO>}
   puts $mig_prj_file {    <MMCMClkOut0> 1.000</MMCMClkOut0>}
   puts $mig_prj_file {    <MMCMClkOut1>1</MMCMClkOut1>}
   puts $mig_prj_file {    <MMCMClkOut2>1</MMCMClkOut2>}
   puts $mig_prj_file {    <MMCMClkOut3>1</MMCMClkOut3>}
   puts $mig_prj_file {    <MMCMClkOut4>1</MMCMClkOut4>}
   puts $mig_prj_file {    <DataWidth>16</DataWidth>}
   puts $mig_prj_file {    <DeepMemory>1</DeepMemory>}
   puts $mig_prj_file {    <DataMask>1</DataMask>}
   puts $mig_prj_file {    <ECC>Disabled</ECC>}
   puts $mig_prj_file {    <Ordering>Strict</Ordering>}
   puts $mig_prj_file {    <BankMachineCnt>8</BankMachineCnt>}
   puts $mig_prj_file {    <CustomPart>FALSE</CustomPart>}
   puts $mig_prj_file {    <NewPartName></NewPartName>}
   puts $mig_prj_file {    <RowAddress>14</RowAddress>}
   puts $mig_prj_file {    <ColAddress>10</ColAddress>}
   puts $mig_prj_file {    <BankAddress>3</BankAddress>}
   puts $mig_prj_file {    <MemoryVoltage>1.5V</MemoryVoltage>}
   puts $mig_prj_file {    <C0_MEM_SIZE>268435456</C0_MEM_SIZE>}
   puts $mig_prj_file {    <UserMemoryAddressMap>BANK_ROW_COLUMN</UserMemoryAddressMap>}
   puts $mig_prj_file {    <PinSelection>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="R2" SLEW="" VCCAUX_IO="" name="ddr3_addr[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="R6" SLEW="" VCCAUX_IO="" name="ddr3_addr[10]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="U6" SLEW="" VCCAUX_IO="" name="ddr3_addr[11]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="T6" SLEW="" VCCAUX_IO="" name="ddr3_addr[12]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="T8" SLEW="" VCCAUX_IO="" name="ddr3_addr[13]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="M6" SLEW="" VCCAUX_IO="" name="ddr3_addr[1]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="N4" SLEW="" VCCAUX_IO="" name="ddr3_addr[2]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="T1" SLEW="" VCCAUX_IO="" name="ddr3_addr[3]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="N6" SLEW="" VCCAUX_IO="" name="ddr3_addr[4]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="R7" SLEW="" VCCAUX_IO="" name="ddr3_addr[5]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="V6" SLEW="" VCCAUX_IO="" name="ddr3_addr[6]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="U7" SLEW="" VCCAUX_IO="" name="ddr3_addr[7]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="R8" SLEW="" VCCAUX_IO="" name="ddr3_addr[8]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="V7" SLEW="" VCCAUX_IO="" name="ddr3_addr[9]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="R1" SLEW="" VCCAUX_IO="" name="ddr3_ba[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="P4" SLEW="" VCCAUX_IO="" name="ddr3_ba[1]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="P2" SLEW="" VCCAUX_IO="" name="ddr3_ba[2]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="M4" SLEW="" VCCAUX_IO="" name="ddr3_cas_n"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="DIFF_SSTL15" PADName="V9" SLEW="" VCCAUX_IO="" name="ddr3_ck_n[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="DIFF_SSTL15" PADName="U9" SLEW="" VCCAUX_IO="" name="ddr3_ck_p[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="N5" SLEW="" VCCAUX_IO="" name="ddr3_cke[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="U8" SLEW="" VCCAUX_IO="" name="ddr3_cs_n[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="L1" SLEW="" VCCAUX_IO="" name="ddr3_dm[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="U1" SLEW="" VCCAUX_IO="" name="ddr3_dm[1]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="K5" SLEW="" VCCAUX_IO="" name="ddr3_dq[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="U4" SLEW="" VCCAUX_IO="" name="ddr3_dq[10]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="V5" SLEW="" VCCAUX_IO="" name="ddr3_dq[11]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="V1" SLEW="" VCCAUX_IO="" name="ddr3_dq[12]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="T3" SLEW="" VCCAUX_IO="" name="ddr3_dq[13]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="U3" SLEW="" VCCAUX_IO="" name="ddr3_dq[14]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="R3" SLEW="" VCCAUX_IO="" name="ddr3_dq[15]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="L3" SLEW="" VCCAUX_IO="" name="ddr3_dq[1]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="K3" SLEW="" VCCAUX_IO="" name="ddr3_dq[2]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="L6" SLEW="" VCCAUX_IO="" name="ddr3_dq[3]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="M3" SLEW="" VCCAUX_IO="" name="ddr3_dq[4]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="M1" SLEW="" VCCAUX_IO="" name="ddr3_dq[5]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="L4" SLEW="" VCCAUX_IO="" name="ddr3_dq[6]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="M2" SLEW="" VCCAUX_IO="" name="ddr3_dq[7]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="V4" SLEW="" VCCAUX_IO="" name="ddr3_dq[8]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="T5" SLEW="" VCCAUX_IO="" name="ddr3_dq[9]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="DIFF_SSTL15" PADName="N1" SLEW="" VCCAUX_IO="" name="ddr3_dqs_n[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="DIFF_SSTL15" PADName="V2" SLEW="" VCCAUX_IO="" name="ddr3_dqs_n[1]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="DIFF_SSTL15" PADName="N2" SLEW="" VCCAUX_IO="" name="ddr3_dqs_p[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="DIFF_SSTL15" PADName="U2" SLEW="" VCCAUX_IO="" name="ddr3_dqs_p[1]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="R5" SLEW="" VCCAUX_IO="" name="ddr3_odt[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="P3" SLEW="" VCCAUX_IO="" name="ddr3_ras_n"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="LVCMOS15" PADName="K6" SLEW="" VCCAUX_IO="" name="ddr3_reset_n"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="P5" SLEW="" VCCAUX_IO="" name="ddr3_we_n"/>}
   puts $mig_prj_file {    </PinSelection>}
   puts $mig_prj_file {    <System_Control>}
   puts $mig_prj_file {      <Pin Bank="Select Bank" PADName="No connect" name="sys_rst"/>}
   puts $mig_prj_file {      <Pin Bank="Select Bank" PADName="No connect" name="init_calib_complete"/>}
   puts $mig_prj_file {      <Pin Bank="Select Bank" PADName="No connect" name="tg_compare_error"/>}
   puts $mig_prj_file {    </System_Control>}
   puts $mig_prj_file {    <TimingParameters>}
   puts $mig_prj_file {      <Parameters tcke="5" tfaw="40" tras="35" trcd="13.75" trefi="7.8" trfc="160" trp="13.75" trrd="7.5" trtp="7.5" twtr="7.5"/>}
   puts $mig_prj_file {    </TimingParameters>}
   puts $mig_prj_file {    <mrBurstLength name="Burst Length">8 - Fixed</mrBurstLength>}
   puts $mig_prj_file {    <mrBurstType name="Read Burst Type and Length">Sequential</mrBurstType>}
   puts $mig_prj_file {    <mrCasLatency name="CAS Latency">6</mrCasLatency>}
   puts $mig_prj_file {    <mrMode name="Mode">Normal</mrMode>}
   puts $mig_prj_file {    <mrDllReset name="DLL Reset">No</mrDllReset>}
   puts $mig_prj_file {    <mrPdMode name="DLL control for precharge PD">Slow Exit</mrPdMode>}
   puts $mig_prj_file {    <emrDllEnable name="DLL Enable">Enable</emrDllEnable>}
   puts $mig_prj_file {    <emrOutputDriveStrength name="Output Driver Impedance Control">RZQ/7</emrOutputDriveStrength>}
   puts $mig_prj_file {    <emrMirrorSelection name="Address Mirroring">Disable</emrMirrorSelection>}
   puts $mig_prj_file {    <emrCSSelection name="Controller Chip Select Pin">Enable</emrCSSelection>}
   puts $mig_prj_file {    <emrRTT name="RTT (nominal) - On Die Termination (ODT)">RZQ/4</emrRTT>}
   puts $mig_prj_file {    <emrPosted name="Additive Latency (AL)">0</emrPosted>}
   puts $mig_prj_file {    <emrOCD name="Write Leveling Enable">Disabled</emrOCD>}
   puts $mig_prj_file {    <emrDQS name="TDQS enable">Enabled</emrDQS>}
   puts $mig_prj_file {    <emrRDQS name="Qoff">Output Buffer Enabled</emrRDQS>}
   puts $mig_prj_file {    <mr2PartialArraySelfRefresh name="Partial-Array Self Refresh">Full Array</mr2PartialArraySelfRefresh>}
   puts $mig_prj_file {    <mr2CasWriteLatency name="CAS write latency">5</mr2CasWriteLatency>}
   puts $mig_prj_file {    <mr2AutoSelfRefresh name="Auto Self Refresh">Enabled</mr2AutoSelfRefresh>}
   puts $mig_prj_file {    <mr2SelfRefreshTempRange name="High Temparature Self Refresh Rate">Normal</mr2SelfRefreshTempRange>}
   puts $mig_prj_file {    <mr2RTTWR name="RTT_WR - Dynamic On Die Termination (ODT)">Dynamic ODT off</mr2RTTWR>}
   puts $mig_prj_file {    <PortInterface>AXI</PortInterface>}
   puts $mig_prj_file {    <AXIParameters>}
   puts $mig_prj_file {      <C0_C_RD_WR_ARB_ALGORITHM>TDM</C0_C_RD_WR_ARB_ALGORITHM>}
   puts $mig_prj_file {      <C0_S_AXI_ADDR_WIDTH>28</C0_S_AXI_ADDR_WIDTH>}
   puts $mig_prj_file {      <C0_S_AXI_DATA_WIDTH>128</C0_S_AXI_DATA_WIDTH>}
   puts $mig_prj_file {      <C0_S_AXI_ID_WIDTH>4</C0_S_AXI_ID_WIDTH>}
   puts $mig_prj_file {      <C0_S_AXI_SUPPORTS_NARROW_BURST>0</C0_S_AXI_SUPPORTS_NARROW_BURST>}
   puts $mig_prj_file {    </AXIParameters>}
   puts $mig_prj_file {  </Controller>}
   puts $mig_prj_file {</Project>}

   close $mig_prj_file
}
# End of write_mig_file_cis_sobel_mig_7series_0_0()



##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set ddr3 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 ddr3 ]


  # Create ports
  set Sel [ create_bd_port -dir I Sel ]
  set camera_data [ create_bd_port -dir I -from 7 -to 0 camera_data ]
  set camera_href [ create_bd_port -dir I camera_href ]
  set camera_pclk [ create_bd_port -dir I -from 0 -to 0 -type clk camera_pclk ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {100000000} \
 ] $camera_pclk
  set camera_pwdn [ create_bd_port -dir O camera_pwdn ]
  set camera_rst_n [ create_bd_port -dir O -type rst camera_rst_n ]
  set camera_scl [ create_bd_port -dir O camera_scl ]
  set camera_sda [ create_bd_port -dir IO camera_sda ]
  set camera_vsync [ create_bd_port -dir I camera_vsync ]
  set camera_xclk [ create_bd_port -dir O camera_xclk ]
  set clk [ create_bd_port -dir I -type clk clk ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {100000000} \
 ] $clk
  set eth_col [ create_bd_port -dir O -from 0 -to 0 eth_col ]
  set eth_crs [ create_bd_port -dir O -from 0 -to 0 eth_crs ]
  set eth_mdc [ create_bd_port -dir O -from 0 -to 0 eth_mdc ]
  set eth_ref_clk [ create_bd_port -dir O -type clk eth_ref_clk ]
  set eth_rst_n [ create_bd_port -dir O eth_rst_n ]
  set eth_rx_clk [ create_bd_port -dir I -type clk eth_rx_clk ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {100000000} \
 ] $eth_rx_clk
  set eth_tx_clk [ create_bd_port -dir I -type clk eth_tx_clk ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {100000000} \
 ] $eth_tx_clk
  set eth_tx_data [ create_bd_port -dir O -from 3 -to 0 eth_tx_data ]
  set eth_tx_en [ create_bd_port -dir O eth_tx_en ]
  set gpioA [ create_bd_port -dir IO -from 31 -to 0 gpioA ]
  set gpioB [ create_bd_port -dir IO -from 31 -to 0 gpioB ]
  set led [ create_bd_port -dir O led ]
  set mcu_TCK [ create_bd_port -dir IO mcu_TCK ]
  set mcu_TDI [ create_bd_port -dir IO mcu_TDI ]
  set mcu_TDO [ create_bd_port -dir IO mcu_TDO ]
  set mcu_TMS [ create_bd_port -dir IO mcu_TMS ]
  set mcu_wakeup [ create_bd_port -dir IO mcu_wakeup ]
  set pmu_paden [ create_bd_port -dir IO pmu_paden ]
  set pmu_padrst [ create_bd_port -dir IO pmu_padrst ]
  set qspi0_cs [ create_bd_port -dir O qspi0_cs ]
  set qspi0_dq [ create_bd_port -dir IO -from 3 -to 0 qspi0_dq ]
  set qspi0_sck [ create_bd_port -dir O qspi0_sck ]
  set rst_n [ create_bd_port -dir I -type rst rst_n ]

  # Create instance: DVP_Capture_0, and set properties
  set block_name DVP_Capture
  set block_cell_name DVP_Capture_0
  if { [catch {set DVP_Capture_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $DVP_Capture_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: MUX2IN1_0, and set properties
  set block_name MUX2IN1
  set block_cell_name MUX2IN1_0
  if { [catch {set MUX2IN1_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $MUX2IN1_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: MUX2IN1_1, and set properties
  set block_name MUX2IN1
  set block_cell_name MUX2IN1_1
  if { [catch {set MUX2IN1_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $MUX2IN1_1 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: MUX2IN1_4bit_0, and set properties
  set block_name MUX2IN1_4bit
  set block_cell_name MUX2IN1_4bit_0
  if { [catch {set MUX2IN1_4bit_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $MUX2IN1_4bit_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Trash_Risc_0, and set properties
  set Trash_Risc_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:Trash_Risc:1.0 Trash_Risc_0 ]

  # Create instance: axi_smc, and set properties
  set axi_smc [ create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect:1.0 axi_smc ]
  set_property -dict [ list \
   CONFIG.NUM_SI {2} \
 ] $axi_smc

  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz_0 ]
  set_property -dict [ list \
   CONFIG.CLKOUT1_JITTER {130.958} \
   CONFIG.CLKOUT1_PHASE_ERROR {98.575} \
   CONFIG.CLKOUT2_JITTER {175.402} \
   CONFIG.CLKOUT2_PHASE_ERROR {98.575} \
   CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {25.000} \
   CONFIG.CLKOUT2_USED {true} \
   CONFIG.CLKOUT3_JITTER {177.091} \
   CONFIG.CLKOUT3_PHASE_ERROR {98.575} \
   CONFIG.CLKOUT3_REQUESTED_OUT_FREQ {24.000} \
   CONFIG.CLKOUT3_USED {true} \
   CONFIG.CLKOUT4_JITTER {114.829} \
   CONFIG.CLKOUT4_PHASE_ERROR {98.575} \
   CONFIG.CLKOUT4_REQUESTED_OUT_FREQ {200.000} \
   CONFIG.CLKOUT4_USED {true} \
   CONFIG.CLKOUT5_JITTER {191.683} \
   CONFIG.CLKOUT5_PHASE_ERROR {98.575} \
   CONFIG.CLKOUT5_REQUESTED_OUT_FREQ {16.000} \
   CONFIG.CLKOUT5_USED {true} \
   CONFIG.CLKOUT6_JITTER {216.703} \
   CONFIG.CLKOUT6_PHASE_ERROR {98.575} \
   CONFIG.CLKOUT6_REQUESTED_OUT_FREQ {8.388} \
   CONFIG.CLKOUT6_USED {true} \
   CONFIG.CLKOUT7_JITTER {151.636} \
   CONFIG.CLKOUT7_PHASE_ERROR {98.575} \
   CONFIG.CLKOUT7_REQUESTED_OUT_FREQ {50.000} \
   CONFIG.CLKOUT7_USED {true} \
   CONFIG.CLK_OUT1_PORT {clk_100m} \
   CONFIG.CLK_OUT2_PORT {clk_25m} \
   CONFIG.CLK_OUT3_PORT {clk_24m} \
   CONFIG.CLK_OUT4_PORT {clk_200m} \
   CONFIG.CLK_OUT5_PORT {clk_16m} \
   CONFIG.CLK_OUT6_PORT {clk_8388m} \
   CONFIG.CLK_OUT7_PORT {clk_50m} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {10.000} \
   CONFIG.MMCM_CLKIN1_PERIOD {10.000} \
   CONFIG.MMCM_CLKIN2_PERIOD {10.000} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {10.000} \
   CONFIG.MMCM_CLKOUT1_DIVIDE {40} \
   CONFIG.MMCM_CLKOUT2_DIVIDE {42} \
   CONFIG.MMCM_CLKOUT3_DIVIDE {5} \
   CONFIG.MMCM_CLKOUT4_DIVIDE {63} \
   CONFIG.MMCM_CLKOUT5_DIVIDE {119} \
   CONFIG.MMCM_CLKOUT6_DIVIDE {20} \
   CONFIG.NUM_OUT_CLKS {7} \
   CONFIG.RESET_PORT {resetn} \
   CONFIG.RESET_TYPE {ACTIVE_LOW} \
 ] $clk_wiz_0

  # Create instance: clkdivider_0, and set properties
  set block_name clkdivider
  set block_cell_name clkdivider_0
  if { [catch {set clkdivider_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $clkdivider_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: fifo2mig_axi_0, and set properties
  set block_name fifo2mig_axi
  set block_cell_name fifo2mig_axi_0
  if { [catch {set fifo2mig_axi_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $fifo2mig_axi_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.AXI_ID {"0001"} \
   CONFIG.AXI_LEN {"00011111"} \
   CONFIG.RD_DDR_ADDR_BEGIN {614400} \
   CONFIG.RD_DDR_ADDR_END {1228800} \
   CONFIG.WR_DDR_ADDR_BEGIN {614400} \
   CONFIG.WR_DDR_ADDR_END {1228800} \
 ] $fifo2mig_axi_0

  # Create instance: fifo2mig_axi_1, and set properties
  set block_name fifo2mig_axi
  set block_cell_name fifo2mig_axi_1
  if { [catch {set fifo2mig_axi_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $fifo2mig_axi_1 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.AXI_ID {"0000"} \
   CONFIG.AXI_LEN {"00011111"} \
   CONFIG.RD_DDR_ADDR_BEGIN {0} \
   CONFIG.RD_DDR_ADDR_END {614400} \
   CONFIG.WR_DDR_ADDR_BEGIN {0} \
   CONFIG.WR_DDR_ADDR_END {614400} \
 ] $fifo2mig_axi_1

  # Create instance: fifo_generator_0, and set properties
  set fifo_generator_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:fifo_generator:13.2 fifo_generator_0 ]
  set_property -dict [ list \
   CONFIG.Enable_Safety_Circuit {true} \
   CONFIG.Fifo_Implementation {Independent_Clocks_Block_RAM} \
   CONFIG.Full_Flags_Reset_Value {1} \
   CONFIG.Full_Threshold_Assert_Value {1021} \
   CONFIG.Full_Threshold_Negate_Value {1020} \
   CONFIG.Input_Data_Width {8} \
   CONFIG.Output_Data_Width {8} \
   CONFIG.Reset_Type {Asynchronous_Reset} \
 ] $fifo_generator_0

  # Create instance: icb_sobel_0, and set properties
  set block_name icb_sobel
  set block_cell_name icb_sobel_0
  if { [catch {set icb_sobel_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $icb_sobel_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: img_data_pkt_0, and set properties
  set block_name img_data_pkt
  set block_cell_name img_data_pkt_0
  if { [catch {set img_data_pkt_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $img_data_pkt_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.CMOS_H_PIXEL {"01010000000"} \
   CONFIG.CMOS_V_PIXEL {"00111100000"} \
 ] $img_data_pkt_0

  # Create instance: img_data_pkt_1, and set properties
  set block_name img_data_pkt
  set block_cell_name img_data_pkt_1
  if { [catch {set img_data_pkt_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $img_data_pkt_1 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.CMOS_H_PIXEL {"01010000000"} \
   CONFIG.CMOS_V_PIXEL {"00111100000"} \
 ] $img_data_pkt_1

  # Create instance: mig_7series_0, and set properties
  set mig_7series_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:mig_7series:4.2 mig_7series_0 ]

  # Generate the PRJ File for MIG
  set str_mig_folder [get_property IP_DIR [ get_ips [ get_property CONFIG.Component_Name $mig_7series_0 ] ] ]
  set str_mig_file_name mig_a.prj
  set str_mig_file_path ${str_mig_folder}/${str_mig_file_name}

  write_mig_file_cis_sobel_mig_7series_0_0 $str_mig_file_path

  set_property -dict [ list \
   CONFIG.BOARD_MIG_PARAM {Custom} \
   CONFIG.MIG_DONT_TOUCH_PARAM {Custom} \
   CONFIG.RESET_BOARD_INTERFACE {Custom} \
   CONFIG.XML_INPUT_FILE {mig_a.prj} \
 ] $mig_7series_0

  # Create instance: ov5640_rgb565_top_0, and set properties
  set block_name ov5640_rgb565_top
  set block_cell_name ov5640_rgb565_top_0
  if { [catch {set ov5640_rgb565_top_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $ov5640_rgb565_top_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: rd_ddr_fifo_0, and set properties
  set block_name rd_ddr_fifo
  set block_cell_name rd_ddr_fifo_0
  if { [catch {set rd_ddr_fifo_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $rd_ddr_fifo_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: rd_ddr_fifo_2, and set properties
  set block_name rd_ddr_fifo
  set block_cell_name rd_ddr_fifo_2
  if { [catch {set rd_ddr_fifo_2 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $rd_ddr_fifo_2 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: rd_fifoddr_clr_0, and set properties
  set block_name rd_fifoddr_clr
  set block_cell_name rd_fifoddr_clr_0
  if { [catch {set rd_fifoddr_clr_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $rd_fifoddr_clr_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: rst_mig_7series_0_100M, and set properties
  set rst_mig_7series_0_100M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_mig_7series_0_100M ]

  # Create instance: udp_0, and set properties
  set block_name udp
  set block_cell_name udp_0
  if { [catch {set udp_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $udp_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.BOARD_IP {0xc0a80002} \
   CONFIG.DES_IP {0xc0a80003} \
   CONFIG.DES_MAC {0x70B5E849A3D2} \
 ] $udp_0

  # Create instance: udp_1, and set properties
  set block_name udp
  set block_cell_name udp_1
  if { [catch {set udp_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $udp_1 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.BOARD_IP {0xc0a80002} \
   CONFIG.DES_IP {0xc0a80003} \
   CONFIG.DES_MAC {0x70B5E849A3D2} \
 ] $udp_1

  # Create instance: util_ds_buf_0, and set properties
  set util_ds_buf_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf:2.1 util_ds_buf_0 ]
  set_property -dict [ list \
   CONFIG.C_BUF_TYPE {BUFG} \
 ] $util_ds_buf_0

  # Create instance: util_vector_logic_0, and set properties
  set util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_0 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {or} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_orgate.png} \
 ] $util_vector_logic_0

  # Create instance: util_vector_logic_1, and set properties
  set util_vector_logic_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_1 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_1

  # Create instance: util_vector_logic_2, and set properties
  set util_vector_logic_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_2 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {or} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_orgate.png} \
 ] $util_vector_logic_2

  # Create instance: util_vector_logic_3, and set properties
  set util_vector_logic_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_3 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_3

  # Create instance: util_vector_logic_4, and set properties
  set util_vector_logic_4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_4 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {or} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_orgate.png} \
 ] $util_vector_logic_4

  # Create instance: util_vector_logic_5, and set properties
  set util_vector_logic_5 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_5 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {or} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_orgate.png} \
 ] $util_vector_logic_5

  # Create instance: util_vector_logic_6, and set properties
  set util_vector_logic_6 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_6 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {and} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_andgate.png} \
 ] $util_vector_logic_6

  # Create instance: util_vector_logic_7, and set properties
  set util_vector_logic_7 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_7 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {or} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_orgate.png} \
 ] $util_vector_logic_7

  # Create instance: util_vector_logic_8, and set properties
  set util_vector_logic_8 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_8 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {or} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_orgate.png} \
 ] $util_vector_logic_8

  # Create instance: wr_ddr_fifo_0, and set properties
  set block_name wr_ddr_fifo
  set block_cell_name wr_ddr_fifo_0
  if { [catch {set wr_ddr_fifo_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $wr_ddr_fifo_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: wr_ddr_fifo_1, and set properties
  set block_name wr_ddr_fifo
  set block_cell_name wr_ddr_fifo_1
  if { [catch {set wr_ddr_fifo_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $wr_ddr_fifo_1 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: wr_fifoddr_clr_0, and set properties
  set block_name wr_fifoddr_clr
  set block_cell_name wr_fifoddr_clr_0
  if { [catch {set wr_fifoddr_clr_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $wr_fifoddr_clr_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]

  # Create instance: xlconstant_1, and set properties
  set xlconstant_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_1 ]

  # Create instance: xlconstant_2, and set properties
  set xlconstant_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_2 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $xlconstant_2

  # Create interface connections
  connect_bd_intf_net -intf_net axi_smc_M00_AXI [get_bd_intf_pins axi_smc/M00_AXI] [get_bd_intf_pins mig_7series_0/S_AXI]
  connect_bd_intf_net -intf_net fifo2mig_axi_0_m_axi [get_bd_intf_pins axi_smc/S00_AXI] [get_bd_intf_pins fifo2mig_axi_0/m_axi]
  connect_bd_intf_net -intf_net fifo2mig_axi_1_m_axi [get_bd_intf_pins axi_smc/S01_AXI] [get_bd_intf_pins fifo2mig_axi_1/m_axi]
  connect_bd_intf_net -intf_net mig_7series_0_DDR3 [get_bd_intf_ports ddr3] [get_bd_intf_pins mig_7series_0/DDR3]

  # Create port connections
  connect_bd_net -net DVP_Capture_0_DataPixel [get_bd_pins DVP_Capture_0/DataPixel] [get_bd_pins icb_sobel_0/rgb_in] [get_bd_pins wr_ddr_fifo_0/din]
  connect_bd_net -net DVP_Capture_0_DataValid [get_bd_pins DVP_Capture_0/DataValid] [get_bd_pins icb_sobel_0/wr_en] [get_bd_pins wr_ddr_fifo_0/wr_en]
  connect_bd_net -net MUX2IN1_0_O [get_bd_ports eth_tx_en] [get_bd_pins MUX2IN1_0/O]
  connect_bd_net -net MUX2IN1_1_O [get_bd_ports eth_rst_n] [get_bd_pins MUX2IN1_1/O]
  connect_bd_net -net MUX2IN1_4bit_0_O [get_bd_ports eth_tx_data] [get_bd_pins MUX2IN1_4bit_0/O]
  connect_bd_net -net Net [get_bd_ports camera_sda] [get_bd_pins ov5640_rgb565_top_0/cam_sda]
  connect_bd_net -net Net1 [get_bd_ports qspi0_dq] [get_bd_pins Trash_Risc_0/qspi0_dq]
  connect_bd_net -net Net2 [get_bd_ports gpioA] [get_bd_pins Trash_Risc_0/gpioA]
  connect_bd_net -net Net3 [get_bd_ports gpioB] [get_bd_pins Trash_Risc_0/gpioB]
  connect_bd_net -net Net4 [get_bd_ports mcu_TDO] [get_bd_pins Trash_Risc_0/mcu_TDO]
  connect_bd_net -net Net5 [get_bd_ports mcu_TCK] [get_bd_pins Trash_Risc_0/mcu_TCK]
  connect_bd_net -net Net6 [get_bd_ports mcu_TDI] [get_bd_pins Trash_Risc_0/mcu_TDI]
  connect_bd_net -net Net7 [get_bd_ports mcu_TMS] [get_bd_pins Trash_Risc_0/mcu_TMS]
  connect_bd_net -net Net8 [get_bd_ports pmu_paden] [get_bd_pins Trash_Risc_0/pmu_paden]
  connect_bd_net -net Net9 [get_bd_ports pmu_padrst] [get_bd_pins Trash_Risc_0/pmu_padrst]
  connect_bd_net -net Net10 [get_bd_ports mcu_wakeup] [get_bd_pins Trash_Risc_0/mcu_wakeup]
  connect_bd_net -net Net11 [get_bd_pins icb_sobel_0/macaddr] [get_bd_pins udp_0/macaddr] [get_bd_pins udp_1/macaddr]
  connect_bd_net -net Sel_1 [get_bd_ports Sel] [get_bd_pins MUX2IN1_0/Sel] [get_bd_pins MUX2IN1_1/Sel] [get_bd_pins MUX2IN1_4bit_0/Sel]
  connect_bd_net -net Trash_Risc_0_PE_icb_cmd_addr [get_bd_pins Trash_Risc_0/PE_icb_cmd_addr] [get_bd_pins icb_sobel_0/i_icb_cmd_addr]
  connect_bd_net -net Trash_Risc_0_PE_icb_cmd_read [get_bd_pins Trash_Risc_0/PE_icb_cmd_read] [get_bd_pins icb_sobel_0/i_icb_cmd_read]
  connect_bd_net -net Trash_Risc_0_PE_icb_cmd_size [get_bd_pins Trash_Risc_0/PE_icb_cmd_size] [get_bd_pins icb_sobel_0/i_icb_cmd_size]
  connect_bd_net -net Trash_Risc_0_PE_icb_cmd_valid [get_bd_pins Trash_Risc_0/PE_icb_cmd_valid] [get_bd_pins icb_sobel_0/i_icb_cmd_valid]
  connect_bd_net -net Trash_Risc_0_PE_icb_cmd_wdata [get_bd_pins Trash_Risc_0/PE_icb_cmd_wdata] [get_bd_pins icb_sobel_0/i_icb_cmd_wdata]
  connect_bd_net -net Trash_Risc_0_PE_icb_cmd_wmask [get_bd_pins Trash_Risc_0/PE_icb_cmd_wmask] [get_bd_pins icb_sobel_0/i_icb_cmd_wmask]
  connect_bd_net -net Trash_Risc_0_PE_icb_rsp_ready [get_bd_pins Trash_Risc_0/PE_icb_rsp_ready] [get_bd_pins icb_sobel_0/i_icb_rsp_ready]
  connect_bd_net -net Trash_Risc_0_hfclk [get_bd_pins Trash_Risc_0/hfclk] [get_bd_pins icb_sobel_0/clk]
  connect_bd_net -net Trash_Risc_0_led [get_bd_ports led] [get_bd_pins Trash_Risc_0/led]
  connect_bd_net -net Trash_Risc_0_qspi0_cs [get_bd_ports qspi0_cs] [get_bd_pins Trash_Risc_0/qspi0_cs]
  connect_bd_net -net Trash_Risc_0_qspi0_sck [get_bd_ports qspi0_sck] [get_bd_pins Trash_Risc_0/qspi0_sck]
  connect_bd_net -net camera_data_1 [get_bd_ports camera_data] [get_bd_pins DVP_Capture_0/Data]
  connect_bd_net -net camera_href_1 [get_bd_ports camera_href] [get_bd_pins DVP_Capture_0/Href]
  connect_bd_net -net camera_pclk_1 [get_bd_ports camera_pclk] [get_bd_pins util_ds_buf_0/BUFG_I]
  connect_bd_net -net camera_vsync_1 [get_bd_ports camera_vsync] [get_bd_pins DVP_Capture_0/Vsync]
  connect_bd_net -net clk_1 [get_bd_ports clk] [get_bd_pins clk_wiz_0/clk_in1]
  connect_bd_net -net clk_wiz_0_clk_100m [get_bd_pins clk_wiz_0/clk_100m] [get_bd_pins ov5640_rgb565_top_0/sys_clk]
  connect_bd_net -net clk_wiz_0_clk_16m [get_bd_pins Trash_Risc_0/clk_16M] [get_bd_pins clk_wiz_0/clk_16m]
  connect_bd_net -net clk_wiz_0_clk_200m [get_bd_pins clk_wiz_0/clk_200m] [get_bd_pins mig_7series_0/sys_clk_i]
  connect_bd_net -net clk_wiz_0_clk_24m [get_bd_pins clk_wiz_0/clk_24m] [get_bd_pins ov5640_rgb565_top_0/clk_24M]
  connect_bd_net -net clk_wiz_0_clk_25m [get_bd_ports eth_ref_clk] [get_bd_pins clk_wiz_0/clk_25m]
  connect_bd_net -net clk_wiz_0_clk_50m [get_bd_pins clk_wiz_0/clk_50m] [get_bd_pins fifo_generator_0/rd_clk] [get_bd_pins icb_sobel_0/async_clk] [get_bd_pins wr_ddr_fifo_1/wr_clk]
  connect_bd_net -net clk_wiz_0_clk_8388m [get_bd_pins clk_wiz_0/clk_8388m] [get_bd_pins clkdivider_0/clk]
  connect_bd_net -net clk_wiz_0_locked [get_bd_pins Trash_Risc_0/mmcm_locked] [get_bd_pins clk_wiz_0/locked] [get_bd_pins mig_7series_0/sys_rst] [get_bd_pins ov5640_rgb565_top_0/locked] [get_bd_pins util_vector_logic_1/Op1]
  connect_bd_net -net clkdivider_0_clk_out [get_bd_pins Trash_Risc_0/CLK32768KHZ] [get_bd_pins clkdivider_0/clk_out]
  connect_bd_net -net eth_rx_clk_1 [get_bd_ports eth_rx_clk] [get_bd_pins udp_0/eth_rx_clk] [get_bd_pins udp_1/eth_rx_clk]
  connect_bd_net -net eth_tx_clk_1 [get_bd_ports eth_tx_clk] [get_bd_pins img_data_pkt_0/clk] [get_bd_pins img_data_pkt_1/clk] [get_bd_pins rd_ddr_fifo_0/rd_clk] [get_bd_pins rd_ddr_fifo_2/rd_clk] [get_bd_pins udp_0/eth_tx_clk] [get_bd_pins udp_1/eth_tx_clk]
  connect_bd_net -net fifo2mig_axi_0_rd_fifo_wrdata [get_bd_pins fifo2mig_axi_0/rd_fifo_wrdata] [get_bd_pins rd_ddr_fifo_0/din]
  connect_bd_net -net fifo2mig_axi_0_rd_fifo_wrreq [get_bd_pins fifo2mig_axi_0/rd_fifo_wrreq] [get_bd_pins rd_ddr_fifo_0/wr_en]
  connect_bd_net -net fifo2mig_axi_0_wr_fifo_rdreq [get_bd_pins fifo2mig_axi_0/wr_fifo_rdreq] [get_bd_pins wr_ddr_fifo_0/rd_en]
  connect_bd_net -net fifo2mig_axi_1_rd_fifo_wrdata [get_bd_pins fifo2mig_axi_1/rd_fifo_wrdata] [get_bd_pins rd_ddr_fifo_2/din]
  connect_bd_net -net fifo2mig_axi_1_rd_fifo_wrreq [get_bd_pins fifo2mig_axi_1/rd_fifo_wrreq] [get_bd_pins rd_ddr_fifo_2/wr_en]
  connect_bd_net -net fifo2mig_axi_1_wr_fifo_rdreq [get_bd_pins fifo2mig_axi_1/wr_fifo_rdreq] [get_bd_pins wr_ddr_fifo_1/rd_en]
  connect_bd_net -net fifo_generator_0_dout [get_bd_pins fifo_generator_0/dout] [get_bd_pins icb_sobel_0/data_gray_in]
  connect_bd_net -net fifo_generator_0_empty [get_bd_pins fifo_generator_0/empty] [get_bd_pins icb_sobel_0/rdempty]
  connect_bd_net -net icb_sobel_0_data_gray_out [get_bd_pins fifo_generator_0/din] [get_bd_pins icb_sobel_0/data_gray_out]
  connect_bd_net -net icb_sobel_0_data_rgb_out [get_bd_pins icb_sobel_0/data_rgb_out] [get_bd_pins wr_ddr_fifo_1/din]
  connect_bd_net -net icb_sobel_0_i_icb_cmd_ready [get_bd_pins Trash_Risc_0/PE_icb_cmd_ready] [get_bd_pins icb_sobel_0/i_icb_cmd_ready]
  connect_bd_net -net icb_sobel_0_i_icb_rsp_err [get_bd_pins Trash_Risc_0/PE_icb_rsp_err] [get_bd_pins icb_sobel_0/i_icb_rsp_err]
  connect_bd_net -net icb_sobel_0_i_icb_rsp_rdata [get_bd_pins Trash_Risc_0/PE_icb_rsp_rdata] [get_bd_pins icb_sobel_0/i_icb_rsp_rdata]
  connect_bd_net -net icb_sobel_0_i_icb_rsp_valid [get_bd_pins Trash_Risc_0/PE_icb_rsp_valid] [get_bd_pins icb_sobel_0/i_icb_rsp_valid]
  connect_bd_net -net icb_sobel_0_rd_gray_en [get_bd_pins fifo_generator_0/rd_en] [get_bd_pins icb_sobel_0/rd_gray_en]
  connect_bd_net -net icb_sobel_0_wr_gray_en [get_bd_pins fifo_generator_0/wr_en] [get_bd_pins icb_sobel_0/wr_gray_en]
  connect_bd_net -net icb_sobel_0_wr_rgb_en [get_bd_pins icb_sobel_0/wr_rgb_en] [get_bd_pins wr_ddr_fifo_1/wr_en]
  connect_bd_net -net img_data_pkt_0_img_req [get_bd_pins img_data_pkt_0/img_req] [get_bd_pins rd_ddr_fifo_0/rd_en]
  connect_bd_net -net img_data_pkt_0_udp_tx_byte_num [get_bd_pins img_data_pkt_0/udp_tx_byte_num] [get_bd_pins udp_0/tx_byte_num]
  connect_bd_net -net img_data_pkt_0_udp_tx_data [get_bd_pins img_data_pkt_0/udp_tx_data] [get_bd_pins udp_0/tx_data]
  connect_bd_net -net img_data_pkt_0_udp_tx_start_en [get_bd_pins img_data_pkt_0/udp_tx_start_en] [get_bd_pins udp_0/tx_start_en]
  connect_bd_net -net img_data_pkt_1_img_req [get_bd_pins img_data_pkt_1/img_req] [get_bd_pins rd_ddr_fifo_2/rd_en]
  connect_bd_net -net img_data_pkt_1_udp_tx_byte_num [get_bd_pins img_data_pkt_1/udp_tx_byte_num] [get_bd_pins udp_1/tx_byte_num]
  connect_bd_net -net img_data_pkt_1_udp_tx_data [get_bd_pins img_data_pkt_1/udp_tx_data] [get_bd_pins udp_1/tx_data]
  connect_bd_net -net img_data_pkt_1_udp_tx_start_en [get_bd_pins img_data_pkt_1/udp_tx_start_en] [get_bd_pins udp_1/tx_start_en]
  connect_bd_net -net mig_7series_0_init_calib_complete [get_bd_pins fifo2mig_axi_0/init_calib_complete] [get_bd_pins fifo2mig_axi_1/init_calib_complete] [get_bd_pins mig_7series_0/init_calib_complete]
  connect_bd_net -net mig_7series_0_mmcm_locked [get_bd_pins fifo2mig_axi_0/mmcm_locked] [get_bd_pins fifo2mig_axi_1/mmcm_locked] [get_bd_pins mig_7series_0/mmcm_locked] [get_bd_pins rst_mig_7series_0_100M/dcm_locked]
  connect_bd_net -net mig_7series_0_ui_clk [get_bd_pins axi_smc/aclk] [get_bd_pins fifo2mig_axi_0/ui_clk] [get_bd_pins fifo2mig_axi_1/ui_clk] [get_bd_pins mig_7series_0/ui_clk] [get_bd_pins rd_ddr_fifo_0/wr_clk] [get_bd_pins rd_ddr_fifo_2/wr_clk] [get_bd_pins rd_fifoddr_clr_0/ui_clk] [get_bd_pins rst_mig_7series_0_100M/slowest_sync_clk] [get_bd_pins wr_ddr_fifo_0/rd_clk] [get_bd_pins wr_ddr_fifo_1/rd_clk] [get_bd_pins wr_fifoddr_clr_0/ui_clk]
  connect_bd_net -net mig_7series_0_ui_clk_sync_rst [get_bd_pins fifo2mig_axi_0/ui_clk_sync_rst] [get_bd_pins fifo2mig_axi_1/ui_clk_sync_rst] [get_bd_pins fifo_generator_0/rst] [get_bd_pins mig_7series_0/ui_clk_sync_rst] [get_bd_pins rd_ddr_fifo_0/rst] [get_bd_pins rd_ddr_fifo_2/rst] [get_bd_pins rd_fifoddr_clr_0/rdfifo_clr] [get_bd_pins rst_mig_7series_0_100M/ext_reset_in] [get_bd_pins util_vector_logic_0/Op1] [get_bd_pins util_vector_logic_2/Op1]
  connect_bd_net -net ov5640_rgb565_top_0_cam_pwdn [get_bd_ports camera_pwdn] [get_bd_pins ov5640_rgb565_top_0/cam_pwdn]
  connect_bd_net -net ov5640_rgb565_top_0_cam_rst_n [get_bd_ports camera_rst_n] [get_bd_pins ov5640_rgb565_top_0/cam_rst_n]
  connect_bd_net -net ov5640_rgb565_top_0_cam_scl [get_bd_ports camera_scl] [get_bd_pins ov5640_rgb565_top_0/cam_scl]
  connect_bd_net -net ov5640_rgb565_top_0_cam_xclk [get_bd_ports camera_xclk] [get_bd_pins ov5640_rgb565_top_0/cam_xclk]
  connect_bd_net -net ov5640_rgb565_top_0_sys_init_done [get_bd_pins ov5640_rgb565_top_0/sys_init_done] [get_bd_pins util_vector_logic_3/Op1] [get_bd_pins util_vector_logic_6/Op2]
  connect_bd_net -net rd_ddr_fifo_0_dout [get_bd_pins img_data_pkt_0/img_data] [get_bd_pins rd_ddr_fifo_0/dout]
  connect_bd_net -net rd_ddr_fifo_0_full [get_bd_pins fifo2mig_axi_0/rd_fifo_alfull] [get_bd_pins rd_ddr_fifo_0/full]
  connect_bd_net -net rd_ddr_fifo_0_rd_rst_busy [get_bd_pins rd_ddr_fifo_0/rd_rst_busy] [get_bd_pins util_vector_logic_4/Op2]
  connect_bd_net -net rd_ddr_fifo_0_wr_data_count [get_bd_pins fifo2mig_axi_0/rd_fifo_wr_cnt] [get_bd_pins rd_ddr_fifo_0/wr_data_count]
  connect_bd_net -net rd_ddr_fifo_0_wr_rst_busy [get_bd_pins rd_ddr_fifo_0/wr_rst_busy] [get_bd_pins util_vector_logic_4/Op1]
  connect_bd_net -net rd_ddr_fifo_2_dout [get_bd_pins img_data_pkt_1/img_data] [get_bd_pins rd_ddr_fifo_2/dout]
  connect_bd_net -net rd_ddr_fifo_2_full [get_bd_pins fifo2mig_axi_1/rd_fifo_alfull] [get_bd_pins rd_ddr_fifo_2/full]
  connect_bd_net -net rd_ddr_fifo_2_rd_rst_busy [get_bd_pins rd_ddr_fifo_2/rd_rst_busy] [get_bd_pins util_vector_logic_7/Op2]
  connect_bd_net -net rd_ddr_fifo_2_wr_data_count [get_bd_pins fifo2mig_axi_1/rd_fifo_wr_cnt] [get_bd_pins rd_ddr_fifo_2/wr_data_count]
  connect_bd_net -net rd_ddr_fifo_2_wr_rst_busy [get_bd_pins rd_ddr_fifo_2/wr_rst_busy] [get_bd_pins util_vector_logic_7/Op1]
  connect_bd_net -net rd_fifoddr_clr_0_rd_addr_clr [get_bd_pins fifo2mig_axi_0/rd_addr_clr] [get_bd_pins fifo2mig_axi_1/rd_addr_clr] [get_bd_pins rd_fifoddr_clr_0/rd_addr_clr]
  connect_bd_net -net rst_mig_7series_0_100M_peripheral_aresetn [get_bd_pins axi_smc/aresetn] [get_bd_pins rst_mig_7series_0_100M/peripheral_aresetn]
  connect_bd_net -net rst_n_1 [get_bd_ports rst_n] [get_bd_pins Trash_Risc_0/mcu_rst] [get_bd_pins clk_wiz_0/resetn] [get_bd_pins clkdivider_0/reset] [get_bd_pins icb_sobel_0/rst_n] [get_bd_pins mig_7series_0/aresetn] [get_bd_pins ov5640_rgb565_top_0/sys_rst_n] [get_bd_pins udp_0/rst_n] [get_bd_pins udp_1/rst_n] [get_bd_pins util_vector_logic_6/Op1]
  connect_bd_net -net udp_0_eth_rst_n [get_bd_pins MUX2IN1_1/A] [get_bd_pins udp_0/eth_rst_n]
  connect_bd_net -net udp_0_eth_tx_data [get_bd_pins MUX2IN1_4bit_0/A] [get_bd_pins udp_0/eth_tx_data]
  connect_bd_net -net udp_0_eth_tx_en [get_bd_pins MUX2IN1_0/A] [get_bd_pins udp_0/eth_tx_en]
  connect_bd_net -net udp_0_tx_done [get_bd_pins img_data_pkt_0/udp_tx_done] [get_bd_pins udp_0/tx_done]
  connect_bd_net -net udp_0_tx_req [get_bd_pins img_data_pkt_0/udp_tx_req] [get_bd_pins udp_0/tx_req]
  connect_bd_net -net udp_1_eth_rst_n [get_bd_pins MUX2IN1_1/B] [get_bd_pins udp_1/eth_rst_n]
  connect_bd_net -net udp_1_eth_tx_data [get_bd_pins MUX2IN1_4bit_0/B] [get_bd_pins udp_1/eth_tx_data]
  connect_bd_net -net udp_1_eth_tx_en [get_bd_pins MUX2IN1_0/B] [get_bd_pins udp_1/eth_tx_en]
  connect_bd_net -net udp_1_tx_done [get_bd_pins img_data_pkt_1/udp_tx_done] [get_bd_pins udp_1/tx_done]
  connect_bd_net -net udp_1_tx_req [get_bd_pins img_data_pkt_1/udp_tx_req] [get_bd_pins udp_1/tx_req]
  connect_bd_net -net util_ds_buf_0_BUFG_O [get_bd_pins DVP_Capture_0/PCLK] [get_bd_pins fifo_generator_0/wr_clk] [get_bd_pins icb_sobel_0/fifo_clk] [get_bd_pins util_ds_buf_0/BUFG_O] [get_bd_pins wr_ddr_fifo_0/wr_clk]
  connect_bd_net -net util_vector_logic_0_Res [get_bd_pins DVP_Capture_0/Rst_p] [get_bd_pins util_vector_logic_0/Res]
  connect_bd_net -net util_vector_logic_1_Res [get_bd_pins util_vector_logic_0/Op2] [get_bd_pins util_vector_logic_1/Res]
  connect_bd_net -net util_vector_logic_2_Res [get_bd_pins util_vector_logic_2/Res] [get_bd_pins wr_ddr_fifo_0/rst] [get_bd_pins wr_ddr_fifo_1/rst] [get_bd_pins wr_fifoddr_clr_0/wrfifo_clr]
  connect_bd_net -net util_vector_logic_3_Res [get_bd_pins util_vector_logic_2/Op2] [get_bd_pins util_vector_logic_3/Res]
  connect_bd_net -net util_vector_logic_4_Res [get_bd_pins fifo2mig_axi_0/rd_fifo_rst_busy] [get_bd_pins util_vector_logic_4/Res]
  connect_bd_net -net util_vector_logic_5_Res [get_bd_pins fifo2mig_axi_0/wr_fifo_rst_busy] [get_bd_pins util_vector_logic_5/Res]
  connect_bd_net -net util_vector_logic_6_Res [get_bd_pins img_data_pkt_0/rst_n] [get_bd_pins img_data_pkt_1/rst_n] [get_bd_pins util_vector_logic_6/Res]
  connect_bd_net -net util_vector_logic_7_Res [get_bd_pins fifo2mig_axi_1/rd_fifo_rst_busy] [get_bd_pins util_vector_logic_7/Res]
  connect_bd_net -net util_vector_logic_8_Res [get_bd_pins fifo2mig_axi_1/wr_fifo_rst_busy] [get_bd_pins util_vector_logic_8/Res]
  connect_bd_net -net wr_ddr_fifo_0_dout [get_bd_pins fifo2mig_axi_0/wr_fifo_rddata] [get_bd_pins wr_ddr_fifo_0/dout]
  connect_bd_net -net wr_ddr_fifo_0_empty [get_bd_pins fifo2mig_axi_0/wr_fifo_empty] [get_bd_pins wr_ddr_fifo_0/empty]
  connect_bd_net -net wr_ddr_fifo_0_rd_data_count [get_bd_pins fifo2mig_axi_0/wr_fifo_rd_cnt] [get_bd_pins wr_ddr_fifo_0/rd_data_count]
  connect_bd_net -net wr_ddr_fifo_0_rd_rst_busy [get_bd_pins util_vector_logic_5/Op2] [get_bd_pins wr_ddr_fifo_0/rd_rst_busy]
  connect_bd_net -net wr_ddr_fifo_0_wr_rst_busy [get_bd_pins util_vector_logic_5/Op1] [get_bd_pins wr_ddr_fifo_0/wr_rst_busy]
  connect_bd_net -net wr_ddr_fifo_1_dout [get_bd_pins fifo2mig_axi_1/wr_fifo_rddata] [get_bd_pins wr_ddr_fifo_1/dout]
  connect_bd_net -net wr_ddr_fifo_1_empty [get_bd_pins fifo2mig_axi_1/wr_fifo_empty] [get_bd_pins wr_ddr_fifo_1/empty]
  connect_bd_net -net wr_ddr_fifo_1_rd_data_count [get_bd_pins fifo2mig_axi_1/wr_fifo_rd_cnt] [get_bd_pins wr_ddr_fifo_1/rd_data_count]
  connect_bd_net -net wr_ddr_fifo_1_rd_rst_busy [get_bd_pins util_vector_logic_8/Op2] [get_bd_pins wr_ddr_fifo_1/rd_rst_busy]
  connect_bd_net -net wr_ddr_fifo_1_wr_rst_busy [get_bd_pins util_vector_logic_8/Op1] [get_bd_pins wr_ddr_fifo_1/wr_rst_busy]
  connect_bd_net -net wr_fifoddr_clr_0_wr_addr_clr [get_bd_pins fifo2mig_axi_0/wr_addr_clr] [get_bd_pins fifo2mig_axi_1/wr_addr_clr] [get_bd_pins wr_fifoddr_clr_0/wr_addr_clr]
  connect_bd_net -net xlconstant_0_dout [get_bd_ports eth_mdc] [get_bd_pins xlconstant_0/dout]
  connect_bd_net -net xlconstant_1_dout [get_bd_ports eth_col] [get_bd_pins xlconstant_1/dout]
  connect_bd_net -net xlconstant_2_dout [get_bd_ports eth_crs] [get_bd_pins xlconstant_2/dout]

  # Create address segments
  create_bd_addr_seg -range 0x08000000 -offset 0x00000000 [get_bd_addr_spaces fifo2mig_axi_0/m_axi] [get_bd_addr_segs mig_7series_0/memmap/memaddr] SEG_mig_7series_0_memaddr
  create_bd_addr_seg -range 0x08000000 -offset 0x00000000 [get_bd_addr_spaces fifo2mig_axi_1/m_axi] [get_bd_addr_segs mig_7series_0/memmap/memaddr] SEG_mig_7series_0_memaddr


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


