-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Mon Feb  3 16:01:47 2025
-- Host        : COMSYS01 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Verilog-lab/my_SPI_RAM/my_SPI_RAM.gen/sources_1/bd/my_SPI_RAM/ip/my_SPI_RAM_spi_master_0_0/my_SPI_RAM_spi_master_0_0_sim_netlist.vhdl
-- Design      : my_SPI_RAM_spi_master_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z007sclg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity my_SPI_RAM_spi_master_0_0_spi_master is
  port (
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
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of my_SPI_RAM_spi_master_0_0_spi_master : entity is "spi_master";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of my_SPI_RAM_spi_master_0_0_spi_master : entity is "soft";
end my_SPI_RAM_spi_master_0_0_spi_master;

architecture STRUCTURE of my_SPI_RAM_spi_master_0_0_spi_master is
  signal \^csn\ : STD_LOGIC;
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of CSN : signal is std.standard.true;
  signal CSN_i_1_n_0 : STD_LOGIC;
  signal \^mosi\ : STD_LOGIC;
  attribute MARK_DEBUG of MOSI : signal is std.standard.true;
  signal \^sclk\ : STD_LOGIC;
  attribute MARK_DEBUG of SCLK : signal is std.standard.true;
  signal SCLK_i_1_n_0 : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal csn_rd_cnt : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute MARK_DEBUG of csn_rd_cnt : signal is std.standard.true;
  signal \csn_rd_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \csn_rd_cnt__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal csn_rd_enable : STD_LOGIC;
  attribute MARK_DEBUG of csn_rd_enable : signal is std.standard.true;
  signal \csn_rd_enable__0\ : STD_LOGIC;
  signal csn_rd_enable_i_1_n_0 : STD_LOGIC;
  signal csn_wr_cnt : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute MARK_DEBUG of csn_wr_cnt : signal is std.standard.true;
  signal csn_wr_cnt1 : STD_LOGIC;
  signal \csn_wr_cnt__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal csn_wr_enable : STD_LOGIC;
  attribute MARK_DEBUG of csn_wr_enable : signal is std.standard.true;
  signal \csn_wr_enable__0\ : STD_LOGIC;
  signal csn_wr_enable_i_1_n_0 : STD_LOGIC;
  signal miso_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute MARK_DEBUG of miso_data : signal is std.standard.true;
  signal miso_data1 : STD_LOGIC;
  signal mosi_data : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of mosi_data : signal is std.standard.true;
  signal mosi_data1 : STD_LOGIC;
  signal \mosi_data[14]_i_2_n_0\ : STD_LOGIC;
  signal \mosi_data[15]_i_1_n_0\ : STD_LOGIC;
  signal \mosi_data[15]_i_2_n_0\ : STD_LOGIC;
  signal \mosi_data[1]_i_1_n_0\ : STD_LOGIC;
  signal \mosi_data[2]_i_1_n_0\ : STD_LOGIC;
  signal \mosi_data[3]_i_1_n_0\ : STD_LOGIC;
  signal \mosi_data[4]_i_1_n_0\ : STD_LOGIC;
  signal \mosi_data[5]_i_1_n_0\ : STD_LOGIC;
  signal \mosi_data[6]_i_1_n_0\ : STD_LOGIC;
  signal \mosi_data[7]_i_1_n_0\ : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal rd_cmd_1D : STD_LOGIC;
  signal rd_cmd_2D : STD_LOGIC;
  signal rd_cnt : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute MARK_DEBUG of rd_cnt : signal is std.standard.true;
  signal \rd_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \rd_cnt__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal rd_done : STD_LOGIC;
  attribute MARK_DEBUG of rd_done : signal is std.standard.true;
  signal rd_done_i_1_n_0 : STD_LOGIC;
  signal sclk_1D : STD_LOGIC;
  signal sclk_2D : STD_LOGIC;
  signal \sclk_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal sclk_cnt_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal wr_cmd_1D : STD_LOGIC;
  signal wr_cmd_2D : STD_LOGIC;
  attribute KEEP : string;
  attribute KEEP of CSN_reg : label is "yes";
  attribute KEEP of SCLK_reg : label is "yes";
  attribute KEEP of \csn_rd_cnt_reg[0]\ : label is "yes";
  attribute KEEP of \csn_rd_cnt_reg[1]\ : label is "yes";
  attribute KEEP of \csn_rd_cnt_reg[2]\ : label is "yes";
  attribute KEEP of \csn_rd_cnt_reg[3]\ : label is "yes";
  attribute KEEP of \csn_rd_cnt_reg[4]\ : label is "yes";
  attribute KEEP of csn_rd_enable_reg : label is "yes";
  attribute KEEP of \csn_wr_cnt_reg[0]\ : label is "yes";
  attribute KEEP of \csn_wr_cnt_reg[1]\ : label is "yes";
  attribute KEEP of \csn_wr_cnt_reg[2]\ : label is "yes";
  attribute KEEP of \csn_wr_cnt_reg[3]\ : label is "yes";
  attribute KEEP of \csn_wr_cnt_reg[4]\ : label is "yes";
  attribute KEEP of csn_wr_enable_reg : label is "yes";
  attribute KEEP of \miso_data_reg[0]\ : label is "yes";
  attribute KEEP of \miso_data_reg[1]\ : label is "yes";
  attribute KEEP of \miso_data_reg[2]\ : label is "yes";
  attribute KEEP of \miso_data_reg[3]\ : label is "yes";
  attribute KEEP of \miso_data_reg[4]\ : label is "yes";
  attribute KEEP of \miso_data_reg[5]\ : label is "yes";
  attribute KEEP of \miso_data_reg[6]\ : label is "yes";
  attribute KEEP of \miso_data_reg[7]\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \mosi_data[15]_i_2\ : label is "soft_lutpair0";
  attribute KEEP of \mosi_data_reg[0]\ : label is "yes";
  attribute KEEP of \mosi_data_reg[10]\ : label is "yes";
  attribute KEEP of \mosi_data_reg[11]\ : label is "yes";
  attribute KEEP of \mosi_data_reg[12]\ : label is "yes";
  attribute KEEP of \mosi_data_reg[13]\ : label is "yes";
  attribute KEEP of \mosi_data_reg[14]\ : label is "yes";
  attribute KEEP of \mosi_data_reg[15]\ : label is "yes";
  attribute KEEP of \mosi_data_reg[1]\ : label is "yes";
  attribute KEEP of \mosi_data_reg[2]\ : label is "yes";
  attribute KEEP of \mosi_data_reg[3]\ : label is "yes";
  attribute KEEP of \mosi_data_reg[4]\ : label is "yes";
  attribute KEEP of \mosi_data_reg[5]\ : label is "yes";
  attribute KEEP of \mosi_data_reg[6]\ : label is "yes";
  attribute KEEP of \mosi_data_reg[7]\ : label is "yes";
  attribute KEEP of \mosi_data_reg[8]\ : label is "yes";
  attribute KEEP of \mosi_data_reg[9]\ : label is "yes";
  attribute SOFT_HLUTNM of \rd_cnt[4]_i_3\ : label is "soft_lutpair0";
  attribute KEEP of \rd_cnt_reg[0]\ : label is "yes";
  attribute KEEP of \rd_cnt_reg[1]\ : label is "yes";
  attribute KEEP of \rd_cnt_reg[2]\ : label is "yes";
  attribute KEEP of \rd_cnt_reg[3]\ : label is "yes";
  attribute KEEP of \rd_cnt_reg[4]\ : label is "yes";
  attribute KEEP of rd_done_reg : label is "yes";
  attribute SOFT_HLUTNM of \sclk_cnt[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \sclk_cnt[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \sclk_cnt[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \sclk_cnt[3]_i_1\ : label is "soft_lutpair1";
  attribute mark_debug_string : string;
  attribute mark_debug_string of CSN : signal is "true";
  attribute mark_debug_string of MISO : signal is "true";
  attribute mark_debug_string of MOSI : signal is "true";
  attribute mark_debug_string of SCLK : signal is "true";
  attribute mark_debug_string of ADDR : signal is "true";
  attribute mark_debug_string of CMD : signal is "true";
  attribute mark_debug_string of RD_DATA : signal is "true";
  attribute mark_debug_string of WR_DATA : signal is "true";
begin
  CSN <= \^csn\;
  MOSI <= \^mosi\;
  SCLK <= \^sclk\;
CSN_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => csn_wr_enable,
      I1 => csn_rd_enable,
      O => CSN_i_1_n_0
    );
CSN_reg: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => '1',
      D => CSN_i_1_n_0,
      Q => \^csn\,
      S => clear
    );
RD_DATA_inferred_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rd_done,
      I1 => miso_data(7),
      O => RD_DATA(7)
    );
RD_DATA_inferred_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rd_done,
      I1 => miso_data(6),
      O => RD_DATA(6)
    );
