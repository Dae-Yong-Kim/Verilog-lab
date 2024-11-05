`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/04 16:06:15
// Design Name: 
// Module Name: my_stopwatch
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


module my_stopwatch(input CLK, (* MARK_DEBUG="true" *) input RST, (* MARK_DEBUG="true" *) input START_STOP, (* MARK_DEBUG="true" *) input CLEAR_LAB, (* MARK_DEBUG="true" *) output [6:0] AN, (* MARK_DEBUG="true" *) output CA);

parameter FREQ = 125_000_000;
localparam [1:0] clear = 2'b00, start = 2'b01, stop = 2'b10;
(* MARK_DEBUG="true" *) reg [1:0] current_state = clear, print_cnt = 0;
reg [1:0] next_state = clear;
(* MARK_DEBUG="true" *) reg tick, enable = 1'b0, clear_enable = 1'b0, lab_enable = 1'b0, clear_push = 1'b0, pre_clear_push = 1'b0, start_push = 1'b0, pre_start_push = 1'b0;
(* MARK_DEBUG="true" *) reg [5:0] tick_1sec_cnt = 6'b0;
(* MARK_DEBUG="true" *) reg [20:0] cnt = 21'b0;
(* MARK_DEBUG="true" *) reg [2:0] digit_10 = 0;
(* MARK_DEBUG="true" *) wire [3:0] digit;
(* MARK_DEBUG="true" *) reg [7:0] tmp_digit = 0;
(* MARK_DEBUG="true" *) reg [3:0] digit_1 = 0;
(* MARK_DEBUG="true" *) reg [6:0] tick_cnt = 0, sec_cnt = 0;
(* MARK_DEBUG="true" *) reg [7:0] save [0:3];

always @(posedge CLK) begin // current_state 관리
    if(RST) begin
        current_state <= clear;
    end
    else begin
        current_state <= next_state;
    end
end

always @(posedge CLK) begin // 버튼 edge 사용 설정
    pre_clear_push <= clear_push;
    clear_push <= CLEAR_LAB;
end

always @(posedge CLK) begin // 버튼 edge 사용 설정
    pre_start_push <= start_push;
    start_push <= START_STOP;
end

always @(posedge CLK) begin // clear_enable 신호 생성 (1초 이상 눌리면 clear_enable = 1로 변경하여 clear
    if(CLEAR_LAB) begin
        if (tick) begin
            if(!clear_enable) begin
                if(sec_cnt == 99) begin
                    clear_enable <= 1;
                    sec_cnt <= 0;
                end
                else sec_cnt <= sec_cnt + 1;
            end
        end
        else begin
            clear_enable <= 0;
        end
    end
    else begin
        clear_enable <= 0;
        sec_cnt <= 0;
    end
end

always @(posedge CLK) begin // next_state 설정
    if (RST) next_state <= clear;
    else if(clear_enable) begin
        case (current_state)
            clear: next_state <= clear;
            start: next_state <= start;
            stop: next_state <= clear;
        endcase
    end
    else if(pre_clear_push && ~clear_push) begin
        case (current_state)
            clear: next_state <= clear;
            start: lab_enable <= 1;
            stop: next_state <= stop;
        endcase
    end
    else if(~pre_start_push && start_push) begin
        case (current_state)
            clear: next_state <= start;
            start: next_state <= stop;
            stop: next_state <= start;
        endcase
    end
    else begin
        lab_enable <= 0;
    end
end

always @(posedge CLK) begin // 1/100초 간격 tick 생성
    if(cnt == ((FREQ / 100) - 1)) begin
        enable <= ~enable;
        cnt <= 21'b0;
        tick <= 1;
    end
    else begin
        cnt <= cnt + 1;
        tick <= 0;
    end
end

always @(posedge CLK) begin // tick으로 1초에 tick_1sec_cnt를 1개씩 상승
    if (tick) begin
        if (tick_cnt == 99) begin
            tick_cnt <= 0;
            if(current_state == start) begin
                tick_1sec_cnt <= tick_1sec_cnt + 1;
                if(tick_1sec_cnt == 60) tick_1sec_cnt <= 0;
            end
        end
        else begin
            tick_cnt <= tick_cnt + 1;
        end
    end
    if(current_state == clear) begin
        tick_cnt <= 0;
        tick_1sec_cnt <= 0;
    end
end

always @(posedge CLK) begin // tick_1sec_cnt로 10의 자리 1의 자리 생성
    case (current_state)
        start: begin
            digit_1 <= tick_1sec_cnt % 10;
            digit_10 <= tick_1sec_cnt / 10;
        end
        clear: begin
            digit_1 <= 0;
            digit_10 <= 0;
        end
    endcase
end

always @(posedge CLK) begin // 기록 저장
    if(current_state == clear) begin
        save[0] <= 0;
        save[1] <= 0;
        save[2] <= 0;
        save[3] <= 0;
    end
    else begin
        if(lab_enable) begin
        save[2] <= save[1];
        save[1] <= save[0];
        save[0] <= {1'b0, digit_10, digit_1};
    end
    save[3] <= {1'b0, digit_10, digit_1};
    end
end

assign CA = enable;
always @(posedge CLK) begin // stop: 기록을 보여주거나 현재 시간 보여줌, start, clear: 현재 시간 보여줌
    case (current_state)
        stop: begin
            if(pre_clear_push && ~clear_push) begin
                case (print_cnt)
                    0: begin
                        if(save[3] != 8'h00) begin
                            tmp_digit <= save[3];
                            if (save[0] != 8'h00) print_cnt <= print_cnt + 1;
                            else print_cnt <= 0;
                        end
                    end
                    1: begin
                        if(save[0] != 8'h00) begin
                            tmp_digit <= save[0];
                            if (save[1] != 8'h00) print_cnt <= print_cnt + 1;
                            else print_cnt <= 0;
                        end
                        else print_cnt <= 0;
                    end
                    2: begin
                        if(save[1] != 8'h00) begin
                            tmp_digit <= save[1];
                            if (save[2] != 8'h00) print_cnt <= print_cnt + 1;
                            else print_cnt <= 0;
                        end
                        else print_cnt <= 0;
                    end
                    3: begin
                        if(save[2] != 8'h00) begin
                            tmp_digit <= save[2];
                            print_cnt <= print_cnt + 1;
                        end
                        else print_cnt <= print_cnt + 1;
                    end
                endcase
            end
        end
        start, clear: begin
            tmp_digit <= {1'b0, digit_10, digit_1};
            print_cnt <= 0;
        end
    endcase
end
assign digit = enable ? tmp_digit[7:4] : tmp_digit[3:0];

disp_mod uut(.DIGIT(digit), .AN(AN));
endmodule