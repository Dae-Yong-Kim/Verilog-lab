`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/04 17:44:16
// Design Name: 
// Module Name: my_stopwatch_tb
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


module my_stopwatch_tb();


parameter CLK_PD = 8.0;
reg clk, rst, start_stop, clear_lab;
wire ca;
wire [6:0] an;

my_stopwatch #(.FREQ(200)) uut(.CLK(clk), .RST(rst), .START_STOP(start_stop), .CLEAR_LAB(clear_lab), .AN(an), .CA(ca));

initial begin
    rst = 1'b1;
    #(CLK_PD * 10);
    rst = 1'b0;
end

initial clk = 1'b0;
always #(CLK_PD / 2) clk = ~clk;

initial begin
    start_stop = 1'b0;
    clear_lab = 1'b0;
    wait (rst == 1'b0); // reset이 0이 될 때까지 대기
    #(CLK_PD*4);
    @(posedge clk);
    repeat (8) begin // 8번 반복
        start_stop = 1'b0;
        repeat(4) @(posedge clk);
        start_stop = 1'b1;
        repeat(4) @(posedge clk);
        start_stop = 1'b0;
        repeat(4) @(posedge clk);
        start_stop = 1'b1;
        repeat(4) @(posedge clk);
        start_stop = 1'b0;
        repeat(4) @(posedge clk);
        start_stop = 1'b1;
        repeat(10) @(posedge clk);
    end
    #(CLK_PD*10);
    $finish;
end


endmodule
