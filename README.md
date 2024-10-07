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
### my_adder
- various Operators
#### Bitwise Operators
- bit 연산
```
`timescale 1ns / 1ps

module my_module(
    input [3:0] A,
    input [3:0] B,
    input [3:0] C,
    input [3:0] D,
    output [3:0] OUT_AND,
    output [3:0] OUT_OR,
    output [3:0] OUT_XOR,
    output [3:0] OUT_NOT
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
    input [3:0] A,
    input [3:0] B,
    input [3:0] C,
    input [3:0] D,
    output OUT_AND,
    output OUT_OR,
    output OUT_TEST, // 나의 궁금증을 위한 테스트
    output OUT_NOT
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
    input [3:0] A,
    input [3:0] B,
    input [3:0] C,
    input [3:0] D,
    output OUT_L,
    output OUT_G,
    output OUT_LE,
    output OUT_GE
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
    input [3:0] A,
    input [3:0] B,
    input [3:0] C,
    input [3:0] D,
    output [1:0] OUT_LOGIC_E,
    output [1:0] OUT_LOGIC_NE,
    output [1:0] OUT_CASE_E,
    output [1:0] OUT_CASE_NE
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
    input [3:0] A,
    input [3:0] B,
    input [3:0] C,
    input [3:0] D,    
    output [1:0] OUT_RE_AND,
    output [1:0] OUT_RE_NAND,
    output [1:0] OUT_RE_OR,
    output [1:0] OUT_RE_NOR,
    output [1:0] OUT_RE_XOR,
    output [1:0] OUT_RE_XNOR
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
    input [3:0] A,
    input [3:0] B,
    input [3:0] C,
    input [3:0] D,
    output [3:0] OUT_CONDITION,
    output [7:0] OUT_CONCATENATION,
    output [11:0] OUT_REPLICATION
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
    input [3:0] A,
    input [3:0] B,
    input [3:0] C,
    input [3:0] D,
    output [3:0] OUT_SHIFT_R,
    output [3:0] OUT_SHIFT_L,
    output [3:0] OUT_ARITH_SHIFT_R,
    output [3:0] OUT_ARITH_SHIFT_L
    );
    
    assign OUT_SHIFT_R = A >> 2; // <=> {2'b00, A[3:2]}
    assign OUT_SHIFT_L = A << 2; // <=> {A, 2'b00}
    assign OUT_ARITH_SHIFT_R = A >>> 2; // <=> {2{A[3]}, A[3:2]}
    assign OUT_ARITH_SHIFT_L = A <<< 2; // <=> {A, 2'b00} OUT_SHIFT와 완전히 같다.
endmodule
```
