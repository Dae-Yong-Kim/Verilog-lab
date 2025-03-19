-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Mon Dec 16 16:13:15 2024
-- Host        : COMSYS01 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Verilog-lab/Zynq_axi_7seg/Zynq_axi_7seg.gen/sources_1/bd/Zynq_axi_7seg/ip/Zynq_axi_7seg_myip_slave_lite_v1_0_0_0/Zynq_axi_7seg_myip_slave_lite_v1_0_0_0_sim_netlist.vhdl
-- Design      : Zynq_axi_7seg_myip_slave_lite_v1_0_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z007sclg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_axi_7seg_myip_slave_lite_v1_0_0_0_myip_slave_lite_v1_0_S00_AXI is
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
    DATA : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ADDR_LSB : integer;
  attribute ADDR_LSB of Zynq_axi_7seg_myip_slave_lite_v1_0_0_0_myip_slave_lite_v1_0_S00_AXI : entity is 2;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of Zynq_axi_7seg_myip_slave_lite_v1_0_0_0_myip_slave_lite_v1_0_S00_AXI : entity is 4;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of Zynq_axi_7seg_myip_slave_lite_v1_0_0_0_myip_slave_lite_v1_0_S00_AXI : entity is 32;
  attribute Idle : string;
  attribute Idle of Zynq_axi_7seg_myip_slave_lite_v1_0_0_0_myip_slave_lite_v1_0_S00_AXI : entity is "2'b00";
  attribute OPT_MEM_ADDR_BITS : integer;
  attribute OPT_MEM_ADDR_BITS of Zynq_axi_7seg_myip_slave_lite_v1_0_0_0_myip_slave_lite_v1_0_S00_AXI : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Zynq_axi_7seg_myip_slave_lite_v1_0_0_0_myip_slave_lite_v1_0_S00_AXI : entity is "myip_slave_lite_v1_0_S00_AXI";
  attribute Raddr : string;
  attribute Raddr of Zynq_axi_7seg_myip_slave_lite_v1_0_0_0_myip_slave_lite_v1_0_S00_AXI : entity is "2'b10";
  attribute Rdata : string;
  attribute Rdata of Zynq_axi_7seg_myip_slave_lite_v1_0_0_0_myip_slave_lite_v1_0_S00_AXI : entity is "2'b11";
  attribute Waddr : string;
  attribute Waddr of Zynq_axi_7seg_myip_slave_lite_v1_0_0_0_myip_slave_lite_v1_0_S00_AXI : entity is "2'b10";
  attribute Wdata : string;
  attribute Wdata of Zynq_axi_7seg_myip_slave_lite_v1_0_0_0_myip_slave_lite_v1_0_S00_AXI : entity is "2'b11";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of Zynq_axi_7seg_myip_slave_lite_v1_0_0_0_myip_slave_lite_v1_0_S00_AXI : entity is "soft";
end Zynq_axi_7seg_myip_slave_lite_v1_0_0_0_myip_slave_lite_v1_0_S00_AXI;

