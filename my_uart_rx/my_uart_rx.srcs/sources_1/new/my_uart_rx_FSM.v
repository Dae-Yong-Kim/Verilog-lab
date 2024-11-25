`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/19 09:18:34
// Design Name: 
// Module Name: my_uart_rx_FSM
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


module my_uart_rx_FSM(input CLK, RST, TICK, RXD, output C_STAT);

localparam IDLE = 1'b0, REC = 1'b1;
reg current_state = IDLE, next_state = IDLE;
(* MARK_DEBUG="true" *) reg tick_done = 0;
(* MARK_DEBUG="true" *) reg [3:0] tick_cnt = 0;

always @(posedge CLK) begin
    if (RST) begin
        current_state <= IDLE;
    end
    else begin
        current_state <= next_state;
    end
end

always @(posedge CLK) begin
    case (current_state)
        REC: begin
            if(TICK) begin
                tick_cnt = tick_cnt + 1;
            end
            if (tick_cnt == 11) begin
                tick_done = 1;
                tick_cnt = 0;
            end
            else begin
                tick_done = 0;
            end
        end
        default: begin
            tick_done = 0;
            tick_cnt = 0;
        end
    endcase
end

always @(current_state, RXD, TICK) begin
    case (current_state)
        IDLE: begin
            if(!RXD) begin
                next_state <= REC;
            end
            else begin
                next_state <= IDLE;
            end
        end
        REC: begin
            if(RXD && tick_done) begin
                next_state <= IDLE;
            end
            else begin
                next_state <= REC;
            end
        end
        default: begin
            next_state <= IDLE;
        end
    endcase
end

assign C_STAT = current_state;

endmodule
