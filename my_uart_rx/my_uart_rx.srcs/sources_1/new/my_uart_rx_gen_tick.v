`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/19 09:12:09
// Design Name: 
// Module Name: my_uart_rx_gen_tick
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


module my_uart_rx_gen_tick(input RST, CLK, RXD, output reg TICK);

parameter CLK_FREQ = 125_000_000;
parameter BAUD_RATE = 115_200;

wire [13:0] num_clks_baud = CLK_FREQ / BAUD_RATE;
(* MARK_DEBUG="true" *) reg [13:0] cnt = 0;
(* MARK_DEBUG="true" *) reg [3:0] tick_cnt = 0;
(* MARK_DEBUG="true" *) reg tick_enable = 0;

initial TICK = 0;

always @(posedge CLK) begin
    if(RST) begin
        tick_cnt <= 0;
    end
    else begin
        if(TICK) begin
            if(tick_cnt == 10) begin
                tick_cnt <= 0;
            end
            else begin
                tick_cnt = tick_cnt + 1;
            end
        end
    end
end

always @(RXD, tick_cnt) begin
    if(RST) begin
        tick_enable <= 0;
    end
    else begin
        if(!RXD) begin
            tick_enable <= 1;
        end
        else if(tick_cnt == 0) begin
            tick_enable <= 0;
        end
        else begin
            tick_enable <= 1;
        end
    end
end

always @(posedge CLK) begin
    if(RST) begin
        cnt <= 0;
        TICK <= 0;
    end
    else begin
        if(tick_enable) begin
            if(cnt == 0) begin
                cnt <= cnt + 1;
                TICK <= 1;
            end
            else if(cnt == (num_clks_baud - 1)) begin
                cnt <= 0;
                TICK <= 0;
            end
            else begin
                cnt <= cnt + 1;
                TICK <= 0;
            end
        end
        else begin
            cnt <= 0;
            TICK <= 0;
        end
    end
    
end

endmodule