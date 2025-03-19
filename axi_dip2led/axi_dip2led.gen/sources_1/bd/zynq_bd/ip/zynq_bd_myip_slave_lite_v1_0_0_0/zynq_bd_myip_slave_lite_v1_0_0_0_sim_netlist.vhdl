-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Sun Dec 22 18:19:07 2024
-- Host        : COMSYS01 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Verilog-lab/axi_dip2led/axi_dip2led.gen/sources_1/bd/zynq_bd/ip/zynq_bd_myip_slave_lite_v1_0_0_0/zynq_bd_myip_slave_lite_v1_0_0_0_sim_netlist.vhdl
-- Design      : zynq_bd_myip_slave_lite_v1_0_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z007sclg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zynq_bd_myip_slave_lite_v1_0_0_0_myip_slave_lite_v1_0_S00_AXI is
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
    SW : in STD_LOGIC_VECTOR ( 3 downto 0 );
    LED : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ADDR_LSB : integer;
  attribute ADDR_LSB of zynq_bd_myip_slave_lite_v1_0_0_0_myip_slave_lite_v1_0_S00_AXI : entity is 2;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of zynq_bd_myip_slave_lite_v1_0_0_0_myip_slave_lite_v1_0_S00_AXI : entity is 4;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of zynq_bd_myip_slave_lite_v1_0_0_0_myip_slave_lite_v1_0_S00_AXI : entity is 32;
  attribute Idle : string;
  attribute Idle of zynq_bd_myip_slave_lite_v1_0_0_0_myip_slave_lite_v1_0_S00_AXI : entity is "2'b00";
  attribute OPT_MEM_ADDR_BITS : integer;
  attribute OPT_MEM_ADDR_BITS of zynq_bd_myip_slave_lite_v1_0_0_0_myip_slave_lite_v1_0_S00_AXI : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of zynq_bd_myip_slave_lite_v1_0_0_0_myip_slave_lite_v1_0_S00_AXI : entity is "myip_slave_lite_v1_0_S00_AXI";
  attribute Raddr : string;
  attribute Raddr of zynq_bd_myip_slave_lite_v1_0_0_0_myip_slave_lite_v1_0_S00_AXI : entity is "2'b10";
  attribute Rdata : string;
  attribute Rdata of zynq_bd_myip_slave_lite_v1_0_0_0_myip_slave_lite_v1_0_S00_AXI : entity is "2'b11";
  attribute Waddr : string;
  attribute Waddr of zynq_bd_myip_slave_lite_v1_0_0_0_myip_slave_lite_v1_0_S00_AXI : entity is "2'b10";
  attribute Wdata : string;
  attribute Wdata of zynq_bd_myip_slave_lite_v1_0_0_0_myip_slave_lite_v1_0_S00_AXI : entity is "2'b11";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of zynq_bd_myip_slave_lite_v1_0_0_0_myip_slave_lite_v1_0_S00_AXI : entity is "soft";
end zynq_bd_myip_slave_lite_v1_0_0_0_myip_slave_lite_v1_0_S00_AXI;

