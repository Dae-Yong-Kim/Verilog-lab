// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Mon Dec 16 16:13:15 2024
// Host        : COMSYS01 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Verilog-lab/Zynq_axi_7seg/Zynq_axi_7seg.gen/sources_1/bd/Zynq_axi_7seg/ip/Zynq_axi_7seg_myip_slave_lite_v1_0_0_0/Zynq_axi_7seg_myip_slave_lite_v1_0_0_0_sim_netlist.v
// Design      : Zynq_axi_7seg_myip_slave_lite_v1_0_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Zynq_axi_7seg_myip_slave_lite_v1_0_0_0,myip_slave_lite_v1_0_S00_AXI,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "myip_slave_lite_v1_0_S00_AXI,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module Zynq_axi_7seg_myip_slave_lite_v1_0_0_0
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
    DATA);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_ARESETN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Zynq_axi_7seg_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input S_AXI_ACLK;
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN Zynq_axi_7seg_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input S_AXI_RREADY;
  input [3:0]SW;
  output [7:0]DATA;

  wire \<const0> ;
  wire [7:0]DATA;
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
  wire [3:0]\^S_AXI_RDATA ;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire S_AXI_WVALID;
  wire [1:0]NLW_inst_S_AXI_BRESP_UNCONNECTED;
  wire [31:4]NLW_inst_S_AXI_RDATA_UNCONNECTED;
  wire [1:0]NLW_inst_S_AXI_RRESP_UNCONNECTED;

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
  Zynq_axi_7seg_myip_slave_lite_v1_0_0_0_myip_slave_lite_v1_0_S00_AXI inst
       (.DATA(DATA),
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
        .S_AXI_RDATA({NLW_inst_S_AXI_RDATA_UNCONNECTED[31:4],\^S_AXI_RDATA }),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_RRESP(NLW_inst_S_AXI_RRESP_UNCONNECTED[1:0]),
        .S_AXI_RVALID(S_AXI_RVALID),
        .S_AXI_WDATA(S_AXI_WDATA),
        .S_AXI_WREADY(S_AXI_WREADY),
        .S_AXI_WSTRB({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_WVALID(S_AXI_WVALID));
endmodule

(* ADDR_LSB = "2" *) (* C_S_AXI_ADDR_WIDTH = "4" *) (* C_S_AXI_DATA_WIDTH = "32" *) 
(* Idle = "2'b00" *) (* OPT_MEM_ADDR_BITS = "1" *) (* ORIG_REF_NAME = "myip_slave_lite_v1_0_S00_AXI" *) 
(* Raddr = "2'b10" *) (* Rdata = "2'b11" *) (* Waddr = "2'b10" *) 
(* Wdata = "2'b11" *) (* keep_hierarchy = "soft" *) 
module Zynq_axi_7seg_myip_slave_lite_v1_0_0_0_myip_slave_lite_v1_0_S00_AXI
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
    DATA);
  input S_AXI_ACLK;
  input S_AXI_ARESETN;
  input [3:0]S_AXI_AWADDR;
  input [2:0]S_AXI_AWPROT;
  input S_AXI_AWVALID;
  output S_AXI_AWREADY;
  (* mark_debug = "true" *) input [31:0]S_AXI_WDATA;
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
  (* mark_debug = "true" *) input [3:0]SW;
  (* mark_debug = "true" *) output [7:0]DATA;

  wire \<const0> ;
  (* MARK_DEBUG *) wire [7:0]DATA;
  wire \FSM_sequential_state_read[0]_i_1_n_0 ;
  wire \FSM_sequential_state_read[1]_i_1_n_0 ;
  wire \FSM_sequential_state_write[0]_i_1_n_0 ;
  wire \FSM_sequential_state_write[1]_i_1_n_0 ;
  (* MARK_DEBUG *) wire [3:0]SW;
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
  wire [3:0]\^S_AXI_RDATA ;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  (* MARK_DEBUG *) wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire S_AXI_WVALID;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready0;
  wire axi_arready_i_1_n_0;
  wire axi_awready0;
  wire axi_awready01_out;
  wire axi_awready_i_1_n_0;
  wire axi_awready_i_2_n_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  (* MARK_DEBUG *) wire [31:0]axi_wdata;
  wire \axi_wdata[31]_i_1_n_0 ;
  wire axi_wready_i_1_n_0;
  wire [31:0]p_1_in__0;
  (* MARK_DEBUG *) wire [31:0]slv_reg_led;
  wire \slv_reg_led[0]_i_1_n_0 ;
  wire \slv_reg_led[10]_i_1_n_0 ;
  wire \slv_reg_led[11]_i_1_n_0 ;
  wire \slv_reg_led[12]_i_1_n_0 ;
  wire \slv_reg_led[13]_i_1_n_0 ;
  wire \slv_reg_led[14]_i_1_n_0 ;
  wire \slv_reg_led[15]_i_1_n_0 ;
  wire \slv_reg_led[16]_i_1_n_0 ;
  wire \slv_reg_led[17]_i_1_n_0 ;
  wire \slv_reg_led[18]_i_1_n_0 ;
  wire \slv_reg_led[19]_i_1_n_0 ;
  wire \slv_reg_led[1]_i_1_n_0 ;
  wire \slv_reg_led[20]_i_1_n_0 ;
  wire \slv_reg_led[21]_i_1_n_0 ;
  wire \slv_reg_led[22]_i_1_n_0 ;
  wire \slv_reg_led[23]_i_1_n_0 ;
  wire \slv_reg_led[24]_i_1_n_0 ;
  wire \slv_reg_led[25]_i_1_n_0 ;
  wire \slv_reg_led[26]_i_1_n_0 ;
  wire \slv_reg_led[27]_i_1_n_0 ;
  wire \slv_reg_led[28]_i_1_n_0 ;
  wire \slv_reg_led[29]_i_1_n_0 ;
  wire \slv_reg_led[2]_i_1_n_0 ;
  wire \slv_reg_led[30]_i_1_n_0 ;
  wire \slv_reg_led[31]_i_2_n_0 ;
  wire \slv_reg_led[3]_i_1_n_0 ;
  wire \slv_reg_led[4]_i_1_n_0 ;
  wire \slv_reg_led[5]_i_1_n_0 ;
  wire \slv_reg_led[6]_i_1_n_0 ;
  wire \slv_reg_led[7]_i_1_n_0 ;
  wire \slv_reg_led[8]_i_1_n_0 ;
  wire \slv_reg_led[9]_i_1_n_0 ;
  wire [3:0]slv_reg_sw;
  wire [1:0]state_read;
  wire [1:0]state_write;

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
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \S_AXI_RDATA[0]_INST_0 
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(slv_reg_sw[0]),
        .O(\^S_AXI_RDATA [0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \S_AXI_RDATA[1]_INST_0 
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(slv_reg_sw[1]),
        .O(\^S_AXI_RDATA [1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \S_AXI_RDATA[2]_INST_0 
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(slv_reg_sw[2]),
        .O(\^S_AXI_RDATA [2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \S_AXI_RDATA[3]_INST_0 
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(slv_reg_sw[3]),
        .O(\^S_AXI_RDATA [3]));
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
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \axi_wdata[0]_i_1 
       (.I0(S_AXI_WDATA[0]),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_ARESETN),
        .I4(axi_wdata[0]),
        .O(p_1_in__0[0]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \axi_wdata[10]_i_1 
       (.I0(S_AXI_WDATA[10]),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_ARESETN),
        .I4(axi_wdata[10]),
        .O(p_1_in__0[10]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \axi_wdata[11]_i_1 
       (.I0(S_AXI_WDATA[11]),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_ARESETN),
        .I4(axi_wdata[11]),
        .O(p_1_in__0[11]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \axi_wdata[12]_i_1 
       (.I0(S_AXI_WDATA[12]),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_ARESETN),
        .I4(axi_wdata[12]),
        .O(p_1_in__0[12]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \axi_wdata[13]_i_1 
       (.I0(S_AXI_WDATA[13]),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_ARESETN),
        .I4(axi_wdata[13]),
        .O(p_1_in__0[13]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \axi_wdata[14]_i_1 
       (.I0(S_AXI_WDATA[14]),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_ARESETN),
        .I4(axi_wdata[14]),
        .O(p_1_in__0[14]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \axi_wdata[15]_i_1 
       (.I0(S_AXI_WDATA[15]),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_ARESETN),
        .I4(axi_wdata[15]),
        .O(p_1_in__0[15]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \axi_wdata[16]_i_1 
       (.I0(S_AXI_WDATA[16]),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_ARESETN),
        .I4(axi_wdata[16]),
        .O(p_1_in__0[16]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \axi_wdata[17]_i_1 
       (.I0(S_AXI_WDATA[17]),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_ARESETN),
        .I4(axi_wdata[17]),
        .O(p_1_in__0[17]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \axi_wdata[18]_i_1 
       (.I0(S_AXI_WDATA[18]),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_ARESETN),
        .I4(axi_wdata[18]),
        .O(p_1_in__0[18]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \axi_wdata[19]_i_1 
       (.I0(S_AXI_WDATA[19]),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_ARESETN),
        .I4(axi_wdata[19]),
        .O(p_1_in__0[19]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \axi_wdata[1]_i_1 
       (.I0(S_AXI_WDATA[1]),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_ARESETN),
        .I4(axi_wdata[1]),
        .O(p_1_in__0[1]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \axi_wdata[20]_i_1 
       (.I0(S_AXI_WDATA[20]),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_ARESETN),
        .I4(axi_wdata[20]),
        .O(p_1_in__0[20]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \axi_wdata[21]_i_1 
       (.I0(S_AXI_WDATA[21]),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_ARESETN),
        .I4(axi_wdata[21]),
        .O(p_1_in__0[21]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \axi_wdata[22]_i_1 
       (.I0(S_AXI_WDATA[22]),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_ARESETN),
        .I4(axi_wdata[22]),
        .O(p_1_in__0[22]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \axi_wdata[23]_i_1 
       (.I0(S_AXI_WDATA[23]),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_ARESETN),
        .I4(axi_wdata[23]),
        .O(p_1_in__0[23]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \axi_wdata[24]_i_1 
       (.I0(S_AXI_WDATA[24]),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_ARESETN),
        .I4(axi_wdata[24]),
        .O(p_1_in__0[24]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \axi_wdata[25]_i_1 
       (.I0(S_AXI_WDATA[25]),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_ARESETN),
        .I4(axi_wdata[25]),
        .O(p_1_in__0[25]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \axi_wdata[26]_i_1 
       (.I0(S_AXI_WDATA[26]),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_ARESETN),
        .I4(axi_wdata[26]),
        .O(p_1_in__0[26]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \axi_wdata[27]_i_1 
       (.I0(S_AXI_WDATA[27]),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_ARESETN),
        .I4(axi_wdata[27]),
        .O(p_1_in__0[27]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \axi_wdata[28]_i_1 
       (.I0(S_AXI_WDATA[28]),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_ARESETN),
        .I4(axi_wdata[28]),
        .O(p_1_in__0[28]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \axi_wdata[29]_i_1 
       (.I0(S_AXI_WDATA[29]),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_ARESETN),
        .I4(axi_wdata[29]),
        .O(p_1_in__0[29]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \axi_wdata[2]_i_1 
       (.I0(S_AXI_WDATA[2]),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_ARESETN),
        .I4(axi_wdata[2]),
        .O(p_1_in__0[2]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \axi_wdata[30]_i_1 
       (.I0(S_AXI_WDATA[30]),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_ARESETN),
        .I4(axi_wdata[30]),
        .O(p_1_in__0[30]));
  LUT3 #(
    .INIT(8'h4F)) 
    \axi_wdata[31]_i_1 
       (.I0(state_write[0]),
        .I1(state_write[1]),
        .I2(S_AXI_ARESETN),
        .O(\axi_wdata[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \axi_wdata[31]_i_2 
       (.I0(S_AXI_WDATA[31]),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_ARESETN),
        .I4(axi_wdata[31]),
        .O(p_1_in__0[31]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \axi_wdata[3]_i_1 
       (.I0(S_AXI_WDATA[3]),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_ARESETN),
        .I4(axi_wdata[3]),
        .O(p_1_in__0[3]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \axi_wdata[4]_i_1 
       (.I0(S_AXI_WDATA[4]),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_ARESETN),
        .I4(axi_wdata[4]),
        .O(p_1_in__0[4]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \axi_wdata[5]_i_1 
       (.I0(S_AXI_WDATA[5]),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_ARESETN),
        .I4(axi_wdata[5]),
        .O(p_1_in__0[5]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \axi_wdata[6]_i_1 
       (.I0(S_AXI_WDATA[6]),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_ARESETN),
        .I4(axi_wdata[6]),
        .O(p_1_in__0[6]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \axi_wdata[7]_i_1 
       (.I0(S_AXI_WDATA[7]),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_ARESETN),
        .I4(axi_wdata[7]),
        .O(p_1_in__0[7]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \axi_wdata[8]_i_1 
       (.I0(S_AXI_WDATA[8]),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_ARESETN),
        .I4(axi_wdata[8]),
        .O(p_1_in__0[8]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \axi_wdata[9]_i_1 
       (.I0(S_AXI_WDATA[9]),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_ARESETN),
        .I4(axi_wdata[9]),
        .O(p_1_in__0[9]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \axi_wdata_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(p_1_in__0[0]),
        .Q(axi_wdata[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \axi_wdata_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(p_1_in__0[10]),
        .Q(axi_wdata[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \axi_wdata_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(p_1_in__0[11]),
        .Q(axi_wdata[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \axi_wdata_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(p_1_in__0[12]),
        .Q(axi_wdata[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \axi_wdata_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(p_1_in__0[13]),
        .Q(axi_wdata[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \axi_wdata_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(p_1_in__0[14]),
        .Q(axi_wdata[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \axi_wdata_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(p_1_in__0[15]),
        .Q(axi_wdata[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \axi_wdata_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(p_1_in__0[16]),
        .Q(axi_wdata[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \axi_wdata_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(p_1_in__0[17]),
        .Q(axi_wdata[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \axi_wdata_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(p_1_in__0[18]),
        .Q(axi_wdata[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \axi_wdata_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(p_1_in__0[19]),
        .Q(axi_wdata[19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \axi_wdata_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(p_1_in__0[1]),
        .Q(axi_wdata[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \axi_wdata_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(p_1_in__0[20]),
        .Q(axi_wdata[20]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \axi_wdata_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(p_1_in__0[21]),
        .Q(axi_wdata[21]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \axi_wdata_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(p_1_in__0[22]),
        .Q(axi_wdata[22]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \axi_wdata_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(p_1_in__0[23]),
        .Q(axi_wdata[23]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \axi_wdata_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(p_1_in__0[24]),
        .Q(axi_wdata[24]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \axi_wdata_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(p_1_in__0[25]),
        .Q(axi_wdata[25]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \axi_wdata_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(p_1_in__0[26]),
        .Q(axi_wdata[26]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \axi_wdata_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(p_1_in__0[27]),
        .Q(axi_wdata[27]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \axi_wdata_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(p_1_in__0[28]),
        .Q(axi_wdata[28]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \axi_wdata_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(p_1_in__0[29]),
        .Q(axi_wdata[29]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \axi_wdata_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(p_1_in__0[2]),
        .Q(axi_wdata[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \axi_wdata_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(p_1_in__0[30]),
        .Q(axi_wdata[30]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \axi_wdata_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(p_1_in__0[31]),
        .Q(axi_wdata[31]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \axi_wdata_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(p_1_in__0[3]),
        .Q(axi_wdata[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \axi_wdata_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(p_1_in__0[4]),
        .Q(axi_wdata[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \axi_wdata_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(p_1_in__0[5]),
        .Q(axi_wdata[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \axi_wdata_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(p_1_in__0[6]),
        .Q(axi_wdata[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \axi_wdata_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(p_1_in__0[7]),
        .Q(axi_wdata[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \axi_wdata_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(p_1_in__0[8]),
        .Q(axi_wdata[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \axi_wdata_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(p_1_in__0[9]),
        .Q(axi_wdata[9]),
        .R(1'b0));
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
  LUT4 #(
    .INIT(16'hFE02)) 
    \slv_reg_led[0]_i_1 
       (.I0(axi_wdata[0]),
        .I1(S_AXI_AWADDR[2]),
        .I2(S_AXI_AWADDR[3]),
        .I3(DATA[0]),
        .O(\slv_reg_led[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \slv_reg_led[10]_i_1 
       (.I0(axi_wdata[10]),
        .I1(S_AXI_AWADDR[2]),
        .I2(S_AXI_AWADDR[3]),
        .I3(slv_reg_led[10]),
        .O(\slv_reg_led[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \slv_reg_led[11]_i_1 
       (.I0(axi_wdata[11]),
        .I1(S_AXI_AWADDR[2]),
        .I2(S_AXI_AWADDR[3]),
        .I3(slv_reg_led[11]),
        .O(\slv_reg_led[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \slv_reg_led[12]_i_1 
       (.I0(axi_wdata[12]),
        .I1(S_AXI_AWADDR[2]),
        .I2(S_AXI_AWADDR[3]),
        .I3(slv_reg_led[12]),
        .O(\slv_reg_led[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \slv_reg_led[13]_i_1 
       (.I0(axi_wdata[13]),
        .I1(S_AXI_AWADDR[2]),
        .I2(S_AXI_AWADDR[3]),
        .I3(slv_reg_led[13]),
        .O(\slv_reg_led[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \slv_reg_led[14]_i_1 
       (.I0(axi_wdata[14]),
        .I1(S_AXI_AWADDR[2]),
        .I2(S_AXI_AWADDR[3]),
        .I3(slv_reg_led[14]),
        .O(\slv_reg_led[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \slv_reg_led[15]_i_1 
       (.I0(axi_wdata[15]),
        .I1(S_AXI_AWADDR[2]),
        .I2(S_AXI_AWADDR[3]),
        .I3(slv_reg_led[15]),
        .O(\slv_reg_led[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \slv_reg_led[16]_i_1 
       (.I0(axi_wdata[16]),
        .I1(S_AXI_AWADDR[2]),
        .I2(S_AXI_AWADDR[3]),
        .I3(slv_reg_led[16]),
        .O(\slv_reg_led[16]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \slv_reg_led[17]_i_1 
       (.I0(axi_wdata[17]),
        .I1(S_AXI_AWADDR[2]),
        .I2(S_AXI_AWADDR[3]),
        .I3(slv_reg_led[17]),
        .O(\slv_reg_led[17]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \slv_reg_led[18]_i_1 
       (.I0(axi_wdata[18]),
        .I1(S_AXI_AWADDR[2]),
        .I2(S_AXI_AWADDR[3]),
        .I3(slv_reg_led[18]),
        .O(\slv_reg_led[18]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \slv_reg_led[19]_i_1 
       (.I0(axi_wdata[19]),
        .I1(S_AXI_AWADDR[2]),
        .I2(S_AXI_AWADDR[3]),
        .I3(slv_reg_led[19]),
        .O(\slv_reg_led[19]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \slv_reg_led[1]_i_1 
       (.I0(axi_wdata[1]),
        .I1(S_AXI_AWADDR[2]),
        .I2(S_AXI_AWADDR[3]),
        .I3(DATA[1]),
        .O(\slv_reg_led[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \slv_reg_led[20]_i_1 
       (.I0(axi_wdata[20]),
        .I1(S_AXI_AWADDR[2]),
        .I2(S_AXI_AWADDR[3]),
        .I3(slv_reg_led[20]),
        .O(\slv_reg_led[20]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \slv_reg_led[21]_i_1 
       (.I0(axi_wdata[21]),
        .I1(S_AXI_AWADDR[2]),
        .I2(S_AXI_AWADDR[3]),
        .I3(slv_reg_led[21]),
        .O(\slv_reg_led[21]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \slv_reg_led[22]_i_1 
       (.I0(axi_wdata[22]),
        .I1(S_AXI_AWADDR[2]),
        .I2(S_AXI_AWADDR[3]),
        .I3(slv_reg_led[22]),
        .O(\slv_reg_led[22]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \slv_reg_led[23]_i_1 
       (.I0(axi_wdata[23]),
        .I1(S_AXI_AWADDR[2]),
        .I2(S_AXI_AWADDR[3]),
        .I3(slv_reg_led[23]),
        .O(\slv_reg_led[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \slv_reg_led[24]_i_1 
       (.I0(axi_wdata[24]),
        .I1(S_AXI_AWADDR[2]),
        .I2(S_AXI_AWADDR[3]),
        .I3(slv_reg_led[24]),
        .O(\slv_reg_led[24]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \slv_reg_led[25]_i_1 
       (.I0(axi_wdata[25]),
        .I1(S_AXI_AWADDR[2]),
        .I2(S_AXI_AWADDR[3]),
        .I3(slv_reg_led[25]),
        .O(\slv_reg_led[25]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \slv_reg_led[26]_i_1 
       (.I0(axi_wdata[26]),
        .I1(S_AXI_AWADDR[2]),
        .I2(S_AXI_AWADDR[3]),
        .I3(slv_reg_led[26]),
        .O(\slv_reg_led[26]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \slv_reg_led[27]_i_1 
       (.I0(axi_wdata[27]),
        .I1(S_AXI_AWADDR[2]),
        .I2(S_AXI_AWADDR[3]),
        .I3(slv_reg_led[27]),
        .O(\slv_reg_led[27]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \slv_reg_led[28]_i_1 
       (.I0(axi_wdata[28]),
        .I1(S_AXI_AWADDR[2]),
        .I2(S_AXI_AWADDR[3]),
        .I3(slv_reg_led[28]),
        .O(\slv_reg_led[28]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \slv_reg_led[29]_i_1 
       (.I0(axi_wdata[29]),
        .I1(S_AXI_AWADDR[2]),
        .I2(S_AXI_AWADDR[3]),
        .I3(slv_reg_led[29]),
        .O(\slv_reg_led[29]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \slv_reg_led[2]_i_1 
       (.I0(axi_wdata[2]),
        .I1(S_AXI_AWADDR[2]),
        .I2(S_AXI_AWADDR[3]),
        .I3(DATA[2]),
        .O(\slv_reg_led[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \slv_reg_led[30]_i_1 
       (.I0(axi_wdata[30]),
        .I1(S_AXI_AWADDR[2]),
        .I2(S_AXI_AWADDR[3]),
        .I3(slv_reg_led[30]),
        .O(\slv_reg_led[30]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg_led[31]_i_1 
       (.I0(S_AXI_WVALID),
        .I1(S_AXI_WREADY),
        .O(axi_awready01_out));
  LUT4 #(
    .INIT(16'hFE02)) 
    \slv_reg_led[31]_i_2 
       (.I0(axi_wdata[31]),
        .I1(S_AXI_AWADDR[2]),
        .I2(S_AXI_AWADDR[3]),
        .I3(slv_reg_led[31]),
        .O(\slv_reg_led[31]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \slv_reg_led[3]_i_1 
       (.I0(axi_wdata[3]),
        .I1(S_AXI_AWADDR[2]),
        .I2(S_AXI_AWADDR[3]),
        .I3(DATA[3]),
        .O(\slv_reg_led[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \slv_reg_led[4]_i_1 
       (.I0(axi_wdata[4]),
        .I1(S_AXI_AWADDR[2]),
        .I2(S_AXI_AWADDR[3]),
        .I3(DATA[4]),
        .O(\slv_reg_led[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \slv_reg_led[5]_i_1 
       (.I0(axi_wdata[5]),
        .I1(S_AXI_AWADDR[2]),
        .I2(S_AXI_AWADDR[3]),
        .I3(DATA[5]),
        .O(\slv_reg_led[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \slv_reg_led[6]_i_1 
       (.I0(axi_wdata[6]),
        .I1(S_AXI_AWADDR[2]),
        .I2(S_AXI_AWADDR[3]),
        .I3(DATA[6]),
        .O(\slv_reg_led[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \slv_reg_led[7]_i_1 
       (.I0(axi_wdata[7]),
        .I1(S_AXI_AWADDR[2]),
        .I2(S_AXI_AWADDR[3]),
        .I3(DATA[7]),
        .O(\slv_reg_led[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \slv_reg_led[8]_i_1 
       (.I0(axi_wdata[8]),
        .I1(S_AXI_AWADDR[2]),
        .I2(S_AXI_AWADDR[3]),
        .I3(slv_reg_led[8]),
        .O(\slv_reg_led[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \slv_reg_led[9]_i_1 
       (.I0(axi_wdata[9]),
        .I1(S_AXI_AWADDR[2]),
        .I2(S_AXI_AWADDR[3]),
        .I3(slv_reg_led[9]),
        .O(\slv_reg_led[9]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    slv_reg_led_inst
       (.I0(slv_reg_led[7]),
        .O(DATA[7]));
  LUT1 #(
    .INIT(2'h2)) 
    slv_reg_led_inst__0
       (.I0(slv_reg_led[6]),
        .O(DATA[6]));
  LUT1 #(
    .INIT(2'h2)) 
    slv_reg_led_inst__1
       (.I0(slv_reg_led[5]),
        .O(DATA[5]));
  LUT1 #(
    .INIT(2'h2)) 
    slv_reg_led_inst__2
       (.I0(slv_reg_led[4]),
        .O(DATA[4]));
  LUT1 #(
    .INIT(2'h2)) 
    slv_reg_led_inst__3
       (.I0(slv_reg_led[3]),
        .O(DATA[3]));
  LUT1 #(
    .INIT(2'h2)) 
    slv_reg_led_inst__4
       (.I0(slv_reg_led[2]),
        .O(DATA[2]));
  LUT1 #(
    .INIT(2'h2)) 
    slv_reg_led_inst__5
       (.I0(slv_reg_led[1]),
        .O(DATA[1]));
  LUT1 #(
    .INIT(2'h2)) 
    slv_reg_led_inst__6
       (.I0(slv_reg_led[0]),
        .O(DATA[0]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg_led_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready01_out),
        .D(\slv_reg_led[0]_i_1_n_0 ),
        .Q(slv_reg_led[0]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg_led_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready01_out),
        .D(\slv_reg_led[10]_i_1_n_0 ),
        .Q(slv_reg_led[10]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg_led_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready01_out),
        .D(\slv_reg_led[11]_i_1_n_0 ),
        .Q(slv_reg_led[11]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg_led_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready01_out),
        .D(\slv_reg_led[12]_i_1_n_0 ),
        .Q(slv_reg_led[12]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg_led_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready01_out),
        .D(\slv_reg_led[13]_i_1_n_0 ),
        .Q(slv_reg_led[13]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg_led_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready01_out),
        .D(\slv_reg_led[14]_i_1_n_0 ),
        .Q(slv_reg_led[14]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg_led_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready01_out),
        .D(\slv_reg_led[15]_i_1_n_0 ),
        .Q(slv_reg_led[15]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg_led_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready01_out),
        .D(\slv_reg_led[16]_i_1_n_0 ),
        .Q(slv_reg_led[16]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg_led_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready01_out),
        .D(\slv_reg_led[17]_i_1_n_0 ),
        .Q(slv_reg_led[17]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg_led_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready01_out),
        .D(\slv_reg_led[18]_i_1_n_0 ),
        .Q(slv_reg_led[18]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg_led_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready01_out),
        .D(\slv_reg_led[19]_i_1_n_0 ),
        .Q(slv_reg_led[19]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg_led_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready01_out),
        .D(\slv_reg_led[1]_i_1_n_0 ),
        .Q(slv_reg_led[1]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg_led_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready01_out),
        .D(\slv_reg_led[20]_i_1_n_0 ),
        .Q(slv_reg_led[20]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg_led_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready01_out),
        .D(\slv_reg_led[21]_i_1_n_0 ),
        .Q(slv_reg_led[21]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg_led_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready01_out),
        .D(\slv_reg_led[22]_i_1_n_0 ),
        .Q(slv_reg_led[22]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg_led_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready01_out),
        .D(\slv_reg_led[23]_i_1_n_0 ),
        .Q(slv_reg_led[23]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg_led_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready01_out),
        .D(\slv_reg_led[24]_i_1_n_0 ),
        .Q(slv_reg_led[24]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg_led_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready01_out),
        .D(\slv_reg_led[25]_i_1_n_0 ),
        .Q(slv_reg_led[25]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg_led_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready01_out),
        .D(\slv_reg_led[26]_i_1_n_0 ),
        .Q(slv_reg_led[26]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg_led_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready01_out),
        .D(\slv_reg_led[27]_i_1_n_0 ),
        .Q(slv_reg_led[27]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg_led_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready01_out),
        .D(\slv_reg_led[28]_i_1_n_0 ),
        .Q(slv_reg_led[28]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg_led_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready01_out),
        .D(\slv_reg_led[29]_i_1_n_0 ),
        .Q(slv_reg_led[29]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg_led_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready01_out),
        .D(\slv_reg_led[2]_i_1_n_0 ),
        .Q(slv_reg_led[2]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg_led_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready01_out),
        .D(\slv_reg_led[30]_i_1_n_0 ),
        .Q(slv_reg_led[30]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg_led_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready01_out),
        .D(\slv_reg_led[31]_i_2_n_0 ),
        .Q(slv_reg_led[31]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg_led_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready01_out),
        .D(\slv_reg_led[3]_i_1_n_0 ),
        .Q(slv_reg_led[3]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg_led_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready01_out),
        .D(\slv_reg_led[4]_i_1_n_0 ),
        .Q(slv_reg_led[4]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg_led_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready01_out),
        .D(\slv_reg_led[5]_i_1_n_0 ),
        .Q(slv_reg_led[5]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg_led_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready01_out),
        .D(\slv_reg_led[6]_i_1_n_0 ),
        .Q(slv_reg_led[6]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg_led_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready01_out),
        .D(\slv_reg_led[7]_i_1_n_0 ),
        .Q(slv_reg_led[7]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg_led_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready01_out),
        .D(\slv_reg_led[8]_i_1_n_0 ),
        .Q(slv_reg_led[8]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg_led_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready01_out),
        .D(\slv_reg_led[9]_i_1_n_0 ),
        .Q(slv_reg_led[9]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_sw_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(SW[0]),
        .Q(slv_reg_sw[0]),
        .R(1'b0));
  FDRE \slv_reg_sw_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(SW[1]),
        .Q(slv_reg_sw[1]),
        .R(1'b0));
  FDRE \slv_reg_sw_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(SW[2]),
        .Q(slv_reg_sw[2]),
        .R(1'b0));
  FDRE \slv_reg_sw_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(SW[3]),
        .Q(slv_reg_sw[3]),
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