RD_DATA_inferred_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rd_done,
      I1 => miso_data(5),
      O => RD_DATA(5)
    );
RD_DATA_inferred_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rd_done,
      I1 => miso_data(4),
      O => RD_DATA(4)
    );
RD_DATA_inferred_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rd_done,
      I1 => miso_data(3),
      O => RD_DATA(3)
    );
RD_DATA_inferred_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rd_done,
      I1 => miso_data(2),
      O => RD_DATA(2)
    );
RD_DATA_inferred_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rd_done,
      I1 => miso_data(1),
      O => RD_DATA(1)
    );
RD_DATA_inferred_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rd_done,
      I1 => miso_data(0),
      O => RD_DATA(0)
    );
SCLK_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000100000"
    )
        port map (
      I0 => sclk_cnt_reg(2),
      I1 => sclk_cnt_reg(3),
      I2 => sclk_cnt_reg(0),
      I3 => sclk_cnt_reg(1),
      I4 => RST,
      I5 => \^csn\,
      O => SCLK_i_1_n_0
    );
SCLK_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => SCLK_i_1_n_0,
      Q => \^sclk\,
      R => '0'
    );
\csn_rd_cnt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => csn_rd_cnt(0),
      I1 => sclk_2D,
      I2 => sclk_1D,
      O => \csn_rd_cnt__0\(0)
    );
