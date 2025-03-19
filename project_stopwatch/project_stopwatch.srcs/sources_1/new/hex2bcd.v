`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/02/20 12:27:36
// Design Name: 
// Module Name: hex2bcd
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


module hex2bcd( input RST, CLK, input [6:0] HEX, output [7:0] BCD );
    
    reg [3:0] bcd_H = 0, bcd_L = 0;
    reg [7:0] bcd = 0;
    wire [6:0] thex;
    
    assign thex = HEX;
    assign BCD = bcd;
    
    always @(thex, bcd_H) begin
        if(thex < 10) begin
            bcd_H = 0;
        end
        else if(thex < 20) begin
            bcd_H = 1;
        end
        else if(thex < 30) begin
            bcd_H = 2;
        end
        else if(thex < 40) begin
            bcd_H = 3;
        end
        else if(thex < 50) begin
            bcd_H = 4;
        end
        else if(thex < 60) begin
            bcd_H = 5;
        end
        else if(thex < 70) begin
            bcd_H = 6;
        end
        else if(thex < 80) begin
            bcd_H = 7;
        end
        else if(thex < 90) begin
            bcd_H = 8;
        end
        else begin
            bcd_H = 9;
        end
        
        bcd_L = thex - (bcd_H * 10);
    end
    
    always @(bcd_L) begin
        bcd = {bcd_H, bcd_L};
    end
    
    //I don't use Sequential Circuit for Timing
    /*always @(posedge RST, posedge CLK) begin
        if(RST) begin
            bcd <= 0;
        end
        else begin
            bcd = {bcd_H, bcd_L};
        end
    end*/
    
    /*always @(thex) begin
        if(thex < 10) begin
            bcd_H = 0;
        end
        bcd_H = thex / 10;
        bcd_L = thex % 10;
    end*/
    
    /*always @(thex) begin
        if(thex < 10) begin
            bcd_H = 0;
        end
        else if(thex < 20) begin
            bcd_H = 1;
        end
        else if(thex < 30) begin
            bcd_H = 2;
        end
        else if(thex < 40) begin
            bcd_H = 3;
        end
        else if(thex < 50) begin
            bcd_H = 4;
        end
        else if(thex < 60) begin
            bcd_H = 5;
        end
        else if(thex < 70) begin
            bcd_H = 6;
        end
        else if(thex < 80) begin
            bcd_H = 7;
        end
        else if(thex < 90) begin
            bcd_H = 8;
        end
        else begin
            bcd_H = 9;
        end
        
        bcd_L = thex % 10;
    end*/
    
endmodule
