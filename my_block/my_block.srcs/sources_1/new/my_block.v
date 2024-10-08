`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/08 14:20:28
// Design Name: 
// Module Name: my_block
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


module my_block();

reg rst_B1, ce_B1, clk_B1, and_B1;
reg [7:0] my_bus_B1;
reg rst_B2, ce_B2, clk_B2, and_B2;
reg [7:0] my_bus_B2;

reg rst_NB1, ce_NB1, clk_NB1, and_NB1;
reg [7:0] my_bus_NB1;
reg rst_NB2, ce_NB2, clk_NB2, and_NB2;
reg [7:0] my_bus_NB2;

reg rst_FJ_B1, ce_FJ_B1, clk_FJ_B1, and_FJ_B1;
reg [7:0] my_bus_FJ_B1;
reg rst_FJ_B2, ce_FJ_B2, clk_FJ_B2, and_FJ_B2;
reg [7:0] my_bus_FJ_B2;

reg rst_FJ_NB1, ce_FJ_NB1, clk_FJ_NB1, and_FJ_NB1;
reg [7:0] my_bus_FJ_NB1;
reg rst_FJ_NB2, ce_FJ_NB2, clk_FJ_NB2, and_FJ_NB2;
reg [7:0] my_bus_FJ_NB2;

assign a = 0'b1;
assign b = 0'b1;

initial begin // Blocking
    rst_B1 = 1'b1;
    #20 rst_B1 = 1'b0;
    ce_B1 = 1'b1;
    #5 my_bus_B1 = 8'b11110000;
    #10 clk_B1 = 1'b1;
    #15 and_B1 = (a & b);
end
initial begin // Blocking
    rst_B2 = 1'b1;
    rst_B2 = #20 1'b0;
    ce_B2 = 1'b1;
    my_bus_B2 = #5 8'b11110000;
    clk_B2 = #10 1'b1;
    and_B2 = #15 (a & b);
end

initial begin // Nonblocking 적용 안됨 | Blocking
    rst_NB1 <= 1'b1;
    #20 rst_NB1 <= 1'b0;
    ce_NB1 <= 1'b1;
    #5 my_bus_NB1 <= 8'b11110000;
    #10 clk_NB1 <= 1'b1;
    #15 and_NB1 <= (a & b);
end
initial begin // Nonblocking
    rst_NB2 <= 1'b1;
    rst_NB2 <= #20 1'b0;
    ce_NB2 <= 1'b1;
    my_bus_NB2 <= #5 8'b11110000;
    clk_NB2 <= #10 1'b1;
    and_NB2 <= #15 (a & b);
end

// fork join은 Blocking으로 만든 것을 Nonblocking으로 변경한다.
initial begin // Nonblocking
    fork
    rst_FJ_B1 = 1'b1;
    #20 rst_FJ_B1 = 1'b0;
    ce_FJ_B1 = 1'b1;
    #5 my_bus_FJ_B1 = 8'b11110000;
    #10 clk_FJ_B1 = 1'b1;
    #15 and_FJ_B1 = (a & b);
    join
end
initial begin // Nonblocking
    fork
    rst_FJ_B2 = 1'b1;
    rst_FJ_B2 = #20 1'b0;
    ce_FJ_B2 = 1'b1;
    my_bus_FJ_B2 = #5 8'b11110000;
    clk_FJ_B2 = #10 1'b1;
    and_FJ_B2 = #15 (a & b);
    join
end

initial begin // Nonblocking
    fork
    rst_FJ_NB1 <= 1'b1;
    #20 rst_FJ_NB1 <= 1'b0;
    ce_FJ_NB1 <= 1'b1;
    #5 my_bus_FJ_NB1 <= 8'b11110000;
    #10 clk_FJ_NB1 <= 1'b1;
    #15 and_FJ_NB1 <= (a & b);
    join
end
initial begin // Nonblocking
    fork
    rst_FJ_NB2 <= 1'b1;
    rst_FJ_NB2 <= #20 1'b0;
    ce_FJ_NB2 <= 1'b1;
    my_bus_FJ_NB2 <= #5 8'b11110000;
    clk_FJ_NB2 <= #10 1'b1;
    and_FJ_NB2 <= #15 (a & b);
    join
end

endmodule
