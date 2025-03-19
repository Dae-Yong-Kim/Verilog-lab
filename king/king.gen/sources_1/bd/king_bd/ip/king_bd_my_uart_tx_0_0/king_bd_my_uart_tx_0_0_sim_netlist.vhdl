-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Wed Jan  8 13:07:20 2025
-- Host        : COMSYS01 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Verilog-lab/king/king.gen/sources_1/bd/king_bd/ip/king_bd_my_uart_tx_0_0/king_bd_my_uart_tx_0_0_sim_netlist.vhdl
-- Design      : king_bd_my_uart_tx_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z007sclg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity king_bd_my_uart_tx_0_0_bit_clk_gen is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_curr_state_reg[0]\ : out STD_LOGIC;
    \FSM_sequential_curr_state_reg[1]\ : out STD_LOGIC;
    CLK : in STD_LOGIC;
    curr_state : in STD_LOGIC_VECTOR ( 1 downto 0 );
    RST : in STD_LOGIC;
    \FSM_sequential_curr_state_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \bit_cnt_done__2\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of king_bd_my_uart_tx_0_0_bit_clk_gen : entity is "bit_clk_gen";
end king_bd_my_uart_tx_0_0_bit_clk_gen;

architecture STRUCTURE of king_bd_my_uart_tx_0_0_bit_clk_gen is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal clk_cnt : STD_LOGIC_VECTOR ( 20 downto 0 );
  signal \clk_cnt0_carry__0_n_0\ : STD_LOGIC;
  signal \clk_cnt0_carry__0_n_1\ : STD_LOGIC;
  signal \clk_cnt0_carry__0_n_2\ : STD_LOGIC;
  signal \clk_cnt0_carry__0_n_3\ : STD_LOGIC;
  signal \clk_cnt0_carry__1_n_0\ : STD_LOGIC;
  signal \clk_cnt0_carry__1_n_1\ : STD_LOGIC;
  signal \clk_cnt0_carry__1_n_2\ : STD_LOGIC;
  signal \clk_cnt0_carry__1_n_3\ : STD_LOGIC;
  signal \clk_cnt0_carry__2_n_0\ : STD_LOGIC;
  signal \clk_cnt0_carry__2_n_1\ : STD_LOGIC;
  signal \clk_cnt0_carry__2_n_2\ : STD_LOGIC;
  signal \clk_cnt0_carry__2_n_3\ : STD_LOGIC;
  signal \clk_cnt0_carry__3_n_1\ : STD_LOGIC;
  signal \clk_cnt0_carry__3_n_2\ : STD_LOGIC;
  signal \clk_cnt0_carry__3_n_3\ : STD_LOGIC;
  signal clk_cnt0_carry_n_0 : STD_LOGIC;
  signal clk_cnt0_carry_n_1 : STD_LOGIC;
  signal clk_cnt0_carry_n_2 : STD_LOGIC;
  signal clk_cnt0_carry_n_3 : STD_LOGIC;
  signal \clk_cnt[20]_i_1_n_0\ : STD_LOGIC;
  signal \clk_cnt[20]_i_2_n_0\ : STD_LOGIC;
  signal \clk_cnt[20]_i_3_n_0\ : STD_LOGIC;
  signal \clk_cnt[20]_i_4_n_0\ : STD_LOGIC;
  signal \clk_cnt[20]_i_5_n_0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 20 downto 0 );
  signal \NLW_clk_cnt0_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of clk_cnt0_carry : label is 35;
  attribute ADDER_THRESHOLD of \clk_cnt0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \clk_cnt0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \clk_cnt0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \clk_cnt0_carry__3\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \clk_cnt[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \clk_cnt[20]_i_4\ : label is "soft_lutpair0";
begin
  E(0) <= \^e\(0);
BIT_CLK_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \clk_cnt[20]_i_1_n_0\,
      Q => \^e\(0),
      R => '0'
    );
