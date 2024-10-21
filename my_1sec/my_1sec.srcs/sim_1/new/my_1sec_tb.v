`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/21 11:33:55
// Design Name: 
// Module Name: my_1sec_tb
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


module my_1sec_tb();

reg rst, clk;
wire led;
wire [6:0] fnd;

my_1sec #(.CLK_FREQ(10)) uut(.RST(rst), .CLK(clk), .LED(led), .FND(fnd));

initial begin // reset 설정
    rst = 1'b1;
    #(100);
    rst = 1'b0;
end

initial begin // clock 설정
    clk = 1'b0;
    forever #1 clk = ~clk;
end
endmodule
