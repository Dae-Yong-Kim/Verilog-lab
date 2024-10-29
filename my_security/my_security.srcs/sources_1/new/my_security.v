`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/28 16:26:47
// Design Name: 
// Module Name: my_security
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


module my_security(input Keypad, input Door, input Window, input CLK, input RST, output Alarm_Siren, output [6:0] FSM_State, output CA);

localparam [1:0] disarmed = 2'b01, armed = 2'b10, wait_delay = 2'b11, alarm = 2'b00;
reg [1:0] current_state, next_state;
reg count_enable = 1'b0, enable = 1'b0;
reg [29:0] count;
reg [20:0] cnt = 21'b0;
wire [1:0] sensor = {Door, Window};
wire [3:0] digit;

always @(posedge CLK) begin // current state & count 설정
    if(RST) begin
        current_state <= disarmed;
    end
    else begin
        current_state <= next_state;
    end
end

always @(current_state, Keypad, sensor, count) begin // next_state 설정
    case(current_state)
        disarmed: begin
            if(Keypad == 1'b0) next_state = armed;
            else next_state = disarmed;
        end
        armed:  begin
            if(sensor != 2'b00) next_state = wait_delay;
            else if(Keypad == 1'b1 && sensor == 2'b00) next_state = disarmed;
            else next_state = armed;
        end
        wait_delay:  begin
            count_enable = 1'b1;
            if(count == (625_000_000 - 1)) begin
                next_state = alarm;
                count_enable = 1'b0;
            end
            else if(Keypad == 1'b1 && count < 625_000_000) begin
                next_state = disarmed;
                count_enable = 1'b0;
            end
            else next_state = wait_delay;
        end
        alarm:  begin
            if(Keypad == 1'b1) next_state = disarmed;
            else next_state = alarm;
        end
    endcase
end

always @(posedge CLK) begin // 5초 간격 count_enable 생성
    if(count_enable == 1'b1) begin
        if(count == 625_000_000) count <= 30'b1;
        else count <= count + 1;
    end
    else count <= 30'b0;
end

always @(posedge CLK) begin // 1/100초 간격 enable 생성
    if(cnt == 1_250_000) begin
        enable <= ~enable;
        cnt <= 21'b0;
    end
    else cnt <= cnt + 1;
end

assign Alarm_Siren = ~|current_state; // 출력 할당
assign CA = enable;
assign digit = enable ? {3'b0, current_state[1]} : {3'b0, current_state[0]};

disp_mod uut(.DIGIT(digit), .AN(FSM_State));

endmodule
