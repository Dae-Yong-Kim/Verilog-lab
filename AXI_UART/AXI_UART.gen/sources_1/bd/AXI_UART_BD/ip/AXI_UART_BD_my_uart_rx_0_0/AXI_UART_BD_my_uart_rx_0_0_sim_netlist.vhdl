-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Thu Jan  9 09:41:34 2025
-- Host        : COMSYS01 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Verilog-lab/AXI_UART/AXI_UART.gen/sources_1/bd/AXI_UART_BD/ip/AXI_UART_BD_my_uart_rx_0_0/AXI_UART_BD_my_uart_rx_0_0_sim_netlist.vhdl
-- Design      : AXI_UART_BD_my_uart_rx_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z007sclg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity AXI_UART_BD_my_uart_rx_0_0_my_uart_rx_FSM is
  port (
    c_state : out STD_LOGIC;
    CLK : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    RXD : in STD_LOGIC;
    RST : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of AXI_UART_BD_my_uart_rx_0_0_my_uart_rx_FSM : entity is "my_uart_rx_FSM";
end AXI_UART_BD_my_uart_rx_0_0_my_uart_rx_FSM;

architecture STRUCTURE of AXI_UART_BD_my_uart_rx_0_0_my_uart_rx_FSM is
  signal \^c_state\ : STD_LOGIC;
  signal current_state_i_1_n_0 : STD_LOGIC;
  signal tick_cnt : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \tick_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \tick_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \tick_cnt[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \tick_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \tick_cnt[3]_i_2_n_0\ : STD_LOGIC;
  signal tick_done_i_1_n_0 : STD_LOGIC;
  signal tick_done_reg_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \tick_cnt[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \tick_cnt[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \tick_cnt[2]_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \tick_cnt[3]_i_2\ : label is "soft_lutpair4";
begin
  c_state <= \^c_state\;
current_state_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"005D"
    )
        port map (
      I0 => RXD,
      I1 => \^c_state\,
      I2 => tick_done_reg_n_0,
      I3 => RST,
      O => current_state_i_1_n_0
    );
current_state_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => current_state_i_1_n_0,
      Q => \^c_state\,
      R => '0'
    );
\tick_cnt[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00DFDF00"
    )
        port map (
      I0 => tick_cnt(1),
      I1 => tick_cnt(2),
      I2 => tick_cnt(3),
      I3 => E(0),
      I4 => tick_cnt(0),
      O => \tick_cnt[0]_i_1_n_0\
    );
\tick_cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FB0B0F0"
    )
        port map (
      I0 => tick_cnt(2),
      I1 => tick_cnt(3),
      I2 => tick_cnt(1),
      I3 => tick_cnt(0),
      I4 => E(0),
      O => \tick_cnt[1]_i_1_n_0\
    );
\tick_cnt[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => tick_cnt(1),
      I1 => tick_cnt(0),
      I2 => E(0),
      I3 => tick_cnt(2),
      O => \tick_cnt[2]_i_1__0_n_0\
    );
\tick_cnt[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^c_state\,
      O => \tick_cnt[3]_i_1_n_0\
    );
\tick_cnt[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"79FF8000"
    )
        port map (
      I0 => E(0),
      I1 => tick_cnt(0),
      I2 => tick_cnt(2),
      I3 => tick_cnt(1),
      I4 => tick_cnt(3),
      O => \tick_cnt[3]_i_2_n_0\
    );
\tick_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \tick_cnt[0]_i_1_n_0\,
      Q => tick_cnt(0),
      R => \tick_cnt[3]_i_1_n_0\
    );
\tick_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \tick_cnt[1]_i_1_n_0\,
      Q => tick_cnt(1),
      R => \tick_cnt[3]_i_1_n_0\
    );
\tick_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \tick_cnt[2]_i_1__0_n_0\,
      Q => tick_cnt(2),
      R => \tick_cnt[3]_i_1_n_0\
    );
\tick_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \tick_cnt[3]_i_2_n_0\,
      Q => tick_cnt(3),
      R => \tick_cnt[3]_i_1_n_0\
    );
tick_done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000280000000000"
    )
        port map (
      I0 => \^c_state\,
      I1 => tick_cnt(0),
      I2 => E(0),
      I3 => tick_cnt(1),
      I4 => tick_cnt(2),
      I5 => tick_cnt(3),
      O => tick_done_i_1_n_0
    );
