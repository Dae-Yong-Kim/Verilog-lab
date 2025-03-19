-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Wed Jan  8 18:35:51 2025
-- Host        : COMSYS01 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Verilog-lab/AXI_UART/AXI_UART.gen/sources_1/bd/AXI_UART_BD/ip/AXI_UART_BD_my_uart_tx_0_0/AXI_UART_BD_my_uart_tx_0_0_sim_netlist.vhdl
-- Design      : AXI_UART_BD_my_uart_tx_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z007sclg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity AXI_UART_BD_my_uart_tx_0_0_my_uart_tx_FSM is
  port (
    READY : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 10 downto 0 );
    \FSM_onehot_current_state_reg[2]_0\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_current_state_reg[2]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    RST : in STD_LOGIC;
    CLK : in STD_LOGIC;
    tick : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \p_data_reg[10]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    send_1clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of AXI_UART_BD_my_uart_tx_0_0_my_uart_tx_FSM : entity is "my_uart_tx_FSM";
end AXI_UART_BD_my_uart_tx_0_0_my_uart_tx_FSM;

architecture STRUCTURE of AXI_UART_BD_my_uart_tx_0_0_my_uart_tx_FSM is
  signal \FSM_onehot_current_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[0]\ : STD_LOGIC;
  signal READY_i_1_n_0 : STD_LOGIC;
  signal c_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal tick_cnt_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal tick_done_i_1_n_0 : STD_LOGIC;
  signal tick_done_reg_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_current_state[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_onehot_current_state[2]_i_1\ : label is "soft_lutpair1";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[0]\ : label is "STANDBY:010,START:100,IDLE:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[1]\ : label is "STANDBY:010,START:100,IDLE:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[2]\ : label is "STANDBY:010,START:100,IDLE:001";
  attribute SOFT_HLUTNM of S_DATA_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \p_data[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \p_data[10]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \p_data[10]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \p_data[7]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \p_data[8]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \p_data[9]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \parity_data[10]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \tick_cnt[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \tick_cnt[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \tick_cnt[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \tick_cnt[3]_i_1\ : label is "soft_lutpair0";
begin
\FSM_onehot_current_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D555C000"
    )
        port map (
      I0 => send_1clk,
      I1 => tick,
      I2 => tick_done_reg_n_0,
      I3 => c_state(1),
      I4 => \FSM_onehot_current_state_reg_n_0_[0]\,
      O => \FSM_onehot_current_state[0]_i_1_n_0\
    );
\FSM_onehot_current_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F8"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I1 => send_1clk,
      I2 => c_state(0),
      I3 => tick,
      O => \FSM_onehot_current_state[1]_i_1_n_0\
    );
\FSM_onehot_current_state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FC4C"
    )
        port map (
      I0 => tick_done_reg_n_0,
      I1 => c_state(1),
      I2 => tick,
      I3 => c_state(0),
      O => \FSM_onehot_current_state[2]_i_1_n_0\
    );
\FSM_onehot_current_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \FSM_onehot_current_state[0]_i_1_n_0\,
      Q => \FSM_onehot_current_state_reg_n_0_[0]\,
      S => RST
    );
\FSM_onehot_current_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \FSM_onehot_current_state[1]_i_1_n_0\,
      Q => c_state(0),
      R => RST
    );
\FSM_onehot_current_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \FSM_onehot_current_state[2]_i_1_n_0\,
      Q => c_state(1),
      R => RST
    );
READY_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => c_state(1),
      O => READY_i_1_n_0
    );
READY_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => READY_i_1_n_0,
      Q => READY,
      R => RST
    );
S_DATA_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => c_state(1),
      I1 => c_state(0),
      I2 => Q(0),
      O => \FSM_onehot_current_state_reg[2]_0\
    );
\p_data[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => c_state(0),
      I1 => c_state(1),
      I2 => Q(1),
      O => D(0)
    );
\p_data[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => c_state(0),
      I1 => tick,
      I2 => c_state(1),
      O => E(0)
    );
\p_data[10]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => c_state(1),
      I1 => c_state(0),
      I2 => \p_data_reg[10]\(9),
      O => D(10)
    );
\p_data[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => c_state(0),
      I1 => Q(2),
      I2 => c_state(1),
      I3 => \p_data_reg[10]\(0),
      O => D(1)
    );
