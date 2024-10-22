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

## 효울적인 코드 작성과 연산자 활용
### always에서 쓸 코드와 assign으로 쓸 코드를 구분하라 (모두 always로 해결하면 코드가 비효율적으로 됨) <= my_sr
```
`timescale 1ns / 1ps
module my_sr(input RST, CLK, input [7:0] SEED, output DOUT);
reg [7:0] shift_reg;
wire    sr_in;

assign DOUT = shift_reg[0];
assign sr_in = shift_reg[2] ^ shift_reg[4];

always @(posedge CLK)
begin
    if(RST)
        shift_reg <= SEED;
    else
        shift_reg <= {sr_in, shift_reg[7:1]};
end // always         
endmodule
```
### always문을 적절히 나눠서 써라 & 연산자를 이용하라 & overflow를 활용하라
#### my_serdes.v
```
`timescale 1ns / 1ps
//Parallel to Serial
module P2S(input RST, CLK, SOF_IN, input [7:0] DIN, output SOF_OUT, SOUT);
reg [7:0] din_d;
reg sof_d;

assign SOUT = din_d[0];
assign SOF_OUT = sof_d;

always @(posedge CLK)
begin
    if(RST)
        din_d <= 8'd0;
    else if(SOF_IN)
        din_d <= DIN;
    else
        din_d <= din_d >> 1;
//      din_d <= {1'b0, din[7:1];                
end

always @(posedge CLK) // SOF_IN이 1일 때 바로 sof_d에 넣지 않고 clock의 posedge에서
    sof_d <= SOF_IN;
endmodule       //P2S

// Serial to Parallel
module S2P(input RST, CLK, SOF_IN, SIN, output SOF_OUT, output [7:0] DOUT);
reg [2:0] bit_cnt;
reg [7:0] data;

assign DOUT = data;
assign SOF_OUT = bit_cnt == 3'd7; // cnt가 7일 때
 
always @(posedge CLK)
begin
    if(RST)
        data <= 8'd0;
    else
        data[bit_cnt] <= SIN;
end

always @(posedge CLK)
begin
    if(RST)
        bit_cnt <= 3'd0;
    else if(SOF_IN || bit_cnt != 3'd0) //SOF_IN이 트리거가 되어 cnt가 0이 될 때까지 동작
        bit_cnt <= bit_cnt + 1; // overflow를 활용
end
endmodule
```
### simulation 문법을 적극 활용하라
#### my_serdes_tb.v
```
...
 P2S uut_0 ( .RST(rst), .CLK(clk), .SOF_IN(sof_in), .DIN(din), .SOF_OUT(p2s_sof_out), .SOUT(p2s_sout));
 S2P uut_1 ( .RST(rst), .CLK(clk), .SOF_IN(p2s_sof_out), .SIN(p2s_sout), .SOF_OUT(s2p_sof_out), .DOUT(dout));
...
initial begin
    sof_in = 1'b0;
    din = 8'd0;
    wait (rst == 1'b0); // reset이 0이 될 때까지 대기
    #(CLK_PD*10);
    @(posedge clk);
    repeat (10) // 10번 반복
    begin
        sof_in = 1'b1;
        @(posedge clk); // posedge가 1번 지나고
        sof_in = 1'b0;
        repeat(10) @(posedge clk);
        din = din + 1;
    end
    #1000;
    $finish;
            
end  
endmodule
```
### 연산자의 활용
```
...
assign over = SW[3] & |SW[2:1]; // == (SW > 9);
assign disp_data = BTN ? digit1 : digit0; // if문 없이 input 바꿔주기
assign CA = BTN;
assign digit0 = over ? (SW - 10) : SW; // (SW - 10) == {1'b0, SW[2:1] - SW[1], SW[0]}
assign digit1 = over ? 1 : 0;

disp_mod disp_uut(.DIGIT(disp_data), .AN(AN));
...
```

## 문법 정리
### 모듈 정의 & 신호 생성(assign) <= my_and
```
`timescale 1ns / 1ps
//모듈 정의 방법
module my_and( // 모듈 정의
    input A, B,
    output R
    );
    
    assign R = A & B; // 신호 생성
    
