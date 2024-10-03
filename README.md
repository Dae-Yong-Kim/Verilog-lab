# Verilog-lab

### Device
Cora Z7 (Xilinx)
### Tool
Vivado
#### Step
1. Create project & Add source
2. Open Elaborated Design // Checking Gate Design
3. Run Synthesis -> Open Synthesis Design // Checking Real Device Design | -> I/O Planning // Assign Pin
4. Run Implementation -> Implemented Design // Checking Real Device Design Assigned By I/O Planning
5. Generate Bitstream
6. open Hardware Manager -> Open target -> Auto Connect -> Program Device -> Program // Checking Device Operate Well

## Explanation of Folder
### my_and
- 1 bit And operator
```
`timescale 1ns / 1ps

module my_and(
    input A,
    input B,
    output R
    );
    
    assign R = A & B;
    
endmodule
```
#### What I can learn form this
    - module usage.
    - Input must be wire.
    - When I use assign, Output is wire.
### my_hadder
- 1 bit Half Adder
