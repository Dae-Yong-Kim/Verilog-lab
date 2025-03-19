`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/02/21 09:57:35
// Design Name: 
// Module Name: hex_cnt_bcd
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


module hex_cnt_bcd( input RST, CLK, PLS_100Hz, DISP_MD, input [1:0] CURRENT_STATE, output [7:0] BCD0, BCD1 );
    
    //wire pls_100Hz;
    wire [5:0] hex_m, hex_s;
    wire [6:0] hex_us;
    wire [6:0] hex0, hex1;
    
    assign hex1 = DISP_MD ? {0, hex_m} : {0, hex_s};
    assign hex0 = DISP_MD ? {0, hex_s} : hex_us;
    
    hex_cnt hex_cnt0(.RST(RST), .CLK(CLK), .CURRENT_STATE(CURRENT_STATE), .PLS_100Hz(PLS_100Hz), .HEX_m(hex_m), .HEX_s(hex_s), .HEX_us(hex_us));
    hex2bcd hex2bcd0(.RST(RST), .CLK(CLK), .HEX(hex0), .BCD(BCD0));
    hex2bcd hex2bcd1(.RST(RST), .CLK(CLK), .HEX(hex1), .BCD(BCD1));
    
endmodule
