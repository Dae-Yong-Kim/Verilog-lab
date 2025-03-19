-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Mon Feb  3 16:14:11 2025
-- Host        : COMSYS01 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Verilog-lab/my_SPI_RAM/my_SPI_RAM.gen/sources_1/bd/my_SPI_RAM/ip/my_SPI_RAM_spi_slave_0_0/my_SPI_RAM_spi_slave_0_0_sim_netlist.vhdl
-- Design      : my_SPI_RAM_spi_slave_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z007sclg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity my_SPI_RAM_spi_slave_0_0_spi_slave is
  port (
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
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of my_SPI_RAM_spi_slave_0_0_spi_slave : entity is "spi_slave";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of my_SPI_RAM_spi_slave_0_0_spi_slave : entity is "soft";
end my_SPI_RAM_spi_slave_0_0_spi_slave;

architecture STRUCTURE of my_SPI_RAM_spi_slave_0_0_spi_slave is
  signal \^addr\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of \^addr\ : signal is std.standard.true;
  signal \^din\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute MARK_DEBUG of \^din\ : signal is std.standard.true;
  signal \^sclk\ : STD_LOGIC;
  signal \^wen\ : STD_LOGIC;
  attribute MARK_DEBUG of WEN : signal is std.standard.true;
  signal \^addr_1\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  attribute MARK_DEBUG of \^addr_1\ : signal is std.standard.true;
  signal \addr[0]_i_1_n_0\ : STD_LOGIC;
  signal \addr[1]_i_1_n_0\ : STD_LOGIC;
  signal \addr[2]_i_1_n_0\ : STD_LOGIC;
  signal \addr[3]_i_1_n_0\ : STD_LOGIC;
  signal \addr[4]_i_1_n_0\ : STD_LOGIC;
  signal \addr[5]_i_1_n_0\ : STD_LOGIC;
  signal \addr[6]_i_1_n_0\ : STD_LOGIC;
  signal \addr[6]_i_2_n_0\ : STD_LOGIC;
  signal \addr[6]_i_3_n_0\ : STD_LOGIC;
  signal cmd : STD_LOGIC;
  attribute MARK_DEBUG of cmd : signal is std.standard.true;
  signal cmd_i_1_n_0 : STD_LOGIC;
  signal cmd_i_2_n_0 : STD_LOGIC;
  signal cmd_i_3_n_0 : STD_LOGIC;
  signal \^din_1\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute MARK_DEBUG of \^din_1\ : signal is std.standard.true;
  signal \din[0]_i_1_n_0\ : STD_LOGIC;
  signal \din[1]_i_1_n_0\ : STD_LOGIC;
  signal \din[2]_i_1_n_0\ : STD_LOGIC;
  signal \din[3]_i_1_n_0\ : STD_LOGIC;
  signal \din[4]_i_1_n_0\ : STD_LOGIC;
  signal \din[5]_i_1_n_0\ : STD_LOGIC;
  signal \din[6]_i_1_n_0\ : STD_LOGIC;
  signal \din[7]_i_1_n_0\ : STD_LOGIC;
  signal \din[7]_i_2_n_0\ : STD_LOGIC;
  signal done : STD_LOGIC;
  attribute MARK_DEBUG of done : signal is std.standard.true;
  signal done_i_1_n_0 : STD_LOGIC;
  signal done_i_2_n_0 : STD_LOGIC;
  signal done_i_3_n_0 : STD_LOGIC;
  signal \^dout\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute MARK_DEBUG of \^dout\ : signal is std.standard.true;
  signal \dout[0]_i_1_n_0\ : STD_LOGIC;
  signal \dout[1]_i_1_n_0\ : STD_LOGIC;
  signal \dout[2]_i_1_n_0\ : STD_LOGIC;
  signal \dout[3]_i_1_n_0\ : STD_LOGIC;
  signal \dout[4]_i_1_n_0\ : STD_LOGIC;
  signal \dout[5]_i_1_n_0\ : STD_LOGIC;
  signal \dout[6]_i_1_n_0\ : STD_LOGIC;
  signal \dout[7]_i_1_n_0\ : STD_LOGIC;
  signal rd_index : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute MARK_DEBUG of rd_index : signal is std.standard.true;
  signal \rd_index[4]_i_1_n_0\ : STD_LOGIC;
  signal \rd_index[4]_i_2_n_0\ : STD_LOGIC;
  signal rd_index_reg0 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal reg0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of reg0 : signal is std.standard.true;
  signal \reg0[0]_i_1_n_0\ : STD_LOGIC;
  signal \reg0[10]_i_1_n_0\ : STD_LOGIC;
  signal \reg0[11]_i_1_n_0\ : STD_LOGIC;
  signal \reg0[12]_i_1_n_0\ : STD_LOGIC;
  signal \reg0[13]_i_1_n_0\ : STD_LOGIC;
  signal \reg0[14]_i_1_n_0\ : STD_LOGIC;
  signal \reg0[14]_i_2_n_0\ : STD_LOGIC;
  signal \reg0[15]_i_1_n_0\ : STD_LOGIC;
  signal \reg0[15]_i_2_n_0\ : STD_LOGIC;
  signal \reg0[1]_i_1_n_0\ : STD_LOGIC;
  signal \reg0[2]_i_1_n_0\ : STD_LOGIC;
  signal \reg0[3]_i_1_n_0\ : STD_LOGIC;
  signal \reg0[4]_i_1_n_0\ : STD_LOGIC;
  signal \reg0[5]_i_1_n_0\ : STD_LOGIC;
  signal \reg0[6]_i_1_n_0\ : STD_LOGIC;
  signal \reg0[6]_i_2_n_0\ : STD_LOGIC;
  signal \reg0[7]_i_1_n_0\ : STD_LOGIC;
  signal \reg0[7]_i_2_n_0\ : STD_LOGIC;
  signal \reg0[8]_i_1_n_0\ : STD_LOGIC;
  signal \reg0[9]_i_1_n_0\ : STD_LOGIC;
  signal reg0_reg1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal reg1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute MARK_DEBUG of reg1 : signal is std.standard.true;
  signal \reg1[0]_i_1_n_0\ : STD_LOGIC;
  signal \reg1[1]_i_1_n_0\ : STD_LOGIC;
  signal \reg1[2]_i_1_n_0\ : STD_LOGIC;
  signal \reg1[3]_i_1_n_0\ : STD_LOGIC;
  signal \reg1[4]_i_1_n_0\ : STD_LOGIC;
  signal \reg1[5]_i_1_n_0\ : STD_LOGIC;
  signal \reg1[6]_i_1_n_0\ : STD_LOGIC;
  signal \reg1[6]_i_2_n_0\ : STD_LOGIC;
  signal \reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal \reg1[7]_i_2_n_0\ : STD_LOGIC;
  signal ren : STD_LOGIC;
  attribute MARK_DEBUG of ren : signal is std.standard.true;
  signal ren_i_1_n_0 : STD_LOGIC;
  signal \^wen_1\ : STD_LOGIC;
  attribute MARK_DEBUG of wen : signal is std.standard.true;
  signal wen_i_1_n_0 : STD_LOGIC;
  signal wr_index : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute MARK_DEBUG of wr_index : signal is std.standard.true;
  signal \wr_index[4]_i_1_n_0\ : STD_LOGIC;
  signal wr_index_reg0 : STD_LOGIC_VECTOR ( 4 downto 1 );
  attribute KEEP : string;
  attribute KEEP of \addr_reg[0]\ : label is "yes";
  attribute KEEP of \addr_reg[1]\ : label is "yes";
  attribute KEEP of \addr_reg[2]\ : label is "yes";
  attribute KEEP of \addr_reg[3]\ : label is "yes";
  attribute KEEP of \addr_reg[4]\ : label is "yes";
  attribute KEEP of \addr_reg[5]\ : label is "yes";
  attribute KEEP of \addr_reg[6]\ : label is "yes";
  attribute KEEP of cmd_reg : label is "yes";
  attribute KEEP of \din_reg[0]\ : label is "yes";
  attribute mark_debug_string : string;
  attribute mark_debug_string of \din_reg[0]\ : label is "true";
  attribute KEEP of \din_reg[1]\ : label is "yes";
  attribute mark_debug_string of \din_reg[1]\ : label is "true";
  attribute KEEP of \din_reg[2]\ : label is "yes";
  attribute mark_debug_string of \din_reg[2]\ : label is "true";
  attribute KEEP of \din_reg[3]\ : label is "yes";
  attribute mark_debug_string of \din_reg[3]\ : label is "true";
  attribute KEEP of \din_reg[4]\ : label is "yes";
  attribute mark_debug_string of \din_reg[4]\ : label is "true";
  attribute KEEP of \din_reg[5]\ : label is "yes";
  attribute mark_debug_string of \din_reg[5]\ : label is "true";
  attribute KEEP of \din_reg[6]\ : label is "yes";
  attribute mark_debug_string of \din_reg[6]\ : label is "true";
  attribute KEEP of \din_reg[7]\ : label is "yes";
  attribute mark_debug_string of \din_reg[7]\ : label is "true";
  attribute KEEP of done_reg : label is "yes";
  attribute KEEP of \dout_reg[0]\ : label is "yes";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \dout_reg[0]\ : label is "FDR_1";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \dout_reg[0]\ : label is "VCC:CE";
  attribute KEEP of \dout_reg[1]\ : label is "yes";
  attribute XILINX_LEGACY_PRIM of \dout_reg[1]\ : label is "FDR_1";
  attribute XILINX_TRANSFORM_PINMAP of \dout_reg[1]\ : label is "VCC:CE";
  attribute KEEP of \dout_reg[2]\ : label is "yes";
  attribute XILINX_LEGACY_PRIM of \dout_reg[2]\ : label is "FDR_1";
  attribute XILINX_TRANSFORM_PINMAP of \dout_reg[2]\ : label is "VCC:CE";
  attribute KEEP of \dout_reg[3]\ : label is "yes";
  attribute XILINX_LEGACY_PRIM of \dout_reg[3]\ : label is "FDR_1";
  attribute XILINX_TRANSFORM_PINMAP of \dout_reg[3]\ : label is "VCC:CE";
  attribute KEEP of \dout_reg[4]\ : label is "yes";
  attribute XILINX_LEGACY_PRIM of \dout_reg[4]\ : label is "FDR_1";
  attribute XILINX_TRANSFORM_PINMAP of \dout_reg[4]\ : label is "VCC:CE";
  attribute KEEP of \dout_reg[5]\ : label is "yes";
  attribute XILINX_LEGACY_PRIM of \dout_reg[5]\ : label is "FDR_1";
  attribute XILINX_TRANSFORM_PINMAP of \dout_reg[5]\ : label is "VCC:CE";
  attribute KEEP of \dout_reg[6]\ : label is "yes";
  attribute XILINX_LEGACY_PRIM of \dout_reg[6]\ : label is "FDR_1";
  attribute XILINX_TRANSFORM_PINMAP of \dout_reg[6]\ : label is "VCC:CE";
  attribute KEEP of \dout_reg[7]\ : label is "yes";
  attribute XILINX_LEGACY_PRIM of \dout_reg[7]\ : label is "FDR_1";
  attribute XILINX_TRANSFORM_PINMAP of \dout_reg[7]\ : label is "VCC:CE";
  attribute KEEP of \rd_index_reg[0]\ : label is "yes";
  attribute mark_debug_string of \rd_index_reg[0]\ : label is "true";
  attribute KEEP of \rd_index_reg[1]\ : label is "yes";
  attribute mark_debug_string of \rd_index_reg[1]\ : label is "true";
  attribute KEEP of \rd_index_reg[2]\ : label is "yes";
  attribute mark_debug_string of \rd_index_reg[2]\ : label is "true";
  attribute KEEP of \rd_index_reg[3]\ : label is "yes";
  attribute mark_debug_string of \rd_index_reg[3]\ : label is "true";
  attribute KEEP of \rd_index_reg[4]\ : label is "yes";
  attribute mark_debug_string of \rd_index_reg[4]\ : label is "true";
  attribute KEEP of \reg0_reg[0]\ : label is "yes";
  attribute mark_debug_string of \reg0_reg[0]\ : label is "true";
  attribute KEEP of \reg0_reg[10]\ : label is "yes";
  attribute mark_debug_string of \reg0_reg[10]\ : label is "true";
  attribute KEEP of \reg0_reg[11]\ : label is "yes";
  attribute mark_debug_string of \reg0_reg[11]\ : label is "true";
  attribute KEEP of \reg0_reg[12]\ : label is "yes";
  attribute mark_debug_string of \reg0_reg[12]\ : label is "true";
  attribute KEEP of \reg0_reg[13]\ : label is "yes";
  attribute mark_debug_string of \reg0_reg[13]\ : label is "true";
  attribute KEEP of \reg0_reg[14]\ : label is "yes";
  attribute mark_debug_string of \reg0_reg[14]\ : label is "true";
  attribute KEEP of \reg0_reg[15]\ : label is "yes";
  attribute mark_debug_string of \reg0_reg[15]\ : label is "true";
  attribute KEEP of \reg0_reg[1]\ : label is "yes";
  attribute mark_debug_string of \reg0_reg[1]\ : label is "true";
  attribute KEEP of \reg0_reg[2]\ : label is "yes";
  attribute mark_debug_string of \reg0_reg[2]\ : label is "true";
  attribute KEEP of \reg0_reg[3]\ : label is "yes";
  attribute mark_debug_string of \reg0_reg[3]\ : label is "true";
  attribute KEEP of \reg0_reg[4]\ : label is "yes";
  attribute mark_debug_string of \reg0_reg[4]\ : label is "true";
  attribute KEEP of \reg0_reg[5]\ : label is "yes";
  attribute mark_debug_string of \reg0_reg[5]\ : label is "true";
  attribute KEEP of \reg0_reg[6]\ : label is "yes";
  attribute mark_debug_string of \reg0_reg[6]\ : label is "true";
  attribute KEEP of \reg0_reg[7]\ : label is "yes";
  attribute mark_debug_string of \reg0_reg[7]\ : label is "true";
  attribute KEEP of \reg0_reg[8]\ : label is "yes";
  attribute mark_debug_string of \reg0_reg[8]\ : label is "true";
  attribute KEEP of \reg0_reg[9]\ : label is "yes";
  attribute mark_debug_string of \reg0_reg[9]\ : label is "true";
  attribute KEEP of \reg1_reg[0]\ : label is "yes";
  attribute mark_debug_string of \reg1_reg[0]\ : label is "true";
  attribute KEEP of \reg1_reg[1]\ : label is "yes";
  attribute mark_debug_string of \reg1_reg[1]\ : label is "true";
  attribute KEEP of \reg1_reg[2]\ : label is "yes";
  attribute mark_debug_string of \reg1_reg[2]\ : label is "true";
  attribute KEEP of \reg1_reg[3]\ : label is "yes";
  attribute mark_debug_string of \reg1_reg[3]\ : label is "true";
  attribute KEEP of \reg1_reg[4]\ : label is "yes";
  attribute mark_debug_string of \reg1_reg[4]\ : label is "true";
  attribute KEEP of \reg1_reg[5]\ : label is "yes";
  attribute mark_debug_string of \reg1_reg[5]\ : label is "true";
  attribute KEEP of \reg1_reg[6]\ : label is "yes";
  attribute mark_debug_string of \reg1_reg[6]\ : label is "true";
  attribute KEEP of \reg1_reg[7]\ : label is "yes";
  attribute mark_debug_string of \reg1_reg[7]\ : label is "true";
  attribute KEEP of ren_reg : label is "yes";
  attribute KEEP of wen_reg : label is "yes";
  attribute KEEP of \wr_index_reg[0]\ : label is "yes";
  attribute mark_debug_string of \wr_index_reg[0]\ : label is "true";
  attribute KEEP of \wr_index_reg[1]\ : label is "yes";
  attribute mark_debug_string of \wr_index_reg[1]\ : label is "true";
  attribute KEEP of \wr_index_reg[2]\ : label is "yes";
  attribute mark_debug_string of \wr_index_reg[2]\ : label is "true";
  attribute KEEP of \wr_index_reg[3]\ : label is "yes";
  attribute mark_debug_string of \wr_index_reg[3]\ : label is "true";
  attribute KEEP of \wr_index_reg[4]\ : label is "yes";
  attribute mark_debug_string of \wr_index_reg[4]\ : label is "true";
  attribute mark_debug_string of MISO : signal is "true";
  attribute mark_debug_string of WEN : signal is "true";
  attribute mark_debug_string of ADDR : signal is "true";
  attribute mark_debug_string of DIN : signal is "true";
begin
  ADDR(6 downto 0) <= \^addr\(6 downto 0);
  CLK <= \^sclk\;
  DIN(7 downto 0) <= \^din\(7 downto 0);
  WEN <= \^wen\;
  \^sclk\ <= SCLK;
\addr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => reg1(0),
      I1 => cmd_i_3_n_0,
      I2 => \addr[6]_i_2_n_0\,
      I3 => reg0(8),
      I4 => \^addr\(0),
      I5 => \addr[6]_i_3_n_0\,
      O => \addr[0]_i_1_n_0\
    );