\csn_rd_cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => csn_rd_cnt(0),
      I1 => sclk_1D,
      I2 => sclk_2D,
      I3 => csn_rd_cnt(1),
      O => \csn_rd_cnt__0\(1)
    );
\csn_rd_cnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF4000"
    )
        port map (
      I0 => sclk_2D,
      I1 => sclk_1D,
      I2 => csn_rd_cnt(0),
      I3 => csn_rd_cnt(1),
      I4 => csn_rd_cnt(2),
      O => \csn_rd_cnt__0\(2)
    );
\csn_rd_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7FFFFF00800000"
    )
        port map (
      I0 => csn_rd_cnt(1),
      I1 => csn_rd_cnt(0),
      I2 => sclk_1D,
      I3 => sclk_2D,
      I4 => csn_rd_cnt(2),
      I5 => csn_rd_cnt(3),
      O => \csn_rd_cnt__0\(3)
    );
\csn_rd_cnt[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^csn\,
      I1 => RST,
      O => \csn_rd_cnt[4]_i_1_n_0\
    );
\csn_rd_cnt[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => csn_rd_cnt(2),
      I1 => csn_wr_cnt1,
      I2 => csn_rd_cnt(0),
      I3 => csn_rd_cnt(1),
      I4 => csn_rd_cnt(3),
      I5 => csn_rd_cnt(4),
      O => \csn_rd_cnt__0\(4)
    );
\csn_rd_cnt[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sclk_1D,
      I1 => sclk_2D,
      O => csn_wr_cnt1
    );
\csn_rd_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \csn_rd_cnt__0\(0),
      Q => csn_rd_cnt(0),
      R => \csn_rd_cnt[4]_i_1_n_0\
    );
\csn_rd_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \csn_rd_cnt__0\(1),
      Q => csn_rd_cnt(1),
      R => \csn_rd_cnt[4]_i_1_n_0\
    );