\p_data[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => c_state(0),
      I1 => Q(3),
      I2 => c_state(1),
      I3 => \p_data_reg[10]\(1),
      O => D(2)
    );
\p_data[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => c_state(0),
      I1 => Q(4),
      I2 => c_state(1),
      I3 => \p_data_reg[10]\(2),
      O => D(3)
    );
\p_data[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => c_state(0),
      I1 => Q(5),
      I2 => c_state(1),
      I3 => \p_data_reg[10]\(3),
      O => D(4)
    );
\p_data[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => c_state(0),
      I1 => Q(6),
      I2 => c_state(1),
      I3 => \p_data_reg[10]\(4),
      O => D(5)
    );
\p_data[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => c_state(0),
      I1 => Q(7),
      I2 => c_state(1),
      I3 => \p_data_reg[10]\(5),
      O => D(6)
    );
\p_data[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => c_state(0),
      I1 => Q(8),
      I2 => c_state(1),
      I3 => \p_data_reg[10]\(6),
      O => D(7)
    );
\p_data[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => c_state(0),
      I1 => Q(9),
      I2 => c_state(1),
      I3 => \p_data_reg[10]\(7),
      O => D(8)
    );
\p_data[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => c_state(0),
      I1 => Q(10),
      I2 => c_state(1),
      I3 => \p_data_reg[10]\(8),
      O => D(9)
    );
\parity_data[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => c_state(1),
      I1 => c_state(0),
      I2 => send_1clk,
      O => \FSM_onehot_current_state_reg[2]_1\(0)
    );
\tick_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tick_cnt_reg(0),
      O => p_0_in(0)
    );
\tick_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tick_cnt_reg(1),
      I1 => tick_cnt_reg(0),
      O => p_0_in(1)
    );
\tick_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => tick_cnt_reg(2),
      I1 => tick_cnt_reg(1),
      I2 => tick_cnt_reg(0),
      O => p_0_in(2)
    );
\tick_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => tick_cnt_reg(3),
      I1 => tick_cnt_reg(1),
      I2 => tick_cnt_reg(0),
      I3 => tick_cnt_reg(2),
      O => p_0_in(3)
    );
\tick_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => tick,
      CE => '1',
      D => p_0_in(0),
      Q => tick_cnt_reg(0),
      R => READY_i_1_n_0
    );
\tick_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => tick,
      CE => '1',
      D => p_0_in(1),
      Q => tick_cnt_reg(1),
      R => READY_i_1_n_0
    );
\tick_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => tick,
      CE => '1',
      D => p_0_in(2),
      Q => tick_cnt_reg(2),
      R => READY_i_1_n_0
    );
\tick_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => tick,
      CE => '1',
      D => p_0_in(3),
      Q => tick_cnt_reg(3),
      R => READY_i_1_n_0
    );
tick_done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF040000000000"
    )
        port map (
      I0 => tick_cnt_reg(2),
      I1 => tick_cnt_reg(1),
      I2 => tick_cnt_reg(0),
      I3 => tick_cnt_reg(3),
      I4 => tick_done_reg_n_0,
      I5 => c_state(1),
      O => tick_done_i_1_n_0
    );
tick_done_reg: unisim.vcomponents.FDRE
     port map (
      C => tick,
      CE => '1',
      D => tick_done_i_1_n_0,
      Q => tick_done_reg_n_0,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity AXI_UART_BD_my_uart_tx_0_0_my_uart_tx_P2S is
  port (
    TX : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 10 downto 0 );
    S_DATA_reg_0 : in STD_LOGIC;
    CLK : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of AXI_UART_BD_my_uart_tx_0_0_my_uart_tx_P2S : entity is "my_uart_tx_P2S";
end AXI_UART_BD_my_uart_tx_0_0_my_uart_tx_P2S;

architecture STRUCTURE of AXI_UART_BD_my_uart_tx_0_0_my_uart_tx_P2S is
begin
S_DATA_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => S_DATA_reg_0,
      Q => TX,
      R => '0'
    );
\p_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => D(0),
      Q => Q(0),
      R => '0'
    );
\p_data_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => D(10),
      Q => Q(10),
      R => '0'
    );
