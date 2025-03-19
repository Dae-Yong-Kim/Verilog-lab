-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Wed Jan  8 13:08:18 2025
-- Host        : COMSYS01 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Verilog-lab/king/king.gen/sources_1/bd/king_bd/ip/king_bd_myip_slave_0_0/king_bd_myip_slave_0_0_sim_netlist.vhdl
-- Design      : king_bd_myip_slave_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z007sclg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity king_bd_myip_slave_0_0_myip_slave is
  port (
    axi_awready_reg_0 : out STD_LOGIC;
    axi_arready_reg_0 : out STD_LOGIC;
    axi_rvalid_reg_0 : out STD_LOGIC;
    START : out STD_LOGIC;
    TX_DATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BUSY : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of king_bd_myip_slave_0_0_myip_slave : entity is "myip_slave";
end king_bd_myip_slave_0_0_myip_slave;

architecture STRUCTURE of king_bd_myip_slave_0_0_myip_slave is
  signal \FSM_sequential_state_read[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_read[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_write[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_write[1]_i_1_n_0\ : STD_LOGIC;
  signal \^start\ : STD_LOGIC;
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal \^tx_data\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal axi_arready_i_1_n_0 : STD_LOGIC;
  signal \^axi_arready_reg_0\ : STD_LOGIC;
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_2_n_0\ : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal \^axi_awready_reg_0\ : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal \^axi_rvalid_reg_0\ : STD_LOGIC;
  signal \axi_wdata[31]_i_1_n_0\ : STD_LOGIC;
  signal \axi_wdata_reg_n_0_[10]\ : STD_LOGIC;
  signal \axi_wdata_reg_n_0_[11]\ : STD_LOGIC;
  signal \axi_wdata_reg_n_0_[12]\ : STD_LOGIC;
  signal \axi_wdata_reg_n_0_[13]\ : STD_LOGIC;
  signal \axi_wdata_reg_n_0_[14]\ : STD_LOGIC;
  signal \axi_wdata_reg_n_0_[15]\ : STD_LOGIC;
  signal \axi_wdata_reg_n_0_[16]\ : STD_LOGIC;
  signal \axi_wdata_reg_n_0_[17]\ : STD_LOGIC;
  signal \axi_wdata_reg_n_0_[18]\ : STD_LOGIC;
  signal \axi_wdata_reg_n_0_[19]\ : STD_LOGIC;
  signal \axi_wdata_reg_n_0_[20]\ : STD_LOGIC;
  signal \axi_wdata_reg_n_0_[21]\ : STD_LOGIC;
  signal \axi_wdata_reg_n_0_[22]\ : STD_LOGIC;
  signal \axi_wdata_reg_n_0_[23]\ : STD_LOGIC;
  signal \axi_wdata_reg_n_0_[24]\ : STD_LOGIC;
  signal \axi_wdata_reg_n_0_[25]\ : STD_LOGIC;
  signal \axi_wdata_reg_n_0_[26]\ : STD_LOGIC;
  signal \axi_wdata_reg_n_0_[27]\ : STD_LOGIC;
  signal \axi_wdata_reg_n_0_[28]\ : STD_LOGIC;
  signal \axi_wdata_reg_n_0_[29]\ : STD_LOGIC;
  signal \axi_wdata_reg_n_0_[30]\ : STD_LOGIC;
  signal \axi_wdata_reg_n_0_[31]\ : STD_LOGIC;
  signal \axi_wdata_reg_n_0_[4]\ : STD_LOGIC;
  signal \axi_wdata_reg_n_0_[5]\ : STD_LOGIC;
  signal \axi_wdata_reg_n_0_[6]\ : STD_LOGIC;
  signal \axi_wdata_reg_n_0_[7]\ : STD_LOGIC;
  signal \axi_wdata_reg_n_0_[8]\ : STD_LOGIC;
  signal \axi_wdata_reg_n_0_[9]\ : STD_LOGIC;
  signal axi_wready_i_1_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_2_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \slv_reg0[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[4]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \slv_reg0_reg_n_0_[1]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[4]\ : STD_LOGIC;
  signal slv_reg1 : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal slv_reg1_0 : STD_LOGIC;
  signal slv_reg2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal slv_reg2_2 : STD_LOGIC;
  signal slv_reg3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal slv_reg3_1 : STD_LOGIC;
  signal state_read : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal state_write : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_read_reg[0]\ : label is "Idle:00,Rdata:10,Raddr:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_read_reg[1]\ : label is "Idle:00,Rdata:10,Raddr:01";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state_write[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_state_write[1]_i_1\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_write_reg[0]\ : label is "Idle:00,Wdata:10,Waddr:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_write_reg[1]\ : label is "Idle:00,Wdata:10,Waddr:01";
  attribute SOFT_HLUTNM of \axi_awaddr[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \axi_awaddr[3]_i_1\ : label is "soft_lutpair1";
begin
  START <= \^start\;
  S_AXI_BVALID <= \^s_axi_bvalid\;
  S_AXI_WREADY <= \^s_axi_wready\;
  TX_DATA(7 downto 0) <= \^tx_data\(7 downto 0);
  axi_arready_reg_0 <= \^axi_arready_reg_0\;
  axi_awready_reg_0 <= \^axi_awready_reg_0\;
  axi_rvalid_reg_0 <= \^axi_rvalid_reg_0\;
\FSM_sequential_state_read[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0007777FFFF"
    )
        port map (
      I0 => S_AXI_ARVALID,
      I1 => \^axi_arready_reg_0\,
      I2 => S_AXI_RREADY,
      I3 => \^axi_rvalid_reg_0\,
      I4 => state_read(0),
      I5 => state_read(1),
      O => \FSM_sequential_state_read[0]_i_1_n_0\
    );
\FSM_sequential_state_read[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0FFF88880000"
    )
        port map (
      I0 => \^axi_arready_reg_0\,
      I1 => S_AXI_ARVALID,
      I2 => S_AXI_RREADY,
      I3 => \^axi_rvalid_reg_0\,
      I4 => state_read(0),
      I5 => state_read(1),
      O => \FSM_sequential_state_read[1]_i_1_n_0\
    );
\FSM_sequential_state_read_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \FSM_sequential_state_read[0]_i_1_n_0\,
      Q => state_read(0),
      R => \slv_reg0[0]_i_1_n_0\
    );
\FSM_sequential_state_read_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \FSM_sequential_state_read[1]_i_1_n_0\,
      Q => state_read(1),
      R => \slv_reg0[0]_i_1_n_0\
    );
\FSM_sequential_state_write[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFFFBBBB"
    )
        port map (
      I0 => S_AXI_WVALID,
      I1 => state_write(1),
      I2 => S_AXI_AWVALID,
      I3 => \^axi_awready_reg_0\,
      I4 => state_write(0),
      O => \FSM_sequential_state_write[0]_i_1_n_0\
    );
\FSM_sequential_state_write[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCCC4444"
    )
        port map (
      I0 => S_AXI_WVALID,
      I1 => state_write(1),
      I2 => S_AXI_AWVALID,
      I3 => \^axi_awready_reg_0\,
      I4 => state_write(0),
      O => \FSM_sequential_state_write[1]_i_1_n_0\
    );
\FSM_sequential_state_write_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \FSM_sequential_state_write[0]_i_1_n_0\,
      Q => state_write(0),
      R => \slv_reg0[0]_i_1_n_0\
    );
\FSM_sequential_state_write_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \FSM_sequential_state_write[1]_i_1_n_0\,
      Q => state_write(1),
      R => \slv_reg0[0]_i_1_n_0\
    );
\S_AXI_RDATA[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => \^tx_data\(0),
      I1 => \^start\,
      I2 => slv_reg3(0),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(0),
      O => S_AXI_RDATA(0)
    );
\S_AXI_RDATA[10]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFA0C0A0"
    )
        port map (
      I0 => slv_reg1(10),
      I1 => slv_reg3(10),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg2(10),
      O => S_AXI_RDATA(10)
    );
\S_AXI_RDATA[11]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFA0C0A0"
    )
        port map (
      I0 => slv_reg1(11),
      I1 => slv_reg3(11),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg2(11),
      O => S_AXI_RDATA(11)
    );