\csn_rd_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \csn_rd_cnt__0\(2),
      Q => csn_rd_cnt(2),
      R => \csn_rd_cnt[4]_i_1_n_0\
    );
\csn_rd_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \csn_rd_cnt__0\(3),
      Q => csn_rd_cnt(3),
      R => \csn_rd_cnt[4]_i_1_n_0\
    );
\csn_rd_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \csn_rd_cnt__0\(4),
      Q => csn_rd_cnt(4),
      R => \csn_rd_cnt[4]_i_1_n_0\
    );
csn_rd_enable_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F2"
    )
        port map (
      I0 => rd_cmd_1D,
      I1 => rd_cmd_2D,
      I2 => csn_rd_enable,
      I3 => \csn_rd_enable__0\,
      O => csn_rd_enable_i_1_n_0
    );
csn_rd_enable_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02000000FFFFFFFF"
    )
        port map (
      I0 => csn_rd_cnt(4),
      I1 => csn_rd_cnt(3),
      I2 => csn_rd_cnt(2),
      I3 => csn_rd_cnt(1),
      I4 => csn_rd_cnt(0),
      I5 => RST,
      O => \csn_rd_enable__0\
    );
csn_rd_enable_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => csn_rd_enable_i_1_n_0,
      Q => csn_rd_enable,
      R => '0'
    );
\csn_wr_cnt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => csn_wr_cnt(0),
      I1 => sclk_2D,
      I2 => sclk_1D,
      O => \csn_wr_cnt__0\(0)
    );
\csn_wr_cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => csn_wr_cnt(0),
      I1 => sclk_1D,
      I2 => sclk_2D,
      I3 => csn_wr_cnt(1),
      O => \csn_wr_cnt__0\(1)
    );
\csn_wr_cnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF4000"
    )
        port map (
      I0 => sclk_2D,
      I1 => sclk_1D,
      I2 => csn_wr_cnt(0),
      I3 => csn_wr_cnt(1),
      I4 => csn_wr_cnt(2),
      O => \csn_wr_cnt__0\(2)
    );
\csn_wr_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7FFFFF00800000"
    )
        port map (
      I0 => csn_wr_cnt(1),
      I1 => csn_wr_cnt(0),
      I2 => sclk_1D,
      I3 => sclk_2D,
      I4 => csn_wr_cnt(2),
      I5 => csn_wr_cnt(3),
      O => \csn_wr_cnt__0\(3)
    );
\csn_wr_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => csn_wr_cnt(2),
      I1 => csn_wr_cnt1,
      I2 => csn_wr_cnt(0),
      I3 => csn_wr_cnt(1),
      I4 => csn_wr_cnt(3),
      I5 => csn_wr_cnt(4),
      O => \csn_wr_cnt__0\(4)
    );
\csn_wr_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \csn_wr_cnt__0\(0),
      Q => csn_wr_cnt(0),
      R => \csn_rd_cnt[4]_i_1_n_0\
    );
\csn_wr_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \csn_wr_cnt__0\(1),
      Q => csn_wr_cnt(1),
      R => \csn_rd_cnt[4]_i_1_n_0\
    );
\csn_wr_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \csn_wr_cnt__0\(2),
      Q => csn_wr_cnt(2),
      R => \csn_rd_cnt[4]_i_1_n_0\
    );
\csn_wr_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \csn_wr_cnt__0\(3),
      Q => csn_wr_cnt(3),
      R => \csn_rd_cnt[4]_i_1_n_0\
    );
\csn_wr_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \csn_wr_cnt__0\(4),
      Q => csn_wr_cnt(4),
      R => \csn_rd_cnt[4]_i_1_n_0\
    );
csn_wr_enable_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F2"
    )
        port map (
      I0 => wr_cmd_1D,
      I1 => wr_cmd_2D,
      I2 => csn_wr_enable,
      I3 => \csn_wr_enable__0\,
      O => csn_wr_enable_i_1_n_0
    );
