// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Mon Feb  3 10:22:29 2025
// Host        : COMSYS01 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Verilog-lab/my_SPI_RAM/my_SPI_RAM.gen/sources_1/bd/my_SPI_RAM/ip/my_SPI_RAM_RAM_0_0/my_SPI_RAM_RAM_0_0_stub.v
// Design      : my_SPI_RAM_RAM_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "RAM,Vivado 2024.1" *)
module my_SPI_RAM_RAM_0_0(CLK, WEN, ADDR, DIN, DOUT)
/* synthesis syn_black_box black_box_pad_pin="WEN,ADDR[6:0],DIN[7:0],DOUT[7:0]" */
/* synthesis syn_force_seq_prim="CLK" */;
  input CLK /* synthesis syn_isclock = 1 */;
  input WEN;
  input [6:0]ADDR;
  input [7:0]DIN;
  output [7:0]DOUT;
endmodule