tick_done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
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
entity AXI_UART_BD_my_uart_rx_0_0_my_uart_rx_S2P is
  port (
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC;
    TICK : in STD_LOGIC;
    C_STATE : in STD_LOGIC;
    S_DATA : in STD_LOGIC;
    P_DATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    READY : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of AXI_UART_BD_my_uart_rx_0_0_my_uart_rx_S2P : entity is "my_uart_rx_S2P";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of AXI_UART_BD_my_uart_rx_0_0_my_uart_rx_S2P : entity is "soft";
end AXI_UART_BD_my_uart_rx_0_0_my_uart_rx_S2P;

architecture STRUCTURE of AXI_UART_BD_my_uart_rx_0_0_my_uart_rx_S2P is
  signal \P_DATA[7]_i_1_n_0\ : STD_LOGIC;
  signal \^ready\ : STD_LOGIC;
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of READY : signal is std.standard.true;
  signal READY_i_1_n_0 : STD_LOGIC;
  signal cnt0 : STD_LOGIC;
  signal \cnt[8]_i_3_n_0\ : STD_LOGIC;
  signal \cnt[8]_i_4_n_0\ : STD_LOGIC;
  signal cnt_reg : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal enable_i_1_n_0 : STD_LOGIC;
  signal enable_i_2_n_0 : STD_LOGIC;
  signal enable_i_3_n_0 : STD_LOGIC;
  signal enable_i_4_n_0 : STD_LOGIC;
  signal enable_reg_n_0 : STD_LOGIC;
  signal index : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute MARK_DEBUG of index : signal is std.standard.true;
  signal \index[0]_i_1_n_0\ : STD_LOGIC;
  signal \index[1]_i_1_n_0\ : STD_LOGIC;
  signal \index[2]_i_1_n_0\ : STD_LOGIC;
  signal \index[3]_i_1_n_0\ : STD_LOGIC;
  signal \index[3]_i_2_n_0\ : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_1D : STD_LOGIC;
  signal p_2D : STD_LOGIC;
  signal \^p_data\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  attribute MARK_DEBUG of \^p_data\ : signal is std.standard.true;
  signal \p_data[10]_i_2_n_0\ : STD_LOGIC;
  signal \p_data[2]_i_2_n_0\ : STD_LOGIC;
  signal \p_data[8]_i_2_n_0\ : STD_LOGIC;
  signal \p_data[9]_i_2_n_0\ : STD_LOGIC;
  signal p_enable : STD_LOGIC;
  signal p_enable0 : STD_LOGIC;
  attribute KEEP : string;
  attribute KEEP of \P_DATA_reg[0]\ : label is "yes";
  attribute KEEP of \P_DATA_reg[1]\ : label is "yes";
  attribute KEEP of \P_DATA_reg[2]\ : label is "yes";
  attribute KEEP of \P_DATA_reg[3]\ : label is "yes";
  attribute KEEP of \P_DATA_reg[4]\ : label is "yes";
  attribute KEEP of \P_DATA_reg[5]\ : label is "yes";
  attribute KEEP of \P_DATA_reg[6]\ : label is "yes";
  attribute KEEP of \P_DATA_reg[7]\ : label is "yes";
  attribute KEEP of READY_reg : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cnt[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cnt[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cnt[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cnt[7]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cnt[8]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of enable_i_3 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of enable_i_4 : label is "soft_lutpair1";
  attribute KEEP of \index_reg[0]\ : label is "yes";
  attribute KEEP of \index_reg[1]\ : label is "yes";
  attribute KEEP of \index_reg[2]\ : label is "yes";
  attribute KEEP of \index_reg[3]\ : label is "yes";
  attribute KEEP of \p_data_reg[0]_RnM\ : label is "yes";
  attribute mark_debug_string : string;
  attribute mark_debug_string of \p_data_reg[0]_RnM\ : label is "true";
  attribute KEEP of \p_data_reg[10]\ : label is "yes";
  attribute mark_debug_string of \p_data_reg[10]\ : label is "true";
  attribute KEEP of \p_data_reg[1]_RnM\ : label is "yes";
  attribute mark_debug_string of \p_data_reg[1]_RnM\ : label is "true";
  attribute KEEP of \p_data_reg[2]_RnM\ : label is "yes";
  attribute mark_debug_string of \p_data_reg[2]_RnM\ : label is "true";
  attribute KEEP of \p_data_reg[3]_RnM\ : label is "yes";
  attribute mark_debug_string of \p_data_reg[3]_RnM\ : label is "true";
  attribute KEEP of \p_data_reg[4]_RnM\ : label is "yes";
  attribute mark_debug_string of \p_data_reg[4]_RnM\ : label is "true";
  attribute KEEP of \p_data_reg[5]_RnM\ : label is "yes";
  attribute mark_debug_string of \p_data_reg[5]_RnM\ : label is "true";
  attribute KEEP of \p_data_reg[6]_RnM\ : label is "yes";
  attribute mark_debug_string of \p_data_reg[6]_RnM\ : label is "true";
  attribute KEEP of \p_data_reg[7]_RnM\ : label is "yes";
  attribute mark_debug_string of \p_data_reg[7]_RnM\ : label is "true";
  attribute KEEP of \p_data_reg[8]\ : label is "yes";
  attribute mark_debug_string of \p_data_reg[8]\ : label is "true";
  attribute KEEP of \p_data_reg[9]\ : label is "yes";
  attribute mark_debug_string of \p_data_reg[9]\ : label is "true";
  attribute mark_debug_string of READY : signal is "true";
  attribute mark_debug_string of P_DATA : signal is "true";
begin
  READY <= \^ready\;
\P_DATA[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_enable,
      I1 => C_STATE,
      O => \P_DATA[7]_i_1_n_0\
    );
\P_DATA_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \P_DATA[7]_i_1_n_0\,
      D => \^p_data\(1),
      Q => P_DATA(0),
      R => RST
    );
\P_DATA_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \P_DATA[7]_i_1_n_0\,
      D => \^p_data\(2),
      Q => P_DATA(1),
      R => RST
    );
\P_DATA_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \P_DATA[7]_i_1_n_0\,
      D => \^p_data\(3),
      Q => P_DATA(2),
      R => RST
    );
\P_DATA_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \P_DATA[7]_i_1_n_0\,
      D => \^p_data\(4),
      Q => P_DATA(3),
      R => RST
    );