csn_wr_enable_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02000000FFFFFFFF"
    )
        port map (
      I0 => csn_wr_cnt(4),
      I1 => csn_wr_cnt(3),
      I2 => csn_wr_cnt(2),
      I3 => csn_wr_cnt(1),
      I4 => csn_wr_cnt(0),
      I5 => RST,
      O => \csn_wr_enable__0\
    );
csn_wr_enable_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => csn_wr_enable_i_1_n_0,
      Q => csn_wr_enable,
      R => '0'
    );
\miso_data[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4442"
    )
        port map (
      I0 => rd_cnt(4),
      I1 => rd_cnt(3),
      I2 => rd_cnt(1),
      I3 => rd_cnt(2),
      O => miso_data1
    );
\miso_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^sclk\,
      CE => miso_data1,
      D => miso_data(1),
      Q => miso_data(0),
      R => \csn_rd_cnt[4]_i_1_n_0\
    );
\miso_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^sclk\,
      CE => miso_data1,
      D => miso_data(2),
      Q => miso_data(1),
      R => \csn_rd_cnt[4]_i_1_n_0\
    );
\miso_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^sclk\,
      CE => miso_data1,
      D => miso_data(3),
      Q => miso_data(2),
      R => \csn_rd_cnt[4]_i_1_n_0\
    );
\miso_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^sclk\,
      CE => miso_data1,
      D => miso_data(4),
      Q => miso_data(3),
      R => \csn_rd_cnt[4]_i_1_n_0\
    );
\miso_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^sclk\,
      CE => miso_data1,
      D => miso_data(5),
      Q => miso_data(4),
      R => \csn_rd_cnt[4]_i_1_n_0\
    );
\miso_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^sclk\,
      CE => miso_data1,
      D => miso_data(6),
      Q => miso_data(5),
      R => \csn_rd_cnt[4]_i_1_n_0\
    );
\miso_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^sclk\,
      CE => miso_data1,
      D => miso_data(7),
      Q => miso_data(6),
      R => \csn_rd_cnt[4]_i_1_n_0\
    );
\miso_data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^sclk\,
      CE => miso_data1,
      D => MISO,
      Q => miso_data(7),
      R => \csn_rd_cnt[4]_i_1_n_0\
    );
\mosi_data[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C0008080C000C00"
    )
        port map (
      I0 => WR_DATA(0),
      I1 => RST,
      I2 => mosi_data1,
      I3 => mosi_data(0),
      I4 => wr_cmd_2D,
      I5 => wr_cmd_1D,
      O => \p_0_in__0\(0)
    );
\mosi_data[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0000CFC00000"
    )
        port map (
      I0 => mosi_data(9),
      I1 => ADDR(2),
      I2 => \mosi_data[14]_i_2_n_0\,
      I3 => mosi_data(10),
      I4 => RST,
      I5 => mosi_data1,
      O => \p_0_in__0\(10)
    );
\mosi_data[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0000CFC00000"
    )
        port map (
      I0 => mosi_data(10),
      I1 => ADDR(3),
      I2 => \mosi_data[14]_i_2_n_0\,
      I3 => mosi_data(11),
      I4 => RST,
      I5 => mosi_data1,
      O => \p_0_in__0\(11)
    );
\mosi_data[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0000CFC00000"
    )
        port map (
      I0 => mosi_data(11),
      I1 => ADDR(4),
      I2 => \mosi_data[14]_i_2_n_0\,
      I3 => mosi_data(12),
      I4 => RST,
      I5 => mosi_data1,
      O => \p_0_in__0\(12)
    );
\mosi_data[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0000CFC00000"
    )
        port map (
      I0 => mosi_data(12),
      I1 => ADDR(5),
      I2 => \mosi_data[14]_i_2_n_0\,
      I3 => mosi_data(13),
      I4 => RST,
      I5 => mosi_data1,
      O => \p_0_in__0\(13)
    );
\mosi_data[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0000CFC00000"
    )
        port map (
      I0 => mosi_data(13),
      I1 => ADDR(6),
      I2 => \mosi_data[14]_i_2_n_0\,
      I3 => mosi_data(14),
      I4 => RST,
      I5 => mosi_data1,
      O => \p_0_in__0\(14)
    );