architecture STRUCTURE of zynq_bd_myip_slave_lite_v1_0_0_0_myip_slave_lite_v1_0_S00_AXI is
  signal \<const0>\ : STD_LOGIC;
  signal \FSM_onehot_state_write[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_write[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_write[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_write[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_write_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_sequential_state_read[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_read[1]_i_1_n_0\ : STD_LOGIC;
  signal \^led\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal \^s_axi_rvalid\ : STD_LOGIC;
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of S_AXI_RVALID : signal is std.standard.true;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal axi_arready_i_1_n_0 : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal axi_awready_i_2_n_0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_bvalid_i_2_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_2_n_0 : STD_LOGIC;
  signal axi_wdata : STD_LOGIC;
  signal \axi_wdata[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_wdata__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_wready : STD_LOGIC;
  signal axi_wready_i_1_n_0 : STD_LOGIC;
  signal slv_reg_led : STD_LOGIC;
  signal slv_reg_sw : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute MARK_DEBUG of slv_reg_sw : signal is std.standard.true;
  signal state_read : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_write_reg[0]\ : label is "Idle:001,Wdata:010,Waddr:100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_write_reg[1]\ : label is "Idle:001,Wdata:010,Waddr:100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_write_reg[2]\ : label is "Idle:001,Wdata:010,Waddr:100";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_read_reg[0]\ : label is "Idle:00,Rdata:10,Raddr:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_read_reg[1]\ : label is "Idle:00,Rdata:10,Raddr:01";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_araddr[3]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of axi_rvalid_i_2 : label is "soft_lutpair0";
  attribute KEEP : string;
  attribute KEEP of \slv_reg_sw_reg[0]\ : label is "yes";
  attribute KEEP of \slv_reg_sw_reg[10]\ : label is "yes";
  attribute KEEP of \slv_reg_sw_reg[11]\ : label is "yes";
  attribute KEEP of \slv_reg_sw_reg[12]\ : label is "yes";
  attribute KEEP of \slv_reg_sw_reg[13]\ : label is "yes";
  attribute KEEP of \slv_reg_sw_reg[14]\ : label is "yes";
  attribute KEEP of \slv_reg_sw_reg[15]\ : label is "yes";
  attribute KEEP of \slv_reg_sw_reg[16]\ : label is "yes";
  attribute KEEP of \slv_reg_sw_reg[17]\ : label is "yes";
  attribute KEEP of \slv_reg_sw_reg[18]\ : label is "yes";
  attribute KEEP of \slv_reg_sw_reg[19]\ : label is "yes";
  attribute KEEP of \slv_reg_sw_reg[1]\ : label is "yes";
  attribute KEEP of \slv_reg_sw_reg[20]\ : label is "yes";
  attribute KEEP of \slv_reg_sw_reg[21]\ : label is "yes";
  attribute KEEP of \slv_reg_sw_reg[22]\ : label is "yes";
  attribute KEEP of \slv_reg_sw_reg[23]\ : label is "yes";
  attribute KEEP of \slv_reg_sw_reg[24]\ : label is "yes";
  attribute KEEP of \slv_reg_sw_reg[25]\ : label is "yes";
  attribute KEEP of \slv_reg_sw_reg[26]\ : label is "yes";
  attribute KEEP of \slv_reg_sw_reg[27]\ : label is "yes";
  attribute KEEP of \slv_reg_sw_reg[28]\ : label is "yes";
  attribute KEEP of \slv_reg_sw_reg[29]\ : label is "yes";
  attribute KEEP of \slv_reg_sw_reg[2]\ : label is "yes";
  attribute KEEP of \slv_reg_sw_reg[30]\ : label is "yes";
  attribute KEEP of \slv_reg_sw_reg[31]\ : label is "yes";
  attribute KEEP of \slv_reg_sw_reg[3]\ : label is "yes";
  attribute KEEP of \slv_reg_sw_reg[4]\ : label is "yes";
  attribute KEEP of \slv_reg_sw_reg[5]\ : label is "yes";
  attribute KEEP of \slv_reg_sw_reg[6]\ : label is "yes";
  attribute KEEP of \slv_reg_sw_reg[7]\ : label is "yes";
  attribute KEEP of \slv_reg_sw_reg[8]\ : label is "yes";
  attribute KEEP of \slv_reg_sw_reg[9]\ : label is "yes";
  attribute mark_debug_string : string;
  attribute mark_debug_string of S_AXI_ARESETN : signal is "true";
  attribute mark_debug_string of S_AXI_RREADY : signal is "true";
  attribute mark_debug_string of S_AXI_RVALID : signal is "true";
  attribute mark_debug_string of S_AXI_RDATA : signal is "true";
begin
  LED(7) <= \<const0>\;
  LED(6) <= \<const0>\;
  LED(5) <= \<const0>\;
  LED(4) <= \<const0>\;
  LED(3 downto 0) <= \^led\(3 downto 0);
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_BRESP(1) <= \<const0>\;
  S_AXI_BRESP(0) <= \<const0>\;
  S_AXI_BVALID <= \^s_axi_bvalid\;
  S_AXI_RRESP(1) <= \<const0>\;
  S_AXI_RRESP(0) <= \<const0>\;
  S_AXI_RVALID <= \^s_axi_rvalid\;
  S_AXI_WREADY <= \^s_axi_wready\;
\FSM_onehot_state_write[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0C08"
    )
        port map (
      I0 => axi_wready,
      I1 => \FSM_onehot_state_write_reg_n_0_[2]\,
      I2 => S_AXI_BREADY,
      I3 => axi_wdata,
      O => \FSM_onehot_state_write[0]_i_1_n_0\
    );
\FSM_onehot_state_write[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAFFFFFFEAEA0000"
    )
        port map (
      I0 => axi_wready,
      I1 => \FSM_onehot_state_write_reg_n_0_[2]\,
      I2 => S_AXI_BREADY,
      I3 => S_AXI_WVALID,
      I4 => \FSM_onehot_state_write[2]_i_2_n_0\,
      I5 => axi_wdata,
      O => \FSM_onehot_state_write[1]_i_1_n_0\
    );
\FSM_onehot_state_write[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => axi_wdata,
      I1 => S_AXI_WVALID,
      I2 => \FSM_onehot_state_write[2]_i_2_n_0\,
      I3 => \FSM_onehot_state_write_reg_n_0_[2]\,
      O => \FSM_onehot_state_write[2]_i_1_n_0\
    );
\FSM_onehot_state_write[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAEEEAAAA"
    )
        port map (
      I0 => axi_wready,
      I1 => \FSM_onehot_state_write_reg_n_0_[2]\,
      I2 => S_AXI_AWVALID,
      I3 => \^s_axi_awready\,
      I4 => S_AXI_BREADY,
      I5 => axi_wdata,
      O => \FSM_onehot_state_write[2]_i_2_n_0\
    );
\FSM_onehot_state_write_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \FSM_onehot_state_write[0]_i_1_n_0\,
      Q => axi_wready,
      S => axi_awready_i_1_n_0
    );
\FSM_onehot_state_write_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \FSM_onehot_state_write[1]_i_1_n_0\,
      Q => axi_wdata,
      R => axi_awready_i_1_n_0
    );
\FSM_onehot_state_write_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \FSM_onehot_state_write[2]_i_1_n_0\,
      Q => \FSM_onehot_state_write_reg_n_0_[2]\,
      R => axi_awready_i_1_n_0
    );
\FSM_sequential_state_read[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0007777FFFF"
    )
        port map (
      I0 => S_AXI_ARVALID,
      I1 => \^s_axi_arready\,
      I2 => S_AXI_RREADY,
      I3 => \^s_axi_rvalid\,
      I4 => state_read(0),
      I5 => state_read(1),
      O => \FSM_sequential_state_read[0]_i_1_n_0\
    );
\FSM_sequential_state_read[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0FFF88880000"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => S_AXI_ARVALID,
      I2 => S_AXI_RREADY,
      I3 => \^s_axi_rvalid\,
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
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
S_AXI_RDATA_inferred_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => axi_araddr(2),
      I2 => slv_reg_sw(31),
      O => S_AXI_RDATA(31)
    );
S_AXI_RDATA_inferred_i_10: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => axi_araddr(2),
      I2 => slv_reg_sw(22),
      O => S_AXI_RDATA(22)
    );
S_AXI_RDATA_inferred_i_11: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => axi_araddr(2),
      I2 => slv_reg_sw(21),
      O => S_AXI_RDATA(21)
    );
S_AXI_RDATA_inferred_i_12: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => axi_araddr(2),
      I2 => slv_reg_sw(20),
      O => S_AXI_RDATA(20)
    );