architecture STRUCTURE of Zynq_axi_7seg_myip_slave_lite_v1_0_0_0_myip_slave_lite_v1_0_S00_AXI is
  signal \<const0>\ : STD_LOGIC;
  signal \^data\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of \^data\ : signal is std.standard.true;
  signal \FSM_sequential_state_read[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_read[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_write[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_write[1]_i_1_n_0\ : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal axi_arready_i_1_n_0 : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_awready01_out : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal axi_awready_i_2_n_0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute MARK_DEBUG of axi_wdata : signal is std.standard.true;
  signal \axi_wdata[31]_i_1_n_0\ : STD_LOGIC;
  signal axi_wready_i_1_n_0 : STD_LOGIC;
  signal \p_1_in__0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal slv_reg_led : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute MARK_DEBUG of slv_reg_led : signal is std.standard.true;
  signal \slv_reg_led[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_led[10]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_led[11]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_led[12]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_led[13]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_led[14]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_led[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_led[16]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_led[17]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_led[18]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_led[19]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_led[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_led[20]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_led[21]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_led[22]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_led[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_led[24]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_led[25]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_led[26]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_led[27]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_led[28]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_led[29]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_led[2]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_led[30]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_led[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg_led[3]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_led[4]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_led[5]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_led[6]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_led[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_led[8]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_led[9]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg_sw : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal state_read : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal state_write : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_read_reg[0]\ : label is "Idle:00,Rdata:10,Raddr:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_read_reg[1]\ : label is "Idle:00,Rdata:10,Raddr:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_write_reg[0]\ : label is "Idle:00,Wdata:10,Waddr:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_write_reg[1]\ : label is "Idle:00,Wdata:10,Waddr:01";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \S_AXI_RDATA[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[1]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[2]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[3]_INST_0\ : label is "soft_lutpair1";
  attribute KEEP : string;
  attribute KEEP of \axi_wdata_reg[0]\ : label is "yes";
  attribute mark_debug_string : string;
  attribute mark_debug_string of \axi_wdata_reg[0]\ : label is "true";
  attribute KEEP of \axi_wdata_reg[10]\ : label is "yes";
  attribute mark_debug_string of \axi_wdata_reg[10]\ : label is "true";
  attribute KEEP of \axi_wdata_reg[11]\ : label is "yes";
  attribute mark_debug_string of \axi_wdata_reg[11]\ : label is "true";
  attribute KEEP of \axi_wdata_reg[12]\ : label is "yes";
  attribute mark_debug_string of \axi_wdata_reg[12]\ : label is "true";
  attribute KEEP of \axi_wdata_reg[13]\ : label is "yes";
  attribute mark_debug_string of \axi_wdata_reg[13]\ : label is "true";
  attribute KEEP of \axi_wdata_reg[14]\ : label is "yes";
  attribute mark_debug_string of \axi_wdata_reg[14]\ : label is "true";
  attribute KEEP of \axi_wdata_reg[15]\ : label is "yes";
  attribute mark_debug_string of \axi_wdata_reg[15]\ : label is "true";
  attribute KEEP of \axi_wdata_reg[16]\ : label is "yes";
  attribute mark_debug_string of \axi_wdata_reg[16]\ : label is "true";
  attribute KEEP of \axi_wdata_reg[17]\ : label is "yes";
  attribute mark_debug_string of \axi_wdata_reg[17]\ : label is "true";
  attribute KEEP of \axi_wdata_reg[18]\ : label is "yes";
  attribute mark_debug_string of \axi_wdata_reg[18]\ : label is "true";
  attribute KEEP of \axi_wdata_reg[19]\ : label is "yes";
  attribute mark_debug_string of \axi_wdata_reg[19]\ : label is "true";
  attribute KEEP of \axi_wdata_reg[1]\ : label is "yes";
  attribute mark_debug_string of \axi_wdata_reg[1]\ : label is "true";
  attribute KEEP of \axi_wdata_reg[20]\ : label is "yes";
  attribute mark_debug_string of \axi_wdata_reg[20]\ : label is "true";
  attribute KEEP of \axi_wdata_reg[21]\ : label is "yes";
  attribute mark_debug_string of \axi_wdata_reg[21]\ : label is "true";
  attribute KEEP of \axi_wdata_reg[22]\ : label is "yes";
  attribute mark_debug_string of \axi_wdata_reg[22]\ : label is "true";
  attribute KEEP of \axi_wdata_reg[23]\ : label is "yes";
  attribute mark_debug_string of \axi_wdata_reg[23]\ : label is "true";
  attribute KEEP of \axi_wdata_reg[24]\ : label is "yes";
  attribute mark_debug_string of \axi_wdata_reg[24]\ : label is "true";
  attribute KEEP of \axi_wdata_reg[25]\ : label is "yes";
  attribute mark_debug_string of \axi_wdata_reg[25]\ : label is "true";
  attribute KEEP of \axi_wdata_reg[26]\ : label is "yes";
  attribute mark_debug_string of \axi_wdata_reg[26]\ : label is "true";
  attribute KEEP of \axi_wdata_reg[27]\ : label is "yes";
  attribute mark_debug_string of \axi_wdata_reg[27]\ : label is "true";
  attribute KEEP of \axi_wdata_reg[28]\ : label is "yes";
  attribute mark_debug_string of \axi_wdata_reg[28]\ : label is "true";
  attribute KEEP of \axi_wdata_reg[29]\ : label is "yes";
  attribute mark_debug_string of \axi_wdata_reg[29]\ : label is "true";
  attribute KEEP of \axi_wdata_reg[2]\ : label is "yes";
  attribute mark_debug_string of \axi_wdata_reg[2]\ : label is "true";
  attribute KEEP of \axi_wdata_reg[30]\ : label is "yes";
  attribute mark_debug_string of \axi_wdata_reg[30]\ : label is "true";
  attribute KEEP of \axi_wdata_reg[31]\ : label is "yes";
  attribute mark_debug_string of \axi_wdata_reg[31]\ : label is "true";
  attribute KEEP of \axi_wdata_reg[3]\ : label is "yes";
  attribute mark_debug_string of \axi_wdata_reg[3]\ : label is "true";
  attribute KEEP of \axi_wdata_reg[4]\ : label is "yes";
  attribute mark_debug_string of \axi_wdata_reg[4]\ : label is "true";
  attribute KEEP of \axi_wdata_reg[5]\ : label is "yes";
  attribute mark_debug_string of \axi_wdata_reg[5]\ : label is "true";
  attribute KEEP of \axi_wdata_reg[6]\ : label is "yes";
  attribute mark_debug_string of \axi_wdata_reg[6]\ : label is "true";
  attribute KEEP of \axi_wdata_reg[7]\ : label is "yes";
  attribute mark_debug_string of \axi_wdata_reg[7]\ : label is "true";
  attribute KEEP of \axi_wdata_reg[8]\ : label is "yes";
  attribute mark_debug_string of \axi_wdata_reg[8]\ : label is "true";
  attribute KEEP of \axi_wdata_reg[9]\ : label is "yes";
  attribute mark_debug_string of \axi_wdata_reg[9]\ : label is "true";
  attribute KEEP of \slv_reg_led_reg[0]\ : label is "yes";
  attribute mark_debug_string of \slv_reg_led_reg[0]\ : label is "true";
  attribute KEEP of \slv_reg_led_reg[10]\ : label is "yes";
  attribute mark_debug_string of \slv_reg_led_reg[10]\ : label is "true";
  attribute KEEP of \slv_reg_led_reg[11]\ : label is "yes";
  attribute mark_debug_string of \slv_reg_led_reg[11]\ : label is "true";
  attribute KEEP of \slv_reg_led_reg[12]\ : label is "yes";
  attribute mark_debug_string of \slv_reg_led_reg[12]\ : label is "true";
  attribute KEEP of \slv_reg_led_reg[13]\ : label is "yes";
  attribute mark_debug_string of \slv_reg_led_reg[13]\ : label is "true";
  attribute KEEP of \slv_reg_led_reg[14]\ : label is "yes";
  attribute mark_debug_string of \slv_reg_led_reg[14]\ : label is "true";
  attribute KEEP of \slv_reg_led_reg[15]\ : label is "yes";
  attribute mark_debug_string of \slv_reg_led_reg[15]\ : label is "true";
  attribute KEEP of \slv_reg_led_reg[16]\ : label is "yes";
  attribute mark_debug_string of \slv_reg_led_reg[16]\ : label is "true";
  attribute KEEP of \slv_reg_led_reg[17]\ : label is "yes";
  attribute mark_debug_string of \slv_reg_led_reg[17]\ : label is "true";
  attribute KEEP of \slv_reg_led_reg[18]\ : label is "yes";
  attribute mark_debug_string of \slv_reg_led_reg[18]\ : label is "true";
  attribute KEEP of \slv_reg_led_reg[19]\ : label is "yes";
  attribute mark_debug_string of \slv_reg_led_reg[19]\ : label is "true";
  attribute KEEP of \slv_reg_led_reg[1]\ : label is "yes";
  attribute mark_debug_string of \slv_reg_led_reg[1]\ : label is "true";
  attribute KEEP of \slv_reg_led_reg[20]\ : label is "yes";
  attribute mark_debug_string of \slv_reg_led_reg[20]\ : label is "true";
  attribute KEEP of \slv_reg_led_reg[21]\ : label is "yes";
  attribute mark_debug_string of \slv_reg_led_reg[21]\ : label is "true";
  attribute KEEP of \slv_reg_led_reg[22]\ : label is "yes";
  attribute mark_debug_string of \slv_reg_led_reg[22]\ : label is "true";
  attribute KEEP of \slv_reg_led_reg[23]\ : label is "yes";
  attribute mark_debug_string of \slv_reg_led_reg[23]\ : label is "true";
  attribute KEEP of \slv_reg_led_reg[24]\ : label is "yes";
  attribute mark_debug_string of \slv_reg_led_reg[24]\ : label is "true";
  attribute KEEP of \slv_reg_led_reg[25]\ : label is "yes";
  attribute mark_debug_string of \slv_reg_led_reg[25]\ : label is "true";
  attribute KEEP of \slv_reg_led_reg[26]\ : label is "yes";
  attribute mark_debug_string of \slv_reg_led_reg[26]\ : label is "true";
  attribute KEEP of \slv_reg_led_reg[27]\ : label is "yes";
  attribute mark_debug_string of \slv_reg_led_reg[27]\ : label is "true";
  attribute KEEP of \slv_reg_led_reg[28]\ : label is "yes";
  attribute mark_debug_string of \slv_reg_led_reg[28]\ : label is "true";
  attribute KEEP of \slv_reg_led_reg[29]\ : label is "yes";
  attribute mark_debug_string of \slv_reg_led_reg[29]\ : label is "true";
  attribute KEEP of \slv_reg_led_reg[2]\ : label is "yes";
  attribute mark_debug_string of \slv_reg_led_reg[2]\ : label is "true";
  attribute KEEP of \slv_reg_led_reg[30]\ : label is "yes";
  attribute mark_debug_string of \slv_reg_led_reg[30]\ : label is "true";
  attribute KEEP of \slv_reg_led_reg[31]\ : label is "yes";
  attribute mark_debug_string of \slv_reg_led_reg[31]\ : label is "true";
  attribute KEEP of \slv_reg_led_reg[3]\ : label is "yes";
  attribute mark_debug_string of \slv_reg_led_reg[3]\ : label is "true";
  attribute KEEP of \slv_reg_led_reg[4]\ : label is "yes";
  attribute mark_debug_string of \slv_reg_led_reg[4]\ : label is "true";
  attribute KEEP of \slv_reg_led_reg[5]\ : label is "yes";
  attribute mark_debug_string of \slv_reg_led_reg[5]\ : label is "true";
  attribute KEEP of \slv_reg_led_reg[6]\ : label is "yes";
  attribute mark_debug_string of \slv_reg_led_reg[6]\ : label is "true";
  attribute KEEP of \slv_reg_led_reg[7]\ : label is "yes";
  attribute mark_debug_string of \slv_reg_led_reg[7]\ : label is "true";
  attribute KEEP of \slv_reg_led_reg[8]\ : label is "yes";
  attribute mark_debug_string of \slv_reg_led_reg[8]\ : label is "true";
  attribute KEEP of \slv_reg_led_reg[9]\ : label is "yes";
  attribute mark_debug_string of \slv_reg_led_reg[9]\ : label is "true";
  attribute mark_debug_string of DATA : signal is "true";
  attribute mark_debug_string of SW : signal is "true";
  attribute mark_debug_string of S_AXI_WDATA : signal is "true";
begin
  DATA(7 downto 0) <= \^data\(7 downto 0);
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_BRESP(1) <= \<const0>\;
  S_AXI_BRESP(0) <= \<const0>\;
  S_AXI_BVALID <= \^s_axi_bvalid\;
  S_AXI_RDATA(31) <= \<const0>\;
  S_AXI_RDATA(30) <= \<const0>\;
  S_AXI_RDATA(29) <= \<const0>\;
  S_AXI_RDATA(28) <= \<const0>\;
  S_AXI_RDATA(27) <= \<const0>\;
  S_AXI_RDATA(26) <= \<const0>\;
  S_AXI_RDATA(25) <= \<const0>\;
  S_AXI_RDATA(24) <= \<const0>\;
  S_AXI_RDATA(23) <= \<const0>\;
  S_AXI_RDATA(22) <= \<const0>\;
  S_AXI_RDATA(21) <= \<const0>\;
  S_AXI_RDATA(20) <= \<const0>\;
  S_AXI_RDATA(19) <= \<const0>\;
  S_AXI_RDATA(18) <= \<const0>\;
  S_AXI_RDATA(17) <= \<const0>\;
  S_AXI_RDATA(16) <= \<const0>\;
  S_AXI_RDATA(15) <= \<const0>\;
  S_AXI_RDATA(14) <= \<const0>\;
  S_AXI_RDATA(13) <= \<const0>\;
  S_AXI_RDATA(12) <= \<const0>\;
  S_AXI_RDATA(11) <= \<const0>\;
  S_AXI_RDATA(10) <= \<const0>\;
  S_AXI_RDATA(9) <= \<const0>\;
  S_AXI_RDATA(8) <= \<const0>\;
  S_AXI_RDATA(7) <= \<const0>\;
  S_AXI_RDATA(6) <= \<const0>\;
  S_AXI_RDATA(5) <= \<const0>\;
  S_AXI_RDATA(4) <= \<const0>\;
  S_AXI_RDATA(3 downto 0) <= \^s_axi_rdata\(3 downto 0);
  S_AXI_RRESP(1) <= \<const0>\;
  S_AXI_RRESP(0) <= \<const0>\;
  S_AXI_RVALID <= \^s_axi_rvalid\;
  S_AXI_WREADY <= \^s_axi_wready\;
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
\S_AXI_RDATA[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => axi_araddr(2),
      I2 => slv_reg_sw(0),
      O => \^s_axi_rdata\(0)
    );
\S_AXI_RDATA[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => axi_araddr(2),
      I2 => slv_reg_sw(1),
      O => \^s_axi_rdata\(1)
    );
\S_AXI_RDATA[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => axi_araddr(2),
      I2 => slv_reg_sw(2),
      O => \^s_axi_rdata\(2)
    );
\S_AXI_RDATA[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => axi_araddr(2),
      I2 => slv_reg_sw(3),
      O => \^s_axi_rdata\(3)
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
\axi_wdata[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => S_AXI_WDATA(0),
      I1 => S_AXI_WVALID,
      I2 => \^s_axi_wready\,
      I3 => S_AXI_ARESETN,
      I4 => axi_wdata(0),
      O => \p_1_in__0\(0)
    );
\axi_wdata[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => S_AXI_WDATA(10),
      I1 => S_AXI_WVALID,
      I2 => \^s_axi_wready\,
      I3 => S_AXI_ARESETN,
      I4 => axi_wdata(10),
      O => \p_1_in__0\(10)
    );
\axi_wdata[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => S_AXI_WDATA(11),
      I1 => S_AXI_WVALID,
      I2 => \^s_axi_wready\,
      I3 => S_AXI_ARESETN,
      I4 => axi_wdata(11),
      O => \p_1_in__0\(11)
    );
\axi_wdata[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => S_AXI_WDATA(12),
      I1 => S_AXI_WVALID,
      I2 => \^s_axi_wready\,
      I3 => S_AXI_ARESETN,
      I4 => axi_wdata(12),
      O => \p_1_in__0\(12)
    );
\axi_wdata[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => S_AXI_WDATA(13),
      I1 => S_AXI_WVALID,
      I2 => \^s_axi_wready\,
      I3 => S_AXI_ARESETN,
      I4 => axi_wdata(13),
      O => \p_1_in__0\(13)
    );
\axi_wdata[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => S_AXI_WDATA(14),
      I1 => S_AXI_WVALID,
      I2 => \^s_axi_wready\,
      I3 => S_AXI_ARESETN,
      I4 => axi_wdata(14),
      O => \p_1_in__0\(14)
    );
\axi_wdata[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => S_AXI_WDATA(15),
      I1 => S_AXI_WVALID,
      I2 => \^s_axi_wready\,
      I3 => S_AXI_ARESETN,
      I4 => axi_wdata(15),
      O => \p_1_in__0\(15)
    );
\axi_wdata[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => S_AXI_WDATA(16),
      I1 => S_AXI_WVALID,
      I2 => \^s_axi_wready\,
      I3 => S_AXI_ARESETN,
      I4 => axi_wdata(16),
      O => \p_1_in__0\(16)
    );
\axi_wdata[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => S_AXI_WDATA(17),
      I1 => S_AXI_WVALID,
      I2 => \^s_axi_wready\,
      I3 => S_AXI_ARESETN,
      I4 => axi_wdata(17),
      O => \p_1_in__0\(17)
    );
\axi_wdata[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => S_AXI_WDATA(18),
      I1 => S_AXI_WVALID,
      I2 => \^s_axi_wready\,
      I3 => S_AXI_ARESETN,
      I4 => axi_wdata(18),
      O => \p_1_in__0\(18)
    );
\axi_wdata[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => S_AXI_WDATA(19),
      I1 => S_AXI_WVALID,
      I2 => \^s_axi_wready\,
      I3 => S_AXI_ARESETN,
      I4 => axi_wdata(19),
      O => \p_1_in__0\(19)
    );
\axi_wdata[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => S_AXI_WDATA(1),
      I1 => S_AXI_WVALID,
      I2 => \^s_axi_wready\,
      I3 => S_AXI_ARESETN,
      I4 => axi_wdata(1),
      O => \p_1_in__0\(1)
    );
\axi_wdata[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => S_AXI_WDATA(20),
      I1 => S_AXI_WVALID,
      I2 => \^s_axi_wready\,
      I3 => S_AXI_ARESETN,
      I4 => axi_wdata(20),
      O => \p_1_in__0\(20)
    );
\axi_wdata[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => S_AXI_WDATA(21),
      I1 => S_AXI_WVALID,
      I2 => \^s_axi_wready\,
      I3 => S_AXI_ARESETN,
      I4 => axi_wdata(21),
      O => \p_1_in__0\(21)
    );
\axi_wdata[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => S_AXI_WDATA(22),
      I1 => S_AXI_WVALID,
      I2 => \^s_axi_wready\,
      I3 => S_AXI_ARESETN,
      I4 => axi_wdata(22),
      O => \p_1_in__0\(22)
    );
\axi_wdata[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => S_AXI_WDATA(23),
      I1 => S_AXI_WVALID,
      I2 => \^s_axi_wready\,
      I3 => S_AXI_ARESETN,
      I4 => axi_wdata(23),
      O => \p_1_in__0\(23)
    );
\axi_wdata[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => S_AXI_WDATA(24),
      I1 => S_AXI_WVALID,
      I2 => \^s_axi_wready\,
      I3 => S_AXI_ARESETN,
      I4 => axi_wdata(24),
      O => \p_1_in__0\(24)
    );
\axi_wdata[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => S_AXI_WDATA(25),
      I1 => S_AXI_WVALID,
      I2 => \^s_axi_wready\,
      I3 => S_AXI_ARESETN,
      I4 => axi_wdata(25),
      O => \p_1_in__0\(25)
    );
\axi_wdata[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => S_AXI_WDATA(26),
      I1 => S_AXI_WVALID,
      I2 => \^s_axi_wready\,
      I3 => S_AXI_ARESETN,
      I4 => axi_wdata(26),
      O => \p_1_in__0\(26)
    );
\axi_wdata[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => S_AXI_WDATA(27),
      I1 => S_AXI_WVALID,
      I2 => \^s_axi_wready\,
      I3 => S_AXI_ARESETN,
      I4 => axi_wdata(27),
      O => \p_1_in__0\(27)
    );
\axi_wdata[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => S_AXI_WDATA(28),
      I1 => S_AXI_WVALID,
      I2 => \^s_axi_wready\,
      I3 => S_AXI_ARESETN,
      I4 => axi_wdata(28),
      O => \p_1_in__0\(28)
    );
\axi_wdata[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => S_AXI_WDATA(29),
      I1 => S_AXI_WVALID,
      I2 => \^s_axi_wready\,
      I3 => S_AXI_ARESETN,
      I4 => axi_wdata(29),
      O => \p_1_in__0\(29)
    );
\axi_wdata[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => S_AXI_WDATA(2),
      I1 => S_AXI_WVALID,
      I2 => \^s_axi_wready\,
      I3 => S_AXI_ARESETN,
      I4 => axi_wdata(2),
      O => \p_1_in__0\(2)
    );
\axi_wdata[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => S_AXI_WDATA(30),
      I1 => S_AXI_WVALID,
      I2 => \^s_axi_wready\,
      I3 => S_AXI_ARESETN,
      I4 => axi_wdata(30),
      O => \p_1_in__0\(30)
    );
\axi_wdata[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => state_write(0),
      I1 => state_write(1),
      I2 => S_AXI_ARESETN,
      O => \axi_wdata[31]_i_1_n_0\
    );
\axi_wdata[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => S_AXI_WDATA(31),
      I1 => S_AXI_WVALID,
      I2 => \^s_axi_wready\,
      I3 => S_AXI_ARESETN,
      I4 => axi_wdata(31),
      O => \p_1_in__0\(31)
    );
\axi_wdata[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => S_AXI_WDATA(3),
      I1 => S_AXI_WVALID,
      I2 => \^s_axi_wready\,
      I3 => S_AXI_ARESETN,
      I4 => axi_wdata(3),
      O => \p_1_in__0\(3)
    );
\axi_wdata[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => S_AXI_WDATA(4),
      I1 => S_AXI_WVALID,
      I2 => \^s_axi_wready\,
      I3 => S_AXI_ARESETN,
      I4 => axi_wdata(4),
      O => \p_1_in__0\(4)
    );
\axi_wdata[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => S_AXI_WDATA(5),
      I1 => S_AXI_WVALID,
      I2 => \^s_axi_wready\,
      I3 => S_AXI_ARESETN,
      I4 => axi_wdata(5),
      O => \p_1_in__0\(5)
    );
\axi_wdata[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => S_AXI_WDATA(6),
      I1 => S_AXI_WVALID,
      I2 => \^s_axi_wready\,
      I3 => S_AXI_ARESETN,
      I4 => axi_wdata(6),
      O => \p_1_in__0\(6)
    );
\axi_wdata[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => S_AXI_WDATA(7),
      I1 => S_AXI_WVALID,
      I2 => \^s_axi_wready\,
      I3 => S_AXI_ARESETN,
      I4 => axi_wdata(7),
      O => \p_1_in__0\(7)
    );
\axi_wdata[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => S_AXI_WDATA(8),
      I1 => S_AXI_WVALID,
      I2 => \^s_axi_wready\,
      I3 => S_AXI_ARESETN,
      I4 => axi_wdata(8),
      O => \p_1_in__0\(8)
    );
\axi_wdata[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => S_AXI_WDATA(9),
      I1 => S_AXI_WVALID,
      I2 => \^s_axi_wready\,
      I3 => S_AXI_ARESETN,
      I4 => axi_wdata(9),
      O => \p_1_in__0\(9)
    );
\axi_wdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => \p_1_in__0\(0),
      Q => axi_wdata(0),
      R => '0'
    );
\axi_wdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => \p_1_in__0\(10),
      Q => axi_wdata(10),
      R => '0'
    );
\axi_wdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => \p_1_in__0\(11),
      Q => axi_wdata(11),
      R => '0'
    );
\axi_wdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => \p_1_in__0\(12),
      Q => axi_wdata(12),
      R => '0'
    );
\axi_wdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => \p_1_in__0\(13),
      Q => axi_wdata(13),
      R => '0'
    );
\axi_wdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => \p_1_in__0\(14),
      Q => axi_wdata(14),
      R => '0'
    );
\axi_wdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => \p_1_in__0\(15),
      Q => axi_wdata(15),
      R => '0'
    );
\axi_wdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => \p_1_in__0\(16),
      Q => axi_wdata(16),
      R => '0'
    );
\axi_wdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => \p_1_in__0\(17),
      Q => axi_wdata(17),
      R => '0'
    );
\axi_wdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => \p_1_in__0\(18),
      Q => axi_wdata(18),
      R => '0'
    );
