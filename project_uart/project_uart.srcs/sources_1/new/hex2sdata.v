`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/02/27 12:19:28
// Design Name: 
// Module Name: hex2sdata
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


module hex2sdata( input RST, input CLK, input TSTART, input TXCK, input [7:0] HEX, input SDATA );
    
    wire txck_re, txck_fe, tstart_re, tstart_fe;
    reg txck_1D = 0, txck_2D = 0, tstart_1D = 0, tstart_2D = 0;
    reg [3:0] bit_cnt = 15;
    reg [7:0] phex = 8'hff;
    reg sdata = 1;
    
    assign txck_re = txck_1D & ~txck_2D;
    assign txck_fe = ~txck_1D & txck_2D;
    assign tstart_re = tstart_1D & ~tstart_2D;
    assign tstart_fe = ~tstart_1D & tstart_2D;
    
    assign SDATA = sdata;
    
    always @(posedge RST, posedge CLK) begin
        if(RST) begin
            phex <= 8'hff;
        end
        else begin
            if(tstart_re) begin
                phex <= HEX;
            end
        end
    end
    
    always @(posedge RST, posedge CLK) begin
        if(RST) begin
            sdata <= 1;
        end
        else begin
            if(txck_fe && (bit_cnt != 15)) begin
                case(bit_cnt)
                    0: begin
                        sdata <= 0;
                    end
                    1: begin
                        sdata <= phex[0];
                    end
                    2: begin
                        sdata <= phex[1];
                    end
                    3: begin
                        sdata <= phex[2];
                    end
                    4: begin
                        sdata <= phex[3];
                    end
                    5: begin
                        sdata <= phex[4];
                    end
                    6: begin
                        sdata <= phex[5];
                    end
                    7: begin
                        sdata <= phex[6];
                    end
                    8: begin
                        sdata <= phex[7];
                    end
                    9: begin
                        sdata <= 1;
                    end
                    default: begin
                        sdata <= 1;
                    end
                endcase
            end
        end
    end
    
    always @(posedge RST, posedge CLK) begin
        if(RST) begin
            bit_cnt <= 15;
        end
        else begin
            if(txck_re) begin
                if(tstart_re && (bit_cnt > 8)) begin
                    bit_cnt <= 0;
                end
                else if(bit_cnt < 9) begin
                    bit_cnt <= bit_cnt + 1;
                end
                else begin
                    bit_cnt <= 15;
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
