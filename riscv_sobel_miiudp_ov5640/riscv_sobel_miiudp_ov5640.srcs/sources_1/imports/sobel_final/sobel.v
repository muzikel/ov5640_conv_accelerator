module sobel #(parameter DWIDTH=8, KWIDTH=4, OWIDTH = DWIDTH+KWIDTH+4)(
input clk ,
input rst_n,
input signed [DWIDTH-1:0] d_in0,
input signed [DWIDTH-1:0] d_in1,
input signed [DWIDTH-1:0] d_in2,
input signed [DWIDTH-1:0] d_in3,
input signed [DWIDTH-1:0] d_in4,
input signed [DWIDTH-1:0] d_in5,
input signed [DWIDTH-1:0] d_in6,
input signed [DWIDTH-1:0] d_in7,
input signed [DWIDTH-1:0] d_in8,
input signed [KWIDTH-1:0] h_in0,
input signed [KWIDTH-1:0] h_in1,
input signed [KWIDTH-1:0] h_in2,
input signed [KWIDTH-1:0] h_in3,
input signed [KWIDTH-1:0] h_in4,
input signed [KWIDTH-1:0] h_in5,
input signed [KWIDTH-1:0] h_in6,
input signed [KWIDTH-1:0] h_in7,
input signed [KWIDTH-1:0] h_in8,
input signed [KWIDTH-1:0] v_in0,
input signed [KWIDTH-1:0] v_in1,
input signed [KWIDTH-1:0] v_in2,
input signed [KWIDTH-1:0] v_in3,
input signed [KWIDTH-1:0] v_in4,
input signed [KWIDTH-1:0] v_in5,
input signed [KWIDTH-1:0] v_in6,
input signed [KWIDTH-1:0] v_in7,
input signed [KWIDTH-1:0] v_in8,
input data_rady,
output [OWIDTH-1:0] o_result,
output reg out_en
);

reg signed [DWIDTH+KWIDTH-1:0] h_mul_tmp [8:0];
reg signed [DWIDTH+KWIDTH-1:0] v_mul_tmp [8:0];
always@(posedge clk)begin
  if(data_rady)begin
    h_mul_tmp[0] <= d_in0 * h_in0;
    h_mul_tmp[1] <= d_in1 * h_in1;
    h_mul_tmp[2] <= d_in2 * h_in2;
    h_mul_tmp[3] <= d_in3 * h_in3;
    h_mul_tmp[4] <= d_in4 * h_in4;
    h_mul_tmp[5] <= d_in5 * h_in5;
    h_mul_tmp[6] <= d_in6 * h_in6;
    h_mul_tmp[7] <= d_in7 * h_in7;
    h_mul_tmp[8] <= d_in8 * h_in8;
    v_mul_tmp[0] <= d_in0 * v_in0;
    v_mul_tmp[1] <= d_in1 * v_in1;
    v_mul_tmp[2] <= d_in2 * v_in2;
    v_mul_tmp[3] <= d_in3 * v_in3;
    v_mul_tmp[4] <= d_in4 * v_in4;
    v_mul_tmp[5] <= d_in5 * v_in5;
    v_mul_tmp[6] <= d_in6 * v_in6;
    v_mul_tmp[7] <= d_in7 * v_in7;
    v_mul_tmp[8] <= d_in8 * v_in8;
 end
end
wire signed [DWIDTH+KWIDTH-1:0] h_mul_tmp6;
wire signed [DWIDTH+KWIDTH-1:0] h_mul_tmp7;
wire signed [DWIDTH+KWIDTH-1:0] h_mul_tmp8;
assign h_mul_tmp6 = d_in6 * h_in6;
assign h_mul_tmp7 = d_in7 * h_in7;
assign h_mul_tmp8 = d_in8 * h_in8;
reg mul_rady;
always@(posedge clk)begin
  if(data_rady)begin
     mul_rady <= 1'b1;
  end
  else begin
     mul_rady <= 1'b0;
  end
end

wire signed [OWIDTH-1:0] h_tmp; 
assign h_tmp =h_mul_tmp[0]+
              h_mul_tmp[1]+
              h_mul_tmp[2]+
              h_mul_tmp[3]+
              h_mul_tmp[4]+
              h_mul_tmp[5]+
              h_mul_tmp[6]+
              h_mul_tmp[7]+
              h_mul_tmp[8];
wire signed [OWIDTH-1:0] v_tmp; 
assign v_tmp =v_mul_tmp[0]+
              v_mul_tmp[1]+
              v_mul_tmp[2]+
              v_mul_tmp[3]+
              v_mul_tmp[4]+
              v_mul_tmp[5]+
              v_mul_tmp[6]+
              v_mul_tmp[7]+
              v_mul_tmp[8];
wire [OWIDTH-1:0] abs_h_tmp;
wire [OWIDTH-1:0] abs_v_tmp;
assign abs_h_tmp = h_tmp[OWIDTH-1]? ~h_tmp+1 : h_tmp;
assign abs_v_tmp = v_tmp[OWIDTH-1]? ~v_tmp+1 : v_tmp;

reg [OWIDTH-1:0] o_tmp; 
always@(posedge clk)begin
    if(mul_rady)begin
         o_tmp <= abs_h_tmp +  abs_v_tmp;
    end
end
assign o_result = o_tmp;
always@(posedge clk or negedge rst_n)begin
  if(~rst_n)begin
      out_en <=1'b0;
  end
  else if(mul_rady)begin
     out_en <= 1'b1;
  end
  else begin
     out_en <= 1'b0;
  end
end


endmodule
