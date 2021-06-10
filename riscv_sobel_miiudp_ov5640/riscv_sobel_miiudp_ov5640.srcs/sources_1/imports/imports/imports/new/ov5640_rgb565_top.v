//****************************************Copyright (c)***********************************//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module ov5640_rgb565_top(    
    input         sys_clk    ,  //系统时钟
    input         sys_rst_n  ,  //系统复位，低电平有效
    input         clk_24M    ,
    output        cam_xclk   ,
    //摄像头 
    output        cam_rst_n  ,  //cmos 复位信号，低电平有效 ret
    output        cam_pwdn   ,  //cmos 电源休眠模式选择信号 pwd
    output        cam_scl    ,  //cmos SCCB_SCL线         scl
    inout         cam_sda    ,  //cmos SCCB_SDA线         sda
    output        sys_init_done, //系统初始化完成
    input         locked
    //SDRAM 
    );

//parameter define
parameter SLAVE_ADDR = 7'h3c          ; //OV5640的器件地址7'h3c
parameter BIT_CTRL   = 1'b1           ; //OV5640的字节地址为16位  0:8位 1:16位
parameter CLK_FREQ   = 27'd100_000_000; //i2c_dri模块的驱动时钟频率 
parameter I2C_FREQ   = 18'd250_000    ; //I2C的SCL时钟频率,不超过400KHz

//wire define
wire        rst_n          ;

wire        i2c_exec       ;  //I2C触发执行信号
wire [23:0] i2c_data       ;  //I2C要配置的地址与数据(高8位地址,低8位数据)          
wire        i2c_done       ;  //I2C寄存器配置完成信号
wire        i2c_dri_clk    ;  //I2C操作时钟
wire [ 7:0] i2c_data_r     ;  //I2C读出的数据
wire        i2c_rh_wl      ;  //I2C读写控制信号
wire        cam_init_done  ;  //摄像头初始化完成
                          

wire [12:0] cmos_h_pixel   ;  //CMOS水平方向像素个数 
wire [12:0] cmos_v_pixel   ;  //CMOS垂直方向像素个数
wire [12:0] total_h_pixel  ;  //水平总像素大小
wire [12:0] total_v_pixel  ;  //垂直总像素大小

//*****************************************************
//**                    main code
//*****************************************************
assign cam_xclk = clk_24M;
assign  rst_n = sys_rst_n & locked;
//系统初始化完成：SDRAM和摄像头都初始化完成
//避免了在SDRAM初始化过程中向里面写入数据
assign  sys_init_done = cam_init_done;
//电源休眠模式选择 0：正常模式 1：电源休眠模式
assign  cam_pwdn  = 1'b0;
assign  cam_rst_n = 1'b1;


   
//摄像头图像分辨率设置模块
picture_size u_picture_size (
    .rst_n              (rst_n),

    .ID_lcd             (16'd5),           //LCD的ID，用于配置摄像头的图像大小
                        
    .cmos_h_pixel       (cmos_h_pixel  ),   //摄像头水平方向分辨率 
    .cmos_v_pixel       (cmos_v_pixel  ),   //摄像头垂直方向分辨率  
    .total_h_pixel      (total_h_pixel ),   //用于配置HTS寄存器
    .total_v_pixel      (total_v_pixel ),   //用于配置VTS寄存器
    .sdram_max_addr     (sdram_max_addr)    //sdram读写的最大地址
    );
    
//I2C配置模块
i2c_ov5640_rgb565_cfg u_i2c_cfg(
    .clk                (i2c_dri_clk),
    .rst_n              (rst_n),
            
    .i2c_exec           (i2c_exec),
    .i2c_data           (i2c_data),
    .i2c_rh_wl          (i2c_rh_wl),        //I2C读写控制信号
    .i2c_done           (i2c_done), 
    .i2c_data_r         (i2c_data_r),   
                
    .cmos_h_pixel       (cmos_h_pixel),     //CMOS水平方向像素个数
    .cmos_v_pixel       (cmos_v_pixel) ,    //CMOS垂直方向像素个数
    .total_h_pixel      (total_h_pixel),    //水平总像素大小
    .total_v_pixel      (total_v_pixel),    //垂直总像素大小
        
    .init_done          (cam_init_done) 
    );    

//I2C驱动模块
i2c_dri #(
    .SLAVE_ADDR         (SLAVE_ADDR),       //参数传递
    .CLK_FREQ           (CLK_FREQ  ),              
    .I2C_FREQ           (I2C_FREQ  ) 
    )
u_i2c_dr(
    .clk                (sys_clk),
    .rst_n              (rst_n     ),

    .i2c_exec           (i2c_exec  ),   
    .bit_ctrl           (BIT_CTRL  ),   
    .i2c_rh_wl          (i2c_rh_wl),        //固定为0，只用到了IIC驱动的写操作   
    .i2c_addr           (i2c_data[23:8]),   
    .i2c_data_w         (i2c_data[7:0]),   
    .i2c_data_r         (i2c_data_r),   
    .i2c_done           (i2c_done  ),
    
    .scl                (cam_scl   ),   
    .sda                (cam_sda   ),   

    .dri_clk            (i2c_dri_clk)       //I2C操作时钟
    );


endmodule 