-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Mon Feb  3 16:14:11 2025
-- Host        : COMSYS01 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Verilog-lab/my_SPI_RAM/my_SPI_RAM.gen/sources_1/bd/my_SPI_RAM/ip/my_SPI_RAM_spi_slave_0_0/my_SPI_RAM_spi_slave_0_0_stub.vhdl
-- Design      : my_SPI_RAM_spi_slave_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z007sclg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity my_SPI_RAM_spi_slave_0_0 is
  Port ( 
    CSN : in STD_LOGIC;
    SCLK : in STD_LOGIC;
    MOSI : in STD_LOGIC;
    MISO : out STD_LOGIC;
    CLK : out STD_LOGIC;
    WEN : out STD_LOGIC;
    ADDR : out STD_LOGIC_VECTOR ( 6 downto 0 );
    DIN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DOUT : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end my_SPI_RAM_spi_slave_0_0;

architecture stub of my_SPI_RAM_spi_slave_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CSN,SCLK,MOSI,MISO,CLK,WEN,ADDR[6:0],DIN[7:0],DOUT[7:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "spi_slave,Vivado 2024.1";
begin
end;
