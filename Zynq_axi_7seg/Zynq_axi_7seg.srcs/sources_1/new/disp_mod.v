`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/12/16 09:24:26
// Design Name: 
// Module Name: disp_mod
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
    (* MARK_DEBUG="true" *) input TICK,
    (* MARK_DEBUG="true" *) input [3:0] DIGIT_1,
    (* MARK_DEBUG="true" *) input [3:0] DIGIT_10,
    (* MARK_DEBUG="true" *) output CA,
    (* MARK_DEBUG="true" *) output [6:0] AN
    );
    
reg [6:0] an;
reg st = 0;
reg [3:0] digit = 0;

always @(posedge TICK) begin
    if(st == 1) begin
        digit = DIGIT_1;
    end
    else begin
        digit = DIGIT_10;
    end
    st = ~st;
end

always @(DIGIT_1, DIGIT_10) begin
    case (digit)
        4'b0000: an  =7'h7e;
        4'b0001: an = 7'h30;
        4'b0010: an = 7'h6d;
        4'b0011: an = 7'h79;
        4'b0100: an = 7'h33;
        4'b0101: an = 7'h5b;
        4'b0110: an = 7'h5f;
        4'b0111: an = 7'h70;
        4'b1000: an = 7'h7f;
        4'b1001: an = 7'h7b;
        default: an = 7'hxx;
    endcase
end

assign AN = an;
assign CA = st;
endmodule