\P_DATA_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \P_DATA[7]_i_1_n_0\,
      D => \^p_data\(5),
      Q => P_DATA(4),
      R => RST
    );
\P_DATA_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \P_DATA[7]_i_1_n_0\,
      D => \^p_data\(6),
      Q => P_DATA(5),
      R => RST
    );
\P_DATA_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \P_DATA[7]_i_1_n_0\,
      D => \^p_data\(7),
      Q => P_DATA(6),
      R => RST
    );
\P_DATA_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \P_DATA[7]_i_1_n_0\,
      D => \^p_data\(8),
      Q => P_DATA(7),
      R => RST
    );
READY_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => \^ready\,
      I1 => RST,
      I2 => p_enable,
      I3 => C_STATE,
      O => READY_i_1_n_0
    );
READY_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => READY_i_1_n_0,
      Q => \^ready\,
      R => '0'
    );
\cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(0),
      O => \p_0_in__1\(0)
    );
\cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => cnt_reg(0),
      I1 => cnt_reg(1),
      O => \p_0_in__1\(1)
    );
\cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => cnt_reg(1),
      I1 => cnt_reg(0),
      I2 => cnt_reg(2),
      O => \p_0_in__1\(2)
    );
\cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => cnt_reg(2),
      I1 => cnt_reg(0),
      I2 => cnt_reg(1),
      I3 => cnt_reg(3),
      O => \p_0_in__1\(3)
    );
\cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => cnt_reg(3),
      I1 => cnt_reg(1),
      I2 => cnt_reg(0),
      I3 => cnt_reg(2),
      I4 => cnt_reg(4),
      O => \p_0_in__1\(4)
    );
\cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => cnt_reg(4),
      I1 => cnt_reg(2),
      I2 => cnt_reg(0),
      I3 => cnt_reg(1),
      I4 => cnt_reg(3),
      I5 => cnt_reg(5),
      O => \p_0_in__1\(5)
    );
\cnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \cnt[8]_i_4_n_0\,
      I1 => cnt_reg(6),
      O => \p_0_in__1\(6)
    );
\cnt[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => cnt_reg(6),
      I1 => \cnt[8]_i_4_n_0\,
      I2 => cnt_reg(7),
      O => \p_0_in__1\(7)
    );
\cnt[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \cnt[8]_i_3_n_0\,
      I1 => cnt_reg(3),
      I2 => cnt_reg(4),
      I3 => cnt_reg(1),
      I4 => cnt_reg(2),
      O => cnt0
    );
\cnt[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => cnt_reg(7),
      I1 => \cnt[8]_i_4_n_0\,
      I2 => cnt_reg(6),
      I3 => cnt_reg(8),
      O => \p_0_in__1\(8)
    );
\cnt[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => cnt_reg(7),
      I1 => cnt_reg(8),
      I2 => cnt_reg(5),
      I3 => cnt_reg(6),
      I4 => cnt_reg(0),
      I5 => TICK,
      O => \cnt[8]_i_3_n_0\
    );
\cnt[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => cnt_reg(4),
      I1 => cnt_reg(2),
      I2 => cnt_reg(0),
      I3 => cnt_reg(1),
      I4 => cnt_reg(3),
      I5 => cnt_reg(5),
      O => \cnt[8]_i_4_n_0\
    );
\cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => cnt0,
      D => \p_0_in__1\(0),
      Q => cnt_reg(0),
      R => RST
    );
\cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => cnt0,
      D => \p_0_in__1\(1),
      Q => cnt_reg(1),
      R => RST
    );
\cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => cnt0,
      D => \p_0_in__1\(2),
      Q => cnt_reg(2),
      R => RST
    );
\cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => cnt0,
      D => \p_0_in__1\(3),
      Q => cnt_reg(3),
      R => RST
    );
\cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => cnt0,
      D => \p_0_in__1\(4),
      Q => cnt_reg(4),
      R => RST
    );
\cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => cnt0,
      D => \p_0_in__1\(5),
      Q => cnt_reg(5),
      R => RST
    );
\cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => cnt0,
      D => \p_0_in__1\(6),
      Q => cnt_reg(6),
      R => RST
    );
\cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => cnt0,
      D => \p_0_in__1\(7),
      Q => cnt_reg(7),
      R => RST
    );
\cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => cnt0,
      D => \p_0_in__1\(8),
      Q => cnt_reg(8),
      R => RST
    );
enable_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF888F88888888"
    )
        port map (
      I0 => enable_i_2_n_0,
      I1 => enable_i_3_n_0,
      I2 => enable_i_4_n_0,
      I3 => \cnt[8]_i_3_n_0\,
      I4 => RST,
      I5 => enable_reg_n_0,
      O => enable_i_1_n_0
    );
enable_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => cnt_reg(6),
      I1 => cnt_reg(7),
      I2 => cnt_reg(4),
      I3 => cnt_reg(5),
      I4 => RST,
      I5 => cnt_reg(8),
      O => enable_i_2_n_0
    );
enable_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => cnt_reg(0),
      I1 => cnt_reg(1),
      I2 => cnt_reg(3),
      I3 => cnt_reg(2),
      O => enable_i_3_n_0
    );
enable_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cnt_reg(2),
      I1 => cnt_reg(1),
      I2 => cnt_reg(4),
      I3 => cnt_reg(3),
      O => enable_i_4_n_0
    );
enable_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => enable_i_1_n_0,
      Q => enable_reg_n_0,
      R => '0'
    );
\index[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"98C8"
    )
        port map (
      I0 => RST,
      I1 => index(0),
      I2 => C_STATE,
      I3 => enable_reg_n_0,
      O => \index[0]_i_1_n_0\
    );
\index[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BF40AA00"
    )
        port map (
      I0 => RST,
      I1 => enable_reg_n_0,
      I2 => index(0),
      I3 => index(1),
      I4 => C_STATE,
      O => \index[1]_i_1_n_0\
    );
\index[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7FFF0000800000"
    )
        port map (
      I0 => index(0),
      I1 => enable_reg_n_0,
      I2 => index(1),
      I3 => RST,
      I4 => C_STATE,
      I5 => index(2),
      O => \index[2]_i_1_n_0\
    );
\index[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCCC060"
    )
        port map (
      I0 => index(2),
      I1 => index(3),
      I2 => C_STATE,
      I3 => \index[3]_i_2_n_0\,
      I4 => RST,
      O => \index[3]_i_1_n_0\
    );
\index[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => index(0),
      I1 => enable_reg_n_0,
      I2 => index(1),
      O => \index[3]_i_2_n_0\
    );
\index_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \index[0]_i_1_n_0\,
      Q => index(0),
      R => '0'
    );
\index_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \index[1]_i_1_n_0\,
      Q => index(1),
      R => '0'
    );
\index_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \index[2]_i_1_n_0\,
      Q => index(2),
      R => '0'
    );
\index_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \index[3]_i_1_n_0\,
      Q => index(3),
      R => '0'
    );
p_1D_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => enable_reg_n_0,
      Q => p_1D,
      R => '0'
    );
p_2D_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_1D,
      Q => p_2D,
      R => '0'
    );
\p_data[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0F0F0E4F0"
    )
        port map (
      I0 => \p_data[2]_i_2_n_0\,
      I1 => S_DATA,
      I2 => \^p_data\(0),
      I3 => enable_reg_n_0,
      I4 => index(0),
      I5 => index(1),
      O => \p_0_in__0\(0)
    );
\p_data[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AABAAA8A"
    )
        port map (
      I0 => \^p_data\(10),
      I1 => \p_data[10]_i_2_n_0\,
      I2 => index(3),
      I3 => index(2),
      I4 => S_DATA,
      O => \p_0_in__0\(10)
    );
\p_data[10]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => enable_reg_n_0,
      I1 => index(0),
      I2 => index(1),
      O => \p_data[10]_i_2_n_0\
    );