\addr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => reg1(1),
      I1 => cmd_i_3_n_0,
      I2 => \addr[6]_i_2_n_0\,
      I3 => reg0(9),
      I4 => \^addr\(1),
      I5 => \addr[6]_i_3_n_0\,
      O => \addr[1]_i_1_n_0\
    );
\addr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => reg1(2),
      I1 => cmd_i_3_n_0,
      I2 => \addr[6]_i_2_n_0\,
      I3 => reg0(10),
      I4 => \^addr\(2),
      I5 => \addr[6]_i_3_n_0\,
      O => \addr[2]_i_1_n_0\
    );
\addr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => reg1(3),
      I1 => cmd_i_3_n_0,
      I2 => \addr[6]_i_2_n_0\,
      I3 => reg0(11),
      I4 => \^addr\(3),
      I5 => \addr[6]_i_3_n_0\,
      O => \addr[3]_i_1_n_0\
    );
\addr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => reg1(4),
      I1 => cmd_i_3_n_0,
      I2 => \addr[6]_i_2_n_0\,
      I3 => reg0(12),
      I4 => \^addr\(4),
      I5 => \addr[6]_i_3_n_0\,
      O => \addr[4]_i_1_n_0\
    );
\addr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => reg1(5),
      I1 => cmd_i_3_n_0,
      I2 => \addr[6]_i_2_n_0\,
      I3 => reg0(13),
      I4 => \^addr\(5),
      I5 => \addr[6]_i_3_n_0\,
      O => \addr[5]_i_1_n_0\
    );
