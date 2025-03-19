-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Mon Dec 16 11:44:23 2024
-- Host        : COMSYS01 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Verilog-lab/Zynq_axi_7seg/Zynq_axi_7seg.gen/sources_1/bd/Zynq_axi_7seg/ip/Zynq_axi_7seg_disp_mod_0_0/Zynq_axi_7seg_disp_mod_0_0_sim_netlist.vhdl
-- Design      : Zynq_axi_7seg_disp_mod_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z007sclg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_axi_7seg_disp_mod_0_0_disp_mod is
  port (
    TICK : in STD_LOGIC;
    DIGIT_1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DIGIT_10 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    CA : out STD_LOGIC;
    AN : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Zynq_axi_7seg_disp_mod_0_0_disp_mod : entity is "disp_mod";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of Zynq_axi_7seg_disp_mod_0_0_disp_mod : entity is "soft";
end Zynq_axi_7seg_disp_mod_0_0_disp_mod;

architecture STRUCTURE of Zynq_axi_7seg_disp_mod_0_0_disp_mod is
  signal \^ca\ : STD_LOGIC;
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of CA : signal is std.standard.true;
  signal digit : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \digit[0]_i_1_n_0\ : STD_LOGIC;
  signal \digit[1]_i_1_n_0\ : STD_LOGIC;
  signal \digit[2]_i_1_n_0\ : STD_LOGIC;
  signal \digit[3]_i_1_n_0\ : STD_LOGIC;
  signal \p_1_in__0\ : STD_LOGIC;
  attribute mark_debug_string : string;
  attribute mark_debug_string of CA : signal is "true";
  attribute mark_debug_string of TICK : signal is "true";
  attribute mark_debug_string of AN : signal is "true";
  attribute mark_debug_string of DIGIT_1 : signal is "true";
  attribute mark_debug_string of DIGIT_10 : signal is "true";
begin
  CA <= \^ca\;
AN_inferred_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFB"
    )
        port map (
      I0 => digit(1),
      I1 => digit(2),
      I2 => digit(3),
      I3 => digit(0),
      O => AN(6)
    );
AN_inferred_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFDF"
    )
        port map (
      I0 => digit(0),
      I1 => digit(3),
      I2 => digit(2),
      I3 => digit(1),
      O => AN(5)
    );
AN_inferred_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFB"
    )
        port map (
      I0 => digit(0),
      I1 => digit(1),
      I2 => digit(3),
      I3 => digit(2),
      O => AN(4)
    );
AN_inferred_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F6FB"
    )
        port map (
      I0 => digit(1),
      I1 => digit(2),
      I2 => digit(3),
      I3 => digit(0),
      O => AN(3)
    );
AN_inferred_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0E0F"
    )
        port map (
      I0 => digit(3),
      I1 => digit(1),
      I2 => digit(0),
      I3 => digit(2),
      O => AN(2)
    );
AN_inferred_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F4FD"
    )
        port map (
      I0 => digit(1),
      I1 => digit(2),
      I2 => digit(3),
      I3 => digit(0),
      O => AN(1)
    );
AN_inferred_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F6FE"
    )
        port map (
      I0 => digit(1),
      I1 => digit(2),
      I2 => digit(3),
      I3 => digit(0),
      O => AN(0)
    );
\digit[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DIGIT_1(0),
      I1 => \^ca\,
      I2 => DIGIT_10(0),
      O => \digit[0]_i_1_n_0\
    );
\digit[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DIGIT_1(1),
      I1 => \^ca\,
      I2 => DIGIT_10(1),
      O => \digit[1]_i_1_n_0\
    );
\digit[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DIGIT_1(2),
      I1 => \^ca\,
      I2 => DIGIT_10(2),
      O => \digit[2]_i_1_n_0\
    );
\digit[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DIGIT_1(3),
      I1 => \^ca\,
      I2 => DIGIT_10(3),
      O => \digit[3]_i_1_n_0\
    );
\digit_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TICK,
      CE => '1',
      D => \digit[0]_i_1_n_0\,
      Q => digit(0),
      R => '0'
    );
\digit_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TICK,
      CE => '1',
      D => \digit[1]_i_1_n_0\,
      Q => digit(1),
      R => '0'
    );
\digit_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TICK,
      CE => '1',
      D => \digit[2]_i_1_n_0\,
      Q => digit(2),
      R => '0'
    );
\digit_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TICK,
      CE => '1',
      D => \digit[3]_i_1_n_0\,
      Q => digit(3),
      R => '0'
    );
st_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^ca\,
      O => \p_1_in__0\
    );
st_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TICK,
      CE => '1',
      D => \p_1_in__0\,
      Q => \^ca\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_axi_7seg_disp_mod_0_0 is
  port (
    TICK : in STD_LOGIC;
    DIGIT_1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DIGIT_10 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    CA : out STD_LOGIC;
    AN : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Zynq_axi_7seg_disp_mod_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Zynq_axi_7seg_disp_mod_0_0 : entity is "Zynq_axi_7seg_disp_mod_0_0,disp_mod,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of Zynq_axi_7seg_disp_mod_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of Zynq_axi_7seg_disp_mod_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of Zynq_axi_7seg_disp_mod_0_0 : entity is "disp_mod,Vivado 2023.2";
end Zynq_axi_7seg_disp_mod_0_0;

architecture STRUCTURE of Zynq_axi_7seg_disp_mod_0_0 is
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of inst : label is "soft";
begin
inst: entity work.Zynq_axi_7seg_disp_mod_0_0_disp_mod
     port map (
      AN(6 downto 0) => AN(6 downto 0),
      CA => CA,
      DIGIT_1(3 downto 0) => DIGIT_1(3 downto 0),
      DIGIT_10(3 downto 0) => DIGIT_10(3 downto 0),
      TICK => TICK
    );
end STRUCTURE;