\p_data[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00FE10"
    )
        port map (
      I0 => index(2),
      I1 => index(3),
      I2 => S_DATA,
      I3 => \^p_data\(1),
      I4 => \p_data[9]_i_2_n_0\,
      O => \p_0_in__0\(1)
    );
\p_data[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0E4F0F0F0F0F0"
    )
        port map (
      I0 => \p_data[2]_i_2_n_0\,
      I1 => S_DATA,
      I2 => \^p_data\(2),
      I3 => enable_reg_n_0,
      I4 => index(0),
      I5 => index(1),
      O => \p_0_in__0\(2)
    );
\p_data[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => index(2),
      I1 => index(3),
      O => \p_data[2]_i_2_n_0\
    );
\p_data[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00FE10"
    )
        port map (
      I0 => index(2),
      I1 => index(3),
      I2 => S_DATA,
      I3 => \^p_data\(3),
      I4 => \index[3]_i_2_n_0\,
      O => \p_0_in__0\(3)
    );
\p_data[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AABAAA8A"
    )
        port map (
      I0 => \^p_data\(4),
      I1 => \p_data[8]_i_2_n_0\,
      I2 => index(2),
      I3 => index(3),
      I4 => S_DATA,
      O => \p_0_in__0\(4)
    );
\p_data[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AABAAA8A"
    )
        port map (
      I0 => \^p_data\(5),
      I1 => \p_data[9]_i_2_n_0\,
      I2 => index(2),
      I3 => index(3),
      I4 => S_DATA,
      O => \p_0_in__0\(5)
    );
\p_data[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AABAAA8A"
    )
        port map (
      I0 => \^p_data\(6),
      I1 => \p_data[10]_i_2_n_0\,
      I2 => index(2),
      I3 => index(3),
      I4 => S_DATA,
      O => \p_0_in__0\(6)
    );
\p_data[7]_i_1_RnM\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAEAAA2"
    )
        port map (
      I0 => \^p_data\(7),
      I1 => index(2),
      I2 => index(3),
      I3 => \index[3]_i_2_n_0\,
      I4 => S_DATA,
      O => \p_0_in__0\(7)
    );
\p_data[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AABAAA8A"
    )
        port map (
      I0 => \^p_data\(8),
      I1 => \p_data[8]_i_2_n_0\,
      I2 => index(3),
      I3 => index(2),
      I4 => S_DATA,
      O => \p_0_in__0\(8)
    );
\p_data[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => enable_reg_n_0,
      I1 => index(0),
      I2 => index(1),
      O => \p_data[8]_i_2_n_0\
    );
\p_data[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AABAAA8A"
    )
        port map (
      I0 => \^p_data\(9),
      I1 => \p_data[9]_i_2_n_0\,
      I2 => index(3),
      I3 => index(2),
      I4 => S_DATA,
      O => \p_0_in__0\(9)
    );
\p_data[9]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => index(0),
      I1 => enable_reg_n_0,
      I2 => index(1),
      O => \p_data[9]_i_2_n_0\
    );
\p_data_reg[0]_RnM\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => C_STATE,
      D => \p_0_in__0\(0),
      Q => \^p_data\(0),
      R => RST
    );
\p_data_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => C_STATE,
      D => \p_0_in__0\(10),
      Q => \^p_data\(10),
      R => RST
    );
\p_data_reg[1]_RnM\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => C_STATE,
      D => \p_0_in__0\(1),
      Q => \^p_data\(1),
      R => RST
    );
\p_data_reg[2]_RnM\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => C_STATE,
      D => \p_0_in__0\(2),
      Q => \^p_data\(2),
      R => RST
    );
\p_data_reg[3]_RnM\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => C_STATE,
      D => \p_0_in__0\(3),
      Q => \^p_data\(3),
      R => RST
    );
\p_data_reg[4]_RnM\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => C_STATE,
      D => \p_0_in__0\(4),
      Q => \^p_data\(4),
      R => RST
    );
\p_data_reg[5]_RnM\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => C_STATE,
      D => \p_0_in__0\(5),
      Q => \^p_data\(5),
      R => RST
    );
\p_data_reg[6]_RnM\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => C_STATE,
      D => \p_0_in__0\(6),
      Q => \^p_data\(6),
      R => RST
    );
\p_data_reg[7]_RnM\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => C_STATE,
      D => \p_0_in__0\(7),
      Q => \^p_data\(7),
      R => RST
    );
\p_data_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => C_STATE,
      D => \p_0_in__0\(8),
      Q => \^p_data\(8),
      R => RST
    );
\p_data_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => C_STATE,
      D => \p_0_in__0\(9),
      Q => \^p_data\(9),
      R => RST
    );
p_enable_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_1D,
      I1 => p_2D,
      O => p_enable0
    );
