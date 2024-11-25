`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/12 10:51:41
// Design Name: 
// Module Name: my_uart_tx_gen_tick
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


module my_uart_tx_gen_tick(input RST, CLK, output reg TICK);

parameter CLK_FREQ = 125_000_000;
parameter BAUD_RATE = 115_200;

wire [13:0] num_clks_baud = CLK_FREQ / BAUD_RATE;
reg [13:0] cnt = 0;

initial TICK = 0;

always @(posedge CLK) begin
    if(RST) begin
        cnt <= 0;
        TICK <= 0;
    end
    else if(cnt == (num_clks_baud - 1)) begin
        cnt <= 0;
        TICK <= 1;
    end
    else begin
        cnt <= cnt + 1;
        TICK <= 0;
    end
end

endmodule
