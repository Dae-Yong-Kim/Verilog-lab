`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/08 15:27:23
// Design Name: 
// Module Name: my_sim_block_vs_nblock
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


module my_sim_block_vs_nblock();
reg clk, a;
reg c, b;

//************** HW에서는 전혀 차이가 없으나 시뮬레이션에서만 다름*******************

//always @(posedge clk)
//    a = b;
    
//always @(posedge clk)
//    c = a; // 시뮬레이션에서 c가 a의 값을 받는게 아닌 b의 값을 받음 
    
always @(posedge clk)
    a <= b;
    
always @(posedge clk)
    c <= a; // 시뮬레이션에서 c가 a의 값을 받는다.
    
initial begin
    clk = 0;
    b = 0;
    #5 clk = 1;
    #5 clk = 0;
    b = 1;
    #5 clk = 1;
    #1 b = 0;
    #4 clk = 0;
    #5 clk = 1;
end
endmodule
