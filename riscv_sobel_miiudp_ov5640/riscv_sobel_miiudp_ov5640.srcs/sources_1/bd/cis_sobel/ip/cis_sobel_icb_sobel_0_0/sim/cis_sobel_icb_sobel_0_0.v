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


// IP VLNV: xilinx.com:module_ref:icb_sobel:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module cis_sobel_icb_sobel_0_0 (
  clk,
  rst_n,
  i_icb_cmd_valid,
  i_icb_cmd_ready,
  i_icb_cmd_read,
  i_icb_cmd_addr,
  i_icb_cmd_wdata,
  i_icb_cmd_wmask,
  i_icb_cmd_size,
  i_icb_rsp_valid,
  i_icb_rsp_ready,
  i_icb_rsp_err,
  i_icb_rsp_rdata,
  fifo_clk,
  wr_en,
  rgb_in,
  macaddr,
  async_clk,
  data_gray_out,
  wr_gray_en,
  data_gray_in,
  rd_gray_en,
  rdempty,
  data_rgb_out,
  wr_rgb_en
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *)
input wire rst_n;
input wire i_icb_cmd_valid;
output wire i_icb_cmd_ready;
input wire [0 : 0] i_icb_cmd_read;
input wire [31 : 0] i_icb_cmd_addr;
input wire [31 : 0] i_icb_cmd_wdata;
input wire [3 : 0] i_icb_cmd_wmask;
input wire [1 : 0] i_icb_cmd_size;
output wire i_icb_rsp_valid;
input wire i_icb_rsp_ready;
output wire i_icb_rsp_err;
output wire [31 : 0] i_icb_rsp_rdata;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fifo_clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN cis_sobel_camera_pclk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 fifo_clk CLK" *)
input wire fifo_clk;
input wire wr_en;
input wire [15 : 0] rgb_in;
output wire [47 : 0] macaddr;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME async_clk, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 async_clk CLK" *)
input wire async_clk;
output wire [7 : 0] data_gray_out;
output wire wr_gray_en;
input wire [7 : 0] data_gray_in;
output wire rd_gray_en;
input wire rdempty;
output wire [15 : 0] data_rgb_out;
output wire wr_rgb_en;

  icb_sobel #(
    .AW(32),
    .DW(32)
  ) inst (
    .clk(clk),
    .rst_n(rst_n),
    .i_icb_cmd_valid(i_icb_cmd_valid),
    .i_icb_cmd_ready(i_icb_cmd_ready),
    .i_icb_cmd_read(i_icb_cmd_read),
    .i_icb_cmd_addr(i_icb_cmd_addr),
    .i_icb_cmd_wdata(i_icb_cmd_wdata),
    .i_icb_cmd_wmask(i_icb_cmd_wmask),
    .i_icb_cmd_size(i_icb_cmd_size),
    .i_icb_rsp_valid(i_icb_rsp_valid),
    .i_icb_rsp_ready(i_icb_rsp_ready),
    .i_icb_rsp_err(i_icb_rsp_err),
    .i_icb_rsp_rdata(i_icb_rsp_rdata),
    .fifo_clk(fifo_clk),
    .wr_en(wr_en),
    .rgb_in(rgb_in),
    .macaddr(macaddr),
    .async_clk(async_clk),
    .data_gray_out(data_gray_out),
    .wr_gray_en(wr_gray_en),
    .data_gray_in(data_gray_in),
    .rd_gray_en(rd_gray_en),
    .rdempty(rdempty),
    .data_rgb_out(data_rgb_out),
    .wr_rgb_en(wr_rgb_en)
  );
endmodule