\S_AXI_RDATA[12]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFA0C0A0"
    )
        port map (
      I0 => slv_reg1(12),
      I1 => slv_reg3(12),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg2(12),
      O => S_AXI_RDATA(12)
    );
\S_AXI_RDATA[13]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFA0C0A0"
    )
        port map (
      I0 => slv_reg1(13),
      I1 => slv_reg3(13),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg2(13),
      O => S_AXI_RDATA(13)
    );
\S_AXI_RDATA[14]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFA0C0A0"
    )
        port map (
      I0 => slv_reg1(14),
      I1 => slv_reg3(14),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg2(14),
      O => S_AXI_RDATA(14)
    );
\S_AXI_RDATA[15]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFA0C0A0"
    )
        port map (
      I0 => slv_reg1(15),
      I1 => slv_reg3(15),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg2(15),
      O => S_AXI_RDATA(15)
    );
\S_AXI_RDATA[16]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFA0C0A0"
    )
        port map (
      I0 => slv_reg1(16),
      I1 => slv_reg3(16),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg2(16),
      O => S_AXI_RDATA(16)
    );
\S_AXI_RDATA[17]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFA0C0A0"
    )
        port map (
      I0 => slv_reg1(17),
      I1 => slv_reg3(17),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg2(17),
      O => S_AXI_RDATA(17)
    );