S_AXI_RDATA_inferred_i_13: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => axi_araddr(2),
      I2 => slv_reg_sw(19),
      O => S_AXI_RDATA(19)
    );
S_AXI_RDATA_inferred_i_14: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => axi_araddr(2),
      I2 => slv_reg_sw(18),
      O => S_AXI_RDATA(18)
    );
S_AXI_RDATA_inferred_i_15: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => axi_araddr(2),
      I2 => slv_reg_sw(17),
      O => S_AXI_RDATA(17)
    );
S_AXI_RDATA_inferred_i_16: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => axi_araddr(2),
      I2 => slv_reg_sw(16),
      O => S_AXI_RDATA(16)
    );
S_AXI_RDATA_inferred_i_17: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => axi_araddr(2),
      I2 => slv_reg_sw(15),
      O => S_AXI_RDATA(15)
    );
S_AXI_RDATA_inferred_i_18: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => axi_araddr(2),
      I2 => slv_reg_sw(14),
      O => S_AXI_RDATA(14)
    );
S_AXI_RDATA_inferred_i_19: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => axi_araddr(2),
      I2 => slv_reg_sw(13),
      O => S_AXI_RDATA(13)
    );
S_AXI_RDATA_inferred_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => axi_araddr(2),
      I2 => slv_reg_sw(30),
      O => S_AXI_RDATA(30)
    );
