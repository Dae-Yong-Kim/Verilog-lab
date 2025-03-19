`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/02/21 16:14:10
// Design Name: 
// Module Name: hex_cnt_disp_tb
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


module hex_cnt_disp_tb();

parameter CLK_PD = 8.0;

reg clk, rst, pls_100Hz, pls_1kHz, disp_md;
wire [6:0] seg_h, seg_l;
wire ca_h, ca_l;

 hex_cnt_disp uut_0 ( .CLK(clk), .RST(rst), .PLS_100Hz(pls_100Hz), .PLS_1kHz(pls_1kHz), .DISP_MD(disp_md), .SEG_H(seg_h), .SEG_L(seg_l), .CA_H(ca_h), .CA_L(ca_l));
 
 initial begin
    rst = 1'b1;
    #(CLK_PD*10);
    rst = 1'b0;
    #(CLK_PD*10);
    rst = 1'b1;
    #(CLK_PD*10);
    rst = 1'b0;
end

initial clk = 1'b0;
always #(CLK_PD / 2) clk = ~clk;

initial pls_100Hz = 1'b0;
always #(CLK_PD * 20) @(posedge clk) pls_100Hz = ~pls_100Hz;

initial pls_1kHz = 1'b0;
always #(CLK_PD * 2) @(posedge clk) pls_1kHz = ~pls_1kHz;

initial begin
    disp_md = 1'b0;
    #(CLK_PD * 100)
    disp_md = 1'b1;
    #(CLK_PD * 50)
    disp_md = 1'b0;
    #(CLK_PD * 74)
    disp_md = 1'b1;
    #(CLK_PD * 421)
    disp_md = 1'b0;
    #1000;
    $finish;
            
end

endmodule
