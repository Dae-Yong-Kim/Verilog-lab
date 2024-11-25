`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/19 10:30:10
// Design Name: 
// Module Name: gen_tick_10ms
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


module gen_tick_10ms(input CLK, output TICK, ENABLE);

parameter FREQ = 125_000_000;
reg enable = 1'b0, tick;
reg [20:0] cnt = 21'b0;

always @(posedge CLK) begin // 1/100초 간격 tick 생성
    if(cnt == ((FREQ / 100) - 1)) begin
        enable <= ~enable;
        cnt <= 21'b0;
        tick <= 1;
    end
    else begin
        cnt <= cnt + 1;
        tick <= 0;
    end
end

assign TICK = tick;
assign ENABLE = enable;

endmodule
