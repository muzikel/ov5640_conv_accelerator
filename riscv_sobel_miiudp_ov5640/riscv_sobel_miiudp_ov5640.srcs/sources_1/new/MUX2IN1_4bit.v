`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/01 09:18:31
// Design Name: 
// Module Name: MUX2IN1_4bit
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


module MUX2IN1_4bit(
       input [3:0] A,
       input [3:0] B,
       input Sel,
       output [3:0] O
    );
assign O = Sel ? A : B;
endmodule
