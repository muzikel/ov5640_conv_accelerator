//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Sat Jun  5 21:56:42 2021
//Host        : DESKTOP-IRRHKJS running 64-bit major release  (build 9200)
//Command     : generate_target cis_sobel.bd
//Design      : cis_sobel
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "cis_sobel,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=cis_sobel,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=38,numReposBlks=38,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=19,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=1,da_clkrst_cnt=2,synth_mode=Global}" *) (* HW_HANDOFF = "cis_sobel.hwdef" *) 
module cis_sobel
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CAMERA_PCLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CAMERA_PCLK, CLK_DOMAIN cis_sobel_camera_pclk, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input [0:0]camera_pclk;
  output camera_pwdn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.CAMERA_RST_N RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.CAMERA_RST_N, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output camera_rst_n;
  output camera_scl;
  inout camera_sda;
  input camera_vsync;
  output camera_xclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN cis_sobel_clk, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3 ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ddr3, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250" *) output [13:0]ddr3_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3 BA" *) output [2:0]ddr3_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3 CAS_N" *) output ddr3_cas_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3 CK_N" *) output [0:0]ddr3_ck_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3 CK_P" *) output [0:0]ddr3_ck_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3 CKE" *) output [0:0]ddr3_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3 CS_N" *) output [0:0]ddr3_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3 DM" *) output [1:0]ddr3_dm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3 DQ" *) inout [15:0]ddr3_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3 DQS_N" *) inout [1:0]ddr3_dqs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3 DQS_P" *) inout [1:0]ddr3_dqs_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3 ODT" *) output [0:0]ddr3_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3 RAS_N" *) output ddr3_ras_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3 RESET_N" *) output ddr3_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3 WE_N" *) output ddr3_we_n;
  output [0:0]eth_col;
  output [0:0]eth_crs;
  output [0:0]eth_mdc;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ETH_REF_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ETH_REF_CLK, CLK_DOMAIN /clk_wiz_0_clk_out1, FREQ_HZ 25000000, INSERT_VIP 0, PHASE 0.0" *) output eth_ref_clk;
  output eth_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ETH_RX_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ETH_RX_CLK, CLK_DOMAIN cis_sobel_eth_rx_clk, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input eth_rx_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ETH_TX_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ETH_TX_CLK, CLK_DOMAIN cis_sobel_eth_tx_clk, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input eth_tx_clk;
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RST_N RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RST_N, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input rst_n;

  wire [15:0]DVP_Capture_0_DataPixel;
  wire DVP_Capture_0_DataValid;
  wire MUX2IN1_0_O;
  wire MUX2IN1_1_O;
  wire [3:0]MUX2IN1_4bit_0_O;
  wire Net;
  wire [3:0]Net1;
  wire Net10;
  wire [47:0]Net11;
  wire [31:0]Net2;
  wire [31:0]Net3;
  wire Net4;
  wire Net5;
  wire Net6;
  wire Net7;
  wire Net8;
  wire Net9;
  wire Sel_1;
  wire [31:0]Trash_Risc_0_PE_icb_cmd_addr;
  wire [0:0]Trash_Risc_0_PE_icb_cmd_read;
  wire [1:0]Trash_Risc_0_PE_icb_cmd_size;
  wire Trash_Risc_0_PE_icb_cmd_valid;
  wire [31:0]Trash_Risc_0_PE_icb_cmd_wdata;
  wire [3:0]Trash_Risc_0_PE_icb_cmd_wmask;
  wire Trash_Risc_0_PE_icb_rsp_ready;
  wire Trash_Risc_0_hfclk;
  wire Trash_Risc_0_led;
  wire Trash_Risc_0_qspi0_cs;
  wire Trash_Risc_0_qspi0_sck;
  wire [27:0]axi_smc_M00_AXI_ARADDR;
  wire [1:0]axi_smc_M00_AXI_ARBURST;
  wire [3:0]axi_smc_M00_AXI_ARCACHE;
  wire [7:0]axi_smc_M00_AXI_ARLEN;
  wire [0:0]axi_smc_M00_AXI_ARLOCK;
  wire [2:0]axi_smc_M00_AXI_ARPROT;
  wire [3:0]axi_smc_M00_AXI_ARQOS;
  wire axi_smc_M00_AXI_ARREADY;
  wire [2:0]axi_smc_M00_AXI_ARSIZE;
  wire axi_smc_M00_AXI_ARVALID;
  wire [27:0]axi_smc_M00_AXI_AWADDR;
  wire [1:0]axi_smc_M00_AXI_AWBURST;
  wire [3:0]axi_smc_M00_AXI_AWCACHE;
  wire [7:0]axi_smc_M00_AXI_AWLEN;
  wire [0:0]axi_smc_M00_AXI_AWLOCK;
  wire [2:0]axi_smc_M00_AXI_AWPROT;
  wire [3:0]axi_smc_M00_AXI_AWQOS;
  wire axi_smc_M00_AXI_AWREADY;
  wire [2:0]axi_smc_M00_AXI_AWSIZE;
  wire axi_smc_M00_AXI_AWVALID;
  wire axi_smc_M00_AXI_BREADY;
  wire [1:0]axi_smc_M00_AXI_BRESP;
  wire axi_smc_M00_AXI_BVALID;
  wire [127:0]axi_smc_M00_AXI_RDATA;
  wire axi_smc_M00_AXI_RLAST;
  wire axi_smc_M00_AXI_RREADY;
  wire [1:0]axi_smc_M00_AXI_RRESP;
  wire axi_smc_M00_AXI_RVALID;
  wire [127:0]axi_smc_M00_AXI_WDATA;
  wire axi_smc_M00_AXI_WLAST;
  wire axi_smc_M00_AXI_WREADY;
  wire [15:0]axi_smc_M00_AXI_WSTRB;
  wire axi_smc_M00_AXI_WVALID;
  wire [7:0]camera_data_1;
  wire camera_href_1;
  wire [0:0]camera_pclk_1;
  wire camera_vsync_1;
  wire clk_1;
  wire clk_wiz_0_clk_100m;
  wire clk_wiz_0_clk_16m;
  wire clk_wiz_0_clk_200m;
  wire clk_wiz_0_clk_24m;
  wire clk_wiz_0_clk_25m;
  wire clk_wiz_0_clk_50m;
  wire clk_wiz_0_clk_8388m;
  wire clk_wiz_0_locked;
  wire clkdivider_0_clk_out;
  wire eth_rx_clk_1;
  wire eth_tx_clk_1;
  wire [27:0]fifo2mig_axi_0_m_axi_ARADDR;
  wire [1:0]fifo2mig_axi_0_m_axi_ARBURST;
  wire [3:0]fifo2mig_axi_0_m_axi_ARCACHE;
  wire [3:0]fifo2mig_axi_0_m_axi_ARID;
  wire [7:0]fifo2mig_axi_0_m_axi_ARLEN;
  wire [0:0]fifo2mig_axi_0_m_axi_ARLOCK;
  wire [2:0]fifo2mig_axi_0_m_axi_ARPROT;
  wire [3:0]fifo2mig_axi_0_m_axi_ARQOS;
  wire fifo2mig_axi_0_m_axi_ARREADY;
  wire [2:0]fifo2mig_axi_0_m_axi_ARSIZE;
  wire fifo2mig_axi_0_m_axi_ARVALID;
  wire [27:0]fifo2mig_axi_0_m_axi_AWADDR;
  wire [1:0]fifo2mig_axi_0_m_axi_AWBURST;
  wire [3:0]fifo2mig_axi_0_m_axi_AWCACHE;
  wire [3:0]fifo2mig_axi_0_m_axi_AWID;
  wire [7:0]fifo2mig_axi_0_m_axi_AWLEN;
  wire [0:0]fifo2mig_axi_0_m_axi_AWLOCK;
  wire [2:0]fifo2mig_axi_0_m_axi_AWPROT;
  wire [3:0]fifo2mig_axi_0_m_axi_AWQOS;
  wire fifo2mig_axi_0_m_axi_AWREADY;
  wire [2:0]fifo2mig_axi_0_m_axi_AWSIZE;
  wire fifo2mig_axi_0_m_axi_AWVALID;
  wire [3:0]fifo2mig_axi_0_m_axi_BID;
  wire fifo2mig_axi_0_m_axi_BREADY;
  wire [1:0]fifo2mig_axi_0_m_axi_BRESP;
  wire fifo2mig_axi_0_m_axi_BVALID;
  wire [127:0]fifo2mig_axi_0_m_axi_RDATA;
  wire [3:0]fifo2mig_axi_0_m_axi_RID;
  wire fifo2mig_axi_0_m_axi_RLAST;
  wire fifo2mig_axi_0_m_axi_RREADY;
  wire [1:0]fifo2mig_axi_0_m_axi_RRESP;
  wire fifo2mig_axi_0_m_axi_RVALID;
  wire [127:0]fifo2mig_axi_0_m_axi_WDATA;
  wire fifo2mig_axi_0_m_axi_WLAST;
  wire fifo2mig_axi_0_m_axi_WREADY;
  wire [15:0]fifo2mig_axi_0_m_axi_WSTRB;
  wire fifo2mig_axi_0_m_axi_WVALID;
  wire [127:0]fifo2mig_axi_0_rd_fifo_wrdata;
  wire fifo2mig_axi_0_rd_fifo_wrreq;
  wire fifo2mig_axi_0_wr_fifo_rdreq;
  wire [27:0]fifo2mig_axi_1_m_axi_ARADDR;
  wire [1:0]fifo2mig_axi_1_m_axi_ARBURST;
  wire [3:0]fifo2mig_axi_1_m_axi_ARCACHE;
  wire [3:0]fifo2mig_axi_1_m_axi_ARID;
  wire [7:0]fifo2mig_axi_1_m_axi_ARLEN;
  wire [0:0]fifo2mig_axi_1_m_axi_ARLOCK;
  wire [2:0]fifo2mig_axi_1_m_axi_ARPROT;
  wire [3:0]fifo2mig_axi_1_m_axi_ARQOS;
  wire fifo2mig_axi_1_m_axi_ARREADY;
  wire [2:0]fifo2mig_axi_1_m_axi_ARSIZE;
  wire fifo2mig_axi_1_m_axi_ARVALID;
  wire [27:0]fifo2mig_axi_1_m_axi_AWADDR;
  wire [1:0]fifo2mig_axi_1_m_axi_AWBURST;
  wire [3:0]fifo2mig_axi_1_m_axi_AWCACHE;
  wire [3:0]fifo2mig_axi_1_m_axi_AWID;
  wire [7:0]fifo2mig_axi_1_m_axi_AWLEN;
  wire [0:0]fifo2mig_axi_1_m_axi_AWLOCK;
  wire [2:0]fifo2mig_axi_1_m_axi_AWPROT;
  wire [3:0]fifo2mig_axi_1_m_axi_AWQOS;
  wire fifo2mig_axi_1_m_axi_AWREADY;
  wire [2:0]fifo2mig_axi_1_m_axi_AWSIZE;
  wire fifo2mig_axi_1_m_axi_AWVALID;
  wire [3:0]fifo2mig_axi_1_m_axi_BID;
  wire fifo2mig_axi_1_m_axi_BREADY;
  wire [1:0]fifo2mig_axi_1_m_axi_BRESP;
  wire fifo2mig_axi_1_m_axi_BVALID;
  wire [127:0]fifo2mig_axi_1_m_axi_RDATA;
  wire [3:0]fifo2mig_axi_1_m_axi_RID;
  wire fifo2mig_axi_1_m_axi_RLAST;
  wire fifo2mig_axi_1_m_axi_RREADY;
  wire [1:0]fifo2mig_axi_1_m_axi_RRESP;
  wire fifo2mig_axi_1_m_axi_RVALID;
  wire [127:0]fifo2mig_axi_1_m_axi_WDATA;
  wire fifo2mig_axi_1_m_axi_WLAST;
  wire fifo2mig_axi_1_m_axi_WREADY;
  wire [15:0]fifo2mig_axi_1_m_axi_WSTRB;
  wire fifo2mig_axi_1_m_axi_WVALID;
  wire [127:0]fifo2mig_axi_1_rd_fifo_wrdata;
  wire fifo2mig_axi_1_rd_fifo_wrreq;
  wire fifo2mig_axi_1_wr_fifo_rdreq;
  wire [7:0]fifo_generator_0_dout;
  wire fifo_generator_0_empty;
  wire [7:0]icb_sobel_0_data_gray_out;
  wire [15:0]icb_sobel_0_data_rgb_out;
  wire icb_sobel_0_i_icb_cmd_ready;
  wire icb_sobel_0_i_icb_rsp_err;
  wire [31:0]icb_sobel_0_i_icb_rsp_rdata;
  wire icb_sobel_0_i_icb_rsp_valid;
  wire icb_sobel_0_rd_gray_en;
  wire icb_sobel_0_wr_gray_en;
  wire icb_sobel_0_wr_rgb_en;
  wire img_data_pkt_0_img_req;
  wire [15:0]img_data_pkt_0_udp_tx_byte_num;
  wire [31:0]img_data_pkt_0_udp_tx_data;
  wire img_data_pkt_0_udp_tx_start_en;
  wire img_data_pkt_1_img_req;
  wire [15:0]img_data_pkt_1_udp_tx_byte_num;
  wire [31:0]img_data_pkt_1_udp_tx_data;
  wire img_data_pkt_1_udp_tx_start_en;
  wire [13:0]mig_7series_0_DDR3_ADDR;
  wire [2:0]mig_7series_0_DDR3_BA;
  wire mig_7series_0_DDR3_CAS_N;
  wire [0:0]mig_7series_0_DDR3_CKE;
  wire [0:0]mig_7series_0_DDR3_CK_N;
  wire [0:0]mig_7series_0_DDR3_CK_P;
  wire [0:0]mig_7series_0_DDR3_CS_N;
  wire [1:0]mig_7series_0_DDR3_DM;
  wire [15:0]mig_7series_0_DDR3_DQ;
  wire [1:0]mig_7series_0_DDR3_DQS_N;
  wire [1:0]mig_7series_0_DDR3_DQS_P;
  wire [0:0]mig_7series_0_DDR3_ODT;
  wire mig_7series_0_DDR3_RAS_N;
  wire mig_7series_0_DDR3_RESET_N;
  wire mig_7series_0_DDR3_WE_N;
  wire mig_7series_0_init_calib_complete;
  wire mig_7series_0_mmcm_locked;
  wire mig_7series_0_ui_clk;
  wire mig_7series_0_ui_clk_sync_rst;
  wire ov5640_rgb565_top_0_cam_pwdn;
  wire ov5640_rgb565_top_0_cam_rst_n;
  wire ov5640_rgb565_top_0_cam_scl;
  wire ov5640_rgb565_top_0_cam_xclk;
  wire ov5640_rgb565_top_0_sys_init_done;
  wire [15:0]rd_ddr_fifo_0_dout;
  wire rd_ddr_fifo_0_full;
  wire rd_ddr_fifo_0_rd_rst_busy;
  wire [5:0]rd_ddr_fifo_0_wr_data_count;
  wire rd_ddr_fifo_0_wr_rst_busy;
  wire [15:0]rd_ddr_fifo_2_dout;
  wire rd_ddr_fifo_2_full;
  wire rd_ddr_fifo_2_rd_rst_busy;
  wire [5:0]rd_ddr_fifo_2_wr_data_count;
  wire rd_ddr_fifo_2_wr_rst_busy;
  wire rd_fifoddr_clr_0_rd_addr_clr;
  wire [0:0]rst_mig_7series_0_100M_peripheral_aresetn;
  wire rst_n_1;
  wire udp_0_eth_rst_n;
  wire [3:0]udp_0_eth_tx_data;
  wire udp_0_eth_tx_en;
  wire udp_0_tx_done;
  wire udp_0_tx_req;
  wire udp_1_eth_rst_n;
  wire [3:0]udp_1_eth_tx_data;
  wire udp_1_eth_tx_en;
  wire udp_1_tx_done;
  wire udp_1_tx_req;
  wire [0:0]util_ds_buf_0_BUFG_O;
  wire [0:0]util_vector_logic_0_Res;
  wire [0:0]util_vector_logic_1_Res;
  wire [0:0]util_vector_logic_2_Res;
  wire [0:0]util_vector_logic_3_Res;
  wire [0:0]util_vector_logic_4_Res;
  wire [0:0]util_vector_logic_5_Res;
  wire [0:0]util_vector_logic_6_Res;
  wire [0:0]util_vector_logic_7_Res;
  wire [0:0]util_vector_logic_8_Res;
  wire [127:0]wr_ddr_fifo_0_dout;
  wire wr_ddr_fifo_0_empty;
  wire [5:0]wr_ddr_fifo_0_rd_data_count;
  wire wr_ddr_fifo_0_rd_rst_busy;
  wire wr_ddr_fifo_0_wr_rst_busy;
  wire [127:0]wr_ddr_fifo_1_dout;
  wire wr_ddr_fifo_1_empty;
  wire [5:0]wr_ddr_fifo_1_rd_data_count;
  wire wr_ddr_fifo_1_rd_rst_busy;
  wire wr_ddr_fifo_1_wr_rst_busy;
  wire wr_fifoddr_clr_0_wr_addr_clr;
  wire [0:0]xlconstant_0_dout;
  wire [0:0]xlconstant_1_dout;
  wire [0:0]xlconstant_2_dout;

  assign Sel_1 = Sel;
  assign camera_data_1 = camera_data[7:0];
  assign camera_href_1 = camera_href;
  assign camera_pclk_1 = camera_pclk[0];
  assign camera_pwdn = ov5640_rgb565_top_0_cam_pwdn;
  assign camera_rst_n = ov5640_rgb565_top_0_cam_rst_n;
  assign camera_scl = ov5640_rgb565_top_0_cam_scl;
  assign camera_vsync_1 = camera_vsync;
  assign camera_xclk = ov5640_rgb565_top_0_cam_xclk;
  assign clk_1 = clk;
  assign ddr3_addr[13:0] = mig_7series_0_DDR3_ADDR;
  assign ddr3_ba[2:0] = mig_7series_0_DDR3_BA;
  assign ddr3_cas_n = mig_7series_0_DDR3_CAS_N;
  assign ddr3_ck_n[0] = mig_7series_0_DDR3_CK_N;
  assign ddr3_ck_p[0] = mig_7series_0_DDR3_CK_P;
  assign ddr3_cke[0] = mig_7series_0_DDR3_CKE;
  assign ddr3_cs_n[0] = mig_7series_0_DDR3_CS_N;
  assign ddr3_dm[1:0] = mig_7series_0_DDR3_DM;
  assign ddr3_odt[0] = mig_7series_0_DDR3_ODT;
  assign ddr3_ras_n = mig_7series_0_DDR3_RAS_N;
  assign ddr3_reset_n = mig_7series_0_DDR3_RESET_N;
  assign ddr3_we_n = mig_7series_0_DDR3_WE_N;
  assign eth_col[0] = xlconstant_1_dout;
  assign eth_crs[0] = xlconstant_2_dout;
  assign eth_mdc[0] = xlconstant_0_dout;
  assign eth_ref_clk = clk_wiz_0_clk_25m;
  assign eth_rst_n = MUX2IN1_1_O;
  assign eth_rx_clk_1 = eth_rx_clk;
  assign eth_tx_clk_1 = eth_tx_clk;
  assign eth_tx_data[3:0] = MUX2IN1_4bit_0_O;
  assign eth_tx_en = MUX2IN1_0_O;
  assign led = Trash_Risc_0_led;
  assign qspi0_cs = Trash_Risc_0_qspi0_cs;
  assign qspi0_sck = Trash_Risc_0_qspi0_sck;
  assign rst_n_1 = rst_n;
  cis_sobel_DVP_Capture_0_1 DVP_Capture_0
       (.Data(camera_data_1),
        .DataPixel(DVP_Capture_0_DataPixel),
        .DataValid(DVP_Capture_0_DataValid),
        .Href(camera_href_1),
        .PCLK(util_ds_buf_0_BUFG_O),
        .Rst_p(util_vector_logic_0_Res),
        .Vsync(camera_vsync_1));
  cis_sobel_MUX2IN1_0_1 MUX2IN1_0
       (.A(udp_0_eth_tx_en),
        .B(udp_1_eth_tx_en),
        .O(MUX2IN1_0_O),
        .Sel(Sel_1));
  cis_sobel_MUX2IN1_0_2 MUX2IN1_1
       (.A(udp_0_eth_rst_n),
        .B(udp_1_eth_rst_n),
        .O(MUX2IN1_1_O),
        .Sel(Sel_1));
  cis_sobel_MUX2IN1_4bit_0_0 MUX2IN1_4bit_0
       (.A(udp_0_eth_tx_data),
        .B(udp_1_eth_tx_data),
        .O(MUX2IN1_4bit_0_O),
        .Sel(Sel_1));
  cis_sobel_Trash_Risc_0_0 Trash_Risc_0
       (.CLK32768KHZ(clkdivider_0_clk_out),
        .PE_icb_cmd_addr(Trash_Risc_0_PE_icb_cmd_addr),
        .PE_icb_cmd_read(Trash_Risc_0_PE_icb_cmd_read),
        .PE_icb_cmd_ready(icb_sobel_0_i_icb_cmd_ready),
        .PE_icb_cmd_size(Trash_Risc_0_PE_icb_cmd_size),
        .PE_icb_cmd_valid(Trash_Risc_0_PE_icb_cmd_valid),
        .PE_icb_cmd_wdata(Trash_Risc_0_PE_icb_cmd_wdata),
        .PE_icb_cmd_wmask(Trash_Risc_0_PE_icb_cmd_wmask),
        .PE_icb_rsp_err(icb_sobel_0_i_icb_rsp_err),
        .PE_icb_rsp_rdata(icb_sobel_0_i_icb_rsp_rdata),
        .PE_icb_rsp_ready(Trash_Risc_0_PE_icb_rsp_ready),
        .PE_icb_rsp_valid(icb_sobel_0_i_icb_rsp_valid),
        .clk_16M(clk_wiz_0_clk_16m),
        .gpioA(gpioA[31:0]),
        .gpioB(gpioB[31:0]),
        .hfclk(Trash_Risc_0_hfclk),
        .led(Trash_Risc_0_led),
        .m_axi_arready(1'b0),
        .m_axi_awready(1'b0),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rlast(1'b0),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_rvalid(1'b0),
        .m_axi_wready(1'b0),
        .mcu_TCK(mcu_TCK),
        .mcu_TDI(mcu_TDI),
        .mcu_TDO(mcu_TDO),
        .mcu_TMS(mcu_TMS),
        .mcu_rst(rst_n_1),
        .mcu_wakeup(mcu_wakeup),
        .mmcm_locked(clk_wiz_0_locked),
        .pmu_paden(pmu_paden),
        .pmu_padrst(pmu_padrst),
        .qspi0_cs(Trash_Risc_0_qspi0_cs),
        .qspi0_dq(qspi0_dq[3:0]),
        .qspi0_sck(Trash_Risc_0_qspi0_sck));
  cis_sobel_axi_smc_0 axi_smc
       (.M00_AXI_araddr(axi_smc_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_smc_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_smc_M00_AXI_ARCACHE),
        .M00_AXI_arlen(axi_smc_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_smc_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_smc_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_smc_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_smc_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_smc_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_smc_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_smc_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_smc_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_smc_M00_AXI_AWCACHE),
        .M00_AXI_awlen(axi_smc_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_smc_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_smc_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_smc_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_smc_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_smc_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_smc_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_smc_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_smc_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_smc_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_smc_M00_AXI_RDATA),
        .M00_AXI_rlast(axi_smc_M00_AXI_RLAST),
        .M00_AXI_rready(axi_smc_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_smc_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_smc_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_smc_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_smc_M00_AXI_WLAST),
        .M00_AXI_wready(axi_smc_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_smc_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_smc_M00_AXI_WVALID),
        .S00_AXI_araddr(fifo2mig_axi_0_m_axi_ARADDR),
        .S00_AXI_arburst(fifo2mig_axi_0_m_axi_ARBURST),
        .S00_AXI_arcache(fifo2mig_axi_0_m_axi_ARCACHE),
        .S00_AXI_arid(fifo2mig_axi_0_m_axi_ARID),
        .S00_AXI_arlen(fifo2mig_axi_0_m_axi_ARLEN),
        .S00_AXI_arlock(fifo2mig_axi_0_m_axi_ARLOCK),
        .S00_AXI_arprot(fifo2mig_axi_0_m_axi_ARPROT),
        .S00_AXI_arqos(fifo2mig_axi_0_m_axi_ARQOS),
        .S00_AXI_arready(fifo2mig_axi_0_m_axi_ARREADY),
        .S00_AXI_arsize(fifo2mig_axi_0_m_axi_ARSIZE),
        .S00_AXI_arvalid(fifo2mig_axi_0_m_axi_ARVALID),
        .S00_AXI_awaddr(fifo2mig_axi_0_m_axi_AWADDR),
        .S00_AXI_awburst(fifo2mig_axi_0_m_axi_AWBURST),
        .S00_AXI_awcache(fifo2mig_axi_0_m_axi_AWCACHE),
        .S00_AXI_awid(fifo2mig_axi_0_m_axi_AWID),
        .S00_AXI_awlen(fifo2mig_axi_0_m_axi_AWLEN),
        .S00_AXI_awlock(fifo2mig_axi_0_m_axi_AWLOCK),
        .S00_AXI_awprot(fifo2mig_axi_0_m_axi_AWPROT),
        .S00_AXI_awqos(fifo2mig_axi_0_m_axi_AWQOS),
        .S00_AXI_awready(fifo2mig_axi_0_m_axi_AWREADY),
        .S00_AXI_awsize(fifo2mig_axi_0_m_axi_AWSIZE),
        .S00_AXI_awvalid(fifo2mig_axi_0_m_axi_AWVALID),
        .S00_AXI_bid(fifo2mig_axi_0_m_axi_BID),
        .S00_AXI_bready(fifo2mig_axi_0_m_axi_BREADY),
        .S00_AXI_bresp(fifo2mig_axi_0_m_axi_BRESP),
        .S00_AXI_bvalid(fifo2mig_axi_0_m_axi_BVALID),
        .S00_AXI_rdata(fifo2mig_axi_0_m_axi_RDATA),
        .S00_AXI_rid(fifo2mig_axi_0_m_axi_RID),
        .S00_AXI_rlast(fifo2mig_axi_0_m_axi_RLAST),
        .S00_AXI_rready(fifo2mig_axi_0_m_axi_RREADY),
        .S00_AXI_rresp(fifo2mig_axi_0_m_axi_RRESP),
        .S00_AXI_rvalid(fifo2mig_axi_0_m_axi_RVALID),
        .S00_AXI_wdata(fifo2mig_axi_0_m_axi_WDATA),
        .S00_AXI_wlast(fifo2mig_axi_0_m_axi_WLAST),
        .S00_AXI_wready(fifo2mig_axi_0_m_axi_WREADY),
        .S00_AXI_wstrb(fifo2mig_axi_0_m_axi_WSTRB),
        .S00_AXI_wvalid(fifo2mig_axi_0_m_axi_WVALID),
        .S01_AXI_araddr(fifo2mig_axi_1_m_axi_ARADDR),
        .S01_AXI_arburst(fifo2mig_axi_1_m_axi_ARBURST),
        .S01_AXI_arcache(fifo2mig_axi_1_m_axi_ARCACHE),
        .S01_AXI_arid(fifo2mig_axi_1_m_axi_ARID),
        .S01_AXI_arlen(fifo2mig_axi_1_m_axi_ARLEN),
        .S01_AXI_arlock(fifo2mig_axi_1_m_axi_ARLOCK),
        .S01_AXI_arprot(fifo2mig_axi_1_m_axi_ARPROT),
        .S01_AXI_arqos(fifo2mig_axi_1_m_axi_ARQOS),
        .S01_AXI_arready(fifo2mig_axi_1_m_axi_ARREADY),
        .S01_AXI_arsize(fifo2mig_axi_1_m_axi_ARSIZE),
        .S01_AXI_arvalid(fifo2mig_axi_1_m_axi_ARVALID),
        .S01_AXI_awaddr(fifo2mig_axi_1_m_axi_AWADDR),
        .S01_AXI_awburst(fifo2mig_axi_1_m_axi_AWBURST),
        .S01_AXI_awcache(fifo2mig_axi_1_m_axi_AWCACHE),
        .S01_AXI_awid(fifo2mig_axi_1_m_axi_AWID),
        .S01_AXI_awlen(fifo2mig_axi_1_m_axi_AWLEN),
        .S01_AXI_awlock(fifo2mig_axi_1_m_axi_AWLOCK),
        .S01_AXI_awprot(fifo2mig_axi_1_m_axi_AWPROT),
        .S01_AXI_awqos(fifo2mig_axi_1_m_axi_AWQOS),
        .S01_AXI_awready(fifo2mig_axi_1_m_axi_AWREADY),
        .S01_AXI_awsize(fifo2mig_axi_1_m_axi_AWSIZE),
        .S01_AXI_awvalid(fifo2mig_axi_1_m_axi_AWVALID),
        .S01_AXI_bid(fifo2mig_axi_1_m_axi_BID),
        .S01_AXI_bready(fifo2mig_axi_1_m_axi_BREADY),
        .S01_AXI_bresp(fifo2mig_axi_1_m_axi_BRESP),
        .S01_AXI_bvalid(fifo2mig_axi_1_m_axi_BVALID),
        .S01_AXI_rdata(fifo2mig_axi_1_m_axi_RDATA),
        .S01_AXI_rid(fifo2mig_axi_1_m_axi_RID),
        .S01_AXI_rlast(fifo2mig_axi_1_m_axi_RLAST),
        .S01_AXI_rready(fifo2mig_axi_1_m_axi_RREADY),
        .S01_AXI_rresp(fifo2mig_axi_1_m_axi_RRESP),
        .S01_AXI_rvalid(fifo2mig_axi_1_m_axi_RVALID),
        .S01_AXI_wdata(fifo2mig_axi_1_m_axi_WDATA),
        .S01_AXI_wlast(fifo2mig_axi_1_m_axi_WLAST),
        .S01_AXI_wready(fifo2mig_axi_1_m_axi_WREADY),
        .S01_AXI_wstrb(fifo2mig_axi_1_m_axi_WSTRB),
        .S01_AXI_wvalid(fifo2mig_axi_1_m_axi_WVALID),
        .aclk(mig_7series_0_ui_clk),
        .aresetn(rst_mig_7series_0_100M_peripheral_aresetn));
  cis_sobel_clk_wiz_0_0 clk_wiz_0
       (.clk_100m(clk_wiz_0_clk_100m),
        .clk_16m(clk_wiz_0_clk_16m),
        .clk_200m(clk_wiz_0_clk_200m),
        .clk_24m(clk_wiz_0_clk_24m),
        .clk_25m(clk_wiz_0_clk_25m),
        .clk_50m(clk_wiz_0_clk_50m),
        .clk_8388m(clk_wiz_0_clk_8388m),
        .clk_in1(clk_1),
        .locked(clk_wiz_0_locked),
        .resetn(rst_n_1));
  cis_sobel_clkdivider_0_0 clkdivider_0
       (.clk(clk_wiz_0_clk_8388m),
        .clk_out(clkdivider_0_clk_out),
        .reset(rst_n_1));
  cis_sobel_fifo2mig_axi_0_0 fifo2mig_axi_0
       (.init_calib_complete(mig_7series_0_init_calib_complete),
        .m_axi_araddr(fifo2mig_axi_0_m_axi_ARADDR),
        .m_axi_arburst(fifo2mig_axi_0_m_axi_ARBURST),
        .m_axi_arcache(fifo2mig_axi_0_m_axi_ARCACHE),
        .m_axi_arid(fifo2mig_axi_0_m_axi_ARID),
        .m_axi_arlen(fifo2mig_axi_0_m_axi_ARLEN),
        .m_axi_arlock(fifo2mig_axi_0_m_axi_ARLOCK),
        .m_axi_arprot(fifo2mig_axi_0_m_axi_ARPROT),
        .m_axi_arqos(fifo2mig_axi_0_m_axi_ARQOS),
        .m_axi_arready(fifo2mig_axi_0_m_axi_ARREADY),
        .m_axi_arsize(fifo2mig_axi_0_m_axi_ARSIZE),
        .m_axi_arvalid(fifo2mig_axi_0_m_axi_ARVALID),
        .m_axi_awaddr(fifo2mig_axi_0_m_axi_AWADDR),
        .m_axi_awburst(fifo2mig_axi_0_m_axi_AWBURST),
        .m_axi_awcache(fifo2mig_axi_0_m_axi_AWCACHE),
        .m_axi_awid(fifo2mig_axi_0_m_axi_AWID),
        .m_axi_awlen(fifo2mig_axi_0_m_axi_AWLEN),
        .m_axi_awlock(fifo2mig_axi_0_m_axi_AWLOCK),
        .m_axi_awprot(fifo2mig_axi_0_m_axi_AWPROT),
        .m_axi_awqos(fifo2mig_axi_0_m_axi_AWQOS),
        .m_axi_awready(fifo2mig_axi_0_m_axi_AWREADY),
        .m_axi_awsize(fifo2mig_axi_0_m_axi_AWSIZE),
        .m_axi_awvalid(fifo2mig_axi_0_m_axi_AWVALID),
        .m_axi_bid(fifo2mig_axi_0_m_axi_BID),
        .m_axi_bready(fifo2mig_axi_0_m_axi_BREADY),
        .m_axi_bresp(fifo2mig_axi_0_m_axi_BRESP),
        .m_axi_bvalid(fifo2mig_axi_0_m_axi_BVALID),
        .m_axi_rdata(fifo2mig_axi_0_m_axi_RDATA),
        .m_axi_rid(fifo2mig_axi_0_m_axi_RID),
        .m_axi_rlast(fifo2mig_axi_0_m_axi_RLAST),
        .m_axi_rready(fifo2mig_axi_0_m_axi_RREADY),
        .m_axi_rresp(fifo2mig_axi_0_m_axi_RRESP),
        .m_axi_rvalid(fifo2mig_axi_0_m_axi_RVALID),
        .m_axi_wdata(fifo2mig_axi_0_m_axi_WDATA),
        .m_axi_wlast(fifo2mig_axi_0_m_axi_WLAST),
        .m_axi_wready(fifo2mig_axi_0_m_axi_WREADY),
        .m_axi_wstrb(fifo2mig_axi_0_m_axi_WSTRB),
        .m_axi_wvalid(fifo2mig_axi_0_m_axi_WVALID),
        .mmcm_locked(mig_7series_0_mmcm_locked),
        .rd_addr_clr(rd_fifoddr_clr_0_rd_addr_clr),
        .rd_fifo_alfull(rd_ddr_fifo_0_full),
        .rd_fifo_rst_busy(util_vector_logic_4_Res),
        .rd_fifo_wr_cnt({1'b0,1'b0,1'b0,rd_ddr_fifo_0_wr_data_count}),
        .rd_fifo_wrdata(fifo2mig_axi_0_rd_fifo_wrdata),
        .rd_fifo_wrreq(fifo2mig_axi_0_rd_fifo_wrreq),
        .ui_clk(mig_7series_0_ui_clk),
        .ui_clk_sync_rst(mig_7series_0_ui_clk_sync_rst),
        .wr_addr_clr(wr_fifoddr_clr_0_wr_addr_clr),
        .wr_fifo_empty(wr_ddr_fifo_0_empty),
        .wr_fifo_rd_cnt({1'b0,1'b0,1'b0,wr_ddr_fifo_0_rd_data_count}),
        .wr_fifo_rddata(wr_ddr_fifo_0_dout),
        .wr_fifo_rdreq(fifo2mig_axi_0_wr_fifo_rdreq),
        .wr_fifo_rst_busy(util_vector_logic_5_Res));
  cis_sobel_fifo2mig_axi_0_2 fifo2mig_axi_1
       (.init_calib_complete(mig_7series_0_init_calib_complete),
        .m_axi_araddr(fifo2mig_axi_1_m_axi_ARADDR),
        .m_axi_arburst(fifo2mig_axi_1_m_axi_ARBURST),
        .m_axi_arcache(fifo2mig_axi_1_m_axi_ARCACHE),
        .m_axi_arid(fifo2mig_axi_1_m_axi_ARID),
        .m_axi_arlen(fifo2mig_axi_1_m_axi_ARLEN),
        .m_axi_arlock(fifo2mig_axi_1_m_axi_ARLOCK),
        .m_axi_arprot(fifo2mig_axi_1_m_axi_ARPROT),
        .m_axi_arqos(fifo2mig_axi_1_m_axi_ARQOS),
        .m_axi_arready(fifo2mig_axi_1_m_axi_ARREADY),
        .m_axi_arsize(fifo2mig_axi_1_m_axi_ARSIZE),
        .m_axi_arvalid(fifo2mig_axi_1_m_axi_ARVALID),
        .m_axi_awaddr(fifo2mig_axi_1_m_axi_AWADDR),
        .m_axi_awburst(fifo2mig_axi_1_m_axi_AWBURST),
        .m_axi_awcache(fifo2mig_axi_1_m_axi_AWCACHE),
        .m_axi_awid(fifo2mig_axi_1_m_axi_AWID),
        .m_axi_awlen(fifo2mig_axi_1_m_axi_AWLEN),
        .m_axi_awlock(fifo2mig_axi_1_m_axi_AWLOCK),
        .m_axi_awprot(fifo2mig_axi_1_m_axi_AWPROT),
        .m_axi_awqos(fifo2mig_axi_1_m_axi_AWQOS),
        .m_axi_awready(fifo2mig_axi_1_m_axi_AWREADY),
        .m_axi_awsize(fifo2mig_axi_1_m_axi_AWSIZE),
        .m_axi_awvalid(fifo2mig_axi_1_m_axi_AWVALID),
        .m_axi_bid(fifo2mig_axi_1_m_axi_BID),
        .m_axi_bready(fifo2mig_axi_1_m_axi_BREADY),
        .m_axi_bresp(fifo2mig_axi_1_m_axi_BRESP),
        .m_axi_bvalid(fifo2mig_axi_1_m_axi_BVALID),
        .m_axi_rdata(fifo2mig_axi_1_m_axi_RDATA),
        .m_axi_rid(fifo2mig_axi_1_m_axi_RID),
        .m_axi_rlast(fifo2mig_axi_1_m_axi_RLAST),
        .m_axi_rready(fifo2mig_axi_1_m_axi_RREADY),
        .m_axi_rresp(fifo2mig_axi_1_m_axi_RRESP),
        .m_axi_rvalid(fifo2mig_axi_1_m_axi_RVALID),
        .m_axi_wdata(fifo2mig_axi_1_m_axi_WDATA),
        .m_axi_wlast(fifo2mig_axi_1_m_axi_WLAST),
        .m_axi_wready(fifo2mig_axi_1_m_axi_WREADY),
        .m_axi_wstrb(fifo2mig_axi_1_m_axi_WSTRB),
        .m_axi_wvalid(fifo2mig_axi_1_m_axi_WVALID),
        .mmcm_locked(mig_7series_0_mmcm_locked),
        .rd_addr_clr(rd_fifoddr_clr_0_rd_addr_clr),
        .rd_fifo_alfull(rd_ddr_fifo_2_full),
        .rd_fifo_rst_busy(util_vector_logic_7_Res),
        .rd_fifo_wr_cnt({1'b0,1'b0,1'b0,rd_ddr_fifo_2_wr_data_count}),
        .rd_fifo_wrdata(fifo2mig_axi_1_rd_fifo_wrdata),
        .rd_fifo_wrreq(fifo2mig_axi_1_rd_fifo_wrreq),
        .ui_clk(mig_7series_0_ui_clk),
        .ui_clk_sync_rst(mig_7series_0_ui_clk_sync_rst),
        .wr_addr_clr(wr_fifoddr_clr_0_wr_addr_clr),
        .wr_fifo_empty(wr_ddr_fifo_1_empty),
        .wr_fifo_rd_cnt({1'b0,1'b0,1'b0,wr_ddr_fifo_1_rd_data_count}),
        .wr_fifo_rddata(wr_ddr_fifo_1_dout),
        .wr_fifo_rdreq(fifo2mig_axi_1_wr_fifo_rdreq),
        .wr_fifo_rst_busy(util_vector_logic_8_Res));
  cis_sobel_fifo_generator_0_0 fifo_generator_0
       (.din(icb_sobel_0_data_gray_out),
        .dout(fifo_generator_0_dout),
        .empty(fifo_generator_0_empty),
        .rd_clk(clk_wiz_0_clk_50m),
        .rd_en(icb_sobel_0_rd_gray_en),
        .rst(mig_7series_0_ui_clk_sync_rst),
        .wr_clk(util_ds_buf_0_BUFG_O),
        .wr_en(icb_sobel_0_wr_gray_en));
  cis_sobel_icb_sobel_0_0 icb_sobel_0
       (.async_clk(clk_wiz_0_clk_50m),
        .clk(Trash_Risc_0_hfclk),
        .data_gray_in(fifo_generator_0_dout),
        .data_gray_out(icb_sobel_0_data_gray_out),
        .data_rgb_out(icb_sobel_0_data_rgb_out),
        .fifo_clk(util_ds_buf_0_BUFG_O),
        .i_icb_cmd_addr(Trash_Risc_0_PE_icb_cmd_addr),
        .i_icb_cmd_read(Trash_Risc_0_PE_icb_cmd_read),
        .i_icb_cmd_ready(icb_sobel_0_i_icb_cmd_ready),
        .i_icb_cmd_size(Trash_Risc_0_PE_icb_cmd_size),
        .i_icb_cmd_valid(Trash_Risc_0_PE_icb_cmd_valid),
        .i_icb_cmd_wdata(Trash_Risc_0_PE_icb_cmd_wdata),
        .i_icb_cmd_wmask(Trash_Risc_0_PE_icb_cmd_wmask),
        .i_icb_rsp_err(icb_sobel_0_i_icb_rsp_err),
        .i_icb_rsp_rdata(icb_sobel_0_i_icb_rsp_rdata),
        .i_icb_rsp_ready(Trash_Risc_0_PE_icb_rsp_ready),
        .i_icb_rsp_valid(icb_sobel_0_i_icb_rsp_valid),
        .macaddr(Net11),
        .rd_gray_en(icb_sobel_0_rd_gray_en),
        .rdempty(fifo_generator_0_empty),
        .rgb_in(DVP_Capture_0_DataPixel),
        .rst_n(rst_n_1),
        .wr_en(DVP_Capture_0_DataValid),
        .wr_gray_en(icb_sobel_0_wr_gray_en),
        .wr_rgb_en(icb_sobel_0_wr_rgb_en));
  cis_sobel_img_data_pkt_0_0 img_data_pkt_0
       (.clk(eth_tx_clk_1),
        .img_data(rd_ddr_fifo_0_dout),
        .img_req(img_data_pkt_0_img_req),
        .rst_n(util_vector_logic_6_Res),
        .udp_tx_byte_num(img_data_pkt_0_udp_tx_byte_num),
        .udp_tx_data(img_data_pkt_0_udp_tx_data),
        .udp_tx_done(udp_0_tx_done),
        .udp_tx_req(udp_0_tx_req),
        .udp_tx_start_en(img_data_pkt_0_udp_tx_start_en));
  cis_sobel_img_data_pkt_0_1 img_data_pkt_1
       (.clk(eth_tx_clk_1),
        .img_data(rd_ddr_fifo_2_dout),
        .img_req(img_data_pkt_1_img_req),
        .rst_n(util_vector_logic_6_Res),
        .udp_tx_byte_num(img_data_pkt_1_udp_tx_byte_num),
        .udp_tx_data(img_data_pkt_1_udp_tx_data),
        .udp_tx_done(udp_1_tx_done),
        .udp_tx_req(udp_1_tx_req),
        .udp_tx_start_en(img_data_pkt_1_udp_tx_start_en));
  cis_sobel_mig_7series_0_0 mig_7series_0
       (.aresetn(rst_n_1),
        .ddr3_addr(mig_7series_0_DDR3_ADDR),
        .ddr3_ba(mig_7series_0_DDR3_BA),
        .ddr3_cas_n(mig_7series_0_DDR3_CAS_N),
        .ddr3_ck_n(mig_7series_0_DDR3_CK_N),
        .ddr3_ck_p(mig_7series_0_DDR3_CK_P),
        .ddr3_cke(mig_7series_0_DDR3_CKE),
        .ddr3_cs_n(mig_7series_0_DDR3_CS_N),
        .ddr3_dm(mig_7series_0_DDR3_DM),
        .ddr3_dq(ddr3_dq[15:0]),
        .ddr3_dqs_n(ddr3_dqs_n[1:0]),
        .ddr3_dqs_p(ddr3_dqs_p[1:0]),
        .ddr3_odt(mig_7series_0_DDR3_ODT),
        .ddr3_ras_n(mig_7series_0_DDR3_RAS_N),
        .ddr3_reset_n(mig_7series_0_DDR3_RESET_N),
        .ddr3_we_n(mig_7series_0_DDR3_WE_N),
        .init_calib_complete(mig_7series_0_init_calib_complete),
        .mmcm_locked(mig_7series_0_mmcm_locked),
        .s_axi_araddr(axi_smc_M00_AXI_ARADDR),
        .s_axi_arburst(axi_smc_M00_AXI_ARBURST),
        .s_axi_arcache(axi_smc_M00_AXI_ARCACHE),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen(axi_smc_M00_AXI_ARLEN),
        .s_axi_arlock(axi_smc_M00_AXI_ARLOCK),
        .s_axi_arprot(axi_smc_M00_AXI_ARPROT),
        .s_axi_arqos(axi_smc_M00_AXI_ARQOS),
        .s_axi_arready(axi_smc_M00_AXI_ARREADY),
        .s_axi_arsize(axi_smc_M00_AXI_ARSIZE),
        .s_axi_arvalid(axi_smc_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_smc_M00_AXI_AWADDR),
        .s_axi_awburst(axi_smc_M00_AXI_AWBURST),
        .s_axi_awcache(axi_smc_M00_AXI_AWCACHE),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen(axi_smc_M00_AXI_AWLEN),
        .s_axi_awlock(axi_smc_M00_AXI_AWLOCK),
        .s_axi_awprot(axi_smc_M00_AXI_AWPROT),
        .s_axi_awqos(axi_smc_M00_AXI_AWQOS),
        .s_axi_awready(axi_smc_M00_AXI_AWREADY),
        .s_axi_awsize(axi_smc_M00_AXI_AWSIZE),
        .s_axi_awvalid(axi_smc_M00_AXI_AWVALID),
        .s_axi_bready(axi_smc_M00_AXI_BREADY),
        .s_axi_bresp(axi_smc_M00_AXI_BRESP),
        .s_axi_bvalid(axi_smc_M00_AXI_BVALID),
        .s_axi_rdata(axi_smc_M00_AXI_RDATA),
        .s_axi_rlast(axi_smc_M00_AXI_RLAST),
        .s_axi_rready(axi_smc_M00_AXI_RREADY),
        .s_axi_rresp(axi_smc_M00_AXI_RRESP),
        .s_axi_rvalid(axi_smc_M00_AXI_RVALID),
        .s_axi_wdata(axi_smc_M00_AXI_WDATA),
        .s_axi_wlast(axi_smc_M00_AXI_WLAST),
        .s_axi_wready(axi_smc_M00_AXI_WREADY),
        .s_axi_wstrb(axi_smc_M00_AXI_WSTRB),
        .s_axi_wvalid(axi_smc_M00_AXI_WVALID),
        .sys_clk_i(clk_wiz_0_clk_200m),
        .sys_rst(clk_wiz_0_locked),
        .ui_clk(mig_7series_0_ui_clk),
        .ui_clk_sync_rst(mig_7series_0_ui_clk_sync_rst));
  cis_sobel_ov5640_rgb565_top_0_0 ov5640_rgb565_top_0
       (.cam_pwdn(ov5640_rgb565_top_0_cam_pwdn),
        .cam_rst_n(ov5640_rgb565_top_0_cam_rst_n),
        .cam_scl(ov5640_rgb565_top_0_cam_scl),
        .cam_sda(camera_sda),
        .cam_xclk(ov5640_rgb565_top_0_cam_xclk),
        .clk_24M(clk_wiz_0_clk_24m),
        .locked(clk_wiz_0_locked),
        .sys_clk(clk_wiz_0_clk_100m),
        .sys_init_done(ov5640_rgb565_top_0_sys_init_done),
        .sys_rst_n(rst_n_1));
  cis_sobel_rd_ddr_fifo_0_0 rd_ddr_fifo_0
       (.din(fifo2mig_axi_0_rd_fifo_wrdata),
        .dout(rd_ddr_fifo_0_dout),
        .full(rd_ddr_fifo_0_full),
        .rd_clk(eth_tx_clk_1),
        .rd_en(img_data_pkt_0_img_req),
        .rd_rst_busy(rd_ddr_fifo_0_rd_rst_busy),
        .rst(mig_7series_0_ui_clk_sync_rst),
        .wr_clk(mig_7series_0_ui_clk),
        .wr_data_count(rd_ddr_fifo_0_wr_data_count),
        .wr_en(fifo2mig_axi_0_rd_fifo_wrreq),
        .wr_rst_busy(rd_ddr_fifo_0_wr_rst_busy));
  cis_sobel_rd_ddr_fifo_0_2 rd_ddr_fifo_2
       (.din(fifo2mig_axi_1_rd_fifo_wrdata),
        .dout(rd_ddr_fifo_2_dout),
        .full(rd_ddr_fifo_2_full),
        .rd_clk(eth_tx_clk_1),
        .rd_en(img_data_pkt_1_img_req),
        .rd_rst_busy(rd_ddr_fifo_2_rd_rst_busy),
        .rst(mig_7series_0_ui_clk_sync_rst),
        .wr_clk(mig_7series_0_ui_clk),
        .wr_data_count(rd_ddr_fifo_2_wr_data_count),
        .wr_en(fifo2mig_axi_1_rd_fifo_wrreq),
        .wr_rst_busy(rd_ddr_fifo_2_wr_rst_busy));
  cis_sobel_rd_fifoddr_clr_0_0 rd_fifoddr_clr_0
       (.rd_addr_clr(rd_fifoddr_clr_0_rd_addr_clr),
        .rdfifo_clr(mig_7series_0_ui_clk_sync_rst),
        .ui_clk(mig_7series_0_ui_clk));
  cis_sobel_rst_mig_7series_0_100M_0 rst_mig_7series_0_100M
       (.aux_reset_in(1'b1),
        .dcm_locked(mig_7series_0_mmcm_locked),
        .ext_reset_in(mig_7series_0_ui_clk_sync_rst),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_mig_7series_0_100M_peripheral_aresetn),
        .slowest_sync_clk(mig_7series_0_ui_clk));
  cis_sobel_udp_0_0 udp_0
       (.eth_rst_n(udp_0_eth_rst_n),
        .eth_rx_clk(eth_rx_clk_1),
        .eth_rx_data({1'b0,1'b0,1'b0,1'b0}),
        .eth_rxdv(1'b0),
        .eth_tx_clk(eth_tx_clk_1),
        .eth_tx_data(udp_0_eth_tx_data),
        .eth_tx_en(udp_0_eth_tx_en),
        .macaddr(Net11),
        .rst_n(rst_n_1),
        .tx_byte_num(img_data_pkt_0_udp_tx_byte_num),
        .tx_data(img_data_pkt_0_udp_tx_data),
        .tx_done(udp_0_tx_done),
        .tx_req(udp_0_tx_req),
        .tx_start_en(img_data_pkt_0_udp_tx_start_en));
  cis_sobel_udp_0_1 udp_1
       (.eth_rst_n(udp_1_eth_rst_n),
        .eth_rx_clk(eth_rx_clk_1),
        .eth_rx_data({1'b0,1'b0,1'b0,1'b0}),
        .eth_rxdv(1'b0),
        .eth_tx_clk(eth_tx_clk_1),
        .eth_tx_data(udp_1_eth_tx_data),
        .eth_tx_en(udp_1_eth_tx_en),
        .macaddr(Net11),
        .rst_n(rst_n_1),
        .tx_byte_num(img_data_pkt_1_udp_tx_byte_num),
        .tx_data(img_data_pkt_1_udp_tx_data),
        .tx_done(udp_1_tx_done),
        .tx_req(udp_1_tx_req),
        .tx_start_en(img_data_pkt_1_udp_tx_start_en));
  cis_sobel_util_ds_buf_0_0 util_ds_buf_0
       (.BUFG_I(camera_pclk_1),
        .BUFG_O(util_ds_buf_0_BUFG_O));
  cis_sobel_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(mig_7series_0_ui_clk_sync_rst),
        .Op2(util_vector_logic_1_Res),
        .Res(util_vector_logic_0_Res));
  cis_sobel_util_vector_logic_1_0 util_vector_logic_1
       (.Op1(clk_wiz_0_locked),
        .Res(util_vector_logic_1_Res));
  cis_sobel_util_vector_logic_0_1 util_vector_logic_2
       (.Op1(mig_7series_0_ui_clk_sync_rst),
        .Op2(util_vector_logic_3_Res),
        .Res(util_vector_logic_2_Res));
  cis_sobel_util_vector_logic_1_1 util_vector_logic_3
       (.Op1(ov5640_rgb565_top_0_sys_init_done),
        .Res(util_vector_logic_3_Res));
  cis_sobel_util_vector_logic_2_0 util_vector_logic_4
       (.Op1(rd_ddr_fifo_0_wr_rst_busy),
        .Op2(rd_ddr_fifo_0_rd_rst_busy),
        .Res(util_vector_logic_4_Res));
  cis_sobel_util_vector_logic_2_1 util_vector_logic_5
       (.Op1(wr_ddr_fifo_0_wr_rst_busy),
        .Op2(wr_ddr_fifo_0_rd_rst_busy),
        .Res(util_vector_logic_5_Res));
  cis_sobel_util_vector_logic_2_2 util_vector_logic_6
       (.Op1(rst_n_1),
        .Op2(ov5640_rgb565_top_0_sys_init_done),
        .Res(util_vector_logic_6_Res));
  cis_sobel_util_vector_logic_4_0 util_vector_logic_7
       (.Op1(rd_ddr_fifo_2_wr_rst_busy),
        .Op2(rd_ddr_fifo_2_rd_rst_busy),
        .Res(util_vector_logic_7_Res));
  cis_sobel_util_vector_logic_5_0 util_vector_logic_8
       (.Op1(wr_ddr_fifo_1_wr_rst_busy),
        .Op2(wr_ddr_fifo_1_rd_rst_busy),
        .Res(util_vector_logic_8_Res));
  cis_sobel_wr_ddr_fifo_0_0 wr_ddr_fifo_0
       (.din(DVP_Capture_0_DataPixel),
        .dout(wr_ddr_fifo_0_dout),
        .empty(wr_ddr_fifo_0_empty),
        .rd_clk(mig_7series_0_ui_clk),
        .rd_data_count(wr_ddr_fifo_0_rd_data_count),
        .rd_en(fifo2mig_axi_0_wr_fifo_rdreq),
        .rd_rst_busy(wr_ddr_fifo_0_rd_rst_busy),
        .rst(util_vector_logic_2_Res),
        .wr_clk(util_ds_buf_0_BUFG_O),
        .wr_en(DVP_Capture_0_DataValid),
        .wr_rst_busy(wr_ddr_fifo_0_wr_rst_busy));
  cis_sobel_wr_ddr_fifo_0_1 wr_ddr_fifo_1
       (.din(icb_sobel_0_data_rgb_out),
        .dout(wr_ddr_fifo_1_dout),
        .empty(wr_ddr_fifo_1_empty),
        .rd_clk(mig_7series_0_ui_clk),
        .rd_data_count(wr_ddr_fifo_1_rd_data_count),
        .rd_en(fifo2mig_axi_1_wr_fifo_rdreq),
        .rd_rst_busy(wr_ddr_fifo_1_rd_rst_busy),
        .rst(util_vector_logic_2_Res),
        .wr_clk(clk_wiz_0_clk_50m),
        .wr_en(icb_sobel_0_wr_rgb_en),
        .wr_rst_busy(wr_ddr_fifo_1_wr_rst_busy));
  cis_sobel_wr_fifoddr_clr_0_0 wr_fifoddr_clr_0
       (.ui_clk(mig_7series_0_ui_clk),
        .wr_addr_clr(wr_fifoddr_clr_0_wr_addr_clr),
        .wrfifo_clr(util_vector_logic_2_Res));
  cis_sobel_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  cis_sobel_xlconstant_0_1 xlconstant_1
       (.dout(xlconstant_1_dout));
  cis_sobel_xlconstant_2_0 xlconstant_2
       (.dout(xlconstant_2_dout));
endmodule