\FSM_sequential_curr_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000E2FFE2"
    )
        port map (
      I0 => \FSM_sequential_curr_state_reg[0]_0\(0),
      I1 => curr_state(1),
      I2 => \bit_cnt_done__2\,
      I3 => curr_state(0),
      I4 => \^e\(0),
      I5 => RST,
      O => \FSM_sequential_curr_state_reg[1]\
    );
\FSM_sequential_curr_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0078"
    )
        port map (
      I0 => curr_state(0),
      I1 => \^e\(0),
      I2 => curr_state(1),
      I3 => RST,
      O => \FSM_sequential_curr_state_reg[0]\
    );
clk_cnt0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => clk_cnt0_carry_n_0,
      CO(2) => clk_cnt0_carry_n_1,
      CO(1) => clk_cnt0_carry_n_2,
      CO(0) => clk_cnt0_carry_n_3,
      CYINIT => clk_cnt(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_1_in(4 downto 1),
      S(3 downto 0) => clk_cnt(4 downto 1)
    );
\clk_cnt0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => clk_cnt0_carry_n_0,
      CO(3) => \clk_cnt0_carry__0_n_0\,
      CO(2) => \clk_cnt0_carry__0_n_1\,
      CO(1) => \clk_cnt0_carry__0_n_2\,
      CO(0) => \clk_cnt0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_1_in(8 downto 5),
      S(3 downto 0) => clk_cnt(8 downto 5)
    );
\clk_cnt0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_cnt0_carry__0_n_0\,
      CO(3) => \clk_cnt0_carry__1_n_0\,
      CO(2) => \clk_cnt0_carry__1_n_1\,
      CO(1) => \clk_cnt0_carry__1_n_2\,
      CO(0) => \clk_cnt0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_1_in(12 downto 9),
      S(3 downto 0) => clk_cnt(12 downto 9)
    );
\clk_cnt0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_cnt0_carry__1_n_0\,
      CO(3) => \clk_cnt0_carry__2_n_0\,
      CO(2) => \clk_cnt0_carry__2_n_1\,
      CO(1) => \clk_cnt0_carry__2_n_2\,
      CO(0) => \clk_cnt0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_1_in(16 downto 13),
      S(3 downto 0) => clk_cnt(16 downto 13)
    );
\clk_cnt0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_cnt0_carry__2_n_0\,
      CO(3) => \NLW_clk_cnt0_carry__3_CO_UNCONNECTED\(3),
      CO(2) => \clk_cnt0_carry__3_n_1\,
      CO(1) => \clk_cnt0_carry__3_n_2\,
      CO(0) => \clk_cnt0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_1_in(20 downto 17),
      S(3 downto 0) => clk_cnt(20 downto 17)
    );
\clk_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clk_cnt(0),
      O => p_1_in(0)
    );
\clk_cnt[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => \clk_cnt[20]_i_2_n_0\,
      I1 => clk_cnt(2),
      I2 => clk_cnt(8),
      I3 => clk_cnt(3),
      I4 => \clk_cnt[20]_i_3_n_0\,
      I5 => \clk_cnt[20]_i_4_n_0\,
      O => \clk_cnt[20]_i_1_n_0\
    );
\clk_cnt[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000800"
    )
        port map (
      I0 => clk_cnt(1),
      I1 => clk_cnt(6),
      I2 => clk_cnt(7),
      I3 => clk_cnt(5),
      I4 => clk_cnt(4),
      I5 => clk_cnt(13),
      O => \clk_cnt[20]_i_2_n_0\
    );
\clk_cnt[20]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => clk_cnt(9),
      I1 => clk_cnt(20),
      I2 => clk_cnt(18),
      I3 => clk_cnt(15),
      O => \clk_cnt[20]_i_3_n_0\
    );
\clk_cnt[20]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => clk_cnt(11),
      I1 => clk_cnt(19),
      I2 => clk_cnt(16),
      I3 => clk_cnt(0),
      I4 => \clk_cnt[20]_i_5_n_0\,
      O => \clk_cnt[20]_i_4_n_0\
    );
