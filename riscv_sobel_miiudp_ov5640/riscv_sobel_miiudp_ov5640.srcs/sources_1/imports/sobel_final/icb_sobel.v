`define REG_HP_IN      4'b0000 //BASEADDR+0x00 
`define REG_VP_IN      4'b0001 //BASEADDR+0x04 
`define REG_ADDR       4'b0010 //BASEADDR+0x08
`define REG_SHIFT      4'b0011 //BASEADDR+0x0C
`define REG_UDPMAC1    4'b0100 //BASEADDR+0x0C
`define REG_UDPMAC2    4'b0101 //BASEADDR+0x0C

module icb_sobel #(
    parameter AW = 32, 
    parameter DW = 32
) (
  input  clk,  
  input  rst_n,
  input              i_icb_cmd_valid, 
  output             i_icb_cmd_ready, 
  input  [1-1:0]     i_icb_cmd_read, 
  input  [AW-1:0]    i_icb_cmd_addr, 
  input  [DW-1:0]    i_icb_cmd_wdata, 
  input  [DW/8-1:0]  i_icb_cmd_wmask,
  input  [1:0]       i_icb_cmd_size,

  output reg         i_icb_rsp_valid, 
  input              i_icb_rsp_ready, 
  output             i_icb_rsp_err,
  output reg [DW-1:0]i_icb_rsp_rdata, 
  
  input         fifo_clk, //25MHz
  input         wr_en   ,
  input  [15:0] rgb_in  ,
  output reg [47:0] macaddr,


  input       async_clk  ,//100MHz
  
/* fifo_async ip #0 */
//rd_clk=100MHz
//wr_clk=25MHz
  output [7:0] data_gray_out ,
  output       wr_gray_en    ,
  input  [7:0] data_gray_in  ,
  output       rd_gray_en    ,
  input        rdempty       ,

/* fifo_async ip #0 */
//rd_clk=25MHz
//wr_clk=100MHz
  output [15:0] data_rgb_out ,
  output        wr_rgb_en    

);

/********************************icb configure***********************/
localparam BASE_REGION_MSB = 5;
reg [DW-1:0] addr;
reg [DW-1:0] HP_in [0:8]; //[0]:kernel size //[1]:precision
reg [DW-1:0] VP_in [0:8];
reg [DW-1:0] shift_num  ;

wire [3 :0] s_icb_addr = i_icb_cmd_addr [BASE_REGION_MSB:2];
wire [31:0] valid_icb_cmd_addr = addr;

always @(*) begin 
    case(s_icb_addr)
         `REG_HP_IN: i_icb_rsp_valid = 1'b1; 
         `REG_VP_IN: i_icb_rsp_valid = 1'b1;
         `REG_ADDR : i_icb_rsp_valid = 1'b1;
         `REG_SHIFT: i_icb_rsp_valid = 1'b1;
         `REG_UDPMAC1: i_icb_rsp_valid = 1'b1;
         `REG_UDPMAC2: i_icb_rsp_valid = 1'b1;
        default    : i_icb_rsp_valid = 1'b0;
    endcase  
end



always @(posedge clk or negedge rst_n) begin
    if (~rst_n)begin
            HP_in[0] <= -1;
            HP_in[1] <= -2;
            HP_in[2] <= -1;
            HP_in[3] <=  0;
            HP_in[4] <=  0;
            HP_in[5] <=  0;
            HP_in[6] <=  1;
            HP_in[7] <=  2;
            HP_in[8] <=  1;
            VP_in[0] <= -1;
            VP_in[1] <=  0;
            VP_in[2] <=  1;
            VP_in[3] <= -2;
            VP_in[4] <=  0;
            VP_in[5] <=  2;
            VP_in[6] <= -1;
            VP_in[7] <=  0;
            VP_in[8] <=  1;
            shift_num <= 60;
            //macaddr <= 48'h54_05_DB_6A_F8_12;
        end
    else if ((~i_icb_cmd_read) && i_icb_rsp_ready)begin
        case(s_icb_addr)
            `REG_HP_IN: HP_in[valid_icb_cmd_addr]  <= i_icb_cmd_wdata; 
            `REG_VP_IN: VP_in[valid_icb_cmd_addr]  <= i_icb_cmd_wdata;
            `REG_ADDR : addr   <= i_icb_cmd_wdata;
            `REG_SHIFT: shift_num <= i_icb_cmd_wdata;
            `REG_UDPMAC1: macaddr[31:0] <= i_icb_cmd_wdata;
            `REG_UDPMAC2: macaddr[47:32] <= i_icb_cmd_wdata[15:0];
        endcase  
    end 