\S_AXI_RDATA[18]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFA0C0A0"
    )
        port map (
      I0 => slv_reg1(18),
      I1 => slv_reg3(18),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg2(18),
      O => S_AXI_RDATA(18)
    );
\S_AXI_RDATA[19]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFA0C0A0"
    )
        port map (
      I0 => slv_reg1(19),
      I1 => slv_reg3(19),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg2(19),
      O => S_AXI_RDATA(19)
    );
\S_AXI_RDATA[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => \^tx_data\(1),
      I1 => \slv_reg0_reg_n_0_[1]\,
      I2 => slv_reg3(1),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(1),
      O => S_AXI_RDATA(1)
    );
\S_AXI_RDATA[20]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFA0C0A0"
    )
        port map (
      I0 => slv_reg1(20),
      I1 => slv_reg3(20),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg2(20),
      O => S_AXI_RDATA(20)
    );
\S_AXI_RDATA[21]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFA0C0A0"
    )
        port map (
      I0 => slv_reg1(21),
      I1 => slv_reg3(21),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg2(21),
      O => S_AXI_RDATA(21)
    );
\S_AXI_RDATA[22]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFA0C0A0"
    )
        port map (
      I0 => slv_reg1(22),
      I1 => slv_reg3(22),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg2(22),
      O => S_AXI_RDATA(22)
    );
\S_AXI_RDATA[23]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFA0C0A0"
    )
        port map (
      I0 => slv_reg1(23),
      I1 => slv_reg3(23),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg2(23),
      O => S_AXI_RDATA(23)
    );
\S_AXI_RDATA[24]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFA0C0A0"
    )
        port map (
      I0 => slv_reg1(24),
      I1 => slv_reg3(24),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg2(24),
      O => S_AXI_RDATA(24)
    );
\S_AXI_RDATA[25]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFA0C0A0"
    )
        port map (
      I0 => slv_reg1(25),
      I1 => slv_reg3(25),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg2(25),
      O => S_AXI_RDATA(25)
    );
\S_AXI_RDATA[26]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFA0C0A0"
    )
        port map (
      I0 => slv_reg1(26),
      I1 => slv_reg3(26),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg2(26),
      O => S_AXI_RDATA(26)
    );
\S_AXI_RDATA[27]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFA0C0A0"
    )
        port map (
      I0 => slv_reg1(27),
      I1 => slv_reg3(27),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg2(27),
      O => S_AXI_RDATA(27)
    );
\S_AXI_RDATA[28]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFA0C0A0"
    )
        port map (
      I0 => slv_reg1(28),
      I1 => slv_reg3(28),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg2(28),
      O => S_AXI_RDATA(28)
    );
\S_AXI_RDATA[29]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFA0C0A0"
    )
        port map (
      I0 => slv_reg1(29),
      I1 => slv_reg3(29),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg2(29),
      O => S_AXI_RDATA(29)
    );
\S_AXI_RDATA[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => \^tx_data\(2),
      I1 => \slv_reg0_reg_n_0_[2]\,
      I2 => slv_reg3(2),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(2),
      O => S_AXI_RDATA(2)
    );
\S_AXI_RDATA[30]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFA0C0A0"
    )
        port map (
      I0 => slv_reg1(30),
      I1 => slv_reg3(30),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg2(30),
      O => S_AXI_RDATA(30)
    );
\S_AXI_RDATA[31]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFA0C0A0"
    )
        port map (
      I0 => slv_reg1(31),
      I1 => slv_reg3(31),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg2(31),
      O => S_AXI_RDATA(31)
    );
\S_AXI_RDATA[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => \^tx_data\(3),
      I1 => \slv_reg0_reg_n_0_[3]\,
      I2 => slv_reg3(3),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(3),
      O => S_AXI_RDATA(3)
    );
\S_AXI_RDATA[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => \^tx_data\(4),
      I1 => \slv_reg0_reg_n_0_[4]\,
      I2 => slv_reg3(4),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(4),
      O => S_AXI_RDATA(4)
    );
\S_AXI_RDATA[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFA0C0A0"
    )
        port map (
      I0 => \^tx_data\(5),
      I1 => slv_reg3(5),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg2(5),
      O => S_AXI_RDATA(5)
    );
\S_AXI_RDATA[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFA0C0A0"
    )
        port map (
      I0 => \^tx_data\(6),
      I1 => slv_reg3(6),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg2(6),
      O => S_AXI_RDATA(6)
    );