S_AXI_RDATA_inferred_i_20: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => axi_araddr(2),
      I2 => slv_reg_sw(12),
      O => S_AXI_RDATA(12)
    );
S_AXI_RDATA_inferred_i_21: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => axi_araddr(2),
      I2 => slv_reg_sw(11),
      O => S_AXI_RDATA(11)
    );
S_AXI_RDATA_inferred_i_22: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => axi_araddr(2),
      I2 => slv_reg_sw(10),
      O => S_AXI_RDATA(10)
    );
S_AXI_RDATA_inferred_i_23: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => axi_araddr(2),
      I2 => slv_reg_sw(9),
      O => S_AXI_RDATA(9)
    );
S_AXI_RDATA_inferred_i_24: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => axi_araddr(2),
      I2 => slv_reg_sw(8),
      O => S_AXI_RDATA(8)
    );
S_AXI_RDATA_inferred_i_25: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => axi_araddr(2),
      I2 => slv_reg_sw(7),
      O => S_AXI_RDATA(7)
    );
S_AXI_RDATA_inferred_i_26: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => axi_araddr(2),
      I2 => slv_reg_sw(6),
      O => S_AXI_RDATA(6)
    );
S_AXI_RDATA_inferred_i_27: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => axi_araddr(2),
      I2 => slv_reg_sw(5),
      O => S_AXI_RDATA(5)
    );
S_AXI_RDATA_inferred_i_28: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => axi_araddr(2),
      I2 => slv_reg_sw(4),
      O => S_AXI_RDATA(4)
    );
S_AXI_RDATA_inferred_i_29: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => axi_araddr(2),
      I2 => slv_reg_sw(3),
      O => S_AXI_RDATA(3)
    );
S_AXI_RDATA_inferred_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => axi_araddr(2),
      I2 => slv_reg_sw(29),
      O => S_AXI_RDATA(29)
    );
S_AXI_RDATA_inferred_i_30: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => axi_araddr(2),
      I2 => slv_reg_sw(2),
      O => S_AXI_RDATA(2)
    );
S_AXI_RDATA_inferred_i_31: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => axi_araddr(2),
      I2 => slv_reg_sw(1),
      O => S_AXI_RDATA(1)
    );
S_AXI_RDATA_inferred_i_32: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => axi_araddr(2),
      I2 => slv_reg_sw(0),
      O => S_AXI_RDATA(0)
    );
S_AXI_RDATA_inferred_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => axi_araddr(2),
      I2 => slv_reg_sw(28),
      O => S_AXI_RDATA(28)
    );
S_AXI_RDATA_inferred_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => axi_araddr(2),
      I2 => slv_reg_sw(27),
      O => S_AXI_RDATA(27)
    );
S_AXI_RDATA_inferred_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => axi_araddr(2),
      I2 => slv_reg_sw(26),
      O => S_AXI_RDATA(26)
    );
S_AXI_RDATA_inferred_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => axi_araddr(2),
      I2 => slv_reg_sw(25),
      O => S_AXI_RDATA(25)
    );
S_AXI_RDATA_inferred_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => axi_araddr(2),
      I2 => slv_reg_sw(24),
      O => S_AXI_RDATA(24)
    );
