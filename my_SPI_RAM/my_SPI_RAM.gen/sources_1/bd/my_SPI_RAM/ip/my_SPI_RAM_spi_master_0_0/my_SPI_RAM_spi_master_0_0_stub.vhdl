-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Mon Feb  3 16:01:47 2025
-- Host        : COMSYS01 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Verilog-lab/my_SPI_RAM/my_SPI_RAM.gen/sources_1/bd/my_SPI_RAM/ip/my_SPI_RAM_spi_master_0_0/my_SPI_RAM_spi_master_0_0_stub.vhdl
-- Design      : my_SPI_RAM_spi_master_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z007sclg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity my_SPI_RAM_spi_master_0_0 is
  Port ( 
    RST : in STD_LOGIC;
    CLK : in STD_LOGIC;
    CMD : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ADDR : in STD_LOGIC_VECTOR ( 6 downto 0 );
    WR_DATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    RD_DATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    CSN : out STD_LOGIC;
    SCLK : out STD_LOGIC;
    MOSI : out STD_LOGIC;
    MISO : in STD_LOGIC
  );

end my_SPI_RAM_spi_master_0_0;

architecture stub of my_SPI_RAM_spi_master_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "RST,CLK,CMD[1:0],ADDR[6:0],WR_DATA[7:0],RD_DATA[7:0],CSN,SCLK,MOSI,MISO";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "spi_master,Vivado 2024.1";
begin
end;
