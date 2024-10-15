`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/14 16:07:42
// Design Name: 
// Module Name: my_cnt32
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


module my_cnt32(
    input RST,
    input CLK,
    input DIR,
    output reg [6:0] AN,
    output CA
    );
    
reg [31:0] OUT_A;

always @(posedge CLK)
begin
    if (RST == 1) OUT_A <= 32'h00;
    else if (RST == 0 )
    begin
        if (DIR == 1) OUT_A <= OUT_A + 1;
        else if (DIR == 0) OUT_A <= OUT_A - 1;
        else OUT_A <= 32'h00;
    end
    else OUT_A <= 32'h00;
    
    case (OUT_A[3:0])
        4'b0000: AN = 7'h7e;
        4'b0001: AN = 7'h30;
        4'b0010: AN = 7'h6d;
        4'b0011: AN = 7'h79;
        4'b0100: AN = 7'h33;
        4'b0101: AN = 7'h5b;
        4'b0110: AN = 7'h5f;
        4'b0111: AN = 7'h70;
        4'b1000: AN = 7'h7f;
        4'b1001: AN = 7'h7b;
        default: AN = 7'h00;
    endcase
end
assign CA = 1'b0;
endmodule
