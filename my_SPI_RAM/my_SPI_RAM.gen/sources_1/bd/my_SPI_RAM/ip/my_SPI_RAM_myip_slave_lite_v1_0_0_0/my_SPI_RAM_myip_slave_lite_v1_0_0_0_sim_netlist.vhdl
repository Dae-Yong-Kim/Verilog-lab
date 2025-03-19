-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Tue Jan 21 15:14:24 2025
-- Host        : COMSYS01 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Verilog-lab/my_SPI_RAM/my_SPI_RAM.gen/sources_1/bd/my_SPI_RAM/ip/my_SPI_RAM_myip_slave_lite_v1_0_0_0/my_SPI_RAM_myip_slave_lite_v1_0_0_0_sim_netlist.vhdl
-- Design      : my_SPI_RAM_myip_slave_lite_v1_0_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z007sclg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity my_SPI_RAM_myip_slave_lite_v1_0_0_0_myip_slave_lite_v1_0_S00_AXI is
  port (
    axi_awready_reg_0 : out STD_LOGIC;
    axi_wready_reg_0 : out STD_LOGIC;
    axi_arready_reg_0 : out STD_LOGIC;
    axi_rvalid_reg_0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 14 downto 0 );
    CMD : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_ARESETN : in STD_LOGIC;
    RD_DATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_BREADY : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of my_SPI_RAM_myip_slave_lite_v1_0_0_0_myip_slave_lite_v1_0_S00_AXI : entity is "myip_slave_lite_v1_0_S00_AXI";
end my_SPI_RAM_myip_slave_lite_v1_0_0_0_myip_slave_lite_v1_0_S00_AXI;

architecture STRUCTURE of my_SPI_RAM_myip_slave_lite_v1_0_0_0_myip_slave_lite_v1_0_S00_AXI is
  signal \FSM_sequential_state_read[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_read[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_write[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_write[1]_i_1_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal axi_arready_i_1_n_0 : STD_LOGIC;
  signal \^axi_arready_reg_0\ : STD_LOGIC;
  signal axi_awready01_out : STD_LOGIC;
  signal \axi_awready0__0\ : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal axi_awready_i_2_n_0 : STD_LOGIC;
  signal \^axi_awready_reg_0\ : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal \^axi_rvalid_reg_0\ : STD_LOGIC;
  signal axi_wready_i_1_n_0 : STD_LOGIC;
  signal \^axi_wready_reg_0\ : STD_LOGIC;
  signal cmd1 : STD_LOGIC;
  signal \cmd1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \cmd1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \cmd1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \cmd1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \cmd1_carry__0_n_0\ : STD_LOGIC;
  signal \cmd1_carry__0_n_1\ : STD_LOGIC;
  signal \cmd1_carry__0_n_2\ : STD_LOGIC;
  signal \cmd1_carry__0_n_3\ : STD_LOGIC;
  signal \cmd1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \cmd1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \cmd1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \cmd1_carry__1_n_2\ : STD_LOGIC;
  signal \cmd1_carry__1_n_3\ : STD_LOGIC;
  signal cmd1_carry_i_1_n_0 : STD_LOGIC;
  signal cmd1_carry_i_2_n_0 : STD_LOGIC;
  signal cmd1_carry_i_3_n_0 : STD_LOGIC;
  signal cmd1_carry_i_4_n_0 : STD_LOGIC;
  signal cmd1_carry_n_0 : STD_LOGIC;
  signal cmd1_carry_n_1 : STD_LOGIC;
  signal cmd1_carry_n_2 : STD_LOGIC;
  signal cmd1_carry_n_3 : STD_LOGIC;
  signal \cmd[0]_i_1_n_0\ : STD_LOGIC;
  signal \cmd[1]_i_1_n_0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal slv_reg0 : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[31]\ : STD_LOGIC;
  signal slv_reg1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal slv_reg2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal slv_reg2_0 : STD_LOGIC;
  signal slv_reg3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal slv_reg3_1 : STD_LOGIC;
  signal state_read : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal state_write : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal temp_reg0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_cmd1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cmd1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cmd1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_cmd1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_read_reg[0]\ : label is "Idle:00,Rdata:10,Raddr:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_read_reg[1]\ : label is "Idle:00,Rdata:10,Raddr:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_write_reg[0]\ : label is "Idle:00,Wdata:10,Waddr:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_write_reg[1]\ : label is "Idle:00,Wdata:10,Waddr:01";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cmd[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cmd[1]_i_1\ : label is "soft_lutpair0";
begin
  Q(14 downto 0) <= \^q\(14 downto 0);
  S_AXI_BVALID <= \^s_axi_bvalid\;
  axi_arready_reg_0 <= \^axi_arready_reg_0\;
  axi_awready_reg_0 <= \^axi_awready_reg_0\;
  axi_rvalid_reg_0 <= \^axi_rvalid_reg_0\;
  axi_wready_reg_0 <= \^axi_wready_reg_0\;
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
      R => axi_awready_i_1_n_0
    );
\FSM_sequential_state_read_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \FSM_sequential_state_read[1]_i_1_n_0\,
      Q => state_read(1),
      R => axi_awready_i_1_n_0
    );
\FSM_sequential_state_write[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0007777FFFF"
    )
        port map (
      I0 => S_AXI_AWVALID,
      I1 => \^axi_awready_reg_0\,
      I2 => \^axi_wready_reg_0\,
      I3 => S_AXI_WVALID,
      I4 => state_write(0),
      I5 => state_write(1),
      O => \FSM_sequential_state_write[0]_i_1_n_0\
    );
\FSM_sequential_state_write[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0FFF88880000"
    )
        port map (
      I0 => \^axi_awready_reg_0\,
      I1 => S_AXI_AWVALID,
      I2 => \^axi_wready_reg_0\,
      I3 => S_AXI_WVALID,
      I4 => state_write(0),
      I5 => state_write(1),
      O => \FSM_sequential_state_write[1]_i_1_n_0\
    );
\FSM_sequential_state_write_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \FSM_sequential_state_write[0]_i_1_n_0\,
      Q => state_write(0),
      R => axi_awready_i_1_n_0
    );
