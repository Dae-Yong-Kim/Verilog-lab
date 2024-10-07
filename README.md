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
