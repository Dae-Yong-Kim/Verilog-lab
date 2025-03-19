-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Mon Dec 16 11:26:35 2024
-- Host        : COMSYS01 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Verilog-lab/Zynq_axi_7seg/Zynq_axi_7seg.gen/sources_1/bd/Zynq_axi_7seg/ip/Zynq_axi_7seg_tick_gen_100ms_0_0/Zynq_axi_7seg_tick_gen_100ms_0_0_stub.vhdl
-- Design      : Zynq_axi_7seg_tick_gen_100ms_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z007sclg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Zynq_axi_7seg_tick_gen_100ms_0_0 is
  Port ( 
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC;
    TICK : out STD_LOGIC
  );

end Zynq_axi_7seg_tick_gen_100ms_0_0;

architecture stub of Zynq_axi_7seg_tick_gen_100ms_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CLK,RST,TICK";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "tick_gen_100ms,Vivado 2023.2";
begin
end;
