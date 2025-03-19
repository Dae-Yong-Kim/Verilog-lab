`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/02/24 11:34:42
// Design Name: 
// Module Name: gen_pulse_tb
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


module gen_pulse_tb();

parameter CLK_PD = 8.0;

reg clk, rst;
wire pls_100Hz, pls_1kHz;

 gen_pulse uut_0 ( .CLK(clk), .RST(rst), .PLS_100Hz(pls_100Hz), .PLS_1kHz(pls_1kHz));
 
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

endmodule
