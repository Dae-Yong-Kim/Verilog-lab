`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/02/19 14:49:40
// Design Name: 
// Module Name: cnt_test_tb
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


module cnt_test_tb();

parameter CLK_PD = 8.0;

reg clk, rst, pls_100Hz;
wire [5:0] hex_m, hex_s;
wire [6:0] hex_us, bcd_m, bcd_s;
wire [7:0] bcd_us;

 bcd_cnt_test uut_0 ( .CLK(clk), .PLS_100Hz(pls_100Hz), .BCD_m(bcd_m), .BCD_s(bcd_s), .BCD_us(bcd_us));
 hex_cnt_test uut_1 ( .CLK(clk), .RST(rst), .PLS_100Hz(pls_100Hz), .HEX_m(hex_m), .HEX_s(hex_s), .HEX_us(hex_us));
 
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
always #(CLK_PD * 5) @(posedge clk) pls_100Hz = ~pls_100Hz;

endmodule