\axi_wdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => \p_1_in__0\(19),
      Q => axi_wdata(19),
      R => '0'
    );
\axi_wdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => \p_1_in__0\(1),
      Q => axi_wdata(1),
      R => '0'
    );
\axi_wdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => \p_1_in__0\(20),
      Q => axi_wdata(20),
      R => '0'
    );
\axi_wdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => \p_1_in__0\(21),
      Q => axi_wdata(21),
      R => '0'
    );
\axi_wdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => \p_1_in__0\(22),
      Q => axi_wdata(22),
      R => '0'
    );
\axi_wdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => \p_1_in__0\(23),
      Q => axi_wdata(23),
      R => '0'
    );
\axi_wdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => \p_1_in__0\(24),
      Q => axi_wdata(24),
      R => '0'
    );
\axi_wdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => \p_1_in__0\(25),
      Q => axi_wdata(25),
      R => '0'
    );
\axi_wdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => \p_1_in__0\(26),
      Q => axi_wdata(26),
      R => '0'
    );
\axi_wdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => \p_1_in__0\(27),
      Q => axi_wdata(27),
      R => '0'
    );
\axi_wdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => \p_1_in__0\(28),
      Q => axi_wdata(28),
      R => '0'
    );
\axi_wdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => \p_1_in__0\(29),
      Q => axi_wdata(29),
      R => '0'
    );
