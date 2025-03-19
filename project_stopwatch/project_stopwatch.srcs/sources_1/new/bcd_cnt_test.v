`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/02/19 14:43:03
// Design Name: 
// Module Name: bcd_cnt_test
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


module bcd_cnt_test( input CLK, input PLS_100Hz, output [6:0] BCD_m, BCD_s, output [7:0] BCD_us);

    reg pls_100Hz_0 = 0, pls_100Hz_1 = 0;
    reg pls_100Hz_redge = 0, pls_100Hz_fedge = 0;
    reg [3:0] us_cnt_L = 0, us_cnt_H = 0, s_cnt_L = 0, m_cnt_L = 0;
    reg [2:0] s_cnt_H = 0, m_cnt_H = 0;
    
    always @(posedge CLK) begin
        pls_100Hz_0 <= PLS_100Hz;
        pls_100Hz_1 <= pls_100Hz_0;
        
        if(pls_100Hz_0 & ~pls_100Hz_1) begin
            pls_100Hz_redge <= 1;
        end
        else begin
            pls_100Hz_redge <= 0;
        end
        
        if(~pls_100Hz_0 & pls_100Hz_1) begin
            pls_100Hz_fedge <= 1;
        end
        else begin
            pls_100Hz_fedge <= 0;
        end
    end

//10
    always @(posedge CLK) begin
        if(pls_100Hz_redge == 1) begin
            if(us_cnt_L < 9) begin
                us_cnt_L <= us_cnt_L + 1;
            end
            else begin
                us_cnt_L <= 0;
                if(us_cnt_H < 9) begin
                    us_cnt_H <= us_cnt_H + 1;
                end
                else begin
                    us_cnt_H <= 0;
                    if(s_cnt_L < 9) begin
                        s_cnt_L <= s_cnt_L + 1;
                    end
                    else begin
                        s_cnt_L <= 0;
                        if(s_cnt_H < 5) begin
                            s_cnt_H <= s_cnt_H + 1;
                        end
                        else begin
                            s_cnt_H <= 0;
                            if(m_cnt_L < 9) begin
                                m_cnt_L <= m_cnt_L + 1;
                            end
                            else begin
                                m_cnt_L <= 0;
                                if(m_cnt_H < 5) begin
                                    m_cnt_H <= m_cnt_H + 1;
                                end
                                else begin
                                    m_cnt_H <= 0;
                                end
                            end
                        end
                    end
                end
            end
        end
    end

    assign BCD_m = {m_cnt_H, m_cnt_L};
    assign BCD_s = {s_cnt_H, s_cnt_L};
    assign BCD_us = {us_cnt_H, us_cnt_L};
    
    
    
    
    
    
    /*always @(posedge CLK) begin
        if((pls_100Hz_redge == 1)& (m_cnt_H == 5) & (m_cnt_L == 9) & (s_cnt_H == 5) & (s_cnt_L == 9) & (us_cnt_H == 9) & (us_cnt_L == 9)) begin
            m_cnt_H <= 0;
            m_cnt_L <= 0;
            s_cnt_H <= 0;
            s_cnt_L <= 0;
            us_cnt_H <= 0;
            us_cnt_L <= 0;
        end
        else if((pls_100Hz_redge == 1) & (m_cnt_L == 9) & (s_cnt_H == 5) & (s_cnt_L == 9) & (us_cnt_H == 9) & (us_cnt_L == 9)) begin
            m_cnt_H <= m_cnt_H + 1;
            m_cnt_L <= 0;
            s_cnt_H <= 0;
            s_cnt_L <= 0;
            us_cnt_H <= 0;
            us_cnt_L <= 0;
        end
        else if((pls_100Hz_redge == 1) & (s_cnt_H == 5) & (s_cnt_L == 9) & (us_cnt_H == 9) & (us_cnt_L == 9)) begin
            m_cnt_L <= m_cnt_L + 1;
            s_cnt_H <= 0;
            s_cnt_L <= 0;
            us_cnt_H <= 0;
            us_cnt_L <= 0;
        end
        else if((pls_100Hz_redge == 1) & (s_cnt_L == 9) & (us_cnt_H == 9) & (us_cnt_L == 9)) begin
            s_cnt_H <= s_cnt_H + 1;
            s_cnt_L <= 0;
            us_cnt_H <= 0;
            us_cnt_L <= 0;
        end
        else if((pls_100Hz_redge == 1) & (us_cnt_H == 9) & (us_cnt_L == 9)) begin
            s_cnt_L <= s_cnt_L + 1;
            us_cnt_H <= 0;
            us_cnt_L <= 0;
        end
        else if((pls_100Hz_redge == 1) & (us_cnt_L == 9)) begin
            us_cnt_H <= us_cnt_H + 1;
            us_cnt_L <= 0;
        end
        else if(pls_100Hz_redge == 1) begin
            us_cnt_L <= us_cnt_L + 1;
        end
    end*/
    
    
    
    
    
    
    /*
    reg pls_100Hz_0 = 0, pls_100Hz_1 = 0;
    reg pls_100Hz_redge = 0, pls_100Hz_fedge = 0;
    reg [3:0] us_cnt_L = 0, us_cnt_H = 0, s_cnt_L = 0, m_cnt_L = 0;
    reg [2:0] s_cnt_H = 0, m_cnt_H = 0;
    
    wire m_H_carry_en, m_L_carry_en, s_H_carry_en, s_L_carry_en, us_H_carry_en;
    
    assign us_H_carry_en = pls_100Hz_redge & (us_cnt_L == 9);
    assign s_L_carry_en = us_H_carry_en & (us_cnt_H == 9);
    assign s_H_carry_en = s_L_carry_en & (s_cnt_L == 9);
    assign m_L_carry_en = s_H_carry_en & (s_cnt_H == 5);
    assign m_H_carry_en = m_L_carry_en & (m_cnt_L == 9);
    
    always @(posedge CLK) begin
        pls_100Hz_0 <= PLS_100Hz;
        pls_100Hz_1 <= pls_100Hz_0;
        
        if(pls_100Hz_0 & ~pls_100Hz_1) begin
            pls_100Hz_redge <= 1;
        end
        else begin
            pls_100Hz_redge <= 0;
        end
        
        if(~pls_100Hz_0 & pls_100Hz_1) begin
            pls_100Hz_fedge <= 1;
        end
        else begin
            pls_100Hz_fedge <= 0;
        end
    end

//10
    always @(posedge CLK) begin
        if(m_H_carry_en) begin
            m_cnt_H <= m_cnt_H + 1;
            m_cnt_L <= 0;
            s_cnt_H <= 0;
            s_cnt_L <= 0;
            us_cnt_H <= 0;
            us_cnt_L <= 0;
        end
        else if(m_L_carry_en) begin
            m_cnt_L <= m_cnt_L + 1;
            s_cnt_H <= 0;
            s_cnt_L <= 0;
            us_cnt_H <= 0;
            us_cnt_L <= 0;
        end
        else if(s_H_carry_en) begin
            s_cnt_H <= s_cnt_H + 1;
            s_cnt_L <= 0;
            us_cnt_H <= 0;
            us_cnt_L <= 0;
        end
        else if(s_L_carry_en) begin
            s_cnt_L <= s_cnt_L + 1;
            us_cnt_H <= 0;
            us_cnt_L <= 0;
        end
        else if(us_H_carry_en) begin
            us_cnt_H <= us_cnt_H + 1;
            us_cnt_L <= 0;
        end
        else if(pls_100Hz_redge == 1) begin
            us_cnt_L <= us_cnt_L + 1;
        end
    end

    assign BCD_m = {m_cnt_H, m_cnt_L};
    assign BCD_s = {s_cnt_H, s_cnt_L};
    assign BCD_us = {us_cnt_H, us_cnt_L};
    */
    
endmodule