`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/01/20 10:55:33
// Design Name: 
// Module Name: spi_slave
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


module spi_slave(input CSN, input SCLK, input MOSI, (* MARK_DEBUG="true" *) output MISO, output CLK, (* MARK_DEBUG="true" *) output WEN, (* MARK_DEBUG="true" *) output [6:0] ADDR, (* MARK_DEBUG="true" *) output [7:0] DIN, input [7:0] DOUT);

(* MARK_DEBUG="true" *) reg [15:0] reg0 =  0;
(* MARK_DEBUG="true" *) reg [7:0] reg1 =  0;
(* MARK_DEBUG="true" *) reg wen = 0, ren = 0;
(* MARK_DEBUG="true" *) reg cmd = 0;
(* MARK_DEBUG="true" *) reg [6:0] addr;
(* MARK_DEBUG="true" *) reg [7:0] din;
(* MARK_DEBUG="true" *) reg [4:0] wr_index = 16, rd_index = 8;
(* MARK_DEBUG="true" *) reg done = 0;
(* MARK_DEBUG="true" *) reg [7:0] dout = 0;

assign CLK = SCLK;
assign WEN = wen;
assign ADDR = addr;
assign DIN = din;
assign MISO = dout[0];

always @(posedge SCLK) begin
    if(done == 0) begin
        reg0[wr_index - 1] <= MOSI;
        if(wr_index == 0) begin
            wr_index <= 17;
        end
        else begin
            wr_index <= wr_index - 1;
        end
    end
end

always @(posedge SCLK) begin
    if(done == 0) begin
        reg1[rd_index - 1] <= MOSI;
        if(rd_index == 0) begin
            rd_index <= 17;
        end
        else begin
            rd_index <= rd_index - 1;
        end
    end
end

always @(posedge SCLK) begin
    if(CSN) begin
        //done <= done;
        done <= 0;
        din <= din;
        addr <= addr;
        cmd <= cmd;
    end
    else begin
        if(reg0[15]) begin
            if(wr_index == 0) begin
                done <= 1;
                cmd <= reg0[15];
                addr <= reg0[14:8];
                din <= reg0[7:0];
            end
            else done <= 0;
        end
        else begin
            if(rd_index == 0) begin
                done <= 1;
                cmd <= reg1[7];
                addr <= reg1[6:0];
            end
            else done <= 0;
        end
    end
end

always @(posedge SCLK) begin
    if(done & cmd) begin
        wen <= 1;
    end
    else if(done & (cmd == 0)) begin
        ren <= 1;
    end
    else begin
        wen <= 0;
        ren <= 0;
    end
end

always @(negedge SCLK) begin
    if(CSN) begin
        dout <= 0;
    end
    else begin
        if(ren) begin
            dout <= DOUT;
        end
        else if(dout != 0) begin
            dout <= dout >> 1;
        end
    end
end

endmodule
