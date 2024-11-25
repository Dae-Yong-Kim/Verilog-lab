`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/19 11:43:34
// Design Name: 
// Module Name: my_uart_rx_tb
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


module my_uart_rx_tb();
parameter CLK_PD = 8.0;

reg rst, clk, rxd;
wire ca;
wire [6:0] an;

my_uart_rx uut(.CLK(clk), .RST(rst), .RXD(rxd), .RX_RDY(ca), .RX_DATA(an));
defparam uut.my_tick_uut.CLK_FREQ = 125;
defparam uut.my_tick_uut.BAUD_RATE = 25;
defparam uut.gen_tick_10ms_uut.FREQ = 125;

initial begin
    rst = 1'b1;
    #(CLK_PD*10);
    rst = 1'b0;
end

initial clk = 1'b0;
always #(CLK_PD/2) clk = ~clk;

initial begin
    rxd = 1'b1;
    wait (rst == 1'b0);
    #(CLK_PD*10);
    @(posedge clk);
    repeat(2) @(posedge clk);
    rxd = 1'b0;
    repeat(5) @(posedge clk);
    rxd = 1'b1;
    repeat(5) @(posedge clk);
    rxd = 1'b1;
    repeat(5) @(posedge clk);
    rxd = 1'b0;
    repeat(5) @(posedge clk);
    rxd = 1'b0;
    repeat(5) @(posedge clk);
    rxd = 1'b0;
    repeat(5) @(posedge clk);
    rxd = 1'b0;
    repeat(5) @(posedge clk);
    rxd = 1'b1;
    repeat(5) @(posedge clk);
    rxd = 1'b0;
    repeat(5) @(posedge clk);
    rxd = 1'b1;
    repeat(20) @(posedge clk);
    rxd = 1'b1;
    #1000;
    $finish;
            
end     // initial    
endmodule