p_enable_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_enable0,
      Q => p_enable,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity AXI_UART_BD_my_uart_rx_0_0_my_uart_rx_gen_tick is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC;
    RXD : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of AXI_UART_BD_my_uart_rx_0_0_my_uart_rx_gen_tick : entity is "my_uart_rx_gen_tick";
end AXI_UART_BD_my_uart_rx_0_0_my_uart_rx_gen_tick;

architecture STRUCTURE of AXI_UART_BD_my_uart_rx_0_0_my_uart_rx_gen_tick is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal TICK_i_1_n_0 : STD_LOGIC;
  signal TICK_i_2_n_0 : STD_LOGIC;
  signal TICK_i_3_n_0 : STD_LOGIC;
  signal TICK_i_4_n_0 : STD_LOGIC;
  signal cnt : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \cnt0_carry__0_n_0\ : STD_LOGIC;
  signal \cnt0_carry__0_n_1\ : STD_LOGIC;
  signal \cnt0_carry__0_n_2\ : STD_LOGIC;
  signal \cnt0_carry__0_n_3\ : STD_LOGIC;
  signal \cnt0_carry__1_n_0\ : STD_LOGIC;
  signal \cnt0_carry__1_n_1\ : STD_LOGIC;
  signal \cnt0_carry__1_n_2\ : STD_LOGIC;
  signal \cnt0_carry__1_n_3\ : STD_LOGIC;
  signal cnt0_carry_n_0 : STD_LOGIC;
  signal cnt0_carry_n_1 : STD_LOGIC;
  signal cnt0_carry_n_2 : STD_LOGIC;
  signal cnt0_carry_n_3 : STD_LOGIC;
  signal \cnt[13]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[13]_i_3_n_0\ : STD_LOGIC;
  signal \cnt[13]_i_4_n_0\ : STD_LOGIC;
  signal \cnt[13]_i_5_n_0\ : STD_LOGIC;
  signal \cnt[13]_i_6_n_0\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 13 downto 1 );
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal tick_cnt_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cnt0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cnt0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of TICK_i_2 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of TICK_i_4 : label is "soft_lutpair7";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of cnt0_carry : label is 35;
  attribute ADDER_THRESHOLD of \cnt0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt0_carry__2\ : label is 35;
  attribute SOFT_HLUTNM of \cnt[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \cnt[10]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \cnt[11]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \cnt[12]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \cnt[13]_i_4\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \cnt[13]_i_6\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \cnt[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \cnt[2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \cnt[3]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \cnt[4]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \cnt[5]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \cnt[6]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \cnt[7]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \cnt[8]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \cnt[9]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \tick_cnt[0]_i_1__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \tick_cnt[1]_i_1__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \tick_cnt[3]_i_1__0\ : label is "soft_lutpair6";
begin
  E(0) <= \^e\(0);
TICK_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => TICK_i_2_n_0,
      I1 => cnt(0),
      I2 => TICK_i_3_n_0,
      I3 => TICK_i_4_n_0,
      I4 => RST,
      O => TICK_i_1_n_0
    );
TICK_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFD"
    )
        port map (
      I0 => RXD,
      I1 => tick_cnt_reg(0),
      I2 => tick_cnt_reg(3),
      I3 => tick_cnt_reg(2),
      I4 => tick_cnt_reg(1),
      O => TICK_i_2_n_0
    );
TICK_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => cnt(6),
      I1 => cnt(8),
      I2 => cnt(1),
      I3 => cnt(5),
      I4 => RST,
      I5 => cnt(9),
      O => TICK_i_3_n_0
    );
TICK_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => cnt(4),
      I1 => cnt(7),
      I2 => cnt(2),
      I3 => cnt(3),
      I4 => \cnt[13]_i_5_n_0\,
      O => TICK_i_4_n_0
    );
TICK_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => TICK_i_1_n_0,
      Q => \^e\(0),
      R => '0'
    );
cnt0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => cnt0_carry_n_0,
      CO(2) => cnt0_carry_n_1,
      CO(1) => cnt0_carry_n_2,
      CO(0) => cnt0_carry_n_3,
      CYINIT => cnt(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => cnt(4 downto 1)
    );
\cnt0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => cnt0_carry_n_0,
      CO(3) => \cnt0_carry__0_n_0\,
      CO(2) => \cnt0_carry__0_n_1\,
      CO(1) => \cnt0_carry__0_n_2\,
      CO(0) => \cnt0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => cnt(8 downto 5)
    );
\cnt0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt0_carry__0_n_0\,
      CO(3) => \cnt0_carry__1_n_0\,
      CO(2) => \cnt0_carry__1_n_1\,
      CO(1) => \cnt0_carry__1_n_2\,
      CO(0) => \cnt0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3 downto 0) => cnt(12 downto 9)
    );
