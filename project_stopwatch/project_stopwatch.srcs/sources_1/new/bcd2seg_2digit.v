`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/02/21 13:56:18
// Design Name: 
// Module Name: bcd2seg_2digit
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


module bcd2seg_2digit( input CLK, input RST, input [7:0] BCD, input PLS_1kHz, output [6:0] SEG, output CA );
    
    wire [3:0] digit;
    reg [6:0] seg = 0;
    reg ca = 0;
    
    assign digit = PLS_1kHz ? BCD[7:4] : BCD[3:0];
    assign SEG = seg;
    assign CA = ca;
    
    always @(posedge RST, posedge CLK) begin
        if(RST) begin
            seg <= 7'h00;
            ca <= 0;
        end
        else begin
            ca <= PLS_1kHz;
            case(digit)
                4'b0000: seg <= 7'h7e;
                4'b0001: seg <= 7'h30;
                4'b0010: seg <= 7'h6d;
                4'b0011: seg <= 7'h79;
                4'b0100: seg <= 7'h33;
                4'b0101: seg <= 7'h5b;
                4'b0110: seg <= 7'h5f;
                4'b0111: seg <= 7'h70;
                4'b1000: seg <= 7'h7f;
                4'b1001: seg <= 7'h7b;
                default: seg <= 7'h00;
            endcase
        end
    end
    
    
    
endmodule
