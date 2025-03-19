-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Wed Jan  8 18:35:51 2025
-- Host        : COMSYS01 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Verilog-lab/AXI_UART/AXI_UART.gen/sources_1/bd/AXI_UART_BD/ip/AXI_UART_BD_myip_slave_lite_v1_0_0_0/AXI_UART_BD_myip_slave_lite_v1_0_0_0_sim_netlist.vhdl
-- Design      : AXI_UART_BD_myip_slave_lite_v1_0_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z007sclg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity AXI_UART_BD_myip_slave_lite_v1_0_0_0_myip_slave_lite_v1_0_S00_AXI is
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
    TX_READY : in STD_LOGIC;
    RX_READY : in STD_LOGIC;
    RX_DATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TX_DATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    TX_START : out STD_LOGIC
  );
  attribute ADDR_LSB : integer;
  attribute ADDR_LSB of AXI_UART_BD_myip_slave_lite_v1_0_0_0_myip_slave_lite_v1_0_S00_AXI : entity is 2;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of AXI_UART_BD_myip_slave_lite_v1_0_0_0_myip_slave_lite_v1_0_S00_AXI : entity is 4;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of AXI_UART_BD_myip_slave_lite_v1_0_0_0_myip_slave_lite_v1_0_S00_AXI : entity is 32;
  attribute Idle : string;
  attribute Idle of AXI_UART_BD_myip_slave_lite_v1_0_0_0_myip_slave_lite_v1_0_S00_AXI : entity is "2'b00";
  attribute OPT_MEM_ADDR_BITS : integer;
  attribute OPT_MEM_ADDR_BITS of AXI_UART_BD_myip_slave_lite_v1_0_0_0_myip_slave_lite_v1_0_S00_AXI : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of AXI_UART_BD_myip_slave_lite_v1_0_0_0_myip_slave_lite_v1_0_S00_AXI : entity is "myip_slave_lite_v1_0_S00_AXI";
  attribute Raddr : string;
  attribute Raddr of AXI_UART_BD_myip_slave_lite_v1_0_0_0_myip_slave_lite_v1_0_S00_AXI : entity is "2'b10";
  attribute Rdata : string;
  attribute Rdata of AXI_UART_BD_myip_slave_lite_v1_0_0_0_myip_slave_lite_v1_0_S00_AXI : entity is "2'b11";
  attribute Waddr : string;
  attribute Waddr of AXI_UART_BD_myip_slave_lite_v1_0_0_0_myip_slave_lite_v1_0_S00_AXI : entity is "2'b10";
  attribute Wdata : string;
  attribute Wdata of AXI_UART_BD_myip_slave_lite_v1_0_0_0_myip_slave_lite_v1_0_S00_AXI : entity is "2'b11";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of AXI_UART_BD_myip_slave_lite_v1_0_0_0_myip_slave_lite_v1_0_S00_AXI : entity is "soft";
end AXI_UART_BD_myip_slave_lite_v1_0_0_0_myip_slave_lite_v1_0_S00_AXI;

