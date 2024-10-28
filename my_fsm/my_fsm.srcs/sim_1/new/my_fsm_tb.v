`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/28 10:51:07
// Design Name: 
// Module Name: my_fsm_tb
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


module my_fsm_tb();
parameter CLK_PD = 8.0;
reg clk, rst;
reg [1:0] d_in;
wire [1:0] d_out;

my_fsm uut(.CLK(clk), .RST(rst), .Din(d_in), .Dout(d_out));

initial begin
    rst = 1'b1;
    #(CLK_PD * 10);
    rst = 1'b0;
end

initial clk = 1'b0;
always #(CLK_PD / 2) clk = ~clk;

initial begin
    d_in = 2'b00;
    wait (rst == 1'b0); // reset이 0이 될 때까지 대기
    #(CLK_PD*4);
    @(posedge clk);
    repeat (8) begin // 8번 반복
        d_in = 2'b11;
        repeat(4) @(posedge clk);
        d_in = 2'b10;
        repeat(4) @(posedge clk);
        d_in = 2'b01;
        repeat(4) @(posedge clk);
        d_in = 2'b00;
        repeat(4) @(posedge clk);
    end
    #(CLK_PD*10);
    $finish;
end

endmodule