\S_AXI_RDATA[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFA0C0A0"
    )
        port map (
      I0 => \^tx_data\(7),
      I1 => slv_reg3(7),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg2(7),
      O => S_AXI_RDATA(7)
    );
\S_AXI_RDATA[8]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFA0C0A0"
    )
        port map (
      I0 => slv_reg1(8),
      I1 => slv_reg3(8),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg2(8),
      O => S_AXI_RDATA(8)
    );
\S_AXI_RDATA[9]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFA0C0A0"
    )
        port map (
      I0 => slv_reg1(9),
      I1 => slv_reg3(9),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg2(9),
      O => S_AXI_RDATA(9)
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => S_AXI_ARADDR(0),
      I1 => S_AXI_ARESETN,
      I2 => axi_arready0,
      I3 => state_read(0),
      I4 => state_read(1),
      I5 => axi_araddr(2),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => S_AXI_ARADDR(1),
      I1 => S_AXI_ARESETN,
      I2 => axi_arready0,
      I3 => state_read(0),
      I4 => state_read(1),
      I5 => axi_araddr(3),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => S_AXI_ARVALID,
      I1 => \^axi_arready_reg_0\,
      O => axi_arready0
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => axi_araddr(2),
      R => '0'
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => axi_araddr(3),
      R => '0'
    );
axi_arready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C4C4C4C4FFCFCFCF"
    )
        port map (
      I0 => S_AXI_ARVALID,
      I1 => \^axi_arready_reg_0\,
      I2 => state_read(1),
      I3 => S_AXI_RREADY,
      I4 => \^axi_rvalid_reg_0\,
      I5 => state_read(0),
      O => axi_arready_i_1_n_0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_arready_i_1_n_0,
      Q => \^axi_arready_reg_0\,
      R => \slv_reg0[0]_i_1_n_0\
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_AXI_AWADDR(0),
      I1 => \axi_awaddr[3]_i_2_n_0\,
      I2 => p_0_in(0),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_AXI_AWADDR(1),
      I1 => \axi_awaddr[3]_i_2_n_0\,
      I2 => p_0_in(1),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => S_AXI_ARESETN,
      I1 => \^axi_awready_reg_0\,
      I2 => S_AXI_AWVALID,
      I3 => state_write(0),
      I4 => state_write(1),
      O => \axi_awaddr[3]_i_2_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => p_0_in(0),
      R => '0'
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => p_0_in(1),
      R => '0'
    );
axi_awready_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C4C4FFCF"
    )
        port map (
      I0 => S_AXI_AWVALID,
      I1 => \^axi_awready_reg_0\,
      I2 => state_write(1),
      I3 => S_AXI_WVALID,
      I4 => state_write(0),
      O => axi_awready_i_1_n_0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_awready_i_1_n_0,
      Q => \^axi_awready_reg_0\,
      R => \slv_reg0[0]_i_1_n_0\
    );
axi_bvalid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DD449D00"
    )
        port map (
      I0 => state_write(0),
      I1 => state_write(1),
      I2 => S_AXI_BREADY,
      I3 => \^s_axi_bvalid\,
      I4 => S_AXI_WVALID,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s_axi_bvalid\,
      R => \slv_reg0[0]_i_1_n_0\
    );
axi_rvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFFFFF00800080"
    )
        port map (
      I0 => \^axi_arready_reg_0\,
      I1 => S_AXI_ARVALID,
      I2 => state_read(0),
      I3 => state_read(1),
      I4 => S_AXI_RREADY,
      I5 => \^axi_rvalid_reg_0\,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^axi_rvalid_reg_0\,
      R => \slv_reg0[0]_i_1_n_0\
    );
\axi_wdata[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => S_AXI_ARESETN,
      I1 => state_write(0),
      I2 => state_write(1),
      O => \axi_wdata[31]_i_1_n_0\
    );
\axi_wdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => p_2_in(0),
      R => '0'
    );
\axi_wdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => S_AXI_WDATA(10),
      Q => \axi_wdata_reg_n_0_[10]\,
      R => '0'
    );
\axi_wdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => S_AXI_WDATA(11),
      Q => \axi_wdata_reg_n_0_[11]\,
      R => '0'
    );
\axi_wdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => S_AXI_WDATA(12),
      Q => \axi_wdata_reg_n_0_[12]\,
      R => '0'
    );
\axi_wdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => S_AXI_WDATA(13),
      Q => \axi_wdata_reg_n_0_[13]\,
      R => '0'
    );
\axi_wdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => S_AXI_WDATA(14),
      Q => \axi_wdata_reg_n_0_[14]\,
      R => '0'
    );
