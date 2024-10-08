`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/08 09:40:42
// Design Name: 
// Module Name: my_cnt3
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


module my_cnt3(
    input clk,
    input rst,
    output [2:0] q
    );
    wire n1, n2;
    
    assign n1 = (q[0] ^ q[1]);
    assign n2 = (q[2] ^ (q[0] & q[1]));
    
    my_dff dff0(.d(~q[0]), .clk(clk), .rst(rst), .q(q[0]));
    my_dff dff1(.d(n1), .clk(clk), .rst(rst), .q(q[1]));
    my_dff dff2(.d(n2), .clk(clk), .rst(rst), .q(q[2]));
endmodule

module my_dff(
    input d,
    input clk,
    input rst,
    output reg q
    );
    always @ (posedge clk)
        if (rst)
            q <= 1'b0; // 이 부분에서 모든 q 값이 0으로 초기화
        else
            q <= d;
endmodule