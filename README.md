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
```
//모듈 정의 방법
`timescale 1ns / 1ps

module my_and( // 모듈 정의
    input A,
    input B,
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
```
//모듈 정의 방법
`timescale 1ns / 1ps

module my_hadder( // 모듈 정의
    input A,
    input B,
    output S,
    output C
    );
    
    assign S = A ^ B;
    assign C = A & B;
    
endmodule

```
### my_fadder
- 1 bit Full Adder
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
```
`timescale 1ns / 1ps

module my_adder(
    input [1:0] A, // 2 bit input
    input [1:0] B,
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
- 2 bit adder => {C, S} = A + B;
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
```
`timescale 1ns / 1ps

module my_cnt3(
    input clk,
    input rst,
    output [2:0] q
    );
    wire n1, n2;
    
    assign n1 = (q[0] ^ q[1]);
    assign n2 = (q[2] ^ (q[0] & q[1]));
    
    my_dff dff0(.d(~q[0]), .clk(clk), .rst(rst), .q(q[0]));
    my_dff dff1(.d(n1), .clk(clk), .rst(rst), .q(q[1]));
    my_dff dff2(.d(n2), .clk(clk), .rst(rst), .q(q[2]));
endmodule

module my_dff(
    input d,
    input clk,
    input rst,
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
