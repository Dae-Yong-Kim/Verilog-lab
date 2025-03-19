`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/02/24 11:59:24
// Design Name: 
// Module Name: debounce_tb
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


module debounce_tb();

parameter CLK_PD = 8.0;

reg clk, rst, pls_1kHz, btn_in;
wire btn_out;

 debounce uut_0 ( .CLK(clk), .RST(rst), .PLS_1kHz(pls_1kHz), .BTN_IN(btn_in), .BTN_OUT(btn_out));
 
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

initial pls_1kHz = 1'b0;
always #(CLK_PD * 2) @(posedge clk) pls_1kHz = ~pls_1kHz;

initial begin
    btn_in = 1'b0;
    #(CLK_PD * 5)
    btn_in = 1'b1;
    #(CLK_PD * 90)
    btn_in = 1'b0;
    #(CLK_PD * 80)
    btn_in = 1'b1;
    #(CLK_PD * 70)
    btn_in = 1'b0;
    #(CLK_PD * 110)
    btn_in = 1'b1;
    #(CLK_PD * 50)
    btn_in = 1'b0;
    #(CLK_PD * 74)
    btn_in = 1'b1;
    #(CLK_PD * 421)
    btn_in = 1'b0;
    #(CLK_PD * 100)
    btn_in = 1'b1;
    #(CLK_PD * 5)
    btn_in = 1'b0;
    #(CLK_PD * 7)
    btn_in = 1'b1;
    #(CLK_PD * 36)
    btn_in = 1'b0;
    #1000;
    $finish;
            
end

endmodule
