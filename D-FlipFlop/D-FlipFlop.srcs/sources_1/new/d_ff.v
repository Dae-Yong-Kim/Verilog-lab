`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/02/14 15:13:37
// Design Name: 
// Module Name: d_ff
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


module d_ff( input RST, input CLK, input DIN, output reg QOUT );

    always @(posedge RST, posedge CLK) begin
        if(RST) begin
            QOUT <= 0;
        end
        else begin
            QOUT <= DIN;
        end
    end

endmodule
