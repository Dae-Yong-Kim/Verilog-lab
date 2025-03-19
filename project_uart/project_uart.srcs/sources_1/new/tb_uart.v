`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/02/28 14:44:26
// Design Name: 
// Module Name: tb_uart
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


module tb_uart( input rst,clk, input start,txck,gate, input [15:0] pdata );

wire	rxsd,txsd;
wire	rnpd_pls;
wire	[15:0] rpdata;

assign rxsd = gate & txsd;

uart_rx u_uart_rx
	(
	.rst		(rst		),
	.clk		(clk		),
	//
	.rxsd		(rxsd		),
	//
	.rnpd_pls	(rnpd_pls	),
	.rpdata		(rpdata		)
	);

uart_tx u_uart_tx
	(
	.rst		(rst		),
	.clk		(clk		),
	.start		(start		),
	.txck		(txck		),
	.pdata		(pdata		),
	//
	.txsd		(txsd		)
	);

endmodule
