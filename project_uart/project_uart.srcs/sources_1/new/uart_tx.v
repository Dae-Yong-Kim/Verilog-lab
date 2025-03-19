`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/02/26 15:43:34
// Design Name: 
// Module Name: uart_tx
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


module uart_tx( input RST, input CLK, input TSTART, input TXCK, input [27:0] PDATA, output SDATA );
    
    wire [3:0] nibble;
    reg txck_1D = 0, txck_2D = 0, tstart_1D = 0, tstart_2D = 0;
    reg tstart_n = 0;
    reg [3:0] byte_cnt = 15;
    reg [3:0] bit_cnt = 15;
    reg [7:0] hex = 8'hff;
    reg [27:0] tpdata = 28'hfffffff;
    
    hex2sdata hex2sdata0( .RST(RST), .CLK(CLK), .TSTART(tstart_n), .TXCK(TXCK), .HEX(hex), .SDATA(SDATA) );
    
    assign nibble = (byte_cnt == 1) ? tpdata[27:24] : (byte_cnt == 2) ? tpdata[23:20] : (byte_cnt == 3) ? tpdata[19:16] : (byte_cnt == 4) ? tpdata[15:12] : (byte_cnt == 5) ? tpdata[11:8] : (byte_cnt == 6) ? tpdata[7:4] : (byte_cnt == 7) ? tpdata[3:0] : 8'hff;
    
    always @(posedge RST, posedge CLK) begin
        if(RST) begin
            tstart_n <= 0;
        end
        else begin
            if((bit_cnt == 4) || (bit_cnt == 5)) begin
                tstart_n <= 1;
            end
            else begin
                tstart_n <= 0;
            end
        end
    end
    
    always @(posedge RST, posedge CLK) begin
        if(RST) begin
            hex <= 8'hff;
        end
        else begin
            if(byte_cnt == 0) begin
                hex <= 8'h02;
            end
            else if(byte_cnt == 8) begin
                hex <= 8'h03;
            end
            else if(byte_cnt >= 9) begin
                hex <= 8'hff;
            end
            else begin
                if(nibble < 10) begin
                    hex <= {4'h3, nibble};
                end
                else begin
                    hex[7:4] <= 4'h4;
                    hex[3:0] <= (nibble - 9);
                end
            end
        end
    end
    
    always @(posedge RST, posedge CLK) begin
        if(RST) begin
            tpdata <= 16'hffff;
        end
        else begin
            if(tstart_1D & ~tstart_2D) begin
                tpdata <= PDATA;
            end
        end
    end
    
    always @(posedge RST, posedge CLK) begin
        if(RST) begin
            bit_cnt <= 15;
            byte_cnt <= 15;
        end
        else begin
            if(txck_1D & ~txck_2D) begin
                if((tstart_1D & ~tstart_2D) && (byte_cnt == 15) && (bit_cnt == 15)) begin
                    bit_cnt <= 0;
                    byte_cnt <= 0;
                end
                else if(bit_cnt < 9) begin
                    bit_cnt <= bit_cnt + 1;
                end
                else if(byte_cnt < 8) begin
                    bit_cnt <= 0;
                    byte_cnt <= byte_cnt + 1;
                end
                else begin
                    bit_cnt <= 15;
                    byte_cnt <= 15;
                end
            end
        end
    end
    
    always @(posedge RST, posedge CLK) begin
        if(RST) begin
            txck_1D <= 0;
            txck_2D <= 0;
        end
        else begin
            txck_1D <= TXCK;
            txck_2D <= txck_1D;
        end
    end
    
    always @(posedge RST, posedge CLK) begin
        if(RST) begin
            tstart_1D <= 0;
            tstart_2D <= 0;
        end
        else begin
            if(txck_1D & ~txck_2D) begin
                tstart_1D <= TSTART;
                tstart_2D <= tstart_1D;
            end
        end
    end
    
endmodule