architecture STRUCTURE of AXI_UART_BD_myip_slave_lite_v1_0_0_0_myip_slave_lite_v1_0_S00_AXI is
  signal \<const0>\ : STD_LOGIC;
  signal \FSM_sequential_state_read[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_read[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_write[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_write[1]_i_1_n_0\ : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr__0\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal axi_arready0 : STD_LOGIC;
  signal axi_arready_i_1_n_0 : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_awready01_out : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal axi_awready_i_2_n_0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready_i_1_n_0 : STD_LOGIC;
  signal \^rx_ready\ : STD_LOGIC;
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of rx_ready : signal is std.standard.true;
  signal slv_reg_uart_rx_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute MARK_DEBUG of slv_reg_uart_rx_data : signal is std.standard.true;
  signal slv_reg_uart_rx_ready : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute MARK_DEBUG of slv_reg_uart_rx_ready : signal is std.standard.true;
  signal \slv_reg_uart_rx_ready__0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal slv_reg_uart_tx_data : STD_LOGIC;
  signal slv_reg_uart_tx_ready : STD_LOGIC_VECTOR ( 4 to 4 );
  signal \slv_reg_uart_tx_start[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_uart_tx_start_reg_n_0_[0]\ : STD_LOGIC;
  signal state_read : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal state_write : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_read_reg[0]\ : label is "Idle:00,Rdata:10,Raddr:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_read_reg[1]\ : label is "Idle:00,Rdata:10,Raddr:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_write_reg[0]\ : label is "Idle:00,Wdata:10,Waddr:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_write_reg[1]\ : label is "Idle:00,Wdata:10,Waddr:01";
  attribute KEEP : string;
  attribute KEEP of rx_ready_reg : label is "yes";
  attribute KEEP of \slv_reg_uart_rx_ready_reg[0]\ : label is "yes";
  attribute KEEP of \slv_reg_uart_rx_ready_reg[10]\ : label is "yes";
  attribute KEEP of \slv_reg_uart_rx_ready_reg[11]\ : label is "yes";
  attribute KEEP of \slv_reg_uart_rx_ready_reg[12]\ : label is "yes";
  attribute KEEP of \slv_reg_uart_rx_ready_reg[13]\ : label is "yes";
  attribute KEEP of \slv_reg_uart_rx_ready_reg[14]\ : label is "yes";
  attribute KEEP of \slv_reg_uart_rx_ready_reg[15]\ : label is "yes";
  attribute KEEP of \slv_reg_uart_rx_ready_reg[16]\ : label is "yes";
  attribute KEEP of \slv_reg_uart_rx_ready_reg[17]\ : label is "yes";
  attribute KEEP of \slv_reg_uart_rx_ready_reg[18]\ : label is "yes";
  attribute KEEP of \slv_reg_uart_rx_ready_reg[19]\ : label is "yes";
  attribute KEEP of \slv_reg_uart_rx_ready_reg[1]\ : label is "yes";
  attribute KEEP of \slv_reg_uart_rx_ready_reg[20]\ : label is "yes";
  attribute KEEP of \slv_reg_uart_rx_ready_reg[21]\ : label is "yes";
  attribute KEEP of \slv_reg_uart_rx_ready_reg[22]\ : label is "yes";
  attribute KEEP of \slv_reg_uart_rx_ready_reg[23]\ : label is "yes";
  attribute KEEP of \slv_reg_uart_rx_ready_reg[24]\ : label is "yes";
  attribute KEEP of \slv_reg_uart_rx_ready_reg[25]\ : label is "yes";
  attribute KEEP of \slv_reg_uart_rx_ready_reg[26]\ : label is "yes";
  attribute KEEP of \slv_reg_uart_rx_ready_reg[27]\ : label is "yes";
  attribute KEEP of \slv_reg_uart_rx_ready_reg[28]\ : label is "yes";
  attribute KEEP of \slv_reg_uart_rx_ready_reg[29]\ : label is "yes";
  attribute KEEP of \slv_reg_uart_rx_ready_reg[2]\ : label is "yes";
  attribute KEEP of \slv_reg_uart_rx_ready_reg[30]\ : label is "yes";
  attribute KEEP of \slv_reg_uart_rx_ready_reg[31]\ : label is "yes";
  attribute KEEP of \slv_reg_uart_rx_ready_reg[3]\ : label is "yes";
  attribute KEEP of \slv_reg_uart_rx_ready_reg[4]\ : label is "yes";
  attribute KEEP of \slv_reg_uart_rx_ready_reg[5]\ : label is "yes";
  attribute KEEP of \slv_reg_uart_rx_ready_reg[6]\ : label is "yes";
  attribute KEEP of \slv_reg_uart_rx_ready_reg[7]\ : label is "yes";
  attribute KEEP of \slv_reg_uart_rx_ready_reg[8]\ : label is "yes";
  attribute KEEP of \slv_reg_uart_rx_ready_reg[9]\ : label is "yes";
  attribute mark_debug_string : string;
  attribute mark_debug_string of RX_READY : signal is "true";
  attribute mark_debug_string of RX_DATA : signal is "true";
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_BRESP(1) <= \<const0>\;
  S_AXI_BRESP(0) <= \<const0>\;
  S_AXI_BVALID <= \^s_axi_bvalid\;
  S_AXI_RRESP(1) <= \<const0>\;
  S_AXI_RRESP(0) <= \<const0>\;
  S_AXI_RVALID <= \^s_axi_rvalid\;
  S_AXI_WREADY <= \^s_axi_wready\;
  slv_reg_uart_rx_data(7 downto 0) <= RX_DATA(7 downto 0);
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
\FSM_sequential_state_write[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0007777FFFF"
    )
        port map (
      I0 => S_AXI_AWVALID,
      I1 => \^s_axi_awready\,
      I2 => \^s_axi_wready\,
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
      I0 => \^s_axi_awready\,
      I1 => S_AXI_AWVALID,
      I2 => \^s_axi_wready\,
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
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\S_AXI_RDATA[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg_uart_rx_ready(0),
      I1 => \axi_araddr__0\(2),
      I2 => slv_reg_uart_rx_data(0),
      I3 => \axi_araddr__0\(3),
      I4 => \slv_reg_uart_tx_start_reg_n_0_[0]\,
      O => S_AXI_RDATA(0)
    );
\S_AXI_RDATA[10]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => slv_reg_uart_rx_ready(10),
      I1 => \axi_araddr__0\(2),
      I2 => \axi_araddr__0\(3),
      I3 => slv_reg_uart_rx_data(10),
      O => S_AXI_RDATA(10)
    );
\S_AXI_RDATA[11]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => slv_reg_uart_rx_ready(11),
      I1 => \axi_araddr__0\(2),
      I2 => \axi_araddr__0\(3),
      I3 => slv_reg_uart_rx_data(11),
      O => S_AXI_RDATA(11)
    );
\S_AXI_RDATA[12]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => slv_reg_uart_rx_ready(12),
      I1 => \axi_araddr__0\(2),
      I2 => \axi_araddr__0\(3),
      I3 => slv_reg_uart_rx_data(12),
      O => S_AXI_RDATA(12)
    );
\S_AXI_RDATA[13]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => slv_reg_uart_rx_ready(13),
      I1 => \axi_araddr__0\(2),
      I2 => \axi_araddr__0\(3),
      I3 => slv_reg_uart_rx_data(13),
      O => S_AXI_RDATA(13)
    );
\S_AXI_RDATA[14]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => slv_reg_uart_rx_ready(14),
      I1 => \axi_araddr__0\(2),
      I2 => \axi_araddr__0\(3),
      I3 => slv_reg_uart_rx_data(14),
      O => S_AXI_RDATA(14)
    );
\S_AXI_RDATA[15]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => slv_reg_uart_rx_ready(15),
      I1 => \axi_araddr__0\(2),
      I2 => \axi_araddr__0\(3),
      I3 => slv_reg_uart_rx_data(15),
      O => S_AXI_RDATA(15)
    );
\S_AXI_RDATA[16]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => slv_reg_uart_rx_ready(16),
      I1 => \axi_araddr__0\(2),
      I2 => \axi_araddr__0\(3),
      I3 => slv_reg_uart_rx_data(16),
      O => S_AXI_RDATA(16)
    );
\S_AXI_RDATA[17]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => slv_reg_uart_rx_ready(17),
      I1 => \axi_araddr__0\(2),
      I2 => \axi_araddr__0\(3),
      I3 => slv_reg_uart_rx_data(17),
      O => S_AXI_RDATA(17)
    );
\S_AXI_RDATA[18]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => slv_reg_uart_rx_ready(18),
      I1 => \axi_araddr__0\(2),
      I2 => \axi_araddr__0\(3),
      I3 => slv_reg_uart_rx_data(18),
      O => S_AXI_RDATA(18)
    );
