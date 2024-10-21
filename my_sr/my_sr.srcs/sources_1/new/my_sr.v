`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/21 15:29:50
// Design Name: 
// Module Name: my_sr
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


module my_sr(
    input RST,
    input CLK,
    input [7:0] SEED,
    output reg LED
    );

reg [7:0] seed;

initial seed = SEED; // SEED를 담을 reg 변수
always @(posedge CLK) begin
    if(RST == 0) begin
        LED <= seed[0]; //LSB는 Output
        seed <= seed >> 1; // Right Shift
        seed[7] <= seed[2] ^ seed[4]; //MSB는 [2] ^ [4]
    end else if(RST == 1) begin
        LED <= 0;
        seed <= SEED;
    end else begin
        LED <= 1'bx;
        seed <= 8'bx;
    end
end
endmodule
