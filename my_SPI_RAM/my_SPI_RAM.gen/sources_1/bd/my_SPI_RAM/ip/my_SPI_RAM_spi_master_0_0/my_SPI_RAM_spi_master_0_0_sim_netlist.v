// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Mon Feb  3 16:01:47 2025
// Host        : COMSYS01 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Verilog-lab/my_SPI_RAM/my_SPI_RAM.gen/sources_1/bd/my_SPI_RAM/ip/my_SPI_RAM_spi_master_0_0/my_SPI_RAM_spi_master_0_0_sim_netlist.v
// Design      : my_SPI_RAM_spi_master_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "my_SPI_RAM_spi_master_0_0,spi_master,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "spi_master,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module my_SPI_RAM_spi_master_0_0
   (RST,
    CLK,
    CMD,
    ADDR,
    WR_DATA,
    RD_DATA,
    CSN,
    SCLK,
    MOSI,
    MISO);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input RST;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK, ASSOCIATED_RESET RST, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN my_SPI_RAM_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input CLK;
  input [1:0]CMD;
  input [6:0]ADDR;
  input [7:0]WR_DATA;
  output [7:0]RD_DATA;
  output CSN;
  output SCLK;
  output MOSI;
  input MISO;

  wire [6:0]ADDR;
  wire CLK;
  wire [1:0]CMD;
  wire CSN;
  wire MISO;
  wire MOSI;
  wire [7:0]RD_DATA;
  wire RST;
  wire SCLK;
  wire [7:0]WR_DATA;

  (* KEEP_HIERARCHY = "soft" *) 
  my_SPI_RAM_spi_master_0_0_spi_master inst
       (.ADDR(ADDR),
        .CLK(CLK),
        .CMD(CMD),
        .CSN(CSN),
        .MISO(MISO),
        .MOSI(MOSI),
        .RD_DATA(RD_DATA),
        .RST(RST),
        .SCLK(SCLK),
        .WR_DATA(WR_DATA));
endmodule

