//****************************************Copyright (c)***********************************//
//�?术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com 
//关注微信公众平台微信号："正点原子"，免费获取FPGA & STM32资料�?
//版权�?有，盗版必究�?
//Copyright(C) 正点原子 2018-2028
//All rights reserved                                  
//----------------------------------------------------------------------------------------
// File name:           udp
// Last modified Date:  2018/3/12 15:38:02
// Last Version:        V1.0
// Descriptions:        udp模块
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2018/3/12 15:38:04
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module udp
  #(
    //�?发板MAC地址 00-11-22-33-44-55
    parameter BOARD_MAC = 48'h00_11_22_33_44_55,      
    //�?发板IP地址 192.168.1.123     
    parameter BOARD_IP  = {8'd192,8'd168,8'd1,8'd123},   
    //目的MAC地址 ff_ff_ff_ff_ff_ff
    parameter  DES_MAC   = 48'hff_ff_ff_ff_ff_ff, 
    //目的IP地址 192.168.1.102     
    parameter  DES_IP    = {8'd192,8'd168,8'd1,8'd102}
    )
   (
    input                  eth_rx_clk  ,  //MII接收数据时钟
    input                  rst_n       ,  //复位信号，低电平有效
    input                  eth_rxdv    ,  //MII输入数据有效信号
    input        [3:0]     eth_rx_data ,  //MII输入数据
    input                  eth_tx_clk  ,  //MII发�?�数据时�?
    input                  tx_start_en ,  //以太网开始发送信�?
    input        [31:0]    tx_data     ,  //以太网待发�?�数�?  
    input        [15:0]    tx_byte_num ,  //以太网发送的有效字节�? 单位:byte                  
    output                 tx_done     ,  //以太网发送完成信�?
    output                 tx_req      ,  //读数据请求信�?   
    output                 rec_pkt_done,  //以太网单包数据接收完成信�?
    output                 rec_en      ,  //以太网接收的数据使能信号
    output       [31:0]    rec_data    ,  //以太网接收的数据
    output       [15:0]    rec_byte_num,  //以太网接收的有效字节�? 单位:byte  
    output                 eth_tx_en   ,  //MII输出数据有效信号
    output       [3:0]     eth_tx_data ,  //MII输出数据
    output                 eth_rst_n,      //以太网芯片复位信号，低电平有�?   
    input       [47:0]     macaddr    
    );

//wire define
wire           crc_en    ;                //CRC�?始校验使�?
wire           crc_clr   ;                //CRC数据复位信号 
wire    [3:0]  crc_d4    ;                //输入待校�?4位数�?

wire   [31:0]  crc_data  ;                //CRC校验数据
wire   [31:0]  crc_next  ;                //CRC下次校验完成数据

//*****************************************************
//**                    main code
//*****************************************************

assign  crc_d4 = eth_tx_data;
assign  eth_rst_n = 1'b1;                 //复位信号�?直拉�?

//以太网接收模�?    
ip_receive 
   #(
    .BOARD_MAC       (BOARD_MAC),         //参数例化
    .BOARD_IP        (BOARD_IP)
    )
   u_ip_receive(
    .clk             (eth_rx_clk),        
    .rst_n           (rst_n),             
    .eth_rxdv        (eth_rxdv),                                 
    .eth_rx_data     (eth_rx_data),       
    .rec_pkt_done    (rec_pkt_done),      
    .rec_en          (rec_en),            
    .rec_data        (rec_data),          
    .rec_byte_num    (rec_byte_num)     
    );                                    

//以太网发送模�?
ip_send
   #(
    .BOARD_MAC       (BOARD_MAC),         //参数例化
    .BOARD_IP        (BOARD_IP),
    .DES_MAC         (DES_MAC),
    .DES_IP          (DES_IP)
    )
   u_ip_send(
    .clk             (eth_tx_clk),        
    .rst_n           (rst_n),             
    .tx_start_en     (tx_start_en),                   
    .tx_data         (tx_data),           
    .tx_byte_num     (tx_byte_num),       
    .crc_data        (crc_data),          
    .crc_next        (crc_next[31:28]),   
    .tx_done         (tx_done),           
    .tx_req          (tx_req),            
    .eth_tx_en       (eth_tx_en),         
    .eth_tx_data     (eth_tx_data),       
    .crc_en          (crc_en),            
    .crc_clr         (crc_clr),
    .macaddr         (macaddr)            
    );                                      

//以太网发送CRC校验模块
crc32_d4   u_crc32_d4(
    .clk             (eth_tx_clk),                      
    .rst_n           (rst_n ),                          
    .data            (crc_d4),            
    .crc_en          (crc_en),                          
    .crc_clr         (crc_clr),                         
    .crc_data        (crc_data),                        
    .crc_next        (crc_next)                         
    );

endmodule