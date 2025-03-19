// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Mon Dec  9 15:52:45 2024
// Host        : COMSYS01 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ zynq_bd_myip_slave_lite_v1_0_0_0_sim_netlist.v
// Design      : zynq_bd_myip_slave_lite_v1_0_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_slave_lite_v1_0_S00_AXI
   (axi_arready_reg_0,
    axi_rvalid_reg_0,
    S_AXI_RDATA,
    LED,
    axi_awready_reg_0,
    S_AXI_BVALID,
    S_AXI_WREADY,
    S_AXI_WVALID,
    S_AXI_BREADY,
    S_AXI_ACLK,
    S_AXI_ARVALID,
    S_AXI_RREADY,
    SW,
    S_AXI_WDATA,
    S_AXI_AWVALID,
    S_AXI_AWADDR,
    S_AXI_ARESETN);
  output axi_arready_reg_0;
  output axi_rvalid_reg_0;
  output [3:0]S_AXI_RDATA;
  output [3:0]LED;
  output axi_awready_reg_0;
  output S_AXI_BVALID;
  output S_AXI_WREADY;
  input S_AXI_WVALID;
  input S_AXI_BREADY;
  input S_AXI_ACLK;
  input S_AXI_ARVALID;
  input S_AXI_RREADY;
  input [3:0]SW;
  input [3:0]S_AXI_WDATA;
  input S_AXI_AWVALID;
  input [1:0]S_AXI_AWADDR;
  input S_AXI_ARESETN;

  wire \FSM_onehot_state_write[0]_i_1_n_0 ;
  wire \FSM_onehot_state_write[1]_i_1_n_0 ;
  wire \FSM_onehot_state_write[2]_i_1_n_0 ;
  wire \FSM_onehot_state_write[2]_i_2_n_0 ;
  wire \FSM_onehot_state_write_reg_n_0_[2] ;
  wire \FSM_sequential_state_read[0]_i_1_n_0 ;
  wire \FSM_sequential_state_read[1]_i_1_n_0 ;
  wire [3:0]LED;
  wire [3:0]SW;
  wire S_AXI_ACLK;
  wire S_AXI_ARESETN;
  wire S_AXI_ARVALID;
  wire [1:0]S_AXI_AWADDR;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [3:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire [3:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire S_AXI_WVALID;
  wire axi_arready_i_1_n_0;
  wire axi_arready_reg_0;
  wire axi_awready_i_1_n_0;
  wire axi_awready_i_2_n_0;
  wire axi_awready_reg_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_bvalid_i_2_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_rvalid_reg_0;
  wire [3:0]axi_wdata;
  wire \axi_wdata[3]_i_1_n_0 ;
  wire axi_wdata_0;
  wire axi_wready;
  wire axi_wready_i_1_n_0;
  wire slv_reg_led;
  wire [1:0]state_read;

  LUT4 #(
    .INIT(16'h0C08)) 
    \FSM_onehot_state_write[0]_i_1 
       (.I0(axi_wready),
        .I1(\FSM_onehot_state_write_reg_n_0_[2] ),
        .I2(S_AXI_BREADY),
        .I3(axi_wdata_0),
        .O(\FSM_onehot_state_write[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAFFFFFFEAEA0000)) 
    \FSM_onehot_state_write[1]_i_1 
       (.I0(axi_wready),
        .I1(\FSM_onehot_state_write_reg_n_0_[2] ),
        .I2(S_AXI_BREADY),
        .I3(S_AXI_WVALID),
        .I4(\FSM_onehot_state_write[2]_i_2_n_0 ),
        .I5(axi_wdata_0),
        .O(\FSM_onehot_state_write[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \FSM_onehot_state_write[2]_i_1 
       (.I0(axi_wdata_0),
        .I1(S_AXI_WVALID),
        .I2(\FSM_onehot_state_write[2]_i_2_n_0 ),
        .I3(\FSM_onehot_state_write_reg_n_0_[2] ),
        .O(\FSM_onehot_state_write[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAEEEAAAA)) 
    \FSM_onehot_state_write[2]_i_2 
       (.I0(axi_wready),
        .I1(\FSM_onehot_state_write_reg_n_0_[2] ),
        .I2(S_AXI_AWVALID),
        .I3(axi_awready_reg_0),
        .I4(S_AXI_BREADY),
        .I5(axi_wdata_0),
        .O(\FSM_onehot_state_write[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "Idle:001,Wdata:010,Waddr:100" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_write_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_onehot_state_write[0]_i_1_n_0 ),
        .Q(axi_wready),
        .S(axi_awready_i_1_n_0));
  (* FSM_ENCODED_STATES = "Idle:001,Wdata:010,Waddr:100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_write_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_onehot_state_write[1]_i_1_n_0 ),
        .Q(axi_wdata_0),
        .R(axi_awready_i_1_n_0));
  (* FSM_ENCODED_STATES = "Idle:001,Wdata:010,Waddr:100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_write_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_onehot_state_write[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_write_reg_n_0_[2] ),
        .R(axi_awready_i_1_n_0));
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
    .INIT(64'hFFFFBAFABAFABAFA)) 
    axi_awready_i_2
       (.I0(axi_wready),
        .I1(\FSM_onehot_state_write_reg_n_0_[2] ),
        .I2(axi_awready_reg_0),
        .I3(S_AXI_AWVALID),
        .I4(axi_wdata_0),
        .I5(S_AXI_WVALID),
        .O(axi_awready_i_2_n_0));
  FDRE axi_awready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_awready_i_2_n_0),
        .Q(axi_awready_reg_0),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hAA00AA00A830F0F0)) 
    axi_bvalid_i_1
       (.I0(\FSM_onehot_state_write_reg_n_0_[2] ),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_BVALID),
        .I3(S_AXI_BREADY),
        .I4(axi_wdata_0),
        .I5(axi_bvalid_i_2_n_0),
        .O(axi_bvalid_i_1_n_0));
  LUT4 #(
    .INIT(16'h2A00)) 
    axi_bvalid_i_2
       (.I0(\FSM_onehot_state_write_reg_n_0_[2] ),
        .I1(S_AXI_AWVALID),
        .I2(axi_awready_reg_0),
        .I3(S_AXI_BREADY),
        .O(axi_bvalid_i_2_n_0));
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
  LUT2 #(
    .INIT(4'h8)) 
    \axi_wdata[3]_i_1 
       (.I0(S_AXI_ARESETN),
        .I1(axi_wdata_0),
        .O(\axi_wdata[3]_i_1_n_0 ));
  FDRE \axi_wdata_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\axi_wdata[3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(axi_wdata[0]),
        .R(1'b0));
  FDRE \axi_wdata_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\axi_wdata[3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(axi_wdata[1]),
        .R(1'b0));
  FDRE \axi_wdata_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\axi_wdata[3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(axi_wdata[2]),
        .R(1'b0));
  FDRE \axi_wdata_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\axi_wdata[3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(axi_wdata[3]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    axi_wready_i_1
       (.I0(axi_wready),
        .I1(S_AXI_WREADY),
        .O(axi_wready_i_1_n_0));
  FDRE axi_wready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_wready_i_1_n_0),
        .Q(S_AXI_WREADY),
        .R(axi_awready_i_1_n_0));
  LUT3 #(
    .INIT(8'h02)) 
    \slv_reg_led[3]_i_1 
       (.I0(S_AXI_AWVALID),
        .I1(S_AXI_AWADDR[1]),
        .I2(S_AXI_AWADDR[0]),
        .O(slv_reg_led));
  FDRE \slv_reg_led_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_led),
        .D(axi_wdata[0]),
        .Q(LED[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_led_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_led),
        .D(axi_wdata[1]),
        .Q(LED[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_led_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_led),
        .D(axi_wdata[2]),
        .Q(LED[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_led_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_led),
        .D(axi_wdata[3]),
        .Q(LED[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_sw_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(SW[0]),
        .Q(S_AXI_RDATA[0]),
        .R(1'b0));
  FDRE \slv_reg_sw_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(SW[1]),
        .Q(S_AXI_RDATA[1]),
        .R(1'b0));
  FDRE \slv_reg_sw_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(SW[2]),
        .Q(S_AXI_RDATA[2]),
        .R(1'b0));
  FDRE \slv_reg_sw_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(SW[3]),
        .Q(S_AXI_RDATA[3]),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "zynq_bd_myip_slave_lite_v1_0_0_0,myip_slave_lite_v1_0_S00_AXI,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "myip_slave_lite_v1_0_S00_AXI,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
    SW,
    LED);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_ARESETN, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN zynq_bd_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input S_AXI_ACLK;
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN zynq_bd_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input S_AXI_RREADY;
  input [3:0]SW;
  output [7:0]LED;

  wire \<const0> ;
  wire [3:0]\^LED ;
  wire [3:0]SW;
  wire S_AXI_ACLK;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [3:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [3:0]\^S_AXI_RDATA ;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire S_AXI_WVALID;

  assign LED[7] = \<const0> ;
  assign LED[6] = \<const0> ;
  assign LED[5] = \<const0> ;
  assign LED[4] = \<const0> ;
  assign LED[3:0] = \^LED [3:0];
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
  assign S_AXI_RDATA[7] = \<const0> ;
  assign S_AXI_RDATA[6] = \<const0> ;
  assign S_AXI_RDATA[5] = \<const0> ;
  assign S_AXI_RDATA[4] = \<const0> ;
  assign S_AXI_RDATA[3:0] = \^S_AXI_RDATA [3:0];
  assign S_AXI_RRESP[1] = \<const0> ;
  assign S_AXI_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_slave_lite_v1_0_S00_AXI inst
       (.LED(\^LED ),
        .SW(SW),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR(S_AXI_AWADDR[3:2]),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RDATA(\^S_AXI_RDATA ),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_WDATA(S_AXI_WDATA[3:0]),
        .S_AXI_WREADY(S_AXI_WREADY),
        .S_AXI_WVALID(S_AXI_WVALID),
        .axi_arready_reg_0(S_AXI_ARREADY),
        .axi_awready_reg_0(S_AXI_AWREADY),
        .axi_rvalid_reg_0(S_AXI_RVALID));
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
