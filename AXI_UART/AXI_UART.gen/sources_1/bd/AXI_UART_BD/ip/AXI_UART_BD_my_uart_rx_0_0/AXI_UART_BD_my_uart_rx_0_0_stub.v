// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Thu Jan  9 09:41:34 2025
// Host        : COMSYS01 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Verilog-lab/AXI_UART/AXI_UART.gen/sources_1/bd/AXI_UART_BD/ip/AXI_UART_BD_my_uart_rx_0_0/AXI_UART_BD_my_uart_rx_0_0_stub.v
// Design      : AXI_UART_BD_my_uart_rx_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "my_uart_rx,Vivado 2024.1" *)
module AXI_UART_BD_my_uart_rx_0_0(CLK, RST, RXD, RX_READY, RX_DATA)
/* synthesis syn_black_box black_box_pad_pin="RST,RXD,RX_READY,RX_DATA[7:0]" */
/* synthesis syn_force_seq_prim="CLK" */;
  input CLK /* synthesis syn_isclock = 1 */;
  input RST;
  input RXD;
  output RX_READY;
  output [7:0]RX_DATA;
endmodule
