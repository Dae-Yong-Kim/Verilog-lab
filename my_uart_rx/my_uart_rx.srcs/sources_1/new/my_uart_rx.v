`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/19 09:04:19
// Design Name: 
// Module Name: my_uart_rx
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


module my_uart_rx(input CLK, (* MARK_DEBUG="true" *) input RST, RXD, (* MARK_DEBUG="true" *) output RX_RDY, (* MARK_DEBUG="true" *) output [6:0] RX_DATA);

(* MARK_DEBUG="true" *) wire tick_baud, tick_10ms, c_state, enable;
(* MARK_DEBUG="true" *) wire [7:0] p_data;
(* MARK_DEBUG="true" *) wire [3:0] digit;

my_uart_rx_gen_tick my_tick_uut(.RST(RST), .CLK(CLK), .RXD(RXD), .TICK(tick_baud));

my_uart_rx_FSM my_FSM_uut(.CLK(CLK), .RST(RST), .TICK(tick_baud), .RXD(RXD), .C_STAT(c_state));

my_uart_rx_S2P my_S2P_uut(.CLK(CLK), .RST(RST), .C_STATE(c_state), .TICK(tick_baud), .S_DATA(RXD), .P_DATA(p_data));

gen_tick_10ms gen_tick_10ms_uut(.CLK(CLK), .TICK(tick_10ms), .ENABLE(enable));

assign RX_RDY = enable;
assign digit = enable ? p_data[7:4] : p_data[3:0];

disp_mod uut(.DIGIT(digit), .AN(RX_DATA));

endmodule