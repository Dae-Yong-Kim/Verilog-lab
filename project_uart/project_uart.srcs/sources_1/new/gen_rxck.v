`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/02/28 10:15:22
// Design Name: 
// Module Name: gen_rxck
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


module gen_rxck( input RST, input CLK, input RXSDATA_I, output reg RXCK, output reg RXSDATA_O );
    
    reg rxsdata_i_1D = 0, rxsdata_i_2D = 0;
    reg rxon = 0;
    reg [3:0] bit_cnt = 0;
    reg [10:0] rdcnt = 0;
    wire [10:0] rdcv;
    wire [9:0] hrdcv;
    
    // BAUD Rate : 115,200 bps
    assign rdcv = 1085;
    assign hrdcv = rdcv[10:1];
    
    always @(posedge RST, posedge CLK) begin
        if(RST) begin
            RXSDATA_O <= 1;
        end
        else begin
            if(rdcnt == 0) begin
                RXSDATA_O <= rxsdata_i_1D;
            end
        end
    end
    
    always @(posedge RST, posedge CLK) begin
        if(RST) begin
            RXCK <= 1;
        end
        else begin
            if(rdcnt < hrdcv) begin
                RXCK <= 0;
            end
            else begin
                RXCK <= 1;
            end
        end
    end
    
    always @(posedge RST, posedge CLK) begin
        if(RST) begin
            rxon <= 0;
        end
        else begin
            if(~rxsdata_i_1D & rxsdata_i_2D) begin
                rxon <= 1;
            end
            else if(bit_cnt >= 15) begin
                rxon <= 0;
            end
        end
    end
    
    always @(posedge RST, posedge CLK) begin
        if(RST) begin
            rdcnt <= rdcv + 1;
        end
        else begin
            if(rxsdata_i_1D != rxsdata_i_2D) begin
                rdcnt <= 0;
            end
            else if(rdcnt < rdcv) begin
                rdcnt <= rdcv + 1;
            end
            else begin
                rdcnt <= 0;
            end
        end
    end
    
    always @(posedge RST, posedge CLK) begin
        if(RST) begin
            rxsdata_i_1D <= 0;
            rxsdata_i_2D <= 0;
        end
        else begin
            rxsdata_i_1D <= RXSDATA_I;
            rxsdata_i_2D <= rxsdata_i_1D;
        end
    end
    
    
endmodule