\mosi_data[14]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => wr_cmd_2D,
      I1 => wr_cmd_1D,
      I2 => rd_cmd_2D,
      I3 => rd_cmd_1D,
      O => \mosi_data[14]_i_2_n_0\
    );
\mosi_data[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEAEAEAEFEAEFEA"
    )
        port map (
      I0 => \mosi_data[15]_i_2_n_0\,
      I1 => mosi_data(14),
      I2 => mosi_data1,
      I3 => \^mosi\,
      I4 => rd_cmd_2D,
      I5 => rd_cmd_1D,
      O => \mosi_data[15]_i_1_n_0\
    );
\mosi_data[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4044"
    )
        port map (
      I0 => wr_cmd_2D,
      I1 => wr_cmd_1D,
      I2 => sclk_1D,
      I3 => sclk_2D,
      O => \mosi_data[15]_i_2_n_0\
    );
\mosi_data[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF2D00000F2D0"
    )
        port map (
      I0 => wr_cmd_1D,
      I1 => wr_cmd_2D,
      I2 => mosi_data(1),
      I3 => WR_DATA(1),
      I4 => mosi_data1,
      I5 => mosi_data(0),
      O => \mosi_data[1]_i_1_n_0\
    );
\mosi_data[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF2D00000F2D0"
    )
        port map (
      I0 => wr_cmd_1D,
      I1 => wr_cmd_2D,
      I2 => mosi_data(2),
      I3 => WR_DATA(2),
      I4 => mosi_data1,
      I5 => mosi_data(1),
      O => \mosi_data[2]_i_1_n_0\
    );
\mosi_data[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF2D00000F2D0"
    )
        port map (
      I0 => wr_cmd_1D,
      I1 => wr_cmd_2D,
      I2 => mosi_data(3),
      I3 => WR_DATA(3),
      I4 => mosi_data1,
      I5 => mosi_data(2),
      O => \mosi_data[3]_i_1_n_0\
    );
\mosi_data[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF2D00000F2D0"
    )
        port map (
      I0 => wr_cmd_1D,
      I1 => wr_cmd_2D,
      I2 => mosi_data(4),
      I3 => WR_DATA(4),
      I4 => mosi_data1,
      I5 => mosi_data(3),
      O => \mosi_data[4]_i_1_n_0\
    );
\mosi_data[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF2D00000F2D0"
    )
        port map (
      I0 => wr_cmd_1D,
      I1 => wr_cmd_2D,
      I2 => mosi_data(5),
      I3 => WR_DATA(5),
      I4 => mosi_data1,
      I5 => mosi_data(4),
      O => \mosi_data[5]_i_1_n_0\
    );
\mosi_data[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF2D00000F2D0"
    )
        port map (
      I0 => wr_cmd_1D,
      I1 => wr_cmd_2D,
      I2 => mosi_data(6),
      I3 => WR_DATA(6),
      I4 => mosi_data1,
      I5 => mosi_data(5),
      O => \mosi_data[6]_i_1_n_0\
    );
\mosi_data[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF2D00000F2D0"
    )
        port map (
      I0 => wr_cmd_1D,
      I1 => wr_cmd_2D,
      I2 => mosi_data(7),
      I3 => WR_DATA(7),
      I4 => mosi_data1,
      I5 => mosi_data(6),
      O => \mosi_data[7]_i_1_n_0\
    );
\mosi_data[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0000CFC00000"
    )
        port map (
      I0 => mosi_data(7),
      I1 => ADDR(0),
      I2 => \mosi_data[14]_i_2_n_0\,
      I3 => mosi_data(8),
      I4 => RST,
      I5 => mosi_data1,
      O => \p_0_in__0\(8)
    );
\mosi_data[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0000CFC00000"
    )
        port map (
      I0 => mosi_data(8),
      I1 => ADDR(1),
      I2 => \mosi_data[14]_i_2_n_0\,
      I3 => mosi_data(9),
      I4 => RST,
      I5 => mosi_data1,
      O => \p_0_in__0\(9)
    );
