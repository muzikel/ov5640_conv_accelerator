`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/01 10:43:34
// Design Name: 
// Module Name: MUX2IN1
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


module MUX2IN1(
       input A,
       input B,
       input Sel,
       output O
    );
 assign O = (A & Sel) | (~Sel & B);
endmodule
