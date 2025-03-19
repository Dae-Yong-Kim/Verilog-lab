`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/02/24 12:25:51
// Design Name: 
// Module Name: btn_cnt_disp_test
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


module btn_cnt_disp_test( input RST, input CLK, input BTN_DR, input BTN_SS, output [6:0] SEG_H, SEG_L, output CA_H, CA_L, output LD0_R, LD0_G, LD1_R, LD1_G );
    
    wire pls_100Hz, pls_1kHz;
    wire btn_ss, btn_dr;
    wire pls_100Hz_in;
    wire disp_md;
    reg pre_disp_md = 0;
    wire [1:0] current_state;   //0: reset, 1: start, 2: stop
    reg [1:0] pre_state = 0;
    reg tstart = 0, txck = 0;
    wire rst;
    reg [27:0] pdata = 7'hfffffff;
    
    assign rst = ~RST;
    
    assign pls_100Hz_in = (current_state == 1) ? pls_100Hz : pls_100Hz_in;
    
    gen_pulse gen_pulse0( .RST(rst), .CLK(CLK), .PLS_100Hz(pls_100Hz), .PLS_1kHz(pls_1kHz), .TXCK(txck) );
    
    debounce debounce0( .RST(rst), .CLK(CLK), .PLS_1kHz(pls_1kHz), .BTN_IN(BTN_SS), .BTN_OUT(btn_ss) );
    debounce debounce1( .RST(rst), .CLK(CLK), .PLS_1kHz(pls_1kHz), .BTN_IN(BTN_DR), .BTN_OUT(btn_dr) );
    
    hex_cnt_ctl hex_cnt_ctl0( .RST(rst), .CLK(CLK), .PLS_1kHz(pls_1kHz), .BTN_DR(btn_dr), .BTN_SS(btn_ss), .CURRENT_STATE(current_state), .DISP_MD(disp_md), .LD0_R(LD0_R), .LD0_G(LD0_G), .LD1_R(LD1_R), .LD1_G(LD1_G) );
    
    hex_cnt_disp hex_cnt_disp0( .RST(rst), .CLK(CLK), .CURRENT_STATE(current_state), .PLS_100Hz(pls_100Hz_in), .PLS_1kHz(pls_1kHz), .DISP_MD(disp_md), .SEG_H(SEG_H), .SEG_L(SEG_L), .CA_H(CA_H), .CA_L(CA_L) );
    
    always @(posedge RST, posedge CLK) begin
        if(RST) begin
            pre_disp_md <= 0;
            pre_state <= 0;
        end
        else begin
            pre_disp_md <= disp_md;
            pre_state <= current_state;
        end
    end
    
    always @(posedge RST, posedge CLK) begin
        if(RST) begin
            pdata <= 7'hfffffff;
        end
        else begin
            if((pre_disp_md != disp_md) | (pre_state != current_state)) begin
                tstart <= 1;
            end
            else begin
                tstart <= 0;
            end
        end
    end
    
    always @(posedge RST, posedge CLK) begin
        if(RST) begin
            tstart <= 0;
        end
        else begin
            if((pre_disp_md != disp_md) | (pre_state != current_state)) begin
                tstart <= 1;
            end
            else begin
                tstart <= 0;
            end
        end
    end
    
endmodule