\addr[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => reg1(6),
      I1 => cmd_i_3_n_0,
      I2 => \addr[6]_i_2_n_0\,
      I3 => reg0(14),
      I4 => \^addr\(6),
      I5 => \addr[6]_i_3_n_0\,
      O => \addr[6]_i_1_n_0\
    );
\addr[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg0(15),
      I1 => cmd_i_2_n_0,
      O => \addr[6]_i_2_n_0\
    );
\addr[6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFE2"
    )
        port map (
      I0 => done_i_3_n_0,
      I1 => reg0(15),
      I2 => done_i_2_n_0,
      I3 => CSN,
      O => \addr[6]_i_3_n_0\
    );
addr_inst: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^addr_1\(6),
      O => \^addr\(6)
    );
\addr_inst__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^addr_1\(5),
      O => \^addr\(5)
    );
\addr_inst__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^addr_1\(4),
      O => \^addr\(4)
    );
\addr_inst__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^addr_1\(3),
      O => \^addr\(3)
    );
\addr_inst__3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^addr_1\(2),
      O => \^addr\(2)
    );
\addr_inst__4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^addr_1\(1),
      O => \^addr\(1)
    );
\addr_inst__5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^addr_1\(0),
      O => \^addr\(0)
    );
\addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^sclk\,
      CE => '1',
      D => \addr[0]_i_1_n_0\,
      Q => \^addr_1\(0),
      R => '0'
    );
\addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^sclk\,
      CE => '1',
      D => \addr[1]_i_1_n_0\,
      Q => \^addr_1\(1),
      R => '0'
    );
\addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^sclk\,
      CE => '1',
      D => \addr[2]_i_1_n_0\,
      Q => \^addr_1\(2),
      R => '0'
    );
\addr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \^sclk\,
      CE => '1',
      D => \addr[3]_i_1_n_0\,
      Q => \^addr_1\(3),
      R => '0'
    );
\addr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \^sclk\,
      CE => '1',
      D => \addr[4]_i_1_n_0\,
      Q => \^addr_1\(4),
      R => '0'
    );
\addr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \^sclk\,
      CE => '1',
      D => \addr[5]_i_1_n_0\,
      Q => \^addr_1\(5),
      R => '0'
    );
\addr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \^sclk\,
      CE => '1',
      D => \addr[6]_i_1_n_0\,
      Q => \^addr_1\(6),
      R => '0'
    );
cmd_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF22F2F2"
    )
        port map (
      I0 => reg0(15),
      I1 => cmd_i_2_n_0,
      I2 => reg1(7),
      I3 => cmd,
      I4 => cmd_i_3_n_0,
      O => cmd_i_1_n_0
    );
cmd_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => wr_index(0),
      I1 => wr_index(3),
      I2 => wr_index(1),
      I3 => wr_index(2),
      I4 => wr_index(4),
      I5 => CSN,
      O => cmd_i_2_n_0
    );
cmd_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \din[7]_i_1_n_0\,
      I1 => rd_index(0),
      I2 => rd_index(3),
      I3 => rd_index(1),
      I4 => rd_index(2),
      I5 => rd_index(4),
      O => cmd_i_3_n_0
    );
cmd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^sclk\,
      CE => '1',
      D => cmd_i_1_n_0,
      Q => cmd,
      R => '0'
    );
\din[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^din\(0),
      I1 => cmd_i_2_n_0,
      I2 => reg0(0),
      O => \din[0]_i_1_n_0\
    );
\din[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^din\(1),
      I1 => cmd_i_2_n_0,
      I2 => reg0(1),
      O => \din[1]_i_1_n_0\
    );
\din[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^din\(2),
      I1 => cmd_i_2_n_0,
      I2 => reg0(2),
      O => \din[2]_i_1_n_0\
    );
\din[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^din\(3),
      I1 => cmd_i_2_n_0,
      I2 => reg0(3),
      O => \din[3]_i_1_n_0\
    );
\din[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^din\(4),
      I1 => cmd_i_2_n_0,
      I2 => reg0(4),
      O => \din[4]_i_1_n_0\
    );
\din[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^din\(5),
      I1 => cmd_i_2_n_0,
      I2 => reg0(5),
      O => \din[5]_i_1_n_0\
    );
\din[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^din\(6),
      I1 => cmd_i_2_n_0,
      I2 => reg0(6),
      O => \din[6]_i_1_n_0\
    );
\din[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => CSN,
      I1 => reg0(15),
      O => \din[7]_i_1_n_0\
    );
\din[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^din\(7),
      I1 => cmd_i_2_n_0,
      I2 => reg0(7),
      O => \din[7]_i_2_n_0\
    );
din_inst: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^din_1\(7),
      O => \^din\(7)
    );
\din_inst__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^din_1\(6),
      O => \^din\(6)
    );
\din_inst__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^din_1\(5),
      O => \^din\(5)
    );
\din_inst__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^din_1\(4),
      O => \^din\(4)
    );
\din_inst__3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^din_1\(3),
      O => \^din\(3)
    );
\din_inst__4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^din_1\(2),
      O => \^din\(2)
    );
\din_inst__5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^din_1\(1),
      O => \^din\(1)
    );
\din_inst__6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^din_1\(0),
      O => \^din\(0)
    );
\din_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^sclk\,
      CE => \din[7]_i_1_n_0\,
      D => \din[0]_i_1_n_0\,
      Q => \^din_1\(0),
      R => '0'
    );
\din_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^sclk\,
      CE => \din[7]_i_1_n_0\,
      D => \din[1]_i_1_n_0\,
      Q => \^din_1\(1),
      R => '0'
    );
