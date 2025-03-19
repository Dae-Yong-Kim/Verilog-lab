`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/01/20 10:53:56
// Design Name: 
// Module Name: spi_master
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


module spi_master(input RST, input CLK, (* MARK_DEBUG="true" *) input [1:0] CMD, (* MARK_DEBUG="true" *) input [6:0] ADDR, (* MARK_DEBUG="true" *) input [7:0] WR_DATA, (* MARK_DEBUG="true" *) output [7:0] RD_DATA, (* MARK_DEBUG="true" *) output reg CSN, (* MARK_DEBUG="true" *) output reg SCLK, (* MARK_DEBUG="true" *) output MOSI, (* MARK_DEBUG="true" *) input MISO);

reg [3:0] sclk_cnt = 0;
(* MARK_DEBUG="true" *) reg [4:0] csn_wr_cnt = 0, csn_rd_cnt = 0;
(* MARK_DEBUG="true" *) reg [4:0] rd_cnt = 0;
(* MARK_DEBUG="true" *) reg csn_wr_enable = 0, csn_rd_enable = 0;
reg wr_cmd_1D = 0, wr_cmd_2D = 0;
reg rd_cmd_1D = 0, rd_cmd_2D = 0;
(* MARK_DEBUG="true" *) reg rd_done = 0;
reg sclk_1D = 0, sclk_2D = 0;
(* MARK_DEBUG="true" *) reg [15:0] mosi_data = 0;
(* MARK_DEBUG="true" *) reg [7:0] miso_data = 0;

assign MOSI = mosi_data[15];
assign RD_DATA = rd_done ? miso_data : 0;

always @(posedge CLK) begin
    if(RST == 0) begin
        wr_cmd_1D <= 0;
        wr_cmd_2D <= 0;
    end
    else begin
        wr_cmd_1D <= CMD[0];
        wr_cmd_2D <= wr_cmd_1D;
    end
end

always @(posedge CLK) begin
    if(RST == 0) begin
        rd_cmd_1D <= 0;
        rd_cmd_2D <= 0;
    end
    else begin
        rd_cmd_1D <= CMD[1];
        rd_cmd_2D <= rd_cmd_1D;
    end
end

always @(posedge CLK) begin
    if(RST == 0) begin
        sclk_1D <= 0;
        sclk_2D <= 0;
    end
    else begin
        sclk_1D <= SCLK;
        sclk_2D <= sclk_1D;
    end
end

always @(posedge CLK) begin
    if(RST == 0)    sclk_cnt <= 0;
    else begin
        if(sclk_cnt == 10) begin
            sclk_cnt <= 0;
        end
        sclk_cnt <= sclk_cnt + 1;
    end
end

always @(posedge CLK) begin
    if(RST == 0)    SCLK <= 0;
    else begin
        if(CSN) begin
            SCLK <= 0;
        end
        else begin
            if(sclk_cnt == 1) begin
                SCLK <= 1;
            end
            else begin
                SCLK <= 0;
            end
        end
        
    end
end

always @(posedge CLK) begin
    if(RST == 0)    CSN <= 1;
    else begin
        if(csn_wr_enable | csn_rd_enable) begin
            CSN <= 0;
        end
        else begin
            CSN <= 1;
        end
    end
end

always @(posedge CLK) begin
    if(RST == 0)    csn_wr_enable <= 0;
    else begin
        if((wr_cmd_1D & ~(wr_cmd_2D))) begin
            csn_wr_enable <= 1;
        end
        if(csn_wr_cnt == 19) begin
            csn_wr_enable <= 0;
        end
    end
end

always @(posedge CLK) begin
    if(RST == 0)    csn_rd_enable <= 0;
    else begin
        if(rd_cmd_1D & ~(rd_cmd_2D)) begin
            csn_rd_enable <= 1;
        end
        if(csn_rd_cnt == 19) begin
            csn_rd_enable <= 0;
        end
    end
end

always @(posedge CLK) begin
    if(RST == 0) begin
        csn_wr_cnt <= 0;
    end
    else begin
        if(CSN) begin
            csn_wr_cnt <= 0;
        end
        else if(sclk_1D & ~(sclk_2D)) begin
            csn_wr_cnt <= csn_wr_cnt + 1;
        end
    end
end

always @(posedge CLK) begin
    if(RST == 0) begin
        csn_rd_cnt <= 0;
    end
    else begin
        if(CSN) begin
            csn_rd_cnt <= 0;
        end
        else if(sclk_1D & ~(sclk_2D)) begin
            csn_rd_cnt <= csn_rd_cnt + 1;
        end
    end
end

always @(posedge CLK) begin
    if(RST == 0) begin
        mosi_data <= 0;
    end
    else begin
        if(wr_cmd_1D & ~(wr_cmd_2D)) begin
            mosi_data <= {1, ADDR, WR_DATA};
        end
        else if(rd_cmd_1D & ~(rd_cmd_2D)) begin
            mosi_data[15:8] <= {0, ADDR};
        end
        if(~(sclk_1D) & sclk_2D) begin
            mosi_data <= mosi_data << 1;
        end
    end
end

always @(posedge CLK) begin
    if(RST == 0) begin
        rd_cnt <= 0;
    end
    else begin
        if(CSN) begin
            rd_cnt <= 0;
        end
        if(~(sclk_1D) & sclk_2D) begin
            rd_cnt <= rd_cnt + 1;
        end
    end
end

always @(posedge SCLK) begin
    if(RST == 0) begin
        miso_data <= 0;
        rd_done <= 0;
    end
    else begin
        if(CSN) begin
            rd_done <= 0;
            miso_data <= 0;
        end
        else begin
            if(rd_cnt > 9 && rd_cnt < 18) begin
                miso_data <= miso_data >> 1;
                miso_data[7] <= MISO;
                rd_done <= 0;
            end
            else if(rd_cnt == 18) begin
                rd_done <= 1;
            end
            else begin
                rd_done <= 0;
            end
        end
    end
end

endmodule
