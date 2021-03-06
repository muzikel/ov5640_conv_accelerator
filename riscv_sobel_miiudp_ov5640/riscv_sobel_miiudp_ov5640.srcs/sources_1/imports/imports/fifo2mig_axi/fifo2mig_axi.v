/////////////////////////////////////////////////////////////////////////////////
// Company       : 武汉芯路恒科技有限公司
//                 http://xiaomeige.taobao.com
// Web           : http://www.corecourse.cn
// 
// Create Date   : 2019/05/01 00:00:00
// Module Name   : fifo2mig_axi
// Description   : fifo接口到MIG IP AXI接口的转换模块
// 
// Dependencies  : 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
/////////////////////////////////////////////////////////////////////////////////

module fifo2mig_axi
#(
  parameter WR_DDR_ADDR_BEGIN = 0      ,
  parameter WR_DDR_ADDR_END   = 200    ,
  parameter RD_DDR_ADDR_BEGIN = 0      ,
  parameter RD_DDR_ADDR_END   = 200    ,
  
  parameter AXI_ID            = 4'b0000,
  parameter AXI_LEN           = 8'd31    //burst length = 32
)
(
  //FIFO Interface ports
  input               wr_addr_clr         ,//sync ui_clk
  output              wr_fifo_rdreq       ,
  input     [127:0]   wr_fifo_rddata      ,
  input               wr_fifo_empty       ,
  input     [8:0]     wr_fifo_rd_cnt      ,
  input               wr_fifo_rst_busy    ,

  input               rd_addr_clr         ,
  output              rd_fifo_wrreq       ,
  output    [127:0]   rd_fifo_wrdata      ,
  input               rd_fifo_alfull      ,
  input     [8:0]     rd_fifo_wr_cnt      ,
  input               rd_fifo_rst_busy    ,
  // Application interface ports
  input               ui_clk              ,
  input               ui_clk_sync_rst     ,
  input               mmcm_locked         ,
  input               init_calib_complete ,
  // Slave Interface Write Address Ports
  output    [3:0]     m_axi_awid          ,
  output reg[27:0]    m_axi_awaddr        ,
  output    [7:0]     m_axi_awlen         ,
  output    [2:0]     m_axi_awsize        ,
  output    [1:0]     m_axi_awburst       ,
  output    [0:0]     m_axi_awlock        ,
  output    [3:0]     m_axi_awcache       ,
  output    [2:0]     m_axi_awprot        ,
  output    [3:0]     m_axi_awqos         ,
  output reg          m_axi_awvalid       ,
  input               m_axi_awready       ,
  // Slave Interface Write Data Ports
  output    [127:0]   m_axi_wdata         ,
  output    [15:0]    m_axi_wstrb         ,
  output reg          m_axi_wlast         ,
  output reg          m_axi_wvalid        ,
  input               m_axi_wready        ,
  // Slave Interface Write Response Ports
  input     [3:0]     m_axi_bid           ,
  input     [1:0]     m_axi_bresp         ,
  input               m_axi_bvalid        ,
  output              m_axi_bready        ,
  // Slave Interface Read Address Ports
  output    [3:0]     m_axi_arid          ,
  output reg[27:0]    m_axi_araddr        ,
  output    [7:0]     m_axi_arlen         ,
  output    [2:0]     m_axi_arsize        ,
  output    [1:0]     m_axi_arburst       ,
  output    [0:0]     m_axi_arlock        ,
  output    [3:0]     m_axi_arcache       ,
  output    [2:0]     m_axi_arprot        ,
  output    [3:0]     m_axi_arqos         ,
  output reg          m_axi_arvalid       ,
  input               m_axi_arready       ,
  // Slave Interface Read Data Ports
  input     [3:0]     m_axi_rid           ,
  input     [127:0]   m_axi_rdata         ,
  input     [1:0]     m_axi_rresp         ,
  input               m_axi_rlast         ,
  input               m_axi_rvalid        ,
  output              m_axi_rready        
);

  localparam S_IDLE    = 7'b0000001,
             S_ARB     = 7'b0000010,
             S_WR_ADDR = 7'b0000100,
             S_WR_DATA = 7'b0001000,
             S_WR_RESP = 7'b0010000,
             S_RD_ADDR = 7'b0100000,
             S_RD_RESP = 7'b1000000;

  wire[7:0]wr_req_cnt_thresh;
  wire[7:0]rd_req_cnt_thresh;
  wire     wr_ddr3_req ;
  wire     rd_ddr3_req ;
  reg [6:0]curr_state  ;
  reg [6:0]next_state  ;
  reg      wr_rd_poll  ;  //0:allow wr  1:allow rd
  reg [7:0]wr_data_cnt ;

  assign m_axi_awid    = AXI_ID   ; //output [3:0]      m_axi_awid   
  assign m_axi_awsize  = 3'b100   ; //output [2:0]      m_axi_awsize 
  assign m_axi_awburst = 2'b01    ; //output [1:0]      m_axi_awburst
  assign m_axi_awlock  = 1'b0     ; //output [0:0]      m_axi_awlock 
  assign m_axi_awcache = 4'b0000  ; //output [3:0]      m_axi_awcache
  assign m_axi_awprot  = 3'b000   ; //output [2:0]      m_axi_awprot 
  assign m_axi_awqos   = 4'b0000  ; //output [3:0]      m_axi_awqos    
  assign m_axi_awlen   = AXI_LEN  ;
  
  assign m_axi_wstrb   = 16'hffff ; //output [15:0]     m_axi_wstrb 
  assign m_axi_wdata   = wr_fifo_rddata;

  assign m_axi_bready  = 1'b1     ; //output            m_axi_bready

  assign m_axi_arid    = AXI_ID   ; //output [3:0]      m_axi_arid   
  assign m_axi_arsize  = 3'b100   ; //output [2:0]      m_axi_arsize 
  assign m_axi_arburst = 2'b01    ; //output [1:0]      m_axi_arburst
  assign m_axi_arlock  = 1'b0     ; //output [0:0]      m_axi_arlock 
  assign m_axi_arcache = 4'b0000  ; //output [3:0]      m_axi_arcache
  assign m_axi_arprot  = 3'b000   ; //output [2:0]      m_axi_arprot 
  assign m_axi_arqos   = 4'b0000  ; //output [3:0]      m_axi_arqos
  assign m_axi_arlen   = AXI_LEN  ;

  assign m_axi_rready  = ~rd_fifo_alfull; //output            m_axi_rready

  assign wr_fifo_rdreq  = m_axi_wvalid && m_axi_wready;
  assign rd_fifo_wrreq  = m_axi_rvalid && m_axi_rready;
  assign rd_fifo_wrdata = m_axi_rdata;  

  assign wr_req_cnt_thresh = (m_axi_awlen == 1'b0)? 1'b0 : AXI_LEN-1'b1;
  assign rd_req_cnt_thresh = AXI_LEN;
  assign wr_ddr3_req = (wr_fifo_rst_busy == 1'b0) && (wr_fifo_rd_cnt >= wr_req_cnt_thresh) ? 1'b1:1'b0;
  assign rd_ddr3_req = (rd_fifo_rst_busy == 1'b0) && (rd_fifo_wr_cnt <= rd_req_cnt_thresh) ? 1'b1:1'b0;

  //m_axi_awaddr
  always@(posedge ui_clk or posedge ui_clk_sync_rst)
  begin
    if(ui_clk_sync_rst)
      m_axi_awaddr <= WR_DDR_ADDR_BEGIN;
    else if(wr_addr_clr)
      m_axi_awaddr <= WR_DDR_ADDR_BEGIN;
    else if(m_axi_awaddr >= WR_DDR_ADDR_END)
      m_axi_awaddr <= WR_DDR_ADDR_BEGIN;
    else if((curr_state == S_WR_RESP) && m_axi_bready && m_axi_bvalid && (m_axi_bresp == 2'b00) && (m_axi_bid == AXI_ID))
      m_axi_awaddr <= m_axi_awaddr + ((m_axi_awlen + 1'b1)<<4);
    else
      m_axi_awaddr <= m_axi_awaddr;
  end

  //m_axi_awvalid
  always@(posedge ui_clk or posedge ui_clk_sync_rst)
  begin
    if(ui_clk_sync_rst)
      m_axi_awvalid <= 1'b0;
    else if((curr_state == S_WR_ADDR) && m_axi_awready && m_axi_awvalid)
      m_axi_awvalid <= 1'b0;
    else if(curr_state == S_WR_ADDR)
      m_axi_awvalid <= 1'b1;
    else
      m_axi_awvalid <= m_axi_awvalid;
  end

  //m_axi_awvalid
  always@(posedge ui_clk or posedge ui_clk_sync_rst)
  begin
    if(ui_clk_sync_rst)
      m_axi_wvalid <= 1'b0;
    else if((curr_state == S_WR_DATA) && m_axi_wready && m_axi_wvalid && m_axi_wlast)
      m_axi_wvalid <= 1'b0;
    else if(curr_state == S_WR_DATA)
      m_axi_wvalid <= 1'b1;
    else
      m_axi_wvalid <= m_axi_wvalid;
  end

  //wr_data_cnt
  always@(posedge ui_clk or posedge ui_clk_sync_rst)
  begin
    if(ui_clk_sync_rst)
      wr_data_cnt <= 1'b0;
    else if(curr_state == S_ARB)
      wr_data_cnt <= 1'b0;
    else if(curr_state == S_WR_DATA && m_axi_wready && m_axi_wvalid)
      wr_data_cnt <= wr_data_cnt + 1'b1;
    else
      wr_data_cnt <= wr_data_cnt;
  end

  //m_axi_wlast
  always@(posedge ui_clk or posedge ui_clk_sync_rst)
  begin
    if(ui_clk_sync_rst)
      m_axi_wlast <= 1'b0;
    else if(curr_state == S_WR_DATA && m_axi_wready && m_axi_wvalid && m_axi_wlast)
      m_axi_wlast <= 1'b0;
    else if(curr_state == S_WR_DATA && m_axi_awlen == 8'd0)
      m_axi_wlast <= 1'b1;
    else if(curr_state == S_WR_DATA && m_axi_wready && m_axi_wvalid && (wr_data_cnt == m_axi_awlen -1'b1))
      m_axi_wlast <= 1'b1;
    else
      m_axi_wlast <= m_axi_wlast;
  end

  //m_axi_araddr
  always@(posedge ui_clk or posedge ui_clk_sync_rst)
  begin
    if(ui_clk_sync_rst)
      m_axi_araddr <= RD_DDR_ADDR_BEGIN;
    else if(rd_addr_clr)
      m_axi_araddr <= RD_DDR_ADDR_BEGIN;
    else if(m_axi_araddr >= RD_DDR_ADDR_END)
      m_axi_araddr <= RD_DDR_ADDR_BEGIN;
    else if((curr_state == S_RD_RESP) && m_axi_rready && m_axi_rvalid && m_axi_rlast && (m_axi_rresp == 2'b00) && (m_axi_rid == AXI_ID))
      m_axi_araddr <= m_axi_araddr + ((m_axi_awlen + 1'b1)<<4);
    else
      m_axi_araddr <= m_axi_araddr;
  end

  //m_axi_arvalid
  always@(posedge ui_clk or posedge ui_clk_sync_rst)
  begin
    if(ui_clk_sync_rst)
      m_axi_arvalid <= 1'b0;
    else if((curr_state == S_RD_ADDR) && m_axi_arready && m_axi_arvalid)
      m_axi_arvalid <= 1'b0;
    else if(curr_state == S_RD_ADDR)
      m_axi_arvalid <= 1'b1;
    else
      m_axi_arvalid <= m_axi_arvalid;
  end

  always@(posedge ui_clk or posedge ui_clk_sync_rst)
  begin
    if(ui_clk_sync_rst)
      wr_rd_poll <= 1'b0;
    else if(curr_state == S_ARB)
      wr_rd_poll <= ~wr_rd_poll;
    else
      wr_rd_poll <= wr_rd_poll;
  end

  //**********************************
  //state machine
  //**********************************
  always@(posedge ui_clk or posedge ui_clk_sync_rst)
  begin
    if(ui_clk_sync_rst)
      curr_state <= S_IDLE;
    else
      curr_state <= next_state;
  end

  always@(*)
  begin
    case(curr_state)
      S_IDLE:
      begin
        if(mmcm_locked && init_calib_complete)
          next_state = S_ARB;
        else
          next_state = S_IDLE;
      end

      S_ARB:
      begin
        if((wr_ddr3_req == 1'b1) && (wr_rd_poll == 1'b0))
          next_state = S_WR_ADDR;
        else if((rd_ddr3_req == 1'b1) && (wr_rd_poll == 1'b1))
          next_state = S_RD_ADDR;
        else
          next_state = S_ARB;
      end

      S_WR_ADDR:
      begin
        if(m_axi_awready && m_axi_awvalid)
          next_state = S_WR_DATA;
        else
          next_state = S_WR_ADDR;
      end

      S_WR_DATA:
      begin
        if(m_axi_wready && m_axi_wvalid && m_axi_wlast)
          next_state = S_WR_RESP;
        else
          next_state = S_WR_DATA;
      end

      S_WR_RESP:
      begin
        if(m_axi_bready && m_axi_bvalid && (m_axi_bresp == 2'b00) && (m_axi_bid == AXI_ID))
          next_state = S_ARB;
        else if(m_axi_bready && m_axi_bvalid)
          next_state = S_IDLE;
        else
          next_state = S_WR_RESP;
      end

      S_RD_ADDR:
      begin
        if(m_axi_arready && m_axi_arvalid)
          next_state = S_RD_RESP;
        else
          next_state = S_RD_ADDR;
      end

      S_RD_RESP:
      begin
        if(m_axi_rready && m_axi_rvalid && m_axi_rlast && (m_axi_rresp == 2'b00) && (m_axi_rid == AXI_ID))
          next_state = S_ARB;
        else if(m_axi_rready && m_axi_rvalid && m_axi_rlast)
          next_state = S_IDLE;
        else
          next_state = S_RD_RESP;
      end

      default: next_state = S_IDLE;
    endcase
  end

endmodule