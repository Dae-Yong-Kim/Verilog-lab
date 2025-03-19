`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/02/20 16:26:25
// Design Name: 
// Module Name: hex2bcd_test_tb
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


module hex2bcd_test_tb( );

parameter CLK_PD = 8.0;

reg clk, pls_100Hz;
reg [13:0] hex;
wire [15:0] bcd;

 hex2bcd_test uut_0 ( .HEX(hex), .BCD(bcd) );

initial clk = 1'b0;
always #(CLK_PD / 2) clk = ~clk;

initial pls_100Hz = 1'b0;
always #(CLK_PD * 5) @(posedge clk) pls_100Hz = ~pls_100Hz;

initial begin
    hex = 1'b0;
    repeat (10000) 
    begin
        @(posedge pls_100Hz);
        repeat (2)@(posedge clk);
        hex = hex + 1;
    end // repeat
    #1000;
    $finish;
            
end

endmodule