\FSM_sequential_state_write_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \FSM_sequential_state_write[1]_i_1_n_0\,
      Q => state_write(1),
      R => axi_awready_i_1_n_0
    );
\S_AXI_RDATA[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => slv_reg1(0),
      I1 => \^q\(0),
      I2 => slv_reg3(0),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(0),
      O => S_AXI_RDATA(0)
    );
\S_AXI_RDATA[10]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CF0AC00A"
    )
        port map (
      I0 => \^q\(10),
      I1 => slv_reg3(10),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg2(10),
      O => S_AXI_RDATA(10)
    );
\S_AXI_RDATA[11]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CF0AC00A"
    )
        port map (
      I0 => \^q\(11),
      I1 => slv_reg3(11),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg2(11),
      O => S_AXI_RDATA(11)
    );
\S_AXI_RDATA[12]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CF0AC00A"
    )
        port map (
      I0 => \^q\(12),
      I1 => slv_reg3(12),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg2(12),
      O => S_AXI_RDATA(12)
    );
\S_AXI_RDATA[13]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CF0AC00A"
    )
        port map (
      I0 => \^q\(13),
      I1 => slv_reg3(13),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg2(13),
      O => S_AXI_RDATA(13)
    );
\S_AXI_RDATA[14]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CF0AC00A"
    )
        port map (
      I0 => \^q\(14),
      I1 => slv_reg3(14),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg2(14),
      O => S_AXI_RDATA(14)
    );
\S_AXI_RDATA[15]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CF0AC00A"
    )
        port map (
      I0 => p_1_in(0),
      I1 => slv_reg3(15),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg2(15),
      O => S_AXI_RDATA(15)
    );
\S_AXI_RDATA[16]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CF0AC00A"
    )
        port map (
      I0 => p_1_in(1),
      I1 => slv_reg3(16),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg2(16),
      O => S_AXI_RDATA(16)
    );
\S_AXI_RDATA[17]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CF0AC00A"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[17]\,
      I1 => slv_reg3(17),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg2(17),
      O => S_AXI_RDATA(17)
    );
\S_AXI_RDATA[18]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CF0AC00A"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[18]\,
      I1 => slv_reg3(18),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg2(18),
      O => S_AXI_RDATA(18)
    );
\S_AXI_RDATA[19]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CF0AC00A"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[19]\,
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
      I0 => slv_reg1(1),
      I1 => \^q\(1),
      I2 => slv_reg3(1),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(1),
      O => S_AXI_RDATA(1)
    );
\S_AXI_RDATA[20]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CF0AC00A"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[20]\,
      I1 => slv_reg3(20),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg2(20),
      O => S_AXI_RDATA(20)
    );
\S_AXI_RDATA[21]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CF0AC00A"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[21]\,
      I1 => slv_reg3(21),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg2(21),
      O => S_AXI_RDATA(21)
    );
\S_AXI_RDATA[22]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CF0AC00A"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[22]\,
      I1 => slv_reg3(22),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg2(22),
      O => S_AXI_RDATA(22)
    );