\p_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => D(1),
      Q => Q(1),
      R => '0'
    );
\p_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => D(2),
      Q => Q(2),
      R => '0'
    );
\p_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => D(3),
      Q => Q(3),
      R => '0'
    );
\p_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => D(4),
      Q => Q(4),
      R => '0'
    );
\p_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => D(5),
      Q => Q(5),
      R => '0'
    );
\p_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => D(6),
      Q => Q(6),
      R => '0'
    );
\p_data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => D(7),
      Q => Q(7),
      R => '0'
    );
\p_data_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => D(8),
      Q => Q(8),
      R => '0'
    );
\p_data_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => D(9),
      Q => Q(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity AXI_UART_BD_my_uart_tx_0_0_my_uart_tx_gen_tick is
  port (
    tick : out STD_LOGIC;
    RST : in STD_LOGIC;
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of AXI_UART_BD_my_uart_tx_0_0_my_uart_tx_gen_tick : entity is "my_uart_tx_gen_tick";
end AXI_UART_BD_my_uart_tx_0_0_my_uart_tx_gen_tick;

architecture STRUCTURE of AXI_UART_BD_my_uart_tx_0_0_my_uart_tx_gen_tick is
  signal \^tick\ : STD_LOGIC;
  signal TICK_i_2_n_0 : STD_LOGIC;
  signal \cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[0]_i_3_n_0\ : STD_LOGIC;
  signal cnt_reg : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \cnt_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \cnt_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \cnt_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \cnt_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \cnt_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \cnt_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \cnt_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_cnt_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_cnt_reg[8]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
begin
TICK_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => cnt_reg(8),
      I1 => cnt_reg(6),
      I2 => TICK_i_2_n_0,
      I3 => cnt_reg(7),
      I4 => cnt_reg(9),
      O => \^tick\
    );
TICK_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010000000"
    )
        port map (
      I0 => cnt_reg(3),
      I1 => cnt_reg(2),
      I2 => cnt_reg(0),
      I3 => cnt_reg(1),
      I4 => cnt_reg(5),
      I5 => cnt_reg(4),
      O => TICK_i_2_n_0
    );
TICK_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \^tick\,
      Q => tick,
      R => RST
    );
\cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF20000000"
    )
        port map (
      I0 => cnt_reg(9),
      I1 => cnt_reg(7),
      I2 => TICK_i_2_n_0,
      I3 => cnt_reg(6),
      I4 => cnt_reg(8),
      I5 => RST,
      O => \cnt[0]_i_1_n_0\
    );
\cnt[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(0),
      O => \cnt[0]_i_3_n_0\
    );
\cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \cnt_reg[0]_i_2_n_7\,
      Q => cnt_reg(0),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cnt_reg[0]_i_2_n_0\,
      CO(2) => \cnt_reg[0]_i_2_n_1\,
      CO(1) => \cnt_reg[0]_i_2_n_2\,
      CO(0) => \cnt_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \cnt_reg[0]_i_2_n_4\,
      O(2) => \cnt_reg[0]_i_2_n_5\,
      O(1) => \cnt_reg[0]_i_2_n_6\,
      O(0) => \cnt_reg[0]_i_2_n_7\,
      S(3 downto 1) => cnt_reg(3 downto 1),
      S(0) => \cnt[0]_i_3_n_0\
    );
\cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \cnt_reg[0]_i_2_n_6\,
      Q => cnt_reg(1),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \cnt_reg[0]_i_2_n_5\,
      Q => cnt_reg(2),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \cnt_reg[0]_i_2_n_4\,
      Q => cnt_reg(3),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \cnt_reg[4]_i_1_n_7\,
      Q => cnt_reg(4),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[0]_i_2_n_0\,
      CO(3) => \cnt_reg[4]_i_1_n_0\,
      CO(2) => \cnt_reg[4]_i_1_n_1\,
      CO(1) => \cnt_reg[4]_i_1_n_2\,
      CO(0) => \cnt_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[4]_i_1_n_4\,
      O(2) => \cnt_reg[4]_i_1_n_5\,
      O(1) => \cnt_reg[4]_i_1_n_6\,
      O(0) => \cnt_reg[4]_i_1_n_7\,
      S(3 downto 0) => cnt_reg(7 downto 4)
    );
\cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \cnt_reg[4]_i_1_n_6\,
      Q => cnt_reg(5),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \cnt_reg[4]_i_1_n_5\,
      Q => cnt_reg(6),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \cnt_reg[4]_i_1_n_4\,
      Q => cnt_reg(7),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \cnt_reg[8]_i_1_n_7\,
      Q => cnt_reg(8),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[4]_i_1_n_0\,
      CO(3 downto 1) => \NLW_cnt_reg[8]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \cnt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_cnt_reg[8]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1) => \cnt_reg[8]_i_1_n_6\,
      O(0) => \cnt_reg[8]_i_1_n_7\,
      S(3 downto 2) => B"00",
      S(1 downto 0) => cnt_reg(9 downto 8)
    );
\cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \cnt_reg[8]_i_1_n_6\,
      Q => cnt_reg(9),
      R => \cnt[0]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity AXI_UART_BD_my_uart_tx_0_0_my_uart_tx is
  port (
    READY : out STD_LOGIC;
    TX : out STD_LOGIC;
    RST : in STD_LOGIC;
    CLK : in STD_LOGIC;
    DATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SEND : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of AXI_UART_BD_my_uart_tx_0_0_my_uart_tx : entity is "my_uart_tx";
end AXI_UART_BD_my_uart_tx_0_0_my_uart_tx;

architecture STRUCTURE of AXI_UART_BD_my_uart_tx_0_0_my_uart_tx is
  signal my_FSM_uut_n_12 : STD_LOGIC;
  signal my_FSM_uut_n_13 : STD_LOGIC;
  signal my_P2S_uut_n_1 : STD_LOGIC;
  signal my_P2S_uut_n_10 : STD_LOGIC;
  signal my_P2S_uut_n_11 : STD_LOGIC;
  signal my_P2S_uut_n_2 : STD_LOGIC;
  signal my_P2S_uut_n_3 : STD_LOGIC;
  signal my_P2S_uut_n_4 : STD_LOGIC;
  signal my_P2S_uut_n_5 : STD_LOGIC;
  signal my_P2S_uut_n_6 : STD_LOGIC;
  signal my_P2S_uut_n_7 : STD_LOGIC;
  signal my_P2S_uut_n_8 : STD_LOGIC;
  signal my_P2S_uut_n_9 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal parity : STD_LOGIC;
  signal parity_data : STD_LOGIC_VECTOR ( 10 downto 1 );
  signal parity_data0 : STD_LOGIC;
  signal \parity_data[9]_i_2_n_0\ : STD_LOGIC;
  signal send_1D : STD_LOGIC;
  signal send_1clk : STD_LOGIC;
  signal send_1clk0 : STD_LOGIC;
  signal send_2D : STD_LOGIC;
  signal tick : STD_LOGIC;
begin
my_FSM_uut: entity work.AXI_UART_BD_my_uart_tx_0_0_my_uart_tx_FSM
     port map (
      CLK => CLK,
      D(10 downto 0) => p_1_in(10 downto 0),
      E(0) => my_FSM_uut_n_13,
      \FSM_onehot_current_state_reg[2]_0\ => my_FSM_uut_n_12,
      \FSM_onehot_current_state_reg[2]_1\(0) => parity_data0,
      Q(10) => my_P2S_uut_n_1,
      Q(9) => my_P2S_uut_n_2,
      Q(8) => my_P2S_uut_n_3,
      Q(7) => my_P2S_uut_n_4,
      Q(6) => my_P2S_uut_n_5,
      Q(5) => my_P2S_uut_n_6,
      Q(4) => my_P2S_uut_n_7,
      Q(3) => my_P2S_uut_n_8,
      Q(2) => my_P2S_uut_n_9,
      Q(1) => my_P2S_uut_n_10,
      Q(0) => my_P2S_uut_n_11,
      READY => READY,
      RST => RST,
      \p_data_reg[10]\(9 downto 0) => parity_data(10 downto 1),
      send_1clk => send_1clk,
      tick => tick
    );
my_P2S_uut: entity work.AXI_UART_BD_my_uart_tx_0_0_my_uart_tx_P2S
     port map (
      CLK => CLK,
      D(10 downto 0) => p_1_in(10 downto 0),
      E(0) => my_FSM_uut_n_13,
      Q(10) => my_P2S_uut_n_1,
      Q(9) => my_P2S_uut_n_2,
      Q(8) => my_P2S_uut_n_3,
      Q(7) => my_P2S_uut_n_4,
      Q(6) => my_P2S_uut_n_5,
      Q(5) => my_P2S_uut_n_6,
      Q(4) => my_P2S_uut_n_7,
      Q(3) => my_P2S_uut_n_8,
      Q(2) => my_P2S_uut_n_9,
      Q(1) => my_P2S_uut_n_10,
      Q(0) => my_P2S_uut_n_11,
      S_DATA_reg_0 => my_FSM_uut_n_12,
      TX => TX
    );
my_tick_uut: entity work.AXI_UART_BD_my_uart_tx_0_0_my_uart_tx_gen_tick
     port map (
      CLK => CLK,
      RST => RST,
      tick => tick
    );
\parity_data[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => DATA(5),
      I1 => DATA(4),
      I2 => DATA(7),
      I3 => DATA(6),
      I4 => \parity_data[9]_i_2_n_0\,
      O => parity
    );
\parity_data[9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => DATA(2),
      I1 => DATA(3),
      I2 => DATA(0),
      I3 => DATA(1),
      O => \parity_data[9]_i_2_n_0\
    );
\parity_data_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => parity_data0,
      D => '1',
      Q => parity_data(10),
      R => '0'
    );
