`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/02/21 14:24:01
// Design Name: 
// Module Name: hex_cnt_disp
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


module hex_cnt_disp( input RST, CLK, PLS_100Hz, PLS_1kHz, DISP_MD, input [1:0] CURRENT_STATE, output [6:0] SEG_H, SEG_L, output CA_H, CA_L );
    
    wire [7:0] bcd0, bcd1;
    
    hex_cnt_bcd hex_cnt_bcd0( .RST(RST), .CLK(CLK), .CURRENT_STATE(CURRENT_STATE), .PLS_100Hz(PLS_100Hz), .DISP_MD(DISP_MD), .BCD0(bcd0), .BCD1(bcd1) );
    bcd2seg_2digit bcd2seg_2digit0( .RST(RST), .CLK(CLK), .BCD(bcd1), .PLS_1kHz(PLS_1kHz), .SEG(SEG_H), .CA(CA_H) );
    bcd2seg_2digit bcd2seg_2digit1( .RST(RST), .CLK(CLK), .BCD(bcd0), .PLS_1kHz(PLS_1kHz), .SEG(SEG_L), .CA(CA_L) );
    
    
    
endmodule
