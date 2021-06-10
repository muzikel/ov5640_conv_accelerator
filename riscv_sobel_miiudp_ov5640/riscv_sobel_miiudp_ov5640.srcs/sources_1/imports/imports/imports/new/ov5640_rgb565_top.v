//****************************************Copyright (c)***********************************//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module ov5640_rgb565_top(    
    input         sys_clk    ,  //ϵͳʱ��
    input         sys_rst_n  ,  //ϵͳ��λ���͵�ƽ��Ч
    input         clk_24M    ,
    output        cam_xclk   ,
    //����ͷ 
    output        cam_rst_n  ,  //cmos ��λ�źţ��͵�ƽ��Ч ret
    output        cam_pwdn   ,  //cmos ��Դ����ģʽѡ���ź� pwd
    output        cam_scl    ,  //cmos SCCB_SCL��         scl
    inout         cam_sda    ,  //cmos SCCB_SDA��         sda
    output        sys_init_done, //ϵͳ��ʼ�����
    input         locked
    //SDRAM 
    );

//parameter define
parameter SLAVE_ADDR = 7'h3c          ; //OV5640��������ַ7'h3c
parameter BIT_CTRL   = 1'b1           ; //OV5640���ֽڵ�ַΪ16λ  0:8λ 1:16λ
parameter CLK_FREQ   = 27'd100_000_000; //i2c_driģ�������ʱ��Ƶ�� 
parameter I2C_FREQ   = 18'd250_000    ; //I2C��SCLʱ��Ƶ��,������400KHz

//wire define
wire        rst_n          ;

wire        i2c_exec       ;  //I2C����ִ���ź�
wire [23:0] i2c_data       ;  //I2CҪ���õĵ�ַ������(��8λ��ַ,��8λ����)          
wire        i2c_done       ;  //I2C�Ĵ�����������ź�
wire        i2c_dri_clk    ;  //I2C����ʱ��
wire [ 7:0] i2c_data_r     ;  //I2C����������
wire        i2c_rh_wl      ;  //I2C��д�����ź�
wire        cam_init_done  ;  //����ͷ��ʼ�����
                          

wire [12:0] cmos_h_pixel   ;  //CMOSˮƽ�������ظ��� 
wire [12:0] cmos_v_pixel   ;  //CMOS��ֱ�������ظ���
wire [12:0] total_h_pixel  ;  //ˮƽ�����ش�С
wire [12:0] total_v_pixel  ;  //��ֱ�����ش�С

//*****************************************************
//**                    main code
//*****************************************************
assign cam_xclk = clk_24M;
assign  rst_n = sys_rst_n & locked;
//ϵͳ��ʼ����ɣ�SDRAM������ͷ����ʼ�����
//��������SDRAM��ʼ��������������д������
assign  sys_init_done = cam_init_done;
//��Դ����ģʽѡ�� 0������ģʽ 1����Դ����ģʽ
assign  cam_pwdn  = 1'b0;
assign  cam_rst_n = 1'b1;


   
//����ͷͼ��ֱ�������ģ��
picture_size u_picture_size (
    .rst_n              (rst_n),

    .ID_lcd             (16'd5),           //LCD��ID��������������ͷ��ͼ���С
                        
    .cmos_h_pixel       (cmos_h_pixel  ),   //����ͷˮƽ����ֱ��� 
    .cmos_v_pixel       (cmos_v_pixel  ),   //����ͷ��ֱ����ֱ���  
    .total_h_pixel      (total_h_pixel ),   //��������HTS�Ĵ���
    .total_v_pixel      (total_v_pixel ),   //��������VTS�Ĵ���
    .sdram_max_addr     (sdram_max_addr)    //sdram��д������ַ
    );
    
//I2C����ģ��
i2c_ov5640_rgb565_cfg u_i2c_cfg(
    .clk                (i2c_dri_clk),
    .rst_n              (rst_n),
            
    .i2c_exec           (i2c_exec),
    .i2c_data           (i2c_data),
    .i2c_rh_wl          (i2c_rh_wl),        //I2C��д�����ź�
    .i2c_done           (i2c_done), 
    .i2c_data_r         (i2c_data_r),   
                
    .cmos_h_pixel       (cmos_h_pixel),     //CMOSˮƽ�������ظ���
    .cmos_v_pixel       (cmos_v_pixel) ,    //CMOS��ֱ�������ظ���
    .total_h_pixel      (total_h_pixel),    //ˮƽ�����ش�С
    .total_v_pixel      (total_v_pixel),    //��ֱ�����ش�С
        
    .init_done          (cam_init_done) 
    );    

//I2C����ģ��
i2c_dri #(
    .SLAVE_ADDR         (SLAVE_ADDR),       //��������
    .CLK_FREQ           (CLK_FREQ  ),              
    .I2C_FREQ           (I2C_FREQ  ) 
    )
u_i2c_dr(
    .clk                (sys_clk),
    .rst_n              (rst_n     ),

    .i2c_exec           (i2c_exec  ),   
    .bit_ctrl           (BIT_CTRL  ),   
    .i2c_rh_wl          (i2c_rh_wl),        //�̶�Ϊ0��ֻ�õ���IIC������д����   
    .i2c_addr           (i2c_data[23:8]),   
    .i2c_data_w         (i2c_data[7:0]),   
    .i2c_data_r         (i2c_data_r),   
    .i2c_done           (i2c_done  ),
    
    .scl                (cam_scl   ),   
    .sda                (cam_sda   ),   

    .dri_clk            (i2c_dri_clk)       //I2C����ʱ��
    );


endmodule 