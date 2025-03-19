-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Mon Feb  3 10:22:29 2025
-- Host        : COMSYS01 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Verilog-lab/my_SPI_RAM/my_SPI_RAM.gen/sources_1/bd/my_SPI_RAM/ip/my_SPI_RAM_RAM_0_0/my_SPI_RAM_RAM_0_0_sim_netlist.vhdl
-- Design      : my_SPI_RAM_RAM_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z007sclg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity my_SPI_RAM_RAM_0_0_RAM is
  port (
    CLK : in STD_LOGIC;
    WEN : in STD_LOGIC;
    ADDR : in STD_LOGIC_VECTOR ( 6 downto 0 );
    DIN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    DOUT : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of my_SPI_RAM_RAM_0_0_RAM : entity is "RAM";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of my_SPI_RAM_RAM_0_0_RAM : entity is "soft";
end my_SPI_RAM_RAM_0_0_RAM;

architecture STRUCTURE of my_SPI_RAM_RAM_0_0_RAM is
  signal DOUT_reg0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute KEEP : string;
  attribute KEEP of \DOUT_reg[0]\ : label is "yes";
  attribute KEEP of \DOUT_reg[1]\ : label is "yes";
  attribute KEEP of \DOUT_reg[2]\ : label is "yes";
  attribute KEEP of \DOUT_reg[3]\ : label is "yes";
  attribute KEEP of \DOUT_reg[4]\ : label is "yes";
  attribute KEEP of \DOUT_reg[5]\ : label is "yes";
  attribute KEEP of \DOUT_reg[6]\ : label is "yes";
  attribute KEEP of \DOUT_reg[7]\ : label is "yes";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of mem_reg_0_127_0_0 : label is 1024;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of mem_reg_0_127_0_0 : label is "mem_reg";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of mem_reg_0_127_0_0 : label is "RAM_SP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of mem_reg_0_127_0_0 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of mem_reg_0_127_0_0 : label is 127;
  attribute ram_offset : integer;
  attribute ram_offset of mem_reg_0_127_0_0 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of mem_reg_0_127_0_0 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of mem_reg_0_127_0_0 : label is 0;
  attribute RTL_RAM_BITS of mem_reg_0_127_1_1 : label is 1024;
  attribute RTL_RAM_NAME of mem_reg_0_127_1_1 : label is "mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_127_1_1 : label is "RAM_SP";
  attribute ram_addr_begin of mem_reg_0_127_1_1 : label is 0;
  attribute ram_addr_end of mem_reg_0_127_1_1 : label is 127;
  attribute ram_offset of mem_reg_0_127_1_1 : label is 0;
  attribute ram_slice_begin of mem_reg_0_127_1_1 : label is 1;
  attribute ram_slice_end of mem_reg_0_127_1_1 : label is 1;
  attribute RTL_RAM_BITS of mem_reg_0_127_2_2 : label is 1024;
  attribute RTL_RAM_NAME of mem_reg_0_127_2_2 : label is "mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_127_2_2 : label is "RAM_SP";
  attribute ram_addr_begin of mem_reg_0_127_2_2 : label is 0;
  attribute ram_addr_end of mem_reg_0_127_2_2 : label is 127;
  attribute ram_offset of mem_reg_0_127_2_2 : label is 0;
  attribute ram_slice_begin of mem_reg_0_127_2_2 : label is 2;
  attribute ram_slice_end of mem_reg_0_127_2_2 : label is 2;
  attribute RTL_RAM_BITS of mem_reg_0_127_3_3 : label is 1024;
  attribute RTL_RAM_NAME of mem_reg_0_127_3_3 : label is "mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_127_3_3 : label is "RAM_SP";
  attribute ram_addr_begin of mem_reg_0_127_3_3 : label is 0;
  attribute ram_addr_end of mem_reg_0_127_3_3 : label is 127;
  attribute ram_offset of mem_reg_0_127_3_3 : label is 0;
  attribute ram_slice_begin of mem_reg_0_127_3_3 : label is 3;
  attribute ram_slice_end of mem_reg_0_127_3_3 : label is 3;
  attribute RTL_RAM_BITS of mem_reg_0_127_4_4 : label is 1024;
  attribute RTL_RAM_NAME of mem_reg_0_127_4_4 : label is "mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_127_4_4 : label is "RAM_SP";
  attribute ram_addr_begin of mem_reg_0_127_4_4 : label is 0;
  attribute ram_addr_end of mem_reg_0_127_4_4 : label is 127;
  attribute ram_offset of mem_reg_0_127_4_4 : label is 0;
  attribute ram_slice_begin of mem_reg_0_127_4_4 : label is 4;
  attribute ram_slice_end of mem_reg_0_127_4_4 : label is 4;
  attribute RTL_RAM_BITS of mem_reg_0_127_5_5 : label is 1024;
  attribute RTL_RAM_NAME of mem_reg_0_127_5_5 : label is "mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_127_5_5 : label is "RAM_SP";
  attribute ram_addr_begin of mem_reg_0_127_5_5 : label is 0;
  attribute ram_addr_end of mem_reg_0_127_5_5 : label is 127;
  attribute ram_offset of mem_reg_0_127_5_5 : label is 0;
  attribute ram_slice_begin of mem_reg_0_127_5_5 : label is 5;
  attribute ram_slice_end of mem_reg_0_127_5_5 : label is 5;
  attribute RTL_RAM_BITS of mem_reg_0_127_6_6 : label is 1024;
  attribute RTL_RAM_NAME of mem_reg_0_127_6_6 : label is "mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_127_6_6 : label is "RAM_SP";
  attribute ram_addr_begin of mem_reg_0_127_6_6 : label is 0;
  attribute ram_addr_end of mem_reg_0_127_6_6 : label is 127;
  attribute ram_offset of mem_reg_0_127_6_6 : label is 0;
  attribute ram_slice_begin of mem_reg_0_127_6_6 : label is 6;
  attribute ram_slice_end of mem_reg_0_127_6_6 : label is 6;
  attribute RTL_RAM_BITS of mem_reg_0_127_7_7 : label is 1024;
  attribute RTL_RAM_NAME of mem_reg_0_127_7_7 : label is "mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_127_7_7 : label is "RAM_SP";
  attribute ram_addr_begin of mem_reg_0_127_7_7 : label is 0;
  attribute ram_addr_end of mem_reg_0_127_7_7 : label is 127;
  attribute ram_offset of mem_reg_0_127_7_7 : label is 0;
  attribute ram_slice_begin of mem_reg_0_127_7_7 : label is 7;
  attribute ram_slice_end of mem_reg_0_127_7_7 : label is 7;
  attribute mark_debug : string;
  attribute mark_debug of DOUT : signal is "true";
begin
\DOUT_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => DOUT_reg0(0),
      Q => DOUT(0),
      R => '0'
    );
