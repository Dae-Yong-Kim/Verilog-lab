`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/12 10:41:05
// Design Name: 
// Module Name: my_uart_tx
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


module my_uart_tx((* MARK_DEBUG="true" *) input CLK, RST, input SEND, (* MARK_DEBUG="true" *) input [3:0] DATA, (* MARK_DEBUG="true" *) output TX);

(* MARK_DEBUG="true" *) wire tick, parity;
(* MARK_DEBUG="true" *) wire [1:0] c_state;
(* MARK_DEBUG="true" *) reg send_1clk = 0;
reg send_1D = 0, send_2D = 0;
(* MARK_DEBUG="true" *) wire [7:0] data;
(* MARK_DEBUG="true" *) reg [10:0] parity_data = 0;

assign data = {4'b0100, DATA};
assign parity = ^data;
always @(posedge CLK) begin
    if(send_1clk && (c_state == 2'b00)) begin
        parity_data = {1'b1, parity, data, 1'b0};
    end
end

always @(posedge CLK) begin
    send_1D <= SEND;
    send_2D <= send_1D;
    send_1clk <= send_1D & ~(send_2D);
end

my_uart_tx_gen_tick my_tick_uut(.RST(RST), .CLK(CLK), .TICK(tick));

my_uart_tx_FSM my_FSM_uut(.CLK(CLK), .RST(RST), .TICK(tick), .SEND_1CLK(send_1clk), .C_STAT(c_state));

my_uart_tx_P2S my_P2S_uut(.CLK(CLK), .RST(RST), .C_STATE(c_state), .TICK(tick), .P_DATA(parity_data), .S_DATA(TX));

endmodule