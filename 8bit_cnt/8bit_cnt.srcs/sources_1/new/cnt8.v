`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/02/14 16:46:01
// Design Name: 
// Module Name: cnt8
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


module cnt8( input RST, input CLK, output [7:0] CNT );

    reg [7:0] cnt = 0;
    
    assign CNT = cnt;
    
    always @(posedge RST, posedge CLK) begin
        if(RST) begin
            cnt <= 0;
        end
        else if(cnt >= 199) begin
            cnt <= 0;
        end
        else begin
            cnt <= cnt + 1;
        end
    end

endmodule