\S_AXI_RDATA[19]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => slv_reg_uart_rx_ready(19),
      I1 => \axi_araddr__0\(2),
      I2 => \axi_araddr__0\(3),
      I3 => slv_reg_uart_rx_data(19),
      O => S_AXI_RDATA(19)
    );
\S_AXI_RDATA[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => slv_reg_uart_rx_ready(1),
      I1 => \axi_araddr__0\(2),
      I2 => \axi_araddr__0\(3),
      I3 => slv_reg_uart_rx_data(1),
      O => S_AXI_RDATA(1)
    );
\S_AXI_RDATA[20]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => slv_reg_uart_rx_ready(20),
      I1 => \axi_araddr__0\(2),
      I2 => \axi_araddr__0\(3),
      I3 => slv_reg_uart_rx_data(20),
      O => S_AXI_RDATA(20)
    );
\S_AXI_RDATA[21]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => slv_reg_uart_rx_ready(21),
      I1 => \axi_araddr__0\(2),
      I2 => \axi_araddr__0\(3),
      I3 => slv_reg_uart_rx_data(21),
      O => S_AXI_RDATA(21)
    );
\S_AXI_RDATA[22]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => slv_reg_uart_rx_ready(22),
      I1 => \axi_araddr__0\(2),
      I2 => \axi_araddr__0\(3),
      I3 => slv_reg_uart_rx_data(22),
      O => S_AXI_RDATA(22)
    );
\S_AXI_RDATA[23]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => slv_reg_uart_rx_ready(23),
      I1 => \axi_araddr__0\(2),
      I2 => \axi_araddr__0\(3),
      I3 => slv_reg_uart_rx_data(23),
      O => S_AXI_RDATA(23)
    );
\S_AXI_RDATA[24]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => slv_reg_uart_rx_ready(24),
      I1 => \axi_araddr__0\(2),
      I2 => \axi_araddr__0\(3),
      I3 => slv_reg_uart_rx_data(24),
      O => S_AXI_RDATA(24)
    );
\S_AXI_RDATA[25]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => slv_reg_uart_rx_ready(25),
      I1 => \axi_araddr__0\(2),
      I2 => \axi_araddr__0\(3),
      I3 => slv_reg_uart_rx_data(25),
      O => S_AXI_RDATA(25)
    );
\S_AXI_RDATA[26]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => slv_reg_uart_rx_ready(26),
      I1 => \axi_araddr__0\(2),
      I2 => \axi_araddr__0\(3),
      I3 => slv_reg_uart_rx_data(26),
      O => S_AXI_RDATA(26)
    );
\S_AXI_RDATA[27]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => slv_reg_uart_rx_ready(27),
      I1 => \axi_araddr__0\(2),
      I2 => \axi_araddr__0\(3),
      I3 => slv_reg_uart_rx_data(27),
      O => S_AXI_RDATA(27)
    );
\S_AXI_RDATA[28]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => slv_reg_uart_rx_ready(28),
      I1 => \axi_araddr__0\(2),
      I2 => \axi_araddr__0\(3),
      I3 => slv_reg_uart_rx_data(28),
      O => S_AXI_RDATA(28)
    );
\S_AXI_RDATA[29]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => slv_reg_uart_rx_ready(29),
      I1 => \axi_araddr__0\(2),
      I2 => \axi_araddr__0\(3),
      I3 => slv_reg_uart_rx_data(29),
      O => S_AXI_RDATA(29)
    );
\S_AXI_RDATA[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => slv_reg_uart_rx_ready(2),
      I1 => \axi_araddr__0\(2),
      I2 => \axi_araddr__0\(3),
      I3 => slv_reg_uart_rx_data(2),
      O => S_AXI_RDATA(2)
    );
\S_AXI_RDATA[30]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => slv_reg_uart_rx_ready(30),
      I1 => \axi_araddr__0\(2),
      I2 => \axi_araddr__0\(3),
      I3 => slv_reg_uart_rx_data(30),
      O => S_AXI_RDATA(30)
    );
\S_AXI_RDATA[31]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => slv_reg_uart_rx_ready(31),
      I1 => \axi_araddr__0\(2),
      I2 => \axi_araddr__0\(3),
      I3 => slv_reg_uart_rx_data(31),
      O => S_AXI_RDATA(31)
    );
\S_AXI_RDATA[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => slv_reg_uart_rx_ready(3),
      I1 => \axi_araddr__0\(2),
      I2 => \axi_araddr__0\(3),
      I3 => slv_reg_uart_rx_data(3),
      O => S_AXI_RDATA(3)
    );
\S_AXI_RDATA[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg_uart_rx_ready(4),
      I1 => \axi_araddr__0\(2),
      I2 => slv_reg_uart_rx_data(4),
      I3 => \axi_araddr__0\(3),
      I4 => slv_reg_uart_tx_ready(4),
      O => S_AXI_RDATA(4)
    );
\S_AXI_RDATA[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => slv_reg_uart_rx_ready(5),
      I1 => \axi_araddr__0\(2),
      I2 => \axi_araddr__0\(3),
      I3 => slv_reg_uart_rx_data(5),
      O => S_AXI_RDATA(5)
    );
\S_AXI_RDATA[6]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => slv_reg_uart_rx_ready(6),
      I1 => \axi_araddr__0\(2),
      I2 => \axi_araddr__0\(3),
      I3 => slv_reg_uart_rx_data(6),
      O => S_AXI_RDATA(6)
    );
\S_AXI_RDATA[7]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => slv_reg_uart_rx_ready(7),
      I1 => \axi_araddr__0\(2),
      I2 => \axi_araddr__0\(3),
      I3 => slv_reg_uart_rx_data(7),
      O => S_AXI_RDATA(7)
    );