\cnt0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt0_carry__1_n_0\,
      CO(3 downto 0) => \NLW_cnt0_carry__2_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_cnt0_carry__2_O_UNCONNECTED\(3 downto 1),
      O(0) => data0(13),
      S(3 downto 1) => B"000",
      S(0) => cnt(13)
    );
\cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt(0),
      O => p_1_in(0)
    );
\cnt[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt[13]_i_3_n_0\,
      I1 => data0(10),
      O => p_1_in(10)
    );
\cnt[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt[13]_i_3_n_0\,
      I1 => data0(11),
      O => p_1_in(11)
    );
\cnt[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt[13]_i_3_n_0\,
      I1 => data0(12),
      O => p_1_in(12)
    );
\cnt[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAAA"
    )
        port map (
      I0 => RST,
      I1 => tick_cnt_reg(1),
      I2 => tick_cnt_reg(2),
      I3 => tick_cnt_reg(3),
      I4 => tick_cnt_reg(0),
      I5 => RXD,
      O => \cnt[13]_i_1_n_0\
    );
\cnt[13]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt[13]_i_3_n_0\,
      I1 => data0(13),
      O => p_1_in(13)
    );
\cnt[13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFFFFFFE"
    )
        port map (
      I0 => \cnt[13]_i_4_n_0\,
      I1 => \cnt[13]_i_5_n_0\,
      I2 => cnt(5),
      I3 => cnt(6),
      I4 => cnt(0),
      I5 => \cnt[13]_i_6_n_0\,
      O => \cnt[13]_i_3_n_0\
    );
\cnt[13]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cnt(3),
      I1 => cnt(2),
      I2 => cnt(7),
      I3 => cnt(4),
      O => \cnt[13]_i_4_n_0\
    );
\cnt[13]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cnt(11),
      I1 => cnt(10),
      I2 => cnt(13),
      I3 => cnt(12),
      O => \cnt[13]_i_5_n_0\
    );
\cnt[13]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFE"
    )
        port map (
      I0 => cnt(9),
      I1 => cnt(8),
      I2 => cnt(1),
      I3 => cnt(0),
      O => \cnt[13]_i_6_n_0\
    );
\cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt[13]_i_3_n_0\,
      I1 => data0(1),
      O => p_1_in(1)
    );
\cnt[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt[13]_i_3_n_0\,
      I1 => data0(2),
      O => p_1_in(2)
    );
\cnt[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt[13]_i_3_n_0\,
      I1 => data0(3),
      O => p_1_in(3)
    );
\cnt[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt[13]_i_3_n_0\,
      I1 => data0(4),
      O => p_1_in(4)
    );
\cnt[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt[13]_i_3_n_0\,
      I1 => data0(5),
      O => p_1_in(5)
    );
\cnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt[13]_i_3_n_0\,
      I1 => data0(6),
      O => p_1_in(6)
    );
\cnt[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt[13]_i_3_n_0\,
      I1 => data0(7),
      O => p_1_in(7)
    );
\cnt[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt[13]_i_3_n_0\,
      I1 => data0(8),
      O => p_1_in(8)
    );
\cnt[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt[13]_i_3_n_0\,
      I1 => data0(9),
      O => p_1_in(9)
    );
\cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_1_in(0),
      Q => cnt(0),
      R => \cnt[13]_i_1_n_0\
    );
\cnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_1_in(10),
      Q => cnt(10),
      R => \cnt[13]_i_1_n_0\
    );
\cnt_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_1_in(11),
      Q => cnt(11),
      R => \cnt[13]_i_1_n_0\
    );
\cnt_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_1_in(12),
      Q => cnt(12),
      R => \cnt[13]_i_1_n_0\
    );
\cnt_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_1_in(13),
      Q => cnt(13),
      R => \cnt[13]_i_1_n_0\
    );
\cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_1_in(1),
      Q => cnt(1),
      R => \cnt[13]_i_1_n_0\
    );
\cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_1_in(2),
      Q => cnt(2),
      R => \cnt[13]_i_1_n_0\
    );
\cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_1_in(3),
      Q => cnt(3),
      R => \cnt[13]_i_1_n_0\
    );
\cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_1_in(4),
      Q => cnt(4),
      R => \cnt[13]_i_1_n_0\
    );
\cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_1_in(5),
      Q => cnt(5),
      R => \cnt[13]_i_1_n_0\
    );
\cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_1_in(6),
      Q => cnt(6),
      R => \cnt[13]_i_1_n_0\
    );
\cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_1_in(7),
      Q => cnt(7),
      R => \cnt[13]_i_1_n_0\
    );
\cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_1_in(8),
      Q => cnt(8),
      R => \cnt[13]_i_1_n_0\
    );
\cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_1_in(9),
      Q => cnt(9),
      R => \cnt[13]_i_1_n_0\
    );
\tick_cnt[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3313"
    )
        port map (
      I0 => tick_cnt_reg(1),
      I1 => tick_cnt_reg(0),
      I2 => tick_cnt_reg(3),
      I3 => tick_cnt_reg(2),
      O => p_0_in(0)
    );
\tick_cnt[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FB0"
    )
        port map (
      I0 => tick_cnt_reg(2),
      I1 => tick_cnt_reg(3),
      I2 => tick_cnt_reg(1),
      I3 => tick_cnt_reg(0),
      O => p_0_in(1)
    );
\tick_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => tick_cnt_reg(1),
      I1 => tick_cnt_reg(0),
      I2 => tick_cnt_reg(2),
      O => p_0_in(2)
    );
\tick_cnt[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"68CC"
    )
        port map (
      I0 => tick_cnt_reg(0),
      I1 => tick_cnt_reg(3),
      I2 => tick_cnt_reg(2),
      I3 => tick_cnt_reg(1),
      O => p_0_in(3)
    );
\tick_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \^e\(0),
      D => p_0_in(0),
      Q => tick_cnt_reg(0),
      R => RST
    );
\tick_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \^e\(0),
      D => p_0_in(1),
      Q => tick_cnt_reg(1),
      R => RST
    );
\tick_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \^e\(0),
      D => p_0_in(2),
      Q => tick_cnt_reg(2),
      R => RST
    );
\tick_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \^e\(0),
      D => p_0_in(3),
      Q => tick_cnt_reg(3),
      R => RST
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity AXI_UART_BD_my_uart_rx_0_0_my_uart_rx is
  port (
    RX_DATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    RX_READY : out STD_LOGIC;
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC;
    RXD : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of AXI_UART_BD_my_uart_rx_0_0_my_uart_rx : entity is "my_uart_rx";
end AXI_UART_BD_my_uart_rx_0_0_my_uart_rx;

architecture STRUCTURE of AXI_UART_BD_my_uart_rx_0_0_my_uart_rx is
  signal c_state : STD_LOGIC;
  signal tick_baud : STD_LOGIC;
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of my_S2P_uut : label is "soft";
begin
my_FSM_uut: entity work.AXI_UART_BD_my_uart_rx_0_0_my_uart_rx_FSM
     port map (
      CLK => CLK,
      E(0) => tick_baud,
      RST => RST,
      RXD => RXD,
      c_state => c_state
    );
my_S2P_uut: entity work.AXI_UART_BD_my_uart_rx_0_0_my_uart_rx_S2P
     port map (
      CLK => CLK,
      C_STATE => c_state,
      P_DATA(7 downto 0) => RX_DATA(7 downto 0),
      READY => RX_READY,
      RST => RST,
      S_DATA => RXD,
      TICK => tick_baud
    );
my_tick_uut: entity work.AXI_UART_BD_my_uart_rx_0_0_my_uart_rx_gen_tick
     port map (
      CLK => CLK,
      E(0) => tick_baud,
      RST => RST,
      RXD => RXD
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity AXI_UART_BD_my_uart_rx_0_0 is
  port (
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC;
    RXD : in STD_LOGIC;
    RX_READY : out STD_LOGIC;
    RX_DATA : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of AXI_UART_BD_my_uart_rx_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of AXI_UART_BD_my_uart_rx_0_0 : entity is "AXI_UART_BD_my_uart_rx_0_0,my_uart_rx,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of AXI_UART_BD_my_uart_rx_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of AXI_UART_BD_my_uart_rx_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of AXI_UART_BD_my_uart_rx_0_0 : entity is "my_uart_rx,Vivado 2024.1";
end AXI_UART_BD_my_uart_rx_0_0;

architecture STRUCTURE of AXI_UART_BD_my_uart_rx_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of CLK : signal is "xilinx.com:signal:clock:1.0 CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of CLK : signal is "XIL_INTERFACENAME CLK, ASSOCIATED_RESET RST, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN AXI_UART_BD_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of RST : signal is "xilinx.com:signal:reset:1.0 RST RST";
  attribute X_INTERFACE_PARAMETER of RST : signal is "XIL_INTERFACENAME RST, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
begin
inst: entity work.AXI_UART_BD_my_uart_rx_0_0_my_uart_rx
     port map (
      CLK => CLK,
      RST => RST,
      RXD => RXD,
      RX_DATA(7 downto 0) => RX_DATA(7 downto 0),
      RX_READY => RX_READY
    );
end STRUCTURE;
