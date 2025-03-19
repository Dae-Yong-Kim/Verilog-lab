// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Wed Jan  8 10:23:28 2025
// Host        : COMSYS01 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Verilog-lab/AXI_UART/AXI_UART.gen/sources_1/bd/AXI_UART/ip/AXI_UART_my_uart_tx_0_1/AXI_UART_my_uart_tx_0_1_stub.v
// Design      : AXI_UART_my_uart_tx_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "my_uart_tx,Vivado 2024.1" *)
module AXI_UART_my_uart_tx_0_1(CLK, RST, SEND, DATA, TX, READY)
/* synthesis syn_black_box black_box_pad_pin="RST,SEND,DATA[7:0],TX,READY" */
/* synthesis syn_force_seq_prim="CLK" */;
  input CLK /* synthesis syn_isclock = 1 */;
  input RST;
  input SEND;
  input [7:0]DATA;
  output TX;
  output READY;
endmodule
