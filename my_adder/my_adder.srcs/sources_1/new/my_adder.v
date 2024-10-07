`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/07 11:20:50
// Design Name: 
// Module Name: my_adder
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


module my_adder(
    input [1:0] A,
    input [1:0] B,
    output [1:0] S,
    output Co
    );
    
    wire ca;
    
    my_fadder fa_0(
    .A(A[0]),
    .B(B[0]),
    .Ci(1'b0),
    .S(S[0]),
    .Co(ca)
    );
    
    my_fadder fa_1(
    .A(A[1]),
    .B(B[1]),
    .Ci(ca),
    .S(S[1]),
    .Co(Co)
    );
endmodule