\S_AXI_RDATA[8]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => slv_reg_uart_rx_ready(8),
      I1 => \axi_araddr__0\(2),
      I2 => \axi_araddr__0\(3),
      I3 => slv_reg_uart_rx_data(8),
      O => S_AXI_RDATA(8)
    );
\S_AXI_RDATA[9]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => slv_reg_uart_rx_ready(9),
      I1 => \axi_araddr__0\(2),
      I2 => \axi_araddr__0\(3),
      I3 => slv_reg_uart_rx_data(9),
      O => S_AXI_RDATA(9)
    );
TX_START_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \slv_reg_uart_tx_start_reg_n_0_[0]\,
      I1 => S_AXI_AWADDR(1),
      I2 => S_AXI_AWADDR(3),
      I3 => S_AXI_AWADDR(2),
      I4 => S_AXI_AWADDR(0),
      O => TX_START
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
      I5 => \axi_araddr__0\(2),
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
      I5 => \axi_araddr__0\(3),
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
      Q => \axi_araddr__0\(2),
      R => '0'
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => \axi_araddr__0\(3),
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
      INIT => X"C4C4C4C4FFCFCFCF"
    )
        port map (
      I0 => S_AXI_AWVALID,
      I1 => \^s_axi_awready\,
      I2 => state_write(1),
      I3 => \^s_axi_wready\,
      I4 => S_AXI_WVALID,
      I5 => state_write(0),
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
      INIT => X"AF0AAF2AA00AAA2A"
    )
        port map (
      I0 => \^s_axi_bvalid\,
      I1 => axi_awready0,
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
      I1 => \^s_axi_awready\,
      O => axi_awready0
    );
axi_bvalid_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => S_AXI_WVALID,
      I1 => \^s_axi_wready\,
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
      I0 => \^s_axi_arready\,
      I1 => S_AXI_ARVALID,
      I2 => state_read(0),
      I3 => state_read(1),
      I4 => S_AXI_RREADY,
      I5 => \^s_axi_rvalid\,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s_axi_rvalid\,
      R => axi_awready_i_1_n_0
    );
axi_wready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF08FF080000F000"
    )
        port map (
      I0 => S_AXI_AWVALID,
      I1 => \^s_axi_awready\,
      I2 => state_write(1),
      I3 => \^s_axi_wready\,
      I4 => S_AXI_WVALID,
      I5 => state_write(0),
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
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => slv_reg_uart_rx_data(31)
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => slv_reg_uart_rx_data(30)
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => slv_reg_uart_rx_data(21)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => slv_reg_uart_rx_data(20)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => slv_reg_uart_rx_data(19)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => slv_reg_uart_rx_data(18)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => slv_reg_uart_rx_data(17)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => slv_reg_uart_rx_data(16)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => slv_reg_uart_rx_data(15)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => slv_reg_uart_rx_data(14)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => slv_reg_uart_rx_data(13)
    );
i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => slv_reg_uart_rx_data(12)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => slv_reg_uart_rx_data(29)
    );
i_20: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => slv_reg_uart_rx_data(11)
    );
i_21: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => slv_reg_uart_rx_data(10)
    );
i_22: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => slv_reg_uart_rx_data(9)
    );
i_23: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => slv_reg_uart_rx_data(8)
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => slv_reg_uart_rx_data(28)
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => slv_reg_uart_rx_data(27)
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => slv_reg_uart_rx_data(26)
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => slv_reg_uart_rx_data(25)
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => slv_reg_uart_rx_data(24)
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => slv_reg_uart_rx_data(23)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => slv_reg_uart_rx_data(22)
    );
rx_ready_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => RX_READY,
      Q => \^rx_ready\,
      R => '0'
    );
\slv_reg_uart_rx_ready[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEAEEEEEEEEEEEEE"
    )
        port map (
      I0 => \^rx_ready\,
      I1 => slv_reg_uart_rx_ready(0),
      I2 => axi_awready0,
      I3 => S_AXI_WDATA(0),
      I4 => S_AXI_AWADDR(2),
      I5 => S_AXI_AWADDR(3),
      O => \slv_reg_uart_rx_ready__0\(0)
    );
\slv_reg_uart_rx_ready[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF80000000"
    )
        port map (
      I0 => S_AXI_AWADDR(3),
      I1 => S_AXI_AWADDR(2),
      I2 => S_AXI_WDATA(10),
      I3 => S_AXI_AWVALID,
      I4 => \^s_axi_awready\,
      I5 => slv_reg_uart_rx_ready(10),
      O => \slv_reg_uart_rx_ready__0\(10)
    );
\slv_reg_uart_rx_ready[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF80000000"
    )
        port map (
      I0 => S_AXI_AWADDR(3),
      I1 => S_AXI_AWADDR(2),
      I2 => S_AXI_WDATA(11),
      I3 => S_AXI_AWVALID,
      I4 => \^s_axi_awready\,
      I5 => slv_reg_uart_rx_ready(11),
      O => \slv_reg_uart_rx_ready__0\(11)
    );
\slv_reg_uart_rx_ready[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF80000000"
    )
        port map (
      I0 => S_AXI_AWADDR(3),
      I1 => S_AXI_AWADDR(2),
      I2 => S_AXI_WDATA(12),
      I3 => S_AXI_AWVALID,
      I4 => \^s_axi_awready\,
      I5 => slv_reg_uart_rx_ready(12),
      O => \slv_reg_uart_rx_ready__0\(12)
    );
\slv_reg_uart_rx_ready[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF80000000"
    )
        port map (
      I0 => S_AXI_AWADDR(3),
      I1 => S_AXI_AWADDR(2),
      I2 => S_AXI_WDATA(13),
      I3 => S_AXI_AWVALID,
      I4 => \^s_axi_awready\,
      I5 => slv_reg_uart_rx_ready(13),
      O => \slv_reg_uart_rx_ready__0\(13)
    );
