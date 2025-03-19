`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/01/13 14:01:44
// Design Name: 
// Module Name: FIFO_tb
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


module FIFO_tb();

parameter CLK_PD = 4.0;

reg rst, clk, wen, ren;
reg [7:0] din;
wire [7:0] dout;
wire empty, full;
 FIFO uut(.RST(rst), .CLK(clk), .DIN(din), .WEN(wen), .REN(ren), .DOUT(dout), .EMPTY(empty), .FULL(full));

initial begin
    rst = 1'b1;
    #(CLK_PD*10);
    rst = 1'b0;
end

initial clk = 1'b0;
always #(CLK_PD/2) clk = ~clk;

initial begin
    wen = 1'b0;
    ren = 1'b0;
    din = 8'd0;
    wait (rst == 1'b0);
    #(CLK_PD*10);
    @(posedge clk);
    din = 8'b0000_0000;
    /*ren = 1'b1;
    @(posedge clk);
    ren = 1'b0;
    wen = 1'b1;
    @(posedge clk);
    wen = 1'b0;
    ren = 1'b1;
    @(posedge clk);
    ren = 1'b0;*/
    repeat (8) begin
        wen = 1'b1;
        @(posedge clk);
        wen = 1'b0;
        repeat(5) @(posedge clk);
        din = din + 1;
    end
    repeat(30) @(posedge clk);
    
    /*ren = 1'b1;
    @(posedge clk);
    ren = 1'b0;
    @(posedge clk);
    ren = 1'b1;
    @(posedge clk);
    ren = 1'b0;
    @(posedge clk);
    wen = 1'b1;
    @(posedge clk);
    wen = 1'b0;
    @(posedge clk);
    wen = 1'b1;
    @(posedge clk);
    wen = 1'b0;*/
    
    
    
    /*repeat (128) begin
        ren = 1'b1;
        @(posedge clk);
        ren = 1'b0;
        repeat(5) @(posedge clk);
    end*/
    #1000;
    $finish;
end

endmodule
