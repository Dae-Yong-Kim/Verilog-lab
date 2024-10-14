`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/14 11:15:48
// Design Name: 
// Module Name: my_mult
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


module my_mult(
    input a,
    input b,
    input [1:0] sel,
    output reg z
    );
    
always @(a, b, sel)
begin
    case (sel)
        2'b00: z = ~a;
        2'b01: z = ~(a & b);
        2'b10: z = ~(a & (~b));
        2'b11: z = (a ^ b);
        default: z = 1'bx;
    endcase
end
endmodule
