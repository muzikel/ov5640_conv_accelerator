module rgbtogray (
	input 			clk	,		
	input 			rst_n	,			
		
	input [15:0]	RGB565_IN	,		
	input 		RGB_DATA_EN	,	
	
	output[7:0]	Gray_out	,	
	output reg 	Gray_out_EN
);

//     Gray = R*0.299 + G*0.587 + B*0.114
//     Gray = (R*76 + G*150 + B*30) >> 8    使用8位精度来进行运算
reg [14:0] RGB_RED  ;
reg [15:0] RGB_GREEN;
reg [14:0] RGB_BLUE ; 
reg [15:0] gray_temp;
reg 	   RGB_DATA_EN_d0;

wire [23:0] rgb_data  		;

assign rgb_data[23:0] = {RGB565_IN[15:11],3'b111,RGB565_IN[10:5],2'b11,RGB565_IN[4:0],3'b111};

always@(posedge clk or negedge rst_n)
	if(!rst_n)begin
		RGB_RED	 <= 'd0;
		RGB_GREEN <= 'd0; 	
	   RGB_BLUE	 <= 'd0;
	end
	else if(RGB_DATA_EN)begin
		RGB_RED	 <= rgb_data[23:16]*8'd76;
		RGB_GREEN <= rgb_data[15:8]*8'd150;
      RGB_BLUE	 <= rgb_data[7:0]*8'd30;
	end
//gray_temp	
always@(posedge clk or negedge rst_n)
	if(!rst_n)
		gray_temp <= 'd0;
	else 
		gray_temp <= RGB_RED + RGB_GREEN + RGB_BLUE;
		
always@(posedge clk or negedge rst_n)
	if(!rst_n)begin
		RGB_DATA_EN_d0 <= 1'b0;
		Gray_out_EN 	<= 1'b0;
	end
	else begin
		RGB_DATA_EN_d0 <= RGB_DATA_EN	  ;
		Gray_out_EN 	<= RGB_DATA_EN_d0 ;
	end
		
assign Gray_out = gray_temp[15:8];
/*
reg [7:0]  RGB565_IN_d0;
reg [7:0]  RGB565_IN_d1;
always@(posedge clk or negedge rst_n)
	if(!rst_n)begin
		RGB565_IN_d0 <= 0;
	        RGB565_IN_d1 <= 0;
	end
	else begin
		RGB565_IN_d0 <= RGB565_IN[7:0];
	        RGB565_IN_d1 <= RGB565_IN_d0;
	end		
assign Gray_out = RGB565_IN_d1;
************test*************************/

endmodule

