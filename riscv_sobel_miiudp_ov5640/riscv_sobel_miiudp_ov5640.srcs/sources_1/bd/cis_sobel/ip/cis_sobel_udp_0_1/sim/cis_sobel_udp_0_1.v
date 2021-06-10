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


// IP VLNV: xilinx.com:module_ref:udp:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module cis_sobel_udp_0_1 (
  eth_rx_clk,
  rst_n,
  eth_rxdv,
  eth_rx_data,
  eth_tx_clk,
  tx_start_en,
  tx_data,
  tx_byte_num,
  tx_done,
  tx_req,
  rec_pkt_done,
  rec_en,
  rec_data,
  rec_byte_num,
  eth_tx_en,
  eth_tx_data,
  eth_rst_n,
  macaddr
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME eth_rx_clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN cis_sobel_eth_rx_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 eth_rx_clk CLK" *)
input wire eth_rx_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *)
input wire rst_n;
input wire eth_rxdv;
input wire [3 : 0] eth_rx_data;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME eth_tx_clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN cis_sobel_eth_tx_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 eth_tx_clk CLK" *)
input wire eth_tx_clk;
input wire tx_start_en;
input wire [31 : 0] tx_data;
input wire [15 : 0] tx_byte_num;
output wire tx_done;
output wire tx_req;
output wire rec_pkt_done;
output wire rec_en;
output wire [31 : 0] rec_data;
output wire [15 : 0] rec_byte_num;
output wire eth_tx_en;
output wire [3 : 0] eth_tx_data;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME eth_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 eth_rst_n RST" *)
output wire eth_rst_n;
input wire [47 : 0] macaddr;

  udp #(
    .BOARD_MAC(48'H001122334455),
    .BOARD_IP(32'Hc0a80002),
    .DES_MAC(48'H70B5E849A3D2),
    .DES_IP(32'Hc0a80003)
  ) inst (
    .eth_rx_clk(eth_rx_clk),
    .rst_n(rst_n),
    .eth_rxdv(eth_rxdv),
    .eth_rx_data(eth_rx_data),
    .eth_tx_clk(eth_tx_clk),
    .tx_start_en(tx_start_en),
    .tx_data(tx_data),
    .tx_byte_num(tx_byte_num),
    .tx_done(tx_done),
    .tx_req(tx_req),
    .rec_pkt_done(rec_pkt_done),
    .rec_en(rec_en),
    .rec_data(rec_data),
    .rec_byte_num(rec_byte_num),
    .eth_tx_en(eth_tx_en),
    .eth_tx_data(eth_tx_data),
    .eth_rst_n(eth_rst_n),
    .macaddr(macaddr)
  );
endmodule