mosi_data_inst: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => mosi_data(15),
      O => \^mosi\
    );
\mosi_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \p_0_in__0\(0),
      Q => mosi_data(0),
      R => '0'
    );
\mosi_data_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \p_0_in__0\(10),
      Q => mosi_data(10),
      R => '0'
    );
\mosi_data_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \p_0_in__0\(11),
      Q => mosi_data(11),
      R => '0'
    );
\mosi_data_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \p_0_in__0\(12),
      Q => mosi_data(12),
      R => '0'
    );
\mosi_data_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \p_0_in__0\(13),
      Q => mosi_data(13),
      R => '0'
    );
\mosi_data_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \p_0_in__0\(14),
      Q => mosi_data(14),
      R => '0'
    );
\mosi_data_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \mosi_data[15]_i_1_n_0\,
      Q => mosi_data(15),
      R => clear
    );
\mosi_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \mosi_data[1]_i_1_n_0\,
      Q => mosi_data(1),
      R => clear
    );
\mosi_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \mosi_data[2]_i_1_n_0\,
      Q => mosi_data(2),
      R => clear
    );
\mosi_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \mosi_data[3]_i_1_n_0\,
      Q => mosi_data(3),
      R => clear
    );
\mosi_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \mosi_data[4]_i_1_n_0\,
      Q => mosi_data(4),
      R => clear
    );
\mosi_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \mosi_data[5]_i_1_n_0\,
      Q => mosi_data(5),
      R => clear
    );
\mosi_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \mosi_data[6]_i_1_n_0\,
      Q => mosi_data(6),
      R => clear
    );
\mosi_data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \mosi_data[7]_i_1_n_0\,
      Q => mosi_data(7),
      R => clear
    );
\mosi_data_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \p_0_in__0\(8),
      Q => mosi_data(8),
      R => '0'
    );
\mosi_data_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \p_0_in__0\(9),
      Q => mosi_data(9),
      R => '0'
    );
rd_cmd_1D_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => RST,
      O => clear
    );
rd_cmd_1D_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => CMD(1),
      Q => rd_cmd_1D,
      R => clear
    );
rd_cmd_2D_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => rd_cmd_1D,
      Q => rd_cmd_2D,
      R => clear
    );
\rd_cnt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => rd_cnt(0),
      I1 => sclk_1D,
      I2 => sclk_2D,
      O => \rd_cnt__0\(0)
    );
\rd_cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => rd_cnt(0),
      I1 => sclk_2D,
      I2 => sclk_1D,
      I3 => rd_cnt(1),
      O => \rd_cnt__0\(1)
    );
\rd_cnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF4000"
    )
        port map (
      I0 => sclk_1D,
      I1 => sclk_2D,
      I2 => rd_cnt(0),
      I3 => rd_cnt(1),
      I4 => rd_cnt(2),
      O => \rd_cnt__0\(2)
    );
\rd_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7FFFFF00800000"
    )
        port map (
      I0 => rd_cnt(1),
      I1 => rd_cnt(0),
      I2 => sclk_2D,
      I3 => sclk_1D,
      I4 => rd_cnt(2),
      I5 => rd_cnt(3),
      O => \rd_cnt__0\(3)
    );
\rd_cnt[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D0FF"
    )
        port map (
      I0 => sclk_2D,
      I1 => sclk_1D,
      I2 => \^csn\,
      I3 => RST,
      O => \rd_cnt[4]_i_1_n_0\
    );
\rd_cnt[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => rd_cnt(2),
      I1 => mosi_data1,
      I2 => rd_cnt(0),
      I3 => rd_cnt(1),
      I4 => rd_cnt(3),
      I5 => rd_cnt(4),
      O => \rd_cnt__0\(4)
    );
\rd_cnt[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sclk_2D,
      I1 => sclk_1D,
      O => mosi_data1
    );
\rd_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \rd_cnt__0\(0),
      Q => rd_cnt(0),
      R => \rd_cnt[4]_i_1_n_0\
    );
\rd_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \rd_cnt__0\(1),
      Q => rd_cnt(1),
      R => \rd_cnt[4]_i_1_n_0\
    );
