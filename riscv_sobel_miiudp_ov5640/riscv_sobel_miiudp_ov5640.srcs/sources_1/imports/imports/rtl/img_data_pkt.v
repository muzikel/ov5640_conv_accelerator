//****************************************Copyright (c)***********************************//
//�?术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com 
//关注微信公众平台微信号："正点原子"，免费获取FPGA & STM32资料�?
//版权�?有，盗版必究�?
//Copyright(C) 正点原子 2018-2028
//All rights reserved                               
//----------------------------------------------------------------------------------------
// File name:           img_data_pkt
// Last modified Date:  2018/3/26 9:52:56
// Last Version:        V1.0
// Descriptions:        图像数据封装模块
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2018/3/26 9:52:56
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module img_data_pkt
  #(
    parameter  CMOS_H_PIXEL = 11'd640,       //CMOS水平方向像素个数
    parameter  CMOS_V_PIXEL = 11'd480        //CMOS垂直方向像素个数
    )
    (
    input                 clk            ,   //时钟信号
    input                 rst_n          ,   //复位信号，低电平有效
    input        [15:0]   img_data       ,   //从sdram中读取的16位rgb565数据
    input                 udp_tx_req     ,   //udp发�?�数据请求信�?
    input                 udp_tx_done    ,   //udp发�?�数据完成信�?                               
    output  reg           img_req        ,   //图像数据请求信号
    output  reg           udp_tx_start_en,   //udp�?始发送信�?
    output       [31:0]   udp_tx_data    ,   //udp发�?�的数据
    output  reg  [15:0]   udp_tx_byte_num    //udp单包发�?�的有效字节�?
    );

