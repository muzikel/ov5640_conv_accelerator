`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/31 15:13:31
// Design Name: 
// Module Name: wr_fifoddr_clr
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


module wr_fifoddr_clr(
  input ui_clk,
  input wrfifo_clr,
  output reg wr_addr_clr
    );      
reg wrfifo_clr_sync_ui_clk;
always@(posedge ui_clk)
  begin
    wrfifo_clr_sync_ui_clk <= wrfifo_clr;
    wr_addr_clr <= wrfifo_clr_sync_ui_clk;
  end   
    
endmodule