(* ORIG_REF_NAME = "spi_master" *) (* keep_hierarchy = "soft" *) 
module my_SPI_RAM_spi_master_0_0_spi_master
   (RST,
    CLK,
    CMD,
    ADDR,
    WR_DATA,
    RD_DATA,
    CSN,
    SCLK,
    MOSI,
    MISO);
  input RST;
  input CLK;
  (* mark_debug = "true" *) input [1:0]CMD;
  (* mark_debug = "true" *) input [6:0]ADDR;
  (* mark_debug = "true" *) input [7:0]WR_DATA;
  (* mark_debug = "true" *) output [7:0]RD_DATA;
  (* mark_debug = "true" *) output CSN;
  (* mark_debug = "true" *) output SCLK;
  (* mark_debug = "true" *) output MOSI;
  (* mark_debug = "true" *) input MISO;

  (* MARK_DEBUG *) wire [6:0]ADDR;
  wire CLK;
  (* MARK_DEBUG *) wire [1:0]CMD;
  (* MARK_DEBUG *) wire CSN;
  wire CSN_i_1_n_0;
  (* MARK_DEBUG *) wire MISO;
  (* MARK_DEBUG *) wire MOSI;
  (* MARK_DEBUG *) wire [7:0]RD_DATA;
  wire RST;
  (* MARK_DEBUG *) wire SCLK;
  wire SCLK_i_1_n_0;
  (* MARK_DEBUG *) wire [7:0]WR_DATA;
  wire clear;
  (* MARK_DEBUG *) wire [4:0]csn_rd_cnt;
  wire \csn_rd_cnt[4]_i_1_n_0 ;
  wire [4:0]csn_rd_cnt__0;
  (* MARK_DEBUG *) wire csn_rd_enable;
  wire csn_rd_enable__0;
  wire csn_rd_enable_i_1_n_0;
  (* MARK_DEBUG *) wire [4:0]csn_wr_cnt;
  wire csn_wr_cnt1;
  wire [4:0]csn_wr_cnt__0;
  (* MARK_DEBUG *) wire csn_wr_enable;
  wire csn_wr_enable__0;
  wire csn_wr_enable_i_1_n_0;
  (* MARK_DEBUG *) wire [7:0]miso_data;
  wire miso_data1;
  (* MARK_DEBUG *) wire [15:0]mosi_data;
  wire mosi_data1;
  wire \mosi_data[14]_i_2_n_0 ;
  wire \mosi_data[15]_i_1_n_0 ;
  wire \mosi_data[15]_i_2_n_0 ;
  wire \mosi_data[1]_i_1_n_0 ;
  wire \mosi_data[2]_i_1_n_0 ;
  wire \mosi_data[3]_i_1_n_0 ;
  wire \mosi_data[4]_i_1_n_0 ;
  wire \mosi_data[5]_i_1_n_0 ;
  wire \mosi_data[6]_i_1_n_0 ;
  wire \mosi_data[7]_i_1_n_0 ;
  wire [14:0]p_0_in__0;
  wire [3:1]p_0_in__1;
  wire rd_cmd_1D;
  wire rd_cmd_2D;
  (* MARK_DEBUG *) wire [4:0]rd_cnt;
  wire \rd_cnt[4]_i_1_n_0 ;
  wire [4:0]rd_cnt__0;
  (* MARK_DEBUG *) wire rd_done;
  wire rd_done_i_1_n_0;
  wire sclk_1D;
  wire sclk_2D;
  wire \sclk_cnt[0]_i_1_n_0 ;
  wire [3:0]sclk_cnt_reg;
  wire wr_cmd_1D;
  wire wr_cmd_2D;

  LUT2 #(
    .INIT(4'h1)) 
    CSN_i_1
       (.I0(csn_wr_enable),
        .I1(csn_rd_enable),
        .O(CSN_i_1_n_0));
  (* KEEP = "yes" *) 
  FDSE CSN_reg
       (.C(CLK),
        .CE(1'b1),
        .D(CSN_i_1_n_0),
        .Q(CSN),
        .S(clear));
  LUT2 #(
    .INIT(4'h8)) 
    RD_DATA_inferred_i_1
       (.I0(rd_done),
        .I1(miso_data[7]),
        .O(RD_DATA[7]));
  LUT2 #(
    .INIT(4'h8)) 
    RD_DATA_inferred_i_2
       (.I0(rd_done),
        .I1(miso_data[6]),
        .O(RD_DATA[6]));
  LUT2 #(
    .INIT(4'h8)) 
    RD_DATA_inferred_i_3
       (.I0(rd_done),
        .I1(miso_data[5]),
        .O(RD_DATA[5]));
  LUT2 #(
    .INIT(4'h8)) 
    RD_DATA_inferred_i_4
       (.I0(rd_done),
        .I1(miso_data[4]),
        .O(RD_DATA[4]));
  LUT2 #(
    .INIT(4'h8)) 
    RD_DATA_inferred_i_5
       (.I0(rd_done),
        .I1(miso_data[3]),
        .O(RD_DATA[3]));
  LUT2 #(
    .INIT(4'h8)) 
    RD_DATA_inferred_i_6
       (.I0(rd_done),
        .I1(miso_data[2]),
        .O(RD_DATA[2]));
  LUT2 #(
    .INIT(4'h8)) 
    RD_DATA_inferred_i_7
       (.I0(rd_done),
        .I1(miso_data[1]),
        .O(RD_DATA[1]));
  LUT2 #(
    .INIT(4'h8)) 
    RD_DATA_inferred_i_8
       (.I0(rd_done),
        .I1(miso_data[0]),
        .O(RD_DATA[0]));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    SCLK_i_1
       (.I0(sclk_cnt_reg[2]),
        .I1(sclk_cnt_reg[3]),
        .I2(sclk_cnt_reg[0]),
        .I3(sclk_cnt_reg[1]),
        .I4(RST),
        .I5(CSN),
        .O(SCLK_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE SCLK_reg
       (.C(CLK),
        .CE(1'b1),
        .D(SCLK_i_1_n_0),
        .Q(SCLK),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h9A)) 
    \csn_rd_cnt[0]_i_1 
       (.I0(csn_rd_cnt[0]),
        .I1(sclk_2D),
        .I2(sclk_1D),
        .O(csn_rd_cnt__0[0]));
  LUT4 #(
    .INIT(16'hF708)) 
    \csn_rd_cnt[1]_i_1 
       (.I0(csn_rd_cnt[0]),
        .I1(sclk_1D),
        .I2(sclk_2D),
        .I3(csn_rd_cnt[1]),
        .O(csn_rd_cnt__0[1]));
  LUT5 #(
    .INIT(32'hBFFF4000)) 
    \csn_rd_cnt[2]_i_1 
       (.I0(sclk_2D),
        .I1(sclk_1D),
        .I2(csn_rd_cnt[0]),
        .I3(csn_rd_cnt[1]),
        .I4(csn_rd_cnt[2]),
        .O(csn_rd_cnt__0[2]));
  LUT6 #(
    .INIT(64'hFF7FFFFF00800000)) 
    \csn_rd_cnt[3]_i_1 
       (.I0(csn_rd_cnt[1]),
        .I1(csn_rd_cnt[0]),
        .I2(sclk_1D),
        .I3(sclk_2D),
        .I4(csn_rd_cnt[2]),
        .I5(csn_rd_cnt[3]),
        .O(csn_rd_cnt__0[3]));
  LUT2 #(
    .INIT(4'hB)) 
    \csn_rd_cnt[4]_i_1 
       (.I0(CSN),
        .I1(RST),
        .O(\csn_rd_cnt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \csn_rd_cnt[4]_i_2 
       (.I0(csn_rd_cnt[2]),
        .I1(csn_wr_cnt1),
        .I2(csn_rd_cnt[0]),
        .I3(csn_rd_cnt[1]),
        .I4(csn_rd_cnt[3]),
        .I5(csn_rd_cnt[4]),
        .O(csn_rd_cnt__0[4]));
  LUT2 #(
    .INIT(4'h2)) 
    \csn_rd_cnt[4]_i_3 
       (.I0(sclk_1D),
        .I1(sclk_2D),
        .O(csn_wr_cnt1));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \csn_rd_cnt_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(csn_rd_cnt__0[0]),
        .Q(csn_rd_cnt[0]),
        .R(\csn_rd_cnt[4]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \csn_rd_cnt_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(csn_rd_cnt__0[1]),
        .Q(csn_rd_cnt[1]),
        .R(\csn_rd_cnt[4]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \csn_rd_cnt_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(csn_rd_cnt__0[2]),
        .Q(csn_rd_cnt[2]),
        .R(\csn_rd_cnt[4]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \csn_rd_cnt_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(csn_rd_cnt__0[3]),
        .Q(csn_rd_cnt[3]),
        .R(\csn_rd_cnt[4]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \csn_rd_cnt_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(csn_rd_cnt__0[4]),
        .Q(csn_rd_cnt[4]),
        .R(\csn_rd_cnt[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00F2)) 
    csn_rd_enable_i_1
       (.I0(rd_cmd_1D),
        .I1(rd_cmd_2D),
        .I2(csn_rd_enable),
        .I3(csn_rd_enable__0),
        .O(csn_rd_enable_i_1_n_0));
  LUT6 #(
    .INIT(64'h02000000FFFFFFFF)) 
    csn_rd_enable_i_2
       (.I0(csn_rd_cnt[4]),
        .I1(csn_rd_cnt[3]),
        .I2(csn_rd_cnt[2]),
        .I3(csn_rd_cnt[1]),
        .I4(csn_rd_cnt[0]),
        .I5(RST),
        .O(csn_rd_enable__0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    csn_rd_enable_reg
       (.C(CLK),
        .CE(1'b1),
        .D(csn_rd_enable_i_1_n_0),
        .Q(csn_rd_enable),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h9A)) 
    \csn_wr_cnt[0]_i_1 
       (.I0(csn_wr_cnt[0]),
        .I1(sclk_2D),
        .I2(sclk_1D),
        .O(csn_wr_cnt__0[0]));
  LUT4 #(
    .INIT(16'hF708)) 
    \csn_wr_cnt[1]_i_1 
       (.I0(csn_wr_cnt[0]),
        .I1(sclk_1D),
        .I2(sclk_2D),
        .I3(csn_wr_cnt[1]),
        .O(csn_wr_cnt__0[1]));
  LUT5 #(
    .INIT(32'hBFFF4000)) 
    \csn_wr_cnt[2]_i_1 
       (.I0(sclk_2D),
        .I1(sclk_1D),
        .I2(csn_wr_cnt[0]),
        .I3(csn_wr_cnt[1]),
        .I4(csn_wr_cnt[2]),
        .O(csn_wr_cnt__0[2]));
  LUT6 #(
    .INIT(64'hFF7FFFFF00800000)) 
    \csn_wr_cnt[3]_i_1 
       (.I0(csn_wr_cnt[1]),
        .I1(csn_wr_cnt[0]),
        .I2(sclk_1D),
        .I3(sclk_2D),
        .I4(csn_wr_cnt[2]),
        .I5(csn_wr_cnt[3]),
        .O(csn_wr_cnt__0[3]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \csn_wr_cnt[4]_i_1 
       (.I0(csn_wr_cnt[2]),
        .I1(csn_wr_cnt1),
        .I2(csn_wr_cnt[0]),
        .I3(csn_wr_cnt[1]),
        .I4(csn_wr_cnt[3]),
        .I5(csn_wr_cnt[4]),
        .O(csn_wr_cnt__0[4]));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \csn_wr_cnt_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(csn_wr_cnt__0[0]),
        .Q(csn_wr_cnt[0]),
        .R(\csn_rd_cnt[4]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \csn_wr_cnt_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(csn_wr_cnt__0[1]),
        .Q(csn_wr_cnt[1]),
        .R(\csn_rd_cnt[4]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \csn_wr_cnt_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(csn_wr_cnt__0[2]),
        .Q(csn_wr_cnt[2]),
        .R(\csn_rd_cnt[4]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \csn_wr_cnt_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(csn_wr_cnt__0[3]),
        .Q(csn_wr_cnt[3]),
        .R(\csn_rd_cnt[4]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \csn_wr_cnt_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(csn_wr_cnt__0[4]),
        .Q(csn_wr_cnt[4]),
        .R(\csn_rd_cnt[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00F2)) 
    csn_wr_enable_i_1
       (.I0(wr_cmd_1D),
        .I1(wr_cmd_2D),
        .I2(csn_wr_enable),
        .I3(csn_wr_enable__0),
        .O(csn_wr_enable_i_1_n_0));
  LUT6 #(
    .INIT(64'h02000000FFFFFFFF)) 
    csn_wr_enable_i_2
       (.I0(csn_wr_cnt[4]),
        .I1(csn_wr_cnt[3]),
        .I2(csn_wr_cnt[2]),
        .I3(csn_wr_cnt[1]),
        .I4(csn_wr_cnt[0]),
        .I5(RST),
        .O(csn_wr_enable__0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    csn_wr_enable_reg
       (.C(CLK),
        .CE(1'b1),
        .D(csn_wr_enable_i_1_n_0),
        .Q(csn_wr_enable),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h4442)) 
    \miso_data[7]_i_1 
       (.I0(rd_cnt[4]),
        .I1(rd_cnt[3]),
        .I2(rd_cnt[1]),
        .I3(rd_cnt[2]),
        .O(miso_data1));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \miso_data_reg[0] 
       (.C(SCLK),
        .CE(miso_data1),
        .D(miso_data[1]),
        .Q(miso_data[0]),
        .R(\csn_rd_cnt[4]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \miso_data_reg[1] 
       (.C(SCLK),
        .CE(miso_data1),
        .D(miso_data[2]),
        .Q(miso_data[1]),
        .R(\csn_rd_cnt[4]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \miso_data_reg[2] 
       (.C(SCLK),
        .CE(miso_data1),
        .D(miso_data[3]),
        .Q(miso_data[2]),
        .R(\csn_rd_cnt[4]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \miso_data_reg[3] 
       (.C(SCLK),
        .CE(miso_data1),
        .D(miso_data[4]),
        .Q(miso_data[3]),
        .R(\csn_rd_cnt[4]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \miso_data_reg[4] 
       (.C(SCLK),
        .CE(miso_data1),
        .D(miso_data[5]),
        .Q(miso_data[4]),
        .R(\csn_rd_cnt[4]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \miso_data_reg[5] 
       (.C(SCLK),
        .CE(miso_data1),
        .D(miso_data[6]),
        .Q(miso_data[5]),
        .R(\csn_rd_cnt[4]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \miso_data_reg[6] 
       (.C(SCLK),
        .CE(miso_data1),
        .D(miso_data[7]),
        .Q(miso_data[6]),
        .R(\csn_rd_cnt[4]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \miso_data_reg[7] 
       (.C(SCLK),
        .CE(miso_data1),
        .D(MISO),
        .Q(miso_data[7]),
        .R(\csn_rd_cnt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0C0008080C000C00)) 
    \mosi_data[0]_i_1 
       (.I0(WR_DATA[0]),
        .I1(RST),
        .I2(mosi_data1),
        .I3(mosi_data[0]),
        .I4(wr_cmd_2D),
        .I5(wr_cmd_1D),
        .O(p_0_in__0[0]));
  LUT6 #(
    .INIT(64'hAAAA0000CFC00000)) 
    \mosi_data[10]_i_1 
       (.I0(mosi_data[9]),
        .I1(ADDR[2]),
        .I2(\mosi_data[14]_i_2_n_0 ),
        .I3(mosi_data[10]),
        .I4(RST),
        .I5(mosi_data1),
        .O(p_0_in__0[10]));
  LUT6 #(
    .INIT(64'hAAAA0000CFC00000)) 
    \mosi_data[11]_i_1 
       (.I0(mosi_data[10]),
        .I1(ADDR[3]),
        .I2(\mosi_data[14]_i_2_n_0 ),
        .I3(mosi_data[11]),
        .I4(RST),
        .I5(mosi_data1),
        .O(p_0_in__0[11]));
  LUT6 #(
    .INIT(64'hAAAA0000CFC00000)) 
    \mosi_data[12]_i_1 
       (.I0(mosi_data[11]),
        .I1(ADDR[4]),
        .I2(\mosi_data[14]_i_2_n_0 ),
        .I3(mosi_data[12]),
        .I4(RST),
        .I5(mosi_data1),
        .O(p_0_in__0[12]));
  LUT6 #(
    .INIT(64'hAAAA0000CFC00000)) 
    \mosi_data[13]_i_1 
       (.I0(mosi_data[12]),
        .I1(ADDR[5]),
        .I2(\mosi_data[14]_i_2_n_0 ),
        .I3(mosi_data[13]),
        .I4(RST),
        .I5(mosi_data1),
        .O(p_0_in__0[13]));
  LUT6 #(
    .INIT(64'hAAAA0000CFC00000)) 
    \mosi_data[14]_i_1 
       (.I0(mosi_data[13]),
        .I1(ADDR[6]),
        .I2(\mosi_data[14]_i_2_n_0 ),
        .I3(mosi_data[14]),
        .I4(RST),
        .I5(mosi_data1),
        .O(p_0_in__0[14]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \mosi_data[14]_i_2 
       (.I0(wr_cmd_2D),
        .I1(wr_cmd_1D),
        .I2(rd_cmd_2D),
        .I3(rd_cmd_1D),
        .O(\mosi_data[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFEAEAEAEFEAEFEA)) 
    \mosi_data[15]_i_1 
       (.I0(\mosi_data[15]_i_2_n_0 ),
        .I1(mosi_data[14]),
        .I2(mosi_data1),
        .I3(MOSI),
        .I4(rd_cmd_2D),
        .I5(rd_cmd_1D),
        .O(\mosi_data[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h4044)) 
    \mosi_data[15]_i_2 
       (.I0(wr_cmd_2D),
        .I1(wr_cmd_1D),
        .I2(sclk_1D),
        .I3(sclk_2D),
        .O(\mosi_data[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF2D00000F2D0)) 
    \mosi_data[1]_i_1 
       (.I0(wr_cmd_1D),
        .I1(wr_cmd_2D),
        .I2(mosi_data[1]),
        .I3(WR_DATA[1]),
        .I4(mosi_data1),
        .I5(mosi_data[0]),
        .O(\mosi_data[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF2D00000F2D0)) 
    \mosi_data[2]_i_1 
       (.I0(wr_cmd_1D),
        .I1(wr_cmd_2D),
        .I2(mosi_data[2]),
        .I3(WR_DATA[2]),
        .I4(mosi_data1),
        .I5(mosi_data[1]),
        .O(\mosi_data[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF2D00000F2D0)) 
    \mosi_data[3]_i_1 
       (.I0(wr_cmd_1D),
        .I1(wr_cmd_2D),
        .I2(mosi_data[3]),
        .I3(WR_DATA[3]),
        .I4(mosi_data1),
        .I5(mosi_data[2]),
        .O(\mosi_data[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF2D00000F2D0)) 
    \mosi_data[4]_i_1 
       (.I0(wr_cmd_1D),
        .I1(wr_cmd_2D),
        .I2(mosi_data[4]),
        .I3(WR_DATA[4]),
        .I4(mosi_data1),
        .I5(mosi_data[3]),
        .O(\mosi_data[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF2D00000F2D0)) 
    \mosi_data[5]_i_1 
       (.I0(wr_cmd_1D),
        .I1(wr_cmd_2D),
        .I2(mosi_data[5]),
        .I3(WR_DATA[5]),
        .I4(mosi_data1),
        .I5(mosi_data[4]),
        .O(\mosi_data[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF2D00000F2D0)) 
    \mosi_data[6]_i_1 
       (.I0(wr_cmd_1D),
        .I1(wr_cmd_2D),
        .I2(mosi_data[6]),
        .I3(WR_DATA[6]),
        .I4(mosi_data1),
        .I5(mosi_data[5]),
        .O(\mosi_data[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF2D00000F2D0)) 
    \mosi_data[7]_i_1 
       (.I0(wr_cmd_1D),
        .I1(wr_cmd_2D),
        .I2(mosi_data[7]),
        .I3(WR_DATA[7]),
        .I4(mosi_data1),
        .I5(mosi_data[6]),
        .O(\mosi_data[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA0000CFC00000)) 
    \mosi_data[8]_i_1 
       (.I0(mosi_data[7]),
        .I1(ADDR[0]),
        .I2(\mosi_data[14]_i_2_n_0 ),
        .I3(mosi_data[8]),
        .I4(RST),
        .I5(mosi_data1),
        .O(p_0_in__0[8]));
  LUT6 #(
    .INIT(64'hAAAA0000CFC00000)) 
    \mosi_data[9]_i_1 
       (.I0(mosi_data[8]),
        .I1(ADDR[1]),
        .I2(\mosi_data[14]_i_2_n_0 ),
        .I3(mosi_data[9]),
        .I4(RST),
        .I5(mosi_data1),
        .O(p_0_in__0[9]));
  LUT1 #(
    .INIT(2'h2)) 
    mosi_data_inst
       (.I0(mosi_data[15]),
        .O(MOSI));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mosi_data_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in__0[0]),
        .Q(mosi_data[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mosi_data_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in__0[10]),
        .Q(mosi_data[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mosi_data_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in__0[11]),
        .Q(mosi_data[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mosi_data_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in__0[12]),
        .Q(mosi_data[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mosi_data_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in__0[13]),
        .Q(mosi_data[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mosi_data_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in__0[14]),
        .Q(mosi_data[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mosi_data_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(\mosi_data[15]_i_1_n_0 ),
        .Q(mosi_data[15]),
        .R(clear));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mosi_data_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\mosi_data[1]_i_1_n_0 ),
        .Q(mosi_data[1]),
        .R(clear));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mosi_data_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\mosi_data[2]_i_1_n_0 ),
        .Q(mosi_data[2]),
        .R(clear));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mosi_data_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\mosi_data[3]_i_1_n_0 ),
        .Q(mosi_data[3]),
        .R(clear));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mosi_data_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\mosi_data[4]_i_1_n_0 ),
        .Q(mosi_data[4]),
        .R(clear));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mosi_data_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\mosi_data[5]_i_1_n_0 ),
        .Q(mosi_data[5]),
        .R(clear));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mosi_data_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\mosi_data[6]_i_1_n_0 ),
        .Q(mosi_data[6]),
        .R(clear));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mosi_data_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\mosi_data[7]_i_1_n_0 ),
        .Q(mosi_data[7]),
        .R(clear));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mosi_data_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in__0[8]),
        .Q(mosi_data[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mosi_data_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in__0[9]),
        .Q(mosi_data[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    rd_cmd_1D_i_1
       (.I0(RST),
        .O(clear));
  FDRE #(
    .INIT(1'b0)) 
    rd_cmd_1D_reg
       (.C(CLK),
        .CE(1'b1),
        .D(CMD[1]),
        .Q(rd_cmd_1D),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    rd_cmd_2D_reg
       (.C(CLK),
        .CE(1'b1),
        .D(rd_cmd_1D),
        .Q(rd_cmd_2D),
        .R(clear));
  LUT3 #(
    .INIT(8'h9A)) 
    \rd_cnt[0]_i_1 
       (.I0(rd_cnt[0]),
        .I1(sclk_1D),
        .I2(sclk_2D),
        .O(rd_cnt__0[0]));
  LUT4 #(
    .INIT(16'hF708)) 
    \rd_cnt[1]_i_1 
       (.I0(rd_cnt[0]),
        .I1(sclk_2D),
        .I2(sclk_1D),
        .I3(rd_cnt[1]),
        .O(rd_cnt__0[1]));
  LUT5 #(
    .INIT(32'hBFFF4000)) 
    \rd_cnt[2]_i_1 
       (.I0(sclk_1D),
        .I1(sclk_2D),
        .I2(rd_cnt[0]),
        .I3(rd_cnt[1]),
        .I4(rd_cnt[2]),
        .O(rd_cnt__0[2]));
  LUT6 #(
    .INIT(64'hFF7FFFFF00800000)) 
    \rd_cnt[3]_i_1 
       (.I0(rd_cnt[1]),
        .I1(rd_cnt[0]),
        .I2(sclk_2D),
        .I3(sclk_1D),
        .I4(rd_cnt[2]),
        .I5(rd_cnt[3]),
        .O(rd_cnt__0[3]));
  LUT4 #(
    .INIT(16'hD0FF)) 
    \rd_cnt[4]_i_1 
       (.I0(sclk_2D),
        .I1(sclk_1D),
        .I2(CSN),
        .I3(RST),
        .O(\rd_cnt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \rd_cnt[4]_i_2 
       (.I0(rd_cnt[2]),
        .I1(mosi_data1),
        .I2(rd_cnt[0]),
        .I3(rd_cnt[1]),
        .I4(rd_cnt[3]),
        .I5(rd_cnt[4]),
        .O(rd_cnt__0[4]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rd_cnt[4]_i_3 
       (.I0(sclk_2D),
        .I1(sclk_1D),
        .O(mosi_data1));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rd_cnt_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(rd_cnt__0[0]),
        .Q(rd_cnt[0]),
        .R(\rd_cnt[4]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rd_cnt_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(rd_cnt__0[1]),
        .Q(rd_cnt[1]),
        .R(\rd_cnt[4]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rd_cnt_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(rd_cnt__0[2]),
        .Q(rd_cnt[2]),
        .R(\rd_cnt[4]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rd_cnt_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(rd_cnt__0[3]),
        .Q(rd_cnt[3]),
        .R(\rd_cnt[4]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rd_cnt_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(rd_cnt__0[4]),
        .Q(rd_cnt[4]),
        .R(\rd_cnt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    rd_done_i_1
       (.I0(rd_cnt[0]),
        .I1(\csn_rd_cnt[4]_i_1_n_0 ),
        .I2(rd_cnt[2]),
        .I3(rd_cnt[1]),
        .I4(rd_cnt[3]),
        .I5(rd_cnt[4]),
        .O(rd_done_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    rd_done_reg
       (.C(SCLK),
        .CE(1'b1),
        .D(rd_done_i_1_n_0),
        .Q(rd_done),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sclk_1D_reg
       (.C(CLK),
        .CE(1'b1),
        .D(SCLK),
        .Q(sclk_1D),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    sclk_2D_reg
       (.C(CLK),
        .CE(1'b1),
        .D(sclk_1D),
        .Q(sclk_2D),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \sclk_cnt[0]_i_1 
       (.I0(sclk_cnt_reg[0]),
        .O(\sclk_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sclk_cnt[1]_i_1 
       (.I0(sclk_cnt_reg[0]),
        .I1(sclk_cnt_reg[1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \sclk_cnt[2]_i_1 
       (.I0(sclk_cnt_reg[0]),
        .I1(sclk_cnt_reg[1]),
        .I2(sclk_cnt_reg[2]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \sclk_cnt[3]_i_1 
       (.I0(sclk_cnt_reg[1]),
        .I1(sclk_cnt_reg[0]),
        .I2(sclk_cnt_reg[2]),
        .I3(sclk_cnt_reg[3]),
        .O(p_0_in__1[3]));
  FDRE #(
    .INIT(1'b0)) 
    \sclk_cnt_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sclk_cnt[0]_i_1_n_0 ),
        .Q(sclk_cnt_reg[0]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \sclk_cnt_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in__1[1]),
        .Q(sclk_cnt_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \sclk_cnt_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in__1[2]),
        .Q(sclk_cnt_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \sclk_cnt_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in__1[3]),
        .Q(sclk_cnt_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    wr_cmd_1D_reg
       (.C(CLK),
        .CE(1'b1),
        .D(CMD[0]),
        .Q(wr_cmd_1D),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    wr_cmd_2D_reg
       (.C(CLK),
        .CE(1'b1),
        .D(wr_cmd_1D),
        .Q(wr_cmd_2D),
        .R(clear));
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
