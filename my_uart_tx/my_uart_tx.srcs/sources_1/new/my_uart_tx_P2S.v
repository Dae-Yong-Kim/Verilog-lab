`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/12 13:36:18
// Design Name: 
// Module Name: my_uart_tx_P2S
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


module my_uart_tx_P2S(input CLK, RST, TICK, input [1:0] C_STATE,  input [10:0] P_DATA, output reg S_DATA);

reg [10:0] p_data = 0;

initial S_DATA = 1;

always @(posedge CLK) begin
    if(RST) begin
        S_DATA <= 1;
    end
    
    case (C_STATE)
        2'b10: begin
            S_DATA <= p_data[0];
            if(TICK) begin
                p_data <= p_data >> 1;
            end
        end
        default: begin
            S_DATA <= 1;
            p_data <= P_DATA;
        end
    endcase
end

endmodule
