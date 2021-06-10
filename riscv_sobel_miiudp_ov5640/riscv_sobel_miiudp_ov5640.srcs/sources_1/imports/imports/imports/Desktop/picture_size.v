//****************************************Copyright (c)***********************************//
//�?术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com 
//关注微信公众平台微信号："正点原子"，免费获取FPGA & STM32资料�?
//版权�?有，盗版必究�?
//Copyright(C) 正点原子 2018-2028
//All rights reserved                               
//----------------------------------------------------------------------------------------
// File name:           picture_size
// Last modified Date:  2018/11/2 17:31:29
// Last Version:        V1.0
// Descriptions:        摄像头输出图像尺寸及帧率配置
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2018/11/2 14:26:05
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module picture_size (
    input              rst_n       ,
             
    input       [15:0] ID_lcd      ,
             
    output  reg [12:0] cmos_h_pixel,
    output  reg [12:0] cmos_v_pixel,   
    output  reg [12:0] total_h_pixel,
    output  reg [12:0] total_v_pixel,
    output  reg [23:0] sdram_max_addr
);

//parameter define
parameter  ID_4342 =   0;
parameter  ID_7084 =   1;
parameter  ID_7016 =   2;
parameter  ID_1018 =   5;

//*****************************************************
//**                    main code                      
//*****************************************************

//配置摄像头输出图像的尺寸大小
always @(*) begin             
    case(ID_lcd ) 
        ID_4342 : begin
            cmos_h_pixel   = 13'd480;    
            cmos_v_pixel   = 13'd272;
            sdram_max_addr = 23'd130560;
        end 
        ID_7084 : begin
            cmos_h_pixel   = 13'd800;    
            cmos_v_pixel   = 13'd480;           
            sdram_max_addr = 23'd384000;
        end 
        ID_7016 : begin
            cmos_h_pixel   = 13'd1024;    
            cmos_v_pixel   = 13'd600;           
            sdram_max_addr = 23'd614400;
        end    
        ID_1018 : begin
            cmos_h_pixel   = 13'd640;    
            cmos_v_pixel   = 13'd480;           
            sdram_max_addr = 23'd1024000;
        end 
    default : begin
        cmos_h_pixel   = 13'd480;
        cmos_v_pixel   = 13'd272; 
        sdram_max_addr = 23'd130560;
    end
    endcase
end 

//对HTS及VTS的配置会影响摄像头输出图像的帧率
always @(*) begin
    case(ID_lcd)
        ID_4342 : begin 
            total_h_pixel = 13'd1800;
            total_v_pixel = 13'd1000;
        end 
        ID_7084 : begin  
            total_h_pixel = 13'd1800;
            total_v_pixel = 13'd1000;
        end 
        ID_7016 : begin  
            total_h_pixel = 13'd2200;
            total_v_pixel = 13'd1000;
        end 
        ID_1018 : begin 
            total_h_pixel = 13'd2570;
            total_v_pixel = 13'd980;
        end 
    default : begin
        total_h_pixel = 13'd1800;
        total_v_pixel = 13'd1000;
    end 
    endcase
end 

endmodule 