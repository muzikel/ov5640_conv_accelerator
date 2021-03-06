module Video_Image_Processor
    #(
    parameter  SOBEL_THRESHOLD = 128//sobeléå??
    )
    (
    input   clk,    //cmos åç´ æ¶é
    input   rst_n,  
    
    //é¢å¤çå¾åæ°æ?
    input        in_frame_vsync, //é¢å¾åæ°æ®åææä¿¡å·  
    input        in_frame_href,  //é¢å¾åæ°æ®è¡ææä¿¡å·  
    input        in_frame_clken, //é¢å¾åæ°æ®è¾å¥ä½¿è½æä¿¡å·
    input [15:0] in_img_Y, //è¾å¥RGB565æ°æ®
        
    //å¤çåçå¾åæ°æ®
    output       out_frame_vsync, //å¤çåçå¾åæ°æ®åææä¿¡å?  
    output       out_frame_href,  //å¤çåçå¾åæ°æ®è¡ææä¿¡å?  
    output       out_frame_clken, //å¤çåçå¾åæ°æ®è¾åºä½¿è½æä¿¡å?
    output       out_img_Bit        //å¤çåçç°åº¦æ°æ®

);

//wire define 
wire [7:0] img_y ;
wire       frame_vsync;
wire       frame_hsync;
wire       post_frame_de;

//*****************************************************
//**                    main code
//*****************************************************

rgb2ycbcr u_rgb2ycbcr(
    .clk             (clk),
    .rst_n           (rst_n),
    
    .pre_frame_vsync (in_frame_vsync),
    .pre_frame_hsync (in_frame_href),
    .pre_frame_de    (in_frame_clken),
    .img_red         (in_img_Y[15:11]),
    .img_green       (in_img_Y[10:5]),
    .img_blue        (in_img_Y[4:0]),
    
    .frame_vsync     (frame_vsync),
    .frame_hsync     (frame_hsync),
    .post_frame_de   (post_frame_de),
    .img_y           (img_y),
    .img_cb          (),
    .img_cr          ()
);

VIP_Sobel_Edge_Detector 
    #(
    .SOBEL_THRESHOLD  (SOBEL_THRESHOLD)//sobeléå??
    )
u_VIP_Sobel_Edge_Detector(
    .clk (clk),   
    .rst_n (rst_n),  
    
    //é¢å¤çæ°æ?
    .per_frame_vsync (frame_vsync),   //é¢å¤çå¸§ææä¿¡å·
    .per_frame_href  (frame_hsync),   //é¢å¤çè¡ææä¿¡å·
    .per_frame_clken (post_frame_de), //é¢å¤çå¾åä½¿è½ä¿¡å?
    .per_img_Y       (img_y),         //è¾å¥ç°åº¦æ°æ®
    
    //å¤çåçæ°æ®
    .post_frame_vsync (out_frame_vsync), //å¤çåå¸§ææä¿¡å·
    .post_frame_href  (out_frame_href),  //å¤çåè¡ææä¿¡å·
    .post_frame_clken (out_frame_clken), //è¾åºä½¿è½ä¿¡å·
    .post_img_Bit     (out_img_Bit)     //è¾åºåç´ æææ å¿(1: Value, 0:inValid)
    
    //ç¨æ·æ¥å£
//    .Sobel_Threshold  (Sobel_Threshold) //Sobel éå??
);

endmodule 