//parameter define
//图像帧头，用于标志一帧数据的�?�?
localparam  IMG_FRAME_HEAD = {32'hf0_5a_a5_0f};  
//以太网帧间隙，单�?:时钟周期40ns，百兆以太网中要求帧间隙至少�?960ns
localparam  ETH_IFG = 8'd25;       
//图像数据帧间�? 时钟周期 40ns, 22'hf_ff_ff = 1048575; 1048575 * 40ns = 41.943ms
//在此处用于降低图像的发�?�帧�?,因为上位机解析图像较�?,如果数据发�?�太快图像容易卡�?
localparam  IMG_IFG = 22'hf_ff_ff;

//reg define
reg             img_ifg_done   ;  //图像帧间隙延时完成信�?          
reg    [21:0]   img_ifg_cnt    ;  //图像帧间隙延时计数器
reg    [7:0]    eth_ifg_cnt    ;  //以太网数据帧间隙延时计数�?

reg    [10:0]   img_h_cnt      ;  //图像水平像素计数�?,用于控制img_req信号
reg    [10:0]   img_v_cnt      ;  //图像垂直像素计数�?,用于添加帧头
reg             img_val_en     ;  //图像数据有效使能信号
reg             wr_sw          ;  //用于位拼接的标志
reg             wr_fifo_en     ;  //写fifo使能
reg    [31:0]   wr_fifo_data   ;  //写fifo数据
reg             head_flag      ;  //标志当前数据包是否需要添加帧�?
reg    [15:0]   img_data_t     ;  //寄存16位图像数据，用于拼接�?32位数�?
reg             fifo_empty_d0  ;  //对fifo空信号进行打�?
                               
//wire define                  
wire            fifo_empty     ;  //fifo空信�?
wire            neg_fifo_empty ;  //fifo空信号的下降�?

//*****************************************************
//**                    main code
//*****************************************************

//采fifo空信号的下降沿，当fifo_empty信号由高电平变为低电平时，说明fifo中已经有数据
assign  neg_fifo_empty = fifo_empty_d0 & (~fifo_empty);

//控制图像帧间隙延时计�?
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        img_ifg_done <= 1'b0;
        img_ifg_cnt <= 22'd0;
    end
    else begin
        img_ifg_done <= 1'b0;
        if(udp_tx_done) begin
            if(img_v_cnt == CMOS_V_PIXEL - 1'b1)
                //�?后一行图像数据发送完成，延时计数器赋�?
                img_ifg_cnt <= IMG_IFG; 
            else
                //非最后一行图像数据发送完�?
                img_ifg_done <= 1'b1;       
        end    
        else if(img_ifg_cnt !=22'd0 ) begin
            img_ifg_cnt <= img_ifg_cnt - 22'd1;
            if(img_ifg_cnt == 22'd1)
                img_ifg_done <= 1'b1;  
        end    
    end
end            

//控制以太网帧间隙
always @(posedge clk or negedge rst_n) begin
    if(!rst_n)
        eth_ifg_cnt <= 8'd0;
    else if(img_ifg_done)
        eth_ifg_cnt <= 8'd0;
    else if(eth_ifg_cnt <= ETH_IFG - 8'b1)
        eth_ifg_cnt <= eth_ifg_cnt + 8'd1;
end

//图像水平像素计数�?,用于控制img_req信号,�?次请求一行数�?
always @(posedge clk or negedge rst_n) begin
    if(!rst_n)
        img_h_cnt <= 11'b0;
    else if(img_h_cnt == 11'd0) begin
        if(eth_ifg_cnt == ETH_IFG - 8'd1)
            img_h_cnt <= CMOS_H_PIXEL;
    end
    else
        img_h_cnt <= img_h_cnt - 11'b1;
end

//图像垂直像素计数�?,用于添加帧头
always @(posedge clk or negedge rst_n) begin
    if(!rst_n)
        img_v_cnt <= 11'b0;
    else if(udp_tx_done) begin
        img_v_cnt <= img_v_cnt + 11'd1;
        if(img_v_cnt == CMOS_V_PIXEL - 1'b1)
            img_v_cnt <= 11'd0;
    end        
end

//图像请求信号,用于读取SDRAM控制模块的读使能信号
always @(posedge clk or negedge rst_n) begin
    if(!rst_n)
        img_req <= 1'b0;
    else if(img_h_cnt!=11'd0)
        img_req <= 1'b1;
    else
        img_req <= 1'b0;    
end

//sdram数据有效标志
always @(posedge clk or negedge rst_n) begin
    if(!rst_n)
        img_val_en <= 1'b0;
    else
        img_val_en <= img_req;
end            

//图像数据有效之后,向fifo中写入数�?
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        wr_fifo_en <= 1'b0;
        wr_fifo_data <= 32'b0;
        img_data_t <= 16'd0;
        wr_sw <= 1'b0;
        head_flag <= 1'b0;
    end
    else begin
        if(img_val_en) begin
            wr_sw <= ~wr_sw;
            if(wr_sw==1'b0) begin
                img_data_t <= img_data;
                //head_flag = 0，像fifo中写入帧�?
                if(img_v_cnt == 11'd0 && head_flag == 1'b0) begin
                    wr_fifo_en <= 1'b1;
                    wr_fifo_data <= IMG_FRAME_HEAD;
                    head_flag <= 1'b1; 
                end
                else    
                    wr_fifo_en <= 1'b0;
            end    
            else begin
                //16位数据转32位数据，�?32位数据写入fifo
                wr_fifo_en <= 1'b1;
                wr_fifo_data <= {img_data_t,img_data};
            end    
        end    
        else begin
            wr_fifo_en <= 1'b0;
            wr_fifo_data <= 32'b0;
            wr_sw <= 1'b0;    
            head_flag <= 1'b0;        
        end
    end    
end        

//fifo空信号打拍，用于采沿
always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)
        fifo_empty_d0 <= 1'b1;
    else
        fifo_empty_d0 <= fifo_empty;        
end

//采到fifo信号的下降沿之后,说明fifo中已经有数据,此时�?始�?�知udp模块发�?�数�?
//因为写入速度大于读出速度，在�?行数据写完之�?,不会出现fifo读空的情�?
always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0) begin
        udp_tx_start_en <= 1'b0;
        udp_tx_byte_num <= 16'd0;
    end        
    else begin
        if(neg_fifo_empty) begin
            udp_tx_start_en <= 1'b1;
            if(head_flag == 1'b0) 
                //发�?�的字节�? = 行像素数（rgb565�?*2
                udp_tx_byte_num <= {CMOS_H_PIXEL,1'b0};             
            else
                //发�?�的字节�? = 行像素数（rgb565�?*2 + 4(帧头)
                udp_tx_byte_num <= {CMOS_H_PIXEL,1'b0} + 16'd4;     
        end    
        else
            udp_tx_start_en <= 1'b0;
    end
end

//同步fifo
sync_fifo_1024x32b u_sync_fifo_1024x32b(
    .srst          (~rst_n),
    .clk         (clk),
    .din          (wr_fifo_data),
    .rd_en         (udp_tx_req),
    .wr_en         (wr_fifo_en),
    .empty         (fifo_empty),
    .full          (),
    .dout             (udp_tx_data)
    );

endmodule