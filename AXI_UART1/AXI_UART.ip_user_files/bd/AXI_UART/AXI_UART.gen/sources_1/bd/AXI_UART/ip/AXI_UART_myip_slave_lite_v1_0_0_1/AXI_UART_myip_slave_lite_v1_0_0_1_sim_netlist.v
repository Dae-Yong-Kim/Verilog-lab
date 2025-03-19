// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Wed Jan  8 10:23:28 2025
// Host        : COMSYS01 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Verilog-lab/AXI_UART/AXI_UART.gen/sources_1/bd/AXI_UART/ip/AXI_UART_myip_slave_lite_v1_0_0_1/AXI_UART_myip_slave_lite_v1_0_0_1_sim_netlist.v
// Design      : AXI_UART_myip_slave_lite_v1_0_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "AXI_UART_myip_slave_lite_v1_0_0_1,myip_slave_lite_v1_0_S00_AXI,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "myip_slave_lite_v1_0_S00_AXI,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module AXI_UART_myip_slave_lite_v1_0_0_1
   (S_AXI_ACLK,
    S_AXI_ARESETN,
    S_AXI_AWADDR,
    S_AXI_AWPROT,
    S_AXI_AWVALID,
    S_AXI_AWREADY,
    S_AXI_WDATA,
    S_AXI_WSTRB,
    S_AXI_WVALID,
    S_AXI_WREADY,
    S_AXI_BRESP,
    S_AXI_BVALID,
    S_AXI_BREADY,
    S_AXI_ARADDR,
    S_AXI_ARPROT,
    S_AXI_ARVALID,
    S_AXI_ARREADY,
    S_AXI_RDATA,
    S_AXI_RRESP,
    S_AXI_RVALID,
    S_AXI_RREADY,
    TX_READY,
    RX_READY,
    RX_DATA,
    TX_DATA,
    TX_START);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_ARESETN, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN AXI_UART_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0" *) input S_AXI_ACLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input S_AXI_ARESETN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [3:0]S_AXI_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]S_AXI_AWPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input S_AXI_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output S_AXI_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]S_AXI_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]S_AXI_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input S_AXI_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output S_AXI_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]S_AXI_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output S_AXI_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input S_AXI_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [3:0]S_AXI_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]S_AXI_ARPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input S_AXI_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output S_AXI_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]S_AXI_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]S_AXI_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output S_AXI_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN AXI_UART_processing_system7_0_1_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input S_AXI_RREADY;
  input TX_READY;
  input RX_READY;
  input [7:0]RX_DATA;
  output [7:0]TX_DATA;
  output TX_START;

  wire \<const0> ;
  wire [7:0]RX_DATA;
  wire RX_READY;
  wire S_AXI_ACLK;
  wire [3:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [3:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [7:0]\^S_AXI_RDATA ;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire S_AXI_WVALID;
  wire [7:0]TX_DATA;
  wire TX_READY;
  wire TX_START;

  assign S_AXI_BRESP[1] = \<const0> ;
  assign S_AXI_BRESP[0] = \<const0> ;
  assign S_AXI_RDATA[31] = \<const0> ;
  assign S_AXI_RDATA[30] = \<const0> ;
  assign S_AXI_RDATA[29] = \<const0> ;
  assign S_AXI_RDATA[28] = \<const0> ;
  assign S_AXI_RDATA[27] = \<const0> ;
  assign S_AXI_RDATA[26] = \<const0> ;
  assign S_AXI_RDATA[25] = \<const0> ;
  assign S_AXI_RDATA[24] = \<const0> ;
  assign S_AXI_RDATA[23] = \<const0> ;
  assign S_AXI_RDATA[22] = \<const0> ;
  assign S_AXI_RDATA[21] = \<const0> ;
  assign S_AXI_RDATA[20] = \<const0> ;
  assign S_AXI_RDATA[19] = \<const0> ;
  assign S_AXI_RDATA[18] = \<const0> ;
  assign S_AXI_RDATA[17] = \<const0> ;
  assign S_AXI_RDATA[16] = \<const0> ;
  assign S_AXI_RDATA[15] = \<const0> ;
  assign S_AXI_RDATA[14] = \<const0> ;
  assign S_AXI_RDATA[13] = \<const0> ;
  assign S_AXI_RDATA[12] = \<const0> ;
  assign S_AXI_RDATA[11] = \<const0> ;
  assign S_AXI_RDATA[10] = \<const0> ;
  assign S_AXI_RDATA[9] = \<const0> ;
  assign S_AXI_RDATA[8] = \<const0> ;
  assign S_AXI_RDATA[7:0] = \^S_AXI_RDATA [7:0];
  assign S_AXI_RRESP[1] = \<const0> ;
  assign S_AXI_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  AXI_UART_myip_slave_lite_v1_0_0_1_myip_slave_lite_v1_0_S00_AXI inst
       (.RX_DATA(RX_DATA),
        .RX_READY(RX_READY),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARADDR(S_AXI_ARADDR[3:2]),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR(S_AXI_AWADDR),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RDATA(\^S_AXI_RDATA ),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_WDATA(S_AXI_WDATA[7:0]),
        .S_AXI_WVALID(S_AXI_WVALID),
        .TX_DATA(TX_DATA),
        .TX_READY(TX_READY),
        .TX_START(TX_START),
        .axi_arready_reg_0(S_AXI_ARREADY),
        .axi_awready_reg_0(S_AXI_AWREADY),
        .axi_rvalid_reg_0(S_AXI_RVALID),
        .axi_wready_reg_0(S_AXI_WREADY));
endmodule

(* ORIG_REF_NAME = "myip_slave_lite_v1_0_S00_AXI" *) 
module AXI_UART_myip_slave_lite_v1_0_0_1_myip_slave_lite_v1_0_S00_AXI
   (axi_awready_reg_0,
    axi_wready_reg_0,
    axi_arready_reg_0,
    axi_rvalid_reg_0,
    TX_DATA,
    TX_START,
    S_AXI_RDATA,
    S_AXI_BVALID,
    S_AXI_AWVALID,
    S_AXI_WVALID,
    S_AXI_ACLK,
    S_AXI_ARVALID,
    S_AXI_RREADY,
    TX_READY,
    RX_READY,
    S_AXI_ARADDR,
    S_AXI_ARESETN,
    S_AXI_WDATA,
    S_AXI_AWADDR,
    RX_DATA,
    S_AXI_BREADY);
  output axi_awready_reg_0;
  output axi_wready_reg_0;
  output axi_arready_reg_0;
  output axi_rvalid_reg_0;
  output [7:0]TX_DATA;
  output TX_START;
  output [7:0]S_AXI_RDATA;
  output S_AXI_BVALID;
  input S_AXI_AWVALID;
  input S_AXI_WVALID;
  input S_AXI_ACLK;
  input S_AXI_ARVALID;
  input S_AXI_RREADY;
  input TX_READY;
  input RX_READY;
  input [1:0]S_AXI_ARADDR;
  input S_AXI_ARESETN;
  input [7:0]S_AXI_WDATA;
  input [3:0]S_AXI_AWADDR;
  input [7:0]RX_DATA;
  input S_AXI_BREADY;

  wire \FSM_sequential_state_read[0]_i_1_n_0 ;
  wire \FSM_sequential_state_read[1]_i_1_n_0 ;
  wire \FSM_sequential_state_write[0]_i_1_n_0 ;
  wire \FSM_sequential_state_write[1]_i_1_n_0 ;
  wire [7:0]RX_DATA;
  wire RX_READY;
  wire S_AXI_ACLK;
  wire [1:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire S_AXI_ARVALID;
  wire [3:0]S_AXI_AWADDR;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [7:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire [7:0]S_AXI_WDATA;
  wire S_AXI_WVALID;
  wire [7:0]TX_DATA;
  wire TX_READY;
  wire TX_START;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready0__0;
  wire axi_arready_i_1_n_0;
  wire axi_arready_reg_0;
  wire axi_awready01_out;
  wire axi_awready0__0;
  wire axi_awready_i_1_n_0;
  wire axi_awready_i_2_n_0;
  wire axi_awready_reg_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_rvalid_reg_0;
  wire axi_wready_i_1_n_0;
  wire axi_wready_reg_0;
  wire [5:5]slv_reg_uart_rx_ready;
  wire slv_reg_uart_tx_data;
  wire [4:4]slv_reg_uart_tx_ready;
  wire \slv_reg_uart_tx_start[0]_i_1_n_0 ;
  wire \slv_reg_uart_tx_start_reg_n_0_[0] ;
  wire [1:0]state_read;
  wire [1:0]state_write;

  LUT6 #(
    .INIT(64'hFFFFF0007777FFFF)) 
    \FSM_sequential_state_read[0]_i_1 
       (.I0(S_AXI_ARVALID),
        .I1(axi_arready_reg_0),
        .I2(S_AXI_RREADY),
        .I3(axi_rvalid_reg_0),
        .I4(state_read[0]),
        .I5(state_read[1]),
        .O(\FSM_sequential_state_read[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0FFF88880000)) 
    \FSM_sequential_state_read[1]_i_1 
       (.I0(axi_arready_reg_0),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_RREADY),
        .I3(axi_rvalid_reg_0),
        .I4(state_read[0]),
        .I5(state_read[1]),
        .O(\FSM_sequential_state_read[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "Idle:00,Rdata:10,Raddr:01" *) 
  FDRE \FSM_sequential_state_read_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_sequential_state_read[0]_i_1_n_0 ),
        .Q(state_read[0]),
        .R(axi_awready_i_1_n_0));
  (* FSM_ENCODED_STATES = "Idle:00,Rdata:10,Raddr:01" *) 
  FDRE \FSM_sequential_state_read_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_sequential_state_read[1]_i_1_n_0 ),
        .Q(state_read[1]),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFF0007777FFFF)) 
    \FSM_sequential_state_write[0]_i_1 
       (.I0(S_AXI_AWVALID),
        .I1(axi_awready_reg_0),
        .I2(axi_wready_reg_0),
        .I3(S_AXI_WVALID),
        .I4(state_write[0]),
        .I5(state_write[1]),
        .O(\FSM_sequential_state_write[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0FFF88880000)) 
    \FSM_sequential_state_write[1]_i_1 
       (.I0(axi_awready_reg_0),
        .I1(S_AXI_AWVALID),
        .I2(axi_wready_reg_0),
        .I3(S_AXI_WVALID),
        .I4(state_write[0]),
        .I5(state_write[1]),
        .O(\FSM_sequential_state_write[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "Idle:00,Wdata:10,Waddr:01" *) 
  FDRE \FSM_sequential_state_write_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_sequential_state_write[0]_i_1_n_0 ),
        .Q(state_write[0]),
        .R(axi_awready_i_1_n_0));
  (* FSM_ENCODED_STATES = "Idle:00,Wdata:10,Waddr:01" *) 
  FDRE \FSM_sequential_state_write_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_sequential_state_write[1]_i_1_n_0 ),
        .Q(state_write[1]),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \S_AXI_RDATA[0]_INST_0 
       (.I0(\slv_reg_uart_tx_start_reg_n_0_[0] ),
        .I1(axi_araddr[3]),
        .I2(RX_DATA[0]),
        .I3(axi_araddr[2]),
        .O(S_AXI_RDATA[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \S_AXI_RDATA[1]_INST_0 
       (.I0(RX_DATA[1]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .O(S_AXI_RDATA[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \S_AXI_RDATA[2]_INST_0 
       (.I0(RX_DATA[2]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .O(S_AXI_RDATA[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \S_AXI_RDATA[3]_INST_0 
       (.I0(RX_DATA[3]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .O(S_AXI_RDATA[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \S_AXI_RDATA[4]_INST_0 
       (.I0(slv_reg_uart_tx_ready),
        .I1(axi_araddr[3]),
        .I2(RX_DATA[4]),
        .I3(axi_araddr[2]),
        .O(S_AXI_RDATA[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \S_AXI_RDATA[5]_INST_0 
       (.I0(slv_reg_uart_rx_ready),
        .I1(axi_araddr[3]),
        .I2(RX_DATA[5]),
        .I3(axi_araddr[2]),
        .O(S_AXI_RDATA[5]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \S_AXI_RDATA[6]_INST_0 
       (.I0(RX_DATA[6]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .O(S_AXI_RDATA[6]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \S_AXI_RDATA[7]_INST_0 
       (.I0(RX_DATA[7]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .O(S_AXI_RDATA[7]));
  LUT5 #(
    .INIT(32'h00000020)) 
    TX_START_INST_0
       (.I0(\slv_reg_uart_tx_start_reg_n_0_[0] ),
        .I1(S_AXI_AWADDR[1]),
        .I2(S_AXI_AWADDR[3]),
        .I3(S_AXI_AWADDR[2]),
        .I4(S_AXI_AWADDR[0]),
        .O(TX_START));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \axi_araddr[2]_i_1 
       (.I0(S_AXI_ARADDR[0]),
        .I1(S_AXI_ARESETN),
        .I2(axi_arready0__0),
        .I3(state_read[0]),
        .I4(state_read[1]),
        .I5(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \axi_araddr[3]_i_1 
       (.I0(S_AXI_ARADDR[1]),
        .I1(S_AXI_ARESETN),
        .I2(axi_arready0__0),
        .I3(state_read[0]),
        .I4(state_read[1]),
        .I5(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \axi_araddr[3]_i_2 
       (.I0(S_AXI_ARVALID),
        .I1(axi_arready_reg_0),
        .O(axi_arready0__0));
  FDRE \axi_araddr_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .R(1'b0));
  FDRE \axi_araddr_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hC4C4C4C4FFCFCFCF)) 
    axi_arready_i_1
       (.I0(S_AXI_ARVALID),
        .I1(axi_arready_reg_0),
        .I2(state_read[1]),
        .I3(S_AXI_RREADY),
        .I4(axi_rvalid_reg_0),
        .I5(state_read[0]),
        .O(axi_arready_i_1_n_0));
  FDRE axi_arready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_arready_i_1_n_0),
        .Q(axi_arready_reg_0),
        .R(axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(S_AXI_ARESETN),
        .O(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hC4C4C4C4FFCFCFCF)) 
    axi_awready_i_2
       (.I0(S_AXI_AWVALID),
        .I1(axi_awready_reg_0),
        .I2(state_write[1]),
        .I3(axi_wready_reg_0),
        .I4(S_AXI_WVALID),
        .I5(state_write[0]),
        .O(axi_awready_i_2_n_0));
  FDRE axi_awready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_awready_i_2_n_0),
        .Q(axi_awready_reg_0),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hAF0AAF2AA00AAA2A)) 
    axi_bvalid_i_1
       (.I0(S_AXI_BVALID),
        .I1(axi_awready0__0),
        .I2(state_write[0]),
        .I3(state_write[1]),
        .I4(S_AXI_BREADY),
        .I5(axi_awready01_out),
        .O(axi_bvalid_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    axi_bvalid_i_2
       (.I0(S_AXI_AWVALID),
        .I1(axi_awready_reg_0),
        .O(axi_awready0__0));
  LUT2 #(
    .INIT(4'h8)) 
    axi_bvalid_i_3
       (.I0(S_AXI_WVALID),
        .I1(axi_wready_reg_0),
        .O(axi_awready01_out));
  FDRE axi_bvalid_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(S_AXI_BVALID),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hF0FFFFFF00800080)) 
    axi_rvalid_i_1
       (.I0(axi_arready_reg_0),
        .I1(S_AXI_ARVALID),
        .I2(state_read[0]),
        .I3(state_read[1]),
        .I4(S_AXI_RREADY),
        .I5(axi_rvalid_reg_0),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(axi_rvalid_reg_0),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFF08FF080000F000)) 
    axi_wready_i_1
       (.I0(S_AXI_AWVALID),
        .I1(axi_awready_reg_0),
        .I2(state_write[1]),
        .I3(axi_wready_reg_0),
        .I4(S_AXI_WVALID),
        .I5(state_write[0]),
        .O(axi_wready_i_1_n_0));
  FDRE axi_wready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_wready_i_1_n_0),
        .Q(axi_wready_reg_0),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_uart_rx_ready_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(RX_READY),
        .Q(slv_reg_uart_rx_ready),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0800)) 
    \slv_reg_uart_tx_data[7]_i_1 
       (.I0(axi_awready_reg_0),
        .I1(S_AXI_AWVALID),
        .I2(S_AXI_AWADDR[3]),
        .I3(S_AXI_AWADDR[2]),
        .O(slv_reg_uart_tx_data));
  FDRE \slv_reg_uart_tx_data_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_uart_tx_data),
        .D(S_AXI_WDATA[0]),
        .Q(TX_DATA[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_uart_tx_data_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_uart_tx_data),
        .D(S_AXI_WDATA[1]),
        .Q(TX_DATA[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_uart_tx_data_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_uart_tx_data),
        .D(S_AXI_WDATA[2]),
        .Q(TX_DATA[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_uart_tx_data_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_uart_tx_data),
        .D(S_AXI_WDATA[3]),
        .Q(TX_DATA[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_uart_tx_data_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_uart_tx_data),
        .D(S_AXI_WDATA[4]),
        .Q(TX_DATA[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_uart_tx_data_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_uart_tx_data),
        .D(S_AXI_WDATA[5]),
        .Q(TX_DATA[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_uart_tx_data_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_uart_tx_data),
        .D(S_AXI_WDATA[6]),
        .Q(TX_DATA[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_uart_tx_data_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_uart_tx_data),
        .D(S_AXI_WDATA[7]),
        .Q(TX_DATA[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_uart_tx_ready_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(TX_READY),
        .Q(slv_reg_uart_tx_ready),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \slv_reg_uart_tx_start[0]_i_1 
       (.I0(S_AXI_WDATA[0]),
        .I1(S_AXI_ARESETN),
        .I2(S_AXI_AWADDR[2]),
        .I3(S_AXI_AWADDR[3]),
        .I4(axi_awready0__0),
        .I5(\slv_reg_uart_tx_start_reg_n_0_[0] ),
        .O(\slv_reg_uart_tx_start[0]_i_1_n_0 ));
  FDRE \slv_reg_uart_tx_start_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\slv_reg_uart_tx_start[0]_i_1_n_0 ),
        .Q(\slv_reg_uart_tx_start_reg_n_0_[0] ),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