\clk_cnt[20]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => clk_cnt(17),
      I1 => clk_cnt(12),
      I2 => clk_cnt(14),
      I3 => clk_cnt(10),
      O => \clk_cnt[20]_i_5_n_0\
    );
\clk_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_1_in(0),
      Q => clk_cnt(0),
      R => \clk_cnt[20]_i_1_n_0\
    );
\clk_cnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_1_in(10),
      Q => clk_cnt(10),
      R => \clk_cnt[20]_i_1_n_0\
    );
\clk_cnt_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_1_in(11),
      Q => clk_cnt(11),
      R => \clk_cnt[20]_i_1_n_0\
    );
\clk_cnt_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_1_in(12),
      Q => clk_cnt(12),
      R => \clk_cnt[20]_i_1_n_0\
    );
\clk_cnt_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_1_in(13),
      Q => clk_cnt(13),
      R => \clk_cnt[20]_i_1_n_0\
    );
\clk_cnt_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_1_in(14),
      Q => clk_cnt(14),
      R => \clk_cnt[20]_i_1_n_0\
    );
\clk_cnt_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_1_in(15),
      Q => clk_cnt(15),
      R => \clk_cnt[20]_i_1_n_0\
    );
\clk_cnt_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_1_in(16),
      Q => clk_cnt(16),
      R => \clk_cnt[20]_i_1_n_0\
    );
\clk_cnt_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_1_in(17),
      Q => clk_cnt(17),
      R => \clk_cnt[20]_i_1_n_0\
    );
\clk_cnt_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_1_in(18),
      Q => clk_cnt(18),
      R => \clk_cnt[20]_i_1_n_0\
    );
\clk_cnt_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_1_in(19),
      Q => clk_cnt(19),
      R => \clk_cnt[20]_i_1_n_0\
    );
\clk_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_1_in(1),
      Q => clk_cnt(1),
      R => \clk_cnt[20]_i_1_n_0\
    );
\clk_cnt_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_1_in(20),
      Q => clk_cnt(20),
      R => \clk_cnt[20]_i_1_n_0\
    );
\clk_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_1_in(2),
      Q => clk_cnt(2),
      R => \clk_cnt[20]_i_1_n_0\
    );
\clk_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_1_in(3),
      Q => clk_cnt(3),
      R => \clk_cnt[20]_i_1_n_0\
    );
\clk_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_1_in(4),
      Q => clk_cnt(4),
      R => \clk_cnt[20]_i_1_n_0\
    );
\clk_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_1_in(5),
      Q => clk_cnt(5),
      R => \clk_cnt[20]_i_1_n_0\
    );
\clk_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_1_in(6),
      Q => clk_cnt(6),
      R => \clk_cnt[20]_i_1_n_0\
    );
\clk_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_1_in(7),
      Q => clk_cnt(7),
      R => \clk_cnt[20]_i_1_n_0\
    );
\clk_cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_1_in(8),
      Q => clk_cnt(8),
      R => \clk_cnt[20]_i_1_n_0\
    );
