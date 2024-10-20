# Verilog-lab

### Device
Cora Z7 (Xilinx)
### Tool
Vivado
#### Step
```
1. Create project & Add source
2. Open Elaborated Design // Checking Gate Design
3-1. Run Synthesis -> Open Synthesis Design // Checking Real Device Design
3-2. Run Synthesis -> I/O Planning // Assign Pin
4. Run Implementation -> Implemented Design // Checking Real Device Design Assigned By I/O Planning
5. Generate Bitstream
6. open Hardware Manager -> Open target -> Auto Connect -> Program Device -> Program // Checking Device Operate Well
```

## Explanation of Folder
### my_and
- 1 bit And operator
- 모듈 정의
- 신호 생성(assign)
```
//모듈 정의 방법
`timescale 1ns / 1ps

module my_and( // 모듈 정의
    input A, B,
    output R
    );
    
    assign R = A & B; // 신호 생성
    
endmodule
```
#### What I can learn form this
    - module usage.
    - Input must be wire.
    - When I use assign, Output is wire.
### my_hadder
- 1 bit Half Adder
- 모듈 정의
```
//모듈 정의 방법
`timescale 1ns / 1ps

module my_hadder( // 모듈 정의
    input A, B,
    output S, C
    );
    
    assign S = A ^ B;
    assign C = A & B;
    
endmodule

```
### my_fadder
- 1 bit Full Adder
- 정의된 모듈 사용용
```
//모듈 사용 방법
my_hadder ha0( // 모듈 사용
    .A(A),
    .B(B),
    .S(ha0_s),
    .C(ha0_c)
    );
```
### my_adder
- 2 bit Adder
- 정의된 모듈 사용용
- 2 bit 변수 선언언
```
`timescale 1ns / 1ps

