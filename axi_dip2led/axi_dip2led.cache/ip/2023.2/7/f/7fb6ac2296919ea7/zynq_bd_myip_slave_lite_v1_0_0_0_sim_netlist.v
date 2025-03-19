// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Sun Dec 22 18:10:52 2024
// Host        : COMSYS01 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ zynq_bd_myip_slave_lite_v1_0_0_0_sim_netlist.v
// Design      : zynq_bd_myip_slave_lite_v1_0_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ADDR_LSB = "2" *) (* C_S_AXI_ADDR_WIDTH = "4" *) (* C_S_AXI_DATA_WIDTH = "32" *) 
(* Idle = "2'b00" *) (* OPT_MEM_ADDR_BITS = "1" *) (* Raddr = "2'b10" *) 
(* Rdata = "2'b11" *) (* Waddr = "2'b10" *) (* Wdata = "2'b11" *) 
(* keep_hierarchy = "soft" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_slave_lite_v1_0_S00_AXI
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
  input S_AXI_ACLK;
  (* mark_debug = "true" *) input S_AXI_ARESETN;
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
  (* mark_debug = "true" *) output [31:0]S_AXI_RDATA;
  output [1:0]S_AXI_RRESP;
  (* mark_debug = "true" *) output S_AXI_RVALID;
  (* mark_debug = "true" *) input S_AXI_RREADY;
  (* mark_debug = "true" *) input [3:0]SW;
  output [7:0]LED;

  wire \<const0> ;
  wire \FSM_onehot_state_write[0]_i_1_n_0 ;
  wire \FSM_onehot_state_write[1]_i_1_n_0 ;
  wire \FSM_onehot_state_write[2]_i_1_n_0 ;
  wire \FSM_onehot_state_write[2]_i_2_n_0 ;
  wire \FSM_onehot_state_write_reg_n_0_[2] ;
  wire \FSM_sequential_state_read[0]_i_1_n_0 ;
  wire \FSM_sequential_state_read[1]_i_1_n_0 ;
  wire [3:0]\^LED ;
  (* MARK_DEBUG *) wire [3:0]SW;
  wire S_AXI_ACLK;
  wire [3:0]S_AXI_ARADDR;
  (* MARK_DEBUG *) wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [3:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  (* MARK_DEBUG *) wire [31:0]S_AXI_RDATA;
  (* MARK_DEBUG *) wire S_AXI_RREADY;
  (* MARK_DEBUG *) wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire S_AXI_WVALID;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready0;
  wire axi_arready_i_1_n_0;
  wire axi_awready_i_1_n_0;
  wire axi_awready_i_2_n_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_bvalid_i_2_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_rvalid_i_2_n_0;
  wire axi_wdata;
  wire \axi_wdata[3]_i_1_n_0 ;
  wire [3:0]axi_wdata__0;
  wire axi_wready;
  wire axi_wready_i_1_n_0;
  wire slv_reg_led;
  (* MARK_DEBUG *) wire [31:0]slv_reg_sw;
  wire [1:0]state_read;

  assign LED[7] = \<const0> ;
  assign LED[6] = \<const0> ;
  assign LED[5] = \<const0> ;
  assign LED[4] = \<const0> ;
  assign LED[3:0] = \^LED [3:0];
  assign S_AXI_BRESP[1] = \<const0> ;
  assign S_AXI_BRESP[0] = \<const0> ;
  assign S_AXI_RRESP[1] = \<const0> ;
  assign S_AXI_RRESP[0] = \<const0> ;
  LUT4 #(
    .INIT(16'h0C08)) 
    \FSM_onehot_state_write[0]_i_1 
       (.I0(axi_wready),
        .I1(\FSM_onehot_state_write_reg_n_0_[2] ),
        .I2(S_AXI_BREADY),
        .I3(axi_wdata),
        .O(\FSM_onehot_state_write[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAFFFFFFEAEA0000)) 
    \FSM_onehot_state_write[1]_i_1 
       (.I0(axi_wready),
        .I1(\FSM_onehot_state_write_reg_n_0_[2] ),
        .I2(S_AXI_BREADY),
        .I3(S_AXI_WVALID),
        .I4(\FSM_onehot_state_write[2]_i_2_n_0 ),
        .I5(axi_wdata),
        .O(\FSM_onehot_state_write[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \FSM_onehot_state_write[2]_i_1 
       (.I0(axi_wdata),
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
        .I3(S_AXI_AWREADY),
        .I4(S_AXI_BREADY),
        .I5(axi_wdata),
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
        .Q(axi_wdata),
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
  GND GND
       (.G(\<const0> ));
  LUT3 #(
    .INIT(8'h40)) 
    S_AXI_RDATA_inferred_i_1
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(slv_reg_sw[31]),
        .O(S_AXI_RDATA[31]));
  LUT3 #(
    .INIT(8'h40)) 
    S_AXI_RDATA_inferred_i_10
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(slv_reg_sw[22]),
        .O(S_AXI_RDATA[22]));
  LUT3 #(
    .INIT(8'h40)) 
    S_AXI_RDATA_inferred_i_11
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(slv_reg_sw[21]),
        .O(S_AXI_RDATA[21]));
  LUT3 #(
    .INIT(8'h40)) 
    S_AXI_RDATA_inferred_i_12
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(slv_reg_sw[20]),
        .O(S_AXI_RDATA[20]));
  LUT3 #(
    .INIT(8'h40)) 
    S_AXI_RDATA_inferred_i_13
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(slv_reg_sw[19]),
        .O(S_AXI_RDATA[19]));
  LUT3 #(
    .INIT(8'h40)) 
    S_AXI_RDATA_inferred_i_14
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(slv_reg_sw[18]),
        .O(S_AXI_RDATA[18]));
  LUT3 #(
    .INIT(8'h40)) 
    S_AXI_RDATA_inferred_i_15
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(slv_reg_sw[17]),
        .O(S_AXI_RDATA[17]));
  LUT3 #(
    .INIT(8'h40)) 
    S_AXI_RDATA_inferred_i_16
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(slv_reg_sw[16]),
        .O(S_AXI_RDATA[16]));
  LUT3 #(
    .INIT(8'h40)) 
    S_AXI_RDATA_inferred_i_17
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(slv_reg_sw[15]),
        .O(S_AXI_RDATA[15]));
  LUT3 #(
    .INIT(8'h40)) 
    S_AXI_RDATA_inferred_i_18
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(slv_reg_sw[14]),
        .O(S_AXI_RDATA[14]));
  LUT3 #(
    .INIT(8'h40)) 
    S_AXI_RDATA_inferred_i_19
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(slv_reg_sw[13]),
        .O(S_AXI_RDATA[13]));
  LUT3 #(
    .INIT(8'h40)) 
    S_AXI_RDATA_inferred_i_2
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(slv_reg_sw[30]),
        .O(S_AXI_RDATA[30]));
  LUT3 #(
    .INIT(8'h40)) 
    S_AXI_RDATA_inferred_i_20
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(slv_reg_sw[12]),
        .O(S_AXI_RDATA[12]));
  LUT3 #(
    .INIT(8'h40)) 
    S_AXI_RDATA_inferred_i_21
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(slv_reg_sw[11]),
        .O(S_AXI_RDATA[11]));
  LUT3 #(
    .INIT(8'h40)) 
    S_AXI_RDATA_inferred_i_22
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(slv_reg_sw[10]),
        .O(S_AXI_RDATA[10]));
  LUT3 #(
    .INIT(8'h40)) 
    S_AXI_RDATA_inferred_i_23
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(slv_reg_sw[9]),
        .O(S_AXI_RDATA[9]));
  LUT3 #(
    .INIT(8'h40)) 
    S_AXI_RDATA_inferred_i_24
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(slv_reg_sw[8]),
        .O(S_AXI_RDATA[8]));
  LUT3 #(
    .INIT(8'h40)) 
    S_AXI_RDATA_inferred_i_25
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(slv_reg_sw[7]),
        .O(S_AXI_RDATA[7]));
  LUT3 #(
    .INIT(8'h40)) 
    S_AXI_RDATA_inferred_i_26
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(slv_reg_sw[6]),
        .O(S_AXI_RDATA[6]));
  LUT3 #(
    .INIT(8'h40)) 
    S_AXI_RDATA_inferred_i_27
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(slv_reg_sw[5]),
        .O(S_AXI_RDATA[5]));
  LUT3 #(
    .INIT(8'h40)) 
    S_AXI_RDATA_inferred_i_28
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(slv_reg_sw[4]),
        .O(S_AXI_RDATA[4]));
  LUT3 #(
    .INIT(8'h40)) 
    S_AXI_RDATA_inferred_i_29
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(slv_reg_sw[3]),
        .O(S_AXI_RDATA[3]));
  LUT3 #(
    .INIT(8'h40)) 
    S_AXI_RDATA_inferred_i_3
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(slv_reg_sw[29]),
        .O(S_AXI_RDATA[29]));
  LUT3 #(
    .INIT(8'h40)) 
    S_AXI_RDATA_inferred_i_30
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(slv_reg_sw[2]),
        .O(S_AXI_RDATA[2]));
  LUT3 #(
    .INIT(8'h40)) 
    S_AXI_RDATA_inferred_i_31
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(slv_reg_sw[1]),
        .O(S_AXI_RDATA[1]));
  LUT3 #(
    .INIT(8'h40)) 
    S_AXI_RDATA_inferred_i_32
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(slv_reg_sw[0]),
        .O(S_AXI_RDATA[0]));
  LUT3 #(
    .INIT(8'h40)) 
    S_AXI_RDATA_inferred_i_4
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(slv_reg_sw[28]),
        .O(S_AXI_RDATA[28]));
  LUT3 #(
    .INIT(8'h40)) 
    S_AXI_RDATA_inferred_i_5
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(slv_reg_sw[27]),
        .O(S_AXI_RDATA[27]));
  LUT3 #(
    .INIT(8'h40)) 
    S_AXI_RDATA_inferred_i_6
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(slv_reg_sw[26]),
        .O(S_AXI_RDATA[26]));
  LUT3 #(
    .INIT(8'h40)) 
    S_AXI_RDATA_inferred_i_7
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(slv_reg_sw[25]),
        .O(S_AXI_RDATA[25]));
  LUT3 #(
    .INIT(8'h40)) 
    S_AXI_RDATA_inferred_i_8
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(slv_reg_sw[24]),
        .O(S_AXI_RDATA[24]));
  LUT3 #(
    .INIT(8'h40)) 
    S_AXI_RDATA_inferred_i_9
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(slv_reg_sw[23]),
        .O(S_AXI_RDATA[23]));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \axi_araddr[2]_i_1 
       (.I0(S_AXI_ARADDR[2]),
        .I1(S_AXI_ARESETN),
        .I2(axi_arready0),
        .I3(state_read[0]),
        .I4(state_read[1]),
        .I5(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \axi_araddr[3]_i_1 
       (.I0(S_AXI_ARADDR[3]),
        .I1(S_AXI_ARESETN),
        .I2(axi_arready0),
        .I3(state_read[0]),
        .I4(state_read[1]),
        .I5(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
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
    .INIT(64'hFFFFBAFABAFABAFA)) 
    axi_awready_i_2
       (.I0(axi_wready),
        .I1(\FSM_onehot_state_write_reg_n_0_[2] ),
        .I2(S_AXI_AWREADY),
        .I3(S_AXI_AWVALID),
        .I4(axi_wdata),
        .I5(S_AXI_WVALID),
        .O(axi_awready_i_2_n_0));
  FDRE axi_awready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_awready_i_2_n_0),
        .Q(S_AXI_AWREADY),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hAA00AA00A830F0F0)) 
    axi_bvalid_i_1
       (.I0(\FSM_onehot_state_write_reg_n_0_[2] ),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_BVALID),
        .I3(S_AXI_BREADY),
        .I4(axi_wdata),
        .I5(axi_bvalid_i_2_n_0),
        .O(axi_bvalid_i_1_n_0));
  LUT4 #(
    .INIT(16'h2A00)) 
    axi_bvalid_i_2
       (.I0(\FSM_onehot_state_write_reg_n_0_[2] ),
        .I1(S_AXI_AWVALID),
        .I2(S_AXI_AWREADY),
        .I3(S_AXI_BREADY),
        .O(axi_bvalid_i_2_n_0));
  FDRE axi_bvalid_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(S_AXI_BVALID),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hEFFFFFFFA8888888)) 
    axi_rvalid_i_1
       (.I0(axi_rvalid_i_2_n_0),
        .I1(state_read[0]),
        .I2(state_read[1]),
        .I3(S_AXI_RREADY),
        .I4(S_AXI_RVALID),
        .I5(S_AXI_RVALID),
        .O(axi_rvalid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_rvalid_i_2
       (.I0(S_AXI_ARREADY),
        .I1(S_AXI_ARVALID),
        .I2(state_read[1]),
        .O(axi_rvalid_i_2_n_0));
  FDRE axi_rvalid_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(S_AXI_RVALID),
        .R(axi_awready_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    \axi_wdata[3]_i_1 
       (.I0(S_AXI_ARESETN),
        .I1(axi_wdata),
        .O(\axi_wdata[3]_i_1_n_0 ));
  FDRE \axi_wdata_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\axi_wdata[3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(axi_wdata__0[0]),
        .R(1'b0));
  FDRE \axi_wdata_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\axi_wdata[3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(axi_wdata__0[1]),
        .R(1'b0));
  FDRE \axi_wdata_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\axi_wdata[3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(axi_wdata__0[2]),
        .R(1'b0));
  FDRE \axi_wdata_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\axi_wdata[3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(axi_wdata__0[3]),
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
        .I1(S_AXI_AWADDR[3]),
        .I2(S_AXI_AWADDR[2]),
        .O(slv_reg_led));
  FDRE \slv_reg_led_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_led),
        .D(axi_wdata__0[0]),
        .Q(\^LED [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_led_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_led),
        .D(axi_wdata__0[1]),
        .Q(\^LED [1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_led_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_led),
        .D(axi_wdata__0[2]),
        .Q(\^LED [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_led_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_led),
        .D(axi_wdata__0[3]),
        .Q(\^LED [3]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg_sw_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(SW[0]),
        .Q(slv_reg_sw[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg_sw_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(slv_reg_sw[10]),
        .Q(slv_reg_sw[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg_sw_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(slv_reg_sw[11]),
        .Q(slv_reg_sw[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg_sw_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(slv_reg_sw[12]),
        .Q(slv_reg_sw[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg_sw_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(slv_reg_sw[13]),
        .Q(slv_reg_sw[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg_sw_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(slv_reg_sw[14]),
        .Q(slv_reg_sw[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg_sw_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(slv_reg_sw[15]),
        .Q(slv_reg_sw[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg_sw_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(slv_reg_sw[16]),
        .Q(slv_reg_sw[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg_sw_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(slv_reg_sw[17]),
        .Q(slv_reg_sw[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg_sw_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(slv_reg_sw[18]),
        .Q(slv_reg_sw[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg_sw_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(slv_reg_sw[19]),
        .Q(slv_reg_sw[19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg_sw_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(SW[1]),
        .Q(slv_reg_sw[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg_sw_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(slv_reg_sw[20]),
        .Q(slv_reg_sw[20]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg_sw_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(slv_reg_sw[21]),
        .Q(slv_reg_sw[21]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg_sw_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(slv_reg_sw[22]),
        .Q(slv_reg_sw[22]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg_sw_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(slv_reg_sw[23]),
        .Q(slv_reg_sw[23]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg_sw_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(slv_reg_sw[24]),
        .Q(slv_reg_sw[24]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg_sw_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(slv_reg_sw[25]),
        .Q(slv_reg_sw[25]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg_sw_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(slv_reg_sw[26]),
        .Q(slv_reg_sw[26]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg_sw_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(slv_reg_sw[27]),
        .Q(slv_reg_sw[27]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg_sw_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(slv_reg_sw[28]),
        .Q(slv_reg_sw[28]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg_sw_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(slv_reg_sw[29]),
        .Q(slv_reg_sw[29]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg_sw_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(SW[2]),
        .Q(slv_reg_sw[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg_sw_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(slv_reg_sw[30]),
        .Q(slv_reg_sw[30]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg_sw_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(slv_reg_sw[31]),
        .Q(slv_reg_sw[31]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg_sw_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(SW[3]),
        .Q(slv_reg_sw[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg_sw_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(slv_reg_sw[4]),
        .Q(slv_reg_sw[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg_sw_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(slv_reg_sw[5]),
        .Q(slv_reg_sw[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg_sw_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(slv_reg_sw[6]),
        .Q(slv_reg_sw[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg_sw_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(slv_reg_sw[7]),
        .Q(slv_reg_sw[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg_sw_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(slv_reg_sw[8]),
        .Q(slv_reg_sw[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg_sw_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(slv_reg_sw[9]),
        .Q(slv_reg_sw[9]),
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
  wire [7:4]NLW_inst_LED_UNCONNECTED;
  wire [1:0]NLW_inst_S_AXI_BRESP_UNCONNECTED;
  wire [1:0]NLW_inst_S_AXI_RRESP_UNCONNECTED;

  assign LED[7] = \<const0> ;
  assign LED[6] = \<const0> ;
  assign LED[5] = \<const0> ;
  assign LED[4] = \<const0> ;
  assign LED[3:0] = \^LED [3:0];
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_slave_lite_v1_0_S00_AXI inst
       (.LED({NLW_inst_LED_UNCONNECTED[7:4],\^LED }),
        .SW(SW),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARADDR({S_AXI_ARADDR[3:2],1'b0,1'b0}),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARPROT({1'b0,1'b0,1'b0}),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR({S_AXI_AWADDR[3:2],1'b0,1'b0}),
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
        .S_AXI_WDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,S_AXI_WDATA[3:0]}),
        .S_AXI_WREADY(S_AXI_WREADY),
        .S_AXI_WSTRB({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_WVALID(S_AXI_WVALID));
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