\din_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^sclk\,
      CE => \din[7]_i_1_n_0\,
      D => \din[2]_i_1_n_0\,
      Q => \^din_1\(2),
      R => '0'
    );
\din_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \^sclk\,
      CE => \din[7]_i_1_n_0\,
      D => \din[3]_i_1_n_0\,
      Q => \^din_1\(3),
      R => '0'
    );
\din_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \^sclk\,
      CE => \din[7]_i_1_n_0\,
      D => \din[4]_i_1_n_0\,
      Q => \^din_1\(4),
      R => '0'
    );
\din_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \^sclk\,
      CE => \din[7]_i_1_n_0\,
      D => \din[5]_i_1_n_0\,
      Q => \^din_1\(5),
      R => '0'
    );
\din_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \^sclk\,
      CE => \din[7]_i_1_n_0\,
      D => \din[6]_i_1_n_0\,
      Q => \^din_1\(6),
      R => '0'
    );
\din_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \^sclk\,
      CE => \din[7]_i_1_n_0\,
      D => \din[7]_i_2_n_0\,
      Q => \^din_1\(7),
      R => '0'
    );
done_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0047"
    )
        port map (
      I0 => done_i_2_n_0,
      I1 => reg0(15),
      I2 => done_i_3_n_0,
      I3 => CSN,
      O => done_i_1_n_0
    );
done_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => wr_index(4),
      I1 => wr_index(2),
      I2 => wr_index(1),
      I3 => wr_index(3),
      I4 => wr_index(0),
      O => done_i_2_n_0
    );
done_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => rd_index(4),
      I1 => rd_index(2),
      I2 => rd_index(1),
      I3 => rd_index(3),
      I4 => rd_index(0),
      O => done_i_3_n_0
    );
done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^sclk\,
      CE => '1',
      D => done_i_1_n_0,
      Q => done,
      R => '0'
    );
\dout[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DOUT(0),
      I1 => ren,
      I2 => \^dout\(1),
      O => \dout[0]_i_1_n_0\
    );
\dout[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DOUT(1),
      I1 => ren,
      I2 => \^dout\(2),
      O => \dout[1]_i_1_n_0\
    );
\dout[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DOUT(2),
      I1 => ren,
      I2 => \^dout\(3),
      O => \dout[2]_i_1_n_0\
    );
\dout[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DOUT(3),
      I1 => ren,
      I2 => \^dout\(4),
      O => \dout[3]_i_1_n_0\
    );
\dout[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DOUT(4),
      I1 => ren,
      I2 => \^dout\(5),
      O => \dout[4]_i_1_n_0\
    );
\dout[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DOUT(5),
      I1 => ren,
      I2 => \^dout\(6),
      O => \dout[5]_i_1_n_0\
    );
\dout[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DOUT(6),
      I1 => ren,
      I2 => \^dout\(7),
      O => \dout[6]_i_1_n_0\
    );
\dout[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ren,
      I1 => DOUT(7),
      O => \dout[7]_i_1_n_0\
    );
dout_inst: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^dout\(0),
      O => MISO
    );
\dout_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^sclk\,
      CE => '1',
      D => \dout[0]_i_1_n_0\,
      Q => \^dout\(0),
      R => CSN
    );
\dout_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^sclk\,
      CE => '1',
      D => \dout[1]_i_1_n_0\,
      Q => \^dout\(1),
      R => CSN
    );
\dout_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^sclk\,
      CE => '1',
      D => \dout[2]_i_1_n_0\,
      Q => \^dout\(2),
      R => CSN
    );
\dout_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^sclk\,
      CE => '1',
      D => \dout[3]_i_1_n_0\,
      Q => \^dout\(3),
      R => CSN
    );
\dout_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^sclk\,
      CE => '1',
      D => \dout[4]_i_1_n_0\,
      Q => \^dout\(4),
      R => CSN
    );
\dout_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^sclk\,
      CE => '1',
      D => \dout[5]_i_1_n_0\,
      Q => \^dout\(5),
      R => CSN
    );
\dout_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^sclk\,
      CE => '1',
      D => \dout[6]_i_1_n_0\,
      Q => \^dout\(6),
      R => CSN
    );
\dout_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^sclk\,
      CE => '1',
      D => \dout[7]_i_1_n_0\,
      Q => \^dout\(7),
      R => CSN
    );
\rd_index[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rd_index(0),
      O => rd_index_reg0(0)
    );
\rd_index[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rd_index(1),
      I1 => rd_index(0),
      O => rd_index_reg0(1)
    );
\rd_index[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => rd_index(2),
      I1 => rd_index(0),
      I2 => rd_index(1),
      O => rd_index_reg0(2)
    );
\rd_index[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => rd_index(3),
      I1 => rd_index(2),
      I2 => rd_index(1),
      I3 => rd_index(0),
      O => rd_index_reg0(3)
    );
\rd_index[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => rd_index(0),
      I1 => rd_index(3),
      I2 => rd_index(1),
      I3 => rd_index(2),
      I4 => rd_index(4),
      I5 => done,
      O => \rd_index[4]_i_1_n_0\
    );
\rd_index[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => done,
      O => \rd_index[4]_i_2_n_0\
    );
\rd_index[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
        port map (
      I0 => rd_index(4),
      I1 => rd_index(3),
      I2 => rd_index(1),
      I3 => rd_index(2),
      I4 => rd_index(0),
      O => rd_index_reg0(4)
    );
\rd_index_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^sclk\,
      CE => \rd_index[4]_i_2_n_0\,
      D => rd_index_reg0(0),
      Q => rd_index(0),
      S => \rd_index[4]_i_1_n_0\
    );
\rd_index_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^sclk\,
      CE => \rd_index[4]_i_2_n_0\,
      D => rd_index_reg0(1),
      Q => rd_index(1),
      R => \rd_index[4]_i_1_n_0\
    );
\rd_index_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^sclk\,
      CE => \rd_index[4]_i_2_n_0\,
      D => rd_index_reg0(2),
      Q => rd_index(2),
      R => \rd_index[4]_i_1_n_0\
    );
