`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/06/2023 10:43:58 PM
// Design Name: 
// Module Name: PIPO
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


module PIPO(d,clk,q);

    input clk;
    input [3:0] d;
    output [3:0] q;
    
    dff F1(d[3], clk, q[3]);
    dff F2(d[2], clk, q[2]);
    dff F3(d[1], clk, q[1]);
    dff F4(d[0], clk, q[0]);
    
endmodule
