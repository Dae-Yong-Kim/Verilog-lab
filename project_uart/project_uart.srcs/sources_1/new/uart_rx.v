`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/02/28 09:53:48
// Design Name: 
// Module Name: uart_rx
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


module uart_rx( input RST, input CLK, input RXSDATA, output reg RNPD, output reg [27:0] RPDATA );
    
    wire rxck, rxsdata;
    wire rxen, rnpd;
    wire [7:0] rxpd;
    
    wire [3:0] nibble;
    reg rnpd_1D = 0, rnpd_2D = 0;
    reg flag = 0;
    reg [3:0] byte_cnt = 15;
    reg [27:0] rpdata = 28'hfffffff;
    
    gen_rxck gen_rxck0( .RST(RST), .CLK(CLK), .RXSDATA_I(RXSDATA), .RXCK(rxck), .RXSDATA_O(rxsdata) );
    
    sdata2hex sdata2hex0( .RST(RST), .CLK(CLK), .RXSDATA(rxsdata), .RXCK(rxck), .RXEN(rxen), .RNPD(rnpd), .RXPD(rxpd) );
    
    always @(posedge RST, posedge CLK) begin
        if(RST) begin
            RNPD <= 0;
        end
        else begin
            if(rxen == 0) begin
                RNPD <= 0;
            end
            else if(~rnpd_1D & rnpd_2D) begin
                if((flag == 0) & (rxpd == 8'h03) & (byte_cnt == 8)) begin
                    RNPD <= 1;
                end
            end
        end
    end
    
    always @(posedge RST, posedge CLK) begin
        if(RST) begin
            RPDATA <= 28'hfffffff;
        end
        else begin
            if(rnpd_1D & ~rnpd_2D) begin
                if(byte_cnt == 8) begin
                    if((flag == 0) & (rxpd == 8'h03)) begin
                        RPDATA <= rpdata;
                    end
                end
            end
        end
    end
    
    always @(posedge RST, posedge CLK) begin
        if(RST) begin
            flag <= 0;
        end
        else begin
            if(rxen == 0) begin
                flag <= 0;
            end
            else if(rnpd_1D & ~rnpd_2D) begin
                if(flag == 0) begin
                    if(byte_cnt == 0) begin
                        if(rxpd != 8'h02) begin
                            flag <= 1;
                        end
                    end
                    else if(byte_cnt == 8) begin
                        if(rxpd != 8'h03) begin
                            flag <= 1;
                        end
                    end
                    else if(((rxpd[7:4] == 3) & (rxpd[3:0] < 10)) | ((rxpd[7:4] == 4) & (rxpd[3:0] > 0) & (rxpd[3:0] < 7))) begin
                        flag <= 0;
                    end
                    else begin
                        flag <= 1;
                    end
                end
            end
        end
    end
    
    assign nibble = (rxpd[7:4] == 3) ? (rxpd[3:0]) : (rxpd[7:4] == 4) ? (rxpd[3:0] + 9) : 0;
    
    always @(posedge RST, posedge CLK) begin
        if(RST) begin
            rpdata <= 28'hfffffff;
        end
        else begin
            if(rnpd_1D & ~rnpd_2D) begin
                case(byte_cnt)
                    1: begin
                        rpdata[27:24] <= nibble;
                    end
                    2: begin
                        rpdata[23:20] <= nibble;
                    end
                    3: begin
                        rpdata[19:16] <= nibble;
                    end
                    4: begin
                        rpdata[15:12] <= nibble;
                    end
                    5: begin
                        rpdata[11:8] <= nibble;
                    end
                    6: begin
                        rpdata[7:4] <= nibble;
                    end
                    7: begin
                        rpdata[3:0] <= nibble;
                    end
                endcase
            end
        end
    end
    
    always @(posedge RST, posedge CLK) begin
        if(RST) begin
            byte_cnt <= 15;
        end
        else begin
            if(rxen == 0) begin
                byte_cnt <= 0;
            end
            else if(~rnpd_1D & rnpd_2D) begin
                if(byte_cnt < 15) begin
                    byte_cnt <= byte_cnt + 1;
                end
            end
        end
    end
    
    always @(posedge RST, posedge CLK) begin
        if(RST) begin
            rnpd_1D <= 0;
            rnpd_2D <= 0;
        end
        else begin
            rnpd_1D <= rnpd;
            rnpd_2D <= rnpd_1D;
        end
    end
    
endmodule
