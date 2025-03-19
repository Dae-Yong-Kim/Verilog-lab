-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Wed Jan  8 13:07:20 2025
-- Host        : COMSYS01 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Verilog-lab/king/king.gen/sources_1/bd/king_bd/ip/king_bd_my_uart_tx_0_0/king_bd_my_uart_tx_0_0_stub.vhdl
-- Design      : king_bd_my_uart_tx_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z007sclg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity king_bd_my_uart_tx_0_0 is
  Port ( 
    RST : in STD_LOGIC;
    CLK : in STD_LOGIC;
    START : in STD_LOGIC;
    TX_DATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TXD : out STD_LOGIC;
    BUSY : out STD_LOGIC
  );

end king_bd_my_uart_tx_0_0;

architecture stub of king_bd_my_uart_tx_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "RST,CLK,START,TX_DATA[7:0],TXD,BUSY";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "my_uart_tx,Vivado 2024.1";
begin
end;
