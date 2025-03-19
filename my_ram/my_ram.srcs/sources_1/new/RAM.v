`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/01/13 10:35:11
// Design Name: 
// Module Name: RAM
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


module RAM(input CLK, input WEN, input [6:0] ADDR, input [7:0] DIN, (* MARK_DEBUG="true" *) output reg [7:0] DOUT);

(* MARK_DEBUG="true" *) reg [7:0] mem[0:127];

always @(posedge CLK) begin
    if(WEN) begin
        mem[ADDR] <= DIN;
    end
end

always @(posedge CLK) begin
    DOUT <= mem[ADDR];
end

endmodule
