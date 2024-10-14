`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/14 10:14:07
// Design Name: 
// Module Name: my_comp
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


module my_comp(
    input [1:0] A,
    input [1:0] B,
    output reg G,
    output reg E,
    output reg L
    );
    
always @(A, B)
    begin
    G = 0;
    E = 0;
    L = 0;
    if (A > B) G = 1;
    else if (A == B) E = 1;
    else if (A < B) L = 1;
    else
        begin
        G = 1'bx;
        E = 1'bx;
        L = 1'bx;
        end
    end
        
endmodule
