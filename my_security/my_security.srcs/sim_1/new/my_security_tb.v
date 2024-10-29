`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/29 09:32:38
// Design Name: 
// Module Name: my_security_tb
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


module my_security_tb();
parameter CLK_PD = 8.0;
reg clk, rst, keypad, door, window;
wire alarm_siren, ca;
wire [6:0] fsm_state;

my_security uut(.Keypad(keypad), .Door(door), .Window(window), .CLK(clk), .RST(rst), .Alarm_Siren(alarm_siren), .FSM_State(fsm_state), .CA(ca));

initial begin
    rst = 1'b1;
    #(CLK_PD * 10);
    rst = 1'b0;
end

initial clk = 1'b0;
always #(CLK_PD / 2) clk = ~clk;

initial begin
    keypad = 1'b1;
    door = 1'b0;
    window = 1'b0;
    wait (rst == 1'b0); // reset이 0이 될 때까지 대기
    #(CLK_PD*4);
    @(posedge clk);
    repeat (8) begin // 8번 반복
        keypad = 1'b0;
        repeat(4) @(posedge clk);
        keypad = 1'b1;
        repeat(4) @(posedge clk);
        keypad = 1'b0;
        repeat(4) @(posedge clk);
        door = 1'b1;
        repeat(4) @(posedge clk);
        keypad = 1'b1;
        repeat(4) @(posedge clk);
    end
    #(CLK_PD*10);
    $finish;
end

endmodule
