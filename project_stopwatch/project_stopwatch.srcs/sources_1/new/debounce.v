`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/02/24 11:23:28
// Design Name: 
// Module Name: debounce
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


module debounce( input RST, input CLK, input PLS_1kHz, input BTN_IN, output BTN_OUT );

    reg [4:0] cnt_20ms = 0;
    reg pre_btn = 0, pls_1kHz_1D = 0, pls_1kHz_2D = 0, btn_out = 0;
    
    assign BTN_OUT = btn_out;
    
    always @(posedge RST, posedge CLK) begin
        if(RST) begin
            pls_1kHz_1D <= 0;
            pls_1kHz_2D <= 0;
        end
        else begin
            pls_1kHz_1D <= PLS_1kHz;
            pls_1kHz_2D <= pls_1kHz_1D;
        end
    end
    
    always @(posedge RST, posedge CLK) begin
        if(RST) begin
            cnt_20ms <= 0;
            btn_out <= 0;
            pre_btn <= 0;
        end
        else begin
            if(~pls_1kHz_1D & pls_1kHz_2D) begin
                if(pre_btn == BTN_IN) begin
                    if(cnt_20ms < 19) begin
                        cnt_20ms <= cnt_20ms + 1;
                    end
                    else begin
                        cnt_20ms <= 0;
                        btn_out <= BTN_IN;
                    end
                end
                else begin
                    cnt_20ms <= 0;
                    btn_out <= btn_out;
                end
                pre_btn <= BTN_IN;
            end
        end
    end
    
endmodule