\parity_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => parity_data0,
      D => DATA(0),
      Q => parity_data(1),
      R => '0'
    );
\parity_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => parity_data0,
      D => DATA(1),
      Q => parity_data(2),
      R => '0'
    );
\parity_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => parity_data0,
      D => DATA(2),
      Q => parity_data(3),
      R => '0'
    );
\parity_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => parity_data0,
      D => DATA(3),
      Q => parity_data(4),
      R => '0'
    );
\parity_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => parity_data0,
      D => DATA(4),
      Q => parity_data(5),
      R => '0'
    );
\parity_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => parity_data0,
      D => DATA(5),
      Q => parity_data(6),
      R => '0'
    );
\parity_data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => parity_data0,
      D => DATA(6),
      Q => parity_data(7),
      R => '0'
    );
\parity_data_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => parity_data0,
      D => DATA(7),
      Q => parity_data(8),
      R => '0'
    );
\parity_data_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => parity_data0,
      D => parity,
      Q => parity_data(9),
      R => '0'
    );
send_1D_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => SEND,
      Q => send_1D,
      R => '0'
    );
send_1clk_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => send_1D,
      I1 => send_2D,
      O => send_1clk0
    );
send_1clk_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => send_1clk0,
      Q => send_1clk,
      R => '0'
    );
send_2D_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => send_1D,
      Q => send_2D,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity AXI_UART_BD_my_uart_tx_0_0 is
  port (
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC;
    SEND : in STD_LOGIC;
    DATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TX : out STD_LOGIC;
    READY : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of AXI_UART_BD_my_uart_tx_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of AXI_UART_BD_my_uart_tx_0_0 : entity is "AXI_UART_BD_my_uart_tx_0_0,my_uart_tx,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of AXI_UART_BD_my_uart_tx_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of AXI_UART_BD_my_uart_tx_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of AXI_UART_BD_my_uart_tx_0_0 : entity is "my_uart_tx,Vivado 2024.1";
end AXI_UART_BD_my_uart_tx_0_0;

architecture STRUCTURE of AXI_UART_BD_my_uart_tx_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of CLK : signal is "xilinx.com:signal:clock:1.0 CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of CLK : signal is "XIL_INTERFACENAME CLK, ASSOCIATED_RESET RST, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN AXI_UART_BD_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of RST : signal is "xilinx.com:signal:reset:1.0 RST RST";
  attribute X_INTERFACE_PARAMETER of RST : signal is "XIL_INTERFACENAME RST, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
begin
inst: entity work.AXI_UART_BD_my_uart_tx_0_0_my_uart_tx
     port map (
      CLK => CLK,
      DATA(7 downto 0) => DATA(7 downto 0),
      READY => READY,
      RST => RST,
      SEND => SEND,
      TX => TX
    );
end STRUCTURE;