end

always @(*) begin 
    case(s_icb_addr)
      `REG_HP_IN: i_icb_rsp_rdata = HP_in[valid_icb_cmd_addr]; 
      `REG_VP_IN: i_icb_rsp_rdata = VP_in[valid_icb_cmd_addr];
      `REG_ADDR : i_icb_rsp_rdata = addr ;
      `REG_SHIFT: i_icb_rsp_rdata = shift_num;
      `REG_UDPMAC1:i_icb_rsp_rdata = macaddr[31:0];
      `REG_UDPMAC2:i_icb_rsp_rdata = macaddr[47:32];
      default   : i_icb_rsp_rdata = 0;
    endcase  
end

/********************************fifo input***********************/
//rgb input process
wire [7:0] Gray_out;
wire       Gray_out_EN;
rgbtogray u_rgbtogry(
       	.clk		(fifo_clk),		
       	.rst_n		(rst_n),	
       	
       	.RGB565_IN	(rgb_in),		
       	.RGB_DATA_EN    (wr_en),	
       	
       	.Gray_out	(Gray_out),	
       	.Gray_out_EN    (Gray_out_EN)
       );

localparam data_width = 8;
localparam data_depth = 256;
localparam addr_width = 8;

wire [7:0] dout;
reg async_rd_en;

/********************fifo_ip******************/
//wire rdempty;
reg valid ;
always@(posedge async_clk or negedge rst_n)begin
	if(!rst_n)
		valid <='d0;
	else if(async_rd_en && ~rdempty)
		valid <= 1'b1 ;
	else
		valid <= 1'b0 ;
end

assign data_gray_out = Gray_out    ;
assign wr_gray_en    = Gray_out_EN ;
assign dout          = data_gray_in;
assign rd_gray_en    = async_rd_en ;
/*
fifo_ip u_fifo_ip(
	.data   (Gray_out     ),
	.rdclk  (async_clk    ),
	.rdreq  (async_rd_en  ),
	.wrclk  (fifo_clk     ),
	.wrreq  (Gray_out_EN  ),
	.q      (dout         ),
	.rdempty(rdempty      ),
	.wrfull ( )
	);
*/
/********************fifo_ip******************/
/*
wire valid 
fifo_async #(data_width, data_depth, addr_width) u_fifo_async_input(
    .rst_n (rst_n       ),
    .wr_clk(fifo_clk    ),
    .wr_en (Gray_out_EN ),
    .din   (Gray_out    ),         
    .rd_clk(async_clk   ),
    .rd_en (async_rd_en ),
    .valid (valid       ),
    .dout  (dout        ),
    .empty (            ),
    .full  (            ) 
    );
*/