\axi_wdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => \p_1_in__0\(2),
      Q => axi_wdata(2),
      R => '0'
    );
\axi_wdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => \p_1_in__0\(30),
      Q => axi_wdata(30),
      R => '0'
    );
\axi_wdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => \p_1_in__0\(31),
      Q => axi_wdata(31),
      R => '0'
    );
\axi_wdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => \p_1_in__0\(3),
      Q => axi_wdata(3),
      R => '0'
    );
\axi_wdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => \p_1_in__0\(4),
      Q => axi_wdata(4),
      R => '0'
    );
\axi_wdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => \p_1_in__0\(5),
      Q => axi_wdata(5),
      R => '0'
    );
\axi_wdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => \p_1_in__0\(6),
      Q => axi_wdata(6),
      R => '0'
    );
\axi_wdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => \p_1_in__0\(7),
      Q => axi_wdata(7),
      R => '0'
    );
\axi_wdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => \p_1_in__0\(8),
      Q => axi_wdata(8),
      R => '0'
    );
\axi_wdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => \p_1_in__0\(9),
      Q => axi_wdata(9),
      R => '0'
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
\slv_reg_led[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => axi_wdata(0),
      I1 => S_AXI_AWADDR(2),
      I2 => S_AXI_AWADDR(3),
      I3 => \^data\(0),
      O => \slv_reg_led[0]_i_1_n_0\
    );
