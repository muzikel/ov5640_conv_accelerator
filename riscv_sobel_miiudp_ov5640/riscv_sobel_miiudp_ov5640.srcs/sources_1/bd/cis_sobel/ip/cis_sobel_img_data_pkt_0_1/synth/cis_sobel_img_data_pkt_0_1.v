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


// IP VLNV: xilinx.com:module_ref:img_data_pkt:1.0
// IP Revision: 1

(* X_CORE_INFO = "img_data_pkt,Vivado 2019.1" *)
(* CHECK_LICENSE_TYPE = "cis_sobel_img_data_pkt_0_1,img_data_pkt,{}" *)
(* CORE_GENERATION_INFO = "cis_sobel_img_data_pkt_0_1,img_data_pkt,{x_ipProduct=Vivado 2019.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=img_data_pkt,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,CMOS_H_PIXEL=01010000000,CMOS_V_PIXEL=00111100000}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module cis_sobel_img_data_pkt_0_1 (
  clk,
  rst_n,
  img_data,
  udp_tx_req,
  udp_tx_done,
  img_req,
  udp_tx_start_en,
  udp_tx_data,
  udp_tx_byte_num
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN cis_sobel_eth_tx_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *)
input wire rst_n;
input wire [15 : 0] img_data;
input wire udp_tx_req;
input wire udp_tx_done;
output wire img_req;
output wire udp_tx_start_en;
output wire [31 : 0] udp_tx_data;
output wire [15 : 0] udp_tx_byte_num;

  img_data_pkt #(
    .CMOS_H_PIXEL(11'B01010000000),
    .CMOS_V_PIXEL(11'B00111100000)
  ) inst (
    .clk(clk),
    .rst_n(rst_n),
    .img_data(img_data),
    .udp_tx_req(udp_tx_req),
    .udp_tx_done(udp_tx_done),
    .img_req(img_req),
    .udp_tx_start_en(udp_tx_start_en),
    .udp_tx_data(udp_tx_data),
    .udp_tx_byte_num(udp_tx_byte_num)
  );
endmodule
