`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/02/21 11:14:14
// Design Name: 
// Module Name: hex_cnt_bcd_tb
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


module hex_cnt_bcd_tb();

parameter CLK_PD = 8.0;

reg clk, rst, pls_100Hz, disp_md;
wire [7:0] bcd0, bcd1;

 hex_cnt_bcd uut_0 ( .CLK(clk), .RST(rst), .PLS_100Hz(pls_100Hz), .DISP_MD(disp_md), .BCD0(bcd0), .BCD1(bcd1));
 
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