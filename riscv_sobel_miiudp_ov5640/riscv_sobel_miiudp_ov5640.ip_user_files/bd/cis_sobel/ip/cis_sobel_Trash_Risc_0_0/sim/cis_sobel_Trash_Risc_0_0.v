// (c) Copyright 1995-2021 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:user:Trash_Risc:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module cis_sobel_Trash_Risc_0_0 (
  led,
  clk_16M,
  CLK32768KHZ,
  mcu_rst,
  qspi0_cs,
  qspi0_sck,
  qspi0_dq,
  gpioA,
  gpioB,
  mcu_TDO,
  mcu_TCK,
  mcu_TDI,
  mcu_TMS,
  pmu_paden,
  pmu_padrst,
  mcu_wakeup,
  m_axi_arvalid,
  m_axi_arready,
  m_axi_araddr,
  m_axi_arcache,
  m_axi_arprot,
  m_axi_arlock,
  m_axi_arburst,
  m_axi_arlen,
  m_axi_arsize,
  m_axi_awvalid,
  m_axi_awready,
  m_axi_awaddr,
  m_axi_awcache,
  m_axi_awprot,
  m_axi_awlock,
  m_axi_awburst,
  m_axi_awlen,
  m_axi_awsize,
  m_axi_rvalid,
  m_axi_rready,
  m_axi_rdata,
  m_axi_rresp,
  m_axi_rlast,
  m_axi_wvalid,
  m_axi_wready,
  m_axi_wdata,
  m_axi_wstrb,
  m_axi_wlast,
  m_axi_bvalid,
  m_axi_bready,
  m_axi_bresp,
  mmcm_locked,
  hfclk,
  PE_icb_cmd_valid,
  PE_icb_cmd_ready,
  PE_icb_cmd_read,
  PE_icb_cmd_addr,
  PE_icb_cmd_wdata,
  PE_icb_cmd_wmask,
  PE_icb_cmd_size,
  PE_icb_rsp_valid,
  PE_icb_rsp_ready,
  PE_icb_rsp_err,
  PE_icb_rsp_rdata
);