\slv_reg_led[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => axi_wdata(10),
      I1 => S_AXI_AWADDR(2),
      I2 => S_AXI_AWADDR(3),
      I3 => slv_reg_led(10),
      O => \slv_reg_led[10]_i_1_n_0\
    );
\slv_reg_led[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => axi_wdata(11),
      I1 => S_AXI_AWADDR(2),
      I2 => S_AXI_AWADDR(3),
      I3 => slv_reg_led(11),
      O => \slv_reg_led[11]_i_1_n_0\
    );
\slv_reg_led[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => axi_wdata(12),
      I1 => S_AXI_AWADDR(2),
      I2 => S_AXI_AWADDR(3),
      I3 => slv_reg_led(12),
      O => \slv_reg_led[12]_i_1_n_0\
    );
\slv_reg_led[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => axi_wdata(13),
      I1 => S_AXI_AWADDR(2),
      I2 => S_AXI_AWADDR(3),
      I3 => slv_reg_led(13),
      O => \slv_reg_led[13]_i_1_n_0\
    );
\slv_reg_led[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => axi_wdata(14),
      I1 => S_AXI_AWADDR(2),
      I2 => S_AXI_AWADDR(3),
      I3 => slv_reg_led(14),
      O => \slv_reg_led[14]_i_1_n_0\
    );
