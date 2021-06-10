`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/31 13:41:54
// Design Name: 
// Module Name: wr_ddr_fifo
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module rd_ddr_fifo(
    input rst,           
    input wr_clk,        
    input rd_clk,        
    input [127:0] din,           
    input wr_en,         
    input rd_en,         
    output [15 : 0] dout,         
    output full,         
    output empty,        
    output [8 : 0] rd_data_count,
    output [5 : 0] wr_data_count,
    output wr_rst_busy,  
    output rd_rst_busy  
  );
  
    rd_ddr3_fifo rd_ddr3_fifo
  (
    .rst           (rst         ), // input  wire rst
    .wr_clk        (wr_clk        ), // input  wire wr_clk
    .rd_clk        (rd_clk             ), // input  wire rd_clk
    .din           (din         ), // input  wire [15 : 0] din
    .wr_en         (wr_en        ), // input  wire wr_en
    .rd_en         (rd_en        ), // input  wire rd_en
    .dout          (dout        ), // output wire [127 : 0] dout
    .full          (full                   ), // output wire full
    .empty         (empty       ), // output wire empty
    .rd_data_count (rd_data_count      ), // output wire [5 : 0] rd_data_count
    .wr_data_count (wr_data_count                   ), // output wire [8 : 0] wr_data_count
    .wr_rst_busy   (wr_rst_busy ), // output wire wr_rst_busy
    .rd_rst_busy   (rd_rst_busy )  // output wire rd_rst_busy
  );

endmodule