\slv_reg_uart_rx_ready[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF80000000"
    )
        port map (
      I0 => S_AXI_AWADDR(3),
      I1 => S_AXI_AWADDR(2),
      I2 => S_AXI_WDATA(14),
      I3 => S_AXI_AWVALID,
      I4 => \^s_axi_awready\,
      I5 => slv_reg_uart_rx_ready(14),
      O => \slv_reg_uart_rx_ready__0\(14)
    );
\slv_reg_uart_rx_ready[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF80000000"
    )
        port map (
      I0 => S_AXI_AWADDR(3),
      I1 => S_AXI_AWADDR(2),
      I2 => S_AXI_WDATA(15),
      I3 => S_AXI_AWVALID,
      I4 => \^s_axi_awready\,
      I5 => slv_reg_uart_rx_ready(15),
      O => \slv_reg_uart_rx_ready__0\(15)
    );
\slv_reg_uart_rx_ready[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF80000000"
    )
        port map (
      I0 => S_AXI_AWADDR(3),
      I1 => S_AXI_AWADDR(2),
      I2 => S_AXI_WDATA(16),
      I3 => S_AXI_AWVALID,
      I4 => \^s_axi_awready\,
      I5 => slv_reg_uart_rx_ready(16),
      O => \slv_reg_uart_rx_ready__0\(16)
    );
\slv_reg_uart_rx_ready[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF80000000"
    )
        port map (
      I0 => S_AXI_AWADDR(3),
      I1 => S_AXI_AWADDR(2),
      I2 => S_AXI_WDATA(17),
      I3 => S_AXI_AWVALID,
      I4 => \^s_axi_awready\,
      I5 => slv_reg_uart_rx_ready(17),
      O => \slv_reg_uart_rx_ready__0\(17)
    );
\slv_reg_uart_rx_ready[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF80000000"
    )
        port map (
      I0 => S_AXI_AWADDR(3),
      I1 => S_AXI_AWADDR(2),
      I2 => S_AXI_WDATA(18),
      I3 => S_AXI_AWVALID,
      I4 => \^s_axi_awready\,
      I5 => slv_reg_uart_rx_ready(18),
      O => \slv_reg_uart_rx_ready__0\(18)
    );
\slv_reg_uart_rx_ready[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF80000000"
    )
        port map (
      I0 => S_AXI_AWADDR(3),
      I1 => S_AXI_AWADDR(2),
      I2 => S_AXI_WDATA(19),
      I3 => S_AXI_AWVALID,
      I4 => \^s_axi_awready\,
      I5 => slv_reg_uart_rx_ready(19),
      O => \slv_reg_uart_rx_ready__0\(19)
    );
\slv_reg_uart_rx_ready[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF80000000"
    )
        port map (
      I0 => S_AXI_AWADDR(3),
      I1 => S_AXI_AWADDR(2),
      I2 => S_AXI_WDATA(1),
      I3 => S_AXI_AWVALID,
      I4 => \^s_axi_awready\,
      I5 => slv_reg_uart_rx_ready(1),
      O => \slv_reg_uart_rx_ready__0\(1)
    );
\slv_reg_uart_rx_ready[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF80000000"
    )
        port map (
      I0 => S_AXI_AWADDR(3),
      I1 => S_AXI_AWADDR(2),
      I2 => S_AXI_WDATA(20),
      I3 => S_AXI_AWVALID,
      I4 => \^s_axi_awready\,
      I5 => slv_reg_uart_rx_ready(20),
      O => \slv_reg_uart_rx_ready__0\(20)
    );
\slv_reg_uart_rx_ready[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF80000000"
    )
        port map (
      I0 => S_AXI_AWADDR(3),
      I1 => S_AXI_AWADDR(2),
      I2 => S_AXI_WDATA(21),
      I3 => S_AXI_AWVALID,
      I4 => \^s_axi_awready\,
      I5 => slv_reg_uart_rx_ready(21),
      O => \slv_reg_uart_rx_ready__0\(21)
    );
\slv_reg_uart_rx_ready[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF80000000"
    )
        port map (
      I0 => S_AXI_AWADDR(3),
      I1 => S_AXI_AWADDR(2),
      I2 => S_AXI_WDATA(22),
      I3 => S_AXI_AWVALID,
      I4 => \^s_axi_awready\,
      I5 => slv_reg_uart_rx_ready(22),
      O => \slv_reg_uart_rx_ready__0\(22)
    );
\slv_reg_uart_rx_ready[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF80000000"
    )
        port map (
      I0 => S_AXI_AWADDR(3),
      I1 => S_AXI_AWADDR(2),
      I2 => S_AXI_WDATA(23),
      I3 => S_AXI_AWVALID,
      I4 => \^s_axi_awready\,
      I5 => slv_reg_uart_rx_ready(23),
      O => \slv_reg_uart_rx_ready__0\(23)
    );
\slv_reg_uart_rx_ready[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF80000000"
    )
        port map (
      I0 => S_AXI_AWADDR(3),
      I1 => S_AXI_AWADDR(2),
      I2 => S_AXI_WDATA(24),
      I3 => S_AXI_AWVALID,
      I4 => \^s_axi_awready\,
      I5 => slv_reg_uart_rx_ready(24),
      O => \slv_reg_uart_rx_ready__0\(24)
    );
\slv_reg_uart_rx_ready[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF80000000"
    )
        port map (
      I0 => S_AXI_AWADDR(3),
      I1 => S_AXI_AWADDR(2),
      I2 => S_AXI_WDATA(25),
      I3 => S_AXI_AWVALID,
      I4 => \^s_axi_awready\,
      I5 => slv_reg_uart_rx_ready(25),
      O => \slv_reg_uart_rx_ready__0\(25)
    );
\slv_reg_uart_rx_ready[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF80000000"
    )
        port map (
      I0 => S_AXI_AWADDR(3),
      I1 => S_AXI_AWADDR(2),
      I2 => S_AXI_WDATA(26),
      I3 => S_AXI_AWVALID,
      I4 => \^s_axi_awready\,
      I5 => slv_reg_uart_rx_ready(26),
      O => \slv_reg_uart_rx_ready__0\(26)
    );
