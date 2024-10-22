`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/14 14:14:24
// Design Name: 
// Module Name: my_sw2LED
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


module disp_mod(
    input [3:0] DIGIT,
    output [6:0] AN,
    output CA
    );
    
reg [7:0] LED;

always @(DIGIT)
begin
    case (DIGIT)
        4'b0000: LED  =8'h7e;
        4'b0001: LED = 8'h30;
        4'b0010: LED = 8'h6d;
        4'b0011: LED = 8'h79;
        4'b0100: LED = 8'h33;
        4'b0101: LED = 8'h5b;
        4'b0110: LED = 8'h5f;
        4'b0111: LED = 8'h70;
        4'b1000: LED = 8'h7f;
        4'b1001: LED = 8'h7b;
        default: LED = 8'hxx;
    endcase
end

assign AN = LED[7:0];
assign CA = LED[8];
endmodule