\slv_reg_led[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => axi_wdata(15),
      I1 => S_AXI_AWADDR(2),
      I2 => S_AXI_AWADDR(3),
      I3 => slv_reg_led(15),
      O => \slv_reg_led[15]_i_1_n_0\
    );
\slv_reg_led[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => axi_wdata(16),
      I1 => S_AXI_AWADDR(2),
      I2 => S_AXI_AWADDR(3),
      I3 => slv_reg_led(16),
      O => \slv_reg_led[16]_i_1_n_0\
    );
\slv_reg_led[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => axi_wdata(17),
      I1 => S_AXI_AWADDR(2),
      I2 => S_AXI_AWADDR(3),
      I3 => slv_reg_led(17),
      O => \slv_reg_led[17]_i_1_n_0\
    );
\slv_reg_led[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => axi_wdata(18),
      I1 => S_AXI_AWADDR(2),
      I2 => S_AXI_AWADDR(3),
      I3 => slv_reg_led(18),
      O => \slv_reg_led[18]_i_1_n_0\
    );
\slv_reg_led[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => axi_wdata(19),
      I1 => S_AXI_AWADDR(2),
      I2 => S_AXI_AWADDR(3),
      I3 => slv_reg_led(19),
      O => \slv_reg_led[19]_i_1_n_0\
    );
\slv_reg_led[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => axi_wdata(1),
      I1 => S_AXI_AWADDR(2),
      I2 => S_AXI_AWADDR(3),
      I3 => \^data\(1),
      O => \slv_reg_led[1]_i_1_n_0\
    );
\slv_reg_led[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => axi_wdata(20),
      I1 => S_AXI_AWADDR(2),
      I2 => S_AXI_AWADDR(3),
      I3 => slv_reg_led(20),
      O => \slv_reg_led[20]_i_1_n_0\
    );
\slv_reg_led[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => axi_wdata(21),
      I1 => S_AXI_AWADDR(2),
      I2 => S_AXI_AWADDR(3),
      I3 => slv_reg_led(21),
      O => \slv_reg_led[21]_i_1_n_0\
    );
\slv_reg_led[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => axi_wdata(22),
      I1 => S_AXI_AWADDR(2),
      I2 => S_AXI_AWADDR(3),
      I3 => slv_reg_led(22),
      O => \slv_reg_led[22]_i_1_n_0\
    );
\slv_reg_led[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => axi_wdata(23),
      I1 => S_AXI_AWADDR(2),
      I2 => S_AXI_AWADDR(3),
      I3 => slv_reg_led(23),
      O => \slv_reg_led[23]_i_1_n_0\
    );
\slv_reg_led[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => axi_wdata(24),
      I1 => S_AXI_AWADDR(2),
      I2 => S_AXI_AWADDR(3),
      I3 => slv_reg_led(24),
      O => \slv_reg_led[24]_i_1_n_0\
    );
\slv_reg_led[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => axi_wdata(25),
      I1 => S_AXI_AWADDR(2),
      I2 => S_AXI_AWADDR(3),
      I3 => slv_reg_led(25),
      O => \slv_reg_led[25]_i_1_n_0\
    );
\slv_reg_led[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => axi_wdata(26),
      I1 => S_AXI_AWADDR(2),
      I2 => S_AXI_AWADDR(3),
      I3 => slv_reg_led(26),
      O => \slv_reg_led[26]_i_1_n_0\
    );
\slv_reg_led[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => axi_wdata(27),
      I1 => S_AXI_AWADDR(2),
      I2 => S_AXI_AWADDR(3),
      I3 => slv_reg_led(27),
      O => \slv_reg_led[27]_i_1_n_0\
    );
\slv_reg_led[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => axi_wdata(28),
      I1 => S_AXI_AWADDR(2),
      I2 => S_AXI_AWADDR(3),
      I3 => slv_reg_led(28),
      O => \slv_reg_led[28]_i_1_n_0\
    );
\slv_reg_led[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => axi_wdata(29),
      I1 => S_AXI_AWADDR(2),
      I2 => S_AXI_AWADDR(3),
      I3 => slv_reg_led(29),
      O => \slv_reg_led[29]_i_1_n_0\
    );
