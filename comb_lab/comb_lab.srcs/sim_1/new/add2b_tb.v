`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/02/19 09:39:28
// Design Name: 
// Module Name: add2b_tb
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


module add2b_tb();
parameter CLK_PD = 8.0;

reg [3:0] a;
wire [7:0] y;

 add2b uut_0 ( .a(a), .y(y));

initial begin
    a = 0;
    #(CLK_PD*10);
    a = 1;
    #(CLK_PD*10);
    a = 2;
    #(CLK_PD*10);
    a = 3;
    #(CLK_PD*10);
    a = 4;
    #(CLK_PD*10);
    a = 5;
    #(CLK_PD*10);
    a = 6;
    #(CLK_PD*10);
    a = 7;
    #(CLK_PD*10);
    a = 8;
    #(CLK_PD*10);
    a = 9;
    #1000;
    $finish;
end

endmodule