output wire led;
input wire clk_16M;
input wire CLK32768KHZ;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME mcu_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 mcu_rst RST" *)
input wire mcu_rst;
output wire qspi0_cs;
output wire qspi0_sck;
inout wire [3 : 0] qspi0_dq;
inout wire [31 : 0] gpioA;
inout wire [31 : 0] gpioB;
inout wire mcu_TDO;
inout wire mcu_TCK;
inout wire mcu_TDI;
inout wire mcu_TMS;
inout wire pmu_paden;
inout wire pmu_padrst;
inout wire mcu_wakeup;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARVALID" *)
output wire m_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARREADY" *)
input wire m_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARADDR" *)
output wire [31 : 0] m_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARCACHE" *)
output wire [3 : 0] m_axi_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARPROT" *)
output wire [2 : 0] m_axi_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARLOCK" *)
output wire [1 : 0] m_axi_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARBURST" *)
output wire [1 : 0] m_axi_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARLEN" *)
output wire [3 : 0] m_axi_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARSIZE" *)
output wire [2 : 0] m_axi_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWVALID" *)
output wire m_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWREADY" *)
input wire m_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWADDR" *)
output wire [31 : 0] m_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWCACHE" *)
output wire [3 : 0] m_axi_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWPROT" *)
output wire [2 : 0] m_axi_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWLOCK" *)
output wire [1 : 0] m_axi_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWBURST" *)
output wire [1 : 0] m_axi_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWLEN" *)
output wire [3 : 0] m_axi_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWSIZE" *)
output wire [2 : 0] m_axi_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RVALID" *)
input wire m_axi_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RREADY" *)
output wire m_axi_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RDATA" *)
input wire [31 : 0] m_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RRESP" *)
input wire [1 : 0] m_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RLAST" *)
input wire m_axi_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WVALID" *)
output wire m_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WREADY" *)
input wire m_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WDATA" *)
output wire [31 : 0] m_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WSTRB" *)
output wire [3 : 0] m_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WLAST" *)
output wire m_axi_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi BVALID" *)
input wire m_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi BREADY" *)
output wire m_axi_bready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi, DATA_WIDTH 32, PROTOCOL AXI3, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 16, PHASE 0.000, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BI\
TS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi BRESP" *)
input wire [1 : 0] m_axi_bresp;
input wire mmcm_locked;
output wire hfclk;
output wire PE_icb_cmd_valid;
input wire PE_icb_cmd_ready;
output wire [0 : 0] PE_icb_cmd_read;
output wire [31 : 0] PE_icb_cmd_addr;
output wire [31 : 0] PE_icb_cmd_wdata;
output wire [3 : 0] PE_icb_cmd_wmask;
output wire [1 : 0] PE_icb_cmd_size;
input wire PE_icb_rsp_valid;
output wire PE_icb_rsp_ready;
input wire PE_icb_rsp_err;
input wire [31 : 0] PE_icb_rsp_rdata;

  Trash_Risc inst (
    .led(led),
    .clk_16M(clk_16M),
    .CLK32768KHZ(CLK32768KHZ),
    .mcu_rst(mcu_rst),
    .qspi0_cs(qspi0_cs),
    .qspi0_sck(qspi0_sck),
    .qspi0_dq(qspi0_dq),
    .gpioA(gpioA),
    .gpioB(gpioB),
    .mcu_TDO(mcu_TDO),
    .mcu_TCK(mcu_TCK),
    .mcu_TDI(mcu_TDI),
    .mcu_TMS(mcu_TMS),
    .pmu_paden(pmu_paden),
    .pmu_padrst(pmu_padrst),
    .mcu_wakeup(mcu_wakeup),
    .m_axi_arvalid(m_axi_arvalid),
    .m_axi_arready(m_axi_arready),
    .m_axi_araddr(m_axi_araddr),
    .m_axi_arcache(m_axi_arcache),
    .m_axi_arprot(m_axi_arprot),
    .m_axi_arlock(m_axi_arlock),
    .m_axi_arburst(m_axi_arburst),
    .m_axi_arlen(m_axi_arlen),
    .m_axi_arsize(m_axi_arsize),
    .m_axi_awvalid(m_axi_awvalid),
    .m_axi_awready(m_axi_awready),
    .m_axi_awaddr(m_axi_awaddr),
    .m_axi_awcache(m_axi_awcache),
    .m_axi_awprot(m_axi_awprot),
    .m_axi_awlock(m_axi_awlock),
    .m_axi_awburst(m_axi_awburst),
    .m_axi_awlen(m_axi_awlen),
    .m_axi_awsize(m_axi_awsize),
    .m_axi_rvalid(m_axi_rvalid),
    .m_axi_rready(m_axi_rready),
    .m_axi_rdata(m_axi_rdata),
    .m_axi_rresp(m_axi_rresp),
    .m_axi_rlast(m_axi_rlast),
    .m_axi_wvalid(m_axi_wvalid),
    .m_axi_wready(m_axi_wready),
    .m_axi_wdata(m_axi_wdata),
    .m_axi_wstrb(m_axi_wstrb),
    .m_axi_wlast(m_axi_wlast),
    .m_axi_bvalid(m_axi_bvalid),
    .m_axi_bready(m_axi_bready),
    .m_axi_bresp(m_axi_bresp),
    .mmcm_locked(mmcm_locked),
    .hfclk(hfclk),
    .PE_icb_cmd_valid(PE_icb_cmd_valid),
    .PE_icb_cmd_ready(PE_icb_cmd_ready),
    .PE_icb_cmd_read(PE_icb_cmd_read),
    .PE_icb_cmd_addr(PE_icb_cmd_addr),
    .PE_icb_cmd_wdata(PE_icb_cmd_wdata),
    .PE_icb_cmd_wmask(PE_icb_cmd_wmask),
    .PE_icb_cmd_size(PE_icb_cmd_size),
    .PE_icb_rsp_valid(PE_icb_rsp_valid),
    .PE_icb_rsp_ready(PE_icb_rsp_ready),
    .PE_icb_rsp_err(PE_icb_rsp_err),
    .PE_icb_rsp_rdata(PE_icb_rsp_rdata)
  );
endmodule
