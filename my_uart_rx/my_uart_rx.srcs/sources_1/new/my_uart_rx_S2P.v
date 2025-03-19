`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/19 09:47:10
// Design Name: 
// Module Name: my_uart_rx_S2P
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

module my_uart_rx_S2P(input CLK, RST, input TICK, C_STATE, S_DATA, (* MARK_DEBUG="true" *) output reg [7:0] P_DATA, (* MARK_DEBUG="true" *) output reg READY);

(* MARK_DEBUG="true" *) reg [10:0] p_data = 0;
reg [8:0] cnt = 0;
/*reg [1:0] cnt = 1;
reg [10:0] p_data = 0;*/
reg parity_check = 0;
reg enable = 0;
(* MARK_DEBUG="true" *) reg [3:0] index = 0;
//reg st = 0;
reg p_1D, p_2D, p_enable;

/*always @(posedge CLK) begin
    if(index == 1 && st == 1) begin
        READY <= 1;
        st <= 0;
    end
    else if(index == 1) begin
        st <= 0;
        READY <= 0;
    end
    else begin
        st <= 1;
        READY <= 0;
    end
end*/

always @(posedge CLK) begin
    p_1D <= enable;
    p_2D <= p_1D;
    if(p_1D & ~(p_2D)) p_enable <= 1;
    else p_enable <= 0;
end

always @(posedge CLK) begin
    if(RST) begin
        cnt <= 0;
    end
    else begin
        if(TICK || cnt) begin
            if(cnt == 9'b111111110) begin
            //if(cnt == 2'b10) begin
                enable <= 1;
            end
            else begin
                enable <= 0;
            end
            cnt <= cnt + 1;
        end
        
    end
end

always @(posedge CLK) begin
    if(RST) begin
        p_data <= 0;
    end
    else begin
        case (C_STATE)
            1'b1: begin
                if(enable) begin
                    p_data[index] <= S_DATA;
                    index <= index + 1;
                end
            end
            default: begin
                p_data <= p_data;
                index <= 0;
            end
        endcase
    end
end

always @(RST, C_STATE) begin
    if(RST) begin
        parity_check <= 0;
    end
    else begin
        case (C_STATE)
            1'b0: begin
                if(p_data[9] == ^p_data[8:1]) begin
                    parity_check <= 1;
                end
                else begin
                    parity_check <= 0;
                end
            end
            1'b1: begin
                parity_check <= 0;
            end
            default: begin
                parity_check <= 0;
            end
        endcase
    end
end

always @(posedge CLK) begin
    if(RST) begin
        P_DATA <= 0;
    end
    else begin
        case (C_STATE)
            1'b0: begin
                if(p_enable) begin
                    P_DATA <= p_data[8:1];
                    READY <= 1;
                end
                else begin
                    P_DATA <= P_DATA;
                    READY <= 0;
                end
            end
            1'b1: begin
                P_DATA <= P_DATA;
                READY <= 0;
            end
            default: begin
                P_DATA <= P_DATA;
                READY <= 0;
            end
        endcase
    end
end

endmodule