module my_adder(
    input [1:0] A, B, // 2 bit input
    output [1:0] S, // 2 bit output
    output Co
    );
    
    wire ca;
    
    my_fadder fa_0(
    .A(A[0]),
    .B(B[0]),
    .Ci(1'b0), // 1 bit - binary - 0 == 0b0(1bit)
    .S(S[0]),
    .Co(ca)
    );
    
    my_fadder fa_1(
    .A(A[1]),
    .B(B[1]),
    .Ci(ca),
    .S(S[1]),
    .Co(Co)
    );
endmodule

```
### my_test
- Testbench 사용
- 다양한 Operator 사용
#### my_module_tb
```
`timescale 1ns / 1ps // 반드시 필요

module my_module_tb();

my_module uut( // 입력 핀 값 지정
    .A(4'b1011),
    .B(4'b1001),
    .C(4'b01x0),
    .D(4'b01x0)
    );
endmodule
```
#### Bitwise Operators
- bit 연산
```
`timescale 1ns / 1ps

module my_module(
    ~~~~~~~~~~~
    );
    
    assign OUT_AND = A & B;
    assign OUT_OR = A | C;
    assign OUT_XOR = A ^ C;
    assign OUT_NOT = ~C;
endmodule
```
#### Logical Operators
- 논리 연산
```
`timescale 1ns / 1ps

module my_module(
    ~~~~~~~~~~~
    );
    
    assign OUT_AND = A && B;
    assign OUT_OR = A || C;
    assign OUT_TEST = A && C; // 4'b1011 && 4'b00x0 == 1'bx "BUT" 4'b1011 && 4'b00x1 == 1'b1
    assign OUT_NOT = !C;
endmodule
```
#### Relational Operators
- 대소비교
```
`timescale 1ns / 1ps

module my_module(
    ~~~~~~~~~~~
    );
    
    assign OUT_L = A < B;
    assign OUT_G = A > B;
    assign OUT_LE = A <= B;
    assign OUT_GE = A >= B;
endmodule
```
#### Equality Operators
- 다양한 Equality
```
`timescale 1ns / 1ps

module my_module(
    ~~~~~~~~~~~
    );
    
    assign OUT_LOGIC_E[0] = A == B;
    assign OUT_LOGIC_NE[0] = A != B;
    assign OUT_CASE_E[0] = A === B; // X나 Z를 포함해도 같으면 1
    assign OUT_CASE_NE[0] = A !== B; // X나 Z를 포함해도 같으면 1
    assign OUT_LOGIC_E[1] = C == D;
    assign OUT_LOGIC_NE[1] = C != D;
    assign OUT_CASE_E[1] = C === D; // X나 Z를 포함해도 같으면 1
    assign OUT_CASE_NE[1] = C !== D; // X나 Z를 포함해도 같으면 1
endmodule
```
#### Reduction Operators
- 자기 자신의 모든 비트를 연산
```
`timescale 1ns / 1ps

module my_module(
    ~~~~~~~~~~~
    );
    
    assign OUT_RE_AND[0] = &A; // 모든 bit가 1이면 true
    assign OUT_RE_NAND[0] = ~&A; // 모든 bit가 1이 아니면 true
    assign OUT_RE_OR[0] = |A; // 한 bit라도 1이면 true
    assign OUT_RE_NOR[0] = ~|A; // 모든 bit가 0이면 true
    assign OUT_RE_XOR[0] = ^A; // 1이 홀수면 true
    assign OUT_RE_XNOR[0] = ~^A; // 1이 짝수면 true
    assign OUT_RE_AND[1] = &B; // 모든 bit가 1이면 true
    assign OUT_RE_NAND[1] = ~&B;
    assign OUT_RE_OR[1] = |B;
    assign OUT_RE_NOR[1] = ~|B;
    assign OUT_RE_XOR[1] = ^B;
    assign OUT_RE_XNOR[1] = ~^B;
endmodule
```
#### Conditional/Concatenation/Replication Operators
- 2 bit adder => {C, S} = A + B;
```
`timescale 1ns / 1ps

module my_module(
    ~~~~~~~~~~~
    );
    
    assign OUT_CONDITION = A ? B : C; //4 bit Multiplexer
    assign OUT_CONCATENATION = {A, B}; // if output이 6 bit라면 {A[1:0], B}가 출력
    assign OUT_REPLICATION = {A, {2{B}}};
endmodule
```
#### Shift Operators
```
`timescale 1ns / 1ps

module my_module(
    ~~~~~~~~~~~
    );
    
    assign OUT_SHIFT_R = A >> 2; // <=> {2'b00, A[3:2]}
    assign OUT_SHIFT_L = A << 2; // <=> {A, 2'b00}
    assign OUT_ARITH_SHIFT_R = A >>> 2; // <=> {2{A[3]}, A[3:2]}
    assign OUT_ARITH_SHIFT_L = A <<< 2; // <=> {A, 2'b00} OUT_SHIFT와 완전히 같다.
endmodule
```
### my_cnt3
- 3bit counter
- procedure 구문(always)
- wire과 reg
- Flip-Flop
```
`timescale 1ns / 1ps

module my_cnt3(
    input clk, rst,
    output [2:0] q
    );
    wire n1, n2;
    
    assign n1 = (q[0] ^ q[1]);
    assign n2 = (q[2] ^ (q[0] & q[1]));
    
    my_dff dff0(.d(~q[0]), .clk(clk), .rst(rst), .q(q[0]));
    my_dff dff1(.d(n1), .clk(clk), .rst(rst), .q(q[1]));
    my_dff dff2(.d(n2), .clk(clk), .rst(rst), .q(q[2]));
endmodule

module my_dff( //Flip-Flop
    input d, clk, rst,
    output reg q
    );
    always @ (posedge clk) // procedure 문법 | clk이 상승할 때를 이벤트
        if (rst)
            q <= 1'b0; // 이 부분에서 모든 q 값이 0으로 초기화
        else
            q <= d;
endmodule
```
### my_procedure_test
- prodedure 구문 (initial, always)
```
`timescale 1ns / 1ps // timescale 1ns/ simulation timescale 1ps

module mod1();

reg a, b, out; // initial/always문에서 사용하는 변수는 reg

initial begin // initial문 사용
    a = 1'b0;
    b = 1'b0;
    #30 a = 1'b1; // #30 == delay 30ns == 30 * 1ns
    #30 b = 1'b1;
    #30 a = 1'b0;
end

//always @ (a, b) // @는 이벤트를 나타냄
always @ (a) // 계속 out == 0 b의 변화가 이벤트가 아니기 때문에
begin
    out = a | b; // 무시됨 왜인지 모름
    out = a & b;
end

endmodule
```
### my_block
- block과 non block의 사용법
- fork join문문
```
`timescale 1ns / 1ps

module my_block();
~~~~~~~~~~~
initial begin // Blocking
    rst_B1 = 1'b1;
    #20 rst_B1 = 1'b0;
    ce_B1 = 1'b1;
    #5 my_bus_B1 = 8'b11110000;
    ~~~~~~~~~~~
end
initial begin // Blocking
    rst_B2 = 1'b1;
    rst_B2 = #20 1'b0;
    ce_B2 = 1'b1;
    my_bus_B2 = #5 8'b11110000;
    ~~~~~~~~~~~
end

initial begin // Nonblocking 적용 안됨 | Blocking
    rst_NB1 <= 1'b1;
    #20 rst_NB1 <= 1'b0;
    ce_NB1 <= 1'b1;
    #5 my_bus_NB1 <= 8'b11110000;
    ~~~~~~~~~~~
end
initial begin // Nonblocking
    rst_NB2 <= 1'b1;
    rst_NB2 <= #20 1'b0;
    ce_NB2 <= 1'b1;
    my_bus_NB2 <= #5 8'b11110000;
    ~~~~~~~~~~~
end

// fork join은 Blocking으로 만든 것을 Nonblocking으로 변경한다.
initial begin // 안에서 뭘해도 Nonblocking
    fork
    ~~~~~~~~~~~
    join
end

endmodule
```
### my_sim_block_vs_nblock
- clock을 사용하는 경우 Nonblocking을 사용하라
```
`timescale 1ns / 1ps

module my_sim_block_vs_nblock();
reg clk, a;
reg c, b;

//************** HW에서는 전혀 차이가 없으나 시뮬레이션에서만 다름*******************

//always @(posedge clk)
//    a = b;
    
//always @(posedge clk)
//    c = a; // 시뮬레이션에서 c가 a의 값을 받는게 아닌 b의 값을 받음 
    
always @(posedge clk)
    a <= b;
    
always @(posedge clk)
    c <= a; // 시뮬레이션에서 c가 a의 값을 받는다.
    
initial begin
    clk = 0;
    b = 0;
    #5 clk = 1;
    #5 clk = 0;
    b = 1;
    #5 clk = 1;
    #1 b = 0;
    #4 clk = 0;
    #5 clk = 1;
end
endmodule
```
### my_comp
- 입력 A[1:0]과 B[1:0]의 비교
- if문 사용
```
`timescale 1ns / 1ps

module my_comp(
    input [1:0] A, B,
    output reg G, E, L
    );
    
always @(A, B)
    begin
    G = 0;
    E = 0;
    L = 0;
    if (A > B) G = 1;
    else if (A == B) E = 1;
    else if (A < B) L = 1;
    else
        begin
        G = 1'bx;
        E = 1'bx;
        L = 1'bx;
        end
    end
        
endmodule
```
### my_mult
- 2 bit mux
- case문 사용
```
`timescale 1ns / 1ps

module my_mult(
    input a, b,
    input [1:0] sel,
    output reg z
    );
    
always @(a, b, sel)
begin
    case (sel)
        2'b00: z = ~a;
        2'b01: z = ~(a & b);
        2'b10: z = ~(a & (~b));
        2'b11: z = (a ^ b);
        default: z = 1'bx;
    endcase
end
endmodule
```
### my_sw2LED
- 7 segment 사용
- 16진수 사용
```
`timescale 1ns / 1ps

module my_sw2LED(
    input [3:0] SW,
    output [6:0] AN,
    output CA
    );
    
reg [7:0] LED;

always @(SW)
begin
    case (SW)
        4'b0000: LED  =8'h7e;
        4'b0001: LED = 8'h30;
        4'b0010: LED = 8'h6d;
        4'b0011: LED = 8'h79;
        4'b0100: LED = 8'h33;
        4'b0101: LED = 8'h5b;
        4'b0110: LED = 8'h5f;
        4'b0111: LED = 8'h70;
        4'b1000: LED = 8'h7f;
        4'b1001: LED = 8'h7b;
        default: LED = 8'hxx;
    endcase
end

assign AN = LED[7:0];
assign CA = LED[8];
endmodule
```
### my_cnt32
- 32bit 카운터
- 7 세그먼트 사용 (상위 4bit)
- Testbench(my_cnt32_tb)
#### my_cnt32.v
```
`timescale 1ns / 1ps

module my_cnt32(
    input RST,
    input CLK,
    input DIR,
    output reg [6:0] AN,
    output CA
    );
    
reg [31:0] OUT_A;

always @(posedge CLK)
begin
    if (RST == 1) OUT_A <= 32'h00;
    else if (RST == 0 )
    begin
        if (DIR == 1) OUT_A <= OUT_A + 1;
        else if (DIR == 0) OUT_A <= OUT_A - 1;
        else OUT_A <= 32'h00;
    end
    else OUT_A <= 32'h00;
    
    case (OUT_A[31:28])
        4'b0000: AN <= 7'h7e;
        4'b0001: AN <= 7'h30;
        4'b0010: AN <= 7'h6d;
        4'b0011: AN <= 7'h79;
        4'b0100: AN <= 7'h33;
        4'b0101: AN <= 7'h5b;
        4'b0110: AN <= 7'h5f;
        4'b0111: AN <= 7'h70;
        4'b1000: AN <= 7'h7f;
        4'b1001: AN <= 7'h7b;
        default: AN <= 7'h00;
    endcase
end
assign CA = 1'b0;
endmodule
```
#### my_cnt32_tb.v
```
`timescale 1ns / 1ps // 필수!!!!

module my_cmt32_tb();
parameter CLK_PERIOD = 10.0; // parameter 사용시 ";" 반드시 해주기
reg rst, clk, dir;
wire [6:0] an;
wire ca;

my_cnt32 uut( // Unit Under Test
    .RST(rst), .CLK(clk), .DIR(dir),
    .AN(an), .CA(ca)
    );
    
initial begin // reset 값
    rst = 1'b1;
    #(CLK_PERIOD*10);
    rst = 1'b0;
end

initial clk = 1'b0; // clock 값
always #(CLK_PERIOD/2) clk = ~clk;

initial begin
    dir = 1'b0;
    wait(rst == 1'b0); // rst == 1,b0일 때까지 기다려라
     #(CLK_PERIOD*50);
    dir = 1'b1;
     #(CLK_PERIOD*50);
    dir = 1'b0;
     #(CLK_PERIOD*40);
     $finish; // 시뮬레이션을 멈춰라
end
endmodule
```
### my_1sec
- 1초 단위로 LED 점멸 & 7 세그먼트 동작
#### my_1sec.v
```
`timescale 1ns / 1ps // 필수!!!!

module my_1sec(input RST, input CLK, output reg LED, output reg [6:0] FND);

parameter CLK_FREQ = 125_000_000;
~~~~~~~~~~~~~~~~~~~~

initial enable = 0;
always @(posedge CLK) begin
~~~~~~~~~~~~~~~~~~~~
        if(cnt == CLK_FREQ) begin // RST가 0이고 CLK가 125_000_000번(1초) 발생하면 enable = 1 -> 아래 always문들 동작시킴
            enable <= 1;
            cnt <= 1;
        end
~~~~~~~~~~~~~~~~~~~~
end

initial LED = 0;
always @(posedge CLK) begin // 1초 단위로 LED 점멸
    if(RST) LED <= 0;
    if(enable) LED <= ~LED;
end

initial FND = 8'h7e;
always @(posedge CLK) begin // 7 세그먼트에 1초 단위로 0 -> 9 -> 0 반복
    if(RST) FND = 7'h7e;
    if(enable) begin
        if(st == 1) begin // 9 -> 0 출력
            case (fnd_cnt) // 7 세그먼트 output 넣어줌
~~~~~~~~~~~~~~~~~~~~
            endcase
            fnd_cnt = fnd_cnt - 1;
        end else if(st == 0) begin // 0 -> 9 출력
            case (fnd_cnt) // 7 세그먼트 output 넣어줌
~~~~~~~~~~~~~~~~~~~~
            endcase
            fnd_cnt = fnd_cnt + 1;
        end
        
        if(fnd_cnt == 10) begin
            st = 1;
            fnd_cnt = 8; // 9를 1초 출력하기 위함
        end else if(fnd_cnt == 5'b11111) begin
            st = 0;
            fnd_cnt = 1; // 0을 1초 출력하기 위함
        end else st = st;
    end
end
endmodule
```
#### my_1sec_tb.v
- my_1sec.v 모듈 사용
- reset, clock 설정
### my_sr
- Shift register & Scrambler
#### my_sr.v
```
`timescale 1ns / 1ps

module my_sr(input RST, input CLK, input [7:0] SEED, output reg LED);

reg [7:0] seed;

initial seed = SEED; // SEED를 담을 reg 변수
always @(posedge CLK) begin
    if(RST == 0) begin
        LED <= seed[0]; //LSB는 Output
        seed <= seed >> 1; // Right Shift
        seed[7] <= seed[2] ^ seed[4]; //MSB는 [2] ^ [4]
    end else if(RST == 1) begin
        LED <= 0;
        seed <= SEED;
    end else begin
        LED <= 1'bx;
        seed <= 8'bx;
    end
end
endmodule
```
#### my_sr_tb.v
- my_1sec.v 모듈 사용
- reset, clock 설정
- SEED의 초깃값 설정
