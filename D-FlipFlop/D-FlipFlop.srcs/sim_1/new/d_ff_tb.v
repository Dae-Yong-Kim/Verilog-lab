`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/02/14 15:22:20
// Design Name: 
// Module Name: d_ff_tb
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


module d_ff_tb( );
    parameter CLK_PD = 8.0;
    
    reg rst, clk, din;
    wire qout;
    
     d_ff uut_0 ( .RST(rst), .CLK(clk), .DIN(din), .QOUT(qout));
    
    initial begin
        rst = 1'b1;
        #(CLK_PD);
        rst = 1'b0;
        #(CLK_PD * 3);
        rst = 1'b1;
        #(CLK_PD);
        rst = 1'b0;
    end
    
    initial clk = 1'b0;
    always #(CLK_PD/2) clk = ~clk;
    
    initial begin
        din = 1'b1;
        #(CLK_PD * 2);
        din = 1'b0;
        #(CLK_PD);
        din = 1'b1;
    end

endmodule