\clk_cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_1_in(9),
      Q => clk_cnt(9),
      R => \clk_cnt[20]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity king_bd_my_uart_tx_0_0_my_uart_tx is
  port (
    BUSY : out STD_LOGIC;
    TXD : out STD_LOGIC;
    RST : in STD_LOGIC;
    CLK : in STD_LOGIC;
    START : in STD_LOGIC;
    TX_DATA : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of king_bd_my_uart_tx_0_0_my_uart_tx : entity is "my_uart_tx";
end king_bd_my_uart_tx_0_0_my_uart_tx;

architecture STRUCTURE of king_bd_my_uart_tx_0_0_my_uart_tx is
  signal TXD_INST_0_i_1_n_0 : STD_LOGIC;
  signal TXD_INST_0_i_2_n_0 : STD_LOGIC;
  signal TXD_INST_0_i_3_n_0 : STD_LOGIC;
  signal TXD_INST_0_i_4_n_0 : STD_LOGIC;
  signal TXD_INST_0_i_5_n_0 : STD_LOGIC;
  signal bit_clk : STD_LOGIC;
  signal bit_clk_gen_0_n_1 : STD_LOGIC;
  signal bit_clk_gen_0_n_2 : STD_LOGIC;
  signal bit_cnt : STD_LOGIC;
  signal \bit_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt_done__2\ : STD_LOGIC;
  signal bit_cnt_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal btn_2d : STD_LOGIC;
  signal btn_d : STD_LOGIC;
  signal curr_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal send : STD_LOGIC;
  signal \^tx_data\ : STD_LOGIC_VECTOR ( 9 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_curr_state[0]_i_2\ : label is "soft_lutpair1";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_curr_state_reg[0]\ : label is "sstart:01,sdata_send:10,sstop:11,sidle:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_curr_state_reg[1]\ : label is "sstart:01,sdata_send:10,sstop:11,sidle:00";
  attribute SOFT_HLUTNM of \bit_cnt[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \bit_cnt[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \bit_cnt[3]_i_2\ : label is "soft_lutpair1";
begin
BUSY_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => curr_state(1),
      I1 => curr_state(0),
      I2 => RST,
      O => BUSY
    );
\FSM_sequential_curr_state[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => bit_cnt_reg(2),
      I1 => bit_cnt_reg(0),
      I2 => bit_cnt_reg(3),
      I3 => bit_cnt_reg(1),
      O => \bit_cnt_done__2\
    );
\FSM_sequential_curr_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => bit_clk_gen_0_n_2,
      Q => curr_state(0),
      R => '0'
    );
\FSM_sequential_curr_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => bit_clk_gen_0_n_1,
      Q => curr_state(1),
      R => '0'
    );
TXD_INST_0: unisim.vcomponents.MUXF7
     port map (
      I0 => TXD_INST_0_i_1_n_0,
      I1 => TXD_INST_0_i_2_n_0,
      O => TXD,
      S => bit_cnt_reg(3)
    );
TXD_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B88888BB88BBBB"
    )
        port map (
      I0 => TXD_INST_0_i_3_n_0,
      I1 => bit_cnt_reg(2),
      I2 => \^tx_data\(3),
      I3 => \^tx_data\(2),
      I4 => bit_cnt_reg(1),
      I5 => bit_cnt_reg(0),
      O => TXD_INST_0_i_1_n_0
    );
TXD_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF06F6FFFF06060"
    )
        port map (
      I0 => TXD_INST_0_i_4_n_0,
      I1 => TXD_INST_0_i_5_n_0,
      I2 => bit_cnt_reg(1),
      I3 => \^tx_data\(9),
      I4 => bit_cnt_reg(0),
      I5 => \^tx_data\(8),
      O => TXD_INST_0_i_2_n_0
    );
TXD_INST_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^tx_data\(7),
      I1 => \^tx_data\(6),
      I2 => bit_cnt_reg(1),
      I3 => \^tx_data\(5),
      I4 => bit_cnt_reg(0),
      I5 => \^tx_data\(4),
      O => TXD_INST_0_i_3_n_0
    );
TXD_INST_0_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^tx_data\(4),
      I1 => \^tx_data\(5),
      I2 => \^tx_data\(2),
      I3 => \^tx_data\(3),
      O => TXD_INST_0_i_4_n_0
    );
TXD_INST_0_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^tx_data\(8),
      I1 => \^tx_data\(9),
      I2 => \^tx_data\(6),
      I3 => \^tx_data\(7),
      O => TXD_INST_0_i_5_n_0
    );
bit_clk_gen_0: entity work.king_bd_my_uart_tx_0_0_bit_clk_gen
     port map (
      CLK => CLK,
      E(0) => bit_clk,
      \FSM_sequential_curr_state_reg[0]\ => bit_clk_gen_0_n_1,
      \FSM_sequential_curr_state_reg[0]_0\(0) => send,
      \FSM_sequential_curr_state_reg[1]\ => bit_clk_gen_0_n_2,
      RST => RST,
      \bit_cnt_done__2\ => \bit_cnt_done__2\,
      curr_state(1 downto 0) => curr_state(1 downto 0)
    );
