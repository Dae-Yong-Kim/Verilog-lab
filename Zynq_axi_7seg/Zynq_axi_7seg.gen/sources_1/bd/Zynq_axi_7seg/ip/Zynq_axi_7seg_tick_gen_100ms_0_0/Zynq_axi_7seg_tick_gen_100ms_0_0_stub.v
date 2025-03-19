// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Mon Dec 16 11:26:35 2024
// Host        : COMSYS01 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Verilog-lab/Zynq_axi_7seg/Zynq_axi_7seg.gen/sources_1/bd/Zynq_axi_7seg/ip/Zynq_axi_7seg_tick_gen_100ms_0_0/Zynq_axi_7seg_tick_gen_100ms_0_0_stub.v
// Design      : Zynq_axi_7seg_tick_gen_100ms_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "tick_gen_100ms,Vivado 2023.2" *)
module Zynq_axi_7seg_tick_gen_100ms_0_0(CLK, RST, TICK)
/* synthesis syn_black_box black_box_pad_pin="RST,TICK" */
/* synthesis syn_force_seq_prim="CLK" */;
  input CLK /* synthesis syn_isclock = 1 */;
  input RST;
  output TICK;
endmodule