\rd_index_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => \^sclk\,
      CE => \rd_index[4]_i_2_n_0\,
      D => rd_index_reg0(3),
      Q => rd_index(3),
      R => \rd_index[4]_i_1_n_0\
    );
\rd_index_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^sclk\,
      CE => \rd_index[4]_i_2_n_0\,
      D => rd_index_reg0(4),
      Q => rd_index(4),
      S => \rd_index[4]_i_1_n_0\
    );
\reg0[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAB8B8AA"
    )
        port map (
      I0 => reg0(0),
      I1 => \reg0[6]_i_2_n_0\,
      I2 => MOSI,
      I3 => wr_index(0),
      I4 => wr_index(1),
      I5 => wr_index(2),
      O => \reg0[0]_i_1_n_0\
    );
\reg0[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAB8B8AAAAAA"
    )
        port map (
      I0 => reg0(10),
      I1 => \reg0[14]_i_2_n_0\,
      I2 => MOSI,
      I3 => wr_index(1),
      I4 => wr_index(0),
      I5 => wr_index(2),
      O => \reg0[10]_i_1_n_0\
    );
\reg0[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAB8B8AAAAAA"
    )
        port map (
      I0 => reg0(11),
      I1 => \reg0[15]_i_2_n_0\,
      I2 => MOSI,
      I3 => wr_index(1),
      I4 => wr_index(0),
      I5 => wr_index(2),
      O => \reg0[11]_i_1_n_0\
    );
\reg0[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAB8B8AAAAAAAAAA"
    )
        port map (
      I0 => reg0(12),
      I1 => \reg0[14]_i_2_n_0\,
      I2 => MOSI,
      I3 => wr_index(0),
      I4 => wr_index(1),
      I5 => wr_index(2),
      O => \reg0[12]_i_1_n_0\
    );
\reg0[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAB8B8AAAAAAAAAA"
    )
        port map (
      I0 => reg0(13),
      I1 => \reg0[15]_i_2_n_0\,
      I2 => MOSI,
      I3 => wr_index(0),
      I4 => wr_index(1),
      I5 => wr_index(2),
      O => \reg0[13]_i_1_n_0\
    );
\reg0[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8AAAAAAAAAAAAB8"
    )
        port map (
      I0 => reg0(14),
      I1 => \reg0[14]_i_2_n_0\,
      I2 => MOSI,
      I3 => wr_index(0),
      I4 => wr_index(1),
      I5 => wr_index(2),
      O => \reg0[14]_i_1_n_0\
    );
\reg0[14]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => wr_index(4),
      I1 => wr_index(3),
      I2 => wr_index(0),
      O => \reg0[14]_i_2_n_0\
    );
\reg0[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8AAAAAAAAAAAAB8"
    )
        port map (
      I0 => reg0(15),
      I1 => \reg0[15]_i_2_n_0\,
      I2 => MOSI,
      I3 => wr_index(0),
      I4 => wr_index(1),
      I5 => wr_index(2),
      O => \reg0[15]_i_1_n_0\
    );
\reg0[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFBBBD"
    )
        port map (
      I0 => wr_index(4),
      I1 => wr_index(3),
      I2 => wr_index(2),
      I3 => wr_index(1),
      I4 => wr_index(0),
      O => \reg0[15]_i_2_n_0\
    );
\reg0[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAB8B8AA"
    )
        port map (
      I0 => reg0(1),
      I1 => \reg0[7]_i_2_n_0\,
      I2 => MOSI,
      I3 => wr_index(0),
      I4 => wr_index(1),
      I5 => wr_index(2),
      O => \reg0[1]_i_1_n_0\
    );
\reg0[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAB8B8AAAAAA"
    )
        port map (
      I0 => reg0(2),
      I1 => \reg0[6]_i_2_n_0\,
      I2 => MOSI,
      I3 => wr_index(1),
      I4 => wr_index(0),
      I5 => wr_index(2),
      O => \reg0[2]_i_1_n_0\
    );
\reg0[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAB8B8AAAAAA"
    )
        port map (
      I0 => reg0(3),
      I1 => \reg0[7]_i_2_n_0\,
      I2 => MOSI,
      I3 => wr_index(1),
      I4 => wr_index(0),
      I5 => wr_index(2),
      O => \reg0[3]_i_1_n_0\
    );
\reg0[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAB8B8AAAAAAAAAA"
    )
        port map (
      I0 => reg0(4),
      I1 => \reg0[6]_i_2_n_0\,
      I2 => MOSI,
      I3 => wr_index(0),
      I4 => wr_index(1),
      I5 => wr_index(2),
      O => \reg0[4]_i_1_n_0\
    );
\reg0[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAB8B8AAAAAAAAAA"
    )
        port map (
      I0 => reg0(5),
      I1 => \reg0[7]_i_2_n_0\,
      I2 => MOSI,
      I3 => wr_index(0),
      I4 => wr_index(1),
      I5 => wr_index(2),
      O => \reg0[5]_i_1_n_0\
    );
\reg0[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8AAAAAAAAAAAAB8"
    )
        port map (
      I0 => reg0(6),
      I1 => \reg0[6]_i_2_n_0\,
      I2 => MOSI,
      I3 => wr_index(0),
      I4 => wr_index(1),
      I5 => wr_index(2),
      O => \reg0[6]_i_1_n_0\
    );
\reg0[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => wr_index(4),
      I1 => wr_index(3),
      I2 => wr_index(0),
      O => \reg0[6]_i_2_n_0\
    );
\reg0[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8AAAAAAAAAAAAB8"
    )
        port map (
      I0 => reg0(7),
      I1 => \reg0[7]_i_2_n_0\,
      I2 => MOSI,
      I3 => wr_index(0),
      I4 => wr_index(1),
      I5 => wr_index(2),
      O => \reg0[7]_i_1_n_0\
    );
\reg0[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEEEB"
    )
        port map (
      I0 => wr_index(4),
      I1 => wr_index(3),
      I2 => wr_index(2),
      I3 => wr_index(1),
      I4 => wr_index(0),
      O => \reg0[7]_i_2_n_0\
    );
