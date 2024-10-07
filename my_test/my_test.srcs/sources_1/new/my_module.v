`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/07 14:45:44
// Design Name: 
// Module Name: my_module
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


module my_module(
    input [3:0] A,
    input [3:0] B,
    input [3:0] C,
    input [3:0] D,
    //output [3:0] OUT_AND,
    //output [3:0] OUT_OR,
    //output [3:0] OUT_XOR,
    //output [3:0] OUT_NOT
    
    //output OUT_AND,
    //output OUT_OR,
    //output OUT_TEST,
    //output OUT_NOT
    
    //output OUT_L,
    //output OUT_G,
    //output OUT_LE,
    //output OUT_GE
    
    //output [1:0] OUT_LOGIC_E,
    //output [1:0] OUT_LOGIC_NE,
    //output [1:0] OUT_CASE_E,
    //output [1:0] OUT_CASE_NE
    
    //output [1:0] OUT_RE_AND,
    //output [1:0] OUT_RE_NAND,
    //output [1:0] OUT_RE_OR,
    //output [1:0] OUT_RE_NOR,
    //output [1:0] OUT_RE_XOR,
    //output [1:0] OUT_RE_XNOR
    
    //output [3:0] OUT_CONDITION,
    //output [7:0] OUT_CONCATENATION,
    //output [11:0] OUT_REPLICATION
    
    output [3:0] OUT_SHIFT_R,
    output [3:0] OUT_SHIFT_L,
    output [3:0] OUT_ARITH_SHIFT_R,
    output [3:0] OUT_ARITH_SHIFT_L
    );
    
    //assign OUT_AND = A & B;
    //assign OUT_OR = A | C;
    //assign OUT_XOR = A ^ C;
    //assign OUT_NOT = ~C;
    
    //assign OUT_AND = A && B;
    //assign OUT_OR = A || C;
    //assign OUT_TEST = A && C; // 나의 궁금증을 위한 테스트
    //assign OUT_NOT = !C;
    
    //assign OUT_L = A < B;
    //assign OUT_G = A > B;
    //assign OUT_LE = A <= B;
    //assign OUT_GE = A >= B;
    
    //assign OUT_LOGIC_E[0] = A == B;
    //assign OUT_LOGIC_NE[0] = A != B;
    //assign OUT_CASE_E[0] = A === B; // X나 Z를 포함해도 같으면 1
    //assign OUT_CASE_NE[0] = A !== B; // X나 Z를 포함해도 같으면 1
    //assign OUT_LOGIC_E[1] = C == D;
    //assign OUT_LOGIC_NE[1] = C != D;
    //assign OUT_CASE_E[1] = C === D; // X나 Z를 포함해도 같으면 1
    //assign OUT_CASE_NE[1] = C !== D; // X나 Z를 포함해도 같으면 1
    
    //assign OUT_RE_AND[0] = &A;
    //assign OUT_RE_NAND[0] = ~&A;
    //assign OUT_RE_OR[0] = |A;
    //assign OUT_RE_NOR[0] = ~|A;
    //assign OUT_RE_XOR[0] = ^A;
    //assign OUT_RE_XNOR[0] = ~^A;
    //assign OUT_RE_AND[1] = &B;
    //assign OUT_RE_NAND[1] = ~&B;
    //assign OUT_RE_OR[1] = |B;
    //assign OUT_RE_NOR[1] = ~|B;
    //assign OUT_RE_XOR[1] = ^B;
    //assign OUT_RE_XNOR[1] = ~^B;
    
    //assign OUT_CONDITION = A ? B : C; //4 bit Multiplexer
    //assign OUT_CONCATENATION = {A, B};
    //assign OUT_REPLICATION = {A, {2{B}}};
    
    assign OUT_SHIFT_R = A >> 2;
    assign OUT_SHIFT_L = A << 2;
    assign OUT_ARITH_SHIFT_R = A >>> 2;
    assign OUT_ARITH_SHIFT_L = A <<< 2;
endmodule