S_AXI_RDATA_inferred_i_9: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => axi_araddr(2),
      I2 => slv_reg_sw(23),
      O => S_AXI_RDATA(23)
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => S_AXI_ARADDR(2),
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
      I0 => S_AXI_ARADDR(3),
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
      I1 => \^s_axi_arready\,
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
      I1 => \^s_axi_arready\,
      I2 => state_read(1),
      I3 => S_AXI_RREADY,
      I4 => \^s_axi_rvalid\,
      I5 => state_read(0),
      O => axi_arready_i_1_n_0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_arready_i_1_n_0,
      Q => \^s_axi_arready\,
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
      INIT => X"FFFFBAFABAFABAFA"
    )
        port map (
      I0 => axi_wready,
      I1 => \FSM_onehot_state_write_reg_n_0_[2]\,
      I2 => \^s_axi_awready\,
      I3 => S_AXI_AWVALID,
      I4 => axi_wdata,
      I5 => S_AXI_WVALID,
      O => axi_awready_i_2_n_0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_awready_i_2_n_0,
      Q => \^s_axi_awready\,
      R => axi_awready_i_1_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA00AA00A830F0F0"
    )
        port map (
      I0 => \FSM_onehot_state_write_reg_n_0_[2]\,
      I1 => S_AXI_WVALID,
      I2 => \^s_axi_bvalid\,
      I3 => S_AXI_BREADY,
      I4 => axi_wdata,
      I5 => axi_bvalid_i_2_n_0,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A00"
    )
        port map (
      I0 => \FSM_onehot_state_write_reg_n_0_[2]\,
      I1 => S_AXI_AWVALID,
      I2 => \^s_axi_awready\,
      I3 => S_AXI_BREADY,
      O => axi_bvalid_i_2_n_0
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
      INIT => X"EFFFFFFFA8888888"
    )
        port map (
      I0 => axi_rvalid_i_2_n_0,
      I1 => state_read(0),
      I2 => state_read(1),
      I3 => S_AXI_RREADY,
      I4 => \^s_axi_rvalid\,
      I5 => \^s_axi_rvalid\,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => S_AXI_ARVALID,
      I2 => state_read(1),
      O => axi_rvalid_i_2_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s_axi_rvalid\,
      R => axi_awready_i_1_n_0
    );
\axi_wdata[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => S_AXI_ARESETN,
      I1 => axi_wdata,
      O => \axi_wdata[3]_i_1_n_0\
    );
\axi_wdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_wdata[3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \axi_wdata__0\(0),
      R => '0'
    );
\axi_wdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_wdata[3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \axi_wdata__0\(1),
      R => '0'
    );
\axi_wdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_wdata[3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \axi_wdata__0\(2),
      R => '0'
    );
\axi_wdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_wdata[3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \axi_wdata__0\(3),
      R => '0'
    );
axi_wready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => axi_wready,
      I1 => \^s_axi_wready\,
      O => axi_wready_i_1_n_0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_wready_i_1_n_0,
      Q => \^s_axi_wready\,
      R => axi_awready_i_1_n_0
    );
\slv_reg_led[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => S_AXI_AWVALID,
      I1 => S_AXI_AWADDR(3),
      I2 => S_AXI_AWADDR(2),
      O => slv_reg_led
    );
\slv_reg_led_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_led,
      D => \axi_wdata__0\(0),
      Q => \^led\(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg_led_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_led,
      D => \axi_wdata__0\(1),
      Q => \^led\(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg_led_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_led,
      D => \axi_wdata__0\(2),
      Q => \^led\(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg_led_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_led,
      D => \axi_wdata__0\(3),
      Q => \^led\(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg_sw_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => SW(0),
      Q => slv_reg_sw(0),
      R => '0'
    );
\slv_reg_sw_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => slv_reg_sw(10),
      Q => slv_reg_sw(10),
      R => '0'
    );
\slv_reg_sw_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => slv_reg_sw(11),
      Q => slv_reg_sw(11),
      R => '0'
    );
\slv_reg_sw_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => slv_reg_sw(12),
      Q => slv_reg_sw(12),
      R => '0'
    );