\reg0[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAB8B8AA"
    )
        port map (
      I0 => reg0(8),
      I1 => \reg0[14]_i_2_n_0\,
      I2 => MOSI,
      I3 => wr_index(0),
      I4 => wr_index(1),
      I5 => wr_index(2),
      O => \reg0[8]_i_1_n_0\
    );
\reg0[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAB8B8AA"
    )
        port map (
      I0 => reg0(9),
      I1 => \reg0[15]_i_2_n_0\,
      I2 => MOSI,
      I3 => wr_index(0),
      I4 => wr_index(1),
      I5 => wr_index(2),
      O => \reg0[9]_i_1_n_0\
    );
\reg0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^sclk\,
      CE => \rd_index[4]_i_2_n_0\,
      D => \reg0[0]_i_1_n_0\,
      Q => reg0(0),
      R => '0'
    );
\reg0_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^sclk\,
      CE => \rd_index[4]_i_2_n_0\,
      D => \reg0[10]_i_1_n_0\,
      Q => reg0(10),
      R => '0'
    );
\reg0_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^sclk\,
      CE => \rd_index[4]_i_2_n_0\,
      D => \reg0[11]_i_1_n_0\,
      Q => reg0(11),
      R => '0'
    );
\reg0_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^sclk\,
      CE => \rd_index[4]_i_2_n_0\,
      D => \reg0[12]_i_1_n_0\,
      Q => reg0(12),
      R => '0'
    );
\reg0_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^sclk\,
      CE => \rd_index[4]_i_2_n_0\,
      D => \reg0[13]_i_1_n_0\,
      Q => reg0(13),
      R => '0'
    );
\reg0_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^sclk\,
      CE => \rd_index[4]_i_2_n_0\,
      D => \reg0[14]_i_1_n_0\,
      Q => reg0(14),
      R => '0'
    );
\reg0_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^sclk\,
      CE => \rd_index[4]_i_2_n_0\,
      D => \reg0[15]_i_1_n_0\,
      Q => reg0(15),
      R => '0'
    );
\reg0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^sclk\,
      CE => \rd_index[4]_i_2_n_0\,
      D => \reg0[1]_i_1_n_0\,
      Q => reg0(1),
      R => '0'
    );
\reg0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^sclk\,
      CE => \rd_index[4]_i_2_n_0\,
      D => \reg0[2]_i_1_n_0\,
      Q => reg0(2),
      R => '0'
    );
\reg0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^sclk\,
      CE => \rd_index[4]_i_2_n_0\,
      D => \reg0[3]_i_1_n_0\,
      Q => reg0(3),
      R => '0'
    );
\reg0_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^sclk\,
      CE => \rd_index[4]_i_2_n_0\,
      D => \reg0[4]_i_1_n_0\,
      Q => reg0(4),
      R => '0'
    );
\reg0_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^sclk\,
      CE => \rd_index[4]_i_2_n_0\,
      D => \reg0[5]_i_1_n_0\,
      Q => reg0(5),
      R => '0'
    );
\reg0_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^sclk\,
      CE => \rd_index[4]_i_2_n_0\,
      D => \reg0[6]_i_1_n_0\,
      Q => reg0(6),
      R => '0'
    );
\reg0_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^sclk\,
      CE => \rd_index[4]_i_2_n_0\,
      D => \reg0[7]_i_1_n_0\,
      Q => reg0(7),
      R => '0'
    );
\reg0_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^sclk\,
      CE => \rd_index[4]_i_2_n_0\,
      D => \reg0[8]_i_1_n_0\,
      Q => reg0(8),
      R => '0'
    );
\reg0_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^sclk\,
      CE => \rd_index[4]_i_2_n_0\,
      D => \reg0[9]_i_1_n_0\,
      Q => reg0(9),
      R => '0'
    );
\reg1[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAABBAA88A"
    )
        port map (
      I0 => reg1(0),
      I1 => rd_index(2),
      I2 => rd_index(0),
      I3 => rd_index(1),
      I4 => MOSI,
      I5 => \reg1[6]_i_2_n_0\,
      O => \reg1[0]_i_1_n_0\
    );
\reg1[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAABBAA88A"
    )
        port map (
      I0 => reg1(1),
      I1 => rd_index(2),
      I2 => rd_index(0),
      I3 => rd_index(1),
      I4 => MOSI,
      I5 => \reg1[7]_i_2_n_0\,
      O => \reg1[1]_i_1_n_0\
    );
\reg1[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAABAAE8AA2"
    )
        port map (
      I0 => reg1(2),
      I1 => rd_index(2),
      I2 => rd_index(0),
      I3 => rd_index(1),
      I4 => MOSI,
      I5 => \reg1[6]_i_2_n_0\,
      O => \reg1[2]_i_1_n_0\
    );
\reg1[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAABAAE8AA2"
    )
        port map (
      I0 => reg1(3),
      I1 => rd_index(2),
      I2 => rd_index(0),
      I3 => rd_index(1),
      I4 => MOSI,
      I5 => \reg1[7]_i_2_n_0\,
      O => \reg1[3]_i_1_n_0\
    );
\reg1[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAEEAA22A"
    )
        port map (
      I0 => reg1(4),
      I1 => rd_index(2),
      I2 => rd_index(1),
      I3 => rd_index(0),
      I4 => MOSI,
      I5 => \reg1[6]_i_2_n_0\,
      O => \reg1[4]_i_1_n_0\
    );
\reg1[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAEEAA22A"
    )
        port map (
      I0 => reg1(5),
      I1 => rd_index(2),
      I2 => rd_index(1),
      I3 => rd_index(0),
      I4 => MOSI,
      I5 => \reg1[7]_i_2_n_0\,
      O => \reg1[5]_i_1_n_0\
    );
\reg1[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAEAAB2AA8"
    )
        port map (
      I0 => reg1(6),
      I1 => rd_index(2),
      I2 => rd_index(0),
      I3 => rd_index(1),
      I4 => MOSI,
      I5 => \reg1[6]_i_2_n_0\,
      O => \reg1[6]_i_1_n_0\
    );
\reg1[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => rd_index(3),
      I1 => rd_index(4),
      I2 => rd_index(0),
      O => \reg1[6]_i_2_n_0\
    );
