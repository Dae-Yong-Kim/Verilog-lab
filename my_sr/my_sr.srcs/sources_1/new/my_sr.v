`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/21 15:20:20
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
    output DOUT
    );

reg [7:0] shift_reg;
wire    sr_in;

assign DOUT = shift_reg[0];
assign sr_in = shift_reg[2] ^ shift_reg[4];

always @(posedge CLK)
begin
    if(RST)
        shift_reg <= SEED;
    else
        shift_reg <= {sr_in, shift_reg[7:1]};
end // always
                    
endmodule