\S_AXI_RDATA[23]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CF0AC00A"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[23]\,
      I1 => slv_reg3(23),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg2(23),
      O => S_AXI_RDATA(23)
    );
\S_AXI_RDATA[24]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CF0AC00A"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[24]\,
      I1 => slv_reg3(24),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg2(24),
      O => S_AXI_RDATA(24)
    );
\S_AXI_RDATA[25]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CF0AC00A"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[25]\,
      I1 => slv_reg3(25),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg2(25),
      O => S_AXI_RDATA(25)
    );
\S_AXI_RDATA[26]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CF0AC00A"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[26]\,
      I1 => slv_reg3(26),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg2(26),
      O => S_AXI_RDATA(26)
    );
\S_AXI_RDATA[27]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CF0AC00A"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[27]\,
      I1 => slv_reg3(27),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg2(27),
      O => S_AXI_RDATA(27)
    );
\S_AXI_RDATA[28]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CF0AC00A"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[28]\,
      I1 => slv_reg3(28),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg2(28),
      O => S_AXI_RDATA(28)
    );
\S_AXI_RDATA[29]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CF0AC00A"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[29]\,
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
      I0 => slv_reg1(2),
      I1 => \^q\(2),
      I2 => slv_reg3(2),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(2),
      O => S_AXI_RDATA(2)
    );
\S_AXI_RDATA[30]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CF0AC00A"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[30]\,
      I1 => slv_reg3(30),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg2(30),
      O => S_AXI_RDATA(30)
    );
\S_AXI_RDATA[31]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CF0AC00A"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[31]\,
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
      I0 => slv_reg1(3),
      I1 => \^q\(3),
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
      I0 => slv_reg1(4),
      I1 => \^q\(4),
      I2 => slv_reg3(4),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(4),
      O => S_AXI_RDATA(4)
    );
\S_AXI_RDATA[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => slv_reg1(5),
      I1 => \^q\(5),
      I2 => slv_reg3(5),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(5),
      O => S_AXI_RDATA(5)
    );
\S_AXI_RDATA[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => slv_reg1(6),
      I1 => \^q\(6),
      I2 => slv_reg3(6),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(6),
      O => S_AXI_RDATA(6)
    );
\S_AXI_RDATA[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => slv_reg1(7),
      I1 => \^q\(7),
      I2 => slv_reg3(7),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(7),
      O => S_AXI_RDATA(7)
    );
\S_AXI_RDATA[8]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CF0AC00A"
    )
        port map (
      I0 => \^q\(8),
      I1 => slv_reg3(8),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg2(8),
      O => S_AXI_RDATA(8)
    );
\S_AXI_RDATA[9]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CF0AC00A"
    )
        port map (
      I0 => \^q\(9),
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
      R => axi_awready_i_1_n_0
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => S_AXI_ARESETN,
      O => axi_awready_i_1_n_0
    );
axi_awready_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C4C4C4C4FFCFCFCF"
    )
        port map (
      I0 => S_AXI_AWVALID,
      I1 => \^axi_awready_reg_0\,
      I2 => state_write(1),
      I3 => \^axi_wready_reg_0\,
      I4 => S_AXI_WVALID,
      I5 => state_write(0),
      O => axi_awready_i_2_n_0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_awready_i_2_n_0,
      Q => \^axi_awready_reg_0\,
      R => axi_awready_i_1_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AF0AAF2AA00AAA2A"
    )
        port map (
      I0 => \^s_axi_bvalid\,
      I1 => \axi_awready0__0\,
      I2 => state_write(0),
      I3 => state_write(1),
      I4 => S_AXI_BREADY,
      I5 => axi_awready01_out,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => S_AXI_AWVALID,
      I1 => \^axi_awready_reg_0\,
      O => \axi_awready0__0\
    );
axi_bvalid_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => S_AXI_WVALID,
      I1 => \^axi_wready_reg_0\,
      O => axi_awready01_out
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s_axi_bvalid\,
      R => axi_awready_i_1_n_0
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
      R => axi_awready_i_1_n_0
    );
axi_wready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF08FF080000F000"
    )
        port map (
      I0 => S_AXI_AWVALID,
      I1 => \^axi_awready_reg_0\,
      I2 => state_write(1),
      I3 => \^axi_wready_reg_0\,
      I4 => S_AXI_WVALID,
      I5 => state_write(0),
      O => axi_wready_i_1_n_0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_wready_i_1_n_0,
      Q => \^axi_wready_reg_0\,
      R => axi_awready_i_1_n_0
    );