\reg1[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAEAAB2AA8"
    )
        port map (
      I0 => reg1(7),
      I1 => rd_index(2),
      I2 => rd_index(0),
      I3 => rd_index(1),
      I4 => MOSI,
      I5 => \reg1[7]_i_2_n_0\,
      O => \reg1[7]_i_1_n_0\
    );
\reg1[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEEEEF"
    )
        port map (
      I0 => rd_index(0),
      I1 => rd_index(4),
      I2 => rd_index(2),
      I3 => rd_index(1),
      I4 => rd_index(3),
      O => \reg1[7]_i_2_n_0\
    );
\reg1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^sclk\,
      CE => \rd_index[4]_i_2_n_0\,
      D => \reg1[0]_i_1_n_0\,
      Q => reg1(0),
      R => '0'
    );
\reg1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^sclk\,
      CE => \rd_index[4]_i_2_n_0\,
      D => \reg1[1]_i_1_n_0\,
      Q => reg1(1),
      R => '0'
    );
\reg1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^sclk\,
      CE => \rd_index[4]_i_2_n_0\,
      D => \reg1[2]_i_1_n_0\,
      Q => reg1(2),
      R => '0'
    );
\reg1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^sclk\,
      CE => \rd_index[4]_i_2_n_0\,
      D => \reg1[3]_i_1_n_0\,
      Q => reg1(3),
      R => '0'
    );
\reg1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^sclk\,
      CE => \rd_index[4]_i_2_n_0\,
      D => \reg1[4]_i_1_n_0\,
      Q => reg1(4),
      R => '0'
    );
\reg1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^sclk\,
      CE => \rd_index[4]_i_2_n_0\,
      D => \reg1[5]_i_1_n_0\,
      Q => reg1(5),
      R => '0'
    );
\reg1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^sclk\,
      CE => \rd_index[4]_i_2_n_0\,
      D => \reg1[6]_i_1_n_0\,
      Q => reg1(6),
      R => '0'
    );
\reg1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^sclk\,
      CE => \rd_index[4]_i_2_n_0\,
      D => \reg1[7]_i_1_n_0\,
      Q => reg1(7),
      R => '0'
    );
ren_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B0"
    )
        port map (
      I0 => ren,
      I1 => cmd,
      I2 => done,
      O => ren_i_1_n_0
    );
ren_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^sclk\,
      CE => '1',
      D => ren_i_1_n_0,
      Q => ren,
      R => '0'
    );
wen_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => \^wen\,
      I1 => done,
      I2 => cmd,
      O => wen_i_1_n_0
    );
wen_inst: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^wen_1\,
      O => \^wen\
    );
wen_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^sclk\,
      CE => '1',
      D => wen_i_1_n_0,
      Q => \^wen_1\,
      R => '0'
    );
\wr_index[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wr_index(0),
      O => reg0_reg1(0)
    );
\wr_index[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => wr_index(1),
      I1 => wr_index(0),
      O => wr_index_reg0(1)
    );
\wr_index[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => wr_index(2),
      I1 => wr_index(0),
      I2 => wr_index(1),
      O => wr_index_reg0(2)
    );
\wr_index[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => wr_index(3),
      I1 => wr_index(2),
      I2 => wr_index(1),
      I3 => wr_index(0),
      O => wr_index_reg0(3)
    );
\wr_index[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => wr_index(0),
      I1 => wr_index(3),
      I2 => wr_index(1),
      I3 => wr_index(2),
      I4 => wr_index(4),
      I5 => done,
      O => \wr_index[4]_i_1_n_0\
    );
\wr_index[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
        port map (
      I0 => wr_index(4),
      I1 => wr_index(3),
      I2 => wr_index(1),
      I3 => wr_index(2),
      I4 => wr_index(0),
      O => wr_index_reg0(4)
    );
\wr_index_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^sclk\,
      CE => \rd_index[4]_i_2_n_0\,
      D => reg0_reg1(0),
      Q => wr_index(0),
      S => \wr_index[4]_i_1_n_0\
    );
\wr_index_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^sclk\,
      CE => \rd_index[4]_i_2_n_0\,
      D => wr_index_reg0(1),
      Q => wr_index(1),
      R => \wr_index[4]_i_1_n_0\
    );
\wr_index_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^sclk\,
      CE => \rd_index[4]_i_2_n_0\,
      D => wr_index_reg0(2),
      Q => wr_index(2),
      R => \wr_index[4]_i_1_n_0\
    );
\wr_index_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^sclk\,
      CE => \rd_index[4]_i_2_n_0\,
      D => wr_index_reg0(3),
      Q => wr_index(3),
      R => \wr_index[4]_i_1_n_0\
    );
\wr_index_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => \^sclk\,
      CE => \rd_index[4]_i_2_n_0\,
      D => wr_index_reg0(4),
      Q => wr_index(4),
      S => \wr_index[4]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity my_SPI_RAM_spi_slave_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of my_SPI_RAM_spi_slave_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of my_SPI_RAM_spi_slave_0_0 : entity is "my_SPI_RAM_spi_slave_0_0,spi_slave,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of my_SPI_RAM_spi_slave_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of my_SPI_RAM_spi_slave_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of my_SPI_RAM_spi_slave_0_0 : entity is "spi_slave,Vivado 2024.1";
end my_SPI_RAM_spi_slave_0_0;

architecture STRUCTURE of my_SPI_RAM_spi_slave_0_0 is
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of inst : label is "soft";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of CLK : signal is "xilinx.com:signal:clock:1.0 CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of CLK : signal is "XIL_INTERFACENAME CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN my_SPI_RAM_spi_slave_0_0_CLK, INSERT_VIP 0";
begin
inst: entity work.my_SPI_RAM_spi_slave_0_0_spi_slave
     port map (
      ADDR(6 downto 0) => ADDR(6 downto 0),
      CLK => CLK,
      CSN => CSN,
      DIN(7 downto 0) => DIN(7 downto 0),
      DOUT(7 downto 0) => DOUT(7 downto 0),
      MISO => MISO,
      MOSI => MOSI,
      SCLK => SCLK,
      WEN => WEN
    );
end STRUCTURE;
