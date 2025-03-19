`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/12/16 09:30:06
// Design Name: 
// Module Name: tick_gen_100ms
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


module tick_gen_100ms(
	input wire CLK,
	(* MARK_DEBUG="true" *) input wire RST,
    (* MARK_DEBUG="true" *) output TICK
    );
    parameter FREQ = 125_000_000;
    reg tick = 1'b0;
    reg [20:0] cnt = 21'b0;
    
    always @(posedge CLK) begin // 1/100초 간격 tick 생성
        if(RST == 0) begin
            tick = 1'b0;
            cnt = 21'b0;
        end
        else begin
            if(cnt == ((FREQ / 100) - 1)) begin
                cnt <= 21'b0;
                tick <= 1;
            end
            else begin
                cnt <= cnt + 1;
                tick <= 0;
            end
        end
    end
    
    assign TICK = tick;
    
endmodule