//generate asyne read en
localparam COL_NUM = 640;
localparam ROW_NUM = 480;
reg  [9:0] COL_cnt;
reg  [9:0] ROW_cnt;
//COL_couter
always@(posedge async_clk or negedge rst_n)begin
	if(!rst_n)
		COL_cnt <='d0;
	else if(COL_cnt == (COL_NUM - 1'b1)&& valid)
		COL_cnt <='d0;
	else if(valid)
		COL_cnt <= COL_cnt + 1'b1;
end
//ROW_couter
always@(posedge async_clk or negedge rst_n)begin
	if(!rst_n)
		ROW_cnt <='d0;
	else if(COL_cnt == (COL_NUM - 1'b1) && ROW_cnt == (ROW_NUM - 1'b1) && valid)
		ROW_cnt <='d0;
	else if(COL_cnt == (COL_NUM - 1'b1) && valid)
		ROW_cnt <= ROW_cnt + 1'b1;
end

//async_rd_en

wire zero_in = ~async_rd_en; //input zero
reg [9:0] zero_cnt;
always@(posedge async_clk or negedge rst_n)begin
	if(!rst_n)
		zero_cnt <= 10'b0;
        else if(zero_in&&(~valid))
                zero_cnt <= zero_cnt  + 1'b1;
	else 
		zero_cnt <= 10'b0;
end


always@(posedge async_clk or negedge rst_n)begin
	if(!rst_n)
		async_rd_en <= 1'b0;
	else if(COL_cnt == 0 && ROW_cnt == 0 && (zero_cnt == COL_NUM+3))
                async_rd_en <= 1'b1;
        else if(COL_cnt == (COL_NUM - 1'b1)&&valid)
                async_rd_en <= 1'b0;
        else if(ROW_cnt != 0 && (zero_cnt == 10'b1))
                async_rd_en <= 1'b1;  
end






//line buffer
reg [7:0] line_buf0 [COL_NUM+1:0];
reg [7:0] line_buf1 [COL_NUM+1:0];
reg [7:0] line_buf2 [COL_NUM+1:0];
genvar i;
generate
    for(i=1; i<COL_NUM+2; i=i+1)begin: line_bf_in
       always@(posedge async_clk or negedge rst_n)begin
            if(!rst_n)begin
                line_buf0[i]<=8'b0;
                line_buf1[i]<=8'b0;
                line_buf2[i]<=8'b0;
            end
            else if(valid)begin
                line_buf0[i]<=line_buf0[i-1];
                line_buf1[i]<=line_buf1[i-1];
                line_buf2[i]<=line_buf2[i-1];
            end
            else if(zero_in)begin
                line_buf0[i]<=line_buf0[i-1];
                line_buf1[i]<=line_buf1[i-1];
                line_buf2[i]<=line_buf2[i-1];
            end
       end 
    end
endgenerate
wire [7:0] test1 =  line_buf0[0];
wire [7:0] test2 =  line_buf0[1];
wire [7:0] line_buf0_last =  line_buf0[COL_NUM+1];
wire [7:0] line_buf1_last =  line_buf1[COL_NUM+1];
wire [7:0] line_buf2_last =  line_buf2[COL_NUM+1];
wire [7:0] line_buf0_first =  line_buf0[0];
wire [7:0] line_buf1_first =  line_buf1[0];
wire [7:0] line_buf2_first =  line_buf2[0];

always@(posedge async_clk or negedge rst_n)begin
     if(!rst_n)begin
         line_buf0[0]<=8'b0;
         line_buf1[0]<=8'b0;
         line_buf2[0]<=8'b0;
     end
     else if(valid)begin
         line_buf0[0]<=dout;
         line_buf1[0]<=line_buf0[COL_NUM+1];
         line_buf2[0]<=line_buf1[COL_NUM+1];
     end
     else if(zero_in)begin
         line_buf0[0]<=8'b0;
         line_buf1[0]<=line_buf0[COL_NUM+1];
         line_buf2[0]<=line_buf1[COL_NUM+1];
     end

end

//data_rady
reg data_rady;
reg data_flag;
always@(posedge async_clk or negedge rst_n)begin
	if(!rst_n) begin
		data_rady <= 1'b0;
		data_flag <= 1'b0;
	end
	else if((COL_cnt == 0)&&(ROW_cnt >= 2))begin
		data_rady <= 1'b1;
		data_flag <= 1'b1;
	end
	else if((COL_cnt == (COL_NUM-1)||((zero_cnt >= COL_NUM)&&(zero_cnt <= COL_NUM+1))))
         data_rady <= 1'b0;
	else if( COL_cnt == 0 && ROW_cnt == 0 && data_flag)
	   data_rady <= 1'b1;
//   else if((COL_cnt == (COL_NUM-1)))
	//	data_rady <= 1'b0;
end

//rgb output
localparam DWIDTH = 8;
localparam KWIDTH = 4;
localparam OWIDTH = DWIDTH+KWIDTH+4;


//output
wire [OWIDTH-1:0] o_result;
wire [OWIDTH-1:0] o_result_tmp;
wire out_en;
wire [OWIDTH-1:0] out_to_fifo;
assign out_to_fifo = o_result > shift_num ? 16'hffff : 16'h0000;
//assign o_result_tmp = o_result<<shift_num[3:0];
//wire [OWIDTH-1:0] out_to_fifo = {o_result_tmp[OWIDTH-1:OWIDTH-5],o_result_tmp[OWIDTH-1:OWIDTH-6],o_result_tmp[OWIDTH-1:OWIDTH-5]};
//wire [OWIDTH-1:0] out_to_fifo = o_result;

sobel #(DWIDTH+1, KWIDTH, OWIDTH) u_sobel(
    .clk      (async_clk  ),
    .rst_n    (rst_n     ),
    .d_in0    ({1'b0,line_buf2[COL_NUM+1]}),
    .d_in1    ({1'b0,line_buf2[COL_NUM  ]}),
    .d_in2    ({1'b0,line_buf2[COL_NUM-1]}),
    .d_in3    ({1'b0,line_buf1[COL_NUM+1]}),
    .d_in4    ({1'b0,line_buf1[COL_NUM  ]}),
    .d_in5    ({1'b0,line_buf1[COL_NUM-1]}),
    .d_in6    ({1'b0,line_buf0[COL_NUM+1]}),
    .d_in7    ({1'b0,line_buf0[COL_NUM  ]}),
    .d_in8    ({1'b0,line_buf0[COL_NUM-1]}),
    .h_in0    (HP_in[0][KWIDTH-1:0] ),
    .h_in1    (HP_in[1][KWIDTH-1:0] ),
    .h_in2    (HP_in[2][KWIDTH-1:0] ),
    .h_in3    (HP_in[3][KWIDTH-1:0] ),
    .h_in4    (HP_in[4][KWIDTH-1:0] ),
    .h_in5    (HP_in[5][KWIDTH-1:0] ),
    .h_in6    (HP_in[6][KWIDTH-1:0] ),
    .h_in7    (HP_in[7][KWIDTH-1:0] ),
    .h_in8    (HP_in[8][KWIDTH-1:0] ),
    .v_in0    (VP_in[0][KWIDTH-1:0] ),
    .v_in1    (VP_in[1][KWIDTH-1:0] ),
    .v_in2    (VP_in[2][KWIDTH-1:0] ),
    .v_in3    (VP_in[3][KWIDTH-1:0] ),
    .v_in4    (VP_in[4][KWIDTH-1:0] ),
    .v_in5    (VP_in[5][KWIDTH-1:0] ),
    .v_in6    (VP_in[6][KWIDTH-1:0] ),
    .v_in7    (VP_in[7][KWIDTH-1:0] ),
    .v_in8    (VP_in[8][KWIDTH-1:0] ),
    .data_rady(data_rady&(valid|zero_in)),
    .o_result (o_result ),
    .out_en   (out_en   )
);
wire [31:0] test = HP_in[7];
//output to fifo
localparam data_width_out = 16;
localparam data_depth_out = 256;
localparam addr_width_out = 8;
assign i_icb_cmd_ready = 1'b1;
/************************fifo_ip*****************/
/*
wire rdempty_out;
reg valid_out ;
always@(posedge fifo_clk or negedge rst_n)begin
	if(!rst_n)
		valid_out <='d0;
	else if(rd_en && ~rdempty_out)
		valid_out <= 1'b1 ;
	else
		valid_out <= 1'b0 ;
end
*/
assign data_rgb_out = out_to_fifo;
assign wr_rgb_en    = out_en;

/*
fifo_out u_fifo_out(
	.data   (out_to_fifo  ),
	.rdclk  (fifo_clk     ),
	.rdreq  (rd_en  ),
	.wrclk  (async_clk    ),
	.wrreq  (out_en       ),
	.q      (rgb_out      ),
	.rdempty(rdempty_out    ),
	.wrfull ( )
	);
wire valid_out;
fifo_async #(data_width_out, data_depth_out, addr_width_out) u_fifo_async_output(
    .rst_n (rst_n       ),
    .wr_clk(async_clk   ),
    .wr_en (out_en      ),
    .din   (out_to_fifo ),         
    .rd_clk(fifo_clk    ),
    .rd_en (rd_en       ),
    .valid (valid_out   ),
    .dout  (rgb_out     ),
    .empty (            ),
    .full  (            ) 
    );
*/
/*
reg [19:0] test_counter;
reg finfish;
always@(posedge fifo_clk or negedge rst_n)begin
	if(!rst_n) begin
		test_counter <='d0;
		finfish      <= 1'b0;
	end
	else if(test_counter == 307200-1 )begin
		test_counter <='d0; 
	   finfish      <= 1'b1;	
	end
	else if(rd_en && valid_out)begin
		test_counter <=  test_counter + 1'b1;
	end
end
*/
//fifo_ip u_fifo_test();
//fifo_out u_fifo_outtest();
endmodule
