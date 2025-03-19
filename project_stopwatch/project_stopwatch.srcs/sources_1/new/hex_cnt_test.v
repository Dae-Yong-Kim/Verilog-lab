`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/02/19 14:44:44
// Design Name: 
// Module Name: hex_cnt_test
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


module hex_cnt_test( input RST, CLK, input PLS_100Hz, output [5:0] HEX_m, HEX_s, output [6:0] HEX_us);

    reg pls_100Hz_0 = 0, pls_100Hz_1 = 0;
    reg [6:0] us_cnt = 0;
    reg [5:0] s_cnt = 0, m_cnt = 0;
    
    always @(posedge RST, posedge CLK) begin
        if(RST) begin
            pls_100Hz_0 <= 0;
            pls_100Hz_1 <= 0;
        end
        else begin
            pls_100Hz_0 <= PLS_100Hz;
            pls_100Hz_1 <= pls_100Hz_0;
        end
    end
    
//16
    always @(posedge RST, posedge CLK) begin
        if(RST) begin
            us_cnt <= 0;
            s_cnt <= 0;
            m_cnt <= 0;
        end
        else begin
            if(pls_100Hz_0 & ~pls_100Hz_1) begin
                if(us_cnt < 99) begin
                    us_cnt <= us_cnt + 1;
                end
                else begin
                    us_cnt <= 0;
                    if(s_cnt < 59) begin
                        s_cnt <= s_cnt + 1;
                    end
                    else begin
                        s_cnt <= 0;
                        if(m_cnt < 59) begin
                            m_cnt <= m_cnt + 1;
                        end
                        else begin
                            m_cnt <= 0;
                        end
                    end
                end
            end
        end
    end
    
    assign HEX_m = m_cnt;
    assign HEX_s = s_cnt;
    assign HEX_us = us_cnt;
    
    
    
    /*always @(posedge CLK) begin
        if((pls_100Hz_0 & ~pls_100Hz_1) & (s_cnt == 59) & (us_cnt == 99)) begin
            m_cnt <= m_cnt + 1;
            s_cnt <= 0;
            us_cnt <= 0;
        end
        else if((pls_100Hz_0 & ~pls_100Hz_1) & (us_cnt == 99)) begin
            s_cnt <= s_cnt + 1;
            us_cnt <= 0;
        end
        else if(pls_100Hz_0 & ~pls_100Hz_1) begin
            us_cnt <= us_cnt + 1;
        end
    end*/
    
    

endmodule