\slv_reg_uart_rx_ready[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF80000000"
    )
        port map (
      I0 => S_AXI_AWADDR(3),
      I1 => S_AXI_AWADDR(2),
      I2 => S_AXI_WDATA(27),
      I3 => S_AXI_AWVALID,
      I4 => \^s_axi_awready\,
      I5 => slv_reg_uart_rx_ready(27),
      O => \slv_reg_uart_rx_ready__0\(27)
    );
\slv_reg_uart_rx_ready[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF80000000"
    )
        port map (
      I0 => S_AXI_AWADDR(3),
      I1 => S_AXI_AWADDR(2),
      I2 => S_AXI_WDATA(28),
      I3 => S_AXI_AWVALID,
      I4 => \^s_axi_awready\,
      I5 => slv_reg_uart_rx_ready(28),
      O => \slv_reg_uart_rx_ready__0\(28)
    );
\slv_reg_uart_rx_ready[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF80000000"
    )
        port map (
      I0 => S_AXI_AWADDR(3),
      I1 => S_AXI_AWADDR(2),
      I2 => S_AXI_WDATA(29),
      I3 => S_AXI_AWVALID,
      I4 => \^s_axi_awready\,
      I5 => slv_reg_uart_rx_ready(29),
      O => \slv_reg_uart_rx_ready__0\(29)
    );
\slv_reg_uart_rx_ready[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF80000000"
    )
        port map (
      I0 => S_AXI_AWADDR(3),
      I1 => S_AXI_AWADDR(2),
      I2 => S_AXI_WDATA(2),
      I3 => S_AXI_AWVALID,
      I4 => \^s_axi_awready\,
      I5 => slv_reg_uart_rx_ready(2),
      O => \slv_reg_uart_rx_ready__0\(2)
    );
\slv_reg_uart_rx_ready[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF80000000"
    )
        port map (
      I0 => S_AXI_AWADDR(3),
      I1 => S_AXI_AWADDR(2),
      I2 => S_AXI_WDATA(30),
      I3 => S_AXI_AWVALID,
      I4 => \^s_axi_awready\,
      I5 => slv_reg_uart_rx_ready(30),
      O => \slv_reg_uart_rx_ready__0\(30)
    );
\slv_reg_uart_rx_ready[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF80000000"
    )
        port map (
      I0 => S_AXI_AWADDR(3),
      I1 => S_AXI_AWADDR(2),
      I2 => S_AXI_WDATA(31),
      I3 => S_AXI_AWVALID,
      I4 => \^s_axi_awready\,
      I5 => slv_reg_uart_rx_ready(31),
      O => \slv_reg_uart_rx_ready__0\(31)
    );
\slv_reg_uart_rx_ready[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF80000000"
    )
        port map (
      I0 => S_AXI_AWADDR(3),
      I1 => S_AXI_AWADDR(2),
      I2 => S_AXI_WDATA(3),
      I3 => S_AXI_AWVALID,
      I4 => \^s_axi_awready\,
      I5 => slv_reg_uart_rx_ready(3),
      O => \slv_reg_uart_rx_ready__0\(3)
    );
\slv_reg_uart_rx_ready[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF80000000"
    )
        port map (
      I0 => S_AXI_AWADDR(3),
      I1 => S_AXI_AWADDR(2),
      I2 => S_AXI_WDATA(4),
      I3 => S_AXI_AWVALID,
      I4 => \^s_axi_awready\,
      I5 => slv_reg_uart_rx_ready(4),
      O => \slv_reg_uart_rx_ready__0\(4)
    );
\slv_reg_uart_rx_ready[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF80000000"
    )
        port map (
      I0 => S_AXI_AWADDR(3),
      I1 => S_AXI_AWADDR(2),
      I2 => S_AXI_WDATA(5),
      I3 => S_AXI_AWVALID,
      I4 => \^s_axi_awready\,
      I5 => slv_reg_uart_rx_ready(5),
      O => \slv_reg_uart_rx_ready__0\(5)
    );
\slv_reg_uart_rx_ready[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF80000000"
    )
        port map (
      I0 => S_AXI_AWADDR(3),
      I1 => S_AXI_AWADDR(2),
      I2 => S_AXI_WDATA(6),
      I3 => S_AXI_AWVALID,
      I4 => \^s_axi_awready\,
      I5 => slv_reg_uart_rx_ready(6),
      O => \slv_reg_uart_rx_ready__0\(6)
    );
\slv_reg_uart_rx_ready[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF80000000"
    )
        port map (
      I0 => S_AXI_AWADDR(3),
      I1 => S_AXI_AWADDR(2),
      I2 => S_AXI_WDATA(7),
      I3 => S_AXI_AWVALID,
      I4 => \^s_axi_awready\,
      I5 => slv_reg_uart_rx_ready(7),
      O => \slv_reg_uart_rx_ready__0\(7)
    );
\slv_reg_uart_rx_ready[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF80000000"
    )
        port map (
      I0 => S_AXI_AWADDR(3),
      I1 => S_AXI_AWADDR(2),
      I2 => S_AXI_WDATA(8),
      I3 => S_AXI_AWVALID,
      I4 => \^s_axi_awready\,
      I5 => slv_reg_uart_rx_ready(8),
      O => \slv_reg_uart_rx_ready__0\(8)
    );
\slv_reg_uart_rx_ready[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF80000000"
    )
        port map (
      I0 => S_AXI_AWADDR(3),
      I1 => S_AXI_AWADDR(2),
      I2 => S_AXI_WDATA(9),
      I3 => S_AXI_AWVALID,
      I4 => \^s_axi_awready\,
      I5 => slv_reg_uart_rx_ready(9),
      O => \slv_reg_uart_rx_ready__0\(9)
    );