\slv_reg_led[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => axi_wdata(2),
      I1 => S_AXI_AWADDR(2),
      I2 => S_AXI_AWADDR(3),
      I3 => \^data\(2),
      O => \slv_reg_led[2]_i_1_n_0\
    );
\slv_reg_led[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => axi_wdata(30),
      I1 => S_AXI_AWADDR(2),
      I2 => S_AXI_AWADDR(3),
      I3 => slv_reg_led(30),
      O => \slv_reg_led[30]_i_1_n_0\
    );
\slv_reg_led[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => S_AXI_WVALID,
      I1 => \^s_axi_wready\,
      O => axi_awready01_out
    );
\slv_reg_led[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => axi_wdata(31),
      I1 => S_AXI_AWADDR(2),
      I2 => S_AXI_AWADDR(3),
      I3 => slv_reg_led(31),
      O => \slv_reg_led[31]_i_2_n_0\
    );
\slv_reg_led[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => axi_wdata(3),
      I1 => S_AXI_AWADDR(2),
      I2 => S_AXI_AWADDR(3),
      I3 => \^data\(3),
      O => \slv_reg_led[3]_i_1_n_0\
    );
\slv_reg_led[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => axi_wdata(4),
      I1 => S_AXI_AWADDR(2),
      I2 => S_AXI_AWADDR(3),
      I3 => \^data\(4),
      O => \slv_reg_led[4]_i_1_n_0\
    );
\slv_reg_led[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => axi_wdata(5),
      I1 => S_AXI_AWADDR(2),
      I2 => S_AXI_AWADDR(3),
      I3 => \^data\(5),
      O => \slv_reg_led[5]_i_1_n_0\
    );
\slv_reg_led[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => axi_wdata(6),
      I1 => S_AXI_AWADDR(2),
      I2 => S_AXI_AWADDR(3),
      I3 => \^data\(6),
      O => \slv_reg_led[6]_i_1_n_0\
    );
\slv_reg_led[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => axi_wdata(7),
      I1 => S_AXI_AWADDR(2),
      I2 => S_AXI_AWADDR(3),
      I3 => \^data\(7),
      O => \slv_reg_led[7]_i_1_n_0\
    );
\slv_reg_led[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => axi_wdata(8),
      I1 => S_AXI_AWADDR(2),
      I2 => S_AXI_AWADDR(3),
      I3 => slv_reg_led(8),
      O => \slv_reg_led[8]_i_1_n_0\
    );
\slv_reg_led[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => axi_wdata(9),
      I1 => S_AXI_AWADDR(2),
      I2 => S_AXI_AWADDR(3),
      I3 => slv_reg_led(9),
      O => \slv_reg_led[9]_i_1_n_0\
    );
slv_reg_led_inst: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => slv_reg_led(7),
      O => \^data\(7)
    );
\slv_reg_led_inst__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => slv_reg_led(6),
      O => \^data\(6)
    );
\slv_reg_led_inst__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => slv_reg_led(5),
      O => \^data\(5)
    );
\slv_reg_led_inst__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => slv_reg_led(4),
      O => \^data\(4)
    );
\slv_reg_led_inst__3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => slv_reg_led(3),
      O => \^data\(3)
    );
\slv_reg_led_inst__4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => slv_reg_led(2),
      O => \^data\(2)
    );
\slv_reg_led_inst__5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => slv_reg_led(1),
      O => \^data\(1)
    );
\slv_reg_led_inst__6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => slv_reg_led(0),
      O => \^data\(0)
    );
