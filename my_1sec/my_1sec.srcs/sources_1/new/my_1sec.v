`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/21 11:24:59
// Design Name: 
// Module Name: my_1sec
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


module my_1sec(input RST, input CLK, output reg LED, (* MARK_DEBUG="true" *) output reg [6:0] FND); // �����

parameter CLK_FREQ = 125_000_000;
reg enable, st = 0; // FND st = 0 ����, st = 1 ����
(* MARK_DEBUG="true" *) reg [26:0] cnt = 1;
reg [4:0] fnd_cnt = 0;

initial enable = 0;
always @(posedge CLK) begin
    if(RST == 0) begin 
        cnt <= cnt + 1;
        enable <= 0;
        if(cnt == CLK_FREQ) begin // RST�� 0�̰� CLK�� 125_000_000��(1��) �߻��ϸ� enable = 1 -> �Ʒ� always���� ���۽�Ŵ
            enable <= 1;
            cnt <= 1;
        end
    end
    else begin
        enable <= 0;
        cnt <= 1;
    end
end

initial LED = 0;
always @(posedge CLK) begin // 1�� ������ LED ����
    if(RST) LED <= 0;
    if(enable) LED <= ~LED;
end

initial FND = 8'h7e;
always @(posedge CLK) begin // 7 ���׸�Ʈ�� 1�� ������ 0 -> 9 -> 0 �ݺ�
    if(RST) FND = 7'h7e;
    if(enable) begin
        if(st == 1) begin // 9 -> 0 ���
            case (fnd_cnt)
                4'b0000: FND  =7'h7e;
                4'b0001: FND = 7'h30;
                4'b0010: FND = 7'h6d;
                4'b0011: FND = 7'h79;
                4'b0100: FND = 7'h33;
                4'b0101: FND = 7'h5b;
                4'b0110: FND = 7'h5f;
                4'b0111: FND = 7'h70;
                4'b1000: FND = 7'h7f;
                4'b1001: FND = 7'h7b;
                default: FND = 7'hxx;
            endcase
            fnd_cnt = fnd_cnt - 1;
        end else if(st == 0) begin // 0 -> 9 ���
            case (fnd_cnt)
                4'b0000: FND  =7'h7e;
                4'b0001: FND = 7'h30;
                4'b0010: FND = 7'h6d;
                4'b0011: FND = 7'h79;
                4'b0100: FND = 7'h33;
                4'b0101: FND = 7'h5b;
                4'b0110: FND = 7'h5f;
                4'b0111: FND = 7'h70;
                4'b1000: FND = 7'h7f;
                4'b1001: FND = 7'h7b;
                default: FND = 7'hxx;
            endcase
            fnd_cnt = fnd_cnt + 1;
        end
        
        if(fnd_cnt == 10) begin
            st = 1;
            fnd_cnt = 8; // 9�� 1�� ����ϱ� ����
        end else if(fnd_cnt == 5'b11111) begin
            st = 0;
            fnd_cnt = 1; // 0�� 1�� ����ϱ� ����
        end else st = st;
    end
end
endmodule
