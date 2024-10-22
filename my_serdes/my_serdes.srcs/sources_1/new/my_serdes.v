`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/22 09:45:12
// Design Name: 
// Module Name: my_serdes
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
//Parallel to Serial
module P2S(input RST, CLK, SOF_IN, input [7:0] DIN, output SOF_OUT, SOUT);
reg [7:0] din_d;
reg sof_d;

assign SOUT = din_d[0];
assign SOF_OUT = sof_d;

always @(posedge CLK)
begin
    if(RST)
        din_d <= 8'd0;
    else if(SOF_IN)
        din_d <= DIN;
    else
        din_d <= din_d >> 1;
//      din_d <= {1'b0, din[7:1];                
end

always @(posedge CLK) // SOF_IN이 1일 때 바로 sof_d에 넣지 않고 clock의 posedge에서
    sof_d <= SOF_IN;
endmodule       //P2S

// Serial to Parallel
module S2P(input RST, CLK, SOF_IN, SIN, output SOF_OUT, output [7:0] DOUT);
reg [2:0] bit_cnt;
reg [7:0] data;

assign DOUT = data;
assign SOF_OUT = bit_cnt == 3'd7; // cnt가 7일 때
 
always @(posedge CLK)
begin
    if(RST)
        data <= 8'd0;
    else
        data[bit_cnt] <= SIN;
end

always @(posedge CLK)
begin
    if(RST)
        bit_cnt <= 3'd0;
    else if(SOF_IN || bit_cnt != 3'd0) //SOF_IN이 트리거가 되어 cnt가 0이 될 때까지 동작
        bit_cnt <= bit_cnt + 1; // overflow를 활용
end
                                

    

    
endmodule