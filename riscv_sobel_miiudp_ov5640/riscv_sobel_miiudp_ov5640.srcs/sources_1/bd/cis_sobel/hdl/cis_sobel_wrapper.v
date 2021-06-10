//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Sat Jun  5 21:56:42 2021
//Host        : DESKTOP-IRRHKJS running 64-bit major release  (build 9200)
//Command     : generate_target cis_sobel_wrapper.bd
//Design      : cis_sobel_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module cis_sobel_wrapper
   (Sel,
    camera_data,
    camera_href,
    camera_pclk,
    camera_pwdn,
    camera_rst_n,
    camera_scl,
    camera_sda,
    camera_vsync,
    camera_xclk,
    clk,
    ddr3_addr,
    ddr3_ba,
    ddr3_cas_n,
    ddr3_ck_n,
    ddr3_ck_p,
    ddr3_cke,
    ddr3_cs_n,
    ddr3_dm,
    ddr3_dq,
    ddr3_dqs_n,
    ddr3_dqs_p,
    ddr3_odt,
    ddr3_ras_n,
    ddr3_reset_n,
    ddr3_we_n,
    eth_col,
    eth_crs,
    eth_mdc,
    eth_ref_clk,
    eth_rst_n,
    eth_rx_clk,
    eth_tx_clk,
    eth_tx_data,
    eth_tx_en,
    gpioA,
    gpioB,
    led,
    mcu_TCK,
    mcu_TDI,
    mcu_TDO,
    mcu_TMS,
    mcu_wakeup,
    pmu_paden,
    pmu_padrst,
    qspi0_cs,
    qspi0_dq,
    qspi0_sck,
    rst_n);
  input Sel;
  input [7:0]camera_data;
  input camera_href;
  input [0:0]camera_pclk;
  output camera_pwdn;
  output camera_rst_n;
  output camera_scl;
  inout camera_sda;
  input camera_vsync;
  output camera_xclk;
  input clk;
  output [13:0]ddr3_addr;
  output [2:0]ddr3_ba;
  output ddr3_cas_n;
  output [0:0]ddr3_ck_n;
  output [0:0]ddr3_ck_p;
  output [0:0]ddr3_cke;
  output [0:0]ddr3_cs_n;
  output [1:0]ddr3_dm;
  inout [15:0]ddr3_dq;
  inout [1:0]ddr3_dqs_n;
  inout [1:0]ddr3_dqs_p;
  output [0:0]ddr3_odt;
  output ddr3_ras_n;
  output ddr3_reset_n;
  output ddr3_we_n;
  output [0:0]eth_col;
  output [0:0]eth_crs;
  output [0:0]eth_mdc;
  output eth_ref_clk;
  output eth_rst_n;
  input eth_rx_clk;
  input eth_tx_clk;
  output [3:0]eth_tx_data;
  output eth_tx_en;
  inout [31:0]gpioA;
  inout [31:0]gpioB;
  output led;
  inout mcu_TCK;
  inout mcu_TDI;
  inout mcu_TDO;
  inout mcu_TMS;
  inout mcu_wakeup;
  inout pmu_paden;
  inout pmu_padrst;
  output qspi0_cs;
  inout [3:0]qspi0_dq;
  output qspi0_sck;
  input rst_n;

  wire Sel;
  wire [7:0]camera_data;
  wire camera_href;
  wire [0:0]camera_pclk;
  wire camera_pwdn;
  wire camera_rst_n;
  wire camera_scl;
  wire camera_sda;
  wire camera_vsync;
  wire camera_xclk;
  wire clk;
  wire [13:0]ddr3_addr;
  wire [2:0]ddr3_ba;
  wire ddr3_cas_n;
  wire [0:0]ddr3_ck_n;
  wire [0:0]ddr3_ck_p;
  wire [0:0]ddr3_cke;
  wire [0:0]ddr3_cs_n;
  wire [1:0]ddr3_dm;
  wire [15:0]ddr3_dq;
  wire [1:0]ddr3_dqs_n;
  wire [1:0]ddr3_dqs_p;
  wire [0:0]ddr3_odt;
  wire ddr3_ras_n;
  wire ddr3_reset_n;
  wire ddr3_we_n;
  wire [0:0]eth_col;
  wire [0:0]eth_crs;
  wire [0:0]eth_mdc;
  wire eth_ref_clk;
  wire eth_rst_n;
  wire eth_rx_clk;
  wire eth_tx_clk;
  wire [3:0]eth_tx_data;
  wire eth_tx_en;
  wire [31:0]gpioA;
  wire [31:0]gpioB;
  wire led;
  wire mcu_TCK;
  wire mcu_TDI;
  wire mcu_TDO;
  wire mcu_TMS;
  wire mcu_wakeup;
  wire pmu_paden;
  wire pmu_padrst;
  wire qspi0_cs;
  wire [3:0]qspi0_dq;
  wire qspi0_sck;
  wire rst_n;

  cis_sobel cis_sobel_i
       (.Sel(Sel),
        .camera_data(camera_data),
        .camera_href(camera_href),
        .camera_pclk(camera_pclk),
        .camera_pwdn(camera_pwdn),
        .camera_rst_n(camera_rst_n),
        .camera_scl(camera_scl),
        .camera_sda(camera_sda),
        .camera_vsync(camera_vsync),
        .camera_xclk(camera_xclk),
        .clk(clk),
        .ddr3_addr(ddr3_addr),
        .ddr3_ba(ddr3_ba),
        .ddr3_cas_n(ddr3_cas_n),
        .ddr3_ck_n(ddr3_ck_n),
        .ddr3_ck_p(ddr3_ck_p),
        .ddr3_cke(ddr3_cke),
        .ddr3_cs_n(ddr3_cs_n),
        .ddr3_dm(ddr3_dm),
        .ddr3_dq(ddr3_dq),
        .ddr3_dqs_n(ddr3_dqs_n),
        .ddr3_dqs_p(ddr3_dqs_p),
        .ddr3_odt(ddr3_odt),
        .ddr3_ras_n(ddr3_ras_n),
        .ddr3_reset_n(ddr3_reset_n),
        .ddr3_we_n(ddr3_we_n),
        .eth_col(eth_col),
        .eth_crs(eth_crs),
        .eth_mdc(eth_mdc),
        .eth_ref_clk(eth_ref_clk),
        .eth_rst_n(eth_rst_n),
        .eth_rx_clk(eth_rx_clk),
        .eth_tx_clk(eth_tx_clk),
        .eth_tx_data(eth_tx_data),
        .eth_tx_en(eth_tx_en),
        .gpioA(gpioA),
        .gpioB(gpioB),
        .led(led),
        .mcu_TCK(mcu_TCK),
        .mcu_TDI(mcu_TDI),
        .mcu_TDO(mcu_TDO),
        .mcu_TMS(mcu_TMS),
        .mcu_wakeup(mcu_wakeup),
        .pmu_paden(pmu_paden),
        .pmu_padrst(pmu_padrst),
        .qspi0_cs(qspi0_cs),
        .qspi0_dq(qspi0_dq),
        .qspi0_sck(qspi0_sck),
        .rst_n(rst_n));
endmodule
