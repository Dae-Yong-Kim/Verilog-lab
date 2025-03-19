-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Thu Jan  9 09:41:34 2025
-- Host        : COMSYS01 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Verilog-lab/AXI_UART/AXI_UART.gen/sources_1/bd/AXI_UART_BD/ip/AXI_UART_BD_my_uart_rx_0_0/AXI_UART_BD_my_uart_rx_0_0_stub.vhdl
-- Design      : AXI_UART_BD_my_uart_rx_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z007sclg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity AXI_UART_BD_my_uart_rx_0_0 is
  Port ( 
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC;
    RXD : in STD_LOGIC;
    RX_READY : out STD_LOGIC;
    RX_DATA : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end AXI_UART_BD_my_uart_rx_0_0;

architecture stub of AXI_UART_BD_my_uart_rx_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CLK,RST,RXD,RX_READY,RX_DATA[7:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "my_uart_rx,Vivado 2024.1";
begin
end;
