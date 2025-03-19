`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/02/20 16:10:13
// Design Name: 
// Module Name: hex2bcd_test
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


module hex2bcd_test( input [13:0] HEX, output [15:0] BCD );
    
    reg [3:0] bcd_1000 = 0, bcd_100 = 0, bcd_10 = 0, bcd_1 = 0;
    reg [15:0] bcd = 0;
    reg [9:0] thex2 = 0;
    reg [6:0] thex3 = 0;
    wire [13:0] thex1;
    
    assign thex1 = HEX;
    assign BCD = bcd;
    
    always @(thex1, bcd_1000) begin
        if(thex1 < 1000) begin
            bcd_1000 = 0;
        end
        else if(thex1 < 2000) begin
            bcd_1000 = 1;
        end
        else if(thex1 < 3000) begin
            bcd_1000 = 2;
        end
        else if(thex1 < 4000) begin
            bcd_1000 = 3;
        end
        else if(thex1 < 5000) begin
            bcd_1000 = 4;
        end
        else if(thex1 < 6000) begin
            bcd_1000 = 5;
        end
        else if(thex1 < 7000) begin
            bcd_1000 = 6;
        end
        else if(thex1 < 8000) begin
            bcd_1000 = 7;
        end
        else if(thex1 < 9000) begin
            bcd_1000 = 8;
        end
        else begin
            bcd_1000 = 9;
        end
        
        thex2 = thex1 - (bcd_1000 * 1000);
    end
    
    always @(thex2, bcd_100) begin
        if(thex1 < 100) begin
            bcd_100 = 0;
        end
        else if(thex1 < 200) begin
            bcd_100 = 1;
        end
        else if(thex1 < 300) begin
            bcd_100 = 2;
        end
        else if(thex1 < 400) begin
            bcd_100 = 3;
        end
        else if(thex1 < 500) begin
            bcd_100 = 4;
        end
        else if(thex1 < 600) begin
            bcd_100 = 5;
        end
        else if(thex1 < 700) begin
            bcd_100 = 6;
        end
        else if(thex1 < 800) begin
            bcd_100 = 7;
        end
        else if(thex1 < 900) begin
            bcd_100 = 8;
        end
        else begin
            bcd_100 = 9;
        end
        
        thex3 = thex2 - (bcd_100 * 100);
    end
    
    always @(thex3, bcd_10) begin
        if(thex3 < 10) begin
            bcd_10 = 0;
        end
        else if(thex3 < 20) begin
            bcd_10 = 1;
        end
        else if(thex3 < 30) begin
            bcd_10 = 2;
        end
        else if(thex3 < 40) begin
            bcd_10 = 3;
        end
        else if(thex3 < 50) begin
            bcd_10 = 4;
        end
        else if(thex3 < 60) begin
            bcd_10 = 5;
        end
        else if(thex3 < 70) begin
            bcd_10 = 6;
        end
        else if(thex3 < 80) begin
            bcd_10 = 7;
        end
        else if(thex3 < 90) begin
            bcd_10 = 8;
        end
        else begin
            bcd_10 = 9;
        end
        
        bcd_1 = thex3 - (bcd_10 * 10);
    end
    
    /*always @(thex1) begin
        bcd_1000 = thex1 / 1000;
        bcd_100 = (thex1 / 100) % 10;
        bcd_10 = (thex1 / 10) % 10;
        bcd_1 = thex1 % 10;
    end*/
    
    always @(bcd_1) begin
        bcd = {bcd_1000, bcd_100, bcd_10, bcd_1};
    end
    
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