\DOUT_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => DOUT_reg0(1),
      Q => DOUT(1),
      R => '0'
    );
\DOUT_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => DOUT_reg0(2),
      Q => DOUT(2),
      R => '0'
    );
\DOUT_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => DOUT_reg0(3),
      Q => DOUT(3),
      R => '0'
    );
\DOUT_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => DOUT_reg0(4),
      Q => DOUT(4),
      R => '0'
    );
\DOUT_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => DOUT_reg0(5),
      Q => DOUT(5),
      R => '0'
    );
\DOUT_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => DOUT_reg0(6),
      Q => DOUT(6),
      R => '0'
    );
\DOUT_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => DOUT_reg0(7),
      Q => DOUT(7),
      R => '0'
    );
mem_reg_0_127_0_0: unisim.vcomponents.RAM128X1S
     port map (
      A0 => ADDR(0),
      A1 => ADDR(1),
      A2 => ADDR(2),
      A3 => ADDR(3),
      A4 => ADDR(4),
      A5 => ADDR(5),
      A6 => ADDR(6),
      D => DIN(0),
      O => DOUT_reg0(0),
      WCLK => CLK,
      WE => WEN
    );
mem_reg_0_127_1_1: unisim.vcomponents.RAM128X1S
     port map (
      A0 => ADDR(0),
      A1 => ADDR(1),
      A2 => ADDR(2),
      A3 => ADDR(3),
      A4 => ADDR(4),
      A5 => ADDR(5),
      A6 => ADDR(6),
      D => DIN(1),
      O => DOUT_reg0(1),
      WCLK => CLK,
      WE => WEN
    );
