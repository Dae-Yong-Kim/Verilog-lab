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


module my_uart_rx(input CLK, input RST, RXD, output RX_READY, output [7:0] RX_DATA);

wire tick_baud, c_state;
/*reg enable;
reg enable_1D, enable_2D;*/

my_uart_rx_gen_tick my_tick_uut(.RST(RST), .CLK(CLK), .RXD(RXD), .TICK(tick_baud));

my_uart_rx_FSM my_FSM_uut(.CLK(CLK), .RST(RST), .TICK(tick_baud), .RXD(RXD), .C_STAT(c_state));

my_uart_rx_S2P my_S2P_uut(.CLK(CLK), .RST(RST), .C_STATE(c_state), .TICK(tick_baud), .S_DATA(RXD), .P_DATA(RX_DATA), .READY(RX_READY));
//my_uart_rx_S2P my_S2P_uut(.CLK(CLK), .RST(RST), .C_STATE(c_state), .TICK(tick_baud), .S_DATA(RXD), .P_DATA(RX_DATA), .READY(RX_READY), .ENABLE(enable), .ENABLE_1D(enable_1D), .ENABLE_2D(enable_2D));

endmodule