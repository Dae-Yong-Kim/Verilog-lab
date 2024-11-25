`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/12 14:06:05
// Design Name: 
// Module Name: my_uart_tx_tb
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


module my_uart_tx_tb();

parameter CLK_PD = 8.0;

reg rst, clk, send;
reg [3:0] data;
wire tx;

my_uart_tx uut(.CLK(clk), .RST(rst), .SEND(send), .DATA(data), .TX(tx));
defparam uut.my_tick_uut.CLK_FREQ = 125;
defparam uut.my_tick_uut.BAUD_RATE = 25;

initial begin
    rst = 1'b1;
    #(CLK_PD*10);
    rst = 1'b0;
end

initial clk = 1'b0;
always #(CLK_PD/2) clk = ~clk;

initial begin
    send = 1'b0;
    data = 4'd0;
    wait (rst == 1'b0);
    #(CLK_PD*10);
    @(posedge clk);
    data = 4'd0001;
    send = 1'b1;
    repeat(10) @(posedge clk);
    data = 4'd0100;
    send = 1'b0;
    repeat(55) @(posedge clk);;
    send = 1'b1;
    repeat(10) @(posedge clk);
    send = 1'b0;
    repeat(55) @(posedge clk);
    data = 4'd1001;
    send = 1'b1;
    repeat(10) @(posedge clk);;
    send = 1'b0;
    repeat(55) @(posedge clk);
    $finish;
            
end     // initial    

endmodule