mem_reg_0_127_2_2: unisim.vcomponents.RAM128X1S
     port map (
      A0 => ADDR(0),
      A1 => ADDR(1),
      A2 => ADDR(2),
      A3 => ADDR(3),
      A4 => ADDR(4),
      A5 => ADDR(5),
      A6 => ADDR(6),
      D => DIN(2),
      O => DOUT_reg0(2),
      WCLK => CLK,
      WE => WEN
    );
mem_reg_0_127_3_3: unisim.vcomponents.RAM128X1S
     port map (
      A0 => ADDR(0),
      A1 => ADDR(1),
      A2 => ADDR(2),
      A3 => ADDR(3),
      A4 => ADDR(4),
      A5 => ADDR(5),
      A6 => ADDR(6),
      D => DIN(3),
      O => DOUT_reg0(3),
      WCLK => CLK,
      WE => WEN
    );
mem_reg_0_127_4_4: unisim.vcomponents.RAM128X1S
     port map (
      A0 => ADDR(0),
      A1 => ADDR(1),
      A2 => ADDR(2),
      A3 => ADDR(3),
      A4 => ADDR(4),
      A5 => ADDR(5),
      A6 => ADDR(6),
      D => DIN(4),
      O => DOUT_reg0(4),
      WCLK => CLK,
      WE => WEN
    );
mem_reg_0_127_5_5: unisim.vcomponents.RAM128X1S
     port map (
      A0 => ADDR(0),
      A1 => ADDR(1),
      A2 => ADDR(2),
      A3 => ADDR(3),
      A4 => ADDR(4),
      A5 => ADDR(5),
      A6 => ADDR(6),
      D => DIN(5),
      O => DOUT_reg0(5),
      WCLK => CLK,
      WE => WEN
    );
mem_reg_0_127_6_6: unisim.vcomponents.RAM128X1S
     port map (
      A0 => ADDR(0),
      A1 => ADDR(1),
      A2 => ADDR(2),
      A3 => ADDR(3),
      A4 => ADDR(4),
      A5 => ADDR(5),
      A6 => ADDR(6),
      D => DIN(6),
      O => DOUT_reg0(6),
      WCLK => CLK,
      WE => WEN
    );
mem_reg_0_127_7_7: unisim.vcomponents.RAM128X1S
     port map (
      A0 => ADDR(0),
      A1 => ADDR(1),
      A2 => ADDR(2),
      A3 => ADDR(3),
      A4 => ADDR(4),
      A5 => ADDR(5),
      A6 => ADDR(6),
      D => DIN(7),
      O => DOUT_reg0(7),
      WCLK => CLK,
      WE => WEN
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity my_SPI_RAM_RAM_0_0 is
  port (
    CLK : in STD_LOGIC;
    WEN : in STD_LOGIC;
    ADDR : in STD_LOGIC_VECTOR ( 6 downto 0 );
    DIN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    DOUT : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of my_SPI_RAM_RAM_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of my_SPI_RAM_RAM_0_0 : entity is "my_SPI_RAM_RAM_0_0,RAM,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of my_SPI_RAM_RAM_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of my_SPI_RAM_RAM_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of my_SPI_RAM_RAM_0_0 : entity is "RAM,Vivado 2024.1";
end my_SPI_RAM_RAM_0_0;

architecture STRUCTURE of my_SPI_RAM_RAM_0_0 is
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of inst : label is "soft";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of CLK : signal is "xilinx.com:signal:clock:1.0 CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of CLK : signal is "XIL_INTERFACENAME CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN my_SPI_RAM_spi_slave_0_0_CLK, INSERT_VIP 0";
begin
inst: entity work.my_SPI_RAM_RAM_0_0_RAM
     port map (
      ADDR(6 downto 0) => ADDR(6 downto 0),
      CLK => CLK,
      DIN(7 downto 0) => DIN(7 downto 0),
      DOUT(7 downto 0) => DOUT(7 downto 0),
      WEN => WEN
    );
end STRUCTURE;
