`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/02/24 14:36:57
// Design Name: 
// Module Name: hex_cnt_ctl
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


module hex_cnt_ctl( input RST, input CLK, input PLS_1kHz, input BTN_DR, input BTN_SS, output [1:0] CURRENT_STATE, output DISP_MD, output LD0_R, LD0_G, LD1_R, LD1_G );
    
    reg disp_md = 0;
    reg btn_ss_1D = 0, btn_ss_2D = 0, btn_dr_1D = 0, btn_dr_2D = 0, pls_1kHz_1D = 0, pls_1kHz_2D = 0;
    reg [1:0] current_state = 0, next_state = 0; // 0: Reset, 1: Start, 2: Stop
    reg count_start = 0;
    reg [10:0] clr_cnt = 0;
    reg ld0_r = 0, ld0_g = 0, ld1_r = 0, ld1_g = 0;
    
    assign CURRENT_STATE = current_state;
    assign DISP_MD = disp_md;
    assign LD0_R = ld0_r;
    assign LD0_G = ld0_g;
    assign LD1_R = ld1_r;
    assign LD1_G = ld1_g;
    
    always @(posedge RST, posedge CLK) begin
        if(RST) begin
            current_state <= 0;
        end
        else begin
            current_state <= next_state;
        end
    end
    
    always @(posedge RST, posedge CLK) begin
        if(RST) begin
            next_state <= 0;
        end
        else begin
            case (current_state)
                0: begin
                    disp_md <= 0;
                    if(btn_ss_1D & ~btn_ss_2D) begin
                        next_state <= 1;
                    end
                end
                1: begin
                    if(btn_ss_1D & ~btn_ss_2D) begin
                        next_state <= 2;
                    end
                    if(btn_dr_1D & ~btn_dr_2D) begin
                        disp_md <= ~disp_md;
                    end
                end
                2: begin
                    if(btn_ss_1D & ~btn_ss_2D) begin
                        next_state <= 1;
                    end
                    else if(~btn_dr_1D & btn_dr_2D) begin
                        if(clr_cnt >= 1999) begin
                            next_state <= 0;
                        end
                        else begin
                            disp_md <= ~disp_md;
                        end
                    end
                    
                end
            endcase
        end
    end
    
    always @(posedge RST, posedge CLK) begin
        if(RST) begin
            ld0_r <= 0;
            ld0_g <= 0;
            ld1_r <= 0;
            ld1_g <= 0;
        end
        else begin
            case (current_state)
                0: begin
                    ld0_r <= 0;
                    ld0_g <= 0;
                    ld1_r <= 0;
                    ld1_g <= 0;
                end
                1: begin
                    if(disp_md) begin
                        ld0_r <= 0;
                        ld0_g <= 1;
                        ld1_r <= 0;
                        ld1_g <= 0;
                    end
                    else begin
                        ld0_r <= 0;
                        ld0_g <= 0;
                        ld1_r <= 0;
                        ld1_g <= 1;
                    end
                end
                2: begin
                    if(disp_md) begin
                        ld0_r <= 1;
                        ld0_g <= 0;
                        ld1_r <= 0;
                        ld1_g <= 0;
                    end
                    else begin
                        ld0_r <= 0;
                        ld0_g <= 0;
                        ld1_r <= 1;
                        ld1_g <= 0;
                    end
                end
            endcase
        end
    end
    
    always @(posedge RST, posedge CLK) begin
        if(RST) begin
            clr_cnt <= 0;
        end
        else begin
            if(pls_1kHz_1D & ~pls_1kHz_2D) begin
                if(count_start) begin
                    if(clr_cnt < 2000) begin
                        clr_cnt <= clr_cnt + 1;
                    end
                end
                else begin
                    clr_cnt <= 0;
                end
            end
        end
    end
    
    always @(posedge RST, posedge CLK) begin
        if(RST) begin
            count_start <= 0;
        end
        else begin
            if(btn_dr_1D & ~btn_dr_2D) begin
                count_start <= 1;
            end
            else if(~btn_dr_1D & btn_dr_2D) begin
                count_start <= 0;
            end
        end
    end
    
    // 1~2 Delay to detect Riging/Falling edge
    always @(posedge RST, posedge CLK) begin
        if(RST) begin
            btn_ss_1D <= 0;
            btn_ss_2D <= 0;
        end
        else begin
            btn_ss_1D <= BTN_SS;
            btn_ss_2D <= btn_ss_1D;
        end
    end
    
    always @(posedge RST, posedge CLK) begin
        if(RST) begin
            btn_dr_1D <= 0;
            btn_dr_2D <= 0;
        end
        else begin
            btn_dr_1D <= BTN_DR;
            btn_dr_2D <= btn_dr_1D;
        end
    end
    
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
    
endmodule