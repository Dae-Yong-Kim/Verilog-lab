`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/02/20 15:04:26
// Design Name: 
// Module Name: hex2bcd_tb
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


module hex2bcd_tb( );

parameter CLK_PD = 8.0;

reg clk, rst, pls_100Hz;
reg [6:0] hex;
wire [7:0] bcd;

 hex2bcd uut_0 ( .CLK(clk), .RST(rst), .HEX(hex), .BCD(bcd) );

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

initial begin
    hex = 1'b0;
    repeat (100) 
    begin
        @(posedge pls_100Hz);
        repeat (2)@(posedge clk);
        hex = hex + 1;
    end // repeat
    #1000;
    $finish;
            
end

endmodule