\slv_reg_led_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready01_out,
      D => \slv_reg_led[0]_i_1_n_0\,
      Q => slv_reg_led(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg_led_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready01_out,
      D => \slv_reg_led[10]_i_1_n_0\,
      Q => slv_reg_led(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg_led_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready01_out,
      D => \slv_reg_led[11]_i_1_n_0\,
      Q => slv_reg_led(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg_led_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready01_out,
      D => \slv_reg_led[12]_i_1_n_0\,
      Q => slv_reg_led(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg_led_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready01_out,
      D => \slv_reg_led[13]_i_1_n_0\,
      Q => slv_reg_led(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg_led_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready01_out,
      D => \slv_reg_led[14]_i_1_n_0\,
      Q => slv_reg_led(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg_led_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready01_out,
      D => \slv_reg_led[15]_i_1_n_0\,
      Q => slv_reg_led(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg_led_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready01_out,
      D => \slv_reg_led[16]_i_1_n_0\,
      Q => slv_reg_led(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg_led_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready01_out,
      D => \slv_reg_led[17]_i_1_n_0\,
      Q => slv_reg_led(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg_led_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready01_out,
      D => \slv_reg_led[18]_i_1_n_0\,
      Q => slv_reg_led(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg_led_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready01_out,
      D => \slv_reg_led[19]_i_1_n_0\,
      Q => slv_reg_led(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg_led_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready01_out,
      D => \slv_reg_led[1]_i_1_n_0\,
      Q => slv_reg_led(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg_led_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready01_out,
      D => \slv_reg_led[20]_i_1_n_0\,
      Q => slv_reg_led(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg_led_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready01_out,
      D => \slv_reg_led[21]_i_1_n_0\,
      Q => slv_reg_led(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg_led_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready01_out,
      D => \slv_reg_led[22]_i_1_n_0\,
      Q => slv_reg_led(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg_led_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready01_out,
      D => \slv_reg_led[23]_i_1_n_0\,
      Q => slv_reg_led(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg_led_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready01_out,
      D => \slv_reg_led[24]_i_1_n_0\,
      Q => slv_reg_led(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg_led_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready01_out,
      D => \slv_reg_led[25]_i_1_n_0\,
      Q => slv_reg_led(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg_led_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready01_out,
      D => \slv_reg_led[26]_i_1_n_0\,
      Q => slv_reg_led(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg_led_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready01_out,
      D => \slv_reg_led[27]_i_1_n_0\,
      Q => slv_reg_led(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg_led_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready01_out,
      D => \slv_reg_led[28]_i_1_n_0\,
      Q => slv_reg_led(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg_led_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready01_out,
      D => \slv_reg_led[29]_i_1_n_0\,
      Q => slv_reg_led(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg_led_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready01_out,
      D => \slv_reg_led[2]_i_1_n_0\,
      Q => slv_reg_led(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg_led_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready01_out,
      D => \slv_reg_led[30]_i_1_n_0\,
      Q => slv_reg_led(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg_led_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready01_out,
      D => \slv_reg_led[31]_i_2_n_0\,
      Q => slv_reg_led(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg_led_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready01_out,
      D => \slv_reg_led[3]_i_1_n_0\,
      Q => slv_reg_led(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg_led_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready01_out,
      D => \slv_reg_led[4]_i_1_n_0\,
      Q => slv_reg_led(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg_led_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready01_out,
      D => \slv_reg_led[5]_i_1_n_0\,
      Q => slv_reg_led(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg_led_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready01_out,
      D => \slv_reg_led[6]_i_1_n_0\,
      Q => slv_reg_led(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg_led_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready01_out,
      D => \slv_reg_led[7]_i_1_n_0\,
      Q => slv_reg_led(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg_led_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready01_out,
      D => \slv_reg_led[8]_i_1_n_0\,
      Q => slv_reg_led(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg_led_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready01_out,
      D => \slv_reg_led[9]_i_1_n_0\,
      Q => slv_reg_led(9),
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
\slv_reg_sw_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => SW(1),
      Q => slv_reg_sw(1),
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
\slv_reg_sw_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => SW(3),
      Q => slv_reg_sw(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_axi_7seg_myip_slave_lite_v1_0_0_0 is
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
    DATA : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Zynq_axi_7seg_myip_slave_lite_v1_0_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Zynq_axi_7seg_myip_slave_lite_v1_0_0_0 : entity is "Zynq_axi_7seg_myip_slave_lite_v1_0_0_0,myip_slave_lite_v1_0_S00_AXI,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of Zynq_axi_7seg_myip_slave_lite_v1_0_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of Zynq_axi_7seg_myip_slave_lite_v1_0_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of Zynq_axi_7seg_myip_slave_lite_v1_0_0_0 : entity is "myip_slave_lite_v1_0_S00_AXI,Vivado 2023.2";
end Zynq_axi_7seg_myip_slave_lite_v1_0_0_0;

architecture STRUCTURE of Zynq_axi_7seg_myip_slave_lite_v1_0_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_S_AXI_BRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_S_AXI_RDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 4 );
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
  attribute X_INTERFACE_PARAMETER of S_AXI_ACLK : signal is "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_ARESETN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Zynq_axi_7seg_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXI_ARESETN : signal is "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST";
  attribute X_INTERFACE_PARAMETER of S_AXI_ARESETN : signal is "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXI_ARREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute X_INTERFACE_INFO of S_AXI_ARVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute X_INTERFACE_INFO of S_AXI_AWREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute X_INTERFACE_INFO of S_AXI_AWVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute X_INTERFACE_INFO of S_AXI_BREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute X_INTERFACE_INFO of S_AXI_BVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute X_INTERFACE_INFO of S_AXI_RREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of S_AXI_RREADY : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN Zynq_axi_7seg_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
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
  S_AXI_RDATA(31) <= \<const0>\;
  S_AXI_RDATA(30) <= \<const0>\;
  S_AXI_RDATA(29) <= \<const0>\;
  S_AXI_RDATA(28) <= \<const0>\;
  S_AXI_RDATA(27) <= \<const0>\;
  S_AXI_RDATA(26) <= \<const0>\;
  S_AXI_RDATA(25) <= \<const0>\;
  S_AXI_RDATA(24) <= \<const0>\;
  S_AXI_RDATA(23) <= \<const0>\;
  S_AXI_RDATA(22) <= \<const0>\;
  S_AXI_RDATA(21) <= \<const0>\;
  S_AXI_RDATA(20) <= \<const0>\;
  S_AXI_RDATA(19) <= \<const0>\;
  S_AXI_RDATA(18) <= \<const0>\;
  S_AXI_RDATA(17) <= \<const0>\;
  S_AXI_RDATA(16) <= \<const0>\;
  S_AXI_RDATA(15) <= \<const0>\;
  S_AXI_RDATA(14) <= \<const0>\;
  S_AXI_RDATA(13) <= \<const0>\;
  S_AXI_RDATA(12) <= \<const0>\;
  S_AXI_RDATA(11) <= \<const0>\;
  S_AXI_RDATA(10) <= \<const0>\;
  S_AXI_RDATA(9) <= \<const0>\;
  S_AXI_RDATA(8) <= \<const0>\;
  S_AXI_RDATA(7) <= \<const0>\;
  S_AXI_RDATA(6) <= \<const0>\;
  S_AXI_RDATA(5) <= \<const0>\;
  S_AXI_RDATA(4) <= \<const0>\;
  S_AXI_RDATA(3 downto 0) <= \^s_axi_rdata\(3 downto 0);
  S_AXI_RRESP(1) <= \<const0>\;
  S_AXI_RRESP(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.Zynq_axi_7seg_myip_slave_lite_v1_0_0_0_myip_slave_lite_v1_0_S00_AXI
     port map (
      DATA(7 downto 0) => DATA(7 downto 0),
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
      S_AXI_RDATA(31 downto 4) => NLW_inst_S_AXI_RDATA_UNCONNECTED(31 downto 4),
      S_AXI_RDATA(3 downto 0) => \^s_axi_rdata\(3 downto 0),
      S_AXI_RREADY => S_AXI_RREADY,
      S_AXI_RRESP(1 downto 0) => NLW_inst_S_AXI_RRESP_UNCONNECTED(1 downto 0),
      S_AXI_RVALID => S_AXI_RVALID,
      S_AXI_WDATA(31 downto 0) => S_AXI_WDATA(31 downto 0),
      S_AXI_WREADY => S_AXI_WREADY,
      S_AXI_WSTRB(3 downto 0) => B"0000",
      S_AXI_WVALID => S_AXI_WVALID
    );
end STRUCTURE;
