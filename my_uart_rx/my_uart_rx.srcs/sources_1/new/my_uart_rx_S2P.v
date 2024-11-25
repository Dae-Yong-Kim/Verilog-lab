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


module my_uart_rx_S2P(input CLK, RST, (* MARK_DEBUG="true" *) input TICK, C_STATE, S_DATA, output reg [7:0] P_DATA);

(* MARK_DEBUG="true" *) reg [10:0] p_data = 0;
(* MARK_DEBUG="true" *) reg [8:0] cnt = 0;
/*reg [1:0] cnt = 1;
reg [10:0] p_data = 0;*/
(* MARK_DEBUG="true" *) reg parity_check = 0, enable = 0;
(* MARK_DEBUG="true" *) reg [3:0] index = 0;

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

always @(RST, parity_check) begin
    if(RST) begin
        P_DATA <= 0;
    end
    else begin
        case (C_STATE)
            1'b0: begin
                if(parity_check) begin
                    P_DATA <= p_data[8:1];
                end
                else begin
                    P_DATA <= 0;
                end
            end
            1'b1: begin
                P_DATA <= P_DATA;
            end
            default: begin
                P_DATA <= 0;
            end
        endcase
    end
end

endmodule