cmd1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => cmd1_carry_n_0,
      CO(2) => cmd1_carry_n_1,
      CO(1) => cmd1_carry_n_2,
      CO(0) => cmd1_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => NLW_cmd1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => cmd1_carry_i_1_n_0,
      S(2) => cmd1_carry_i_2_n_0,
      S(1) => cmd1_carry_i_3_n_0,
      S(0) => cmd1_carry_i_4_n_0
    );
\cmd1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => cmd1_carry_n_0,
      CO(3) => \cmd1_carry__0_n_0\,
      CO(2) => \cmd1_carry__0_n_1\,
      CO(1) => \cmd1_carry__0_n_2\,
      CO(0) => \cmd1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => \NLW_cmd1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \cmd1_carry__0_i_1_n_0\,
      S(2) => \cmd1_carry__0_i_2_n_0\,
      S(1) => \cmd1_carry__0_i_3_n_0\,
      S(0) => \cmd1_carry__0_i_4_n_0\
    );
\cmd1_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => temp_reg0(21),
      I1 => \slv_reg0_reg_n_0_[21]\,
      I2 => \slv_reg0_reg_n_0_[23]\,
      I3 => temp_reg0(23),
      I4 => \slv_reg0_reg_n_0_[22]\,
      I5 => temp_reg0(22),
      O => \cmd1_carry__0_i_1_n_0\
    );
\cmd1_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => temp_reg0(18),
      I1 => \slv_reg0_reg_n_0_[18]\,
      I2 => \slv_reg0_reg_n_0_[20]\,
      I3 => temp_reg0(20),
      I4 => \slv_reg0_reg_n_0_[19]\,
      I5 => temp_reg0(19),
      O => \cmd1_carry__0_i_2_n_0\
    );
\cmd1_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => temp_reg0(15),
      I1 => p_1_in(0),
      I2 => \slv_reg0_reg_n_0_[17]\,
      I3 => temp_reg0(17),
      I4 => p_1_in(1),
      I5 => temp_reg0(16),
      O => \cmd1_carry__0_i_3_n_0\
    );
\cmd1_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => temp_reg0(12),
      I1 => \^q\(12),
      I2 => \^q\(14),
      I3 => temp_reg0(14),
      I4 => \^q\(13),
      I5 => temp_reg0(13),
      O => \cmd1_carry__0_i_4_n_0\
    );
\cmd1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cmd1_carry__0_n_0\,
      CO(3) => \NLW_cmd1_carry__1_CO_UNCONNECTED\(3),
      CO(2) => cmd1,
      CO(1) => \cmd1_carry__1_n_2\,
      CO(0) => \cmd1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0111",
      O(3 downto 0) => \NLW_cmd1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \cmd1_carry__1_i_1_n_0\,
      S(1) => \cmd1_carry__1_i_2_n_0\,
      S(0) => \cmd1_carry__1_i_3_n_0\
    );
\cmd1_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => temp_reg0(30),
      I1 => \slv_reg0_reg_n_0_[30]\,
      I2 => temp_reg0(31),
      I3 => \slv_reg0_reg_n_0_[31]\,
      O => \cmd1_carry__1_i_1_n_0\
    );
\cmd1_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => temp_reg0(27),
      I1 => \slv_reg0_reg_n_0_[27]\,
      I2 => \slv_reg0_reg_n_0_[29]\,
      I3 => temp_reg0(29),
      I4 => \slv_reg0_reg_n_0_[28]\,
      I5 => temp_reg0(28),
      O => \cmd1_carry__1_i_2_n_0\
    );
\cmd1_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => temp_reg0(24),
      I1 => \slv_reg0_reg_n_0_[24]\,
      I2 => \slv_reg0_reg_n_0_[26]\,
      I3 => temp_reg0(26),
      I4 => \slv_reg0_reg_n_0_[25]\,
      I5 => temp_reg0(25),
      O => \cmd1_carry__1_i_3_n_0\
    );
cmd1_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => temp_reg0(9),
      I1 => \^q\(9),
      I2 => \^q\(11),
      I3 => temp_reg0(11),
      I4 => \^q\(10),
      I5 => temp_reg0(10),
      O => cmd1_carry_i_1_n_0
    );
cmd1_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => temp_reg0(6),
      I1 => \^q\(6),
      I2 => \^q\(8),
      I3 => temp_reg0(8),
      I4 => \^q\(7),
      I5 => temp_reg0(7),
      O => cmd1_carry_i_2_n_0
    );
cmd1_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => temp_reg0(3),
      I1 => \^q\(3),
      I2 => \^q\(5),
      I3 => temp_reg0(5),
      I4 => \^q\(4),
      I5 => temp_reg0(4),
      O => cmd1_carry_i_3_n_0
    );
