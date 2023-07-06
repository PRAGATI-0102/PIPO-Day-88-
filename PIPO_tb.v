`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/06/2023 10:48:18 PM
// Design Name: 
// Module Name: PIPO_tb
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


module PIPO_tb();

    reg clk;
    reg [3:0] d;
    wire [3:0] q;
    
    PIPO dut(.d(d),.clk(clk),.q(q));
    
    initial
    begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    
    initial 
    begin
        d = 4'b1100;
        #10;
        d = 4'b1101;
        #10;
        d = 4'b1111;
        #10;
        d = 4'b0110;
        #10;
     end
     
     initial
     begin
        $monitor($time,"d = %b,clk = %b,q = %b",d,clk,q);
        #40;
        $finish;
     end
         
endmodule