\slv_reg_sw_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => slv_reg_sw(13),
      Q => slv_reg_sw(13),
      R => '0'
    );
\slv_reg_sw_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => slv_reg_sw(14),
      Q => slv_reg_sw(14),
      R => '0'
    );
\slv_reg_sw_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => slv_reg_sw(15),
      Q => slv_reg_sw(15),
      R => '0'
    );
\slv_reg_sw_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => slv_reg_sw(16),
      Q => slv_reg_sw(16),
      R => '0'
    );
\slv_reg_sw_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => slv_reg_sw(17),
      Q => slv_reg_sw(17),
      R => '0'
    );
\slv_reg_sw_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => slv_reg_sw(18),
      Q => slv_reg_sw(18),
      R => '0'
    );
\slv_reg_sw_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => slv_reg_sw(19),
      Q => slv_reg_sw(19),
      R => '0'
    );
\slv_reg_sw_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => SW(1),
      Q => slv_reg_sw(1),
      R => '0'
    );
\slv_reg_sw_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => slv_reg_sw(20),
      Q => slv_reg_sw(20),
      R => '0'
    );
\slv_reg_sw_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => slv_reg_sw(21),
      Q => slv_reg_sw(21),
      R => '0'
    );
\slv_reg_sw_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => slv_reg_sw(22),
      Q => slv_reg_sw(22),
      R => '0'
    );
\slv_reg_sw_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => slv_reg_sw(23),
      Q => slv_reg_sw(23),
      R => '0'
    );
\slv_reg_sw_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => slv_reg_sw(24),
      Q => slv_reg_sw(24),
      R => '0'
    );
\slv_reg_sw_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => slv_reg_sw(25),
      Q => slv_reg_sw(25),
      R => '0'
    );
\slv_reg_sw_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => slv_reg_sw(26),
      Q => slv_reg_sw(26),
      R => '0'
    );
\slv_reg_sw_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => slv_reg_sw(27),
      Q => slv_reg_sw(27),
      R => '0'
    );
\slv_reg_sw_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => slv_reg_sw(28),
      Q => slv_reg_sw(28),
      R => '0'
    );
\slv_reg_sw_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => slv_reg_sw(29),
      Q => slv_reg_sw(29),
      R => '0'
    );
\slv_reg_sw_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => SW(2),
      Q => slv_reg_sw(2),
      R => '0'
    );
\slv_reg_sw_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => slv_reg_sw(30),
      Q => slv_reg_sw(30),
      R => '0'
    );
\slv_reg_sw_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => slv_reg_sw(31),
      Q => slv_reg_sw(31),
      R => '0'
    );
\slv_reg_sw_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => SW(3),
      Q => slv_reg_sw(3),
      R => '0'
    );
\slv_reg_sw_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => slv_reg_sw(4),
      Q => slv_reg_sw(4),
      R => '0'
    );
\slv_reg_sw_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => slv_reg_sw(5),
      Q => slv_reg_sw(5),
      R => '0'
    );
\slv_reg_sw_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => slv_reg_sw(6),
      Q => slv_reg_sw(6),
      R => '0'
    );
\slv_reg_sw_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => slv_reg_sw(7),
      Q => slv_reg_sw(7),
      R => '0'
    );
\slv_reg_sw_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => slv_reg_sw(8),
      Q => slv_reg_sw(8),
      R => '0'
    );
