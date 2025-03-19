`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/01/13 11:57:20
// Design Name: 
// Module Name: FIFO
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


module FIFO(input RST, input CLK, input [7:0] DIN, input WEN, input REN, output reg [7:0] DOUT, output EMPTY, output FULL);

reg [7:0] mem[0:7];
reg [3:0] head, tail;

assign EMPTY = (head == tail) ? 1 : 0;
assign FULL = (head[2:0] == tail[2:0] && head[3] ^ tail[3]) ? 1: 0;

always @(posedge CLK) begin
    if(RST) begin
        tail <= 0;
    end
    else begin
        if(REN) begin
            if(!EMPTY) begin
                DOUT <= mem[tail];
                tail <= tail + 1;
            end
        end
    end
end

always @(posedge CLK) begin
    if(RST) begin
        head <= 0;
    end
    else begin
        if(WEN) begin
            if(!FULL)   begin
                mem[head] <= DIN;
                head <= head + 1;
            end
        end
    end
end

endmodule
