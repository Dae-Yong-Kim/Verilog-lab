`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/15 15:04:51
// Design Name: 
// Module Name: my_cmt32_tb
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


module my_cmt32_tb();
parameter CLK_PERIOD = 10.0; // parameter ���� ";" �ݵ�� ���ֱ�
reg rst, clk, dir;
wire [6:0] an;
wire ca;

my_cnt32 uut( // Unit Under Test
    .RST(rst), .CLK(clk), .DIR(dir),
    .AN(an), .CA(ca)
    );
    
initial begin // reset ��
    rst = 1'b1;
    #(CLK_PERIOD*10);
    rst = 1'b0;
end

initial clk = 1'b0; // clock ��
always #(CLK_PERIOD/2) clk = ~clk;

initial begin
    dir = 1'b0;
    wait(rst == 1'b0); // rst == 1,b0�� ������ ��ٷ���
     #(CLK_PERIOD*50);
    dir = 1'b1;
     #(CLK_PERIOD*50);
    dir = 1'b0;
     #(CLK_PERIOD*40);
     $finish; // �ùķ��̼��� �����
end
endmodule
