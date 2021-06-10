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


// IP VLNV: xilinx.com:module_ref:rd_ddr_fifo:1.0
// IP Revision: 1

(* X_CORE_INFO = "rd_ddr_fifo,Vivado 2019.1" *)
(* CHECK_LICENSE_TYPE = "cis_sobel_rd_ddr_fifo_0_0,rd_ddr_fifo,{}" *)
(* CORE_GENERATION_INFO = "cis_sobel_rd_ddr_fifo_0_0,rd_ddr_fifo,{x_ipProduct=Vivado 2019.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=rd_ddr_fifo,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module cis_sobel_rd_ddr_fifo_0_0 (
  rst,
  wr_clk,
  rd_clk,
  din,
  wr_en,
  rd_en,
  dout,
  full,
  empty,
  rd_data_count,
  wr_data_count,
  wr_rst_busy,
  rd_rst_busy
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *)
input wire rst;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME wr_clk, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN cis_sobel_mig_7series_0_0_ui_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 wr_clk CLK" *)
input wire wr_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rd_clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN cis_sobel_eth_tx_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 rd_clk CLK" *)
input wire rd_clk;
input wire [127 : 0] din;
input wire wr_en;
input wire rd_en;
output wire [15 : 0] dout;
output wire full;
output wire empty;
output wire [8 : 0] rd_data_count;
output wire [5 : 0] wr_data_count;
output wire wr_rst_busy;
output wire rd_rst_busy;

  rd_ddr_fifo inst (
    .rst(rst),
    .wr_clk(wr_clk),
    .rd_clk(rd_clk),
    .din(din),
    .wr_en(wr_en),
    .rd_en(rd_en),
    .dout(dout),
    .full(full),
    .empty(empty),
    .rd_data_count(rd_data_count),
    .wr_data_count(wr_data_count),
    .wr_rst_busy(wr_rst_busy),
    .rd_rst_busy(rd_rst_busy)
  );
endmodule
