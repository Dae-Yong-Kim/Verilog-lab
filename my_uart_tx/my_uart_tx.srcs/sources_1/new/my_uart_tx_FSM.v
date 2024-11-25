`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/12 10:50:25
// Design Name: 
// Module Name: my_uart_tx_FSM
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


module my_uart_tx_FSM(input CLK, RST, TICK, SEND_1CLK, output [1:0] C_STAT);

localparam [1:0] IDLE = 2'b00, STANDBY = 2'b01, START = 2'b10;
reg [1:0] current_state = IDLE, next_state = IDLE;
(* MARK_DEBUG="true" *) reg tick_done;
(* MARK_DEBUG="true" *) reg [3:0] tick_cnt = 0;

always @(posedge CLK) begin
    if (RST) begin
        current_state <= IDLE;
    end
    else begin
        current_state <= next_state;
    end
end

always @(posedge TICK) begin
    case (current_state)
        START: begin
            tick_cnt = tick_cnt + 1;
            if (tick_cnt == 11) begin
                tick_done = 1;
            end
        end
        default: begin
            tick_done = 0;
            tick_cnt = 0;
        end
    endcase
end

always @(current_state, SEND_1CLK, TICK) begin
    case (current_state)
        IDLE: begin
            if(SEND_1CLK) begin
                next_state <= STANDBY;
            end
            else begin
                next_state <= IDLE;
            end
        end
        STANDBY: begin
            if(TICK) begin
                next_state <= START;
            end
            else begin
                next_state <= STANDBY;
            end
        end
        START: begin
            if(TICK) begin
                if(tick_done) begin
                    next_state <= IDLE;
                end
                else begin
                    next_state <= START;
                end
            end
            else begin
                next_state <= START;
            end
        end
        default: begin
            next_state <= IDLE;
        end
    endcase
end

assign C_STAT = current_state;

endmodule
