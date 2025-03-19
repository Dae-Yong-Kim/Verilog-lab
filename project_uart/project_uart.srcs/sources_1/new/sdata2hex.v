`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/02/28 11:57:54
// Design Name: 
// Module Name: sdata2hex
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


module sdata2hex( input RST, input CLK, input RXSDATA, input RXCK, output reg RXEN, output reg RNPD, output reg [7:0] RXPD );
    
    reg rxck_i_1D = 0, rxck_i_2D = 0;
    reg prxdata = 1;
    reg [3:0] bit_cnt = 15, rbit_cnt = 15, dbit_cnt = 15;
    reg [7:0] rxpd;
    
    always @(posedge RST, posedge CLK) begin
        if(RST) begin
            RXEN <= 0;
        end
        else begin
            if((rbit_cnt < 15) | (bit_cnt < 15)) begin
                RXEN <= 1;
            end
            else begin
                RXEN <= 0;
            end
        end
    end
    
    always @(posedge RST, posedge CLK) begin
        if(RST) begin
            RXPD <= 8'hff;
        end
        else begin
            if(rxck_i_1D & ~rxck_i_2D) begin
                if(dbit_cnt == 8) begin
                    RXPD <= rxpd;
                end
            end
        end
    end
    
    always @(posedge RST, posedge CLK) begin
        if(RST) begin
            RNPD <= 0;
        end
        else begin
            if(rxck_i_1D & ~rxck_i_2D) begin
                if((rbit_cnt >= 4) && (rbit_cnt <= 5)) begin
                    RNPD <= 1;
                end
                else begin
                    RNPD <= 0;
                end
            end
        end
    end
    
    always @(posedge RST, posedge CLK) begin
        if(RST) begin
            rbit_cnt <= 15;
            dbit_cnt <= 15;
        end
        else begin
            if(rxck_i_1D & ~rxck_i_2D) begin
                dbit_cnt <= bit_cnt;
                if(bit_cnt == 9) begin
                    rbit_cnt <= 0;
                end
                else if(rbit_cnt < 9) begin
                    rbit_cnt <= rbit_cnt + 1;
                end
                else begin
                    rbit_cnt <= 15;
                end
            end
        end
    end
    
    always @(posedge RST, posedge CLK) begin
        if(RST) begin
            rxpd <= 8'hff;
        end
        else begin
            if(~rxck_i_1D & rxck_i_2D) begin
                case(bit_cnt)
                    1: begin
                        rxpd[0] <= prxdata;
                    end
                    2: begin
                        rxpd[1] <= prxdata;
                    end
                    3: begin
                        rxpd[2] <= prxdata;
                    end
                    4: begin
                        rxpd[3] <= prxdata;
                    end
                    5: begin
                        rxpd[4] <= prxdata;
                    end
                    6: begin
                        rxpd[5] <= prxdata;
                    end
                    7: begin
                        rxpd[6] <= prxdata;
                    end
                    8: begin
                        rxpd[7] <= prxdata;
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
            if(rxck_i_1D & ~rxck_i_2D) begin
                if((bit_cnt >= 9) & (RXSDATA == 0)) begin
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
            prxdata <= 1;
        end
        else begin
            if(rxck_i_1D & ~rxck_i_2D) begin
                prxdata <= RXSDATA;
            end
        end
    end
    
    always @(posedge RST, posedge CLK) begin
        if(RST) begin
            rxck_i_1D <= 0;
            rxck_i_2D <= 0;
        end
        else begin
            rxck_i_1D <= RXCK;
            rxck_i_2D <= rxck_i_1D;
        end
    end
    
endmodule
