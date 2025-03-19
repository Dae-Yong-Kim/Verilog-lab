// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Wed Jan  8 18:35:51 2025
// Host        : COMSYS01 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Verilog-lab/AXI_UART/AXI_UART.gen/sources_1/bd/AXI_UART_BD/ip/AXI_UART_BD_myip_slave_lite_v1_0_0_0/AXI_UART_BD_myip_slave_lite_v1_0_0_0_sim_netlist.v
// Design      : AXI_UART_BD_myip_slave_lite_v1_0_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "AXI_UART_BD_myip_slave_lite_v1_0_0_0,myip_slave_lite_v1_0_S00_AXI,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "myip_slave_lite_v1_0_S00_AXI,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module AXI_UART_BD_myip_slave_lite_v1_0_0_0
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_ARESETN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN AXI_UART_BD_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0" *) input S_AXI_ACLK;
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN AXI_UART_BD_processing_system7_0_1_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input S_AXI_RREADY;
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
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire S_AXI_WVALID;
  wire [7:0]TX_DATA;
  wire TX_READY;
  wire TX_START;
  wire [1:0]NLW_inst_S_AXI_BRESP_UNCONNECTED;
  wire [1:0]NLW_inst_S_AXI_RRESP_UNCONNECTED;

  assign S_AXI_BRESP[1] = \<const0> ;
  assign S_AXI_BRESP[0] = \<const0> ;
  assign S_AXI_RRESP[1] = \<const0> ;
  assign S_AXI_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* ADDR_LSB = "2" *) 
  (* C_S_AXI_ADDR_WIDTH = "4" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* Idle = "2'b00" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* OPT_MEM_ADDR_BITS = "1" *) 
  (* Raddr = "2'b10" *) 
  (* Rdata = "2'b11" *) 
  (* Waddr = "2'b10" *) 
  (* Wdata = "2'b11" *) 
  AXI_UART_BD_myip_slave_lite_v1_0_0_0_myip_slave_lite_v1_0_S00_AXI inst
       (.RX_DATA(RX_DATA),
        .RX_READY(RX_READY),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARADDR({S_AXI_ARADDR[3:2],1'b0,1'b0}),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARPROT({1'b0,1'b0,1'b0}),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR(S_AXI_AWADDR),
        .S_AXI_AWPROT({1'b0,1'b0,1'b0}),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BRESP(NLW_inst_S_AXI_BRESP_UNCONNECTED[1:0]),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RDATA(S_AXI_RDATA),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_RRESP(NLW_inst_S_AXI_RRESP_UNCONNECTED[1:0]),
        .S_AXI_RVALID(S_AXI_RVALID),
        .S_AXI_WDATA(S_AXI_WDATA),
        .S_AXI_WREADY(S_AXI_WREADY),
        .S_AXI_WSTRB({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_WVALID(S_AXI_WVALID),
        .TX_DATA(TX_DATA),
        .TX_READY(TX_READY),
        .TX_START(TX_START));
endmodule

(* ADDR_LSB = "2" *) (* C_S_AXI_ADDR_WIDTH = "4" *) (* C_S_AXI_DATA_WIDTH = "32" *) 
(* Idle = "2'b00" *) (* OPT_MEM_ADDR_BITS = "1" *) (* ORIG_REF_NAME = "myip_slave_lite_v1_0_S00_AXI" *) 
(* Raddr = "2'b10" *) (* Rdata = "2'b11" *) (* Waddr = "2'b10" *) 
(* Wdata = "2'b11" *) (* keep_hierarchy = "soft" *) 
module AXI_UART_BD_myip_slave_lite_v1_0_0_0_myip_slave_lite_v1_0_S00_AXI
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
  input S_AXI_ACLK;
  input S_AXI_ARESETN;
  input [3:0]S_AXI_AWADDR;
  input [2:0]S_AXI_AWPROT;
  input S_AXI_AWVALID;
  output S_AXI_AWREADY;
  input [31:0]S_AXI_WDATA;
  input [3:0]S_AXI_WSTRB;
  input S_AXI_WVALID;
  output S_AXI_WREADY;
  output [1:0]S_AXI_BRESP;
  output S_AXI_BVALID;
  input S_AXI_BREADY;
  input [3:0]S_AXI_ARADDR;
  input [2:0]S_AXI_ARPROT;
  input S_AXI_ARVALID;
  output S_AXI_ARREADY;
  output [31:0]S_AXI_RDATA;
  output [1:0]S_AXI_RRESP;
  output S_AXI_RVALID;
  input S_AXI_RREADY;
  input TX_READY;
  (* mark_debug = "true" *) input RX_READY;
  (* mark_debug = "true" *) input [7:0]RX_DATA;
  output [7:0]TX_DATA;
  output TX_START;

  wire \<const0> ;
  wire \FSM_sequential_state_read[0]_i_1_n_0 ;
  wire \FSM_sequential_state_read[1]_i_1_n_0 ;
  wire \FSM_sequential_state_write[0]_i_1_n_0 ;
  wire \FSM_sequential_state_write[1]_i_1_n_0 ;
  (* MARK_DEBUG *) wire RX_READY;
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
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire S_AXI_WVALID;
  wire [7:0]TX_DATA;
  wire TX_READY;
  wire TX_START;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire [3:2]axi_araddr__0;
  wire axi_arready0;
  wire axi_arready_i_1_n_0;
  wire axi_awready0;
  wire axi_awready01_out;
  wire axi_awready_i_1_n_0;
  wire axi_awready_i_2_n_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready_i_1_n_0;
  (* MARK_DEBUG *) wire rx_ready;
  (* MARK_DEBUG *) wire [31:0]slv_reg_uart_rx_data;
  (* MARK_DEBUG *) wire [31:0]slv_reg_uart_rx_ready;
  wire [31:0]slv_reg_uart_rx_ready__0;
  wire slv_reg_uart_tx_data;
  wire [4:4]slv_reg_uart_tx_ready;
  wire \slv_reg_uart_tx_start[0]_i_1_n_0 ;
  wire \slv_reg_uart_tx_start_reg_n_0_[0] ;
  wire [1:0]state_read;
  wire [1:0]state_write;

  assign S_AXI_BRESP[1] = \<const0> ;
  assign S_AXI_BRESP[0] = \<const0> ;
  assign S_AXI_RRESP[1] = \<const0> ;
  assign S_AXI_RRESP[0] = \<const0> ;
  assign slv_reg_uart_rx_data[7:0] = RX_DATA[7:0];
  LUT6 #(
    .INIT(64'hFFFFF0007777FFFF)) 
    \FSM_sequential_state_read[0]_i_1 
       (.I0(S_AXI_ARVALID),
        .I1(S_AXI_ARREADY),
        .I2(S_AXI_RREADY),
        .I3(S_AXI_RVALID),
        .I4(state_read[0]),
        .I5(state_read[1]),
        .O(\FSM_sequential_state_read[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0FFF88880000)) 
    \FSM_sequential_state_read[1]_i_1 
       (.I0(S_AXI_ARREADY),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_RREADY),
        .I3(S_AXI_RVALID),
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
        .I1(S_AXI_AWREADY),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_WVALID),
        .I4(state_write[0]),
        .I5(state_write[1]),
        .O(\FSM_sequential_state_write[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0FFF88880000)) 
    \FSM_sequential_state_write[1]_i_1 
       (.I0(S_AXI_AWREADY),
        .I1(S_AXI_AWVALID),
        .I2(S_AXI_WREADY),
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
  GND GND
       (.G(\<const0> ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \S_AXI_RDATA[0]_INST_0 
       (.I0(slv_reg_uart_rx_ready[0]),
        .I1(axi_araddr__0[2]),
        .I2(slv_reg_uart_rx_data[0]),
        .I3(axi_araddr__0[3]),
        .I4(\slv_reg_uart_tx_start_reg_n_0_[0] ),
        .O(S_AXI_RDATA[0]));
  LUT4 #(
    .INIT(16'hB080)) 
    \S_AXI_RDATA[10]_INST_0 
       (.I0(slv_reg_uart_rx_ready[10]),
        .I1(axi_araddr__0[2]),
        .I2(axi_araddr__0[3]),
        .I3(slv_reg_uart_rx_data[10]),
        .O(S_AXI_RDATA[10]));
  LUT4 #(
    .INIT(16'hB080)) 
    \S_AXI_RDATA[11]_INST_0 
       (.I0(slv_reg_uart_rx_ready[11]),
        .I1(axi_araddr__0[2]),
        .I2(axi_araddr__0[3]),
        .I3(slv_reg_uart_rx_data[11]),
        .O(S_AXI_RDATA[11]));
  LUT4 #(
    .INIT(16'hB080)) 
    \S_AXI_RDATA[12]_INST_0 
       (.I0(slv_reg_uart_rx_ready[12]),
        .I1(axi_araddr__0[2]),
        .I2(axi_araddr__0[3]),
        .I3(slv_reg_uart_rx_data[12]),
        .O(S_AXI_RDATA[12]));
  LUT4 #(
    .INIT(16'hB080)) 
    \S_AXI_RDATA[13]_INST_0 
       (.I0(slv_reg_uart_rx_ready[13]),
        .I1(axi_araddr__0[2]),
        .I2(axi_araddr__0[3]),
        .I3(slv_reg_uart_rx_data[13]),
        .O(S_AXI_RDATA[13]));
  LUT4 #(
    .INIT(16'hB080)) 
    \S_AXI_RDATA[14]_INST_0 
       (.I0(slv_reg_uart_rx_ready[14]),
        .I1(axi_araddr__0[2]),
        .I2(axi_araddr__0[3]),
        .I3(slv_reg_uart_rx_data[14]),
        .O(S_AXI_RDATA[14]));
  LUT4 #(
    .INIT(16'hB080)) 
    \S_AXI_RDATA[15]_INST_0 
       (.I0(slv_reg_uart_rx_ready[15]),
        .I1(axi_araddr__0[2]),
        .I2(axi_araddr__0[3]),
        .I3(slv_reg_uart_rx_data[15]),
        .O(S_AXI_RDATA[15]));
  LUT4 #(
    .INIT(16'hB080)) 
    \S_AXI_RDATA[16]_INST_0 
       (.I0(slv_reg_uart_rx_ready[16]),
        .I1(axi_araddr__0[2]),
        .I2(axi_araddr__0[3]),
        .I3(slv_reg_uart_rx_data[16]),
        .O(S_AXI_RDATA[16]));
  LUT4 #(
    .INIT(16'hB080)) 
    \S_AXI_RDATA[17]_INST_0 
       (.I0(slv_reg_uart_rx_ready[17]),
        .I1(axi_araddr__0[2]),
        .I2(axi_araddr__0[3]),
        .I3(slv_reg_uart_rx_data[17]),
        .O(S_AXI_RDATA[17]));
  LUT4 #(
    .INIT(16'hB080)) 
    \S_AXI_RDATA[18]_INST_0 
       (.I0(slv_reg_uart_rx_ready[18]),
        .I1(axi_araddr__0[2]),
        .I2(axi_araddr__0[3]),
        .I3(slv_reg_uart_rx_data[18]),
        .O(S_AXI_RDATA[18]));
  LUT4 #(
    .INIT(16'hB080)) 
    \S_AXI_RDATA[19]_INST_0 
       (.I0(slv_reg_uart_rx_ready[19]),
        .I1(axi_araddr__0[2]),
        .I2(axi_araddr__0[3]),
        .I3(slv_reg_uart_rx_data[19]),
        .O(S_AXI_RDATA[19]));
  LUT4 #(
    .INIT(16'hB080)) 
    \S_AXI_RDATA[1]_INST_0 
       (.I0(slv_reg_uart_rx_ready[1]),
        .I1(axi_araddr__0[2]),
        .I2(axi_araddr__0[3]),
        .I3(slv_reg_uart_rx_data[1]),
        .O(S_AXI_RDATA[1]));
  LUT4 #(
    .INIT(16'hB080)) 
    \S_AXI_RDATA[20]_INST_0 
       (.I0(slv_reg_uart_rx_ready[20]),
        .I1(axi_araddr__0[2]),
        .I2(axi_araddr__0[3]),
        .I3(slv_reg_uart_rx_data[20]),
        .O(S_AXI_RDATA[20]));
  LUT4 #(
    .INIT(16'hB080)) 
    \S_AXI_RDATA[21]_INST_0 
       (.I0(slv_reg_uart_rx_ready[21]),
        .I1(axi_araddr__0[2]),
        .I2(axi_araddr__0[3]),
        .I3(slv_reg_uart_rx_data[21]),
        .O(S_AXI_RDATA[21]));
  LUT4 #(
    .INIT(16'hB080)) 
    \S_AXI_RDATA[22]_INST_0 
       (.I0(slv_reg_uart_rx_ready[22]),
        .I1(axi_araddr__0[2]),
        .I2(axi_araddr__0[3]),
        .I3(slv_reg_uart_rx_data[22]),
        .O(S_AXI_RDATA[22]));
  LUT4 #(
    .INIT(16'hB080)) 
    \S_AXI_RDATA[23]_INST_0 
       (.I0(slv_reg_uart_rx_ready[23]),
        .I1(axi_araddr__0[2]),
        .I2(axi_araddr__0[3]),
        .I3(slv_reg_uart_rx_data[23]),
        .O(S_AXI_RDATA[23]));
  LUT4 #(
    .INIT(16'hB080)) 
    \S_AXI_RDATA[24]_INST_0 
       (.I0(slv_reg_uart_rx_ready[24]),
        .I1(axi_araddr__0[2]),
        .I2(axi_araddr__0[3]),
        .I3(slv_reg_uart_rx_data[24]),
        .O(S_AXI_RDATA[24]));
  LUT4 #(
    .INIT(16'hB080)) 
    \S_AXI_RDATA[25]_INST_0 
       (.I0(slv_reg_uart_rx_ready[25]),
        .I1(axi_araddr__0[2]),
        .I2(axi_araddr__0[3]),
        .I3(slv_reg_uart_rx_data[25]),
        .O(S_AXI_RDATA[25]));
  LUT4 #(
    .INIT(16'hB080)) 
    \S_AXI_RDATA[26]_INST_0 
       (.I0(slv_reg_uart_rx_ready[26]),
        .I1(axi_araddr__0[2]),
        .I2(axi_araddr__0[3]),
        .I3(slv_reg_uart_rx_data[26]),
        .O(S_AXI_RDATA[26]));
  LUT4 #(
    .INIT(16'hB080)) 
    \S_AXI_RDATA[27]_INST_0 
       (.I0(slv_reg_uart_rx_ready[27]),
        .I1(axi_araddr__0[2]),
        .I2(axi_araddr__0[3]),
        .I3(slv_reg_uart_rx_data[27]),
        .O(S_AXI_RDATA[27]));
  LUT4 #(
    .INIT(16'hB080)) 
    \S_AXI_RDATA[28]_INST_0 
       (.I0(slv_reg_uart_rx_ready[28]),
        .I1(axi_araddr__0[2]),
        .I2(axi_araddr__0[3]),
        .I3(slv_reg_uart_rx_data[28]),
        .O(S_AXI_RDATA[28]));
  LUT4 #(
    .INIT(16'hB080)) 
    \S_AXI_RDATA[29]_INST_0 
       (.I0(slv_reg_uart_rx_ready[29]),
        .I1(axi_araddr__0[2]),
        .I2(axi_araddr__0[3]),
        .I3(slv_reg_uart_rx_data[29]),
        .O(S_AXI_RDATA[29]));
  LUT4 #(
    .INIT(16'hB080)) 
    \S_AXI_RDATA[2]_INST_0 
       (.I0(slv_reg_uart_rx_ready[2]),
        .I1(axi_araddr__0[2]),
        .I2(axi_araddr__0[3]),
        .I3(slv_reg_uart_rx_data[2]),
        .O(S_AXI_RDATA[2]));
  LUT4 #(
    .INIT(16'hB080)) 
    \S_AXI_RDATA[30]_INST_0 
       (.I0(slv_reg_uart_rx_ready[30]),
        .I1(axi_araddr__0[2]),
        .I2(axi_araddr__0[3]),
        .I3(slv_reg_uart_rx_data[30]),
        .O(S_AXI_RDATA[30]));
  LUT4 #(
    .INIT(16'hB080)) 
    \S_AXI_RDATA[31]_INST_0 
       (.I0(slv_reg_uart_rx_ready[31]),
        .I1(axi_araddr__0[2]),
        .I2(axi_araddr__0[3]),
        .I3(slv_reg_uart_rx_data[31]),
        .O(S_AXI_RDATA[31]));
  LUT4 #(
    .INIT(16'hB080)) 
    \S_AXI_RDATA[3]_INST_0 
       (.I0(slv_reg_uart_rx_ready[3]),
        .I1(axi_araddr__0[2]),
        .I2(axi_araddr__0[3]),
        .I3(slv_reg_uart_rx_data[3]),
        .O(S_AXI_RDATA[3]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \S_AXI_RDATA[4]_INST_0 
       (.I0(slv_reg_uart_rx_ready[4]),
        .I1(axi_araddr__0[2]),
        .I2(slv_reg_uart_rx_data[4]),
        .I3(axi_araddr__0[3]),
        .I4(slv_reg_uart_tx_ready),
        .O(S_AXI_RDATA[4]));
  LUT4 #(
    .INIT(16'hB080)) 
    \S_AXI_RDATA[5]_INST_0 
       (.I0(slv_reg_uart_rx_ready[5]),
        .I1(axi_araddr__0[2]),
        .I2(axi_araddr__0[3]),
        .I3(slv_reg_uart_rx_data[5]),
        .O(S_AXI_RDATA[5]));
  LUT4 #(
    .INIT(16'hB080)) 
    \S_AXI_RDATA[6]_INST_0 
       (.I0(slv_reg_uart_rx_ready[6]),
        .I1(axi_araddr__0[2]),
        .I2(axi_araddr__0[3]),
        .I3(slv_reg_uart_rx_data[6]),
        .O(S_AXI_RDATA[6]));
  LUT4 #(
    .INIT(16'hB080)) 
    \S_AXI_RDATA[7]_INST_0 
       (.I0(slv_reg_uart_rx_ready[7]),
        .I1(axi_araddr__0[2]),
        .I2(axi_araddr__0[3]),
        .I3(slv_reg_uart_rx_data[7]),
        .O(S_AXI_RDATA[7]));
  LUT4 #(
    .INIT(16'hB080)) 
    \S_AXI_RDATA[8]_INST_0 
       (.I0(slv_reg_uart_rx_ready[8]),
        .I1(axi_araddr__0[2]),
        .I2(axi_araddr__0[3]),
        .I3(slv_reg_uart_rx_data[8]),
        .O(S_AXI_RDATA[8]));
  LUT4 #(
    .INIT(16'hB080)) 
    \S_AXI_RDATA[9]_INST_0 
       (.I0(slv_reg_uart_rx_ready[9]),
        .I1(axi_araddr__0[2]),
        .I2(axi_araddr__0[3]),
        .I3(slv_reg_uart_rx_data[9]),
        .O(S_AXI_RDATA[9]));
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
       (.I0(S_AXI_ARADDR[2]),
        .I1(S_AXI_ARESETN),
        .I2(axi_arready0),
        .I3(state_read[0]),
        .I4(state_read[1]),
        .I5(axi_araddr__0[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \axi_araddr[3]_i_1 
       (.I0(S_AXI_ARADDR[3]),
        .I1(S_AXI_ARESETN),
        .I2(axi_arready0),
        .I3(state_read[0]),
        .I4(state_read[1]),
        .I5(axi_araddr__0[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \axi_araddr[3]_i_2 
       (.I0(S_AXI_ARVALID),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE \axi_araddr_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr__0[2]),
        .R(1'b0));
  FDRE \axi_araddr_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr__0[3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hC4C4C4C4FFCFCFCF)) 
    axi_arready_i_1
       (.I0(S_AXI_ARVALID),
        .I1(S_AXI_ARREADY),
        .I2(state_read[1]),
        .I3(S_AXI_RREADY),
        .I4(S_AXI_RVALID),
        .I5(state_read[0]),
        .O(axi_arready_i_1_n_0));
  FDRE axi_arready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_arready_i_1_n_0),
        .Q(S_AXI_ARREADY),
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
        .I1(S_AXI_AWREADY),
        .I2(state_write[1]),
        .I3(S_AXI_WREADY),
        .I4(S_AXI_WVALID),
        .I5(state_write[0]),
        .O(axi_awready_i_2_n_0));
  FDRE axi_awready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_awready_i_2_n_0),
        .Q(S_AXI_AWREADY),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hAF0AAF2AA00AAA2A)) 
    axi_bvalid_i_1
       (.I0(S_AXI_BVALID),
        .I1(axi_awready0),
        .I2(state_write[0]),
        .I3(state_write[1]),
        .I4(S_AXI_BREADY),
        .I5(axi_awready01_out),
        .O(axi_bvalid_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    axi_bvalid_i_2
       (.I0(S_AXI_AWVALID),
        .I1(S_AXI_AWREADY),
        .O(axi_awready0));
  LUT2 #(
    .INIT(4'h8)) 
    axi_bvalid_i_3
       (.I0(S_AXI_WVALID),
        .I1(S_AXI_WREADY),
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
       (.I0(S_AXI_ARREADY),
        .I1(S_AXI_ARVALID),
        .I2(state_read[0]),
        .I3(state_read[1]),
        .I4(S_AXI_RREADY),
        .I5(S_AXI_RVALID),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(S_AXI_RVALID),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFF08FF080000F000)) 
    axi_wready_i_1
       (.I0(S_AXI_AWVALID),
        .I1(S_AXI_AWREADY),
        .I2(state_write[1]),
        .I3(S_AXI_WREADY),
        .I4(S_AXI_WVALID),
        .I5(state_write[0]),
        .O(axi_wready_i_1_n_0));
  FDRE axi_wready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_wready_i_1_n_0),
        .Q(S_AXI_WREADY),
        .R(axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(slv_reg_uart_rx_data[31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(slv_reg_uart_rx_data[30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(slv_reg_uart_rx_data[21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(slv_reg_uart_rx_data[20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(slv_reg_uart_rx_data[19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(slv_reg_uart_rx_data[18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(slv_reg_uart_rx_data[17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(slv_reg_uart_rx_data[16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(slv_reg_uart_rx_data[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(slv_reg_uart_rx_data[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(slv_reg_uart_rx_data[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_19
       (.I0(1'b0),
        .O(slv_reg_uart_rx_data[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(slv_reg_uart_rx_data[29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_20
       (.I0(1'b0),
        .O(slv_reg_uart_rx_data[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_21
       (.I0(1'b0),
        .O(slv_reg_uart_rx_data[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_22
       (.I0(1'b0),
        .O(slv_reg_uart_rx_data[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_23
       (.I0(1'b0),
        .O(slv_reg_uart_rx_data[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(slv_reg_uart_rx_data[28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(slv_reg_uart_rx_data[27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(slv_reg_uart_rx_data[26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(slv_reg_uart_rx_data[25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(slv_reg_uart_rx_data[24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(slv_reg_uart_rx_data[23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(slv_reg_uart_rx_data[22]));
  (* KEEP = "yes" *) 
  FDRE rx_ready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(RX_READY),
        .Q(rx_ready),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFEAEEEEEEEEEEEEE)) 
    \slv_reg_uart_rx_ready[0]_i_1 
       (.I0(rx_ready),
        .I1(slv_reg_uart_rx_ready[0]),
        .I2(axi_awready0),
        .I3(S_AXI_WDATA[0]),
        .I4(S_AXI_AWADDR[2]),
        .I5(S_AXI_AWADDR[3]),
        .O(slv_reg_uart_rx_ready__0[0]));
  LUT6 #(
    .INIT(64'hF7FFFFFF80000000)) 
    \slv_reg_uart_rx_ready[10]_i_1 
       (.I0(S_AXI_AWADDR[3]),
        .I1(S_AXI_AWADDR[2]),
        .I2(S_AXI_WDATA[10]),
        .I3(S_AXI_AWVALID),
        .I4(S_AXI_AWREADY),
        .I5(slv_reg_uart_rx_ready[10]),
        .O(slv_reg_uart_rx_ready__0[10]));
  LUT6 #(
    .INIT(64'hF7FFFFFF80000000)) 
    \slv_reg_uart_rx_ready[11]_i_1 
       (.I0(S_AXI_AWADDR[3]),
        .I1(S_AXI_AWADDR[2]),
        .I2(S_AXI_WDATA[11]),
        .I3(S_AXI_AWVALID),
        .I4(S_AXI_AWREADY),
        .I5(slv_reg_uart_rx_ready[11]),
        .O(slv_reg_uart_rx_ready__0[11]));
  LUT6 #(
    .INIT(64'hF7FFFFFF80000000)) 
    \slv_reg_uart_rx_ready[12]_i_1 
       (.I0(S_AXI_AWADDR[3]),
        .I1(S_AXI_AWADDR[2]),
        .I2(S_AXI_WDATA[12]),
        .I3(S_AXI_AWVALID),
        .I4(S_AXI_AWREADY),
        .I5(slv_reg_uart_rx_ready[12]),
        .O(slv_reg_uart_rx_ready__0[12]));
  LUT6 #(
    .INIT(64'hF7FFFFFF80000000)) 
    \slv_reg_uart_rx_ready[13]_i_1 
       (.I0(S_AXI_AWADDR[3]),
        .I1(S_AXI_AWADDR[2]),
        .I2(S_AXI_WDATA[13]),
        .I3(S_AXI_AWVALID),
        .I4(S_AXI_AWREADY),
        .I5(slv_reg_uart_rx_ready[13]),
        .O(slv_reg_uart_rx_ready__0[13]));
  LUT6 #(
    .INIT(64'hF7FFFFFF80000000)) 
    \slv_reg_uart_rx_ready[14]_i_1 
       (.I0(S_AXI_AWADDR[3]),
        .I1(S_AXI_AWADDR[2]),
        .I2(S_AXI_WDATA[14]),
        .I3(S_AXI_AWVALID),
        .I4(S_AXI_AWREADY),
        .I5(slv_reg_uart_rx_ready[14]),
        .O(slv_reg_uart_rx_ready__0[14]));
  LUT6 #(
    .INIT(64'hF7FFFFFF80000000)) 
    \slv_reg_uart_rx_ready[15]_i_1 
       (.I0(S_AXI_AWADDR[3]),
        .I1(S_AXI_AWADDR[2]),
        .I2(S_AXI_WDATA[15]),
        .I3(S_AXI_AWVALID),
        .I4(S_AXI_AWREADY),
        .I5(slv_reg_uart_rx_ready[15]),
        .O(slv_reg_uart_rx_ready__0[15]));
  LUT6 #(
    .INIT(64'hF7FFFFFF80000000)) 
    \slv_reg_uart_rx_ready[16]_i_1 
       (.I0(S_AXI_AWADDR[3]),
        .I1(S_AXI_AWADDR[2]),
        .I2(S_AXI_WDATA[16]),
        .I3(S_AXI_AWVALID),
        .I4(S_AXI_AWREADY),
        .I5(slv_reg_uart_rx_ready[16]),
        .O(slv_reg_uart_rx_ready__0[16]));
  LUT6 #(
    .INIT(64'hF7FFFFFF80000000)) 
    \slv_reg_uart_rx_ready[17]_i_1 
       (.I0(S_AXI_AWADDR[3]),
        .I1(S_AXI_AWADDR[2]),
        .I2(S_AXI_WDATA[17]),
        .I3(S_AXI_AWVALID),
        .I4(S_AXI_AWREADY),
        .I5(slv_reg_uart_rx_ready[17]),
        .O(slv_reg_uart_rx_ready__0[17]));
  LUT6 #(
    .INIT(64'hF7FFFFFF80000000)) 
    \slv_reg_uart_rx_ready[18]_i_1 
       (.I0(S_AXI_AWADDR[3]),
        .I1(S_AXI_AWADDR[2]),
        .I2(S_AXI_WDATA[18]),
        .I3(S_AXI_AWVALID),
        .I4(S_AXI_AWREADY),
        .I5(slv_reg_uart_rx_ready[18]),
        .O(slv_reg_uart_rx_ready__0[18]));
  LUT6 #(
    .INIT(64'hF7FFFFFF80000000)) 
    \slv_reg_uart_rx_ready[19]_i_1 
       (.I0(S_AXI_AWADDR[3]),
        .I1(S_AXI_AWADDR[2]),
        .I2(S_AXI_WDATA[19]),
        .I3(S_AXI_AWVALID),
        .I4(S_AXI_AWREADY),
        .I5(slv_reg_uart_rx_ready[19]),
        .O(slv_reg_uart_rx_ready__0[19]));
  LUT6 #(
    .INIT(64'hF7FFFFFF80000000)) 
    \slv_reg_uart_rx_ready[1]_i_1 
       (.I0(S_AXI_AWADDR[3]),
        .I1(S_AXI_AWADDR[2]),
        .I2(S_AXI_WDATA[1]),
        .I3(S_AXI_AWVALID),
        .I4(S_AXI_AWREADY),
        .I5(slv_reg_uart_rx_ready[1]),
        .O(slv_reg_uart_rx_ready__0[1]));
  LUT6 #(
    .INIT(64'hF7FFFFFF80000000)) 
    \slv_reg_uart_rx_ready[20]_i_1 
       (.I0(S_AXI_AWADDR[3]),
        .I1(S_AXI_AWADDR[2]),
        .I2(S_AXI_WDATA[20]),
        .I3(S_AXI_AWVALID),
        .I4(S_AXI_AWREADY),
        .I5(slv_reg_uart_rx_ready[20]),
        .O(slv_reg_uart_rx_ready__0[20]));
  LUT6 #(
    .INIT(64'hF7FFFFFF80000000)) 
    \slv_reg_uart_rx_ready[21]_i_1 
       (.I0(S_AXI_AWADDR[3]),
        .I1(S_AXI_AWADDR[2]),
        .I2(S_AXI_WDATA[21]),
        .I3(S_AXI_AWVALID),
        .I4(S_AXI_AWREADY),
        .I5(slv_reg_uart_rx_ready[21]),
        .O(slv_reg_uart_rx_ready__0[21]));
  LUT6 #(
    .INIT(64'hF7FFFFFF80000000)) 
    \slv_reg_uart_rx_ready[22]_i_1 
       (.I0(S_AXI_AWADDR[3]),
        .I1(S_AXI_AWADDR[2]),
        .I2(S_AXI_WDATA[22]),
        .I3(S_AXI_AWVALID),
        .I4(S_AXI_AWREADY),
        .I5(slv_reg_uart_rx_ready[22]),
        .O(slv_reg_uart_rx_ready__0[22]));
  LUT6 #(
    .INIT(64'hF7FFFFFF80000000)) 
    \slv_reg_uart_rx_ready[23]_i_1 
       (.I0(S_AXI_AWADDR[3]),
        .I1(S_AXI_AWADDR[2]),
        .I2(S_AXI_WDATA[23]),
        .I3(S_AXI_AWVALID),
        .I4(S_AXI_AWREADY),
        .I5(slv_reg_uart_rx_ready[23]),
        .O(slv_reg_uart_rx_ready__0[23]));
  LUT6 #(
    .INIT(64'hF7FFFFFF80000000)) 
    \slv_reg_uart_rx_ready[24]_i_1 
       (.I0(S_AXI_AWADDR[3]),
        .I1(S_AXI_AWADDR[2]),
        .I2(S_AXI_WDATA[24]),
        .I3(S_AXI_AWVALID),
        .I4(S_AXI_AWREADY),
        .I5(slv_reg_uart_rx_ready[24]),
        .O(slv_reg_uart_rx_ready__0[24]));
  LUT6 #(
    .INIT(64'hF7FFFFFF80000000)) 
    \slv_reg_uart_rx_ready[25]_i_1 
       (.I0(S_AXI_AWADDR[3]),
        .I1(S_AXI_AWADDR[2]),
        .I2(S_AXI_WDATA[25]),
        .I3(S_AXI_AWVALID),
        .I4(S_AXI_AWREADY),
        .I5(slv_reg_uart_rx_ready[25]),
        .O(slv_reg_uart_rx_ready__0[25]));
  LUT6 #(
    .INIT(64'hF7FFFFFF80000000)) 
    \slv_reg_uart_rx_ready[26]_i_1 
       (.I0(S_AXI_AWADDR[3]),
        .I1(S_AXI_AWADDR[2]),
        .I2(S_AXI_WDATA[26]),
        .I3(S_AXI_AWVALID),
        .I4(S_AXI_AWREADY),
        .I5(slv_reg_uart_rx_ready[26]),
        .O(slv_reg_uart_rx_ready__0[26]));
  LUT6 #(
    .INIT(64'hF7FFFFFF80000000)) 
    \slv_reg_uart_rx_ready[27]_i_1 
       (.I0(S_AXI_AWADDR[3]),
        .I1(S_AXI_AWADDR[2]),
        .I2(S_AXI_WDATA[27]),
        .I3(S_AXI_AWVALID),
        .I4(S_AXI_AWREADY),
        .I5(slv_reg_uart_rx_ready[27]),
        .O(slv_reg_uart_rx_ready__0[27]));
  LUT6 #(
    .INIT(64'hF7FFFFFF80000000)) 
    \slv_reg_uart_rx_ready[28]_i_1 
       (.I0(S_AXI_AWADDR[3]),
        .I1(S_AXI_AWADDR[2]),
        .I2(S_AXI_WDATA[28]),
        .I3(S_AXI_AWVALID),
        .I4(S_AXI_AWREADY),
        .I5(slv_reg_uart_rx_ready[28]),
        .O(slv_reg_uart_rx_ready__0[28]));
  LUT6 #(
    .INIT(64'hF7FFFFFF80000000)) 
    \slv_reg_uart_rx_ready[29]_i_1 
       (.I0(S_AXI_AWADDR[3]),
        .I1(S_AXI_AWADDR[2]),
        .I2(S_AXI_WDATA[29]),
        .I3(S_AXI_AWVALID),
        .I4(S_AXI_AWREADY),
        .I5(slv_reg_uart_rx_ready[29]),
        .O(slv_reg_uart_rx_ready__0[29]));
  LUT6 #(
    .INIT(64'hF7FFFFFF80000000)) 
    \slv_reg_uart_rx_ready[2]_i_1 
       (.I0(S_AXI_AWADDR[3]),
        .I1(S_AXI_AWADDR[2]),
        .I2(S_AXI_WDATA[2]),
        .I3(S_AXI_AWVALID),
        .I4(S_AXI_AWREADY),
        .I5(slv_reg_uart_rx_ready[2]),
        .O(slv_reg_uart_rx_ready__0[2]));
  LUT6 #(
    .INIT(64'hF7FFFFFF80000000)) 
    \slv_reg_uart_rx_ready[30]_i_1 
       (.I0(S_AXI_AWADDR[3]),
        .I1(S_AXI_AWADDR[2]),
        .I2(S_AXI_WDATA[30]),
        .I3(S_AXI_AWVALID),
        .I4(S_AXI_AWREADY),
        .I5(slv_reg_uart_rx_ready[30]),
        .O(slv_reg_uart_rx_ready__0[30]));
  LUT6 #(
    .INIT(64'hF7FFFFFF80000000)) 
    \slv_reg_uart_rx_ready[31]_i_1 
       (.I0(S_AXI_AWADDR[3]),
        .I1(S_AXI_AWADDR[2]),
        .I2(S_AXI_WDATA[31]),
        .I3(S_AXI_AWVALID),
        .I4(S_AXI_AWREADY),
        .I5(slv_reg_uart_rx_ready[31]),
        .O(slv_reg_uart_rx_ready__0[31]));
  LUT6 #(
    .INIT(64'hF7FFFFFF80000000)) 
    \slv_reg_uart_rx_ready[3]_i_1 
       (.I0(S_AXI_AWADDR[3]),
        .I1(S_AXI_AWADDR[2]),
        .I2(S_AXI_WDATA[3]),
        .I3(S_AXI_AWVALID),
        .I4(S_AXI_AWREADY),
        .I5(slv_reg_uart_rx_ready[3]),
        .O(slv_reg_uart_rx_ready__0[3]));
  LUT6 #(
    .INIT(64'hF7FFFFFF80000000)) 
    \slv_reg_uart_rx_ready[4]_i_1 
       (.I0(S_AXI_AWADDR[3]),
        .I1(S_AXI_AWADDR[2]),
        .I2(S_AXI_WDATA[4]),
        .I3(S_AXI_AWVALID),
        .I4(S_AXI_AWREADY),
        .I5(slv_reg_uart_rx_ready[4]),
        .O(slv_reg_uart_rx_ready__0[4]));
  LUT6 #(
    .INIT(64'hF7FFFFFF80000000)) 
    \slv_reg_uart_rx_ready[5]_i_1 
       (.I0(S_AXI_AWADDR[3]),
        .I1(S_AXI_AWADDR[2]),
        .I2(S_AXI_WDATA[5]),
        .I3(S_AXI_AWVALID),
        .I4(S_AXI_AWREADY),
        .I5(slv_reg_uart_rx_ready[5]),
        .O(slv_reg_uart_rx_ready__0[5]));
  LUT6 #(
    .INIT(64'hF7FFFFFF80000000)) 
    \slv_reg_uart_rx_ready[6]_i_1 
       (.I0(S_AXI_AWADDR[3]),
        .I1(S_AXI_AWADDR[2]),
        .I2(S_AXI_WDATA[6]),
        .I3(S_AXI_AWVALID),
        .I4(S_AXI_AWREADY),
        .I5(slv_reg_uart_rx_ready[6]),
        .O(slv_reg_uart_rx_ready__0[6]));
  LUT6 #(
    .INIT(64'hF7FFFFFF80000000)) 
    \slv_reg_uart_rx_ready[7]_i_1 
       (.I0(S_AXI_AWADDR[3]),
        .I1(S_AXI_AWADDR[2]),
        .I2(S_AXI_WDATA[7]),
        .I3(S_AXI_AWVALID),
        .I4(S_AXI_AWREADY),
        .I5(slv_reg_uart_rx_ready[7]),
        .O(slv_reg_uart_rx_ready__0[7]));
  LUT6 #(
    .INIT(64'hF7FFFFFF80000000)) 
    \slv_reg_uart_rx_ready[8]_i_1 
       (.I0(S_AXI_AWADDR[3]),
        .I1(S_AXI_AWADDR[2]),
        .I2(S_AXI_WDATA[8]),
        .I3(S_AXI_AWVALID),
        .I4(S_AXI_AWREADY),
        .I5(slv_reg_uart_rx_ready[8]),
        .O(slv_reg_uart_rx_ready__0[8]));
  LUT6 #(
    .INIT(64'hF7FFFFFF80000000)) 
    \slv_reg_uart_rx_ready[9]_i_1 
       (.I0(S_AXI_AWADDR[3]),
        .I1(S_AXI_AWADDR[2]),
        .I2(S_AXI_WDATA[9]),
        .I3(S_AXI_AWVALID),
        .I4(S_AXI_AWREADY),
        .I5(slv_reg_uart_rx_ready[9]),
        .O(slv_reg_uart_rx_ready__0[9]));
  (* KEEP = "yes" *) 
  FDRE \slv_reg_uart_rx_ready_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(S_AXI_ARESETN),
        .D(slv_reg_uart_rx_ready__0[0]),
        .Q(slv_reg_uart_rx_ready[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg_uart_rx_ready_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(S_AXI_ARESETN),
        .D(slv_reg_uart_rx_ready__0[10]),
        .Q(slv_reg_uart_rx_ready[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg_uart_rx_ready_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(S_AXI_ARESETN),
        .D(slv_reg_uart_rx_ready__0[11]),
        .Q(slv_reg_uart_rx_ready[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg_uart_rx_ready_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(S_AXI_ARESETN),
        .D(slv_reg_uart_rx_ready__0[12]),
        .Q(slv_reg_uart_rx_ready[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg_uart_rx_ready_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(S_AXI_ARESETN),
        .D(slv_reg_uart_rx_ready__0[13]),
        .Q(slv_reg_uart_rx_ready[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg_uart_rx_ready_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(S_AXI_ARESETN),
        .D(slv_reg_uart_rx_ready__0[14]),
        .Q(slv_reg_uart_rx_ready[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg_uart_rx_ready_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(S_AXI_ARESETN),
        .D(slv_reg_uart_rx_ready__0[15]),
        .Q(slv_reg_uart_rx_ready[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg_uart_rx_ready_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(S_AXI_ARESETN),
        .D(slv_reg_uart_rx_ready__0[16]),
        .Q(slv_reg_uart_rx_ready[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg_uart_rx_ready_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(S_AXI_ARESETN),
        .D(slv_reg_uart_rx_ready__0[17]),
        .Q(slv_reg_uart_rx_ready[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg_uart_rx_ready_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(S_AXI_ARESETN),
        .D(slv_reg_uart_rx_ready__0[18]),
        .Q(slv_reg_uart_rx_ready[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg_uart_rx_ready_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(S_AXI_ARESETN),
        .D(slv_reg_uart_rx_ready__0[19]),
        .Q(slv_reg_uart_rx_ready[19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg_uart_rx_ready_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(S_AXI_ARESETN),
        .D(slv_reg_uart_rx_ready__0[1]),
        .Q(slv_reg_uart_rx_ready[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg_uart_rx_ready_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(S_AXI_ARESETN),
        .D(slv_reg_uart_rx_ready__0[20]),
        .Q(slv_reg_uart_rx_ready[20]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg_uart_rx_ready_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(S_AXI_ARESETN),
        .D(slv_reg_uart_rx_ready__0[21]),
        .Q(slv_reg_uart_rx_ready[21]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg_uart_rx_ready_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(S_AXI_ARESETN),
        .D(slv_reg_uart_rx_ready__0[22]),
        .Q(slv_reg_uart_rx_ready[22]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg_uart_rx_ready_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(S_AXI_ARESETN),
        .D(slv_reg_uart_rx_ready__0[23]),
        .Q(slv_reg_uart_rx_ready[23]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg_uart_rx_ready_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(S_AXI_ARESETN),
        .D(slv_reg_uart_rx_ready__0[24]),
        .Q(slv_reg_uart_rx_ready[24]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg_uart_rx_ready_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(S_AXI_ARESETN),
        .D(slv_reg_uart_rx_ready__0[25]),
        .Q(slv_reg_uart_rx_ready[25]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg_uart_rx_ready_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(S_AXI_ARESETN),
        .D(slv_reg_uart_rx_ready__0[26]),
        .Q(slv_reg_uart_rx_ready[26]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg_uart_rx_ready_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(S_AXI_ARESETN),
        .D(slv_reg_uart_rx_ready__0[27]),
        .Q(slv_reg_uart_rx_ready[27]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg_uart_rx_ready_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(S_AXI_ARESETN),
        .D(slv_reg_uart_rx_ready__0[28]),
        .Q(slv_reg_uart_rx_ready[28]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg_uart_rx_ready_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(S_AXI_ARESETN),
        .D(slv_reg_uart_rx_ready__0[29]),
        .Q(slv_reg_uart_rx_ready[29]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg_uart_rx_ready_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(S_AXI_ARESETN),
        .D(slv_reg_uart_rx_ready__0[2]),
        .Q(slv_reg_uart_rx_ready[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg_uart_rx_ready_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(S_AXI_ARESETN),
        .D(slv_reg_uart_rx_ready__0[30]),
        .Q(slv_reg_uart_rx_ready[30]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg_uart_rx_ready_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(S_AXI_ARESETN),
        .D(slv_reg_uart_rx_ready__0[31]),
        .Q(slv_reg_uart_rx_ready[31]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg_uart_rx_ready_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(S_AXI_ARESETN),
        .D(slv_reg_uart_rx_ready__0[3]),
        .Q(slv_reg_uart_rx_ready[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg_uart_rx_ready_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(S_AXI_ARESETN),
        .D(slv_reg_uart_rx_ready__0[4]),
        .Q(slv_reg_uart_rx_ready[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg_uart_rx_ready_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(S_AXI_ARESETN),
        .D(slv_reg_uart_rx_ready__0[5]),
        .Q(slv_reg_uart_rx_ready[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg_uart_rx_ready_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(S_AXI_ARESETN),
        .D(slv_reg_uart_rx_ready__0[6]),
        .Q(slv_reg_uart_rx_ready[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg_uart_rx_ready_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(S_AXI_ARESETN),
        .D(slv_reg_uart_rx_ready__0[7]),
        .Q(slv_reg_uart_rx_ready[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg_uart_rx_ready_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(S_AXI_ARESETN),
        .D(slv_reg_uart_rx_ready__0[8]),
        .Q(slv_reg_uart_rx_ready[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg_uart_rx_ready_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(S_AXI_ARESETN),
        .D(slv_reg_uart_rx_ready__0[9]),
        .Q(slv_reg_uart_rx_ready[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0800)) 
    \slv_reg_uart_tx_data[7]_i_1 
       (.I0(S_AXI_AWREADY),
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
        .I4(axi_awready0),
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