\rd_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \rd_cnt__0\(2),
      Q => rd_cnt(2),
      R => \rd_cnt[4]_i_1_n_0\
    );
\rd_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \rd_cnt__0\(3),
      Q => rd_cnt(3),
      R => \rd_cnt[4]_i_1_n_0\
    );
\rd_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \rd_cnt__0\(4),
      Q => rd_cnt(4),
      R => \rd_cnt[4]_i_1_n_0\
    );
rd_done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010000000000"
    )
        port map (
      I0 => rd_cnt(0),
      I1 => \csn_rd_cnt[4]_i_1_n_0\,
      I2 => rd_cnt(2),
      I3 => rd_cnt(1),
      I4 => rd_cnt(3),
      I5 => rd_cnt(4),
      O => rd_done_i_1_n_0
    );
rd_done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^sclk\,
      CE => '1',
      D => rd_done_i_1_n_0,
      Q => rd_done,
      R => '0'
    );
sclk_1D_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \^sclk\,
      Q => sclk_1D,
      R => clear
    );
sclk_2D_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => sclk_1D,
      Q => sclk_2D,
      R => clear
    );
\sclk_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sclk_cnt_reg(0),
      O => \sclk_cnt[0]_i_1_n_0\
    );
\sclk_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sclk_cnt_reg(0),
      I1 => sclk_cnt_reg(1),
      O => \p_0_in__1\(1)
    );
\sclk_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => sclk_cnt_reg(0),
      I1 => sclk_cnt_reg(1),
      I2 => sclk_cnt_reg(2),
      O => \p_0_in__1\(2)
    );
\sclk_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => sclk_cnt_reg(1),
      I1 => sclk_cnt_reg(0),
      I2 => sclk_cnt_reg(2),
      I3 => sclk_cnt_reg(3),
      O => \p_0_in__1\(3)
    );
\sclk_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sclk_cnt[0]_i_1_n_0\,
      Q => sclk_cnt_reg(0),
      R => clear
    );
\sclk_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \p_0_in__1\(1),
      Q => sclk_cnt_reg(1),
      R => clear
    );
\sclk_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \p_0_in__1\(2),
      Q => sclk_cnt_reg(2),
      R => clear
    );
\sclk_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \p_0_in__1\(3),
      Q => sclk_cnt_reg(3),
      R => clear
    );
wr_cmd_1D_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => CMD(0),
      Q => wr_cmd_1D,
      R => clear
    );
wr_cmd_2D_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => wr_cmd_1D,
      Q => wr_cmd_2D,
      R => clear
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity my_SPI_RAM_spi_master_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of my_SPI_RAM_spi_master_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of my_SPI_RAM_spi_master_0_0 : entity is "my_SPI_RAM_spi_master_0_0,spi_master,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of my_SPI_RAM_spi_master_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of my_SPI_RAM_spi_master_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of my_SPI_RAM_spi_master_0_0 : entity is "spi_master,Vivado 2024.1";
end my_SPI_RAM_spi_master_0_0;

architecture STRUCTURE of my_SPI_RAM_spi_master_0_0 is
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of inst : label is "soft";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of CLK : signal is "xilinx.com:signal:clock:1.0 CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of CLK : signal is "XIL_INTERFACENAME CLK, ASSOCIATED_RESET RST, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN my_SPI_RAM_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of RST : signal is "xilinx.com:signal:reset:1.0 RST RST";
  attribute X_INTERFACE_PARAMETER of RST : signal is "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.my_SPI_RAM_spi_master_0_0_spi_master
     port map (
      ADDR(6 downto 0) => ADDR(6 downto 0),
      CLK => CLK,
      CMD(1 downto 0) => CMD(1 downto 0),
      CSN => CSN,
      MISO => MISO,
      MOSI => MOSI,
      RD_DATA(7 downto 0) => RD_DATA(7 downto 0),
      RST => RST,
      SCLK => SCLK,
      WR_DATA(7 downto 0) => WR_DATA(7 downto 0)
    );
end STRUCTURE;