cmd1_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => temp_reg0(0),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => temp_reg0(2),
      I4 => \^q\(1),
      I5 => temp_reg0(1),
      O => cmd1_carry_i_4_n_0
    );
\cmd[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => p_1_in(0),
      I1 => cmd1,
      I2 => S_AXI_ARESETN,
      O => \cmd[0]_i_1_n_0\
    );
\cmd[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => p_1_in(1),
      I1 => cmd1,
      I2 => S_AXI_ARESETN,
      O => \cmd[1]_i_1_n_0\
    );
\cmd_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \cmd[0]_i_1_n_0\,
      Q => CMD(0),
      R => '0'
    );
\cmd_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \cmd[1]_i_1_n_0\,
      Q => CMD(1),
      R => '0'
    );
\slv_reg0[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \^axi_awready_reg_0\,
      I1 => S_AXI_AWVALID,
      I2 => S_AXI_AWADDR(1),
      I3 => S_AXI_AWADDR(0),
      O => slv_reg0
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg0,
      D => S_AXI_WDATA(0),
      Q => \^q\(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg0,
      D => S_AXI_WDATA(10),
      Q => \^q\(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg0,
      D => S_AXI_WDATA(11),
      Q => \^q\(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg0,
      D => S_AXI_WDATA(12),
      Q => \^q\(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg0,
      D => S_AXI_WDATA(13),
      Q => \^q\(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg0,
      D => S_AXI_WDATA(14),
      Q => \^q\(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg0,
      D => S_AXI_WDATA(15),
      Q => p_1_in(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg0,
      D => S_AXI_WDATA(16),
      Q => p_1_in(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg0,
      D => S_AXI_WDATA(17),
      Q => \slv_reg0_reg_n_0_[17]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg0,
      D => S_AXI_WDATA(18),
      Q => \slv_reg0_reg_n_0_[18]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg0,
      D => S_AXI_WDATA(19),
      Q => \slv_reg0_reg_n_0_[19]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg0,
      D => S_AXI_WDATA(1),
      Q => \^q\(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg0,
      D => S_AXI_WDATA(20),
      Q => \slv_reg0_reg_n_0_[20]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg0,
      D => S_AXI_WDATA(21),
      Q => \slv_reg0_reg_n_0_[21]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg0,
      D => S_AXI_WDATA(22),
      Q => \slv_reg0_reg_n_0_[22]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg0,
      D => S_AXI_WDATA(23),
      Q => \slv_reg0_reg_n_0_[23]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg0,
      D => S_AXI_WDATA(24),
      Q => \slv_reg0_reg_n_0_[24]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg0,
      D => S_AXI_WDATA(25),
      Q => \slv_reg0_reg_n_0_[25]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg0,
      D => S_AXI_WDATA(26),
      Q => \slv_reg0_reg_n_0_[26]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg0,
      D => S_AXI_WDATA(27),
      Q => \slv_reg0_reg_n_0_[27]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg0,
      D => S_AXI_WDATA(28),
      Q => \slv_reg0_reg_n_0_[28]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg0,
      D => S_AXI_WDATA(29),
      Q => \slv_reg0_reg_n_0_[29]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg0,
      D => S_AXI_WDATA(2),
      Q => \^q\(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg0,
      D => S_AXI_WDATA(30),
      Q => \slv_reg0_reg_n_0_[30]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg0,
      D => S_AXI_WDATA(31),
      Q => \slv_reg0_reg_n_0_[31]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg0,
      D => S_AXI_WDATA(3),
      Q => \^q\(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg0,
      D => S_AXI_WDATA(4),
      Q => \^q\(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg0,
      D => S_AXI_WDATA(5),
      Q => \^q\(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg0,
      D => S_AXI_WDATA(6),
      Q => \^q\(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg0,
      D => S_AXI_WDATA(7),
      Q => \^q\(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg0,
      D => S_AXI_WDATA(8),
      Q => \^q\(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg0,
      D => S_AXI_WDATA(9),
      Q => \^q\(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => RD_DATA(0),
      Q => slv_reg1(0),
      R => '0'
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => RD_DATA(1),
      Q => slv_reg1(1),
      R => '0'
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => RD_DATA(2),
      Q => slv_reg1(2),
      R => '0'
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => RD_DATA(3),
      Q => slv_reg1(3),
      R => '0'
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => RD_DATA(4),
      Q => slv_reg1(4),
      R => '0'
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => RD_DATA(5),
      Q => slv_reg1(5),
      R => '0'
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => RD_DATA(6),
      Q => slv_reg1(6),
      R => '0'
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => RD_DATA(7),
      Q => slv_reg1(7),
      R => '0'
    );
\slv_reg2[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^axi_awready_reg_0\,
      I1 => S_AXI_AWVALID,
      I2 => S_AXI_AWADDR(0),
      I3 => S_AXI_AWADDR(1),
      O => slv_reg2_0
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg2_0,
      D => S_AXI_WDATA(0),
      Q => slv_reg2(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg2_0,
      D => S_AXI_WDATA(10),
      Q => slv_reg2(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg2_0,
      D => S_AXI_WDATA(11),
      Q => slv_reg2(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg2_0,
      D => S_AXI_WDATA(12),
      Q => slv_reg2(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg2_0,
      D => S_AXI_WDATA(13),
      Q => slv_reg2(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg2_0,
      D => S_AXI_WDATA(14),
      Q => slv_reg2(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg2_0,
      D => S_AXI_WDATA(15),
      Q => slv_reg2(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg2_0,
      D => S_AXI_WDATA(16),
      Q => slv_reg2(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg2_0,
      D => S_AXI_WDATA(17),
      Q => slv_reg2(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg2_0,
      D => S_AXI_WDATA(18),
      Q => slv_reg2(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg2_0,
      D => S_AXI_WDATA(19),
      Q => slv_reg2(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg2_0,
      D => S_AXI_WDATA(1),
      Q => slv_reg2(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg2_0,
      D => S_AXI_WDATA(20),
      Q => slv_reg2(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg2_0,
      D => S_AXI_WDATA(21),
      Q => slv_reg2(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg2_0,
      D => S_AXI_WDATA(22),
      Q => slv_reg2(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg2_0,
      D => S_AXI_WDATA(23),
      Q => slv_reg2(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg2_0,
      D => S_AXI_WDATA(24),
      Q => slv_reg2(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg2_0,
      D => S_AXI_WDATA(25),
      Q => slv_reg2(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg2_0,
      D => S_AXI_WDATA(26),
      Q => slv_reg2(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg2_0,
      D => S_AXI_WDATA(27),
      Q => slv_reg2(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg2_0,
      D => S_AXI_WDATA(28),
      Q => slv_reg2(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg2_0,
      D => S_AXI_WDATA(29),
      Q => slv_reg2(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg2_0,
      D => S_AXI_WDATA(2),
      Q => slv_reg2(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg2_0,
      D => S_AXI_WDATA(30),
      Q => slv_reg2(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg2_0,
      D => S_AXI_WDATA(31),
      Q => slv_reg2(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg2_0,
      D => S_AXI_WDATA(3),
      Q => slv_reg2(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg2_0,
      D => S_AXI_WDATA(4),
      Q => slv_reg2(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg2_0,
      D => S_AXI_WDATA(5),
      Q => slv_reg2(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg2_0,
      D => S_AXI_WDATA(6),
      Q => slv_reg2(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg2_0,
      D => S_AXI_WDATA(7),
      Q => slv_reg2(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg2_0,
      D => S_AXI_WDATA(8),
      Q => slv_reg2(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg2_0,
      D => S_AXI_WDATA(9),
      Q => slv_reg2(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg3[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^axi_awready_reg_0\,
      I1 => S_AXI_AWVALID,
      I2 => S_AXI_AWADDR(1),
      I3 => S_AXI_AWADDR(0),
      O => slv_reg3_1
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg3_1,
      D => S_AXI_WDATA(0),
      Q => slv_reg3(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg3_1,
      D => S_AXI_WDATA(10),
      Q => slv_reg3(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg3_1,
      D => S_AXI_WDATA(11),
      Q => slv_reg3(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg3_1,
      D => S_AXI_WDATA(12),
      Q => slv_reg3(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg3_1,
      D => S_AXI_WDATA(13),
      Q => slv_reg3(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg3_1,
      D => S_AXI_WDATA(14),
      Q => slv_reg3(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg3_1,
      D => S_AXI_WDATA(15),
      Q => slv_reg3(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg3_1,
      D => S_AXI_WDATA(16),
      Q => slv_reg3(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg3_1,
      D => S_AXI_WDATA(17),
      Q => slv_reg3(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg3_1,
      D => S_AXI_WDATA(18),
      Q => slv_reg3(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg3_1,
      D => S_AXI_WDATA(19),
      Q => slv_reg3(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg3_1,
      D => S_AXI_WDATA(1),
      Q => slv_reg3(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg3_1,
      D => S_AXI_WDATA(20),
      Q => slv_reg3(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg3_1,
      D => S_AXI_WDATA(21),
      Q => slv_reg3(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg3_1,
      D => S_AXI_WDATA(22),
      Q => slv_reg3(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg3_1,
      D => S_AXI_WDATA(23),
      Q => slv_reg3(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg3_1,
      D => S_AXI_WDATA(24),
      Q => slv_reg3(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg3_1,
      D => S_AXI_WDATA(25),
      Q => slv_reg3(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg3_1,
      D => S_AXI_WDATA(26),
      Q => slv_reg3(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg3_1,
      D => S_AXI_WDATA(27),
      Q => slv_reg3(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg3_1,
      D => S_AXI_WDATA(28),
      Q => slv_reg3(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg3_1,
      D => S_AXI_WDATA(29),
      Q => slv_reg3(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg3_1,
      D => S_AXI_WDATA(2),
      Q => slv_reg3(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg3_1,
      D => S_AXI_WDATA(30),
      Q => slv_reg3(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg3_1,
      D => S_AXI_WDATA(31),
      Q => slv_reg3(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg3_1,
      D => S_AXI_WDATA(3),
      Q => slv_reg3(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg3_1,
      D => S_AXI_WDATA(4),
      Q => slv_reg3(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg3_1,
      D => S_AXI_WDATA(5),
      Q => slv_reg3(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg3_1,
      D => S_AXI_WDATA(6),
      Q => slv_reg3(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg3_1,
      D => S_AXI_WDATA(7),
      Q => slv_reg3(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg3_1,
      D => S_AXI_WDATA(8),
      Q => slv_reg3(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg3_1,
      D => S_AXI_WDATA(9),
      Q => slv_reg3(9),
      R => axi_awready_i_1_n_0
    );
\temp_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => cmd1,
      D => \^q\(0),
      Q => temp_reg0(0),
      R => axi_awready_i_1_n_0
    );
\temp_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => cmd1,
      D => \^q\(10),
      Q => temp_reg0(10),
      R => axi_awready_i_1_n_0
    );
\temp_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => cmd1,
      D => \^q\(11),
      Q => temp_reg0(11),
      R => axi_awready_i_1_n_0
    );
\temp_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => cmd1,
      D => \^q\(12),
      Q => temp_reg0(12),
      R => axi_awready_i_1_n_0
    );
\temp_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => cmd1,
      D => \^q\(13),
      Q => temp_reg0(13),
      R => axi_awready_i_1_n_0
    );
\temp_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => cmd1,
      D => \^q\(14),
      Q => temp_reg0(14),
      R => axi_awready_i_1_n_0
    );
\temp_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => cmd1,
      D => p_1_in(0),
      Q => temp_reg0(15),
      R => axi_awready_i_1_n_0
    );
\temp_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => cmd1,
      D => p_1_in(1),
      Q => temp_reg0(16),
      R => axi_awready_i_1_n_0
    );
\temp_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => cmd1,
      D => \slv_reg0_reg_n_0_[17]\,
      Q => temp_reg0(17),
      R => axi_awready_i_1_n_0
    );
\temp_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => cmd1,
      D => \slv_reg0_reg_n_0_[18]\,
      Q => temp_reg0(18),
      R => axi_awready_i_1_n_0
    );
\temp_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => cmd1,
      D => \slv_reg0_reg_n_0_[19]\,
      Q => temp_reg0(19),
      R => axi_awready_i_1_n_0
    );
\temp_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => cmd1,
      D => \^q\(1),
      Q => temp_reg0(1),
      R => axi_awready_i_1_n_0
    );
\temp_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => cmd1,
      D => \slv_reg0_reg_n_0_[20]\,
      Q => temp_reg0(20),
      R => axi_awready_i_1_n_0
    );
\temp_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => cmd1,
      D => \slv_reg0_reg_n_0_[21]\,
      Q => temp_reg0(21),
      R => axi_awready_i_1_n_0
    );
\temp_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => cmd1,
      D => \slv_reg0_reg_n_0_[22]\,
      Q => temp_reg0(22),
      R => axi_awready_i_1_n_0
    );
\temp_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => cmd1,
      D => \slv_reg0_reg_n_0_[23]\,
      Q => temp_reg0(23),
      R => axi_awready_i_1_n_0
    );
\temp_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => cmd1,
      D => \slv_reg0_reg_n_0_[24]\,
      Q => temp_reg0(24),
      R => axi_awready_i_1_n_0
    );
\temp_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => cmd1,
      D => \slv_reg0_reg_n_0_[25]\,
      Q => temp_reg0(25),
      R => axi_awready_i_1_n_0
    );
\temp_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => cmd1,
      D => \slv_reg0_reg_n_0_[26]\,
      Q => temp_reg0(26),
      R => axi_awready_i_1_n_0
    );
\temp_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => cmd1,
      D => \slv_reg0_reg_n_0_[27]\,
      Q => temp_reg0(27),
      R => axi_awready_i_1_n_0
    );
\temp_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => cmd1,
      D => \slv_reg0_reg_n_0_[28]\,
      Q => temp_reg0(28),
      R => axi_awready_i_1_n_0
    );
\temp_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => cmd1,
      D => \slv_reg0_reg_n_0_[29]\,
      Q => temp_reg0(29),
      R => axi_awready_i_1_n_0
    );
\temp_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => cmd1,
      D => \^q\(2),
      Q => temp_reg0(2),
      R => axi_awready_i_1_n_0
    );
\temp_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => cmd1,
      D => \slv_reg0_reg_n_0_[30]\,
      Q => temp_reg0(30),
      R => axi_awready_i_1_n_0
    );
\temp_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => cmd1,
      D => \slv_reg0_reg_n_0_[31]\,
      Q => temp_reg0(31),
      R => axi_awready_i_1_n_0
    );
\temp_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => cmd1,
      D => \^q\(3),
      Q => temp_reg0(3),
      R => axi_awready_i_1_n_0
    );
\temp_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => cmd1,
      D => \^q\(4),
      Q => temp_reg0(4),
      R => axi_awready_i_1_n_0
    );
\temp_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => cmd1,
      D => \^q\(5),
      Q => temp_reg0(5),
      R => axi_awready_i_1_n_0
    );
\temp_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => cmd1,
      D => \^q\(6),
      Q => temp_reg0(6),
      R => axi_awready_i_1_n_0
    );
\temp_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => cmd1,
      D => \^q\(7),
      Q => temp_reg0(7),
      R => axi_awready_i_1_n_0
    );
\temp_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => cmd1,
      D => \^q\(8),
      Q => temp_reg0(8),
      R => axi_awready_i_1_n_0
    );
\temp_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => cmd1,
      D => \^q\(9),
      Q => temp_reg0(9),
      R => axi_awready_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity my_SPI_RAM_myip_slave_lite_v1_0_0_0 is
  port (
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
    S_AXI_RREADY : in STD_LOGIC;
    CMD : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ADDR : out STD_LOGIC_VECTOR ( 6 downto 0 );
    WR_DATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    RD_DATA : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of my_SPI_RAM_myip_slave_lite_v1_0_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of my_SPI_RAM_myip_slave_lite_v1_0_0_0 : entity is "my_SPI_RAM_myip_slave_lite_v1_0_0_0,myip_slave_lite_v1_0_S00_AXI,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of my_SPI_RAM_myip_slave_lite_v1_0_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of my_SPI_RAM_myip_slave_lite_v1_0_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of my_SPI_RAM_myip_slave_lite_v1_0_0_0 : entity is "myip_slave_lite_v1_0_S00_AXI,Vivado 2024.1";
end my_SPI_RAM_myip_slave_lite_v1_0_0_0;

architecture STRUCTURE of my_SPI_RAM_myip_slave_lite_v1_0_0_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of S_AXI_ACLK : signal is "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of S_AXI_ACLK : signal is "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_ARESETN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN my_SPI_RAM_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXI_ARESETN : signal is "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST";
  attribute X_INTERFACE_PARAMETER of S_AXI_ARESETN : signal is "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXI_ARREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute X_INTERFACE_INFO of S_AXI_ARVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute X_INTERFACE_INFO of S_AXI_AWREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute X_INTERFACE_INFO of S_AXI_AWVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute X_INTERFACE_INFO of S_AXI_BREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute X_INTERFACE_INFO of S_AXI_BVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute X_INTERFACE_INFO of S_AXI_RREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of S_AXI_RREADY : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN my_SPI_RAM_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
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
inst: entity work.my_SPI_RAM_myip_slave_lite_v1_0_0_0_myip_slave_lite_v1_0_S00_AXI
     port map (
      CMD(1 downto 0) => CMD(1 downto 0),
      Q(14 downto 8) => ADDR(6 downto 0),
      Q(7 downto 0) => WR_DATA(7 downto 0),
      RD_DATA(7 downto 0) => RD_DATA(7 downto 0),
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
      S_AXI_WVALID => S_AXI_WVALID,
      axi_arready_reg_0 => S_AXI_ARREADY,
      axi_awready_reg_0 => S_AXI_AWREADY,
      axi_rvalid_reg_0 => S_AXI_RVALID,
      axi_wready_reg_0 => S_AXI_WREADY
    );
end STRUCTURE;
