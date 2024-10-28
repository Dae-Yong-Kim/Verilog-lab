`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/28 10:33:16
// Design Name: 
// Module Name: my_fsm
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


//module my_fsm(input CLK, input RST, input [1:0] Din, output reg [1:0] Dout); // LED
module my_fsm(input CLK, input RST, input [1:0] Din, output CA, output [6:0] AN); // 7 Segment

localparam [1:0] IDLE = 2'b00, STATE_A = 2'b01, STATE_B = 2'b10, STATE_C = 2'b11;
reg [1:0] current_state, next_state;
reg [21:0] cnt = 0;
reg enable = 0;
wire [1:0] state;
wire [3:0] digit;

always @(posedge CLK) begin
    if(RST) current_state <= IDLE;
    else current_state <= next_state;
end

always @(current_state, Din) begin
    case(current_state)
        IDLE: begin
            if(Din == 2'b01) next_state = STATE_A;
            else next_state = IDLE;
        end
        STATE_A: begin
            if(Din == 2'b10) next_state = STATE_B;
            else next_state = STATE_A;
        end
        STATE_B: begin
            if(Din == 2'b11) next_state = STATE_C;
            else next_state = STATE_B;
        end
        STATE_C: begin
            if(Din == 2'b00) next_state = IDLE;
            else next_state = STATE_C;
        end
        default: next_state = IDLE;
    endcase
end
/*
always @(current_state) begin // LED
    case(current_state)
        IDLE: Dout = 2'b00;
        STATE_A: Dout = 2'b01;
        STATE_B: Dout = 2'b10;
        STATE_C: Dout = 2'b11;
        default: Dout = 2'b00;
    endcase
end
*/
always @(posedge CLK) begin // 1/50초 간격 enable 생성
    if(cnt == 1250000) begin
        enable <= ~enable;
        cnt <= 0;
    end
    else cnt <= cnt + 1;
end

assign CA = enable;
assign state = current_state;
assign digit = enable ? {3'b0, state[1]} : {3'b0, state[0]};
disp_mod(.DIGIT(digit), .AN(AN));

endmodule