\slv_reg_uart_rx_ready_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => S_AXI_ARESETN,
      D => \slv_reg_uart_rx_ready__0\(0),
      Q => slv_reg_uart_rx_ready(0),
      R => '0'
    );
\slv_reg_uart_rx_ready_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => S_AXI_ARESETN,
      D => \slv_reg_uart_rx_ready__0\(10),
      Q => slv_reg_uart_rx_ready(10),
      R => '0'
    );
\slv_reg_uart_rx_ready_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => S_AXI_ARESETN,
      D => \slv_reg_uart_rx_ready__0\(11),
      Q => slv_reg_uart_rx_ready(11),
      R => '0'
    );
\slv_reg_uart_rx_ready_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => S_AXI_ARESETN,
      D => \slv_reg_uart_rx_ready__0\(12),
      Q => slv_reg_uart_rx_ready(12),
      R => '0'
    );
\slv_reg_uart_rx_ready_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => S_AXI_ARESETN,
      D => \slv_reg_uart_rx_ready__0\(13),
      Q => slv_reg_uart_rx_ready(13),
      R => '0'
    );
\slv_reg_uart_rx_ready_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => S_AXI_ARESETN,
      D => \slv_reg_uart_rx_ready__0\(14),
      Q => slv_reg_uart_rx_ready(14),
      R => '0'
    );
\slv_reg_uart_rx_ready_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => S_AXI_ARESETN,
      D => \slv_reg_uart_rx_ready__0\(15),
      Q => slv_reg_uart_rx_ready(15),
      R => '0'
    );
\slv_reg_uart_rx_ready_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => S_AXI_ARESETN,
      D => \slv_reg_uart_rx_ready__0\(16),
      Q => slv_reg_uart_rx_ready(16),
      R => '0'
    );
\slv_reg_uart_rx_ready_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => S_AXI_ARESETN,
      D => \slv_reg_uart_rx_ready__0\(17),
      Q => slv_reg_uart_rx_ready(17),
      R => '0'
    );
\slv_reg_uart_rx_ready_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => S_AXI_ARESETN,
      D => \slv_reg_uart_rx_ready__0\(18),
      Q => slv_reg_uart_rx_ready(18),
      R => '0'
    );
\slv_reg_uart_rx_ready_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => S_AXI_ARESETN,
      D => \slv_reg_uart_rx_ready__0\(19),
      Q => slv_reg_uart_rx_ready(19),
      R => '0'
    );
\slv_reg_uart_rx_ready_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => S_AXI_ARESETN,
      D => \slv_reg_uart_rx_ready__0\(1),
      Q => slv_reg_uart_rx_ready(1),
      R => '0'
    );
\slv_reg_uart_rx_ready_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => S_AXI_ARESETN,
      D => \slv_reg_uart_rx_ready__0\(20),
      Q => slv_reg_uart_rx_ready(20),
      R => '0'
    );
\slv_reg_uart_rx_ready_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => S_AXI_ARESETN,
      D => \slv_reg_uart_rx_ready__0\(21),
      Q => slv_reg_uart_rx_ready(21),
      R => '0'
    );
\slv_reg_uart_rx_ready_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => S_AXI_ARESETN,
      D => \slv_reg_uart_rx_ready__0\(22),
      Q => slv_reg_uart_rx_ready(22),
      R => '0'
    );
\slv_reg_uart_rx_ready_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => S_AXI_ARESETN,
      D => \slv_reg_uart_rx_ready__0\(23),
      Q => slv_reg_uart_rx_ready(23),
      R => '0'
    );
\slv_reg_uart_rx_ready_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => S_AXI_ARESETN,
      D => \slv_reg_uart_rx_ready__0\(24),
      Q => slv_reg_uart_rx_ready(24),
      R => '0'
    );
\slv_reg_uart_rx_ready_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => S_AXI_ARESETN,
      D => \slv_reg_uart_rx_ready__0\(25),
      Q => slv_reg_uart_rx_ready(25),
      R => '0'
    );
\slv_reg_uart_rx_ready_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => S_AXI_ARESETN,
      D => \slv_reg_uart_rx_ready__0\(26),
      Q => slv_reg_uart_rx_ready(26),
      R => '0'
    );
\slv_reg_uart_rx_ready_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => S_AXI_ARESETN,
      D => \slv_reg_uart_rx_ready__0\(27),
      Q => slv_reg_uart_rx_ready(27),
      R => '0'
    );
\slv_reg_uart_rx_ready_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => S_AXI_ARESETN,
      D => \slv_reg_uart_rx_ready__0\(28),
      Q => slv_reg_uart_rx_ready(28),
      R => '0'
    );
\slv_reg_uart_rx_ready_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => S_AXI_ARESETN,
      D => \slv_reg_uart_rx_ready__0\(29),
      Q => slv_reg_uart_rx_ready(29),
      R => '0'
    );
\slv_reg_uart_rx_ready_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => S_AXI_ARESETN,
      D => \slv_reg_uart_rx_ready__0\(2),
      Q => slv_reg_uart_rx_ready(2),
      R => '0'
    );
\slv_reg_uart_rx_ready_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => S_AXI_ARESETN,
      D => \slv_reg_uart_rx_ready__0\(30),
      Q => slv_reg_uart_rx_ready(30),
      R => '0'
    );
\slv_reg_uart_rx_ready_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => S_AXI_ARESETN,
      D => \slv_reg_uart_rx_ready__0\(31),
      Q => slv_reg_uart_rx_ready(31),
      R => '0'
    );
\slv_reg_uart_rx_ready_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => S_AXI_ARESETN,
      D => \slv_reg_uart_rx_ready__0\(3),
      Q => slv_reg_uart_rx_ready(3),
      R => '0'
    );
\slv_reg_uart_rx_ready_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => S_AXI_ARESETN,
      D => \slv_reg_uart_rx_ready__0\(4),
      Q => slv_reg_uart_rx_ready(4),
      R => '0'
    );
