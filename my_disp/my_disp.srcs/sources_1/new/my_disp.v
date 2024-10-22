`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/22 15:15:34
// Design Name: 
// Module Name: my_disp
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


module my_disp(input [3:0] SW, input BTN, output [6:0] AN, output CA);
wire [3:0] disp_data;
wire [3:0] digit0, digit1;
wire over;

assign over = SW[3] & |SW[2:1]; // == (SW > 9);
assign disp_data = BTN ? digit1 : digit0; // if문 없이 input 바꿔주기
assign CA = BTN;
assign digit0 = over ? (SW - 10) : SW; // (SW - 10) == {1'b0, SW[2:1] - SW[1], SW[0]}
assign digit1 = over ? 1 : 0;

disp_mod disp_uut(.DIGIT(disp_data), .AN(AN));

endmodule
