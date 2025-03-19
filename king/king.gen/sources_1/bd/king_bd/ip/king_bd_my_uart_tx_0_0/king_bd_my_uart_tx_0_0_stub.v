// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Wed Jan  8 13:07:20 2025
// Host        : COMSYS01 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Verilog-lab/king/king.gen/sources_1/bd/king_bd/ip/king_bd_my_uart_tx_0_0/king_bd_my_uart_tx_0_0_stub.v
// Design      : king_bd_my_uart_tx_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "my_uart_tx,Vivado 2024.1" *)
module king_bd_my_uart_tx_0_0(RST, CLK, START, TX_DATA, TXD, BUSY)
/* synthesis syn_black_box black_box_pad_pin="RST,START,TX_DATA[7:0],TXD,BUSY" */
/* synthesis syn_force_seq_prim="CLK" */;
  input RST;
  input CLK /* synthesis syn_isclock = 1 */;
  input START;
  input [7:0]TX_DATA;
  output TXD;
  output BUSY;
endmodule
