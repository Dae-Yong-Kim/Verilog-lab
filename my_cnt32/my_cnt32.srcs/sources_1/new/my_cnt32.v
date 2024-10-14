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
    output reg [7:0] LED
    );
    
reg [31:0] OUT_A;

always @(posedge CLK)
begin
    if (RST == 1) OUT_A = 32'h00;
    else if (RST == 0 )
    begin
        if (DIR == 1) OUT_A = OUT_A + 1;
        else if (DIR == 0) OUT_A = OUT_A - 1;
        else OUT_A = 32'h00;
    end
    else OUT_A = 32'h00;
    
    LED = OUT_A[7:0];
end
endmodule