\slv_reg_sw_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => slv_reg_sw(9),
      Q => slv_reg_sw(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zynq_bd_myip_slave_lite_v1_0_0_0 is
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
    SW : in STD_LOGIC_VECTOR ( 3 downto 0 );
    LED : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of zynq_bd_myip_slave_lite_v1_0_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of zynq_bd_myip_slave_lite_v1_0_0_0 : entity is "zynq_bd_myip_slave_lite_v1_0_0_0,myip_slave_lite_v1_0_S00_AXI,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of zynq_bd_myip_slave_lite_v1_0_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of zynq_bd_myip_slave_lite_v1_0_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of zynq_bd_myip_slave_lite_v1_0_0_0 : entity is "myip_slave_lite_v1_0_S00_AXI,Vivado 2023.2";
end zynq_bd_myip_slave_lite_v1_0_0_0;

architecture STRUCTURE of zynq_bd_myip_slave_lite_v1_0_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^led\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_LED_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal NLW_inst_S_AXI_BRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_S_AXI_RRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute ADDR_LSB : integer;
  attribute ADDR_LSB of inst : label is 2;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of inst : label is 4;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of inst : label is 32;
  attribute Idle : string;
  attribute Idle of inst : label is "2'b00";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of inst : label is "soft";
  attribute OPT_MEM_ADDR_BITS : integer;
  attribute OPT_MEM_ADDR_BITS of inst : label is 1;
  attribute Raddr : string;
  attribute Raddr of inst : label is "2'b10";
  attribute Rdata : string;
  attribute Rdata of inst : label is "2'b11";
  attribute Waddr : string;
  attribute Waddr of inst : label is "2'b10";
  attribute Wdata : string;
  attribute Wdata of inst : label is "2'b11";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of S_AXI_ACLK : signal is "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of S_AXI_ACLK : signal is "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_ARESETN, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN zynq_bd_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXI_ARESETN : signal is "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST";
  attribute X_INTERFACE_PARAMETER of S_AXI_ARESETN : signal is "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXI_ARREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute X_INTERFACE_INFO of S_AXI_ARVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute X_INTERFACE_INFO of S_AXI_AWREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute X_INTERFACE_INFO of S_AXI_AWVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute X_INTERFACE_INFO of S_AXI_BREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute X_INTERFACE_INFO of S_AXI_BVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute X_INTERFACE_INFO of S_AXI_RREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of S_AXI_RREADY : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN zynq_bd_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
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
  LED(7) <= \<const0>\;
  LED(6) <= \<const0>\;
  LED(5) <= \<const0>\;
  LED(4) <= \<const0>\;
  LED(3 downto 0) <= \^led\(3 downto 0);
  S_AXI_BRESP(1) <= \<const0>\;
  S_AXI_BRESP(0) <= \<const0>\;
  S_AXI_RRESP(1) <= \<const0>\;
  S_AXI_RRESP(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.zynq_bd_myip_slave_lite_v1_0_0_0_myip_slave_lite_v1_0_S00_AXI
     port map (
      LED(7 downto 4) => NLW_inst_LED_UNCONNECTED(7 downto 4),
      LED(3 downto 0) => \^led\(3 downto 0),
      SW(3 downto 0) => SW(3 downto 0),
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARADDR(3 downto 2) => S_AXI_ARADDR(3 downto 2),
      S_AXI_ARADDR(1 downto 0) => B"00",
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ARPROT(2 downto 0) => B"000",
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_AWADDR(3 downto 2) => S_AXI_AWADDR(3 downto 2),
      S_AXI_AWADDR(1 downto 0) => B"00",
      S_AXI_AWPROT(2 downto 0) => B"000",
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_BREADY => S_AXI_BREADY,
      S_AXI_BRESP(1 downto 0) => NLW_inst_S_AXI_BRESP_UNCONNECTED(1 downto 0),
      S_AXI_BVALID => S_AXI_BVALID,
      S_AXI_RDATA(31 downto 0) => S_AXI_RDATA(31 downto 0),
      S_AXI_RREADY => S_AXI_RREADY,
      S_AXI_RRESP(1 downto 0) => NLW_inst_S_AXI_RRESP_UNCONNECTED(1 downto 0),
      S_AXI_RVALID => S_AXI_RVALID,
      S_AXI_WDATA(31 downto 4) => B"0000000000000000000000000000",
      S_AXI_WDATA(3 downto 0) => S_AXI_WDATA(3 downto 0),
      S_AXI_WREADY => S_AXI_WREADY,
      S_AXI_WSTRB(3 downto 0) => B"0000",
      S_AXI_WVALID => S_AXI_WVALID
    );
end STRUCTURE;