\axi_wdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => S_AXI_WDATA(15),
      Q => \axi_wdata_reg_n_0_[15]\,
      R => '0'
    );
\axi_wdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => S_AXI_WDATA(16),
      Q => \axi_wdata_reg_n_0_[16]\,
      R => '0'
    );
\axi_wdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => S_AXI_WDATA(17),
      Q => \axi_wdata_reg_n_0_[17]\,
      R => '0'
    );
\axi_wdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => S_AXI_WDATA(18),
      Q => \axi_wdata_reg_n_0_[18]\,
      R => '0'
    );
\axi_wdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => S_AXI_WDATA(19),
      Q => \axi_wdata_reg_n_0_[19]\,
      R => '0'
    );
\axi_wdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => p_2_in(1),
      R => '0'
    );
\axi_wdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => S_AXI_WDATA(20),
      Q => \axi_wdata_reg_n_0_[20]\,
      R => '0'
    );
\axi_wdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => S_AXI_WDATA(21),
      Q => \axi_wdata_reg_n_0_[21]\,
      R => '0'
    );
\axi_wdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => S_AXI_WDATA(22),
      Q => \axi_wdata_reg_n_0_[22]\,
      R => '0'
    );
\axi_wdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => S_AXI_WDATA(23),
      Q => \axi_wdata_reg_n_0_[23]\,
      R => '0'
    );
\axi_wdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => S_AXI_WDATA(24),
      Q => \axi_wdata_reg_n_0_[24]\,
      R => '0'
    );
\axi_wdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => S_AXI_WDATA(25),
      Q => \axi_wdata_reg_n_0_[25]\,
      R => '0'
    );
\axi_wdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => S_AXI_WDATA(26),
      Q => \axi_wdata_reg_n_0_[26]\,
      R => '0'
    );
\axi_wdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => S_AXI_WDATA(27),
      Q => \axi_wdata_reg_n_0_[27]\,
      R => '0'
    );
\axi_wdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => S_AXI_WDATA(28),
      Q => \axi_wdata_reg_n_0_[28]\,
      R => '0'
    );
\axi_wdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => S_AXI_WDATA(29),
      Q => \axi_wdata_reg_n_0_[29]\,
      R => '0'
    );
\axi_wdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => p_2_in(2),
      R => '0'
    );
\axi_wdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => S_AXI_WDATA(30),
      Q => \axi_wdata_reg_n_0_[30]\,
      R => '0'
    );
\axi_wdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => S_AXI_WDATA(31),
      Q => \axi_wdata_reg_n_0_[31]\,
      R => '0'
    );
\axi_wdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => p_2_in(3),
      R => '0'
    );
\axi_wdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => S_AXI_WDATA(4),
      Q => \axi_wdata_reg_n_0_[4]\,
      R => '0'
    );
\axi_wdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => S_AXI_WDATA(5),
      Q => \axi_wdata_reg_n_0_[5]\,
      R => '0'
    );
\axi_wdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => S_AXI_WDATA(6),
      Q => \axi_wdata_reg_n_0_[6]\,
      R => '0'
    );
\axi_wdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => S_AXI_WDATA(7),
      Q => \axi_wdata_reg_n_0_[7]\,
      R => '0'
    );
\axi_wdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => S_AXI_WDATA(8),
      Q => \axi_wdata_reg_n_0_[8]\,
      R => '0'
    );
\axi_wdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => S_AXI_WDATA(9),
      Q => \axi_wdata_reg_n_0_[9]\,
      R => '0'
    );
axi_wready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00F008080000"
    )
        port map (
      I0 => S_AXI_AWVALID,
      I1 => \^axi_awready_reg_0\,
      I2 => state_write(1),
      I3 => S_AXI_WVALID,
      I4 => state_write(0),
      I5 => \^s_axi_wready\,
      O => axi_wready_i_1_n_0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_wready_i_1_n_0,
      Q => \^s_axi_wready\,
      R => \slv_reg0[0]_i_1_n_0\
    );
slv_reg0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => S_AXI_WVALID,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      O => \slv_reg0__0\(0)
    );
