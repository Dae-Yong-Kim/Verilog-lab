`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/21 15:47:32
// Design Name: 
// Module Name: my_sr_tb
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


module my_sr_tb();
reg rst, clk;
reg [7:0] seed;
wire led;

my_sr uut(.RST(rst), .CLK(clk), .SEED(seed), .LED(led));

initial begin // reset ����
    rst = 1;
    #50;
    rst = 0;
end

initial clk = 0; // clock ����
always #5 clk = ~clk;

initial seed = 8'b11011011; // seed�� �Է� �� (my_sr.v�� �̸��� ���� ������ �������� simulation���� �򰥸�)
endmodule