\bit_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bit_cnt_reg(0),
      O => \bit_cnt[0]_i_1_n_0\
    );
\bit_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => bit_cnt_reg(0),
      I1 => bit_cnt_reg(1),
      O => p_0_in(1)
    );
\bit_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => bit_cnt_reg(0),
      I1 => bit_cnt_reg(1),
      I2 => bit_cnt_reg(2),
      O => p_0_in(2)
    );
\bit_cnt[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => curr_state(1),
      I1 => curr_state(0),
      O => bit_cnt
    );
\bit_cnt[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => bit_cnt_reg(1),
      I1 => bit_cnt_reg(0),
      I2 => bit_cnt_reg(2),
      I3 => bit_cnt_reg(3),
      O => p_0_in(3)
    );
\bit_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => bit_clk,
      D => \bit_cnt[0]_i_1_n_0\,
      Q => bit_cnt_reg(0),
      R => bit_cnt
    );
\bit_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => bit_clk,
      D => p_0_in(1),
      Q => bit_cnt_reg(1),
      R => bit_cnt
    );
\bit_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => bit_clk,
      D => p_0_in(2),
      Q => bit_cnt_reg(2),
      R => bit_cnt
    );
\bit_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => bit_clk,
      D => p_0_in(3),
      Q => bit_cnt_reg(3),
      R => bit_cnt
    );
btn_2d_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => btn_d,
      Q => btn_2d,
      R => '0'
    );
btn_d_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => START,
      Q => btn_d,
      R => '0'
    );
\reg_tx_data[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => btn_d,
      I1 => btn_2d,
      O => send
    );
\reg_tx_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => send,
      D => TX_DATA(0),
      Q => \^tx_data\(2),
      R => '0'
    );
\reg_tx_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => send,
      D => TX_DATA(1),
      Q => \^tx_data\(3),
      R => '0'
    );
\reg_tx_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => send,
      D => TX_DATA(2),
      Q => \^tx_data\(4),
      R => '0'
    );
\reg_tx_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => send,
      D => TX_DATA(3),
      Q => \^tx_data\(5),
      R => '0'
    );
\reg_tx_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => send,
      D => TX_DATA(4),
      Q => \^tx_data\(6),
      R => '0'
    );
\reg_tx_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => send,
      D => TX_DATA(5),
      Q => \^tx_data\(7),
      R => '0'
    );
\reg_tx_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => send,
      D => TX_DATA(6),
      Q => \^tx_data\(8),
      R => '0'
    );
\reg_tx_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => send,
      D => TX_DATA(7),
      Q => \^tx_data\(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity king_bd_my_uart_tx_0_0 is
  port (
    RST : in STD_LOGIC;
    CLK : in STD_LOGIC;
    START : in STD_LOGIC;
    TX_DATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TXD : out STD_LOGIC;
    BUSY : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of king_bd_my_uart_tx_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of king_bd_my_uart_tx_0_0 : entity is "king_bd_my_uart_tx_0_0,my_uart_tx,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of king_bd_my_uart_tx_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of king_bd_my_uart_tx_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of king_bd_my_uart_tx_0_0 : entity is "my_uart_tx,Vivado 2024.1";
end king_bd_my_uart_tx_0_0;

architecture STRUCTURE of king_bd_my_uart_tx_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of CLK : signal is "xilinx.com:signal:clock:1.0 CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of CLK : signal is "XIL_INTERFACENAME CLK, ASSOCIATED_RESET RST, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN king_bd_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of RST : signal is "xilinx.com:signal:reset:1.0 RST RST";
  attribute X_INTERFACE_PARAMETER of RST : signal is "XIL_INTERFACENAME RST, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
begin
inst: entity work.king_bd_my_uart_tx_0_0_my_uart_tx
     port map (
      BUSY => BUSY,
      CLK => CLK,
      RST => RST,
      START => START,
      TXD => TXD,
      TX_DATA(7 downto 0) => TX_DATA(7 downto 0)
    );
end STRUCTURE;