\slv_reg0[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => S_AXI_ARESETN,
      O => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg0[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[4]\,
      I1 => S_AXI_WVALID,
      I2 => BUSY,
      O => \slv_reg0[4]_i_1_n_0\
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg0__0\(0),
      D => p_2_in(0),
      Q => \^start\,
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg0__0\(0),
      D => p_2_in(1),
      Q => \slv_reg0_reg_n_0_[1]\,
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg0__0\(0),
      D => p_2_in(2),
      Q => \slv_reg0_reg_n_0_[2]\,
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg0__0\(0),
      D => p_2_in(3),
      Q => \slv_reg0_reg_n_0_[3]\,
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \slv_reg0[4]_i_1_n_0\,
      Q => \slv_reg0_reg_n_0_[4]\,
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg1[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => S_AXI_WVALID,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      O => slv_reg1_0
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg1_0,
      D => p_2_in(0),
      Q => \^tx_data\(0),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg1_0,
      D => \axi_wdata_reg_n_0_[10]\,
      Q => slv_reg1(10),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg1_0,
      D => \axi_wdata_reg_n_0_[11]\,
      Q => slv_reg1(11),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg1_0,
      D => \axi_wdata_reg_n_0_[12]\,
      Q => slv_reg1(12),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg1_0,
      D => \axi_wdata_reg_n_0_[13]\,
      Q => slv_reg1(13),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg1_0,
      D => \axi_wdata_reg_n_0_[14]\,
      Q => slv_reg1(14),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg1_0,
      D => \axi_wdata_reg_n_0_[15]\,
      Q => slv_reg1(15),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg1_0,
      D => \axi_wdata_reg_n_0_[16]\,
      Q => slv_reg1(16),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg1_0,
      D => \axi_wdata_reg_n_0_[17]\,
      Q => slv_reg1(17),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg1_0,
      D => \axi_wdata_reg_n_0_[18]\,
      Q => slv_reg1(18),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg1_0,
      D => \axi_wdata_reg_n_0_[19]\,
      Q => slv_reg1(19),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg1_0,
      D => p_2_in(1),
      Q => \^tx_data\(1),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg1_0,
      D => \axi_wdata_reg_n_0_[20]\,
      Q => slv_reg1(20),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg1_0,
      D => \axi_wdata_reg_n_0_[21]\,
      Q => slv_reg1(21),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg1_0,
      D => \axi_wdata_reg_n_0_[22]\,
      Q => slv_reg1(22),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg1_0,
      D => \axi_wdata_reg_n_0_[23]\,
      Q => slv_reg1(23),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg1_0,
      D => \axi_wdata_reg_n_0_[24]\,
      Q => slv_reg1(24),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg1_0,
      D => \axi_wdata_reg_n_0_[25]\,
      Q => slv_reg1(25),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg1_0,
      D => \axi_wdata_reg_n_0_[26]\,
      Q => slv_reg1(26),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg1_0,
      D => \axi_wdata_reg_n_0_[27]\,
      Q => slv_reg1(27),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg1_0,
      D => \axi_wdata_reg_n_0_[28]\,
      Q => slv_reg1(28),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg1_0,
      D => \axi_wdata_reg_n_0_[29]\,
      Q => slv_reg1(29),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg1_0,
      D => p_2_in(2),
      Q => \^tx_data\(2),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg1_0,
      D => \axi_wdata_reg_n_0_[30]\,
      Q => slv_reg1(30),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg1_0,
      D => \axi_wdata_reg_n_0_[31]\,
      Q => slv_reg1(31),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg1_0,
      D => p_2_in(3),
      Q => \^tx_data\(3),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg1_0,
      D => \axi_wdata_reg_n_0_[4]\,
      Q => \^tx_data\(4),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg1_0,
      D => \axi_wdata_reg_n_0_[5]\,
      Q => \^tx_data\(5),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg1_0,
      D => \axi_wdata_reg_n_0_[6]\,
      Q => \^tx_data\(6),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg1_0,
      D => \axi_wdata_reg_n_0_[7]\,
      Q => \^tx_data\(7),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg1_0,
      D => \axi_wdata_reg_n_0_[8]\,
      Q => slv_reg1(8),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg1_0,
      D => \axi_wdata_reg_n_0_[9]\,
      Q => slv_reg1(9),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg2[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => S_AXI_WVALID,
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      O => slv_reg2_2
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg2_2,
      D => p_2_in(0),
      Q => slv_reg2(0),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg2_2,
      D => \axi_wdata_reg_n_0_[10]\,
      Q => slv_reg2(10),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg2_2,
      D => \axi_wdata_reg_n_0_[11]\,
      Q => slv_reg2(11),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg2_2,
      D => \axi_wdata_reg_n_0_[12]\,
      Q => slv_reg2(12),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg2_2,
      D => \axi_wdata_reg_n_0_[13]\,
      Q => slv_reg2(13),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg2_2,
      D => \axi_wdata_reg_n_0_[14]\,
      Q => slv_reg2(14),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg2_2,
      D => \axi_wdata_reg_n_0_[15]\,
      Q => slv_reg2(15),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg2_2,
      D => \axi_wdata_reg_n_0_[16]\,
      Q => slv_reg2(16),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg2_2,
      D => \axi_wdata_reg_n_0_[17]\,
      Q => slv_reg2(17),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg2_2,
      D => \axi_wdata_reg_n_0_[18]\,
      Q => slv_reg2(18),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg2_2,
      D => \axi_wdata_reg_n_0_[19]\,
      Q => slv_reg2(19),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg2_2,
      D => p_2_in(1),
      Q => slv_reg2(1),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg2_2,
      D => \axi_wdata_reg_n_0_[20]\,
      Q => slv_reg2(20),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg2_2,
      D => \axi_wdata_reg_n_0_[21]\,
      Q => slv_reg2(21),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg2_2,
      D => \axi_wdata_reg_n_0_[22]\,
      Q => slv_reg2(22),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg2_2,
      D => \axi_wdata_reg_n_0_[23]\,
      Q => slv_reg2(23),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg2_2,
      D => \axi_wdata_reg_n_0_[24]\,
      Q => slv_reg2(24),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg2_2,
      D => \axi_wdata_reg_n_0_[25]\,
      Q => slv_reg2(25),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg2_2,
      D => \axi_wdata_reg_n_0_[26]\,
      Q => slv_reg2(26),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg2_2,
      D => \axi_wdata_reg_n_0_[27]\,
      Q => slv_reg2(27),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg2_2,
      D => \axi_wdata_reg_n_0_[28]\,
      Q => slv_reg2(28),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg2_2,
      D => \axi_wdata_reg_n_0_[29]\,
      Q => slv_reg2(29),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg2_2,
      D => p_2_in(2),
      Q => slv_reg2(2),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg2_2,
      D => \axi_wdata_reg_n_0_[30]\,
      Q => slv_reg2(30),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg2_2,
      D => \axi_wdata_reg_n_0_[31]\,
      Q => slv_reg2(31),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg2_2,
      D => p_2_in(3),
      Q => slv_reg2(3),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg2_2,
      D => \axi_wdata_reg_n_0_[4]\,
      Q => slv_reg2(4),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg2_2,
      D => \axi_wdata_reg_n_0_[5]\,
      Q => slv_reg2(5),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg2_2,
      D => \axi_wdata_reg_n_0_[6]\,
      Q => slv_reg2(6),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg2_2,
      D => \axi_wdata_reg_n_0_[7]\,
      Q => slv_reg2(7),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg2_2,
      D => \axi_wdata_reg_n_0_[8]\,
      Q => slv_reg2(8),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg2_2,
      D => \axi_wdata_reg_n_0_[9]\,
      Q => slv_reg2(9),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg3[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => S_AXI_WVALID,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      O => slv_reg3_1
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg3_1,
      D => p_2_in(0),
      Q => slv_reg3(0),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg3_1,
      D => \axi_wdata_reg_n_0_[10]\,
      Q => slv_reg3(10),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg3_1,
      D => \axi_wdata_reg_n_0_[11]\,
      Q => slv_reg3(11),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg3_1,
      D => \axi_wdata_reg_n_0_[12]\,
      Q => slv_reg3(12),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg3_1,
      D => \axi_wdata_reg_n_0_[13]\,
      Q => slv_reg3(13),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg3_1,
      D => \axi_wdata_reg_n_0_[14]\,
      Q => slv_reg3(14),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg3_1,
      D => \axi_wdata_reg_n_0_[15]\,
      Q => slv_reg3(15),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg3_1,
      D => \axi_wdata_reg_n_0_[16]\,
      Q => slv_reg3(16),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg3_1,
      D => \axi_wdata_reg_n_0_[17]\,
      Q => slv_reg3(17),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg3_1,
      D => \axi_wdata_reg_n_0_[18]\,
      Q => slv_reg3(18),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg3_1,
      D => \axi_wdata_reg_n_0_[19]\,
      Q => slv_reg3(19),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg3_1,
      D => p_2_in(1),
      Q => slv_reg3(1),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg3_1,
      D => \axi_wdata_reg_n_0_[20]\,
      Q => slv_reg3(20),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg3_1,
      D => \axi_wdata_reg_n_0_[21]\,
      Q => slv_reg3(21),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg3_1,
      D => \axi_wdata_reg_n_0_[22]\,
      Q => slv_reg3(22),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg3_1,
      D => \axi_wdata_reg_n_0_[23]\,
      Q => slv_reg3(23),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg3_1,
      D => \axi_wdata_reg_n_0_[24]\,
      Q => slv_reg3(24),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg3_1,
      D => \axi_wdata_reg_n_0_[25]\,
      Q => slv_reg3(25),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg3_1,
      D => \axi_wdata_reg_n_0_[26]\,
      Q => slv_reg3(26),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg3_1,
      D => \axi_wdata_reg_n_0_[27]\,
      Q => slv_reg3(27),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg3_1,
      D => \axi_wdata_reg_n_0_[28]\,
      Q => slv_reg3(28),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg3_1,
      D => \axi_wdata_reg_n_0_[29]\,
      Q => slv_reg3(29),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg3_1,
      D => p_2_in(2),
      Q => slv_reg3(2),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg3_1,
      D => \axi_wdata_reg_n_0_[30]\,
      Q => slv_reg3(30),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg3_1,
      D => \axi_wdata_reg_n_0_[31]\,
      Q => slv_reg3(31),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg3_1,
      D => p_2_in(3),
      Q => slv_reg3(3),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg3_1,
      D => \axi_wdata_reg_n_0_[4]\,
      Q => slv_reg3(4),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg3_1,
      D => \axi_wdata_reg_n_0_[5]\,
      Q => slv_reg3(5),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg3_1,
      D => \axi_wdata_reg_n_0_[6]\,
      Q => slv_reg3(6),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg3_1,
      D => \axi_wdata_reg_n_0_[7]\,
      Q => slv_reg3(7),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg3_1,
      D => \axi_wdata_reg_n_0_[8]\,
      Q => slv_reg3(8),
      R => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg3_1,
      D => \axi_wdata_reg_n_0_[9]\,
      Q => slv_reg3(9),
      R => \slv_reg0[0]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity king_bd_myip_slave_0_0 is
  port (
    BUSY : in STD_LOGIC;
    START : out STD_LOGIC;
    TX_DATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of king_bd_myip_slave_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of king_bd_myip_slave_0_0 : entity is "king_bd_myip_slave_0_0,myip_slave,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of king_bd_myip_slave_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of king_bd_myip_slave_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of king_bd_myip_slave_0_0 : entity is "myip_slave,Vivado 2024.1";
end king_bd_myip_slave_0_0;

architecture STRUCTURE of king_bd_myip_slave_0_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of S_AXI_ACLK : signal is "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of S_AXI_ACLK : signal is "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_ARESETN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN king_bd_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXI_ARESETN : signal is "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST";
  attribute X_INTERFACE_PARAMETER of S_AXI_ARESETN : signal is "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXI_ARREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute X_INTERFACE_INFO of S_AXI_ARVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute X_INTERFACE_INFO of S_AXI_AWREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute X_INTERFACE_INFO of S_AXI_AWVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute X_INTERFACE_INFO of S_AXI_BREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute X_INTERFACE_INFO of S_AXI_BVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute X_INTERFACE_INFO of S_AXI_RREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of S_AXI_RREADY : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN king_bd_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXI_RVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute X_INTERFACE_INFO of S_AXI_WREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute X_INTERFACE_INFO of S_AXI_WVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute X_INTERFACE_INFO of S_AXI_ARADDR : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute X_INTERFACE_INFO of S_AXI_ARPROT : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARPROT";
  attribute X_INTERFACE_INFO of S_AXI_AWADDR : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute X_INTERFACE_INFO of S_AXI_AWPROT : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWPROT";
  attribute X_INTERFACE_INFO of S_AXI_BRESP : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute X_INTERFACE_INFO of S_AXI_RDATA : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute X_INTERFACE_INFO of S_AXI_RRESP : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute X_INTERFACE_INFO of S_AXI_WDATA : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute X_INTERFACE_INFO of S_AXI_WSTRB : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
begin
  S_AXI_BRESP(1) <= \<const0>\;
  S_AXI_BRESP(0) <= \<const0>\;
  S_AXI_RRESP(1) <= \<const0>\;
  S_AXI_RRESP(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.king_bd_myip_slave_0_0_myip_slave
     port map (
      BUSY => BUSY,
      START => START,
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARADDR(1 downto 0) => S_AXI_ARADDR(3 downto 2),
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_AWADDR(1 downto 0) => S_AXI_AWADDR(3 downto 2),
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_BREADY => S_AXI_BREADY,
      S_AXI_BVALID => S_AXI_BVALID,
      S_AXI_RDATA(31 downto 0) => S_AXI_RDATA(31 downto 0),
      S_AXI_RREADY => S_AXI_RREADY,
      S_AXI_WDATA(31 downto 0) => S_AXI_WDATA(31 downto 0),
      S_AXI_WREADY => S_AXI_WREADY,
      S_AXI_WVALID => S_AXI_WVALID,
      TX_DATA(7 downto 0) => TX_DATA(7 downto 0),
      axi_arready_reg_0 => S_AXI_ARREADY,
      axi_awready_reg_0 => S_AXI_AWREADY,
      axi_rvalid_reg_0 => S_AXI_RVALID
    );
end STRUCTURE;
