// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Mon Feb  3 16:01:47 2025
// Host        : COMSYS01 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Verilog-lab/my_SPI_RAM/my_SPI_RAM.gen/sources_1/bd/my_SPI_RAM/ip/my_SPI_RAM_spi_master_0_0/my_SPI_RAM_spi_master_0_0_stub.v
// Design      : my_SPI_RAM_spi_master_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "spi_master,Vivado 2024.1" *)
module my_SPI_RAM_spi_master_0_0(RST, CLK, CMD, ADDR, WR_DATA, RD_DATA, CSN, SCLK, MOSI, 
  MISO)
/* synthesis syn_black_box black_box_pad_pin="RST,CMD[1:0],ADDR[6:0],WR_DATA[7:0],RD_DATA[7:0],CSN,MOSI,MISO" */
/* synthesis syn_force_seq_prim="CLK" */
/* synthesis syn_force_seq_prim="SCLK" */;
  input RST;
  input CLK /* synthesis syn_isclock = 1 */;
  input [1:0]CMD;
  input [6:0]ADDR;
  input [7:0]WR_DATA;
  output [7:0]RD_DATA;
  output CSN;
  output SCLK /* synthesis syn_isclock = 1 */;
  output MOSI;
  input MISO;
endmodule
