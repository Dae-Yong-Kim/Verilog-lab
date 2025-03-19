`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/02/21 16:38:15
// Design Name: 
// Module Name: gen_pulse
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


module gen_pulse( input CLK, input RST, output PLS_100Hz, output PLS_1kHz, output TXCK );

    parameter FREQ = 125_000_000;
    //parameter FREQ = 1250000; // Test version
    
    reg pls_100Hz = 0, pls_1kHz = 0, txck = 0;
    reg [15:0] cnt_1kHz = 0;
    reg [11:0] cnt_115200 = 0;
    reg [3:0] cnt_100Hz = 0;
    
    assign PLS_100Hz = pls_100Hz;
    assign PLS_1kHz = pls_1kHz;
    
    always @(posedge RST, posedge CLK) begin
        if(RST) begin
            cnt_1kHz <= 0;
            pls_1kHz <= 0;
            cnt_100Hz <= 0;
            pls_100Hz <= 0;
        end
        else begin
            if(cnt_1kHz < (FREQ / 2000) - 1 ) begin
                cnt_1kHz <= cnt_1kHz + 1;
            end
            else begin
                cnt_1kHz <= 0;
                pls_1kHz <= ~pls_1kHz;
                
                if(cnt_100Hz < 9) begin
                    cnt_100Hz <= cnt_100Hz + 1;
                end
                else begin
                    cnt_100Hz <= 0;
                    pls_100Hz <= ~pls_100Hz;
                end
            end
        end
    end
    
    always @(posedge RST, posedge CLK) begin
        if(RST) begin
            cnt_115200 <= 0;
            txck <= 0;
        end
        else begin
            //if(cnt_115200 < (FREQ / 115200) - 1 ) begin
            if(cnt_115200 < 542 ) begin
                cnt_115200 <= cnt_115200 + 1;
            end
            else begin
                cnt_115200 <= 0;
                txck <= ~txck;
            end
        end
    end
    

endmodule