\slv_reg_uart_rx_ready_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => S_AXI_ARESETN,
      D => \slv_reg_uart_rx_ready__0\(5),
      Q => slv_reg_uart_rx_ready(5),
      R => '0'
    );
\slv_reg_uart_rx_ready_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => S_AXI_ARESETN,
      D => \slv_reg_uart_rx_ready__0\(6),
      Q => slv_reg_uart_rx_ready(6),
      R => '0'
    );
\slv_reg_uart_rx_ready_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => S_AXI_ARESETN,
      D => \slv_reg_uart_rx_ready__0\(7),
      Q => slv_reg_uart_rx_ready(7),
      R => '0'
    );
\slv_reg_uart_rx_ready_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => S_AXI_ARESETN,
      D => \slv_reg_uart_rx_ready__0\(8),
      Q => slv_reg_uart_rx_ready(8),
      R => '0'
    );
\slv_reg_uart_rx_ready_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => S_AXI_ARESETN,
      D => \slv_reg_uart_rx_ready__0\(9),
      Q => slv_reg_uart_rx_ready(9),
      R => '0'
    );
\slv_reg_uart_tx_data[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^s_axi_awready\,
      I1 => S_AXI_AWVALID,
      I2 => S_AXI_AWADDR(3),
      I3 => S_AXI_AWADDR(2),
      O => slv_reg_uart_tx_data
    );
\slv_reg_uart_tx_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_uart_tx_data,
      D => S_AXI_WDATA(0),
      Q => TX_DATA(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg_uart_tx_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_uart_tx_data,
      D => S_AXI_WDATA(1),
      Q => TX_DATA(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg_uart_tx_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_uart_tx_data,
      D => S_AXI_WDATA(2),
      Q => TX_DATA(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg_uart_tx_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_uart_tx_data,
      D => S_AXI_WDATA(3),
      Q => TX_DATA(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg_uart_tx_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_uart_tx_data,
      D => S_AXI_WDATA(4),
      Q => TX_DATA(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg_uart_tx_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_uart_tx_data,
      D => S_AXI_WDATA(5),
      Q => TX_DATA(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg_uart_tx_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_uart_tx_data,
      D => S_AXI_WDATA(6),
      Q => TX_DATA(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg_uart_tx_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_uart_tx_data,
      D => S_AXI_WDATA(7),
      Q => TX_DATA(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg_uart_tx_ready_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => TX_READY,
      Q => slv_reg_uart_tx_ready(4),
      R => '0'
    );
\slv_reg_uart_tx_start[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => S_AXI_WDATA(0),
      I1 => S_AXI_ARESETN,
      I2 => S_AXI_AWADDR(2),
      I3 => S_AXI_AWADDR(3),
      I4 => axi_awready0,
      I5 => \slv_reg_uart_tx_start_reg_n_0_[0]\,
      O => \slv_reg_uart_tx_start[0]_i_1_n_0\
    );
\slv_reg_uart_tx_start_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \slv_reg_uart_tx_start[0]_i_1_n_0\,
      Q => \slv_reg_uart_tx_start_reg_n_0_[0]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity AXI_UART_BD_myip_slave_lite_v1_0_0_0 is
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
    TX_READY : in STD_LOGIC;
    RX_READY : in STD_LOGIC;
    RX_DATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TX_DATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    TX_START : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of AXI_UART_BD_myip_slave_lite_v1_0_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of AXI_UART_BD_myip_slave_lite_v1_0_0_0 : entity is "AXI_UART_BD_myip_slave_lite_v1_0_0_0,myip_slave_lite_v1_0_S00_AXI,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of AXI_UART_BD_myip_slave_lite_v1_0_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of AXI_UART_BD_myip_slave_lite_v1_0_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of AXI_UART_BD_myip_slave_lite_v1_0_0_0 : entity is "myip_slave_lite_v1_0_S00_AXI,Vivado 2024.1";
end AXI_UART_BD_myip_slave_lite_v1_0_0_0;

architecture STRUCTURE of AXI_UART_BD_myip_slave_lite_v1_0_0_0 is
  signal \<const0>\ : STD_LOGIC;
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
  attribute X_INTERFACE_PARAMETER of S_AXI_ACLK : signal is "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_ARESETN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN AXI_UART_BD_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXI_ARESETN : signal is "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST";
  attribute X_INTERFACE_PARAMETER of S_AXI_ARESETN : signal is "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXI_ARREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute X_INTERFACE_INFO of S_AXI_ARVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute X_INTERFACE_INFO of S_AXI_AWREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute X_INTERFACE_INFO of S_AXI_AWVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute X_INTERFACE_INFO of S_AXI_BREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute X_INTERFACE_INFO of S_AXI_BVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute X_INTERFACE_INFO of S_AXI_RREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of S_AXI_RREADY : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN AXI_UART_BD_processing_system7_0_1_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
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
inst: entity work.AXI_UART_BD_myip_slave_lite_v1_0_0_0_myip_slave_lite_v1_0_S00_AXI
     port map (
      RX_DATA(7 downto 0) => RX_DATA(7 downto 0),
      RX_READY => RX_READY,
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARADDR(3 downto 2) => S_AXI_ARADDR(3 downto 2),
      S_AXI_ARADDR(1 downto 0) => B"00",
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ARPROT(2 downto 0) => B"000",
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_AWADDR(3 downto 0) => S_AXI_AWADDR(3 downto 0),
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
      S_AXI_WDATA(31 downto 0) => S_AXI_WDATA(31 downto 0),
      S_AXI_WREADY => S_AXI_WREADY,
      S_AXI_WSTRB(3 downto 0) => B"0000",
      S_AXI_WVALID => S_AXI_WVALID,
      TX_DATA(7 downto 0) => TX_DATA(7 downto 0),
      TX_READY => TX_READY,
      TX_START => TX_START
    );
end STRUCTURE;