endmodule
```
### 모듈 사용 <= my_fadder, my_hadder
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
- 정의된 모듈 사용
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
### Simulation을 위한 Testbench 코드 & 다양한 Operator 사용 <= my_test
#### my_module_tb
```
`timescale 1ns / 1ps // timescale 1ns/ simulation timescale 1ps

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
...
    assign OUT_AND = A & B;
    assign OUT_OR = A | C;
    assign OUT_XOR = A ^ C;
    assign OUT_NOT = ~C;
...
```
#### Logical Operators
- 논리 연산
```
...
    assign OUT_AND = A && B;
    assign OUT_OR = A || C;
    assign OUT_TEST = A && C; // 4'b1011 && 4'b00x0 == 1'bx "BUT" 4'b1011 && 4'b00x1 == 1'b1
    assign OUT_NOT = !C;
...
```
#### Relational Operators
- 대소비교
```
...
    assign OUT_L = A < B;
    assign OUT_G = A > B;
    assign OUT_LE = A <= B;
    assign OUT_GE = A >= B;
...
```
#### Equality Operators
- 다양한 Equality
```
...
    assign OUT_LOGIC_E[0] = A == B;
    assign OUT_LOGIC_NE[0] = A != B;
    assign OUT_CASE_E[0] = A === B; // X나 Z를 포함해도 같으면 1
    assign OUT_CASE_NE[0] = A !== B; // X나 Z를 포함해도 같으면 1
    assign OUT_LOGIC_E[1] = C == D;
    assign OUT_LOGIC_NE[1] = C != D;
    assign OUT_CASE_E[1] = C === D; // X나 Z를 포함해도 같으면 1
    assign OUT_CASE_NE[1] = C !== D; // X나 Z를 포함해도 같으면 1
...
```
#### Reduction Operators
- 자기 자신의 모든 비트를 연산
```
...
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
...
```
#### Conditional/Concatenation/Replication Operators
- 2 bit adder => {C, S} = A + B;
```
...
    assign OUT_CONDITION = A ? B : C; //4 bit Multiplexer
    assign OUT_CONCATENATION = {A, B}; // if output이 6 bit라면 {A[1:0], B}가 출력
    assign OUT_REPLICATION = {A, {2{B}}};
...
```
#### Shift Operators
```
...
    assign OUT_SHIFT_R = A >> 2; // <=> {2'b00, A[3:2]}
    assign OUT_SHIFT_L = A << 2; // <=> {A, 2'b00}
    assign OUT_ARITH_SHIFT_R = A >>> 2; // <=> {2{A[3]}, A[3:2]}
    assign OUT_ARITH_SHIFT_L = A <<< 2; // <=> {A, 2'b00} OUT_SHIFT와 완전히 같다.
...
```
### Procedure 구문(always) & wire와 reg & Flip-Flop
```
`timescale 1ns / 1ps

module my_cnt3(input clk, rst, output [2:0] q);
    wire n1, n2; // assign에서는 wire 사용
    assign n1 = (q[0] ^ q[1]);
    assign n2 = (q[2] ^ (q[0] & q[1]));
    
    my_dff dff0(.d(~q[0]), .clk(clk), .rst(rst), .q(q[0]));
    my_dff dff1(.d(n1), .clk(clk), .rst(rst), .q(q[1]));
    my_dff dff2(.d(n2), .clk(clk), .rst(rst), .q(q[2]));
endmodule

module my_dff(input d, clk, rst, output reg q); //Flip-Flop
    always @ (posedge clk) // procedure 문법 | clk이 상승할 때를 이벤트
        if (rst)
            q <= 1'b0; // always or initial문 안에서의 변수는 reg로 선언
        else
            q <= d;
endmodule
```
### Procedure문 initial과 always <= my_procedure_test
```
`timescale 1ns / 1ps
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
### Block & Non-Block & Fork Join <= my_block
```
...
module my_block();
...
initial begin // Blocking
    rst_B1 = 1'b1;
    #20 rst_B1 = 1'b0;
    ce_B1 = 1'b1;
    #5 my_bus_B1 = 8'b11110000;
...
end
initial begin // Blocking
    rst_B2 = 1'b1;
    rst_B2 = #20 1'b0;
    ce_B2 = 1'b1;
    my_bus_B2 = #5 8'b11110000;
...
end

initial begin // Nonblocking 적용 안됨 | Blocking
    rst_NB1 <= 1'b1;
    #20 rst_NB1 <= 1'b0;
    ce_NB1 <= 1'b1;
    #5 my_bus_NB1 <= 8'b11110000;
...
end
initial begin // Nonblocking
    rst_NB2 <= 1'b1;
    rst_NB2 <= #20 1'b0;
    ce_NB2 <= 1'b1;
    my_bus_NB2 <= #5 8'b11110000;
...
end

// fork join은 Blocking으로 만든 것을 Nonblocking으로 변경한다.
initial begin // 안에서 뭘해도 Nonblocking
    fork
...
    join
end
...
```
### simulation에서 Block Vs Non-Block <= my_sim_block_vs_nblock
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
### if문 사용 <= my_comp
- 입력 A[1:0]과 B[1:0]의 비교
```
...
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
...
```
### case문 사용 <= my_mult
- 2 bit mux
```
...    
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
...
```
### 7 Segment 사용 <= my_sw2LED
```
`timescale 1ns / 1ps

module my_sw2LED(input [3:0] SW, output [6:0] AN, output CA);

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
### parameter, wait, finish 사용 <= my_cnt32
- 32bit 카운터
- 7 세그먼트 사용 (상위 4bit)
#### my_cnt32_tb.v
```
`timescale 1ns / 1ps // 필수!!!!

module my_cmt32_tb();
parameter CLK_PERIOD = 10.0; // parameter 사용시 ";" 반드시 해주기
...
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
...
```
